; ModuleID = 'Output/test_25.clang.trans.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -40
  %82 = add i64 %79, -40
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 32
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !4
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
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %100 = add i64 %99, -8, !mcsema_real_eip !6
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !6
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !6
  %104 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %106 = add i64 %105, -16, !mcsema_real_eip !7
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !7
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !7
  store i64 %108, i64* %_allin_new_bt_18, !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %110 = add i64 %109, -20, !mcsema_real_eip !8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !8
  %112 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 0, i32* %112, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %114 = add i64 %113, -16, !mcsema_real_eip !9
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !9
  %116 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  store i64 %116, i64* %RSI_val, !mcsema_real_eip !9
  %117 = add i64 %116, 8, !mcsema_real_eip !10
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !10
  %119 = load i64, i64* %118, !mcsema_real_eip !10
  store i64 %119, i64* %RDI_val, !mcsema_real_eip !10
  %120 = tail call x86_64_sysvcc i64 @strlen(i64 %119), !mcsema_real_eip !11
  store i64 %120, i64* %RAX_val, !mcsema_real_eip !11
  %121 = and i64 %120, 4294967295
  store i64 %121, i64* %RCX_val, !mcsema_real_eip !12
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %123 = add i64 %122, -24, !mcsema_real_eip !13
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !13
  %125 = trunc i64 %120 to i32, !mcsema_real_eip !13
  %126 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !13
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -28
  %128 = add i64 %127, -28, !mcsema_real_eip !14
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !14
  %130 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 0, i32* %130, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %entry
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -28
  %132 = add i64 %131, -28, !mcsema_real_eip !15
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !15
  %134 = bitcast i64* %_allin_new_bt_33 to i32*
  %135 = load i32, i32* %134, !mcsema_real_eip !15
  %136 = zext i32 %135 to i64, !mcsema_real_eip !15
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !15
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %138 = add i64 %137, -24, !mcsema_real_eip !16
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !16
  %140 = bitcast i64* %_allin_new_bt_36 to i32*
  %141 = load i32, i32* %140, !mcsema_real_eip !16
  %142 = sub i32 %135, %141, !mcsema_real_eip !16
  %143 = xor i32 %142, %135, !mcsema_real_eip !16
  %144 = xor i32 %143, %141, !mcsema_real_eip !16
  %145 = and i32 %144, 16, !mcsema_real_eip !16
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !16
  store i1 %146, i1* %AF_val, !mcsema_real_eip !16
  %147 = trunc i32 %142 to i8, !mcsema_real_eip !16
  %148 = tail call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !16
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF_val, !mcsema_real_eip !16
  %151 = icmp eq i32 %135, %141
  store i1 %151, i1* %ZF_val, !mcsema_real_eip !16
  %152 = icmp slt i32 %142, 0
  store i1 %152, i1* %SF_val, !mcsema_real_eip !16
  %153 = icmp ult i32 %135, %141, !mcsema_real_eip !16
  store i1 %153, i1* %CF_val, !mcsema_real_eip !16
  %154 = xor i32 %141, %135, !mcsema_real_eip !16
  %155 = and i32 %143, %154, !mcsema_real_eip !16
  %156 = icmp slt i32 %155, 0
  store i1 %156, i1* %OF_val, !mcsema_real_eip !16
  %157 = load i1, i1* %SF_val, !mcsema_real_eip !17
  %tmp = xor i1 %157, %156
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  br i1 %tmp, label %block_0x42, label %block_0x6a, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -28
  %159 = add i64 %158, -28, !mcsema_real_eip !19
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !19
  %161 = bitcast i64* %_allin_new_bt_39 to i32*
  %162 = load i32, i32* %161, !mcsema_real_eip !19
  %163 = sext i32 %162 to i64, !mcsema_real_eip !19
  store i64 %163, i64* %RAX_val, !mcsema_real_eip !19
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -16
  %165 = add i64 %164, -16, !mcsema_real_eip !20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !20
  %167 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !20
  store i64 %167, i64* %RCX_val, !mcsema_real_eip !20
  %168 = add i64 %167, 8, !mcsema_real_eip !21
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !21
  %170 = load i64, i64* %169, !mcsema_real_eip !21
  store i64 %170, i64* %RCX_val, !mcsema_real_eip !21
  %171 = load i64, i64* %RAX_val, !mcsema_real_eip !22
  %172 = add i64 %171, %170, !mcsema_real_eip !22
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !22
  %174 = bitcast i64* %173 to i8*
  %175 = load i8, i8* %174, !mcsema_real_eip !22
  %176 = sext i8 %175 to i32, !mcsema_real_eip !22
  %177 = zext i32 %176 to i64, !mcsema_real_eip !22
  store i64 %177, i64* %RDX_val, !mcsema_real_eip !22
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %179 = add i64 %178, -20, !mcsema_real_eip !23
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !23
  %181 = bitcast i64* %_allin_new_bt_45 to i32*
  %182 = load i32, i32* %181, !mcsema_real_eip !23
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %176, i32 %182)
  %183 = extractvalue { i32, i1 } %uadd, 0
  %184 = xor i32 %183, %182, !mcsema_real_eip !24
  %185 = xor i32 %184, %176, !mcsema_real_eip !24
  %186 = and i32 %185, 16, !mcsema_real_eip !24
  %187 = icmp ne i32 %186, 0, !mcsema_real_eip !24
  store i1 %187, i1* %AF_val, !mcsema_real_eip !24
  %188 = icmp slt i32 %183, 0
  store i1 %188, i1* %SF_val, !mcsema_real_eip !24
  %189 = icmp eq i32 %183, 0, !mcsema_real_eip !24
  store i1 %189, i1* %ZF_val, !mcsema_real_eip !24
  %190 = xor i32 %182, -2147483648, !mcsema_real_eip !24
  %191 = xor i32 %190, %176, !mcsema_real_eip !24
  %192 = and i32 %184, %191, !mcsema_real_eip !24
  %193 = icmp slt i32 %192, 0
  store i1 %193, i1* %OF_val, !mcsema_real_eip !24
  %194 = trunc i32 %183 to i8, !mcsema_real_eip !24
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !24
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF_val, !mcsema_real_eip !24
  %198 = extractvalue { i32, i1 } %uadd, 1
  store i1 %198, i1* %CF_val, !mcsema_real_eip !24
  %199 = zext i32 %183 to i64, !mcsema_real_eip !24
  store i64 %199, i64* %RSI_val, !mcsema_real_eip !24
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -20
  %201 = add i64 %200, -20, !mcsema_real_eip !25
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !25
  %203 = bitcast i64* %_allin_new_bt_48 to i32*
  store i32 %183, i32* %203, !mcsema_real_eip !25
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -28
  %205 = add i64 %204, -28, !mcsema_real_eip !26
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !26
  %207 = bitcast i64* %_allin_new_bt_51 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !26
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 1)
  %209 = extractvalue { i32, i1 } %uadd71, 0
  %210 = xor i32 %209, %208, !mcsema_real_eip !27
  %211 = and i32 %210, 16, !mcsema_real_eip !27
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !27
  store i1 %212, i1* %AF_val, !mcsema_real_eip !27
  %213 = icmp slt i32 %209, 0
  store i1 %213, i1* %SF_val, !mcsema_real_eip !27
  %214 = icmp eq i32 %209, 0, !mcsema_real_eip !27
  store i1 %214, i1* %ZF_val, !mcsema_real_eip !27
  %215 = xor i32 %208, -2147483648, !mcsema_real_eip !27
  %216 = and i32 %210, %215, !mcsema_real_eip !27
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF_val, !mcsema_real_eip !27
  %218 = trunc i32 %209 to i8, !mcsema_real_eip !27
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !27
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF_val, !mcsema_real_eip !27
  %222 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %222, i1* %CF_val, !mcsema_real_eip !27
  %223 = zext i32 %209 to i64, !mcsema_real_eip !27
  store i64 %223, i64* %RAX_val, !mcsema_real_eip !27
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %224 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -28
  %225 = add i64 %224, -28, !mcsema_real_eip !28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !28
  %227 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 %209, i32* %227, !mcsema_real_eip !28
  br label %block_0x36, !mcsema_real_eip !29

block_0x6a:                                       ; preds = %block_0x36
  %228 = phi i8* [ %_load_rbp_ptr_37, %block_0x36 ]
  %.lcssa = phi i64 [ %158, %block_0x36 ]
  %_new_gep_55 = getelementptr i8, i8* %228, i64 -24
  %229 = add i64 %.lcssa, -24, !mcsema_real_eip !18
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !18
  %231 = bitcast i64* %_allin_new_bt_56 to i32*
  %232 = load i32, i32* %231, !mcsema_real_eip !18
  %233 = zext i32 %232 to i64, !mcsema_real_eip !18
  store i64 %233, i64* %RAX_val, !mcsema_real_eip !18
  %_load_rsp_ptr_57 = load i8*, i8** %_RSP_ptr_
  %234 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %_new_ptr2int_58 = ptrtoint i8* %_load_rsp_ptr_57 to i64
  %uadd72 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_58, i64 32)
  %235 = extractvalue { i64, i1 } %uadd72, 0
  %236 = xor i64 %235, %_new_ptr2int_58, !mcsema_real_eip !30
  %237 = and i64 %236, 16, !mcsema_real_eip !30
  %238 = icmp ne i64 %237, 0, !mcsema_real_eip !30
  store i1 %238, i1* %AF_val, !mcsema_real_eip !30
  %239 = icmp slt i64 %235, 0
  store i1 %239, i1* %SF_val, !mcsema_real_eip !30
  %240 = icmp eq i64 %235, 0, !mcsema_real_eip !30
  store i1 %240, i1* %ZF_val, !mcsema_real_eip !30
  %241 = xor i64 %_new_ptr2int_58, -9223372036854775808, !mcsema_real_eip !30
  %242 = and i64 %236, %241, !mcsema_real_eip !30
  %243 = icmp slt i64 %242, 0
  store i1 %243, i1* %OF_val, !mcsema_real_eip !30
  %244 = trunc i64 %235 to i8, !mcsema_real_eip !30
  %245 = tail call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !30
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  store i1 %247, i1* %PF_val, !mcsema_real_eip !30
  %248 = extractvalue { i64, i1 } %uadd72, 1
  store i1 %248, i1* %CF_val, !mcsema_real_eip !30
  %_new_int2ptr_ = inttoptr i64 %235 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %235, i64* %RSP_val, !mcsema_real_eip !30
  %249 = inttoptr i64 %235 to i64*, !mcsema_real_eip !31
  %250 = load i64, i64* %249, !mcsema_real_eip !31
  %_new_int2ptr_59 = inttoptr i64 %250 to i8*
  store volatile i8* %_new_int2ptr_59, i8** %_RBP_ptr_
  store i64 %250, i64* %RBP_val, !mcsema_real_eip !31
  %251 = add i64 %235, 16, !mcsema_real_eip !32
  %_new_int2ptr_60 = inttoptr i64 %251 to i8*
  store volatile i8* %_new_int2ptr_60, i8** %_RSP_ptr_
  store i64 %251, i64* %RSP_val, !mcsema_real_eip !32
  %252 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  store i64 %252, i64* %RAX, !mcsema_real_eip !32
  %253 = load i64, i64* %RBX_val, !mcsema_real_eip !32
  store i64 %253, i64* %RBX, !mcsema_real_eip !32
  %254 = load i64, i64* %RCX_val, !mcsema_real_eip !32
  store i64 %254, i64* %RCX, !mcsema_real_eip !32
  %255 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  store i64 %255, i64* %RDX, !mcsema_real_eip !32
  %256 = load i64, i64* %RSI_val, !mcsema_real_eip !32
  store i64 %256, i64* %RSI, !mcsema_real_eip !32
  %257 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  store i64 %257, i64* %RDI, !mcsema_real_eip !32
  %_load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_
  %258 = load i64, i64* %RSP_val, !mcsema_real_eip !32
  %_new_ptr2int_62 = ptrtoint i8* %_load_rsp_ptr_61 to i64
  store volatile i64 %_new_ptr2int_62, i64* %RSP
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %259 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_ptr2int_64 = ptrtoint i8* %_load_rbp_ptr_63 to i64
  store volatile i64 %_new_ptr2int_64, i64* %RBP
  %260 = load i64, i64* %R8_val, !mcsema_real_eip !32
  store i64 %260, i64* %R8, !mcsema_real_eip !32
  %261 = load i64, i64* %R9_val, !mcsema_real_eip !32
  store i64 %261, i64* %R9, !mcsema_real_eip !32
  %262 = load i64, i64* %R10_val, !mcsema_real_eip !32
  store i64 %262, i64* %R10, !mcsema_real_eip !32
  %263 = load i64, i64* %R11_val, !mcsema_real_eip !32
  store i64 %263, i64* %R11, !mcsema_real_eip !32
  %264 = load i64, i64* %R12_val, !mcsema_real_eip !32
  store i64 %264, i64* %R12, !mcsema_real_eip !32
  %265 = load i64, i64* %R13_val, !mcsema_real_eip !32
  store i64 %265, i64* %R13, !mcsema_real_eip !32
  %266 = load i64, i64* %R14_val, !mcsema_real_eip !32
  store i64 %266, i64* %R14, !mcsema_real_eip !32
  %267 = load i64, i64* %R15_val, !mcsema_real_eip !32
  store i64 %267, i64* %R15, !mcsema_real_eip !32
  %268 = load i64, i64* %RIP_val, !mcsema_real_eip !32
  store i64 %268, i64* %RIP, !mcsema_real_eip !32
  %269 = load i1, i1* %CF_val, !mcsema_real_eip !32
  store i1 %269, i1* %CF, align 1, !mcsema_real_eip !32
  %270 = load i1, i1* %PF_val, !mcsema_real_eip !32
  store i1 %270, i1* %PF, align 1, !mcsema_real_eip !32
  %271 = load i1, i1* %AF_val, !mcsema_real_eip !32
  store i1 %271, i1* %AF, align 1, !mcsema_real_eip !32
  %272 = load i1, i1* %ZF_val, !mcsema_real_eip !32
  store i1 %272, i1* %ZF, align 1, !mcsema_real_eip !32
  %273 = load i1, i1* %SF_val, !mcsema_real_eip !32
  store i1 %273, i1* %SF, align 1, !mcsema_real_eip !32
  %274 = load i1, i1* %OF_val, !mcsema_real_eip !32
  store i1 %274, i1* %OF, align 1, !mcsema_real_eip !32
  %275 = load i1, i1* %DF_val, !mcsema_real_eip !32
  store i1 %275, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %276 = load i1, i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %276, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %277 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %277, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %278 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %278, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %279 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %279, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %280 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %280, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %281 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %281, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %282 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %282, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %283 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %283, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %284 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %284, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %285 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %285, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %286 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %286, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %287 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %287, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %288 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %288, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %289 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %289, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %290 = load i1, i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %290, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %291 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %291, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %292 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %292, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %293 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %293, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %294 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %294, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %295 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %295, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %296 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %296, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %297 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %297, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %298 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %298, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %299 = load i64, i64* %53, align 4
  store i64 %299, i64* %52, align 4
  %300 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %300, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %301 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %301, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %302 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %302, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %303 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %303, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %304 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !32
  store i11 %304, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !32
  %305 = load i128, i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %305, i128* %XMM0, align 1, !mcsema_real_eip !32
  %306 = load i128, i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %306, i128* %XMM1, align 1, !mcsema_real_eip !32
  %307 = load i128, i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %307, i128* %XMM2, align 1, !mcsema_real_eip !32
  %308 = load i128, i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %308, i128* %XMM3, align 1, !mcsema_real_eip !32
  %309 = load i128, i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %309, i128* %XMM4, align 1, !mcsema_real_eip !32
  %310 = load i128, i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %310, i128* %XMM5, align 1, !mcsema_real_eip !32
  %311 = load i128, i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %311, i128* %XMM6, align 1, !mcsema_real_eip !32
  %312 = load i128, i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %312, i128* %XMM7, align 1, !mcsema_real_eip !32
  %313 = load i128, i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %313, i128* %XMM8, align 1, !mcsema_real_eip !32
  %314 = load i128, i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %314, i128* %XMM9, align 1, !mcsema_real_eip !32
  %315 = load i128, i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %315, i128* %XMM10, align 1, !mcsema_real_eip !32
  %316 = load i128, i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %316, i128* %XMM11, align 1, !mcsema_real_eip !32
  %317 = load i128, i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %317, i128* %XMM12, align 1, !mcsema_real_eip !32
  %318 = load i128, i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %318, i128* %XMM13, align 1, !mcsema_real_eip !32
  %319 = load i128, i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %319, i128* %XMM14, align 1, !mcsema_real_eip !32
  %320 = load i128, i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %320, i128* %XMM15, align 1, !mcsema_real_eip !32
  %321 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %321, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %322 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %322, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 60}
!18 = !{i64 106}
!19 = !{i64 66}
!20 = !{i64 70}
!21 = !{i64 74}
!22 = !{i64 78}
!23 = !{i64 82}
!24 = !{i64 85}
!25 = !{i64 87}
!26 = !{i64 90}
!27 = !{i64 93}
!28 = !{i64 98}
!29 = !{i64 101}
!30 = !{i64 109}
!31 = !{i64 113}
!32 = !{i64 114}
