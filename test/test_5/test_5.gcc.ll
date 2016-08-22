; ModuleID = 'test_5.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%1 = type <{ [86 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x28d = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x2da = internal constant %1 <{ [86 x i8] c"Wrong command!(only w,s,a,d accepted!)\00You lose!\00You win!\00Your solution:%s \0A\00You lose\00" }>, align 64

define internal x86_64_sysvcc void @sub_76(%struct.regs*) {
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
  %81 = add i64 %78, -72
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16, !mcsema_real_eip !4
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !4
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
  %91 = icmp ult i64 %79, 64, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -52, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = load i64* %RDI_val, !mcsema_real_eip !5
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !5
  %99 = bitcast i64* %96 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !5
  %100 = load i64* %RBP_val, !mcsema_real_eip !6
  %101 = add i64 %100, -64, !mcsema_real_eip !6
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !6
  %103 = load i64* %RSI_val, !mcsema_real_eip !6
  store i64 %103, i64* %102, !mcsema_real_eip !6
  %104 = load i64* %RBP_val, !mcsema_real_eip !7
  %105 = add i64 %104, -12, !mcsema_real_eip !7
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !7
  %107 = bitcast i64* %106 to i32*
  store i32 0, i32* %107, !mcsema_real_eip !7
  %108 = load i64* %RBP_val, !mcsema_real_eip !8
  %109 = add i64 %108, -4, !mcsema_real_eip !8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !8
  %111 = bitcast i64* %110 to i32*
  store i32 1, i32* %111, !mcsema_real_eip !8
  %112 = load i64* %RBP_val, !mcsema_real_eip !9
  %113 = add i64 %112, -8, !mcsema_real_eip !9
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !9
  %115 = bitcast i64* %114 to i32*
  store i32 1, i32* %115, !mcsema_real_eip !9
  %116 = load i64* %RBP_val, !mcsema_real_eip !10
  %117 = add i64 %116, -4, !mcsema_real_eip !10
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !10
  %119 = bitcast i64* %118 to i32*
  %120 = load i32* %119, !mcsema_real_eip !10
  %121 = zext i32 %120 to i64, !mcsema_real_eip !10
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !10
  %122 = sext i32 %120 to i64, !mcsema_real_eip !11
  store i64 %122, i64* %RCX_val, !mcsema_real_eip !11
  %123 = load i64* %RBP_val, !mcsema_real_eip !12
  %124 = add i64 %123, -8, !mcsema_real_eip !12
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !12
  %126 = bitcast i64* %125 to i32*
  %127 = load i32* %126, !mcsema_real_eip !12
  %128 = sext i32 %127 to i64, !mcsema_real_eip !13
  store i64 %128, i64* %RDX_val, !mcsema_real_eip !13
  %129 = mul i64 %128, 11
  %130 = load i64* %RCX_val, !mcsema_real_eip !14
  %131 = add i64 %130, %129
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %131, i64 ptrtoint (%0* @data_0x28d to i64))
  %132 = extractvalue { i64, i1 } %uadd350, 0
  %133 = xor i64 %132, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !15
  %134 = xor i64 %133, %131, !mcsema_real_eip !15
  %135 = and i64 %134, 16, !mcsema_real_eip !15
  %136 = icmp ne i64 %135, 0, !mcsema_real_eip !15
  store i1 %136, i1* %AF_val, !mcsema_real_eip !15
  %137 = icmp slt i64 %132, 0
  store i1 %137, i1* %SF_val, !mcsema_real_eip !15
  %138 = icmp eq i64 %132, 0, !mcsema_real_eip !15
  store i1 %138, i1* %ZF_val, !mcsema_real_eip !15
  %139 = xor i64 %131, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !15
  %140 = and i64 %133, %139, !mcsema_real_eip !15
  %141 = icmp slt i64 %140, 0
  store i1 %141, i1* %OF_val, !mcsema_real_eip !15
  %142 = trunc i64 %132 to i8, !mcsema_real_eip !15
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !15
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  store i1 %145, i1* %PF_val, !mcsema_real_eip !15
  %146 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %146, i1* %CF_val, !mcsema_real_eip !15
  %147 = inttoptr i64 %132 to i64*, !mcsema_real_eip !16
  %148 = bitcast i64* %147 to i8*
  store i8 88, i8* %148, !mcsema_real_eip !16
  %149 = load i64* %RBP_val, !mcsema_real_eip !17
  %150 = add i64 %149, -48, !mcsema_real_eip !17
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !17
  %152 = ptrtoint i64* %151 to i64, !mcsema_real_eip !17
  store i64 28, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %152, i64* %RSI_val, !mcsema_real_eip !19
  store i64 0, i64* %RDI_val, !mcsema_real_eip !20
  %153 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %152, i64 28), !mcsema_real_eip !21
  store i64 %153, i64* %RAX_val, !mcsema_real_eip !21
  %154 = load i64* %RBP_val, !mcsema_real_eip !22
  %155 = add i64 %154, -12, !mcsema_real_eip !22
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !22
  %157 = bitcast i64* %156 to i32*
  %158 = load i32* %157, !mcsema_real_eip !22
  %159 = add i32 %158, -27
  %160 = xor i32 %159, %158, !mcsema_real_eip !22
  %161 = and i32 %160, 16
  %162 = icmp eq i32 %161, 0
  store i1 %162, i1* %AF_val, !mcsema_real_eip !22
  %163 = trunc i32 %159 to i8, !mcsema_real_eip !22
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !22
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !22
  %167 = icmp eq i32 %159, 0, !mcsema_real_eip !22
  store i1 %167, i1* %ZF_val, !mcsema_real_eip !22
  %168 = icmp slt i32 %159, 0
  store i1 %168, i1* %SF_val, !mcsema_real_eip !22
  %169 = icmp ult i32 %158, 27, !mcsema_real_eip !22
  store i1 %169, i1* %CF_val, !mcsema_real_eip !22
  %170 = and i32 %160, %158, !mcsema_real_eip !22
  %171 = icmp slt i32 %170, 0
  store i1 %171, i1* %OF_val, !mcsema_real_eip !22
  %172 = xor i1 %168, %171
  %173 = load i1* %ZF_val, !mcsema_real_eip !23
  %174 = or i1 %173, %172, !mcsema_real_eip !23
  br i1 %174, label %block_0xdd.preheader, label %block_0x281, !mcsema_real_eip !23

block_0xdd.preheader:                             ; preds = %entry
  br label %block_0xdd

block_0xdd:                                       ; preds = %block_0xdd.backedge, %block_0xdd.preheader
  %175 = load i64* %RBP_val, !mcsema_real_eip !24
  %176 = add i64 %175, -4, !mcsema_real_eip !24
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !24
  %178 = bitcast i64* %177 to i32*
  %179 = load i32* %178, !mcsema_real_eip !24
  %180 = zext i32 %179 to i64, !mcsema_real_eip !24
  store i64 %180, i64* %RAX_val, !mcsema_real_eip !24
  %181 = load i64* %RBP_val, !mcsema_real_eip !25
  %182 = add i64 %181, -16, !mcsema_real_eip !25
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !25
  %184 = bitcast i64* %183 to i32*
  store i32 %179, i32* %184, !mcsema_real_eip !25
  %185 = load i64* %RBP_val, !mcsema_real_eip !26
  %186 = add i64 %185, -8, !mcsema_real_eip !26
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !26
  %188 = bitcast i64* %187 to i32*
  %189 = load i32* %188, !mcsema_real_eip !26
  %190 = zext i32 %189 to i64, !mcsema_real_eip !26
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !26
  %191 = load i64* %RBP_val, !mcsema_real_eip !27
  %192 = add i64 %191, -20, !mcsema_real_eip !27
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !27
  %194 = bitcast i64* %193 to i32*
  store i32 %189, i32* %194, !mcsema_real_eip !27
  %195 = load i64* %RBP_val, !mcsema_real_eip !28
  %196 = add i64 %195, -12, !mcsema_real_eip !28
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !28
  %198 = bitcast i64* %197 to i32*
  %199 = load i32* %198, !mcsema_real_eip !28
  %200 = sext i32 %199 to i64, !mcsema_real_eip !29
  store i64 %200, i64* %RAX_val, !mcsema_real_eip !29
  %201 = load i64* %RBP_val, !mcsema_real_eip !30
  %202 = add i64 %201, -48, !mcsema_real_eip !30
  %203 = add i64 %202, %200, !mcsema_real_eip !30
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !30
  %205 = bitcast i64* %204 to i8*
  %206 = load i8* %205, !mcsema_real_eip !30
  %207 = sext i8 %206 to i32, !mcsema_real_eip !31
  %208 = zext i32 %207 to i64, !mcsema_real_eip !31
  store i64 %208, i64* %RAX_val, !mcsema_real_eip !31
  %209 = add nsw i32 %207, -100
  %210 = xor i32 %209, %207, !mcsema_real_eip !32
  %211 = and i32 %210, 16, !mcsema_real_eip !32
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !32
  store i1 %212, i1* %AF_val, !mcsema_real_eip !32
  %213 = trunc i32 %209 to i8, !mcsema_real_eip !32
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !32
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !32
  %217 = icmp eq i32 %209, 0, !mcsema_real_eip !32
  store i1 %217, i1* %ZF_val, !mcsema_real_eip !32
  %218 = icmp slt i32 %209, 0
  store i1 %218, i1* %SF_val, !mcsema_real_eip !32
  %219 = icmp ult i8 %206, 100
  store i1 %219, i1* %CF_val, !mcsema_real_eip !32
  %220 = and i32 %210, %207, !mcsema_real_eip !32
  %221 = icmp slt i32 %220, 0
  store i1 %221, i1* %OF_val, !mcsema_real_eip !32
  %222 = load i1* %ZF_val, !mcsema_real_eip !33
  br i1 %222, label %block_0x123, label %block_0xfb, !mcsema_real_eip !33

block_0x281.loopexit:                             ; preds = %block_0x223, %block_0x237
  br label %block_0x281

block_0x281:                                      ; preds = %block_0x281.loopexit, %entry
  store i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 77) to i64), i64* %RDI_val, !mcsema_real_eip !34
  %223 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 77) to i64)), !mcsema_real_eip !35
  store i64 %223, i64* %RAX_val, !mcsema_real_eip !35
  %224 = load i64* %RBP_val, !mcsema_real_eip !36
  store i64 %224, i64* %RSP_val, !mcsema_real_eip !36
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !36
  %226 = load i64* %225, !mcsema_real_eip !36
  store i64 %226, i64* %RBP_val, !mcsema_real_eip !36
  %227 = add i64 %224, 16, !mcsema_real_eip !37
  store i64 %227, i64* %RSP_val, !mcsema_real_eip !37
  %228 = load i64* %RAX_val, !mcsema_real_eip !37
  store i64 %228, i64* %RAX, !mcsema_real_eip !37
  %229 = load i64* %RBX_val, !mcsema_real_eip !37
  store i64 %229, i64* %RBX, !mcsema_real_eip !37
  %230 = load i64* %RCX_val, !mcsema_real_eip !37
  store i64 %230, i64* %RCX, !mcsema_real_eip !37
  %231 = load i64* %RDX_val, !mcsema_real_eip !37
  store i64 %231, i64* %RDX, !mcsema_real_eip !37
  %232 = load i64* %RSI_val, !mcsema_real_eip !37
  store i64 %232, i64* %RSI, !mcsema_real_eip !37
  %233 = load i64* %RDI_val, !mcsema_real_eip !37
  store i64 %233, i64* %RDI, !mcsema_real_eip !37
  %234 = load i64* %RSP_val, !mcsema_real_eip !37
  store i64 %234, i64* %RSP, !mcsema_real_eip !37
  %235 = load i64* %RBP_val, !mcsema_real_eip !37
  store i64 %235, i64* %RBP, !mcsema_real_eip !37
  %236 = load i64* %R8_val, !mcsema_real_eip !37
  store i64 %236, i64* %R8, !mcsema_real_eip !37
  %237 = load i64* %R9_val, !mcsema_real_eip !37
  store i64 %237, i64* %R9, !mcsema_real_eip !37
  %238 = load i64* %R10_val, !mcsema_real_eip !37
  store i64 %238, i64* %R10, !mcsema_real_eip !37
  %239 = load i64* %R11_val, !mcsema_real_eip !37
  store i64 %239, i64* %R11, !mcsema_real_eip !37
  %240 = load i64* %R12_val, !mcsema_real_eip !37
  store i64 %240, i64* %R12, !mcsema_real_eip !37
  %241 = load i64* %R13_val, !mcsema_real_eip !37
  store i64 %241, i64* %R13, !mcsema_real_eip !37
  %242 = load i64* %R14_val, !mcsema_real_eip !37
  store i64 %242, i64* %R14, !mcsema_real_eip !37
  %243 = load i64* %R15_val, !mcsema_real_eip !37
  store i64 %243, i64* %R15, !mcsema_real_eip !37
  %244 = load i64* %RIP_val, !mcsema_real_eip !37
  store i64 %244, i64* %RIP, !mcsema_real_eip !37
  %245 = load i1* %CF_val, !mcsema_real_eip !37
  store i1 %245, i1* %CF, align 1, !mcsema_real_eip !37
  %246 = load i1* %PF_val, !mcsema_real_eip !37
  store i1 %246, i1* %PF, align 1, !mcsema_real_eip !37
  %247 = load i1* %AF_val, !mcsema_real_eip !37
  store i1 %247, i1* %AF, align 1, !mcsema_real_eip !37
  %248 = load i1* %ZF_val, !mcsema_real_eip !37
  store i1 %248, i1* %ZF, align 1, !mcsema_real_eip !37
  %249 = load i1* %SF_val, !mcsema_real_eip !37
  store i1 %249, i1* %SF, align 1, !mcsema_real_eip !37
  %250 = load i1* %OF_val, !mcsema_real_eip !37
  store i1 %250, i1* %OF, align 1, !mcsema_real_eip !37
  %251 = load i1* %DF_val, !mcsema_real_eip !37
  store i1 %251, i1* %DF, align 1, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !37
  %252 = load i1* %FPU_B_val, !mcsema_real_eip !37
  store i1 %252, i1* %FPU_B, align 1, !mcsema_real_eip !37
  %253 = load i1* %FPU_C3_val, !mcsema_real_eip !37
  store i1 %253, i1* %FPU_C3, align 1, !mcsema_real_eip !37
  %254 = load i3* %FPU_TOP_val, !mcsema_real_eip !37
  store i3 %254, i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  %255 = load i1* %FPU_C2_val, !mcsema_real_eip !37
  store i1 %255, i1* %FPU_C2, align 1, !mcsema_real_eip !37
  %256 = load i1* %FPU_C1_val, !mcsema_real_eip !37
  store i1 %256, i1* %FPU_C1, align 1, !mcsema_real_eip !37
  %257 = load i1* %FPU_C0_val, !mcsema_real_eip !37
  store i1 %257, i1* %FPU_C0, align 1, !mcsema_real_eip !37
  %258 = load i1* %FPU_ES_val, !mcsema_real_eip !37
  store i1 %258, i1* %FPU_ES, align 1, !mcsema_real_eip !37
  %259 = load i1* %FPU_SF_val, !mcsema_real_eip !37
  store i1 %259, i1* %FPU_SF, align 1, !mcsema_real_eip !37
  %260 = load i1* %FPU_PE_val, !mcsema_real_eip !37
  store i1 %260, i1* %FPU_PE, align 1, !mcsema_real_eip !37
  %261 = load i1* %FPU_UE_val, !mcsema_real_eip !37
  store i1 %261, i1* %FPU_UE, align 1, !mcsema_real_eip !37
  %262 = load i1* %FPU_OE_val, !mcsema_real_eip !37
  store i1 %262, i1* %FPU_OE, align 1, !mcsema_real_eip !37
  %263 = load i1* %FPU_ZE_val, !mcsema_real_eip !37
  store i1 %263, i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  %264 = load i1* %FPU_DE_val, !mcsema_real_eip !37
  store i1 %264, i1* %FPU_DE, align 1, !mcsema_real_eip !37
  %265 = load i1* %FPU_IE_val, !mcsema_real_eip !37
  store i1 %265, i1* %FPU_IE, align 1, !mcsema_real_eip !37
  %266 = load i1* %FPU_X_val, !mcsema_real_eip !37
  store i1 %266, i1* %FPU_X, align 1, !mcsema_real_eip !37
  %267 = load i2* %FPU_RC_val, !mcsema_real_eip !37
  store i2 %267, i2* %FPU_RC, align 1, !mcsema_real_eip !37
  %268 = load i2* %FPU_PC_val, !mcsema_real_eip !37
  store i2 %268, i2* %FPU_PC, align 1, !mcsema_real_eip !37
  %269 = load i1* %FPU_PM_val, !mcsema_real_eip !37
  store i1 %269, i1* %FPU_PM, align 1, !mcsema_real_eip !37
  %270 = load i1* %FPU_UM_val, !mcsema_real_eip !37
  store i1 %270, i1* %FPU_UM, align 1, !mcsema_real_eip !37
  %271 = load i1* %FPU_OM_val, !mcsema_real_eip !37
  store i1 %271, i1* %FPU_OM, align 1, !mcsema_real_eip !37
  %272 = load i1* %FPU_ZM_val, !mcsema_real_eip !37
  store i1 %272, i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  %273 = load i1* %FPU_DM_val, !mcsema_real_eip !37
  store i1 %273, i1* %FPU_DM, align 1, !mcsema_real_eip !37
  %274 = load i1* %FPU_IM_val, !mcsema_real_eip !37
  store i1 %274, i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %275 = load i64* %53, align 4
  store i64 %275, i64* %52, align 4
  %276 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !37
  store i16 %276, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  %277 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !37
  store i64 %277, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !37
  %278 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !37
  store i16 %278, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  %279 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !37
  store i64 %279, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !37
  %280 = load i128* %XMM0_val, !mcsema_real_eip !37
  store i128 %280, i128* %XMM0, align 1, !mcsema_real_eip !37
  %281 = load i128* %XMM1_val, !mcsema_real_eip !37
  store i128 %281, i128* %XMM1, align 1, !mcsema_real_eip !37
  %282 = load i128* %XMM2_val, !mcsema_real_eip !37
  store i128 %282, i128* %XMM2, align 1, !mcsema_real_eip !37
  %283 = load i128* %XMM3_val, !mcsema_real_eip !37
  store i128 %283, i128* %XMM3, align 1, !mcsema_real_eip !37
  %284 = load i128* %XMM4_val, !mcsema_real_eip !37
  store i128 %284, i128* %XMM4, align 1, !mcsema_real_eip !37
  %285 = load i128* %XMM5_val, !mcsema_real_eip !37
  store i128 %285, i128* %XMM5, align 1, !mcsema_real_eip !37
  %286 = load i128* %XMM6_val, !mcsema_real_eip !37
  store i128 %286, i128* %XMM6, align 1, !mcsema_real_eip !37
  %287 = load i128* %XMM7_val, !mcsema_real_eip !37
  store i128 %287, i128* %XMM7, align 1, !mcsema_real_eip !37
  %288 = load i128* %XMM8_val, !mcsema_real_eip !37
  store i128 %288, i128* %XMM8, align 1, !mcsema_real_eip !37
  %289 = load i128* %XMM9_val, !mcsema_real_eip !37
  store i128 %289, i128* %XMM9, align 1, !mcsema_real_eip !37
  %290 = load i128* %XMM10_val, !mcsema_real_eip !37
  store i128 %290, i128* %XMM10, align 1, !mcsema_real_eip !37
  %291 = load i128* %XMM11_val, !mcsema_real_eip !37
  store i128 %291, i128* %XMM11, align 1, !mcsema_real_eip !37
  %292 = load i128* %XMM12_val, !mcsema_real_eip !37
  store i128 %292, i128* %XMM12, align 1, !mcsema_real_eip !37
  %293 = load i128* %XMM13_val, !mcsema_real_eip !37
  store i128 %293, i128* %XMM13, align 1, !mcsema_real_eip !37
  %294 = load i128* %XMM14_val, !mcsema_real_eip !37
  store i128 %294, i128* %XMM14, align 1, !mcsema_real_eip !37
  %295 = load i128* %XMM15_val, !mcsema_real_eip !37
  store i128 %295, i128* %XMM15, align 1, !mcsema_real_eip !37
  %296 = load i64* %STACK_BASE_val, !mcsema_real_eip !37
  store i64 %296, i64* %STACK_BASE, align 1, !mcsema_real_eip !37
  %297 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !37
  store i64 %297, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37

block_0x123:                                      ; preds = %block_0xdd
  %298 = load i64* %RBP_val, !mcsema_real_eip !38
  %299 = add i64 %298, -4, !mcsema_real_eip !38
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !38
  %301 = bitcast i64* %300 to i32*
  %302 = load i32* %301, !mcsema_real_eip !38
  %uadd400 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 1)
  %303 = extractvalue { i32, i1 } %uadd400, 0
  %304 = xor i32 %303, %302, !mcsema_real_eip !38
  %305 = and i32 %304, 16, !mcsema_real_eip !38
  %306 = icmp ne i32 %305, 0, !mcsema_real_eip !38
  store i1 %306, i1* %AF_val, !mcsema_real_eip !38
  %307 = icmp slt i32 %303, 0
  store i1 %307, i1* %SF_val, !mcsema_real_eip !38
  %308 = icmp eq i32 %303, 0, !mcsema_real_eip !38
  store i1 %308, i1* %ZF_val, !mcsema_real_eip !38
  %309 = xor i32 %302, -2147483648, !mcsema_real_eip !38
  %310 = and i32 %304, %309, !mcsema_real_eip !38
  %311 = icmp slt i32 %310, 0
  store i1 %311, i1* %OF_val, !mcsema_real_eip !38
  %312 = trunc i32 %303 to i8, !mcsema_real_eip !38
  %313 = tail call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !38
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  store i1 %315, i1* %PF_val, !mcsema_real_eip !38
  %316 = extractvalue { i32, i1 } %uadd400, 1
  store i1 %316, i1* %CF_val, !mcsema_real_eip !38
  store i32 %303, i32* %301, !mcsema_real_eip !38
  br label %block_0x147, !mcsema_real_eip !39

block_0xfb:                                       ; preds = %block_0xdd
  %317 = load i64* %RAX_val, !mcsema_real_eip !40
  %318 = trunc i64 %317 to i32, !mcsema_real_eip !40
  %319 = add i32 %318, -100
  %320 = xor i32 %319, %318, !mcsema_real_eip !40
  %321 = and i32 %320, 16, !mcsema_real_eip !40
  %322 = icmp ne i32 %321, 0, !mcsema_real_eip !40
  store i1 %322, i1* %AF_val, !mcsema_real_eip !40
  %323 = trunc i32 %319 to i8, !mcsema_real_eip !40
  %324 = tail call i8 @llvm.ctpop.i8(i8 %323), !mcsema_real_eip !40
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  store i1 %326, i1* %PF_val, !mcsema_real_eip !40
  %327 = icmp eq i32 %319, 0, !mcsema_real_eip !40
  store i1 %327, i1* %ZF_val, !mcsema_real_eip !40
  %328 = icmp slt i32 %319, 0
  store i1 %328, i1* %SF_val, !mcsema_real_eip !40
  %329 = icmp ult i32 %318, 100, !mcsema_real_eip !40
  store i1 %329, i1* %CF_val, !mcsema_real_eip !40
  %330 = and i32 %320, %318, !mcsema_real_eip !40
  %331 = icmp slt i32 %330, 0
  store i1 %331, i1* %OF_val, !mcsema_real_eip !40
  %tmp = xor i1 %328, %331
  %332 = load i1* %ZF_val, !mcsema_real_eip !41
  %.demorgan = or i1 %332, %tmp
  %333 = load i64* %RAX_val, !mcsema_real_eip !42
  %334 = trunc i64 %333 to i32, !mcsema_real_eip !42
  br i1 %.demorgan, label %block_0x100, label %block_0x107, !mcsema_real_eip !41

block_0x107:                                      ; preds = %block_0xfb
  %335 = add i32 %334, -115
  %336 = xor i32 %335, %334, !mcsema_real_eip !42
  %337 = and i32 %336, 16
  %338 = icmp eq i32 %337, 0
  store i1 %338, i1* %AF_val, !mcsema_real_eip !42
  %339 = trunc i32 %335 to i8, !mcsema_real_eip !42
  %340 = tail call i8 @llvm.ctpop.i8(i8 %339), !mcsema_real_eip !42
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  store i1 %342, i1* %PF_val, !mcsema_real_eip !42
  %343 = icmp eq i32 %335, 0, !mcsema_real_eip !42
  store i1 %343, i1* %ZF_val, !mcsema_real_eip !42
  %344 = icmp slt i32 %335, 0
  store i1 %344, i1* %SF_val, !mcsema_real_eip !42
  %345 = icmp ult i32 %334, 115, !mcsema_real_eip !42
  store i1 %345, i1* %CF_val, !mcsema_real_eip !42
  %346 = and i32 %336, %334, !mcsema_real_eip !42
  %347 = icmp slt i32 %346, 0
  store i1 %347, i1* %OF_val, !mcsema_real_eip !42
  %348 = load i1* %ZF_val, !mcsema_real_eip !43
  br i1 %348, label %block_0x117, label %block_0x10c, !mcsema_real_eip !43

block_0x100:                                      ; preds = %block_0xfb
  %349 = add i32 %334, -97
  %350 = xor i32 %349, %334, !mcsema_real_eip !44
  %351 = and i32 %350, 16, !mcsema_real_eip !44
  %352 = icmp ne i32 %351, 0, !mcsema_real_eip !44
  store i1 %352, i1* %AF_val, !mcsema_real_eip !44
  %353 = trunc i32 %349 to i8, !mcsema_real_eip !44
  %354 = tail call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !44
  %355 = and i8 %354, 1
  %356 = icmp eq i8 %355, 0
  store i1 %356, i1* %PF_val, !mcsema_real_eip !44
  %357 = icmp eq i32 %349, 0, !mcsema_real_eip !44
  store i1 %357, i1* %ZF_val, !mcsema_real_eip !44
  %358 = icmp slt i32 %349, 0
  store i1 %358, i1* %SF_val, !mcsema_real_eip !44
  %359 = icmp ult i32 %334, 97, !mcsema_real_eip !44
  store i1 %359, i1* %CF_val, !mcsema_real_eip !44
  %360 = and i32 %350, %334, !mcsema_real_eip !44
  %361 = icmp slt i32 %360, 0
  store i1 %361, i1* %OF_val, !mcsema_real_eip !44
  %362 = load i1* %ZF_val, !mcsema_real_eip !45
  br i1 %362, label %block_0x11d, label %block_0x129, !mcsema_real_eip !45

block_0x147:                                      ; preds = %block_0x111, %block_0x117, %block_0x11d, %block_0x123
  %363 = load i64* %RBP_val, !mcsema_real_eip !46
  %364 = add i64 %363, -4, !mcsema_real_eip !46
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !46
  %366 = bitcast i64* %365 to i32*
  %367 = load i32* %366, !mcsema_real_eip !46
  %368 = zext i32 %367 to i64, !mcsema_real_eip !46
  store i64 %368, i64* %RAX_val, !mcsema_real_eip !46
  %369 = sext i32 %367 to i64, !mcsema_real_eip !47
  store i64 %369, i64* %RCX_val, !mcsema_real_eip !47
  %370 = load i64* %RBP_val, !mcsema_real_eip !48
  %371 = add i64 %370, -8, !mcsema_real_eip !48
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !48
  %373 = bitcast i64* %372 to i32*
  %374 = load i32* %373, !mcsema_real_eip !48
  %375 = sext i32 %374 to i64, !mcsema_real_eip !49
  store i64 %375, i64* %RDX_val, !mcsema_real_eip !49
  %376 = mul i64 %375, 11
  %377 = load i64* %RCX_val, !mcsema_real_eip !50
  %378 = add i64 %377, %376
  %uadd396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %378, i64 ptrtoint (%0* @data_0x28d to i64))
  %379 = extractvalue { i64, i1 } %uadd396, 0
  %380 = xor i64 %379, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !51
  %381 = xor i64 %380, %378, !mcsema_real_eip !51
  %382 = and i64 %381, 16, !mcsema_real_eip !51
  %383 = icmp ne i64 %382, 0, !mcsema_real_eip !51
  store i1 %383, i1* %AF_val, !mcsema_real_eip !51
  %384 = icmp slt i64 %379, 0
  store i1 %384, i1* %SF_val, !mcsema_real_eip !51
  %385 = icmp eq i64 %379, 0, !mcsema_real_eip !51
  store i1 %385, i1* %ZF_val, !mcsema_real_eip !51
  %386 = xor i64 %378, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !51
  %387 = and i64 %380, %386, !mcsema_real_eip !51
  %388 = icmp slt i64 %387, 0
  store i1 %388, i1* %OF_val, !mcsema_real_eip !51
  %389 = trunc i64 %379 to i8, !mcsema_real_eip !51
  %390 = tail call i8 @llvm.ctpop.i8(i8 %389), !mcsema_real_eip !51
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  store i1 %392, i1* %PF_val, !mcsema_real_eip !51
  %393 = extractvalue { i64, i1 } %uadd396, 1
  store i1 %393, i1* %CF_val, !mcsema_real_eip !51
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !51
  %394 = inttoptr i64 %379 to i64*, !mcsema_real_eip !52
  %395 = bitcast i64* %394 to i8*
  %396 = load i8* %395, !mcsema_real_eip !52
  %397 = zext i8 %396 to i64
  store i64 %397, i64* %RAX_val, !mcsema_real_eip !52
  %398 = add i8 %396, -35
  %399 = xor i8 %398, %396, !mcsema_real_eip !53
  %400 = and i8 %399, 16, !mcsema_real_eip !53
  %401 = icmp ne i8 %400, 0, !mcsema_real_eip !53
  store i1 %401, i1* %AF_val, !mcsema_real_eip !53
  %402 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !53
  %403 = and i8 %402, 1
  %404 = icmp eq i8 %403, 0
  store i1 %404, i1* %PF_val, !mcsema_real_eip !53
  %405 = icmp eq i8 %398, 0, !mcsema_real_eip !53
  store i1 %405, i1* %ZF_val, !mcsema_real_eip !53
  %406 = icmp slt i8 %398, 0
  store i1 %406, i1* %SF_val, !mcsema_real_eip !53
  %407 = icmp ult i8 %396, 35, !mcsema_real_eip !53
  store i1 %407, i1* %CF_val, !mcsema_real_eip !53
  %408 = and i8 %399, %396, !mcsema_real_eip !53
  %409 = icmp slt i8 %408, 0
  store i1 %409, i1* %OF_val, !mcsema_real_eip !53
  %410 = load i1* %ZF_val, !mcsema_real_eip !54
  br i1 %410, label %block_0x173, label %block_0x19d, !mcsema_real_eip !54

block_0x11d:                                      ; preds = %block_0x100
  %411 = load i64* %RBP_val, !mcsema_real_eip !55
  %412 = add i64 %411, -4, !mcsema_real_eip !55
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !55
  %414 = bitcast i64* %413 to i32*
  %415 = load i32* %414, !mcsema_real_eip !55
  %416 = add i32 %415, -1
  %417 = xor i32 %416, %415, !mcsema_real_eip !55
  %418 = and i32 %417, 16, !mcsema_real_eip !55
  %419 = icmp ne i32 %418, 0, !mcsema_real_eip !55
  store i1 %419, i1* %AF_val, !mcsema_real_eip !55
  %420 = trunc i32 %416 to i8, !mcsema_real_eip !55
  %421 = tail call i8 @llvm.ctpop.i8(i8 %420), !mcsema_real_eip !55
  %422 = and i8 %421, 1
  %423 = icmp eq i8 %422, 0
  store i1 %423, i1* %PF_val, !mcsema_real_eip !55
  %424 = icmp eq i32 %416, 0, !mcsema_real_eip !55
  store i1 %424, i1* %ZF_val, !mcsema_real_eip !55
  %425 = icmp slt i32 %416, 0
  store i1 %425, i1* %SF_val, !mcsema_real_eip !55
  %426 = icmp eq i32 %415, 0
  store i1 %426, i1* %CF_val, !mcsema_real_eip !55
  %427 = and i32 %417, %415, !mcsema_real_eip !55
  %428 = icmp slt i32 %427, 0
  store i1 %428, i1* %OF_val, !mcsema_real_eip !55
  store i32 %416, i32* %414, !mcsema_real_eip !55
  br label %block_0x147, !mcsema_real_eip !56

block_0x117:                                      ; preds = %block_0x107
  %429 = load i64* %RBP_val, !mcsema_real_eip !57
  %430 = add i64 %429, -8, !mcsema_real_eip !57
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !57
  %432 = bitcast i64* %431 to i32*
  %433 = load i32* %432, !mcsema_real_eip !57
  %uadd399 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %433, i32 1)
  %434 = extractvalue { i32, i1 } %uadd399, 0
  %435 = xor i32 %434, %433, !mcsema_real_eip !57
  %436 = and i32 %435, 16, !mcsema_real_eip !57
  %437 = icmp ne i32 %436, 0, !mcsema_real_eip !57
  store i1 %437, i1* %AF_val, !mcsema_real_eip !57
  %438 = icmp slt i32 %434, 0
  store i1 %438, i1* %SF_val, !mcsema_real_eip !57
  %439 = icmp eq i32 %434, 0, !mcsema_real_eip !57
  store i1 %439, i1* %ZF_val, !mcsema_real_eip !57
  %440 = xor i32 %433, -2147483648, !mcsema_real_eip !57
  %441 = and i32 %435, %440, !mcsema_real_eip !57
  %442 = icmp slt i32 %441, 0
  store i1 %442, i1* %OF_val, !mcsema_real_eip !57
  %443 = trunc i32 %434 to i8, !mcsema_real_eip !57
  %444 = tail call i8 @llvm.ctpop.i8(i8 %443), !mcsema_real_eip !57
  %445 = and i8 %444, 1
  %446 = icmp eq i8 %445, 0
  store i1 %446, i1* %PF_val, !mcsema_real_eip !57
  %447 = extractvalue { i32, i1 } %uadd399, 1
  store i1 %447, i1* %CF_val, !mcsema_real_eip !57
  store i32 %434, i32* %432, !mcsema_real_eip !57
  br label %block_0x147, !mcsema_real_eip !58

block_0x10c:                                      ; preds = %block_0x107
  %448 = load i64* %RAX_val, !mcsema_real_eip !59
  %449 = trunc i64 %448 to i32, !mcsema_real_eip !59
  %450 = add i32 %449, -119
  %451 = xor i32 %450, %449, !mcsema_real_eip !59
  %452 = and i32 %451, 16
  %453 = icmp eq i32 %452, 0
  store i1 %453, i1* %AF_val, !mcsema_real_eip !59
  %454 = trunc i32 %450 to i8, !mcsema_real_eip !59
  %455 = tail call i8 @llvm.ctpop.i8(i8 %454), !mcsema_real_eip !59
  %456 = and i8 %455, 1
  %457 = icmp eq i8 %456, 0
  store i1 %457, i1* %PF_val, !mcsema_real_eip !59
  %458 = icmp eq i32 %450, 0, !mcsema_real_eip !59
  store i1 %458, i1* %ZF_val, !mcsema_real_eip !59
  %459 = icmp slt i32 %450, 0
  store i1 %459, i1* %SF_val, !mcsema_real_eip !59
  %460 = icmp ult i32 %449, 119, !mcsema_real_eip !59
  store i1 %460, i1* %CF_val, !mcsema_real_eip !59
  %461 = and i32 %451, %449, !mcsema_real_eip !59
  %462 = icmp slt i32 %461, 0
  store i1 %462, i1* %OF_val, !mcsema_real_eip !59
  %463 = load i1* %ZF_val, !mcsema_real_eip !60
  br i1 %463, label %block_0x111, label %block_0x129, !mcsema_real_eip !60

block_0x19d:                                      ; preds = %block_0x129, %block_0x147
  %464 = load i64* %RBP_val, !mcsema_real_eip !61
  %465 = add i64 %464, -4, !mcsema_real_eip !61
  %466 = inttoptr i64 %465 to i64*, !mcsema_real_eip !61
  %467 = bitcast i64* %466 to i32*
  %468 = load i32* %467, !mcsema_real_eip !61
  %469 = zext i32 %468 to i64, !mcsema_real_eip !61
  store i64 %469, i64* %RAX_val, !mcsema_real_eip !61
  %470 = sext i32 %468 to i64, !mcsema_real_eip !62
  store i64 %470, i64* %RCX_val, !mcsema_real_eip !62
  %471 = load i64* %RBP_val, !mcsema_real_eip !63
  %472 = add i64 %471, -8, !mcsema_real_eip !63
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !63
  %474 = bitcast i64* %473 to i32*
  %475 = load i32* %474, !mcsema_real_eip !63
  %476 = sext i32 %475 to i64, !mcsema_real_eip !64
  store i64 %476, i64* %RDX_val, !mcsema_real_eip !64
  %477 = mul i64 %476, 11
  %478 = load i64* %RCX_val, !mcsema_real_eip !65
  %479 = add i64 %478, %477
  %uadd392 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %479, i64 ptrtoint (%0* @data_0x28d to i64))
  %480 = extractvalue { i64, i1 } %uadd392, 0
  %481 = xor i64 %480, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !66
  %482 = xor i64 %481, %479, !mcsema_real_eip !66
  %483 = and i64 %482, 16, !mcsema_real_eip !66
  %484 = icmp ne i64 %483, 0, !mcsema_real_eip !66
  store i1 %484, i1* %AF_val, !mcsema_real_eip !66
  %485 = icmp slt i64 %480, 0
  store i1 %485, i1* %SF_val, !mcsema_real_eip !66
  %486 = icmp eq i64 %480, 0, !mcsema_real_eip !66
  store i1 %486, i1* %ZF_val, !mcsema_real_eip !66
  %487 = xor i64 %479, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !66
  %488 = and i64 %481, %487, !mcsema_real_eip !66
  %489 = icmp slt i64 %488, 0
  store i1 %489, i1* %OF_val, !mcsema_real_eip !66
  %490 = trunc i64 %480 to i8, !mcsema_real_eip !66
  %491 = tail call i8 @llvm.ctpop.i8(i8 %490), !mcsema_real_eip !66
  %492 = and i8 %491, 1
  %493 = icmp eq i8 %492, 0
  store i1 %493, i1* %PF_val, !mcsema_real_eip !66
  %494 = extractvalue { i64, i1 } %uadd392, 1
  store i1 %494, i1* %CF_val, !mcsema_real_eip !66
  store i64 %480, i64* %RAX_val, !mcsema_real_eip !66
  %495 = inttoptr i64 %480 to i64*, !mcsema_real_eip !67
  %496 = bitcast i64* %495 to i8*
  %497 = load i8* %496, !mcsema_real_eip !67
  %498 = zext i8 %497 to i64
  store i64 %498, i64* %RAX_val, !mcsema_real_eip !67
  %499 = add i8 %497, -32
  %500 = xor i8 %499, %497, !mcsema_real_eip !68
  %501 = and i8 %500, 16, !mcsema_real_eip !68
  %502 = icmp ne i8 %501, 0, !mcsema_real_eip !68
  store i1 %502, i1* %AF_val, !mcsema_real_eip !68
  %503 = tail call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !68
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  store i1 %505, i1* %PF_val, !mcsema_real_eip !68
  %506 = icmp eq i8 %499, 0, !mcsema_real_eip !68
  store i1 %506, i1* %ZF_val, !mcsema_real_eip !68
  %507 = icmp slt i8 %499, 0
  store i1 %507, i1* %SF_val, !mcsema_real_eip !68
  %508 = icmp ult i8 %497, 32, !mcsema_real_eip !68
  store i1 %508, i1* %CF_val, !mcsema_real_eip !68
  %509 = and i8 %500, %497, !mcsema_real_eip !68
  %510 = icmp slt i8 %509, 0
  store i1 %510, i1* %OF_val, !mcsema_real_eip !68
  %511 = load i1* %ZF_val, !mcsema_real_eip !69
  br i1 %511, label %block_0x213, label %block_0x1c9, !mcsema_real_eip !69

block_0x173:                                      ; preds = %block_0x129, %block_0x147
  %512 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 49) to i64)), !mcsema_real_eip !70
  %513 = load i64* %RBP_val, !mcsema_real_eip !71
  %514 = add i64 %513, -48, !mcsema_real_eip !71
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !71
  %516 = ptrtoint i64* %515 to i64, !mcsema_real_eip !71
  store i64 %516, i64* %RSI_val, !mcsema_real_eip !72
  %517 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 58) to i64)), !mcsema_real_eip !73
  store i64 1, i64* %RDI_val, !mcsema_real_eip !74
  %518 = tail call x86_64_sysvcc i64 @exit(i64 1), !mcsema_real_eip !75
  store i64 %518, i64* %RAX_val, !mcsema_real_eip !75
  %519 = load i64* %RBP_val, !mcsema_real_eip !61
  %520 = add i64 %519, -4, !mcsema_real_eip !61
  %521 = inttoptr i64 %520 to i64*, !mcsema_real_eip !61
  %522 = bitcast i64* %521 to i32*
  %523 = load i32* %522, !mcsema_real_eip !61
  %524 = zext i32 %523 to i64, !mcsema_real_eip !61
  store i64 %524, i64* %RAX_val, !mcsema_real_eip !61
  %525 = sext i32 %523 to i64, !mcsema_real_eip !62
  store i64 %525, i64* %RCX_val, !mcsema_real_eip !62
  %526 = load i64* %RBP_val, !mcsema_real_eip !63
  %527 = add i64 %526, -8, !mcsema_real_eip !63
  %528 = inttoptr i64 %527 to i64*, !mcsema_real_eip !63
  %529 = bitcast i64* %528 to i32*
  %530 = load i32* %529, !mcsema_real_eip !63
  %531 = sext i32 %530 to i64, !mcsema_real_eip !64
  store i64 %531, i64* %RDX_val, !mcsema_real_eip !64
  %532 = mul i64 %531, 11
  %533 = load i64* %RCX_val, !mcsema_real_eip !65
  %534 = add i64 %533, %532
  %uadd361 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %534, i64 ptrtoint (%0* @data_0x28d to i64))
  %535 = extractvalue { i64, i1 } %uadd361, 0
  %536 = xor i64 %535, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !66
  %537 = xor i64 %536, %534, !mcsema_real_eip !66
  %538 = and i64 %537, 16, !mcsema_real_eip !66
  %539 = icmp ne i64 %538, 0, !mcsema_real_eip !66
  store i1 %539, i1* %AF_val, !mcsema_real_eip !66
  %540 = icmp slt i64 %535, 0
  store i1 %540, i1* %SF_val, !mcsema_real_eip !66
  %541 = icmp eq i64 %535, 0, !mcsema_real_eip !66
  store i1 %541, i1* %ZF_val, !mcsema_real_eip !66
  %542 = xor i64 %534, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !66
  %543 = and i64 %536, %542, !mcsema_real_eip !66
  %544 = icmp slt i64 %543, 0
  store i1 %544, i1* %OF_val, !mcsema_real_eip !66
  %545 = trunc i64 %535 to i8, !mcsema_real_eip !66
  %546 = tail call i8 @llvm.ctpop.i8(i8 %545), !mcsema_real_eip !66
  %547 = and i8 %546, 1
  %548 = icmp eq i8 %547, 0
  store i1 %548, i1* %PF_val, !mcsema_real_eip !66
  %549 = extractvalue { i64, i1 } %uadd361, 1
  store i1 %549, i1* %CF_val, !mcsema_real_eip !66
  store i64 %535, i64* %RAX_val, !mcsema_real_eip !66
  %550 = inttoptr i64 %535 to i64*, !mcsema_real_eip !67
  %551 = bitcast i64* %550 to i8*
  %552 = load i8* %551, !mcsema_real_eip !67
  %553 = zext i8 %552 to i64
  store i64 %553, i64* %RAX_val, !mcsema_real_eip !67
  %554 = add i8 %552, -32
  %555 = xor i8 %554, %552, !mcsema_real_eip !68
  %556 = and i8 %555, 16, !mcsema_real_eip !68
  %557 = icmp ne i8 %556, 0, !mcsema_real_eip !68
  store i1 %557, i1* %AF_val, !mcsema_real_eip !68
  %558 = tail call i8 @llvm.ctpop.i8(i8 %554), !mcsema_real_eip !68
  %559 = and i8 %558, 1
  %560 = icmp eq i8 %559, 0
  store i1 %560, i1* %PF_val, !mcsema_real_eip !68
  %561 = icmp eq i8 %554, 0, !mcsema_real_eip !68
  store i1 %561, i1* %ZF_val, !mcsema_real_eip !68
  %562 = icmp slt i8 %554, 0
  store i1 %562, i1* %SF_val, !mcsema_real_eip !68
  %563 = icmp ult i8 %552, 32, !mcsema_real_eip !68
  store i1 %563, i1* %CF_val, !mcsema_real_eip !68
  %564 = and i8 %555, %552, !mcsema_real_eip !68
  %565 = icmp slt i8 %564, 0
  store i1 %565, i1* %OF_val, !mcsema_real_eip !68
  %566 = load i1* %ZF_val, !mcsema_real_eip !69
  br i1 %566, label %block_0x213, label %block_0x1c9, !mcsema_real_eip !69

block_0x129:                                      ; preds = %block_0x10c, %block_0x100
  %567 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 ptrtoint (%1* @data_0x2da to i32) to i64)), !mcsema_real_eip !76
  %568 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 39) to i64)), !mcsema_real_eip !77
  store i64 4294967295, i64* %RDI_val, !mcsema_real_eip !78
  %569 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !79
  store i64 %569, i64* %RAX_val, !mcsema_real_eip !79
  %570 = load i64* %RBP_val, !mcsema_real_eip !46
  %571 = add i64 %570, -4, !mcsema_real_eip !46
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !46
  %573 = bitcast i64* %572 to i32*
  %574 = load i32* %573, !mcsema_real_eip !46
  %575 = zext i32 %574 to i64, !mcsema_real_eip !46
  store i64 %575, i64* %RAX_val, !mcsema_real_eip !46
  %576 = sext i32 %574 to i64, !mcsema_real_eip !47
  store i64 %576, i64* %RCX_val, !mcsema_real_eip !47
  %577 = load i64* %RBP_val, !mcsema_real_eip !48
  %578 = add i64 %577, -8, !mcsema_real_eip !48
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !48
  %580 = bitcast i64* %579 to i32*
  %581 = load i32* %580, !mcsema_real_eip !48
  %582 = sext i32 %581 to i64, !mcsema_real_eip !49
  store i64 %582, i64* %RDX_val, !mcsema_real_eip !49
  %583 = mul i64 %582, 11
  %584 = load i64* %RCX_val, !mcsema_real_eip !50
  %585 = add i64 %584, %583
  %uadd356 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %585, i64 ptrtoint (%0* @data_0x28d to i64))
  %586 = extractvalue { i64, i1 } %uadd356, 0
  %587 = xor i64 %586, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !51
  %588 = xor i64 %587, %585, !mcsema_real_eip !51
  %589 = and i64 %588, 16, !mcsema_real_eip !51
  %590 = icmp ne i64 %589, 0, !mcsema_real_eip !51
  store i1 %590, i1* %AF_val, !mcsema_real_eip !51
  %591 = icmp slt i64 %586, 0
  store i1 %591, i1* %SF_val, !mcsema_real_eip !51
  %592 = icmp eq i64 %586, 0, !mcsema_real_eip !51
  store i1 %592, i1* %ZF_val, !mcsema_real_eip !51
  %593 = xor i64 %585, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !51
  %594 = and i64 %587, %593, !mcsema_real_eip !51
  %595 = icmp slt i64 %594, 0
  store i1 %595, i1* %OF_val, !mcsema_real_eip !51
  %596 = trunc i64 %586 to i8, !mcsema_real_eip !51
  %597 = tail call i8 @llvm.ctpop.i8(i8 %596), !mcsema_real_eip !51
  %598 = and i8 %597, 1
  %599 = icmp eq i8 %598, 0
  store i1 %599, i1* %PF_val, !mcsema_real_eip !51
  %600 = extractvalue { i64, i1 } %uadd356, 1
  store i1 %600, i1* %CF_val, !mcsema_real_eip !51
  store i64 %586, i64* %RAX_val, !mcsema_real_eip !51
  %601 = inttoptr i64 %586 to i64*, !mcsema_real_eip !52
  %602 = bitcast i64* %601 to i8*
  %603 = load i8* %602, !mcsema_real_eip !52
  %604 = zext i8 %603 to i64
  store i64 %604, i64* %RAX_val, !mcsema_real_eip !52
  %605 = add i8 %603, -35
  %606 = xor i8 %605, %603, !mcsema_real_eip !53
  %607 = and i8 %606, 16, !mcsema_real_eip !53
  %608 = icmp ne i8 %607, 0, !mcsema_real_eip !53
  store i1 %608, i1* %AF_val, !mcsema_real_eip !53
  %609 = tail call i8 @llvm.ctpop.i8(i8 %605), !mcsema_real_eip !53
  %610 = and i8 %609, 1
  %611 = icmp eq i8 %610, 0
  store i1 %611, i1* %PF_val, !mcsema_real_eip !53
  %612 = icmp eq i8 %605, 0, !mcsema_real_eip !53
  store i1 %612, i1* %ZF_val, !mcsema_real_eip !53
  %613 = icmp slt i8 %605, 0
  store i1 %613, i1* %SF_val, !mcsema_real_eip !53
  %614 = icmp ult i8 %603, 35, !mcsema_real_eip !53
  store i1 %614, i1* %CF_val, !mcsema_real_eip !53
  %615 = and i8 %606, %603, !mcsema_real_eip !53
  %616 = icmp slt i8 %615, 0
  store i1 %616, i1* %OF_val, !mcsema_real_eip !53
  %617 = load i1* %ZF_val, !mcsema_real_eip !54
  br i1 %617, label %block_0x173, label %block_0x19d, !mcsema_real_eip !54

block_0x111:                                      ; preds = %block_0x10c
  %618 = load i64* %RBP_val, !mcsema_real_eip !80
  %619 = add i64 %618, -8, !mcsema_real_eip !80
  %620 = inttoptr i64 %619 to i64*, !mcsema_real_eip !80
  %621 = bitcast i64* %620 to i32*
  %622 = load i32* %621, !mcsema_real_eip !80
  %623 = add i32 %622, -1
  %624 = xor i32 %623, %622, !mcsema_real_eip !80
  %625 = and i32 %624, 16, !mcsema_real_eip !80
  %626 = icmp ne i32 %625, 0, !mcsema_real_eip !80
  store i1 %626, i1* %AF_val, !mcsema_real_eip !80
  %627 = trunc i32 %623 to i8, !mcsema_real_eip !80
  %628 = tail call i8 @llvm.ctpop.i8(i8 %627), !mcsema_real_eip !80
  %629 = and i8 %628, 1
  %630 = icmp eq i8 %629, 0
  store i1 %630, i1* %PF_val, !mcsema_real_eip !80
  %631 = icmp eq i32 %623, 0, !mcsema_real_eip !80
  store i1 %631, i1* %ZF_val, !mcsema_real_eip !80
  %632 = icmp slt i32 %623, 0
  store i1 %632, i1* %SF_val, !mcsema_real_eip !80
  %633 = icmp eq i32 %622, 0
  store i1 %633, i1* %CF_val, !mcsema_real_eip !80
  %634 = and i32 %624, %622, !mcsema_real_eip !80
  %635 = icmp slt i32 %634, 0
  store i1 %635, i1* %OF_val, !mcsema_real_eip !80
  store i32 %623, i32* %621, !mcsema_real_eip !80
  br label %block_0x147, !mcsema_real_eip !81

block_0x213:                                      ; preds = %block_0x201, %block_0x173, %block_0x19d
  %636 = load i64* %RBP_val, !mcsema_real_eip !82
  %637 = add i64 %636, -16, !mcsema_real_eip !82
  %638 = inttoptr i64 %637 to i64*, !mcsema_real_eip !82
  %639 = bitcast i64* %638 to i32*
  %640 = load i32* %639, !mcsema_real_eip !82
  %641 = zext i32 %640 to i64, !mcsema_real_eip !82
  store i64 %641, i64* %RAX_val, !mcsema_real_eip !82
  %642 = load i64* %RBP_val, !mcsema_real_eip !83
  %643 = add i64 %642, -4, !mcsema_real_eip !83
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !83
  %645 = bitcast i64* %644 to i32*
  %646 = load i32* %645, !mcsema_real_eip !83
  %647 = sub i32 %640, %646, !mcsema_real_eip !83
  %648 = xor i32 %647, %640, !mcsema_real_eip !83
  %649 = xor i32 %648, %646, !mcsema_real_eip !83
  %650 = and i32 %649, 16, !mcsema_real_eip !83
  %651 = icmp ne i32 %650, 0, !mcsema_real_eip !83
  store i1 %651, i1* %AF_val, !mcsema_real_eip !83
  %652 = trunc i32 %647 to i8, !mcsema_real_eip !83
  %653 = tail call i8 @llvm.ctpop.i8(i8 %652), !mcsema_real_eip !83
  %654 = and i8 %653, 1
  %655 = icmp eq i8 %654, 0
  store i1 %655, i1* %PF_val, !mcsema_real_eip !83
  %656 = icmp eq i32 %640, %646
  store i1 %656, i1* %ZF_val, !mcsema_real_eip !83
  %657 = icmp slt i32 %647, 0
  store i1 %657, i1* %SF_val, !mcsema_real_eip !83
  %658 = icmp ult i32 %640, %646, !mcsema_real_eip !83
  store i1 %658, i1* %CF_val, !mcsema_real_eip !83
  %659 = xor i32 %646, %640, !mcsema_real_eip !83
  %660 = and i32 %648, %659, !mcsema_real_eip !83
  %661 = icmp slt i32 %660, 0
  store i1 %661, i1* %OF_val, !mcsema_real_eip !83
  %662 = load i1* %ZF_val, !mcsema_real_eip !84
  br i1 %662, label %block_0x21b, label %block_0x237, !mcsema_real_eip !84

block_0x1c9:                                      ; preds = %block_0x173, %block_0x19d
  %663 = load i64* %RBP_val, !mcsema_real_eip !85
  %664 = add i64 %663, -8, !mcsema_real_eip !85
  %665 = inttoptr i64 %664 to i64*, !mcsema_real_eip !85
  %666 = bitcast i64* %665 to i32*
  %667 = load i32* %666, !mcsema_real_eip !85
  %668 = add i32 %667, -2
  %669 = xor i32 %668, %667, !mcsema_real_eip !85
  %670 = and i32 %669, 16, !mcsema_real_eip !85
  %671 = icmp ne i32 %670, 0, !mcsema_real_eip !85
  store i1 %671, i1* %AF_val, !mcsema_real_eip !85
  %672 = trunc i32 %668 to i8, !mcsema_real_eip !85
  %673 = tail call i8 @llvm.ctpop.i8(i8 %672), !mcsema_real_eip !85
  %674 = and i8 %673, 1
  %675 = icmp eq i8 %674, 0
  store i1 %675, i1* %PF_val, !mcsema_real_eip !85
  %676 = icmp eq i32 %668, 0, !mcsema_real_eip !85
  store i1 %676, i1* %ZF_val, !mcsema_real_eip !85
  %677 = icmp slt i32 %668, 0
  store i1 %677, i1* %SF_val, !mcsema_real_eip !85
  %678 = icmp ult i32 %667, 2, !mcsema_real_eip !85
  store i1 %678, i1* %CF_val, !mcsema_real_eip !85
  %679 = and i32 %669, %667, !mcsema_real_eip !85
  %680 = icmp slt i32 %679, 0
  store i1 %680, i1* %OF_val, !mcsema_real_eip !85
  %681 = load i1* %ZF_val, !mcsema_real_eip !86
  br i1 %681, label %block_0x1cf, label %block_0x207, !mcsema_real_eip !86

block_0x207:                                      ; preds = %block_0x201, %block_0x1fb, %block_0x1cf, %block_0x1c9
  %682 = load i64* %RBP_val, !mcsema_real_eip !87
  %683 = add i64 %682, -16, !mcsema_real_eip !87
  %684 = inttoptr i64 %683 to i64*, !mcsema_real_eip !87
  %685 = bitcast i64* %684 to i32*
  %686 = load i32* %685, !mcsema_real_eip !87
  %687 = zext i32 %686 to i64, !mcsema_real_eip !87
  store i64 %687, i64* %RAX_val, !mcsema_real_eip !87
  %688 = load i64* %RBP_val, !mcsema_real_eip !88
  %689 = add i64 %688, -4, !mcsema_real_eip !88
  %690 = inttoptr i64 %689 to i64*, !mcsema_real_eip !88
  %691 = bitcast i64* %690 to i32*
  store i32 %686, i32* %691, !mcsema_real_eip !88
  %692 = load i64* %RBP_val, !mcsema_real_eip !89
  %693 = add i64 %692, -20, !mcsema_real_eip !89
  %694 = inttoptr i64 %693 to i64*, !mcsema_real_eip !89
  %695 = bitcast i64* %694 to i32*
  %696 = load i32* %695, !mcsema_real_eip !89
  %697 = zext i32 %696 to i64, !mcsema_real_eip !89
  store i64 %697, i64* %RAX_val, !mcsema_real_eip !89
  %698 = load i64* %RBP_val, !mcsema_real_eip !90
  %699 = add i64 %698, -8, !mcsema_real_eip !90
  %700 = inttoptr i64 %699 to i64*, !mcsema_real_eip !90
  %701 = bitcast i64* %700 to i32*
  store i32 %696, i32* %701, !mcsema_real_eip !90
  %702 = load i64* %RBP_val, !mcsema_real_eip !82
  %703 = add i64 %702, -16, !mcsema_real_eip !82
  %704 = inttoptr i64 %703 to i64*, !mcsema_real_eip !82
  %705 = bitcast i64* %704 to i32*
  %706 = load i32* %705, !mcsema_real_eip !82
  %707 = zext i32 %706 to i64, !mcsema_real_eip !82
  store i64 %707, i64* %RAX_val, !mcsema_real_eip !82
  %708 = load i64* %RBP_val, !mcsema_real_eip !83
  %709 = add i64 %708, -4, !mcsema_real_eip !83
  %710 = inttoptr i64 %709 to i64*, !mcsema_real_eip !83
  %711 = bitcast i64* %710 to i32*
  %712 = load i32* %711, !mcsema_real_eip !83
  %713 = sub i32 %706, %712, !mcsema_real_eip !83
  %714 = xor i32 %713, %706, !mcsema_real_eip !83
  %715 = xor i32 %714, %712, !mcsema_real_eip !83
  %716 = and i32 %715, 16, !mcsema_real_eip !83
  %717 = icmp ne i32 %716, 0, !mcsema_real_eip !83
  store i1 %717, i1* %AF_val, !mcsema_real_eip !83
  %718 = trunc i32 %713 to i8, !mcsema_real_eip !83
  %719 = tail call i8 @llvm.ctpop.i8(i8 %718), !mcsema_real_eip !83
  %720 = and i8 %719, 1
  %721 = icmp eq i8 %720, 0
  store i1 %721, i1* %PF_val, !mcsema_real_eip !83
  %722 = icmp eq i32 %706, %712
  store i1 %722, i1* %ZF_val, !mcsema_real_eip !83
  %723 = icmp slt i32 %713, 0
  store i1 %723, i1* %SF_val, !mcsema_real_eip !83
  %724 = icmp ult i32 %706, %712, !mcsema_real_eip !83
  store i1 %724, i1* %CF_val, !mcsema_real_eip !83
  %725 = xor i32 %712, %706, !mcsema_real_eip !83
  %726 = and i32 %714, %725, !mcsema_real_eip !83
  %727 = icmp slt i32 %726, 0
  store i1 %727, i1* %OF_val, !mcsema_real_eip !83
  %728 = load i1* %ZF_val, !mcsema_real_eip !84
  br i1 %728, label %block_0x21b, label %block_0x237, !mcsema_real_eip !84

block_0x1cf:                                      ; preds = %block_0x1c9
  %729 = load i64* %RBP_val, !mcsema_real_eip !91
  %730 = add i64 %729, -4, !mcsema_real_eip !91
  %731 = inttoptr i64 %730 to i64*, !mcsema_real_eip !91
  %732 = bitcast i64* %731 to i32*
  %733 = load i32* %732, !mcsema_real_eip !91
  %734 = zext i32 %733 to i64, !mcsema_real_eip !91
  store i64 %734, i64* %RAX_val, !mcsema_real_eip !91
  %735 = sext i32 %733 to i64, !mcsema_real_eip !92
  store i64 %735, i64* %RCX_val, !mcsema_real_eip !92
  %736 = load i64* %RBP_val, !mcsema_real_eip !93
  %737 = add i64 %736, -8, !mcsema_real_eip !93
  %738 = inttoptr i64 %737 to i64*, !mcsema_real_eip !93
  %739 = bitcast i64* %738 to i32*
  %740 = load i32* %739, !mcsema_real_eip !93
  %741 = sext i32 %740 to i64, !mcsema_real_eip !94
  store i64 %741, i64* %RDX_val, !mcsema_real_eip !94
  %742 = mul i64 %741, 11
  %743 = load i64* %RCX_val, !mcsema_real_eip !95
  %744 = add i64 %743, %742
  %uadd366 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %744, i64 ptrtoint (%0* @data_0x28d to i64))
  %745 = extractvalue { i64, i1 } %uadd366, 0
  %746 = xor i64 %745, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !96
  %747 = xor i64 %746, %744, !mcsema_real_eip !96
  %748 = and i64 %747, 16, !mcsema_real_eip !96
  %749 = icmp ne i64 %748, 0, !mcsema_real_eip !96
  store i1 %749, i1* %AF_val, !mcsema_real_eip !96
  %750 = icmp slt i64 %745, 0
  store i1 %750, i1* %SF_val, !mcsema_real_eip !96
  %751 = icmp eq i64 %745, 0, !mcsema_real_eip !96
  store i1 %751, i1* %ZF_val, !mcsema_real_eip !96
  %752 = xor i64 %744, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !96
  %753 = and i64 %746, %752, !mcsema_real_eip !96
  %754 = icmp slt i64 %753, 0
  store i1 %754, i1* %OF_val, !mcsema_real_eip !96
  %755 = trunc i64 %745 to i8, !mcsema_real_eip !96
  %756 = tail call i8 @llvm.ctpop.i8(i8 %755), !mcsema_real_eip !96
  %757 = and i8 %756, 1
  %758 = icmp eq i8 %757, 0
  store i1 %758, i1* %PF_val, !mcsema_real_eip !96
  %759 = extractvalue { i64, i1 } %uadd366, 1
  store i1 %759, i1* %CF_val, !mcsema_real_eip !96
  store i64 %745, i64* %RAX_val, !mcsema_real_eip !96
  %760 = inttoptr i64 %745 to i64*, !mcsema_real_eip !97
  %761 = bitcast i64* %760 to i8*
  %762 = load i8* %761, !mcsema_real_eip !97
  %763 = zext i8 %762 to i64
  store i64 %763, i64* %RAX_val, !mcsema_real_eip !97
  %764 = add i8 %762, -124
  %765 = xor i8 %764, %762, !mcsema_real_eip !98
  %766 = and i8 %765, 16
  %767 = icmp eq i8 %766, 0
  store i1 %767, i1* %AF_val, !mcsema_real_eip !98
  %768 = tail call i8 @llvm.ctpop.i8(i8 %764), !mcsema_real_eip !98
  %769 = and i8 %768, 1
  %770 = icmp eq i8 %769, 0
  store i1 %770, i1* %PF_val, !mcsema_real_eip !98
  %771 = icmp eq i8 %764, 0, !mcsema_real_eip !98
  store i1 %771, i1* %ZF_val, !mcsema_real_eip !98
  %772 = icmp slt i8 %764, 0
  store i1 %772, i1* %SF_val, !mcsema_real_eip !98
  %773 = icmp ult i8 %762, 124, !mcsema_real_eip !98
  store i1 %773, i1* %CF_val, !mcsema_real_eip !98
  %774 = and i8 %765, %762, !mcsema_real_eip !98
  %775 = icmp slt i8 %774, 0
  store i1 %775, i1* %OF_val, !mcsema_real_eip !98
  %776 = load i1* %ZF_val, !mcsema_real_eip !99
  br i1 %776, label %block_0x1fb, label %block_0x207, !mcsema_real_eip !99

block_0x237:                                      ; preds = %block_0x21b, %block_0x207, %block_0x213
  %777 = load i64* %RBP_val, !mcsema_real_eip !100
  %778 = add i64 %777, -4, !mcsema_real_eip !100
  %779 = inttoptr i64 %778 to i64*, !mcsema_real_eip !100
  %780 = bitcast i64* %779 to i32*
  %781 = load i32* %780, !mcsema_real_eip !100
  %782 = zext i32 %781 to i64, !mcsema_real_eip !100
  store i64 %782, i64* %RAX_val, !mcsema_real_eip !100
  %783 = sext i32 %781 to i64, !mcsema_real_eip !101
  store i64 %783, i64* %RCX_val, !mcsema_real_eip !101
  %784 = load i64* %RBP_val, !mcsema_real_eip !102
  %785 = add i64 %784, -8, !mcsema_real_eip !102
  %786 = inttoptr i64 %785 to i64*, !mcsema_real_eip !102
  %787 = bitcast i64* %786 to i32*
  %788 = load i32* %787, !mcsema_real_eip !102
  %789 = sext i32 %788 to i64, !mcsema_real_eip !103
  store i64 %789, i64* %RDX_val, !mcsema_real_eip !103
  %790 = mul i64 %789, 11
  %791 = load i64* %RCX_val, !mcsema_real_eip !104
  %792 = add i64 %791, %790
  %uadd384 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %792, i64 ptrtoint (%0* @data_0x28d to i64))
  %793 = extractvalue { i64, i1 } %uadd384, 0
  %794 = xor i64 %793, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !105
  %795 = xor i64 %794, %792, !mcsema_real_eip !105
  %796 = and i64 %795, 16, !mcsema_real_eip !105
  %797 = icmp ne i64 %796, 0, !mcsema_real_eip !105
  store i1 %797, i1* %AF_val, !mcsema_real_eip !105
  %798 = icmp slt i64 %793, 0
  store i1 %798, i1* %SF_val, !mcsema_real_eip !105
  %799 = icmp eq i64 %793, 0, !mcsema_real_eip !105
  store i1 %799, i1* %ZF_val, !mcsema_real_eip !105
  %800 = xor i64 %792, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !105
  %801 = and i64 %794, %800, !mcsema_real_eip !105
  %802 = icmp slt i64 %801, 0
  store i1 %802, i1* %OF_val, !mcsema_real_eip !105
  %803 = trunc i64 %793 to i8, !mcsema_real_eip !105
  %804 = tail call i8 @llvm.ctpop.i8(i8 %803), !mcsema_real_eip !105
  %805 = and i8 %804, 1
  %806 = icmp eq i8 %805, 0
  store i1 %806, i1* %PF_val, !mcsema_real_eip !105
  %807 = extractvalue { i64, i1 } %uadd384, 1
  store i1 %807, i1* %CF_val, !mcsema_real_eip !105
  %808 = inttoptr i64 %793 to i64*, !mcsema_real_eip !106
  %809 = bitcast i64* %808 to i8*
  store i8 88, i8* %809, !mcsema_real_eip !106
  store i64 0, i64* %RAX_val, !mcsema_real_eip !107
  %810 = load i64* %RSP_val, !mcsema_real_eip !108
  %811 = add i64 %810, -8
  %812 = inttoptr i64 %811 to i64*, !mcsema_real_eip !108
  store i64 -4981261766360305936, i64* %812, !mcsema_real_eip !108
  store i64 %811, i64* %RSP_val, !mcsema_real_eip !108
  %813 = load i64* %RAX_val, !mcsema_real_eip !108
  store i64 %813, i64* %RAX, !mcsema_real_eip !108
  %814 = load i64* %RBX_val, !mcsema_real_eip !108
  store i64 %814, i64* %RBX, !mcsema_real_eip !108
  %815 = load i64* %RCX_val, !mcsema_real_eip !108
  store i64 %815, i64* %RCX, !mcsema_real_eip !108
  %816 = load i64* %RDX_val, !mcsema_real_eip !108
  store i64 %816, i64* %RDX, !mcsema_real_eip !108
  %817 = load i64* %RSI_val, !mcsema_real_eip !108
  store i64 %817, i64* %RSI, !mcsema_real_eip !108
  %818 = load i64* %RDI_val, !mcsema_real_eip !108
  store i64 %818, i64* %RDI, !mcsema_real_eip !108
  %819 = load i64* %RSP_val, !mcsema_real_eip !108
  store i64 %819, i64* %RSP, !mcsema_real_eip !108
  %820 = load i64* %RBP_val, !mcsema_real_eip !108
  store i64 %820, i64* %RBP, !mcsema_real_eip !108
  %821 = load i64* %R8_val, !mcsema_real_eip !108
  store i64 %821, i64* %R8, !mcsema_real_eip !108
  %822 = load i64* %R9_val, !mcsema_real_eip !108
  store i64 %822, i64* %R9, !mcsema_real_eip !108
  %823 = load i64* %R10_val, !mcsema_real_eip !108
  store i64 %823, i64* %R10, !mcsema_real_eip !108
  %824 = load i64* %R11_val, !mcsema_real_eip !108
  store i64 %824, i64* %R11, !mcsema_real_eip !108
  %825 = load i64* %R12_val, !mcsema_real_eip !108
  store i64 %825, i64* %R12, !mcsema_real_eip !108
  %826 = load i64* %R13_val, !mcsema_real_eip !108
  store i64 %826, i64* %R13, !mcsema_real_eip !108
  %827 = load i64* %R14_val, !mcsema_real_eip !108
  store i64 %827, i64* %R14, !mcsema_real_eip !108
  %828 = load i64* %R15_val, !mcsema_real_eip !108
  store i64 %828, i64* %R15, !mcsema_real_eip !108
  %829 = load i64* %RIP_val, !mcsema_real_eip !108
  store i64 %829, i64* %RIP, !mcsema_real_eip !108
  %830 = load i1* %CF_val, !mcsema_real_eip !108
  store i1 %830, i1* %CF, align 1, !mcsema_real_eip !108
  %831 = load i1* %PF_val, !mcsema_real_eip !108
  store i1 %831, i1* %PF, align 1, !mcsema_real_eip !108
  %832 = load i1* %AF_val, !mcsema_real_eip !108
  store i1 %832, i1* %AF, align 1, !mcsema_real_eip !108
  %833 = load i1* %ZF_val, !mcsema_real_eip !108
  store i1 %833, i1* %ZF, align 1, !mcsema_real_eip !108
  %834 = load i1* %SF_val, !mcsema_real_eip !108
  store i1 %834, i1* %SF, align 1, !mcsema_real_eip !108
  %835 = load i1* %OF_val, !mcsema_real_eip !108
  store i1 %835, i1* %OF, align 1, !mcsema_real_eip !108
  %836 = load i1* %DF_val, !mcsema_real_eip !108
  store i1 %836, i1* %DF, align 1, !mcsema_real_eip !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !108
  %837 = load i1* %FPU_B_val, !mcsema_real_eip !108
  store i1 %837, i1* %FPU_B, align 1, !mcsema_real_eip !108
  %838 = load i1* %FPU_C3_val, !mcsema_real_eip !108
  store i1 %838, i1* %FPU_C3, align 1, !mcsema_real_eip !108
  %839 = load i3* %FPU_TOP_val, !mcsema_real_eip !108
  store i3 %839, i3* %FPU_TOP, align 1, !mcsema_real_eip !108
  %840 = load i1* %FPU_C2_val, !mcsema_real_eip !108
  store i1 %840, i1* %FPU_C2, align 1, !mcsema_real_eip !108
  %841 = load i1* %FPU_C1_val, !mcsema_real_eip !108
  store i1 %841, i1* %FPU_C1, align 1, !mcsema_real_eip !108
  %842 = load i1* %FPU_C0_val, !mcsema_real_eip !108
  store i1 %842, i1* %FPU_C0, align 1, !mcsema_real_eip !108
  %843 = load i1* %FPU_ES_val, !mcsema_real_eip !108
  store i1 %843, i1* %FPU_ES, align 1, !mcsema_real_eip !108
  %844 = load i1* %FPU_SF_val, !mcsema_real_eip !108
  store i1 %844, i1* %FPU_SF, align 1, !mcsema_real_eip !108
  %845 = load i1* %FPU_PE_val, !mcsema_real_eip !108
  store i1 %845, i1* %FPU_PE, align 1, !mcsema_real_eip !108
  %846 = load i1* %FPU_UE_val, !mcsema_real_eip !108
  store i1 %846, i1* %FPU_UE, align 1, !mcsema_real_eip !108
  %847 = load i1* %FPU_OE_val, !mcsema_real_eip !108
  store i1 %847, i1* %FPU_OE, align 1, !mcsema_real_eip !108
  %848 = load i1* %FPU_ZE_val, !mcsema_real_eip !108
  store i1 %848, i1* %FPU_ZE, align 1, !mcsema_real_eip !108
  %849 = load i1* %FPU_DE_val, !mcsema_real_eip !108
  store i1 %849, i1* %FPU_DE, align 1, !mcsema_real_eip !108
  %850 = load i1* %FPU_IE_val, !mcsema_real_eip !108
  store i1 %850, i1* %FPU_IE, align 1, !mcsema_real_eip !108
  %851 = load i1* %FPU_X_val, !mcsema_real_eip !108
  store i1 %851, i1* %FPU_X, align 1, !mcsema_real_eip !108
  %852 = load i2* %FPU_RC_val, !mcsema_real_eip !108
  store i2 %852, i2* %FPU_RC, align 1, !mcsema_real_eip !108
  %853 = load i2* %FPU_PC_val, !mcsema_real_eip !108
  store i2 %853, i2* %FPU_PC, align 1, !mcsema_real_eip !108
  %854 = load i1* %FPU_PM_val, !mcsema_real_eip !108
  store i1 %854, i1* %FPU_PM, align 1, !mcsema_real_eip !108
  %855 = load i1* %FPU_UM_val, !mcsema_real_eip !108
  store i1 %855, i1* %FPU_UM, align 1, !mcsema_real_eip !108
  %856 = load i1* %FPU_OM_val, !mcsema_real_eip !108
  store i1 %856, i1* %FPU_OM, align 1, !mcsema_real_eip !108
  %857 = load i1* %FPU_ZM_val, !mcsema_real_eip !108
  store i1 %857, i1* %FPU_ZM, align 1, !mcsema_real_eip !108
  %858 = load i1* %FPU_DM_val, !mcsema_real_eip !108
  store i1 %858, i1* %FPU_DM, align 1, !mcsema_real_eip !108
  %859 = load i1* %FPU_IM_val, !mcsema_real_eip !108
  store i1 %859, i1* %FPU_IM, align 1, !mcsema_real_eip !108
  %860 = load i64* %53, align 4
  store i64 %860, i64* %52, align 4
  %861 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !108
  store i16 %861, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !108
  %862 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !108
  store i64 %862, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !108
  %863 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !108
  store i16 %863, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !108
  %864 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !108
  store i64 %864, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !108
  %865 = load i128* %XMM0_val, !mcsema_real_eip !108
  store i128 %865, i128* %XMM0, align 1, !mcsema_real_eip !108
  %866 = load i128* %XMM1_val, !mcsema_real_eip !108
  store i128 %866, i128* %XMM1, align 1, !mcsema_real_eip !108
  %867 = load i128* %XMM2_val, !mcsema_real_eip !108
  store i128 %867, i128* %XMM2, align 1, !mcsema_real_eip !108
  %868 = load i128* %XMM3_val, !mcsema_real_eip !108
  store i128 %868, i128* %XMM3, align 1, !mcsema_real_eip !108
  %869 = load i128* %XMM4_val, !mcsema_real_eip !108
  store i128 %869, i128* %XMM4, align 1, !mcsema_real_eip !108
  %870 = load i128* %XMM5_val, !mcsema_real_eip !108
  store i128 %870, i128* %XMM5, align 1, !mcsema_real_eip !108
  %871 = load i128* %XMM6_val, !mcsema_real_eip !108
  store i128 %871, i128* %XMM6, align 1, !mcsema_real_eip !108
  %872 = load i128* %XMM7_val, !mcsema_real_eip !108
  store i128 %872, i128* %XMM7, align 1, !mcsema_real_eip !108
  %873 = load i128* %XMM8_val, !mcsema_real_eip !108
  store i128 %873, i128* %XMM8, align 1, !mcsema_real_eip !108
  %874 = load i128* %XMM9_val, !mcsema_real_eip !108
  store i128 %874, i128* %XMM9, align 1, !mcsema_real_eip !108
  %875 = load i128* %XMM10_val, !mcsema_real_eip !108
  store i128 %875, i128* %XMM10, align 1, !mcsema_real_eip !108
  %876 = load i128* %XMM11_val, !mcsema_real_eip !108
  store i128 %876, i128* %XMM11, align 1, !mcsema_real_eip !108
  %877 = load i128* %XMM12_val, !mcsema_real_eip !108
  store i128 %877, i128* %XMM12, align 1, !mcsema_real_eip !108
  %878 = load i128* %XMM13_val, !mcsema_real_eip !108
  store i128 %878, i128* %XMM13, align 1, !mcsema_real_eip !108
  %879 = load i128* %XMM14_val, !mcsema_real_eip !108
  store i128 %879, i128* %XMM14, align 1, !mcsema_real_eip !108
  %880 = load i128* %XMM15_val, !mcsema_real_eip !108
  store i128 %880, i128* %XMM15, align 1, !mcsema_real_eip !108
  %881 = load i64* %STACK_BASE_val, !mcsema_real_eip !108
  store i64 %881, i64* %STACK_BASE, align 1, !mcsema_real_eip !108
  %882 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !108
  store i64 %882, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !108
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !108
  %883 = load i64* %RAX, !mcsema_real_eip !108
  store i64 %883, i64* %RAX_val, !mcsema_real_eip !108
  %884 = load i64* %RBX, !mcsema_real_eip !108
  store i64 %884, i64* %RBX_val, !mcsema_real_eip !108
  %885 = load i64* %RCX, !mcsema_real_eip !108
  store i64 %885, i64* %RCX_val, !mcsema_real_eip !108
  %886 = load i64* %RDX, !mcsema_real_eip !108
  store i64 %886, i64* %RDX_val, !mcsema_real_eip !108
  %887 = load i64* %RSI, !mcsema_real_eip !108
  store i64 %887, i64* %RSI_val, !mcsema_real_eip !108
  %888 = load i64* %RDI, !mcsema_real_eip !108
  store i64 %888, i64* %RDI_val, !mcsema_real_eip !108
  %889 = load i64* %RSP, !mcsema_real_eip !108
  store i64 %889, i64* %RSP_val, !mcsema_real_eip !108
  %890 = load i64* %RBP, !mcsema_real_eip !108
  store i64 %890, i64* %RBP_val, !mcsema_real_eip !108
  %891 = load i64* %R8, !mcsema_real_eip !108
  store i64 %891, i64* %R8_val, !mcsema_real_eip !108
  %892 = load i64* %R9, !mcsema_real_eip !108
  store i64 %892, i64* %R9_val, !mcsema_real_eip !108
  %893 = load i64* %R10, !mcsema_real_eip !108
  store i64 %893, i64* %R10_val, !mcsema_real_eip !108
  %894 = load i64* %R11, !mcsema_real_eip !108
  store i64 %894, i64* %R11_val, !mcsema_real_eip !108
  %895 = load i64* %R12, !mcsema_real_eip !108
  store i64 %895, i64* %R12_val, !mcsema_real_eip !108
  %896 = load i64* %R13, !mcsema_real_eip !108
  store i64 %896, i64* %R13_val, !mcsema_real_eip !108
  %897 = load i64* %R14, !mcsema_real_eip !108
  store i64 %897, i64* %R14_val, !mcsema_real_eip !108
  %898 = load i64* %R15, !mcsema_real_eip !108
  store i64 %898, i64* %R15_val, !mcsema_real_eip !108
  %899 = load i64* %RIP, !mcsema_real_eip !108
  store i64 %899, i64* %RIP_val, !mcsema_real_eip !108
  %900 = load i1* %CF, align 1, !mcsema_real_eip !108
  store i1 %900, i1* %CF_val, !mcsema_real_eip !108
  %901 = load i1* %PF, align 1, !mcsema_real_eip !108
  store i1 %901, i1* %PF_val, !mcsema_real_eip !108
  %902 = load i1* %AF, align 1, !mcsema_real_eip !108
  store i1 %902, i1* %AF_val, !mcsema_real_eip !108
  %903 = load i1* %ZF, align 1, !mcsema_real_eip !108
  store i1 %903, i1* %ZF_val, !mcsema_real_eip !108
  %904 = load i1* %SF, align 1, !mcsema_real_eip !108
  store i1 %904, i1* %SF_val, !mcsema_real_eip !108
  %905 = load i1* %OF, align 1, !mcsema_real_eip !108
  store i1 %905, i1* %OF_val, !mcsema_real_eip !108
  %906 = load i1* %DF, align 1, !mcsema_real_eip !108
  store i1 %906, i1* %DF_val, !mcsema_real_eip !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !108
  %907 = load i1* %FPU_B, align 1, !mcsema_real_eip !108
  store i1 %907, i1* %FPU_B_val, !mcsema_real_eip !108
  %908 = load i1* %FPU_C3, align 1, !mcsema_real_eip !108
  store i1 %908, i1* %FPU_C3_val, !mcsema_real_eip !108
  %909 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !108
  store i3 %909, i3* %FPU_TOP_val, !mcsema_real_eip !108
  %910 = load i1* %FPU_C2, align 1, !mcsema_real_eip !108
  store i1 %910, i1* %FPU_C2_val, !mcsema_real_eip !108
  %911 = load i1* %FPU_C1, align 1, !mcsema_real_eip !108
  store i1 %911, i1* %FPU_C1_val, !mcsema_real_eip !108
  %912 = load i1* %FPU_C0, align 1, !mcsema_real_eip !108
  store i1 %912, i1* %FPU_C0_val, !mcsema_real_eip !108
  %913 = load i1* %FPU_ES, align 1, !mcsema_real_eip !108
  store i1 %913, i1* %FPU_ES_val, !mcsema_real_eip !108
  %914 = load i1* %FPU_SF, align 1, !mcsema_real_eip !108
  store i1 %914, i1* %FPU_SF_val, !mcsema_real_eip !108
  %915 = load i1* %FPU_PE, align 1, !mcsema_real_eip !108
  store i1 %915, i1* %FPU_PE_val, !mcsema_real_eip !108
  %916 = load i1* %FPU_UE, align 1, !mcsema_real_eip !108
  store i1 %916, i1* %FPU_UE_val, !mcsema_real_eip !108
  %917 = load i1* %FPU_OE, align 1, !mcsema_real_eip !108
  store i1 %917, i1* %FPU_OE_val, !mcsema_real_eip !108
  %918 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !108
  store i1 %918, i1* %FPU_ZE_val, !mcsema_real_eip !108
  %919 = load i1* %FPU_DE, align 1, !mcsema_real_eip !108
  store i1 %919, i1* %FPU_DE_val, !mcsema_real_eip !108
  %920 = load i1* %FPU_IE, align 1, !mcsema_real_eip !108
  store i1 %920, i1* %FPU_IE_val, !mcsema_real_eip !108
  %921 = load i1* %FPU_X, align 1, !mcsema_real_eip !108
  store i1 %921, i1* %FPU_X_val, !mcsema_real_eip !108
  %922 = load i2* %FPU_RC, align 1, !mcsema_real_eip !108
  store i2 %922, i2* %FPU_RC_val, !mcsema_real_eip !108
  %923 = load i2* %FPU_PC, align 1, !mcsema_real_eip !108
  store i2 %923, i2* %FPU_PC_val, !mcsema_real_eip !108
  %924 = load i1* %FPU_PM, align 1, !mcsema_real_eip !108
  store i1 %924, i1* %FPU_PM_val, !mcsema_real_eip !108
  %925 = load i1* %FPU_UM, align 1, !mcsema_real_eip !108
  store i1 %925, i1* %FPU_UM_val, !mcsema_real_eip !108
  %926 = load i1* %FPU_OM, align 1, !mcsema_real_eip !108
  store i1 %926, i1* %FPU_OM_val, !mcsema_real_eip !108
  %927 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !108
  store i1 %927, i1* %FPU_ZM_val, !mcsema_real_eip !108
  %928 = load i1* %FPU_DM, align 1, !mcsema_real_eip !108
  store i1 %928, i1* %FPU_DM_val, !mcsema_real_eip !108
  %929 = load i1* %FPU_IM, align 1, !mcsema_real_eip !108
  store i1 %929, i1* %FPU_IM_val, !mcsema_real_eip !108
  %930 = load i64* %52, align 4
  store i64 %930, i64* %53, align 4
  %931 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !108
  store i16 %931, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !108
  %932 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !108
  store i64 %932, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !108
  %933 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !108
  store i16 %933, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !108
  %934 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !108
  store i64 %934, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !108
  %935 = load i128* %XMM0, align 1, !mcsema_real_eip !108
  store i128 %935, i128* %XMM0_val, !mcsema_real_eip !108
  %936 = load i128* %XMM1, align 1, !mcsema_real_eip !108
  store i128 %936, i128* %XMM1_val, !mcsema_real_eip !108
  %937 = load i128* %XMM2, align 1, !mcsema_real_eip !108
  store i128 %937, i128* %XMM2_val, !mcsema_real_eip !108
  %938 = load i128* %XMM3, align 1, !mcsema_real_eip !108
  store i128 %938, i128* %XMM3_val, !mcsema_real_eip !108
  %939 = load i128* %XMM4, align 1, !mcsema_real_eip !108
  store i128 %939, i128* %XMM4_val, !mcsema_real_eip !108
  %940 = load i128* %XMM5, align 1, !mcsema_real_eip !108
  store i128 %940, i128* %XMM5_val, !mcsema_real_eip !108
  %941 = load i128* %XMM6, align 1, !mcsema_real_eip !108
  store i128 %941, i128* %XMM6_val, !mcsema_real_eip !108
  %942 = load i128* %XMM7, align 1, !mcsema_real_eip !108
  store i128 %942, i128* %XMM7_val, !mcsema_real_eip !108
  %943 = load i128* %XMM8, align 1, !mcsema_real_eip !108
  store i128 %943, i128* %XMM8_val, !mcsema_real_eip !108
  %944 = load i128* %XMM9, align 1, !mcsema_real_eip !108
  store i128 %944, i128* %XMM9_val, !mcsema_real_eip !108
  %945 = load i128* %XMM10, align 1, !mcsema_real_eip !108
  store i128 %945, i128* %XMM10_val, !mcsema_real_eip !108
  %946 = load i128* %XMM11, align 1, !mcsema_real_eip !108
  store i128 %946, i128* %XMM11_val, !mcsema_real_eip !108
  %947 = load i128* %XMM12, align 1, !mcsema_real_eip !108
  store i128 %947, i128* %XMM12_val, !mcsema_real_eip !108
  %948 = load i128* %XMM13, align 1, !mcsema_real_eip !108
  store i128 %948, i128* %XMM13_val, !mcsema_real_eip !108
  %949 = load i128* %XMM14, align 1, !mcsema_real_eip !108
  store i128 %949, i128* %XMM14_val, !mcsema_real_eip !108
  %950 = load i128* %XMM15, align 1, !mcsema_real_eip !108
  store i128 %950, i128* %XMM15_val, !mcsema_real_eip !108
  %951 = load i64* %STACK_BASE, !mcsema_real_eip !108
  store i64 %951, i64* %STACK_BASE_val, !mcsema_real_eip !108
  %952 = load i64* %STACK_LIMIT, !mcsema_real_eip !108
  store i64 %952, i64* %STACK_LIMIT_val, !mcsema_real_eip !108
  %953 = load i64* %RBP_val, !mcsema_real_eip !109
  %954 = add i64 %953, -12, !mcsema_real_eip !109
  %955 = inttoptr i64 %954 to i64*, !mcsema_real_eip !109
  %956 = bitcast i64* %955 to i32*
  %957 = load i32* %956, !mcsema_real_eip !109
  %uadd385 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %957, i32 1)
  %958 = extractvalue { i32, i1 } %uadd385, 0
  %959 = xor i32 %958, %957, !mcsema_real_eip !109
  %960 = and i32 %959, 16, !mcsema_real_eip !109
  %961 = icmp ne i32 %960, 0, !mcsema_real_eip !109
  store i1 %961, i1* %AF_val, !mcsema_real_eip !109
  %962 = icmp slt i32 %958, 0
  store i1 %962, i1* %SF_val, !mcsema_real_eip !109
  %963 = icmp eq i32 %958, 0, !mcsema_real_eip !109
  store i1 %963, i1* %ZF_val, !mcsema_real_eip !109
  %964 = xor i32 %957, -2147483648, !mcsema_real_eip !109
  %965 = and i32 %959, %964, !mcsema_real_eip !109
  %966 = icmp slt i32 %965, 0
  store i1 %966, i1* %OF_val, !mcsema_real_eip !109
  %967 = trunc i32 %958 to i8, !mcsema_real_eip !109
  %968 = tail call i8 @llvm.ctpop.i8(i8 %967), !mcsema_real_eip !109
  %969 = and i8 %968, 1
  %970 = icmp eq i8 %969, 0
  store i1 %970, i1* %PF_val, !mcsema_real_eip !109
  %971 = extractvalue { i32, i1 } %uadd385, 1
  store i1 %971, i1* %CF_val, !mcsema_real_eip !109
  store i32 %958, i32* %956, !mcsema_real_eip !109
  store i64 1, i64* %RDI_val, !mcsema_real_eip !110
  %972 = tail call x86_64_sysvcc i64 @sleep(i64 1), !mcsema_real_eip !111
  store i64 %972, i64* %RAX_val, !mcsema_real_eip !111
  %973 = load i64* %RBP_val, !mcsema_real_eip !22
  %974 = add i64 %973, -12, !mcsema_real_eip !22
  %975 = inttoptr i64 %974 to i64*, !mcsema_real_eip !22
  %976 = bitcast i64* %975 to i32*
  %977 = load i32* %976, !mcsema_real_eip !22
  %978 = add i32 %977, -27
  %979 = xor i32 %978, %977, !mcsema_real_eip !22
  %980 = and i32 %979, 16
  %981 = icmp eq i32 %980, 0
  store i1 %981, i1* %AF_val, !mcsema_real_eip !22
  %982 = trunc i32 %978 to i8, !mcsema_real_eip !22
  %983 = tail call i8 @llvm.ctpop.i8(i8 %982), !mcsema_real_eip !22
  %984 = and i8 %983, 1
  %985 = icmp eq i8 %984, 0
  store i1 %985, i1* %PF_val, !mcsema_real_eip !22
  %986 = icmp eq i32 %978, 0, !mcsema_real_eip !22
  store i1 %986, i1* %ZF_val, !mcsema_real_eip !22
  %987 = icmp slt i32 %978, 0
  store i1 %987, i1* %SF_val, !mcsema_real_eip !22
  %988 = icmp ult i32 %977, 27, !mcsema_real_eip !22
  store i1 %988, i1* %CF_val, !mcsema_real_eip !22
  %989 = and i32 %979, %977, !mcsema_real_eip !22
  %990 = icmp slt i32 %989, 0
  store i1 %990, i1* %OF_val, !mcsema_real_eip !22
  %991 = xor i1 %987, %990
  %992 = load i1* %ZF_val, !mcsema_real_eip !23
  %993 = or i1 %992, %991, !mcsema_real_eip !23
  br i1 %993, label %block_0xdd.backedge, label %block_0x281.loopexit, !mcsema_real_eip !23

block_0xdd.backedge:                              ; preds = %block_0x223, %block_0x237
  br label %block_0xdd

block_0x21b:                                      ; preds = %block_0x207, %block_0x213
  %994 = load i64* %RBP_val, !mcsema_real_eip !112
  %995 = add i64 %994, -20, !mcsema_real_eip !112
  %996 = inttoptr i64 %995 to i64*, !mcsema_real_eip !112
  %997 = bitcast i64* %996 to i32*
  %998 = load i32* %997, !mcsema_real_eip !112
  %999 = zext i32 %998 to i64, !mcsema_real_eip !112
  store i64 %999, i64* %RAX_val, !mcsema_real_eip !112
  %1000 = load i64* %RBP_val, !mcsema_real_eip !113
  %1001 = add i64 %1000, -8, !mcsema_real_eip !113
  %1002 = inttoptr i64 %1001 to i64*, !mcsema_real_eip !113
  %1003 = bitcast i64* %1002 to i32*
  %1004 = load i32* %1003, !mcsema_real_eip !113
  %1005 = sub i32 %998, %1004, !mcsema_real_eip !113
  %1006 = xor i32 %1005, %998, !mcsema_real_eip !113
  %1007 = xor i32 %1006, %1004, !mcsema_real_eip !113
  %1008 = and i32 %1007, 16, !mcsema_real_eip !113
  %1009 = icmp ne i32 %1008, 0, !mcsema_real_eip !113
  store i1 %1009, i1* %AF_val, !mcsema_real_eip !113
  %1010 = trunc i32 %1005 to i8, !mcsema_real_eip !113
  %1011 = tail call i8 @llvm.ctpop.i8(i8 %1010), !mcsema_real_eip !113
  %1012 = and i8 %1011, 1
  %1013 = icmp eq i8 %1012, 0
  store i1 %1013, i1* %PF_val, !mcsema_real_eip !113
  %1014 = icmp eq i32 %998, %1004
  store i1 %1014, i1* %ZF_val, !mcsema_real_eip !113
  %1015 = icmp slt i32 %1005, 0
  store i1 %1015, i1* %SF_val, !mcsema_real_eip !113
  %1016 = icmp ult i32 %998, %1004, !mcsema_real_eip !113
  store i1 %1016, i1* %CF_val, !mcsema_real_eip !113
  %1017 = xor i32 %1004, %998, !mcsema_real_eip !113
  %1018 = and i32 %1006, %1017, !mcsema_real_eip !113
  %1019 = icmp slt i32 %1018, 0
  store i1 %1019, i1* %OF_val, !mcsema_real_eip !113
  %1020 = load i1* %ZF_val, !mcsema_real_eip !114
  br i1 %1020, label %block_0x223, label %block_0x237, !mcsema_real_eip !114

block_0x1fb:                                      ; preds = %block_0x1cf
  %1021 = load i64* %RBP_val, !mcsema_real_eip !115
  %1022 = add i64 %1021, -4, !mcsema_real_eip !115
  %1023 = inttoptr i64 %1022 to i64*, !mcsema_real_eip !115
  %1024 = bitcast i64* %1023 to i32*
  %1025 = load i32* %1024, !mcsema_real_eip !115
  store i1 false, i1* %AF_val, !mcsema_real_eip !115
  %1026 = trunc i32 %1025 to i8, !mcsema_real_eip !115
  %1027 = tail call i8 @llvm.ctpop.i8(i8 %1026), !mcsema_real_eip !115
  %1028 = and i8 %1027, 1
  %1029 = icmp eq i8 %1028, 0
  store i1 %1029, i1* %PF_val, !mcsema_real_eip !115
  %1030 = icmp eq i32 %1025, 0, !mcsema_real_eip !115
  store i1 %1030, i1* %ZF_val, !mcsema_real_eip !115
  %1031 = icmp slt i32 %1025, 0
  store i1 %1031, i1* %SF_val, !mcsema_real_eip !115
  store i1 false, i1* %CF_val, !mcsema_real_eip !115
  store i1 false, i1* %OF_val, !mcsema_real_eip !115
  %1032 = icmp slt i32 %1025, 1
  br i1 %1032, label %block_0x207, label %block_0x201, !mcsema_real_eip !116

block_0x223:                                      ; preds = %block_0x21b
  %1033 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 77) to i64)), !mcsema_real_eip !117
  store i64 4294967294, i64* %RDI_val, !mcsema_real_eip !118
  %1034 = tail call x86_64_sysvcc i64 @exit(i64 4294967294), !mcsema_real_eip !119
  store i64 %1034, i64* %RAX_val, !mcsema_real_eip !119
  %1035 = load i64* %RBP_val, !mcsema_real_eip !100
  %1036 = add i64 %1035, -4, !mcsema_real_eip !100
  %1037 = inttoptr i64 %1036 to i64*, !mcsema_real_eip !100
  %1038 = bitcast i64* %1037 to i32*
  %1039 = load i32* %1038, !mcsema_real_eip !100
  %1040 = zext i32 %1039 to i64, !mcsema_real_eip !100
  store i64 %1040, i64* %RAX_val, !mcsema_real_eip !100
  %1041 = sext i32 %1039 to i64, !mcsema_real_eip !101
  store i64 %1041, i64* %RCX_val, !mcsema_real_eip !101
  %1042 = load i64* %RBP_val, !mcsema_real_eip !102
  %1043 = add i64 %1042, -8, !mcsema_real_eip !102
  %1044 = inttoptr i64 %1043 to i64*, !mcsema_real_eip !102
  %1045 = bitcast i64* %1044 to i32*
  %1046 = load i32* %1045, !mcsema_real_eip !102
  %1047 = sext i32 %1046 to i64, !mcsema_real_eip !103
  store i64 %1047, i64* %RDX_val, !mcsema_real_eip !103
  %1048 = mul i64 %1047, 11
  %1049 = load i64* %RCX_val, !mcsema_real_eip !104
  %1050 = add i64 %1049, %1048
  %uadd377 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1050, i64 ptrtoint (%0* @data_0x28d to i64))
  %1051 = extractvalue { i64, i1 } %uadd377, 0
  %1052 = xor i64 %1051, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !105
  %1053 = xor i64 %1052, %1050, !mcsema_real_eip !105
  %1054 = and i64 %1053, 16, !mcsema_real_eip !105
  %1055 = icmp ne i64 %1054, 0, !mcsema_real_eip !105
  store i1 %1055, i1* %AF_val, !mcsema_real_eip !105
  %1056 = icmp slt i64 %1051, 0
  store i1 %1056, i1* %SF_val, !mcsema_real_eip !105
  %1057 = icmp eq i64 %1051, 0, !mcsema_real_eip !105
  store i1 %1057, i1* %ZF_val, !mcsema_real_eip !105
  %1058 = xor i64 %1050, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !105
  %1059 = and i64 %1052, %1058, !mcsema_real_eip !105
  %1060 = icmp slt i64 %1059, 0
  store i1 %1060, i1* %OF_val, !mcsema_real_eip !105
  %1061 = trunc i64 %1051 to i8, !mcsema_real_eip !105
  %1062 = tail call i8 @llvm.ctpop.i8(i8 %1061), !mcsema_real_eip !105
  %1063 = and i8 %1062, 1
  %1064 = icmp eq i8 %1063, 0
  store i1 %1064, i1* %PF_val, !mcsema_real_eip !105
  %1065 = extractvalue { i64, i1 } %uadd377, 1
  store i1 %1065, i1* %CF_val, !mcsema_real_eip !105
  %1066 = inttoptr i64 %1051 to i64*, !mcsema_real_eip !106
  %1067 = bitcast i64* %1066 to i8*
  store i8 88, i8* %1067, !mcsema_real_eip !106
  store i64 0, i64* %RAX_val, !mcsema_real_eip !107
  %1068 = load i64* %RSP_val, !mcsema_real_eip !108
  %1069 = add i64 %1068, -8
  %1070 = inttoptr i64 %1069 to i64*, !mcsema_real_eip !108
  store i64 -4981261766360305936, i64* %1070, !mcsema_real_eip !108
  store i64 %1069, i64* %RSP_val, !mcsema_real_eip !108
  %1071 = load i64* %RAX_val, !mcsema_real_eip !108
  store i64 %1071, i64* %RAX, !mcsema_real_eip !108
  %1072 = load i64* %RBX_val, !mcsema_real_eip !108
  store i64 %1072, i64* %RBX, !mcsema_real_eip !108
  %1073 = load i64* %RCX_val, !mcsema_real_eip !108
  store i64 %1073, i64* %RCX, !mcsema_real_eip !108
  %1074 = load i64* %RDX_val, !mcsema_real_eip !108
  store i64 %1074, i64* %RDX, !mcsema_real_eip !108
  %1075 = load i64* %RSI_val, !mcsema_real_eip !108
  store i64 %1075, i64* %RSI, !mcsema_real_eip !108
  %1076 = load i64* %RDI_val, !mcsema_real_eip !108
  store i64 %1076, i64* %RDI, !mcsema_real_eip !108
  %1077 = load i64* %RSP_val, !mcsema_real_eip !108
  store i64 %1077, i64* %RSP, !mcsema_real_eip !108
  %1078 = load i64* %RBP_val, !mcsema_real_eip !108
  store i64 %1078, i64* %RBP, !mcsema_real_eip !108
  %1079 = load i64* %R8_val, !mcsema_real_eip !108
  store i64 %1079, i64* %R8, !mcsema_real_eip !108
  %1080 = load i64* %R9_val, !mcsema_real_eip !108
  store i64 %1080, i64* %R9, !mcsema_real_eip !108
  %1081 = load i64* %R10_val, !mcsema_real_eip !108
  store i64 %1081, i64* %R10, !mcsema_real_eip !108
  %1082 = load i64* %R11_val, !mcsema_real_eip !108
  store i64 %1082, i64* %R11, !mcsema_real_eip !108
  %1083 = load i64* %R12_val, !mcsema_real_eip !108
  store i64 %1083, i64* %R12, !mcsema_real_eip !108
  %1084 = load i64* %R13_val, !mcsema_real_eip !108
  store i64 %1084, i64* %R13, !mcsema_real_eip !108
  %1085 = load i64* %R14_val, !mcsema_real_eip !108
  store i64 %1085, i64* %R14, !mcsema_real_eip !108
  %1086 = load i64* %R15_val, !mcsema_real_eip !108
  store i64 %1086, i64* %R15, !mcsema_real_eip !108
  %1087 = load i64* %RIP_val, !mcsema_real_eip !108
  store i64 %1087, i64* %RIP, !mcsema_real_eip !108
  %1088 = load i1* %CF_val, !mcsema_real_eip !108
  store i1 %1088, i1* %CF, align 1, !mcsema_real_eip !108
  %1089 = load i1* %PF_val, !mcsema_real_eip !108
  store i1 %1089, i1* %PF, align 1, !mcsema_real_eip !108
  %1090 = load i1* %AF_val, !mcsema_real_eip !108
  store i1 %1090, i1* %AF, align 1, !mcsema_real_eip !108
  %1091 = load i1* %ZF_val, !mcsema_real_eip !108
  store i1 %1091, i1* %ZF, align 1, !mcsema_real_eip !108
  %1092 = load i1* %SF_val, !mcsema_real_eip !108
  store i1 %1092, i1* %SF, align 1, !mcsema_real_eip !108
  %1093 = load i1* %OF_val, !mcsema_real_eip !108
  store i1 %1093, i1* %OF, align 1, !mcsema_real_eip !108
  %1094 = load i1* %DF_val, !mcsema_real_eip !108
  store i1 %1094, i1* %DF, align 1, !mcsema_real_eip !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !108
  %1095 = load i1* %FPU_B_val, !mcsema_real_eip !108
  store i1 %1095, i1* %FPU_B, align 1, !mcsema_real_eip !108
  %1096 = load i1* %FPU_C3_val, !mcsema_real_eip !108
  store i1 %1096, i1* %FPU_C3, align 1, !mcsema_real_eip !108
  %1097 = load i3* %FPU_TOP_val, !mcsema_real_eip !108
  store i3 %1097, i3* %FPU_TOP, align 1, !mcsema_real_eip !108
  %1098 = load i1* %FPU_C2_val, !mcsema_real_eip !108
  store i1 %1098, i1* %FPU_C2, align 1, !mcsema_real_eip !108
  %1099 = load i1* %FPU_C1_val, !mcsema_real_eip !108
  store i1 %1099, i1* %FPU_C1, align 1, !mcsema_real_eip !108
  %1100 = load i1* %FPU_C0_val, !mcsema_real_eip !108
  store i1 %1100, i1* %FPU_C0, align 1, !mcsema_real_eip !108
  %1101 = load i1* %FPU_ES_val, !mcsema_real_eip !108
  store i1 %1101, i1* %FPU_ES, align 1, !mcsema_real_eip !108
  %1102 = load i1* %FPU_SF_val, !mcsema_real_eip !108
  store i1 %1102, i1* %FPU_SF, align 1, !mcsema_real_eip !108
  %1103 = load i1* %FPU_PE_val, !mcsema_real_eip !108
  store i1 %1103, i1* %FPU_PE, align 1, !mcsema_real_eip !108
  %1104 = load i1* %FPU_UE_val, !mcsema_real_eip !108
  store i1 %1104, i1* %FPU_UE, align 1, !mcsema_real_eip !108
  %1105 = load i1* %FPU_OE_val, !mcsema_real_eip !108
  store i1 %1105, i1* %FPU_OE, align 1, !mcsema_real_eip !108
  %1106 = load i1* %FPU_ZE_val, !mcsema_real_eip !108
  store i1 %1106, i1* %FPU_ZE, align 1, !mcsema_real_eip !108
  %1107 = load i1* %FPU_DE_val, !mcsema_real_eip !108
  store i1 %1107, i1* %FPU_DE, align 1, !mcsema_real_eip !108
  %1108 = load i1* %FPU_IE_val, !mcsema_real_eip !108
  store i1 %1108, i1* %FPU_IE, align 1, !mcsema_real_eip !108
  %1109 = load i1* %FPU_X_val, !mcsema_real_eip !108
  store i1 %1109, i1* %FPU_X, align 1, !mcsema_real_eip !108
  %1110 = load i2* %FPU_RC_val, !mcsema_real_eip !108
  store i2 %1110, i2* %FPU_RC, align 1, !mcsema_real_eip !108
  %1111 = load i2* %FPU_PC_val, !mcsema_real_eip !108
  store i2 %1111, i2* %FPU_PC, align 1, !mcsema_real_eip !108
  %1112 = load i1* %FPU_PM_val, !mcsema_real_eip !108
  store i1 %1112, i1* %FPU_PM, align 1, !mcsema_real_eip !108
  %1113 = load i1* %FPU_UM_val, !mcsema_real_eip !108
  store i1 %1113, i1* %FPU_UM, align 1, !mcsema_real_eip !108
  %1114 = load i1* %FPU_OM_val, !mcsema_real_eip !108
  store i1 %1114, i1* %FPU_OM, align 1, !mcsema_real_eip !108
  %1115 = load i1* %FPU_ZM_val, !mcsema_real_eip !108
  store i1 %1115, i1* %FPU_ZM, align 1, !mcsema_real_eip !108
  %1116 = load i1* %FPU_DM_val, !mcsema_real_eip !108
  store i1 %1116, i1* %FPU_DM, align 1, !mcsema_real_eip !108
  %1117 = load i1* %FPU_IM_val, !mcsema_real_eip !108
  store i1 %1117, i1* %FPU_IM, align 1, !mcsema_real_eip !108
  %1118 = load i64* %53, align 4
  store i64 %1118, i64* %52, align 4
  %1119 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !108
  store i16 %1119, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !108
  %1120 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !108
  store i64 %1120, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !108
  %1121 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !108
  store i16 %1121, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !108
  %1122 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !108
  store i64 %1122, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !108
  %1123 = load i128* %XMM0_val, !mcsema_real_eip !108
  store i128 %1123, i128* %XMM0, align 1, !mcsema_real_eip !108
  %1124 = load i128* %XMM1_val, !mcsema_real_eip !108
  store i128 %1124, i128* %XMM1, align 1, !mcsema_real_eip !108
  %1125 = load i128* %XMM2_val, !mcsema_real_eip !108
  store i128 %1125, i128* %XMM2, align 1, !mcsema_real_eip !108
  %1126 = load i128* %XMM3_val, !mcsema_real_eip !108
  store i128 %1126, i128* %XMM3, align 1, !mcsema_real_eip !108
  %1127 = load i128* %XMM4_val, !mcsema_real_eip !108
  store i128 %1127, i128* %XMM4, align 1, !mcsema_real_eip !108
  %1128 = load i128* %XMM5_val, !mcsema_real_eip !108
  store i128 %1128, i128* %XMM5, align 1, !mcsema_real_eip !108
  %1129 = load i128* %XMM6_val, !mcsema_real_eip !108
  store i128 %1129, i128* %XMM6, align 1, !mcsema_real_eip !108
  %1130 = load i128* %XMM7_val, !mcsema_real_eip !108
  store i128 %1130, i128* %XMM7, align 1, !mcsema_real_eip !108
  %1131 = load i128* %XMM8_val, !mcsema_real_eip !108
  store i128 %1131, i128* %XMM8, align 1, !mcsema_real_eip !108
  %1132 = load i128* %XMM9_val, !mcsema_real_eip !108
  store i128 %1132, i128* %XMM9, align 1, !mcsema_real_eip !108
  %1133 = load i128* %XMM10_val, !mcsema_real_eip !108
  store i128 %1133, i128* %XMM10, align 1, !mcsema_real_eip !108
  %1134 = load i128* %XMM11_val, !mcsema_real_eip !108
  store i128 %1134, i128* %XMM11, align 1, !mcsema_real_eip !108
  %1135 = load i128* %XMM12_val, !mcsema_real_eip !108
  store i128 %1135, i128* %XMM12, align 1, !mcsema_real_eip !108
  %1136 = load i128* %XMM13_val, !mcsema_real_eip !108
  store i128 %1136, i128* %XMM13, align 1, !mcsema_real_eip !108
  %1137 = load i128* %XMM14_val, !mcsema_real_eip !108
  store i128 %1137, i128* %XMM14, align 1, !mcsema_real_eip !108
  %1138 = load i128* %XMM15_val, !mcsema_real_eip !108
  store i128 %1138, i128* %XMM15, align 1, !mcsema_real_eip !108
  %1139 = load i64* %STACK_BASE_val, !mcsema_real_eip !108
  store i64 %1139, i64* %STACK_BASE, align 1, !mcsema_real_eip !108
  %1140 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !108
  store i64 %1140, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !108
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !108
  %1141 = load i64* %RAX, !mcsema_real_eip !108
  store i64 %1141, i64* %RAX_val, !mcsema_real_eip !108
  %1142 = load i64* %RBX, !mcsema_real_eip !108
  store i64 %1142, i64* %RBX_val, !mcsema_real_eip !108
  %1143 = load i64* %RCX, !mcsema_real_eip !108
  store i64 %1143, i64* %RCX_val, !mcsema_real_eip !108
  %1144 = load i64* %RDX, !mcsema_real_eip !108
  store i64 %1144, i64* %RDX_val, !mcsema_real_eip !108
  %1145 = load i64* %RSI, !mcsema_real_eip !108
  store i64 %1145, i64* %RSI_val, !mcsema_real_eip !108
  %1146 = load i64* %RDI, !mcsema_real_eip !108
  store i64 %1146, i64* %RDI_val, !mcsema_real_eip !108
  %1147 = load i64* %RSP, !mcsema_real_eip !108
  store i64 %1147, i64* %RSP_val, !mcsema_real_eip !108
  %1148 = load i64* %RBP, !mcsema_real_eip !108
  store i64 %1148, i64* %RBP_val, !mcsema_real_eip !108
  %1149 = load i64* %R8, !mcsema_real_eip !108
  store i64 %1149, i64* %R8_val, !mcsema_real_eip !108
  %1150 = load i64* %R9, !mcsema_real_eip !108
  store i64 %1150, i64* %R9_val, !mcsema_real_eip !108
  %1151 = load i64* %R10, !mcsema_real_eip !108
  store i64 %1151, i64* %R10_val, !mcsema_real_eip !108
  %1152 = load i64* %R11, !mcsema_real_eip !108
  store i64 %1152, i64* %R11_val, !mcsema_real_eip !108
  %1153 = load i64* %R12, !mcsema_real_eip !108
  store i64 %1153, i64* %R12_val, !mcsema_real_eip !108
  %1154 = load i64* %R13, !mcsema_real_eip !108
  store i64 %1154, i64* %R13_val, !mcsema_real_eip !108
  %1155 = load i64* %R14, !mcsema_real_eip !108
  store i64 %1155, i64* %R14_val, !mcsema_real_eip !108
  %1156 = load i64* %R15, !mcsema_real_eip !108
  store i64 %1156, i64* %R15_val, !mcsema_real_eip !108
  %1157 = load i64* %RIP, !mcsema_real_eip !108
  store i64 %1157, i64* %RIP_val, !mcsema_real_eip !108
  %1158 = load i1* %CF, align 1, !mcsema_real_eip !108
  store i1 %1158, i1* %CF_val, !mcsema_real_eip !108
  %1159 = load i1* %PF, align 1, !mcsema_real_eip !108
  store i1 %1159, i1* %PF_val, !mcsema_real_eip !108
  %1160 = load i1* %AF, align 1, !mcsema_real_eip !108
  store i1 %1160, i1* %AF_val, !mcsema_real_eip !108
  %1161 = load i1* %ZF, align 1, !mcsema_real_eip !108
  store i1 %1161, i1* %ZF_val, !mcsema_real_eip !108
  %1162 = load i1* %SF, align 1, !mcsema_real_eip !108
  store i1 %1162, i1* %SF_val, !mcsema_real_eip !108
  %1163 = load i1* %OF, align 1, !mcsema_real_eip !108
  store i1 %1163, i1* %OF_val, !mcsema_real_eip !108
  %1164 = load i1* %DF, align 1, !mcsema_real_eip !108
  store i1 %1164, i1* %DF_val, !mcsema_real_eip !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !108
  %1165 = load i1* %FPU_B, align 1, !mcsema_real_eip !108
  store i1 %1165, i1* %FPU_B_val, !mcsema_real_eip !108
  %1166 = load i1* %FPU_C3, align 1, !mcsema_real_eip !108
  store i1 %1166, i1* %FPU_C3_val, !mcsema_real_eip !108
  %1167 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !108
  store i3 %1167, i3* %FPU_TOP_val, !mcsema_real_eip !108
  %1168 = load i1* %FPU_C2, align 1, !mcsema_real_eip !108
  store i1 %1168, i1* %FPU_C2_val, !mcsema_real_eip !108
  %1169 = load i1* %FPU_C1, align 1, !mcsema_real_eip !108
  store i1 %1169, i1* %FPU_C1_val, !mcsema_real_eip !108
  %1170 = load i1* %FPU_C0, align 1, !mcsema_real_eip !108
  store i1 %1170, i1* %FPU_C0_val, !mcsema_real_eip !108
  %1171 = load i1* %FPU_ES, align 1, !mcsema_real_eip !108
  store i1 %1171, i1* %FPU_ES_val, !mcsema_real_eip !108
  %1172 = load i1* %FPU_SF, align 1, !mcsema_real_eip !108
  store i1 %1172, i1* %FPU_SF_val, !mcsema_real_eip !108
  %1173 = load i1* %FPU_PE, align 1, !mcsema_real_eip !108
  store i1 %1173, i1* %FPU_PE_val, !mcsema_real_eip !108
  %1174 = load i1* %FPU_UE, align 1, !mcsema_real_eip !108
  store i1 %1174, i1* %FPU_UE_val, !mcsema_real_eip !108
  %1175 = load i1* %FPU_OE, align 1, !mcsema_real_eip !108
  store i1 %1175, i1* %FPU_OE_val, !mcsema_real_eip !108
  %1176 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !108
  store i1 %1176, i1* %FPU_ZE_val, !mcsema_real_eip !108
  %1177 = load i1* %FPU_DE, align 1, !mcsema_real_eip !108
  store i1 %1177, i1* %FPU_DE_val, !mcsema_real_eip !108
  %1178 = load i1* %FPU_IE, align 1, !mcsema_real_eip !108
  store i1 %1178, i1* %FPU_IE_val, !mcsema_real_eip !108
  %1179 = load i1* %FPU_X, align 1, !mcsema_real_eip !108
  store i1 %1179, i1* %FPU_X_val, !mcsema_real_eip !108
  %1180 = load i2* %FPU_RC, align 1, !mcsema_real_eip !108
  store i2 %1180, i2* %FPU_RC_val, !mcsema_real_eip !108
  %1181 = load i2* %FPU_PC, align 1, !mcsema_real_eip !108
  store i2 %1181, i2* %FPU_PC_val, !mcsema_real_eip !108
  %1182 = load i1* %FPU_PM, align 1, !mcsema_real_eip !108
  store i1 %1182, i1* %FPU_PM_val, !mcsema_real_eip !108
  %1183 = load i1* %FPU_UM, align 1, !mcsema_real_eip !108
  store i1 %1183, i1* %FPU_UM_val, !mcsema_real_eip !108
  %1184 = load i1* %FPU_OM, align 1, !mcsema_real_eip !108
  store i1 %1184, i1* %FPU_OM_val, !mcsema_real_eip !108
  %1185 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !108
  store i1 %1185, i1* %FPU_ZM_val, !mcsema_real_eip !108
  %1186 = load i1* %FPU_DM, align 1, !mcsema_real_eip !108
  store i1 %1186, i1* %FPU_DM_val, !mcsema_real_eip !108
  %1187 = load i1* %FPU_IM, align 1, !mcsema_real_eip !108
  store i1 %1187, i1* %FPU_IM_val, !mcsema_real_eip !108
  %1188 = load i64* %52, align 4
  store i64 %1188, i64* %53, align 4
  %1189 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !108
  store i16 %1189, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !108
  %1190 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !108
  store i64 %1190, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !108
  %1191 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !108
  store i16 %1191, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !108
  %1192 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !108
  store i64 %1192, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !108
  %1193 = load i128* %XMM0, align 1, !mcsema_real_eip !108
  store i128 %1193, i128* %XMM0_val, !mcsema_real_eip !108
  %1194 = load i128* %XMM1, align 1, !mcsema_real_eip !108
  store i128 %1194, i128* %XMM1_val, !mcsema_real_eip !108
  %1195 = load i128* %XMM2, align 1, !mcsema_real_eip !108
  store i128 %1195, i128* %XMM2_val, !mcsema_real_eip !108
  %1196 = load i128* %XMM3, align 1, !mcsema_real_eip !108
  store i128 %1196, i128* %XMM3_val, !mcsema_real_eip !108
  %1197 = load i128* %XMM4, align 1, !mcsema_real_eip !108
  store i128 %1197, i128* %XMM4_val, !mcsema_real_eip !108
  %1198 = load i128* %XMM5, align 1, !mcsema_real_eip !108
  store i128 %1198, i128* %XMM5_val, !mcsema_real_eip !108
  %1199 = load i128* %XMM6, align 1, !mcsema_real_eip !108
  store i128 %1199, i128* %XMM6_val, !mcsema_real_eip !108
  %1200 = load i128* %XMM7, align 1, !mcsema_real_eip !108
  store i128 %1200, i128* %XMM7_val, !mcsema_real_eip !108
  %1201 = load i128* %XMM8, align 1, !mcsema_real_eip !108
  store i128 %1201, i128* %XMM8_val, !mcsema_real_eip !108
  %1202 = load i128* %XMM9, align 1, !mcsema_real_eip !108
  store i128 %1202, i128* %XMM9_val, !mcsema_real_eip !108
  %1203 = load i128* %XMM10, align 1, !mcsema_real_eip !108
  store i128 %1203, i128* %XMM10_val, !mcsema_real_eip !108
  %1204 = load i128* %XMM11, align 1, !mcsema_real_eip !108
  store i128 %1204, i128* %XMM11_val, !mcsema_real_eip !108
  %1205 = load i128* %XMM12, align 1, !mcsema_real_eip !108
  store i128 %1205, i128* %XMM12_val, !mcsema_real_eip !108
  %1206 = load i128* %XMM13, align 1, !mcsema_real_eip !108
  store i128 %1206, i128* %XMM13_val, !mcsema_real_eip !108
  %1207 = load i128* %XMM14, align 1, !mcsema_real_eip !108
  store i128 %1207, i128* %XMM14_val, !mcsema_real_eip !108
  %1208 = load i128* %XMM15, align 1, !mcsema_real_eip !108
  store i128 %1208, i128* %XMM15_val, !mcsema_real_eip !108
  %1209 = load i64* %STACK_BASE, !mcsema_real_eip !108
  store i64 %1209, i64* %STACK_BASE_val, !mcsema_real_eip !108
  %1210 = load i64* %STACK_LIMIT, !mcsema_real_eip !108
  store i64 %1210, i64* %STACK_LIMIT_val, !mcsema_real_eip !108
  %1211 = load i64* %RBP_val, !mcsema_real_eip !109
  %1212 = add i64 %1211, -12, !mcsema_real_eip !109
  %1213 = inttoptr i64 %1212 to i64*, !mcsema_real_eip !109
  %1214 = bitcast i64* %1213 to i32*
  %1215 = load i32* %1214, !mcsema_real_eip !109
  %uadd378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1215, i32 1)
  %1216 = extractvalue { i32, i1 } %uadd378, 0
  %1217 = xor i32 %1216, %1215, !mcsema_real_eip !109
  %1218 = and i32 %1217, 16, !mcsema_real_eip !109
  %1219 = icmp ne i32 %1218, 0, !mcsema_real_eip !109
  store i1 %1219, i1* %AF_val, !mcsema_real_eip !109
  %1220 = icmp slt i32 %1216, 0
  store i1 %1220, i1* %SF_val, !mcsema_real_eip !109
  %1221 = icmp eq i32 %1216, 0, !mcsema_real_eip !109
  store i1 %1221, i1* %ZF_val, !mcsema_real_eip !109
  %1222 = xor i32 %1215, -2147483648, !mcsema_real_eip !109
  %1223 = and i32 %1217, %1222, !mcsema_real_eip !109
  %1224 = icmp slt i32 %1223, 0
  store i1 %1224, i1* %OF_val, !mcsema_real_eip !109
  %1225 = trunc i32 %1216 to i8, !mcsema_real_eip !109
  %1226 = tail call i8 @llvm.ctpop.i8(i8 %1225), !mcsema_real_eip !109
  %1227 = and i8 %1226, 1
  %1228 = icmp eq i8 %1227, 0
  store i1 %1228, i1* %PF_val, !mcsema_real_eip !109
  %1229 = extractvalue { i32, i1 } %uadd378, 1
  store i1 %1229, i1* %CF_val, !mcsema_real_eip !109
  store i32 %1216, i32* %1214, !mcsema_real_eip !109
  store i64 1, i64* %RDI_val, !mcsema_real_eip !110
  %1230 = tail call x86_64_sysvcc i64 @sleep(i64 1), !mcsema_real_eip !111
  store i64 %1230, i64* %RAX_val, !mcsema_real_eip !111
  %1231 = load i64* %RBP_val, !mcsema_real_eip !22
  %1232 = add i64 %1231, -12, !mcsema_real_eip !22
  %1233 = inttoptr i64 %1232 to i64*, !mcsema_real_eip !22
  %1234 = bitcast i64* %1233 to i32*
  %1235 = load i32* %1234, !mcsema_real_eip !22
  %1236 = add i32 %1235, -27
  %1237 = xor i32 %1236, %1235, !mcsema_real_eip !22
  %1238 = and i32 %1237, 16
  %1239 = icmp eq i32 %1238, 0
  store i1 %1239, i1* %AF_val, !mcsema_real_eip !22
  %1240 = trunc i32 %1236 to i8, !mcsema_real_eip !22
  %1241 = tail call i8 @llvm.ctpop.i8(i8 %1240), !mcsema_real_eip !22
  %1242 = and i8 %1241, 1
  %1243 = icmp eq i8 %1242, 0
  store i1 %1243, i1* %PF_val, !mcsema_real_eip !22
  %1244 = icmp eq i32 %1236, 0, !mcsema_real_eip !22
  store i1 %1244, i1* %ZF_val, !mcsema_real_eip !22
  %1245 = icmp slt i32 %1236, 0
  store i1 %1245, i1* %SF_val, !mcsema_real_eip !22
  %1246 = icmp ult i32 %1235, 27, !mcsema_real_eip !22
  store i1 %1246, i1* %CF_val, !mcsema_real_eip !22
  %1247 = and i32 %1237, %1235, !mcsema_real_eip !22
  %1248 = icmp slt i32 %1247, 0
  store i1 %1248, i1* %OF_val, !mcsema_real_eip !22
  %1249 = xor i1 %1245, %1248
  %1250 = load i1* %ZF_val, !mcsema_real_eip !23
  %1251 = or i1 %1250, %1249, !mcsema_real_eip !23
  br i1 %1251, label %block_0xdd.backedge, label %block_0x281.loopexit, !mcsema_real_eip !23

block_0x201:                                      ; preds = %block_0x1fb
  %1252 = load i64* %RBP_val, !mcsema_real_eip !120
  %1253 = add i64 %1252, -4, !mcsema_real_eip !120
  %1254 = inttoptr i64 %1253 to i64*, !mcsema_real_eip !120
  %1255 = bitcast i64* %1254 to i32*
  %1256 = load i32* %1255, !mcsema_real_eip !120
  %1257 = add i32 %1256, -10
  %1258 = xor i32 %1257, %1256, !mcsema_real_eip !120
  %1259 = and i32 %1258, 16, !mcsema_real_eip !120
  %1260 = icmp ne i32 %1259, 0, !mcsema_real_eip !120
  store i1 %1260, i1* %AF_val, !mcsema_real_eip !120
  %1261 = trunc i32 %1257 to i8, !mcsema_real_eip !120
  %1262 = tail call i8 @llvm.ctpop.i8(i8 %1261), !mcsema_real_eip !120
  %1263 = and i8 %1262, 1
  %1264 = icmp eq i8 %1263, 0
  store i1 %1264, i1* %PF_val, !mcsema_real_eip !120
  %1265 = icmp eq i32 %1257, 0, !mcsema_real_eip !120
  store i1 %1265, i1* %ZF_val, !mcsema_real_eip !120
  %1266 = icmp slt i32 %1257, 0
  store i1 %1266, i1* %SF_val, !mcsema_real_eip !120
  %1267 = icmp ult i32 %1256, 10, !mcsema_real_eip !120
  store i1 %1267, i1* %CF_val, !mcsema_real_eip !120
  %1268 = and i32 %1258, %1256, !mcsema_real_eip !120
  %1269 = icmp slt i32 %1268, 0
  store i1 %1269, i1* %OF_val, !mcsema_real_eip !120
  %1270 = xor i1 %1266, %1269
  %1271 = load i1* %ZF_val, !mcsema_real_eip !121
  %1272 = or i1 %1271, %1270, !mcsema_real_eip !121
  br i1 %1272, label %block_0x213, label %block_0x207, !mcsema_real_eip !121
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !122
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !122
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !122
  %XMM15_val = alloca i128, !mcsema_real_eip !122
  %XMM14_val = alloca i128, !mcsema_real_eip !122
  %XMM13_val = alloca i128, !mcsema_real_eip !122
  %XMM12_val = alloca i128, !mcsema_real_eip !122
  %XMM11_val = alloca i128, !mcsema_real_eip !122
  %XMM10_val = alloca i128, !mcsema_real_eip !122
  %XMM9_val = alloca i128, !mcsema_real_eip !122
  %XMM8_val = alloca i128, !mcsema_real_eip !122
  %XMM7_val = alloca i128, !mcsema_real_eip !122
  %XMM6_val = alloca i128, !mcsema_real_eip !122
  %XMM5_val = alloca i128, !mcsema_real_eip !122
  %XMM4_val = alloca i128, !mcsema_real_eip !122
  %XMM3_val = alloca i128, !mcsema_real_eip !122
  %XMM2_val = alloca i128, !mcsema_real_eip !122
  %XMM1_val = alloca i128, !mcsema_real_eip !122
  %XMM0_val = alloca i128, !mcsema_real_eip !122
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !122
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !122
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !122
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !122
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !122
  %FPU_IM_val = alloca i1, !mcsema_real_eip !122
  %FPU_DM_val = alloca i1, !mcsema_real_eip !122
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !122
  %FPU_OM_val = alloca i1, !mcsema_real_eip !122
  %FPU_UM_val = alloca i1, !mcsema_real_eip !122
  %FPU_PM_val = alloca i1, !mcsema_real_eip !122
  %FPU_PC_val = alloca i2, !mcsema_real_eip !122
  %FPU_RC_val = alloca i2, !mcsema_real_eip !122
  %FPU_X_val = alloca i1, !mcsema_real_eip !122
  %FPU_IE_val = alloca i1, !mcsema_real_eip !122
  %FPU_DE_val = alloca i1, !mcsema_real_eip !122
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !122
  %FPU_OE_val = alloca i1, !mcsema_real_eip !122
  %FPU_UE_val = alloca i1, !mcsema_real_eip !122
  %FPU_PE_val = alloca i1, !mcsema_real_eip !122
  %FPU_SF_val = alloca i1, !mcsema_real_eip !122
  %FPU_ES_val = alloca i1, !mcsema_real_eip !122
  %FPU_C0_val = alloca i1, !mcsema_real_eip !122
  %FPU_C1_val = alloca i1, !mcsema_real_eip !122
  %FPU_C2_val = alloca i1, !mcsema_real_eip !122
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !122
  %FPU_C3_val = alloca i1, !mcsema_real_eip !122
  %FPU_B_val = alloca i1, !mcsema_real_eip !122
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !122
  %DF_val = alloca i1, !mcsema_real_eip !122
  %OF_val = alloca i1, !mcsema_real_eip !122
  %SF_val = alloca i1, !mcsema_real_eip !122
  %CF_val = alloca i1, !mcsema_real_eip !122
  %AF_val = alloca i1, !mcsema_real_eip !122
  %PF_val = alloca i1, !mcsema_real_eip !122
  %ZF_val = alloca i1, !mcsema_real_eip !122
  %RIP_val = alloca i64, !mcsema_real_eip !122
  %R14_val = alloca i64, !mcsema_real_eip !122
  %R13_val = alloca i64, !mcsema_real_eip !122
  %R12_val = alloca i64, !mcsema_real_eip !122
  %R11_val = alloca i64, !mcsema_real_eip !122
  %R10_val = alloca i64, !mcsema_real_eip !122
  %R9_val = alloca i64, !mcsema_real_eip !122
  %R8_val = alloca i64, !mcsema_real_eip !122
  %RSP_val = alloca i64, !mcsema_real_eip !122
  %RBP_val = alloca i64, !mcsema_real_eip !122
  %RDI_val = alloca i64, !mcsema_real_eip !122
  %RSI_val = alloca i64, !mcsema_real_eip !122
  %RDX_val = alloca i64, !mcsema_real_eip !122
  %RCX_val = alloca i64, !mcsema_real_eip !122
  %RBX_val = alloca i64, !mcsema_real_eip !122
  %RAX_val = alloca i64, !mcsema_real_eip !122
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !122
  %1 = load i64* %RAX, !mcsema_real_eip !122
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !122
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !122
  %2 = load i64* %RBX, !mcsema_real_eip !122
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !122
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !122
  %3 = load i64* %RCX, !mcsema_real_eip !122
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !122
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !122
  %4 = load i64* %RDX, !mcsema_real_eip !122
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !122
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !122
  %5 = load i64* %RSI, !mcsema_real_eip !122
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !122
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !122
  %6 = load i64* %RDI, !mcsema_real_eip !122
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !122
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !122
  %7 = load i64* %RSP, !mcsema_real_eip !122
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !122
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !122
  %8 = load i64* %RBP, !mcsema_real_eip !122
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !122
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !122
  %9 = load i64* %R8, !mcsema_real_eip !122
  store i64 %9, i64* %R8_val, !mcsema_real_eip !122
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !122
  %10 = load i64* %R9, !mcsema_real_eip !122
  store i64 %10, i64* %R9_val, !mcsema_real_eip !122
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !122
  %11 = load i64* %R10, !mcsema_real_eip !122
  store i64 %11, i64* %R10_val, !mcsema_real_eip !122
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !122
  %12 = load i64* %R11, !mcsema_real_eip !122
  store i64 %12, i64* %R11_val, !mcsema_real_eip !122
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !122
  %13 = load i64* %R12, !mcsema_real_eip !122
  store i64 %13, i64* %R12_val, !mcsema_real_eip !122
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !122
  %14 = load i64* %R13, !mcsema_real_eip !122
  store i64 %14, i64* %R13_val, !mcsema_real_eip !122
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !122
  %15 = load i64* %R14, !mcsema_real_eip !122
  store i64 %15, i64* %R14_val, !mcsema_real_eip !122
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !122
  %16 = load i64* %R15, !mcsema_real_eip !122
  store i64 %16, i64* %R15_val, !mcsema_real_eip !122
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !122
  %17 = load i64* %RIP, !mcsema_real_eip !122
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !122
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !122
  %18 = load i1* %CF, align 1, !mcsema_real_eip !122
  store i1 %18, i1* %CF_val, !mcsema_real_eip !122
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !122
  %19 = load i1* %PF, align 1, !mcsema_real_eip !122
  store i1 %19, i1* %PF_val, !mcsema_real_eip !122
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !122
  %20 = load i1* %AF, align 1, !mcsema_real_eip !122
  store i1 %20, i1* %AF_val, !mcsema_real_eip !122
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !122
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !122
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !122
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !122
  %22 = load i1* %SF, align 1, !mcsema_real_eip !122
  store i1 %22, i1* %SF_val, !mcsema_real_eip !122
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !122
  %23 = load i1* %OF, align 1, !mcsema_real_eip !122
  store i1 %23, i1* %OF_val, !mcsema_real_eip !122
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !122
  %24 = load i1* %DF, align 1, !mcsema_real_eip !122
  store i1 %24, i1* %DF_val, !mcsema_real_eip !122
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !122
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !122
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !122
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !122
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !122
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !122
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !122
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !122
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !122
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !122
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !122
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !122
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !122
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !122
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !122
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !122
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !122
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !122
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !122
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !122
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !122
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !122
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !122
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !122
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !122
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !122
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !122
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !122
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !122
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !122
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !122
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !122
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !122
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !122
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !122
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !122
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !122
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !122
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !122
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !122
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !122
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !122
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !122
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !122
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !122
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !122
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !122
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !122
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !122
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !122
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !122
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !122
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !122
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !122
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !122
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !122
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !122
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !122
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !122
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !122
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !122
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !122
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !122
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !122
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !122
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !122
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !122
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !122
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !122
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !122
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !122
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !122
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !122
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !122
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !122
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !122
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !122
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !122
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !122
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !122
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !122
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !122
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !122
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !122
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !122
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !122
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !122
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !122
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !122
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !122
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !122
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !122
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !122
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !122
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !122
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !122
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !122
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !122
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !122
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !122
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !122
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !122
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !122
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !122
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !122
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !122
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !122
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !122
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !122
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !122
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !122
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !122
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !122
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !122
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !122
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !122
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !122
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !122
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !122
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !122
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !122
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !122
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !122
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !122
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !122
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !122
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !122
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !122
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !122
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !122
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !122
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !122
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !122
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !122
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !122
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !122
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !122
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !122
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !122
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !122
  %77 = load i64* %RBP_val, !mcsema_real_eip !122
  %78 = load i64* %RSP_val, !mcsema_real_eip !122
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !122
  store i64 %77, i64* %80, !mcsema_real_eip !122
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !123
  %81 = add i64 %78, -24
  %82 = xor i64 %81, %79, !mcsema_real_eip !124
  %83 = and i64 %82, 16
  %84 = icmp eq i64 %83, 0
  store i1 %84, i1* %AF_val, !mcsema_real_eip !124
  %85 = trunc i64 %81 to i8, !mcsema_real_eip !124
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !124
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !124
  %89 = icmp eq i64 %81, 0, !mcsema_real_eip !124
  store i1 %89, i1* %ZF_val, !mcsema_real_eip !124
  %90 = icmp slt i64 %81, 0
  store i1 %90, i1* %SF_val, !mcsema_real_eip !124
  %91 = icmp ult i64 %79, 16, !mcsema_real_eip !124
  store i1 %91, i1* %CF_val, !mcsema_real_eip !124
  %92 = and i64 %82, %79, !mcsema_real_eip !124
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !124
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !124
  %94 = load i64* %RBP_val, !mcsema_real_eip !125
  %95 = add i64 %94, -4, !mcsema_real_eip !125
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !125
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !125
  %98 = load i64* %RBP_val, !mcsema_real_eip !126
  %99 = add i64 %98, -4, !mcsema_real_eip !126
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !126
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !126
  %103 = add i32 %102, -6
  %104 = xor i32 %103, %102, !mcsema_real_eip !126
  %105 = and i32 %104, 16, !mcsema_real_eip !126
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !126
  store i1 %106, i1* %AF_val, !mcsema_real_eip !126
  %107 = trunc i32 %103 to i8, !mcsema_real_eip !126
  %108 = tail call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !126
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF_val, !mcsema_real_eip !126
  %111 = icmp eq i32 %103, 0, !mcsema_real_eip !126
  store i1 %111, i1* %ZF_val, !mcsema_real_eip !126
  %112 = icmp slt i32 %103, 0
  store i1 %112, i1* %SF_val, !mcsema_real_eip !126
  %113 = icmp ult i32 %102, 6, !mcsema_real_eip !126
  store i1 %113, i1* %CF_val, !mcsema_real_eip !126
  %114 = and i32 %104, %102, !mcsema_real_eip !126
  %115 = icmp slt i32 %114, 0
  store i1 %115, i1* %OF_val, !mcsema_real_eip !126
  %116 = xor i1 %112, %115
  %117 = load i1* %ZF_val, !mcsema_real_eip !127
  %118 = or i1 %117, %116, !mcsema_real_eip !127
  br i1 %118, label %block_0x11.preheader, label %block_0x6a, !mcsema_real_eip !127

block_0x11.preheader:                             ; preds = %entry
  br label %block_0x11

block_0x11:                                       ; preds = %block_0x56, %block_0x11.preheader
  %119 = load i64* %RBP_val, !mcsema_real_eip !128
  %120 = add i64 %119, -8, !mcsema_real_eip !128
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !128
  %122 = bitcast i64* %121 to i32*
  store i32 0, i32* %122, !mcsema_real_eip !128
  %123 = load i64* %RBP_val, !mcsema_real_eip !129
  %124 = add i64 %123, -8, !mcsema_real_eip !129
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !129
  %126 = bitcast i64* %125 to i32*
  %127 = load i32* %126, !mcsema_real_eip !129
  %128 = add i32 %127, -10
  %129 = xor i32 %128, %127, !mcsema_real_eip !129
  %130 = and i32 %129, 16, !mcsema_real_eip !129
  %131 = icmp ne i32 %130, 0, !mcsema_real_eip !129
  store i1 %131, i1* %AF_val, !mcsema_real_eip !129
  %132 = trunc i32 %128 to i8, !mcsema_real_eip !129
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !129
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF_val, !mcsema_real_eip !129
  %136 = icmp eq i32 %128, 0, !mcsema_real_eip !129
  store i1 %136, i1* %ZF_val, !mcsema_real_eip !129
  %137 = icmp slt i32 %128, 0
  store i1 %137, i1* %SF_val, !mcsema_real_eip !129
  %138 = icmp ult i32 %127, 10, !mcsema_real_eip !129
  store i1 %138, i1* %CF_val, !mcsema_real_eip !129
  %139 = and i32 %129, %127, !mcsema_real_eip !129
  %140 = icmp slt i32 %139, 0
  store i1 %140, i1* %OF_val, !mcsema_real_eip !129
  %141 = xor i1 %137, %140
  %142 = load i1* %ZF_val, !mcsema_real_eip !130
  %143 = or i1 %142, %141, !mcsema_real_eip !130
  br i1 %143, label %block_0x1a.preheader, label %block_0x56, !mcsema_real_eip !130

block_0x1a.preheader:                             ; preds = %block_0x11
  br label %block_0x1a

block_0x6a.loopexit:                              ; preds = %block_0x56
  br label %block_0x6a

block_0x6a:                                       ; preds = %block_0x6a.loopexit, %entry
  store i64 10, i64* %RDI_val, !mcsema_real_eip !131
  %144 = tail call x86_64_sysvcc i64 @putchar(i64 10), !mcsema_real_eip !132
  store i64 %144, i64* %RAX_val, !mcsema_real_eip !132
  %145 = load i64* %RBP_val, !mcsema_real_eip !133
  store i64 %145, i64* %RSP_val, !mcsema_real_eip !133
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !133
  %147 = load i64* %146, !mcsema_real_eip !133
  store i64 %147, i64* %RBP_val, !mcsema_real_eip !133
  %148 = add i64 %145, 16, !mcsema_real_eip !134
  store i64 %148, i64* %RSP_val, !mcsema_real_eip !134
  %149 = load i64* %RAX_val, !mcsema_real_eip !134
  store i64 %149, i64* %RAX, !mcsema_real_eip !134
  %150 = load i64* %RBX_val, !mcsema_real_eip !134
  store i64 %150, i64* %RBX, !mcsema_real_eip !134
  %151 = load i64* %RCX_val, !mcsema_real_eip !134
  store i64 %151, i64* %RCX, !mcsema_real_eip !134
  %152 = load i64* %RDX_val, !mcsema_real_eip !134
  store i64 %152, i64* %RDX, !mcsema_real_eip !134
  %153 = load i64* %RSI_val, !mcsema_real_eip !134
  store i64 %153, i64* %RSI, !mcsema_real_eip !134
  %154 = load i64* %RDI_val, !mcsema_real_eip !134
  store i64 %154, i64* %RDI, !mcsema_real_eip !134
  %155 = load i64* %RSP_val, !mcsema_real_eip !134
  store i64 %155, i64* %RSP, !mcsema_real_eip !134
  %156 = load i64* %RBP_val, !mcsema_real_eip !134
  store i64 %156, i64* %RBP, !mcsema_real_eip !134
  %157 = load i64* %R8_val, !mcsema_real_eip !134
  store i64 %157, i64* %R8, !mcsema_real_eip !134
  %158 = load i64* %R9_val, !mcsema_real_eip !134
  store i64 %158, i64* %R9, !mcsema_real_eip !134
  %159 = load i64* %R10_val, !mcsema_real_eip !134
  store i64 %159, i64* %R10, !mcsema_real_eip !134
  %160 = load i64* %R11_val, !mcsema_real_eip !134
  store i64 %160, i64* %R11, !mcsema_real_eip !134
  %161 = load i64* %R12_val, !mcsema_real_eip !134
  store i64 %161, i64* %R12, !mcsema_real_eip !134
  %162 = load i64* %R13_val, !mcsema_real_eip !134
  store i64 %162, i64* %R13, !mcsema_real_eip !134
  %163 = load i64* %R14_val, !mcsema_real_eip !134
  store i64 %163, i64* %R14, !mcsema_real_eip !134
  %164 = load i64* %R15_val, !mcsema_real_eip !134
  store i64 %164, i64* %R15, !mcsema_real_eip !134
  %165 = load i64* %RIP_val, !mcsema_real_eip !134
  store i64 %165, i64* %RIP, !mcsema_real_eip !134
  %166 = load i1* %CF_val, !mcsema_real_eip !134
  store i1 %166, i1* %CF, align 1, !mcsema_real_eip !134
  %167 = load i1* %PF_val, !mcsema_real_eip !134
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !134
  %168 = load i1* %AF_val, !mcsema_real_eip !134
  store i1 %168, i1* %AF, align 1, !mcsema_real_eip !134
  %169 = load i1* %ZF_val, !mcsema_real_eip !134
  store i1 %169, i1* %ZF, align 1, !mcsema_real_eip !134
  %170 = load i1* %SF_val, !mcsema_real_eip !134
  store i1 %170, i1* %SF, align 1, !mcsema_real_eip !134
  %171 = load i1* %OF_val, !mcsema_real_eip !134
  store i1 %171, i1* %OF, align 1, !mcsema_real_eip !134
  %172 = load i1* %DF_val, !mcsema_real_eip !134
  store i1 %172, i1* %DF, align 1, !mcsema_real_eip !134
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !134
  %173 = load i1* %FPU_B_val, !mcsema_real_eip !134
  store i1 %173, i1* %FPU_B, align 1, !mcsema_real_eip !134
  %174 = load i1* %FPU_C3_val, !mcsema_real_eip !134
  store i1 %174, i1* %FPU_C3, align 1, !mcsema_real_eip !134
  %175 = load i3* %FPU_TOP_val, !mcsema_real_eip !134
  store i3 %175, i3* %FPU_TOP, align 1, !mcsema_real_eip !134
  %176 = load i1* %FPU_C2_val, !mcsema_real_eip !134
  store i1 %176, i1* %FPU_C2, align 1, !mcsema_real_eip !134
  %177 = load i1* %FPU_C1_val, !mcsema_real_eip !134
  store i1 %177, i1* %FPU_C1, align 1, !mcsema_real_eip !134
  %178 = load i1* %FPU_C0_val, !mcsema_real_eip !134
  store i1 %178, i1* %FPU_C0, align 1, !mcsema_real_eip !134
  %179 = load i1* %FPU_ES_val, !mcsema_real_eip !134
  store i1 %179, i1* %FPU_ES, align 1, !mcsema_real_eip !134
  %180 = load i1* %FPU_SF_val, !mcsema_real_eip !134
  store i1 %180, i1* %FPU_SF, align 1, !mcsema_real_eip !134
  %181 = load i1* %FPU_PE_val, !mcsema_real_eip !134
  store i1 %181, i1* %FPU_PE, align 1, !mcsema_real_eip !134
  %182 = load i1* %FPU_UE_val, !mcsema_real_eip !134
  store i1 %182, i1* %FPU_UE, align 1, !mcsema_real_eip !134
  %183 = load i1* %FPU_OE_val, !mcsema_real_eip !134
  store i1 %183, i1* %FPU_OE, align 1, !mcsema_real_eip !134
  %184 = load i1* %FPU_ZE_val, !mcsema_real_eip !134
  store i1 %184, i1* %FPU_ZE, align 1, !mcsema_real_eip !134
  %185 = load i1* %FPU_DE_val, !mcsema_real_eip !134
  store i1 %185, i1* %FPU_DE, align 1, !mcsema_real_eip !134
  %186 = load i1* %FPU_IE_val, !mcsema_real_eip !134
  store i1 %186, i1* %FPU_IE, align 1, !mcsema_real_eip !134
  %187 = load i1* %FPU_X_val, !mcsema_real_eip !134
  store i1 %187, i1* %FPU_X, align 1, !mcsema_real_eip !134
  %188 = load i2* %FPU_RC_val, !mcsema_real_eip !134
  store i2 %188, i2* %FPU_RC, align 1, !mcsema_real_eip !134
  %189 = load i2* %FPU_PC_val, !mcsema_real_eip !134
  store i2 %189, i2* %FPU_PC, align 1, !mcsema_real_eip !134
  %190 = load i1* %FPU_PM_val, !mcsema_real_eip !134
  store i1 %190, i1* %FPU_PM, align 1, !mcsema_real_eip !134
  %191 = load i1* %FPU_UM_val, !mcsema_real_eip !134
  store i1 %191, i1* %FPU_UM, align 1, !mcsema_real_eip !134
  %192 = load i1* %FPU_OM_val, !mcsema_real_eip !134
  store i1 %192, i1* %FPU_OM, align 1, !mcsema_real_eip !134
  %193 = load i1* %FPU_ZM_val, !mcsema_real_eip !134
  store i1 %193, i1* %FPU_ZM, align 1, !mcsema_real_eip !134
  %194 = load i1* %FPU_DM_val, !mcsema_real_eip !134
  store i1 %194, i1* %FPU_DM, align 1, !mcsema_real_eip !134
  %195 = load i1* %FPU_IM_val, !mcsema_real_eip !134
  store i1 %195, i1* %FPU_IM, align 1, !mcsema_real_eip !134
  %196 = load i64* %53, align 4
  store i64 %196, i64* %52, align 4
  %197 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !134
  store i16 %197, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !134
  %198 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !134
  store i64 %198, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !134
  %199 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !134
  store i16 %199, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !134
  %200 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !134
  store i64 %200, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !134
  %201 = load i128* %XMM0_val, !mcsema_real_eip !134
  store i128 %201, i128* %XMM0, align 1, !mcsema_real_eip !134
  %202 = load i128* %XMM1_val, !mcsema_real_eip !134
  store i128 %202, i128* %XMM1, align 1, !mcsema_real_eip !134
  %203 = load i128* %XMM2_val, !mcsema_real_eip !134
  store i128 %203, i128* %XMM2, align 1, !mcsema_real_eip !134
  %204 = load i128* %XMM3_val, !mcsema_real_eip !134
  store i128 %204, i128* %XMM3, align 1, !mcsema_real_eip !134
  %205 = load i128* %XMM4_val, !mcsema_real_eip !134
  store i128 %205, i128* %XMM4, align 1, !mcsema_real_eip !134
  %206 = load i128* %XMM5_val, !mcsema_real_eip !134
  store i128 %206, i128* %XMM5, align 1, !mcsema_real_eip !134
  %207 = load i128* %XMM6_val, !mcsema_real_eip !134
  store i128 %207, i128* %XMM6, align 1, !mcsema_real_eip !134
  %208 = load i128* %XMM7_val, !mcsema_real_eip !134
  store i128 %208, i128* %XMM7, align 1, !mcsema_real_eip !134
  %209 = load i128* %XMM8_val, !mcsema_real_eip !134
  store i128 %209, i128* %XMM8, align 1, !mcsema_real_eip !134
  %210 = load i128* %XMM9_val, !mcsema_real_eip !134
  store i128 %210, i128* %XMM9, align 1, !mcsema_real_eip !134
  %211 = load i128* %XMM10_val, !mcsema_real_eip !134
  store i128 %211, i128* %XMM10, align 1, !mcsema_real_eip !134
  %212 = load i128* %XMM11_val, !mcsema_real_eip !134
  store i128 %212, i128* %XMM11, align 1, !mcsema_real_eip !134
  %213 = load i128* %XMM12_val, !mcsema_real_eip !134
  store i128 %213, i128* %XMM12, align 1, !mcsema_real_eip !134
  %214 = load i128* %XMM13_val, !mcsema_real_eip !134
  store i128 %214, i128* %XMM13, align 1, !mcsema_real_eip !134
  %215 = load i128* %XMM14_val, !mcsema_real_eip !134
  store i128 %215, i128* %XMM14, align 1, !mcsema_real_eip !134
  %216 = load i128* %XMM15_val, !mcsema_real_eip !134
  store i128 %216, i128* %XMM15, align 1, !mcsema_real_eip !134
  %217 = load i64* %STACK_BASE_val, !mcsema_real_eip !134
  store i64 %217, i64* %STACK_BASE, align 1, !mcsema_real_eip !134
  %218 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !134
  store i64 %218, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !134
  ret void, !mcsema_real_eip !134

block_0x1a:                                       ; preds = %block_0x1a, %block_0x1a.preheader
  %219 = load i64* %RBP_val, !mcsema_real_eip !135
  %220 = add i64 %219, -8, !mcsema_real_eip !135
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !135
  %222 = bitcast i64* %221 to i32*
  %223 = load i32* %222, !mcsema_real_eip !135
  %224 = zext i32 %223 to i64, !mcsema_real_eip !135
  store i64 %224, i64* %RAX_val, !mcsema_real_eip !135
  %225 = sext i32 %223 to i64, !mcsema_real_eip !136
  store i64 %225, i64* %RCX_val, !mcsema_real_eip !136
  %226 = load i64* %RBP_val, !mcsema_real_eip !137
  %227 = add i64 %226, -4, !mcsema_real_eip !137
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !137
  %229 = bitcast i64* %228 to i32*
  %230 = load i32* %229, !mcsema_real_eip !137
  %231 = sext i32 %230 to i64, !mcsema_real_eip !138
  store i64 %231, i64* %RDX_val, !mcsema_real_eip !138
  %232 = mul i64 %231, 11
  %233 = load i64* %RCX_val, !mcsema_real_eip !139
  %234 = add i64 %233, %232
  %uadd76 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %234, i64 ptrtoint (%0* @data_0x28d to i64))
  %235 = extractvalue { i64, i1 } %uadd76, 0
  %236 = xor i64 %235, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !140
  %237 = xor i64 %236, %234, !mcsema_real_eip !140
  %238 = and i64 %237, 16, !mcsema_real_eip !140
  %239 = icmp ne i64 %238, 0, !mcsema_real_eip !140
  store i1 %239, i1* %AF_val, !mcsema_real_eip !140
  %240 = icmp slt i64 %235, 0
  store i1 %240, i1* %SF_val, !mcsema_real_eip !140
  %241 = icmp eq i64 %235, 0, !mcsema_real_eip !140
  store i1 %241, i1* %ZF_val, !mcsema_real_eip !140
  %242 = xor i64 %234, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !140
  %243 = and i64 %236, %242, !mcsema_real_eip !140
  %244 = icmp slt i64 %243, 0
  store i1 %244, i1* %OF_val, !mcsema_real_eip !140
  %245 = trunc i64 %235 to i8, !mcsema_real_eip !140
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !140
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF_val, !mcsema_real_eip !140
  %249 = extractvalue { i64, i1 } %uadd76, 1
  store i1 %249, i1* %CF_val, !mcsema_real_eip !140
  store i64 %235, i64* %RAX_val, !mcsema_real_eip !140
  %250 = inttoptr i64 %235 to i64*, !mcsema_real_eip !141
  %251 = bitcast i64* %250 to i8*
  %252 = load i8* %251, !mcsema_real_eip !141
  %253 = sext i8 %252 to i32, !mcsema_real_eip !142
  %254 = zext i32 %253 to i64, !mcsema_real_eip !142
  store i64 %254, i64* %RDI_val, !mcsema_real_eip !143
  %255 = tail call x86_64_sysvcc i64 @putchar(i64 %254), !mcsema_real_eip !144
  store i64 %255, i64* %RAX_val, !mcsema_real_eip !144
  %256 = load i64* %RBP_val, !mcsema_real_eip !145
  %257 = add i64 %256, -8, !mcsema_real_eip !145
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !145
  %259 = bitcast i64* %258 to i32*
  %260 = load i32* %259, !mcsema_real_eip !145
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 1)
  %261 = extractvalue { i32, i1 } %uadd77, 0
  %262 = xor i32 %261, %260, !mcsema_real_eip !145
  %263 = and i32 %262, 16, !mcsema_real_eip !145
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !145
  store i1 %264, i1* %AF_val, !mcsema_real_eip !145
  %265 = icmp slt i32 %261, 0
  store i1 %265, i1* %SF_val, !mcsema_real_eip !145
  %266 = icmp eq i32 %261, 0, !mcsema_real_eip !145
  store i1 %266, i1* %ZF_val, !mcsema_real_eip !145
  %267 = xor i32 %260, -2147483648, !mcsema_real_eip !145
  %268 = and i32 %262, %267, !mcsema_real_eip !145
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF_val, !mcsema_real_eip !145
  %270 = trunc i32 %261 to i8, !mcsema_real_eip !145
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !145
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF_val, !mcsema_real_eip !145
  %274 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %274, i1* %CF_val, !mcsema_real_eip !145
  store i32 %261, i32* %259, !mcsema_real_eip !145
  %275 = load i64* %RBP_val, !mcsema_real_eip !129
  %276 = add i64 %275, -8, !mcsema_real_eip !129
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !129
  %278 = bitcast i64* %277 to i32*
  %279 = load i32* %278, !mcsema_real_eip !129
  %280 = add i32 %279, -10
  %281 = xor i32 %280, %279, !mcsema_real_eip !129
  %282 = and i32 %281, 16, !mcsema_real_eip !129
  %283 = icmp ne i32 %282, 0, !mcsema_real_eip !129
  store i1 %283, i1* %AF_val, !mcsema_real_eip !129
  %284 = trunc i32 %280 to i8, !mcsema_real_eip !129
  %285 = tail call i8 @llvm.ctpop.i8(i8 %284), !mcsema_real_eip !129
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  store i1 %287, i1* %PF_val, !mcsema_real_eip !129
  %288 = icmp eq i32 %280, 0, !mcsema_real_eip !129
  store i1 %288, i1* %ZF_val, !mcsema_real_eip !129
  %289 = icmp slt i32 %280, 0
  store i1 %289, i1* %SF_val, !mcsema_real_eip !129
  %290 = icmp ult i32 %279, 10, !mcsema_real_eip !129
  store i1 %290, i1* %CF_val, !mcsema_real_eip !129
  %291 = and i32 %281, %279, !mcsema_real_eip !129
  %292 = icmp slt i32 %291, 0
  store i1 %292, i1* %OF_val, !mcsema_real_eip !129
  %293 = xor i1 %289, %292
  %294 = load i1* %ZF_val, !mcsema_real_eip !130
  %295 = or i1 %294, %293, !mcsema_real_eip !130
  br i1 %295, label %block_0x1a, label %block_0x56.loopexit, !mcsema_real_eip !130

block_0x56.loopexit:                              ; preds = %block_0x1a
  br label %block_0x56

block_0x56:                                       ; preds = %block_0x56.loopexit, %block_0x11
  store i64 10, i64* %RDI_val, !mcsema_real_eip !146
  %296 = tail call x86_64_sysvcc i64 @putchar(i64 10), !mcsema_real_eip !147
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !147
  %297 = load i64* %RBP_val, !mcsema_real_eip !148
  %298 = add i64 %297, -4, !mcsema_real_eip !148
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !148
  %300 = bitcast i64* %299 to i32*
  %301 = load i32* %300, !mcsema_real_eip !148
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %301, i32 1)
  %302 = extractvalue { i32, i1 } %uadd, 0
  %303 = xor i32 %302, %301, !mcsema_real_eip !148
  %304 = and i32 %303, 16, !mcsema_real_eip !148
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !148
  store i1 %305, i1* %AF_val, !mcsema_real_eip !148
  %306 = icmp slt i32 %302, 0
  store i1 %306, i1* %SF_val, !mcsema_real_eip !148
  %307 = icmp eq i32 %302, 0, !mcsema_real_eip !148
  store i1 %307, i1* %ZF_val, !mcsema_real_eip !148
  %308 = xor i32 %301, -2147483648, !mcsema_real_eip !148
  %309 = and i32 %303, %308, !mcsema_real_eip !148
  %310 = icmp slt i32 %309, 0
  store i1 %310, i1* %OF_val, !mcsema_real_eip !148
  %311 = trunc i32 %302 to i8, !mcsema_real_eip !148
  %312 = tail call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !148
  %313 = and i8 %312, 1
  %314 = icmp eq i8 %313, 0
  store i1 %314, i1* %PF_val, !mcsema_real_eip !148
  %315 = extractvalue { i32, i1 } %uadd, 1
  store i1 %315, i1* %CF_val, !mcsema_real_eip !148
  store i32 %302, i32* %300, !mcsema_real_eip !148
  %316 = load i64* %RBP_val, !mcsema_real_eip !126
  %317 = add i64 %316, -4, !mcsema_real_eip !126
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !126
  %319 = bitcast i64* %318 to i32*
  %320 = load i32* %319, !mcsema_real_eip !126
  %321 = add i32 %320, -6
  %322 = xor i32 %321, %320, !mcsema_real_eip !126
  %323 = and i32 %322, 16, !mcsema_real_eip !126
  %324 = icmp ne i32 %323, 0, !mcsema_real_eip !126
  store i1 %324, i1* %AF_val, !mcsema_real_eip !126
  %325 = trunc i32 %321 to i8, !mcsema_real_eip !126
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !126
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF_val, !mcsema_real_eip !126
  %329 = icmp eq i32 %321, 0, !mcsema_real_eip !126
  store i1 %329, i1* %ZF_val, !mcsema_real_eip !126
  %330 = icmp slt i32 %321, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !126
  %331 = icmp ult i32 %320, 6, !mcsema_real_eip !126
  store i1 %331, i1* %CF_val, !mcsema_real_eip !126
  %332 = and i32 %322, %320, !mcsema_real_eip !126
  %333 = icmp slt i32 %332, 0
  store i1 %333, i1* %OF_val, !mcsema_real_eip !126
  %334 = xor i1 %330, %333
  %335 = load i1* %ZF_val, !mcsema_real_eip !127
  %336 = or i1 %335, %334, !mcsema_real_eip !127
  br i1 %336, label %block_0x11, label %block_0x6a.loopexit, !mcsema_real_eip !127
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @puts(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @sleep(i64 inreg)

; Function Attrs: nounwind
declare x86_64_sysvcc i64 @putchar(i64 inreg) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_76(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 118, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 119, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 122, [16 x i8] c"\09subq\09$64, %rsp\00"}
!5 = metadata !{i64 126, [22 x i8] c"\09movl\09%edi, -52(%rbp)\00"}
!6 = metadata !{i64 129, [22 x i8] c"\09movq\09%rsi, -64(%rbp)\00"}
!7 = metadata !{i64 133, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!8 = metadata !{i64 140, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!9 = metadata !{i64 147, [19 x i8] c"\09movl\09$1, -8(%rbp)\00"}
!10 = metadata !{i64 154, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!11 = metadata !{i64 157, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!12 = metadata !{i64 160, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!13 = metadata !{i64 163, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!14 = metadata !{i64 182, [17 x i8] c"\09addq\09%rcx, %rax\00"}
!15 = metadata !{i64 185, [15 x i8] c"\09addq\09$0, %rax\00"}
!16 = metadata !{i64 191, [18 x i8] c"\09movb\09$88, (%rax)\00"}
!17 = metadata !{i64 194, [22 x i8] c"\09leaq\09-48(%rbp), %rax\00"}
!18 = metadata !{i64 198, [16 x i8] c"\09movl\09$28, %edx\00"}
!19 = metadata !{i64 203, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!20 = metadata !{i64 206, [15 x i8] c"\09movl\09$0, %edi\00"}
!21 = metadata !{i64 211, [9 x i8] c"\09callq\090\00"}
!22 = metadata !{i64 631, [21 x i8] c"\09cmpl\09$27, -12(%rbp)\00"}
!23 = metadata !{i64 635, [10 x i8] c"\09jle\09-420\00"}
!24 = metadata !{i64 221, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!25 = metadata !{i64 224, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!26 = metadata !{i64 227, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!27 = metadata !{i64 230, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!28 = metadata !{i64 233, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!29 = metadata !{i64 236, [6 x i8] c"\09cltq\00"}
!30 = metadata !{i64 238, [29 x i8] c"\09movzbl\09-48(%rbp,%rax), %eax\00"}
!31 = metadata !{i64 243, [18 x i8] c"\09movsbl\09%al, %eax\00"}
!32 = metadata !{i64 246, [17 x i8] c"\09cmpl\09$100, %eax\00"}
!33 = metadata !{i64 249, [7 x i8] c"\09je\0940\00"}
!34 = metadata !{i64 641, [15 x i8] c"\09movl\09$0, %edi\00"}
!35 = metadata !{i64 646, [9 x i8] c"\09callq\090\00"}
!36 = metadata !{i64 651, [7 x i8] c"\09leave\00"}
!37 = metadata !{i64 652, [6 x i8] c"\09retq\00"}
!38 = metadata !{i64 291, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
!39 = metadata !{i64 295, [8 x i8] c"\09jmp\0930\00"}
!40 = metadata !{i64 251, [17 x i8] c"\09cmpl\09$100, %eax\00"}
!41 = metadata !{i64 254, [6 x i8] c"\09jg\097\00"}
!42 = metadata !{i64 263, [17 x i8] c"\09cmpl\09$115, %eax\00"}
!43 = metadata !{i64 266, [7 x i8] c"\09je\0911\00"}
!44 = metadata !{i64 256, [16 x i8] c"\09cmpl\09$97, %eax\00"}
!45 = metadata !{i64 259, [7 x i8] c"\09je\0924\00"}
!46 = metadata !{i64 327, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!47 = metadata !{i64 330, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!48 = metadata !{i64 333, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!49 = metadata !{i64 336, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!50 = metadata !{i64 355, [17 x i8] c"\09addq\09%rcx, %rax\00"}
!51 = metadata !{i64 358, [15 x i8] c"\09addq\09$0, %rax\00"}
!52 = metadata !{i64 364, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!53 = metadata !{i64 367, [15 x i8] c"\09cmpb\09$35, %al\00"}
!54 = metadata !{i64 369, [8 x i8] c"\09jne\0942\00"}
!55 = metadata !{i64 285, [19 x i8] c"\09subl\09$1, -4(%rbp)\00"}
!56 = metadata !{i64 289, [8 x i8] c"\09jmp\0936\00"}
!57 = metadata !{i64 279, [19 x i8] c"\09addl\09$1, -8(%rbp)\00"}
!58 = metadata !{i64 283, [8 x i8] c"\09jmp\0942\00"}
!59 = metadata !{i64 268, [17 x i8] c"\09cmpl\09$119, %eax\00"}
!60 = metadata !{i64 271, [8 x i8] c"\09jne\0924\00"}
!61 = metadata !{i64 413, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!62 = metadata !{i64 416, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!63 = metadata !{i64 419, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!64 = metadata !{i64 422, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!65 = metadata !{i64 441, [17 x i8] c"\09addq\09%rcx, %rax\00"}
!66 = metadata !{i64 444, [15 x i8] c"\09addq\09$0, %rax\00"}
!67 = metadata !{i64 450, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!68 = metadata !{i64 453, [15 x i8] c"\09cmpb\09$32, %al\00"}
!69 = metadata !{i64 455, [7 x i8] c"\09je\0974\00"}
!70 = metadata !{i64 376, [9 x i8] c"\09callq\090\00"}
!71 = metadata !{i64 381, [22 x i8] c"\09leaq\09-48(%rbp), %rax\00"}
!72 = metadata !{i64 385, [17 x i8] c"\09movq\09%rax, %rsi\00"}
!73 = metadata !{i64 398, [9 x i8] c"\09callq\090\00"}
!74 = metadata !{i64 403, [15 x i8] c"\09movl\09$1, %edi\00"}
!75 = metadata !{i64 408, [9 x i8] c"\09callq\090\00"}
!76 = metadata !{i64 302, [9 x i8] c"\09callq\090\00"}
!77 = metadata !{i64 312, [9 x i8] c"\09callq\090\00"}
!78 = metadata !{i64 317, [24 x i8] c"\09movl\09$4294967295, %edi\00"}
!79 = metadata !{i64 322, [9 x i8] c"\09callq\090\00"}
!80 = metadata !{i64 273, [19 x i8] c"\09subl\09$1, -8(%rbp)\00"}
!81 = metadata !{i64 277, [8 x i8] c"\09jmp\0948\00"}
!82 = metadata !{i64 531, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!83 = metadata !{i64 534, [21 x i8] c"\09cmpl\09-4(%rbp), %eax\00"}
!84 = metadata !{i64 537, [8 x i8] c"\09jne\0928\00"}
!85 = metadata !{i64 457, [19 x i8] c"\09cmpl\09$2, -8(%rbp)\00"}
!86 = metadata !{i64 461, [8 x i8] c"\09jne\0956\00"}
!87 = metadata !{i64 519, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!88 = metadata !{i64 522, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!89 = metadata !{i64 525, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!90 = metadata !{i64 528, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!91 = metadata !{i64 463, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!92 = metadata !{i64 466, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!93 = metadata !{i64 469, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!94 = metadata !{i64 472, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!95 = metadata !{i64 491, [17 x i8] c"\09addq\09%rcx, %rax\00"}
!96 = metadata !{i64 494, [15 x i8] c"\09addq\09$0, %rax\00"}
!97 = metadata !{i64 500, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!98 = metadata !{i64 503, [16 x i8] c"\09cmpb\09$124, %al\00"}
!99 = metadata !{i64 505, [8 x i8] c"\09jne\0912\00"}
!100 = metadata !{i64 567, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!101 = metadata !{i64 570, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!102 = metadata !{i64 573, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!103 = metadata !{i64 576, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!104 = metadata !{i64 595, [17 x i8] c"\09addq\09%rcx, %rax\00"}
!105 = metadata !{i64 598, [15 x i8] c"\09addq\09$0, %rax\00"}
!106 = metadata !{i64 604, [18 x i8] c"\09movb\09$88, (%rax)\00"}
!107 = metadata !{i64 607, [15 x i8] c"\09movl\09$0, %eax\00"}
!108 = metadata !{i64 612, [9 x i8] c"\09callq\090\00"}
!109 = metadata !{i64 617, [20 x i8] c"\09addl\09$1, -12(%rbp)\00"}
!110 = metadata !{i64 621, [15 x i8] c"\09movl\09$1, %edi\00"}
!111 = metadata !{i64 626, [9 x i8] c"\09callq\090\00"}
!112 = metadata !{i64 539, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!113 = metadata !{i64 542, [21 x i8] c"\09cmpl\09-8(%rbp), %eax\00"}
!114 = metadata !{i64 545, [8 x i8] c"\09jne\0920\00"}
!115 = metadata !{i64 507, [19 x i8] c"\09cmpl\09$0, -4(%rbp)\00"}
!116 = metadata !{i64 511, [7 x i8] c"\09jle\096\00"}
!117 = metadata !{i64 552, [9 x i8] c"\09callq\090\00"}
!118 = metadata !{i64 557, [24 x i8] c"\09movl\09$4294967294, %edi\00"}
!119 = metadata !{i64 562, [9 x i8] c"\09callq\090\00"}
!120 = metadata !{i64 513, [20 x i8] c"\09cmpl\09$10, -4(%rbp)\00"}
!121 = metadata !{i64 517, [8 x i8] c"\09jle\0912\00"}
!122 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!123 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!124 = metadata !{i64 4, [16 x i8] c"\09subq\09$16, %rsp\00"}
!125 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!126 = metadata !{i64 100, [19 x i8] c"\09cmpl\09$6, -4(%rbp)\00"}
!127 = metadata !{i64 104, [9 x i8] c"\09jle\09-89\00"}
!128 = metadata !{i64 17, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!129 = metadata !{i64 80, [20 x i8] c"\09cmpl\09$10, -8(%rbp)\00"}
!130 = metadata !{i64 84, [9 x i8] c"\09jle\09-60\00"}
!131 = metadata !{i64 106, [16 x i8] c"\09movl\09$10, %edi\00"}
!132 = metadata !{i64 111, [9 x i8] c"\09callq\090\00"}
!133 = metadata !{i64 116, [7 x i8] c"\09leave\00"}
!134 = metadata !{i64 117, [6 x i8] c"\09retq\00"}
!135 = metadata !{i64 26, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!136 = metadata !{i64 29, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!137 = metadata !{i64 32, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!138 = metadata !{i64 35, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!139 = metadata !{i64 54, [17 x i8] c"\09addq\09%rcx, %rax\00"}
!140 = metadata !{i64 57, [15 x i8] c"\09addq\09$0, %rax\00"}
!141 = metadata !{i64 63, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!142 = metadata !{i64 66, [18 x i8] c"\09movsbl\09%al, %eax\00"}
!143 = metadata !{i64 69, [17 x i8] c"\09movl\09%eax, %edi\00"}
!144 = metadata !{i64 71, [9 x i8] c"\09callq\090\00"}
!145 = metadata !{i64 76, [19 x i8] c"\09addl\09$1, -8(%rbp)\00"}
!146 = metadata !{i64 86, [16 x i8] c"\09movl\09$10, %edi\00"}
!147 = metadata !{i64 91, [9 x i8] c"\09callq\090\00"}
!148 = metadata !{i64 96, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
