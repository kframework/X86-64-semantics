; ModuleID = 'Output/test_7.clang.trans.bc'
source_filename = "Output/test_7.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_140(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 176
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 176
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
  %81 = load i64, i64* %R14_val, !mcsema_real_eip !4
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %82 = add i64 %78, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  store i64 %81, i64* %_allin_new_bt_2, !mcsema_real_eip !4
  %84 = load i64, i64* %RBX_val, !mcsema_real_eip !5
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %85 = add i64 %78, -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  store i64 %84, i64* %_allin_new_bt_4, !mcsema_real_eip !5
  %_new_gep_5 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -168
  %87 = add i64 %78, -168
  %88 = xor i64 %87, %85, !mcsema_real_eip !6
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !6
  %91 = trunc i64 %87 to i8, !mcsema_real_eip !6
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !6
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !6
  %95 = icmp eq i64 %87, 0, !mcsema_real_eip !6
  store i1 %95, i1* %ZF_val, !mcsema_real_eip !6
  %96 = icmp slt i64 %87, 0
  store i1 %96, i1* %SF_val, !mcsema_real_eip !6
  %97 = icmp ult i64 %85, 144, !mcsema_real_eip !6
  store i1 %97, i1* %CF_val, !mcsema_real_eip !6
  %98 = and i64 %88, %85, !mcsema_real_eip !6
  %99 = icmp slt i64 %98, 0
  store i1 %99, i1* %OF_val, !mcsema_real_eip !6
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !6
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -20
  %101 = add i64 %100, -20, !mcsema_real_eip !7
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !7
  %103 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 0, i32* %103, !mcsema_real_eip !7
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -24
  %105 = add i64 %104, -24, !mcsema_real_eip !8
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !8
  %107 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 1, i32* %107, !mcsema_real_eip !8
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -68
  %109 = add i64 %108, -68, !mcsema_real_eip !9
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !9
  %111 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 0, i32* %111, !mcsema_real_eip !9
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -68
  %113 = add i64 %112, -68, !mcsema_real_eip !10
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !10
  %115 = bitcast i64* %_allin_new_bt_17 to i32*
  %116 = load i32, i32* %115, !mcsema_real_eip !10
  %117 = add i32 %116, -10
  %118 = xor i32 %117, %116, !mcsema_real_eip !10
  %119 = and i32 %118, 16, !mcsema_real_eip !10
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !10
  store i1 %120, i1* %AF_val, !mcsema_real_eip !10
  %121 = trunc i32 %117 to i8, !mcsema_real_eip !10
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !10
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF_val, !mcsema_real_eip !10
  %125 = icmp eq i32 %117, 0, !mcsema_real_eip !10
  store i1 %125, i1* %ZF_val, !mcsema_real_eip !10
  %126 = icmp slt i32 %117, 0
  store i1 %126, i1* %SF_val, !mcsema_real_eip !10
  %127 = icmp ult i32 %116, 10, !mcsema_real_eip !10
  store i1 %127, i1* %CF_val, !mcsema_real_eip !10
  %128 = and i32 %118, %116, !mcsema_real_eip !10
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF_val, !mcsema_real_eip !10
  %tmp = xor i1 %126, %129
  br i1 %tmp, label %block_0x16d.preheader, label %block_0x189, !mcsema_real_eip !11

block_0x16d.preheader:                            ; preds = %entry
  br label %block_0x16d

block_0x189.loopexit:                             ; preds = %block_0x16d
  br label %block_0x189

block_0x189:                                      ; preds = %block_0x189.loopexit, %entry
  store i64 40, i64* %RDI_val, !mcsema_real_eip !12
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -24
  %131 = add i64 %130, -24, !mcsema_real_eip !13
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !13
  %133 = ptrtoint i64* %_allin_new_bt_20 to i64, !mcsema_real_eip !13
  store i64 %133, i64* %RCX_val, !mcsema_real_eip !13
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -80
  %134 = add i64 %130, -80, !mcsema_real_eip !14
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !14
  store i64 %133, i64* %_allin_new_bt_22, !mcsema_real_eip !14
  %136 = load i64, i64* %RDI_val, !mcsema_real_eip !15
  %137 = tail call x86_64_sysvcc i64 @malloc(i64 %136), !mcsema_real_eip !15
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !15
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -88
  %139 = add i64 %138, -88, !mcsema_real_eip !16
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !16
  store i64 %137, i64* %_allin_new_bt_25, !mcsema_real_eip !16
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -92
  %142 = add i64 %141, -92, !mcsema_real_eip !17
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !17
  %144 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 0, i32* %144, !mcsema_real_eip !17
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -92
  %146 = add i64 %145, -92, !mcsema_real_eip !18
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !18
  %148 = bitcast i64* %_allin_new_bt_31 to i32*
  %149 = load i32, i32* %148, !mcsema_real_eip !18
  %150 = add i32 %149, -10
  %151 = xor i32 %150, %149, !mcsema_real_eip !18
  %152 = and i32 %151, 16, !mcsema_real_eip !18
  %153 = icmp ne i32 %152, 0, !mcsema_real_eip !18
  store i1 %153, i1* %AF_val, !mcsema_real_eip !18
  %154 = trunc i32 %150 to i8, !mcsema_real_eip !18
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !18
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF_val, !mcsema_real_eip !18
  %158 = icmp eq i32 %150, 0, !mcsema_real_eip !18
  store i1 %158, i1* %ZF_val, !mcsema_real_eip !18
  %159 = icmp slt i32 %150, 0
  store i1 %159, i1* %SF_val, !mcsema_real_eip !18
  %160 = icmp ult i32 %149, 10, !mcsema_real_eip !18
  store i1 %160, i1* %CF_val, !mcsema_real_eip !18
  %161 = and i32 %151, %149, !mcsema_real_eip !18
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF_val, !mcsema_real_eip !18
  %tmp211 = xor i1 %159, %162
  br i1 %tmp211, label %block_0x1b2.preheader, label %block_0x1d1, !mcsema_real_eip !19

block_0x1b2.preheader:                            ; preds = %block_0x189
  br label %block_0x1b2

block_0x16d:                                      ; preds = %block_0x16d, %block_0x16d.preheader
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -68
  %164 = add i64 %163, -68, !mcsema_real_eip !20
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !20
  %166 = bitcast i64* %_allin_new_bt_34 to i32*
  %167 = load i32, i32* %166, !mcsema_real_eip !20
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %167, i32 1)
  %168 = extractvalue { i32, i1 } %uadd, 0
  %169 = xor i32 %168, %167, !mcsema_real_eip !21
  %170 = and i32 %169, 16, !mcsema_real_eip !21
  %171 = icmp ne i32 %170, 0, !mcsema_real_eip !21
  store i1 %171, i1* %AF_val, !mcsema_real_eip !21
  %172 = icmp slt i32 %168, 0
  store i1 %172, i1* %SF_val, !mcsema_real_eip !21
  %173 = icmp eq i32 %168, 0, !mcsema_real_eip !21
  store i1 %173, i1* %ZF_val, !mcsema_real_eip !21
  %174 = xor i32 %167, -2147483648, !mcsema_real_eip !21
  %175 = and i32 %169, %174, !mcsema_real_eip !21
  %176 = icmp slt i32 %175, 0
  store i1 %176, i1* %OF_val, !mcsema_real_eip !21
  %177 = trunc i32 %168 to i8, !mcsema_real_eip !21
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !21
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  store i1 %180, i1* %PF_val, !mcsema_real_eip !21
  %181 = extractvalue { i32, i1 } %uadd, 1
  store i1 %181, i1* %CF_val, !mcsema_real_eip !21
  %182 = zext i32 %168 to i64, !mcsema_real_eip !21
  store i64 %182, i64* %RAX_val, !mcsema_real_eip !21
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -68
  %184 = add i64 %183, -68, !mcsema_real_eip !22
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !22
  %186 = bitcast i64* %_allin_new_bt_37 to i32*
  %187 = load i32, i32* %186, !mcsema_real_eip !22
  %188 = sext i32 %187 to i64, !mcsema_real_eip !22
  store i64 %188, i64* %RCX_val, !mcsema_real_eip !22
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -64
  %190 = add i64 %189, -64, !mcsema_real_eip !23
  %191 = shl nsw i64 %188, 2
  %_new_gep_40 = getelementptr i8, i8* %_new_gep_39, i64 %191
  %192 = add i64 %190, %191, !mcsema_real_eip !23
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !23
  %194 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  %195 = trunc i64 %194 to i32, !mcsema_real_eip !23
  %196 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %195, i32* %196, !mcsema_real_eip !23
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %197 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -68
  %198 = add i64 %197, -68, !mcsema_real_eip !24
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !24
  %200 = bitcast i64* %_allin_new_bt_44 to i32*
  %201 = load i32, i32* %200, !mcsema_real_eip !24
  %uadd209 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %201, i32 1)
  %202 = extractvalue { i32, i1 } %uadd209, 0
  %203 = xor i32 %202, %201, !mcsema_real_eip !25
  %204 = and i32 %203, 16, !mcsema_real_eip !25
  %205 = icmp ne i32 %204, 0, !mcsema_real_eip !25
  store i1 %205, i1* %AF_val, !mcsema_real_eip !25
  %206 = icmp slt i32 %202, 0
  store i1 %206, i1* %SF_val, !mcsema_real_eip !25
  %207 = icmp eq i32 %202, 0, !mcsema_real_eip !25
  store i1 %207, i1* %ZF_val, !mcsema_real_eip !25
  %208 = xor i32 %201, -2147483648, !mcsema_real_eip !25
  %209 = and i32 %203, %208, !mcsema_real_eip !25
  %210 = icmp slt i32 %209, 0
  store i1 %210, i1* %OF_val, !mcsema_real_eip !25
  %211 = trunc i32 %202 to i8, !mcsema_real_eip !25
  %212 = tail call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !25
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  store i1 %214, i1* %PF_val, !mcsema_real_eip !25
  %215 = extractvalue { i32, i1 } %uadd209, 1
  store i1 %215, i1* %CF_val, !mcsema_real_eip !25
  %216 = zext i32 %202 to i64, !mcsema_real_eip !25
  store i64 %216, i64* %RAX_val, !mcsema_real_eip !25
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %217 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -68
  %218 = add i64 %217, -68, !mcsema_real_eip !26
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !26
  %220 = bitcast i64* %_allin_new_bt_47 to i32*
  store i32 %202, i32* %220, !mcsema_real_eip !26
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -68
  %222 = add i64 %221, -68, !mcsema_real_eip !10
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !10
  %224 = bitcast i64* %_allin_new_bt_50 to i32*
  %225 = load i32, i32* %224, !mcsema_real_eip !10
  %226 = add i32 %225, -10
  %227 = xor i32 %226, %225, !mcsema_real_eip !10
  %228 = and i32 %227, 16, !mcsema_real_eip !10
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !10
  store i1 %229, i1* %AF_val, !mcsema_real_eip !10
  %230 = trunc i32 %226 to i8, !mcsema_real_eip !10
  %231 = tail call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !10
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  store i1 %233, i1* %PF_val, !mcsema_real_eip !10
  %234 = icmp eq i32 %226, 0, !mcsema_real_eip !10
  store i1 %234, i1* %ZF_val, !mcsema_real_eip !10
  %235 = icmp slt i32 %226, 0
  store i1 %235, i1* %SF_val, !mcsema_real_eip !10
  %236 = icmp ult i32 %225, 10, !mcsema_real_eip !10
  store i1 %236, i1* %CF_val, !mcsema_real_eip !10
  %237 = and i32 %227, %225, !mcsema_real_eip !10
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF_val, !mcsema_real_eip !10
  %tmp210 = xor i1 %235, %238
  br i1 %tmp210, label %block_0x16d, label %block_0x189.loopexit, !mcsema_real_eip !11

block_0x1d1.loopexit:                             ; preds = %block_0x1b2
  br label %block_0x1d1

block_0x1d1:                                      ; preds = %block_0x1d1.loopexit, %block_0x189
  store i64 10, i64* %RAX_val, !mcsema_real_eip !27
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %239 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -64
  %240 = add i64 %239, -64, !mcsema_real_eip !28
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !28
  %242 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !28
  store i64 %242, i64* %RCX_val, !mcsema_real_eip !28
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -24
  %243 = add i64 %239, -24, !mcsema_real_eip !29
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !29
  %245 = bitcast i64* %_allin_new_bt_55 to i32*
  %246 = load i32, i32* %245, !mcsema_real_eip !29
  %247 = zext i32 %246 to i64, !mcsema_real_eip !29
  store i64 %247, i64* %RDI_val, !mcsema_real_eip !29
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -80
  %249 = add i64 %248, -80, !mcsema_real_eip !30
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !30
  %251 = load i64, i64* %_allin_new_bt_58, !mcsema_real_eip !30
  store i64 %251, i64* %RDX_val, !mcsema_real_eip !30
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %252 = add i64 %248, -88, !mcsema_real_eip !31
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !31
  %254 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !31
  store i64 %254, i64* %RSI_val, !mcsema_real_eip !31
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %255 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -24
  %256 = add i64 %255, -24, !mcsema_real_eip !32
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !32
  %258 = bitcast i64* %_allin_new_bt_63 to i32*
  %259 = load i32, i32* %258, !mcsema_real_eip !32
  %260 = zext i32 %259 to i64, !mcsema_real_eip !32
  store i64 %260, i64* %R8_val, !mcsema_real_eip !32
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %261 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -80
  %262 = add i64 %261, -80, !mcsema_real_eip !33
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !33
  %264 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !33
  store i64 %264, i64* %R9_val, !mcsema_real_eip !33
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -88
  %265 = add i64 %261, -88, !mcsema_real_eip !34
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !34
  %267 = load i64, i64* %_allin_new_bt_68, !mcsema_real_eip !34
  store i64 %267, i64* %R10_val, !mcsema_real_eip !34
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %268 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -104
  %269 = add i64 %268, -104, !mcsema_real_eip !35
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !35
  %271 = load i64, i64* %RSI_val, !mcsema_real_eip !35
  store i64 %271, i64* %_allin_new_bt_71, !mcsema_real_eip !35
  %272 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  store i64 %272, i64* %RSI_val, !mcsema_real_eip !36
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %273 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -104
  %274 = add i64 %273, -104, !mcsema_real_eip !37
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !37
  %276 = load i64, i64* %_allin_new_bt_74, !mcsema_real_eip !37
  store i64 %276, i64* %R11_val, !mcsema_real_eip !37
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -112
  %277 = add i64 %273, -112, !mcsema_real_eip !38
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !38
  %279 = load i64, i64* %RCX_val, !mcsema_real_eip !38
  store i64 %279, i64* %_allin_new_bt_76, !mcsema_real_eip !38
  %280 = load i64, i64* %R11_val, !mcsema_real_eip !39
  store i64 %280, i64* %RCX_val, !mcsema_real_eip !39
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -116
  %282 = add i64 %281, -116, !mcsema_real_eip !40
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !40
  %284 = load i64, i64* %R8_val, !mcsema_real_eip !40
  %285 = trunc i64 %284 to i32, !mcsema_real_eip !40
  %286 = bitcast i64* %_allin_new_bt_79 to i32*
  store i32 %285, i32* %286, !mcsema_real_eip !40
  %287 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  %288 = and i64 %287, 4294967295
  store i64 %288, i64* %R8_val, !mcsema_real_eip !41
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %289 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -128
  %290 = add i64 %289, -128, !mcsema_real_eip !42
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !42
  %292 = load i64, i64* %R9_val, !mcsema_real_eip !42
  store i64 %292, i64* %_allin_new_bt_82, !mcsema_real_eip !42
  %293 = load i64, i64* %RAX_val, !mcsema_real_eip !43
  %294 = and i64 %293, 4294967295
  store i64 %294, i64* %R9_val, !mcsema_real_eip !43
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %295 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -116
  %296 = add i64 %295, -116, !mcsema_real_eip !44
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !44
  %298 = bitcast i64* %_allin_new_bt_85 to i32*
  %299 = load i32, i32* %298, !mcsema_real_eip !44
  %300 = zext i32 %299 to i64, !mcsema_real_eip !44
  store i64 %300, i64* %RAX_val, !mcsema_real_eip !44
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %301 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %_allin_new_bt_87 = bitcast i8* %_load_rsp_ptr_86 to i64*
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !45
  %303 = bitcast i64* %_allin_new_bt_87 to i32*
  store i32 %299, i32* %303, !mcsema_real_eip !45
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_88, i64 -112
  %305 = add i64 %304, -112, !mcsema_real_eip !46
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !46
  %307 = load i64, i64* %_allin_new_bt_90, !mcsema_real_eip !46
  store i64 %307, i64* %RBX_val, !mcsema_real_eip !46
  %_load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_
  %308 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %_new_gep_92 = getelementptr i8, i8* %_load_rsp_ptr_91, i64 8
  %309 = add i64 %308, 8, !mcsema_real_eip !47
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !47
  store i64 %307, i64* %_allin_new_bt_93, !mcsema_real_eip !47
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -128
  %312 = add i64 %311, -128, !mcsema_real_eip !48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !48
  %314 = load i64, i64* %_allin_new_bt_96, !mcsema_real_eip !48
  store i64 %314, i64* %R14_val, !mcsema_real_eip !48
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %315 = load i64, i64* %RSP_val, !mcsema_real_eip !49
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 16
  %316 = add i64 %315, 16, !mcsema_real_eip !49
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !49
  store i64 %314, i64* %_allin_new_bt_99, !mcsema_real_eip !49
  %_load_rsp_ptr_100 = load i8*, i8** %_RSP_ptr_
  %318 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %_new_gep_101 = getelementptr i8, i8* %_load_rsp_ptr_100, i64 24
  %319 = add i64 %318, 24, !mcsema_real_eip !50
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !50
  %321 = load i64, i64* %R10_val, !mcsema_real_eip !50
  store i64 %321, i64* %_allin_new_bt_102, !mcsema_real_eip !50
  %_load_rsp_ptr_103 = load i8*, i8** %_RSP_ptr_
  %322 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %_new_gep_104 = getelementptr i8, i8* %_load_rsp_ptr_103, i64 -8
  %323 = add i64 %322, -8
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !51
  store i64 -4981261766360305936, i64* %_allin_new_bt_105, !mcsema_real_eip !51
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_
  store i64 %323, i64* %RSP_val, !mcsema_real_eip !51
  %325 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  store i64 %325, i64* %RAX, !mcsema_real_eip !51
  %326 = load i64, i64* %RBX_val, !mcsema_real_eip !51
  store i64 %326, i64* %RBX, !mcsema_real_eip !51
  %327 = load i64, i64* %RCX_val, !mcsema_real_eip !51
  store i64 %327, i64* %RCX, !mcsema_real_eip !51
  %328 = load i64, i64* %RDX_val, !mcsema_real_eip !51
  store i64 %328, i64* %RDX, !mcsema_real_eip !51
  %329 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  store i64 %329, i64* %RSI, !mcsema_real_eip !51
  %330 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  store i64 %330, i64* %RDI, !mcsema_real_eip !51
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %331 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %_new_ptr2int_107 = ptrtoint i8* %_load_rsp_ptr_106 to i64
  store volatile i64 %_new_ptr2int_107, i64* %RSP
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_ptr2int_109 = ptrtoint i8* %_load_rbp_ptr_108 to i64
  store volatile i64 %_new_ptr2int_109, i64* %RBP
  %333 = load i64, i64* %R8_val, !mcsema_real_eip !51
  store i64 %333, i64* %R8, !mcsema_real_eip !51
  %334 = load i64, i64* %R9_val, !mcsema_real_eip !51
  store i64 %334, i64* %R9, !mcsema_real_eip !51
  %335 = load i64, i64* %R10_val, !mcsema_real_eip !51
  store i64 %335, i64* %R10, !mcsema_real_eip !51
  %336 = load i64, i64* %R11_val, !mcsema_real_eip !51
  store i64 %336, i64* %R11, !mcsema_real_eip !51
  %337 = load i64, i64* %R12_val, !mcsema_real_eip !51
  store i64 %337, i64* %R12, !mcsema_real_eip !51
  %338 = load i64, i64* %R13_val, !mcsema_real_eip !51
  store i64 %338, i64* %R13, !mcsema_real_eip !51
  %339 = load i64, i64* %R14_val, !mcsema_real_eip !51
  store i64 %339, i64* %R14, !mcsema_real_eip !51
  %340 = load i64, i64* %R15_val, !mcsema_real_eip !51
  store i64 %340, i64* %R15, !mcsema_real_eip !51
  %341 = load i64, i64* %RIP_val, !mcsema_real_eip !51
  store i64 %341, i64* %RIP, !mcsema_real_eip !51
  %342 = load i1, i1* %CF_val, !mcsema_real_eip !51
  store i1 %342, i1* %CF, align 1, !mcsema_real_eip !51
  %343 = load i1, i1* %PF_val, !mcsema_real_eip !51
  store i1 %343, i1* %PF, align 1, !mcsema_real_eip !51
  %344 = load i1, i1* %AF_val, !mcsema_real_eip !51
  store i1 %344, i1* %AF, align 1, !mcsema_real_eip !51
  %345 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  store i1 %345, i1* %ZF, align 1, !mcsema_real_eip !51
  %346 = load i1, i1* %SF_val, !mcsema_real_eip !51
  store i1 %346, i1* %SF, align 1, !mcsema_real_eip !51
  %347 = load i1, i1* %OF_val, !mcsema_real_eip !51
  store i1 %347, i1* %OF, align 1, !mcsema_real_eip !51
  %348 = load i1, i1* %DF_val, !mcsema_real_eip !51
  store i1 %348, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %349 = load i1, i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %349, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %350 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %350, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %351 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %351, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %352 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %352, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %353 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %353, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %354 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %354, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %355 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %355, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %356 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %356, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %357 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %357, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %358 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %358, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %359 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %359, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %360 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %360, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %361 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %361, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %362 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %362, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %363 = load i1, i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %363, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %364 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %364, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %365 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %365, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %366 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %366, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %367 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %367, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %368 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %368, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %369 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %369, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %370 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %370, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %371 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %371, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %372 = load i64, i64* %53, align 4
  store i64 %372, i64* %52, align 4
  %373 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %373, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %374 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %374, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %375 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %375, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %376 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %376, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %377 = load i128, i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %377, i128* %XMM0, align 1, !mcsema_real_eip !51
  %378 = load i128, i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %378, i128* %XMM1, align 1, !mcsema_real_eip !51
  %379 = load i128, i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %379, i128* %XMM2, align 1, !mcsema_real_eip !51
  %380 = load i128, i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %380, i128* %XMM3, align 1, !mcsema_real_eip !51
  %381 = load i128, i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %381, i128* %XMM4, align 1, !mcsema_real_eip !51
  %382 = load i128, i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %382, i128* %XMM5, align 1, !mcsema_real_eip !51
  %383 = load i128, i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %383, i128* %XMM6, align 1, !mcsema_real_eip !51
  %384 = load i128, i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %384, i128* %XMM7, align 1, !mcsema_real_eip !51
  %385 = load i128, i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %385, i128* %XMM8, align 1, !mcsema_real_eip !51
  %386 = load i128, i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %386, i128* %XMM9, align 1, !mcsema_real_eip !51
  %387 = load i128, i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %387, i128* %XMM10, align 1, !mcsema_real_eip !51
  %388 = load i128, i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %388, i128* %XMM11, align 1, !mcsema_real_eip !51
  %389 = load i128, i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %389, i128* %XMM12, align 1, !mcsema_real_eip !51
  %390 = load i128, i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %390, i128* %XMM13, align 1, !mcsema_real_eip !51
  %391 = load i128, i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %391, i128* %XMM14, align 1, !mcsema_real_eip !51
  %392 = load i128, i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %392, i128* %XMM15, align 1, !mcsema_real_eip !51
  %393 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %393, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %394 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %394, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  %_load_rbp_ptr_137 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_137)
  %395 = load i64, i64* %RAX, !mcsema_real_eip !51
  store i64 %395, i64* %RAX_val, !mcsema_real_eip !51
  %396 = load i64, i64* %RBX, !mcsema_real_eip !51
  store i64 %396, i64* %RBX_val, !mcsema_real_eip !51
  %397 = load i64, i64* %RCX, !mcsema_real_eip !51
  store i64 %397, i64* %RCX_val, !mcsema_real_eip !51
  %398 = load i64, i64* %RDX, !mcsema_real_eip !51
  store i64 %398, i64* %RDX_val, !mcsema_real_eip !51
  %399 = load i64, i64* %RSI, !mcsema_real_eip !51
  store i64 %399, i64* %RSI_val, !mcsema_real_eip !51
  %400 = load i64, i64* %RDI, !mcsema_real_eip !51
  store i64 %400, i64* %RDI_val, !mcsema_real_eip !51
  %401 = load i64, i64* %RSP, !mcsema_real_eip !51
  store i64 %401, i64* %RSP_val, !mcsema_real_eip !51
  %402 = load i64, i64* %RBP, !mcsema_real_eip !51
  store i64 %402, i64* %RBP_val, !mcsema_real_eip !51
  %403 = load i64, i64* %R8, !mcsema_real_eip !51
  store i64 %403, i64* %R8_val, !mcsema_real_eip !51
  %404 = load i64, i64* %R9, !mcsema_real_eip !51
  store i64 %404, i64* %R9_val, !mcsema_real_eip !51
  %405 = load i64, i64* %R10, !mcsema_real_eip !51
  store i64 %405, i64* %R10_val, !mcsema_real_eip !51
  %406 = load i64, i64* %R11, !mcsema_real_eip !51
  store i64 %406, i64* %R11_val, !mcsema_real_eip !51
  %407 = load i64, i64* %R12, !mcsema_real_eip !51
  store i64 %407, i64* %R12_val, !mcsema_real_eip !51
  %408 = load i64, i64* %R13, !mcsema_real_eip !51
  store i64 %408, i64* %R13_val, !mcsema_real_eip !51
  %409 = load i64, i64* %R14, !mcsema_real_eip !51
  store i64 %409, i64* %R14_val, !mcsema_real_eip !51
  %410 = load i64, i64* %R15, !mcsema_real_eip !51
  store i64 %410, i64* %R15_val, !mcsema_real_eip !51
  %411 = load i64, i64* %RIP, !mcsema_real_eip !51
  store i64 %411, i64* %RIP_val, !mcsema_real_eip !51
  %412 = load i1, i1* %CF, align 1, !mcsema_real_eip !51
  store i1 %412, i1* %CF_val, !mcsema_real_eip !51
  %413 = load i1, i1* %PF, align 1, !mcsema_real_eip !51
  store i1 %413, i1* %PF_val, !mcsema_real_eip !51
  %414 = load i1, i1* %AF, align 1, !mcsema_real_eip !51
  store i1 %414, i1* %AF_val, !mcsema_real_eip !51
  %415 = load i1, i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 %415, i1* %ZF_val, !mcsema_real_eip !51
  %416 = load i1, i1* %SF, align 1, !mcsema_real_eip !51
  store i1 %416, i1* %SF_val, !mcsema_real_eip !51
  %417 = load i1, i1* %OF, align 1, !mcsema_real_eip !51
  store i1 %417, i1* %OF_val, !mcsema_real_eip !51
  %418 = load i1, i1* %DF, align 1, !mcsema_real_eip !51
  store i1 %418, i1* %DF_val, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %419 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !51
  store i1 %419, i1* %FPU_B_val, !mcsema_real_eip !51
  %420 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  store i1 %420, i1* %FPU_C3_val, !mcsema_real_eip !51
  %421 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  store i3 %421, i3* %FPU_TOP_val, !mcsema_real_eip !51
  %422 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  store i1 %422, i1* %FPU_C2_val, !mcsema_real_eip !51
  %423 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  store i1 %423, i1* %FPU_C1_val, !mcsema_real_eip !51
  %424 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  store i1 %424, i1* %FPU_C0_val, !mcsema_real_eip !51
  %425 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  store i1 %425, i1* %FPU_ES_val, !mcsema_real_eip !51
  %426 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  store i1 %426, i1* %FPU_SF_val, !mcsema_real_eip !51
  %427 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  store i1 %427, i1* %FPU_PE_val, !mcsema_real_eip !51
  %428 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  store i1 %428, i1* %FPU_UE_val, !mcsema_real_eip !51
  %429 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  store i1 %429, i1* %FPU_OE_val, !mcsema_real_eip !51
  %430 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  store i1 %430, i1* %FPU_ZE_val, !mcsema_real_eip !51
  %431 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  store i1 %431, i1* %FPU_DE_val, !mcsema_real_eip !51
  %432 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  store i1 %432, i1* %FPU_IE_val, !mcsema_real_eip !51
  %433 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !51
  store i1 %433, i1* %FPU_X_val, !mcsema_real_eip !51
  %434 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  store i2 %434, i2* %FPU_RC_val, !mcsema_real_eip !51
  %435 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  store i2 %435, i2* %FPU_PC_val, !mcsema_real_eip !51
  %436 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  store i1 %436, i1* %FPU_PM_val, !mcsema_real_eip !51
  %437 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  store i1 %437, i1* %FPU_UM_val, !mcsema_real_eip !51
  %438 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  store i1 %438, i1* %FPU_OM_val, !mcsema_real_eip !51
  %439 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  store i1 %439, i1* %FPU_ZM_val, !mcsema_real_eip !51
  %440 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  store i1 %440, i1* %FPU_DM_val, !mcsema_real_eip !51
  %441 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  store i1 %441, i1* %FPU_IM_val, !mcsema_real_eip !51
  %442 = load i64, i64* %52, align 4
  store i64 %442, i64* %53, align 4
  %443 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  store i16 %443, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  %444 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !51
  store i64 %444, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  %445 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  store i16 %445, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  %446 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !51
  store i64 %446, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  %447 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !51
  store i128 %447, i128* %XMM0_val, !mcsema_real_eip !51
  %448 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !51
  store i128 %448, i128* %XMM1_val, !mcsema_real_eip !51
  %449 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !51
  store i128 %449, i128* %XMM2_val, !mcsema_real_eip !51
  %450 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !51
  store i128 %450, i128* %XMM3_val, !mcsema_real_eip !51
  %451 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !51
  store i128 %451, i128* %XMM4_val, !mcsema_real_eip !51
  %452 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !51
  store i128 %452, i128* %XMM5_val, !mcsema_real_eip !51
  %453 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !51
  store i128 %453, i128* %XMM6_val, !mcsema_real_eip !51
  %454 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !51
  store i128 %454, i128* %XMM7_val, !mcsema_real_eip !51
  %455 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !51
  store i128 %455, i128* %XMM8_val, !mcsema_real_eip !51
  %456 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !51
  store i128 %456, i128* %XMM9_val, !mcsema_real_eip !51
  %457 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !51
  store i128 %457, i128* %XMM10_val, !mcsema_real_eip !51
  %458 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !51
  store i128 %458, i128* %XMM11_val, !mcsema_real_eip !51
  %459 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !51
  store i128 %459, i128* %XMM12_val, !mcsema_real_eip !51
  %460 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !51
  store i128 %460, i128* %XMM13_val, !mcsema_real_eip !51
  %461 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !51
  store i128 %461, i128* %XMM14_val, !mcsema_real_eip !51
  %462 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !51
  store i128 %462, i128* %XMM15_val, !mcsema_real_eip !51
  %463 = load i64, i64* %STACK_BASE, !mcsema_real_eip !51
  store i64 %463, i64* %STACK_BASE_val, !mcsema_real_eip !51
  %464 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !51
  store i64 %464, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  %_load_rsp_ptr_110 = load i8*, i8** %_RSP_ptr_
  %465 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  %_new_ptr2int_111 = ptrtoint i8* %_load_rsp_ptr_110 to i64
  %uadd215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_111, i64 144)
  %466 = extractvalue { i64, i1 } %uadd215, 0
  %467 = xor i64 %466, %_new_ptr2int_111, !mcsema_real_eip !52
  %468 = and i64 %467, 16
  %469 = icmp eq i64 %468, 0
  store i1 %469, i1* %AF_val, !mcsema_real_eip !52
  %470 = icmp slt i64 %466, 0
  store i1 %470, i1* %SF_val, !mcsema_real_eip !52
  %471 = icmp eq i64 %466, 0, !mcsema_real_eip !52
  store i1 %471, i1* %ZF_val, !mcsema_real_eip !52
  %472 = xor i64 %_new_ptr2int_111, -9223372036854775808, !mcsema_real_eip !52
  %473 = and i64 %467, %472, !mcsema_real_eip !52
  %474 = icmp slt i64 %473, 0
  store i1 %474, i1* %OF_val, !mcsema_real_eip !52
  %475 = trunc i64 %466 to i8, !mcsema_real_eip !52
  %476 = tail call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !52
  %477 = and i8 %476, 1
  %478 = icmp eq i8 %477, 0
  store i1 %478, i1* %PF_val, !mcsema_real_eip !52
  %479 = extractvalue { i64, i1 } %uadd215, 1
  store i1 %479, i1* %CF_val, !mcsema_real_eip !52
  %_new_int2ptr_ = inttoptr i64 %466 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %466, i64* %RSP_val, !mcsema_real_eip !52
  %480 = inttoptr i64 %466 to i64*, !mcsema_real_eip !53
  %481 = load i64, i64* %480, !mcsema_real_eip !53
  store i64 %481, i64* %RBX_val, !mcsema_real_eip !53
  %482 = add i64 %466, 8, !mcsema_real_eip !53
  %_new_int2ptr_112 = inttoptr i64 %482 to i8*
  store volatile i8* %_new_int2ptr_112, i8** %_RSP_ptr_
  store i64 %482, i64* %RSP_val, !mcsema_real_eip !53
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !54
  %484 = load i64, i64* %483, !mcsema_real_eip !54
  store i64 %484, i64* %R14_val, !mcsema_real_eip !54
  %485 = add i64 %466, 16, !mcsema_real_eip !54
  %_new_int2ptr_113 = inttoptr i64 %485 to i8*
  store volatile i8* %_new_int2ptr_113, i8** %_RSP_ptr_
  store i64 %485, i64* %RSP_val, !mcsema_real_eip !54
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !55
  %487 = load i64, i64* %486, !mcsema_real_eip !55
  %_new_int2ptr_114 = inttoptr i64 %487 to i8*
  store volatile i8* %_new_int2ptr_114, i8** %_RBP_ptr_
  store i64 %487, i64* %RBP_val, !mcsema_real_eip !55
  %488 = add i64 %466, 32, !mcsema_real_eip !56
  %_new_int2ptr_115 = inttoptr i64 %488 to i8*
  store volatile i8* %_new_int2ptr_115, i8** %_RSP_ptr_
  store i64 %488, i64* %RSP_val, !mcsema_real_eip !56
  %489 = load i64, i64* %RAX_val, !mcsema_real_eip !56
  store i64 %489, i64* %RAX, !mcsema_real_eip !56
  %490 = load i64, i64* %RBX_val, !mcsema_real_eip !56
  store i64 %490, i64* %RBX, !mcsema_real_eip !56
  %491 = load i64, i64* %RCX_val, !mcsema_real_eip !56
  store i64 %491, i64* %RCX, !mcsema_real_eip !56
  %492 = load i64, i64* %RDX_val, !mcsema_real_eip !56
  store i64 %492, i64* %RDX, !mcsema_real_eip !56
  %493 = load i64, i64* %RSI_val, !mcsema_real_eip !56
  store i64 %493, i64* %RSI, !mcsema_real_eip !56
  %494 = load i64, i64* %RDI_val, !mcsema_real_eip !56
  store i64 %494, i64* %RDI, !mcsema_real_eip !56
  %_load_rsp_ptr_116 = load i8*, i8** %_RSP_ptr_
  %495 = load i64, i64* %RSP_val, !mcsema_real_eip !56
  %_new_ptr2int_117 = ptrtoint i8* %_load_rsp_ptr_116 to i64
  store volatile i64 %_new_ptr2int_117, i64* %RSP
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %496 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_ptr2int_119 = ptrtoint i8* %_load_rbp_ptr_118 to i64
  store volatile i64 %_new_ptr2int_119, i64* %RBP
  %497 = load i64, i64* %R8_val, !mcsema_real_eip !56
  store i64 %497, i64* %R8, !mcsema_real_eip !56
  %498 = load i64, i64* %R9_val, !mcsema_real_eip !56
  store i64 %498, i64* %R9, !mcsema_real_eip !56
  %499 = load i64, i64* %R10_val, !mcsema_real_eip !56
  store i64 %499, i64* %R10, !mcsema_real_eip !56
  %500 = load i64, i64* %R11_val, !mcsema_real_eip !56
  store i64 %500, i64* %R11, !mcsema_real_eip !56
  %501 = load i64, i64* %R12_val, !mcsema_real_eip !56
  store i64 %501, i64* %R12, !mcsema_real_eip !56
  %502 = load i64, i64* %R13_val, !mcsema_real_eip !56
  store i64 %502, i64* %R13, !mcsema_real_eip !56
  %503 = load i64, i64* %R14_val, !mcsema_real_eip !56
  store i64 %503, i64* %R14, !mcsema_real_eip !56
  %504 = load i64, i64* %R15_val, !mcsema_real_eip !56
  store i64 %504, i64* %R15, !mcsema_real_eip !56
  %505 = load i64, i64* %RIP_val, !mcsema_real_eip !56
  store i64 %505, i64* %RIP, !mcsema_real_eip !56
  %506 = load i1, i1* %CF_val, !mcsema_real_eip !56
  store i1 %506, i1* %CF, align 1, !mcsema_real_eip !56
  %507 = load i1, i1* %PF_val, !mcsema_real_eip !56
  store i1 %507, i1* %PF, align 1, !mcsema_real_eip !56
  %508 = load i1, i1* %AF_val, !mcsema_real_eip !56
  store i1 %508, i1* %AF, align 1, !mcsema_real_eip !56
  %509 = load i1, i1* %ZF_val, !mcsema_real_eip !56
  store i1 %509, i1* %ZF, align 1, !mcsema_real_eip !56
  %510 = load i1, i1* %SF_val, !mcsema_real_eip !56
  store i1 %510, i1* %SF, align 1, !mcsema_real_eip !56
  %511 = load i1, i1* %OF_val, !mcsema_real_eip !56
  store i1 %511, i1* %OF, align 1, !mcsema_real_eip !56
  %512 = load i1, i1* %DF_val, !mcsema_real_eip !56
  store i1 %512, i1* %DF, align 1, !mcsema_real_eip !56
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !56
  %513 = load i1, i1* %FPU_B_val, !mcsema_real_eip !56
  store i1 %513, i1* %FPU_B, align 1, !mcsema_real_eip !56
  %514 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !56
  store i1 %514, i1* %FPU_C3, align 1, !mcsema_real_eip !56
  %515 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !56
  store i3 %515, i3* %FPU_TOP, align 1, !mcsema_real_eip !56
  %516 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !56
  store i1 %516, i1* %FPU_C2, align 1, !mcsema_real_eip !56
  %517 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !56
  store i1 %517, i1* %FPU_C1, align 1, !mcsema_real_eip !56
  %518 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !56
  store i1 %518, i1* %FPU_C0, align 1, !mcsema_real_eip !56
  %519 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !56
  store i1 %519, i1* %FPU_ES, align 1, !mcsema_real_eip !56
  %520 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !56
  store i1 %520, i1* %FPU_SF, align 1, !mcsema_real_eip !56
  %521 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !56
  store i1 %521, i1* %FPU_PE, align 1, !mcsema_real_eip !56
  %522 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !56
  store i1 %522, i1* %FPU_UE, align 1, !mcsema_real_eip !56
  %523 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !56
  store i1 %523, i1* %FPU_OE, align 1, !mcsema_real_eip !56
  %524 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !56
  store i1 %524, i1* %FPU_ZE, align 1, !mcsema_real_eip !56
  %525 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !56
  store i1 %525, i1* %FPU_DE, align 1, !mcsema_real_eip !56
  %526 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !56
  store i1 %526, i1* %FPU_IE, align 1, !mcsema_real_eip !56
  %527 = load i1, i1* %FPU_X_val, !mcsema_real_eip !56
  store i1 %527, i1* %FPU_X, align 1, !mcsema_real_eip !56
  %528 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !56
  store i2 %528, i2* %FPU_RC, align 1, !mcsema_real_eip !56
  %529 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !56
  store i2 %529, i2* %FPU_PC, align 1, !mcsema_real_eip !56
  %530 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !56
  store i1 %530, i1* %FPU_PM, align 1, !mcsema_real_eip !56
  %531 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !56
  store i1 %531, i1* %FPU_UM, align 1, !mcsema_real_eip !56
  %532 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !56
  store i1 %532, i1* %FPU_OM, align 1, !mcsema_real_eip !56
  %533 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !56
  store i1 %533, i1* %FPU_ZM, align 1, !mcsema_real_eip !56
  %534 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !56
  store i1 %534, i1* %FPU_DM, align 1, !mcsema_real_eip !56
  %535 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !56
  store i1 %535, i1* %FPU_IM, align 1, !mcsema_real_eip !56
  %536 = load i64, i64* %53, align 4
  store i64 %536, i64* %52, align 4
  %537 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !56
  store i16 %537, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !56
  %538 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !56
  store i64 %538, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !56
  %539 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !56
  store i16 %539, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !56
  %540 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !56
  store i64 %540, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !56
  %541 = load i128, i128* %XMM0_val, !mcsema_real_eip !56
  store i128 %541, i128* %XMM0, align 1, !mcsema_real_eip !56
  %542 = load i128, i128* %XMM1_val, !mcsema_real_eip !56
  store i128 %542, i128* %XMM1, align 1, !mcsema_real_eip !56
  %543 = load i128, i128* %XMM2_val, !mcsema_real_eip !56
  store i128 %543, i128* %XMM2, align 1, !mcsema_real_eip !56
  %544 = load i128, i128* %XMM3_val, !mcsema_real_eip !56
  store i128 %544, i128* %XMM3, align 1, !mcsema_real_eip !56
  %545 = load i128, i128* %XMM4_val, !mcsema_real_eip !56
  store i128 %545, i128* %XMM4, align 1, !mcsema_real_eip !56
  %546 = load i128, i128* %XMM5_val, !mcsema_real_eip !56
  store i128 %546, i128* %XMM5, align 1, !mcsema_real_eip !56
  %547 = load i128, i128* %XMM6_val, !mcsema_real_eip !56
  store i128 %547, i128* %XMM6, align 1, !mcsema_real_eip !56
  %548 = load i128, i128* %XMM7_val, !mcsema_real_eip !56
  store i128 %548, i128* %XMM7, align 1, !mcsema_real_eip !56
  %549 = load i128, i128* %XMM8_val, !mcsema_real_eip !56
  store i128 %549, i128* %XMM8, align 1, !mcsema_real_eip !56
  %550 = load i128, i128* %XMM9_val, !mcsema_real_eip !56
  store i128 %550, i128* %XMM9, align 1, !mcsema_real_eip !56
  %551 = load i128, i128* %XMM10_val, !mcsema_real_eip !56
  store i128 %551, i128* %XMM10, align 1, !mcsema_real_eip !56
  %552 = load i128, i128* %XMM11_val, !mcsema_real_eip !56
  store i128 %552, i128* %XMM11, align 1, !mcsema_real_eip !56
  %553 = load i128, i128* %XMM12_val, !mcsema_real_eip !56
  store i128 %553, i128* %XMM12, align 1, !mcsema_real_eip !56
  %554 = load i128, i128* %XMM13_val, !mcsema_real_eip !56
  store i128 %554, i128* %XMM13, align 1, !mcsema_real_eip !56
  %555 = load i128, i128* %XMM14_val, !mcsema_real_eip !56
  store i128 %555, i128* %XMM14, align 1, !mcsema_real_eip !56
  %556 = load i128, i128* %XMM15_val, !mcsema_real_eip !56
  store i128 %556, i128* %XMM15, align 1, !mcsema_real_eip !56
  %557 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !56
  store i64 %557, i64* %STACK_BASE, align 1, !mcsema_real_eip !56
  %558 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !56
  store i64 %558, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56

block_0x1b2:                                      ; preds = %block_0x1b2, %block_0x1b2.preheader
  %_load_rbp_ptr_120 = load i8*, i8** %_RBP_ptr_
  %559 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_120, i64 -92
  %560 = add i64 %559, -92, !mcsema_real_eip !57
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !57
  %562 = bitcast i64* %_allin_new_bt_122 to i32*
  %563 = load i32, i32* %562, !mcsema_real_eip !57
  %uadd212 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 1)
  %564 = extractvalue { i32, i1 } %uadd212, 0
  %565 = xor i32 %564, %563, !mcsema_real_eip !58
  %566 = and i32 %565, 16, !mcsema_real_eip !58
  %567 = icmp ne i32 %566, 0, !mcsema_real_eip !58
  store i1 %567, i1* %AF_val, !mcsema_real_eip !58
  %568 = icmp slt i32 %564, 0
  store i1 %568, i1* %SF_val, !mcsema_real_eip !58
  %569 = icmp eq i32 %564, 0, !mcsema_real_eip !58
  store i1 %569, i1* %ZF_val, !mcsema_real_eip !58
  %570 = xor i32 %563, -2147483648, !mcsema_real_eip !58
  %571 = and i32 %565, %570, !mcsema_real_eip !58
  %572 = icmp slt i32 %571, 0
  store i1 %572, i1* %OF_val, !mcsema_real_eip !58
  %573 = trunc i32 %564 to i8, !mcsema_real_eip !58
  %574 = tail call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !58
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  store i1 %576, i1* %PF_val, !mcsema_real_eip !58
  %577 = extractvalue { i32, i1 } %uadd212, 1
  store i1 %577, i1* %CF_val, !mcsema_real_eip !58
  %578 = zext i32 %564 to i64, !mcsema_real_eip !58
  store i64 %578, i64* %RAX_val, !mcsema_real_eip !58
  %_load_rbp_ptr_123 = load i8*, i8** %_RBP_ptr_
  %579 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %_new_gep_124 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -88
  %580 = add i64 %579, -88, !mcsema_real_eip !59
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !59
  %582 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !59
  store i64 %582, i64* %RCX_val, !mcsema_real_eip !59
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -92
  %583 = add i64 %579, -92, !mcsema_real_eip !60
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !60
  %585 = bitcast i64* %_allin_new_bt_127 to i32*
  %586 = load i32, i32* %585, !mcsema_real_eip !60
  %587 = sext i32 %586 to i64, !mcsema_real_eip !60
  store i64 %587, i64* %RDX_val, !mcsema_real_eip !60
  %588 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  %589 = shl nsw i64 %587, 2
  %590 = add i64 %589, %588, !mcsema_real_eip !61
  %591 = inttoptr i64 %590 to i64*, !mcsema_real_eip !61
  %592 = load i64, i64* %RAX_val, !mcsema_real_eip !61
  %593 = trunc i64 %592 to i32, !mcsema_real_eip !61
  %594 = bitcast i64* %591 to i32*
  store i32 %593, i32* %594, !mcsema_real_eip !61
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %595 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -92
  %596 = add i64 %595, -92, !mcsema_real_eip !62
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %597 = inttoptr i64 %596 to i64*, !mcsema_real_eip !62
  %598 = bitcast i64* %_allin_new_bt_130 to i32*
  %599 = load i32, i32* %598, !mcsema_real_eip !62
  %uadd213 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %599, i32 1)
  %600 = extractvalue { i32, i1 } %uadd213, 0
  %601 = xor i32 %600, %599, !mcsema_real_eip !63
  %602 = and i32 %601, 16, !mcsema_real_eip !63
  %603 = icmp ne i32 %602, 0, !mcsema_real_eip !63
  store i1 %603, i1* %AF_val, !mcsema_real_eip !63
  %604 = icmp slt i32 %600, 0
  store i1 %604, i1* %SF_val, !mcsema_real_eip !63
  %605 = icmp eq i32 %600, 0, !mcsema_real_eip !63
  store i1 %605, i1* %ZF_val, !mcsema_real_eip !63
  %606 = xor i32 %599, -2147483648, !mcsema_real_eip !63
  %607 = and i32 %601, %606, !mcsema_real_eip !63
  %608 = icmp slt i32 %607, 0
  store i1 %608, i1* %OF_val, !mcsema_real_eip !63
  %609 = trunc i32 %600 to i8, !mcsema_real_eip !63
  %610 = tail call i8 @llvm.ctpop.i8(i8 %609), !mcsema_real_eip !63
  %611 = and i8 %610, 1
  %612 = icmp eq i8 %611, 0
  store i1 %612, i1* %PF_val, !mcsema_real_eip !63
  %613 = extractvalue { i32, i1 } %uadd213, 1
  store i1 %613, i1* %CF_val, !mcsema_real_eip !63
  %614 = zext i32 %600 to i64, !mcsema_real_eip !63
  store i64 %614, i64* %RAX_val, !mcsema_real_eip !63
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %615 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -92
  %616 = add i64 %615, -92, !mcsema_real_eip !64
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %617 = inttoptr i64 %616 to i64*, !mcsema_real_eip !64
  %618 = bitcast i64* %_allin_new_bt_133 to i32*
  store i32 %600, i32* %618, !mcsema_real_eip !64
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %619 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -92
  %620 = add i64 %619, -92, !mcsema_real_eip !18
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !18
  %622 = bitcast i64* %_allin_new_bt_136 to i32*
  %623 = load i32, i32* %622, !mcsema_real_eip !18
  %624 = add i32 %623, -10
  %625 = xor i32 %624, %623, !mcsema_real_eip !18
  %626 = and i32 %625, 16, !mcsema_real_eip !18
  %627 = icmp ne i32 %626, 0, !mcsema_real_eip !18
  store i1 %627, i1* %AF_val, !mcsema_real_eip !18
  %628 = trunc i32 %624 to i8, !mcsema_real_eip !18
  %629 = tail call i8 @llvm.ctpop.i8(i8 %628), !mcsema_real_eip !18
  %630 = and i8 %629, 1
  %631 = icmp eq i8 %630, 0
  store i1 %631, i1* %PF_val, !mcsema_real_eip !18
  %632 = icmp eq i32 %624, 0, !mcsema_real_eip !18
  store i1 %632, i1* %ZF_val, !mcsema_real_eip !18
  %633 = icmp slt i32 %624, 0
  store i1 %633, i1* %SF_val, !mcsema_real_eip !18
  %634 = icmp ult i32 %623, 10, !mcsema_real_eip !18
  store i1 %634, i1* %CF_val, !mcsema_real_eip !18
  %635 = and i32 %625, %623, !mcsema_real_eip !18
  %636 = icmp slt i32 %635, 0
  store i1 %636, i1* %OF_val, !mcsema_real_eip !18
  %tmp214 = xor i1 %633, %636
  br i1 %tmp214, label %block_0x1b2, label %block_0x1d1.loopexit, !mcsema_real_eip !19
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !65
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !65
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !65
  %XMM15_val = alloca i128, !mcsema_real_eip !65
  %XMM14_val = alloca i128, !mcsema_real_eip !65
  %XMM13_val = alloca i128, !mcsema_real_eip !65
  %XMM12_val = alloca i128, !mcsema_real_eip !65
  %XMM11_val = alloca i128, !mcsema_real_eip !65
  %XMM10_val = alloca i128, !mcsema_real_eip !65
  %XMM9_val = alloca i128, !mcsema_real_eip !65
  %XMM8_val = alloca i128, !mcsema_real_eip !65
  %XMM7_val = alloca i128, !mcsema_real_eip !65
  %XMM6_val = alloca i128, !mcsema_real_eip !65
  %XMM5_val = alloca i128, !mcsema_real_eip !65
  %XMM4_val = alloca i128, !mcsema_real_eip !65
  %XMM3_val = alloca i128, !mcsema_real_eip !65
  %XMM2_val = alloca i128, !mcsema_real_eip !65
  %XMM1_val = alloca i128, !mcsema_real_eip !65
  %XMM0_val = alloca i128, !mcsema_real_eip !65
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !65
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !65
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !65
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !65
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !65
  %FPU_IM_val = alloca i1, !mcsema_real_eip !65
  %FPU_DM_val = alloca i1, !mcsema_real_eip !65
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !65
  %FPU_OM_val = alloca i1, !mcsema_real_eip !65
  %FPU_UM_val = alloca i1, !mcsema_real_eip !65
  %FPU_PM_val = alloca i1, !mcsema_real_eip !65
  %FPU_PC_val = alloca i2, !mcsema_real_eip !65
  %FPU_RC_val = alloca i2, !mcsema_real_eip !65
  %FPU_X_val = alloca i1, !mcsema_real_eip !65
  %FPU_IE_val = alloca i1, !mcsema_real_eip !65
  %FPU_DE_val = alloca i1, !mcsema_real_eip !65
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !65
  %FPU_OE_val = alloca i1, !mcsema_real_eip !65
  %FPU_UE_val = alloca i1, !mcsema_real_eip !65
  %FPU_PE_val = alloca i1, !mcsema_real_eip !65
  %FPU_SF_val = alloca i1, !mcsema_real_eip !65
  %FPU_ES_val = alloca i1, !mcsema_real_eip !65
  %FPU_C0_val = alloca i1, !mcsema_real_eip !65
  %FPU_C1_val = alloca i1, !mcsema_real_eip !65
  %FPU_C2_val = alloca i1, !mcsema_real_eip !65
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !65
  %FPU_C3_val = alloca i1, !mcsema_real_eip !65
  %FPU_B_val = alloca i1, !mcsema_real_eip !65
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !65
  %DF_val = alloca i1, !mcsema_real_eip !65
  %OF_val = alloca i1, !mcsema_real_eip !65
  %SF_val = alloca i1, !mcsema_real_eip !65
  %CF_val = alloca i1, !mcsema_real_eip !65
  %AF_val = alloca i1, !mcsema_real_eip !65
  %PF_val = alloca i1, !mcsema_real_eip !65
  %ZF_val = alloca i1, !mcsema_real_eip !65
  %RIP_val = alloca i64, !mcsema_real_eip !65
  %R14_val = alloca i64, !mcsema_real_eip !65
  %R13_val = alloca i64, !mcsema_real_eip !65
  %R12_val = alloca i64, !mcsema_real_eip !65
  %R11_val = alloca i64, !mcsema_real_eip !65
  %R10_val = alloca i64, !mcsema_real_eip !65
  %R9_val = alloca i64, !mcsema_real_eip !65
  %R8_val = alloca i64, !mcsema_real_eip !65
  %RSP_val = alloca i64, !mcsema_real_eip !65
  %RBP_val = alloca i64, !mcsema_real_eip !65
  %RDI_val = alloca i64, !mcsema_real_eip !65
  %RSI_val = alloca i64, !mcsema_real_eip !65
  %RDX_val = alloca i64, !mcsema_real_eip !65
  %RCX_val = alloca i64, !mcsema_real_eip !65
  %RBX_val = alloca i64, !mcsema_real_eip !65
  %RAX_val = alloca i64, !mcsema_real_eip !65
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !65
  %1 = load i64, i64* %RAX, !mcsema_real_eip !65
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !65
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !65
  %2 = load i64, i64* %RBX, !mcsema_real_eip !65
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !65
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !65
  %3 = load i64, i64* %RCX, !mcsema_real_eip !65
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !65
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !65
  %4 = load i64, i64* %RDX, !mcsema_real_eip !65
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !65
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !65
  %5 = load i64, i64* %RSI, !mcsema_real_eip !65
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !65
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !65
  %6 = load i64, i64* %RDI, !mcsema_real_eip !65
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !65
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !65
  %7 = load i64, i64* %RSP, !mcsema_real_eip !65
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !65
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !65
  %8 = load i64, i64* %RBP, !mcsema_real_eip !65
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !65
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !65
  %9 = load i64, i64* %R8, !mcsema_real_eip !65
  store i64 %9, i64* %R8_val, !mcsema_real_eip !65
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !65
  %10 = load i64, i64* %R9, !mcsema_real_eip !65
  store i64 %10, i64* %R9_val, !mcsema_real_eip !65
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !65
  %11 = load i64, i64* %R10, !mcsema_real_eip !65
  store i64 %11, i64* %R10_val, !mcsema_real_eip !65
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !65
  %12 = load i64, i64* %R11, !mcsema_real_eip !65
  store i64 %12, i64* %R11_val, !mcsema_real_eip !65
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !65
  %13 = load i64, i64* %R12, !mcsema_real_eip !65
  store i64 %13, i64* %R12_val, !mcsema_real_eip !65
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !65
  %14 = load i64, i64* %R13, !mcsema_real_eip !65
  store i64 %14, i64* %R13_val, !mcsema_real_eip !65
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !65
  %15 = load i64, i64* %R14, !mcsema_real_eip !65
  store i64 %15, i64* %R14_val, !mcsema_real_eip !65
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !65
  %16 = load i64, i64* %R15, !mcsema_real_eip !65
  store i64 %16, i64* %R15_val, !mcsema_real_eip !65
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !65
  %17 = load i64, i64* %RIP, !mcsema_real_eip !65
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !65
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !65
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !65
  store i1 %18, i1* %CF_val, !mcsema_real_eip !65
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !65
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !65
  store i1 %19, i1* %PF_val, !mcsema_real_eip !65
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !65
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !65
  store i1 %20, i1* %AF_val, !mcsema_real_eip !65
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !65
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !65
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !65
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !65
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !65
  store i1 %22, i1* %SF_val, !mcsema_real_eip !65
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !65
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !65
  store i1 %23, i1* %OF_val, !mcsema_real_eip !65
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !65
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !65
  store i1 %24, i1* %DF_val, !mcsema_real_eip !65
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !65
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !65
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !65
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !65
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !65
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !65
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !65
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !65
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !65
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !65
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !65
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !65
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !65
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !65
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !65
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !65
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !65
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !65
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !65
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !65
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !65
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !65
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !65
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !65
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !65
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !65
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !65
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !65
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !65
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !65
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !65
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !65
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !65
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !65
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !65
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !65
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !65
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !65
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !65
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !65
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !65
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !65
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !65
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !65
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !65
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !65
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !65
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !65
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !65
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !65
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !65
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !65
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !65
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !65
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !65
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !65
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !65
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !65
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !65
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !65
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !65
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !65
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !65
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !65
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !65
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !65
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !65
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !65
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !65
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !65
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !65
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !65
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !65
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !65
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !65
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !65
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !65
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !65
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !65
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !65
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !65
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !65
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !65
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !65
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !65
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !65
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !65
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !65
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !65
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !65
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !65
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !65
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !65
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !65
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !65
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !65
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !65
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !65
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !65
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !65
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !65
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !65
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !65
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !65
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !65
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !65
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !65
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !65
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !65
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !65
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !65
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !65
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !65
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !65
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !65
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !65
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !65
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !65
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !65
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !65
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !65
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !65
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !65
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !65
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !65
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !65
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !65
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !65
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !65
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !65
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !65
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !65
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !65
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !65
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !65
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !65
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !65
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !65
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !65
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !65
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !65
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !65
  store i64 %77, i64* %80, !mcsema_real_eip !65
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !66
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !67
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !67
  store i64 %81, i64* %83, !mcsema_real_eip !67
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !67
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %85 = add i64 %84, 40, !mcsema_real_eip !68
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !68
  %87 = load i64, i64* %86, !mcsema_real_eip !68
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !68
  %88 = add i64 %84, 32, !mcsema_real_eip !69
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !69
  %90 = load i64, i64* %89, !mcsema_real_eip !69
  store i64 %90, i64* %R10_val, !mcsema_real_eip !69
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %92 = add i64 %91, 24, !mcsema_real_eip !70
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !70
  %94 = load i64, i64* %93, !mcsema_real_eip !70
  store i64 %94, i64* %R11_val, !mcsema_real_eip !70
  %95 = add i64 %91, 16, !mcsema_real_eip !71
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !71
  %97 = bitcast i64* %96 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !71
  %99 = zext i32 %98 to i64, !mcsema_real_eip !71
  store i64 %99, i64* %RBX_val, !mcsema_real_eip !71
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %101 = add i64 %100, -12, !mcsema_real_eip !72
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !72
  %103 = load i64, i64* %RDI_val, !mcsema_real_eip !72
  %104 = trunc i64 %103 to i32, !mcsema_real_eip !72
  %105 = bitcast i64* %102 to i32*
  store i32 %104, i32* %105, !mcsema_real_eip !72
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %107 = add i64 %106, -24, !mcsema_real_eip !73
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !73
  %109 = load i64, i64* %RSI_val, !mcsema_real_eip !73
  store i64 %109, i64* %108, !mcsema_real_eip !73
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %111 = add i64 %110, -32, !mcsema_real_eip !74
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !74
  %113 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %113, i64* %112, !mcsema_real_eip !74
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %115 = add i64 %114, -40, !mcsema_real_eip !75
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !75
  %117 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %117, i64* %116, !mcsema_real_eip !75
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %119 = add i64 %118, -44, !mcsema_real_eip !76
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !76
  %121 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !76
  %123 = bitcast i64* %120 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !76
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %125 = add i64 %124, -48, !mcsema_real_eip !77
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !77
  %127 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %128 = trunc i64 %127 to i32, !mcsema_real_eip !77
  %129 = bitcast i64* %126 to i32*
  store i32 %128, i32* %129, !mcsema_real_eip !77
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %131 = add i64 %130, -52, !mcsema_real_eip !78
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !78
  %133 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %134 = trunc i64 %133 to i32, !mcsema_real_eip !78
  %135 = bitcast i64* %132 to i32*
  store i32 %134, i32* %135, !mcsema_real_eip !78
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %137 = add i64 %136, -64, !mcsema_real_eip !79
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !79
  %139 = load i64, i64* %R11_val, !mcsema_real_eip !79
  store i64 %139, i64* %138, !mcsema_real_eip !79
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %141 = add i64 %140, -72, !mcsema_real_eip !80
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !80
  %143 = load i64, i64* %R10_val, !mcsema_real_eip !80
  store i64 %143, i64* %142, !mcsema_real_eip !80
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %145 = add i64 %144, -80, !mcsema_real_eip !81
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !81
  %147 = load i64, i64* %RAX_val, !mcsema_real_eip !81
  store i64 %147, i64* %146, !mcsema_real_eip !81
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %149 = add i64 %148, -84, !mcsema_real_eip !82
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !82
  %151 = bitcast i64* %150 to i32*
  store i32 0, i32* %151, !mcsema_real_eip !82
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %153 = add i64 %152, -12, !mcsema_real_eip !83
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !83
  %155 = bitcast i64* %154 to i32*
  %156 = load i32, i32* %155, !mcsema_real_eip !83
  %157 = zext i32 %156 to i64, !mcsema_real_eip !83
  store i64 %157, i64* %RDI_val, !mcsema_real_eip !83
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %159 = add i64 %158, -84, !mcsema_real_eip !84
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !84
  %161 = bitcast i64* %160 to i32*
  %162 = load i32, i32* %161, !mcsema_real_eip !84
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %156, i32 %162)
  %163 = extractvalue { i32, i1 } %uadd, 0
  %164 = xor i32 %163, %162, !mcsema_real_eip !84
  %165 = xor i32 %164, %156, !mcsema_real_eip !84
  %166 = and i32 %165, 16, !mcsema_real_eip !84
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !84
  store i1 %167, i1* %AF_val, !mcsema_real_eip !84
  %168 = icmp slt i32 %163, 0
  store i1 %168, i1* %SF_val, !mcsema_real_eip !84
  %169 = icmp eq i32 %163, 0, !mcsema_real_eip !84
  store i1 %169, i1* %ZF_val, !mcsema_real_eip !84
  %170 = xor i32 %156, -2147483648, !mcsema_real_eip !84
  %171 = xor i32 %170, %162, !mcsema_real_eip !84
  %172 = and i32 %164, %171, !mcsema_real_eip !84
  %173 = icmp slt i32 %172, 0
  store i1 %173, i1* %OF_val, !mcsema_real_eip !84
  %174 = trunc i32 %163 to i8, !mcsema_real_eip !84
  %175 = tail call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !84
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  store i1 %177, i1* %PF_val, !mcsema_real_eip !84
  %178 = extractvalue { i32, i1 } %uadd, 1
  store i1 %178, i1* %CF_val, !mcsema_real_eip !84
  %179 = zext i32 %163 to i64, !mcsema_real_eip !84
  store i64 %179, i64* %RDI_val, !mcsema_real_eip !84
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %181 = add i64 %180, -84, !mcsema_real_eip !85
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !85
  %183 = bitcast i64* %182 to i32*
  store i32 %163, i32* %183, !mcsema_real_eip !85
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %185 = add i64 %184, -88, !mcsema_real_eip !86
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !86
  %187 = bitcast i64* %186 to i32*
  store i32 0, i32* %187, !mcsema_real_eip !86
  %188 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %189 = add i64 %188, -88, !mcsema_real_eip !87
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !87
  %191 = bitcast i64* %190 to i32*
  %192 = load i32, i32* %191, !mcsema_real_eip !87
  %193 = zext i32 %192 to i64, !mcsema_real_eip !87
  store i64 %193, i64* %RAX_val, !mcsema_real_eip !87
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %195 = add i64 %194, -44, !mcsema_real_eip !88
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !88
  %197 = bitcast i64* %196 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !88
  %199 = sub i32 %192, %198, !mcsema_real_eip !88
  %200 = xor i32 %199, %192, !mcsema_real_eip !88
  %201 = xor i32 %200, %198, !mcsema_real_eip !88
  %202 = and i32 %201, 16, !mcsema_real_eip !88
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !88
  store i1 %203, i1* %AF_val, !mcsema_real_eip !88
  %204 = trunc i32 %199 to i8, !mcsema_real_eip !88
  %205 = tail call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !88
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  store i1 %207, i1* %PF_val, !mcsema_real_eip !88
  %208 = icmp eq i32 %192, %198
  store i1 %208, i1* %ZF_val, !mcsema_real_eip !88
  %209 = icmp slt i32 %199, 0
  store i1 %209, i1* %SF_val, !mcsema_real_eip !88
  %210 = icmp ult i32 %192, %198, !mcsema_real_eip !88
  store i1 %210, i1* %CF_val, !mcsema_real_eip !88
  %211 = xor i32 %198, %192, !mcsema_real_eip !88
  %212 = and i32 %200, %211, !mcsema_real_eip !88
  %213 = icmp slt i32 %212, 0
  store i1 %213, i1* %OF_val, !mcsema_real_eip !88
  %214 = load i1, i1* %SF_val, !mcsema_real_eip !89
  %tmp = xor i1 %214, %213
  br i1 %tmp, label %block_0x5d.preheader, label %block_0x7c, !mcsema_real_eip !89

block_0x5d.preheader:                             ; preds = %entry
  br label %block_0x5d

block_0x7c.loopexit:                              ; preds = %block_0x5d
  br label %block_0x7c

block_0x7c:                                       ; preds = %block_0x7c.loopexit, %entry
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %216 = add i64 %215, -32, !mcsema_real_eip !90
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !90
  %218 = load i64, i64* %217, !mcsema_real_eip !90
  store i64 %218, i64* %RAX_val, !mcsema_real_eip !90
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !91
  %220 = bitcast i64* %219 to i32*
  %221 = load i32, i32* %220, !mcsema_real_eip !91
  %222 = zext i32 %221 to i64, !mcsema_real_eip !91
  store i64 %222, i64* %RCX_val, !mcsema_real_eip !91
  %223 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %224 = add i64 %223, -84, !mcsema_real_eip !92
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !92
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !92
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 %227)
  %228 = extractvalue { i32, i1 } %uadd73, 0
  %229 = xor i32 %228, %227, !mcsema_real_eip !92
  %230 = xor i32 %229, %221, !mcsema_real_eip !92
  %231 = and i32 %230, 16, !mcsema_real_eip !92
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !92
  store i1 %232, i1* %AF_val, !mcsema_real_eip !92
  %233 = icmp slt i32 %228, 0
  store i1 %233, i1* %SF_val, !mcsema_real_eip !92
  %234 = icmp eq i32 %228, 0, !mcsema_real_eip !92
  store i1 %234, i1* %ZF_val, !mcsema_real_eip !92
  %235 = xor i32 %221, -2147483648, !mcsema_real_eip !92
  %236 = xor i32 %235, %227, !mcsema_real_eip !92
  %237 = and i32 %229, %236, !mcsema_real_eip !92
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF_val, !mcsema_real_eip !92
  %239 = trunc i32 %228 to i8, !mcsema_real_eip !92
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !92
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  store i1 %242, i1* %PF_val, !mcsema_real_eip !92
  %243 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %243, i1* %CF_val, !mcsema_real_eip !92
  %244 = zext i32 %228 to i64, !mcsema_real_eip !92
  store i64 %244, i64* %RCX_val, !mcsema_real_eip !92
  %245 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %246 = add i64 %245, -84, !mcsema_real_eip !93
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !93
  %248 = bitcast i64* %247 to i32*
  store i32 %228, i32* %248, !mcsema_real_eip !93
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %250 = add i64 %249, -92, !mcsema_real_eip !94
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !94
  %252 = bitcast i64* %251 to i32*
  store i32 0, i32* %252, !mcsema_real_eip !94
  %253 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %254 = add i64 %253, -92, !mcsema_real_eip !95
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !95
  %256 = bitcast i64* %255 to i32*
  %257 = load i32, i32* %256, !mcsema_real_eip !95
  %258 = zext i32 %257 to i64, !mcsema_real_eip !95
  store i64 %258, i64* %RAX_val, !mcsema_real_eip !95
  %259 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %260 = add i64 %259, -48, !mcsema_real_eip !96
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !96
  %262 = bitcast i64* %261 to i32*
  %263 = load i32, i32* %262, !mcsema_real_eip !96
  %264 = sub i32 %257, %263, !mcsema_real_eip !96
  %265 = xor i32 %264, %257, !mcsema_real_eip !96
  %266 = xor i32 %265, %263, !mcsema_real_eip !96
  %267 = and i32 %266, 16, !mcsema_real_eip !96
  %268 = icmp ne i32 %267, 0, !mcsema_real_eip !96
  store i1 %268, i1* %AF_val, !mcsema_real_eip !96
  %269 = trunc i32 %264 to i8, !mcsema_real_eip !96
  %270 = tail call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !96
  %271 = and i8 %270, 1
  %272 = icmp eq i8 %271, 0
  store i1 %272, i1* %PF_val, !mcsema_real_eip !96
  %273 = icmp eq i32 %257, %263
  store i1 %273, i1* %ZF_val, !mcsema_real_eip !96
  %274 = icmp slt i32 %264, 0
  store i1 %274, i1* %SF_val, !mcsema_real_eip !96
  %275 = icmp ult i32 %257, %263, !mcsema_real_eip !96
  store i1 %275, i1* %CF_val, !mcsema_real_eip !96
  %276 = xor i32 %263, %257, !mcsema_real_eip !96
  %277 = and i32 %265, %276, !mcsema_real_eip !96
  %278 = icmp slt i32 %277, 0
  store i1 %278, i1* %OF_val, !mcsema_real_eip !96
  %279 = load i1, i1* %SF_val, !mcsema_real_eip !97
  %tmp74 = xor i1 %279, %278
  br i1 %tmp74, label %block_0x9b.preheader, label %block_0xba, !mcsema_real_eip !97

block_0x9b.preheader:                             ; preds = %block_0x7c
  br label %block_0x9b

block_0x5d:                                       ; preds = %block_0x5d, %block_0x5d.preheader
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %281 = add i64 %280, -24, !mcsema_real_eip !98
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !98
  %283 = load i64, i64* %282, !mcsema_real_eip !98
  store i64 %283, i64* %RAX_val, !mcsema_real_eip !98
  %284 = add i64 %280, -88, !mcsema_real_eip !99
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !99
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !99
  %288 = sext i32 %287 to i64, !mcsema_real_eip !99
  store i64 %288, i64* %RCX_val, !mcsema_real_eip !99
  %289 = load i64, i64* %RAX_val, !mcsema_real_eip !100
  %290 = shl nsw i64 %288, 2
  %291 = add i64 %290, %289, !mcsema_real_eip !100
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !100
  %293 = bitcast i64* %292 to i32*
  %294 = load i32, i32* %293, !mcsema_real_eip !100
  %295 = zext i32 %294 to i64, !mcsema_real_eip !100
  store i64 %295, i64* %RDX_val, !mcsema_real_eip !100
  %296 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %297 = add i64 %296, -84, !mcsema_real_eip !101
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !101
  %299 = bitcast i64* %298 to i32*
  %300 = load i32, i32* %299, !mcsema_real_eip !101
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %300)
  %301 = extractvalue { i32, i1 } %uadd70, 0
  %302 = xor i32 %301, %300, !mcsema_real_eip !101
  %303 = xor i32 %302, %294, !mcsema_real_eip !101
  %304 = and i32 %303, 16, !mcsema_real_eip !101
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !101
  store i1 %305, i1* %AF_val, !mcsema_real_eip !101
  %306 = icmp slt i32 %301, 0
  store i1 %306, i1* %SF_val, !mcsema_real_eip !101
  %307 = icmp eq i32 %301, 0, !mcsema_real_eip !101
  store i1 %307, i1* %ZF_val, !mcsema_real_eip !101
  %308 = xor i32 %294, -2147483648, !mcsema_real_eip !101
  %309 = xor i32 %308, %300, !mcsema_real_eip !101
  %310 = and i32 %302, %309, !mcsema_real_eip !101
  %311 = icmp slt i32 %310, 0
  store i1 %311, i1* %OF_val, !mcsema_real_eip !101
  %312 = trunc i32 %301 to i8, !mcsema_real_eip !101
  %313 = tail call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !101
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  store i1 %315, i1* %PF_val, !mcsema_real_eip !101
  %316 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %316, i1* %CF_val, !mcsema_real_eip !101
  %317 = zext i32 %301 to i64, !mcsema_real_eip !101
  store i64 %317, i64* %RDX_val, !mcsema_real_eip !101
  %318 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %319 = add i64 %318, -84, !mcsema_real_eip !102
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !102
  %321 = bitcast i64* %320 to i32*
  store i32 %301, i32* %321, !mcsema_real_eip !102
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %323 = add i64 %322, -88, !mcsema_real_eip !103
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !103
  %325 = bitcast i64* %324 to i32*
  %326 = load i32, i32* %325, !mcsema_real_eip !103
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %326, i32 1)
  %327 = extractvalue { i32, i1 } %uadd71, 0
  %328 = xor i32 %327, %326, !mcsema_real_eip !104
  %329 = and i32 %328, 16, !mcsema_real_eip !104
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !104
  store i1 %330, i1* %AF_val, !mcsema_real_eip !104
  %331 = icmp slt i32 %327, 0
  store i1 %331, i1* %SF_val, !mcsema_real_eip !104
  %332 = icmp eq i32 %327, 0, !mcsema_real_eip !104
  store i1 %332, i1* %ZF_val, !mcsema_real_eip !104
  %333 = xor i32 %326, -2147483648, !mcsema_real_eip !104
  %334 = and i32 %328, %333, !mcsema_real_eip !104
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !104
  %336 = trunc i32 %327 to i8, !mcsema_real_eip !104
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !104
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !104
  %340 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !104
  %341 = zext i32 %327 to i64, !mcsema_real_eip !104
  store i64 %341, i64* %RAX_val, !mcsema_real_eip !104
  %342 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %343 = add i64 %342, -88, !mcsema_real_eip !105
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !105
  %345 = bitcast i64* %344 to i32*
  store i32 %327, i32* %345, !mcsema_real_eip !105
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %347 = add i64 %346, -88, !mcsema_real_eip !87
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !87
  %349 = bitcast i64* %348 to i32*
  %350 = load i32, i32* %349, !mcsema_real_eip !87
  %351 = zext i32 %350 to i64, !mcsema_real_eip !87
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !87
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %353 = add i64 %352, -44, !mcsema_real_eip !88
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !88
  %355 = bitcast i64* %354 to i32*
  %356 = load i32, i32* %355, !mcsema_real_eip !88
  %357 = sub i32 %350, %356, !mcsema_real_eip !88
  %358 = xor i32 %357, %350, !mcsema_real_eip !88
  %359 = xor i32 %358, %356, !mcsema_real_eip !88
  %360 = and i32 %359, 16, !mcsema_real_eip !88
  %361 = icmp ne i32 %360, 0, !mcsema_real_eip !88
  store i1 %361, i1* %AF_val, !mcsema_real_eip !88
  %362 = trunc i32 %357 to i8, !mcsema_real_eip !88
  %363 = tail call i8 @llvm.ctpop.i8(i8 %362), !mcsema_real_eip !88
  %364 = and i8 %363, 1
  %365 = icmp eq i8 %364, 0
  store i1 %365, i1* %PF_val, !mcsema_real_eip !88
  %366 = icmp eq i32 %350, %356
  store i1 %366, i1* %ZF_val, !mcsema_real_eip !88
  %367 = icmp slt i32 %357, 0
  store i1 %367, i1* %SF_val, !mcsema_real_eip !88
  %368 = icmp ult i32 %350, %356, !mcsema_real_eip !88
  store i1 %368, i1* %CF_val, !mcsema_real_eip !88
  %369 = xor i32 %356, %350, !mcsema_real_eip !88
  %370 = and i32 %358, %369, !mcsema_real_eip !88
  %371 = icmp slt i32 %370, 0
  store i1 %371, i1* %OF_val, !mcsema_real_eip !88
  %372 = load i1, i1* %SF_val, !mcsema_real_eip !89
  %tmp72 = xor i1 %372, %371
  br i1 %tmp72, label %block_0x5d, label %block_0x7c.loopexit, !mcsema_real_eip !89

block_0xba.loopexit:                              ; preds = %block_0x9b
  br label %block_0xba

block_0xba:                                       ; preds = %block_0xba.loopexit, %block_0x7c
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %374 = add i64 %373, -52, !mcsema_real_eip !106
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !106
  %376 = bitcast i64* %375 to i32*
  %377 = load i32, i32* %376, !mcsema_real_eip !106
  %378 = zext i32 %377 to i64, !mcsema_real_eip !106
  store i64 %378, i64* %RAX_val, !mcsema_real_eip !106
  %379 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %380 = add i64 %379, -84, !mcsema_real_eip !107
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !107
  %382 = bitcast i64* %381 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !107
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 %383)
  %384 = extractvalue { i32, i1 } %uadd78, 0
  %385 = xor i32 %384, %383, !mcsema_real_eip !107
  %386 = xor i32 %385, %377, !mcsema_real_eip !107
  %387 = and i32 %386, 16, !mcsema_real_eip !107
  %388 = icmp ne i32 %387, 0, !mcsema_real_eip !107
  store i1 %388, i1* %AF_val, !mcsema_real_eip !107
  %389 = icmp slt i32 %384, 0
  store i1 %389, i1* %SF_val, !mcsema_real_eip !107
  %390 = icmp eq i32 %384, 0, !mcsema_real_eip !107
  store i1 %390, i1* %ZF_val, !mcsema_real_eip !107
  %391 = xor i32 %377, -2147483648, !mcsema_real_eip !107
  %392 = xor i32 %391, %383, !mcsema_real_eip !107
  %393 = and i32 %385, %392, !mcsema_real_eip !107
  %394 = icmp slt i32 %393, 0
  store i1 %394, i1* %OF_val, !mcsema_real_eip !107
  %395 = trunc i32 %384 to i8, !mcsema_real_eip !107
  %396 = tail call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !107
  %397 = and i8 %396, 1
  %398 = icmp eq i8 %397, 0
  store i1 %398, i1* %PF_val, !mcsema_real_eip !107
  %399 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %399, i1* %CF_val, !mcsema_real_eip !107
  %400 = zext i32 %384 to i64, !mcsema_real_eip !107
  store i64 %400, i64* %RAX_val, !mcsema_real_eip !107
  %401 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %402 = add i64 %401, -84, !mcsema_real_eip !108
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !108
  %404 = bitcast i64* %403 to i32*
  store i32 %384, i32* %404, !mcsema_real_eip !108
  %405 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %406 = add i64 %405, -96, !mcsema_real_eip !109
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !109
  %408 = bitcast i64* %407 to i32*
  store i32 0, i32* %408, !mcsema_real_eip !109
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %410 = add i64 %409, -96, !mcsema_real_eip !110
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !110
  %412 = bitcast i64* %411 to i32*
  %413 = load i32, i32* %412, !mcsema_real_eip !110
  %414 = zext i32 %413 to i64, !mcsema_real_eip !110
  store i64 %414, i64* %RAX_val, !mcsema_real_eip !110
  %415 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %416 = add i64 %415, -44, !mcsema_real_eip !111
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !111
  %418 = bitcast i64* %417 to i32*
  %419 = load i32, i32* %418, !mcsema_real_eip !111
  %420 = sub i32 %413, %419, !mcsema_real_eip !111
  %421 = xor i32 %420, %413, !mcsema_real_eip !111
  %422 = xor i32 %421, %419, !mcsema_real_eip !111
  %423 = and i32 %422, 16, !mcsema_real_eip !111
  %424 = icmp ne i32 %423, 0, !mcsema_real_eip !111
  store i1 %424, i1* %AF_val, !mcsema_real_eip !111
  %425 = trunc i32 %420 to i8, !mcsema_real_eip !111
  %426 = tail call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !111
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF_val, !mcsema_real_eip !111
  %429 = icmp eq i32 %413, %419
  store i1 %429, i1* %ZF_val, !mcsema_real_eip !111
  %430 = icmp slt i32 %420, 0
  store i1 %430, i1* %SF_val, !mcsema_real_eip !111
  %431 = icmp ult i32 %413, %419, !mcsema_real_eip !111
  store i1 %431, i1* %CF_val, !mcsema_real_eip !111
  %432 = xor i32 %419, %413, !mcsema_real_eip !111
  %433 = and i32 %421, %432, !mcsema_real_eip !111
  %434 = icmp slt i32 %433, 0
  store i1 %434, i1* %OF_val, !mcsema_real_eip !111
  %435 = load i1, i1* %SF_val, !mcsema_real_eip !112
  %tmp79 = xor i1 %435, %434
  br i1 %tmp79, label %block_0xd6.preheader, label %block_0xf5, !mcsema_real_eip !112

block_0xd6.preheader:                             ; preds = %block_0xba
  br label %block_0xd6

block_0x9b:                                       ; preds = %block_0x9b, %block_0x9b.preheader
  %436 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %437 = add i64 %436, -40, !mcsema_real_eip !113
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !113
  %439 = load i64, i64* %438, !mcsema_real_eip !113
  store i64 %439, i64* %RAX_val, !mcsema_real_eip !113
  %440 = add i64 %436, -92, !mcsema_real_eip !114
  %441 = inttoptr i64 %440 to i64*, !mcsema_real_eip !114
  %442 = bitcast i64* %441 to i32*
  %443 = load i32, i32* %442, !mcsema_real_eip !114
  %444 = sext i32 %443 to i64, !mcsema_real_eip !114
  store i64 %444, i64* %RCX_val, !mcsema_real_eip !114
  %445 = load i64, i64* %RAX_val, !mcsema_real_eip !115
  %446 = shl nsw i64 %444, 2
  %447 = add i64 %446, %445, !mcsema_real_eip !115
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !115
  %449 = bitcast i64* %448 to i32*
  %450 = load i32, i32* %449, !mcsema_real_eip !115
  %451 = zext i32 %450 to i64, !mcsema_real_eip !115
  store i64 %451, i64* %RDX_val, !mcsema_real_eip !115
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !116
  %453 = add i64 %452, -84, !mcsema_real_eip !116
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !116
  %455 = bitcast i64* %454 to i32*
  %456 = load i32, i32* %455, !mcsema_real_eip !116
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %450, i32 %456)
  %457 = extractvalue { i32, i1 } %uadd75, 0
  %458 = xor i32 %457, %456, !mcsema_real_eip !116
  %459 = xor i32 %458, %450, !mcsema_real_eip !116
  %460 = and i32 %459, 16, !mcsema_real_eip !116
  %461 = icmp ne i32 %460, 0, !mcsema_real_eip !116
  store i1 %461, i1* %AF_val, !mcsema_real_eip !116
  %462 = icmp slt i32 %457, 0
  store i1 %462, i1* %SF_val, !mcsema_real_eip !116
  %463 = icmp eq i32 %457, 0, !mcsema_real_eip !116
  store i1 %463, i1* %ZF_val, !mcsema_real_eip !116
  %464 = xor i32 %450, -2147483648, !mcsema_real_eip !116
  %465 = xor i32 %464, %456, !mcsema_real_eip !116
  %466 = and i32 %458, %465, !mcsema_real_eip !116
  %467 = icmp slt i32 %466, 0
  store i1 %467, i1* %OF_val, !mcsema_real_eip !116
  %468 = trunc i32 %457 to i8, !mcsema_real_eip !116
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !116
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF_val, !mcsema_real_eip !116
  %472 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %472, i1* %CF_val, !mcsema_real_eip !116
  %473 = zext i32 %457 to i64, !mcsema_real_eip !116
  store i64 %473, i64* %RDX_val, !mcsema_real_eip !116
  %474 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %475 = add i64 %474, -84, !mcsema_real_eip !117
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !117
  %477 = bitcast i64* %476 to i32*
  store i32 %457, i32* %477, !mcsema_real_eip !117
  %478 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %479 = add i64 %478, -92, !mcsema_real_eip !118
  %480 = inttoptr i64 %479 to i64*, !mcsema_real_eip !118
  %481 = bitcast i64* %480 to i32*
  %482 = load i32, i32* %481, !mcsema_real_eip !118
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 1)
  %483 = extractvalue { i32, i1 } %uadd76, 0
  %484 = xor i32 %483, %482, !mcsema_real_eip !119
  %485 = and i32 %484, 16, !mcsema_real_eip !119
  %486 = icmp ne i32 %485, 0, !mcsema_real_eip !119
  store i1 %486, i1* %AF_val, !mcsema_real_eip !119
  %487 = icmp slt i32 %483, 0
  store i1 %487, i1* %SF_val, !mcsema_real_eip !119
  %488 = icmp eq i32 %483, 0, !mcsema_real_eip !119
  store i1 %488, i1* %ZF_val, !mcsema_real_eip !119
  %489 = xor i32 %482, -2147483648, !mcsema_real_eip !119
  %490 = and i32 %484, %489, !mcsema_real_eip !119
  %491 = icmp slt i32 %490, 0
  store i1 %491, i1* %OF_val, !mcsema_real_eip !119
  %492 = trunc i32 %483 to i8, !mcsema_real_eip !119
  %493 = tail call i8 @llvm.ctpop.i8(i8 %492), !mcsema_real_eip !119
  %494 = and i8 %493, 1
  %495 = icmp eq i8 %494, 0
  store i1 %495, i1* %PF_val, !mcsema_real_eip !119
  %496 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %496, i1* %CF_val, !mcsema_real_eip !119
  %497 = zext i32 %483 to i64, !mcsema_real_eip !119
  store i64 %497, i64* %RAX_val, !mcsema_real_eip !119
  %498 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %499 = add i64 %498, -92, !mcsema_real_eip !120
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !120
  %501 = bitcast i64* %500 to i32*
  store i32 %483, i32* %501, !mcsema_real_eip !120
  %502 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %503 = add i64 %502, -92, !mcsema_real_eip !95
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !95
  %505 = bitcast i64* %504 to i32*
  %506 = load i32, i32* %505, !mcsema_real_eip !95
  %507 = zext i32 %506 to i64, !mcsema_real_eip !95
  store i64 %507, i64* %RAX_val, !mcsema_real_eip !95
  %508 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %509 = add i64 %508, -48, !mcsema_real_eip !96
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !96
  %511 = bitcast i64* %510 to i32*
  %512 = load i32, i32* %511, !mcsema_real_eip !96
  %513 = sub i32 %506, %512, !mcsema_real_eip !96
  %514 = xor i32 %513, %506, !mcsema_real_eip !96
  %515 = xor i32 %514, %512, !mcsema_real_eip !96
  %516 = and i32 %515, 16, !mcsema_real_eip !96
  %517 = icmp ne i32 %516, 0, !mcsema_real_eip !96
  store i1 %517, i1* %AF_val, !mcsema_real_eip !96
  %518 = trunc i32 %513 to i8, !mcsema_real_eip !96
  %519 = tail call i8 @llvm.ctpop.i8(i8 %518), !mcsema_real_eip !96
  %520 = and i8 %519, 1
  %521 = icmp eq i8 %520, 0
  store i1 %521, i1* %PF_val, !mcsema_real_eip !96
  %522 = icmp eq i32 %506, %512
  store i1 %522, i1* %ZF_val, !mcsema_real_eip !96
  %523 = icmp slt i32 %513, 0
  store i1 %523, i1* %SF_val, !mcsema_real_eip !96
  %524 = icmp ult i32 %506, %512, !mcsema_real_eip !96
  store i1 %524, i1* %CF_val, !mcsema_real_eip !96
  %525 = xor i32 %512, %506, !mcsema_real_eip !96
  %526 = and i32 %514, %525, !mcsema_real_eip !96
  %527 = icmp slt i32 %526, 0
  store i1 %527, i1* %OF_val, !mcsema_real_eip !96
  %528 = load i1, i1* %SF_val, !mcsema_real_eip !97
  %tmp77 = xor i1 %528, %527
  br i1 %tmp77, label %block_0x9b, label %block_0xba.loopexit, !mcsema_real_eip !97

block_0xf5.loopexit:                              ; preds = %block_0xd6
  br label %block_0xf5

block_0xf5:                                       ; preds = %block_0xf5.loopexit, %block_0xba
  %529 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %530 = add i64 %529, -72, !mcsema_real_eip !121
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !121
  %532 = load i64, i64* %531, !mcsema_real_eip !121
  store i64 %532, i64* %RAX_val, !mcsema_real_eip !121
  %533 = inttoptr i64 %532 to i64*, !mcsema_real_eip !122
  %534 = bitcast i64* %533 to i32*
  %535 = load i32, i32* %534, !mcsema_real_eip !122
  %536 = zext i32 %535 to i64, !mcsema_real_eip !122
  store i64 %536, i64* %RCX_val, !mcsema_real_eip !122
  %537 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %538 = add i64 %537, -84, !mcsema_real_eip !123
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !123
  %540 = bitcast i64* %539 to i32*
  %541 = load i32, i32* %540, !mcsema_real_eip !123
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %535, i32 %541)
  %542 = extractvalue { i32, i1 } %uadd83, 0
  %543 = xor i32 %542, %541, !mcsema_real_eip !123
  %544 = xor i32 %543, %535, !mcsema_real_eip !123
  %545 = and i32 %544, 16, !mcsema_real_eip !123
  %546 = icmp ne i32 %545, 0, !mcsema_real_eip !123
  store i1 %546, i1* %AF_val, !mcsema_real_eip !123
  %547 = icmp slt i32 %542, 0
  store i1 %547, i1* %SF_val, !mcsema_real_eip !123
  %548 = icmp eq i32 %542, 0, !mcsema_real_eip !123
  store i1 %548, i1* %ZF_val, !mcsema_real_eip !123
  %549 = xor i32 %535, -2147483648, !mcsema_real_eip !123
  %550 = xor i32 %549, %541, !mcsema_real_eip !123
  %551 = and i32 %543, %550, !mcsema_real_eip !123
  %552 = icmp slt i32 %551, 0
  store i1 %552, i1* %OF_val, !mcsema_real_eip !123
  %553 = trunc i32 %542 to i8, !mcsema_real_eip !123
  %554 = tail call i8 @llvm.ctpop.i8(i8 %553), !mcsema_real_eip !123
  %555 = and i8 %554, 1
  %556 = icmp eq i8 %555, 0
  store i1 %556, i1* %PF_val, !mcsema_real_eip !123
  %557 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %557, i1* %CF_val, !mcsema_real_eip !123
  %558 = zext i32 %542 to i64, !mcsema_real_eip !123
  store i64 %558, i64* %RCX_val, !mcsema_real_eip !123
  %559 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %560 = add i64 %559, -84, !mcsema_real_eip !124
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !124
  %562 = bitcast i64* %561 to i32*
  store i32 %542, i32* %562, !mcsema_real_eip !124
  %563 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %564 = add i64 %563, -100, !mcsema_real_eip !125
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !125
  %566 = bitcast i64* %565 to i32*
  store i32 0, i32* %566, !mcsema_real_eip !125
  %567 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %568 = add i64 %567, -100, !mcsema_real_eip !126
  %569 = inttoptr i64 %568 to i64*, !mcsema_real_eip !126
  %570 = bitcast i64* %569 to i32*
  %571 = load i32, i32* %570, !mcsema_real_eip !126
  %572 = zext i32 %571 to i64, !mcsema_real_eip !126
  store i64 %572, i64* %RAX_val, !mcsema_real_eip !126
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %574 = add i64 %573, -48, !mcsema_real_eip !127
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !127
  %576 = bitcast i64* %575 to i32*
  %577 = load i32, i32* %576, !mcsema_real_eip !127
  %578 = sub i32 %571, %577, !mcsema_real_eip !127
  %579 = xor i32 %578, %571, !mcsema_real_eip !127
  %580 = xor i32 %579, %577, !mcsema_real_eip !127
  %581 = and i32 %580, 16, !mcsema_real_eip !127
  %582 = icmp ne i32 %581, 0, !mcsema_real_eip !127
  store i1 %582, i1* %AF_val, !mcsema_real_eip !127
  %583 = trunc i32 %578 to i8, !mcsema_real_eip !127
  %584 = tail call i8 @llvm.ctpop.i8(i8 %583), !mcsema_real_eip !127
  %585 = and i8 %584, 1
  %586 = icmp eq i8 %585, 0
  store i1 %586, i1* %PF_val, !mcsema_real_eip !127
  %587 = icmp eq i32 %571, %577
  store i1 %587, i1* %ZF_val, !mcsema_real_eip !127
  %588 = icmp slt i32 %578, 0
  store i1 %588, i1* %SF_val, !mcsema_real_eip !127
  %589 = icmp ult i32 %571, %577, !mcsema_real_eip !127
  store i1 %589, i1* %CF_val, !mcsema_real_eip !127
  %590 = xor i32 %577, %571, !mcsema_real_eip !127
  %591 = and i32 %579, %590, !mcsema_real_eip !127
  %592 = icmp slt i32 %591, 0
  store i1 %592, i1* %OF_val, !mcsema_real_eip !127
  %593 = load i1, i1* %SF_val, !mcsema_real_eip !128
  %tmp84 = xor i1 %593, %592
  br i1 %tmp84, label %block_0x114.preheader, label %block_0x133, !mcsema_real_eip !128

block_0x114.preheader:                            ; preds = %block_0xf5
  br label %block_0x114

block_0xd6:                                       ; preds = %block_0xd6, %block_0xd6.preheader
  %594 = load i64, i64* %RBP_val, !mcsema_real_eip !129
  %595 = add i64 %594, -64, !mcsema_real_eip !129
  %596 = inttoptr i64 %595 to i64*, !mcsema_real_eip !129
  %597 = load i64, i64* %596, !mcsema_real_eip !129
  store i64 %597, i64* %RAX_val, !mcsema_real_eip !129
  %598 = add i64 %594, -96, !mcsema_real_eip !130
  %599 = inttoptr i64 %598 to i64*, !mcsema_real_eip !130
  %600 = bitcast i64* %599 to i32*
  %601 = load i32, i32* %600, !mcsema_real_eip !130
  %602 = sext i32 %601 to i64, !mcsema_real_eip !130
  store i64 %602, i64* %RCX_val, !mcsema_real_eip !130
  %603 = load i64, i64* %RAX_val, !mcsema_real_eip !131
  %604 = shl nsw i64 %602, 2
  %605 = add i64 %604, %603, !mcsema_real_eip !131
  %606 = inttoptr i64 %605 to i64*, !mcsema_real_eip !131
  %607 = bitcast i64* %606 to i32*
  %608 = load i32, i32* %607, !mcsema_real_eip !131
  %609 = zext i32 %608 to i64, !mcsema_real_eip !131
  store i64 %609, i64* %RDX_val, !mcsema_real_eip !131
  %610 = load i64, i64* %RBP_val, !mcsema_real_eip !132
  %611 = add i64 %610, -84, !mcsema_real_eip !132
  %612 = inttoptr i64 %611 to i64*, !mcsema_real_eip !132
  %613 = bitcast i64* %612 to i32*
  %614 = load i32, i32* %613, !mcsema_real_eip !132
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %608, i32 %614)
  %615 = extractvalue { i32, i1 } %uadd80, 0
  %616 = xor i32 %615, %614, !mcsema_real_eip !132
  %617 = xor i32 %616, %608, !mcsema_real_eip !132
  %618 = and i32 %617, 16, !mcsema_real_eip !132
  %619 = icmp ne i32 %618, 0, !mcsema_real_eip !132
  store i1 %619, i1* %AF_val, !mcsema_real_eip !132
  %620 = icmp slt i32 %615, 0
  store i1 %620, i1* %SF_val, !mcsema_real_eip !132
  %621 = icmp eq i32 %615, 0, !mcsema_real_eip !132
  store i1 %621, i1* %ZF_val, !mcsema_real_eip !132
  %622 = xor i32 %608, -2147483648, !mcsema_real_eip !132
  %623 = xor i32 %622, %614, !mcsema_real_eip !132
  %624 = and i32 %616, %623, !mcsema_real_eip !132
  %625 = icmp slt i32 %624, 0
  store i1 %625, i1* %OF_val, !mcsema_real_eip !132
  %626 = trunc i32 %615 to i8, !mcsema_real_eip !132
  %627 = tail call i8 @llvm.ctpop.i8(i8 %626), !mcsema_real_eip !132
  %628 = and i8 %627, 1
  %629 = icmp eq i8 %628, 0
  store i1 %629, i1* %PF_val, !mcsema_real_eip !132
  %630 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %630, i1* %CF_val, !mcsema_real_eip !132
  %631 = zext i32 %615 to i64, !mcsema_real_eip !132
  store i64 %631, i64* %RDX_val, !mcsema_real_eip !132
  %632 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  %633 = add i64 %632, -84, !mcsema_real_eip !133
  %634 = inttoptr i64 %633 to i64*, !mcsema_real_eip !133
  %635 = bitcast i64* %634 to i32*
  store i32 %615, i32* %635, !mcsema_real_eip !133
  %636 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  %637 = add i64 %636, -96, !mcsema_real_eip !134
  %638 = inttoptr i64 %637 to i64*, !mcsema_real_eip !134
  %639 = bitcast i64* %638 to i32*
  %640 = load i32, i32* %639, !mcsema_real_eip !134
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %640, i32 1)
  %641 = extractvalue { i32, i1 } %uadd81, 0
  %642 = xor i32 %641, %640, !mcsema_real_eip !135
  %643 = and i32 %642, 16, !mcsema_real_eip !135
  %644 = icmp ne i32 %643, 0, !mcsema_real_eip !135
  store i1 %644, i1* %AF_val, !mcsema_real_eip !135
  %645 = icmp slt i32 %641, 0
  store i1 %645, i1* %SF_val, !mcsema_real_eip !135
  %646 = icmp eq i32 %641, 0, !mcsema_real_eip !135
  store i1 %646, i1* %ZF_val, !mcsema_real_eip !135
  %647 = xor i32 %640, -2147483648, !mcsema_real_eip !135
  %648 = and i32 %642, %647, !mcsema_real_eip !135
  %649 = icmp slt i32 %648, 0
  store i1 %649, i1* %OF_val, !mcsema_real_eip !135
  %650 = trunc i32 %641 to i8, !mcsema_real_eip !135
  %651 = tail call i8 @llvm.ctpop.i8(i8 %650), !mcsema_real_eip !135
  %652 = and i8 %651, 1
  %653 = icmp eq i8 %652, 0
  store i1 %653, i1* %PF_val, !mcsema_real_eip !135
  %654 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %654, i1* %CF_val, !mcsema_real_eip !135
  %655 = zext i32 %641 to i64, !mcsema_real_eip !135
  store i64 %655, i64* %RAX_val, !mcsema_real_eip !135
  %656 = load i64, i64* %RBP_val, !mcsema_real_eip !136
  %657 = add i64 %656, -96, !mcsema_real_eip !136
  %658 = inttoptr i64 %657 to i64*, !mcsema_real_eip !136
  %659 = bitcast i64* %658 to i32*
  store i32 %641, i32* %659, !mcsema_real_eip !136
  %660 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %661 = add i64 %660, -96, !mcsema_real_eip !110
  %662 = inttoptr i64 %661 to i64*, !mcsema_real_eip !110
  %663 = bitcast i64* %662 to i32*
  %664 = load i32, i32* %663, !mcsema_real_eip !110
  %665 = zext i32 %664 to i64, !mcsema_real_eip !110
  store i64 %665, i64* %RAX_val, !mcsema_real_eip !110
  %666 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %667 = add i64 %666, -44, !mcsema_real_eip !111
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !111
  %669 = bitcast i64* %668 to i32*
  %670 = load i32, i32* %669, !mcsema_real_eip !111
  %671 = sub i32 %664, %670, !mcsema_real_eip !111
  %672 = xor i32 %671, %664, !mcsema_real_eip !111
  %673 = xor i32 %672, %670, !mcsema_real_eip !111
  %674 = and i32 %673, 16, !mcsema_real_eip !111
  %675 = icmp ne i32 %674, 0, !mcsema_real_eip !111
  store i1 %675, i1* %AF_val, !mcsema_real_eip !111
  %676 = trunc i32 %671 to i8, !mcsema_real_eip !111
  %677 = tail call i8 @llvm.ctpop.i8(i8 %676), !mcsema_real_eip !111
  %678 = and i8 %677, 1
  %679 = icmp eq i8 %678, 0
  store i1 %679, i1* %PF_val, !mcsema_real_eip !111
  %680 = icmp eq i32 %664, %670
  store i1 %680, i1* %ZF_val, !mcsema_real_eip !111
  %681 = icmp slt i32 %671, 0
  store i1 %681, i1* %SF_val, !mcsema_real_eip !111
  %682 = icmp ult i32 %664, %670, !mcsema_real_eip !111
  store i1 %682, i1* %CF_val, !mcsema_real_eip !111
  %683 = xor i32 %670, %664, !mcsema_real_eip !111
  %684 = and i32 %672, %683, !mcsema_real_eip !111
  %685 = icmp slt i32 %684, 0
  store i1 %685, i1* %OF_val, !mcsema_real_eip !111
  %686 = load i1, i1* %SF_val, !mcsema_real_eip !112
  %tmp82 = xor i1 %686, %685
  br i1 %tmp82, label %block_0xd6, label %block_0xf5.loopexit, !mcsema_real_eip !112

block_0x133.loopexit:                             ; preds = %block_0x114
  br label %block_0x133

block_0x133:                                      ; preds = %block_0x133.loopexit, %block_0xf5
  %687 = load i64, i64* %RBP_val, !mcsema_real_eip !137
  %688 = add i64 %687, -84, !mcsema_real_eip !137
  %689 = inttoptr i64 %688 to i64*, !mcsema_real_eip !137
  %690 = bitcast i64* %689 to i32*
  %691 = load i32, i32* %690, !mcsema_real_eip !137
  %692 = zext i32 %691 to i64, !mcsema_real_eip !137
  store i64 %692, i64* %RAX_val, !mcsema_real_eip !137
  %693 = load i64, i64* %RSP_val, !mcsema_real_eip !138
  %694 = inttoptr i64 %693 to i64*, !mcsema_real_eip !138
  %695 = load i64, i64* %694, !mcsema_real_eip !138
  store i64 %695, i64* %RBX_val, !mcsema_real_eip !138
  %696 = add i64 %693, 8, !mcsema_real_eip !138
  store i64 %696, i64* %RSP_val, !mcsema_real_eip !138
  %697 = inttoptr i64 %696 to i64*, !mcsema_real_eip !139
  %698 = load i64, i64* %697, !mcsema_real_eip !139
  store i64 %698, i64* %RBP_val, !mcsema_real_eip !139
  %699 = add i64 %693, 24, !mcsema_real_eip !140
  store i64 %699, i64* %RSP_val, !mcsema_real_eip !140
  %700 = load i64, i64* %RAX_val, !mcsema_real_eip !140
  store i64 %700, i64* %RAX, !mcsema_real_eip !140
  %701 = load i64, i64* %RBX_val, !mcsema_real_eip !140
  store i64 %701, i64* %RBX, !mcsema_real_eip !140
  %702 = load i64, i64* %RCX_val, !mcsema_real_eip !140
  store i64 %702, i64* %RCX, !mcsema_real_eip !140
  %703 = load i64, i64* %RDX_val, !mcsema_real_eip !140
  store i64 %703, i64* %RDX, !mcsema_real_eip !140
  %704 = load i64, i64* %RSI_val, !mcsema_real_eip !140
  store i64 %704, i64* %RSI, !mcsema_real_eip !140
  %705 = load i64, i64* %RDI_val, !mcsema_real_eip !140
  store i64 %705, i64* %RDI, !mcsema_real_eip !140
  %706 = load i64, i64* %RSP_val, !mcsema_real_eip !140
  store i64 %706, i64* %RSP, !mcsema_real_eip !140
  %707 = load i64, i64* %RBP_val, !mcsema_real_eip !140
  store i64 %707, i64* %RBP, !mcsema_real_eip !140
  %708 = load i64, i64* %R8_val, !mcsema_real_eip !140
  store i64 %708, i64* %R8, !mcsema_real_eip !140
  %709 = load i64, i64* %R9_val, !mcsema_real_eip !140
  store i64 %709, i64* %R9, !mcsema_real_eip !140
  %710 = load i64, i64* %R10_val, !mcsema_real_eip !140
  store i64 %710, i64* %R10, !mcsema_real_eip !140
  %711 = load i64, i64* %R11_val, !mcsema_real_eip !140
  store i64 %711, i64* %R11, !mcsema_real_eip !140
  %712 = load i64, i64* %R12_val, !mcsema_real_eip !140
  store i64 %712, i64* %R12, !mcsema_real_eip !140
  %713 = load i64, i64* %R13_val, !mcsema_real_eip !140
  store i64 %713, i64* %R13, !mcsema_real_eip !140
  %714 = load i64, i64* %R14_val, !mcsema_real_eip !140
  store i64 %714, i64* %R14, !mcsema_real_eip !140
  %715 = load i64, i64* %R15_val, !mcsema_real_eip !140
  store i64 %715, i64* %R15, !mcsema_real_eip !140
  %716 = load i64, i64* %RIP_val, !mcsema_real_eip !140
  store i64 %716, i64* %RIP, !mcsema_real_eip !140
  %717 = load i1, i1* %CF_val, !mcsema_real_eip !140
  store i1 %717, i1* %CF, align 1, !mcsema_real_eip !140
  %718 = load i1, i1* %PF_val, !mcsema_real_eip !140
  store i1 %718, i1* %PF, align 1, !mcsema_real_eip !140
  %719 = load i1, i1* %AF_val, !mcsema_real_eip !140
  store i1 %719, i1* %AF, align 1, !mcsema_real_eip !140
  %720 = load i1, i1* %ZF_val, !mcsema_real_eip !140
  store i1 %720, i1* %ZF, align 1, !mcsema_real_eip !140
  %721 = load i1, i1* %SF_val, !mcsema_real_eip !140
  store i1 %721, i1* %SF, align 1, !mcsema_real_eip !140
  %722 = load i1, i1* %OF_val, !mcsema_real_eip !140
  store i1 %722, i1* %OF, align 1, !mcsema_real_eip !140
  %723 = load i1, i1* %DF_val, !mcsema_real_eip !140
  store i1 %723, i1* %DF, align 1, !mcsema_real_eip !140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !140
  %724 = load i1, i1* %FPU_B_val, !mcsema_real_eip !140
  store i1 %724, i1* %FPU_B, align 1, !mcsema_real_eip !140
  %725 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !140
  store i1 %725, i1* %FPU_C3, align 1, !mcsema_real_eip !140
  %726 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !140
  store i3 %726, i3* %FPU_TOP, align 1, !mcsema_real_eip !140
  %727 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !140
  store i1 %727, i1* %FPU_C2, align 1, !mcsema_real_eip !140
  %728 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !140
  store i1 %728, i1* %FPU_C1, align 1, !mcsema_real_eip !140
  %729 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !140
  store i1 %729, i1* %FPU_C0, align 1, !mcsema_real_eip !140
  %730 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !140
  store i1 %730, i1* %FPU_ES, align 1, !mcsema_real_eip !140
  %731 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !140
  store i1 %731, i1* %FPU_SF, align 1, !mcsema_real_eip !140
  %732 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !140
  store i1 %732, i1* %FPU_PE, align 1, !mcsema_real_eip !140
  %733 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !140
  store i1 %733, i1* %FPU_UE, align 1, !mcsema_real_eip !140
  %734 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !140
  store i1 %734, i1* %FPU_OE, align 1, !mcsema_real_eip !140
  %735 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !140
  store i1 %735, i1* %FPU_ZE, align 1, !mcsema_real_eip !140
  %736 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !140
  store i1 %736, i1* %FPU_DE, align 1, !mcsema_real_eip !140
  %737 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !140
  store i1 %737, i1* %FPU_IE, align 1, !mcsema_real_eip !140
  %738 = load i1, i1* %FPU_X_val, !mcsema_real_eip !140
  store i1 %738, i1* %FPU_X, align 1, !mcsema_real_eip !140
  %739 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !140
  store i2 %739, i2* %FPU_RC, align 1, !mcsema_real_eip !140
  %740 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !140
  store i2 %740, i2* %FPU_PC, align 1, !mcsema_real_eip !140
  %741 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !140
  store i1 %741, i1* %FPU_PM, align 1, !mcsema_real_eip !140
  %742 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !140
  store i1 %742, i1* %FPU_UM, align 1, !mcsema_real_eip !140
  %743 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !140
  store i1 %743, i1* %FPU_OM, align 1, !mcsema_real_eip !140
  %744 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !140
  store i1 %744, i1* %FPU_ZM, align 1, !mcsema_real_eip !140
  %745 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !140
  store i1 %745, i1* %FPU_DM, align 1, !mcsema_real_eip !140
  %746 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !140
  store i1 %746, i1* %FPU_IM, align 1, !mcsema_real_eip !140
  %747 = load i64, i64* %53, align 4
  store i64 %747, i64* %52, align 4
  %748 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !140
  store i16 %748, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !140
  %749 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !140
  store i64 %749, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !140
  %750 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !140
  store i16 %750, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !140
  %751 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !140
  store i64 %751, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !140
  %752 = load i128, i128* %XMM0_val, !mcsema_real_eip !140
  store i128 %752, i128* %XMM0, align 1, !mcsema_real_eip !140
  %753 = load i128, i128* %XMM1_val, !mcsema_real_eip !140
  store i128 %753, i128* %XMM1, align 1, !mcsema_real_eip !140
  %754 = load i128, i128* %XMM2_val, !mcsema_real_eip !140
  store i128 %754, i128* %XMM2, align 1, !mcsema_real_eip !140
  %755 = load i128, i128* %XMM3_val, !mcsema_real_eip !140
  store i128 %755, i128* %XMM3, align 1, !mcsema_real_eip !140
  %756 = load i128, i128* %XMM4_val, !mcsema_real_eip !140
  store i128 %756, i128* %XMM4, align 1, !mcsema_real_eip !140
  %757 = load i128, i128* %XMM5_val, !mcsema_real_eip !140
  store i128 %757, i128* %XMM5, align 1, !mcsema_real_eip !140
  %758 = load i128, i128* %XMM6_val, !mcsema_real_eip !140
  store i128 %758, i128* %XMM6, align 1, !mcsema_real_eip !140
  %759 = load i128, i128* %XMM7_val, !mcsema_real_eip !140
  store i128 %759, i128* %XMM7, align 1, !mcsema_real_eip !140
  %760 = load i128, i128* %XMM8_val, !mcsema_real_eip !140
  store i128 %760, i128* %XMM8, align 1, !mcsema_real_eip !140
  %761 = load i128, i128* %XMM9_val, !mcsema_real_eip !140
  store i128 %761, i128* %XMM9, align 1, !mcsema_real_eip !140
  %762 = load i128, i128* %XMM10_val, !mcsema_real_eip !140
  store i128 %762, i128* %XMM10, align 1, !mcsema_real_eip !140
  %763 = load i128, i128* %XMM11_val, !mcsema_real_eip !140
  store i128 %763, i128* %XMM11, align 1, !mcsema_real_eip !140
  %764 = load i128, i128* %XMM12_val, !mcsema_real_eip !140
  store i128 %764, i128* %XMM12, align 1, !mcsema_real_eip !140
  %765 = load i128, i128* %XMM13_val, !mcsema_real_eip !140
  store i128 %765, i128* %XMM13, align 1, !mcsema_real_eip !140
  %766 = load i128, i128* %XMM14_val, !mcsema_real_eip !140
  store i128 %766, i128* %XMM14, align 1, !mcsema_real_eip !140
  %767 = load i128, i128* %XMM15_val, !mcsema_real_eip !140
  store i128 %767, i128* %XMM15, align 1, !mcsema_real_eip !140
  %768 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !140
  store i64 %768, i64* %STACK_BASE, align 1, !mcsema_real_eip !140
  %769 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !140
  store i64 %769, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !140
  ret void, !mcsema_real_eip !140

block_0x114:                                      ; preds = %block_0x114, %block_0x114.preheader
  %770 = load i64, i64* %RBP_val, !mcsema_real_eip !141
  %771 = add i64 %770, -80, !mcsema_real_eip !141
  %772 = inttoptr i64 %771 to i64*, !mcsema_real_eip !141
  %773 = load i64, i64* %772, !mcsema_real_eip !141
  store i64 %773, i64* %RAX_val, !mcsema_real_eip !141
  %774 = add i64 %770, -100, !mcsema_real_eip !142
  %775 = inttoptr i64 %774 to i64*, !mcsema_real_eip !142
  %776 = bitcast i64* %775 to i32*
  %777 = load i32, i32* %776, !mcsema_real_eip !142
  %778 = sext i32 %777 to i64, !mcsema_real_eip !142
  store i64 %778, i64* %RCX_val, !mcsema_real_eip !142
  %779 = load i64, i64* %RAX_val, !mcsema_real_eip !143
  %780 = shl nsw i64 %778, 2
  %781 = add i64 %780, %779, !mcsema_real_eip !143
  %782 = inttoptr i64 %781 to i64*, !mcsema_real_eip !143
  %783 = bitcast i64* %782 to i32*
  %784 = load i32, i32* %783, !mcsema_real_eip !143
  %785 = zext i32 %784 to i64, !mcsema_real_eip !143
  store i64 %785, i64* %RDX_val, !mcsema_real_eip !143
  %786 = load i64, i64* %RBP_val, !mcsema_real_eip !144
  %787 = add i64 %786, -84, !mcsema_real_eip !144
  %788 = inttoptr i64 %787 to i64*, !mcsema_real_eip !144
  %789 = bitcast i64* %788 to i32*
  %790 = load i32, i32* %789, !mcsema_real_eip !144
  %uadd85 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %784, i32 %790)
  %791 = extractvalue { i32, i1 } %uadd85, 0
  %792 = xor i32 %791, %790, !mcsema_real_eip !144
  %793 = xor i32 %792, %784, !mcsema_real_eip !144
  %794 = and i32 %793, 16, !mcsema_real_eip !144
  %795 = icmp ne i32 %794, 0, !mcsema_real_eip !144
  store i1 %795, i1* %AF_val, !mcsema_real_eip !144
  %796 = icmp slt i32 %791, 0
  store i1 %796, i1* %SF_val, !mcsema_real_eip !144
  %797 = icmp eq i32 %791, 0, !mcsema_real_eip !144
  store i1 %797, i1* %ZF_val, !mcsema_real_eip !144
  %798 = xor i32 %784, -2147483648, !mcsema_real_eip !144
  %799 = xor i32 %798, %790, !mcsema_real_eip !144
  %800 = and i32 %792, %799, !mcsema_real_eip !144
  %801 = icmp slt i32 %800, 0
  store i1 %801, i1* %OF_val, !mcsema_real_eip !144
  %802 = trunc i32 %791 to i8, !mcsema_real_eip !144
  %803 = tail call i8 @llvm.ctpop.i8(i8 %802), !mcsema_real_eip !144
  %804 = and i8 %803, 1
  %805 = icmp eq i8 %804, 0
  store i1 %805, i1* %PF_val, !mcsema_real_eip !144
  %806 = extractvalue { i32, i1 } %uadd85, 1
  store i1 %806, i1* %CF_val, !mcsema_real_eip !144
  %807 = zext i32 %791 to i64, !mcsema_real_eip !144
  store i64 %807, i64* %RDX_val, !mcsema_real_eip !144
  %808 = load i64, i64* %RBP_val, !mcsema_real_eip !145
  %809 = add i64 %808, -84, !mcsema_real_eip !145
  %810 = inttoptr i64 %809 to i64*, !mcsema_real_eip !145
  %811 = bitcast i64* %810 to i32*
  store i32 %791, i32* %811, !mcsema_real_eip !145
  %812 = load i64, i64* %RBP_val, !mcsema_real_eip !146
  %813 = add i64 %812, -100, !mcsema_real_eip !146
  %814 = inttoptr i64 %813 to i64*, !mcsema_real_eip !146
  %815 = bitcast i64* %814 to i32*
  %816 = load i32, i32* %815, !mcsema_real_eip !146
  %uadd86 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %816, i32 1)
  %817 = extractvalue { i32, i1 } %uadd86, 0
  %818 = xor i32 %817, %816, !mcsema_real_eip !147
  %819 = and i32 %818, 16, !mcsema_real_eip !147
  %820 = icmp ne i32 %819, 0, !mcsema_real_eip !147
  store i1 %820, i1* %AF_val, !mcsema_real_eip !147
  %821 = icmp slt i32 %817, 0
  store i1 %821, i1* %SF_val, !mcsema_real_eip !147
  %822 = icmp eq i32 %817, 0, !mcsema_real_eip !147
  store i1 %822, i1* %ZF_val, !mcsema_real_eip !147
  %823 = xor i32 %816, -2147483648, !mcsema_real_eip !147
  %824 = and i32 %818, %823, !mcsema_real_eip !147
  %825 = icmp slt i32 %824, 0
  store i1 %825, i1* %OF_val, !mcsema_real_eip !147
  %826 = trunc i32 %817 to i8, !mcsema_real_eip !147
  %827 = tail call i8 @llvm.ctpop.i8(i8 %826), !mcsema_real_eip !147
  %828 = and i8 %827, 1
  %829 = icmp eq i8 %828, 0
  store i1 %829, i1* %PF_val, !mcsema_real_eip !147
  %830 = extractvalue { i32, i1 } %uadd86, 1
  store i1 %830, i1* %CF_val, !mcsema_real_eip !147
  %831 = zext i32 %817 to i64, !mcsema_real_eip !147
  store i64 %831, i64* %RAX_val, !mcsema_real_eip !147
  %832 = load i64, i64* %RBP_val, !mcsema_real_eip !148
  %833 = add i64 %832, -100, !mcsema_real_eip !148
  %834 = inttoptr i64 %833 to i64*, !mcsema_real_eip !148
  %835 = bitcast i64* %834 to i32*
  store i32 %817, i32* %835, !mcsema_real_eip !148
  %836 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %837 = add i64 %836, -100, !mcsema_real_eip !126
  %838 = inttoptr i64 %837 to i64*, !mcsema_real_eip !126
  %839 = bitcast i64* %838 to i32*
  %840 = load i32, i32* %839, !mcsema_real_eip !126
  %841 = zext i32 %840 to i64, !mcsema_real_eip !126
  store i64 %841, i64* %RAX_val, !mcsema_real_eip !126
  %842 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %843 = add i64 %842, -48, !mcsema_real_eip !127
  %844 = inttoptr i64 %843 to i64*, !mcsema_real_eip !127
  %845 = bitcast i64* %844 to i32*
  %846 = load i32, i32* %845, !mcsema_real_eip !127
  %847 = sub i32 %840, %846, !mcsema_real_eip !127
  %848 = xor i32 %847, %840, !mcsema_real_eip !127
  %849 = xor i32 %848, %846, !mcsema_real_eip !127
  %850 = and i32 %849, 16, !mcsema_real_eip !127
  %851 = icmp ne i32 %850, 0, !mcsema_real_eip !127
  store i1 %851, i1* %AF_val, !mcsema_real_eip !127
  %852 = trunc i32 %847 to i8, !mcsema_real_eip !127
  %853 = tail call i8 @llvm.ctpop.i8(i8 %852), !mcsema_real_eip !127
  %854 = and i8 %853, 1
  %855 = icmp eq i8 %854, 0
  store i1 %855, i1* %PF_val, !mcsema_real_eip !127
  %856 = icmp eq i32 %840, %846
  store i1 %856, i1* %ZF_val, !mcsema_real_eip !127
  %857 = icmp slt i32 %847, 0
  store i1 %857, i1* %SF_val, !mcsema_real_eip !127
  %858 = icmp ult i32 %840, %846, !mcsema_real_eip !127
  store i1 %858, i1* %CF_val, !mcsema_real_eip !127
  %859 = xor i32 %846, %840, !mcsema_real_eip !127
  %860 = and i32 %848, %859, !mcsema_real_eip !127
  %861 = icmp slt i32 %860, 0
  store i1 %861, i1* %OF_val, !mcsema_real_eip !127
  %862 = load i1, i1* %SF_val, !mcsema_real_eip !128
  %tmp87 = xor i1 %862, %861
  br i1 %tmp87, label %block_0x114, label %block_0x133.loopexit, !mcsema_real_eip !128
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_140(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 108
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 108
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !65
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !65
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !65
  %XMM15_val = alloca i128, !mcsema_real_eip !65
  %XMM14_val = alloca i128, !mcsema_real_eip !65
  %XMM13_val = alloca i128, !mcsema_real_eip !65
  %XMM12_val = alloca i128, !mcsema_real_eip !65
  %XMM11_val = alloca i128, !mcsema_real_eip !65
  %XMM10_val = alloca i128, !mcsema_real_eip !65
  %XMM9_val = alloca i128, !mcsema_real_eip !65
  %XMM8_val = alloca i128, !mcsema_real_eip !65
  %XMM7_val = alloca i128, !mcsema_real_eip !65
  %XMM6_val = alloca i128, !mcsema_real_eip !65
  %XMM5_val = alloca i128, !mcsema_real_eip !65
  %XMM4_val = alloca i128, !mcsema_real_eip !65
  %XMM3_val = alloca i128, !mcsema_real_eip !65
  %XMM2_val = alloca i128, !mcsema_real_eip !65
  %XMM1_val = alloca i128, !mcsema_real_eip !65
  %XMM0_val = alloca i128, !mcsema_real_eip !65
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !65
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !65
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !65
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !65
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !65
  %FPU_IM_val = alloca i1, !mcsema_real_eip !65
  %FPU_DM_val = alloca i1, !mcsema_real_eip !65
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !65
  %FPU_OM_val = alloca i1, !mcsema_real_eip !65
  %FPU_UM_val = alloca i1, !mcsema_real_eip !65
  %FPU_PM_val = alloca i1, !mcsema_real_eip !65
  %FPU_PC_val = alloca i2, !mcsema_real_eip !65
  %FPU_RC_val = alloca i2, !mcsema_real_eip !65
  %FPU_X_val = alloca i1, !mcsema_real_eip !65
  %FPU_IE_val = alloca i1, !mcsema_real_eip !65
  %FPU_DE_val = alloca i1, !mcsema_real_eip !65
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !65
  %FPU_OE_val = alloca i1, !mcsema_real_eip !65
  %FPU_UE_val = alloca i1, !mcsema_real_eip !65
  %FPU_PE_val = alloca i1, !mcsema_real_eip !65
  %FPU_SF_val = alloca i1, !mcsema_real_eip !65
  %FPU_ES_val = alloca i1, !mcsema_real_eip !65
  %FPU_C0_val = alloca i1, !mcsema_real_eip !65
  %FPU_C1_val = alloca i1, !mcsema_real_eip !65
  %FPU_C2_val = alloca i1, !mcsema_real_eip !65
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !65
  %FPU_C3_val = alloca i1, !mcsema_real_eip !65
  %FPU_B_val = alloca i1, !mcsema_real_eip !65
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !65
  %DF_val = alloca i1, !mcsema_real_eip !65
  %OF_val = alloca i1, !mcsema_real_eip !65
  %SF_val = alloca i1, !mcsema_real_eip !65
  %CF_val = alloca i1, !mcsema_real_eip !65
  %AF_val = alloca i1, !mcsema_real_eip !65
  %PF_val = alloca i1, !mcsema_real_eip !65
  %ZF_val = alloca i1, !mcsema_real_eip !65
  %RIP_val = alloca i64, !mcsema_real_eip !65
  %R14_val = alloca i64, !mcsema_real_eip !65
  %R13_val = alloca i64, !mcsema_real_eip !65
  %R12_val = alloca i64, !mcsema_real_eip !65
  %R11_val = alloca i64, !mcsema_real_eip !65
  %R10_val = alloca i64, !mcsema_real_eip !65
  %R9_val = alloca i64, !mcsema_real_eip !65
  %R8_val = alloca i64, !mcsema_real_eip !65
  %RSP_val = alloca i64, !mcsema_real_eip !65
  %RBP_val = alloca i64, !mcsema_real_eip !65
  %RDI_val = alloca i64, !mcsema_real_eip !65
  %RSI_val = alloca i64, !mcsema_real_eip !65
  %RDX_val = alloca i64, !mcsema_real_eip !65
  %RCX_val = alloca i64, !mcsema_real_eip !65
  %RBX_val = alloca i64, !mcsema_real_eip !65
  %RAX_val = alloca i64, !mcsema_real_eip !65
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !65
  %1 = load i64, i64* %RAX, !mcsema_real_eip !65
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !65
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !65
  %2 = load i64, i64* %RBX, !mcsema_real_eip !65
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !65
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !65
  %3 = load i64, i64* %RCX, !mcsema_real_eip !65
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !65
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !65
  %4 = load i64, i64* %RDX, !mcsema_real_eip !65
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !65
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !65
  %5 = load i64, i64* %RSI, !mcsema_real_eip !65
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !65
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !65
  %6 = load i64, i64* %RDI, !mcsema_real_eip !65
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !65
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !65
  %7 = load i64, i64* %RSP, !mcsema_real_eip !65
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !65
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !65
  %8 = load i64, i64* %RBP, !mcsema_real_eip !65
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !65
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !65
  %9 = load i64, i64* %R8, !mcsema_real_eip !65
  store i64 %9, i64* %R8_val, !mcsema_real_eip !65
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !65
  %10 = load i64, i64* %R9, !mcsema_real_eip !65
  store i64 %10, i64* %R9_val, !mcsema_real_eip !65
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !65
  %11 = load i64, i64* %R10, !mcsema_real_eip !65
  store i64 %11, i64* %R10_val, !mcsema_real_eip !65
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !65
  %12 = load i64, i64* %R11, !mcsema_real_eip !65
  store i64 %12, i64* %R11_val, !mcsema_real_eip !65
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !65
  %13 = load i64, i64* %R12, !mcsema_real_eip !65
  store i64 %13, i64* %R12_val, !mcsema_real_eip !65
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !65
  %14 = load i64, i64* %R13, !mcsema_real_eip !65
  store i64 %14, i64* %R13_val, !mcsema_real_eip !65
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !65
  %15 = load i64, i64* %R14, !mcsema_real_eip !65
  store i64 %15, i64* %R14_val, !mcsema_real_eip !65
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !65
  %16 = load i64, i64* %R15, !mcsema_real_eip !65
  store i64 %16, i64* %R15_val, !mcsema_real_eip !65
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !65
  %17 = load i64, i64* %RIP, !mcsema_real_eip !65
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !65
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !65
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !65
  store i1 %18, i1* %CF_val, !mcsema_real_eip !65
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !65
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !65
  store i1 %19, i1* %PF_val, !mcsema_real_eip !65
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !65
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !65
  store i1 %20, i1* %AF_val, !mcsema_real_eip !65
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !65
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !65
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !65
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !65
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !65
  store i1 %22, i1* %SF_val, !mcsema_real_eip !65
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !65
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !65
  store i1 %23, i1* %OF_val, !mcsema_real_eip !65
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !65
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !65
  store i1 %24, i1* %DF_val, !mcsema_real_eip !65
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !65
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !65
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !65
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !65
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !65
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !65
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !65
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !65
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !65
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !65
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !65
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !65
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !65
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !65
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !65
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !65
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !65
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !65
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !65
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !65
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !65
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !65
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !65
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !65
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !65
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !65
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !65
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !65
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !65
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !65
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !65
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !65
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !65
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !65
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !65
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !65
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !65
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !65
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !65
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !65
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !65
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !65
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !65
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !65
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !65
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !65
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !65
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !65
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !65
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !65
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !65
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !65
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !65
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !65
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !65
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !65
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !65
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !65
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !65
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !65
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !65
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !65
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !65
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !65
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !65
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !65
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !65
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !65
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !65
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !65
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !65
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !65
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !65
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !65
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !65
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !65
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !65
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !65
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !65
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !65
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !65
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !65
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !65
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !65
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !65
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !65
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !65
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !65
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !65
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !65
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !65
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !65
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !65
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !65
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !65
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !65
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !65
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !65
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !65
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !65
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !65
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !65
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !65
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !65
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !65
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !65
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !65
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !65
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !65
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !65
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !65
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !65
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !65
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !65
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !65
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !65
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !65
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !65
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !65
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !65
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !65
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !65
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !65
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !65
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !65
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !65
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !65
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !65
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !65
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !65
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !65
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !65
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !65
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !65
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !65
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !65
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !65
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !65
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !65
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !65
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !65
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !65
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !66
  %83 = load i64, i64* %RBX_val, !mcsema_real_eip !67
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %84 = add i64 %80, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !67
  store i64 %83, i64* %_allin_new_bt_2, !mcsema_real_eip !67
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !67
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %87 = add i64 %86, 40, !mcsema_real_eip !68
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !68
  %_ptr_to_int_222 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_local_end_to_int_223 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_224 = bitcast i64* %_allin_new_bt_5 to i8*
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_223
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_ptr_bt_224, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_ptr_bt_224, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_ptr_bt_224, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %89, label %90

; <label>:89:                                     ; preds = %55
  %_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_address_in_parent_stack_bt_235 = bitcast i8* %_address_in_parent_stack_234 to i64*
  br label %90

; <label>:90:                                     ; preds = %55, %89
  %91 = phi i64* [ %_allin_new_bt_5, %55 ], [ %_address_in_parent_stack_bt_235, %89 ]
  %_new_load_236 = load i64, i64* %91
  store i64 %_new_load_236, i64* %RAX_val, !mcsema_real_eip !68
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 32
  %92 = add i64 %86, 32, !mcsema_real_eip !69
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !69
  %_ptr_to_int_237 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_local_end_to_int_238 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_239 = bitcast i64* %_allin_new_bt_7 to i8*
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %_local_end_to_int_238
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_ptr_bt_239, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_ptr_bt_239, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_ptr_bt_239, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  br i1 %_cond1_n_cond2_cond3_248, label %94, label %95

; <label>:94:                                     ; preds = %90
  %_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_address_in_parent_stack_bt_250 = bitcast i8* %_address_in_parent_stack_249 to i64*
  br label %95

; <label>:95:                                     ; preds = %90, %94
  %96 = phi i64* [ %_allin_new_bt_7, %90 ], [ %_address_in_parent_stack_bt_250, %94 ]
  %_new_load_251 = load i64, i64* %96
  store i64 %_new_load_251, i64* %R10_val, !mcsema_real_eip !69
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 24
  %98 = add i64 %97, 24, !mcsema_real_eip !70
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !70
  %_ptr_to_int_252 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_253 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_254 = bitcast i64* %_allin_new_bt_10 to i8*
  %_offset_above_rbp_255 = sub i64 %_ptr_to_int_252, %_local_end_to_int_253
  %_pot_address_in_parent_stack_256 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_cond1_257 = icmp ugt i8* %_ptr_bt_254, %_local_stack_end_ptr_
  %_cond2_1_258 = icmp ugt i8* %_ptr_bt_254, %_parent_stack_end_ptr_
  %_cond2_2_259 = icmp ult i8* %_ptr_bt_254, %_parent_stack_start_ptr_
  %_cond2_260 = or i1 %_cond2_1_258, %_cond2_2_259
  %_cond4_261 = icmp ule i8* %_pot_address_in_parent_stack_256, %_parent_stack_end_ptr_
  %_cond1_n_cond2_262 = and i1 %_cond1_257, %_cond2_260
  %_cond1_n_cond2_cond3_263 = and i1 %_cond1_n_cond2_262, %_cond4_261
  br i1 %_cond1_n_cond2_cond3_263, label %100, label %101

; <label>:100:                                    ; preds = %95
  %_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_address_in_parent_stack_bt_265 = bitcast i8* %_address_in_parent_stack_264 to i64*
  br label %101

; <label>:101:                                    ; preds = %95, %100
  %102 = phi i64* [ %_allin_new_bt_10, %95 ], [ %_address_in_parent_stack_bt_265, %100 ]
  %_new_load_266 = load i64, i64* %102
  store i64 %_new_load_266, i64* %R11_val, !mcsema_real_eip !70
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 16
  %103 = add i64 %97, 16, !mcsema_real_eip !71
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !71
  %105 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_267 = ptrtoint i32* %105 to i64
  %_local_end_to_int_268 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_269 = bitcast i32* %105 to i8*
  %_offset_above_rbp_270 = sub i64 %_ptr_to_int_267, %_local_end_to_int_268
  %_pot_address_in_parent_stack_271 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_cond1_272 = icmp ugt i8* %_ptr_bt_269, %_local_stack_end_ptr_
  %_cond2_1_273 = icmp ugt i8* %_ptr_bt_269, %_parent_stack_end_ptr_
  %_cond2_2_274 = icmp ult i8* %_ptr_bt_269, %_parent_stack_start_ptr_
  %_cond2_275 = or i1 %_cond2_1_273, %_cond2_2_274
  %_cond4_276 = icmp ule i8* %_pot_address_in_parent_stack_271, %_parent_stack_end_ptr_
  %_cond1_n_cond2_277 = and i1 %_cond1_272, %_cond2_275
  %_cond1_n_cond2_cond3_278 = and i1 %_cond1_n_cond2_277, %_cond4_276
  br i1 %_cond1_n_cond2_cond3_278, label %106, label %107

; <label>:106:                                    ; preds = %101
  %_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_address_in_parent_stack_bt_280 = bitcast i8* %_address_in_parent_stack_279 to i32*
  br label %107

; <label>:107:                                    ; preds = %101, %106
  %108 = phi i32* [ %105, %101 ], [ %_address_in_parent_stack_bt_280, %106 ]
  %_new_load_281 = load i32, i32* %108
  %109 = zext i32 %_new_load_281 to i64, !mcsema_real_eip !71
  store i64 %109, i64* %RBX_val, !mcsema_real_eip !71
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %111 = add i64 %110, -12, !mcsema_real_eip !72
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !72
  %113 = load i64, i64* %RDI_val, !mcsema_real_eip !72
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !72
  %115 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !72
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -24
  %117 = add i64 %116, -24, !mcsema_real_eip !73
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !73
  %119 = load i64, i64* %RSI_val, !mcsema_real_eip !73
  store i64 %119, i64* %_allin_new_bt_18, !mcsema_real_eip !73
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %121 = add i64 %120, -32, !mcsema_real_eip !74
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !74
  %123 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %123, i64* %_allin_new_bt_21, !mcsema_real_eip !74
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -40
  %125 = add i64 %124, -40, !mcsema_real_eip !75
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !75
  %127 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %127, i64* %_allin_new_bt_24, !mcsema_real_eip !75
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -44
  %129 = add i64 %128, -44, !mcsema_real_eip !76
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !76
  %131 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !76
  %133 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !76
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -48
  %135 = add i64 %134, -48, !mcsema_real_eip !77
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !77
  %137 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !77
  %139 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !77
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -52
  %141 = add i64 %140, -52, !mcsema_real_eip !78
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !78
  %143 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %144 = trunc i64 %143 to i32, !mcsema_real_eip !78
  %145 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %144, i32* %145, !mcsema_real_eip !78
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -64
  %147 = add i64 %146, -64, !mcsema_real_eip !79
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !79
  %149 = load i64, i64* %R11_val, !mcsema_real_eip !79
  store i64 %149, i64* %_allin_new_bt_36, !mcsema_real_eip !79
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -72
  %151 = add i64 %150, -72, !mcsema_real_eip !80
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !80
  %153 = load i64, i64* %R10_val, !mcsema_real_eip !80
  store i64 %153, i64* %_allin_new_bt_39, !mcsema_real_eip !80
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -80
  %155 = add i64 %154, -80, !mcsema_real_eip !81
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !81
  %157 = load i64, i64* %RAX_val, !mcsema_real_eip !81
  store i64 %157, i64* %_allin_new_bt_42, !mcsema_real_eip !81
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -84
  %159 = add i64 %158, -84, !mcsema_real_eip !82
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !82
  %161 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 0, i32* %161, !mcsema_real_eip !82
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %163 = add i64 %162, -12, !mcsema_real_eip !83
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !83
  %165 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_282 = ptrtoint i32* %165 to i64
  %_local_end_to_int_283 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_284 = bitcast i32* %165 to i8*
  %_offset_above_rbp_285 = sub i64 %_ptr_to_int_282, %_local_end_to_int_283
  %_pot_address_in_parent_stack_286 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_cond1_287 = icmp ugt i8* %_ptr_bt_284, %_local_stack_end_ptr_
  %_cond2_1_288 = icmp ugt i8* %_ptr_bt_284, %_parent_stack_end_ptr_
  %_cond2_2_289 = icmp ult i8* %_ptr_bt_284, %_parent_stack_start_ptr_
  %_cond2_290 = or i1 %_cond2_1_288, %_cond2_2_289
  %_cond4_291 = icmp ule i8* %_pot_address_in_parent_stack_286, %_parent_stack_end_ptr_
  %_cond1_n_cond2_292 = and i1 %_cond1_287, %_cond2_290
  %_cond1_n_cond2_cond3_293 = and i1 %_cond1_n_cond2_292, %_cond4_291
  br i1 %_cond1_n_cond2_cond3_293, label %166, label %167

; <label>:166:                                    ; preds = %107
  %_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_address_in_parent_stack_bt_295 = bitcast i8* %_address_in_parent_stack_294 to i32*
  br label %167

; <label>:167:                                    ; preds = %107, %166
  %168 = phi i32* [ %165, %107 ], [ %_address_in_parent_stack_bt_295, %166 ]
  %_new_load_296 = load i32, i32* %168
  %169 = zext i32 %_new_load_296 to i64, !mcsema_real_eip !83
  store i64 %169, i64* %RDI_val, !mcsema_real_eip !83
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -84
  %171 = add i64 %170, -84, !mcsema_real_eip !84
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !84
  %173 = bitcast i64* %_allin_new_bt_51 to i32*
  %_ptr_to_int_297 = ptrtoint i32* %173 to i64
  %_local_end_to_int_298 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_299 = bitcast i32* %173 to i8*
  %_offset_above_rbp_300 = sub i64 %_ptr_to_int_297, %_local_end_to_int_298
  %_pot_address_in_parent_stack_301 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_cond1_302 = icmp ugt i8* %_ptr_bt_299, %_local_stack_end_ptr_
  %_cond2_1_303 = icmp ugt i8* %_ptr_bt_299, %_parent_stack_end_ptr_
  %_cond2_2_304 = icmp ult i8* %_ptr_bt_299, %_parent_stack_start_ptr_
  %_cond2_305 = or i1 %_cond2_1_303, %_cond2_2_304
  %_cond4_306 = icmp ule i8* %_pot_address_in_parent_stack_301, %_parent_stack_end_ptr_
  %_cond1_n_cond2_307 = and i1 %_cond1_302, %_cond2_305
  %_cond1_n_cond2_cond3_308 = and i1 %_cond1_n_cond2_307, %_cond4_306
  br i1 %_cond1_n_cond2_cond3_308, label %174, label %175

; <label>:174:                                    ; preds = %167
  %_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_address_in_parent_stack_bt_310 = bitcast i8* %_address_in_parent_stack_309 to i32*
  br label %175

; <label>:175:                                    ; preds = %167, %174
  %176 = phi i32* [ %173, %167 ], [ %_address_in_parent_stack_bt_310, %174 ]
  %_new_load_311 = load i32, i32* %176
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_296, i32 %_new_load_311)
  %177 = extractvalue { i32, i1 } %uadd, 0
  %178 = xor i32 %177, %_new_load_311, !mcsema_real_eip !84
  %179 = xor i32 %178, %_new_load_296, !mcsema_real_eip !84
  %180 = and i32 %179, 16, !mcsema_real_eip !84
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !84
  store i1 %181, i1* %AF_val, !mcsema_real_eip !84
  %182 = icmp slt i32 %177, 0
  store i1 %182, i1* %SF_val, !mcsema_real_eip !84
  %183 = icmp eq i32 %177, 0, !mcsema_real_eip !84
  store i1 %183, i1* %ZF_val, !mcsema_real_eip !84
  %184 = xor i32 %_new_load_296, -2147483648, !mcsema_real_eip !84
  %185 = xor i32 %184, %_new_load_311, !mcsema_real_eip !84
  %186 = and i32 %178, %185, !mcsema_real_eip !84
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF_val, !mcsema_real_eip !84
  %188 = trunc i32 %177 to i8, !mcsema_real_eip !84
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !84
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF_val, !mcsema_real_eip !84
  %192 = extractvalue { i32, i1 } %uadd, 1
  store i1 %192, i1* %CF_val, !mcsema_real_eip !84
  %193 = zext i32 %177 to i64, !mcsema_real_eip !84
  store i64 %193, i64* %RDI_val, !mcsema_real_eip !84
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -84
  %195 = add i64 %194, -84, !mcsema_real_eip !85
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !85
  %197 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 %177, i32* %197, !mcsema_real_eip !85
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -88
  %199 = add i64 %198, -88, !mcsema_real_eip !86
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !86
  %201 = bitcast i64* %_allin_new_bt_57 to i32*
  store i32 0, i32* %201, !mcsema_real_eip !86
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -88
  %203 = add i64 %202, -88, !mcsema_real_eip !87
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !87
  %205 = bitcast i64* %_allin_new_bt_60 to i32*
  %_ptr_to_int_312 = ptrtoint i32* %205 to i64
  %_local_end_to_int_313 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_314 = bitcast i32* %205 to i8*
  %_offset_above_rbp_315 = sub i64 %_ptr_to_int_312, %_local_end_to_int_313
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_ptr_bt_314, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_ptr_bt_314, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_ptr_bt_314, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  br i1 %_cond1_n_cond2_cond3_323, label %206, label %207

; <label>:206:                                    ; preds = %175
  %_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_address_in_parent_stack_bt_325 = bitcast i8* %_address_in_parent_stack_324 to i32*
  br label %207

; <label>:207:                                    ; preds = %175, %206
  %208 = phi i32* [ %205, %175 ], [ %_address_in_parent_stack_bt_325, %206 ]
  %_new_load_326 = load i32, i32* %208
  %209 = zext i32 %_new_load_326 to i64, !mcsema_real_eip !87
  store i64 %209, i64* %RAX_val, !mcsema_real_eip !87
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -44
  %211 = add i64 %210, -44, !mcsema_real_eip !88
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !88
  %213 = bitcast i64* %_allin_new_bt_63 to i32*
  %_ptr_to_int_327 = ptrtoint i32* %213 to i64
  %_local_end_to_int_328 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_329 = bitcast i32* %213 to i8*
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %_local_end_to_int_328
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_ptr_bt_329, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_ptr_bt_329, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_ptr_bt_329, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  br i1 %_cond1_n_cond2_cond3_338, label %214, label %215

; <label>:214:                                    ; preds = %207
  %_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_address_in_parent_stack_bt_340 = bitcast i8* %_address_in_parent_stack_339 to i32*
  br label %215

; <label>:215:                                    ; preds = %207, %214
  %216 = phi i32* [ %213, %207 ], [ %_address_in_parent_stack_bt_340, %214 ]
  %_new_load_341 = load i32, i32* %216
  %217 = sub i32 %_new_load_326, %_new_load_341, !mcsema_real_eip !88
  %218 = xor i32 %217, %_new_load_326, !mcsema_real_eip !88
  %219 = xor i32 %218, %_new_load_341, !mcsema_real_eip !88
  %220 = and i32 %219, 16, !mcsema_real_eip !88
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !88
  store i1 %221, i1* %AF_val, !mcsema_real_eip !88
  %222 = trunc i32 %217 to i8, !mcsema_real_eip !88
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !88
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF_val, !mcsema_real_eip !88
  %226 = icmp eq i32 %_new_load_326, %_new_load_341
  store i1 %226, i1* %ZF_val, !mcsema_real_eip !88
  %227 = icmp slt i32 %217, 0
  store i1 %227, i1* %SF_val, !mcsema_real_eip !88
  %228 = icmp ult i32 %_new_load_326, %_new_load_341, !mcsema_real_eip !88
  store i1 %228, i1* %CF_val, !mcsema_real_eip !88
  %229 = xor i32 %_new_load_341, %_new_load_326, !mcsema_real_eip !88
  %230 = and i32 %218, %229, !mcsema_real_eip !88
  %231 = icmp slt i32 %230, 0
  store i1 %231, i1* %OF_val, !mcsema_real_eip !88
  %232 = load i1, i1* %SF_val, !mcsema_real_eip !89
  %tmp = xor i1 %232, %231
  br i1 %tmp, label %block_0x5d.preheader, label %block_0x7c, !mcsema_real_eip !89

block_0x5d.preheader:                             ; preds = %215
  br label %block_0x5d

block_0x7c.loopexit:                              ; preds = %397
  br label %block_0x7c

block_0x7c:                                       ; preds = %block_0x7c.loopexit, %215
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %233 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -32
  %234 = add i64 %233, -32, !mcsema_real_eip !90
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !90
  %_ptr_to_int_342 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_local_end_to_int_343 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_344 = bitcast i64* %_allin_new_bt_66 to i8*
  %_offset_above_rbp_345 = sub i64 %_ptr_to_int_342, %_local_end_to_int_343
  %_pot_address_in_parent_stack_346 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_cond1_347 = icmp ugt i8* %_ptr_bt_344, %_local_stack_end_ptr_
  %_cond2_1_348 = icmp ugt i8* %_ptr_bt_344, %_parent_stack_end_ptr_
  %_cond2_2_349 = icmp ult i8* %_ptr_bt_344, %_parent_stack_start_ptr_
  %_cond2_350 = or i1 %_cond2_1_348, %_cond2_2_349
  %_cond4_351 = icmp ule i8* %_pot_address_in_parent_stack_346, %_parent_stack_end_ptr_
  %_cond1_n_cond2_352 = and i1 %_cond1_347, %_cond2_350
  %_cond1_n_cond2_cond3_353 = and i1 %_cond1_n_cond2_352, %_cond4_351
  br i1 %_cond1_n_cond2_cond3_353, label %236, label %237

; <label>:236:                                    ; preds = %block_0x7c
  %_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_address_in_parent_stack_bt_355 = bitcast i8* %_address_in_parent_stack_354 to i64*
  br label %237

; <label>:237:                                    ; preds = %block_0x7c, %236
  %238 = phi i64* [ %_allin_new_bt_66, %block_0x7c ], [ %_address_in_parent_stack_bt_355, %236 ]
  %_new_load_356 = load i64, i64* %238
  store i64 %_new_load_356, i64* %RAX_val, !mcsema_real_eip !90
  %239 = inttoptr i64 %_new_load_356 to i64*, !mcsema_real_eip !91
  %240 = bitcast i64* %239 to i32*
  %_ptr_to_int_357 = ptrtoint i32* %240 to i64
  %_local_end_to_int_358 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_359 = bitcast i32* %240 to i8*
  %_offset_above_rbp_360 = sub i64 %_ptr_to_int_357, %_local_end_to_int_358
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_ptr_bt_359, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_ptr_bt_359, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_ptr_bt_359, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  br i1 %_cond1_n_cond2_cond3_368, label %241, label %242

; <label>:241:                                    ; preds = %237
  %_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_address_in_parent_stack_bt_370 = bitcast i8* %_address_in_parent_stack_369 to i32*
  br label %242

; <label>:242:                                    ; preds = %237, %241
  %243 = phi i32* [ %240, %237 ], [ %_address_in_parent_stack_bt_370, %241 ]
  %_new_load_371 = load i32, i32* %243
  %244 = zext i32 %_new_load_371 to i64, !mcsema_real_eip !91
  store i64 %244, i64* %RCX_val, !mcsema_real_eip !91
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %245 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -84
  %246 = add i64 %245, -84, !mcsema_real_eip !92
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !92
  %248 = bitcast i64* %_allin_new_bt_69 to i32*
  %_ptr_to_int_372 = ptrtoint i32* %248 to i64
  %_local_end_to_int_373 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_374 = bitcast i32* %248 to i8*
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_373
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_ptr_bt_374, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_ptr_bt_374, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_ptr_bt_374, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  br i1 %_cond1_n_cond2_cond3_383, label %249, label %250

; <label>:249:                                    ; preds = %242
  %_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_address_in_parent_stack_bt_385 = bitcast i8* %_address_in_parent_stack_384 to i32*
  br label %250

; <label>:250:                                    ; preds = %242, %249
  %251 = phi i32* [ %248, %242 ], [ %_address_in_parent_stack_bt_385, %249 ]
  %_new_load_386 = load i32, i32* %251
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_371, i32 %_new_load_386)
  %252 = extractvalue { i32, i1 } %uadd73, 0
  %253 = xor i32 %252, %_new_load_386, !mcsema_real_eip !92
  %254 = xor i32 %253, %_new_load_371, !mcsema_real_eip !92
  %255 = and i32 %254, 16, !mcsema_real_eip !92
  %256 = icmp ne i32 %255, 0, !mcsema_real_eip !92
  store i1 %256, i1* %AF_val, !mcsema_real_eip !92
  %257 = icmp slt i32 %252, 0
  store i1 %257, i1* %SF_val, !mcsema_real_eip !92
  %258 = icmp eq i32 %252, 0, !mcsema_real_eip !92
  store i1 %258, i1* %ZF_val, !mcsema_real_eip !92
  %259 = xor i32 %_new_load_371, -2147483648, !mcsema_real_eip !92
  %260 = xor i32 %259, %_new_load_386, !mcsema_real_eip !92
  %261 = and i32 %253, %260, !mcsema_real_eip !92
  %262 = icmp slt i32 %261, 0
  store i1 %262, i1* %OF_val, !mcsema_real_eip !92
  %263 = trunc i32 %252 to i8, !mcsema_real_eip !92
  %264 = tail call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !92
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  store i1 %266, i1* %PF_val, !mcsema_real_eip !92
  %267 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %267, i1* %CF_val, !mcsema_real_eip !92
  %268 = zext i32 %252 to i64, !mcsema_real_eip !92
  store i64 %268, i64* %RCX_val, !mcsema_real_eip !92
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %269 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -84
  %270 = add i64 %269, -84, !mcsema_real_eip !93
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !93
  %272 = bitcast i64* %_allin_new_bt_72 to i32*
  store i32 %252, i32* %272, !mcsema_real_eip !93
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %273 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -92
  %274 = add i64 %273, -92, !mcsema_real_eip !94
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !94
  %276 = bitcast i64* %_allin_new_bt_75 to i32*
  store i32 0, i32* %276, !mcsema_real_eip !94
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -92
  %278 = add i64 %277, -92, !mcsema_real_eip !95
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !95
  %280 = bitcast i64* %_allin_new_bt_78 to i32*
  %_ptr_to_int_387 = ptrtoint i32* %280 to i64
  %_local_end_to_int_388 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_389 = bitcast i32* %280 to i8*
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_388
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_ptr_bt_389, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_ptr_bt_389, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_ptr_bt_389, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  br i1 %_cond1_n_cond2_cond3_398, label %281, label %282

; <label>:281:                                    ; preds = %250
  %_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_address_in_parent_stack_bt_400 = bitcast i8* %_address_in_parent_stack_399 to i32*
  br label %282

; <label>:282:                                    ; preds = %250, %281
  %283 = phi i32* [ %280, %250 ], [ %_address_in_parent_stack_bt_400, %281 ]
  %_new_load_401 = load i32, i32* %283
  %284 = zext i32 %_new_load_401 to i64, !mcsema_real_eip !95
  store i64 %284, i64* %RAX_val, !mcsema_real_eip !95
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %285 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -48
  %286 = add i64 %285, -48, !mcsema_real_eip !96
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !96
  %288 = bitcast i64* %_allin_new_bt_81 to i32*
  %_ptr_to_int_402 = ptrtoint i32* %288 to i64
  %_local_end_to_int_403 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_404 = bitcast i32* %288 to i8*
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_403
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_ptr_bt_404, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_ptr_bt_404, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_ptr_bt_404, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  br i1 %_cond1_n_cond2_cond3_413, label %289, label %290

; <label>:289:                                    ; preds = %282
  %_address_in_parent_stack_414 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_address_in_parent_stack_bt_415 = bitcast i8* %_address_in_parent_stack_414 to i32*
  br label %290

; <label>:290:                                    ; preds = %282, %289
  %291 = phi i32* [ %288, %282 ], [ %_address_in_parent_stack_bt_415, %289 ]
  %_new_load_416 = load i32, i32* %291
  %292 = sub i32 %_new_load_401, %_new_load_416, !mcsema_real_eip !96
  %293 = xor i32 %292, %_new_load_401, !mcsema_real_eip !96
  %294 = xor i32 %293, %_new_load_416, !mcsema_real_eip !96
  %295 = and i32 %294, 16, !mcsema_real_eip !96
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !96
  store i1 %296, i1* %AF_val, !mcsema_real_eip !96
  %297 = trunc i32 %292 to i8, !mcsema_real_eip !96
  %298 = tail call i8 @llvm.ctpop.i8(i8 %297), !mcsema_real_eip !96
  %299 = and i8 %298, 1
  %300 = icmp eq i8 %299, 0
  store i1 %300, i1* %PF_val, !mcsema_real_eip !96
  %301 = icmp eq i32 %_new_load_401, %_new_load_416
  store i1 %301, i1* %ZF_val, !mcsema_real_eip !96
  %302 = icmp slt i32 %292, 0
  store i1 %302, i1* %SF_val, !mcsema_real_eip !96
  %303 = icmp ult i32 %_new_load_401, %_new_load_416, !mcsema_real_eip !96
  store i1 %303, i1* %CF_val, !mcsema_real_eip !96
  %304 = xor i32 %_new_load_416, %_new_load_401, !mcsema_real_eip !96
  %305 = and i32 %293, %304, !mcsema_real_eip !96
  %306 = icmp slt i32 %305, 0
  store i1 %306, i1* %OF_val, !mcsema_real_eip !96
  %307 = load i1, i1* %SF_val, !mcsema_real_eip !97
  %tmp74 = xor i1 %307, %306
  br i1 %tmp74, label %block_0x9b.preheader, label %block_0xba, !mcsema_real_eip !97

block_0x9b.preheader:                             ; preds = %290
  br label %block_0x9b

block_0x5d:                                       ; preds = %397, %block_0x5d.preheader
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %308 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -24
  %309 = add i64 %308, -24, !mcsema_real_eip !98
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !98
  %_ptr_to_int_417 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_local_end_to_int_418 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_419 = bitcast i64* %_allin_new_bt_84 to i8*
  %_offset_above_rbp_420 = sub i64 %_ptr_to_int_417, %_local_end_to_int_418
  %_pot_address_in_parent_stack_421 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_cond1_422 = icmp ugt i8* %_ptr_bt_419, %_local_stack_end_ptr_
  %_cond2_1_423 = icmp ugt i8* %_ptr_bt_419, %_parent_stack_end_ptr_
  %_cond2_2_424 = icmp ult i8* %_ptr_bt_419, %_parent_stack_start_ptr_
  %_cond2_425 = or i1 %_cond2_1_423, %_cond2_2_424
  %_cond4_426 = icmp ule i8* %_pot_address_in_parent_stack_421, %_parent_stack_end_ptr_
  %_cond1_n_cond2_427 = and i1 %_cond1_422, %_cond2_425
  %_cond1_n_cond2_cond3_428 = and i1 %_cond1_n_cond2_427, %_cond4_426
  br i1 %_cond1_n_cond2_cond3_428, label %311, label %312

; <label>:311:                                    ; preds = %block_0x5d
  %_address_in_parent_stack_429 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_address_in_parent_stack_bt_430 = bitcast i8* %_address_in_parent_stack_429 to i64*
  br label %312

; <label>:312:                                    ; preds = %block_0x5d, %311
  %313 = phi i64* [ %_allin_new_bt_84, %block_0x5d ], [ %_address_in_parent_stack_bt_430, %311 ]
  %_new_load_431 = load i64, i64* %313
  store i64 %_new_load_431, i64* %RAX_val, !mcsema_real_eip !98
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -88
  %314 = add i64 %308, -88, !mcsema_real_eip !99
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !99
  %316 = bitcast i64* %_allin_new_bt_86 to i32*
  %_ptr_to_int_432 = ptrtoint i32* %316 to i64
  %_local_end_to_int_433 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_434 = bitcast i32* %316 to i8*
  %_offset_above_rbp_435 = sub i64 %_ptr_to_int_432, %_local_end_to_int_433
  %_pot_address_in_parent_stack_436 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_cond1_437 = icmp ugt i8* %_ptr_bt_434, %_local_stack_end_ptr_
  %_cond2_1_438 = icmp ugt i8* %_ptr_bt_434, %_parent_stack_end_ptr_
  %_cond2_2_439 = icmp ult i8* %_ptr_bt_434, %_parent_stack_start_ptr_
  %_cond2_440 = or i1 %_cond2_1_438, %_cond2_2_439
  %_cond4_441 = icmp ule i8* %_pot_address_in_parent_stack_436, %_parent_stack_end_ptr_
  %_cond1_n_cond2_442 = and i1 %_cond1_437, %_cond2_440
  %_cond1_n_cond2_cond3_443 = and i1 %_cond1_n_cond2_442, %_cond4_441
  br i1 %_cond1_n_cond2_cond3_443, label %317, label %318

; <label>:317:                                    ; preds = %312
  %_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_address_in_parent_stack_bt_445 = bitcast i8* %_address_in_parent_stack_444 to i32*
  br label %318

; <label>:318:                                    ; preds = %312, %317
  %319 = phi i32* [ %316, %312 ], [ %_address_in_parent_stack_bt_445, %317 ]
  %_new_load_446 = load i32, i32* %319
  %320 = sext i32 %_new_load_446 to i64, !mcsema_real_eip !99
  store i64 %320, i64* %RCX_val, !mcsema_real_eip !99
  %321 = load i64, i64* %RAX_val, !mcsema_real_eip !100
  %322 = shl nsw i64 %320, 2
  %323 = add i64 %322, %321, !mcsema_real_eip !100
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !100
  %325 = bitcast i64* %324 to i32*
  %_ptr_to_int_447 = ptrtoint i32* %325 to i64
  %_local_end_to_int_448 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_449 = bitcast i32* %325 to i8*
  %_offset_above_rbp_450 = sub i64 %_ptr_to_int_447, %_local_end_to_int_448
  %_pot_address_in_parent_stack_451 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_cond1_452 = icmp ugt i8* %_ptr_bt_449, %_local_stack_end_ptr_
  %_cond2_1_453 = icmp ugt i8* %_ptr_bt_449, %_parent_stack_end_ptr_
  %_cond2_2_454 = icmp ult i8* %_ptr_bt_449, %_parent_stack_start_ptr_
  %_cond2_455 = or i1 %_cond2_1_453, %_cond2_2_454
  %_cond4_456 = icmp ule i8* %_pot_address_in_parent_stack_451, %_parent_stack_end_ptr_
  %_cond1_n_cond2_457 = and i1 %_cond1_452, %_cond2_455
  %_cond1_n_cond2_cond3_458 = and i1 %_cond1_n_cond2_457, %_cond4_456
  br i1 %_cond1_n_cond2_cond3_458, label %326, label %327

; <label>:326:                                    ; preds = %318
  %_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_address_in_parent_stack_bt_460 = bitcast i8* %_address_in_parent_stack_459 to i32*
  br label %327

; <label>:327:                                    ; preds = %318, %326
  %328 = phi i32* [ %325, %318 ], [ %_address_in_parent_stack_bt_460, %326 ]
  %_new_load_461 = load i32, i32* %328
  %329 = zext i32 %_new_load_461 to i64, !mcsema_real_eip !100
  store i64 %329, i64* %RDX_val, !mcsema_real_eip !100
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %330 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -84
  %331 = add i64 %330, -84, !mcsema_real_eip !101
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !101
  %333 = bitcast i64* %_allin_new_bt_89 to i32*
  %_ptr_to_int_462 = ptrtoint i32* %333 to i64
  %_local_end_to_int_463 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_464 = bitcast i32* %333 to i8*
  %_offset_above_rbp_465 = sub i64 %_ptr_to_int_462, %_local_end_to_int_463
  %_pot_address_in_parent_stack_466 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_cond1_467 = icmp ugt i8* %_ptr_bt_464, %_local_stack_end_ptr_
  %_cond2_1_468 = icmp ugt i8* %_ptr_bt_464, %_parent_stack_end_ptr_
  %_cond2_2_469 = icmp ult i8* %_ptr_bt_464, %_parent_stack_start_ptr_
  %_cond2_470 = or i1 %_cond2_1_468, %_cond2_2_469
  %_cond4_471 = icmp ule i8* %_pot_address_in_parent_stack_466, %_parent_stack_end_ptr_
  %_cond1_n_cond2_472 = and i1 %_cond1_467, %_cond2_470
  %_cond1_n_cond2_cond3_473 = and i1 %_cond1_n_cond2_472, %_cond4_471
  br i1 %_cond1_n_cond2_cond3_473, label %334, label %335

; <label>:334:                                    ; preds = %327
  %_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_address_in_parent_stack_bt_475 = bitcast i8* %_address_in_parent_stack_474 to i32*
  br label %335

; <label>:335:                                    ; preds = %327, %334
  %336 = phi i32* [ %333, %327 ], [ %_address_in_parent_stack_bt_475, %334 ]
  %_new_load_476 = load i32, i32* %336
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_461, i32 %_new_load_476)
  %337 = extractvalue { i32, i1 } %uadd70, 0
  %338 = xor i32 %337, %_new_load_476, !mcsema_real_eip !101
  %339 = xor i32 %338, %_new_load_461, !mcsema_real_eip !101
  %340 = and i32 %339, 16, !mcsema_real_eip !101
  %341 = icmp ne i32 %340, 0, !mcsema_real_eip !101
  store i1 %341, i1* %AF_val, !mcsema_real_eip !101
  %342 = icmp slt i32 %337, 0
  store i1 %342, i1* %SF_val, !mcsema_real_eip !101
  %343 = icmp eq i32 %337, 0, !mcsema_real_eip !101
  store i1 %343, i1* %ZF_val, !mcsema_real_eip !101
  %344 = xor i32 %_new_load_461, -2147483648, !mcsema_real_eip !101
  %345 = xor i32 %344, %_new_load_476, !mcsema_real_eip !101
  %346 = and i32 %338, %345, !mcsema_real_eip !101
  %347 = icmp slt i32 %346, 0
  store i1 %347, i1* %OF_val, !mcsema_real_eip !101
  %348 = trunc i32 %337 to i8, !mcsema_real_eip !101
  %349 = tail call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !101
  %350 = and i8 %349, 1
  %351 = icmp eq i8 %350, 0
  store i1 %351, i1* %PF_val, !mcsema_real_eip !101
  %352 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %352, i1* %CF_val, !mcsema_real_eip !101
  %353 = zext i32 %337 to i64, !mcsema_real_eip !101
  store i64 %353, i64* %RDX_val, !mcsema_real_eip !101
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %354 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -84
  %355 = add i64 %354, -84, !mcsema_real_eip !102
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !102
  %357 = bitcast i64* %_allin_new_bt_92 to i32*
  store i32 %337, i32* %357, !mcsema_real_eip !102
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %358 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -88
  %359 = add i64 %358, -88, !mcsema_real_eip !103
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !103
  %361 = bitcast i64* %_allin_new_bt_95 to i32*
  %_ptr_to_int_477 = ptrtoint i32* %361 to i64
  %_local_end_to_int_478 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_479 = bitcast i32* %361 to i8*
  %_offset_above_rbp_480 = sub i64 %_ptr_to_int_477, %_local_end_to_int_478
  %_pot_address_in_parent_stack_481 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_cond1_482 = icmp ugt i8* %_ptr_bt_479, %_local_stack_end_ptr_
  %_cond2_1_483 = icmp ugt i8* %_ptr_bt_479, %_parent_stack_end_ptr_
  %_cond2_2_484 = icmp ult i8* %_ptr_bt_479, %_parent_stack_start_ptr_
  %_cond2_485 = or i1 %_cond2_1_483, %_cond2_2_484
  %_cond4_486 = icmp ule i8* %_pot_address_in_parent_stack_481, %_parent_stack_end_ptr_
  %_cond1_n_cond2_487 = and i1 %_cond1_482, %_cond2_485
  %_cond1_n_cond2_cond3_488 = and i1 %_cond1_n_cond2_487, %_cond4_486
  br i1 %_cond1_n_cond2_cond3_488, label %362, label %363

; <label>:362:                                    ; preds = %335
  %_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_address_in_parent_stack_bt_490 = bitcast i8* %_address_in_parent_stack_489 to i32*
  br label %363

; <label>:363:                                    ; preds = %335, %362
  %364 = phi i32* [ %361, %335 ], [ %_address_in_parent_stack_bt_490, %362 ]
  %_new_load_491 = load i32, i32* %364
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_491, i32 1)
  %365 = extractvalue { i32, i1 } %uadd71, 0
  %366 = xor i32 %365, %_new_load_491, !mcsema_real_eip !104
  %367 = and i32 %366, 16, !mcsema_real_eip !104
  %368 = icmp ne i32 %367, 0, !mcsema_real_eip !104
  store i1 %368, i1* %AF_val, !mcsema_real_eip !104
  %369 = icmp slt i32 %365, 0
  store i1 %369, i1* %SF_val, !mcsema_real_eip !104
  %370 = icmp eq i32 %365, 0, !mcsema_real_eip !104
  store i1 %370, i1* %ZF_val, !mcsema_real_eip !104
  %371 = xor i32 %_new_load_491, -2147483648, !mcsema_real_eip !104
  %372 = and i32 %366, %371, !mcsema_real_eip !104
  %373 = icmp slt i32 %372, 0
  store i1 %373, i1* %OF_val, !mcsema_real_eip !104
  %374 = trunc i32 %365 to i8, !mcsema_real_eip !104
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !104
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF_val, !mcsema_real_eip !104
  %378 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %378, i1* %CF_val, !mcsema_real_eip !104
  %379 = zext i32 %365 to i64, !mcsema_real_eip !104
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !104
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %380 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -88
  %381 = add i64 %380, -88, !mcsema_real_eip !105
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !105
  %383 = bitcast i64* %_allin_new_bt_98 to i32*
  store i32 %365, i32* %383, !mcsema_real_eip !105
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %384 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -88
  %385 = add i64 %384, -88, !mcsema_real_eip !87
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !87
  %387 = bitcast i64* %_allin_new_bt_101 to i32*
  %_ptr_to_int_492 = ptrtoint i32* %387 to i64
  %_local_end_to_int_493 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_494 = bitcast i32* %387 to i8*
  %_offset_above_rbp_495 = sub i64 %_ptr_to_int_492, %_local_end_to_int_493
  %_pot_address_in_parent_stack_496 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_cond1_497 = icmp ugt i8* %_ptr_bt_494, %_local_stack_end_ptr_
  %_cond2_1_498 = icmp ugt i8* %_ptr_bt_494, %_parent_stack_end_ptr_
  %_cond2_2_499 = icmp ult i8* %_ptr_bt_494, %_parent_stack_start_ptr_
  %_cond2_500 = or i1 %_cond2_1_498, %_cond2_2_499
  %_cond4_501 = icmp ule i8* %_pot_address_in_parent_stack_496, %_parent_stack_end_ptr_
  %_cond1_n_cond2_502 = and i1 %_cond1_497, %_cond2_500
  %_cond1_n_cond2_cond3_503 = and i1 %_cond1_n_cond2_502, %_cond4_501
  br i1 %_cond1_n_cond2_cond3_503, label %388, label %389

; <label>:388:                                    ; preds = %363
  %_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_address_in_parent_stack_bt_505 = bitcast i8* %_address_in_parent_stack_504 to i32*
  br label %389

; <label>:389:                                    ; preds = %363, %388
  %390 = phi i32* [ %387, %363 ], [ %_address_in_parent_stack_bt_505, %388 ]
  %_new_load_506 = load i32, i32* %390
  %391 = zext i32 %_new_load_506 to i64, !mcsema_real_eip !87
  store i64 %391, i64* %RAX_val, !mcsema_real_eip !87
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %392 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -44
  %393 = add i64 %392, -44, !mcsema_real_eip !88
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !88
  %395 = bitcast i64* %_allin_new_bt_104 to i32*
  %_ptr_to_int_507 = ptrtoint i32* %395 to i64
  %_local_end_to_int_508 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_509 = bitcast i32* %395 to i8*
  %_offset_above_rbp_510 = sub i64 %_ptr_to_int_507, %_local_end_to_int_508
  %_pot_address_in_parent_stack_511 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_cond1_512 = icmp ugt i8* %_ptr_bt_509, %_local_stack_end_ptr_
  %_cond2_1_513 = icmp ugt i8* %_ptr_bt_509, %_parent_stack_end_ptr_
  %_cond2_2_514 = icmp ult i8* %_ptr_bt_509, %_parent_stack_start_ptr_
  %_cond2_515 = or i1 %_cond2_1_513, %_cond2_2_514
  %_cond4_516 = icmp ule i8* %_pot_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond1_n_cond2_517 = and i1 %_cond1_512, %_cond2_515
  %_cond1_n_cond2_cond3_518 = and i1 %_cond1_n_cond2_517, %_cond4_516
  br i1 %_cond1_n_cond2_cond3_518, label %396, label %397

; <label>:396:                                    ; preds = %389
  %_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_address_in_parent_stack_bt_520 = bitcast i8* %_address_in_parent_stack_519 to i32*
  br label %397

; <label>:397:                                    ; preds = %389, %396
  %398 = phi i32* [ %395, %389 ], [ %_address_in_parent_stack_bt_520, %396 ]
  %_new_load_521 = load i32, i32* %398
  %399 = sub i32 %_new_load_506, %_new_load_521, !mcsema_real_eip !88
  %400 = xor i32 %399, %_new_load_506, !mcsema_real_eip !88
  %401 = xor i32 %400, %_new_load_521, !mcsema_real_eip !88
  %402 = and i32 %401, 16, !mcsema_real_eip !88
  %403 = icmp ne i32 %402, 0, !mcsema_real_eip !88
  store i1 %403, i1* %AF_val, !mcsema_real_eip !88
  %404 = trunc i32 %399 to i8, !mcsema_real_eip !88
  %405 = tail call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !88
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF_val, !mcsema_real_eip !88
  %408 = icmp eq i32 %_new_load_506, %_new_load_521
  store i1 %408, i1* %ZF_val, !mcsema_real_eip !88
  %409 = icmp slt i32 %399, 0
  store i1 %409, i1* %SF_val, !mcsema_real_eip !88
  %410 = icmp ult i32 %_new_load_506, %_new_load_521, !mcsema_real_eip !88
  store i1 %410, i1* %CF_val, !mcsema_real_eip !88
  %411 = xor i32 %_new_load_521, %_new_load_506, !mcsema_real_eip !88
  %412 = and i32 %400, %411, !mcsema_real_eip !88
  %413 = icmp slt i32 %412, 0
  store i1 %413, i1* %OF_val, !mcsema_real_eip !88
  %414 = load i1, i1* %SF_val, !mcsema_real_eip !89
  %tmp72 = xor i1 %414, %413
  br i1 %tmp72, label %block_0x5d, label %block_0x7c.loopexit, !mcsema_real_eip !89

block_0xba.loopexit:                              ; preds = %575
  br label %block_0xba

block_0xba:                                       ; preds = %block_0xba.loopexit, %290
  %_load_rbp_ptr_105 = load i8*, i8** %_RBP_ptr_
  %415 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_105, i64 -52
  %416 = add i64 %415, -52, !mcsema_real_eip !106
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !106
  %418 = bitcast i64* %_allin_new_bt_107 to i32*
  %_ptr_to_int_522 = ptrtoint i32* %418 to i64
  %_local_end_to_int_523 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_524 = bitcast i32* %418 to i8*
  %_offset_above_rbp_525 = sub i64 %_ptr_to_int_522, %_local_end_to_int_523
  %_pot_address_in_parent_stack_526 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_cond1_527 = icmp ugt i8* %_ptr_bt_524, %_local_stack_end_ptr_
  %_cond2_1_528 = icmp ugt i8* %_ptr_bt_524, %_parent_stack_end_ptr_
  %_cond2_2_529 = icmp ult i8* %_ptr_bt_524, %_parent_stack_start_ptr_
  %_cond2_530 = or i1 %_cond2_1_528, %_cond2_2_529
  %_cond4_531 = icmp ule i8* %_pot_address_in_parent_stack_526, %_parent_stack_end_ptr_
  %_cond1_n_cond2_532 = and i1 %_cond1_527, %_cond2_530
  %_cond1_n_cond2_cond3_533 = and i1 %_cond1_n_cond2_532, %_cond4_531
  br i1 %_cond1_n_cond2_cond3_533, label %419, label %420

; <label>:419:                                    ; preds = %block_0xba
  %_address_in_parent_stack_534 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_address_in_parent_stack_bt_535 = bitcast i8* %_address_in_parent_stack_534 to i32*
  br label %420

; <label>:420:                                    ; preds = %block_0xba, %419
  %421 = phi i32* [ %418, %block_0xba ], [ %_address_in_parent_stack_bt_535, %419 ]
  %_new_load_536 = load i32, i32* %421
  %422 = zext i32 %_new_load_536 to i64, !mcsema_real_eip !106
  store i64 %422, i64* %RAX_val, !mcsema_real_eip !106
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %423 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -84
  %424 = add i64 %423, -84, !mcsema_real_eip !107
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !107
  %426 = bitcast i64* %_allin_new_bt_110 to i32*
  %_ptr_to_int_537 = ptrtoint i32* %426 to i64
  %_local_end_to_int_538 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_539 = bitcast i32* %426 to i8*
  %_offset_above_rbp_540 = sub i64 %_ptr_to_int_537, %_local_end_to_int_538
  %_pot_address_in_parent_stack_541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_cond1_542 = icmp ugt i8* %_ptr_bt_539, %_local_stack_end_ptr_
  %_cond2_1_543 = icmp ugt i8* %_ptr_bt_539, %_parent_stack_end_ptr_
  %_cond2_2_544 = icmp ult i8* %_ptr_bt_539, %_parent_stack_start_ptr_
  %_cond2_545 = or i1 %_cond2_1_543, %_cond2_2_544
  %_cond4_546 = icmp ule i8* %_pot_address_in_parent_stack_541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_547 = and i1 %_cond1_542, %_cond2_545
  %_cond1_n_cond2_cond3_548 = and i1 %_cond1_n_cond2_547, %_cond4_546
  br i1 %_cond1_n_cond2_cond3_548, label %427, label %428

; <label>:427:                                    ; preds = %420
  %_address_in_parent_stack_549 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_address_in_parent_stack_bt_550 = bitcast i8* %_address_in_parent_stack_549 to i32*
  br label %428

; <label>:428:                                    ; preds = %420, %427
  %429 = phi i32* [ %426, %420 ], [ %_address_in_parent_stack_bt_550, %427 ]
  %_new_load_551 = load i32, i32* %429
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_536, i32 %_new_load_551)
  %430 = extractvalue { i32, i1 } %uadd78, 0
  %431 = xor i32 %430, %_new_load_551, !mcsema_real_eip !107
  %432 = xor i32 %431, %_new_load_536, !mcsema_real_eip !107
  %433 = and i32 %432, 16, !mcsema_real_eip !107
  %434 = icmp ne i32 %433, 0, !mcsema_real_eip !107
  store i1 %434, i1* %AF_val, !mcsema_real_eip !107
  %435 = icmp slt i32 %430, 0
  store i1 %435, i1* %SF_val, !mcsema_real_eip !107
  %436 = icmp eq i32 %430, 0, !mcsema_real_eip !107
  store i1 %436, i1* %ZF_val, !mcsema_real_eip !107
  %437 = xor i32 %_new_load_536, -2147483648, !mcsema_real_eip !107
  %438 = xor i32 %437, %_new_load_551, !mcsema_real_eip !107
  %439 = and i32 %431, %438, !mcsema_real_eip !107
  %440 = icmp slt i32 %439, 0
  store i1 %440, i1* %OF_val, !mcsema_real_eip !107
  %441 = trunc i32 %430 to i8, !mcsema_real_eip !107
  %442 = tail call i8 @llvm.ctpop.i8(i8 %441), !mcsema_real_eip !107
  %443 = and i8 %442, 1
  %444 = icmp eq i8 %443, 0
  store i1 %444, i1* %PF_val, !mcsema_real_eip !107
  %445 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %445, i1* %CF_val, !mcsema_real_eip !107
  %446 = zext i32 %430 to i64, !mcsema_real_eip !107
  store i64 %446, i64* %RAX_val, !mcsema_real_eip !107
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  %447 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -84
  %448 = add i64 %447, -84, !mcsema_real_eip !108
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !108
  %450 = bitcast i64* %_allin_new_bt_113 to i32*
  store i32 %430, i32* %450, !mcsema_real_eip !108
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %451 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -96
  %452 = add i64 %451, -96, !mcsema_real_eip !109
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %453 = inttoptr i64 %452 to i64*, !mcsema_real_eip !109
  %454 = bitcast i64* %_allin_new_bt_116 to i32*
  store i32 0, i32* %454, !mcsema_real_eip !109
  %_load_rbp_ptr_117 = load i8*, i8** %_RBP_ptr_
  %455 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %_new_gep_118 = getelementptr i8, i8* %_load_rbp_ptr_117, i64 -96
  %456 = add i64 %455, -96, !mcsema_real_eip !110
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %457 = inttoptr i64 %456 to i64*, !mcsema_real_eip !110
  %458 = bitcast i64* %_allin_new_bt_119 to i32*
  %_ptr_to_int_552 = ptrtoint i32* %458 to i64
  %_local_end_to_int_553 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_554 = bitcast i32* %458 to i8*
  %_offset_above_rbp_555 = sub i64 %_ptr_to_int_552, %_local_end_to_int_553
  %_pot_address_in_parent_stack_556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_cond1_557 = icmp ugt i8* %_ptr_bt_554, %_local_stack_end_ptr_
  %_cond2_1_558 = icmp ugt i8* %_ptr_bt_554, %_parent_stack_end_ptr_
  %_cond2_2_559 = icmp ult i8* %_ptr_bt_554, %_parent_stack_start_ptr_
  %_cond2_560 = or i1 %_cond2_1_558, %_cond2_2_559
  %_cond4_561 = icmp ule i8* %_pot_address_in_parent_stack_556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_562 = and i1 %_cond1_557, %_cond2_560
  %_cond1_n_cond2_cond3_563 = and i1 %_cond1_n_cond2_562, %_cond4_561
  br i1 %_cond1_n_cond2_cond3_563, label %459, label %460

; <label>:459:                                    ; preds = %428
  %_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_address_in_parent_stack_bt_565 = bitcast i8* %_address_in_parent_stack_564 to i32*
  br label %460

; <label>:460:                                    ; preds = %428, %459
  %461 = phi i32* [ %458, %428 ], [ %_address_in_parent_stack_bt_565, %459 ]
  %_new_load_566 = load i32, i32* %461
  %462 = zext i32 %_new_load_566 to i64, !mcsema_real_eip !110
  store i64 %462, i64* %RAX_val, !mcsema_real_eip !110
  %_load_rbp_ptr_120 = load i8*, i8** %_RBP_ptr_
  %463 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_120, i64 -44
  %464 = add i64 %463, -44, !mcsema_real_eip !111
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !111
  %466 = bitcast i64* %_allin_new_bt_122 to i32*
  %_ptr_to_int_567 = ptrtoint i32* %466 to i64
  %_local_end_to_int_568 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_569 = bitcast i32* %466 to i8*
  %_offset_above_rbp_570 = sub i64 %_ptr_to_int_567, %_local_end_to_int_568
  %_pot_address_in_parent_stack_571 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_cond1_572 = icmp ugt i8* %_ptr_bt_569, %_local_stack_end_ptr_
  %_cond2_1_573 = icmp ugt i8* %_ptr_bt_569, %_parent_stack_end_ptr_
  %_cond2_2_574 = icmp ult i8* %_ptr_bt_569, %_parent_stack_start_ptr_
  %_cond2_575 = or i1 %_cond2_1_573, %_cond2_2_574
  %_cond4_576 = icmp ule i8* %_pot_address_in_parent_stack_571, %_parent_stack_end_ptr_
  %_cond1_n_cond2_577 = and i1 %_cond1_572, %_cond2_575
  %_cond1_n_cond2_cond3_578 = and i1 %_cond1_n_cond2_577, %_cond4_576
  br i1 %_cond1_n_cond2_cond3_578, label %467, label %468

; <label>:467:                                    ; preds = %460
  %_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_address_in_parent_stack_bt_580 = bitcast i8* %_address_in_parent_stack_579 to i32*
  br label %468

; <label>:468:                                    ; preds = %460, %467
  %469 = phi i32* [ %466, %460 ], [ %_address_in_parent_stack_bt_580, %467 ]
  %_new_load_581 = load i32, i32* %469
  %470 = sub i32 %_new_load_566, %_new_load_581, !mcsema_real_eip !111
  %471 = xor i32 %470, %_new_load_566, !mcsema_real_eip !111
  %472 = xor i32 %471, %_new_load_581, !mcsema_real_eip !111
  %473 = and i32 %472, 16, !mcsema_real_eip !111
  %474 = icmp ne i32 %473, 0, !mcsema_real_eip !111
  store i1 %474, i1* %AF_val, !mcsema_real_eip !111
  %475 = trunc i32 %470 to i8, !mcsema_real_eip !111
  %476 = tail call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !111
  %477 = and i8 %476, 1
  %478 = icmp eq i8 %477, 0
  store i1 %478, i1* %PF_val, !mcsema_real_eip !111
  %479 = icmp eq i32 %_new_load_566, %_new_load_581
  store i1 %479, i1* %ZF_val, !mcsema_real_eip !111
  %480 = icmp slt i32 %470, 0
  store i1 %480, i1* %SF_val, !mcsema_real_eip !111
  %481 = icmp ult i32 %_new_load_566, %_new_load_581, !mcsema_real_eip !111
  store i1 %481, i1* %CF_val, !mcsema_real_eip !111
  %482 = xor i32 %_new_load_581, %_new_load_566, !mcsema_real_eip !111
  %483 = and i32 %471, %482, !mcsema_real_eip !111
  %484 = icmp slt i32 %483, 0
  store i1 %484, i1* %OF_val, !mcsema_real_eip !111
  %485 = load i1, i1* %SF_val, !mcsema_real_eip !112
  %tmp79 = xor i1 %485, %484
  br i1 %tmp79, label %block_0xd6.preheader, label %block_0xf5, !mcsema_real_eip !112

block_0xd6.preheader:                             ; preds = %468
  br label %block_0xd6

block_0x9b:                                       ; preds = %575, %block_0x9b.preheader
  %_load_rbp_ptr_123 = load i8*, i8** %_RBP_ptr_
  %486 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %_new_gep_124 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -40
  %487 = add i64 %486, -40, !mcsema_real_eip !113
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !113
  %_ptr_to_int_582 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_local_end_to_int_583 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_584 = bitcast i64* %_allin_new_bt_125 to i8*
  %_offset_above_rbp_585 = sub i64 %_ptr_to_int_582, %_local_end_to_int_583
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_ptr_bt_584, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_ptr_bt_584, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_ptr_bt_584, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  br i1 %_cond1_n_cond2_cond3_593, label %489, label %490

; <label>:489:                                    ; preds = %block_0x9b
  %_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_address_in_parent_stack_bt_595 = bitcast i8* %_address_in_parent_stack_594 to i64*
  br label %490

; <label>:490:                                    ; preds = %block_0x9b, %489
  %491 = phi i64* [ %_allin_new_bt_125, %block_0x9b ], [ %_address_in_parent_stack_bt_595, %489 ]
  %_new_load_596 = load i64, i64* %491
  store i64 %_new_load_596, i64* %RAX_val, !mcsema_real_eip !113
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -92
  %492 = add i64 %486, -92, !mcsema_real_eip !114
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !114
  %494 = bitcast i64* %_allin_new_bt_127 to i32*
  %_ptr_to_int_597 = ptrtoint i32* %494 to i64
  %_local_end_to_int_598 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_599 = bitcast i32* %494 to i8*
  %_offset_above_rbp_600 = sub i64 %_ptr_to_int_597, %_local_end_to_int_598
  %_pot_address_in_parent_stack_601 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_cond1_602 = icmp ugt i8* %_ptr_bt_599, %_local_stack_end_ptr_
  %_cond2_1_603 = icmp ugt i8* %_ptr_bt_599, %_parent_stack_end_ptr_
  %_cond2_2_604 = icmp ult i8* %_ptr_bt_599, %_parent_stack_start_ptr_
  %_cond2_605 = or i1 %_cond2_1_603, %_cond2_2_604
  %_cond4_606 = icmp ule i8* %_pot_address_in_parent_stack_601, %_parent_stack_end_ptr_
  %_cond1_n_cond2_607 = and i1 %_cond1_602, %_cond2_605
  %_cond1_n_cond2_cond3_608 = and i1 %_cond1_n_cond2_607, %_cond4_606
  br i1 %_cond1_n_cond2_cond3_608, label %495, label %496

; <label>:495:                                    ; preds = %490
  %_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_address_in_parent_stack_bt_610 = bitcast i8* %_address_in_parent_stack_609 to i32*
  br label %496

; <label>:496:                                    ; preds = %490, %495
  %497 = phi i32* [ %494, %490 ], [ %_address_in_parent_stack_bt_610, %495 ]
  %_new_load_611 = load i32, i32* %497
  %498 = sext i32 %_new_load_611 to i64, !mcsema_real_eip !114
  store i64 %498, i64* %RCX_val, !mcsema_real_eip !114
  %499 = load i64, i64* %RAX_val, !mcsema_real_eip !115
  %500 = shl nsw i64 %498, 2
  %501 = add i64 %500, %499, !mcsema_real_eip !115
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !115
  %503 = bitcast i64* %502 to i32*
  %_ptr_to_int_612 = ptrtoint i32* %503 to i64
  %_local_end_to_int_613 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_614 = bitcast i32* %503 to i8*
  %_offset_above_rbp_615 = sub i64 %_ptr_to_int_612, %_local_end_to_int_613
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_ptr_bt_614, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_ptr_bt_614, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_ptr_bt_614, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  br i1 %_cond1_n_cond2_cond3_623, label %504, label %505

; <label>:504:                                    ; preds = %496
  %_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_address_in_parent_stack_bt_625 = bitcast i8* %_address_in_parent_stack_624 to i32*
  br label %505

; <label>:505:                                    ; preds = %496, %504
  %506 = phi i32* [ %503, %496 ], [ %_address_in_parent_stack_bt_625, %504 ]
  %_new_load_626 = load i32, i32* %506
  %507 = zext i32 %_new_load_626 to i64, !mcsema_real_eip !115
  store i64 %507, i64* %RDX_val, !mcsema_real_eip !115
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %508 = load i64, i64* %RBP_val, !mcsema_real_eip !116
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -84
  %509 = add i64 %508, -84, !mcsema_real_eip !116
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !116
  %511 = bitcast i64* %_allin_new_bt_130 to i32*
  %_ptr_to_int_627 = ptrtoint i32* %511 to i64
  %_local_end_to_int_628 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_629 = bitcast i32* %511 to i8*
  %_offset_above_rbp_630 = sub i64 %_ptr_to_int_627, %_local_end_to_int_628
  %_pot_address_in_parent_stack_631 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_cond1_632 = icmp ugt i8* %_ptr_bt_629, %_local_stack_end_ptr_
  %_cond2_1_633 = icmp ugt i8* %_ptr_bt_629, %_parent_stack_end_ptr_
  %_cond2_2_634 = icmp ult i8* %_ptr_bt_629, %_parent_stack_start_ptr_
  %_cond2_635 = or i1 %_cond2_1_633, %_cond2_2_634
  %_cond4_636 = icmp ule i8* %_pot_address_in_parent_stack_631, %_parent_stack_end_ptr_
  %_cond1_n_cond2_637 = and i1 %_cond1_632, %_cond2_635
  %_cond1_n_cond2_cond3_638 = and i1 %_cond1_n_cond2_637, %_cond4_636
  br i1 %_cond1_n_cond2_cond3_638, label %512, label %513

; <label>:512:                                    ; preds = %505
  %_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_address_in_parent_stack_bt_640 = bitcast i8* %_address_in_parent_stack_639 to i32*
  br label %513

; <label>:513:                                    ; preds = %505, %512
  %514 = phi i32* [ %511, %505 ], [ %_address_in_parent_stack_bt_640, %512 ]
  %_new_load_641 = load i32, i32* %514
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_626, i32 %_new_load_641)
  %515 = extractvalue { i32, i1 } %uadd75, 0
  %516 = xor i32 %515, %_new_load_641, !mcsema_real_eip !116
  %517 = xor i32 %516, %_new_load_626, !mcsema_real_eip !116
  %518 = and i32 %517, 16, !mcsema_real_eip !116
  %519 = icmp ne i32 %518, 0, !mcsema_real_eip !116
  store i1 %519, i1* %AF_val, !mcsema_real_eip !116
  %520 = icmp slt i32 %515, 0
  store i1 %520, i1* %SF_val, !mcsema_real_eip !116
  %521 = icmp eq i32 %515, 0, !mcsema_real_eip !116
  store i1 %521, i1* %ZF_val, !mcsema_real_eip !116
  %522 = xor i32 %_new_load_626, -2147483648, !mcsema_real_eip !116
  %523 = xor i32 %522, %_new_load_641, !mcsema_real_eip !116
  %524 = and i32 %516, %523, !mcsema_real_eip !116
  %525 = icmp slt i32 %524, 0
  store i1 %525, i1* %OF_val, !mcsema_real_eip !116
  %526 = trunc i32 %515 to i8, !mcsema_real_eip !116
  %527 = tail call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !116
  %528 = and i8 %527, 1
  %529 = icmp eq i8 %528, 0
  store i1 %529, i1* %PF_val, !mcsema_real_eip !116
  %530 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %530, i1* %CF_val, !mcsema_real_eip !116
  %531 = zext i32 %515 to i64, !mcsema_real_eip !116
  store i64 %531, i64* %RDX_val, !mcsema_real_eip !116
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %532 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -84
  %533 = add i64 %532, -84, !mcsema_real_eip !117
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !117
  %535 = bitcast i64* %_allin_new_bt_133 to i32*
  store i32 %515, i32* %535, !mcsema_real_eip !117
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %536 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -92
  %537 = add i64 %536, -92, !mcsema_real_eip !118
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !118
  %539 = bitcast i64* %_allin_new_bt_136 to i32*
  %_ptr_to_int_642 = ptrtoint i32* %539 to i64
  %_local_end_to_int_643 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_644 = bitcast i32* %539 to i8*
  %_offset_above_rbp_645 = sub i64 %_ptr_to_int_642, %_local_end_to_int_643
  %_pot_address_in_parent_stack_646 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_cond1_647 = icmp ugt i8* %_ptr_bt_644, %_local_stack_end_ptr_
  %_cond2_1_648 = icmp ugt i8* %_ptr_bt_644, %_parent_stack_end_ptr_
  %_cond2_2_649 = icmp ult i8* %_ptr_bt_644, %_parent_stack_start_ptr_
  %_cond2_650 = or i1 %_cond2_1_648, %_cond2_2_649
  %_cond4_651 = icmp ule i8* %_pot_address_in_parent_stack_646, %_parent_stack_end_ptr_
  %_cond1_n_cond2_652 = and i1 %_cond1_647, %_cond2_650
  %_cond1_n_cond2_cond3_653 = and i1 %_cond1_n_cond2_652, %_cond4_651
  br i1 %_cond1_n_cond2_cond3_653, label %540, label %541

; <label>:540:                                    ; preds = %513
  %_address_in_parent_stack_654 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_address_in_parent_stack_bt_655 = bitcast i8* %_address_in_parent_stack_654 to i32*
  br label %541

; <label>:541:                                    ; preds = %513, %540
  %542 = phi i32* [ %539, %513 ], [ %_address_in_parent_stack_bt_655, %540 ]
  %_new_load_656 = load i32, i32* %542
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_656, i32 1)
  %543 = extractvalue { i32, i1 } %uadd76, 0
  %544 = xor i32 %543, %_new_load_656, !mcsema_real_eip !119
  %545 = and i32 %544, 16, !mcsema_real_eip !119
  %546 = icmp ne i32 %545, 0, !mcsema_real_eip !119
  store i1 %546, i1* %AF_val, !mcsema_real_eip !119
  %547 = icmp slt i32 %543, 0
  store i1 %547, i1* %SF_val, !mcsema_real_eip !119
  %548 = icmp eq i32 %543, 0, !mcsema_real_eip !119
  store i1 %548, i1* %ZF_val, !mcsema_real_eip !119
  %549 = xor i32 %_new_load_656, -2147483648, !mcsema_real_eip !119
  %550 = and i32 %544, %549, !mcsema_real_eip !119
  %551 = icmp slt i32 %550, 0
  store i1 %551, i1* %OF_val, !mcsema_real_eip !119
  %552 = trunc i32 %543 to i8, !mcsema_real_eip !119
  %553 = tail call i8 @llvm.ctpop.i8(i8 %552), !mcsema_real_eip !119
  %554 = and i8 %553, 1
  %555 = icmp eq i8 %554, 0
  store i1 %555, i1* %PF_val, !mcsema_real_eip !119
  %556 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %556, i1* %CF_val, !mcsema_real_eip !119
  %557 = zext i32 %543 to i64, !mcsema_real_eip !119
  store i64 %557, i64* %RAX_val, !mcsema_real_eip !119
  %_load_rbp_ptr_137 = load i8*, i8** %_RBP_ptr_
  %558 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_137, i64 -92
  %559 = add i64 %558, -92, !mcsema_real_eip !120
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %560 = inttoptr i64 %559 to i64*, !mcsema_real_eip !120
  %561 = bitcast i64* %_allin_new_bt_139 to i32*
  store i32 %543, i32* %561, !mcsema_real_eip !120
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %562 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -92
  %563 = add i64 %562, -92, !mcsema_real_eip !95
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !95
  %565 = bitcast i64* %_allin_new_bt_142 to i32*
  %_ptr_to_int_657 = ptrtoint i32* %565 to i64
  %_local_end_to_int_658 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_659 = bitcast i32* %565 to i8*
  %_offset_above_rbp_660 = sub i64 %_ptr_to_int_657, %_local_end_to_int_658
  %_pot_address_in_parent_stack_661 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_660
  %_cond1_662 = icmp ugt i8* %_ptr_bt_659, %_local_stack_end_ptr_
  %_cond2_1_663 = icmp ugt i8* %_ptr_bt_659, %_parent_stack_end_ptr_
  %_cond2_2_664 = icmp ult i8* %_ptr_bt_659, %_parent_stack_start_ptr_
  %_cond2_665 = or i1 %_cond2_1_663, %_cond2_2_664
  %_cond4_666 = icmp ule i8* %_pot_address_in_parent_stack_661, %_parent_stack_end_ptr_
  %_cond1_n_cond2_667 = and i1 %_cond1_662, %_cond2_665
  %_cond1_n_cond2_cond3_668 = and i1 %_cond1_n_cond2_667, %_cond4_666
  br i1 %_cond1_n_cond2_cond3_668, label %566, label %567

; <label>:566:                                    ; preds = %541
  %_address_in_parent_stack_669 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_660
  %_address_in_parent_stack_bt_670 = bitcast i8* %_address_in_parent_stack_669 to i32*
  br label %567

; <label>:567:                                    ; preds = %541, %566
  %568 = phi i32* [ %565, %541 ], [ %_address_in_parent_stack_bt_670, %566 ]
  %_new_load_671 = load i32, i32* %568
  %569 = zext i32 %_new_load_671 to i64, !mcsema_real_eip !95
  store i64 %569, i64* %RAX_val, !mcsema_real_eip !95
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %570 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -48
  %571 = add i64 %570, -48, !mcsema_real_eip !96
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !96
  %573 = bitcast i64* %_allin_new_bt_145 to i32*
  %_ptr_to_int_672 = ptrtoint i32* %573 to i64
  %_local_end_to_int_673 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_674 = bitcast i32* %573 to i8*
  %_offset_above_rbp_675 = sub i64 %_ptr_to_int_672, %_local_end_to_int_673
  %_pot_address_in_parent_stack_676 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_cond1_677 = icmp ugt i8* %_ptr_bt_674, %_local_stack_end_ptr_
  %_cond2_1_678 = icmp ugt i8* %_ptr_bt_674, %_parent_stack_end_ptr_
  %_cond2_2_679 = icmp ult i8* %_ptr_bt_674, %_parent_stack_start_ptr_
  %_cond2_680 = or i1 %_cond2_1_678, %_cond2_2_679
  %_cond4_681 = icmp ule i8* %_pot_address_in_parent_stack_676, %_parent_stack_end_ptr_
  %_cond1_n_cond2_682 = and i1 %_cond1_677, %_cond2_680
  %_cond1_n_cond2_cond3_683 = and i1 %_cond1_n_cond2_682, %_cond4_681
  br i1 %_cond1_n_cond2_cond3_683, label %574, label %575

; <label>:574:                                    ; preds = %567
  %_address_in_parent_stack_684 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_address_in_parent_stack_bt_685 = bitcast i8* %_address_in_parent_stack_684 to i32*
  br label %575

; <label>:575:                                    ; preds = %567, %574
  %576 = phi i32* [ %573, %567 ], [ %_address_in_parent_stack_bt_685, %574 ]
  %_new_load_686 = load i32, i32* %576
  %577 = sub i32 %_new_load_671, %_new_load_686, !mcsema_real_eip !96
  %578 = xor i32 %577, %_new_load_671, !mcsema_real_eip !96
  %579 = xor i32 %578, %_new_load_686, !mcsema_real_eip !96
  %580 = and i32 %579, 16, !mcsema_real_eip !96
  %581 = icmp ne i32 %580, 0, !mcsema_real_eip !96
  store i1 %581, i1* %AF_val, !mcsema_real_eip !96
  %582 = trunc i32 %577 to i8, !mcsema_real_eip !96
  %583 = tail call i8 @llvm.ctpop.i8(i8 %582), !mcsema_real_eip !96
  %584 = and i8 %583, 1
  %585 = icmp eq i8 %584, 0
  store i1 %585, i1* %PF_val, !mcsema_real_eip !96
  %586 = icmp eq i32 %_new_load_671, %_new_load_686
  store i1 %586, i1* %ZF_val, !mcsema_real_eip !96
  %587 = icmp slt i32 %577, 0
  store i1 %587, i1* %SF_val, !mcsema_real_eip !96
  %588 = icmp ult i32 %_new_load_671, %_new_load_686, !mcsema_real_eip !96
  store i1 %588, i1* %CF_val, !mcsema_real_eip !96
  %589 = xor i32 %_new_load_686, %_new_load_671, !mcsema_real_eip !96
  %590 = and i32 %578, %589, !mcsema_real_eip !96
  %591 = icmp slt i32 %590, 0
  store i1 %591, i1* %OF_val, !mcsema_real_eip !96
  %592 = load i1, i1* %SF_val, !mcsema_real_eip !97
  %tmp77 = xor i1 %592, %591
  br i1 %tmp77, label %block_0x9b, label %block_0xba.loopexit, !mcsema_real_eip !97

block_0xf5.loopexit:                              ; preds = %757
  br label %block_0xf5

block_0xf5:                                       ; preds = %block_0xf5.loopexit, %468
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %593 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -72
  %594 = add i64 %593, -72, !mcsema_real_eip !121
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %595 = inttoptr i64 %594 to i64*, !mcsema_real_eip !121
  %_ptr_to_int_687 = ptrtoint i64* %_allin_new_bt_148 to i64
  %_local_end_to_int_688 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_689 = bitcast i64* %_allin_new_bt_148 to i8*
  %_offset_above_rbp_690 = sub i64 %_ptr_to_int_687, %_local_end_to_int_688
  %_pot_address_in_parent_stack_691 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_cond1_692 = icmp ugt i8* %_ptr_bt_689, %_local_stack_end_ptr_
  %_cond2_1_693 = icmp ugt i8* %_ptr_bt_689, %_parent_stack_end_ptr_
  %_cond2_2_694 = icmp ult i8* %_ptr_bt_689, %_parent_stack_start_ptr_
  %_cond2_695 = or i1 %_cond2_1_693, %_cond2_2_694
  %_cond4_696 = icmp ule i8* %_pot_address_in_parent_stack_691, %_parent_stack_end_ptr_
  %_cond1_n_cond2_697 = and i1 %_cond1_692, %_cond2_695
  %_cond1_n_cond2_cond3_698 = and i1 %_cond1_n_cond2_697, %_cond4_696
  br i1 %_cond1_n_cond2_cond3_698, label %596, label %597

; <label>:596:                                    ; preds = %block_0xf5
  %_address_in_parent_stack_699 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_address_in_parent_stack_bt_700 = bitcast i8* %_address_in_parent_stack_699 to i64*
  br label %597

; <label>:597:                                    ; preds = %block_0xf5, %596
  %598 = phi i64* [ %_allin_new_bt_148, %block_0xf5 ], [ %_address_in_parent_stack_bt_700, %596 ]
  %_new_load_701 = load i64, i64* %598
  store i64 %_new_load_701, i64* %RAX_val, !mcsema_real_eip !121
  %599 = inttoptr i64 %_new_load_701 to i64*, !mcsema_real_eip !122
  %600 = bitcast i64* %599 to i32*
  %_ptr_to_int_702 = ptrtoint i32* %600 to i64
  %_local_end_to_int_703 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_704 = bitcast i32* %600 to i8*
  %_offset_above_rbp_705 = sub i64 %_ptr_to_int_702, %_local_end_to_int_703
  %_pot_address_in_parent_stack_706 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_cond1_707 = icmp ugt i8* %_ptr_bt_704, %_local_stack_end_ptr_
  %_cond2_1_708 = icmp ugt i8* %_ptr_bt_704, %_parent_stack_end_ptr_
  %_cond2_2_709 = icmp ult i8* %_ptr_bt_704, %_parent_stack_start_ptr_
  %_cond2_710 = or i1 %_cond2_1_708, %_cond2_2_709
  %_cond4_711 = icmp ule i8* %_pot_address_in_parent_stack_706, %_parent_stack_end_ptr_
  %_cond1_n_cond2_712 = and i1 %_cond1_707, %_cond2_710
  %_cond1_n_cond2_cond3_713 = and i1 %_cond1_n_cond2_712, %_cond4_711
  br i1 %_cond1_n_cond2_cond3_713, label %601, label %602

; <label>:601:                                    ; preds = %597
  %_address_in_parent_stack_714 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_address_in_parent_stack_bt_715 = bitcast i8* %_address_in_parent_stack_714 to i32*
  br label %602

; <label>:602:                                    ; preds = %597, %601
  %603 = phi i32* [ %600, %597 ], [ %_address_in_parent_stack_bt_715, %601 ]
  %_new_load_716 = load i32, i32* %603
  %604 = zext i32 %_new_load_716 to i64, !mcsema_real_eip !122
  store i64 %604, i64* %RCX_val, !mcsema_real_eip !122
  %_load_rbp_ptr_149 = load i8*, i8** %_RBP_ptr_
  %605 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_150 = getelementptr i8, i8* %_load_rbp_ptr_149, i64 -84
  %606 = add i64 %605, -84, !mcsema_real_eip !123
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !123
  %608 = bitcast i64* %_allin_new_bt_151 to i32*
  %_ptr_to_int_717 = ptrtoint i32* %608 to i64
  %_local_end_to_int_718 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_719 = bitcast i32* %608 to i8*
  %_offset_above_rbp_720 = sub i64 %_ptr_to_int_717, %_local_end_to_int_718
  %_pot_address_in_parent_stack_721 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_cond1_722 = icmp ugt i8* %_ptr_bt_719, %_local_stack_end_ptr_
  %_cond2_1_723 = icmp ugt i8* %_ptr_bt_719, %_parent_stack_end_ptr_
  %_cond2_2_724 = icmp ult i8* %_ptr_bt_719, %_parent_stack_start_ptr_
  %_cond2_725 = or i1 %_cond2_1_723, %_cond2_2_724
  %_cond4_726 = icmp ule i8* %_pot_address_in_parent_stack_721, %_parent_stack_end_ptr_
  %_cond1_n_cond2_727 = and i1 %_cond1_722, %_cond2_725
  %_cond1_n_cond2_cond3_728 = and i1 %_cond1_n_cond2_727, %_cond4_726
  br i1 %_cond1_n_cond2_cond3_728, label %609, label %610

; <label>:609:                                    ; preds = %602
  %_address_in_parent_stack_729 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_address_in_parent_stack_bt_730 = bitcast i8* %_address_in_parent_stack_729 to i32*
  br label %610

; <label>:610:                                    ; preds = %602, %609
  %611 = phi i32* [ %608, %602 ], [ %_address_in_parent_stack_bt_730, %609 ]
  %_new_load_731 = load i32, i32* %611
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_716, i32 %_new_load_731)
  %612 = extractvalue { i32, i1 } %uadd83, 0
  %613 = xor i32 %612, %_new_load_731, !mcsema_real_eip !123
  %614 = xor i32 %613, %_new_load_716, !mcsema_real_eip !123
  %615 = and i32 %614, 16, !mcsema_real_eip !123
  %616 = icmp ne i32 %615, 0, !mcsema_real_eip !123
  store i1 %616, i1* %AF_val, !mcsema_real_eip !123
  %617 = icmp slt i32 %612, 0
  store i1 %617, i1* %SF_val, !mcsema_real_eip !123
  %618 = icmp eq i32 %612, 0, !mcsema_real_eip !123
  store i1 %618, i1* %ZF_val, !mcsema_real_eip !123
  %619 = xor i32 %_new_load_716, -2147483648, !mcsema_real_eip !123
  %620 = xor i32 %619, %_new_load_731, !mcsema_real_eip !123
  %621 = and i32 %613, %620, !mcsema_real_eip !123
  %622 = icmp slt i32 %621, 0
  store i1 %622, i1* %OF_val, !mcsema_real_eip !123
  %623 = trunc i32 %612 to i8, !mcsema_real_eip !123
  %624 = tail call i8 @llvm.ctpop.i8(i8 %623), !mcsema_real_eip !123
  %625 = and i8 %624, 1
  %626 = icmp eq i8 %625, 0
  store i1 %626, i1* %PF_val, !mcsema_real_eip !123
  %627 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %627, i1* %CF_val, !mcsema_real_eip !123
  %628 = zext i32 %612 to i64, !mcsema_real_eip !123
  store i64 %628, i64* %RCX_val, !mcsema_real_eip !123
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %629 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -84
  %630 = add i64 %629, -84, !mcsema_real_eip !124
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %631 = inttoptr i64 %630 to i64*, !mcsema_real_eip !124
  %632 = bitcast i64* %_allin_new_bt_154 to i32*
  store i32 %612, i32* %632, !mcsema_real_eip !124
  %_load_rbp_ptr_155 = load i8*, i8** %_RBP_ptr_
  %633 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %_new_gep_156 = getelementptr i8, i8* %_load_rbp_ptr_155, i64 -100
  %634 = add i64 %633, -100, !mcsema_real_eip !125
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %635 = inttoptr i64 %634 to i64*, !mcsema_real_eip !125
  %636 = bitcast i64* %_allin_new_bt_157 to i32*
  store i32 0, i32* %636, !mcsema_real_eip !125
  %_load_rbp_ptr_158 = load i8*, i8** %_RBP_ptr_
  %637 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_159 = getelementptr i8, i8* %_load_rbp_ptr_158, i64 -100
  %638 = add i64 %637, -100, !mcsema_real_eip !126
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  %639 = inttoptr i64 %638 to i64*, !mcsema_real_eip !126
  %640 = bitcast i64* %_allin_new_bt_160 to i32*
  %_ptr_to_int_732 = ptrtoint i32* %640 to i64
  %_local_end_to_int_733 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_734 = bitcast i32* %640 to i8*
  %_offset_above_rbp_735 = sub i64 %_ptr_to_int_732, %_local_end_to_int_733
  %_pot_address_in_parent_stack_736 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_cond1_737 = icmp ugt i8* %_ptr_bt_734, %_local_stack_end_ptr_
  %_cond2_1_738 = icmp ugt i8* %_ptr_bt_734, %_parent_stack_end_ptr_
  %_cond2_2_739 = icmp ult i8* %_ptr_bt_734, %_parent_stack_start_ptr_
  %_cond2_740 = or i1 %_cond2_1_738, %_cond2_2_739
  %_cond4_741 = icmp ule i8* %_pot_address_in_parent_stack_736, %_parent_stack_end_ptr_
  %_cond1_n_cond2_742 = and i1 %_cond1_737, %_cond2_740
  %_cond1_n_cond2_cond3_743 = and i1 %_cond1_n_cond2_742, %_cond4_741
  br i1 %_cond1_n_cond2_cond3_743, label %641, label %642

; <label>:641:                                    ; preds = %610
  %_address_in_parent_stack_744 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_address_in_parent_stack_bt_745 = bitcast i8* %_address_in_parent_stack_744 to i32*
  br label %642

; <label>:642:                                    ; preds = %610, %641
  %643 = phi i32* [ %640, %610 ], [ %_address_in_parent_stack_bt_745, %641 ]
  %_new_load_746 = load i32, i32* %643
  %644 = zext i32 %_new_load_746 to i64, !mcsema_real_eip !126
  store i64 %644, i64* %RAX_val, !mcsema_real_eip !126
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %645 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -48
  %646 = add i64 %645, -48, !mcsema_real_eip !127
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %647 = inttoptr i64 %646 to i64*, !mcsema_real_eip !127
  %648 = bitcast i64* %_allin_new_bt_163 to i32*
  %_ptr_to_int_747 = ptrtoint i32* %648 to i64
  %_local_end_to_int_748 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_749 = bitcast i32* %648 to i8*
  %_offset_above_rbp_750 = sub i64 %_ptr_to_int_747, %_local_end_to_int_748
  %_pot_address_in_parent_stack_751 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_750
  %_cond1_752 = icmp ugt i8* %_ptr_bt_749, %_local_stack_end_ptr_
  %_cond2_1_753 = icmp ugt i8* %_ptr_bt_749, %_parent_stack_end_ptr_
  %_cond2_2_754 = icmp ult i8* %_ptr_bt_749, %_parent_stack_start_ptr_
  %_cond2_755 = or i1 %_cond2_1_753, %_cond2_2_754
  %_cond4_756 = icmp ule i8* %_pot_address_in_parent_stack_751, %_parent_stack_end_ptr_
  %_cond1_n_cond2_757 = and i1 %_cond1_752, %_cond2_755
  %_cond1_n_cond2_cond3_758 = and i1 %_cond1_n_cond2_757, %_cond4_756
  br i1 %_cond1_n_cond2_cond3_758, label %649, label %650

; <label>:649:                                    ; preds = %642
  %_address_in_parent_stack_759 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_750
  %_address_in_parent_stack_bt_760 = bitcast i8* %_address_in_parent_stack_759 to i32*
  br label %650

; <label>:650:                                    ; preds = %642, %649
  %651 = phi i32* [ %648, %642 ], [ %_address_in_parent_stack_bt_760, %649 ]
  %_new_load_761 = load i32, i32* %651
  %652 = sub i32 %_new_load_746, %_new_load_761, !mcsema_real_eip !127
  %653 = xor i32 %652, %_new_load_746, !mcsema_real_eip !127
  %654 = xor i32 %653, %_new_load_761, !mcsema_real_eip !127
  %655 = and i32 %654, 16, !mcsema_real_eip !127
  %656 = icmp ne i32 %655, 0, !mcsema_real_eip !127
  store i1 %656, i1* %AF_val, !mcsema_real_eip !127
  %657 = trunc i32 %652 to i8, !mcsema_real_eip !127
  %658 = tail call i8 @llvm.ctpop.i8(i8 %657), !mcsema_real_eip !127
  %659 = and i8 %658, 1
  %660 = icmp eq i8 %659, 0
  store i1 %660, i1* %PF_val, !mcsema_real_eip !127
  %661 = icmp eq i32 %_new_load_746, %_new_load_761
  store i1 %661, i1* %ZF_val, !mcsema_real_eip !127
  %662 = icmp slt i32 %652, 0
  store i1 %662, i1* %SF_val, !mcsema_real_eip !127
  %663 = icmp ult i32 %_new_load_746, %_new_load_761, !mcsema_real_eip !127
  store i1 %663, i1* %CF_val, !mcsema_real_eip !127
  %664 = xor i32 %_new_load_761, %_new_load_746, !mcsema_real_eip !127
  %665 = and i32 %653, %664, !mcsema_real_eip !127
  %666 = icmp slt i32 %665, 0
  store i1 %666, i1* %OF_val, !mcsema_real_eip !127
  %667 = load i1, i1* %SF_val, !mcsema_real_eip !128
  %tmp84 = xor i1 %667, %666
  br i1 %tmp84, label %block_0x114.preheader, label %block_0x133, !mcsema_real_eip !128

block_0x114.preheader:                            ; preds = %650
  br label %block_0x114

block_0xd6:                                       ; preds = %757, %block_0xd6.preheader
  %_load_rbp_ptr_164 = load i8*, i8** %_RBP_ptr_
  %668 = load i64, i64* %RBP_val, !mcsema_real_eip !129
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_164, i64 -64
  %669 = add i64 %668, -64, !mcsema_real_eip !129
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %670 = inttoptr i64 %669 to i64*, !mcsema_real_eip !129
  %_ptr_to_int_762 = ptrtoint i64* %_allin_new_bt_166 to i64
  %_local_end_to_int_763 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_764 = bitcast i64* %_allin_new_bt_166 to i8*
  %_offset_above_rbp_765 = sub i64 %_ptr_to_int_762, %_local_end_to_int_763
  %_pot_address_in_parent_stack_766 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_765
  %_cond1_767 = icmp ugt i8* %_ptr_bt_764, %_local_stack_end_ptr_
  %_cond2_1_768 = icmp ugt i8* %_ptr_bt_764, %_parent_stack_end_ptr_
  %_cond2_2_769 = icmp ult i8* %_ptr_bt_764, %_parent_stack_start_ptr_
  %_cond2_770 = or i1 %_cond2_1_768, %_cond2_2_769
  %_cond4_771 = icmp ule i8* %_pot_address_in_parent_stack_766, %_parent_stack_end_ptr_
  %_cond1_n_cond2_772 = and i1 %_cond1_767, %_cond2_770
  %_cond1_n_cond2_cond3_773 = and i1 %_cond1_n_cond2_772, %_cond4_771
  br i1 %_cond1_n_cond2_cond3_773, label %671, label %672

; <label>:671:                                    ; preds = %block_0xd6
  %_address_in_parent_stack_774 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_765
  %_address_in_parent_stack_bt_775 = bitcast i8* %_address_in_parent_stack_774 to i64*
  br label %672

; <label>:672:                                    ; preds = %block_0xd6, %671
  %673 = phi i64* [ %_allin_new_bt_166, %block_0xd6 ], [ %_address_in_parent_stack_bt_775, %671 ]
  %_new_load_776 = load i64, i64* %673
  store i64 %_new_load_776, i64* %RAX_val, !mcsema_real_eip !129
  %_new_gep_167 = getelementptr i8, i8* %_load_rbp_ptr_164, i64 -96
  %674 = add i64 %668, -96, !mcsema_real_eip !130
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  %675 = inttoptr i64 %674 to i64*, !mcsema_real_eip !130
  %676 = bitcast i64* %_allin_new_bt_168 to i32*
  %_ptr_to_int_777 = ptrtoint i32* %676 to i64
  %_local_end_to_int_778 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_779 = bitcast i32* %676 to i8*
  %_offset_above_rbp_780 = sub i64 %_ptr_to_int_777, %_local_end_to_int_778
  %_pot_address_in_parent_stack_781 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_780
  %_cond1_782 = icmp ugt i8* %_ptr_bt_779, %_local_stack_end_ptr_
  %_cond2_1_783 = icmp ugt i8* %_ptr_bt_779, %_parent_stack_end_ptr_
  %_cond2_2_784 = icmp ult i8* %_ptr_bt_779, %_parent_stack_start_ptr_
  %_cond2_785 = or i1 %_cond2_1_783, %_cond2_2_784
  %_cond4_786 = icmp ule i8* %_pot_address_in_parent_stack_781, %_parent_stack_end_ptr_
  %_cond1_n_cond2_787 = and i1 %_cond1_782, %_cond2_785
  %_cond1_n_cond2_cond3_788 = and i1 %_cond1_n_cond2_787, %_cond4_786
  br i1 %_cond1_n_cond2_cond3_788, label %677, label %678

; <label>:677:                                    ; preds = %672
  %_address_in_parent_stack_789 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_780
  %_address_in_parent_stack_bt_790 = bitcast i8* %_address_in_parent_stack_789 to i32*
  br label %678

; <label>:678:                                    ; preds = %672, %677
  %679 = phi i32* [ %676, %672 ], [ %_address_in_parent_stack_bt_790, %677 ]
  %_new_load_791 = load i32, i32* %679
  %680 = sext i32 %_new_load_791 to i64, !mcsema_real_eip !130
  store i64 %680, i64* %RCX_val, !mcsema_real_eip !130
  %681 = load i64, i64* %RAX_val, !mcsema_real_eip !131
  %682 = shl nsw i64 %680, 2
  %683 = add i64 %682, %681, !mcsema_real_eip !131
  %684 = inttoptr i64 %683 to i64*, !mcsema_real_eip !131
  %685 = bitcast i64* %684 to i32*
  %_ptr_to_int_792 = ptrtoint i32* %685 to i64
  %_local_end_to_int_793 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_794 = bitcast i32* %685 to i8*
  %_offset_above_rbp_795 = sub i64 %_ptr_to_int_792, %_local_end_to_int_793
  %_pot_address_in_parent_stack_796 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_795
  %_cond1_797 = icmp ugt i8* %_ptr_bt_794, %_local_stack_end_ptr_
  %_cond2_1_798 = icmp ugt i8* %_ptr_bt_794, %_parent_stack_end_ptr_
  %_cond2_2_799 = icmp ult i8* %_ptr_bt_794, %_parent_stack_start_ptr_
  %_cond2_800 = or i1 %_cond2_1_798, %_cond2_2_799
  %_cond4_801 = icmp ule i8* %_pot_address_in_parent_stack_796, %_parent_stack_end_ptr_
  %_cond1_n_cond2_802 = and i1 %_cond1_797, %_cond2_800
  %_cond1_n_cond2_cond3_803 = and i1 %_cond1_n_cond2_802, %_cond4_801
  br i1 %_cond1_n_cond2_cond3_803, label %686, label %687

; <label>:686:                                    ; preds = %678
  %_address_in_parent_stack_804 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_795
  %_address_in_parent_stack_bt_805 = bitcast i8* %_address_in_parent_stack_804 to i32*
  br label %687

; <label>:687:                                    ; preds = %678, %686
  %688 = phi i32* [ %685, %678 ], [ %_address_in_parent_stack_bt_805, %686 ]
  %_new_load_806 = load i32, i32* %688
  %689 = zext i32 %_new_load_806 to i64, !mcsema_real_eip !131
  store i64 %689, i64* %RDX_val, !mcsema_real_eip !131
  %_load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_
  %690 = load i64, i64* %RBP_val, !mcsema_real_eip !132
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_169, i64 -84
  %691 = add i64 %690, -84, !mcsema_real_eip !132
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %692 = inttoptr i64 %691 to i64*, !mcsema_real_eip !132
  %693 = bitcast i64* %_allin_new_bt_171 to i32*
  %_ptr_to_int_807 = ptrtoint i32* %693 to i64
  %_local_end_to_int_808 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_809 = bitcast i32* %693 to i8*
  %_offset_above_rbp_810 = sub i64 %_ptr_to_int_807, %_local_end_to_int_808
  %_pot_address_in_parent_stack_811 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_810
  %_cond1_812 = icmp ugt i8* %_ptr_bt_809, %_local_stack_end_ptr_
  %_cond2_1_813 = icmp ugt i8* %_ptr_bt_809, %_parent_stack_end_ptr_
  %_cond2_2_814 = icmp ult i8* %_ptr_bt_809, %_parent_stack_start_ptr_
  %_cond2_815 = or i1 %_cond2_1_813, %_cond2_2_814
  %_cond4_816 = icmp ule i8* %_pot_address_in_parent_stack_811, %_parent_stack_end_ptr_
  %_cond1_n_cond2_817 = and i1 %_cond1_812, %_cond2_815
  %_cond1_n_cond2_cond3_818 = and i1 %_cond1_n_cond2_817, %_cond4_816
  br i1 %_cond1_n_cond2_cond3_818, label %694, label %695

; <label>:694:                                    ; preds = %687
  %_address_in_parent_stack_819 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_810
  %_address_in_parent_stack_bt_820 = bitcast i8* %_address_in_parent_stack_819 to i32*
  br label %695

; <label>:695:                                    ; preds = %687, %694
  %696 = phi i32* [ %693, %687 ], [ %_address_in_parent_stack_bt_820, %694 ]
  %_new_load_821 = load i32, i32* %696
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_806, i32 %_new_load_821)
  %697 = extractvalue { i32, i1 } %uadd80, 0
  %698 = xor i32 %697, %_new_load_821, !mcsema_real_eip !132
  %699 = xor i32 %698, %_new_load_806, !mcsema_real_eip !132
  %700 = and i32 %699, 16, !mcsema_real_eip !132
  %701 = icmp ne i32 %700, 0, !mcsema_real_eip !132
  store i1 %701, i1* %AF_val, !mcsema_real_eip !132
  %702 = icmp slt i32 %697, 0
  store i1 %702, i1* %SF_val, !mcsema_real_eip !132
  %703 = icmp eq i32 %697, 0, !mcsema_real_eip !132
  store i1 %703, i1* %ZF_val, !mcsema_real_eip !132
  %704 = xor i32 %_new_load_806, -2147483648, !mcsema_real_eip !132
  %705 = xor i32 %704, %_new_load_821, !mcsema_real_eip !132
  %706 = and i32 %698, %705, !mcsema_real_eip !132
  %707 = icmp slt i32 %706, 0
  store i1 %707, i1* %OF_val, !mcsema_real_eip !132
  %708 = trunc i32 %697 to i8, !mcsema_real_eip !132
  %709 = tail call i8 @llvm.ctpop.i8(i8 %708), !mcsema_real_eip !132
  %710 = and i8 %709, 1
  %711 = icmp eq i8 %710, 0
  store i1 %711, i1* %PF_val, !mcsema_real_eip !132
  %712 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %712, i1* %CF_val, !mcsema_real_eip !132
  %713 = zext i32 %697 to i64, !mcsema_real_eip !132
  store i64 %713, i64* %RDX_val, !mcsema_real_eip !132
  %_load_rbp_ptr_172 = load i8*, i8** %_RBP_ptr_
  %714 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_172, i64 -84
  %715 = add i64 %714, -84, !mcsema_real_eip !133
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %716 = inttoptr i64 %715 to i64*, !mcsema_real_eip !133
  %717 = bitcast i64* %_allin_new_bt_174 to i32*
  store i32 %697, i32* %717, !mcsema_real_eip !133
  %_load_rbp_ptr_175 = load i8*, i8** %_RBP_ptr_
  %718 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  %_new_gep_176 = getelementptr i8, i8* %_load_rbp_ptr_175, i64 -96
  %719 = add i64 %718, -96, !mcsema_real_eip !134
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  %720 = inttoptr i64 %719 to i64*, !mcsema_real_eip !134
  %721 = bitcast i64* %_allin_new_bt_177 to i32*
  %_ptr_to_int_822 = ptrtoint i32* %721 to i64
  %_local_end_to_int_823 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_824 = bitcast i32* %721 to i8*
  %_offset_above_rbp_825 = sub i64 %_ptr_to_int_822, %_local_end_to_int_823
  %_pot_address_in_parent_stack_826 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_825
  %_cond1_827 = icmp ugt i8* %_ptr_bt_824, %_local_stack_end_ptr_
  %_cond2_1_828 = icmp ugt i8* %_ptr_bt_824, %_parent_stack_end_ptr_
  %_cond2_2_829 = icmp ult i8* %_ptr_bt_824, %_parent_stack_start_ptr_
  %_cond2_830 = or i1 %_cond2_1_828, %_cond2_2_829
  %_cond4_831 = icmp ule i8* %_pot_address_in_parent_stack_826, %_parent_stack_end_ptr_
  %_cond1_n_cond2_832 = and i1 %_cond1_827, %_cond2_830
  %_cond1_n_cond2_cond3_833 = and i1 %_cond1_n_cond2_832, %_cond4_831
  br i1 %_cond1_n_cond2_cond3_833, label %722, label %723

; <label>:722:                                    ; preds = %695
  %_address_in_parent_stack_834 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_825
  %_address_in_parent_stack_bt_835 = bitcast i8* %_address_in_parent_stack_834 to i32*
  br label %723

; <label>:723:                                    ; preds = %695, %722
  %724 = phi i32* [ %721, %695 ], [ %_address_in_parent_stack_bt_835, %722 ]
  %_new_load_836 = load i32, i32* %724
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_836, i32 1)
  %725 = extractvalue { i32, i1 } %uadd81, 0
  %726 = xor i32 %725, %_new_load_836, !mcsema_real_eip !135
  %727 = and i32 %726, 16, !mcsema_real_eip !135
  %728 = icmp ne i32 %727, 0, !mcsema_real_eip !135
  store i1 %728, i1* %AF_val, !mcsema_real_eip !135
  %729 = icmp slt i32 %725, 0
  store i1 %729, i1* %SF_val, !mcsema_real_eip !135
  %730 = icmp eq i32 %725, 0, !mcsema_real_eip !135
  store i1 %730, i1* %ZF_val, !mcsema_real_eip !135
  %731 = xor i32 %_new_load_836, -2147483648, !mcsema_real_eip !135
  %732 = and i32 %726, %731, !mcsema_real_eip !135
  %733 = icmp slt i32 %732, 0
  store i1 %733, i1* %OF_val, !mcsema_real_eip !135
  %734 = trunc i32 %725 to i8, !mcsema_real_eip !135
  %735 = tail call i8 @llvm.ctpop.i8(i8 %734), !mcsema_real_eip !135
  %736 = and i8 %735, 1
  %737 = icmp eq i8 %736, 0
  store i1 %737, i1* %PF_val, !mcsema_real_eip !135
  %738 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %738, i1* %CF_val, !mcsema_real_eip !135
  %739 = zext i32 %725 to i64, !mcsema_real_eip !135
  store i64 %739, i64* %RAX_val, !mcsema_real_eip !135
  %_load_rbp_ptr_178 = load i8*, i8** %_RBP_ptr_
  %740 = load i64, i64* %RBP_val, !mcsema_real_eip !136
  %_new_gep_179 = getelementptr i8, i8* %_load_rbp_ptr_178, i64 -96
  %741 = add i64 %740, -96, !mcsema_real_eip !136
  %_allin_new_bt_180 = bitcast i8* %_new_gep_179 to i64*
  %742 = inttoptr i64 %741 to i64*, !mcsema_real_eip !136
  %743 = bitcast i64* %_allin_new_bt_180 to i32*
  store i32 %725, i32* %743, !mcsema_real_eip !136
  %_load_rbp_ptr_181 = load i8*, i8** %_RBP_ptr_
  %744 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -96
  %745 = add i64 %744, -96, !mcsema_real_eip !110
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %746 = inttoptr i64 %745 to i64*, !mcsema_real_eip !110
  %747 = bitcast i64* %_allin_new_bt_183 to i32*
  %_ptr_to_int_837 = ptrtoint i32* %747 to i64
  %_local_end_to_int_838 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_839 = bitcast i32* %747 to i8*
  %_offset_above_rbp_840 = sub i64 %_ptr_to_int_837, %_local_end_to_int_838
  %_pot_address_in_parent_stack_841 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_840
  %_cond1_842 = icmp ugt i8* %_ptr_bt_839, %_local_stack_end_ptr_
  %_cond2_1_843 = icmp ugt i8* %_ptr_bt_839, %_parent_stack_end_ptr_
  %_cond2_2_844 = icmp ult i8* %_ptr_bt_839, %_parent_stack_start_ptr_
  %_cond2_845 = or i1 %_cond2_1_843, %_cond2_2_844
  %_cond4_846 = icmp ule i8* %_pot_address_in_parent_stack_841, %_parent_stack_end_ptr_
  %_cond1_n_cond2_847 = and i1 %_cond1_842, %_cond2_845
  %_cond1_n_cond2_cond3_848 = and i1 %_cond1_n_cond2_847, %_cond4_846
  br i1 %_cond1_n_cond2_cond3_848, label %748, label %749

; <label>:748:                                    ; preds = %723
  %_address_in_parent_stack_849 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_840
  %_address_in_parent_stack_bt_850 = bitcast i8* %_address_in_parent_stack_849 to i32*
  br label %749

; <label>:749:                                    ; preds = %723, %748
  %750 = phi i32* [ %747, %723 ], [ %_address_in_parent_stack_bt_850, %748 ]
  %_new_load_851 = load i32, i32* %750
  %751 = zext i32 %_new_load_851 to i64, !mcsema_real_eip !110
  store i64 %751, i64* %RAX_val, !mcsema_real_eip !110
  %_load_rbp_ptr_184 = load i8*, i8** %_RBP_ptr_
  %752 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %_new_gep_185 = getelementptr i8, i8* %_load_rbp_ptr_184, i64 -44
  %753 = add i64 %752, -44, !mcsema_real_eip !111
  %_allin_new_bt_186 = bitcast i8* %_new_gep_185 to i64*
  %754 = inttoptr i64 %753 to i64*, !mcsema_real_eip !111
  %755 = bitcast i64* %_allin_new_bt_186 to i32*
  %_ptr_to_int_852 = ptrtoint i32* %755 to i64
  %_local_end_to_int_853 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_854 = bitcast i32* %755 to i8*
  %_offset_above_rbp_855 = sub i64 %_ptr_to_int_852, %_local_end_to_int_853
  %_pot_address_in_parent_stack_856 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_855
  %_cond1_857 = icmp ugt i8* %_ptr_bt_854, %_local_stack_end_ptr_
  %_cond2_1_858 = icmp ugt i8* %_ptr_bt_854, %_parent_stack_end_ptr_
  %_cond2_2_859 = icmp ult i8* %_ptr_bt_854, %_parent_stack_start_ptr_
  %_cond2_860 = or i1 %_cond2_1_858, %_cond2_2_859
  %_cond4_861 = icmp ule i8* %_pot_address_in_parent_stack_856, %_parent_stack_end_ptr_
  %_cond1_n_cond2_862 = and i1 %_cond1_857, %_cond2_860
  %_cond1_n_cond2_cond3_863 = and i1 %_cond1_n_cond2_862, %_cond4_861
  br i1 %_cond1_n_cond2_cond3_863, label %756, label %757

; <label>:756:                                    ; preds = %749
  %_address_in_parent_stack_864 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_855
  %_address_in_parent_stack_bt_865 = bitcast i8* %_address_in_parent_stack_864 to i32*
  br label %757

; <label>:757:                                    ; preds = %749, %756
  %758 = phi i32* [ %755, %749 ], [ %_address_in_parent_stack_bt_865, %756 ]
  %_new_load_866 = load i32, i32* %758
  %759 = sub i32 %_new_load_851, %_new_load_866, !mcsema_real_eip !111
  %760 = xor i32 %759, %_new_load_851, !mcsema_real_eip !111
  %761 = xor i32 %760, %_new_load_866, !mcsema_real_eip !111
  %762 = and i32 %761, 16, !mcsema_real_eip !111
  %763 = icmp ne i32 %762, 0, !mcsema_real_eip !111
  store i1 %763, i1* %AF_val, !mcsema_real_eip !111
  %764 = trunc i32 %759 to i8, !mcsema_real_eip !111
  %765 = tail call i8 @llvm.ctpop.i8(i8 %764), !mcsema_real_eip !111
  %766 = and i8 %765, 1
  %767 = icmp eq i8 %766, 0
  store i1 %767, i1* %PF_val, !mcsema_real_eip !111
  %768 = icmp eq i32 %_new_load_851, %_new_load_866
  store i1 %768, i1* %ZF_val, !mcsema_real_eip !111
  %769 = icmp slt i32 %759, 0
  store i1 %769, i1* %SF_val, !mcsema_real_eip !111
  %770 = icmp ult i32 %_new_load_851, %_new_load_866, !mcsema_real_eip !111
  store i1 %770, i1* %CF_val, !mcsema_real_eip !111
  %771 = xor i32 %_new_load_866, %_new_load_851, !mcsema_real_eip !111
  %772 = and i32 %760, %771, !mcsema_real_eip !111
  %773 = icmp slt i32 %772, 0
  store i1 %773, i1* %OF_val, !mcsema_real_eip !111
  %774 = load i1, i1* %SF_val, !mcsema_real_eip !112
  %tmp82 = xor i1 %774, %773
  br i1 %tmp82, label %block_0xd6, label %block_0xf5.loopexit, !mcsema_real_eip !112

block_0x133.loopexit:                             ; preds = %955
  br label %block_0x133

block_0x133:                                      ; preds = %block_0x133.loopexit, %650
  %_load_rbp_ptr_187 = load i8*, i8** %_RBP_ptr_
  %775 = load i64, i64* %RBP_val, !mcsema_real_eip !137
  %_new_gep_188 = getelementptr i8, i8* %_load_rbp_ptr_187, i64 -84
  %776 = add i64 %775, -84, !mcsema_real_eip !137
  %_allin_new_bt_189 = bitcast i8* %_new_gep_188 to i64*
  %777 = inttoptr i64 %776 to i64*, !mcsema_real_eip !137
  %778 = bitcast i64* %_allin_new_bt_189 to i32*
  %_ptr_to_int_867 = ptrtoint i32* %778 to i64
  %_local_end_to_int_868 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_869 = bitcast i32* %778 to i8*
  %_offset_above_rbp_870 = sub i64 %_ptr_to_int_867, %_local_end_to_int_868
  %_pot_address_in_parent_stack_871 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_870
  %_cond1_872 = icmp ugt i8* %_ptr_bt_869, %_local_stack_end_ptr_
  %_cond2_1_873 = icmp ugt i8* %_ptr_bt_869, %_parent_stack_end_ptr_
  %_cond2_2_874 = icmp ult i8* %_ptr_bt_869, %_parent_stack_start_ptr_
  %_cond2_875 = or i1 %_cond2_1_873, %_cond2_2_874
  %_cond4_876 = icmp ule i8* %_pot_address_in_parent_stack_871, %_parent_stack_end_ptr_
  %_cond1_n_cond2_877 = and i1 %_cond1_872, %_cond2_875
  %_cond1_n_cond2_cond3_878 = and i1 %_cond1_n_cond2_877, %_cond4_876
  br i1 %_cond1_n_cond2_cond3_878, label %779, label %780

; <label>:779:                                    ; preds = %block_0x133
  %_address_in_parent_stack_879 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_870
  %_address_in_parent_stack_bt_880 = bitcast i8* %_address_in_parent_stack_879 to i32*
  br label %780

; <label>:780:                                    ; preds = %block_0x133, %779
  %781 = phi i32* [ %778, %block_0x133 ], [ %_address_in_parent_stack_bt_880, %779 ]
  %_new_load_881 = load i32, i32* %781
  %782 = zext i32 %_new_load_881 to i64, !mcsema_real_eip !137
  store i64 %782, i64* %RAX_val, !mcsema_real_eip !137
  %_load_rsp_ptr_190 = load i8*, i8** %_RSP_ptr_
  %783 = load i64, i64* %RSP_val, !mcsema_real_eip !138
  %_allin_new_bt_191 = bitcast i8* %_load_rsp_ptr_190 to i64*
  %784 = inttoptr i64 %783 to i64*, !mcsema_real_eip !138
  %_ptr_to_int_882 = ptrtoint i64* %_allin_new_bt_191 to i64
  %_local_end_to_int_883 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_884 = bitcast i64* %_allin_new_bt_191 to i8*
  %_offset_above_rbp_885 = sub i64 %_ptr_to_int_882, %_local_end_to_int_883
  %_pot_address_in_parent_stack_886 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_885
  %_cond1_887 = icmp ugt i8* %_ptr_bt_884, %_local_stack_end_ptr_
  %_cond2_1_888 = icmp ugt i8* %_ptr_bt_884, %_parent_stack_end_ptr_
  %_cond2_2_889 = icmp ult i8* %_ptr_bt_884, %_parent_stack_start_ptr_
  %_cond2_890 = or i1 %_cond2_1_888, %_cond2_2_889
  %_cond4_891 = icmp ule i8* %_pot_address_in_parent_stack_886, %_parent_stack_end_ptr_
  %_cond1_n_cond2_892 = and i1 %_cond1_887, %_cond2_890
  %_cond1_n_cond2_cond3_893 = and i1 %_cond1_n_cond2_892, %_cond4_891
  br i1 %_cond1_n_cond2_cond3_893, label %785, label %786

; <label>:785:                                    ; preds = %780
  %_address_in_parent_stack_894 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_885
  %_address_in_parent_stack_bt_895 = bitcast i8* %_address_in_parent_stack_894 to i64*
  br label %786

; <label>:786:                                    ; preds = %780, %785
  %787 = phi i64* [ %_allin_new_bt_191, %780 ], [ %_address_in_parent_stack_bt_895, %785 ]
  %_new_load_896 = load i64, i64* %787
  store i64 %_new_load_896, i64* %RBX_val, !mcsema_real_eip !138
  %_new_gep_192 = getelementptr i8, i8* %_load_rsp_ptr_190, i64 8
  %788 = add i64 %783, 8, !mcsema_real_eip !138
  store volatile i8* %_new_gep_192, i8** %_RSP_ptr_
  store i64 %788, i64* %RSP_val, !mcsema_real_eip !138
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %789 = inttoptr i64 %788 to i64*, !mcsema_real_eip !139
  %_ptr_to_int_897 = ptrtoint i64* %_allin_new_bt_193 to i64
  %_local_end_to_int_898 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_899 = bitcast i64* %_allin_new_bt_193 to i8*
  %_offset_above_rbp_900 = sub i64 %_ptr_to_int_897, %_local_end_to_int_898
  %_pot_address_in_parent_stack_901 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_900
  %_cond1_902 = icmp ugt i8* %_ptr_bt_899, %_local_stack_end_ptr_
  %_cond2_1_903 = icmp ugt i8* %_ptr_bt_899, %_parent_stack_end_ptr_
  %_cond2_2_904 = icmp ult i8* %_ptr_bt_899, %_parent_stack_start_ptr_
  %_cond2_905 = or i1 %_cond2_1_903, %_cond2_2_904
  %_cond4_906 = icmp ule i8* %_pot_address_in_parent_stack_901, %_parent_stack_end_ptr_
  %_cond1_n_cond2_907 = and i1 %_cond1_902, %_cond2_905
  %_cond1_n_cond2_cond3_908 = and i1 %_cond1_n_cond2_907, %_cond4_906
  br i1 %_cond1_n_cond2_cond3_908, label %790, label %791

; <label>:790:                                    ; preds = %786
  %_address_in_parent_stack_909 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_900
  %_address_in_parent_stack_bt_910 = bitcast i8* %_address_in_parent_stack_909 to i64*
  br label %791

; <label>:791:                                    ; preds = %786, %790
  %792 = phi i64* [ %_allin_new_bt_193, %786 ], [ %_address_in_parent_stack_bt_910, %790 ]
  %_new_load_911 = load i64, i64* %792
  %_new_int2ptr_ = inttoptr i64 %_new_load_911 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_911, i64* %RBP_val, !mcsema_real_eip !139
  %_new_gep_194 = getelementptr i8, i8* %_load_rsp_ptr_190, i64 24
  %793 = add i64 %783, 24, !mcsema_real_eip !140
  store volatile i8* %_new_gep_194, i8** %_RSP_ptr_
  store i64 %793, i64* %RSP_val, !mcsema_real_eip !140
  %794 = load i64, i64* %RAX_val, !mcsema_real_eip !140
  store i64 %794, i64* %RAX, !mcsema_real_eip !140
  %795 = load i64, i64* %RBX_val, !mcsema_real_eip !140
  store i64 %795, i64* %RBX, !mcsema_real_eip !140
  %796 = load i64, i64* %RCX_val, !mcsema_real_eip !140
  store i64 %796, i64* %RCX, !mcsema_real_eip !140
  %797 = load i64, i64* %RDX_val, !mcsema_real_eip !140
  store i64 %797, i64* %RDX, !mcsema_real_eip !140
  %798 = load i64, i64* %RSI_val, !mcsema_real_eip !140
  store i64 %798, i64* %RSI, !mcsema_real_eip !140
  %799 = load i64, i64* %RDI_val, !mcsema_real_eip !140
  store i64 %799, i64* %RDI, !mcsema_real_eip !140
  %_load_rsp_ptr_195 = load i8*, i8** %_RSP_ptr_
  %800 = load i64, i64* %RSP_val, !mcsema_real_eip !140
  %_new_ptr2int_196 = ptrtoint i8* %_load_rsp_ptr_195 to i64
  store volatile i64 %_new_ptr2int_196, i64* %RSP
  %_load_rbp_ptr_197 = load i8*, i8** %_RBP_ptr_
  %801 = load i64, i64* %RBP_val, !mcsema_real_eip !140
  %_new_ptr2int_198 = ptrtoint i8* %_load_rbp_ptr_197 to i64
  store volatile i64 %_new_ptr2int_198, i64* %RBP
  %802 = load i64, i64* %R8_val, !mcsema_real_eip !140
  store i64 %802, i64* %R8, !mcsema_real_eip !140
  %803 = load i64, i64* %R9_val, !mcsema_real_eip !140
  store i64 %803, i64* %R9, !mcsema_real_eip !140
  %804 = load i64, i64* %R10_val, !mcsema_real_eip !140
  store i64 %804, i64* %R10, !mcsema_real_eip !140
  %805 = load i64, i64* %R11_val, !mcsema_real_eip !140
  store i64 %805, i64* %R11, !mcsema_real_eip !140
  %806 = load i64, i64* %R12_val, !mcsema_real_eip !140
  store i64 %806, i64* %R12, !mcsema_real_eip !140
  %807 = load i64, i64* %R13_val, !mcsema_real_eip !140
  store i64 %807, i64* %R13, !mcsema_real_eip !140
  %808 = load i64, i64* %R14_val, !mcsema_real_eip !140
  store i64 %808, i64* %R14, !mcsema_real_eip !140
  %809 = load i64, i64* %R15_val, !mcsema_real_eip !140
  store i64 %809, i64* %R15, !mcsema_real_eip !140
  %810 = load i64, i64* %RIP_val, !mcsema_real_eip !140
  store i64 %810, i64* %RIP, !mcsema_real_eip !140
  %811 = load i1, i1* %CF_val, !mcsema_real_eip !140
  store i1 %811, i1* %CF, align 1, !mcsema_real_eip !140
  %812 = load i1, i1* %PF_val, !mcsema_real_eip !140
  store i1 %812, i1* %PF, align 1, !mcsema_real_eip !140
  %813 = load i1, i1* %AF_val, !mcsema_real_eip !140
  store i1 %813, i1* %AF, align 1, !mcsema_real_eip !140
  %814 = load i1, i1* %ZF_val, !mcsema_real_eip !140
  store i1 %814, i1* %ZF, align 1, !mcsema_real_eip !140
  %815 = load i1, i1* %SF_val, !mcsema_real_eip !140
  store i1 %815, i1* %SF, align 1, !mcsema_real_eip !140
  %816 = load i1, i1* %OF_val, !mcsema_real_eip !140
  store i1 %816, i1* %OF, align 1, !mcsema_real_eip !140
  %817 = load i1, i1* %DF_val, !mcsema_real_eip !140
  store i1 %817, i1* %DF, align 1, !mcsema_real_eip !140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !140
  %818 = load i1, i1* %FPU_B_val, !mcsema_real_eip !140
  store i1 %818, i1* %FPU_B, align 1, !mcsema_real_eip !140
  %819 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !140
  store i1 %819, i1* %FPU_C3, align 1, !mcsema_real_eip !140
  %820 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !140
  store i3 %820, i3* %FPU_TOP, align 1, !mcsema_real_eip !140
  %821 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !140
  store i1 %821, i1* %FPU_C2, align 1, !mcsema_real_eip !140
  %822 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !140
  store i1 %822, i1* %FPU_C1, align 1, !mcsema_real_eip !140
  %823 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !140
  store i1 %823, i1* %FPU_C0, align 1, !mcsema_real_eip !140
  %824 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !140
  store i1 %824, i1* %FPU_ES, align 1, !mcsema_real_eip !140
  %825 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !140
  store i1 %825, i1* %FPU_SF, align 1, !mcsema_real_eip !140
  %826 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !140
  store i1 %826, i1* %FPU_PE, align 1, !mcsema_real_eip !140
  %827 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !140
  store i1 %827, i1* %FPU_UE, align 1, !mcsema_real_eip !140
  %828 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !140
  store i1 %828, i1* %FPU_OE, align 1, !mcsema_real_eip !140
  %829 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !140
  store i1 %829, i1* %FPU_ZE, align 1, !mcsema_real_eip !140
  %830 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !140
  store i1 %830, i1* %FPU_DE, align 1, !mcsema_real_eip !140
  %831 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !140
  store i1 %831, i1* %FPU_IE, align 1, !mcsema_real_eip !140
  %832 = load i1, i1* %FPU_X_val, !mcsema_real_eip !140
  store i1 %832, i1* %FPU_X, align 1, !mcsema_real_eip !140
  %833 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !140
  store i2 %833, i2* %FPU_RC, align 1, !mcsema_real_eip !140
  %834 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !140
  store i2 %834, i2* %FPU_PC, align 1, !mcsema_real_eip !140
  %835 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !140
  store i1 %835, i1* %FPU_PM, align 1, !mcsema_real_eip !140
  %836 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !140
  store i1 %836, i1* %FPU_UM, align 1, !mcsema_real_eip !140
  %837 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !140
  store i1 %837, i1* %FPU_OM, align 1, !mcsema_real_eip !140
  %838 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !140
  store i1 %838, i1* %FPU_ZM, align 1, !mcsema_real_eip !140
  %839 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !140
  store i1 %839, i1* %FPU_DM, align 1, !mcsema_real_eip !140
  %840 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !140
  store i1 %840, i1* %FPU_IM, align 1, !mcsema_real_eip !140
  %_ptr_to_int_912 = ptrtoint i64* %53 to i64
  %_local_end_to_int_913 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_914 = bitcast i64* %53 to i8*
  %_offset_above_rbp_915 = sub i64 %_ptr_to_int_912, %_local_end_to_int_913
  %_pot_address_in_parent_stack_916 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_915
  %_cond1_917 = icmp ugt i8* %_ptr_bt_914, %_local_stack_end_ptr_
  %_cond2_1_918 = icmp ugt i8* %_ptr_bt_914, %_parent_stack_end_ptr_
  %_cond2_2_919 = icmp ult i8* %_ptr_bt_914, %_parent_stack_start_ptr_
  %_cond2_920 = or i1 %_cond2_1_918, %_cond2_2_919
  %_cond4_921 = icmp ule i8* %_pot_address_in_parent_stack_916, %_parent_stack_end_ptr_
  %_cond1_n_cond2_922 = and i1 %_cond1_917, %_cond2_920
  %_cond1_n_cond2_cond3_923 = and i1 %_cond1_n_cond2_922, %_cond4_921
  br i1 %_cond1_n_cond2_cond3_923, label %841, label %842

; <label>:841:                                    ; preds = %791
  %_address_in_parent_stack_924 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_915
  %_address_in_parent_stack_bt_925 = bitcast i8* %_address_in_parent_stack_924 to i64*
  br label %842

; <label>:842:                                    ; preds = %791, %841
  %843 = phi i64* [ %53, %791 ], [ %_address_in_parent_stack_bt_925, %841 ]
  %_new_load_926 = load i64, i64* %843
  store i64 %_new_load_926, i64* %52, align 4
  %844 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !140
  store i16 %844, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !140
  %845 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !140
  store i64 %845, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !140
  %846 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !140
  store i16 %846, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !140
  %847 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !140
  store i64 %847, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !140
  %848 = load i128, i128* %XMM0_val, !mcsema_real_eip !140
  store i128 %848, i128* %XMM0, align 1, !mcsema_real_eip !140
  %849 = load i128, i128* %XMM1_val, !mcsema_real_eip !140
  store i128 %849, i128* %XMM1, align 1, !mcsema_real_eip !140
  %850 = load i128, i128* %XMM2_val, !mcsema_real_eip !140
  store i128 %850, i128* %XMM2, align 1, !mcsema_real_eip !140
  %851 = load i128, i128* %XMM3_val, !mcsema_real_eip !140
  store i128 %851, i128* %XMM3, align 1, !mcsema_real_eip !140
  %852 = load i128, i128* %XMM4_val, !mcsema_real_eip !140
  store i128 %852, i128* %XMM4, align 1, !mcsema_real_eip !140
  %853 = load i128, i128* %XMM5_val, !mcsema_real_eip !140
  store i128 %853, i128* %XMM5, align 1, !mcsema_real_eip !140
  %854 = load i128, i128* %XMM6_val, !mcsema_real_eip !140
  store i128 %854, i128* %XMM6, align 1, !mcsema_real_eip !140
  %855 = load i128, i128* %XMM7_val, !mcsema_real_eip !140
  store i128 %855, i128* %XMM7, align 1, !mcsema_real_eip !140
  %856 = load i128, i128* %XMM8_val, !mcsema_real_eip !140
  store i128 %856, i128* %XMM8, align 1, !mcsema_real_eip !140
  %857 = load i128, i128* %XMM9_val, !mcsema_real_eip !140
  store i128 %857, i128* %XMM9, align 1, !mcsema_real_eip !140
  %858 = load i128, i128* %XMM10_val, !mcsema_real_eip !140
  store i128 %858, i128* %XMM10, align 1, !mcsema_real_eip !140
  %859 = load i128, i128* %XMM11_val, !mcsema_real_eip !140
  store i128 %859, i128* %XMM11, align 1, !mcsema_real_eip !140
  %860 = load i128, i128* %XMM12_val, !mcsema_real_eip !140
  store i128 %860, i128* %XMM12, align 1, !mcsema_real_eip !140
  %861 = load i128, i128* %XMM13_val, !mcsema_real_eip !140
  store i128 %861, i128* %XMM13, align 1, !mcsema_real_eip !140
  %862 = load i128, i128* %XMM14_val, !mcsema_real_eip !140
  store i128 %862, i128* %XMM14, align 1, !mcsema_real_eip !140
  %863 = load i128, i128* %XMM15_val, !mcsema_real_eip !140
  store i128 %863, i128* %XMM15, align 1, !mcsema_real_eip !140
  %864 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !140
  store i64 %864, i64* %STACK_BASE, align 1, !mcsema_real_eip !140
  %865 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !140
  store i64 %865, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !140
  ret void, !mcsema_real_eip !140

block_0x114:                                      ; preds = %955, %block_0x114.preheader
  %_load_rbp_ptr_199 = load i8*, i8** %_RBP_ptr_
  %866 = load i64, i64* %RBP_val, !mcsema_real_eip !141
  %_new_gep_200 = getelementptr i8, i8* %_load_rbp_ptr_199, i64 -80
  %867 = add i64 %866, -80, !mcsema_real_eip !141
  %_allin_new_bt_201 = bitcast i8* %_new_gep_200 to i64*
  %868 = inttoptr i64 %867 to i64*, !mcsema_real_eip !141
  %_ptr_to_int_927 = ptrtoint i64* %_allin_new_bt_201 to i64
  %_local_end_to_int_928 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_929 = bitcast i64* %_allin_new_bt_201 to i8*
  %_offset_above_rbp_930 = sub i64 %_ptr_to_int_927, %_local_end_to_int_928
  %_pot_address_in_parent_stack_931 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_930
  %_cond1_932 = icmp ugt i8* %_ptr_bt_929, %_local_stack_end_ptr_
  %_cond2_1_933 = icmp ugt i8* %_ptr_bt_929, %_parent_stack_end_ptr_
  %_cond2_2_934 = icmp ult i8* %_ptr_bt_929, %_parent_stack_start_ptr_
  %_cond2_935 = or i1 %_cond2_1_933, %_cond2_2_934
  %_cond4_936 = icmp ule i8* %_pot_address_in_parent_stack_931, %_parent_stack_end_ptr_
  %_cond1_n_cond2_937 = and i1 %_cond1_932, %_cond2_935
  %_cond1_n_cond2_cond3_938 = and i1 %_cond1_n_cond2_937, %_cond4_936
  br i1 %_cond1_n_cond2_cond3_938, label %869, label %870

; <label>:869:                                    ; preds = %block_0x114
  %_address_in_parent_stack_939 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_930
  %_address_in_parent_stack_bt_940 = bitcast i8* %_address_in_parent_stack_939 to i64*
  br label %870

; <label>:870:                                    ; preds = %block_0x114, %869
  %871 = phi i64* [ %_allin_new_bt_201, %block_0x114 ], [ %_address_in_parent_stack_bt_940, %869 ]
  %_new_load_941 = load i64, i64* %871
  store i64 %_new_load_941, i64* %RAX_val, !mcsema_real_eip !141
  %_new_gep_202 = getelementptr i8, i8* %_load_rbp_ptr_199, i64 -100
  %872 = add i64 %866, -100, !mcsema_real_eip !142
  %_allin_new_bt_203 = bitcast i8* %_new_gep_202 to i64*
  %873 = inttoptr i64 %872 to i64*, !mcsema_real_eip !142
  %874 = bitcast i64* %_allin_new_bt_203 to i32*
  %_ptr_to_int_942 = ptrtoint i32* %874 to i64
  %_local_end_to_int_943 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_944 = bitcast i32* %874 to i8*
  %_offset_above_rbp_945 = sub i64 %_ptr_to_int_942, %_local_end_to_int_943
  %_pot_address_in_parent_stack_946 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_945
  %_cond1_947 = icmp ugt i8* %_ptr_bt_944, %_local_stack_end_ptr_
  %_cond2_1_948 = icmp ugt i8* %_ptr_bt_944, %_parent_stack_end_ptr_
  %_cond2_2_949 = icmp ult i8* %_ptr_bt_944, %_parent_stack_start_ptr_
  %_cond2_950 = or i1 %_cond2_1_948, %_cond2_2_949
  %_cond4_951 = icmp ule i8* %_pot_address_in_parent_stack_946, %_parent_stack_end_ptr_
  %_cond1_n_cond2_952 = and i1 %_cond1_947, %_cond2_950
  %_cond1_n_cond2_cond3_953 = and i1 %_cond1_n_cond2_952, %_cond4_951
  br i1 %_cond1_n_cond2_cond3_953, label %875, label %876

; <label>:875:                                    ; preds = %870
  %_address_in_parent_stack_954 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_945
  %_address_in_parent_stack_bt_955 = bitcast i8* %_address_in_parent_stack_954 to i32*
  br label %876

; <label>:876:                                    ; preds = %870, %875
  %877 = phi i32* [ %874, %870 ], [ %_address_in_parent_stack_bt_955, %875 ]
  %_new_load_956 = load i32, i32* %877
  %878 = sext i32 %_new_load_956 to i64, !mcsema_real_eip !142
  store i64 %878, i64* %RCX_val, !mcsema_real_eip !142
  %879 = load i64, i64* %RAX_val, !mcsema_real_eip !143
  %880 = shl nsw i64 %878, 2
  %881 = add i64 %880, %879, !mcsema_real_eip !143
  %882 = inttoptr i64 %881 to i64*, !mcsema_real_eip !143
  %883 = bitcast i64* %882 to i32*
  %_ptr_to_int_957 = ptrtoint i32* %883 to i64
  %_local_end_to_int_958 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_959 = bitcast i32* %883 to i8*
  %_offset_above_rbp_960 = sub i64 %_ptr_to_int_957, %_local_end_to_int_958
  %_pot_address_in_parent_stack_961 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_960
  %_cond1_962 = icmp ugt i8* %_ptr_bt_959, %_local_stack_end_ptr_
  %_cond2_1_963 = icmp ugt i8* %_ptr_bt_959, %_parent_stack_end_ptr_
  %_cond2_2_964 = icmp ult i8* %_ptr_bt_959, %_parent_stack_start_ptr_
  %_cond2_965 = or i1 %_cond2_1_963, %_cond2_2_964
  %_cond4_966 = icmp ule i8* %_pot_address_in_parent_stack_961, %_parent_stack_end_ptr_
  %_cond1_n_cond2_967 = and i1 %_cond1_962, %_cond2_965
  %_cond1_n_cond2_cond3_968 = and i1 %_cond1_n_cond2_967, %_cond4_966
  br i1 %_cond1_n_cond2_cond3_968, label %884, label %885

; <label>:884:                                    ; preds = %876
  %_address_in_parent_stack_969 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_960
  %_address_in_parent_stack_bt_970 = bitcast i8* %_address_in_parent_stack_969 to i32*
  br label %885

; <label>:885:                                    ; preds = %876, %884
  %886 = phi i32* [ %883, %876 ], [ %_address_in_parent_stack_bt_970, %884 ]
  %_new_load_971 = load i32, i32* %886
  %887 = zext i32 %_new_load_971 to i64, !mcsema_real_eip !143
  store i64 %887, i64* %RDX_val, !mcsema_real_eip !143
  %_load_rbp_ptr_204 = load i8*, i8** %_RBP_ptr_
  %888 = load i64, i64* %RBP_val, !mcsema_real_eip !144
  %_new_gep_205 = getelementptr i8, i8* %_load_rbp_ptr_204, i64 -84
  %889 = add i64 %888, -84, !mcsema_real_eip !144
  %_allin_new_bt_206 = bitcast i8* %_new_gep_205 to i64*
  %890 = inttoptr i64 %889 to i64*, !mcsema_real_eip !144
  %891 = bitcast i64* %_allin_new_bt_206 to i32*
  %_ptr_to_int_972 = ptrtoint i32* %891 to i64
  %_local_end_to_int_973 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_974 = bitcast i32* %891 to i8*
  %_offset_above_rbp_975 = sub i64 %_ptr_to_int_972, %_local_end_to_int_973
  %_pot_address_in_parent_stack_976 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_975
  %_cond1_977 = icmp ugt i8* %_ptr_bt_974, %_local_stack_end_ptr_
  %_cond2_1_978 = icmp ugt i8* %_ptr_bt_974, %_parent_stack_end_ptr_
  %_cond2_2_979 = icmp ult i8* %_ptr_bt_974, %_parent_stack_start_ptr_
  %_cond2_980 = or i1 %_cond2_1_978, %_cond2_2_979
  %_cond4_981 = icmp ule i8* %_pot_address_in_parent_stack_976, %_parent_stack_end_ptr_
  %_cond1_n_cond2_982 = and i1 %_cond1_977, %_cond2_980
  %_cond1_n_cond2_cond3_983 = and i1 %_cond1_n_cond2_982, %_cond4_981
  br i1 %_cond1_n_cond2_cond3_983, label %892, label %893

; <label>:892:                                    ; preds = %885
  %_address_in_parent_stack_984 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_975
  %_address_in_parent_stack_bt_985 = bitcast i8* %_address_in_parent_stack_984 to i32*
  br label %893

; <label>:893:                                    ; preds = %885, %892
  %894 = phi i32* [ %891, %885 ], [ %_address_in_parent_stack_bt_985, %892 ]
  %_new_load_986 = load i32, i32* %894
  %uadd85 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_971, i32 %_new_load_986)
  %895 = extractvalue { i32, i1 } %uadd85, 0
  %896 = xor i32 %895, %_new_load_986, !mcsema_real_eip !144
  %897 = xor i32 %896, %_new_load_971, !mcsema_real_eip !144
  %898 = and i32 %897, 16, !mcsema_real_eip !144
  %899 = icmp ne i32 %898, 0, !mcsema_real_eip !144
  store i1 %899, i1* %AF_val, !mcsema_real_eip !144
  %900 = icmp slt i32 %895, 0
  store i1 %900, i1* %SF_val, !mcsema_real_eip !144
  %901 = icmp eq i32 %895, 0, !mcsema_real_eip !144
  store i1 %901, i1* %ZF_val, !mcsema_real_eip !144
  %902 = xor i32 %_new_load_971, -2147483648, !mcsema_real_eip !144
  %903 = xor i32 %902, %_new_load_986, !mcsema_real_eip !144
  %904 = and i32 %896, %903, !mcsema_real_eip !144
  %905 = icmp slt i32 %904, 0
  store i1 %905, i1* %OF_val, !mcsema_real_eip !144
  %906 = trunc i32 %895 to i8, !mcsema_real_eip !144
  %907 = tail call i8 @llvm.ctpop.i8(i8 %906), !mcsema_real_eip !144
  %908 = and i8 %907, 1
  %909 = icmp eq i8 %908, 0
  store i1 %909, i1* %PF_val, !mcsema_real_eip !144
  %910 = extractvalue { i32, i1 } %uadd85, 1
  store i1 %910, i1* %CF_val, !mcsema_real_eip !144
  %911 = zext i32 %895 to i64, !mcsema_real_eip !144
  store i64 %911, i64* %RDX_val, !mcsema_real_eip !144
  %_load_rbp_ptr_207 = load i8*, i8** %_RBP_ptr_
  %912 = load i64, i64* %RBP_val, !mcsema_real_eip !145
  %_new_gep_208 = getelementptr i8, i8* %_load_rbp_ptr_207, i64 -84
  %913 = add i64 %912, -84, !mcsema_real_eip !145
  %_allin_new_bt_209 = bitcast i8* %_new_gep_208 to i64*
  %914 = inttoptr i64 %913 to i64*, !mcsema_real_eip !145
  %915 = bitcast i64* %_allin_new_bt_209 to i32*
  store i32 %895, i32* %915, !mcsema_real_eip !145
  %_load_rbp_ptr_210 = load i8*, i8** %_RBP_ptr_
  %916 = load i64, i64* %RBP_val, !mcsema_real_eip !146
  %_new_gep_211 = getelementptr i8, i8* %_load_rbp_ptr_210, i64 -100
  %917 = add i64 %916, -100, !mcsema_real_eip !146
  %_allin_new_bt_212 = bitcast i8* %_new_gep_211 to i64*
  %918 = inttoptr i64 %917 to i64*, !mcsema_real_eip !146
  %919 = bitcast i64* %_allin_new_bt_212 to i32*
  %_ptr_to_int_987 = ptrtoint i32* %919 to i64
  %_local_end_to_int_988 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_989 = bitcast i32* %919 to i8*
  %_offset_above_rbp_990 = sub i64 %_ptr_to_int_987, %_local_end_to_int_988
  %_pot_address_in_parent_stack_991 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_990
  %_cond1_992 = icmp ugt i8* %_ptr_bt_989, %_local_stack_end_ptr_
  %_cond2_1_993 = icmp ugt i8* %_ptr_bt_989, %_parent_stack_end_ptr_
  %_cond2_2_994 = icmp ult i8* %_ptr_bt_989, %_parent_stack_start_ptr_
  %_cond2_995 = or i1 %_cond2_1_993, %_cond2_2_994
  %_cond4_996 = icmp ule i8* %_pot_address_in_parent_stack_991, %_parent_stack_end_ptr_
  %_cond1_n_cond2_997 = and i1 %_cond1_992, %_cond2_995
  %_cond1_n_cond2_cond3_998 = and i1 %_cond1_n_cond2_997, %_cond4_996
  br i1 %_cond1_n_cond2_cond3_998, label %920, label %921

; <label>:920:                                    ; preds = %893
  %_address_in_parent_stack_999 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_990
  %_address_in_parent_stack_bt_1000 = bitcast i8* %_address_in_parent_stack_999 to i32*
  br label %921

; <label>:921:                                    ; preds = %893, %920
  %922 = phi i32* [ %919, %893 ], [ %_address_in_parent_stack_bt_1000, %920 ]
  %_new_load_1001 = load i32, i32* %922
  %uadd86 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_1001, i32 1)
  %923 = extractvalue { i32, i1 } %uadd86, 0
  %924 = xor i32 %923, %_new_load_1001, !mcsema_real_eip !147
  %925 = and i32 %924, 16, !mcsema_real_eip !147
  %926 = icmp ne i32 %925, 0, !mcsema_real_eip !147
  store i1 %926, i1* %AF_val, !mcsema_real_eip !147
  %927 = icmp slt i32 %923, 0
  store i1 %927, i1* %SF_val, !mcsema_real_eip !147
  %928 = icmp eq i32 %923, 0, !mcsema_real_eip !147
  store i1 %928, i1* %ZF_val, !mcsema_real_eip !147
  %929 = xor i32 %_new_load_1001, -2147483648, !mcsema_real_eip !147
  %930 = and i32 %924, %929, !mcsema_real_eip !147
  %931 = icmp slt i32 %930, 0
  store i1 %931, i1* %OF_val, !mcsema_real_eip !147
  %932 = trunc i32 %923 to i8, !mcsema_real_eip !147
  %933 = tail call i8 @llvm.ctpop.i8(i8 %932), !mcsema_real_eip !147
  %934 = and i8 %933, 1
  %935 = icmp eq i8 %934, 0
  store i1 %935, i1* %PF_val, !mcsema_real_eip !147
  %936 = extractvalue { i32, i1 } %uadd86, 1
  store i1 %936, i1* %CF_val, !mcsema_real_eip !147
  %937 = zext i32 %923 to i64, !mcsema_real_eip !147
  store i64 %937, i64* %RAX_val, !mcsema_real_eip !147
  %_load_rbp_ptr_213 = load i8*, i8** %_RBP_ptr_
  %938 = load i64, i64* %RBP_val, !mcsema_real_eip !148
  %_new_gep_214 = getelementptr i8, i8* %_load_rbp_ptr_213, i64 -100
  %939 = add i64 %938, -100, !mcsema_real_eip !148
  %_allin_new_bt_215 = bitcast i8* %_new_gep_214 to i64*
  %940 = inttoptr i64 %939 to i64*, !mcsema_real_eip !148
  %941 = bitcast i64* %_allin_new_bt_215 to i32*
  store i32 %923, i32* %941, !mcsema_real_eip !148
  %_load_rbp_ptr_216 = load i8*, i8** %_RBP_ptr_
  %942 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_217 = getelementptr i8, i8* %_load_rbp_ptr_216, i64 -100
  %943 = add i64 %942, -100, !mcsema_real_eip !126
  %_allin_new_bt_218 = bitcast i8* %_new_gep_217 to i64*
  %944 = inttoptr i64 %943 to i64*, !mcsema_real_eip !126
  %945 = bitcast i64* %_allin_new_bt_218 to i32*
  %_ptr_to_int_1002 = ptrtoint i32* %945 to i64
  %_local_end_to_int_1003 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_1004 = bitcast i32* %945 to i8*
  %_offset_above_rbp_1005 = sub i64 %_ptr_to_int_1002, %_local_end_to_int_1003
  %_pot_address_in_parent_stack_1006 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1005
  %_cond1_1007 = icmp ugt i8* %_ptr_bt_1004, %_local_stack_end_ptr_
  %_cond2_1_1008 = icmp ugt i8* %_ptr_bt_1004, %_parent_stack_end_ptr_
  %_cond2_2_1009 = icmp ult i8* %_ptr_bt_1004, %_parent_stack_start_ptr_
  %_cond2_1010 = or i1 %_cond2_1_1008, %_cond2_2_1009
  %_cond4_1011 = icmp ule i8* %_pot_address_in_parent_stack_1006, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1012 = and i1 %_cond1_1007, %_cond2_1010
  %_cond1_n_cond2_cond3_1013 = and i1 %_cond1_n_cond2_1012, %_cond4_1011
  br i1 %_cond1_n_cond2_cond3_1013, label %946, label %947

; <label>:946:                                    ; preds = %921
  %_address_in_parent_stack_1014 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1005
  %_address_in_parent_stack_bt_1015 = bitcast i8* %_address_in_parent_stack_1014 to i32*
  br label %947

; <label>:947:                                    ; preds = %921, %946
  %948 = phi i32* [ %945, %921 ], [ %_address_in_parent_stack_bt_1015, %946 ]
  %_new_load_1016 = load i32, i32* %948
  %949 = zext i32 %_new_load_1016 to i64, !mcsema_real_eip !126
  store i64 %949, i64* %RAX_val, !mcsema_real_eip !126
  %_load_rbp_ptr_219 = load i8*, i8** %_RBP_ptr_
  %950 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_220 = getelementptr i8, i8* %_load_rbp_ptr_219, i64 -48
  %951 = add i64 %950, -48, !mcsema_real_eip !127
  %_allin_new_bt_221 = bitcast i8* %_new_gep_220 to i64*
  %952 = inttoptr i64 %951 to i64*, !mcsema_real_eip !127
  %953 = bitcast i64* %_allin_new_bt_221 to i32*
  %_ptr_to_int_1017 = ptrtoint i32* %953 to i64
  %_local_end_to_int_1018 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_1019 = bitcast i32* %953 to i8*
  %_offset_above_rbp_1020 = sub i64 %_ptr_to_int_1017, %_local_end_to_int_1018
  %_pot_address_in_parent_stack_1021 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1020
  %_cond1_1022 = icmp ugt i8* %_ptr_bt_1019, %_local_stack_end_ptr_
  %_cond2_1_1023 = icmp ugt i8* %_ptr_bt_1019, %_parent_stack_end_ptr_
  %_cond2_2_1024 = icmp ult i8* %_ptr_bt_1019, %_parent_stack_start_ptr_
  %_cond2_1025 = or i1 %_cond2_1_1023, %_cond2_2_1024
  %_cond4_1026 = icmp ule i8* %_pot_address_in_parent_stack_1021, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1027 = and i1 %_cond1_1022, %_cond2_1025
  %_cond1_n_cond2_cond3_1028 = and i1 %_cond1_n_cond2_1027, %_cond4_1026
  br i1 %_cond1_n_cond2_cond3_1028, label %954, label %955

; <label>:954:                                    ; preds = %947
  %_address_in_parent_stack_1029 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1020
  %_address_in_parent_stack_bt_1030 = bitcast i8* %_address_in_parent_stack_1029 to i32*
  br label %955

; <label>:955:                                    ; preds = %947, %954
  %956 = phi i32* [ %953, %947 ], [ %_address_in_parent_stack_bt_1030, %954 ]
  %_new_load_1031 = load i32, i32* %956
  %957 = sub i32 %_new_load_1016, %_new_load_1031, !mcsema_real_eip !127
  %958 = xor i32 %957, %_new_load_1016, !mcsema_real_eip !127
  %959 = xor i32 %958, %_new_load_1031, !mcsema_real_eip !127
  %960 = and i32 %959, 16, !mcsema_real_eip !127
  %961 = icmp ne i32 %960, 0, !mcsema_real_eip !127
  store i1 %961, i1* %AF_val, !mcsema_real_eip !127
  %962 = trunc i32 %957 to i8, !mcsema_real_eip !127
  %963 = tail call i8 @llvm.ctpop.i8(i8 %962), !mcsema_real_eip !127
  %964 = and i8 %963, 1
  %965 = icmp eq i8 %964, 0
  store i1 %965, i1* %PF_val, !mcsema_real_eip !127
  %966 = icmp eq i32 %_new_load_1016, %_new_load_1031
  store i1 %966, i1* %ZF_val, !mcsema_real_eip !127
  %967 = icmp slt i32 %957, 0
  store i1 %967, i1* %SF_val, !mcsema_real_eip !127
  %968 = icmp ult i32 %_new_load_1016, %_new_load_1031, !mcsema_real_eip !127
  store i1 %968, i1* %CF_val, !mcsema_real_eip !127
  %969 = xor i32 %_new_load_1031, %_new_load_1016, !mcsema_real_eip !127
  %970 = and i32 %958, %969, !mcsema_real_eip !127
  %971 = icmp slt i32 %970, 0
  store i1 %971, i1* %OF_val, !mcsema_real_eip !127
  %972 = load i1, i1* %SF_val, !mcsema_real_eip !128
  %tmp87 = xor i1 %972, %971
  br i1 %tmp87, label %block_0x114, label %block_0x133.loopexit, !mcsema_real_eip !128
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 320, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 321, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 324, [12 x i8] c"\09pushq\09%r14\00"}
!5 = !{i64 326, [12 x i8] c"\09pushq\09%rbx\00"}
!6 = !{i64 327, [17 x i8] c"\09subq\09$144, %rsp\00"}
!7 = !{i64 334, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!8 = !{i64 341, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!9 = !{i64 348, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!10 = !{i64 355, [21 x i8] c"\09cmpl\09$10, -68(%rbp)\00"}
!11 = !{i64 359, [8 x i8] c"\09jge\0928\00"}
!12 = !{i64 398, [17 x i8] c"\09movl\09%eax, %edi\00"}
!13 = !{i64 400, [22 x i8] c"\09leaq\09-24(%rbp), %rcx\00"}
!14 = !{i64 404, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!15 = !{i64 408, [9 x i8] c"\09callq\090\00"}
!16 = !{i64 413, [22 x i8] c"\09movq\09%rax, -88(%rbp)\00"}
!17 = !{i64 417, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!18 = !{i64 424, [21 x i8] c"\09cmpl\09$10, -92(%rbp)\00"}
!19 = !{i64 428, [8 x i8] c"\09jge\0931\00"}
!20 = !{i64 365, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!21 = !{i64 368, [15 x i8] c"\09addl\09$1, %eax\00"}
!22 = !{i64 371, [24 x i8] c"\09movslq\09-68(%rbp), %rcx\00"}
!23 = !{i64 375, [29 x i8] c"\09movl\09%eax, -64(%rbp,%rcx,4)\00"}
!24 = !{i64 379, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!25 = !{i64 382, [15 x i8] c"\09addl\09$1, %eax\00"}
!26 = !{i64 385, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!27 = !{i64 465, [16 x i8] c"\09movl\09$10, %eax\00"}
!28 = !{i64 470, [22 x i8] c"\09leaq\09-64(%rbp), %rcx\00"}
!29 = !{i64 474, [22 x i8] c"\09movl\09-24(%rbp), %edi\00"}
!30 = !{i64 477, [22 x i8] c"\09movq\09-80(%rbp), %rdx\00"}
!31 = !{i64 481, [22 x i8] c"\09movq\09-88(%rbp), %rsi\00"}
!32 = !{i64 485, [22 x i8] c"\09movl\09-24(%rbp), %r8d\00"}
!33 = !{i64 489, [21 x i8] c"\09movq\09-80(%rbp), %r9\00"}
!34 = !{i64 493, [22 x i8] c"\09movq\09-88(%rbp), %r10\00"}
!35 = !{i64 497, [23 x i8] c"\09movq\09%rsi, -104(%rbp)\00"}
!36 = !{i64 501, [17 x i8] c"\09movq\09%rcx, %rsi\00"}
!37 = !{i64 504, [23 x i8] c"\09movq\09-104(%rbp), %r11\00"}
!38 = !{i64 508, [23 x i8] c"\09movq\09%rcx, -112(%rbp)\00"}
!39 = !{i64 512, [17 x i8] c"\09movq\09%r11, %rcx\00"}
!40 = !{i64 515, [23 x i8] c"\09movl\09%r8d, -116(%rbp)\00"}
!41 = !{i64 519, [17 x i8] c"\09movl\09%eax, %r8d\00"}
!42 = !{i64 522, [22 x i8] c"\09movq\09%r9, -128(%rbp)\00"}
!43 = !{i64 526, [17 x i8] c"\09movl\09%eax, %r9d\00"}
!44 = !{i64 529, [23 x i8] c"\09movl\09-116(%rbp), %eax\00"}
!45 = !{i64 532, [19 x i8] c"\09movl\09%eax, (%rsp)\00"}
!46 = !{i64 535, [23 x i8] c"\09movq\09-112(%rbp), %rbx\00"}
!47 = !{i64 539, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!48 = !{i64 544, [23 x i8] c"\09movq\09-128(%rbp), %r14\00"}
!49 = !{i64 548, [21 x i8] c"\09movq\09%r14, 16(%rsp)\00"}
!50 = !{i64 553, [21 x i8] c"\09movq\09%r10, 24(%rsp)\00"}
!51 = !{i64 558, [12 x i8] c"\09callq\09-563\00"}
!52 = !{i64 563, [17 x i8] c"\09addq\09$144, %rsp\00"}
!53 = !{i64 570, [11 x i8] c"\09popq\09%rbx\00"}
!54 = !{i64 571, [11 x i8] c"\09popq\09%r14\00"}
!55 = !{i64 573, [11 x i8] c"\09popq\09%rbp\00"}
!56 = !{i64 574, [6 x i8] c"\09retq\00"}
!57 = !{i64 434, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!58 = !{i64 437, [15 x i8] c"\09addl\09$1, %eax\00"}
!59 = !{i64 440, [22 x i8] c"\09movq\09-88(%rbp), %rcx\00"}
!60 = !{i64 444, [24 x i8] c"\09movslq\09-92(%rbp), %rdx\00"}
!61 = !{i64 448, [26 x i8] c"\09movl\09%eax, (%rcx,%rdx,4)\00"}
!62 = !{i64 451, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!63 = !{i64 454, [15 x i8] c"\09addl\09$1, %eax\00"}
!64 = !{i64 457, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!65 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!66 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!67 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!68 = !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!69 = !{i64 9, [21 x i8] c"\09movq\0932(%rbp), %r10\00"}
!70 = !{i64 13, [21 x i8] c"\09movq\0924(%rbp), %r11\00"}
!71 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!72 = !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!73 = !{i64 23, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!74 = !{i64 27, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!75 = !{i64 31, [22 x i8] c"\09movq\09%rcx, -40(%rbp)\00"}
!76 = !{i64 35, [22 x i8] c"\09movl\09%r8d, -44(%rbp)\00"}
!77 = !{i64 39, [22 x i8] c"\09movl\09%r9d, -48(%rbp)\00"}
!78 = !{i64 43, [22 x i8] c"\09movl\09%ebx, -52(%rbp)\00"}
!79 = !{i64 46, [22 x i8] c"\09movq\09%r11, -64(%rbp)\00"}
!80 = !{i64 50, [22 x i8] c"\09movq\09%r10, -72(%rbp)\00"}
!81 = !{i64 54, [22 x i8] c"\09movq\09%rax, -80(%rbp)\00"}
!82 = !{i64 58, [20 x i8] c"\09movl\09$0, -84(%rbp)\00"}
!83 = !{i64 65, [22 x i8] c"\09movl\09-12(%rbp), %edi\00"}
!84 = !{i64 68, [22 x i8] c"\09addl\09-84(%rbp), %edi\00"}
!85 = !{i64 71, [22 x i8] c"\09movl\09%edi, -84(%rbp)\00"}
!86 = !{i64 74, [20 x i8] c"\09movl\09$0, -88(%rbp)\00"}
!87 = !{i64 81, [22 x i8] c"\09movl\09-88(%rbp), %eax\00"}
!88 = !{i64 84, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!89 = !{i64 87, [8 x i8] c"\09jge\0931\00"}
!90 = !{i64 124, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!91 = !{i64 128, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!92 = !{i64 130, [22 x i8] c"\09addl\09-84(%rbp), %ecx\00"}
!93 = !{i64 133, [22 x i8] c"\09movl\09%ecx, -84(%rbp)\00"}
!94 = !{i64 136, [20 x i8] c"\09movl\09$0, -92(%rbp)\00"}
!95 = !{i64 143, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!96 = !{i64 146, [22 x i8] c"\09cmpl\09-48(%rbp), %eax\00"}
!97 = !{i64 149, [8 x i8] c"\09jge\0931\00"}
!98 = !{i64 93, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!99 = !{i64 97, [24 x i8] c"\09movslq\09-88(%rbp), %rcx\00"}
!100 = !{i64 101, [26 x i8] c"\09movl\09(%rax,%rcx,4), %edx\00"}
!101 = !{i64 104, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!102 = !{i64 107, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!103 = !{i64 110, [22 x i8] c"\09movl\09-88(%rbp), %eax\00"}
!104 = !{i64 113, [15 x i8] c"\09addl\09$1, %eax\00"}
!105 = !{i64 116, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!106 = !{i64 186, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!107 = !{i64 189, [22 x i8] c"\09addl\09-84(%rbp), %eax\00"}
!108 = !{i64 192, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!109 = !{i64 195, [20 x i8] c"\09movl\09$0, -96(%rbp)\00"}
!110 = !{i64 202, [22 x i8] c"\09movl\09-96(%rbp), %eax\00"}
!111 = !{i64 205, [22 x i8] c"\09cmpl\09-44(%rbp), %eax\00"}
!112 = !{i64 208, [8 x i8] c"\09jge\0931\00"}
!113 = !{i64 155, [22 x i8] c"\09movq\09-40(%rbp), %rax\00"}
!114 = !{i64 159, [24 x i8] c"\09movslq\09-92(%rbp), %rcx\00"}
!115 = !{i64 163, [26 x i8] c"\09movl\09(%rax,%rcx,4), %edx\00"}
!116 = !{i64 166, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!117 = !{i64 169, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!118 = !{i64 172, [22 x i8] c"\09movl\09-92(%rbp), %eax\00"}
!119 = !{i64 175, [15 x i8] c"\09addl\09$1, %eax\00"}
!120 = !{i64 178, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!121 = !{i64 245, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!122 = !{i64 249, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!123 = !{i64 251, [22 x i8] c"\09addl\09-84(%rbp), %ecx\00"}
!124 = !{i64 254, [22 x i8] c"\09movl\09%ecx, -84(%rbp)\00"}
!125 = !{i64 257, [21 x i8] c"\09movl\09$0, -100(%rbp)\00"}
!126 = !{i64 264, [23 x i8] c"\09movl\09-100(%rbp), %eax\00"}
!127 = !{i64 267, [22 x i8] c"\09cmpl\09-48(%rbp), %eax\00"}
!128 = !{i64 270, [8 x i8] c"\09jge\0931\00"}
!129 = !{i64 214, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!130 = !{i64 218, [24 x i8] c"\09movslq\09-96(%rbp), %rcx\00"}
!131 = !{i64 222, [26 x i8] c"\09movl\09(%rax,%rcx,4), %edx\00"}
!132 = !{i64 225, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!133 = !{i64 228, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!134 = !{i64 231, [22 x i8] c"\09movl\09-96(%rbp), %eax\00"}
!135 = !{i64 234, [15 x i8] c"\09addl\09$1, %eax\00"}
!136 = !{i64 237, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!137 = !{i64 307, [22 x i8] c"\09movl\09-84(%rbp), %eax\00"}
!138 = !{i64 310, [11 x i8] c"\09popq\09%rbx\00"}
!139 = !{i64 311, [11 x i8] c"\09popq\09%rbp\00"}
!140 = !{i64 312, [6 x i8] c"\09retq\00"}
!141 = !{i64 276, [22 x i8] c"\09movq\09-80(%rbp), %rax\00"}
!142 = !{i64 280, [25 x i8] c"\09movslq\09-100(%rbp), %rcx\00"}
!143 = !{i64 284, [26 x i8] c"\09movl\09(%rax,%rcx,4), %edx\00"}
!144 = !{i64 287, [22 x i8] c"\09addl\09-84(%rbp), %edx\00"}
!145 = !{i64 290, [22 x i8] c"\09movl\09%edx, -84(%rbp)\00"}
!146 = !{i64 293, [23 x i8] c"\09movl\09-100(%rbp), %eax\00"}
!147 = !{i64 296, [15 x i8] c"\09addl\09$1, %eax\00"}
!148 = !{i64 299, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
