; ModuleID = 'Output/test_26_1.clang.trans.bc'
source_filename = "Output/test_26_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_80(%struct.regs*) {
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -88
  %82 = add i64 %79, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %_trans_xor_, 16
  %85 = icmp eq i64 %84, 0
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 80
  %92 = icmp ult i64 %80, 80, !mcsema_real_eip !4
  store i1 %_trans_icmp_ne_7, i1* %CF_val, !mcsema_real_eip !4
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_8
  %93 = and i64 %_trans_xor_, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %_trans_xor_9, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %96 = add i64 %95, -4, !mcsema_real_eip !5
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %100 = add i64 %99, -16, !mcsema_real_eip !6
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  store i64 42949672970, i64* %_allin_new_bt_15, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %103 = add i64 %102, -8, !mcsema_real_eip !7
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !7
  store i64 24, i64* %RCX_val, !mcsema_real_eip !8
  store i64 24, i64* %RDI_val, !mcsema_real_eip !9
  %106 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !10
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %108 = add i64 %107, -24, !mcsema_real_eip !11
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !11
  store i64 %106, i64* %_allin_new_bt_21, !mcsema_real_eip !11
  %110 = load i64, i64* %RAX_val, !mcsema_real_eip !12
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !12
  %112 = bitcast i64* %111 to i32*
  store i32 5, i32* %112, !mcsema_real_eip !12
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %114 = add i64 %113, -24, !mcsema_real_eip !13
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !13
  %116 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !13
  store i64 %116, i64* %RAX_val, !mcsema_real_eip !13
  %117 = add i64 %116, 4, !mcsema_real_eip !14
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !14
  %119 = bitcast i64* %118 to i32*
  store i32 5, i32* %119, !mcsema_real_eip !14
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %121 = add i64 %120, -24, !mcsema_real_eip !15
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !15
  %123 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !15
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !15
  %124 = add i64 %123, 8, !mcsema_real_eip !16
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !16
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !16
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %128 = add i64 %127, -24, !mcsema_real_eip !17
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !17
  %130 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !17
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %131 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_new_ptr2int_32 = ptrtoint i8* %_load_rsp_ptr_31 to i64
  store volatile i64 %_new_ptr2int_32, i64* %RDI_val
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 8
  %132 = add i64 %131, 8, !mcsema_real_eip !19
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !19
  store i64 %130, i64* %_allin_new_bt_34, !mcsema_real_eip !19
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -16
  %135 = add i64 %134, -16, !mcsema_real_eip !20
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !20
  %137 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !20
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !20
  %138 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !21
  store i64 %137, i64* %139, !mcsema_real_eip !21
  store i64 1, i64* %RCX_val, !mcsema_real_eip !22
  store i64 2, i64* %RDX_val, !mcsema_real_eip !23
  store i64 1, i64* %RDI_val, !mcsema_real_eip !24
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -60
  %141 = add i64 %140, -60, !mcsema_real_eip !25
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !25
  %143 = bitcast i64* %_allin_new_bt_40 to i32*
  store i32 3, i32* %143, !mcsema_real_eip !25
  %144 = load i64, i64* %RDX_val, !mcsema_real_eip !26
  %145 = and i64 %144, 4294967295
  store i64 %145, i64* %RSI_val, !mcsema_real_eip !26
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -60
  %147 = add i64 %146, -60, !mcsema_real_eip !27
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !27
  %149 = bitcast i64* %_allin_new_bt_43 to i32*
  %150 = load i32, i32* %149, !mcsema_real_eip !27
  %151 = zext i32 %150 to i64, !mcsema_real_eip !27
  store i64 %151, i64* %R8_val, !mcsema_real_eip !27
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -64
  %153 = add i64 %152, -64, !mcsema_real_eip !28
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !28
  %155 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %156 = trunc i64 %155 to i32, !mcsema_real_eip !28
  %157 = bitcast i64* %_allin_new_bt_46 to i32*
  store i32 %156, i32* %157, !mcsema_real_eip !28
  %158 = load i64, i64* %R8_val, !mcsema_real_eip !29
  %159 = and i64 %158, 4294967295
  store i64 %159, i64* %RDX_val, !mcsema_real_eip !29
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %160 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -64
  %161 = add i64 %160, -64, !mcsema_real_eip !30
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !30
  %163 = bitcast i64* %_allin_new_bt_49 to i32*
  %164 = load i32, i32* %163, !mcsema_real_eip !30
  %165 = zext i32 %164 to i64, !mcsema_real_eip !30
  store i64 %165, i64* %R8_val, !mcsema_real_eip !30
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -60
  %167 = add i64 %166, -60, !mcsema_real_eip !31
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !31
  %169 = bitcast i64* %_allin_new_bt_52 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !31
  %171 = zext i32 %170 to i64, !mcsema_real_eip !31
  store i64 %171, i64* %R9_val, !mcsema_real_eip !31
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %172 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %173 = add i64 %172, -8
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !32
  store i64 -4981261766360305936, i64* %_allin_new_bt_55, !mcsema_real_eip !32
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %173, i64* %RSP_val, !mcsema_real_eip !32
  %175 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  store i64 %175, i64* %RAX, !mcsema_real_eip !32
  %176 = load i64, i64* %RBX_val, !mcsema_real_eip !32
  store i64 %176, i64* %RBX, !mcsema_real_eip !32
  %177 = load i64, i64* %RCX_val, !mcsema_real_eip !32
  store i64 %177, i64* %RCX, !mcsema_real_eip !32
  %178 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  store i64 %178, i64* %RDX, !mcsema_real_eip !32
  %179 = load i64, i64* %RSI_val, !mcsema_real_eip !32
  store i64 %179, i64* %RSI, !mcsema_real_eip !32
  %180 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  store i64 %180, i64* %RDI, !mcsema_real_eip !32
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %181 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %_new_ptr2int_57 = ptrtoint i8* %_load_rsp_ptr_56 to i64
  store volatile i64 %_new_ptr2int_57, i64* %RSP
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %182 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_ptr2int_59 = ptrtoint i8* %_load_rbp_ptr_58 to i64
  store volatile i64 %_new_ptr2int_59, i64* %RBP
  %183 = load i64, i64* %R8_val, !mcsema_real_eip !32
  store i64 %183, i64* %R8, !mcsema_real_eip !32
  %184 = load i64, i64* %R9_val, !mcsema_real_eip !32
  store i64 %184, i64* %R9, !mcsema_real_eip !32
  %185 = load i64, i64* %R10_val, !mcsema_real_eip !32
  store i64 %185, i64* %R10, !mcsema_real_eip !32
  %186 = load i64, i64* %R11_val, !mcsema_real_eip !32
  store i64 %186, i64* %R11, !mcsema_real_eip !32
  %187 = load i64, i64* %R12_val, !mcsema_real_eip !32
  store i64 %187, i64* %R12, !mcsema_real_eip !32
  %188 = load i64, i64* %R13_val, !mcsema_real_eip !32
  store i64 %188, i64* %R13, !mcsema_real_eip !32
  %189 = load i64, i64* %R14_val, !mcsema_real_eip !32
  store i64 %189, i64* %R14, !mcsema_real_eip !32
  %190 = load i64, i64* %R15_val, !mcsema_real_eip !32
  store i64 %190, i64* %R15, !mcsema_real_eip !32
  %191 = load i64, i64* %RIP_val, !mcsema_real_eip !32
  store i64 %191, i64* %RIP, !mcsema_real_eip !32
  %192 = load i1, i1* %CF_val, !mcsema_real_eip !32
  store i1 %192, i1* %CF, align 1, !mcsema_real_eip !32
  %193 = load i1, i1* %PF_val, !mcsema_real_eip !32
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !32
  %194 = load i1, i1* %AF_val, !mcsema_real_eip !32
  store i1 %194, i1* %AF, align 1, !mcsema_real_eip !32
  %195 = load i1, i1* %ZF_val, !mcsema_real_eip !32
  store i1 %195, i1* %ZF, align 1, !mcsema_real_eip !32
  %196 = load i1, i1* %SF_val, !mcsema_real_eip !32
  store i1 %196, i1* %SF, align 1, !mcsema_real_eip !32
  %197 = load i1, i1* %OF_val, !mcsema_real_eip !32
  store i1 %197, i1* %OF, align 1, !mcsema_real_eip !32
  %198 = load i1, i1* %DF_val, !mcsema_real_eip !32
  store i1 %198, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %199 = load i1, i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %199, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %200 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %200, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %201 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %201, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %202 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %202, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %203 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %203, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %204 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %204, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %205 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %205, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %206 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %206, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %207 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %207, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %208 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %208, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %209 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %209, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %210 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %210, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %211 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %211, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %212 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %212, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %213 = load i1, i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %213, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %214 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %214, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %215 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %215, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %216 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %216, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %217 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %217, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %218 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %218, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %219 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %219, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %220 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %220, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %221 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %221, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %222 = load i64, i64* %53, align 4
  store i64 %222, i64* %52, align 4
  %223 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %223, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %224 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %224, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %225 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %225, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %226 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %226, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %227 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !32
  store i11 %227, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  %228 = load i128, i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %228, i128* %XMM0, align 1, !mcsema_real_eip !32
  %229 = load i128, i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %229, i128* %XMM1, align 1, !mcsema_real_eip !32
  %230 = load i128, i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %230, i128* %XMM2, align 1, !mcsema_real_eip !32
  %231 = load i128, i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %231, i128* %XMM3, align 1, !mcsema_real_eip !32
  %232 = load i128, i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %232, i128* %XMM4, align 1, !mcsema_real_eip !32
  %233 = load i128, i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %233, i128* %XMM5, align 1, !mcsema_real_eip !32
  %234 = load i128, i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %234, i128* %XMM6, align 1, !mcsema_real_eip !32
  %235 = load i128, i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %235, i128* %XMM7, align 1, !mcsema_real_eip !32
  %236 = load i128, i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %236, i128* %XMM8, align 1, !mcsema_real_eip !32
  %237 = load i128, i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %237, i128* %XMM9, align 1, !mcsema_real_eip !32
  %238 = load i128, i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %238, i128* %XMM10, align 1, !mcsema_real_eip !32
  %239 = load i128, i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %239, i128* %XMM11, align 1, !mcsema_real_eip !32
  %240 = load i128, i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %240, i128* %XMM12, align 1, !mcsema_real_eip !32
  %241 = load i128, i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %241, i128* %XMM13, align 1, !mcsema_real_eip !32
  %242 = load i128, i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %242, i128* %XMM14, align 1, !mcsema_real_eip !32
  %243 = load i128, i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %243, i128* %XMM15, align 1, !mcsema_real_eip !32
  %244 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %244, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %245 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %245, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_94)
  %246 = load i64, i64* %RAX, !mcsema_real_eip !32
  store i64 %246, i64* %RAX_val, !mcsema_real_eip !32
  %247 = load i64, i64* %RBX, !mcsema_real_eip !32
  store i64 %247, i64* %RBX_val, !mcsema_real_eip !32
  %248 = load i64, i64* %RCX, !mcsema_real_eip !32
  store i64 %248, i64* %RCX_val, !mcsema_real_eip !32
  %249 = load i64, i64* %RDX, !mcsema_real_eip !32
  store i64 %249, i64* %RDX_val, !mcsema_real_eip !32
  %250 = load i64, i64* %RSI, !mcsema_real_eip !32
  store i64 %250, i64* %RSI_val, !mcsema_real_eip !32
  %251 = load i64, i64* %RDI, !mcsema_real_eip !32
  store i64 %251, i64* %RDI_val, !mcsema_real_eip !32
  %252 = load i64, i64* %RSP, !mcsema_real_eip !32
  store i64 %252, i64* %RSP_val, !mcsema_real_eip !32
  %253 = load i64, i64* %RBP, !mcsema_real_eip !32
  store i64 %253, i64* %RBP_val, !mcsema_real_eip !32
  %254 = load i64, i64* %R8, !mcsema_real_eip !32
  store i64 %254, i64* %R8_val, !mcsema_real_eip !32
  %255 = load i64, i64* %R9, !mcsema_real_eip !32
  store i64 %255, i64* %R9_val, !mcsema_real_eip !32
  %256 = load i64, i64* %R10, !mcsema_real_eip !32
  store i64 %256, i64* %R10_val, !mcsema_real_eip !32
  %257 = load i64, i64* %R11, !mcsema_real_eip !32
  store i64 %257, i64* %R11_val, !mcsema_real_eip !32
  %258 = load i64, i64* %R12, !mcsema_real_eip !32
  store i64 %258, i64* %R12_val, !mcsema_real_eip !32
  %259 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %259, i64* %R13_val, !mcsema_real_eip !32
  %260 = load i64, i64* %R14, !mcsema_real_eip !32
  store i64 %260, i64* %R14_val, !mcsema_real_eip !32
  %261 = load i64, i64* %R15, !mcsema_real_eip !32
  store i64 %261, i64* %R15_val, !mcsema_real_eip !32
  %262 = load i64, i64* %RIP, !mcsema_real_eip !32
  store i64 %262, i64* %RIP_val, !mcsema_real_eip !32
  %263 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %263, i1* %CF_val, !mcsema_real_eip !32
  %264 = load i1, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %264, i1* %PF_val, !mcsema_real_eip !32
  %265 = load i1, i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %265, i1* %AF_val, !mcsema_real_eip !32
  %266 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %266, i1* %ZF_val, !mcsema_real_eip !32
  %267 = load i1, i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %267, i1* %SF_val, !mcsema_real_eip !32
  %268 = load i1, i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %268, i1* %OF_val, !mcsema_real_eip !32
  %269 = load i1, i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %269, i1* %DF_val, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %270 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %270, i1* %FPU_B_val, !mcsema_real_eip !32
  %271 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %271, i1* %FPU_C3_val, !mcsema_real_eip !32
  %272 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %272, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %273 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %273, i1* %FPU_C2_val, !mcsema_real_eip !32
  %274 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %274, i1* %FPU_C1_val, !mcsema_real_eip !32
  %275 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %275, i1* %FPU_C0_val, !mcsema_real_eip !32
  %276 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %276, i1* %FPU_ES_val, !mcsema_real_eip !32
  %277 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %277, i1* %FPU_SF_val, !mcsema_real_eip !32
  %278 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %278, i1* %FPU_PE_val, !mcsema_real_eip !32
  %279 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %279, i1* %FPU_UE_val, !mcsema_real_eip !32
  %280 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %280, i1* %FPU_OE_val, !mcsema_real_eip !32
  %281 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %281, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %282 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %282, i1* %FPU_DE_val, !mcsema_real_eip !32
  %283 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %283, i1* %FPU_IE_val, !mcsema_real_eip !32
  %284 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %284, i1* %FPU_X_val, !mcsema_real_eip !32
  %285 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %285, i2* %FPU_RC_val, !mcsema_real_eip !32
  %286 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %286, i2* %FPU_PC_val, !mcsema_real_eip !32
  %287 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %287, i1* %FPU_PM_val, !mcsema_real_eip !32
  %288 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %288, i1* %FPU_UM_val, !mcsema_real_eip !32
  %289 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %289, i1* %FPU_OM_val, !mcsema_real_eip !32
  %290 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %290, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %291 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %291, i1* %FPU_DM_val, !mcsema_real_eip !32
  %292 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %292, i1* %FPU_IM_val, !mcsema_real_eip !32
  %293 = load i64, i64* %52, align 4
  store i64 %293, i64* %53, align 4
  %294 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %294, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %295 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %295, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %296 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %296, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %297 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %297, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %298 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  store i11 %298, i11* %FPU_FOPCODE_val, !mcsema_real_eip !32
  %299 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %299, i128* %XMM0_val, !mcsema_real_eip !32
  %300 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %300, i128* %XMM1_val, !mcsema_real_eip !32
  %301 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %301, i128* %XMM2_val, !mcsema_real_eip !32
  %302 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %302, i128* %XMM3_val, !mcsema_real_eip !32
  %303 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %303, i128* %XMM4_val, !mcsema_real_eip !32
  %304 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %304, i128* %XMM5_val, !mcsema_real_eip !32
  %305 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %305, i128* %XMM6_val, !mcsema_real_eip !32
  %306 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %306, i128* %XMM7_val, !mcsema_real_eip !32
  %307 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %307, i128* %XMM8_val, !mcsema_real_eip !32
  %308 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %308, i128* %XMM9_val, !mcsema_real_eip !32
  %309 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %309, i128* %XMM10_val, !mcsema_real_eip !32
  %310 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %310, i128* %XMM11_val, !mcsema_real_eip !32
  %311 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %311, i128* %XMM12_val, !mcsema_real_eip !32
  %312 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %312, i128* %XMM13_val, !mcsema_real_eip !32
  %313 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %313, i128* %XMM14_val, !mcsema_real_eip !32
  %314 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %314, i128* %XMM15_val, !mcsema_real_eip !32
  %315 = load i64, i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %315, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %316 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %316, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %317 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -48
  %318 = add i64 %317, -48, !mcsema_real_eip !33
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !33
  %320 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  %321 = trunc i64 %320 to i32, !mcsema_real_eip !33
  %322 = bitcast i64* %_allin_new_bt_62 to i32*
  store i32 %321, i32* %322, !mcsema_real_eip !33
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %323 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -56
  %324 = add i64 %323, -56, !mcsema_real_eip !34
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !34
  %326 = load i64, i64* %RAX_val, !mcsema_real_eip !34
  store i64 %326, i64* %_allin_new_bt_65, !mcsema_real_eip !34
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %327 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -56
  %328 = add i64 %327, -56, !mcsema_real_eip !35
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !35
  %330 = load i64, i64* %_allin_new_bt_68, !mcsema_real_eip !35
  store i64 %330, i64* %RAX_val, !mcsema_real_eip !35
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -40
  %331 = add i64 %327, -40, !mcsema_real_eip !36
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !36
  store i64 %330, i64* %_allin_new_bt_70, !mcsema_real_eip !36
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %333 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -48
  %334 = add i64 %333, -48, !mcsema_real_eip !37
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !37
  %336 = bitcast i64* %_allin_new_bt_73 to i32*
  %337 = load i32, i32* %336, !mcsema_real_eip !37
  %338 = zext i32 %337 to i64, !mcsema_real_eip !37
  store i64 %338, i64* %RCX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %339 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -32
  %340 = add i64 %339, -32, !mcsema_real_eip !38
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !38
  %342 = bitcast i64* %_allin_new_bt_76 to i32*
  store i32 %337, i32* %342, !mcsema_real_eip !38
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %343 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -40
  %344 = add i64 %343, -40, !mcsema_real_eip !39
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !39
  %346 = bitcast i64* %_allin_new_bt_79 to i32*
  %347 = load i32, i32* %346, !mcsema_real_eip !39
  %348 = zext i32 %347 to i64, !mcsema_real_eip !39
  store i64 %348, i64* %RCX_val, !mcsema_real_eip !39
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %349 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -36
  %350 = add i64 %349, -36, !mcsema_real_eip !40
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !40
  %352 = bitcast i64* %_allin_new_bt_82 to i32*
  %353 = load i32, i32* %352, !mcsema_real_eip !40
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %347, i32 %353)
  %354 = extractvalue { i32, i1 } %uadd, 0
  %355 = xor i32 %354, %353, !mcsema_real_eip !40
  %356 = xor i32 %355, %347, !mcsema_real_eip !40
  %357 = and i32 %356, 16, !mcsema_real_eip !40
  %358 = icmp ne i32 %357, 0, !mcsema_real_eip !40
  store i1 %358, i1* %AF_val, !mcsema_real_eip !40
  %359 = icmp slt i32 %354, 0
  store i1 %359, i1* %SF_val, !mcsema_real_eip !40
  %360 = icmp eq i32 %354, 0, !mcsema_real_eip !40
  store i1 %360, i1* %ZF_val, !mcsema_real_eip !40
  %361 = xor i32 %347, -2147483648, !mcsema_real_eip !40
  %362 = xor i32 %361, %353, !mcsema_real_eip !40
  %363 = and i32 %355, %362, !mcsema_real_eip !40
  %364 = icmp slt i32 %363, 0
  store i1 %364, i1* %OF_val, !mcsema_real_eip !40
  %365 = trunc i32 %354 to i8, !mcsema_real_eip !40
  %366 = tail call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !40
  %367 = and i8 %366, 1
  %368 = icmp eq i8 %367, 0
  store i1 %368, i1* %PF_val, !mcsema_real_eip !40
  %369 = extractvalue { i32, i1 } %uadd, 1
  store i1 %369, i1* %CF_val, !mcsema_real_eip !40
  %370 = zext i32 %354 to i64, !mcsema_real_eip !40
  store i64 %370, i64* %RCX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -32
  %372 = add i64 %371, -32, !mcsema_real_eip !41
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !41
  %374 = bitcast i64* %_allin_new_bt_85 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !41
  %376 = add i32 %354, %375
  %377 = zext i32 %376 to i64, !mcsema_real_eip !41
  store i64 %377, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %377, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %378 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %_new_ptr2int_87 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_87, i64 80)
  %379 = extractvalue { i64, i1 } %uadd212, 0
  %380 = xor i64 %379, %_new_ptr2int_87, !mcsema_real_eip !43
  %381 = and i64 %380, 16
  %382 = icmp eq i64 %381, 0
  store i1 %382, i1* %AF_val, !mcsema_real_eip !43
  %383 = icmp slt i64 %379, 0
  store i1 %383, i1* %SF_val, !mcsema_real_eip !43
  %384 = icmp eq i64 %379, 0, !mcsema_real_eip !43
  store i1 %384, i1* %ZF_val, !mcsema_real_eip !43
  %385 = xor i64 %_new_ptr2int_87, -9223372036854775808, !mcsema_real_eip !43
  %386 = and i64 %380, %385, !mcsema_real_eip !43
  %387 = icmp slt i64 %386, 0
  store i1 %387, i1* %OF_val, !mcsema_real_eip !43
  %388 = trunc i64 %379 to i8, !mcsema_real_eip !43
  %389 = tail call i8 @llvm.ctpop.i8(i8 %388), !mcsema_real_eip !43
  %390 = and i8 %389, 1
  %391 = icmp eq i8 %390, 0
  store i1 %391, i1* %PF_val, !mcsema_real_eip !43
  %392 = extractvalue { i64, i1 } %uadd212, 1
  store i1 %392, i1* %CF_val, !mcsema_real_eip !43
  %_new_int2ptr_ = inttoptr i64 %379 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %379, i64* %RSP_val, !mcsema_real_eip !43
  %393 = inttoptr i64 %379 to i64*, !mcsema_real_eip !44
  %394 = load i64, i64* %393, !mcsema_real_eip !44
  %_new_int2ptr_88 = inttoptr i64 %394 to i8*
  store volatile i8* %_new_int2ptr_88, i8** %_RBP_ptr_
  store i64 %394, i64* %RBP_val, !mcsema_real_eip !44
  %395 = add i64 %379, 16, !mcsema_real_eip !45
  %_new_int2ptr_89 = inttoptr i64 %395 to i8*
  store volatile i8* %_new_int2ptr_89, i8** %_RSP_ptr_
  store i64 %395, i64* %RSP_val, !mcsema_real_eip !45
  %396 = load i64, i64* %RAX_val, !mcsema_real_eip !45
  store i64 %396, i64* %RAX, !mcsema_real_eip !45
  %397 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %397, i64* %RBX, !mcsema_real_eip !45
  %398 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  store i64 %398, i64* %RCX, !mcsema_real_eip !45
  %399 = load i64, i64* %RDX_val, !mcsema_real_eip !45
  store i64 %399, i64* %RDX, !mcsema_real_eip !45
  %400 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %400, i64* %RSI, !mcsema_real_eip !45
  %401 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  store i64 %401, i64* %RDI, !mcsema_real_eip !45
  %_load_rsp_ptr_90 = load i8*, i8** %_RSP_ptr_
  %402 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %_new_ptr2int_91 = ptrtoint i8* %_load_rsp_ptr_90 to i64
  store volatile i64 %_new_ptr2int_91, i64* %RSP
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %403 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_ptr2int_93 = ptrtoint i8* %_load_rbp_ptr_92 to i64
  store volatile i64 %_new_ptr2int_93, i64* %RBP
  %404 = load i64, i64* %R8_val, !mcsema_real_eip !45
  store i64 %404, i64* %R8, !mcsema_real_eip !45
  %405 = load i64, i64* %R9_val, !mcsema_real_eip !45
  store i64 %405, i64* %R9, !mcsema_real_eip !45
  %406 = load i64, i64* %R10_val, !mcsema_real_eip !45
  store i64 %406, i64* %R10, !mcsema_real_eip !45
  %407 = load i64, i64* %R11_val, !mcsema_real_eip !45
  store i64 %407, i64* %R11, !mcsema_real_eip !45
  %408 = load i64, i64* %R12_val, !mcsema_real_eip !45
  store i64 %408, i64* %R12, !mcsema_real_eip !45
  %409 = load i64, i64* %R13_val, !mcsema_real_eip !45
  store i64 %409, i64* %R13, !mcsema_real_eip !45
  %410 = load i64, i64* %R14_val, !mcsema_real_eip !45
  store i64 %410, i64* %R14, !mcsema_real_eip !45
  %411 = load i64, i64* %R15_val, !mcsema_real_eip !45
  store i64 %411, i64* %R15, !mcsema_real_eip !45
  %412 = load i64, i64* %RIP_val, !mcsema_real_eip !45
  store i64 %412, i64* %RIP, !mcsema_real_eip !45
  %413 = load i1, i1* %CF_val, !mcsema_real_eip !45
  store i1 %413, i1* %CF, align 1, !mcsema_real_eip !45
  %414 = load i1, i1* %PF_val, !mcsema_real_eip !45
  store i1 %414, i1* %PF, align 1, !mcsema_real_eip !45
  %415 = load i1, i1* %AF_val, !mcsema_real_eip !45
  store i1 %415, i1* %AF, align 1, !mcsema_real_eip !45
  %416 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  store i1 %416, i1* %ZF, align 1, !mcsema_real_eip !45
  %417 = load i1, i1* %SF_val, !mcsema_real_eip !45
  store i1 %417, i1* %SF, align 1, !mcsema_real_eip !45
  %418 = load i1, i1* %OF_val, !mcsema_real_eip !45
  store i1 %418, i1* %OF, align 1, !mcsema_real_eip !45
  %419 = load i1, i1* %DF_val, !mcsema_real_eip !45
  store i1 %419, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  %420 = load i1, i1* %FPU_B_val, !mcsema_real_eip !45
  store i1 %420, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %421 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !45
  store i1 %421, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %422 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !45
  store i3 %422, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %423 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !45
  store i1 %423, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %424 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !45
  store i1 %424, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %425 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !45
  store i1 %425, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %426 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !45
  store i1 %426, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %427 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !45
  store i1 %427, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %428 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !45
  store i1 %428, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %429 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !45
  store i1 %429, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %430 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !45
  store i1 %430, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %431 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !45
  store i1 %431, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %432 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !45
  store i1 %432, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %433 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !45
  store i1 %433, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %434 = load i1, i1* %FPU_X_val, !mcsema_real_eip !45
  store i1 %434, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %435 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !45
  store i2 %435, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %436 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !45
  store i2 %436, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %437 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !45
  store i1 %437, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %438 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !45
  store i1 %438, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %439 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !45
  store i1 %439, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %440 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !45
  store i1 %440, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %441 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !45
  store i1 %441, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %442 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !45
  store i1 %442, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %443 = load i64, i64* %53, align 4
  store i64 %443, i64* %52, align 4
  %444 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  store i16 %444, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %445 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  store i64 %445, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  %446 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  store i16 %446, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %447 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  store i64 %447, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  %448 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !45
  store i11 %448, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !45
  %449 = load i128, i128* %XMM0_val, !mcsema_real_eip !45
  store i128 %449, i128* %XMM0, align 1, !mcsema_real_eip !45
  %450 = load i128, i128* %XMM1_val, !mcsema_real_eip !45
  store i128 %450, i128* %XMM1, align 1, !mcsema_real_eip !45
  %451 = load i128, i128* %XMM2_val, !mcsema_real_eip !45
  store i128 %451, i128* %XMM2, align 1, !mcsema_real_eip !45
  %452 = load i128, i128* %XMM3_val, !mcsema_real_eip !45
  store i128 %452, i128* %XMM3, align 1, !mcsema_real_eip !45
  %453 = load i128, i128* %XMM4_val, !mcsema_real_eip !45
  store i128 %453, i128* %XMM4, align 1, !mcsema_real_eip !45
  %454 = load i128, i128* %XMM5_val, !mcsema_real_eip !45
  store i128 %454, i128* %XMM5, align 1, !mcsema_real_eip !45
  %455 = load i128, i128* %XMM6_val, !mcsema_real_eip !45
  store i128 %455, i128* %XMM6, align 1, !mcsema_real_eip !45
  %456 = load i128, i128* %XMM7_val, !mcsema_real_eip !45
  store i128 %456, i128* %XMM7, align 1, !mcsema_real_eip !45
  %457 = load i128, i128* %XMM8_val, !mcsema_real_eip !45
  store i128 %457, i128* %XMM8, align 1, !mcsema_real_eip !45
  %458 = load i128, i128* %XMM9_val, !mcsema_real_eip !45
  store i128 %458, i128* %XMM9, align 1, !mcsema_real_eip !45
  %459 = load i128, i128* %XMM10_val, !mcsema_real_eip !45
  store i128 %459, i128* %XMM10, align 1, !mcsema_real_eip !45
  %460 = load i128, i128* %XMM11_val, !mcsema_real_eip !45
  store i128 %460, i128* %XMM11, align 1, !mcsema_real_eip !45
  %461 = load i128, i128* %XMM12_val, !mcsema_real_eip !45
  store i128 %461, i128* %XMM12, align 1, !mcsema_real_eip !45
  %462 = load i128, i128* %XMM13_val, !mcsema_real_eip !45
  store i128 %462, i128* %XMM13, align 1, !mcsema_real_eip !45
  %463 = load i128, i128* %XMM14_val, !mcsema_real_eip !45
  store i128 %463, i128* %XMM14, align 1, !mcsema_real_eip !45
  %464 = load i128, i128* %XMM15_val, !mcsema_real_eip !45
  store i128 %464, i128* %XMM15, align 1, !mcsema_real_eip !45
  %465 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !45
  store i64 %465, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  %466 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  store i64 %466, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  ret void, !mcsema_real_eip !45
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !46
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !46
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !46
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !46
  store i64 %78, i64* %81, !mcsema_real_eip !46
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !46
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !47
  %82 = add i64 %79, 16, !mcsema_real_eip !48
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !48
  %84 = load i64, i64* %83, !mcsema_real_eip !48
  store i64 %84, i64* %RAX_val, !mcsema_real_eip !48
  %85 = add i64 %79, 8, !mcsema_real_eip !49
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !49
  %87 = load i64, i64* %86, !mcsema_real_eip !49
  store i64 %87, i64* %R10_val, !mcsema_real_eip !49
  %88 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %89 = add i64 %88, -20, !mcsema_real_eip !50
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !50
  %91 = load i64, i64* %RDI_val, !mcsema_real_eip !50
  %92 = trunc i64 %91 to i32, !mcsema_real_eip !50
  %93 = bitcast i64* %90 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !50
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %95 = add i64 %94, -24, !mcsema_real_eip !51
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !51
  %97 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !51
  %99 = bitcast i64* %96 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !51
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %101 = add i64 %100, -28, !mcsema_real_eip !52
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !52
  %103 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  %104 = trunc i64 %103 to i32, !mcsema_real_eip !52
  %105 = bitcast i64* %102 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !52
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %107 = add i64 %106, -32, !mcsema_real_eip !53
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !53
  %109 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  %110 = trunc i64 %109 to i32, !mcsema_real_eip !53
  %111 = bitcast i64* %108 to i32*
  store i32 %110, i32* %111, !mcsema_real_eip !53
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %113 = add i64 %112, -36, !mcsema_real_eip !54
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !54
  %115 = load i64, i64* %R8_val, !mcsema_real_eip !54
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !54
  %117 = bitcast i64* %114 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !54
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %119 = add i64 %118, -40, !mcsema_real_eip !55
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !55
  %121 = load i64, i64* %R9_val, !mcsema_real_eip !55
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !55
  %123 = bitcast i64* %120 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !55
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %125 = add i64 %124, -48, !mcsema_real_eip !56
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !56
  %127 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %127, i64* %126, !mcsema_real_eip !56
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %129 = add i64 %128, -56, !mcsema_real_eip !57
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !57
  %131 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %131, i64* %130, !mcsema_real_eip !57
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %133 = add i64 %132, -48, !mcsema_real_eip !58
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !58
  %135 = load i64, i64* %134, !mcsema_real_eip !58
  store i64 %135, i64* %R10_val, !mcsema_real_eip !58
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !59
  %137 = bitcast i64* %136 to i32*
  %138 = load i32, i32* %137, !mcsema_real_eip !59
  %139 = zext i32 %138 to i64, !mcsema_real_eip !59
  store i64 %139, i64* %RCX_val, !mcsema_real_eip !59
  %140 = load i64, i64* %RAX_val, !mcsema_real_eip !60
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !60
  %142 = bitcast i64* %141 to i32*
  %143 = load i32, i32* %142, !mcsema_real_eip !60
  %144 = zext i32 %143 to i64, !mcsema_real_eip !60
  store i64 %144, i64* %RDX_val, !mcsema_real_eip !60
  %145 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !61
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %143, i32 %146)
  %147 = extractvalue { i32, i1 } %uadd, 0
  %148 = xor i32 %147, %146, !mcsema_real_eip !61
  %149 = xor i32 %148, %143, !mcsema_real_eip !61
  %150 = and i32 %149, 16, !mcsema_real_eip !61
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !61
  store i1 %151, i1* %AF_val, !mcsema_real_eip !61
  %152 = icmp slt i32 %147, 0
  store i1 %152, i1* %SF_val, !mcsema_real_eip !61
  %153 = icmp eq i32 %147, 0, !mcsema_real_eip !61
  store i1 %153, i1* %ZF_val, !mcsema_real_eip !61
  %154 = xor i32 %143, -2147483648, !mcsema_real_eip !61
  %155 = xor i32 %154, %146, !mcsema_real_eip !61
  %156 = and i32 %148, %155, !mcsema_real_eip !61
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF_val, !mcsema_real_eip !61
  %158 = trunc i32 %147 to i8, !mcsema_real_eip !61
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !61
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF_val, !mcsema_real_eip !61
  %162 = extractvalue { i32, i1 } %uadd, 1
  store i1 %162, i1* %CF_val, !mcsema_real_eip !61
  %163 = zext i32 %147 to i64, !mcsema_real_eip !61
  store i64 %163, i64* %RCX_val, !mcsema_real_eip !61
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %165 = add i64 %164, -72, !mcsema_real_eip !62
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !62
  %167 = bitcast i64* %166 to i32*
  store i32 %147, i32* %167, !mcsema_real_eip !62
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %169 = add i64 %168, -48, !mcsema_real_eip !63
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !63
  %171 = load i64, i64* %170, !mcsema_real_eip !63
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !63
  %172 = add i64 %171, 4, !mcsema_real_eip !64
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !64
  %174 = bitcast i64* %173 to i32*
  %175 = load i32, i32* %174, !mcsema_real_eip !64
  %176 = zext i32 %175 to i64, !mcsema_real_eip !64
  store i64 %176, i64* %RCX_val, !mcsema_real_eip !64
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %178 = add i64 %177, -56, !mcsema_real_eip !65
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !65
  %180 = load i64, i64* %179, !mcsema_real_eip !65
  store i64 %180, i64* %RAX_val, !mcsema_real_eip !65
  %181 = add i64 %180, 4, !mcsema_real_eip !66
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !66
  %183 = bitcast i64* %182 to i32*
  %184 = load i32, i32* %183, !mcsema_real_eip !66
  %185 = zext i32 %184 to i64, !mcsema_real_eip !66
  store i64 %185, i64* %RDX_val, !mcsema_real_eip !66
  %186 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %187 = trunc i64 %186 to i32, !mcsema_real_eip !67
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %187)
  %188 = extractvalue { i32, i1 } %uadd71, 0
  %189 = xor i32 %188, %187, !mcsema_real_eip !67
  %190 = xor i32 %189, %184, !mcsema_real_eip !67
  %191 = and i32 %190, 16, !mcsema_real_eip !67
  %192 = icmp ne i32 %191, 0, !mcsema_real_eip !67
  store i1 %192, i1* %AF_val, !mcsema_real_eip !67
  %193 = icmp slt i32 %188, 0
  store i1 %193, i1* %SF_val, !mcsema_real_eip !67
  %194 = icmp eq i32 %188, 0, !mcsema_real_eip !67
  store i1 %194, i1* %ZF_val, !mcsema_real_eip !67
  %195 = xor i32 %184, -2147483648, !mcsema_real_eip !67
  %196 = xor i32 %195, %187, !mcsema_real_eip !67
  %197 = and i32 %189, %196, !mcsema_real_eip !67
  %198 = icmp slt i32 %197, 0
  store i1 %198, i1* %OF_val, !mcsema_real_eip !67
  %199 = trunc i32 %188 to i8, !mcsema_real_eip !67
  %200 = tail call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !67
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  store i1 %202, i1* %PF_val, !mcsema_real_eip !67
  %203 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %203, i1* %CF_val, !mcsema_real_eip !67
  %204 = zext i32 %188 to i64, !mcsema_real_eip !67
  store i64 %204, i64* %RCX_val, !mcsema_real_eip !67
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %206 = add i64 %205, -68, !mcsema_real_eip !68
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !68
  %208 = bitcast i64* %207 to i32*
  store i32 %188, i32* %208, !mcsema_real_eip !68
  %209 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %210 = add i64 %209, -48, !mcsema_real_eip !69
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !69
  %212 = load i64, i64* %211, !mcsema_real_eip !69
  store i64 %212, i64* %RAX_val, !mcsema_real_eip !69
  %213 = add i64 %212, 8, !mcsema_real_eip !70
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !70
  %215 = bitcast i64* %214 to i32*
  %216 = load i32, i32* %215, !mcsema_real_eip !70
  %217 = zext i32 %216 to i64, !mcsema_real_eip !70
  store i64 %217, i64* %RCX_val, !mcsema_real_eip !70
  %218 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %219 = add i64 %218, -56, !mcsema_real_eip !71
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !71
  %221 = load i64, i64* %220, !mcsema_real_eip !71
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !71
  %222 = add i64 %221, 8, !mcsema_real_eip !72
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !72
  %224 = bitcast i64* %223 to i32*
  %225 = load i32, i32* %224, !mcsema_real_eip !72
  %226 = zext i32 %225 to i64, !mcsema_real_eip !72
  store i64 %226, i64* %RDX_val, !mcsema_real_eip !72
  %227 = load i64, i64* %RCX_val, !mcsema_real_eip !73
  %228 = trunc i64 %227 to i32, !mcsema_real_eip !73
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %228)
  %229 = extractvalue { i32, i1 } %uadd72, 0
  %230 = xor i32 %229, %228, !mcsema_real_eip !73
  %231 = xor i32 %230, %225, !mcsema_real_eip !73
  %232 = and i32 %231, 16, !mcsema_real_eip !73
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !73
  store i1 %233, i1* %AF_val, !mcsema_real_eip !73
  %234 = icmp slt i32 %229, 0
  store i1 %234, i1* %SF_val, !mcsema_real_eip !73
  %235 = icmp eq i32 %229, 0, !mcsema_real_eip !73
  store i1 %235, i1* %ZF_val, !mcsema_real_eip !73
  %236 = xor i32 %225, -2147483648, !mcsema_real_eip !73
  %237 = xor i32 %236, %228, !mcsema_real_eip !73
  %238 = and i32 %230, %237, !mcsema_real_eip !73
  %239 = icmp slt i32 %238, 0
  store i1 %239, i1* %OF_val, !mcsema_real_eip !73
  %240 = trunc i32 %229 to i8, !mcsema_real_eip !73
  %241 = tail call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !73
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  store i1 %243, i1* %PF_val, !mcsema_real_eip !73
  %244 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %244, i1* %CF_val, !mcsema_real_eip !73
  %245 = zext i32 %229 to i64, !mcsema_real_eip !73
  store i64 %245, i64* %RCX_val, !mcsema_real_eip !73
  %246 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %247 = add i64 %246, -64, !mcsema_real_eip !74
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !74
  %249 = bitcast i64* %248 to i32*
  store i32 %229, i32* %249, !mcsema_real_eip !74
  %250 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %251 = add i64 %250, -8, !mcsema_real_eip !75
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !75
  %253 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %254 = trunc i64 %253 to i32, !mcsema_real_eip !75
  %255 = bitcast i64* %252 to i32*
  store i32 %254, i32* %255, !mcsema_real_eip !75
  %256 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %257 = add i64 %256, -72, !mcsema_real_eip !76
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !76
  %259 = load i64, i64* %258, !mcsema_real_eip !76
  store i64 %259, i64* %RAX_val, !mcsema_real_eip !76
  %260 = add i64 %256, -16, !mcsema_real_eip !77
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !77
  store i64 %259, i64* %261, !mcsema_real_eip !77
  %262 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %263 = add i64 %262, -8, !mcsema_real_eip !78
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !78
  %265 = bitcast i64* %264 to i32*
  %266 = load i32, i32* %265, !mcsema_real_eip !78
  %267 = zext i32 %266 to i64, !mcsema_real_eip !78
  store i64 %267, i64* %RCX_val, !mcsema_real_eip !78
  %268 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %269 = add i64 %268, -80, !mcsema_real_eip !79
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !79
  %271 = bitcast i64* %270 to i32*
  store i32 %266, i32* %271, !mcsema_real_eip !79
  %272 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %273 = add i64 %272, -16, !mcsema_real_eip !80
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !80
  %275 = load i64, i64* %274, !mcsema_real_eip !80
  store i64 %275, i64* %RAX_val, !mcsema_real_eip !80
  %276 = add i64 %272, -88, !mcsema_real_eip !81
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !81
  store i64 %275, i64* %277, !mcsema_real_eip !81
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %279 = add i64 %278, -88, !mcsema_real_eip !82
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !82
  %281 = load i64, i64* %280, !mcsema_real_eip !82
  store i64 %281, i64* %RAX_val, !mcsema_real_eip !82
  %282 = add i64 %278, -80, !mcsema_real_eip !83
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !83
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !83
  %286 = zext i32 %285 to i64, !mcsema_real_eip !83
  store i64 %286, i64* %RDX_val, !mcsema_real_eip !83
  %287 = load i64, i64* %RSP_val, !mcsema_real_eip !84
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !84
  %289 = load i64, i64* %288, !mcsema_real_eip !84
  store i64 %289, i64* %RBP_val, !mcsema_real_eip !84
  %290 = add i64 %287, 16, !mcsema_real_eip !85
  store i64 %290, i64* %RSP_val, !mcsema_real_eip !85
  %291 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  store i64 %291, i64* %RAX, !mcsema_real_eip !85
  %292 = load i64, i64* %RBX_val, !mcsema_real_eip !85
  store i64 %292, i64* %RBX, !mcsema_real_eip !85
  %293 = load i64, i64* %RCX_val, !mcsema_real_eip !85
  store i64 %293, i64* %RCX, !mcsema_real_eip !85
  %294 = load i64, i64* %RDX_val, !mcsema_real_eip !85
  store i64 %294, i64* %RDX, !mcsema_real_eip !85
  %295 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  store i64 %295, i64* %RSI, !mcsema_real_eip !85
  %296 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  store i64 %296, i64* %RDI, !mcsema_real_eip !85
  %297 = load i64, i64* %RSP_val, !mcsema_real_eip !85
  store i64 %297, i64* %RSP, !mcsema_real_eip !85
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  store i64 %298, i64* %RBP, !mcsema_real_eip !85
  %299 = load i64, i64* %R8_val, !mcsema_real_eip !85
  store i64 %299, i64* %R8, !mcsema_real_eip !85
  %300 = load i64, i64* %R9_val, !mcsema_real_eip !85
  store i64 %300, i64* %R9, !mcsema_real_eip !85
  %301 = load i64, i64* %R10_val, !mcsema_real_eip !85
  store i64 %301, i64* %R10, !mcsema_real_eip !85
  %302 = load i64, i64* %R11_val, !mcsema_real_eip !85
  store i64 %302, i64* %R11, !mcsema_real_eip !85
  %303 = load i64, i64* %R12_val, !mcsema_real_eip !85
  store i64 %303, i64* %R12, !mcsema_real_eip !85
  %304 = load i64, i64* %R13_val, !mcsema_real_eip !85
  store i64 %304, i64* %R13, !mcsema_real_eip !85
  %305 = load i64, i64* %R14_val, !mcsema_real_eip !85
  store i64 %305, i64* %R14, !mcsema_real_eip !85
  %306 = load i64, i64* %R15_val, !mcsema_real_eip !85
  store i64 %306, i64* %R15, !mcsema_real_eip !85
  %307 = load i64, i64* %RIP_val, !mcsema_real_eip !85
  store i64 %307, i64* %RIP, !mcsema_real_eip !85
  %308 = load i1, i1* %CF_val, !mcsema_real_eip !85
  store i1 %308, i1* %CF, align 1, !mcsema_real_eip !85
  %309 = load i1, i1* %PF_val, !mcsema_real_eip !85
  store i1 %309, i1* %PF, align 1, !mcsema_real_eip !85
  %310 = load i1, i1* %AF_val, !mcsema_real_eip !85
  store i1 %310, i1* %AF, align 1, !mcsema_real_eip !85
  %311 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  store i1 %311, i1* %ZF, align 1, !mcsema_real_eip !85
  %312 = load i1, i1* %SF_val, !mcsema_real_eip !85
  store i1 %312, i1* %SF, align 1, !mcsema_real_eip !85
  %313 = load i1, i1* %OF_val, !mcsema_real_eip !85
  store i1 %313, i1* %OF, align 1, !mcsema_real_eip !85
  %314 = load i1, i1* %DF_val, !mcsema_real_eip !85
  store i1 %314, i1* %DF, align 1, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !85
  %315 = load i1, i1* %FPU_B_val, !mcsema_real_eip !85
  store i1 %315, i1* %FPU_B, align 1, !mcsema_real_eip !85
  %316 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !85
  store i1 %316, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  %317 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !85
  store i3 %317, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  %318 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !85
  store i1 %318, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  %319 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !85
  store i1 %319, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  %320 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !85
  store i1 %320, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  %321 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !85
  store i1 %321, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  %322 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !85
  store i1 %322, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  %323 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !85
  store i1 %323, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  %324 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !85
  store i1 %324, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  %325 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !85
  store i1 %325, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  %326 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !85
  store i1 %326, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  %327 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !85
  store i1 %327, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  %328 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !85
  store i1 %328, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  %329 = load i1, i1* %FPU_X_val, !mcsema_real_eip !85
  store i1 %329, i1* %FPU_X, align 1, !mcsema_real_eip !85
  %330 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !85
  store i2 %330, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  %331 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !85
  store i2 %331, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  %332 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !85
  store i1 %332, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  %333 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !85
  store i1 %333, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  %334 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !85
  store i1 %334, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  %335 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !85
  store i1 %335, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  %336 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !85
  store i1 %336, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  %337 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !85
  store i1 %337, i1* %FPU_IM, align 1, !mcsema_real_eip !85
  %338 = load i64, i64* %53, align 4
  store i64 %338, i64* %52, align 4
  %339 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !85
  store i16 %339, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  %340 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !85
  store i64 %340, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !85
  %341 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !85
  store i16 %341, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  %342 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !85
  store i64 %342, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !85
  %343 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !85
  store i11 %343, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !85
  %344 = load i128, i128* %XMM0_val, !mcsema_real_eip !85
  store i128 %344, i128* %XMM0, align 1, !mcsema_real_eip !85
  %345 = load i128, i128* %XMM1_val, !mcsema_real_eip !85
  store i128 %345, i128* %XMM1, align 1, !mcsema_real_eip !85
  %346 = load i128, i128* %XMM2_val, !mcsema_real_eip !85
  store i128 %346, i128* %XMM2, align 1, !mcsema_real_eip !85
  %347 = load i128, i128* %XMM3_val, !mcsema_real_eip !85
  store i128 %347, i128* %XMM3, align 1, !mcsema_real_eip !85
  %348 = load i128, i128* %XMM4_val, !mcsema_real_eip !85
  store i128 %348, i128* %XMM4, align 1, !mcsema_real_eip !85
  %349 = load i128, i128* %XMM5_val, !mcsema_real_eip !85
  store i128 %349, i128* %XMM5, align 1, !mcsema_real_eip !85
  %350 = load i128, i128* %XMM6_val, !mcsema_real_eip !85
  store i128 %350, i128* %XMM6, align 1, !mcsema_real_eip !85
  %351 = load i128, i128* %XMM7_val, !mcsema_real_eip !85
  store i128 %351, i128* %XMM7, align 1, !mcsema_real_eip !85
  %352 = load i128, i128* %XMM8_val, !mcsema_real_eip !85
  store i128 %352, i128* %XMM8, align 1, !mcsema_real_eip !85
  %353 = load i128, i128* %XMM9_val, !mcsema_real_eip !85
  store i128 %353, i128* %XMM9, align 1, !mcsema_real_eip !85
  %354 = load i128, i128* %XMM10_val, !mcsema_real_eip !85
  store i128 %354, i128* %XMM10, align 1, !mcsema_real_eip !85
  %355 = load i128, i128* %XMM11_val, !mcsema_real_eip !85
  store i128 %355, i128* %XMM11, align 1, !mcsema_real_eip !85
  %356 = load i128, i128* %XMM12_val, !mcsema_real_eip !85
  store i128 %356, i128* %XMM12, align 1, !mcsema_real_eip !85
  %357 = load i128, i128* %XMM13_val, !mcsema_real_eip !85
  store i128 %357, i128* %XMM13, align 1, !mcsema_real_eip !85
  %358 = load i128, i128* %XMM14_val, !mcsema_real_eip !85
  store i128 %358, i128* %XMM14, align 1, !mcsema_real_eip !85
  %359 = load i128, i128* %XMM15_val, !mcsema_real_eip !85
  store i128 %359, i128* %XMM15, align 1, !mcsema_real_eip !85
  %360 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !85
  store i64 %360, i64* %STACK_BASE, align 1, !mcsema_real_eip !85
  %361 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !85
  store i64 %361, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !85
  ret void, !mcsema_real_eip !85
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
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
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !46
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !46
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !46
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !46
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !46
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %84 = add i64 %81, 16, !mcsema_real_eip !48
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !48
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
  br i1 %_cond1_n_cond2_cond3_95, label %86, label %87

; <label>:86:                                     ; preds = %55
  %_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_address_in_parent_stack_bt_97 = bitcast i8* %_address_in_parent_stack_96 to i64*
  br label %87

; <label>:87:                                     ; preds = %55, %86
  %88 = phi i64* [ %_allin_new_bt_2, %55 ], [ %_address_in_parent_stack_bt_97, %86 ]
  %_new_load_98 = load i64, i64* %88
  store i64 %_new_load_98, i64* %RAX_val, !mcsema_real_eip !48
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %89 = add i64 %81, 8, !mcsema_real_eip !49
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !49
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
  br i1 %_cond1_n_cond2_cond3_110, label %91, label %92

; <label>:91:                                     ; preds = %87
  %_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_address_in_parent_stack_bt_112 = bitcast i8* %_address_in_parent_stack_111 to i64*
  br label %92

; <label>:92:                                     ; preds = %87, %91
  %93 = phi i64* [ %_allin_new_bt_4, %87 ], [ %_address_in_parent_stack_bt_112, %91 ]
  %_new_load_113 = load i64, i64* %93
  store i64 %_new_load_113, i64* %R10_val, !mcsema_real_eip !49
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -20
  %95 = add i64 %94, -20, !mcsema_real_eip !50
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !50
  %97 = load i64, i64* %RDI_val, !mcsema_real_eip !50
  %98 = trunc i64 %97 to i32, !mcsema_real_eip !50
  %99 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !50
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %101 = add i64 %100, -24, !mcsema_real_eip !51
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !51
  %103 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %104 = trunc i64 %103 to i32, !mcsema_real_eip !51
  %105 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !51
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -28
  %107 = add i64 %106, -28, !mcsema_real_eip !52
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !52
  %109 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  %110 = trunc i64 %109 to i32, !mcsema_real_eip !52
  %111 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %110, i32* %111, !mcsema_real_eip !52
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %113 = add i64 %112, -32, !mcsema_real_eip !53
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !53
  %115 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !53
  %117 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !53
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -36
  %119 = add i64 %118, -36, !mcsema_real_eip !54
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !54
  %121 = load i64, i64* %R8_val, !mcsema_real_eip !54
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !54
  %123 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !54
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -40
  %125 = add i64 %124, -40, !mcsema_real_eip !55
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !55
  %127 = load i64, i64* %R9_val, !mcsema_real_eip !55
  %128 = trunc i64 %127 to i32, !mcsema_real_eip !55
  %129 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %128, i32* %129, !mcsema_real_eip !55
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -48
  %131 = add i64 %130, -48, !mcsema_real_eip !56
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !56
  %133 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %133, i64* %_allin_new_bt_25, !mcsema_real_eip !56
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -56
  %135 = add i64 %134, -56, !mcsema_real_eip !57
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !57
  %137 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %137, i64* %_allin_new_bt_28, !mcsema_real_eip !57
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -48
  %139 = add i64 %138, -48, !mcsema_real_eip !58
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !58
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
  br i1 %_cond1_n_cond2_cond3_125, label %141, label %142

; <label>:141:                                    ; preds = %92
  %_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_address_in_parent_stack_bt_127 = bitcast i8* %_address_in_parent_stack_126 to i64*
  br label %142

; <label>:142:                                    ; preds = %92, %141
  %143 = phi i64* [ %_allin_new_bt_31, %92 ], [ %_address_in_parent_stack_bt_127, %141 ]
  %_new_load_128 = load i64, i64* %143
  store i64 %_new_load_128, i64* %R10_val, !mcsema_real_eip !58
  %144 = inttoptr i64 %_new_load_128 to i64*, !mcsema_real_eip !59
  %145 = bitcast i64* %144 to i32*
  %_ptr_to_int_129 = ptrtoint i32* %145 to i64
  %_local_end_to_int_130 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_131 = bitcast i32* %145 to i8*
  %_offset_above_rbp_132 = sub i64 %_ptr_to_int_129, %_local_end_to_int_130
  %_pot_address_in_parent_stack_133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_cond1_134 = icmp ugt i8* %_ptr_bt_131, %_local_stack_end_ptr_
  %_cond2_1_135 = icmp ugt i8* %_ptr_bt_131, %_parent_stack_end_ptr_
  %_cond2_2_136 = icmp ult i8* %_ptr_bt_131, %_parent_stack_start_ptr_
  %_cond2_137 = or i1 %_cond2_1_135, %_cond2_2_136
  %_cond4_138 = icmp ule i8* %_pot_address_in_parent_stack_133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_139 = and i1 %_cond1_134, %_cond2_137
  %_cond1_n_cond2_cond3_140 = and i1 %_cond1_n_cond2_139, %_cond4_138
  br i1 %_cond1_n_cond2_cond3_140, label %146, label %147

; <label>:146:                                    ; preds = %142
  %_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_address_in_parent_stack_bt_142 = bitcast i8* %_address_in_parent_stack_141 to i32*
  br label %147

; <label>:147:                                    ; preds = %142, %146
  %148 = phi i32* [ %145, %142 ], [ %_address_in_parent_stack_bt_142, %146 ]
  %_new_load_143 = load i32, i32* %148
  %149 = zext i32 %_new_load_143 to i64, !mcsema_real_eip !59
  store i64 %149, i64* %RCX_val, !mcsema_real_eip !59
  %150 = load i64, i64* %RAX_val, !mcsema_real_eip !60
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !60
  %152 = bitcast i64* %151 to i32*
  %_ptr_to_int_144 = ptrtoint i32* %152 to i64
  %_local_end_to_int_145 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_146 = bitcast i32* %152 to i8*
  %_offset_above_rbp_147 = sub i64 %_ptr_to_int_144, %_local_end_to_int_145
  %_pot_address_in_parent_stack_148 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_cond1_149 = icmp ugt i8* %_ptr_bt_146, %_local_stack_end_ptr_
  %_cond2_1_150 = icmp ugt i8* %_ptr_bt_146, %_parent_stack_end_ptr_
  %_cond2_2_151 = icmp ult i8* %_ptr_bt_146, %_parent_stack_start_ptr_
  %_cond2_152 = or i1 %_cond2_1_150, %_cond2_2_151
  %_cond4_153 = icmp ule i8* %_pot_address_in_parent_stack_148, %_parent_stack_end_ptr_
  %_cond1_n_cond2_154 = and i1 %_cond1_149, %_cond2_152
  %_cond1_n_cond2_cond3_155 = and i1 %_cond1_n_cond2_154, %_cond4_153
  br i1 %_cond1_n_cond2_cond3_155, label %153, label %154

; <label>:153:                                    ; preds = %147
  %_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_address_in_parent_stack_bt_157 = bitcast i8* %_address_in_parent_stack_156 to i32*
  br label %154

; <label>:154:                                    ; preds = %147, %153
  %155 = phi i32* [ %152, %147 ], [ %_address_in_parent_stack_bt_157, %153 ]
  %_new_load_158 = load i32, i32* %155
  %156 = zext i32 %_new_load_158 to i64, !mcsema_real_eip !60
  store i64 %156, i64* %RDX_val, !mcsema_real_eip !60
  %157 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %158 = trunc i64 %157 to i32, !mcsema_real_eip !61
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_158, i32 %158)
  %159 = extractvalue { i32, i1 } %uadd, 0
  %160 = xor i32 %159, %158, !mcsema_real_eip !61
  %161 = xor i32 %160, %_new_load_158, !mcsema_real_eip !61
  %162 = and i32 %161, 16, !mcsema_real_eip !61
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !61
  store i1 %163, i1* %AF_val, !mcsema_real_eip !61
  %164 = icmp slt i32 %159, 0
  store i1 %164, i1* %SF_val, !mcsema_real_eip !61
  %165 = icmp eq i32 %159, 0, !mcsema_real_eip !61
  store i1 %165, i1* %ZF_val, !mcsema_real_eip !61
  %166 = xor i32 %_new_load_158, -2147483648, !mcsema_real_eip !61
  %167 = xor i32 %166, %158, !mcsema_real_eip !61
  %168 = and i32 %160, %167, !mcsema_real_eip !61
  %169 = icmp slt i32 %168, 0
  store i1 %169, i1* %OF_val, !mcsema_real_eip !61
  %170 = trunc i32 %159 to i8, !mcsema_real_eip !61
  %171 = tail call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !61
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  store i1 %173, i1* %PF_val, !mcsema_real_eip !61
  %174 = extractvalue { i32, i1 } %uadd, 1
  store i1 %174, i1* %CF_val, !mcsema_real_eip !61
  %175 = zext i32 %159 to i64, !mcsema_real_eip !61
  store i64 %175, i64* %RCX_val, !mcsema_real_eip !61
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -72
  %177 = add i64 %176, -72, !mcsema_real_eip !62
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !62
  %179 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %159, i32* %179, !mcsema_real_eip !62
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -48
  %181 = add i64 %180, -48, !mcsema_real_eip !63
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !63
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
  br i1 %_cond1_n_cond2_cond3_170, label %183, label %184

; <label>:183:                                    ; preds = %154
  %_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_address_in_parent_stack_bt_172 = bitcast i8* %_address_in_parent_stack_171 to i64*
  br label %184

; <label>:184:                                    ; preds = %154, %183
  %185 = phi i64* [ %_allin_new_bt_37, %154 ], [ %_address_in_parent_stack_bt_172, %183 ]
  %_new_load_173 = load i64, i64* %185
  store i64 %_new_load_173, i64* %RAX_val, !mcsema_real_eip !63
  %186 = add i64 %_new_load_173, 4, !mcsema_real_eip !64
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !64
  %188 = bitcast i64* %187 to i32*
  %_ptr_to_int_174 = ptrtoint i32* %188 to i64
  %_local_end_to_int_175 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_176 = bitcast i32* %188 to i8*
  %_offset_above_rbp_177 = sub i64 %_ptr_to_int_174, %_local_end_to_int_175
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_ptr_bt_176, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  br i1 %_cond1_n_cond2_cond3_185, label %189, label %190

; <label>:189:                                    ; preds = %184
  %_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_address_in_parent_stack_bt_187 = bitcast i8* %_address_in_parent_stack_186 to i32*
  br label %190

; <label>:190:                                    ; preds = %184, %189
  %191 = phi i32* [ %188, %184 ], [ %_address_in_parent_stack_bt_187, %189 ]
  %_new_load_188 = load i32, i32* %191
  %192 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !64
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !64
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -56
  %194 = add i64 %193, -56, !mcsema_real_eip !65
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !65
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
  br i1 %_cond1_n_cond2_cond3_200, label %196, label %197

; <label>:196:                                    ; preds = %190
  %_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_address_in_parent_stack_bt_202 = bitcast i8* %_address_in_parent_stack_201 to i64*
  br label %197

; <label>:197:                                    ; preds = %190, %196
  %198 = phi i64* [ %_allin_new_bt_40, %190 ], [ %_address_in_parent_stack_bt_202, %196 ]
  %_new_load_203 = load i64, i64* %198
  store i64 %_new_load_203, i64* %RAX_val, !mcsema_real_eip !65
  %199 = add i64 %_new_load_203, 4, !mcsema_real_eip !66
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !66
  %201 = bitcast i64* %200 to i32*
  %_ptr_to_int_204 = ptrtoint i32* %201 to i64
  %_local_end_to_int_205 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_206 = bitcast i32* %201 to i8*
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_205
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %202, label %203

; <label>:202:                                    ; preds = %197
  %_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_address_in_parent_stack_bt_217 = bitcast i8* %_address_in_parent_stack_216 to i32*
  br label %203

; <label>:203:                                    ; preds = %197, %202
  %204 = phi i32* [ %201, %197 ], [ %_address_in_parent_stack_bt_217, %202 ]
  %_new_load_218 = load i32, i32* %204
  %205 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !66
  store i64 %205, i64* %RDX_val, !mcsema_real_eip !66
  %206 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %207 = trunc i64 %206 to i32, !mcsema_real_eip !67
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_218, i32 %207)
  %208 = extractvalue { i32, i1 } %uadd71, 0
  %209 = xor i32 %208, %207, !mcsema_real_eip !67
  %210 = xor i32 %209, %_new_load_218, !mcsema_real_eip !67
  %211 = and i32 %210, 16, !mcsema_real_eip !67
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !67
  store i1 %212, i1* %AF_val, !mcsema_real_eip !67
  %213 = icmp slt i32 %208, 0
  store i1 %213, i1* %SF_val, !mcsema_real_eip !67
  %214 = icmp eq i32 %208, 0, !mcsema_real_eip !67
  store i1 %214, i1* %ZF_val, !mcsema_real_eip !67
  %215 = xor i32 %_new_load_218, -2147483648, !mcsema_real_eip !67
  %216 = xor i32 %215, %207, !mcsema_real_eip !67
  %217 = and i32 %209, %216, !mcsema_real_eip !67
  %218 = icmp slt i32 %217, 0
  store i1 %218, i1* %OF_val, !mcsema_real_eip !67
  %219 = trunc i32 %208 to i8, !mcsema_real_eip !67
  %220 = tail call i8 @llvm.ctpop.i8(i8 %219), !mcsema_real_eip !67
  %221 = and i8 %220, 1
  %222 = icmp eq i8 %221, 0
  store i1 %222, i1* %PF_val, !mcsema_real_eip !67
  %223 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %223, i1* %CF_val, !mcsema_real_eip !67
  %224 = zext i32 %208 to i64, !mcsema_real_eip !67
  store i64 %224, i64* %RCX_val, !mcsema_real_eip !67
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %225 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %226 = add i64 %225, -68, !mcsema_real_eip !68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !68
  %228 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %208, i32* %228, !mcsema_real_eip !68
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %229 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -48
  %230 = add i64 %229, -48, !mcsema_real_eip !69
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !69
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
  br i1 %_cond1_n_cond2_cond3_230, label %232, label %233

; <label>:232:                                    ; preds = %203
  %_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_address_in_parent_stack_bt_232 = bitcast i8* %_address_in_parent_stack_231 to i64*
  br label %233

; <label>:233:                                    ; preds = %203, %232
  %234 = phi i64* [ %_allin_new_bt_46, %203 ], [ %_address_in_parent_stack_bt_232, %232 ]
  %_new_load_233 = load i64, i64* %234
  store i64 %_new_load_233, i64* %RAX_val, !mcsema_real_eip !69
  %235 = add i64 %_new_load_233, 8, !mcsema_real_eip !70
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !70
  %237 = bitcast i64* %236 to i32*
  %_ptr_to_int_234 = ptrtoint i32* %237 to i64
  %_local_end_to_int_235 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_236 = bitcast i32* %237 to i8*
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_235
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %238, label %239

; <label>:238:                                    ; preds = %233
  %_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_address_in_parent_stack_bt_247 = bitcast i8* %_address_in_parent_stack_246 to i32*
  br label %239

; <label>:239:                                    ; preds = %233, %238
  %240 = phi i32* [ %237, %233 ], [ %_address_in_parent_stack_bt_247, %238 ]
  %_new_load_248 = load i32, i32* %240
  %241 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !70
  store i64 %241, i64* %RCX_val, !mcsema_real_eip !70
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %242 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -56
  %243 = add i64 %242, -56, !mcsema_real_eip !71
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !71
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
  br i1 %_cond1_n_cond2_cond3_260, label %245, label %246

; <label>:245:                                    ; preds = %239
  %_address_in_parent_stack_261 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_address_in_parent_stack_bt_262 = bitcast i8* %_address_in_parent_stack_261 to i64*
  br label %246

; <label>:246:                                    ; preds = %239, %245
  %247 = phi i64* [ %_allin_new_bt_49, %239 ], [ %_address_in_parent_stack_bt_262, %245 ]
  %_new_load_263 = load i64, i64* %247
  store i64 %_new_load_263, i64* %RAX_val, !mcsema_real_eip !71
  %248 = add i64 %_new_load_263, 8, !mcsema_real_eip !72
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !72
  %250 = bitcast i64* %249 to i32*
  %_ptr_to_int_264 = ptrtoint i32* %250 to i64
  %_local_end_to_int_265 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_266 = bitcast i32* %250 to i8*
  %_offset_above_rbp_267 = sub i64 %_ptr_to_int_264, %_local_end_to_int_265
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_ptr_bt_266, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_ptr_bt_266, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_ptr_bt_266, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  br i1 %_cond1_n_cond2_cond3_275, label %251, label %252

; <label>:251:                                    ; preds = %246
  %_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_address_in_parent_stack_bt_277 = bitcast i8* %_address_in_parent_stack_276 to i32*
  br label %252

; <label>:252:                                    ; preds = %246, %251
  %253 = phi i32* [ %250, %246 ], [ %_address_in_parent_stack_bt_277, %251 ]
  %_new_load_278 = load i32, i32* %253
  %254 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !72
  store i64 %254, i64* %RDX_val, !mcsema_real_eip !72
  %255 = load i64, i64* %RCX_val, !mcsema_real_eip !73
  %256 = trunc i64 %255 to i32, !mcsema_real_eip !73
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_278, i32 %256)
  %257 = extractvalue { i32, i1 } %uadd72, 0
  %258 = xor i32 %257, %256, !mcsema_real_eip !73
  %259 = xor i32 %258, %_new_load_278, !mcsema_real_eip !73
  %260 = and i32 %259, 16, !mcsema_real_eip !73
  %261 = icmp ne i32 %260, 0, !mcsema_real_eip !73
  store i1 %261, i1* %AF_val, !mcsema_real_eip !73
  %262 = icmp slt i32 %257, 0
  store i1 %262, i1* %SF_val, !mcsema_real_eip !73
  %263 = icmp eq i32 %257, 0, !mcsema_real_eip !73
  store i1 %263, i1* %ZF_val, !mcsema_real_eip !73
  %264 = xor i32 %_new_load_278, -2147483648, !mcsema_real_eip !73
  %265 = xor i32 %264, %256, !mcsema_real_eip !73
  %266 = and i32 %258, %265, !mcsema_real_eip !73
  %267 = icmp slt i32 %266, 0
  store i1 %267, i1* %OF_val, !mcsema_real_eip !73
  %268 = trunc i32 %257 to i8, !mcsema_real_eip !73
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !73
  %270 = and i8 %269, 1
  %271 = icmp eq i8 %270, 0
  store i1 %271, i1* %PF_val, !mcsema_real_eip !73
  %272 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %272, i1* %CF_val, !mcsema_real_eip !73
  %273 = zext i32 %257 to i64, !mcsema_real_eip !73
  store i64 %273, i64* %RCX_val, !mcsema_real_eip !73
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -64
  %275 = add i64 %274, -64, !mcsema_real_eip !74
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !74
  %277 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %257, i32* %277, !mcsema_real_eip !74
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -8
  %279 = add i64 %278, -8, !mcsema_real_eip !75
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !75
  %281 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  %282 = trunc i64 %281 to i32, !mcsema_real_eip !75
  %283 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %282, i32* %283, !mcsema_real_eip !75
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %284 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -72
  %285 = add i64 %284, -72, !mcsema_real_eip !76
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !76
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
  br i1 %_cond1_n_cond2_cond3_290, label %287, label %288

; <label>:287:                                    ; preds = %252
  %_address_in_parent_stack_291 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_address_in_parent_stack_bt_292 = bitcast i8* %_address_in_parent_stack_291 to i64*
  br label %288

; <label>:288:                                    ; preds = %252, %287
  %289 = phi i64* [ %_allin_new_bt_58, %252 ], [ %_address_in_parent_stack_bt_292, %287 ]
  %_new_load_293 = load i64, i64* %289
  store i64 %_new_load_293, i64* %RAX_val, !mcsema_real_eip !76
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -16
  %290 = add i64 %284, -16, !mcsema_real_eip !77
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !77
  store i64 %_new_load_293, i64* %_allin_new_bt_60, !mcsema_real_eip !77
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %292 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -8
  %293 = add i64 %292, -8, !mcsema_real_eip !78
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !78
  %295 = bitcast i64* %_allin_new_bt_63 to i32*
  %_ptr_to_int_294 = ptrtoint i32* %295 to i64
  %_local_end_to_int_295 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_296 = bitcast i32* %295 to i8*
  %_offset_above_rbp_297 = sub i64 %_ptr_to_int_294, %_local_end_to_int_295
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_ptr_bt_296, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_ptr_bt_296, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_ptr_bt_296, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  br i1 %_cond1_n_cond2_cond3_305, label %296, label %297

; <label>:296:                                    ; preds = %288
  %_address_in_parent_stack_306 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_address_in_parent_stack_bt_307 = bitcast i8* %_address_in_parent_stack_306 to i32*
  br label %297

; <label>:297:                                    ; preds = %288, %296
  %298 = phi i32* [ %295, %288 ], [ %_address_in_parent_stack_bt_307, %296 ]
  %_new_load_308 = load i32, i32* %298
  %299 = zext i32 %_new_load_308 to i64, !mcsema_real_eip !78
  store i64 %299, i64* %RCX_val, !mcsema_real_eip !78
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %300 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -80
  %301 = add i64 %300, -80, !mcsema_real_eip !79
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !79
  %303 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %_new_load_308, i32* %303, !mcsema_real_eip !79
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -16
  %305 = add i64 %304, -16, !mcsema_real_eip !80
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !80
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
  br i1 %_cond1_n_cond2_cond3_320, label %307, label %308

; <label>:307:                                    ; preds = %297
  %_address_in_parent_stack_321 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_address_in_parent_stack_bt_322 = bitcast i8* %_address_in_parent_stack_321 to i64*
  br label %308

; <label>:308:                                    ; preds = %297, %307
  %309 = phi i64* [ %_allin_new_bt_69, %297 ], [ %_address_in_parent_stack_bt_322, %307 ]
  %_new_load_323 = load i64, i64* %309
  store i64 %_new_load_323, i64* %RAX_val, !mcsema_real_eip !80
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -88
  %310 = add i64 %304, -88, !mcsema_real_eip !81
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !81
  store i64 %_new_load_323, i64* %_allin_new_bt_71, !mcsema_real_eip !81
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %312 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -88
  %313 = add i64 %312, -88, !mcsema_real_eip !82
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !82
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
  br i1 %_cond1_n_cond2_cond3_335, label %315, label %316

; <label>:315:                                    ; preds = %308
  %_address_in_parent_stack_336 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_327
  %_address_in_parent_stack_bt_337 = bitcast i8* %_address_in_parent_stack_336 to i64*
  br label %316

; <label>:316:                                    ; preds = %308, %315
  %317 = phi i64* [ %_allin_new_bt_74, %308 ], [ %_address_in_parent_stack_bt_337, %315 ]
  %_new_load_338 = load i64, i64* %317
  store i64 %_new_load_338, i64* %RAX_val, !mcsema_real_eip !82
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -80
  %318 = add i64 %312, -80, !mcsema_real_eip !83
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !83
  %320 = bitcast i64* %_allin_new_bt_76 to i32*
  %_ptr_to_int_339 = ptrtoint i32* %320 to i64
  %_local_end_to_int_340 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_341 = bitcast i32* %320 to i8*
  %_offset_above_rbp_342 = sub i64 %_ptr_to_int_339, %_local_end_to_int_340
  %_pot_address_in_parent_stack_343 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_cond1_344 = icmp ugt i8* %_ptr_bt_341, %_local_stack_end_ptr_
  %_cond2_1_345 = icmp ugt i8* %_ptr_bt_341, %_parent_stack_end_ptr_
  %_cond2_2_346 = icmp ult i8* %_ptr_bt_341, %_parent_stack_start_ptr_
  %_cond2_347 = or i1 %_cond2_1_345, %_cond2_2_346
  %_cond4_348 = icmp ule i8* %_pot_address_in_parent_stack_343, %_parent_stack_end_ptr_
  %_cond1_n_cond2_349 = and i1 %_cond1_344, %_cond2_347
  %_cond1_n_cond2_cond3_350 = and i1 %_cond1_n_cond2_349, %_cond4_348
  br i1 %_cond1_n_cond2_cond3_350, label %321, label %322

; <label>:321:                                    ; preds = %316
  %_address_in_parent_stack_351 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_address_in_parent_stack_bt_352 = bitcast i8* %_address_in_parent_stack_351 to i32*
  br label %322

; <label>:322:                                    ; preds = %316, %321
  %323 = phi i32* [ %320, %316 ], [ %_address_in_parent_stack_bt_352, %321 ]
  %_new_load_353 = load i32, i32* %323
  %324 = zext i32 %_new_load_353 to i64, !mcsema_real_eip !83
  store i64 %324, i64* %RDX_val, !mcsema_real_eip !83
  %_load_rsp_ptr_77 = load i8*, i8** %_RSP_ptr_
  %325 = load i64, i64* %RSP_val, !mcsema_real_eip !84
  %_allin_new_bt_78 = bitcast i8* %_load_rsp_ptr_77 to i64*
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !84
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
  br i1 %_cond1_n_cond2_cond3_365, label %327, label %328

; <label>:327:                                    ; preds = %322
  %_address_in_parent_stack_366 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_357
  %_address_in_parent_stack_bt_367 = bitcast i8* %_address_in_parent_stack_366 to i64*
  br label %328

; <label>:328:                                    ; preds = %322, %327
  %329 = phi i64* [ %_allin_new_bt_78, %322 ], [ %_address_in_parent_stack_bt_367, %327 ]
  %_new_load_368 = load i64, i64* %329
  %_new_int2ptr_ = inttoptr i64 %_new_load_368 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_368, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_79 = getelementptr i8, i8* %_load_rsp_ptr_77, i64 16
  %330 = add i64 %325, 16, !mcsema_real_eip !85
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %330, i64* %RSP_val, !mcsema_real_eip !85
  %331 = load i64, i64* %RAX_val, !mcsema_real_eip !85
  store i64 %331, i64* %RAX, !mcsema_real_eip !85
  %332 = load i64, i64* %RBX_val, !mcsema_real_eip !85
  store i64 %332, i64* %RBX, !mcsema_real_eip !85
  %333 = load i64, i64* %RCX_val, !mcsema_real_eip !85
  store i64 %333, i64* %RCX, !mcsema_real_eip !85
  %334 = load i64, i64* %RDX_val, !mcsema_real_eip !85
  store i64 %334, i64* %RDX, !mcsema_real_eip !85
  %335 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  store i64 %335, i64* %RSI, !mcsema_real_eip !85
  %336 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  store i64 %336, i64* %RDI, !mcsema_real_eip !85
  %_load_rsp_ptr_80 = load i8*, i8** %_RSP_ptr_
  %337 = load i64, i64* %RSP_val, !mcsema_real_eip !85
  %_new_ptr2int_81 = ptrtoint i8* %_load_rsp_ptr_80 to i64
  store volatile i64 %_new_ptr2int_81, i64* %RSP
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %338 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_ptr2int_83 = ptrtoint i8* %_load_rbp_ptr_82 to i64
  store volatile i64 %_new_ptr2int_83, i64* %RBP
  %339 = load i64, i64* %R8_val, !mcsema_real_eip !85
  store i64 %339, i64* %R8, !mcsema_real_eip !85
  %340 = load i64, i64* %R9_val, !mcsema_real_eip !85
  store i64 %340, i64* %R9, !mcsema_real_eip !85
  %341 = load i64, i64* %R10_val, !mcsema_real_eip !85
  store i64 %341, i64* %R10, !mcsema_real_eip !85
  %342 = load i64, i64* %R11_val, !mcsema_real_eip !85
  store i64 %342, i64* %R11, !mcsema_real_eip !85
  %343 = load i64, i64* %R12_val, !mcsema_real_eip !85
  store i64 %343, i64* %R12, !mcsema_real_eip !85
  %344 = load i64, i64* %R13_val, !mcsema_real_eip !85
  store i64 %344, i64* %R13, !mcsema_real_eip !85
  %345 = load i64, i64* %R14_val, !mcsema_real_eip !85
  store i64 %345, i64* %R14, !mcsema_real_eip !85
  %346 = load i64, i64* %R15_val, !mcsema_real_eip !85
  store i64 %346, i64* %R15, !mcsema_real_eip !85
  %347 = load i64, i64* %RIP_val, !mcsema_real_eip !85
  store i64 %347, i64* %RIP, !mcsema_real_eip !85
  %348 = load i1, i1* %CF_val, !mcsema_real_eip !85
  store i1 %348, i1* %CF, align 1, !mcsema_real_eip !85
  %349 = load i1, i1* %PF_val, !mcsema_real_eip !85
  store i1 %349, i1* %PF, align 1, !mcsema_real_eip !85
  %350 = load i1, i1* %AF_val, !mcsema_real_eip !85
  store i1 %350, i1* %AF, align 1, !mcsema_real_eip !85
  %351 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  store i1 %351, i1* %ZF, align 1, !mcsema_real_eip !85
  %352 = load i1, i1* %SF_val, !mcsema_real_eip !85
  store i1 %352, i1* %SF, align 1, !mcsema_real_eip !85
  %353 = load i1, i1* %OF_val, !mcsema_real_eip !85
  store i1 %353, i1* %OF, align 1, !mcsema_real_eip !85
  %354 = load i1, i1* %DF_val, !mcsema_real_eip !85
  store i1 %354, i1* %DF, align 1, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !85
  %355 = load i1, i1* %FPU_B_val, !mcsema_real_eip !85
  store i1 %355, i1* %FPU_B, align 1, !mcsema_real_eip !85
  %356 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !85
  store i1 %356, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  %357 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !85
  store i3 %357, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  %358 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !85
  store i1 %358, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  %359 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !85
  store i1 %359, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  %360 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !85
  store i1 %360, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  %361 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !85
  store i1 %361, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  %362 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !85
  store i1 %362, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  %363 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !85
  store i1 %363, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  %364 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !85
  store i1 %364, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  %365 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !85
  store i1 %365, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  %366 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !85
  store i1 %366, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  %367 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !85
  store i1 %367, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  %368 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !85
  store i1 %368, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  %369 = load i1, i1* %FPU_X_val, !mcsema_real_eip !85
  store i1 %369, i1* %FPU_X, align 1, !mcsema_real_eip !85
  %370 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !85
  store i2 %370, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  %371 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !85
  store i2 %371, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  %372 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !85
  store i1 %372, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  %373 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !85
  store i1 %373, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  %374 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !85
  store i1 %374, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  %375 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !85
  store i1 %375, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  %376 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !85
  store i1 %376, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  %377 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !85
  store i1 %377, i1* %FPU_IM, align 1, !mcsema_real_eip !85
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
  br i1 %_cond1_n_cond2_cond3_380, label %378, label %379

; <label>:378:                                    ; preds = %328
  %_address_in_parent_stack_381 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_372
  %_address_in_parent_stack_bt_382 = bitcast i8* %_address_in_parent_stack_381 to i64*
  br label %379

; <label>:379:                                    ; preds = %328, %378
  %380 = phi i64* [ %53, %328 ], [ %_address_in_parent_stack_bt_382, %378 ]
  %_new_load_383 = load i64, i64* %380
  store i64 %_new_load_383, i64* %52, align 4
  %381 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !85
  store i16 %381, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  %382 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !85
  store i64 %382, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !85
  %383 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !85
  store i16 %383, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  %384 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !85
  store i64 %384, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !85
  %385 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !85
  store i11 %385, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !85
  %386 = load i128, i128* %XMM0_val, !mcsema_real_eip !85
  store i128 %386, i128* %XMM0, align 1, !mcsema_real_eip !85
  %387 = load i128, i128* %XMM1_val, !mcsema_real_eip !85
  store i128 %387, i128* %XMM1, align 1, !mcsema_real_eip !85
  %388 = load i128, i128* %XMM2_val, !mcsema_real_eip !85
  store i128 %388, i128* %XMM2, align 1, !mcsema_real_eip !85
  %389 = load i128, i128* %XMM3_val, !mcsema_real_eip !85
  store i128 %389, i128* %XMM3, align 1, !mcsema_real_eip !85
  %390 = load i128, i128* %XMM4_val, !mcsema_real_eip !85
  store i128 %390, i128* %XMM4, align 1, !mcsema_real_eip !85
  %391 = load i128, i128* %XMM5_val, !mcsema_real_eip !85
  store i128 %391, i128* %XMM5, align 1, !mcsema_real_eip !85
  %392 = load i128, i128* %XMM6_val, !mcsema_real_eip !85
  store i128 %392, i128* %XMM6, align 1, !mcsema_real_eip !85
  %393 = load i128, i128* %XMM7_val, !mcsema_real_eip !85
  store i128 %393, i128* %XMM7, align 1, !mcsema_real_eip !85
  %394 = load i128, i128* %XMM8_val, !mcsema_real_eip !85
  store i128 %394, i128* %XMM8, align 1, !mcsema_real_eip !85
  %395 = load i128, i128* %XMM9_val, !mcsema_real_eip !85
  store i128 %395, i128* %XMM9, align 1, !mcsema_real_eip !85
  %396 = load i128, i128* %XMM10_val, !mcsema_real_eip !85
  store i128 %396, i128* %XMM10, align 1, !mcsema_real_eip !85
  %397 = load i128, i128* %XMM11_val, !mcsema_real_eip !85
  store i128 %397, i128* %XMM11, align 1, !mcsema_real_eip !85
  %398 = load i128, i128* %XMM12_val, !mcsema_real_eip !85
  store i128 %398, i128* %XMM12, align 1, !mcsema_real_eip !85
  %399 = load i128, i128* %XMM13_val, !mcsema_real_eip !85
  store i128 %399, i128* %XMM13, align 1, !mcsema_real_eip !85
  %400 = load i128, i128* %XMM14_val, !mcsema_real_eip !85
  store i128 %400, i128* %XMM14, align 1, !mcsema_real_eip !85
  %401 = load i128, i128* %XMM15_val, !mcsema_real_eip !85
  store i128 %401, i128* %XMM15, align 1, !mcsema_real_eip !85
  %402 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !85
  store i64 %402, i64* %STACK_BASE, align 1, !mcsema_real_eip !85
  %403 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !85
  store i64 %403, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !85
  ret void, !mcsema_real_eip !85
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128}
!3 = !{i64 129}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 153}
!7 = !{i64 157}
!8 = !{i64 164}
!9 = !{i64 169}
!10 = !{i64 171}
!11 = !{i64 176}
!12 = !{i64 180}
!13 = !{i64 186}
!14 = !{i64 190}
!15 = !{i64 197}
!16 = !{i64 201}
!17 = !{i64 208}
!18 = !{i64 212}
!19 = !{i64 215}
!20 = !{i64 219}
!21 = !{i64 223}
!22 = !{i64 226}
!23 = !{i64 231}
!24 = !{i64 241}
!25 = !{i64 243}
!26 = !{i64 246}
!27 = !{i64 248}
!28 = !{i64 252}
!29 = !{i64 255}
!30 = !{i64 258}
!31 = !{i64 262}
!32 = !{i64 266}
!33 = !{i64 271}
!34 = !{i64 274}
!35 = !{i64 278}
!36 = !{i64 282}
!37 = !{i64 286}
!38 = !{i64 289}
!39 = !{i64 292}
!40 = !{i64 295}
!41 = !{i64 298}
!42 = !{i64 301}
!43 = !{i64 303}
!44 = !{i64 307}
!45 = !{i64 308}
!46 = !{i64 0}
!47 = !{i64 1}
!48 = !{i64 4}
!49 = !{i64 8}
!50 = !{i64 12}
!51 = !{i64 15}
!52 = !{i64 18}
!53 = !{i64 21}
!54 = !{i64 24}
!55 = !{i64 28}
!56 = !{i64 32}
!57 = !{i64 36}
!58 = !{i64 40}
!59 = !{i64 44}
!60 = !{i64 47}
!61 = !{i64 49}
!62 = !{i64 51}
!63 = !{i64 54}
!64 = !{i64 58}
!65 = !{i64 61}
!66 = !{i64 65}
!67 = !{i64 68}
!68 = !{i64 70}
!69 = !{i64 73}
!70 = !{i64 77}
!71 = !{i64 80}
!72 = !{i64 84}
!73 = !{i64 87}
!74 = !{i64 89}
!75 = !{i64 92}
!76 = !{i64 95}
!77 = !{i64 99}
!78 = !{i64 103}
!79 = !{i64 106}
!80 = !{i64 109}
!81 = !{i64 113}
!82 = !{i64 117}
!83 = !{i64 121}
!84 = !{i64 124}
!85 = !{i64 125}
