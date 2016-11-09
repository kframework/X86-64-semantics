; ModuleID = 'Output/test_13.clang.trans.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -8
  %96 = add i64 %95, -8, !mcsema_real_eip !5
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !5
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !5
  store i64 %98, i64* %_allin_new_bt_12, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %100 = add i64 %99, -12, !mcsema_real_eip !6
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !6
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !6
  %104 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %106 = add i64 %105, -16, !mcsema_real_eip !7
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !7
  %108 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 0, i32* %108, !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %110 = add i64 %109, -12, !mcsema_real_eip !8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !8
  %112 = bitcast i64* %_allin_new_bt_21 to i32*
  %113 = load i32, i32* %112, !mcsema_real_eip !8
  %114 = sext i32 %113 to i64, !mcsema_real_eip !8
  %115 = shl nsw i64 %114, 3, !mcsema_real_eip !9
  store i1 false, i1* %CF_val, !mcsema_real_eip !9
  %116 = icmp eq i32 %113, 0
  store i1 %116, i1* %ZF_val, !mcsema_real_eip !9
  %117 = icmp slt i32 %113, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !9
  %118 = trunc i64 %115 to i8, !mcsema_real_eip !9
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !9
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF_val, !mcsema_real_eip !9
  store i64 %115, i64* %RDI_val, !mcsema_real_eip !9
  %122 = tail call x86_64_sysvcc i64 @malloc(i64 %115), !mcsema_real_eip !10
  store i64 %122, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %124 = add i64 %123, -24, !mcsema_real_eip !11
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !11
  store i64 %122, i64* %_allin_new_bt_24, !mcsema_real_eip !11
  br label %block_0x27, !mcsema_real_eip !12

block_0x27:                                       ; preds = %block_0x69, %entry
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %127 = add i64 %126, -16, !mcsema_real_eip !12
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !12
  %129 = bitcast i64* %_allin_new_bt_27 to i32*
  %130 = load i32, i32* %129, !mcsema_real_eip !12
  %131 = zext i32 %130 to i64, !mcsema_real_eip !12
  store i64 %131, i64* %RAX_val, !mcsema_real_eip !12
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -12
  %133 = add i64 %132, -12, !mcsema_real_eip !13
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !13
  %135 = bitcast i64* %_allin_new_bt_30 to i32*
  %136 = load i32, i32* %135, !mcsema_real_eip !13
  %137 = sub i32 %130, %136, !mcsema_real_eip !13
  %138 = xor i32 %137, %130, !mcsema_real_eip !13
  %139 = xor i32 %138, %136, !mcsema_real_eip !13
  %140 = and i32 %139, 16, !mcsema_real_eip !13
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !13
  store i1 %141, i1* %AF_val, !mcsema_real_eip !13
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !13
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !13
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  store i1 %145, i1* %PF_val, !mcsema_real_eip !13
  %146 = icmp eq i32 %130, %136
  store i1 %146, i1* %ZF_val, !mcsema_real_eip !13
  %147 = icmp slt i32 %137, 0
  store i1 %147, i1* %SF_val, !mcsema_real_eip !13
  %148 = icmp ult i32 %130, %136, !mcsema_real_eip !13
  store i1 %148, i1* %CF_val, !mcsema_real_eip !13
  %149 = xor i32 %136, %130, !mcsema_real_eip !13
  %150 = and i32 %138, %149, !mcsema_real_eip !13
  %151 = icmp slt i32 %150, 0
  store i1 %151, i1* %OF_val, !mcsema_real_eip !13
  %152 = load i1, i1* %SF_val, !mcsema_real_eip !14
  %tmp = xor i1 %152, %151
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  br i1 %tmp, label %block_0x33, label %block_0x79, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %154 = add i64 %153, -16, !mcsema_real_eip !16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !16
  %156 = bitcast i64* %_allin_new_bt_33 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !16
  %158 = sext i32 %157 to i64, !mcsema_real_eip !16
  store i64 %158, i64* %RAX_val, !mcsema_real_eip !16
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %160 = add i64 %159, -8, !mcsema_real_eip !17
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !17
  %162 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !17
  store i64 %162, i64* %RCX_val, !mcsema_real_eip !17
  %163 = shl nsw i64 %158, 3
  %164 = add i64 %162, %163, !mcsema_real_eip !18
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !18
  %166 = load i64, i64* %165, !mcsema_real_eip !18
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !18
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -32
  %168 = add i64 %167, -32, !mcsema_real_eip !19
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !19
  store i64 %166, i64* %_allin_new_bt_39, !mcsema_real_eip !19
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -32
  %171 = add i64 %170, -32, !mcsema_real_eip !20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !20
  %173 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !20
  store i64 %173, i64* %RDI_val, !mcsema_real_eip !20
  %_load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_
  %174 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_43, i64 -8
  %175 = add i64 %174, -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %_allin_new_bt_45, !mcsema_real_eip !21
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %175, i64* %RSP_val, !mcsema_real_eip !21
  %177 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  store i64 %177, i64* %RAX, !mcsema_real_eip !21
  %178 = load i64, i64* %RBX_val, !mcsema_real_eip !21
  store i64 %178, i64* %RBX, !mcsema_real_eip !21
  %179 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %179, i64* %RCX, !mcsema_real_eip !21
  %180 = load i64, i64* %RDX_val, !mcsema_real_eip !21
  store i64 %180, i64* %RDX, !mcsema_real_eip !21
  %181 = load i64, i64* %RSI_val, !mcsema_real_eip !21
  store i64 %181, i64* %RSI, !mcsema_real_eip !21
  %182 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  store i64 %182, i64* %RDI, !mcsema_real_eip !21
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %183 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_ptr2int_47 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %RSP
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_ptr2int_49 = ptrtoint i8* %_load_rbp_ptr_48 to i64
  store volatile i64 %_new_ptr2int_49, i64* %RBP
  %185 = load i64, i64* %R8_val, !mcsema_real_eip !21
  store i64 %185, i64* %R8, !mcsema_real_eip !21
  %186 = load i64, i64* %R9_val, !mcsema_real_eip !21
  store i64 %186, i64* %R9, !mcsema_real_eip !21
  %187 = load i64, i64* %R10_val, !mcsema_real_eip !21
  store i64 %187, i64* %R10, !mcsema_real_eip !21
  %188 = load i64, i64* %R11_val, !mcsema_real_eip !21
  store i64 %188, i64* %R11, !mcsema_real_eip !21
  %189 = load i64, i64* %R12_val, !mcsema_real_eip !21
  store i64 %189, i64* %R12, !mcsema_real_eip !21
  %190 = load i64, i64* %R13_val, !mcsema_real_eip !21
  store i64 %190, i64* %R13, !mcsema_real_eip !21
  %191 = load i64, i64* %R14_val, !mcsema_real_eip !21
  store i64 %191, i64* %R14, !mcsema_real_eip !21
  %192 = load i64, i64* %R15_val, !mcsema_real_eip !21
  store i64 %192, i64* %R15, !mcsema_real_eip !21
  %193 = load i64, i64* %RIP_val, !mcsema_real_eip !21
  store i64 %193, i64* %RIP, !mcsema_real_eip !21
  %194 = load i1, i1* %CF_val, !mcsema_real_eip !21
  store i1 %194, i1* %CF, align 1, !mcsema_real_eip !21
  %195 = load i1, i1* %PF_val, !mcsema_real_eip !21
  store i1 %195, i1* %PF, align 1, !mcsema_real_eip !21
  %196 = load i1, i1* %AF_val, !mcsema_real_eip !21
  store i1 %196, i1* %AF, align 1, !mcsema_real_eip !21
  %197 = load i1, i1* %ZF_val, !mcsema_real_eip !21
  store i1 %197, i1* %ZF, align 1, !mcsema_real_eip !21
  %198 = load i1, i1* %SF_val, !mcsema_real_eip !21
  store i1 %198, i1* %SF, align 1, !mcsema_real_eip !21
  %199 = load i1, i1* %OF_val, !mcsema_real_eip !21
  store i1 %199, i1* %OF, align 1, !mcsema_real_eip !21
  %200 = load i1, i1* %DF_val, !mcsema_real_eip !21
  store i1 %200, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %201 = load i1, i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %201, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %202 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %202, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %203 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %203, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %204 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %204, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %205 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %205, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %206 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %206, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %207 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %207, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %208 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %208, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %209 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %209, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %210 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %210, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %211 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %211, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %212 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %212, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %213 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %213, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %214 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %214, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %215 = load i1, i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %215, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %216 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %216, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %217 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %217, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %218 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %218, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %219 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %219, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %220 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %220, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %221 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %221, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %222 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %222, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %223 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %223, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %224 = load i64, i64* %53, align 4
  store i64 %224, i64* %52, align 4
  %225 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %225, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %226 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %226, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %227 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %227, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %228 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %228, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %229 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !21
  store i11 %229, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !21
  %230 = load i128, i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %230, i128* %XMM0, align 1, !mcsema_real_eip !21
  %231 = load i128, i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %231, i128* %XMM1, align 1, !mcsema_real_eip !21
  %232 = load i128, i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %232, i128* %XMM2, align 1, !mcsema_real_eip !21
  %233 = load i128, i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %233, i128* %XMM3, align 1, !mcsema_real_eip !21
  %234 = load i128, i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %234, i128* %XMM4, align 1, !mcsema_real_eip !21
  %235 = load i128, i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %235, i128* %XMM5, align 1, !mcsema_real_eip !21
  %236 = load i128, i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %236, i128* %XMM6, align 1, !mcsema_real_eip !21
  %237 = load i128, i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %237, i128* %XMM7, align 1, !mcsema_real_eip !21
  %238 = load i128, i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %238, i128* %XMM8, align 1, !mcsema_real_eip !21
  %239 = load i128, i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %239, i128* %XMM9, align 1, !mcsema_real_eip !21
  %240 = load i128, i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %240, i128* %XMM10, align 1, !mcsema_real_eip !21
  %241 = load i128, i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %241, i128* %XMM11, align 1, !mcsema_real_eip !21
  %242 = load i128, i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %242, i128* %XMM12, align 1, !mcsema_real_eip !21
  %243 = load i128, i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %243, i128* %XMM13, align 1, !mcsema_real_eip !21
  %244 = load i128, i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %244, i128* %XMM14, align 1, !mcsema_real_eip !21
  %245 = load i128, i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %245, i128* %XMM15, align 1, !mcsema_real_eip !21
  %246 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %246, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %247 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %247, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  call void @sub_90.2(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_76)
  %248 = load i64, i64* %RAX, !mcsema_real_eip !21
  store i64 %248, i64* %RAX_val, !mcsema_real_eip !21
  %249 = load i64, i64* %RBX, !mcsema_real_eip !21
  store i64 %249, i64* %RBX_val, !mcsema_real_eip !21
  %250 = load i64, i64* %RCX, !mcsema_real_eip !21
  store i64 %250, i64* %RCX_val, !mcsema_real_eip !21
  %251 = load i64, i64* %RDX, !mcsema_real_eip !21
  store i64 %251, i64* %RDX_val, !mcsema_real_eip !21
  %252 = load i64, i64* %RSI, !mcsema_real_eip !21
  store i64 %252, i64* %RSI_val, !mcsema_real_eip !21
  %253 = load i64, i64* %RDI, !mcsema_real_eip !21
  store i64 %253, i64* %RDI_val, !mcsema_real_eip !21
  %254 = load i64, i64* %RSP, !mcsema_real_eip !21
  store i64 %254, i64* %RSP_val, !mcsema_real_eip !21
  %255 = load i64, i64* %RBP, !mcsema_real_eip !21
  store i64 %255, i64* %RBP_val, !mcsema_real_eip !21
  %256 = load i64, i64* %R8, !mcsema_real_eip !21
  store i64 %256, i64* %R8_val, !mcsema_real_eip !21
  %257 = load i64, i64* %R9, !mcsema_real_eip !21
  store i64 %257, i64* %R9_val, !mcsema_real_eip !21
  %258 = load i64, i64* %R10, !mcsema_real_eip !21
  store i64 %258, i64* %R10_val, !mcsema_real_eip !21
  %259 = load i64, i64* %R11, !mcsema_real_eip !21
  store i64 %259, i64* %R11_val, !mcsema_real_eip !21
  %260 = load i64, i64* %R12, !mcsema_real_eip !21
  store i64 %260, i64* %R12_val, !mcsema_real_eip !21
  %261 = load i64, i64* %R13, !mcsema_real_eip !21
  store i64 %261, i64* %R13_val, !mcsema_real_eip !21
  %262 = load i64, i64* %R14, !mcsema_real_eip !21
  store i64 %262, i64* %R14_val, !mcsema_real_eip !21
  %263 = load i64, i64* %R15, !mcsema_real_eip !21
  store i64 %263, i64* %R15_val, !mcsema_real_eip !21
  %264 = load i64, i64* %RIP, !mcsema_real_eip !21
  store i64 %264, i64* %RIP_val, !mcsema_real_eip !21
  %265 = load i1, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 %265, i1* %CF_val, !mcsema_real_eip !21
  %266 = load i1, i1* %PF, align 1, !mcsema_real_eip !21
  store i1 %266, i1* %PF_val, !mcsema_real_eip !21
  %267 = load i1, i1* %AF, align 1, !mcsema_real_eip !21
  store i1 %267, i1* %AF_val, !mcsema_real_eip !21
  %268 = load i1, i1* %ZF, align 1, !mcsema_real_eip !21
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !21
  %269 = load i1, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 %269, i1* %SF_val, !mcsema_real_eip !21
  %270 = load i1, i1* %OF, align 1, !mcsema_real_eip !21
  store i1 %270, i1* %OF_val, !mcsema_real_eip !21
  %271 = load i1, i1* %DF, align 1, !mcsema_real_eip !21
  store i1 %271, i1* %DF_val, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !21
  %272 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !21
  store i1 %272, i1* %FPU_B_val, !mcsema_real_eip !21
  %273 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  store i1 %273, i1* %FPU_C3_val, !mcsema_real_eip !21
  %274 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  store i3 %274, i3* %FPU_TOP_val, !mcsema_real_eip !21
  %275 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  store i1 %275, i1* %FPU_C2_val, !mcsema_real_eip !21
  %276 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  store i1 %276, i1* %FPU_C1_val, !mcsema_real_eip !21
  %277 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  store i1 %277, i1* %FPU_C0_val, !mcsema_real_eip !21
  %278 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  store i1 %278, i1* %FPU_ES_val, !mcsema_real_eip !21
  %279 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  store i1 %279, i1* %FPU_SF_val, !mcsema_real_eip !21
  %280 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  store i1 %280, i1* %FPU_PE_val, !mcsema_real_eip !21
  %281 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  store i1 %281, i1* %FPU_UE_val, !mcsema_real_eip !21
  %282 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  store i1 %282, i1* %FPU_OE_val, !mcsema_real_eip !21
  %283 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  store i1 %283, i1* %FPU_ZE_val, !mcsema_real_eip !21
  %284 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  store i1 %284, i1* %FPU_DE_val, !mcsema_real_eip !21
  %285 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  store i1 %285, i1* %FPU_IE_val, !mcsema_real_eip !21
  %286 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !21
  store i1 %286, i1* %FPU_X_val, !mcsema_real_eip !21
  %287 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  store i2 %287, i2* %FPU_RC_val, !mcsema_real_eip !21
  %288 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  store i2 %288, i2* %FPU_PC_val, !mcsema_real_eip !21
  %289 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  store i1 %289, i1* %FPU_PM_val, !mcsema_real_eip !21
  %290 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  store i1 %290, i1* %FPU_UM_val, !mcsema_real_eip !21
  %291 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  store i1 %291, i1* %FPU_OM_val, !mcsema_real_eip !21
  %292 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  store i1 %292, i1* %FPU_ZM_val, !mcsema_real_eip !21
  %293 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  store i1 %293, i1* %FPU_DM_val, !mcsema_real_eip !21
  %294 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  store i1 %294, i1* %FPU_IM_val, !mcsema_real_eip !21
  %295 = load i64, i64* %52, align 4
  store i64 %295, i64* %53, align 4
  %296 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  store i16 %296, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  %297 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !21
  store i64 %297, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  %298 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  store i16 %298, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  %299 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !21
  store i64 %299, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  %300 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !21
  store i11 %300, i11* %FPU_FOPCODE_val, !mcsema_real_eip !21
  %301 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !21
  store i128 %301, i128* %XMM0_val, !mcsema_real_eip !21
  %302 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !21
  store i128 %302, i128* %XMM1_val, !mcsema_real_eip !21
  %303 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !21
  store i128 %303, i128* %XMM2_val, !mcsema_real_eip !21
  %304 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !21
  store i128 %304, i128* %XMM3_val, !mcsema_real_eip !21
  %305 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !21
  store i128 %305, i128* %XMM4_val, !mcsema_real_eip !21
  %306 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !21
  store i128 %306, i128* %XMM5_val, !mcsema_real_eip !21
  %307 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !21
  store i128 %307, i128* %XMM6_val, !mcsema_real_eip !21
  %308 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !21
  store i128 %308, i128* %XMM7_val, !mcsema_real_eip !21
  %309 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !21
  store i128 %309, i128* %XMM8_val, !mcsema_real_eip !21
  %310 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !21
  store i128 %310, i128* %XMM9_val, !mcsema_real_eip !21
  %311 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !21
  store i128 %311, i128* %XMM10_val, !mcsema_real_eip !21
  %312 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !21
  store i128 %312, i128* %XMM11_val, !mcsema_real_eip !21
  %313 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !21
  store i128 %313, i128* %XMM12_val, !mcsema_real_eip !21
  %314 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !21
  store i128 %314, i128* %XMM13_val, !mcsema_real_eip !21
  %315 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !21
  store i128 %315, i128* %XMM14_val, !mcsema_real_eip !21
  %316 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !21
  store i128 %316, i128* %XMM15_val, !mcsema_real_eip !21
  %317 = load i64, i64* %STACK_BASE, !mcsema_real_eip !21
  store i64 %317, i64* %STACK_BASE_val, !mcsema_real_eip !21
  %318 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !21
  store i64 %318, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  %319 = load i64, i64* %RAX_val, !mcsema_real_eip !22
  %320 = trunc i64 %319 to i32, !mcsema_real_eip !22
  store i1 false, i1* %AF_val, !mcsema_real_eip !22
  %321 = trunc i64 %319 to i8
  %322 = tail call i8 @llvm.ctpop.i8(i8 %321), !mcsema_real_eip !22
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  store i1 %324, i1* %PF_val, !mcsema_real_eip !22
  %325 = icmp eq i32 %320, 0, !mcsema_real_eip !22
  store i1 %325, i1* %ZF_val, !mcsema_real_eip !22
  %326 = icmp slt i32 %320, 0
  store i1 %326, i1* %SF_val, !mcsema_real_eip !22
  store i1 false, i1* %CF_val, !mcsema_real_eip !22
  store i1 false, i1* %OF_val, !mcsema_real_eip !22
  br i1 %325, label %block_0x57, label %block_0x69, !mcsema_real_eip !23

block_0x79:                                       ; preds = %block_0x27
  %327 = phi i8* [ %_load_rbp_ptr_31, %block_0x27 ]
  %.lcssa = phi i64 [ %153, %block_0x27 ]
  %_new_gep_50 = getelementptr i8, i8* %327, i64 -24
  %328 = add i64 %.lcssa, -24, !mcsema_real_eip !15
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !15
  %330 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !15
  store i64 %330, i64* %RAX_val, !mcsema_real_eip !15
  %331 = add i64 %330, 1, !mcsema_real_eip !24
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !24
  %333 = bitcast i64* %332 to i8*
  store i8 2, i8* %333, !mcsema_real_eip !24
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %334 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %_new_ptr2int_53 = ptrtoint i8* %_load_rsp_ptr_52 to i64
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_53, i64 32)
  %335 = extractvalue { i64, i1 } %uadd352, 0
  %336 = xor i64 %335, %_new_ptr2int_53, !mcsema_real_eip !25
  %337 = and i64 %336, 16, !mcsema_real_eip !25
  %338 = icmp ne i64 %337, 0, !mcsema_real_eip !25
  store i1 %338, i1* %AF_val, !mcsema_real_eip !25
  %339 = icmp slt i64 %335, 0
  store i1 %339, i1* %SF_val, !mcsema_real_eip !25
  %340 = icmp eq i64 %335, 0, !mcsema_real_eip !25
  store i1 %340, i1* %ZF_val, !mcsema_real_eip !25
  %341 = xor i64 %_new_ptr2int_53, -9223372036854775808, !mcsema_real_eip !25
  %342 = and i64 %336, %341, !mcsema_real_eip !25
  %343 = icmp slt i64 %342, 0
  store i1 %343, i1* %OF_val, !mcsema_real_eip !25
  %344 = trunc i64 %335 to i8, !mcsema_real_eip !25
  %345 = tail call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !25
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF_val, !mcsema_real_eip !25
  %348 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %348, i1* %CF_val, !mcsema_real_eip !25
  %_new_int2ptr_ = inttoptr i64 %335 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %335, i64* %RSP_val, !mcsema_real_eip !25
  %349 = inttoptr i64 %335 to i64*, !mcsema_real_eip !26
  %350 = load i64, i64* %349, !mcsema_real_eip !26
  %_new_int2ptr_54 = inttoptr i64 %350 to i8*
  store volatile i8* %_new_int2ptr_54, i8** %_RBP_ptr_
  store i64 %350, i64* %RBP_val, !mcsema_real_eip !26
  %351 = add i64 %335, 16, !mcsema_real_eip !27
  %_new_int2ptr_55 = inttoptr i64 %351 to i8*
  store volatile i8* %_new_int2ptr_55, i8** %_RSP_ptr_
  store i64 %351, i64* %RSP_val, !mcsema_real_eip !27
  %352 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %352, i64* %RAX, !mcsema_real_eip !27
  %353 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %353, i64* %RBX, !mcsema_real_eip !27
  %354 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %354, i64* %RCX, !mcsema_real_eip !27
  %355 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %355, i64* %RDX, !mcsema_real_eip !27
  %356 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %356, i64* %RSI, !mcsema_real_eip !27
  %357 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %357, i64* %RDI, !mcsema_real_eip !27
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %358 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  %_new_ptr2int_57 = ptrtoint i8* %_load_rsp_ptr_56 to i64
  store volatile i64 %_new_ptr2int_57, i64* %RSP
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %359 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_ptr2int_59 = ptrtoint i8* %_load_rbp_ptr_58 to i64
  store volatile i64 %_new_ptr2int_59, i64* %RBP
  %360 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %360, i64* %R8, !mcsema_real_eip !27
  %361 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %361, i64* %R9, !mcsema_real_eip !27
  %362 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %362, i64* %R10, !mcsema_real_eip !27
  %363 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %363, i64* %R11, !mcsema_real_eip !27
  %364 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %364, i64* %R12, !mcsema_real_eip !27
  %365 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %365, i64* %R13, !mcsema_real_eip !27
  %366 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %366, i64* %R14, !mcsema_real_eip !27
  %367 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %367, i64* %R15, !mcsema_real_eip !27
  %368 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %368, i64* %RIP, !mcsema_real_eip !27
  %369 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %369, i1* %CF, align 1, !mcsema_real_eip !27
  %370 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %370, i1* %PF, align 1, !mcsema_real_eip !27
  %371 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %371, i1* %AF, align 1, !mcsema_real_eip !27
  %372 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %372, i1* %ZF, align 1, !mcsema_real_eip !27
  %373 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %373, i1* %SF, align 1, !mcsema_real_eip !27
  %374 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %374, i1* %OF, align 1, !mcsema_real_eip !27
  %375 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %375, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %376 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %376, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %377 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %377, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %378 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %378, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %379 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %379, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %380 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %380, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %381 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %381, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %382 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %382, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %383 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %383, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %384 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %384, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %385 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %385, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %386 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %386, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %387 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %387, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %388 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %388, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %389 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %389, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %390 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %390, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %391 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %391, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %392 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %392, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %393 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %393, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %394 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %394, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %395 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %395, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %396 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %396, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %397 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %397, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %398 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %398, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %399 = load i64, i64* %53, align 4
  store i64 %399, i64* %52, align 4
  %400 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %400, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %401 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %401, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %402 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %402, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %403 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %403, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %404 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !27
  store i11 %404, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !27
  %405 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %405, i128* %XMM0, align 1, !mcsema_real_eip !27
  %406 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %406, i128* %XMM1, align 1, !mcsema_real_eip !27
  %407 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %407, i128* %XMM2, align 1, !mcsema_real_eip !27
  %408 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %408, i128* %XMM3, align 1, !mcsema_real_eip !27
  %409 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %409, i128* %XMM4, align 1, !mcsema_real_eip !27
  %410 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %410, i128* %XMM5, align 1, !mcsema_real_eip !27
  %411 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %411, i128* %XMM6, align 1, !mcsema_real_eip !27
  %412 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %412, i128* %XMM7, align 1, !mcsema_real_eip !27
  %413 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %413, i128* %XMM8, align 1, !mcsema_real_eip !27
  %414 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %414, i128* %XMM9, align 1, !mcsema_real_eip !27
  %415 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %415, i128* %XMM10, align 1, !mcsema_real_eip !27
  %416 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %416, i128* %XMM11, align 1, !mcsema_real_eip !27
  %417 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %417, i128* %XMM12, align 1, !mcsema_real_eip !27
  %418 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %418, i128* %XMM13, align 1, !mcsema_real_eip !27
  %419 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %419, i128* %XMM14, align 1, !mcsema_real_eip !27
  %420 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %420, i128* %XMM15, align 1, !mcsema_real_eip !27
  %421 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %421, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %422 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %422, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x57:                                       ; preds = %block_0x33
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %423 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -32
  %424 = add i64 %423, -32, !mcsema_real_eip !28
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !28
  %426 = load i64, i64* %_allin_new_bt_62, !mcsema_real_eip !28
  store i64 %426, i64* %RDI_val, !mcsema_real_eip !28
  %427 = load i64, i64* %_allin_new_bt_62, !mcsema_real_eip !29
  store i64 %427, i64* %RSI_val, !mcsema_real_eip !29
  %_load_rsp_ptr_63 = load i8*, i8** %_RSP_ptr_
  %428 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %_new_gep_64 = getelementptr i8, i8* %_load_rsp_ptr_63, i64 -8
  %429 = add i64 %428, -8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %_allin_new_bt_65, !mcsema_real_eip !30
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %429, i64* %RSP_val, !mcsema_real_eip !30
  %431 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %431, i64* %RAX, !mcsema_real_eip !30
  %432 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %432, i64* %RBX, !mcsema_real_eip !30
  %433 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %433, i64* %RCX, !mcsema_real_eip !30
  %434 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %434, i64* %RDX, !mcsema_real_eip !30
  %435 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %435, i64* %RSI, !mcsema_real_eip !30
  %436 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %436, i64* %RDI, !mcsema_real_eip !30
  %_load_rsp_ptr_66 = load i8*, i8** %_RSP_ptr_
  %437 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %_new_ptr2int_67 = ptrtoint i8* %_load_rsp_ptr_66 to i64
  store volatile i64 %_new_ptr2int_67, i64* %RSP
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %438 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_ptr2int_69 = ptrtoint i8* %_load_rbp_ptr_68 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RBP
  %439 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %439, i64* %R8, !mcsema_real_eip !30
  %440 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %440, i64* %R9, !mcsema_real_eip !30
  %441 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %441, i64* %R10, !mcsema_real_eip !30
  %442 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %442, i64* %R11, !mcsema_real_eip !30
  %443 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %443, i64* %R12, !mcsema_real_eip !30
  %444 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %444, i64* %R13, !mcsema_real_eip !30
  %445 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %445, i64* %R14, !mcsema_real_eip !30
  %446 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %446, i64* %R15, !mcsema_real_eip !30
  %447 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %447, i64* %RIP, !mcsema_real_eip !30
  %448 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %448, i1* %CF, align 1, !mcsema_real_eip !30
  %449 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %449, i1* %PF, align 1, !mcsema_real_eip !30
  %450 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %450, i1* %AF, align 1, !mcsema_real_eip !30
  %451 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %451, i1* %ZF, align 1, !mcsema_real_eip !30
  %452 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %452, i1* %SF, align 1, !mcsema_real_eip !30
  %453 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %453, i1* %OF, align 1, !mcsema_real_eip !30
  %454 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %454, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %455 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %455, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %456 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %456, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %457 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %457, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %458 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %458, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %459 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %459, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %460 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %460, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %461 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %461, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %462 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %462, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %463 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %463, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %464 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %464, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %465 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %465, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %466 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %466, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %467 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %467, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %468 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %468, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %469 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %469, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %470 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %470, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %471 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %471, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %472 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %472, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %473 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %473, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %474 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %474, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %475 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %475, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %476 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %476, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %477 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %477, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %478 = load i64, i64* %53, align 4
  store i64 %478, i64* %52, align 4
  %479 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %479, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %480 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %480, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %481 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %481, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %482 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %482, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %483 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !30
  store i11 %483, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !30
  %484 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %484, i128* %XMM0, align 1, !mcsema_real_eip !30
  %485 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %485, i128* %XMM1, align 1, !mcsema_real_eip !30
  %486 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %486, i128* %XMM2, align 1, !mcsema_real_eip !30
  %487 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %487, i128* %XMM3, align 1, !mcsema_real_eip !30
  %488 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %488, i128* %XMM4, align 1, !mcsema_real_eip !30
  %489 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %489, i128* %XMM5, align 1, !mcsema_real_eip !30
  %490 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %490, i128* %XMM6, align 1, !mcsema_real_eip !30
  %491 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %491, i128* %XMM7, align 1, !mcsema_real_eip !30
  %492 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %492, i128* %XMM8, align 1, !mcsema_real_eip !30
  %493 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %493, i128* %XMM9, align 1, !mcsema_real_eip !30
  %494 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %494, i128* %XMM10, align 1, !mcsema_real_eip !30
  %495 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %495, i128* %XMM11, align 1, !mcsema_real_eip !30
  %496 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %496, i128* %XMM12, align 1, !mcsema_real_eip !30
  %497 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %497, i128* %XMM13, align 1, !mcsema_real_eip !30
  %498 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %498, i128* %XMM14, align 1, !mcsema_real_eip !30
  %499 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %499, i128* %XMM15, align 1, !mcsema_real_eip !30
  %500 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %500, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %501 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %501, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  call void @sub_110.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_77)
  %502 = load i64, i64* %RAX, !mcsema_real_eip !30
  store i64 %502, i64* %RAX_val, !mcsema_real_eip !30
  %503 = load i64, i64* %RBX, !mcsema_real_eip !30
  store i64 %503, i64* %RBX_val, !mcsema_real_eip !30
  %504 = load i64, i64* %RCX, !mcsema_real_eip !30
  store i64 %504, i64* %RCX_val, !mcsema_real_eip !30
  %505 = load i64, i64* %RDX, !mcsema_real_eip !30
  store i64 %505, i64* %RDX_val, !mcsema_real_eip !30
  %506 = load i64, i64* %RSI, !mcsema_real_eip !30
  store i64 %506, i64* %RSI_val, !mcsema_real_eip !30
  %507 = load i64, i64* %RDI, !mcsema_real_eip !30
  store i64 %507, i64* %RDI_val, !mcsema_real_eip !30
  %508 = load i64, i64* %RSP, !mcsema_real_eip !30
  store i64 %508, i64* %RSP_val, !mcsema_real_eip !30
  %509 = load i64, i64* %RBP, !mcsema_real_eip !30
  store i64 %509, i64* %RBP_val, !mcsema_real_eip !30
  %510 = load i64, i64* %R8, !mcsema_real_eip !30
  store i64 %510, i64* %R8_val, !mcsema_real_eip !30
  %511 = load i64, i64* %R9, !mcsema_real_eip !30
  store i64 %511, i64* %R9_val, !mcsema_real_eip !30
  %512 = load i64, i64* %R10, !mcsema_real_eip !30
  store i64 %512, i64* %R10_val, !mcsema_real_eip !30
  %513 = load i64, i64* %R11, !mcsema_real_eip !30
  store i64 %513, i64* %R11_val, !mcsema_real_eip !30
  %514 = load i64, i64* %R12, !mcsema_real_eip !30
  store i64 %514, i64* %R12_val, !mcsema_real_eip !30
  %515 = load i64, i64* %R13, !mcsema_real_eip !30
  store i64 %515, i64* %R13_val, !mcsema_real_eip !30
  %516 = load i64, i64* %R14, !mcsema_real_eip !30
  store i64 %516, i64* %R14_val, !mcsema_real_eip !30
  %517 = load i64, i64* %R15, !mcsema_real_eip !30
  store i64 %517, i64* %R15_val, !mcsema_real_eip !30
  %518 = load i64, i64* %RIP, !mcsema_real_eip !30
  store i64 %518, i64* %RIP_val, !mcsema_real_eip !30
  %519 = load i1, i1* %CF, align 1, !mcsema_real_eip !30
  store i1 %519, i1* %CF_val, !mcsema_real_eip !30
  %520 = load i1, i1* %PF, align 1, !mcsema_real_eip !30
  store i1 %520, i1* %PF_val, !mcsema_real_eip !30
  %521 = load i1, i1* %AF, align 1, !mcsema_real_eip !30
  store i1 %521, i1* %AF_val, !mcsema_real_eip !30
  %522 = load i1, i1* %ZF, align 1, !mcsema_real_eip !30
  store i1 %522, i1* %ZF_val, !mcsema_real_eip !30
  %523 = load i1, i1* %SF, align 1, !mcsema_real_eip !30
  store i1 %523, i1* %SF_val, !mcsema_real_eip !30
  %524 = load i1, i1* %OF, align 1, !mcsema_real_eip !30
  store i1 %524, i1* %OF_val, !mcsema_real_eip !30
  %525 = load i1, i1* %DF, align 1, !mcsema_real_eip !30
  store i1 %525, i1* %DF_val, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !30
  %526 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !30
  store i1 %526, i1* %FPU_B_val, !mcsema_real_eip !30
  %527 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  store i1 %527, i1* %FPU_C3_val, !mcsema_real_eip !30
  %528 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  store i3 %528, i3* %FPU_TOP_val, !mcsema_real_eip !30
  %529 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  store i1 %529, i1* %FPU_C2_val, !mcsema_real_eip !30
  %530 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  store i1 %530, i1* %FPU_C1_val, !mcsema_real_eip !30
  %531 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  store i1 %531, i1* %FPU_C0_val, !mcsema_real_eip !30
  %532 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  store i1 %532, i1* %FPU_ES_val, !mcsema_real_eip !30
  %533 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  store i1 %533, i1* %FPU_SF_val, !mcsema_real_eip !30
  %534 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  store i1 %534, i1* %FPU_PE_val, !mcsema_real_eip !30
  %535 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  store i1 %535, i1* %FPU_UE_val, !mcsema_real_eip !30
  %536 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  store i1 %536, i1* %FPU_OE_val, !mcsema_real_eip !30
  %537 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  store i1 %537, i1* %FPU_ZE_val, !mcsema_real_eip !30
  %538 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  store i1 %538, i1* %FPU_DE_val, !mcsema_real_eip !30
  %539 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  store i1 %539, i1* %FPU_IE_val, !mcsema_real_eip !30
  %540 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !30
  store i1 %540, i1* %FPU_X_val, !mcsema_real_eip !30
  %541 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  store i2 %541, i2* %FPU_RC_val, !mcsema_real_eip !30
  %542 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  store i2 %542, i2* %FPU_PC_val, !mcsema_real_eip !30
  %543 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  store i1 %543, i1* %FPU_PM_val, !mcsema_real_eip !30
  %544 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  store i1 %544, i1* %FPU_UM_val, !mcsema_real_eip !30
  %545 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  store i1 %545, i1* %FPU_OM_val, !mcsema_real_eip !30
  %546 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  store i1 %546, i1* %FPU_ZM_val, !mcsema_real_eip !30
  %547 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  store i1 %547, i1* %FPU_DM_val, !mcsema_real_eip !30
  %548 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  store i1 %548, i1* %FPU_IM_val, !mcsema_real_eip !30
  %549 = load i64, i64* %52, align 4
  store i64 %549, i64* %53, align 4
  %550 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  store i16 %550, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  %551 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !30
  store i64 %551, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  %552 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  store i16 %552, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  %553 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !30
  store i64 %553, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  %554 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !30
  store i11 %554, i11* %FPU_FOPCODE_val, !mcsema_real_eip !30
  %555 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !30
  store i128 %555, i128* %XMM0_val, !mcsema_real_eip !30
  %556 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !30
  store i128 %556, i128* %XMM1_val, !mcsema_real_eip !30
  %557 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !30
  store i128 %557, i128* %XMM2_val, !mcsema_real_eip !30
  %558 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !30
  store i128 %558, i128* %XMM3_val, !mcsema_real_eip !30
  %559 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !30
  store i128 %559, i128* %XMM4_val, !mcsema_real_eip !30
  %560 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !30
  store i128 %560, i128* %XMM5_val, !mcsema_real_eip !30
  %561 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !30
  store i128 %561, i128* %XMM6_val, !mcsema_real_eip !30
  %562 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !30
  store i128 %562, i128* %XMM7_val, !mcsema_real_eip !30
  %563 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !30
  store i128 %563, i128* %XMM8_val, !mcsema_real_eip !30
  %564 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !30
  store i128 %564, i128* %XMM9_val, !mcsema_real_eip !30
  %565 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !30
  store i128 %565, i128* %XMM10_val, !mcsema_real_eip !30
  %566 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !30
  store i128 %566, i128* %XMM11_val, !mcsema_real_eip !30
  %567 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !30
  store i128 %567, i128* %XMM12_val, !mcsema_real_eip !30
  %568 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !30
  store i128 %568, i128* %XMM13_val, !mcsema_real_eip !30
  %569 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !30
  store i128 %569, i128* %XMM14_val, !mcsema_real_eip !30
  %570 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !30
  store i128 %570, i128* %XMM15_val, !mcsema_real_eip !30
  %571 = load i64, i64* %STACK_BASE, !mcsema_real_eip !30
  store i64 %571, i64* %STACK_BASE_val, !mcsema_real_eip !30
  %572 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !30
  store i64 %572, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  br label %block_0x69, !mcsema_real_eip !31

block_0x69:                                       ; preds = %block_0x57, %block_0x33
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -16
  %574 = add i64 %573, -16, !mcsema_real_eip !31
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !31
  %576 = bitcast i64* %_allin_new_bt_72 to i32*
  %577 = load i32, i32* %576, !mcsema_real_eip !31
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %577, i32 1)
  %578 = extractvalue { i32, i1 } %uadd, 0
  %579 = xor i32 %578, %577, !mcsema_real_eip !32
  %580 = and i32 %579, 16, !mcsema_real_eip !32
  %581 = icmp ne i32 %580, 0, !mcsema_real_eip !32
  store i1 %581, i1* %AF_val, !mcsema_real_eip !32
  %582 = icmp slt i32 %578, 0
  store i1 %582, i1* %SF_val, !mcsema_real_eip !32
  %583 = icmp eq i32 %578, 0, !mcsema_real_eip !32
  store i1 %583, i1* %ZF_val, !mcsema_real_eip !32
  %584 = xor i32 %577, -2147483648, !mcsema_real_eip !32
  %585 = and i32 %579, %584, !mcsema_real_eip !32
  %586 = icmp slt i32 %585, 0
  store i1 %586, i1* %OF_val, !mcsema_real_eip !32
  %587 = trunc i32 %578 to i8, !mcsema_real_eip !32
  %588 = tail call i8 @llvm.ctpop.i8(i8 %587), !mcsema_real_eip !32
  %589 = and i8 %588, 1
  %590 = icmp eq i8 %589, 0
  store i1 %590, i1* %PF_val, !mcsema_real_eip !32
  %591 = extractvalue { i32, i1 } %uadd, 1
  store i1 %591, i1* %CF_val, !mcsema_real_eip !32
  %592 = zext i32 %578 to i64, !mcsema_real_eip !32
  store i64 %592, i64* %RAX_val, !mcsema_real_eip !32
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %593 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -16
  %594 = add i64 %593, -16, !mcsema_real_eip !33
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %595 = inttoptr i64 %594 to i64*, !mcsema_real_eip !33
  %596 = bitcast i64* %_allin_new_bt_75 to i32*
  store i32 %578, i32* %596, !mcsema_real_eip !33
  br label %block_0x27, !mcsema_real_eip !34
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_110(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !35
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !35
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !35
  %XMM15_val = alloca i128, !mcsema_real_eip !35
  %XMM14_val = alloca i128, !mcsema_real_eip !35
  %XMM13_val = alloca i128, !mcsema_real_eip !35
  %XMM12_val = alloca i128, !mcsema_real_eip !35
  %XMM11_val = alloca i128, !mcsema_real_eip !35
  %XMM10_val = alloca i128, !mcsema_real_eip !35
  %XMM9_val = alloca i128, !mcsema_real_eip !35
  %XMM8_val = alloca i128, !mcsema_real_eip !35
  %XMM7_val = alloca i128, !mcsema_real_eip !35
  %XMM6_val = alloca i128, !mcsema_real_eip !35
  %XMM5_val = alloca i128, !mcsema_real_eip !35
  %XMM4_val = alloca i128, !mcsema_real_eip !35
  %XMM3_val = alloca i128, !mcsema_real_eip !35
  %XMM2_val = alloca i128, !mcsema_real_eip !35
  %XMM1_val = alloca i128, !mcsema_real_eip !35
  %XMM0_val = alloca i128, !mcsema_real_eip !35
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !35
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !35
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !35
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !35
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !35
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !35
  %FPU_IM_val = alloca i1, !mcsema_real_eip !35
  %FPU_DM_val = alloca i1, !mcsema_real_eip !35
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !35
  %FPU_OM_val = alloca i1, !mcsema_real_eip !35
  %FPU_UM_val = alloca i1, !mcsema_real_eip !35
  %FPU_PM_val = alloca i1, !mcsema_real_eip !35
  %FPU_PC_val = alloca i2, !mcsema_real_eip !35
  %FPU_RC_val = alloca i2, !mcsema_real_eip !35
  %FPU_X_val = alloca i1, !mcsema_real_eip !35
  %FPU_IE_val = alloca i1, !mcsema_real_eip !35
  %FPU_DE_val = alloca i1, !mcsema_real_eip !35
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !35
  %FPU_OE_val = alloca i1, !mcsema_real_eip !35
  %FPU_UE_val = alloca i1, !mcsema_real_eip !35
  %FPU_PE_val = alloca i1, !mcsema_real_eip !35
  %FPU_SF_val = alloca i1, !mcsema_real_eip !35
  %FPU_ES_val = alloca i1, !mcsema_real_eip !35
  %FPU_C0_val = alloca i1, !mcsema_real_eip !35
  %FPU_C1_val = alloca i1, !mcsema_real_eip !35
  %FPU_C2_val = alloca i1, !mcsema_real_eip !35
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !35
  %FPU_C3_val = alloca i1, !mcsema_real_eip !35
  %FPU_B_val = alloca i1, !mcsema_real_eip !35
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !35
  %DF_val = alloca i1, !mcsema_real_eip !35
  %OF_val = alloca i1, !mcsema_real_eip !35
  %SF_val = alloca i1, !mcsema_real_eip !35
  %CF_val = alloca i1, !mcsema_real_eip !35
  %AF_val = alloca i1, !mcsema_real_eip !35
  %PF_val = alloca i1, !mcsema_real_eip !35
  %ZF_val = alloca i1, !mcsema_real_eip !35
  %RIP_val = alloca i64, !mcsema_real_eip !35
  %R14_val = alloca i64, !mcsema_real_eip !35
  %R13_val = alloca i64, !mcsema_real_eip !35
  %R12_val = alloca i64, !mcsema_real_eip !35
  %R11_val = alloca i64, !mcsema_real_eip !35
  %R10_val = alloca i64, !mcsema_real_eip !35
  %R9_val = alloca i64, !mcsema_real_eip !35
  %R8_val = alloca i64, !mcsema_real_eip !35
  %RSP_val = alloca i64, !mcsema_real_eip !35
  %RBP_val = alloca i64, !mcsema_real_eip !35
  %RDI_val = alloca i64, !mcsema_real_eip !35
  %RSI_val = alloca i64, !mcsema_real_eip !35
  %RDX_val = alloca i64, !mcsema_real_eip !35
  %RCX_val = alloca i64, !mcsema_real_eip !35
  %RBX_val = alloca i64, !mcsema_real_eip !35
  %RAX_val = alloca i64, !mcsema_real_eip !35
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !35
  %1 = load i64, i64* %RAX, !mcsema_real_eip !35
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !35
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !35
  %2 = load i64, i64* %RBX, !mcsema_real_eip !35
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !35
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !35
  %3 = load i64, i64* %RCX, !mcsema_real_eip !35
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !35
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !35
  %4 = load i64, i64* %RDX, !mcsema_real_eip !35
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !35
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !35
  %5 = load i64, i64* %RSI, !mcsema_real_eip !35
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !35
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !35
  %6 = load i64, i64* %RDI, !mcsema_real_eip !35
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !35
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !35
  %7 = load i64, i64* %RSP, !mcsema_real_eip !35
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !35
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !35
  %8 = load i64, i64* %RBP, !mcsema_real_eip !35
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !35
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !35
  %9 = load i64, i64* %R8, !mcsema_real_eip !35
  store i64 %9, i64* %R8_val, !mcsema_real_eip !35
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !35
  %10 = load i64, i64* %R9, !mcsema_real_eip !35
  store i64 %10, i64* %R9_val, !mcsema_real_eip !35
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !35
  %11 = load i64, i64* %R10, !mcsema_real_eip !35
  store i64 %11, i64* %R10_val, !mcsema_real_eip !35
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !35
  %12 = load i64, i64* %R11, !mcsema_real_eip !35
  store i64 %12, i64* %R11_val, !mcsema_real_eip !35
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !35
  %13 = load i64, i64* %R12, !mcsema_real_eip !35
  store i64 %13, i64* %R12_val, !mcsema_real_eip !35
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !35
  %14 = load i64, i64* %R13, !mcsema_real_eip !35
  store i64 %14, i64* %R13_val, !mcsema_real_eip !35
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !35
  %15 = load i64, i64* %R14, !mcsema_real_eip !35
  store i64 %15, i64* %R14_val, !mcsema_real_eip !35
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !35
  %16 = load i64, i64* %R15, !mcsema_real_eip !35
  store i64 %16, i64* %R15_val, !mcsema_real_eip !35
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !35
  %17 = load i64, i64* %RIP, !mcsema_real_eip !35
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !35
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !35
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !35
  store i1 %18, i1* %CF_val, !mcsema_real_eip !35
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !35
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !35
  store i1 %19, i1* %PF_val, !mcsema_real_eip !35
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !35
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !35
  store i1 %20, i1* %AF_val, !mcsema_real_eip !35
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !35
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !35
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !35
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !35
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !35
  store i1 %22, i1* %SF_val, !mcsema_real_eip !35
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !35
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !35
  store i1 %23, i1* %OF_val, !mcsema_real_eip !35
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !35
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !35
  store i1 %24, i1* %DF_val, !mcsema_real_eip !35
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !35
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !35
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !35
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !35
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !35
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !35
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !35
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !35
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !35
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !35
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !35
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !35
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !35
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !35
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !35
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !35
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !35
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !35
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !35
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !35
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !35
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !35
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !35
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !35
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !35
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !35
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !35
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !35
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !35
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !35
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !35
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !35
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !35
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !35
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !35
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !35
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !35
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !35
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !35
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !35
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !35
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !35
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !35
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !35
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !35
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !35
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !35
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !35
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !35
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !35
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !35
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !35
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !35
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !35
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !35
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !35
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !35
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !35
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !35
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !35
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !35
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !35
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !35
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !35
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !35
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !35
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !35
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !35
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !35
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !35
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !35
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !35
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !35
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !35
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !35
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !35
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !35
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !35
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !35
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !35
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !35
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !35
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !35
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !35
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !35
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !35
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !35
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !35
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !35
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !35
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !35
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !35
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !35
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !35
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !35
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !35
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !35
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !35
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !35
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !35
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !35
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !35
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !35
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !35
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !35
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !35
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !35
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !35
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !35
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !35
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !35
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !35
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !35
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !35
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !35
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !35
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !35
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !35
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !35
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !35
  store i64 %78, i64* %81, !mcsema_real_eip !35
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !35
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !36
  %82 = add i64 %79, -16, !mcsema_real_eip !37
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !37
  %84 = load i64, i64* %RDI_val, !mcsema_real_eip !37
  store i64 %84, i64* %83, !mcsema_real_eip !37
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %86 = add i64 %85, -16, !mcsema_real_eip !38
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !38
  %88 = load i64, i64* %RSI_val, !mcsema_real_eip !38
  store i64 %88, i64* %87, !mcsema_real_eip !38
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %90 = add i64 %89, -8, !mcsema_real_eip !39
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !39
  %92 = load i64, i64* %91, !mcsema_real_eip !39
  store i64 %92, i64* %RSI_val, !mcsema_real_eip !39
  %93 = add i64 %89, -24, !mcsema_real_eip !40
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !40
  store i64 %92, i64* %94, !mcsema_real_eip !40
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %96 = add i64 %95, -16, !mcsema_real_eip !41
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !41
  %98 = load i64, i64* %97, !mcsema_real_eip !41
  store i64 %98, i64* %RSI_val, !mcsema_real_eip !41
  %99 = add i64 %95, -32, !mcsema_real_eip !42
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !42
  store i64 %98, i64* %100, !mcsema_real_eip !42
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %102 = add i64 %101, -24, !mcsema_real_eip !43
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !43
  %104 = load i64, i64* %103, !mcsema_real_eip !43
  store i64 %104, i64* %RSI_val, !mcsema_real_eip !43
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !44
  %106 = bitcast i64* %105 to i8*
  %107 = load i8, i8* %106, !mcsema_real_eip !44
  %108 = zext i8 %107 to i64, !mcsema_real_eip !44
  %109 = load i64, i64* %RAX_val, !mcsema_real_eip !44
  %110 = and i64 %109, -256, !mcsema_real_eip !44
  %111 = or i64 %110, %108
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !44
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %113 = add i64 %112, -33, !mcsema_real_eip !45
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !45
  %115 = bitcast i64* %114 to i8*
  store i8 %107, i8* %115, !mcsema_real_eip !45
  br label %block_0x135, !mcsema_real_eip !46

block_0x135:                                      ; preds = %block_0x168, %entry
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %117 = add i64 %116, -33, !mcsema_real_eip !46
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !46
  %119 = bitcast i64* %118 to i8*
  %120 = load i8, i8* %119, !mcsema_real_eip !46
  %121 = sext i8 %120 to i32, !mcsema_real_eip !46
  %122 = zext i32 %121 to i64, !mcsema_real_eip !46
  store i64 %122, i64* %RAX_val, !mcsema_real_eip !46
  store i1 false, i1* %AF_val, !mcsema_real_eip !47
  %123 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !47
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF_val, !mcsema_real_eip !47
  %126 = icmp eq i8 %120, 0
  store i1 %126, i1* %ZF_val, !mcsema_real_eip !47
  %127 = icmp slt i8 %120, 0
  store i1 %127, i1* %SF_val, !mcsema_real_eip !47
  store i1 false, i1* %CF_val, !mcsema_real_eip !47
  store i1 false, i1* %OF_val, !mcsema_real_eip !47
  br i1 %126, label %block_0x192, label %block_0x144, !mcsema_real_eip !48

block_0x144:                                      ; preds = %block_0x135
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %129 = add i64 %128, -33, !mcsema_real_eip !49
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !49
  %131 = bitcast i64* %130 to i8*
  %132 = load i8, i8* %131, !mcsema_real_eip !49
  %133 = sext i8 %132 to i32, !mcsema_real_eip !49
  %134 = zext i32 %133 to i64, !mcsema_real_eip !49
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !49
  %135 = add nsw i32 %133, -47
  %136 = xor i32 %135, %133, !mcsema_real_eip !50
  %137 = and i32 %136, 16, !mcsema_real_eip !50
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !50
  store i1 %138, i1* %AF_val, !mcsema_real_eip !50
  %139 = trunc i32 %135 to i8, !mcsema_real_eip !50
  %140 = tail call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !50
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  store i1 %142, i1* %PF_val, !mcsema_real_eip !50
  %143 = icmp eq i32 %135, 0, !mcsema_real_eip !50
  store i1 %143, i1* %ZF_val, !mcsema_real_eip !50
  %144 = icmp slt i32 %135, 0
  store i1 %144, i1* %SF_val, !mcsema_real_eip !50
  %145 = icmp ult i8 %132, 47
  store i1 %145, i1* %CF_val, !mcsema_real_eip !50
  %146 = and i32 %136, %133, !mcsema_real_eip !50
  %147 = icmp slt i32 %146, 0
  store i1 %147, i1* %OF_val, !mcsema_real_eip !50
  %148 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  br i1 %148, label %block_0x153, label %block_0x15f, !mcsema_real_eip !51

block_0x192:                                      ; preds = %block_0x135
  %150 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !53
  %152 = load i64, i64* %151, !mcsema_real_eip !53
  store i64 %152, i64* %RBP_val, !mcsema_real_eip !53
  %153 = add i64 %150, 16, !mcsema_real_eip !54
  store i64 %153, i64* %RSP_val, !mcsema_real_eip !54
  %154 = load i64, i64* %RAX_val, !mcsema_real_eip !54
  store i64 %154, i64* %RAX, !mcsema_real_eip !54
  %155 = load i64, i64* %RBX_val, !mcsema_real_eip !54
  store i64 %155, i64* %RBX, !mcsema_real_eip !54
  %156 = load i64, i64* %RCX_val, !mcsema_real_eip !54
  store i64 %156, i64* %RCX, !mcsema_real_eip !54
  %157 = load i64, i64* %RDX_val, !mcsema_real_eip !54
  store i64 %157, i64* %RDX, !mcsema_real_eip !54
  %158 = load i64, i64* %RSI_val, !mcsema_real_eip !54
  store i64 %158, i64* %RSI, !mcsema_real_eip !54
  %159 = load i64, i64* %RDI_val, !mcsema_real_eip !54
  store i64 %159, i64* %RDI, !mcsema_real_eip !54
  %160 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  store i64 %160, i64* %RSP, !mcsema_real_eip !54
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  store i64 %161, i64* %RBP, !mcsema_real_eip !54
  %162 = load i64, i64* %R8_val, !mcsema_real_eip !54
  store i64 %162, i64* %R8, !mcsema_real_eip !54
  %163 = load i64, i64* %R9_val, !mcsema_real_eip !54
  store i64 %163, i64* %R9, !mcsema_real_eip !54
  %164 = load i64, i64* %R10_val, !mcsema_real_eip !54
  store i64 %164, i64* %R10, !mcsema_real_eip !54
  %165 = load i64, i64* %R11_val, !mcsema_real_eip !54
  store i64 %165, i64* %R11, !mcsema_real_eip !54
  %166 = load i64, i64* %R12_val, !mcsema_real_eip !54
  store i64 %166, i64* %R12, !mcsema_real_eip !54
  %167 = load i64, i64* %R13_val, !mcsema_real_eip !54
  store i64 %167, i64* %R13, !mcsema_real_eip !54
  %168 = load i64, i64* %R14_val, !mcsema_real_eip !54
  store i64 %168, i64* %R14, !mcsema_real_eip !54
  %169 = load i64, i64* %R15_val, !mcsema_real_eip !54
  store i64 %169, i64* %R15, !mcsema_real_eip !54
  %170 = load i64, i64* %RIP_val, !mcsema_real_eip !54
  store i64 %170, i64* %RIP, !mcsema_real_eip !54
  %171 = load i1, i1* %CF_val, !mcsema_real_eip !54
  store i1 %171, i1* %CF, align 1, !mcsema_real_eip !54
  %172 = load i1, i1* %PF_val, !mcsema_real_eip !54
  store i1 %172, i1* %PF, align 1, !mcsema_real_eip !54
  %173 = load i1, i1* %AF_val, !mcsema_real_eip !54
  store i1 %173, i1* %AF, align 1, !mcsema_real_eip !54
  %174 = load i1, i1* %ZF_val, !mcsema_real_eip !54
  store i1 %174, i1* %ZF, align 1, !mcsema_real_eip !54
  %175 = load i1, i1* %SF_val, !mcsema_real_eip !54
  store i1 %175, i1* %SF, align 1, !mcsema_real_eip !54
  %176 = load i1, i1* %OF_val, !mcsema_real_eip !54
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !54
  %177 = load i1, i1* %DF_val, !mcsema_real_eip !54
  store i1 %177, i1* %DF, align 1, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !54
  %178 = load i1, i1* %FPU_B_val, !mcsema_real_eip !54
  store i1 %178, i1* %FPU_B, align 1, !mcsema_real_eip !54
  %179 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !54
  store i1 %179, i1* %FPU_C3, align 1, !mcsema_real_eip !54
  %180 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !54
  store i3 %180, i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  %181 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !54
  store i1 %181, i1* %FPU_C2, align 1, !mcsema_real_eip !54
  %182 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !54
  store i1 %182, i1* %FPU_C1, align 1, !mcsema_real_eip !54
  %183 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !54
  store i1 %183, i1* %FPU_C0, align 1, !mcsema_real_eip !54
  %184 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !54
  store i1 %184, i1* %FPU_ES, align 1, !mcsema_real_eip !54
  %185 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !54
  store i1 %185, i1* %FPU_SF, align 1, !mcsema_real_eip !54
  %186 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !54
  store i1 %186, i1* %FPU_PE, align 1, !mcsema_real_eip !54
  %187 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !54
  store i1 %187, i1* %FPU_UE, align 1, !mcsema_real_eip !54
  %188 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !54
  store i1 %188, i1* %FPU_OE, align 1, !mcsema_real_eip !54
  %189 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !54
  store i1 %189, i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  %190 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !54
  store i1 %190, i1* %FPU_DE, align 1, !mcsema_real_eip !54
  %191 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !54
  store i1 %191, i1* %FPU_IE, align 1, !mcsema_real_eip !54
  %192 = load i1, i1* %FPU_X_val, !mcsema_real_eip !54
  store i1 %192, i1* %FPU_X, align 1, !mcsema_real_eip !54
  %193 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !54
  store i2 %193, i2* %FPU_RC, align 1, !mcsema_real_eip !54
  %194 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !54
  store i2 %194, i2* %FPU_PC, align 1, !mcsema_real_eip !54
  %195 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !54
  store i1 %195, i1* %FPU_PM, align 1, !mcsema_real_eip !54
  %196 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !54
  store i1 %196, i1* %FPU_UM, align 1, !mcsema_real_eip !54
  %197 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !54
  store i1 %197, i1* %FPU_OM, align 1, !mcsema_real_eip !54
  %198 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !54
  store i1 %198, i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  %199 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !54
  store i1 %199, i1* %FPU_DM, align 1, !mcsema_real_eip !54
  %200 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !54
  store i1 %200, i1* %FPU_IM, align 1, !mcsema_real_eip !54
  %201 = load i64, i64* %53, align 4
  store i64 %201, i64* %52, align 4
  %202 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  store i16 %202, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  %203 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  store i64 %203, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !54
  %204 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  store i16 %204, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  %205 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  store i64 %205, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !54
  %206 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !54
  store i11 %206, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !54
  %207 = load i128, i128* %XMM0_val, !mcsema_real_eip !54
  store i128 %207, i128* %XMM0, align 1, !mcsema_real_eip !54
  %208 = load i128, i128* %XMM1_val, !mcsema_real_eip !54
  store i128 %208, i128* %XMM1, align 1, !mcsema_real_eip !54
  %209 = load i128, i128* %XMM2_val, !mcsema_real_eip !54
  store i128 %209, i128* %XMM2, align 1, !mcsema_real_eip !54
  %210 = load i128, i128* %XMM3_val, !mcsema_real_eip !54
  store i128 %210, i128* %XMM3, align 1, !mcsema_real_eip !54
  %211 = load i128, i128* %XMM4_val, !mcsema_real_eip !54
  store i128 %211, i128* %XMM4, align 1, !mcsema_real_eip !54
  %212 = load i128, i128* %XMM5_val, !mcsema_real_eip !54
  store i128 %212, i128* %XMM5, align 1, !mcsema_real_eip !54
  %213 = load i128, i128* %XMM6_val, !mcsema_real_eip !54
  store i128 %213, i128* %XMM6, align 1, !mcsema_real_eip !54
  %214 = load i128, i128* %XMM7_val, !mcsema_real_eip !54
  store i128 %214, i128* %XMM7, align 1, !mcsema_real_eip !54
  %215 = load i128, i128* %XMM8_val, !mcsema_real_eip !54
  store i128 %215, i128* %XMM8, align 1, !mcsema_real_eip !54
  %216 = load i128, i128* %XMM9_val, !mcsema_real_eip !54
  store i128 %216, i128* %XMM9, align 1, !mcsema_real_eip !54
  %217 = load i128, i128* %XMM10_val, !mcsema_real_eip !54
  store i128 %217, i128* %XMM10, align 1, !mcsema_real_eip !54
  %218 = load i128, i128* %XMM11_val, !mcsema_real_eip !54
  store i128 %218, i128* %XMM11, align 1, !mcsema_real_eip !54
  %219 = load i128, i128* %XMM12_val, !mcsema_real_eip !54
  store i128 %219, i128* %XMM12, align 1, !mcsema_real_eip !54
  %220 = load i128, i128* %XMM13_val, !mcsema_real_eip !54
  store i128 %220, i128* %XMM13, align 1, !mcsema_real_eip !54
  %221 = load i128, i128* %XMM14_val, !mcsema_real_eip !54
  store i128 %221, i128* %XMM14, align 1, !mcsema_real_eip !54
  %222 = load i128, i128* %XMM15_val, !mcsema_real_eip !54
  store i128 %222, i128* %XMM15, align 1, !mcsema_real_eip !54
  %223 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !54
  store i64 %223, i64* %STACK_BASE, align 1, !mcsema_real_eip !54
  %224 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  store i64 %224, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54

block_0x153:                                      ; preds = %block_0x144
  %225 = add i64 %149, -32, !mcsema_real_eip !55
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !55
  %227 = load i64, i64* %226, !mcsema_real_eip !55
  store i64 %227, i64* %RAX_val, !mcsema_real_eip !55
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !56
  %229 = bitcast i64* %228 to i8*
  store i8 92, i8* %229, !mcsema_real_eip !56
  br label %block_0x168, !mcsema_real_eip !57

block_0x15f:                                      ; preds = %block_0x144
  %230 = add i64 %149, -33, !mcsema_real_eip !52
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !52
  %232 = bitcast i64* %231 to i8*
  %233 = load i8, i8* %232, !mcsema_real_eip !52
  %234 = zext i8 %233 to i64, !mcsema_real_eip !52
  %235 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  %236 = and i64 %235, -256, !mcsema_real_eip !52
  %237 = or i64 %236, %234
  store i64 %237, i64* %RAX_val, !mcsema_real_eip !52
  %238 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %239 = add i64 %238, -32, !mcsema_real_eip !58
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !58
  %241 = load i64, i64* %240, !mcsema_real_eip !58
  store i64 %241, i64* %RCX_val, !mcsema_real_eip !58
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !59
  %243 = load i64, i64* %RAX_val, !mcsema_real_eip !59
  %244 = trunc i64 %243 to i8, !mcsema_real_eip !59
  %245 = bitcast i64* %242 to i8*
  store i8 %244, i8* %245, !mcsema_real_eip !59
  br label %block_0x168, !mcsema_real_eip !55

block_0x168:                                      ; preds = %block_0x15f, %block_0x153
  %246 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %247 = add i64 %246, -24, !mcsema_real_eip !60
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !60
  %249 = load i64, i64* %248, !mcsema_real_eip !60
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %249, i64 1)
  %250 = extractvalue { i64, i1 } %uadd, 0
  %251 = xor i64 %250, %249, !mcsema_real_eip !61
  %252 = and i64 %251, 16, !mcsema_real_eip !61
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !61
  store i1 %253, i1* %AF_val, !mcsema_real_eip !61
  %254 = icmp slt i64 %250, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !61
  %255 = icmp eq i64 %250, 0, !mcsema_real_eip !61
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !61
  %256 = xor i64 %249, -9223372036854775808, !mcsema_real_eip !61
  %257 = and i64 %251, %256, !mcsema_real_eip !61
  %258 = icmp slt i64 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !61
  %259 = trunc i64 %250 to i8, !mcsema_real_eip !61
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !61
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !61
  %263 = extractvalue { i64, i1 } %uadd, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !61
  store i64 %250, i64* %RAX_val, !mcsema_real_eip !61
  %264 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %265 = add i64 %264, -24, !mcsema_real_eip !62
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !62
  store i64 %250, i64* %266, !mcsema_real_eip !62
  %267 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %268 = add i64 %267, -32, !mcsema_real_eip !63
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !63
  %270 = load i64, i64* %269, !mcsema_real_eip !63
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1)
  %271 = extractvalue { i64, i1 } %uadd71, 0
  %272 = xor i64 %271, %270, !mcsema_real_eip !64
  %273 = and i64 %272, 16, !mcsema_real_eip !64
  %274 = icmp ne i64 %273, 0, !mcsema_real_eip !64
  store i1 %274, i1* %AF_val, !mcsema_real_eip !64
  %275 = icmp slt i64 %271, 0
  store i1 %275, i1* %SF_val, !mcsema_real_eip !64
  %276 = icmp eq i64 %271, 0, !mcsema_real_eip !64
  store i1 %276, i1* %ZF_val, !mcsema_real_eip !64
  %277 = xor i64 %270, -9223372036854775808, !mcsema_real_eip !64
  %278 = and i64 %272, %277, !mcsema_real_eip !64
  %279 = icmp slt i64 %278, 0
  store i1 %279, i1* %OF_val, !mcsema_real_eip !64
  %280 = trunc i64 %271 to i8, !mcsema_real_eip !64
  %281 = tail call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !64
  %282 = and i8 %281, 1
  %283 = icmp eq i8 %282, 0
  store i1 %283, i1* %PF_val, !mcsema_real_eip !64
  %284 = extractvalue { i64, i1 } %uadd71, 1
  store i1 %284, i1* %CF_val, !mcsema_real_eip !64
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !64
  %285 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %286 = add i64 %285, -32, !mcsema_real_eip !65
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !65
  store i64 %271, i64* %287, !mcsema_real_eip !65
  %288 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %289 = add i64 %288, -24, !mcsema_real_eip !66
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !66
  %291 = load i64, i64* %290, !mcsema_real_eip !66
  store i64 %291, i64* %RAX_val, !mcsema_real_eip !66
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !67
  %293 = bitcast i64* %292 to i8*
  %294 = load i8, i8* %293, !mcsema_real_eip !67
  %295 = zext i8 %294 to i64, !mcsema_real_eip !67
  %296 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %297 = and i64 %296, -256, !mcsema_real_eip !67
  %298 = or i64 %297, %295
  store i64 %298, i64* %RCX_val, !mcsema_real_eip !67
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %300 = add i64 %299, -33, !mcsema_real_eip !68
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !68
  %302 = bitcast i64* %301 to i8*
  store i8 %294, i8* %302, !mcsema_real_eip !68
  br label %block_0x135, !mcsema_real_eip !69
}

define internal x86_64_sysvcc void @sub_90(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !70
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !70
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !70
  %XMM15_val = alloca i128, !mcsema_real_eip !70
  %XMM14_val = alloca i128, !mcsema_real_eip !70
  %XMM13_val = alloca i128, !mcsema_real_eip !70
  %XMM12_val = alloca i128, !mcsema_real_eip !70
  %XMM11_val = alloca i128, !mcsema_real_eip !70
  %XMM10_val = alloca i128, !mcsema_real_eip !70
  %XMM9_val = alloca i128, !mcsema_real_eip !70
  %XMM8_val = alloca i128, !mcsema_real_eip !70
  %XMM7_val = alloca i128, !mcsema_real_eip !70
  %XMM6_val = alloca i128, !mcsema_real_eip !70
  %XMM5_val = alloca i128, !mcsema_real_eip !70
  %XMM4_val = alloca i128, !mcsema_real_eip !70
  %XMM3_val = alloca i128, !mcsema_real_eip !70
  %XMM2_val = alloca i128, !mcsema_real_eip !70
  %XMM1_val = alloca i128, !mcsema_real_eip !70
  %XMM0_val = alloca i128, !mcsema_real_eip !70
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !70
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !70
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !70
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !70
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !70
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !70
  %FPU_IM_val = alloca i1, !mcsema_real_eip !70
  %FPU_DM_val = alloca i1, !mcsema_real_eip !70
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !70
  %FPU_OM_val = alloca i1, !mcsema_real_eip !70
  %FPU_UM_val = alloca i1, !mcsema_real_eip !70
  %FPU_PM_val = alloca i1, !mcsema_real_eip !70
  %FPU_PC_val = alloca i2, !mcsema_real_eip !70
  %FPU_RC_val = alloca i2, !mcsema_real_eip !70
  %FPU_X_val = alloca i1, !mcsema_real_eip !70
  %FPU_IE_val = alloca i1, !mcsema_real_eip !70
  %FPU_DE_val = alloca i1, !mcsema_real_eip !70
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !70
  %FPU_OE_val = alloca i1, !mcsema_real_eip !70
  %FPU_UE_val = alloca i1, !mcsema_real_eip !70
  %FPU_PE_val = alloca i1, !mcsema_real_eip !70
  %FPU_SF_val = alloca i1, !mcsema_real_eip !70
  %FPU_ES_val = alloca i1, !mcsema_real_eip !70
  %FPU_C0_val = alloca i1, !mcsema_real_eip !70
  %FPU_C1_val = alloca i1, !mcsema_real_eip !70
  %FPU_C2_val = alloca i1, !mcsema_real_eip !70
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !70
  %FPU_C3_val = alloca i1, !mcsema_real_eip !70
  %FPU_B_val = alloca i1, !mcsema_real_eip !70
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !70
  %DF_val = alloca i1, !mcsema_real_eip !70
  %OF_val = alloca i1, !mcsema_real_eip !70
  %SF_val = alloca i1, !mcsema_real_eip !70
  %CF_val = alloca i1, !mcsema_real_eip !70
  %AF_val = alloca i1, !mcsema_real_eip !70
  %PF_val = alloca i1, !mcsema_real_eip !70
  %ZF_val = alloca i1, !mcsema_real_eip !70
  %RIP_val = alloca i64, !mcsema_real_eip !70
  %R14_val = alloca i64, !mcsema_real_eip !70
  %R13_val = alloca i64, !mcsema_real_eip !70
  %R12_val = alloca i64, !mcsema_real_eip !70
  %R11_val = alloca i64, !mcsema_real_eip !70
  %R10_val = alloca i64, !mcsema_real_eip !70
  %R9_val = alloca i64, !mcsema_real_eip !70
  %R8_val = alloca i64, !mcsema_real_eip !70
  %RSP_val = alloca i64, !mcsema_real_eip !70
  %RBP_val = alloca i64, !mcsema_real_eip !70
  %RDI_val = alloca i64, !mcsema_real_eip !70
  %RSI_val = alloca i64, !mcsema_real_eip !70
  %RDX_val = alloca i64, !mcsema_real_eip !70
  %RCX_val = alloca i64, !mcsema_real_eip !70
  %RBX_val = alloca i64, !mcsema_real_eip !70
  %RAX_val = alloca i64, !mcsema_real_eip !70
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !70
  %1 = load i64, i64* %RAX, !mcsema_real_eip !70
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !70
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !70
  %2 = load i64, i64* %RBX, !mcsema_real_eip !70
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !70
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !70
  %3 = load i64, i64* %RCX, !mcsema_real_eip !70
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !70
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !70
  %4 = load i64, i64* %RDX, !mcsema_real_eip !70
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !70
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !70
  %5 = load i64, i64* %RSI, !mcsema_real_eip !70
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !70
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !70
  %6 = load i64, i64* %RDI, !mcsema_real_eip !70
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !70
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !70
  %7 = load i64, i64* %RSP, !mcsema_real_eip !70
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !70
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !70
  %8 = load i64, i64* %RBP, !mcsema_real_eip !70
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !70
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !70
  %9 = load i64, i64* %R8, !mcsema_real_eip !70
  store i64 %9, i64* %R8_val, !mcsema_real_eip !70
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !70
  %10 = load i64, i64* %R9, !mcsema_real_eip !70
  store i64 %10, i64* %R9_val, !mcsema_real_eip !70
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !70
  %11 = load i64, i64* %R10, !mcsema_real_eip !70
  store i64 %11, i64* %R10_val, !mcsema_real_eip !70
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !70
  %12 = load i64, i64* %R11, !mcsema_real_eip !70
  store i64 %12, i64* %R11_val, !mcsema_real_eip !70
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !70
  %13 = load i64, i64* %R12, !mcsema_real_eip !70
  store i64 %13, i64* %R12_val, !mcsema_real_eip !70
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !70
  %14 = load i64, i64* %R13, !mcsema_real_eip !70
  store i64 %14, i64* %R13_val, !mcsema_real_eip !70
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !70
  %15 = load i64, i64* %R14, !mcsema_real_eip !70
  store i64 %15, i64* %R14_val, !mcsema_real_eip !70
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !70
  %16 = load i64, i64* %R15, !mcsema_real_eip !70
  store i64 %16, i64* %R15_val, !mcsema_real_eip !70
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !70
  %17 = load i64, i64* %RIP, !mcsema_real_eip !70
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !70
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !70
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !70
  store i1 %18, i1* %CF_val, !mcsema_real_eip !70
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !70
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !70
  store i1 %19, i1* %PF_val, !mcsema_real_eip !70
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !70
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !70
  store i1 %20, i1* %AF_val, !mcsema_real_eip !70
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !70
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !70
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !70
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !70
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !70
  store i1 %22, i1* %SF_val, !mcsema_real_eip !70
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !70
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !70
  store i1 %23, i1* %OF_val, !mcsema_real_eip !70
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !70
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !70
  store i1 %24, i1* %DF_val, !mcsema_real_eip !70
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !70
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !70
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !70
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !70
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !70
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !70
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !70
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !70
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !70
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !70
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !70
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !70
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !70
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !70
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !70
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !70
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !70
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !70
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !70
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !70
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !70
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !70
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !70
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !70
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !70
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !70
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !70
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !70
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !70
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !70
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !70
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !70
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !70
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !70
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !70
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !70
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !70
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !70
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !70
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !70
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !70
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !70
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !70
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !70
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !70
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !70
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !70
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !70
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !70
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !70
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !70
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !70
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !70
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !70
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !70
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !70
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !70
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !70
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !70
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !70
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !70
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !70
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !70
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !70
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !70
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !70
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !70
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !70
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !70
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !70
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !70
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !70
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !70
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !70
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !70
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !70
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !70
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !70
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !70
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !70
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !70
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !70
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !70
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !70
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !70
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !70
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !70
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !70
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !70
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !70
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !70
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !70
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !70
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !70
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !70
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !70
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !70
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !70
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !70
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !70
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !70
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !70
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !70
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !70
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !70
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !70
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !70
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !70
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !70
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !70
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !70
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !70
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !70
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !70
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !70
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !70
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !70
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !70
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !70
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !70
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !70
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !70
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !70
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !70
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !70
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !70
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !70
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !70
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !70
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !70
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !70
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !70
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !70
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !70
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !70
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !70
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !70
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !70
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !70
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !70
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !70
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !70
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !70
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !70
  store i64 %78, i64* %81, !mcsema_real_eip !70
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !71
  %82 = add i64 %79, -40
  %83 = xor i64 %82, %80, !mcsema_real_eip !72
  %84 = and i64 %83, 16, !mcsema_real_eip !72
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !72
  store i1 %85, i1* %AF_val, !mcsema_real_eip !72
  %86 = trunc i64 %82 to i8, !mcsema_real_eip !72
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !72
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF_val, !mcsema_real_eip !72
  %90 = icmp eq i64 %82, 0, !mcsema_real_eip !72
  store i1 %90, i1* %ZF_val, !mcsema_real_eip !72
  %91 = icmp slt i64 %82, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !72
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !72
  store i1 %92, i1* %CF_val, !mcsema_real_eip !72
  %93 = and i64 %83, %80, !mcsema_real_eip !72
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !72
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !72
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %96 = add i64 %95, -8, !mcsema_real_eip !73
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !73
  %98 = load i64, i64* %RDI_val, !mcsema_real_eip !73
  store i64 %98, i64* %97, !mcsema_real_eip !73
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %100 = add i64 %99, -12, !mcsema_real_eip !74
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !74
  %102 = bitcast i64* %101 to i32*
  store i32 1, i32* %102, !mcsema_real_eip !74
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %104 = add i64 %103, -8, !mcsema_real_eip !75
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !75
  %106 = load i64, i64* %105, !mcsema_real_eip !75
  store i64 %106, i64* %RDI_val, !mcsema_real_eip !75
  %107 = tail call x86_64_sysvcc i64 @strlen(i64 %106), !mcsema_real_eip !76
  store i64 %107, i64* %RAX_val, !mcsema_real_eip !76
  %108 = and i64 %107, 4294967295
  store i64 %108, i64* %RCX_val, !mcsema_real_eip !77
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %110 = add i64 %109, -16, !mcsema_real_eip !78
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !78
  %112 = trunc i64 %107 to i32, !mcsema_real_eip !78
  %113 = bitcast i64* %111 to i32*
  store i32 %112, i32* %113, !mcsema_real_eip !78
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %115 = add i64 %114, -16, !mcsema_real_eip !79
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !79
  %117 = bitcast i64* %116 to i32*
  %118 = load i32, i32* %117, !mcsema_real_eip !79
  %119 = add i32 %118, -1
  %120 = xor i32 %119, %118, !mcsema_real_eip !79
  %121 = and i32 %120, 16, !mcsema_real_eip !79
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !79
  store i1 %122, i1* %AF_val, !mcsema_real_eip !79
  %123 = trunc i32 %119 to i8, !mcsema_real_eip !79
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !79
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF_val, !mcsema_real_eip !79
  %127 = icmp eq i32 %119, 0, !mcsema_real_eip !79
  store i1 %127, i1* %ZF_val, !mcsema_real_eip !79
  %128 = icmp slt i32 %119, 0
  store i1 %128, i1* %SF_val, !mcsema_real_eip !79
  %129 = icmp eq i32 %118, 0
  store i1 %129, i1* %CF_val, !mcsema_real_eip !79
  %130 = and i32 %120, %118, !mcsema_real_eip !79
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF_val, !mcsema_real_eip !79
  %132 = xor i1 %128, %131
  %133 = load i1, i1* %ZF_val, !mcsema_real_eip !80
  %134 = or i1 %133, %132, !mcsema_real_eip !80
  br i1 %134, label %block_0xf9, label %block_0xbe, !mcsema_real_eip !80

block_0xbe:                                       ; preds = %entry
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %136 = add i64 %135, -8, !mcsema_real_eip !81
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !81
  %138 = load i64, i64* %137, !mcsema_real_eip !81
  store i64 %138, i64* %RAX_val, !mcsema_real_eip !81
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !82
  %140 = bitcast i64* %139 to i8*
  %141 = load i8, i8* %140, !mcsema_real_eip !82
  %142 = zext i8 %141 to i64, !mcsema_real_eip !82
  %143 = load i64, i64* %RCX_val, !mcsema_real_eip !82
  %144 = and i64 %143, -256, !mcsema_real_eip !82
  %145 = or i64 %144, %142
  store i64 %145, i64* %RCX_val, !mcsema_real_eip !82
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %147 = add i64 %146, -17, !mcsema_real_eip !83
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !83
  %149 = bitcast i64* %148 to i8*
  store i8 %141, i8* %149, !mcsema_real_eip !83
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %151 = add i64 %150, -16, !mcsema_real_eip !84
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !84
  %153 = bitcast i64* %152 to i32*
  %154 = load i32, i32* %153, !mcsema_real_eip !84
  %155 = add i32 %154, -1
  %156 = xor i32 %155, %154, !mcsema_real_eip !85
  %157 = and i32 %156, 16, !mcsema_real_eip !85
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !85
  store i1 %158, i1* %AF_val, !mcsema_real_eip !85
  %159 = trunc i32 %155 to i8, !mcsema_real_eip !85
  %160 = tail call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !85
  %161 = and i8 %160, 1
  %162 = icmp eq i8 %161, 0
  store i1 %162, i1* %PF_val, !mcsema_real_eip !85
  %163 = icmp eq i32 %155, 0, !mcsema_real_eip !85
  store i1 %163, i1* %ZF_val, !mcsema_real_eip !85
  %164 = icmp slt i32 %155, 0
  store i1 %164, i1* %SF_val, !mcsema_real_eip !85
  %165 = icmp eq i32 %154, 0
  store i1 %165, i1* %CF_val, !mcsema_real_eip !85
  %166 = and i32 %156, %154, !mcsema_real_eip !85
  %167 = icmp slt i32 %166, 0
  store i1 %167, i1* %OF_val, !mcsema_real_eip !85
  %168 = zext i32 %155 to i64, !mcsema_real_eip !85
  store i64 %168, i64* %RDX_val, !mcsema_real_eip !85
  %169 = sext i32 %155 to i64, !mcsema_real_eip !86
  store i64 %169, i64* %RAX_val, !mcsema_real_eip !86
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %171 = add i64 %170, -8, !mcsema_real_eip !87
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !87
  %173 = load i64, i64* %172, !mcsema_real_eip !87
  store i64 %173, i64* %RSI_val, !mcsema_real_eip !87
  %174 = add i64 %173, %169, !mcsema_real_eip !88
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !88
  %176 = bitcast i64* %175 to i8*
  %177 = load i8, i8* %176, !mcsema_real_eip !88
  %178 = zext i8 %177 to i64, !mcsema_real_eip !88
  %179 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  %180 = and i64 %179, -256, !mcsema_real_eip !88
  %181 = or i64 %180, %178
  store i64 %181, i64* %RCX_val, !mcsema_real_eip !88
  %182 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %183 = add i64 %182, -18, !mcsema_real_eip !89
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !89
  %185 = bitcast i64* %184 to i8*
  store i8 %177, i8* %185, !mcsema_real_eip !89
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %187 = add i64 %186, -17, !mcsema_real_eip !90
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !90
  %189 = bitcast i64* %188 to i8*
  %190 = load i8, i8* %189, !mcsema_real_eip !90
  %191 = sext i8 %190 to i32, !mcsema_real_eip !90
  %192 = zext i32 %191 to i64, !mcsema_real_eip !90
  store i64 %192, i64* %RDX_val, !mcsema_real_eip !90
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %194 = add i64 %193, -18, !mcsema_real_eip !91
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !91
  %196 = bitcast i64* %195 to i8*
  %197 = load i8, i8* %196, !mcsema_real_eip !91
  %198 = sext i8 %197 to i32, !mcsema_real_eip !91
  %199 = zext i32 %198 to i64, !mcsema_real_eip !91
  store i64 %199, i64* %RDI_val, !mcsema_real_eip !91
  %200 = load i64, i64* %RDX_val, !mcsema_real_eip !92
  %201 = trunc i64 %200 to i32, !mcsema_real_eip !92
  %202 = sub i32 %201, %198, !mcsema_real_eip !92
  %203 = xor i32 %202, %201, !mcsema_real_eip !92
  %204 = xor i32 %203, %198, !mcsema_real_eip !92
  %205 = and i32 %204, 16, !mcsema_real_eip !92
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !92
  store i1 %206, i1* %AF_val, !mcsema_real_eip !92
  %207 = trunc i32 %202 to i8, !mcsema_real_eip !92
  %208 = tail call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !92
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %PF_val, !mcsema_real_eip !92
  %211 = icmp eq i32 %201, %198
  store i1 %211, i1* %ZF_val, !mcsema_real_eip !92
  %212 = icmp slt i32 %202, 0
  store i1 %212, i1* %SF_val, !mcsema_real_eip !92
  %213 = icmp ult i32 %201, %198, !mcsema_real_eip !92
  store i1 %213, i1* %CF_val, !mcsema_real_eip !92
  %214 = xor i32 %201, %198, !mcsema_real_eip !92
  %215 = and i32 %203, %214, !mcsema_real_eip !92
  %216 = icmp slt i32 %215, 0
  store i1 %216, i1* %OF_val, !mcsema_real_eip !92
  %217 = load i1, i1* %ZF_val, !mcsema_real_eip !93
  br i1 %217, label %block_0xed, label %block_0xf9, !mcsema_real_eip !93

block_0xf9:                                       ; preds = %block_0xed, %block_0xbe, %entry
  %218 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %219 = add i64 %218, -12, !mcsema_real_eip !94
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !94
  %221 = bitcast i64* %220 to i32*
  %222 = load i32, i32* %221, !mcsema_real_eip !94
  %223 = zext i32 %222 to i64, !mcsema_real_eip !94
  store i64 %223, i64* %RAX_val, !mcsema_real_eip !94
  %224 = load i64, i64* %RSP_val, !mcsema_real_eip !95
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 32)
  %225 = extractvalue { i64, i1 } %uadd, 0
  %226 = xor i64 %225, %224, !mcsema_real_eip !95
  %227 = and i64 %226, 16, !mcsema_real_eip !95
  %228 = icmp ne i64 %227, 0, !mcsema_real_eip !95
  store i1 %228, i1* %AF_val, !mcsema_real_eip !95
  %229 = icmp slt i64 %225, 0
  store i1 %229, i1* %SF_val, !mcsema_real_eip !95
  %230 = icmp eq i64 %225, 0, !mcsema_real_eip !95
  store i1 %230, i1* %ZF_val, !mcsema_real_eip !95
  %231 = xor i64 %224, -9223372036854775808, !mcsema_real_eip !95
  %232 = and i64 %226, %231, !mcsema_real_eip !95
  %233 = icmp slt i64 %232, 0
  store i1 %233, i1* %OF_val, !mcsema_real_eip !95
  %234 = trunc i64 %225 to i8, !mcsema_real_eip !95
  %235 = tail call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !95
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  store i1 %237, i1* %PF_val, !mcsema_real_eip !95
  %238 = extractvalue { i64, i1 } %uadd, 1
  store i1 %238, i1* %CF_val, !mcsema_real_eip !95
  store i64 %225, i64* %RSP_val, !mcsema_real_eip !95
  %239 = inttoptr i64 %225 to i64*, !mcsema_real_eip !96
  %240 = load i64, i64* %239, !mcsema_real_eip !96
  store i64 %240, i64* %RBP_val, !mcsema_real_eip !96
  %241 = add i64 %225, 16, !mcsema_real_eip !97
  store i64 %241, i64* %RSP_val, !mcsema_real_eip !97
  %242 = load i64, i64* %RAX_val, !mcsema_real_eip !97
  store i64 %242, i64* %RAX, !mcsema_real_eip !97
  %243 = load i64, i64* %RBX_val, !mcsema_real_eip !97
  store i64 %243, i64* %RBX, !mcsema_real_eip !97
  %244 = load i64, i64* %RCX_val, !mcsema_real_eip !97
  store i64 %244, i64* %RCX, !mcsema_real_eip !97
  %245 = load i64, i64* %RDX_val, !mcsema_real_eip !97
  store i64 %245, i64* %RDX, !mcsema_real_eip !97
  %246 = load i64, i64* %RSI_val, !mcsema_real_eip !97
  store i64 %246, i64* %RSI, !mcsema_real_eip !97
  %247 = load i64, i64* %RDI_val, !mcsema_real_eip !97
  store i64 %247, i64* %RDI, !mcsema_real_eip !97
  %248 = load i64, i64* %RSP_val, !mcsema_real_eip !97
  store i64 %248, i64* %RSP, !mcsema_real_eip !97
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  store i64 %249, i64* %RBP, !mcsema_real_eip !97
  %250 = load i64, i64* %R8_val, !mcsema_real_eip !97
  store i64 %250, i64* %R8, !mcsema_real_eip !97
  %251 = load i64, i64* %R9_val, !mcsema_real_eip !97
  store i64 %251, i64* %R9, !mcsema_real_eip !97
  %252 = load i64, i64* %R10_val, !mcsema_real_eip !97
  store i64 %252, i64* %R10, !mcsema_real_eip !97
  %253 = load i64, i64* %R11_val, !mcsema_real_eip !97
  store i64 %253, i64* %R11, !mcsema_real_eip !97
  %254 = load i64, i64* %R12_val, !mcsema_real_eip !97
  store i64 %254, i64* %R12, !mcsema_real_eip !97
  %255 = load i64, i64* %R13_val, !mcsema_real_eip !97
  store i64 %255, i64* %R13, !mcsema_real_eip !97
  %256 = load i64, i64* %R14_val, !mcsema_real_eip !97
  store i64 %256, i64* %R14, !mcsema_real_eip !97
  %257 = load i64, i64* %R15_val, !mcsema_real_eip !97
  store i64 %257, i64* %R15, !mcsema_real_eip !97
  %258 = load i64, i64* %RIP_val, !mcsema_real_eip !97
  store i64 %258, i64* %RIP, !mcsema_real_eip !97
  %259 = load i1, i1* %CF_val, !mcsema_real_eip !97
  store i1 %259, i1* %CF, align 1, !mcsema_real_eip !97
  %260 = load i1, i1* %PF_val, !mcsema_real_eip !97
  store i1 %260, i1* %PF, align 1, !mcsema_real_eip !97
  %261 = load i1, i1* %AF_val, !mcsema_real_eip !97
  store i1 %261, i1* %AF, align 1, !mcsema_real_eip !97
  %262 = load i1, i1* %ZF_val, !mcsema_real_eip !97
  store i1 %262, i1* %ZF, align 1, !mcsema_real_eip !97
  %263 = load i1, i1* %SF_val, !mcsema_real_eip !97
  store i1 %263, i1* %SF, align 1, !mcsema_real_eip !97
  %264 = load i1, i1* %OF_val, !mcsema_real_eip !97
  store i1 %264, i1* %OF, align 1, !mcsema_real_eip !97
  %265 = load i1, i1* %DF_val, !mcsema_real_eip !97
  store i1 %265, i1* %DF, align 1, !mcsema_real_eip !97
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !97
  %266 = load i1, i1* %FPU_B_val, !mcsema_real_eip !97
  store i1 %266, i1* %FPU_B, align 1, !mcsema_real_eip !97
  %267 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !97
  store i1 %267, i1* %FPU_C3, align 1, !mcsema_real_eip !97
  %268 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !97
  store i3 %268, i3* %FPU_TOP, align 1, !mcsema_real_eip !97
  %269 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !97
  store i1 %269, i1* %FPU_C2, align 1, !mcsema_real_eip !97
  %270 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !97
  store i1 %270, i1* %FPU_C1, align 1, !mcsema_real_eip !97
  %271 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !97
  store i1 %271, i1* %FPU_C0, align 1, !mcsema_real_eip !97
  %272 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !97
  store i1 %272, i1* %FPU_ES, align 1, !mcsema_real_eip !97
  %273 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !97
  store i1 %273, i1* %FPU_SF, align 1, !mcsema_real_eip !97
  %274 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !97
  store i1 %274, i1* %FPU_PE, align 1, !mcsema_real_eip !97
  %275 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !97
  store i1 %275, i1* %FPU_UE, align 1, !mcsema_real_eip !97
  %276 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !97
  store i1 %276, i1* %FPU_OE, align 1, !mcsema_real_eip !97
  %277 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !97
  store i1 %277, i1* %FPU_ZE, align 1, !mcsema_real_eip !97
  %278 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !97
  store i1 %278, i1* %FPU_DE, align 1, !mcsema_real_eip !97
  %279 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !97
  store i1 %279, i1* %FPU_IE, align 1, !mcsema_real_eip !97
  %280 = load i1, i1* %FPU_X_val, !mcsema_real_eip !97
  store i1 %280, i1* %FPU_X, align 1, !mcsema_real_eip !97
  %281 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !97
  store i2 %281, i2* %FPU_RC, align 1, !mcsema_real_eip !97
  %282 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !97
  store i2 %282, i2* %FPU_PC, align 1, !mcsema_real_eip !97
  %283 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !97
  store i1 %283, i1* %FPU_PM, align 1, !mcsema_real_eip !97
  %284 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !97
  store i1 %284, i1* %FPU_UM, align 1, !mcsema_real_eip !97
  %285 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !97
  store i1 %285, i1* %FPU_OM, align 1, !mcsema_real_eip !97
  %286 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !97
  store i1 %286, i1* %FPU_ZM, align 1, !mcsema_real_eip !97
  %287 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !97
  store i1 %287, i1* %FPU_DM, align 1, !mcsema_real_eip !97
  %288 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !97
  store i1 %288, i1* %FPU_IM, align 1, !mcsema_real_eip !97
  %289 = load i64, i64* %53, align 4
  store i64 %289, i64* %52, align 4
  %290 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !97
  store i16 %290, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !97
  %291 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !97
  store i64 %291, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !97
  %292 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !97
  store i16 %292, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !97
  %293 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !97
  store i64 %293, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !97
  %294 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !97
  store i11 %294, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !97
  %295 = load i128, i128* %XMM0_val, !mcsema_real_eip !97
  store i128 %295, i128* %XMM0, align 1, !mcsema_real_eip !97
  %296 = load i128, i128* %XMM1_val, !mcsema_real_eip !97
  store i128 %296, i128* %XMM1, align 1, !mcsema_real_eip !97
  %297 = load i128, i128* %XMM2_val, !mcsema_real_eip !97
  store i128 %297, i128* %XMM2, align 1, !mcsema_real_eip !97
  %298 = load i128, i128* %XMM3_val, !mcsema_real_eip !97
  store i128 %298, i128* %XMM3, align 1, !mcsema_real_eip !97
  %299 = load i128, i128* %XMM4_val, !mcsema_real_eip !97
  store i128 %299, i128* %XMM4, align 1, !mcsema_real_eip !97
  %300 = load i128, i128* %XMM5_val, !mcsema_real_eip !97
  store i128 %300, i128* %XMM5, align 1, !mcsema_real_eip !97
  %301 = load i128, i128* %XMM6_val, !mcsema_real_eip !97
  store i128 %301, i128* %XMM6, align 1, !mcsema_real_eip !97
  %302 = load i128, i128* %XMM7_val, !mcsema_real_eip !97
  store i128 %302, i128* %XMM7, align 1, !mcsema_real_eip !97
  %303 = load i128, i128* %XMM8_val, !mcsema_real_eip !97
  store i128 %303, i128* %XMM8, align 1, !mcsema_real_eip !97
  %304 = load i128, i128* %XMM9_val, !mcsema_real_eip !97
  store i128 %304, i128* %XMM9, align 1, !mcsema_real_eip !97
  %305 = load i128, i128* %XMM10_val, !mcsema_real_eip !97
  store i128 %305, i128* %XMM10, align 1, !mcsema_real_eip !97
  %306 = load i128, i128* %XMM11_val, !mcsema_real_eip !97
  store i128 %306, i128* %XMM11, align 1, !mcsema_real_eip !97
  %307 = load i128, i128* %XMM12_val, !mcsema_real_eip !97
  store i128 %307, i128* %XMM12, align 1, !mcsema_real_eip !97
  %308 = load i128, i128* %XMM13_val, !mcsema_real_eip !97
  store i128 %308, i128* %XMM13, align 1, !mcsema_real_eip !97
  %309 = load i128, i128* %XMM14_val, !mcsema_real_eip !97
  store i128 %309, i128* %XMM14, align 1, !mcsema_real_eip !97
  %310 = load i128, i128* %XMM15_val, !mcsema_real_eip !97
  store i128 %310, i128* %XMM15, align 1, !mcsema_real_eip !97
  %311 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !97
  store i64 %311, i64* %STACK_BASE, align 1, !mcsema_real_eip !97
  %312 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !97
  store i64 %312, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !97
  ret void, !mcsema_real_eip !97

block_0xed:                                       ; preds = %block_0xbe
  %313 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %314 = add i64 %313, -12, !mcsema_real_eip !98
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !98
  %316 = bitcast i64* %315 to i32*
  store i32 0, i32* %316, !mcsema_real_eip !98
  br label %block_0xf9
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_110.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !35
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !35
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !35
  %XMM15_val = alloca i128, !mcsema_real_eip !35
  %XMM14_val = alloca i128, !mcsema_real_eip !35
  %XMM13_val = alloca i128, !mcsema_real_eip !35
  %XMM12_val = alloca i128, !mcsema_real_eip !35
  %XMM11_val = alloca i128, !mcsema_real_eip !35
  %XMM10_val = alloca i128, !mcsema_real_eip !35
  %XMM9_val = alloca i128, !mcsema_real_eip !35
  %XMM8_val = alloca i128, !mcsema_real_eip !35
  %XMM7_val = alloca i128, !mcsema_real_eip !35
  %XMM6_val = alloca i128, !mcsema_real_eip !35
  %XMM5_val = alloca i128, !mcsema_real_eip !35
  %XMM4_val = alloca i128, !mcsema_real_eip !35
  %XMM3_val = alloca i128, !mcsema_real_eip !35
  %XMM2_val = alloca i128, !mcsema_real_eip !35
  %XMM1_val = alloca i128, !mcsema_real_eip !35
  %XMM0_val = alloca i128, !mcsema_real_eip !35
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !35
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !35
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !35
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !35
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !35
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !35
  %FPU_IM_val = alloca i1, !mcsema_real_eip !35
  %FPU_DM_val = alloca i1, !mcsema_real_eip !35
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !35
  %FPU_OM_val = alloca i1, !mcsema_real_eip !35
  %FPU_UM_val = alloca i1, !mcsema_real_eip !35
  %FPU_PM_val = alloca i1, !mcsema_real_eip !35
  %FPU_PC_val = alloca i2, !mcsema_real_eip !35
  %FPU_RC_val = alloca i2, !mcsema_real_eip !35
  %FPU_X_val = alloca i1, !mcsema_real_eip !35
  %FPU_IE_val = alloca i1, !mcsema_real_eip !35
  %FPU_DE_val = alloca i1, !mcsema_real_eip !35
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !35
  %FPU_OE_val = alloca i1, !mcsema_real_eip !35
  %FPU_UE_val = alloca i1, !mcsema_real_eip !35
  %FPU_PE_val = alloca i1, !mcsema_real_eip !35
  %FPU_SF_val = alloca i1, !mcsema_real_eip !35
  %FPU_ES_val = alloca i1, !mcsema_real_eip !35
  %FPU_C0_val = alloca i1, !mcsema_real_eip !35
  %FPU_C1_val = alloca i1, !mcsema_real_eip !35
  %FPU_C2_val = alloca i1, !mcsema_real_eip !35
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !35
  %FPU_C3_val = alloca i1, !mcsema_real_eip !35
  %FPU_B_val = alloca i1, !mcsema_real_eip !35
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !35
  %DF_val = alloca i1, !mcsema_real_eip !35
  %OF_val = alloca i1, !mcsema_real_eip !35
  %SF_val = alloca i1, !mcsema_real_eip !35
  %CF_val = alloca i1, !mcsema_real_eip !35
  %AF_val = alloca i1, !mcsema_real_eip !35
  %PF_val = alloca i1, !mcsema_real_eip !35
  %ZF_val = alloca i1, !mcsema_real_eip !35
  %RIP_val = alloca i64, !mcsema_real_eip !35
  %R14_val = alloca i64, !mcsema_real_eip !35
  %R13_val = alloca i64, !mcsema_real_eip !35
  %R12_val = alloca i64, !mcsema_real_eip !35
  %R11_val = alloca i64, !mcsema_real_eip !35
  %R10_val = alloca i64, !mcsema_real_eip !35
  %R9_val = alloca i64, !mcsema_real_eip !35
  %R8_val = alloca i64, !mcsema_real_eip !35
  %RSP_val = alloca i64, !mcsema_real_eip !35
  %RBP_val = alloca i64, !mcsema_real_eip !35
  %RDI_val = alloca i64, !mcsema_real_eip !35
  %RSI_val = alloca i64, !mcsema_real_eip !35
  %RDX_val = alloca i64, !mcsema_real_eip !35
  %RCX_val = alloca i64, !mcsema_real_eip !35
  %RBX_val = alloca i64, !mcsema_real_eip !35
  %RAX_val = alloca i64, !mcsema_real_eip !35
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !35
  %1 = load i64, i64* %RAX, !mcsema_real_eip !35
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !35
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !35
  %2 = load i64, i64* %RBX, !mcsema_real_eip !35
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !35
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !35
  %3 = load i64, i64* %RCX, !mcsema_real_eip !35
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !35
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !35
  %4 = load i64, i64* %RDX, !mcsema_real_eip !35
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !35
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !35
  %5 = load i64, i64* %RSI, !mcsema_real_eip !35
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !35
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !35
  %6 = load i64, i64* %RDI, !mcsema_real_eip !35
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !35
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !35
  %7 = load i64, i64* %RSP, !mcsema_real_eip !35
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !35
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !35
  %8 = load i64, i64* %RBP, !mcsema_real_eip !35
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !35
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !35
  %9 = load i64, i64* %R8, !mcsema_real_eip !35
  store i64 %9, i64* %R8_val, !mcsema_real_eip !35
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !35
  %10 = load i64, i64* %R9, !mcsema_real_eip !35
  store i64 %10, i64* %R9_val, !mcsema_real_eip !35
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !35
  %11 = load i64, i64* %R10, !mcsema_real_eip !35
  store i64 %11, i64* %R10_val, !mcsema_real_eip !35
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !35
  %12 = load i64, i64* %R11, !mcsema_real_eip !35
  store i64 %12, i64* %R11_val, !mcsema_real_eip !35
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !35
  %13 = load i64, i64* %R12, !mcsema_real_eip !35
  store i64 %13, i64* %R12_val, !mcsema_real_eip !35
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !35
  %14 = load i64, i64* %R13, !mcsema_real_eip !35
  store i64 %14, i64* %R13_val, !mcsema_real_eip !35
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !35
  %15 = load i64, i64* %R14, !mcsema_real_eip !35
  store i64 %15, i64* %R14_val, !mcsema_real_eip !35
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !35
  %16 = load i64, i64* %R15, !mcsema_real_eip !35
  store i64 %16, i64* %R15_val, !mcsema_real_eip !35
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !35
  %17 = load i64, i64* %RIP, !mcsema_real_eip !35
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !35
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !35
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !35
  store i1 %18, i1* %CF_val, !mcsema_real_eip !35
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !35
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !35
  store i1 %19, i1* %PF_val, !mcsema_real_eip !35
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !35
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !35
  store i1 %20, i1* %AF_val, !mcsema_real_eip !35
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !35
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !35
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !35
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !35
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !35
  store i1 %22, i1* %SF_val, !mcsema_real_eip !35
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !35
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !35
  store i1 %23, i1* %OF_val, !mcsema_real_eip !35
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !35
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !35
  store i1 %24, i1* %DF_val, !mcsema_real_eip !35
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !35
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !35
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !35
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !35
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !35
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !35
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !35
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !35
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !35
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !35
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !35
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !35
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !35
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !35
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !35
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !35
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !35
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !35
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !35
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !35
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !35
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !35
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !35
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !35
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !35
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !35
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !35
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !35
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !35
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !35
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !35
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !35
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !35
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !35
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !35
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !35
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !35
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !35
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !35
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !35
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !35
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !35
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !35
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !35
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !35
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !35
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !35
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !35
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !35
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !35
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !35
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !35
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !35
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !35
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !35
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !35
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !35
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !35
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !35
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !35
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !35
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !35
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !35
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !35
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !35
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !35
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !35
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !35
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !35
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !35
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !35
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !35
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !35
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !35
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !35
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !35
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !35
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !35
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !35
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !35
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !35
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !35
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !35
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !35
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !35
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !35
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !35
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !35
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !35
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !35
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !35
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !35
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !35
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !35
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !35
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !35
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !35
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !35
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !35
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !35
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !35
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !35
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !35
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !35
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !35
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !35
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !35
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !35
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !35
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !35
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !35
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !35
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !35
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !35
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !35
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !35
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !35
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !35
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !35
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !35
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !35
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !35
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !35
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !35
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !35
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !35
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !35
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !35
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !35
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !35
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !35
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !35
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !35
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !35
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !35
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !35
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !35
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !35
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !35
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !35
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !35
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !35
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !35
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !35
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !35
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !35
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %84 = add i64 %81, -16, !mcsema_real_eip !37
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !37
  %86 = load i64, i64* %RDI_val, !mcsema_real_eip !37
  store i64 %86, i64* %_allin_new_bt_2, !mcsema_real_eip !37
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -16
  %88 = add i64 %87, -16, !mcsema_real_eip !38
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !38
  %90 = load i64, i64* %RSI_val, !mcsema_real_eip !38
  store i64 %90, i64* %_allin_new_bt_5, !mcsema_real_eip !38
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -8
  %92 = add i64 %91, -8, !mcsema_real_eip !39
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !39
  %_ptr_to_int_61 = ptrtoint i64* %_allin_new_bt_8 to i64
  %_local_end_to_int_62 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_63 = bitcast i64* %_allin_new_bt_8 to i8*
  %_offset_above_rbp_64 = sub i64 %_ptr_to_int_61, %_local_end_to_int_62
  %_pot_address_in_parent_stack_65 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_64
  %_cond1_66 = icmp ugt i8* %_ptr_bt_63, %_local_stack_end_ptr_
  %_cond2_1_67 = icmp ugt i8* %_ptr_bt_63, %_parent_stack_end_ptr_
  %_cond2_2_68 = icmp ult i8* %_ptr_bt_63, %_parent_stack_start_ptr_
  %_cond2_69 = or i1 %_cond2_1_67, %_cond2_2_68
  %_cond4_70 = icmp ule i8* %_pot_address_in_parent_stack_65, %_parent_stack_end_ptr_
  %_cond1_n_cond2_71 = and i1 %_cond1_66, %_cond2_69
  %_cond1_n_cond2_cond3_72 = and i1 %_cond1_n_cond2_71, %_cond4_70
  br i1 %_cond1_n_cond2_cond3_72, label %94, label %95

; <label>:94:                                     ; preds = %55
  %_address_in_parent_stack_73 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_64
  %_address_in_parent_stack_bt_74 = bitcast i8* %_address_in_parent_stack_73 to i64*
  br label %95

; <label>:95:                                     ; preds = %55, %94
  %96 = phi i64* [ %_allin_new_bt_8, %55 ], [ %_address_in_parent_stack_bt_74, %94 ]
  %_new_load_75 = load i64, i64* %96
  store i64 %_new_load_75, i64* %RSI_val, !mcsema_real_eip !39
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -24
  %97 = add i64 %91, -24, !mcsema_real_eip !40
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !40
  store i64 %_new_load_75, i64* %_allin_new_bt_10, !mcsema_real_eip !40
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -16
  %100 = add i64 %99, -16, !mcsema_real_eip !41
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !41
  %_ptr_to_int_76 = ptrtoint i64* %_allin_new_bt_13 to i64
  %_local_end_to_int_77 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_78 = bitcast i64* %_allin_new_bt_13 to i8*
  %_offset_above_rbp_79 = sub i64 %_ptr_to_int_76, %_local_end_to_int_77
  %_pot_address_in_parent_stack_80 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_79
  %_cond1_81 = icmp ugt i8* %_ptr_bt_78, %_local_stack_end_ptr_
  %_cond2_1_82 = icmp ugt i8* %_ptr_bt_78, %_parent_stack_end_ptr_
  %_cond2_2_83 = icmp ult i8* %_ptr_bt_78, %_parent_stack_start_ptr_
  %_cond2_84 = or i1 %_cond2_1_82, %_cond2_2_83
  %_cond4_85 = icmp ule i8* %_pot_address_in_parent_stack_80, %_parent_stack_end_ptr_
  %_cond1_n_cond2_86 = and i1 %_cond1_81, %_cond2_84
  %_cond1_n_cond2_cond3_87 = and i1 %_cond1_n_cond2_86, %_cond4_85
  br i1 %_cond1_n_cond2_cond3_87, label %102, label %103

; <label>:102:                                    ; preds = %95
  %_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_79
  %_address_in_parent_stack_bt_89 = bitcast i8* %_address_in_parent_stack_88 to i64*
  br label %103

; <label>:103:                                    ; preds = %95, %102
  %104 = phi i64* [ %_allin_new_bt_13, %95 ], [ %_address_in_parent_stack_bt_89, %102 ]
  %_new_load_90 = load i64, i64* %104
  store i64 %_new_load_90, i64* %RSI_val, !mcsema_real_eip !41
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -32
  %105 = add i64 %99, -32, !mcsema_real_eip !42
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !42
  store i64 %_new_load_90, i64* %_allin_new_bt_15, !mcsema_real_eip !42
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -24
  %108 = add i64 %107, -24, !mcsema_real_eip !43
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !43
  %_ptr_to_int_91 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_local_end_to_int_92 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_93 = bitcast i64* %_allin_new_bt_18 to i8*
  %_offset_above_rbp_94 = sub i64 %_ptr_to_int_91, %_local_end_to_int_92
  %_pot_address_in_parent_stack_95 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_94
  %_cond1_96 = icmp ugt i8* %_ptr_bt_93, %_local_stack_end_ptr_
  %_cond2_1_97 = icmp ugt i8* %_ptr_bt_93, %_parent_stack_end_ptr_
  %_cond2_2_98 = icmp ult i8* %_ptr_bt_93, %_parent_stack_start_ptr_
  %_cond2_99 = or i1 %_cond2_1_97, %_cond2_2_98
  %_cond4_100 = icmp ule i8* %_pot_address_in_parent_stack_95, %_parent_stack_end_ptr_
  %_cond1_n_cond2_101 = and i1 %_cond1_96, %_cond2_99
  %_cond1_n_cond2_cond3_102 = and i1 %_cond1_n_cond2_101, %_cond4_100
  br i1 %_cond1_n_cond2_cond3_102, label %110, label %111

; <label>:110:                                    ; preds = %103
  %_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_94
  %_address_in_parent_stack_bt_104 = bitcast i8* %_address_in_parent_stack_103 to i64*
  br label %111

; <label>:111:                                    ; preds = %103, %110
  %112 = phi i64* [ %_allin_new_bt_18, %103 ], [ %_address_in_parent_stack_bt_104, %110 ]
  %_new_load_105 = load i64, i64* %112
  store i64 %_new_load_105, i64* %RSI_val, !mcsema_real_eip !43
  %113 = inttoptr i64 %_new_load_105 to i64*, !mcsema_real_eip !44
  %114 = bitcast i64* %113 to i8*
  %_ptr_to_int_106 = ptrtoint i8* %114 to i64
  %_local_end_to_int_107 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_108 = sub i64 %_ptr_to_int_106, %_local_end_to_int_107
  %_pot_address_in_parent_stack_109 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_cond1_110 = icmp ugt i8* %114, %_local_stack_end_ptr_
  %_cond2_1_111 = icmp ugt i8* %114, %_parent_stack_end_ptr_
  %_cond2_2_112 = icmp ult i8* %114, %_parent_stack_start_ptr_
  %_cond2_113 = or i1 %_cond2_1_111, %_cond2_2_112
  %_cond4_114 = icmp ule i8* %_pot_address_in_parent_stack_109, %_parent_stack_end_ptr_
  %_cond1_n_cond2_115 = and i1 %_cond1_110, %_cond2_113
  %_cond1_n_cond2_cond3_116 = and i1 %_cond1_n_cond2_115, %_cond4_114
  br i1 %_cond1_n_cond2_cond3_116, label %115, label %116

; <label>:115:                                    ; preds = %111
  %_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  br label %116

; <label>:116:                                    ; preds = %111, %115
  %117 = phi i8* [ %114, %111 ], [ %_address_in_parent_stack_117, %115 ]
  %_new_load_118 = load i8, i8* %117
  %118 = zext i8 %_new_load_118 to i64, !mcsema_real_eip !44
  %119 = load i64, i64* %RAX_val, !mcsema_real_eip !44
  %120 = and i64 %119, -256, !mcsema_real_eip !44
  %121 = or i64 %120, %118
  store i64 %121, i64* %RAX_val, !mcsema_real_eip !44
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -33
  %123 = add i64 %122, -33, !mcsema_real_eip !45
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !45
  %125 = bitcast i64* %_allin_new_bt_21 to i8*
  store i8 %_new_load_118, i8* %125, !mcsema_real_eip !45
  br label %block_0x135, !mcsema_real_eip !46

block_0x135:                                      ; preds = %325, %116
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -33
  %127 = add i64 %126, -33, !mcsema_real_eip !46
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !46
  %129 = bitcast i64* %_allin_new_bt_24 to i8*
  %_ptr_to_int_119 = ptrtoint i8* %129 to i64
  %_local_end_to_int_120 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_119, %_local_end_to_int_120
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %129, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %129, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %129, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  br i1 %_cond1_n_cond2_cond3_129, label %130, label %131

; <label>:130:                                    ; preds = %block_0x135
  %_address_in_parent_stack_130 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  br label %131

; <label>:131:                                    ; preds = %block_0x135, %130
  %132 = phi i8* [ %129, %block_0x135 ], [ %_address_in_parent_stack_130, %130 ]
  %_new_load_131 = load i8, i8* %132
  %133 = sext i8 %_new_load_131 to i32, !mcsema_real_eip !46
  %134 = zext i32 %133 to i64, !mcsema_real_eip !46
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !46
  store i1 false, i1* %AF_val, !mcsema_real_eip !47
  %135 = tail call i8 @llvm.ctpop.i8(i8 %_new_load_131), !mcsema_real_eip !47
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  store i1 %137, i1* %PF_val, !mcsema_real_eip !47
  %138 = icmp eq i8 %_new_load_131, 0
  store i1 %138, i1* %ZF_val, !mcsema_real_eip !47
  %139 = icmp slt i8 %_new_load_131, 0
  store i1 %139, i1* %SF_val, !mcsema_real_eip !47
  store i1 false, i1* %CF_val, !mcsema_real_eip !47
  store i1 false, i1* %OF_val, !mcsema_real_eip !47
  br i1 %138, label %block_0x192, label %block_0x144, !mcsema_real_eip !48

block_0x144:                                      ; preds = %131
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -33
  %141 = add i64 %140, -33, !mcsema_real_eip !49
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !49
  %143 = bitcast i64* %_allin_new_bt_27 to i8*
  %_ptr_to_int_132 = ptrtoint i8* %143 to i64
  %_local_end_to_int_133 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_132, %_local_end_to_int_133
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %143, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %143, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %143, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %144, label %145

; <label>:144:                                    ; preds = %block_0x144
  %_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  br label %145

; <label>:145:                                    ; preds = %block_0x144, %144
  %146 = phi i8* [ %143, %block_0x144 ], [ %_address_in_parent_stack_143, %144 ]
  %_new_load_144 = load i8, i8* %146
  %147 = sext i8 %_new_load_144 to i32, !mcsema_real_eip !49
  %148 = zext i32 %147 to i64, !mcsema_real_eip !49
  store i64 %148, i64* %RAX_val, !mcsema_real_eip !49
  %149 = add nsw i32 %147, -47
  %150 = xor i32 %149, %147, !mcsema_real_eip !50
  %151 = and i32 %150, 16, !mcsema_real_eip !50
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !50
  store i1 %152, i1* %AF_val, !mcsema_real_eip !50
  %153 = trunc i32 %149 to i8, !mcsema_real_eip !50
  %154 = tail call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !50
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  store i1 %156, i1* %PF_val, !mcsema_real_eip !50
  %157 = icmp eq i32 %149, 0, !mcsema_real_eip !50
  store i1 %157, i1* %ZF_val, !mcsema_real_eip !50
  %158 = icmp slt i32 %149, 0
  store i1 %158, i1* %SF_val, !mcsema_real_eip !50
  %159 = icmp ult i8 %_new_load_144, 47
  store i1 %159, i1* %CF_val, !mcsema_real_eip !50
  %160 = and i32 %150, %147, !mcsema_real_eip !50
  %161 = icmp slt i32 %160, 0
  store i1 %161, i1* %OF_val, !mcsema_real_eip !50
  %162 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  br i1 %162, label %block_0x153, label %block_0x15f, !mcsema_real_eip !51

block_0x192:                                      ; preds = %131
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %164 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %_allin_new_bt_30 = bitcast i8* %_load_rsp_ptr_29 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !53
  %_ptr_to_int_145 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_local_end_to_int_146 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_147 = bitcast i64* %_allin_new_bt_30 to i8*
  %_offset_above_rbp_148 = sub i64 %_ptr_to_int_145, %_local_end_to_int_146
  %_pot_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_cond1_150 = icmp ugt i8* %_ptr_bt_147, %_local_stack_end_ptr_
  %_cond2_1_151 = icmp ugt i8* %_ptr_bt_147, %_parent_stack_end_ptr_
  %_cond2_2_152 = icmp ult i8* %_ptr_bt_147, %_parent_stack_start_ptr_
  %_cond2_153 = or i1 %_cond2_1_151, %_cond2_2_152
  %_cond4_154 = icmp ule i8* %_pot_address_in_parent_stack_149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_155 = and i1 %_cond1_150, %_cond2_153
  %_cond1_n_cond2_cond3_156 = and i1 %_cond1_n_cond2_155, %_cond4_154
  br i1 %_cond1_n_cond2_cond3_156, label %166, label %167

; <label>:166:                                    ; preds = %block_0x192
  %_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_address_in_parent_stack_bt_158 = bitcast i8* %_address_in_parent_stack_157 to i64*
  br label %167

; <label>:167:                                    ; preds = %block_0x192, %166
  %168 = phi i64* [ %_allin_new_bt_30, %block_0x192 ], [ %_address_in_parent_stack_bt_158, %166 ]
  %_new_load_159 = load i64, i64* %168
  %_new_int2ptr_ = inttoptr i64 %_new_load_159 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_159, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 16
  %169 = add i64 %164, 16, !mcsema_real_eip !54
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_
  store i64 %169, i64* %RSP_val, !mcsema_real_eip !54
  %170 = load i64, i64* %RAX_val, !mcsema_real_eip !54
  store i64 %170, i64* %RAX, !mcsema_real_eip !54
  %171 = load i64, i64* %RBX_val, !mcsema_real_eip !54
  store i64 %171, i64* %RBX, !mcsema_real_eip !54
  %172 = load i64, i64* %RCX_val, !mcsema_real_eip !54
  store i64 %172, i64* %RCX, !mcsema_real_eip !54
  %173 = load i64, i64* %RDX_val, !mcsema_real_eip !54
  store i64 %173, i64* %RDX, !mcsema_real_eip !54
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !54
  store i64 %174, i64* %RSI, !mcsema_real_eip !54
  %175 = load i64, i64* %RDI_val, !mcsema_real_eip !54
  store i64 %175, i64* %RDI, !mcsema_real_eip !54
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %176 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %_new_ptr2int_33 = ptrtoint i8* %_load_rsp_ptr_32 to i64
  store volatile i64 %_new_ptr2int_33, i64* %RSP
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_ptr2int_35 = ptrtoint i8* %_load_rbp_ptr_34 to i64
  store volatile i64 %_new_ptr2int_35, i64* %RBP
  %178 = load i64, i64* %R8_val, !mcsema_real_eip !54
  store i64 %178, i64* %R8, !mcsema_real_eip !54
  %179 = load i64, i64* %R9_val, !mcsema_real_eip !54
  store i64 %179, i64* %R9, !mcsema_real_eip !54
  %180 = load i64, i64* %R10_val, !mcsema_real_eip !54
  store i64 %180, i64* %R10, !mcsema_real_eip !54
  %181 = load i64, i64* %R11_val, !mcsema_real_eip !54
  store i64 %181, i64* %R11, !mcsema_real_eip !54
  %182 = load i64, i64* %R12_val, !mcsema_real_eip !54
  store i64 %182, i64* %R12, !mcsema_real_eip !54
  %183 = load i64, i64* %R13_val, !mcsema_real_eip !54
  store i64 %183, i64* %R13, !mcsema_real_eip !54
  %184 = load i64, i64* %R14_val, !mcsema_real_eip !54
  store i64 %184, i64* %R14, !mcsema_real_eip !54
  %185 = load i64, i64* %R15_val, !mcsema_real_eip !54
  store i64 %185, i64* %R15, !mcsema_real_eip !54
  %186 = load i64, i64* %RIP_val, !mcsema_real_eip !54
  store i64 %186, i64* %RIP, !mcsema_real_eip !54
  %187 = load i1, i1* %CF_val, !mcsema_real_eip !54
  store i1 %187, i1* %CF, align 1, !mcsema_real_eip !54
  %188 = load i1, i1* %PF_val, !mcsema_real_eip !54
  store i1 %188, i1* %PF, align 1, !mcsema_real_eip !54
  %189 = load i1, i1* %AF_val, !mcsema_real_eip !54
  store i1 %189, i1* %AF, align 1, !mcsema_real_eip !54
  %190 = load i1, i1* %ZF_val, !mcsema_real_eip !54
  store i1 %190, i1* %ZF, align 1, !mcsema_real_eip !54
  %191 = load i1, i1* %SF_val, !mcsema_real_eip !54
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !54
  %192 = load i1, i1* %OF_val, !mcsema_real_eip !54
  store i1 %192, i1* %OF, align 1, !mcsema_real_eip !54
  %193 = load i1, i1* %DF_val, !mcsema_real_eip !54
  store i1 %193, i1* %DF, align 1, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !54
  %194 = load i1, i1* %FPU_B_val, !mcsema_real_eip !54
  store i1 %194, i1* %FPU_B, align 1, !mcsema_real_eip !54
  %195 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !54
  store i1 %195, i1* %FPU_C3, align 1, !mcsema_real_eip !54
  %196 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !54
  store i3 %196, i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  %197 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !54
  store i1 %197, i1* %FPU_C2, align 1, !mcsema_real_eip !54
  %198 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !54
  store i1 %198, i1* %FPU_C1, align 1, !mcsema_real_eip !54
  %199 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !54
  store i1 %199, i1* %FPU_C0, align 1, !mcsema_real_eip !54
  %200 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !54
  store i1 %200, i1* %FPU_ES, align 1, !mcsema_real_eip !54
  %201 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !54
  store i1 %201, i1* %FPU_SF, align 1, !mcsema_real_eip !54
  %202 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !54
  store i1 %202, i1* %FPU_PE, align 1, !mcsema_real_eip !54
  %203 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !54
  store i1 %203, i1* %FPU_UE, align 1, !mcsema_real_eip !54
  %204 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !54
  store i1 %204, i1* %FPU_OE, align 1, !mcsema_real_eip !54
  %205 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !54
  store i1 %205, i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  %206 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !54
  store i1 %206, i1* %FPU_DE, align 1, !mcsema_real_eip !54
  %207 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !54
  store i1 %207, i1* %FPU_IE, align 1, !mcsema_real_eip !54
  %208 = load i1, i1* %FPU_X_val, !mcsema_real_eip !54
  store i1 %208, i1* %FPU_X, align 1, !mcsema_real_eip !54
  %209 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !54
  store i2 %209, i2* %FPU_RC, align 1, !mcsema_real_eip !54
  %210 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !54
  store i2 %210, i2* %FPU_PC, align 1, !mcsema_real_eip !54
  %211 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !54
  store i1 %211, i1* %FPU_PM, align 1, !mcsema_real_eip !54
  %212 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !54
  store i1 %212, i1* %FPU_UM, align 1, !mcsema_real_eip !54
  %213 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !54
  store i1 %213, i1* %FPU_OM, align 1, !mcsema_real_eip !54
  %214 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !54
  store i1 %214, i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  %215 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !54
  store i1 %215, i1* %FPU_DM, align 1, !mcsema_real_eip !54
  %216 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !54
  store i1 %216, i1* %FPU_IM, align 1, !mcsema_real_eip !54
  %_ptr_to_int_160 = ptrtoint i64* %53 to i64
  %_local_end_to_int_161 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_162 = bitcast i64* %53 to i8*
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_160, %_local_end_to_int_161
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_ptr_bt_162, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_ptr_bt_162, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_ptr_bt_162, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %217, label %218

; <label>:217:                                    ; preds = %167
  %_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_address_in_parent_stack_bt_173 = bitcast i8* %_address_in_parent_stack_172 to i64*
  br label %218

; <label>:218:                                    ; preds = %167, %217
  %219 = phi i64* [ %53, %167 ], [ %_address_in_parent_stack_bt_173, %217 ]
  %_new_load_174 = load i64, i64* %219
  store i64 %_new_load_174, i64* %52, align 4
  %220 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  store i16 %220, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  %221 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  store i64 %221, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !54
  %222 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  store i16 %222, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  %223 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  store i64 %223, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !54
  %224 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !54
  store i11 %224, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !54
  %225 = load i128, i128* %XMM0_val, !mcsema_real_eip !54
  store i128 %225, i128* %XMM0, align 1, !mcsema_real_eip !54
  %226 = load i128, i128* %XMM1_val, !mcsema_real_eip !54
  store i128 %226, i128* %XMM1, align 1, !mcsema_real_eip !54
  %227 = load i128, i128* %XMM2_val, !mcsema_real_eip !54
  store i128 %227, i128* %XMM2, align 1, !mcsema_real_eip !54
  %228 = load i128, i128* %XMM3_val, !mcsema_real_eip !54
  store i128 %228, i128* %XMM3, align 1, !mcsema_real_eip !54
  %229 = load i128, i128* %XMM4_val, !mcsema_real_eip !54
  store i128 %229, i128* %XMM4, align 1, !mcsema_real_eip !54
  %230 = load i128, i128* %XMM5_val, !mcsema_real_eip !54
  store i128 %230, i128* %XMM5, align 1, !mcsema_real_eip !54
  %231 = load i128, i128* %XMM6_val, !mcsema_real_eip !54
  store i128 %231, i128* %XMM6, align 1, !mcsema_real_eip !54
  %232 = load i128, i128* %XMM7_val, !mcsema_real_eip !54
  store i128 %232, i128* %XMM7, align 1, !mcsema_real_eip !54
  %233 = load i128, i128* %XMM8_val, !mcsema_real_eip !54
  store i128 %233, i128* %XMM8, align 1, !mcsema_real_eip !54
  %234 = load i128, i128* %XMM9_val, !mcsema_real_eip !54
  store i128 %234, i128* %XMM9, align 1, !mcsema_real_eip !54
  %235 = load i128, i128* %XMM10_val, !mcsema_real_eip !54
  store i128 %235, i128* %XMM10, align 1, !mcsema_real_eip !54
  %236 = load i128, i128* %XMM11_val, !mcsema_real_eip !54
  store i128 %236, i128* %XMM11, align 1, !mcsema_real_eip !54
  %237 = load i128, i128* %XMM12_val, !mcsema_real_eip !54
  store i128 %237, i128* %XMM12, align 1, !mcsema_real_eip !54
  %238 = load i128, i128* %XMM13_val, !mcsema_real_eip !54
  store i128 %238, i128* %XMM13, align 1, !mcsema_real_eip !54
  %239 = load i128, i128* %XMM14_val, !mcsema_real_eip !54
  store i128 %239, i128* %XMM14, align 1, !mcsema_real_eip !54
  %240 = load i128, i128* %XMM15_val, !mcsema_real_eip !54
  store i128 %240, i128* %XMM15, align 1, !mcsema_real_eip !54
  %241 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !54
  store i64 %241, i64* %STACK_BASE, align 1, !mcsema_real_eip !54
  %242 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  store i64 %242, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54

block_0x153:                                      ; preds = %145
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -32
  %243 = add i64 %163, -32, !mcsema_real_eip !55
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !55
  %_ptr_to_int_175 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_local_end_to_int_176 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_177 = bitcast i64* %_allin_new_bt_37 to i8*
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_176
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_ptr_bt_177, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_ptr_bt_177, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_ptr_bt_177, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %245, label %246

; <label>:245:                                    ; preds = %block_0x153
  %_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_address_in_parent_stack_bt_188 = bitcast i8* %_address_in_parent_stack_187 to i64*
  br label %246

; <label>:246:                                    ; preds = %block_0x153, %245
  %247 = phi i64* [ %_allin_new_bt_37, %block_0x153 ], [ %_address_in_parent_stack_bt_188, %245 ]
  %_new_load_189 = load i64, i64* %247
  store i64 %_new_load_189, i64* %RAX_val, !mcsema_real_eip !55
  %248 = inttoptr i64 %_new_load_189 to i64*, !mcsema_real_eip !56
  %249 = bitcast i64* %248 to i8*
  store i8 92, i8* %249, !mcsema_real_eip !56
  br label %block_0x168, !mcsema_real_eip !57

block_0x15f:                                      ; preds = %145
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -33
  %250 = add i64 %163, -33, !mcsema_real_eip !52
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !52
  %252 = bitcast i64* %_allin_new_bt_39 to i8*
  %_ptr_to_int_190 = ptrtoint i8* %252 to i64
  %_local_end_to_int_191 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_192 = sub i64 %_ptr_to_int_190, %_local_end_to_int_191
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %252, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %252, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %252, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %253, label %254

; <label>:253:                                    ; preds = %block_0x15f
  %_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  br label %254

; <label>:254:                                    ; preds = %block_0x15f, %253
  %255 = phi i8* [ %252, %block_0x15f ], [ %_address_in_parent_stack_201, %253 ]
  %_new_load_202 = load i8, i8* %255
  %256 = zext i8 %_new_load_202 to i64, !mcsema_real_eip !52
  %257 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  %258 = and i64 %257, -256, !mcsema_real_eip !52
  %259 = or i64 %258, %256
  store i64 %259, i64* %RAX_val, !mcsema_real_eip !52
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %260 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -32
  %261 = add i64 %260, -32, !mcsema_real_eip !58
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !58
  %_ptr_to_int_203 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_local_end_to_int_204 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_205 = bitcast i64* %_allin_new_bt_42 to i8*
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_204
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_ptr_bt_205, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_ptr_bt_205, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_ptr_bt_205, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %263, label %264

; <label>:263:                                    ; preds = %254
  %_address_in_parent_stack_215 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_address_in_parent_stack_bt_216 = bitcast i8* %_address_in_parent_stack_215 to i64*
  br label %264

; <label>:264:                                    ; preds = %254, %263
  %265 = phi i64* [ %_allin_new_bt_42, %254 ], [ %_address_in_parent_stack_bt_216, %263 ]
  %_new_load_217 = load i64, i64* %265
  store i64 %_new_load_217, i64* %RCX_val, !mcsema_real_eip !58
  %266 = inttoptr i64 %_new_load_217 to i64*, !mcsema_real_eip !59
  %267 = load i64, i64* %RAX_val, !mcsema_real_eip !59
  %268 = trunc i64 %267 to i8, !mcsema_real_eip !59
  %269 = bitcast i64* %266 to i8*
  store i8 %268, i8* %269, !mcsema_real_eip !59
  br label %block_0x168, !mcsema_real_eip !55

block_0x168:                                      ; preds = %264, %246
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %270 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %271 = add i64 %270, -24, !mcsema_real_eip !60
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !60
  %_ptr_to_int_218 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_local_end_to_int_219 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_220 = bitcast i64* %_allin_new_bt_45 to i8*
  %_offset_above_rbp_221 = sub i64 %_ptr_to_int_218, %_local_end_to_int_219
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %273, label %274

; <label>:273:                                    ; preds = %block_0x168
  %_address_in_parent_stack_230 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_address_in_parent_stack_bt_231 = bitcast i8* %_address_in_parent_stack_230 to i64*
  br label %274

; <label>:274:                                    ; preds = %block_0x168, %273
  %275 = phi i64* [ %_allin_new_bt_45, %block_0x168 ], [ %_address_in_parent_stack_bt_231, %273 ]
  %_new_load_232 = load i64, i64* %275
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_load_232, i64 1)
  %276 = extractvalue { i64, i1 } %uadd, 0
  %277 = xor i64 %276, %_new_load_232, !mcsema_real_eip !61
  %278 = and i64 %277, 16, !mcsema_real_eip !61
  %279 = icmp ne i64 %278, 0, !mcsema_real_eip !61
  store i1 %279, i1* %AF_val, !mcsema_real_eip !61
  %280 = icmp slt i64 %276, 0
  store i1 %280, i1* %SF_val, !mcsema_real_eip !61
  %281 = icmp eq i64 %276, 0, !mcsema_real_eip !61
  store i1 %281, i1* %ZF_val, !mcsema_real_eip !61
  %282 = xor i64 %_new_load_232, -9223372036854775808, !mcsema_real_eip !61
  %283 = and i64 %277, %282, !mcsema_real_eip !61
  %284 = icmp slt i64 %283, 0
  store i1 %284, i1* %OF_val, !mcsema_real_eip !61
  %285 = trunc i64 %276 to i8, !mcsema_real_eip !61
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !61
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !61
  %289 = extractvalue { i64, i1 } %uadd, 1
  store i1 %289, i1* %CF_val, !mcsema_real_eip !61
  store i64 %276, i64* %RAX_val, !mcsema_real_eip !61
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %290 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -24
  %291 = add i64 %290, -24, !mcsema_real_eip !62
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !62
  store i64 %276, i64* %_allin_new_bt_48, !mcsema_real_eip !62
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -32
  %294 = add i64 %293, -32, !mcsema_real_eip !63
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !63
  %_ptr_to_int_233 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_local_end_to_int_234 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_235 = bitcast i64* %_allin_new_bt_51 to i8*
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_234
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_ptr_bt_235, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_ptr_bt_235, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_ptr_bt_235, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %296, label %297

; <label>:296:                                    ; preds = %274
  %_address_in_parent_stack_245 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_address_in_parent_stack_bt_246 = bitcast i8* %_address_in_parent_stack_245 to i64*
  br label %297

; <label>:297:                                    ; preds = %274, %296
  %298 = phi i64* [ %_allin_new_bt_51, %274 ], [ %_address_in_parent_stack_bt_246, %296 ]
  %_new_load_247 = load i64, i64* %298
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_load_247, i64 1)
  %299 = extractvalue { i64, i1 } %uadd71, 0
  %300 = xor i64 %299, %_new_load_247, !mcsema_real_eip !64
  %301 = and i64 %300, 16, !mcsema_real_eip !64
  %302 = icmp ne i64 %301, 0, !mcsema_real_eip !64
  store i1 %302, i1* %AF_val, !mcsema_real_eip !64
  %303 = icmp slt i64 %299, 0
  store i1 %303, i1* %SF_val, !mcsema_real_eip !64
  %304 = icmp eq i64 %299, 0, !mcsema_real_eip !64
  store i1 %304, i1* %ZF_val, !mcsema_real_eip !64
  %305 = xor i64 %_new_load_247, -9223372036854775808, !mcsema_real_eip !64
  %306 = and i64 %300, %305, !mcsema_real_eip !64
  %307 = icmp slt i64 %306, 0
  store i1 %307, i1* %OF_val, !mcsema_real_eip !64
  %308 = trunc i64 %299 to i8, !mcsema_real_eip !64
  %309 = tail call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !64
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  store i1 %311, i1* %PF_val, !mcsema_real_eip !64
  %312 = extractvalue { i64, i1 } %uadd71, 1
  store i1 %312, i1* %CF_val, !mcsema_real_eip !64
  store i64 %299, i64* %RAX_val, !mcsema_real_eip !64
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %313 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -32
  %314 = add i64 %313, -32, !mcsema_real_eip !65
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !65
  store i64 %299, i64* %_allin_new_bt_54, !mcsema_real_eip !65
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %317 = add i64 %316, -24, !mcsema_real_eip !66
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !66
  %_ptr_to_int_248 = ptrtoint i64* %_allin_new_bt_57 to i64
  %_local_end_to_int_249 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_250 = bitcast i64* %_allin_new_bt_57 to i8*
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_249
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_ptr_bt_250, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_ptr_bt_250, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_ptr_bt_250, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %319, label %320

; <label>:319:                                    ; preds = %297
  %_address_in_parent_stack_260 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_address_in_parent_stack_bt_261 = bitcast i8* %_address_in_parent_stack_260 to i64*
  br label %320

; <label>:320:                                    ; preds = %297, %319
  %321 = phi i64* [ %_allin_new_bt_57, %297 ], [ %_address_in_parent_stack_bt_261, %319 ]
  %_new_load_262 = load i64, i64* %321
  store i64 %_new_load_262, i64* %RAX_val, !mcsema_real_eip !66
  %322 = inttoptr i64 %_new_load_262 to i64*, !mcsema_real_eip !67
  %323 = bitcast i64* %322 to i8*
  %_ptr_to_int_263 = ptrtoint i8* %323 to i64
  %_local_end_to_int_264 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_263, %_local_end_to_int_264
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %323, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %323, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %323, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  br i1 %_cond1_n_cond2_cond3_273, label %324, label %325

; <label>:324:                                    ; preds = %320
  %_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  br label %325

; <label>:325:                                    ; preds = %320, %324
  %326 = phi i8* [ %323, %320 ], [ %_address_in_parent_stack_274, %324 ]
  %_new_load_275 = load i8, i8* %326
  %327 = zext i8 %_new_load_275 to i64, !mcsema_real_eip !67
  %328 = load i64, i64* %RCX_val, !mcsema_real_eip !67
  %329 = and i64 %328, -256, !mcsema_real_eip !67
  %330 = or i64 %329, %327
  store i64 %330, i64* %RCX_val, !mcsema_real_eip !67
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %331 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -33
  %332 = add i64 %331, -33, !mcsema_real_eip !68
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !68
  %334 = bitcast i64* %_allin_new_bt_60 to i8*
  store i8 %_new_load_275, i8* %334, !mcsema_real_eip !68
  br label %block_0x135, !mcsema_real_eip !69
}

define internal x86_64_sysvcc void @sub_90.2(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 40
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 40
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !70
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !70
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !70
  %XMM15_val = alloca i128, !mcsema_real_eip !70
  %XMM14_val = alloca i128, !mcsema_real_eip !70
  %XMM13_val = alloca i128, !mcsema_real_eip !70
  %XMM12_val = alloca i128, !mcsema_real_eip !70
  %XMM11_val = alloca i128, !mcsema_real_eip !70
  %XMM10_val = alloca i128, !mcsema_real_eip !70
  %XMM9_val = alloca i128, !mcsema_real_eip !70
  %XMM8_val = alloca i128, !mcsema_real_eip !70
  %XMM7_val = alloca i128, !mcsema_real_eip !70
  %XMM6_val = alloca i128, !mcsema_real_eip !70
  %XMM5_val = alloca i128, !mcsema_real_eip !70
  %XMM4_val = alloca i128, !mcsema_real_eip !70
  %XMM3_val = alloca i128, !mcsema_real_eip !70
  %XMM2_val = alloca i128, !mcsema_real_eip !70
  %XMM1_val = alloca i128, !mcsema_real_eip !70
  %XMM0_val = alloca i128, !mcsema_real_eip !70
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !70
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !70
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !70
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !70
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !70
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !70
  %FPU_IM_val = alloca i1, !mcsema_real_eip !70
  %FPU_DM_val = alloca i1, !mcsema_real_eip !70
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !70
  %FPU_OM_val = alloca i1, !mcsema_real_eip !70
  %FPU_UM_val = alloca i1, !mcsema_real_eip !70
  %FPU_PM_val = alloca i1, !mcsema_real_eip !70
  %FPU_PC_val = alloca i2, !mcsema_real_eip !70
  %FPU_RC_val = alloca i2, !mcsema_real_eip !70
  %FPU_X_val = alloca i1, !mcsema_real_eip !70
  %FPU_IE_val = alloca i1, !mcsema_real_eip !70
  %FPU_DE_val = alloca i1, !mcsema_real_eip !70
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !70
  %FPU_OE_val = alloca i1, !mcsema_real_eip !70
  %FPU_UE_val = alloca i1, !mcsema_real_eip !70
  %FPU_PE_val = alloca i1, !mcsema_real_eip !70
  %FPU_SF_val = alloca i1, !mcsema_real_eip !70
  %FPU_ES_val = alloca i1, !mcsema_real_eip !70
  %FPU_C0_val = alloca i1, !mcsema_real_eip !70
  %FPU_C1_val = alloca i1, !mcsema_real_eip !70
  %FPU_C2_val = alloca i1, !mcsema_real_eip !70
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !70
  %FPU_C3_val = alloca i1, !mcsema_real_eip !70
  %FPU_B_val = alloca i1, !mcsema_real_eip !70
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !70
  %DF_val = alloca i1, !mcsema_real_eip !70
  %OF_val = alloca i1, !mcsema_real_eip !70
  %SF_val = alloca i1, !mcsema_real_eip !70
  %CF_val = alloca i1, !mcsema_real_eip !70
  %AF_val = alloca i1, !mcsema_real_eip !70
  %PF_val = alloca i1, !mcsema_real_eip !70
  %ZF_val = alloca i1, !mcsema_real_eip !70
  %RIP_val = alloca i64, !mcsema_real_eip !70
  %R14_val = alloca i64, !mcsema_real_eip !70
  %R13_val = alloca i64, !mcsema_real_eip !70
  %R12_val = alloca i64, !mcsema_real_eip !70
  %R11_val = alloca i64, !mcsema_real_eip !70
  %R10_val = alloca i64, !mcsema_real_eip !70
  %R9_val = alloca i64, !mcsema_real_eip !70
  %R8_val = alloca i64, !mcsema_real_eip !70
  %RSP_val = alloca i64, !mcsema_real_eip !70
  %RBP_val = alloca i64, !mcsema_real_eip !70
  %RDI_val = alloca i64, !mcsema_real_eip !70
  %RSI_val = alloca i64, !mcsema_real_eip !70
  %RDX_val = alloca i64, !mcsema_real_eip !70
  %RCX_val = alloca i64, !mcsema_real_eip !70
  %RBX_val = alloca i64, !mcsema_real_eip !70
  %RAX_val = alloca i64, !mcsema_real_eip !70
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !70
  %1 = load i64, i64* %RAX, !mcsema_real_eip !70
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !70
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !70
  %2 = load i64, i64* %RBX, !mcsema_real_eip !70
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !70
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !70
  %3 = load i64, i64* %RCX, !mcsema_real_eip !70
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !70
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !70
  %4 = load i64, i64* %RDX, !mcsema_real_eip !70
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !70
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !70
  %5 = load i64, i64* %RSI, !mcsema_real_eip !70
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !70
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !70
  %6 = load i64, i64* %RDI, !mcsema_real_eip !70
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !70
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !70
  %7 = load i64, i64* %RSP, !mcsema_real_eip !70
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !70
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !70
  %8 = load i64, i64* %RBP, !mcsema_real_eip !70
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !70
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !70
  %9 = load i64, i64* %R8, !mcsema_real_eip !70
  store i64 %9, i64* %R8_val, !mcsema_real_eip !70
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !70
  %10 = load i64, i64* %R9, !mcsema_real_eip !70
  store i64 %10, i64* %R9_val, !mcsema_real_eip !70
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !70
  %11 = load i64, i64* %R10, !mcsema_real_eip !70
  store i64 %11, i64* %R10_val, !mcsema_real_eip !70
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !70
  %12 = load i64, i64* %R11, !mcsema_real_eip !70
  store i64 %12, i64* %R11_val, !mcsema_real_eip !70
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !70
  %13 = load i64, i64* %R12, !mcsema_real_eip !70
  store i64 %13, i64* %R12_val, !mcsema_real_eip !70
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !70
  %14 = load i64, i64* %R13, !mcsema_real_eip !70
  store i64 %14, i64* %R13_val, !mcsema_real_eip !70
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !70
  %15 = load i64, i64* %R14, !mcsema_real_eip !70
  store i64 %15, i64* %R14_val, !mcsema_real_eip !70
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !70
  %16 = load i64, i64* %R15, !mcsema_real_eip !70
  store i64 %16, i64* %R15_val, !mcsema_real_eip !70
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !70
  %17 = load i64, i64* %RIP, !mcsema_real_eip !70
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !70
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !70
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !70
  store i1 %18, i1* %CF_val, !mcsema_real_eip !70
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !70
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !70
  store i1 %19, i1* %PF_val, !mcsema_real_eip !70
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !70
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !70
  store i1 %20, i1* %AF_val, !mcsema_real_eip !70
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !70
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !70
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !70
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !70
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !70
  store i1 %22, i1* %SF_val, !mcsema_real_eip !70
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !70
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !70
  store i1 %23, i1* %OF_val, !mcsema_real_eip !70
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !70
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !70
  store i1 %24, i1* %DF_val, !mcsema_real_eip !70
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !70
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !70
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !70
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !70
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !70
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !70
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !70
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !70
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !70
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !70
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !70
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !70
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !70
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !70
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !70
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !70
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !70
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !70
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !70
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !70
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !70
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !70
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !70
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !70
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !70
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !70
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !70
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !70
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !70
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !70
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !70
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !70
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !70
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !70
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !70
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !70
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !70
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !70
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !70
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !70
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !70
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !70
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !70
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !70
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !70
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !70
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !70
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !70
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !70
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !70
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !70
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !70
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !70
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !70
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !70
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !70
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !70
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !70
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !70
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !70
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !70
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !70
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !70
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !70
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !70
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !70
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !70
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !70
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !70
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !70
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !70
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !70
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !70
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !70
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !70
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !70
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !70
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !70
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !70
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !70
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !70
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !70
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !70
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !70
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !70
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !70
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !70
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !70
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !70
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !70
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !70
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !70
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !70
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !70
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !70
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !70
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !70
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !70
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !70
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !70
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !70
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !70
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !70
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !70
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !70
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !70
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !70
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !70
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !70
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !70
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !70
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !70
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !70
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !70
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !70
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !70
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !70
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !70
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !70
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !70
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !70
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !70
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !70
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !70
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !70
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !70
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !70
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !70
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !70
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !70
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !70
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !70
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !70
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !70
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !70
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !70
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !70
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !70
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !70
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !70
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !70
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !70
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !70
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !70
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -40
  %84 = add i64 %81, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %85 = xor i64 %84, %82, !mcsema_real_eip !72
  %86 = and i64 %_trans_xor_, 16, !mcsema_real_eip !72
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !72
  store i1 %87, i1* %AF_val, !mcsema_real_eip !72
  %_trans_p2i_3 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_trunc_ = trunc i64 %_trans_p2i_3 to i8
  %88 = trunc i64 %84 to i8, !mcsema_real_eip !72
  %89 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !72
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  store i1 %91, i1* %PF_val, !mcsema_real_eip !72
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_4, 0
  %92 = icmp eq i64 %84, 0, !mcsema_real_eip !72
  store i1 %_trans_icmp_eq_, i1* %ZF_val, !mcsema_real_eip !72
  %_trans_p2i_5 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_5, 0
  %93 = icmp slt i64 %84, 0
  store i1 %_trans_icmp_ne_, i1* %SF_val, !mcsema_real_eip !72
  %_trans_p2i_6 = ptrtoint i8* %_new_gep_ to i64
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 32
  %94 = icmp ult i64 %82, 32, !mcsema_real_eip !72
  store i1 %_trans_icmp_ne_7, i1* %CF_val, !mcsema_real_eip !72
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_8
  %95 = and i64 %_trans_xor_, %82, !mcsema_real_eip !72
  %96 = icmp slt i64 %_trans_xor_9, 0
  store i1 %96, i1* %OF_val, !mcsema_real_eip !72
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !72
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -8
  %98 = add i64 %97, -8, !mcsema_real_eip !73
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !73
  %100 = load i64, i64* %RDI_val, !mcsema_real_eip !73
  store i64 %100, i64* %_allin_new_bt_12, !mcsema_real_eip !73
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %102 = add i64 %101, -12, !mcsema_real_eip !74
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !74
  %104 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 1, i32* %104, !mcsema_real_eip !74
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %106 = add i64 %105, -8, !mcsema_real_eip !75
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !75
  %_ptr_to_int_60 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_local_end_to_int_61 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_62 = bitcast i64* %_allin_new_bt_18 to i8*
  %_offset_above_rbp_63 = sub i64 %_ptr_to_int_60, %_local_end_to_int_61
  %_pot_address_in_parent_stack_64 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_63
  %_cond1_65 = icmp ugt i8* %_ptr_bt_62, %_local_stack_end_ptr_
  %_cond2_1_66 = icmp ugt i8* %_ptr_bt_62, %_parent_stack_end_ptr_
  %_cond2_2_67 = icmp ult i8* %_ptr_bt_62, %_parent_stack_start_ptr_
  %_cond2_68 = or i1 %_cond2_1_66, %_cond2_2_67
  %_cond4_69 = icmp ule i8* %_pot_address_in_parent_stack_64, %_parent_stack_end_ptr_
  %_cond1_n_cond2_70 = and i1 %_cond1_65, %_cond2_68
  %_cond1_n_cond2_cond3_71 = and i1 %_cond1_n_cond2_70, %_cond4_69
  br i1 %_cond1_n_cond2_cond3_71, label %108, label %109

; <label>:108:                                    ; preds = %55
  %_address_in_parent_stack_72 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_63
  %_address_in_parent_stack_bt_73 = bitcast i8* %_address_in_parent_stack_72 to i64*
  br label %109

; <label>:109:                                    ; preds = %55, %108
  %110 = phi i64* [ %_allin_new_bt_18, %55 ], [ %_address_in_parent_stack_bt_73, %108 ]
  %_new_load_74 = load i64, i64* %110
  store i64 %_new_load_74, i64* %RDI_val, !mcsema_real_eip !75
  %111 = tail call x86_64_sysvcc i64 @strlen(i64 %_new_load_74), !mcsema_real_eip !76
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !76
  %112 = and i64 %111, 4294967295
  store i64 %112, i64* %RCX_val, !mcsema_real_eip !77
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %114 = add i64 %113, -16, !mcsema_real_eip !78
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !78
  %116 = trunc i64 %111 to i32, !mcsema_real_eip !78
  %117 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !78
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %119 = add i64 %118, -16, !mcsema_real_eip !79
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !79
  %121 = bitcast i64* %_allin_new_bt_24 to i32*
  %_ptr_to_int_75 = ptrtoint i32* %121 to i64
  %_local_end_to_int_76 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_77 = bitcast i32* %121 to i8*
  %_offset_above_rbp_78 = sub i64 %_ptr_to_int_75, %_local_end_to_int_76
  %_pot_address_in_parent_stack_79 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_78
  %_cond1_80 = icmp ugt i8* %_ptr_bt_77, %_local_stack_end_ptr_
  %_cond2_1_81 = icmp ugt i8* %_ptr_bt_77, %_parent_stack_end_ptr_
  %_cond2_2_82 = icmp ult i8* %_ptr_bt_77, %_parent_stack_start_ptr_
  %_cond2_83 = or i1 %_cond2_1_81, %_cond2_2_82
  %_cond4_84 = icmp ule i8* %_pot_address_in_parent_stack_79, %_parent_stack_end_ptr_
  %_cond1_n_cond2_85 = and i1 %_cond1_80, %_cond2_83
  %_cond1_n_cond2_cond3_86 = and i1 %_cond1_n_cond2_85, %_cond4_84
  br i1 %_cond1_n_cond2_cond3_86, label %122, label %123

; <label>:122:                                    ; preds = %109
  %_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_78
  %_address_in_parent_stack_bt_88 = bitcast i8* %_address_in_parent_stack_87 to i32*
  br label %123

; <label>:123:                                    ; preds = %109, %122
  %124 = phi i32* [ %121, %109 ], [ %_address_in_parent_stack_bt_88, %122 ]
  %_new_load_89 = load i32, i32* %124
  %125 = add i32 %_new_load_89, -1
  %126 = xor i32 %125, %_new_load_89, !mcsema_real_eip !79
  %127 = and i32 %126, 16, !mcsema_real_eip !79
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !79
  store i1 %128, i1* %AF_val, !mcsema_real_eip !79
  %129 = trunc i32 %125 to i8, !mcsema_real_eip !79
  %130 = tail call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !79
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  store i1 %132, i1* %PF_val, !mcsema_real_eip !79
  %133 = icmp eq i32 %125, 0, !mcsema_real_eip !79
  store i1 %133, i1* %ZF_val, !mcsema_real_eip !79
  %134 = icmp slt i32 %125, 0
  store i1 %134, i1* %SF_val, !mcsema_real_eip !79
  %135 = icmp eq i32 %_new_load_89, 0
  store i1 %135, i1* %CF_val, !mcsema_real_eip !79
  %136 = and i32 %126, %_new_load_89, !mcsema_real_eip !79
  %137 = icmp slt i32 %136, 0
  store i1 %137, i1* %OF_val, !mcsema_real_eip !79
  %138 = xor i1 %134, %137
  %139 = load i1, i1* %ZF_val, !mcsema_real_eip !80
  %140 = or i1 %139, %138, !mcsema_real_eip !80
  br i1 %140, label %block_0xf9, label %block_0xbe, !mcsema_real_eip !80

block_0xbe:                                       ; preds = %123
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -8
  %142 = add i64 %141, -8, !mcsema_real_eip !81
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !81
  %_ptr_to_int_90 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_local_end_to_int_91 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_92 = bitcast i64* %_allin_new_bt_27 to i8*
  %_offset_above_rbp_93 = sub i64 %_ptr_to_int_90, %_local_end_to_int_91
  %_pot_address_in_parent_stack_94 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_cond1_95 = icmp ugt i8* %_ptr_bt_92, %_local_stack_end_ptr_
  %_cond2_1_96 = icmp ugt i8* %_ptr_bt_92, %_parent_stack_end_ptr_
  %_cond2_2_97 = icmp ult i8* %_ptr_bt_92, %_parent_stack_start_ptr_
  %_cond2_98 = or i1 %_cond2_1_96, %_cond2_2_97
  %_cond4_99 = icmp ule i8* %_pot_address_in_parent_stack_94, %_parent_stack_end_ptr_
  %_cond1_n_cond2_100 = and i1 %_cond1_95, %_cond2_98
  %_cond1_n_cond2_cond3_101 = and i1 %_cond1_n_cond2_100, %_cond4_99
  br i1 %_cond1_n_cond2_cond3_101, label %144, label %145

; <label>:144:                                    ; preds = %block_0xbe
  %_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_address_in_parent_stack_bt_103 = bitcast i8* %_address_in_parent_stack_102 to i64*
  br label %145

; <label>:145:                                    ; preds = %block_0xbe, %144
  %146 = phi i64* [ %_allin_new_bt_27, %block_0xbe ], [ %_address_in_parent_stack_bt_103, %144 ]
  %_new_load_104 = load i64, i64* %146
  store i64 %_new_load_104, i64* %RAX_val, !mcsema_real_eip !81
  %147 = inttoptr i64 %_new_load_104 to i64*, !mcsema_real_eip !82
  %148 = bitcast i64* %147 to i8*
  %_ptr_to_int_105 = ptrtoint i8* %148 to i64
  %_local_end_to_int_106 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_107 = sub i64 %_ptr_to_int_105, %_local_end_to_int_106
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %148, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %148, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %148, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %149, label %150

; <label>:149:                                    ; preds = %145
  %_address_in_parent_stack_116 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  br label %150

; <label>:150:                                    ; preds = %145, %149
  %151 = phi i8* [ %148, %145 ], [ %_address_in_parent_stack_116, %149 ]
  %_new_load_117 = load i8, i8* %151
  %152 = zext i8 %_new_load_117 to i64, !mcsema_real_eip !82
  %153 = load i64, i64* %RCX_val, !mcsema_real_eip !82
  %154 = and i64 %153, -256, !mcsema_real_eip !82
  %155 = or i64 %154, %152
  store i64 %155, i64* %RCX_val, !mcsema_real_eip !82
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -17
  %157 = add i64 %156, -17, !mcsema_real_eip !83
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !83
  %159 = bitcast i64* %_allin_new_bt_30 to i8*
  store i8 %_new_load_117, i8* %159, !mcsema_real_eip !83
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %160 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %161 = add i64 %160, -16, !mcsema_real_eip !84
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !84
  %163 = bitcast i64* %_allin_new_bt_33 to i32*
  %_ptr_to_int_118 = ptrtoint i32* %163 to i64
  %_local_end_to_int_119 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_120 = bitcast i32* %163 to i8*
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_118, %_local_end_to_int_119
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_ptr_bt_120, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_ptr_bt_120, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_ptr_bt_120, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  br i1 %_cond1_n_cond2_cond3_129, label %164, label %165

; <label>:164:                                    ; preds = %150
  %_address_in_parent_stack_130 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_address_in_parent_stack_bt_131 = bitcast i8* %_address_in_parent_stack_130 to i32*
  br label %165

; <label>:165:                                    ; preds = %150, %164
  %166 = phi i32* [ %163, %150 ], [ %_address_in_parent_stack_bt_131, %164 ]
  %_new_load_132 = load i32, i32* %166
  %167 = add i32 %_new_load_132, -1
  %168 = xor i32 %167, %_new_load_132, !mcsema_real_eip !85
  %169 = and i32 %168, 16, !mcsema_real_eip !85
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !85
  store i1 %170, i1* %AF_val, !mcsema_real_eip !85
  %171 = trunc i32 %167 to i8, !mcsema_real_eip !85
  %172 = tail call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !85
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  store i1 %174, i1* %PF_val, !mcsema_real_eip !85
  %175 = icmp eq i32 %167, 0, !mcsema_real_eip !85
  store i1 %175, i1* %ZF_val, !mcsema_real_eip !85
  %176 = icmp slt i32 %167, 0
  store i1 %176, i1* %SF_val, !mcsema_real_eip !85
  %177 = icmp eq i32 %_new_load_132, 0
  store i1 %177, i1* %CF_val, !mcsema_real_eip !85
  %178 = and i32 %168, %_new_load_132, !mcsema_real_eip !85
  %179 = icmp slt i32 %178, 0
  store i1 %179, i1* %OF_val, !mcsema_real_eip !85
  %180 = zext i32 %167 to i64, !mcsema_real_eip !85
  store i64 %180, i64* %RDX_val, !mcsema_real_eip !85
  %181 = sext i32 %167 to i64, !mcsema_real_eip !86
  store i64 %181, i64* %RAX_val, !mcsema_real_eip !86
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %182 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %183 = add i64 %182, -8, !mcsema_real_eip !87
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !87
  %_ptr_to_int_133 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_local_end_to_int_134 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_135 = bitcast i64* %_allin_new_bt_36 to i8*
  %_offset_above_rbp_136 = sub i64 %_ptr_to_int_133, %_local_end_to_int_134
  %_pot_address_in_parent_stack_137 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_136
  %_cond1_138 = icmp ugt i8* %_ptr_bt_135, %_local_stack_end_ptr_
  %_cond2_1_139 = icmp ugt i8* %_ptr_bt_135, %_parent_stack_end_ptr_
  %_cond2_2_140 = icmp ult i8* %_ptr_bt_135, %_parent_stack_start_ptr_
  %_cond2_141 = or i1 %_cond2_1_139, %_cond2_2_140
  %_cond4_142 = icmp ule i8* %_pot_address_in_parent_stack_137, %_parent_stack_end_ptr_
  %_cond1_n_cond2_143 = and i1 %_cond1_138, %_cond2_141
  %_cond1_n_cond2_cond3_144 = and i1 %_cond1_n_cond2_143, %_cond4_142
  br i1 %_cond1_n_cond2_cond3_144, label %185, label %186

; <label>:185:                                    ; preds = %165
  %_address_in_parent_stack_145 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_136
  %_address_in_parent_stack_bt_146 = bitcast i8* %_address_in_parent_stack_145 to i64*
  br label %186

; <label>:186:                                    ; preds = %165, %185
  %187 = phi i64* [ %_allin_new_bt_36, %165 ], [ %_address_in_parent_stack_bt_146, %185 ]
  %_new_load_147 = load i64, i64* %187
  store i64 %_new_load_147, i64* %RSI_val, !mcsema_real_eip !87
  %188 = add i64 %_new_load_147, %181, !mcsema_real_eip !88
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !88
  %190 = bitcast i64* %189 to i8*
  %_ptr_to_int_148 = ptrtoint i8* %190 to i64
  %_local_end_to_int_149 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_150 = sub i64 %_ptr_to_int_148, %_local_end_to_int_149
  %_pot_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_cond1_152 = icmp ugt i8* %190, %_local_stack_end_ptr_
  %_cond2_1_153 = icmp ugt i8* %190, %_parent_stack_end_ptr_
  %_cond2_2_154 = icmp ult i8* %190, %_parent_stack_start_ptr_
  %_cond2_155 = or i1 %_cond2_1_153, %_cond2_2_154
  %_cond4_156 = icmp ule i8* %_pot_address_in_parent_stack_151, %_parent_stack_end_ptr_
  %_cond1_n_cond2_157 = and i1 %_cond1_152, %_cond2_155
  %_cond1_n_cond2_cond3_158 = and i1 %_cond1_n_cond2_157, %_cond4_156
  br i1 %_cond1_n_cond2_cond3_158, label %191, label %192

; <label>:191:                                    ; preds = %186
  %_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  br label %192

; <label>:192:                                    ; preds = %186, %191
  %193 = phi i8* [ %190, %186 ], [ %_address_in_parent_stack_159, %191 ]
  %_new_load_160 = load i8, i8* %193
  %194 = zext i8 %_new_load_160 to i64, !mcsema_real_eip !88
  %195 = load i64, i64* %RCX_val, !mcsema_real_eip !88
  %196 = and i64 %195, -256, !mcsema_real_eip !88
  %197 = or i64 %196, %194
  store i64 %197, i64* %RCX_val, !mcsema_real_eip !88
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -18
  %199 = add i64 %198, -18, !mcsema_real_eip !89
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !89
  %201 = bitcast i64* %_allin_new_bt_39 to i8*
  store i8 %_new_load_160, i8* %201, !mcsema_real_eip !89
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -17
  %203 = add i64 %202, -17, !mcsema_real_eip !90
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !90
  %205 = bitcast i64* %_allin_new_bt_42 to i8*
  %_ptr_to_int_161 = ptrtoint i8* %205 to i64
  %_local_end_to_int_162 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_163 = sub i64 %_ptr_to_int_161, %_local_end_to_int_162
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %205, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %205, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %205, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %206, label %207

; <label>:206:                                    ; preds = %192
  %_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  br label %207

; <label>:207:                                    ; preds = %192, %206
  %208 = phi i8* [ %205, %192 ], [ %_address_in_parent_stack_172, %206 ]
  %_new_load_173 = load i8, i8* %208
  %209 = sext i8 %_new_load_173 to i32, !mcsema_real_eip !90
  %210 = zext i32 %209 to i64, !mcsema_real_eip !90
  store i64 %210, i64* %RDX_val, !mcsema_real_eip !90
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %211 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -18
  %212 = add i64 %211, -18, !mcsema_real_eip !91
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !91
  %214 = bitcast i64* %_allin_new_bt_45 to i8*
  %_ptr_to_int_174 = ptrtoint i8* %214 to i64
  %_local_end_to_int_175 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_174, %_local_end_to_int_175
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %214, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %214, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %214, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %215, label %216

; <label>:215:                                    ; preds = %207
  %_address_in_parent_stack_185 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  br label %216

; <label>:216:                                    ; preds = %207, %215
  %217 = phi i8* [ %214, %207 ], [ %_address_in_parent_stack_185, %215 ]
  %_new_load_186 = load i8, i8* %217
  %218 = sext i8 %_new_load_186 to i32, !mcsema_real_eip !91
  %219 = zext i32 %218 to i64, !mcsema_real_eip !91
  store i64 %219, i64* %RDI_val, !mcsema_real_eip !91
  %220 = load i64, i64* %RDX_val, !mcsema_real_eip !92
  %221 = trunc i64 %220 to i32, !mcsema_real_eip !92
  %222 = sub i32 %221, %218, !mcsema_real_eip !92
  %223 = xor i32 %222, %221, !mcsema_real_eip !92
  %224 = xor i32 %223, %218, !mcsema_real_eip !92
  %225 = and i32 %224, 16, !mcsema_real_eip !92
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !92
  store i1 %226, i1* %AF_val, !mcsema_real_eip !92
  %227 = trunc i32 %222 to i8, !mcsema_real_eip !92
  %228 = tail call i8 @llvm.ctpop.i8(i8 %227), !mcsema_real_eip !92
  %229 = and i8 %228, 1
  %230 = icmp eq i8 %229, 0
  store i1 %230, i1* %PF_val, !mcsema_real_eip !92
  %231 = icmp eq i32 %221, %218
  store i1 %231, i1* %ZF_val, !mcsema_real_eip !92
  %232 = icmp slt i32 %222, 0
  store i1 %232, i1* %SF_val, !mcsema_real_eip !92
  %233 = icmp ult i32 %221, %218, !mcsema_real_eip !92
  store i1 %233, i1* %CF_val, !mcsema_real_eip !92
  %234 = xor i32 %221, %218, !mcsema_real_eip !92
  %235 = and i32 %223, %234, !mcsema_real_eip !92
  %236 = icmp slt i32 %235, 0
  store i1 %236, i1* %OF_val, !mcsema_real_eip !92
  %237 = load i1, i1* %ZF_val, !mcsema_real_eip !93
  br i1 %237, label %block_0xed, label %block_0xf9, !mcsema_real_eip !93

block_0xf9:                                       ; preds = %block_0xed, %216, %123
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %238 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %239 = add i64 %238, -12, !mcsema_real_eip !94
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !94
  %241 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_187 = ptrtoint i32* %241 to i64
  %_local_end_to_int_188 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_189 = bitcast i32* %241 to i8*
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_188
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_ptr_bt_189, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_ptr_bt_189, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_ptr_bt_189, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %242, label %243

; <label>:242:                                    ; preds = %block_0xf9
  %_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_address_in_parent_stack_bt_200 = bitcast i8* %_address_in_parent_stack_199 to i32*
  br label %243

; <label>:243:                                    ; preds = %block_0xf9, %242
  %244 = phi i32* [ %241, %block_0xf9 ], [ %_address_in_parent_stack_bt_200, %242 ]
  %_new_load_201 = load i32, i32* %244
  %245 = zext i32 %_new_load_201 to i64, !mcsema_real_eip !94
  store i64 %245, i64* %RAX_val, !mcsema_real_eip !94
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %246 = load i64, i64* %RSP_val, !mcsema_real_eip !95
  %_new_ptr2int_50 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_50, i64 32)
  %247 = extractvalue { i64, i1 } %uadd, 0
  %248 = xor i64 %247, %_new_ptr2int_50, !mcsema_real_eip !95
  %249 = and i64 %248, 16, !mcsema_real_eip !95
  %250 = icmp ne i64 %249, 0, !mcsema_real_eip !95
  store i1 %250, i1* %AF_val, !mcsema_real_eip !95
  %251 = icmp slt i64 %247, 0
  store i1 %251, i1* %SF_val, !mcsema_real_eip !95
  %252 = icmp eq i64 %247, 0, !mcsema_real_eip !95
  store i1 %252, i1* %ZF_val, !mcsema_real_eip !95
  %253 = xor i64 %_new_ptr2int_50, -9223372036854775808, !mcsema_real_eip !95
  %254 = and i64 %248, %253, !mcsema_real_eip !95
  %255 = icmp slt i64 %254, 0
  store i1 %255, i1* %OF_val, !mcsema_real_eip !95
  %256 = trunc i64 %247 to i8, !mcsema_real_eip !95
  %257 = tail call i8 @llvm.ctpop.i8(i8 %256), !mcsema_real_eip !95
  %258 = and i8 %257, 1
  %259 = icmp eq i8 %258, 0
  store i1 %259, i1* %PF_val, !mcsema_real_eip !95
  %260 = extractvalue { i64, i1 } %uadd, 1
  store i1 %260, i1* %CF_val, !mcsema_real_eip !95
  %_new_int2ptr_ = inttoptr i64 %247 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %247, i64* %RSP_val, !mcsema_real_eip !95
  %261 = inttoptr i64 %247 to i64*, !mcsema_real_eip !96
  %_ptr_to_int_202 = ptrtoint i64* %261 to i64
  %_local_end_to_int_203 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_204 = bitcast i64* %261 to i8*
  %_offset_above_rbp_205 = sub i64 %_ptr_to_int_202, %_local_end_to_int_203
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_ptr_bt_204, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_ptr_bt_204, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_ptr_bt_204, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %262, label %263

; <label>:262:                                    ; preds = %243
  %_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_address_in_parent_stack_bt_215 = bitcast i8* %_address_in_parent_stack_214 to i64*
  br label %263

; <label>:263:                                    ; preds = %243, %262
  %264 = phi i64* [ %261, %243 ], [ %_address_in_parent_stack_bt_215, %262 ]
  %_new_load_216 = load i64, i64* %264
  %_new_int2ptr_51 = inttoptr i64 %_new_load_216 to i8*
  store volatile i8* %_new_int2ptr_51, i8** %_RBP_ptr_
  store i64 %_new_load_216, i64* %RBP_val, !mcsema_real_eip !96
  %265 = add i64 %247, 16, !mcsema_real_eip !97
  %_new_int2ptr_52 = inttoptr i64 %265 to i8*
  store volatile i8* %_new_int2ptr_52, i8** %_RSP_ptr_
  store i64 %265, i64* %RSP_val, !mcsema_real_eip !97
  %266 = load i64, i64* %RAX_val, !mcsema_real_eip !97
  store i64 %266, i64* %RAX, !mcsema_real_eip !97
  %267 = load i64, i64* %RBX_val, !mcsema_real_eip !97
  store i64 %267, i64* %RBX, !mcsema_real_eip !97
  %268 = load i64, i64* %RCX_val, !mcsema_real_eip !97
  store i64 %268, i64* %RCX, !mcsema_real_eip !97
  %269 = load i64, i64* %RDX_val, !mcsema_real_eip !97
  store i64 %269, i64* %RDX, !mcsema_real_eip !97
  %270 = load i64, i64* %RSI_val, !mcsema_real_eip !97
  store i64 %270, i64* %RSI, !mcsema_real_eip !97
  %271 = load i64, i64* %RDI_val, !mcsema_real_eip !97
  store i64 %271, i64* %RDI, !mcsema_real_eip !97
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %272 = load i64, i64* %RSP_val, !mcsema_real_eip !97
  %_new_ptr2int_54 = ptrtoint i8* %_load_rsp_ptr_53 to i64
  store volatile i64 %_new_ptr2int_54, i64* %RSP
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %273 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %_new_ptr2int_56 = ptrtoint i8* %_load_rbp_ptr_55 to i64
  store volatile i64 %_new_ptr2int_56, i64* %RBP
  %274 = load i64, i64* %R8_val, !mcsema_real_eip !97
  store i64 %274, i64* %R8, !mcsema_real_eip !97
  %275 = load i64, i64* %R9_val, !mcsema_real_eip !97
  store i64 %275, i64* %R9, !mcsema_real_eip !97
  %276 = load i64, i64* %R10_val, !mcsema_real_eip !97
  store i64 %276, i64* %R10, !mcsema_real_eip !97
  %277 = load i64, i64* %R11_val, !mcsema_real_eip !97
  store i64 %277, i64* %R11, !mcsema_real_eip !97
  %278 = load i64, i64* %R12_val, !mcsema_real_eip !97
  store i64 %278, i64* %R12, !mcsema_real_eip !97
  %279 = load i64, i64* %R13_val, !mcsema_real_eip !97
  store i64 %279, i64* %R13, !mcsema_real_eip !97
  %280 = load i64, i64* %R14_val, !mcsema_real_eip !97
  store i64 %280, i64* %R14, !mcsema_real_eip !97
  %281 = load i64, i64* %R15_val, !mcsema_real_eip !97
  store i64 %281, i64* %R15, !mcsema_real_eip !97
  %282 = load i64, i64* %RIP_val, !mcsema_real_eip !97
  store i64 %282, i64* %RIP, !mcsema_real_eip !97
  %283 = load i1, i1* %CF_val, !mcsema_real_eip !97
  store i1 %283, i1* %CF, align 1, !mcsema_real_eip !97
  %284 = load i1, i1* %PF_val, !mcsema_real_eip !97
  store i1 %284, i1* %PF, align 1, !mcsema_real_eip !97
  %285 = load i1, i1* %AF_val, !mcsema_real_eip !97
  store i1 %285, i1* %AF, align 1, !mcsema_real_eip !97
  %286 = load i1, i1* %ZF_val, !mcsema_real_eip !97
  store i1 %286, i1* %ZF, align 1, !mcsema_real_eip !97
  %287 = load i1, i1* %SF_val, !mcsema_real_eip !97
  store i1 %287, i1* %SF, align 1, !mcsema_real_eip !97
  %288 = load i1, i1* %OF_val, !mcsema_real_eip !97
  store i1 %288, i1* %OF, align 1, !mcsema_real_eip !97
  %289 = load i1, i1* %DF_val, !mcsema_real_eip !97
  store i1 %289, i1* %DF, align 1, !mcsema_real_eip !97
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !97
  %290 = load i1, i1* %FPU_B_val, !mcsema_real_eip !97
  store i1 %290, i1* %FPU_B, align 1, !mcsema_real_eip !97
  %291 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !97
  store i1 %291, i1* %FPU_C3, align 1, !mcsema_real_eip !97
  %292 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !97
  store i3 %292, i3* %FPU_TOP, align 1, !mcsema_real_eip !97
  %293 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !97
  store i1 %293, i1* %FPU_C2, align 1, !mcsema_real_eip !97
  %294 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !97
  store i1 %294, i1* %FPU_C1, align 1, !mcsema_real_eip !97
  %295 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !97
  store i1 %295, i1* %FPU_C0, align 1, !mcsema_real_eip !97
  %296 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !97
  store i1 %296, i1* %FPU_ES, align 1, !mcsema_real_eip !97
  %297 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !97
  store i1 %297, i1* %FPU_SF, align 1, !mcsema_real_eip !97
  %298 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !97
  store i1 %298, i1* %FPU_PE, align 1, !mcsema_real_eip !97
  %299 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !97
  store i1 %299, i1* %FPU_UE, align 1, !mcsema_real_eip !97
  %300 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !97
  store i1 %300, i1* %FPU_OE, align 1, !mcsema_real_eip !97
  %301 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !97
  store i1 %301, i1* %FPU_ZE, align 1, !mcsema_real_eip !97
  %302 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !97
  store i1 %302, i1* %FPU_DE, align 1, !mcsema_real_eip !97
  %303 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !97
  store i1 %303, i1* %FPU_IE, align 1, !mcsema_real_eip !97
  %304 = load i1, i1* %FPU_X_val, !mcsema_real_eip !97
  store i1 %304, i1* %FPU_X, align 1, !mcsema_real_eip !97
  %305 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !97
  store i2 %305, i2* %FPU_RC, align 1, !mcsema_real_eip !97
  %306 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !97
  store i2 %306, i2* %FPU_PC, align 1, !mcsema_real_eip !97
  %307 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !97
  store i1 %307, i1* %FPU_PM, align 1, !mcsema_real_eip !97
  %308 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !97
  store i1 %308, i1* %FPU_UM, align 1, !mcsema_real_eip !97
  %309 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !97
  store i1 %309, i1* %FPU_OM, align 1, !mcsema_real_eip !97
  %310 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !97
  store i1 %310, i1* %FPU_ZM, align 1, !mcsema_real_eip !97
  %311 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !97
  store i1 %311, i1* %FPU_DM, align 1, !mcsema_real_eip !97
  %312 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !97
  store i1 %312, i1* %FPU_IM, align 1, !mcsema_real_eip !97
  %_ptr_to_int_217 = ptrtoint i64* %53 to i64
  %_local_end_to_int_218 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_219 = bitcast i64* %53 to i8*
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_218
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_ptr_bt_219, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_ptr_bt_219, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_ptr_bt_219, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %313, label %314

; <label>:313:                                    ; preds = %263
  %_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_address_in_parent_stack_bt_230 = bitcast i8* %_address_in_parent_stack_229 to i64*
  br label %314

; <label>:314:                                    ; preds = %263, %313
  %315 = phi i64* [ %53, %263 ], [ %_address_in_parent_stack_bt_230, %313 ]
  %_new_load_231 = load i64, i64* %315
  store i64 %_new_load_231, i64* %52, align 4
  %316 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !97
  store i16 %316, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !97
  %317 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !97
  store i64 %317, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !97
  %318 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !97
  store i16 %318, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !97
  %319 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !97
  store i64 %319, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !97
  %320 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !97
  store i11 %320, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !97
  %321 = load i128, i128* %XMM0_val, !mcsema_real_eip !97
  store i128 %321, i128* %XMM0, align 1, !mcsema_real_eip !97
  %322 = load i128, i128* %XMM1_val, !mcsema_real_eip !97
  store i128 %322, i128* %XMM1, align 1, !mcsema_real_eip !97
  %323 = load i128, i128* %XMM2_val, !mcsema_real_eip !97
  store i128 %323, i128* %XMM2, align 1, !mcsema_real_eip !97
  %324 = load i128, i128* %XMM3_val, !mcsema_real_eip !97
  store i128 %324, i128* %XMM3, align 1, !mcsema_real_eip !97
  %325 = load i128, i128* %XMM4_val, !mcsema_real_eip !97
  store i128 %325, i128* %XMM4, align 1, !mcsema_real_eip !97
  %326 = load i128, i128* %XMM5_val, !mcsema_real_eip !97
  store i128 %326, i128* %XMM5, align 1, !mcsema_real_eip !97
  %327 = load i128, i128* %XMM6_val, !mcsema_real_eip !97
  store i128 %327, i128* %XMM6, align 1, !mcsema_real_eip !97
  %328 = load i128, i128* %XMM7_val, !mcsema_real_eip !97
  store i128 %328, i128* %XMM7, align 1, !mcsema_real_eip !97
  %329 = load i128, i128* %XMM8_val, !mcsema_real_eip !97
  store i128 %329, i128* %XMM8, align 1, !mcsema_real_eip !97
  %330 = load i128, i128* %XMM9_val, !mcsema_real_eip !97
  store i128 %330, i128* %XMM9, align 1, !mcsema_real_eip !97
  %331 = load i128, i128* %XMM10_val, !mcsema_real_eip !97
  store i128 %331, i128* %XMM10, align 1, !mcsema_real_eip !97
  %332 = load i128, i128* %XMM11_val, !mcsema_real_eip !97
  store i128 %332, i128* %XMM11, align 1, !mcsema_real_eip !97
  %333 = load i128, i128* %XMM12_val, !mcsema_real_eip !97
  store i128 %333, i128* %XMM12, align 1, !mcsema_real_eip !97
  %334 = load i128, i128* %XMM13_val, !mcsema_real_eip !97
  store i128 %334, i128* %XMM13, align 1, !mcsema_real_eip !97
  %335 = load i128, i128* %XMM14_val, !mcsema_real_eip !97
  store i128 %335, i128* %XMM14, align 1, !mcsema_real_eip !97
  %336 = load i128, i128* %XMM15_val, !mcsema_real_eip !97
  store i128 %336, i128* %XMM15, align 1, !mcsema_real_eip !97
  %337 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !97
  store i64 %337, i64* %STACK_BASE, align 1, !mcsema_real_eip !97
  %338 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !97
  store i64 %338, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !97
  ret void, !mcsema_real_eip !97

block_0xed:                                       ; preds = %216
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %339 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -12
  %340 = add i64 %339, -12, !mcsema_real_eip !98
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !98
  %342 = bitcast i64* %_allin_new_bt_59 to i32*
  store i32 0, i32* %342, !mcsema_real_eip !98
  br label %block_0xf9
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 12}
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 35}
!12 = !{i64 39}
!13 = !{i64 42}
!14 = !{i64 45}
!15 = !{i64 121}
!16 = !{i64 51}
!17 = !{i64 55}
!18 = !{i64 59}
!19 = !{i64 63}
!20 = !{i64 67}
!21 = !{i64 71}
!22 = !{i64 76}
!23 = !{i64 81}
!24 = !{i64 125}
!25 = !{i64 129}
!26 = !{i64 133}
!27 = !{i64 134}
!28 = !{i64 87}
!29 = !{i64 91}
!30 = !{i64 95}
!31 = !{i64 105}
!32 = !{i64 108}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 272}
!36 = !{i64 273}
!37 = !{i64 276}
!38 = !{i64 280}
!39 = !{i64 284}
!40 = !{i64 288}
!41 = !{i64 292}
!42 = !{i64 296}
!43 = !{i64 300}
!44 = !{i64 304}
!45 = !{i64 306}
!46 = !{i64 309}
!47 = !{i64 313}
!48 = !{i64 318}
!49 = !{i64 324}
!50 = !{i64 328}
!51 = !{i64 333}
!52 = !{i64 351}
!53 = !{i64 402}
!54 = !{i64 403}
!55 = !{i64 339}
!56 = !{i64 343}
!57 = !{i64 346}
!58 = !{i64 354}
!59 = !{i64 358}
!60 = !{i64 360}
!61 = !{i64 364}
!62 = !{i64 370}
!63 = !{i64 374}
!64 = !{i64 378}
!65 = !{i64 384}
!66 = !{i64 388}
!67 = !{i64 392}
!68 = !{i64 394}
!69 = !{i64 397}
!70 = !{i64 144}
!71 = !{i64 145}
!72 = !{i64 148}
!73 = !{i64 152}
!74 = !{i64 156}
!75 = !{i64 163}
!76 = !{i64 167}
!77 = !{i64 172}
!78 = !{i64 174}
!79 = !{i64 177}
!80 = !{i64 184}
!81 = !{i64 190}
!82 = !{i64 194}
!83 = !{i64 196}
!84 = !{i64 199}
!85 = !{i64 202}
!86 = !{i64 208}
!87 = !{i64 211}
!88 = !{i64 215}
!89 = !{i64 218}
!90 = !{i64 221}
!91 = !{i64 225}
!92 = !{i64 229}
!93 = !{i64 231}
!94 = !{i64 249}
!95 = !{i64 252}
!96 = !{i64 256}
!97 = !{i64 257}
!98 = !{i64 237}
