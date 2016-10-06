; ModuleID = 'Output/test_26_1.clang.trans.bc'
source_filename = "Output/test_26_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_80(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 96
  %_RBP_ptr_ = alloca i8*, i64 96
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
  %114 = load i64, i64* %RAX_val, !mcsema_real_eip !12
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !12
  %116 = bitcast i64* %115 to i32*
  store i32 5, i32* %116, !mcsema_real_eip !12
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %118 = add i64 %117, -24, !mcsema_real_eip !13
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !13
  %120 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !13
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !13
  %121 = add i64 %120, 4, !mcsema_real_eip !14
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = bitcast i64* %122 to i32*
  store i32 5, i32* %123, !mcsema_real_eip !14
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %125 = add i64 %124, -24, !mcsema_real_eip !15
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !15
  %127 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !15
  store i64 %127, i64* %RAX_val, !mcsema_real_eip !15
  %128 = add i64 %127, 8, !mcsema_real_eip !16
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !16
  %130 = bitcast i64* %129 to i32*
  store i32 5, i32* %130, !mcsema_real_eip !16
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %132 = add i64 %131, -24, !mcsema_real_eip !17
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !17
  %134 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !17
  %_load_rsp_ptr_26 = load i8*, i8** %_RSP_ptr_
  %135 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_new_ptr2int_27 = ptrtoint i8* %_load_rsp_ptr_26 to i64
  store volatile i64 %_new_ptr2int_27, i64* %RDI_val
  %_new_gep_28 = getelementptr i8, i8* %_load_rsp_ptr_26, i64 8
  %136 = add i64 %135, 8, !mcsema_real_eip !19
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !19
  store i64 %134, i64* %_allin_new_bt_29, !mcsema_real_eip !19
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -16
  %139 = add i64 %138, -16, !mcsema_real_eip !20
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !20
  %141 = ptrtoint i64* %_allin_new_bt_32 to i64, !mcsema_real_eip !20
  store i64 %141, i64* %RAX_val, !mcsema_real_eip !20
  %142 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !21
  store i64 %141, i64* %143, !mcsema_real_eip !21
  store i64 1, i64* %RCX_val, !mcsema_real_eip !22
  store i64 2, i64* %RDX_val, !mcsema_real_eip !23
  store i64 1, i64* %RDI_val, !mcsema_real_eip !24
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -60
  %145 = add i64 %144, -60, !mcsema_real_eip !25
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !25
  %147 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 3, i32* %147, !mcsema_real_eip !25
  %148 = load i64, i64* %RDX_val, !mcsema_real_eip !26
  %149 = and i64 %148, 4294967295
  store i64 %149, i64* %RSI_val, !mcsema_real_eip !26
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -60
  %151 = add i64 %150, -60, !mcsema_real_eip !27
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !27
  %153 = bitcast i64* %_allin_new_bt_38 to i32*
  %154 = load i32, i32* %153, !mcsema_real_eip !27
  %155 = zext i32 %154 to i64, !mcsema_real_eip !27
  store i64 %155, i64* %R8_val, !mcsema_real_eip !27
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -64
  %157 = add i64 %156, -64, !mcsema_real_eip !28
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !28
  %159 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %160 = trunc i64 %159 to i32, !mcsema_real_eip !28
  %161 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %160, i32* %161, !mcsema_real_eip !28
  %162 = load i64, i64* %R8_val, !mcsema_real_eip !29
  %163 = and i64 %162, 4294967295
  store i64 %163, i64* %RDX_val, !mcsema_real_eip !29
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -64
  %165 = add i64 %164, -64, !mcsema_real_eip !30
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !30
  %167 = bitcast i64* %_allin_new_bt_44 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !30
  %169 = zext i32 %168 to i64, !mcsema_real_eip !30
  store i64 %169, i64* %R8_val, !mcsema_real_eip !30
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -60
  %171 = add i64 %170, -60, !mcsema_real_eip !31
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !31
  %173 = bitcast i64* %_allin_new_bt_47 to i32*
  %174 = load i32, i32* %173, !mcsema_real_eip !31
  %175 = zext i32 %174 to i64, !mcsema_real_eip !31
  store i64 %175, i64* %R9_val, !mcsema_real_eip !31
  %_load_rsp_ptr_48 = load i8*, i8** %_RSP_ptr_
  %176 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %_new_gep_49 = getelementptr i8, i8* %_load_rsp_ptr_48, i64 -8
  %177 = add i64 %176, -8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !32
  store i64 -4981261766360305936, i64* %_allin_new_bt_50, !mcsema_real_eip !32
  store volatile i8* %_new_gep_49, i8** %_RSP_ptr_
  store i64 %177, i64* %RSP_val, !mcsema_real_eip !32
  %179 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  store i64 %179, i64* %RAX, !mcsema_real_eip !32
  %180 = load i64, i64* %RBX_val, !mcsema_real_eip !32
  store i64 %180, i64* %RBX, !mcsema_real_eip !32
  %181 = load i64, i64* %RCX_val, !mcsema_real_eip !32
  store i64 %181, i64* %RCX, !mcsema_real_eip !32
  %182 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  store i64 %182, i64* %RDX, !mcsema_real_eip !32
  %183 = load i64, i64* %RSI_val, !mcsema_real_eip !32
  store i64 %183, i64* %RSI, !mcsema_real_eip !32
  %184 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  store i64 %184, i64* %RDI, !mcsema_real_eip !32
  %_load_rsp_ptr_51 = load i8*, i8** %_RSP_ptr_
  %185 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %_new_ptr2int_52 = ptrtoint i8* %_load_rsp_ptr_51 to i64
  store volatile i64 %_new_ptr2int_52, i64* %RSP
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_ptr2int_54 = ptrtoint i8* %_load_rbp_ptr_53 to i64
  store volatile i64 %_new_ptr2int_54, i64* %RBP
  %187 = load i64, i64* %R8_val, !mcsema_real_eip !32
  store i64 %187, i64* %R8, !mcsema_real_eip !32
  %188 = load i64, i64* %R9_val, !mcsema_real_eip !32
  store i64 %188, i64* %R9, !mcsema_real_eip !32
  %189 = load i64, i64* %R10_val, !mcsema_real_eip !32
  store i64 %189, i64* %R10, !mcsema_real_eip !32
  %190 = load i64, i64* %R11_val, !mcsema_real_eip !32
  store i64 %190, i64* %R11, !mcsema_real_eip !32
  %191 = load i64, i64* %R12_val, !mcsema_real_eip !32
  store i64 %191, i64* %R12, !mcsema_real_eip !32
  %192 = load i64, i64* %R13_val, !mcsema_real_eip !32
  store i64 %192, i64* %R13, !mcsema_real_eip !32
  %193 = load i64, i64* %R14_val, !mcsema_real_eip !32
  store i64 %193, i64* %R14, !mcsema_real_eip !32
  %194 = load i64, i64* %R15_val, !mcsema_real_eip !32
  store i64 %194, i64* %R15, !mcsema_real_eip !32
  %195 = load i64, i64* %RIP_val, !mcsema_real_eip !32
  store i64 %195, i64* %RIP, !mcsema_real_eip !32
  %196 = load i1, i1* %CF_val, !mcsema_real_eip !32
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !32
  %197 = load i1, i1* %PF_val, !mcsema_real_eip !32
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !32
  %198 = load i1, i1* %AF_val, !mcsema_real_eip !32
  store i1 %198, i1* %AF, align 1, !mcsema_real_eip !32
  %199 = load i1, i1* %ZF_val, !mcsema_real_eip !32
  store i1 %199, i1* %ZF, align 1, !mcsema_real_eip !32
  %200 = load i1, i1* %SF_val, !mcsema_real_eip !32
  store i1 %200, i1* %SF, align 1, !mcsema_real_eip !32
  %201 = load i1, i1* %OF_val, !mcsema_real_eip !32
  store i1 %201, i1* %OF, align 1, !mcsema_real_eip !32
  %202 = load i1, i1* %DF_val, !mcsema_real_eip !32
  store i1 %202, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %203 = load i1, i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %203, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %204 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %204, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %205 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %205, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %206 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %206, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %207 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %207, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %208 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %208, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %209 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %209, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %210 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %210, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %211 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %211, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %212 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %212, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %213 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %213, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %214 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %214, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %215 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %215, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %216 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %216, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %217 = load i1, i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %217, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %218 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %218, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %219 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %219, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %220 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %220, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %221 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %221, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %222 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %222, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %223 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %223, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %224 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %224, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %225 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %225, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %226 = load i64, i64* %53, align 4
  store i64 %226, i64* %52, align 4
  %227 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %227, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %228 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %228, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %229 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %229, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %230 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %230, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %231 = load i128, i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %231, i128* %XMM0, align 1, !mcsema_real_eip !32
  %232 = load i128, i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %232, i128* %XMM1, align 1, !mcsema_real_eip !32
  %233 = load i128, i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %233, i128* %XMM2, align 1, !mcsema_real_eip !32
  %234 = load i128, i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %234, i128* %XMM3, align 1, !mcsema_real_eip !32
  %235 = load i128, i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %235, i128* %XMM4, align 1, !mcsema_real_eip !32
  %236 = load i128, i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %236, i128* %XMM5, align 1, !mcsema_real_eip !32
  %237 = load i128, i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %237, i128* %XMM6, align 1, !mcsema_real_eip !32
  %238 = load i128, i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %238, i128* %XMM7, align 1, !mcsema_real_eip !32
  %239 = load i128, i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %239, i128* %XMM8, align 1, !mcsema_real_eip !32
  %240 = load i128, i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %240, i128* %XMM9, align 1, !mcsema_real_eip !32
  %241 = load i128, i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %241, i128* %XMM10, align 1, !mcsema_real_eip !32
  %242 = load i128, i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %242, i128* %XMM11, align 1, !mcsema_real_eip !32
  %243 = load i128, i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %243, i128* %XMM12, align 1, !mcsema_real_eip !32
  %244 = load i128, i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %244, i128* %XMM13, align 1, !mcsema_real_eip !32
  %245 = load i128, i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %245, i128* %XMM14, align 1, !mcsema_real_eip !32
  %246 = load i128, i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %246, i128* %XMM15, align 1, !mcsema_real_eip !32
  %247 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %247, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %248 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %248, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_90)
  %249 = load i64, i64* %RAX, !mcsema_real_eip !32
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !32
  %250 = load i64, i64* %RBX, !mcsema_real_eip !32
  store i64 %250, i64* %RBX_val, !mcsema_real_eip !32
  %251 = load i64, i64* %RCX, !mcsema_real_eip !32
  store i64 %251, i64* %RCX_val, !mcsema_real_eip !32
  %252 = load i64, i64* %RDX, !mcsema_real_eip !32
  store i64 %252, i64* %RDX_val, !mcsema_real_eip !32
  %253 = load i64, i64* %RSI, !mcsema_real_eip !32
  store i64 %253, i64* %RSI_val, !mcsema_real_eip !32
  %254 = load i64, i64* %RDI, !mcsema_real_eip !32
  store i64 %254, i64* %RDI_val, !mcsema_real_eip !32
  %255 = load i64, i64* %RSP, !mcsema_real_eip !32
  store i64 %255, i64* %RSP_val, !mcsema_real_eip !32
  %256 = load i64, i64* %RBP, !mcsema_real_eip !32
  store i64 %256, i64* %RBP_val, !mcsema_real_eip !32
  %257 = load i64, i64* %R8, !mcsema_real_eip !32
  store i64 %257, i64* %R8_val, !mcsema_real_eip !32
  %258 = load i64, i64* %R9, !mcsema_real_eip !32
  store i64 %258, i64* %R9_val, !mcsema_real_eip !32
  %259 = load i64, i64* %R10, !mcsema_real_eip !32
  store i64 %259, i64* %R10_val, !mcsema_real_eip !32
  %260 = load i64, i64* %R11, !mcsema_real_eip !32
  store i64 %260, i64* %R11_val, !mcsema_real_eip !32
  %261 = load i64, i64* %R12, !mcsema_real_eip !32
  store i64 %261, i64* %R12_val, !mcsema_real_eip !32
  %262 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %262, i64* %R13_val, !mcsema_real_eip !32
  %263 = load i64, i64* %R14, !mcsema_real_eip !32
  store i64 %263, i64* %R14_val, !mcsema_real_eip !32
  %264 = load i64, i64* %R15, !mcsema_real_eip !32
  store i64 %264, i64* %R15_val, !mcsema_real_eip !32
  %265 = load i64, i64* %RIP, !mcsema_real_eip !32
  store i64 %265, i64* %RIP_val, !mcsema_real_eip !32
  %266 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %266, i1* %CF_val, !mcsema_real_eip !32
  %267 = load i1, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %267, i1* %PF_val, !mcsema_real_eip !32
  %268 = load i1, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %268, i1* %AF_val, !mcsema_real_eip !32
  %269 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !32
  %270 = load i1, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %270, i1* %SF_val, !mcsema_real_eip !32
  %271 = load i1, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %271, i1* %OF_val, !mcsema_real_eip !32
  %272 = load i1, i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %272, i1* %DF_val, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %273 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %273, i1* %FPU_B_val, !mcsema_real_eip !32
  %274 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %274, i1* %FPU_C3_val, !mcsema_real_eip !32
  %275 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %275, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %276 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %276, i1* %FPU_C2_val, !mcsema_real_eip !32
  %277 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %277, i1* %FPU_C1_val, !mcsema_real_eip !32
  %278 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %278, i1* %FPU_C0_val, !mcsema_real_eip !32
  %279 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %279, i1* %FPU_ES_val, !mcsema_real_eip !32
  %280 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %280, i1* %FPU_SF_val, !mcsema_real_eip !32
  %281 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %281, i1* %FPU_PE_val, !mcsema_real_eip !32
  %282 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %282, i1* %FPU_UE_val, !mcsema_real_eip !32
  %283 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %283, i1* %FPU_OE_val, !mcsema_real_eip !32
  %284 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %284, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %285 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %285, i1* %FPU_DE_val, !mcsema_real_eip !32
  %286 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %286, i1* %FPU_IE_val, !mcsema_real_eip !32
  %287 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %287, i1* %FPU_X_val, !mcsema_real_eip !32
  %288 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %288, i2* %FPU_RC_val, !mcsema_real_eip !32
  %289 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %289, i2* %FPU_PC_val, !mcsema_real_eip !32
  %290 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %290, i1* %FPU_PM_val, !mcsema_real_eip !32
  %291 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %291, i1* %FPU_UM_val, !mcsema_real_eip !32
  %292 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %292, i1* %FPU_OM_val, !mcsema_real_eip !32
  %293 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %293, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %294 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %294, i1* %FPU_DM_val, !mcsema_real_eip !32
  %295 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %295, i1* %FPU_IM_val, !mcsema_real_eip !32
  %296 = load i64, i64* %52, align 4
  store i64 %296, i64* %53, align 4
  %297 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %297, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %298 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %298, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %299 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %299, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %300 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %300, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %301 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %301, i128* %XMM0_val, !mcsema_real_eip !32
  %302 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %302, i128* %XMM1_val, !mcsema_real_eip !32
  %303 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %303, i128* %XMM2_val, !mcsema_real_eip !32
  %304 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %304, i128* %XMM3_val, !mcsema_real_eip !32
  %305 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %305, i128* %XMM4_val, !mcsema_real_eip !32
  %306 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %306, i128* %XMM5_val, !mcsema_real_eip !32
  %307 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %307, i128* %XMM6_val, !mcsema_real_eip !32
  %308 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %308, i128* %XMM7_val, !mcsema_real_eip !32
  %309 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %309, i128* %XMM8_val, !mcsema_real_eip !32
  %310 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %310, i128* %XMM9_val, !mcsema_real_eip !32
  %311 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %311, i128* %XMM10_val, !mcsema_real_eip !32
  %312 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %312, i128* %XMM11_val, !mcsema_real_eip !32
  %313 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %313, i128* %XMM12_val, !mcsema_real_eip !32
  %314 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %314, i128* %XMM13_val, !mcsema_real_eip !32
  %315 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %315, i128* %XMM14_val, !mcsema_real_eip !32
  %316 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %316, i128* %XMM15_val, !mcsema_real_eip !32
  %317 = load i64, i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %317, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %318 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %318, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -48
  %320 = add i64 %319, -48, !mcsema_real_eip !33
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !33
  %322 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  %323 = trunc i64 %322 to i32, !mcsema_real_eip !33
  %324 = bitcast i64* %_allin_new_bt_57 to i32*
  store i32 %323, i32* %324, !mcsema_real_eip !33
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -56
  %326 = add i64 %325, -56, !mcsema_real_eip !34
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !34
  %328 = load i64, i64* %RAX_val, !mcsema_real_eip !34
  store i64 %328, i64* %_allin_new_bt_60, !mcsema_real_eip !34
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %329 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -56
  %330 = add i64 %329, -56, !mcsema_real_eip !35
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !35
  %332 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !35
  store i64 %332, i64* %RAX_val, !mcsema_real_eip !35
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -40
  %333 = add i64 %329, -40, !mcsema_real_eip !36
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !36
  store i64 %332, i64* %_allin_new_bt_65, !mcsema_real_eip !36
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %335 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -48
  %336 = add i64 %335, -48, !mcsema_real_eip !37
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !37
  %338 = bitcast i64* %_allin_new_bt_68 to i32*
  %339 = load i32, i32* %338, !mcsema_real_eip !37
  %340 = zext i32 %339 to i64, !mcsema_real_eip !37
  store i64 %340, i64* %RCX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %341 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -32
  %342 = add i64 %341, -32, !mcsema_real_eip !38
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !38
  %344 = bitcast i64* %_allin_new_bt_71 to i32*
  store i32 %339, i32* %344, !mcsema_real_eip !38
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -40
  %346 = add i64 %345, -40, !mcsema_real_eip !39
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !39
  %348 = bitcast i64* %_allin_new_bt_74 to i32*
  %349 = load i32, i32* %348, !mcsema_real_eip !39
  %350 = zext i32 %349 to i64, !mcsema_real_eip !39
  store i64 %350, i64* %RCX_val, !mcsema_real_eip !39
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -36
  %352 = add i64 %351, -36, !mcsema_real_eip !40
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !40
  %354 = bitcast i64* %_allin_new_bt_77 to i32*
  %355 = load i32, i32* %354, !mcsema_real_eip !40
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %349, i32 %355)
  %356 = extractvalue { i32, i1 } %uadd, 0
  %357 = xor i32 %356, %355, !mcsema_real_eip !40
  %358 = xor i32 %357, %349, !mcsema_real_eip !40
  %359 = and i32 %358, 16, !mcsema_real_eip !40
  %360 = icmp ne i32 %359, 0, !mcsema_real_eip !40
  store i1 %360, i1* %AF_val, !mcsema_real_eip !40
  %361 = icmp slt i32 %356, 0
  store i1 %361, i1* %SF_val, !mcsema_real_eip !40
  %362 = icmp eq i32 %356, 0, !mcsema_real_eip !40
  store i1 %362, i1* %ZF_val, !mcsema_real_eip !40
  %363 = xor i32 %349, -2147483648, !mcsema_real_eip !40
  %364 = xor i32 %363, %355, !mcsema_real_eip !40
  %365 = and i32 %357, %364, !mcsema_real_eip !40
  %366 = icmp slt i32 %365, 0
  store i1 %366, i1* %OF_val, !mcsema_real_eip !40
  %367 = trunc i32 %356 to i8, !mcsema_real_eip !40
  %368 = tail call i8 @llvm.ctpop.i8(i8 %367), !mcsema_real_eip !40
  %369 = and i8 %368, 1
  %370 = icmp eq i8 %369, 0
  store i1 %370, i1* %PF_val, !mcsema_real_eip !40
  %371 = extractvalue { i32, i1 } %uadd, 1
  store i1 %371, i1* %CF_val, !mcsema_real_eip !40
  %372 = zext i32 %356 to i64, !mcsema_real_eip !40
  store i64 %372, i64* %RCX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -32
  %374 = add i64 %373, -32, !mcsema_real_eip !41
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !41
  %376 = bitcast i64* %_allin_new_bt_80 to i32*
  %377 = load i32, i32* %376, !mcsema_real_eip !41
  %378 = add i32 %356, %377
  %379 = zext i32 %378 to i64, !mcsema_real_eip !41
  store i64 %379, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rsp_ptr_81 = load i8*, i8** %_RSP_ptr_
  %380 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_81, i64 80
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %380, i64 80)
  %381 = extractvalue { i64, i1 } %uadd210, 0
  %382 = xor i64 %381, %380, !mcsema_real_eip !43
  %383 = and i64 %382, 16
  %384 = icmp eq i64 %383, 0
  store i1 %384, i1* %AF_val, !mcsema_real_eip !43
  %385 = icmp slt i64 %381, 0
  store i1 %385, i1* %SF_val, !mcsema_real_eip !43
  %386 = icmp eq i64 %381, 0, !mcsema_real_eip !43
  store i1 %386, i1* %ZF_val, !mcsema_real_eip !43
  %387 = xor i64 %380, -9223372036854775808, !mcsema_real_eip !43
  %388 = and i64 %382, %387, !mcsema_real_eip !43
  %389 = icmp slt i64 %388, 0
  store i1 %389, i1* %OF_val, !mcsema_real_eip !43
  %390 = trunc i64 %381 to i8, !mcsema_real_eip !43
  %391 = tail call i8 @llvm.ctpop.i8(i8 %390), !mcsema_real_eip !43
  %392 = and i8 %391, 1
  %393 = icmp eq i8 %392, 0
  store i1 %393, i1* %PF_val, !mcsema_real_eip !43
  %394 = extractvalue { i64, i1 } %uadd210, 1
  %_new_ptr2int_83 = ptrtoint i8* %_new_gep_82 to i1
  store volatile i1 %_new_ptr2int_83, i1* %CF_val
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %381, i64* %RSP_val, !mcsema_real_eip !43
  %_allin_new_bt_84 = bitcast i8* %_new_gep_82 to i64*
  %395 = inttoptr i64 %381 to i64*, !mcsema_real_eip !44
  %396 = load i64, i64* %_allin_new_bt_84, !mcsema_real_eip !44
  %_new_int2ptr_ = inttoptr i64 %396 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %396, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_82, i64 16
  %397 = add i64 %381, 16, !mcsema_real_eip !45
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %397, i64* %RSP_val, !mcsema_real_eip !45
  %398 = load i64, i64* %RAX_val, !mcsema_real_eip !45
  store i64 %398, i64* %RAX, !mcsema_real_eip !45
  %399 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %399, i64* %RBX, !mcsema_real_eip !45
  %400 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  store i64 %400, i64* %RCX, !mcsema_real_eip !45
  %401 = load i64, i64* %RDX_val, !mcsema_real_eip !45
  store i64 %401, i64* %RDX, !mcsema_real_eip !45
  %402 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %402, i64* %RSI, !mcsema_real_eip !45
  %403 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  store i64 %403, i64* %RDI, !mcsema_real_eip !45
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %404 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %_new_ptr2int_87 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  store volatile i64 %_new_ptr2int_87, i64* %RSP
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %405 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_ptr2int_89 = ptrtoint i8* %_load_rbp_ptr_88 to i64
  store volatile i64 %_new_ptr2int_89, i64* %RBP
  %406 = load i64, i64* %R8_val, !mcsema_real_eip !45
  store i64 %406, i64* %R8, !mcsema_real_eip !45
  %407 = load i64, i64* %R9_val, !mcsema_real_eip !45
  store i64 %407, i64* %R9, !mcsema_real_eip !45
  %408 = load i64, i64* %R10_val, !mcsema_real_eip !45
  store i64 %408, i64* %R10, !mcsema_real_eip !45
  %409 = load i64, i64* %R11_val, !mcsema_real_eip !45
  store i64 %409, i64* %R11, !mcsema_real_eip !45
  %410 = load i64, i64* %R12_val, !mcsema_real_eip !45
  store i64 %410, i64* %R12, !mcsema_real_eip !45
  %411 = load i64, i64* %R13_val, !mcsema_real_eip !45
  store i64 %411, i64* %R13, !mcsema_real_eip !45
  %412 = load i64, i64* %R14_val, !mcsema_real_eip !45
  store i64 %412, i64* %R14, !mcsema_real_eip !45
  %413 = load i64, i64* %R15_val, !mcsema_real_eip !45
  store i64 %413, i64* %R15, !mcsema_real_eip !45
  %414 = load i64, i64* %RIP_val, !mcsema_real_eip !45
  store i64 %414, i64* %RIP, !mcsema_real_eip !45
  %415 = load i1, i1* %CF_val, !mcsema_real_eip !45
  store i1 %415, i1* %CF, align 1, !mcsema_real_eip !45
  %416 = load i1, i1* %PF_val, !mcsema_real_eip !45
  store i1 %416, i1* %PF, align 1, !mcsema_real_eip !45
  %417 = load i1, i1* %AF_val, !mcsema_real_eip !45
  store i1 %417, i1* %AF, align 1, !mcsema_real_eip !45
  %418 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  store i1 %418, i1* %ZF, align 1, !mcsema_real_eip !45
  %419 = load i1, i1* %SF_val, !mcsema_real_eip !45
  store i1 %419, i1* %SF, align 1, !mcsema_real_eip !45
  %420 = load i1, i1* %OF_val, !mcsema_real_eip !45
  store i1 %420, i1* %OF, align 1, !mcsema_real_eip !45
  %421 = load i1, i1* %DF_val, !mcsema_real_eip !45
  store i1 %421, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  %422 = load i1, i1* %FPU_B_val, !mcsema_real_eip !45
  store i1 %422, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %423 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !45
  store i1 %423, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %424 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !45
  store i3 %424, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %425 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !45
  store i1 %425, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %426 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !45
  store i1 %426, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %427 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !45
  store i1 %427, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %428 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !45
  store i1 %428, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %429 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !45
  store i1 %429, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %430 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !45
  store i1 %430, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %431 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !45
  store i1 %431, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %432 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !45
  store i1 %432, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %433 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !45
  store i1 %433, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %434 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !45
  store i1 %434, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %435 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !45
  store i1 %435, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %436 = load i1, i1* %FPU_X_val, !mcsema_real_eip !45
  store i1 %436, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %437 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !45
  store i2 %437, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %438 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !45
  store i2 %438, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %439 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !45
  store i1 %439, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %440 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !45
  store i1 %440, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %441 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !45
  store i1 %441, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %442 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !45
  store i1 %442, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %443 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !45
  store i1 %443, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %444 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !45
  store i1 %444, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %445 = load i64, i64* %53, align 4
  store i64 %445, i64* %52, align 4
  %446 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  store i16 %446, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %447 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  store i64 %447, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  %448 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  store i16 %448, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %449 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  store i64 %449, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  %450 = load i128, i128* %XMM0_val, !mcsema_real_eip !45
  store i128 %450, i128* %XMM0, align 1, !mcsema_real_eip !45
  %451 = load i128, i128* %XMM1_val, !mcsema_real_eip !45
  store i128 %451, i128* %XMM1, align 1, !mcsema_real_eip !45
  %452 = load i128, i128* %XMM2_val, !mcsema_real_eip !45
  store i128 %452, i128* %XMM2, align 1, !mcsema_real_eip !45
  %453 = load i128, i128* %XMM3_val, !mcsema_real_eip !45
  store i128 %453, i128* %XMM3, align 1, !mcsema_real_eip !45
  %454 = load i128, i128* %XMM4_val, !mcsema_real_eip !45
  store i128 %454, i128* %XMM4, align 1, !mcsema_real_eip !45
  %455 = load i128, i128* %XMM5_val, !mcsema_real_eip !45
  store i128 %455, i128* %XMM5, align 1, !mcsema_real_eip !45
  %456 = load i128, i128* %XMM6_val, !mcsema_real_eip !45
  store i128 %456, i128* %XMM6, align 1, !mcsema_real_eip !45
  %457 = load i128, i128* %XMM7_val, !mcsema_real_eip !45
  store i128 %457, i128* %XMM7, align 1, !mcsema_real_eip !45
  %458 = load i128, i128* %XMM8_val, !mcsema_real_eip !45
  store i128 %458, i128* %XMM8, align 1, !mcsema_real_eip !45
  %459 = load i128, i128* %XMM9_val, !mcsema_real_eip !45
  store i128 %459, i128* %XMM9, align 1, !mcsema_real_eip !45
  %460 = load i128, i128* %XMM10_val, !mcsema_real_eip !45
  store i128 %460, i128* %XMM10, align 1, !mcsema_real_eip !45
  %461 = load i128, i128* %XMM11_val, !mcsema_real_eip !45
  store i128 %461, i128* %XMM11, align 1, !mcsema_real_eip !45
  %462 = load i128, i128* %XMM12_val, !mcsema_real_eip !45
  store i128 %462, i128* %XMM12, align 1, !mcsema_real_eip !45
  %463 = load i128, i128* %XMM13_val, !mcsema_real_eip !45
  store i128 %463, i128* %XMM13, align 1, !mcsema_real_eip !45
  %464 = load i128, i128* %XMM14_val, !mcsema_real_eip !45
  store i128 %464, i128* %XMM14, align 1, !mcsema_real_eip !45
  %465 = load i128, i128* %XMM15_val, !mcsema_real_eip !45
  store i128 %465, i128* %XMM15, align 1, !mcsema_real_eip !45
  %466 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !45
  store i64 %466, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  %467 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  store i64 %467, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  ret void, !mcsema_real_eip !45
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 96
  %_RBP_ptr_ = alloca i8*, i64 96
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !46
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !46
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !46
  %XMM15_val = alloca i128, !mcsema_real_eip !46
  %XMM14_val = alloca i128, !mcsema_real_eip !46
  %XMM13_val = alloca i128, !mcsema_real_eip !46
  %XMM12_val = alloca i128, !mcsema_real_eip !46
  %XMM11_val = alloca i128, !mcsema_real_eip !46
  %XMM10_val = alloca i128, !mcsema_real_eip !46
  %XMM9_val = alloca i128, !mcsema_real_eip !46
  %XMM8_val = alloca i128, !mcsema_real_eip !46
  %XMM7_val = alloca i128, !mcsema_real_eip !46
  %XMM6_val = alloca i128, !mcsema_real_eip !46
  %XMM5_val = alloca i128, !mcsema_real_eip !46
  %XMM4_val = alloca i128, !mcsema_real_eip !46
  %XMM3_val = alloca i128, !mcsema_real_eip !46
  %XMM2_val = alloca i128, !mcsema_real_eip !46
  %XMM1_val = alloca i128, !mcsema_real_eip !46
  %XMM0_val = alloca i128, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !46
  %FPU_IM_val = alloca i1, !mcsema_real_eip !46
  %FPU_DM_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !46
  %FPU_OM_val = alloca i1, !mcsema_real_eip !46
  %FPU_UM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PC_val = alloca i2, !mcsema_real_eip !46
  %FPU_RC_val = alloca i2, !mcsema_real_eip !46
  %FPU_X_val = alloca i1, !mcsema_real_eip !46
  %FPU_IE_val = alloca i1, !mcsema_real_eip !46
  %FPU_DE_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !46
  %FPU_OE_val = alloca i1, !mcsema_real_eip !46
  %FPU_UE_val = alloca i1, !mcsema_real_eip !46
  %FPU_PE_val = alloca i1, !mcsema_real_eip !46
  %FPU_SF_val = alloca i1, !mcsema_real_eip !46
  %FPU_ES_val = alloca i1, !mcsema_real_eip !46
  %FPU_C0_val = alloca i1, !mcsema_real_eip !46
  %FPU_C1_val = alloca i1, !mcsema_real_eip !46
  %FPU_C2_val = alloca i1, !mcsema_real_eip !46
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !46
  %FPU_C3_val = alloca i1, !mcsema_real_eip !46
  %FPU_B_val = alloca i1, !mcsema_real_eip !46
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !46
  %DF_val = alloca i1, !mcsema_real_eip !46
  %OF_val = alloca i1, !mcsema_real_eip !46
  %SF_val = alloca i1, !mcsema_real_eip !46
  %CF_val = alloca i1, !mcsema_real_eip !46
  %AF_val = alloca i1, !mcsema_real_eip !46
  %PF_val = alloca i1, !mcsema_real_eip !46
  %ZF_val = alloca i1, !mcsema_real_eip !46
  %RIP_val = alloca i64, !mcsema_real_eip !46
  %R14_val = alloca i64, !mcsema_real_eip !46
  %R13_val = alloca i64, !mcsema_real_eip !46
  %R12_val = alloca i64, !mcsema_real_eip !46
  %R11_val = alloca i64, !mcsema_real_eip !46
  %R10_val = alloca i64, !mcsema_real_eip !46
  %R9_val = alloca i64, !mcsema_real_eip !46
  %R8_val = alloca i64, !mcsema_real_eip !46
  %RSP_val = alloca i64, !mcsema_real_eip !46
  %RBP_val = alloca i64, !mcsema_real_eip !46
  %RDI_val = alloca i64, !mcsema_real_eip !46
  %RSI_val = alloca i64, !mcsema_real_eip !46
  %RDX_val = alloca i64, !mcsema_real_eip !46
  %RCX_val = alloca i64, !mcsema_real_eip !46
  %RBX_val = alloca i64, !mcsema_real_eip !46
  %RAX_val = alloca i64, !mcsema_real_eip !46
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !46
  %1 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !46
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !46
  %2 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !46
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !46
  %3 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !46
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !46
  %4 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !46
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !46
  %5 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !46
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !46
  %6 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !46
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !46
  %7 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !46
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !46
  %8 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !46
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !46
  %9 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %9, i64* %R8_val, !mcsema_real_eip !46
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !46
  %10 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %10, i64* %R9_val, !mcsema_real_eip !46
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !46
  %11 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %11, i64* %R10_val, !mcsema_real_eip !46
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !46
  %12 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %12, i64* %R11_val, !mcsema_real_eip !46
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !46
  %13 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %13, i64* %R12_val, !mcsema_real_eip !46
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !46
  %14 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %14, i64* %R13_val, !mcsema_real_eip !46
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !46
  %15 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %15, i64* %R14_val, !mcsema_real_eip !46
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !46
  %16 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %16, i64* %R15_val, !mcsema_real_eip !46
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !46
  %17 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !46
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !46
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %18, i1* %CF_val, !mcsema_real_eip !46
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !46
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %PF_val, !mcsema_real_eip !46
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !46
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %20, i1* %AF_val, !mcsema_real_eip !46
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !46
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !46
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !46
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %SF_val, !mcsema_real_eip !46
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !46
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %OF_val, !mcsema_real_eip !46
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !46
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %DF_val, !mcsema_real_eip !46
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !46
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !46
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !46
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !46
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !46
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !46
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !46
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !46
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !46
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !46
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !46
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !46
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !46
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !46
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !46
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !46
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !46
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !46
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !46
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !46
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !46
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !46
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !46
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !46
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !46
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !46
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !46
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !46
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !46
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !46
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !46
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !46
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !46
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !46
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !46
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !46
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !46
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !46
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !46
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !46
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !46
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !46
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !46
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !46
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !46
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !46
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !46
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !46
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !46
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !46
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !46
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %79 = add i64 %78, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !46
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !46
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %81 = add i64 %78, 16, !mcsema_real_eip !48
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !48
  %83 = load i64, i64* %_allin_new_bt_2, !mcsema_real_eip !48
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !48
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %84 = add i64 %78, 8, !mcsema_real_eip !49
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !49
  %86 = load i64, i64* %_allin_new_bt_4, !mcsema_real_eip !49
  store i64 %86, i64* %R10_val, !mcsema_real_eip !49
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -20
  %88 = add i64 %87, -20, !mcsema_real_eip !50
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !50
  %90 = load i64, i64* %RDI_val, !mcsema_real_eip !50
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !50
  %92 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !50
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %94 = add i64 %93, -24, !mcsema_real_eip !51
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !51
  %96 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !51
  %98 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !51
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -28
  %100 = add i64 %99, -28, !mcsema_real_eip !52
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !52
  %102 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !52
  %104 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !52
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %106 = add i64 %105, -32, !mcsema_real_eip !53
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !53
  %110 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !53
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -36
  %112 = add i64 %111, -36, !mcsema_real_eip !54
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !54
  %114 = load i64, i64* %R8_val, !mcsema_real_eip !54
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !54
  %116 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !54
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -40
  %118 = add i64 %117, -40, !mcsema_real_eip !55
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !55
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !55
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !55
  %122 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !55
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -48
  %124 = add i64 %123, -48, !mcsema_real_eip !56
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !56
  %126 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %126, i64* %_allin_new_bt_25, !mcsema_real_eip !56
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -56
  %128 = add i64 %127, -56, !mcsema_real_eip !57
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !57
  %130 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %130, i64* %_allin_new_bt_28, !mcsema_real_eip !57
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -48
  %132 = add i64 %131, -48, !mcsema_real_eip !58
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !58
  %134 = load i64, i64* %_allin_new_bt_31, !mcsema_real_eip !58
  store i64 %134, i64* %R10_val, !mcsema_real_eip !58
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !59
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !59
  %138 = zext i32 %137 to i64, !mcsema_real_eip !59
  store i64 %138, i64* %RCX_val, !mcsema_real_eip !59
  %139 = load i64, i64* %RAX_val, !mcsema_real_eip !60
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !60
  %141 = bitcast i64* %140 to i32*
  %142 = load i32, i32* %141, !mcsema_real_eip !60
  %143 = zext i32 %142 to i64, !mcsema_real_eip !60
  store i64 %143, i64* %RDX_val, !mcsema_real_eip !60
  %144 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %145 = trunc i64 %144 to i32, !mcsema_real_eip !61
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %142, i32 %145)
  %146 = extractvalue { i32, i1 } %uadd, 0
  %147 = xor i32 %146, %145, !mcsema_real_eip !61
  %148 = xor i32 %147, %142, !mcsema_real_eip !61
  %149 = and i32 %148, 16, !mcsema_real_eip !61
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !61
  store i1 %150, i1* %AF_val, !mcsema_real_eip !61
  %151 = icmp slt i32 %146, 0
  store i1 %151, i1* %SF_val, !mcsema_real_eip !61
  %152 = icmp eq i32 %146, 0, !mcsema_real_eip !61
  store i1 %152, i1* %ZF_val, !mcsema_real_eip !61
  %153 = xor i32 %142, -2147483648, !mcsema_real_eip !61
  %154 = xor i32 %153, %145, !mcsema_real_eip !61
  %155 = and i32 %147, %154, !mcsema_real_eip !61
  %156 = icmp slt i32 %155, 0
  store i1 %156, i1* %OF_val, !mcsema_real_eip !61
  %157 = trunc i32 %146 to i8, !mcsema_real_eip !61
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !61
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !61
  %161 = extractvalue { i32, i1 } %uadd, 1
  store i1 %161, i1* %CF_val, !mcsema_real_eip !61
  %162 = zext i32 %146 to i64, !mcsema_real_eip !61
  store i64 %162, i64* %RCX_val, !mcsema_real_eip !61
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -72
  %164 = add i64 %163, -72, !mcsema_real_eip !62
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !62
  %166 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %146, i32* %166, !mcsema_real_eip !62
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -48
  %168 = add i64 %167, -48, !mcsema_real_eip !63
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !63
  %170 = load i64, i64* %_allin_new_bt_37, !mcsema_real_eip !63
  store i64 %170, i64* %RAX_val, !mcsema_real_eip !63
  %171 = add i64 %170, 4, !mcsema_real_eip !64
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !64
  %173 = bitcast i64* %172 to i32*
  %174 = load i32, i32* %173, !mcsema_real_eip !64
  %175 = zext i32 %174 to i64, !mcsema_real_eip !64
  store i64 %175, i64* %RCX_val, !mcsema_real_eip !64
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -56
  %177 = add i64 %176, -56, !mcsema_real_eip !65
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !65
  %179 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !65
  store i64 %179, i64* %RAX_val, !mcsema_real_eip !65
  %180 = add i64 %179, 4, !mcsema_real_eip !66
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !66
  %182 = bitcast i64* %181 to i32*
  %183 = load i32, i32* %182, !mcsema_real_eip !66
  %184 = zext i32 %183 to i64, !mcsema_real_eip !66
  store i64 %184, i64* %RDX_val, !mcsema_real_eip !66
  %185 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %186 = trunc i64 %185 to i32, !mcsema_real_eip !67
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %183, i32 %186)
  %187 = extractvalue { i32, i1 } %uadd70, 0
  %188 = xor i32 %187, %186, !mcsema_real_eip !67
  %189 = xor i32 %188, %183, !mcsema_real_eip !67
  %190 = and i32 %189, 16, !mcsema_real_eip !67
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !67
  store i1 %191, i1* %AF_val, !mcsema_real_eip !67
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF_val, !mcsema_real_eip !67
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !67
  store i1 %193, i1* %ZF_val, !mcsema_real_eip !67
  %194 = xor i32 %183, -2147483648, !mcsema_real_eip !67
  %195 = xor i32 %194, %186, !mcsema_real_eip !67
  %196 = and i32 %188, %195, !mcsema_real_eip !67
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF_val, !mcsema_real_eip !67
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !67
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !67
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF_val, !mcsema_real_eip !67
  %202 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %202, i1* %CF_val, !mcsema_real_eip !67
  %203 = zext i32 %187 to i64, !mcsema_real_eip !67
  store i64 %203, i64* %RCX_val, !mcsema_real_eip !67
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %205 = add i64 %204, -68, !mcsema_real_eip !68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !68
  %207 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %187, i32* %207, !mcsema_real_eip !68
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %208 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -48
  %209 = add i64 %208, -48, !mcsema_real_eip !69
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !69
  %211 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !69
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !69
  %212 = add i64 %211, 8, !mcsema_real_eip !70
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !70
  %214 = bitcast i64* %213 to i32*
  %215 = load i32, i32* %214, !mcsema_real_eip !70
  %216 = zext i32 %215 to i64, !mcsema_real_eip !70
  store i64 %216, i64* %RCX_val, !mcsema_real_eip !70
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %217 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -56
  %218 = add i64 %217, -56, !mcsema_real_eip !71
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !71
  %220 = load i64, i64* %_allin_new_bt_49, !mcsema_real_eip !71
  store i64 %220, i64* %RAX_val, !mcsema_real_eip !71
  %221 = add i64 %220, 8, !mcsema_real_eip !72
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !72
  %223 = bitcast i64* %222 to i32*
  %224 = load i32, i32* %223, !mcsema_real_eip !72
  %225 = zext i32 %224 to i64, !mcsema_real_eip !72
  store i64 %225, i64* %RDX_val, !mcsema_real_eip !72
  %226 = load i64, i64* %RCX_val, !mcsema_real_eip !73
  %227 = trunc i64 %226 to i32, !mcsema_real_eip !73
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %227)
  %228 = extractvalue { i32, i1 } %uadd71, 0
  %229 = xor i32 %228, %227, !mcsema_real_eip !73
  %230 = xor i32 %229, %224, !mcsema_real_eip !73
  %231 = and i32 %230, 16, !mcsema_real_eip !73
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !73
  store i1 %232, i1* %AF_val, !mcsema_real_eip !73
  %233 = icmp slt i32 %228, 0
  store i1 %233, i1* %SF_val, !mcsema_real_eip !73
  %234 = icmp eq i32 %228, 0, !mcsema_real_eip !73
  store i1 %234, i1* %ZF_val, !mcsema_real_eip !73
  %235 = xor i32 %224, -2147483648, !mcsema_real_eip !73
  %236 = xor i32 %235, %227, !mcsema_real_eip !73
  %237 = and i32 %229, %236, !mcsema_real_eip !73
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF_val, !mcsema_real_eip !73
  %239 = trunc i32 %228 to i8, !mcsema_real_eip !73
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !73
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  store i1 %242, i1* %PF_val, !mcsema_real_eip !73
  %243 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %243, i1* %CF_val, !mcsema_real_eip !73
  %244 = zext i32 %228 to i64, !mcsema_real_eip !73
  store i64 %244, i64* %RCX_val, !mcsema_real_eip !73
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %245 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -64
  %246 = add i64 %245, -64, !mcsema_real_eip !74
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !74
  %248 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %228, i32* %248, !mcsema_real_eip !74
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -8
  %250 = add i64 %249, -8, !mcsema_real_eip !75
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !75
  %252 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %253 = trunc i64 %252 to i32, !mcsema_real_eip !75
  %254 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %253, i32* %254, !mcsema_real_eip !75
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %255 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -72
  %256 = add i64 %255, -72, !mcsema_real_eip !76
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !76
  %258 = load i64, i64* %_allin_new_bt_58, !mcsema_real_eip !76
  store i64 %258, i64* %RAX_val, !mcsema_real_eip !76
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -16
  %259 = add i64 %255, -16, !mcsema_real_eip !77
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !77
  store i64 %258, i64* %_allin_new_bt_60, !mcsema_real_eip !77
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %261 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -8
  %262 = add i64 %261, -8, !mcsema_real_eip !78
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !78
  %264 = bitcast i64* %_allin_new_bt_63 to i32*
  %265 = load i32, i32* %264, !mcsema_real_eip !78
  %266 = zext i32 %265 to i64, !mcsema_real_eip !78
  store i64 %266, i64* %RCX_val, !mcsema_real_eip !78
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %267 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -80
  %268 = add i64 %267, -80, !mcsema_real_eip !79
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !79
  %270 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %265, i32* %270, !mcsema_real_eip !79
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -16
  %272 = add i64 %271, -16, !mcsema_real_eip !80
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !80
  %274 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !80
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !80
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -88
  %275 = add i64 %271, -88, !mcsema_real_eip !81
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !81
  store i64 %274, i64* %_allin_new_bt_71, !mcsema_real_eip !81
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -88
  %278 = add i64 %277, -88, !mcsema_real_eip !82
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !82
  %280 = load i64, i64* %_allin_new_bt_74, !mcsema_real_eip !82
  store i64 %280, i64* %RAX_val, !mcsema_real_eip !82
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -80
  %281 = add i64 %277, -80, !mcsema_real_eip !83
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !83
  %283 = bitcast i64* %_allin_new_bt_76 to i32*
  %284 = load i32, i32* %283, !mcsema_real_eip !83
  %285 = zext i32 %284 to i64, !mcsema_real_eip !83
  store i64 %285, i64* %RDX_val, !mcsema_real_eip !83
  %_load_rsp_ptr_77 = load i8*, i8** %_RSP_ptr_
  %286 = load i64, i64* %RSP_val, !mcsema_real_eip !84
  %_allin_new_bt_78 = bitcast i8* %_load_rsp_ptr_77 to i64*
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !84
  %288 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !84
  %_new_int2ptr_ = inttoptr i64 %288 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %288, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_79 = getelementptr i8, i8* %_load_rsp_ptr_77, i64 16
  %289 = add i64 %286, 16, !mcsema_real_eip !85
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %289, i64* %RSP_val, !mcsema_real_eip !85
  %290 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  store i64 %290, i64* %RAX, !mcsema_real_eip !85
  %291 = load i64, i64* %RBX_val, !mcsema_real_eip !85
  store i64 %291, i64* %RBX, !mcsema_real_eip !85
  %292 = load i64, i64* %RCX_val, !mcsema_real_eip !85
  store i64 %292, i64* %RCX, !mcsema_real_eip !85
  %293 = load i64, i64* %RDX_val, !mcsema_real_eip !85
  store i64 %293, i64* %RDX, !mcsema_real_eip !85
  %294 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  store i64 %294, i64* %RSI, !mcsema_real_eip !85
  %295 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  store i64 %295, i64* %RDI, !mcsema_real_eip !85
  %_load_rsp_ptr_80 = load i8*, i8** %_RSP_ptr_
  %296 = load i64, i64* %RSP_val, !mcsema_real_eip !85
  %_new_ptr2int_81 = ptrtoint i8* %_load_rsp_ptr_80 to i64
  store volatile i64 %_new_ptr2int_81, i64* %RSP
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_ptr2int_83 = ptrtoint i8* %_load_rbp_ptr_82 to i64
  store volatile i64 %_new_ptr2int_83, i64* %RBP
  %298 = load i64, i64* %R8_val, !mcsema_real_eip !85
  store i64 %298, i64* %R8, !mcsema_real_eip !85
  %299 = load i64, i64* %R9_val, !mcsema_real_eip !85
  store i64 %299, i64* %R9, !mcsema_real_eip !85
  %300 = load i64, i64* %R10_val, !mcsema_real_eip !85
  store i64 %300, i64* %R10, !mcsema_real_eip !85
  %301 = load i64, i64* %R11_val, !mcsema_real_eip !85
  store i64 %301, i64* %R11, !mcsema_real_eip !85
  %302 = load i64, i64* %R12_val, !mcsema_real_eip !85
  store i64 %302, i64* %R12, !mcsema_real_eip !85
  %303 = load i64, i64* %R13_val, !mcsema_real_eip !85
  store i64 %303, i64* %R13, !mcsema_real_eip !85
  %304 = load i64, i64* %R14_val, !mcsema_real_eip !85
  store i64 %304, i64* %R14, !mcsema_real_eip !85
  %305 = load i64, i64* %R15_val, !mcsema_real_eip !85
  store i64 %305, i64* %R15, !mcsema_real_eip !85
  %306 = load i64, i64* %RIP_val, !mcsema_real_eip !85
  store i64 %306, i64* %RIP, !mcsema_real_eip !85
  %307 = load i1, i1* %CF_val, !mcsema_real_eip !85
  store i1 %307, i1* %CF, align 1, !mcsema_real_eip !85
  %308 = load i1, i1* %PF_val, !mcsema_real_eip !85
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !85
  %309 = load i1, i1* %AF_val, !mcsema_real_eip !85
  store i1 %309, i1* %AF, align 1, !mcsema_real_eip !85
  %310 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  store i1 %310, i1* %ZF, align 1, !mcsema_real_eip !85
  %311 = load i1, i1* %SF_val, !mcsema_real_eip !85
  store i1 %311, i1* %SF, align 1, !mcsema_real_eip !85
  %312 = load i1, i1* %OF_val, !mcsema_real_eip !85
  store i1 %312, i1* %OF, align 1, !mcsema_real_eip !85
  %313 = load i1, i1* %DF_val, !mcsema_real_eip !85
  store i1 %313, i1* %DF, align 1, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !85
  %314 = load i1, i1* %FPU_B_val, !mcsema_real_eip !85
  store i1 %314, i1* %FPU_B, align 1, !mcsema_real_eip !85
  %315 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !85
  store i1 %315, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  %316 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !85
  store i3 %316, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  %317 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !85
  store i1 %317, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  %318 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !85
  store i1 %318, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  %319 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !85
  store i1 %319, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  %320 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !85
  store i1 %320, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  %321 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !85
  store i1 %321, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  %322 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !85
  store i1 %322, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  %323 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !85
  store i1 %323, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  %324 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !85
  store i1 %324, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  %325 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !85
  store i1 %325, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  %326 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !85
  store i1 %326, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  %327 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !85
  store i1 %327, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  %328 = load i1, i1* %FPU_X_val, !mcsema_real_eip !85
  store i1 %328, i1* %FPU_X, align 1, !mcsema_real_eip !85
  %329 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !85
  store i2 %329, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  %330 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !85
  store i2 %330, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  %331 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !85
  store i1 %331, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  %332 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !85
  store i1 %332, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  %333 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !85
  store i1 %333, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  %334 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !85
  store i1 %334, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  %335 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !85
  store i1 %335, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  %336 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !85
  store i1 %336, i1* %FPU_IM, align 1, !mcsema_real_eip !85
  %337 = load i64, i64* %53, align 4
  store i64 %337, i64* %52, align 4
  %338 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !85
  store i16 %338, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  %339 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !85
  store i64 %339, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !85
  %340 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !85
  store i16 %340, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  %341 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !85
  store i64 %341, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !85
  %342 = load i128, i128* %XMM0_val, !mcsema_real_eip !85
  store i128 %342, i128* %XMM0, align 1, !mcsema_real_eip !85
  %343 = load i128, i128* %XMM1_val, !mcsema_real_eip !85
  store i128 %343, i128* %XMM1, align 1, !mcsema_real_eip !85
  %344 = load i128, i128* %XMM2_val, !mcsema_real_eip !85
  store i128 %344, i128* %XMM2, align 1, !mcsema_real_eip !85
  %345 = load i128, i128* %XMM3_val, !mcsema_real_eip !85
  store i128 %345, i128* %XMM3, align 1, !mcsema_real_eip !85
  %346 = load i128, i128* %XMM4_val, !mcsema_real_eip !85
  store i128 %346, i128* %XMM4, align 1, !mcsema_real_eip !85
  %347 = load i128, i128* %XMM5_val, !mcsema_real_eip !85
  store i128 %347, i128* %XMM5, align 1, !mcsema_real_eip !85
  %348 = load i128, i128* %XMM6_val, !mcsema_real_eip !85
  store i128 %348, i128* %XMM6, align 1, !mcsema_real_eip !85
  %349 = load i128, i128* %XMM7_val, !mcsema_real_eip !85
  store i128 %349, i128* %XMM7, align 1, !mcsema_real_eip !85
  %350 = load i128, i128* %XMM8_val, !mcsema_real_eip !85
  store i128 %350, i128* %XMM8, align 1, !mcsema_real_eip !85
  %351 = load i128, i128* %XMM9_val, !mcsema_real_eip !85
  store i128 %351, i128* %XMM9, align 1, !mcsema_real_eip !85
  %352 = load i128, i128* %XMM10_val, !mcsema_real_eip !85
  store i128 %352, i128* %XMM10, align 1, !mcsema_real_eip !85
  %353 = load i128, i128* %XMM11_val, !mcsema_real_eip !85
  store i128 %353, i128* %XMM11, align 1, !mcsema_real_eip !85
  %354 = load i128, i128* %XMM12_val, !mcsema_real_eip !85
  store i128 %354, i128* %XMM12, align 1, !mcsema_real_eip !85
  %355 = load i128, i128* %XMM13_val, !mcsema_real_eip !85
  store i128 %355, i128* %XMM13, align 1, !mcsema_real_eip !85
  %356 = load i128, i128* %XMM14_val, !mcsema_real_eip !85
  store i128 %356, i128* %XMM14, align 1, !mcsema_real_eip !85
  %357 = load i128, i128* %XMM15_val, !mcsema_real_eip !85
  store i128 %357, i128* %XMM15, align 1, !mcsema_real_eip !85
  %358 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !85
  store i64 %358, i64* %STACK_BASE, align 1, !mcsema_real_eip !85
  %359 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !85
  store i64 %359, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !85
  ret void, !mcsema_real_eip !85
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*, i64 0
  %_RBP_ptr_ = alloca i8*, i64 0
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  tail call x86_64_sysvcc void @sub_80(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 96
  %_RBP_ptr_ = alloca i8*, i64 96
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !46
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !46
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !46
  %XMM15_val = alloca i128, !mcsema_real_eip !46
  %XMM14_val = alloca i128, !mcsema_real_eip !46
  %XMM13_val = alloca i128, !mcsema_real_eip !46
  %XMM12_val = alloca i128, !mcsema_real_eip !46
  %XMM11_val = alloca i128, !mcsema_real_eip !46
  %XMM10_val = alloca i128, !mcsema_real_eip !46
  %XMM9_val = alloca i128, !mcsema_real_eip !46
  %XMM8_val = alloca i128, !mcsema_real_eip !46
  %XMM7_val = alloca i128, !mcsema_real_eip !46
  %XMM6_val = alloca i128, !mcsema_real_eip !46
  %XMM5_val = alloca i128, !mcsema_real_eip !46
  %XMM4_val = alloca i128, !mcsema_real_eip !46
  %XMM3_val = alloca i128, !mcsema_real_eip !46
  %XMM2_val = alloca i128, !mcsema_real_eip !46
  %XMM1_val = alloca i128, !mcsema_real_eip !46
  %XMM0_val = alloca i128, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !46
  %FPU_IM_val = alloca i1, !mcsema_real_eip !46
  %FPU_DM_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !46
  %FPU_OM_val = alloca i1, !mcsema_real_eip !46
  %FPU_UM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PC_val = alloca i2, !mcsema_real_eip !46
  %FPU_RC_val = alloca i2, !mcsema_real_eip !46
  %FPU_X_val = alloca i1, !mcsema_real_eip !46
  %FPU_IE_val = alloca i1, !mcsema_real_eip !46
  %FPU_DE_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !46
  %FPU_OE_val = alloca i1, !mcsema_real_eip !46
  %FPU_UE_val = alloca i1, !mcsema_real_eip !46
  %FPU_PE_val = alloca i1, !mcsema_real_eip !46
  %FPU_SF_val = alloca i1, !mcsema_real_eip !46
  %FPU_ES_val = alloca i1, !mcsema_real_eip !46
  %FPU_C0_val = alloca i1, !mcsema_real_eip !46
  %FPU_C1_val = alloca i1, !mcsema_real_eip !46
  %FPU_C2_val = alloca i1, !mcsema_real_eip !46
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !46
  %FPU_C3_val = alloca i1, !mcsema_real_eip !46
  %FPU_B_val = alloca i1, !mcsema_real_eip !46
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !46
  %DF_val = alloca i1, !mcsema_real_eip !46
  %OF_val = alloca i1, !mcsema_real_eip !46
  %SF_val = alloca i1, !mcsema_real_eip !46
  %CF_val = alloca i1, !mcsema_real_eip !46
  %AF_val = alloca i1, !mcsema_real_eip !46
  %PF_val = alloca i1, !mcsema_real_eip !46
  %ZF_val = alloca i1, !mcsema_real_eip !46
  %RIP_val = alloca i64, !mcsema_real_eip !46
  %R14_val = alloca i64, !mcsema_real_eip !46
  %R13_val = alloca i64, !mcsema_real_eip !46
  %R12_val = alloca i64, !mcsema_real_eip !46
  %R11_val = alloca i64, !mcsema_real_eip !46
  %R10_val = alloca i64, !mcsema_real_eip !46
  %R9_val = alloca i64, !mcsema_real_eip !46
  %R8_val = alloca i64, !mcsema_real_eip !46
  %RSP_val = alloca i64, !mcsema_real_eip !46
  %RBP_val = alloca i64, !mcsema_real_eip !46
  %RDI_val = alloca i64, !mcsema_real_eip !46
  %RSI_val = alloca i64, !mcsema_real_eip !46
  %RDX_val = alloca i64, !mcsema_real_eip !46
  %RCX_val = alloca i64, !mcsema_real_eip !46
  %RBX_val = alloca i64, !mcsema_real_eip !46
  %RAX_val = alloca i64, !mcsema_real_eip !46
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !46
  %1 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !46
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !46
  %2 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !46
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !46
  %3 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !46
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !46
  %4 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !46
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !46
  %5 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !46
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !46
  %6 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !46
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !46
  %7 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !46
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !46
  %8 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !46
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !46
  %9 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %9, i64* %R8_val, !mcsema_real_eip !46
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !46
  %10 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %10, i64* %R9_val, !mcsema_real_eip !46
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !46
  %11 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %11, i64* %R10_val, !mcsema_real_eip !46
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !46
  %12 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %12, i64* %R11_val, !mcsema_real_eip !46
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !46
  %13 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %13, i64* %R12_val, !mcsema_real_eip !46
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !46
  %14 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %14, i64* %R13_val, !mcsema_real_eip !46
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !46
  %15 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %15, i64* %R14_val, !mcsema_real_eip !46
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !46
  %16 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %16, i64* %R15_val, !mcsema_real_eip !46
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !46
  %17 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !46
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !46
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %18, i1* %CF_val, !mcsema_real_eip !46
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !46
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %PF_val, !mcsema_real_eip !46
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !46
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %20, i1* %AF_val, !mcsema_real_eip !46
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !46
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !46
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !46
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %SF_val, !mcsema_real_eip !46
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !46
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %OF_val, !mcsema_real_eip !46
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !46
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %DF_val, !mcsema_real_eip !46
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !46
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !46
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !46
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !46
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !46
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !46
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !46
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !46
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !46
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !46
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !46
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !46
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !46
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !46
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !46
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !46
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !46
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !46
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !46
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !46
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !46
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !46
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !46
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !46
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !46
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !46
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !46
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !46
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !46
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !46
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !46
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !46
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !46
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !46
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !46
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !46
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !46
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !46
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !46
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !46
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !46
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !46
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !46
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !46
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !46
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !46
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !46
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !46
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !46
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !46
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !46
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !46
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !46
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %83 = add i64 %80, 16, !mcsema_real_eip !48
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !48
  %_ptr_to_int_84 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_local_end_to_int_85 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_86 = bitcast i64* %_allin_new_bt_2 to i8*
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_85
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_ptr_bt_86, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_ptr_bt_86, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_ptr_bt_86, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  br i1 %_cond1_n_cond2_cond3_95, label %85, label %86

; <label>:85:                                     ; preds = %55
  %_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_address_in_parent_stack_bt_97 = bitcast i8* %_address_in_parent_stack_96 to i64*
  br label %86

; <label>:86:                                     ; preds = %55, %85
  %87 = phi i64* [ %_allin_new_bt_2, %55 ], [ %_address_in_parent_stack_bt_97, %85 ]
  %_new_load_98 = load i64, i64* %87
  store i64 %_new_load_98, i64* %RAX_val, !mcsema_real_eip !48
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %88 = add i64 %80, 8, !mcsema_real_eip !49
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !49
  %_ptr_to_int_99 = ptrtoint i64* %_allin_new_bt_4 to i64
  %_local_end_to_int_100 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_101 = bitcast i64* %_allin_new_bt_4 to i8*
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_100
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_ptr_bt_101, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_ptr_bt_101, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_ptr_bt_101, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %90, label %91

; <label>:90:                                     ; preds = %86
  %_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_address_in_parent_stack_bt_112 = bitcast i8* %_address_in_parent_stack_111 to i64*
  br label %91

; <label>:91:                                     ; preds = %86, %90
  %92 = phi i64* [ %_allin_new_bt_4, %86 ], [ %_address_in_parent_stack_bt_112, %90 ]
  %_new_load_113 = load i64, i64* %92
  store i64 %_new_load_113, i64* %R10_val, !mcsema_real_eip !49
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -20
  %94 = add i64 %93, -20, !mcsema_real_eip !50
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !50
  %96 = load i64, i64* %RDI_val, !mcsema_real_eip !50
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !50
  %98 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !50
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %100 = add i64 %99, -24, !mcsema_real_eip !51
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !51
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !51
  %104 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !51
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -28
  %106 = add i64 %105, -28, !mcsema_real_eip !52
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !52
  %108 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !52
  %110 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !52
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %112 = add i64 %111, -32, !mcsema_real_eip !53
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !53
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !53
  %116 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !53
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -36
  %118 = add i64 %117, -36, !mcsema_real_eip !54
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !54
  %120 = load i64, i64* %R8_val, !mcsema_real_eip !54
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !54
  %122 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !54
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -40
  %124 = add i64 %123, -40, !mcsema_real_eip !55
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !55
  %126 = load i64, i64* %R9_val, !mcsema_real_eip !55
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !55
  %128 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !55
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -48
  %130 = add i64 %129, -48, !mcsema_real_eip !56
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !56
  %132 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %132, i64* %_allin_new_bt_25, !mcsema_real_eip !56
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -56
  %134 = add i64 %133, -56, !mcsema_real_eip !57
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !57
  %136 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %136, i64* %_allin_new_bt_28, !mcsema_real_eip !57
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -48
  %138 = add i64 %137, -48, !mcsema_real_eip !58
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !58
  %_ptr_to_int_114 = ptrtoint i64* %_allin_new_bt_31 to i64
  %_local_end_to_int_115 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_116 = bitcast i64* %_allin_new_bt_31 to i8*
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_115
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_ptr_bt_116, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_ptr_bt_116, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_ptr_bt_116, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %140, label %141

; <label>:140:                                    ; preds = %91
  %_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_address_in_parent_stack_bt_127 = bitcast i8* %_address_in_parent_stack_126 to i64*
  br label %141

; <label>:141:                                    ; preds = %91, %140
  %142 = phi i64* [ %_allin_new_bt_31, %91 ], [ %_address_in_parent_stack_bt_127, %140 ]
  %_new_load_128 = load i64, i64* %142
  store i64 %_new_load_128, i64* %R10_val, !mcsema_real_eip !58
  %143 = inttoptr i64 %_new_load_128 to i64*, !mcsema_real_eip !59
  %144 = bitcast i64* %143 to i32*
  %_ptr_to_int_129 = ptrtoint i32* %144 to i64
  %_local_end_to_int_130 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_131 = bitcast i32* %144 to i8*
  %_offset_above_rbp_132 = sub i64 %_ptr_to_int_129, %_local_end_to_int_130
  %_pot_address_in_parent_stack_133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_cond1_134 = icmp ugt i8* %_ptr_bt_131, %_local_stack_end_ptr_
  %_cond2_1_135 = icmp ugt i8* %_ptr_bt_131, %_parent_stack_end_ptr_
  %_cond2_2_136 = icmp ult i8* %_ptr_bt_131, %_parent_stack_start_ptr_
  %_cond2_137 = or i1 %_cond2_1_135, %_cond2_2_136
  %_cond4_138 = icmp ule i8* %_pot_address_in_parent_stack_133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_139 = and i1 %_cond1_134, %_cond2_137
  %_cond1_n_cond2_cond3_140 = and i1 %_cond1_n_cond2_139, %_cond4_138
  br i1 %_cond1_n_cond2_cond3_140, label %145, label %146

; <label>:145:                                    ; preds = %141
  %_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_address_in_parent_stack_bt_142 = bitcast i8* %_address_in_parent_stack_141 to i32*
  br label %146

; <label>:146:                                    ; preds = %141, %145
  %147 = phi i32* [ %144, %141 ], [ %_address_in_parent_stack_bt_142, %145 ]
  %_new_load_143 = load i32, i32* %147
  %148 = zext i32 %_new_load_143 to i64, !mcsema_real_eip !59
  store i64 %148, i64* %RCX_val, !mcsema_real_eip !59
  %149 = load i64, i64* %RAX_val, !mcsema_real_eip !60
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !60
  %151 = bitcast i64* %150 to i32*
  %_ptr_to_int_144 = ptrtoint i32* %151 to i64
  %_local_end_to_int_145 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_146 = bitcast i32* %151 to i8*
  %_offset_above_rbp_147 = sub i64 %_ptr_to_int_144, %_local_end_to_int_145
  %_pot_address_in_parent_stack_148 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_cond1_149 = icmp ugt i8* %_ptr_bt_146, %_local_stack_end_ptr_
  %_cond2_1_150 = icmp ugt i8* %_ptr_bt_146, %_parent_stack_end_ptr_
  %_cond2_2_151 = icmp ult i8* %_ptr_bt_146, %_parent_stack_start_ptr_
  %_cond2_152 = or i1 %_cond2_1_150, %_cond2_2_151
  %_cond4_153 = icmp ule i8* %_pot_address_in_parent_stack_148, %_parent_stack_end_ptr_
  %_cond1_n_cond2_154 = and i1 %_cond1_149, %_cond2_152
  %_cond1_n_cond2_cond3_155 = and i1 %_cond1_n_cond2_154, %_cond4_153
  br i1 %_cond1_n_cond2_cond3_155, label %152, label %153

; <label>:152:                                    ; preds = %146
  %_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_address_in_parent_stack_bt_157 = bitcast i8* %_address_in_parent_stack_156 to i32*
  br label %153

; <label>:153:                                    ; preds = %146, %152
  %154 = phi i32* [ %151, %146 ], [ %_address_in_parent_stack_bt_157, %152 ]
  %_new_load_158 = load i32, i32* %154
  %155 = zext i32 %_new_load_158 to i64, !mcsema_real_eip !60
  store i64 %155, i64* %RDX_val, !mcsema_real_eip !60
  %156 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %157 = trunc i64 %156 to i32, !mcsema_real_eip !61
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_158, i32 %157)
  %158 = extractvalue { i32, i1 } %uadd, 0
  %159 = xor i32 %158, %157, !mcsema_real_eip !61
  %160 = xor i32 %159, %_new_load_158, !mcsema_real_eip !61
  %161 = and i32 %160, 16, !mcsema_real_eip !61
  %162 = icmp ne i32 %161, 0, !mcsema_real_eip !61
  store i1 %162, i1* %AF_val, !mcsema_real_eip !61
  %163 = icmp slt i32 %158, 0
  store i1 %163, i1* %SF_val, !mcsema_real_eip !61
  %164 = icmp eq i32 %158, 0, !mcsema_real_eip !61
  store i1 %164, i1* %ZF_val, !mcsema_real_eip !61
  %165 = xor i32 %_new_load_158, -2147483648, !mcsema_real_eip !61
  %166 = xor i32 %165, %157, !mcsema_real_eip !61
  %167 = and i32 %159, %166, !mcsema_real_eip !61
  %168 = icmp slt i32 %167, 0
  store i1 %168, i1* %OF_val, !mcsema_real_eip !61
  %169 = trunc i32 %158 to i8, !mcsema_real_eip !61
  %170 = tail call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !61
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  store i1 %172, i1* %PF_val, !mcsema_real_eip !61
  %173 = extractvalue { i32, i1 } %uadd, 1
  store i1 %173, i1* %CF_val, !mcsema_real_eip !61
  %174 = zext i32 %158 to i64, !mcsema_real_eip !61
  store i64 %174, i64* %RCX_val, !mcsema_real_eip !61
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -72
  %176 = add i64 %175, -72, !mcsema_real_eip !62
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !62
  %178 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %158, i32* %178, !mcsema_real_eip !62
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %179 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -48
  %180 = add i64 %179, -48, !mcsema_real_eip !63
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !63
  %_ptr_to_int_159 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_local_end_to_int_160 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_161 = bitcast i64* %_allin_new_bt_37 to i8*
  %_offset_above_rbp_162 = sub i64 %_ptr_to_int_159, %_local_end_to_int_160
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_ptr_bt_161, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_ptr_bt_161, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_ptr_bt_161, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  br i1 %_cond1_n_cond2_cond3_170, label %182, label %183

; <label>:182:                                    ; preds = %153
  %_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_address_in_parent_stack_bt_172 = bitcast i8* %_address_in_parent_stack_171 to i64*
  br label %183

; <label>:183:                                    ; preds = %153, %182
  %184 = phi i64* [ %_allin_new_bt_37, %153 ], [ %_address_in_parent_stack_bt_172, %182 ]
  %_new_load_173 = load i64, i64* %184
  store i64 %_new_load_173, i64* %RAX_val, !mcsema_real_eip !63
  %185 = add i64 %_new_load_173, 4, !mcsema_real_eip !64
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !64
  %187 = bitcast i64* %186 to i32*
  %_ptr_to_int_174 = ptrtoint i32* %187 to i64
  %_local_end_to_int_175 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_176 = bitcast i32* %187 to i8*
  %_offset_above_rbp_177 = sub i64 %_ptr_to_int_174, %_local_end_to_int_175
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_ptr_bt_176, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  br i1 %_cond1_n_cond2_cond3_185, label %188, label %189

; <label>:188:                                    ; preds = %183
  %_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_address_in_parent_stack_bt_187 = bitcast i8* %_address_in_parent_stack_186 to i32*
  br label %189

; <label>:189:                                    ; preds = %183, %188
  %190 = phi i32* [ %187, %183 ], [ %_address_in_parent_stack_bt_187, %188 ]
  %_new_load_188 = load i32, i32* %190
  %191 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !64
  store i64 %191, i64* %RCX_val, !mcsema_real_eip !64
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %192 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -56
  %193 = add i64 %192, -56, !mcsema_real_eip !65
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !65
  %_ptr_to_int_189 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_local_end_to_int_190 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_191 = bitcast i64* %_allin_new_bt_40 to i8*
  %_offset_above_rbp_192 = sub i64 %_ptr_to_int_189, %_local_end_to_int_190
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_ptr_bt_191, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_ptr_bt_191, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_ptr_bt_191, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %195, label %196

; <label>:195:                                    ; preds = %189
  %_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_address_in_parent_stack_bt_202 = bitcast i8* %_address_in_parent_stack_201 to i64*
  br label %196

; <label>:196:                                    ; preds = %189, %195
  %197 = phi i64* [ %_allin_new_bt_40, %189 ], [ %_address_in_parent_stack_bt_202, %195 ]
  %_new_load_203 = load i64, i64* %197
  store i64 %_new_load_203, i64* %RAX_val, !mcsema_real_eip !65
  %198 = add i64 %_new_load_203, 4, !mcsema_real_eip !66
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !66
  %200 = bitcast i64* %199 to i32*
  %_ptr_to_int_204 = ptrtoint i32* %200 to i64
  %_local_end_to_int_205 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_206 = bitcast i32* %200 to i8*
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_205
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %201, label %202

; <label>:201:                                    ; preds = %196
  %_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_address_in_parent_stack_bt_217 = bitcast i8* %_address_in_parent_stack_216 to i32*
  br label %202

; <label>:202:                                    ; preds = %196, %201
  %203 = phi i32* [ %200, %196 ], [ %_address_in_parent_stack_bt_217, %201 ]
  %_new_load_218 = load i32, i32* %203
  %204 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !66
  store i64 %204, i64* %RDX_val, !mcsema_real_eip !66
  %205 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %206 = trunc i64 %205 to i32, !mcsema_real_eip !67
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_218, i32 %206)
  %207 = extractvalue { i32, i1 } %uadd70, 0
  %208 = xor i32 %207, %206, !mcsema_real_eip !67
  %209 = xor i32 %208, %_new_load_218, !mcsema_real_eip !67
  %210 = and i32 %209, 16, !mcsema_real_eip !67
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !67
  store i1 %211, i1* %AF_val, !mcsema_real_eip !67
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF_val, !mcsema_real_eip !67
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !67
  store i1 %213, i1* %ZF_val, !mcsema_real_eip !67
  %214 = xor i32 %_new_load_218, -2147483648, !mcsema_real_eip !67
  %215 = xor i32 %214, %206, !mcsema_real_eip !67
  %216 = and i32 %208, %215, !mcsema_real_eip !67
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF_val, !mcsema_real_eip !67
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !67
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !67
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF_val, !mcsema_real_eip !67
  %222 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %222, i1* %CF_val, !mcsema_real_eip !67
  %223 = zext i32 %207 to i64, !mcsema_real_eip !67
  store i64 %223, i64* %RCX_val, !mcsema_real_eip !67
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %224 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %225 = add i64 %224, -68, !mcsema_real_eip !68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !68
  %227 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %207, i32* %227, !mcsema_real_eip !68
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %228 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -48
  %229 = add i64 %228, -48, !mcsema_real_eip !69
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !69
  %_ptr_to_int_219 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_local_end_to_int_220 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_221 = bitcast i64* %_allin_new_bt_46 to i8*
  %_offset_above_rbp_222 = sub i64 %_ptr_to_int_219, %_local_end_to_int_220
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_ptr_bt_221, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_ptr_bt_221, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_ptr_bt_221, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  br i1 %_cond1_n_cond2_cond3_230, label %231, label %232

; <label>:231:                                    ; preds = %202
  %_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_address_in_parent_stack_bt_232 = bitcast i8* %_address_in_parent_stack_231 to i64*
  br label %232

; <label>:232:                                    ; preds = %202, %231
  %233 = phi i64* [ %_allin_new_bt_46, %202 ], [ %_address_in_parent_stack_bt_232, %231 ]
  %_new_load_233 = load i64, i64* %233
  store i64 %_new_load_233, i64* %RAX_val, !mcsema_real_eip !69
  %234 = add i64 %_new_load_233, 8, !mcsema_real_eip !70
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !70
  %236 = bitcast i64* %235 to i32*
  %_ptr_to_int_234 = ptrtoint i32* %236 to i64
  %_local_end_to_int_235 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_236 = bitcast i32* %236 to i8*
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_235
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %237, label %238

; <label>:237:                                    ; preds = %232
  %_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_address_in_parent_stack_bt_247 = bitcast i8* %_address_in_parent_stack_246 to i32*
  br label %238

; <label>:238:                                    ; preds = %232, %237
  %239 = phi i32* [ %236, %232 ], [ %_address_in_parent_stack_bt_247, %237 ]
  %_new_load_248 = load i32, i32* %239
  %240 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !70
  store i64 %240, i64* %RCX_val, !mcsema_real_eip !70
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %241 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -56
  %242 = add i64 %241, -56, !mcsema_real_eip !71
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !71
  %_ptr_to_int_249 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_local_end_to_int_250 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_251 = bitcast i64* %_allin_new_bt_49 to i8*
  %_offset_above_rbp_252 = sub i64 %_ptr_to_int_249, %_local_end_to_int_250
  %_pot_address_in_parent_stack_253 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_cond1_254 = icmp ugt i8* %_ptr_bt_251, %_local_stack_end_ptr_
  %_cond2_1_255 = icmp ugt i8* %_ptr_bt_251, %_parent_stack_end_ptr_
  %_cond2_2_256 = icmp ult i8* %_ptr_bt_251, %_parent_stack_start_ptr_
  %_cond2_257 = or i1 %_cond2_1_255, %_cond2_2_256
  %_cond4_258 = icmp ule i8* %_pot_address_in_parent_stack_253, %_parent_stack_end_ptr_
  %_cond1_n_cond2_259 = and i1 %_cond1_254, %_cond2_257
  %_cond1_n_cond2_cond3_260 = and i1 %_cond1_n_cond2_259, %_cond4_258
  br i1 %_cond1_n_cond2_cond3_260, label %244, label %245

; <label>:244:                                    ; preds = %238
  %_address_in_parent_stack_261 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_address_in_parent_stack_bt_262 = bitcast i8* %_address_in_parent_stack_261 to i64*
  br label %245

; <label>:245:                                    ; preds = %238, %244
  %246 = phi i64* [ %_allin_new_bt_49, %238 ], [ %_address_in_parent_stack_bt_262, %244 ]
  %_new_load_263 = load i64, i64* %246
  store i64 %_new_load_263, i64* %RAX_val, !mcsema_real_eip !71
  %247 = add i64 %_new_load_263, 8, !mcsema_real_eip !72
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !72
  %249 = bitcast i64* %248 to i32*
  %_ptr_to_int_264 = ptrtoint i32* %249 to i64
  %_local_end_to_int_265 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_266 = bitcast i32* %249 to i8*
  %_offset_above_rbp_267 = sub i64 %_ptr_to_int_264, %_local_end_to_int_265
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_ptr_bt_266, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_ptr_bt_266, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_ptr_bt_266, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  br i1 %_cond1_n_cond2_cond3_275, label %250, label %251

; <label>:250:                                    ; preds = %245
  %_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_address_in_parent_stack_bt_277 = bitcast i8* %_address_in_parent_stack_276 to i32*
  br label %251

; <label>:251:                                    ; preds = %245, %250
  %252 = phi i32* [ %249, %245 ], [ %_address_in_parent_stack_bt_277, %250 ]
  %_new_load_278 = load i32, i32* %252
  %253 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !72
  store i64 %253, i64* %RDX_val, !mcsema_real_eip !72
  %254 = load i64, i64* %RCX_val, !mcsema_real_eip !73
  %255 = trunc i64 %254 to i32, !mcsema_real_eip !73
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_278, i32 %255)
  %256 = extractvalue { i32, i1 } %uadd71, 0
  %257 = xor i32 %256, %255, !mcsema_real_eip !73
  %258 = xor i32 %257, %_new_load_278, !mcsema_real_eip !73
  %259 = and i32 %258, 16, !mcsema_real_eip !73
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !73
  store i1 %260, i1* %AF_val, !mcsema_real_eip !73
  %261 = icmp slt i32 %256, 0
  store i1 %261, i1* %SF_val, !mcsema_real_eip !73
  %262 = icmp eq i32 %256, 0, !mcsema_real_eip !73
  store i1 %262, i1* %ZF_val, !mcsema_real_eip !73
  %263 = xor i32 %_new_load_278, -2147483648, !mcsema_real_eip !73
  %264 = xor i32 %263, %255, !mcsema_real_eip !73
  %265 = and i32 %257, %264, !mcsema_real_eip !73
  %266 = icmp slt i32 %265, 0
  store i1 %266, i1* %OF_val, !mcsema_real_eip !73
  %267 = trunc i32 %256 to i8, !mcsema_real_eip !73
  %268 = tail call i8 @llvm.ctpop.i8(i8 %267), !mcsema_real_eip !73
  %269 = and i8 %268, 1
  %270 = icmp eq i8 %269, 0
  store i1 %270, i1* %PF_val, !mcsema_real_eip !73
  %271 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %271, i1* %CF_val, !mcsema_real_eip !73
  %272 = zext i32 %256 to i64, !mcsema_real_eip !73
  store i64 %272, i64* %RCX_val, !mcsema_real_eip !73
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %273 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -64
  %274 = add i64 %273, -64, !mcsema_real_eip !74
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !74
  %276 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %256, i32* %276, !mcsema_real_eip !74
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -8
  %278 = add i64 %277, -8, !mcsema_real_eip !75
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !75
  %280 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %281 = trunc i64 %280 to i32, !mcsema_real_eip !75
  %282 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %281, i32* %282, !mcsema_real_eip !75
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %283 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -72
  %284 = add i64 %283, -72, !mcsema_real_eip !76
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !76
  %_ptr_to_int_279 = ptrtoint i64* %_allin_new_bt_58 to i64
  %_local_end_to_int_280 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_281 = bitcast i64* %_allin_new_bt_58 to i8*
  %_offset_above_rbp_282 = sub i64 %_ptr_to_int_279, %_local_end_to_int_280
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_ptr_bt_281, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_ptr_bt_281, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_ptr_bt_281, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  br i1 %_cond1_n_cond2_cond3_290, label %286, label %287

; <label>:286:                                    ; preds = %251
  %_address_in_parent_stack_291 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_address_in_parent_stack_bt_292 = bitcast i8* %_address_in_parent_stack_291 to i64*
  br label %287

; <label>:287:                                    ; preds = %251, %286
  %288 = phi i64* [ %_allin_new_bt_58, %251 ], [ %_address_in_parent_stack_bt_292, %286 ]
  %_new_load_293 = load i64, i64* %288
  store i64 %_new_load_293, i64* %RAX_val, !mcsema_real_eip !76
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -16
  %289 = add i64 %283, -16, !mcsema_real_eip !77
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !77
  store i64 %_new_load_293, i64* %_allin_new_bt_60, !mcsema_real_eip !77
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %291 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -8
  %292 = add i64 %291, -8, !mcsema_real_eip !78
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !78
  %294 = bitcast i64* %_allin_new_bt_63 to i32*
  %_ptr_to_int_294 = ptrtoint i32* %294 to i64
  %_local_end_to_int_295 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_296 = bitcast i32* %294 to i8*
  %_offset_above_rbp_297 = sub i64 %_ptr_to_int_294, %_local_end_to_int_295
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_ptr_bt_296, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_ptr_bt_296, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_ptr_bt_296, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  br i1 %_cond1_n_cond2_cond3_305, label %295, label %296

; <label>:295:                                    ; preds = %287
  %_address_in_parent_stack_306 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_address_in_parent_stack_bt_307 = bitcast i8* %_address_in_parent_stack_306 to i32*
  br label %296

; <label>:296:                                    ; preds = %287, %295
  %297 = phi i32* [ %294, %287 ], [ %_address_in_parent_stack_bt_307, %295 ]
  %_new_load_308 = load i32, i32* %297
  %298 = zext i32 %_new_load_308 to i64, !mcsema_real_eip !78
  store i64 %298, i64* %RCX_val, !mcsema_real_eip !78
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -80
  %300 = add i64 %299, -80, !mcsema_real_eip !79
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !79
  %302 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %_new_load_308, i32* %302, !mcsema_real_eip !79
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %303 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -16
  %304 = add i64 %303, -16, !mcsema_real_eip !80
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !80
  %_ptr_to_int_309 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_local_end_to_int_310 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_311 = bitcast i64* %_allin_new_bt_69 to i8*
  %_offset_above_rbp_312 = sub i64 %_ptr_to_int_309, %_local_end_to_int_310
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_ptr_bt_311, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_ptr_bt_311, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_ptr_bt_311, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  br i1 %_cond1_n_cond2_cond3_320, label %306, label %307

; <label>:306:                                    ; preds = %296
  %_address_in_parent_stack_321 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_address_in_parent_stack_bt_322 = bitcast i8* %_address_in_parent_stack_321 to i64*
  br label %307

; <label>:307:                                    ; preds = %296, %306
  %308 = phi i64* [ %_allin_new_bt_69, %296 ], [ %_address_in_parent_stack_bt_322, %306 ]
  %_new_load_323 = load i64, i64* %308
  store i64 %_new_load_323, i64* %RAX_val, !mcsema_real_eip !80
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -88
  %309 = add i64 %303, -88, !mcsema_real_eip !81
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !81
  store i64 %_new_load_323, i64* %_allin_new_bt_71, !mcsema_real_eip !81
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -88
  %312 = add i64 %311, -88, !mcsema_real_eip !82
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !82
  %_ptr_to_int_324 = ptrtoint i64* %_allin_new_bt_74 to i64
  %_local_end_to_int_325 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_326 = bitcast i64* %_allin_new_bt_74 to i8*
  %_offset_above_rbp_327 = sub i64 %_ptr_to_int_324, %_local_end_to_int_325
  %_pot_address_in_parent_stack_328 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_327
  %_cond1_329 = icmp ugt i8* %_ptr_bt_326, %_local_stack_end_ptr_
  %_cond2_1_330 = icmp ugt i8* %_ptr_bt_326, %_parent_stack_end_ptr_
  %_cond2_2_331 = icmp ult i8* %_ptr_bt_326, %_parent_stack_start_ptr_
  %_cond2_332 = or i1 %_cond2_1_330, %_cond2_2_331
  %_cond4_333 = icmp ule i8* %_pot_address_in_parent_stack_328, %_parent_stack_end_ptr_
  %_cond1_n_cond2_334 = and i1 %_cond1_329, %_cond2_332
  %_cond1_n_cond2_cond3_335 = and i1 %_cond1_n_cond2_334, %_cond4_333
  br i1 %_cond1_n_cond2_cond3_335, label %314, label %315

; <label>:314:                                    ; preds = %307
  %_address_in_parent_stack_336 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_327
  %_address_in_parent_stack_bt_337 = bitcast i8* %_address_in_parent_stack_336 to i64*
  br label %315

; <label>:315:                                    ; preds = %307, %314
  %316 = phi i64* [ %_allin_new_bt_74, %307 ], [ %_address_in_parent_stack_bt_337, %314 ]
  %_new_load_338 = load i64, i64* %316
  store i64 %_new_load_338, i64* %RAX_val, !mcsema_real_eip !82
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -80
  %317 = add i64 %311, -80, !mcsema_real_eip !83
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !83
  %319 = bitcast i64* %_allin_new_bt_76 to i32*
  %_ptr_to_int_339 = ptrtoint i32* %319 to i64
  %_local_end_to_int_340 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_341 = bitcast i32* %319 to i8*
  %_offset_above_rbp_342 = sub i64 %_ptr_to_int_339, %_local_end_to_int_340
  %_pot_address_in_parent_stack_343 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_cond1_344 = icmp ugt i8* %_ptr_bt_341, %_local_stack_end_ptr_
  %_cond2_1_345 = icmp ugt i8* %_ptr_bt_341, %_parent_stack_end_ptr_
  %_cond2_2_346 = icmp ult i8* %_ptr_bt_341, %_parent_stack_start_ptr_
  %_cond2_347 = or i1 %_cond2_1_345, %_cond2_2_346
  %_cond4_348 = icmp ule i8* %_pot_address_in_parent_stack_343, %_parent_stack_end_ptr_
  %_cond1_n_cond2_349 = and i1 %_cond1_344, %_cond2_347
  %_cond1_n_cond2_cond3_350 = and i1 %_cond1_n_cond2_349, %_cond4_348
  br i1 %_cond1_n_cond2_cond3_350, label %320, label %321

; <label>:320:                                    ; preds = %315
  %_address_in_parent_stack_351 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_address_in_parent_stack_bt_352 = bitcast i8* %_address_in_parent_stack_351 to i32*
  br label %321

; <label>:321:                                    ; preds = %315, %320
  %322 = phi i32* [ %319, %315 ], [ %_address_in_parent_stack_bt_352, %320 ]
  %_new_load_353 = load i32, i32* %322
  %323 = zext i32 %_new_load_353 to i64, !mcsema_real_eip !83
  store i64 %323, i64* %RDX_val, !mcsema_real_eip !83
  %_load_rsp_ptr_77 = load i8*, i8** %_RSP_ptr_
  %324 = load i64, i64* %RSP_val, !mcsema_real_eip !84
  %_allin_new_bt_78 = bitcast i8* %_load_rsp_ptr_77 to i64*
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !84
  %_ptr_to_int_354 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_local_end_to_int_355 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_356 = bitcast i64* %_allin_new_bt_78 to i8*
  %_offset_above_rbp_357 = sub i64 %_ptr_to_int_354, %_local_end_to_int_355
  %_pot_address_in_parent_stack_358 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_357
  %_cond1_359 = icmp ugt i8* %_ptr_bt_356, %_local_stack_end_ptr_
  %_cond2_1_360 = icmp ugt i8* %_ptr_bt_356, %_parent_stack_end_ptr_
  %_cond2_2_361 = icmp ult i8* %_ptr_bt_356, %_parent_stack_start_ptr_
  %_cond2_362 = or i1 %_cond2_1_360, %_cond2_2_361
  %_cond4_363 = icmp ule i8* %_pot_address_in_parent_stack_358, %_parent_stack_end_ptr_
  %_cond1_n_cond2_364 = and i1 %_cond1_359, %_cond2_362
  %_cond1_n_cond2_cond3_365 = and i1 %_cond1_n_cond2_364, %_cond4_363
  br i1 %_cond1_n_cond2_cond3_365, label %326, label %327

; <label>:326:                                    ; preds = %321
  %_address_in_parent_stack_366 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_357
  %_address_in_parent_stack_bt_367 = bitcast i8* %_address_in_parent_stack_366 to i64*
  br label %327

; <label>:327:                                    ; preds = %321, %326
  %328 = phi i64* [ %_allin_new_bt_78, %321 ], [ %_address_in_parent_stack_bt_367, %326 ]
  %_new_load_368 = load i64, i64* %328
  %_new_int2ptr_ = inttoptr i64 %_new_load_368 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_368, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_79 = getelementptr i8, i8* %_load_rsp_ptr_77, i64 16
  %329 = add i64 %324, 16, !mcsema_real_eip !85
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %329, i64* %RSP_val, !mcsema_real_eip !85
  %330 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  store i64 %330, i64* %RAX, !mcsema_real_eip !85
  %331 = load i64, i64* %RBX_val, !mcsema_real_eip !85
  store i64 %331, i64* %RBX, !mcsema_real_eip !85
  %332 = load i64, i64* %RCX_val, !mcsema_real_eip !85
  store i64 %332, i64* %RCX, !mcsema_real_eip !85
  %333 = load i64, i64* %RDX_val, !mcsema_real_eip !85
  store i64 %333, i64* %RDX, !mcsema_real_eip !85
  %334 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  store i64 %334, i64* %RSI, !mcsema_real_eip !85
  %335 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  store i64 %335, i64* %RDI, !mcsema_real_eip !85
  %_load_rsp_ptr_80 = load i8*, i8** %_RSP_ptr_
  %336 = load i64, i64* %RSP_val, !mcsema_real_eip !85
  %_new_ptr2int_81 = ptrtoint i8* %_load_rsp_ptr_80 to i64
  store volatile i64 %_new_ptr2int_81, i64* %RSP
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %337 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_ptr2int_83 = ptrtoint i8* %_load_rbp_ptr_82 to i64
  store volatile i64 %_new_ptr2int_83, i64* %RBP
  %338 = load i64, i64* %R8_val, !mcsema_real_eip !85
  store i64 %338, i64* %R8, !mcsema_real_eip !85
  %339 = load i64, i64* %R9_val, !mcsema_real_eip !85
  store i64 %339, i64* %R9, !mcsema_real_eip !85
  %340 = load i64, i64* %R10_val, !mcsema_real_eip !85
  store i64 %340, i64* %R10, !mcsema_real_eip !85
  %341 = load i64, i64* %R11_val, !mcsema_real_eip !85
  store i64 %341, i64* %R11, !mcsema_real_eip !85
  %342 = load i64, i64* %R12_val, !mcsema_real_eip !85
  store i64 %342, i64* %R12, !mcsema_real_eip !85
  %343 = load i64, i64* %R13_val, !mcsema_real_eip !85
  store i64 %343, i64* %R13, !mcsema_real_eip !85
  %344 = load i64, i64* %R14_val, !mcsema_real_eip !85
  store i64 %344, i64* %R14, !mcsema_real_eip !85
  %345 = load i64, i64* %R15_val, !mcsema_real_eip !85
  store i64 %345, i64* %R15, !mcsema_real_eip !85
  %346 = load i64, i64* %RIP_val, !mcsema_real_eip !85
  store i64 %346, i64* %RIP, !mcsema_real_eip !85
  %347 = load i1, i1* %CF_val, !mcsema_real_eip !85
  store i1 %347, i1* %CF, align 1, !mcsema_real_eip !85
  %348 = load i1, i1* %PF_val, !mcsema_real_eip !85
  store i1 %348, i1* %PF, align 1, !mcsema_real_eip !85
  %349 = load i1, i1* %AF_val, !mcsema_real_eip !85
  store i1 %349, i1* %AF, align 1, !mcsema_real_eip !85
  %350 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  store i1 %350, i1* %ZF, align 1, !mcsema_real_eip !85
  %351 = load i1, i1* %SF_val, !mcsema_real_eip !85
  store i1 %351, i1* %SF, align 1, !mcsema_real_eip !85
  %352 = load i1, i1* %OF_val, !mcsema_real_eip !85
  store i1 %352, i1* %OF, align 1, !mcsema_real_eip !85
  %353 = load i1, i1* %DF_val, !mcsema_real_eip !85
  store i1 %353, i1* %DF, align 1, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !85
  %354 = load i1, i1* %FPU_B_val, !mcsema_real_eip !85
  store i1 %354, i1* %FPU_B, align 1, !mcsema_real_eip !85
  %355 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !85
  store i1 %355, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  %356 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !85
  store i3 %356, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  %357 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !85
  store i1 %357, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  %358 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !85
  store i1 %358, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  %359 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !85
  store i1 %359, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  %360 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !85
  store i1 %360, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  %361 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !85
  store i1 %361, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  %362 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !85
  store i1 %362, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  %363 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !85
  store i1 %363, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  %364 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !85
  store i1 %364, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  %365 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !85
  store i1 %365, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  %366 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !85
  store i1 %366, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  %367 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !85
  store i1 %367, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  %368 = load i1, i1* %FPU_X_val, !mcsema_real_eip !85
  store i1 %368, i1* %FPU_X, align 1, !mcsema_real_eip !85
  %369 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !85
  store i2 %369, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  %370 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !85
  store i2 %370, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  %371 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !85
  store i1 %371, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  %372 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !85
  store i1 %372, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  %373 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !85
  store i1 %373, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  %374 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !85
  store i1 %374, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  %375 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !85
  store i1 %375, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  %376 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !85
  store i1 %376, i1* %FPU_IM, align 1, !mcsema_real_eip !85
  %_ptr_to_int_369 = ptrtoint i64* %53 to i64
  %_local_end_to_int_370 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_371 = bitcast i64* %53 to i8*
  %_offset_above_rbp_372 = sub i64 %_ptr_to_int_369, %_local_end_to_int_370
  %_pot_address_in_parent_stack_373 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_372
  %_cond1_374 = icmp ugt i8* %_ptr_bt_371, %_local_stack_end_ptr_
  %_cond2_1_375 = icmp ugt i8* %_ptr_bt_371, %_parent_stack_end_ptr_
  %_cond2_2_376 = icmp ult i8* %_ptr_bt_371, %_parent_stack_start_ptr_
  %_cond2_377 = or i1 %_cond2_1_375, %_cond2_2_376
  %_cond4_378 = icmp ule i8* %_pot_address_in_parent_stack_373, %_parent_stack_end_ptr_
  %_cond1_n_cond2_379 = and i1 %_cond1_374, %_cond2_377
  %_cond1_n_cond2_cond3_380 = and i1 %_cond1_n_cond2_379, %_cond4_378
  br i1 %_cond1_n_cond2_cond3_380, label %377, label %378

; <label>:377:                                    ; preds = %327
  %_address_in_parent_stack_381 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_372
  %_address_in_parent_stack_bt_382 = bitcast i8* %_address_in_parent_stack_381 to i64*
  br label %378

; <label>:378:                                    ; preds = %327, %377
  %379 = phi i64* [ %53, %327 ], [ %_address_in_parent_stack_bt_382, %377 ]
  %_new_load_383 = load i64, i64* %379
  store i64 %_new_load_383, i64* %52, align 4
  %380 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !85
  store i16 %380, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  %381 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !85
  store i64 %381, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !85
  %382 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !85
  store i16 %382, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  %383 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !85
  store i64 %383, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !85
  %384 = load i128, i128* %XMM0_val, !mcsema_real_eip !85
  store i128 %384, i128* %XMM0, align 1, !mcsema_real_eip !85
  %385 = load i128, i128* %XMM1_val, !mcsema_real_eip !85
  store i128 %385, i128* %XMM1, align 1, !mcsema_real_eip !85
  %386 = load i128, i128* %XMM2_val, !mcsema_real_eip !85
  store i128 %386, i128* %XMM2, align 1, !mcsema_real_eip !85
  %387 = load i128, i128* %XMM3_val, !mcsema_real_eip !85
  store i128 %387, i128* %XMM3, align 1, !mcsema_real_eip !85
  %388 = load i128, i128* %XMM4_val, !mcsema_real_eip !85
  store i128 %388, i128* %XMM4, align 1, !mcsema_real_eip !85
  %389 = load i128, i128* %XMM5_val, !mcsema_real_eip !85
  store i128 %389, i128* %XMM5, align 1, !mcsema_real_eip !85
  %390 = load i128, i128* %XMM6_val, !mcsema_real_eip !85
  store i128 %390, i128* %XMM6, align 1, !mcsema_real_eip !85
  %391 = load i128, i128* %XMM7_val, !mcsema_real_eip !85
  store i128 %391, i128* %XMM7, align 1, !mcsema_real_eip !85
  %392 = load i128, i128* %XMM8_val, !mcsema_real_eip !85
  store i128 %392, i128* %XMM8, align 1, !mcsema_real_eip !85
  %393 = load i128, i128* %XMM9_val, !mcsema_real_eip !85
  store i128 %393, i128* %XMM9, align 1, !mcsema_real_eip !85
  %394 = load i128, i128* %XMM10_val, !mcsema_real_eip !85
  store i128 %394, i128* %XMM10, align 1, !mcsema_real_eip !85
  %395 = load i128, i128* %XMM11_val, !mcsema_real_eip !85
  store i128 %395, i128* %XMM11, align 1, !mcsema_real_eip !85
  %396 = load i128, i128* %XMM12_val, !mcsema_real_eip !85
  store i128 %396, i128* %XMM12, align 1, !mcsema_real_eip !85
  %397 = load i128, i128* %XMM13_val, !mcsema_real_eip !85
  store i128 %397, i128* %XMM13, align 1, !mcsema_real_eip !85
  %398 = load i128, i128* %XMM14_val, !mcsema_real_eip !85
  store i128 %398, i128* %XMM14, align 1, !mcsema_real_eip !85
  %399 = load i128, i128* %XMM15_val, !mcsema_real_eip !85
  store i128 %399, i128* %XMM15, align 1, !mcsema_real_eip !85
  %400 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !85
  store i64 %400, i64* %STACK_BASE, align 1, !mcsema_real_eip !85
  %401 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !85
  store i64 %401, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !85
  ret void, !mcsema_real_eip !85
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 129, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 132, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 136, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 143, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 150, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 157, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 169, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 171, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 176, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 180, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!13 = !{i64 186, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = !{i64 190, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!15 = !{i64 197, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = !{i64 201, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!17 = !{i64 208, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!18 = !{i64 212, [17 x i8] c"\09movq\09%rsp, %rdi\00"}
!19 = !{i64 215, [20 x i8] c"\09movq\09%rax, 8(%rdi)\00"}
!20 = !{i64 219, [22 x i8] c"\09leaq\09-16(%rbp), %rax\00"}
!21 = !{i64 223, [19 x i8] c"\09movq\09%rax, (%rdi)\00"}
!22 = !{i64 226, [15 x i8] c"\09movl\09$1, %ecx\00"}
!23 = !{i64 231, [15 x i8] c"\09movl\09$2, %edx\00"}
!24 = !{i64 241, [17 x i8] c"\09movl\09%ecx, %edi\00"}
!25 = !{i64 243, [22 x i8] c"\09movl\09%esi, -60(%rbp)\00"}
!26 = !{i64 246, [17 x i8] c"\09movl\09%edx, %esi\00"}
!27 = !{i64 248, [22 x i8] c"\09movl\09-60(%rbp), %r8d\00"}
!28 = !{i64 252, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!29 = !{i64 255, [17 x i8] c"\09movl\09%r8d, %edx\00"}
!30 = !{i64 258, [22 x i8] c"\09movl\09-64(%rbp), %r8d\00"}
!31 = !{i64 262, [22 x i8] c"\09movl\09-60(%rbp), %r9d\00"}
!32 = !{i64 266, [12 x i8] c"\09callq\09-271\00"}
!33 = !{i64 271, [22 x i8] c"\09movl\09%edx, -48(%rbp)\00"}
!34 = !{i64 274, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!35 = !{i64 278, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!36 = !{i64 282, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!37 = !{i64 286, [22 x i8] c"\09movl\09-48(%rbp), %ecx\00"}
!38 = !{i64 289, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!39 = !{i64 292, [22 x i8] c"\09movl\09-40(%rbp), %ecx\00"}
!40 = !{i64 295, [22 x i8] c"\09addl\09-36(%rbp), %ecx\00"}
!41 = !{i64 298, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!42 = !{i64 301, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!43 = !{i64 303, [16 x i8] c"\09addq\09$80, %rsp\00"}
!44 = !{i64 307, [11 x i8] c"\09popq\09%rbp\00"}
!45 = !{i64 308, [6 x i8] c"\09retq\00"}
!46 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!47 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!48 = !{i64 4, [21 x i8] c"\09movq\0924(%rbp), %rax\00"}
!49 = !{i64 8, [21 x i8] c"\09movq\0916(%rbp), %r10\00"}
!50 = !{i64 12, [22 x i8] c"\09movl\09%edi, -20(%rbp)\00"}
!51 = !{i64 15, [22 x i8] c"\09movl\09%esi, -24(%rbp)\00"}
!52 = !{i64 18, [22 x i8] c"\09movl\09%edx, -28(%rbp)\00"}
!53 = !{i64 21, [22 x i8] c"\09movl\09%ecx, -32(%rbp)\00"}
!54 = !{i64 24, [22 x i8] c"\09movl\09%r8d, -36(%rbp)\00"}
!55 = !{i64 28, [22 x i8] c"\09movl\09%r9d, -40(%rbp)\00"}
!56 = !{i64 32, [22 x i8] c"\09movq\09%r10, -48(%rbp)\00"}
!57 = !{i64 36, [22 x i8] c"\09movq\09%rax, -56(%rbp)\00"}
!58 = !{i64 40, [22 x i8] c"\09movq\09-48(%rbp), %r10\00"}
!59 = !{i64 44, [19 x i8] c"\09movl\09(%r10), %ecx\00"}
!60 = !{i64 47, [19 x i8] c"\09movl\09(%rax), %edx\00"}
!61 = !{i64 49, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!62 = !{i64 51, [22 x i8] c"\09movl\09%ecx, -72(%rbp)\00"}
!63 = !{i64 54, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!64 = !{i64 58, [20 x i8] c"\09movl\094(%rax), %ecx\00"}
!65 = !{i64 61, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!66 = !{i64 65, [20 x i8] c"\09movl\094(%rax), %edx\00"}
!67 = !{i64 68, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!68 = !{i64 70, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!69 = !{i64 73, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!70 = !{i64 77, [20 x i8] c"\09movl\098(%rax), %ecx\00"}
!71 = !{i64 80, [22 x i8] c"\09movq\09-56(%rbp), %rax\00"}
!72 = !{i64 84, [20 x i8] c"\09movl\098(%rax), %edx\00"}
!73 = !{i64 87, [17 x i8] c"\09addl\09%edx, %ecx\00"}
!74 = !{i64 89, [22 x i8] c"\09movl\09%ecx, -64(%rbp)\00"}
!75 = !{i64 92, [21 x i8] c"\09movl\09%ecx, -8(%rbp)\00"}
!76 = !{i64 95, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!77 = !{i64 99, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!78 = !{i64 103, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!79 = !{i64 106, [22 x i8] c"\09movl\09%ecx, -80(%rbp)\00"}
!80 = !{i64 109, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!81 = !{i64 113, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!82 = !{i64 117, [22 x i8] c"\09movq\09-88(%rbp), %rax\00"}
!83 = !{i64 121, [22 x i8] c"\09movl\09-80(%rbp), %edx\00"}
!84 = !{i64 124, [11 x i8] c"\09popq\09%rbp\00"}
!85 = !{i64 125, [6 x i8] c"\09retq\00"}
