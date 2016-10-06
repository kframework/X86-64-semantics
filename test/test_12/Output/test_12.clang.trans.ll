; ModuleID = 'Output/test_12.clang.trans.bc'
source_filename = "Output/test_12.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_10(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 40
  %_RBP_ptr_ = alloca i8*, i64 40
  %_local_stack_start_ptr_ = alloca i8, i64 40
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 40
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -40
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16, !mcsema_real_eip !4
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !4
  store i1 %84, i1* %AF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i1 false, i1* %CF_val, !mcsema_real_eip !5
  store i1 false, i1* %OF_val, !mcsema_real_eip !5
  store i1 false, i1* %SF_val, !mcsema_real_eip !5
  store i1 true, i1* %ZF_val, !mcsema_real_eip !5
  store i1 true, i1* %PF_val, !mcsema_real_eip !5
  store i64 0, i64* %RSI_val, !mcsema_real_eip !5
  %_load_rbp_ptr_2 = load i8*, i8** %_RBP_ptr_
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_3 = getelementptr i8, i8* %_load_rbp_ptr_2, i64 -16
  %86 = add i64 %85, -16, !mcsema_real_eip !6
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !6
  %88 = load i64, i64* %RDI_val, !mcsema_real_eip !6
  store i64 %88, i64* %_allin_new_bt_4, !mcsema_real_eip !6
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %90 = add i64 %89, -16, !mcsema_real_eip !7
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !7
  %92 = load i64, i64* %_allin_new_bt_7, !mcsema_real_eip !7
  store i64 %92, i64* %RDI_val, !mcsema_real_eip !7
  %93 = load i64, i64* %RSI_val, !mcsema_real_eip !8
  %94 = tail call x86_64_sysvcc i64 @open(i64 %92, i64 %93), !mcsema_real_eip !8
  store i64 %94, i64* %RAX_val, !mcsema_real_eip !8
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -20
  %96 = add i64 %95, -20, !mcsema_real_eip !9
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !9
  %98 = trunc i64 %94 to i32, !mcsema_real_eip !9
  %99 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %98, i32* %99, !mcsema_real_eip !9
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -20
  %101 = add i64 %100, -20, !mcsema_real_eip !10
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !10
  %103 = bitcast i64* %_allin_new_bt_13 to i32*
  %104 = load i32, i32* %103, !mcsema_real_eip !10
  %105 = add i32 %104, 1
  %106 = xor i32 %105, %104, !mcsema_real_eip !10
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  store i1 %108, i1* %AF_val, !mcsema_real_eip !10
  %109 = trunc i32 %105 to i8, !mcsema_real_eip !10
  %110 = tail call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !10
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  store i1 %112, i1* %PF_val, !mcsema_real_eip !10
  %113 = icmp eq i32 %105, 0, !mcsema_real_eip !10
  store i1 %113, i1* %ZF_val, !mcsema_real_eip !10
  %114 = icmp slt i32 %105, 0
  store i1 %114, i1* %SF_val, !mcsema_real_eip !10
  %115 = icmp ne i32 %104, -1
  store i1 %115, i1* %CF_val, !mcsema_real_eip !10
  %116 = xor i32 %104, -2147483648, !mcsema_real_eip !10
  %117 = and i32 %106, %116, !mcsema_real_eip !10
  %118 = icmp slt i32 %117, 0
  store i1 %118, i1* %OF_val, !mcsema_real_eip !10
  %119 = load i1, i1* %ZF_val, !mcsema_real_eip !11
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  br i1 %119, label %block_0x4d, label %block_0x36, !mcsema_real_eip !11

block_0x4d:                                       ; preds = %entry
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -4
  %121 = add i64 %120, -4, !mcsema_real_eip !12
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !12
  %123 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 -1, i32* %123, !mcsema_real_eip !12
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -4
  %125 = add i64 %124, -4, !mcsema_real_eip !13
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !13
  %127 = bitcast i64* %_allin_new_bt_19 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !13
  %129 = zext i32 %128 to i64, !mcsema_real_eip !13
  store i64 %129, i64* %RAX_val, !mcsema_real_eip !13
  %_load_rsp_ptr_20 = load i8*, i8** %_RSP_ptr_
  %130 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_new_gep_21 = getelementptr i8, i8* %_load_rsp_ptr_20, i64 32
  %uadd139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 32)
  %131 = extractvalue { i64, i1 } %uadd139, 0
  %132 = xor i64 %131, %130, !mcsema_real_eip !14
  %133 = and i64 %132, 16, !mcsema_real_eip !14
  %134 = icmp ne i64 %133, 0, !mcsema_real_eip !14
  store i1 %134, i1* %AF_val, !mcsema_real_eip !14
  %135 = icmp slt i64 %131, 0
  store i1 %135, i1* %SF_val, !mcsema_real_eip !14
  %136 = icmp eq i64 %131, 0, !mcsema_real_eip !14
  store i1 %136, i1* %ZF_val, !mcsema_real_eip !14
  %137 = xor i64 %130, -9223372036854775808, !mcsema_real_eip !14
  %138 = and i64 %132, %137, !mcsema_real_eip !14
  %139 = icmp slt i64 %138, 0
  store i1 %139, i1* %OF_val, !mcsema_real_eip !14
  %140 = trunc i64 %131 to i8, !mcsema_real_eip !14
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !14
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF_val, !mcsema_real_eip !14
  %144 = extractvalue { i64, i1 } %uadd139, 1
  %_new_ptr2int_22 = ptrtoint i8* %_new_gep_21 to i1
  store volatile i1 %_new_ptr2int_22, i1* %CF_val
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_
  store i64 %131, i64* %RSP_val, !mcsema_real_eip !14
  %_allin_new_bt_23 = bitcast i8* %_new_gep_21 to i64*
  %145 = inttoptr i64 %131 to i64*, !mcsema_real_eip !15
  %146 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !15
  %_new_int2ptr_ = inttoptr i64 %146 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %146, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_21, i64 16
  %147 = add i64 %131, 16, !mcsema_real_eip !16
  store volatile i8* %_new_gep_24, i8** %_RSP_ptr_
  store i64 %147, i64* %RSP_val, !mcsema_real_eip !16
  %148 = load i64, i64* %RAX_val, !mcsema_real_eip !16
  store i64 %148, i64* %RAX, !mcsema_real_eip !16
  %149 = load i64, i64* %RBX_val, !mcsema_real_eip !16
  store i64 %149, i64* %RBX, !mcsema_real_eip !16
  %150 = load i64, i64* %RCX_val, !mcsema_real_eip !16
  store i64 %150, i64* %RCX, !mcsema_real_eip !16
  %151 = load i64, i64* %RDX_val, !mcsema_real_eip !16
  store i64 %151, i64* %RDX, !mcsema_real_eip !16
  %152 = load i64, i64* %RSI_val, !mcsema_real_eip !16
  store i64 %152, i64* %RSI, !mcsema_real_eip !16
  %153 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  store i64 %153, i64* %RDI, !mcsema_real_eip !16
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %154 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  %_new_ptr2int_26 = ptrtoint i8* %_load_rsp_ptr_25 to i64
  store volatile i64 %_new_ptr2int_26, i64* %RSP
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_ptr2int_28 = ptrtoint i8* %_load_rbp_ptr_27 to i64
  store volatile i64 %_new_ptr2int_28, i64* %RBP
  %156 = load i64, i64* %R8_val, !mcsema_real_eip !16
  store i64 %156, i64* %R8, !mcsema_real_eip !16
  %157 = load i64, i64* %R9_val, !mcsema_real_eip !16
  store i64 %157, i64* %R9, !mcsema_real_eip !16
  %158 = load i64, i64* %R10_val, !mcsema_real_eip !16
  store i64 %158, i64* %R10, !mcsema_real_eip !16
  %159 = load i64, i64* %R11_val, !mcsema_real_eip !16
  store i64 %159, i64* %R11, !mcsema_real_eip !16
  %160 = load i64, i64* %R12_val, !mcsema_real_eip !16
  store i64 %160, i64* %R12, !mcsema_real_eip !16
  %161 = load i64, i64* %R13_val, !mcsema_real_eip !16
  store i64 %161, i64* %R13, !mcsema_real_eip !16
  %162 = load i64, i64* %R14_val, !mcsema_real_eip !16
  store i64 %162, i64* %R14, !mcsema_real_eip !16
  %163 = load i64, i64* %R15_val, !mcsema_real_eip !16
  store i64 %163, i64* %R15, !mcsema_real_eip !16
  %164 = load i64, i64* %RIP_val, !mcsema_real_eip !16
  store i64 %164, i64* %RIP, !mcsema_real_eip !16
  %165 = load i1, i1* %CF_val, !mcsema_real_eip !16
  store i1 %165, i1* %CF, align 1, !mcsema_real_eip !16
  %166 = load i1, i1* %PF_val, !mcsema_real_eip !16
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !16
  %167 = load i1, i1* %AF_val, !mcsema_real_eip !16
  store i1 %167, i1* %AF, align 1, !mcsema_real_eip !16
  %168 = load i1, i1* %ZF_val, !mcsema_real_eip !16
  store i1 %168, i1* %ZF, align 1, !mcsema_real_eip !16
  %169 = load i1, i1* %SF_val, !mcsema_real_eip !16
  store i1 %169, i1* %SF, align 1, !mcsema_real_eip !16
  %170 = load i1, i1* %OF_val, !mcsema_real_eip !16
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !16
  %171 = load i1, i1* %DF_val, !mcsema_real_eip !16
  store i1 %171, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %172 = load i1, i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %172, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %173 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %173, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %174 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %174, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %175 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %175, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %176 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %176, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %177 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %177, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %178 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %178, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %179 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %179, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %180 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %180, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %181 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %181, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %182 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %182, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %183 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %183, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %184 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %184, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %185 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %185, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %186 = load i1, i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %186, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %187 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %187, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %188 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %188, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %189 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %189, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %190 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %190, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %191 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %191, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %192 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %192, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %193 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %193, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %194 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %194, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %195 = load i64, i64* %53, align 4
  store i64 %195, i64* %52, align 4
  %196 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %196, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %197 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %197, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %198 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %198, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %199 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %199, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %200 = load i128, i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %200, i128* %XMM0, align 1, !mcsema_real_eip !16
  %201 = load i128, i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %201, i128* %XMM1, align 1, !mcsema_real_eip !16
  %202 = load i128, i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %202, i128* %XMM2, align 1, !mcsema_real_eip !16
  %203 = load i128, i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %203, i128* %XMM3, align 1, !mcsema_real_eip !16
  %204 = load i128, i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %204, i128* %XMM4, align 1, !mcsema_real_eip !16
  %205 = load i128, i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %205, i128* %XMM5, align 1, !mcsema_real_eip !16
  %206 = load i128, i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %206, i128* %XMM6, align 1, !mcsema_real_eip !16
  %207 = load i128, i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %207, i128* %XMM7, align 1, !mcsema_real_eip !16
  %208 = load i128, i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %208, i128* %XMM8, align 1, !mcsema_real_eip !16
  %209 = load i128, i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %209, i128* %XMM9, align 1, !mcsema_real_eip !16
  %210 = load i128, i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %210, i128* %XMM10, align 1, !mcsema_real_eip !16
  %211 = load i128, i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %211, i128* %XMM11, align 1, !mcsema_real_eip !16
  %212 = load i128, i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %212, i128* %XMM12, align 1, !mcsema_real_eip !16
  %213 = load i128, i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %213, i128* %XMM13, align 1, !mcsema_real_eip !16
  %214 = load i128, i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %214, i128* %XMM14, align 1, !mcsema_real_eip !16
  %215 = load i128, i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %215, i128* %XMM15, align 1, !mcsema_real_eip !16
  %216 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %216, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %217 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %217, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16

block_0x36:                                       ; preds = %entry
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %218 = add i64 %120, -20, !mcsema_real_eip !17
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !17
  %220 = bitcast i64* %_allin_new_bt_30 to i32*
  %221 = load i32, i32* %220, !mcsema_real_eip !17
  %222 = zext i32 %221 to i64, !mcsema_real_eip !17
  store i64 %222, i64* %RDI_val, !mcsema_real_eip !17
  %223 = tail call x86_64_sysvcc i64 @close(i64 %222), !mcsema_real_eip !18
  store i64 %223, i64* %RAX_val, !mcsema_real_eip !18
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %224 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -4
  %225 = add i64 %224, -4, !mcsema_real_eip !19
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !19
  %227 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 0, i32* %227, !mcsema_real_eip !19
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %228 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %229 = add i64 %228, -24, !mcsema_real_eip !20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !20
  %231 = load i64, i64* %RAX_val, !mcsema_real_eip !20
  %232 = trunc i64 %231 to i32, !mcsema_real_eip !20
  %233 = bitcast i64* %_allin_new_bt_36 to i32*
  store i32 %232, i32* %233, !mcsema_real_eip !20
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %234 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -4
  %235 = add i64 %234, -4, !mcsema_real_eip !13
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !13
  %237 = bitcast i64* %_allin_new_bt_39 to i32*
  %238 = load i32, i32* %237, !mcsema_real_eip !13
  %239 = zext i32 %238 to i64, !mcsema_real_eip !13
  store i64 %239, i64* %RAX_val, !mcsema_real_eip !13
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %240 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 32
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 32)
  %241 = extractvalue { i64, i1 } %uadd, 0
  %242 = xor i64 %241, %240, !mcsema_real_eip !14
  %243 = and i64 %242, 16, !mcsema_real_eip !14
  %244 = icmp ne i64 %243, 0, !mcsema_real_eip !14
  store i1 %244, i1* %AF_val, !mcsema_real_eip !14
  %245 = icmp slt i64 %241, 0
  store i1 %245, i1* %SF_val, !mcsema_real_eip !14
  %246 = icmp eq i64 %241, 0, !mcsema_real_eip !14
  store i1 %246, i1* %ZF_val, !mcsema_real_eip !14
  %247 = xor i64 %240, -9223372036854775808, !mcsema_real_eip !14
  %248 = and i64 %242, %247, !mcsema_real_eip !14
  %249 = icmp slt i64 %248, 0
  store i1 %249, i1* %OF_val, !mcsema_real_eip !14
  %250 = trunc i64 %241 to i8, !mcsema_real_eip !14
  %251 = tail call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !14
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  store i1 %253, i1* %PF_val, !mcsema_real_eip !14
  %254 = extractvalue { i64, i1 } %uadd, 1
  %_new_ptr2int_42 = ptrtoint i8* %_new_gep_41 to i1
  store volatile i1 %_new_ptr2int_42, i1* %CF_val
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %241, i64* %RSP_val, !mcsema_real_eip !14
  %_allin_new_bt_43 = bitcast i8* %_new_gep_41 to i64*
  %255 = inttoptr i64 %241 to i64*, !mcsema_real_eip !15
  %256 = load i64, i64* %_allin_new_bt_43, !mcsema_real_eip !15
  %_new_int2ptr_44 = inttoptr i64 %256 to i8*
  store volatile i8* %_new_int2ptr_44, i8** %_RBP_ptr_
  store i64 %256, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_41, i64 16
  %257 = add i64 %241, 16, !mcsema_real_eip !16
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_
  store i64 %257, i64* %RSP_val, !mcsema_real_eip !16
  %258 = load i64, i64* %RAX_val, !mcsema_real_eip !16
  store i64 %258, i64* %RAX, !mcsema_real_eip !16
  %259 = load i64, i64* %RBX_val, !mcsema_real_eip !16
  store i64 %259, i64* %RBX, !mcsema_real_eip !16
  %260 = load i64, i64* %RCX_val, !mcsema_real_eip !16
  store i64 %260, i64* %RCX, !mcsema_real_eip !16
  %261 = load i64, i64* %RDX_val, !mcsema_real_eip !16
  store i64 %261, i64* %RDX, !mcsema_real_eip !16
  %262 = load i64, i64* %RSI_val, !mcsema_real_eip !16
  store i64 %262, i64* %RSI, !mcsema_real_eip !16
  %263 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  store i64 %263, i64* %RDI, !mcsema_real_eip !16
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %264 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  %_new_ptr2int_47 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %RSP
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %265 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_ptr2int_49 = ptrtoint i8* %_load_rbp_ptr_48 to i64
  store volatile i64 %_new_ptr2int_49, i64* %RBP
  %266 = load i64, i64* %R8_val, !mcsema_real_eip !16
  store i64 %266, i64* %R8, !mcsema_real_eip !16
  %267 = load i64, i64* %R9_val, !mcsema_real_eip !16
  store i64 %267, i64* %R9, !mcsema_real_eip !16
  %268 = load i64, i64* %R10_val, !mcsema_real_eip !16
  store i64 %268, i64* %R10, !mcsema_real_eip !16
  %269 = load i64, i64* %R11_val, !mcsema_real_eip !16
  store i64 %269, i64* %R11, !mcsema_real_eip !16
  %270 = load i64, i64* %R12_val, !mcsema_real_eip !16
  store i64 %270, i64* %R12, !mcsema_real_eip !16
  %271 = load i64, i64* %R13_val, !mcsema_real_eip !16
  store i64 %271, i64* %R13, !mcsema_real_eip !16
  %272 = load i64, i64* %R14_val, !mcsema_real_eip !16
  store i64 %272, i64* %R14, !mcsema_real_eip !16
  %273 = load i64, i64* %R15_val, !mcsema_real_eip !16
  store i64 %273, i64* %R15, !mcsema_real_eip !16
  %274 = load i64, i64* %RIP_val, !mcsema_real_eip !16
  store i64 %274, i64* %RIP, !mcsema_real_eip !16
  %275 = load i1, i1* %CF_val, !mcsema_real_eip !16
  store i1 %275, i1* %CF, align 1, !mcsema_real_eip !16
  %276 = load i1, i1* %PF_val, !mcsema_real_eip !16
  store i1 %276, i1* %PF, align 1, !mcsema_real_eip !16
  %277 = load i1, i1* %AF_val, !mcsema_real_eip !16
  store i1 %277, i1* %AF, align 1, !mcsema_real_eip !16
  %278 = load i1, i1* %ZF_val, !mcsema_real_eip !16
  store i1 %278, i1* %ZF, align 1, !mcsema_real_eip !16
  %279 = load i1, i1* %SF_val, !mcsema_real_eip !16
  store i1 %279, i1* %SF, align 1, !mcsema_real_eip !16
  %280 = load i1, i1* %OF_val, !mcsema_real_eip !16
  store i1 %280, i1* %OF, align 1, !mcsema_real_eip !16
  %281 = load i1, i1* %DF_val, !mcsema_real_eip !16
  store i1 %281, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %282 = load i1, i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %282, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %283 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %283, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %284 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %284, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %285 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %285, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %286 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %286, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %287 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %287, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %288 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %288, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %289 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %289, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %290 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %290, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %291 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %291, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %292 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %292, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %293 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %293, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %294 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %294, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %295 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %295, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %296 = load i1, i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %296, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %297 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %297, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %298 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %298, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %299 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %299, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %300 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %300, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %301 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %301, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %302 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %302, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %303 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %303, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %304 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %304, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %305 = load i64, i64* %53, align 4
  store i64 %305, i64* %52, align 4
  %306 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %306, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %307 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %307, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %308 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %308, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %309 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %309, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %310 = load i128, i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %310, i128* %XMM0, align 1, !mcsema_real_eip !16
  %311 = load i128, i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %311, i128* %XMM1, align 1, !mcsema_real_eip !16
  %312 = load i128, i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %312, i128* %XMM2, align 1, !mcsema_real_eip !16
  %313 = load i128, i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %313, i128* %XMM3, align 1, !mcsema_real_eip !16
  %314 = load i128, i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %314, i128* %XMM4, align 1, !mcsema_real_eip !16
  %315 = load i128, i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %315, i128* %XMM5, align 1, !mcsema_real_eip !16
  %316 = load i128, i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %316, i128* %XMM6, align 1, !mcsema_real_eip !16
  %317 = load i128, i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %317, i128* %XMM7, align 1, !mcsema_real_eip !16
  %318 = load i128, i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %318, i128* %XMM8, align 1, !mcsema_real_eip !16
  %319 = load i128, i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %319, i128* %XMM9, align 1, !mcsema_real_eip !16
  %320 = load i128, i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %320, i128* %XMM10, align 1, !mcsema_real_eip !16
  %321 = load i128, i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %321, i128* %XMM11, align 1, !mcsema_real_eip !16
  %322 = load i128, i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %322, i128* %XMM12, align 1, !mcsema_real_eip !16
  %323 = load i128, i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %323, i128* %XMM13, align 1, !mcsema_real_eip !16
  %324 = load i128, i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %324, i128* %XMM14, align 1, !mcsema_real_eip !16
  %325 = load i128, i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %325, i128* %XMM15, align 1, !mcsema_real_eip !16
  %326 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %326, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %327 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %327, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @close(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*, i64 0
  %_RBP_ptr_ = alloca i8*, i64 0
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  tail call x86_64_sysvcc void @sub_10(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 17, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 20, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = !{i64 24, [17 x i8] c"\09xorl\09%esi, %esi\00"}
!6 = !{i64 26, [22 x i8] c"\09movq\09%rdi, -16(%rbp)\00"}
!7 = !{i64 30, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!8 = !{i64 36, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 41, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!10 = !{i64 44, [21 x i8] c"\09cmpl\09$-1, -20(%rbp)\00"}
!11 = !{i64 48, [7 x i8] c"\09je\0923\00"}
!12 = !{i64 77, [28 x i8] c"\09movl\09$4294967295, -4(%rbp)\00"}
!13 = !{i64 84, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!14 = !{i64 87, [16 x i8] c"\09addq\09$32, %rsp\00"}
!15 = !{i64 91, [11 x i8] c"\09popq\09%rbp\00"}
!16 = !{i64 92, [6 x i8] c"\09retq\00"}
!17 = !{i64 54, [22 x i8] c"\09movl\09-20(%rbp), %edi\00"}
!18 = !{i64 57, [9 x i8] c"\09callq\090\00"}
!19 = !{i64 62, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!20 = !{i64 69, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
