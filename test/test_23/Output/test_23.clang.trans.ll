; ModuleID = 'Output/test_23.clang.trans.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x329 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

define internal x86_64_sysvcc void @sub_c0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 104
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 104
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
  store i64 %_local_stack_end_, i64* %RSP_val
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
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -104
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
  %91 = icmp ult i64 %79, 96, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 0, i64* %RAX_val, !mcsema_real_eip !5
  store i64 28, i64* %RDX_val, !mcsema_real_eip !6
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %95 = add i64 %94, -64, !mcsema_real_eip !7
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !7
  store i64 %97, i64* %RCX_val, !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x329 to i64), i64* %R8_val, !mcsema_real_eip !8
  %98 = add i64 %94, -4, !mcsema_real_eip !9
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !9
  %100 = bitcast i64* %99 to i32*
  store i32 0, i32* %100, !mcsema_real_eip !9
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %102 = add i64 %101, -8, !mcsema_real_eip !10
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !10
  %104 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !10
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !10
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %108 = add i64 %107, -16, !mcsema_real_eip !11
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !11
  %110 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %110, i64* %109, !mcsema_real_eip !11
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %112 = add i64 %111, -36, !mcsema_real_eip !12
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !12
  %114 = bitcast i64* %113 to i32*
  store i32 0, i32* %114, !mcsema_real_eip !12
  %115 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %116 = add i64 %115, -20, !mcsema_real_eip !13
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !13
  %118 = bitcast i64* %117 to i32*
  store i32 1, i32* %118, !mcsema_real_eip !13
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %120 = add i64 %119, -24, !mcsema_real_eip !14
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !14
  %122 = bitcast i64* %121 to i32*
  store i32 1, i32* %122, !mcsema_real_eip !14
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %124 = add i64 %123, -20, !mcsema_real_eip !15
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !15
  %126 = bitcast i64* %125 to i32*
  %127 = load i32, i32* %126, !mcsema_real_eip !15
  %128 = sext i32 %127 to i64, !mcsema_real_eip !15
  store i64 %128, i64* %RSI_val, !mcsema_real_eip !15
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %130 = add i64 %129, -24, !mcsema_real_eip !16
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !16
  %132 = bitcast i64* %131 to i32*
  %133 = load i32, i32* %132, !mcsema_real_eip !16
  %134 = sext i32 %133 to i64, !mcsema_real_eip !16
  %135 = mul i64 %134, 11, !mcsema_real_eip !17
  store i64 %135, i64* %R9_val, !mcsema_real_eip !17
  %136 = load i64, i64* %R8_val, !mcsema_real_eip !18
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
  %153 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  %154 = add i64 %153, %137, !mcsema_real_eip !19
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !19
  %156 = bitcast i64* %155 to i8*
  store i8 88, i8* %156, !mcsema_real_eip !19
  %157 = load i64, i64* %RAX_val, !mcsema_real_eip !20
  %158 = and i64 %157, 4294967295
  store i64 %158, i64* %RDI_val, !mcsema_real_eip !20
  %159 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %159, i64* %RSI_val, !mcsema_real_eip !21
  %160 = load i64, i64* %RDX_val, !mcsema_real_eip !22
  %161 = tail call x86_64_sysvcc i64 @read(i64 %158, i64 %159, i64 %160), !mcsema_real_eip !22
  store i64 %161, i64* %RAX_val, !mcsema_real_eip !22
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %163 = add i64 %162, -72, !mcsema_real_eip !23
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !23
  store i64 %161, i64* %164, !mcsema_real_eip !23
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %166 = add i64 %165, -36, !mcsema_real_eip !24
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !24
  %168 = bitcast i64* %167 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !24
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
  br i1 %tmp, label %block_0x13a.preheader, label %block_0x319, !mcsema_real_eip !25

block_0x13a.preheader:                            ; preds = %entry
  br label %block_0x13a

block_0x319.loopexit:                             ; preds = %block_0x2e8
  br label %block_0x319

block_0x319:                                      ; preds = %block_0x319.loopexit, %entry
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %184 = add i64 %183, -4, !mcsema_real_eip !26
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !26
  %186 = bitcast i64* %185 to i32*
  store i32 1, i32* %186, !mcsema_real_eip !26
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %188 = add i64 %187, -4, !mcsema_real_eip !27
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !27
  %190 = bitcast i64* %189 to i32*
  %191 = load i32, i32* %190, !mcsema_real_eip !27
  %192 = zext i32 %191 to i64, !mcsema_real_eip !27
  store i64 %192, i64* %RAX_val, !mcsema_real_eip !27
  %193 = load i64, i64* %RSP_val, !mcsema_real_eip !28
  %uadd158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 96)
  %194 = extractvalue { i64, i1 } %uadd158, 0
  %195 = xor i64 %194, %193, !mcsema_real_eip !28
  %196 = and i64 %195, 16, !mcsema_real_eip !28
  %197 = icmp ne i64 %196, 0, !mcsema_real_eip !28
  store i1 %197, i1* %AF_val, !mcsema_real_eip !28
  %198 = icmp slt i64 %194, 0
  store i1 %198, i1* %SF_val, !mcsema_real_eip !28
  %199 = icmp eq i64 %194, 0, !mcsema_real_eip !28
  store i1 %199, i1* %ZF_val, !mcsema_real_eip !28
  %200 = xor i64 %193, -9223372036854775808, !mcsema_real_eip !28
  %201 = and i64 %195, %200, !mcsema_real_eip !28
  %202 = icmp slt i64 %201, 0
  store i1 %202, i1* %OF_val, !mcsema_real_eip !28
  %203 = trunc i64 %194 to i8, !mcsema_real_eip !28
  %204 = tail call i8 @llvm.ctpop.i8(i8 %203), !mcsema_real_eip !28
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  store i1 %206, i1* %PF_val, !mcsema_real_eip !28
  %207 = extractvalue { i64, i1 } %uadd158, 1
  store i1 %207, i1* %CF_val, !mcsema_real_eip !28
  store i64 %194, i64* %RSP_val, !mcsema_real_eip !28
  %208 = inttoptr i64 %194 to i64*, !mcsema_real_eip !29
  %209 = load i64, i64* %208, !mcsema_real_eip !29
  store i64 %209, i64* %RBP_val, !mcsema_real_eip !29
  %210 = add i64 %194, 16, !mcsema_real_eip !30
  store i64 %210, i64* %RSP_val, !mcsema_real_eip !30
  %211 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %211, i64* %RAX, !mcsema_real_eip !30
  %212 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %212, i64* %RBX, !mcsema_real_eip !30
  %213 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %213, i64* %RCX, !mcsema_real_eip !30
  %214 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %214, i64* %RDX, !mcsema_real_eip !30
  %215 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %215, i64* %RSI, !mcsema_real_eip !30
  %216 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %216, i64* %RDI, !mcsema_real_eip !30
  %217 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  store i64 %217, i64* %RSP, !mcsema_real_eip !30
  %218 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  store i64 %218, i64* %RBP, !mcsema_real_eip !30
  %219 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %219, i64* %R8, !mcsema_real_eip !30
  %220 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %220, i64* %R9, !mcsema_real_eip !30
  %221 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %221, i64* %R10, !mcsema_real_eip !30
  %222 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %222, i64* %R11, !mcsema_real_eip !30
  %223 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %223, i64* %R12, !mcsema_real_eip !30
  %224 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %224, i64* %R13, !mcsema_real_eip !30
  %225 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %225, i64* %R14, !mcsema_real_eip !30
  %226 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %226, i64* %R15, !mcsema_real_eip !30
  %227 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %227, i64* %RIP, !mcsema_real_eip !30
  %228 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %228, i1* %CF, align 1, !mcsema_real_eip !30
  %229 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %229, i1* %PF, align 1, !mcsema_real_eip !30
  %230 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %230, i1* %AF, align 1, !mcsema_real_eip !30
  %231 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %231, i1* %ZF, align 1, !mcsema_real_eip !30
  %232 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %232, i1* %SF, align 1, !mcsema_real_eip !30
  %233 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %233, i1* %OF, align 1, !mcsema_real_eip !30
  %234 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %234, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %235 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %235, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %236 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %236, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %237 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %237, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %238 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %238, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %239 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %239, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %240 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %240, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %241 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %241, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %242 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %242, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %243 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %243, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %244 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %244, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %245 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %245, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %246 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %246, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %247 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %247, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %248 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %248, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %249 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %249, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %250 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %250, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %251 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %251, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %252 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %252, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %253 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %253, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %254 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %254, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %255 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %255, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %256 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %256, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %257 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %257, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %258 = load i64, i64* %53, align 4
  store i64 %258, i64* %52, align 4
  %259 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %259, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %260 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %260, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %261 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %261, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %262 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %262, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %263 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %263, i128* %XMM0, align 1, !mcsema_real_eip !30
  %264 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %264, i128* %XMM1, align 1, !mcsema_real_eip !30
  %265 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %265, i128* %XMM2, align 1, !mcsema_real_eip !30
  %266 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %266, i128* %XMM3, align 1, !mcsema_real_eip !30
  %267 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %267, i128* %XMM4, align 1, !mcsema_real_eip !30
  %268 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %268, i128* %XMM5, align 1, !mcsema_real_eip !30
  %269 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %269, i128* %XMM6, align 1, !mcsema_real_eip !30
  %270 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %270, i128* %XMM7, align 1, !mcsema_real_eip !30
  %271 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %271, i128* %XMM8, align 1, !mcsema_real_eip !30
  %272 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %272, i128* %XMM9, align 1, !mcsema_real_eip !30
  %273 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %273, i128* %XMM10, align 1, !mcsema_real_eip !30
  %274 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %274, i128* %XMM11, align 1, !mcsema_real_eip !30
  %275 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %275, i128* %XMM12, align 1, !mcsema_real_eip !30
  %276 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %276, i128* %XMM13, align 1, !mcsema_real_eip !30
  %277 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %277, i128* %XMM14, align 1, !mcsema_real_eip !30
  %278 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %278, i128* %XMM15, align 1, !mcsema_real_eip !30
  %279 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %279, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %280 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %280, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30

block_0x13a:                                      ; preds = %block_0x2e8, %block_0x13a.preheader
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %282 = add i64 %281, -20, !mcsema_real_eip !31
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !31
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !31
  %286 = zext i32 %285 to i64, !mcsema_real_eip !31
  store i64 %286, i64* %RAX_val, !mcsema_real_eip !31
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %288 = add i64 %287, -28, !mcsema_real_eip !32
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !32
  %290 = bitcast i64* %289 to i32*
  store i32 %285, i32* %290, !mcsema_real_eip !32
  %291 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %292 = add i64 %291, -24, !mcsema_real_eip !33
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !33
  %294 = bitcast i64* %293 to i32*
  %295 = load i32, i32* %294, !mcsema_real_eip !33
  %296 = zext i32 %295 to i64, !mcsema_real_eip !33
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !33
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %298 = add i64 %297, -32, !mcsema_real_eip !34
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !34
  %300 = bitcast i64* %299 to i32*
  store i32 %295, i32* %300, !mcsema_real_eip !34
  %301 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %302 = add i64 %301, -36, !mcsema_real_eip !35
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !35
  %304 = bitcast i64* %303 to i32*
  %305 = load i32, i32* %304, !mcsema_real_eip !35
  %306 = sext i32 %305 to i64, !mcsema_real_eip !35
  store i64 %306, i64* %RCX_val, !mcsema_real_eip !35
  %307 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %308 = add i64 %307, -64, !mcsema_real_eip !36
  %309 = add i64 %308, %306, !mcsema_real_eip !36
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !36
  %311 = bitcast i64* %310 to i8*
  %312 = load i8, i8* %311, !mcsema_real_eip !36
  %313 = sext i8 %312 to i32, !mcsema_real_eip !36
  %314 = zext i32 %313 to i64, !mcsema_real_eip !36
  store i64 %314, i64* %RAX_val, !mcsema_real_eip !36
  %315 = add nsw i32 %313, -114
  %316 = xor i32 %315, %313, !mcsema_real_eip !37
  %317 = and i32 %316, 16
  %318 = icmp eq i32 %317, 0
  store i1 %318, i1* %AF_val, !mcsema_real_eip !37
  %319 = trunc i32 %315 to i8, !mcsema_real_eip !37
  %320 = tail call i8 @llvm.ctpop.i8(i8 %319), !mcsema_real_eip !37
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  store i1 %322, i1* %PF_val, !mcsema_real_eip !37
  %323 = icmp eq i32 %315, 0, !mcsema_real_eip !37
  store i1 %323, i1* %ZF_val, !mcsema_real_eip !37
  %324 = icmp slt i32 %315, 0
  store i1 %324, i1* %SF_val, !mcsema_real_eip !37
  %325 = icmp ult i8 %312, 114
  store i1 %325, i1* %CF_val, !mcsema_real_eip !37
  %326 = and i32 %316, %313, !mcsema_real_eip !37
  %327 = icmp slt i32 %326, 0
  store i1 %327, i1* %OF_val, !mcsema_real_eip !37
  %328 = zext i32 %315 to i64, !mcsema_real_eip !37
  store i64 %328, i64* %RDX_val, !mcsema_real_eip !37
  %329 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %330 = add i64 %329, -76, !mcsema_real_eip !38
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !38
  %332 = load i64, i64* %RAX_val, !mcsema_real_eip !38
  %333 = trunc i64 %332 to i32, !mcsema_real_eip !38
  %334 = bitcast i64* %331 to i32*
  store i32 %333, i32* %334, !mcsema_real_eip !38
  %335 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %336 = add i64 %335, -80, !mcsema_real_eip !39
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !39
  %338 = load i64, i64* %RDX_val, !mcsema_real_eip !39
  %339 = trunc i64 %338 to i32, !mcsema_real_eip !39
  %340 = bitcast i64* %337 to i32*
  store i32 %339, i32* %340, !mcsema_real_eip !39
  %341 = load i1, i1* %OF_val, !mcsema_real_eip !40
  %342 = load i1, i1* %SF_val, !mcsema_real_eip !40
  %tmp139 = xor i1 %342, %341
  %343 = load i1, i1* %ZF_val, !mcsema_real_eip !40
  %.demorgan = or i1 %343, %tmp139
  %344 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %345 = add i64 %344, -76, !mcsema_real_eip !41
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !41
  %347 = bitcast i64* %346 to i32*
  %348 = load i32, i32* %347, !mcsema_real_eip !41
  %349 = zext i32 %348 to i64, !mcsema_real_eip !41
  store i64 %349, i64* %RAX_val, !mcsema_real_eip !41
  br i1 %.demorgan, label %block_0x165, label %block_0x18d, !mcsema_real_eip !40

block_0x18d:                                      ; preds = %block_0x13a
  %350 = add i32 %348, -115
  %351 = xor i32 %350, %348, !mcsema_real_eip !42
  %352 = and i32 %351, 16
  %353 = icmp eq i32 %352, 0
  store i1 %353, i1* %AF_val, !mcsema_real_eip !42
  %354 = trunc i32 %350 to i8, !mcsema_real_eip !42
  %355 = tail call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !42
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  store i1 %357, i1* %PF_val, !mcsema_real_eip !42
  %358 = icmp eq i32 %350, 0, !mcsema_real_eip !42
  store i1 %358, i1* %ZF_val, !mcsema_real_eip !42
  %359 = icmp slt i32 %350, 0
  store i1 %359, i1* %SF_val, !mcsema_real_eip !42
  %360 = icmp ult i32 %348, 115, !mcsema_real_eip !42
  store i1 %360, i1* %CF_val, !mcsema_real_eip !42
  %361 = and i32 %351, %348, !mcsema_real_eip !42
  %362 = icmp slt i32 %361, 0
  store i1 %362, i1* %OF_val, !mcsema_real_eip !42
  %363 = zext i32 %350 to i64, !mcsema_real_eip !42
  store i64 %363, i64* %RAX_val, !mcsema_real_eip !42
  %364 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %365 = add i64 %364, -92, !mcsema_real_eip !43
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !43
  %367 = bitcast i64* %366 to i32*
  store i32 %350, i32* %367, !mcsema_real_eip !43
  %368 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  br i1 %368, label %block_0x1c5, label %block_0x1a1, !mcsema_real_eip !44

block_0x165:                                      ; preds = %block_0x13a
  %370 = add i32 %348, -97
  %371 = xor i32 %370, %348, !mcsema_real_eip !46
  %372 = and i32 %371, 16, !mcsema_real_eip !46
  %373 = icmp ne i32 %372, 0, !mcsema_real_eip !46
  store i1 %373, i1* %AF_val, !mcsema_real_eip !46
  %374 = trunc i32 %370 to i8, !mcsema_real_eip !46
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !46
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF_val, !mcsema_real_eip !46
  %378 = icmp eq i32 %370, 0, !mcsema_real_eip !46
  store i1 %378, i1* %ZF_val, !mcsema_real_eip !46
  %379 = icmp slt i32 %370, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !46
  %380 = icmp ult i32 %348, 97, !mcsema_real_eip !46
  store i1 %380, i1* %CF_val, !mcsema_real_eip !46
  %381 = and i32 %371, %348, !mcsema_real_eip !46
  %382 = icmp slt i32 %381, 0
  store i1 %382, i1* %OF_val, !mcsema_real_eip !46
  %383 = zext i32 %370 to i64, !mcsema_real_eip !46
  store i64 %383, i64* %RAX_val, !mcsema_real_eip !46
  %384 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %385 = add i64 %384, -84, !mcsema_real_eip !47
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !47
  %387 = bitcast i64* %386 to i32*
  store i32 %370, i32* %387, !mcsema_real_eip !47
  %388 = load i1, i1* %ZF_val, !mcsema_real_eip !48
  %389 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  br i1 %388, label %block_0x1d5, label %block_0x179, !mcsema_real_eip !48

block_0x1c5:                                      ; preds = %block_0x18d
  %390 = add i64 %369, -24, !mcsema_real_eip !45
  %391 = inttoptr i64 %390 to i64*, !mcsema_real_eip !45
  %392 = bitcast i64* %391 to i32*
  %393 = load i32, i32* %392, !mcsema_real_eip !45
  %uadd163 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %393, i32 1)
  %394 = extractvalue { i32, i1 } %uadd163, 0
  %395 = xor i32 %394, %393, !mcsema_real_eip !50
  %396 = and i32 %395, 16, !mcsema_real_eip !50
  %397 = icmp ne i32 %396, 0, !mcsema_real_eip !50
  store i1 %397, i1* %AF_val, !mcsema_real_eip !50
  %398 = icmp slt i32 %394, 0
  store i1 %398, i1* %SF_val, !mcsema_real_eip !50
  %399 = icmp eq i32 %394, 0, !mcsema_real_eip !50
  store i1 %399, i1* %ZF_val, !mcsema_real_eip !50
  %400 = xor i32 %393, -2147483648, !mcsema_real_eip !50
  %401 = and i32 %395, %400, !mcsema_real_eip !50
  %402 = icmp slt i32 %401, 0
  store i1 %402, i1* %OF_val, !mcsema_real_eip !50
  %403 = trunc i32 %394 to i8, !mcsema_real_eip !50
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !50
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !50
  %407 = extractvalue { i32, i1 } %uadd163, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !50
  %408 = zext i32 %394 to i64, !mcsema_real_eip !50
  store i64 %408, i64* %RAX_val, !mcsema_real_eip !50
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %410 = add i64 %409, -24, !mcsema_real_eip !51
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !51
  %412 = bitcast i64* %411 to i32*
  store i32 %394, i32* %412, !mcsema_real_eip !51
  br label %block_0x201, !mcsema_real_eip !52

block_0x1d5:                                      ; preds = %block_0x165
  %413 = add i64 %389, -20, !mcsema_real_eip !49
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !49
  %415 = bitcast i64* %414 to i32*
  %416 = load i32, i32* %415, !mcsema_real_eip !49
  %uadd160 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 -1)
  %417 = extractvalue { i32, i1 } %uadd160, 0
  %418 = xor i32 %417, %416, !mcsema_real_eip !53
  %419 = and i32 %418, 16
  %420 = icmp eq i32 %419, 0
  store i1 %420, i1* %AF_val, !mcsema_real_eip !53
  %421 = icmp slt i32 %417, 0
  store i1 %421, i1* %SF_val, !mcsema_real_eip !53
  %422 = icmp eq i32 %417, 0, !mcsema_real_eip !53
  store i1 %422, i1* %ZF_val, !mcsema_real_eip !53
  %423 = and i32 %418, %416, !mcsema_real_eip !53
  %424 = icmp slt i32 %423, 0
  store i1 %424, i1* %OF_val, !mcsema_real_eip !53
  %425 = trunc i32 %417 to i8, !mcsema_real_eip !53
  %426 = tail call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !53
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF_val, !mcsema_real_eip !53
  %429 = extractvalue { i32, i1 } %uadd160, 1
  store i1 %429, i1* %CF_val, !mcsema_real_eip !53
  %430 = zext i32 %417 to i64, !mcsema_real_eip !53
  store i64 %430, i64* %RAX_val, !mcsema_real_eip !53
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %432 = add i64 %431, -20, !mcsema_real_eip !54
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !54
  %434 = bitcast i64* %433 to i32*
  store i32 %417, i32* %434, !mcsema_real_eip !54
  br label %block_0x201, !mcsema_real_eip !55

block_0x1a1:                                      ; preds = %block_0x18d
  %435 = add i64 %369, -76, !mcsema_real_eip !56
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !56
  %437 = bitcast i64* %436 to i32*
  %438 = load i32, i32* %437, !mcsema_real_eip !56
  %439 = add i32 %438, -119
  %440 = xor i32 %439, %438, !mcsema_real_eip !57
  %441 = and i32 %440, 16
  %442 = icmp eq i32 %441, 0
  store i1 %442, i1* %AF_val, !mcsema_real_eip !57
  %443 = trunc i32 %439 to i8, !mcsema_real_eip !57
  %444 = tail call i8 @llvm.ctpop.i8(i8 %443), !mcsema_real_eip !57
  %445 = and i8 %444, 1
  %446 = icmp eq i8 %445, 0
  store i1 %446, i1* %PF_val, !mcsema_real_eip !57
  %447 = icmp eq i32 %439, 0, !mcsema_real_eip !57
  store i1 %447, i1* %ZF_val, !mcsema_real_eip !57
  %448 = icmp slt i32 %439, 0
  store i1 %448, i1* %SF_val, !mcsema_real_eip !57
  %449 = icmp ult i32 %438, 119, !mcsema_real_eip !57
  store i1 %449, i1* %CF_val, !mcsema_real_eip !57
  %450 = and i32 %440, %438, !mcsema_real_eip !57
  %451 = icmp slt i32 %450, 0
  store i1 %451, i1* %OF_val, !mcsema_real_eip !57
  %452 = zext i32 %439 to i64, !mcsema_real_eip !57
  store i64 %452, i64* %RAX_val, !mcsema_real_eip !57
  %453 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %454 = add i64 %453, -96, !mcsema_real_eip !58
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !58
  %456 = bitcast i64* %455 to i32*
  store i32 %439, i32* %456, !mcsema_real_eip !58
  %457 = load i1, i1* %ZF_val, !mcsema_real_eip !59
  br i1 %457, label %block_0x1b5, label %block_0x1f5, !mcsema_real_eip !59

block_0x201:                                      ; preds = %block_0x1b5, %block_0x1e5, %block_0x1d5, %block_0x1c5
  store i64 ptrtoint (%0* @data_0x329 to i64), i64* %RAX_val, !mcsema_real_eip !60
  %458 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %459 = add i64 %458, -20, !mcsema_real_eip !61
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !61
  %461 = bitcast i64* %460 to i32*
  %462 = load i32, i32* %461, !mcsema_real_eip !61
  %463 = sext i32 %462 to i64, !mcsema_real_eip !61
  store i64 %463, i64* %RCX_val, !mcsema_real_eip !61
  %464 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %465 = add i64 %464, -24, !mcsema_real_eip !62
  %466 = inttoptr i64 %465 to i64*, !mcsema_real_eip !62
  %467 = bitcast i64* %466 to i32*
  %468 = load i32, i32* %467, !mcsema_real_eip !62
  %469 = sext i32 %468 to i64, !mcsema_real_eip !62
  %470 = mul i64 %469, 11, !mcsema_real_eip !63
  store i64 %470, i64* %RDX_val, !mcsema_real_eip !63
  %471 = load i64, i64* %RAX_val, !mcsema_real_eip !64
  %uadd143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 %471)
  %472 = extractvalue { i64, i1 } %uadd143, 0
  %473 = xor i64 %472, %471, !mcsema_real_eip !64
  %474 = xor i64 %473, %470, !mcsema_real_eip !64
  %475 = and i64 %474, 16, !mcsema_real_eip !64
  %476 = icmp ne i64 %475, 0, !mcsema_real_eip !64
  store i1 %476, i1* %AF_val, !mcsema_real_eip !64
  %477 = icmp slt i64 %472, 0
  store i1 %477, i1* %SF_val, !mcsema_real_eip !64
  %478 = icmp eq i64 %472, 0, !mcsema_real_eip !64
  store i1 %478, i1* %ZF_val, !mcsema_real_eip !64
  %479 = xor i64 %471, -9223372036854775808, !mcsema_real_eip !64
  %480 = xor i64 %479, %470, !mcsema_real_eip !64
  %481 = and i64 %473, %480, !mcsema_real_eip !64
  %482 = icmp slt i64 %481, 0
  store i1 %482, i1* %OF_val, !mcsema_real_eip !64
  %483 = trunc i64 %472 to i8, !mcsema_real_eip !64
  %484 = tail call i8 @llvm.ctpop.i8(i8 %483), !mcsema_real_eip !64
  %485 = and i8 %484, 1
  %486 = icmp eq i8 %485, 0
  store i1 %486, i1* %PF_val, !mcsema_real_eip !64
  %487 = extractvalue { i64, i1 } %uadd143, 1
  store i1 %487, i1* %CF_val, !mcsema_real_eip !64
  store i64 %472, i64* %RAX_val, !mcsema_real_eip !64
  %488 = load i64, i64* %RCX_val, !mcsema_real_eip !65
  %489 = add i64 %488, %472, !mcsema_real_eip !65
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !65
  %491 = bitcast i64* %490 to i8*
  %492 = load i8, i8* %491, !mcsema_real_eip !65
  %493 = sext i8 %492 to i32, !mcsema_real_eip !65
  %494 = zext i32 %493 to i64, !mcsema_real_eip !65
  store i64 %494, i64* %RSI_val, !mcsema_real_eip !65
  %495 = add nsw i32 %493, -35
  %496 = xor i32 %495, %493, !mcsema_real_eip !66
  %497 = and i32 %496, 16, !mcsema_real_eip !66
  %498 = icmp ne i32 %497, 0, !mcsema_real_eip !66
  store i1 %498, i1* %AF_val, !mcsema_real_eip !66
  %499 = trunc i32 %495 to i8, !mcsema_real_eip !66
  %500 = tail call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !66
  %501 = and i8 %500, 1
  %502 = icmp eq i8 %501, 0
  store i1 %502, i1* %PF_val, !mcsema_real_eip !66
  %503 = icmp eq i32 %495, 0, !mcsema_real_eip !66
  store i1 %503, i1* %ZF_val, !mcsema_real_eip !66
  %504 = icmp slt i32 %495, 0
  store i1 %504, i1* %SF_val, !mcsema_real_eip !66
  %505 = icmp ult i8 %492, 35
  store i1 %505, i1* %CF_val, !mcsema_real_eip !66
  %506 = and i32 %496, %493, !mcsema_real_eip !66
  %507 = icmp slt i32 %506, 0
  store i1 %507, i1* %OF_val, !mcsema_real_eip !66
  %508 = load i1, i1* %ZF_val, !mcsema_real_eip !67
  br i1 %508, label %block_0x22d, label %block_0x239, !mcsema_real_eip !67

block_0x179:                                      ; preds = %block_0x165
  %509 = add i64 %389, -76, !mcsema_real_eip !68
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !68
  %511 = bitcast i64* %510 to i32*
  %512 = load i32, i32* %511, !mcsema_real_eip !68
  %513 = add i32 %512, -100
  %514 = xor i32 %513, %512, !mcsema_real_eip !69
  %515 = and i32 %514, 16, !mcsema_real_eip !69
  %516 = icmp ne i32 %515, 0, !mcsema_real_eip !69
  store i1 %516, i1* %AF_val, !mcsema_real_eip !69
  %517 = trunc i32 %513 to i8, !mcsema_real_eip !69
  %518 = tail call i8 @llvm.ctpop.i8(i8 %517), !mcsema_real_eip !69
  %519 = and i8 %518, 1
  %520 = icmp eq i8 %519, 0
  store i1 %520, i1* %PF_val, !mcsema_real_eip !69
  %521 = icmp eq i32 %513, 0, !mcsema_real_eip !69
  store i1 %521, i1* %ZF_val, !mcsema_real_eip !69
  %522 = icmp slt i32 %513, 0
  store i1 %522, i1* %SF_val, !mcsema_real_eip !69
  %523 = icmp ult i32 %512, 100, !mcsema_real_eip !69
  store i1 %523, i1* %CF_val, !mcsema_real_eip !69
  %524 = and i32 %514, %512, !mcsema_real_eip !69
  %525 = icmp slt i32 %524, 0
  store i1 %525, i1* %OF_val, !mcsema_real_eip !69
  %526 = zext i32 %513 to i64, !mcsema_real_eip !69
  store i64 %526, i64* %RAX_val, !mcsema_real_eip !69
  %527 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %528 = add i64 %527, -88, !mcsema_real_eip !70
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !70
  %530 = bitcast i64* %529 to i32*
  store i32 %513, i32* %530, !mcsema_real_eip !70
  %531 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %531, label %block_0x1e5, label %block_0x1f5, !mcsema_real_eip !71

block_0x1f5:                                      ; preds = %block_0x179, %block_0x1a1
  %532 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %533 = add i64 %532, -4, !mcsema_real_eip !72
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !72
  %535 = bitcast i64* %534 to i32*
  store i32 1, i32* %535, !mcsema_real_eip !72
  br label %block_0x320, !mcsema_real_eip !73

block_0x239:                                      ; preds = %block_0x201
  store i64 ptrtoint (%0* @data_0x329 to i64), i64* %RAX_val, !mcsema_real_eip !74
  %536 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %537 = add i64 %536, -20, !mcsema_real_eip !75
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !75
  %539 = bitcast i64* %538 to i32*
  %540 = load i32, i32* %539, !mcsema_real_eip !75
  %541 = sext i32 %540 to i64, !mcsema_real_eip !75
  store i64 %541, i64* %RCX_val, !mcsema_real_eip !75
  %542 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %543 = add i64 %542, -24, !mcsema_real_eip !76
  %544 = inttoptr i64 %543 to i64*, !mcsema_real_eip !76
  %545 = bitcast i64* %544 to i32*
  %546 = load i32, i32* %545, !mcsema_real_eip !76
  %547 = sext i32 %546 to i64, !mcsema_real_eip !76
  %548 = mul i64 %547, 11, !mcsema_real_eip !77
  store i64 %548, i64* %RDX_val, !mcsema_real_eip !77
  %549 = load i64, i64* %RAX_val, !mcsema_real_eip !78
  %uadd145 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %548, i64 %549)
  %550 = extractvalue { i64, i1 } %uadd145, 0
  %551 = xor i64 %550, %549, !mcsema_real_eip !78
  %552 = xor i64 %551, %548, !mcsema_real_eip !78
  %553 = and i64 %552, 16, !mcsema_real_eip !78
  %554 = icmp ne i64 %553, 0, !mcsema_real_eip !78
  store i1 %554, i1* %AF_val, !mcsema_real_eip !78
  %555 = icmp slt i64 %550, 0
  store i1 %555, i1* %SF_val, !mcsema_real_eip !78
  %556 = icmp eq i64 %550, 0, !mcsema_real_eip !78
  store i1 %556, i1* %ZF_val, !mcsema_real_eip !78
  %557 = xor i64 %549, -9223372036854775808, !mcsema_real_eip !78
  %558 = xor i64 %557, %548, !mcsema_real_eip !78
  %559 = and i64 %551, %558, !mcsema_real_eip !78
  %560 = icmp slt i64 %559, 0
  store i1 %560, i1* %OF_val, !mcsema_real_eip !78
  %561 = trunc i64 %550 to i8, !mcsema_real_eip !78
  %562 = tail call i8 @llvm.ctpop.i8(i8 %561), !mcsema_real_eip !78
  %563 = and i8 %562, 1
  %564 = icmp eq i8 %563, 0
  store i1 %564, i1* %PF_val, !mcsema_real_eip !78
  %565 = extractvalue { i64, i1 } %uadd145, 1
  store i1 %565, i1* %CF_val, !mcsema_real_eip !78
  store i64 %550, i64* %RAX_val, !mcsema_real_eip !78
  %566 = load i64, i64* %RCX_val, !mcsema_real_eip !79
  %567 = add i64 %566, %550, !mcsema_real_eip !79
  %568 = inttoptr i64 %567 to i64*, !mcsema_real_eip !79
  %569 = bitcast i64* %568 to i8*
  %570 = load i8, i8* %569, !mcsema_real_eip !79
  %571 = sext i8 %570 to i32, !mcsema_real_eip !79
  %572 = zext i32 %571 to i64, !mcsema_real_eip !79
  store i64 %572, i64* %RSI_val, !mcsema_real_eip !79
  %573 = add nsw i32 %571, -32
  %574 = xor i32 %573, %571, !mcsema_real_eip !80
  %575 = and i32 %574, 16, !mcsema_real_eip !80
  %576 = icmp ne i32 %575, 0, !mcsema_real_eip !80
  store i1 %576, i1* %AF_val, !mcsema_real_eip !80
  %577 = trunc i32 %573 to i8, !mcsema_real_eip !80
  %578 = tail call i8 @llvm.ctpop.i8(i8 %577), !mcsema_real_eip !80
  %579 = and i8 %578, 1
  %580 = icmp eq i8 %579, 0
  store i1 %580, i1* %PF_val, !mcsema_real_eip !80
  %581 = icmp eq i32 %573, 0, !mcsema_real_eip !80
  store i1 %581, i1* %ZF_val, !mcsema_real_eip !80
  %582 = icmp slt i32 %573, 0
  store i1 %582, i1* %SF_val, !mcsema_real_eip !80
  %583 = icmp ult i8 %570, 32
  store i1 %583, i1* %CF_val, !mcsema_real_eip !80
  %584 = and i32 %574, %571, !mcsema_real_eip !80
  %585 = icmp slt i32 %584, 0
  store i1 %585, i1* %OF_val, !mcsema_real_eip !80
  %586 = load i1, i1* %ZF_val, !mcsema_real_eip !81
  br i1 %586, label %block_0x2c4, label %block_0x265, !mcsema_real_eip !81

block_0x22d:                                      ; preds = %block_0x201
  %587 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %588 = add i64 %587, -4, !mcsema_real_eip !82
  %589 = inttoptr i64 %588 to i64*, !mcsema_real_eip !82
  %590 = bitcast i64* %589 to i32*
  store i32 0, i32* %590, !mcsema_real_eip !82
  br label %block_0x320, !mcsema_real_eip !83

block_0x1e5:                                      ; preds = %block_0x179
  %591 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %592 = add i64 %591, -20, !mcsema_real_eip !84
  %593 = inttoptr i64 %592 to i64*, !mcsema_real_eip !84
  %594 = bitcast i64* %593 to i32*
  %595 = load i32, i32* %594, !mcsema_real_eip !84
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %595, i32 1)
  %596 = extractvalue { i32, i1 } %uadd142, 0
  %597 = xor i32 %596, %595, !mcsema_real_eip !85
  %598 = and i32 %597, 16, !mcsema_real_eip !85
  %599 = icmp ne i32 %598, 0, !mcsema_real_eip !85
  store i1 %599, i1* %AF_val, !mcsema_real_eip !85
  %600 = icmp slt i32 %596, 0
  store i1 %600, i1* %SF_val, !mcsema_real_eip !85
  %601 = icmp eq i32 %596, 0, !mcsema_real_eip !85
  store i1 %601, i1* %ZF_val, !mcsema_real_eip !85
  %602 = xor i32 %595, -2147483648, !mcsema_real_eip !85
  %603 = and i32 %597, %602, !mcsema_real_eip !85
  %604 = icmp slt i32 %603, 0
  store i1 %604, i1* %OF_val, !mcsema_real_eip !85
  %605 = trunc i32 %596 to i8, !mcsema_real_eip !85
  %606 = tail call i8 @llvm.ctpop.i8(i8 %605), !mcsema_real_eip !85
  %607 = and i8 %606, 1
  %608 = icmp eq i8 %607, 0
  store i1 %608, i1* %PF_val, !mcsema_real_eip !85
  %609 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %609, i1* %CF_val, !mcsema_real_eip !85
  %610 = zext i32 %596 to i64, !mcsema_real_eip !85
  store i64 %610, i64* %RAX_val, !mcsema_real_eip !85
  %611 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %612 = add i64 %611, -20, !mcsema_real_eip !86
  %613 = inttoptr i64 %612 to i64*, !mcsema_real_eip !86
  %614 = bitcast i64* %613 to i32*
  store i32 %596, i32* %614, !mcsema_real_eip !86
  br label %block_0x201, !mcsema_real_eip !87

block_0x320:                                      ; preds = %block_0x2dc, %block_0x22d, %block_0x1f5
  %615 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %616 = add i64 %615, -4, !mcsema_real_eip !27
  %617 = inttoptr i64 %616 to i64*, !mcsema_real_eip !27
  %618 = bitcast i64* %617 to i32*
  %619 = load i32, i32* %618, !mcsema_real_eip !27
  %620 = zext i32 %619 to i64, !mcsema_real_eip !27
  store i64 %620, i64* %RAX_val, !mcsema_real_eip !27
  %621 = load i64, i64* %RSP_val, !mcsema_real_eip !28
  %uadd141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %621, i64 96)
  %622 = extractvalue { i64, i1 } %uadd141, 0
  %623 = xor i64 %622, %621, !mcsema_real_eip !28
  %624 = and i64 %623, 16, !mcsema_real_eip !28
  %625 = icmp ne i64 %624, 0, !mcsema_real_eip !28
  store i1 %625, i1* %AF_val, !mcsema_real_eip !28
  %626 = icmp slt i64 %622, 0
  store i1 %626, i1* %SF_val, !mcsema_real_eip !28
  %627 = icmp eq i64 %622, 0, !mcsema_real_eip !28
  store i1 %627, i1* %ZF_val, !mcsema_real_eip !28
  %628 = xor i64 %621, -9223372036854775808, !mcsema_real_eip !28
  %629 = and i64 %623, %628, !mcsema_real_eip !28
  %630 = icmp slt i64 %629, 0
  store i1 %630, i1* %OF_val, !mcsema_real_eip !28
  %631 = trunc i64 %622 to i8, !mcsema_real_eip !28
  %632 = tail call i8 @llvm.ctpop.i8(i8 %631), !mcsema_real_eip !28
  %633 = and i8 %632, 1
  %634 = icmp eq i8 %633, 0
  store i1 %634, i1* %PF_val, !mcsema_real_eip !28
  %635 = extractvalue { i64, i1 } %uadd141, 1
  store i1 %635, i1* %CF_val, !mcsema_real_eip !28
  store i64 %622, i64* %RSP_val, !mcsema_real_eip !28
  %636 = inttoptr i64 %622 to i64*, !mcsema_real_eip !29
  %637 = load i64, i64* %636, !mcsema_real_eip !29
  store i64 %637, i64* %RBP_val, !mcsema_real_eip !29
  %638 = add i64 %622, 16, !mcsema_real_eip !30
  store i64 %638, i64* %RSP_val, !mcsema_real_eip !30
  %639 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %639, i64* %RAX, !mcsema_real_eip !30
  %640 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %640, i64* %RBX, !mcsema_real_eip !30
  %641 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %641, i64* %RCX, !mcsema_real_eip !30
  %642 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %642, i64* %RDX, !mcsema_real_eip !30
  %643 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %643, i64* %RSI, !mcsema_real_eip !30
  %644 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %644, i64* %RDI, !mcsema_real_eip !30
  %645 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  store i64 %645, i64* %RSP, !mcsema_real_eip !30
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  store i64 %646, i64* %RBP, !mcsema_real_eip !30
  %647 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %647, i64* %R8, !mcsema_real_eip !30
  %648 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %648, i64* %R9, !mcsema_real_eip !30
  %649 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %649, i64* %R10, !mcsema_real_eip !30
  %650 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %650, i64* %R11, !mcsema_real_eip !30
  %651 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %651, i64* %R12, !mcsema_real_eip !30
  %652 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %652, i64* %R13, !mcsema_real_eip !30
  %653 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %653, i64* %R14, !mcsema_real_eip !30
  %654 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %654, i64* %R15, !mcsema_real_eip !30
  %655 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %655, i64* %RIP, !mcsema_real_eip !30
  %656 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %656, i1* %CF, align 1, !mcsema_real_eip !30
  %657 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %657, i1* %PF, align 1, !mcsema_real_eip !30
  %658 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %658, i1* %AF, align 1, !mcsema_real_eip !30
  %659 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %659, i1* %ZF, align 1, !mcsema_real_eip !30
  %660 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %660, i1* %SF, align 1, !mcsema_real_eip !30
  %661 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %661, i1* %OF, align 1, !mcsema_real_eip !30
  %662 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %662, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %663 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %663, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %664 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %664, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %665 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %665, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %666 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %666, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %667 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %667, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %668 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %668, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %669 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %669, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %670 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %670, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %671 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %671, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %672 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %672, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %673 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %673, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %674 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %674, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %675 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %675, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %676 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %676, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %677 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %677, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %678 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %678, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %679 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %679, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %680 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %680, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %681 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %681, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %682 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %682, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %683 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %683, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %684 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %684, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %685 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %685, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %686 = load i64, i64* %53, align 4
  store i64 %686, i64* %52, align 4
  %687 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %687, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %688 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %688, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %689 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %689, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %690 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %690, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %691 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %691, i128* %XMM0, align 1, !mcsema_real_eip !30
  %692 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %692, i128* %XMM1, align 1, !mcsema_real_eip !30
  %693 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %693, i128* %XMM2, align 1, !mcsema_real_eip !30
  %694 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %694, i128* %XMM3, align 1, !mcsema_real_eip !30
  %695 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %695, i128* %XMM4, align 1, !mcsema_real_eip !30
  %696 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %696, i128* %XMM5, align 1, !mcsema_real_eip !30
  %697 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %697, i128* %XMM6, align 1, !mcsema_real_eip !30
  %698 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %698, i128* %XMM7, align 1, !mcsema_real_eip !30
  %699 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %699, i128* %XMM8, align 1, !mcsema_real_eip !30
  %700 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %700, i128* %XMM9, align 1, !mcsema_real_eip !30
  %701 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %701, i128* %XMM10, align 1, !mcsema_real_eip !30
  %702 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %702, i128* %XMM11, align 1, !mcsema_real_eip !30
  %703 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %703, i128* %XMM12, align 1, !mcsema_real_eip !30
  %704 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %704, i128* %XMM13, align 1, !mcsema_real_eip !30
  %705 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %705, i128* %XMM14, align 1, !mcsema_real_eip !30
  %706 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %706, i128* %XMM15, align 1, !mcsema_real_eip !30
  %707 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %707, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %708 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %708, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30

block_0x1b5:                                      ; preds = %block_0x1a1
  %709 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %710 = add i64 %709, -24, !mcsema_real_eip !88
  %711 = inttoptr i64 %710 to i64*, !mcsema_real_eip !88
  %712 = bitcast i64* %711 to i32*
  %713 = load i32, i32* %712, !mcsema_real_eip !88
  %uadd162 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %713, i32 -1)
  %714 = extractvalue { i32, i1 } %uadd162, 0
  %715 = xor i32 %714, %713, !mcsema_real_eip !89
  %716 = and i32 %715, 16
  %717 = icmp eq i32 %716, 0
  store i1 %717, i1* %AF_val, !mcsema_real_eip !89
  %718 = icmp slt i32 %714, 0
  store i1 %718, i1* %SF_val, !mcsema_real_eip !89
  %719 = icmp eq i32 %714, 0, !mcsema_real_eip !89
  store i1 %719, i1* %ZF_val, !mcsema_real_eip !89
  %720 = and i32 %715, %713, !mcsema_real_eip !89
  %721 = icmp slt i32 %720, 0
  store i1 %721, i1* %OF_val, !mcsema_real_eip !89
  %722 = trunc i32 %714 to i8, !mcsema_real_eip !89
  %723 = tail call i8 @llvm.ctpop.i8(i8 %722), !mcsema_real_eip !89
  %724 = and i8 %723, 1
  %725 = icmp eq i8 %724, 0
  store i1 %725, i1* %PF_val, !mcsema_real_eip !89
  %726 = extractvalue { i32, i1 } %uadd162, 1
  store i1 %726, i1* %CF_val, !mcsema_real_eip !89
  %727 = zext i32 %714 to i64, !mcsema_real_eip !89
  store i64 %727, i64* %RAX_val, !mcsema_real_eip !89
  %728 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %729 = add i64 %728, -24, !mcsema_real_eip !90
  %730 = inttoptr i64 %729 to i64*, !mcsema_real_eip !90
  %731 = bitcast i64* %730 to i32*
  store i32 %714, i32* %731, !mcsema_real_eip !90
  br label %block_0x201, !mcsema_real_eip !91

block_0x2c4:                                      ; preds = %block_0x2ab, %block_0x239
  %732 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %733 = add i64 %732, -28, !mcsema_real_eip !92
  %734 = inttoptr i64 %733 to i64*, !mcsema_real_eip !92
  %735 = bitcast i64* %734 to i32*
  %736 = load i32, i32* %735, !mcsema_real_eip !92
  %737 = zext i32 %736 to i64, !mcsema_real_eip !92
  store i64 %737, i64* %RAX_val, !mcsema_real_eip !92
  %738 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %739 = add i64 %738, -20, !mcsema_real_eip !93
  %740 = inttoptr i64 %739 to i64*, !mcsema_real_eip !93
  %741 = bitcast i64* %740 to i32*
  %742 = load i32, i32* %741, !mcsema_real_eip !93
  %743 = sub i32 %736, %742, !mcsema_real_eip !93
  %744 = xor i32 %743, %736, !mcsema_real_eip !93
  %745 = xor i32 %744, %742, !mcsema_real_eip !93
  %746 = and i32 %745, 16, !mcsema_real_eip !93
  %747 = icmp ne i32 %746, 0, !mcsema_real_eip !93
  store i1 %747, i1* %AF_val, !mcsema_real_eip !93
  %748 = trunc i32 %743 to i8, !mcsema_real_eip !93
  %749 = tail call i8 @llvm.ctpop.i8(i8 %748), !mcsema_real_eip !93
  %750 = and i8 %749, 1
  %751 = icmp eq i8 %750, 0
  store i1 %751, i1* %PF_val, !mcsema_real_eip !93
  %752 = icmp eq i32 %736, %742
  store i1 %752, i1* %ZF_val, !mcsema_real_eip !93
  %753 = icmp slt i32 %743, 0
  store i1 %753, i1* %SF_val, !mcsema_real_eip !93
  %754 = icmp ult i32 %736, %742, !mcsema_real_eip !93
  store i1 %754, i1* %CF_val, !mcsema_real_eip !93
  %755 = xor i32 %742, %736, !mcsema_real_eip !93
  %756 = and i32 %744, %755, !mcsema_real_eip !93
  %757 = icmp slt i32 %756, 0
  store i1 %757, i1* %OF_val, !mcsema_real_eip !93
  %758 = load i1, i1* %ZF_val, !mcsema_real_eip !94
  br i1 %758, label %block_0x2d0, label %block_0x2e8, !mcsema_real_eip !94

block_0x265:                                      ; preds = %block_0x239
  %759 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %760 = add i64 %759, -24, !mcsema_real_eip !95
  %761 = inttoptr i64 %760 to i64*, !mcsema_real_eip !95
  %762 = bitcast i64* %761 to i32*
  %763 = load i32, i32* %762, !mcsema_real_eip !95
  %764 = add i32 %763, -2
  %765 = xor i32 %764, %763, !mcsema_real_eip !95
  %766 = and i32 %765, 16, !mcsema_real_eip !95
  %767 = icmp ne i32 %766, 0, !mcsema_real_eip !95
  store i1 %767, i1* %AF_val, !mcsema_real_eip !95
  %768 = trunc i32 %764 to i8, !mcsema_real_eip !95
  %769 = tail call i8 @llvm.ctpop.i8(i8 %768), !mcsema_real_eip !95
  %770 = and i8 %769, 1
  %771 = icmp eq i8 %770, 0
  store i1 %771, i1* %PF_val, !mcsema_real_eip !95
  %772 = icmp eq i32 %764, 0, !mcsema_real_eip !95
  store i1 %772, i1* %ZF_val, !mcsema_real_eip !95
  %773 = icmp slt i32 %764, 0
  store i1 %773, i1* %SF_val, !mcsema_real_eip !95
  %774 = icmp ult i32 %763, 2, !mcsema_real_eip !95
  store i1 %774, i1* %CF_val, !mcsema_real_eip !95
  %775 = and i32 %765, %763, !mcsema_real_eip !95
  %776 = icmp slt i32 %775, 0
  store i1 %776, i1* %OF_val, !mcsema_real_eip !95
  %777 = load i1, i1* %ZF_val, !mcsema_real_eip !96
  br i1 %777, label %block_0x272, label %block_0x2b8, !mcsema_real_eip !96

block_0x2b8:                                      ; preds = %block_0x2ab, %block_0x29e, %block_0x272, %block_0x265
  %778 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %779 = add i64 %778, -28, !mcsema_real_eip !97
  %780 = inttoptr i64 %779 to i64*, !mcsema_real_eip !97
  %781 = bitcast i64* %780 to i32*
  %782 = load i32, i32* %781, !mcsema_real_eip !97
  %783 = zext i32 %782 to i64, !mcsema_real_eip !97
  store i64 %783, i64* %RAX_val, !mcsema_real_eip !97
  %784 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %785 = add i64 %784, -20, !mcsema_real_eip !98
  %786 = inttoptr i64 %785 to i64*, !mcsema_real_eip !98
  %787 = bitcast i64* %786 to i32*
  store i32 %782, i32* %787, !mcsema_real_eip !98
  %788 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %789 = add i64 %788, -32, !mcsema_real_eip !99
  %790 = inttoptr i64 %789 to i64*, !mcsema_real_eip !99
  %791 = bitcast i64* %790 to i32*
  %792 = load i32, i32* %791, !mcsema_real_eip !99
  %793 = zext i32 %792 to i64, !mcsema_real_eip !99
  store i64 %793, i64* %RAX_val, !mcsema_real_eip !99
  %794 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %795 = add i64 %794, -24, !mcsema_real_eip !100
  %796 = inttoptr i64 %795 to i64*, !mcsema_real_eip !100
  %797 = bitcast i64* %796 to i32*
  store i32 %792, i32* %797, !mcsema_real_eip !100
  %798 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %799 = add i64 %798, -28, !mcsema_real_eip !92
  %800 = inttoptr i64 %799 to i64*, !mcsema_real_eip !92
  %801 = bitcast i64* %800 to i32*
  %802 = load i32, i32* %801, !mcsema_real_eip !92
  %803 = zext i32 %802 to i64, !mcsema_real_eip !92
  store i64 %803, i64* %RAX_val, !mcsema_real_eip !92
  %804 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %805 = add i64 %804, -20, !mcsema_real_eip !93
  %806 = inttoptr i64 %805 to i64*, !mcsema_real_eip !93
  %807 = bitcast i64* %806 to i32*
  %808 = load i32, i32* %807, !mcsema_real_eip !93
  %809 = sub i32 %802, %808, !mcsema_real_eip !93
  %810 = xor i32 %809, %802, !mcsema_real_eip !93
  %811 = xor i32 %810, %808, !mcsema_real_eip !93
  %812 = and i32 %811, 16, !mcsema_real_eip !93
  %813 = icmp ne i32 %812, 0, !mcsema_real_eip !93
  store i1 %813, i1* %AF_val, !mcsema_real_eip !93
  %814 = trunc i32 %809 to i8, !mcsema_real_eip !93
  %815 = tail call i8 @llvm.ctpop.i8(i8 %814), !mcsema_real_eip !93
  %816 = and i8 %815, 1
  %817 = icmp eq i8 %816, 0
  store i1 %817, i1* %PF_val, !mcsema_real_eip !93
  %818 = icmp eq i32 %802, %808
  store i1 %818, i1* %ZF_val, !mcsema_real_eip !93
  %819 = icmp slt i32 %809, 0
  store i1 %819, i1* %SF_val, !mcsema_real_eip !93
  %820 = icmp ult i32 %802, %808, !mcsema_real_eip !93
  store i1 %820, i1* %CF_val, !mcsema_real_eip !93
  %821 = xor i32 %808, %802, !mcsema_real_eip !93
  %822 = and i32 %810, %821, !mcsema_real_eip !93
  %823 = icmp slt i32 %822, 0
  store i1 %823, i1* %OF_val, !mcsema_real_eip !93
  %824 = load i1, i1* %ZF_val, !mcsema_real_eip !94
  br i1 %824, label %block_0x2d0, label %block_0x2e8, !mcsema_real_eip !94

block_0x272:                                      ; preds = %block_0x265
  store i64 ptrtoint (%0* @data_0x329 to i64), i64* %RAX_val, !mcsema_real_eip !101
  %825 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %826 = add i64 %825, -20, !mcsema_real_eip !102
  %827 = inttoptr i64 %826 to i64*, !mcsema_real_eip !102
  %828 = bitcast i64* %827 to i32*
  %829 = load i32, i32* %828, !mcsema_real_eip !102
  %830 = sext i32 %829 to i64, !mcsema_real_eip !102
  store i64 %830, i64* %RCX_val, !mcsema_real_eip !102
  %831 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %832 = add i64 %831, -24, !mcsema_real_eip !103
  %833 = inttoptr i64 %832 to i64*, !mcsema_real_eip !103
  %834 = bitcast i64* %833 to i32*
  %835 = load i32, i32* %834, !mcsema_real_eip !103
  %836 = sext i32 %835 to i64, !mcsema_real_eip !103
  %837 = mul i64 %836, 11, !mcsema_real_eip !104
  store i64 %837, i64* %RDX_val, !mcsema_real_eip !104
  %838 = load i64, i64* %RAX_val, !mcsema_real_eip !105
  %uadd147 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %837, i64 %838)
  %839 = extractvalue { i64, i1 } %uadd147, 0
  %840 = xor i64 %839, %838, !mcsema_real_eip !105
  %841 = xor i64 %840, %837, !mcsema_real_eip !105
  %842 = and i64 %841, 16, !mcsema_real_eip !105
  %843 = icmp ne i64 %842, 0, !mcsema_real_eip !105
  store i1 %843, i1* %AF_val, !mcsema_real_eip !105
  %844 = icmp slt i64 %839, 0
  store i1 %844, i1* %SF_val, !mcsema_real_eip !105
  %845 = icmp eq i64 %839, 0, !mcsema_real_eip !105
  store i1 %845, i1* %ZF_val, !mcsema_real_eip !105
  %846 = xor i64 %838, -9223372036854775808, !mcsema_real_eip !105
  %847 = xor i64 %846, %837, !mcsema_real_eip !105
  %848 = and i64 %840, %847, !mcsema_real_eip !105
  %849 = icmp slt i64 %848, 0
  store i1 %849, i1* %OF_val, !mcsema_real_eip !105
  %850 = trunc i64 %839 to i8, !mcsema_real_eip !105
  %851 = tail call i8 @llvm.ctpop.i8(i8 %850), !mcsema_real_eip !105
  %852 = and i8 %851, 1
  %853 = icmp eq i8 %852, 0
  store i1 %853, i1* %PF_val, !mcsema_real_eip !105
  %854 = extractvalue { i64, i1 } %uadd147, 1
  store i1 %854, i1* %CF_val, !mcsema_real_eip !105
  store i64 %839, i64* %RAX_val, !mcsema_real_eip !105
  %855 = load i64, i64* %RCX_val, !mcsema_real_eip !106
  %856 = add i64 %855, %839, !mcsema_real_eip !106
  %857 = inttoptr i64 %856 to i64*, !mcsema_real_eip !106
  %858 = bitcast i64* %857 to i8*
  %859 = load i8, i8* %858, !mcsema_real_eip !106
  %860 = sext i8 %859 to i32, !mcsema_real_eip !106
  %861 = zext i32 %860 to i64, !mcsema_real_eip !106
  store i64 %861, i64* %RSI_val, !mcsema_real_eip !106
  %862 = add nsw i32 %860, -124
  %863 = xor i32 %862, %860, !mcsema_real_eip !107
  %864 = and i32 %863, 16
  %865 = icmp eq i32 %864, 0
  store i1 %865, i1* %AF_val, !mcsema_real_eip !107
  %866 = trunc i32 %862 to i8, !mcsema_real_eip !107
  %867 = tail call i8 @llvm.ctpop.i8(i8 %866), !mcsema_real_eip !107
  %868 = and i8 %867, 1
  %869 = icmp eq i8 %868, 0
  store i1 %869, i1* %PF_val, !mcsema_real_eip !107
  %870 = icmp eq i32 %862, 0, !mcsema_real_eip !107
  store i1 %870, i1* %ZF_val, !mcsema_real_eip !107
  %871 = icmp slt i32 %862, 0
  store i1 %871, i1* %SF_val, !mcsema_real_eip !107
  %872 = icmp ult i8 %859, 124
  store i1 %872, i1* %CF_val, !mcsema_real_eip !107
  %873 = and i32 %863, %860, !mcsema_real_eip !107
  %874 = icmp slt i32 %873, 0
  store i1 %874, i1* %OF_val, !mcsema_real_eip !107
  %875 = load i1, i1* %ZF_val, !mcsema_real_eip !108
  br i1 %875, label %block_0x29e, label %block_0x2b8, !mcsema_real_eip !108

block_0x2e8:                                      ; preds = %block_0x2d0, %block_0x2b8, %block_0x2c4
  store i64 ptrtoint (%0* @data_0x329 to i64), i64* %RAX_val, !mcsema_real_eip !109
  %876 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %877 = add i64 %876, -20, !mcsema_real_eip !110
  %878 = inttoptr i64 %877 to i64*, !mcsema_real_eip !110
  %879 = bitcast i64* %878 to i32*
  %880 = load i32, i32* %879, !mcsema_real_eip !110
  %881 = sext i32 %880 to i64, !mcsema_real_eip !110
  store i64 %881, i64* %RCX_val, !mcsema_real_eip !110
  %882 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %883 = add i64 %882, -24, !mcsema_real_eip !111
  %884 = inttoptr i64 %883 to i64*, !mcsema_real_eip !111
  %885 = bitcast i64* %884 to i32*
  %886 = load i32, i32* %885, !mcsema_real_eip !111
  %887 = sext i32 %886 to i64, !mcsema_real_eip !111
  %888 = mul i64 %887, 11, !mcsema_real_eip !112
  store i64 %888, i64* %RDX_val, !mcsema_real_eip !112
  %889 = load i64, i64* %RAX_val, !mcsema_real_eip !113
  %uadd155 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %888, i64 %889)
  %890 = extractvalue { i64, i1 } %uadd155, 0
  %891 = xor i64 %890, %889, !mcsema_real_eip !113
  %892 = xor i64 %891, %888, !mcsema_real_eip !113
  %893 = and i64 %892, 16, !mcsema_real_eip !113
  %894 = icmp ne i64 %893, 0, !mcsema_real_eip !113
  store i1 %894, i1* %AF_val, !mcsema_real_eip !113
  %895 = icmp slt i64 %890, 0
  store i1 %895, i1* %SF_val, !mcsema_real_eip !113
  %896 = icmp eq i64 %890, 0, !mcsema_real_eip !113
  store i1 %896, i1* %ZF_val, !mcsema_real_eip !113
  %897 = xor i64 %889, -9223372036854775808, !mcsema_real_eip !113
  %898 = xor i64 %897, %888, !mcsema_real_eip !113
  %899 = and i64 %891, %898, !mcsema_real_eip !113
  %900 = icmp slt i64 %899, 0
  store i1 %900, i1* %OF_val, !mcsema_real_eip !113
  %901 = trunc i64 %890 to i8, !mcsema_real_eip !113
  %902 = tail call i8 @llvm.ctpop.i8(i8 %901), !mcsema_real_eip !113
  %903 = and i8 %902, 1
  %904 = icmp eq i8 %903, 0
  store i1 %904, i1* %PF_val, !mcsema_real_eip !113
  %905 = extractvalue { i64, i1 } %uadd155, 1
  store i1 %905, i1* %CF_val, !mcsema_real_eip !113
  store i64 %890, i64* %RAX_val, !mcsema_real_eip !113
  %906 = load i64, i64* %RCX_val, !mcsema_real_eip !114
  %907 = add i64 %906, %890, !mcsema_real_eip !114
  %908 = inttoptr i64 %907 to i64*, !mcsema_real_eip !114
  %909 = bitcast i64* %908 to i8*
  store i8 88, i8* %909, !mcsema_real_eip !114
  %910 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %911 = add i64 %910, -36, !mcsema_real_eip !115
  %912 = inttoptr i64 %911 to i64*, !mcsema_real_eip !115
  %913 = bitcast i64* %912 to i32*
  %914 = load i32, i32* %913, !mcsema_real_eip !115
  %uadd156 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %914, i32 1)
  %915 = extractvalue { i32, i1 } %uadd156, 0
  %916 = xor i32 %915, %914, !mcsema_real_eip !116
  %917 = and i32 %916, 16, !mcsema_real_eip !116
  %918 = icmp ne i32 %917, 0, !mcsema_real_eip !116
  store i1 %918, i1* %AF_val, !mcsema_real_eip !116
  %919 = icmp slt i32 %915, 0
  store i1 %919, i1* %SF_val, !mcsema_real_eip !116
  %920 = icmp eq i32 %915, 0, !mcsema_real_eip !116
  store i1 %920, i1* %ZF_val, !mcsema_real_eip !116
  %921 = xor i32 %914, -2147483648, !mcsema_real_eip !116
  %922 = and i32 %916, %921, !mcsema_real_eip !116
  %923 = icmp slt i32 %922, 0
  store i1 %923, i1* %OF_val, !mcsema_real_eip !116
  %924 = trunc i32 %915 to i8, !mcsema_real_eip !116
  %925 = tail call i8 @llvm.ctpop.i8(i8 %924), !mcsema_real_eip !116
  %926 = and i8 %925, 1
  %927 = icmp eq i8 %926, 0
  store i1 %927, i1* %PF_val, !mcsema_real_eip !116
  %928 = extractvalue { i32, i1 } %uadd156, 1
  store i1 %928, i1* %CF_val, !mcsema_real_eip !116
  %929 = zext i32 %915 to i64, !mcsema_real_eip !116
  store i64 %929, i64* %RSI_val, !mcsema_real_eip !116
  %930 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %931 = add i64 %930, -36, !mcsema_real_eip !117
  %932 = inttoptr i64 %931 to i64*, !mcsema_real_eip !117
  %933 = bitcast i64* %932 to i32*
  store i32 %915, i32* %933, !mcsema_real_eip !117
  %934 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %935 = add i64 %934, -36, !mcsema_real_eip !24
  %936 = inttoptr i64 %935 to i64*, !mcsema_real_eip !24
  %937 = bitcast i64* %936 to i32*
  %938 = load i32, i32* %937, !mcsema_real_eip !24
  %939 = add i32 %938, -28
  %940 = xor i32 %939, %938, !mcsema_real_eip !24
  %941 = and i32 %940, 16
  %942 = icmp eq i32 %941, 0
  store i1 %942, i1* %AF_val, !mcsema_real_eip !24
  %943 = trunc i32 %939 to i8, !mcsema_real_eip !24
  %944 = tail call i8 @llvm.ctpop.i8(i8 %943), !mcsema_real_eip !24
  %945 = and i8 %944, 1
  %946 = icmp eq i8 %945, 0
  store i1 %946, i1* %PF_val, !mcsema_real_eip !24
  %947 = icmp eq i32 %939, 0, !mcsema_real_eip !24
  store i1 %947, i1* %ZF_val, !mcsema_real_eip !24
  %948 = icmp slt i32 %939, 0
  store i1 %948, i1* %SF_val, !mcsema_real_eip !24
  %949 = icmp ult i32 %938, 28, !mcsema_real_eip !24
  store i1 %949, i1* %CF_val, !mcsema_real_eip !24
  %950 = and i32 %940, %938, !mcsema_real_eip !24
  %951 = icmp slt i32 %950, 0
  store i1 %951, i1* %OF_val, !mcsema_real_eip !24
  %tmp157 = xor i1 %948, %951
  br i1 %tmp157, label %block_0x13a, label %block_0x319.loopexit, !mcsema_real_eip !25

block_0x2d0:                                      ; preds = %block_0x2b8, %block_0x2c4
  %952 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %953 = add i64 %952, -32, !mcsema_real_eip !118
  %954 = inttoptr i64 %953 to i64*, !mcsema_real_eip !118
  %955 = bitcast i64* %954 to i32*
  %956 = load i32, i32* %955, !mcsema_real_eip !118
  %957 = zext i32 %956 to i64, !mcsema_real_eip !118
  store i64 %957, i64* %RAX_val, !mcsema_real_eip !118
  %958 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %959 = add i64 %958, -24, !mcsema_real_eip !119
  %960 = inttoptr i64 %959 to i64*, !mcsema_real_eip !119
  %961 = bitcast i64* %960 to i32*
  %962 = load i32, i32* %961, !mcsema_real_eip !119
  %963 = sub i32 %956, %962, !mcsema_real_eip !119
  %964 = xor i32 %963, %956, !mcsema_real_eip !119
  %965 = xor i32 %964, %962, !mcsema_real_eip !119
  %966 = and i32 %965, 16, !mcsema_real_eip !119
  %967 = icmp ne i32 %966, 0, !mcsema_real_eip !119
  store i1 %967, i1* %AF_val, !mcsema_real_eip !119
  %968 = trunc i32 %963 to i8, !mcsema_real_eip !119
  %969 = tail call i8 @llvm.ctpop.i8(i8 %968), !mcsema_real_eip !119
  %970 = and i8 %969, 1
  %971 = icmp eq i8 %970, 0
  store i1 %971, i1* %PF_val, !mcsema_real_eip !119
  %972 = icmp eq i32 %956, %962
  store i1 %972, i1* %ZF_val, !mcsema_real_eip !119
  %973 = icmp slt i32 %963, 0
  store i1 %973, i1* %SF_val, !mcsema_real_eip !119
  %974 = icmp ult i32 %956, %962, !mcsema_real_eip !119
  store i1 %974, i1* %CF_val, !mcsema_real_eip !119
  %975 = xor i32 %962, %956, !mcsema_real_eip !119
  %976 = and i32 %964, %975, !mcsema_real_eip !119
  %977 = icmp slt i32 %976, 0
  store i1 %977, i1* %OF_val, !mcsema_real_eip !119
  %978 = load i1, i1* %ZF_val, !mcsema_real_eip !120
  br i1 %978, label %block_0x2dc, label %block_0x2e8, !mcsema_real_eip !120

block_0x29e:                                      ; preds = %block_0x272
  %979 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %980 = add i64 %979, -20, !mcsema_real_eip !121
  %981 = inttoptr i64 %980 to i64*, !mcsema_real_eip !121
  %982 = bitcast i64* %981 to i32*
  %983 = load i32, i32* %982, !mcsema_real_eip !121
  store i1 false, i1* %AF_val, !mcsema_real_eip !121
  %984 = trunc i32 %983 to i8, !mcsema_real_eip !121
  %985 = tail call i8 @llvm.ctpop.i8(i8 %984), !mcsema_real_eip !121
  %986 = and i8 %985, 1
  %987 = icmp eq i8 %986, 0
  store i1 %987, i1* %PF_val, !mcsema_real_eip !121
  %988 = icmp eq i32 %983, 0, !mcsema_real_eip !121
  store i1 %988, i1* %ZF_val, !mcsema_real_eip !121
  %989 = icmp slt i32 %983, 0
  store i1 %989, i1* %SF_val, !mcsema_real_eip !121
  store i1 false, i1* %CF_val, !mcsema_real_eip !121
  store i1 false, i1* %OF_val, !mcsema_real_eip !121
  %990 = icmp slt i32 %983, 1
  br i1 %990, label %block_0x2b8, label %block_0x2ab, !mcsema_real_eip !122

block_0x2dc:                                      ; preds = %block_0x2d0
  %991 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %992 = add i64 %991, -4, !mcsema_real_eip !123
  %993 = inttoptr i64 %992 to i64*, !mcsema_real_eip !123
  %994 = bitcast i64* %993 to i32*
  store i32 2, i32* %994, !mcsema_real_eip !123
  br label %block_0x320, !mcsema_real_eip !124

block_0x2ab:                                      ; preds = %block_0x29e
  %995 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %996 = add i64 %995, -20, !mcsema_real_eip !125
  %997 = inttoptr i64 %996 to i64*, !mcsema_real_eip !125
  %998 = bitcast i64* %997 to i32*
  %999 = load i32, i32* %998, !mcsema_real_eip !125
  %1000 = add i32 %999, -11
  %1001 = xor i32 %1000, %999, !mcsema_real_eip !125
  %1002 = and i32 %1001, 16, !mcsema_real_eip !125
  %1003 = icmp ne i32 %1002, 0, !mcsema_real_eip !125
  store i1 %1003, i1* %AF_val, !mcsema_real_eip !125
  %1004 = trunc i32 %1000 to i8, !mcsema_real_eip !125
  %1005 = tail call i8 @llvm.ctpop.i8(i8 %1004), !mcsema_real_eip !125
  %1006 = and i8 %1005, 1
  %1007 = icmp eq i8 %1006, 0
  store i1 %1007, i1* %PF_val, !mcsema_real_eip !125
  %1008 = icmp eq i32 %1000, 0, !mcsema_real_eip !125
  store i1 %1008, i1* %ZF_val, !mcsema_real_eip !125
  %1009 = icmp slt i32 %1000, 0
  store i1 %1009, i1* %SF_val, !mcsema_real_eip !125
  %1010 = icmp ult i32 %999, 11, !mcsema_real_eip !125
  store i1 %1010, i1* %CF_val, !mcsema_real_eip !125
  %1011 = and i32 %1001, %999, !mcsema_real_eip !125
  %1012 = icmp slt i32 %1011, 0
  store i1 %1012, i1* %OF_val, !mcsema_real_eip !125
  %1013 = xor i1 %1009, %1012
  br i1 %1013, label %block_0x2c4, label %block_0x2b8, !mcsema_real_eip !126
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_c0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 193, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 196, [16 x i8] c"\09subq\09$96, %rsp\00"}
!5 = !{i64 200, [15 x i8] c"\09movl\09$0, %eax\00"}
!6 = !{i64 205, [19 x i8] c"\09movabsq\09$28, %rdx\00"}
!7 = !{i64 215, [22 x i8] c"\09leaq\09-64(%rbp), %rcx\00"}
!8 = !{i64 219, [17 x i8] c"\09movabsq\09$0, %r8\00"}
!9 = !{i64 229, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!10 = !{i64 236, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!11 = !{i64 239, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!12 = !{i64 243, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!13 = !{i64 250, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!14 = !{i64 257, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!15 = !{i64 264, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!16 = !{i64 268, [23 x i8] c"\09movslq\09-24(%rbp), %r9\00"}
!17 = !{i64 272, [17 x i8] c"\09imulq\09 $11, %r9\00"}
!18 = !{i64 279, [15 x i8] c"\09addq\09%r9, %r8\00"}
!19 = !{i64 282, [22 x i8] c"\09movb\09$88, (%r8,%rsi)\00"}
!20 = !{i64 287, [17 x i8] c"\09movl\09%eax, %edi\00"}
!21 = !{i64 289, [17 x i8] c"\09movq\09%rcx, %rsi\00"}
!22 = !{i64 292, [9 x i8] c"\09callq\090\00"}
!23 = !{i64 297, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!24 = !{i64 301, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!25 = !{i64 308, [9 x i8] c"\09jge\09479\00"}
!26 = !{i64 793, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!27 = !{i64 800, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!28 = !{i64 803, [16 x i8] c"\09addq\09$96, %rsp\00"}
!29 = !{i64 807, [11 x i8] c"\09popq\09%rbp\00"}
!30 = !{i64 808, [6 x i8] c"\09retq\00"}
!31 = !{i64 314, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!32 = !{i64 317, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!33 = !{i64 320, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!34 = !{i64 323, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!35 = !{i64 326, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!36 = !{i64 330, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!37 = !{i64 337, [17 x i8] c"\09subl\09$114, %edx\00"}
!38 = !{i64 340, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!39 = !{i64 343, [22 x i8] c"\09movl\09%edx, -80(%rbp)\00"}
!40 = !{i64 346, [7 x i8] c"\09jg\0945\00"}
!41 = !{i64 397, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!42 = !{i64 400, [17 x i8] c"\09subl\09$115, %eax\00"}
!43 = !{i64 403, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!44 = !{i64 406, [7 x i8] c"\09je\0941\00"}
!45 = !{i64 453, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!46 = !{i64 360, [16 x i8] c"\09subl\09$97, %eax\00"}
!47 = !{i64 363, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!48 = !{i64 366, [7 x i8] c"\09je\0997\00"}
!49 = !{i64 469, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!50 = !{i64 456, [15 x i8] c"\09addl\09$1, %eax\00"}
!51 = !{i64 461, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!52 = !{i64 464, [8 x i8] c"\09jmp\0944\00"}
!53 = !{i64 472, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!54 = !{i64 477, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!55 = !{i64 480, [8 x i8] c"\09jmp\0928\00"}
!56 = !{i64 417, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!57 = !{i64 420, [17 x i8] c"\09subl\09$119, %eax\00"}
!58 = !{i64 423, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!59 = !{i64 426, [8 x i8] c"\09jne\0969\00"}
!60 = !{i64 513, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!61 = !{i64 523, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!62 = !{i64 527, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!63 = !{i64 531, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!64 = !{i64 538, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!65 = !{i64 541, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!66 = !{i64 545, [16 x i8] c"\09cmpl\09$35, %esi\00"}
!67 = !{i64 551, [8 x i8] c"\09jne\0912\00"}
!68 = !{i64 377, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!69 = !{i64 380, [17 x i8] c"\09subl\09$100, %eax\00"}
!70 = !{i64 383, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!71 = !{i64 386, [7 x i8] c"\09je\0993\00"}
!72 = !{i64 501, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!73 = !{i64 508, [9 x i8] c"\09jmp\09287\00"}
!74 = !{i64 569, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!75 = !{i64 579, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!76 = !{i64 583, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!77 = !{i64 587, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!78 = !{i64 594, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!79 = !{i64 597, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!80 = !{i64 601, [16 x i8] c"\09cmpl\09$32, %esi\00"}
!81 = !{i64 607, [7 x i8] c"\09je\0995\00"}
!82 = !{i64 557, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!83 = !{i64 564, [9 x i8] c"\09jmp\09231\00"}
!84 = !{i64 485, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!85 = !{i64 488, [15 x i8] c"\09addl\09$1, %eax\00"}
!86 = !{i64 493, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!87 = !{i64 496, [8 x i8] c"\09jmp\0912\00"}
!88 = !{i64 437, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!89 = !{i64 440, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!90 = !{i64 445, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!91 = !{i64 448, [8 x i8] c"\09jmp\0960\00"}
!92 = !{i64 708, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!93 = !{i64 711, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!94 = !{i64 714, [8 x i8] c"\09jne\0924\00"}
!95 = !{i64 613, [20 x i8] c"\09cmpl\09$2, -24(%rbp)\00"}
!96 = !{i64 620, [8 x i8] c"\09jne\0970\00"}
!97 = !{i64 696, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!98 = !{i64 699, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!99 = !{i64 702, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!100 = !{i64 705, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!101 = !{i64 626, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!102 = !{i64 636, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!103 = !{i64 640, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!104 = !{i64 644, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!105 = !{i64 651, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!106 = !{i64 654, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!107 = !{i64 658, [17 x i8] c"\09cmpl\09$124, %esi\00"}
!108 = !{i64 664, [8 x i8] c"\09jne\0926\00"}
!109 = !{i64 744, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!110 = !{i64 754, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!111 = !{i64 758, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!112 = !{i64 762, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!113 = !{i64 769, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!114 = !{i64 772, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!115 = !{i64 776, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!116 = !{i64 779, [15 x i8] c"\09addl\09$1, %esi\00"}
!117 = !{i64 785, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!118 = !{i64 720, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!119 = !{i64 723, [22 x i8] c"\09cmpl\09-24(%rbp), %eax\00"}
!120 = !{i64 726, [8 x i8] c"\09jne\0912\00"}
!121 = !{i64 670, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!122 = !{i64 677, [8 x i8] c"\09jle\0913\00"}
!123 = !{i64 732, [19 x i8] c"\09movl\09$2, -4(%rbp)\00"}
!124 = !{i64 739, [8 x i8] c"\09jmp\0956\00"}
!125 = !{i64 683, [21 x i8] c"\09cmpl\09$11, -20(%rbp)\00"}
!126 = !{i64 690, [7 x i8] c"\09jl\0912\00"}
