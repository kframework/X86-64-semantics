; ModuleID = 'Output/test_23.clang.trans.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x330 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

define internal x86_64_sysvcc void @sub_c0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 104
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 104
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %80 = add i64 %79, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !2
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !3
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -104
  %82 = add i64 %79, -104
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !4
  store i1 %85, i1* %AF_val, !mcsema_real_eip !4
  %_trans_p2i_3 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_trunc_ = trunc i64 %_trans_p2i_3 to i8
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !4
  %87 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !4
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_4, 0
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !4
  store i1 %_trans_icmp_eq_, i1* %ZF_val, !mcsema_real_eip !4
  %_trans_p2i_5 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_5, 0
  %91 = icmp slt i64 %82, 0
  store i1 %_trans_icmp_ne_, i1* %SF_val, !mcsema_real_eip !4
  %_trans_p2i_6 = ptrtoint i8* %_new_gep_ to i64
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 96
  %92 = icmp ult i64 %80, 96, !mcsema_real_eip !4
  store i1 %_trans_icmp_ne_7, i1* %CF_val, !mcsema_real_eip !4
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_8
  %93 = and i64 %_trans_xor_, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %_trans_xor_9, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 0, i64* %RAX_val, !mcsema_real_eip !5
  store i64 28, i64* %RDX_val, !mcsema_real_eip !6
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -64
  %96 = add i64 %95, -64, !mcsema_real_eip !7
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !7
  %98 = ptrtoint i64* %_allin_new_bt_12 to i64, !mcsema_real_eip !7
  store i64 %98, i64* %RCX_val, !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %R8_val, !mcsema_real_eip !8
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %99 = add i64 %95, -4, !mcsema_real_eip !9
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !9
  %101 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 0, i32* %101, !mcsema_real_eip !9
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -8
  %103 = add i64 %102, -8, !mcsema_real_eip !10
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !10
  %105 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !10
  %107 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !10
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -16
  %109 = add i64 %108, -16, !mcsema_real_eip !11
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !11
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !11
  store i64 %111, i64* %_allin_new_bt_20, !mcsema_real_eip !11
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -36
  %113 = add i64 %112, -36, !mcsema_real_eip !12
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !12
  %115 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 0, i32* %115, !mcsema_real_eip !12
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -20
  %117 = add i64 %116, -20, !mcsema_real_eip !13
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !13
  %119 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 1, i32* %119, !mcsema_real_eip !13
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -24
  %121 = add i64 %120, -24, !mcsema_real_eip !14
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 1, i32* %123, !mcsema_real_eip !14
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -20
  %125 = add i64 %124, -20, !mcsema_real_eip !15
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !15
  %127 = bitcast i64* %_allin_new_bt_32 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !15
  %129 = sext i32 %128 to i64, !mcsema_real_eip !15
  store i64 %129, i64* %RSI_val, !mcsema_real_eip !15
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -24
  %131 = add i64 %130, -24, !mcsema_real_eip !16
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !16
  %133 = bitcast i64* %_allin_new_bt_35 to i32*
  %134 = load i32, i32* %133, !mcsema_real_eip !16
  %135 = sext i32 %134 to i64, !mcsema_real_eip !16
  %136 = mul i64 %135, 11, !mcsema_real_eip !17
  store i64 %136, i64* %R9_val, !mcsema_real_eip !17
  %137 = load i64, i64* %R8_val, !mcsema_real_eip !18
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %136, i64 %137)
  %138 = extractvalue { i64, i1 } %uadd, 0
  %139 = xor i64 %138, %137, !mcsema_real_eip !18
  %140 = xor i64 %139, %136, !mcsema_real_eip !18
  %141 = and i64 %140, 16, !mcsema_real_eip !18
  %142 = icmp ne i64 %141, 0, !mcsema_real_eip !18
  store i1 %142, i1* %AF_val, !mcsema_real_eip !18
  %143 = icmp slt i64 %138, 0
  store i1 %143, i1* %SF_val, !mcsema_real_eip !18
  %144 = icmp eq i64 %138, 0, !mcsema_real_eip !18
  store i1 %144, i1* %ZF_val, !mcsema_real_eip !18
  %145 = xor i64 %137, -9223372036854775808, !mcsema_real_eip !18
  %146 = xor i64 %145, %136, !mcsema_real_eip !18
  %147 = and i64 %139, %146, !mcsema_real_eip !18
  %148 = icmp slt i64 %147, 0
  store i1 %148, i1* %OF_val, !mcsema_real_eip !18
  %149 = trunc i64 %138 to i8, !mcsema_real_eip !18
  %150 = tail call i8 @llvm.ctpop.i8(i8 %149), !mcsema_real_eip !18
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  store i1 %152, i1* %PF_val, !mcsema_real_eip !18
  %153 = extractvalue { i64, i1 } %uadd, 1
  store i1 %153, i1* %CF_val, !mcsema_real_eip !18
  store i64 %138, i64* %R8_val, !mcsema_real_eip !18
  %154 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  %155 = add i64 %154, %138, !mcsema_real_eip !19
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !19
  %157 = bitcast i64* %156 to i8*
  store i8 88, i8* %157, !mcsema_real_eip !19
  %158 = load i64, i64* %RAX_val, !mcsema_real_eip !20
  %159 = and i64 %158, 4294967295
  store i64 %159, i64* %RDI_val, !mcsema_real_eip !20
  %160 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %160, i64* %RSI_val, !mcsema_real_eip !21
  %161 = load i64, i64* %RDX_val, !mcsema_real_eip !22
  %162 = tail call x86_64_sysvcc i64 @read(i64 %159, i64 %160, i64 %161), !mcsema_real_eip !22
  store i64 %162, i64* %RAX_val, !mcsema_real_eip !22
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -72
  %164 = add i64 %163, -72, !mcsema_real_eip !23
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !23
  store i64 %162, i64* %_allin_new_bt_38, !mcsema_real_eip !23
  br label %block_0x12d, !mcsema_real_eip !24

block_0x12d:                                      ; preds = %block_0x2e8, %entry
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -36
  %167 = add i64 %166, -36, !mcsema_real_eip !24
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !24
  %169 = bitcast i64* %_allin_new_bt_41 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !24
  %171 = add i32 %170, -28
  %172 = xor i32 %171, %170, !mcsema_real_eip !24
  %173 = and i32 %172, 16
  %174 = icmp eq i32 %173, 0
  store i1 %174, i1* %AF_val, !mcsema_real_eip !24
  %175 = trunc i32 %171 to i8, !mcsema_real_eip !24
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !24
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF_val, !mcsema_real_eip !24
  %179 = icmp eq i32 %171, 0, !mcsema_real_eip !24
  store i1 %179, i1* %ZF_val, !mcsema_real_eip !24
  %180 = icmp slt i32 %171, 0
  store i1 %180, i1* %SF_val, !mcsema_real_eip !24
  %181 = icmp ult i32 %170, 28, !mcsema_real_eip !24
  store i1 %181, i1* %CF_val, !mcsema_real_eip !24
  %182 = and i32 %172, %170, !mcsema_real_eip !24
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF_val, !mcsema_real_eip !24
  %tmp = xor i1 %180, %183
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  br i1 %tmp, label %block_0x13a, label %block_0x319, !mcsema_real_eip !26

block_0x13a:                                      ; preds = %block_0x12d
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -20
  %185 = add i64 %184, -20, !mcsema_real_eip !27
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !27
  %187 = bitcast i64* %_allin_new_bt_44 to i32*
  %188 = load i32, i32* %187, !mcsema_real_eip !27
  %189 = zext i32 %188 to i64, !mcsema_real_eip !27
  store i64 %189, i64* %RAX_val, !mcsema_real_eip !27
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -28
  %191 = add i64 %190, -28, !mcsema_real_eip !28
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !28
  %193 = bitcast i64* %_allin_new_bt_47 to i32*
  store i32 %188, i32* %193, !mcsema_real_eip !28
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -24
  %195 = add i64 %194, -24, !mcsema_real_eip !29
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !29
  %197 = bitcast i64* %_allin_new_bt_50 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !29
  %199 = zext i32 %198 to i64, !mcsema_real_eip !29
  store i64 %199, i64* %RAX_val, !mcsema_real_eip !29
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -32
  %201 = add i64 %200, -32, !mcsema_real_eip !30
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !30
  %203 = bitcast i64* %_allin_new_bt_53 to i32*
  store i32 %198, i32* %203, !mcsema_real_eip !30
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -36
  %205 = add i64 %204, -36, !mcsema_real_eip !31
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !31
  %207 = bitcast i64* %_allin_new_bt_56 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !31
  %209 = sext i32 %208 to i64, !mcsema_real_eip !31
  store i64 %209, i64* %RCX_val, !mcsema_real_eip !31
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -64
  %211 = add i64 %210, -64, !mcsema_real_eip !32
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_58, i64 %209
  %212 = add i64 %211, %209, !mcsema_real_eip !32
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !32
  %214 = bitcast i64* %_allin_new_bt_60 to i8*
  %215 = load i8, i8* %214, !mcsema_real_eip !32
  %216 = sext i8 %215 to i32, !mcsema_real_eip !32
  %217 = zext i32 %216 to i64, !mcsema_real_eip !32
  store i64 %217, i64* %RAX_val, !mcsema_real_eip !32
  %218 = add nsw i32 %216, -114
  %219 = xor i32 %218, %216, !mcsema_real_eip !33
  %220 = and i32 %219, 16
  %221 = icmp eq i32 %220, 0
  store i1 %221, i1* %AF_val, !mcsema_real_eip !33
  %222 = trunc i32 %218 to i8, !mcsema_real_eip !33
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !33
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF_val, !mcsema_real_eip !33
  %226 = icmp eq i32 %218, 0, !mcsema_real_eip !33
  store i1 %226, i1* %ZF_val, !mcsema_real_eip !33
  %227 = icmp slt i32 %218, 0
  store i1 %227, i1* %SF_val, !mcsema_real_eip !33
  %228 = icmp ult i8 %215, 114
  store i1 %228, i1* %CF_val, !mcsema_real_eip !33
  %229 = and i32 %219, %216, !mcsema_real_eip !33
  %230 = icmp slt i32 %229, 0
  store i1 %230, i1* %OF_val, !mcsema_real_eip !33
  %231 = zext i32 %218 to i64, !mcsema_real_eip !33
  store i64 %231, i64* %RDX_val, !mcsema_real_eip !33
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -76
  %233 = add i64 %232, -76, !mcsema_real_eip !34
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !34
  %235 = load i64, i64* %RAX_val, !mcsema_real_eip !34
  %236 = trunc i64 %235 to i32, !mcsema_real_eip !34
  %237 = bitcast i64* %_allin_new_bt_63 to i32*
  store i32 %236, i32* %237, !mcsema_real_eip !34
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %238 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -80
  %239 = add i64 %238, -80, !mcsema_real_eip !35
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !35
  %241 = load i64, i64* %RDX_val, !mcsema_real_eip !35
  %242 = trunc i64 %241 to i32, !mcsema_real_eip !35
  %243 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %242, i32* %243, !mcsema_real_eip !35
  %244 = load i1, i1* %OF_val, !mcsema_real_eip !36
  %245 = load i1, i1* %SF_val, !mcsema_real_eip !36
  %tmp71 = xor i1 %245, %244
  %246 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  %.demorgan = or i1 %246, %tmp71
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -76
  %248 = add i64 %247, -76, !mcsema_real_eip !37
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !37
  %250 = bitcast i64* %_allin_new_bt_69 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !37
  %252 = zext i32 %251 to i64, !mcsema_real_eip !37
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !37
  br i1 %.demorgan, label %block_0x165, label %block_0x18d, !mcsema_real_eip !36

block_0x319:                                      ; preds = %block_0x12d
  %253 = phi i8* [ %_load_rbp_ptr_42, %block_0x12d ]
  %.lcssa = phi i64 [ %184, %block_0x12d ]
  %_new_gep_70 = getelementptr i8, i8* %253, i64 -4
  %254 = add i64 %.lcssa, -4, !mcsema_real_eip !25
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !25
  %256 = bitcast i64* %_allin_new_bt_71 to i32*
  store i32 1, i32* %256, !mcsema_real_eip !25
  br label %block_0x320, !mcsema_real_eip !27

block_0x320:                                      ; preds = %block_0x2dc, %block_0x1f5, %block_0x22d, %block_0x319
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %257 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -4
  %258 = add i64 %257, -4, !mcsema_real_eip !38
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !38
  %260 = bitcast i64* %_allin_new_bt_74 to i32*
  %261 = load i32, i32* %260, !mcsema_real_eip !38
  %262 = zext i32 %261 to i64, !mcsema_real_eip !38
  store i64 %262, i64* %RAX_val, !mcsema_real_eip !38
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %263 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %_new_ptr2int_76 = ptrtoint i8* %_load_rsp_ptr_75 to i64
  %uadd73 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_76, i64 96)
  %264 = extractvalue { i64, i1 } %uadd73, 0
  %265 = xor i64 %264, %_new_ptr2int_76, !mcsema_real_eip !39
  %266 = and i64 %265, 16, !mcsema_real_eip !39
  %267 = icmp ne i64 %266, 0, !mcsema_real_eip !39
  store i1 %267, i1* %AF_val, !mcsema_real_eip !39
  %268 = icmp slt i64 %264, 0
  store i1 %268, i1* %SF_val, !mcsema_real_eip !39
  %269 = icmp eq i64 %264, 0, !mcsema_real_eip !39
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !39
  %270 = xor i64 %_new_ptr2int_76, -9223372036854775808, !mcsema_real_eip !39
  %271 = and i64 %265, %270, !mcsema_real_eip !39
  %272 = icmp slt i64 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !39
  %273 = trunc i64 %264 to i8, !mcsema_real_eip !39
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !39
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !39
  %277 = extractvalue { i64, i1 } %uadd73, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !39
  %_new_int2ptr_ = inttoptr i64 %264 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %264, i64* %RSP_val, !mcsema_real_eip !39
  %278 = inttoptr i64 %264 to i64*, !mcsema_real_eip !40
  %279 = load i64, i64* %278, !mcsema_real_eip !40
  %_new_int2ptr_77 = inttoptr i64 %279 to i8*
  store volatile i8* %_new_int2ptr_77, i8** %_RBP_ptr_
  store i64 %279, i64* %RBP_val, !mcsema_real_eip !40
  %280 = add i64 %264, 16, !mcsema_real_eip !41
  %_new_int2ptr_78 = inttoptr i64 %280 to i8*
  store volatile i8* %_new_int2ptr_78, i8** %_RSP_ptr_
  store i64 %280, i64* %RSP_val, !mcsema_real_eip !41
  %281 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %281, i64* %RAX, !mcsema_real_eip !41
  %282 = load i64, i64* %RBX_val, !mcsema_real_eip !41
  store i64 %282, i64* %RBX, !mcsema_real_eip !41
  %283 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %283, i64* %RCX, !mcsema_real_eip !41
  %284 = load i64, i64* %RDX_val, !mcsema_real_eip !41
  store i64 %284, i64* %RDX, !mcsema_real_eip !41
  %285 = load i64, i64* %RSI_val, !mcsema_real_eip !41
  store i64 %285, i64* %RSI, !mcsema_real_eip !41
  %286 = load i64, i64* %RDI_val, !mcsema_real_eip !41
  store i64 %286, i64* %RDI, !mcsema_real_eip !41
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %287 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  %_new_ptr2int_80 = ptrtoint i8* %_load_rsp_ptr_79 to i64
  store volatile i64 %_new_ptr2int_80, i64* %RSP
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %288 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_ptr2int_82 = ptrtoint i8* %_load_rbp_ptr_81 to i64
  store volatile i64 %_new_ptr2int_82, i64* %RBP
  %289 = load i64, i64* %R8_val, !mcsema_real_eip !41
  store i64 %289, i64* %R8, !mcsema_real_eip !41
  %290 = load i64, i64* %R9_val, !mcsema_real_eip !41
  store i64 %290, i64* %R9, !mcsema_real_eip !41
  %291 = load i64, i64* %R10_val, !mcsema_real_eip !41
  store i64 %291, i64* %R10, !mcsema_real_eip !41
  %292 = load i64, i64* %R11_val, !mcsema_real_eip !41
  store i64 %292, i64* %R11, !mcsema_real_eip !41
  %293 = load i64, i64* %R12_val, !mcsema_real_eip !41
  store i64 %293, i64* %R12, !mcsema_real_eip !41
  %294 = load i64, i64* %R13_val, !mcsema_real_eip !41
  store i64 %294, i64* %R13, !mcsema_real_eip !41
  %295 = load i64, i64* %R14_val, !mcsema_real_eip !41
  store i64 %295, i64* %R14, !mcsema_real_eip !41
  %296 = load i64, i64* %R15_val, !mcsema_real_eip !41
  store i64 %296, i64* %R15, !mcsema_real_eip !41
  %297 = load i64, i64* %RIP_val, !mcsema_real_eip !41
  store i64 %297, i64* %RIP, !mcsema_real_eip !41
  %298 = load i1, i1* %CF_val, !mcsema_real_eip !41
  store i1 %298, i1* %CF, align 1, !mcsema_real_eip !41
  %299 = load i1, i1* %PF_val, !mcsema_real_eip !41
  store i1 %299, i1* %PF, align 1, !mcsema_real_eip !41
  %300 = load i1, i1* %AF_val, !mcsema_real_eip !41
  store i1 %300, i1* %AF, align 1, !mcsema_real_eip !41
  %301 = load i1, i1* %ZF_val, !mcsema_real_eip !41
  store i1 %301, i1* %ZF, align 1, !mcsema_real_eip !41
  %302 = load i1, i1* %SF_val, !mcsema_real_eip !41
  store i1 %302, i1* %SF, align 1, !mcsema_real_eip !41
  %303 = load i1, i1* %OF_val, !mcsema_real_eip !41
  store i1 %303, i1* %OF, align 1, !mcsema_real_eip !41
  %304 = load i1, i1* %DF_val, !mcsema_real_eip !41
  store i1 %304, i1* %DF, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  %305 = load i1, i1* %FPU_B_val, !mcsema_real_eip !41
  store i1 %305, i1* %FPU_B, align 1, !mcsema_real_eip !41
  %306 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !41
  store i1 %306, i1* %FPU_C3, align 1, !mcsema_real_eip !41
  %307 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !41
  store i3 %307, i3* %FPU_TOP, align 1, !mcsema_real_eip !41
  %308 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !41
  store i1 %308, i1* %FPU_C2, align 1, !mcsema_real_eip !41
  %309 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !41
  store i1 %309, i1* %FPU_C1, align 1, !mcsema_real_eip !41
  %310 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !41
  store i1 %310, i1* %FPU_C0, align 1, !mcsema_real_eip !41
  %311 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !41
  store i1 %311, i1* %FPU_ES, align 1, !mcsema_real_eip !41
  %312 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !41
  store i1 %312, i1* %FPU_SF, align 1, !mcsema_real_eip !41
  %313 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !41
  store i1 %313, i1* %FPU_PE, align 1, !mcsema_real_eip !41
  %314 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !41
  store i1 %314, i1* %FPU_UE, align 1, !mcsema_real_eip !41
  %315 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !41
  store i1 %315, i1* %FPU_OE, align 1, !mcsema_real_eip !41
  %316 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !41
  store i1 %316, i1* %FPU_ZE, align 1, !mcsema_real_eip !41
  %317 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !41
  store i1 %317, i1* %FPU_DE, align 1, !mcsema_real_eip !41
  %318 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !41
  store i1 %318, i1* %FPU_IE, align 1, !mcsema_real_eip !41
  %319 = load i1, i1* %FPU_X_val, !mcsema_real_eip !41
  store i1 %319, i1* %FPU_X, align 1, !mcsema_real_eip !41
  %320 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !41
  store i2 %320, i2* %FPU_RC, align 1, !mcsema_real_eip !41
  %321 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !41
  store i2 %321, i2* %FPU_PC, align 1, !mcsema_real_eip !41
  %322 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !41
  store i1 %322, i1* %FPU_PM, align 1, !mcsema_real_eip !41
  %323 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !41
  store i1 %323, i1* %FPU_UM, align 1, !mcsema_real_eip !41
  %324 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !41
  store i1 %324, i1* %FPU_OM, align 1, !mcsema_real_eip !41
  %325 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !41
  store i1 %325, i1* %FPU_ZM, align 1, !mcsema_real_eip !41
  %326 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !41
  store i1 %326, i1* %FPU_DM, align 1, !mcsema_real_eip !41
  %327 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !41
  store i1 %327, i1* %FPU_IM, align 1, !mcsema_real_eip !41
  %328 = load i64, i64* %53, align 4
  store i64 %328, i64* %52, align 4
  %329 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !41
  store i16 %329, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !41
  %330 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !41
  store i64 %330, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !41
  %331 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !41
  store i16 %331, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !41
  %332 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !41
  store i64 %332, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !41
  %333 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !41
  store i11 %333, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !41
  %334 = load i128, i128* %XMM0_val, !mcsema_real_eip !41
  store i128 %334, i128* %XMM0, align 1, !mcsema_real_eip !41
  %335 = load i128, i128* %XMM1_val, !mcsema_real_eip !41
  store i128 %335, i128* %XMM1, align 1, !mcsema_real_eip !41
  %336 = load i128, i128* %XMM2_val, !mcsema_real_eip !41
  store i128 %336, i128* %XMM2, align 1, !mcsema_real_eip !41
  %337 = load i128, i128* %XMM3_val, !mcsema_real_eip !41
  store i128 %337, i128* %XMM3, align 1, !mcsema_real_eip !41
  %338 = load i128, i128* %XMM4_val, !mcsema_real_eip !41
  store i128 %338, i128* %XMM4, align 1, !mcsema_real_eip !41
  %339 = load i128, i128* %XMM5_val, !mcsema_real_eip !41
  store i128 %339, i128* %XMM5, align 1, !mcsema_real_eip !41
  %340 = load i128, i128* %XMM6_val, !mcsema_real_eip !41
  store i128 %340, i128* %XMM6, align 1, !mcsema_real_eip !41
  %341 = load i128, i128* %XMM7_val, !mcsema_real_eip !41
  store i128 %341, i128* %XMM7, align 1, !mcsema_real_eip !41
  %342 = load i128, i128* %XMM8_val, !mcsema_real_eip !41
  store i128 %342, i128* %XMM8, align 1, !mcsema_real_eip !41
  %343 = load i128, i128* %XMM9_val, !mcsema_real_eip !41
  store i128 %343, i128* %XMM9, align 1, !mcsema_real_eip !41
  %344 = load i128, i128* %XMM10_val, !mcsema_real_eip !41
  store i128 %344, i128* %XMM10, align 1, !mcsema_real_eip !41
  %345 = load i128, i128* %XMM11_val, !mcsema_real_eip !41
  store i128 %345, i128* %XMM11, align 1, !mcsema_real_eip !41
  %346 = load i128, i128* %XMM12_val, !mcsema_real_eip !41
  store i128 %346, i128* %XMM12, align 1, !mcsema_real_eip !41
  %347 = load i128, i128* %XMM13_val, !mcsema_real_eip !41
  store i128 %347, i128* %XMM13, align 1, !mcsema_real_eip !41
  %348 = load i128, i128* %XMM14_val, !mcsema_real_eip !41
  store i128 %348, i128* %XMM14, align 1, !mcsema_real_eip !41
  %349 = load i128, i128* %XMM15_val, !mcsema_real_eip !41
  store i128 %349, i128* %XMM15, align 1, !mcsema_real_eip !41
  %350 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !41
  store i64 %350, i64* %STACK_BASE, align 1, !mcsema_real_eip !41
  %351 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !41
  store i64 %351, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41

block_0x18d:                                      ; preds = %block_0x13a
  %352 = add i32 %251, -115
  %353 = xor i32 %352, %251, !mcsema_real_eip !42
  %354 = and i32 %353, 16
  %355 = icmp eq i32 %354, 0
  store i1 %355, i1* %AF_val, !mcsema_real_eip !42
  %356 = trunc i32 %352 to i8, !mcsema_real_eip !42
  %357 = tail call i8 @llvm.ctpop.i8(i8 %356), !mcsema_real_eip !42
  %358 = and i8 %357, 1
  %359 = icmp eq i8 %358, 0
  store i1 %359, i1* %PF_val, !mcsema_real_eip !42
  %360 = icmp eq i32 %352, 0, !mcsema_real_eip !42
  store i1 %360, i1* %ZF_val, !mcsema_real_eip !42
  %361 = icmp slt i32 %352, 0
  store i1 %361, i1* %SF_val, !mcsema_real_eip !42
  %362 = icmp ult i32 %251, 115, !mcsema_real_eip !42
  store i1 %362, i1* %CF_val, !mcsema_real_eip !42
  %363 = and i32 %353, %251, !mcsema_real_eip !42
  %364 = icmp slt i32 %363, 0
  store i1 %364, i1* %OF_val, !mcsema_real_eip !42
  %365 = zext i32 %352 to i64, !mcsema_real_eip !42
  store i64 %365, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %366 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -92
  %367 = add i64 %366, -92, !mcsema_real_eip !43
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !43
  %369 = bitcast i64* %_allin_new_bt_85 to i32*
  store i32 %352, i32* %369, !mcsema_real_eip !43
  %370 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  br i1 %370, label %block_0x1c5, label %block_0x1a1, !mcsema_real_eip !44

block_0x1c5:                                      ; preds = %block_0x18d
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -24
  %372 = add i64 %371, -24, !mcsema_real_eip !45
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !45
  %374 = bitcast i64* %_allin_new_bt_88 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !45
  %uadd92 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 1)
  %376 = extractvalue { i32, i1 } %uadd92, 0
  %377 = xor i32 %376, %375, !mcsema_real_eip !46
  %378 = and i32 %377, 16, !mcsema_real_eip !46
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !46
  store i1 %379, i1* %AF_val, !mcsema_real_eip !46
  %380 = icmp slt i32 %376, 0
  store i1 %380, i1* %SF_val, !mcsema_real_eip !46
  %381 = icmp eq i32 %376, 0, !mcsema_real_eip !46
  store i1 %381, i1* %ZF_val, !mcsema_real_eip !46
  %382 = xor i32 %375, -2147483648, !mcsema_real_eip !46
  %383 = and i32 %377, %382, !mcsema_real_eip !46
  %384 = icmp slt i32 %383, 0
  store i1 %384, i1* %OF_val, !mcsema_real_eip !46
  %385 = trunc i32 %376 to i8, !mcsema_real_eip !46
  %386 = tail call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !46
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF_val, !mcsema_real_eip !46
  %389 = extractvalue { i32, i1 } %uadd92, 1
  store i1 %389, i1* %CF_val, !mcsema_real_eip !46
  %390 = zext i32 %376 to i64, !mcsema_real_eip !46
  store i64 %390, i64* %RAX_val, !mcsema_real_eip !46
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %391 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -24
  %392 = add i64 %391, -24, !mcsema_real_eip !47
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !47
  %394 = bitcast i64* %_allin_new_bt_91 to i32*
  store i32 %376, i32* %394, !mcsema_real_eip !47
  br label %block_0x201, !mcsema_real_eip !48

block_0x165:                                      ; preds = %block_0x13a
  %395 = add i32 %251, -97
  %396 = xor i32 %395, %251, !mcsema_real_eip !49
  %397 = and i32 %396, 16, !mcsema_real_eip !49
  %398 = icmp ne i32 %397, 0, !mcsema_real_eip !49
  store i1 %398, i1* %AF_val, !mcsema_real_eip !49
  %399 = trunc i32 %395 to i8, !mcsema_real_eip !49
  %400 = tail call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !49
  %401 = and i8 %400, 1
  %402 = icmp eq i8 %401, 0
  store i1 %402, i1* %PF_val, !mcsema_real_eip !49
  %403 = icmp eq i32 %395, 0, !mcsema_real_eip !49
  store i1 %403, i1* %ZF_val, !mcsema_real_eip !49
  %404 = icmp slt i32 %395, 0
  store i1 %404, i1* %SF_val, !mcsema_real_eip !49
  %405 = icmp ult i32 %251, 97, !mcsema_real_eip !49
  store i1 %405, i1* %CF_val, !mcsema_real_eip !49
  %406 = and i32 %396, %251, !mcsema_real_eip !49
  %407 = icmp slt i32 %406, 0
  store i1 %407, i1* %OF_val, !mcsema_real_eip !49
  %408 = zext i32 %395 to i64, !mcsema_real_eip !49
  store i64 %408, i64* %RAX_val, !mcsema_real_eip !49
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -84
  %410 = add i64 %409, -84, !mcsema_real_eip !50
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !50
  %412 = bitcast i64* %_allin_new_bt_94 to i32*
  store i32 %395, i32* %412, !mcsema_real_eip !50
  %413 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %414 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  br i1 %413, label %block_0x1d5, label %block_0x179, !mcsema_real_eip !51

block_0x201:                                      ; preds = %block_0x1e5, %block_0x1b5, %block_0x1d5, %block_0x1c5
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !53
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %415 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -20
  %416 = add i64 %415, -20, !mcsema_real_eip !54
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !54
  %418 = bitcast i64* %_allin_new_bt_98 to i32*
  %419 = load i32, i32* %418, !mcsema_real_eip !54
  %420 = sext i32 %419 to i64, !mcsema_real_eip !54
  store i64 %420, i64* %RCX_val, !mcsema_real_eip !54
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %421 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -24
  %422 = add i64 %421, -24, !mcsema_real_eip !55
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !55
  %424 = bitcast i64* %_allin_new_bt_101 to i32*
  %425 = load i32, i32* %424, !mcsema_real_eip !55
  %426 = sext i32 %425 to i64, !mcsema_real_eip !55
  %427 = mul i64 %426, 11, !mcsema_real_eip !56
  store i64 %427, i64* %RDX_val, !mcsema_real_eip !56
  %428 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %427, i64 %428)
  %429 = extractvalue { i64, i1 } %uadd75, 0
  %430 = xor i64 %429, %428, !mcsema_real_eip !57
  %431 = xor i64 %430, %427, !mcsema_real_eip !57
  %432 = and i64 %431, 16, !mcsema_real_eip !57
  %433 = icmp ne i64 %432, 0, !mcsema_real_eip !57
  store i1 %433, i1* %AF_val, !mcsema_real_eip !57
  %434 = icmp slt i64 %429, 0
  store i1 %434, i1* %SF_val, !mcsema_real_eip !57
  %435 = icmp eq i64 %429, 0, !mcsema_real_eip !57
  store i1 %435, i1* %ZF_val, !mcsema_real_eip !57
  %436 = xor i64 %428, -9223372036854775808, !mcsema_real_eip !57
  %437 = xor i64 %436, %427, !mcsema_real_eip !57
  %438 = and i64 %430, %437, !mcsema_real_eip !57
  %439 = icmp slt i64 %438, 0
  store i1 %439, i1* %OF_val, !mcsema_real_eip !57
  %440 = trunc i64 %429 to i8, !mcsema_real_eip !57
  %441 = tail call i8 @llvm.ctpop.i8(i8 %440), !mcsema_real_eip !57
  %442 = and i8 %441, 1
  %443 = icmp eq i8 %442, 0
  store i1 %443, i1* %PF_val, !mcsema_real_eip !57
  %444 = extractvalue { i64, i1 } %uadd75, 1
  store i1 %444, i1* %CF_val, !mcsema_real_eip !57
  store i64 %429, i64* %RAX_val, !mcsema_real_eip !57
  %445 = load i64, i64* %RCX_val, !mcsema_real_eip !58
  %446 = add i64 %445, %429, !mcsema_real_eip !58
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !58
  %448 = bitcast i64* %447 to i8*
  %449 = load i8, i8* %448, !mcsema_real_eip !58
  %450 = sext i8 %449 to i32, !mcsema_real_eip !58
  %451 = zext i32 %450 to i64, !mcsema_real_eip !58
  store i64 %451, i64* %RSI_val, !mcsema_real_eip !58
  %452 = add nsw i32 %450, -35
  %453 = xor i32 %452, %450, !mcsema_real_eip !59
  %454 = and i32 %453, 16, !mcsema_real_eip !59
  %455 = icmp ne i32 %454, 0, !mcsema_real_eip !59
  store i1 %455, i1* %AF_val, !mcsema_real_eip !59
  %456 = trunc i32 %452 to i8, !mcsema_real_eip !59
  %457 = tail call i8 @llvm.ctpop.i8(i8 %456), !mcsema_real_eip !59
  %458 = and i8 %457, 1
  %459 = icmp eq i8 %458, 0
  store i1 %459, i1* %PF_val, !mcsema_real_eip !59
  %460 = icmp eq i32 %452, 0, !mcsema_real_eip !59
  store i1 %460, i1* %ZF_val, !mcsema_real_eip !59
  %461 = icmp slt i32 %452, 0
  store i1 %461, i1* %SF_val, !mcsema_real_eip !59
  %462 = icmp ult i8 %449, 35
  store i1 %462, i1* %CF_val, !mcsema_real_eip !59
  %463 = and i32 %453, %450, !mcsema_real_eip !59
  %464 = icmp slt i32 %463, 0
  store i1 %464, i1* %OF_val, !mcsema_real_eip !59
  %465 = load i1, i1* %ZF_val, !mcsema_real_eip !60
  br i1 %465, label %block_0x22d, label %block_0x239, !mcsema_real_eip !60

block_0x1a1:                                      ; preds = %block_0x18d
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -76
  %466 = add i64 %371, -76, !mcsema_real_eip !61
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !61
  %468 = bitcast i64* %_allin_new_bt_103 to i32*
  %469 = load i32, i32* %468, !mcsema_real_eip !61
  %470 = add i32 %469, -119
  %471 = xor i32 %470, %469, !mcsema_real_eip !62
  %472 = and i32 %471, 16
  %473 = icmp eq i32 %472, 0
  store i1 %473, i1* %AF_val, !mcsema_real_eip !62
  %474 = trunc i32 %470 to i8, !mcsema_real_eip !62
  %475 = tail call i8 @llvm.ctpop.i8(i8 %474), !mcsema_real_eip !62
  %476 = and i8 %475, 1
  %477 = icmp eq i8 %476, 0
  store i1 %477, i1* %PF_val, !mcsema_real_eip !62
  %478 = icmp eq i32 %470, 0, !mcsema_real_eip !62
  store i1 %478, i1* %ZF_val, !mcsema_real_eip !62
  %479 = icmp slt i32 %470, 0
  store i1 %479, i1* %SF_val, !mcsema_real_eip !62
  %480 = icmp ult i32 %469, 119, !mcsema_real_eip !62
  store i1 %480, i1* %CF_val, !mcsema_real_eip !62
  %481 = and i32 %471, %469, !mcsema_real_eip !62
  %482 = icmp slt i32 %481, 0
  store i1 %482, i1* %OF_val, !mcsema_real_eip !62
  %483 = zext i32 %470 to i64, !mcsema_real_eip !62
  store i64 %483, i64* %RAX_val, !mcsema_real_eip !62
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %484 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -96
  %485 = add i64 %484, -96, !mcsema_real_eip !63
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !63
  %487 = bitcast i64* %_allin_new_bt_106 to i32*
  store i32 %470, i32* %487, !mcsema_real_eip !63
  %488 = load i1, i1* %ZF_val, !mcsema_real_eip !64
  br i1 %488, label %block_0x1b5, label %block_0x1f5, !mcsema_real_eip !64

block_0x1d5:                                      ; preds = %block_0x165
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -20
  %489 = add i64 %414, -20, !mcsema_real_eip !52
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !52
  %491 = bitcast i64* %_allin_new_bt_108 to i32*
  %492 = load i32, i32* %491, !mcsema_real_eip !52
  %uadd89 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %492, i32 -1)
  %493 = extractvalue { i32, i1 } %uadd89, 0
  %494 = xor i32 %493, %492, !mcsema_real_eip !65
  %495 = and i32 %494, 16
  %496 = icmp eq i32 %495, 0
  store i1 %496, i1* %AF_val, !mcsema_real_eip !65
  %497 = icmp slt i32 %493, 0
  store i1 %497, i1* %SF_val, !mcsema_real_eip !65
  %498 = icmp eq i32 %493, 0, !mcsema_real_eip !65
  store i1 %498, i1* %ZF_val, !mcsema_real_eip !65
  %499 = and i32 %494, %492, !mcsema_real_eip !65
  %500 = icmp slt i32 %499, 0
  store i1 %500, i1* %OF_val, !mcsema_real_eip !65
  %501 = trunc i32 %493 to i8, !mcsema_real_eip !65
  %502 = tail call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !65
  %503 = and i8 %502, 1
  %504 = icmp eq i8 %503, 0
  store i1 %504, i1* %PF_val, !mcsema_real_eip !65
  %505 = extractvalue { i32, i1 } %uadd89, 1
  store i1 %505, i1* %CF_val, !mcsema_real_eip !65
  %506 = zext i32 %493 to i64, !mcsema_real_eip !65
  store i64 %506, i64* %RAX_val, !mcsema_real_eip !65
  %_load_rbp_ptr_109 = load i8*, i8** %_RBP_ptr_
  %507 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_110 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -20
  %508 = add i64 %507, -20, !mcsema_real_eip !66
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !66
  %510 = bitcast i64* %_allin_new_bt_111 to i32*
  store i32 %493, i32* %510, !mcsema_real_eip !66
  br label %block_0x201, !mcsema_real_eip !67

block_0x22d:                                      ; preds = %block_0x201
  %_load_rbp_ptr_112 = load i8*, i8** %_RBP_ptr_
  %511 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_112, i64 -4
  %512 = add i64 %511, -4, !mcsema_real_eip !68
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !68
  %514 = bitcast i64* %_allin_new_bt_114 to i32*
  store i32 0, i32* %514, !mcsema_real_eip !68
  br label %block_0x320, !mcsema_real_eip !69

block_0x239:                                      ; preds = %block_0x201
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !70
  %_load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_115, i64 -20
  %516 = add i64 %515, -20, !mcsema_real_eip !71
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !71
  %518 = bitcast i64* %_allin_new_bt_117 to i32*
  %519 = load i32, i32* %518, !mcsema_real_eip !71
  %520 = sext i32 %519 to i64, !mcsema_real_eip !71
  store i64 %520, i64* %RCX_val, !mcsema_real_eip !71
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %521 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -24
  %522 = add i64 %521, -24, !mcsema_real_eip !72
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !72
  %524 = bitcast i64* %_allin_new_bt_120 to i32*
  %525 = load i32, i32* %524, !mcsema_real_eip !72
  %526 = sext i32 %525 to i64, !mcsema_real_eip !72
  %527 = mul i64 %526, 11, !mcsema_real_eip !73
  store i64 %527, i64* %RDX_val, !mcsema_real_eip !73
  %528 = load i64, i64* %RAX_val, !mcsema_real_eip !74
  %uadd77 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %527, i64 %528)
  %529 = extractvalue { i64, i1 } %uadd77, 0
  %530 = xor i64 %529, %528, !mcsema_real_eip !74
  %531 = xor i64 %530, %527, !mcsema_real_eip !74
  %532 = and i64 %531, 16, !mcsema_real_eip !74
  %533 = icmp ne i64 %532, 0, !mcsema_real_eip !74
  store i1 %533, i1* %AF_val, !mcsema_real_eip !74
  %534 = icmp slt i64 %529, 0
  store i1 %534, i1* %SF_val, !mcsema_real_eip !74
  %535 = icmp eq i64 %529, 0, !mcsema_real_eip !74
  store i1 %535, i1* %ZF_val, !mcsema_real_eip !74
  %536 = xor i64 %528, -9223372036854775808, !mcsema_real_eip !74
  %537 = xor i64 %536, %527, !mcsema_real_eip !74
  %538 = and i64 %530, %537, !mcsema_real_eip !74
  %539 = icmp slt i64 %538, 0
  store i1 %539, i1* %OF_val, !mcsema_real_eip !74
  %540 = trunc i64 %529 to i8, !mcsema_real_eip !74
  %541 = tail call i8 @llvm.ctpop.i8(i8 %540), !mcsema_real_eip !74
  %542 = and i8 %541, 1
  %543 = icmp eq i8 %542, 0
  store i1 %543, i1* %PF_val, !mcsema_real_eip !74
  %544 = extractvalue { i64, i1 } %uadd77, 1
  store i1 %544, i1* %CF_val, !mcsema_real_eip !74
  store i64 %529, i64* %RAX_val, !mcsema_real_eip !74
  %545 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %546 = add i64 %545, %529, !mcsema_real_eip !75
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !75
  %548 = bitcast i64* %547 to i8*
  %549 = load i8, i8* %548, !mcsema_real_eip !75
  %550 = sext i8 %549 to i32, !mcsema_real_eip !75
  %551 = zext i32 %550 to i64, !mcsema_real_eip !75
  store i64 %551, i64* %RSI_val, !mcsema_real_eip !75
  %552 = add nsw i32 %550, -32
  %553 = xor i32 %552, %550, !mcsema_real_eip !76
  %554 = and i32 %553, 16, !mcsema_real_eip !76
  %555 = icmp ne i32 %554, 0, !mcsema_real_eip !76
  store i1 %555, i1* %AF_val, !mcsema_real_eip !76
  %556 = trunc i32 %552 to i8, !mcsema_real_eip !76
  %557 = tail call i8 @llvm.ctpop.i8(i8 %556), !mcsema_real_eip !76
  %558 = and i8 %557, 1
  %559 = icmp eq i8 %558, 0
  store i1 %559, i1* %PF_val, !mcsema_real_eip !76
  %560 = icmp eq i32 %552, 0, !mcsema_real_eip !76
  store i1 %560, i1* %ZF_val, !mcsema_real_eip !76
  %561 = icmp slt i32 %552, 0
  store i1 %561, i1* %SF_val, !mcsema_real_eip !76
  %562 = icmp ult i8 %549, 32
  store i1 %562, i1* %CF_val, !mcsema_real_eip !76
  %563 = and i32 %553, %550, !mcsema_real_eip !76
  %564 = icmp slt i32 %563, 0
  store i1 %564, i1* %OF_val, !mcsema_real_eip !76
  %565 = load i1, i1* %ZF_val, !mcsema_real_eip !77
  br i1 %565, label %block_0x2c4, label %block_0x265, !mcsema_real_eip !77

block_0x1f5:                                      ; preds = %block_0x179, %block_0x1a1
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %566 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -4
  %567 = add i64 %566, -4, !mcsema_real_eip !78
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %568 = inttoptr i64 %567 to i64*, !mcsema_real_eip !78
  %569 = bitcast i64* %_allin_new_bt_123 to i32*
  store i32 1, i32* %569, !mcsema_real_eip !78
  br label %block_0x320, !mcsema_real_eip !79

block_0x179:                                      ; preds = %block_0x165
  %_new_gep_124 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -76
  %570 = add i64 %414, -76, !mcsema_real_eip !80
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !80
  %572 = bitcast i64* %_allin_new_bt_125 to i32*
  %573 = load i32, i32* %572, !mcsema_real_eip !80
  %574 = add i32 %573, -100
  %575 = xor i32 %574, %573, !mcsema_real_eip !81
  %576 = and i32 %575, 16, !mcsema_real_eip !81
  %577 = icmp ne i32 %576, 0, !mcsema_real_eip !81
  store i1 %577, i1* %AF_val, !mcsema_real_eip !81
  %578 = trunc i32 %574 to i8, !mcsema_real_eip !81
  %579 = tail call i8 @llvm.ctpop.i8(i8 %578), !mcsema_real_eip !81
  %580 = and i8 %579, 1
  %581 = icmp eq i8 %580, 0
  store i1 %581, i1* %PF_val, !mcsema_real_eip !81
  %582 = icmp eq i32 %574, 0, !mcsema_real_eip !81
  store i1 %582, i1* %ZF_val, !mcsema_real_eip !81
  %583 = icmp slt i32 %574, 0
  store i1 %583, i1* %SF_val, !mcsema_real_eip !81
  %584 = icmp ult i32 %573, 100, !mcsema_real_eip !81
  store i1 %584, i1* %CF_val, !mcsema_real_eip !81
  %585 = and i32 %575, %573, !mcsema_real_eip !81
  %586 = icmp slt i32 %585, 0
  store i1 %586, i1* %OF_val, !mcsema_real_eip !81
  %587 = zext i32 %574 to i64, !mcsema_real_eip !81
  store i64 %587, i64* %RAX_val, !mcsema_real_eip !81
  %_load_rbp_ptr_126 = load i8*, i8** %_RBP_ptr_
  %588 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_126, i64 -88
  %589 = add i64 %588, -88, !mcsema_real_eip !82
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !82
  %591 = bitcast i64* %_allin_new_bt_128 to i32*
  store i32 %574, i32* %591, !mcsema_real_eip !82
  %592 = load i1, i1* %ZF_val, !mcsema_real_eip !83
  br i1 %592, label %block_0x1e5, label %block_0x1f5, !mcsema_real_eip !83

block_0x265:                                      ; preds = %block_0x239
  %_load_rbp_ptr_129 = load i8*, i8** %_RBP_ptr_
  %593 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_129, i64 -24
  %594 = add i64 %593, -24, !mcsema_real_eip !84
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %595 = inttoptr i64 %594 to i64*, !mcsema_real_eip !84
  %596 = bitcast i64* %_allin_new_bt_131 to i32*
  %597 = load i32, i32* %596, !mcsema_real_eip !84
  %598 = add i32 %597, -2
  %599 = xor i32 %598, %597, !mcsema_real_eip !84
  %600 = and i32 %599, 16, !mcsema_real_eip !84
  %601 = icmp ne i32 %600, 0, !mcsema_real_eip !84
  store i1 %601, i1* %AF_val, !mcsema_real_eip !84
  %602 = trunc i32 %598 to i8, !mcsema_real_eip !84
  %603 = tail call i8 @llvm.ctpop.i8(i8 %602), !mcsema_real_eip !84
  %604 = and i8 %603, 1
  %605 = icmp eq i8 %604, 0
  store i1 %605, i1* %PF_val, !mcsema_real_eip !84
  %606 = icmp eq i32 %598, 0, !mcsema_real_eip !84
  store i1 %606, i1* %ZF_val, !mcsema_real_eip !84
  %607 = icmp slt i32 %598, 0
  store i1 %607, i1* %SF_val, !mcsema_real_eip !84
  %608 = icmp ult i32 %597, 2, !mcsema_real_eip !84
  store i1 %608, i1* %CF_val, !mcsema_real_eip !84
  %609 = and i32 %599, %597, !mcsema_real_eip !84
  %610 = icmp slt i32 %609, 0
  store i1 %610, i1* %OF_val, !mcsema_real_eip !84
  %611 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  br i1 %611, label %block_0x272, label %block_0x2b8, !mcsema_real_eip !85

block_0x2c4:                                      ; preds = %block_0x2ab, %block_0x2b8, %block_0x239
  %_load_rbp_ptr_132 = load i8*, i8** %_RBP_ptr_
  %612 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -28
  %613 = add i64 %612, -28, !mcsema_real_eip !86
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %614 = inttoptr i64 %613 to i64*, !mcsema_real_eip !86
  %615 = bitcast i64* %_allin_new_bt_134 to i32*
  %616 = load i32, i32* %615, !mcsema_real_eip !86
  %617 = zext i32 %616 to i64, !mcsema_real_eip !86
  store i64 %617, i64* %RAX_val, !mcsema_real_eip !86
  %_load_rbp_ptr_135 = load i8*, i8** %_RBP_ptr_
  %618 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_136 = getelementptr i8, i8* %_load_rbp_ptr_135, i64 -20
  %619 = add i64 %618, -20, !mcsema_real_eip !87
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %620 = inttoptr i64 %619 to i64*, !mcsema_real_eip !87
  %621 = bitcast i64* %_allin_new_bt_137 to i32*
  %622 = load i32, i32* %621, !mcsema_real_eip !87
  %623 = sub i32 %616, %622, !mcsema_real_eip !87
  %624 = xor i32 %623, %616, !mcsema_real_eip !87
  %625 = xor i32 %624, %622, !mcsema_real_eip !87
  %626 = and i32 %625, 16, !mcsema_real_eip !87
  %627 = icmp ne i32 %626, 0, !mcsema_real_eip !87
  store i1 %627, i1* %AF_val, !mcsema_real_eip !87
  %628 = trunc i32 %623 to i8, !mcsema_real_eip !87
  %629 = tail call i8 @llvm.ctpop.i8(i8 %628), !mcsema_real_eip !87
  %630 = and i8 %629, 1
  %631 = icmp eq i8 %630, 0
  store i1 %631, i1* %PF_val, !mcsema_real_eip !87
  %632 = icmp eq i32 %616, %622
  store i1 %632, i1* %ZF_val, !mcsema_real_eip !87
  %633 = icmp slt i32 %623, 0
  store i1 %633, i1* %SF_val, !mcsema_real_eip !87
  %634 = icmp ult i32 %616, %622, !mcsema_real_eip !87
  store i1 %634, i1* %CF_val, !mcsema_real_eip !87
  %635 = xor i32 %622, %616, !mcsema_real_eip !87
  %636 = and i32 %624, %635, !mcsema_real_eip !87
  %637 = icmp slt i32 %636, 0
  store i1 %637, i1* %OF_val, !mcsema_real_eip !87
  %638 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  br i1 %638, label %block_0x2d0, label %block_0x2e8, !mcsema_real_eip !88

block_0x1b5:                                      ; preds = %block_0x1a1
  %_load_rbp_ptr_138 = load i8*, i8** %_RBP_ptr_
  %639 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %_new_gep_139 = getelementptr i8, i8* %_load_rbp_ptr_138, i64 -24
  %640 = add i64 %639, -24, !mcsema_real_eip !89
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  %641 = inttoptr i64 %640 to i64*, !mcsema_real_eip !89
  %642 = bitcast i64* %_allin_new_bt_140 to i32*
  %643 = load i32, i32* %642, !mcsema_real_eip !89
  %uadd91 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %643, i32 -1)
  %644 = extractvalue { i32, i1 } %uadd91, 0
  %645 = xor i32 %644, %643, !mcsema_real_eip !90
  %646 = and i32 %645, 16
  %647 = icmp eq i32 %646, 0
  store i1 %647, i1* %AF_val, !mcsema_real_eip !90
  %648 = icmp slt i32 %644, 0
  store i1 %648, i1* %SF_val, !mcsema_real_eip !90
  %649 = icmp eq i32 %644, 0, !mcsema_real_eip !90
  store i1 %649, i1* %ZF_val, !mcsema_real_eip !90
  %650 = and i32 %645, %643, !mcsema_real_eip !90
  %651 = icmp slt i32 %650, 0
  store i1 %651, i1* %OF_val, !mcsema_real_eip !90
  %652 = trunc i32 %644 to i8, !mcsema_real_eip !90
  %653 = tail call i8 @llvm.ctpop.i8(i8 %652), !mcsema_real_eip !90
  %654 = and i8 %653, 1
  %655 = icmp eq i8 %654, 0
  store i1 %655, i1* %PF_val, !mcsema_real_eip !90
  %656 = extractvalue { i32, i1 } %uadd91, 1
  store i1 %656, i1* %CF_val, !mcsema_real_eip !90
  %657 = zext i32 %644 to i64, !mcsema_real_eip !90
  store i64 %657, i64* %RAX_val, !mcsema_real_eip !90
  %_load_rbp_ptr_141 = load i8*, i8** %_RBP_ptr_
  %658 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_142 = getelementptr i8, i8* %_load_rbp_ptr_141, i64 -24
  %659 = add i64 %658, -24, !mcsema_real_eip !91
  %_allin_new_bt_143 = bitcast i8* %_new_gep_142 to i64*
  %660 = inttoptr i64 %659 to i64*, !mcsema_real_eip !91
  %661 = bitcast i64* %_allin_new_bt_143 to i32*
  store i32 %644, i32* %661, !mcsema_real_eip !91
  br label %block_0x201, !mcsema_real_eip !92

block_0x1e5:                                      ; preds = %block_0x179
  %_load_rbp_ptr_144 = load i8*, i8** %_RBP_ptr_
  %662 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %_new_gep_145 = getelementptr i8, i8* %_load_rbp_ptr_144, i64 -20
  %663 = add i64 %662, -20, !mcsema_real_eip !93
  %_allin_new_bt_146 = bitcast i8* %_new_gep_145 to i64*
  %664 = inttoptr i64 %663 to i64*, !mcsema_real_eip !93
  %665 = bitcast i64* %_allin_new_bt_146 to i32*
  %666 = load i32, i32* %665, !mcsema_real_eip !93
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %666, i32 1)
  %667 = extractvalue { i32, i1 } %uadd74, 0
  %668 = xor i32 %667, %666, !mcsema_real_eip !94
  %669 = and i32 %668, 16, !mcsema_real_eip !94
  %670 = icmp ne i32 %669, 0, !mcsema_real_eip !94
  store i1 %670, i1* %AF_val, !mcsema_real_eip !94
  %671 = icmp slt i32 %667, 0
  store i1 %671, i1* %SF_val, !mcsema_real_eip !94
  %672 = icmp eq i32 %667, 0, !mcsema_real_eip !94
  store i1 %672, i1* %ZF_val, !mcsema_real_eip !94
  %673 = xor i32 %666, -2147483648, !mcsema_real_eip !94
  %674 = and i32 %668, %673, !mcsema_real_eip !94
  %675 = icmp slt i32 %674, 0
  store i1 %675, i1* %OF_val, !mcsema_real_eip !94
  %676 = trunc i32 %667 to i8, !mcsema_real_eip !94
  %677 = tail call i8 @llvm.ctpop.i8(i8 %676), !mcsema_real_eip !94
  %678 = and i8 %677, 1
  %679 = icmp eq i8 %678, 0
  store i1 %679, i1* %PF_val, !mcsema_real_eip !94
  %680 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %680, i1* %CF_val, !mcsema_real_eip !94
  %681 = zext i32 %667 to i64, !mcsema_real_eip !94
  store i64 %681, i64* %RAX_val, !mcsema_real_eip !94
  %_load_rbp_ptr_147 = load i8*, i8** %_RBP_ptr_
  %682 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_148 = getelementptr i8, i8* %_load_rbp_ptr_147, i64 -20
  %683 = add i64 %682, -20, !mcsema_real_eip !95
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %684 = inttoptr i64 %683 to i64*, !mcsema_real_eip !95
  %685 = bitcast i64* %_allin_new_bt_149 to i32*
  store i32 %667, i32* %685, !mcsema_real_eip !95
  br label %block_0x201, !mcsema_real_eip !96

block_0x2d0:                                      ; preds = %block_0x2c4
  %_load_rbp_ptr_150 = load i8*, i8** %_RBP_ptr_
  %686 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %_new_gep_151 = getelementptr i8, i8* %_load_rbp_ptr_150, i64 -32
  %687 = add i64 %686, -32, !mcsema_real_eip !97
  %_allin_new_bt_152 = bitcast i8* %_new_gep_151 to i64*
  %688 = inttoptr i64 %687 to i64*, !mcsema_real_eip !97
  %689 = bitcast i64* %_allin_new_bt_152 to i32*
  %690 = load i32, i32* %689, !mcsema_real_eip !97
  %691 = zext i32 %690 to i64, !mcsema_real_eip !97
  store i64 %691, i64* %RAX_val, !mcsema_real_eip !97
  %_load_rbp_ptr_153 = load i8*, i8** %_RBP_ptr_
  %692 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %_new_gep_154 = getelementptr i8, i8* %_load_rbp_ptr_153, i64 -24
  %693 = add i64 %692, -24, !mcsema_real_eip !98
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %694 = inttoptr i64 %693 to i64*, !mcsema_real_eip !98
  %695 = bitcast i64* %_allin_new_bt_155 to i32*
  %696 = load i32, i32* %695, !mcsema_real_eip !98
  %697 = sub i32 %690, %696, !mcsema_real_eip !98
  %698 = xor i32 %697, %690, !mcsema_real_eip !98
  %699 = xor i32 %698, %696, !mcsema_real_eip !98
  %700 = and i32 %699, 16, !mcsema_real_eip !98
  %701 = icmp ne i32 %700, 0, !mcsema_real_eip !98
  store i1 %701, i1* %AF_val, !mcsema_real_eip !98
  %702 = trunc i32 %697 to i8, !mcsema_real_eip !98
  %703 = tail call i8 @llvm.ctpop.i8(i8 %702), !mcsema_real_eip !98
  %704 = and i8 %703, 1
  %705 = icmp eq i8 %704, 0
  store i1 %705, i1* %PF_val, !mcsema_real_eip !98
  %706 = icmp eq i32 %690, %696
  store i1 %706, i1* %ZF_val, !mcsema_real_eip !98
  %707 = icmp slt i32 %697, 0
  store i1 %707, i1* %SF_val, !mcsema_real_eip !98
  %708 = icmp ult i32 %690, %696, !mcsema_real_eip !98
  store i1 %708, i1* %CF_val, !mcsema_real_eip !98
  %709 = xor i32 %696, %690, !mcsema_real_eip !98
  %710 = and i32 %698, %709, !mcsema_real_eip !98
  %711 = icmp slt i32 %710, 0
  store i1 %711, i1* %OF_val, !mcsema_real_eip !98
  %712 = load i1, i1* %ZF_val, !mcsema_real_eip !99
  br i1 %712, label %block_0x2dc, label %block_0x2e8, !mcsema_real_eip !99

block_0x2e8:                                      ; preds = %block_0x2d0, %block_0x2c4
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !100
  %_load_rbp_ptr_156 = load i8*, i8** %_RBP_ptr_
  %713 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %_new_gep_157 = getelementptr i8, i8* %_load_rbp_ptr_156, i64 -20
  %714 = add i64 %713, -20, !mcsema_real_eip !101
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  %715 = inttoptr i64 %714 to i64*, !mcsema_real_eip !101
  %716 = bitcast i64* %_allin_new_bt_158 to i32*
  %717 = load i32, i32* %716, !mcsema_real_eip !101
  %718 = sext i32 %717 to i64, !mcsema_real_eip !101
  store i64 %718, i64* %RCX_val, !mcsema_real_eip !101
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  %719 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_160 = getelementptr i8, i8* %_load_rbp_ptr_159, i64 -24
  %720 = add i64 %719, -24, !mcsema_real_eip !102
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %721 = inttoptr i64 %720 to i64*, !mcsema_real_eip !102
  %722 = bitcast i64* %_allin_new_bt_161 to i32*
  %723 = load i32, i32* %722, !mcsema_real_eip !102
  %724 = sext i32 %723 to i64, !mcsema_real_eip !102
  %725 = mul i64 %724, 11, !mcsema_real_eip !103
  store i64 %725, i64* %RDX_val, !mcsema_real_eip !103
  %726 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %uadd87 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %725, i64 %726)
  %727 = extractvalue { i64, i1 } %uadd87, 0
  %728 = xor i64 %727, %726, !mcsema_real_eip !104
  %729 = xor i64 %728, %725, !mcsema_real_eip !104
  %730 = and i64 %729, 16, !mcsema_real_eip !104
  %731 = icmp ne i64 %730, 0, !mcsema_real_eip !104
  store i1 %731, i1* %AF_val, !mcsema_real_eip !104
  %732 = icmp slt i64 %727, 0
  store i1 %732, i1* %SF_val, !mcsema_real_eip !104
  %733 = icmp eq i64 %727, 0, !mcsema_real_eip !104
  store i1 %733, i1* %ZF_val, !mcsema_real_eip !104
  %734 = xor i64 %726, -9223372036854775808, !mcsema_real_eip !104
  %735 = xor i64 %734, %725, !mcsema_real_eip !104
  %736 = and i64 %728, %735, !mcsema_real_eip !104
  %737 = icmp slt i64 %736, 0
  store i1 %737, i1* %OF_val, !mcsema_real_eip !104
  %738 = trunc i64 %727 to i8, !mcsema_real_eip !104
  %739 = tail call i8 @llvm.ctpop.i8(i8 %738), !mcsema_real_eip !104
  %740 = and i8 %739, 1
  %741 = icmp eq i8 %740, 0
  store i1 %741, i1* %PF_val, !mcsema_real_eip !104
  %742 = extractvalue { i64, i1 } %uadd87, 1
  store i1 %742, i1* %CF_val, !mcsema_real_eip !104
  store i64 %727, i64* %RAX_val, !mcsema_real_eip !104
  %743 = load i64, i64* %RCX_val, !mcsema_real_eip !105
  %744 = add i64 %743, %727, !mcsema_real_eip !105
  %745 = inttoptr i64 %744 to i64*, !mcsema_real_eip !105
  %746 = bitcast i64* %745 to i8*
  store i8 88, i8* %746, !mcsema_real_eip !105
  %_load_rbp_ptr_162 = load i8*, i8** %_RBP_ptr_
  %747 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %_new_gep_163 = getelementptr i8, i8* %_load_rbp_ptr_162, i64 -36
  %748 = add i64 %747, -36, !mcsema_real_eip !106
  %_allin_new_bt_164 = bitcast i8* %_new_gep_163 to i64*
  %749 = inttoptr i64 %748 to i64*, !mcsema_real_eip !106
  %750 = bitcast i64* %_allin_new_bt_164 to i32*
  %751 = load i32, i32* %750, !mcsema_real_eip !106
  %uadd88 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %751, i32 1)
  %752 = extractvalue { i32, i1 } %uadd88, 0
  %753 = xor i32 %752, %751, !mcsema_real_eip !107
  %754 = and i32 %753, 16, !mcsema_real_eip !107
  %755 = icmp ne i32 %754, 0, !mcsema_real_eip !107
  store i1 %755, i1* %AF_val, !mcsema_real_eip !107
  %756 = icmp slt i32 %752, 0
  store i1 %756, i1* %SF_val, !mcsema_real_eip !107
  %757 = icmp eq i32 %752, 0, !mcsema_real_eip !107
  store i1 %757, i1* %ZF_val, !mcsema_real_eip !107
  %758 = xor i32 %751, -2147483648, !mcsema_real_eip !107
  %759 = and i32 %753, %758, !mcsema_real_eip !107
  %760 = icmp slt i32 %759, 0
  store i1 %760, i1* %OF_val, !mcsema_real_eip !107
  %761 = trunc i32 %752 to i8, !mcsema_real_eip !107
  %762 = tail call i8 @llvm.ctpop.i8(i8 %761), !mcsema_real_eip !107
  %763 = and i8 %762, 1
  %764 = icmp eq i8 %763, 0
  store i1 %764, i1* %PF_val, !mcsema_real_eip !107
  %765 = extractvalue { i32, i1 } %uadd88, 1
  store i1 %765, i1* %CF_val, !mcsema_real_eip !107
  %766 = zext i32 %752 to i64, !mcsema_real_eip !107
  store i64 %766, i64* %RSI_val, !mcsema_real_eip !107
  %_load_rbp_ptr_165 = load i8*, i8** %_RBP_ptr_
  %767 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %_new_gep_166 = getelementptr i8, i8* %_load_rbp_ptr_165, i64 -36
  %768 = add i64 %767, -36, !mcsema_real_eip !108
  %_allin_new_bt_167 = bitcast i8* %_new_gep_166 to i64*
  %769 = inttoptr i64 %768 to i64*, !mcsema_real_eip !108
  %770 = bitcast i64* %_allin_new_bt_167 to i32*
  store i32 %752, i32* %770, !mcsema_real_eip !108
  br label %block_0x12d, !mcsema_real_eip !109

block_0x272:                                      ; preds = %block_0x265
  store i64 ptrtoint (%0* @data_0x330 to i64), i64* %RAX_val, !mcsema_real_eip !110
  %_load_rbp_ptr_168 = load i8*, i8** %_RBP_ptr_
  %771 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %_new_gep_169 = getelementptr i8, i8* %_load_rbp_ptr_168, i64 -20
  %772 = add i64 %771, -20, !mcsema_real_eip !111
  %_allin_new_bt_170 = bitcast i8* %_new_gep_169 to i64*
  %773 = inttoptr i64 %772 to i64*, !mcsema_real_eip !111
  %774 = bitcast i64* %_allin_new_bt_170 to i32*
  %775 = load i32, i32* %774, !mcsema_real_eip !111
  %776 = sext i32 %775 to i64, !mcsema_real_eip !111
  store i64 %776, i64* %RCX_val, !mcsema_real_eip !111
  %_load_rbp_ptr_171 = load i8*, i8** %_RBP_ptr_
  %777 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %_new_gep_172 = getelementptr i8, i8* %_load_rbp_ptr_171, i64 -24
  %778 = add i64 %777, -24, !mcsema_real_eip !112
  %_allin_new_bt_173 = bitcast i8* %_new_gep_172 to i64*
  %779 = inttoptr i64 %778 to i64*, !mcsema_real_eip !112
  %780 = bitcast i64* %_allin_new_bt_173 to i32*
  %781 = load i32, i32* %780, !mcsema_real_eip !112
  %782 = sext i32 %781 to i64, !mcsema_real_eip !112
  %783 = mul i64 %782, 11, !mcsema_real_eip !113
  store i64 %783, i64* %RDX_val, !mcsema_real_eip !113
  %784 = load i64, i64* %RAX_val, !mcsema_real_eip !114
  %uadd79 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %783, i64 %784)
  %785 = extractvalue { i64, i1 } %uadd79, 0
  %786 = xor i64 %785, %784, !mcsema_real_eip !114
  %787 = xor i64 %786, %783, !mcsema_real_eip !114
  %788 = and i64 %787, 16, !mcsema_real_eip !114
  %789 = icmp ne i64 %788, 0, !mcsema_real_eip !114
  store i1 %789, i1* %AF_val, !mcsema_real_eip !114
  %790 = icmp slt i64 %785, 0
  store i1 %790, i1* %SF_val, !mcsema_real_eip !114
  %791 = icmp eq i64 %785, 0, !mcsema_real_eip !114
  store i1 %791, i1* %ZF_val, !mcsema_real_eip !114
  %792 = xor i64 %784, -9223372036854775808, !mcsema_real_eip !114
  %793 = xor i64 %792, %783, !mcsema_real_eip !114
  %794 = and i64 %786, %793, !mcsema_real_eip !114
  %795 = icmp slt i64 %794, 0
  store i1 %795, i1* %OF_val, !mcsema_real_eip !114
  %796 = trunc i64 %785 to i8, !mcsema_real_eip !114
  %797 = tail call i8 @llvm.ctpop.i8(i8 %796), !mcsema_real_eip !114
  %798 = and i8 %797, 1
  %799 = icmp eq i8 %798, 0
  store i1 %799, i1* %PF_val, !mcsema_real_eip !114
  %800 = extractvalue { i64, i1 } %uadd79, 1
  store i1 %800, i1* %CF_val, !mcsema_real_eip !114
  store i64 %785, i64* %RAX_val, !mcsema_real_eip !114
  %801 = load i64, i64* %RCX_val, !mcsema_real_eip !115
  %802 = add i64 %801, %785, !mcsema_real_eip !115
  %803 = inttoptr i64 %802 to i64*, !mcsema_real_eip !115
  %804 = bitcast i64* %803 to i8*
  %805 = load i8, i8* %804, !mcsema_real_eip !115
  %806 = sext i8 %805 to i32, !mcsema_real_eip !115
  %807 = zext i32 %806 to i64, !mcsema_real_eip !115
  store i64 %807, i64* %RSI_val, !mcsema_real_eip !115
  %808 = add nsw i32 %806, -124
  %809 = xor i32 %808, %806, !mcsema_real_eip !116
  %810 = and i32 %809, 16
  %811 = icmp eq i32 %810, 0
  store i1 %811, i1* %AF_val, !mcsema_real_eip !116
  %812 = trunc i32 %808 to i8, !mcsema_real_eip !116
  %813 = tail call i8 @llvm.ctpop.i8(i8 %812), !mcsema_real_eip !116
  %814 = and i8 %813, 1
  %815 = icmp eq i8 %814, 0
  store i1 %815, i1* %PF_val, !mcsema_real_eip !116
  %816 = icmp eq i32 %808, 0, !mcsema_real_eip !116
  store i1 %816, i1* %ZF_val, !mcsema_real_eip !116
  %817 = icmp slt i32 %808, 0
  store i1 %817, i1* %SF_val, !mcsema_real_eip !116
  %818 = icmp ult i8 %805, 124
  store i1 %818, i1* %CF_val, !mcsema_real_eip !116
  %819 = and i32 %809, %806, !mcsema_real_eip !116
  %820 = icmp slt i32 %819, 0
  store i1 %820, i1* %OF_val, !mcsema_real_eip !116
  %821 = load i1, i1* %ZF_val, !mcsema_real_eip !117
  br i1 %821, label %block_0x29e, label %block_0x2b8, !mcsema_real_eip !117

block_0x2b8:                                      ; preds = %block_0x2ab, %block_0x29e, %block_0x272, %block_0x265
  %_load_rbp_ptr_174 = load i8*, i8** %_RBP_ptr_
  %822 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %_new_gep_175 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -28
  %823 = add i64 %822, -28, !mcsema_real_eip !118
  %_allin_new_bt_176 = bitcast i8* %_new_gep_175 to i64*
  %824 = inttoptr i64 %823 to i64*, !mcsema_real_eip !118
  %825 = bitcast i64* %_allin_new_bt_176 to i32*
  %826 = load i32, i32* %825, !mcsema_real_eip !118
  %827 = zext i32 %826 to i64, !mcsema_real_eip !118
  store i64 %827, i64* %RAX_val, !mcsema_real_eip !118
  %_load_rbp_ptr_177 = load i8*, i8** %_RBP_ptr_
  %828 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %_new_gep_178 = getelementptr i8, i8* %_load_rbp_ptr_177, i64 -20
  %829 = add i64 %828, -20, !mcsema_real_eip !119
  %_allin_new_bt_179 = bitcast i8* %_new_gep_178 to i64*
  %830 = inttoptr i64 %829 to i64*, !mcsema_real_eip !119
  %831 = bitcast i64* %_allin_new_bt_179 to i32*
  store i32 %826, i32* %831, !mcsema_real_eip !119
  %_load_rbp_ptr_180 = load i8*, i8** %_RBP_ptr_
  %832 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_181 = getelementptr i8, i8* %_load_rbp_ptr_180, i64 -32
  %833 = add i64 %832, -32, !mcsema_real_eip !120
  %_allin_new_bt_182 = bitcast i8* %_new_gep_181 to i64*
  %834 = inttoptr i64 %833 to i64*, !mcsema_real_eip !120
  %835 = bitcast i64* %_allin_new_bt_182 to i32*
  %836 = load i32, i32* %835, !mcsema_real_eip !120
  %837 = zext i32 %836 to i64, !mcsema_real_eip !120
  store i64 %837, i64* %RAX_val, !mcsema_real_eip !120
  %_load_rbp_ptr_183 = load i8*, i8** %_RBP_ptr_
  %838 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %_new_gep_184 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -24
  %839 = add i64 %838, -24, !mcsema_real_eip !121
  %_allin_new_bt_185 = bitcast i8* %_new_gep_184 to i64*
  %840 = inttoptr i64 %839 to i64*, !mcsema_real_eip !121
  %841 = bitcast i64* %_allin_new_bt_185 to i32*
  store i32 %836, i32* %841, !mcsema_real_eip !121
  br label %block_0x2c4, !mcsema_real_eip !110

block_0x2dc:                                      ; preds = %block_0x2d0
  %_load_rbp_ptr_186 = load i8*, i8** %_RBP_ptr_
  %842 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %_new_gep_187 = getelementptr i8, i8* %_load_rbp_ptr_186, i64 -4
  %843 = add i64 %842, -4, !mcsema_real_eip !122
  %_allin_new_bt_188 = bitcast i8* %_new_gep_187 to i64*
  %844 = inttoptr i64 %843 to i64*, !mcsema_real_eip !122
  %845 = bitcast i64* %_allin_new_bt_188 to i32*
  store i32 2, i32* %845, !mcsema_real_eip !122
  br label %block_0x320, !mcsema_real_eip !123

block_0x29e:                                      ; preds = %block_0x272
  %_load_rbp_ptr_189 = load i8*, i8** %_RBP_ptr_
  %846 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %_new_gep_190 = getelementptr i8, i8* %_load_rbp_ptr_189, i64 -20
  %847 = add i64 %846, -20, !mcsema_real_eip !124
  %_allin_new_bt_191 = bitcast i8* %_new_gep_190 to i64*
  %848 = inttoptr i64 %847 to i64*, !mcsema_real_eip !124
  %849 = bitcast i64* %_allin_new_bt_191 to i32*
  %850 = load i32, i32* %849, !mcsema_real_eip !124
  store i1 false, i1* %AF_val, !mcsema_real_eip !124
  %851 = trunc i32 %850 to i8, !mcsema_real_eip !124
  %852 = tail call i8 @llvm.ctpop.i8(i8 %851), !mcsema_real_eip !124
  %853 = and i8 %852, 1
  %854 = icmp eq i8 %853, 0
  store i1 %854, i1* %PF_val, !mcsema_real_eip !124
  %855 = icmp eq i32 %850, 0, !mcsema_real_eip !124
  store i1 %855, i1* %ZF_val, !mcsema_real_eip !124
  %856 = icmp slt i32 %850, 0
  store i1 %856, i1* %SF_val, !mcsema_real_eip !124
  store i1 false, i1* %CF_val, !mcsema_real_eip !124
  store i1 false, i1* %OF_val, !mcsema_real_eip !124
  %857 = icmp slt i32 %850, 1
  br i1 %857, label %block_0x2b8, label %block_0x2ab, !mcsema_real_eip !125

block_0x2ab:                                      ; preds = %block_0x29e
  %_load_rbp_ptr_192 = load i8*, i8** %_RBP_ptr_
  %858 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_193 = getelementptr i8, i8* %_load_rbp_ptr_192, i64 -20
  %859 = add i64 %858, -20, !mcsema_real_eip !126
  %_allin_new_bt_194 = bitcast i8* %_new_gep_193 to i64*
  %860 = inttoptr i64 %859 to i64*, !mcsema_real_eip !126
  %861 = bitcast i64* %_allin_new_bt_194 to i32*
  %862 = load i32, i32* %861, !mcsema_real_eip !126
  %863 = add i32 %862, -11
  %864 = xor i32 %863, %862, !mcsema_real_eip !126
  %865 = and i32 %864, 16, !mcsema_real_eip !126
  %866 = icmp ne i32 %865, 0, !mcsema_real_eip !126
  store i1 %866, i1* %AF_val, !mcsema_real_eip !126
  %867 = trunc i32 %863 to i8, !mcsema_real_eip !126
  %868 = tail call i8 @llvm.ctpop.i8(i8 %867), !mcsema_real_eip !126
  %869 = and i8 %868, 1
  %870 = icmp eq i8 %869, 0
  store i1 %870, i1* %PF_val, !mcsema_real_eip !126
  %871 = icmp eq i32 %863, 0, !mcsema_real_eip !126
  store i1 %871, i1* %ZF_val, !mcsema_real_eip !126
  %872 = icmp slt i32 %863, 0
  store i1 %872, i1* %SF_val, !mcsema_real_eip !126
  %873 = icmp ult i32 %862, 11, !mcsema_real_eip !126
  store i1 %873, i1* %CF_val, !mcsema_real_eip !126
  %874 = and i32 %864, %862, !mcsema_real_eip !126
  %875 = icmp slt i32 %874, 0
  store i1 %875, i1* %OF_val, !mcsema_real_eip !126
  %876 = xor i1 %872, %875
  br i1 %876, label %block_0x2c4, label %block_0x2b8, !mcsema_real_eip !127
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
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
!2 = !{i64 192}
!3 = !{i64 193}
!4 = !{i64 196}
!5 = !{i64 200}
!6 = !{i64 205}
!7 = !{i64 215}
!8 = !{i64 219}
!9 = !{i64 229}
!10 = !{i64 236}
!11 = !{i64 239}
!12 = !{i64 243}
!13 = !{i64 250}
!14 = !{i64 257}
!15 = !{i64 264}
!16 = !{i64 268}
!17 = !{i64 272}
!18 = !{i64 279}
!19 = !{i64 282}
!20 = !{i64 287}
!21 = !{i64 289}
!22 = !{i64 292}
!23 = !{i64 297}
!24 = !{i64 301}
!25 = !{i64 793}
!26 = !{i64 308}
!27 = !{i64 314}
!28 = !{i64 317}
!29 = !{i64 320}
!30 = !{i64 323}
!31 = !{i64 326}
!32 = !{i64 330}
!33 = !{i64 337}
!34 = !{i64 340}
!35 = !{i64 343}
!36 = !{i64 346}
!37 = !{i64 397}
!38 = !{i64 800}
!39 = !{i64 803}
!40 = !{i64 807}
!41 = !{i64 808}
!42 = !{i64 400}
!43 = !{i64 403}
!44 = !{i64 406}
!45 = !{i64 453}
!46 = !{i64 456}
!47 = !{i64 461}
!48 = !{i64 464}
!49 = !{i64 360}
!50 = !{i64 363}
!51 = !{i64 366}
!52 = !{i64 469}
!53 = !{i64 513}
!54 = !{i64 523}
!55 = !{i64 527}
!56 = !{i64 531}
!57 = !{i64 538}
!58 = !{i64 541}
!59 = !{i64 545}
!60 = !{i64 551}
!61 = !{i64 417}
!62 = !{i64 420}
!63 = !{i64 423}
!64 = !{i64 426}
!65 = !{i64 472}
!66 = !{i64 477}
!67 = !{i64 480}
!68 = !{i64 557}
!69 = !{i64 564}
!70 = !{i64 569}
!71 = !{i64 579}
!72 = !{i64 583}
!73 = !{i64 587}
!74 = !{i64 594}
!75 = !{i64 597}
!76 = !{i64 601}
!77 = !{i64 607}
!78 = !{i64 501}
!79 = !{i64 508}
!80 = !{i64 377}
!81 = !{i64 380}
!82 = !{i64 383}
!83 = !{i64 386}
!84 = !{i64 613}
!85 = !{i64 620}
!86 = !{i64 708}
!87 = !{i64 711}
!88 = !{i64 714}
!89 = !{i64 437}
!90 = !{i64 440}
!91 = !{i64 445}
!92 = !{i64 448}
!93 = !{i64 485}
!94 = !{i64 488}
!95 = !{i64 493}
!96 = !{i64 496}
!97 = !{i64 720}
!98 = !{i64 723}
!99 = !{i64 726}
!100 = !{i64 744}
!101 = !{i64 754}
!102 = !{i64 758}
!103 = !{i64 762}
!104 = !{i64 769}
!105 = !{i64 772}
!106 = !{i64 776}
!107 = !{i64 779}
!108 = !{i64 785}
!109 = !{i64 788}
!110 = !{i64 626}
!111 = !{i64 636}
!112 = !{i64 640}
!113 = !{i64 644}
!114 = !{i64 651}
!115 = !{i64 654}
!116 = !{i64 658}
!117 = !{i64 664}
!118 = !{i64 696}
!119 = !{i64 699}
!120 = !{i64 702}
!121 = !{i64 705}
!122 = !{i64 732}
!123 = !{i64 739}
!124 = !{i64 670}
!125 = !{i64 677}
!126 = !{i64 683}
!127 = !{i64 690}
