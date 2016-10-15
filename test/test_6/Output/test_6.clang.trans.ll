; ModuleID = 'Output/test_6.clang.trans.bc'
source_filename = "Output/test_6.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
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
  store i64 40, i64* %RCX_val, !mcsema_real_eip !5
  %_load_rbp_ptr_2 = load i8*, i8** %_RBP_ptr_
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_3 = getelementptr i8, i8* %_load_rbp_ptr_2, i64 -4
  %95 = add i64 %94, -4, !mcsema_real_eip !6
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !6
  %97 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !6
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %99 = add i64 %98, -8, !mcsema_real_eip !7
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = load i64, i64* %RDI_val, !mcsema_real_eip !7
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !7
  %103 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !7
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -16
  %105 = add i64 %104, -16, !mcsema_real_eip !8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !8
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !8
  store i64 %107, i64* %_allin_new_bt_10, !mcsema_real_eip !8
  %108 = load i64, i64* %RCX_val, !mcsema_real_eip !9
  %109 = tail call x86_64_sysvcc i64 @malloc(i64 %108), !mcsema_real_eip !10
  store i64 40, i64* %RDX_val, !mcsema_real_eip !11
  store i64 40, i64* %RDI_val, !mcsema_real_eip !12
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -24
  %111 = add i64 %110, -24, !mcsema_real_eip !13
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !13
  store i64 %109, i64* %_allin_new_bt_13, !mcsema_real_eip !13
  %113 = load i64, i64* %RDI_val, !mcsema_real_eip !14
  %114 = tail call x86_64_sysvcc i64 @malloc(i64 %113), !mcsema_real_eip !14
  store i64 %114, i64* %RAX_val, !mcsema_real_eip !14
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %115 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %116 = add i64 %115, -32, !mcsema_real_eip !15
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !15
  store i64 %114, i64* %_allin_new_bt_16, !mcsema_real_eip !15
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -36
  %119 = add i64 %118, -36, !mcsema_real_eip !16
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !16
  %121 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 0, i32* %121, !mcsema_real_eip !16
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -36
  %123 = add i64 %122, -36, !mcsema_real_eip !17
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !17
  %125 = bitcast i64* %_allin_new_bt_22 to i32*
  %126 = load i32, i32* %125, !mcsema_real_eip !17
  %127 = add i32 %126, -10
  %128 = xor i32 %127, %126, !mcsema_real_eip !17
  %129 = and i32 %128, 16, !mcsema_real_eip !17
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !17
  store i1 %130, i1* %AF_val, !mcsema_real_eip !17
  %131 = trunc i32 %127 to i8, !mcsema_real_eip !17
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !17
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF_val, !mcsema_real_eip !17
  %135 = icmp eq i32 %127, 0, !mcsema_real_eip !17
  store i1 %135, i1* %ZF_val, !mcsema_real_eip !17
  %136 = icmp slt i32 %127, 0
  store i1 %136, i1* %SF_val, !mcsema_real_eip !17
  %137 = icmp ult i32 %126, 10, !mcsema_real_eip !17
  store i1 %137, i1* %CF_val, !mcsema_real_eip !17
  %138 = and i32 %128, %126, !mcsema_real_eip !17
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF_val, !mcsema_real_eip !17
  %tmp = xor i1 %136, %139
  br i1 %tmp, label %block_0xea.preheader, label %block_0x10c, !mcsema_real_eip !18

block_0xea.preheader:                             ; preds = %entry
  br label %block_0xea

block_0x10c.loopexit:                             ; preds = %block_0xea
  br label %block_0x10c

block_0x10c:                                      ; preds = %block_0x10c.loopexit, %entry
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -40
  %141 = add i64 %140, -40, !mcsema_real_eip !19
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !19
  %143 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 0, i32* %143, !mcsema_real_eip !19
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -40
  %145 = add i64 %144, -40, !mcsema_real_eip !20
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !20
  %147 = bitcast i64* %_allin_new_bt_28 to i32*
  %148 = load i32, i32* %147, !mcsema_real_eip !20
  %149 = add i32 %148, -10
  %150 = xor i32 %149, %148, !mcsema_real_eip !20
  %151 = and i32 %150, 16, !mcsema_real_eip !20
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !20
  store i1 %152, i1* %AF_val, !mcsema_real_eip !20
  %153 = trunc i32 %149 to i8, !mcsema_real_eip !20
  %154 = tail call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !20
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  store i1 %156, i1* %PF_val, !mcsema_real_eip !20
  %157 = icmp eq i32 %149, 0, !mcsema_real_eip !20
  store i1 %157, i1* %ZF_val, !mcsema_real_eip !20
  %158 = icmp slt i32 %149, 0
  store i1 %158, i1* %SF_val, !mcsema_real_eip !20
  %159 = icmp ult i32 %148, 10, !mcsema_real_eip !20
  store i1 %159, i1* %CF_val, !mcsema_real_eip !20
  %160 = and i32 %150, %148, !mcsema_real_eip !20
  %161 = icmp slt i32 %160, 0
  store i1 %161, i1* %OF_val, !mcsema_real_eip !20
  %tmp212 = xor i1 %158, %161
  br i1 %tmp212, label %block_0x11d.preheader, label %block_0x13c, !mcsema_real_eip !21

block_0x11d.preheader:                            ; preds = %block_0x10c
  br label %block_0x11d

block_0xea:                                       ; preds = %block_0xea, %block_0xea.preheader
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -36
  %163 = add i64 %162, -36, !mcsema_real_eip !22
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !22
  %165 = bitcast i64* %_allin_new_bt_31 to i32*
  %166 = load i32, i32* %165, !mcsema_real_eip !22
  %167 = add i32 %166, 10
  %uadd209 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %167, i32 1)
  %168 = extractvalue { i32, i1 } %uadd209, 0
  %169 = xor i32 %168, %167, !mcsema_real_eip !23
  %170 = and i32 %169, 16, !mcsema_real_eip !23
  %171 = icmp ne i32 %170, 0, !mcsema_real_eip !23
  store i1 %171, i1* %AF_val, !mcsema_real_eip !23
  %172 = icmp slt i32 %168, 0
  store i1 %172, i1* %SF_val, !mcsema_real_eip !23
  %173 = icmp eq i32 %168, 0, !mcsema_real_eip !23
  store i1 %173, i1* %ZF_val, !mcsema_real_eip !23
  %174 = add i32 %166, -2147483638
  %175 = and i32 %169, %174, !mcsema_real_eip !23
  %176 = icmp slt i32 %175, 0
  store i1 %176, i1* %OF_val, !mcsema_real_eip !23
  %177 = trunc i32 %168 to i8, !mcsema_real_eip !23
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !23
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  store i1 %180, i1* %PF_val, !mcsema_real_eip !23
  %181 = extractvalue { i32, i1 } %uadd209, 1
  store i1 %181, i1* %CF_val, !mcsema_real_eip !23
  %182 = zext i32 %168 to i64, !mcsema_real_eip !23
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !23
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -24
  %184 = add i64 %183, -24, !mcsema_real_eip !24
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !24
  %186 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !24
  store i64 %186, i64* %RCX_val, !mcsema_real_eip !24
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -36
  %187 = add i64 %183, -36, !mcsema_real_eip !25
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !25
  %189 = bitcast i64* %_allin_new_bt_36 to i32*
  %190 = load i32, i32* %189, !mcsema_real_eip !25
  %191 = sext i32 %190 to i64, !mcsema_real_eip !25
  store i64 %191, i64* %RDX_val, !mcsema_real_eip !25
  %192 = load i64, i64* %RCX_val, !mcsema_real_eip !26
  %193 = shl nsw i64 %191, 2
  %194 = add i64 %193, %192, !mcsema_real_eip !26
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !26
  %196 = load i64, i64* %RAX_val, !mcsema_real_eip !26
  %197 = trunc i64 %196 to i32, !mcsema_real_eip !26
  %198 = bitcast i64* %195 to i32*
  store i32 %197, i32* %198, !mcsema_real_eip !26
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %199 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %200 = add i64 %199, -36, !mcsema_real_eip !27
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !27
  %202 = bitcast i64* %_allin_new_bt_39 to i32*
  %203 = load i32, i32* %202, !mcsema_real_eip !27
  %uadd210 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 1)
  %204 = extractvalue { i32, i1 } %uadd210, 0
  %205 = xor i32 %204, %203, !mcsema_real_eip !28
  %206 = and i32 %205, 16, !mcsema_real_eip !28
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !28
  store i1 %207, i1* %AF_val, !mcsema_real_eip !28
  %208 = icmp slt i32 %204, 0
  store i1 %208, i1* %SF_val, !mcsema_real_eip !28
  %209 = icmp eq i32 %204, 0, !mcsema_real_eip !28
  store i1 %209, i1* %ZF_val, !mcsema_real_eip !28
  %210 = xor i32 %203, -2147483648, !mcsema_real_eip !28
  %211 = and i32 %205, %210, !mcsema_real_eip !28
  %212 = icmp slt i32 %211, 0
  store i1 %212, i1* %OF_val, !mcsema_real_eip !28
  %213 = trunc i32 %204 to i8, !mcsema_real_eip !28
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !28
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !28
  %217 = extractvalue { i32, i1 } %uadd210, 1
  store i1 %217, i1* %CF_val, !mcsema_real_eip !28
  %218 = zext i32 %204 to i64, !mcsema_real_eip !28
  store i64 %218, i64* %RAX_val, !mcsema_real_eip !28
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %219 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -36
  %220 = add i64 %219, -36, !mcsema_real_eip !29
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !29
  %222 = bitcast i64* %_allin_new_bt_42 to i32*
  store i32 %204, i32* %222, !mcsema_real_eip !29
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %223 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -36
  %224 = add i64 %223, -36, !mcsema_real_eip !17
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !17
  %226 = bitcast i64* %_allin_new_bt_45 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !17
  %228 = add i32 %227, -10
  %229 = xor i32 %228, %227, !mcsema_real_eip !17
  %230 = and i32 %229, 16, !mcsema_real_eip !17
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !17
  store i1 %231, i1* %AF_val, !mcsema_real_eip !17
  %232 = trunc i32 %228 to i8, !mcsema_real_eip !17
  %233 = tail call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !17
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF_val, !mcsema_real_eip !17
  %236 = icmp eq i32 %228, 0, !mcsema_real_eip !17
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !17
  %237 = icmp slt i32 %228, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !17
  %238 = icmp ult i32 %227, 10, !mcsema_real_eip !17
  store i1 %238, i1* %CF_val, !mcsema_real_eip !17
  %239 = and i32 %229, %227, !mcsema_real_eip !17
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF_val, !mcsema_real_eip !17
  %tmp211 = xor i1 %237, %240
  br i1 %tmp211, label %block_0xea, label %block_0x10c.loopexit, !mcsema_real_eip !18

block_0x13c.loopexit:                             ; preds = %block_0x11d
  br label %block_0x13c

block_0x13c:                                      ; preds = %block_0x13c.loopexit, %block_0x10c
  store i64 100, i64* %RDI_val, !mcsema_real_eip !30
  store i64 200, i64* %RSI_val, !mcsema_real_eip !31
  store i64 300, i64* %RDX_val, !mcsema_real_eip !32
  store i64 400, i64* %RCX_val, !mcsema_real_eip !33
  store i64 500, i64* %R8_val, !mcsema_real_eip !34
  store i64 600, i64* %R9_val, !mcsema_real_eip !35
  store i64 10, i64* %RAX_val, !mcsema_real_eip !36
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %241 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -24
  %242 = add i64 %241, -24, !mcsema_real_eip !37
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !37
  %244 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !37
  store i64 %244, i64* %R10_val, !mcsema_real_eip !37
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %245 = add i64 %241, -32, !mcsema_real_eip !38
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !38
  %247 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !38
  store i64 %247, i64* %R11_val, !mcsema_real_eip !38
  %_load_rsp_ptr_51 = load i8*, i8** %_RSP_ptr_
  %248 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %_allin_new_bt_52 = bitcast i8* %_load_rsp_ptr_51 to i64*
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !39
  %250 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 10, i32* %250, !mcsema_real_eip !39
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %251 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 8
  %252 = add i64 %251, 8, !mcsema_real_eip !40
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !40
  %254 = load i64, i64* %R10_val, !mcsema_real_eip !40
  store i64 %254, i64* %_allin_new_bt_55, !mcsema_real_eip !40
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %255 = load i64, i64* %RSP_val, !mcsema_real_eip !41
  %_new_gep_57 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 16
  %256 = add i64 %255, 16, !mcsema_real_eip !41
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !41
  %258 = bitcast i64* %_allin_new_bt_58 to i32*
  store i32 10, i32* %258, !mcsema_real_eip !41
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %259 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %_new_gep_60 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 24
  %260 = add i64 %259, 24, !mcsema_real_eip !42
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !42
  %262 = load i64, i64* %R11_val, !mcsema_real_eip !42
  store i64 %262, i64* %_allin_new_bt_61, !mcsema_real_eip !42
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %263 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -44
  %264 = add i64 %263, -44, !mcsema_real_eip !43
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !43
  %266 = load i64, i64* %RAX_val, !mcsema_real_eip !43
  %267 = trunc i64 %266 to i32, !mcsema_real_eip !43
  %268 = bitcast i64* %_allin_new_bt_64 to i32*
  store i32 %267, i32* %268, !mcsema_real_eip !43
  %_load_rsp_ptr_65 = load i8*, i8** %_RSP_ptr_
  %269 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %_new_gep_66 = getelementptr i8, i8* %_load_rsp_ptr_65, i64 -8
  %270 = add i64 %269, -8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !44
  store i64 -4981261766360305936, i64* %_allin_new_bt_67, !mcsema_real_eip !44
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %270, i64* %RSP_val, !mcsema_real_eip !44
  %272 = load i64, i64* %RAX_val, !mcsema_real_eip !44
  store i64 %272, i64* %RAX, !mcsema_real_eip !44
  %273 = load i64, i64* %RBX_val, !mcsema_real_eip !44
  store i64 %273, i64* %RBX, !mcsema_real_eip !44
  %274 = load i64, i64* %RCX_val, !mcsema_real_eip !44
  store i64 %274, i64* %RCX, !mcsema_real_eip !44
  %275 = load i64, i64* %RDX_val, !mcsema_real_eip !44
  store i64 %275, i64* %RDX, !mcsema_real_eip !44
  %276 = load i64, i64* %RSI_val, !mcsema_real_eip !44
  store i64 %276, i64* %RSI, !mcsema_real_eip !44
  %277 = load i64, i64* %RDI_val, !mcsema_real_eip !44
  store i64 %277, i64* %RDI, !mcsema_real_eip !44
  %_load_rsp_ptr_68 = load i8*, i8** %_RSP_ptr_
  %278 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %_new_ptr2int_69 = ptrtoint i8* %_load_rsp_ptr_68 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RSP
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_ptr2int_71 = ptrtoint i8* %_load_rbp_ptr_70 to i64
  store volatile i64 %_new_ptr2int_71, i64* %RBP
  %280 = load i64, i64* %R8_val, !mcsema_real_eip !44
  store i64 %280, i64* %R8, !mcsema_real_eip !44
  %281 = load i64, i64* %R9_val, !mcsema_real_eip !44
  store i64 %281, i64* %R9, !mcsema_real_eip !44
  %282 = load i64, i64* %R10_val, !mcsema_real_eip !44
  store i64 %282, i64* %R10, !mcsema_real_eip !44
  %283 = load i64, i64* %R11_val, !mcsema_real_eip !44
  store i64 %283, i64* %R11, !mcsema_real_eip !44
  %284 = load i64, i64* %R12_val, !mcsema_real_eip !44
  store i64 %284, i64* %R12, !mcsema_real_eip !44
  %285 = load i64, i64* %R13_val, !mcsema_real_eip !44
  store i64 %285, i64* %R13, !mcsema_real_eip !44
  %286 = load i64, i64* %R14_val, !mcsema_real_eip !44
  store i64 %286, i64* %R14, !mcsema_real_eip !44
  %287 = load i64, i64* %R15_val, !mcsema_real_eip !44
  store i64 %287, i64* %R15, !mcsema_real_eip !44
  %288 = load i64, i64* %RIP_val, !mcsema_real_eip !44
  store i64 %288, i64* %RIP, !mcsema_real_eip !44
  %289 = load i1, i1* %CF_val, !mcsema_real_eip !44
  store i1 %289, i1* %CF, align 1, !mcsema_real_eip !44
  %290 = load i1, i1* %PF_val, !mcsema_real_eip !44
  store i1 %290, i1* %PF, align 1, !mcsema_real_eip !44
  %291 = load i1, i1* %AF_val, !mcsema_real_eip !44
  store i1 %291, i1* %AF, align 1, !mcsema_real_eip !44
  %292 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  store i1 %292, i1* %ZF, align 1, !mcsema_real_eip !44
  %293 = load i1, i1* %SF_val, !mcsema_real_eip !44
  store i1 %293, i1* %SF, align 1, !mcsema_real_eip !44
  %294 = load i1, i1* %OF_val, !mcsema_real_eip !44
  store i1 %294, i1* %OF, align 1, !mcsema_real_eip !44
  %295 = load i1, i1* %DF_val, !mcsema_real_eip !44
  store i1 %295, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  %296 = load i1, i1* %FPU_B_val, !mcsema_real_eip !44
  store i1 %296, i1* %FPU_B, align 1, !mcsema_real_eip !44
  %297 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !44
  store i1 %297, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  %298 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !44
  store i3 %298, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  %299 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !44
  store i1 %299, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  %300 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !44
  store i1 %300, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  %301 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !44
  store i1 %301, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  %302 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !44
  store i1 %302, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  %303 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !44
  store i1 %303, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  %304 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !44
  store i1 %304, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  %305 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !44
  store i1 %305, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  %306 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !44
  store i1 %306, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  %307 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !44
  store i1 %307, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  %308 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !44
  store i1 %308, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  %309 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !44
  store i1 %309, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  %310 = load i1, i1* %FPU_X_val, !mcsema_real_eip !44
  store i1 %310, i1* %FPU_X, align 1, !mcsema_real_eip !44
  %311 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !44
  store i2 %311, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  %312 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !44
  store i2 %312, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  %313 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !44
  store i1 %313, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  %314 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !44
  store i1 %314, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  %315 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !44
  store i1 %315, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  %316 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !44
  store i1 %316, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  %317 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !44
  store i1 %317, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  %318 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !44
  store i1 %318, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %319 = load i64, i64* %53, align 4
  store i64 %319, i64* %52, align 4
  %320 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !44
  store i16 %320, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  %321 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !44
  store i64 %321, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  %322 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !44
  store i16 %322, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  %323 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !44
  store i64 %323, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  %324 = load i128, i128* %XMM0_val, !mcsema_real_eip !44
  store i128 %324, i128* %XMM0, align 1, !mcsema_real_eip !44
  %325 = load i128, i128* %XMM1_val, !mcsema_real_eip !44
  store i128 %325, i128* %XMM1, align 1, !mcsema_real_eip !44
  %326 = load i128, i128* %XMM2_val, !mcsema_real_eip !44
  store i128 %326, i128* %XMM2, align 1, !mcsema_real_eip !44
  %327 = load i128, i128* %XMM3_val, !mcsema_real_eip !44
  store i128 %327, i128* %XMM3, align 1, !mcsema_real_eip !44
  %328 = load i128, i128* %XMM4_val, !mcsema_real_eip !44
  store i128 %328, i128* %XMM4, align 1, !mcsema_real_eip !44
  %329 = load i128, i128* %XMM5_val, !mcsema_real_eip !44
  store i128 %329, i128* %XMM5, align 1, !mcsema_real_eip !44
  %330 = load i128, i128* %XMM6_val, !mcsema_real_eip !44
  store i128 %330, i128* %XMM6, align 1, !mcsema_real_eip !44
  %331 = load i128, i128* %XMM7_val, !mcsema_real_eip !44
  store i128 %331, i128* %XMM7, align 1, !mcsema_real_eip !44
  %332 = load i128, i128* %XMM8_val, !mcsema_real_eip !44
  store i128 %332, i128* %XMM8, align 1, !mcsema_real_eip !44
  %333 = load i128, i128* %XMM9_val, !mcsema_real_eip !44
  store i128 %333, i128* %XMM9, align 1, !mcsema_real_eip !44
  %334 = load i128, i128* %XMM10_val, !mcsema_real_eip !44
  store i128 %334, i128* %XMM10, align 1, !mcsema_real_eip !44
  %335 = load i128, i128* %XMM11_val, !mcsema_real_eip !44
  store i128 %335, i128* %XMM11, align 1, !mcsema_real_eip !44
  %336 = load i128, i128* %XMM12_val, !mcsema_real_eip !44
  store i128 %336, i128* %XMM12, align 1, !mcsema_real_eip !44
  %337 = load i128, i128* %XMM13_val, !mcsema_real_eip !44
  store i128 %337, i128* %XMM13, align 1, !mcsema_real_eip !44
  %338 = load i128, i128* %XMM14_val, !mcsema_real_eip !44
  store i128 %338, i128* %XMM14, align 1, !mcsema_real_eip !44
  %339 = load i128, i128* %XMM15_val, !mcsema_real_eip !44
  store i128 %339, i128* %XMM15, align 1, !mcsema_real_eip !44
  %340 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !44
  store i64 %340, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  %341 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !44
  store i64 %341, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  %_load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_97)
  %342 = load i64, i64* %RAX, !mcsema_real_eip !44
  store i64 %342, i64* %RAX_val, !mcsema_real_eip !44
  %343 = load i64, i64* %RBX, !mcsema_real_eip !44
  store i64 %343, i64* %RBX_val, !mcsema_real_eip !44
  %344 = load i64, i64* %RCX, !mcsema_real_eip !44
  store i64 %344, i64* %RCX_val, !mcsema_real_eip !44
  %345 = load i64, i64* %RDX, !mcsema_real_eip !44
  store i64 %345, i64* %RDX_val, !mcsema_real_eip !44
  %346 = load i64, i64* %RSI, !mcsema_real_eip !44
  store i64 %346, i64* %RSI_val, !mcsema_real_eip !44
  %347 = load i64, i64* %RDI, !mcsema_real_eip !44
  store i64 %347, i64* %RDI_val, !mcsema_real_eip !44
  %348 = load i64, i64* %RSP, !mcsema_real_eip !44
  store i64 %348, i64* %RSP_val, !mcsema_real_eip !44
  %349 = load i64, i64* %RBP, !mcsema_real_eip !44
  store i64 %349, i64* %RBP_val, !mcsema_real_eip !44
  %350 = load i64, i64* %R8, !mcsema_real_eip !44
  store i64 %350, i64* %R8_val, !mcsema_real_eip !44
  %351 = load i64, i64* %R9, !mcsema_real_eip !44
  store i64 %351, i64* %R9_val, !mcsema_real_eip !44
  %352 = load i64, i64* %R10, !mcsema_real_eip !44
  store i64 %352, i64* %R10_val, !mcsema_real_eip !44
  %353 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %353, i64* %R11_val, !mcsema_real_eip !44
  %354 = load i64, i64* %R12, !mcsema_real_eip !44
  store i64 %354, i64* %R12_val, !mcsema_real_eip !44
  %355 = load i64, i64* %R13, !mcsema_real_eip !44
  store i64 %355, i64* %R13_val, !mcsema_real_eip !44
  %356 = load i64, i64* %R14, !mcsema_real_eip !44
  store i64 %356, i64* %R14_val, !mcsema_real_eip !44
  %357 = load i64, i64* %R15, !mcsema_real_eip !44
  store i64 %357, i64* %R15_val, !mcsema_real_eip !44
  %358 = load i64, i64* %RIP, !mcsema_real_eip !44
  store i64 %358, i64* %RIP_val, !mcsema_real_eip !44
  %359 = load i1, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %359, i1* %CF_val, !mcsema_real_eip !44
  %360 = load i1, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %360, i1* %PF_val, !mcsema_real_eip !44
  %361 = load i1, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %361, i1* %AF_val, !mcsema_real_eip !44
  %362 = load i1, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %362, i1* %ZF_val, !mcsema_real_eip !44
  %363 = load i1, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %363, i1* %SF_val, !mcsema_real_eip !44
  %364 = load i1, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %364, i1* %OF_val, !mcsema_real_eip !44
  %365 = load i1, i1* %DF, align 1, !mcsema_real_eip !44
  store i1 %365, i1* %DF_val, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !44
  %366 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %366, i1* %FPU_B_val, !mcsema_real_eip !44
  %367 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i1 %367, i1* %FPU_C3_val, !mcsema_real_eip !44
  %368 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i3 %368, i3* %FPU_TOP_val, !mcsema_real_eip !44
  %369 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %369, i1* %FPU_C2_val, !mcsema_real_eip !44
  %370 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %370, i1* %FPU_C1_val, !mcsema_real_eip !44
  %371 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %371, i1* %FPU_C0_val, !mcsema_real_eip !44
  %372 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %372, i1* %FPU_ES_val, !mcsema_real_eip !44
  %373 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %373, i1* %FPU_SF_val, !mcsema_real_eip !44
  %374 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %374, i1* %FPU_PE_val, !mcsema_real_eip !44
  %375 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %375, i1* %FPU_UE_val, !mcsema_real_eip !44
  %376 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %376, i1* %FPU_OE_val, !mcsema_real_eip !44
  %377 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %377, i1* %FPU_ZE_val, !mcsema_real_eip !44
  %378 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %378, i1* %FPU_DE_val, !mcsema_real_eip !44
  %379 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %379, i1* %FPU_IE_val, !mcsema_real_eip !44
  %380 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i1 %380, i1* %FPU_X_val, !mcsema_real_eip !44
  %381 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %381, i2* %FPU_RC_val, !mcsema_real_eip !44
  %382 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i2 %382, i2* %FPU_PC_val, !mcsema_real_eip !44
  %383 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %383, i1* %FPU_PM_val, !mcsema_real_eip !44
  %384 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %384, i1* %FPU_UM_val, !mcsema_real_eip !44
  %385 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %385, i1* %FPU_OM_val, !mcsema_real_eip !44
  %386 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %386, i1* %FPU_ZM_val, !mcsema_real_eip !44
  %387 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %387, i1* %FPU_DM_val, !mcsema_real_eip !44
  %388 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  store i1 %388, i1* %FPU_IM_val, !mcsema_real_eip !44
  %389 = load i64, i64* %52, align 4
  store i64 %389, i64* %53, align 4
  %390 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i16 %390, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !44
  %391 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !44
  store i64 %391, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !44
  %392 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i16 %392, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !44
  %393 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !44
  store i64 %393, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !44
  %394 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %394, i128* %XMM0_val, !mcsema_real_eip !44
  %395 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %395, i128* %XMM1_val, !mcsema_real_eip !44
  %396 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %396, i128* %XMM2_val, !mcsema_real_eip !44
  %397 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %397, i128* %XMM3_val, !mcsema_real_eip !44
  %398 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %398, i128* %XMM4_val, !mcsema_real_eip !44
  %399 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %399, i128* %XMM5_val, !mcsema_real_eip !44
  %400 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %400, i128* %XMM6_val, !mcsema_real_eip !44
  %401 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %401, i128* %XMM7_val, !mcsema_real_eip !44
  %402 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %402, i128* %XMM8_val, !mcsema_real_eip !44
  %403 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %403, i128* %XMM9_val, !mcsema_real_eip !44
  %404 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %404, i128* %XMM10_val, !mcsema_real_eip !44
  %405 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %405, i128* %XMM11_val, !mcsema_real_eip !44
  %406 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %406, i128* %XMM12_val, !mcsema_real_eip !44
  %407 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %407, i128* %XMM13_val, !mcsema_real_eip !44
  %408 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %408, i128* %XMM14_val, !mcsema_real_eip !44
  %409 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i128 %409, i128* %XMM15_val, !mcsema_real_eip !44
  %410 = load i64, i64* %STACK_BASE, !mcsema_real_eip !44
  store i64 %410, i64* %STACK_BASE_val, !mcsema_real_eip !44
  %411 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !44
  store i64 %411, i64* %STACK_LIMIT_val, !mcsema_real_eip !44
  %_load_rsp_ptr_72 = load i8*, i8** %_RSP_ptr_
  %412 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %_new_ptr2int_73 = ptrtoint i8* %_load_rsp_ptr_72 to i64
  %uadd216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_73, i64 80)
  %413 = extractvalue { i64, i1 } %uadd216, 0
  %414 = xor i64 %413, %_new_ptr2int_73, !mcsema_real_eip !45
  %415 = and i64 %414, 16
  %416 = icmp eq i64 %415, 0
  store i1 %416, i1* %AF_val, !mcsema_real_eip !45
  %417 = icmp slt i64 %413, 0
  store i1 %417, i1* %SF_val, !mcsema_real_eip !45
  %418 = icmp eq i64 %413, 0, !mcsema_real_eip !45
  store i1 %418, i1* %ZF_val, !mcsema_real_eip !45
  %419 = xor i64 %_new_ptr2int_73, -9223372036854775808, !mcsema_real_eip !45
  %420 = and i64 %414, %419, !mcsema_real_eip !45
  %421 = icmp slt i64 %420, 0
  store i1 %421, i1* %OF_val, !mcsema_real_eip !45
  %422 = trunc i64 %413 to i8, !mcsema_real_eip !45
  %423 = tail call i8 @llvm.ctpop.i8(i8 %422), !mcsema_real_eip !45
  %424 = and i8 %423, 1
  %425 = icmp eq i8 %424, 0
  store i1 %425, i1* %PF_val, !mcsema_real_eip !45
  %426 = extractvalue { i64, i1 } %uadd216, 1
  store i1 %426, i1* %CF_val, !mcsema_real_eip !45
  %_new_int2ptr_ = inttoptr i64 %413 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %413, i64* %RSP_val, !mcsema_real_eip !45
  %427 = inttoptr i64 %413 to i64*, !mcsema_real_eip !46
  %428 = load i64, i64* %427, !mcsema_real_eip !46
  %_new_int2ptr_74 = inttoptr i64 %428 to i8*
  store volatile i8* %_new_int2ptr_74, i8** %_RBP_ptr_
  store i64 %428, i64* %RBP_val, !mcsema_real_eip !46
  %429 = add i64 %413, 16, !mcsema_real_eip !47
  %_new_int2ptr_75 = inttoptr i64 %429 to i8*
  store volatile i8* %_new_int2ptr_75, i8** %_RSP_ptr_
  store i64 %429, i64* %RSP_val, !mcsema_real_eip !47
  %430 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %430, i64* %RAX, !mcsema_real_eip !47
  %431 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %431, i64* %RBX, !mcsema_real_eip !47
  %432 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %432, i64* %RCX, !mcsema_real_eip !47
  %433 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %433, i64* %RDX, !mcsema_real_eip !47
  %434 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %434, i64* %RSI, !mcsema_real_eip !47
  %435 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %435, i64* %RDI, !mcsema_real_eip !47
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %436 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %_new_ptr2int_77 = ptrtoint i8* %_load_rsp_ptr_76 to i64
  store volatile i64 %_new_ptr2int_77, i64* %RSP
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %437 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_ptr2int_79 = ptrtoint i8* %_load_rbp_ptr_78 to i64
  store volatile i64 %_new_ptr2int_79, i64* %RBP
  %438 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %438, i64* %R8, !mcsema_real_eip !47
  %439 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %439, i64* %R9, !mcsema_real_eip !47
  %440 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %440, i64* %R10, !mcsema_real_eip !47
  %441 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %441, i64* %R11, !mcsema_real_eip !47
  %442 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %442, i64* %R12, !mcsema_real_eip !47
  %443 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %443, i64* %R13, !mcsema_real_eip !47
  %444 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %444, i64* %R14, !mcsema_real_eip !47
  %445 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %445, i64* %R15, !mcsema_real_eip !47
  %446 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %446, i64* %RIP, !mcsema_real_eip !47
  %447 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %447, i1* %CF, align 1, !mcsema_real_eip !47
  %448 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %448, i1* %PF, align 1, !mcsema_real_eip !47
  %449 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %449, i1* %AF, align 1, !mcsema_real_eip !47
  %450 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %450, i1* %ZF, align 1, !mcsema_real_eip !47
  %451 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %451, i1* %SF, align 1, !mcsema_real_eip !47
  %452 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %452, i1* %OF, align 1, !mcsema_real_eip !47
  %453 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %453, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %454 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %454, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %455 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %455, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %456 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %456, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %457 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %457, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %458 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %458, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %459 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %459, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %460 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %460, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %461 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %461, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %462 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %462, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %463 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %463, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %464 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %464, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %465 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %465, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %466 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %466, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %467 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %467, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %468 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %468, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %469 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %469, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %470 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %470, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %471 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %471, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %472 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %472, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %473 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %473, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %474 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %474, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %475 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %475, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %476 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %476, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %477 = load i64, i64* %53, align 4
  store i64 %477, i64* %52, align 4
  %478 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %478, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %479 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %479, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %480 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %480, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %481 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %481, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %482 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %482, i128* %XMM0, align 1, !mcsema_real_eip !47
  %483 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %483, i128* %XMM1, align 1, !mcsema_real_eip !47
  %484 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %484, i128* %XMM2, align 1, !mcsema_real_eip !47
  %485 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %485, i128* %XMM3, align 1, !mcsema_real_eip !47
  %486 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %486, i128* %XMM4, align 1, !mcsema_real_eip !47
  %487 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %487, i128* %XMM5, align 1, !mcsema_real_eip !47
  %488 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %488, i128* %XMM6, align 1, !mcsema_real_eip !47
  %489 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %489, i128* %XMM7, align 1, !mcsema_real_eip !47
  %490 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %490, i128* %XMM8, align 1, !mcsema_real_eip !47
  %491 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %491, i128* %XMM9, align 1, !mcsema_real_eip !47
  %492 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %492, i128* %XMM10, align 1, !mcsema_real_eip !47
  %493 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %493, i128* %XMM11, align 1, !mcsema_real_eip !47
  %494 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %494, i128* %XMM12, align 1, !mcsema_real_eip !47
  %495 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %495, i128* %XMM13, align 1, !mcsema_real_eip !47
  %496 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %496, i128* %XMM14, align 1, !mcsema_real_eip !47
  %497 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %497, i128* %XMM15, align 1, !mcsema_real_eip !47
  %498 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %498, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %499 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %499, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x11d:                                      ; preds = %block_0x11d, %block_0x11d.preheader
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %500 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -40
  %501 = add i64 %500, -40, !mcsema_real_eip !48
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !48
  %503 = bitcast i64* %_allin_new_bt_82 to i32*
  %504 = load i32, i32* %503, !mcsema_real_eip !48
  %uadd213 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %504, i32 1)
  %505 = extractvalue { i32, i1 } %uadd213, 0
  %506 = xor i32 %505, %504, !mcsema_real_eip !49
  %507 = and i32 %506, 16, !mcsema_real_eip !49
  %508 = icmp ne i32 %507, 0, !mcsema_real_eip !49
  store i1 %508, i1* %AF_val, !mcsema_real_eip !49
  %509 = icmp slt i32 %505, 0
  store i1 %509, i1* %SF_val, !mcsema_real_eip !49
  %510 = icmp eq i32 %505, 0, !mcsema_real_eip !49
  store i1 %510, i1* %ZF_val, !mcsema_real_eip !49
  %511 = xor i32 %504, -2147483648, !mcsema_real_eip !49
  %512 = and i32 %506, %511, !mcsema_real_eip !49
  %513 = icmp slt i32 %512, 0
  store i1 %513, i1* %OF_val, !mcsema_real_eip !49
  %514 = trunc i32 %505 to i8, !mcsema_real_eip !49
  %515 = tail call i8 @llvm.ctpop.i8(i8 %514), !mcsema_real_eip !49
  %516 = and i8 %515, 1
  %517 = icmp eq i8 %516, 0
  store i1 %517, i1* %PF_val, !mcsema_real_eip !49
  %518 = extractvalue { i32, i1 } %uadd213, 1
  store i1 %518, i1* %CF_val, !mcsema_real_eip !49
  %519 = zext i32 %505 to i64, !mcsema_real_eip !49
  store i64 %519, i64* %RAX_val, !mcsema_real_eip !49
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %520 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -32
  %521 = add i64 %520, -32, !mcsema_real_eip !50
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %522 = inttoptr i64 %521 to i64*, !mcsema_real_eip !50
  %523 = load i64, i64* %_allin_new_bt_85, !mcsema_real_eip !50
  store i64 %523, i64* %RCX_val, !mcsema_real_eip !50
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -40
  %524 = add i64 %520, -40, !mcsema_real_eip !51
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %525 = inttoptr i64 %524 to i64*, !mcsema_real_eip !51
  %526 = bitcast i64* %_allin_new_bt_87 to i32*
  %527 = load i32, i32* %526, !mcsema_real_eip !51
  %528 = sext i32 %527 to i64, !mcsema_real_eip !51
  store i64 %528, i64* %RDX_val, !mcsema_real_eip !51
  %529 = load i64, i64* %RCX_val, !mcsema_real_eip !52
  %530 = shl nsw i64 %528, 2
  %531 = add i64 %530, %529, !mcsema_real_eip !52
  %532 = inttoptr i64 %531 to i64*, !mcsema_real_eip !52
  %533 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  %534 = trunc i64 %533 to i32, !mcsema_real_eip !52
  %535 = bitcast i64* %532 to i32*
  store i32 %534, i32* %535, !mcsema_real_eip !52
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %536 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_88, i64 -40
  %537 = add i64 %536, -40, !mcsema_real_eip !53
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !53
  %539 = bitcast i64* %_allin_new_bt_90 to i32*
  %540 = load i32, i32* %539, !mcsema_real_eip !53
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %540, i32 1)
  %541 = extractvalue { i32, i1 } %uadd214, 0
  %542 = xor i32 %541, %540, !mcsema_real_eip !54
  %543 = and i32 %542, 16, !mcsema_real_eip !54
  %544 = icmp ne i32 %543, 0, !mcsema_real_eip !54
  store i1 %544, i1* %AF_val, !mcsema_real_eip !54
  %545 = icmp slt i32 %541, 0
  store i1 %545, i1* %SF_val, !mcsema_real_eip !54
  %546 = icmp eq i32 %541, 0, !mcsema_real_eip !54
  store i1 %546, i1* %ZF_val, !mcsema_real_eip !54
  %547 = xor i32 %540, -2147483648, !mcsema_real_eip !54
  %548 = and i32 %542, %547, !mcsema_real_eip !54
  %549 = icmp slt i32 %548, 0
  store i1 %549, i1* %OF_val, !mcsema_real_eip !54
  %550 = trunc i32 %541 to i8, !mcsema_real_eip !54
  %551 = tail call i8 @llvm.ctpop.i8(i8 %550), !mcsema_real_eip !54
  %552 = and i8 %551, 1
  %553 = icmp eq i8 %552, 0
  store i1 %553, i1* %PF_val, !mcsema_real_eip !54
  %554 = extractvalue { i32, i1 } %uadd214, 1
  store i1 %554, i1* %CF_val, !mcsema_real_eip !54
  %555 = zext i32 %541 to i64, !mcsema_real_eip !54
  store i64 %555, i64* %RAX_val, !mcsema_real_eip !54
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %556 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -40
  %557 = add i64 %556, -40, !mcsema_real_eip !55
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !55
  %559 = bitcast i64* %_allin_new_bt_93 to i32*
  store i32 %541, i32* %559, !mcsema_real_eip !55
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %560 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -40
  %561 = add i64 %560, -40, !mcsema_real_eip !20
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %562 = inttoptr i64 %561 to i64*, !mcsema_real_eip !20
  %563 = bitcast i64* %_allin_new_bt_96 to i32*
  %564 = load i32, i32* %563, !mcsema_real_eip !20
  %565 = add i32 %564, -10
  %566 = xor i32 %565, %564, !mcsema_real_eip !20
  %567 = and i32 %566, 16, !mcsema_real_eip !20
  %568 = icmp ne i32 %567, 0, !mcsema_real_eip !20
  store i1 %568, i1* %AF_val, !mcsema_real_eip !20
  %569 = trunc i32 %565 to i8, !mcsema_real_eip !20
  %570 = tail call i8 @llvm.ctpop.i8(i8 %569), !mcsema_real_eip !20
  %571 = and i8 %570, 1
  %572 = icmp eq i8 %571, 0
  store i1 %572, i1* %PF_val, !mcsema_real_eip !20
  %573 = icmp eq i32 %565, 0, !mcsema_real_eip !20
  store i1 %573, i1* %ZF_val, !mcsema_real_eip !20
  %574 = icmp slt i32 %565, 0
  store i1 %574, i1* %SF_val, !mcsema_real_eip !20
  %575 = icmp ult i32 %564, 10, !mcsema_real_eip !20
  store i1 %575, i1* %CF_val, !mcsema_real_eip !20
  %576 = and i32 %566, %564, !mcsema_real_eip !20
  %577 = icmp slt i32 %576, 0
  store i1 %577, i1* %OF_val, !mcsema_real_eip !20
  %tmp215 = xor i1 %574, %577
  br i1 %tmp215, label %block_0x11d, label %block_0x13c.loopexit, !mcsema_real_eip !21
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !56
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !56
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !56
  %XMM15_val = alloca i128, !mcsema_real_eip !56
  %XMM14_val = alloca i128, !mcsema_real_eip !56
  %XMM13_val = alloca i128, !mcsema_real_eip !56
  %XMM12_val = alloca i128, !mcsema_real_eip !56
  %XMM11_val = alloca i128, !mcsema_real_eip !56
  %XMM10_val = alloca i128, !mcsema_real_eip !56
  %XMM9_val = alloca i128, !mcsema_real_eip !56
  %XMM8_val = alloca i128, !mcsema_real_eip !56
  %XMM7_val = alloca i128, !mcsema_real_eip !56
  %XMM6_val = alloca i128, !mcsema_real_eip !56
  %XMM5_val = alloca i128, !mcsema_real_eip !56
  %XMM4_val = alloca i128, !mcsema_real_eip !56
  %XMM3_val = alloca i128, !mcsema_real_eip !56
  %XMM2_val = alloca i128, !mcsema_real_eip !56
  %XMM1_val = alloca i128, !mcsema_real_eip !56
  %XMM0_val = alloca i128, !mcsema_real_eip !56
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !56
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !56
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !56
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !56
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !56
  %FPU_IM_val = alloca i1, !mcsema_real_eip !56
  %FPU_DM_val = alloca i1, !mcsema_real_eip !56
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !56
  %FPU_OM_val = alloca i1, !mcsema_real_eip !56
  %FPU_UM_val = alloca i1, !mcsema_real_eip !56
  %FPU_PM_val = alloca i1, !mcsema_real_eip !56
  %FPU_PC_val = alloca i2, !mcsema_real_eip !56
  %FPU_RC_val = alloca i2, !mcsema_real_eip !56
  %FPU_X_val = alloca i1, !mcsema_real_eip !56
  %FPU_IE_val = alloca i1, !mcsema_real_eip !56
  %FPU_DE_val = alloca i1, !mcsema_real_eip !56
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !56
  %FPU_OE_val = alloca i1, !mcsema_real_eip !56
  %FPU_UE_val = alloca i1, !mcsema_real_eip !56
  %FPU_PE_val = alloca i1, !mcsema_real_eip !56
  %FPU_SF_val = alloca i1, !mcsema_real_eip !56
  %FPU_ES_val = alloca i1, !mcsema_real_eip !56
  %FPU_C0_val = alloca i1, !mcsema_real_eip !56
  %FPU_C1_val = alloca i1, !mcsema_real_eip !56
  %FPU_C2_val = alloca i1, !mcsema_real_eip !56
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !56
  %FPU_C3_val = alloca i1, !mcsema_real_eip !56
  %FPU_B_val = alloca i1, !mcsema_real_eip !56
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !56
  %DF_val = alloca i1, !mcsema_real_eip !56
  %OF_val = alloca i1, !mcsema_real_eip !56
  %SF_val = alloca i1, !mcsema_real_eip !56
  %CF_val = alloca i1, !mcsema_real_eip !56
  %AF_val = alloca i1, !mcsema_real_eip !56
  %PF_val = alloca i1, !mcsema_real_eip !56
  %ZF_val = alloca i1, !mcsema_real_eip !56
  %RIP_val = alloca i64, !mcsema_real_eip !56
  %R14_val = alloca i64, !mcsema_real_eip !56
  %R13_val = alloca i64, !mcsema_real_eip !56
  %R12_val = alloca i64, !mcsema_real_eip !56
  %R11_val = alloca i64, !mcsema_real_eip !56
  %R10_val = alloca i64, !mcsema_real_eip !56
  %R9_val = alloca i64, !mcsema_real_eip !56
  %R8_val = alloca i64, !mcsema_real_eip !56
  %RSP_val = alloca i64, !mcsema_real_eip !56
  %RBP_val = alloca i64, !mcsema_real_eip !56
  %RDI_val = alloca i64, !mcsema_real_eip !56
  %RSI_val = alloca i64, !mcsema_real_eip !56
  %RDX_val = alloca i64, !mcsema_real_eip !56
  %RCX_val = alloca i64, !mcsema_real_eip !56
  %RBX_val = alloca i64, !mcsema_real_eip !56
  %RAX_val = alloca i64, !mcsema_real_eip !56
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !56
  %1 = load i64, i64* %RAX, !mcsema_real_eip !56
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !56
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !56
  %2 = load i64, i64* %RBX, !mcsema_real_eip !56
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !56
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !56
  %3 = load i64, i64* %RCX, !mcsema_real_eip !56
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !56
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !56
  %4 = load i64, i64* %RDX, !mcsema_real_eip !56
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !56
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !56
  %5 = load i64, i64* %RSI, !mcsema_real_eip !56
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !56
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !56
  %6 = load i64, i64* %RDI, !mcsema_real_eip !56
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !56
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !56
  %7 = load i64, i64* %RSP, !mcsema_real_eip !56
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !56
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !56
  %8 = load i64, i64* %RBP, !mcsema_real_eip !56
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !56
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !56
  %9 = load i64, i64* %R8, !mcsema_real_eip !56
  store i64 %9, i64* %R8_val, !mcsema_real_eip !56
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !56
  %10 = load i64, i64* %R9, !mcsema_real_eip !56
  store i64 %10, i64* %R9_val, !mcsema_real_eip !56
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !56
  %11 = load i64, i64* %R10, !mcsema_real_eip !56
  store i64 %11, i64* %R10_val, !mcsema_real_eip !56
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !56
  %12 = load i64, i64* %R11, !mcsema_real_eip !56
  store i64 %12, i64* %R11_val, !mcsema_real_eip !56
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !56
  %13 = load i64, i64* %R12, !mcsema_real_eip !56
  store i64 %13, i64* %R12_val, !mcsema_real_eip !56
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !56
  %14 = load i64, i64* %R13, !mcsema_real_eip !56
  store i64 %14, i64* %R13_val, !mcsema_real_eip !56
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !56
  %15 = load i64, i64* %R14, !mcsema_real_eip !56
  store i64 %15, i64* %R14_val, !mcsema_real_eip !56
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !56
  %16 = load i64, i64* %R15, !mcsema_real_eip !56
  store i64 %16, i64* %R15_val, !mcsema_real_eip !56
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !56
  %17 = load i64, i64* %RIP, !mcsema_real_eip !56
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !56
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !56
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !56
  store i1 %18, i1* %CF_val, !mcsema_real_eip !56
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !56
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !56
  store i1 %19, i1* %PF_val, !mcsema_real_eip !56
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !56
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !56
  store i1 %20, i1* %AF_val, !mcsema_real_eip !56
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !56
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !56
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !56
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !56
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !56
  store i1 %22, i1* %SF_val, !mcsema_real_eip !56
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !56
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !56
  store i1 %23, i1* %OF_val, !mcsema_real_eip !56
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !56
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !56
  store i1 %24, i1* %DF_val, !mcsema_real_eip !56
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !56
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !56
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !56
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !56
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !56
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !56
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !56
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !56
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !56
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !56
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !56
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !56
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !56
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !56
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !56
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !56
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !56
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !56
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !56
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !56
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !56
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !56
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !56
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !56
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !56
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !56
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !56
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !56
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !56
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !56
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !56
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !56
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !56
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !56
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !56
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !56
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !56
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !56
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !56
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !56
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !56
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !56
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !56
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !56
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !56
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !56
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !56
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !56
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !56
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !56
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !56
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !56
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !56
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !56
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !56
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !56
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !56
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !56
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !56
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !56
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !56
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !56
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !56
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !56
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !56
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !56
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !56
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !56
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !56
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !56
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !56
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !56
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !56
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !56
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !56
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !56
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !56
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !56
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !56
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !56
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !56
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !56
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !56
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !56
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !56
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !56
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !56
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !56
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !56
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !56
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !56
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !56
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !56
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !56
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !56
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !56
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !56
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !56
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !56
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !56
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !56
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !56
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !56
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !56
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !56
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !56
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !56
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !56
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !56
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !56
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !56
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !56
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !56
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !56
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !56
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !56
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !56
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !56
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !56
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !56
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !56
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !56
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !56
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !56
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !56
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !56
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !56
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !56
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !56
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !56
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !56
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !56
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !56
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !56
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !56
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !56
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !56
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !56
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !56
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !56
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !56
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !56
  store i64 %77, i64* %80, !mcsema_real_eip !56
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !57
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !58
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !58
  store i64 %81, i64* %83, !mcsema_real_eip !58
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !58
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %85 = add i64 %84, 40, !mcsema_real_eip !59
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !59
  %87 = load i64, i64* %86, !mcsema_real_eip !59
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !59
  %88 = add i64 %84, 32, !mcsema_real_eip !60
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !60
  %90 = bitcast i64* %89 to i32*
  %91 = load i32, i32* %90, !mcsema_real_eip !60
  %92 = zext i32 %91 to i64, !mcsema_real_eip !60
  store i64 %92, i64* %R10_val, !mcsema_real_eip !60
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %94 = add i64 %93, 24, !mcsema_real_eip !61
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !61
  %96 = load i64, i64* %95, !mcsema_real_eip !61
  store i64 %96, i64* %R11_val, !mcsema_real_eip !61
  %97 = add i64 %93, 16, !mcsema_real_eip !62
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !62
  %99 = bitcast i64* %98 to i32*
  %100 = load i32, i32* %99, !mcsema_real_eip !62
  %101 = zext i32 %100 to i64, !mcsema_real_eip !62
  store i64 %101, i64* %RBX_val, !mcsema_real_eip !62
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %103 = add i64 %102, -12, !mcsema_real_eip !63
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !63
  %105 = load i64, i64* %RDI_val, !mcsema_real_eip !63
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !63
  %107 = bitcast i64* %104 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !63
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %109 = add i64 %108, -16, !mcsema_real_eip !64
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !64
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !64
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !64
  %113 = bitcast i64* %110 to i32*
  store i32 %112, i32* %113, !mcsema_real_eip !64
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %115 = add i64 %114, -20, !mcsema_real_eip !65
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !65
  %117 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  %118 = trunc i64 %117 to i32, !mcsema_real_eip !65
  %119 = bitcast i64* %116 to i32*
  store i32 %118, i32* %119, !mcsema_real_eip !65
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %121 = add i64 %120, -24, !mcsema_real_eip !66
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !66
  %123 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  %124 = trunc i64 %123 to i32, !mcsema_real_eip !66
  %125 = bitcast i64* %122 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !66
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %127 = add i64 %126, -28, !mcsema_real_eip !67
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !67
  %129 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %130 = trunc i64 %129 to i32, !mcsema_real_eip !67
  %131 = bitcast i64* %128 to i32*
  store i32 %130, i32* %131, !mcsema_real_eip !67
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %133 = add i64 %132, -32, !mcsema_real_eip !68
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !68
  %135 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %136 = trunc i64 %135 to i32, !mcsema_real_eip !68
  %137 = bitcast i64* %134 to i32*
  store i32 %136, i32* %137, !mcsema_real_eip !68
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %139 = add i64 %138, -36, !mcsema_real_eip !69
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !69
  %141 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %142 = trunc i64 %141 to i32, !mcsema_real_eip !69
  %143 = bitcast i64* %140 to i32*
  store i32 %142, i32* %143, !mcsema_real_eip !69
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %145 = add i64 %144, -48, !mcsema_real_eip !70
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !70
  %147 = load i64, i64* %R11_val, !mcsema_real_eip !70
  store i64 %147, i64* %146, !mcsema_real_eip !70
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %149 = add i64 %148, -52, !mcsema_real_eip !71
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !71
  %151 = load i64, i64* %R10_val, !mcsema_real_eip !71
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !71
  %153 = bitcast i64* %150 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !71
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %155 = add i64 %154, -64, !mcsema_real_eip !72
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !72
  %157 = load i64, i64* %RAX_val, !mcsema_real_eip !72
  store i64 %157, i64* %156, !mcsema_real_eip !72
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %159 = add i64 %158, -68, !mcsema_real_eip !73
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !73
  %161 = bitcast i64* %160 to i32*
  store i32 0, i32* %161, !mcsema_real_eip !73
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %163 = add i64 %162, -72, !mcsema_real_eip !74
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !74
  %165 = bitcast i64* %164 to i32*
  store i32 0, i32* %165, !mcsema_real_eip !74
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %167 = add i64 %166, -72, !mcsema_real_eip !75
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !75
  %169 = bitcast i64* %168 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !75
  %171 = zext i32 %170 to i64, !mcsema_real_eip !75
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !75
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %173 = add i64 %172, -36, !mcsema_real_eip !76
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !76
  %175 = bitcast i64* %174 to i32*
  %176 = load i32, i32* %175, !mcsema_real_eip !76
  %177 = sub i32 %170, %176, !mcsema_real_eip !76
  %178 = xor i32 %177, %170, !mcsema_real_eip !76
  %179 = xor i32 %178, %176, !mcsema_real_eip !76
  %180 = and i32 %179, 16, !mcsema_real_eip !76
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !76
  store i1 %181, i1* %AF_val, !mcsema_real_eip !76
  %182 = trunc i32 %177 to i8, !mcsema_real_eip !76
  %183 = tail call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !76
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  store i1 %185, i1* %PF_val, !mcsema_real_eip !76
  %186 = icmp eq i32 %170, %176
  store i1 %186, i1* %ZF_val, !mcsema_real_eip !76
  %187 = icmp slt i32 %177, 0
  store i1 %187, i1* %SF_val, !mcsema_real_eip !76
  %188 = icmp ult i32 %170, %176, !mcsema_real_eip !76
  store i1 %188, i1* %CF_val, !mcsema_real_eip !76
  %189 = xor i32 %176, %170, !mcsema_real_eip !76
  %190 = and i32 %178, %189, !mcsema_real_eip !76
  %191 = icmp slt i32 %190, 0
  store i1 %191, i1* %OF_val, !mcsema_real_eip !76
  %192 = load i1, i1* %SF_val, !mcsema_real_eip !77
  %tmp = xor i1 %192, %191
  br i1 %tmp, label %block_0x51.preheader, label %block_0x7b, !mcsema_real_eip !77

block_0x51.preheader:                             ; preds = %entry
  br label %block_0x51

block_0x7b.loopexit:                              ; preds = %block_0x51
  br label %block_0x7b

block_0x7b:                                       ; preds = %block_0x7b.loopexit, %entry
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %194 = add i64 %193, -68, !mcsema_real_eip !78
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !78
  %196 = bitcast i64* %195 to i32*
  %197 = load i32, i32* %196, !mcsema_real_eip !78
  %198 = zext i32 %197 to i64, !mcsema_real_eip !78
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !78
  %199 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %200 = add i64 %199, -12, !mcsema_real_eip !79
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !79
  %202 = bitcast i64* %201 to i32*
  %203 = load i32, i32* %202, !mcsema_real_eip !79
  %204 = zext i32 %203 to i64, !mcsema_real_eip !79
  store i64 %204, i64* %RCX_val, !mcsema_real_eip !79
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %206 = add i64 %205, -16, !mcsema_real_eip !80
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !80
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %208, !mcsema_real_eip !80
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %209)
  %210 = extractvalue { i32, i1 } %uadd72, 0
  %211 = xor i32 %210, %209, !mcsema_real_eip !80
  %212 = xor i32 %211, %203, !mcsema_real_eip !80
  %213 = and i32 %212, 16, !mcsema_real_eip !80
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !80
  store i1 %214, i1* %AF_val, !mcsema_real_eip !80
  %215 = icmp slt i32 %210, 0
  store i1 %215, i1* %SF_val, !mcsema_real_eip !80
  %216 = icmp eq i32 %210, 0, !mcsema_real_eip !80
  store i1 %216, i1* %ZF_val, !mcsema_real_eip !80
  %217 = xor i32 %203, -2147483648, !mcsema_real_eip !80
  %218 = xor i32 %217, %209, !mcsema_real_eip !80
  %219 = and i32 %211, %218, !mcsema_real_eip !80
  %220 = icmp slt i32 %219, 0
  store i1 %220, i1* %OF_val, !mcsema_real_eip !80
  %221 = trunc i32 %210 to i8, !mcsema_real_eip !80
  %222 = tail call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !80
  %223 = and i8 %222, 1
  %224 = icmp eq i8 %223, 0
  store i1 %224, i1* %PF_val, !mcsema_real_eip !80
  %225 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %225, i1* %CF_val, !mcsema_real_eip !80
  %226 = zext i32 %210 to i64, !mcsema_real_eip !80
  store i64 %226, i64* %RCX_val, !mcsema_real_eip !80
  %227 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %228 = add i64 %227, -20, !mcsema_real_eip !81
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !81
  %230 = bitcast i64* %229 to i32*
  %231 = load i32, i32* %230, !mcsema_real_eip !81
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %210, i32 %231)
  %232 = extractvalue { i32, i1 } %uadd73, 0
  %233 = xor i32 %232, %231, !mcsema_real_eip !81
  %234 = xor i32 %233, %210, !mcsema_real_eip !81
  %235 = and i32 %234, 16, !mcsema_real_eip !81
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !81
  store i1 %236, i1* %AF_val, !mcsema_real_eip !81
  %237 = icmp slt i32 %232, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !81
  %238 = icmp eq i32 %232, 0, !mcsema_real_eip !81
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !81
  %239 = xor i32 %210, -2147483648, !mcsema_real_eip !81
  %240 = xor i32 %239, %231, !mcsema_real_eip !81
  %241 = and i32 %233, %240, !mcsema_real_eip !81
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF_val, !mcsema_real_eip !81
  %243 = trunc i32 %232 to i8, !mcsema_real_eip !81
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !81
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !81
  %247 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %247, i1* %CF_val, !mcsema_real_eip !81
  %248 = zext i32 %232 to i64, !mcsema_real_eip !81
  store i64 %248, i64* %RCX_val, !mcsema_real_eip !81
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %250 = add i64 %249, -24, !mcsema_real_eip !82
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !82
  %252 = bitcast i64* %251 to i32*
  %253 = load i32, i32* %252, !mcsema_real_eip !82
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %253)
  %254 = extractvalue { i32, i1 } %uadd74, 0
  %255 = xor i32 %254, %253, !mcsema_real_eip !82
  %256 = xor i32 %255, %232, !mcsema_real_eip !82
  %257 = and i32 %256, 16, !mcsema_real_eip !82
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !82
  store i1 %258, i1* %AF_val, !mcsema_real_eip !82
  %259 = icmp slt i32 %254, 0
  store i1 %259, i1* %SF_val, !mcsema_real_eip !82
  %260 = icmp eq i32 %254, 0, !mcsema_real_eip !82
  store i1 %260, i1* %ZF_val, !mcsema_real_eip !82
  %261 = xor i32 %232, -2147483648, !mcsema_real_eip !82
  %262 = xor i32 %261, %253, !mcsema_real_eip !82
  %263 = and i32 %255, %262, !mcsema_real_eip !82
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF_val, !mcsema_real_eip !82
  %265 = trunc i32 %254 to i8, !mcsema_real_eip !82
  %266 = tail call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !82
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF_val, !mcsema_real_eip !82
  %269 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %269, i1* %CF_val, !mcsema_real_eip !82
  %270 = zext i32 %254 to i64, !mcsema_real_eip !82
  store i64 %270, i64* %RCX_val, !mcsema_real_eip !82
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %272 = add i64 %271, -28, !mcsema_real_eip !83
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !83
  %274 = bitcast i64* %273 to i32*
  %275 = load i32, i32* %274, !mcsema_real_eip !83
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %254, i32 %275)
  %276 = extractvalue { i32, i1 } %uadd75, 0
  %277 = xor i32 %276, %275, !mcsema_real_eip !83
  %278 = xor i32 %277, %254, !mcsema_real_eip !83
  %279 = and i32 %278, 16, !mcsema_real_eip !83
  %280 = icmp ne i32 %279, 0, !mcsema_real_eip !83
  store i1 %280, i1* %AF_val, !mcsema_real_eip !83
  %281 = icmp slt i32 %276, 0
  store i1 %281, i1* %SF_val, !mcsema_real_eip !83
  %282 = icmp eq i32 %276, 0, !mcsema_real_eip !83
  store i1 %282, i1* %ZF_val, !mcsema_real_eip !83
  %283 = xor i32 %254, -2147483648, !mcsema_real_eip !83
  %284 = xor i32 %283, %275, !mcsema_real_eip !83
  %285 = and i32 %277, %284, !mcsema_real_eip !83
  %286 = icmp slt i32 %285, 0
  store i1 %286, i1* %OF_val, !mcsema_real_eip !83
  %287 = trunc i32 %276 to i8, !mcsema_real_eip !83
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !83
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !83
  %291 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %291, i1* %CF_val, !mcsema_real_eip !83
  %292 = zext i32 %276 to i64, !mcsema_real_eip !83
  store i64 %292, i64* %RCX_val, !mcsema_real_eip !83
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %294 = add i64 %293, -32, !mcsema_real_eip !84
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !84
  %296 = bitcast i64* %295 to i32*
  %297 = load i32, i32* %296, !mcsema_real_eip !84
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %297)
  %298 = extractvalue { i32, i1 } %uadd76, 0
  %299 = xor i32 %298, %297, !mcsema_real_eip !84
  %300 = xor i32 %299, %276, !mcsema_real_eip !84
  %301 = and i32 %300, 16, !mcsema_real_eip !84
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !84
  store i1 %302, i1* %AF_val, !mcsema_real_eip !84
  %303 = icmp eq i32 %298, 0, !mcsema_real_eip !84
  store i1 %303, i1* %ZF_val, !mcsema_real_eip !84
  %304 = trunc i32 %298 to i8, !mcsema_real_eip !84
  %305 = tail call i8 @llvm.ctpop.i8(i8 %304), !mcsema_real_eip !84
  %306 = and i8 %305, 1
  %307 = icmp eq i8 %306, 0
  store i1 %307, i1* %PF_val, !mcsema_real_eip !84
  %308 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %308, i1* %CF_val, !mcsema_real_eip !84
  %309 = zext i32 %298 to i64, !mcsema_real_eip !84
  store i64 %309, i64* %RCX_val, !mcsema_real_eip !84
  %310 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  %311 = trunc i64 %310 to i32, !mcsema_real_eip !85
  %312 = sext i32 %311 to i64, !mcsema_real_eip !85
  %313 = sext i32 %298 to i64, !mcsema_real_eip !85
  %314 = mul i64 %312, %313, !mcsema_real_eip !85
  %315 = mul i32 %311, %298, !mcsema_real_eip !85
  %316 = sext i32 %315 to i64, !mcsema_real_eip !85
  %317 = icmp ne i64 %316, %314, !mcsema_real_eip !85
  store i1 %317, i1* %SF_val, !mcsema_real_eip !85
  store i1 %317, i1* %OF_val, !mcsema_real_eip !85
  %318 = zext i32 %315 to i64, !mcsema_real_eip !85
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !85
  %319 = load i64, i64* %RSP_val, !mcsema_real_eip !86
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !86
  %321 = load i64, i64* %320, !mcsema_real_eip !86
  store i64 %321, i64* %RBX_val, !mcsema_real_eip !86
  %322 = add i64 %319, 8, !mcsema_real_eip !86
  store i64 %322, i64* %RSP_val, !mcsema_real_eip !86
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !87
  %324 = load i64, i64* %323, !mcsema_real_eip !87
  store i64 %324, i64* %RBP_val, !mcsema_real_eip !87
  %325 = add i64 %319, 24, !mcsema_real_eip !88
  store i64 %325, i64* %RSP_val, !mcsema_real_eip !88
  %326 = load i64, i64* %RAX_val, !mcsema_real_eip !88
  store i64 %326, i64* %RAX, !mcsema_real_eip !88
  %327 = load i64, i64* %RBX_val, !mcsema_real_eip !88
  store i64 %327, i64* %RBX, !mcsema_real_eip !88
  %328 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  store i64 %328, i64* %RCX, !mcsema_real_eip !88
  %329 = load i64, i64* %RDX_val, !mcsema_real_eip !88
  store i64 %329, i64* %RDX, !mcsema_real_eip !88
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  store i64 %330, i64* %RSI, !mcsema_real_eip !88
  %331 = load i64, i64* %RDI_val, !mcsema_real_eip !88
  store i64 %331, i64* %RDI, !mcsema_real_eip !88
  %332 = load i64, i64* %RSP_val, !mcsema_real_eip !88
  store i64 %332, i64* %RSP, !mcsema_real_eip !88
  %333 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  store i64 %333, i64* %RBP, !mcsema_real_eip !88
  %334 = load i64, i64* %R8_val, !mcsema_real_eip !88
  store i64 %334, i64* %R8, !mcsema_real_eip !88
  %335 = load i64, i64* %R9_val, !mcsema_real_eip !88
  store i64 %335, i64* %R9, !mcsema_real_eip !88
  %336 = load i64, i64* %R10_val, !mcsema_real_eip !88
  store i64 %336, i64* %R10, !mcsema_real_eip !88
  %337 = load i64, i64* %R11_val, !mcsema_real_eip !88
  store i64 %337, i64* %R11, !mcsema_real_eip !88
  %338 = load i64, i64* %R12_val, !mcsema_real_eip !88
  store i64 %338, i64* %R12, !mcsema_real_eip !88
  %339 = load i64, i64* %R13_val, !mcsema_real_eip !88
  store i64 %339, i64* %R13, !mcsema_real_eip !88
  %340 = load i64, i64* %R14_val, !mcsema_real_eip !88
  store i64 %340, i64* %R14, !mcsema_real_eip !88
  %341 = load i64, i64* %R15_val, !mcsema_real_eip !88
  store i64 %341, i64* %R15, !mcsema_real_eip !88
  %342 = load i64, i64* %RIP_val, !mcsema_real_eip !88
  store i64 %342, i64* %RIP, !mcsema_real_eip !88
  %343 = load i1, i1* %CF_val, !mcsema_real_eip !88
  store i1 %343, i1* %CF, align 1, !mcsema_real_eip !88
  %344 = load i1, i1* %PF_val, !mcsema_real_eip !88
  store i1 %344, i1* %PF, align 1, !mcsema_real_eip !88
  %345 = load i1, i1* %AF_val, !mcsema_real_eip !88
  store i1 %345, i1* %AF, align 1, !mcsema_real_eip !88
  %346 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  store i1 %346, i1* %ZF, align 1, !mcsema_real_eip !88
  %347 = load i1, i1* %SF_val, !mcsema_real_eip !88
  store i1 %347, i1* %SF, align 1, !mcsema_real_eip !88
  %348 = load i1, i1* %OF_val, !mcsema_real_eip !88
  store i1 %348, i1* %OF, align 1, !mcsema_real_eip !88
  %349 = load i1, i1* %DF_val, !mcsema_real_eip !88
  store i1 %349, i1* %DF, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  %350 = load i1, i1* %FPU_B_val, !mcsema_real_eip !88
  store i1 %350, i1* %FPU_B, align 1, !mcsema_real_eip !88
  %351 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !88
  store i1 %351, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  %352 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !88
  store i3 %352, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  %353 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !88
  store i1 %353, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  %354 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !88
  store i1 %354, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  %355 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !88
  store i1 %355, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  %356 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !88
  store i1 %356, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  %357 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !88
  store i1 %357, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  %358 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !88
  store i1 %358, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  %359 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !88
  store i1 %359, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  %360 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !88
  store i1 %360, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  %361 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !88
  store i1 %361, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  %362 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !88
  store i1 %362, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  %363 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !88
  store i1 %363, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  %364 = load i1, i1* %FPU_X_val, !mcsema_real_eip !88
  store i1 %364, i1* %FPU_X, align 1, !mcsema_real_eip !88
  %365 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !88
  store i2 %365, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  %366 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !88
  store i2 %366, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  %367 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !88
  store i1 %367, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  %368 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !88
  store i1 %368, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  %369 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !88
  store i1 %369, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  %370 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !88
  store i1 %370, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  %371 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !88
  store i1 %371, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  %372 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !88
  store i1 %372, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  %373 = load i64, i64* %53, align 4
  store i64 %373, i64* %52, align 4
  %374 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !88
  store i16 %374, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  %375 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !88
  store i64 %375, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !88
  %376 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !88
  store i16 %376, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  %377 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !88
  store i64 %377, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !88
  %378 = load i128, i128* %XMM0_val, !mcsema_real_eip !88
  store i128 %378, i128* %XMM0, align 1, !mcsema_real_eip !88
  %379 = load i128, i128* %XMM1_val, !mcsema_real_eip !88
  store i128 %379, i128* %XMM1, align 1, !mcsema_real_eip !88
  %380 = load i128, i128* %XMM2_val, !mcsema_real_eip !88
  store i128 %380, i128* %XMM2, align 1, !mcsema_real_eip !88
  %381 = load i128, i128* %XMM3_val, !mcsema_real_eip !88
  store i128 %381, i128* %XMM3, align 1, !mcsema_real_eip !88
  %382 = load i128, i128* %XMM4_val, !mcsema_real_eip !88
  store i128 %382, i128* %XMM4, align 1, !mcsema_real_eip !88
  %383 = load i128, i128* %XMM5_val, !mcsema_real_eip !88
  store i128 %383, i128* %XMM5, align 1, !mcsema_real_eip !88
  %384 = load i128, i128* %XMM6_val, !mcsema_real_eip !88
  store i128 %384, i128* %XMM6, align 1, !mcsema_real_eip !88
  %385 = load i128, i128* %XMM7_val, !mcsema_real_eip !88
  store i128 %385, i128* %XMM7, align 1, !mcsema_real_eip !88
  %386 = load i128, i128* %XMM8_val, !mcsema_real_eip !88
  store i128 %386, i128* %XMM8, align 1, !mcsema_real_eip !88
  %387 = load i128, i128* %XMM9_val, !mcsema_real_eip !88
  store i128 %387, i128* %XMM9, align 1, !mcsema_real_eip !88
  %388 = load i128, i128* %XMM10_val, !mcsema_real_eip !88
  store i128 %388, i128* %XMM10, align 1, !mcsema_real_eip !88
  %389 = load i128, i128* %XMM11_val, !mcsema_real_eip !88
  store i128 %389, i128* %XMM11, align 1, !mcsema_real_eip !88
  %390 = load i128, i128* %XMM12_val, !mcsema_real_eip !88
  store i128 %390, i128* %XMM12, align 1, !mcsema_real_eip !88
  %391 = load i128, i128* %XMM13_val, !mcsema_real_eip !88
  store i128 %391, i128* %XMM13, align 1, !mcsema_real_eip !88
  %392 = load i128, i128* %XMM14_val, !mcsema_real_eip !88
  store i128 %392, i128* %XMM14, align 1, !mcsema_real_eip !88
  %393 = load i128, i128* %XMM15_val, !mcsema_real_eip !88
  store i128 %393, i128* %XMM15, align 1, !mcsema_real_eip !88
  %394 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !88
  store i64 %394, i64* %STACK_BASE, align 1, !mcsema_real_eip !88
  %395 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !88
  store i64 %395, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !88
  ret void, !mcsema_real_eip !88

block_0x51:                                       ; preds = %block_0x51, %block_0x51.preheader
  %396 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %397 = add i64 %396, -48, !mcsema_real_eip !89
  %398 = inttoptr i64 %397 to i64*, !mcsema_real_eip !89
  %399 = load i64, i64* %398, !mcsema_real_eip !89
  store i64 %399, i64* %RAX_val, !mcsema_real_eip !89
  %400 = add i64 %396, -72, !mcsema_real_eip !90
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !90
  %402 = bitcast i64* %401 to i32*
  %403 = load i32, i32* %402, !mcsema_real_eip !90
  %404 = sext i32 %403 to i64, !mcsema_real_eip !90
  store i64 %404, i64* %RCX_val, !mcsema_real_eip !90
  %405 = load i64, i64* %RAX_val, !mcsema_real_eip !91
  %406 = shl nsw i64 %404, 2
  %407 = add i64 %406, %405, !mcsema_real_eip !91
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !91
  %409 = bitcast i64* %408 to i32*
  %410 = load i32, i32* %409, !mcsema_real_eip !91
  %411 = zext i32 %410 to i64, !mcsema_real_eip !91
  store i64 %411, i64* %RDX_val, !mcsema_real_eip !91
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %413 = add i64 %412, -64, !mcsema_real_eip !92
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !92
  %415 = load i64, i64* %414, !mcsema_real_eip !92
  store i64 %415, i64* %RAX_val, !mcsema_real_eip !92
  %416 = add i64 %412, -72, !mcsema_real_eip !93
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !93
  %418 = bitcast i64* %417 to i32*
  %419 = load i32, i32* %418, !mcsema_real_eip !93
  %420 = sext i32 %419 to i64, !mcsema_real_eip !93
  store i64 %420, i64* %RCX_val, !mcsema_real_eip !93
  %421 = load i64, i64* %RAX_val, !mcsema_real_eip !94
  %422 = shl nsw i64 %420, 2
  %423 = add i64 %422, %421, !mcsema_real_eip !94
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !94
  %425 = load i64, i64* %RDX_val, !mcsema_real_eip !94
  %426 = trunc i64 %425 to i32, !mcsema_real_eip !94
  %427 = bitcast i64* %424 to i32*
  %428 = load i32, i32* %427, !mcsema_real_eip !94
  %429 = sub i32 %426, %428, !mcsema_real_eip !94
  %430 = xor i32 %429, %426, !mcsema_real_eip !94
  %431 = xor i32 %430, %428, !mcsema_real_eip !94
  %432 = and i32 %431, 16, !mcsema_real_eip !94
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !94
  store i1 %433, i1* %AF_val, !mcsema_real_eip !94
  %434 = trunc i32 %429 to i8, !mcsema_real_eip !94
  %435 = tail call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !94
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF_val, !mcsema_real_eip !94
  %438 = icmp eq i32 %426, %428
  store i1 %438, i1* %ZF_val, !mcsema_real_eip !94
  %439 = icmp slt i32 %429, 0
  store i1 %439, i1* %SF_val, !mcsema_real_eip !94
  %440 = icmp ult i32 %426, %428, !mcsema_real_eip !94
  store i1 %440, i1* %CF_val, !mcsema_real_eip !94
  %441 = xor i32 %426, %428, !mcsema_real_eip !94
  %442 = and i32 %430, %441, !mcsema_real_eip !94
  %443 = icmp slt i32 %442, 0
  store i1 %443, i1* %OF_val, !mcsema_real_eip !94
  %444 = zext i32 %429 to i64, !mcsema_real_eip !94
  store i64 %444, i64* %RDX_val, !mcsema_real_eip !94
  %445 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %446 = add i64 %445, -68, !mcsema_real_eip !95
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !95
  %448 = bitcast i64* %447 to i32*
  %449 = load i32, i32* %448, !mcsema_real_eip !95
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %429, i32 %449)
  %450 = extractvalue { i32, i1 } %uadd, 0
  %451 = xor i32 %450, %449, !mcsema_real_eip !95
  %452 = xor i32 %451, %429, !mcsema_real_eip !95
  %453 = and i32 %452, 16, !mcsema_real_eip !95
  %454 = icmp ne i32 %453, 0, !mcsema_real_eip !95
  store i1 %454, i1* %AF_val, !mcsema_real_eip !95
  %455 = icmp slt i32 %450, 0
  store i1 %455, i1* %SF_val, !mcsema_real_eip !95
  %456 = icmp eq i32 %450, 0, !mcsema_real_eip !95
  store i1 %456, i1* %ZF_val, !mcsema_real_eip !95
  %457 = xor i32 %429, -2147483648, !mcsema_real_eip !95
  %458 = xor i32 %457, %449, !mcsema_real_eip !95
  %459 = and i32 %451, %458, !mcsema_real_eip !95
  %460 = icmp slt i32 %459, 0
  store i1 %460, i1* %OF_val, !mcsema_real_eip !95
  %461 = trunc i32 %450 to i8, !mcsema_real_eip !95
  %462 = tail call i8 @llvm.ctpop.i8(i8 %461), !mcsema_real_eip !95
  %463 = and i8 %462, 1
  %464 = icmp eq i8 %463, 0
  store i1 %464, i1* %PF_val, !mcsema_real_eip !95
  %465 = extractvalue { i32, i1 } %uadd, 1
  store i1 %465, i1* %CF_val, !mcsema_real_eip !95
  %466 = zext i32 %450 to i64, !mcsema_real_eip !95
  store i64 %466, i64* %RDX_val, !mcsema_real_eip !95
  %467 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %468 = add i64 %467, -68, !mcsema_real_eip !96
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !96
  %470 = bitcast i64* %469 to i32*
  store i32 %450, i32* %470, !mcsema_real_eip !96
  %471 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %472 = add i64 %471, -72, !mcsema_real_eip !97
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !97
  %474 = bitcast i64* %473 to i32*
  %475 = load i32, i32* %474, !mcsema_real_eip !97
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 1)
  %476 = extractvalue { i32, i1 } %uadd70, 0
  %477 = xor i32 %476, %475, !mcsema_real_eip !98
  %478 = and i32 %477, 16, !mcsema_real_eip !98
  %479 = icmp ne i32 %478, 0, !mcsema_real_eip !98
  store i1 %479, i1* %AF_val, !mcsema_real_eip !98
  %480 = icmp slt i32 %476, 0
  store i1 %480, i1* %SF_val, !mcsema_real_eip !98
  %481 = icmp eq i32 %476, 0, !mcsema_real_eip !98
  store i1 %481, i1* %ZF_val, !mcsema_real_eip !98
  %482 = xor i32 %475, -2147483648, !mcsema_real_eip !98
  %483 = and i32 %477, %482, !mcsema_real_eip !98
  %484 = icmp slt i32 %483, 0
  store i1 %484, i1* %OF_val, !mcsema_real_eip !98
  %485 = trunc i32 %476 to i8, !mcsema_real_eip !98
  %486 = tail call i8 @llvm.ctpop.i8(i8 %485), !mcsema_real_eip !98
  %487 = and i8 %486, 1
  %488 = icmp eq i8 %487, 0
  store i1 %488, i1* %PF_val, !mcsema_real_eip !98
  %489 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %489, i1* %CF_val, !mcsema_real_eip !98
  %490 = zext i32 %476 to i64, !mcsema_real_eip !98
  store i64 %490, i64* %RAX_val, !mcsema_real_eip !98
  %491 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %492 = add i64 %491, -72, !mcsema_real_eip !99
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !99
  %494 = bitcast i64* %493 to i32*
  store i32 %476, i32* %494, !mcsema_real_eip !99
  %495 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %496 = add i64 %495, -72, !mcsema_real_eip !75
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !75
  %498 = bitcast i64* %497 to i32*
  %499 = load i32, i32* %498, !mcsema_real_eip !75
  %500 = zext i32 %499 to i64, !mcsema_real_eip !75
  store i64 %500, i64* %RAX_val, !mcsema_real_eip !75
  %501 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %502 = add i64 %501, -36, !mcsema_real_eip !76
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !76
  %504 = bitcast i64* %503 to i32*
  %505 = load i32, i32* %504, !mcsema_real_eip !76
  %506 = sub i32 %499, %505, !mcsema_real_eip !76
  %507 = xor i32 %506, %499, !mcsema_real_eip !76
  %508 = xor i32 %507, %505, !mcsema_real_eip !76
  %509 = and i32 %508, 16, !mcsema_real_eip !76
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !76
  store i1 %510, i1* %AF_val, !mcsema_real_eip !76
  %511 = trunc i32 %506 to i8, !mcsema_real_eip !76
  %512 = tail call i8 @llvm.ctpop.i8(i8 %511), !mcsema_real_eip !76
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  store i1 %514, i1* %PF_val, !mcsema_real_eip !76
  %515 = icmp eq i32 %499, %505
  store i1 %515, i1* %ZF_val, !mcsema_real_eip !76
  %516 = icmp slt i32 %506, 0
  store i1 %516, i1* %SF_val, !mcsema_real_eip !76
  %517 = icmp ult i32 %499, %505, !mcsema_real_eip !76
  store i1 %517, i1* %CF_val, !mcsema_real_eip !76
  %518 = xor i32 %505, %499, !mcsema_real_eip !76
  %519 = and i32 %507, %518, !mcsema_real_eip !76
  %520 = icmp slt i32 %519, 0
  store i1 %520, i1* %OF_val, !mcsema_real_eip !76
  %521 = load i1, i1* %SF_val, !mcsema_real_eip !77
  %tmp71 = xor i1 %521, %520
  br i1 %tmp71, label %block_0x51, label %block_0x7b.loopexit, !mcsema_real_eip !77
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 80
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 80
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !56
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !56
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !56
  %XMM15_val = alloca i128, !mcsema_real_eip !56
  %XMM14_val = alloca i128, !mcsema_real_eip !56
  %XMM13_val = alloca i128, !mcsema_real_eip !56
  %XMM12_val = alloca i128, !mcsema_real_eip !56
  %XMM11_val = alloca i128, !mcsema_real_eip !56
  %XMM10_val = alloca i128, !mcsema_real_eip !56
  %XMM9_val = alloca i128, !mcsema_real_eip !56
  %XMM8_val = alloca i128, !mcsema_real_eip !56
  %XMM7_val = alloca i128, !mcsema_real_eip !56
  %XMM6_val = alloca i128, !mcsema_real_eip !56
  %XMM5_val = alloca i128, !mcsema_real_eip !56
  %XMM4_val = alloca i128, !mcsema_real_eip !56
  %XMM3_val = alloca i128, !mcsema_real_eip !56
  %XMM2_val = alloca i128, !mcsema_real_eip !56
  %XMM1_val = alloca i128, !mcsema_real_eip !56
  %XMM0_val = alloca i128, !mcsema_real_eip !56
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !56
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !56
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !56
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !56
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !56
  %FPU_IM_val = alloca i1, !mcsema_real_eip !56
  %FPU_DM_val = alloca i1, !mcsema_real_eip !56
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !56
  %FPU_OM_val = alloca i1, !mcsema_real_eip !56
  %FPU_UM_val = alloca i1, !mcsema_real_eip !56
  %FPU_PM_val = alloca i1, !mcsema_real_eip !56
  %FPU_PC_val = alloca i2, !mcsema_real_eip !56
  %FPU_RC_val = alloca i2, !mcsema_real_eip !56
  %FPU_X_val = alloca i1, !mcsema_real_eip !56
  %FPU_IE_val = alloca i1, !mcsema_real_eip !56
  %FPU_DE_val = alloca i1, !mcsema_real_eip !56
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !56
  %FPU_OE_val = alloca i1, !mcsema_real_eip !56
  %FPU_UE_val = alloca i1, !mcsema_real_eip !56
  %FPU_PE_val = alloca i1, !mcsema_real_eip !56
  %FPU_SF_val = alloca i1, !mcsema_real_eip !56
  %FPU_ES_val = alloca i1, !mcsema_real_eip !56
  %FPU_C0_val = alloca i1, !mcsema_real_eip !56
  %FPU_C1_val = alloca i1, !mcsema_real_eip !56
  %FPU_C2_val = alloca i1, !mcsema_real_eip !56
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !56
  %FPU_C3_val = alloca i1, !mcsema_real_eip !56
  %FPU_B_val = alloca i1, !mcsema_real_eip !56
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !56
  %DF_val = alloca i1, !mcsema_real_eip !56
  %OF_val = alloca i1, !mcsema_real_eip !56
  %SF_val = alloca i1, !mcsema_real_eip !56
  %CF_val = alloca i1, !mcsema_real_eip !56
  %AF_val = alloca i1, !mcsema_real_eip !56
  %PF_val = alloca i1, !mcsema_real_eip !56
  %ZF_val = alloca i1, !mcsema_real_eip !56
  %RIP_val = alloca i64, !mcsema_real_eip !56
  %R14_val = alloca i64, !mcsema_real_eip !56
  %R13_val = alloca i64, !mcsema_real_eip !56
  %R12_val = alloca i64, !mcsema_real_eip !56
  %R11_val = alloca i64, !mcsema_real_eip !56
  %R10_val = alloca i64, !mcsema_real_eip !56
  %R9_val = alloca i64, !mcsema_real_eip !56
  %R8_val = alloca i64, !mcsema_real_eip !56
  %RSP_val = alloca i64, !mcsema_real_eip !56
  %RBP_val = alloca i64, !mcsema_real_eip !56
  %RDI_val = alloca i64, !mcsema_real_eip !56
  %RSI_val = alloca i64, !mcsema_real_eip !56
  %RDX_val = alloca i64, !mcsema_real_eip !56
  %RCX_val = alloca i64, !mcsema_real_eip !56
  %RBX_val = alloca i64, !mcsema_real_eip !56
  %RAX_val = alloca i64, !mcsema_real_eip !56
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !56
  %1 = load i64, i64* %RAX, !mcsema_real_eip !56
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !56
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !56
  %2 = load i64, i64* %RBX, !mcsema_real_eip !56
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !56
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !56
  %3 = load i64, i64* %RCX, !mcsema_real_eip !56
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !56
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !56
  %4 = load i64, i64* %RDX, !mcsema_real_eip !56
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !56
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !56
  %5 = load i64, i64* %RSI, !mcsema_real_eip !56
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !56
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !56
  %6 = load i64, i64* %RDI, !mcsema_real_eip !56
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !56
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !56
  %7 = load i64, i64* %RSP, !mcsema_real_eip !56
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !56
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !56
  %8 = load i64, i64* %RBP, !mcsema_real_eip !56
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !56
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !56
  %9 = load i64, i64* %R8, !mcsema_real_eip !56
  store i64 %9, i64* %R8_val, !mcsema_real_eip !56
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !56
  %10 = load i64, i64* %R9, !mcsema_real_eip !56
  store i64 %10, i64* %R9_val, !mcsema_real_eip !56
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !56
  %11 = load i64, i64* %R10, !mcsema_real_eip !56
  store i64 %11, i64* %R10_val, !mcsema_real_eip !56
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !56
  %12 = load i64, i64* %R11, !mcsema_real_eip !56
  store i64 %12, i64* %R11_val, !mcsema_real_eip !56
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !56
  %13 = load i64, i64* %R12, !mcsema_real_eip !56
  store i64 %13, i64* %R12_val, !mcsema_real_eip !56
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !56
  %14 = load i64, i64* %R13, !mcsema_real_eip !56
  store i64 %14, i64* %R13_val, !mcsema_real_eip !56
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !56
  %15 = load i64, i64* %R14, !mcsema_real_eip !56
  store i64 %15, i64* %R14_val, !mcsema_real_eip !56
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !56
  %16 = load i64, i64* %R15, !mcsema_real_eip !56
  store i64 %16, i64* %R15_val, !mcsema_real_eip !56
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !56
  %17 = load i64, i64* %RIP, !mcsema_real_eip !56
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !56
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !56
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !56
  store i1 %18, i1* %CF_val, !mcsema_real_eip !56
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !56
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !56
  store i1 %19, i1* %PF_val, !mcsema_real_eip !56
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !56
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !56
  store i1 %20, i1* %AF_val, !mcsema_real_eip !56
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !56
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !56
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !56
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !56
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !56
  store i1 %22, i1* %SF_val, !mcsema_real_eip !56
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !56
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !56
  store i1 %23, i1* %OF_val, !mcsema_real_eip !56
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !56
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !56
  store i1 %24, i1* %DF_val, !mcsema_real_eip !56
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !56
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !56
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !56
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !56
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !56
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !56
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !56
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !56
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !56
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !56
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !56
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !56
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !56
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !56
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !56
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !56
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !56
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !56
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !56
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !56
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !56
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !56
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !56
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !56
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !56
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !56
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !56
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !56
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !56
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !56
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !56
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !56
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !56
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !56
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !56
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !56
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !56
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !56
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !56
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !56
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !56
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !56
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !56
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !56
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !56
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !56
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !56
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !56
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !56
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !56
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !56
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !56
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !56
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !56
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !56
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !56
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !56
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !56
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !56
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !56
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !56
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !56
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !56
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !56
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !56
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !56
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !56
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !56
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !56
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !56
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !56
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !56
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !56
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !56
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !56
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !56
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !56
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !56
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !56
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !56
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !56
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !56
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !56
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !56
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !56
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !56
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !56
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !56
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !56
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !56
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !56
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !56
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !56
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !56
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !56
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !56
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !56
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !56
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !56
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !56
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !56
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !56
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !56
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !56
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !56
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !56
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !56
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !56
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !56
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !56
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !56
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !56
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !56
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !56
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !56
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !56
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !56
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !56
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !56
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !56
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !56
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !56
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !56
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !56
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !56
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !56
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !56
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !56
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !56
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !56
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !56
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !56
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !56
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !56
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !56
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !56
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !56
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !56
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !56
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !56
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !56
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !56
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !57
  %83 = load i64, i64* %RBX_val, !mcsema_real_eip !58
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %84 = add i64 %80, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !58
  store i64 %83, i64* %_allin_new_bt_2, !mcsema_real_eip !58
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !58
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %87 = add i64 %86, 40, !mcsema_real_eip !59
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !59
  %_ptr_to_int_113 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_local_end_to_int_114 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_115 = bitcast i64* %_allin_new_bt_5 to i8*
  %_offset_above_rbp_116 = sub i64 %_ptr_to_int_113, %_local_end_to_int_114
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_ptr_bt_115, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_ptr_bt_115, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_ptr_bt_115, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  br i1 %_cond1_n_cond2_cond3_124, label %89, label %90

; <label>:89:                                     ; preds = %55
  %_address_in_parent_stack_125 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_address_in_parent_stack_bt_126 = bitcast i8* %_address_in_parent_stack_125 to i64*
  br label %90

; <label>:90:                                     ; preds = %55, %89
  %91 = phi i64* [ %_allin_new_bt_5, %55 ], [ %_address_in_parent_stack_bt_126, %89 ]
  %_new_load_127 = load i64, i64* %91
  store i64 %_new_load_127, i64* %RAX_val, !mcsema_real_eip !59
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 32
  %92 = add i64 %86, 32, !mcsema_real_eip !60
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !60
  %94 = bitcast i64* %_allin_new_bt_7 to i32*
  %_ptr_to_int_128 = ptrtoint i32* %94 to i64
  %_local_end_to_int_129 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_130 = bitcast i32* %94 to i8*
  %_offset_above_rbp_131 = sub i64 %_ptr_to_int_128, %_local_end_to_int_129
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_ptr_bt_130, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_ptr_bt_130, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_ptr_bt_130, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %95, label %96

; <label>:95:                                     ; preds = %90
  %_address_in_parent_stack_140 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_address_in_parent_stack_bt_141 = bitcast i8* %_address_in_parent_stack_140 to i32*
  br label %96

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i32* [ %94, %90 ], [ %_address_in_parent_stack_bt_141, %95 ]
  %_new_load_142 = load i32, i32* %97
  %98 = zext i32 %_new_load_142 to i64, !mcsema_real_eip !60
  store i64 %98, i64* %R10_val, !mcsema_real_eip !60
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 24
  %100 = add i64 %99, 24, !mcsema_real_eip !61
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !61
  %_ptr_to_int_143 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_144 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_145 = bitcast i64* %_allin_new_bt_10 to i8*
  %_offset_above_rbp_146 = sub i64 %_ptr_to_int_143, %_local_end_to_int_144
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_ptr_bt_145, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_ptr_bt_145, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_ptr_bt_145, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %102, label %103

; <label>:102:                                    ; preds = %96
  %_address_in_parent_stack_155 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_address_in_parent_stack_bt_156 = bitcast i8* %_address_in_parent_stack_155 to i64*
  br label %103

; <label>:103:                                    ; preds = %96, %102
  %104 = phi i64* [ %_allin_new_bt_10, %96 ], [ %_address_in_parent_stack_bt_156, %102 ]
  %_new_load_157 = load i64, i64* %104
  store i64 %_new_load_157, i64* %R11_val, !mcsema_real_eip !61
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 16
  %105 = add i64 %99, 16, !mcsema_real_eip !62
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !62
  %107 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_158 = ptrtoint i32* %107 to i64
  %_local_end_to_int_159 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_160 = bitcast i32* %107 to i8*
  %_offset_above_rbp_161 = sub i64 %_ptr_to_int_158, %_local_end_to_int_159
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_ptr_bt_160, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_ptr_bt_160, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_ptr_bt_160, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %108, label %109

; <label>:108:                                    ; preds = %103
  %_address_in_parent_stack_170 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_address_in_parent_stack_bt_171 = bitcast i8* %_address_in_parent_stack_170 to i32*
  br label %109

; <label>:109:                                    ; preds = %103, %108
  %110 = phi i32* [ %107, %103 ], [ %_address_in_parent_stack_bt_171, %108 ]
  %_new_load_172 = load i32, i32* %110
  %111 = zext i32 %_new_load_172 to i64, !mcsema_real_eip !62
  store i64 %111, i64* %RBX_val, !mcsema_real_eip !62
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %113 = add i64 %112, -12, !mcsema_real_eip !63
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !63
  %115 = load i64, i64* %RDI_val, !mcsema_real_eip !63
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !63
  %117 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !63
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %119 = add i64 %118, -16, !mcsema_real_eip !64
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !64
  %121 = load i64, i64* %RSI_val, !mcsema_real_eip !64
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !64
  %123 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !64
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %125 = add i64 %124, -20, !mcsema_real_eip !65
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !65
  %127 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  %128 = trunc i64 %127 to i32, !mcsema_real_eip !65
  %129 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %128, i32* %129, !mcsema_real_eip !65
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %131 = add i64 %130, -24, !mcsema_real_eip !66
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !66
  %133 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  %134 = trunc i64 %133 to i32, !mcsema_real_eip !66
  %135 = bitcast i64* %_allin_new_bt_24 to i32*
  store i32 %134, i32* %135, !mcsema_real_eip !66
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -28
  %137 = add i64 %136, -28, !mcsema_real_eip !67
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !67
  %139 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !67
  %141 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %140, i32* %141, !mcsema_real_eip !67
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -32
  %143 = add i64 %142, -32, !mcsema_real_eip !68
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !68
  %145 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !68
  %147 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !68
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -36
  %149 = add i64 %148, -36, !mcsema_real_eip !69
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !69
  %151 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !69
  %153 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !69
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -48
  %155 = add i64 %154, -48, !mcsema_real_eip !70
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !70
  %157 = load i64, i64* %R11_val, !mcsema_real_eip !70
  store i64 %157, i64* %_allin_new_bt_36, !mcsema_real_eip !70
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -52
  %159 = add i64 %158, -52, !mcsema_real_eip !71
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !71
  %161 = load i64, i64* %R10_val, !mcsema_real_eip !71
  %162 = trunc i64 %161 to i32, !mcsema_real_eip !71
  %163 = bitcast i64* %_allin_new_bt_39 to i32*
  store i32 %162, i32* %163, !mcsema_real_eip !71
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -64
  %165 = add i64 %164, -64, !mcsema_real_eip !72
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !72
  %167 = load i64, i64* %RAX_val, !mcsema_real_eip !72
  store i64 %167, i64* %_allin_new_bt_42, !mcsema_real_eip !72
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -68
  %169 = add i64 %168, -68, !mcsema_real_eip !73
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !73
  %171 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 0, i32* %171, !mcsema_real_eip !73
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -72
  %173 = add i64 %172, -72, !mcsema_real_eip !74
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !74
  %175 = bitcast i64* %_allin_new_bt_48 to i32*
  store i32 0, i32* %175, !mcsema_real_eip !74
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -72
  %177 = add i64 %176, -72, !mcsema_real_eip !75
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !75
  %179 = bitcast i64* %_allin_new_bt_51 to i32*
  %_ptr_to_int_173 = ptrtoint i32* %179 to i64
  %_local_end_to_int_174 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_175 = bitcast i32* %179 to i8*
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_174
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_ptr_bt_175, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_ptr_bt_175, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_ptr_bt_175, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %180, label %181

; <label>:180:                                    ; preds = %109
  %_address_in_parent_stack_185 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_address_in_parent_stack_bt_186 = bitcast i8* %_address_in_parent_stack_185 to i32*
  br label %181

; <label>:181:                                    ; preds = %109, %180
  %182 = phi i32* [ %179, %109 ], [ %_address_in_parent_stack_bt_186, %180 ]
  %_new_load_187 = load i32, i32* %182
  %183 = zext i32 %_new_load_187 to i64, !mcsema_real_eip !75
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !75
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -36
  %185 = add i64 %184, -36, !mcsema_real_eip !76
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !76
  %187 = bitcast i64* %_allin_new_bt_54 to i32*
  %_ptr_to_int_188 = ptrtoint i32* %187 to i64
  %_local_end_to_int_189 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_190 = bitcast i32* %187 to i8*
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_189
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_ptr_bt_190, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_ptr_bt_190, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_ptr_bt_190, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %188, label %189

; <label>:188:                                    ; preds = %181
  %_address_in_parent_stack_200 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_address_in_parent_stack_bt_201 = bitcast i8* %_address_in_parent_stack_200 to i32*
  br label %189

; <label>:189:                                    ; preds = %181, %188
  %190 = phi i32* [ %187, %181 ], [ %_address_in_parent_stack_bt_201, %188 ]
  %_new_load_202 = load i32, i32* %190
  %191 = sub i32 %_new_load_187, %_new_load_202, !mcsema_real_eip !76
  %192 = xor i32 %191, %_new_load_187, !mcsema_real_eip !76
  %193 = xor i32 %192, %_new_load_202, !mcsema_real_eip !76
  %194 = and i32 %193, 16, !mcsema_real_eip !76
  %195 = icmp ne i32 %194, 0, !mcsema_real_eip !76
  store i1 %195, i1* %AF_val, !mcsema_real_eip !76
  %196 = trunc i32 %191 to i8, !mcsema_real_eip !76
  %197 = tail call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !76
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF_val, !mcsema_real_eip !76
  %200 = icmp eq i32 %_new_load_187, %_new_load_202
  store i1 %200, i1* %ZF_val, !mcsema_real_eip !76
  %201 = icmp slt i32 %191, 0
  store i1 %201, i1* %SF_val, !mcsema_real_eip !76
  %202 = icmp ult i32 %_new_load_187, %_new_load_202, !mcsema_real_eip !76
  store i1 %202, i1* %CF_val, !mcsema_real_eip !76
  %203 = xor i32 %_new_load_202, %_new_load_187, !mcsema_real_eip !76
  %204 = and i32 %192, %203, !mcsema_real_eip !76
  %205 = icmp slt i32 %204, 0
  store i1 %205, i1* %OF_val, !mcsema_real_eip !76
  %206 = load i1, i1* %SF_val, !mcsema_real_eip !77
  %tmp = xor i1 %206, %205
  br i1 %tmp, label %block_0x51.preheader, label %block_0x7b, !mcsema_real_eip !77

block_0x51.preheader:                             ; preds = %189
  br label %block_0x51

block_0x7b.loopexit:                              ; preds = %558
  br label %block_0x7b

block_0x7b:                                       ; preds = %block_0x7b.loopexit, %189
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %207 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -68
  %208 = add i64 %207, -68, !mcsema_real_eip !78
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !78
  %210 = bitcast i64* %_allin_new_bt_57 to i32*
  %_ptr_to_int_203 = ptrtoint i32* %210 to i64
  %_local_end_to_int_204 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_205 = bitcast i32* %210 to i8*
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_204
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_ptr_bt_205, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_ptr_bt_205, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_ptr_bt_205, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %211, label %212

; <label>:211:                                    ; preds = %block_0x7b
  %_address_in_parent_stack_215 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_address_in_parent_stack_bt_216 = bitcast i8* %_address_in_parent_stack_215 to i32*
  br label %212

; <label>:212:                                    ; preds = %block_0x7b, %211
  %213 = phi i32* [ %210, %block_0x7b ], [ %_address_in_parent_stack_bt_216, %211 ]
  %_new_load_217 = load i32, i32* %213
  %214 = zext i32 %_new_load_217 to i64, !mcsema_real_eip !78
  store i64 %214, i64* %RAX_val, !mcsema_real_eip !78
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -12
  %216 = add i64 %215, -12, !mcsema_real_eip !79
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !79
  %218 = bitcast i64* %_allin_new_bt_60 to i32*
  %_ptr_to_int_218 = ptrtoint i32* %218 to i64
  %_local_end_to_int_219 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_220 = bitcast i32* %218 to i8*
  %_offset_above_rbp_221 = sub i64 %_ptr_to_int_218, %_local_end_to_int_219
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %219, label %220

; <label>:219:                                    ; preds = %212
  %_address_in_parent_stack_230 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_address_in_parent_stack_bt_231 = bitcast i8* %_address_in_parent_stack_230 to i32*
  br label %220

; <label>:220:                                    ; preds = %212, %219
  %221 = phi i32* [ %218, %212 ], [ %_address_in_parent_stack_bt_231, %219 ]
  %_new_load_232 = load i32, i32* %221
  %222 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !79
  store i64 %222, i64* %RCX_val, !mcsema_real_eip !79
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %223 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -16
  %224 = add i64 %223, -16, !mcsema_real_eip !80
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !80
  %226 = bitcast i64* %_allin_new_bt_63 to i32*
  %_ptr_to_int_233 = ptrtoint i32* %226 to i64
  %_local_end_to_int_234 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_235 = bitcast i32* %226 to i8*
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_234
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_ptr_bt_235, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_ptr_bt_235, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_ptr_bt_235, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %227, label %228

; <label>:227:                                    ; preds = %220
  %_address_in_parent_stack_245 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_address_in_parent_stack_bt_246 = bitcast i8* %_address_in_parent_stack_245 to i32*
  br label %228

; <label>:228:                                    ; preds = %220, %227
  %229 = phi i32* [ %226, %220 ], [ %_address_in_parent_stack_bt_246, %227 ]
  %_new_load_247 = load i32, i32* %229
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_232, i32 %_new_load_247)
  %230 = extractvalue { i32, i1 } %uadd72, 0
  %231 = xor i32 %230, %_new_load_247, !mcsema_real_eip !80
  %232 = xor i32 %231, %_new_load_232, !mcsema_real_eip !80
  %233 = and i32 %232, 16, !mcsema_real_eip !80
  %234 = icmp ne i32 %233, 0, !mcsema_real_eip !80
  store i1 %234, i1* %AF_val, !mcsema_real_eip !80
  %235 = icmp slt i32 %230, 0
  store i1 %235, i1* %SF_val, !mcsema_real_eip !80
  %236 = icmp eq i32 %230, 0, !mcsema_real_eip !80
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !80
  %237 = xor i32 %_new_load_232, -2147483648, !mcsema_real_eip !80
  %238 = xor i32 %237, %_new_load_247, !mcsema_real_eip !80
  %239 = and i32 %231, %238, !mcsema_real_eip !80
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF_val, !mcsema_real_eip !80
  %241 = trunc i32 %230 to i8, !mcsema_real_eip !80
  %242 = tail call i8 @llvm.ctpop.i8(i8 %241), !mcsema_real_eip !80
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  store i1 %244, i1* %PF_val, !mcsema_real_eip !80
  %245 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %245, i1* %CF_val, !mcsema_real_eip !80
  %246 = zext i32 %230 to i64, !mcsema_real_eip !80
  store i64 %246, i64* %RCX_val, !mcsema_real_eip !80
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -20
  %248 = add i64 %247, -20, !mcsema_real_eip !81
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !81
  %250 = bitcast i64* %_allin_new_bt_66 to i32*
  %_ptr_to_int_248 = ptrtoint i32* %250 to i64
  %_local_end_to_int_249 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_250 = bitcast i32* %250 to i8*
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_249
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_ptr_bt_250, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_ptr_bt_250, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_ptr_bt_250, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %251, label %252

; <label>:251:                                    ; preds = %228
  %_address_in_parent_stack_260 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_address_in_parent_stack_bt_261 = bitcast i8* %_address_in_parent_stack_260 to i32*
  br label %252

; <label>:252:                                    ; preds = %228, %251
  %253 = phi i32* [ %250, %228 ], [ %_address_in_parent_stack_bt_261, %251 ]
  %_new_load_262 = load i32, i32* %253
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %_new_load_262)
  %254 = extractvalue { i32, i1 } %uadd73, 0
  %255 = xor i32 %254, %_new_load_262, !mcsema_real_eip !81
  %256 = xor i32 %255, %230, !mcsema_real_eip !81
  %257 = and i32 %256, 16, !mcsema_real_eip !81
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !81
  store i1 %258, i1* %AF_val, !mcsema_real_eip !81
  %259 = icmp slt i32 %254, 0
  store i1 %259, i1* %SF_val, !mcsema_real_eip !81
  %260 = icmp eq i32 %254, 0, !mcsema_real_eip !81
  store i1 %260, i1* %ZF_val, !mcsema_real_eip !81
  %261 = xor i32 %230, -2147483648, !mcsema_real_eip !81
  %262 = xor i32 %261, %_new_load_262, !mcsema_real_eip !81
  %263 = and i32 %255, %262, !mcsema_real_eip !81
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF_val, !mcsema_real_eip !81
  %265 = trunc i32 %254 to i8, !mcsema_real_eip !81
  %266 = tail call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !81
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF_val, !mcsema_real_eip !81
  %269 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %269, i1* %CF_val, !mcsema_real_eip !81
  %270 = zext i32 %254 to i64, !mcsema_real_eip !81
  store i64 %270, i64* %RCX_val, !mcsema_real_eip !81
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -24
  %272 = add i64 %271, -24, !mcsema_real_eip !82
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !82
  %274 = bitcast i64* %_allin_new_bt_69 to i32*
  %_ptr_to_int_263 = ptrtoint i32* %274 to i64
  %_local_end_to_int_264 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_265 = bitcast i32* %274 to i8*
  %_offset_above_rbp_266 = sub i64 %_ptr_to_int_263, %_local_end_to_int_264
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond1_n_cond2_273, %_cond4_272
  br i1 %_cond1_n_cond2_cond3_274, label %275, label %276

; <label>:275:                                    ; preds = %252
  %_address_in_parent_stack_275 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_address_in_parent_stack_bt_276 = bitcast i8* %_address_in_parent_stack_275 to i32*
  br label %276

; <label>:276:                                    ; preds = %252, %275
  %277 = phi i32* [ %274, %252 ], [ %_address_in_parent_stack_bt_276, %275 ]
  %_new_load_277 = load i32, i32* %277
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %254, i32 %_new_load_277)
  %278 = extractvalue { i32, i1 } %uadd74, 0
  %279 = xor i32 %278, %_new_load_277, !mcsema_real_eip !82
  %280 = xor i32 %279, %254, !mcsema_real_eip !82
  %281 = and i32 %280, 16, !mcsema_real_eip !82
  %282 = icmp ne i32 %281, 0, !mcsema_real_eip !82
  store i1 %282, i1* %AF_val, !mcsema_real_eip !82
  %283 = icmp slt i32 %278, 0
  store i1 %283, i1* %SF_val, !mcsema_real_eip !82
  %284 = icmp eq i32 %278, 0, !mcsema_real_eip !82
  store i1 %284, i1* %ZF_val, !mcsema_real_eip !82
  %285 = xor i32 %254, -2147483648, !mcsema_real_eip !82
  %286 = xor i32 %285, %_new_load_277, !mcsema_real_eip !82
  %287 = and i32 %279, %286, !mcsema_real_eip !82
  %288 = icmp slt i32 %287, 0
  store i1 %288, i1* %OF_val, !mcsema_real_eip !82
  %289 = trunc i32 %278 to i8, !mcsema_real_eip !82
  %290 = tail call i8 @llvm.ctpop.i8(i8 %289), !mcsema_real_eip !82
  %291 = and i8 %290, 1
  %292 = icmp eq i8 %291, 0
  store i1 %292, i1* %PF_val, !mcsema_real_eip !82
  %293 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %293, i1* %CF_val, !mcsema_real_eip !82
  %294 = zext i32 %278 to i64, !mcsema_real_eip !82
  store i64 %294, i64* %RCX_val, !mcsema_real_eip !82
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %295 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -28
  %296 = add i64 %295, -28, !mcsema_real_eip !83
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !83
  %298 = bitcast i64* %_allin_new_bt_72 to i32*
  %_ptr_to_int_278 = ptrtoint i32* %298 to i64
  %_local_end_to_int_279 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_280 = bitcast i32* %298 to i8*
  %_offset_above_rbp_281 = sub i64 %_ptr_to_int_278, %_local_end_to_int_279
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_ptr_bt_280, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_ptr_bt_280, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_ptr_bt_280, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  br i1 %_cond1_n_cond2_cond3_289, label %299, label %300

; <label>:299:                                    ; preds = %276
  %_address_in_parent_stack_290 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_address_in_parent_stack_bt_291 = bitcast i8* %_address_in_parent_stack_290 to i32*
  br label %300

; <label>:300:                                    ; preds = %276, %299
  %301 = phi i32* [ %298, %276 ], [ %_address_in_parent_stack_bt_291, %299 ]
  %_new_load_292 = load i32, i32* %301
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %278, i32 %_new_load_292)
  %302 = extractvalue { i32, i1 } %uadd75, 0
  %303 = xor i32 %302, %_new_load_292, !mcsema_real_eip !83
  %304 = xor i32 %303, %278, !mcsema_real_eip !83
  %305 = and i32 %304, 16, !mcsema_real_eip !83
  %306 = icmp ne i32 %305, 0, !mcsema_real_eip !83
  store i1 %306, i1* %AF_val, !mcsema_real_eip !83
  %307 = icmp slt i32 %302, 0
  store i1 %307, i1* %SF_val, !mcsema_real_eip !83
  %308 = icmp eq i32 %302, 0, !mcsema_real_eip !83
  store i1 %308, i1* %ZF_val, !mcsema_real_eip !83
  %309 = xor i32 %278, -2147483648, !mcsema_real_eip !83
  %310 = xor i32 %309, %_new_load_292, !mcsema_real_eip !83
  %311 = and i32 %303, %310, !mcsema_real_eip !83
  %312 = icmp slt i32 %311, 0
  store i1 %312, i1* %OF_val, !mcsema_real_eip !83
  %313 = trunc i32 %302 to i8, !mcsema_real_eip !83
  %314 = tail call i8 @llvm.ctpop.i8(i8 %313), !mcsema_real_eip !83
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  store i1 %316, i1* %PF_val, !mcsema_real_eip !83
  %317 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %317, i1* %CF_val, !mcsema_real_eip !83
  %318 = zext i32 %302 to i64, !mcsema_real_eip !83
  store i64 %318, i64* %RCX_val, !mcsema_real_eip !83
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -32
  %320 = add i64 %319, -32, !mcsema_real_eip !84
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !84
  %322 = bitcast i64* %_allin_new_bt_75 to i32*
  %_ptr_to_int_293 = ptrtoint i32* %322 to i64
  %_local_end_to_int_294 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_295 = bitcast i32* %322 to i8*
  %_offset_above_rbp_296 = sub i64 %_ptr_to_int_293, %_local_end_to_int_294
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_ptr_bt_295, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  br i1 %_cond1_n_cond2_cond3_304, label %323, label %324

; <label>:323:                                    ; preds = %300
  %_address_in_parent_stack_305 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_address_in_parent_stack_bt_306 = bitcast i8* %_address_in_parent_stack_305 to i32*
  br label %324

; <label>:324:                                    ; preds = %300, %323
  %325 = phi i32* [ %322, %300 ], [ %_address_in_parent_stack_bt_306, %323 ]
  %_new_load_307 = load i32, i32* %325
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %_new_load_307)
  %326 = extractvalue { i32, i1 } %uadd76, 0
  %327 = xor i32 %326, %_new_load_307, !mcsema_real_eip !84
  %328 = xor i32 %327, %302, !mcsema_real_eip !84
  %329 = and i32 %328, 16, !mcsema_real_eip !84
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !84
  store i1 %330, i1* %AF_val, !mcsema_real_eip !84
  %331 = icmp eq i32 %326, 0, !mcsema_real_eip !84
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !84
  %332 = trunc i32 %326 to i8, !mcsema_real_eip !84
  %333 = tail call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !84
  %334 = and i8 %333, 1
  %335 = icmp eq i8 %334, 0
  store i1 %335, i1* %PF_val, !mcsema_real_eip !84
  %336 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %336, i1* %CF_val, !mcsema_real_eip !84
  %337 = zext i32 %326 to i64, !mcsema_real_eip !84
  store i64 %337, i64* %RCX_val, !mcsema_real_eip !84
  %338 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  %339 = trunc i64 %338 to i32, !mcsema_real_eip !85
  %340 = sext i32 %339 to i64, !mcsema_real_eip !85
  %341 = sext i32 %326 to i64, !mcsema_real_eip !85
  %342 = mul i64 %340, %341, !mcsema_real_eip !85
  %343 = mul i32 %339, %326, !mcsema_real_eip !85
  %344 = sext i32 %343 to i64, !mcsema_real_eip !85
  %345 = icmp ne i64 %344, %342, !mcsema_real_eip !85
  store i1 %345, i1* %SF_val, !mcsema_real_eip !85
  store i1 %345, i1* %OF_val, !mcsema_real_eip !85
  %346 = zext i32 %343 to i64, !mcsema_real_eip !85
  store i64 %346, i64* %RAX_val, !mcsema_real_eip !85
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %347 = load i64, i64* %RSP_val, !mcsema_real_eip !86
  %_allin_new_bt_77 = bitcast i8* %_load_rsp_ptr_76 to i64*
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !86
  %_ptr_to_int_308 = ptrtoint i64* %_allin_new_bt_77 to i64
  %_local_end_to_int_309 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_310 = bitcast i64* %_allin_new_bt_77 to i8*
  %_offset_above_rbp_311 = sub i64 %_ptr_to_int_308, %_local_end_to_int_309
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_ptr_bt_310, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_ptr_bt_310, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_ptr_bt_310, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  br i1 %_cond1_n_cond2_cond3_319, label %349, label %350

; <label>:349:                                    ; preds = %324
  %_address_in_parent_stack_320 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_address_in_parent_stack_bt_321 = bitcast i8* %_address_in_parent_stack_320 to i64*
  br label %350

; <label>:350:                                    ; preds = %324, %349
  %351 = phi i64* [ %_allin_new_bt_77, %324 ], [ %_address_in_parent_stack_bt_321, %349 ]
  %_new_load_322 = load i64, i64* %351
  store i64 %_new_load_322, i64* %RBX_val, !mcsema_real_eip !86
  %_new_gep_78 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 8
  %352 = add i64 %347, 8, !mcsema_real_eip !86
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_
  store i64 %352, i64* %RSP_val, !mcsema_real_eip !86
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !87
  %_ptr_to_int_323 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_local_end_to_int_324 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_325 = bitcast i64* %_allin_new_bt_79 to i8*
  %_offset_above_rbp_326 = sub i64 %_ptr_to_int_323, %_local_end_to_int_324
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_ptr_bt_325, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  br i1 %_cond1_n_cond2_cond3_334, label %354, label %355

; <label>:354:                                    ; preds = %350
  %_address_in_parent_stack_335 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_address_in_parent_stack_bt_336 = bitcast i8* %_address_in_parent_stack_335 to i64*
  br label %355

; <label>:355:                                    ; preds = %350, %354
  %356 = phi i64* [ %_allin_new_bt_79, %350 ], [ %_address_in_parent_stack_bt_336, %354 ]
  %_new_load_337 = load i64, i64* %356
  %_new_int2ptr_ = inttoptr i64 %_new_load_337 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_337, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_80 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 24
  %357 = add i64 %347, 24, !mcsema_real_eip !88
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_
  store i64 %357, i64* %RSP_val, !mcsema_real_eip !88
  %358 = load i64, i64* %RAX_val, !mcsema_real_eip !88
  store i64 %358, i64* %RAX, !mcsema_real_eip !88
  %359 = load i64, i64* %RBX_val, !mcsema_real_eip !88
  store i64 %359, i64* %RBX, !mcsema_real_eip !88
  %360 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  store i64 %360, i64* %RCX, !mcsema_real_eip !88
  %361 = load i64, i64* %RDX_val, !mcsema_real_eip !88
  store i64 %361, i64* %RDX, !mcsema_real_eip !88
  %362 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  store i64 %362, i64* %RSI, !mcsema_real_eip !88
  %363 = load i64, i64* %RDI_val, !mcsema_real_eip !88
  store i64 %363, i64* %RDI, !mcsema_real_eip !88
  %_load_rsp_ptr_81 = load i8*, i8** %_RSP_ptr_
  %364 = load i64, i64* %RSP_val, !mcsema_real_eip !88
  %_new_ptr2int_82 = ptrtoint i8* %_load_rsp_ptr_81 to i64
  store volatile i64 %_new_ptr2int_82, i64* %RSP
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_ptr2int_84 = ptrtoint i8* %_load_rbp_ptr_83 to i64
  store volatile i64 %_new_ptr2int_84, i64* %RBP
  %366 = load i64, i64* %R8_val, !mcsema_real_eip !88
  store i64 %366, i64* %R8, !mcsema_real_eip !88
  %367 = load i64, i64* %R9_val, !mcsema_real_eip !88
  store i64 %367, i64* %R9, !mcsema_real_eip !88
  %368 = load i64, i64* %R10_val, !mcsema_real_eip !88
  store i64 %368, i64* %R10, !mcsema_real_eip !88
  %369 = load i64, i64* %R11_val, !mcsema_real_eip !88
  store i64 %369, i64* %R11, !mcsema_real_eip !88
  %370 = load i64, i64* %R12_val, !mcsema_real_eip !88
  store i64 %370, i64* %R12, !mcsema_real_eip !88
  %371 = load i64, i64* %R13_val, !mcsema_real_eip !88
  store i64 %371, i64* %R13, !mcsema_real_eip !88
  %372 = load i64, i64* %R14_val, !mcsema_real_eip !88
  store i64 %372, i64* %R14, !mcsema_real_eip !88
  %373 = load i64, i64* %R15_val, !mcsema_real_eip !88
  store i64 %373, i64* %R15, !mcsema_real_eip !88
  %374 = load i64, i64* %RIP_val, !mcsema_real_eip !88
  store i64 %374, i64* %RIP, !mcsema_real_eip !88
  %375 = load i1, i1* %CF_val, !mcsema_real_eip !88
  store i1 %375, i1* %CF, align 1, !mcsema_real_eip !88
  %376 = load i1, i1* %PF_val, !mcsema_real_eip !88
  store i1 %376, i1* %PF, align 1, !mcsema_real_eip !88
  %377 = load i1, i1* %AF_val, !mcsema_real_eip !88
  store i1 %377, i1* %AF, align 1, !mcsema_real_eip !88
  %378 = load i1, i1* %ZF_val, !mcsema_real_eip !88
  store i1 %378, i1* %ZF, align 1, !mcsema_real_eip !88
  %379 = load i1, i1* %SF_val, !mcsema_real_eip !88
  store i1 %379, i1* %SF, align 1, !mcsema_real_eip !88
  %380 = load i1, i1* %OF_val, !mcsema_real_eip !88
  store i1 %380, i1* %OF, align 1, !mcsema_real_eip !88
  %381 = load i1, i1* %DF_val, !mcsema_real_eip !88
  store i1 %381, i1* %DF, align 1, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !88
  %382 = load i1, i1* %FPU_B_val, !mcsema_real_eip !88
  store i1 %382, i1* %FPU_B, align 1, !mcsema_real_eip !88
  %383 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !88
  store i1 %383, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  %384 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !88
  store i3 %384, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  %385 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !88
  store i1 %385, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  %386 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !88
  store i1 %386, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  %387 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !88
  store i1 %387, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  %388 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !88
  store i1 %388, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  %389 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !88
  store i1 %389, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  %390 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !88
  store i1 %390, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  %391 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !88
  store i1 %391, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  %392 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !88
  store i1 %392, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  %393 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !88
  store i1 %393, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  %394 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !88
  store i1 %394, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  %395 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !88
  store i1 %395, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  %396 = load i1, i1* %FPU_X_val, !mcsema_real_eip !88
  store i1 %396, i1* %FPU_X, align 1, !mcsema_real_eip !88
  %397 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !88
  store i2 %397, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  %398 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !88
  store i2 %398, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  %399 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !88
  store i1 %399, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  %400 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !88
  store i1 %400, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  %401 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !88
  store i1 %401, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  %402 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !88
  store i1 %402, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  %403 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !88
  store i1 %403, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  %404 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !88
  store i1 %404, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  %_ptr_to_int_338 = ptrtoint i64* %53 to i64
  %_local_end_to_int_339 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_340 = bitcast i64* %53 to i8*
  %_offset_above_rbp_341 = sub i64 %_ptr_to_int_338, %_local_end_to_int_339
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_ptr_bt_340, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_ptr_bt_340, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_ptr_bt_340, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  br i1 %_cond1_n_cond2_cond3_349, label %405, label %406

; <label>:405:                                    ; preds = %355
  %_address_in_parent_stack_350 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_address_in_parent_stack_bt_351 = bitcast i8* %_address_in_parent_stack_350 to i64*
  br label %406

; <label>:406:                                    ; preds = %355, %405
  %407 = phi i64* [ %53, %355 ], [ %_address_in_parent_stack_bt_351, %405 ]
  %_new_load_352 = load i64, i64* %407
  store i64 %_new_load_352, i64* %52, align 4
  %408 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !88
  store i16 %408, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  %409 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !88
  store i64 %409, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !88
  %410 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !88
  store i16 %410, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  %411 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !88
  store i64 %411, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !88
  %412 = load i128, i128* %XMM0_val, !mcsema_real_eip !88
  store i128 %412, i128* %XMM0, align 1, !mcsema_real_eip !88
  %413 = load i128, i128* %XMM1_val, !mcsema_real_eip !88
  store i128 %413, i128* %XMM1, align 1, !mcsema_real_eip !88
  %414 = load i128, i128* %XMM2_val, !mcsema_real_eip !88
  store i128 %414, i128* %XMM2, align 1, !mcsema_real_eip !88
  %415 = load i128, i128* %XMM3_val, !mcsema_real_eip !88
  store i128 %415, i128* %XMM3, align 1, !mcsema_real_eip !88
  %416 = load i128, i128* %XMM4_val, !mcsema_real_eip !88
  store i128 %416, i128* %XMM4, align 1, !mcsema_real_eip !88
  %417 = load i128, i128* %XMM5_val, !mcsema_real_eip !88
  store i128 %417, i128* %XMM5, align 1, !mcsema_real_eip !88
  %418 = load i128, i128* %XMM6_val, !mcsema_real_eip !88
  store i128 %418, i128* %XMM6, align 1, !mcsema_real_eip !88
  %419 = load i128, i128* %XMM7_val, !mcsema_real_eip !88
  store i128 %419, i128* %XMM7, align 1, !mcsema_real_eip !88
  %420 = load i128, i128* %XMM8_val, !mcsema_real_eip !88
  store i128 %420, i128* %XMM8, align 1, !mcsema_real_eip !88
  %421 = load i128, i128* %XMM9_val, !mcsema_real_eip !88
  store i128 %421, i128* %XMM9, align 1, !mcsema_real_eip !88
  %422 = load i128, i128* %XMM10_val, !mcsema_real_eip !88
  store i128 %422, i128* %XMM10, align 1, !mcsema_real_eip !88
  %423 = load i128, i128* %XMM11_val, !mcsema_real_eip !88
  store i128 %423, i128* %XMM11, align 1, !mcsema_real_eip !88
  %424 = load i128, i128* %XMM12_val, !mcsema_real_eip !88
  store i128 %424, i128* %XMM12, align 1, !mcsema_real_eip !88
  %425 = load i128, i128* %XMM13_val, !mcsema_real_eip !88
  store i128 %425, i128* %XMM13, align 1, !mcsema_real_eip !88
  %426 = load i128, i128* %XMM14_val, !mcsema_real_eip !88
  store i128 %426, i128* %XMM14, align 1, !mcsema_real_eip !88
  %427 = load i128, i128* %XMM15_val, !mcsema_real_eip !88
  store i128 %427, i128* %XMM15, align 1, !mcsema_real_eip !88
  %428 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !88
  store i64 %428, i64* %STACK_BASE, align 1, !mcsema_real_eip !88
  %429 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !88
  store i64 %429, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !88
  ret void, !mcsema_real_eip !88

block_0x51:                                       ; preds = %558, %block_0x51.preheader
  %_load_rbp_ptr_85 = load i8*, i8** %_RBP_ptr_
  %430 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_85, i64 -48
  %431 = add i64 %430, -48, !mcsema_real_eip !89
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !89
  %_ptr_to_int_353 = ptrtoint i64* %_allin_new_bt_87 to i64
  %_local_end_to_int_354 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_355 = bitcast i64* %_allin_new_bt_87 to i8*
  %_offset_above_rbp_356 = sub i64 %_ptr_to_int_353, %_local_end_to_int_354
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %433, label %434

; <label>:433:                                    ; preds = %block_0x51
  %_address_in_parent_stack_365 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_address_in_parent_stack_bt_366 = bitcast i8* %_address_in_parent_stack_365 to i64*
  br label %434

; <label>:434:                                    ; preds = %block_0x51, %433
  %435 = phi i64* [ %_allin_new_bt_87, %block_0x51 ], [ %_address_in_parent_stack_bt_366, %433 ]
  %_new_load_367 = load i64, i64* %435
  store i64 %_new_load_367, i64* %RAX_val, !mcsema_real_eip !89
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_85, i64 -72
  %436 = add i64 %430, -72, !mcsema_real_eip !90
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !90
  %438 = bitcast i64* %_allin_new_bt_89 to i32*
  %_ptr_to_int_368 = ptrtoint i32* %438 to i64
  %_local_end_to_int_369 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_370 = bitcast i32* %438 to i8*
  %_offset_above_rbp_371 = sub i64 %_ptr_to_int_368, %_local_end_to_int_369
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_ptr_bt_370, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_ptr_bt_370, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_ptr_bt_370, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %439, label %440

; <label>:439:                                    ; preds = %434
  %_address_in_parent_stack_380 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_address_in_parent_stack_bt_381 = bitcast i8* %_address_in_parent_stack_380 to i32*
  br label %440

; <label>:440:                                    ; preds = %434, %439
  %441 = phi i32* [ %438, %434 ], [ %_address_in_parent_stack_bt_381, %439 ]
  %_new_load_382 = load i32, i32* %441
  %442 = sext i32 %_new_load_382 to i64, !mcsema_real_eip !90
  store i64 %442, i64* %RCX_val, !mcsema_real_eip !90
  %443 = load i64, i64* %RAX_val, !mcsema_real_eip !91
  %444 = shl nsw i64 %442, 2
  %445 = add i64 %444, %443, !mcsema_real_eip !91
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !91
  %447 = bitcast i64* %446 to i32*
  %_ptr_to_int_383 = ptrtoint i32* %447 to i64
  %_local_end_to_int_384 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_385 = bitcast i32* %447 to i8*
  %_offset_above_rbp_386 = sub i64 %_ptr_to_int_383, %_local_end_to_int_384
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %448, label %449

; <label>:448:                                    ; preds = %440
  %_address_in_parent_stack_395 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_address_in_parent_stack_bt_396 = bitcast i8* %_address_in_parent_stack_395 to i32*
  br label %449

; <label>:449:                                    ; preds = %440, %448
  %450 = phi i32* [ %447, %440 ], [ %_address_in_parent_stack_bt_396, %448 ]
  %_new_load_397 = load i32, i32* %450
  %451 = zext i32 %_new_load_397 to i64, !mcsema_real_eip !91
  store i64 %451, i64* %RDX_val, !mcsema_real_eip !91
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -64
  %453 = add i64 %452, -64, !mcsema_real_eip !92
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !92
  %_ptr_to_int_398 = ptrtoint i64* %_allin_new_bt_92 to i64
  %_local_end_to_int_399 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_400 = bitcast i64* %_allin_new_bt_92 to i8*
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_399
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_ptr_bt_400, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_ptr_bt_400, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_ptr_bt_400, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %455, label %456

; <label>:455:                                    ; preds = %449
  %_address_in_parent_stack_410 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_address_in_parent_stack_bt_411 = bitcast i8* %_address_in_parent_stack_410 to i64*
  br label %456

; <label>:456:                                    ; preds = %449, %455
  %457 = phi i64* [ %_allin_new_bt_92, %449 ], [ %_address_in_parent_stack_bt_411, %455 ]
  %_new_load_412 = load i64, i64* %457
  store i64 %_new_load_412, i64* %RAX_val, !mcsema_real_eip !92
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -72
  %458 = add i64 %452, -72, !mcsema_real_eip !93
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %459 = inttoptr i64 %458 to i64*, !mcsema_real_eip !93
  %460 = bitcast i64* %_allin_new_bt_94 to i32*
  %_ptr_to_int_413 = ptrtoint i32* %460 to i64
  %_local_end_to_int_414 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_415 = bitcast i32* %460 to i8*
  %_offset_above_rbp_416 = sub i64 %_ptr_to_int_413, %_local_end_to_int_414
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_ptr_bt_415, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_ptr_bt_415, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_ptr_bt_415, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %461, label %462

; <label>:461:                                    ; preds = %456
  %_address_in_parent_stack_425 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_address_in_parent_stack_bt_426 = bitcast i8* %_address_in_parent_stack_425 to i32*
  br label %462

; <label>:462:                                    ; preds = %456, %461
  %463 = phi i32* [ %460, %456 ], [ %_address_in_parent_stack_bt_426, %461 ]
  %_new_load_427 = load i32, i32* %463
  %464 = sext i32 %_new_load_427 to i64, !mcsema_real_eip !93
  store i64 %464, i64* %RCX_val, !mcsema_real_eip !93
  %465 = load i64, i64* %RAX_val, !mcsema_real_eip !94
  %466 = shl nsw i64 %464, 2
  %467 = add i64 %466, %465, !mcsema_real_eip !94
  %468 = inttoptr i64 %467 to i64*, !mcsema_real_eip !94
  %469 = load i64, i64* %RDX_val, !mcsema_real_eip !94
  %470 = trunc i64 %469 to i32, !mcsema_real_eip !94
  %471 = bitcast i64* %468 to i32*
  %_ptr_to_int_428 = ptrtoint i32* %471 to i64
  %_local_end_to_int_429 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_430 = bitcast i32* %471 to i8*
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_429
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_ptr_bt_430, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_ptr_bt_430, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_ptr_bt_430, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %472, label %473

; <label>:472:                                    ; preds = %462
  %_address_in_parent_stack_440 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_address_in_parent_stack_bt_441 = bitcast i8* %_address_in_parent_stack_440 to i32*
  br label %473

; <label>:473:                                    ; preds = %462, %472
  %474 = phi i32* [ %471, %462 ], [ %_address_in_parent_stack_bt_441, %472 ]
  %_new_load_442 = load i32, i32* %474
  %475 = sub i32 %470, %_new_load_442, !mcsema_real_eip !94
  %476 = xor i32 %475, %470, !mcsema_real_eip !94
  %477 = xor i32 %476, %_new_load_442, !mcsema_real_eip !94
  %478 = and i32 %477, 16, !mcsema_real_eip !94
  %479 = icmp ne i32 %478, 0, !mcsema_real_eip !94
  store i1 %479, i1* %AF_val, !mcsema_real_eip !94
  %480 = trunc i32 %475 to i8, !mcsema_real_eip !94
  %481 = tail call i8 @llvm.ctpop.i8(i8 %480), !mcsema_real_eip !94
  %482 = and i8 %481, 1
  %483 = icmp eq i8 %482, 0
  store i1 %483, i1* %PF_val, !mcsema_real_eip !94
  %484 = icmp eq i32 %470, %_new_load_442
  store i1 %484, i1* %ZF_val, !mcsema_real_eip !94
  %485 = icmp slt i32 %475, 0
  store i1 %485, i1* %SF_val, !mcsema_real_eip !94
  %486 = icmp ult i32 %470, %_new_load_442, !mcsema_real_eip !94
  store i1 %486, i1* %CF_val, !mcsema_real_eip !94
  %487 = xor i32 %470, %_new_load_442, !mcsema_real_eip !94
  %488 = and i32 %476, %487, !mcsema_real_eip !94
  %489 = icmp slt i32 %488, 0
  store i1 %489, i1* %OF_val, !mcsema_real_eip !94
  %490 = zext i32 %475 to i64, !mcsema_real_eip !94
  store i64 %490, i64* %RDX_val, !mcsema_real_eip !94
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %491 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -68
  %492 = add i64 %491, -68, !mcsema_real_eip !95
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !95
  %494 = bitcast i64* %_allin_new_bt_97 to i32*
  %_ptr_to_int_443 = ptrtoint i32* %494 to i64
  %_local_end_to_int_444 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_445 = bitcast i32* %494 to i8*
  %_offset_above_rbp_446 = sub i64 %_ptr_to_int_443, %_local_end_to_int_444
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_ptr_bt_445, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %495, label %496

; <label>:495:                                    ; preds = %473
  %_address_in_parent_stack_455 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_address_in_parent_stack_bt_456 = bitcast i8* %_address_in_parent_stack_455 to i32*
  br label %496

; <label>:496:                                    ; preds = %473, %495
  %497 = phi i32* [ %494, %473 ], [ %_address_in_parent_stack_bt_456, %495 ]
  %_new_load_457 = load i32, i32* %497
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 %_new_load_457)
  %498 = extractvalue { i32, i1 } %uadd, 0
  %499 = xor i32 %498, %_new_load_457, !mcsema_real_eip !95
  %500 = xor i32 %499, %475, !mcsema_real_eip !95
  %501 = and i32 %500, 16, !mcsema_real_eip !95
  %502 = icmp ne i32 %501, 0, !mcsema_real_eip !95
  store i1 %502, i1* %AF_val, !mcsema_real_eip !95
  %503 = icmp slt i32 %498, 0
  store i1 %503, i1* %SF_val, !mcsema_real_eip !95
  %504 = icmp eq i32 %498, 0, !mcsema_real_eip !95
  store i1 %504, i1* %ZF_val, !mcsema_real_eip !95
  %505 = xor i32 %475, -2147483648, !mcsema_real_eip !95
  %506 = xor i32 %505, %_new_load_457, !mcsema_real_eip !95
  %507 = and i32 %499, %506, !mcsema_real_eip !95
  %508 = icmp slt i32 %507, 0
  store i1 %508, i1* %OF_val, !mcsema_real_eip !95
  %509 = trunc i32 %498 to i8, !mcsema_real_eip !95
  %510 = tail call i8 @llvm.ctpop.i8(i8 %509), !mcsema_real_eip !95
  %511 = and i8 %510, 1
  %512 = icmp eq i8 %511, 0
  store i1 %512, i1* %PF_val, !mcsema_real_eip !95
  %513 = extractvalue { i32, i1 } %uadd, 1
  store i1 %513, i1* %CF_val, !mcsema_real_eip !95
  %514 = zext i32 %498 to i64, !mcsema_real_eip !95
  store i64 %514, i64* %RDX_val, !mcsema_real_eip !95
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -68
  %516 = add i64 %515, -68, !mcsema_real_eip !96
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !96
  %518 = bitcast i64* %_allin_new_bt_100 to i32*
  store i32 %498, i32* %518, !mcsema_real_eip !96
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %519 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -72
  %520 = add i64 %519, -72, !mcsema_real_eip !97
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %521 = inttoptr i64 %520 to i64*, !mcsema_real_eip !97
  %522 = bitcast i64* %_allin_new_bt_103 to i32*
  %_ptr_to_int_458 = ptrtoint i32* %522 to i64
  %_local_end_to_int_459 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_460 = bitcast i32* %522 to i8*
  %_offset_above_rbp_461 = sub i64 %_ptr_to_int_458, %_local_end_to_int_459
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_ptr_bt_460, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_ptr_bt_460, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_ptr_bt_460, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  br i1 %_cond1_n_cond2_cond3_469, label %523, label %524

; <label>:523:                                    ; preds = %496
  %_address_in_parent_stack_470 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_address_in_parent_stack_bt_471 = bitcast i8* %_address_in_parent_stack_470 to i32*
  br label %524

; <label>:524:                                    ; preds = %496, %523
  %525 = phi i32* [ %522, %496 ], [ %_address_in_parent_stack_bt_471, %523 ]
  %_new_load_472 = load i32, i32* %525
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_472, i32 1)
  %526 = extractvalue { i32, i1 } %uadd70, 0
  %527 = xor i32 %526, %_new_load_472, !mcsema_real_eip !98
  %528 = and i32 %527, 16, !mcsema_real_eip !98
  %529 = icmp ne i32 %528, 0, !mcsema_real_eip !98
  store i1 %529, i1* %AF_val, !mcsema_real_eip !98
  %530 = icmp slt i32 %526, 0
  store i1 %530, i1* %SF_val, !mcsema_real_eip !98
  %531 = icmp eq i32 %526, 0, !mcsema_real_eip !98
  store i1 %531, i1* %ZF_val, !mcsema_real_eip !98
  %532 = xor i32 %_new_load_472, -2147483648, !mcsema_real_eip !98
  %533 = and i32 %527, %532, !mcsema_real_eip !98
  %534 = icmp slt i32 %533, 0
  store i1 %534, i1* %OF_val, !mcsema_real_eip !98
  %535 = trunc i32 %526 to i8, !mcsema_real_eip !98
  %536 = tail call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !98
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  store i1 %538, i1* %PF_val, !mcsema_real_eip !98
  %539 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %539, i1* %CF_val, !mcsema_real_eip !98
  %540 = zext i32 %526 to i64, !mcsema_real_eip !98
  store i64 %540, i64* %RAX_val, !mcsema_real_eip !98
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -72
  %542 = add i64 %541, -72, !mcsema_real_eip !99
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !99
  %544 = bitcast i64* %_allin_new_bt_106 to i32*
  store i32 %526, i32* %544, !mcsema_real_eip !99
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %545 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -72
  %546 = add i64 %545, -72, !mcsema_real_eip !75
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !75
  %548 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_473 = ptrtoint i32* %548 to i64
  %_local_end_to_int_474 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_475 = bitcast i32* %548 to i8*
  %_offset_above_rbp_476 = sub i64 %_ptr_to_int_473, %_local_end_to_int_474
  %_pot_address_in_parent_stack_477 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_476
  %_cond1_478 = icmp ugt i8* %_ptr_bt_475, %_local_stack_end_ptr_
  %_cond2_1_479 = icmp ugt i8* %_ptr_bt_475, %_parent_stack_end_ptr_
  %_cond2_2_480 = icmp ult i8* %_ptr_bt_475, %_parent_stack_start_ptr_
  %_cond2_481 = or i1 %_cond2_1_479, %_cond2_2_480
  %_cond4_482 = icmp ule i8* %_pot_address_in_parent_stack_477, %_parent_stack_end_ptr_
  %_cond1_n_cond2_483 = and i1 %_cond1_478, %_cond2_481
  %_cond1_n_cond2_cond3_484 = and i1 %_cond1_n_cond2_483, %_cond4_482
  br i1 %_cond1_n_cond2_cond3_484, label %549, label %550

; <label>:549:                                    ; preds = %524
  %_address_in_parent_stack_485 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_476
  %_address_in_parent_stack_bt_486 = bitcast i8* %_address_in_parent_stack_485 to i32*
  br label %550

; <label>:550:                                    ; preds = %524, %549
  %551 = phi i32* [ %548, %524 ], [ %_address_in_parent_stack_bt_486, %549 ]
  %_new_load_487 = load i32, i32* %551
  %552 = zext i32 %_new_load_487 to i64, !mcsema_real_eip !75
  store i64 %552, i64* %RAX_val, !mcsema_real_eip !75
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %553 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -36
  %554 = add i64 %553, -36, !mcsema_real_eip !76
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !76
  %556 = bitcast i64* %_allin_new_bt_112 to i32*
  %_ptr_to_int_488 = ptrtoint i32* %556 to i64
  %_local_end_to_int_489 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_490 = bitcast i32* %556 to i8*
  %_offset_above_rbp_491 = sub i64 %_ptr_to_int_488, %_local_end_to_int_489
  %_pot_address_in_parent_stack_492 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_491
  %_cond1_493 = icmp ugt i8* %_ptr_bt_490, %_local_stack_end_ptr_
  %_cond2_1_494 = icmp ugt i8* %_ptr_bt_490, %_parent_stack_end_ptr_
  %_cond2_2_495 = icmp ult i8* %_ptr_bt_490, %_parent_stack_start_ptr_
  %_cond2_496 = or i1 %_cond2_1_494, %_cond2_2_495
  %_cond4_497 = icmp ule i8* %_pot_address_in_parent_stack_492, %_parent_stack_end_ptr_
  %_cond1_n_cond2_498 = and i1 %_cond1_493, %_cond2_496
  %_cond1_n_cond2_cond3_499 = and i1 %_cond1_n_cond2_498, %_cond4_497
  br i1 %_cond1_n_cond2_cond3_499, label %557, label %558

; <label>:557:                                    ; preds = %550
  %_address_in_parent_stack_500 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_491
  %_address_in_parent_stack_bt_501 = bitcast i8* %_address_in_parent_stack_500 to i32*
  br label %558

; <label>:558:                                    ; preds = %550, %557
  %559 = phi i32* [ %556, %550 ], [ %_address_in_parent_stack_bt_501, %557 ]
  %_new_load_502 = load i32, i32* %559
  %560 = sub i32 %_new_load_487, %_new_load_502, !mcsema_real_eip !76
  %561 = xor i32 %560, %_new_load_487, !mcsema_real_eip !76
  %562 = xor i32 %561, %_new_load_502, !mcsema_real_eip !76
  %563 = and i32 %562, 16, !mcsema_real_eip !76
  %564 = icmp ne i32 %563, 0, !mcsema_real_eip !76
  store i1 %564, i1* %AF_val, !mcsema_real_eip !76
  %565 = trunc i32 %560 to i8, !mcsema_real_eip !76
  %566 = tail call i8 @llvm.ctpop.i8(i8 %565), !mcsema_real_eip !76
  %567 = and i8 %566, 1
  %568 = icmp eq i8 %567, 0
  store i1 %568, i1* %PF_val, !mcsema_real_eip !76
  %569 = icmp eq i32 %_new_load_487, %_new_load_502
  store i1 %569, i1* %ZF_val, !mcsema_real_eip !76
  %570 = icmp slt i32 %560, 0
  store i1 %570, i1* %SF_val, !mcsema_real_eip !76
  %571 = icmp ult i32 %_new_load_487, %_new_load_502, !mcsema_real_eip !76
  store i1 %571, i1* %CF_val, !mcsema_real_eip !76
  %572 = xor i32 %_new_load_502, %_new_load_487, !mcsema_real_eip !76
  %573 = and i32 %561, %572, !mcsema_real_eip !76
  %574 = icmp slt i32 %573, 0
  store i1 %574, i1* %OF_val, !mcsema_real_eip !76
  %575 = load i1, i1* %SF_val, !mcsema_real_eip !77
  %tmp71 = xor i1 %575, %574
  br i1 %tmp71, label %block_0x51, label %block_0x7b.loopexit, !mcsema_real_eip !77
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 161, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 164, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 173, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!6 = !{i64 175, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = !{i64 182, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!8 = !{i64 185, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!9 = !{i64 189, [17 x i8] c"\09movq\09%rcx, %rdi\00"}
!10 = !{i64 192, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 197, [16 x i8] c"\09movl\09$40, %edx\00"}
!12 = !{i64 202, [17 x i8] c"\09movl\09%edx, %edi\00"}
!13 = !{i64 204, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!14 = !{i64 208, [9 x i8] c"\09callq\090\00"}
!15 = !{i64 213, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!16 = !{i64 217, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!17 = !{i64 224, [21 x i8] c"\09cmpl\09$10, -36(%rbp)\00"}
!18 = !{i64 228, [8 x i8] c"\09jge\0934\00"}
!19 = !{i64 268, [20 x i8] c"\09movl\09$0, -40(%rbp)\00"}
!20 = !{i64 275, [21 x i8] c"\09cmpl\09$10, -40(%rbp)\00"}
!21 = !{i64 279, [8 x i8] c"\09jge\0931\00"}
!22 = !{i64 234, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!23 = !{i64 240, [15 x i8] c"\09addl\09$1, %eax\00"}
!24 = !{i64 243, [22 x i8] c"\09movq\09-24(%rbp), %rcx\00"}
!25 = !{i64 247, [24 x i8] c"\09movslq\09-36(%rbp), %rdx\00"}
!26 = !{i64 251, [26 x i8] c"\09movl\09%eax, (%rcx,%rdx,4)\00"}
!27 = !{i64 254, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!28 = !{i64 257, [15 x i8] c"\09addl\09$1, %eax\00"}
!29 = !{i64 260, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!30 = !{i64 316, [17 x i8] c"\09movl\09$100, %edi\00"}
!31 = !{i64 321, [17 x i8] c"\09movl\09$200, %esi\00"}
!32 = !{i64 326, [17 x i8] c"\09movl\09$300, %edx\00"}
!33 = !{i64 331, [17 x i8] c"\09movl\09$400, %ecx\00"}
!34 = !{i64 336, [17 x i8] c"\09movl\09$500, %r8d\00"}
!35 = !{i64 342, [17 x i8] c"\09movl\09$600, %r9d\00"}
!36 = !{i64 348, [16 x i8] c"\09movl\09$10, %eax\00"}
!37 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %r10\00"}
!38 = !{i64 357, [22 x i8] c"\09movq\09-32(%rbp), %r11\00"}
!39 = !{i64 361, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!40 = !{i64 368, [20 x i8] c"\09movq\09%r10, 8(%rsp)\00"}
!41 = !{i64 373, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!42 = !{i64 381, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!43 = !{i64 386, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!44 = !{i64 389, [12 x i8] c"\09callq\09-394\00"}
!45 = !{i64 394, [16 x i8] c"\09addq\09$80, %rsp\00"}
!46 = !{i64 398, [11 x i8] c"\09popq\09%rbp\00"}
!47 = !{i64 399, [6 x i8] c"\09retq\00"}
!48 = !{i64 285, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!49 = !{i64 288, [15 x i8] c"\09addl\09$1, %eax\00"}
!50 = !{i64 291, [22 x i8] c"\09movq\09-32(%rbp), %rcx\00"}
!51 = !{i64 295, [24 x i8] c"\09movslq\09-40(%rbp), %rdx\00"}
!52 = !{i64 299, [26 x i8] c"\09movl\09%eax, (%rcx,%rdx,4)\00"}
!53 = !{i64 302, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!54 = !{i64 305, [15 x i8] c"\09addl\09$1, %eax\00"}
!55 = !{i64 308, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!56 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!57 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!58 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!59 = !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!60 = !{i64 9, [22 x i8] c"\09movl\0932(%rbp), %r10d\00"}
!61 = !{i64 13, [21 x i8] c"\09movq\0924(%rbp), %r11\00"}
!62 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!63 = !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!64 = !{i64 23, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!65 = !{i64 26, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!66 = !{i64 29, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!67 = !{i64 32, [22 x i8] c"\09movl\09%r8d, -28(%rbp)\00"}
!68 = !{i64 36, [22 x i8] c"\09movl\09%r9d, -32(%rbp)\00"}
!69 = !{i64 40, [22 x i8] c"\09movl\09%ebx, -36(%rbp)\00"}
!70 = !{i64 43, [22 x i8] c"\09movq\09%r11, -48(%rbp)\00"}
!71 = !{i64 47, [23 x i8] c"\09movl\09%r10d, -52(%rbp)\00"}
!72 = !{i64 51, [22 x i8] c"\09movq\09%rax, -64(%rbp)\00"}
!73 = !{i64 55, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!74 = !{i64 62, [20 x i8] c"\09movl\09$0, -72(%rbp)\00"}
!75 = !{i64 69, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!76 = !{i64 72, [22 x i8] c"\09cmpl\09-36(%rbp), %eax\00"}
!77 = !{i64 75, [8 x i8] c"\09jge\0942\00"}
!78 = !{i64 123, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!79 = !{i64 126, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!80 = !{i64 129, [22 x i8] c"\09addl\09-16(%rbp), %ecx\00"}
!81 = !{i64 132, [22 x i8] c"\09addl\09-20(%rbp), %ecx\00"}
!82 = !{i64 135, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!83 = !{i64 138, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!84 = !{i64 141, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!85 = !{i64 144, [18 x i8] c"\09imull\09%ecx, %eax\00"}
!86 = !{i64 147, [11 x i8] c"\09popq\09%rbx\00"}
!87 = !{i64 148, [11 x i8] c"\09popq\09%rbp\00"}
!88 = !{i64 149, [6 x i8] c"\09retq\00"}
!89 = !{i64 81, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!90 = !{i64 85, [24 x i8] c"\09movslq\09-72(%rbp), %rcx\00"}
!91 = !{i64 89, [26 x i8] c"\09movl\09(%rax,%rcx,4), %edx\00"}
!92 = !{i64 92, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!93 = !{i64 96, [24 x i8] c"\09movslq\09-72(%rbp), %rcx\00"}
!94 = !{i64 100, [26 x i8] c"\09subl\09(%rax,%rcx,4), %edx\00"}
!95 = !{i64 103, [22 x i8] c"\09addl\09-68(%rbp), %edx\00"}
!96 = !{i64 106, [22 x i8] c"\09movl\09%edx, -68(%rbp)\00"}
!97 = !{i64 109, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!98 = !{i64 112, [15 x i8] c"\09addl\09$1, %eax\00"}
!99 = !{i64 115, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
