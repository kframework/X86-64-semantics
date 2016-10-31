; ModuleID = 'Output/test_26_1.clang.trans.bc'
source_filename = "Output/test_26_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_90(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %79 = add i64 %78, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -88
  %81 = add i64 %78, -88
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
  %91 = icmp ult i64 %79, 80, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %_load_rbp_ptr_2 = load i8*, i8** %_RBP_ptr_
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %_new_gep_3 = getelementptr i8, i8* %_load_rbp_ptr_2, i64 -4
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %99 = add i64 %98, -16, !mcsema_real_eip !6
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 10, i32* %101, !mcsema_real_eip !6
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %103 = add i64 %102, -12, !mcsema_real_eip !7
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !7
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -8
  %107 = add i64 %106, -8, !mcsema_real_eip !8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 10, i32* %109, !mcsema_real_eip !8
  store i64 24, i64* %RDI_val, !mcsema_real_eip !9
  %110 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !10
  store i64 %110, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -24
  %112 = add i64 %111, -24, !mcsema_real_eip !11
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !11
  store i64 %110, i64* %_allin_new_bt_16, !mcsema_real_eip !11
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %115 = add i64 %114, -24, !mcsema_real_eip !12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !12
  %117 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !12
  store i64 %117, i64* %RAX_val, !mcsema_real_eip !12
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !13
  %119 = bitcast i64* %118 to i32*
  store i32 5, i32* %119, !mcsema_real_eip !13
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %121 = add i64 %120, -24, !mcsema_real_eip !14
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !14
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !14
  %124 = add i64 %123, 4, !mcsema_real_eip !15
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !15
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !15
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %128 = add i64 %127, -24, !mcsema_real_eip !16
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !16
  %130 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !16
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !16
  %131 = add i64 %130, 8, !mcsema_real_eip !17
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !17
  %133 = bitcast i64* %132 to i32*
  store i32 5, i32* %133, !mcsema_real_eip !17
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %135 = add i64 %134, -24, !mcsema_real_eip !18
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !18
  %137 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !18
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %138 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %_new_ptr2int_30 = ptrtoint i8* %_load_rsp_ptr_29 to i64
  store volatile i64 %_new_ptr2int_30, i64* %RDI_val
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 8
  %139 = add i64 %138, 8, !mcsema_real_eip !20
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !20
  store i64 %137, i64* %_allin_new_bt_32, !mcsema_real_eip !20
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -16
  %142 = add i64 %141, -16, !mcsema_real_eip !21
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !21
  %144 = ptrtoint i64* %_allin_new_bt_35 to i64, !mcsema_real_eip !21
  store i64 %144, i64* %RAX_val, !mcsema_real_eip !21
  %145 = load i64, i64* %RDI_val, !mcsema_real_eip !22
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !22
  store i64 %144, i64* %146, !mcsema_real_eip !22
  store i64 1, i64* %RCX_val, !mcsema_real_eip !23
  store i64 2, i64* %RDX_val, !mcsema_real_eip !24
  store i64 1, i64* %RDI_val, !mcsema_real_eip !25
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -60
  %148 = add i64 %147, -60, !mcsema_real_eip !26
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !26
  %150 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 3, i32* %150, !mcsema_real_eip !26
  %151 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  %152 = and i64 %151, 4294967295
  store i64 %152, i64* %RSI_val, !mcsema_real_eip !27
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -60
  %154 = add i64 %153, -60, !mcsema_real_eip !28
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !28
  %156 = bitcast i64* %_allin_new_bt_41 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !28
  %158 = zext i32 %157 to i64, !mcsema_real_eip !28
  store i64 %158, i64* %R8_val, !mcsema_real_eip !28
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -64
  %160 = add i64 %159, -64, !mcsema_real_eip !29
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !29
  %162 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !29
  %164 = bitcast i64* %_allin_new_bt_44 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !29
  %165 = load i64, i64* %R8_val, !mcsema_real_eip !30
  %166 = and i64 %165, 4294967295
  store i64 %166, i64* %RDX_val, !mcsema_real_eip !30
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -64
  %168 = add i64 %167, -64, !mcsema_real_eip !31
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !31
  %170 = bitcast i64* %_allin_new_bt_47 to i32*
  %171 = load i32, i32* %170, !mcsema_real_eip !31
  %172 = zext i32 %171 to i64, !mcsema_real_eip !31
  store i64 %172, i64* %R8_val, !mcsema_real_eip !31
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -60
  %174 = add i64 %173, -60, !mcsema_real_eip !32
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !32
  %176 = bitcast i64* %_allin_new_bt_50 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !32
  %178 = zext i32 %177 to i64, !mcsema_real_eip !32
  store i64 %178, i64* %R9_val, !mcsema_real_eip !32
  %_load_rsp_ptr_51 = load i8*, i8** %_RSP_ptr_
  %179 = load i64, i64* %RSP_val, !mcsema_real_eip !33
  %_new_gep_52 = getelementptr i8, i8* %_load_rsp_ptr_51, i64 -8
  %180 = add i64 %179, -8
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !33
  store i64 -4981261766360305936, i64* %_allin_new_bt_53, !mcsema_real_eip !33
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_
  store i64 %180, i64* %RSP_val, !mcsema_real_eip !33
  %182 = load i64, i64* %RAX_val, !mcsema_real_eip !33
  store i64 %182, i64* %RAX, !mcsema_real_eip !33
  %183 = load i64, i64* %RBX_val, !mcsema_real_eip !33
  store i64 %183, i64* %RBX, !mcsema_real_eip !33
  %184 = load i64, i64* %RCX_val, !mcsema_real_eip !33
  store i64 %184, i64* %RCX, !mcsema_real_eip !33
  %185 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  store i64 %185, i64* %RDX, !mcsema_real_eip !33
  %186 = load i64, i64* %RSI_val, !mcsema_real_eip !33
  store i64 %186, i64* %RSI, !mcsema_real_eip !33
  %187 = load i64, i64* %RDI_val, !mcsema_real_eip !33
  store i64 %187, i64* %RDI, !mcsema_real_eip !33
  %_load_rsp_ptr_54 = load i8*, i8** %_RSP_ptr_
  %188 = load i64, i64* %RSP_val, !mcsema_real_eip !33
  %_new_ptr2int_55 = ptrtoint i8* %_load_rsp_ptr_54 to i64
  store volatile i64 %_new_ptr2int_55, i64* %RSP
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_ptr2int_57 = ptrtoint i8* %_load_rbp_ptr_56 to i64
  store volatile i64 %_new_ptr2int_57, i64* %RBP
  %190 = load i64, i64* %R8_val, !mcsema_real_eip !33
  store i64 %190, i64* %R8, !mcsema_real_eip !33
  %191 = load i64, i64* %R9_val, !mcsema_real_eip !33
  store i64 %191, i64* %R9, !mcsema_real_eip !33
  %192 = load i64, i64* %R10_val, !mcsema_real_eip !33
  store i64 %192, i64* %R10, !mcsema_real_eip !33
  %193 = load i64, i64* %R11_val, !mcsema_real_eip !33
  store i64 %193, i64* %R11, !mcsema_real_eip !33
  %194 = load i64, i64* %R12_val, !mcsema_real_eip !33
  store i64 %194, i64* %R12, !mcsema_real_eip !33
  %195 = load i64, i64* %R13_val, !mcsema_real_eip !33
  store i64 %195, i64* %R13, !mcsema_real_eip !33
  %196 = load i64, i64* %R14_val, !mcsema_real_eip !33
  store i64 %196, i64* %R14, !mcsema_real_eip !33
  %197 = load i64, i64* %R15_val, !mcsema_real_eip !33
  store i64 %197, i64* %R15, !mcsema_real_eip !33
  %198 = load i64, i64* %RIP_val, !mcsema_real_eip !33
  store i64 %198, i64* %RIP, !mcsema_real_eip !33
  %199 = load i1, i1* %CF_val, !mcsema_real_eip !33
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !33
  %200 = load i1, i1* %PF_val, !mcsema_real_eip !33
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !33
  %201 = load i1, i1* %AF_val, !mcsema_real_eip !33
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !33
  %202 = load i1, i1* %ZF_val, !mcsema_real_eip !33
  store i1 %202, i1* %ZF, align 1, !mcsema_real_eip !33
  %203 = load i1, i1* %SF_val, !mcsema_real_eip !33
  store i1 %203, i1* %SF, align 1, !mcsema_real_eip !33
  %204 = load i1, i1* %OF_val, !mcsema_real_eip !33
  store i1 %204, i1* %OF, align 1, !mcsema_real_eip !33
  %205 = load i1, i1* %DF_val, !mcsema_real_eip !33
  store i1 %205, i1* %DF, align 1, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !33
  %206 = load i1, i1* %FPU_B_val, !mcsema_real_eip !33
  store i1 %206, i1* %FPU_B, align 1, !mcsema_real_eip !33
  %207 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !33
  store i1 %207, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %208 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !33
  store i3 %208, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %209 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !33
  store i1 %209, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %210 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !33
  store i1 %210, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %211 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !33
  store i1 %211, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %212 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !33
  store i1 %212, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %213 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !33
  store i1 %213, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %214 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !33
  store i1 %214, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %215 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !33
  store i1 %215, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %216 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !33
  store i1 %216, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %217 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !33
  store i1 %217, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %218 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !33
  store i1 %218, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %219 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !33
  store i1 %219, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %220 = load i1, i1* %FPU_X_val, !mcsema_real_eip !33
  store i1 %220, i1* %FPU_X, align 1, !mcsema_real_eip !33
  %221 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !33
  store i2 %221, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %222 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !33
  store i2 %222, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %223 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !33
  store i1 %223, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %224 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !33
  store i1 %224, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %225 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !33
  store i1 %225, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %226 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !33
  store i1 %226, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %227 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !33
  store i1 %227, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %228 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !33
  store i1 %228, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %229 = load i64, i64* %53, align 4
  store i64 %229, i64* %52, align 4
  %230 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  store i16 %230, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %231 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  store i64 %231, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !33
  %232 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  store i16 %232, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %233 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  store i64 %233, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !33
  %234 = load i128, i128* %XMM0_val, !mcsema_real_eip !33
  store i128 %234, i128* %XMM0, align 1, !mcsema_real_eip !33
  %235 = load i128, i128* %XMM1_val, !mcsema_real_eip !33
  store i128 %235, i128* %XMM1, align 1, !mcsema_real_eip !33
  %236 = load i128, i128* %XMM2_val, !mcsema_real_eip !33
  store i128 %236, i128* %XMM2, align 1, !mcsema_real_eip !33
  %237 = load i128, i128* %XMM3_val, !mcsema_real_eip !33
  store i128 %237, i128* %XMM3, align 1, !mcsema_real_eip !33
  %238 = load i128, i128* %XMM4_val, !mcsema_real_eip !33
  store i128 %238, i128* %XMM4, align 1, !mcsema_real_eip !33
  %239 = load i128, i128* %XMM5_val, !mcsema_real_eip !33
  store i128 %239, i128* %XMM5, align 1, !mcsema_real_eip !33
  %240 = load i128, i128* %XMM6_val, !mcsema_real_eip !33
  store i128 %240, i128* %XMM6, align 1, !mcsema_real_eip !33
  %241 = load i128, i128* %XMM7_val, !mcsema_real_eip !33
  store i128 %241, i128* %XMM7, align 1, !mcsema_real_eip !33
  %242 = load i128, i128* %XMM8_val, !mcsema_real_eip !33
  store i128 %242, i128* %XMM8, align 1, !mcsema_real_eip !33
  %243 = load i128, i128* %XMM9_val, !mcsema_real_eip !33
  store i128 %243, i128* %XMM9, align 1, !mcsema_real_eip !33
  %244 = load i128, i128* %XMM10_val, !mcsema_real_eip !33
  store i128 %244, i128* %XMM10, align 1, !mcsema_real_eip !33
  %245 = load i128, i128* %XMM11_val, !mcsema_real_eip !33
  store i128 %245, i128* %XMM11, align 1, !mcsema_real_eip !33
  %246 = load i128, i128* %XMM12_val, !mcsema_real_eip !33
  store i128 %246, i128* %XMM12, align 1, !mcsema_real_eip !33
  %247 = load i128, i128* %XMM13_val, !mcsema_real_eip !33
  store i128 %247, i128* %XMM13, align 1, !mcsema_real_eip !33
  %248 = load i128, i128* %XMM14_val, !mcsema_real_eip !33
  store i128 %248, i128* %XMM14, align 1, !mcsema_real_eip !33
  %249 = load i128, i128* %XMM15_val, !mcsema_real_eip !33
  store i128 %249, i128* %XMM15, align 1, !mcsema_real_eip !33
  %250 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !33
  store i64 %250, i64* %STACK_BASE, align 1, !mcsema_real_eip !33
  %251 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  store i64 %251, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !33
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_92)
  %252 = load i64, i64* %RAX, !mcsema_real_eip !33
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !33
  %253 = load i64, i64* %RBX, !mcsema_real_eip !33
  store i64 %253, i64* %RBX_val, !mcsema_real_eip !33
  %254 = load i64, i64* %RCX, !mcsema_real_eip !33
  store i64 %254, i64* %RCX_val, !mcsema_real_eip !33
  %255 = load i64, i64* %RDX, !mcsema_real_eip !33
  store i64 %255, i64* %RDX_val, !mcsema_real_eip !33
  %256 = load i64, i64* %RSI, !mcsema_real_eip !33
  store i64 %256, i64* %RSI_val, !mcsema_real_eip !33
  %257 = load i64, i64* %RDI, !mcsema_real_eip !33
  store i64 %257, i64* %RDI_val, !mcsema_real_eip !33
  %258 = load i64, i64* %RSP, !mcsema_real_eip !33
  store i64 %258, i64* %RSP_val, !mcsema_real_eip !33
  %259 = load i64, i64* %RBP, !mcsema_real_eip !33
  store i64 %259, i64* %RBP_val, !mcsema_real_eip !33
  %260 = load i64, i64* %R8, !mcsema_real_eip !33
  store i64 %260, i64* %R8_val, !mcsema_real_eip !33
  %261 = load i64, i64* %R9, !mcsema_real_eip !33
  store i64 %261, i64* %R9_val, !mcsema_real_eip !33
  %262 = load i64, i64* %R10, !mcsema_real_eip !33
  store i64 %262, i64* %R10_val, !mcsema_real_eip !33
  %263 = load i64, i64* %R11, !mcsema_real_eip !33
  store i64 %263, i64* %R11_val, !mcsema_real_eip !33
  %264 = load i64, i64* %R12, !mcsema_real_eip !33
  store i64 %264, i64* %R12_val, !mcsema_real_eip !33
  %265 = load i64, i64* %R13, !mcsema_real_eip !33
  store i64 %265, i64* %R13_val, !mcsema_real_eip !33
  %266 = load i64, i64* %R14, !mcsema_real_eip !33
  store i64 %266, i64* %R14_val, !mcsema_real_eip !33
  %267 = load i64, i64* %R15, !mcsema_real_eip !33
  store i64 %267, i64* %R15_val, !mcsema_real_eip !33
  %268 = load i64, i64* %RIP, !mcsema_real_eip !33
  store i64 %268, i64* %RIP_val, !mcsema_real_eip !33
  %269 = load i1, i1* %CF, align 1, !mcsema_real_eip !33
  store i1 %269, i1* %CF_val, !mcsema_real_eip !33
  %270 = load i1, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 %270, i1* %PF_val, !mcsema_real_eip !33
  %271 = load i1, i1* %AF, align 1, !mcsema_real_eip !33
  store i1 %271, i1* %AF_val, !mcsema_real_eip !33
  %272 = load i1, i1* %ZF, align 1, !mcsema_real_eip !33
  store i1 %272, i1* %ZF_val, !mcsema_real_eip !33
  %273 = load i1, i1* %SF, align 1, !mcsema_real_eip !33
  store i1 %273, i1* %SF_val, !mcsema_real_eip !33
  %274 = load i1, i1* %OF, align 1, !mcsema_real_eip !33
  store i1 %274, i1* %OF_val, !mcsema_real_eip !33
  %275 = load i1, i1* %DF, align 1, !mcsema_real_eip !33
  store i1 %275, i1* %DF_val, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %276 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !33
  store i1 %276, i1* %FPU_B_val, !mcsema_real_eip !33
  %277 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !33
  store i1 %277, i1* %FPU_C3_val, !mcsema_real_eip !33
  %278 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  store i3 %278, i3* %FPU_TOP_val, !mcsema_real_eip !33
  %279 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !33
  store i1 %279, i1* %FPU_C2_val, !mcsema_real_eip !33
  %280 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !33
  store i1 %280, i1* %FPU_C1_val, !mcsema_real_eip !33
  %281 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !33
  store i1 %281, i1* %FPU_C0_val, !mcsema_real_eip !33
  %282 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !33
  store i1 %282, i1* %FPU_ES_val, !mcsema_real_eip !33
  %283 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !33
  store i1 %283, i1* %FPU_SF_val, !mcsema_real_eip !33
  %284 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !33
  store i1 %284, i1* %FPU_PE_val, !mcsema_real_eip !33
  %285 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !33
  store i1 %285, i1* %FPU_UE_val, !mcsema_real_eip !33
  %286 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !33
  store i1 %286, i1* %FPU_OE_val, !mcsema_real_eip !33
  %287 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  store i1 %287, i1* %FPU_ZE_val, !mcsema_real_eip !33
  %288 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !33
  store i1 %288, i1* %FPU_DE_val, !mcsema_real_eip !33
  %289 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !33
  store i1 %289, i1* %FPU_IE_val, !mcsema_real_eip !33
  %290 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !33
  store i1 %290, i1* %FPU_X_val, !mcsema_real_eip !33
  %291 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !33
  store i2 %291, i2* %FPU_RC_val, !mcsema_real_eip !33
  %292 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !33
  store i2 %292, i2* %FPU_PC_val, !mcsema_real_eip !33
  %293 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !33
  store i1 %293, i1* %FPU_PM_val, !mcsema_real_eip !33
  %294 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !33
  store i1 %294, i1* %FPU_UM_val, !mcsema_real_eip !33
  %295 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !33
  store i1 %295, i1* %FPU_OM_val, !mcsema_real_eip !33
  %296 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  store i1 %296, i1* %FPU_ZM_val, !mcsema_real_eip !33
  %297 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !33
  store i1 %297, i1* %FPU_DM_val, !mcsema_real_eip !33
  %298 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !33
  store i1 %298, i1* %FPU_IM_val, !mcsema_real_eip !33
  %299 = load i64, i64* %52, align 4
  store i64 %299, i64* %53, align 4
  %300 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  store i16 %300, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !33
  %301 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !33
  store i64 %301, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !33
  %302 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  store i16 %302, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !33
  %303 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !33
  store i64 %303, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !33
  %304 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !33
  store i128 %304, i128* %XMM0_val, !mcsema_real_eip !33
  %305 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !33
  store i128 %305, i128* %XMM1_val, !mcsema_real_eip !33
  %306 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !33
  store i128 %306, i128* %XMM2_val, !mcsema_real_eip !33
  %307 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !33
  store i128 %307, i128* %XMM3_val, !mcsema_real_eip !33
  %308 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !33
  store i128 %308, i128* %XMM4_val, !mcsema_real_eip !33
  %309 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !33
  store i128 %309, i128* %XMM5_val, !mcsema_real_eip !33
  %310 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !33
  store i128 %310, i128* %XMM6_val, !mcsema_real_eip !33
  %311 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !33
  store i128 %311, i128* %XMM7_val, !mcsema_real_eip !33
  %312 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !33
  store i128 %312, i128* %XMM8_val, !mcsema_real_eip !33
  %313 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !33
  store i128 %313, i128* %XMM9_val, !mcsema_real_eip !33
  %314 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !33
  store i128 %314, i128* %XMM10_val, !mcsema_real_eip !33
  %315 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !33
  store i128 %315, i128* %XMM11_val, !mcsema_real_eip !33
  %316 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !33
  store i128 %316, i128* %XMM12_val, !mcsema_real_eip !33
  %317 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !33
  store i128 %317, i128* %XMM13_val, !mcsema_real_eip !33
  %318 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !33
  store i128 %318, i128* %XMM14_val, !mcsema_real_eip !33
  %319 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !33
  store i128 %319, i128* %XMM15_val, !mcsema_real_eip !33
  %320 = load i64, i64* %STACK_BASE, !mcsema_real_eip !33
  store i64 %320, i64* %STACK_BASE_val, !mcsema_real_eip !33
  %321 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !33
  store i64 %321, i64* %STACK_LIMIT_val, !mcsema_real_eip !33
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %323 = add i64 %322, -48, !mcsema_real_eip !34
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !34
  %325 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  %326 = trunc i64 %325 to i32, !mcsema_real_eip !34
  %327 = bitcast i64* %_allin_new_bt_60 to i32*
  store i32 %326, i32* %327, !mcsema_real_eip !34
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %328 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -56
  %329 = add i64 %328, -56, !mcsema_real_eip !35
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !35
  %331 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  store i64 %331, i64* %_allin_new_bt_63, !mcsema_real_eip !35
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -56
  %333 = add i64 %332, -56, !mcsema_real_eip !36
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !36
  %335 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !36
  store i64 %335, i64* %RAX_val, !mcsema_real_eip !36
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -40
  %336 = add i64 %332, -40, !mcsema_real_eip !37
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !37
  store i64 %335, i64* %_allin_new_bt_68, !mcsema_real_eip !37
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %338 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -48
  %339 = add i64 %338, -48, !mcsema_real_eip !38
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !38
  %341 = bitcast i64* %_allin_new_bt_71 to i32*
  %342 = load i32, i32* %341, !mcsema_real_eip !38
  %343 = zext i32 %342 to i64, !mcsema_real_eip !38
  store i64 %343, i64* %RCX_val, !mcsema_real_eip !38
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %344 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -32
  %345 = add i64 %344, -32, !mcsema_real_eip !39
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !39
  %347 = bitcast i64* %_allin_new_bt_74 to i32*
  store i32 %342, i32* %347, !mcsema_real_eip !39
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -40
  %349 = add i64 %348, -40, !mcsema_real_eip !40
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !40
  %351 = bitcast i64* %_allin_new_bt_77 to i32*
  %352 = load i32, i32* %351, !mcsema_real_eip !40
  %353 = zext i32 %352 to i64, !mcsema_real_eip !40
  store i64 %353, i64* %RCX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %354 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -36
  %355 = add i64 %354, -36, !mcsema_real_eip !41
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !41
  %357 = bitcast i64* %_allin_new_bt_80 to i32*
  %358 = load i32, i32* %357, !mcsema_real_eip !41
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %352, i32 %358)
  %359 = extractvalue { i32, i1 } %uadd, 0
  %360 = xor i32 %359, %358, !mcsema_real_eip !41
  %361 = xor i32 %360, %352, !mcsema_real_eip !41
  %362 = and i32 %361, 16, !mcsema_real_eip !41
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !41
  store i1 %363, i1* %AF_val, !mcsema_real_eip !41
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !41
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !41
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !41
  %366 = xor i32 %352, -2147483648, !mcsema_real_eip !41
  %367 = xor i32 %366, %358, !mcsema_real_eip !41
  %368 = and i32 %360, %367, !mcsema_real_eip !41
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !41
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !41
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !41
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !41
  %374 = extractvalue { i32, i1 } %uadd, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !41
  %375 = zext i32 %359 to i64, !mcsema_real_eip !41
  store i64 %375, i64* %RCX_val, !mcsema_real_eip !41
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %377 = add i64 %376, -32, !mcsema_real_eip !42
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !42
  %379 = bitcast i64* %_allin_new_bt_83 to i32*
  %380 = load i32, i32* %379, !mcsema_real_eip !42
  %381 = add i32 %359, %380
  %382 = zext i32 %381 to i64, !mcsema_real_eip !42
  store i64 %382, i64* %RCX_val, !mcsema_real_eip !42
  store i64 %382, i64* %RAX_val, !mcsema_real_eip !43
  %_load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_
  %383 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %_new_ptr2int_85 = ptrtoint i8* %_load_rsp_ptr_84 to i64
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_85, i64 80)
  %384 = extractvalue { i64, i1 } %uadd210, 0
  %385 = xor i64 %384, %_new_ptr2int_85, !mcsema_real_eip !44
  %386 = and i64 %385, 16
  %387 = icmp eq i64 %386, 0
  store i1 %387, i1* %AF_val, !mcsema_real_eip !44
  %388 = icmp slt i64 %384, 0
  store i1 %388, i1* %SF_val, !mcsema_real_eip !44
  %389 = icmp eq i64 %384, 0, !mcsema_real_eip !44
  store i1 %389, i1* %ZF_val, !mcsema_real_eip !44
  %390 = xor i64 %_new_ptr2int_85, -9223372036854775808, !mcsema_real_eip !44
  %391 = and i64 %385, %390, !mcsema_real_eip !44
  %392 = icmp slt i64 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !44
  %393 = trunc i64 %384 to i8, !mcsema_real_eip !44
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !44
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  store i1 %396, i1* %PF_val, !mcsema_real_eip !44
  %397 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %397, i1* %CF_val, !mcsema_real_eip !44
  %_new_int2ptr_ = inttoptr i64 %384 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %384, i64* %RSP_val, !mcsema_real_eip !44
  %398 = inttoptr i64 %384 to i64*, !mcsema_real_eip !45
  %399 = load i64, i64* %398, !mcsema_real_eip !45
  %_new_int2ptr_86 = inttoptr i64 %399 to i8*
  store volatile i8* %_new_int2ptr_86, i8** %_RBP_ptr_
  store i64 %399, i64* %RBP_val, !mcsema_real_eip !45
  %400 = add i64 %384, 16, !mcsema_real_eip !46
  %_new_int2ptr_87 = inttoptr i64 %400 to i8*
  store volatile i8* %_new_int2ptr_87, i8** %_RSP_ptr_
  store i64 %400, i64* %RSP_val, !mcsema_real_eip !46
  %401 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %401, i64* %RAX, !mcsema_real_eip !46
  %402 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %402, i64* %RBX, !mcsema_real_eip !46
  %403 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %403, i64* %RCX, !mcsema_real_eip !46
  %404 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %404, i64* %RDX, !mcsema_real_eip !46
  %405 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %405, i64* %RSI, !mcsema_real_eip !46
  %406 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %406, i64* %RDI, !mcsema_real_eip !46
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %407 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_ptr2int_89 = ptrtoint i8* %_load_rsp_ptr_88 to i64
  store volatile i64 %_new_ptr2int_89, i64* %RSP
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_ptr2int_91 = ptrtoint i8* %_load_rbp_ptr_90 to i64
  store volatile i64 %_new_ptr2int_91, i64* %RBP
  %409 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %409, i64* %R8, !mcsema_real_eip !46
  %410 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %410, i64* %R9, !mcsema_real_eip !46
  %411 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %411, i64* %R10, !mcsema_real_eip !46
  %412 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %412, i64* %R11, !mcsema_real_eip !46
  %413 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %413, i64* %R12, !mcsema_real_eip !46
  %414 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %414, i64* %R13, !mcsema_real_eip !46
  %415 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %415, i64* %R14, !mcsema_real_eip !46
  %416 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %416, i64* %R15, !mcsema_real_eip !46
  %417 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %417, i64* %RIP, !mcsema_real_eip !46
  %418 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %418, i1* %CF, align 1, !mcsema_real_eip !46
  %419 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %419, i1* %PF, align 1, !mcsema_real_eip !46
  %420 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %420, i1* %AF, align 1, !mcsema_real_eip !46
  %421 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %421, i1* %ZF, align 1, !mcsema_real_eip !46
  %422 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %422, i1* %SF, align 1, !mcsema_real_eip !46
  %423 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %423, i1* %OF, align 1, !mcsema_real_eip !46
  %424 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %424, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %425 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %425, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %426 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %426, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %427 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %427, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %428 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %428, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %429 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %429, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %430 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %430, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %431 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %431, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %432 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %432, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %433 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %433, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %434 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %434, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %435 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %435, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %436 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %436, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %437 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %437, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %438 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %438, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %439 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %439, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %440 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %440, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %441 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %441, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %442 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %442, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %443 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %443, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %444 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %444, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %445 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %445, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %446 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %446, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %447 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %447, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %448 = load i64, i64* %53, align 4
  store i64 %448, i64* %52, align 4
  %449 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %449, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %450 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %450, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %451 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %451, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %452 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %452, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %453 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %453, i128* %XMM0, align 1, !mcsema_real_eip !46
  %454 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %454, i128* %XMM1, align 1, !mcsema_real_eip !46
  %455 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %455, i128* %XMM2, align 1, !mcsema_real_eip !46
  %456 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %456, i128* %XMM3, align 1, !mcsema_real_eip !46
  %457 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %457, i128* %XMM4, align 1, !mcsema_real_eip !46
  %458 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %458, i128* %XMM5, align 1, !mcsema_real_eip !46
  %459 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %459, i128* %XMM6, align 1, !mcsema_real_eip !46
  %460 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %460, i128* %XMM7, align 1, !mcsema_real_eip !46
  %461 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %461, i128* %XMM8, align 1, !mcsema_real_eip !46
  %462 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %462, i128* %XMM9, align 1, !mcsema_real_eip !46
  %463 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %463, i128* %XMM10, align 1, !mcsema_real_eip !46
  %464 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %464, i128* %XMM11, align 1, !mcsema_real_eip !46
  %465 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %465, i128* %XMM12, align 1, !mcsema_real_eip !46
  %466 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %466, i128* %XMM13, align 1, !mcsema_real_eip !46
  %467 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %467, i128* %XMM14, align 1, !mcsema_real_eip !46
  %468 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %468, i128* %XMM15, align 1, !mcsema_real_eip !46
  %469 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %469, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %470 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %470, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !47
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !47
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !47
  %XMM15_val = alloca i128, !mcsema_real_eip !47
  %XMM14_val = alloca i128, !mcsema_real_eip !47
  %XMM13_val = alloca i128, !mcsema_real_eip !47
  %XMM12_val = alloca i128, !mcsema_real_eip !47
  %XMM11_val = alloca i128, !mcsema_real_eip !47
  %XMM10_val = alloca i128, !mcsema_real_eip !47
  %XMM9_val = alloca i128, !mcsema_real_eip !47
  %XMM8_val = alloca i128, !mcsema_real_eip !47
  %XMM7_val = alloca i128, !mcsema_real_eip !47
  %XMM6_val = alloca i128, !mcsema_real_eip !47
  %XMM5_val = alloca i128, !mcsema_real_eip !47
  %XMM4_val = alloca i128, !mcsema_real_eip !47
  %XMM3_val = alloca i128, !mcsema_real_eip !47
  %XMM2_val = alloca i128, !mcsema_real_eip !47
  %XMM1_val = alloca i128, !mcsema_real_eip !47
  %XMM0_val = alloca i128, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !47
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !47
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !47
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !47
  %FPU_IM_val = alloca i1, !mcsema_real_eip !47
  %FPU_DM_val = alloca i1, !mcsema_real_eip !47
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !47
  %FPU_OM_val = alloca i1, !mcsema_real_eip !47
  %FPU_UM_val = alloca i1, !mcsema_real_eip !47
  %FPU_PM_val = alloca i1, !mcsema_real_eip !47
  %FPU_PC_val = alloca i2, !mcsema_real_eip !47
  %FPU_RC_val = alloca i2, !mcsema_real_eip !47
  %FPU_X_val = alloca i1, !mcsema_real_eip !47
  %FPU_IE_val = alloca i1, !mcsema_real_eip !47
  %FPU_DE_val = alloca i1, !mcsema_real_eip !47
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !47
  %FPU_OE_val = alloca i1, !mcsema_real_eip !47
  %FPU_UE_val = alloca i1, !mcsema_real_eip !47
  %FPU_PE_val = alloca i1, !mcsema_real_eip !47
  %FPU_SF_val = alloca i1, !mcsema_real_eip !47
  %FPU_ES_val = alloca i1, !mcsema_real_eip !47
  %FPU_C0_val = alloca i1, !mcsema_real_eip !47
  %FPU_C1_val = alloca i1, !mcsema_real_eip !47
  %FPU_C2_val = alloca i1, !mcsema_real_eip !47
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !47
  %FPU_C3_val = alloca i1, !mcsema_real_eip !47
  %FPU_B_val = alloca i1, !mcsema_real_eip !47
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !47
  %DF_val = alloca i1, !mcsema_real_eip !47
  %OF_val = alloca i1, !mcsema_real_eip !47
  %SF_val = alloca i1, !mcsema_real_eip !47
  %CF_val = alloca i1, !mcsema_real_eip !47
  %AF_val = alloca i1, !mcsema_real_eip !47
  %PF_val = alloca i1, !mcsema_real_eip !47
  %ZF_val = alloca i1, !mcsema_real_eip !47
  %RIP_val = alloca i64, !mcsema_real_eip !47
  %R14_val = alloca i64, !mcsema_real_eip !47
  %R13_val = alloca i64, !mcsema_real_eip !47
  %R12_val = alloca i64, !mcsema_real_eip !47
  %R11_val = alloca i64, !mcsema_real_eip !47
  %R10_val = alloca i64, !mcsema_real_eip !47
  %R9_val = alloca i64, !mcsema_real_eip !47
  %R8_val = alloca i64, !mcsema_real_eip !47
  %RSP_val = alloca i64, !mcsema_real_eip !47
  %RBP_val = alloca i64, !mcsema_real_eip !47
  %RDI_val = alloca i64, !mcsema_real_eip !47
  %RSI_val = alloca i64, !mcsema_real_eip !47
  %RDX_val = alloca i64, !mcsema_real_eip !47
  %RCX_val = alloca i64, !mcsema_real_eip !47
  %RBX_val = alloca i64, !mcsema_real_eip !47
  %RAX_val = alloca i64, !mcsema_real_eip !47
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !47
  %1 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !47
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !47
  %2 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !47
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !47
  %3 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !47
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !47
  %4 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !47
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !47
  %5 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !47
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !47
  %6 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !47
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !47
  %7 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !47
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !47
  %8 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !47
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !47
  %9 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %9, i64* %R8_val, !mcsema_real_eip !47
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !47
  %10 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %10, i64* %R9_val, !mcsema_real_eip !47
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !47
  %11 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %11, i64* %R10_val, !mcsema_real_eip !47
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !47
  %12 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %12, i64* %R11_val, !mcsema_real_eip !47
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !47
  %13 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %13, i64* %R12_val, !mcsema_real_eip !47
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !47
  %14 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %14, i64* %R13_val, !mcsema_real_eip !47
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !47
  %15 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %15, i64* %R14_val, !mcsema_real_eip !47
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !47
  %16 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %16, i64* %R15_val, !mcsema_real_eip !47
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !47
  %17 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !47
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !47
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %CF_val, !mcsema_real_eip !47
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !47
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %19, i1* %PF_val, !mcsema_real_eip !47
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !47
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %AF_val, !mcsema_real_eip !47
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !47
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !47
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !47
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %SF_val, !mcsema_real_eip !47
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !47
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %OF_val, !mcsema_real_eip !47
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !47
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %DF_val, !mcsema_real_eip !47
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !47
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !47
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !47
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !47
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !47
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !47
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !47
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !47
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !47
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !47
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !47
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !47
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !47
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !47
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !47
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !47
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !47
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !47
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !47
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !47
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !47
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !47
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !47
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !47
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !47
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !47
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !47
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !47
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !47
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !47
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !47
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !47
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !47
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !47
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !47
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !47
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !47
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !47
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !47
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !47
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !47
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !47
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !47
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !47
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !47
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !47
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !47
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !47
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !47
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !47
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !47
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !47
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !47
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !47
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !47
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !47
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !47
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !47
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !47
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !47
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !47
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !47
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !47
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !47
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !47
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !47
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !47
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !47
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !47
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !47
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !47
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !47
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !47
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !47
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !47
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !47
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !47
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !47
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !47
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !47
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !47
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !47
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !47
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !47
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !47
  store i64 %77, i64* %80, !mcsema_real_eip !47
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !48
  %81 = add i64 %78, 16, !mcsema_real_eip !49
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !49
  %83 = load i64, i64* %82, !mcsema_real_eip !49
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !49
  %84 = add i64 %78, 8, !mcsema_real_eip !50
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !50
  %86 = load i64, i64* %85, !mcsema_real_eip !50
  store i64 %86, i64* %R10_val, !mcsema_real_eip !50
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %88 = add i64 %87, -20, !mcsema_real_eip !51
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !51
  %90 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !51
  %92 = bitcast i64* %89 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !51
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %94 = add i64 %93, -24, !mcsema_real_eip !52
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !52
  %96 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !52
  %98 = bitcast i64* %95 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !52
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %100 = add i64 %99, -28, !mcsema_real_eip !53
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !53
  %102 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !53
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !53
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %106 = add i64 %105, -32, !mcsema_real_eip !54
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !54
  %108 = load i64, i64* %RCX_val, !mcsema_real_eip !54
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !54
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !54
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %112 = add i64 %111, -36, !mcsema_real_eip !55
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !55
  %114 = load i64, i64* %R8_val, !mcsema_real_eip !55
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !55
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !55
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %118 = add i64 %117, -40, !mcsema_real_eip !56
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !56
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !56
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !56
  %122 = bitcast i64* %119 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !56
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %124 = add i64 %123, -48, !mcsema_real_eip !57
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !57
  %126 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %126, i64* %125, !mcsema_real_eip !57
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %128 = add i64 %127, -56, !mcsema_real_eip !58
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !58
  %130 = load i64, i64* %RAX_val, !mcsema_real_eip !58
  store i64 %130, i64* %129, !mcsema_real_eip !58
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %132 = add i64 %131, -48, !mcsema_real_eip !59
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !59
  %134 = load i64, i64* %133, !mcsema_real_eip !59
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !59
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !60
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !60
  %138 = zext i32 %137 to i64, !mcsema_real_eip !60
  store i64 %138, i64* %RCX_val, !mcsema_real_eip !60
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %140 = add i64 %139, -56, !mcsema_real_eip !61
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !61
  %142 = load i64, i64* %141, !mcsema_real_eip !61
  store i64 %142, i64* %RAX_val, !mcsema_real_eip !61
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !62
  %144 = bitcast i64* %143 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !62
  %146 = zext i32 %145 to i64, !mcsema_real_eip !62
  store i64 %146, i64* %RDX_val, !mcsema_real_eip !62
  %147 = load i64, i64* %RCX_val, !mcsema_real_eip !63
  %148 = trunc i64 %147 to i32, !mcsema_real_eip !63
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %145, i32 %148)
  %149 = extractvalue { i32, i1 } %uadd, 0
  %150 = xor i32 %149, %148, !mcsema_real_eip !63
  %151 = xor i32 %150, %145, !mcsema_real_eip !63
  %152 = and i32 %151, 16, !mcsema_real_eip !63
  %153 = icmp ne i32 %152, 0, !mcsema_real_eip !63
  store i1 %153, i1* %AF_val, !mcsema_real_eip !63
  %154 = icmp slt i32 %149, 0
  store i1 %154, i1* %SF_val, !mcsema_real_eip !63
  %155 = icmp eq i32 %149, 0, !mcsema_real_eip !63
  store i1 %155, i1* %ZF_val, !mcsema_real_eip !63
  %156 = xor i32 %145, -2147483648, !mcsema_real_eip !63
  %157 = xor i32 %156, %148, !mcsema_real_eip !63
  %158 = and i32 %150, %157, !mcsema_real_eip !63
  %159 = icmp slt i32 %158, 0
  store i1 %159, i1* %OF_val, !mcsema_real_eip !63
  %160 = trunc i32 %149 to i8, !mcsema_real_eip !63
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !63
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF_val, !mcsema_real_eip !63
  %164 = extractvalue { i32, i1 } %uadd, 1
  store i1 %164, i1* %CF_val, !mcsema_real_eip !63
  %165 = zext i32 %149 to i64, !mcsema_real_eip !63
  store i64 %165, i64* %RCX_val, !mcsema_real_eip !63
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %167 = add i64 %166, -72, !mcsema_real_eip !64
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !64
  %169 = bitcast i64* %168 to i32*
  store i32 %149, i32* %169, !mcsema_real_eip !64
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %171 = add i64 %170, -48, !mcsema_real_eip !65
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !65
  %173 = load i64, i64* %172, !mcsema_real_eip !65
  store i64 %173, i64* %RAX_val, !mcsema_real_eip !65
  %174 = add i64 %173, 4, !mcsema_real_eip !66
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !66
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !66
  %178 = zext i32 %177 to i64, !mcsema_real_eip !66
  store i64 %178, i64* %RCX_val, !mcsema_real_eip !66
  %179 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %180 = add i64 %179, -56, !mcsema_real_eip !67
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !67
  %182 = load i64, i64* %181, !mcsema_real_eip !67
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !67
  %183 = add i64 %182, 4, !mcsema_real_eip !68
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !68
  %185 = bitcast i64* %184 to i32*
  %186 = load i32, i32* %185, !mcsema_real_eip !68
  %187 = zext i32 %186 to i64, !mcsema_real_eip !68
  store i64 %187, i64* %RDX_val, !mcsema_real_eip !68
  %188 = load i64, i64* %RCX_val, !mcsema_real_eip !69
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !69
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %189)
  %190 = extractvalue { i32, i1 } %uadd70, 0
  %191 = xor i32 %190, %189, !mcsema_real_eip !69
  %192 = xor i32 %191, %186, !mcsema_real_eip !69
  %193 = and i32 %192, 16, !mcsema_real_eip !69
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !69
  store i1 %194, i1* %AF_val, !mcsema_real_eip !69
  %195 = icmp slt i32 %190, 0
  store i1 %195, i1* %SF_val, !mcsema_real_eip !69
  %196 = icmp eq i32 %190, 0, !mcsema_real_eip !69
  store i1 %196, i1* %ZF_val, !mcsema_real_eip !69
  %197 = xor i32 %186, -2147483648, !mcsema_real_eip !69
  %198 = xor i32 %197, %189, !mcsema_real_eip !69
  %199 = and i32 %191, %198, !mcsema_real_eip !69
  %200 = icmp slt i32 %199, 0
  store i1 %200, i1* %OF_val, !mcsema_real_eip !69
  %201 = trunc i32 %190 to i8, !mcsema_real_eip !69
  %202 = tail call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !69
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  store i1 %204, i1* %PF_val, !mcsema_real_eip !69
  %205 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %205, i1* %CF_val, !mcsema_real_eip !69
  %206 = zext i32 %190 to i64, !mcsema_real_eip !69
  store i64 %206, i64* %RCX_val, !mcsema_real_eip !69
  %207 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %208 = add i64 %207, -68, !mcsema_real_eip !70
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !70
  %210 = bitcast i64* %209 to i32*
  store i32 %190, i32* %210, !mcsema_real_eip !70
  %211 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %212 = add i64 %211, -48, !mcsema_real_eip !71
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !71
  %214 = load i64, i64* %213, !mcsema_real_eip !71
  store i64 %214, i64* %RAX_val, !mcsema_real_eip !71
  %215 = add i64 %214, 8, !mcsema_real_eip !72
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !72
  %217 = bitcast i64* %216 to i32*
  %218 = load i32, i32* %217, !mcsema_real_eip !72
  %219 = zext i32 %218 to i64, !mcsema_real_eip !72
  store i64 %219, i64* %RCX_val, !mcsema_real_eip !72
  %220 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %221 = add i64 %220, -56, !mcsema_real_eip !73
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !73
  %223 = load i64, i64* %222, !mcsema_real_eip !73
  store i64 %223, i64* %RAX_val, !mcsema_real_eip !73
  %224 = add i64 %223, 8, !mcsema_real_eip !74
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !74
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !74
  %228 = zext i32 %227 to i64, !mcsema_real_eip !74
  store i64 %228, i64* %RDX_val, !mcsema_real_eip !74
  %229 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !75
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %230)
  %231 = extractvalue { i32, i1 } %uadd71, 0
  %232 = xor i32 %231, %230, !mcsema_real_eip !75
  %233 = xor i32 %232, %227, !mcsema_real_eip !75
  %234 = and i32 %233, 16, !mcsema_real_eip !75
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !75
  store i1 %235, i1* %AF_val, !mcsema_real_eip !75
  %236 = icmp slt i32 %231, 0
  store i1 %236, i1* %SF_val, !mcsema_real_eip !75
  %237 = icmp eq i32 %231, 0, !mcsema_real_eip !75
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !75
  %238 = xor i32 %227, -2147483648, !mcsema_real_eip !75
  %239 = xor i32 %238, %230, !mcsema_real_eip !75
  %240 = and i32 %232, %239, !mcsema_real_eip !75
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !75
  %242 = trunc i32 %231 to i8, !mcsema_real_eip !75
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !75
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  store i1 %245, i1* %PF_val, !mcsema_real_eip !75
  %246 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %246, i1* %CF_val, !mcsema_real_eip !75
  %247 = zext i32 %231 to i64, !mcsema_real_eip !75
  store i64 %247, i64* %RCX_val, !mcsema_real_eip !75
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %249 = add i64 %248, -64, !mcsema_real_eip !76
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !76
  %251 = bitcast i64* %250 to i32*
  store i32 %231, i32* %251, !mcsema_real_eip !76
  %252 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %253 = add i64 %252, -64, !mcsema_real_eip !77
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !77
  %255 = bitcast i64* %254 to i32*
  %256 = load i32, i32* %255, !mcsema_real_eip !77
  %257 = zext i32 %256 to i64, !mcsema_real_eip !77
  store i64 %257, i64* %RCX_val, !mcsema_real_eip !77
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %259 = add i64 %258, -8, !mcsema_real_eip !78
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !78
  %261 = bitcast i64* %260 to i32*
  store i32 %256, i32* %261, !mcsema_real_eip !78
  %262 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %263 = add i64 %262, -72, !mcsema_real_eip !79
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !79
  %265 = load i64, i64* %264, !mcsema_real_eip !79
  store i64 %265, i64* %RAX_val, !mcsema_real_eip !79
  %266 = add i64 %262, -16, !mcsema_real_eip !80
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !80
  store i64 %265, i64* %267, !mcsema_real_eip !80
  %268 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %269 = add i64 %268, -8, !mcsema_real_eip !81
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !81
  %271 = bitcast i64* %270 to i32*
  %272 = load i32, i32* %271, !mcsema_real_eip !81
  %273 = zext i32 %272 to i64, !mcsema_real_eip !81
  store i64 %273, i64* %RCX_val, !mcsema_real_eip !81
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %275 = add i64 %274, -80, !mcsema_real_eip !82
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !82
  %277 = bitcast i64* %276 to i32*
  store i32 %272, i32* %277, !mcsema_real_eip !82
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %279 = add i64 %278, -16, !mcsema_real_eip !83
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !83
  %281 = load i64, i64* %280, !mcsema_real_eip !83
  store i64 %281, i64* %RAX_val, !mcsema_real_eip !83
  %282 = add i64 %278, -88, !mcsema_real_eip !84
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !84
  store i64 %281, i64* %283, !mcsema_real_eip !84
  %284 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %285 = add i64 %284, -88, !mcsema_real_eip !85
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !85
  %287 = load i64, i64* %286, !mcsema_real_eip !85
  store i64 %287, i64* %RAX_val, !mcsema_real_eip !85
  %288 = add i64 %284, -80, !mcsema_real_eip !86
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !86
  %290 = bitcast i64* %289 to i32*
  %291 = load i32, i32* %290, !mcsema_real_eip !86
  %292 = zext i32 %291 to i64, !mcsema_real_eip !86
  store i64 %292, i64* %RDX_val, !mcsema_real_eip !86
  %293 = load i64, i64* %RSP_val, !mcsema_real_eip !87
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !87
  %295 = load i64, i64* %294, !mcsema_real_eip !87
  store i64 %295, i64* %RBP_val, !mcsema_real_eip !87
  %296 = add i64 %293, 16, !mcsema_real_eip !88
  store i64 %296, i64* %RSP_val, !mcsema_real_eip !88
  %297 = load i64, i64* %RAX_val, !mcsema_real_eip !88
  store i64 %297, i64* %RAX, !mcsema_real_eip !88
  %298 = load i64, i64* %RBX_val, !mcsema_real_eip !88
  store i64 %298, i64* %RBX, !mcsema_real_eip !88
  %299 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  store i64 %299, i64* %RCX, !mcsema_real_eip !88
  %300 = load i64, i64* %RDX_val, !mcsema_real_eip !88
  store i64 %300, i64* %RDX, !mcsema_real_eip !88
  %301 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  store i64 %301, i64* %RSI, !mcsema_real_eip !88
  %302 = load i64, i64* %RDI_val, !mcsema_real_eip !88
  store i64 %302, i64* %RDI, !mcsema_real_eip !88
  %303 = load i64, i64* %RSP_val, !mcsema_real_eip !88
  store i64 %303, i64* %RSP, !mcsema_real_eip !88
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  store i64 %304, i64* %RBP, !mcsema_real_eip !88
  %305 = load i64, i64* %R8_val, !mcsema_real_eip !88
  store i64 %305, i64* %R8, !mcsema_real_eip !88
  %306 = load i64, i64* %R9_val, !mcsema_real_eip !88
  store i64 %306, i64* %R9, !mcsema_real_eip !88
  %307 = load i64, i64* %R10_val, !mcsema_real_eip !88
  store i64 %307, i64* %R10, !mcsema_real_eip !88
  %308 = load i64, i64* %R11_val, !mcsema_real_eip !88
  store i64 %308, i64* %R11, !mcsema_real_eip !88
  %309 = load i64, i64* %R12_val, !mcsema_real_eip !88
  store i64 %309, i64* %R12, !mcsema_real_eip !88
  %310 = load i64, i64* %R13_val, !mcsema_real_eip !88
  store i64 %310, i64* %R13, !mcsema_real_eip !88
  %311 = load i64, i64* %R14_val, !mcsema_real_eip !88
  store i64 %311, i64* %R14, !mcsema_real_eip !88
  %312 = load i64, i64* %R15_val, !mcsema_real_eip !88
  store i64 %312, i64* %R15, !mcsema_real_eip !88
  %313 = load i64, i64* %RIP_val, !mcsema_real_eip !88
  store i64 %313, i64* %RIP, !mcsema_real_eip !88
  %314 = load i1, i1* %CF_val, !mcsema_real_eip !88
  store i1 %314, i1* %CF, align 1, !mcsema_real_eip !88
  %315 = load i1, i1* %PF_val, !mcsema_real_eip !88
  store i1 %315, i1* %PF, align 1, !mcsema_real_eip !88
  %316 = load i1, i1* %AF_val, !mcsema_real_eip !88
  store i1 %316, i1* %AF, align 1, !mcsema_real_eip !88
  %317 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  store i1 %317, i1* %ZF, align 1, !mcsema_real_eip !88
  %318 = load i1, i1* %SF_val, !mcsema_real_eip !88
  store i1 %318, i1* %SF, align 1, !mcsema_real_eip !88
  %319 = load i1, i1* %OF_val, !mcsema_real_eip !88
  store i1 %319, i1* %OF, align 1, !mcsema_real_eip !88
  %320 = load i1, i1* %DF_val, !mcsema_real_eip !88
  store i1 %320, i1* %DF, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  %321 = load i1, i1* %FPU_B_val, !mcsema_real_eip !88
  store i1 %321, i1* %FPU_B, align 1, !mcsema_real_eip !88
  %322 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !88
  store i1 %322, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  %323 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !88
  store i3 %323, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  %324 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !88
  store i1 %324, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  %325 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !88
  store i1 %325, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  %326 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !88
  store i1 %326, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  %327 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !88
  store i1 %327, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  %328 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !88
  store i1 %328, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  %329 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !88
  store i1 %329, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  %330 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !88
  store i1 %330, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  %331 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !88
  store i1 %331, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  %332 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !88
  store i1 %332, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  %333 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !88
  store i1 %333, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  %334 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !88
  store i1 %334, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  %335 = load i1, i1* %FPU_X_val, !mcsema_real_eip !88
  store i1 %335, i1* %FPU_X, align 1, !mcsema_real_eip !88
  %336 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !88
  store i2 %336, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  %337 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !88
  store i2 %337, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  %338 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !88
  store i1 %338, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  %339 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !88
  store i1 %339, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  %340 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !88
  store i1 %340, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  %341 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !88
  store i1 %341, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  %342 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !88
  store i1 %342, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  %343 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !88
  store i1 %343, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  %344 = load i64, i64* %53, align 4
  store i64 %344, i64* %52, align 4
  %345 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !88
  store i16 %345, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  %346 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !88
  store i64 %346, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !88
  %347 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !88
  store i16 %347, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  %348 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !88
  store i64 %348, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !88
  %349 = load i128, i128* %XMM0_val, !mcsema_real_eip !88
  store i128 %349, i128* %XMM0, align 1, !mcsema_real_eip !88
  %350 = load i128, i128* %XMM1_val, !mcsema_real_eip !88
  store i128 %350, i128* %XMM1, align 1, !mcsema_real_eip !88
  %351 = load i128, i128* %XMM2_val, !mcsema_real_eip !88
  store i128 %351, i128* %XMM2, align 1, !mcsema_real_eip !88
  %352 = load i128, i128* %XMM3_val, !mcsema_real_eip !88
  store i128 %352, i128* %XMM3, align 1, !mcsema_real_eip !88
  %353 = load i128, i128* %XMM4_val, !mcsema_real_eip !88
  store i128 %353, i128* %XMM4, align 1, !mcsema_real_eip !88
  %354 = load i128, i128* %XMM5_val, !mcsema_real_eip !88
  store i128 %354, i128* %XMM5, align 1, !mcsema_real_eip !88
  %355 = load i128, i128* %XMM6_val, !mcsema_real_eip !88
  store i128 %355, i128* %XMM6, align 1, !mcsema_real_eip !88
  %356 = load i128, i128* %XMM7_val, !mcsema_real_eip !88
  store i128 %356, i128* %XMM7, align 1, !mcsema_real_eip !88
  %357 = load i128, i128* %XMM8_val, !mcsema_real_eip !88
  store i128 %357, i128* %XMM8, align 1, !mcsema_real_eip !88
  %358 = load i128, i128* %XMM9_val, !mcsema_real_eip !88
  store i128 %358, i128* %XMM9, align 1, !mcsema_real_eip !88
  %359 = load i128, i128* %XMM10_val, !mcsema_real_eip !88
  store i128 %359, i128* %XMM10, align 1, !mcsema_real_eip !88
  %360 = load i128, i128* %XMM11_val, !mcsema_real_eip !88
  store i128 %360, i128* %XMM11, align 1, !mcsema_real_eip !88
  %361 = load i128, i128* %XMM12_val, !mcsema_real_eip !88
  store i128 %361, i128* %XMM12, align 1, !mcsema_real_eip !88
  %362 = load i128, i128* %XMM13_val, !mcsema_real_eip !88
  store i128 %362, i128* %XMM13, align 1, !mcsema_real_eip !88
  %363 = load i128, i128* %XMM14_val, !mcsema_real_eip !88
  store i128 %363, i128* %XMM14, align 1, !mcsema_real_eip !88
  %364 = load i128, i128* %XMM15_val, !mcsema_real_eip !88
  store i128 %364, i128* %XMM15, align 1, !mcsema_real_eip !88
  %365 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !88
  store i64 %365, i64* %STACK_BASE, align 1, !mcsema_real_eip !88
  %366 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !88
  store i64 %366, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !88
  ret void, !mcsema_real_eip !88
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_90(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !47
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !47
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !47
  %XMM15_val = alloca i128, !mcsema_real_eip !47
  %XMM14_val = alloca i128, !mcsema_real_eip !47
  %XMM13_val = alloca i128, !mcsema_real_eip !47
  %XMM12_val = alloca i128, !mcsema_real_eip !47
  %XMM11_val = alloca i128, !mcsema_real_eip !47
  %XMM10_val = alloca i128, !mcsema_real_eip !47
  %XMM9_val = alloca i128, !mcsema_real_eip !47
  %XMM8_val = alloca i128, !mcsema_real_eip !47
  %XMM7_val = alloca i128, !mcsema_real_eip !47
  %XMM6_val = alloca i128, !mcsema_real_eip !47
  %XMM5_val = alloca i128, !mcsema_real_eip !47
  %XMM4_val = alloca i128, !mcsema_real_eip !47
  %XMM3_val = alloca i128, !mcsema_real_eip !47
  %XMM2_val = alloca i128, !mcsema_real_eip !47
  %XMM1_val = alloca i128, !mcsema_real_eip !47
  %XMM0_val = alloca i128, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !47
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !47
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !47
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !47
  %FPU_IM_val = alloca i1, !mcsema_real_eip !47
  %FPU_DM_val = alloca i1, !mcsema_real_eip !47
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !47
  %FPU_OM_val = alloca i1, !mcsema_real_eip !47
  %FPU_UM_val = alloca i1, !mcsema_real_eip !47
  %FPU_PM_val = alloca i1, !mcsema_real_eip !47
  %FPU_PC_val = alloca i2, !mcsema_real_eip !47
  %FPU_RC_val = alloca i2, !mcsema_real_eip !47
  %FPU_X_val = alloca i1, !mcsema_real_eip !47
  %FPU_IE_val = alloca i1, !mcsema_real_eip !47
  %FPU_DE_val = alloca i1, !mcsema_real_eip !47
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !47
  %FPU_OE_val = alloca i1, !mcsema_real_eip !47
  %FPU_UE_val = alloca i1, !mcsema_real_eip !47
  %FPU_PE_val = alloca i1, !mcsema_real_eip !47
  %FPU_SF_val = alloca i1, !mcsema_real_eip !47
  %FPU_ES_val = alloca i1, !mcsema_real_eip !47
  %FPU_C0_val = alloca i1, !mcsema_real_eip !47
  %FPU_C1_val = alloca i1, !mcsema_real_eip !47
  %FPU_C2_val = alloca i1, !mcsema_real_eip !47
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !47
  %FPU_C3_val = alloca i1, !mcsema_real_eip !47
  %FPU_B_val = alloca i1, !mcsema_real_eip !47
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !47
  %DF_val = alloca i1, !mcsema_real_eip !47
  %OF_val = alloca i1, !mcsema_real_eip !47
  %SF_val = alloca i1, !mcsema_real_eip !47
  %CF_val = alloca i1, !mcsema_real_eip !47
  %AF_val = alloca i1, !mcsema_real_eip !47
  %PF_val = alloca i1, !mcsema_real_eip !47
  %ZF_val = alloca i1, !mcsema_real_eip !47
  %RIP_val = alloca i64, !mcsema_real_eip !47
  %R14_val = alloca i64, !mcsema_real_eip !47
  %R13_val = alloca i64, !mcsema_real_eip !47
  %R12_val = alloca i64, !mcsema_real_eip !47
  %R11_val = alloca i64, !mcsema_real_eip !47
  %R10_val = alloca i64, !mcsema_real_eip !47
  %R9_val = alloca i64, !mcsema_real_eip !47
  %R8_val = alloca i64, !mcsema_real_eip !47
  %RSP_val = alloca i64, !mcsema_real_eip !47
  %RBP_val = alloca i64, !mcsema_real_eip !47
  %RDI_val = alloca i64, !mcsema_real_eip !47
  %RSI_val = alloca i64, !mcsema_real_eip !47
  %RDX_val = alloca i64, !mcsema_real_eip !47
  %RCX_val = alloca i64, !mcsema_real_eip !47
  %RBX_val = alloca i64, !mcsema_real_eip !47
  %RAX_val = alloca i64, !mcsema_real_eip !47
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !47
  %1 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !47
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !47
  %2 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !47
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !47
  %3 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !47
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !47
  %4 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !47
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !47
  %5 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !47
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !47
  %6 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !47
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !47
  %7 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !47
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !47
  %8 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !47
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !47
  %9 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %9, i64* %R8_val, !mcsema_real_eip !47
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !47
  %10 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %10, i64* %R9_val, !mcsema_real_eip !47
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !47
  %11 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %11, i64* %R10_val, !mcsema_real_eip !47
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !47
  %12 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %12, i64* %R11_val, !mcsema_real_eip !47
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !47
  %13 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %13, i64* %R12_val, !mcsema_real_eip !47
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !47
  %14 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %14, i64* %R13_val, !mcsema_real_eip !47
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !47
  %15 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %15, i64* %R14_val, !mcsema_real_eip !47
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !47
  %16 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %16, i64* %R15_val, !mcsema_real_eip !47
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !47
  %17 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !47
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !47
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %18, i1* %CF_val, !mcsema_real_eip !47
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !47
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %19, i1* %PF_val, !mcsema_real_eip !47
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !47
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %20, i1* %AF_val, !mcsema_real_eip !47
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !47
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !47
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !47
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %22, i1* %SF_val, !mcsema_real_eip !47
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !47
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %23, i1* %OF_val, !mcsema_real_eip !47
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !47
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %24, i1* %DF_val, !mcsema_real_eip !47
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !47
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !47
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !47
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !47
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !47
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !47
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !47
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !47
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !47
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !47
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !47
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !47
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !47
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !47
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !47
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !47
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !47
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !47
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !47
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !47
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !47
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !47
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !47
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !47
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !47
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !47
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !47
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !47
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !47
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !47
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !47
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !47
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !47
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !47
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !47
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !47
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !47
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !47
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !47
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !47
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !47
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !47
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !47
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !47
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !47
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !47
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_ptr_to_int_ = ptrtoint i64* %52 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i64* %52 to i8*
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %54, label %55

; <label>:54:                                     ; preds = %entry
  %_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_address_in_parent_stack_bt_ = bitcast i8* %_address_in_parent_stack_ to i64*
  br label %55

; <label>:55:                                     ; preds = %entry, %54
  %56 = phi i64* [ %52, %entry ], [ %_address_in_parent_stack_bt_, %54 ]
  %_new_load_ = load i64, i64* %56
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !47
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !47
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !47
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !47
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !47
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !47
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !47
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !47
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !47
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !47
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !47
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !47
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !47
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !47
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !47
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !47
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !47
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !47
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !47
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !47
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !47
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !47
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !47
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !47
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !47
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !47
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !47
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !47
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !47
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !47
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !47
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !47
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !47
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !47
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !47
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !47
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !47
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !47
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !47
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !47
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %83 = add i64 %80, 16, !mcsema_real_eip !49
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !49
  %_ptr_to_int_90 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_local_end_to_int_91 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_92 = bitcast i64* %_allin_new_bt_2 to i8*
  %_offset_above_rbp_93 = sub i64 %_ptr_to_int_90, %_local_end_to_int_91
  %_pot_address_in_parent_stack_94 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_cond1_95 = icmp ugt i8* %_ptr_bt_92, %_local_stack_end_ptr_
  %_cond2_1_96 = icmp ugt i8* %_ptr_bt_92, %_parent_stack_end_ptr_
  %_cond2_2_97 = icmp ult i8* %_ptr_bt_92, %_parent_stack_start_ptr_
  %_cond2_98 = or i1 %_cond2_1_96, %_cond2_2_97
  %_cond4_99 = icmp ule i8* %_pot_address_in_parent_stack_94, %_parent_stack_end_ptr_
  %_cond1_n_cond2_100 = and i1 %_cond1_95, %_cond2_98
  %_cond1_n_cond2_cond3_101 = and i1 %_cond1_n_cond2_100, %_cond4_99
  br i1 %_cond1_n_cond2_cond3_101, label %85, label %86

; <label>:85:                                     ; preds = %55
  %_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_address_in_parent_stack_bt_103 = bitcast i8* %_address_in_parent_stack_102 to i64*
  br label %86

; <label>:86:                                     ; preds = %55, %85
  %87 = phi i64* [ %_allin_new_bt_2, %55 ], [ %_address_in_parent_stack_bt_103, %85 ]
  %_new_load_104 = load i64, i64* %87
  store i64 %_new_load_104, i64* %RAX_val, !mcsema_real_eip !49
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %88 = add i64 %80, 8, !mcsema_real_eip !50
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !50
  %_ptr_to_int_105 = ptrtoint i64* %_allin_new_bt_4 to i64
  %_local_end_to_int_106 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_107 = bitcast i64* %_allin_new_bt_4 to i8*
  %_offset_above_rbp_108 = sub i64 %_ptr_to_int_105, %_local_end_to_int_106
  %_pot_address_in_parent_stack_109 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_cond1_110 = icmp ugt i8* %_ptr_bt_107, %_local_stack_end_ptr_
  %_cond2_1_111 = icmp ugt i8* %_ptr_bt_107, %_parent_stack_end_ptr_
  %_cond2_2_112 = icmp ult i8* %_ptr_bt_107, %_parent_stack_start_ptr_
  %_cond2_113 = or i1 %_cond2_1_111, %_cond2_2_112
  %_cond4_114 = icmp ule i8* %_pot_address_in_parent_stack_109, %_parent_stack_end_ptr_
  %_cond1_n_cond2_115 = and i1 %_cond1_110, %_cond2_113
  %_cond1_n_cond2_cond3_116 = and i1 %_cond1_n_cond2_115, %_cond4_114
  br i1 %_cond1_n_cond2_cond3_116, label %90, label %91

; <label>:90:                                     ; preds = %86
  %_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_address_in_parent_stack_bt_118 = bitcast i8* %_address_in_parent_stack_117 to i64*
  br label %91

; <label>:91:                                     ; preds = %86, %90
  %92 = phi i64* [ %_allin_new_bt_4, %86 ], [ %_address_in_parent_stack_bt_118, %90 ]
  %_new_load_119 = load i64, i64* %92
  store i64 %_new_load_119, i64* %R10_val, !mcsema_real_eip !50
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -20
  %94 = add i64 %93, -20, !mcsema_real_eip !51
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !51
  %96 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !51
  %98 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !51
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %100 = add i64 %99, -24, !mcsema_real_eip !52
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !52
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !52
  %104 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !52
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -28
  %106 = add i64 %105, -28, !mcsema_real_eip !53
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !53
  %110 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !53
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %112 = add i64 %111, -32, !mcsema_real_eip !54
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !54
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !54
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !54
  %116 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !54
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -36
  %118 = add i64 %117, -36, !mcsema_real_eip !55
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !55
  %120 = load i64, i64* %R8_val, !mcsema_real_eip !55
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !55
  %122 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !55
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -40
  %124 = add i64 %123, -40, !mcsema_real_eip !56
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !56
  %126 = load i64, i64* %R9_val, !mcsema_real_eip !56
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !56
  %128 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !56
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -48
  %130 = add i64 %129, -48, !mcsema_real_eip !57
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !57
  %132 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %132, i64* %_allin_new_bt_25, !mcsema_real_eip !57
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -56
  %134 = add i64 %133, -56, !mcsema_real_eip !58
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !58
  %136 = load i64, i64* %RAX_val, !mcsema_real_eip !58
  store i64 %136, i64* %_allin_new_bt_28, !mcsema_real_eip !58
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -48
  %138 = add i64 %137, -48, !mcsema_real_eip !59
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !59
  %_ptr_to_int_120 = ptrtoint i64* %_allin_new_bt_31 to i64
  %_local_end_to_int_121 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_122 = bitcast i64* %_allin_new_bt_31 to i8*
  %_offset_above_rbp_123 = sub i64 %_ptr_to_int_120, %_local_end_to_int_121
  %_pot_address_in_parent_stack_124 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_123
  %_cond1_125 = icmp ugt i8* %_ptr_bt_122, %_local_stack_end_ptr_
  %_cond2_1_126 = icmp ugt i8* %_ptr_bt_122, %_parent_stack_end_ptr_
  %_cond2_2_127 = icmp ult i8* %_ptr_bt_122, %_parent_stack_start_ptr_
  %_cond2_128 = or i1 %_cond2_1_126, %_cond2_2_127
  %_cond4_129 = icmp ule i8* %_pot_address_in_parent_stack_124, %_parent_stack_end_ptr_
  %_cond1_n_cond2_130 = and i1 %_cond1_125, %_cond2_128
  %_cond1_n_cond2_cond3_131 = and i1 %_cond1_n_cond2_130, %_cond4_129
  br i1 %_cond1_n_cond2_cond3_131, label %140, label %141

; <label>:140:                                    ; preds = %91
  %_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_123
  %_address_in_parent_stack_bt_133 = bitcast i8* %_address_in_parent_stack_132 to i64*
  br label %141

; <label>:141:                                    ; preds = %91, %140
  %142 = phi i64* [ %_allin_new_bt_31, %91 ], [ %_address_in_parent_stack_bt_133, %140 ]
  %_new_load_134 = load i64, i64* %142
  store i64 %_new_load_134, i64* %RAX_val, !mcsema_real_eip !59
  %143 = inttoptr i64 %_new_load_134 to i64*, !mcsema_real_eip !60
  %144 = bitcast i64* %143 to i32*
  %_ptr_to_int_135 = ptrtoint i32* %144 to i64
  %_local_end_to_int_136 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_137 = bitcast i32* %144 to i8*
  %_offset_above_rbp_138 = sub i64 %_ptr_to_int_135, %_local_end_to_int_136
  %_pot_address_in_parent_stack_139 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_138
  %_cond1_140 = icmp ugt i8* %_ptr_bt_137, %_local_stack_end_ptr_
  %_cond2_1_141 = icmp ugt i8* %_ptr_bt_137, %_parent_stack_end_ptr_
  %_cond2_2_142 = icmp ult i8* %_ptr_bt_137, %_parent_stack_start_ptr_
  %_cond2_143 = or i1 %_cond2_1_141, %_cond2_2_142
  %_cond4_144 = icmp ule i8* %_pot_address_in_parent_stack_139, %_parent_stack_end_ptr_
  %_cond1_n_cond2_145 = and i1 %_cond1_140, %_cond2_143
  %_cond1_n_cond2_cond3_146 = and i1 %_cond1_n_cond2_145, %_cond4_144
  br i1 %_cond1_n_cond2_cond3_146, label %145, label %146

; <label>:145:                                    ; preds = %141
  %_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_138
  %_address_in_parent_stack_bt_148 = bitcast i8* %_address_in_parent_stack_147 to i32*
  br label %146

; <label>:146:                                    ; preds = %141, %145
  %147 = phi i32* [ %144, %141 ], [ %_address_in_parent_stack_bt_148, %145 ]
  %_new_load_149 = load i32, i32* %147
  %148 = zext i32 %_new_load_149 to i64, !mcsema_real_eip !60
  store i64 %148, i64* %RCX_val, !mcsema_real_eip !60
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -56
  %150 = add i64 %149, -56, !mcsema_real_eip !61
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !61
  %_ptr_to_int_150 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_local_end_to_int_151 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_152 = bitcast i64* %_allin_new_bt_34 to i8*
  %_offset_above_rbp_153 = sub i64 %_ptr_to_int_150, %_local_end_to_int_151
  %_pot_address_in_parent_stack_154 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_153
  %_cond1_155 = icmp ugt i8* %_ptr_bt_152, %_local_stack_end_ptr_
  %_cond2_1_156 = icmp ugt i8* %_ptr_bt_152, %_parent_stack_end_ptr_
  %_cond2_2_157 = icmp ult i8* %_ptr_bt_152, %_parent_stack_start_ptr_
  %_cond2_158 = or i1 %_cond2_1_156, %_cond2_2_157
  %_cond4_159 = icmp ule i8* %_pot_address_in_parent_stack_154, %_parent_stack_end_ptr_
  %_cond1_n_cond2_160 = and i1 %_cond1_155, %_cond2_158
  %_cond1_n_cond2_cond3_161 = and i1 %_cond1_n_cond2_160, %_cond4_159
  br i1 %_cond1_n_cond2_cond3_161, label %152, label %153

; <label>:152:                                    ; preds = %146
  %_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_153
  %_address_in_parent_stack_bt_163 = bitcast i8* %_address_in_parent_stack_162 to i64*
  br label %153

; <label>:153:                                    ; preds = %146, %152
  %154 = phi i64* [ %_allin_new_bt_34, %146 ], [ %_address_in_parent_stack_bt_163, %152 ]
  %_new_load_164 = load i64, i64* %154
  store i64 %_new_load_164, i64* %RAX_val, !mcsema_real_eip !61
  %155 = inttoptr i64 %_new_load_164 to i64*, !mcsema_real_eip !62
  %156 = bitcast i64* %155 to i32*
  %_ptr_to_int_165 = ptrtoint i32* %156 to i64
  %_local_end_to_int_166 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_167 = bitcast i32* %156 to i8*
  %_offset_above_rbp_168 = sub i64 %_ptr_to_int_165, %_local_end_to_int_166
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_ptr_bt_167, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_ptr_bt_167, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_ptr_bt_167, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %157, label %158

; <label>:157:                                    ; preds = %153
  %_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_address_in_parent_stack_bt_178 = bitcast i8* %_address_in_parent_stack_177 to i32*
  br label %158

; <label>:158:                                    ; preds = %153, %157
  %159 = phi i32* [ %156, %153 ], [ %_address_in_parent_stack_bt_178, %157 ]
  %_new_load_179 = load i32, i32* %159
  %160 = zext i32 %_new_load_179 to i64, !mcsema_real_eip !62
  store i64 %160, i64* %RDX_val, !mcsema_real_eip !62
  %161 = load i64, i64* %RCX_val, !mcsema_real_eip !63
  %162 = trunc i64 %161 to i32, !mcsema_real_eip !63
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_179, i32 %162)
  %163 = extractvalue { i32, i1 } %uadd, 0
  %164 = xor i32 %163, %162, !mcsema_real_eip !63
  %165 = xor i32 %164, %_new_load_179, !mcsema_real_eip !63
  %166 = and i32 %165, 16, !mcsema_real_eip !63
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !63
  store i1 %167, i1* %AF_val, !mcsema_real_eip !63
  %168 = icmp slt i32 %163, 0
  store i1 %168, i1* %SF_val, !mcsema_real_eip !63
  %169 = icmp eq i32 %163, 0, !mcsema_real_eip !63
  store i1 %169, i1* %ZF_val, !mcsema_real_eip !63
  %170 = xor i32 %_new_load_179, -2147483648, !mcsema_real_eip !63
  %171 = xor i32 %170, %162, !mcsema_real_eip !63
  %172 = and i32 %164, %171, !mcsema_real_eip !63
  %173 = icmp slt i32 %172, 0
  store i1 %173, i1* %OF_val, !mcsema_real_eip !63
  %174 = trunc i32 %163 to i8, !mcsema_real_eip !63
  %175 = tail call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !63
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  store i1 %177, i1* %PF_val, !mcsema_real_eip !63
  %178 = extractvalue { i32, i1 } %uadd, 1
  store i1 %178, i1* %CF_val, !mcsema_real_eip !63
  %179 = zext i32 %163 to i64, !mcsema_real_eip !63
  store i64 %179, i64* %RCX_val, !mcsema_real_eip !63
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -72
  %181 = add i64 %180, -72, !mcsema_real_eip !64
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !64
  %183 = bitcast i64* %_allin_new_bt_37 to i32*
  store i32 %163, i32* %183, !mcsema_real_eip !64
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -48
  %185 = add i64 %184, -48, !mcsema_real_eip !65
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !65
  %_ptr_to_int_180 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_local_end_to_int_181 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_182 = bitcast i64* %_allin_new_bt_40 to i8*
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %_local_end_to_int_181
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_ptr_bt_182, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_ptr_bt_182, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_ptr_bt_182, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  br i1 %_cond1_n_cond2_cond3_191, label %187, label %188

; <label>:187:                                    ; preds = %158
  %_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_address_in_parent_stack_bt_193 = bitcast i8* %_address_in_parent_stack_192 to i64*
  br label %188

; <label>:188:                                    ; preds = %158, %187
  %189 = phi i64* [ %_allin_new_bt_40, %158 ], [ %_address_in_parent_stack_bt_193, %187 ]
  %_new_load_194 = load i64, i64* %189
  store i64 %_new_load_194, i64* %RAX_val, !mcsema_real_eip !65
  %190 = add i64 %_new_load_194, 4, !mcsema_real_eip !66
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !66
  %192 = bitcast i64* %191 to i32*
  %_ptr_to_int_195 = ptrtoint i32* %192 to i64
  %_local_end_to_int_196 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_197 = bitcast i32* %192 to i8*
  %_offset_above_rbp_198 = sub i64 %_ptr_to_int_195, %_local_end_to_int_196
  %_pot_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_cond1_200 = icmp ugt i8* %_ptr_bt_197, %_local_stack_end_ptr_
  %_cond2_1_201 = icmp ugt i8* %_ptr_bt_197, %_parent_stack_end_ptr_
  %_cond2_2_202 = icmp ult i8* %_ptr_bt_197, %_parent_stack_start_ptr_
  %_cond2_203 = or i1 %_cond2_1_201, %_cond2_2_202
  %_cond4_204 = icmp ule i8* %_pot_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond1_n_cond2_205 = and i1 %_cond1_200, %_cond2_203
  %_cond1_n_cond2_cond3_206 = and i1 %_cond1_n_cond2_205, %_cond4_204
  br i1 %_cond1_n_cond2_cond3_206, label %193, label %194

; <label>:193:                                    ; preds = %188
  %_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_address_in_parent_stack_bt_208 = bitcast i8* %_address_in_parent_stack_207 to i32*
  br label %194

; <label>:194:                                    ; preds = %188, %193
  %195 = phi i32* [ %192, %188 ], [ %_address_in_parent_stack_bt_208, %193 ]
  %_new_load_209 = load i32, i32* %195
  %196 = zext i32 %_new_load_209 to i64, !mcsema_real_eip !66
  store i64 %196, i64* %RCX_val, !mcsema_real_eip !66
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %197 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %198 = add i64 %197, -56, !mcsema_real_eip !67
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !67
  %_ptr_to_int_210 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_local_end_to_int_211 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_212 = bitcast i64* %_allin_new_bt_43 to i8*
  %_offset_above_rbp_213 = sub i64 %_ptr_to_int_210, %_local_end_to_int_211
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_ptr_bt_212, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_ptr_bt_212, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_ptr_bt_212, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  br i1 %_cond1_n_cond2_cond3_221, label %200, label %201

; <label>:200:                                    ; preds = %194
  %_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_address_in_parent_stack_bt_223 = bitcast i8* %_address_in_parent_stack_222 to i64*
  br label %201

; <label>:201:                                    ; preds = %194, %200
  %202 = phi i64* [ %_allin_new_bt_43, %194 ], [ %_address_in_parent_stack_bt_223, %200 ]
  %_new_load_224 = load i64, i64* %202
  store i64 %_new_load_224, i64* %RAX_val, !mcsema_real_eip !67
  %203 = add i64 %_new_load_224, 4, !mcsema_real_eip !68
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !68
  %205 = bitcast i64* %204 to i32*
  %_ptr_to_int_225 = ptrtoint i32* %205 to i64
  %_local_end_to_int_226 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_227 = bitcast i32* %205 to i8*
  %_offset_above_rbp_228 = sub i64 %_ptr_to_int_225, %_local_end_to_int_226
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_ptr_bt_227, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_ptr_bt_227, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_ptr_bt_227, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  br i1 %_cond1_n_cond2_cond3_236, label %206, label %207

; <label>:206:                                    ; preds = %201
  %_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_address_in_parent_stack_bt_238 = bitcast i8* %_address_in_parent_stack_237 to i32*
  br label %207

; <label>:207:                                    ; preds = %201, %206
  %208 = phi i32* [ %205, %201 ], [ %_address_in_parent_stack_bt_238, %206 ]
  %_new_load_239 = load i32, i32* %208
  %209 = zext i32 %_new_load_239 to i64, !mcsema_real_eip !68
  store i64 %209, i64* %RDX_val, !mcsema_real_eip !68
  %210 = load i64, i64* %RCX_val, !mcsema_real_eip !69
  %211 = trunc i64 %210 to i32, !mcsema_real_eip !69
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_239, i32 %211)
  %212 = extractvalue { i32, i1 } %uadd70, 0
  %213 = xor i32 %212, %211, !mcsema_real_eip !69
  %214 = xor i32 %213, %_new_load_239, !mcsema_real_eip !69
  %215 = and i32 %214, 16, !mcsema_real_eip !69
  %216 = icmp ne i32 %215, 0, !mcsema_real_eip !69
  store i1 %216, i1* %AF_val, !mcsema_real_eip !69
  %217 = icmp slt i32 %212, 0
  store i1 %217, i1* %SF_val, !mcsema_real_eip !69
  %218 = icmp eq i32 %212, 0, !mcsema_real_eip !69
  store i1 %218, i1* %ZF_val, !mcsema_real_eip !69
  %219 = xor i32 %_new_load_239, -2147483648, !mcsema_real_eip !69
  %220 = xor i32 %219, %211, !mcsema_real_eip !69
  %221 = and i32 %213, %220, !mcsema_real_eip !69
  %222 = icmp slt i32 %221, 0
  store i1 %222, i1* %OF_val, !mcsema_real_eip !69
  %223 = trunc i32 %212 to i8, !mcsema_real_eip !69
  %224 = tail call i8 @llvm.ctpop.i8(i8 %223), !mcsema_real_eip !69
  %225 = and i8 %224, 1
  %226 = icmp eq i8 %225, 0
  store i1 %226, i1* %PF_val, !mcsema_real_eip !69
  %227 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %227, i1* %CF_val, !mcsema_real_eip !69
  %228 = zext i32 %212 to i64, !mcsema_real_eip !69
  store i64 %228, i64* %RCX_val, !mcsema_real_eip !69
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %229 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -68
  %230 = add i64 %229, -68, !mcsema_real_eip !70
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !70
  %232 = bitcast i64* %_allin_new_bt_46 to i32*
  store i32 %212, i32* %232, !mcsema_real_eip !70
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %233 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -48
  %234 = add i64 %233, -48, !mcsema_real_eip !71
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !71
  %_ptr_to_int_240 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_local_end_to_int_241 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_242 = bitcast i64* %_allin_new_bt_49 to i8*
  %_offset_above_rbp_243 = sub i64 %_ptr_to_int_240, %_local_end_to_int_241
  %_pot_address_in_parent_stack_244 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_cond1_245 = icmp ugt i8* %_ptr_bt_242, %_local_stack_end_ptr_
  %_cond2_1_246 = icmp ugt i8* %_ptr_bt_242, %_parent_stack_end_ptr_
  %_cond2_2_247 = icmp ult i8* %_ptr_bt_242, %_parent_stack_start_ptr_
  %_cond2_248 = or i1 %_cond2_1_246, %_cond2_2_247
  %_cond4_249 = icmp ule i8* %_pot_address_in_parent_stack_244, %_parent_stack_end_ptr_
  %_cond1_n_cond2_250 = and i1 %_cond1_245, %_cond2_248
  %_cond1_n_cond2_cond3_251 = and i1 %_cond1_n_cond2_250, %_cond4_249
  br i1 %_cond1_n_cond2_cond3_251, label %236, label %237

; <label>:236:                                    ; preds = %207
  %_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_address_in_parent_stack_bt_253 = bitcast i8* %_address_in_parent_stack_252 to i64*
  br label %237

; <label>:237:                                    ; preds = %207, %236
  %238 = phi i64* [ %_allin_new_bt_49, %207 ], [ %_address_in_parent_stack_bt_253, %236 ]
  %_new_load_254 = load i64, i64* %238
  store i64 %_new_load_254, i64* %RAX_val, !mcsema_real_eip !71
  %239 = add i64 %_new_load_254, 8, !mcsema_real_eip !72
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !72
  %241 = bitcast i64* %240 to i32*
  %_ptr_to_int_255 = ptrtoint i32* %241 to i64
  %_local_end_to_int_256 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_257 = bitcast i32* %241 to i8*
  %_offset_above_rbp_258 = sub i64 %_ptr_to_int_255, %_local_end_to_int_256
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_ptr_bt_257, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_ptr_bt_257, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_ptr_bt_257, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  br i1 %_cond1_n_cond2_cond3_266, label %242, label %243

; <label>:242:                                    ; preds = %237
  %_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_address_in_parent_stack_bt_268 = bitcast i8* %_address_in_parent_stack_267 to i32*
  br label %243

; <label>:243:                                    ; preds = %237, %242
  %244 = phi i32* [ %241, %237 ], [ %_address_in_parent_stack_bt_268, %242 ]
  %_new_load_269 = load i32, i32* %244
  %245 = zext i32 %_new_load_269 to i64, !mcsema_real_eip !72
  store i64 %245, i64* %RCX_val, !mcsema_real_eip !72
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %246 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -56
  %247 = add i64 %246, -56, !mcsema_real_eip !73
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !73
  %_ptr_to_int_270 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_local_end_to_int_271 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_272 = bitcast i64* %_allin_new_bt_52 to i8*
  %_offset_above_rbp_273 = sub i64 %_ptr_to_int_270, %_local_end_to_int_271
  %_pot_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_cond1_275 = icmp ugt i8* %_ptr_bt_272, %_local_stack_end_ptr_
  %_cond2_1_276 = icmp ugt i8* %_ptr_bt_272, %_parent_stack_end_ptr_
  %_cond2_2_277 = icmp ult i8* %_ptr_bt_272, %_parent_stack_start_ptr_
  %_cond2_278 = or i1 %_cond2_1_276, %_cond2_2_277
  %_cond4_279 = icmp ule i8* %_pot_address_in_parent_stack_274, %_parent_stack_end_ptr_
  %_cond1_n_cond2_280 = and i1 %_cond1_275, %_cond2_278
  %_cond1_n_cond2_cond3_281 = and i1 %_cond1_n_cond2_280, %_cond4_279
  br i1 %_cond1_n_cond2_cond3_281, label %249, label %250

; <label>:249:                                    ; preds = %243
  %_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_address_in_parent_stack_bt_283 = bitcast i8* %_address_in_parent_stack_282 to i64*
  br label %250

; <label>:250:                                    ; preds = %243, %249
  %251 = phi i64* [ %_allin_new_bt_52, %243 ], [ %_address_in_parent_stack_bt_283, %249 ]
  %_new_load_284 = load i64, i64* %251
  store i64 %_new_load_284, i64* %RAX_val, !mcsema_real_eip !73
  %252 = add i64 %_new_load_284, 8, !mcsema_real_eip !74
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !74
  %254 = bitcast i64* %253 to i32*
  %_ptr_to_int_285 = ptrtoint i32* %254 to i64
  %_local_end_to_int_286 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_287 = bitcast i32* %254 to i8*
  %_offset_above_rbp_288 = sub i64 %_ptr_to_int_285, %_local_end_to_int_286
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_ptr_bt_287, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_ptr_bt_287, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_ptr_bt_287, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  br i1 %_cond1_n_cond2_cond3_296, label %255, label %256

; <label>:255:                                    ; preds = %250
  %_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_address_in_parent_stack_bt_298 = bitcast i8* %_address_in_parent_stack_297 to i32*
  br label %256

; <label>:256:                                    ; preds = %250, %255
  %257 = phi i32* [ %254, %250 ], [ %_address_in_parent_stack_bt_298, %255 ]
  %_new_load_299 = load i32, i32* %257
  %258 = zext i32 %_new_load_299 to i64, !mcsema_real_eip !74
  store i64 %258, i64* %RDX_val, !mcsema_real_eip !74
  %259 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %260 = trunc i64 %259 to i32, !mcsema_real_eip !75
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_299, i32 %260)
  %261 = extractvalue { i32, i1 } %uadd71, 0
  %262 = xor i32 %261, %260, !mcsema_real_eip !75
  %263 = xor i32 %262, %_new_load_299, !mcsema_real_eip !75
  %264 = and i32 %263, 16, !mcsema_real_eip !75
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !75
  store i1 %265, i1* %AF_val, !mcsema_real_eip !75
  %266 = icmp slt i32 %261, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !75
  %267 = icmp eq i32 %261, 0, !mcsema_real_eip !75
  store i1 %267, i1* %ZF_val, !mcsema_real_eip !75
  %268 = xor i32 %_new_load_299, -2147483648, !mcsema_real_eip !75
  %269 = xor i32 %268, %260, !mcsema_real_eip !75
  %270 = and i32 %262, %269, !mcsema_real_eip !75
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !75
  %272 = trunc i32 %261 to i8, !mcsema_real_eip !75
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !75
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !75
  %276 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !75
  %277 = zext i32 %261 to i64, !mcsema_real_eip !75
  store i64 %277, i64* %RCX_val, !mcsema_real_eip !75
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -64
  %279 = add i64 %278, -64, !mcsema_real_eip !76
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !76
  %281 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %261, i32* %281, !mcsema_real_eip !76
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %282 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -64
  %283 = add i64 %282, -64, !mcsema_real_eip !77
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !77
  %285 = bitcast i64* %_allin_new_bt_58 to i32*
  %_ptr_to_int_300 = ptrtoint i32* %285 to i64
  %_local_end_to_int_301 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_302 = bitcast i32* %285 to i8*
  %_offset_above_rbp_303 = sub i64 %_ptr_to_int_300, %_local_end_to_int_301
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_ptr_bt_302, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_ptr_bt_302, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_ptr_bt_302, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  br i1 %_cond1_n_cond2_cond3_311, label %286, label %287

; <label>:286:                                    ; preds = %256
  %_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_address_in_parent_stack_bt_313 = bitcast i8* %_address_in_parent_stack_312 to i32*
  br label %287

; <label>:287:                                    ; preds = %256, %286
  %288 = phi i32* [ %285, %256 ], [ %_address_in_parent_stack_bt_313, %286 ]
  %_new_load_314 = load i32, i32* %288
  %289 = zext i32 %_new_load_314 to i64, !mcsema_real_eip !77
  store i64 %289, i64* %RCX_val, !mcsema_real_eip !77
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %290 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -8
  %291 = add i64 %290, -8, !mcsema_real_eip !78
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !78
  %293 = bitcast i64* %_allin_new_bt_61 to i32*
  store i32 %_new_load_314, i32* %293, !mcsema_real_eip !78
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %294 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -72
  %295 = add i64 %294, -72, !mcsema_real_eip !79
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !79
  %_ptr_to_int_315 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_local_end_to_int_316 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_317 = bitcast i64* %_allin_new_bt_64 to i8*
  %_offset_above_rbp_318 = sub i64 %_ptr_to_int_315, %_local_end_to_int_316
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_ptr_bt_317, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_ptr_bt_317, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_ptr_bt_317, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  br i1 %_cond1_n_cond2_cond3_326, label %297, label %298

; <label>:297:                                    ; preds = %287
  %_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_address_in_parent_stack_bt_328 = bitcast i8* %_address_in_parent_stack_327 to i64*
  br label %298

; <label>:298:                                    ; preds = %287, %297
  %299 = phi i64* [ %_allin_new_bt_64, %287 ], [ %_address_in_parent_stack_bt_328, %297 ]
  %_new_load_329 = load i64, i64* %299
  store i64 %_new_load_329, i64* %RAX_val, !mcsema_real_eip !79
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -16
  %300 = add i64 %294, -16, !mcsema_real_eip !80
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !80
  store i64 %_new_load_329, i64* %_allin_new_bt_66, !mcsema_real_eip !80
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %302 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -8
  %303 = add i64 %302, -8, !mcsema_real_eip !81
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !81
  %305 = bitcast i64* %_allin_new_bt_69 to i32*
  %_ptr_to_int_330 = ptrtoint i32* %305 to i64
  %_local_end_to_int_331 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_332 = bitcast i32* %305 to i8*
  %_offset_above_rbp_333 = sub i64 %_ptr_to_int_330, %_local_end_to_int_331
  %_pot_address_in_parent_stack_334 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_cond1_335 = icmp ugt i8* %_ptr_bt_332, %_local_stack_end_ptr_
  %_cond2_1_336 = icmp ugt i8* %_ptr_bt_332, %_parent_stack_end_ptr_
  %_cond2_2_337 = icmp ult i8* %_ptr_bt_332, %_parent_stack_start_ptr_
  %_cond2_338 = or i1 %_cond2_1_336, %_cond2_2_337
  %_cond4_339 = icmp ule i8* %_pot_address_in_parent_stack_334, %_parent_stack_end_ptr_
  %_cond1_n_cond2_340 = and i1 %_cond1_335, %_cond2_338
  %_cond1_n_cond2_cond3_341 = and i1 %_cond1_n_cond2_340, %_cond4_339
  br i1 %_cond1_n_cond2_cond3_341, label %306, label %307

; <label>:306:                                    ; preds = %298
  %_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_address_in_parent_stack_bt_343 = bitcast i8* %_address_in_parent_stack_342 to i32*
  br label %307

; <label>:307:                                    ; preds = %298, %306
  %308 = phi i32* [ %305, %298 ], [ %_address_in_parent_stack_bt_343, %306 ]
  %_new_load_344 = load i32, i32* %308
  %309 = zext i32 %_new_load_344 to i64, !mcsema_real_eip !81
  store i64 %309, i64* %RCX_val, !mcsema_real_eip !81
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %310 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -80
  %311 = add i64 %310, -80, !mcsema_real_eip !82
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !82
  %313 = bitcast i64* %_allin_new_bt_72 to i32*
  store i32 %_new_load_344, i32* %313, !mcsema_real_eip !82
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %314 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -16
  %315 = add i64 %314, -16, !mcsema_real_eip !83
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !83
  %_ptr_to_int_345 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_local_end_to_int_346 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_347 = bitcast i64* %_allin_new_bt_75 to i8*
  %_offset_above_rbp_348 = sub i64 %_ptr_to_int_345, %_local_end_to_int_346
  %_pot_address_in_parent_stack_349 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_cond1_350 = icmp ugt i8* %_ptr_bt_347, %_local_stack_end_ptr_
  %_cond2_1_351 = icmp ugt i8* %_ptr_bt_347, %_parent_stack_end_ptr_
  %_cond2_2_352 = icmp ult i8* %_ptr_bt_347, %_parent_stack_start_ptr_
  %_cond2_353 = or i1 %_cond2_1_351, %_cond2_2_352
  %_cond4_354 = icmp ule i8* %_pot_address_in_parent_stack_349, %_parent_stack_end_ptr_
  %_cond1_n_cond2_355 = and i1 %_cond1_350, %_cond2_353
  %_cond1_n_cond2_cond3_356 = and i1 %_cond1_n_cond2_355, %_cond4_354
  br i1 %_cond1_n_cond2_cond3_356, label %317, label %318

; <label>:317:                                    ; preds = %307
  %_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_address_in_parent_stack_bt_358 = bitcast i8* %_address_in_parent_stack_357 to i64*
  br label %318

; <label>:318:                                    ; preds = %307, %317
  %319 = phi i64* [ %_allin_new_bt_75, %307 ], [ %_address_in_parent_stack_bt_358, %317 ]
  %_new_load_359 = load i64, i64* %319
  store i64 %_new_load_359, i64* %RAX_val, !mcsema_real_eip !83
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -88
  %320 = add i64 %314, -88, !mcsema_real_eip !84
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !84
  store i64 %_new_load_359, i64* %_allin_new_bt_77, !mcsema_real_eip !84
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -88
  %323 = add i64 %322, -88, !mcsema_real_eip !85
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !85
  %_ptr_to_int_360 = ptrtoint i64* %_allin_new_bt_80 to i64
  %_local_end_to_int_361 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_362 = bitcast i64* %_allin_new_bt_80 to i8*
  %_offset_above_rbp_363 = sub i64 %_ptr_to_int_360, %_local_end_to_int_361
  %_pot_address_in_parent_stack_364 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_363
  %_cond1_365 = icmp ugt i8* %_ptr_bt_362, %_local_stack_end_ptr_
  %_cond2_1_366 = icmp ugt i8* %_ptr_bt_362, %_parent_stack_end_ptr_
  %_cond2_2_367 = icmp ult i8* %_ptr_bt_362, %_parent_stack_start_ptr_
  %_cond2_368 = or i1 %_cond2_1_366, %_cond2_2_367
  %_cond4_369 = icmp ule i8* %_pot_address_in_parent_stack_364, %_parent_stack_end_ptr_
  %_cond1_n_cond2_370 = and i1 %_cond1_365, %_cond2_368
  %_cond1_n_cond2_cond3_371 = and i1 %_cond1_n_cond2_370, %_cond4_369
  br i1 %_cond1_n_cond2_cond3_371, label %325, label %326

; <label>:325:                                    ; preds = %318
  %_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_363
  %_address_in_parent_stack_bt_373 = bitcast i8* %_address_in_parent_stack_372 to i64*
  br label %326

; <label>:326:                                    ; preds = %318, %325
  %327 = phi i64* [ %_allin_new_bt_80, %318 ], [ %_address_in_parent_stack_bt_373, %325 ]
  %_new_load_374 = load i64, i64* %327
  store i64 %_new_load_374, i64* %RAX_val, !mcsema_real_eip !85
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -80
  %328 = add i64 %322, -80, !mcsema_real_eip !86
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !86
  %330 = bitcast i64* %_allin_new_bt_82 to i32*
  %_ptr_to_int_375 = ptrtoint i32* %330 to i64
  %_local_end_to_int_376 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_377 = bitcast i32* %330 to i8*
  %_offset_above_rbp_378 = sub i64 %_ptr_to_int_375, %_local_end_to_int_376
  %_pot_address_in_parent_stack_379 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_378
  %_cond1_380 = icmp ugt i8* %_ptr_bt_377, %_local_stack_end_ptr_
  %_cond2_1_381 = icmp ugt i8* %_ptr_bt_377, %_parent_stack_end_ptr_
  %_cond2_2_382 = icmp ult i8* %_ptr_bt_377, %_parent_stack_start_ptr_
  %_cond2_383 = or i1 %_cond2_1_381, %_cond2_2_382
  %_cond4_384 = icmp ule i8* %_pot_address_in_parent_stack_379, %_parent_stack_end_ptr_
  %_cond1_n_cond2_385 = and i1 %_cond1_380, %_cond2_383
  %_cond1_n_cond2_cond3_386 = and i1 %_cond1_n_cond2_385, %_cond4_384
  br i1 %_cond1_n_cond2_cond3_386, label %331, label %332

; <label>:331:                                    ; preds = %326
  %_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_378
  %_address_in_parent_stack_bt_388 = bitcast i8* %_address_in_parent_stack_387 to i32*
  br label %332

; <label>:332:                                    ; preds = %326, %331
  %333 = phi i32* [ %330, %326 ], [ %_address_in_parent_stack_bt_388, %331 ]
  %_new_load_389 = load i32, i32* %333
  %334 = zext i32 %_new_load_389 to i64, !mcsema_real_eip !86
  store i64 %334, i64* %RDX_val, !mcsema_real_eip !86
  %_load_rsp_ptr_83 = load i8*, i8** %_RSP_ptr_
  %335 = load i64, i64* %RSP_val, !mcsema_real_eip !87
  %_allin_new_bt_84 = bitcast i8* %_load_rsp_ptr_83 to i64*
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !87
  %_ptr_to_int_390 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_local_end_to_int_391 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_392 = bitcast i64* %_allin_new_bt_84 to i8*
  %_offset_above_rbp_393 = sub i64 %_ptr_to_int_390, %_local_end_to_int_391
  %_pot_address_in_parent_stack_394 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_393
  %_cond1_395 = icmp ugt i8* %_ptr_bt_392, %_local_stack_end_ptr_
  %_cond2_1_396 = icmp ugt i8* %_ptr_bt_392, %_parent_stack_end_ptr_
  %_cond2_2_397 = icmp ult i8* %_ptr_bt_392, %_parent_stack_start_ptr_
  %_cond2_398 = or i1 %_cond2_1_396, %_cond2_2_397
  %_cond4_399 = icmp ule i8* %_pot_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond1_n_cond2_400 = and i1 %_cond1_395, %_cond2_398
  %_cond1_n_cond2_cond3_401 = and i1 %_cond1_n_cond2_400, %_cond4_399
  br i1 %_cond1_n_cond2_cond3_401, label %337, label %338

; <label>:337:                                    ; preds = %332
  %_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_393
  %_address_in_parent_stack_bt_403 = bitcast i8* %_address_in_parent_stack_402 to i64*
  br label %338

; <label>:338:                                    ; preds = %332, %337
  %339 = phi i64* [ %_allin_new_bt_84, %332 ], [ %_address_in_parent_stack_bt_403, %337 ]
  %_new_load_404 = load i64, i64* %339
  %_new_int2ptr_ = inttoptr i64 %_new_load_404 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_404, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_85 = getelementptr i8, i8* %_load_rsp_ptr_83, i64 16
  %340 = add i64 %335, 16, !mcsema_real_eip !88
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %340, i64* %RSP_val, !mcsema_real_eip !88
  %341 = load i64, i64* %RAX_val, !mcsema_real_eip !88
  store i64 %341, i64* %RAX, !mcsema_real_eip !88
  %342 = load i64, i64* %RBX_val, !mcsema_real_eip !88
  store i64 %342, i64* %RBX, !mcsema_real_eip !88
  %343 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  store i64 %343, i64* %RCX, !mcsema_real_eip !88
  %344 = load i64, i64* %RDX_val, !mcsema_real_eip !88
  store i64 %344, i64* %RDX, !mcsema_real_eip !88
  %345 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  store i64 %345, i64* %RSI, !mcsema_real_eip !88
  %346 = load i64, i64* %RDI_val, !mcsema_real_eip !88
  store i64 %346, i64* %RDI, !mcsema_real_eip !88
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %347 = load i64, i64* %RSP_val, !mcsema_real_eip !88
  %_new_ptr2int_87 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  store volatile i64 %_new_ptr2int_87, i64* %RSP
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_ptr2int_89 = ptrtoint i8* %_load_rbp_ptr_88 to i64
  store volatile i64 %_new_ptr2int_89, i64* %RBP
  %349 = load i64, i64* %R8_val, !mcsema_real_eip !88
  store i64 %349, i64* %R8, !mcsema_real_eip !88
  %350 = load i64, i64* %R9_val, !mcsema_real_eip !88
  store i64 %350, i64* %R9, !mcsema_real_eip !88
  %351 = load i64, i64* %R10_val, !mcsema_real_eip !88
  store i64 %351, i64* %R10, !mcsema_real_eip !88
  %352 = load i64, i64* %R11_val, !mcsema_real_eip !88
  store i64 %352, i64* %R11, !mcsema_real_eip !88
  %353 = load i64, i64* %R12_val, !mcsema_real_eip !88
  store i64 %353, i64* %R12, !mcsema_real_eip !88
  %354 = load i64, i64* %R13_val, !mcsema_real_eip !88
  store i64 %354, i64* %R13, !mcsema_real_eip !88
  %355 = load i64, i64* %R14_val, !mcsema_real_eip !88
  store i64 %355, i64* %R14, !mcsema_real_eip !88
  %356 = load i64, i64* %R15_val, !mcsema_real_eip !88
  store i64 %356, i64* %R15, !mcsema_real_eip !88
  %357 = load i64, i64* %RIP_val, !mcsema_real_eip !88
  store i64 %357, i64* %RIP, !mcsema_real_eip !88
  %358 = load i1, i1* %CF_val, !mcsema_real_eip !88
  store i1 %358, i1* %CF, align 1, !mcsema_real_eip !88
  %359 = load i1, i1* %PF_val, !mcsema_real_eip !88
  store i1 %359, i1* %PF, align 1, !mcsema_real_eip !88
  %360 = load i1, i1* %AF_val, !mcsema_real_eip !88
  store i1 %360, i1* %AF, align 1, !mcsema_real_eip !88
  %361 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  store i1 %361, i1* %ZF, align 1, !mcsema_real_eip !88
  %362 = load i1, i1* %SF_val, !mcsema_real_eip !88
  store i1 %362, i1* %SF, align 1, !mcsema_real_eip !88
  %363 = load i1, i1* %OF_val, !mcsema_real_eip !88
  store i1 %363, i1* %OF, align 1, !mcsema_real_eip !88
  %364 = load i1, i1* %DF_val, !mcsema_real_eip !88
  store i1 %364, i1* %DF, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  %365 = load i1, i1* %FPU_B_val, !mcsema_real_eip !88
  store i1 %365, i1* %FPU_B, align 1, !mcsema_real_eip !88
  %366 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !88
  store i1 %366, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  %367 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !88
  store i3 %367, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  %368 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !88
  store i1 %368, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  %369 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !88
  store i1 %369, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  %370 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !88
  store i1 %370, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  %371 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !88
  store i1 %371, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  %372 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !88
  store i1 %372, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  %373 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !88
  store i1 %373, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  %374 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !88
  store i1 %374, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  %375 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !88
  store i1 %375, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  %376 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !88
  store i1 %376, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  %377 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !88
  store i1 %377, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  %378 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !88
  store i1 %378, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  %379 = load i1, i1* %FPU_X_val, !mcsema_real_eip !88
  store i1 %379, i1* %FPU_X, align 1, !mcsema_real_eip !88
  %380 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !88
  store i2 %380, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  %381 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !88
  store i2 %381, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  %382 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !88
  store i1 %382, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  %383 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !88
  store i1 %383, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  %384 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !88
  store i1 %384, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  %385 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !88
  store i1 %385, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  %386 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !88
  store i1 %386, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  %387 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !88
  store i1 %387, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  %_ptr_to_int_405 = ptrtoint i64* %53 to i64
  %_local_end_to_int_406 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_407 = bitcast i64* %53 to i8*
  %_offset_above_rbp_408 = sub i64 %_ptr_to_int_405, %_local_end_to_int_406
  %_pot_address_in_parent_stack_409 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_408
  %_cond1_410 = icmp ugt i8* %_ptr_bt_407, %_local_stack_end_ptr_
  %_cond2_1_411 = icmp ugt i8* %_ptr_bt_407, %_parent_stack_end_ptr_
  %_cond2_2_412 = icmp ult i8* %_ptr_bt_407, %_parent_stack_start_ptr_
  %_cond2_413 = or i1 %_cond2_1_411, %_cond2_2_412
  %_cond4_414 = icmp ule i8* %_pot_address_in_parent_stack_409, %_parent_stack_end_ptr_
  %_cond1_n_cond2_415 = and i1 %_cond1_410, %_cond2_413
  %_cond1_n_cond2_cond3_416 = and i1 %_cond1_n_cond2_415, %_cond4_414
  br i1 %_cond1_n_cond2_cond3_416, label %388, label %389

; <label>:388:                                    ; preds = %338
  %_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_408
  %_address_in_parent_stack_bt_418 = bitcast i8* %_address_in_parent_stack_417 to i64*
  br label %389

; <label>:389:                                    ; preds = %338, %388
  %390 = phi i64* [ %53, %338 ], [ %_address_in_parent_stack_bt_418, %388 ]
  %_new_load_419 = load i64, i64* %390
  store i64 %_new_load_419, i64* %52, align 4
  %391 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !88
  store i16 %391, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  %392 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !88
  store i64 %392, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !88
  %393 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !88
  store i16 %393, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  %394 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !88
  store i64 %394, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !88
  %395 = load i128, i128* %XMM0_val, !mcsema_real_eip !88
  store i128 %395, i128* %XMM0, align 1, !mcsema_real_eip !88
  %396 = load i128, i128* %XMM1_val, !mcsema_real_eip !88
  store i128 %396, i128* %XMM1, align 1, !mcsema_real_eip !88
  %397 = load i128, i128* %XMM2_val, !mcsema_real_eip !88
  store i128 %397, i128* %XMM2, align 1, !mcsema_real_eip !88
  %398 = load i128, i128* %XMM3_val, !mcsema_real_eip !88
  store i128 %398, i128* %XMM3, align 1, !mcsema_real_eip !88
  %399 = load i128, i128* %XMM4_val, !mcsema_real_eip !88
  store i128 %399, i128* %XMM4, align 1, !mcsema_real_eip !88
  %400 = load i128, i128* %XMM5_val, !mcsema_real_eip !88
  store i128 %400, i128* %XMM5, align 1, !mcsema_real_eip !88
  %401 = load i128, i128* %XMM6_val, !mcsema_real_eip !88
  store i128 %401, i128* %XMM6, align 1, !mcsema_real_eip !88
  %402 = load i128, i128* %XMM7_val, !mcsema_real_eip !88
  store i128 %402, i128* %XMM7, align 1, !mcsema_real_eip !88
  %403 = load i128, i128* %XMM8_val, !mcsema_real_eip !88
  store i128 %403, i128* %XMM8, align 1, !mcsema_real_eip !88
  %404 = load i128, i128* %XMM9_val, !mcsema_real_eip !88
  store i128 %404, i128* %XMM9, align 1, !mcsema_real_eip !88
  %405 = load i128, i128* %XMM10_val, !mcsema_real_eip !88
  store i128 %405, i128* %XMM10, align 1, !mcsema_real_eip !88
  %406 = load i128, i128* %XMM11_val, !mcsema_real_eip !88
  store i128 %406, i128* %XMM11, align 1, !mcsema_real_eip !88
  %407 = load i128, i128* %XMM12_val, !mcsema_real_eip !88
  store i128 %407, i128* %XMM12, align 1, !mcsema_real_eip !88
  %408 = load i128, i128* %XMM13_val, !mcsema_real_eip !88
  store i128 %408, i128* %XMM13, align 1, !mcsema_real_eip !88
  %409 = load i128, i128* %XMM14_val, !mcsema_real_eip !88
  store i128 %409, i128* %XMM14, align 1, !mcsema_real_eip !88
  %410 = load i128, i128* %XMM15_val, !mcsema_real_eip !88
  store i128 %410, i128* %XMM15, align 1, !mcsema_real_eip !88
  %411 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !88
  store i64 %411, i64* %STACK_BASE, align 1, !mcsema_real_eip !88
  %412 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !88
  store i64 %412, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !88
  ret void, !mcsema_real_eip !88
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 145, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 148, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 152, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 159, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 166, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 173, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 185, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 187, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 192, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 196, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 200, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!14 = !{i64 206, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 210, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!16 = !{i64 217, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 221, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!18 = !{i64 228, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 232, [17 x i8] c"\09movq\09%rsp, %rdi\00"}
!20 = !{i64 235, [20 x i8] c"\09movq\09%rax, 8(%rdi)\00"}
!21 = !{i64 239, [22 x i8] c"\09leaq\09-16(%rbp), %rax\00"}
!22 = !{i64 243, [19 x i8] c"\09movq\09%rax, (%rdi)\00"}
!23 = !{i64 246, [15 x i8] c"\09movl\09$1, %ecx\00"}
!24 = !{i64 251, [15 x i8] c"\09movl\09$2, %edx\00"}
!25 = !{i64 261, [17 x i8] c"\09movl\09%ecx, %edi\00"}
!26 = !{i64 263, [22 x i8] c"\09movl\09%esi, -60(%rbp)\00"}
!27 = !{i64 266, [17 x i8] c"\09movl\09%edx, %esi\00"}
!28 = !{i64 268, [22 x i8] c"\09movl\09-60(%rbp), %r8d\00"}
!29 = !{i64 272, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!30 = !{i64 275, [17 x i8] c"\09movl\09%r8d, %edx\00"}
!31 = !{i64 278, [22 x i8] c"\09movl\09-64(%rbp), %r8d\00"}
!32 = !{i64 282, [22 x i8] c"\09movl\09-60(%rbp), %r9d\00"}
!33 = !{i64 286, [12 x i8] c"\09callq\09-291\00"}
!34 = !{i64 291, [22 x i8] c"\09movl\09%edx, -48(%rbp)\00"}
!35 = !{i64 294, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!36 = !{i64 298, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!37 = !{i64 302, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!38 = !{i64 306, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!39 = !{i64 309, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!40 = !{i64 312, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!41 = !{i64 315, [22 x i8] c"\09addl\09-36(%rbp), %ecx\00"}
!42 = !{i64 318, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!43 = !{i64 321, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!44 = !{i64 323, [16 x i8] c"\09addq\09$80, %rsp\00"}
!45 = !{i64 327, [11 x i8] c"\09popq\09%rbp\00"}
!46 = !{i64 328, [6 x i8] c"\09retq\00"}
!47 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!48 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!49 = !{i64 4, [21 x i8] c"\09movq\0924(%rbp), %rax\00"}
!50 = !{i64 8, [21 x i8] c"\09movq\0916(%rbp), %r10\00"}
!51 = !{i64 12, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!52 = !{i64 15, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!53 = !{i64 18, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!54 = !{i64 21, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!55 = !{i64 24, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!56 = !{i64 28, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!57 = !{i64 32, [22 x i8] c"\09movq\09%r10, -48(%rbp)\00"}
!58 = !{i64 36, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!59 = !{i64 40, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!60 = !{i64 44, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!61 = !{i64 46, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!62 = !{i64 50, [19 x i8] c"\09movl\09(%rax), %edx\00"}
!63 = !{i64 52, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!64 = !{i64 54, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!65 = !{i64 57, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!66 = !{i64 61, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!67 = !{i64 64, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!68 = !{i64 68, [20 x i8] c"\09movl\094(%rax), %edx\00"}
!69 = !{i64 71, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!70 = !{i64 73, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!71 = !{i64 76, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!72 = !{i64 80, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!73 = !{i64 83, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!74 = !{i64 87, [20 x i8] c"\09movl\098(%rax), %edx\00"}
!75 = !{i64 90, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!76 = !{i64 92, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!77 = !{i64 95, [22 x i8] c"\09movl\09-64(%rbp), %ecx\00"}
!78 = !{i64 98, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!79 = !{i64 101, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!80 = !{i64 105, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!81 = !{i64 109, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!82 = !{i64 112, [22 x i8] c"\09movl\09%ecx, -80(%rbp)\00"}
!83 = !{i64 115, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!84 = !{i64 119, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!85 = !{i64 123, [22 x i8] c"\09movq\09-88(%rbp), %rax\00"}
!86 = !{i64 127, [22 x i8] c"\09movl\09-80(%rbp), %edx\00"}
!87 = !{i64 130, [11 x i8] c"\09popq\09%rbp\00"}
!88 = !{i64 131, [6 x i8] c"\09retq\00"}
