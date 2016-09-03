; ModuleID = 'Output/test_23.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%1 = type <{ [95 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x3b2 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | ||#|   | | || +-- | | ||     |   |+-----+---+" }>, align 64
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
  %183 = load i64* %RSI_val, !mcsema_real_eip !27
  %184 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85), i64 %183), !mcsema_real_eip !27
  store i64 %184, i64* %RAX_val, !mcsema_real_eip !27
  %185 = load i64* %RBP_val, !mcsema_real_eip !28
  %186 = add i64 %185, -4, !mcsema_real_eip !28
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !28
  %188 = bitcast i64* %187 to i32*
  %189 = load i32* %188, !mcsema_real_eip !28
  %190 = zext i32 %189 to i64, !mcsema_real_eip !28
  store i64 %190, i64* %RCX_val, !mcsema_real_eip !28
  %191 = load i64* %RBP_val, !mcsema_real_eip !29
  %192 = add i64 %191, -124, !mcsema_real_eip !29
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !29
  %194 = load i64* %RAX_val, !mcsema_real_eip !29
  %195 = trunc i64 %194 to i32, !mcsema_real_eip !29
  %196 = bitcast i64* %193 to i32*
  store i32 %195, i32* %196, !mcsema_real_eip !29
  %197 = load i64* %RCX_val, !mcsema_real_eip !30
  %198 = and i64 %197, 4294967295
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !30
  %199 = load i64* %RSP_val, !mcsema_real_eip !31
  %uadd365 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 128)
  %200 = extractvalue { i64, i1 } %uadd365, 0
  %201 = xor i64 %200, %199, !mcsema_real_eip !31
  %202 = and i64 %201, 16, !mcsema_real_eip !31
  %203 = icmp ne i64 %202, 0, !mcsema_real_eip !31
  store i1 %203, i1* %AF_val, !mcsema_real_eip !31
  %204 = icmp slt i64 %200, 0
  store i1 %204, i1* %SF_val, !mcsema_real_eip !31
  %205 = icmp eq i64 %200, 0, !mcsema_real_eip !31
  store i1 %205, i1* %ZF_val, !mcsema_real_eip !31
  %206 = xor i64 %199, -9223372036854775808, !mcsema_real_eip !31
  %207 = and i64 %201, %206, !mcsema_real_eip !31
  %208 = icmp slt i64 %207, 0
  store i1 %208, i1* %OF_val, !mcsema_real_eip !31
  %209 = trunc i64 %200 to i8, !mcsema_real_eip !31
  %210 = tail call i8 @llvm.ctpop.i8(i8 %209), !mcsema_real_eip !31
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  store i1 %212, i1* %PF_val, !mcsema_real_eip !31
  %213 = extractvalue { i64, i1 } %uadd365, 1
  store i1 %213, i1* %CF_val, !mcsema_real_eip !31
  store i64 %200, i64* %RSP_val, !mcsema_real_eip !31
  %214 = inttoptr i64 %200 to i64*, !mcsema_real_eip !32
  %215 = load i64* %214, !mcsema_real_eip !32
  store i64 %215, i64* %RBP_val, !mcsema_real_eip !32
  %216 = add i64 %200, 16, !mcsema_real_eip !33
  store i64 %216, i64* %RSP_val, !mcsema_real_eip !33
  %217 = load i64* %RAX_val, !mcsema_real_eip !33
  store i64 %217, i64* %RAX, !mcsema_real_eip !33
  %218 = load i64* %RBX_val, !mcsema_real_eip !33
  store i64 %218, i64* %RBX, !mcsema_real_eip !33
  %219 = load i64* %RCX_val, !mcsema_real_eip !33
  store i64 %219, i64* %RCX, !mcsema_real_eip !33
  %220 = load i64* %RDX_val, !mcsema_real_eip !33
  store i64 %220, i64* %RDX, !mcsema_real_eip !33
  %221 = load i64* %RSI_val, !mcsema_real_eip !33
  store i64 %221, i64* %RSI, !mcsema_real_eip !33
  %222 = load i64* %RDI_val, !mcsema_real_eip !33
  store i64 %222, i64* %RDI, !mcsema_real_eip !33
  %223 = load i64* %RSP_val, !mcsema_real_eip !33
  store i64 %223, i64* %RSP, !mcsema_real_eip !33
  %224 = load i64* %RBP_val, !mcsema_real_eip !33
  store i64 %224, i64* %RBP, !mcsema_real_eip !33
  %225 = load i64* %R8_val, !mcsema_real_eip !33
  store i64 %225, i64* %R8, !mcsema_real_eip !33
  %226 = load i64* %R9_val, !mcsema_real_eip !33
  store i64 %226, i64* %R9, !mcsema_real_eip !33
  %227 = load i64* %R10_val, !mcsema_real_eip !33
  store i64 %227, i64* %R10, !mcsema_real_eip !33
  %228 = load i64* %R11_val, !mcsema_real_eip !33
  store i64 %228, i64* %R11, !mcsema_real_eip !33
  %229 = load i64* %R12_val, !mcsema_real_eip !33
  store i64 %229, i64* %R12, !mcsema_real_eip !33
  %230 = load i64* %R13_val, !mcsema_real_eip !33
  store i64 %230, i64* %R13, !mcsema_real_eip !33
  %231 = load i64* %R14_val, !mcsema_real_eip !33
  store i64 %231, i64* %R14, !mcsema_real_eip !33
  %232 = load i64* %R15_val, !mcsema_real_eip !33
  store i64 %232, i64* %R15, !mcsema_real_eip !33
  %233 = load i64* %RIP_val, !mcsema_real_eip !33
  store i64 %233, i64* %RIP, !mcsema_real_eip !33
  %234 = load i1* %CF_val, !mcsema_real_eip !33
  store i1 %234, i1* %CF, align 1, !mcsema_real_eip !33
  %235 = load i1* %PF_val, !mcsema_real_eip !33
  store i1 %235, i1* %PF, align 1, !mcsema_real_eip !33
  %236 = load i1* %AF_val, !mcsema_real_eip !33
  store i1 %236, i1* %AF, align 1, !mcsema_real_eip !33
  %237 = load i1* %ZF_val, !mcsema_real_eip !33
  store i1 %237, i1* %ZF, align 1, !mcsema_real_eip !33
  %238 = load i1* %SF_val, !mcsema_real_eip !33
  store i1 %238, i1* %SF, align 1, !mcsema_real_eip !33
  %239 = load i1* %OF_val, !mcsema_real_eip !33
  store i1 %239, i1* %OF, align 1, !mcsema_real_eip !33
  %240 = load i1* %DF_val, !mcsema_real_eip !33
  store i1 %240, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  %241 = load i1* %FPU_B_val, !mcsema_real_eip !33
  store i1 %241, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %242 = load i1* %FPU_C3_val, !mcsema_real_eip !33
  store i1 %242, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %243 = load i3* %FPU_TOP_val, !mcsema_real_eip !33
  store i3 %243, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %244 = load i1* %FPU_C2_val, !mcsema_real_eip !33
  store i1 %244, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %245 = load i1* %FPU_C1_val, !mcsema_real_eip !33
  store i1 %245, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %246 = load i1* %FPU_C0_val, !mcsema_real_eip !33
  store i1 %246, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %247 = load i1* %FPU_ES_val, !mcsema_real_eip !33
  store i1 %247, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %248 = load i1* %FPU_SF_val, !mcsema_real_eip !33
  store i1 %248, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %249 = load i1* %FPU_PE_val, !mcsema_real_eip !33
  store i1 %249, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %250 = load i1* %FPU_UE_val, !mcsema_real_eip !33
  store i1 %250, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %251 = load i1* %FPU_OE_val, !mcsema_real_eip !33
  store i1 %251, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %252 = load i1* %FPU_ZE_val, !mcsema_real_eip !33
  store i1 %252, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %253 = load i1* %FPU_DE_val, !mcsema_real_eip !33
  store i1 %253, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %254 = load i1* %FPU_IE_val, !mcsema_real_eip !33
  store i1 %254, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %255 = load i1* %FPU_X_val, !mcsema_real_eip !33
  store i1 %255, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %256 = load i2* %FPU_RC_val, !mcsema_real_eip !33
  store i2 %256, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %257 = load i2* %FPU_PC_val, !mcsema_real_eip !33
  store i2 %257, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %258 = load i1* %FPU_PM_val, !mcsema_real_eip !33
  store i1 %258, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %259 = load i1* %FPU_UM_val, !mcsema_real_eip !33
  store i1 %259, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %260 = load i1* %FPU_OM_val, !mcsema_real_eip !33
  store i1 %260, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %261 = load i1* %FPU_ZM_val, !mcsema_real_eip !33
  store i1 %261, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %262 = load i1* %FPU_DM_val, !mcsema_real_eip !33
  store i1 %262, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %263 = load i1* %FPU_IM_val, !mcsema_real_eip !33
  store i1 %263, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %264 = load i64* %53, align 4
  store i64 %264, i64* %52, align 4
  %265 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  store i16 %265, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %266 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  store i64 %266, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  %267 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  store i16 %267, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %268 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  store i64 %268, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  %269 = load i128* %XMM0_val, !mcsema_real_eip !33
  store i128 %269, i128* %XMM0, align 1, !mcsema_real_eip !33
  %270 = load i128* %XMM1_val, !mcsema_real_eip !33
  store i128 %270, i128* %XMM1, align 1, !mcsema_real_eip !33
  %271 = load i128* %XMM2_val, !mcsema_real_eip !33
  store i128 %271, i128* %XMM2, align 1, !mcsema_real_eip !33
  %272 = load i128* %XMM3_val, !mcsema_real_eip !33
  store i128 %272, i128* %XMM3, align 1, !mcsema_real_eip !33
  %273 = load i128* %XMM4_val, !mcsema_real_eip !33
  store i128 %273, i128* %XMM4, align 1, !mcsema_real_eip !33
  %274 = load i128* %XMM5_val, !mcsema_real_eip !33
  store i128 %274, i128* %XMM5, align 1, !mcsema_real_eip !33
  %275 = load i128* %XMM6_val, !mcsema_real_eip !33
  store i128 %275, i128* %XMM6, align 1, !mcsema_real_eip !33
  %276 = load i128* %XMM7_val, !mcsema_real_eip !33
  store i128 %276, i128* %XMM7, align 1, !mcsema_real_eip !33
  %277 = load i128* %XMM8_val, !mcsema_real_eip !33
  store i128 %277, i128* %XMM8, align 1, !mcsema_real_eip !33
  %278 = load i128* %XMM9_val, !mcsema_real_eip !33
  store i128 %278, i128* %XMM9, align 1, !mcsema_real_eip !33
  %279 = load i128* %XMM10_val, !mcsema_real_eip !33
  store i128 %279, i128* %XMM10, align 1, !mcsema_real_eip !33
  %280 = load i128* %XMM11_val, !mcsema_real_eip !33
  store i128 %280, i128* %XMM11, align 1, !mcsema_real_eip !33
  %281 = load i128* %XMM12_val, !mcsema_real_eip !33
  store i128 %281, i128* %XMM12, align 1, !mcsema_real_eip !33
  %282 = load i128* %XMM13_val, !mcsema_real_eip !33
  store i128 %282, i128* %XMM13, align 1, !mcsema_real_eip !33
  %283 = load i128* %XMM14_val, !mcsema_real_eip !33
  store i128 %283, i128* %XMM14, align 1, !mcsema_real_eip !33
  %284 = load i128* %XMM15_val, !mcsema_real_eip !33
  store i128 %284, i128* %XMM15, align 1, !mcsema_real_eip !33
  %285 = load i64* %STACK_BASE_val, !mcsema_real_eip !33
  store i64 %285, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  %286 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  store i64 %286, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x13d:                                      ; preds = %block_0x130, %block_0x13d.preheader
  %287 = load i64* %RBP_val, !mcsema_real_eip !34
  %288 = add i64 %287, -20, !mcsema_real_eip !34
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !34
  %290 = bitcast i64* %289 to i32*
  %291 = load i32* %290, !mcsema_real_eip !34
  %292 = zext i32 %291 to i64, !mcsema_real_eip !34
  store i64 %292, i64* %RAX_val, !mcsema_real_eip !34
  %293 = load i64* %RBP_val, !mcsema_real_eip !35
  %294 = add i64 %293, -28, !mcsema_real_eip !35
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !35
  %296 = bitcast i64* %295 to i32*
  store i32 %291, i32* %296, !mcsema_real_eip !35
  %297 = load i64* %RBP_val, !mcsema_real_eip !36
  %298 = add i64 %297, -24, !mcsema_real_eip !36
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !36
  %300 = bitcast i64* %299 to i32*
  %301 = load i32* %300, !mcsema_real_eip !36
  %302 = zext i32 %301 to i64, !mcsema_real_eip !36
  store i64 %302, i64* %RAX_val, !mcsema_real_eip !36
  %303 = load i64* %RBP_val, !mcsema_real_eip !37
  %304 = add i64 %303, -32, !mcsema_real_eip !37
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !37
  %306 = bitcast i64* %305 to i32*
  store i32 %301, i32* %306, !mcsema_real_eip !37
  %307 = load i64* %RBP_val, !mcsema_real_eip !38
  %308 = add i64 %307, -36, !mcsema_real_eip !38
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !38
  %310 = bitcast i64* %309 to i32*
  %311 = load i32* %310, !mcsema_real_eip !38
  %312 = sext i32 %311 to i64, !mcsema_real_eip !38
  store i64 %312, i64* %RCX_val, !mcsema_real_eip !38
  %313 = load i64* %RBP_val, !mcsema_real_eip !39
  %314 = add i64 %313, -64, !mcsema_real_eip !39
  %315 = add i64 %314, %312, !mcsema_real_eip !39
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !39
  %317 = bitcast i64* %316 to i8*
  %318 = load i8* %317, !mcsema_real_eip !39
  %319 = sext i8 %318 to i32, !mcsema_real_eip !39
  %320 = zext i32 %319 to i64, !mcsema_real_eip !39
  store i64 %320, i64* %RAX_val, !mcsema_real_eip !39
  %321 = add nsw i32 %319, -114
  %322 = xor i32 %321, %319, !mcsema_real_eip !40
  %323 = and i32 %322, 16
  %324 = icmp eq i32 %323, 0
  store i1 %324, i1* %AF_val, !mcsema_real_eip !40
  %325 = trunc i32 %321 to i8, !mcsema_real_eip !40
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !40
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF_val, !mcsema_real_eip !40
  %329 = icmp eq i32 %321, 0, !mcsema_real_eip !40
  store i1 %329, i1* %ZF_val, !mcsema_real_eip !40
  %330 = icmp slt i32 %321, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !40
  %331 = icmp ult i8 %318, 114
  store i1 %331, i1* %CF_val, !mcsema_real_eip !40
  %332 = and i32 %322, %319, !mcsema_real_eip !40
  %333 = icmp slt i32 %332, 0
  store i1 %333, i1* %OF_val, !mcsema_real_eip !40
  %334 = zext i32 %321 to i64, !mcsema_real_eip !40
  store i64 %334, i64* %RDX_val, !mcsema_real_eip !40
  %335 = load i64* %RBP_val, !mcsema_real_eip !41
  %336 = add i64 %335, -76, !mcsema_real_eip !41
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !41
  %338 = load i64* %RAX_val, !mcsema_real_eip !41
  %339 = trunc i64 %338 to i32, !mcsema_real_eip !41
  %340 = bitcast i64* %337 to i32*
  store i32 %339, i32* %340, !mcsema_real_eip !41
  %341 = load i64* %RBP_val, !mcsema_real_eip !42
  %342 = add i64 %341, -80, !mcsema_real_eip !42
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !42
  %344 = load i64* %RDX_val, !mcsema_real_eip !42
  %345 = trunc i64 %344 to i32, !mcsema_real_eip !42
  %346 = bitcast i64* %343 to i32*
  store i32 %345, i32* %346, !mcsema_real_eip !42
  %347 = load i1* %OF_val, !mcsema_real_eip !43
  %348 = load i1* %SF_val, !mcsema_real_eip !43
  %tmp348 = xor i1 %348, %347
  %349 = load i1* %ZF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %349, %tmp348
  %350 = load i64* %RBP_val, !mcsema_real_eip !44
  %351 = add i64 %350, -76, !mcsema_real_eip !44
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !44
  %353 = bitcast i64* %352 to i32*
  %354 = load i32* %353, !mcsema_real_eip !44
  %355 = zext i32 %354 to i64, !mcsema_real_eip !44
  store i64 %355, i64* %RAX_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x168, label %block_0x190, !mcsema_real_eip !43

block_0x190:                                      ; preds = %block_0x13d
  %356 = add i32 %354, -115
  %357 = xor i32 %356, %354, !mcsema_real_eip !45
  %358 = and i32 %357, 16
  %359 = icmp eq i32 %358, 0
  store i1 %359, i1* %AF_val, !mcsema_real_eip !45
  %360 = trunc i32 %356 to i8, !mcsema_real_eip !45
  %361 = tail call i8 @llvm.ctpop.i8(i8 %360), !mcsema_real_eip !45
  %362 = and i8 %361, 1
  %363 = icmp eq i8 %362, 0
  store i1 %363, i1* %PF_val, !mcsema_real_eip !45
  %364 = icmp eq i32 %356, 0, !mcsema_real_eip !45
  store i1 %364, i1* %ZF_val, !mcsema_real_eip !45
  %365 = icmp slt i32 %356, 0
  store i1 %365, i1* %SF_val, !mcsema_real_eip !45
  %366 = icmp ult i32 %354, 115, !mcsema_real_eip !45
  store i1 %366, i1* %CF_val, !mcsema_real_eip !45
  %367 = and i32 %357, %354, !mcsema_real_eip !45
  %368 = icmp slt i32 %367, 0
  store i1 %368, i1* %OF_val, !mcsema_real_eip !45
  %369 = zext i32 %356 to i64, !mcsema_real_eip !45
  store i64 %369, i64* %RAX_val, !mcsema_real_eip !45
  %370 = load i64* %RBP_val, !mcsema_real_eip !46
  %371 = add i64 %370, -92, !mcsema_real_eip !46
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !46
  %373 = bitcast i64* %372 to i32*
  store i32 %356, i32* %373, !mcsema_real_eip !46
  %374 = load i1* %ZF_val, !mcsema_real_eip !47
  %375 = load i64* %RBP_val, !mcsema_real_eip !48
  br i1 %374, label %block_0x1c8, label %block_0x1a4, !mcsema_real_eip !47

block_0x168:                                      ; preds = %block_0x13d
  %376 = add i32 %354, -97
  %377 = xor i32 %376, %354, !mcsema_real_eip !49
  %378 = and i32 %377, 16, !mcsema_real_eip !49
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !49
  store i1 %379, i1* %AF_val, !mcsema_real_eip !49
  %380 = trunc i32 %376 to i8, !mcsema_real_eip !49
  %381 = tail call i8 @llvm.ctpop.i8(i8 %380), !mcsema_real_eip !49
  %382 = and i8 %381, 1
  %383 = icmp eq i8 %382, 0
  store i1 %383, i1* %PF_val, !mcsema_real_eip !49
  %384 = icmp eq i32 %376, 0, !mcsema_real_eip !49
  store i1 %384, i1* %ZF_val, !mcsema_real_eip !49
  %385 = icmp slt i32 %376, 0
  store i1 %385, i1* %SF_val, !mcsema_real_eip !49
  %386 = icmp ult i32 %354, 97, !mcsema_real_eip !49
  store i1 %386, i1* %CF_val, !mcsema_real_eip !49
  %387 = and i32 %377, %354, !mcsema_real_eip !49
  %388 = icmp slt i32 %387, 0
  store i1 %388, i1* %OF_val, !mcsema_real_eip !49
  %389 = zext i32 %376 to i64, !mcsema_real_eip !49
  store i64 %389, i64* %RAX_val, !mcsema_real_eip !49
  %390 = load i64* %RBP_val, !mcsema_real_eip !50
  %391 = add i64 %390, -84, !mcsema_real_eip !50
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !50
  %393 = bitcast i64* %392 to i32*
  store i32 %376, i32* %393, !mcsema_real_eip !50
  %394 = load i1* %ZF_val, !mcsema_real_eip !51
  %395 = load i64* %RBP_val, !mcsema_real_eip !52
  br i1 %394, label %block_0x1d8, label %block_0x17c, !mcsema_real_eip !51

block_0x1c8:                                      ; preds = %block_0x190
  %396 = add i64 %375, -24, !mcsema_real_eip !48
  %397 = inttoptr i64 %396 to i64*, !mcsema_real_eip !48
  %398 = bitcast i64* %397 to i32*
  %399 = load i32* %398, !mcsema_real_eip !48
  %uadd376 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %399, i32 1)
  %400 = extractvalue { i32, i1 } %uadd376, 0
  %401 = xor i32 %400, %399, !mcsema_real_eip !53
  %402 = and i32 %401, 16, !mcsema_real_eip !53
  %403 = icmp ne i32 %402, 0, !mcsema_real_eip !53
  store i1 %403, i1* %AF_val, !mcsema_real_eip !53
  %404 = icmp slt i32 %400, 0
  store i1 %404, i1* %SF_val, !mcsema_real_eip !53
  %405 = icmp eq i32 %400, 0, !mcsema_real_eip !53
  store i1 %405, i1* %ZF_val, !mcsema_real_eip !53
  %406 = xor i32 %399, -2147483648, !mcsema_real_eip !53
  %407 = and i32 %401, %406, !mcsema_real_eip !53
  %408 = icmp slt i32 %407, 0
  store i1 %408, i1* %OF_val, !mcsema_real_eip !53
  %409 = trunc i32 %400 to i8, !mcsema_real_eip !53
  %410 = tail call i8 @llvm.ctpop.i8(i8 %409), !mcsema_real_eip !53
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  store i1 %412, i1* %PF_val, !mcsema_real_eip !53
  %413 = extractvalue { i32, i1 } %uadd376, 1
  store i1 %413, i1* %CF_val, !mcsema_real_eip !53
  %414 = zext i32 %400 to i64, !mcsema_real_eip !53
  store i64 %414, i64* %RAX_val, !mcsema_real_eip !53
  %415 = load i64* %RBP_val, !mcsema_real_eip !54
  %416 = add i64 %415, -24, !mcsema_real_eip !54
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !54
  %418 = bitcast i64* %417 to i32*
  store i32 %400, i32* %418, !mcsema_real_eip !54
  br label %block_0x22a, !mcsema_real_eip !55

block_0x1d8:                                      ; preds = %block_0x168
  %419 = add i64 %395, -20, !mcsema_real_eip !52
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !52
  %421 = bitcast i64* %420 to i32*
  %422 = load i32* %421, !mcsema_real_eip !52
  %uadd373 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %422, i32 -1)
  %423 = extractvalue { i32, i1 } %uadd373, 0
  %424 = xor i32 %423, %422, !mcsema_real_eip !56
  %425 = and i32 %424, 16
  %426 = icmp eq i32 %425, 0
  store i1 %426, i1* %AF_val, !mcsema_real_eip !56
  %427 = icmp slt i32 %423, 0
  store i1 %427, i1* %SF_val, !mcsema_real_eip !56
  %428 = icmp eq i32 %423, 0, !mcsema_real_eip !56
  store i1 %428, i1* %ZF_val, !mcsema_real_eip !56
  %429 = and i32 %424, %422, !mcsema_real_eip !56
  %430 = icmp slt i32 %429, 0
  store i1 %430, i1* %OF_val, !mcsema_real_eip !56
  %431 = trunc i32 %423 to i8, !mcsema_real_eip !56
  %432 = tail call i8 @llvm.ctpop.i8(i8 %431), !mcsema_real_eip !56
  %433 = and i8 %432, 1
  %434 = icmp eq i8 %433, 0
  store i1 %434, i1* %PF_val, !mcsema_real_eip !56
  %435 = extractvalue { i32, i1 } %uadd373, 1
  store i1 %435, i1* %CF_val, !mcsema_real_eip !56
  %436 = zext i32 %423 to i64, !mcsema_real_eip !56
  store i64 %436, i64* %RAX_val, !mcsema_real_eip !56
  %437 = load i64* %RBP_val, !mcsema_real_eip !57
  %438 = add i64 %437, -20, !mcsema_real_eip !57
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !57
  %440 = bitcast i64* %439 to i32*
  store i32 %423, i32* %440, !mcsema_real_eip !57
  br label %block_0x22a, !mcsema_real_eip !58

block_0x1a4:                                      ; preds = %block_0x190
  %441 = add i64 %375, -76, !mcsema_real_eip !59
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !59
  %443 = bitcast i64* %442 to i32*
  %444 = load i32* %443, !mcsema_real_eip !59
  %445 = add i32 %444, -119
  %446 = xor i32 %445, %444, !mcsema_real_eip !60
  %447 = and i32 %446, 16
  %448 = icmp eq i32 %447, 0
  store i1 %448, i1* %AF_val, !mcsema_real_eip !60
  %449 = trunc i32 %445 to i8, !mcsema_real_eip !60
  %450 = tail call i8 @llvm.ctpop.i8(i8 %449), !mcsema_real_eip !60
  %451 = and i8 %450, 1
  %452 = icmp eq i8 %451, 0
  store i1 %452, i1* %PF_val, !mcsema_real_eip !60
  %453 = icmp eq i32 %445, 0, !mcsema_real_eip !60
  store i1 %453, i1* %ZF_val, !mcsema_real_eip !60
  %454 = icmp slt i32 %445, 0
  store i1 %454, i1* %SF_val, !mcsema_real_eip !60
  %455 = icmp ult i32 %444, 119, !mcsema_real_eip !60
  store i1 %455, i1* %CF_val, !mcsema_real_eip !60
  %456 = and i32 %446, %444, !mcsema_real_eip !60
  %457 = icmp slt i32 %456, 0
  store i1 %457, i1* %OF_val, !mcsema_real_eip !60
  %458 = zext i32 %445 to i64, !mcsema_real_eip !60
  store i64 %458, i64* %RAX_val, !mcsema_real_eip !60
  %459 = load i64* %RBP_val, !mcsema_real_eip !61
  %460 = add i64 %459, -96, !mcsema_real_eip !61
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !61
  %462 = bitcast i64* %461 to i32*
  store i32 %445, i32* %462, !mcsema_real_eip !61
  %463 = load i1* %ZF_val, !mcsema_real_eip !62
  br i1 %463, label %block_0x1b8, label %block_0x1f8, !mcsema_real_eip !62

block_0x22a:                                      ; preds = %block_0x1b8, %block_0x1e8, %block_0x1d8, %block_0x1c8
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !63
  %464 = load i64* %RBP_val, !mcsema_real_eip !64
  %465 = add i64 %464, -20, !mcsema_real_eip !64
  %466 = inttoptr i64 %465 to i64*, !mcsema_real_eip !64
  %467 = bitcast i64* %466 to i32*
  %468 = load i32* %467, !mcsema_real_eip !64
  %469 = sext i32 %468 to i64, !mcsema_real_eip !64
  store i64 %469, i64* %RCX_val, !mcsema_real_eip !64
  %470 = load i64* %RBP_val, !mcsema_real_eip !65
  %471 = add i64 %470, -24, !mcsema_real_eip !65
  %472 = inttoptr i64 %471 to i64*, !mcsema_real_eip !65
  %473 = bitcast i64* %472 to i32*
  %474 = load i32* %473, !mcsema_real_eip !65
  %475 = sext i32 %474 to i64, !mcsema_real_eip !65
  %476 = mul i64 %475, 11, !mcsema_real_eip !66
  store i64 %476, i64* %RDX_val, !mcsema_real_eip !66
  %477 = load i64* %RAX_val, !mcsema_real_eip !67
  %uadd371 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %476, i64 %477)
  %478 = extractvalue { i64, i1 } %uadd371, 0
  %479 = xor i64 %478, %477, !mcsema_real_eip !67
  %480 = xor i64 %479, %476, !mcsema_real_eip !67
  %481 = and i64 %480, 16, !mcsema_real_eip !67
  %482 = icmp ne i64 %481, 0, !mcsema_real_eip !67
  store i1 %482, i1* %AF_val, !mcsema_real_eip !67
  %483 = icmp slt i64 %478, 0
  store i1 %483, i1* %SF_val, !mcsema_real_eip !67
  %484 = icmp eq i64 %478, 0, !mcsema_real_eip !67
  store i1 %484, i1* %ZF_val, !mcsema_real_eip !67
  %485 = xor i64 %477, -9223372036854775808, !mcsema_real_eip !67
  %486 = xor i64 %485, %476, !mcsema_real_eip !67
  %487 = and i64 %479, %486, !mcsema_real_eip !67
  %488 = icmp slt i64 %487, 0
  store i1 %488, i1* %OF_val, !mcsema_real_eip !67
  %489 = trunc i64 %478 to i8, !mcsema_real_eip !67
  %490 = tail call i8 @llvm.ctpop.i8(i8 %489), !mcsema_real_eip !67
  %491 = and i8 %490, 1
  %492 = icmp eq i8 %491, 0
  store i1 %492, i1* %PF_val, !mcsema_real_eip !67
  %493 = extractvalue { i64, i1 } %uadd371, 1
  store i1 %493, i1* %CF_val, !mcsema_real_eip !67
  store i64 %478, i64* %RAX_val, !mcsema_real_eip !67
  %494 = load i64* %RCX_val, !mcsema_real_eip !68
  %495 = add i64 %494, %478, !mcsema_real_eip !68
  %496 = inttoptr i64 %495 to i64*, !mcsema_real_eip !68
  %497 = bitcast i64* %496 to i8*
  %498 = load i8* %497, !mcsema_real_eip !68
  %499 = sext i8 %498 to i32, !mcsema_real_eip !68
  %500 = zext i32 %499 to i64, !mcsema_real_eip !68
  store i64 %500, i64* %RSI_val, !mcsema_real_eip !68
  %501 = add nsw i32 %499, -35
  %502 = xor i32 %501, %499, !mcsema_real_eip !69
  %503 = and i32 %502, 16, !mcsema_real_eip !69
  %504 = icmp ne i32 %503, 0, !mcsema_real_eip !69
  store i1 %504, i1* %AF_val, !mcsema_real_eip !69
  %505 = trunc i32 %501 to i8, !mcsema_real_eip !69
  %506 = tail call i8 @llvm.ctpop.i8(i8 %505), !mcsema_real_eip !69
  %507 = and i8 %506, 1
  %508 = icmp eq i8 %507, 0
  store i1 %508, i1* %PF_val, !mcsema_real_eip !69
  %509 = icmp eq i32 %501, 0, !mcsema_real_eip !69
  store i1 %509, i1* %ZF_val, !mcsema_real_eip !69
  %510 = icmp slt i32 %501, 0
  store i1 %510, i1* %SF_val, !mcsema_real_eip !69
  %511 = icmp ult i8 %498, 35
  store i1 %511, i1* %CF_val, !mcsema_real_eip !69
  %512 = and i32 %502, %499, !mcsema_real_eip !69
  %513 = icmp slt i32 %512, 0
  store i1 %513, i1* %OF_val, !mcsema_real_eip !69
  %514 = load i1* %ZF_val, !mcsema_real_eip !70
  br i1 %514, label %block_0x256, label %block_0x28c, !mcsema_real_eip !70

block_0x17c:                                      ; preds = %block_0x168
  %515 = add i64 %395, -76, !mcsema_real_eip !71
  %516 = inttoptr i64 %515 to i64*, !mcsema_real_eip !71
  %517 = bitcast i64* %516 to i32*
  %518 = load i32* %517, !mcsema_real_eip !71
  %519 = add i32 %518, -100
  %520 = xor i32 %519, %518, !mcsema_real_eip !72
  %521 = and i32 %520, 16, !mcsema_real_eip !72
  %522 = icmp ne i32 %521, 0, !mcsema_real_eip !72
  store i1 %522, i1* %AF_val, !mcsema_real_eip !72
  %523 = trunc i32 %519 to i8, !mcsema_real_eip !72
  %524 = tail call i8 @llvm.ctpop.i8(i8 %523), !mcsema_real_eip !72
  %525 = and i8 %524, 1
  %526 = icmp eq i8 %525, 0
  store i1 %526, i1* %PF_val, !mcsema_real_eip !72
  %527 = icmp eq i32 %519, 0, !mcsema_real_eip !72
  store i1 %527, i1* %ZF_val, !mcsema_real_eip !72
  %528 = icmp slt i32 %519, 0
  store i1 %528, i1* %SF_val, !mcsema_real_eip !72
  %529 = icmp ult i32 %518, 100, !mcsema_real_eip !72
  store i1 %529, i1* %CF_val, !mcsema_real_eip !72
  %530 = and i32 %520, %518, !mcsema_real_eip !72
  %531 = icmp slt i32 %530, 0
  store i1 %531, i1* %OF_val, !mcsema_real_eip !72
  %532 = zext i32 %519 to i64, !mcsema_real_eip !72
  store i64 %532, i64* %RAX_val, !mcsema_real_eip !72
  %533 = load i64* %RBP_val, !mcsema_real_eip !73
  %534 = add i64 %533, -88, !mcsema_real_eip !73
  %535 = inttoptr i64 %534 to i64*, !mcsema_real_eip !73
  %536 = bitcast i64* %535 to i32*
  store i32 %519, i32* %536, !mcsema_real_eip !73
  %537 = load i1* %ZF_val, !mcsema_real_eip !74
  br i1 %537, label %block_0x1e8, label %block_0x1f8, !mcsema_real_eip !74

block_0x1f8:                                      ; preds = %block_0x17c, %block_0x1a4
  %538 = load i64* %RSI_val, !mcsema_real_eip !75
  %539 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 5), i64 %538), !mcsema_real_eip !75
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 45), i64* %RDI_val, !mcsema_real_eip !76
  %540 = load i64* %RBP_val, !mcsema_real_eip !77
  %541 = add i64 %540, -100, !mcsema_real_eip !77
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !77
  %543 = trunc i64 %539 to i32, !mcsema_real_eip !77
  %544 = bitcast i64* %542 to i32*
  store i32 %543, i32* %544, !mcsema_real_eip !77
  %545 = load i64* %RDI_val, !mcsema_real_eip !78
  %546 = load i64* %RSI_val, !mcsema_real_eip !78
  %547 = tail call x86_64_sysvcc i64 @printf(i64 %545, i64 %546), !mcsema_real_eip !78
  store i64 4294967295, i64* %RDI_val, !mcsema_real_eip !79
  %548 = load i64* %RBP_val, !mcsema_real_eip !80
  %549 = add i64 %548, -104, !mcsema_real_eip !80
  %550 = inttoptr i64 %549 to i64*, !mcsema_real_eip !80
  %551 = trunc i64 %547 to i32, !mcsema_real_eip !80
  %552 = bitcast i64* %550 to i32*
  store i32 %551, i32* %552, !mcsema_real_eip !80
  %553 = load i64* %RDI_val, !mcsema_real_eip !81
  %554 = tail call x86_64_sysvcc i64 @exit(i64 %553), !mcsema_real_eip !81
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !63
  %555 = load i64* %RBP_val, !mcsema_real_eip !64
  %556 = add i64 %555, -20, !mcsema_real_eip !64
  %557 = inttoptr i64 %556 to i64*, !mcsema_real_eip !64
  %558 = bitcast i64* %557 to i32*
  %559 = load i32* %558, !mcsema_real_eip !64
  %560 = sext i32 %559 to i64, !mcsema_real_eip !64
  store i64 %560, i64* %RCX_val, !mcsema_real_eip !64
  %561 = load i64* %RBP_val, !mcsema_real_eip !65
  %562 = add i64 %561, -24, !mcsema_real_eip !65
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !65
  %564 = bitcast i64* %563 to i32*
  %565 = load i32* %564, !mcsema_real_eip !65
  %566 = sext i32 %565 to i64, !mcsema_real_eip !65
  %567 = mul i64 %566, 11, !mcsema_real_eip !66
  store i64 %567, i64* %RDX_val, !mcsema_real_eip !66
  %568 = load i64* %RAX_val, !mcsema_real_eip !67
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %567, i64 %568)
  %569 = extractvalue { i64, i1 } %uadd350, 0
  %570 = xor i64 %569, %568, !mcsema_real_eip !67
  %571 = xor i64 %570, %567, !mcsema_real_eip !67
  %572 = and i64 %571, 16, !mcsema_real_eip !67
  %573 = icmp ne i64 %572, 0, !mcsema_real_eip !67
  store i1 %573, i1* %AF_val, !mcsema_real_eip !67
  %574 = icmp slt i64 %569, 0
  store i1 %574, i1* %SF_val, !mcsema_real_eip !67
  %575 = icmp eq i64 %569, 0, !mcsema_real_eip !67
  store i1 %575, i1* %ZF_val, !mcsema_real_eip !67
  %576 = xor i64 %568, -9223372036854775808, !mcsema_real_eip !67
  %577 = xor i64 %576, %567, !mcsema_real_eip !67
  %578 = and i64 %570, %577, !mcsema_real_eip !67
  %579 = icmp slt i64 %578, 0
  store i1 %579, i1* %OF_val, !mcsema_real_eip !67
  %580 = trunc i64 %569 to i8, !mcsema_real_eip !67
  %581 = tail call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !67
  %582 = and i8 %581, 1
  %583 = icmp eq i8 %582, 0
  store i1 %583, i1* %PF_val, !mcsema_real_eip !67
  %584 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %584, i1* %CF_val, !mcsema_real_eip !67
  store i64 %569, i64* %RAX_val, !mcsema_real_eip !67
  %585 = load i64* %RCX_val, !mcsema_real_eip !68
  %586 = add i64 %585, %569, !mcsema_real_eip !68
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !68
  %588 = bitcast i64* %587 to i8*
  %589 = load i8* %588, !mcsema_real_eip !68
  %590 = sext i8 %589 to i32, !mcsema_real_eip !68
  %591 = zext i32 %590 to i64, !mcsema_real_eip !68
  store i64 %591, i64* %RSI_val, !mcsema_real_eip !68
  %592 = add nsw i32 %590, -35
  %593 = xor i32 %592, %590, !mcsema_real_eip !69
  %594 = and i32 %593, 16, !mcsema_real_eip !69
  %595 = icmp ne i32 %594, 0, !mcsema_real_eip !69
  store i1 %595, i1* %AF_val, !mcsema_real_eip !69
  %596 = trunc i32 %592 to i8, !mcsema_real_eip !69
  %597 = tail call i8 @llvm.ctpop.i8(i8 %596), !mcsema_real_eip !69
  %598 = and i8 %597, 1
  %599 = icmp eq i8 %598, 0
  store i1 %599, i1* %PF_val, !mcsema_real_eip !69
  %600 = icmp eq i32 %592, 0, !mcsema_real_eip !69
  store i1 %600, i1* %ZF_val, !mcsema_real_eip !69
  %601 = icmp slt i32 %592, 0
  store i1 %601, i1* %SF_val, !mcsema_real_eip !69
  %602 = icmp ult i8 %589, 35
  store i1 %602, i1* %CF_val, !mcsema_real_eip !69
  %603 = and i32 %593, %590, !mcsema_real_eip !69
  %604 = icmp slt i32 %603, 0
  store i1 %604, i1* %OF_val, !mcsema_real_eip !69
  %605 = load i1* %ZF_val, !mcsema_real_eip !70
  br i1 %605, label %block_0x256, label %block_0x28c, !mcsema_real_eip !70

block_0x28c:                                      ; preds = %block_0x1f8, %block_0x22a
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !82
  %606 = load i64* %RBP_val, !mcsema_real_eip !83
  %607 = add i64 %606, -20, !mcsema_real_eip !83
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !83
  %609 = bitcast i64* %608 to i32*
  %610 = load i32* %609, !mcsema_real_eip !83
  %611 = sext i32 %610 to i64, !mcsema_real_eip !83
  store i64 %611, i64* %RCX_val, !mcsema_real_eip !83
  %612 = load i64* %RBP_val, !mcsema_real_eip !84
  %613 = add i64 %612, -24, !mcsema_real_eip !84
  %614 = inttoptr i64 %613 to i64*, !mcsema_real_eip !84
  %615 = bitcast i64* %614 to i32*
  %616 = load i32* %615, !mcsema_real_eip !84
  %617 = sext i32 %616 to i64, !mcsema_real_eip !84
  %618 = mul i64 %617, 11, !mcsema_real_eip !85
  store i64 %618, i64* %RDX_val, !mcsema_real_eip !85
  %619 = load i64* %RAX_val, !mcsema_real_eip !86
  %uadd369 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %618, i64 %619)
  %620 = extractvalue { i64, i1 } %uadd369, 0
  %621 = xor i64 %620, %619, !mcsema_real_eip !86
  %622 = xor i64 %621, %618, !mcsema_real_eip !86
  %623 = and i64 %622, 16, !mcsema_real_eip !86
  %624 = icmp ne i64 %623, 0, !mcsema_real_eip !86
  store i1 %624, i1* %AF_val, !mcsema_real_eip !86
  %625 = icmp slt i64 %620, 0
  store i1 %625, i1* %SF_val, !mcsema_real_eip !86
  %626 = icmp eq i64 %620, 0, !mcsema_real_eip !86
  store i1 %626, i1* %ZF_val, !mcsema_real_eip !86
  %627 = xor i64 %619, -9223372036854775808, !mcsema_real_eip !86
  %628 = xor i64 %627, %618, !mcsema_real_eip !86
  %629 = and i64 %621, %628, !mcsema_real_eip !86
  %630 = icmp slt i64 %629, 0
  store i1 %630, i1* %OF_val, !mcsema_real_eip !86
  %631 = trunc i64 %620 to i8, !mcsema_real_eip !86
  %632 = tail call i8 @llvm.ctpop.i8(i8 %631), !mcsema_real_eip !86
  %633 = and i8 %632, 1
  %634 = icmp eq i8 %633, 0
  store i1 %634, i1* %PF_val, !mcsema_real_eip !86
  %635 = extractvalue { i64, i1 } %uadd369, 1
  store i1 %635, i1* %CF_val, !mcsema_real_eip !86
  store i64 %620, i64* %RAX_val, !mcsema_real_eip !86
  %636 = load i64* %RCX_val, !mcsema_real_eip !87
  %637 = add i64 %636, %620, !mcsema_real_eip !87
  %638 = inttoptr i64 %637 to i64*, !mcsema_real_eip !87
  %639 = bitcast i64* %638 to i8*
  %640 = load i8* %639, !mcsema_real_eip !87
  %641 = sext i8 %640 to i32, !mcsema_real_eip !87
  %642 = zext i32 %641 to i64, !mcsema_real_eip !87
  store i64 %642, i64* %RSI_val, !mcsema_real_eip !87
  %643 = add nsw i32 %641, -32
  %644 = xor i32 %643, %641, !mcsema_real_eip !88
  %645 = and i32 %644, 16, !mcsema_real_eip !88
  %646 = icmp ne i32 %645, 0, !mcsema_real_eip !88
  store i1 %646, i1* %AF_val, !mcsema_real_eip !88
  %647 = trunc i32 %643 to i8, !mcsema_real_eip !88
  %648 = tail call i8 @llvm.ctpop.i8(i8 %647), !mcsema_real_eip !88
  %649 = and i8 %648, 1
  %650 = icmp eq i8 %649, 0
  store i1 %650, i1* %PF_val, !mcsema_real_eip !88
  %651 = icmp eq i32 %643, 0, !mcsema_real_eip !88
  store i1 %651, i1* %ZF_val, !mcsema_real_eip !88
  %652 = icmp slt i32 %643, 0
  store i1 %652, i1* %SF_val, !mcsema_real_eip !88
  %653 = icmp ult i8 %640, 32
  store i1 %653, i1* %CF_val, !mcsema_real_eip !88
  %654 = and i32 %644, %641, !mcsema_real_eip !88
  %655 = icmp slt i32 %654, 0
  store i1 %655, i1* %OF_val, !mcsema_real_eip !88
  %656 = load i1* %ZF_val, !mcsema_real_eip !89
  br i1 %656, label %block_0x317, label %block_0x2b8, !mcsema_real_eip !89

block_0x256:                                      ; preds = %block_0x1f8, %block_0x22a
  %657 = load i64* %RSI_val, !mcsema_real_eip !90
  %658 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 56), i64 %657), !mcsema_real_eip !90
  store i64 %658, i64* %RAX_val, !mcsema_real_eip !90
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 66), i64* %RDI_val, !mcsema_real_eip !91
  %659 = load i64* %RBP_val, !mcsema_real_eip !92
  %660 = add i64 %659, -64, !mcsema_real_eip !92
  %661 = inttoptr i64 %660 to i64*, !mcsema_real_eip !92
  %662 = ptrtoint i64* %661 to i64, !mcsema_real_eip !92
  store i64 %662, i64* %RSI_val, !mcsema_real_eip !92
  %663 = add i64 %659, -108, !mcsema_real_eip !93
  %664 = inttoptr i64 %663 to i64*, !mcsema_real_eip !93
  %665 = load i64* %RAX_val, !mcsema_real_eip !93
  %666 = trunc i64 %665 to i32, !mcsema_real_eip !93
  %667 = bitcast i64* %664 to i32*
  store i32 %666, i32* %667, !mcsema_real_eip !93
  %668 = load i64* %RDI_val, !mcsema_real_eip !94
  %669 = load i64* %RSI_val, !mcsema_real_eip !94
  %670 = tail call x86_64_sysvcc i64 @printf(i64 %668, i64 %669), !mcsema_real_eip !94
  store i64 0, i64* %RDI_val, !mcsema_real_eip !95
  %671 = load i64* %RBP_val, !mcsema_real_eip !96
  %672 = add i64 %671, -112, !mcsema_real_eip !96
  %673 = inttoptr i64 %672 to i64*, !mcsema_real_eip !96
  %674 = trunc i64 %670 to i32, !mcsema_real_eip !96
  %675 = bitcast i64* %673 to i32*
  store i32 %674, i32* %675, !mcsema_real_eip !96
  %676 = load i64* %RDI_val, !mcsema_real_eip !97
  %677 = tail call x86_64_sysvcc i64 @exit(i64 %676), !mcsema_real_eip !97
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !82
  %678 = load i64* %RBP_val, !mcsema_real_eip !83
  %679 = add i64 %678, -20, !mcsema_real_eip !83
  %680 = inttoptr i64 %679 to i64*, !mcsema_real_eip !83
  %681 = bitcast i64* %680 to i32*
  %682 = load i32* %681, !mcsema_real_eip !83
  %683 = sext i32 %682 to i64, !mcsema_real_eip !83
  store i64 %683, i64* %RCX_val, !mcsema_real_eip !83
  %684 = load i64* %RBP_val, !mcsema_real_eip !84
  %685 = add i64 %684, -24, !mcsema_real_eip !84
  %686 = inttoptr i64 %685 to i64*, !mcsema_real_eip !84
  %687 = bitcast i64* %686 to i32*
  %688 = load i32* %687, !mcsema_real_eip !84
  %689 = sext i32 %688 to i64, !mcsema_real_eip !84
  %690 = mul i64 %689, 11, !mcsema_real_eip !85
  store i64 %690, i64* %RDX_val, !mcsema_real_eip !85
  %691 = load i64* %RAX_val, !mcsema_real_eip !86
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %690, i64 %691)
  %692 = extractvalue { i64, i1 } %uadd352, 0
  %693 = xor i64 %692, %691, !mcsema_real_eip !86
  %694 = xor i64 %693, %690, !mcsema_real_eip !86
  %695 = and i64 %694, 16, !mcsema_real_eip !86
  %696 = icmp ne i64 %695, 0, !mcsema_real_eip !86
  store i1 %696, i1* %AF_val, !mcsema_real_eip !86
  %697 = icmp slt i64 %692, 0
  store i1 %697, i1* %SF_val, !mcsema_real_eip !86
  %698 = icmp eq i64 %692, 0, !mcsema_real_eip !86
  store i1 %698, i1* %ZF_val, !mcsema_real_eip !86
  %699 = xor i64 %691, -9223372036854775808, !mcsema_real_eip !86
  %700 = xor i64 %699, %690, !mcsema_real_eip !86
  %701 = and i64 %693, %700, !mcsema_real_eip !86
  %702 = icmp slt i64 %701, 0
  store i1 %702, i1* %OF_val, !mcsema_real_eip !86
  %703 = trunc i64 %692 to i8, !mcsema_real_eip !86
  %704 = tail call i8 @llvm.ctpop.i8(i8 %703), !mcsema_real_eip !86
  %705 = and i8 %704, 1
  %706 = icmp eq i8 %705, 0
  store i1 %706, i1* %PF_val, !mcsema_real_eip !86
  %707 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %707, i1* %CF_val, !mcsema_real_eip !86
  store i64 %692, i64* %RAX_val, !mcsema_real_eip !86
  %708 = load i64* %RCX_val, !mcsema_real_eip !87
  %709 = add i64 %708, %692, !mcsema_real_eip !87
  %710 = inttoptr i64 %709 to i64*, !mcsema_real_eip !87
  %711 = bitcast i64* %710 to i8*
  %712 = load i8* %711, !mcsema_real_eip !87
  %713 = sext i8 %712 to i32, !mcsema_real_eip !87
  %714 = zext i32 %713 to i64, !mcsema_real_eip !87
  store i64 %714, i64* %RSI_val, !mcsema_real_eip !87
  %715 = add nsw i32 %713, -32
  %716 = xor i32 %715, %713, !mcsema_real_eip !88
  %717 = and i32 %716, 16, !mcsema_real_eip !88
  %718 = icmp ne i32 %717, 0, !mcsema_real_eip !88
  store i1 %718, i1* %AF_val, !mcsema_real_eip !88
  %719 = trunc i32 %715 to i8, !mcsema_real_eip !88
  %720 = tail call i8 @llvm.ctpop.i8(i8 %719), !mcsema_real_eip !88
  %721 = and i8 %720, 1
  %722 = icmp eq i8 %721, 0
  store i1 %722, i1* %PF_val, !mcsema_real_eip !88
  %723 = icmp eq i32 %715, 0, !mcsema_real_eip !88
  store i1 %723, i1* %ZF_val, !mcsema_real_eip !88
  %724 = icmp slt i32 %715, 0
  store i1 %724, i1* %SF_val, !mcsema_real_eip !88
  %725 = icmp ult i8 %712, 32
  store i1 %725, i1* %CF_val, !mcsema_real_eip !88
  %726 = and i32 %716, %713, !mcsema_real_eip !88
  %727 = icmp slt i32 %726, 0
  store i1 %727, i1* %OF_val, !mcsema_real_eip !88
  %728 = load i1* %ZF_val, !mcsema_real_eip !89
  br i1 %728, label %block_0x317, label %block_0x2b8, !mcsema_real_eip !89

block_0x1e8:                                      ; preds = %block_0x17c
  %729 = load i64* %RBP_val, !mcsema_real_eip !98
  %730 = add i64 %729, -20, !mcsema_real_eip !98
  %731 = inttoptr i64 %730 to i64*, !mcsema_real_eip !98
  %732 = bitcast i64* %731 to i32*
  %733 = load i32* %732, !mcsema_real_eip !98
  %uadd370 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %733, i32 1)
  %734 = extractvalue { i32, i1 } %uadd370, 0
  %735 = xor i32 %734, %733, !mcsema_real_eip !99
  %736 = and i32 %735, 16, !mcsema_real_eip !99
  %737 = icmp ne i32 %736, 0, !mcsema_real_eip !99
  store i1 %737, i1* %AF_val, !mcsema_real_eip !99
  %738 = icmp slt i32 %734, 0
  store i1 %738, i1* %SF_val, !mcsema_real_eip !99
  %739 = icmp eq i32 %734, 0, !mcsema_real_eip !99
  store i1 %739, i1* %ZF_val, !mcsema_real_eip !99
  %740 = xor i32 %733, -2147483648, !mcsema_real_eip !99
  %741 = and i32 %735, %740, !mcsema_real_eip !99
  %742 = icmp slt i32 %741, 0
  store i1 %742, i1* %OF_val, !mcsema_real_eip !99
  %743 = trunc i32 %734 to i8, !mcsema_real_eip !99
  %744 = tail call i8 @llvm.ctpop.i8(i8 %743), !mcsema_real_eip !99
  %745 = and i8 %744, 1
  %746 = icmp eq i8 %745, 0
  store i1 %746, i1* %PF_val, !mcsema_real_eip !99
  %747 = extractvalue { i32, i1 } %uadd370, 1
  store i1 %747, i1* %CF_val, !mcsema_real_eip !99
  %748 = zext i32 %734 to i64, !mcsema_real_eip !99
  store i64 %748, i64* %RAX_val, !mcsema_real_eip !99
  %749 = load i64* %RBP_val, !mcsema_real_eip !100
  %750 = add i64 %749, -20, !mcsema_real_eip !100
  %751 = inttoptr i64 %750 to i64*, !mcsema_real_eip !100
  %752 = bitcast i64* %751 to i32*
  store i32 %734, i32* %752, !mcsema_real_eip !100
  br label %block_0x22a, !mcsema_real_eip !101

block_0x1b8:                                      ; preds = %block_0x1a4
  %753 = load i64* %RBP_val, !mcsema_real_eip !102
  %754 = add i64 %753, -24, !mcsema_real_eip !102
  %755 = inttoptr i64 %754 to i64*, !mcsema_real_eip !102
  %756 = bitcast i64* %755 to i32*
  %757 = load i32* %756, !mcsema_real_eip !102
  %uadd375 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %757, i32 -1)
  %758 = extractvalue { i32, i1 } %uadd375, 0
  %759 = xor i32 %758, %757, !mcsema_real_eip !103
  %760 = and i32 %759, 16
  %761 = icmp eq i32 %760, 0
  store i1 %761, i1* %AF_val, !mcsema_real_eip !103
  %762 = icmp slt i32 %758, 0
  store i1 %762, i1* %SF_val, !mcsema_real_eip !103
  %763 = icmp eq i32 %758, 0, !mcsema_real_eip !103
  store i1 %763, i1* %ZF_val, !mcsema_real_eip !103
  %764 = and i32 %759, %757, !mcsema_real_eip !103
  %765 = icmp slt i32 %764, 0
  store i1 %765, i1* %OF_val, !mcsema_real_eip !103
  %766 = trunc i32 %758 to i8, !mcsema_real_eip !103
  %767 = tail call i8 @llvm.ctpop.i8(i8 %766), !mcsema_real_eip !103
  %768 = and i8 %767, 1
  %769 = icmp eq i8 %768, 0
  store i1 %769, i1* %PF_val, !mcsema_real_eip !103
  %770 = extractvalue { i32, i1 } %uadd375, 1
  store i1 %770, i1* %CF_val, !mcsema_real_eip !103
  %771 = zext i32 %758 to i64, !mcsema_real_eip !103
  store i64 %771, i64* %RAX_val, !mcsema_real_eip !103
  %772 = load i64* %RBP_val, !mcsema_real_eip !104
  %773 = add i64 %772, -24, !mcsema_real_eip !104
  %774 = inttoptr i64 %773 to i64*, !mcsema_real_eip !104
  %775 = bitcast i64* %774 to i32*
  store i32 %758, i32* %775, !mcsema_real_eip !104
  br label %block_0x22a, !mcsema_real_eip !105

block_0x317:                                      ; preds = %block_0x2fe, %block_0x256, %block_0x28c
  %776 = load i64* %RBP_val, !mcsema_real_eip !106
  %777 = add i64 %776, -28, !mcsema_real_eip !106
  %778 = inttoptr i64 %777 to i64*, !mcsema_real_eip !106
  %779 = bitcast i64* %778 to i32*
  %780 = load i32* %779, !mcsema_real_eip !106
  %781 = zext i32 %780 to i64, !mcsema_real_eip !106
  store i64 %781, i64* %RAX_val, !mcsema_real_eip !106
  %782 = load i64* %RBP_val, !mcsema_real_eip !107
  %783 = add i64 %782, -20, !mcsema_real_eip !107
  %784 = inttoptr i64 %783 to i64*, !mcsema_real_eip !107
  %785 = bitcast i64* %784 to i32*
  %786 = load i32* %785, !mcsema_real_eip !107
  %787 = sub i32 %780, %786, !mcsema_real_eip !107
  %788 = xor i32 %787, %780, !mcsema_real_eip !107
  %789 = xor i32 %788, %786, !mcsema_real_eip !107
  %790 = and i32 %789, 16, !mcsema_real_eip !107
  %791 = icmp ne i32 %790, 0, !mcsema_real_eip !107
  store i1 %791, i1* %AF_val, !mcsema_real_eip !107
  %792 = trunc i32 %787 to i8, !mcsema_real_eip !107
  %793 = tail call i8 @llvm.ctpop.i8(i8 %792), !mcsema_real_eip !107
  %794 = and i8 %793, 1
  %795 = icmp eq i8 %794, 0
  store i1 %795, i1* %PF_val, !mcsema_real_eip !107
  %796 = icmp eq i32 %780, %786
  store i1 %796, i1* %ZF_val, !mcsema_real_eip !107
  %797 = icmp slt i32 %787, 0
  store i1 %797, i1* %SF_val, !mcsema_real_eip !107
  %798 = icmp ult i32 %780, %786, !mcsema_real_eip !107
  store i1 %798, i1* %CF_val, !mcsema_real_eip !107
  %799 = xor i32 %786, %780, !mcsema_real_eip !107
  %800 = and i32 %788, %799, !mcsema_real_eip !107
  %801 = icmp slt i32 %800, 0
  store i1 %801, i1* %OF_val, !mcsema_real_eip !107
  %802 = load i1* %ZF_val, !mcsema_real_eip !108
  br i1 %802, label %block_0x323, label %block_0x34d, !mcsema_real_eip !108

block_0x2b8:                                      ; preds = %block_0x256, %block_0x28c
  %803 = load i64* %RBP_val, !mcsema_real_eip !109
  %804 = add i64 %803, -24, !mcsema_real_eip !109
  %805 = inttoptr i64 %804 to i64*, !mcsema_real_eip !109
  %806 = bitcast i64* %805 to i32*
  %807 = load i32* %806, !mcsema_real_eip !109
  %808 = add i32 %807, -2
  %809 = xor i32 %808, %807, !mcsema_real_eip !109
  %810 = and i32 %809, 16, !mcsema_real_eip !109
  %811 = icmp ne i32 %810, 0, !mcsema_real_eip !109
  store i1 %811, i1* %AF_val, !mcsema_real_eip !109
  %812 = trunc i32 %808 to i8, !mcsema_real_eip !109
  %813 = tail call i8 @llvm.ctpop.i8(i8 %812), !mcsema_real_eip !109
  %814 = and i8 %813, 1
  %815 = icmp eq i8 %814, 0
  store i1 %815, i1* %PF_val, !mcsema_real_eip !109
  %816 = icmp eq i32 %808, 0, !mcsema_real_eip !109
  store i1 %816, i1* %ZF_val, !mcsema_real_eip !109
  %817 = icmp slt i32 %808, 0
  store i1 %817, i1* %SF_val, !mcsema_real_eip !109
  %818 = icmp ult i32 %807, 2, !mcsema_real_eip !109
  store i1 %818, i1* %CF_val, !mcsema_real_eip !109
  %819 = and i32 %809, %807, !mcsema_real_eip !109
  %820 = icmp slt i32 %819, 0
  store i1 %820, i1* %OF_val, !mcsema_real_eip !109
  %821 = load i1* %ZF_val, !mcsema_real_eip !110
  br i1 %821, label %block_0x2c5, label %block_0x30b, !mcsema_real_eip !110

block_0x30b:                                      ; preds = %block_0x2fe, %block_0x2f1, %block_0x2c5, %block_0x2b8
  %822 = load i64* %RBP_val, !mcsema_real_eip !111
  %823 = add i64 %822, -28, !mcsema_real_eip !111
  %824 = inttoptr i64 %823 to i64*, !mcsema_real_eip !111
  %825 = bitcast i64* %824 to i32*
  %826 = load i32* %825, !mcsema_real_eip !111
  %827 = zext i32 %826 to i64, !mcsema_real_eip !111
  store i64 %827, i64* %RAX_val, !mcsema_real_eip !111
  %828 = load i64* %RBP_val, !mcsema_real_eip !112
  %829 = add i64 %828, -20, !mcsema_real_eip !112
  %830 = inttoptr i64 %829 to i64*, !mcsema_real_eip !112
  %831 = bitcast i64* %830 to i32*
  store i32 %826, i32* %831, !mcsema_real_eip !112
  %832 = load i64* %RBP_val, !mcsema_real_eip !113
  %833 = add i64 %832, -32, !mcsema_real_eip !113
  %834 = inttoptr i64 %833 to i64*, !mcsema_real_eip !113
  %835 = bitcast i64* %834 to i32*
  %836 = load i32* %835, !mcsema_real_eip !113
  %837 = zext i32 %836 to i64, !mcsema_real_eip !113
  store i64 %837, i64* %RAX_val, !mcsema_real_eip !113
  %838 = load i64* %RBP_val, !mcsema_real_eip !114
  %839 = add i64 %838, -24, !mcsema_real_eip !114
  %840 = inttoptr i64 %839 to i64*, !mcsema_real_eip !114
  %841 = bitcast i64* %840 to i32*
  store i32 %836, i32* %841, !mcsema_real_eip !114
  %842 = load i64* %RBP_val, !mcsema_real_eip !106
  %843 = add i64 %842, -28, !mcsema_real_eip !106
  %844 = inttoptr i64 %843 to i64*, !mcsema_real_eip !106
  %845 = bitcast i64* %844 to i32*
  %846 = load i32* %845, !mcsema_real_eip !106
  %847 = zext i32 %846 to i64, !mcsema_real_eip !106
  store i64 %847, i64* %RAX_val, !mcsema_real_eip !106
  %848 = load i64* %RBP_val, !mcsema_real_eip !107
  %849 = add i64 %848, -20, !mcsema_real_eip !107
  %850 = inttoptr i64 %849 to i64*, !mcsema_real_eip !107
  %851 = bitcast i64* %850 to i32*
  %852 = load i32* %851, !mcsema_real_eip !107
  %853 = sub i32 %846, %852, !mcsema_real_eip !107
  %854 = xor i32 %853, %846, !mcsema_real_eip !107
  %855 = xor i32 %854, %852, !mcsema_real_eip !107
  %856 = and i32 %855, 16, !mcsema_real_eip !107
  %857 = icmp ne i32 %856, 0, !mcsema_real_eip !107
  store i1 %857, i1* %AF_val, !mcsema_real_eip !107
  %858 = trunc i32 %853 to i8, !mcsema_real_eip !107
  %859 = tail call i8 @llvm.ctpop.i8(i8 %858), !mcsema_real_eip !107
  %860 = and i8 %859, 1
  %861 = icmp eq i8 %860, 0
  store i1 %861, i1* %PF_val, !mcsema_real_eip !107
  %862 = icmp eq i32 %846, %852
  store i1 %862, i1* %ZF_val, !mcsema_real_eip !107
  %863 = icmp slt i32 %853, 0
  store i1 %863, i1* %SF_val, !mcsema_real_eip !107
  %864 = icmp ult i32 %846, %852, !mcsema_real_eip !107
  store i1 %864, i1* %CF_val, !mcsema_real_eip !107
  %865 = xor i32 %852, %846, !mcsema_real_eip !107
  %866 = and i32 %854, %865, !mcsema_real_eip !107
  %867 = icmp slt i32 %866, 0
  store i1 %867, i1* %OF_val, !mcsema_real_eip !107
  %868 = load i1* %ZF_val, !mcsema_real_eip !108
  br i1 %868, label %block_0x323, label %block_0x34d, !mcsema_real_eip !108

block_0x2c5:                                      ; preds = %block_0x2b8
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !115
  %869 = load i64* %RBP_val, !mcsema_real_eip !116
  %870 = add i64 %869, -20, !mcsema_real_eip !116
  %871 = inttoptr i64 %870 to i64*, !mcsema_real_eip !116
  %872 = bitcast i64* %871 to i32*
  %873 = load i32* %872, !mcsema_real_eip !116
  %874 = sext i32 %873 to i64, !mcsema_real_eip !116
  store i64 %874, i64* %RCX_val, !mcsema_real_eip !116
  %875 = load i64* %RBP_val, !mcsema_real_eip !117
  %876 = add i64 %875, -24, !mcsema_real_eip !117
  %877 = inttoptr i64 %876 to i64*, !mcsema_real_eip !117
  %878 = bitcast i64* %877 to i32*
  %879 = load i32* %878, !mcsema_real_eip !117
  %880 = sext i32 %879 to i64, !mcsema_real_eip !117
  %881 = mul i64 %880, 11, !mcsema_real_eip !118
  store i64 %881, i64* %RDX_val, !mcsema_real_eip !118
  %882 = load i64* %RAX_val, !mcsema_real_eip !119
  %uadd354 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %881, i64 %882)
  %883 = extractvalue { i64, i1 } %uadd354, 0
  %884 = xor i64 %883, %882, !mcsema_real_eip !119
  %885 = xor i64 %884, %881, !mcsema_real_eip !119
  %886 = and i64 %885, 16, !mcsema_real_eip !119
  %887 = icmp ne i64 %886, 0, !mcsema_real_eip !119
  store i1 %887, i1* %AF_val, !mcsema_real_eip !119
  %888 = icmp slt i64 %883, 0
  store i1 %888, i1* %SF_val, !mcsema_real_eip !119
  %889 = icmp eq i64 %883, 0, !mcsema_real_eip !119
  store i1 %889, i1* %ZF_val, !mcsema_real_eip !119
  %890 = xor i64 %882, -9223372036854775808, !mcsema_real_eip !119
  %891 = xor i64 %890, %881, !mcsema_real_eip !119
  %892 = and i64 %884, %891, !mcsema_real_eip !119
  %893 = icmp slt i64 %892, 0
  store i1 %893, i1* %OF_val, !mcsema_real_eip !119
  %894 = trunc i64 %883 to i8, !mcsema_real_eip !119
  %895 = tail call i8 @llvm.ctpop.i8(i8 %894), !mcsema_real_eip !119
  %896 = and i8 %895, 1
  %897 = icmp eq i8 %896, 0
  store i1 %897, i1* %PF_val, !mcsema_real_eip !119
  %898 = extractvalue { i64, i1 } %uadd354, 1
  store i1 %898, i1* %CF_val, !mcsema_real_eip !119
  store i64 %883, i64* %RAX_val, !mcsema_real_eip !119
  %899 = load i64* %RCX_val, !mcsema_real_eip !120
  %900 = add i64 %899, %883, !mcsema_real_eip !120
  %901 = inttoptr i64 %900 to i64*, !mcsema_real_eip !120
  %902 = bitcast i64* %901 to i8*
  %903 = load i8* %902, !mcsema_real_eip !120
  %904 = sext i8 %903 to i32, !mcsema_real_eip !120
  %905 = zext i32 %904 to i64, !mcsema_real_eip !120
  store i64 %905, i64* %RSI_val, !mcsema_real_eip !120
  %906 = add nsw i32 %904, -124
  %907 = xor i32 %906, %904, !mcsema_real_eip !121
  %908 = and i32 %907, 16
  %909 = icmp eq i32 %908, 0
  store i1 %909, i1* %AF_val, !mcsema_real_eip !121
  %910 = trunc i32 %906 to i8, !mcsema_real_eip !121
  %911 = tail call i8 @llvm.ctpop.i8(i8 %910), !mcsema_real_eip !121
  %912 = and i8 %911, 1
  %913 = icmp eq i8 %912, 0
  store i1 %913, i1* %PF_val, !mcsema_real_eip !121
  %914 = icmp eq i32 %906, 0, !mcsema_real_eip !121
  store i1 %914, i1* %ZF_val, !mcsema_real_eip !121
  %915 = icmp slt i32 %906, 0
  store i1 %915, i1* %SF_val, !mcsema_real_eip !121
  %916 = icmp ult i8 %903, 124
  store i1 %916, i1* %CF_val, !mcsema_real_eip !121
  %917 = and i32 %907, %904, !mcsema_real_eip !121
  %918 = icmp slt i32 %917, 0
  store i1 %918, i1* %OF_val, !mcsema_real_eip !121
  %919 = load i1* %ZF_val, !mcsema_real_eip !122
  br i1 %919, label %block_0x2f1, label %block_0x30b, !mcsema_real_eip !122

block_0x34d:                                      ; preds = %block_0x323, %block_0x30b, %block_0x317
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !123
  %920 = load i64* %RBP_val, !mcsema_real_eip !124
  %921 = add i64 %920, -20, !mcsema_real_eip !124
  %922 = inttoptr i64 %921 to i64*, !mcsema_real_eip !124
  %923 = bitcast i64* %922 to i32*
  %924 = load i32* %923, !mcsema_real_eip !124
  %925 = sext i32 %924 to i64, !mcsema_real_eip !124
  store i64 %925, i64* %RCX_val, !mcsema_real_eip !124
  %926 = load i64* %RBP_val, !mcsema_real_eip !125
  %927 = add i64 %926, -24, !mcsema_real_eip !125
  %928 = inttoptr i64 %927 to i64*, !mcsema_real_eip !125
  %929 = bitcast i64* %928 to i32*
  %930 = load i32* %929, !mcsema_real_eip !125
  %931 = sext i32 %930 to i64, !mcsema_real_eip !125
  %932 = mul i64 %931, 11, !mcsema_real_eip !126
  store i64 %932, i64* %RDX_val, !mcsema_real_eip !126
  %933 = load i64* %RAX_val, !mcsema_real_eip !127
  %uadd366 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %932, i64 %933)
  %934 = extractvalue { i64, i1 } %uadd366, 0
  %935 = xor i64 %934, %933, !mcsema_real_eip !127
  %936 = xor i64 %935, %932, !mcsema_real_eip !127
  %937 = and i64 %936, 16, !mcsema_real_eip !127
  %938 = icmp ne i64 %937, 0, !mcsema_real_eip !127
  store i1 %938, i1* %AF_val, !mcsema_real_eip !127
  %939 = icmp slt i64 %934, 0
  store i1 %939, i1* %SF_val, !mcsema_real_eip !127
  %940 = icmp eq i64 %934, 0, !mcsema_real_eip !127
  store i1 %940, i1* %ZF_val, !mcsema_real_eip !127
  %941 = xor i64 %933, -9223372036854775808, !mcsema_real_eip !127
  %942 = xor i64 %941, %932, !mcsema_real_eip !127
  %943 = and i64 %935, %942, !mcsema_real_eip !127
  %944 = icmp slt i64 %943, 0
  store i1 %944, i1* %OF_val, !mcsema_real_eip !127
  %945 = trunc i64 %934 to i8, !mcsema_real_eip !127
  %946 = tail call i8 @llvm.ctpop.i8(i8 %945), !mcsema_real_eip !127
  %947 = and i8 %946, 1
  %948 = icmp eq i8 %947, 0
  store i1 %948, i1* %PF_val, !mcsema_real_eip !127
  %949 = extractvalue { i64, i1 } %uadd366, 1
  store i1 %949, i1* %CF_val, !mcsema_real_eip !127
  store i64 %934, i64* %RAX_val, !mcsema_real_eip !127
  %950 = load i64* %RCX_val, !mcsema_real_eip !128
  %951 = add i64 %950, %934, !mcsema_real_eip !128
  %952 = inttoptr i64 %951 to i64*, !mcsema_real_eip !128
  %953 = bitcast i64* %952 to i8*
  store i8 88, i8* %953, !mcsema_real_eip !128
  %954 = load i64* %RSP_val, !mcsema_real_eip !129
  %955 = add i64 %954, -8
  %956 = inttoptr i64 %955 to i64*, !mcsema_real_eip !129
  store i64 -4981261766360305936, i64* %956, !mcsema_real_eip !129
  store i64 %955, i64* %RSP_val, !mcsema_real_eip !129
  %957 = load i64* %RAX_val, !mcsema_real_eip !129
  store i64 %957, i64* %RAX, !mcsema_real_eip !129
  %958 = load i64* %RBX_val, !mcsema_real_eip !129
  store i64 %958, i64* %RBX, !mcsema_real_eip !129
  %959 = load i64* %RCX_val, !mcsema_real_eip !129
  store i64 %959, i64* %RCX, !mcsema_real_eip !129
  %960 = load i64* %RDX_val, !mcsema_real_eip !129
  store i64 %960, i64* %RDX, !mcsema_real_eip !129
  %961 = load i64* %RSI_val, !mcsema_real_eip !129
  store i64 %961, i64* %RSI, !mcsema_real_eip !129
  %962 = load i64* %RDI_val, !mcsema_real_eip !129
  store i64 %962, i64* %RDI, !mcsema_real_eip !129
  %963 = load i64* %RSP_val, !mcsema_real_eip !129
  store i64 %963, i64* %RSP, !mcsema_real_eip !129
  %964 = load i64* %RBP_val, !mcsema_real_eip !129
  store i64 %964, i64* %RBP, !mcsema_real_eip !129
  %965 = load i64* %R8_val, !mcsema_real_eip !129
  store i64 %965, i64* %R8, !mcsema_real_eip !129
  %966 = load i64* %R9_val, !mcsema_real_eip !129
  store i64 %966, i64* %R9, !mcsema_real_eip !129
  %967 = load i64* %R10_val, !mcsema_real_eip !129
  store i64 %967, i64* %R10, !mcsema_real_eip !129
  %968 = load i64* %R11_val, !mcsema_real_eip !129
  store i64 %968, i64* %R11, !mcsema_real_eip !129
  %969 = load i64* %R12_val, !mcsema_real_eip !129
  store i64 %969, i64* %R12, !mcsema_real_eip !129
  %970 = load i64* %R13_val, !mcsema_real_eip !129
  store i64 %970, i64* %R13, !mcsema_real_eip !129
  %971 = load i64* %R14_val, !mcsema_real_eip !129
  store i64 %971, i64* %R14, !mcsema_real_eip !129
  %972 = load i64* %R15_val, !mcsema_real_eip !129
  store i64 %972, i64* %R15, !mcsema_real_eip !129
  %973 = load i64* %RIP_val, !mcsema_real_eip !129
  store i64 %973, i64* %RIP, !mcsema_real_eip !129
  %974 = load i1* %CF_val, !mcsema_real_eip !129
  store i1 %974, i1* %CF, align 1, !mcsema_real_eip !129
  %975 = load i1* %PF_val, !mcsema_real_eip !129
  store i1 %975, i1* %PF, align 1, !mcsema_real_eip !129
  %976 = load i1* %AF_val, !mcsema_real_eip !129
  store i1 %976, i1* %AF, align 1, !mcsema_real_eip !129
  %977 = load i1* %ZF_val, !mcsema_real_eip !129
  store i1 %977, i1* %ZF, align 1, !mcsema_real_eip !129
  %978 = load i1* %SF_val, !mcsema_real_eip !129
  store i1 %978, i1* %SF, align 1, !mcsema_real_eip !129
  %979 = load i1* %OF_val, !mcsema_real_eip !129
  store i1 %979, i1* %OF, align 1, !mcsema_real_eip !129
  %980 = load i1* %DF_val, !mcsema_real_eip !129
  store i1 %980, i1* %DF, align 1, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !129
  %981 = load i1* %FPU_B_val, !mcsema_real_eip !129
  store i1 %981, i1* %FPU_B, align 1, !mcsema_real_eip !129
  %982 = load i1* %FPU_C3_val, !mcsema_real_eip !129
  store i1 %982, i1* %FPU_C3, align 1, !mcsema_real_eip !129
  %983 = load i3* %FPU_TOP_val, !mcsema_real_eip !129
  store i3 %983, i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  %984 = load i1* %FPU_C2_val, !mcsema_real_eip !129
  store i1 %984, i1* %FPU_C2, align 1, !mcsema_real_eip !129
  %985 = load i1* %FPU_C1_val, !mcsema_real_eip !129
  store i1 %985, i1* %FPU_C1, align 1, !mcsema_real_eip !129
  %986 = load i1* %FPU_C0_val, !mcsema_real_eip !129
  store i1 %986, i1* %FPU_C0, align 1, !mcsema_real_eip !129
  %987 = load i1* %FPU_ES_val, !mcsema_real_eip !129
  store i1 %987, i1* %FPU_ES, align 1, !mcsema_real_eip !129
  %988 = load i1* %FPU_SF_val, !mcsema_real_eip !129
  store i1 %988, i1* %FPU_SF, align 1, !mcsema_real_eip !129
  %989 = load i1* %FPU_PE_val, !mcsema_real_eip !129
  store i1 %989, i1* %FPU_PE, align 1, !mcsema_real_eip !129
  %990 = load i1* %FPU_UE_val, !mcsema_real_eip !129
  store i1 %990, i1* %FPU_UE, align 1, !mcsema_real_eip !129
  %991 = load i1* %FPU_OE_val, !mcsema_real_eip !129
  store i1 %991, i1* %FPU_OE, align 1, !mcsema_real_eip !129
  %992 = load i1* %FPU_ZE_val, !mcsema_real_eip !129
  store i1 %992, i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  %993 = load i1* %FPU_DE_val, !mcsema_real_eip !129
  store i1 %993, i1* %FPU_DE, align 1, !mcsema_real_eip !129
  %994 = load i1* %FPU_IE_val, !mcsema_real_eip !129
  store i1 %994, i1* %FPU_IE, align 1, !mcsema_real_eip !129
  %995 = load i1* %FPU_X_val, !mcsema_real_eip !129
  store i1 %995, i1* %FPU_X, align 1, !mcsema_real_eip !129
  %996 = load i2* %FPU_RC_val, !mcsema_real_eip !129
  store i2 %996, i2* %FPU_RC, align 1, !mcsema_real_eip !129
  %997 = load i2* %FPU_PC_val, !mcsema_real_eip !129
  store i2 %997, i2* %FPU_PC, align 1, !mcsema_real_eip !129
  %998 = load i1* %FPU_PM_val, !mcsema_real_eip !129
  store i1 %998, i1* %FPU_PM, align 1, !mcsema_real_eip !129
  %999 = load i1* %FPU_UM_val, !mcsema_real_eip !129
  store i1 %999, i1* %FPU_UM, align 1, !mcsema_real_eip !129
  %1000 = load i1* %FPU_OM_val, !mcsema_real_eip !129
  store i1 %1000, i1* %FPU_OM, align 1, !mcsema_real_eip !129
  %1001 = load i1* %FPU_ZM_val, !mcsema_real_eip !129
  store i1 %1001, i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  %1002 = load i1* %FPU_DM_val, !mcsema_real_eip !129
  store i1 %1002, i1* %FPU_DM, align 1, !mcsema_real_eip !129
  %1003 = load i1* %FPU_IM_val, !mcsema_real_eip !129
  store i1 %1003, i1* %FPU_IM, align 1, !mcsema_real_eip !129
  %1004 = load i64* %53, align 4
  store i64 %1004, i64* %52, align 4
  %1005 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  store i16 %1005, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  %1006 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  store i64 %1006, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !129
  %1007 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  store i16 %1007, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  %1008 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  store i64 %1008, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !129
  %1009 = load i128* %XMM0_val, !mcsema_real_eip !129
  store i128 %1009, i128* %XMM0, align 1, !mcsema_real_eip !129
  %1010 = load i128* %XMM1_val, !mcsema_real_eip !129
  store i128 %1010, i128* %XMM1, align 1, !mcsema_real_eip !129
  %1011 = load i128* %XMM2_val, !mcsema_real_eip !129
  store i128 %1011, i128* %XMM2, align 1, !mcsema_real_eip !129
  %1012 = load i128* %XMM3_val, !mcsema_real_eip !129
  store i128 %1012, i128* %XMM3, align 1, !mcsema_real_eip !129
  %1013 = load i128* %XMM4_val, !mcsema_real_eip !129
  store i128 %1013, i128* %XMM4, align 1, !mcsema_real_eip !129
  %1014 = load i128* %XMM5_val, !mcsema_real_eip !129
  store i128 %1014, i128* %XMM5, align 1, !mcsema_real_eip !129
  %1015 = load i128* %XMM6_val, !mcsema_real_eip !129
  store i128 %1015, i128* %XMM6, align 1, !mcsema_real_eip !129
  %1016 = load i128* %XMM7_val, !mcsema_real_eip !129
  store i128 %1016, i128* %XMM7, align 1, !mcsema_real_eip !129
  %1017 = load i128* %XMM8_val, !mcsema_real_eip !129
  store i128 %1017, i128* %XMM8, align 1, !mcsema_real_eip !129
  %1018 = load i128* %XMM9_val, !mcsema_real_eip !129
  store i128 %1018, i128* %XMM9, align 1, !mcsema_real_eip !129
  %1019 = load i128* %XMM10_val, !mcsema_real_eip !129
  store i128 %1019, i128* %XMM10, align 1, !mcsema_real_eip !129
  %1020 = load i128* %XMM11_val, !mcsema_real_eip !129
  store i128 %1020, i128* %XMM11, align 1, !mcsema_real_eip !129
  %1021 = load i128* %XMM12_val, !mcsema_real_eip !129
  store i128 %1021, i128* %XMM12, align 1, !mcsema_real_eip !129
  %1022 = load i128* %XMM13_val, !mcsema_real_eip !129
  store i128 %1022, i128* %XMM13, align 1, !mcsema_real_eip !129
  %1023 = load i128* %XMM14_val, !mcsema_real_eip !129
  store i128 %1023, i128* %XMM14, align 1, !mcsema_real_eip !129
  %1024 = load i128* %XMM15_val, !mcsema_real_eip !129
  store i128 %1024, i128* %XMM15, align 1, !mcsema_real_eip !129
  %1025 = load i64* %STACK_BASE_val, !mcsema_real_eip !129
  store i64 %1025, i64* %STACK_BASE, align 1, !mcsema_real_eip !129
  %1026 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 %1026, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !129
  call void @sub_01(%struct.regs* %0, i64 %_local_stack_end_)
  %1027 = load i64* %RAX, !mcsema_real_eip !129
  store i64 %1027, i64* %RAX_val, !mcsema_real_eip !129
  %1028 = load i64* %RBX, !mcsema_real_eip !129
  store i64 %1028, i64* %RBX_val, !mcsema_real_eip !129
  %1029 = load i64* %RCX, !mcsema_real_eip !129
  store i64 %1029, i64* %RCX_val, !mcsema_real_eip !129
  %1030 = load i64* %RDX, !mcsema_real_eip !129
  store i64 %1030, i64* %RDX_val, !mcsema_real_eip !129
  %1031 = load i64* %RSI, !mcsema_real_eip !129
  store i64 %1031, i64* %RSI_val, !mcsema_real_eip !129
  %1032 = load i64* %RDI, !mcsema_real_eip !129
  store i64 %1032, i64* %RDI_val, !mcsema_real_eip !129
  %1033 = load i64* %RSP, !mcsema_real_eip !129
  store i64 %1033, i64* %RSP_val, !mcsema_real_eip !129
  %1034 = load i64* %RBP, !mcsema_real_eip !129
  store i64 %1034, i64* %RBP_val, !mcsema_real_eip !129
  %1035 = load i64* %R8, !mcsema_real_eip !129
  store i64 %1035, i64* %R8_val, !mcsema_real_eip !129
  %1036 = load i64* %R9, !mcsema_real_eip !129
  store i64 %1036, i64* %R9_val, !mcsema_real_eip !129
  %1037 = load i64* %R10, !mcsema_real_eip !129
  store i64 %1037, i64* %R10_val, !mcsema_real_eip !129
  %1038 = load i64* %R11, !mcsema_real_eip !129
  store i64 %1038, i64* %R11_val, !mcsema_real_eip !129
  %1039 = load i64* %R12, !mcsema_real_eip !129
  store i64 %1039, i64* %R12_val, !mcsema_real_eip !129
  %1040 = load i64* %R13, !mcsema_real_eip !129
  store i64 %1040, i64* %R13_val, !mcsema_real_eip !129
  %1041 = load i64* %R14, !mcsema_real_eip !129
  store i64 %1041, i64* %R14_val, !mcsema_real_eip !129
  %1042 = load i64* %R15, !mcsema_real_eip !129
  store i64 %1042, i64* %R15_val, !mcsema_real_eip !129
  %1043 = load i64* %RIP, !mcsema_real_eip !129
  store i64 %1043, i64* %RIP_val, !mcsema_real_eip !129
  %1044 = load i1* %CF, align 1, !mcsema_real_eip !129
  store i1 %1044, i1* %CF_val, !mcsema_real_eip !129
  %1045 = load i1* %PF, align 1, !mcsema_real_eip !129
  store i1 %1045, i1* %PF_val, !mcsema_real_eip !129
  %1046 = load i1* %AF, align 1, !mcsema_real_eip !129
  store i1 %1046, i1* %AF_val, !mcsema_real_eip !129
  %1047 = load i1* %ZF, align 1, !mcsema_real_eip !129
  store i1 %1047, i1* %ZF_val, !mcsema_real_eip !129
  %1048 = load i1* %SF, align 1, !mcsema_real_eip !129
  store i1 %1048, i1* %SF_val, !mcsema_real_eip !129
  %1049 = load i1* %OF, align 1, !mcsema_real_eip !129
  store i1 %1049, i1* %OF_val, !mcsema_real_eip !129
  %1050 = load i1* %DF, align 1, !mcsema_real_eip !129
  store i1 %1050, i1* %DF_val, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !129
  %1051 = load i1* %FPU_B, align 1, !mcsema_real_eip !129
  store i1 %1051, i1* %FPU_B_val, !mcsema_real_eip !129
  %1052 = load i1* %FPU_C3, align 1, !mcsema_real_eip !129
  store i1 %1052, i1* %FPU_C3_val, !mcsema_real_eip !129
  %1053 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  store i3 %1053, i3* %FPU_TOP_val, !mcsema_real_eip !129
  %1054 = load i1* %FPU_C2, align 1, !mcsema_real_eip !129
  store i1 %1054, i1* %FPU_C2_val, !mcsema_real_eip !129
  %1055 = load i1* %FPU_C1, align 1, !mcsema_real_eip !129
  store i1 %1055, i1* %FPU_C1_val, !mcsema_real_eip !129
  %1056 = load i1* %FPU_C0, align 1, !mcsema_real_eip !129
  store i1 %1056, i1* %FPU_C0_val, !mcsema_real_eip !129
  %1057 = load i1* %FPU_ES, align 1, !mcsema_real_eip !129
  store i1 %1057, i1* %FPU_ES_val, !mcsema_real_eip !129
  %1058 = load i1* %FPU_SF, align 1, !mcsema_real_eip !129
  store i1 %1058, i1* %FPU_SF_val, !mcsema_real_eip !129
  %1059 = load i1* %FPU_PE, align 1, !mcsema_real_eip !129
  store i1 %1059, i1* %FPU_PE_val, !mcsema_real_eip !129
  %1060 = load i1* %FPU_UE, align 1, !mcsema_real_eip !129
  store i1 %1060, i1* %FPU_UE_val, !mcsema_real_eip !129
  %1061 = load i1* %FPU_OE, align 1, !mcsema_real_eip !129
  store i1 %1061, i1* %FPU_OE_val, !mcsema_real_eip !129
  %1062 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  store i1 %1062, i1* %FPU_ZE_val, !mcsema_real_eip !129
  %1063 = load i1* %FPU_DE, align 1, !mcsema_real_eip !129
  store i1 %1063, i1* %FPU_DE_val, !mcsema_real_eip !129
  %1064 = load i1* %FPU_IE, align 1, !mcsema_real_eip !129
  store i1 %1064, i1* %FPU_IE_val, !mcsema_real_eip !129
  %1065 = load i1* %FPU_X, align 1, !mcsema_real_eip !129
  store i1 %1065, i1* %FPU_X_val, !mcsema_real_eip !129
  %1066 = load i2* %FPU_RC, align 1, !mcsema_real_eip !129
  store i2 %1066, i2* %FPU_RC_val, !mcsema_real_eip !129
  %1067 = load i2* %FPU_PC, align 1, !mcsema_real_eip !129
  store i2 %1067, i2* %FPU_PC_val, !mcsema_real_eip !129
  %1068 = load i1* %FPU_PM, align 1, !mcsema_real_eip !129
  store i1 %1068, i1* %FPU_PM_val, !mcsema_real_eip !129
  %1069 = load i1* %FPU_UM, align 1, !mcsema_real_eip !129
  store i1 %1069, i1* %FPU_UM_val, !mcsema_real_eip !129
  %1070 = load i1* %FPU_OM, align 1, !mcsema_real_eip !129
  store i1 %1070, i1* %FPU_OM_val, !mcsema_real_eip !129
  %1071 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  store i1 %1071, i1* %FPU_ZM_val, !mcsema_real_eip !129
  %1072 = load i1* %FPU_DM, align 1, !mcsema_real_eip !129
  store i1 %1072, i1* %FPU_DM_val, !mcsema_real_eip !129
  %1073 = load i1* %FPU_IM, align 1, !mcsema_real_eip !129
  store i1 %1073, i1* %FPU_IM_val, !mcsema_real_eip !129
  %1074 = load i64* %52, align 4
  store i64 %1074, i64* %53, align 4
  %1075 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  store i16 %1075, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  %1076 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !129
  store i64 %1076, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  %1077 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  store i16 %1077, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  %1078 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !129
  store i64 %1078, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  %1079 = load i128* %XMM0, align 1, !mcsema_real_eip !129
  store i128 %1079, i128* %XMM0_val, !mcsema_real_eip !129
  %1080 = load i128* %XMM1, align 1, !mcsema_real_eip !129
  store i128 %1080, i128* %XMM1_val, !mcsema_real_eip !129
  %1081 = load i128* %XMM2, align 1, !mcsema_real_eip !129
  store i128 %1081, i128* %XMM2_val, !mcsema_real_eip !129
  %1082 = load i128* %XMM3, align 1, !mcsema_real_eip !129
  store i128 %1082, i128* %XMM3_val, !mcsema_real_eip !129
  %1083 = load i128* %XMM4, align 1, !mcsema_real_eip !129
  store i128 %1083, i128* %XMM4_val, !mcsema_real_eip !129
  %1084 = load i128* %XMM5, align 1, !mcsema_real_eip !129
  store i128 %1084, i128* %XMM5_val, !mcsema_real_eip !129
  %1085 = load i128* %XMM6, align 1, !mcsema_real_eip !129
  store i128 %1085, i128* %XMM6_val, !mcsema_real_eip !129
  %1086 = load i128* %XMM7, align 1, !mcsema_real_eip !129
  store i128 %1086, i128* %XMM7_val, !mcsema_real_eip !129
  %1087 = load i128* %XMM8, align 1, !mcsema_real_eip !129
  store i128 %1087, i128* %XMM8_val, !mcsema_real_eip !129
  %1088 = load i128* %XMM9, align 1, !mcsema_real_eip !129
  store i128 %1088, i128* %XMM9_val, !mcsema_real_eip !129
  %1089 = load i128* %XMM10, align 1, !mcsema_real_eip !129
  store i128 %1089, i128* %XMM10_val, !mcsema_real_eip !129
  %1090 = load i128* %XMM11, align 1, !mcsema_real_eip !129
  store i128 %1090, i128* %XMM11_val, !mcsema_real_eip !129
  %1091 = load i128* %XMM12, align 1, !mcsema_real_eip !129
  store i128 %1091, i128* %XMM12_val, !mcsema_real_eip !129
  %1092 = load i128* %XMM13, align 1, !mcsema_real_eip !129
  store i128 %1092, i128* %XMM13_val, !mcsema_real_eip !129
  %1093 = load i128* %XMM14, align 1, !mcsema_real_eip !129
  store i128 %1093, i128* %XMM14_val, !mcsema_real_eip !129
  %1094 = load i128* %XMM15, align 1, !mcsema_real_eip !129
  store i128 %1094, i128* %XMM15_val, !mcsema_real_eip !129
  %1095 = load i64* %STACK_BASE, !mcsema_real_eip !129
  store i64 %1095, i64* %STACK_BASE_val, !mcsema_real_eip !129
  %1096 = load i64* %STACK_LIMIT, !mcsema_real_eip !129
  store i64 %1096, i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 1, i64* %RDI_val, !mcsema_real_eip !130
  %1097 = load i64* %RBP_val, !mcsema_real_eip !131
  %1098 = add i64 %1097, -36, !mcsema_real_eip !131
  %1099 = inttoptr i64 %1098 to i64*, !mcsema_real_eip !131
  %1100 = bitcast i64* %1099 to i32*
  %1101 = load i32* %1100, !mcsema_real_eip !131
  %uadd367 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1101, i32 1)
  %1102 = extractvalue { i32, i1 } %uadd367, 0
  %1103 = xor i32 %1102, %1101, !mcsema_real_eip !132
  %1104 = and i32 %1103, 16, !mcsema_real_eip !132
  %1105 = icmp ne i32 %1104, 0, !mcsema_real_eip !132
  store i1 %1105, i1* %AF_val, !mcsema_real_eip !132
  %1106 = icmp slt i32 %1102, 0
  store i1 %1106, i1* %SF_val, !mcsema_real_eip !132
  %1107 = icmp eq i32 %1102, 0, !mcsema_real_eip !132
  store i1 %1107, i1* %ZF_val, !mcsema_real_eip !132
  %1108 = xor i32 %1101, -2147483648, !mcsema_real_eip !132
  %1109 = and i32 %1103, %1108, !mcsema_real_eip !132
  %1110 = icmp slt i32 %1109, 0
  store i1 %1110, i1* %OF_val, !mcsema_real_eip !132
  %1111 = trunc i32 %1102 to i8, !mcsema_real_eip !132
  %1112 = tail call i8 @llvm.ctpop.i8(i8 %1111), !mcsema_real_eip !132
  %1113 = and i8 %1112, 1
  %1114 = icmp eq i8 %1113, 0
  store i1 %1114, i1* %PF_val, !mcsema_real_eip !132
  %1115 = extractvalue { i32, i1 } %uadd367, 1
  store i1 %1115, i1* %CF_val, !mcsema_real_eip !132
  %1116 = zext i32 %1102 to i64, !mcsema_real_eip !132
  store i64 %1116, i64* %RSI_val, !mcsema_real_eip !132
  %1117 = load i64* %RBP_val, !mcsema_real_eip !133
  %1118 = add i64 %1117, -36, !mcsema_real_eip !133
  %1119 = inttoptr i64 %1118 to i64*, !mcsema_real_eip !133
  %1120 = bitcast i64* %1119 to i32*
  store i32 %1102, i32* %1120, !mcsema_real_eip !133
  %1121 = load i64* %RDI_val, !mcsema_real_eip !134
  %1122 = tail call x86_64_sysvcc i64 @sleep(i64 %1121), !mcsema_real_eip !134
  store i64 %1122, i64* %RAX_val, !mcsema_real_eip !134
  %1123 = load i64* %RBP_val, !mcsema_real_eip !135
  %1124 = add i64 %1123, -120, !mcsema_real_eip !135
  %1125 = inttoptr i64 %1124 to i64*, !mcsema_real_eip !135
  %1126 = trunc i64 %1122 to i32, !mcsema_real_eip !135
  %1127 = bitcast i64* %1125 to i32*
  store i32 %1126, i32* %1127, !mcsema_real_eip !135
  br label %block_0x130, !mcsema_real_eip !136

block_0x323:                                      ; preds = %block_0x30b, %block_0x317
  %1128 = load i64* %RBP_val, !mcsema_real_eip !137
  %1129 = add i64 %1128, -32, !mcsema_real_eip !137
  %1130 = inttoptr i64 %1129 to i64*, !mcsema_real_eip !137
  %1131 = bitcast i64* %1130 to i32*
  %1132 = load i32* %1131, !mcsema_real_eip !137
  %1133 = zext i32 %1132 to i64, !mcsema_real_eip !137
  store i64 %1133, i64* %RAX_val, !mcsema_real_eip !137
  %1134 = load i64* %RBP_val, !mcsema_real_eip !138
  %1135 = add i64 %1134, -24, !mcsema_real_eip !138
  %1136 = inttoptr i64 %1135 to i64*, !mcsema_real_eip !138
  %1137 = bitcast i64* %1136 to i32*
  %1138 = load i32* %1137, !mcsema_real_eip !138
  %1139 = sub i32 %1132, %1138, !mcsema_real_eip !138
  %1140 = xor i32 %1139, %1132, !mcsema_real_eip !138
  %1141 = xor i32 %1140, %1138, !mcsema_real_eip !138
  %1142 = and i32 %1141, 16, !mcsema_real_eip !138
  %1143 = icmp ne i32 %1142, 0, !mcsema_real_eip !138
  store i1 %1143, i1* %AF_val, !mcsema_real_eip !138
  %1144 = trunc i32 %1139 to i8, !mcsema_real_eip !138
  %1145 = tail call i8 @llvm.ctpop.i8(i8 %1144), !mcsema_real_eip !138
  %1146 = and i8 %1145, 1
  %1147 = icmp eq i8 %1146, 0
  store i1 %1147, i1* %PF_val, !mcsema_real_eip !138
  %1148 = icmp eq i32 %1132, %1138
  store i1 %1148, i1* %ZF_val, !mcsema_real_eip !138
  %1149 = icmp slt i32 %1139, 0
  store i1 %1149, i1* %SF_val, !mcsema_real_eip !138
  %1150 = icmp ult i32 %1132, %1138, !mcsema_real_eip !138
  store i1 %1150, i1* %CF_val, !mcsema_real_eip !138
  %1151 = xor i32 %1138, %1132, !mcsema_real_eip !138
  %1152 = and i32 %1140, %1151, !mcsema_real_eip !138
  %1153 = icmp slt i32 %1152, 0
  store i1 %1153, i1* %OF_val, !mcsema_real_eip !138
  %1154 = load i1* %ZF_val, !mcsema_real_eip !139
  br i1 %1154, label %block_0x32f, label %block_0x34d, !mcsema_real_eip !139

block_0x2f1:                                      ; preds = %block_0x2c5
  %1155 = load i64* %RBP_val, !mcsema_real_eip !140
  %1156 = add i64 %1155, -20, !mcsema_real_eip !140
  %1157 = inttoptr i64 %1156 to i64*, !mcsema_real_eip !140
  %1158 = bitcast i64* %1157 to i32*
  %1159 = load i32* %1158, !mcsema_real_eip !140
  store i1 false, i1* %AF_val, !mcsema_real_eip !140
  %1160 = trunc i32 %1159 to i8, !mcsema_real_eip !140
  %1161 = tail call i8 @llvm.ctpop.i8(i8 %1160), !mcsema_real_eip !140
  %1162 = and i8 %1161, 1
  %1163 = icmp eq i8 %1162, 0
  store i1 %1163, i1* %PF_val, !mcsema_real_eip !140
  %1164 = icmp eq i32 %1159, 0, !mcsema_real_eip !140
  store i1 %1164, i1* %ZF_val, !mcsema_real_eip !140
  %1165 = icmp slt i32 %1159, 0
  store i1 %1165, i1* %SF_val, !mcsema_real_eip !140
  store i1 false, i1* %CF_val, !mcsema_real_eip !140
  store i1 false, i1* %OF_val, !mcsema_real_eip !140
  %1166 = icmp slt i32 %1159, 1
  br i1 %1166, label %block_0x30b, label %block_0x2fe, !mcsema_real_eip !141

block_0x32f:                                      ; preds = %block_0x323
  %1167 = load i64* %RSI_val, !mcsema_real_eip !142
  %1168 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85), i64 %1167), !mcsema_real_eip !142
  store i64 4294967294, i64* %RDI_val, !mcsema_real_eip !143
  %1169 = load i64* %RBP_val, !mcsema_real_eip !144
  %1170 = add i64 %1169, -116, !mcsema_real_eip !144
  %1171 = inttoptr i64 %1170 to i64*, !mcsema_real_eip !144
  %1172 = trunc i64 %1168 to i32, !mcsema_real_eip !144
  %1173 = bitcast i64* %1171 to i32*
  store i32 %1172, i32* %1173, !mcsema_real_eip !144
  %1174 = load i64* %RDI_val, !mcsema_real_eip !145
  %1175 = tail call x86_64_sysvcc i64 @exit(i64 %1174), !mcsema_real_eip !145
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !123
  %1176 = load i64* %RBP_val, !mcsema_real_eip !124
  %1177 = add i64 %1176, -20, !mcsema_real_eip !124
  %1178 = inttoptr i64 %1177 to i64*, !mcsema_real_eip !124
  %1179 = bitcast i64* %1178 to i32*
  %1180 = load i32* %1179, !mcsema_real_eip !124
  %1181 = sext i32 %1180 to i64, !mcsema_real_eip !124
  store i64 %1181, i64* %RCX_val, !mcsema_real_eip !124
  %1182 = load i64* %RBP_val, !mcsema_real_eip !125
  %1183 = add i64 %1182, -24, !mcsema_real_eip !125
  %1184 = inttoptr i64 %1183 to i64*, !mcsema_real_eip !125
  %1185 = bitcast i64* %1184 to i32*
  %1186 = load i32* %1185, !mcsema_real_eip !125
  %1187 = sext i32 %1186 to i64, !mcsema_real_eip !125
  %1188 = mul i64 %1187, 11, !mcsema_real_eip !126
  store i64 %1188, i64* %RDX_val, !mcsema_real_eip !126
  %1189 = load i64* %RAX_val, !mcsema_real_eip !127
  %uadd362 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1188, i64 %1189)
  %1190 = extractvalue { i64, i1 } %uadd362, 0
  %1191 = xor i64 %1190, %1189, !mcsema_real_eip !127
  %1192 = xor i64 %1191, %1188, !mcsema_real_eip !127
  %1193 = and i64 %1192, 16, !mcsema_real_eip !127
  %1194 = icmp ne i64 %1193, 0, !mcsema_real_eip !127
  store i1 %1194, i1* %AF_val, !mcsema_real_eip !127
  %1195 = icmp slt i64 %1190, 0
  store i1 %1195, i1* %SF_val, !mcsema_real_eip !127
  %1196 = icmp eq i64 %1190, 0, !mcsema_real_eip !127
  store i1 %1196, i1* %ZF_val, !mcsema_real_eip !127
  %1197 = xor i64 %1189, -9223372036854775808, !mcsema_real_eip !127
  %1198 = xor i64 %1197, %1188, !mcsema_real_eip !127
  %1199 = and i64 %1191, %1198, !mcsema_real_eip !127
  %1200 = icmp slt i64 %1199, 0
  store i1 %1200, i1* %OF_val, !mcsema_real_eip !127
  %1201 = trunc i64 %1190 to i8, !mcsema_real_eip !127
  %1202 = tail call i8 @llvm.ctpop.i8(i8 %1201), !mcsema_real_eip !127
  %1203 = and i8 %1202, 1
  %1204 = icmp eq i8 %1203, 0
  store i1 %1204, i1* %PF_val, !mcsema_real_eip !127
  %1205 = extractvalue { i64, i1 } %uadd362, 1
  store i1 %1205, i1* %CF_val, !mcsema_real_eip !127
  store i64 %1190, i64* %RAX_val, !mcsema_real_eip !127
  %1206 = load i64* %RCX_val, !mcsema_real_eip !128
  %1207 = add i64 %1206, %1190, !mcsema_real_eip !128
  %1208 = inttoptr i64 %1207 to i64*, !mcsema_real_eip !128
  %1209 = bitcast i64* %1208 to i8*
  store i8 88, i8* %1209, !mcsema_real_eip !128
  %1210 = load i64* %RSP_val, !mcsema_real_eip !129
  %1211 = add i64 %1210, -8
  %1212 = inttoptr i64 %1211 to i64*, !mcsema_real_eip !129
  store i64 -4981261766360305936, i64* %1212, !mcsema_real_eip !129
  store i64 %1211, i64* %RSP_val, !mcsema_real_eip !129
  %1213 = load i64* %RAX_val, !mcsema_real_eip !129
  store i64 %1213, i64* %RAX, !mcsema_real_eip !129
  %1214 = load i64* %RBX_val, !mcsema_real_eip !129
  store i64 %1214, i64* %RBX, !mcsema_real_eip !129
  %1215 = load i64* %RCX_val, !mcsema_real_eip !129
  store i64 %1215, i64* %RCX, !mcsema_real_eip !129
  %1216 = load i64* %RDX_val, !mcsema_real_eip !129
  store i64 %1216, i64* %RDX, !mcsema_real_eip !129
  %1217 = load i64* %RSI_val, !mcsema_real_eip !129
  store i64 %1217, i64* %RSI, !mcsema_real_eip !129
  %1218 = load i64* %RDI_val, !mcsema_real_eip !129
  store i64 %1218, i64* %RDI, !mcsema_real_eip !129
  %1219 = load i64* %RSP_val, !mcsema_real_eip !129
  store i64 %1219, i64* %RSP, !mcsema_real_eip !129
  %1220 = load i64* %RBP_val, !mcsema_real_eip !129
  store i64 %1220, i64* %RBP, !mcsema_real_eip !129
  %1221 = load i64* %R8_val, !mcsema_real_eip !129
  store i64 %1221, i64* %R8, !mcsema_real_eip !129
  %1222 = load i64* %R9_val, !mcsema_real_eip !129
  store i64 %1222, i64* %R9, !mcsema_real_eip !129
  %1223 = load i64* %R10_val, !mcsema_real_eip !129
  store i64 %1223, i64* %R10, !mcsema_real_eip !129
  %1224 = load i64* %R11_val, !mcsema_real_eip !129
  store i64 %1224, i64* %R11, !mcsema_real_eip !129
  %1225 = load i64* %R12_val, !mcsema_real_eip !129
  store i64 %1225, i64* %R12, !mcsema_real_eip !129
  %1226 = load i64* %R13_val, !mcsema_real_eip !129
  store i64 %1226, i64* %R13, !mcsema_real_eip !129
  %1227 = load i64* %R14_val, !mcsema_real_eip !129
  store i64 %1227, i64* %R14, !mcsema_real_eip !129
  %1228 = load i64* %R15_val, !mcsema_real_eip !129
  store i64 %1228, i64* %R15, !mcsema_real_eip !129
  %1229 = load i64* %RIP_val, !mcsema_real_eip !129
  store i64 %1229, i64* %RIP, !mcsema_real_eip !129
  %1230 = load i1* %CF_val, !mcsema_real_eip !129
  store i1 %1230, i1* %CF, align 1, !mcsema_real_eip !129
  %1231 = load i1* %PF_val, !mcsema_real_eip !129
  store i1 %1231, i1* %PF, align 1, !mcsema_real_eip !129
  %1232 = load i1* %AF_val, !mcsema_real_eip !129
  store i1 %1232, i1* %AF, align 1, !mcsema_real_eip !129
  %1233 = load i1* %ZF_val, !mcsema_real_eip !129
  store i1 %1233, i1* %ZF, align 1, !mcsema_real_eip !129
  %1234 = load i1* %SF_val, !mcsema_real_eip !129
  store i1 %1234, i1* %SF, align 1, !mcsema_real_eip !129
  %1235 = load i1* %OF_val, !mcsema_real_eip !129
  store i1 %1235, i1* %OF, align 1, !mcsema_real_eip !129
  %1236 = load i1* %DF_val, !mcsema_real_eip !129
  store i1 %1236, i1* %DF, align 1, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !129
  %1237 = load i1* %FPU_B_val, !mcsema_real_eip !129
  store i1 %1237, i1* %FPU_B, align 1, !mcsema_real_eip !129
  %1238 = load i1* %FPU_C3_val, !mcsema_real_eip !129
  store i1 %1238, i1* %FPU_C3, align 1, !mcsema_real_eip !129
  %1239 = load i3* %FPU_TOP_val, !mcsema_real_eip !129
  store i3 %1239, i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  %1240 = load i1* %FPU_C2_val, !mcsema_real_eip !129
  store i1 %1240, i1* %FPU_C2, align 1, !mcsema_real_eip !129
  %1241 = load i1* %FPU_C1_val, !mcsema_real_eip !129
  store i1 %1241, i1* %FPU_C1, align 1, !mcsema_real_eip !129
  %1242 = load i1* %FPU_C0_val, !mcsema_real_eip !129
  store i1 %1242, i1* %FPU_C0, align 1, !mcsema_real_eip !129
  %1243 = load i1* %FPU_ES_val, !mcsema_real_eip !129
  store i1 %1243, i1* %FPU_ES, align 1, !mcsema_real_eip !129
  %1244 = load i1* %FPU_SF_val, !mcsema_real_eip !129
  store i1 %1244, i1* %FPU_SF, align 1, !mcsema_real_eip !129
  %1245 = load i1* %FPU_PE_val, !mcsema_real_eip !129
  store i1 %1245, i1* %FPU_PE, align 1, !mcsema_real_eip !129
  %1246 = load i1* %FPU_UE_val, !mcsema_real_eip !129
  store i1 %1246, i1* %FPU_UE, align 1, !mcsema_real_eip !129
  %1247 = load i1* %FPU_OE_val, !mcsema_real_eip !129
  store i1 %1247, i1* %FPU_OE, align 1, !mcsema_real_eip !129
  %1248 = load i1* %FPU_ZE_val, !mcsema_real_eip !129
  store i1 %1248, i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  %1249 = load i1* %FPU_DE_val, !mcsema_real_eip !129
  store i1 %1249, i1* %FPU_DE, align 1, !mcsema_real_eip !129
  %1250 = load i1* %FPU_IE_val, !mcsema_real_eip !129
  store i1 %1250, i1* %FPU_IE, align 1, !mcsema_real_eip !129
  %1251 = load i1* %FPU_X_val, !mcsema_real_eip !129
  store i1 %1251, i1* %FPU_X, align 1, !mcsema_real_eip !129
  %1252 = load i2* %FPU_RC_val, !mcsema_real_eip !129
  store i2 %1252, i2* %FPU_RC, align 1, !mcsema_real_eip !129
  %1253 = load i2* %FPU_PC_val, !mcsema_real_eip !129
  store i2 %1253, i2* %FPU_PC, align 1, !mcsema_real_eip !129
  %1254 = load i1* %FPU_PM_val, !mcsema_real_eip !129
  store i1 %1254, i1* %FPU_PM, align 1, !mcsema_real_eip !129
  %1255 = load i1* %FPU_UM_val, !mcsema_real_eip !129
  store i1 %1255, i1* %FPU_UM, align 1, !mcsema_real_eip !129
  %1256 = load i1* %FPU_OM_val, !mcsema_real_eip !129
  store i1 %1256, i1* %FPU_OM, align 1, !mcsema_real_eip !129
  %1257 = load i1* %FPU_ZM_val, !mcsema_real_eip !129
  store i1 %1257, i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  %1258 = load i1* %FPU_DM_val, !mcsema_real_eip !129
  store i1 %1258, i1* %FPU_DM, align 1, !mcsema_real_eip !129
  %1259 = load i1* %FPU_IM_val, !mcsema_real_eip !129
  store i1 %1259, i1* %FPU_IM, align 1, !mcsema_real_eip !129
  %1260 = load i64* %53, align 4
  store i64 %1260, i64* %52, align 4
  %1261 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  store i16 %1261, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  %1262 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  store i64 %1262, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !129
  %1263 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  store i16 %1263, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  %1264 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  store i64 %1264, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !129
  %1265 = load i128* %XMM0_val, !mcsema_real_eip !129
  store i128 %1265, i128* %XMM0, align 1, !mcsema_real_eip !129
  %1266 = load i128* %XMM1_val, !mcsema_real_eip !129
  store i128 %1266, i128* %XMM1, align 1, !mcsema_real_eip !129
  %1267 = load i128* %XMM2_val, !mcsema_real_eip !129
  store i128 %1267, i128* %XMM2, align 1, !mcsema_real_eip !129
  %1268 = load i128* %XMM3_val, !mcsema_real_eip !129
  store i128 %1268, i128* %XMM3, align 1, !mcsema_real_eip !129
  %1269 = load i128* %XMM4_val, !mcsema_real_eip !129
  store i128 %1269, i128* %XMM4, align 1, !mcsema_real_eip !129
  %1270 = load i128* %XMM5_val, !mcsema_real_eip !129
  store i128 %1270, i128* %XMM5, align 1, !mcsema_real_eip !129
  %1271 = load i128* %XMM6_val, !mcsema_real_eip !129
  store i128 %1271, i128* %XMM6, align 1, !mcsema_real_eip !129
  %1272 = load i128* %XMM7_val, !mcsema_real_eip !129
  store i128 %1272, i128* %XMM7, align 1, !mcsema_real_eip !129
  %1273 = load i128* %XMM8_val, !mcsema_real_eip !129
  store i128 %1273, i128* %XMM8, align 1, !mcsema_real_eip !129
  %1274 = load i128* %XMM9_val, !mcsema_real_eip !129
  store i128 %1274, i128* %XMM9, align 1, !mcsema_real_eip !129
  %1275 = load i128* %XMM10_val, !mcsema_real_eip !129
  store i128 %1275, i128* %XMM10, align 1, !mcsema_real_eip !129
  %1276 = load i128* %XMM11_val, !mcsema_real_eip !129
  store i128 %1276, i128* %XMM11, align 1, !mcsema_real_eip !129
  %1277 = load i128* %XMM12_val, !mcsema_real_eip !129
  store i128 %1277, i128* %XMM12, align 1, !mcsema_real_eip !129
  %1278 = load i128* %XMM13_val, !mcsema_real_eip !129
  store i128 %1278, i128* %XMM13, align 1, !mcsema_real_eip !129
  %1279 = load i128* %XMM14_val, !mcsema_real_eip !129
  store i128 %1279, i128* %XMM14, align 1, !mcsema_real_eip !129
  %1280 = load i128* %XMM15_val, !mcsema_real_eip !129
  store i128 %1280, i128* %XMM15, align 1, !mcsema_real_eip !129
  %1281 = load i64* %STACK_BASE_val, !mcsema_real_eip !129
  store i64 %1281, i64* %STACK_BASE, align 1, !mcsema_real_eip !129
  %1282 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 %1282, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !129
  call void @sub_02(%struct.regs* %0, i64 %_local_stack_end_)
  %1283 = load i64* %RAX, !mcsema_real_eip !129
  store i64 %1283, i64* %RAX_val, !mcsema_real_eip !129
  %1284 = load i64* %RBX, !mcsema_real_eip !129
  store i64 %1284, i64* %RBX_val, !mcsema_real_eip !129
  %1285 = load i64* %RCX, !mcsema_real_eip !129
  store i64 %1285, i64* %RCX_val, !mcsema_real_eip !129
  %1286 = load i64* %RDX, !mcsema_real_eip !129
  store i64 %1286, i64* %RDX_val, !mcsema_real_eip !129
  %1287 = load i64* %RSI, !mcsema_real_eip !129
  store i64 %1287, i64* %RSI_val, !mcsema_real_eip !129
  %1288 = load i64* %RDI, !mcsema_real_eip !129
  store i64 %1288, i64* %RDI_val, !mcsema_real_eip !129
  %1289 = load i64* %RSP, !mcsema_real_eip !129
  store i64 %1289, i64* %RSP_val, !mcsema_real_eip !129
  %1290 = load i64* %RBP, !mcsema_real_eip !129
  store i64 %1290, i64* %RBP_val, !mcsema_real_eip !129
  %1291 = load i64* %R8, !mcsema_real_eip !129
  store i64 %1291, i64* %R8_val, !mcsema_real_eip !129
  %1292 = load i64* %R9, !mcsema_real_eip !129
  store i64 %1292, i64* %R9_val, !mcsema_real_eip !129
  %1293 = load i64* %R10, !mcsema_real_eip !129
  store i64 %1293, i64* %R10_val, !mcsema_real_eip !129
  %1294 = load i64* %R11, !mcsema_real_eip !129
  store i64 %1294, i64* %R11_val, !mcsema_real_eip !129
  %1295 = load i64* %R12, !mcsema_real_eip !129
  store i64 %1295, i64* %R12_val, !mcsema_real_eip !129
  %1296 = load i64* %R13, !mcsema_real_eip !129
  store i64 %1296, i64* %R13_val, !mcsema_real_eip !129
  %1297 = load i64* %R14, !mcsema_real_eip !129
  store i64 %1297, i64* %R14_val, !mcsema_real_eip !129
  %1298 = load i64* %R15, !mcsema_real_eip !129
  store i64 %1298, i64* %R15_val, !mcsema_real_eip !129
  %1299 = load i64* %RIP, !mcsema_real_eip !129
  store i64 %1299, i64* %RIP_val, !mcsema_real_eip !129
  %1300 = load i1* %CF, align 1, !mcsema_real_eip !129
  store i1 %1300, i1* %CF_val, !mcsema_real_eip !129
  %1301 = load i1* %PF, align 1, !mcsema_real_eip !129
  store i1 %1301, i1* %PF_val, !mcsema_real_eip !129
  %1302 = load i1* %AF, align 1, !mcsema_real_eip !129
  store i1 %1302, i1* %AF_val, !mcsema_real_eip !129
  %1303 = load i1* %ZF, align 1, !mcsema_real_eip !129
  store i1 %1303, i1* %ZF_val, !mcsema_real_eip !129
  %1304 = load i1* %SF, align 1, !mcsema_real_eip !129
  store i1 %1304, i1* %SF_val, !mcsema_real_eip !129
  %1305 = load i1* %OF, align 1, !mcsema_real_eip !129
  store i1 %1305, i1* %OF_val, !mcsema_real_eip !129
  %1306 = load i1* %DF, align 1, !mcsema_real_eip !129
  store i1 %1306, i1* %DF_val, !mcsema_real_eip !129
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !129
  %1307 = load i1* %FPU_B, align 1, !mcsema_real_eip !129
  store i1 %1307, i1* %FPU_B_val, !mcsema_real_eip !129
  %1308 = load i1* %FPU_C3, align 1, !mcsema_real_eip !129
  store i1 %1308, i1* %FPU_C3_val, !mcsema_real_eip !129
  %1309 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !129
  store i3 %1309, i3* %FPU_TOP_val, !mcsema_real_eip !129
  %1310 = load i1* %FPU_C2, align 1, !mcsema_real_eip !129
  store i1 %1310, i1* %FPU_C2_val, !mcsema_real_eip !129
  %1311 = load i1* %FPU_C1, align 1, !mcsema_real_eip !129
  store i1 %1311, i1* %FPU_C1_val, !mcsema_real_eip !129
  %1312 = load i1* %FPU_C0, align 1, !mcsema_real_eip !129
  store i1 %1312, i1* %FPU_C0_val, !mcsema_real_eip !129
  %1313 = load i1* %FPU_ES, align 1, !mcsema_real_eip !129
  store i1 %1313, i1* %FPU_ES_val, !mcsema_real_eip !129
  %1314 = load i1* %FPU_SF, align 1, !mcsema_real_eip !129
  store i1 %1314, i1* %FPU_SF_val, !mcsema_real_eip !129
  %1315 = load i1* %FPU_PE, align 1, !mcsema_real_eip !129
  store i1 %1315, i1* %FPU_PE_val, !mcsema_real_eip !129
  %1316 = load i1* %FPU_UE, align 1, !mcsema_real_eip !129
  store i1 %1316, i1* %FPU_UE_val, !mcsema_real_eip !129
  %1317 = load i1* %FPU_OE, align 1, !mcsema_real_eip !129
  store i1 %1317, i1* %FPU_OE_val, !mcsema_real_eip !129
  %1318 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !129
  store i1 %1318, i1* %FPU_ZE_val, !mcsema_real_eip !129
  %1319 = load i1* %FPU_DE, align 1, !mcsema_real_eip !129
  store i1 %1319, i1* %FPU_DE_val, !mcsema_real_eip !129
  %1320 = load i1* %FPU_IE, align 1, !mcsema_real_eip !129
  store i1 %1320, i1* %FPU_IE_val, !mcsema_real_eip !129
  %1321 = load i1* %FPU_X, align 1, !mcsema_real_eip !129
  store i1 %1321, i1* %FPU_X_val, !mcsema_real_eip !129
  %1322 = load i2* %FPU_RC, align 1, !mcsema_real_eip !129
  store i2 %1322, i2* %FPU_RC_val, !mcsema_real_eip !129
  %1323 = load i2* %FPU_PC, align 1, !mcsema_real_eip !129
  store i2 %1323, i2* %FPU_PC_val, !mcsema_real_eip !129
  %1324 = load i1* %FPU_PM, align 1, !mcsema_real_eip !129
  store i1 %1324, i1* %FPU_PM_val, !mcsema_real_eip !129
  %1325 = load i1* %FPU_UM, align 1, !mcsema_real_eip !129
  store i1 %1325, i1* %FPU_UM_val, !mcsema_real_eip !129
  %1326 = load i1* %FPU_OM, align 1, !mcsema_real_eip !129
  store i1 %1326, i1* %FPU_OM_val, !mcsema_real_eip !129
  %1327 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !129
  store i1 %1327, i1* %FPU_ZM_val, !mcsema_real_eip !129
  %1328 = load i1* %FPU_DM, align 1, !mcsema_real_eip !129
  store i1 %1328, i1* %FPU_DM_val, !mcsema_real_eip !129
  %1329 = load i1* %FPU_IM, align 1, !mcsema_real_eip !129
  store i1 %1329, i1* %FPU_IM_val, !mcsema_real_eip !129
  %1330 = load i64* %52, align 4
  store i64 %1330, i64* %53, align 4
  %1331 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !129
  store i16 %1331, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !129
  %1332 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !129
  store i64 %1332, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !129
  %1333 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !129
  store i16 %1333, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !129
  %1334 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !129
  store i64 %1334, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !129
  %1335 = load i128* %XMM0, align 1, !mcsema_real_eip !129
  store i128 %1335, i128* %XMM0_val, !mcsema_real_eip !129
  %1336 = load i128* %XMM1, align 1, !mcsema_real_eip !129
  store i128 %1336, i128* %XMM1_val, !mcsema_real_eip !129
  %1337 = load i128* %XMM2, align 1, !mcsema_real_eip !129
  store i128 %1337, i128* %XMM2_val, !mcsema_real_eip !129
  %1338 = load i128* %XMM3, align 1, !mcsema_real_eip !129
  store i128 %1338, i128* %XMM3_val, !mcsema_real_eip !129
  %1339 = load i128* %XMM4, align 1, !mcsema_real_eip !129
  store i128 %1339, i128* %XMM4_val, !mcsema_real_eip !129
  %1340 = load i128* %XMM5, align 1, !mcsema_real_eip !129
  store i128 %1340, i128* %XMM5_val, !mcsema_real_eip !129
  %1341 = load i128* %XMM6, align 1, !mcsema_real_eip !129
  store i128 %1341, i128* %XMM6_val, !mcsema_real_eip !129
  %1342 = load i128* %XMM7, align 1, !mcsema_real_eip !129
  store i128 %1342, i128* %XMM7_val, !mcsema_real_eip !129
  %1343 = load i128* %XMM8, align 1, !mcsema_real_eip !129
  store i128 %1343, i128* %XMM8_val, !mcsema_real_eip !129
  %1344 = load i128* %XMM9, align 1, !mcsema_real_eip !129
  store i128 %1344, i128* %XMM9_val, !mcsema_real_eip !129
  %1345 = load i128* %XMM10, align 1, !mcsema_real_eip !129
  store i128 %1345, i128* %XMM10_val, !mcsema_real_eip !129
  %1346 = load i128* %XMM11, align 1, !mcsema_real_eip !129
  store i128 %1346, i128* %XMM11_val, !mcsema_real_eip !129
  %1347 = load i128* %XMM12, align 1, !mcsema_real_eip !129
  store i128 %1347, i128* %XMM12_val, !mcsema_real_eip !129
  %1348 = load i128* %XMM13, align 1, !mcsema_real_eip !129
  store i128 %1348, i128* %XMM13_val, !mcsema_real_eip !129
  %1349 = load i128* %XMM14, align 1, !mcsema_real_eip !129
  store i128 %1349, i128* %XMM14_val, !mcsema_real_eip !129
  %1350 = load i128* %XMM15, align 1, !mcsema_real_eip !129
  store i128 %1350, i128* %XMM15_val, !mcsema_real_eip !129
  %1351 = load i64* %STACK_BASE, !mcsema_real_eip !129
  store i64 %1351, i64* %STACK_BASE_val, !mcsema_real_eip !129
  %1352 = load i64* %STACK_LIMIT, !mcsema_real_eip !129
  store i64 %1352, i64* %STACK_LIMIT_val, !mcsema_real_eip !129
  store i64 1, i64* %RDI_val, !mcsema_real_eip !130
  %1353 = load i64* %RBP_val, !mcsema_real_eip !131
  %1354 = add i64 %1353, -36, !mcsema_real_eip !131
  %1355 = inttoptr i64 %1354 to i64*, !mcsema_real_eip !131
  %1356 = bitcast i64* %1355 to i32*
  %1357 = load i32* %1356, !mcsema_real_eip !131
  %uadd363 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1357, i32 1)
  %1358 = extractvalue { i32, i1 } %uadd363, 0
  %1359 = xor i32 %1358, %1357, !mcsema_real_eip !132
  %1360 = and i32 %1359, 16, !mcsema_real_eip !132
  %1361 = icmp ne i32 %1360, 0, !mcsema_real_eip !132
  store i1 %1361, i1* %AF_val, !mcsema_real_eip !132
  %1362 = icmp slt i32 %1358, 0
  store i1 %1362, i1* %SF_val, !mcsema_real_eip !132
  %1363 = icmp eq i32 %1358, 0, !mcsema_real_eip !132
  store i1 %1363, i1* %ZF_val, !mcsema_real_eip !132
  %1364 = xor i32 %1357, -2147483648, !mcsema_real_eip !132
  %1365 = and i32 %1359, %1364, !mcsema_real_eip !132
  %1366 = icmp slt i32 %1365, 0
  store i1 %1366, i1* %OF_val, !mcsema_real_eip !132
  %1367 = trunc i32 %1358 to i8, !mcsema_real_eip !132
  %1368 = tail call i8 @llvm.ctpop.i8(i8 %1367), !mcsema_real_eip !132
  %1369 = and i8 %1368, 1
  %1370 = icmp eq i8 %1369, 0
  store i1 %1370, i1* %PF_val, !mcsema_real_eip !132
  %1371 = extractvalue { i32, i1 } %uadd363, 1
  store i1 %1371, i1* %CF_val, !mcsema_real_eip !132
  %1372 = zext i32 %1358 to i64, !mcsema_real_eip !132
  store i64 %1372, i64* %RSI_val, !mcsema_real_eip !132
  %1373 = load i64* %RBP_val, !mcsema_real_eip !133
  %1374 = add i64 %1373, -36, !mcsema_real_eip !133
  %1375 = inttoptr i64 %1374 to i64*, !mcsema_real_eip !133
  %1376 = bitcast i64* %1375 to i32*
  store i32 %1358, i32* %1376, !mcsema_real_eip !133
  %1377 = load i64* %RDI_val, !mcsema_real_eip !134
  %1378 = tail call x86_64_sysvcc i64 @sleep(i64 %1377), !mcsema_real_eip !134
  store i64 %1378, i64* %RAX_val, !mcsema_real_eip !134
  %1379 = load i64* %RBP_val, !mcsema_real_eip !135
  %1380 = add i64 %1379, -120, !mcsema_real_eip !135
  %1381 = inttoptr i64 %1380 to i64*, !mcsema_real_eip !135
  %1382 = trunc i64 %1378 to i32, !mcsema_real_eip !135
  %1383 = bitcast i64* %1381 to i32*
  store i32 %1382, i32* %1383, !mcsema_real_eip !135
  br label %block_0x130, !mcsema_real_eip !136

block_0x130:                                      ; preds = %block_0x32f, %block_0x34d
  %1384 = load i64* %RBP_val, !mcsema_real_eip !24
  %1385 = add i64 %1384, -36, !mcsema_real_eip !24
  %1386 = inttoptr i64 %1385 to i64*, !mcsema_real_eip !24
  %1387 = bitcast i64* %1386 to i32*
  %1388 = load i32* %1387, !mcsema_real_eip !24
  %1389 = add i32 %1388, -28
  %1390 = xor i32 %1389, %1388, !mcsema_real_eip !24
  %1391 = and i32 %1390, 16
  %1392 = icmp eq i32 %1391, 0
  store i1 %1392, i1* %AF_val, !mcsema_real_eip !24
  %1393 = trunc i32 %1389 to i8, !mcsema_real_eip !24
  %1394 = tail call i8 @llvm.ctpop.i8(i8 %1393), !mcsema_real_eip !24
  %1395 = and i8 %1394, 1
  %1396 = icmp eq i8 %1395, 0
  store i1 %1396, i1* %PF_val, !mcsema_real_eip !24
  %1397 = icmp eq i32 %1389, 0, !mcsema_real_eip !24
  store i1 %1397, i1* %ZF_val, !mcsema_real_eip !24
  %1398 = icmp slt i32 %1389, 0
  store i1 %1398, i1* %SF_val, !mcsema_real_eip !24
  %1399 = icmp ult i32 %1388, 28, !mcsema_real_eip !24
  store i1 %1399, i1* %CF_val, !mcsema_real_eip !24
  %1400 = and i32 %1390, %1388, !mcsema_real_eip !24
  %1401 = icmp slt i32 %1400, 0
  store i1 %1401, i1* %OF_val, !mcsema_real_eip !24
  %tmp364 = xor i1 %1398, %1401
  br i1 %tmp364, label %block_0x13d, label %block_0x390.loopexit, !mcsema_real_eip !25

block_0x2fe:                                      ; preds = %block_0x2f1
  %1402 = load i64* %RBP_val, !mcsema_real_eip !146
  %1403 = add i64 %1402, -20, !mcsema_real_eip !146
  %1404 = inttoptr i64 %1403 to i64*, !mcsema_real_eip !146
  %1405 = bitcast i64* %1404 to i32*
  %1406 = load i32* %1405, !mcsema_real_eip !146
  %1407 = add i32 %1406, -11
  %1408 = xor i32 %1407, %1406, !mcsema_real_eip !146
  %1409 = and i32 %1408, 16, !mcsema_real_eip !146
  %1410 = icmp ne i32 %1409, 0, !mcsema_real_eip !146
  store i1 %1410, i1* %AF_val, !mcsema_real_eip !146
  %1411 = trunc i32 %1407 to i8, !mcsema_real_eip !146
  %1412 = tail call i8 @llvm.ctpop.i8(i8 %1411), !mcsema_real_eip !146
  %1413 = and i8 %1412, 1
  %1414 = icmp eq i8 %1413, 0
  store i1 %1414, i1* %PF_val, !mcsema_real_eip !146
  %1415 = icmp eq i32 %1407, 0, !mcsema_real_eip !146
  store i1 %1415, i1* %ZF_val, !mcsema_real_eip !146
  %1416 = icmp slt i32 %1407, 0
  store i1 %1416, i1* %SF_val, !mcsema_real_eip !146
  %1417 = icmp ult i32 %1406, 11, !mcsema_real_eip !146
  store i1 %1417, i1* %CF_val, !mcsema_real_eip !146
  %1418 = and i32 %1408, %1406, !mcsema_real_eip !146
  %1419 = icmp slt i32 %1418, 0
  store i1 %1419, i1* %OF_val, !mcsema_real_eip !146
  %1420 = xor i1 %1416, %1419
  br i1 %1420, label %block_0x317, label %block_0x30b, !mcsema_real_eip !147
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
  %116 = load i64* %RSI_val, !mcsema_real_eip !155
  %117 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64 %116), !mcsema_real_eip !155
  store i64 %117, i64* %RAX_val, !mcsema_real_eip !155
  %118 = load i64* %RBP_val, !mcsema_real_eip !156
  %119 = add i64 %118, -20, !mcsema_real_eip !156
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !156
  %121 = trunc i64 %117 to i32, !mcsema_real_eip !156
  %122 = bitcast i64* %120 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !156
  %123 = load i64* %RSP_val, !mcsema_real_eip !157
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %123, i64 32)
  %124 = extractvalue { i64, i1 } %uadd75, 0
  %125 = xor i64 %124, %123, !mcsema_real_eip !157
  %126 = and i64 %125, 16, !mcsema_real_eip !157
  %127 = icmp ne i64 %126, 0, !mcsema_real_eip !157
  store i1 %127, i1* %AF_val, !mcsema_real_eip !157
  %128 = icmp slt i64 %124, 0
  store i1 %128, i1* %SF_val, !mcsema_real_eip !157
  %129 = icmp eq i64 %124, 0, !mcsema_real_eip !157
  store i1 %129, i1* %ZF_val, !mcsema_real_eip !157
  %130 = xor i64 %123, -9223372036854775808, !mcsema_real_eip !157
  %131 = and i64 %125, %130, !mcsema_real_eip !157
  %132 = icmp slt i64 %131, 0
  store i1 %132, i1* %OF_val, !mcsema_real_eip !157
  %133 = trunc i64 %124 to i8, !mcsema_real_eip !157
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !157
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF_val, !mcsema_real_eip !157
  %137 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %137, i1* %CF_val, !mcsema_real_eip !157
  store i64 %124, i64* %RSP_val, !mcsema_real_eip !157
  %138 = inttoptr i64 %124 to i64*, !mcsema_real_eip !158
  %139 = load i64* %138, !mcsema_real_eip !158
  store i64 %139, i64* %RBP_val, !mcsema_real_eip !158
  %140 = add i64 %124, 16, !mcsema_real_eip !159
  store i64 %140, i64* %RSP_val, !mcsema_real_eip !159
  %141 = load i64* %RAX_val, !mcsema_real_eip !159
  store i64 %141, i64* %RAX, !mcsema_real_eip !159
  %142 = load i64* %RBX_val, !mcsema_real_eip !159
  store i64 %142, i64* %RBX, !mcsema_real_eip !159
  %143 = load i64* %RCX_val, !mcsema_real_eip !159
  store i64 %143, i64* %RCX, !mcsema_real_eip !159
  %144 = load i64* %RDX_val, !mcsema_real_eip !159
  store i64 %144, i64* %RDX, !mcsema_real_eip !159
  %145 = load i64* %RSI_val, !mcsema_real_eip !159
  store i64 %145, i64* %RSI, !mcsema_real_eip !159
  %146 = load i64* %RDI_val, !mcsema_real_eip !159
  store i64 %146, i64* %RDI, !mcsema_real_eip !159
  %147 = load i64* %RSP_val, !mcsema_real_eip !159
  store i64 %147, i64* %RSP, !mcsema_real_eip !159
  %148 = load i64* %RBP_val, !mcsema_real_eip !159
  store i64 %148, i64* %RBP, !mcsema_real_eip !159
  %149 = load i64* %R8_val, !mcsema_real_eip !159
  store i64 %149, i64* %R8, !mcsema_real_eip !159
  %150 = load i64* %R9_val, !mcsema_real_eip !159
  store i64 %150, i64* %R9, !mcsema_real_eip !159
  %151 = load i64* %R10_val, !mcsema_real_eip !159
  store i64 %151, i64* %R10, !mcsema_real_eip !159
  %152 = load i64* %R11_val, !mcsema_real_eip !159
  store i64 %152, i64* %R11, !mcsema_real_eip !159
  %153 = load i64* %R12_val, !mcsema_real_eip !159
  store i64 %153, i64* %R12, !mcsema_real_eip !159
  %154 = load i64* %R13_val, !mcsema_real_eip !159
  store i64 %154, i64* %R13, !mcsema_real_eip !159
  %155 = load i64* %R14_val, !mcsema_real_eip !159
  store i64 %155, i64* %R14, !mcsema_real_eip !159
  %156 = load i64* %R15_val, !mcsema_real_eip !159
  store i64 %156, i64* %R15, !mcsema_real_eip !159
  %157 = load i64* %RIP_val, !mcsema_real_eip !159
  store i64 %157, i64* %RIP, !mcsema_real_eip !159
  %158 = load i1* %CF_val, !mcsema_real_eip !159
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !159
  %159 = load i1* %PF_val, !mcsema_real_eip !159
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !159
  %160 = load i1* %AF_val, !mcsema_real_eip !159
  store i1 %160, i1* %AF, align 1, !mcsema_real_eip !159
  %161 = load i1* %ZF_val, !mcsema_real_eip !159
  store i1 %161, i1* %ZF, align 1, !mcsema_real_eip !159
  %162 = load i1* %SF_val, !mcsema_real_eip !159
  store i1 %162, i1* %SF, align 1, !mcsema_real_eip !159
  %163 = load i1* %OF_val, !mcsema_real_eip !159
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !159
  %164 = load i1* %DF_val, !mcsema_real_eip !159
  store i1 %164, i1* %DF, align 1, !mcsema_real_eip !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !159
  %165 = load i1* %FPU_B_val, !mcsema_real_eip !159
  store i1 %165, i1* %FPU_B, align 1, !mcsema_real_eip !159
  %166 = load i1* %FPU_C3_val, !mcsema_real_eip !159
  store i1 %166, i1* %FPU_C3, align 1, !mcsema_real_eip !159
  %167 = load i3* %FPU_TOP_val, !mcsema_real_eip !159
  store i3 %167, i3* %FPU_TOP, align 1, !mcsema_real_eip !159
  %168 = load i1* %FPU_C2_val, !mcsema_real_eip !159
  store i1 %168, i1* %FPU_C2, align 1, !mcsema_real_eip !159
  %169 = load i1* %FPU_C1_val, !mcsema_real_eip !159
  store i1 %169, i1* %FPU_C1, align 1, !mcsema_real_eip !159
  %170 = load i1* %FPU_C0_val, !mcsema_real_eip !159
  store i1 %170, i1* %FPU_C0, align 1, !mcsema_real_eip !159
  %171 = load i1* %FPU_ES_val, !mcsema_real_eip !159
  store i1 %171, i1* %FPU_ES, align 1, !mcsema_real_eip !159
  %172 = load i1* %FPU_SF_val, !mcsema_real_eip !159
  store i1 %172, i1* %FPU_SF, align 1, !mcsema_real_eip !159
  %173 = load i1* %FPU_PE_val, !mcsema_real_eip !159
  store i1 %173, i1* %FPU_PE, align 1, !mcsema_real_eip !159
  %174 = load i1* %FPU_UE_val, !mcsema_real_eip !159
  store i1 %174, i1* %FPU_UE, align 1, !mcsema_real_eip !159
  %175 = load i1* %FPU_OE_val, !mcsema_real_eip !159
  store i1 %175, i1* %FPU_OE, align 1, !mcsema_real_eip !159
  %176 = load i1* %FPU_ZE_val, !mcsema_real_eip !159
  store i1 %176, i1* %FPU_ZE, align 1, !mcsema_real_eip !159
  %177 = load i1* %FPU_DE_val, !mcsema_real_eip !159
  store i1 %177, i1* %FPU_DE, align 1, !mcsema_real_eip !159
  %178 = load i1* %FPU_IE_val, !mcsema_real_eip !159
  store i1 %178, i1* %FPU_IE, align 1, !mcsema_real_eip !159
  %179 = load i1* %FPU_X_val, !mcsema_real_eip !159
  store i1 %179, i1* %FPU_X, align 1, !mcsema_real_eip !159
  %180 = load i2* %FPU_RC_val, !mcsema_real_eip !159
  store i2 %180, i2* %FPU_RC, align 1, !mcsema_real_eip !159
  %181 = load i2* %FPU_PC_val, !mcsema_real_eip !159
  store i2 %181, i2* %FPU_PC, align 1, !mcsema_real_eip !159
  %182 = load i1* %FPU_PM_val, !mcsema_real_eip !159
  store i1 %182, i1* %FPU_PM, align 1, !mcsema_real_eip !159
  %183 = load i1* %FPU_UM_val, !mcsema_real_eip !159
  store i1 %183, i1* %FPU_UM, align 1, !mcsema_real_eip !159
  %184 = load i1* %FPU_OM_val, !mcsema_real_eip !159
  store i1 %184, i1* %FPU_OM, align 1, !mcsema_real_eip !159
  %185 = load i1* %FPU_ZM_val, !mcsema_real_eip !159
  store i1 %185, i1* %FPU_ZM, align 1, !mcsema_real_eip !159
  %186 = load i1* %FPU_DM_val, !mcsema_real_eip !159
  store i1 %186, i1* %FPU_DM, align 1, !mcsema_real_eip !159
  %187 = load i1* %FPU_IM_val, !mcsema_real_eip !159
  store i1 %187, i1* %FPU_IM, align 1, !mcsema_real_eip !159
  %188 = load i64* %53, align 4
  store i64 %188, i64* %52, align 4
  %189 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !159
  store i16 %189, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !159
  %190 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !159
  store i64 %190, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !159
  %191 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !159
  store i16 %191, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !159
  %192 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !159
  store i64 %192, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !159
  %193 = load i128* %XMM0_val, !mcsema_real_eip !159
  store i128 %193, i128* %XMM0, align 1, !mcsema_real_eip !159
  %194 = load i128* %XMM1_val, !mcsema_real_eip !159
  store i128 %194, i128* %XMM1, align 1, !mcsema_real_eip !159
  %195 = load i128* %XMM2_val, !mcsema_real_eip !159
  store i128 %195, i128* %XMM2, align 1, !mcsema_real_eip !159
  %196 = load i128* %XMM3_val, !mcsema_real_eip !159
  store i128 %196, i128* %XMM3, align 1, !mcsema_real_eip !159
  %197 = load i128* %XMM4_val, !mcsema_real_eip !159
  store i128 %197, i128* %XMM4, align 1, !mcsema_real_eip !159
  %198 = load i128* %XMM5_val, !mcsema_real_eip !159
  store i128 %198, i128* %XMM5, align 1, !mcsema_real_eip !159
  %199 = load i128* %XMM6_val, !mcsema_real_eip !159
  store i128 %199, i128* %XMM6, align 1, !mcsema_real_eip !159
  %200 = load i128* %XMM7_val, !mcsema_real_eip !159
  store i128 %200, i128* %XMM7, align 1, !mcsema_real_eip !159
  %201 = load i128* %XMM8_val, !mcsema_real_eip !159
  store i128 %201, i128* %XMM8, align 1, !mcsema_real_eip !159
  %202 = load i128* %XMM9_val, !mcsema_real_eip !159
  store i128 %202, i128* %XMM9, align 1, !mcsema_real_eip !159
  %203 = load i128* %XMM10_val, !mcsema_real_eip !159
  store i128 %203, i128* %XMM10, align 1, !mcsema_real_eip !159
  %204 = load i128* %XMM11_val, !mcsema_real_eip !159
  store i128 %204, i128* %XMM11, align 1, !mcsema_real_eip !159
  %205 = load i128* %XMM12_val, !mcsema_real_eip !159
  store i128 %205, i128* %XMM12, align 1, !mcsema_real_eip !159
  %206 = load i128* %XMM13_val, !mcsema_real_eip !159
  store i128 %206, i128* %XMM13, align 1, !mcsema_real_eip !159
  %207 = load i128* %XMM14_val, !mcsema_real_eip !159
  store i128 %207, i128* %XMM14, align 1, !mcsema_real_eip !159
  %208 = load i128* %XMM15_val, !mcsema_real_eip !159
  store i128 %208, i128* %XMM15, align 1, !mcsema_real_eip !159
  %209 = load i64* %STACK_BASE_val, !mcsema_real_eip !159
  store i64 %209, i64* %STACK_BASE, align 1, !mcsema_real_eip !159
  %210 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !159
  store i64 %210, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x1c:                                       ; preds = %block_0x74, %block_0x1c.preheader
  %211 = load i64* %RBP_val, !mcsema_real_eip !160
  %212 = add i64 %211, -8, !mcsema_real_eip !160
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !160
  %214 = bitcast i64* %213 to i32*
  store i32 0, i32* %214, !mcsema_real_eip !160
  %215 = load i64* %RBP_val, !mcsema_real_eip !161
  %216 = add i64 %215, -8, !mcsema_real_eip !161
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !161
  %218 = bitcast i64* %217 to i32*
  %219 = load i32* %218, !mcsema_real_eip !161
  %220 = add i32 %219, -11
  %221 = xor i32 %220, %219, !mcsema_real_eip !161
  %222 = and i32 %221, 16, !mcsema_real_eip !161
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !161
  store i1 %223, i1* %AF_val, !mcsema_real_eip !161
  %224 = trunc i32 %220 to i8, !mcsema_real_eip !161
  %225 = tail call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !161
  %226 = and i8 %225, 1
  %227 = icmp eq i8 %226, 0
  store i1 %227, i1* %PF_val, !mcsema_real_eip !161
  %228 = icmp eq i32 %220, 0, !mcsema_real_eip !161
  store i1 %228, i1* %ZF_val, !mcsema_real_eip !161
  %229 = icmp slt i32 %220, 0
  store i1 %229, i1* %SF_val, !mcsema_real_eip !161
  %230 = icmp ult i32 %219, 11, !mcsema_real_eip !161
  store i1 %230, i1* %CF_val, !mcsema_real_eip !161
  %231 = and i32 %221, %219, !mcsema_real_eip !161
  %232 = icmp slt i32 %231, 0
  store i1 %232, i1* %OF_val, !mcsema_real_eip !161
  %tmp70 = xor i1 %229, %232
  br i1 %tmp70, label %block_0x30.preheader, label %block_0x74, !mcsema_real_eip !162

block_0x30.preheader:                             ; preds = %block_0x1c
  br label %block_0x30

block_0x74.loopexit:                              ; preds = %block_0x30
  br label %block_0x74

block_0x74:                                       ; preds = %block_0x74.loopexit, %block_0x1c
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !163
  %233 = load i64* %RSI_val, !mcsema_real_eip !164
  %234 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64 %233), !mcsema_real_eip !164
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !164
  %235 = load i64* %RBP_val, !mcsema_real_eip !165
  %236 = add i64 %235, -16, !mcsema_real_eip !165
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !165
  %238 = trunc i64 %234 to i32, !mcsema_real_eip !165
  %239 = bitcast i64* %237 to i32*
  store i32 %238, i32* %239, !mcsema_real_eip !165
  %240 = load i64* %RBP_val, !mcsema_real_eip !166
  %241 = add i64 %240, -4, !mcsema_real_eip !166
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !166
  %243 = bitcast i64* %242 to i32*
  %244 = load i32* %243, !mcsema_real_eip !166
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %244, i32 1)
  %245 = extractvalue { i32, i1 } %uadd73, 0
  %246 = xor i32 %245, %244, !mcsema_real_eip !167
  %247 = and i32 %246, 16, !mcsema_real_eip !167
  %248 = icmp ne i32 %247, 0, !mcsema_real_eip !167
  store i1 %248, i1* %AF_val, !mcsema_real_eip !167
  %249 = icmp slt i32 %245, 0
  store i1 %249, i1* %SF_val, !mcsema_real_eip !167
  %250 = icmp eq i32 %245, 0, !mcsema_real_eip !167
  store i1 %250, i1* %ZF_val, !mcsema_real_eip !167
  %251 = xor i32 %244, -2147483648, !mcsema_real_eip !167
  %252 = and i32 %246, %251, !mcsema_real_eip !167
  %253 = icmp slt i32 %252, 0
  store i1 %253, i1* %OF_val, !mcsema_real_eip !167
  %254 = trunc i32 %245 to i8, !mcsema_real_eip !167
  %255 = tail call i8 @llvm.ctpop.i8(i8 %254), !mcsema_real_eip !167
  %256 = and i8 %255, 1
  %257 = icmp eq i8 %256, 0
  store i1 %257, i1* %PF_val, !mcsema_real_eip !167
  %258 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %258, i1* %CF_val, !mcsema_real_eip !167
  %259 = zext i32 %245 to i64, !mcsema_real_eip !167
  store i64 %259, i64* %RAX_val, !mcsema_real_eip !167
  %260 = load i64* %RBP_val, !mcsema_real_eip !168
  %261 = add i64 %260, -4, !mcsema_real_eip !168
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !168
  %263 = bitcast i64* %262 to i32*
  store i32 %245, i32* %263, !mcsema_real_eip !168
  %264 = load i64* %RBP_val, !mcsema_real_eip !152
  %265 = add i64 %264, -4, !mcsema_real_eip !152
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !152
  %267 = bitcast i64* %266 to i32*
  %268 = load i32* %267, !mcsema_real_eip !152
  %269 = add i32 %268, -7
  %270 = xor i32 %269, %268, !mcsema_real_eip !152
  %271 = and i32 %270, 16, !mcsema_real_eip !152
  %272 = icmp ne i32 %271, 0, !mcsema_real_eip !152
  store i1 %272, i1* %AF_val, !mcsema_real_eip !152
  %273 = trunc i32 %269 to i8, !mcsema_real_eip !152
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !152
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !152
  %277 = icmp eq i32 %269, 0, !mcsema_real_eip !152
  store i1 %277, i1* %ZF_val, !mcsema_real_eip !152
  %278 = icmp slt i32 %269, 0
  store i1 %278, i1* %SF_val, !mcsema_real_eip !152
  %279 = icmp ult i32 %268, 7, !mcsema_real_eip !152
  store i1 %279, i1* %CF_val, !mcsema_real_eip !152
  %280 = and i32 %270, %268, !mcsema_real_eip !152
  %281 = icmp slt i32 %280, 0
  store i1 %281, i1* %OF_val, !mcsema_real_eip !152
  %tmp74 = xor i1 %278, %281
  br i1 %tmp74, label %block_0x1c, label %block_0x98.loopexit, !mcsema_real_eip !153

block_0x30:                                       ; preds = %block_0x30, %block_0x30.preheader
  store i64 ptrtoint (%1* @data_0x3ff to i64), i64* %RDI_val, !mcsema_real_eip !169
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !170
  %282 = load i64* %RBP_val, !mcsema_real_eip !171
  %283 = add i64 %282, -8, !mcsema_real_eip !171
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !171
  %285 = bitcast i64* %284 to i32*
  %286 = load i32* %285, !mcsema_real_eip !171
  %287 = sext i32 %286 to i64, !mcsema_real_eip !171
  store i64 %287, i64* %RCX_val, !mcsema_real_eip !171
  %288 = load i64* %RBP_val, !mcsema_real_eip !172
  %289 = add i64 %288, -4, !mcsema_real_eip !172
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !172
  %291 = bitcast i64* %290 to i32*
  %292 = load i32* %291, !mcsema_real_eip !172
  %293 = sext i32 %292 to i64, !mcsema_real_eip !172
  %294 = mul i64 %293, 11, !mcsema_real_eip !173
  store i64 %294, i64* %RDX_val, !mcsema_real_eip !173
  %295 = load i64* %RAX_val, !mcsema_real_eip !174
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %294, i64 %295)
  %296 = extractvalue { i64, i1 } %uadd, 0
  %297 = xor i64 %296, %295, !mcsema_real_eip !174
  %298 = xor i64 %297, %294, !mcsema_real_eip !174
  %299 = and i64 %298, 16, !mcsema_real_eip !174
  %300 = icmp ne i64 %299, 0, !mcsema_real_eip !174
  store i1 %300, i1* %AF_val, !mcsema_real_eip !174
  %301 = icmp slt i64 %296, 0
  store i1 %301, i1* %SF_val, !mcsema_real_eip !174
  %302 = icmp eq i64 %296, 0, !mcsema_real_eip !174
  store i1 %302, i1* %ZF_val, !mcsema_real_eip !174
  %303 = xor i64 %295, -9223372036854775808, !mcsema_real_eip !174
  %304 = xor i64 %303, %294, !mcsema_real_eip !174
  %305 = and i64 %297, %304, !mcsema_real_eip !174
  %306 = icmp slt i64 %305, 0
  store i1 %306, i1* %OF_val, !mcsema_real_eip !174
  %307 = trunc i64 %296 to i8, !mcsema_real_eip !174
  %308 = tail call i8 @llvm.ctpop.i8(i8 %307), !mcsema_real_eip !174
  %309 = and i8 %308, 1
  %310 = icmp eq i8 %309, 0
  store i1 %310, i1* %PF_val, !mcsema_real_eip !174
  %311 = extractvalue { i64, i1 } %uadd, 1
  store i1 %311, i1* %CF_val, !mcsema_real_eip !174
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !174
  %312 = load i64* %RCX_val, !mcsema_real_eip !175
  %313 = add i64 %312, %296, !mcsema_real_eip !175
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !175
  %315 = bitcast i64* %314 to i8*
  %316 = load i8* %315, !mcsema_real_eip !175
  %317 = sext i8 %316 to i32, !mcsema_real_eip !175
  %318 = zext i32 %317 to i64, !mcsema_real_eip !175
  store i64 %318, i64* %RSI_val, !mcsema_real_eip !175
  %319 = load i64* %RDI_val, !mcsema_real_eip !176
  %320 = tail call x86_64_sysvcc i64 @printf(i64 %319, i64 %318), !mcsema_real_eip !176
  store i64 %320, i64* %RAX_val, !mcsema_real_eip !176
  %321 = load i64* %RBP_val, !mcsema_real_eip !177
  %322 = add i64 %321, -12, !mcsema_real_eip !177
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !177
  %324 = trunc i64 %320 to i32, !mcsema_real_eip !177
  %325 = bitcast i64* %323 to i32*
  store i32 %324, i32* %325, !mcsema_real_eip !177
  %326 = load i64* %RBP_val, !mcsema_real_eip !178
  %327 = add i64 %326, -8, !mcsema_real_eip !178
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !178
  %329 = bitcast i64* %328 to i32*
  %330 = load i32* %329, !mcsema_real_eip !178
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 1)
  %331 = extractvalue { i32, i1 } %uadd71, 0
  %332 = xor i32 %331, %330, !mcsema_real_eip !179
  %333 = and i32 %332, 16, !mcsema_real_eip !179
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !179
  store i1 %334, i1* %AF_val, !mcsema_real_eip !179
  %335 = icmp slt i32 %331, 0
  store i1 %335, i1* %SF_val, !mcsema_real_eip !179
  %336 = icmp eq i32 %331, 0, !mcsema_real_eip !179
  store i1 %336, i1* %ZF_val, !mcsema_real_eip !179
  %337 = xor i32 %330, -2147483648, !mcsema_real_eip !179
  %338 = and i32 %332, %337, !mcsema_real_eip !179
  %339 = icmp slt i32 %338, 0
  store i1 %339, i1* %OF_val, !mcsema_real_eip !179
  %340 = trunc i32 %331 to i8, !mcsema_real_eip !179
  %341 = tail call i8 @llvm.ctpop.i8(i8 %340), !mcsema_real_eip !179
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  store i1 %343, i1* %PF_val, !mcsema_real_eip !179
  %344 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %344, i1* %CF_val, !mcsema_real_eip !179
  %345 = zext i32 %331 to i64, !mcsema_real_eip !179
  store i64 %345, i64* %RAX_val, !mcsema_real_eip !179
  %346 = load i64* %RBP_val, !mcsema_real_eip !180
  %347 = add i64 %346, -8, !mcsema_real_eip !180
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !180
  %349 = bitcast i64* %348 to i32*
  store i32 %331, i32* %349, !mcsema_real_eip !180
  %350 = load i64* %RBP_val, !mcsema_real_eip !161
  %351 = add i64 %350, -8, !mcsema_real_eip !161
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !161
  %353 = bitcast i64* %352 to i32*
  %354 = load i32* %353, !mcsema_real_eip !161
  %355 = add i32 %354, -11
  %356 = xor i32 %355, %354, !mcsema_real_eip !161
  %357 = and i32 %356, 16, !mcsema_real_eip !161
  %358 = icmp ne i32 %357, 0, !mcsema_real_eip !161
  store i1 %358, i1* %AF_val, !mcsema_real_eip !161
  %359 = trunc i32 %355 to i8, !mcsema_real_eip !161
  %360 = tail call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !161
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  store i1 %362, i1* %PF_val, !mcsema_real_eip !161
  %363 = icmp eq i32 %355, 0, !mcsema_real_eip !161
  store i1 %363, i1* %ZF_val, !mcsema_real_eip !161
  %364 = icmp slt i32 %355, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !161
  %365 = icmp ult i32 %354, 11, !mcsema_real_eip !161
  store i1 %365, i1* %CF_val, !mcsema_real_eip !161
  %366 = and i32 %356, %354, !mcsema_real_eip !161
  %367 = icmp slt i32 %366, 0
  store i1 %367, i1* %OF_val, !mcsema_real_eip !161
  %tmp72 = xor i1 %364, %367
  br i1 %tmp72, label %block_0x30, label %block_0x74.loopexit, !mcsema_real_eip !162
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

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

block_0x98.loopexit:                              ; preds = %281
  br label %block_0x98

block_0x98:                                       ; preds = %block_0x98.loopexit, %105
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !154
  %120 = load i64* %RSI_val, !mcsema_real_eip !155
  %121 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64 %120), !mcsema_real_eip !155
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !155
  %122 = load i64* %RBP_val, !mcsema_real_eip !156
  %123 = add i64 %122, -20, !mcsema_real_eip !156
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !156
  %125 = trunc i64 %121 to i32, !mcsema_real_eip !156
  %126 = bitcast i64* %124 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !156
  %127 = load i64* %RSP_val, !mcsema_real_eip !157
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 32)
  %128 = extractvalue { i64, i1 } %uadd75, 0
  %129 = xor i64 %128, %127, !mcsema_real_eip !157
  %130 = and i64 %129, 16, !mcsema_real_eip !157
  %131 = icmp ne i64 %130, 0, !mcsema_real_eip !157
  store i1 %131, i1* %AF_val, !mcsema_real_eip !157
  %132 = icmp slt i64 %128, 0
  store i1 %132, i1* %SF_val, !mcsema_real_eip !157
  %133 = icmp eq i64 %128, 0, !mcsema_real_eip !157
  store i1 %133, i1* %ZF_val, !mcsema_real_eip !157
  %134 = xor i64 %127, -9223372036854775808, !mcsema_real_eip !157
  %135 = and i64 %129, %134, !mcsema_real_eip !157
  %136 = icmp slt i64 %135, 0
  store i1 %136, i1* %OF_val, !mcsema_real_eip !157
  %137 = trunc i64 %128 to i8, !mcsema_real_eip !157
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !157
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  store i1 %140, i1* %PF_val, !mcsema_real_eip !157
  %141 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %141, i1* %CF_val, !mcsema_real_eip !157
  store i64 %128, i64* %RSP_val, !mcsema_real_eip !157
  %142 = inttoptr i64 %128 to i64*, !mcsema_real_eip !158
  %_head_p2i_7 = ptrtoint i64* %142 to i64
  %_head_cond_8 = icmp uge i64 %_head_p2i_7, %_local_stack_start_
  br i1 %_head_cond_8, label %143, label %144

; <label>:143                                     ; preds = %block_0x98
  %_offset_above_rbp_9 = sub i64 %_head_p2i_7, %_local_stack_start_
  %_address_in_parent_stack_10 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_9
  br label %144

; <label>:144                                     ; preds = %143, %block_0x98
  %145 = phi i64 [ %_head_p2i_7, %block_0x98 ], [ %_address_in_parent_stack_10, %143 ]
  %_address_ptr_in_parent_stack_11 = inttoptr i64 %145 to i64*
  %_new_load_12 = load i64* %_address_ptr_in_parent_stack_11
  store i64 %_new_load_12, i64* %RBP_val, !mcsema_real_eip !158
  %146 = add i64 %128, 16, !mcsema_real_eip !159
  store i64 %146, i64* %RSP_val, !mcsema_real_eip !159
  %147 = load i64* %RAX_val, !mcsema_real_eip !159
  store i64 %147, i64* %RAX, !mcsema_real_eip !159
  %148 = load i64* %RBX_val, !mcsema_real_eip !159
  store i64 %148, i64* %RBX, !mcsema_real_eip !159
  %149 = load i64* %RCX_val, !mcsema_real_eip !159
  store i64 %149, i64* %RCX, !mcsema_real_eip !159
  %150 = load i64* %RDX_val, !mcsema_real_eip !159
  store i64 %150, i64* %RDX, !mcsema_real_eip !159
  %151 = load i64* %RSI_val, !mcsema_real_eip !159
  store i64 %151, i64* %RSI, !mcsema_real_eip !159
  %152 = load i64* %RDI_val, !mcsema_real_eip !159
  store i64 %152, i64* %RDI, !mcsema_real_eip !159
  %153 = load i64* %RSP_val, !mcsema_real_eip !159
  store i64 %153, i64* %RSP, !mcsema_real_eip !159
  %154 = load i64* %RBP_val, !mcsema_real_eip !159
  store i64 %154, i64* %RBP, !mcsema_real_eip !159
  %155 = load i64* %R8_val, !mcsema_real_eip !159
  store i64 %155, i64* %R8, !mcsema_real_eip !159
  %156 = load i64* %R9_val, !mcsema_real_eip !159
  store i64 %156, i64* %R9, !mcsema_real_eip !159
  %157 = load i64* %R10_val, !mcsema_real_eip !159
  store i64 %157, i64* %R10, !mcsema_real_eip !159
  %158 = load i64* %R11_val, !mcsema_real_eip !159
  store i64 %158, i64* %R11, !mcsema_real_eip !159
  %159 = load i64* %R12_val, !mcsema_real_eip !159
  store i64 %159, i64* %R12, !mcsema_real_eip !159
  %160 = load i64* %R13_val, !mcsema_real_eip !159
  store i64 %160, i64* %R13, !mcsema_real_eip !159
  %161 = load i64* %R14_val, !mcsema_real_eip !159
  store i64 %161, i64* %R14, !mcsema_real_eip !159
  %162 = load i64* %R15_val, !mcsema_real_eip !159
  store i64 %162, i64* %R15, !mcsema_real_eip !159
  %163 = load i64* %RIP_val, !mcsema_real_eip !159
  store i64 %163, i64* %RIP, !mcsema_real_eip !159
  %164 = load i1* %CF_val, !mcsema_real_eip !159
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !159
  %165 = load i1* %PF_val, !mcsema_real_eip !159
  store i1 %165, i1* %PF, align 1, !mcsema_real_eip !159
  %166 = load i1* %AF_val, !mcsema_real_eip !159
  store i1 %166, i1* %AF, align 1, !mcsema_real_eip !159
  %167 = load i1* %ZF_val, !mcsema_real_eip !159
  store i1 %167, i1* %ZF, align 1, !mcsema_real_eip !159
  %168 = load i1* %SF_val, !mcsema_real_eip !159
  store i1 %168, i1* %SF, align 1, !mcsema_real_eip !159
  %169 = load i1* %OF_val, !mcsema_real_eip !159
  store i1 %169, i1* %OF, align 1, !mcsema_real_eip !159
  %170 = load i1* %DF_val, !mcsema_real_eip !159
  store i1 %170, i1* %DF, align 1, !mcsema_real_eip !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !159
  %171 = load i1* %FPU_B_val, !mcsema_real_eip !159
  store i1 %171, i1* %FPU_B, align 1, !mcsema_real_eip !159
  %172 = load i1* %FPU_C3_val, !mcsema_real_eip !159
  store i1 %172, i1* %FPU_C3, align 1, !mcsema_real_eip !159
  %173 = load i3* %FPU_TOP_val, !mcsema_real_eip !159
  store i3 %173, i3* %FPU_TOP, align 1, !mcsema_real_eip !159
  %174 = load i1* %FPU_C2_val, !mcsema_real_eip !159
  store i1 %174, i1* %FPU_C2, align 1, !mcsema_real_eip !159
  %175 = load i1* %FPU_C1_val, !mcsema_real_eip !159
  store i1 %175, i1* %FPU_C1, align 1, !mcsema_real_eip !159
  %176 = load i1* %FPU_C0_val, !mcsema_real_eip !159
  store i1 %176, i1* %FPU_C0, align 1, !mcsema_real_eip !159
  %177 = load i1* %FPU_ES_val, !mcsema_real_eip !159
  store i1 %177, i1* %FPU_ES, align 1, !mcsema_real_eip !159
  %178 = load i1* %FPU_SF_val, !mcsema_real_eip !159
  store i1 %178, i1* %FPU_SF, align 1, !mcsema_real_eip !159
  %179 = load i1* %FPU_PE_val, !mcsema_real_eip !159
  store i1 %179, i1* %FPU_PE, align 1, !mcsema_real_eip !159
  %180 = load i1* %FPU_UE_val, !mcsema_real_eip !159
  store i1 %180, i1* %FPU_UE, align 1, !mcsema_real_eip !159
  %181 = load i1* %FPU_OE_val, !mcsema_real_eip !159
  store i1 %181, i1* %FPU_OE, align 1, !mcsema_real_eip !159
  %182 = load i1* %FPU_ZE_val, !mcsema_real_eip !159
  store i1 %182, i1* %FPU_ZE, align 1, !mcsema_real_eip !159
  %183 = load i1* %FPU_DE_val, !mcsema_real_eip !159
  store i1 %183, i1* %FPU_DE, align 1, !mcsema_real_eip !159
  %184 = load i1* %FPU_IE_val, !mcsema_real_eip !159
  store i1 %184, i1* %FPU_IE, align 1, !mcsema_real_eip !159
  %185 = load i1* %FPU_X_val, !mcsema_real_eip !159
  store i1 %185, i1* %FPU_X, align 1, !mcsema_real_eip !159
  %186 = load i2* %FPU_RC_val, !mcsema_real_eip !159
  store i2 %186, i2* %FPU_RC, align 1, !mcsema_real_eip !159
  %187 = load i2* %FPU_PC_val, !mcsema_real_eip !159
  store i2 %187, i2* %FPU_PC, align 1, !mcsema_real_eip !159
  %188 = load i1* %FPU_PM_val, !mcsema_real_eip !159
  store i1 %188, i1* %FPU_PM, align 1, !mcsema_real_eip !159
  %189 = load i1* %FPU_UM_val, !mcsema_real_eip !159
  store i1 %189, i1* %FPU_UM, align 1, !mcsema_real_eip !159
  %190 = load i1* %FPU_OM_val, !mcsema_real_eip !159
  store i1 %190, i1* %FPU_OM, align 1, !mcsema_real_eip !159
  %191 = load i1* %FPU_ZM_val, !mcsema_real_eip !159
  store i1 %191, i1* %FPU_ZM, align 1, !mcsema_real_eip !159
  %192 = load i1* %FPU_DM_val, !mcsema_real_eip !159
  store i1 %192, i1* %FPU_DM, align 1, !mcsema_real_eip !159
  %193 = load i1* %FPU_IM_val, !mcsema_real_eip !159
  store i1 %193, i1* %FPU_IM, align 1, !mcsema_real_eip !159
  %_head_p2i_13 = ptrtoint i64* %53 to i64
  %_head_cond_14 = icmp uge i64 %_head_p2i_13, %_local_stack_start_
  br i1 %_head_cond_14, label %194, label %195

; <label>:194                                     ; preds = %144
  %_offset_above_rbp_15 = sub i64 %_head_p2i_13, %_local_stack_start_
  %_address_in_parent_stack_16 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_15
  br label %195

; <label>:195                                     ; preds = %194, %144
  %196 = phi i64 [ %_head_p2i_13, %144 ], [ %_address_in_parent_stack_16, %194 ]
  %_address_ptr_in_parent_stack_17 = inttoptr i64 %196 to i64*
  %_new_load_18 = load i64* %_address_ptr_in_parent_stack_17
  store i64 %_new_load_18, i64* %52, align 4
  %197 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !159
  store i16 %197, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !159
  %198 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !159
  store i64 %198, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !159
  %199 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !159
  store i16 %199, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !159
  %200 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !159
  store i64 %200, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !159
  %201 = load i128* %XMM0_val, !mcsema_real_eip !159
  store i128 %201, i128* %XMM0, align 1, !mcsema_real_eip !159
  %202 = load i128* %XMM1_val, !mcsema_real_eip !159
  store i128 %202, i128* %XMM1, align 1, !mcsema_real_eip !159
  %203 = load i128* %XMM2_val, !mcsema_real_eip !159
  store i128 %203, i128* %XMM2, align 1, !mcsema_real_eip !159
  %204 = load i128* %XMM3_val, !mcsema_real_eip !159
  store i128 %204, i128* %XMM3, align 1, !mcsema_real_eip !159
  %205 = load i128* %XMM4_val, !mcsema_real_eip !159
  store i128 %205, i128* %XMM4, align 1, !mcsema_real_eip !159
  %206 = load i128* %XMM5_val, !mcsema_real_eip !159
  store i128 %206, i128* %XMM5, align 1, !mcsema_real_eip !159
  %207 = load i128* %XMM6_val, !mcsema_real_eip !159
  store i128 %207, i128* %XMM6, align 1, !mcsema_real_eip !159
  %208 = load i128* %XMM7_val, !mcsema_real_eip !159
  store i128 %208, i128* %XMM7, align 1, !mcsema_real_eip !159
  %209 = load i128* %XMM8_val, !mcsema_real_eip !159
  store i128 %209, i128* %XMM8, align 1, !mcsema_real_eip !159
  %210 = load i128* %XMM9_val, !mcsema_real_eip !159
  store i128 %210, i128* %XMM9, align 1, !mcsema_real_eip !159
  %211 = load i128* %XMM10_val, !mcsema_real_eip !159
  store i128 %211, i128* %XMM10, align 1, !mcsema_real_eip !159
  %212 = load i128* %XMM11_val, !mcsema_real_eip !159
  store i128 %212, i128* %XMM11, align 1, !mcsema_real_eip !159
  %213 = load i128* %XMM12_val, !mcsema_real_eip !159
  store i128 %213, i128* %XMM12, align 1, !mcsema_real_eip !159
  %214 = load i128* %XMM13_val, !mcsema_real_eip !159
  store i128 %214, i128* %XMM13, align 1, !mcsema_real_eip !159
  %215 = load i128* %XMM14_val, !mcsema_real_eip !159
  store i128 %215, i128* %XMM14, align 1, !mcsema_real_eip !159
  %216 = load i128* %XMM15_val, !mcsema_real_eip !159
  store i128 %216, i128* %XMM15, align 1, !mcsema_real_eip !159
  %217 = load i64* %STACK_BASE_val, !mcsema_real_eip !159
  store i64 %217, i64* %STACK_BASE, align 1, !mcsema_real_eip !159
  %218 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !159
  store i64 %218, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x1c:                                       ; preds = %281, %block_0x1c.preheader
  %219 = load i64* %RBP_val, !mcsema_real_eip !160
  %220 = add i64 %219, -8, !mcsema_real_eip !160
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !160
  %222 = bitcast i64* %221 to i32*
  store i32 0, i32* %222, !mcsema_real_eip !160
  %223 = load i64* %RBP_val, !mcsema_real_eip !161
  %224 = add i64 %223, -8, !mcsema_real_eip !161
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !161
  %226 = bitcast i64* %225 to i32*
  %_head_p2i_19 = ptrtoint i32* %226 to i64
  %_head_cond_20 = icmp uge i64 %_head_p2i_19, %_local_stack_start_
  br i1 %_head_cond_20, label %227, label %228

; <label>:227                                     ; preds = %block_0x1c
  %_offset_above_rbp_21 = sub i64 %_head_p2i_19, %_local_stack_start_
  %_address_in_parent_stack_22 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_21
  br label %228

; <label>:228                                     ; preds = %227, %block_0x1c
  %229 = phi i64 [ %_head_p2i_19, %block_0x1c ], [ %_address_in_parent_stack_22, %227 ]
  %_address_ptr_in_parent_stack_23 = inttoptr i64 %229 to i32*
  %_new_load_24 = load i32* %_address_ptr_in_parent_stack_23
  %230 = add i32 %_new_load_24, -11
  %231 = xor i32 %230, %_new_load_24, !mcsema_real_eip !161
  %232 = and i32 %231, 16, !mcsema_real_eip !161
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !161
  store i1 %233, i1* %AF_val, !mcsema_real_eip !161
  %234 = trunc i32 %230 to i8, !mcsema_real_eip !161
  %235 = tail call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !161
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  store i1 %237, i1* %PF_val, !mcsema_real_eip !161
  %238 = icmp eq i32 %230, 0, !mcsema_real_eip !161
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !161
  %239 = icmp slt i32 %230, 0
  store i1 %239, i1* %SF_val, !mcsema_real_eip !161
  %240 = icmp ult i32 %_new_load_24, 11, !mcsema_real_eip !161
  store i1 %240, i1* %CF_val, !mcsema_real_eip !161
  %241 = and i32 %231, %_new_load_24, !mcsema_real_eip !161
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF_val, !mcsema_real_eip !161
  %tmp70 = xor i1 %239, %242
  br i1 %tmp70, label %block_0x30.preheader, label %block_0x74, !mcsema_real_eip !162

block_0x30.preheader:                             ; preds = %228
  br label %block_0x30

block_0x74.loopexit:                              ; preds = %377
  br label %block_0x74

block_0x74:                                       ; preds = %block_0x74.loopexit, %228
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !163
  %243 = load i64* %RSI_val, !mcsema_real_eip !164
  %244 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64 %243), !mcsema_real_eip !164
  store i64 %244, i64* %RAX_val, !mcsema_real_eip !164
  %245 = load i64* %RBP_val, !mcsema_real_eip !165
  %246 = add i64 %245, -16, !mcsema_real_eip !165
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !165
  %248 = trunc i64 %244 to i32, !mcsema_real_eip !165
  %249 = bitcast i64* %247 to i32*
  store i32 %248, i32* %249, !mcsema_real_eip !165
  %250 = load i64* %RBP_val, !mcsema_real_eip !166
  %251 = add i64 %250, -4, !mcsema_real_eip !166
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !166
  %253 = bitcast i64* %252 to i32*
  %_head_p2i_25 = ptrtoint i32* %253 to i64
  %_head_cond_26 = icmp uge i64 %_head_p2i_25, %_local_stack_start_
  br i1 %_head_cond_26, label %254, label %255

; <label>:254                                     ; preds = %block_0x74
  %_offset_above_rbp_27 = sub i64 %_head_p2i_25, %_local_stack_start_
  %_address_in_parent_stack_28 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_27
  br label %255

; <label>:255                                     ; preds = %254, %block_0x74
  %256 = phi i64 [ %_head_p2i_25, %block_0x74 ], [ %_address_in_parent_stack_28, %254 ]
  %_address_ptr_in_parent_stack_29 = inttoptr i64 %256 to i32*
  %_new_load_30 = load i32* %_address_ptr_in_parent_stack_29
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_30, i32 1)
  %257 = extractvalue { i32, i1 } %uadd73, 0
  %258 = xor i32 %257, %_new_load_30, !mcsema_real_eip !167
  %259 = and i32 %258, 16, !mcsema_real_eip !167
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !167
  store i1 %260, i1* %AF_val, !mcsema_real_eip !167
  %261 = icmp slt i32 %257, 0
  store i1 %261, i1* %SF_val, !mcsema_real_eip !167
  %262 = icmp eq i32 %257, 0, !mcsema_real_eip !167
  store i1 %262, i1* %ZF_val, !mcsema_real_eip !167
  %263 = xor i32 %_new_load_30, -2147483648, !mcsema_real_eip !167
  %264 = and i32 %258, %263, !mcsema_real_eip !167
  %265 = icmp slt i32 %264, 0
  store i1 %265, i1* %OF_val, !mcsema_real_eip !167
  %266 = trunc i32 %257 to i8, !mcsema_real_eip !167
  %267 = tail call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !167
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF_val, !mcsema_real_eip !167
  %270 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %270, i1* %CF_val, !mcsema_real_eip !167
  %271 = zext i32 %257 to i64, !mcsema_real_eip !167
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !167
  %272 = load i64* %RBP_val, !mcsema_real_eip !168
  %273 = add i64 %272, -4, !mcsema_real_eip !168
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !168
  %275 = bitcast i64* %274 to i32*
  store i32 %257, i32* %275, !mcsema_real_eip !168
  %276 = load i64* %RBP_val, !mcsema_real_eip !152
  %277 = add i64 %276, -4, !mcsema_real_eip !152
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !152
  %279 = bitcast i64* %278 to i32*
  %_head_p2i_31 = ptrtoint i32* %279 to i64
  %_head_cond_32 = icmp uge i64 %_head_p2i_31, %_local_stack_start_
  br i1 %_head_cond_32, label %280, label %281

; <label>:280                                     ; preds = %255
  %_offset_above_rbp_33 = sub i64 %_head_p2i_31, %_local_stack_start_
  %_address_in_parent_stack_34 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_33
  br label %281

; <label>:281                                     ; preds = %280, %255
  %282 = phi i64 [ %_head_p2i_31, %255 ], [ %_address_in_parent_stack_34, %280 ]
  %_address_ptr_in_parent_stack_35 = inttoptr i64 %282 to i32*
  %_new_load_36 = load i32* %_address_ptr_in_parent_stack_35
  %283 = add i32 %_new_load_36, -7
  %284 = xor i32 %283, %_new_load_36, !mcsema_real_eip !152
  %285 = and i32 %284, 16, !mcsema_real_eip !152
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !152
  store i1 %286, i1* %AF_val, !mcsema_real_eip !152
  %287 = trunc i32 %283 to i8, !mcsema_real_eip !152
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !152
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !152
  %291 = icmp eq i32 %283, 0, !mcsema_real_eip !152
  store i1 %291, i1* %ZF_val, !mcsema_real_eip !152
  %292 = icmp slt i32 %283, 0
  store i1 %292, i1* %SF_val, !mcsema_real_eip !152
  %293 = icmp ult i32 %_new_load_36, 7, !mcsema_real_eip !152
  store i1 %293, i1* %CF_val, !mcsema_real_eip !152
  %294 = and i32 %284, %_new_load_36, !mcsema_real_eip !152
  %295 = icmp slt i32 %294, 0
  store i1 %295, i1* %OF_val, !mcsema_real_eip !152
  %tmp74 = xor i1 %292, %295
  br i1 %tmp74, label %block_0x1c, label %block_0x98.loopexit, !mcsema_real_eip !153

block_0x30:                                       ; preds = %377, %block_0x30.preheader
  store i64 ptrtoint (%1* @data_0x3ff to i64), i64* %RDI_val, !mcsema_real_eip !169
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !170
  %296 = load i64* %RBP_val, !mcsema_real_eip !171
  %297 = add i64 %296, -8, !mcsema_real_eip !171
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !171
  %299 = bitcast i64* %298 to i32*
  %_head_p2i_37 = ptrtoint i32* %299 to i64
  %_head_cond_38 = icmp uge i64 %_head_p2i_37, %_local_stack_start_
  br i1 %_head_cond_38, label %300, label %301

; <label>:300                                     ; preds = %block_0x30
  %_offset_above_rbp_39 = sub i64 %_head_p2i_37, %_local_stack_start_
  %_address_in_parent_stack_40 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_39
  br label %301

; <label>:301                                     ; preds = %300, %block_0x30
  %302 = phi i64 [ %_head_p2i_37, %block_0x30 ], [ %_address_in_parent_stack_40, %300 ]
  %_address_ptr_in_parent_stack_41 = inttoptr i64 %302 to i32*
  %_new_load_42 = load i32* %_address_ptr_in_parent_stack_41
  %303 = sext i32 %_new_load_42 to i64, !mcsema_real_eip !171
  store i64 %303, i64* %RCX_val, !mcsema_real_eip !171
  %304 = load i64* %RBP_val, !mcsema_real_eip !172
  %305 = add i64 %304, -4, !mcsema_real_eip !172
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !172
  %307 = bitcast i64* %306 to i32*
  %_head_p2i_43 = ptrtoint i32* %307 to i64
  %_head_cond_44 = icmp uge i64 %_head_p2i_43, %_local_stack_start_
  br i1 %_head_cond_44, label %308, label %309

; <label>:308                                     ; preds = %301
  %_offset_above_rbp_45 = sub i64 %_head_p2i_43, %_local_stack_start_
  %_address_in_parent_stack_46 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_45
  br label %309

; <label>:309                                     ; preds = %308, %301
  %310 = phi i64 [ %_head_p2i_43, %301 ], [ %_address_in_parent_stack_46, %308 ]
  %_address_ptr_in_parent_stack_47 = inttoptr i64 %310 to i32*
  %_new_load_48 = load i32* %_address_ptr_in_parent_stack_47
  %311 = sext i32 %_new_load_48 to i64, !mcsema_real_eip !172
  %312 = mul i64 %311, 11, !mcsema_real_eip !173
  store i64 %312, i64* %RDX_val, !mcsema_real_eip !173
  %313 = load i64* %RAX_val, !mcsema_real_eip !174
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 %313)
  %314 = extractvalue { i64, i1 } %uadd, 0
  %315 = xor i64 %314, %313, !mcsema_real_eip !174
  %316 = xor i64 %315, %312, !mcsema_real_eip !174
  %317 = and i64 %316, 16, !mcsema_real_eip !174
  %318 = icmp ne i64 %317, 0, !mcsema_real_eip !174
  store i1 %318, i1* %AF_val, !mcsema_real_eip !174
  %319 = icmp slt i64 %314, 0
  store i1 %319, i1* %SF_val, !mcsema_real_eip !174
  %320 = icmp eq i64 %314, 0, !mcsema_real_eip !174
  store i1 %320, i1* %ZF_val, !mcsema_real_eip !174
  %321 = xor i64 %313, -9223372036854775808, !mcsema_real_eip !174
  %322 = xor i64 %321, %312, !mcsema_real_eip !174
  %323 = and i64 %315, %322, !mcsema_real_eip !174
  %324 = icmp slt i64 %323, 0
  store i1 %324, i1* %OF_val, !mcsema_real_eip !174
  %325 = trunc i64 %314 to i8, !mcsema_real_eip !174
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !174
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF_val, !mcsema_real_eip !174
  %329 = extractvalue { i64, i1 } %uadd, 1
  store i1 %329, i1* %CF_val, !mcsema_real_eip !174
  store i64 %314, i64* %RAX_val, !mcsema_real_eip !174
  %330 = load i64* %RCX_val, !mcsema_real_eip !175
  %331 = add i64 %330, %314, !mcsema_real_eip !175
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !175
  %333 = bitcast i64* %332 to i8*
  %_head_p2i_49 = ptrtoint i8* %333 to i64
  %_head_cond_50 = icmp uge i64 %_head_p2i_49, %_local_stack_start_
  br i1 %_head_cond_50, label %334, label %335

; <label>:334                                     ; preds = %309
  %_offset_above_rbp_51 = sub i64 %_head_p2i_49, %_local_stack_start_
  %_address_in_parent_stack_52 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_51
  br label %335

; <label>:335                                     ; preds = %334, %309
  %336 = phi i64 [ %_head_p2i_49, %309 ], [ %_address_in_parent_stack_52, %334 ]
  %_address_ptr_in_parent_stack_53 = inttoptr i64 %336 to i8*
  %_new_load_54 = load i8* %_address_ptr_in_parent_stack_53
  %337 = sext i8 %_new_load_54 to i32, !mcsema_real_eip !175
  %338 = zext i32 %337 to i64, !mcsema_real_eip !175
  store i64 %338, i64* %RSI_val, !mcsema_real_eip !175
  %339 = load i64* %RDI_val, !mcsema_real_eip !176
  %340 = tail call x86_64_sysvcc i64 @printf(i64 %339, i64 %338), !mcsema_real_eip !176
  store i64 %340, i64* %RAX_val, !mcsema_real_eip !176
  %341 = load i64* %RBP_val, !mcsema_real_eip !177
  %342 = add i64 %341, -12, !mcsema_real_eip !177
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !177
  %344 = trunc i64 %340 to i32, !mcsema_real_eip !177
  %345 = bitcast i64* %343 to i32*
  store i32 %344, i32* %345, !mcsema_real_eip !177
  %346 = load i64* %RBP_val, !mcsema_real_eip !178
  %347 = add i64 %346, -8, !mcsema_real_eip !178
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !178
  %349 = bitcast i64* %348 to i32*
  %_head_p2i_55 = ptrtoint i32* %349 to i64
  %_head_cond_56 = icmp uge i64 %_head_p2i_55, %_local_stack_start_
  br i1 %_head_cond_56, label %350, label %351

; <label>:350                                     ; preds = %335
  %_offset_above_rbp_57 = sub i64 %_head_p2i_55, %_local_stack_start_
  %_address_in_parent_stack_58 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_57
  br label %351

; <label>:351                                     ; preds = %350, %335
  %352 = phi i64 [ %_head_p2i_55, %335 ], [ %_address_in_parent_stack_58, %350 ]
  %_address_ptr_in_parent_stack_59 = inttoptr i64 %352 to i32*
  %_new_load_60 = load i32* %_address_ptr_in_parent_stack_59
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_60, i32 1)
  %353 = extractvalue { i32, i1 } %uadd71, 0
  %354 = xor i32 %353, %_new_load_60, !mcsema_real_eip !179
  %355 = and i32 %354, 16, !mcsema_real_eip !179
  %356 = icmp ne i32 %355, 0, !mcsema_real_eip !179
  store i1 %356, i1* %AF_val, !mcsema_real_eip !179
  %357 = icmp slt i32 %353, 0
  store i1 %357, i1* %SF_val, !mcsema_real_eip !179
  %358 = icmp eq i32 %353, 0, !mcsema_real_eip !179
  store i1 %358, i1* %ZF_val, !mcsema_real_eip !179
  %359 = xor i32 %_new_load_60, -2147483648, !mcsema_real_eip !179
  %360 = and i32 %354, %359, !mcsema_real_eip !179
  %361 = icmp slt i32 %360, 0
  store i1 %361, i1* %OF_val, !mcsema_real_eip !179
  %362 = trunc i32 %353 to i8, !mcsema_real_eip !179
  %363 = tail call i8 @llvm.ctpop.i8(i8 %362), !mcsema_real_eip !179
  %364 = and i8 %363, 1
  %365 = icmp eq i8 %364, 0
  store i1 %365, i1* %PF_val, !mcsema_real_eip !179
  %366 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %366, i1* %CF_val, !mcsema_real_eip !179
  %367 = zext i32 %353 to i64, !mcsema_real_eip !179
  store i64 %367, i64* %RAX_val, !mcsema_real_eip !179
  %368 = load i64* %RBP_val, !mcsema_real_eip !180
  %369 = add i64 %368, -8, !mcsema_real_eip !180
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !180
  %371 = bitcast i64* %370 to i32*
  store i32 %353, i32* %371, !mcsema_real_eip !180
  %372 = load i64* %RBP_val, !mcsema_real_eip !161
  %373 = add i64 %372, -8, !mcsema_real_eip !161
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !161
  %375 = bitcast i64* %374 to i32*
  %_head_p2i_61 = ptrtoint i32* %375 to i64
  %_head_cond_62 = icmp uge i64 %_head_p2i_61, %_local_stack_start_
  br i1 %_head_cond_62, label %376, label %377

; <label>:376                                     ; preds = %351
  %_offset_above_rbp_63 = sub i64 %_head_p2i_61, %_local_stack_start_
  %_address_in_parent_stack_64 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_63
  br label %377

; <label>:377                                     ; preds = %376, %351
  %378 = phi i64 [ %_head_p2i_61, %351 ], [ %_address_in_parent_stack_64, %376 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %378 to i32*
  %_new_load_66 = load i32* %_address_ptr_in_parent_stack_65
  %379 = add i32 %_new_load_66, -11
  %380 = xor i32 %379, %_new_load_66, !mcsema_real_eip !161
  %381 = and i32 %380, 16, !mcsema_real_eip !161
  %382 = icmp ne i32 %381, 0, !mcsema_real_eip !161
  store i1 %382, i1* %AF_val, !mcsema_real_eip !161
  %383 = trunc i32 %379 to i8, !mcsema_real_eip !161
  %384 = tail call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !161
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF_val, !mcsema_real_eip !161
  %387 = icmp eq i32 %379, 0, !mcsema_real_eip !161
  store i1 %387, i1* %ZF_val, !mcsema_real_eip !161
  %388 = icmp slt i32 %379, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !161
  %389 = icmp ult i32 %_new_load_66, 11, !mcsema_real_eip !161
  store i1 %389, i1* %CF_val, !mcsema_real_eip !161
  %390 = and i32 %380, %_new_load_66, !mcsema_real_eip !161
  %391 = icmp slt i32 %390, 0
  store i1 %391, i1* %OF_val, !mcsema_real_eip !161
  %tmp72 = xor i1 %388, %391
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

block_0x98.loopexit:                              ; preds = %281
  br label %block_0x98

block_0x98:                                       ; preds = %block_0x98.loopexit, %105
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !154
  %120 = load i64* %RSI_val, !mcsema_real_eip !155
  %121 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64 %120), !mcsema_real_eip !155
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !155
  %122 = load i64* %RBP_val, !mcsema_real_eip !156
  %123 = add i64 %122, -20, !mcsema_real_eip !156
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !156
  %125 = trunc i64 %121 to i32, !mcsema_real_eip !156
  %126 = bitcast i64* %124 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !156
  %127 = load i64* %RSP_val, !mcsema_real_eip !157
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 32)
  %128 = extractvalue { i64, i1 } %uadd75, 0
  %129 = xor i64 %128, %127, !mcsema_real_eip !157
  %130 = and i64 %129, 16, !mcsema_real_eip !157
  %131 = icmp ne i64 %130, 0, !mcsema_real_eip !157
  store i1 %131, i1* %AF_val, !mcsema_real_eip !157
  %132 = icmp slt i64 %128, 0
  store i1 %132, i1* %SF_val, !mcsema_real_eip !157
  %133 = icmp eq i64 %128, 0, !mcsema_real_eip !157
  store i1 %133, i1* %ZF_val, !mcsema_real_eip !157
  %134 = xor i64 %127, -9223372036854775808, !mcsema_real_eip !157
  %135 = and i64 %129, %134, !mcsema_real_eip !157
  %136 = icmp slt i64 %135, 0
  store i1 %136, i1* %OF_val, !mcsema_real_eip !157
  %137 = trunc i64 %128 to i8, !mcsema_real_eip !157
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !157
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  store i1 %140, i1* %PF_val, !mcsema_real_eip !157
  %141 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %141, i1* %CF_val, !mcsema_real_eip !157
  store i64 %128, i64* %RSP_val, !mcsema_real_eip !157
  %142 = inttoptr i64 %128 to i64*, !mcsema_real_eip !158
  %_head_p2i_7 = ptrtoint i64* %142 to i64
  %_head_cond_8 = icmp uge i64 %_head_p2i_7, %_local_stack_start_
  br i1 %_head_cond_8, label %143, label %144

; <label>:143                                     ; preds = %block_0x98
  %_offset_above_rbp_9 = sub i64 %_head_p2i_7, %_local_stack_start_
  %_address_in_parent_stack_10 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_9
  br label %144

; <label>:144                                     ; preds = %143, %block_0x98
  %145 = phi i64 [ %_head_p2i_7, %block_0x98 ], [ %_address_in_parent_stack_10, %143 ]
  %_address_ptr_in_parent_stack_11 = inttoptr i64 %145 to i64*
  %_new_load_12 = load i64* %_address_ptr_in_parent_stack_11
  store i64 %_new_load_12, i64* %RBP_val, !mcsema_real_eip !158
  %146 = add i64 %128, 16, !mcsema_real_eip !159
  store i64 %146, i64* %RSP_val, !mcsema_real_eip !159
  %147 = load i64* %RAX_val, !mcsema_real_eip !159
  store i64 %147, i64* %RAX, !mcsema_real_eip !159
  %148 = load i64* %RBX_val, !mcsema_real_eip !159
  store i64 %148, i64* %RBX, !mcsema_real_eip !159
  %149 = load i64* %RCX_val, !mcsema_real_eip !159
  store i64 %149, i64* %RCX, !mcsema_real_eip !159
  %150 = load i64* %RDX_val, !mcsema_real_eip !159
  store i64 %150, i64* %RDX, !mcsema_real_eip !159
  %151 = load i64* %RSI_val, !mcsema_real_eip !159
  store i64 %151, i64* %RSI, !mcsema_real_eip !159
  %152 = load i64* %RDI_val, !mcsema_real_eip !159
  store i64 %152, i64* %RDI, !mcsema_real_eip !159
  %153 = load i64* %RSP_val, !mcsema_real_eip !159
  store i64 %153, i64* %RSP, !mcsema_real_eip !159
  %154 = load i64* %RBP_val, !mcsema_real_eip !159
  store i64 %154, i64* %RBP, !mcsema_real_eip !159
  %155 = load i64* %R8_val, !mcsema_real_eip !159
  store i64 %155, i64* %R8, !mcsema_real_eip !159
  %156 = load i64* %R9_val, !mcsema_real_eip !159
  store i64 %156, i64* %R9, !mcsema_real_eip !159
  %157 = load i64* %R10_val, !mcsema_real_eip !159
  store i64 %157, i64* %R10, !mcsema_real_eip !159
  %158 = load i64* %R11_val, !mcsema_real_eip !159
  store i64 %158, i64* %R11, !mcsema_real_eip !159
  %159 = load i64* %R12_val, !mcsema_real_eip !159
  store i64 %159, i64* %R12, !mcsema_real_eip !159
  %160 = load i64* %R13_val, !mcsema_real_eip !159
  store i64 %160, i64* %R13, !mcsema_real_eip !159
  %161 = load i64* %R14_val, !mcsema_real_eip !159
  store i64 %161, i64* %R14, !mcsema_real_eip !159
  %162 = load i64* %R15_val, !mcsema_real_eip !159
  store i64 %162, i64* %R15, !mcsema_real_eip !159
  %163 = load i64* %RIP_val, !mcsema_real_eip !159
  store i64 %163, i64* %RIP, !mcsema_real_eip !159
  %164 = load i1* %CF_val, !mcsema_real_eip !159
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !159
  %165 = load i1* %PF_val, !mcsema_real_eip !159
  store i1 %165, i1* %PF, align 1, !mcsema_real_eip !159
  %166 = load i1* %AF_val, !mcsema_real_eip !159
  store i1 %166, i1* %AF, align 1, !mcsema_real_eip !159
  %167 = load i1* %ZF_val, !mcsema_real_eip !159
  store i1 %167, i1* %ZF, align 1, !mcsema_real_eip !159
  %168 = load i1* %SF_val, !mcsema_real_eip !159
  store i1 %168, i1* %SF, align 1, !mcsema_real_eip !159
  %169 = load i1* %OF_val, !mcsema_real_eip !159
  store i1 %169, i1* %OF, align 1, !mcsema_real_eip !159
  %170 = load i1* %DF_val, !mcsema_real_eip !159
  store i1 %170, i1* %DF, align 1, !mcsema_real_eip !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !159
  %171 = load i1* %FPU_B_val, !mcsema_real_eip !159
  store i1 %171, i1* %FPU_B, align 1, !mcsema_real_eip !159
  %172 = load i1* %FPU_C3_val, !mcsema_real_eip !159
  store i1 %172, i1* %FPU_C3, align 1, !mcsema_real_eip !159
  %173 = load i3* %FPU_TOP_val, !mcsema_real_eip !159
  store i3 %173, i3* %FPU_TOP, align 1, !mcsema_real_eip !159
  %174 = load i1* %FPU_C2_val, !mcsema_real_eip !159
  store i1 %174, i1* %FPU_C2, align 1, !mcsema_real_eip !159
  %175 = load i1* %FPU_C1_val, !mcsema_real_eip !159
  store i1 %175, i1* %FPU_C1, align 1, !mcsema_real_eip !159
  %176 = load i1* %FPU_C0_val, !mcsema_real_eip !159
  store i1 %176, i1* %FPU_C0, align 1, !mcsema_real_eip !159
  %177 = load i1* %FPU_ES_val, !mcsema_real_eip !159
  store i1 %177, i1* %FPU_ES, align 1, !mcsema_real_eip !159
  %178 = load i1* %FPU_SF_val, !mcsema_real_eip !159
  store i1 %178, i1* %FPU_SF, align 1, !mcsema_real_eip !159
  %179 = load i1* %FPU_PE_val, !mcsema_real_eip !159
  store i1 %179, i1* %FPU_PE, align 1, !mcsema_real_eip !159
  %180 = load i1* %FPU_UE_val, !mcsema_real_eip !159
  store i1 %180, i1* %FPU_UE, align 1, !mcsema_real_eip !159
  %181 = load i1* %FPU_OE_val, !mcsema_real_eip !159
  store i1 %181, i1* %FPU_OE, align 1, !mcsema_real_eip !159
  %182 = load i1* %FPU_ZE_val, !mcsema_real_eip !159
  store i1 %182, i1* %FPU_ZE, align 1, !mcsema_real_eip !159
  %183 = load i1* %FPU_DE_val, !mcsema_real_eip !159
  store i1 %183, i1* %FPU_DE, align 1, !mcsema_real_eip !159
  %184 = load i1* %FPU_IE_val, !mcsema_real_eip !159
  store i1 %184, i1* %FPU_IE, align 1, !mcsema_real_eip !159
  %185 = load i1* %FPU_X_val, !mcsema_real_eip !159
  store i1 %185, i1* %FPU_X, align 1, !mcsema_real_eip !159
  %186 = load i2* %FPU_RC_val, !mcsema_real_eip !159
  store i2 %186, i2* %FPU_RC, align 1, !mcsema_real_eip !159
  %187 = load i2* %FPU_PC_val, !mcsema_real_eip !159
  store i2 %187, i2* %FPU_PC, align 1, !mcsema_real_eip !159
  %188 = load i1* %FPU_PM_val, !mcsema_real_eip !159
  store i1 %188, i1* %FPU_PM, align 1, !mcsema_real_eip !159
  %189 = load i1* %FPU_UM_val, !mcsema_real_eip !159
  store i1 %189, i1* %FPU_UM, align 1, !mcsema_real_eip !159
  %190 = load i1* %FPU_OM_val, !mcsema_real_eip !159
  store i1 %190, i1* %FPU_OM, align 1, !mcsema_real_eip !159
  %191 = load i1* %FPU_ZM_val, !mcsema_real_eip !159
  store i1 %191, i1* %FPU_ZM, align 1, !mcsema_real_eip !159
  %192 = load i1* %FPU_DM_val, !mcsema_real_eip !159
  store i1 %192, i1* %FPU_DM, align 1, !mcsema_real_eip !159
  %193 = load i1* %FPU_IM_val, !mcsema_real_eip !159
  store i1 %193, i1* %FPU_IM, align 1, !mcsema_real_eip !159
  %_head_p2i_13 = ptrtoint i64* %53 to i64
  %_head_cond_14 = icmp uge i64 %_head_p2i_13, %_local_stack_start_
  br i1 %_head_cond_14, label %194, label %195

; <label>:194                                     ; preds = %144
  %_offset_above_rbp_15 = sub i64 %_head_p2i_13, %_local_stack_start_
  %_address_in_parent_stack_16 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_15
  br label %195

; <label>:195                                     ; preds = %194, %144
  %196 = phi i64 [ %_head_p2i_13, %144 ], [ %_address_in_parent_stack_16, %194 ]
  %_address_ptr_in_parent_stack_17 = inttoptr i64 %196 to i64*
  %_new_load_18 = load i64* %_address_ptr_in_parent_stack_17
  store i64 %_new_load_18, i64* %52, align 4
  %197 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !159
  store i16 %197, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !159
  %198 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !159
  store i64 %198, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !159
  %199 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !159
  store i16 %199, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !159
  %200 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !159
  store i64 %200, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !159
  %201 = load i128* %XMM0_val, !mcsema_real_eip !159
  store i128 %201, i128* %XMM0, align 1, !mcsema_real_eip !159
  %202 = load i128* %XMM1_val, !mcsema_real_eip !159
  store i128 %202, i128* %XMM1, align 1, !mcsema_real_eip !159
  %203 = load i128* %XMM2_val, !mcsema_real_eip !159
  store i128 %203, i128* %XMM2, align 1, !mcsema_real_eip !159
  %204 = load i128* %XMM3_val, !mcsema_real_eip !159
  store i128 %204, i128* %XMM3, align 1, !mcsema_real_eip !159
  %205 = load i128* %XMM4_val, !mcsema_real_eip !159
  store i128 %205, i128* %XMM4, align 1, !mcsema_real_eip !159
  %206 = load i128* %XMM5_val, !mcsema_real_eip !159
  store i128 %206, i128* %XMM5, align 1, !mcsema_real_eip !159
  %207 = load i128* %XMM6_val, !mcsema_real_eip !159
  store i128 %207, i128* %XMM6, align 1, !mcsema_real_eip !159
  %208 = load i128* %XMM7_val, !mcsema_real_eip !159
  store i128 %208, i128* %XMM7, align 1, !mcsema_real_eip !159
  %209 = load i128* %XMM8_val, !mcsema_real_eip !159
  store i128 %209, i128* %XMM8, align 1, !mcsema_real_eip !159
  %210 = load i128* %XMM9_val, !mcsema_real_eip !159
  store i128 %210, i128* %XMM9, align 1, !mcsema_real_eip !159
  %211 = load i128* %XMM10_val, !mcsema_real_eip !159
  store i128 %211, i128* %XMM10, align 1, !mcsema_real_eip !159
  %212 = load i128* %XMM11_val, !mcsema_real_eip !159
  store i128 %212, i128* %XMM11, align 1, !mcsema_real_eip !159
  %213 = load i128* %XMM12_val, !mcsema_real_eip !159
  store i128 %213, i128* %XMM12, align 1, !mcsema_real_eip !159
  %214 = load i128* %XMM13_val, !mcsema_real_eip !159
  store i128 %214, i128* %XMM13, align 1, !mcsema_real_eip !159
  %215 = load i128* %XMM14_val, !mcsema_real_eip !159
  store i128 %215, i128* %XMM14, align 1, !mcsema_real_eip !159
  %216 = load i128* %XMM15_val, !mcsema_real_eip !159
  store i128 %216, i128* %XMM15, align 1, !mcsema_real_eip !159
  %217 = load i64* %STACK_BASE_val, !mcsema_real_eip !159
  store i64 %217, i64* %STACK_BASE, align 1, !mcsema_real_eip !159
  %218 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !159
  store i64 %218, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x1c:                                       ; preds = %281, %block_0x1c.preheader
  %219 = load i64* %RBP_val, !mcsema_real_eip !160
  %220 = add i64 %219, -8, !mcsema_real_eip !160
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !160
  %222 = bitcast i64* %221 to i32*
  store i32 0, i32* %222, !mcsema_real_eip !160
  %223 = load i64* %RBP_val, !mcsema_real_eip !161
  %224 = add i64 %223, -8, !mcsema_real_eip !161
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !161
  %226 = bitcast i64* %225 to i32*
  %_head_p2i_19 = ptrtoint i32* %226 to i64
  %_head_cond_20 = icmp uge i64 %_head_p2i_19, %_local_stack_start_
  br i1 %_head_cond_20, label %227, label %228

; <label>:227                                     ; preds = %block_0x1c
  %_offset_above_rbp_21 = sub i64 %_head_p2i_19, %_local_stack_start_
  %_address_in_parent_stack_22 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_21
  br label %228

; <label>:228                                     ; preds = %227, %block_0x1c
  %229 = phi i64 [ %_head_p2i_19, %block_0x1c ], [ %_address_in_parent_stack_22, %227 ]
  %_address_ptr_in_parent_stack_23 = inttoptr i64 %229 to i32*
  %_new_load_24 = load i32* %_address_ptr_in_parent_stack_23
  %230 = add i32 %_new_load_24, -11
  %231 = xor i32 %230, %_new_load_24, !mcsema_real_eip !161
  %232 = and i32 %231, 16, !mcsema_real_eip !161
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !161
  store i1 %233, i1* %AF_val, !mcsema_real_eip !161
  %234 = trunc i32 %230 to i8, !mcsema_real_eip !161
  %235 = tail call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !161
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  store i1 %237, i1* %PF_val, !mcsema_real_eip !161
  %238 = icmp eq i32 %230, 0, !mcsema_real_eip !161
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !161
  %239 = icmp slt i32 %230, 0
  store i1 %239, i1* %SF_val, !mcsema_real_eip !161
  %240 = icmp ult i32 %_new_load_24, 11, !mcsema_real_eip !161
  store i1 %240, i1* %CF_val, !mcsema_real_eip !161
  %241 = and i32 %231, %_new_load_24, !mcsema_real_eip !161
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF_val, !mcsema_real_eip !161
  %tmp70 = xor i1 %239, %242
  br i1 %tmp70, label %block_0x30.preheader, label %block_0x74, !mcsema_real_eip !162

block_0x30.preheader:                             ; preds = %228
  br label %block_0x30

block_0x74.loopexit:                              ; preds = %377
  br label %block_0x74

block_0x74:                                       ; preds = %block_0x74.loopexit, %228
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI_val, !mcsema_real_eip !163
  %243 = load i64* %RSI_val, !mcsema_real_eip !164
  %244 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64 %243), !mcsema_real_eip !164
  store i64 %244, i64* %RAX_val, !mcsema_real_eip !164
  %245 = load i64* %RBP_val, !mcsema_real_eip !165
  %246 = add i64 %245, -16, !mcsema_real_eip !165
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !165
  %248 = trunc i64 %244 to i32, !mcsema_real_eip !165
  %249 = bitcast i64* %247 to i32*
  store i32 %248, i32* %249, !mcsema_real_eip !165
  %250 = load i64* %RBP_val, !mcsema_real_eip !166
  %251 = add i64 %250, -4, !mcsema_real_eip !166
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !166
  %253 = bitcast i64* %252 to i32*
  %_head_p2i_25 = ptrtoint i32* %253 to i64
  %_head_cond_26 = icmp uge i64 %_head_p2i_25, %_local_stack_start_
  br i1 %_head_cond_26, label %254, label %255

; <label>:254                                     ; preds = %block_0x74
  %_offset_above_rbp_27 = sub i64 %_head_p2i_25, %_local_stack_start_
  %_address_in_parent_stack_28 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_27
  br label %255

; <label>:255                                     ; preds = %254, %block_0x74
  %256 = phi i64 [ %_head_p2i_25, %block_0x74 ], [ %_address_in_parent_stack_28, %254 ]
  %_address_ptr_in_parent_stack_29 = inttoptr i64 %256 to i32*
  %_new_load_30 = load i32* %_address_ptr_in_parent_stack_29
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_30, i32 1)
  %257 = extractvalue { i32, i1 } %uadd73, 0
  %258 = xor i32 %257, %_new_load_30, !mcsema_real_eip !167
  %259 = and i32 %258, 16, !mcsema_real_eip !167
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !167
  store i1 %260, i1* %AF_val, !mcsema_real_eip !167
  %261 = icmp slt i32 %257, 0
  store i1 %261, i1* %SF_val, !mcsema_real_eip !167
  %262 = icmp eq i32 %257, 0, !mcsema_real_eip !167
  store i1 %262, i1* %ZF_val, !mcsema_real_eip !167
  %263 = xor i32 %_new_load_30, -2147483648, !mcsema_real_eip !167
  %264 = and i32 %258, %263, !mcsema_real_eip !167
  %265 = icmp slt i32 %264, 0
  store i1 %265, i1* %OF_val, !mcsema_real_eip !167
  %266 = trunc i32 %257 to i8, !mcsema_real_eip !167
  %267 = tail call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !167
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF_val, !mcsema_real_eip !167
  %270 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %270, i1* %CF_val, !mcsema_real_eip !167
  %271 = zext i32 %257 to i64, !mcsema_real_eip !167
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !167
  %272 = load i64* %RBP_val, !mcsema_real_eip !168
  %273 = add i64 %272, -4, !mcsema_real_eip !168
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !168
  %275 = bitcast i64* %274 to i32*
  store i32 %257, i32* %275, !mcsema_real_eip !168
  %276 = load i64* %RBP_val, !mcsema_real_eip !152
  %277 = add i64 %276, -4, !mcsema_real_eip !152
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !152
  %279 = bitcast i64* %278 to i32*
  %_head_p2i_31 = ptrtoint i32* %279 to i64
  %_head_cond_32 = icmp uge i64 %_head_p2i_31, %_local_stack_start_
  br i1 %_head_cond_32, label %280, label %281

; <label>:280                                     ; preds = %255
  %_offset_above_rbp_33 = sub i64 %_head_p2i_31, %_local_stack_start_
  %_address_in_parent_stack_34 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_33
  br label %281

; <label>:281                                     ; preds = %280, %255
  %282 = phi i64 [ %_head_p2i_31, %255 ], [ %_address_in_parent_stack_34, %280 ]
  %_address_ptr_in_parent_stack_35 = inttoptr i64 %282 to i32*
  %_new_load_36 = load i32* %_address_ptr_in_parent_stack_35
  %283 = add i32 %_new_load_36, -7
  %284 = xor i32 %283, %_new_load_36, !mcsema_real_eip !152
  %285 = and i32 %284, 16, !mcsema_real_eip !152
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !152
  store i1 %286, i1* %AF_val, !mcsema_real_eip !152
  %287 = trunc i32 %283 to i8, !mcsema_real_eip !152
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !152
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !152
  %291 = icmp eq i32 %283, 0, !mcsema_real_eip !152
  store i1 %291, i1* %ZF_val, !mcsema_real_eip !152
  %292 = icmp slt i32 %283, 0
  store i1 %292, i1* %SF_val, !mcsema_real_eip !152
  %293 = icmp ult i32 %_new_load_36, 7, !mcsema_real_eip !152
  store i1 %293, i1* %CF_val, !mcsema_real_eip !152
  %294 = and i32 %284, %_new_load_36, !mcsema_real_eip !152
  %295 = icmp slt i32 %294, 0
  store i1 %295, i1* %OF_val, !mcsema_real_eip !152
  %tmp74 = xor i1 %292, %295
  br i1 %tmp74, label %block_0x1c, label %block_0x98.loopexit, !mcsema_real_eip !153

block_0x30:                                       ; preds = %377, %block_0x30.preheader
  store i64 ptrtoint (%1* @data_0x3ff to i64), i64* %RDI_val, !mcsema_real_eip !169
  store i64 ptrtoint (%0* @data_0x3b2 to i64), i64* %RAX_val, !mcsema_real_eip !170
  %296 = load i64* %RBP_val, !mcsema_real_eip !171
  %297 = add i64 %296, -8, !mcsema_real_eip !171
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !171
  %299 = bitcast i64* %298 to i32*
  %_head_p2i_37 = ptrtoint i32* %299 to i64
  %_head_cond_38 = icmp uge i64 %_head_p2i_37, %_local_stack_start_
  br i1 %_head_cond_38, label %300, label %301

; <label>:300                                     ; preds = %block_0x30
  %_offset_above_rbp_39 = sub i64 %_head_p2i_37, %_local_stack_start_
  %_address_in_parent_stack_40 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_39
  br label %301

; <label>:301                                     ; preds = %300, %block_0x30
  %302 = phi i64 [ %_head_p2i_37, %block_0x30 ], [ %_address_in_parent_stack_40, %300 ]
  %_address_ptr_in_parent_stack_41 = inttoptr i64 %302 to i32*
  %_new_load_42 = load i32* %_address_ptr_in_parent_stack_41
  %303 = sext i32 %_new_load_42 to i64, !mcsema_real_eip !171
  store i64 %303, i64* %RCX_val, !mcsema_real_eip !171
  %304 = load i64* %RBP_val, !mcsema_real_eip !172
  %305 = add i64 %304, -4, !mcsema_real_eip !172
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !172
  %307 = bitcast i64* %306 to i32*
  %_head_p2i_43 = ptrtoint i32* %307 to i64
  %_head_cond_44 = icmp uge i64 %_head_p2i_43, %_local_stack_start_
  br i1 %_head_cond_44, label %308, label %309

; <label>:308                                     ; preds = %301
  %_offset_above_rbp_45 = sub i64 %_head_p2i_43, %_local_stack_start_
  %_address_in_parent_stack_46 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_45
  br label %309

; <label>:309                                     ; preds = %308, %301
  %310 = phi i64 [ %_head_p2i_43, %301 ], [ %_address_in_parent_stack_46, %308 ]
  %_address_ptr_in_parent_stack_47 = inttoptr i64 %310 to i32*
  %_new_load_48 = load i32* %_address_ptr_in_parent_stack_47
  %311 = sext i32 %_new_load_48 to i64, !mcsema_real_eip !172
  %312 = mul i64 %311, 11, !mcsema_real_eip !173
  store i64 %312, i64* %RDX_val, !mcsema_real_eip !173
  %313 = load i64* %RAX_val, !mcsema_real_eip !174
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %312, i64 %313)
  %314 = extractvalue { i64, i1 } %uadd, 0
  %315 = xor i64 %314, %313, !mcsema_real_eip !174
  %316 = xor i64 %315, %312, !mcsema_real_eip !174
  %317 = and i64 %316, 16, !mcsema_real_eip !174
  %318 = icmp ne i64 %317, 0, !mcsema_real_eip !174
  store i1 %318, i1* %AF_val, !mcsema_real_eip !174
  %319 = icmp slt i64 %314, 0
  store i1 %319, i1* %SF_val, !mcsema_real_eip !174
  %320 = icmp eq i64 %314, 0, !mcsema_real_eip !174
  store i1 %320, i1* %ZF_val, !mcsema_real_eip !174
  %321 = xor i64 %313, -9223372036854775808, !mcsema_real_eip !174
  %322 = xor i64 %321, %312, !mcsema_real_eip !174
  %323 = and i64 %315, %322, !mcsema_real_eip !174
  %324 = icmp slt i64 %323, 0
  store i1 %324, i1* %OF_val, !mcsema_real_eip !174
  %325 = trunc i64 %314 to i8, !mcsema_real_eip !174
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !174
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF_val, !mcsema_real_eip !174
  %329 = extractvalue { i64, i1 } %uadd, 1
  store i1 %329, i1* %CF_val, !mcsema_real_eip !174
  store i64 %314, i64* %RAX_val, !mcsema_real_eip !174
  %330 = load i64* %RCX_val, !mcsema_real_eip !175
  %331 = add i64 %330, %314, !mcsema_real_eip !175
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !175
  %333 = bitcast i64* %332 to i8*
  %_head_p2i_49 = ptrtoint i8* %333 to i64
  %_head_cond_50 = icmp uge i64 %_head_p2i_49, %_local_stack_start_
  br i1 %_head_cond_50, label %334, label %335

; <label>:334                                     ; preds = %309
  %_offset_above_rbp_51 = sub i64 %_head_p2i_49, %_local_stack_start_
  %_address_in_parent_stack_52 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_51
  br label %335

; <label>:335                                     ; preds = %334, %309
  %336 = phi i64 [ %_head_p2i_49, %309 ], [ %_address_in_parent_stack_52, %334 ]
  %_address_ptr_in_parent_stack_53 = inttoptr i64 %336 to i8*
  %_new_load_54 = load i8* %_address_ptr_in_parent_stack_53
  %337 = sext i8 %_new_load_54 to i32, !mcsema_real_eip !175
  %338 = zext i32 %337 to i64, !mcsema_real_eip !175
  store i64 %338, i64* %RSI_val, !mcsema_real_eip !175
  %339 = load i64* %RDI_val, !mcsema_real_eip !176
  %340 = tail call x86_64_sysvcc i64 @printf(i64 %339, i64 %338), !mcsema_real_eip !176
  store i64 %340, i64* %RAX_val, !mcsema_real_eip !176
  %341 = load i64* %RBP_val, !mcsema_real_eip !177
  %342 = add i64 %341, -12, !mcsema_real_eip !177
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !177
  %344 = trunc i64 %340 to i32, !mcsema_real_eip !177
  %345 = bitcast i64* %343 to i32*
  store i32 %344, i32* %345, !mcsema_real_eip !177
  %346 = load i64* %RBP_val, !mcsema_real_eip !178
  %347 = add i64 %346, -8, !mcsema_real_eip !178
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !178
  %349 = bitcast i64* %348 to i32*
  %_head_p2i_55 = ptrtoint i32* %349 to i64
  %_head_cond_56 = icmp uge i64 %_head_p2i_55, %_local_stack_start_
  br i1 %_head_cond_56, label %350, label %351

; <label>:350                                     ; preds = %335
  %_offset_above_rbp_57 = sub i64 %_head_p2i_55, %_local_stack_start_
  %_address_in_parent_stack_58 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_57
  br label %351

; <label>:351                                     ; preds = %350, %335
  %352 = phi i64 [ %_head_p2i_55, %335 ], [ %_address_in_parent_stack_58, %350 ]
  %_address_ptr_in_parent_stack_59 = inttoptr i64 %352 to i32*
  %_new_load_60 = load i32* %_address_ptr_in_parent_stack_59
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_60, i32 1)
  %353 = extractvalue { i32, i1 } %uadd71, 0
  %354 = xor i32 %353, %_new_load_60, !mcsema_real_eip !179
  %355 = and i32 %354, 16, !mcsema_real_eip !179
  %356 = icmp ne i32 %355, 0, !mcsema_real_eip !179
  store i1 %356, i1* %AF_val, !mcsema_real_eip !179
  %357 = icmp slt i32 %353, 0
  store i1 %357, i1* %SF_val, !mcsema_real_eip !179
  %358 = icmp eq i32 %353, 0, !mcsema_real_eip !179
  store i1 %358, i1* %ZF_val, !mcsema_real_eip !179
  %359 = xor i32 %_new_load_60, -2147483648, !mcsema_real_eip !179
  %360 = and i32 %354, %359, !mcsema_real_eip !179
  %361 = icmp slt i32 %360, 0
  store i1 %361, i1* %OF_val, !mcsema_real_eip !179
  %362 = trunc i32 %353 to i8, !mcsema_real_eip !179
  %363 = tail call i8 @llvm.ctpop.i8(i8 %362), !mcsema_real_eip !179
  %364 = and i8 %363, 1
  %365 = icmp eq i8 %364, 0
  store i1 %365, i1* %PF_val, !mcsema_real_eip !179
  %366 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %366, i1* %CF_val, !mcsema_real_eip !179
  %367 = zext i32 %353 to i64, !mcsema_real_eip !179
  store i64 %367, i64* %RAX_val, !mcsema_real_eip !179
  %368 = load i64* %RBP_val, !mcsema_real_eip !180
  %369 = add i64 %368, -8, !mcsema_real_eip !180
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !180
  %371 = bitcast i64* %370 to i32*
  store i32 %353, i32* %371, !mcsema_real_eip !180
  %372 = load i64* %RBP_val, !mcsema_real_eip !161
  %373 = add i64 %372, -8, !mcsema_real_eip !161
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !161
  %375 = bitcast i64* %374 to i32*
  %_head_p2i_61 = ptrtoint i32* %375 to i64
  %_head_cond_62 = icmp uge i64 %_head_p2i_61, %_local_stack_start_
  br i1 %_head_cond_62, label %376, label %377

; <label>:376                                     ; preds = %351
  %_offset_above_rbp_63 = sub i64 %_head_p2i_61, %_local_stack_start_
  %_address_in_parent_stack_64 = add i64 %_parent_stack_end_ptr_, %_offset_above_rbp_63
  br label %377

; <label>:377                                     ; preds = %376, %351
  %378 = phi i64 [ %_head_p2i_61, %351 ], [ %_address_in_parent_stack_64, %376 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %378 to i32*
  %_new_load_66 = load i32* %_address_ptr_in_parent_stack_65
  %379 = add i32 %_new_load_66, -11
  %380 = xor i32 %379, %_new_load_66, !mcsema_real_eip !161
  %381 = and i32 %380, 16, !mcsema_real_eip !161
  %382 = icmp ne i32 %381, 0, !mcsema_real_eip !161
  store i1 %382, i1* %AF_val, !mcsema_real_eip !161
  %383 = trunc i32 %379 to i8, !mcsema_real_eip !161
  %384 = tail call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !161
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF_val, !mcsema_real_eip !161
  %387 = icmp eq i32 %379, 0, !mcsema_real_eip !161
  store i1 %387, i1* %ZF_val, !mcsema_real_eip !161
  %388 = icmp slt i32 %379, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !161
  %389 = icmp ult i32 %_new_load_66, 11, !mcsema_real_eip !161
  store i1 %389, i1* %CF_val, !mcsema_real_eip !161
  %390 = and i32 %380, %_new_load_66, !mcsema_real_eip !161
  %391 = icmp slt i32 %390, 0
  store i1 %391, i1* %OF_val, !mcsema_real_eip !161
  %tmp72 = xor i1 %388, %391
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
