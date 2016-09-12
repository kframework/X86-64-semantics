; ModuleID = 'Output/test_12.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_10(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 40
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 40
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
  store i64 %_local_stack_end_, i64* %RSP_val
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
  %81 = add i64 %78, -40
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
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 0, i64* %RSI_val, !mcsema_real_eip !5
  %94 = load i64* %RBP_val, !mcsema_real_eip !6
  %95 = add i64 %94, -16, !mcsema_real_eip !6
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = load i64* %RDI_val, !mcsema_real_eip !6
  store i64 %97, i64* %96, !mcsema_real_eip !6
  %98 = load i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -16, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = load i64* %100, !mcsema_real_eip !7
  store i64 %101, i64* %RDI_val, !mcsema_real_eip !7
  %102 = load i64* %RSI_val, !mcsema_real_eip !8
  %103 = tail call x86_64_sysvcc i64 @open(i64 %101, i64 %102), !mcsema_real_eip !8
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !8
  %104 = load i64* %RBP_val, !mcsema_real_eip !9
  %105 = add i64 %104, -20, !mcsema_real_eip !9
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !9
  %107 = trunc i64 %103 to i32, !mcsema_real_eip !9
  %108 = bitcast i64* %106 to i32*
  store i32 %107, i32* %108, !mcsema_real_eip !9
  %109 = load i64* %RBP_val, !mcsema_real_eip !10
  %110 = add i64 %109, -20, !mcsema_real_eip !10
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !10
  %112 = bitcast i64* %111 to i32*
  %113 = load i32* %112, !mcsema_real_eip !10
  %114 = add i32 %113, 1
  %115 = xor i32 %114, %113, !mcsema_real_eip !10
  %116 = and i32 %115, 16
  %117 = icmp eq i32 %116, 0
  store i1 %117, i1* %AF_val, !mcsema_real_eip !10
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !10
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !10
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !10
  %122 = icmp eq i32 %114, 0, !mcsema_real_eip !10
  store i1 %122, i1* %ZF_val, !mcsema_real_eip !10
  %123 = icmp slt i32 %114, 0
  store i1 %123, i1* %SF_val, !mcsema_real_eip !10
  %124 = icmp ne i32 %113, -1
  store i1 %124, i1* %CF_val, !mcsema_real_eip !10
  %125 = xor i32 %113, -2147483648, !mcsema_real_eip !10
  %126 = and i32 %115, %125, !mcsema_real_eip !10
  %127 = icmp slt i32 %126, 0
  store i1 %127, i1* %OF_val, !mcsema_real_eip !10
  %128 = load i1* %ZF_val, !mcsema_real_eip !11
  %129 = load i64* %RBP_val, !mcsema_real_eip !12
  br i1 %128, label %block_0x53, label %block_0x3c, !mcsema_real_eip !11

block_0x53:                                       ; preds = %entry
  %130 = add i64 %129, -4, !mcsema_real_eip !12
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !12
  %132 = bitcast i64* %131 to i32*
  store i32 -1, i32* %132, !mcsema_real_eip !12
  %133 = load i64* %RBP_val, !mcsema_real_eip !13
  %134 = add i64 %133, -4, !mcsema_real_eip !13
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !13
  %136 = bitcast i64* %135 to i32*
  %137 = load i32* %136, !mcsema_real_eip !13
  %138 = zext i32 %137 to i64, !mcsema_real_eip !13
  store i64 %138, i64* %RAX_val, !mcsema_real_eip !13
  %139 = load i64* %RSP_val, !mcsema_real_eip !14
  %uadd139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %139, i64 32)
  %140 = extractvalue { i64, i1 } %uadd139, 0
  %141 = xor i64 %140, %139, !mcsema_real_eip !14
  %142 = and i64 %141, 16, !mcsema_real_eip !14
  %143 = icmp ne i64 %142, 0, !mcsema_real_eip !14
  store i1 %143, i1* %AF_val, !mcsema_real_eip !14
  %144 = icmp slt i64 %140, 0
  store i1 %144, i1* %SF_val, !mcsema_real_eip !14
  %145 = icmp eq i64 %140, 0, !mcsema_real_eip !14
  store i1 %145, i1* %ZF_val, !mcsema_real_eip !14
  %146 = xor i64 %139, -9223372036854775808, !mcsema_real_eip !14
  %147 = and i64 %141, %146, !mcsema_real_eip !14
  %148 = icmp slt i64 %147, 0
  store i1 %148, i1* %OF_val, !mcsema_real_eip !14
  %149 = trunc i64 %140 to i8, !mcsema_real_eip !14
  %150 = tail call i8 @llvm.ctpop.i8(i8 %149), !mcsema_real_eip !14
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  store i1 %152, i1* %PF_val, !mcsema_real_eip !14
  %153 = extractvalue { i64, i1 } %uadd139, 1
  store i1 %153, i1* %CF_val, !mcsema_real_eip !14
  store i64 %140, i64* %RSP_val, !mcsema_real_eip !14
  %154 = inttoptr i64 %140 to i64*, !mcsema_real_eip !15
  %155 = load i64* %154, !mcsema_real_eip !15
  store i64 %155, i64* %RBP_val, !mcsema_real_eip !15
  %156 = add i64 %140, 16, !mcsema_real_eip !16
  store i64 %156, i64* %RSP_val, !mcsema_real_eip !16
  %157 = load i64* %RAX_val, !mcsema_real_eip !16
  store i64 %157, i64* %RAX, !mcsema_real_eip !16
  %158 = load i64* %RBX_val, !mcsema_real_eip !16
  store i64 %158, i64* %RBX, !mcsema_real_eip !16
  %159 = load i64* %RCX_val, !mcsema_real_eip !16
  store i64 %159, i64* %RCX, !mcsema_real_eip !16
  %160 = load i64* %RDX_val, !mcsema_real_eip !16
  store i64 %160, i64* %RDX, !mcsema_real_eip !16
  %161 = load i64* %RSI_val, !mcsema_real_eip !16
  store i64 %161, i64* %RSI, !mcsema_real_eip !16
  %162 = load i64* %RDI_val, !mcsema_real_eip !16
  store i64 %162, i64* %RDI, !mcsema_real_eip !16
  %163 = load i64* %RSP_val, !mcsema_real_eip !16
  store i64 %163, i64* %RSP, !mcsema_real_eip !16
  %164 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %164, i64* %RBP, !mcsema_real_eip !16
  %165 = load i64* %R8_val, !mcsema_real_eip !16
  store i64 %165, i64* %R8, !mcsema_real_eip !16
  %166 = load i64* %R9_val, !mcsema_real_eip !16
  store i64 %166, i64* %R9, !mcsema_real_eip !16
  %167 = load i64* %R10_val, !mcsema_real_eip !16
  store i64 %167, i64* %R10, !mcsema_real_eip !16
  %168 = load i64* %R11_val, !mcsema_real_eip !16
  store i64 %168, i64* %R11, !mcsema_real_eip !16
  %169 = load i64* %R12_val, !mcsema_real_eip !16
  store i64 %169, i64* %R12, !mcsema_real_eip !16
  %170 = load i64* %R13_val, !mcsema_real_eip !16
  store i64 %170, i64* %R13, !mcsema_real_eip !16
  %171 = load i64* %R14_val, !mcsema_real_eip !16
  store i64 %171, i64* %R14, !mcsema_real_eip !16
  %172 = load i64* %R15_val, !mcsema_real_eip !16
  store i64 %172, i64* %R15, !mcsema_real_eip !16
  %173 = load i64* %RIP_val, !mcsema_real_eip !16
  store i64 %173, i64* %RIP, !mcsema_real_eip !16
  %174 = load i1* %CF_val, !mcsema_real_eip !16
  store i1 %174, i1* %CF, align 1, !mcsema_real_eip !16
  %175 = load i1* %PF_val, !mcsema_real_eip !16
  store i1 %175, i1* %PF, align 1, !mcsema_real_eip !16
  %176 = load i1* %AF_val, !mcsema_real_eip !16
  store i1 %176, i1* %AF, align 1, !mcsema_real_eip !16
  %177 = load i1* %ZF_val, !mcsema_real_eip !16
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !16
  %178 = load i1* %SF_val, !mcsema_real_eip !16
  store i1 %178, i1* %SF, align 1, !mcsema_real_eip !16
  %179 = load i1* %OF_val, !mcsema_real_eip !16
  store i1 %179, i1* %OF, align 1, !mcsema_real_eip !16
  %180 = load i1* %DF_val, !mcsema_real_eip !16
  store i1 %180, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %181 = load i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %181, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %182 = load i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %182, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %183 = load i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %183, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %184 = load i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %184, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %185 = load i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %185, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %186 = load i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %186, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %187 = load i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %187, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %188 = load i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %188, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %189 = load i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %189, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %190 = load i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %190, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %191 = load i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %191, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %192 = load i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %192, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %193 = load i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %193, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %194 = load i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %194, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %195 = load i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %195, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %196 = load i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %196, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %197 = load i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %197, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %198 = load i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %198, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %199 = load i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %199, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %200 = load i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %200, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %201 = load i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %201, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %202 = load i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %202, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %203 = load i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %203, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %204 = load i64* %53, align 4
  store i64 %204, i64* %52, align 4
  %205 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %205, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %206 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %206, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %207 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %207, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %208 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %208, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %209 = load i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %209, i128* %XMM0, align 1, !mcsema_real_eip !16
  %210 = load i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %210, i128* %XMM1, align 1, !mcsema_real_eip !16
  %211 = load i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %211, i128* %XMM2, align 1, !mcsema_real_eip !16
  %212 = load i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %212, i128* %XMM3, align 1, !mcsema_real_eip !16
  %213 = load i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %213, i128* %XMM4, align 1, !mcsema_real_eip !16
  %214 = load i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %214, i128* %XMM5, align 1, !mcsema_real_eip !16
  %215 = load i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %215, i128* %XMM6, align 1, !mcsema_real_eip !16
  %216 = load i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %216, i128* %XMM7, align 1, !mcsema_real_eip !16
  %217 = load i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %217, i128* %XMM8, align 1, !mcsema_real_eip !16
  %218 = load i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %218, i128* %XMM9, align 1, !mcsema_real_eip !16
  %219 = load i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %219, i128* %XMM10, align 1, !mcsema_real_eip !16
  %220 = load i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %220, i128* %XMM11, align 1, !mcsema_real_eip !16
  %221 = load i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %221, i128* %XMM12, align 1, !mcsema_real_eip !16
  %222 = load i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %222, i128* %XMM13, align 1, !mcsema_real_eip !16
  %223 = load i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %223, i128* %XMM14, align 1, !mcsema_real_eip !16
  %224 = load i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %224, i128* %XMM15, align 1, !mcsema_real_eip !16
  %225 = load i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %225, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %226 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %226, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16

block_0x3c:                                       ; preds = %entry
  %227 = add i64 %129, -20, !mcsema_real_eip !17
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !17
  %229 = bitcast i64* %228 to i32*
  %230 = load i32* %229, !mcsema_real_eip !17
  %231 = zext i32 %230 to i64, !mcsema_real_eip !17
  store i64 %231, i64* %RDI_val, !mcsema_real_eip !17
  %232 = tail call x86_64_sysvcc i64 @close(i64 %231), !mcsema_real_eip !18
  store i64 %232, i64* %RAX_val, !mcsema_real_eip !18
  %233 = load i64* %RBP_val, !mcsema_real_eip !19
  %234 = add i64 %233, -4, !mcsema_real_eip !19
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !19
  %236 = bitcast i64* %235 to i32*
  store i32 0, i32* %236, !mcsema_real_eip !19
  %237 = load i64* %RBP_val, !mcsema_real_eip !20
  %238 = add i64 %237, -24, !mcsema_real_eip !20
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !20
  %240 = load i64* %RAX_val, !mcsema_real_eip !20
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !20
  %242 = bitcast i64* %239 to i32*
  store i32 %241, i32* %242, !mcsema_real_eip !20
  %243 = load i64* %RBP_val, !mcsema_real_eip !13
  %244 = add i64 %243, -4, !mcsema_real_eip !13
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !13
  %246 = bitcast i64* %245 to i32*
  %247 = load i32* %246, !mcsema_real_eip !13
  %248 = zext i32 %247 to i64, !mcsema_real_eip !13
  store i64 %248, i64* %RAX_val, !mcsema_real_eip !13
  %249 = load i64* %RSP_val, !mcsema_real_eip !14
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %249, i64 32)
  %250 = extractvalue { i64, i1 } %uadd, 0
  %251 = xor i64 %250, %249, !mcsema_real_eip !14
  %252 = and i64 %251, 16, !mcsema_real_eip !14
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !14
  store i1 %253, i1* %AF_val, !mcsema_real_eip !14
  %254 = icmp slt i64 %250, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !14
  %255 = icmp eq i64 %250, 0, !mcsema_real_eip !14
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !14
  %256 = xor i64 %249, -9223372036854775808, !mcsema_real_eip !14
  %257 = and i64 %251, %256, !mcsema_real_eip !14
  %258 = icmp slt i64 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !14
  %259 = trunc i64 %250 to i8, !mcsema_real_eip !14
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !14
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !14
  %263 = extractvalue { i64, i1 } %uadd, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !14
  store i64 %250, i64* %RSP_val, !mcsema_real_eip !14
  %264 = inttoptr i64 %250 to i64*, !mcsema_real_eip !15
  %265 = load i64* %264, !mcsema_real_eip !15
  store i64 %265, i64* %RBP_val, !mcsema_real_eip !15
  %266 = add i64 %250, 16, !mcsema_real_eip !16
  store i64 %266, i64* %RSP_val, !mcsema_real_eip !16
  %267 = load i64* %RAX_val, !mcsema_real_eip !16
  store i64 %267, i64* %RAX, !mcsema_real_eip !16
  %268 = load i64* %RBX_val, !mcsema_real_eip !16
  store i64 %268, i64* %RBX, !mcsema_real_eip !16
  %269 = load i64* %RCX_val, !mcsema_real_eip !16
  store i64 %269, i64* %RCX, !mcsema_real_eip !16
  %270 = load i64* %RDX_val, !mcsema_real_eip !16
  store i64 %270, i64* %RDX, !mcsema_real_eip !16
  %271 = load i64* %RSI_val, !mcsema_real_eip !16
  store i64 %271, i64* %RSI, !mcsema_real_eip !16
  %272 = load i64* %RDI_val, !mcsema_real_eip !16
  store i64 %272, i64* %RDI, !mcsema_real_eip !16
  %273 = load i64* %RSP_val, !mcsema_real_eip !16
  store i64 %273, i64* %RSP, !mcsema_real_eip !16
  %274 = load i64* %RBP_val, !mcsema_real_eip !16
  store i64 %274, i64* %RBP, !mcsema_real_eip !16
  %275 = load i64* %R8_val, !mcsema_real_eip !16
  store i64 %275, i64* %R8, !mcsema_real_eip !16
  %276 = load i64* %R9_val, !mcsema_real_eip !16
  store i64 %276, i64* %R9, !mcsema_real_eip !16
  %277 = load i64* %R10_val, !mcsema_real_eip !16
  store i64 %277, i64* %R10, !mcsema_real_eip !16
  %278 = load i64* %R11_val, !mcsema_real_eip !16
  store i64 %278, i64* %R11, !mcsema_real_eip !16
  %279 = load i64* %R12_val, !mcsema_real_eip !16
  store i64 %279, i64* %R12, !mcsema_real_eip !16
  %280 = load i64* %R13_val, !mcsema_real_eip !16
  store i64 %280, i64* %R13, !mcsema_real_eip !16
  %281 = load i64* %R14_val, !mcsema_real_eip !16
  store i64 %281, i64* %R14, !mcsema_real_eip !16
  %282 = load i64* %R15_val, !mcsema_real_eip !16
  store i64 %282, i64* %R15, !mcsema_real_eip !16
  %283 = load i64* %RIP_val, !mcsema_real_eip !16
  store i64 %283, i64* %RIP, !mcsema_real_eip !16
  %284 = load i1* %CF_val, !mcsema_real_eip !16
  store i1 %284, i1* %CF, align 1, !mcsema_real_eip !16
  %285 = load i1* %PF_val, !mcsema_real_eip !16
  store i1 %285, i1* %PF, align 1, !mcsema_real_eip !16
  %286 = load i1* %AF_val, !mcsema_real_eip !16
  store i1 %286, i1* %AF, align 1, !mcsema_real_eip !16
  %287 = load i1* %ZF_val, !mcsema_real_eip !16
  store i1 %287, i1* %ZF, align 1, !mcsema_real_eip !16
  %288 = load i1* %SF_val, !mcsema_real_eip !16
  store i1 %288, i1* %SF, align 1, !mcsema_real_eip !16
  %289 = load i1* %OF_val, !mcsema_real_eip !16
  store i1 %289, i1* %OF, align 1, !mcsema_real_eip !16
  %290 = load i1* %DF_val, !mcsema_real_eip !16
  store i1 %290, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %291 = load i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %291, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %292 = load i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %292, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %293 = load i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %293, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %294 = load i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %294, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %295 = load i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %295, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %296 = load i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %296, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %297 = load i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %297, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %298 = load i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %298, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %299 = load i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %299, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %300 = load i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %300, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %301 = load i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %301, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %302 = load i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %302, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %303 = load i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %303, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %304 = load i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %304, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %305 = load i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %305, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %306 = load i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %306, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %307 = load i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %307, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %308 = load i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %308, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %309 = load i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %309, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %310 = load i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %310, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %311 = load i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %311, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %312 = load i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %312, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %313 = load i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %313, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %314 = load i64* %53, align 4
  store i64 %314, i64* %52, align 4
  %315 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %315, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %316 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %316, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %317 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %317, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %318 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %318, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %319 = load i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %319, i128* %XMM0, align 1, !mcsema_real_eip !16
  %320 = load i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %320, i128* %XMM1, align 1, !mcsema_real_eip !16
  %321 = load i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %321, i128* %XMM2, align 1, !mcsema_real_eip !16
  %322 = load i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %322, i128* %XMM3, align 1, !mcsema_real_eip !16
  %323 = load i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %323, i128* %XMM4, align 1, !mcsema_real_eip !16
  %324 = load i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %324, i128* %XMM5, align 1, !mcsema_real_eip !16
  %325 = load i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %325, i128* %XMM6, align 1, !mcsema_real_eip !16
  %326 = load i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %326, i128* %XMM7, align 1, !mcsema_real_eip !16
  %327 = load i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %327, i128* %XMM8, align 1, !mcsema_real_eip !16
  %328 = load i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %328, i128* %XMM9, align 1, !mcsema_real_eip !16
  %329 = load i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %329, i128* %XMM10, align 1, !mcsema_real_eip !16
  %330 = load i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %330, i128* %XMM11, align 1, !mcsema_real_eip !16
  %331 = load i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %331, i128* %XMM12, align 1, !mcsema_real_eip !16
  %332 = load i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %332, i128* %XMM13, align 1, !mcsema_real_eip !16
  %333 = load i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %333, i128* %XMM14, align 1, !mcsema_real_eip !16
  %334 = load i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %334, i128* %XMM15, align 1, !mcsema_real_eip !16
  %335 = load i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %335, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %336 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %336, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @close(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_10(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 17, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 20, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = metadata !{i64 24, [15 x i8] c"\09movl\09$0, %esi\00"}
!6 = metadata !{i64 29, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!7 = metadata !{i64 33, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!8 = metadata !{i64 39, [9 x i8] c"\09callq\090\00"}
!9 = metadata !{i64 44, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!10 = metadata !{i64 47, [29 x i8] c"\09cmpl\09$4294967295, -20(%rbp)\00"}
!11 = metadata !{i64 54, [7 x i8] c"\09je\0923\00"}
!12 = metadata !{i64 83, [28 x i8] c"\09movl\09$4294967295, -4(%rbp)\00"}
!13 = metadata !{i64 90, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!14 = metadata !{i64 93, [16 x i8] c"\09addq\09$32, %rsp\00"}
!15 = metadata !{i64 97, [11 x i8] c"\09popq\09%rbp\00"}
!16 = metadata !{i64 98, [6 x i8] c"\09retq\00"}
!17 = metadata !{i64 60, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!18 = metadata !{i64 63, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 68, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!20 = metadata !{i64 75, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
