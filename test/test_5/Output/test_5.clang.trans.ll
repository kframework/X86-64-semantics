; ModuleID = 'Output/test_5.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%1 = type <{ [95 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x3b2 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x3ff = internal constant %1 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_c0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 144
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = sub i64 %_local_stack_start_, 144
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
  store i64 %_local_stack_start_, i64* %RSP_val
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
  %81 = add i64 %78, -136
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
  %91 = icmp ult i64 %79, 128, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 0, i64* %RAX_val, !mcsema_real_eip !5
  store i64 28, i64* %RDX_val, !mcsema_real_eip !6
  %94 = load i64* %RBP_val, !mcsema_real_eip !7
  %95 = add i64 %94, -64, !mcsema_real_eip !7
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !7
  store i64 %97, i64* %RCX_val, !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %R8_val, !mcsema_real_eip !8
  %98 = add i64 %94, -4, !mcsema_real_eip !9
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !9
  %100 = bitcast i64* %99 to i32*
  store i32 0, i32* %100, !mcsema_real_eip !9
  %101 = load i64* %RBP_val, !mcsema_real_eip !10
  %102 = add i64 %101, -8, !mcsema_real_eip !10
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !10
  %104 = load i64* %RDI_val, !mcsema_real_eip !10
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !10
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !10
  %107 = load i64* %RBP_val, !mcsema_real_eip !11
  %108 = add i64 %107, -16, !mcsema_real_eip !11
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !11
  %110 = load i64* %RSI_val, !mcsema_real_eip !11
  store i64 %110, i64* %109, !mcsema_real_eip !11
  %111 = load i64* %RBP_val, !mcsema_real_eip !12
  %112 = add i64 %111, -36, !mcsema_real_eip !12
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !12
  %114 = bitcast i64* %113 to i32*
  store i32 0, i32* %114, !mcsema_real_eip !12
  %115 = load i64* %RBP_val, !mcsema_real_eip !13
  %116 = add i64 %115, -20, !mcsema_real_eip !13
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !13
  %118 = bitcast i64* %117 to i32*
  store i32 1, i32* %118, !mcsema_real_eip !13
  %119 = load i64* %RBP_val, !mcsema_real_eip !14
  %120 = add i64 %119, -24, !mcsema_real_eip !14
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !14
  %122 = bitcast i64* %121 to i32*
  store i32 1, i32* %122, !mcsema_real_eip !14
  %123 = load i64* %RBP_val, !mcsema_real_eip !15
  %124 = add i64 %123, -20, !mcsema_real_eip !15
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !15
  %126 = bitcast i64* %125 to i32*
  %127 = load i32* %126, !mcsema_real_eip !15
  %128 = sext i32 %127 to i64, !mcsema_real_eip !15
  store i64 %128, i64* %RSI_val, !mcsema_real_eip !15
  %129 = load i64* %RBP_val, !mcsema_real_eip !16
  %130 = add i64 %129, -24, !mcsema_real_eip !16
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !16
  %132 = bitcast i64* %131 to i32*
  %133 = load i32* %132, !mcsema_real_eip !16
  %134 = sext i32 %133 to i64, !mcsema_real_eip !16
  %135 = mul i64 %134, 11, !mcsema_real_eip !17
  store i64 %135, i64* %R9_val, !mcsema_real_eip !17
  %136 = load i64* %R8_val, !mcsema_real_eip !18
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %135, i64 %136)
  %137 = extractvalue { i64, i1 } %uadd, 0
  %138 = xor i64 %137, %136, !mcsema_real_eip !18
  %139 = xor i64 %138, %135, !mcsema_real_eip !18
  %140 = and i64 %139, 16, !mcsema_real_eip !18
  %141 = icmp ne i64 %140, 0, !mcsema_real_eip !18
  store i1 %141, i1* %AF_val, !mcsema_real_eip !18
  %142 = icmp slt i64 %137, 0
  store i1 %142, i1* %SF_val, !mcsema_real_eip !18
  %143 = icmp eq i64 %137, 0, !mcsema_real_eip !18
  store i1 %143, i1* %ZF_val, !mcsema_real_eip !18
  %144 = xor i64 %136, -9223372036854775808, !mcsema_real_eip !18
  %145 = xor i64 %144, %135, !mcsema_real_eip !18
  %146 = and i64 %138, %145, !mcsema_real_eip !18
  %147 = icmp slt i64 %146, 0
  store i1 %147, i1* %OF_val, !mcsema_real_eip !18
  %148 = trunc i64 %137 to i8, !mcsema_real_eip !18
  %149 = tail call i8 @llvm.ctpop.i8(i8 %148), !mcsema_real_eip !18
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  store i1 %151, i1* %PF_val, !mcsema_real_eip !18
  %152 = extractvalue { i64, i1 } %uadd, 1
  store i1 %152, i1* %CF_val, !mcsema_real_eip !18
  store i64 %137, i64* %R8_val, !mcsema_real_eip !18
  %153 = load i64* %RSI_val, !mcsema_real_eip !19
  %154 = add i64 %153, %137, !mcsema_real_eip !19
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !19
  %156 = bitcast i64* %155 to i8*
  store i8 88, i8* %156, !mcsema_real_eip !19
  %157 = load i64* %RAX_val, !mcsema_real_eip !20
  %158 = and i64 %157, 4294967295
  store i64 %158, i64* %RDI_val, !mcsema_real_eip !20
  %159 = load i64* %RCX_val, !mcsema_real_eip !21
  store i64 %159, i64* %RSI_val, !mcsema_real_eip !21
  %160 = load i64* %RDX_val, !mcsema_real_eip !22
  %161 = tail call x86_64_sysvcc i64 @read(i64 %158, i64 %159, i64 %160), !mcsema_real_eip !22
  store i64 %161, i64* %RAX_val, !mcsema_real_eip !22
  %162 = load i64* %RBP_val, !mcsema_real_eip !23
  %163 = add i64 %162, -72, !mcsema_real_eip !23
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !23
  store i64 %161, i64* %164, !mcsema_real_eip !23
  %165 = load i64* %RBP_val, !mcsema_real_eip !24
  %166 = add i64 %165, -36, !mcsema_real_eip !24
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !24
  %168 = bitcast i64* %167 to i32*
  %169 = load i32* %168, !mcsema_real_eip !24
  %170 = add i32 %169, -28
  %171 = xor i32 %170, %169, !mcsema_real_eip !24
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  store i1 %173, i1* %AF_val, !mcsema_real_eip !24
  %174 = trunc i32 %170 to i8, !mcsema_real_eip !24
  %175 = tail call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !24
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  store i1 %177, i1* %PF_val, !mcsema_real_eip !24
  %178 = icmp eq i32 %170, 0, !mcsema_real_eip !24
  store i1 %178, i1* %ZF_val, !mcsema_real_eip !24
  %179 = icmp slt i32 %170, 0
  store i1 %179, i1* %SF_val, !mcsema_real_eip !24
  %180 = icmp ult i32 %169, 28, !mcsema_real_eip !24
  store i1 %180, i1* %CF_val, !mcsema_real_eip !24
  %181 = and i32 %171, %169, !mcsema_real_eip !24
  %182 = icmp slt i32 %181, 0
  store i1 %182, i1* %OF_val, !mcsema_real_eip !24
  %tmp = xor i1 %179, %182
  br i1 %tmp, label %block_0x13d.preheader, label %block_0x390, !mcsema_real_eip !25

block_0x13d.preheader:                            ; preds = %entry
  br label %block_0x13d

block_0x390.loopexit:                             ; preds = %block_0x130
  br label %block_0x390

block_0x390:                                      ; preds = %block_0x390.loopexit, %entry
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85), i64* %RDI_val, !mcsema_real_eip !26
  %183 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85)), !mcsema_real_eip !27
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !27
  %184 = load i64* %RBP_val, !mcsema_real_eip !28
  %185 = add i64 %184, -4, !mcsema_real_eip !28
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !28
  %187 = bitcast i64* %186 to i32*
  %188 = load i32* %187, !mcsema_real_eip !28
  %189 = zext i32 %188 to i64, !mcsema_real_eip !28
  store i64 %189, i64* %RCX_val, !mcsema_real_eip !28
  %190 = load i64* %RBP_val, !mcsema_real_eip !29
  %191 = add i64 %190, -124, !mcsema_real_eip !29
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !29
  %193 = load i64* %RAX_val, !mcsema_real_eip !29
  %194 = trunc i64 %193 to i32, !mcsema_real_eip !29
  %195 = bitcast i64* %192 to i32*
  store i32 %194, i32* %195, !mcsema_real_eip !29
  %196 = load i64* %RCX_val, !mcsema_real_eip !30
  %197 = and i64 %196, 4294967295
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !30
  %198 = load i64* %RSP_val, !mcsema_real_eip !31
  %uadd365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 128)
  %199 = extractvalue { i64, i1 } %uadd365, 0
  %200 = xor i64 %199, %198, !mcsema_real_eip !31
  %201 = and i64 %200, 16, !mcsema_real_eip !31
  %202 = icmp ne i64 %201, 0, !mcsema_real_eip !31
  store i1 %202, i1* %AF_val, !mcsema_real_eip !31
  %203 = icmp slt i64 %199, 0
  store i1 %203, i1* %SF_val, !mcsema_real_eip !31
  %204 = icmp eq i64 %199, 0, !mcsema_real_eip !31
  store i1 %204, i1* %ZF_val, !mcsema_real_eip !31
  %205 = xor i64 %198, -9223372036854775808, !mcsema_real_eip !31
  %206 = and i64 %200, %205, !mcsema_real_eip !31
  %207 = icmp slt i64 %206, 0
  store i1 %207, i1* %OF_val, !mcsema_real_eip !31
  %208 = trunc i64 %199 to i8, !mcsema_real_eip !31
  %209 = tail call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !31
  %210 = and i8 %209, 1
  %211 = icmp eq i8 %210, 0
  store i1 %211, i1* %PF_val, !mcsema_real_eip !31
  %212 = extractvalue { i64, i1 } %uadd365, 1
  store i1 %212, i1* %CF_val, !mcsema_real_eip !31
  store i64 %199, i64* %RSP_val, !mcsema_real_eip !31
  %213 = inttoptr i64 %199 to i64*, !mcsema_real_eip !32
  %214 = load i64* %213, !mcsema_real_eip !32
  store i64 %214, i64* %RBP_val, !mcsema_real_eip !32
  %215 = add i64 %199, 16, !mcsema_real_eip !33
  store i64 %215, i64* %RSP_val, !mcsema_real_eip !33
  %216 = load i64* %RAX_val, !mcsema_real_eip !33
  store i64 %216, i64* %RAX, !mcsema_real_eip !33
  %217 = load i64* %RBX_val, !mcsema_real_eip !33
  store i64 %217, i64* %RBX, !mcsema_real_eip !33
  %218 = load i64* %RCX_val, !mcsema_real_eip !33
  store i64 %218, i64* %RCX, !mcsema_real_eip !33
  %219 = load i64* %RDX_val, !mcsema_real_eip !33
  store i64 %219, i64* %RDX, !mcsema_real_eip !33
  %220 = load i64* %RSI_val, !mcsema_real_eip !33
  store i64 %220, i64* %RSI, !mcsema_real_eip !33
  %221 = load i64* %RDI_val, !mcsema_real_eip !33
  store i64 %221, i64* %RDI, !mcsema_real_eip !33
  %222 = load i64* %RSP_val, !mcsema_real_eip !33
  store i64 %222, i64* %RSP, !mcsema_real_eip !33
  %223 = load i64* %RBP_val, !mcsema_real_eip !33
  store i64 %223, i64* %RBP, !mcsema_real_eip !33
  %224 = load i64* %R8_val, !mcsema_real_eip !33
  store i64 %224, i64* %R8, !mcsema_real_eip !33
  %225 = load i64* %R9_val, !mcsema_real_eip !33
  store i64 %225, i64* %R9, !mcsema_real_eip !33
  %226 = load i64* %R10_val, !mcsema_real_eip !33
  store i64 %226, i64* %R10, !mcsema_real_eip !33
  %227 = load i64* %R11_val, !mcsema_real_eip !33
  store i64 %227, i64* %R11, !mcsema_real_eip !33
  %228 = load i64* %R12_val, !mcsema_real_eip !33
  store i64 %228, i64* %R12, !mcsema_real_eip !33
  %229 = load i64* %R13_val, !mcsema_real_eip !33
  store i64 %229, i64* %R13, !mcsema_real_eip !33
  %230 = load i64* %R14_val, !mcsema_real_eip !33
  store i64 %230, i64* %R14, !mcsema_real_eip !33
  %231 = load i64* %R15_val, !mcsema_real_eip !33
  store i64 %231, i64* %R15, !mcsema_real_eip !33
  %232 = load i64* %RIP_val, !mcsema_real_eip !33
  store i64 %232, i64* %RIP, !mcsema_real_eip !33
  %233 = load i1* %CF_val, !mcsema_real_eip !33
  store i1 %233, i1* %CF, align 1, !mcsema_real_eip !33
  %234 = load i1* %PF_val, !mcsema_real_eip !33
  store i1 %234, i1* %PF, align 1, !mcsema_real_eip !33
  %235 = load i1* %AF_val, !mcsema_real_eip !33
  store i1 %235, i1* %AF, align 1, !mcsema_real_eip !33
  %236 = load i1* %ZF_val, !mcsema_real_eip !33
  store i1 %236, i1* %ZF, align 1, !mcsema_real_eip !33
  %237 = load i1* %SF_val, !mcsema_real_eip !33
  store i1 %237, i1* %SF, align 1, !mcsema_real_eip !33
  %238 = load i1* %OF_val, !mcsema_real_eip !33
  store i1 %238, i1* %OF, align 1, !mcsema_real_eip !33
  %239 = load i1* %DF_val, !mcsema_real_eip !33
  store i1 %239, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  %240 = load i1* %FPU_B_val, !mcsema_real_eip !33
  store i1 %240, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %241 = load i1* %FPU_C3_val, !mcsema_real_eip !33
  store i1 %241, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %242 = load i3* %FPU_TOP_val, !mcsema_real_eip !33
  store i3 %242, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %243 = load i1* %FPU_C2_val, !mcsema_real_eip !33
  store i1 %243, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %244 = load i1* %FPU_C1_val, !mcsema_real_eip !33
  store i1 %244, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %245 = load i1* %FPU_C0_val, !mcsema_real_eip !33
  store i1 %245, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %246 = load i1* %FPU_ES_val, !mcsema_real_eip !33
  store i1 %246, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %247 = load i1* %FPU_SF_val, !mcsema_real_eip !33
  store i1 %247, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %248 = load i1* %FPU_PE_val, !mcsema_real_eip !33
  store i1 %248, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %249 = load i1* %FPU_UE_val, !mcsema_real_eip !33
  store i1 %249, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %250 = load i1* %FPU_OE_val, !mcsema_real_eip !33
  store i1 %250, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %251 = load i1* %FPU_ZE_val, !mcsema_real_eip !33
  store i1 %251, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %252 = load i1* %FPU_DE_val, !mcsema_real_eip !33
  store i1 %252, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %253 = load i1* %FPU_IE_val, !mcsema_real_eip !33
  store i1 %253, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %254 = load i1* %FPU_X_val, !mcsema_real_eip !33
  store i1 %254, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %255 = load i2* %FPU_RC_val, !mcsema_real_eip !33
  store i2 %255, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %256 = load i2* %FPU_PC_val, !mcsema_real_eip !33
  store i2 %256, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %257 = load i1* %FPU_PM_val, !mcsema_real_eip !33
  store i1 %257, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %258 = load i1* %FPU_UM_val, !mcsema_real_eip !33
  store i1 %258, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %259 = load i1* %FPU_OM_val, !mcsema_real_eip !33
  store i1 %259, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %260 = load i1* %FPU_ZM_val, !mcsema_real_eip !33
  store i1 %260, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %261 = load i1* %FPU_DM_val, !mcsema_real_eip !33
  store i1 %261, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %262 = load i1* %FPU_IM_val, !mcsema_real_eip !33
  store i1 %262, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %263 = load i64* %53, align 4
  store i64 %263, i64* %52, align 4
  %264 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  store i16 %264, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %265 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  store i64 %265, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  %266 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  store i16 %266, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %267 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  store i64 %267, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  %268 = load i128* %XMM0_val, !mcsema_real_eip !33
  store i128 %268, i128* %XMM0, align 1, !mcsema_real_eip !33
  %269 = load i128* %XMM1_val, !mcsema_real_eip !33
  store i128 %269, i128* %XMM1, align 1, !mcsema_real_eip !33
  %270 = load i128* %XMM2_val, !mcsema_real_eip !33
  store i128 %270, i128* %XMM2, align 1, !mcsema_real_eip !33
  %271 = load i128* %XMM3_val, !mcsema_real_eip !33
  store i128 %271, i128* %XMM3, align 1, !mcsema_real_eip !33
  %272 = load i128* %XMM4_val, !mcsema_real_eip !33
  store i128 %272, i128* %XMM4, align 1, !mcsema_real_eip !33
  %273 = load i128* %XMM5_val, !mcsema_real_eip !33
  store i128 %273, i128* %XMM5, align 1, !mcsema_real_eip !33
  %274 = load i128* %XMM6_val, !mcsema_real_eip !33
  store i128 %274, i128* %XMM6, align 1, !mcsema_real_eip !33
  %275 = load i128* %XMM7_val, !mcsema_real_eip !33
  store i128 %275, i128* %XMM7, align 1, !mcsema_real_eip !33
  %276 = load i128* %XMM8_val, !mcsema_real_eip !33
  store i128 %276, i128* %XMM8, align 1, !mcsema_real_eip !33
  %277 = load i128* %XMM9_val, !mcsema_real_eip !33
  store i128 %277, i128* %XMM9, align 1, !mcsema_real_eip !33
  %278 = load i128* %XMM10_val, !mcsema_real_eip !33
  store i128 %278, i128* %XMM10, align 1, !mcsema_real_eip !33
  %279 = load i128* %XMM11_val, !mcsema_real_eip !33
  store i128 %279, i128* %XMM11, align 1, !mcsema_real_eip !33
  %280 = load i128* %XMM12_val, !mcsema_real_eip !33
  store i128 %280, i128* %XMM12, align 1, !mcsema_real_eip !33
  %281 = load i128* %XMM13_val, !mcsema_real_eip !33
  store i128 %281, i128* %XMM13, align 1, !mcsema_real_eip !33
  %282 = load i128* %XMM14_val, !mcsema_real_eip !33
  store i128 %282, i128* %XMM14, align 1, !mcsema_real_eip !33
  %283 = load i128* %XMM15_val, !mcsema_real_eip !33
  store i128 %283, i128* %XMM15, align 1, !mcsema_real_eip !33
  %284 = load i64* %STACK_BASE_val, !mcsema_real_eip !33
  store i64 %284, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  %285 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  store i64 %285, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x13d:                                      ; preds = %block_0x130, %block_0x13d.preheader
  %286 = load i64* %RBP_val, !mcsema_real_eip !34
  %287 = add i64 %286, -20, !mcsema_real_eip !34
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !34
  %289 = bitcast i64* %288 to i32*
  %290 = load i32* %289, !mcsema_real_eip !34
  %291 = zext i32 %290 to i64, !mcsema_real_eip !34
  store i64 %291, i64* %RAX_val, !mcsema_real_eip !34
  %292 = load i64* %RBP_val, !mcsema_real_eip !35
  %293 = add i64 %292, -28, !mcsema_real_eip !35
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !35
  %295 = bitcast i64* %294 to i32*
  store i32 %290, i32* %295, !mcsema_real_eip !35
  %296 = load i64* %RBP_val, !mcsema_real_eip !36
  %297 = add i64 %296, -24, !mcsema_real_eip !36
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !36
  %299 = bitcast i64* %298 to i32*
  %300 = load i32* %299, !mcsema_real_eip !36
  %301 = zext i32 %300 to i64, !mcsema_real_eip !36
  store i64 %301, i64* %RAX_val, !mcsema_real_eip !36
  %302 = load i64* %RBP_val, !mcsema_real_eip !37
  %303 = add i64 %302, -32, !mcsema_real_eip !37
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !37
  %305 = bitcast i64* %304 to i32*
  store i32 %300, i32* %305, !mcsema_real_eip !37
  %306 = load i64* %RBP_val, !mcsema_real_eip !38
  %307 = add i64 %306, -36, !mcsema_real_eip !38
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !38
  %309 = bitcast i64* %308 to i32*
  %310 = load i32* %309, !mcsema_real_eip !38
  %311 = sext i32 %310 to i64, !mcsema_real_eip !38
  store i64 %311, i64* %RCX_val, !mcsema_real_eip !38
  %312 = load i64* %RBP_val, !mcsema_real_eip !39
  %313 = add i64 %312, -64, !mcsema_real_eip !39
  %314 = add i64 %313, %311, !mcsema_real_eip !39
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !39
  %316 = bitcast i64* %315 to i8*
  %317 = load i8* %316, !mcsema_real_eip !39
  %318 = sext i8 %317 to i32, !mcsema_real_eip !39
  %319 = zext i32 %318 to i64, !mcsema_real_eip !39
  store i64 %319, i64* %RAX_val, !mcsema_real_eip !39
  %320 = add nsw i32 %318, -114
  %321 = xor i32 %320, %318, !mcsema_real_eip !40
  %322 = and i32 %321, 16
  %323 = icmp eq i32 %322, 0
  store i1 %323, i1* %AF_val, !mcsema_real_eip !40
  %324 = trunc i32 %320 to i8, !mcsema_real_eip !40
  %325 = tail call i8 @llvm.ctpop.i8(i8 %324), !mcsema_real_eip !40
  %326 = and i8 %325, 1
  %327 = icmp eq i8 %326, 0
  store i1 %327, i1* %PF_val, !mcsema_real_eip !40
  %328 = icmp eq i32 %320, 0, !mcsema_real_eip !40
  store i1 %328, i1* %ZF_val, !mcsema_real_eip !40
  %329 = icmp slt i32 %320, 0
  store i1 %329, i1* %SF_val, !mcsema_real_eip !40
  %330 = icmp ult i8 %317, 114
  store i1 %330, i1* %CF_val, !mcsema_real_eip !40
  %331 = and i32 %321, %318, !mcsema_real_eip !40
  %332 = icmp slt i32 %331, 0
  store i1 %332, i1* %OF_val, !mcsema_real_eip !40
  %333 = zext i32 %320 to i64, !mcsema_real_eip !40
  store i64 %333, i64* %RDX_val, !mcsema_real_eip !40
  %334 = load i64* %RBP_val, !mcsema_real_eip !41
  %335 = add i64 %334, -76, !mcsema_real_eip !41
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !41
  %337 = load i64* %RAX_val, !mcsema_real_eip !41
  %338 = trunc i64 %337 to i32, !mcsema_real_eip !41
  %339 = bitcast i64* %336 to i32*
  store i32 %338, i32* %339, !mcsema_real_eip !41
  %340 = load i64* %RBP_val, !mcsema_real_eip !42
  %341 = add i64 %340, -80, !mcsema_real_eip !42
  %342 = inttoptr i64 %341 to i64*, !mcsema_real_eip !42
  %343 = load i64* %RDX_val, !mcsema_real_eip !42
  %344 = trunc i64 %343 to i32, !mcsema_real_eip !42
  %345 = bitcast i64* %342 to i32*
  store i32 %344, i32* %345, !mcsema_real_eip !42
  %346 = load i1* %OF_val, !mcsema_real_eip !43
  %347 = load i1* %SF_val, !mcsema_real_eip !43
  %tmp348 = xor i1 %347, %346
  %348 = load i1* %ZF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %348, %tmp348
  %349 = load i64* %RBP_val, !mcsema_real_eip !44
  %350 = add i64 %349, -76, !mcsema_real_eip !44
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !44
  %352 = bitcast i64* %351 to i32*
  %353 = load i32* %352, !mcsema_real_eip !44
  %354 = zext i32 %353 to i64, !mcsema_real_eip !44
  store i64 %354, i64* %RAX_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x168, label %block_0x190, !mcsema_real_eip !43

block_0x190:                                      ; preds = %block_0x13d
  %355 = add i32 %353, -115
  %356 = xor i32 %355, %353, !mcsema_real_eip !45
  %357 = and i32 %356, 16
  %358 = icmp eq i32 %357, 0
  store i1 %358, i1* %AF_val, !mcsema_real_eip !45
  %359 = trunc i32 %355 to i8, !mcsema_real_eip !45
  %360 = tail call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !45
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  store i1 %362, i1* %PF_val, !mcsema_real_eip !45
  %363 = icmp eq i32 %355, 0, !mcsema_real_eip !45
  store i1 %363, i1* %ZF_val, !mcsema_real_eip !45
  %364 = icmp slt i32 %355, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !45
  %365 = icmp ult i32 %353, 115, !mcsema_real_eip !45
  store i1 %365, i1* %CF_val, !mcsema_real_eip !45
  %366 = and i32 %356, %353, !mcsema_real_eip !45
  %367 = icmp slt i32 %366, 0
  store i1 %367, i1* %OF_val, !mcsema_real_eip !45
  %368 = zext i32 %355 to i64, !mcsema_real_eip !45
  store i64 %368, i64* %RAX_val, !mcsema_real_eip !45
  %369 = load i64* %RBP_val, !mcsema_real_eip !46
  %370 = add i64 %369, -92, !mcsema_real_eip !46
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !46
  %372 = bitcast i64* %371 to i32*
  store i32 %355, i32* %372, !mcsema_real_eip !46
  %373 = load i1* %ZF_val, !mcsema_real_eip !47
  %374 = load i64* %RBP_val, !mcsema_real_eip !48
  br i1 %373, label %block_0x1c8, label %block_0x1a4, !mcsema_real_eip !47

block_0x168:                                      ; preds = %block_0x13d
  %375 = add i32 %353, -97
  %376 = xor i32 %375, %353, !mcsema_real_eip !49
  %377 = and i32 %376, 16, !mcsema_real_eip !49
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !49
  store i1 %378, i1* %AF_val, !mcsema_real_eip !49
  %379 = trunc i32 %375 to i8, !mcsema_real_eip !49
  %380 = tail call i8 @llvm.ctpop.i8(i8 %379), !mcsema_real_eip !49
  %381 = and i8 %380, 1
  %382 = icmp eq i8 %381, 0
  store i1 %382, i1* %PF_val, !mcsema_real_eip !49
  %383 = icmp eq i32 %375, 0, !mcsema_real_eip !49
  store i1 %383, i1* %ZF_val, !mcsema_real_eip !49
  %384 = icmp slt i32 %375, 0
  store i1 %384, i1* %SF_val, !mcsema_real_eip !49
  %385 = icmp ult i32 %353, 97, !mcsema_real_eip !49
  store i1 %385, i1* %CF_val, !mcsema_real_eip !49
  %386 = and i32 %376, %353, !mcsema_real_eip !49
  %387 = icmp slt i32 %386, 0
  store i1 %387, i1* %OF_val, !mcsema_real_eip !49
  %388 = zext i32 %375 to i64, !mcsema_real_eip !49
  store i64 %388, i64* %RAX_val, !mcsema_real_eip !49
  %389 = load i64* %RBP_val, !mcsema_real_eip !50
  %390 = add i64 %389, -84, !mcsema_real_eip !50
  %391 = inttoptr i64 %390 to i64*, !mcsema_real_eip !50
  %392 = bitcast i64* %391 to i32*
  store i32 %375, i32* %392, !mcsema_real_eip !50
  %393 = load i1* %ZF_val, !mcsema_real_eip !51
  %394 = load i64* %RBP_val, !mcsema_real_eip !52
  br i1 %393, label %block_0x1d8, label %block_0x17c, !mcsema_real_eip !51

block_0x1c8:                                      ; preds = %block_0x190
  %395 = add i64 %374, -24, !mcsema_real_eip !48
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !48
  %397 = bitcast i64* %396 to i32*
  %398 = load i32* %397, !mcsema_real_eip !48
  %uadd376 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %398, i32 1)
  %399 = extractvalue { i32, i1 } %uadd376, 0
  %400 = xor i32 %399, %398, !mcsema_real_eip !53
  %401 = and i32 %400, 16, !mcsema_real_eip !53
  %402 = icmp ne i32 %401, 0, !mcsema_real_eip !53
  store i1 %402, i1* %AF_val, !mcsema_real_eip !53
  %403 = icmp slt i32 %399, 0
  store i1 %403, i1* %SF_val, !mcsema_real_eip !53
  %404 = icmp eq i32 %399, 0, !mcsema_real_eip !53
  store i1 %404, i1* %ZF_val, !mcsema_real_eip !53
  %405 = xor i32 %398, -2147483648, !mcsema_real_eip !53
  %406 = and i32 %400, %405, !mcsema_real_eip !53
  %407 = icmp slt i32 %406, 0
  store i1 %407, i1* %OF_val, !mcsema_real_eip !53
  %408 = trunc i32 %399 to i8, !mcsema_real_eip !53
  %409 = tail call i8 @llvm.ctpop.i8(i8 %408), !mcsema_real_eip !53
  %410 = and i8 %409, 1
  %411 = icmp eq i8 %410, 0
  store i1 %411, i1* %PF_val, !mcsema_real_eip !53
  %412 = extractvalue { i32, i1 } %uadd376, 1
  store i1 %412, i1* %CF_val, !mcsema_real_eip !53
  %413 = zext i32 %399 to i64, !mcsema_real_eip !53
  store i64 %413, i64* %RAX_val, !mcsema_real_eip !53
  %414 = load i64* %RBP_val, !mcsema_real_eip !54
  %415 = add i64 %414, -24, !mcsema_real_eip !54
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !54
  %417 = bitcast i64* %416 to i32*
  store i32 %399, i32* %417, !mcsema_real_eip !54
  br label %block_0x22a, !mcsema_real_eip !55

block_0x1d8:                                      ; preds = %block_0x168
  %418 = add i64 %394, -20, !mcsema_real_eip !52
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !52
  %420 = bitcast i64* %419 to i32*
  %421 = load i32* %420, !mcsema_real_eip !52
  %uadd373 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %421, i32 -1)
  %422 = extractvalue { i32, i1 } %uadd373, 0
  %423 = xor i32 %422, %421, !mcsema_real_eip !56
  %424 = and i32 %423, 16
  %425 = icmp eq i32 %424, 0
  store i1 %425, i1* %AF_val, !mcsema_real_eip !56
  %426 = icmp slt i32 %422, 0
  store i1 %426, i1* %SF_val, !mcsema_real_eip !56
  %427 = icmp eq i32 %422, 0, !mcsema_real_eip !56
  store i1 %427, i1* %ZF_val, !mcsema_real_eip !56
  %428 = and i32 %423, %421, !mcsema_real_eip !56
  %429 = icmp slt i32 %428, 0
  store i1 %429, i1* %OF_val, !mcsema_real_eip !56
  %430 = trunc i32 %422 to i8, !mcsema_real_eip !56
  %431 = tail call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !56
  %432 = and i8 %431, 1
  %433 = icmp eq i8 %432, 0
  store i1 %433, i1* %PF_val, !mcsema_real_eip !56
  %434 = extractvalue { i32, i1 } %uadd373, 1
  store i1 %434, i1* %CF_val, !mcsema_real_eip !56
  %435 = zext i32 %422 to i64, !mcsema_real_eip !56
  store i64 %435, i64* %RAX_val, !mcsema_real_eip !56
  %436 = load i64* %RBP_val, !mcsema_real_eip !57
  %437 = add i64 %436, -20, !mcsema_real_eip !57
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !57
  %439 = bitcast i64* %438 to i32*
  store i32 %422, i32* %439, !mcsema_real_eip !57
  br label %block_0x22a, !mcsema_real_eip !58

block_0x1a4:                                      ; preds = %block_0x190
  %440 = add i64 %374, -76, !mcsema_real_eip !59
  %441 = inttoptr i64 %440 to i64*, !mcsema_real_eip !59
  %442 = bitcast i64* %441 to i32*
  %443 = load i32* %442, !mcsema_real_eip !59
  %444 = add i32 %443, -119
  %445 = xor i32 %444, %443, !mcsema_real_eip !60
  %446 = and i32 %445, 16
  %447 = icmp eq i32 %446, 0
  store i1 %447, i1* %AF_val, !mcsema_real_eip !60
  %448 = trunc i32 %444 to i8, !mcsema_real_eip !60
  %449 = tail call i8 @llvm.ctpop.i8(i8 %448), !mcsema_real_eip !60
  %450 = and i8 %449, 1
  %451 = icmp eq i8 %450, 0
  store i1 %451, i1* %PF_val, !mcsema_real_eip !60
  %452 = icmp eq i32 %444, 0, !mcsema_real_eip !60
  store i1 %452, i1* %ZF_val, !mcsema_real_eip !60
  %453 = icmp slt i32 %444, 0
  store i1 %453, i1* %SF_val, !mcsema_real_eip !60
  %454 = icmp ult i32 %443, 119, !mcsema_real_eip !60
  store i1 %454, i1* %CF_val, !mcsema_real_eip !60
  %455 = and i32 %445, %443, !mcsema_real_eip !60
  %456 = icmp slt i32 %455, 0
  store i1 %456, i1* %OF_val, !mcsema_real_eip !60
  %457 = zext i32 %444 to i64, !mcsema_real_eip !60
  store i64 %457, i64* %RAX_val, !mcsema_real_eip !60
  %458 = load i64* %RBP_val, !mcsema_real_eip !61
  %459 = add i64 %458, -96, !mcsema_real_eip !61
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !61
  %461 = bitcast i64* %460 to i32*
  store i32 %444, i32* %461, !mcsema_real_eip !61
  %462 = load i1* %ZF_val, !mcsema_real_eip !62
  br i1 %462, label %block_0x1b8, label %block_0x1f8, !mcsema_real_eip !62

block_0x22a:                                      ; preds = %block_0x1b8, %block_0x1e8, %block_0x1d8, %block_0x1c8
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !63
  %463 = load i64* %RBP_val, !mcsema_real_eip !64
  %464 = add i64 %463, -20, !mcsema_real_eip !64
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !64
  %466 = bitcast i64* %465 to i32*
  %467 = load i32* %466, !mcsema_real_eip !64
  %468 = sext i32 %467 to i64, !mcsema_real_eip !64
  store i64 %468, i64* %RCX_val, !mcsema_real_eip !64
  %469 = load i64* %RBP_val, !mcsema_real_eip !65
  %470 = add i64 %469, -24, !mcsema_real_eip !65
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !65
  %472 = bitcast i64* %471 to i32*
  %473 = load i32* %472, !mcsema_real_eip !65
  %474 = sext i32 %473 to i64, !mcsema_real_eip !65
  %475 = mul i64 %474, 11, !mcsema_real_eip !66
  store i64 %475, i64* %RDX_val, !mcsema_real_eip !66
  %476 = load i64* %RAX_val, !mcsema_real_eip !67
  %uadd371 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 %476)
  %477 = extractvalue { i64, i1 } %uadd371, 0
  %478 = xor i64 %477, %476, !mcsema_real_eip !67
  %479 = xor i64 %478, %475, !mcsema_real_eip !67
  %480 = and i64 %479, 16, !mcsema_real_eip !67
  %481 = icmp ne i64 %480, 0, !mcsema_real_eip !67
  store i1 %481, i1* %AF_val, !mcsema_real_eip !67
  %482 = icmp slt i64 %477, 0
  store i1 %482, i1* %SF_val, !mcsema_real_eip !67
  %483 = icmp eq i64 %477, 0, !mcsema_real_eip !67
  store i1 %483, i1* %ZF_val, !mcsema_real_eip !67
  %484 = xor i64 %476, -9223372036854775808, !mcsema_real_eip !67
  %485 = xor i64 %484, %475, !mcsema_real_eip !67
  %486 = and i64 %478, %485, !mcsema_real_eip !67
  %487 = icmp slt i64 %486, 0
  store i1 %487, i1* %OF_val, !mcsema_real_eip !67
  %488 = trunc i64 %477 to i8, !mcsema_real_eip !67
  %489 = tail call i8 @llvm.ctpop.i8(i8 %488), !mcsema_real_eip !67
  %490 = and i8 %489, 1
  %491 = icmp eq i8 %490, 0
  store i1 %491, i1* %PF_val, !mcsema_real_eip !67
  %492 = extractvalue { i64, i1 } %uadd371, 1
  store i1 %492, i1* %CF_val, !mcsema_real_eip !67
  store i64 %477, i64* %RAX_val, !mcsema_real_eip !67
  %493 = load i64* %RCX_val, !mcsema_real_eip !68
  %494 = add i64 %493, %477, !mcsema_real_eip !68
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !68
  %496 = bitcast i64* %495 to i8*
  %497 = load i8* %496, !mcsema_real_eip !68
  %498 = sext i8 %497 to i32, !mcsema_real_eip !68
  %499 = zext i32 %498 to i64, !mcsema_real_eip !68
  store i64 %499, i64* %RSI_val, !mcsema_real_eip !68
  %500 = add nsw i32 %498, -35
  %501 = xor i32 %500, %498, !mcsema_real_eip !69
  %502 = and i32 %501, 16, !mcsema_real_eip !69
  %503 = icmp ne i32 %502, 0, !mcsema_real_eip !69
  store i1 %503, i1* %AF_val, !mcsema_real_eip !69
  %504 = trunc i32 %500 to i8, !mcsema_real_eip !69
  %505 = tail call i8 @llvm.ctpop.i8(i8 %504), !mcsema_real_eip !69
  %506 = and i8 %505, 1
  %507 = icmp eq i8 %506, 0
  store i1 %507, i1* %PF_val, !mcsema_real_eip !69
  %508 = icmp eq i32 %500, 0, !mcsema_real_eip !69
  store i1 %508, i1* %ZF_val, !mcsema_real_eip !69
  %509 = icmp slt i32 %500, 0
  store i1 %509, i1* %SF_val, !mcsema_real_eip !69
  %510 = icmp ult i8 %497, 35
  store i1 %510, i1* %CF_val, !mcsema_real_eip !69
  %511 = and i32 %501, %498, !mcsema_real_eip !69
  %512 = icmp slt i32 %511, 0
  store i1 %512, i1* %OF_val, !mcsema_real_eip !69
  %513 = load i1* %ZF_val, !mcsema_real_eip !70
  br i1 %513, label %block_0x256, label %block_0x28c, !mcsema_real_eip !70

block_0x17c:                                      ; preds = %block_0x168
  %514 = add i64 %394, -76, !mcsema_real_eip !71
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !71
  %516 = bitcast i64* %515 to i32*
  %517 = load i32* %516, !mcsema_real_eip !71
  %518 = add i32 %517, -100
  %519 = xor i32 %518, %517, !mcsema_real_eip !72
  %520 = and i32 %519, 16, !mcsema_real_eip !72
  %521 = icmp ne i32 %520, 0, !mcsema_real_eip !72
  store i1 %521, i1* %AF_val, !mcsema_real_eip !72
  %522 = trunc i32 %518 to i8, !mcsema_real_eip !72
  %523 = tail call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !72
  %524 = and i8 %523, 1
  %525 = icmp eq i8 %524, 0
  store i1 %525, i1* %PF_val, !mcsema_real_eip !72
  %526 = icmp eq i32 %518, 0, !mcsema_real_eip !72
  store i1 %526, i1* %ZF_val, !mcsema_real_eip !72
  %527 = icmp slt i32 %518, 0
  store i1 %527, i1* %SF_val, !mcsema_real_eip !72
  %528 = icmp ult i32 %517, 100, !mcsema_real_eip !72
  store i1 %528, i1* %CF_val, !mcsema_real_eip !72
  %529 = and i32 %519, %517, !mcsema_real_eip !72
  %530 = icmp slt i32 %529, 0
  store i1 %530, i1* %OF_val, !mcsema_real_eip !72
  %531 = zext i32 %518 to i64, !mcsema_real_eip !72
  store i64 %531, i64* %RAX_val, !mcsema_real_eip !72
  %532 = load i64* %RBP_val, !mcsema_real_eip !73
  %533 = add i64 %532, -88, !mcsema_real_eip !73
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !73
  %535 = bitcast i64* %534 to i32*
  store i32 %518, i32* %535, !mcsema_real_eip !73
  %536 = load i1* %ZF_val, !mcsema_real_eip !74
  br i1 %536, label %block_0x1e8, label %block_0x1f8, !mcsema_real_eip !74

block_0x1f8:                                      ; preds = %block_0x17c, %block_0x1a4
  %537 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 5)), !mcsema_real_eip !75
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 45), i64* %RDI_val, !mcsema_real_eip !76
  %538 = load i64* %RBP_val, !mcsema_real_eip !77
  %539 = add i64 %538, -100, !mcsema_real_eip !77
  %540 = inttoptr i64 %539 to i64*, !mcsema_real_eip !77
  %541 = trunc i64 %537 to i32, !mcsema_real_eip !77
  %542 = bitcast i64* %540 to i32*
  store i32 %541, i32* %542, !mcsema_real_eip !77
  %543 = load i64* %RDI_val, !mcsema_real_eip !78
  %544 = tail call x86_64_sysvcc i64 @printf(i64 %543), !mcsema_real_eip !78
  store i64 4294967295, i64* %RDI_val, !mcsema_real_eip !79
  %545 = load i64* %RBP_val, !mcsema_real_eip !80
  %546 = add i64 %545, -104, !mcsema_real_eip !80
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !80
  %548 = trunc i64 %544 to i32, !mcsema_real_eip !80
  %549 = bitcast i64* %547 to i32*
  store i32 %548, i32* %549, !mcsema_real_eip !80
  %550 = load i64* %RDI_val, !mcsema_real_eip !81
  %551 = tail call x86_64_sysvcc i64 @exit(i64 %550), !mcsema_real_eip !81
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !63
  %552 = load i64* %RBP_val, !mcsema_real_eip !64
  %553 = add i64 %552, -20, !mcsema_real_eip !64
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !64
  %555 = bitcast i64* %554 to i32*
  %556 = load i32* %555, !mcsema_real_eip !64
  %557 = sext i32 %556 to i64, !mcsema_real_eip !64
  store i64 %557, i64* %RCX_val, !mcsema_real_eip !64
  %558 = load i64* %RBP_val, !mcsema_real_eip !65
  %559 = add i64 %558, -24, !mcsema_real_eip !65
  %560 = inttoptr i64 %559 to i64*, !mcsema_real_eip !65
  %561 = bitcast i64* %560 to i32*
  %562 = load i32* %561, !mcsema_real_eip !65
  %563 = sext i32 %562 to i64, !mcsema_real_eip !65
  %564 = mul i64 %563, 11, !mcsema_real_eip !66
  store i64 %564, i64* %RDX_val, !mcsema_real_eip !66
  %565 = load i64* %RAX_val, !mcsema_real_eip !67
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %564, i64 %565)
  %566 = extractvalue { i64, i1 } %uadd350, 0
  %567 = xor i64 %566, %565, !mcsema_real_eip !67
  %568 = xor i64 %567, %564, !mcsema_real_eip !67
  %569 = and i64 %568, 16, !mcsema_real_eip !67
  %570 = icmp ne i64 %569, 0, !mcsema_real_eip !67
  store i1 %570, i1* %AF_val, !mcsema_real_eip !67
  %571 = icmp slt i64 %566, 0
  store i1 %571, i1* %SF_val, !mcsema_real_eip !67
  %572 = icmp eq i64 %566, 0, !mcsema_real_eip !67
  store i1 %572, i1* %ZF_val, !mcsema_real_eip !67
  %573 = xor i64 %565, -9223372036854775808, !mcsema_real_eip !67
  %574 = xor i64 %573, %564, !mcsema_real_eip !67
  %575 = and i64 %567, %574, !mcsema_real_eip !67
  %576 = icmp slt i64 %575, 0
  store i1 %576, i1* %OF_val, !mcsema_real_eip !67
  %577 = trunc i64 %566 to i8, !mcsema_real_eip !67
  %578 = tail call i8 @llvm.ctpop.i8(i8 %577), !mcsema_real_eip !67
  %579 = and i8 %578, 1
  %580 = icmp eq i8 %579, 0
  store i1 %580, i1* %PF_val, !mcsema_real_eip !67
  %581 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %581, i1* %CF_val, !mcsema_real_eip !67
  store i64 %566, i64* %RAX_val, !mcsema_real_eip !67
  %582 = load i64* %RCX_val, !mcsema_real_eip !68
  %583 = add i64 %582, %566, !mcsema_real_eip !68
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !68
  %585 = bitcast i64* %584 to i8*
  %586 = load i8* %585, !mcsema_real_eip !68
  %587 = sext i8 %586 to i32, !mcsema_real_eip !68
  %588 = zext i32 %587 to i64, !mcsema_real_eip !68
  store i64 %588, i64* %RSI_val, !mcsema_real_eip !68
  %589 = add nsw i32 %587, -35
  %590 = xor i32 %589, %587, !mcsema_real_eip !69
  %591 = and i32 %590, 16, !mcsema_real_eip !69
  %592 = icmp ne i32 %591, 0, !mcsema_real_eip !69
  store i1 %592, i1* %AF_val, !mcsema_real_eip !69
  %593 = trunc i32 %589 to i8, !mcsema_real_eip !69
  %594 = tail call i8 @llvm.ctpop.i8(i8 %593), !mcsema_real_eip !69
  %595 = and i8 %594, 1
  %596 = icmp eq i8 %595, 0
  store i1 %596, i1* %PF_val, !mcsema_real_eip !69
  %597 = icmp eq i32 %589, 0, !mcsema_real_eip !69
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !69
  %598 = icmp slt i32 %589, 0
  store i1 %598, i1* %SF_val, !mcsema_real_eip !69
  %599 = icmp ult i8 %586, 35
  store i1 %599, i1* %CF_val, !mcsema_real_eip !69
  %600 = and i32 %590, %587, !mcsema_real_eip !69
  %601 = icmp slt i32 %600, 0
  store i1 %601, i1* %OF_val, !mcsema_real_eip !69
  %602 = load i1* %ZF_val, !mcsema_real_eip !70
  br i1 %602, label %block_0x256, label %block_0x28c, !mcsema_real_eip !70

block_0x28c:                                      ; preds = %block_0x1f8, %block_0x22a
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !82
  %603 = load i64* %RBP_val, !mcsema_real_eip !83
  %604 = add i64 %603, -20, !mcsema_real_eip !83
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !83
  %606 = bitcast i64* %605 to i32*
  %607 = load i32* %606, !mcsema_real_eip !83
  %608 = sext i32 %607 to i64, !mcsema_real_eip !83
  store i64 %608, i64* %RCX_val, !mcsema_real_eip !83
  %609 = load i64* %RBP_val, !mcsema_real_eip !84
  %610 = add i64 %609, -24, !mcsema_real_eip !84
  %611 = inttoptr i64 %610 to i64*, !mcsema_real_eip !84
  %612 = bitcast i64* %611 to i32*
  %613 = load i32* %612, !mcsema_real_eip !84
  %614 = sext i32 %613 to i64, !mcsema_real_eip !84
  %615 = mul i64 %614, 11, !mcsema_real_eip !85
  store i64 %615, i64* %RDX_val, !mcsema_real_eip !85
  %616 = load i64* %RAX_val, !mcsema_real_eip !86
  %uadd369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %615, i64 %616)
  %617 = extractvalue { i64, i1 } %uadd369, 0
  %618 = xor i64 %617, %616, !mcsema_real_eip !86
  %619 = xor i64 %618, %615, !mcsema_real_eip !86
  %620 = and i64 %619, 16, !mcsema_real_eip !86
  %621 = icmp ne i64 %620, 0, !mcsema_real_eip !86
  store i1 %621, i1* %AF_val, !mcsema_real_eip !86
  %622 = icmp slt i64 %617, 0
  store i1 %622, i1* %SF_val, !mcsema_real_eip !86
  %623 = icmp eq i64 %617, 0, !mcsema_real_eip !86
  store i1 %623, i1* %ZF_val, !mcsema_real_eip !86
  %624 = xor i64 %616, -9223372036854775808, !mcsema_real_eip !86
  %625 = xor i64 %624, %615, !mcsema_real_eip !86
  %626 = and i64 %618, %625, !mcsema_real_eip !86
  %627 = icmp slt i64 %626, 0
  store i1 %627, i1* %OF_val, !mcsema_real_eip !86
  %628 = trunc i64 %617 to i8, !mcsema_real_eip !86
  %629 = tail call i8 @llvm.ctpop.i8(i8 %628), !mcsema_real_eip !86
  %630 = and i8 %629, 1
  %631 = icmp eq i8 %630, 0
  store i1 %631, i1* %PF_val, !mcsema_real_eip !86
  %632 = extractvalue { i64, i1 } %uadd369, 1
  store i1 %632, i1* %CF_val, !mcsema_real_eip !86
  store i64 %617, i64* %RAX_val, !mcsema_real_eip !86
  %633 = load i64* %RCX_val, !mcsema_real_eip !87
  %634 = add i64 %633, %617, !mcsema_real_eip !87
  %635 = inttoptr i64 %634 to i64*, !mcsema_real_eip !87
  %636 = bitcast i64* %635 to i8*
  %637 = load i8* %636, !mcsema_real_eip !87
  %638 = sext i8 %637 to i32, !mcsema_real_eip !87
  %639 = zext i32 %638 to i64, !mcsema_real_eip !87
  store i64 %639, i64* %RSI_val, !mcsema_real_eip !87
  %640 = add nsw i32 %638, -32
  %641 = xor i32 %640, %638, !mcsema_real_eip !88
  %642 = and i32 %641, 16, !mcsema_real_eip !88
  %643 = icmp ne i32 %642, 0, !mcsema_real_eip !88
  store i1 %643, i1* %AF_val, !mcsema_real_eip !88
  %644 = trunc i32 %640 to i8, !mcsema_real_eip !88
  %645 = tail call i8 @llvm.ctpop.i8(i8 %644), !mcsema_real_eip !88
  %646 = and i8 %645, 1
  %647 = icmp eq i8 %646, 0
  store i1 %647, i1* %PF_val, !mcsema_real_eip !88
  %648 = icmp eq i32 %640, 0, !mcsema_real_eip !88
  store i1 %648, i1* %ZF_val, !mcsema_real_eip !88
  %649 = icmp slt i32 %640, 0
  store i1 %649, i1* %SF_val, !mcsema_real_eip !88
  %650 = icmp ult i8 %637, 32
  store i1 %650, i1* %CF_val, !mcsema_real_eip !88
  %651 = and i32 %641, %638, !mcsema_real_eip !88
  %652 = icmp slt i32 %651, 0
  store i1 %652, i1* %OF_val, !mcsema_real_eip !88
  %653 = load i1* %ZF_val, !mcsema_real_eip !89
  br i1 %653, label %block_0x317, label %block_0x2b8, !mcsema_real_eip !89

block_0x256:                                      ; preds = %block_0x1f8, %block_0x22a
  %654 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 56)), !mcsema_real_eip !90
  store i64 %654, i64* %RAX_val, !mcsema_real_eip !90
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 66), i64* %RDI_val, !mcsema_real_eip !91
  %655 = load i64* %RBP_val, !mcsema_real_eip !92
  %656 = add i64 %655, -64, !mcsema_real_eip !92
  %657 = inttoptr i64 %656 to i64*, !mcsema_real_eip !92
  %658 = ptrtoint i64* %657 to i64, !mcsema_real_eip !92
  store i64 %658, i64* %RSI_val, !mcsema_real_eip !92
  %659 = add i64 %655, -108, !mcsema_real_eip !93
  %660 = inttoptr i64 %659 to i64*, !mcsema_real_eip !93
  %661 = load i64* %RAX_val, !mcsema_real_eip !93
  %662 = trunc i64 %661 to i32, !mcsema_real_eip !93
  %663 = bitcast i64* %660 to i32*
  store i32 %662, i32* %663, !mcsema_real_eip !93
  %664 = load i64* %RDI_val, !mcsema_real_eip !94
  %665 = tail call x86_64_sysvcc i64 @printf(i64 %664), !mcsema_real_eip !94
  store i64 0, i64* %RDI_val, !mcsema_real_eip !95
  %666 = load i64* %RBP_val, !mcsema_real_eip !96
  %667 = add i64 %666, -112, !mcsema_real_eip !96
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !96
  %669 = trunc i64 %665 to i32, !mcsema_real_eip !96
  %670 = bitcast i64* %668 to i32*
  store i32 %669, i32* %670, !mcsema_real_eip !96
  %671 = load i64* %RDI_val, !mcsema_real_eip !97
  %672 = tail call x86_64_sysvcc i64 @exit(i64 %671), !mcsema_real_eip !97
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !82
  %673 = load i64* %RBP_val, !mcsema_real_eip !83
  %674 = add i64 %673, -20, !mcsema_real_eip !83
  %675 = inttoptr i64 %674 to i64*, !mcsema_real_eip !83
  %676 = bitcast i64* %675 to i32*
  %677 = load i32* %676, !mcsema_real_eip !83
  %678 = sext i32 %677 to i64, !mcsema_real_eip !83
  store i64 %678, i64* %RCX_val, !mcsema_real_eip !83
  %679 = load i64* %RBP_val, !mcsema_real_eip !84
  %680 = add i64 %679, -24, !mcsema_real_eip !84
  %681 = inttoptr i64 %680 to i64*, !mcsema_real_eip !84
  %682 = bitcast i64* %681 to i32*
  %683 = load i32* %682, !mcsema_real_eip !84
  %684 = sext i32 %683 to i64, !mcsema_real_eip !84
  %685 = mul i64 %684, 11, !mcsema_real_eip !85
  store i64 %685, i64* %RDX_val, !mcsema_real_eip !85
  %686 = load i64* %RAX_val, !mcsema_real_eip !86
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %685, i64 %686)
  %687 = extractvalue { i64, i1 } %uadd352, 0
  %688 = xor i64 %687, %686, !mcsema_real_eip !86
  %689 = xor i64 %688, %685, !mcsema_real_eip !86
  %690 = and i64 %689, 16, !mcsema_real_eip !86
  %691 = icmp ne i64 %690, 0, !mcsema_real_eip !86
  store i1 %691, i1* %AF_val, !mcsema_real_eip !86
  %692 = icmp slt i64 %687, 0
  store i1 %692, i1* %SF_val, !mcsema_real_eip !86
  %693 = icmp eq i64 %687, 0, !mcsema_real_eip !86
  store i1 %693, i1* %ZF_val, !mcsema_real_eip !86
  %694 = xor i64 %686, -9223372036854775808, !mcsema_real_eip !86
  %695 = xor i64 %694, %685, !mcsema_real_eip !86
  %696 = and i64 %688, %695, !mcsema_real_eip !86
  %697 = icmp slt i64 %696, 0
  store i1 %697, i1* %OF_val, !mcsema_real_eip !86
  %698 = trunc i64 %687 to i8, !mcsema_real_eip !86
  %699 = tail call i8 @llvm.ctpop.i8(i8 %698), !mcsema_real_eip !86
  %700 = and i8 %699, 1
  %701 = icmp eq i8 %700, 0
  store i1 %701, i1* %PF_val, !mcsema_real_eip !86
  %702 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %702, i1* %CF_val, !mcsema_real_eip !86
  store i64 %687, i64* %RAX_val, !mcsema_real_eip !86
  %703 = load i64* %RCX_val, !mcsema_real_eip !87
  %704 = add i64 %703, %687, !mcsema_real_eip !87
  %705 = inttoptr i64 %704 to i64*, !mcsema_real_eip !87
  %706 = bitcast i64* %705 to i8*
  %707 = load i8* %706, !mcsema_real_eip !87
  %708 = sext i8 %707 to i32, !mcsema_real_eip !87
  %709 = zext i32 %708 to i64, !mcsema_real_eip !87
  store i64 %709, i64* %RSI_val, !mcsema_real_eip !87
  %710 = add nsw i32 %708, -32
  %711 = xor i32 %710, %708, !mcsema_real_eip !88
  %712 = and i32 %711, 16, !mcsema_real_eip !88
  %713 = icmp ne i32 %712, 0, !mcsema_real_eip !88
  store i1 %713, i1* %AF_val, !mcsema_real_eip !88
  %714 = trunc i32 %710 to i8, !mcsema_real_eip !88
  %715 = tail call i8 @llvm.ctpop.i8(i8 %714), !mcsema_real_eip !88
  %716 = and i8 %715, 1
  %717 = icmp eq i8 %716, 0
  store i1 %717, i1* %PF_val, !mcsema_real_eip !88
  %718 = icmp eq i32 %710, 0, !mcsema_real_eip !88
  store i1 %718, i1* %ZF_val, !mcsema_real_eip !88
  %719 = icmp slt i32 %710, 0
  store i1 %719, i1* %SF_val, !mcsema_real_eip !88
  %720 = icmp ult i8 %707, 32
  store i1 %720, i1* %CF_val, !mcsema_real_eip !88
  %721 = and i32 %711, %708, !mcsema_real_eip !88
  %722 = icmp slt i32 %721, 0
  store i1 %722, i1* %OF_val, !mcsema_real_eip !88
  %723 = load i1* %ZF_val, !mcsema_real_eip !89
  br i1 %723, label %block_0x317, label %block_0x2b8, !mcsema_real_eip !89

block_0x1e8:                                      ; preds = %block_0x17c
  %724 = load i64* %RBP_val, !mcsema_real_eip !98
  %725 = add i64 %724, -20, !mcsema_real_eip !98
  %726 = inttoptr i64 %725 to i64*, !mcsema_real_eip !98
  %727 = bitcast i64* %726 to i32*
  %728 = load i32* %727, !mcsema_real_eip !98
  %uadd370 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %728, i32 1)
  %729 = extractvalue { i32, i1 } %uadd370, 0
  %730 = xor i32 %729, %728, !mcsema_real_eip !99
  %731 = and i32 %730, 16, !mcsema_real_eip !99
  %732 = icmp ne i32 %731, 0, !mcsema_real_eip !99
  store i1 %732, i1* %AF_val, !mcsema_real_eip !99
  %733 = icmp slt i32 %729, 0
  store i1 %733, i1* %SF_val, !mcsema_real_eip !99
  %734 = icmp eq i32 %729, 0, !mcsema_real_eip !99
  store i1 %734, i1* %ZF_val, !mcsema_real_eip !99
  %735 = xor i32 %728, -2147483648, !mcsema_real_eip !99
  %736 = and i32 %730, %735, !mcsema_real_eip !99
  %737 = icmp slt i32 %736, 0
  store i1 %737, i1* %OF_val, !mcsema_real_eip !99
  %738 = trunc i32 %729 to i8, !mcsema_real_eip !99
  %739 = tail call i8 @llvm.ctpop.i8(i8 %738), !mcsema_real_eip !99
  %740 = and i8 %739, 1
  %741 = icmp eq i8 %740, 0
  store i1 %741, i1* %PF_val, !mcsema_real_eip !99
  %742 = extractvalue { i32, i1 } %uadd370, 1
  store i1 %742, i1* %CF_val, !mcsema_real_eip !99
  %743 = zext i32 %729 to i64, !mcsema_real_eip !99
  store i64 %743, i64* %RAX_val, !mcsema_real_eip !99
  %744 = load i64* %RBP_val, !mcsema_real_eip !100
  %745 = add i64 %744, -20, !mcsema_real_eip !100
  %746 = inttoptr i64 %745 to i64*, !mcsema_real_eip !100
  %747 = bitcast i64* %746 to i32*
  store i32 %729, i32* %747, !mcsema_real_eip !100
  br label %block_0x22a, !mcsema_real_eip !101

block_0x1b8:                                      ; preds = %block_0x1a4
  %748 = load i64* %RBP_val, !mcsema_real_eip !102
  %749 = add i64 %748, -24, !mcsema_real_eip !102
  %750 = inttoptr i64 %749 to i64*, !mcsema_real_eip !102
  %751 = bitcast i64* %750 to i32*
  %752 = load i32* %751, !mcsema_real_eip !102
  %uadd375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %752, i32 -1)
  %753 = extractvalue { i32, i1 } %uadd375, 0
  %754 = xor i32 %753, %752, !mcsema_real_eip !103
  %755 = and i32 %754, 16
  %756 = icmp eq i32 %755, 0
  store i1 %756, i1* %AF_val, !mcsema_real_eip !103
  %757 = icmp slt i32 %753, 0
  store i1 %757, i1* %SF_val, !mcsema_real_eip !103
  %758 = icmp eq i32 %753, 0, !mcsema_real_eip !103
  store i1 %758, i1* %ZF_val, !mcsema_real_eip !103
  %759 = and i32 %754, %752, !mcsema_real_eip !103
  %760 = icmp slt i32 %759, 0
  store i1 %760, i1* %OF_val, !mcsema_real_eip !103
  %761 = trunc i32 %753 to i8, !mcsema_real_eip !103
  %762 = tail call i8 @llvm.ctpop.i8(i8 %761), !mcsema_real_eip !103
  %763 = and i8 %762, 1
  %764 = icmp eq i8 %763, 0
  store i1 %764, i1* %PF_val, !mcsema_real_eip !103
  %765 = extractvalue { i32, i1 } %uadd375, 1
  store i1 %765, i1* %CF_val, !mcsema_real_eip !103
  %766 = zext i32 %753 to i64, !mcsema_real_eip !103
  store i64 %766, i64* %RAX_val, !mcsema_real_eip !103
  %767 = load i64* %RBP_val, !mcsema_real_eip !104
  %768 = add i64 %767, -24, !mcsema_real_eip !104
  %769 = inttoptr i64 %768 to i64*, !mcsema_real_eip !104
  %770 = bitcast i64* %769 to i32*
  store i32 %753, i32* %770, !mcsema_real_eip !104
  br label %block_0x22a, !mcsema_real_eip !105

block_0x317:                                      ; preds = %block_0x2fe, %block_0x256, %block_0x28c
  %771 = load i64* %RBP_val, !mcsema_real_eip !106
  %772 = add i64 %771, -28, !mcsema_real_eip !106
  %773 = inttoptr i64 %772 to i64*, !mcsema_real_eip !106
  %774 = bitcast i64* %773 to i32*
  %775 = load i32* %774, !mcsema_real_eip !106
  %776 = zext i32 %775 to i64, !mcsema_real_eip !106
  store i64 %776, i64* %RAX_val, !mcsema_real_eip !106
  %777 = load i64* %RBP_val, !mcsema_real_eip !107
  %778 = add i64 %777, -20, !mcsema_real_eip !107
  %779 = inttoptr i64 %778 to i64*, !mcsema_real_eip !107
  %780 = bitcast i64* %779 to i32*
  %781 = load i32* %780, !mcsema_real_eip !107
  %782 = sub i32 %775, %781, !mcsema_real_eip !107
  %783 = xor i32 %782, %775, !mcsema_real_eip !107
  %784 = xor i32 %783, %781, !mcsema_real_eip !107
  %785 = and i32 %784, 16, !mcsema_real_eip !107
  %786 = icmp ne i32 %785, 0, !mcsema_real_eip !107
  store i1 %786, i1* %AF_val, !mcsema_real_eip !107
  %787 = trunc i32 %782 to i8, !mcsema_real_eip !107
  %788 = tail call i8 @llvm.ctpop.i8(i8 %787), !mcsema_real_eip !107
  %789 = and i8 %788, 1
  %790 = icmp eq i8 %789, 0
  store i1 %790, i1* %PF_val, !mcsema_real_eip !107
  %791 = icmp eq i32 %775, %781
  store i1 %791, i1* %ZF_val, !mcsema_real_eip !107
  %792 = icmp slt i32 %782, 0
  store i1 %792, i1* %SF_val, !mcsema_real_eip !107
  %793 = icmp ult i32 %775, %781, !mcsema_real_eip !107
  store i1 %793, i1* %CF_val, !mcsema_real_eip !107
  %794 = xor i32 %781, %775, !mcsema_real_eip !107
  %795 = and i32 %783, %794, !mcsema_real_eip !107
  %796 = icmp slt i32 %795, 0
  store i1 %796, i1* %OF_val, !mcsema_real_eip !107
  %797 = load i1* %ZF_val, !mcsema_real_eip !108
  br i1 %797, label %block_0x323, label %block_0x34d, !mcsema_real_eip !108

block_0x2b8:                                      ; preds = %block_0x256, %block_0x28c
  %798 = load i64* %RBP_val, !mcsema_real_eip !109
  %799 = add i64 %798, -24, !mcsema_real_eip !109
  %800 = inttoptr i64 %799 to i64*, !mcsema_real_eip !109
  %801 = bitcast i64* %800 to i32*
  %802 = load i32* %801, !mcsema_real_eip !109
  %803 = add i32 %802, -2
  %804 = xor i32 %803, %802, !mcsema_real_eip !109
  %805 = and i32 %804, 16, !mcsema_real_eip !109
  %806 = icmp ne i32 %805, 0, !mcsema_real_eip !109
  store i1 %806, i1* %AF_val, !mcsema_real_eip !109
  %807 = trunc i32 %803 to i8, !mcsema_real_eip !109
  %808 = tail call i8 @llvm.ctpop.i8(i8 %807), !mcsema_real_eip !109
  %809 = and i8 %808, 1
  %810 = icmp eq i8 %809, 0
  store i1 %810, i1* %PF_val, !mcsema_real_eip !109
  %811 = icmp eq i32 %803, 0, !mcsema_real_eip !109
  store i1 %811, i1* %ZF_val, !mcsema_real_eip !109
  %812 = icmp slt i32 %803, 0
  store i1 %812, i1* %SF_val, !mcsema_real_eip !109
  %813 = icmp ult i32 %802, 2, !mcsema_real_eip !109
  store i1 %813, i1* %CF_val, !mcsema_real_eip !109
  %814 = and i32 %804, %802, !mcsema_real_eip !109
  %815 = icmp slt i32 %814, 0
  store i1 %815, i1* %OF_val, !mcsema_real_eip !109
  %816 = load i1* %ZF_val, !mcsema_real_eip !110
  br i1 %816, label %block_0x2c5, label %block_0x30b, !mcsema_real_eip !110

block_0x30b:                                      ; preds = %block_0x2fe, %block_0x2f1, %block_0x2c5, %block_0x2b8
  %817 = load i64* %RBP_val, !mcsema_real_eip !111
  %818 = add i64 %817, -28, !mcsema_real_eip !111
  %819 = inttoptr i64 %818 to i64*, !mcsema_real_eip !111
  %820 = bitcast i64* %819 to i32*
  %821 = load i32* %820, !mcsema_real_eip !111
  %822 = zext i32 %821 to i64, !mcsema_real_eip !111
  store i64 %822, i64* %RAX_val, !mcsema_real_eip !111
  %823 = load i64* %RBP_val, !mcsema_real_eip !112
  %824 = add i64 %823, -20, !mcsema_real_eip !112
  %825 = inttoptr i64 %824 to i64*, !mcsema_real_eip !112
  %826 = bitcast i64* %825 to i32*
  store i32 %821, i32* %826, !mcsema_real_eip !112
  %827 = load i64* %RBP_val, !mcsema_real_eip !113
  %828 = add i64 %827, -32, !mcsema_real_eip !113
  %829 = inttoptr i64 %828 to i64*, !mcsema_real_eip !113
  %830 = bitcast i64* %829 to i32*
  %831 = load i32* %830, !mcsema_real_eip !113
  %832 = zext i32 %831 to i64, !mcsema_real_eip !113
  store i64 %832, i64* %RAX_val, !mcsema_real_eip !113
  %833 = load i64* %RBP_val, !mcsema_real_eip !114
  %834 = add i64 %833, -24, !mcsema_real_eip !114
  %835 = inttoptr i64 %834 to i64*, !mcsema_real_eip !114
  %836 = bitcast i64* %835 to i32*
  store i32 %831, i32* %836, !mcsema_real_eip !114
  %837 = load i64* %RBP_val, !mcsema_real_eip !106
  %838 = add i64 %837, -28, !mcsema_real_eip !106
  %839 = inttoptr i64 %838 to i64*, !mcsema_real_eip !106
  %840 = bitcast i64* %839 to i32*
  %841 = load i32* %840, !mcsema_real_eip !106
  %842 = zext i32 %841 to i64, !mcsema_real_eip !106
  store i64 %842, i64* %RAX_val, !mcsema_real_eip !106
  %843 = load i64* %RBP_val, !mcsema_real_eip !107
  %844 = add i64 %843, -20, !mcsema_real_eip !107
  %845 = inttoptr i64 %844 to i64*, !mcsema_real_eip !107
  %846 = bitcast i64* %845 to i32*
  %847 = load i32* %846, !mcsema_real_eip !107
  %848 = sub i32 %841, %847, !mcsema_real_eip !107
  %849 = xor i32 %848, %841, !mcsema_real_eip !107
  %850 = xor i32 %849, %847, !mcsema_real_eip !107
  %851 = and i32 %850, 16, !mcsema_real_eip !107
  %852 = icmp ne i32 %851, 0, !mcsema_real_eip !107
  store i1 %852, i1* %AF_val, !mcsema_real_eip !107
  %853 = trunc i32 %848 to i8, !mcsema_real_eip !107
  %854 = tail call i8 @llvm.ctpop.i8(i8 %853), !mcsema_real_eip !107
  %855 = and i8 %854, 1
  %856 = icmp eq i8 %855, 0
  store i1 %856, i1* %PF_val, !mcsema_real_eip !107
  %857 = icmp eq i32 %841, %847
  store i1 %857, i1* %ZF_val, !mcsema_real_eip !107
  %858 = icmp slt i32 %848, 0
  store i1 %858, i1* %SF_val, !mcsema_real_eip !107
  %859 = icmp ult i32 %841, %847, !mcsema_real_eip !107
  store i1 %859, i1* %CF_val, !mcsema_real_eip !107
  %860 = xor i32 %847, %841, !mcsema_real_eip !107
  %861 = and i32 %849, %860, !mcsema_real_eip !107
  %862 = icmp slt i32 %861, 0
  store i1 %862, i1* %OF_val, !mcsema_real_eip !107
  %863 = load i1* %ZF_val, !mcsema_real_eip !108
  br i1 %863, label %block_0x323, label %block_0x34d, !mcsema_real_eip !108

block_0x2c5:                                      ; preds = %block_0x2b8
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !115
  %864 = load i64* %RBP_val, !mcsema_real_eip !116
  %865 = add i64 %864, -20, !mcsema_real_eip !116
  %866 = inttoptr i64 %865 to i64*, !mcsema_real_eip !116
  %867 = bitcast i64* %866 to i32*
  %868 = load i32* %867, !mcsema_real_eip !116
  %869 = sext i32 %868 to i64, !mcsema_real_eip !116
  store i64 %869, i64* %RCX_val, !mcsema_real_eip !116
  %870 = load i64* %RBP_val, !mcsema_real_eip !117
  %871 = add i64 %870, -24, !mcsema_real_eip !117
  %872 = inttoptr i64 %871 to i64*, !mcsema_real_eip !117
  %873 = bitcast i64* %872 to i32*
  %874 = load i32* %873, !mcsema_real_eip !117
  %875 = sext i32 %874 to i64, !mcsema_real_eip !117
  %876 = mul i64 %875, 11, !mcsema_real_eip !118
  store i64 %876, i64* %RDX_val, !mcsema_real_eip !118
  %877 = load i64* %RAX_val, !mcsema_real_eip !119
  %uadd354 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %876, i64 %877)
  %878 = extractvalue { i64, i1 } %uadd354, 0
  %879 = xor i64 %878, %877, !mcsema_real_eip !119
  %880 = xor i64 %879, %876, !mcsema_real_eip !119
  %881 = and i64 %880, 16, !mcsema_real_eip !119
  %882 = icmp ne i64 %881, 0, !mcsema_real_eip !119
  store i1 %882, i1* %AF_val, !mcsema_real_eip !119
  %883 = icmp slt i64 %878, 0
  store i1 %883, i1* %SF_val, !mcsema_real_eip !119
  %884 = icmp eq i64 %878, 0, !mcsema_real_eip !119
  store i1 %884, i1* %ZF_val, !mcsema_real_eip !119
  %885 = xor i64 %877, -9223372036854775808, !mcsema_real_eip !119
  %886 = xor i64 %885, %876, !mcsema_real_eip !119
  %887 = and i64 %879, %886, !mcsema_real_eip !119
  %888 = icmp slt i64 %887, 0
  store i1 %888, i1* %OF_val, !mcsema_real_eip !119
  %889 = trunc i64 %878 to i8, !mcsema_real_eip !119
  %890 = tail call i8 @llvm.ctpop.i8(i8 %889), !mcsema_real_eip !119
  %891 = and i8 %890, 1
  %892 = icmp eq i8 %891, 0
  store i1 %892, i1* %PF_val, !mcsema_real_eip !119
  %893 = extractvalue { i64, i1 } %uadd354, 1
  store i1 %893, i1* %CF_val, !mcsema_real_eip !119
  store i64 %878, i64* %RAX_val, !mcsema_real_eip !119
  %894 = load i64* %RCX_val, !mcsema_real_eip !120
  %895 = add i64 %894, %878, !mcsema_real_eip !120
  %896 = inttoptr i64 %895 to i64*, !mcsema_real_eip !120
  %897 = bitcast i64* %896 to i8*
  %898 = load i8* %897, !mcsema_real_eip !120
  %899 = sext i8 %898 to i32, !mcsema_real_eip !120
  %900 = zext i32 %899 to i64, !mcsema_real_eip !120
  store i64 %900, i64* %RSI_val, !mcsema_real_eip !120
  %901 = add nsw i32 %899, -124
  %902 = xor i32 %901, %899, !mcsema_real_eip !121
  %903 = and i32 %902, 16
  %904 = icmp eq i32 %903, 0
  store i1 %904, i1* %AF_val, !mcsema_real_eip !121
  %905 = trunc i32 %901 to i8, !mcsema_real_eip !121
  %906 = tail call i8 @llvm.ctpop.i8(i8 %905), !mcsema_real_eip !121
  %907 = and i8 %906, 1
  %908 = icmp eq i8 %907, 0
  store i1 %908, i1* %PF_val, !mcsema_real_eip !121
  %909 = icmp eq i32 %901, 0, !mcsema_real_eip !121
  store i1 %909, i1* %ZF_val, !mcsema_real_eip !121
  %910 = icmp slt i32 %901, 0
  store i1 %910, i1* %SF_val, !mcsema_real_eip !121
  %911 = icmp ult i8 %898, 124
  store i1 %911, i1* %CF_val, !mcsema_real_eip !121
  %912 = and i32 %902, %899, !mcsema_real_eip !121
  %913 = icmp slt i32 %912, 0
  store i1 %913, i1* %OF_val, !mcsema_real_eip !121
  %914 = load i1* %ZF_val, !mcsema_real_eip !122
  br i1 %914, label %block_0x2f1, label %block_0x30b, !mcsema_real_eip !122

block_0x34d:                                      ; preds = %block_0x323, %block_0x30b, %block_0x317
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !123
  %915 = load i64* %RBP_val, !mcsema_real_eip !124
  %916 = add i64 %915, -20, !mcsema_real_eip !124
  %917 = inttoptr i64 %916 to i64*, !mcsema_real_eip !124
  %918 = bitcast i64* %917 to i32*
  %919 = load i32* %918, !mcsema_real_eip !124
  %920 = sext i32 %919 to i64, !mcsema_real_eip !124
  store i64 %920, i64* %RCX_val, !mcsema_real_eip !124
  %921 = load i64* %RBP_val, !mcsema_real_eip !125
  %922 = add i64 %921, -24, !mcsema_real_eip !125
  %923 = inttoptr i64 %922 to i64*, !mcsema_real_eip !125
  %924 = bitcast i64* %923 to i32*
  %925 = load i32* %924, !mcsema_real_eip !125
  %926 = sext i32 %925 to i64, !mcsema_real_eip !125
  %927 = mul i64 %926, 11, !mcsema_real_eip !126
  store i64 %927, i64* %RDX_val, !mcsema_real_eip !126
  %928 = load i64* %RAX_val, !mcsema_real_eip !127
  %uadd366 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %927, i64 %928)
  %929 = extractvalue { i64, i1 } %uadd366, 0
  %930 = xor i64 %929, %928, !mcsema_real_eip !127
  %931 = xor i64 %930, %927, !mcsema_real_eip !127
  %932 = and i64 %931, 16, !mcsema_real_eip !127
  %933 = icmp ne i64 %932, 0, !mcsema_real_eip !127
  store i1 %933, i1* %AF_val, !mcsema_real_eip !127
  %934 = icmp slt i64 %929, 0
  store i1 %934, i1* %SF_val, !mcsema_real_eip !127
  %935 = icmp eq i64 %929, 0, !mcsema_real_eip !127
  store i1 %935, i1* %ZF_val, !mcsema_real_eip !127
  %936 = xor i64 %928, -9223372036854775808, !mcsema_real_eip !127
  %937 = xor i64 %936, %927, !mcsema_real_eip !127
  %938 = and i64 %930, %937, !mcsema_real_eip !127
  %939 = icmp slt i64 %938, 0
  store i1 %939, i1* %OF_val, !mcsema_real_eip !127
  %940 = trunc i64 %929 to i8, !mcsema_real_eip !127
  %941 = tail call i8 @llvm.ctpop.i8(i8 %940), !mcsema_real_eip !127
  %942 = and i8 %941, 1
  %943 = icmp eq i8 %942, 0
  store i1 %943, i1* %PF_val, !mcsema_real_eip !127
  %944 = extractvalue { i64, i1 } %uadd366, 1
  store i1 %944, i1* %CF_val, !mcsema_real_eip !127
  store i64 %929, i64* %RAX_val, !mcsema_real_eip !127
  %945 = load i64* %RCX_val, !mcsema_real_eip !128
  %946 = add i64 %945, %929, !mcsema_real_eip !128
  %947 = inttoptr i64 %946 to i64*, !mcsema_real_eip !128
  %948 = bitcast i64* %947 to i8*
  store i8 88, i8* %948, !mcsema_real_eip !128
  %949 = load i64* %RSP_val, !mcsema_real_eip !129
  %950 = add i64 %949, -8
  %951 = inttoptr i64 %950 to i64*, !mcsema_real_eip !129
  store i64 -4981261766360305936, i64* %951, !mcsema_real_eip !129
  store i64 %950, i64* %RSP_val, !mcsema_real_eip !129
  %952 = load i64* %RAX_val, !mcsema_real_eip !129
  store i64 %952, i64* %RAX, !mcsema_real_eip !129
  %953 = load i64* %RBX_val, !mcsema_real_eip !129
  store i64 %953, i64* %RBX, !mcsema_real_eip !129
  %954 = load i64* %RCX_val, !mcsema_real_eip !129
  store i64 %954, i64* %RCX, !mcsema_real_eip !129
  %955 = load i64* %RDX_val, !mcsema_real_eip !129
  store i64 %955, i64* %RDX, !mcsema_real_eip !129
  %956 = load i64* %RSI_val, !mcsema_real_eip !129
  store i64 %956, i64* %RSI, !mcsema_real_eip !129
  %957 = load i64* %RDI_val, !mcsema_real_eip !129
  store i64 %957, i64* %RDI, !mcsema_real_eip !129
  %958 = load i64* %RSP_val, !mcsema_real_eip !129
  store i64 %958, i64* %RSP, !mcsema_real_eip !129
  %959 = load i64* %RBP_val, !mcsema_real_eip !129
  store i64 %959, i64* %RBP, !mcsema_real_eip !129
  %960 = load i64* %R8_val, !mcsema_real_eip !129
  store i64 %960, i64* %R8, !mcsema_real_eip !129
  %961 = load i64* %R9_val, !mcsema_real_eip !129
  store i64 %961, i64* %R9, !mcsema_real_eip !129
  %962 = load i64* %R10_val, !mcsema_real_eip !129
  store i64 %962, i64* %R10, !mcsema_real_eip !129
  %963 = load i64* %R11_val, !mcsema_real_eip !129
  store i64 %963, i64* %R11, !mcsema_real_eip !129
  %964 = load i64* %R12_val, !mcsema_real_eip !129
  store i64 %964, i64* %R12, !mcsema_real_eip !129
  %965 = load i64* %R13_val, !mcsema_real_eip !129
  store i64 %965, i64* %R13, !mcsema_real_eip !129
  %966 = load i64* %R14_val, !mcsema_real_eip !129
  store i64 %966, i64* %R14, !mcsema_real_eip !129
  %967 = load i64* %R15_val, !mcsema_real_eip !129
  store i64 %967, i64* %R15, !mcsema_real_eip !129
  %968 = load i64* %RIP_val, !mcsema_real_eip !129
  store i64 %968, i64* %RIP, !mcsema_real_eip !129
  %969 = load i1* %CF_val, !mcsema_real_eip !129
  store i1 %969, i1* %CF, align 1, !mcsema_real_eip !129
  %970 = load i1* %PF_val, !mcsema_real_eip !129
  store i1 %970, i1* %PF, align 1, !mcsema_real_eip !129
  %971 = load i1* %AF_val, !mcsema_real_eip !129
  store i1 %971, i1* %AF, align 1, !mcsema_real_eip !129
  %972 = load i1* %ZF_val, !mcsema_real_eip !129
  store i1 %972, i1* %ZF, align 1, !mcsema_real_eip !129
  %973 = load i1* %SF_val, !mcsema_real_eip !129
  store i1 %973, i1* %SF, align 1, !mcsema_real_eip !129
  %974 = load i1* %OF_val, !mcsema_real_eip !129
  store i1 %974, i1* %OF, align 1, !mcsema_real_eip !129
  %975 = load i1* %DF_val, !mcsema_real_eip !129
  store i1 %975, i1* %DF, align 1, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !129
  %976 = load i1* %FPU_B_val, !mcsema_real_eip !129
  store i1 %976, i1* %FPU_B, align 1, !mcsema_real_eip !129
  %977 = load i1* %FPU_C3_val, !mcsema_real_eip !129
  store i1 %977, i1* %FPU_C3, align 1, !mcsema_real_eip !129
  %978 = load i3* %FPU_TOP_val, !mcsema_real_eip !129
  store i3 %978, i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  %979 = load i1* %FPU_C2_val, !mcsema_real_eip !129
  store i1 %979, i1* %FPU_C2, align 1, !mcsema_real_eip !129
  %980 = load i1* %FPU_C1_val, !mcsema_real_eip !129
  store i1 %980, i1* %FPU_C1, align 1, !mcsema_real_eip !129
  %981 = load i1* %FPU_C0_val, !mcsema_real_eip !129
  store i1 %981, i1* %FPU_C0, align 1, !mcsema_real_eip !129
  %982 = load i1* %FPU_ES_val, !mcsema_real_eip !129
  store i1 %982, i1* %FPU_ES, align 1, !mcsema_real_eip !129
  %983 = load i1* %FPU_SF_val, !mcsema_real_eip !129
  store i1 %983, i1* %FPU_SF, align 1, !mcsema_real_eip !129
  %984 = load i1* %FPU_PE_val, !mcsema_real_eip !129
  store i1 %984, i1* %FPU_PE, align 1, !mcsema_real_eip !129
  %985 = load i1* %FPU_UE_val, !mcsema_real_eip !129
  store i1 %985, i1* %FPU_UE, align 1, !mcsema_real_eip !129
  %986 = load i1* %FPU_OE_val, !mcsema_real_eip !129
  store i1 %986, i1* %FPU_OE, align 1, !mcsema_real_eip !129
  %987 = load i1* %FPU_ZE_val, !mcsema_real_eip !129
  store i1 %987, i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  %988 = load i1* %FPU_DE_val, !mcsema_real_eip !129
  store i1 %988, i1* %FPU_DE, align 1, !mcsema_real_eip !129
  %989 = load i1* %FPU_IE_val, !mcsema_real_eip !129
  store i1 %989, i1* %FPU_IE, align 1, !mcsema_real_eip !129
  %990 = load i1* %FPU_X_val, !mcsema_real_eip !129
  store i1 %990, i1* %FPU_X, align 1, !mcsema_real_eip !129
  %991 = load i2* %FPU_RC_val, !mcsema_real_eip !129
  store i2 %991, i2* %FPU_RC, align 1, !mcsema_real_eip !129
  %992 = load i2* %FPU_PC_val, !mcsema_real_eip !129
  store i2 %992, i2* %FPU_PC, align 1, !mcsema_real_eip !129
  %993 = load i1* %FPU_PM_val, !mcsema_real_eip !129
  store i1 %993, i1* %FPU_PM, align 1, !mcsema_real_eip !129
  %994 = load i1* %FPU_UM_val, !mcsema_real_eip !129
  store i1 %994, i1* %FPU_UM, align 1, !mcsema_real_eip !129
  %995 = load i1* %FPU_OM_val, !mcsema_real_eip !129
  store i1 %995, i1* %FPU_OM, align 1, !mcsema_real_eip !129
  %996 = load i1* %FPU_ZM_val, !mcsema_real_eip !129
  store i1 %996, i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  %997 = load i1* %FPU_DM_val, !mcsema_real_eip !129
  store i1 %997, i1* %FPU_DM, align 1, !mcsema_real_eip !129
  %998 = load i1* %FPU_IM_val, !mcsema_real_eip !129
  store i1 %998, i1* %FPU_IM, align 1, !mcsema_real_eip !129
  %999 = load i64* %53, align 4
  store i64 %999, i64* %52, align 4
  %1000 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  store i16 %1000, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  %1001 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  store i64 %1001, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !129
  %1002 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  store i16 %1002, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  %1003 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  store i64 %1003, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !129
  %1004 = load i128* %XMM0_val, !mcsema_real_eip !129
  store i128 %1004, i128* %XMM0, align 1, !mcsema_real_eip !129
  %1005 = load i128* %XMM1_val, !mcsema_real_eip !129
  store i128 %1005, i128* %XMM1, align 1, !mcsema_real_eip !129
  %1006 = load i128* %XMM2_val, !mcsema_real_eip !129
  store i128 %1006, i128* %XMM2, align 1, !mcsema_real_eip !129
  %1007 = load i128* %XMM3_val, !mcsema_real_eip !129
  store i128 %1007, i128* %XMM3, align 1, !mcsema_real_eip !129
  %1008 = load i128* %XMM4_val, !mcsema_real_eip !129
  store i128 %1008, i128* %XMM4, align 1, !mcsema_real_eip !129
  %1009 = load i128* %XMM5_val, !mcsema_real_eip !129
  store i128 %1009, i128* %XMM5, align 1, !mcsema_real_eip !129
  %1010 = load i128* %XMM6_val, !mcsema_real_eip !129
  store i128 %1010, i128* %XMM6, align 1, !mcsema_real_eip !129
  %1011 = load i128* %XMM7_val, !mcsema_real_eip !129
  store i128 %1011, i128* %XMM7, align 1, !mcsema_real_eip !129
  %1012 = load i128* %XMM8_val, !mcsema_real_eip !129
  store i128 %1012, i128* %XMM8, align 1, !mcsema_real_eip !129
  %1013 = load i128* %XMM9_val, !mcsema_real_eip !129
  store i128 %1013, i128* %XMM9, align 1, !mcsema_real_eip !129
  %1014 = load i128* %XMM10_val, !mcsema_real_eip !129
  store i128 %1014, i128* %XMM10, align 1, !mcsema_real_eip !129
  %1015 = load i128* %XMM11_val, !mcsema_real_eip !129
  store i128 %1015, i128* %XMM11, align 1, !mcsema_real_eip !129
  %1016 = load i128* %XMM12_val, !mcsema_real_eip !129
  store i128 %1016, i128* %XMM12, align 1, !mcsema_real_eip !129
  %1017 = load i128* %XMM13_val, !mcsema_real_eip !129
  store i128 %1017, i128* %XMM13, align 1, !mcsema_real_eip !129
  %1018 = load i128* %XMM14_val, !mcsema_real_eip !129
  store i128 %1018, i128* %XMM14, align 1, !mcsema_real_eip !129
  %1019 = load i128* %XMM15_val, !mcsema_real_eip !129
  store i128 %1019, i128* %XMM15, align 1, !mcsema_real_eip !129
  %1020 = load i64* %STACK_BASE_val, !mcsema_real_eip !129
  store i64 %1020, i64* %STACK_BASE, align 1, !mcsema_real_eip !129
  %1021 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 %1021, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !129
  call void @sub_01(%struct.regs* %0, i64 %_local_stack_end_)
  %1022 = load i64* %RAX, !mcsema_real_eip !129
  store i64 %1022, i64* %RAX_val, !mcsema_real_eip !129
  %1023 = load i64* %RBX, !mcsema_real_eip !129
  store i64 %1023, i64* %RBX_val, !mcsema_real_eip !129
  %1024 = load i64* %RCX, !mcsema_real_eip !129
  store i64 %1024, i64* %RCX_val, !mcsema_real_eip !129
  %1025 = load i64* %RDX, !mcsema_real_eip !129
  store i64 %1025, i64* %RDX_val, !mcsema_real_eip !129
  %1026 = load i64* %RSI, !mcsema_real_eip !129
  store i64 %1026, i64* %RSI_val, !mcsema_real_eip !129
  %1027 = load i64* %RDI, !mcsema_real_eip !129
  store i64 %1027, i64* %RDI_val, !mcsema_real_eip !129
  %1028 = load i64* %RSP, !mcsema_real_eip !129
  store i64 %1028, i64* %RSP_val, !mcsema_real_eip !129
  %1029 = load i64* %RBP, !mcsema_real_eip !129
  store i64 %1029, i64* %RBP_val, !mcsema_real_eip !129
  %1030 = load i64* %R8, !mcsema_real_eip !129
  store i64 %1030, i64* %R8_val, !mcsema_real_eip !129
  %1031 = load i64* %R9, !mcsema_real_eip !129
  store i64 %1031, i64* %R9_val, !mcsema_real_eip !129
  %1032 = load i64* %R10, !mcsema_real_eip !129
  store i64 %1032, i64* %R10_val, !mcsema_real_eip !129
  %1033 = load i64* %R11, !mcsema_real_eip !129
  store i64 %1033, i64* %R11_val, !mcsema_real_eip !129
  %1034 = load i64* %R12, !mcsema_real_eip !129
  store i64 %1034, i64* %R12_val, !mcsema_real_eip !129
  %1035 = load i64* %R13, !mcsema_real_eip !129
  store i64 %1035, i64* %R13_val, !mcsema_real_eip !129
  %1036 = load i64* %R14, !mcsema_real_eip !129
  store i64 %1036, i64* %R14_val, !mcsema_real_eip !129
  %1037 = load i64* %R15, !mcsema_real_eip !129
  store i64 %1037, i64* %R15_val, !mcsema_real_eip !129
  %1038 = load i64* %RIP, !mcsema_real_eip !129
  store i64 %1038, i64* %RIP_val, !mcsema_real_eip !129
  %1039 = load i1* %CF, align 1, !mcsema_real_eip !129
  store i1 %1039, i1* %CF_val, !mcsema_real_eip !129
  %1040 = load i1* %PF, align 1, !mcsema_real_eip !129
  store i1 %1040, i1* %PF_val, !mcsema_real_eip !129
  %1041 = load i1* %AF, align 1, !mcsema_real_eip !129
  store i1 %1041, i1* %AF_val, !mcsema_real_eip !129
  %1042 = load i1* %ZF, align 1, !mcsema_real_eip !129
  store i1 %1042, i1* %ZF_val, !mcsema_real_eip !129
  %1043 = load i1* %SF, align 1, !mcsema_real_eip !129
  store i1 %1043, i1* %SF_val, !mcsema_real_eip !129
  %1044 = load i1* %OF, align 1, !mcsema_real_eip !129
  store i1 %1044, i1* %OF_val, !mcsema_real_eip !129
  %1045 = load i1* %DF, align 1, !mcsema_real_eip !129
  store i1 %1045, i1* %DF_val, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !129
  %1046 = load i1* %FPU_B, align 1, !mcsema_real_eip !129
  store i1 %1046, i1* %FPU_B_val, !mcsema_real_eip !129
  %1047 = load i1* %FPU_C3, align 1, !mcsema_real_eip !129
  store i1 %1047, i1* %FPU_C3_val, !mcsema_real_eip !129
  %1048 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  store i3 %1048, i3* %FPU_TOP_val, !mcsema_real_eip !129
  %1049 = load i1* %FPU_C2, align 1, !mcsema_real_eip !129
  store i1 %1049, i1* %FPU_C2_val, !mcsema_real_eip !129
  %1050 = load i1* %FPU_C1, align 1, !mcsema_real_eip !129
  store i1 %1050, i1* %FPU_C1_val, !mcsema_real_eip !129
  %1051 = load i1* %FPU_C0, align 1, !mcsema_real_eip !129
  store i1 %1051, i1* %FPU_C0_val, !mcsema_real_eip !129
  %1052 = load i1* %FPU_ES, align 1, !mcsema_real_eip !129
  store i1 %1052, i1* %FPU_ES_val, !mcsema_real_eip !129
  %1053 = load i1* %FPU_SF, align 1, !mcsema_real_eip !129
  store i1 %1053, i1* %FPU_SF_val, !mcsema_real_eip !129
  %1054 = load i1* %FPU_PE, align 1, !mcsema_real_eip !129
  store i1 %1054, i1* %FPU_PE_val, !mcsema_real_eip !129
  %1055 = load i1* %FPU_UE, align 1, !mcsema_real_eip !129
  store i1 %1055, i1* %FPU_UE_val, !mcsema_real_eip !129
  %1056 = load i1* %FPU_OE, align 1, !mcsema_real_eip !129
  store i1 %1056, i1* %FPU_OE_val, !mcsema_real_eip !129
  %1057 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  store i1 %1057, i1* %FPU_ZE_val, !mcsema_real_eip !129
  %1058 = load i1* %FPU_DE, align 1, !mcsema_real_eip !129
  store i1 %1058, i1* %FPU_DE_val, !mcsema_real_eip !129
  %1059 = load i1* %FPU_IE, align 1, !mcsema_real_eip !129
  store i1 %1059, i1* %FPU_IE_val, !mcsema_real_eip !129
  %1060 = load i1* %FPU_X, align 1, !mcsema_real_eip !129
  store i1 %1060, i1* %FPU_X_val, !mcsema_real_eip !129
  %1061 = load i2* %FPU_RC, align 1, !mcsema_real_eip !129
  store i2 %1061, i2* %FPU_RC_val, !mcsema_real_eip !129
  %1062 = load i2* %FPU_PC, align 1, !mcsema_real_eip !129
  store i2 %1062, i2* %FPU_PC_val, !mcsema_real_eip !129
  %1063 = load i1* %FPU_PM, align 1, !mcsema_real_eip !129
  store i1 %1063, i1* %FPU_PM_val, !mcsema_real_eip !129
  %1064 = load i1* %FPU_UM, align 1, !mcsema_real_eip !129
  store i1 %1064, i1* %FPU_UM_val, !mcsema_real_eip !129
  %1065 = load i1* %FPU_OM, align 1, !mcsema_real_eip !129
  store i1 %1065, i1* %FPU_OM_val, !mcsema_real_eip !129
  %1066 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  store i1 %1066, i1* %FPU_ZM_val, !mcsema_real_eip !129
  %1067 = load i1* %FPU_DM, align 1, !mcsema_real_eip !129
  store i1 %1067, i1* %FPU_DM_val, !mcsema_real_eip !129
  %1068 = load i1* %FPU_IM, align 1, !mcsema_real_eip !129
  store i1 %1068, i1* %FPU_IM_val, !mcsema_real_eip !129
  %1069 = load i64* %52, align 4
  store i64 %1069, i64* %53, align 4
  %1070 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  store i16 %1070, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  %1071 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !129
  store i64 %1071, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  %1072 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  store i16 %1072, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  %1073 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !129
  store i64 %1073, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  %1074 = load i128* %XMM0, align 1, !mcsema_real_eip !129
  store i128 %1074, i128* %XMM0_val, !mcsema_real_eip !129
  %1075 = load i128* %XMM1, align 1, !mcsema_real_eip !129
  store i128 %1075, i128* %XMM1_val, !mcsema_real_eip !129
  %1076 = load i128* %XMM2, align 1, !mcsema_real_eip !129
  store i128 %1076, i128* %XMM2_val, !mcsema_real_eip !129
  %1077 = load i128* %XMM3, align 1, !mcsema_real_eip !129
  store i128 %1077, i128* %XMM3_val, !mcsema_real_eip !129
  %1078 = load i128* %XMM4, align 1, !mcsema_real_eip !129
  store i128 %1078, i128* %XMM4_val, !mcsema_real_eip !129
  %1079 = load i128* %XMM5, align 1, !mcsema_real_eip !129
  store i128 %1079, i128* %XMM5_val, !mcsema_real_eip !129
  %1080 = load i128* %XMM6, align 1, !mcsema_real_eip !129
  store i128 %1080, i128* %XMM6_val, !mcsema_real_eip !129
  %1081 = load i128* %XMM7, align 1, !mcsema_real_eip !129
  store i128 %1081, i128* %XMM7_val, !mcsema_real_eip !129
  %1082 = load i128* %XMM8, align 1, !mcsema_real_eip !129
  store i128 %1082, i128* %XMM8_val, !mcsema_real_eip !129
  %1083 = load i128* %XMM9, align 1, !mcsema_real_eip !129
  store i128 %1083, i128* %XMM9_val, !mcsema_real_eip !129
  %1084 = load i128* %XMM10, align 1, !mcsema_real_eip !129
  store i128 %1084, i128* %XMM10_val, !mcsema_real_eip !129
  %1085 = load i128* %XMM11, align 1, !mcsema_real_eip !129
  store i128 %1085, i128* %XMM11_val, !mcsema_real_eip !129
  %1086 = load i128* %XMM12, align 1, !mcsema_real_eip !129
  store i128 %1086, i128* %XMM12_val, !mcsema_real_eip !129
  %1087 = load i128* %XMM13, align 1, !mcsema_real_eip !129
  store i128 %1087, i128* %XMM13_val, !mcsema_real_eip !129
  %1088 = load i128* %XMM14, align 1, !mcsema_real_eip !129
  store i128 %1088, i128* %XMM14_val, !mcsema_real_eip !129
  %1089 = load i128* %XMM15, align 1, !mcsema_real_eip !129
  store i128 %1089, i128* %XMM15_val, !mcsema_real_eip !129
  %1090 = load i64* %STACK_BASE, !mcsema_real_eip !129
  store i64 %1090, i64* %STACK_BASE_val, !mcsema_real_eip !129
  %1091 = load i64* %STACK_LIMIT, !mcsema_real_eip !129
  store i64 %1091, i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 1, i64* %RDI_val, !mcsema_real_eip !130
  %1092 = load i64* %RBP_val, !mcsema_real_eip !131
  %1093 = add i64 %1092, -36, !mcsema_real_eip !131
  %1094 = inttoptr i64 %1093 to i64*, !mcsema_real_eip !131
  %1095 = bitcast i64* %1094 to i32*
  %1096 = load i32* %1095, !mcsema_real_eip !131
  %uadd367 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1096, i32 1)
  %1097 = extractvalue { i32, i1 } %uadd367, 0
  %1098 = xor i32 %1097, %1096, !mcsema_real_eip !132
  %1099 = and i32 %1098, 16, !mcsema_real_eip !132
  %1100 = icmp ne i32 %1099, 0, !mcsema_real_eip !132
  store i1 %1100, i1* %AF_val, !mcsema_real_eip !132
  %1101 = icmp slt i32 %1097, 0
  store i1 %1101, i1* %SF_val, !mcsema_real_eip !132
  %1102 = icmp eq i32 %1097, 0, !mcsema_real_eip !132
  store i1 %1102, i1* %ZF_val, !mcsema_real_eip !132
  %1103 = xor i32 %1096, -2147483648, !mcsema_real_eip !132
  %1104 = and i32 %1098, %1103, !mcsema_real_eip !132
  %1105 = icmp slt i32 %1104, 0
  store i1 %1105, i1* %OF_val, !mcsema_real_eip !132
  %1106 = trunc i32 %1097 to i8, !mcsema_real_eip !132
  %1107 = tail call i8 @llvm.ctpop.i8(i8 %1106), !mcsema_real_eip !132
  %1108 = and i8 %1107, 1
  %1109 = icmp eq i8 %1108, 0
  store i1 %1109, i1* %PF_val, !mcsema_real_eip !132
  %1110 = extractvalue { i32, i1 } %uadd367, 1
  store i1 %1110, i1* %CF_val, !mcsema_real_eip !132
  %1111 = zext i32 %1097 to i64, !mcsema_real_eip !132
  store i64 %1111, i64* %RSI_val, !mcsema_real_eip !132
  %1112 = load i64* %RBP_val, !mcsema_real_eip !133
  %1113 = add i64 %1112, -36, !mcsema_real_eip !133
  %1114 = inttoptr i64 %1113 to i64*, !mcsema_real_eip !133
  %1115 = bitcast i64* %1114 to i32*
  store i32 %1097, i32* %1115, !mcsema_real_eip !133
  %1116 = load i64* %RDI_val, !mcsema_real_eip !134
  %1117 = tail call x86_64_sysvcc i64 @sleep(i64 %1116), !mcsema_real_eip !134
  store i64 %1117, i64* %RAX_val, !mcsema_real_eip !134
  %1118 = load i64* %RBP_val, !mcsema_real_eip !135
  %1119 = add i64 %1118, -120, !mcsema_real_eip !135
  %1120 = inttoptr i64 %1119 to i64*, !mcsema_real_eip !135
  %1121 = trunc i64 %1117 to i32, !mcsema_real_eip !135
  %1122 = bitcast i64* %1120 to i32*
  store i32 %1121, i32* %1122, !mcsema_real_eip !135
  br label %block_0x130, !mcsema_real_eip !136

block_0x323:                                      ; preds = %block_0x30b, %block_0x317
  %1123 = load i64* %RBP_val, !mcsema_real_eip !137
  %1124 = add i64 %1123, -32, !mcsema_real_eip !137
  %1125 = inttoptr i64 %1124 to i64*, !mcsema_real_eip !137
  %1126 = bitcast i64* %1125 to i32*
  %1127 = load i32* %1126, !mcsema_real_eip !137
  %1128 = zext i32 %1127 to i64, !mcsema_real_eip !137
  store i64 %1128, i64* %RAX_val, !mcsema_real_eip !137
  %1129 = load i64* %RBP_val, !mcsema_real_eip !138
  %1130 = add i64 %1129, -24, !mcsema_real_eip !138
  %1131 = inttoptr i64 %1130 to i64*, !mcsema_real_eip !138
  %1132 = bitcast i64* %1131 to i32*
  %1133 = load i32* %1132, !mcsema_real_eip !138
  %1134 = sub i32 %1127, %1133, !mcsema_real_eip !138
  %1135 = xor i32 %1134, %1127, !mcsema_real_eip !138
  %1136 = xor i32 %1135, %1133, !mcsema_real_eip !138
  %1137 = and i32 %1136, 16, !mcsema_real_eip !138
  %1138 = icmp ne i32 %1137, 0, !mcsema_real_eip !138
  store i1 %1138, i1* %AF_val, !mcsema_real_eip !138
  %1139 = trunc i32 %1134 to i8, !mcsema_real_eip !138
  %1140 = tail call i8 @llvm.ctpop.i8(i8 %1139), !mcsema_real_eip !138
  %1141 = and i8 %1140, 1
  %1142 = icmp eq i8 %1141, 0
  store i1 %1142, i1* %PF_val, !mcsema_real_eip !138
  %1143 = icmp eq i32 %1127, %1133
  store i1 %1143, i1* %ZF_val, !mcsema_real_eip !138
  %1144 = icmp slt i32 %1134, 0
  store i1 %1144, i1* %SF_val, !mcsema_real_eip !138
  %1145 = icmp ult i32 %1127, %1133, !mcsema_real_eip !138
  store i1 %1145, i1* %CF_val, !mcsema_real_eip !138
  %1146 = xor i32 %1133, %1127, !mcsema_real_eip !138
  %1147 = and i32 %1135, %1146, !mcsema_real_eip !138
  %1148 = icmp slt i32 %1147, 0
  store i1 %1148, i1* %OF_val, !mcsema_real_eip !138
  %1149 = load i1* %ZF_val, !mcsema_real_eip !139
  br i1 %1149, label %block_0x32f, label %block_0x34d, !mcsema_real_eip !139

block_0x2f1:                                      ; preds = %block_0x2c5
  %1150 = load i64* %RBP_val, !mcsema_real_eip !140
  %1151 = add i64 %1150, -20, !mcsema_real_eip !140
  %1152 = inttoptr i64 %1151 to i64*, !mcsema_real_eip !140
  %1153 = bitcast i64* %1152 to i32*
  %1154 = load i32* %1153, !mcsema_real_eip !140
  store i1 false, i1* %AF_val, !mcsema_real_eip !140
  %1155 = trunc i32 %1154 to i8, !mcsema_real_eip !140
  %1156 = tail call i8 @llvm.ctpop.i8(i8 %1155), !mcsema_real_eip !140
  %1157 = and i8 %1156, 1
  %1158 = icmp eq i8 %1157, 0
  store i1 %1158, i1* %PF_val, !mcsema_real_eip !140
  %1159 = icmp eq i32 %1154, 0, !mcsema_real_eip !140
  store i1 %1159, i1* %ZF_val, !mcsema_real_eip !140
  %1160 = icmp slt i32 %1154, 0
  store i1 %1160, i1* %SF_val, !mcsema_real_eip !140
  store i1 false, i1* %CF_val, !mcsema_real_eip !140
  store i1 false, i1* %OF_val, !mcsema_real_eip !140
  %1161 = icmp slt i32 %1154, 1
  br i1 %1161, label %block_0x30b, label %block_0x2fe, !mcsema_real_eip !141

block_0x32f:                                      ; preds = %block_0x323
  %1162 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85)), !mcsema_real_eip !142
  store i64 4294967294, i64* %RDI_val, !mcsema_real_eip !143
  %1163 = load i64* %RBP_val, !mcsema_real_eip !144
  %1164 = add i64 %1163, -116, !mcsema_real_eip !144
  %1165 = inttoptr i64 %1164 to i64*, !mcsema_real_eip !144
  %1166 = trunc i64 %1162 to i32, !mcsema_real_eip !144
  %1167 = bitcast i64* %1165 to i32*
  store i32 %1166, i32* %1167, !mcsema_real_eip !144
  %1168 = load i64* %RDI_val, !mcsema_real_eip !145
  %1169 = tail call x86_64_sysvcc i64 @exit(i64 %1168), !mcsema_real_eip !145
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !123
  %1170 = load i64* %RBP_val, !mcsema_real_eip !124
  %1171 = add i64 %1170, -20, !mcsema_real_eip !124
  %1172 = inttoptr i64 %1171 to i64*, !mcsema_real_eip !124
  %1173 = bitcast i64* %1172 to i32*
  %1174 = load i32* %1173, !mcsema_real_eip !124
  %1175 = sext i32 %1174 to i64, !mcsema_real_eip !124
  store i64 %1175, i64* %RCX_val, !mcsema_real_eip !124
  %1176 = load i64* %RBP_val, !mcsema_real_eip !125
  %1177 = add i64 %1176, -24, !mcsema_real_eip !125
  %1178 = inttoptr i64 %1177 to i64*, !mcsema_real_eip !125
  %1179 = bitcast i64* %1178 to i32*
  %1180 = load i32* %1179, !mcsema_real_eip !125
  %1181 = sext i32 %1180 to i64, !mcsema_real_eip !125
  %1182 = mul i64 %1181, 11, !mcsema_real_eip !126
  store i64 %1182, i64* %RDX_val, !mcsema_real_eip !126
  %1183 = load i64* %RAX_val, !mcsema_real_eip !127
  %uadd362 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1182, i64 %1183)
  %1184 = extractvalue { i64, i1 } %uadd362, 0
  %1185 = xor i64 %1184, %1183, !mcsema_real_eip !127
  %1186 = xor i64 %1185, %1182, !mcsema_real_eip !127
  %1187 = and i64 %1186, 16, !mcsema_real_eip !127
  %1188 = icmp ne i64 %1187, 0, !mcsema_real_eip !127
  store i1 %1188, i1* %AF_val, !mcsema_real_eip !127
  %1189 = icmp slt i64 %1184, 0
  store i1 %1189, i1* %SF_val, !mcsema_real_eip !127
  %1190 = icmp eq i64 %1184, 0, !mcsema_real_eip !127
  store i1 %1190, i1* %ZF_val, !mcsema_real_eip !127
  %1191 = xor i64 %1183, -9223372036854775808, !mcsema_real_eip !127
  %1192 = xor i64 %1191, %1182, !mcsema_real_eip !127
  %1193 = and i64 %1185, %1192, !mcsema_real_eip !127
  %1194 = icmp slt i64 %1193, 0
  store i1 %1194, i1* %OF_val, !mcsema_real_eip !127
  %1195 = trunc i64 %1184 to i8, !mcsema_real_eip !127
  %1196 = tail call i8 @llvm.ctpop.i8(i8 %1195), !mcsema_real_eip !127
  %1197 = and i8 %1196, 1
  %1198 = icmp eq i8 %1197, 0
  store i1 %1198, i1* %PF_val, !mcsema_real_eip !127
  %1199 = extractvalue { i64, i1 } %uadd362, 1
  store i1 %1199, i1* %CF_val, !mcsema_real_eip !127
  store i64 %1184, i64* %RAX_val, !mcsema_real_eip !127
  %1200 = load i64* %RCX_val, !mcsema_real_eip !128
  %1201 = add i64 %1200, %1184, !mcsema_real_eip !128
  %1202 = inttoptr i64 %1201 to i64*, !mcsema_real_eip !128
  %1203 = bitcast i64* %1202 to i8*
  store i8 88, i8* %1203, !mcsema_real_eip !128
  %1204 = load i64* %RSP_val, !mcsema_real_eip !129
  %1205 = add i64 %1204, -8
  %1206 = inttoptr i64 %1205 to i64*, !mcsema_real_eip !129
  store i64 -4981261766360305936, i64* %1206, !mcsema_real_eip !129
  store i64 %1205, i64* %RSP_val, !mcsema_real_eip !129
  %1207 = load i64* %RAX_val, !mcsema_real_eip !129
  store i64 %1207, i64* %RAX, !mcsema_real_eip !129
  %1208 = load i64* %RBX_val, !mcsema_real_eip !129
  store i64 %1208, i64* %RBX, !mcsema_real_eip !129
  %1209 = load i64* %RCX_val, !mcsema_real_eip !129
  store i64 %1209, i64* %RCX, !mcsema_real_eip !129
  %1210 = load i64* %RDX_val, !mcsema_real_eip !129
  store i64 %1210, i64* %RDX, !mcsema_real_eip !129
  %1211 = load i64* %RSI_val, !mcsema_real_eip !129
  store i64 %1211, i64* %RSI, !mcsema_real_eip !129
  %1212 = load i64* %RDI_val, !mcsema_real_eip !129
  store i64 %1212, i64* %RDI, !mcsema_real_eip !129
  %1213 = load i64* %RSP_val, !mcsema_real_eip !129
  store i64 %1213, i64* %RSP, !mcsema_real_eip !129
  %1214 = load i64* %RBP_val, !mcsema_real_eip !129
  store i64 %1214, i64* %RBP, !mcsema_real_eip !129
  %1215 = load i64* %R8_val, !mcsema_real_eip !129
  store i64 %1215, i64* %R8, !mcsema_real_eip !129
  %1216 = load i64* %R9_val, !mcsema_real_eip !129
  store i64 %1216, i64* %R9, !mcsema_real_eip !129
  %1217 = load i64* %R10_val, !mcsema_real_eip !129
  store i64 %1217, i64* %R10, !mcsema_real_eip !129
  %1218 = load i64* %R11_val, !mcsema_real_eip !129
  store i64 %1218, i64* %R11, !mcsema_real_eip !129
  %1219 = load i64* %R12_val, !mcsema_real_eip !129
  store i64 %1219, i64* %R12, !mcsema_real_eip !129
  %1220 = load i64* %R13_val, !mcsema_real_eip !129
  store i64 %1220, i64* %R13, !mcsema_real_eip !129
  %1221 = load i64* %R14_val, !mcsema_real_eip !129
  store i64 %1221, i64* %R14, !mcsema_real_eip !129
  %1222 = load i64* %R15_val, !mcsema_real_eip !129
  store i64 %1222, i64* %R15, !mcsema_real_eip !129
  %1223 = load i64* %RIP_val, !mcsema_real_eip !129
  store i64 %1223, i64* %RIP, !mcsema_real_eip !129
  %1224 = load i1* %CF_val, !mcsema_real_eip !129
  store i1 %1224, i1* %CF, align 1, !mcsema_real_eip !129
  %1225 = load i1* %PF_val, !mcsema_real_eip !129
  store i1 %1225, i1* %PF, align 1, !mcsema_real_eip !129
  %1226 = load i1* %AF_val, !mcsema_real_eip !129
  store i1 %1226, i1* %AF, align 1, !mcsema_real_eip !129
  %1227 = load i1* %ZF_val, !mcsema_real_eip !129
  store i1 %1227, i1* %ZF, align 1, !mcsema_real_eip !129
  %1228 = load i1* %SF_val, !mcsema_real_eip !129
  store i1 %1228, i1* %SF, align 1, !mcsema_real_eip !129
  %1229 = load i1* %OF_val, !mcsema_real_eip !129
  store i1 %1229, i1* %OF, align 1, !mcsema_real_eip !129
  %1230 = load i1* %DF_val, !mcsema_real_eip !129
  store i1 %1230, i1* %DF, align 1, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !129
  %1231 = load i1* %FPU_B_val, !mcsema_real_eip !129
  store i1 %1231, i1* %FPU_B, align 1, !mcsema_real_eip !129
  %1232 = load i1* %FPU_C3_val, !mcsema_real_eip !129
  store i1 %1232, i1* %FPU_C3, align 1, !mcsema_real_eip !129
  %1233 = load i3* %FPU_TOP_val, !mcsema_real_eip !129
  store i3 %1233, i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  %1234 = load i1* %FPU_C2_val, !mcsema_real_eip !129
  store i1 %1234, i1* %FPU_C2, align 1, !mcsema_real_eip !129
  %1235 = load i1* %FPU_C1_val, !mcsema_real_eip !129
  store i1 %1235, i1* %FPU_C1, align 1, !mcsema_real_eip !129
  %1236 = load i1* %FPU_C0_val, !mcsema_real_eip !129
  store i1 %1236, i1* %FPU_C0, align 1, !mcsema_real_eip !129
  %1237 = load i1* %FPU_ES_val, !mcsema_real_eip !129
  store i1 %1237, i1* %FPU_ES, align 1, !mcsema_real_eip !129
  %1238 = load i1* %FPU_SF_val, !mcsema_real_eip !129
  store i1 %1238, i1* %FPU_SF, align 1, !mcsema_real_eip !129
  %1239 = load i1* %FPU_PE_val, !mcsema_real_eip !129
  store i1 %1239, i1* %FPU_PE, align 1, !mcsema_real_eip !129
  %1240 = load i1* %FPU_UE_val, !mcsema_real_eip !129
  store i1 %1240, i1* %FPU_UE, align 1, !mcsema_real_eip !129
  %1241 = load i1* %FPU_OE_val, !mcsema_real_eip !129
  store i1 %1241, i1* %FPU_OE, align 1, !mcsema_real_eip !129
  %1242 = load i1* %FPU_ZE_val, !mcsema_real_eip !129
  store i1 %1242, i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  %1243 = load i1* %FPU_DE_val, !mcsema_real_eip !129
  store i1 %1243, i1* %FPU_DE, align 1, !mcsema_real_eip !129
  %1244 = load i1* %FPU_IE_val, !mcsema_real_eip !129
  store i1 %1244, i1* %FPU_IE, align 1, !mcsema_real_eip !129
  %1245 = load i1* %FPU_X_val, !mcsema_real_eip !129
  store i1 %1245, i1* %FPU_X, align 1, !mcsema_real_eip !129
  %1246 = load i2* %FPU_RC_val, !mcsema_real_eip !129
  store i2 %1246, i2* %FPU_RC, align 1, !mcsema_real_eip !129
  %1247 = load i2* %FPU_PC_val, !mcsema_real_eip !129
  store i2 %1247, i2* %FPU_PC, align 1, !mcsema_real_eip !129
  %1248 = load i1* %FPU_PM_val, !mcsema_real_eip !129
  store i1 %1248, i1* %FPU_PM, align 1, !mcsema_real_eip !129
  %1249 = load i1* %FPU_UM_val, !mcsema_real_eip !129
  store i1 %1249, i1* %FPU_UM, align 1, !mcsema_real_eip !129
  %1250 = load i1* %FPU_OM_val, !mcsema_real_eip !129
  store i1 %1250, i1* %FPU_OM, align 1, !mcsema_real_eip !129
  %1251 = load i1* %FPU_ZM_val, !mcsema_real_eip !129
  store i1 %1251, i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  %1252 = load i1* %FPU_DM_val, !mcsema_real_eip !129
  store i1 %1252, i1* %FPU_DM, align 1, !mcsema_real_eip !129
  %1253 = load i1* %FPU_IM_val, !mcsema_real_eip !129
  store i1 %1253, i1* %FPU_IM, align 1, !mcsema_real_eip !129
  %1254 = load i64* %53, align 4
  store i64 %1254, i64* %52, align 4
  %1255 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  store i16 %1255, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  %1256 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  store i64 %1256, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !129
  %1257 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  store i16 %1257, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  %1258 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  store i64 %1258, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !129
  %1259 = load i128* %XMM0_val, !mcsema_real_eip !129
  store i128 %1259, i128* %XMM0, align 1, !mcsema_real_eip !129
  %1260 = load i128* %XMM1_val, !mcsema_real_eip !129
  store i128 %1260, i128* %XMM1, align 1, !mcsema_real_eip !129
  %1261 = load i128* %XMM2_val, !mcsema_real_eip !129
  store i128 %1261, i128* %XMM2, align 1, !mcsema_real_eip !129
  %1262 = load i128* %XMM3_val, !mcsema_real_eip !129
  store i128 %1262, i128* %XMM3, align 1, !mcsema_real_eip !129
  %1263 = load i128* %XMM4_val, !mcsema_real_eip !129
  store i128 %1263, i128* %XMM4, align 1, !mcsema_real_eip !129
  %1264 = load i128* %XMM5_val, !mcsema_real_eip !129
  store i128 %1264, i128* %XMM5, align 1, !mcsema_real_eip !129
  %1265 = load i128* %XMM6_val, !mcsema_real_eip !129
  store i128 %1265, i128* %XMM6, align 1, !mcsema_real_eip !129
  %1266 = load i128* %XMM7_val, !mcsema_real_eip !129
  store i128 %1266, i128* %XMM7, align 1, !mcsema_real_eip !129
  %1267 = load i128* %XMM8_val, !mcsema_real_eip !129
  store i128 %1267, i128* %XMM8, align 1, !mcsema_real_eip !129
  %1268 = load i128* %XMM9_val, !mcsema_real_eip !129
  store i128 %1268, i128* %XMM9, align 1, !mcsema_real_eip !129
  %1269 = load i128* %XMM10_val, !mcsema_real_eip !129
  store i128 %1269, i128* %XMM10, align 1, !mcsema_real_eip !129
  %1270 = load i128* %XMM11_val, !mcsema_real_eip !129
  store i128 %1270, i128* %XMM11, align 1, !mcsema_real_eip !129
  %1271 = load i128* %XMM12_val, !mcsema_real_eip !129
  store i128 %1271, i128* %XMM12, align 1, !mcsema_real_eip !129
  %1272 = load i128* %XMM13_val, !mcsema_real_eip !129
  store i128 %1272, i128* %XMM13, align 1, !mcsema_real_eip !129
  %1273 = load i128* %XMM14_val, !mcsema_real_eip !129
  store i128 %1273, i128* %XMM14, align 1, !mcsema_real_eip !129
  %1274 = load i128* %XMM15_val, !mcsema_real_eip !129
  store i128 %1274, i128* %XMM15, align 1, !mcsema_real_eip !129
  %1275 = load i64* %STACK_BASE_val, !mcsema_real_eip !129
  store i64 %1275, i64* %STACK_BASE, align 1, !mcsema_real_eip !129
  %1276 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 %1276, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !129
  call void @sub_02(%struct.regs* %0, i64 %_local_stack_end_)
  %1277 = load i64* %RAX, !mcsema_real_eip !129
  store i64 %1277, i64* %RAX_val, !mcsema_real_eip !129
  %1278 = load i64* %RBX, !mcsema_real_eip !129
  store i64 %1278, i64* %RBX_val, !mcsema_real_eip !129
  %1279 = load i64* %RCX, !mcsema_real_eip !129
  store i64 %1279, i64* %RCX_val, !mcsema_real_eip !129
  %1280 = load i64* %RDX, !mcsema_real_eip !129
  store i64 %1280, i64* %RDX_val, !mcsema_real_eip !129
  %1281 = load i64* %RSI, !mcsema_real_eip !129
  store i64 %1281, i64* %RSI_val, !mcsema_real_eip !129
  %1282 = load i64* %RDI, !mcsema_real_eip !129
  store i64 %1282, i64* %RDI_val, !mcsema_real_eip !129
  %1283 = load i64* %RSP, !mcsema_real_eip !129
  store i64 %1283, i64* %RSP_val, !mcsema_real_eip !129
  %1284 = load i64* %RBP, !mcsema_real_eip !129
  store i64 %1284, i64* %RBP_val, !mcsema_real_eip !129
  %1285 = load i64* %R8, !mcsema_real_eip !129
  store i64 %1285, i64* %R8_val, !mcsema_real_eip !129
  %1286 = load i64* %R9, !mcsema_real_eip !129
  store i64 %1286, i64* %R9_val, !mcsema_real_eip !129
  %1287 = load i64* %R10, !mcsema_real_eip !129
  store i64 %1287, i64* %R10_val, !mcsema_real_eip !129
  %1288 = load i64* %R11, !mcsema_real_eip !129
  store i64 %1288, i64* %R11_val, !mcsema_real_eip !129
  %1289 = load i64* %R12, !mcsema_real_eip !129
  store i64 %1289, i64* %R12_val, !mcsema_real_eip !129
  %1290 = load i64* %R13, !mcsema_real_eip !129
  store i64 %1290, i64* %R13_val, !mcsema_real_eip !129
  %1291 = load i64* %R14, !mcsema_real_eip !129
  store i64 %1291, i64* %R14_val, !mcsema_real_eip !129
  %1292 = load i64* %R15, !mcsema_real_eip !129
  store i64 %1292, i64* %R15_val, !mcsema_real_eip !129
  %1293 = load i64* %RIP, !mcsema_real_eip !129
  store i64 %1293, i64* %RIP_val, !mcsema_real_eip !129
  %1294 = load i1* %CF, align 1, !mcsema_real_eip !129
  store i1 %1294, i1* %CF_val, !mcsema_real_eip !129
  %1295 = load i1* %PF, align 1, !mcsema_real_eip !129
  store i1 %1295, i1* %PF_val, !mcsema_real_eip !129
  %1296 = load i1* %AF, align 1, !mcsema_real_eip !129
  store i1 %1296, i1* %AF_val, !mcsema_real_eip !129
  %1297 = load i1* %ZF, align 1, !mcsema_real_eip !129
  store i1 %1297, i1* %ZF_val, !mcsema_real_eip !129
  %1298 = load i1* %SF, align 1, !mcsema_real_eip !129
  store i1 %1298, i1* %SF_val, !mcsema_real_eip !129
  %1299 = load i1* %OF, align 1, !mcsema_real_eip !129
  store i1 %1299, i1* %OF_val, !mcsema_real_eip !129
  %1300 = load i1* %DF, align 1, !mcsema_real_eip !129
  store i1 %1300, i1* %DF_val, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !129
  %1301 = load i1* %FPU_B, align 1, !mcsema_real_eip !129
  store i1 %1301, i1* %FPU_B_val, !mcsema_real_eip !129
  %1302 = load i1* %FPU_C3, align 1, !mcsema_real_eip !129
  store i1 %1302, i1* %FPU_C3_val, !mcsema_real_eip !129
  %1303 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  store i3 %1303, i3* %FPU_TOP_val, !mcsema_real_eip !129
  %1304 = load i1* %FPU_C2, align 1, !mcsema_real_eip !129
  store i1 %1304, i1* %FPU_C2_val, !mcsema_real_eip !129
  %1305 = load i1* %FPU_C1, align 1, !mcsema_real_eip !129
  store i1 %1305, i1* %FPU_C1_val, !mcsema_real_eip !129
  %1306 = load i1* %FPU_C0, align 1, !mcsema_real_eip !129
  store i1 %1306, i1* %FPU_C0_val, !mcsema_real_eip !129
  %1307 = load i1* %FPU_ES, align 1, !mcsema_real_eip !129
  store i1 %1307, i1* %FPU_ES_val, !mcsema_real_eip !129
  %1308 = load i1* %FPU_SF, align 1, !mcsema_real_eip !129
  store i1 %1308, i1* %FPU_SF_val, !mcsema_real_eip !129
  %1309 = load i1* %FPU_PE, align 1, !mcsema_real_eip !129
  store i1 %1309, i1* %FPU_PE_val, !mcsema_real_eip !129
  %1310 = load i1* %FPU_UE, align 1, !mcsema_real_eip !129
  store i1 %1310, i1* %FPU_UE_val, !mcsema_real_eip !129
  %1311 = load i1* %FPU_OE, align 1, !mcsema_real_eip !129
  store i1 %1311, i1* %FPU_OE_val, !mcsema_real_eip !129
  %1312 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  store i1 %1312, i1* %FPU_ZE_val, !mcsema_real_eip !129
  %1313 = load i1* %FPU_DE, align 1, !mcsema_real_eip !129
  store i1 %1313, i1* %FPU_DE_val, !mcsema_real_eip !129
  %1314 = load i1* %FPU_IE, align 1, !mcsema_real_eip !129
  store i1 %1314, i1* %FPU_IE_val, !mcsema_real_eip !129
  %1315 = load i1* %FPU_X, align 1, !mcsema_real_eip !129
  store i1 %1315, i1* %FPU_X_val, !mcsema_real_eip !129
  %1316 = load i2* %FPU_RC, align 1, !mcsema_real_eip !129
  store i2 %1316, i2* %FPU_RC_val, !mcsema_real_eip !129
  %1317 = load i2* %FPU_PC, align 1, !mcsema_real_eip !129
  store i2 %1317, i2* %FPU_PC_val, !mcsema_real_eip !129
  %1318 = load i1* %FPU_PM, align 1, !mcsema_real_eip !129
  store i1 %1318, i1* %FPU_PM_val, !mcsema_real_eip !129
  %1319 = load i1* %FPU_UM, align 1, !mcsema_real_eip !129
  store i1 %1319, i1* %FPU_UM_val, !mcsema_real_eip !129
  %1320 = load i1* %FPU_OM, align 1, !mcsema_real_eip !129
  store i1 %1320, i1* %FPU_OM_val, !mcsema_real_eip !129
  %1321 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  store i1 %1321, i1* %FPU_ZM_val, !mcsema_real_eip !129
  %1322 = load i1* %FPU_DM, align 1, !mcsema_real_eip !129
  store i1 %1322, i1* %FPU_DM_val, !mcsema_real_eip !129
  %1323 = load i1* %FPU_IM, align 1, !mcsema_real_eip !129
  store i1 %1323, i1* %FPU_IM_val, !mcsema_real_eip !129
  %1324 = load i64* %52, align 4
  store i64 %1324, i64* %53, align 4
  %1325 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  store i16 %1325, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  %1326 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !129
  store i64 %1326, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  %1327 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  store i16 %1327, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  %1328 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !129
  store i64 %1328, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  %1329 = load i128* %XMM0, align 1, !mcsema_real_eip !129
  store i128 %1329, i128* %XMM0_val, !mcsema_real_eip !129
  %1330 = load i128* %XMM1, align 1, !mcsema_real_eip !129
  store i128 %1330, i128* %XMM1_val, !mcsema_real_eip !129
  %1331 = load i128* %XMM2, align 1, !mcsema_real_eip !129
  store i128 %1331, i128* %XMM2_val, !mcsema_real_eip !129
  %1332 = load i128* %XMM3, align 1, !mcsema_real_eip !129
  store i128 %1332, i128* %XMM3_val, !mcsema_real_eip !129
  %1333 = load i128* %XMM4, align 1, !mcsema_real_eip !129
  store i128 %1333, i128* %XMM4_val, !mcsema_real_eip !129
  %1334 = load i128* %XMM5, align 1, !mcsema_real_eip !129
  store i128 %1334, i128* %XMM5_val, !mcsema_real_eip !129
  %1335 = load i128* %XMM6, align 1, !mcsema_real_eip !129
  store i128 %1335, i128* %XMM6_val, !mcsema_real_eip !129
  %1336 = load i128* %XMM7, align 1, !mcsema_real_eip !129
  store i128 %1336, i128* %XMM7_val, !mcsema_real_eip !129
  %1337 = load i128* %XMM8, align 1, !mcsema_real_eip !129
  store i128 %1337, i128* %XMM8_val, !mcsema_real_eip !129
  %1338 = load i128* %XMM9, align 1, !mcsema_real_eip !129
  store i128 %1338, i128* %XMM9_val, !mcsema_real_eip !129
  %1339 = load i128* %XMM10, align 1, !mcsema_real_eip !129
  store i128 %1339, i128* %XMM10_val, !mcsema_real_eip !129
  %1340 = load i128* %XMM11, align 1, !mcsema_real_eip !129
  store i128 %1340, i128* %XMM11_val, !mcsema_real_eip !129
  %1341 = load i128* %XMM12, align 1, !mcsema_real_eip !129
  store i128 %1341, i128* %XMM12_val, !mcsema_real_eip !129
  %1342 = load i128* %XMM13, align 1, !mcsema_real_eip !129
  store i128 %1342, i128* %XMM13_val, !mcsema_real_eip !129
  %1343 = load i128* %XMM14, align 1, !mcsema_real_eip !129
  store i128 %1343, i128* %XMM14_val, !mcsema_real_eip !129
  %1344 = load i128* %XMM15, align 1, !mcsema_real_eip !129
  store i128 %1344, i128* %XMM15_val, !mcsema_real_eip !129
  %1345 = load i64* %STACK_BASE, !mcsema_real_eip !129
  store i64 %1345, i64* %STACK_BASE_val, !mcsema_real_eip !129
  %1346 = load i64* %STACK_LIMIT, !mcsema_real_eip !129
  store i64 %1346, i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 1, i64* %RDI_val, !mcsema_real_eip !130
  %1347 = load i64* %RBP_val, !mcsema_real_eip !131
  %1348 = add i64 %1347, -36, !mcsema_real_eip !131
  %1349 = inttoptr i64 %1348 to i64*, !mcsema_real_eip !131
  %1350 = bitcast i64* %1349 to i32*
  %1351 = load i32* %1350, !mcsema_real_eip !131
  %uadd363 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1351, i32 1)
  %1352 = extractvalue { i32, i1 } %uadd363, 0
  %1353 = xor i32 %1352, %1351, !mcsema_real_eip !132
  %1354 = and i32 %1353, 16, !mcsema_real_eip !132
  %1355 = icmp ne i32 %1354, 0, !mcsema_real_eip !132
  store i1 %1355, i1* %AF_val, !mcsema_real_eip !132
  %1356 = icmp slt i32 %1352, 0
  store i1 %1356, i1* %SF_val, !mcsema_real_eip !132
  %1357 = icmp eq i32 %1352, 0, !mcsema_real_eip !132
  store i1 %1357, i1* %ZF_val, !mcsema_real_eip !132
  %1358 = xor i32 %1351, -2147483648, !mcsema_real_eip !132
  %1359 = and i32 %1353, %1358, !mcsema_real_eip !132
  %1360 = icmp slt i32 %1359, 0
  store i1 %1360, i1* %OF_val, !mcsema_real_eip !132
  %1361 = trunc i32 %1352 to i8, !mcsema_real_eip !132
  %1362 = tail call i8 @llvm.ctpop.i8(i8 %1361), !mcsema_real_eip !132
  %1363 = and i8 %1362, 1
  %1364 = icmp eq i8 %1363, 0
  store i1 %1364, i1* %PF_val, !mcsema_real_eip !132
  %1365 = extractvalue { i32, i1 } %uadd363, 1
  store i1 %1365, i1* %CF_val, !mcsema_real_eip !132
  %1366 = zext i32 %1352 to i64, !mcsema_real_eip !132
  store i64 %1366, i64* %RSI_val, !mcsema_real_eip !132
  %1367 = load i64* %RBP_val, !mcsema_real_eip !133
  %1368 = add i64 %1367, -36, !mcsema_real_eip !133
  %1369 = inttoptr i64 %1368 to i64*, !mcsema_real_eip !133
  %1370 = bitcast i64* %1369 to i32*
  store i32 %1352, i32* %1370, !mcsema_real_eip !133
  %1371 = load i64* %RDI_val, !mcsema_real_eip !134
  %1372 = tail call x86_64_sysvcc i64 @sleep(i64 %1371), !mcsema_real_eip !134
  store i64 %1372, i64* %RAX_val, !mcsema_real_eip !134
  %1373 = load i64* %RBP_val, !mcsema_real_eip !135
  %1374 = add i64 %1373, -120, !mcsema_real_eip !135
  %1375 = inttoptr i64 %1374 to i64*, !mcsema_real_eip !135
  %1376 = trunc i64 %1372 to i32, !mcsema_real_eip !135
  %1377 = bitcast i64* %1375 to i32*
  store i32 %1376, i32* %1377, !mcsema_real_eip !135
  br label %block_0x130, !mcsema_real_eip !136

block_0x130:                                      ; preds = %block_0x32f, %block_0x34d
  %1378 = load i64* %RBP_val, !mcsema_real_eip !24
  %1379 = add i64 %1378, -36, !mcsema_real_eip !24
  %1380 = inttoptr i64 %1379 to i64*, !mcsema_real_eip !24
  %1381 = bitcast i64* %1380 to i32*
  %1382 = load i32* %1381, !mcsema_real_eip !24
  %1383 = add i32 %1382, -28
  %1384 = xor i32 %1383, %1382, !mcsema_real_eip !24
  %1385 = and i32 %1384, 16
  %1386 = icmp eq i32 %1385, 0
  store i1 %1386, i1* %AF_val, !mcsema_real_eip !24
  %1387 = trunc i32 %1383 to i8, !mcsema_real_eip !24
  %1388 = tail call i8 @llvm.ctpop.i8(i8 %1387), !mcsema_real_eip !24
  %1389 = and i8 %1388, 1
  %1390 = icmp eq i8 %1389, 0
  store i1 %1390, i1* %PF_val, !mcsema_real_eip !24
  %1391 = icmp eq i32 %1383, 0, !mcsema_real_eip !24
  store i1 %1391, i1* %ZF_val, !mcsema_real_eip !24
  %1392 = icmp slt i32 %1383, 0
  store i1 %1392, i1* %SF_val, !mcsema_real_eip !24
  %1393 = icmp ult i32 %1382, 28, !mcsema_real_eip !24
  store i1 %1393, i1* %CF_val, !mcsema_real_eip !24
  %1394 = and i32 %1384, %1382, !mcsema_real_eip !24
  %1395 = icmp slt i32 %1394, 0
  store i1 %1395, i1* %OF_val, !mcsema_real_eip !24
  %tmp364 = xor i1 %1392, %1395
  br i1 %tmp364, label %block_0x13d, label %block_0x390.loopexit, !mcsema_real_eip !25

block_0x2fe:                                      ; preds = %block_0x2f1
  %1396 = load i64* %RBP_val, !mcsema_real_eip !146
  %1397 = add i64 %1396, -20, !mcsema_real_eip !146
  %1398 = inttoptr i64 %1397 to i64*, !mcsema_real_eip !146
  %1399 = bitcast i64* %1398 to i32*
  %1400 = load i32* %1399, !mcsema_real_eip !146
  %1401 = add i32 %1400, -11
  %1402 = xor i32 %1401, %1400, !mcsema_real_eip !146
  %1403 = and i32 %1402, 16, !mcsema_real_eip !146
  %1404 = icmp ne i32 %1403, 0, !mcsema_real_eip !146
  store i1 %1404, i1* %AF_val, !mcsema_real_eip !146
  %1405 = trunc i32 %1401 to i8, !mcsema_real_eip !146
  %1406 = tail call i8 @llvm.ctpop.i8(i8 %1405), !mcsema_real_eip !146
  %1407 = and i8 %1406, 1
  %1408 = icmp eq i8 %1407, 0
  store i1 %1408, i1* %PF_val, !mcsema_real_eip !146
  %1409 = icmp eq i32 %1401, 0, !mcsema_real_eip !146
  store i1 %1409, i1* %ZF_val, !mcsema_real_eip !146
  %1410 = icmp slt i32 %1401, 0
  store i1 %1410, i1* %SF_val, !mcsema_real_eip !146
  %1411 = icmp ult i32 %1400, 11, !mcsema_real_eip !146
  store i1 %1411, i1* %CF_val, !mcsema_real_eip !146
  %1412 = and i32 %1402, %1400, !mcsema_real_eip !146
  %1413 = icmp slt i32 %1412, 0
  store i1 %1413, i1* %OF_val, !mcsema_real_eip !146
  %1414 = xor i1 %1410, %1413
  br i1 %1414, label %block_0x317, label %block_0x30b, !mcsema_real_eip !147
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 40
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = sub i64 %_local_stack_start_, 40
  %R15_val = alloca i64, !mcsema_real_eip !148
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !148
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !148
  %XMM15_val = alloca i128, !mcsema_real_eip !148
  %XMM14_val = alloca i128, !mcsema_real_eip !148
  %XMM13_val = alloca i128, !mcsema_real_eip !148
  %XMM12_val = alloca i128, !mcsema_real_eip !148
  %XMM11_val = alloca i128, !mcsema_real_eip !148
  %XMM10_val = alloca i128, !mcsema_real_eip !148
  %XMM9_val = alloca i128, !mcsema_real_eip !148
  %XMM8_val = alloca i128, !mcsema_real_eip !148
  %XMM7_val = alloca i128, !mcsema_real_eip !148
  %XMM6_val = alloca i128, !mcsema_real_eip !148
  %XMM5_val = alloca i128, !mcsema_real_eip !148
  %XMM4_val = alloca i128, !mcsema_real_eip !148
  %XMM3_val = alloca i128, !mcsema_real_eip !148
  %XMM2_val = alloca i128, !mcsema_real_eip !148
  %XMM1_val = alloca i128, !mcsema_real_eip !148
  %XMM0_val = alloca i128, !mcsema_real_eip !148
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !148
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !148
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !148
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !148
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !148
  %FPU_IM_val = alloca i1, !mcsema_real_eip !148
  %FPU_DM_val = alloca i1, !mcsema_real_eip !148
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !148
  %FPU_OM_val = alloca i1, !mcsema_real_eip !148
  %FPU_UM_val = alloca i1, !mcsema_real_eip !148
  %FPU_PM_val = alloca i1, !mcsema_real_eip !148
  %FPU_PC_val = alloca i2, !mcsema_real_eip !148
  %FPU_RC_val = alloca i2, !mcsema_real_eip !148
  %FPU_X_val = alloca i1, !mcsema_real_eip !148
  %FPU_IE_val = alloca i1, !mcsema_real_eip !148
  %FPU_DE_val = alloca i1, !mcsema_real_eip !148
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !148
  %FPU_OE_val = alloca i1, !mcsema_real_eip !148
  %FPU_UE_val = alloca i1, !mcsema_real_eip !148
  %FPU_PE_val = alloca i1, !mcsema_real_eip !148
  %FPU_SF_val = alloca i1, !mcsema_real_eip !148
  %FPU_ES_val = alloca i1, !mcsema_real_eip !148
  %FPU_C0_val = alloca i1, !mcsema_real_eip !148
  %FPU_C1_val = alloca i1, !mcsema_real_eip !148
  %FPU_C2_val = alloca i1, !mcsema_real_eip !148
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !148
  %FPU_C3_val = alloca i1, !mcsema_real_eip !148
  %FPU_B_val = alloca i1, !mcsema_real_eip !148
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !148
  %DF_val = alloca i1, !mcsema_real_eip !148
  %OF_val = alloca i1, !mcsema_real_eip !148
  %SF_val = alloca i1, !mcsema_real_eip !148
  %CF_val = alloca i1, !mcsema_real_eip !148
  %AF_val = alloca i1, !mcsema_real_eip !148
  %PF_val = alloca i1, !mcsema_real_eip !148
  %ZF_val = alloca i1, !mcsema_real_eip !148
  %RIP_val = alloca i64, !mcsema_real_eip !148
  %R14_val = alloca i64, !mcsema_real_eip !148
  %R13_val = alloca i64, !mcsema_real_eip !148
  %R12_val = alloca i64, !mcsema_real_eip !148
  %R11_val = alloca i64, !mcsema_real_eip !148
  %R10_val = alloca i64, !mcsema_real_eip !148
  %R9_val = alloca i64, !mcsema_real_eip !148
  %R8_val = alloca i64, !mcsema_real_eip !148
  %RSP_val = alloca i64, !mcsema_real_eip !148
  %RBP_val = alloca i64, !mcsema_real_eip !148
  %RDI_val = alloca i64, !mcsema_real_eip !148
  %RSI_val = alloca i64, !mcsema_real_eip !148
  %RDX_val = alloca i64, !mcsema_real_eip !148
  %RCX_val = alloca i64, !mcsema_real_eip !148
  %RBX_val = alloca i64, !mcsema_real_eip !148
  %RAX_val = alloca i64, !mcsema_real_eip !148
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !148
  %1 = load i64* %RAX, !mcsema_real_eip !148
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !148
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !148
  %2 = load i64* %RBX, !mcsema_real_eip !148
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !148
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !148
  %3 = load i64* %RCX, !mcsema_real_eip !148
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !148
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !148
  %4 = load i64* %RDX, !mcsema_real_eip !148
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !148
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !148
  %5 = load i64* %RSI, !mcsema_real_eip !148
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !148
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !148
  %6 = load i64* %RDI, !mcsema_real_eip !148
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !148
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !148
  %7 = load i64* %RSP, !mcsema_real_eip !148
  store i64 %_local_stack_start_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !148
  %8 = load i64* %RBP, !mcsema_real_eip !148
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !148
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !148
  %9 = load i64* %R8, !mcsema_real_eip !148
  store i64 %9, i64* %R8_val, !mcsema_real_eip !148
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !148
  %10 = load i64* %R9, !mcsema_real_eip !148
  store i64 %10, i64* %R9_val, !mcsema_real_eip !148
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !148
  %11 = load i64* %R10, !mcsema_real_eip !148
  store i64 %11, i64* %R10_val, !mcsema_real_eip !148
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !148
  %12 = load i64* %R11, !mcsema_real_eip !148
  store i64 %12, i64* %R11_val, !mcsema_real_eip !148
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !148
  %13 = load i64* %R12, !mcsema_real_eip !148
  store i64 %13, i64* %R12_val, !mcsema_real_eip !148
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !148
  %14 = load i64* %R13, !mcsema_real_eip !148
  store i64 %14, i64* %R13_val, !mcsema_real_eip !148
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !148
  %15 = load i64* %R14, !mcsema_real_eip !148
  store i64 %15, i64* %R14_val, !mcsema_real_eip !148
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !148
  %16 = load i64* %R15, !mcsema_real_eip !148
  store i64 %16, i64* %R15_val, !mcsema_real_eip !148
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !148
  %17 = load i64* %RIP, !mcsema_real_eip !148
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !148
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !148
  %18 = load i1* %CF, align 1, !mcsema_real_eip !148
  store i1 %18, i1* %CF_val, !mcsema_real_eip !148
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !148
  %19 = load i1* %PF, align 1, !mcsema_real_eip !148
  store i1 %19, i1* %PF_val, !mcsema_real_eip !148
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !148
  %20 = load i1* %AF, align 1, !mcsema_real_eip !148
  store i1 %20, i1* %AF_val, !mcsema_real_eip !148
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !148
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !148
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !148
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !148
  %22 = load i1* %SF, align 1, !mcsema_real_eip !148
  store i1 %22, i1* %SF_val, !mcsema_real_eip !148
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !148
  %23 = load i1* %OF, align 1, !mcsema_real_eip !148
  store i1 %23, i1* %OF_val, !mcsema_real_eip !148
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !148
  %24 = load i1* %DF, align 1, !mcsema_real_eip !148
  store i1 %24, i1* %DF_val, !mcsema_real_eip !148
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !148
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !148
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !148
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !148
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !148
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !148
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !148
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !148
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !148
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !148
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !148
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !148
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !148
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !148
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !148
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !148
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !148
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !148
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !148
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !148
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !148
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !148
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !148
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !148
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !148
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !148
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !148
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !148
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !148
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !148
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !148
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !148
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !148
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !148
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !148
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !148
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !148
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !148
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !148
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !148
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !148
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !148
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !148
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !148
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !148
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !148
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !148
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !148
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !148
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !148
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !148
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !148
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !148
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !148
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !148
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !148
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !148
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !148
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !148
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !148
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !148
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !148
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !148
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !148
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !148
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !148
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !148
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !148
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !148
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !148
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !148
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !148
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !148
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !148
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !148
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !148
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !148
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !148
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !148
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !148
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !148
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !148
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !148
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !148
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !148
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !148
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !148
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !148
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !148
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !148
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !148
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !148
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !148
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !148
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !148
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !148
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !148
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !148
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !148
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !148
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !148
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !148
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !148
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !148
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !148
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !148
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !148
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !148
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !148
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !148
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !148
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !148
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !148
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !148
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !148
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !148
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !148
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !148
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !148
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !148
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !148
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !148
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !148
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !148
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !148
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !148
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !148
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !148
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !148
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !148
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !148
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !148
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !148
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !148
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !148
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !148
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !148
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !148
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !148
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !148
  %77 = load i64* %RBP_val, !mcsema_real_eip !148
  %78 = load i64* %RSP_val, !mcsema_real_eip !148
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !148
  store i64 %77, i64* %80, !mcsema_real_eip !148
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !149
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !150
  %83 = and i64 %82, 16, !mcsema_real_eip !150
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !150
  store i1 %84, i1* %AF_val, !mcsema_real_eip !150
  %85 = trunc i64 %81 to i8, !mcsema_real_eip !150
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !150
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !150
  %89 = icmp eq i64 %81, 0, !mcsema_real_eip !150
  store i1 %89, i1* %ZF_val, !mcsema_real_eip !150
  %90 = icmp slt i64 %81, 0
  store i1 %90, i1* %SF_val, !mcsema_real_eip !150
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !150
  store i1 %91, i1* %CF_val, !mcsema_real_eip !150
  %92 = and i64 %82, %79, !mcsema_real_eip !150
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !150
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !150
  %94 = load i64* %RBP_val, !mcsema_real_eip !151
  %95 = add i64 %94, -4, !mcsema_real_eip !151
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !151
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !151
  %98 = load i64* %RBP_val, !mcsema_real_eip !152
  %99 = add i64 %98, -4, !mcsema_real_eip !152
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !152
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !152
  %103 = add i32 %102, -7
  %104 = xor i32 %103, %102, !mcsema_real_eip !152
  %105 = and i32 %104, 16, !mcsema_real_eip !152
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !152
  store i1 %106, i1* %AF_val, !mcsema_real_eip !152
  %107 = trunc i32 %103 to i8, !mcsema_real_eip !152
  %108 = tail call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !152
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF_val, !mcsema_real_eip !152
  %111 = icmp eq i32 %103, 0, !mcsema_real_eip !152
  store i1 %111, i1* %ZF_val, !mcsema_real_eip !152
  %112 = icmp slt i32 %103, 0
  store i1 %112, i1* %SF_val, !mcsema_real_eip !152
  %113 = icmp ult i32 %102, 7, !mcsema_real_eip !152
  store i1 %113, i1* %CF_val, !mcsema_real_eip !152
  %114 = and i32 %104, %102, !mcsema_real_eip !152
  %115 = icmp slt i32 %114, 0
  store i1 %115, i1* %OF_val, !mcsema_real_eip !152
  %tmp = xor i1 %112, %115
  br i1 %tmp, label %block_0x1c.preheader, label %block_0x98, !mcsema_real_eip !153

block_0x1c.preheader:                             ; preds = %entry
  br label %block_0x1c

block_0x98.loopexit:                              ; preds = %block_0x74
  br label %block_0x98

block_0x98:                                       ; preds = %block_0x98.loopexit, %entry
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !154
  %116 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !155
  store i64 %116, i64* %RAX_val, !mcsema_real_eip !155
  %117 = load i64* %RBP_val, !mcsema_real_eip !156
  %118 = add i64 %117, -20, !mcsema_real_eip !156
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !156
  %120 = trunc i64 %116 to i32, !mcsema_real_eip !156
  %121 = bitcast i64* %119 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !156
  %122 = load i64* %RSP_val, !mcsema_real_eip !157
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %122, i64 32)
  %123 = extractvalue { i64, i1 } %uadd75, 0
  %124 = xor i64 %123, %122, !mcsema_real_eip !157
  %125 = and i64 %124, 16, !mcsema_real_eip !157
  %126 = icmp ne i64 %125, 0, !mcsema_real_eip !157
  store i1 %126, i1* %AF_val, !mcsema_real_eip !157
  %127 = icmp slt i64 %123, 0
  store i1 %127, i1* %SF_val, !mcsema_real_eip !157
  %128 = icmp eq i64 %123, 0, !mcsema_real_eip !157
  store i1 %128, i1* %ZF_val, !mcsema_real_eip !157
  %129 = xor i64 %122, -9223372036854775808, !mcsema_real_eip !157
  %130 = and i64 %124, %129, !mcsema_real_eip !157
  %131 = icmp slt i64 %130, 0
  store i1 %131, i1* %OF_val, !mcsema_real_eip !157
  %132 = trunc i64 %123 to i8, !mcsema_real_eip !157
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !157
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF_val, !mcsema_real_eip !157
  %136 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %136, i1* %CF_val, !mcsema_real_eip !157
  store i64 %123, i64* %RSP_val, !mcsema_real_eip !157
  %137 = inttoptr i64 %123 to i64*, !mcsema_real_eip !158
  %138 = load i64* %137, !mcsema_real_eip !158
  store i64 %138, i64* %RBP_val, !mcsema_real_eip !158
  %139 = add i64 %123, 16, !mcsema_real_eip !159
  store i64 %139, i64* %RSP_val, !mcsema_real_eip !159
  %140 = load i64* %RAX_val, !mcsema_real_eip !159
  store i64 %140, i64* %RAX, !mcsema_real_eip !159
  %141 = load i64* %RBX_val, !mcsema_real_eip !159
  store i64 %141, i64* %RBX, !mcsema_real_eip !159
  %142 = load i64* %RCX_val, !mcsema_real_eip !159
  store i64 %142, i64* %RCX, !mcsema_real_eip !159
  %143 = load i64* %RDX_val, !mcsema_real_eip !159
  store i64 %143, i64* %RDX, !mcsema_real_eip !159
  %144 = load i64* %RSI_val, !mcsema_real_eip !159
  store i64 %144, i64* %RSI, !mcsema_real_eip !159
  %145 = load i64* %RDI_val, !mcsema_real_eip !159
  store i64 %145, i64* %RDI, !mcsema_real_eip !159
  %146 = load i64* %RSP_val, !mcsema_real_eip !159
  store i64 %146, i64* %RSP, !mcsema_real_eip !159
  %147 = load i64* %RBP_val, !mcsema_real_eip !159
  store i64 %147, i64* %RBP, !mcsema_real_eip !159
  %148 = load i64* %R8_val, !mcsema_real_eip !159
  store i64 %148, i64* %R8, !mcsema_real_eip !159
  %149 = load i64* %R9_val, !mcsema_real_eip !159
  store i64 %149, i64* %R9, !mcsema_real_eip !159
  %150 = load i64* %R10_val, !mcsema_real_eip !159
  store i64 %150, i64* %R10, !mcsema_real_eip !159
  %151 = load i64* %R11_val, !mcsema_real_eip !159
  store i64 %151, i64* %R11, !mcsema_real_eip !159
  %152 = load i64* %R12_val, !mcsema_real_eip !159
  store i64 %152, i64* %R12, !mcsema_real_eip !159
  %153 = load i64* %R13_val, !mcsema_real_eip !159
  store i64 %153, i64* %R13, !mcsema_real_eip !159
  %154 = load i64* %R14_val, !mcsema_real_eip !159
  store i64 %154, i64* %R14, !mcsema_real_eip !159
  %155 = load i64* %R15_val, !mcsema_real_eip !159
  store i64 %155, i64* %R15, !mcsema_real_eip !159
  %156 = load i64* %RIP_val, !mcsema_real_eip !159
  store i64 %156, i64* %RIP, !mcsema_real_eip !159
  %157 = load i1* %CF_val, !mcsema_real_eip !159
  store i1 %157, i1* %CF, align 1, !mcsema_real_eip !159
  %158 = load i1* %PF_val, !mcsema_real_eip !159
  store i1 %158, i1* %PF, align 1, !mcsema_real_eip !159
  %159 = load i1* %AF_val, !mcsema_real_eip !159
  store i1 %159, i1* %AF, align 1, !mcsema_real_eip !159
  %160 = load i1* %ZF_val, !mcsema_real_eip !159
  store i1 %160, i1* %ZF, align 1, !mcsema_real_eip !159
  %161 = load i1* %SF_val, !mcsema_real_eip !159
  store i1 %161, i1* %SF, align 1, !mcsema_real_eip !159
  %162 = load i1* %OF_val, !mcsema_real_eip !159
  store i1 %162, i1* %OF, align 1, !mcsema_real_eip !159
  %163 = load i1* %DF_val, !mcsema_real_eip !159
  store i1 %163, i1* %DF, align 1, !mcsema_real_eip !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !159
  %164 = load i1* %FPU_B_val, !mcsema_real_eip !159
  store i1 %164, i1* %FPU_B, align 1, !mcsema_real_eip !159
  %165 = load i1* %FPU_C3_val, !mcsema_real_eip !159
  store i1 %165, i1* %FPU_C3, align 1, !mcsema_real_eip !159
  %166 = load i3* %FPU_TOP_val, !mcsema_real_eip !159
  store i3 %166, i3* %FPU_TOP, align 1, !mcsema_real_eip !159
  %167 = load i1* %FPU_C2_val, !mcsema_real_eip !159
  store i1 %167, i1* %FPU_C2, align 1, !mcsema_real_eip !159
  %168 = load i1* %FPU_C1_val, !mcsema_real_eip !159
  store i1 %168, i1* %FPU_C1, align 1, !mcsema_real_eip !159
  %169 = load i1* %FPU_C0_val, !mcsema_real_eip !159
  store i1 %169, i1* %FPU_C0, align 1, !mcsema_real_eip !159
  %170 = load i1* %FPU_ES_val, !mcsema_real_eip !159
  store i1 %170, i1* %FPU_ES, align 1, !mcsema_real_eip !159
  %171 = load i1* %FPU_SF_val, !mcsema_real_eip !159
  store i1 %171, i1* %FPU_SF, align 1, !mcsema_real_eip !159
  %172 = load i1* %FPU_PE_val, !mcsema_real_eip !159
  store i1 %172, i1* %FPU_PE, align 1, !mcsema_real_eip !159
  %173 = load i1* %FPU_UE_val, !mcsema_real_eip !159
  store i1 %173, i1* %FPU_UE, align 1, !mcsema_real_eip !159
  %174 = load i1* %FPU_OE_val, !mcsema_real_eip !159
  store i1 %174, i1* %FPU_OE, align 1, !mcsema_real_eip !159
  %175 = load i1* %FPU_ZE_val, !mcsema_real_eip !159
  store i1 %175, i1* %FPU_ZE, align 1, !mcsema_real_eip !159
  %176 = load i1* %FPU_DE_val, !mcsema_real_eip !159
  store i1 %176, i1* %FPU_DE, align 1, !mcsema_real_eip !159
  %177 = load i1* %FPU_IE_val, !mcsema_real_eip !159
  store i1 %177, i1* %FPU_IE, align 1, !mcsema_real_eip !159
  %178 = load i1* %FPU_X_val, !mcsema_real_eip !159
  store i1 %178, i1* %FPU_X, align 1, !mcsema_real_eip !159
  %179 = load i2* %FPU_RC_val, !mcsema_real_eip !159
  store i2 %179, i2* %FPU_RC, align 1, !mcsema_real_eip !159
  %180 = load i2* %FPU_PC_val, !mcsema_real_eip !159
  store i2 %180, i2* %FPU_PC, align 1, !mcsema_real_eip !159
  %181 = load i1* %FPU_PM_val, !mcsema_real_eip !159
  store i1 %181, i1* %FPU_PM, align 1, !mcsema_real_eip !159
  %182 = load i1* %FPU_UM_val, !mcsema_real_eip !159
  store i1 %182, i1* %FPU_UM, align 1, !mcsema_real_eip !159
  %183 = load i1* %FPU_OM_val, !mcsema_real_eip !159
  store i1 %183, i1* %FPU_OM, align 1, !mcsema_real_eip !159
  %184 = load i1* %FPU_ZM_val, !mcsema_real_eip !159
  store i1 %184, i1* %FPU_ZM, align 1, !mcsema_real_eip !159
  %185 = load i1* %FPU_DM_val, !mcsema_real_eip !159
  store i1 %185, i1* %FPU_DM, align 1, !mcsema_real_eip !159
  %186 = load i1* %FPU_IM_val, !mcsema_real_eip !159
  store i1 %186, i1* %FPU_IM, align 1, !mcsema_real_eip !159
  %187 = load i64* %53, align 4
  store i64 %187, i64* %52, align 4
  %188 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !159
  store i16 %188, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !159
  %189 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !159
  store i64 %189, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !159
  %190 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !159
  store i16 %190, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !159
  %191 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !159
  store i64 %191, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !159
  %192 = load i128* %XMM0_val, !mcsema_real_eip !159
  store i128 %192, i128* %XMM0, align 1, !mcsema_real_eip !159
  %193 = load i128* %XMM1_val, !mcsema_real_eip !159
  store i128 %193, i128* %XMM1, align 1, !mcsema_real_eip !159
  %194 = load i128* %XMM2_val, !mcsema_real_eip !159
  store i128 %194, i128* %XMM2, align 1, !mcsema_real_eip !159
  %195 = load i128* %XMM3_val, !mcsema_real_eip !159
  store i128 %195, i128* %XMM3, align 1, !mcsema_real_eip !159
  %196 = load i128* %XMM4_val, !mcsema_real_eip !159
  store i128 %196, i128* %XMM4, align 1, !mcsema_real_eip !159
  %197 = load i128* %XMM5_val, !mcsema_real_eip !159
  store i128 %197, i128* %XMM5, align 1, !mcsema_real_eip !159
  %198 = load i128* %XMM6_val, !mcsema_real_eip !159
  store i128 %198, i128* %XMM6, align 1, !mcsema_real_eip !159
  %199 = load i128* %XMM7_val, !mcsema_real_eip !159
  store i128 %199, i128* %XMM7, align 1, !mcsema_real_eip !159
  %200 = load i128* %XMM8_val, !mcsema_real_eip !159
  store i128 %200, i128* %XMM8, align 1, !mcsema_real_eip !159
  %201 = load i128* %XMM9_val, !mcsema_real_eip !159
  store i128 %201, i128* %XMM9, align 1, !mcsema_real_eip !159
  %202 = load i128* %XMM10_val, !mcsema_real_eip !159
  store i128 %202, i128* %XMM10, align 1, !mcsema_real_eip !159
  %203 = load i128* %XMM11_val, !mcsema_real_eip !159
  store i128 %203, i128* %XMM11, align 1, !mcsema_real_eip !159
  %204 = load i128* %XMM12_val, !mcsema_real_eip !159
  store i128 %204, i128* %XMM12, align 1, !mcsema_real_eip !159
  %205 = load i128* %XMM13_val, !mcsema_real_eip !159
  store i128 %205, i128* %XMM13, align 1, !mcsema_real_eip !159
  %206 = load i128* %XMM14_val, !mcsema_real_eip !159
  store i128 %206, i128* %XMM14, align 1, !mcsema_real_eip !159
  %207 = load i128* %XMM15_val, !mcsema_real_eip !159
  store i128 %207, i128* %XMM15, align 1, !mcsema_real_eip !159
  %208 = load i64* %STACK_BASE_val, !mcsema_real_eip !159
  store i64 %208, i64* %STACK_BASE, align 1, !mcsema_real_eip !159
  %209 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !159
  store i64 %209, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x1c:                                       ; preds = %block_0x74, %block_0x1c.preheader
  %210 = load i64* %RBP_val, !mcsema_real_eip !160
  %211 = add i64 %210, -8, !mcsema_real_eip !160
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !160
  %213 = bitcast i64* %212 to i32*
  store i32 0, i32* %213, !mcsema_real_eip !160
  %214 = load i64* %RBP_val, !mcsema_real_eip !161
  %215 = add i64 %214, -8, !mcsema_real_eip !161
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !161
  %217 = bitcast i64* %216 to i32*
  %218 = load i32* %217, !mcsema_real_eip !161
  %219 = add i32 %218, -11
  %220 = xor i32 %219, %218, !mcsema_real_eip !161
  %221 = and i32 %220, 16, !mcsema_real_eip !161
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !161
  store i1 %222, i1* %AF_val, !mcsema_real_eip !161
  %223 = trunc i32 %219 to i8, !mcsema_real_eip !161
  %224 = tail call i8 @llvm.ctpop.i8(i8 %223), !mcsema_real_eip !161
  %225 = and i8 %224, 1
  %226 = icmp eq i8 %225, 0
  store i1 %226, i1* %PF_val, !mcsema_real_eip !161
  %227 = icmp eq i32 %219, 0, !mcsema_real_eip !161
  store i1 %227, i1* %ZF_val, !mcsema_real_eip !161
  %228 = icmp slt i32 %219, 0
  store i1 %228, i1* %SF_val, !mcsema_real_eip !161
  %229 = icmp ult i32 %218, 11, !mcsema_real_eip !161
  store i1 %229, i1* %CF_val, !mcsema_real_eip !161
  %230 = and i32 %220, %218, !mcsema_real_eip !161
  %231 = icmp slt i32 %230, 0
  store i1 %231, i1* %OF_val, !mcsema_real_eip !161
  %tmp70 = xor i1 %228, %231
  br i1 %tmp70, label %block_0x30.preheader, label %block_0x74, !mcsema_real_eip !162

block_0x30.preheader:                             ; preds = %block_0x1c
  br label %block_0x30

block_0x74.loopexit:                              ; preds = %block_0x30
  br label %block_0x74

block_0x74:                                       ; preds = %block_0x74.loopexit, %block_0x1c
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !163
  %232 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !164
  store i64 %232, i64* %RAX_val, !mcsema_real_eip !164
  %233 = load i64* %RBP_val, !mcsema_real_eip !165
  %234 = add i64 %233, -16, !mcsema_real_eip !165
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !165
  %236 = trunc i64 %232 to i32, !mcsema_real_eip !165
  %237 = bitcast i64* %235 to i32*
  store i32 %236, i32* %237, !mcsema_real_eip !165
  %238 = load i64* %RBP_val, !mcsema_real_eip !166
  %239 = add i64 %238, -4, !mcsema_real_eip !166
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !166
  %241 = bitcast i64* %240 to i32*
  %242 = load i32* %241, !mcsema_real_eip !166
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 1)
  %243 = extractvalue { i32, i1 } %uadd73, 0
  %244 = xor i32 %243, %242, !mcsema_real_eip !167
  %245 = and i32 %244, 16, !mcsema_real_eip !167
  %246 = icmp ne i32 %245, 0, !mcsema_real_eip !167
  store i1 %246, i1* %AF_val, !mcsema_real_eip !167
  %247 = icmp slt i32 %243, 0
  store i1 %247, i1* %SF_val, !mcsema_real_eip !167
  %248 = icmp eq i32 %243, 0, !mcsema_real_eip !167
  store i1 %248, i1* %ZF_val, !mcsema_real_eip !167
  %249 = xor i32 %242, -2147483648, !mcsema_real_eip !167
  %250 = and i32 %244, %249, !mcsema_real_eip !167
  %251 = icmp slt i32 %250, 0
  store i1 %251, i1* %OF_val, !mcsema_real_eip !167
  %252 = trunc i32 %243 to i8, !mcsema_real_eip !167
  %253 = tail call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !167
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  store i1 %255, i1* %PF_val, !mcsema_real_eip !167
  %256 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %256, i1* %CF_val, !mcsema_real_eip !167
  %257 = zext i32 %243 to i64, !mcsema_real_eip !167
  store i64 %257, i64* %RAX_val, !mcsema_real_eip !167
  %258 = load i64* %RBP_val, !mcsema_real_eip !168
  %259 = add i64 %258, -4, !mcsema_real_eip !168
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !168
  %261 = bitcast i64* %260 to i32*
  store i32 %243, i32* %261, !mcsema_real_eip !168
  %262 = load i64* %RBP_val, !mcsema_real_eip !152
  %263 = add i64 %262, -4, !mcsema_real_eip !152
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !152
  %265 = bitcast i64* %264 to i32*
  %266 = load i32* %265, !mcsema_real_eip !152
  %267 = add i32 %266, -7
  %268 = xor i32 %267, %266, !mcsema_real_eip !152
  %269 = and i32 %268, 16, !mcsema_real_eip !152
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !152
  store i1 %270, i1* %AF_val, !mcsema_real_eip !152
  %271 = trunc i32 %267 to i8, !mcsema_real_eip !152
  %272 = tail call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !152
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  store i1 %274, i1* %PF_val, !mcsema_real_eip !152
  %275 = icmp eq i32 %267, 0, !mcsema_real_eip !152
  store i1 %275, i1* %ZF_val, !mcsema_real_eip !152
  %276 = icmp slt i32 %267, 0
  store i1 %276, i1* %SF_val, !mcsema_real_eip !152
  %277 = icmp ult i32 %266, 7, !mcsema_real_eip !152
  store i1 %277, i1* %CF_val, !mcsema_real_eip !152
  %278 = and i32 %268, %266, !mcsema_real_eip !152
  %279 = icmp slt i32 %278, 0
  store i1 %279, i1* %OF_val, !mcsema_real_eip !152
  %tmp74 = xor i1 %276, %279
  br i1 %tmp74, label %block_0x1c, label %block_0x98.loopexit, !mcsema_real_eip !153

block_0x30:                                       ; preds = %block_0x30, %block_0x30.preheader
  store i64 ptrtoint (%1* @data_0x3ff to i64), i64* %RDI_val, !mcsema_real_eip !169
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !170
  %280 = load i64* %RBP_val, !mcsema_real_eip !171
  %281 = add i64 %280, -8, !mcsema_real_eip !171
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !171
  %283 = bitcast i64* %282 to i32*
  %284 = load i32* %283, !mcsema_real_eip !171
  %285 = sext i32 %284 to i64, !mcsema_real_eip !171
  store i64 %285, i64* %RCX_val, !mcsema_real_eip !171
  %286 = load i64* %RBP_val, !mcsema_real_eip !172
  %287 = add i64 %286, -4, !mcsema_real_eip !172
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !172
  %289 = bitcast i64* %288 to i32*
  %290 = load i32* %289, !mcsema_real_eip !172
  %291 = sext i32 %290 to i64, !mcsema_real_eip !172
  %292 = mul i64 %291, 11, !mcsema_real_eip !173
  store i64 %292, i64* %RDX_val, !mcsema_real_eip !173
  %293 = load i64* %RAX_val, !mcsema_real_eip !174
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %292, i64 %293)
  %294 = extractvalue { i64, i1 } %uadd, 0
  %295 = xor i64 %294, %293, !mcsema_real_eip !174
  %296 = xor i64 %295, %292, !mcsema_real_eip !174
  %297 = and i64 %296, 16, !mcsema_real_eip !174
  %298 = icmp ne i64 %297, 0, !mcsema_real_eip !174
  store i1 %298, i1* %AF_val, !mcsema_real_eip !174
  %299 = icmp slt i64 %294, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !174
  %300 = icmp eq i64 %294, 0, !mcsema_real_eip !174
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !174
  %301 = xor i64 %293, -9223372036854775808, !mcsema_real_eip !174
  %302 = xor i64 %301, %292, !mcsema_real_eip !174
  %303 = and i64 %295, %302, !mcsema_real_eip !174
  %304 = icmp slt i64 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !174
  %305 = trunc i64 %294 to i8, !mcsema_real_eip !174
  %306 = tail call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !174
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF_val, !mcsema_real_eip !174
  %309 = extractvalue { i64, i1 } %uadd, 1
  store i1 %309, i1* %CF_val, !mcsema_real_eip !174
  store i64 %294, i64* %RAX_val, !mcsema_real_eip !174
  %310 = load i64* %RCX_val, !mcsema_real_eip !175
  %311 = add i64 %310, %294, !mcsema_real_eip !175
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !175
  %313 = bitcast i64* %312 to i8*
  %314 = load i8* %313, !mcsema_real_eip !175
  %315 = sext i8 %314 to i32, !mcsema_real_eip !175
  %316 = zext i32 %315 to i64, !mcsema_real_eip !175
  store i64 %316, i64* %RSI_val, !mcsema_real_eip !175
  %317 = load i64* %RDI_val, !mcsema_real_eip !176
  %318 = tail call x86_64_sysvcc i64 @printf(i64 %317), !mcsema_real_eip !176
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !176
  %319 = load i64* %RBP_val, !mcsema_real_eip !177
  %320 = add i64 %319, -12, !mcsema_real_eip !177
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !177
  %322 = trunc i64 %318 to i32, !mcsema_real_eip !177
  %323 = bitcast i64* %321 to i32*
  store i32 %322, i32* %323, !mcsema_real_eip !177
  %324 = load i64* %RBP_val, !mcsema_real_eip !178
  %325 = add i64 %324, -8, !mcsema_real_eip !178
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !178
  %327 = bitcast i64* %326 to i32*
  %328 = load i32* %327, !mcsema_real_eip !178
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 1)
  %329 = extractvalue { i32, i1 } %uadd71, 0
  %330 = xor i32 %329, %328, !mcsema_real_eip !179
  %331 = and i32 %330, 16, !mcsema_real_eip !179
  %332 = icmp ne i32 %331, 0, !mcsema_real_eip !179
  store i1 %332, i1* %AF_val, !mcsema_real_eip !179
  %333 = icmp slt i32 %329, 0
  store i1 %333, i1* %SF_val, !mcsema_real_eip !179
  %334 = icmp eq i32 %329, 0, !mcsema_real_eip !179
  store i1 %334, i1* %ZF_val, !mcsema_real_eip !179
  %335 = xor i32 %328, -2147483648, !mcsema_real_eip !179
  %336 = and i32 %330, %335, !mcsema_real_eip !179
  %337 = icmp slt i32 %336, 0
  store i1 %337, i1* %OF_val, !mcsema_real_eip !179
  %338 = trunc i32 %329 to i8, !mcsema_real_eip !179
  %339 = tail call i8 @llvm.ctpop.i8(i8 %338), !mcsema_real_eip !179
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  store i1 %341, i1* %PF_val, !mcsema_real_eip !179
  %342 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %342, i1* %CF_val, !mcsema_real_eip !179
  %343 = zext i32 %329 to i64, !mcsema_real_eip !179
  store i64 %343, i64* %RAX_val, !mcsema_real_eip !179
  %344 = load i64* %RBP_val, !mcsema_real_eip !180
  %345 = add i64 %344, -8, !mcsema_real_eip !180
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !180
  %347 = bitcast i64* %346 to i32*
  store i32 %329, i32* %347, !mcsema_real_eip !180
  %348 = load i64* %RBP_val, !mcsema_real_eip !161
  %349 = add i64 %348, -8, !mcsema_real_eip !161
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !161
  %351 = bitcast i64* %350 to i32*
  %352 = load i32* %351, !mcsema_real_eip !161
  %353 = add i32 %352, -11
  %354 = xor i32 %353, %352, !mcsema_real_eip !161
  %355 = and i32 %354, 16, !mcsema_real_eip !161
  %356 = icmp ne i32 %355, 0, !mcsema_real_eip !161
  store i1 %356, i1* %AF_val, !mcsema_real_eip !161
  %357 = trunc i32 %353 to i8, !mcsema_real_eip !161
  %358 = tail call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !161
  %359 = and i8 %358, 1
  %360 = icmp eq i8 %359, 0
  store i1 %360, i1* %PF_val, !mcsema_real_eip !161
  %361 = icmp eq i32 %353, 0, !mcsema_real_eip !161
  store i1 %361, i1* %ZF_val, !mcsema_real_eip !161
  %362 = icmp slt i32 %353, 0
  store i1 %362, i1* %SF_val, !mcsema_real_eip !161
  %363 = icmp ult i32 %352, 11, !mcsema_real_eip !161
  store i1 %363, i1* %CF_val, !mcsema_real_eip !161
  %364 = and i32 %354, %352, !mcsema_real_eip !161
  %365 = icmp slt i32 %364, 0
  store i1 %365, i1* %OF_val, !mcsema_real_eip !161
  %tmp72 = xor i1 %362, %365
  br i1 %tmp72, label %block_0x30, label %block_0x74.loopexit, !mcsema_real_eip !162
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @sleep(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = sub i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_c0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

define internal x86_64_sysvcc void @sub_01(%struct.regs*, i64 %_parent_stack_end_ptr_) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 40
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = sub i64 %_local_stack_start_, 40
  %R15_val = alloca i64, !mcsema_real_eip !148
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !148
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !148
  %XMM15_val = alloca i128, !mcsema_real_eip !148
  %XMM14_val = alloca i128, !mcsema_real_eip !148
  %XMM13_val = alloca i128, !mcsema_real_eip !148
  %XMM12_val = alloca i128, !mcsema_real_eip !148
  %XMM11_val = alloca i128, !mcsema_real_eip !148
  %XMM10_val = alloca i128, !mcsema_real_eip !148
  %XMM9_val = alloca i128, !mcsema_real_eip !148
  %XMM8_val = alloca i128, !mcsema_real_eip !148
  %XMM7_val = alloca i128, !mcsema_real_eip !148
  %XMM6_val = alloca i128, !mcsema_real_eip !148
  %XMM5_val = alloca i128, !mcsema_real_eip !148
  %XMM4_val = alloca i128, !mcsema_real_eip !148
  %XMM3_val = alloca i128, !mcsema_real_eip !148
  %XMM2_val = alloca i128, !mcsema_real_eip !148
  %XMM1_val = alloca i128, !mcsema_real_eip !148
  %XMM0_val = alloca i128, !mcsema_real_eip !148
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !148
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !148
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !148
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !148
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !148
  %FPU_IM_val = alloca i1, !mcsema_real_eip !148
  %FPU_DM_val = alloca i1, !mcsema_real_eip !148
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !148
  %FPU_OM_val = alloca i1, !mcsema_real_eip !148
  %FPU_UM_val = alloca i1, !mcsema_real_eip !148
  %FPU_PM_val = alloca i1, !mcsema_real_eip !148
  %FPU_PC_val = alloca i2, !mcsema_real_eip !148
  %FPU_RC_val = alloca i2, !mcsema_real_eip !148
  %FPU_X_val = alloca i1, !mcsema_real_eip !148
  %FPU_IE_val = alloca i1, !mcsema_real_eip !148
  %FPU_DE_val = alloca i1, !mcsema_real_eip !148
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !148
  %FPU_OE_val = alloca i1, !mcsema_real_eip !148
  %FPU_UE_val = alloca i1, !mcsema_real_eip !148
  %FPU_PE_val = alloca i1, !mcsema_real_eip !148
  %FPU_SF_val = alloca i1, !mcsema_real_eip !148
  %FPU_ES_val = alloca i1, !mcsema_real_eip !148
  %FPU_C0_val = alloca i1, !mcsema_real_eip !148
  %FPU_C1_val = alloca i1, !mcsema_real_eip !148
  %FPU_C2_val = alloca i1, !mcsema_real_eip !148
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !148
  %FPU_C3_val = alloca i1, !mcsema_real_eip !148
  %FPU_B_val = alloca i1, !mcsema_real_eip !148
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !148
  %DF_val = alloca i1, !mcsema_real_eip !148
  %OF_val = alloca i1, !mcsema_real_eip !148
  %SF_val = alloca i1, !mcsema_real_eip !148
  %CF_val = alloca i1, !mcsema_real_eip !148
  %AF_val = alloca i1, !mcsema_real_eip !148
  %PF_val = alloca i1, !mcsema_real_eip !148
  %ZF_val = alloca i1, !mcsema_real_eip !148
  %RIP_val = alloca i64, !mcsema_real_eip !148
  %R14_val = alloca i64, !mcsema_real_eip !148
  %R13_val = alloca i64, !mcsema_real_eip !148
  %R12_val = alloca i64, !mcsema_real_eip !148
  %R11_val = alloca i64, !mcsema_real_eip !148
  %R10_val = alloca i64, !mcsema_real_eip !148
  %R9_val = alloca i64, !mcsema_real_eip !148
  %R8_val = alloca i64, !mcsema_real_eip !148
  %RSP_val = alloca i64, !mcsema_real_eip !148
  %RBP_val = alloca i64, !mcsema_real_eip !148
  %RDI_val = alloca i64, !mcsema_real_eip !148
  %RSI_val = alloca i64, !mcsema_real_eip !148
  %RDX_val = alloca i64, !mcsema_real_eip !148
  %RCX_val = alloca i64, !mcsema_real_eip !148
  %RBX_val = alloca i64, !mcsema_real_eip !148
  %RAX_val = alloca i64, !mcsema_real_eip !148
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !148
  %1 = load i64* %RAX, !mcsema_real_eip !148
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !148
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !148
  %2 = load i64* %RBX, !mcsema_real_eip !148
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !148
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !148
  %3 = load i64* %RCX, !mcsema_real_eip !148
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !148
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !148
  %4 = load i64* %RDX, !mcsema_real_eip !148
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !148
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !148
  %5 = load i64* %RSI, !mcsema_real_eip !148
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !148
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !148
  %6 = load i64* %RDI, !mcsema_real_eip !148
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !148
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !148
  %7 = load i64* %RSP, !mcsema_real_eip !148
  store i64 %_local_stack_start_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !148
  %8 = load i64* %RBP, !mcsema_real_eip !148
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !148
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !148
  %9 = load i64* %R8, !mcsema_real_eip !148
  store i64 %9, i64* %R8_val, !mcsema_real_eip !148
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !148
  %10 = load i64* %R9, !mcsema_real_eip !148
  store i64 %10, i64* %R9_val, !mcsema_real_eip !148
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !148
  %11 = load i64* %R10, !mcsema_real_eip !148
  store i64 %11, i64* %R10_val, !mcsema_real_eip !148
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !148
  %12 = load i64* %R11, !mcsema_real_eip !148
  store i64 %12, i64* %R11_val, !mcsema_real_eip !148
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !148
  %13 = load i64* %R12, !mcsema_real_eip !148
  store i64 %13, i64* %R12_val, !mcsema_real_eip !148
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !148
  %14 = load i64* %R13, !mcsema_real_eip !148
  store i64 %14, i64* %R13_val, !mcsema_real_eip !148
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !148
  %15 = load i64* %R14, !mcsema_real_eip !148
  store i64 %15, i64* %R14_val, !mcsema_real_eip !148
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !148
  %16 = load i64* %R15, !mcsema_real_eip !148
  store i64 %16, i64* %R15_val, !mcsema_real_eip !148
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !148
  %17 = load i64* %RIP, !mcsema_real_eip !148
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !148
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !148
  %18 = load i1* %CF, align 1, !mcsema_real_eip !148
  store i1 %18, i1* %CF_val, !mcsema_real_eip !148
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !148
  %19 = load i1* %PF, align 1, !mcsema_real_eip !148
  store i1 %19, i1* %PF_val, !mcsema_real_eip !148
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !148
  %20 = load i1* %AF, align 1, !mcsema_real_eip !148
  store i1 %20, i1* %AF_val, !mcsema_real_eip !148
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !148
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !148
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !148
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !148
  %22 = load i1* %SF, align 1, !mcsema_real_eip !148
  store i1 %22, i1* %SF_val, !mcsema_real_eip !148
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !148
  %23 = load i1* %OF, align 1, !mcsema_real_eip !148
  store i1 %23, i1* %OF_val, !mcsema_real_eip !148
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !148
  %24 = load i1* %DF, align 1, !mcsema_real_eip !148
  store i1 %24, i1* %DF_val, !mcsema_real_eip !148
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !148
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !148
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !148
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !148
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !148
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !148
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !148
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !148
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !148
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !148
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !148
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !148
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !148
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !148
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !148
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !148
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !148
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !148
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !148
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !148
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !148
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !148
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !148
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !148
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !148
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !148
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !148
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !148
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !148
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !148
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !148
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !148
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !148
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !148
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !148
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !148
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !148
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !148
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !148
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !148
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !148
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !148
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !148
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !148
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !148
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !148
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !148
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !148
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !148
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !148
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !148
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !148
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !148
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !148
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !148
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !148
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !148
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !148
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !148
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !148
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !148
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !148
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !148
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !148
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !148
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !148
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !148
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !148
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !148
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !148
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !148
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !148
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !148
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !148
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_head_p2i_ = ptrtoint i64* %52 to i64
  %_head_cond_ = icmp uge i64 %_head_p2i_, %_local_stack_start_
  br i1 %_head_cond_, label %54, label %55

; <label>:54                                      ; preds = %entry
  %_offset_above_rbp_ = sub i64 %_head_p2i_, %_local_stack_start_
  %_address_in_parent_stack_ = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_
  br label %55

; <label>:55                                      ; preds = %54, %entry
  %56 = phi i64 [ %_head_p2i_, %entry ], [ %_address_in_parent_stack_, %54 ]
  %_address_ptr_in_parent_stack_ = inttoptr i64 %56 to i64*
  %_new_load_ = load i64* %_address_ptr_in_parent_stack_
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !148
  %57 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !148
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !148
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !148
  %58 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !148
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !148
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !148
  %59 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !148
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !148
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !148
  %60 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !148
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !148
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !148
  %61 = load i128* %XMM0, align 1, !mcsema_real_eip !148
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !148
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !148
  %62 = load i128* %XMM1, align 1, !mcsema_real_eip !148
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !148
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !148
  %63 = load i128* %XMM2, align 1, !mcsema_real_eip !148
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !148
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !148
  %64 = load i128* %XMM3, align 1, !mcsema_real_eip !148
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !148
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !148
  %65 = load i128* %XMM4, align 1, !mcsema_real_eip !148
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !148
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !148
  %66 = load i128* %XMM5, align 1, !mcsema_real_eip !148
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !148
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !148
  %67 = load i128* %XMM6, align 1, !mcsema_real_eip !148
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !148
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !148
  %68 = load i128* %XMM7, align 1, !mcsema_real_eip !148
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !148
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !148
  %69 = load i128* %XMM8, align 1, !mcsema_real_eip !148
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !148
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !148
  %70 = load i128* %XMM9, align 1, !mcsema_real_eip !148
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !148
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !148
  %71 = load i128* %XMM10, align 1, !mcsema_real_eip !148
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !148
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !148
  %72 = load i128* %XMM11, align 1, !mcsema_real_eip !148
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !148
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !148
  %73 = load i128* %XMM12, align 1, !mcsema_real_eip !148
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !148
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !148
  %74 = load i128* %XMM13, align 1, !mcsema_real_eip !148
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !148
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !148
  %75 = load i128* %XMM14, align 1, !mcsema_real_eip !148
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !148
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !148
  %76 = load i128* %XMM15, align 1, !mcsema_real_eip !148
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !148
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !148
  %77 = load i64* %STACK_BASE, !mcsema_real_eip !148
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !148
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !148
  %78 = load i64* %STACK_LIMIT, !mcsema_real_eip !148
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !148
  %79 = load i64* %RBP_val, !mcsema_real_eip !148
  %80 = load i64* %RSP_val, !mcsema_real_eip !148
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !148
  store i64 %79, i64* %82, !mcsema_real_eip !148
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !149
  %83 = add i64 %80, -40
  %84 = xor i64 %83, %81, !mcsema_real_eip !150
  %85 = and i64 %84, 16, !mcsema_real_eip !150
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !150
  store i1 %86, i1* %AF_val, !mcsema_real_eip !150
  %87 = trunc i64 %83 to i8, !mcsema_real_eip !150
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !150
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  store i1 %90, i1* %PF_val, !mcsema_real_eip !150
  %91 = icmp eq i64 %83, 0, !mcsema_real_eip !150
  store i1 %91, i1* %ZF_val, !mcsema_real_eip !150
  %92 = icmp slt i64 %83, 0
  store i1 %92, i1* %SF_val, !mcsema_real_eip !150
  %93 = icmp ult i64 %81, 32, !mcsema_real_eip !150
  store i1 %93, i1* %CF_val, !mcsema_real_eip !150
  %94 = and i64 %84, %81, !mcsema_real_eip !150
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !150
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !150
  %96 = load i64* %RBP_val, !mcsema_real_eip !151
  %97 = add i64 %96, -4, !mcsema_real_eip !151
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !151
  %99 = bitcast i64* %98 to i32*
  store i32 0, i32* %99, !mcsema_real_eip !151
  %100 = load i64* %RBP_val, !mcsema_real_eip !152
  %101 = add i64 %100, -4, !mcsema_real_eip !152
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !152
  %103 = bitcast i64* %102 to i32*
  %_head_p2i_1 = ptrtoint i32* %103 to i64
  %_head_cond_2 = icmp uge i64 %_head_p2i_1, %_local_stack_start_
  br i1 %_head_cond_2, label %104, label %105

; <label>:104                                     ; preds = %55
  %_offset_above_rbp_3 = sub i64 %_head_p2i_1, %_local_stack_start_
  %_address_in_parent_stack_4 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_3
  br label %105

; <label>:105                                     ; preds = %104, %55
  %106 = phi i64 [ %_head_p2i_1, %55 ], [ %_address_in_parent_stack_4, %104 ]
  %_address_ptr_in_parent_stack_5 = inttoptr i64 %106 to i32*
  %_new_load_6 = load i32* %_address_ptr_in_parent_stack_5
  %107 = add i32 %_new_load_6, -7
  %108 = xor i32 %107, %_new_load_6, !mcsema_real_eip !152
  %109 = and i32 %108, 16, !mcsema_real_eip !152
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !152
  store i1 %110, i1* %AF_val, !mcsema_real_eip !152
  %111 = trunc i32 %107 to i8, !mcsema_real_eip !152
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !152
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  store i1 %114, i1* %PF_val, !mcsema_real_eip !152
  %115 = icmp eq i32 %107, 0, !mcsema_real_eip !152
  store i1 %115, i1* %ZF_val, !mcsema_real_eip !152
  %116 = icmp slt i32 %107, 0
  store i1 %116, i1* %SF_val, !mcsema_real_eip !152
  %117 = icmp ult i32 %_new_load_6, 7, !mcsema_real_eip !152
  store i1 %117, i1* %CF_val, !mcsema_real_eip !152
  %118 = and i32 %108, %_new_load_6, !mcsema_real_eip !152
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF_val, !mcsema_real_eip !152
  %tmp = xor i1 %116, %119
  br i1 %tmp, label %block_0x1c.preheader, label %block_0x98, !mcsema_real_eip !153

block_0x1c.preheader:                             ; preds = %105
  br label %block_0x1c

block_0x98.loopexit:                              ; preds = %279
  br label %block_0x98

block_0x98:                                       ; preds = %block_0x98.loopexit, %105
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !154
  %120 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !155
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !155
  %121 = load i64* %RBP_val, !mcsema_real_eip !156
  %122 = add i64 %121, -20, !mcsema_real_eip !156
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !156
  %124 = trunc i64 %120 to i32, !mcsema_real_eip !156
  %125 = bitcast i64* %123 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !156
  %126 = load i64* %RSP_val, !mcsema_real_eip !157
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %126, i64 32)
  %127 = extractvalue { i64, i1 } %uadd75, 0
  %128 = xor i64 %127, %126, !mcsema_real_eip !157
  %129 = and i64 %128, 16, !mcsema_real_eip !157
  %130 = icmp ne i64 %129, 0, !mcsema_real_eip !157
  store i1 %130, i1* %AF_val, !mcsema_real_eip !157
  %131 = icmp slt i64 %127, 0
  store i1 %131, i1* %SF_val, !mcsema_real_eip !157
  %132 = icmp eq i64 %127, 0, !mcsema_real_eip !157
  store i1 %132, i1* %ZF_val, !mcsema_real_eip !157
  %133 = xor i64 %126, -9223372036854775808, !mcsema_real_eip !157
  %134 = and i64 %128, %133, !mcsema_real_eip !157
  %135 = icmp slt i64 %134, 0
  store i1 %135, i1* %OF_val, !mcsema_real_eip !157
  %136 = trunc i64 %127 to i8, !mcsema_real_eip !157
  %137 = tail call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !157
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF_val, !mcsema_real_eip !157
  %140 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %140, i1* %CF_val, !mcsema_real_eip !157
  store i64 %127, i64* %RSP_val, !mcsema_real_eip !157
  %141 = inttoptr i64 %127 to i64*, !mcsema_real_eip !158
  %_head_p2i_7 = ptrtoint i64* %141 to i64
  %_head_cond_8 = icmp uge i64 %_head_p2i_7, %_local_stack_start_
  br i1 %_head_cond_8, label %142, label %143

; <label>:142                                     ; preds = %block_0x98
  %_offset_above_rbp_9 = sub i64 %_head_p2i_7, %_local_stack_start_
  %_address_in_parent_stack_10 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_9
  br label %143

; <label>:143                                     ; preds = %142, %block_0x98
  %144 = phi i64 [ %_head_p2i_7, %block_0x98 ], [ %_address_in_parent_stack_10, %142 ]
  %_address_ptr_in_parent_stack_11 = inttoptr i64 %144 to i64*
  %_new_load_12 = load i64* %_address_ptr_in_parent_stack_11
  store i64 %_new_load_12, i64* %RBP_val, !mcsema_real_eip !158
  %145 = add i64 %127, 16, !mcsema_real_eip !159
  store i64 %145, i64* %RSP_val, !mcsema_real_eip !159
  %146 = load i64* %RAX_val, !mcsema_real_eip !159
  store i64 %146, i64* %RAX, !mcsema_real_eip !159
  %147 = load i64* %RBX_val, !mcsema_real_eip !159
  store i64 %147, i64* %RBX, !mcsema_real_eip !159
  %148 = load i64* %RCX_val, !mcsema_real_eip !159
  store i64 %148, i64* %RCX, !mcsema_real_eip !159
  %149 = load i64* %RDX_val, !mcsema_real_eip !159
  store i64 %149, i64* %RDX, !mcsema_real_eip !159
  %150 = load i64* %RSI_val, !mcsema_real_eip !159
  store i64 %150, i64* %RSI, !mcsema_real_eip !159
  %151 = load i64* %RDI_val, !mcsema_real_eip !159
  store i64 %151, i64* %RDI, !mcsema_real_eip !159
  %152 = load i64* %RSP_val, !mcsema_real_eip !159
  store i64 %152, i64* %RSP, !mcsema_real_eip !159
  %153 = load i64* %RBP_val, !mcsema_real_eip !159
  store i64 %153, i64* %RBP, !mcsema_real_eip !159
  %154 = load i64* %R8_val, !mcsema_real_eip !159
  store i64 %154, i64* %R8, !mcsema_real_eip !159
  %155 = load i64* %R9_val, !mcsema_real_eip !159
  store i64 %155, i64* %R9, !mcsema_real_eip !159
  %156 = load i64* %R10_val, !mcsema_real_eip !159
  store i64 %156, i64* %R10, !mcsema_real_eip !159
  %157 = load i64* %R11_val, !mcsema_real_eip !159
  store i64 %157, i64* %R11, !mcsema_real_eip !159
  %158 = load i64* %R12_val, !mcsema_real_eip !159
  store i64 %158, i64* %R12, !mcsema_real_eip !159
  %159 = load i64* %R13_val, !mcsema_real_eip !159
  store i64 %159, i64* %R13, !mcsema_real_eip !159
  %160 = load i64* %R14_val, !mcsema_real_eip !159
  store i64 %160, i64* %R14, !mcsema_real_eip !159
  %161 = load i64* %R15_val, !mcsema_real_eip !159
  store i64 %161, i64* %R15, !mcsema_real_eip !159
  %162 = load i64* %RIP_val, !mcsema_real_eip !159
  store i64 %162, i64* %RIP, !mcsema_real_eip !159
  %163 = load i1* %CF_val, !mcsema_real_eip !159
  store i1 %163, i1* %CF, align 1, !mcsema_real_eip !159
  %164 = load i1* %PF_val, !mcsema_real_eip !159
  store i1 %164, i1* %PF, align 1, !mcsema_real_eip !159
  %165 = load i1* %AF_val, !mcsema_real_eip !159
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !159
  %166 = load i1* %ZF_val, !mcsema_real_eip !159
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !159
  %167 = load i1* %SF_val, !mcsema_real_eip !159
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !159
  %168 = load i1* %OF_val, !mcsema_real_eip !159
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !159
  %169 = load i1* %DF_val, !mcsema_real_eip !159
  store i1 %169, i1* %DF, align 1, !mcsema_real_eip !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !159
  %170 = load i1* %FPU_B_val, !mcsema_real_eip !159
  store i1 %170, i1* %FPU_B, align 1, !mcsema_real_eip !159
  %171 = load i1* %FPU_C3_val, !mcsema_real_eip !159
  store i1 %171, i1* %FPU_C3, align 1, !mcsema_real_eip !159
  %172 = load i3* %FPU_TOP_val, !mcsema_real_eip !159
  store i3 %172, i3* %FPU_TOP, align 1, !mcsema_real_eip !159
  %173 = load i1* %FPU_C2_val, !mcsema_real_eip !159
  store i1 %173, i1* %FPU_C2, align 1, !mcsema_real_eip !159
  %174 = load i1* %FPU_C1_val, !mcsema_real_eip !159
  store i1 %174, i1* %FPU_C1, align 1, !mcsema_real_eip !159
  %175 = load i1* %FPU_C0_val, !mcsema_real_eip !159
  store i1 %175, i1* %FPU_C0, align 1, !mcsema_real_eip !159
  %176 = load i1* %FPU_ES_val, !mcsema_real_eip !159
  store i1 %176, i1* %FPU_ES, align 1, !mcsema_real_eip !159
  %177 = load i1* %FPU_SF_val, !mcsema_real_eip !159
  store i1 %177, i1* %FPU_SF, align 1, !mcsema_real_eip !159
  %178 = load i1* %FPU_PE_val, !mcsema_real_eip !159
  store i1 %178, i1* %FPU_PE, align 1, !mcsema_real_eip !159
  %179 = load i1* %FPU_UE_val, !mcsema_real_eip !159
  store i1 %179, i1* %FPU_UE, align 1, !mcsema_real_eip !159
  %180 = load i1* %FPU_OE_val, !mcsema_real_eip !159
  store i1 %180, i1* %FPU_OE, align 1, !mcsema_real_eip !159
  %181 = load i1* %FPU_ZE_val, !mcsema_real_eip !159
  store i1 %181, i1* %FPU_ZE, align 1, !mcsema_real_eip !159
  %182 = load i1* %FPU_DE_val, !mcsema_real_eip !159
  store i1 %182, i1* %FPU_DE, align 1, !mcsema_real_eip !159
  %183 = load i1* %FPU_IE_val, !mcsema_real_eip !159
  store i1 %183, i1* %FPU_IE, align 1, !mcsema_real_eip !159
  %184 = load i1* %FPU_X_val, !mcsema_real_eip !159
  store i1 %184, i1* %FPU_X, align 1, !mcsema_real_eip !159
  %185 = load i2* %FPU_RC_val, !mcsema_real_eip !159
  store i2 %185, i2* %FPU_RC, align 1, !mcsema_real_eip !159
  %186 = load i2* %FPU_PC_val, !mcsema_real_eip !159
  store i2 %186, i2* %FPU_PC, align 1, !mcsema_real_eip !159
  %187 = load i1* %FPU_PM_val, !mcsema_real_eip !159
  store i1 %187, i1* %FPU_PM, align 1, !mcsema_real_eip !159
  %188 = load i1* %FPU_UM_val, !mcsema_real_eip !159
  store i1 %188, i1* %FPU_UM, align 1, !mcsema_real_eip !159
  %189 = load i1* %FPU_OM_val, !mcsema_real_eip !159
  store i1 %189, i1* %FPU_OM, align 1, !mcsema_real_eip !159
  %190 = load i1* %FPU_ZM_val, !mcsema_real_eip !159
  store i1 %190, i1* %FPU_ZM, align 1, !mcsema_real_eip !159
  %191 = load i1* %FPU_DM_val, !mcsema_real_eip !159
  store i1 %191, i1* %FPU_DM, align 1, !mcsema_real_eip !159
  %192 = load i1* %FPU_IM_val, !mcsema_real_eip !159
  store i1 %192, i1* %FPU_IM, align 1, !mcsema_real_eip !159
  %_head_p2i_13 = ptrtoint i64* %53 to i64
  %_head_cond_14 = icmp uge i64 %_head_p2i_13, %_local_stack_start_
  br i1 %_head_cond_14, label %193, label %194

; <label>:193                                     ; preds = %143
  %_offset_above_rbp_15 = sub i64 %_head_p2i_13, %_local_stack_start_
  %_address_in_parent_stack_16 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_15
  br label %194

; <label>:194                                     ; preds = %193, %143
  %195 = phi i64 [ %_head_p2i_13, %143 ], [ %_address_in_parent_stack_16, %193 ]
  %_address_ptr_in_parent_stack_17 = inttoptr i64 %195 to i64*
  %_new_load_18 = load i64* %_address_ptr_in_parent_stack_17
  store i64 %_new_load_18, i64* %52, align 4
  %196 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !159
  store i16 %196, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !159
  %197 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !159
  store i64 %197, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !159
  %198 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !159
  store i16 %198, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !159
  %199 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !159
  store i64 %199, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !159
  %200 = load i128* %XMM0_val, !mcsema_real_eip !159
  store i128 %200, i128* %XMM0, align 1, !mcsema_real_eip !159
  %201 = load i128* %XMM1_val, !mcsema_real_eip !159
  store i128 %201, i128* %XMM1, align 1, !mcsema_real_eip !159
  %202 = load i128* %XMM2_val, !mcsema_real_eip !159
  store i128 %202, i128* %XMM2, align 1, !mcsema_real_eip !159
  %203 = load i128* %XMM3_val, !mcsema_real_eip !159
  store i128 %203, i128* %XMM3, align 1, !mcsema_real_eip !159
  %204 = load i128* %XMM4_val, !mcsema_real_eip !159
  store i128 %204, i128* %XMM4, align 1, !mcsema_real_eip !159
  %205 = load i128* %XMM5_val, !mcsema_real_eip !159
  store i128 %205, i128* %XMM5, align 1, !mcsema_real_eip !159
  %206 = load i128* %XMM6_val, !mcsema_real_eip !159
  store i128 %206, i128* %XMM6, align 1, !mcsema_real_eip !159
  %207 = load i128* %XMM7_val, !mcsema_real_eip !159
  store i128 %207, i128* %XMM7, align 1, !mcsema_real_eip !159
  %208 = load i128* %XMM8_val, !mcsema_real_eip !159
  store i128 %208, i128* %XMM8, align 1, !mcsema_real_eip !159
  %209 = load i128* %XMM9_val, !mcsema_real_eip !159
  store i128 %209, i128* %XMM9, align 1, !mcsema_real_eip !159
  %210 = load i128* %XMM10_val, !mcsema_real_eip !159
  store i128 %210, i128* %XMM10, align 1, !mcsema_real_eip !159
  %211 = load i128* %XMM11_val, !mcsema_real_eip !159
  store i128 %211, i128* %XMM11, align 1, !mcsema_real_eip !159
  %212 = load i128* %XMM12_val, !mcsema_real_eip !159
  store i128 %212, i128* %XMM12, align 1, !mcsema_real_eip !159
  %213 = load i128* %XMM13_val, !mcsema_real_eip !159
  store i128 %213, i128* %XMM13, align 1, !mcsema_real_eip !159
  %214 = load i128* %XMM14_val, !mcsema_real_eip !159
  store i128 %214, i128* %XMM14, align 1, !mcsema_real_eip !159
  %215 = load i128* %XMM15_val, !mcsema_real_eip !159
  store i128 %215, i128* %XMM15, align 1, !mcsema_real_eip !159
  %216 = load i64* %STACK_BASE_val, !mcsema_real_eip !159
  store i64 %216, i64* %STACK_BASE, align 1, !mcsema_real_eip !159
  %217 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !159
  store i64 %217, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x1c:                                       ; preds = %279, %block_0x1c.preheader
  %218 = load i64* %RBP_val, !mcsema_real_eip !160
  %219 = add i64 %218, -8, !mcsema_real_eip !160
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !160
  %221 = bitcast i64* %220 to i32*
  store i32 0, i32* %221, !mcsema_real_eip !160
  %222 = load i64* %RBP_val, !mcsema_real_eip !161
  %223 = add i64 %222, -8, !mcsema_real_eip !161
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !161
  %225 = bitcast i64* %224 to i32*
  %_head_p2i_19 = ptrtoint i32* %225 to i64
  %_head_cond_20 = icmp uge i64 %_head_p2i_19, %_local_stack_start_
  br i1 %_head_cond_20, label %226, label %227

; <label>:226                                     ; preds = %block_0x1c
  %_offset_above_rbp_21 = sub i64 %_head_p2i_19, %_local_stack_start_
  %_address_in_parent_stack_22 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_21
  br label %227

; <label>:227                                     ; preds = %226, %block_0x1c
  %228 = phi i64 [ %_head_p2i_19, %block_0x1c ], [ %_address_in_parent_stack_22, %226 ]
  %_address_ptr_in_parent_stack_23 = inttoptr i64 %228 to i32*
  %_new_load_24 = load i32* %_address_ptr_in_parent_stack_23
  %229 = add i32 %_new_load_24, -11
  %230 = xor i32 %229, %_new_load_24, !mcsema_real_eip !161
  %231 = and i32 %230, 16, !mcsema_real_eip !161
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !161
  store i1 %232, i1* %AF_val, !mcsema_real_eip !161
  %233 = trunc i32 %229 to i8, !mcsema_real_eip !161
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !161
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF_val, !mcsema_real_eip !161
  %237 = icmp eq i32 %229, 0, !mcsema_real_eip !161
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !161
  %238 = icmp slt i32 %229, 0
  store i1 %238, i1* %SF_val, !mcsema_real_eip !161
  %239 = icmp ult i32 %_new_load_24, 11, !mcsema_real_eip !161
  store i1 %239, i1* %CF_val, !mcsema_real_eip !161
  %240 = and i32 %230, %_new_load_24, !mcsema_real_eip !161
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !161
  %tmp70 = xor i1 %238, %241
  br i1 %tmp70, label %block_0x30.preheader, label %block_0x74, !mcsema_real_eip !162

block_0x30.preheader:                             ; preds = %227
  br label %block_0x30

block_0x74.loopexit:                              ; preds = %375
  br label %block_0x74

block_0x74:                                       ; preds = %block_0x74.loopexit, %227
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !163
  %242 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !164
  store i64 %242, i64* %RAX_val, !mcsema_real_eip !164
  %243 = load i64* %RBP_val, !mcsema_real_eip !165
  %244 = add i64 %243, -16, !mcsema_real_eip !165
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !165
  %246 = trunc i64 %242 to i32, !mcsema_real_eip !165
  %247 = bitcast i64* %245 to i32*
  store i32 %246, i32* %247, !mcsema_real_eip !165
  %248 = load i64* %RBP_val, !mcsema_real_eip !166
  %249 = add i64 %248, -4, !mcsema_real_eip !166
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !166
  %251 = bitcast i64* %250 to i32*
  %_head_p2i_25 = ptrtoint i32* %251 to i64
  %_head_cond_26 = icmp uge i64 %_head_p2i_25, %_local_stack_start_
  br i1 %_head_cond_26, label %252, label %253

; <label>:252                                     ; preds = %block_0x74
  %_offset_above_rbp_27 = sub i64 %_head_p2i_25, %_local_stack_start_
  %_address_in_parent_stack_28 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_27
  br label %253

; <label>:253                                     ; preds = %252, %block_0x74
  %254 = phi i64 [ %_head_p2i_25, %block_0x74 ], [ %_address_in_parent_stack_28, %252 ]
  %_address_ptr_in_parent_stack_29 = inttoptr i64 %254 to i32*
  %_new_load_30 = load i32* %_address_ptr_in_parent_stack_29
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_30, i32 1)
  %255 = extractvalue { i32, i1 } %uadd73, 0
  %256 = xor i32 %255, %_new_load_30, !mcsema_real_eip !167
  %257 = and i32 %256, 16, !mcsema_real_eip !167
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !167
  store i1 %258, i1* %AF_val, !mcsema_real_eip !167
  %259 = icmp slt i32 %255, 0
  store i1 %259, i1* %SF_val, !mcsema_real_eip !167
  %260 = icmp eq i32 %255, 0, !mcsema_real_eip !167
  store i1 %260, i1* %ZF_val, !mcsema_real_eip !167
  %261 = xor i32 %_new_load_30, -2147483648, !mcsema_real_eip !167
  %262 = and i32 %256, %261, !mcsema_real_eip !167
  %263 = icmp slt i32 %262, 0
  store i1 %263, i1* %OF_val, !mcsema_real_eip !167
  %264 = trunc i32 %255 to i8, !mcsema_real_eip !167
  %265 = tail call i8 @llvm.ctpop.i8(i8 %264), !mcsema_real_eip !167
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  store i1 %267, i1* %PF_val, !mcsema_real_eip !167
  %268 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %268, i1* %CF_val, !mcsema_real_eip !167
  %269 = zext i32 %255 to i64, !mcsema_real_eip !167
  store i64 %269, i64* %RAX_val, !mcsema_real_eip !167
  %270 = load i64* %RBP_val, !mcsema_real_eip !168
  %271 = add i64 %270, -4, !mcsema_real_eip !168
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !168
  %273 = bitcast i64* %272 to i32*
  store i32 %255, i32* %273, !mcsema_real_eip !168
  %274 = load i64* %RBP_val, !mcsema_real_eip !152
  %275 = add i64 %274, -4, !mcsema_real_eip !152
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !152
  %277 = bitcast i64* %276 to i32*
  %_head_p2i_31 = ptrtoint i32* %277 to i64
  %_head_cond_32 = icmp uge i64 %_head_p2i_31, %_local_stack_start_
  br i1 %_head_cond_32, label %278, label %279

; <label>:278                                     ; preds = %253
  %_offset_above_rbp_33 = sub i64 %_head_p2i_31, %_local_stack_start_
  %_address_in_parent_stack_34 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_33
  br label %279

; <label>:279                                     ; preds = %278, %253
  %280 = phi i64 [ %_head_p2i_31, %253 ], [ %_address_in_parent_stack_34, %278 ]
  %_address_ptr_in_parent_stack_35 = inttoptr i64 %280 to i32*
  %_new_load_36 = load i32* %_address_ptr_in_parent_stack_35
  %281 = add i32 %_new_load_36, -7
  %282 = xor i32 %281, %_new_load_36, !mcsema_real_eip !152
  %283 = and i32 %282, 16, !mcsema_real_eip !152
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !152
  store i1 %284, i1* %AF_val, !mcsema_real_eip !152
  %285 = trunc i32 %281 to i8, !mcsema_real_eip !152
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !152
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !152
  %289 = icmp eq i32 %281, 0, !mcsema_real_eip !152
  store i1 %289, i1* %ZF_val, !mcsema_real_eip !152
  %290 = icmp slt i32 %281, 0
  store i1 %290, i1* %SF_val, !mcsema_real_eip !152
  %291 = icmp ult i32 %_new_load_36, 7, !mcsema_real_eip !152
  store i1 %291, i1* %CF_val, !mcsema_real_eip !152
  %292 = and i32 %282, %_new_load_36, !mcsema_real_eip !152
  %293 = icmp slt i32 %292, 0
  store i1 %293, i1* %OF_val, !mcsema_real_eip !152
  %tmp74 = xor i1 %290, %293
  br i1 %tmp74, label %block_0x1c, label %block_0x98.loopexit, !mcsema_real_eip !153

block_0x30:                                       ; preds = %375, %block_0x30.preheader
  store i64 ptrtoint (%1* @data_0x3ff to i64), i64* %RDI_val, !mcsema_real_eip !169
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !170
  %294 = load i64* %RBP_val, !mcsema_real_eip !171
  %295 = add i64 %294, -8, !mcsema_real_eip !171
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !171
  %297 = bitcast i64* %296 to i32*
  %_head_p2i_37 = ptrtoint i32* %297 to i64
  %_head_cond_38 = icmp uge i64 %_head_p2i_37, %_local_stack_start_
  br i1 %_head_cond_38, label %298, label %299

; <label>:298                                     ; preds = %block_0x30
  %_offset_above_rbp_39 = sub i64 %_head_p2i_37, %_local_stack_start_
  %_address_in_parent_stack_40 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_39
  br label %299

; <label>:299                                     ; preds = %298, %block_0x30
  %300 = phi i64 [ %_head_p2i_37, %block_0x30 ], [ %_address_in_parent_stack_40, %298 ]
  %_address_ptr_in_parent_stack_41 = inttoptr i64 %300 to i32*
  %_new_load_42 = load i32* %_address_ptr_in_parent_stack_41
  %301 = sext i32 %_new_load_42 to i64, !mcsema_real_eip !171
  store i64 %301, i64* %RCX_val, !mcsema_real_eip !171
  %302 = load i64* %RBP_val, !mcsema_real_eip !172
  %303 = add i64 %302, -4, !mcsema_real_eip !172
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !172
  %305 = bitcast i64* %304 to i32*
  %_head_p2i_43 = ptrtoint i32* %305 to i64
  %_head_cond_44 = icmp uge i64 %_head_p2i_43, %_local_stack_start_
  br i1 %_head_cond_44, label %306, label %307

; <label>:306                                     ; preds = %299
  %_offset_above_rbp_45 = sub i64 %_head_p2i_43, %_local_stack_start_
  %_address_in_parent_stack_46 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_45
  br label %307

; <label>:307                                     ; preds = %306, %299
  %308 = phi i64 [ %_head_p2i_43, %299 ], [ %_address_in_parent_stack_46, %306 ]
  %_address_ptr_in_parent_stack_47 = inttoptr i64 %308 to i32*
  %_new_load_48 = load i32* %_address_ptr_in_parent_stack_47
  %309 = sext i32 %_new_load_48 to i64, !mcsema_real_eip !172
  %310 = mul i64 %309, 11, !mcsema_real_eip !173
  store i64 %310, i64* %RDX_val, !mcsema_real_eip !173
  %311 = load i64* %RAX_val, !mcsema_real_eip !174
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %310, i64 %311)
  %312 = extractvalue { i64, i1 } %uadd, 0
  %313 = xor i64 %312, %311, !mcsema_real_eip !174
  %314 = xor i64 %313, %310, !mcsema_real_eip !174
  %315 = and i64 %314, 16, !mcsema_real_eip !174
  %316 = icmp ne i64 %315, 0, !mcsema_real_eip !174
  store i1 %316, i1* %AF_val, !mcsema_real_eip !174
  %317 = icmp slt i64 %312, 0
  store i1 %317, i1* %SF_val, !mcsema_real_eip !174
  %318 = icmp eq i64 %312, 0, !mcsema_real_eip !174
  store i1 %318, i1* %ZF_val, !mcsema_real_eip !174
  %319 = xor i64 %311, -9223372036854775808, !mcsema_real_eip !174
  %320 = xor i64 %319, %310, !mcsema_real_eip !174
  %321 = and i64 %313, %320, !mcsema_real_eip !174
  %322 = icmp slt i64 %321, 0
  store i1 %322, i1* %OF_val, !mcsema_real_eip !174
  %323 = trunc i64 %312 to i8, !mcsema_real_eip !174
  %324 = tail call i8 @llvm.ctpop.i8(i8 %323), !mcsema_real_eip !174
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  store i1 %326, i1* %PF_val, !mcsema_real_eip !174
  %327 = extractvalue { i64, i1 } %uadd, 1
  store i1 %327, i1* %CF_val, !mcsema_real_eip !174
  store i64 %312, i64* %RAX_val, !mcsema_real_eip !174
  %328 = load i64* %RCX_val, !mcsema_real_eip !175
  %329 = add i64 %328, %312, !mcsema_real_eip !175
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !175
  %331 = bitcast i64* %330 to i8*
  %_head_p2i_49 = ptrtoint i8* %331 to i64
  %_head_cond_50 = icmp uge i64 %_head_p2i_49, %_local_stack_start_
  br i1 %_head_cond_50, label %332, label %333

; <label>:332                                     ; preds = %307
  %_offset_above_rbp_51 = sub i64 %_head_p2i_49, %_local_stack_start_
  %_address_in_parent_stack_52 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_51
  br label %333

; <label>:333                                     ; preds = %332, %307
  %334 = phi i64 [ %_head_p2i_49, %307 ], [ %_address_in_parent_stack_52, %332 ]
  %_address_ptr_in_parent_stack_53 = inttoptr i64 %334 to i8*
  %_new_load_54 = load i8* %_address_ptr_in_parent_stack_53
  %335 = sext i8 %_new_load_54 to i32, !mcsema_real_eip !175
  %336 = zext i32 %335 to i64, !mcsema_real_eip !175
  store i64 %336, i64* %RSI_val, !mcsema_real_eip !175
  %337 = load i64* %RDI_val, !mcsema_real_eip !176
  %338 = tail call x86_64_sysvcc i64 @printf(i64 %337), !mcsema_real_eip !176
  store i64 %338, i64* %RAX_val, !mcsema_real_eip !176
  %339 = load i64* %RBP_val, !mcsema_real_eip !177
  %340 = add i64 %339, -12, !mcsema_real_eip !177
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !177
  %342 = trunc i64 %338 to i32, !mcsema_real_eip !177
  %343 = bitcast i64* %341 to i32*
  store i32 %342, i32* %343, !mcsema_real_eip !177
  %344 = load i64* %RBP_val, !mcsema_real_eip !178
  %345 = add i64 %344, -8, !mcsema_real_eip !178
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !178
  %347 = bitcast i64* %346 to i32*
  %_head_p2i_55 = ptrtoint i32* %347 to i64
  %_head_cond_56 = icmp uge i64 %_head_p2i_55, %_local_stack_start_
  br i1 %_head_cond_56, label %348, label %349

; <label>:348                                     ; preds = %333
  %_offset_above_rbp_57 = sub i64 %_head_p2i_55, %_local_stack_start_
  %_address_in_parent_stack_58 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_57
  br label %349

; <label>:349                                     ; preds = %348, %333
  %350 = phi i64 [ %_head_p2i_55, %333 ], [ %_address_in_parent_stack_58, %348 ]
  %_address_ptr_in_parent_stack_59 = inttoptr i64 %350 to i32*
  %_new_load_60 = load i32* %_address_ptr_in_parent_stack_59
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_60, i32 1)
  %351 = extractvalue { i32, i1 } %uadd71, 0
  %352 = xor i32 %351, %_new_load_60, !mcsema_real_eip !179
  %353 = and i32 %352, 16, !mcsema_real_eip !179
  %354 = icmp ne i32 %353, 0, !mcsema_real_eip !179
  store i1 %354, i1* %AF_val, !mcsema_real_eip !179
  %355 = icmp slt i32 %351, 0
  store i1 %355, i1* %SF_val, !mcsema_real_eip !179
  %356 = icmp eq i32 %351, 0, !mcsema_real_eip !179
  store i1 %356, i1* %ZF_val, !mcsema_real_eip !179
  %357 = xor i32 %_new_load_60, -2147483648, !mcsema_real_eip !179
  %358 = and i32 %352, %357, !mcsema_real_eip !179
  %359 = icmp slt i32 %358, 0
  store i1 %359, i1* %OF_val, !mcsema_real_eip !179
  %360 = trunc i32 %351 to i8, !mcsema_real_eip !179
  %361 = tail call i8 @llvm.ctpop.i8(i8 %360), !mcsema_real_eip !179
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  store i1 %363, i1* %PF_val, !mcsema_real_eip !179
  %364 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %364, i1* %CF_val, !mcsema_real_eip !179
  %365 = zext i32 %351 to i64, !mcsema_real_eip !179
  store i64 %365, i64* %RAX_val, !mcsema_real_eip !179
  %366 = load i64* %RBP_val, !mcsema_real_eip !180
  %367 = add i64 %366, -8, !mcsema_real_eip !180
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !180
  %369 = bitcast i64* %368 to i32*
  store i32 %351, i32* %369, !mcsema_real_eip !180
  %370 = load i64* %RBP_val, !mcsema_real_eip !161
  %371 = add i64 %370, -8, !mcsema_real_eip !161
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !161
  %373 = bitcast i64* %372 to i32*
  %_head_p2i_61 = ptrtoint i32* %373 to i64
  %_head_cond_62 = icmp uge i64 %_head_p2i_61, %_local_stack_start_
  br i1 %_head_cond_62, label %374, label %375

; <label>:374                                     ; preds = %349
  %_offset_above_rbp_63 = sub i64 %_head_p2i_61, %_local_stack_start_
  %_address_in_parent_stack_64 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_63
  br label %375

; <label>:375                                     ; preds = %374, %349
  %376 = phi i64 [ %_head_p2i_61, %349 ], [ %_address_in_parent_stack_64, %374 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %376 to i32*
  %_new_load_66 = load i32* %_address_ptr_in_parent_stack_65
  %377 = add i32 %_new_load_66, -11
  %378 = xor i32 %377, %_new_load_66, !mcsema_real_eip !161
  %379 = and i32 %378, 16, !mcsema_real_eip !161
  %380 = icmp ne i32 %379, 0, !mcsema_real_eip !161
  store i1 %380, i1* %AF_val, !mcsema_real_eip !161
  %381 = trunc i32 %377 to i8, !mcsema_real_eip !161
  %382 = tail call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !161
  %383 = and i8 %382, 1
  %384 = icmp eq i8 %383, 0
  store i1 %384, i1* %PF_val, !mcsema_real_eip !161
  %385 = icmp eq i32 %377, 0, !mcsema_real_eip !161
  store i1 %385, i1* %ZF_val, !mcsema_real_eip !161
  %386 = icmp slt i32 %377, 0
  store i1 %386, i1* %SF_val, !mcsema_real_eip !161
  %387 = icmp ult i32 %_new_load_66, 11, !mcsema_real_eip !161
  store i1 %387, i1* %CF_val, !mcsema_real_eip !161
  %388 = and i32 %378, %_new_load_66, !mcsema_real_eip !161
  %389 = icmp slt i32 %388, 0
  store i1 %389, i1* %OF_val, !mcsema_real_eip !161
  %tmp72 = xor i1 %386, %389
  br i1 %tmp72, label %block_0x30, label %block_0x74.loopexit, !mcsema_real_eip !162
}

define internal x86_64_sysvcc void @sub_02(%struct.regs*, i64 %_parent_stack_end_ptr_) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 40
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = sub i64 %_local_stack_start_, 40
  %R15_val = alloca i64, !mcsema_real_eip !148
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !148
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !148
  %XMM15_val = alloca i128, !mcsema_real_eip !148
  %XMM14_val = alloca i128, !mcsema_real_eip !148
  %XMM13_val = alloca i128, !mcsema_real_eip !148
  %XMM12_val = alloca i128, !mcsema_real_eip !148
  %XMM11_val = alloca i128, !mcsema_real_eip !148
  %XMM10_val = alloca i128, !mcsema_real_eip !148
  %XMM9_val = alloca i128, !mcsema_real_eip !148
  %XMM8_val = alloca i128, !mcsema_real_eip !148
  %XMM7_val = alloca i128, !mcsema_real_eip !148
  %XMM6_val = alloca i128, !mcsema_real_eip !148
  %XMM5_val = alloca i128, !mcsema_real_eip !148
  %XMM4_val = alloca i128, !mcsema_real_eip !148
  %XMM3_val = alloca i128, !mcsema_real_eip !148
  %XMM2_val = alloca i128, !mcsema_real_eip !148
  %XMM1_val = alloca i128, !mcsema_real_eip !148
  %XMM0_val = alloca i128, !mcsema_real_eip !148
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !148
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !148
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !148
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !148
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !148
  %FPU_IM_val = alloca i1, !mcsema_real_eip !148
  %FPU_DM_val = alloca i1, !mcsema_real_eip !148
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !148
  %FPU_OM_val = alloca i1, !mcsema_real_eip !148
  %FPU_UM_val = alloca i1, !mcsema_real_eip !148
  %FPU_PM_val = alloca i1, !mcsema_real_eip !148
  %FPU_PC_val = alloca i2, !mcsema_real_eip !148
  %FPU_RC_val = alloca i2, !mcsema_real_eip !148
  %FPU_X_val = alloca i1, !mcsema_real_eip !148
  %FPU_IE_val = alloca i1, !mcsema_real_eip !148
  %FPU_DE_val = alloca i1, !mcsema_real_eip !148
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !148
  %FPU_OE_val = alloca i1, !mcsema_real_eip !148
  %FPU_UE_val = alloca i1, !mcsema_real_eip !148
  %FPU_PE_val = alloca i1, !mcsema_real_eip !148
  %FPU_SF_val = alloca i1, !mcsema_real_eip !148
  %FPU_ES_val = alloca i1, !mcsema_real_eip !148
  %FPU_C0_val = alloca i1, !mcsema_real_eip !148
  %FPU_C1_val = alloca i1, !mcsema_real_eip !148
  %FPU_C2_val = alloca i1, !mcsema_real_eip !148
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !148
  %FPU_C3_val = alloca i1, !mcsema_real_eip !148
  %FPU_B_val = alloca i1, !mcsema_real_eip !148
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !148
  %DF_val = alloca i1, !mcsema_real_eip !148
  %OF_val = alloca i1, !mcsema_real_eip !148
  %SF_val = alloca i1, !mcsema_real_eip !148
  %CF_val = alloca i1, !mcsema_real_eip !148
  %AF_val = alloca i1, !mcsema_real_eip !148
  %PF_val = alloca i1, !mcsema_real_eip !148
  %ZF_val = alloca i1, !mcsema_real_eip !148
  %RIP_val = alloca i64, !mcsema_real_eip !148
  %R14_val = alloca i64, !mcsema_real_eip !148
  %R13_val = alloca i64, !mcsema_real_eip !148
  %R12_val = alloca i64, !mcsema_real_eip !148
  %R11_val = alloca i64, !mcsema_real_eip !148
  %R10_val = alloca i64, !mcsema_real_eip !148
  %R9_val = alloca i64, !mcsema_real_eip !148
  %R8_val = alloca i64, !mcsema_real_eip !148
  %RSP_val = alloca i64, !mcsema_real_eip !148
  %RBP_val = alloca i64, !mcsema_real_eip !148
  %RDI_val = alloca i64, !mcsema_real_eip !148
  %RSI_val = alloca i64, !mcsema_real_eip !148
  %RDX_val = alloca i64, !mcsema_real_eip !148
  %RCX_val = alloca i64, !mcsema_real_eip !148
  %RBX_val = alloca i64, !mcsema_real_eip !148
  %RAX_val = alloca i64, !mcsema_real_eip !148
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !148
  %1 = load i64* %RAX, !mcsema_real_eip !148
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !148
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !148
  %2 = load i64* %RBX, !mcsema_real_eip !148
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !148
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !148
  %3 = load i64* %RCX, !mcsema_real_eip !148
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !148
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !148
  %4 = load i64* %RDX, !mcsema_real_eip !148
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !148
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !148
  %5 = load i64* %RSI, !mcsema_real_eip !148
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !148
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !148
  %6 = load i64* %RDI, !mcsema_real_eip !148
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !148
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !148
  %7 = load i64* %RSP, !mcsema_real_eip !148
  store i64 %_local_stack_start_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !148
  %8 = load i64* %RBP, !mcsema_real_eip !148
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !148
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !148
  %9 = load i64* %R8, !mcsema_real_eip !148
  store i64 %9, i64* %R8_val, !mcsema_real_eip !148
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !148
  %10 = load i64* %R9, !mcsema_real_eip !148
  store i64 %10, i64* %R9_val, !mcsema_real_eip !148
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !148
  %11 = load i64* %R10, !mcsema_real_eip !148
  store i64 %11, i64* %R10_val, !mcsema_real_eip !148
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !148
  %12 = load i64* %R11, !mcsema_real_eip !148
  store i64 %12, i64* %R11_val, !mcsema_real_eip !148
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !148
  %13 = load i64* %R12, !mcsema_real_eip !148
  store i64 %13, i64* %R12_val, !mcsema_real_eip !148
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !148
  %14 = load i64* %R13, !mcsema_real_eip !148
  store i64 %14, i64* %R13_val, !mcsema_real_eip !148
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !148
  %15 = load i64* %R14, !mcsema_real_eip !148
  store i64 %15, i64* %R14_val, !mcsema_real_eip !148
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !148
  %16 = load i64* %R15, !mcsema_real_eip !148
  store i64 %16, i64* %R15_val, !mcsema_real_eip !148
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !148
  %17 = load i64* %RIP, !mcsema_real_eip !148
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !148
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !148
  %18 = load i1* %CF, align 1, !mcsema_real_eip !148
  store i1 %18, i1* %CF_val, !mcsema_real_eip !148
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !148
  %19 = load i1* %PF, align 1, !mcsema_real_eip !148
  store i1 %19, i1* %PF_val, !mcsema_real_eip !148
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !148
  %20 = load i1* %AF, align 1, !mcsema_real_eip !148
  store i1 %20, i1* %AF_val, !mcsema_real_eip !148
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !148
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !148
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !148
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !148
  %22 = load i1* %SF, align 1, !mcsema_real_eip !148
  store i1 %22, i1* %SF_val, !mcsema_real_eip !148
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !148
  %23 = load i1* %OF, align 1, !mcsema_real_eip !148
  store i1 %23, i1* %OF_val, !mcsema_real_eip !148
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !148
  %24 = load i1* %DF, align 1, !mcsema_real_eip !148
  store i1 %24, i1* %DF_val, !mcsema_real_eip !148
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !148
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !148
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !148
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !148
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !148
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !148
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !148
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !148
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !148
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !148
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !148
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !148
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !148
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !148
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !148
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !148
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !148
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !148
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !148
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !148
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !148
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !148
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !148
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !148
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !148
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !148
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !148
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !148
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !148
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !148
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !148
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !148
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !148
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !148
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !148
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !148
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !148
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !148
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !148
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !148
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !148
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !148
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !148
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !148
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !148
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !148
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !148
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !148
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !148
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !148
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !148
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !148
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !148
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !148
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !148
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !148
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !148
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !148
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !148
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !148
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !148
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !148
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !148
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !148
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !148
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !148
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !148
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !148
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !148
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !148
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !148
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !148
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !148
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !148
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_head_p2i_ = ptrtoint i64* %52 to i64
  %_head_cond_ = icmp uge i64 %_head_p2i_, %_local_stack_start_
  br i1 %_head_cond_, label %54, label %55

; <label>:54                                      ; preds = %entry
  %_offset_above_rbp_ = sub i64 %_head_p2i_, %_local_stack_start_
  %_address_in_parent_stack_ = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_
  br label %55

; <label>:55                                      ; preds = %54, %entry
  %56 = phi i64 [ %_head_p2i_, %entry ], [ %_address_in_parent_stack_, %54 ]
  %_address_ptr_in_parent_stack_ = inttoptr i64 %56 to i64*
  %_new_load_ = load i64* %_address_ptr_in_parent_stack_
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !148
  %57 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !148
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !148
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !148
  %58 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !148
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !148
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !148
  %59 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !148
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !148
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !148
  %60 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !148
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !148
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !148
  %61 = load i128* %XMM0, align 1, !mcsema_real_eip !148
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !148
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !148
  %62 = load i128* %XMM1, align 1, !mcsema_real_eip !148
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !148
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !148
  %63 = load i128* %XMM2, align 1, !mcsema_real_eip !148
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !148
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !148
  %64 = load i128* %XMM3, align 1, !mcsema_real_eip !148
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !148
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !148
  %65 = load i128* %XMM4, align 1, !mcsema_real_eip !148
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !148
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !148
  %66 = load i128* %XMM5, align 1, !mcsema_real_eip !148
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !148
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !148
  %67 = load i128* %XMM6, align 1, !mcsema_real_eip !148
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !148
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !148
  %68 = load i128* %XMM7, align 1, !mcsema_real_eip !148
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !148
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !148
  %69 = load i128* %XMM8, align 1, !mcsema_real_eip !148
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !148
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !148
  %70 = load i128* %XMM9, align 1, !mcsema_real_eip !148
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !148
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !148
  %71 = load i128* %XMM10, align 1, !mcsema_real_eip !148
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !148
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !148
  %72 = load i128* %XMM11, align 1, !mcsema_real_eip !148
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !148
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !148
  %73 = load i128* %XMM12, align 1, !mcsema_real_eip !148
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !148
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !148
  %74 = load i128* %XMM13, align 1, !mcsema_real_eip !148
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !148
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !148
  %75 = load i128* %XMM14, align 1, !mcsema_real_eip !148
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !148
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !148
  %76 = load i128* %XMM15, align 1, !mcsema_real_eip !148
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !148
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !148
  %77 = load i64* %STACK_BASE, !mcsema_real_eip !148
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !148
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !148
  %78 = load i64* %STACK_LIMIT, !mcsema_real_eip !148
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !148
  %79 = load i64* %RBP_val, !mcsema_real_eip !148
  %80 = load i64* %RSP_val, !mcsema_real_eip !148
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !148
  store i64 %79, i64* %82, !mcsema_real_eip !148
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !149
  %83 = add i64 %80, -40
  %84 = xor i64 %83, %81, !mcsema_real_eip !150
  %85 = and i64 %84, 16, !mcsema_real_eip !150
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !150
  store i1 %86, i1* %AF_val, !mcsema_real_eip !150
  %87 = trunc i64 %83 to i8, !mcsema_real_eip !150
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !150
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  store i1 %90, i1* %PF_val, !mcsema_real_eip !150
  %91 = icmp eq i64 %83, 0, !mcsema_real_eip !150
  store i1 %91, i1* %ZF_val, !mcsema_real_eip !150
  %92 = icmp slt i64 %83, 0
  store i1 %92, i1* %SF_val, !mcsema_real_eip !150
  %93 = icmp ult i64 %81, 32, !mcsema_real_eip !150
  store i1 %93, i1* %CF_val, !mcsema_real_eip !150
  %94 = and i64 %84, %81, !mcsema_real_eip !150
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !150
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !150
  %96 = load i64* %RBP_val, !mcsema_real_eip !151
  %97 = add i64 %96, -4, !mcsema_real_eip !151
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !151
  %99 = bitcast i64* %98 to i32*
  store i32 0, i32* %99, !mcsema_real_eip !151
  %100 = load i64* %RBP_val, !mcsema_real_eip !152
  %101 = add i64 %100, -4, !mcsema_real_eip !152
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !152
  %103 = bitcast i64* %102 to i32*
  %_head_p2i_1 = ptrtoint i32* %103 to i64
  %_head_cond_2 = icmp uge i64 %_head_p2i_1, %_local_stack_start_
  br i1 %_head_cond_2, label %104, label %105

; <label>:104                                     ; preds = %55
  %_offset_above_rbp_3 = sub i64 %_head_p2i_1, %_local_stack_start_
  %_address_in_parent_stack_4 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_3
  br label %105

; <label>:105                                     ; preds = %104, %55
  %106 = phi i64 [ %_head_p2i_1, %55 ], [ %_address_in_parent_stack_4, %104 ]
  %_address_ptr_in_parent_stack_5 = inttoptr i64 %106 to i32*
  %_new_load_6 = load i32* %_address_ptr_in_parent_stack_5
  %107 = add i32 %_new_load_6, -7
  %108 = xor i32 %107, %_new_load_6, !mcsema_real_eip !152
  %109 = and i32 %108, 16, !mcsema_real_eip !152
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !152
  store i1 %110, i1* %AF_val, !mcsema_real_eip !152
  %111 = trunc i32 %107 to i8, !mcsema_real_eip !152
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !152
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  store i1 %114, i1* %PF_val, !mcsema_real_eip !152
  %115 = icmp eq i32 %107, 0, !mcsema_real_eip !152
  store i1 %115, i1* %ZF_val, !mcsema_real_eip !152
  %116 = icmp slt i32 %107, 0
  store i1 %116, i1* %SF_val, !mcsema_real_eip !152
  %117 = icmp ult i32 %_new_load_6, 7, !mcsema_real_eip !152
  store i1 %117, i1* %CF_val, !mcsema_real_eip !152
  %118 = and i32 %108, %_new_load_6, !mcsema_real_eip !152
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF_val, !mcsema_real_eip !152
  %tmp = xor i1 %116, %119
  br i1 %tmp, label %block_0x1c.preheader, label %block_0x98, !mcsema_real_eip !153

block_0x1c.preheader:                             ; preds = %105
  br label %block_0x1c

block_0x98.loopexit:                              ; preds = %279
  br label %block_0x98

block_0x98:                                       ; preds = %block_0x98.loopexit, %105
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !154
  %120 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !155
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !155
  %121 = load i64* %RBP_val, !mcsema_real_eip !156
  %122 = add i64 %121, -20, !mcsema_real_eip !156
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !156
  %124 = trunc i64 %120 to i32, !mcsema_real_eip !156
  %125 = bitcast i64* %123 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !156
  %126 = load i64* %RSP_val, !mcsema_real_eip !157
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %126, i64 32)
  %127 = extractvalue { i64, i1 } %uadd75, 0
  %128 = xor i64 %127, %126, !mcsema_real_eip !157
  %129 = and i64 %128, 16, !mcsema_real_eip !157
  %130 = icmp ne i64 %129, 0, !mcsema_real_eip !157
  store i1 %130, i1* %AF_val, !mcsema_real_eip !157
  %131 = icmp slt i64 %127, 0
  store i1 %131, i1* %SF_val, !mcsema_real_eip !157
  %132 = icmp eq i64 %127, 0, !mcsema_real_eip !157
  store i1 %132, i1* %ZF_val, !mcsema_real_eip !157
  %133 = xor i64 %126, -9223372036854775808, !mcsema_real_eip !157
  %134 = and i64 %128, %133, !mcsema_real_eip !157
  %135 = icmp slt i64 %134, 0
  store i1 %135, i1* %OF_val, !mcsema_real_eip !157
  %136 = trunc i64 %127 to i8, !mcsema_real_eip !157
  %137 = tail call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !157
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF_val, !mcsema_real_eip !157
  %140 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %140, i1* %CF_val, !mcsema_real_eip !157
  store i64 %127, i64* %RSP_val, !mcsema_real_eip !157
  %141 = inttoptr i64 %127 to i64*, !mcsema_real_eip !158
  %_head_p2i_7 = ptrtoint i64* %141 to i64
  %_head_cond_8 = icmp uge i64 %_head_p2i_7, %_local_stack_start_
  br i1 %_head_cond_8, label %142, label %143

; <label>:142                                     ; preds = %block_0x98
  %_offset_above_rbp_9 = sub i64 %_head_p2i_7, %_local_stack_start_
  %_address_in_parent_stack_10 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_9
  br label %143

; <label>:143                                     ; preds = %142, %block_0x98
  %144 = phi i64 [ %_head_p2i_7, %block_0x98 ], [ %_address_in_parent_stack_10, %142 ]
  %_address_ptr_in_parent_stack_11 = inttoptr i64 %144 to i64*
  %_new_load_12 = load i64* %_address_ptr_in_parent_stack_11
  store i64 %_new_load_12, i64* %RBP_val, !mcsema_real_eip !158
  %145 = add i64 %127, 16, !mcsema_real_eip !159
  store i64 %145, i64* %RSP_val, !mcsema_real_eip !159
  %146 = load i64* %RAX_val, !mcsema_real_eip !159
  store i64 %146, i64* %RAX, !mcsema_real_eip !159
  %147 = load i64* %RBX_val, !mcsema_real_eip !159
  store i64 %147, i64* %RBX, !mcsema_real_eip !159
  %148 = load i64* %RCX_val, !mcsema_real_eip !159
  store i64 %148, i64* %RCX, !mcsema_real_eip !159
  %149 = load i64* %RDX_val, !mcsema_real_eip !159
  store i64 %149, i64* %RDX, !mcsema_real_eip !159
  %150 = load i64* %RSI_val, !mcsema_real_eip !159
  store i64 %150, i64* %RSI, !mcsema_real_eip !159
  %151 = load i64* %RDI_val, !mcsema_real_eip !159
  store i64 %151, i64* %RDI, !mcsema_real_eip !159
  %152 = load i64* %RSP_val, !mcsema_real_eip !159
  store i64 %152, i64* %RSP, !mcsema_real_eip !159
  %153 = load i64* %RBP_val, !mcsema_real_eip !159
  store i64 %153, i64* %RBP, !mcsema_real_eip !159
  %154 = load i64* %R8_val, !mcsema_real_eip !159
  store i64 %154, i64* %R8, !mcsema_real_eip !159
  %155 = load i64* %R9_val, !mcsema_real_eip !159
  store i64 %155, i64* %R9, !mcsema_real_eip !159
  %156 = load i64* %R10_val, !mcsema_real_eip !159
  store i64 %156, i64* %R10, !mcsema_real_eip !159
  %157 = load i64* %R11_val, !mcsema_real_eip !159
  store i64 %157, i64* %R11, !mcsema_real_eip !159
  %158 = load i64* %R12_val, !mcsema_real_eip !159
  store i64 %158, i64* %R12, !mcsema_real_eip !159
  %159 = load i64* %R13_val, !mcsema_real_eip !159
  store i64 %159, i64* %R13, !mcsema_real_eip !159
  %160 = load i64* %R14_val, !mcsema_real_eip !159
  store i64 %160, i64* %R14, !mcsema_real_eip !159
  %161 = load i64* %R15_val, !mcsema_real_eip !159
  store i64 %161, i64* %R15, !mcsema_real_eip !159
  %162 = load i64* %RIP_val, !mcsema_real_eip !159
  store i64 %162, i64* %RIP, !mcsema_real_eip !159
  %163 = load i1* %CF_val, !mcsema_real_eip !159
  store i1 %163, i1* %CF, align 1, !mcsema_real_eip !159
  %164 = load i1* %PF_val, !mcsema_real_eip !159
  store i1 %164, i1* %PF, align 1, !mcsema_real_eip !159
  %165 = load i1* %AF_val, !mcsema_real_eip !159
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !159
  %166 = load i1* %ZF_val, !mcsema_real_eip !159
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !159
  %167 = load i1* %SF_val, !mcsema_real_eip !159
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !159
  %168 = load i1* %OF_val, !mcsema_real_eip !159
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !159
  %169 = load i1* %DF_val, !mcsema_real_eip !159
  store i1 %169, i1* %DF, align 1, !mcsema_real_eip !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !159
  %170 = load i1* %FPU_B_val, !mcsema_real_eip !159
  store i1 %170, i1* %FPU_B, align 1, !mcsema_real_eip !159
  %171 = load i1* %FPU_C3_val, !mcsema_real_eip !159
  store i1 %171, i1* %FPU_C3, align 1, !mcsema_real_eip !159
  %172 = load i3* %FPU_TOP_val, !mcsema_real_eip !159
  store i3 %172, i3* %FPU_TOP, align 1, !mcsema_real_eip !159
  %173 = load i1* %FPU_C2_val, !mcsema_real_eip !159
  store i1 %173, i1* %FPU_C2, align 1, !mcsema_real_eip !159
  %174 = load i1* %FPU_C1_val, !mcsema_real_eip !159
  store i1 %174, i1* %FPU_C1, align 1, !mcsema_real_eip !159
  %175 = load i1* %FPU_C0_val, !mcsema_real_eip !159
  store i1 %175, i1* %FPU_C0, align 1, !mcsema_real_eip !159
  %176 = load i1* %FPU_ES_val, !mcsema_real_eip !159
  store i1 %176, i1* %FPU_ES, align 1, !mcsema_real_eip !159
  %177 = load i1* %FPU_SF_val, !mcsema_real_eip !159
  store i1 %177, i1* %FPU_SF, align 1, !mcsema_real_eip !159
  %178 = load i1* %FPU_PE_val, !mcsema_real_eip !159
  store i1 %178, i1* %FPU_PE, align 1, !mcsema_real_eip !159
  %179 = load i1* %FPU_UE_val, !mcsema_real_eip !159
  store i1 %179, i1* %FPU_UE, align 1, !mcsema_real_eip !159
  %180 = load i1* %FPU_OE_val, !mcsema_real_eip !159
  store i1 %180, i1* %FPU_OE, align 1, !mcsema_real_eip !159
  %181 = load i1* %FPU_ZE_val, !mcsema_real_eip !159
  store i1 %181, i1* %FPU_ZE, align 1, !mcsema_real_eip !159
  %182 = load i1* %FPU_DE_val, !mcsema_real_eip !159
  store i1 %182, i1* %FPU_DE, align 1, !mcsema_real_eip !159
  %183 = load i1* %FPU_IE_val, !mcsema_real_eip !159
  store i1 %183, i1* %FPU_IE, align 1, !mcsema_real_eip !159
  %184 = load i1* %FPU_X_val, !mcsema_real_eip !159
  store i1 %184, i1* %FPU_X, align 1, !mcsema_real_eip !159
  %185 = load i2* %FPU_RC_val, !mcsema_real_eip !159
  store i2 %185, i2* %FPU_RC, align 1, !mcsema_real_eip !159
  %186 = load i2* %FPU_PC_val, !mcsema_real_eip !159
  store i2 %186, i2* %FPU_PC, align 1, !mcsema_real_eip !159
  %187 = load i1* %FPU_PM_val, !mcsema_real_eip !159
  store i1 %187, i1* %FPU_PM, align 1, !mcsema_real_eip !159
  %188 = load i1* %FPU_UM_val, !mcsema_real_eip !159
  store i1 %188, i1* %FPU_UM, align 1, !mcsema_real_eip !159
  %189 = load i1* %FPU_OM_val, !mcsema_real_eip !159
  store i1 %189, i1* %FPU_OM, align 1, !mcsema_real_eip !159
  %190 = load i1* %FPU_ZM_val, !mcsema_real_eip !159
  store i1 %190, i1* %FPU_ZM, align 1, !mcsema_real_eip !159
  %191 = load i1* %FPU_DM_val, !mcsema_real_eip !159
  store i1 %191, i1* %FPU_DM, align 1, !mcsema_real_eip !159
  %192 = load i1* %FPU_IM_val, !mcsema_real_eip !159
  store i1 %192, i1* %FPU_IM, align 1, !mcsema_real_eip !159
  %_head_p2i_13 = ptrtoint i64* %53 to i64
  %_head_cond_14 = icmp uge i64 %_head_p2i_13, %_local_stack_start_
  br i1 %_head_cond_14, label %193, label %194

; <label>:193                                     ; preds = %143
  %_offset_above_rbp_15 = sub i64 %_head_p2i_13, %_local_stack_start_
  %_address_in_parent_stack_16 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_15
  br label %194

; <label>:194                                     ; preds = %193, %143
  %195 = phi i64 [ %_head_p2i_13, %143 ], [ %_address_in_parent_stack_16, %193 ]
  %_address_ptr_in_parent_stack_17 = inttoptr i64 %195 to i64*
  %_new_load_18 = load i64* %_address_ptr_in_parent_stack_17
  store i64 %_new_load_18, i64* %52, align 4
  %196 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !159
  store i16 %196, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !159
  %197 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !159
  store i64 %197, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !159
  %198 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !159
  store i16 %198, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !159
  %199 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !159
  store i64 %199, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !159
  %200 = load i128* %XMM0_val, !mcsema_real_eip !159
  store i128 %200, i128* %XMM0, align 1, !mcsema_real_eip !159
  %201 = load i128* %XMM1_val, !mcsema_real_eip !159
  store i128 %201, i128* %XMM1, align 1, !mcsema_real_eip !159
  %202 = load i128* %XMM2_val, !mcsema_real_eip !159
  store i128 %202, i128* %XMM2, align 1, !mcsema_real_eip !159
  %203 = load i128* %XMM3_val, !mcsema_real_eip !159
  store i128 %203, i128* %XMM3, align 1, !mcsema_real_eip !159
  %204 = load i128* %XMM4_val, !mcsema_real_eip !159
  store i128 %204, i128* %XMM4, align 1, !mcsema_real_eip !159
  %205 = load i128* %XMM5_val, !mcsema_real_eip !159
  store i128 %205, i128* %XMM5, align 1, !mcsema_real_eip !159
  %206 = load i128* %XMM6_val, !mcsema_real_eip !159
  store i128 %206, i128* %XMM6, align 1, !mcsema_real_eip !159
  %207 = load i128* %XMM7_val, !mcsema_real_eip !159
  store i128 %207, i128* %XMM7, align 1, !mcsema_real_eip !159
  %208 = load i128* %XMM8_val, !mcsema_real_eip !159
  store i128 %208, i128* %XMM8, align 1, !mcsema_real_eip !159
  %209 = load i128* %XMM9_val, !mcsema_real_eip !159
  store i128 %209, i128* %XMM9, align 1, !mcsema_real_eip !159
  %210 = load i128* %XMM10_val, !mcsema_real_eip !159
  store i128 %210, i128* %XMM10, align 1, !mcsema_real_eip !159
  %211 = load i128* %XMM11_val, !mcsema_real_eip !159
  store i128 %211, i128* %XMM11, align 1, !mcsema_real_eip !159
  %212 = load i128* %XMM12_val, !mcsema_real_eip !159
  store i128 %212, i128* %XMM12, align 1, !mcsema_real_eip !159
  %213 = load i128* %XMM13_val, !mcsema_real_eip !159
  store i128 %213, i128* %XMM13, align 1, !mcsema_real_eip !159
  %214 = load i128* %XMM14_val, !mcsema_real_eip !159
  store i128 %214, i128* %XMM14, align 1, !mcsema_real_eip !159
  %215 = load i128* %XMM15_val, !mcsema_real_eip !159
  store i128 %215, i128* %XMM15, align 1, !mcsema_real_eip !159
  %216 = load i64* %STACK_BASE_val, !mcsema_real_eip !159
  store i64 %216, i64* %STACK_BASE, align 1, !mcsema_real_eip !159
  %217 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !159
  store i64 %217, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x1c:                                       ; preds = %279, %block_0x1c.preheader
  %218 = load i64* %RBP_val, !mcsema_real_eip !160
  %219 = add i64 %218, -8, !mcsema_real_eip !160
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !160
  %221 = bitcast i64* %220 to i32*
  store i32 0, i32* %221, !mcsema_real_eip !160
  %222 = load i64* %RBP_val, !mcsema_real_eip !161
  %223 = add i64 %222, -8, !mcsema_real_eip !161
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !161
  %225 = bitcast i64* %224 to i32*
  %_head_p2i_19 = ptrtoint i32* %225 to i64
  %_head_cond_20 = icmp uge i64 %_head_p2i_19, %_local_stack_start_
  br i1 %_head_cond_20, label %226, label %227

; <label>:226                                     ; preds = %block_0x1c
  %_offset_above_rbp_21 = sub i64 %_head_p2i_19, %_local_stack_start_
  %_address_in_parent_stack_22 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_21
  br label %227

; <label>:227                                     ; preds = %226, %block_0x1c
  %228 = phi i64 [ %_head_p2i_19, %block_0x1c ], [ %_address_in_parent_stack_22, %226 ]
  %_address_ptr_in_parent_stack_23 = inttoptr i64 %228 to i32*
  %_new_load_24 = load i32* %_address_ptr_in_parent_stack_23
  %229 = add i32 %_new_load_24, -11
  %230 = xor i32 %229, %_new_load_24, !mcsema_real_eip !161
  %231 = and i32 %230, 16, !mcsema_real_eip !161
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !161
  store i1 %232, i1* %AF_val, !mcsema_real_eip !161
  %233 = trunc i32 %229 to i8, !mcsema_real_eip !161
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !161
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF_val, !mcsema_real_eip !161
  %237 = icmp eq i32 %229, 0, !mcsema_real_eip !161
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !161
  %238 = icmp slt i32 %229, 0
  store i1 %238, i1* %SF_val, !mcsema_real_eip !161
  %239 = icmp ult i32 %_new_load_24, 11, !mcsema_real_eip !161
  store i1 %239, i1* %CF_val, !mcsema_real_eip !161
  %240 = and i32 %230, %_new_load_24, !mcsema_real_eip !161
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !161
  %tmp70 = xor i1 %238, %241
  br i1 %tmp70, label %block_0x30.preheader, label %block_0x74, !mcsema_real_eip !162

block_0x30.preheader:                             ; preds = %227
  br label %block_0x30

block_0x74.loopexit:                              ; preds = %375
  br label %block_0x74

block_0x74:                                       ; preds = %block_0x74.loopexit, %227
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !163
  %242 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !164
  store i64 %242, i64* %RAX_val, !mcsema_real_eip !164
  %243 = load i64* %RBP_val, !mcsema_real_eip !165
  %244 = add i64 %243, -16, !mcsema_real_eip !165
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !165
  %246 = trunc i64 %242 to i32, !mcsema_real_eip !165
  %247 = bitcast i64* %245 to i32*
  store i32 %246, i32* %247, !mcsema_real_eip !165
  %248 = load i64* %RBP_val, !mcsema_real_eip !166
  %249 = add i64 %248, -4, !mcsema_real_eip !166
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !166
  %251 = bitcast i64* %250 to i32*
  %_head_p2i_25 = ptrtoint i32* %251 to i64
  %_head_cond_26 = icmp uge i64 %_head_p2i_25, %_local_stack_start_
  br i1 %_head_cond_26, label %252, label %253

; <label>:252                                     ; preds = %block_0x74
  %_offset_above_rbp_27 = sub i64 %_head_p2i_25, %_local_stack_start_
  %_address_in_parent_stack_28 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_27
  br label %253

; <label>:253                                     ; preds = %252, %block_0x74
  %254 = phi i64 [ %_head_p2i_25, %block_0x74 ], [ %_address_in_parent_stack_28, %252 ]
  %_address_ptr_in_parent_stack_29 = inttoptr i64 %254 to i32*
  %_new_load_30 = load i32* %_address_ptr_in_parent_stack_29
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_30, i32 1)
  %255 = extractvalue { i32, i1 } %uadd73, 0
  %256 = xor i32 %255, %_new_load_30, !mcsema_real_eip !167
  %257 = and i32 %256, 16, !mcsema_real_eip !167
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !167
  store i1 %258, i1* %AF_val, !mcsema_real_eip !167
  %259 = icmp slt i32 %255, 0
  store i1 %259, i1* %SF_val, !mcsema_real_eip !167
  %260 = icmp eq i32 %255, 0, !mcsema_real_eip !167
  store i1 %260, i1* %ZF_val, !mcsema_real_eip !167
  %261 = xor i32 %_new_load_30, -2147483648, !mcsema_real_eip !167
  %262 = and i32 %256, %261, !mcsema_real_eip !167
  %263 = icmp slt i32 %262, 0
  store i1 %263, i1* %OF_val, !mcsema_real_eip !167
  %264 = trunc i32 %255 to i8, !mcsema_real_eip !167
  %265 = tail call i8 @llvm.ctpop.i8(i8 %264), !mcsema_real_eip !167
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  store i1 %267, i1* %PF_val, !mcsema_real_eip !167
  %268 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %268, i1* %CF_val, !mcsema_real_eip !167
  %269 = zext i32 %255 to i64, !mcsema_real_eip !167
  store i64 %269, i64* %RAX_val, !mcsema_real_eip !167
  %270 = load i64* %RBP_val, !mcsema_real_eip !168
  %271 = add i64 %270, -4, !mcsema_real_eip !168
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !168
  %273 = bitcast i64* %272 to i32*
  store i32 %255, i32* %273, !mcsema_real_eip !168
  %274 = load i64* %RBP_val, !mcsema_real_eip !152
  %275 = add i64 %274, -4, !mcsema_real_eip !152
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !152
  %277 = bitcast i64* %276 to i32*
  %_head_p2i_31 = ptrtoint i32* %277 to i64
  %_head_cond_32 = icmp uge i64 %_head_p2i_31, %_local_stack_start_
  br i1 %_head_cond_32, label %278, label %279

; <label>:278                                     ; preds = %253
  %_offset_above_rbp_33 = sub i64 %_head_p2i_31, %_local_stack_start_
  %_address_in_parent_stack_34 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_33
  br label %279

; <label>:279                                     ; preds = %278, %253
  %280 = phi i64 [ %_head_p2i_31, %253 ], [ %_address_in_parent_stack_34, %278 ]
  %_address_ptr_in_parent_stack_35 = inttoptr i64 %280 to i32*
  %_new_load_36 = load i32* %_address_ptr_in_parent_stack_35
  %281 = add i32 %_new_load_36, -7
  %282 = xor i32 %281, %_new_load_36, !mcsema_real_eip !152
  %283 = and i32 %282, 16, !mcsema_real_eip !152
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !152
  store i1 %284, i1* %AF_val, !mcsema_real_eip !152
  %285 = trunc i32 %281 to i8, !mcsema_real_eip !152
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !152
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !152
  %289 = icmp eq i32 %281, 0, !mcsema_real_eip !152
  store i1 %289, i1* %ZF_val, !mcsema_real_eip !152
  %290 = icmp slt i32 %281, 0
  store i1 %290, i1* %SF_val, !mcsema_real_eip !152
  %291 = icmp ult i32 %_new_load_36, 7, !mcsema_real_eip !152
  store i1 %291, i1* %CF_val, !mcsema_real_eip !152
  %292 = and i32 %282, %_new_load_36, !mcsema_real_eip !152
  %293 = icmp slt i32 %292, 0
  store i1 %293, i1* %OF_val, !mcsema_real_eip !152
  %tmp74 = xor i1 %290, %293
  br i1 %tmp74, label %block_0x1c, label %block_0x98.loopexit, !mcsema_real_eip !153

block_0x30:                                       ; preds = %375, %block_0x30.preheader
  store i64 ptrtoint (%1* @data_0x3ff to i64), i64* %RDI_val, !mcsema_real_eip !169
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !170
  %294 = load i64* %RBP_val, !mcsema_real_eip !171
  %295 = add i64 %294, -8, !mcsema_real_eip !171
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !171
  %297 = bitcast i64* %296 to i32*
  %_head_p2i_37 = ptrtoint i32* %297 to i64
  %_head_cond_38 = icmp uge i64 %_head_p2i_37, %_local_stack_start_
  br i1 %_head_cond_38, label %298, label %299

; <label>:298                                     ; preds = %block_0x30
  %_offset_above_rbp_39 = sub i64 %_head_p2i_37, %_local_stack_start_
  %_address_in_parent_stack_40 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_39
  br label %299

; <label>:299                                     ; preds = %298, %block_0x30
  %300 = phi i64 [ %_head_p2i_37, %block_0x30 ], [ %_address_in_parent_stack_40, %298 ]
  %_address_ptr_in_parent_stack_41 = inttoptr i64 %300 to i32*
  %_new_load_42 = load i32* %_address_ptr_in_parent_stack_41
  %301 = sext i32 %_new_load_42 to i64, !mcsema_real_eip !171
  store i64 %301, i64* %RCX_val, !mcsema_real_eip !171
  %302 = load i64* %RBP_val, !mcsema_real_eip !172
  %303 = add i64 %302, -4, !mcsema_real_eip !172
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !172
  %305 = bitcast i64* %304 to i32*
  %_head_p2i_43 = ptrtoint i32* %305 to i64
  %_head_cond_44 = icmp uge i64 %_head_p2i_43, %_local_stack_start_
  br i1 %_head_cond_44, label %306, label %307

; <label>:306                                     ; preds = %299
  %_offset_above_rbp_45 = sub i64 %_head_p2i_43, %_local_stack_start_
  %_address_in_parent_stack_46 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_45
  br label %307

; <label>:307                                     ; preds = %306, %299
  %308 = phi i64 [ %_head_p2i_43, %299 ], [ %_address_in_parent_stack_46, %306 ]
  %_address_ptr_in_parent_stack_47 = inttoptr i64 %308 to i32*
  %_new_load_48 = load i32* %_address_ptr_in_parent_stack_47
  %309 = sext i32 %_new_load_48 to i64, !mcsema_real_eip !172
  %310 = mul i64 %309, 11, !mcsema_real_eip !173
  store i64 %310, i64* %RDX_val, !mcsema_real_eip !173
  %311 = load i64* %RAX_val, !mcsema_real_eip !174
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %310, i64 %311)
  %312 = extractvalue { i64, i1 } %uadd, 0
  %313 = xor i64 %312, %311, !mcsema_real_eip !174
  %314 = xor i64 %313, %310, !mcsema_real_eip !174
  %315 = and i64 %314, 16, !mcsema_real_eip !174
  %316 = icmp ne i64 %315, 0, !mcsema_real_eip !174
  store i1 %316, i1* %AF_val, !mcsema_real_eip !174
  %317 = icmp slt i64 %312, 0
  store i1 %317, i1* %SF_val, !mcsema_real_eip !174
  %318 = icmp eq i64 %312, 0, !mcsema_real_eip !174
  store i1 %318, i1* %ZF_val, !mcsema_real_eip !174
  %319 = xor i64 %311, -9223372036854775808, !mcsema_real_eip !174
  %320 = xor i64 %319, %310, !mcsema_real_eip !174
  %321 = and i64 %313, %320, !mcsema_real_eip !174
  %322 = icmp slt i64 %321, 0
  store i1 %322, i1* %OF_val, !mcsema_real_eip !174
  %323 = trunc i64 %312 to i8, !mcsema_real_eip !174
  %324 = tail call i8 @llvm.ctpop.i8(i8 %323), !mcsema_real_eip !174
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  store i1 %326, i1* %PF_val, !mcsema_real_eip !174
  %327 = extractvalue { i64, i1 } %uadd, 1
  store i1 %327, i1* %CF_val, !mcsema_real_eip !174
  store i64 %312, i64* %RAX_val, !mcsema_real_eip !174
  %328 = load i64* %RCX_val, !mcsema_real_eip !175
  %329 = add i64 %328, %312, !mcsema_real_eip !175
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !175
  %331 = bitcast i64* %330 to i8*
  %_head_p2i_49 = ptrtoint i8* %331 to i64
  %_head_cond_50 = icmp uge i64 %_head_p2i_49, %_local_stack_start_
  br i1 %_head_cond_50, label %332, label %333

; <label>:332                                     ; preds = %307
  %_offset_above_rbp_51 = sub i64 %_head_p2i_49, %_local_stack_start_
  %_address_in_parent_stack_52 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_51
  br label %333

; <label>:333                                     ; preds = %332, %307
  %334 = phi i64 [ %_head_p2i_49, %307 ], [ %_address_in_parent_stack_52, %332 ]
  %_address_ptr_in_parent_stack_53 = inttoptr i64 %334 to i8*
  %_new_load_54 = load i8* %_address_ptr_in_parent_stack_53
  %335 = sext i8 %_new_load_54 to i32, !mcsema_real_eip !175
  %336 = zext i32 %335 to i64, !mcsema_real_eip !175
  store i64 %336, i64* %RSI_val, !mcsema_real_eip !175
  %337 = load i64* %RDI_val, !mcsema_real_eip !176
  %338 = tail call x86_64_sysvcc i64 @printf(i64 %337), !mcsema_real_eip !176
  store i64 %338, i64* %RAX_val, !mcsema_real_eip !176
  %339 = load i64* %RBP_val, !mcsema_real_eip !177
  %340 = add i64 %339, -12, !mcsema_real_eip !177
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !177
  %342 = trunc i64 %338 to i32, !mcsema_real_eip !177
  %343 = bitcast i64* %341 to i32*
  store i32 %342, i32* %343, !mcsema_real_eip !177
  %344 = load i64* %RBP_val, !mcsema_real_eip !178
  %345 = add i64 %344, -8, !mcsema_real_eip !178
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !178
  %347 = bitcast i64* %346 to i32*
  %_head_p2i_55 = ptrtoint i32* %347 to i64
  %_head_cond_56 = icmp uge i64 %_head_p2i_55, %_local_stack_start_
  br i1 %_head_cond_56, label %348, label %349

; <label>:348                                     ; preds = %333
  %_offset_above_rbp_57 = sub i64 %_head_p2i_55, %_local_stack_start_
  %_address_in_parent_stack_58 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_57
  br label %349

; <label>:349                                     ; preds = %348, %333
  %350 = phi i64 [ %_head_p2i_55, %333 ], [ %_address_in_parent_stack_58, %348 ]
  %_address_ptr_in_parent_stack_59 = inttoptr i64 %350 to i32*
  %_new_load_60 = load i32* %_address_ptr_in_parent_stack_59
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_60, i32 1)
  %351 = extractvalue { i32, i1 } %uadd71, 0
  %352 = xor i32 %351, %_new_load_60, !mcsema_real_eip !179
  %353 = and i32 %352, 16, !mcsema_real_eip !179
  %354 = icmp ne i32 %353, 0, !mcsema_real_eip !179
  store i1 %354, i1* %AF_val, !mcsema_real_eip !179
  %355 = icmp slt i32 %351, 0
  store i1 %355, i1* %SF_val, !mcsema_real_eip !179
  %356 = icmp eq i32 %351, 0, !mcsema_real_eip !179
  store i1 %356, i1* %ZF_val, !mcsema_real_eip !179
  %357 = xor i32 %_new_load_60, -2147483648, !mcsema_real_eip !179
  %358 = and i32 %352, %357, !mcsema_real_eip !179
  %359 = icmp slt i32 %358, 0
  store i1 %359, i1* %OF_val, !mcsema_real_eip !179
  %360 = trunc i32 %351 to i8, !mcsema_real_eip !179
  %361 = tail call i8 @llvm.ctpop.i8(i8 %360), !mcsema_real_eip !179
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  store i1 %363, i1* %PF_val, !mcsema_real_eip !179
  %364 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %364, i1* %CF_val, !mcsema_real_eip !179
  %365 = zext i32 %351 to i64, !mcsema_real_eip !179
  store i64 %365, i64* %RAX_val, !mcsema_real_eip !179
  %366 = load i64* %RBP_val, !mcsema_real_eip !180
  %367 = add i64 %366, -8, !mcsema_real_eip !180
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !180
  %369 = bitcast i64* %368 to i32*
  store i32 %351, i32* %369, !mcsema_real_eip !180
  %370 = load i64* %RBP_val, !mcsema_real_eip !161
  %371 = add i64 %370, -8, !mcsema_real_eip !161
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !161
  %373 = bitcast i64* %372 to i32*
  %_head_p2i_61 = ptrtoint i32* %373 to i64
  %_head_cond_62 = icmp uge i64 %_head_p2i_61, %_local_stack_start_
  br i1 %_head_cond_62, label %374, label %375

; <label>:374                                     ; preds = %349
  %_offset_above_rbp_63 = sub i64 %_head_p2i_61, %_local_stack_start_
  %_address_in_parent_stack_64 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_63
  br label %375

; <label>:375                                     ; preds = %374, %349
  %376 = phi i64 [ %_head_p2i_61, %349 ], [ %_address_in_parent_stack_64, %374 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %376 to i32*
  %_new_load_66 = load i32* %_address_ptr_in_parent_stack_65
  %377 = add i32 %_new_load_66, -11
  %378 = xor i32 %377, %_new_load_66, !mcsema_real_eip !161
  %379 = and i32 %378, 16, !mcsema_real_eip !161
  %380 = icmp ne i32 %379, 0, !mcsema_real_eip !161
  store i1 %380, i1* %AF_val, !mcsema_real_eip !161
  %381 = trunc i32 %377 to i8, !mcsema_real_eip !161
  %382 = tail call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !161
  %383 = and i8 %382, 1
  %384 = icmp eq i8 %383, 0
  store i1 %384, i1* %PF_val, !mcsema_real_eip !161
  %385 = icmp eq i32 %377, 0, !mcsema_real_eip !161
  store i1 %385, i1* %ZF_val, !mcsema_real_eip !161
  %386 = icmp slt i32 %377, 0
  store i1 %386, i1* %SF_val, !mcsema_real_eip !161
  %387 = icmp ult i32 %_new_load_66, 11, !mcsema_real_eip !161
  store i1 %387, i1* %CF_val, !mcsema_real_eip !161
  %388 = and i32 %378, %_new_load_66, !mcsema_real_eip !161
  %389 = icmp slt i32 %388, 0
  store i1 %389, i1* %OF_val, !mcsema_real_eip !161
  %tmp72 = xor i1 %386, %389
  br i1 %tmp72, label %block_0x30, label %block_0x74.loopexit, !mcsema_real_eip !162
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 193, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 196, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = metadata !{i64 203, [15 x i8] c"\09movl\09$0, %eax\00"}
!6 = metadata !{i64 208, [19 x i8] c"\09movabsq\09$28, %rdx\00"}
!7 = metadata !{i64 218, [22 x i8] c"\09leaq\09-64(%rbp), %rcx\00"}
!8 = metadata !{i64 222, [17 x i8] c"\09movabsq\09$0, %r8\00"}
!9 = metadata !{i64 232, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!10 = metadata !{i64 239, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!11 = metadata !{i64 242, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!12 = metadata !{i64 246, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!13 = metadata !{i64 253, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!14 = metadata !{i64 260, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!15 = metadata !{i64 267, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!16 = metadata !{i64 271, [23 x i8] c"\09movslq\09-24(%rbp), %r9\00"}
!17 = metadata !{i64 275, [17 x i8] c"\09imulq\09 $11, %r9\00"}
!18 = metadata !{i64 282, [15 x i8] c"\09addq\09%r9, %r8\00"}
!19 = metadata !{i64 285, [22 x i8] c"\09movb\09$88, (%r8,%rsi)\00"}
!20 = metadata !{i64 290, [17 x i8] c"\09movl\09%eax, %edi\00"}
!21 = metadata !{i64 292, [17 x i8] c"\09movq\09%rcx, %rsi\00"}
!22 = metadata !{i64 295, [9 x i8] c"\09callq\090\00"}
!23 = metadata !{i64 300, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!24 = metadata !{i64 304, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!25 = metadata !{i64 311, [9 x i8] c"\09jge\09595\00"}
!26 = metadata !{i64 912, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!27 = metadata !{i64 924, [9 x i8] c"\09callq\090\00"}
!28 = metadata !{i64 929, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!29 = metadata !{i64 932, [23 x i8] c"\09movl\09%eax, -124(%rbp)\00"}
!30 = metadata !{i64 935, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!31 = metadata !{i64 937, [17 x i8] c"\09addq\09$128, %rsp\00"}
!32 = metadata !{i64 944, [11 x i8] c"\09popq\09%rbp\00"}
!33 = metadata !{i64 945, [6 x i8] c"\09retq\00"}
!34 = metadata !{i64 317, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!35 = metadata !{i64 320, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!36 = metadata !{i64 323, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!37 = metadata !{i64 326, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!38 = metadata !{i64 329, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!39 = metadata !{i64 333, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!40 = metadata !{i64 340, [17 x i8] c"\09subl\09$114, %edx\00"}
!41 = metadata !{i64 343, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!42 = metadata !{i64 346, [22 x i8] c"\09movl\09%edx, -80(%rbp)\00"}
!43 = metadata !{i64 349, [7 x i8] c"\09jg\0945\00"}
!44 = metadata !{i64 400, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!45 = metadata !{i64 403, [17 x i8] c"\09subl\09$115, %eax\00"}
!46 = metadata !{i64 406, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!47 = metadata !{i64 409, [7 x i8] c"\09je\0941\00"}
!48 = metadata !{i64 456, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!49 = metadata !{i64 363, [16 x i8] c"\09subl\09$97, %eax\00"}
!50 = metadata !{i64 366, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!51 = metadata !{i64 369, [7 x i8] c"\09je\0997\00"}
!52 = metadata !{i64 472, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!53 = metadata !{i64 459, [15 x i8] c"\09addl\09$1, %eax\00"}
!54 = metadata !{i64 464, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!55 = metadata !{i64 467, [8 x i8] c"\09jmp\0982\00"}
!56 = metadata !{i64 475, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!57 = metadata !{i64 480, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!58 = metadata !{i64 483, [8 x i8] c"\09jmp\0966\00"}
!59 = metadata !{i64 420, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!60 = metadata !{i64 423, [17 x i8] c"\09subl\09$119, %eax\00"}
!61 = metadata !{i64 426, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!62 = metadata !{i64 429, [8 x i8] c"\09jne\0969\00"}
!63 = metadata !{i64 554, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!64 = metadata !{i64 564, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!65 = metadata !{i64 568, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!66 = metadata !{i64 572, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!67 = metadata !{i64 579, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!68 = metadata !{i64 582, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!69 = metadata !{i64 586, [16 x i8] c"\09cmpl\09$35, %esi\00"}
!70 = metadata !{i64 592, [8 x i8] c"\09jne\0954\00"}
!71 = metadata !{i64 380, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!72 = metadata !{i64 383, [17 x i8] c"\09subl\09$100, %eax\00"}
!73 = metadata !{i64 386, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!74 = metadata !{i64 389, [7 x i8] c"\09je\0993\00"}
!75 = metadata !{i64 516, [9 x i8] c"\09callq\090\00"}
!76 = metadata !{i64 521, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!77 = metadata !{i64 531, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!78 = metadata !{i64 536, [9 x i8] c"\09callq\090\00"}
!79 = metadata !{i64 541, [24 x i8] c"\09movl\09$4294967295, %edi\00"}
!80 = metadata !{i64 546, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!81 = metadata !{i64 549, [9 x i8] c"\09callq\090\00"}
!82 = metadata !{i64 652, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!83 = metadata !{i64 662, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!84 = metadata !{i64 666, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!85 = metadata !{i64 670, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!86 = metadata !{i64 677, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!87 = metadata !{i64 680, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!88 = metadata !{i64 684, [16 x i8] c"\09cmpl\09$32, %esi\00"}
!89 = metadata !{i64 690, [7 x i8] c"\09je\0995\00"}
!90 = metadata !{i64 610, [9 x i8] c"\09callq\090\00"}
!91 = metadata !{i64 615, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!92 = metadata !{i64 625, [22 x i8] c"\09leaq\09-64(%rbp), %rsi\00"}
!93 = metadata !{i64 629, [23 x i8] c"\09movl\09%eax, -108(%rbp)\00"}
!94 = metadata !{i64 634, [9 x i8] c"\09callq\090\00"}
!95 = metadata !{i64 639, [15 x i8] c"\09movl\09$0, %edi\00"}
!96 = metadata !{i64 644, [23 x i8] c"\09movl\09%eax, -112(%rbp)\00"}
!97 = metadata !{i64 647, [9 x i8] c"\09callq\090\00"}
!98 = metadata !{i64 488, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!99 = metadata !{i64 491, [15 x i8] c"\09addl\09$1, %eax\00"}
!100 = metadata !{i64 496, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!101 = metadata !{i64 499, [8 x i8] c"\09jmp\0950\00"}
!102 = metadata !{i64 440, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!103 = metadata !{i64 443, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!104 = metadata !{i64 448, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!105 = metadata !{i64 451, [8 x i8] c"\09jmp\0998\00"}
!106 = metadata !{i64 791, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!107 = metadata !{i64 794, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!108 = metadata !{i64 797, [8 x i8] c"\09jne\0942\00"}
!109 = metadata !{i64 696, [20 x i8] c"\09cmpl\09$2, -24(%rbp)\00"}
!110 = metadata !{i64 703, [8 x i8] c"\09jne\0970\00"}
!111 = metadata !{i64 779, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!112 = metadata !{i64 782, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!113 = metadata !{i64 785, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!114 = metadata !{i64 788, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!115 = metadata !{i64 709, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!116 = metadata !{i64 719, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!117 = metadata !{i64 723, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!118 = metadata !{i64 727, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!119 = metadata !{i64 734, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!120 = metadata !{i64 737, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!121 = metadata !{i64 741, [17 x i8] c"\09cmpl\09$124, %esi\00"}
!122 = metadata !{i64 747, [8 x i8] c"\09jne\0926\00"}
!123 = metadata !{i64 845, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!124 = metadata !{i64 855, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!125 = metadata !{i64 859, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!126 = metadata !{i64 863, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!127 = metadata !{i64 870, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!128 = metadata !{i64 873, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!129 = metadata !{i64 877, [12 x i8] c"\09callq\09-882\00"}
!130 = metadata !{i64 882, [15 x i8] c"\09movl\09$1, %edi\00"}
!131 = metadata !{i64 887, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!132 = metadata !{i64 890, [15 x i8] c"\09addl\09$1, %esi\00"}
!133 = metadata !{i64 896, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!134 = metadata !{i64 899, [9 x i8] c"\09callq\090\00"}
!135 = metadata !{i64 904, [23 x i8] c"\09movl\09%eax, -120(%rbp)\00"}
!136 = metadata !{i64 907, [10 x i8] c"\09jmp\09-608\00"}
!137 = metadata !{i64 803, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!138 = metadata !{i64 806, [22 x i8] c"\09cmpl\09-24(%rbp), %eax\00"}
!139 = metadata !{i64 809, [8 x i8] c"\09jne\0930\00"}
!140 = metadata !{i64 753, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!141 = metadata !{i64 760, [8 x i8] c"\09jle\0913\00"}
!142 = metadata !{i64 827, [9 x i8] c"\09callq\090\00"}
!143 = metadata !{i64 832, [24 x i8] c"\09movl\09$4294967294, %edi\00"}
!144 = metadata !{i64 837, [23 x i8] c"\09movl\09%eax, -116(%rbp)\00"}
!145 = metadata !{i64 840, [9 x i8] c"\09callq\090\00"}
!146 = metadata !{i64 766, [21 x i8] c"\09cmpl\09$11, -20(%rbp)\00"}
!147 = metadata !{i64 773, [7 x i8] c"\09jl\0912\00"}
!148 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!149 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!150 = metadata !{i64 4, [16 x i8] c"\09subq\09$32, %rsp\00"}
!151 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!152 = metadata !{i64 15, [19 x i8] c"\09cmpl\09$7, -4(%rbp)\00"}
!153 = metadata !{i64 22, [9 x i8] c"\09jge\09124\00"}
!154 = metadata !{i64 152, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!155 = metadata !{i64 164, [9 x i8] c"\09callq\090\00"}
!156 = metadata !{i64 169, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!157 = metadata !{i64 172, [16 x i8] c"\09addq\09$32, %rsp\00"}
!158 = metadata !{i64 176, [11 x i8] c"\09popq\09%rbp\00"}
!159 = metadata !{i64 177, [6 x i8] c"\09retq\00"}
!160 = metadata !{i64 28, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!161 = metadata !{i64 35, [20 x i8] c"\09cmpl\09$11, -8(%rbp)\00"}
!162 = metadata !{i64 42, [8 x i8] c"\09jge\0968\00"}
!163 = metadata !{i64 116, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!164 = metadata !{i64 128, [9 x i8] c"\09callq\090\00"}
!165 = metadata !{i64 133, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!166 = metadata !{i64 136, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!167 = metadata !{i64 139, [15 x i8] c"\09addl\09$1, %eax\00"}
!168 = metadata !{i64 144, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!169 = metadata !{i64 48, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!170 = metadata !{i64 58, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!171 = metadata !{i64 68, [23 x i8] c"\09movslq\09-8(%rbp), %rcx\00"}
!172 = metadata !{i64 72, [23 x i8] c"\09movslq\09-4(%rbp), %rdx\00"}
!173 = metadata !{i64 76, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!174 = metadata !{i64 83, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!175 = metadata !{i64 86, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!176 = metadata !{i64 92, [9 x i8] c"\09callq\090\00"}
!177 = metadata !{i64 97, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!178 = metadata !{i64 100, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!179 = metadata !{i64 103, [15 x i8] c"\09addl\09$1, %eax\00"}
!180 = metadata !{i64 108, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
