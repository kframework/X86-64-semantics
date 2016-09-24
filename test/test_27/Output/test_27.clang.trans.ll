; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_100(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 128
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 128
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
  %81 = add i64 %78, -120
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
  %91 = icmp ult i64 %79, 112, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 12, i64* %RDI_val, !mcsema_real_eip !5
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %95 = add i64 %94, -4, !mcsema_real_eip !6
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !6
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %99 = add i64 %98, -16, !mcsema_real_eip !7
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %100 to i32*
  store i32 10, i32* %101, !mcsema_real_eip !7
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %103 = add i64 %102, -12, !mcsema_real_eip !8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !8
  %105 = bitcast i64* %104 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !8
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %107 = add i64 %106, -8, !mcsema_real_eip !9
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !9
  %109 = bitcast i64* %108 to i32*
  store i32 10, i32* %109, !mcsema_real_eip !9
  %110 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %111 = tail call x86_64_sysvcc i64 @malloc(i64 %110), !mcsema_real_eip !10
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !10
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %113 = add i64 %112, -16, !mcsema_real_eip !11
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !11
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !11
  store i64 %115, i64* %RDI_val, !mcsema_real_eip !11
  store i64 1, i64* %R8_val, !mcsema_real_eip !12
  store i64 2, i64* %R9_val, !mcsema_real_eip !13
  store i64 3, i64* %RCX_val, !mcsema_real_eip !14
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %117 = add i64 %116, -24, !mcsema_real_eip !15
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !15
  %119 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  store i64 %119, i64* %118, !mcsema_real_eip !15
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %121 = add i64 %120, -24, !mcsema_real_eip !16
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !16
  %123 = load i64, i64* %122, !mcsema_real_eip !16
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !17
  %125 = bitcast i64* %124 to i32*
  store i32 5, i32* %125, !mcsema_real_eip !17
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %127 = add i64 %126, -24, !mcsema_real_eip !18
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !18
  %129 = load i64, i64* %128, !mcsema_real_eip !18
  store i64 %129, i64* %RAX_val, !mcsema_real_eip !18
  %130 = add i64 %129, 4, !mcsema_real_eip !19
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !19
  %132 = bitcast i64* %131 to i32*
  store i32 5, i32* %132, !mcsema_real_eip !19
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %134 = add i64 %133, -24, !mcsema_real_eip !20
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !20
  %136 = load i64, i64* %135, !mcsema_real_eip !20
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !20
  %137 = add i64 %136, 8, !mcsema_real_eip !21
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !21
  %139 = bitcast i64* %138 to i32*
  store i32 5, i32* %139, !mcsema_real_eip !21
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %141 = add i64 %140, -24, !mcsema_real_eip !22
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !22
  %143 = load i64, i64* %142, !mcsema_real_eip !22
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !22
  %144 = load i64, i64* %142, !mcsema_real_eip !23
  store i64 %144, i64* %RDX_val, !mcsema_real_eip !23
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %146 = add i64 %145, -16, !mcsema_real_eip !24
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !24
  %148 = load i64, i64* %147, !mcsema_real_eip !24
  store i64 %148, i64* %RSI_val, !mcsema_real_eip !24
  %149 = add i64 %145, -48, !mcsema_real_eip !25
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !25
  store i64 %148, i64* %150, !mcsema_real_eip !25
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %152 = add i64 %151, -8, !mcsema_real_eip !26
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !26
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !26
  %156 = zext i32 %155 to i64, !mcsema_real_eip !26
  store i64 %156, i64* %R10_val, !mcsema_real_eip !26
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %158 = add i64 %157, -40, !mcsema_real_eip !27
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !27
  %160 = bitcast i64* %159 to i32*
  store i32 %155, i32* %160, !mcsema_real_eip !27
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %162 = add i64 %161, -48, !mcsema_real_eip !28
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !28
  %164 = load i64, i64* %163, !mcsema_real_eip !28
  store i64 %164, i64* %RSI_val, !mcsema_real_eip !28
  %165 = add i64 %161, -40, !mcsema_real_eip !29
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !29
  %167 = bitcast i64* %166 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !29
  %169 = zext i32 %168 to i64, !mcsema_real_eip !29
  store i64 %169, i64* %R10_val, !mcsema_real_eip !29
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %171 = add i64 %170, -56, !mcsema_real_eip !30
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !30
  %173 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %173, i64* %172, !mcsema_real_eip !30
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %174, i64* %RDI_val, !mcsema_real_eip !31
  %175 = load i64, i64* %R10_val, !mcsema_real_eip !32
  %176 = and i64 %175, 4294967295
  store i64 %176, i64* %RSI_val, !mcsema_real_eip !32
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %178 = add i64 %177, -56, !mcsema_real_eip !33
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !33
  %180 = load i64, i64* %179, !mcsema_real_eip !33
  store i64 %180, i64* %R11_val, !mcsema_real_eip !33
  %181 = add i64 %177, -64, !mcsema_real_eip !34
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !34
  %183 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  store i64 %183, i64* %182, !mcsema_real_eip !34
  %184 = load i64, i64* %R11_val, !mcsema_real_eip !35
  store i64 %184, i64* %RDX_val, !mcsema_real_eip !35
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %186 = add i64 %185, -68, !mcsema_real_eip !36
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !36
  %188 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !36
  %190 = bitcast i64* %187 to i32*
  store i32 %189, i32* %190, !mcsema_real_eip !36
  %191 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %191, i64* %RCX_val, !mcsema_real_eip !37
  %192 = load i64, i64* %RSP_val, !mcsema_real_eip !38
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !38
  %194 = bitcast i64* %193 to i32*
  store i32 3, i32* %194, !mcsema_real_eip !38
  %195 = load i64, i64* %R11_val, !mcsema_real_eip !39
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !39
  %197 = load i64, i64* %196, !mcsema_real_eip !39
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !39
  %198 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %199 = add i64 %198, 8, !mcsema_real_eip !40
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !40
  store i64 %197, i64* %200, !mcsema_real_eip !40
  %201 = load i64, i64* %R11_val, !mcsema_real_eip !41
  %202 = add i64 %201, 8, !mcsema_real_eip !41
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !41
  %204 = bitcast i64* %203 to i32*
  %205 = load i32, i32* %204, !mcsema_real_eip !41
  %206 = zext i32 %205 to i64, !mcsema_real_eip !41
  store i64 %206, i64* %R10_val, !mcsema_real_eip !41
  %207 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %208 = add i64 %207, 16, !mcsema_real_eip !42
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !42
  %210 = bitcast i64* %209 to i32*
  store i32 %205, i32* %210, !mcsema_real_eip !42
  %211 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %212 = add i64 %211, 24, !mcsema_real_eip !43
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !43
  %214 = load i64, i64* %R11_val, !mcsema_real_eip !43
  store i64 %214, i64* %213, !mcsema_real_eip !43
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %216 = add i64 %215, -64, !mcsema_real_eip !44
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !44
  %218 = load i64, i64* %217, !mcsema_real_eip !44
  store i64 %218, i64* %RAX_val, !mcsema_real_eip !44
  %219 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %220 = add i64 %219, 32, !mcsema_real_eip !45
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !45
  store i64 %218, i64* %221, !mcsema_real_eip !45
  %222 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %223 = add i64 %222, -8
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %224, !mcsema_real_eip !46
  store i64 %223, i64* %RSP_val, !mcsema_real_eip !46
  %225 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %225, i64* %RAX, !mcsema_real_eip !46
  %226 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %226, i64* %RBX, !mcsema_real_eip !46
  %227 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %227, i64* %RCX, !mcsema_real_eip !46
  %228 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %228, i64* %RDX, !mcsema_real_eip !46
  %229 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %229, i64* %RSI, !mcsema_real_eip !46
  %230 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %230, i64* %RDI, !mcsema_real_eip !46
  %231 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %231, i64* %RSP, !mcsema_real_eip !46
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  store i64 %232, i64* %RBP, !mcsema_real_eip !46
  %233 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %233, i64* %R8, !mcsema_real_eip !46
  %234 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %234, i64* %R9, !mcsema_real_eip !46
  %235 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %235, i64* %R10, !mcsema_real_eip !46
  %236 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %236, i64* %R11, !mcsema_real_eip !46
  %237 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %237, i64* %R12, !mcsema_real_eip !46
  %238 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %238, i64* %R13, !mcsema_real_eip !46
  %239 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %239, i64* %R14, !mcsema_real_eip !46
  %240 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %240, i64* %R15, !mcsema_real_eip !46
  %241 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %241, i64* %RIP, !mcsema_real_eip !46
  %242 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !46
  %243 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %243, i1* %PF, align 1, !mcsema_real_eip !46
  %244 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %244, i1* %AF, align 1, !mcsema_real_eip !46
  %245 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %245, i1* %ZF, align 1, !mcsema_real_eip !46
  %246 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %246, i1* %SF, align 1, !mcsema_real_eip !46
  %247 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !46
  %248 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %248, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %249 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %249, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %250 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %250, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %251 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %251, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %252 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %252, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %253 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %253, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %254 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %254, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %255 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %255, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %256 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %256, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %257 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %257, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %258 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %258, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %259 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %259, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %260 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %260, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %261 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %261, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %262 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %262, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %263 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %263, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %264 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %264, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %265 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %265, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %266 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %266, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %267 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %267, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %268 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %268, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %269 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %269, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %270 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %270, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %271 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %271, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %272 = load i64, i64* %53, align 4
  store i64 %272, i64* %52, align 4
  %273 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %273, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %274 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %274, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %275 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %275, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %276 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %276, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %277 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %277, i128* %XMM0, align 1, !mcsema_real_eip !46
  %278 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %278, i128* %XMM1, align 1, !mcsema_real_eip !46
  %279 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %279, i128* %XMM2, align 1, !mcsema_real_eip !46
  %280 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %280, i128* %XMM3, align 1, !mcsema_real_eip !46
  %281 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %281, i128* %XMM4, align 1, !mcsema_real_eip !46
  %282 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %282, i128* %XMM5, align 1, !mcsema_real_eip !46
  %283 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %283, i128* %XMM6, align 1, !mcsema_real_eip !46
  %284 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %284, i128* %XMM7, align 1, !mcsema_real_eip !46
  %285 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %285, i128* %XMM8, align 1, !mcsema_real_eip !46
  %286 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %286, i128* %XMM9, align 1, !mcsema_real_eip !46
  %287 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %287, i128* %XMM10, align 1, !mcsema_real_eip !46
  %288 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %288, i128* %XMM11, align 1, !mcsema_real_eip !46
  %289 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %289, i128* %XMM12, align 1, !mcsema_real_eip !46
  %290 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %290, i128* %XMM13, align 1, !mcsema_real_eip !46
  %291 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %291, i128* %XMM14, align 1, !mcsema_real_eip !46
  %292 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %292, i128* %XMM15, align 1, !mcsema_real_eip !46
  %293 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %293, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %294 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %294, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  call void @sub_0.1(%struct.regs* %0, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %295 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %295, i64* %RAX_val, !mcsema_real_eip !46
  %296 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %296, i64* %RBX_val, !mcsema_real_eip !46
  %297 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %297, i64* %RCX_val, !mcsema_real_eip !46
  %298 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %298, i64* %RDX_val, !mcsema_real_eip !46
  %299 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %299, i64* %RSI_val, !mcsema_real_eip !46
  %300 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %300, i64* %RDI_val, !mcsema_real_eip !46
  %301 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %301, i64* %RSP_val, !mcsema_real_eip !46
  %302 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %302, i64* %RBP_val, !mcsema_real_eip !46
  %303 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %303, i64* %R8_val, !mcsema_real_eip !46
  %304 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %304, i64* %R9_val, !mcsema_real_eip !46
  %305 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %305, i64* %R10_val, !mcsema_real_eip !46
  %306 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %306, i64* %R11_val, !mcsema_real_eip !46
  %307 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %307, i64* %R12_val, !mcsema_real_eip !46
  %308 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %308, i64* %R13_val, !mcsema_real_eip !46
  %309 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %309, i64* %R14_val, !mcsema_real_eip !46
  %310 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %310, i64* %R15_val, !mcsema_real_eip !46
  %311 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %311, i64* %RIP_val, !mcsema_real_eip !46
  %312 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %312, i1* %CF_val, !mcsema_real_eip !46
  %313 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %313, i1* %PF_val, !mcsema_real_eip !46
  %314 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %314, i1* %AF_val, !mcsema_real_eip !46
  %315 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %315, i1* %ZF_val, !mcsema_real_eip !46
  %316 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %316, i1* %SF_val, !mcsema_real_eip !46
  %317 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %317, i1* %OF_val, !mcsema_real_eip !46
  %318 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %318, i1* %DF_val, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %319 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %319, i1* %FPU_B_val, !mcsema_real_eip !46
  %320 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %320, i1* %FPU_C3_val, !mcsema_real_eip !46
  %321 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %321, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %322 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %322, i1* %FPU_C2_val, !mcsema_real_eip !46
  %323 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %323, i1* %FPU_C1_val, !mcsema_real_eip !46
  %324 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %324, i1* %FPU_C0_val, !mcsema_real_eip !46
  %325 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %325, i1* %FPU_ES_val, !mcsema_real_eip !46
  %326 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %326, i1* %FPU_SF_val, !mcsema_real_eip !46
  %327 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %327, i1* %FPU_PE_val, !mcsema_real_eip !46
  %328 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %328, i1* %FPU_UE_val, !mcsema_real_eip !46
  %329 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %329, i1* %FPU_OE_val, !mcsema_real_eip !46
  %330 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %330, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %331 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %331, i1* %FPU_DE_val, !mcsema_real_eip !46
  %332 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %332, i1* %FPU_IE_val, !mcsema_real_eip !46
  %333 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %333, i1* %FPU_X_val, !mcsema_real_eip !46
  %334 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %334, i2* %FPU_RC_val, !mcsema_real_eip !46
  %335 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %335, i2* %FPU_PC_val, !mcsema_real_eip !46
  %336 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %336, i1* %FPU_PM_val, !mcsema_real_eip !46
  %337 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %337, i1* %FPU_UM_val, !mcsema_real_eip !46
  %338 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %338, i1* %FPU_OM_val, !mcsema_real_eip !46
  %339 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %339, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %340 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %340, i1* %FPU_DM_val, !mcsema_real_eip !46
  %341 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %341, i1* %FPU_IM_val, !mcsema_real_eip !46
  %342 = load i64, i64* %52, align 4
  store i64 %342, i64* %53, align 4
  %343 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %343, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %344 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %344, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %345 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %345, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %346 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %346, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %347 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %347, i128* %XMM0_val, !mcsema_real_eip !46
  %348 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %348, i128* %XMM1_val, !mcsema_real_eip !46
  %349 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %349, i128* %XMM2_val, !mcsema_real_eip !46
  %350 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %350, i128* %XMM3_val, !mcsema_real_eip !46
  %351 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %351, i128* %XMM4_val, !mcsema_real_eip !46
  %352 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %352, i128* %XMM5_val, !mcsema_real_eip !46
  %353 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %353, i128* %XMM6_val, !mcsema_real_eip !46
  %354 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %354, i128* %XMM7_val, !mcsema_real_eip !46
  %355 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %355, i128* %XMM8_val, !mcsema_real_eip !46
  %356 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %356, i128* %XMM9_val, !mcsema_real_eip !46
  %357 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %357, i128* %XMM10_val, !mcsema_real_eip !46
  %358 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %358, i128* %XMM11_val, !mcsema_real_eip !46
  %359 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %359, i128* %XMM12_val, !mcsema_real_eip !46
  %360 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %360, i128* %XMM13_val, !mcsema_real_eip !46
  %361 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %361, i128* %XMM14_val, !mcsema_real_eip !46
  %362 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %362, i128* %XMM15_val, !mcsema_real_eip !46
  %363 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %363, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %364 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %364, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %366 = add i64 %365, -32, !mcsema_real_eip !47
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !47
  %368 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %368, i64* %367, !mcsema_real_eip !47
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %370 = add i64 %369, -32, !mcsema_real_eip !48
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !48
  %372 = load i64, i64* %371, !mcsema_real_eip !48
  store i64 %372, i64* %RAX_val, !mcsema_real_eip !48
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !49
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !49
  %376 = zext i32 %375 to i64, !mcsema_real_eip !49
  store i64 %376, i64* %RSI_val, !mcsema_real_eip !49
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %378 = add i64 %377, -32, !mcsema_real_eip !50
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !50
  %380 = load i64, i64* %379, !mcsema_real_eip !50
  store i64 %380, i64* %RAX_val, !mcsema_real_eip !50
  %381 = add i64 %380, 4, !mcsema_real_eip !51
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !51
  %383 = bitcast i64* %382 to i32*
  %384 = load i32, i32* %383, !mcsema_real_eip !51
  %385 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %386 = trunc i64 %385 to i32, !mcsema_real_eip !51
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %386, i32 %384)
  %387 = extractvalue { i32, i1 } %uadd, 0
  %388 = xor i32 %387, %384, !mcsema_real_eip !51
  %389 = xor i32 %388, %386, !mcsema_real_eip !51
  %390 = and i32 %389, 16, !mcsema_real_eip !51
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !51
  store i1 %391, i1* %AF_val, !mcsema_real_eip !51
  %392 = icmp slt i32 %387, 0
  store i1 %392, i1* %SF_val, !mcsema_real_eip !51
  %393 = icmp eq i32 %387, 0, !mcsema_real_eip !51
  store i1 %393, i1* %ZF_val, !mcsema_real_eip !51
  %394 = xor i32 %384, -2147483648, !mcsema_real_eip !51
  %395 = xor i32 %394, %386, !mcsema_real_eip !51
  %396 = and i32 %388, %395, !mcsema_real_eip !51
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF_val, !mcsema_real_eip !51
  %398 = trunc i32 %387 to i8, !mcsema_real_eip !51
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !51
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF_val, !mcsema_real_eip !51
  %402 = extractvalue { i32, i1 } %uadd, 1
  store i1 %402, i1* %CF_val, !mcsema_real_eip !51
  %403 = zext i32 %387 to i64, !mcsema_real_eip !51
  store i64 %403, i64* %RSI_val, !mcsema_real_eip !51
  %404 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %405 = add i64 %404, -32, !mcsema_real_eip !52
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !52
  %407 = load i64, i64* %406, !mcsema_real_eip !52
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !52
  %408 = add i64 %407, 8, !mcsema_real_eip !53
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !53
  %410 = bitcast i64* %409 to i32*
  %411 = load i32, i32* %410, !mcsema_real_eip !53
  %412 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  %413 = trunc i64 %412 to i32, !mcsema_real_eip !53
  %414 = add i32 %413, %411
  %415 = zext i32 %414 to i64, !mcsema_real_eip !53
  store i64 %415, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %415, i64* %RAX_val, !mcsema_real_eip !54
  %416 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %416, i64 112)
  %417 = extractvalue { i64, i1 } %uadd210, 0
  %418 = xor i64 %417, %416, !mcsema_real_eip !55
  %419 = and i64 %418, 16
  %420 = icmp eq i64 %419, 0
  store i1 %420, i1* %AF_val, !mcsema_real_eip !55
  %421 = icmp slt i64 %417, 0
  store i1 %421, i1* %SF_val, !mcsema_real_eip !55
  %422 = icmp eq i64 %417, 0, !mcsema_real_eip !55
  store i1 %422, i1* %ZF_val, !mcsema_real_eip !55
  %423 = xor i64 %416, -9223372036854775808, !mcsema_real_eip !55
  %424 = and i64 %418, %423, !mcsema_real_eip !55
  %425 = icmp slt i64 %424, 0
  store i1 %425, i1* %OF_val, !mcsema_real_eip !55
  %426 = trunc i64 %417 to i8, !mcsema_real_eip !55
  %427 = tail call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !55
  %428 = and i8 %427, 1
  %429 = icmp eq i8 %428, 0
  store i1 %429, i1* %PF_val, !mcsema_real_eip !55
  %430 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %430, i1* %CF_val, !mcsema_real_eip !55
  store i64 %417, i64* %RSP_val, !mcsema_real_eip !55
  %431 = inttoptr i64 %417 to i64*, !mcsema_real_eip !56
  %432 = load i64, i64* %431, !mcsema_real_eip !56
  store i64 %432, i64* %RBP_val, !mcsema_real_eip !56
  %433 = add i64 %417, 16, !mcsema_real_eip !57
  store i64 %433, i64* %RSP_val, !mcsema_real_eip !57
  %434 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %434, i64* %RAX, !mcsema_real_eip !57
  %435 = load i64, i64* %RBX_val, !mcsema_real_eip !57
  store i64 %435, i64* %RBX, !mcsema_real_eip !57
  %436 = load i64, i64* %RCX_val, !mcsema_real_eip !57
  store i64 %436, i64* %RCX, !mcsema_real_eip !57
  %437 = load i64, i64* %RDX_val, !mcsema_real_eip !57
  store i64 %437, i64* %RDX, !mcsema_real_eip !57
  %438 = load i64, i64* %RSI_val, !mcsema_real_eip !57
  store i64 %438, i64* %RSI, !mcsema_real_eip !57
  %439 = load i64, i64* %RDI_val, !mcsema_real_eip !57
  store i64 %439, i64* %RDI, !mcsema_real_eip !57
  %440 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  store i64 %440, i64* %RSP, !mcsema_real_eip !57
  %441 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  store i64 %441, i64* %RBP, !mcsema_real_eip !57
  %442 = load i64, i64* %R8_val, !mcsema_real_eip !57
  store i64 %442, i64* %R8, !mcsema_real_eip !57
  %443 = load i64, i64* %R9_val, !mcsema_real_eip !57
  store i64 %443, i64* %R9, !mcsema_real_eip !57
  %444 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %444, i64* %R10, !mcsema_real_eip !57
  %445 = load i64, i64* %R11_val, !mcsema_real_eip !57
  store i64 %445, i64* %R11, !mcsema_real_eip !57
  %446 = load i64, i64* %R12_val, !mcsema_real_eip !57
  store i64 %446, i64* %R12, !mcsema_real_eip !57
  %447 = load i64, i64* %R13_val, !mcsema_real_eip !57
  store i64 %447, i64* %R13, !mcsema_real_eip !57
  %448 = load i64, i64* %R14_val, !mcsema_real_eip !57
  store i64 %448, i64* %R14, !mcsema_real_eip !57
  %449 = load i64, i64* %R15_val, !mcsema_real_eip !57
  store i64 %449, i64* %R15, !mcsema_real_eip !57
  %450 = load i64, i64* %RIP_val, !mcsema_real_eip !57
  store i64 %450, i64* %RIP, !mcsema_real_eip !57
  %451 = load i1, i1* %CF_val, !mcsema_real_eip !57
  store i1 %451, i1* %CF, align 1, !mcsema_real_eip !57
  %452 = load i1, i1* %PF_val, !mcsema_real_eip !57
  store i1 %452, i1* %PF, align 1, !mcsema_real_eip !57
  %453 = load i1, i1* %AF_val, !mcsema_real_eip !57
  store i1 %453, i1* %AF, align 1, !mcsema_real_eip !57
  %454 = load i1, i1* %ZF_val, !mcsema_real_eip !57
  store i1 %454, i1* %ZF, align 1, !mcsema_real_eip !57
  %455 = load i1, i1* %SF_val, !mcsema_real_eip !57
  store i1 %455, i1* %SF, align 1, !mcsema_real_eip !57
  %456 = load i1, i1* %OF_val, !mcsema_real_eip !57
  store i1 %456, i1* %OF, align 1, !mcsema_real_eip !57
  %457 = load i1, i1* %DF_val, !mcsema_real_eip !57
  store i1 %457, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  %458 = load i1, i1* %FPU_B_val, !mcsema_real_eip !57
  store i1 %458, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %459 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !57
  store i1 %459, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %460 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !57
  store i3 %460, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %461 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !57
  store i1 %461, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %462 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !57
  store i1 %462, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %463 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !57
  store i1 %463, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %464 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !57
  store i1 %464, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %465 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !57
  store i1 %465, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %466 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !57
  store i1 %466, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %467 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !57
  store i1 %467, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %468 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !57
  store i1 %468, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %469 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !57
  store i1 %469, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %470 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !57
  store i1 %470, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %471 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !57
  store i1 %471, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %472 = load i1, i1* %FPU_X_val, !mcsema_real_eip !57
  store i1 %472, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %473 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !57
  store i2 %473, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %474 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !57
  store i2 %474, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %475 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !57
  store i1 %475, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %476 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !57
  store i1 %476, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %477 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !57
  store i1 %477, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %478 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !57
  store i1 %478, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %479 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !57
  store i1 %479, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %480 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !57
  store i1 %480, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %481 = load i64, i64* %53, align 4
  store i64 %481, i64* %52, align 4
  %482 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  store i16 %482, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %483 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  store i64 %483, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  %484 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  store i16 %484, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %485 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  store i64 %485, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  %486 = load i128, i128* %XMM0_val, !mcsema_real_eip !57
  store i128 %486, i128* %XMM0, align 1, !mcsema_real_eip !57
  %487 = load i128, i128* %XMM1_val, !mcsema_real_eip !57
  store i128 %487, i128* %XMM1, align 1, !mcsema_real_eip !57
  %488 = load i128, i128* %XMM2_val, !mcsema_real_eip !57
  store i128 %488, i128* %XMM2, align 1, !mcsema_real_eip !57
  %489 = load i128, i128* %XMM3_val, !mcsema_real_eip !57
  store i128 %489, i128* %XMM3, align 1, !mcsema_real_eip !57
  %490 = load i128, i128* %XMM4_val, !mcsema_real_eip !57
  store i128 %490, i128* %XMM4, align 1, !mcsema_real_eip !57
  %491 = load i128, i128* %XMM5_val, !mcsema_real_eip !57
  store i128 %491, i128* %XMM5, align 1, !mcsema_real_eip !57
  %492 = load i128, i128* %XMM6_val, !mcsema_real_eip !57
  store i128 %492, i128* %XMM6, align 1, !mcsema_real_eip !57
  %493 = load i128, i128* %XMM7_val, !mcsema_real_eip !57
  store i128 %493, i128* %XMM7, align 1, !mcsema_real_eip !57
  %494 = load i128, i128* %XMM8_val, !mcsema_real_eip !57
  store i128 %494, i128* %XMM8, align 1, !mcsema_real_eip !57
  %495 = load i128, i128* %XMM9_val, !mcsema_real_eip !57
  store i128 %495, i128* %XMM9, align 1, !mcsema_real_eip !57
  %496 = load i128, i128* %XMM10_val, !mcsema_real_eip !57
  store i128 %496, i128* %XMM10, align 1, !mcsema_real_eip !57
  %497 = load i128, i128* %XMM11_val, !mcsema_real_eip !57
  store i128 %497, i128* %XMM11, align 1, !mcsema_real_eip !57
  %498 = load i128, i128* %XMM12_val, !mcsema_real_eip !57
  store i128 %498, i128* %XMM12, align 1, !mcsema_real_eip !57
  %499 = load i128, i128* %XMM13_val, !mcsema_real_eip !57
  store i128 %499, i128* %XMM13, align 1, !mcsema_real_eip !57
  %500 = load i128, i128* %XMM14_val, !mcsema_real_eip !57
  store i128 %500, i128* %XMM14, align 1, !mcsema_real_eip !57
  %501 = load i128, i128* %XMM15_val, !mcsema_real_eip !57
  store i128 %501, i128* %XMM15, align 1, !mcsema_real_eip !57
  %502 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !57
  store i64 %502, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  %503 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  store i64 %503, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 120
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 120
  %R15_val = alloca i64, !mcsema_real_eip !58
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !58
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !58
  %XMM15_val = alloca i128, !mcsema_real_eip !58
  %XMM14_val = alloca i128, !mcsema_real_eip !58
  %XMM13_val = alloca i128, !mcsema_real_eip !58
  %XMM12_val = alloca i128, !mcsema_real_eip !58
  %XMM11_val = alloca i128, !mcsema_real_eip !58
  %XMM10_val = alloca i128, !mcsema_real_eip !58
  %XMM9_val = alloca i128, !mcsema_real_eip !58
  %XMM8_val = alloca i128, !mcsema_real_eip !58
  %XMM7_val = alloca i128, !mcsema_real_eip !58
  %XMM6_val = alloca i128, !mcsema_real_eip !58
  %XMM5_val = alloca i128, !mcsema_real_eip !58
  %XMM4_val = alloca i128, !mcsema_real_eip !58
  %XMM3_val = alloca i128, !mcsema_real_eip !58
  %XMM2_val = alloca i128, !mcsema_real_eip !58
  %XMM1_val = alloca i128, !mcsema_real_eip !58
  %XMM0_val = alloca i128, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !58
  %FPU_IM_val = alloca i1, !mcsema_real_eip !58
  %FPU_DM_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !58
  %FPU_OM_val = alloca i1, !mcsema_real_eip !58
  %FPU_UM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PC_val = alloca i2, !mcsema_real_eip !58
  %FPU_RC_val = alloca i2, !mcsema_real_eip !58
  %FPU_X_val = alloca i1, !mcsema_real_eip !58
  %FPU_IE_val = alloca i1, !mcsema_real_eip !58
  %FPU_DE_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !58
  %FPU_OE_val = alloca i1, !mcsema_real_eip !58
  %FPU_UE_val = alloca i1, !mcsema_real_eip !58
  %FPU_PE_val = alloca i1, !mcsema_real_eip !58
  %FPU_SF_val = alloca i1, !mcsema_real_eip !58
  %FPU_ES_val = alloca i1, !mcsema_real_eip !58
  %FPU_C0_val = alloca i1, !mcsema_real_eip !58
  %FPU_C1_val = alloca i1, !mcsema_real_eip !58
  %FPU_C2_val = alloca i1, !mcsema_real_eip !58
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !58
  %FPU_C3_val = alloca i1, !mcsema_real_eip !58
  %FPU_B_val = alloca i1, !mcsema_real_eip !58
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !58
  %DF_val = alloca i1, !mcsema_real_eip !58
  %OF_val = alloca i1, !mcsema_real_eip !58
  %SF_val = alloca i1, !mcsema_real_eip !58
  %CF_val = alloca i1, !mcsema_real_eip !58
  %AF_val = alloca i1, !mcsema_real_eip !58
  %PF_val = alloca i1, !mcsema_real_eip !58
  %ZF_val = alloca i1, !mcsema_real_eip !58
  %RIP_val = alloca i64, !mcsema_real_eip !58
  %R14_val = alloca i64, !mcsema_real_eip !58
  %R13_val = alloca i64, !mcsema_real_eip !58
  %R12_val = alloca i64, !mcsema_real_eip !58
  %R11_val = alloca i64, !mcsema_real_eip !58
  %R10_val = alloca i64, !mcsema_real_eip !58
  %R9_val = alloca i64, !mcsema_real_eip !58
  %R8_val = alloca i64, !mcsema_real_eip !58
  %RSP_val = alloca i64, !mcsema_real_eip !58
  %RBP_val = alloca i64, !mcsema_real_eip !58
  %RDI_val = alloca i64, !mcsema_real_eip !58
  %RSI_val = alloca i64, !mcsema_real_eip !58
  %RDX_val = alloca i64, !mcsema_real_eip !58
  %RCX_val = alloca i64, !mcsema_real_eip !58
  %RBX_val = alloca i64, !mcsema_real_eip !58
  %RAX_val = alloca i64, !mcsema_real_eip !58
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !58
  %1 = load i64, i64* %RAX, !mcsema_real_eip !58
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !58
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !58
  %2 = load i64, i64* %RBX, !mcsema_real_eip !58
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !58
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !58
  %3 = load i64, i64* %RCX, !mcsema_real_eip !58
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !58
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !58
  %4 = load i64, i64* %RDX, !mcsema_real_eip !58
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !58
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !58
  %5 = load i64, i64* %RSI, !mcsema_real_eip !58
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !58
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !58
  %6 = load i64, i64* %RDI, !mcsema_real_eip !58
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !58
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !58
  %7 = load i64, i64* %RSP, !mcsema_real_eip !58
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !58
  %8 = load i64, i64* %RBP, !mcsema_real_eip !58
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !58
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !58
  %9 = load i64, i64* %R8, !mcsema_real_eip !58
  store i64 %9, i64* %R8_val, !mcsema_real_eip !58
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !58
  %10 = load i64, i64* %R9, !mcsema_real_eip !58
  store i64 %10, i64* %R9_val, !mcsema_real_eip !58
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !58
  %11 = load i64, i64* %R10, !mcsema_real_eip !58
  store i64 %11, i64* %R10_val, !mcsema_real_eip !58
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !58
  %12 = load i64, i64* %R11, !mcsema_real_eip !58
  store i64 %12, i64* %R11_val, !mcsema_real_eip !58
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !58
  %13 = load i64, i64* %R12, !mcsema_real_eip !58
  store i64 %13, i64* %R12_val, !mcsema_real_eip !58
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !58
  %14 = load i64, i64* %R13, !mcsema_real_eip !58
  store i64 %14, i64* %R13_val, !mcsema_real_eip !58
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !58
  %15 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %15, i64* %R14_val, !mcsema_real_eip !58
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !58
  %16 = load i64, i64* %R15, !mcsema_real_eip !58
  store i64 %16, i64* %R15_val, !mcsema_real_eip !58
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !58
  %17 = load i64, i64* %RIP, !mcsema_real_eip !58
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !58
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !58
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %CF_val, !mcsema_real_eip !58
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !58
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %PF_val, !mcsema_real_eip !58
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !58
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %AF_val, !mcsema_real_eip !58
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !58
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !58
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !58
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %SF_val, !mcsema_real_eip !58
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !58
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %OF_val, !mcsema_real_eip !58
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !58
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %DF_val, !mcsema_real_eip !58
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !58
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !58
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !58
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !58
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !58
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !58
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !58
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !58
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !58
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !58
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !58
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !58
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !58
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !58
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !58
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !58
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !58
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !58
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !58
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !58
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !58
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !58
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !58
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !58
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !58
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !58
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !58
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !58
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !58
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !58
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !58
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !58
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !58
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !58
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !58
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !58
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !58
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !58
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !58
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !58
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !58
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !58
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !58
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !58
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !58
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !58
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !58
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !58
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !58
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !58
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !58
  store i64 %77, i64* %80, !mcsema_real_eip !58
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !59
  %81 = load i64, i64* %R14_val, !mcsema_real_eip !60
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !60
  store i64 %81, i64* %83, !mcsema_real_eip !60
  %84 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  %85 = add i64 %78, -24
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !61
  store i64 %84, i64* %86, !mcsema_real_eip !61
  %87 = add i64 %78, -120
  %88 = xor i64 %87, %85, !mcsema_real_eip !62
  %89 = and i64 %88, 16, !mcsema_real_eip !62
  %90 = icmp ne i64 %89, 0, !mcsema_real_eip !62
  store i1 %90, i1* %AF_val, !mcsema_real_eip !62
  %91 = trunc i64 %87 to i8, !mcsema_real_eip !62
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !62
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !62
  %95 = icmp eq i64 %87, 0, !mcsema_real_eip !62
  store i1 %95, i1* %ZF_val, !mcsema_real_eip !62
  %96 = icmp slt i64 %87, 0
  store i1 %96, i1* %SF_val, !mcsema_real_eip !62
  %97 = icmp ult i64 %85, 96, !mcsema_real_eip !62
  store i1 %97, i1* %CF_val, !mcsema_real_eip !62
  %98 = and i64 %88, %85, !mcsema_real_eip !62
  %99 = icmp slt i64 %98, 0
  store i1 %99, i1* %OF_val, !mcsema_real_eip !62
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !62
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %101 = add i64 %100, 48, !mcsema_real_eip !63
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !63
  %103 = load i64, i64* %102, !mcsema_real_eip !63
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !63
  %104 = add i64 %100, 40, !mcsema_real_eip !64
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !64
  %106 = load i64, i64* %105, !mcsema_real_eip !64
  store i64 %106, i64* %R10_val, !mcsema_real_eip !64
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %108 = add i64 %107, 24, !mcsema_real_eip !65
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !65
  %110 = ptrtoint i64* %109 to i64, !mcsema_real_eip !65
  store i64 %110, i64* %R11_val, !mcsema_real_eip !65
  %111 = add i64 %107, 16, !mcsema_real_eip !66
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !66
  %113 = bitcast i64* %112 to i32*
  %114 = load i32, i32* %113, !mcsema_real_eip !66
  %115 = zext i32 %114 to i64, !mcsema_real_eip !66
  store i64 %115, i64* %RBX_val, !mcsema_real_eip !66
  store i64 12, i64* %R14_val, !mcsema_real_eip !67
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %117 = add i64 %116, -48, !mcsema_real_eip !68
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !68
  %119 = load i64, i64* %RDI_val, !mcsema_real_eip !68
  store i64 %119, i64* %118, !mcsema_real_eip !68
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %121 = add i64 %120, -40, !mcsema_real_eip !69
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !69
  %123 = load i64, i64* %RSI_val, !mcsema_real_eip !69
  %124 = trunc i64 %123 to i32, !mcsema_real_eip !69
  %125 = bitcast i64* %122 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !69
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %127 = add i64 %126, -48, !mcsema_real_eip !70
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !70
  %129 = load i64, i64* %128, !mcsema_real_eip !70
  store i64 %129, i64* %RDI_val, !mcsema_real_eip !70
  %130 = add i64 %126, -32, !mcsema_real_eip !71
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !71
  store i64 %129, i64* %131, !mcsema_real_eip !71
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %133 = add i64 %132, -40, !mcsema_real_eip !72
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !72
  %135 = bitcast i64* %134 to i32*
  %136 = load i32, i32* %135, !mcsema_real_eip !72
  %137 = zext i32 %136 to i64, !mcsema_real_eip !72
  store i64 %137, i64* %RSI_val, !mcsema_real_eip !72
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %139 = add i64 %138, -24, !mcsema_real_eip !73
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !73
  %141 = bitcast i64* %140 to i32*
  store i32 %136, i32* %141, !mcsema_real_eip !73
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %143 = add i64 %142, -56, !mcsema_real_eip !74
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !74
  %145 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %145, i64* %144, !mcsema_real_eip !74
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %147 = add i64 %146, -64, !mcsema_real_eip !75
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !75
  %149 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %149, i64* %148, !mcsema_real_eip !75
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %151 = add i64 %150, -68, !mcsema_real_eip !76
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !76
  %153 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %154 = trunc i64 %153 to i32, !mcsema_real_eip !76
  %155 = bitcast i64* %152 to i32*
  store i32 %154, i32* %155, !mcsema_real_eip !76
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %157 = add i64 %156, -72, !mcsema_real_eip !77
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !77
  %159 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %160 = trunc i64 %159 to i32, !mcsema_real_eip !77
  %161 = bitcast i64* %158 to i32*
  store i32 %160, i32* %161, !mcsema_real_eip !77
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %163 = add i64 %162, -76, !mcsema_real_eip !78
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !78
  %165 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %166 = trunc i64 %165 to i32, !mcsema_real_eip !78
  %167 = bitcast i64* %164 to i32*
  store i32 %166, i32* %167, !mcsema_real_eip !78
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %169 = add i64 %168, -88, !mcsema_real_eip !79
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !79
  %171 = load i64, i64* %R10_val, !mcsema_real_eip !79
  store i64 %171, i64* %170, !mcsema_real_eip !79
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %173 = add i64 %172, -96, !mcsema_real_eip !80
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !80
  %175 = load i64, i64* %RAX_val, !mcsema_real_eip !80
  store i64 %175, i64* %174, !mcsema_real_eip !80
  %176 = load i64, i64* %R14_val, !mcsema_real_eip !81
  store i64 %176, i64* %RDI_val, !mcsema_real_eip !81
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %178 = add i64 %177, -112, !mcsema_real_eip !82
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !82
  %180 = load i64, i64* %R11_val, !mcsema_real_eip !82
  store i64 %180, i64* %179, !mcsema_real_eip !82
  %181 = load i64, i64* %RDI_val, !mcsema_real_eip !83
  %182 = tail call x86_64_sysvcc i64 @malloc(i64 %181), !mcsema_real_eip !83
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !83
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %184 = add i64 %183, -104, !mcsema_real_eip !84
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !84
  store i64 %182, i64* %185, !mcsema_real_eip !84
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %187 = add i64 %186, -32, !mcsema_real_eip !85
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !85
  %189 = bitcast i64* %188 to i32*
  %190 = load i32, i32* %189, !mcsema_real_eip !85
  %191 = zext i32 %190 to i64, !mcsema_real_eip !85
  store i64 %191, i64* %RSI_val, !mcsema_real_eip !85
  %192 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %193 = add i64 %192, -56, !mcsema_real_eip !86
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !86
  %195 = load i64, i64* %194, !mcsema_real_eip !86
  store i64 %195, i64* %RAX_val, !mcsema_real_eip !86
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !87
  %197 = bitcast i64* %196 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !87
  %199 = load i64, i64* %RSI_val, !mcsema_real_eip !87
  %200 = trunc i64 %199 to i32, !mcsema_real_eip !87
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %200, i32 %198)
  %201 = extractvalue { i32, i1 } %uadd, 0
  %202 = xor i32 %201, %198, !mcsema_real_eip !87
  %203 = xor i32 %202, %200, !mcsema_real_eip !87
  %204 = and i32 %203, 16, !mcsema_real_eip !87
  %205 = icmp ne i32 %204, 0, !mcsema_real_eip !87
  store i1 %205, i1* %AF_val, !mcsema_real_eip !87
  %206 = icmp slt i32 %201, 0
  store i1 %206, i1* %SF_val, !mcsema_real_eip !87
  %207 = icmp eq i32 %201, 0, !mcsema_real_eip !87
  store i1 %207, i1* %ZF_val, !mcsema_real_eip !87
  %208 = xor i32 %198, -2147483648, !mcsema_real_eip !87
  %209 = xor i32 %208, %200, !mcsema_real_eip !87
  %210 = and i32 %202, %209, !mcsema_real_eip !87
  %211 = icmp slt i32 %210, 0
  store i1 %211, i1* %OF_val, !mcsema_real_eip !87
  %212 = trunc i32 %201 to i8, !mcsema_real_eip !87
  %213 = tail call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !87
  %214 = and i8 %213, 1
  %215 = icmp eq i8 %214, 0
  store i1 %215, i1* %PF_val, !mcsema_real_eip !87
  %216 = extractvalue { i32, i1 } %uadd, 1
  store i1 %216, i1* %CF_val, !mcsema_real_eip !87
  %217 = zext i32 %201 to i64, !mcsema_real_eip !87
  store i64 %217, i64* %RSI_val, !mcsema_real_eip !87
  %218 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %219 = add i64 %218, -64, !mcsema_real_eip !88
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !88
  %221 = load i64, i64* %220, !mcsema_real_eip !88
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !88
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !89
  %223 = bitcast i64* %222 to i32*
  %224 = load i32, i32* %223, !mcsema_real_eip !89
  %225 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %226 = trunc i64 %225 to i32, !mcsema_real_eip !89
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 %224)
  %227 = extractvalue { i32, i1 } %uadd70, 0
  %228 = xor i32 %227, %224, !mcsema_real_eip !89
  %229 = xor i32 %228, %226, !mcsema_real_eip !89
  %230 = and i32 %229, 16, !mcsema_real_eip !89
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !89
  store i1 %231, i1* %AF_val, !mcsema_real_eip !89
  %232 = icmp slt i32 %227, 0
  store i1 %232, i1* %SF_val, !mcsema_real_eip !89
  %233 = icmp eq i32 %227, 0, !mcsema_real_eip !89
  store i1 %233, i1* %ZF_val, !mcsema_real_eip !89
  %234 = xor i32 %224, -2147483648, !mcsema_real_eip !89
  %235 = xor i32 %234, %226, !mcsema_real_eip !89
  %236 = and i32 %228, %235, !mcsema_real_eip !89
  %237 = icmp slt i32 %236, 0
  store i1 %237, i1* %OF_val, !mcsema_real_eip !89
  %238 = trunc i32 %227 to i8, !mcsema_real_eip !89
  %239 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !89
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF_val, !mcsema_real_eip !89
  %242 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %242, i1* %CF_val, !mcsema_real_eip !89
  %243 = zext i32 %227 to i64, !mcsema_real_eip !89
  store i64 %243, i64* %RSI_val, !mcsema_real_eip !89
  %244 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %245 = add i64 %244, -112, !mcsema_real_eip !90
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !90
  %247 = load i64, i64* %246, !mcsema_real_eip !90
  store i64 %247, i64* %RAX_val, !mcsema_real_eip !90
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !91
  %249 = bitcast i64* %248 to i32*
  %250 = load i32, i32* %249, !mcsema_real_eip !91
  %251 = zext i32 %250 to i64, !mcsema_real_eip !91
  store i64 %251, i64* %R8_val, !mcsema_real_eip !91
  %252 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %253 = add i64 %252, -88, !mcsema_real_eip !92
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !92
  %255 = load i64, i64* %254, !mcsema_real_eip !92
  store i64 %255, i64* %RCX_val, !mcsema_real_eip !92
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !93
  %257 = bitcast i64* %256 to i32*
  %258 = load i32, i32* %257, !mcsema_real_eip !93
  %259 = load i64, i64* %R8_val, !mcsema_real_eip !93
  %260 = trunc i64 %259 to i32, !mcsema_real_eip !93
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 %258)
  %261 = extractvalue { i32, i1 } %uadd71, 0
  %262 = xor i32 %261, %258, !mcsema_real_eip !93
  %263 = xor i32 %262, %260, !mcsema_real_eip !93
  %264 = and i32 %263, 16, !mcsema_real_eip !93
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !93
  store i1 %265, i1* %AF_val, !mcsema_real_eip !93
  %266 = icmp slt i32 %261, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !93
  %267 = icmp eq i32 %261, 0, !mcsema_real_eip !93
  store i1 %267, i1* %ZF_val, !mcsema_real_eip !93
  %268 = xor i32 %258, -2147483648, !mcsema_real_eip !93
  %269 = xor i32 %268, %260, !mcsema_real_eip !93
  %270 = and i32 %262, %269, !mcsema_real_eip !93
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !93
  %272 = trunc i32 %261 to i8, !mcsema_real_eip !93
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !93
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !93
  %276 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !93
  %277 = zext i32 %261 to i64, !mcsema_real_eip !93
  store i64 %277, i64* %R8_val, !mcsema_real_eip !93
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %279 = add i64 %278, -96, !mcsema_real_eip !94
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !94
  %281 = load i64, i64* %280, !mcsema_real_eip !94
  store i64 %281, i64* %RCX_val, !mcsema_real_eip !94
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !95
  %283 = bitcast i64* %282 to i32*
  %284 = load i32, i32* %283, !mcsema_real_eip !95
  %285 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %286 = trunc i64 %285 to i32, !mcsema_real_eip !95
  %287 = add i32 %286, %284
  %288 = zext i32 %287 to i64, !mcsema_real_eip !95
  store i64 %288, i64* %R8_val, !mcsema_real_eip !95
  %289 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %290 = trunc i64 %289 to i32, !mcsema_real_eip !96
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %287, i32 %290)
  %291 = extractvalue { i32, i1 } %uadd73, 0
  %292 = xor i32 %291, %290, !mcsema_real_eip !96
  %293 = xor i32 %292, %287, !mcsema_real_eip !96
  %294 = and i32 %293, 16, !mcsema_real_eip !96
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !96
  store i1 %295, i1* %AF_val, !mcsema_real_eip !96
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF_val, !mcsema_real_eip !96
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !96
  store i1 %297, i1* %ZF_val, !mcsema_real_eip !96
  %298 = xor i32 %287, -2147483648, !mcsema_real_eip !96
  %299 = xor i32 %298, %290, !mcsema_real_eip !96
  %300 = and i32 %292, %299, !mcsema_real_eip !96
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF_val, !mcsema_real_eip !96
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !96
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !96
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF_val, !mcsema_real_eip !96
  %306 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %306, i1* %CF_val, !mcsema_real_eip !96
  %307 = zext i32 %291 to i64, !mcsema_real_eip !96
  store i64 %307, i64* %RSI_val, !mcsema_real_eip !96
  %308 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %309 = add i64 %308, -104, !mcsema_real_eip !97
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !97
  %311 = load i64, i64* %310, !mcsema_real_eip !97
  store i64 %311, i64* %RCX_val, !mcsema_real_eip !97
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !98
  %313 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %314 = trunc i64 %313 to i32, !mcsema_real_eip !98
  %315 = bitcast i64* %312 to i32*
  store i32 %314, i32* %315, !mcsema_real_eip !98
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %317 = add i64 %316, -28, !mcsema_real_eip !99
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !99
  %319 = bitcast i64* %318 to i32*
  %320 = load i32, i32* %319, !mcsema_real_eip !99
  %321 = zext i32 %320 to i64, !mcsema_real_eip !99
  store i64 %321, i64* %RSI_val, !mcsema_real_eip !99
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %323 = add i64 %322, -56, !mcsema_real_eip !100
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !100
  %325 = load i64, i64* %324, !mcsema_real_eip !100
  store i64 %325, i64* %RCX_val, !mcsema_real_eip !100
  %326 = add i64 %325, 4, !mcsema_real_eip !101
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !101
  %328 = bitcast i64* %327 to i32*
  %329 = load i32, i32* %328, !mcsema_real_eip !101
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %331 = trunc i64 %330 to i32, !mcsema_real_eip !101
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %331, i32 %329)
  %332 = extractvalue { i32, i1 } %uadd74, 0
  %333 = xor i32 %332, %329, !mcsema_real_eip !101
  %334 = xor i32 %333, %331, !mcsema_real_eip !101
  %335 = and i32 %334, 16, !mcsema_real_eip !101
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !101
  store i1 %336, i1* %AF_val, !mcsema_real_eip !101
  %337 = icmp slt i32 %332, 0
  store i1 %337, i1* %SF_val, !mcsema_real_eip !101
  %338 = icmp eq i32 %332, 0, !mcsema_real_eip !101
  store i1 %338, i1* %ZF_val, !mcsema_real_eip !101
  %339 = xor i32 %329, -2147483648, !mcsema_real_eip !101
  %340 = xor i32 %339, %331, !mcsema_real_eip !101
  %341 = and i32 %333, %340, !mcsema_real_eip !101
  %342 = icmp slt i32 %341, 0
  store i1 %342, i1* %OF_val, !mcsema_real_eip !101
  %343 = trunc i32 %332 to i8, !mcsema_real_eip !101
  %344 = tail call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !101
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  store i1 %346, i1* %PF_val, !mcsema_real_eip !101
  %347 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %347, i1* %CF_val, !mcsema_real_eip !101
  %348 = zext i32 %332 to i64, !mcsema_real_eip !101
  store i64 %348, i64* %RSI_val, !mcsema_real_eip !101
  %349 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %350 = add i64 %349, -64, !mcsema_real_eip !102
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !102
  %352 = load i64, i64* %351, !mcsema_real_eip !102
  store i64 %352, i64* %RCX_val, !mcsema_real_eip !102
  %353 = add i64 %352, 4, !mcsema_real_eip !103
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !103
  %355 = bitcast i64* %354 to i32*
  %356 = load i32, i32* %355, !mcsema_real_eip !103
  %357 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %358 = trunc i64 %357 to i32, !mcsema_real_eip !103
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %358, i32 %356)
  %359 = extractvalue { i32, i1 } %uadd75, 0
  %360 = xor i32 %359, %356, !mcsema_real_eip !103
  %361 = xor i32 %360, %358, !mcsema_real_eip !103
  %362 = and i32 %361, 16, !mcsema_real_eip !103
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !103
  store i1 %363, i1* %AF_val, !mcsema_real_eip !103
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !103
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !103
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !103
  %366 = xor i32 %356, -2147483648, !mcsema_real_eip !103
  %367 = xor i32 %366, %358, !mcsema_real_eip !103
  %368 = and i32 %360, %367, !mcsema_real_eip !103
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !103
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !103
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !103
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !103
  %374 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !103
  %375 = zext i32 %359 to i64, !mcsema_real_eip !103
  store i64 %375, i64* %RSI_val, !mcsema_real_eip !103
  %376 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %377 = add i64 %376, 4, !mcsema_real_eip !104
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !104
  %379 = bitcast i64* %378 to i32*
  %380 = load i32, i32* %379, !mcsema_real_eip !104
  %381 = zext i32 %380 to i64, !mcsema_real_eip !104
  store i64 %381, i64* %R8_val, !mcsema_real_eip !104
  %382 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %383 = add i64 %382, -88, !mcsema_real_eip !105
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !105
  %385 = load i64, i64* %384, !mcsema_real_eip !105
  store i64 %385, i64* %RCX_val, !mcsema_real_eip !105
  %386 = add i64 %385, 4, !mcsema_real_eip !106
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !106
  %388 = bitcast i64* %387 to i32*
  %389 = load i32, i32* %388, !mcsema_real_eip !106
  %390 = load i64, i64* %R8_val, !mcsema_real_eip !106
  %391 = trunc i64 %390 to i32, !mcsema_real_eip !106
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %391, i32 %389)
  %392 = extractvalue { i32, i1 } %uadd76, 0
  %393 = xor i32 %392, %389, !mcsema_real_eip !106
  %394 = xor i32 %393, %391, !mcsema_real_eip !106
  %395 = and i32 %394, 16, !mcsema_real_eip !106
  %396 = icmp ne i32 %395, 0, !mcsema_real_eip !106
  store i1 %396, i1* %AF_val, !mcsema_real_eip !106
  %397 = icmp slt i32 %392, 0
  store i1 %397, i1* %SF_val, !mcsema_real_eip !106
  %398 = icmp eq i32 %392, 0, !mcsema_real_eip !106
  store i1 %398, i1* %ZF_val, !mcsema_real_eip !106
  %399 = xor i32 %389, -2147483648, !mcsema_real_eip !106
  %400 = xor i32 %399, %391, !mcsema_real_eip !106
  %401 = and i32 %393, %400, !mcsema_real_eip !106
  %402 = icmp slt i32 %401, 0
  store i1 %402, i1* %OF_val, !mcsema_real_eip !106
  %403 = trunc i32 %392 to i8, !mcsema_real_eip !106
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !106
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !106
  %407 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !106
  %408 = zext i32 %392 to i64, !mcsema_real_eip !106
  store i64 %408, i64* %R8_val, !mcsema_real_eip !106
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %410 = add i64 %409, -96, !mcsema_real_eip !107
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !107
  %412 = load i64, i64* %411, !mcsema_real_eip !107
  store i64 %412, i64* %RCX_val, !mcsema_real_eip !107
  %413 = add i64 %412, 4, !mcsema_real_eip !108
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !108
  %415 = bitcast i64* %414 to i32*
  %416 = load i32, i32* %415, !mcsema_real_eip !108
  %417 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %418 = trunc i64 %417 to i32, !mcsema_real_eip !108
  %419 = add i32 %418, %416
  %420 = zext i32 %419 to i64, !mcsema_real_eip !108
  store i64 %420, i64* %R8_val, !mcsema_real_eip !108
  %421 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %422 = trunc i64 %421 to i32, !mcsema_real_eip !109
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %419, i32 %422)
  %423 = extractvalue { i32, i1 } %uadd78, 0
  %424 = xor i32 %423, %422, !mcsema_real_eip !109
  %425 = xor i32 %424, %419, !mcsema_real_eip !109
  %426 = and i32 %425, 16, !mcsema_real_eip !109
  %427 = icmp ne i32 %426, 0, !mcsema_real_eip !109
  store i1 %427, i1* %AF_val, !mcsema_real_eip !109
  %428 = icmp slt i32 %423, 0
  store i1 %428, i1* %SF_val, !mcsema_real_eip !109
  %429 = icmp eq i32 %423, 0, !mcsema_real_eip !109
  store i1 %429, i1* %ZF_val, !mcsema_real_eip !109
  %430 = xor i32 %419, -2147483648, !mcsema_real_eip !109
  %431 = xor i32 %430, %422, !mcsema_real_eip !109
  %432 = and i32 %424, %431, !mcsema_real_eip !109
  %433 = icmp slt i32 %432, 0
  store i1 %433, i1* %OF_val, !mcsema_real_eip !109
  %434 = trunc i32 %423 to i8, !mcsema_real_eip !109
  %435 = tail call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !109
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF_val, !mcsema_real_eip !109
  %438 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %438, i1* %CF_val, !mcsema_real_eip !109
  %439 = zext i32 %423 to i64, !mcsema_real_eip !109
  store i64 %439, i64* %RSI_val, !mcsema_real_eip !109
  %440 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %441 = add i64 %440, -104, !mcsema_real_eip !110
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !110
  %443 = load i64, i64* %442, !mcsema_real_eip !110
  store i64 %443, i64* %RCX_val, !mcsema_real_eip !110
  %444 = add i64 %443, 4, !mcsema_real_eip !111
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !111
  %446 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %447 = trunc i64 %446 to i32, !mcsema_real_eip !111
  %448 = bitcast i64* %445 to i32*
  store i32 %447, i32* %448, !mcsema_real_eip !111
  %449 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %450 = add i64 %449, -24, !mcsema_real_eip !112
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !112
  %452 = bitcast i64* %451 to i32*
  %453 = load i32, i32* %452, !mcsema_real_eip !112
  %454 = zext i32 %453 to i64, !mcsema_real_eip !112
  store i64 %454, i64* %RSI_val, !mcsema_real_eip !112
  %455 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %456 = add i64 %455, -56, !mcsema_real_eip !113
  %457 = inttoptr i64 %456 to i64*, !mcsema_real_eip !113
  %458 = load i64, i64* %457, !mcsema_real_eip !113
  store i64 %458, i64* %RCX_val, !mcsema_real_eip !113
  %459 = add i64 %458, 8, !mcsema_real_eip !114
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !114
  %461 = bitcast i64* %460 to i32*
  %462 = load i32, i32* %461, !mcsema_real_eip !114
  %463 = load i64, i64* %RSI_val, !mcsema_real_eip !114
  %464 = trunc i64 %463 to i32, !mcsema_real_eip !114
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %464, i32 %462)
  %465 = extractvalue { i32, i1 } %uadd79, 0
  %466 = xor i32 %465, %462, !mcsema_real_eip !114
  %467 = xor i32 %466, %464, !mcsema_real_eip !114
  %468 = and i32 %467, 16, !mcsema_real_eip !114
  %469 = icmp ne i32 %468, 0, !mcsema_real_eip !114
  store i1 %469, i1* %AF_val, !mcsema_real_eip !114
  %470 = icmp slt i32 %465, 0
  store i1 %470, i1* %SF_val, !mcsema_real_eip !114
  %471 = icmp eq i32 %465, 0, !mcsema_real_eip !114
  store i1 %471, i1* %ZF_val, !mcsema_real_eip !114
  %472 = xor i32 %462, -2147483648, !mcsema_real_eip !114
  %473 = xor i32 %472, %464, !mcsema_real_eip !114
  %474 = and i32 %466, %473, !mcsema_real_eip !114
  %475 = icmp slt i32 %474, 0
  store i1 %475, i1* %OF_val, !mcsema_real_eip !114
  %476 = trunc i32 %465 to i8, !mcsema_real_eip !114
  %477 = tail call i8 @llvm.ctpop.i8(i8 %476), !mcsema_real_eip !114
  %478 = and i8 %477, 1
  %479 = icmp eq i8 %478, 0
  store i1 %479, i1* %PF_val, !mcsema_real_eip !114
  %480 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %480, i1* %CF_val, !mcsema_real_eip !114
  %481 = zext i32 %465 to i64, !mcsema_real_eip !114
  store i64 %481, i64* %RSI_val, !mcsema_real_eip !114
  %482 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %483 = add i64 %482, -64, !mcsema_real_eip !115
  %484 = inttoptr i64 %483 to i64*, !mcsema_real_eip !115
  %485 = load i64, i64* %484, !mcsema_real_eip !115
  store i64 %485, i64* %RCX_val, !mcsema_real_eip !115
  %486 = add i64 %485, 8, !mcsema_real_eip !116
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !116
  %488 = bitcast i64* %487 to i32*
  %489 = load i32, i32* %488, !mcsema_real_eip !116
  %490 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %491 = trunc i64 %490 to i32, !mcsema_real_eip !116
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %491, i32 %489)
  %492 = extractvalue { i32, i1 } %uadd80, 0
  %493 = xor i32 %492, %489, !mcsema_real_eip !116
  %494 = xor i32 %493, %491, !mcsema_real_eip !116
  %495 = and i32 %494, 16, !mcsema_real_eip !116
  %496 = icmp ne i32 %495, 0, !mcsema_real_eip !116
  store i1 %496, i1* %AF_val, !mcsema_real_eip !116
  %497 = icmp slt i32 %492, 0
  store i1 %497, i1* %SF_val, !mcsema_real_eip !116
  %498 = icmp eq i32 %492, 0, !mcsema_real_eip !116
  store i1 %498, i1* %ZF_val, !mcsema_real_eip !116
  %499 = xor i32 %489, -2147483648, !mcsema_real_eip !116
  %500 = xor i32 %499, %491, !mcsema_real_eip !116
  %501 = and i32 %493, %500, !mcsema_real_eip !116
  %502 = icmp slt i32 %501, 0
  store i1 %502, i1* %OF_val, !mcsema_real_eip !116
  %503 = trunc i32 %492 to i8, !mcsema_real_eip !116
  %504 = tail call i8 @llvm.ctpop.i8(i8 %503), !mcsema_real_eip !116
  %505 = and i8 %504, 1
  %506 = icmp eq i8 %505, 0
  store i1 %506, i1* %PF_val, !mcsema_real_eip !116
  %507 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %507, i1* %CF_val, !mcsema_real_eip !116
  %508 = zext i32 %492 to i64, !mcsema_real_eip !116
  store i64 %508, i64* %RSI_val, !mcsema_real_eip !116
  %509 = load i64, i64* %RAX_val, !mcsema_real_eip !117
  %510 = add i64 %509, 8, !mcsema_real_eip !117
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !117
  %512 = bitcast i64* %511 to i32*
  %513 = load i32, i32* %512, !mcsema_real_eip !117
  %514 = zext i32 %513 to i64, !mcsema_real_eip !117
  store i64 %514, i64* %R8_val, !mcsema_real_eip !117
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %516 = add i64 %515, -88, !mcsema_real_eip !118
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !118
  %518 = load i64, i64* %517, !mcsema_real_eip !118
  store i64 %518, i64* %RCX_val, !mcsema_real_eip !118
  %519 = add i64 %518, 8, !mcsema_real_eip !119
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !119
  %521 = bitcast i64* %520 to i32*
  %522 = load i32, i32* %521, !mcsema_real_eip !119
  %523 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %524 = trunc i64 %523 to i32, !mcsema_real_eip !119
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %524, i32 %522)
  %525 = extractvalue { i32, i1 } %uadd81, 0
  %526 = xor i32 %525, %522, !mcsema_real_eip !119
  %527 = xor i32 %526, %524, !mcsema_real_eip !119
  %528 = and i32 %527, 16, !mcsema_real_eip !119
  %529 = icmp ne i32 %528, 0, !mcsema_real_eip !119
  store i1 %529, i1* %AF_val, !mcsema_real_eip !119
  %530 = icmp slt i32 %525, 0
  store i1 %530, i1* %SF_val, !mcsema_real_eip !119
  %531 = icmp eq i32 %525, 0, !mcsema_real_eip !119
  store i1 %531, i1* %ZF_val, !mcsema_real_eip !119
  %532 = xor i32 %522, -2147483648, !mcsema_real_eip !119
  %533 = xor i32 %532, %524, !mcsema_real_eip !119
  %534 = and i32 %526, %533, !mcsema_real_eip !119
  %535 = icmp slt i32 %534, 0
  store i1 %535, i1* %OF_val, !mcsema_real_eip !119
  %536 = trunc i32 %525 to i8, !mcsema_real_eip !119
  %537 = tail call i8 @llvm.ctpop.i8(i8 %536), !mcsema_real_eip !119
  %538 = and i8 %537, 1
  %539 = icmp eq i8 %538, 0
  store i1 %539, i1* %PF_val, !mcsema_real_eip !119
  %540 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %540, i1* %CF_val, !mcsema_real_eip !119
  %541 = zext i32 %525 to i64, !mcsema_real_eip !119
  store i64 %541, i64* %R8_val, !mcsema_real_eip !119
  %542 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %543 = add i64 %542, -96, !mcsema_real_eip !120
  %544 = inttoptr i64 %543 to i64*, !mcsema_real_eip !120
  %545 = load i64, i64* %544, !mcsema_real_eip !120
  store i64 %545, i64* %RCX_val, !mcsema_real_eip !120
  %546 = add i64 %545, 8, !mcsema_real_eip !121
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !121
  %548 = bitcast i64* %547 to i32*
  %549 = load i32, i32* %548, !mcsema_real_eip !121
  %550 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %551 = trunc i64 %550 to i32, !mcsema_real_eip !121
  %552 = add i32 %551, %549
  %553 = zext i32 %552 to i64, !mcsema_real_eip !121
  store i64 %553, i64* %R8_val, !mcsema_real_eip !121
  %554 = load i64, i64* %RSI_val, !mcsema_real_eip !122
  %555 = trunc i64 %554 to i32, !mcsema_real_eip !122
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %552, i32 %555)
  %556 = extractvalue { i32, i1 } %uadd83, 0
  %557 = xor i32 %556, %555, !mcsema_real_eip !122
  %558 = xor i32 %557, %552, !mcsema_real_eip !122
  %559 = and i32 %558, 16, !mcsema_real_eip !122
  %560 = icmp ne i32 %559, 0, !mcsema_real_eip !122
  store i1 %560, i1* %AF_val, !mcsema_real_eip !122
  %561 = icmp slt i32 %556, 0
  store i1 %561, i1* %SF_val, !mcsema_real_eip !122
  %562 = icmp eq i32 %556, 0, !mcsema_real_eip !122
  store i1 %562, i1* %ZF_val, !mcsema_real_eip !122
  %563 = xor i32 %552, -2147483648, !mcsema_real_eip !122
  %564 = xor i32 %563, %555, !mcsema_real_eip !122
  %565 = and i32 %557, %564, !mcsema_real_eip !122
  %566 = icmp slt i32 %565, 0
  store i1 %566, i1* %OF_val, !mcsema_real_eip !122
  %567 = trunc i32 %556 to i8, !mcsema_real_eip !122
  %568 = tail call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !122
  %569 = and i8 %568, 1
  %570 = icmp eq i8 %569, 0
  store i1 %570, i1* %PF_val, !mcsema_real_eip !122
  %571 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %571, i1* %CF_val, !mcsema_real_eip !122
  %572 = zext i32 %556 to i64, !mcsema_real_eip !122
  store i64 %572, i64* %RSI_val, !mcsema_real_eip !122
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %574 = add i64 %573, -104, !mcsema_real_eip !123
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !123
  %576 = load i64, i64* %575, !mcsema_real_eip !123
  store i64 %576, i64* %RCX_val, !mcsema_real_eip !123
  %577 = add i64 %576, 8, !mcsema_real_eip !124
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !124
  %579 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %580 = trunc i64 %579 to i32, !mcsema_real_eip !124
  %581 = bitcast i64* %578 to i32*
  store i32 %580, i32* %581, !mcsema_real_eip !124
  %582 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %583 = add i64 %582, -104, !mcsema_real_eip !125
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !125
  %585 = load i64, i64* %584, !mcsema_real_eip !125
  store i64 %585, i64* %RAX_val, !mcsema_real_eip !125
  %586 = load i64, i64* %RSP_val, !mcsema_real_eip !126
  %uadd84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %586, i64 96)
  %587 = extractvalue { i64, i1 } %uadd84, 0
  %588 = xor i64 %587, %586, !mcsema_real_eip !126
  %589 = and i64 %588, 16, !mcsema_real_eip !126
  %590 = icmp ne i64 %589, 0, !mcsema_real_eip !126
  store i1 %590, i1* %AF_val, !mcsema_real_eip !126
  %591 = icmp slt i64 %587, 0
  store i1 %591, i1* %SF_val, !mcsema_real_eip !126
  %592 = icmp eq i64 %587, 0, !mcsema_real_eip !126
  store i1 %592, i1* %ZF_val, !mcsema_real_eip !126
  %593 = xor i64 %586, -9223372036854775808, !mcsema_real_eip !126
  %594 = and i64 %588, %593, !mcsema_real_eip !126
  %595 = icmp slt i64 %594, 0
  store i1 %595, i1* %OF_val, !mcsema_real_eip !126
  %596 = trunc i64 %587 to i8, !mcsema_real_eip !126
  %597 = tail call i8 @llvm.ctpop.i8(i8 %596), !mcsema_real_eip !126
  %598 = and i8 %597, 1
  %599 = icmp eq i8 %598, 0
  store i1 %599, i1* %PF_val, !mcsema_real_eip !126
  %600 = extractvalue { i64, i1 } %uadd84, 1
  store i1 %600, i1* %CF_val, !mcsema_real_eip !126
  store i64 %587, i64* %RSP_val, !mcsema_real_eip !126
  %601 = inttoptr i64 %587 to i64*, !mcsema_real_eip !127
  %602 = load i64, i64* %601, !mcsema_real_eip !127
  store i64 %602, i64* %RBX_val, !mcsema_real_eip !127
  %603 = add i64 %587, 8, !mcsema_real_eip !127
  store i64 %603, i64* %RSP_val, !mcsema_real_eip !127
  %604 = inttoptr i64 %603 to i64*, !mcsema_real_eip !128
  %605 = load i64, i64* %604, !mcsema_real_eip !128
  store i64 %605, i64* %R14_val, !mcsema_real_eip !128
  %606 = add i64 %587, 16, !mcsema_real_eip !128
  store i64 %606, i64* %RSP_val, !mcsema_real_eip !128
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !129
  %608 = load i64, i64* %607, !mcsema_real_eip !129
  store i64 %608, i64* %RBP_val, !mcsema_real_eip !129
  %609 = add i64 %587, 32, !mcsema_real_eip !130
  store i64 %609, i64* %RSP_val, !mcsema_real_eip !130
  %610 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %610, i64* %RAX, !mcsema_real_eip !130
  %611 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %611, i64* %RBX, !mcsema_real_eip !130
  %612 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %612, i64* %RCX, !mcsema_real_eip !130
  %613 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %613, i64* %RDX, !mcsema_real_eip !130
  %614 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %614, i64* %RSI, !mcsema_real_eip !130
  %615 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %615, i64* %RDI, !mcsema_real_eip !130
  %616 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %616, i64* %RSP, !mcsema_real_eip !130
  %617 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %617, i64* %RBP, !mcsema_real_eip !130
  %618 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %618, i64* %R8, !mcsema_real_eip !130
  %619 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %619, i64* %R9, !mcsema_real_eip !130
  %620 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %620, i64* %R10, !mcsema_real_eip !130
  %621 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %621, i64* %R11, !mcsema_real_eip !130
  %622 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %622, i64* %R12, !mcsema_real_eip !130
  %623 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %623, i64* %R13, !mcsema_real_eip !130
  %624 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %624, i64* %R14, !mcsema_real_eip !130
  %625 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %625, i64* %R15, !mcsema_real_eip !130
  %626 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %626, i64* %RIP, !mcsema_real_eip !130
  %627 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %627, i1* %CF, align 1, !mcsema_real_eip !130
  %628 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %628, i1* %PF, align 1, !mcsema_real_eip !130
  %629 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %629, i1* %AF, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %630, i1* %ZF, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %631, i1* %SF, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %632, i1* %OF, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %633, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %634 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %635 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %635, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %636 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %636, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %637 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %637, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %638 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %638, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %639 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %639, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %640 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %640, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %641 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %641, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %642 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %642, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %643 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %643, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %644 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %644, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %645 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %645, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %646 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %646, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %647 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %647, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %648 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %648, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %649 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %649, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %650 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %650, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %651 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %651, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %652 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %652, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %653 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %653, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %654 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %654, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %655 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %655, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %656 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %656, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %657 = load i64, i64* %53, align 4
  store i64 %657, i64* %52, align 4
  %658 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %658, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %659 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %659, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %660 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %660, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %661 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %661, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %662 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %662, i128* %XMM0, align 1, !mcsema_real_eip !130
  %663 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %663, i128* %XMM1, align 1, !mcsema_real_eip !130
  %664 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %664, i128* %XMM2, align 1, !mcsema_real_eip !130
  %665 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %665, i128* %XMM3, align 1, !mcsema_real_eip !130
  %666 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %666, i128* %XMM4, align 1, !mcsema_real_eip !130
  %667 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %667, i128* %XMM5, align 1, !mcsema_real_eip !130
  %668 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %668, i128* %XMM6, align 1, !mcsema_real_eip !130
  %669 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %669, i128* %XMM7, align 1, !mcsema_real_eip !130
  %670 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %670, i128* %XMM8, align 1, !mcsema_real_eip !130
  %671 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %671, i128* %XMM9, align 1, !mcsema_real_eip !130
  %672 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %672, i128* %XMM10, align 1, !mcsema_real_eip !130
  %673 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %673, i128* %XMM11, align 1, !mcsema_real_eip !130
  %674 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %674, i128* %XMM12, align 1, !mcsema_real_eip !130
  %675 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %675, i128* %XMM13, align 1, !mcsema_real_eip !130
  %676 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %676, i128* %XMM14, align 1, !mcsema_real_eip !130
  %677 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %677, i128* %XMM15, align 1, !mcsema_real_eip !130
  %678 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %678, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %679 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %679, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

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
  tail call x86_64_sysvcc void @sub_100(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 120
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 120
  %R15_val = alloca i64, !mcsema_real_eip !58
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !58
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !58
  %XMM15_val = alloca i128, !mcsema_real_eip !58
  %XMM14_val = alloca i128, !mcsema_real_eip !58
  %XMM13_val = alloca i128, !mcsema_real_eip !58
  %XMM12_val = alloca i128, !mcsema_real_eip !58
  %XMM11_val = alloca i128, !mcsema_real_eip !58
  %XMM10_val = alloca i128, !mcsema_real_eip !58
  %XMM9_val = alloca i128, !mcsema_real_eip !58
  %XMM8_val = alloca i128, !mcsema_real_eip !58
  %XMM7_val = alloca i128, !mcsema_real_eip !58
  %XMM6_val = alloca i128, !mcsema_real_eip !58
  %XMM5_val = alloca i128, !mcsema_real_eip !58
  %XMM4_val = alloca i128, !mcsema_real_eip !58
  %XMM3_val = alloca i128, !mcsema_real_eip !58
  %XMM2_val = alloca i128, !mcsema_real_eip !58
  %XMM1_val = alloca i128, !mcsema_real_eip !58
  %XMM0_val = alloca i128, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !58
  %FPU_IM_val = alloca i1, !mcsema_real_eip !58
  %FPU_DM_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !58
  %FPU_OM_val = alloca i1, !mcsema_real_eip !58
  %FPU_UM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PC_val = alloca i2, !mcsema_real_eip !58
  %FPU_RC_val = alloca i2, !mcsema_real_eip !58
  %FPU_X_val = alloca i1, !mcsema_real_eip !58
  %FPU_IE_val = alloca i1, !mcsema_real_eip !58
  %FPU_DE_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !58
  %FPU_OE_val = alloca i1, !mcsema_real_eip !58
  %FPU_UE_val = alloca i1, !mcsema_real_eip !58
  %FPU_PE_val = alloca i1, !mcsema_real_eip !58
  %FPU_SF_val = alloca i1, !mcsema_real_eip !58
  %FPU_ES_val = alloca i1, !mcsema_real_eip !58
  %FPU_C0_val = alloca i1, !mcsema_real_eip !58
  %FPU_C1_val = alloca i1, !mcsema_real_eip !58
  %FPU_C2_val = alloca i1, !mcsema_real_eip !58
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !58
  %FPU_C3_val = alloca i1, !mcsema_real_eip !58
  %FPU_B_val = alloca i1, !mcsema_real_eip !58
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !58
  %DF_val = alloca i1, !mcsema_real_eip !58
  %OF_val = alloca i1, !mcsema_real_eip !58
  %SF_val = alloca i1, !mcsema_real_eip !58
  %CF_val = alloca i1, !mcsema_real_eip !58
  %AF_val = alloca i1, !mcsema_real_eip !58
  %PF_val = alloca i1, !mcsema_real_eip !58
  %ZF_val = alloca i1, !mcsema_real_eip !58
  %RIP_val = alloca i64, !mcsema_real_eip !58
  %R14_val = alloca i64, !mcsema_real_eip !58
  %R13_val = alloca i64, !mcsema_real_eip !58
  %R12_val = alloca i64, !mcsema_real_eip !58
  %R11_val = alloca i64, !mcsema_real_eip !58
  %R10_val = alloca i64, !mcsema_real_eip !58
  %R9_val = alloca i64, !mcsema_real_eip !58
  %R8_val = alloca i64, !mcsema_real_eip !58
  %RSP_val = alloca i64, !mcsema_real_eip !58
  %RBP_val = alloca i64, !mcsema_real_eip !58
  %RDI_val = alloca i64, !mcsema_real_eip !58
  %RSI_val = alloca i64, !mcsema_real_eip !58
  %RDX_val = alloca i64, !mcsema_real_eip !58
  %RCX_val = alloca i64, !mcsema_real_eip !58
  %RBX_val = alloca i64, !mcsema_real_eip !58
  %RAX_val = alloca i64, !mcsema_real_eip !58
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !58
  %1 = load i64, i64* %RAX, !mcsema_real_eip !58
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !58
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !58
  %2 = load i64, i64* %RBX, !mcsema_real_eip !58
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !58
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !58
  %3 = load i64, i64* %RCX, !mcsema_real_eip !58
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !58
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !58
  %4 = load i64, i64* %RDX, !mcsema_real_eip !58
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !58
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !58
  %5 = load i64, i64* %RSI, !mcsema_real_eip !58
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !58
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !58
  %6 = load i64, i64* %RDI, !mcsema_real_eip !58
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !58
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !58
  %7 = load i64, i64* %RSP, !mcsema_real_eip !58
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !58
  %8 = load i64, i64* %RBP, !mcsema_real_eip !58
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !58
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !58
  %9 = load i64, i64* %R8, !mcsema_real_eip !58
  store i64 %9, i64* %R8_val, !mcsema_real_eip !58
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !58
  %10 = load i64, i64* %R9, !mcsema_real_eip !58
  store i64 %10, i64* %R9_val, !mcsema_real_eip !58
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !58
  %11 = load i64, i64* %R10, !mcsema_real_eip !58
  store i64 %11, i64* %R10_val, !mcsema_real_eip !58
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !58
  %12 = load i64, i64* %R11, !mcsema_real_eip !58
  store i64 %12, i64* %R11_val, !mcsema_real_eip !58
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !58
  %13 = load i64, i64* %R12, !mcsema_real_eip !58
  store i64 %13, i64* %R12_val, !mcsema_real_eip !58
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !58
  %14 = load i64, i64* %R13, !mcsema_real_eip !58
  store i64 %14, i64* %R13_val, !mcsema_real_eip !58
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !58
  %15 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %15, i64* %R14_val, !mcsema_real_eip !58
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !58
  %16 = load i64, i64* %R15, !mcsema_real_eip !58
  store i64 %16, i64* %R15_val, !mcsema_real_eip !58
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !58
  %17 = load i64, i64* %RIP, !mcsema_real_eip !58
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !58
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !58
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %CF_val, !mcsema_real_eip !58
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !58
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %PF_val, !mcsema_real_eip !58
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !58
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %AF_val, !mcsema_real_eip !58
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !58
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !58
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !58
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %SF_val, !mcsema_real_eip !58
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !58
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %OF_val, !mcsema_real_eip !58
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !58
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %DF_val, !mcsema_real_eip !58
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !58
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !58
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !58
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !58
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !58
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !58
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !58
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !58
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !58
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !58
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !58
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !58
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !58
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !58
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !58
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !58
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !58
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !58
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !58
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !58
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !58
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !58
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !58
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !58
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !58
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !58
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !58
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !58
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !58
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !58
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !58
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !58
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !58
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !58
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !58
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !58
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !58
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !58
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !58
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !58
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !58
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !58
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !58
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !58
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !58
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !58
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_head_p2i_ = ptrtoint i64* %52 to i64
  %_offset_above_rbp_ = sub i64 %_head_p2i_, %_local_stack_end_
  %_address_in_parent_stack_ = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_
  %_cond0_ = icmp ugt i64 %_head_p2i_, %_local_stack_end_
  %_cond1_ = icmp ugt i64 %_head_p2i_, %_parent_stack_end_ptr_
  %_cond2_ = icmp ult i64 %_head_p2i_, %_parent_stack_start_ptr_
  %_cond3_ = or i1 %_cond1_, %_cond2_
  %_cond4_ = icmp ule i64 %_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond5_ = and i1 %_cond0_, %_cond3_
  %_cond6_ = and i1 %_cond5_, %_cond4_
  br i1 %_cond6_, label %54, label %55

; <label>:54:                                     ; preds = %entry
  %_address_in_parent_stack_1 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_
  br label %55

; <label>:55:                                     ; preds = %entry, %54
  %56 = phi i64 [ %_head_p2i_, %entry ], [ %_address_in_parent_stack_1, %54 ]
  %_address_ptr_in_parent_stack_ = inttoptr i64 %56 to i64*
  %_new_load_ = load i64, i64* %_address_ptr_in_parent_stack_
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !58
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !58
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !58
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !58
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !58
  store i64 %79, i64* %82, !mcsema_real_eip !58
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !59
  %83 = load i64, i64* %R14_val, !mcsema_real_eip !60
  %84 = add i64 %80, -16
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !60
  store i64 %83, i64* %85, !mcsema_real_eip !60
  %86 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  %87 = add i64 %80, -24
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !61
  store i64 %86, i64* %88, !mcsema_real_eip !61
  %89 = add i64 %80, -120
  %90 = xor i64 %89, %87, !mcsema_real_eip !62
  %91 = and i64 %90, 16, !mcsema_real_eip !62
  %92 = icmp ne i64 %91, 0, !mcsema_real_eip !62
  store i1 %92, i1* %AF_val, !mcsema_real_eip !62
  %93 = trunc i64 %89 to i8, !mcsema_real_eip !62
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !62
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  store i1 %96, i1* %PF_val, !mcsema_real_eip !62
  %97 = icmp eq i64 %89, 0, !mcsema_real_eip !62
  store i1 %97, i1* %ZF_val, !mcsema_real_eip !62
  %98 = icmp slt i64 %89, 0
  store i1 %98, i1* %SF_val, !mcsema_real_eip !62
  %99 = icmp ult i64 %87, 96, !mcsema_real_eip !62
  store i1 %99, i1* %CF_val, !mcsema_real_eip !62
  %100 = and i64 %90, %87, !mcsema_real_eip !62
  %101 = icmp slt i64 %100, 0
  store i1 %101, i1* %OF_val, !mcsema_real_eip !62
  store i64 %89, i64* %RSP_val, !mcsema_real_eip !62
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %103 = add i64 %102, 48, !mcsema_real_eip !63
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !63
  %_head_p2i_2 = ptrtoint i64* %104 to i64
  %_offset_above_rbp_3 = sub i64 %_head_p2i_2, %_local_stack_end_
  %_address_in_parent_stack_4 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  %_cond0_5 = icmp ugt i64 %_head_p2i_2, %_local_stack_end_
  %_cond1_6 = icmp ugt i64 %_head_p2i_2, %_parent_stack_end_ptr_
  %_cond2_7 = icmp ult i64 %_head_p2i_2, %_parent_stack_start_ptr_
  %_cond3_8 = or i1 %_cond1_6, %_cond2_7
  %_cond4_9 = icmp ule i64 %_address_in_parent_stack_4, %_parent_stack_end_ptr_
  %_cond5_10 = and i1 %_cond0_5, %_cond3_8
  %_cond6_11 = and i1 %_cond5_10, %_cond4_9
  br i1 %_cond6_11, label %105, label %106

; <label>:105:                                    ; preds = %55
  %_address_in_parent_stack_12 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  br label %106

; <label>:106:                                    ; preds = %55, %105
  %107 = phi i64 [ %_head_p2i_2, %55 ], [ %_address_in_parent_stack_12, %105 ]
  %_address_ptr_in_parent_stack_13 = inttoptr i64 %107 to i64*
  %_new_load_14 = load i64, i64* %_address_ptr_in_parent_stack_13
  store i64 %_new_load_14, i64* %RAX_val, !mcsema_real_eip !63
  %108 = add i64 %102, 40, !mcsema_real_eip !64
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !64
  %_head_p2i_15 = ptrtoint i64* %109 to i64
  %_offset_above_rbp_16 = sub i64 %_head_p2i_15, %_local_stack_end_
  %_address_in_parent_stack_17 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  %_cond0_18 = icmp ugt i64 %_head_p2i_15, %_local_stack_end_
  %_cond1_19 = icmp ugt i64 %_head_p2i_15, %_parent_stack_end_ptr_
  %_cond2_20 = icmp ult i64 %_head_p2i_15, %_parent_stack_start_ptr_
  %_cond3_21 = or i1 %_cond1_19, %_cond2_20
  %_cond4_22 = icmp ule i64 %_address_in_parent_stack_17, %_parent_stack_end_ptr_
  %_cond5_23 = and i1 %_cond0_18, %_cond3_21
  %_cond6_24 = and i1 %_cond5_23, %_cond4_22
  br i1 %_cond6_24, label %110, label %111

; <label>:110:                                    ; preds = %106
  %_address_in_parent_stack_25 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  br label %111

; <label>:111:                                    ; preds = %106, %110
  %112 = phi i64 [ %_head_p2i_15, %106 ], [ %_address_in_parent_stack_25, %110 ]
  %_address_ptr_in_parent_stack_26 = inttoptr i64 %112 to i64*
  %_new_load_27 = load i64, i64* %_address_ptr_in_parent_stack_26
  store i64 %_new_load_27, i64* %R10_val, !mcsema_real_eip !64
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %114 = add i64 %113, 24, !mcsema_real_eip !65
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !65
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !65
  store i64 %116, i64* %R11_val, !mcsema_real_eip !65
  %117 = add i64 %113, 16, !mcsema_real_eip !66
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !66
  %119 = bitcast i64* %118 to i32*
  %_head_p2i_28 = ptrtoint i32* %119 to i64
  %_offset_above_rbp_29 = sub i64 %_head_p2i_28, %_local_stack_end_
  %_address_in_parent_stack_30 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  %_cond0_31 = icmp ugt i64 %_head_p2i_28, %_local_stack_end_
  %_cond1_32 = icmp ugt i64 %_head_p2i_28, %_parent_stack_end_ptr_
  %_cond2_33 = icmp ult i64 %_head_p2i_28, %_parent_stack_start_ptr_
  %_cond3_34 = or i1 %_cond1_32, %_cond2_33
  %_cond4_35 = icmp ule i64 %_address_in_parent_stack_30, %_parent_stack_end_ptr_
  %_cond5_36 = and i1 %_cond0_31, %_cond3_34
  %_cond6_37 = and i1 %_cond5_36, %_cond4_35
  br i1 %_cond6_37, label %120, label %121

; <label>:120:                                    ; preds = %111
  %_address_in_parent_stack_38 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  br label %121

; <label>:121:                                    ; preds = %111, %120
  %122 = phi i64 [ %_head_p2i_28, %111 ], [ %_address_in_parent_stack_38, %120 ]
  %_address_ptr_in_parent_stack_39 = inttoptr i64 %122 to i32*
  %_new_load_40 = load i32, i32* %_address_ptr_in_parent_stack_39
  %123 = zext i32 %_new_load_40 to i64, !mcsema_real_eip !66
  store i64 %123, i64* %RBX_val, !mcsema_real_eip !66
  store i64 12, i64* %R14_val, !mcsema_real_eip !67
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %125 = add i64 %124, -48, !mcsema_real_eip !68
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !68
  %127 = load i64, i64* %RDI_val, !mcsema_real_eip !68
  store i64 %127, i64* %126, !mcsema_real_eip !68
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %129 = add i64 %128, -40, !mcsema_real_eip !69
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !69
  %131 = load i64, i64* %RSI_val, !mcsema_real_eip !69
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !69
  %133 = bitcast i64* %130 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !69
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %135 = add i64 %134, -48, !mcsema_real_eip !70
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !70
  %_head_p2i_41 = ptrtoint i64* %136 to i64
  %_offset_above_rbp_42 = sub i64 %_head_p2i_41, %_local_stack_end_
  %_address_in_parent_stack_43 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  %_cond0_44 = icmp ugt i64 %_head_p2i_41, %_local_stack_end_
  %_cond1_45 = icmp ugt i64 %_head_p2i_41, %_parent_stack_end_ptr_
  %_cond2_46 = icmp ult i64 %_head_p2i_41, %_parent_stack_start_ptr_
  %_cond3_47 = or i1 %_cond1_45, %_cond2_46
  %_cond4_48 = icmp ule i64 %_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond5_49 = and i1 %_cond0_44, %_cond3_47
  %_cond6_50 = and i1 %_cond5_49, %_cond4_48
  br i1 %_cond6_50, label %137, label %138

; <label>:137:                                    ; preds = %121
  %_address_in_parent_stack_51 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  br label %138

; <label>:138:                                    ; preds = %121, %137
  %139 = phi i64 [ %_head_p2i_41, %121 ], [ %_address_in_parent_stack_51, %137 ]
  %_address_ptr_in_parent_stack_52 = inttoptr i64 %139 to i64*
  %_new_load_53 = load i64, i64* %_address_ptr_in_parent_stack_52
  store i64 %_new_load_53, i64* %RDI_val, !mcsema_real_eip !70
  %140 = add i64 %134, -32, !mcsema_real_eip !71
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !71
  store i64 %_new_load_53, i64* %141, !mcsema_real_eip !71
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %143 = add i64 %142, -40, !mcsema_real_eip !72
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !72
  %145 = bitcast i64* %144 to i32*
  %_head_p2i_54 = ptrtoint i32* %145 to i64
  %_offset_above_rbp_55 = sub i64 %_head_p2i_54, %_local_stack_end_
  %_address_in_parent_stack_56 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  %_cond0_57 = icmp ugt i64 %_head_p2i_54, %_local_stack_end_
  %_cond1_58 = icmp ugt i64 %_head_p2i_54, %_parent_stack_end_ptr_
  %_cond2_59 = icmp ult i64 %_head_p2i_54, %_parent_stack_start_ptr_
  %_cond3_60 = or i1 %_cond1_58, %_cond2_59
  %_cond4_61 = icmp ule i64 %_address_in_parent_stack_56, %_parent_stack_end_ptr_
  %_cond5_62 = and i1 %_cond0_57, %_cond3_60
  %_cond6_63 = and i1 %_cond5_62, %_cond4_61
  br i1 %_cond6_63, label %146, label %147

; <label>:146:                                    ; preds = %138
  %_address_in_parent_stack_64 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  br label %147

; <label>:147:                                    ; preds = %138, %146
  %148 = phi i64 [ %_head_p2i_54, %138 ], [ %_address_in_parent_stack_64, %146 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %148 to i32*
  %_new_load_66 = load i32, i32* %_address_ptr_in_parent_stack_65
  %149 = zext i32 %_new_load_66 to i64, !mcsema_real_eip !72
  store i64 %149, i64* %RSI_val, !mcsema_real_eip !72
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %151 = add i64 %150, -24, !mcsema_real_eip !73
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !73
  %153 = bitcast i64* %152 to i32*
  store i32 %_new_load_66, i32* %153, !mcsema_real_eip !73
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %155 = add i64 %154, -56, !mcsema_real_eip !74
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !74
  %157 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %157, i64* %156, !mcsema_real_eip !74
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %159 = add i64 %158, -64, !mcsema_real_eip !75
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !75
  %161 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %161, i64* %160, !mcsema_real_eip !75
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %163 = add i64 %162, -68, !mcsema_real_eip !76
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !76
  %165 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %166 = trunc i64 %165 to i32, !mcsema_real_eip !76
  %167 = bitcast i64* %164 to i32*
  store i32 %166, i32* %167, !mcsema_real_eip !76
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %169 = add i64 %168, -72, !mcsema_real_eip !77
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !77
  %171 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %172 = trunc i64 %171 to i32, !mcsema_real_eip !77
  %173 = bitcast i64* %170 to i32*
  store i32 %172, i32* %173, !mcsema_real_eip !77
  %174 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %175 = add i64 %174, -76, !mcsema_real_eip !78
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !78
  %177 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %178 = trunc i64 %177 to i32, !mcsema_real_eip !78
  %179 = bitcast i64* %176 to i32*
  store i32 %178, i32* %179, !mcsema_real_eip !78
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %181 = add i64 %180, -88, !mcsema_real_eip !79
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !79
  %183 = load i64, i64* %R10_val, !mcsema_real_eip !79
  store i64 %183, i64* %182, !mcsema_real_eip !79
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %185 = add i64 %184, -96, !mcsema_real_eip !80
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !80
  %187 = load i64, i64* %RAX_val, !mcsema_real_eip !80
  store i64 %187, i64* %186, !mcsema_real_eip !80
  %188 = load i64, i64* %R14_val, !mcsema_real_eip !81
  store i64 %188, i64* %RDI_val, !mcsema_real_eip !81
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %190 = add i64 %189, -112, !mcsema_real_eip !82
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !82
  %192 = load i64, i64* %R11_val, !mcsema_real_eip !82
  store i64 %192, i64* %191, !mcsema_real_eip !82
  %193 = load i64, i64* %RDI_val, !mcsema_real_eip !83
  %194 = tail call x86_64_sysvcc i64 @malloc(i64 %193), !mcsema_real_eip !83
  store i64 %194, i64* %RAX_val, !mcsema_real_eip !83
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %196 = add i64 %195, -104, !mcsema_real_eip !84
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !84
  store i64 %194, i64* %197, !mcsema_real_eip !84
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %199 = add i64 %198, -32, !mcsema_real_eip !85
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !85
  %201 = bitcast i64* %200 to i32*
  %_head_p2i_67 = ptrtoint i32* %201 to i64
  %_offset_above_rbp_68 = sub i64 %_head_p2i_67, %_local_stack_end_
  %_address_in_parent_stack_69 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  %_cond0_70 = icmp ugt i64 %_head_p2i_67, %_local_stack_end_
  %_cond1_71 = icmp ugt i64 %_head_p2i_67, %_parent_stack_end_ptr_
  %_cond2_72 = icmp ult i64 %_head_p2i_67, %_parent_stack_start_ptr_
  %_cond3_73 = or i1 %_cond1_71, %_cond2_72
  %_cond4_74 = icmp ule i64 %_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond5_75 = and i1 %_cond0_70, %_cond3_73
  %_cond6_76 = and i1 %_cond5_75, %_cond4_74
  br i1 %_cond6_76, label %202, label %203

; <label>:202:                                    ; preds = %147
  %_address_in_parent_stack_77 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  br label %203

; <label>:203:                                    ; preds = %147, %202
  %204 = phi i64 [ %_head_p2i_67, %147 ], [ %_address_in_parent_stack_77, %202 ]
  %_address_ptr_in_parent_stack_78 = inttoptr i64 %204 to i32*
  %_new_load_79 = load i32, i32* %_address_ptr_in_parent_stack_78
  %205 = zext i32 %_new_load_79 to i64, !mcsema_real_eip !85
  store i64 %205, i64* %RSI_val, !mcsema_real_eip !85
  %206 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %207 = add i64 %206, -56, !mcsema_real_eip !86
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !86
  %_head_p2i_80 = ptrtoint i64* %208 to i64
  %_offset_above_rbp_81 = sub i64 %_head_p2i_80, %_local_stack_end_
  %_address_in_parent_stack_82 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  %_cond0_83 = icmp ugt i64 %_head_p2i_80, %_local_stack_end_
  %_cond1_84 = icmp ugt i64 %_head_p2i_80, %_parent_stack_end_ptr_
  %_cond2_85 = icmp ult i64 %_head_p2i_80, %_parent_stack_start_ptr_
  %_cond3_86 = or i1 %_cond1_84, %_cond2_85
  %_cond4_87 = icmp ule i64 %_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond5_88 = and i1 %_cond0_83, %_cond3_86
  %_cond6_89 = and i1 %_cond5_88, %_cond4_87
  br i1 %_cond6_89, label %209, label %210

; <label>:209:                                    ; preds = %203
  %_address_in_parent_stack_90 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  br label %210

; <label>:210:                                    ; preds = %203, %209
  %211 = phi i64 [ %_head_p2i_80, %203 ], [ %_address_in_parent_stack_90, %209 ]
  %_address_ptr_in_parent_stack_91 = inttoptr i64 %211 to i64*
  %_new_load_92 = load i64, i64* %_address_ptr_in_parent_stack_91
  store i64 %_new_load_92, i64* %RAX_val, !mcsema_real_eip !86
  %212 = inttoptr i64 %_new_load_92 to i64*, !mcsema_real_eip !87
  %213 = bitcast i64* %212 to i32*
  %_head_p2i_93 = ptrtoint i32* %213 to i64
  %_offset_above_rbp_94 = sub i64 %_head_p2i_93, %_local_stack_end_
  %_address_in_parent_stack_95 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  %_cond0_96 = icmp ugt i64 %_head_p2i_93, %_local_stack_end_
  %_cond1_97 = icmp ugt i64 %_head_p2i_93, %_parent_stack_end_ptr_
  %_cond2_98 = icmp ult i64 %_head_p2i_93, %_parent_stack_start_ptr_
  %_cond3_99 = or i1 %_cond1_97, %_cond2_98
  %_cond4_100 = icmp ule i64 %_address_in_parent_stack_95, %_parent_stack_end_ptr_
  %_cond5_101 = and i1 %_cond0_96, %_cond3_99
  %_cond6_102 = and i1 %_cond5_101, %_cond4_100
  br i1 %_cond6_102, label %214, label %215

; <label>:214:                                    ; preds = %210
  %_address_in_parent_stack_103 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  br label %215

; <label>:215:                                    ; preds = %210, %214
  %216 = phi i64 [ %_head_p2i_93, %210 ], [ %_address_in_parent_stack_103, %214 ]
  %_address_ptr_in_parent_stack_104 = inttoptr i64 %216 to i32*
  %_new_load_105 = load i32, i32* %_address_ptr_in_parent_stack_104
  %217 = load i64, i64* %RSI_val, !mcsema_real_eip !87
  %218 = trunc i64 %217 to i32, !mcsema_real_eip !87
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 %_new_load_105)
  %219 = extractvalue { i32, i1 } %uadd, 0
  %220 = xor i32 %219, %_new_load_105, !mcsema_real_eip !87
  %221 = xor i32 %220, %218, !mcsema_real_eip !87
  %222 = and i32 %221, 16, !mcsema_real_eip !87
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !87
  store i1 %223, i1* %AF_val, !mcsema_real_eip !87
  %224 = icmp slt i32 %219, 0
  store i1 %224, i1* %SF_val, !mcsema_real_eip !87
  %225 = icmp eq i32 %219, 0, !mcsema_real_eip !87
  store i1 %225, i1* %ZF_val, !mcsema_real_eip !87
  %226 = xor i32 %_new_load_105, -2147483648, !mcsema_real_eip !87
  %227 = xor i32 %226, %218, !mcsema_real_eip !87
  %228 = and i32 %220, %227, !mcsema_real_eip !87
  %229 = icmp slt i32 %228, 0
  store i1 %229, i1* %OF_val, !mcsema_real_eip !87
  %230 = trunc i32 %219 to i8, !mcsema_real_eip !87
  %231 = tail call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !87
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  store i1 %233, i1* %PF_val, !mcsema_real_eip !87
  %234 = extractvalue { i32, i1 } %uadd, 1
  store i1 %234, i1* %CF_val, !mcsema_real_eip !87
  %235 = zext i32 %219 to i64, !mcsema_real_eip !87
  store i64 %235, i64* %RSI_val, !mcsema_real_eip !87
  %236 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %237 = add i64 %236, -64, !mcsema_real_eip !88
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !88
  %_head_p2i_106 = ptrtoint i64* %238 to i64
  %_offset_above_rbp_107 = sub i64 %_head_p2i_106, %_local_stack_end_
  %_address_in_parent_stack_108 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  %_cond0_109 = icmp ugt i64 %_head_p2i_106, %_local_stack_end_
  %_cond1_110 = icmp ugt i64 %_head_p2i_106, %_parent_stack_end_ptr_
  %_cond2_111 = icmp ult i64 %_head_p2i_106, %_parent_stack_start_ptr_
  %_cond3_112 = or i1 %_cond1_110, %_cond2_111
  %_cond4_113 = icmp ule i64 %_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond5_114 = and i1 %_cond0_109, %_cond3_112
  %_cond6_115 = and i1 %_cond5_114, %_cond4_113
  br i1 %_cond6_115, label %239, label %240

; <label>:239:                                    ; preds = %215
  %_address_in_parent_stack_116 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  br label %240

; <label>:240:                                    ; preds = %215, %239
  %241 = phi i64 [ %_head_p2i_106, %215 ], [ %_address_in_parent_stack_116, %239 ]
  %_address_ptr_in_parent_stack_117 = inttoptr i64 %241 to i64*
  %_new_load_118 = load i64, i64* %_address_ptr_in_parent_stack_117
  store i64 %_new_load_118, i64* %RAX_val, !mcsema_real_eip !88
  %242 = inttoptr i64 %_new_load_118 to i64*, !mcsema_real_eip !89
  %243 = bitcast i64* %242 to i32*
  %_head_p2i_119 = ptrtoint i32* %243 to i64
  %_offset_above_rbp_120 = sub i64 %_head_p2i_119, %_local_stack_end_
  %_address_in_parent_stack_121 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  %_cond0_122 = icmp ugt i64 %_head_p2i_119, %_local_stack_end_
  %_cond1_123 = icmp ugt i64 %_head_p2i_119, %_parent_stack_end_ptr_
  %_cond2_124 = icmp ult i64 %_head_p2i_119, %_parent_stack_start_ptr_
  %_cond3_125 = or i1 %_cond1_123, %_cond2_124
  %_cond4_126 = icmp ule i64 %_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond5_127 = and i1 %_cond0_122, %_cond3_125
  %_cond6_128 = and i1 %_cond5_127, %_cond4_126
  br i1 %_cond6_128, label %244, label %245

; <label>:244:                                    ; preds = %240
  %_address_in_parent_stack_129 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  br label %245

; <label>:245:                                    ; preds = %240, %244
  %246 = phi i64 [ %_head_p2i_119, %240 ], [ %_address_in_parent_stack_129, %244 ]
  %_address_ptr_in_parent_stack_130 = inttoptr i64 %246 to i32*
  %_new_load_131 = load i32, i32* %_address_ptr_in_parent_stack_130
  %247 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %248 = trunc i64 %247 to i32, !mcsema_real_eip !89
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %_new_load_131)
  %249 = extractvalue { i32, i1 } %uadd70, 0
  %250 = xor i32 %249, %_new_load_131, !mcsema_real_eip !89
  %251 = xor i32 %250, %248, !mcsema_real_eip !89
  %252 = and i32 %251, 16, !mcsema_real_eip !89
  %253 = icmp ne i32 %252, 0, !mcsema_real_eip !89
  store i1 %253, i1* %AF_val, !mcsema_real_eip !89
  %254 = icmp slt i32 %249, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !89
  %255 = icmp eq i32 %249, 0, !mcsema_real_eip !89
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !89
  %256 = xor i32 %_new_load_131, -2147483648, !mcsema_real_eip !89
  %257 = xor i32 %256, %248, !mcsema_real_eip !89
  %258 = and i32 %250, %257, !mcsema_real_eip !89
  %259 = icmp slt i32 %258, 0
  store i1 %259, i1* %OF_val, !mcsema_real_eip !89
  %260 = trunc i32 %249 to i8, !mcsema_real_eip !89
  %261 = tail call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !89
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  store i1 %263, i1* %PF_val, !mcsema_real_eip !89
  %264 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %264, i1* %CF_val, !mcsema_real_eip !89
  %265 = zext i32 %249 to i64, !mcsema_real_eip !89
  store i64 %265, i64* %RSI_val, !mcsema_real_eip !89
  %266 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %267 = add i64 %266, -112, !mcsema_real_eip !90
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !90
  %_head_p2i_132 = ptrtoint i64* %268 to i64
  %_offset_above_rbp_133 = sub i64 %_head_p2i_132, %_local_stack_end_
  %_address_in_parent_stack_134 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  %_cond0_135 = icmp ugt i64 %_head_p2i_132, %_local_stack_end_
  %_cond1_136 = icmp ugt i64 %_head_p2i_132, %_parent_stack_end_ptr_
  %_cond2_137 = icmp ult i64 %_head_p2i_132, %_parent_stack_start_ptr_
  %_cond3_138 = or i1 %_cond1_136, %_cond2_137
  %_cond4_139 = icmp ule i64 %_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond5_140 = and i1 %_cond0_135, %_cond3_138
  %_cond6_141 = and i1 %_cond5_140, %_cond4_139
  br i1 %_cond6_141, label %269, label %270

; <label>:269:                                    ; preds = %245
  %_address_in_parent_stack_142 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  br label %270

; <label>:270:                                    ; preds = %245, %269
  %271 = phi i64 [ %_head_p2i_132, %245 ], [ %_address_in_parent_stack_142, %269 ]
  %_address_ptr_in_parent_stack_143 = inttoptr i64 %271 to i64*
  %_new_load_144 = load i64, i64* %_address_ptr_in_parent_stack_143
  store i64 %_new_load_144, i64* %RAX_val, !mcsema_real_eip !90
  %272 = inttoptr i64 %_new_load_144 to i64*, !mcsema_real_eip !91
  %273 = bitcast i64* %272 to i32*
  %_head_p2i_145 = ptrtoint i32* %273 to i64
  %_offset_above_rbp_146 = sub i64 %_head_p2i_145, %_local_stack_end_
  %_address_in_parent_stack_147 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  %_cond0_148 = icmp ugt i64 %_head_p2i_145, %_local_stack_end_
  %_cond1_149 = icmp ugt i64 %_head_p2i_145, %_parent_stack_end_ptr_
  %_cond2_150 = icmp ult i64 %_head_p2i_145, %_parent_stack_start_ptr_
  %_cond3_151 = or i1 %_cond1_149, %_cond2_150
  %_cond4_152 = icmp ule i64 %_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond5_153 = and i1 %_cond0_148, %_cond3_151
  %_cond6_154 = and i1 %_cond5_153, %_cond4_152
  br i1 %_cond6_154, label %274, label %275

; <label>:274:                                    ; preds = %270
  %_address_in_parent_stack_155 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  br label %275

; <label>:275:                                    ; preds = %270, %274
  %276 = phi i64 [ %_head_p2i_145, %270 ], [ %_address_in_parent_stack_155, %274 ]
  %_address_ptr_in_parent_stack_156 = inttoptr i64 %276 to i32*
  %_new_load_157 = load i32, i32* %_address_ptr_in_parent_stack_156
  %277 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !91
  store i64 %277, i64* %R8_val, !mcsema_real_eip !91
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %279 = add i64 %278, -88, !mcsema_real_eip !92
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !92
  %_head_p2i_158 = ptrtoint i64* %280 to i64
  %_offset_above_rbp_159 = sub i64 %_head_p2i_158, %_local_stack_end_
  %_address_in_parent_stack_160 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_159
  %_cond0_161 = icmp ugt i64 %_head_p2i_158, %_local_stack_end_
  %_cond1_162 = icmp ugt i64 %_head_p2i_158, %_parent_stack_end_ptr_
  %_cond2_163 = icmp ult i64 %_head_p2i_158, %_parent_stack_start_ptr_
  %_cond3_164 = or i1 %_cond1_162, %_cond2_163
  %_cond4_165 = icmp ule i64 %_address_in_parent_stack_160, %_parent_stack_end_ptr_
  %_cond5_166 = and i1 %_cond0_161, %_cond3_164
  %_cond6_167 = and i1 %_cond5_166, %_cond4_165
  br i1 %_cond6_167, label %281, label %282

; <label>:281:                                    ; preds = %275
  %_address_in_parent_stack_168 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_159
  br label %282

; <label>:282:                                    ; preds = %275, %281
  %283 = phi i64 [ %_head_p2i_158, %275 ], [ %_address_in_parent_stack_168, %281 ]
  %_address_ptr_in_parent_stack_169 = inttoptr i64 %283 to i64*
  %_new_load_170 = load i64, i64* %_address_ptr_in_parent_stack_169
  store i64 %_new_load_170, i64* %RCX_val, !mcsema_real_eip !92
  %284 = inttoptr i64 %_new_load_170 to i64*, !mcsema_real_eip !93
  %285 = bitcast i64* %284 to i32*
  %_head_p2i_171 = ptrtoint i32* %285 to i64
  %_offset_above_rbp_172 = sub i64 %_head_p2i_171, %_local_stack_end_
  %_address_in_parent_stack_173 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_172
  %_cond0_174 = icmp ugt i64 %_head_p2i_171, %_local_stack_end_
  %_cond1_175 = icmp ugt i64 %_head_p2i_171, %_parent_stack_end_ptr_
  %_cond2_176 = icmp ult i64 %_head_p2i_171, %_parent_stack_start_ptr_
  %_cond3_177 = or i1 %_cond1_175, %_cond2_176
  %_cond4_178 = icmp ule i64 %_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond5_179 = and i1 %_cond0_174, %_cond3_177
  %_cond6_180 = and i1 %_cond5_179, %_cond4_178
  br i1 %_cond6_180, label %286, label %287

; <label>:286:                                    ; preds = %282
  %_address_in_parent_stack_181 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_172
  br label %287

; <label>:287:                                    ; preds = %282, %286
  %288 = phi i64 [ %_head_p2i_171, %282 ], [ %_address_in_parent_stack_181, %286 ]
  %_address_ptr_in_parent_stack_182 = inttoptr i64 %288 to i32*
  %_new_load_183 = load i32, i32* %_address_ptr_in_parent_stack_182
  %289 = load i64, i64* %R8_val, !mcsema_real_eip !93
  %290 = trunc i64 %289 to i32, !mcsema_real_eip !93
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %290, i32 %_new_load_183)
  %291 = extractvalue { i32, i1 } %uadd71, 0
  %292 = xor i32 %291, %_new_load_183, !mcsema_real_eip !93
  %293 = xor i32 %292, %290, !mcsema_real_eip !93
  %294 = and i32 %293, 16, !mcsema_real_eip !93
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !93
  store i1 %295, i1* %AF_val, !mcsema_real_eip !93
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF_val, !mcsema_real_eip !93
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !93
  store i1 %297, i1* %ZF_val, !mcsema_real_eip !93
  %298 = xor i32 %_new_load_183, -2147483648, !mcsema_real_eip !93
  %299 = xor i32 %298, %290, !mcsema_real_eip !93
  %300 = and i32 %292, %299, !mcsema_real_eip !93
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF_val, !mcsema_real_eip !93
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !93
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !93
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF_val, !mcsema_real_eip !93
  %306 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %306, i1* %CF_val, !mcsema_real_eip !93
  %307 = zext i32 %291 to i64, !mcsema_real_eip !93
  store i64 %307, i64* %R8_val, !mcsema_real_eip !93
  %308 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %309 = add i64 %308, -96, !mcsema_real_eip !94
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !94
  %_head_p2i_184 = ptrtoint i64* %310 to i64
  %_offset_above_rbp_185 = sub i64 %_head_p2i_184, %_local_stack_end_
  %_address_in_parent_stack_186 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_185
  %_cond0_187 = icmp ugt i64 %_head_p2i_184, %_local_stack_end_
  %_cond1_188 = icmp ugt i64 %_head_p2i_184, %_parent_stack_end_ptr_
  %_cond2_189 = icmp ult i64 %_head_p2i_184, %_parent_stack_start_ptr_
  %_cond3_190 = or i1 %_cond1_188, %_cond2_189
  %_cond4_191 = icmp ule i64 %_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond5_192 = and i1 %_cond0_187, %_cond3_190
  %_cond6_193 = and i1 %_cond5_192, %_cond4_191
  br i1 %_cond6_193, label %311, label %312

; <label>:311:                                    ; preds = %287
  %_address_in_parent_stack_194 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_185
  br label %312

; <label>:312:                                    ; preds = %287, %311
  %313 = phi i64 [ %_head_p2i_184, %287 ], [ %_address_in_parent_stack_194, %311 ]
  %_address_ptr_in_parent_stack_195 = inttoptr i64 %313 to i64*
  %_new_load_196 = load i64, i64* %_address_ptr_in_parent_stack_195
  store i64 %_new_load_196, i64* %RCX_val, !mcsema_real_eip !94
  %314 = inttoptr i64 %_new_load_196 to i64*, !mcsema_real_eip !95
  %315 = bitcast i64* %314 to i32*
  %_head_p2i_197 = ptrtoint i32* %315 to i64
  %_offset_above_rbp_198 = sub i64 %_head_p2i_197, %_local_stack_end_
  %_address_in_parent_stack_199 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_198
  %_cond0_200 = icmp ugt i64 %_head_p2i_197, %_local_stack_end_
  %_cond1_201 = icmp ugt i64 %_head_p2i_197, %_parent_stack_end_ptr_
  %_cond2_202 = icmp ult i64 %_head_p2i_197, %_parent_stack_start_ptr_
  %_cond3_203 = or i1 %_cond1_201, %_cond2_202
  %_cond4_204 = icmp ule i64 %_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond5_205 = and i1 %_cond0_200, %_cond3_203
  %_cond6_206 = and i1 %_cond5_205, %_cond4_204
  br i1 %_cond6_206, label %316, label %317

; <label>:316:                                    ; preds = %312
  %_address_in_parent_stack_207 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_198
  br label %317

; <label>:317:                                    ; preds = %312, %316
  %318 = phi i64 [ %_head_p2i_197, %312 ], [ %_address_in_parent_stack_207, %316 ]
  %_address_ptr_in_parent_stack_208 = inttoptr i64 %318 to i32*
  %_new_load_209 = load i32, i32* %_address_ptr_in_parent_stack_208
  %319 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %320 = trunc i64 %319 to i32, !mcsema_real_eip !95
  %321 = add i32 %320, %_new_load_209
  %322 = zext i32 %321 to i64, !mcsema_real_eip !95
  store i64 %322, i64* %R8_val, !mcsema_real_eip !95
  %323 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %324 = trunc i64 %323 to i32, !mcsema_real_eip !96
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %321, i32 %324)
  %325 = extractvalue { i32, i1 } %uadd73, 0
  %326 = xor i32 %325, %324, !mcsema_real_eip !96
  %327 = xor i32 %326, %321, !mcsema_real_eip !96
  %328 = and i32 %327, 16, !mcsema_real_eip !96
  %329 = icmp ne i32 %328, 0, !mcsema_real_eip !96
  store i1 %329, i1* %AF_val, !mcsema_real_eip !96
  %330 = icmp slt i32 %325, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !96
  %331 = icmp eq i32 %325, 0, !mcsema_real_eip !96
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !96
  %332 = xor i32 %321, -2147483648, !mcsema_real_eip !96
  %333 = xor i32 %332, %324, !mcsema_real_eip !96
  %334 = and i32 %326, %333, !mcsema_real_eip !96
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !96
  %336 = trunc i32 %325 to i8, !mcsema_real_eip !96
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !96
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !96
  %340 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !96
  %341 = zext i32 %325 to i64, !mcsema_real_eip !96
  store i64 %341, i64* %RSI_val, !mcsema_real_eip !96
  %342 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %343 = add i64 %342, -104, !mcsema_real_eip !97
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !97
  %_head_p2i_210 = ptrtoint i64* %344 to i64
  %_offset_above_rbp_211 = sub i64 %_head_p2i_210, %_local_stack_end_
  %_address_in_parent_stack_212 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_211
  %_cond0_213 = icmp ugt i64 %_head_p2i_210, %_local_stack_end_
  %_cond1_214 = icmp ugt i64 %_head_p2i_210, %_parent_stack_end_ptr_
  %_cond2_215 = icmp ult i64 %_head_p2i_210, %_parent_stack_start_ptr_
  %_cond3_216 = or i1 %_cond1_214, %_cond2_215
  %_cond4_217 = icmp ule i64 %_address_in_parent_stack_212, %_parent_stack_end_ptr_
  %_cond5_218 = and i1 %_cond0_213, %_cond3_216
  %_cond6_219 = and i1 %_cond5_218, %_cond4_217
  br i1 %_cond6_219, label %345, label %346

; <label>:345:                                    ; preds = %317
  %_address_in_parent_stack_220 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_211
  br label %346

; <label>:346:                                    ; preds = %317, %345
  %347 = phi i64 [ %_head_p2i_210, %317 ], [ %_address_in_parent_stack_220, %345 ]
  %_address_ptr_in_parent_stack_221 = inttoptr i64 %347 to i64*
  %_new_load_222 = load i64, i64* %_address_ptr_in_parent_stack_221
  store i64 %_new_load_222, i64* %RCX_val, !mcsema_real_eip !97
  %348 = inttoptr i64 %_new_load_222 to i64*, !mcsema_real_eip !98
  %349 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %350 = trunc i64 %349 to i32, !mcsema_real_eip !98
  %351 = bitcast i64* %348 to i32*
  store i32 %350, i32* %351, !mcsema_real_eip !98
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %353 = add i64 %352, -28, !mcsema_real_eip !99
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !99
  %355 = bitcast i64* %354 to i32*
  %_head_p2i_223 = ptrtoint i32* %355 to i64
  %_offset_above_rbp_224 = sub i64 %_head_p2i_223, %_local_stack_end_
  %_address_in_parent_stack_225 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_224
  %_cond0_226 = icmp ugt i64 %_head_p2i_223, %_local_stack_end_
  %_cond1_227 = icmp ugt i64 %_head_p2i_223, %_parent_stack_end_ptr_
  %_cond2_228 = icmp ult i64 %_head_p2i_223, %_parent_stack_start_ptr_
  %_cond3_229 = or i1 %_cond1_227, %_cond2_228
  %_cond4_230 = icmp ule i64 %_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond5_231 = and i1 %_cond0_226, %_cond3_229
  %_cond6_232 = and i1 %_cond5_231, %_cond4_230
  br i1 %_cond6_232, label %356, label %357

; <label>:356:                                    ; preds = %346
  %_address_in_parent_stack_233 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_224
  br label %357

; <label>:357:                                    ; preds = %346, %356
  %358 = phi i64 [ %_head_p2i_223, %346 ], [ %_address_in_parent_stack_233, %356 ]
  %_address_ptr_in_parent_stack_234 = inttoptr i64 %358 to i32*
  %_new_load_235 = load i32, i32* %_address_ptr_in_parent_stack_234
  %359 = zext i32 %_new_load_235 to i64, !mcsema_real_eip !99
  store i64 %359, i64* %RSI_val, !mcsema_real_eip !99
  %360 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %361 = add i64 %360, -56, !mcsema_real_eip !100
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !100
  %_head_p2i_236 = ptrtoint i64* %362 to i64
  %_offset_above_rbp_237 = sub i64 %_head_p2i_236, %_local_stack_end_
  %_address_in_parent_stack_238 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_237
  %_cond0_239 = icmp ugt i64 %_head_p2i_236, %_local_stack_end_
  %_cond1_240 = icmp ugt i64 %_head_p2i_236, %_parent_stack_end_ptr_
  %_cond2_241 = icmp ult i64 %_head_p2i_236, %_parent_stack_start_ptr_
  %_cond3_242 = or i1 %_cond1_240, %_cond2_241
  %_cond4_243 = icmp ule i64 %_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond5_244 = and i1 %_cond0_239, %_cond3_242
  %_cond6_245 = and i1 %_cond5_244, %_cond4_243
  br i1 %_cond6_245, label %363, label %364

; <label>:363:                                    ; preds = %357
  %_address_in_parent_stack_246 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_237
  br label %364

; <label>:364:                                    ; preds = %357, %363
  %365 = phi i64 [ %_head_p2i_236, %357 ], [ %_address_in_parent_stack_246, %363 ]
  %_address_ptr_in_parent_stack_247 = inttoptr i64 %365 to i64*
  %_new_load_248 = load i64, i64* %_address_ptr_in_parent_stack_247
  store i64 %_new_load_248, i64* %RCX_val, !mcsema_real_eip !100
  %366 = add i64 %_new_load_248, 4, !mcsema_real_eip !101
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !101
  %368 = bitcast i64* %367 to i32*
  %_head_p2i_249 = ptrtoint i32* %368 to i64
  %_offset_above_rbp_250 = sub i64 %_head_p2i_249, %_local_stack_end_
  %_address_in_parent_stack_251 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_250
  %_cond0_252 = icmp ugt i64 %_head_p2i_249, %_local_stack_end_
  %_cond1_253 = icmp ugt i64 %_head_p2i_249, %_parent_stack_end_ptr_
  %_cond2_254 = icmp ult i64 %_head_p2i_249, %_parent_stack_start_ptr_
  %_cond3_255 = or i1 %_cond1_253, %_cond2_254
  %_cond4_256 = icmp ule i64 %_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond5_257 = and i1 %_cond0_252, %_cond3_255
  %_cond6_258 = and i1 %_cond5_257, %_cond4_256
  br i1 %_cond6_258, label %369, label %370

; <label>:369:                                    ; preds = %364
  %_address_in_parent_stack_259 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_250
  br label %370

; <label>:370:                                    ; preds = %364, %369
  %371 = phi i64 [ %_head_p2i_249, %364 ], [ %_address_in_parent_stack_259, %369 ]
  %_address_ptr_in_parent_stack_260 = inttoptr i64 %371 to i32*
  %_new_load_261 = load i32, i32* %_address_ptr_in_parent_stack_260
  %372 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %373 = trunc i64 %372 to i32, !mcsema_real_eip !101
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 %_new_load_261)
  %374 = extractvalue { i32, i1 } %uadd74, 0
  %375 = xor i32 %374, %_new_load_261, !mcsema_real_eip !101
  %376 = xor i32 %375, %373, !mcsema_real_eip !101
  %377 = and i32 %376, 16, !mcsema_real_eip !101
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !101
  store i1 %378, i1* %AF_val, !mcsema_real_eip !101
  %379 = icmp slt i32 %374, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !101
  %380 = icmp eq i32 %374, 0, !mcsema_real_eip !101
  store i1 %380, i1* %ZF_val, !mcsema_real_eip !101
  %381 = xor i32 %_new_load_261, -2147483648, !mcsema_real_eip !101
  %382 = xor i32 %381, %373, !mcsema_real_eip !101
  %383 = and i32 %375, %382, !mcsema_real_eip !101
  %384 = icmp slt i32 %383, 0
  store i1 %384, i1* %OF_val, !mcsema_real_eip !101
  %385 = trunc i32 %374 to i8, !mcsema_real_eip !101
  %386 = tail call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !101
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF_val, !mcsema_real_eip !101
  %389 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %389, i1* %CF_val, !mcsema_real_eip !101
  %390 = zext i32 %374 to i64, !mcsema_real_eip !101
  store i64 %390, i64* %RSI_val, !mcsema_real_eip !101
  %391 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %392 = add i64 %391, -64, !mcsema_real_eip !102
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !102
  %_head_p2i_262 = ptrtoint i64* %393 to i64
  %_offset_above_rbp_263 = sub i64 %_head_p2i_262, %_local_stack_end_
  %_address_in_parent_stack_264 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_263
  %_cond0_265 = icmp ugt i64 %_head_p2i_262, %_local_stack_end_
  %_cond1_266 = icmp ugt i64 %_head_p2i_262, %_parent_stack_end_ptr_
  %_cond2_267 = icmp ult i64 %_head_p2i_262, %_parent_stack_start_ptr_
  %_cond3_268 = or i1 %_cond1_266, %_cond2_267
  %_cond4_269 = icmp ule i64 %_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond5_270 = and i1 %_cond0_265, %_cond3_268
  %_cond6_271 = and i1 %_cond5_270, %_cond4_269
  br i1 %_cond6_271, label %394, label %395

; <label>:394:                                    ; preds = %370
  %_address_in_parent_stack_272 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_263
  br label %395

; <label>:395:                                    ; preds = %370, %394
  %396 = phi i64 [ %_head_p2i_262, %370 ], [ %_address_in_parent_stack_272, %394 ]
  %_address_ptr_in_parent_stack_273 = inttoptr i64 %396 to i64*
  %_new_load_274 = load i64, i64* %_address_ptr_in_parent_stack_273
  store i64 %_new_load_274, i64* %RCX_val, !mcsema_real_eip !102
  %397 = add i64 %_new_load_274, 4, !mcsema_real_eip !103
  %398 = inttoptr i64 %397 to i64*, !mcsema_real_eip !103
  %399 = bitcast i64* %398 to i32*
  %_head_p2i_275 = ptrtoint i32* %399 to i64
  %_offset_above_rbp_276 = sub i64 %_head_p2i_275, %_local_stack_end_
  %_address_in_parent_stack_277 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_276
  %_cond0_278 = icmp ugt i64 %_head_p2i_275, %_local_stack_end_
  %_cond1_279 = icmp ugt i64 %_head_p2i_275, %_parent_stack_end_ptr_
  %_cond2_280 = icmp ult i64 %_head_p2i_275, %_parent_stack_start_ptr_
  %_cond3_281 = or i1 %_cond1_279, %_cond2_280
  %_cond4_282 = icmp ule i64 %_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond5_283 = and i1 %_cond0_278, %_cond3_281
  %_cond6_284 = and i1 %_cond5_283, %_cond4_282
  br i1 %_cond6_284, label %400, label %401

; <label>:400:                                    ; preds = %395
  %_address_in_parent_stack_285 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_276
  br label %401

; <label>:401:                                    ; preds = %395, %400
  %402 = phi i64 [ %_head_p2i_275, %395 ], [ %_address_in_parent_stack_285, %400 ]
  %_address_ptr_in_parent_stack_286 = inttoptr i64 %402 to i32*
  %_new_load_287 = load i32, i32* %_address_ptr_in_parent_stack_286
  %403 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %404 = trunc i64 %403 to i32, !mcsema_real_eip !103
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 %_new_load_287)
  %405 = extractvalue { i32, i1 } %uadd75, 0
  %406 = xor i32 %405, %_new_load_287, !mcsema_real_eip !103
  %407 = xor i32 %406, %404, !mcsema_real_eip !103
  %408 = and i32 %407, 16, !mcsema_real_eip !103
  %409 = icmp ne i32 %408, 0, !mcsema_real_eip !103
  store i1 %409, i1* %AF_val, !mcsema_real_eip !103
  %410 = icmp slt i32 %405, 0
  store i1 %410, i1* %SF_val, !mcsema_real_eip !103
  %411 = icmp eq i32 %405, 0, !mcsema_real_eip !103
  store i1 %411, i1* %ZF_val, !mcsema_real_eip !103
  %412 = xor i32 %_new_load_287, -2147483648, !mcsema_real_eip !103
  %413 = xor i32 %412, %404, !mcsema_real_eip !103
  %414 = and i32 %406, %413, !mcsema_real_eip !103
  %415 = icmp slt i32 %414, 0
  store i1 %415, i1* %OF_val, !mcsema_real_eip !103
  %416 = trunc i32 %405 to i8, !mcsema_real_eip !103
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !103
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF_val, !mcsema_real_eip !103
  %420 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %420, i1* %CF_val, !mcsema_real_eip !103
  %421 = zext i32 %405 to i64, !mcsema_real_eip !103
  store i64 %421, i64* %RSI_val, !mcsema_real_eip !103
  %422 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %423 = add i64 %422, 4, !mcsema_real_eip !104
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !104
  %425 = bitcast i64* %424 to i32*
  %_head_p2i_288 = ptrtoint i32* %425 to i64
  %_offset_above_rbp_289 = sub i64 %_head_p2i_288, %_local_stack_end_
  %_address_in_parent_stack_290 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_289
  %_cond0_291 = icmp ugt i64 %_head_p2i_288, %_local_stack_end_
  %_cond1_292 = icmp ugt i64 %_head_p2i_288, %_parent_stack_end_ptr_
  %_cond2_293 = icmp ult i64 %_head_p2i_288, %_parent_stack_start_ptr_
  %_cond3_294 = or i1 %_cond1_292, %_cond2_293
  %_cond4_295 = icmp ule i64 %_address_in_parent_stack_290, %_parent_stack_end_ptr_
  %_cond5_296 = and i1 %_cond0_291, %_cond3_294
  %_cond6_297 = and i1 %_cond5_296, %_cond4_295
  br i1 %_cond6_297, label %426, label %427

; <label>:426:                                    ; preds = %401
  %_address_in_parent_stack_298 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_289
  br label %427

; <label>:427:                                    ; preds = %401, %426
  %428 = phi i64 [ %_head_p2i_288, %401 ], [ %_address_in_parent_stack_298, %426 ]
  %_address_ptr_in_parent_stack_299 = inttoptr i64 %428 to i32*
  %_new_load_300 = load i32, i32* %_address_ptr_in_parent_stack_299
  %429 = zext i32 %_new_load_300 to i64, !mcsema_real_eip !104
  store i64 %429, i64* %R8_val, !mcsema_real_eip !104
  %430 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %431 = add i64 %430, -88, !mcsema_real_eip !105
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !105
  %_head_p2i_301 = ptrtoint i64* %432 to i64
  %_offset_above_rbp_302 = sub i64 %_head_p2i_301, %_local_stack_end_
  %_address_in_parent_stack_303 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_302
  %_cond0_304 = icmp ugt i64 %_head_p2i_301, %_local_stack_end_
  %_cond1_305 = icmp ugt i64 %_head_p2i_301, %_parent_stack_end_ptr_
  %_cond2_306 = icmp ult i64 %_head_p2i_301, %_parent_stack_start_ptr_
  %_cond3_307 = or i1 %_cond1_305, %_cond2_306
  %_cond4_308 = icmp ule i64 %_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond5_309 = and i1 %_cond0_304, %_cond3_307
  %_cond6_310 = and i1 %_cond5_309, %_cond4_308
  br i1 %_cond6_310, label %433, label %434

; <label>:433:                                    ; preds = %427
  %_address_in_parent_stack_311 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_302
  br label %434

; <label>:434:                                    ; preds = %427, %433
  %435 = phi i64 [ %_head_p2i_301, %427 ], [ %_address_in_parent_stack_311, %433 ]
  %_address_ptr_in_parent_stack_312 = inttoptr i64 %435 to i64*
  %_new_load_313 = load i64, i64* %_address_ptr_in_parent_stack_312
  store i64 %_new_load_313, i64* %RCX_val, !mcsema_real_eip !105
  %436 = add i64 %_new_load_313, 4, !mcsema_real_eip !106
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !106
  %438 = bitcast i64* %437 to i32*
  %_head_p2i_314 = ptrtoint i32* %438 to i64
  %_offset_above_rbp_315 = sub i64 %_head_p2i_314, %_local_stack_end_
  %_address_in_parent_stack_316 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_315
  %_cond0_317 = icmp ugt i64 %_head_p2i_314, %_local_stack_end_
  %_cond1_318 = icmp ugt i64 %_head_p2i_314, %_parent_stack_end_ptr_
  %_cond2_319 = icmp ult i64 %_head_p2i_314, %_parent_stack_start_ptr_
  %_cond3_320 = or i1 %_cond1_318, %_cond2_319
  %_cond4_321 = icmp ule i64 %_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond5_322 = and i1 %_cond0_317, %_cond3_320
  %_cond6_323 = and i1 %_cond5_322, %_cond4_321
  br i1 %_cond6_323, label %439, label %440

; <label>:439:                                    ; preds = %434
  %_address_in_parent_stack_324 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_315
  br label %440

; <label>:440:                                    ; preds = %434, %439
  %441 = phi i64 [ %_head_p2i_314, %434 ], [ %_address_in_parent_stack_324, %439 ]
  %_address_ptr_in_parent_stack_325 = inttoptr i64 %441 to i32*
  %_new_load_326 = load i32, i32* %_address_ptr_in_parent_stack_325
  %442 = load i64, i64* %R8_val, !mcsema_real_eip !106
  %443 = trunc i64 %442 to i32, !mcsema_real_eip !106
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %443, i32 %_new_load_326)
  %444 = extractvalue { i32, i1 } %uadd76, 0
  %445 = xor i32 %444, %_new_load_326, !mcsema_real_eip !106
  %446 = xor i32 %445, %443, !mcsema_real_eip !106
  %447 = and i32 %446, 16, !mcsema_real_eip !106
  %448 = icmp ne i32 %447, 0, !mcsema_real_eip !106
  store i1 %448, i1* %AF_val, !mcsema_real_eip !106
  %449 = icmp slt i32 %444, 0
  store i1 %449, i1* %SF_val, !mcsema_real_eip !106
  %450 = icmp eq i32 %444, 0, !mcsema_real_eip !106
  store i1 %450, i1* %ZF_val, !mcsema_real_eip !106
  %451 = xor i32 %_new_load_326, -2147483648, !mcsema_real_eip !106
  %452 = xor i32 %451, %443, !mcsema_real_eip !106
  %453 = and i32 %445, %452, !mcsema_real_eip !106
  %454 = icmp slt i32 %453, 0
  store i1 %454, i1* %OF_val, !mcsema_real_eip !106
  %455 = trunc i32 %444 to i8, !mcsema_real_eip !106
  %456 = tail call i8 @llvm.ctpop.i8(i8 %455), !mcsema_real_eip !106
  %457 = and i8 %456, 1
  %458 = icmp eq i8 %457, 0
  store i1 %458, i1* %PF_val, !mcsema_real_eip !106
  %459 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %459, i1* %CF_val, !mcsema_real_eip !106
  %460 = zext i32 %444 to i64, !mcsema_real_eip !106
  store i64 %460, i64* %R8_val, !mcsema_real_eip !106
  %461 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %462 = add i64 %461, -96, !mcsema_real_eip !107
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !107
  %_head_p2i_327 = ptrtoint i64* %463 to i64
  %_offset_above_rbp_328 = sub i64 %_head_p2i_327, %_local_stack_end_
  %_address_in_parent_stack_329 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_328
  %_cond0_330 = icmp ugt i64 %_head_p2i_327, %_local_stack_end_
  %_cond1_331 = icmp ugt i64 %_head_p2i_327, %_parent_stack_end_ptr_
  %_cond2_332 = icmp ult i64 %_head_p2i_327, %_parent_stack_start_ptr_
  %_cond3_333 = or i1 %_cond1_331, %_cond2_332
  %_cond4_334 = icmp ule i64 %_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond5_335 = and i1 %_cond0_330, %_cond3_333
  %_cond6_336 = and i1 %_cond5_335, %_cond4_334
  br i1 %_cond6_336, label %464, label %465

; <label>:464:                                    ; preds = %440
  %_address_in_parent_stack_337 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_328
  br label %465

; <label>:465:                                    ; preds = %440, %464
  %466 = phi i64 [ %_head_p2i_327, %440 ], [ %_address_in_parent_stack_337, %464 ]
  %_address_ptr_in_parent_stack_338 = inttoptr i64 %466 to i64*
  %_new_load_339 = load i64, i64* %_address_ptr_in_parent_stack_338
  store i64 %_new_load_339, i64* %RCX_val, !mcsema_real_eip !107
  %467 = add i64 %_new_load_339, 4, !mcsema_real_eip !108
  %468 = inttoptr i64 %467 to i64*, !mcsema_real_eip !108
  %469 = bitcast i64* %468 to i32*
  %_head_p2i_340 = ptrtoint i32* %469 to i64
  %_offset_above_rbp_341 = sub i64 %_head_p2i_340, %_local_stack_end_
  %_address_in_parent_stack_342 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_341
  %_cond0_343 = icmp ugt i64 %_head_p2i_340, %_local_stack_end_
  %_cond1_344 = icmp ugt i64 %_head_p2i_340, %_parent_stack_end_ptr_
  %_cond2_345 = icmp ult i64 %_head_p2i_340, %_parent_stack_start_ptr_
  %_cond3_346 = or i1 %_cond1_344, %_cond2_345
  %_cond4_347 = icmp ule i64 %_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond5_348 = and i1 %_cond0_343, %_cond3_346
  %_cond6_349 = and i1 %_cond5_348, %_cond4_347
  br i1 %_cond6_349, label %470, label %471

; <label>:470:                                    ; preds = %465
  %_address_in_parent_stack_350 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_341
  br label %471

; <label>:471:                                    ; preds = %465, %470
  %472 = phi i64 [ %_head_p2i_340, %465 ], [ %_address_in_parent_stack_350, %470 ]
  %_address_ptr_in_parent_stack_351 = inttoptr i64 %472 to i32*
  %_new_load_352 = load i32, i32* %_address_ptr_in_parent_stack_351
  %473 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %474 = trunc i64 %473 to i32, !mcsema_real_eip !108
  %475 = add i32 %474, %_new_load_352
  %476 = zext i32 %475 to i64, !mcsema_real_eip !108
  store i64 %476, i64* %R8_val, !mcsema_real_eip !108
  %477 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %478 = trunc i64 %477 to i32, !mcsema_real_eip !109
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 %478)
  %479 = extractvalue { i32, i1 } %uadd78, 0
  %480 = xor i32 %479, %478, !mcsema_real_eip !109
  %481 = xor i32 %480, %475, !mcsema_real_eip !109
  %482 = and i32 %481, 16, !mcsema_real_eip !109
  %483 = icmp ne i32 %482, 0, !mcsema_real_eip !109
  store i1 %483, i1* %AF_val, !mcsema_real_eip !109
  %484 = icmp slt i32 %479, 0
  store i1 %484, i1* %SF_val, !mcsema_real_eip !109
  %485 = icmp eq i32 %479, 0, !mcsema_real_eip !109
  store i1 %485, i1* %ZF_val, !mcsema_real_eip !109
  %486 = xor i32 %475, -2147483648, !mcsema_real_eip !109
  %487 = xor i32 %486, %478, !mcsema_real_eip !109
  %488 = and i32 %480, %487, !mcsema_real_eip !109
  %489 = icmp slt i32 %488, 0
  store i1 %489, i1* %OF_val, !mcsema_real_eip !109
  %490 = trunc i32 %479 to i8, !mcsema_real_eip !109
  %491 = tail call i8 @llvm.ctpop.i8(i8 %490), !mcsema_real_eip !109
  %492 = and i8 %491, 1
  %493 = icmp eq i8 %492, 0
  store i1 %493, i1* %PF_val, !mcsema_real_eip !109
  %494 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %494, i1* %CF_val, !mcsema_real_eip !109
  %495 = zext i32 %479 to i64, !mcsema_real_eip !109
  store i64 %495, i64* %RSI_val, !mcsema_real_eip !109
  %496 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %497 = add i64 %496, -104, !mcsema_real_eip !110
  %498 = inttoptr i64 %497 to i64*, !mcsema_real_eip !110
  %_head_p2i_353 = ptrtoint i64* %498 to i64
  %_offset_above_rbp_354 = sub i64 %_head_p2i_353, %_local_stack_end_
  %_address_in_parent_stack_355 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_354
  %_cond0_356 = icmp ugt i64 %_head_p2i_353, %_local_stack_end_
  %_cond1_357 = icmp ugt i64 %_head_p2i_353, %_parent_stack_end_ptr_
  %_cond2_358 = icmp ult i64 %_head_p2i_353, %_parent_stack_start_ptr_
  %_cond3_359 = or i1 %_cond1_357, %_cond2_358
  %_cond4_360 = icmp ule i64 %_address_in_parent_stack_355, %_parent_stack_end_ptr_
  %_cond5_361 = and i1 %_cond0_356, %_cond3_359
  %_cond6_362 = and i1 %_cond5_361, %_cond4_360
  br i1 %_cond6_362, label %499, label %500

; <label>:499:                                    ; preds = %471
  %_address_in_parent_stack_363 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_354
  br label %500

; <label>:500:                                    ; preds = %471, %499
  %501 = phi i64 [ %_head_p2i_353, %471 ], [ %_address_in_parent_stack_363, %499 ]
  %_address_ptr_in_parent_stack_364 = inttoptr i64 %501 to i64*
  %_new_load_365 = load i64, i64* %_address_ptr_in_parent_stack_364
  store i64 %_new_load_365, i64* %RCX_val, !mcsema_real_eip !110
  %502 = add i64 %_new_load_365, 4, !mcsema_real_eip !111
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !111
  %504 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %505 = trunc i64 %504 to i32, !mcsema_real_eip !111
  %506 = bitcast i64* %503 to i32*
  store i32 %505, i32* %506, !mcsema_real_eip !111
  %507 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %508 = add i64 %507, -24, !mcsema_real_eip !112
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !112
  %510 = bitcast i64* %509 to i32*
  %_head_p2i_366 = ptrtoint i32* %510 to i64
  %_offset_above_rbp_367 = sub i64 %_head_p2i_366, %_local_stack_end_
  %_address_in_parent_stack_368 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_367
  %_cond0_369 = icmp ugt i64 %_head_p2i_366, %_local_stack_end_
  %_cond1_370 = icmp ugt i64 %_head_p2i_366, %_parent_stack_end_ptr_
  %_cond2_371 = icmp ult i64 %_head_p2i_366, %_parent_stack_start_ptr_
  %_cond3_372 = or i1 %_cond1_370, %_cond2_371
  %_cond4_373 = icmp ule i64 %_address_in_parent_stack_368, %_parent_stack_end_ptr_
  %_cond5_374 = and i1 %_cond0_369, %_cond3_372
  %_cond6_375 = and i1 %_cond5_374, %_cond4_373
  br i1 %_cond6_375, label %511, label %512

; <label>:511:                                    ; preds = %500
  %_address_in_parent_stack_376 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_367
  br label %512

; <label>:512:                                    ; preds = %500, %511
  %513 = phi i64 [ %_head_p2i_366, %500 ], [ %_address_in_parent_stack_376, %511 ]
  %_address_ptr_in_parent_stack_377 = inttoptr i64 %513 to i32*
  %_new_load_378 = load i32, i32* %_address_ptr_in_parent_stack_377
  %514 = zext i32 %_new_load_378 to i64, !mcsema_real_eip !112
  store i64 %514, i64* %RSI_val, !mcsema_real_eip !112
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %516 = add i64 %515, -56, !mcsema_real_eip !113
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !113
  %_head_p2i_379 = ptrtoint i64* %517 to i64
  %_offset_above_rbp_380 = sub i64 %_head_p2i_379, %_local_stack_end_
  %_address_in_parent_stack_381 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_380
  %_cond0_382 = icmp ugt i64 %_head_p2i_379, %_local_stack_end_
  %_cond1_383 = icmp ugt i64 %_head_p2i_379, %_parent_stack_end_ptr_
  %_cond2_384 = icmp ult i64 %_head_p2i_379, %_parent_stack_start_ptr_
  %_cond3_385 = or i1 %_cond1_383, %_cond2_384
  %_cond4_386 = icmp ule i64 %_address_in_parent_stack_381, %_parent_stack_end_ptr_
  %_cond5_387 = and i1 %_cond0_382, %_cond3_385
  %_cond6_388 = and i1 %_cond5_387, %_cond4_386
  br i1 %_cond6_388, label %518, label %519

; <label>:518:                                    ; preds = %512
  %_address_in_parent_stack_389 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_380
  br label %519

; <label>:519:                                    ; preds = %512, %518
  %520 = phi i64 [ %_head_p2i_379, %512 ], [ %_address_in_parent_stack_389, %518 ]
  %_address_ptr_in_parent_stack_390 = inttoptr i64 %520 to i64*
  %_new_load_391 = load i64, i64* %_address_ptr_in_parent_stack_390
  store i64 %_new_load_391, i64* %RCX_val, !mcsema_real_eip !113
  %521 = add i64 %_new_load_391, 8, !mcsema_real_eip !114
  %522 = inttoptr i64 %521 to i64*, !mcsema_real_eip !114
  %523 = bitcast i64* %522 to i32*
  %_head_p2i_392 = ptrtoint i32* %523 to i64
  %_offset_above_rbp_393 = sub i64 %_head_p2i_392, %_local_stack_end_
  %_address_in_parent_stack_394 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_393
  %_cond0_395 = icmp ugt i64 %_head_p2i_392, %_local_stack_end_
  %_cond1_396 = icmp ugt i64 %_head_p2i_392, %_parent_stack_end_ptr_
  %_cond2_397 = icmp ult i64 %_head_p2i_392, %_parent_stack_start_ptr_
  %_cond3_398 = or i1 %_cond1_396, %_cond2_397
  %_cond4_399 = icmp ule i64 %_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond5_400 = and i1 %_cond0_395, %_cond3_398
  %_cond6_401 = and i1 %_cond5_400, %_cond4_399
  br i1 %_cond6_401, label %524, label %525

; <label>:524:                                    ; preds = %519
  %_address_in_parent_stack_402 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_393
  br label %525

; <label>:525:                                    ; preds = %519, %524
  %526 = phi i64 [ %_head_p2i_392, %519 ], [ %_address_in_parent_stack_402, %524 ]
  %_address_ptr_in_parent_stack_403 = inttoptr i64 %526 to i32*
  %_new_load_404 = load i32, i32* %_address_ptr_in_parent_stack_403
  %527 = load i64, i64* %RSI_val, !mcsema_real_eip !114
  %528 = trunc i64 %527 to i32, !mcsema_real_eip !114
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %528, i32 %_new_load_404)
  %529 = extractvalue { i32, i1 } %uadd79, 0
  %530 = xor i32 %529, %_new_load_404, !mcsema_real_eip !114
  %531 = xor i32 %530, %528, !mcsema_real_eip !114
  %532 = and i32 %531, 16, !mcsema_real_eip !114
  %533 = icmp ne i32 %532, 0, !mcsema_real_eip !114
  store i1 %533, i1* %AF_val, !mcsema_real_eip !114
  %534 = icmp slt i32 %529, 0
  store i1 %534, i1* %SF_val, !mcsema_real_eip !114
  %535 = icmp eq i32 %529, 0, !mcsema_real_eip !114
  store i1 %535, i1* %ZF_val, !mcsema_real_eip !114
  %536 = xor i32 %_new_load_404, -2147483648, !mcsema_real_eip !114
  %537 = xor i32 %536, %528, !mcsema_real_eip !114
  %538 = and i32 %530, %537, !mcsema_real_eip !114
  %539 = icmp slt i32 %538, 0
  store i1 %539, i1* %OF_val, !mcsema_real_eip !114
  %540 = trunc i32 %529 to i8, !mcsema_real_eip !114
  %541 = tail call i8 @llvm.ctpop.i8(i8 %540), !mcsema_real_eip !114
  %542 = and i8 %541, 1
  %543 = icmp eq i8 %542, 0
  store i1 %543, i1* %PF_val, !mcsema_real_eip !114
  %544 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %544, i1* %CF_val, !mcsema_real_eip !114
  %545 = zext i32 %529 to i64, !mcsema_real_eip !114
  store i64 %545, i64* %RSI_val, !mcsema_real_eip !114
  %546 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %547 = add i64 %546, -64, !mcsema_real_eip !115
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !115
  %_head_p2i_405 = ptrtoint i64* %548 to i64
  %_offset_above_rbp_406 = sub i64 %_head_p2i_405, %_local_stack_end_
  %_address_in_parent_stack_407 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_406
  %_cond0_408 = icmp ugt i64 %_head_p2i_405, %_local_stack_end_
  %_cond1_409 = icmp ugt i64 %_head_p2i_405, %_parent_stack_end_ptr_
  %_cond2_410 = icmp ult i64 %_head_p2i_405, %_parent_stack_start_ptr_
  %_cond3_411 = or i1 %_cond1_409, %_cond2_410
  %_cond4_412 = icmp ule i64 %_address_in_parent_stack_407, %_parent_stack_end_ptr_
  %_cond5_413 = and i1 %_cond0_408, %_cond3_411
  %_cond6_414 = and i1 %_cond5_413, %_cond4_412
  br i1 %_cond6_414, label %549, label %550

; <label>:549:                                    ; preds = %525
  %_address_in_parent_stack_415 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_406
  br label %550

; <label>:550:                                    ; preds = %525, %549
  %551 = phi i64 [ %_head_p2i_405, %525 ], [ %_address_in_parent_stack_415, %549 ]
  %_address_ptr_in_parent_stack_416 = inttoptr i64 %551 to i64*
  %_new_load_417 = load i64, i64* %_address_ptr_in_parent_stack_416
  store i64 %_new_load_417, i64* %RCX_val, !mcsema_real_eip !115
  %552 = add i64 %_new_load_417, 8, !mcsema_real_eip !116
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !116
  %554 = bitcast i64* %553 to i32*
  %_head_p2i_418 = ptrtoint i32* %554 to i64
  %_offset_above_rbp_419 = sub i64 %_head_p2i_418, %_local_stack_end_
  %_address_in_parent_stack_420 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_419
  %_cond0_421 = icmp ugt i64 %_head_p2i_418, %_local_stack_end_
  %_cond1_422 = icmp ugt i64 %_head_p2i_418, %_parent_stack_end_ptr_
  %_cond2_423 = icmp ult i64 %_head_p2i_418, %_parent_stack_start_ptr_
  %_cond3_424 = or i1 %_cond1_422, %_cond2_423
  %_cond4_425 = icmp ule i64 %_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond5_426 = and i1 %_cond0_421, %_cond3_424
  %_cond6_427 = and i1 %_cond5_426, %_cond4_425
  br i1 %_cond6_427, label %555, label %556

; <label>:555:                                    ; preds = %550
  %_address_in_parent_stack_428 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_419
  br label %556

; <label>:556:                                    ; preds = %550, %555
  %557 = phi i64 [ %_head_p2i_418, %550 ], [ %_address_in_parent_stack_428, %555 ]
  %_address_ptr_in_parent_stack_429 = inttoptr i64 %557 to i32*
  %_new_load_430 = load i32, i32* %_address_ptr_in_parent_stack_429
  %558 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %559 = trunc i64 %558 to i32, !mcsema_real_eip !116
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %559, i32 %_new_load_430)
  %560 = extractvalue { i32, i1 } %uadd80, 0
  %561 = xor i32 %560, %_new_load_430, !mcsema_real_eip !116
  %562 = xor i32 %561, %559, !mcsema_real_eip !116
  %563 = and i32 %562, 16, !mcsema_real_eip !116
  %564 = icmp ne i32 %563, 0, !mcsema_real_eip !116
  store i1 %564, i1* %AF_val, !mcsema_real_eip !116
  %565 = icmp slt i32 %560, 0
  store i1 %565, i1* %SF_val, !mcsema_real_eip !116
  %566 = icmp eq i32 %560, 0, !mcsema_real_eip !116
  store i1 %566, i1* %ZF_val, !mcsema_real_eip !116
  %567 = xor i32 %_new_load_430, -2147483648, !mcsema_real_eip !116
  %568 = xor i32 %567, %559, !mcsema_real_eip !116
  %569 = and i32 %561, %568, !mcsema_real_eip !116
  %570 = icmp slt i32 %569, 0
  store i1 %570, i1* %OF_val, !mcsema_real_eip !116
  %571 = trunc i32 %560 to i8, !mcsema_real_eip !116
  %572 = tail call i8 @llvm.ctpop.i8(i8 %571), !mcsema_real_eip !116
  %573 = and i8 %572, 1
  %574 = icmp eq i8 %573, 0
  store i1 %574, i1* %PF_val, !mcsema_real_eip !116
  %575 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %575, i1* %CF_val, !mcsema_real_eip !116
  %576 = zext i32 %560 to i64, !mcsema_real_eip !116
  store i64 %576, i64* %RSI_val, !mcsema_real_eip !116
  %577 = load i64, i64* %RAX_val, !mcsema_real_eip !117
  %578 = add i64 %577, 8, !mcsema_real_eip !117
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !117
  %580 = bitcast i64* %579 to i32*
  %_head_p2i_431 = ptrtoint i32* %580 to i64
  %_offset_above_rbp_432 = sub i64 %_head_p2i_431, %_local_stack_end_
  %_address_in_parent_stack_433 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_432
  %_cond0_434 = icmp ugt i64 %_head_p2i_431, %_local_stack_end_
  %_cond1_435 = icmp ugt i64 %_head_p2i_431, %_parent_stack_end_ptr_
  %_cond2_436 = icmp ult i64 %_head_p2i_431, %_parent_stack_start_ptr_
  %_cond3_437 = or i1 %_cond1_435, %_cond2_436
  %_cond4_438 = icmp ule i64 %_address_in_parent_stack_433, %_parent_stack_end_ptr_
  %_cond5_439 = and i1 %_cond0_434, %_cond3_437
  %_cond6_440 = and i1 %_cond5_439, %_cond4_438
  br i1 %_cond6_440, label %581, label %582

; <label>:581:                                    ; preds = %556
  %_address_in_parent_stack_441 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_432
  br label %582

; <label>:582:                                    ; preds = %556, %581
  %583 = phi i64 [ %_head_p2i_431, %556 ], [ %_address_in_parent_stack_441, %581 ]
  %_address_ptr_in_parent_stack_442 = inttoptr i64 %583 to i32*
  %_new_load_443 = load i32, i32* %_address_ptr_in_parent_stack_442
  %584 = zext i32 %_new_load_443 to i64, !mcsema_real_eip !117
  store i64 %584, i64* %R8_val, !mcsema_real_eip !117
  %585 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %586 = add i64 %585, -88, !mcsema_real_eip !118
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !118
  %_head_p2i_444 = ptrtoint i64* %587 to i64
  %_offset_above_rbp_445 = sub i64 %_head_p2i_444, %_local_stack_end_
  %_address_in_parent_stack_446 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_445
  %_cond0_447 = icmp ugt i64 %_head_p2i_444, %_local_stack_end_
  %_cond1_448 = icmp ugt i64 %_head_p2i_444, %_parent_stack_end_ptr_
  %_cond2_449 = icmp ult i64 %_head_p2i_444, %_parent_stack_start_ptr_
  %_cond3_450 = or i1 %_cond1_448, %_cond2_449
  %_cond4_451 = icmp ule i64 %_address_in_parent_stack_446, %_parent_stack_end_ptr_
  %_cond5_452 = and i1 %_cond0_447, %_cond3_450
  %_cond6_453 = and i1 %_cond5_452, %_cond4_451
  br i1 %_cond6_453, label %588, label %589

; <label>:588:                                    ; preds = %582
  %_address_in_parent_stack_454 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_445
  br label %589

; <label>:589:                                    ; preds = %582, %588
  %590 = phi i64 [ %_head_p2i_444, %582 ], [ %_address_in_parent_stack_454, %588 ]
  %_address_ptr_in_parent_stack_455 = inttoptr i64 %590 to i64*
  %_new_load_456 = load i64, i64* %_address_ptr_in_parent_stack_455
  store i64 %_new_load_456, i64* %RCX_val, !mcsema_real_eip !118
  %591 = add i64 %_new_load_456, 8, !mcsema_real_eip !119
  %592 = inttoptr i64 %591 to i64*, !mcsema_real_eip !119
  %593 = bitcast i64* %592 to i32*
  %_head_p2i_457 = ptrtoint i32* %593 to i64
  %_offset_above_rbp_458 = sub i64 %_head_p2i_457, %_local_stack_end_
  %_address_in_parent_stack_459 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_458
  %_cond0_460 = icmp ugt i64 %_head_p2i_457, %_local_stack_end_
  %_cond1_461 = icmp ugt i64 %_head_p2i_457, %_parent_stack_end_ptr_
  %_cond2_462 = icmp ult i64 %_head_p2i_457, %_parent_stack_start_ptr_
  %_cond3_463 = or i1 %_cond1_461, %_cond2_462
  %_cond4_464 = icmp ule i64 %_address_in_parent_stack_459, %_parent_stack_end_ptr_
  %_cond5_465 = and i1 %_cond0_460, %_cond3_463
  %_cond6_466 = and i1 %_cond5_465, %_cond4_464
  br i1 %_cond6_466, label %594, label %595

; <label>:594:                                    ; preds = %589
  %_address_in_parent_stack_467 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_458
  br label %595

; <label>:595:                                    ; preds = %589, %594
  %596 = phi i64 [ %_head_p2i_457, %589 ], [ %_address_in_parent_stack_467, %594 ]
  %_address_ptr_in_parent_stack_468 = inttoptr i64 %596 to i32*
  %_new_load_469 = load i32, i32* %_address_ptr_in_parent_stack_468
  %597 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %598 = trunc i64 %597 to i32, !mcsema_real_eip !119
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %598, i32 %_new_load_469)
  %599 = extractvalue { i32, i1 } %uadd81, 0
  %600 = xor i32 %599, %_new_load_469, !mcsema_real_eip !119
  %601 = xor i32 %600, %598, !mcsema_real_eip !119
  %602 = and i32 %601, 16, !mcsema_real_eip !119
  %603 = icmp ne i32 %602, 0, !mcsema_real_eip !119
  store i1 %603, i1* %AF_val, !mcsema_real_eip !119
  %604 = icmp slt i32 %599, 0
  store i1 %604, i1* %SF_val, !mcsema_real_eip !119
  %605 = icmp eq i32 %599, 0, !mcsema_real_eip !119
  store i1 %605, i1* %ZF_val, !mcsema_real_eip !119
  %606 = xor i32 %_new_load_469, -2147483648, !mcsema_real_eip !119
  %607 = xor i32 %606, %598, !mcsema_real_eip !119
  %608 = and i32 %600, %607, !mcsema_real_eip !119
  %609 = icmp slt i32 %608, 0
  store i1 %609, i1* %OF_val, !mcsema_real_eip !119
  %610 = trunc i32 %599 to i8, !mcsema_real_eip !119
  %611 = tail call i8 @llvm.ctpop.i8(i8 %610), !mcsema_real_eip !119
  %612 = and i8 %611, 1
  %613 = icmp eq i8 %612, 0
  store i1 %613, i1* %PF_val, !mcsema_real_eip !119
  %614 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %614, i1* %CF_val, !mcsema_real_eip !119
  %615 = zext i32 %599 to i64, !mcsema_real_eip !119
  store i64 %615, i64* %R8_val, !mcsema_real_eip !119
  %616 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %617 = add i64 %616, -96, !mcsema_real_eip !120
  %618 = inttoptr i64 %617 to i64*, !mcsema_real_eip !120
  %_head_p2i_470 = ptrtoint i64* %618 to i64
  %_offset_above_rbp_471 = sub i64 %_head_p2i_470, %_local_stack_end_
  %_address_in_parent_stack_472 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_471
  %_cond0_473 = icmp ugt i64 %_head_p2i_470, %_local_stack_end_
  %_cond1_474 = icmp ugt i64 %_head_p2i_470, %_parent_stack_end_ptr_
  %_cond2_475 = icmp ult i64 %_head_p2i_470, %_parent_stack_start_ptr_
  %_cond3_476 = or i1 %_cond1_474, %_cond2_475
  %_cond4_477 = icmp ule i64 %_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond5_478 = and i1 %_cond0_473, %_cond3_476
  %_cond6_479 = and i1 %_cond5_478, %_cond4_477
  br i1 %_cond6_479, label %619, label %620

; <label>:619:                                    ; preds = %595
  %_address_in_parent_stack_480 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_471
  br label %620

; <label>:620:                                    ; preds = %595, %619
  %621 = phi i64 [ %_head_p2i_470, %595 ], [ %_address_in_parent_stack_480, %619 ]
  %_address_ptr_in_parent_stack_481 = inttoptr i64 %621 to i64*
  %_new_load_482 = load i64, i64* %_address_ptr_in_parent_stack_481
  store i64 %_new_load_482, i64* %RCX_val, !mcsema_real_eip !120
  %622 = add i64 %_new_load_482, 8, !mcsema_real_eip !121
  %623 = inttoptr i64 %622 to i64*, !mcsema_real_eip !121
  %624 = bitcast i64* %623 to i32*
  %_head_p2i_483 = ptrtoint i32* %624 to i64
  %_offset_above_rbp_484 = sub i64 %_head_p2i_483, %_local_stack_end_
  %_address_in_parent_stack_485 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_484
  %_cond0_486 = icmp ugt i64 %_head_p2i_483, %_local_stack_end_
  %_cond1_487 = icmp ugt i64 %_head_p2i_483, %_parent_stack_end_ptr_
  %_cond2_488 = icmp ult i64 %_head_p2i_483, %_parent_stack_start_ptr_
  %_cond3_489 = or i1 %_cond1_487, %_cond2_488
  %_cond4_490 = icmp ule i64 %_address_in_parent_stack_485, %_parent_stack_end_ptr_
  %_cond5_491 = and i1 %_cond0_486, %_cond3_489
  %_cond6_492 = and i1 %_cond5_491, %_cond4_490
  br i1 %_cond6_492, label %625, label %626

; <label>:625:                                    ; preds = %620
  %_address_in_parent_stack_493 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_484
  br label %626

; <label>:626:                                    ; preds = %620, %625
  %627 = phi i64 [ %_head_p2i_483, %620 ], [ %_address_in_parent_stack_493, %625 ]
  %_address_ptr_in_parent_stack_494 = inttoptr i64 %627 to i32*
  %_new_load_495 = load i32, i32* %_address_ptr_in_parent_stack_494
  %628 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %629 = trunc i64 %628 to i32, !mcsema_real_eip !121
  %630 = add i32 %629, %_new_load_495
  %631 = zext i32 %630 to i64, !mcsema_real_eip !121
  store i64 %631, i64* %R8_val, !mcsema_real_eip !121
  %632 = load i64, i64* %RSI_val, !mcsema_real_eip !122
  %633 = trunc i64 %632 to i32, !mcsema_real_eip !122
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %630, i32 %633)
  %634 = extractvalue { i32, i1 } %uadd83, 0
  %635 = xor i32 %634, %633, !mcsema_real_eip !122
  %636 = xor i32 %635, %630, !mcsema_real_eip !122
  %637 = and i32 %636, 16, !mcsema_real_eip !122
  %638 = icmp ne i32 %637, 0, !mcsema_real_eip !122
  store i1 %638, i1* %AF_val, !mcsema_real_eip !122
  %639 = icmp slt i32 %634, 0
  store i1 %639, i1* %SF_val, !mcsema_real_eip !122
  %640 = icmp eq i32 %634, 0, !mcsema_real_eip !122
  store i1 %640, i1* %ZF_val, !mcsema_real_eip !122
  %641 = xor i32 %630, -2147483648, !mcsema_real_eip !122
  %642 = xor i32 %641, %633, !mcsema_real_eip !122
  %643 = and i32 %635, %642, !mcsema_real_eip !122
  %644 = icmp slt i32 %643, 0
  store i1 %644, i1* %OF_val, !mcsema_real_eip !122
  %645 = trunc i32 %634 to i8, !mcsema_real_eip !122
  %646 = tail call i8 @llvm.ctpop.i8(i8 %645), !mcsema_real_eip !122
  %647 = and i8 %646, 1
  %648 = icmp eq i8 %647, 0
  store i1 %648, i1* %PF_val, !mcsema_real_eip !122
  %649 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %649, i1* %CF_val, !mcsema_real_eip !122
  %650 = zext i32 %634 to i64, !mcsema_real_eip !122
  store i64 %650, i64* %RSI_val, !mcsema_real_eip !122
  %651 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %652 = add i64 %651, -104, !mcsema_real_eip !123
  %653 = inttoptr i64 %652 to i64*, !mcsema_real_eip !123
  %_head_p2i_496 = ptrtoint i64* %653 to i64
  %_offset_above_rbp_497 = sub i64 %_head_p2i_496, %_local_stack_end_
  %_address_in_parent_stack_498 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_497
  %_cond0_499 = icmp ugt i64 %_head_p2i_496, %_local_stack_end_
  %_cond1_500 = icmp ugt i64 %_head_p2i_496, %_parent_stack_end_ptr_
  %_cond2_501 = icmp ult i64 %_head_p2i_496, %_parent_stack_start_ptr_
  %_cond3_502 = or i1 %_cond1_500, %_cond2_501
  %_cond4_503 = icmp ule i64 %_address_in_parent_stack_498, %_parent_stack_end_ptr_
  %_cond5_504 = and i1 %_cond0_499, %_cond3_502
  %_cond6_505 = and i1 %_cond5_504, %_cond4_503
  br i1 %_cond6_505, label %654, label %655

; <label>:654:                                    ; preds = %626
  %_address_in_parent_stack_506 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_497
  br label %655

; <label>:655:                                    ; preds = %626, %654
  %656 = phi i64 [ %_head_p2i_496, %626 ], [ %_address_in_parent_stack_506, %654 ]
  %_address_ptr_in_parent_stack_507 = inttoptr i64 %656 to i64*
  %_new_load_508 = load i64, i64* %_address_ptr_in_parent_stack_507
  store i64 %_new_load_508, i64* %RCX_val, !mcsema_real_eip !123
  %657 = add i64 %_new_load_508, 8, !mcsema_real_eip !124
  %658 = inttoptr i64 %657 to i64*, !mcsema_real_eip !124
  %659 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %660 = trunc i64 %659 to i32, !mcsema_real_eip !124
  %661 = bitcast i64* %658 to i32*
  store i32 %660, i32* %661, !mcsema_real_eip !124
  %662 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %663 = add i64 %662, -104, !mcsema_real_eip !125
  %664 = inttoptr i64 %663 to i64*, !mcsema_real_eip !125
  %_head_p2i_509 = ptrtoint i64* %664 to i64
  %_offset_above_rbp_510 = sub i64 %_head_p2i_509, %_local_stack_end_
  %_address_in_parent_stack_511 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_510
  %_cond0_512 = icmp ugt i64 %_head_p2i_509, %_local_stack_end_
  %_cond1_513 = icmp ugt i64 %_head_p2i_509, %_parent_stack_end_ptr_
  %_cond2_514 = icmp ult i64 %_head_p2i_509, %_parent_stack_start_ptr_
  %_cond3_515 = or i1 %_cond1_513, %_cond2_514
  %_cond4_516 = icmp ule i64 %_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond5_517 = and i1 %_cond0_512, %_cond3_515
  %_cond6_518 = and i1 %_cond5_517, %_cond4_516
  br i1 %_cond6_518, label %665, label %666

; <label>:665:                                    ; preds = %655
  %_address_in_parent_stack_519 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_510
  br label %666

; <label>:666:                                    ; preds = %655, %665
  %667 = phi i64 [ %_head_p2i_509, %655 ], [ %_address_in_parent_stack_519, %665 ]
  %_address_ptr_in_parent_stack_520 = inttoptr i64 %667 to i64*
  %_new_load_521 = load i64, i64* %_address_ptr_in_parent_stack_520
  store i64 %_new_load_521, i64* %RAX_val, !mcsema_real_eip !125
  %668 = load i64, i64* %RSP_val, !mcsema_real_eip !126
  %uadd84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %668, i64 96)
  %669 = extractvalue { i64, i1 } %uadd84, 0
  %670 = xor i64 %669, %668, !mcsema_real_eip !126
  %671 = and i64 %670, 16, !mcsema_real_eip !126
  %672 = icmp ne i64 %671, 0, !mcsema_real_eip !126
  store i1 %672, i1* %AF_val, !mcsema_real_eip !126
  %673 = icmp slt i64 %669, 0
  store i1 %673, i1* %SF_val, !mcsema_real_eip !126
  %674 = icmp eq i64 %669, 0, !mcsema_real_eip !126
  store i1 %674, i1* %ZF_val, !mcsema_real_eip !126
  %675 = xor i64 %668, -9223372036854775808, !mcsema_real_eip !126
  %676 = and i64 %670, %675, !mcsema_real_eip !126
  %677 = icmp slt i64 %676, 0
  store i1 %677, i1* %OF_val, !mcsema_real_eip !126
  %678 = trunc i64 %669 to i8, !mcsema_real_eip !126
  %679 = tail call i8 @llvm.ctpop.i8(i8 %678), !mcsema_real_eip !126
  %680 = and i8 %679, 1
  %681 = icmp eq i8 %680, 0
  store i1 %681, i1* %PF_val, !mcsema_real_eip !126
  %682 = extractvalue { i64, i1 } %uadd84, 1
  store i1 %682, i1* %CF_val, !mcsema_real_eip !126
  store i64 %669, i64* %RSP_val, !mcsema_real_eip !126
  %683 = inttoptr i64 %669 to i64*, !mcsema_real_eip !127
  %_head_p2i_522 = ptrtoint i64* %683 to i64
  %_offset_above_rbp_523 = sub i64 %_head_p2i_522, %_local_stack_end_
  %_address_in_parent_stack_524 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_523
  %_cond0_525 = icmp ugt i64 %_head_p2i_522, %_local_stack_end_
  %_cond1_526 = icmp ugt i64 %_head_p2i_522, %_parent_stack_end_ptr_
  %_cond2_527 = icmp ult i64 %_head_p2i_522, %_parent_stack_start_ptr_
  %_cond3_528 = or i1 %_cond1_526, %_cond2_527
  %_cond4_529 = icmp ule i64 %_address_in_parent_stack_524, %_parent_stack_end_ptr_
  %_cond5_530 = and i1 %_cond0_525, %_cond3_528
  %_cond6_531 = and i1 %_cond5_530, %_cond4_529
  br i1 %_cond6_531, label %684, label %685

; <label>:684:                                    ; preds = %666
  %_address_in_parent_stack_532 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_523
  br label %685

; <label>:685:                                    ; preds = %666, %684
  %686 = phi i64 [ %_head_p2i_522, %666 ], [ %_address_in_parent_stack_532, %684 ]
  %_address_ptr_in_parent_stack_533 = inttoptr i64 %686 to i64*
  %_new_load_534 = load i64, i64* %_address_ptr_in_parent_stack_533
  store i64 %_new_load_534, i64* %RBX_val, !mcsema_real_eip !127
  %687 = add i64 %669, 8, !mcsema_real_eip !127
  store i64 %687, i64* %RSP_val, !mcsema_real_eip !127
  %688 = inttoptr i64 %687 to i64*, !mcsema_real_eip !128
  %_head_p2i_535 = ptrtoint i64* %688 to i64
  %_offset_above_rbp_536 = sub i64 %_head_p2i_535, %_local_stack_end_
  %_address_in_parent_stack_537 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_536
  %_cond0_538 = icmp ugt i64 %_head_p2i_535, %_local_stack_end_
  %_cond1_539 = icmp ugt i64 %_head_p2i_535, %_parent_stack_end_ptr_
  %_cond2_540 = icmp ult i64 %_head_p2i_535, %_parent_stack_start_ptr_
  %_cond3_541 = or i1 %_cond1_539, %_cond2_540
  %_cond4_542 = icmp ule i64 %_address_in_parent_stack_537, %_parent_stack_end_ptr_
  %_cond5_543 = and i1 %_cond0_538, %_cond3_541
  %_cond6_544 = and i1 %_cond5_543, %_cond4_542
  br i1 %_cond6_544, label %689, label %690

; <label>:689:                                    ; preds = %685
  %_address_in_parent_stack_545 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_536
  br label %690

; <label>:690:                                    ; preds = %685, %689
  %691 = phi i64 [ %_head_p2i_535, %685 ], [ %_address_in_parent_stack_545, %689 ]
  %_address_ptr_in_parent_stack_546 = inttoptr i64 %691 to i64*
  %_new_load_547 = load i64, i64* %_address_ptr_in_parent_stack_546
  store i64 %_new_load_547, i64* %R14_val, !mcsema_real_eip !128
  %692 = add i64 %669, 16, !mcsema_real_eip !128
  store i64 %692, i64* %RSP_val, !mcsema_real_eip !128
  %693 = inttoptr i64 %692 to i64*, !mcsema_real_eip !129
  %_head_p2i_548 = ptrtoint i64* %693 to i64
  %_offset_above_rbp_549 = sub i64 %_head_p2i_548, %_local_stack_end_
  %_address_in_parent_stack_550 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_549
  %_cond0_551 = icmp ugt i64 %_head_p2i_548, %_local_stack_end_
  %_cond1_552 = icmp ugt i64 %_head_p2i_548, %_parent_stack_end_ptr_
  %_cond2_553 = icmp ult i64 %_head_p2i_548, %_parent_stack_start_ptr_
  %_cond3_554 = or i1 %_cond1_552, %_cond2_553
  %_cond4_555 = icmp ule i64 %_address_in_parent_stack_550, %_parent_stack_end_ptr_
  %_cond5_556 = and i1 %_cond0_551, %_cond3_554
  %_cond6_557 = and i1 %_cond5_556, %_cond4_555
  br i1 %_cond6_557, label %694, label %695

; <label>:694:                                    ; preds = %690
  %_address_in_parent_stack_558 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_549
  br label %695

; <label>:695:                                    ; preds = %690, %694
  %696 = phi i64 [ %_head_p2i_548, %690 ], [ %_address_in_parent_stack_558, %694 ]
  %_address_ptr_in_parent_stack_559 = inttoptr i64 %696 to i64*
  %_new_load_560 = load i64, i64* %_address_ptr_in_parent_stack_559
  store i64 %_new_load_560, i64* %RBP_val, !mcsema_real_eip !129
  %697 = add i64 %669, 32, !mcsema_real_eip !130
  store i64 %697, i64* %RSP_val, !mcsema_real_eip !130
  %698 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %698, i64* %RAX, !mcsema_real_eip !130
  %699 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %699, i64* %RBX, !mcsema_real_eip !130
  %700 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %700, i64* %RCX, !mcsema_real_eip !130
  %701 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %701, i64* %RDX, !mcsema_real_eip !130
  %702 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %702, i64* %RSI, !mcsema_real_eip !130
  %703 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %703, i64* %RDI, !mcsema_real_eip !130
  %704 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %704, i64* %RSP, !mcsema_real_eip !130
  %705 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %705, i64* %RBP, !mcsema_real_eip !130
  %706 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %706, i64* %R8, !mcsema_real_eip !130
  %707 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %707, i64* %R9, !mcsema_real_eip !130
  %708 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %708, i64* %R10, !mcsema_real_eip !130
  %709 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %709, i64* %R11, !mcsema_real_eip !130
  %710 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %710, i64* %R12, !mcsema_real_eip !130
  %711 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %711, i64* %R13, !mcsema_real_eip !130
  %712 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %712, i64* %R14, !mcsema_real_eip !130
  %713 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %713, i64* %R15, !mcsema_real_eip !130
  %714 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %714, i64* %RIP, !mcsema_real_eip !130
  %715 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %715, i1* %CF, align 1, !mcsema_real_eip !130
  %716 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %716, i1* %PF, align 1, !mcsema_real_eip !130
  %717 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %717, i1* %AF, align 1, !mcsema_real_eip !130
  %718 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %718, i1* %ZF, align 1, !mcsema_real_eip !130
  %719 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %719, i1* %SF, align 1, !mcsema_real_eip !130
  %720 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %720, i1* %OF, align 1, !mcsema_real_eip !130
  %721 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %721, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %722 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %722, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %723 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %723, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %724 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %724, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %725 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %725, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %726 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %726, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %727 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %727, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %728 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %728, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %729 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %729, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %730 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %730, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %731 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %731, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %732 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %732, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %733 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %733, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %734 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %734, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %735 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %735, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %736 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %736, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %737 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %737, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %738 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %738, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %739 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %739, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %740 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %740, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %741 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %741, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %742 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %742, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %743 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %743, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %744 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %744, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %_head_p2i_561 = ptrtoint i64* %53 to i64
  %_offset_above_rbp_562 = sub i64 %_head_p2i_561, %_local_stack_end_
  %_address_in_parent_stack_563 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_562
  %_cond0_564 = icmp ugt i64 %_head_p2i_561, %_local_stack_end_
  %_cond1_565 = icmp ugt i64 %_head_p2i_561, %_parent_stack_end_ptr_
  %_cond2_566 = icmp ult i64 %_head_p2i_561, %_parent_stack_start_ptr_
  %_cond3_567 = or i1 %_cond1_565, %_cond2_566
  %_cond4_568 = icmp ule i64 %_address_in_parent_stack_563, %_parent_stack_end_ptr_
  %_cond5_569 = and i1 %_cond0_564, %_cond3_567
  %_cond6_570 = and i1 %_cond5_569, %_cond4_568
  br i1 %_cond6_570, label %745, label %746

; <label>:745:                                    ; preds = %695
  %_address_in_parent_stack_571 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_562
  br label %746

; <label>:746:                                    ; preds = %695, %745
  %747 = phi i64 [ %_head_p2i_561, %695 ], [ %_address_in_parent_stack_571, %745 ]
  %_address_ptr_in_parent_stack_572 = inttoptr i64 %747 to i64*
  %_new_load_573 = load i64, i64* %_address_ptr_in_parent_stack_572
  store i64 %_new_load_573, i64* %52, align 4
  %748 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %748, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %749 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %749, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %750 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %750, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %751 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %751, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %752 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %752, i128* %XMM0, align 1, !mcsema_real_eip !130
  %753 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %753, i128* %XMM1, align 1, !mcsema_real_eip !130
  %754 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %754, i128* %XMM2, align 1, !mcsema_real_eip !130
  %755 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %755, i128* %XMM3, align 1, !mcsema_real_eip !130
  %756 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %756, i128* %XMM4, align 1, !mcsema_real_eip !130
  %757 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %757, i128* %XMM5, align 1, !mcsema_real_eip !130
  %758 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %758, i128* %XMM6, align 1, !mcsema_real_eip !130
  %759 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %759, i128* %XMM7, align 1, !mcsema_real_eip !130
  %760 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %760, i128* %XMM8, align 1, !mcsema_real_eip !130
  %761 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %761, i128* %XMM9, align 1, !mcsema_real_eip !130
  %762 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %762, i128* %XMM10, align 1, !mcsema_real_eip !130
  %763 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %763, i128* %XMM11, align 1, !mcsema_real_eip !130
  %764 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %764, i128* %XMM12, align 1, !mcsema_real_eip !130
  %765 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %765, i128* %XMM13, align 1, !mcsema_real_eip !130
  %766 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %766, i128* %XMM14, align 1, !mcsema_real_eip !130
  %767 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %767, i128* %XMM15, align 1, !mcsema_real_eip !130
  %768 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %768, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %769 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %769, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 257, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = !{i64 264, [19 x i8] c"\09movabsq\09$12, %rdi\00"}
!6 = !{i64 274, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = !{i64 281, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!8 = !{i64 288, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!9 = !{i64 295, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!10 = !{i64 302, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 307, [22 x i8] c"\09leaq\09-16(%rbp), %rdi\00"}
!12 = !{i64 311, [15 x i8] c"\09movl\09$1, %r8d\00"}
!13 = !{i64 317, [15 x i8] c"\09movl\09$2, %r9d\00"}
!14 = !{i64 323, [15 x i8] c"\09movl\09$3, %ecx\00"}
!15 = !{i64 328, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!16 = !{i64 332, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 336, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!18 = !{i64 342, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 346, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!20 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!21 = !{i64 357, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!22 = !{i64 364, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!23 = !{i64 368, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!24 = !{i64 372, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!25 = !{i64 376, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!26 = !{i64 380, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!27 = !{i64 384, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!28 = !{i64 388, [22 x i8] c"\09movq\09-48(%rbp), %rsi\00"}
!29 = !{i64 392, [23 x i8] c"\09movl\09-40(%rbp), %r10d\00"}
!30 = !{i64 396, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!31 = !{i64 400, [17 x i8] c"\09movq\09%rsi, %rdi\00"}
!32 = !{i64 403, [18 x i8] c"\09movl\09%r10d, %esi\00"}
!33 = !{i64 406, [22 x i8] c"\09movq\09-56(%rbp), %r11\00"}
!34 = !{i64 410, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!35 = !{i64 414, [17 x i8] c"\09movq\09%r11, %rdx\00"}
!36 = !{i64 417, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!37 = !{i64 420, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = !{i64 423, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!39 = !{i64 430, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!40 = !{i64 433, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!41 = !{i64 438, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!42 = !{i64 442, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!43 = !{i64 447, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!44 = !{i64 452, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!45 = !{i64 456, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!46 = !{i64 461, [12 x i8] c"\09callq\09-466\00"}
!47 = !{i64 466, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!48 = !{i64 470, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!49 = !{i64 474, [19 x i8] c"\09movl\09(%rax), %esi\00"}
!50 = !{i64 476, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!51 = !{i64 480, [20 x i8] c"\09addl\094(%rax), %esi\00"}
!52 = !{i64 483, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!53 = !{i64 487, [20 x i8] c"\09addl\098(%rax), %esi\00"}
!54 = !{i64 490, [17 x i8] c"\09movl\09%esi, %eax\00"}
!55 = !{i64 492, [17 x i8] c"\09addq\09$112, %rsp\00"}
!56 = !{i64 496, [11 x i8] c"\09popq\09%rbp\00"}
!57 = !{i64 497, [6 x i8] c"\09retq\00"}
!58 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!59 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!60 = !{i64 4, [12 x i8] c"\09pushq\09%r14\00"}
!61 = !{i64 6, [12 x i8] c"\09pushq\09%rbx\00"}
!62 = !{i64 7, [16 x i8] c"\09subq\09$96, %rsp\00"}
!63 = !{i64 11, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!64 = !{i64 15, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!65 = !{i64 19, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!66 = !{i64 23, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!67 = !{i64 26, [19 x i8] c"\09movabsq\09$12, %r14\00"}
!68 = !{i64 36, [22 x i8] c"\09movq\09%rdi, -48(%rbp)\00"}
!69 = !{i64 40, [22 x i8] c"\09movl\09%esi, -40(%rbp)\00"}
!70 = !{i64 43, [22 x i8] c"\09movq\09-48(%rbp), %rdi\00"}
!71 = !{i64 47, [22 x i8] c"\09movq\09%rdi, -32(%rbp)\00"}
!72 = !{i64 51, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!73 = !{i64 54, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!74 = !{i64 57, [22 x i8] c"\09movq\09%rdx, -56(%rbp)\00"}
!75 = !{i64 61, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!76 = !{i64 65, [22 x i8] c"\09movl\09%r8d, -68(%rbp)\00"}
!77 = !{i64 69, [22 x i8] c"\09movl\09%r9d, -72(%rbp)\00"}
!78 = !{i64 73, [22 x i8] c"\09movl\09%ebx, -76(%rbp)\00"}
!79 = !{i64 76, [22 x i8] c"\09movq\09%r10, -88(%rbp)\00"}
!80 = !{i64 80, [22 x i8] c"\09movq\09%rax, -96(%rbp)\00"}
!81 = !{i64 84, [17 x i8] c"\09movq\09%r14, %rdi\00"}
!82 = !{i64 87, [23 x i8] c"\09movq\09%r11, -112(%rbp)\00"}
!83 = !{i64 91, [9 x i8] c"\09callq\090\00"}
!84 = !{i64 96, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!85 = !{i64 100, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!86 = !{i64 103, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!87 = !{i64 107, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!88 = !{i64 109, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = !{i64 113, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!90 = !{i64 115, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!91 = !{i64 119, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!92 = !{i64 122, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!93 = !{i64 126, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!94 = !{i64 129, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!95 = !{i64 133, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!96 = !{i64 136, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!97 = !{i64 139, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!98 = !{i64 143, [19 x i8] c"\09movl\09%esi, (%rcx)\00"}
!99 = !{i64 145, [22 x i8] c"\09movl\09-28(%rbp), %esi\00"}
!100 = !{i64 148, [22 x i8] c"\09movq\09-56(%rbp), %rcx\00"}
!101 = !{i64 152, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!102 = !{i64 155, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!103 = !{i64 159, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!104 = !{i64 162, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!105 = !{i64 166, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!106 = !{i64 170, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!107 = !{i64 174, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!108 = !{i64 178, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!109 = !{i64 182, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = !{i64 185, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!111 = !{i64 189, [20 x i8] c"\09movl\09%esi, 4(%rcx)\00"}
!112 = !{i64 192, [22 x i8] c"\09movl\09-24(%rbp), %esi\00"}
!113 = !{i64 195, [22 x i8] c"\09movq\09-56(%rbp), %rcx\00"}
!114 = !{i64 199, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!115 = !{i64 202, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!116 = !{i64 206, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!117 = !{i64 209, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!118 = !{i64 213, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!119 = !{i64 217, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!120 = !{i64 221, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!121 = !{i64 225, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!122 = !{i64 229, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!123 = !{i64 232, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!124 = !{i64 236, [20 x i8] c"\09movl\09%esi, 8(%rcx)\00"}
!125 = !{i64 239, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!126 = !{i64 243, [16 x i8] c"\09addq\09$96, %rsp\00"}
!127 = !{i64 247, [11 x i8] c"\09popq\09%rbx\00"}
!128 = !{i64 248, [11 x i8] c"\09popq\09%r14\00"}
!129 = !{i64 250, [11 x i8] c"\09popq\09%rbp\00"}
!130 = !{i64 251, [6 x i8] c"\09retq\00"}
