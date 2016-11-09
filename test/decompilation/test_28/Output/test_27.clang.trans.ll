; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_100(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -120
  %82 = add i64 %79, -120
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 112
  %92 = icmp ult i64 %80, 112, !mcsema_real_eip !4
  store i1 %_trans_icmp_ne_7, i1* %CF_val, !mcsema_real_eip !4
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_8
  %93 = and i64 %_trans_xor_, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %_trans_xor_9, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 12, i64* %RDI_val, !mcsema_real_eip !5
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %96 = add i64 %95, -4, !mcsema_real_eip !6
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !6
  %98 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %100 = add i64 %99, -16, !mcsema_real_eip !7
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !7
  %102 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 10, i32* %102, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %104 = add i64 %103, -12, !mcsema_real_eip !8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !8
  %106 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 10, i32* %106, !mcsema_real_eip !8
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %108 = add i64 %107, -8, !mcsema_real_eip !9
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !9
  %110 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 10, i32* %110, !mcsema_real_eip !9
  %111 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %112 = tail call x86_64_sysvcc i64 @malloc(i64 %111), !mcsema_real_eip !10
  store i64 %112, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %114 = add i64 %113, -16, !mcsema_real_eip !11
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !11
  %116 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !11
  store i64 %116, i64* %RDI_val, !mcsema_real_eip !11
  store i64 1, i64* %R8_val, !mcsema_real_eip !12
  store i64 2, i64* %R9_val, !mcsema_real_eip !13
  store i64 3, i64* %RCX_val, !mcsema_real_eip !14
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %118 = add i64 %117, -24, !mcsema_real_eip !15
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !15
  %120 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  store i64 %120, i64* %_allin_new_bt_27, !mcsema_real_eip !15
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %122 = add i64 %121, -24, !mcsema_real_eip !16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !16
  %124 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !16
  store i64 %124, i64* %RAX_val, !mcsema_real_eip !16
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !17
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !17
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %128 = add i64 %127, -24, !mcsema_real_eip !18
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !18
  %130 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !18
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !18
  %131 = add i64 %130, 4, !mcsema_real_eip !19
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !19
  %133 = bitcast i64* %132 to i32*
  store i32 5, i32* %133, !mcsema_real_eip !19
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %135 = add i64 %134, -24, !mcsema_real_eip !20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !20
  %137 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !20
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !20
  %138 = add i64 %137, 8, !mcsema_real_eip !21
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !21
  %140 = bitcast i64* %139 to i32*
  store i32 5, i32* %140, !mcsema_real_eip !21
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %142 = add i64 %141, -24, !mcsema_real_eip !22
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !22
  %144 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !22
  store i64 %144, i64* %RAX_val, !mcsema_real_eip !22
  %145 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !23
  store i64 %145, i64* %RDX_val, !mcsema_real_eip !23
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -16
  %147 = add i64 %146, -16, !mcsema_real_eip !24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !24
  %149 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !24
  store i64 %149, i64* %RSI_val, !mcsema_real_eip !24
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -48
  %150 = add i64 %146, -48, !mcsema_real_eip !25
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !25
  store i64 %149, i64* %_allin_new_bt_44, !mcsema_real_eip !25
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -8
  %153 = add i64 %152, -8, !mcsema_real_eip !26
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !26
  %155 = bitcast i64* %_allin_new_bt_47 to i32*
  %156 = load i32, i32* %155, !mcsema_real_eip !26
  %157 = zext i32 %156 to i64, !mcsema_real_eip !26
  store i64 %157, i64* %R10_val, !mcsema_real_eip !26
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -40
  %159 = add i64 %158, -40, !mcsema_real_eip !27
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !27
  %161 = bitcast i64* %_allin_new_bt_50 to i32*
  store i32 %156, i32* %161, !mcsema_real_eip !27
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -48
  %163 = add i64 %162, -48, !mcsema_real_eip !28
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !28
  %165 = load i64, i64* %_allin_new_bt_53, !mcsema_real_eip !28
  store i64 %165, i64* %RSI_val, !mcsema_real_eip !28
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -40
  %166 = add i64 %162, -40, !mcsema_real_eip !29
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !29
  %168 = bitcast i64* %_allin_new_bt_55 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !29
  %170 = zext i32 %169 to i64, !mcsema_real_eip !29
  store i64 %170, i64* %R10_val, !mcsema_real_eip !29
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -56
  %172 = add i64 %171, -56, !mcsema_real_eip !30
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !30
  %174 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %174, i64* %_allin_new_bt_58, !mcsema_real_eip !30
  %175 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %175, i64* %RDI_val, !mcsema_real_eip !31
  %176 = load i64, i64* %R10_val, !mcsema_real_eip !32
  %177 = and i64 %176, 4294967295
  store i64 %177, i64* %RSI_val, !mcsema_real_eip !32
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -56
  %179 = add i64 %178, -56, !mcsema_real_eip !33
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !33
  %181 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !33
  store i64 %181, i64* %R11_val, !mcsema_real_eip !33
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -64
  %182 = add i64 %178, -64, !mcsema_real_eip !34
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !34
  %184 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  store i64 %184, i64* %_allin_new_bt_63, !mcsema_real_eip !34
  %185 = load i64, i64* %R11_val, !mcsema_real_eip !35
  store i64 %185, i64* %RDX_val, !mcsema_real_eip !35
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -68
  %187 = add i64 %186, -68, !mcsema_real_eip !36
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !36
  %189 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %190 = trunc i64 %189 to i32, !mcsema_real_eip !36
  %191 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %190, i32* %191, !mcsema_real_eip !36
  %192 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !37
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %193 = load i64, i64* %RSP_val, !mcsema_real_eip !38
  %_allin_new_bt_68 = bitcast i8* %_load_rsp_ptr_67 to i64*
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !38
  %195 = bitcast i64* %_allin_new_bt_68 to i32*
  store i32 3, i32* %195, !mcsema_real_eip !38
  %196 = load i64, i64* %R11_val, !mcsema_real_eip !39
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !39
  %198 = load i64, i64* %197, !mcsema_real_eip !39
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !39
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %199 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 8
  %200 = add i64 %199, 8, !mcsema_real_eip !40
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !40
  store i64 %198, i64* %_allin_new_bt_71, !mcsema_real_eip !40
  %202 = load i64, i64* %R11_val, !mcsema_real_eip !41
  %203 = add i64 %202, 8, !mcsema_real_eip !41
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !41
  %205 = bitcast i64* %204 to i32*
  %206 = load i32, i32* %205, !mcsema_real_eip !41
  %207 = zext i32 %206 to i64, !mcsema_real_eip !41
  store i64 %207, i64* %R10_val, !mcsema_real_eip !41
  %_load_rsp_ptr_72 = load i8*, i8** %_RSP_ptr_
  %208 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %_new_gep_73 = getelementptr i8, i8* %_load_rsp_ptr_72, i64 16
  %209 = add i64 %208, 16, !mcsema_real_eip !42
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !42
  %211 = bitcast i64* %_allin_new_bt_74 to i32*
  store i32 %206, i32* %211, !mcsema_real_eip !42
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %212 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %_new_gep_76 = getelementptr i8, i8* %_load_rsp_ptr_75, i64 24
  %213 = add i64 %212, 24, !mcsema_real_eip !43
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !43
  %215 = load i64, i64* %R11_val, !mcsema_real_eip !43
  store i64 %215, i64* %_allin_new_bt_77, !mcsema_real_eip !43
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -64
  %217 = add i64 %216, -64, !mcsema_real_eip !44
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !44
  %219 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !44
  store i64 %219, i64* %RAX_val, !mcsema_real_eip !44
  %_load_rsp_ptr_81 = load i8*, i8** %_RSP_ptr_
  %220 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_81, i64 32
  %221 = add i64 %220, 32, !mcsema_real_eip !45
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !45
  store i64 %219, i64* %_allin_new_bt_83, !mcsema_real_eip !45
  %_load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_
  %223 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_gep_85 = getelementptr i8, i8* %_load_rsp_ptr_84, i64 -8
  %224 = add i64 %223, -8
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %_allin_new_bt_86, !mcsema_real_eip !46
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %224, i64* %RSP_val, !mcsema_real_eip !46
  %226 = load i64, i64* %RAX_val, !mcsema_real_eip !46
  store i64 %226, i64* %RAX, !mcsema_real_eip !46
  %227 = load i64, i64* %RBX_val, !mcsema_real_eip !46
  store i64 %227, i64* %RBX, !mcsema_real_eip !46
  %228 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %228, i64* %RCX, !mcsema_real_eip !46
  %229 = load i64, i64* %RDX_val, !mcsema_real_eip !46
  store i64 %229, i64* %RDX, !mcsema_real_eip !46
  %230 = load i64, i64* %RSI_val, !mcsema_real_eip !46
  store i64 %230, i64* %RSI, !mcsema_real_eip !46
  %231 = load i64, i64* %RDI_val, !mcsema_real_eip !46
  store i64 %231, i64* %RDI, !mcsema_real_eip !46
  %_load_rsp_ptr_87 = load i8*, i8** %_RSP_ptr_
  %232 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_ptr2int_88 = ptrtoint i8* %_load_rsp_ptr_87 to i64
  store volatile i64 %_new_ptr2int_88, i64* %RSP
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %233 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_ptr2int_90 = ptrtoint i8* %_load_rbp_ptr_89 to i64
  store volatile i64 %_new_ptr2int_90, i64* %RBP
  %234 = load i64, i64* %R8_val, !mcsema_real_eip !46
  store i64 %234, i64* %R8, !mcsema_real_eip !46
  %235 = load i64, i64* %R9_val, !mcsema_real_eip !46
  store i64 %235, i64* %R9, !mcsema_real_eip !46
  %236 = load i64, i64* %R10_val, !mcsema_real_eip !46
  store i64 %236, i64* %R10, !mcsema_real_eip !46
  %237 = load i64, i64* %R11_val, !mcsema_real_eip !46
  store i64 %237, i64* %R11, !mcsema_real_eip !46
  %238 = load i64, i64* %R12_val, !mcsema_real_eip !46
  store i64 %238, i64* %R12, !mcsema_real_eip !46
  %239 = load i64, i64* %R13_val, !mcsema_real_eip !46
  store i64 %239, i64* %R13, !mcsema_real_eip !46
  %240 = load i64, i64* %R14_val, !mcsema_real_eip !46
  store i64 %240, i64* %R14, !mcsema_real_eip !46
  %241 = load i64, i64* %R15_val, !mcsema_real_eip !46
  store i64 %241, i64* %R15, !mcsema_real_eip !46
  %242 = load i64, i64* %RIP_val, !mcsema_real_eip !46
  store i64 %242, i64* %RIP, !mcsema_real_eip !46
  %243 = load i1, i1* %CF_val, !mcsema_real_eip !46
  store i1 %243, i1* %CF, align 1, !mcsema_real_eip !46
  %244 = load i1, i1* %PF_val, !mcsema_real_eip !46
  store i1 %244, i1* %PF, align 1, !mcsema_real_eip !46
  %245 = load i1, i1* %AF_val, !mcsema_real_eip !46
  store i1 %245, i1* %AF, align 1, !mcsema_real_eip !46
  %246 = load i1, i1* %ZF_val, !mcsema_real_eip !46
  store i1 %246, i1* %ZF, align 1, !mcsema_real_eip !46
  %247 = load i1, i1* %SF_val, !mcsema_real_eip !46
  store i1 %247, i1* %SF, align 1, !mcsema_real_eip !46
  %248 = load i1, i1* %OF_val, !mcsema_real_eip !46
  store i1 %248, i1* %OF, align 1, !mcsema_real_eip !46
  %249 = load i1, i1* %DF_val, !mcsema_real_eip !46
  store i1 %249, i1* %DF, align 1, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !46
  %250 = load i1, i1* %FPU_B_val, !mcsema_real_eip !46
  store i1 %250, i1* %FPU_B, align 1, !mcsema_real_eip !46
  %251 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !46
  store i1 %251, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  %252 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !46
  store i3 %252, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  %253 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !46
  store i1 %253, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  %254 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !46
  store i1 %254, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  %255 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !46
  store i1 %255, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  %256 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !46
  store i1 %256, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  %257 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !46
  store i1 %257, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  %258 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !46
  store i1 %258, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  %259 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !46
  store i1 %259, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  %260 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !46
  store i1 %260, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  %261 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !46
  store i1 %261, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  %262 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !46
  store i1 %262, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  %263 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !46
  store i1 %263, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  %264 = load i1, i1* %FPU_X_val, !mcsema_real_eip !46
  store i1 %264, i1* %FPU_X, align 1, !mcsema_real_eip !46
  %265 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !46
  store i2 %265, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  %266 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !46
  store i2 %266, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  %267 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !46
  store i1 %267, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  %268 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !46
  store i1 %268, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  %269 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !46
  store i1 %269, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  %270 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !46
  store i1 %270, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  %271 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !46
  store i1 %271, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  %272 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !46
  store i1 %272, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  %273 = load i64, i64* %53, align 4
  store i64 %273, i64* %52, align 4
  %274 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  store i16 %274, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  %275 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  store i64 %275, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !46
  %276 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  store i16 %276, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  %277 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  store i64 %277, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !46
  %278 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  store i11 %278, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  %279 = load i128, i128* %XMM0_val, !mcsema_real_eip !46
  store i128 %279, i128* %XMM0, align 1, !mcsema_real_eip !46
  %280 = load i128, i128* %XMM1_val, !mcsema_real_eip !46
  store i128 %280, i128* %XMM1, align 1, !mcsema_real_eip !46
  %281 = load i128, i128* %XMM2_val, !mcsema_real_eip !46
  store i128 %281, i128* %XMM2, align 1, !mcsema_real_eip !46
  %282 = load i128, i128* %XMM3_val, !mcsema_real_eip !46
  store i128 %282, i128* %XMM3, align 1, !mcsema_real_eip !46
  %283 = load i128, i128* %XMM4_val, !mcsema_real_eip !46
  store i128 %283, i128* %XMM4, align 1, !mcsema_real_eip !46
  %284 = load i128, i128* %XMM5_val, !mcsema_real_eip !46
  store i128 %284, i128* %XMM5, align 1, !mcsema_real_eip !46
  %285 = load i128, i128* %XMM6_val, !mcsema_real_eip !46
  store i128 %285, i128* %XMM6, align 1, !mcsema_real_eip !46
  %286 = load i128, i128* %XMM7_val, !mcsema_real_eip !46
  store i128 %286, i128* %XMM7, align 1, !mcsema_real_eip !46
  %287 = load i128, i128* %XMM8_val, !mcsema_real_eip !46
  store i128 %287, i128* %XMM8, align 1, !mcsema_real_eip !46
  %288 = load i128, i128* %XMM9_val, !mcsema_real_eip !46
  store i128 %288, i128* %XMM9, align 1, !mcsema_real_eip !46
  %289 = load i128, i128* %XMM10_val, !mcsema_real_eip !46
  store i128 %289, i128* %XMM10, align 1, !mcsema_real_eip !46
  %290 = load i128, i128* %XMM11_val, !mcsema_real_eip !46
  store i128 %290, i128* %XMM11, align 1, !mcsema_real_eip !46
  %291 = load i128, i128* %XMM12_val, !mcsema_real_eip !46
  store i128 %291, i128* %XMM12, align 1, !mcsema_real_eip !46
  %292 = load i128, i128* %XMM13_val, !mcsema_real_eip !46
  store i128 %292, i128* %XMM13, align 1, !mcsema_real_eip !46
  %293 = load i128, i128* %XMM14_val, !mcsema_real_eip !46
  store i128 %293, i128* %XMM14, align 1, !mcsema_real_eip !46
  %294 = load i128, i128* %XMM15_val, !mcsema_real_eip !46
  store i128 %294, i128* %XMM15, align 1, !mcsema_real_eip !46
  %295 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !46
  store i64 %295, i64* %STACK_BASE, align 1, !mcsema_real_eip !46
  %296 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  store i64 %296, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !46
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_111)
  %297 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !46
  %298 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %298, i64* %RBX_val, !mcsema_real_eip !46
  %299 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %299, i64* %RCX_val, !mcsema_real_eip !46
  %300 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %300, i64* %RDX_val, !mcsema_real_eip !46
  %301 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %301, i64* %RSI_val, !mcsema_real_eip !46
  %302 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %302, i64* %RDI_val, !mcsema_real_eip !46
  %303 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %303, i64* %RSP_val, !mcsema_real_eip !46
  %304 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %304, i64* %RBP_val, !mcsema_real_eip !46
  %305 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %305, i64* %R8_val, !mcsema_real_eip !46
  %306 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %306, i64* %R9_val, !mcsema_real_eip !46
  %307 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %307, i64* %R10_val, !mcsema_real_eip !46
  %308 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %308, i64* %R11_val, !mcsema_real_eip !46
  %309 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %309, i64* %R12_val, !mcsema_real_eip !46
  %310 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %310, i64* %R13_val, !mcsema_real_eip !46
  %311 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %311, i64* %R14_val, !mcsema_real_eip !46
  %312 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %312, i64* %R15_val, !mcsema_real_eip !46
  %313 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %313, i64* %RIP_val, !mcsema_real_eip !46
  %314 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %314, i1* %CF_val, !mcsema_real_eip !46
  %315 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %315, i1* %PF_val, !mcsema_real_eip !46
  %316 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %316, i1* %AF_val, !mcsema_real_eip !46
  %317 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %317, i1* %ZF_val, !mcsema_real_eip !46
  %318 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %318, i1* %SF_val, !mcsema_real_eip !46
  %319 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %319, i1* %OF_val, !mcsema_real_eip !46
  %320 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %320, i1* %DF_val, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %321 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %321, i1* %FPU_B_val, !mcsema_real_eip !46
  %322 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %322, i1* %FPU_C3_val, !mcsema_real_eip !46
  %323 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %323, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %324 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %324, i1* %FPU_C2_val, !mcsema_real_eip !46
  %325 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %325, i1* %FPU_C1_val, !mcsema_real_eip !46
  %326 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %326, i1* %FPU_C0_val, !mcsema_real_eip !46
  %327 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %327, i1* %FPU_ES_val, !mcsema_real_eip !46
  %328 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %328, i1* %FPU_SF_val, !mcsema_real_eip !46
  %329 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %329, i1* %FPU_PE_val, !mcsema_real_eip !46
  %330 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %330, i1* %FPU_UE_val, !mcsema_real_eip !46
  %331 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %331, i1* %FPU_OE_val, !mcsema_real_eip !46
  %332 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %332, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %333 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %333, i1* %FPU_DE_val, !mcsema_real_eip !46
  %334 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %334, i1* %FPU_IE_val, !mcsema_real_eip !46
  %335 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %335, i1* %FPU_X_val, !mcsema_real_eip !46
  %336 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %336, i2* %FPU_RC_val, !mcsema_real_eip !46
  %337 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %337, i2* %FPU_PC_val, !mcsema_real_eip !46
  %338 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %338, i1* %FPU_PM_val, !mcsema_real_eip !46
  %339 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %339, i1* %FPU_UM_val, !mcsema_real_eip !46
  %340 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %340, i1* %FPU_OM_val, !mcsema_real_eip !46
  %341 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %341, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %342 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %342, i1* %FPU_DM_val, !mcsema_real_eip !46
  %343 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %343, i1* %FPU_IM_val, !mcsema_real_eip !46
  %344 = load i64, i64* %52, align 4
  store i64 %344, i64* %53, align 4
  %345 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %345, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %346 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %346, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %347 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %347, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %348 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %348, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %349 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !46
  store i11 %349, i11* %FPU_FOPCODE_val, !mcsema_real_eip !46
  %350 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %350, i128* %XMM0_val, !mcsema_real_eip !46
  %351 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %351, i128* %XMM1_val, !mcsema_real_eip !46
  %352 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %352, i128* %XMM2_val, !mcsema_real_eip !46
  %353 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %353, i128* %XMM3_val, !mcsema_real_eip !46
  %354 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %354, i128* %XMM4_val, !mcsema_real_eip !46
  %355 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %355, i128* %XMM5_val, !mcsema_real_eip !46
  %356 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %356, i128* %XMM6_val, !mcsema_real_eip !46
  %357 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %357, i128* %XMM7_val, !mcsema_real_eip !46
  %358 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %358, i128* %XMM8_val, !mcsema_real_eip !46
  %359 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %359, i128* %XMM9_val, !mcsema_real_eip !46
  %360 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %360, i128* %XMM10_val, !mcsema_real_eip !46
  %361 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %361, i128* %XMM11_val, !mcsema_real_eip !46
  %362 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %362, i128* %XMM12_val, !mcsema_real_eip !46
  %363 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %363, i128* %XMM13_val, !mcsema_real_eip !46
  %364 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %364, i128* %XMM14_val, !mcsema_real_eip !46
  %365 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %365, i128* %XMM15_val, !mcsema_real_eip !46
  %366 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %366, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %367 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %367, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %368 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -32
  %369 = add i64 %368, -32, !mcsema_real_eip !47
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !47
  %371 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %371, i64* %_allin_new_bt_93, !mcsema_real_eip !47
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -32
  %373 = add i64 %372, -32, !mcsema_real_eip !48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !48
  %375 = load i64, i64* %_allin_new_bt_96, !mcsema_real_eip !48
  store i64 %375, i64* %RAX_val, !mcsema_real_eip !48
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !49
  %377 = bitcast i64* %376 to i32*
  %378 = load i32, i32* %377, !mcsema_real_eip !49
  %379 = zext i32 %378 to i64, !mcsema_real_eip !49
  store i64 %379, i64* %RSI_val, !mcsema_real_eip !49
  %_load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_
  %380 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -32
  %381 = add i64 %380, -32, !mcsema_real_eip !50
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !50
  %383 = load i64, i64* %_allin_new_bt_99, !mcsema_real_eip !50
  store i64 %383, i64* %RAX_val, !mcsema_real_eip !50
  %384 = add i64 %383, 4, !mcsema_real_eip !51
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !51
  %386 = bitcast i64* %385 to i32*
  %387 = load i32, i32* %386, !mcsema_real_eip !51
  %388 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  %389 = trunc i64 %388 to i32, !mcsema_real_eip !51
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %389, i32 %387)
  %390 = extractvalue { i32, i1 } %uadd, 0
  %391 = xor i32 %390, %387, !mcsema_real_eip !51
  %392 = xor i32 %391, %389, !mcsema_real_eip !51
  %393 = and i32 %392, 16, !mcsema_real_eip !51
  %394 = icmp ne i32 %393, 0, !mcsema_real_eip !51
  store i1 %394, i1* %AF_val, !mcsema_real_eip !51
  %395 = icmp slt i32 %390, 0
  store i1 %395, i1* %SF_val, !mcsema_real_eip !51
  %396 = icmp eq i32 %390, 0, !mcsema_real_eip !51
  store i1 %396, i1* %ZF_val, !mcsema_real_eip !51
  %397 = xor i32 %387, -2147483648, !mcsema_real_eip !51
  %398 = xor i32 %397, %389, !mcsema_real_eip !51
  %399 = and i32 %391, %398, !mcsema_real_eip !51
  %400 = icmp slt i32 %399, 0
  store i1 %400, i1* %OF_val, !mcsema_real_eip !51
  %401 = trunc i32 %390 to i8, !mcsema_real_eip !51
  %402 = tail call i8 @llvm.ctpop.i8(i8 %401), !mcsema_real_eip !51
  %403 = and i8 %402, 1
  %404 = icmp eq i8 %403, 0
  store i1 %404, i1* %PF_val, !mcsema_real_eip !51
  %405 = extractvalue { i32, i1 } %uadd, 1
  store i1 %405, i1* %CF_val, !mcsema_real_eip !51
  %406 = zext i32 %390 to i64, !mcsema_real_eip !51
  store i64 %406, i64* %RSI_val, !mcsema_real_eip !51
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %407 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -32
  %408 = add i64 %407, -32, !mcsema_real_eip !52
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !52
  %410 = load i64, i64* %_allin_new_bt_102, !mcsema_real_eip !52
  store i64 %410, i64* %RAX_val, !mcsema_real_eip !52
  %411 = add i64 %410, 8, !mcsema_real_eip !53
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !53
  %413 = bitcast i64* %412 to i32*
  %414 = load i32, i32* %413, !mcsema_real_eip !53
  %415 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  %416 = trunc i64 %415 to i32, !mcsema_real_eip !53
  %417 = add i32 %416, %414
  %418 = zext i32 %417 to i64, !mcsema_real_eip !53
  store i64 %418, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %418, i64* %RAX_val, !mcsema_real_eip !54
  %_load_rsp_ptr_103 = load i8*, i8** %_RSP_ptr_
  %419 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %_new_ptr2int_104 = ptrtoint i8* %_load_rsp_ptr_103 to i64
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_104, i64 112)
  %420 = extractvalue { i64, i1 } %uadd212, 0
  %421 = xor i64 %420, %_new_ptr2int_104, !mcsema_real_eip !55
  %422 = and i64 %421, 16
  %423 = icmp eq i64 %422, 0
  store i1 %423, i1* %AF_val, !mcsema_real_eip !55
  %424 = icmp slt i64 %420, 0
  store i1 %424, i1* %SF_val, !mcsema_real_eip !55
  %425 = icmp eq i64 %420, 0, !mcsema_real_eip !55
  store i1 %425, i1* %ZF_val, !mcsema_real_eip !55
  %426 = xor i64 %_new_ptr2int_104, -9223372036854775808, !mcsema_real_eip !55
  %427 = and i64 %421, %426, !mcsema_real_eip !55
  %428 = icmp slt i64 %427, 0
  store i1 %428, i1* %OF_val, !mcsema_real_eip !55
  %429 = trunc i64 %420 to i8, !mcsema_real_eip !55
  %430 = tail call i8 @llvm.ctpop.i8(i8 %429), !mcsema_real_eip !55
  %431 = and i8 %430, 1
  %432 = icmp eq i8 %431, 0
  store i1 %432, i1* %PF_val, !mcsema_real_eip !55
  %433 = extractvalue { i64, i1 } %uadd212, 1
  store i1 %433, i1* %CF_val, !mcsema_real_eip !55
  %_new_int2ptr_ = inttoptr i64 %420 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %420, i64* %RSP_val, !mcsema_real_eip !55
  %434 = inttoptr i64 %420 to i64*, !mcsema_real_eip !56
  %435 = load i64, i64* %434, !mcsema_real_eip !56
  %_new_int2ptr_105 = inttoptr i64 %435 to i8*
  store volatile i8* %_new_int2ptr_105, i8** %_RBP_ptr_
  store i64 %435, i64* %RBP_val, !mcsema_real_eip !56
  %436 = add i64 %420, 16, !mcsema_real_eip !57
  %_new_int2ptr_106 = inttoptr i64 %436 to i8*
  store volatile i8* %_new_int2ptr_106, i8** %_RSP_ptr_
  store i64 %436, i64* %RSP_val, !mcsema_real_eip !57
  %437 = load i64, i64* %RAX_val, !mcsema_real_eip !57
  store i64 %437, i64* %RAX, !mcsema_real_eip !57
  %438 = load i64, i64* %RBX_val, !mcsema_real_eip !57
  store i64 %438, i64* %RBX, !mcsema_real_eip !57
  %439 = load i64, i64* %RCX_val, !mcsema_real_eip !57
  store i64 %439, i64* %RCX, !mcsema_real_eip !57
  %440 = load i64, i64* %RDX_val, !mcsema_real_eip !57
  store i64 %440, i64* %RDX, !mcsema_real_eip !57
  %441 = load i64, i64* %RSI_val, !mcsema_real_eip !57
  store i64 %441, i64* %RSI, !mcsema_real_eip !57
  %442 = load i64, i64* %RDI_val, !mcsema_real_eip !57
  store i64 %442, i64* %RDI, !mcsema_real_eip !57
  %_load_rsp_ptr_107 = load i8*, i8** %_RSP_ptr_
  %443 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %_new_ptr2int_108 = ptrtoint i8* %_load_rsp_ptr_107 to i64
  store volatile i64 %_new_ptr2int_108, i64* %RSP
  %_load_rbp_ptr_109 = load i8*, i8** %_RBP_ptr_
  %444 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_ptr2int_110 = ptrtoint i8* %_load_rbp_ptr_109 to i64
  store volatile i64 %_new_ptr2int_110, i64* %RBP
  %445 = load i64, i64* %R8_val, !mcsema_real_eip !57
  store i64 %445, i64* %R8, !mcsema_real_eip !57
  %446 = load i64, i64* %R9_val, !mcsema_real_eip !57
  store i64 %446, i64* %R9, !mcsema_real_eip !57
  %447 = load i64, i64* %R10_val, !mcsema_real_eip !57
  store i64 %447, i64* %R10, !mcsema_real_eip !57
  %448 = load i64, i64* %R11_val, !mcsema_real_eip !57
  store i64 %448, i64* %R11, !mcsema_real_eip !57
  %449 = load i64, i64* %R12_val, !mcsema_real_eip !57
  store i64 %449, i64* %R12, !mcsema_real_eip !57
  %450 = load i64, i64* %R13_val, !mcsema_real_eip !57
  store i64 %450, i64* %R13, !mcsema_real_eip !57
  %451 = load i64, i64* %R14_val, !mcsema_real_eip !57
  store i64 %451, i64* %R14, !mcsema_real_eip !57
  %452 = load i64, i64* %R15_val, !mcsema_real_eip !57
  store i64 %452, i64* %R15, !mcsema_real_eip !57
  %453 = load i64, i64* %RIP_val, !mcsema_real_eip !57
  store i64 %453, i64* %RIP, !mcsema_real_eip !57
  %454 = load i1, i1* %CF_val, !mcsema_real_eip !57
  store i1 %454, i1* %CF, align 1, !mcsema_real_eip !57
  %455 = load i1, i1* %PF_val, !mcsema_real_eip !57
  store i1 %455, i1* %PF, align 1, !mcsema_real_eip !57
  %456 = load i1, i1* %AF_val, !mcsema_real_eip !57
  store i1 %456, i1* %AF, align 1, !mcsema_real_eip !57
  %457 = load i1, i1* %ZF_val, !mcsema_real_eip !57
  store i1 %457, i1* %ZF, align 1, !mcsema_real_eip !57
  %458 = load i1, i1* %SF_val, !mcsema_real_eip !57
  store i1 %458, i1* %SF, align 1, !mcsema_real_eip !57
  %459 = load i1, i1* %OF_val, !mcsema_real_eip !57
  store i1 %459, i1* %OF, align 1, !mcsema_real_eip !57
  %460 = load i1, i1* %DF_val, !mcsema_real_eip !57
  store i1 %460, i1* %DF, align 1, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !57
  %461 = load i1, i1* %FPU_B_val, !mcsema_real_eip !57
  store i1 %461, i1* %FPU_B, align 1, !mcsema_real_eip !57
  %462 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !57
  store i1 %462, i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %463 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !57
  store i3 %463, i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %464 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !57
  store i1 %464, i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %465 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !57
  store i1 %465, i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %466 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !57
  store i1 %466, i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %467 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !57
  store i1 %467, i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %468 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !57
  store i1 %468, i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %469 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !57
  store i1 %469, i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %470 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !57
  store i1 %470, i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %471 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !57
  store i1 %471, i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %472 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !57
  store i1 %472, i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %473 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !57
  store i1 %473, i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %474 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !57
  store i1 %474, i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %475 = load i1, i1* %FPU_X_val, !mcsema_real_eip !57
  store i1 %475, i1* %FPU_X, align 1, !mcsema_real_eip !57
  %476 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !57
  store i2 %476, i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %477 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !57
  store i2 %477, i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %478 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !57
  store i1 %478, i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %479 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !57
  store i1 %479, i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %480 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !57
  store i1 %480, i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %481 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !57
  store i1 %481, i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %482 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !57
  store i1 %482, i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %483 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !57
  store i1 %483, i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %484 = load i64, i64* %53, align 4
  store i64 %484, i64* %52, align 4
  %485 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  store i16 %485, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %486 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  store i64 %486, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !57
  %487 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  store i16 %487, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %488 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  store i64 %488, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !57
  %489 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !57
  store i11 %489, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !57
  %490 = load i128, i128* %XMM0_val, !mcsema_real_eip !57
  store i128 %490, i128* %XMM0, align 1, !mcsema_real_eip !57
  %491 = load i128, i128* %XMM1_val, !mcsema_real_eip !57
  store i128 %491, i128* %XMM1, align 1, !mcsema_real_eip !57
  %492 = load i128, i128* %XMM2_val, !mcsema_real_eip !57
  store i128 %492, i128* %XMM2, align 1, !mcsema_real_eip !57
  %493 = load i128, i128* %XMM3_val, !mcsema_real_eip !57
  store i128 %493, i128* %XMM3, align 1, !mcsema_real_eip !57
  %494 = load i128, i128* %XMM4_val, !mcsema_real_eip !57
  store i128 %494, i128* %XMM4, align 1, !mcsema_real_eip !57
  %495 = load i128, i128* %XMM5_val, !mcsema_real_eip !57
  store i128 %495, i128* %XMM5, align 1, !mcsema_real_eip !57
  %496 = load i128, i128* %XMM6_val, !mcsema_real_eip !57
  store i128 %496, i128* %XMM6, align 1, !mcsema_real_eip !57
  %497 = load i128, i128* %XMM7_val, !mcsema_real_eip !57
  store i128 %497, i128* %XMM7, align 1, !mcsema_real_eip !57
  %498 = load i128, i128* %XMM8_val, !mcsema_real_eip !57
  store i128 %498, i128* %XMM8, align 1, !mcsema_real_eip !57
  %499 = load i128, i128* %XMM9_val, !mcsema_real_eip !57
  store i128 %499, i128* %XMM9, align 1, !mcsema_real_eip !57
  %500 = load i128, i128* %XMM10_val, !mcsema_real_eip !57
  store i128 %500, i128* %XMM10, align 1, !mcsema_real_eip !57
  %501 = load i128, i128* %XMM11_val, !mcsema_real_eip !57
  store i128 %501, i128* %XMM11, align 1, !mcsema_real_eip !57
  %502 = load i128, i128* %XMM12_val, !mcsema_real_eip !57
  store i128 %502, i128* %XMM12, align 1, !mcsema_real_eip !57
  %503 = load i128, i128* %XMM13_val, !mcsema_real_eip !57
  store i128 %503, i128* %XMM13, align 1, !mcsema_real_eip !57
  %504 = load i128, i128* %XMM14_val, !mcsema_real_eip !57
  store i128 %504, i128* %XMM14, align 1, !mcsema_real_eip !57
  %505 = load i128, i128* %XMM15_val, !mcsema_real_eip !57
  store i128 %505, i128* %XMM15, align 1, !mcsema_real_eip !57
  %506 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !57
  store i64 %506, i64* %STACK_BASE, align 1, !mcsema_real_eip !57
  %507 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  store i64 %507, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !58
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
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !58
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !58
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !58
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !58
  store i64 %78, i64* %81, !mcsema_real_eip !58
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !59
  %82 = load i64, i64* %R14_val, !mcsema_real_eip !60
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !60
  store i64 %82, i64* %84, !mcsema_real_eip !60
  %85 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  %86 = add i64 %79, -24
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !61
  store i64 %85, i64* %87, !mcsema_real_eip !61
  %88 = add i64 %79, -120
  %89 = xor i64 %88, %86, !mcsema_real_eip !62
  %90 = and i64 %89, 16, !mcsema_real_eip !62
  %91 = icmp ne i64 %90, 0, !mcsema_real_eip !62
  store i1 %91, i1* %AF_val, !mcsema_real_eip !62
  %92 = trunc i64 %88 to i8, !mcsema_real_eip !62
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !62
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF_val, !mcsema_real_eip !62
  %96 = icmp eq i64 %88, 0, !mcsema_real_eip !62
  store i1 %96, i1* %ZF_val, !mcsema_real_eip !62
  %97 = icmp slt i64 %88, 0
  store i1 %97, i1* %SF_val, !mcsema_real_eip !62
  %98 = icmp ult i64 %86, 96, !mcsema_real_eip !62
  store i1 %98, i1* %CF_val, !mcsema_real_eip !62
  %99 = and i64 %89, %86, !mcsema_real_eip !62
  %100 = icmp slt i64 %99, 0
  store i1 %100, i1* %OF_val, !mcsema_real_eip !62
  store i64 %88, i64* %RSP_val, !mcsema_real_eip !62
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %102 = add i64 %101, 48, !mcsema_real_eip !63
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !63
  %104 = load i64, i64* %103, !mcsema_real_eip !63
  store i64 %104, i64* %RAX_val, !mcsema_real_eip !63
  %105 = add i64 %101, 40, !mcsema_real_eip !64
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !64
  %107 = load i64, i64* %106, !mcsema_real_eip !64
  store i64 %107, i64* %R10_val, !mcsema_real_eip !64
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %109 = add i64 %108, 24, !mcsema_real_eip !65
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !65
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !65
  store i64 %111, i64* %R11_val, !mcsema_real_eip !65
  %112 = add i64 %108, 16, !mcsema_real_eip !66
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !66
  %114 = bitcast i64* %113 to i32*
  %115 = load i32, i32* %114, !mcsema_real_eip !66
  %116 = zext i32 %115 to i64, !mcsema_real_eip !66
  store i64 %116, i64* %RBX_val, !mcsema_real_eip !66
  store i64 12, i64* %R14_val, !mcsema_real_eip !67
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %118 = add i64 %117, -48, !mcsema_real_eip !68
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !68
  %120 = load i64, i64* %RDI_val, !mcsema_real_eip !68
  store i64 %120, i64* %119, !mcsema_real_eip !68
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %122 = add i64 %121, -40, !mcsema_real_eip !69
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !69
  %124 = load i64, i64* %RSI_val, !mcsema_real_eip !69
  %125 = trunc i64 %124 to i32, !mcsema_real_eip !69
  %126 = bitcast i64* %123 to i32*
  store i32 %125, i32* %126, !mcsema_real_eip !69
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %128 = add i64 %127, -48, !mcsema_real_eip !70
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !70
  %130 = load i64, i64* %129, !mcsema_real_eip !70
  store i64 %130, i64* %RDI_val, !mcsema_real_eip !70
  %131 = add i64 %127, -32, !mcsema_real_eip !71
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !71
  store i64 %130, i64* %132, !mcsema_real_eip !71
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %134 = add i64 %133, -40, !mcsema_real_eip !72
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !72
  %136 = bitcast i64* %135 to i32*
  %137 = load i32, i32* %136, !mcsema_real_eip !72
  %138 = zext i32 %137 to i64, !mcsema_real_eip !72
  store i64 %138, i64* %RSI_val, !mcsema_real_eip !72
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %140 = add i64 %139, -24, !mcsema_real_eip !73
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !73
  %142 = bitcast i64* %141 to i32*
  store i32 %137, i32* %142, !mcsema_real_eip !73
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %144 = add i64 %143, -56, !mcsema_real_eip !74
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !74
  %146 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %146, i64* %145, !mcsema_real_eip !74
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %148 = add i64 %147, -64, !mcsema_real_eip !75
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !75
  %150 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %150, i64* %149, !mcsema_real_eip !75
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %152 = add i64 %151, -68, !mcsema_real_eip !76
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !76
  %154 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %155 = trunc i64 %154 to i32, !mcsema_real_eip !76
  %156 = bitcast i64* %153 to i32*
  store i32 %155, i32* %156, !mcsema_real_eip !76
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %158 = add i64 %157, -72, !mcsema_real_eip !77
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !77
  %160 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %161 = trunc i64 %160 to i32, !mcsema_real_eip !77
  %162 = bitcast i64* %159 to i32*
  store i32 %161, i32* %162, !mcsema_real_eip !77
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %164 = add i64 %163, -76, !mcsema_real_eip !78
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !78
  %166 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %167 = trunc i64 %166 to i32, !mcsema_real_eip !78
  %168 = bitcast i64* %165 to i32*
  store i32 %167, i32* %168, !mcsema_real_eip !78
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %170 = add i64 %169, -88, !mcsema_real_eip !79
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !79
  %172 = load i64, i64* %R10_val, !mcsema_real_eip !79
  store i64 %172, i64* %171, !mcsema_real_eip !79
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %174 = add i64 %173, -96, !mcsema_real_eip !80
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !80
  %176 = load i64, i64* %RAX_val, !mcsema_real_eip !80
  store i64 %176, i64* %175, !mcsema_real_eip !80
  %177 = load i64, i64* %R14_val, !mcsema_real_eip !81
  store i64 %177, i64* %RDI_val, !mcsema_real_eip !81
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %179 = add i64 %178, -112, !mcsema_real_eip !82
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !82
  %181 = load i64, i64* %R11_val, !mcsema_real_eip !82
  store i64 %181, i64* %180, !mcsema_real_eip !82
  %182 = load i64, i64* %RDI_val, !mcsema_real_eip !83
  %183 = tail call x86_64_sysvcc i64 @malloc(i64 %182), !mcsema_real_eip !83
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !83
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %185 = add i64 %184, -104, !mcsema_real_eip !84
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !84
  store i64 %183, i64* %186, !mcsema_real_eip !84
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %188 = add i64 %187, -32, !mcsema_real_eip !85
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !85
  %190 = bitcast i64* %189 to i32*
  %191 = load i32, i32* %190, !mcsema_real_eip !85
  %192 = zext i32 %191 to i64, !mcsema_real_eip !85
  store i64 %192, i64* %RSI_val, !mcsema_real_eip !85
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %194 = add i64 %193, -56, !mcsema_real_eip !86
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !86
  %196 = load i64, i64* %195, !mcsema_real_eip !86
  store i64 %196, i64* %RAX_val, !mcsema_real_eip !86
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !87
  %198 = bitcast i64* %197 to i32*
  %199 = load i32, i32* %198, !mcsema_real_eip !87
  %200 = load i64, i64* %RSI_val, !mcsema_real_eip !87
  %201 = trunc i64 %200 to i32, !mcsema_real_eip !87
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %201, i32 %199)
  %202 = extractvalue { i32, i1 } %uadd, 0
  %203 = xor i32 %202, %199, !mcsema_real_eip !87
  %204 = xor i32 %203, %201, !mcsema_real_eip !87
  %205 = and i32 %204, 16, !mcsema_real_eip !87
  %206 = icmp ne i32 %205, 0, !mcsema_real_eip !87
  store i1 %206, i1* %AF_val, !mcsema_real_eip !87
  %207 = icmp slt i32 %202, 0
  store i1 %207, i1* %SF_val, !mcsema_real_eip !87
  %208 = icmp eq i32 %202, 0, !mcsema_real_eip !87
  store i1 %208, i1* %ZF_val, !mcsema_real_eip !87
  %209 = xor i32 %199, -2147483648, !mcsema_real_eip !87
  %210 = xor i32 %209, %201, !mcsema_real_eip !87
  %211 = and i32 %203, %210, !mcsema_real_eip !87
  %212 = icmp slt i32 %211, 0
  store i1 %212, i1* %OF_val, !mcsema_real_eip !87
  %213 = trunc i32 %202 to i8, !mcsema_real_eip !87
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !87
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !87
  %217 = extractvalue { i32, i1 } %uadd, 1
  store i1 %217, i1* %CF_val, !mcsema_real_eip !87
  %218 = zext i32 %202 to i64, !mcsema_real_eip !87
  store i64 %218, i64* %RSI_val, !mcsema_real_eip !87
  %219 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %220 = add i64 %219, -64, !mcsema_real_eip !88
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !88
  %222 = load i64, i64* %221, !mcsema_real_eip !88
  store i64 %222, i64* %RAX_val, !mcsema_real_eip !88
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !89
  %224 = bitcast i64* %223 to i32*
  %225 = load i32, i32* %224, !mcsema_real_eip !89
  %226 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %227 = trunc i64 %226 to i32, !mcsema_real_eip !89
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %225)
  %228 = extractvalue { i32, i1 } %uadd71, 0
  %229 = xor i32 %228, %225, !mcsema_real_eip !89
  %230 = xor i32 %229, %227, !mcsema_real_eip !89
  %231 = and i32 %230, 16, !mcsema_real_eip !89
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !89
  store i1 %232, i1* %AF_val, !mcsema_real_eip !89
  %233 = icmp slt i32 %228, 0
  store i1 %233, i1* %SF_val, !mcsema_real_eip !89
  %234 = icmp eq i32 %228, 0, !mcsema_real_eip !89
  store i1 %234, i1* %ZF_val, !mcsema_real_eip !89
  %235 = xor i32 %225, -2147483648, !mcsema_real_eip !89
  %236 = xor i32 %235, %227, !mcsema_real_eip !89
  %237 = and i32 %229, %236, !mcsema_real_eip !89
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF_val, !mcsema_real_eip !89
  %239 = trunc i32 %228 to i8, !mcsema_real_eip !89
  %240 = tail call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !89
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  store i1 %242, i1* %PF_val, !mcsema_real_eip !89
  %243 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %243, i1* %CF_val, !mcsema_real_eip !89
  %244 = zext i32 %228 to i64, !mcsema_real_eip !89
  store i64 %244, i64* %RSI_val, !mcsema_real_eip !89
  %245 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %246 = add i64 %245, -112, !mcsema_real_eip !90
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !90
  %248 = load i64, i64* %247, !mcsema_real_eip !90
  store i64 %248, i64* %RAX_val, !mcsema_real_eip !90
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !91
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !91
  %252 = zext i32 %251 to i64, !mcsema_real_eip !91
  store i64 %252, i64* %R8_val, !mcsema_real_eip !91
  %253 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %254 = add i64 %253, -88, !mcsema_real_eip !92
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !92
  %256 = load i64, i64* %255, !mcsema_real_eip !92
  store i64 %256, i64* %RCX_val, !mcsema_real_eip !92
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !93
  %258 = bitcast i64* %257 to i32*
  %259 = load i32, i32* %258, !mcsema_real_eip !93
  %260 = load i64, i64* %R8_val, !mcsema_real_eip !93
  %261 = trunc i64 %260 to i32, !mcsema_real_eip !93
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %259)
  %262 = extractvalue { i32, i1 } %uadd72, 0
  %263 = xor i32 %262, %259, !mcsema_real_eip !93
  %264 = xor i32 %263, %261, !mcsema_real_eip !93
  %265 = and i32 %264, 16, !mcsema_real_eip !93
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !93
  store i1 %266, i1* %AF_val, !mcsema_real_eip !93
  %267 = icmp slt i32 %262, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !93
  %268 = icmp eq i32 %262, 0, !mcsema_real_eip !93
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !93
  %269 = xor i32 %259, -2147483648, !mcsema_real_eip !93
  %270 = xor i32 %269, %261, !mcsema_real_eip !93
  %271 = and i32 %263, %270, !mcsema_real_eip !93
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !93
  %273 = trunc i32 %262 to i8, !mcsema_real_eip !93
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !93
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !93
  %277 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !93
  %278 = zext i32 %262 to i64, !mcsema_real_eip !93
  store i64 %278, i64* %R8_val, !mcsema_real_eip !93
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %280 = add i64 %279, -96, !mcsema_real_eip !94
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !94
  %282 = load i64, i64* %281, !mcsema_real_eip !94
  store i64 %282, i64* %RCX_val, !mcsema_real_eip !94
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !95
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !95
  %286 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %287 = trunc i64 %286 to i32, !mcsema_real_eip !95
  %288 = add i32 %287, %285
  %289 = zext i32 %288 to i64, !mcsema_real_eip !95
  store i64 %289, i64* %R8_val, !mcsema_real_eip !95
  %290 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %291 = trunc i64 %290 to i32, !mcsema_real_eip !96
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %288, i32 %291)
  %292 = extractvalue { i32, i1 } %uadd74, 0
  %293 = xor i32 %292, %291, !mcsema_real_eip !96
  %294 = xor i32 %293, %288, !mcsema_real_eip !96
  %295 = and i32 %294, 16, !mcsema_real_eip !96
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !96
  store i1 %296, i1* %AF_val, !mcsema_real_eip !96
  %297 = icmp slt i32 %292, 0
  store i1 %297, i1* %SF_val, !mcsema_real_eip !96
  %298 = icmp eq i32 %292, 0, !mcsema_real_eip !96
  store i1 %298, i1* %ZF_val, !mcsema_real_eip !96
  %299 = xor i32 %288, -2147483648, !mcsema_real_eip !96
  %300 = xor i32 %299, %291, !mcsema_real_eip !96
  %301 = and i32 %293, %300, !mcsema_real_eip !96
  %302 = icmp slt i32 %301, 0
  store i1 %302, i1* %OF_val, !mcsema_real_eip !96
  %303 = trunc i32 %292 to i8, !mcsema_real_eip !96
  %304 = tail call i8 @llvm.ctpop.i8(i8 %303), !mcsema_real_eip !96
  %305 = and i8 %304, 1
  %306 = icmp eq i8 %305, 0
  store i1 %306, i1* %PF_val, !mcsema_real_eip !96
  %307 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %307, i1* %CF_val, !mcsema_real_eip !96
  %308 = zext i32 %292 to i64, !mcsema_real_eip !96
  store i64 %308, i64* %RSI_val, !mcsema_real_eip !96
  %309 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %310 = add i64 %309, -104, !mcsema_real_eip !97
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !97
  %312 = load i64, i64* %311, !mcsema_real_eip !97
  store i64 %312, i64* %RCX_val, !mcsema_real_eip !97
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !98
  %314 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %315 = trunc i64 %314 to i32, !mcsema_real_eip !98
  %316 = bitcast i64* %313 to i32*
  store i32 %315, i32* %316, !mcsema_real_eip !98
  %317 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %318 = add i64 %317, -28, !mcsema_real_eip !99
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !99
  %320 = bitcast i64* %319 to i32*
  %321 = load i32, i32* %320, !mcsema_real_eip !99
  %322 = zext i32 %321 to i64, !mcsema_real_eip !99
  store i64 %322, i64* %RSI_val, !mcsema_real_eip !99
  %323 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %324 = add i64 %323, -56, !mcsema_real_eip !100
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !100
  %326 = load i64, i64* %325, !mcsema_real_eip !100
  store i64 %326, i64* %RCX_val, !mcsema_real_eip !100
  %327 = add i64 %326, 4, !mcsema_real_eip !101
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !101
  %329 = bitcast i64* %328 to i32*
  %330 = load i32, i32* %329, !mcsema_real_eip !101
  %331 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %332 = trunc i64 %331 to i32, !mcsema_real_eip !101
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 %330)
  %333 = extractvalue { i32, i1 } %uadd75, 0
  %334 = xor i32 %333, %330, !mcsema_real_eip !101
  %335 = xor i32 %334, %332, !mcsema_real_eip !101
  %336 = and i32 %335, 16, !mcsema_real_eip !101
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !101
  store i1 %337, i1* %AF_val, !mcsema_real_eip !101
  %338 = icmp slt i32 %333, 0
  store i1 %338, i1* %SF_val, !mcsema_real_eip !101
  %339 = icmp eq i32 %333, 0, !mcsema_real_eip !101
  store i1 %339, i1* %ZF_val, !mcsema_real_eip !101
  %340 = xor i32 %330, -2147483648, !mcsema_real_eip !101
  %341 = xor i32 %340, %332, !mcsema_real_eip !101
  %342 = and i32 %334, %341, !mcsema_real_eip !101
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF_val, !mcsema_real_eip !101
  %344 = trunc i32 %333 to i8, !mcsema_real_eip !101
  %345 = tail call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !101
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF_val, !mcsema_real_eip !101
  %348 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %348, i1* %CF_val, !mcsema_real_eip !101
  %349 = zext i32 %333 to i64, !mcsema_real_eip !101
  store i64 %349, i64* %RSI_val, !mcsema_real_eip !101
  %350 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %351 = add i64 %350, -64, !mcsema_real_eip !102
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !102
  %353 = load i64, i64* %352, !mcsema_real_eip !102
  store i64 %353, i64* %RCX_val, !mcsema_real_eip !102
  %354 = add i64 %353, 4, !mcsema_real_eip !103
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !103
  %356 = bitcast i64* %355 to i32*
  %357 = load i32, i32* %356, !mcsema_real_eip !103
  %358 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %359 = trunc i64 %358 to i32, !mcsema_real_eip !103
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %359, i32 %357)
  %360 = extractvalue { i32, i1 } %uadd76, 0
  %361 = xor i32 %360, %357, !mcsema_real_eip !103
  %362 = xor i32 %361, %359, !mcsema_real_eip !103
  %363 = and i32 %362, 16, !mcsema_real_eip !103
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !103
  store i1 %364, i1* %AF_val, !mcsema_real_eip !103
  %365 = icmp slt i32 %360, 0
  store i1 %365, i1* %SF_val, !mcsema_real_eip !103
  %366 = icmp eq i32 %360, 0, !mcsema_real_eip !103
  store i1 %366, i1* %ZF_val, !mcsema_real_eip !103
  %367 = xor i32 %357, -2147483648, !mcsema_real_eip !103
  %368 = xor i32 %367, %359, !mcsema_real_eip !103
  %369 = and i32 %361, %368, !mcsema_real_eip !103
  %370 = icmp slt i32 %369, 0
  store i1 %370, i1* %OF_val, !mcsema_real_eip !103
  %371 = trunc i32 %360 to i8, !mcsema_real_eip !103
  %372 = tail call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !103
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  store i1 %374, i1* %PF_val, !mcsema_real_eip !103
  %375 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %375, i1* %CF_val, !mcsema_real_eip !103
  %376 = zext i32 %360 to i64, !mcsema_real_eip !103
  store i64 %376, i64* %RSI_val, !mcsema_real_eip !103
  %377 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %378 = add i64 %377, 4, !mcsema_real_eip !104
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !104
  %380 = bitcast i64* %379 to i32*
  %381 = load i32, i32* %380, !mcsema_real_eip !104
  %382 = zext i32 %381 to i64, !mcsema_real_eip !104
  store i64 %382, i64* %R8_val, !mcsema_real_eip !104
  %383 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %384 = add i64 %383, -88, !mcsema_real_eip !105
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !105
  %386 = load i64, i64* %385, !mcsema_real_eip !105
  store i64 %386, i64* %RCX_val, !mcsema_real_eip !105
  %387 = add i64 %386, 4, !mcsema_real_eip !106
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !106
  %389 = bitcast i64* %388 to i32*
  %390 = load i32, i32* %389, !mcsema_real_eip !106
  %391 = load i64, i64* %R8_val, !mcsema_real_eip !106
  %392 = trunc i64 %391 to i32, !mcsema_real_eip !106
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 %390)
  %393 = extractvalue { i32, i1 } %uadd77, 0
  %394 = xor i32 %393, %390, !mcsema_real_eip !106
  %395 = xor i32 %394, %392, !mcsema_real_eip !106
  %396 = and i32 %395, 16, !mcsema_real_eip !106
  %397 = icmp ne i32 %396, 0, !mcsema_real_eip !106
  store i1 %397, i1* %AF_val, !mcsema_real_eip !106
  %398 = icmp slt i32 %393, 0
  store i1 %398, i1* %SF_val, !mcsema_real_eip !106
  %399 = icmp eq i32 %393, 0, !mcsema_real_eip !106
  store i1 %399, i1* %ZF_val, !mcsema_real_eip !106
  %400 = xor i32 %390, -2147483648, !mcsema_real_eip !106
  %401 = xor i32 %400, %392, !mcsema_real_eip !106
  %402 = and i32 %394, %401, !mcsema_real_eip !106
  %403 = icmp slt i32 %402, 0
  store i1 %403, i1* %OF_val, !mcsema_real_eip !106
  %404 = trunc i32 %393 to i8, !mcsema_real_eip !106
  %405 = tail call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !106
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF_val, !mcsema_real_eip !106
  %408 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %408, i1* %CF_val, !mcsema_real_eip !106
  %409 = zext i32 %393 to i64, !mcsema_real_eip !106
  store i64 %409, i64* %R8_val, !mcsema_real_eip !106
  %410 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %411 = add i64 %410, -96, !mcsema_real_eip !107
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !107
  %413 = load i64, i64* %412, !mcsema_real_eip !107
  store i64 %413, i64* %RCX_val, !mcsema_real_eip !107
  %414 = add i64 %413, 4, !mcsema_real_eip !108
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !108
  %416 = bitcast i64* %415 to i32*
  %417 = load i32, i32* %416, !mcsema_real_eip !108
  %418 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %419 = trunc i64 %418 to i32, !mcsema_real_eip !108
  %420 = add i32 %419, %417
  %421 = zext i32 %420 to i64, !mcsema_real_eip !108
  store i64 %421, i64* %R8_val, !mcsema_real_eip !108
  %422 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %423 = trunc i64 %422 to i32, !mcsema_real_eip !109
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %420, i32 %423)
  %424 = extractvalue { i32, i1 } %uadd79, 0
  %425 = xor i32 %424, %423, !mcsema_real_eip !109
  %426 = xor i32 %425, %420, !mcsema_real_eip !109
  %427 = and i32 %426, 16, !mcsema_real_eip !109
  %428 = icmp ne i32 %427, 0, !mcsema_real_eip !109
  store i1 %428, i1* %AF_val, !mcsema_real_eip !109
  %429 = icmp slt i32 %424, 0
  store i1 %429, i1* %SF_val, !mcsema_real_eip !109
  %430 = icmp eq i32 %424, 0, !mcsema_real_eip !109
  store i1 %430, i1* %ZF_val, !mcsema_real_eip !109
  %431 = xor i32 %420, -2147483648, !mcsema_real_eip !109
  %432 = xor i32 %431, %423, !mcsema_real_eip !109
  %433 = and i32 %425, %432, !mcsema_real_eip !109
  %434 = icmp slt i32 %433, 0
  store i1 %434, i1* %OF_val, !mcsema_real_eip !109
  %435 = trunc i32 %424 to i8, !mcsema_real_eip !109
  %436 = tail call i8 @llvm.ctpop.i8(i8 %435), !mcsema_real_eip !109
  %437 = and i8 %436, 1
  %438 = icmp eq i8 %437, 0
  store i1 %438, i1* %PF_val, !mcsema_real_eip !109
  %439 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %439, i1* %CF_val, !mcsema_real_eip !109
  %440 = zext i32 %424 to i64, !mcsema_real_eip !109
  store i64 %440, i64* %RSI_val, !mcsema_real_eip !109
  %441 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %442 = add i64 %441, -104, !mcsema_real_eip !110
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !110
  %444 = load i64, i64* %443, !mcsema_real_eip !110
  store i64 %444, i64* %RCX_val, !mcsema_real_eip !110
  %445 = add i64 %444, 4, !mcsema_real_eip !111
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !111
  %447 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %448 = trunc i64 %447 to i32, !mcsema_real_eip !111
  %449 = bitcast i64* %446 to i32*
  store i32 %448, i32* %449, !mcsema_real_eip !111
  %450 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %451 = add i64 %450, -24, !mcsema_real_eip !112
  %452 = inttoptr i64 %451 to i64*, !mcsema_real_eip !112
  %453 = bitcast i64* %452 to i32*
  %454 = load i32, i32* %453, !mcsema_real_eip !112
  %455 = zext i32 %454 to i64, !mcsema_real_eip !112
  store i64 %455, i64* %RSI_val, !mcsema_real_eip !112
  %456 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %457 = add i64 %456, -56, !mcsema_real_eip !113
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !113
  %459 = load i64, i64* %458, !mcsema_real_eip !113
  store i64 %459, i64* %RCX_val, !mcsema_real_eip !113
  %460 = add i64 %459, 8, !mcsema_real_eip !114
  %461 = inttoptr i64 %460 to i64*, !mcsema_real_eip !114
  %462 = bitcast i64* %461 to i32*
  %463 = load i32, i32* %462, !mcsema_real_eip !114
  %464 = load i64, i64* %RSI_val, !mcsema_real_eip !114
  %465 = trunc i64 %464 to i32, !mcsema_real_eip !114
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %465, i32 %463)
  %466 = extractvalue { i32, i1 } %uadd80, 0
  %467 = xor i32 %466, %463, !mcsema_real_eip !114
  %468 = xor i32 %467, %465, !mcsema_real_eip !114
  %469 = and i32 %468, 16, !mcsema_real_eip !114
  %470 = icmp ne i32 %469, 0, !mcsema_real_eip !114
  store i1 %470, i1* %AF_val, !mcsema_real_eip !114
  %471 = icmp slt i32 %466, 0
  store i1 %471, i1* %SF_val, !mcsema_real_eip !114
  %472 = icmp eq i32 %466, 0, !mcsema_real_eip !114
  store i1 %472, i1* %ZF_val, !mcsema_real_eip !114
  %473 = xor i32 %463, -2147483648, !mcsema_real_eip !114
  %474 = xor i32 %473, %465, !mcsema_real_eip !114
  %475 = and i32 %467, %474, !mcsema_real_eip !114
  %476 = icmp slt i32 %475, 0
  store i1 %476, i1* %OF_val, !mcsema_real_eip !114
  %477 = trunc i32 %466 to i8, !mcsema_real_eip !114
  %478 = tail call i8 @llvm.ctpop.i8(i8 %477), !mcsema_real_eip !114
  %479 = and i8 %478, 1
  %480 = icmp eq i8 %479, 0
  store i1 %480, i1* %PF_val, !mcsema_real_eip !114
  %481 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %481, i1* %CF_val, !mcsema_real_eip !114
  %482 = zext i32 %466 to i64, !mcsema_real_eip !114
  store i64 %482, i64* %RSI_val, !mcsema_real_eip !114
  %483 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %484 = add i64 %483, -64, !mcsema_real_eip !115
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !115
  %486 = load i64, i64* %485, !mcsema_real_eip !115
  store i64 %486, i64* %RCX_val, !mcsema_real_eip !115
  %487 = add i64 %486, 8, !mcsema_real_eip !116
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !116
  %489 = bitcast i64* %488 to i32*
  %490 = load i32, i32* %489, !mcsema_real_eip !116
  %491 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %492 = trunc i64 %491 to i32, !mcsema_real_eip !116
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %492, i32 %490)
  %493 = extractvalue { i32, i1 } %uadd81, 0
  %494 = xor i32 %493, %490, !mcsema_real_eip !116
  %495 = xor i32 %494, %492, !mcsema_real_eip !116
  %496 = and i32 %495, 16, !mcsema_real_eip !116
  %497 = icmp ne i32 %496, 0, !mcsema_real_eip !116
  store i1 %497, i1* %AF_val, !mcsema_real_eip !116
  %498 = icmp slt i32 %493, 0
  store i1 %498, i1* %SF_val, !mcsema_real_eip !116
  %499 = icmp eq i32 %493, 0, !mcsema_real_eip !116
  store i1 %499, i1* %ZF_val, !mcsema_real_eip !116
  %500 = xor i32 %490, -2147483648, !mcsema_real_eip !116
  %501 = xor i32 %500, %492, !mcsema_real_eip !116
  %502 = and i32 %494, %501, !mcsema_real_eip !116
  %503 = icmp slt i32 %502, 0
  store i1 %503, i1* %OF_val, !mcsema_real_eip !116
  %504 = trunc i32 %493 to i8, !mcsema_real_eip !116
  %505 = tail call i8 @llvm.ctpop.i8(i8 %504), !mcsema_real_eip !116
  %506 = and i8 %505, 1
  %507 = icmp eq i8 %506, 0
  store i1 %507, i1* %PF_val, !mcsema_real_eip !116
  %508 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %508, i1* %CF_val, !mcsema_real_eip !116
  %509 = zext i32 %493 to i64, !mcsema_real_eip !116
  store i64 %509, i64* %RSI_val, !mcsema_real_eip !116
  %510 = load i64, i64* %RAX_val, !mcsema_real_eip !117
  %511 = add i64 %510, 8, !mcsema_real_eip !117
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !117
  %513 = bitcast i64* %512 to i32*
  %514 = load i32, i32* %513, !mcsema_real_eip !117
  %515 = zext i32 %514 to i64, !mcsema_real_eip !117
  store i64 %515, i64* %R8_val, !mcsema_real_eip !117
  %516 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %517 = add i64 %516, -88, !mcsema_real_eip !118
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !118
  %519 = load i64, i64* %518, !mcsema_real_eip !118
  store i64 %519, i64* %RCX_val, !mcsema_real_eip !118
  %520 = add i64 %519, 8, !mcsema_real_eip !119
  %521 = inttoptr i64 %520 to i64*, !mcsema_real_eip !119
  %522 = bitcast i64* %521 to i32*
  %523 = load i32, i32* %522, !mcsema_real_eip !119
  %524 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %525 = trunc i64 %524 to i32, !mcsema_real_eip !119
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %525, i32 %523)
  %526 = extractvalue { i32, i1 } %uadd82, 0
  %527 = xor i32 %526, %523, !mcsema_real_eip !119
  %528 = xor i32 %527, %525, !mcsema_real_eip !119
  %529 = and i32 %528, 16, !mcsema_real_eip !119
  %530 = icmp ne i32 %529, 0, !mcsema_real_eip !119
  store i1 %530, i1* %AF_val, !mcsema_real_eip !119
  %531 = icmp slt i32 %526, 0
  store i1 %531, i1* %SF_val, !mcsema_real_eip !119
  %532 = icmp eq i32 %526, 0, !mcsema_real_eip !119
  store i1 %532, i1* %ZF_val, !mcsema_real_eip !119
  %533 = xor i32 %523, -2147483648, !mcsema_real_eip !119
  %534 = xor i32 %533, %525, !mcsema_real_eip !119
  %535 = and i32 %527, %534, !mcsema_real_eip !119
  %536 = icmp slt i32 %535, 0
  store i1 %536, i1* %OF_val, !mcsema_real_eip !119
  %537 = trunc i32 %526 to i8, !mcsema_real_eip !119
  %538 = tail call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !119
  %539 = and i8 %538, 1
  %540 = icmp eq i8 %539, 0
  store i1 %540, i1* %PF_val, !mcsema_real_eip !119
  %541 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %541, i1* %CF_val, !mcsema_real_eip !119
  %542 = zext i32 %526 to i64, !mcsema_real_eip !119
  store i64 %542, i64* %R8_val, !mcsema_real_eip !119
  %543 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %544 = add i64 %543, -96, !mcsema_real_eip !120
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !120
  %546 = load i64, i64* %545, !mcsema_real_eip !120
  store i64 %546, i64* %RCX_val, !mcsema_real_eip !120
  %547 = add i64 %546, 8, !mcsema_real_eip !121
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !121
  %549 = bitcast i64* %548 to i32*
  %550 = load i32, i32* %549, !mcsema_real_eip !121
  %551 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %552 = trunc i64 %551 to i32, !mcsema_real_eip !121
  %553 = add i32 %552, %550
  %554 = zext i32 %553 to i64, !mcsema_real_eip !121
  store i64 %554, i64* %R8_val, !mcsema_real_eip !121
  %555 = load i64, i64* %RSI_val, !mcsema_real_eip !122
  %556 = trunc i64 %555 to i32, !mcsema_real_eip !122
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %553, i32 %556)
  %557 = extractvalue { i32, i1 } %uadd84, 0
  %558 = xor i32 %557, %556, !mcsema_real_eip !122
  %559 = xor i32 %558, %553, !mcsema_real_eip !122
  %560 = and i32 %559, 16, !mcsema_real_eip !122
  %561 = icmp ne i32 %560, 0, !mcsema_real_eip !122
  store i1 %561, i1* %AF_val, !mcsema_real_eip !122
  %562 = icmp slt i32 %557, 0
  store i1 %562, i1* %SF_val, !mcsema_real_eip !122
  %563 = icmp eq i32 %557, 0, !mcsema_real_eip !122
  store i1 %563, i1* %ZF_val, !mcsema_real_eip !122
  %564 = xor i32 %553, -2147483648, !mcsema_real_eip !122
  %565 = xor i32 %564, %556, !mcsema_real_eip !122
  %566 = and i32 %558, %565, !mcsema_real_eip !122
  %567 = icmp slt i32 %566, 0
  store i1 %567, i1* %OF_val, !mcsema_real_eip !122
  %568 = trunc i32 %557 to i8, !mcsema_real_eip !122
  %569 = tail call i8 @llvm.ctpop.i8(i8 %568), !mcsema_real_eip !122
  %570 = and i8 %569, 1
  %571 = icmp eq i8 %570, 0
  store i1 %571, i1* %PF_val, !mcsema_real_eip !122
  %572 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %572, i1* %CF_val, !mcsema_real_eip !122
  %573 = zext i32 %557 to i64, !mcsema_real_eip !122
  store i64 %573, i64* %RSI_val, !mcsema_real_eip !122
  %574 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %575 = add i64 %574, -104, !mcsema_real_eip !123
  %576 = inttoptr i64 %575 to i64*, !mcsema_real_eip !123
  %577 = load i64, i64* %576, !mcsema_real_eip !123
  store i64 %577, i64* %RCX_val, !mcsema_real_eip !123
  %578 = add i64 %577, 8, !mcsema_real_eip !124
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !124
  %580 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %581 = trunc i64 %580 to i32, !mcsema_real_eip !124
  %582 = bitcast i64* %579 to i32*
  store i32 %581, i32* %582, !mcsema_real_eip !124
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %584 = add i64 %583, -104, !mcsema_real_eip !125
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !125
  %586 = load i64, i64* %585, !mcsema_real_eip !125
  store i64 %586, i64* %RAX_val, !mcsema_real_eip !125
  %587 = load i64, i64* %RSP_val, !mcsema_real_eip !126
  %uadd85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %587, i64 96)
  %588 = extractvalue { i64, i1 } %uadd85, 0
  %589 = xor i64 %588, %587, !mcsema_real_eip !126
  %590 = and i64 %589, 16, !mcsema_real_eip !126
  %591 = icmp ne i64 %590, 0, !mcsema_real_eip !126
  store i1 %591, i1* %AF_val, !mcsema_real_eip !126
  %592 = icmp slt i64 %588, 0
  store i1 %592, i1* %SF_val, !mcsema_real_eip !126
  %593 = icmp eq i64 %588, 0, !mcsema_real_eip !126
  store i1 %593, i1* %ZF_val, !mcsema_real_eip !126
  %594 = xor i64 %587, -9223372036854775808, !mcsema_real_eip !126
  %595 = and i64 %589, %594, !mcsema_real_eip !126
  %596 = icmp slt i64 %595, 0
  store i1 %596, i1* %OF_val, !mcsema_real_eip !126
  %597 = trunc i64 %588 to i8, !mcsema_real_eip !126
  %598 = tail call i8 @llvm.ctpop.i8(i8 %597), !mcsema_real_eip !126
  %599 = and i8 %598, 1
  %600 = icmp eq i8 %599, 0
  store i1 %600, i1* %PF_val, !mcsema_real_eip !126
  %601 = extractvalue { i64, i1 } %uadd85, 1
  store i1 %601, i1* %CF_val, !mcsema_real_eip !126
  store i64 %588, i64* %RSP_val, !mcsema_real_eip !126
  %602 = inttoptr i64 %588 to i64*, !mcsema_real_eip !127
  %603 = load i64, i64* %602, !mcsema_real_eip !127
  store i64 %603, i64* %RBX_val, !mcsema_real_eip !127
  %604 = add i64 %588, 8, !mcsema_real_eip !127
  store i64 %604, i64* %RSP_val, !mcsema_real_eip !127
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !128
  %606 = load i64, i64* %605, !mcsema_real_eip !128
  store i64 %606, i64* %R14_val, !mcsema_real_eip !128
  %607 = add i64 %588, 16, !mcsema_real_eip !128
  store i64 %607, i64* %RSP_val, !mcsema_real_eip !128
  %608 = inttoptr i64 %607 to i64*, !mcsema_real_eip !129
  %609 = load i64, i64* %608, !mcsema_real_eip !129
  store i64 %609, i64* %RBP_val, !mcsema_real_eip !129
  %610 = add i64 %588, 32, !mcsema_real_eip !130
  store i64 %610, i64* %RSP_val, !mcsema_real_eip !130
  %611 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %611, i64* %RAX, !mcsema_real_eip !130
  %612 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %612, i64* %RBX, !mcsema_real_eip !130
  %613 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %613, i64* %RCX, !mcsema_real_eip !130
  %614 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %614, i64* %RDX, !mcsema_real_eip !130
  %615 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %615, i64* %RSI, !mcsema_real_eip !130
  %616 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %616, i64* %RDI, !mcsema_real_eip !130
  %617 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %617, i64* %RSP, !mcsema_real_eip !130
  %618 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %618, i64* %RBP, !mcsema_real_eip !130
  %619 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %619, i64* %R8, !mcsema_real_eip !130
  %620 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %620, i64* %R9, !mcsema_real_eip !130
  %621 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %621, i64* %R10, !mcsema_real_eip !130
  %622 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %622, i64* %R11, !mcsema_real_eip !130
  %623 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %623, i64* %R12, !mcsema_real_eip !130
  %624 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %624, i64* %R13, !mcsema_real_eip !130
  %625 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %625, i64* %R14, !mcsema_real_eip !130
  %626 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %626, i64* %R15, !mcsema_real_eip !130
  %627 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %627, i64* %RIP, !mcsema_real_eip !130
  %628 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %628, i1* %CF, align 1, !mcsema_real_eip !130
  %629 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %629, i1* %PF, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %630, i1* %AF, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %631, i1* %ZF, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %632, i1* %SF, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %633, i1* %OF, align 1, !mcsema_real_eip !130
  %634 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %634, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %635 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %635, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %636 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %636, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %637 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %637, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %638 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %638, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %639 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %639, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %640 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %640, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %641 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %641, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %642 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %642, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %643 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %643, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %644 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %644, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %645 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %645, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %646 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %646, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %647 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %647, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %648 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %648, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %649 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %649, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %650 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %650, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %651 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %651, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %652 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %652, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %653 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %653, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %654 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %654, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %655 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %655, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %656 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %656, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %657 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %657, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %658 = load i64, i64* %53, align 4
  store i64 %658, i64* %52, align 4
  %659 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %659, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %660 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %660, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %661 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %661, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %662 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %662, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %663 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !130
  store i11 %663, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !130
  %664 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %664, i128* %XMM0, align 1, !mcsema_real_eip !130
  %665 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %665, i128* %XMM1, align 1, !mcsema_real_eip !130
  %666 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %666, i128* %XMM2, align 1, !mcsema_real_eip !130
  %667 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %667, i128* %XMM3, align 1, !mcsema_real_eip !130
  %668 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %668, i128* %XMM4, align 1, !mcsema_real_eip !130
  %669 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %669, i128* %XMM5, align 1, !mcsema_real_eip !130
  %670 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %670, i128* %XMM6, align 1, !mcsema_real_eip !130
  %671 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %671, i128* %XMM7, align 1, !mcsema_real_eip !130
  %672 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %672, i128* %XMM8, align 1, !mcsema_real_eip !130
  %673 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %673, i128* %XMM9, align 1, !mcsema_real_eip !130
  %674 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %674, i128* %XMM10, align 1, !mcsema_real_eip !130
  %675 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %675, i128* %XMM11, align 1, !mcsema_real_eip !130
  %676 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %676, i128* %XMM12, align 1, !mcsema_real_eip !130
  %677 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %677, i128* %XMM13, align 1, !mcsema_real_eip !130
  %678 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %678, i128* %XMM14, align 1, !mcsema_real_eip !130
  %679 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %679, i128* %XMM15, align 1, !mcsema_real_eip !130
  %680 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %680, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %681 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %681, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_100(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 120
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 120
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !58
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
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !58
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !58
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !58
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !58
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !59
  %84 = load i64, i64* %R14_val, !mcsema_real_eip !60
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %85 = add i64 %81, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !60
  store i64 %84, i64* %_allin_new_bt_2, !mcsema_real_eip !60
  %87 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %88 = add i64 %81, -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !61
  store i64 %87, i64* %_allin_new_bt_4, !mcsema_real_eip !61
  %_new_gep_5 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -120
  %90 = add i64 %81, -120
  %_trans_p2i_ = ptrtoint i8* %_new_gep_5 to i64
  %_trans_p2i_6 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_6
  %91 = xor i64 %90, %88, !mcsema_real_eip !62
  %92 = and i64 %_trans_xor_, 16, !mcsema_real_eip !62
  %93 = icmp ne i64 %92, 0, !mcsema_real_eip !62
  store i1 %93, i1* %AF_val, !mcsema_real_eip !62
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_5 to i64
  %_trans_trunc_ = trunc i64 %_trans_p2i_7 to i8
  %94 = trunc i64 %90 to i8, !mcsema_real_eip !62
  %95 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !62
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF_val, !mcsema_real_eip !62
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_5 to i64
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_8, 0
  %98 = icmp eq i64 %90, 0, !mcsema_real_eip !62
  store i1 %_trans_icmp_eq_, i1* %ZF_val, !mcsema_real_eip !62
  %_trans_p2i_9 = ptrtoint i8* %_new_gep_5 to i64
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_9, 0
  %99 = icmp slt i64 %90, 0
  store i1 %_trans_icmp_ne_, i1* %SF_val, !mcsema_real_eip !62
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_icmp_ne_11 = icmp ne i64 %_trans_p2i_10, 96
  %100 = icmp ult i64 %88, 96, !mcsema_real_eip !62
  store i1 %_trans_icmp_ne_11, i1* %CF_val, !mcsema_real_eip !62
  %_trans_p2i_12 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_13 = and i64 %_trans_xor_, %_trans_p2i_12
  %101 = and i64 %_trans_xor_, %88, !mcsema_real_eip !62
  %102 = icmp slt i64 %_trans_xor_13, 0
  store i1 %102, i1* %OF_val, !mcsema_real_eip !62
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  store i64 %90, i64* %RSP_val, !mcsema_real_eip !62
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 48
  %104 = add i64 %103, 48, !mcsema_real_eip !63
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !63
  %_ptr_to_int_138 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_local_end_to_int_139 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_140 = bitcast i64* %_allin_new_bt_16 to i8*
  %_offset_above_rbp_141 = sub i64 %_ptr_to_int_138, %_local_end_to_int_139
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_ptr_bt_140, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_ptr_bt_140, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_ptr_bt_140, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %106, label %107

; <label>:106:                                    ; preds = %55
  %_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_address_in_parent_stack_bt_151 = bitcast i8* %_address_in_parent_stack_150 to i64*
  br label %107

; <label>:107:                                    ; preds = %55, %106
  %108 = phi i64* [ %_allin_new_bt_16, %55 ], [ %_address_in_parent_stack_bt_151, %106 ]
  %_new_load_152 = load i64, i64* %108
  store i64 %_new_load_152, i64* %RAX_val, !mcsema_real_eip !63
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 40
  %109 = add i64 %103, 40, !mcsema_real_eip !64
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !64
  %_ptr_to_int_153 = ptrtoint i64* %_allin_new_bt_18 to i64
  %_local_end_to_int_154 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_155 = bitcast i64* %_allin_new_bt_18 to i8*
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_154
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_ptr_bt_155, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_ptr_bt_155, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_ptr_bt_155, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  br i1 %_cond1_n_cond2_cond3_164, label %111, label %112

; <label>:111:                                    ; preds = %107
  %_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_address_in_parent_stack_bt_166 = bitcast i8* %_address_in_parent_stack_165 to i64*
  br label %112

; <label>:112:                                    ; preds = %107, %111
  %113 = phi i64* [ %_allin_new_bt_18, %107 ], [ %_address_in_parent_stack_bt_166, %111 ]
  %_new_load_167 = load i64, i64* %113
  store i64 %_new_load_167, i64* %R10_val, !mcsema_real_eip !64
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 24
  %115 = add i64 %114, 24, !mcsema_real_eip !65
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !65
  %117 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !65
  store i64 %117, i64* %R11_val, !mcsema_real_eip !65
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 16
  %118 = add i64 %114, 16, !mcsema_real_eip !66
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !66
  %120 = bitcast i64* %_allin_new_bt_23 to i32*
  %_ptr_to_int_168 = ptrtoint i32* %120 to i64
  %_local_end_to_int_169 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_170 = bitcast i32* %120 to i8*
  %_offset_above_rbp_171 = sub i64 %_ptr_to_int_168, %_local_end_to_int_169
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_ptr_bt_170, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_ptr_bt_170, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_ptr_bt_170, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  br i1 %_cond1_n_cond2_cond3_179, label %121, label %122

; <label>:121:                                    ; preds = %112
  %_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_address_in_parent_stack_bt_181 = bitcast i8* %_address_in_parent_stack_180 to i32*
  br label %122

; <label>:122:                                    ; preds = %112, %121
  %123 = phi i32* [ %120, %112 ], [ %_address_in_parent_stack_bt_181, %121 ]
  %_new_load_182 = load i32, i32* %123
  %124 = zext i32 %_new_load_182 to i64, !mcsema_real_eip !66
  store i64 %124, i64* %RBX_val, !mcsema_real_eip !66
  store i64 12, i64* %R14_val, !mcsema_real_eip !67
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -48
  %126 = add i64 %125, -48, !mcsema_real_eip !68
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !68
  %128 = load i64, i64* %RDI_val, !mcsema_real_eip !68
  store i64 %128, i64* %_allin_new_bt_26, !mcsema_real_eip !68
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -40
  %130 = add i64 %129, -40, !mcsema_real_eip !69
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !69
  %132 = load i64, i64* %RSI_val, !mcsema_real_eip !69
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !69
  %134 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !69
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -48
  %136 = add i64 %135, -48, !mcsema_real_eip !70
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !70
  %_ptr_to_int_183 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_local_end_to_int_184 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_185 = bitcast i64* %_allin_new_bt_32 to i8*
  %_offset_above_rbp_186 = sub i64 %_ptr_to_int_183, %_local_end_to_int_184
  %_pot_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_cond1_188 = icmp ugt i8* %_ptr_bt_185, %_local_stack_end_ptr_
  %_cond2_1_189 = icmp ugt i8* %_ptr_bt_185, %_parent_stack_end_ptr_
  %_cond2_2_190 = icmp ult i8* %_ptr_bt_185, %_parent_stack_start_ptr_
  %_cond2_191 = or i1 %_cond2_1_189, %_cond2_2_190
  %_cond4_192 = icmp ule i8* %_pot_address_in_parent_stack_187, %_parent_stack_end_ptr_
  %_cond1_n_cond2_193 = and i1 %_cond1_188, %_cond2_191
  %_cond1_n_cond2_cond3_194 = and i1 %_cond1_n_cond2_193, %_cond4_192
  br i1 %_cond1_n_cond2_cond3_194, label %138, label %139

; <label>:138:                                    ; preds = %122
  %_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_address_in_parent_stack_bt_196 = bitcast i8* %_address_in_parent_stack_195 to i64*
  br label %139

; <label>:139:                                    ; preds = %122, %138
  %140 = phi i64* [ %_allin_new_bt_32, %122 ], [ %_address_in_parent_stack_bt_196, %138 ]
  %_new_load_197 = load i64, i64* %140
  store i64 %_new_load_197, i64* %RDI_val, !mcsema_real_eip !70
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -32
  %141 = add i64 %135, -32, !mcsema_real_eip !71
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !71
  store i64 %_new_load_197, i64* %_allin_new_bt_34, !mcsema_real_eip !71
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -40
  %144 = add i64 %143, -40, !mcsema_real_eip !72
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !72
  %146 = bitcast i64* %_allin_new_bt_37 to i32*
  %_ptr_to_int_198 = ptrtoint i32* %146 to i64
  %_local_end_to_int_199 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_200 = bitcast i32* %146 to i8*
  %_offset_above_rbp_201 = sub i64 %_ptr_to_int_198, %_local_end_to_int_199
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_ptr_bt_200, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_ptr_bt_200, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_ptr_bt_200, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  br i1 %_cond1_n_cond2_cond3_209, label %147, label %148

; <label>:147:                                    ; preds = %139
  %_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_address_in_parent_stack_bt_211 = bitcast i8* %_address_in_parent_stack_210 to i32*
  br label %148

; <label>:148:                                    ; preds = %139, %147
  %149 = phi i32* [ %146, %139 ], [ %_address_in_parent_stack_bt_211, %147 ]
  %_new_load_212 = load i32, i32* %149
  %150 = zext i32 %_new_load_212 to i64, !mcsema_real_eip !72
  store i64 %150, i64* %RSI_val, !mcsema_real_eip !72
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -24
  %152 = add i64 %151, -24, !mcsema_real_eip !73
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !73
  %154 = bitcast i64* %_allin_new_bt_40 to i32*
  store i32 %_new_load_212, i32* %154, !mcsema_real_eip !73
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %156 = add i64 %155, -56, !mcsema_real_eip !74
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !74
  %158 = load i64, i64* %RDX_val, !mcsema_real_eip !74
  store i64 %158, i64* %_allin_new_bt_43, !mcsema_real_eip !74
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -64
  %160 = add i64 %159, -64, !mcsema_real_eip !75
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !75
  %162 = load i64, i64* %RCX_val, !mcsema_real_eip !75
  store i64 %162, i64* %_allin_new_bt_46, !mcsema_real_eip !75
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -68
  %164 = add i64 %163, -68, !mcsema_real_eip !76
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !76
  %166 = load i64, i64* %R8_val, !mcsema_real_eip !76
  %167 = trunc i64 %166 to i32, !mcsema_real_eip !76
  %168 = bitcast i64* %_allin_new_bt_49 to i32*
  store i32 %167, i32* %168, !mcsema_real_eip !76
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -72
  %170 = add i64 %169, -72, !mcsema_real_eip !77
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !77
  %172 = load i64, i64* %R9_val, !mcsema_real_eip !77
  %173 = trunc i64 %172 to i32, !mcsema_real_eip !77
  %174 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %173, i32* %174, !mcsema_real_eip !77
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -76
  %176 = add i64 %175, -76, !mcsema_real_eip !78
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !78
  %178 = load i64, i64* %RBX_val, !mcsema_real_eip !78
  %179 = trunc i64 %178 to i32, !mcsema_real_eip !78
  %180 = bitcast i64* %_allin_new_bt_55 to i32*
  store i32 %179, i32* %180, !mcsema_real_eip !78
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %181 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %182 = add i64 %181, -88, !mcsema_real_eip !79
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !79
  %184 = load i64, i64* %R10_val, !mcsema_real_eip !79
  store i64 %184, i64* %_allin_new_bt_58, !mcsema_real_eip !79
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -96
  %186 = add i64 %185, -96, !mcsema_real_eip !80
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !80
  %188 = load i64, i64* %RAX_val, !mcsema_real_eip !80
  store i64 %188, i64* %_allin_new_bt_61, !mcsema_real_eip !80
  %189 = load i64, i64* %R14_val, !mcsema_real_eip !81
  store i64 %189, i64* %RDI_val, !mcsema_real_eip !81
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -112
  %191 = add i64 %190, -112, !mcsema_real_eip !82
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !82
  %193 = load i64, i64* %R11_val, !mcsema_real_eip !82
  store i64 %193, i64* %_allin_new_bt_64, !mcsema_real_eip !82
  %194 = load i64, i64* %RDI_val, !mcsema_real_eip !83
  %195 = tail call x86_64_sysvcc i64 @malloc(i64 %194), !mcsema_real_eip !83
  store i64 %195, i64* %RAX_val, !mcsema_real_eip !83
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %196 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -104
  %197 = add i64 %196, -104, !mcsema_real_eip !84
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !84
  store i64 %195, i64* %_allin_new_bt_67, !mcsema_real_eip !84
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %199 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -32
  %200 = add i64 %199, -32, !mcsema_real_eip !85
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !85
  %202 = bitcast i64* %_allin_new_bt_70 to i32*
  %_ptr_to_int_213 = ptrtoint i32* %202 to i64
  %_local_end_to_int_214 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_215 = bitcast i32* %202 to i8*
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_214
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_ptr_bt_215, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_ptr_bt_215, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_ptr_bt_215, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %203, label %204

; <label>:203:                                    ; preds = %148
  %_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_address_in_parent_stack_bt_226 = bitcast i8* %_address_in_parent_stack_225 to i32*
  br label %204

; <label>:204:                                    ; preds = %148, %203
  %205 = phi i32* [ %202, %148 ], [ %_address_in_parent_stack_bt_226, %203 ]
  %_new_load_227 = load i32, i32* %205
  %206 = zext i32 %_new_load_227 to i64, !mcsema_real_eip !85
  store i64 %206, i64* %RSI_val, !mcsema_real_eip !85
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %207 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -56
  %208 = add i64 %207, -56, !mcsema_real_eip !86
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !86
  %_ptr_to_int_228 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_local_end_to_int_229 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_230 = bitcast i64* %_allin_new_bt_73 to i8*
  %_offset_above_rbp_231 = sub i64 %_ptr_to_int_228, %_local_end_to_int_229
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_ptr_bt_230, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_ptr_bt_230, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_ptr_bt_230, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  br i1 %_cond1_n_cond2_cond3_239, label %210, label %211

; <label>:210:                                    ; preds = %204
  %_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_address_in_parent_stack_bt_241 = bitcast i8* %_address_in_parent_stack_240 to i64*
  br label %211

; <label>:211:                                    ; preds = %204, %210
  %212 = phi i64* [ %_allin_new_bt_73, %204 ], [ %_address_in_parent_stack_bt_241, %210 ]
  %_new_load_242 = load i64, i64* %212
  store i64 %_new_load_242, i64* %RAX_val, !mcsema_real_eip !86
  %213 = inttoptr i64 %_new_load_242 to i64*, !mcsema_real_eip !87
  %214 = bitcast i64* %213 to i32*
  %_ptr_to_int_243 = ptrtoint i32* %214 to i64
  %_local_end_to_int_244 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_245 = bitcast i32* %214 to i8*
  %_offset_above_rbp_246 = sub i64 %_ptr_to_int_243, %_local_end_to_int_244
  %_pot_address_in_parent_stack_247 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_cond1_248 = icmp ugt i8* %_ptr_bt_245, %_local_stack_end_ptr_
  %_cond2_1_249 = icmp ugt i8* %_ptr_bt_245, %_parent_stack_end_ptr_
  %_cond2_2_250 = icmp ult i8* %_ptr_bt_245, %_parent_stack_start_ptr_
  %_cond2_251 = or i1 %_cond2_1_249, %_cond2_2_250
  %_cond4_252 = icmp ule i8* %_pot_address_in_parent_stack_247, %_parent_stack_end_ptr_
  %_cond1_n_cond2_253 = and i1 %_cond1_248, %_cond2_251
  %_cond1_n_cond2_cond3_254 = and i1 %_cond1_n_cond2_253, %_cond4_252
  br i1 %_cond1_n_cond2_cond3_254, label %215, label %216

; <label>:215:                                    ; preds = %211
  %_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_address_in_parent_stack_bt_256 = bitcast i8* %_address_in_parent_stack_255 to i32*
  br label %216

; <label>:216:                                    ; preds = %211, %215
  %217 = phi i32* [ %214, %211 ], [ %_address_in_parent_stack_bt_256, %215 ]
  %_new_load_257 = load i32, i32* %217
  %218 = load i64, i64* %RSI_val, !mcsema_real_eip !87
  %219 = trunc i64 %218 to i32, !mcsema_real_eip !87
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 %_new_load_257)
  %220 = extractvalue { i32, i1 } %uadd, 0
  %221 = xor i32 %220, %_new_load_257, !mcsema_real_eip !87
  %222 = xor i32 %221, %219, !mcsema_real_eip !87
  %223 = and i32 %222, 16, !mcsema_real_eip !87
  %224 = icmp ne i32 %223, 0, !mcsema_real_eip !87
  store i1 %224, i1* %AF_val, !mcsema_real_eip !87
  %225 = icmp slt i32 %220, 0
  store i1 %225, i1* %SF_val, !mcsema_real_eip !87
  %226 = icmp eq i32 %220, 0, !mcsema_real_eip !87
  store i1 %226, i1* %ZF_val, !mcsema_real_eip !87
  %227 = xor i32 %_new_load_257, -2147483648, !mcsema_real_eip !87
  %228 = xor i32 %227, %219, !mcsema_real_eip !87
  %229 = and i32 %221, %228, !mcsema_real_eip !87
  %230 = icmp slt i32 %229, 0
  store i1 %230, i1* %OF_val, !mcsema_real_eip !87
  %231 = trunc i32 %220 to i8, !mcsema_real_eip !87
  %232 = tail call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !87
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  store i1 %234, i1* %PF_val, !mcsema_real_eip !87
  %235 = extractvalue { i32, i1 } %uadd, 1
  store i1 %235, i1* %CF_val, !mcsema_real_eip !87
  %236 = zext i32 %220 to i64, !mcsema_real_eip !87
  store i64 %236, i64* %RSI_val, !mcsema_real_eip !87
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %237 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -64
  %238 = add i64 %237, -64, !mcsema_real_eip !88
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !88
  %_ptr_to_int_258 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_local_end_to_int_259 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_260 = bitcast i64* %_allin_new_bt_76 to i8*
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_259
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_ptr_bt_260, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_ptr_bt_260, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_ptr_bt_260, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  br i1 %_cond1_n_cond2_cond3_269, label %240, label %241

; <label>:240:                                    ; preds = %216
  %_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_address_in_parent_stack_bt_271 = bitcast i8* %_address_in_parent_stack_270 to i64*
  br label %241

; <label>:241:                                    ; preds = %216, %240
  %242 = phi i64* [ %_allin_new_bt_76, %216 ], [ %_address_in_parent_stack_bt_271, %240 ]
  %_new_load_272 = load i64, i64* %242
  store i64 %_new_load_272, i64* %RAX_val, !mcsema_real_eip !88
  %243 = inttoptr i64 %_new_load_272 to i64*, !mcsema_real_eip !89
  %244 = bitcast i64* %243 to i32*
  %_ptr_to_int_273 = ptrtoint i32* %244 to i64
  %_local_end_to_int_274 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_275 = bitcast i32* %244 to i8*
  %_offset_above_rbp_276 = sub i64 %_ptr_to_int_273, %_local_end_to_int_274
  %_pot_address_in_parent_stack_277 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_cond1_278 = icmp ugt i8* %_ptr_bt_275, %_local_stack_end_ptr_
  %_cond2_1_279 = icmp ugt i8* %_ptr_bt_275, %_parent_stack_end_ptr_
  %_cond2_2_280 = icmp ult i8* %_ptr_bt_275, %_parent_stack_start_ptr_
  %_cond2_281 = or i1 %_cond2_1_279, %_cond2_2_280
  %_cond4_282 = icmp ule i8* %_pot_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond1_n_cond2_283 = and i1 %_cond1_278, %_cond2_281
  %_cond1_n_cond2_cond3_284 = and i1 %_cond1_n_cond2_283, %_cond4_282
  br i1 %_cond1_n_cond2_cond3_284, label %245, label %246

; <label>:245:                                    ; preds = %241
  %_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_address_in_parent_stack_bt_286 = bitcast i8* %_address_in_parent_stack_285 to i32*
  br label %246

; <label>:246:                                    ; preds = %241, %245
  %247 = phi i32* [ %244, %241 ], [ %_address_in_parent_stack_bt_286, %245 ]
  %_new_load_287 = load i32, i32* %247
  %248 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %249 = trunc i64 %248 to i32, !mcsema_real_eip !89
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %249, i32 %_new_load_287)
  %250 = extractvalue { i32, i1 } %uadd71, 0
  %251 = xor i32 %250, %_new_load_287, !mcsema_real_eip !89
  %252 = xor i32 %251, %249, !mcsema_real_eip !89
  %253 = and i32 %252, 16, !mcsema_real_eip !89
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !89
  store i1 %254, i1* %AF_val, !mcsema_real_eip !89
  %255 = icmp slt i32 %250, 0
  store i1 %255, i1* %SF_val, !mcsema_real_eip !89
  %256 = icmp eq i32 %250, 0, !mcsema_real_eip !89
  store i1 %256, i1* %ZF_val, !mcsema_real_eip !89
  %257 = xor i32 %_new_load_287, -2147483648, !mcsema_real_eip !89
  %258 = xor i32 %257, %249, !mcsema_real_eip !89
  %259 = and i32 %251, %258, !mcsema_real_eip !89
  %260 = icmp slt i32 %259, 0
  store i1 %260, i1* %OF_val, !mcsema_real_eip !89
  %261 = trunc i32 %250 to i8, !mcsema_real_eip !89
  %262 = tail call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !89
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  store i1 %264, i1* %PF_val, !mcsema_real_eip !89
  %265 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %265, i1* %CF_val, !mcsema_real_eip !89
  %266 = zext i32 %250 to i64, !mcsema_real_eip !89
  store i64 %266, i64* %RSI_val, !mcsema_real_eip !89
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %267 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -112
  %268 = add i64 %267, -112, !mcsema_real_eip !90
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !90
  %_ptr_to_int_288 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_local_end_to_int_289 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_290 = bitcast i64* %_allin_new_bt_79 to i8*
  %_offset_above_rbp_291 = sub i64 %_ptr_to_int_288, %_local_end_to_int_289
  %_pot_address_in_parent_stack_292 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_cond1_293 = icmp ugt i8* %_ptr_bt_290, %_local_stack_end_ptr_
  %_cond2_1_294 = icmp ugt i8* %_ptr_bt_290, %_parent_stack_end_ptr_
  %_cond2_2_295 = icmp ult i8* %_ptr_bt_290, %_parent_stack_start_ptr_
  %_cond2_296 = or i1 %_cond2_1_294, %_cond2_2_295
  %_cond4_297 = icmp ule i8* %_pot_address_in_parent_stack_292, %_parent_stack_end_ptr_
  %_cond1_n_cond2_298 = and i1 %_cond1_293, %_cond2_296
  %_cond1_n_cond2_cond3_299 = and i1 %_cond1_n_cond2_298, %_cond4_297
  br i1 %_cond1_n_cond2_cond3_299, label %270, label %271

; <label>:270:                                    ; preds = %246
  %_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_address_in_parent_stack_bt_301 = bitcast i8* %_address_in_parent_stack_300 to i64*
  br label %271

; <label>:271:                                    ; preds = %246, %270
  %272 = phi i64* [ %_allin_new_bt_79, %246 ], [ %_address_in_parent_stack_bt_301, %270 ]
  %_new_load_302 = load i64, i64* %272
  store i64 %_new_load_302, i64* %RAX_val, !mcsema_real_eip !90
  %273 = inttoptr i64 %_new_load_302 to i64*, !mcsema_real_eip !91
  %274 = bitcast i64* %273 to i32*
  %_ptr_to_int_303 = ptrtoint i32* %274 to i64
  %_local_end_to_int_304 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_305 = bitcast i32* %274 to i8*
  %_offset_above_rbp_306 = sub i64 %_ptr_to_int_303, %_local_end_to_int_304
  %_pot_address_in_parent_stack_307 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_cond1_308 = icmp ugt i8* %_ptr_bt_305, %_local_stack_end_ptr_
  %_cond2_1_309 = icmp ugt i8* %_ptr_bt_305, %_parent_stack_end_ptr_
  %_cond2_2_310 = icmp ult i8* %_ptr_bt_305, %_parent_stack_start_ptr_
  %_cond2_311 = or i1 %_cond2_1_309, %_cond2_2_310
  %_cond4_312 = icmp ule i8* %_pot_address_in_parent_stack_307, %_parent_stack_end_ptr_
  %_cond1_n_cond2_313 = and i1 %_cond1_308, %_cond2_311
  %_cond1_n_cond2_cond3_314 = and i1 %_cond1_n_cond2_313, %_cond4_312
  br i1 %_cond1_n_cond2_cond3_314, label %275, label %276

; <label>:275:                                    ; preds = %271
  %_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_address_in_parent_stack_bt_316 = bitcast i8* %_address_in_parent_stack_315 to i32*
  br label %276

; <label>:276:                                    ; preds = %271, %275
  %277 = phi i32* [ %274, %271 ], [ %_address_in_parent_stack_bt_316, %275 ]
  %_new_load_317 = load i32, i32* %277
  %278 = zext i32 %_new_load_317 to i64, !mcsema_real_eip !91
  store i64 %278, i64* %R8_val, !mcsema_real_eip !91
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -88
  %280 = add i64 %279, -88, !mcsema_real_eip !92
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !92
  %_ptr_to_int_318 = ptrtoint i64* %_allin_new_bt_82 to i64
  %_local_end_to_int_319 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_320 = bitcast i64* %_allin_new_bt_82 to i8*
  %_offset_above_rbp_321 = sub i64 %_ptr_to_int_318, %_local_end_to_int_319
  %_pot_address_in_parent_stack_322 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_321
  %_cond1_323 = icmp ugt i8* %_ptr_bt_320, %_local_stack_end_ptr_
  %_cond2_1_324 = icmp ugt i8* %_ptr_bt_320, %_parent_stack_end_ptr_
  %_cond2_2_325 = icmp ult i8* %_ptr_bt_320, %_parent_stack_start_ptr_
  %_cond2_326 = or i1 %_cond2_1_324, %_cond2_2_325
  %_cond4_327 = icmp ule i8* %_pot_address_in_parent_stack_322, %_parent_stack_end_ptr_
  %_cond1_n_cond2_328 = and i1 %_cond1_323, %_cond2_326
  %_cond1_n_cond2_cond3_329 = and i1 %_cond1_n_cond2_328, %_cond4_327
  br i1 %_cond1_n_cond2_cond3_329, label %282, label %283

; <label>:282:                                    ; preds = %276
  %_address_in_parent_stack_330 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_321
  %_address_in_parent_stack_bt_331 = bitcast i8* %_address_in_parent_stack_330 to i64*
  br label %283

; <label>:283:                                    ; preds = %276, %282
  %284 = phi i64* [ %_allin_new_bt_82, %276 ], [ %_address_in_parent_stack_bt_331, %282 ]
  %_new_load_332 = load i64, i64* %284
  store i64 %_new_load_332, i64* %RCX_val, !mcsema_real_eip !92
  %285 = inttoptr i64 %_new_load_332 to i64*, !mcsema_real_eip !93
  %286 = bitcast i64* %285 to i32*
  %_ptr_to_int_333 = ptrtoint i32* %286 to i64
  %_local_end_to_int_334 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_335 = bitcast i32* %286 to i8*
  %_offset_above_rbp_336 = sub i64 %_ptr_to_int_333, %_local_end_to_int_334
  %_pot_address_in_parent_stack_337 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_cond1_338 = icmp ugt i8* %_ptr_bt_335, %_local_stack_end_ptr_
  %_cond2_1_339 = icmp ugt i8* %_ptr_bt_335, %_parent_stack_end_ptr_
  %_cond2_2_340 = icmp ult i8* %_ptr_bt_335, %_parent_stack_start_ptr_
  %_cond2_341 = or i1 %_cond2_1_339, %_cond2_2_340
  %_cond4_342 = icmp ule i8* %_pot_address_in_parent_stack_337, %_parent_stack_end_ptr_
  %_cond1_n_cond2_343 = and i1 %_cond1_338, %_cond2_341
  %_cond1_n_cond2_cond3_344 = and i1 %_cond1_n_cond2_343, %_cond4_342
  br i1 %_cond1_n_cond2_cond3_344, label %287, label %288

; <label>:287:                                    ; preds = %283
  %_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_address_in_parent_stack_bt_346 = bitcast i8* %_address_in_parent_stack_345 to i32*
  br label %288

; <label>:288:                                    ; preds = %283, %287
  %289 = phi i32* [ %286, %283 ], [ %_address_in_parent_stack_bt_346, %287 ]
  %_new_load_347 = load i32, i32* %289
  %290 = load i64, i64* %R8_val, !mcsema_real_eip !93
  %291 = trunc i64 %290 to i32, !mcsema_real_eip !93
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %291, i32 %_new_load_347)
  %292 = extractvalue { i32, i1 } %uadd72, 0
  %293 = xor i32 %292, %_new_load_347, !mcsema_real_eip !93
  %294 = xor i32 %293, %291, !mcsema_real_eip !93
  %295 = and i32 %294, 16, !mcsema_real_eip !93
  %296 = icmp ne i32 %295, 0, !mcsema_real_eip !93
  store i1 %296, i1* %AF_val, !mcsema_real_eip !93
  %297 = icmp slt i32 %292, 0
  store i1 %297, i1* %SF_val, !mcsema_real_eip !93
  %298 = icmp eq i32 %292, 0, !mcsema_real_eip !93
  store i1 %298, i1* %ZF_val, !mcsema_real_eip !93
  %299 = xor i32 %_new_load_347, -2147483648, !mcsema_real_eip !93
  %300 = xor i32 %299, %291, !mcsema_real_eip !93
  %301 = and i32 %293, %300, !mcsema_real_eip !93
  %302 = icmp slt i32 %301, 0
  store i1 %302, i1* %OF_val, !mcsema_real_eip !93
  %303 = trunc i32 %292 to i8, !mcsema_real_eip !93
  %304 = tail call i8 @llvm.ctpop.i8(i8 %303), !mcsema_real_eip !93
  %305 = and i8 %304, 1
  %306 = icmp eq i8 %305, 0
  store i1 %306, i1* %PF_val, !mcsema_real_eip !93
  %307 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %307, i1* %CF_val, !mcsema_real_eip !93
  %308 = zext i32 %292 to i64, !mcsema_real_eip !93
  store i64 %308, i64* %R8_val, !mcsema_real_eip !93
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %309 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -96
  %310 = add i64 %309, -96, !mcsema_real_eip !94
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !94
  %_ptr_to_int_348 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_local_end_to_int_349 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_350 = bitcast i64* %_allin_new_bt_85 to i8*
  %_offset_above_rbp_351 = sub i64 %_ptr_to_int_348, %_local_end_to_int_349
  %_pot_address_in_parent_stack_352 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_cond1_353 = icmp ugt i8* %_ptr_bt_350, %_local_stack_end_ptr_
  %_cond2_1_354 = icmp ugt i8* %_ptr_bt_350, %_parent_stack_end_ptr_
  %_cond2_2_355 = icmp ult i8* %_ptr_bt_350, %_parent_stack_start_ptr_
  %_cond2_356 = or i1 %_cond2_1_354, %_cond2_2_355
  %_cond4_357 = icmp ule i8* %_pot_address_in_parent_stack_352, %_parent_stack_end_ptr_
  %_cond1_n_cond2_358 = and i1 %_cond1_353, %_cond2_356
  %_cond1_n_cond2_cond3_359 = and i1 %_cond1_n_cond2_358, %_cond4_357
  br i1 %_cond1_n_cond2_cond3_359, label %312, label %313

; <label>:312:                                    ; preds = %288
  %_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_address_in_parent_stack_bt_361 = bitcast i8* %_address_in_parent_stack_360 to i64*
  br label %313

; <label>:313:                                    ; preds = %288, %312
  %314 = phi i64* [ %_allin_new_bt_85, %288 ], [ %_address_in_parent_stack_bt_361, %312 ]
  %_new_load_362 = load i64, i64* %314
  store i64 %_new_load_362, i64* %RCX_val, !mcsema_real_eip !94
  %315 = inttoptr i64 %_new_load_362 to i64*, !mcsema_real_eip !95
  %316 = bitcast i64* %315 to i32*
  %_ptr_to_int_363 = ptrtoint i32* %316 to i64
  %_local_end_to_int_364 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_365 = bitcast i32* %316 to i8*
  %_offset_above_rbp_366 = sub i64 %_ptr_to_int_363, %_local_end_to_int_364
  %_pot_address_in_parent_stack_367 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_cond1_368 = icmp ugt i8* %_ptr_bt_365, %_local_stack_end_ptr_
  %_cond2_1_369 = icmp ugt i8* %_ptr_bt_365, %_parent_stack_end_ptr_
  %_cond2_2_370 = icmp ult i8* %_ptr_bt_365, %_parent_stack_start_ptr_
  %_cond2_371 = or i1 %_cond2_1_369, %_cond2_2_370
  %_cond4_372 = icmp ule i8* %_pot_address_in_parent_stack_367, %_parent_stack_end_ptr_
  %_cond1_n_cond2_373 = and i1 %_cond1_368, %_cond2_371
  %_cond1_n_cond2_cond3_374 = and i1 %_cond1_n_cond2_373, %_cond4_372
  br i1 %_cond1_n_cond2_cond3_374, label %317, label %318

; <label>:317:                                    ; preds = %313
  %_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_address_in_parent_stack_bt_376 = bitcast i8* %_address_in_parent_stack_375 to i32*
  br label %318

; <label>:318:                                    ; preds = %313, %317
  %319 = phi i32* [ %316, %313 ], [ %_address_in_parent_stack_bt_376, %317 ]
  %_new_load_377 = load i32, i32* %319
  %320 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %321 = trunc i64 %320 to i32, !mcsema_real_eip !95
  %322 = add i32 %321, %_new_load_377
  %323 = zext i32 %322 to i64, !mcsema_real_eip !95
  store i64 %323, i64* %R8_val, !mcsema_real_eip !95
  %324 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %325 = trunc i64 %324 to i32, !mcsema_real_eip !96
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 %325)
  %326 = extractvalue { i32, i1 } %uadd74, 0
  %327 = xor i32 %326, %325, !mcsema_real_eip !96
  %328 = xor i32 %327, %322, !mcsema_real_eip !96
  %329 = and i32 %328, 16, !mcsema_real_eip !96
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !96
  store i1 %330, i1* %AF_val, !mcsema_real_eip !96
  %331 = icmp slt i32 %326, 0
  store i1 %331, i1* %SF_val, !mcsema_real_eip !96
  %332 = icmp eq i32 %326, 0, !mcsema_real_eip !96
  store i1 %332, i1* %ZF_val, !mcsema_real_eip !96
  %333 = xor i32 %322, -2147483648, !mcsema_real_eip !96
  %334 = xor i32 %333, %325, !mcsema_real_eip !96
  %335 = and i32 %327, %334, !mcsema_real_eip !96
  %336 = icmp slt i32 %335, 0
  store i1 %336, i1* %OF_val, !mcsema_real_eip !96
  %337 = trunc i32 %326 to i8, !mcsema_real_eip !96
  %338 = tail call i8 @llvm.ctpop.i8(i8 %337), !mcsema_real_eip !96
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  store i1 %340, i1* %PF_val, !mcsema_real_eip !96
  %341 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %341, i1* %CF_val, !mcsema_real_eip !96
  %342 = zext i32 %326 to i64, !mcsema_real_eip !96
  store i64 %342, i64* %RSI_val, !mcsema_real_eip !96
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %343 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -104
  %344 = add i64 %343, -104, !mcsema_real_eip !97
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !97
  %_ptr_to_int_378 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_local_end_to_int_379 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_380 = bitcast i64* %_allin_new_bt_88 to i8*
  %_offset_above_rbp_381 = sub i64 %_ptr_to_int_378, %_local_end_to_int_379
  %_pot_address_in_parent_stack_382 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_cond1_383 = icmp ugt i8* %_ptr_bt_380, %_local_stack_end_ptr_
  %_cond2_1_384 = icmp ugt i8* %_ptr_bt_380, %_parent_stack_end_ptr_
  %_cond2_2_385 = icmp ult i8* %_ptr_bt_380, %_parent_stack_start_ptr_
  %_cond2_386 = or i1 %_cond2_1_384, %_cond2_2_385
  %_cond4_387 = icmp ule i8* %_pot_address_in_parent_stack_382, %_parent_stack_end_ptr_
  %_cond1_n_cond2_388 = and i1 %_cond1_383, %_cond2_386
  %_cond1_n_cond2_cond3_389 = and i1 %_cond1_n_cond2_388, %_cond4_387
  br i1 %_cond1_n_cond2_cond3_389, label %346, label %347

; <label>:346:                                    ; preds = %318
  %_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_address_in_parent_stack_bt_391 = bitcast i8* %_address_in_parent_stack_390 to i64*
  br label %347

; <label>:347:                                    ; preds = %318, %346
  %348 = phi i64* [ %_allin_new_bt_88, %318 ], [ %_address_in_parent_stack_bt_391, %346 ]
  %_new_load_392 = load i64, i64* %348
  store i64 %_new_load_392, i64* %RCX_val, !mcsema_real_eip !97
  %349 = inttoptr i64 %_new_load_392 to i64*, !mcsema_real_eip !98
  %350 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %351 = trunc i64 %350 to i32, !mcsema_real_eip !98
  %352 = bitcast i64* %349 to i32*
  store i32 %351, i32* %352, !mcsema_real_eip !98
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %353 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -28
  %354 = add i64 %353, -28, !mcsema_real_eip !99
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !99
  %356 = bitcast i64* %_allin_new_bt_91 to i32*
  %_ptr_to_int_393 = ptrtoint i32* %356 to i64
  %_local_end_to_int_394 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_395 = bitcast i32* %356 to i8*
  %_offset_above_rbp_396 = sub i64 %_ptr_to_int_393, %_local_end_to_int_394
  %_pot_address_in_parent_stack_397 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_cond1_398 = icmp ugt i8* %_ptr_bt_395, %_local_stack_end_ptr_
  %_cond2_1_399 = icmp ugt i8* %_ptr_bt_395, %_parent_stack_end_ptr_
  %_cond2_2_400 = icmp ult i8* %_ptr_bt_395, %_parent_stack_start_ptr_
  %_cond2_401 = or i1 %_cond2_1_399, %_cond2_2_400
  %_cond4_402 = icmp ule i8* %_pot_address_in_parent_stack_397, %_parent_stack_end_ptr_
  %_cond1_n_cond2_403 = and i1 %_cond1_398, %_cond2_401
  %_cond1_n_cond2_cond3_404 = and i1 %_cond1_n_cond2_403, %_cond4_402
  br i1 %_cond1_n_cond2_cond3_404, label %357, label %358

; <label>:357:                                    ; preds = %347
  %_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_address_in_parent_stack_bt_406 = bitcast i8* %_address_in_parent_stack_405 to i32*
  br label %358

; <label>:358:                                    ; preds = %347, %357
  %359 = phi i32* [ %356, %347 ], [ %_address_in_parent_stack_bt_406, %357 ]
  %_new_load_407 = load i32, i32* %359
  %360 = zext i32 %_new_load_407 to i64, !mcsema_real_eip !99
  store i64 %360, i64* %RSI_val, !mcsema_real_eip !99
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %361 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -56
  %362 = add i64 %361, -56, !mcsema_real_eip !100
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !100
  %_ptr_to_int_408 = ptrtoint i64* %_allin_new_bt_94 to i64
  %_local_end_to_int_409 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_410 = bitcast i64* %_allin_new_bt_94 to i8*
  %_offset_above_rbp_411 = sub i64 %_ptr_to_int_408, %_local_end_to_int_409
  %_pot_address_in_parent_stack_412 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_cond1_413 = icmp ugt i8* %_ptr_bt_410, %_local_stack_end_ptr_
  %_cond2_1_414 = icmp ugt i8* %_ptr_bt_410, %_parent_stack_end_ptr_
  %_cond2_2_415 = icmp ult i8* %_ptr_bt_410, %_parent_stack_start_ptr_
  %_cond2_416 = or i1 %_cond2_1_414, %_cond2_2_415
  %_cond4_417 = icmp ule i8* %_pot_address_in_parent_stack_412, %_parent_stack_end_ptr_
  %_cond1_n_cond2_418 = and i1 %_cond1_413, %_cond2_416
  %_cond1_n_cond2_cond3_419 = and i1 %_cond1_n_cond2_418, %_cond4_417
  br i1 %_cond1_n_cond2_cond3_419, label %364, label %365

; <label>:364:                                    ; preds = %358
  %_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_address_in_parent_stack_bt_421 = bitcast i8* %_address_in_parent_stack_420 to i64*
  br label %365

; <label>:365:                                    ; preds = %358, %364
  %366 = phi i64* [ %_allin_new_bt_94, %358 ], [ %_address_in_parent_stack_bt_421, %364 ]
  %_new_load_422 = load i64, i64* %366
  store i64 %_new_load_422, i64* %RCX_val, !mcsema_real_eip !100
  %367 = add i64 %_new_load_422, 4, !mcsema_real_eip !101
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !101
  %369 = bitcast i64* %368 to i32*
  %_ptr_to_int_423 = ptrtoint i32* %369 to i64
  %_local_end_to_int_424 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_425 = bitcast i32* %369 to i8*
  %_offset_above_rbp_426 = sub i64 %_ptr_to_int_423, %_local_end_to_int_424
  %_pot_address_in_parent_stack_427 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_cond1_428 = icmp ugt i8* %_ptr_bt_425, %_local_stack_end_ptr_
  %_cond2_1_429 = icmp ugt i8* %_ptr_bt_425, %_parent_stack_end_ptr_
  %_cond2_2_430 = icmp ult i8* %_ptr_bt_425, %_parent_stack_start_ptr_
  %_cond2_431 = or i1 %_cond2_1_429, %_cond2_2_430
  %_cond4_432 = icmp ule i8* %_pot_address_in_parent_stack_427, %_parent_stack_end_ptr_
  %_cond1_n_cond2_433 = and i1 %_cond1_428, %_cond2_431
  %_cond1_n_cond2_cond3_434 = and i1 %_cond1_n_cond2_433, %_cond4_432
  br i1 %_cond1_n_cond2_cond3_434, label %370, label %371

; <label>:370:                                    ; preds = %365
  %_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_address_in_parent_stack_bt_436 = bitcast i8* %_address_in_parent_stack_435 to i32*
  br label %371

; <label>:371:                                    ; preds = %365, %370
  %372 = phi i32* [ %369, %365 ], [ %_address_in_parent_stack_bt_436, %370 ]
  %_new_load_437 = load i32, i32* %372
  %373 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %374 = trunc i64 %373 to i32, !mcsema_real_eip !101
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 %_new_load_437)
  %375 = extractvalue { i32, i1 } %uadd75, 0
  %376 = xor i32 %375, %_new_load_437, !mcsema_real_eip !101
  %377 = xor i32 %376, %374, !mcsema_real_eip !101
  %378 = and i32 %377, 16, !mcsema_real_eip !101
  %379 = icmp ne i32 %378, 0, !mcsema_real_eip !101
  store i1 %379, i1* %AF_val, !mcsema_real_eip !101
  %380 = icmp slt i32 %375, 0
  store i1 %380, i1* %SF_val, !mcsema_real_eip !101
  %381 = icmp eq i32 %375, 0, !mcsema_real_eip !101
  store i1 %381, i1* %ZF_val, !mcsema_real_eip !101
  %382 = xor i32 %_new_load_437, -2147483648, !mcsema_real_eip !101
  %383 = xor i32 %382, %374, !mcsema_real_eip !101
  %384 = and i32 %376, %383, !mcsema_real_eip !101
  %385 = icmp slt i32 %384, 0
  store i1 %385, i1* %OF_val, !mcsema_real_eip !101
  %386 = trunc i32 %375 to i8, !mcsema_real_eip !101
  %387 = tail call i8 @llvm.ctpop.i8(i8 %386), !mcsema_real_eip !101
  %388 = and i8 %387, 1
  %389 = icmp eq i8 %388, 0
  store i1 %389, i1* %PF_val, !mcsema_real_eip !101
  %390 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %390, i1* %CF_val, !mcsema_real_eip !101
  %391 = zext i32 %375 to i64, !mcsema_real_eip !101
  store i64 %391, i64* %RSI_val, !mcsema_real_eip !101
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %392 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -64
  %393 = add i64 %392, -64, !mcsema_real_eip !102
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !102
  %_ptr_to_int_438 = ptrtoint i64* %_allin_new_bt_97 to i64
  %_local_end_to_int_439 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_440 = bitcast i64* %_allin_new_bt_97 to i8*
  %_offset_above_rbp_441 = sub i64 %_ptr_to_int_438, %_local_end_to_int_439
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_ptr_bt_440, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_ptr_bt_440, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_ptr_bt_440, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  br i1 %_cond1_n_cond2_cond3_449, label %395, label %396

; <label>:395:                                    ; preds = %371
  %_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_address_in_parent_stack_bt_451 = bitcast i8* %_address_in_parent_stack_450 to i64*
  br label %396

; <label>:396:                                    ; preds = %371, %395
  %397 = phi i64* [ %_allin_new_bt_97, %371 ], [ %_address_in_parent_stack_bt_451, %395 ]
  %_new_load_452 = load i64, i64* %397
  store i64 %_new_load_452, i64* %RCX_val, !mcsema_real_eip !102
  %398 = add i64 %_new_load_452, 4, !mcsema_real_eip !103
  %399 = inttoptr i64 %398 to i64*, !mcsema_real_eip !103
  %400 = bitcast i64* %399 to i32*
  %_ptr_to_int_453 = ptrtoint i32* %400 to i64
  %_local_end_to_int_454 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_455 = bitcast i32* %400 to i8*
  %_offset_above_rbp_456 = sub i64 %_ptr_to_int_453, %_local_end_to_int_454
  %_pot_address_in_parent_stack_457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_cond1_458 = icmp ugt i8* %_ptr_bt_455, %_local_stack_end_ptr_
  %_cond2_1_459 = icmp ugt i8* %_ptr_bt_455, %_parent_stack_end_ptr_
  %_cond2_2_460 = icmp ult i8* %_ptr_bt_455, %_parent_stack_start_ptr_
  %_cond2_461 = or i1 %_cond2_1_459, %_cond2_2_460
  %_cond4_462 = icmp ule i8* %_pot_address_in_parent_stack_457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_463 = and i1 %_cond1_458, %_cond2_461
  %_cond1_n_cond2_cond3_464 = and i1 %_cond1_n_cond2_463, %_cond4_462
  br i1 %_cond1_n_cond2_cond3_464, label %401, label %402

; <label>:401:                                    ; preds = %396
  %_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_address_in_parent_stack_bt_466 = bitcast i8* %_address_in_parent_stack_465 to i32*
  br label %402

; <label>:402:                                    ; preds = %396, %401
  %403 = phi i32* [ %400, %396 ], [ %_address_in_parent_stack_bt_466, %401 ]
  %_new_load_467 = load i32, i32* %403
  %404 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %405 = trunc i64 %404 to i32, !mcsema_real_eip !103
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %405, i32 %_new_load_467)
  %406 = extractvalue { i32, i1 } %uadd76, 0
  %407 = xor i32 %406, %_new_load_467, !mcsema_real_eip !103
  %408 = xor i32 %407, %405, !mcsema_real_eip !103
  %409 = and i32 %408, 16, !mcsema_real_eip !103
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !103
  store i1 %410, i1* %AF_val, !mcsema_real_eip !103
  %411 = icmp slt i32 %406, 0
  store i1 %411, i1* %SF_val, !mcsema_real_eip !103
  %412 = icmp eq i32 %406, 0, !mcsema_real_eip !103
  store i1 %412, i1* %ZF_val, !mcsema_real_eip !103
  %413 = xor i32 %_new_load_467, -2147483648, !mcsema_real_eip !103
  %414 = xor i32 %413, %405, !mcsema_real_eip !103
  %415 = and i32 %407, %414, !mcsema_real_eip !103
  %416 = icmp slt i32 %415, 0
  store i1 %416, i1* %OF_val, !mcsema_real_eip !103
  %417 = trunc i32 %406 to i8, !mcsema_real_eip !103
  %418 = tail call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !103
  %419 = and i8 %418, 1
  %420 = icmp eq i8 %419, 0
  store i1 %420, i1* %PF_val, !mcsema_real_eip !103
  %421 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %421, i1* %CF_val, !mcsema_real_eip !103
  %422 = zext i32 %406 to i64, !mcsema_real_eip !103
  store i64 %422, i64* %RSI_val, !mcsema_real_eip !103
  %423 = load i64, i64* %RAX_val, !mcsema_real_eip !104
  %424 = add i64 %423, 4, !mcsema_real_eip !104
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !104
  %426 = bitcast i64* %425 to i32*
  %_ptr_to_int_468 = ptrtoint i32* %426 to i64
  %_local_end_to_int_469 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_470 = bitcast i32* %426 to i8*
  %_offset_above_rbp_471 = sub i64 %_ptr_to_int_468, %_local_end_to_int_469
  %_pot_address_in_parent_stack_472 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_cond1_473 = icmp ugt i8* %_ptr_bt_470, %_local_stack_end_ptr_
  %_cond2_1_474 = icmp ugt i8* %_ptr_bt_470, %_parent_stack_end_ptr_
  %_cond2_2_475 = icmp ult i8* %_ptr_bt_470, %_parent_stack_start_ptr_
  %_cond2_476 = or i1 %_cond2_1_474, %_cond2_2_475
  %_cond4_477 = icmp ule i8* %_pot_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond1_n_cond2_478 = and i1 %_cond1_473, %_cond2_476
  %_cond1_n_cond2_cond3_479 = and i1 %_cond1_n_cond2_478, %_cond4_477
  br i1 %_cond1_n_cond2_cond3_479, label %427, label %428

; <label>:427:                                    ; preds = %402
  %_address_in_parent_stack_480 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_address_in_parent_stack_bt_481 = bitcast i8* %_address_in_parent_stack_480 to i32*
  br label %428

; <label>:428:                                    ; preds = %402, %427
  %429 = phi i32* [ %426, %402 ], [ %_address_in_parent_stack_bt_481, %427 ]
  %_new_load_482 = load i32, i32* %429
  %430 = zext i32 %_new_load_482 to i64, !mcsema_real_eip !104
  store i64 %430, i64* %R8_val, !mcsema_real_eip !104
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -88
  %432 = add i64 %431, -88, !mcsema_real_eip !105
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !105
  %_ptr_to_int_483 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_local_end_to_int_484 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_485 = bitcast i64* %_allin_new_bt_100 to i8*
  %_offset_above_rbp_486 = sub i64 %_ptr_to_int_483, %_local_end_to_int_484
  %_pot_address_in_parent_stack_487 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_cond1_488 = icmp ugt i8* %_ptr_bt_485, %_local_stack_end_ptr_
  %_cond2_1_489 = icmp ugt i8* %_ptr_bt_485, %_parent_stack_end_ptr_
  %_cond2_2_490 = icmp ult i8* %_ptr_bt_485, %_parent_stack_start_ptr_
  %_cond2_491 = or i1 %_cond2_1_489, %_cond2_2_490
  %_cond4_492 = icmp ule i8* %_pot_address_in_parent_stack_487, %_parent_stack_end_ptr_
  %_cond1_n_cond2_493 = and i1 %_cond1_488, %_cond2_491
  %_cond1_n_cond2_cond3_494 = and i1 %_cond1_n_cond2_493, %_cond4_492
  br i1 %_cond1_n_cond2_cond3_494, label %434, label %435

; <label>:434:                                    ; preds = %428
  %_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_address_in_parent_stack_bt_496 = bitcast i8* %_address_in_parent_stack_495 to i64*
  br label %435

; <label>:435:                                    ; preds = %428, %434
  %436 = phi i64* [ %_allin_new_bt_100, %428 ], [ %_address_in_parent_stack_bt_496, %434 ]
  %_new_load_497 = load i64, i64* %436
  store i64 %_new_load_497, i64* %RCX_val, !mcsema_real_eip !105
  %437 = add i64 %_new_load_497, 4, !mcsema_real_eip !106
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !106
  %439 = bitcast i64* %438 to i32*
  %_ptr_to_int_498 = ptrtoint i32* %439 to i64
  %_local_end_to_int_499 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_500 = bitcast i32* %439 to i8*
  %_offset_above_rbp_501 = sub i64 %_ptr_to_int_498, %_local_end_to_int_499
  %_pot_address_in_parent_stack_502 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_501
  %_cond1_503 = icmp ugt i8* %_ptr_bt_500, %_local_stack_end_ptr_
  %_cond2_1_504 = icmp ugt i8* %_ptr_bt_500, %_parent_stack_end_ptr_
  %_cond2_2_505 = icmp ult i8* %_ptr_bt_500, %_parent_stack_start_ptr_
  %_cond2_506 = or i1 %_cond2_1_504, %_cond2_2_505
  %_cond4_507 = icmp ule i8* %_pot_address_in_parent_stack_502, %_parent_stack_end_ptr_
  %_cond1_n_cond2_508 = and i1 %_cond1_503, %_cond2_506
  %_cond1_n_cond2_cond3_509 = and i1 %_cond1_n_cond2_508, %_cond4_507
  br i1 %_cond1_n_cond2_cond3_509, label %440, label %441

; <label>:440:                                    ; preds = %435
  %_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_501
  %_address_in_parent_stack_bt_511 = bitcast i8* %_address_in_parent_stack_510 to i32*
  br label %441

; <label>:441:                                    ; preds = %435, %440
  %442 = phi i32* [ %439, %435 ], [ %_address_in_parent_stack_bt_511, %440 ]
  %_new_load_512 = load i32, i32* %442
  %443 = load i64, i64* %R8_val, !mcsema_real_eip !106
  %444 = trunc i64 %443 to i32, !mcsema_real_eip !106
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %444, i32 %_new_load_512)
  %445 = extractvalue { i32, i1 } %uadd77, 0
  %446 = xor i32 %445, %_new_load_512, !mcsema_real_eip !106
  %447 = xor i32 %446, %444, !mcsema_real_eip !106
  %448 = and i32 %447, 16, !mcsema_real_eip !106
  %449 = icmp ne i32 %448, 0, !mcsema_real_eip !106
  store i1 %449, i1* %AF_val, !mcsema_real_eip !106
  %450 = icmp slt i32 %445, 0
  store i1 %450, i1* %SF_val, !mcsema_real_eip !106
  %451 = icmp eq i32 %445, 0, !mcsema_real_eip !106
  store i1 %451, i1* %ZF_val, !mcsema_real_eip !106
  %452 = xor i32 %_new_load_512, -2147483648, !mcsema_real_eip !106
  %453 = xor i32 %452, %444, !mcsema_real_eip !106
  %454 = and i32 %446, %453, !mcsema_real_eip !106
  %455 = icmp slt i32 %454, 0
  store i1 %455, i1* %OF_val, !mcsema_real_eip !106
  %456 = trunc i32 %445 to i8, !mcsema_real_eip !106
  %457 = tail call i8 @llvm.ctpop.i8(i8 %456), !mcsema_real_eip !106
  %458 = and i8 %457, 1
  %459 = icmp eq i8 %458, 0
  store i1 %459, i1* %PF_val, !mcsema_real_eip !106
  %460 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %460, i1* %CF_val, !mcsema_real_eip !106
  %461 = zext i32 %445 to i64, !mcsema_real_eip !106
  store i64 %461, i64* %R8_val, !mcsema_real_eip !106
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %462 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -96
  %463 = add i64 %462, -96, !mcsema_real_eip !107
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %464 = inttoptr i64 %463 to i64*, !mcsema_real_eip !107
  %_ptr_to_int_513 = ptrtoint i64* %_allin_new_bt_103 to i64
  %_local_end_to_int_514 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_515 = bitcast i64* %_allin_new_bt_103 to i8*
  %_offset_above_rbp_516 = sub i64 %_ptr_to_int_513, %_local_end_to_int_514
  %_pot_address_in_parent_stack_517 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_516
  %_cond1_518 = icmp ugt i8* %_ptr_bt_515, %_local_stack_end_ptr_
  %_cond2_1_519 = icmp ugt i8* %_ptr_bt_515, %_parent_stack_end_ptr_
  %_cond2_2_520 = icmp ult i8* %_ptr_bt_515, %_parent_stack_start_ptr_
  %_cond2_521 = or i1 %_cond2_1_519, %_cond2_2_520
  %_cond4_522 = icmp ule i8* %_pot_address_in_parent_stack_517, %_parent_stack_end_ptr_
  %_cond1_n_cond2_523 = and i1 %_cond1_518, %_cond2_521
  %_cond1_n_cond2_cond3_524 = and i1 %_cond1_n_cond2_523, %_cond4_522
  br i1 %_cond1_n_cond2_cond3_524, label %465, label %466

; <label>:465:                                    ; preds = %441
  %_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_516
  %_address_in_parent_stack_bt_526 = bitcast i8* %_address_in_parent_stack_525 to i64*
  br label %466

; <label>:466:                                    ; preds = %441, %465
  %467 = phi i64* [ %_allin_new_bt_103, %441 ], [ %_address_in_parent_stack_bt_526, %465 ]
  %_new_load_527 = load i64, i64* %467
  store i64 %_new_load_527, i64* %RCX_val, !mcsema_real_eip !107
  %468 = add i64 %_new_load_527, 4, !mcsema_real_eip !108
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !108
  %470 = bitcast i64* %469 to i32*
  %_ptr_to_int_528 = ptrtoint i32* %470 to i64
  %_local_end_to_int_529 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_530 = bitcast i32* %470 to i8*
  %_offset_above_rbp_531 = sub i64 %_ptr_to_int_528, %_local_end_to_int_529
  %_pot_address_in_parent_stack_532 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_531
  %_cond1_533 = icmp ugt i8* %_ptr_bt_530, %_local_stack_end_ptr_
  %_cond2_1_534 = icmp ugt i8* %_ptr_bt_530, %_parent_stack_end_ptr_
  %_cond2_2_535 = icmp ult i8* %_ptr_bt_530, %_parent_stack_start_ptr_
  %_cond2_536 = or i1 %_cond2_1_534, %_cond2_2_535
  %_cond4_537 = icmp ule i8* %_pot_address_in_parent_stack_532, %_parent_stack_end_ptr_
  %_cond1_n_cond2_538 = and i1 %_cond1_533, %_cond2_536
  %_cond1_n_cond2_cond3_539 = and i1 %_cond1_n_cond2_538, %_cond4_537
  br i1 %_cond1_n_cond2_cond3_539, label %471, label %472

; <label>:471:                                    ; preds = %466
  %_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_531
  %_address_in_parent_stack_bt_541 = bitcast i8* %_address_in_parent_stack_540 to i32*
  br label %472

; <label>:472:                                    ; preds = %466, %471
  %473 = phi i32* [ %470, %466 ], [ %_address_in_parent_stack_bt_541, %471 ]
  %_new_load_542 = load i32, i32* %473
  %474 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %475 = trunc i64 %474 to i32, !mcsema_real_eip !108
  %476 = add i32 %475, %_new_load_542
  %477 = zext i32 %476 to i64, !mcsema_real_eip !108
  store i64 %477, i64* %R8_val, !mcsema_real_eip !108
  %478 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %479 = trunc i64 %478 to i32, !mcsema_real_eip !109
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %476, i32 %479)
  %480 = extractvalue { i32, i1 } %uadd79, 0
  %481 = xor i32 %480, %479, !mcsema_real_eip !109
  %482 = xor i32 %481, %476, !mcsema_real_eip !109
  %483 = and i32 %482, 16, !mcsema_real_eip !109
  %484 = icmp ne i32 %483, 0, !mcsema_real_eip !109
  store i1 %484, i1* %AF_val, !mcsema_real_eip !109
  %485 = icmp slt i32 %480, 0
  store i1 %485, i1* %SF_val, !mcsema_real_eip !109
  %486 = icmp eq i32 %480, 0, !mcsema_real_eip !109
  store i1 %486, i1* %ZF_val, !mcsema_real_eip !109
  %487 = xor i32 %476, -2147483648, !mcsema_real_eip !109
  %488 = xor i32 %487, %479, !mcsema_real_eip !109
  %489 = and i32 %481, %488, !mcsema_real_eip !109
  %490 = icmp slt i32 %489, 0
  store i1 %490, i1* %OF_val, !mcsema_real_eip !109
  %491 = trunc i32 %480 to i8, !mcsema_real_eip !109
  %492 = tail call i8 @llvm.ctpop.i8(i8 %491), !mcsema_real_eip !109
  %493 = and i8 %492, 1
  %494 = icmp eq i8 %493, 0
  store i1 %494, i1* %PF_val, !mcsema_real_eip !109
  %495 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %495, i1* %CF_val, !mcsema_real_eip !109
  %496 = zext i32 %480 to i64, !mcsema_real_eip !109
  store i64 %496, i64* %RSI_val, !mcsema_real_eip !109
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %497 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -104
  %498 = add i64 %497, -104, !mcsema_real_eip !110
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %499 = inttoptr i64 %498 to i64*, !mcsema_real_eip !110
  %_ptr_to_int_543 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_local_end_to_int_544 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_545 = bitcast i64* %_allin_new_bt_106 to i8*
  %_offset_above_rbp_546 = sub i64 %_ptr_to_int_543, %_local_end_to_int_544
  %_pot_address_in_parent_stack_547 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_546
  %_cond1_548 = icmp ugt i8* %_ptr_bt_545, %_local_stack_end_ptr_
  %_cond2_1_549 = icmp ugt i8* %_ptr_bt_545, %_parent_stack_end_ptr_
  %_cond2_2_550 = icmp ult i8* %_ptr_bt_545, %_parent_stack_start_ptr_
  %_cond2_551 = or i1 %_cond2_1_549, %_cond2_2_550
  %_cond4_552 = icmp ule i8* %_pot_address_in_parent_stack_547, %_parent_stack_end_ptr_
  %_cond1_n_cond2_553 = and i1 %_cond1_548, %_cond2_551
  %_cond1_n_cond2_cond3_554 = and i1 %_cond1_n_cond2_553, %_cond4_552
  br i1 %_cond1_n_cond2_cond3_554, label %500, label %501

; <label>:500:                                    ; preds = %472
  %_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_546
  %_address_in_parent_stack_bt_556 = bitcast i8* %_address_in_parent_stack_555 to i64*
  br label %501

; <label>:501:                                    ; preds = %472, %500
  %502 = phi i64* [ %_allin_new_bt_106, %472 ], [ %_address_in_parent_stack_bt_556, %500 ]
  %_new_load_557 = load i64, i64* %502
  store i64 %_new_load_557, i64* %RCX_val, !mcsema_real_eip !110
  %503 = add i64 %_new_load_557, 4, !mcsema_real_eip !111
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !111
  %505 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %506 = trunc i64 %505 to i32, !mcsema_real_eip !111
  %507 = bitcast i64* %504 to i32*
  store i32 %506, i32* %507, !mcsema_real_eip !111
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %508 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -24
  %509 = add i64 %508, -24, !mcsema_real_eip !112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !112
  %511 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_558 = ptrtoint i32* %511 to i64
  %_local_end_to_int_559 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_560 = bitcast i32* %511 to i8*
  %_offset_above_rbp_561 = sub i64 %_ptr_to_int_558, %_local_end_to_int_559
  %_pot_address_in_parent_stack_562 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_561
  %_cond1_563 = icmp ugt i8* %_ptr_bt_560, %_local_stack_end_ptr_
  %_cond2_1_564 = icmp ugt i8* %_ptr_bt_560, %_parent_stack_end_ptr_
  %_cond2_2_565 = icmp ult i8* %_ptr_bt_560, %_parent_stack_start_ptr_
  %_cond2_566 = or i1 %_cond2_1_564, %_cond2_2_565
  %_cond4_567 = icmp ule i8* %_pot_address_in_parent_stack_562, %_parent_stack_end_ptr_
  %_cond1_n_cond2_568 = and i1 %_cond1_563, %_cond2_566
  %_cond1_n_cond2_cond3_569 = and i1 %_cond1_n_cond2_568, %_cond4_567
  br i1 %_cond1_n_cond2_cond3_569, label %512, label %513

; <label>:512:                                    ; preds = %501
  %_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_561
  %_address_in_parent_stack_bt_571 = bitcast i8* %_address_in_parent_stack_570 to i32*
  br label %513

; <label>:513:                                    ; preds = %501, %512
  %514 = phi i32* [ %511, %501 ], [ %_address_in_parent_stack_bt_571, %512 ]
  %_new_load_572 = load i32, i32* %514
  %515 = zext i32 %_new_load_572 to i64, !mcsema_real_eip !112
  store i64 %515, i64* %RSI_val, !mcsema_real_eip !112
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %516 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -56
  %517 = add i64 %516, -56, !mcsema_real_eip !113
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !113
  %_ptr_to_int_573 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_local_end_to_int_574 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_575 = bitcast i64* %_allin_new_bt_112 to i8*
  %_offset_above_rbp_576 = sub i64 %_ptr_to_int_573, %_local_end_to_int_574
  %_pot_address_in_parent_stack_577 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_cond1_578 = icmp ugt i8* %_ptr_bt_575, %_local_stack_end_ptr_
  %_cond2_1_579 = icmp ugt i8* %_ptr_bt_575, %_parent_stack_end_ptr_
  %_cond2_2_580 = icmp ult i8* %_ptr_bt_575, %_parent_stack_start_ptr_
  %_cond2_581 = or i1 %_cond2_1_579, %_cond2_2_580
  %_cond4_582 = icmp ule i8* %_pot_address_in_parent_stack_577, %_parent_stack_end_ptr_
  %_cond1_n_cond2_583 = and i1 %_cond1_578, %_cond2_581
  %_cond1_n_cond2_cond3_584 = and i1 %_cond1_n_cond2_583, %_cond4_582
  br i1 %_cond1_n_cond2_cond3_584, label %519, label %520

; <label>:519:                                    ; preds = %513
  %_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_address_in_parent_stack_bt_586 = bitcast i8* %_address_in_parent_stack_585 to i64*
  br label %520

; <label>:520:                                    ; preds = %513, %519
  %521 = phi i64* [ %_allin_new_bt_112, %513 ], [ %_address_in_parent_stack_bt_586, %519 ]
  %_new_load_587 = load i64, i64* %521
  store i64 %_new_load_587, i64* %RCX_val, !mcsema_real_eip !113
  %522 = add i64 %_new_load_587, 8, !mcsema_real_eip !114
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !114
  %524 = bitcast i64* %523 to i32*
  %_ptr_to_int_588 = ptrtoint i32* %524 to i64
  %_local_end_to_int_589 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_590 = bitcast i32* %524 to i8*
  %_offset_above_rbp_591 = sub i64 %_ptr_to_int_588, %_local_end_to_int_589
  %_pot_address_in_parent_stack_592 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_591
  %_cond1_593 = icmp ugt i8* %_ptr_bt_590, %_local_stack_end_ptr_
  %_cond2_1_594 = icmp ugt i8* %_ptr_bt_590, %_parent_stack_end_ptr_
  %_cond2_2_595 = icmp ult i8* %_ptr_bt_590, %_parent_stack_start_ptr_
  %_cond2_596 = or i1 %_cond2_1_594, %_cond2_2_595
  %_cond4_597 = icmp ule i8* %_pot_address_in_parent_stack_592, %_parent_stack_end_ptr_
  %_cond1_n_cond2_598 = and i1 %_cond1_593, %_cond2_596
  %_cond1_n_cond2_cond3_599 = and i1 %_cond1_n_cond2_598, %_cond4_597
  br i1 %_cond1_n_cond2_cond3_599, label %525, label %526

; <label>:525:                                    ; preds = %520
  %_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_591
  %_address_in_parent_stack_bt_601 = bitcast i8* %_address_in_parent_stack_600 to i32*
  br label %526

; <label>:526:                                    ; preds = %520, %525
  %527 = phi i32* [ %524, %520 ], [ %_address_in_parent_stack_bt_601, %525 ]
  %_new_load_602 = load i32, i32* %527
  %528 = load i64, i64* %RSI_val, !mcsema_real_eip !114
  %529 = trunc i64 %528 to i32, !mcsema_real_eip !114
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %529, i32 %_new_load_602)
  %530 = extractvalue { i32, i1 } %uadd80, 0
  %531 = xor i32 %530, %_new_load_602, !mcsema_real_eip !114
  %532 = xor i32 %531, %529, !mcsema_real_eip !114
  %533 = and i32 %532, 16, !mcsema_real_eip !114
  %534 = icmp ne i32 %533, 0, !mcsema_real_eip !114
  store i1 %534, i1* %AF_val, !mcsema_real_eip !114
  %535 = icmp slt i32 %530, 0
  store i1 %535, i1* %SF_val, !mcsema_real_eip !114
  %536 = icmp eq i32 %530, 0, !mcsema_real_eip !114
  store i1 %536, i1* %ZF_val, !mcsema_real_eip !114
  %537 = xor i32 %_new_load_602, -2147483648, !mcsema_real_eip !114
  %538 = xor i32 %537, %529, !mcsema_real_eip !114
  %539 = and i32 %531, %538, !mcsema_real_eip !114
  %540 = icmp slt i32 %539, 0
  store i1 %540, i1* %OF_val, !mcsema_real_eip !114
  %541 = trunc i32 %530 to i8, !mcsema_real_eip !114
  %542 = tail call i8 @llvm.ctpop.i8(i8 %541), !mcsema_real_eip !114
  %543 = and i8 %542, 1
  %544 = icmp eq i8 %543, 0
  store i1 %544, i1* %PF_val, !mcsema_real_eip !114
  %545 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %545, i1* %CF_val, !mcsema_real_eip !114
  %546 = zext i32 %530 to i64, !mcsema_real_eip !114
  store i64 %546, i64* %RSI_val, !mcsema_real_eip !114
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -64
  %548 = add i64 %547, -64, !mcsema_real_eip !115
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !115
  %_ptr_to_int_603 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_local_end_to_int_604 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_605 = bitcast i64* %_allin_new_bt_115 to i8*
  %_offset_above_rbp_606 = sub i64 %_ptr_to_int_603, %_local_end_to_int_604
  %_pot_address_in_parent_stack_607 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_606
  %_cond1_608 = icmp ugt i8* %_ptr_bt_605, %_local_stack_end_ptr_
  %_cond2_1_609 = icmp ugt i8* %_ptr_bt_605, %_parent_stack_end_ptr_
  %_cond2_2_610 = icmp ult i8* %_ptr_bt_605, %_parent_stack_start_ptr_
  %_cond2_611 = or i1 %_cond2_1_609, %_cond2_2_610
  %_cond4_612 = icmp ule i8* %_pot_address_in_parent_stack_607, %_parent_stack_end_ptr_
  %_cond1_n_cond2_613 = and i1 %_cond1_608, %_cond2_611
  %_cond1_n_cond2_cond3_614 = and i1 %_cond1_n_cond2_613, %_cond4_612
  br i1 %_cond1_n_cond2_cond3_614, label %550, label %551

; <label>:550:                                    ; preds = %526
  %_address_in_parent_stack_615 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_606
  %_address_in_parent_stack_bt_616 = bitcast i8* %_address_in_parent_stack_615 to i64*
  br label %551

; <label>:551:                                    ; preds = %526, %550
  %552 = phi i64* [ %_allin_new_bt_115, %526 ], [ %_address_in_parent_stack_bt_616, %550 ]
  %_new_load_617 = load i64, i64* %552
  store i64 %_new_load_617, i64* %RCX_val, !mcsema_real_eip !115
  %553 = add i64 %_new_load_617, 8, !mcsema_real_eip !116
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !116
  %555 = bitcast i64* %554 to i32*
  %_ptr_to_int_618 = ptrtoint i32* %555 to i64
  %_local_end_to_int_619 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_620 = bitcast i32* %555 to i8*
  %_offset_above_rbp_621 = sub i64 %_ptr_to_int_618, %_local_end_to_int_619
  %_pot_address_in_parent_stack_622 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_621
  %_cond1_623 = icmp ugt i8* %_ptr_bt_620, %_local_stack_end_ptr_
  %_cond2_1_624 = icmp ugt i8* %_ptr_bt_620, %_parent_stack_end_ptr_
  %_cond2_2_625 = icmp ult i8* %_ptr_bt_620, %_parent_stack_start_ptr_
  %_cond2_626 = or i1 %_cond2_1_624, %_cond2_2_625
  %_cond4_627 = icmp ule i8* %_pot_address_in_parent_stack_622, %_parent_stack_end_ptr_
  %_cond1_n_cond2_628 = and i1 %_cond1_623, %_cond2_626
  %_cond1_n_cond2_cond3_629 = and i1 %_cond1_n_cond2_628, %_cond4_627
  br i1 %_cond1_n_cond2_cond3_629, label %556, label %557

; <label>:556:                                    ; preds = %551
  %_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_621
  %_address_in_parent_stack_bt_631 = bitcast i8* %_address_in_parent_stack_630 to i32*
  br label %557

; <label>:557:                                    ; preds = %551, %556
  %558 = phi i32* [ %555, %551 ], [ %_address_in_parent_stack_bt_631, %556 ]
  %_new_load_632 = load i32, i32* %558
  %559 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %560 = trunc i64 %559 to i32, !mcsema_real_eip !116
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %560, i32 %_new_load_632)
  %561 = extractvalue { i32, i1 } %uadd81, 0
  %562 = xor i32 %561, %_new_load_632, !mcsema_real_eip !116
  %563 = xor i32 %562, %560, !mcsema_real_eip !116
  %564 = and i32 %563, 16, !mcsema_real_eip !116
  %565 = icmp ne i32 %564, 0, !mcsema_real_eip !116
  store i1 %565, i1* %AF_val, !mcsema_real_eip !116
  %566 = icmp slt i32 %561, 0
  store i1 %566, i1* %SF_val, !mcsema_real_eip !116
  %567 = icmp eq i32 %561, 0, !mcsema_real_eip !116
  store i1 %567, i1* %ZF_val, !mcsema_real_eip !116
  %568 = xor i32 %_new_load_632, -2147483648, !mcsema_real_eip !116
  %569 = xor i32 %568, %560, !mcsema_real_eip !116
  %570 = and i32 %562, %569, !mcsema_real_eip !116
  %571 = icmp slt i32 %570, 0
  store i1 %571, i1* %OF_val, !mcsema_real_eip !116
  %572 = trunc i32 %561 to i8, !mcsema_real_eip !116
  %573 = tail call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !116
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  store i1 %575, i1* %PF_val, !mcsema_real_eip !116
  %576 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %576, i1* %CF_val, !mcsema_real_eip !116
  %577 = zext i32 %561 to i64, !mcsema_real_eip !116
  store i64 %577, i64* %RSI_val, !mcsema_real_eip !116
  %578 = load i64, i64* %RAX_val, !mcsema_real_eip !117
  %579 = add i64 %578, 8, !mcsema_real_eip !117
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !117
  %581 = bitcast i64* %580 to i32*
  %_ptr_to_int_633 = ptrtoint i32* %581 to i64
  %_local_end_to_int_634 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_635 = bitcast i32* %581 to i8*
  %_offset_above_rbp_636 = sub i64 %_ptr_to_int_633, %_local_end_to_int_634
  %_pot_address_in_parent_stack_637 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_636
  %_cond1_638 = icmp ugt i8* %_ptr_bt_635, %_local_stack_end_ptr_
  %_cond2_1_639 = icmp ugt i8* %_ptr_bt_635, %_parent_stack_end_ptr_
  %_cond2_2_640 = icmp ult i8* %_ptr_bt_635, %_parent_stack_start_ptr_
  %_cond2_641 = or i1 %_cond2_1_639, %_cond2_2_640
  %_cond4_642 = icmp ule i8* %_pot_address_in_parent_stack_637, %_parent_stack_end_ptr_
  %_cond1_n_cond2_643 = and i1 %_cond1_638, %_cond2_641
  %_cond1_n_cond2_cond3_644 = and i1 %_cond1_n_cond2_643, %_cond4_642
  br i1 %_cond1_n_cond2_cond3_644, label %582, label %583

; <label>:582:                                    ; preds = %557
  %_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_636
  %_address_in_parent_stack_bt_646 = bitcast i8* %_address_in_parent_stack_645 to i32*
  br label %583

; <label>:583:                                    ; preds = %557, %582
  %584 = phi i32* [ %581, %557 ], [ %_address_in_parent_stack_bt_646, %582 ]
  %_new_load_647 = load i32, i32* %584
  %585 = zext i32 %_new_load_647 to i64, !mcsema_real_eip !117
  store i64 %585, i64* %R8_val, !mcsema_real_eip !117
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %586 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -88
  %587 = add i64 %586, -88, !mcsema_real_eip !118
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !118
  %_ptr_to_int_648 = ptrtoint i64* %_allin_new_bt_118 to i64
  %_local_end_to_int_649 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_650 = bitcast i64* %_allin_new_bt_118 to i8*
  %_offset_above_rbp_651 = sub i64 %_ptr_to_int_648, %_local_end_to_int_649
  %_pot_address_in_parent_stack_652 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_651
  %_cond1_653 = icmp ugt i8* %_ptr_bt_650, %_local_stack_end_ptr_
  %_cond2_1_654 = icmp ugt i8* %_ptr_bt_650, %_parent_stack_end_ptr_
  %_cond2_2_655 = icmp ult i8* %_ptr_bt_650, %_parent_stack_start_ptr_
  %_cond2_656 = or i1 %_cond2_1_654, %_cond2_2_655
  %_cond4_657 = icmp ule i8* %_pot_address_in_parent_stack_652, %_parent_stack_end_ptr_
  %_cond1_n_cond2_658 = and i1 %_cond1_653, %_cond2_656
  %_cond1_n_cond2_cond3_659 = and i1 %_cond1_n_cond2_658, %_cond4_657
  br i1 %_cond1_n_cond2_cond3_659, label %589, label %590

; <label>:589:                                    ; preds = %583
  %_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_651
  %_address_in_parent_stack_bt_661 = bitcast i8* %_address_in_parent_stack_660 to i64*
  br label %590

; <label>:590:                                    ; preds = %583, %589
  %591 = phi i64* [ %_allin_new_bt_118, %583 ], [ %_address_in_parent_stack_bt_661, %589 ]
  %_new_load_662 = load i64, i64* %591
  store i64 %_new_load_662, i64* %RCX_val, !mcsema_real_eip !118
  %592 = add i64 %_new_load_662, 8, !mcsema_real_eip !119
  %593 = inttoptr i64 %592 to i64*, !mcsema_real_eip !119
  %594 = bitcast i64* %593 to i32*
  %_ptr_to_int_663 = ptrtoint i32* %594 to i64
  %_local_end_to_int_664 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_665 = bitcast i32* %594 to i8*
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %_local_end_to_int_664
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_ptr_bt_665, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_ptr_bt_665, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_ptr_bt_665, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  br i1 %_cond1_n_cond2_cond3_674, label %595, label %596

; <label>:595:                                    ; preds = %590
  %_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_address_in_parent_stack_bt_676 = bitcast i8* %_address_in_parent_stack_675 to i32*
  br label %596

; <label>:596:                                    ; preds = %590, %595
  %597 = phi i32* [ %594, %590 ], [ %_address_in_parent_stack_bt_676, %595 ]
  %_new_load_677 = load i32, i32* %597
  %598 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %599 = trunc i64 %598 to i32, !mcsema_real_eip !119
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %599, i32 %_new_load_677)
  %600 = extractvalue { i32, i1 } %uadd82, 0
  %601 = xor i32 %600, %_new_load_677, !mcsema_real_eip !119
  %602 = xor i32 %601, %599, !mcsema_real_eip !119
  %603 = and i32 %602, 16, !mcsema_real_eip !119
  %604 = icmp ne i32 %603, 0, !mcsema_real_eip !119
  store i1 %604, i1* %AF_val, !mcsema_real_eip !119
  %605 = icmp slt i32 %600, 0
  store i1 %605, i1* %SF_val, !mcsema_real_eip !119
  %606 = icmp eq i32 %600, 0, !mcsema_real_eip !119
  store i1 %606, i1* %ZF_val, !mcsema_real_eip !119
  %607 = xor i32 %_new_load_677, -2147483648, !mcsema_real_eip !119
  %608 = xor i32 %607, %599, !mcsema_real_eip !119
  %609 = and i32 %601, %608, !mcsema_real_eip !119
  %610 = icmp slt i32 %609, 0
  store i1 %610, i1* %OF_val, !mcsema_real_eip !119
  %611 = trunc i32 %600 to i8, !mcsema_real_eip !119
  %612 = tail call i8 @llvm.ctpop.i8(i8 %611), !mcsema_real_eip !119
  %613 = and i8 %612, 1
  %614 = icmp eq i8 %613, 0
  store i1 %614, i1* %PF_val, !mcsema_real_eip !119
  %615 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %615, i1* %CF_val, !mcsema_real_eip !119
  %616 = zext i32 %600 to i64, !mcsema_real_eip !119
  store i64 %616, i64* %R8_val, !mcsema_real_eip !119
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %617 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -96
  %618 = add i64 %617, -96, !mcsema_real_eip !120
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %619 = inttoptr i64 %618 to i64*, !mcsema_real_eip !120
  %_ptr_to_int_678 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_local_end_to_int_679 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_680 = bitcast i64* %_allin_new_bt_121 to i8*
  %_offset_above_rbp_681 = sub i64 %_ptr_to_int_678, %_local_end_to_int_679
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_ptr_bt_680, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_ptr_bt_680, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_ptr_bt_680, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond1_n_cond2_688, %_cond4_687
  br i1 %_cond1_n_cond2_cond3_689, label %620, label %621

; <label>:620:                                    ; preds = %596
  %_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_address_in_parent_stack_bt_691 = bitcast i8* %_address_in_parent_stack_690 to i64*
  br label %621

; <label>:621:                                    ; preds = %596, %620
  %622 = phi i64* [ %_allin_new_bt_121, %596 ], [ %_address_in_parent_stack_bt_691, %620 ]
  %_new_load_692 = load i64, i64* %622
  store i64 %_new_load_692, i64* %RCX_val, !mcsema_real_eip !120
  %623 = add i64 %_new_load_692, 8, !mcsema_real_eip !121
  %624 = inttoptr i64 %623 to i64*, !mcsema_real_eip !121
  %625 = bitcast i64* %624 to i32*
  %_ptr_to_int_693 = ptrtoint i32* %625 to i64
  %_local_end_to_int_694 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_695 = bitcast i32* %625 to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %_local_end_to_int_694
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  br i1 %_cond1_n_cond2_cond3_704, label %626, label %627

; <label>:626:                                    ; preds = %621
  %_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_address_in_parent_stack_bt_706 = bitcast i8* %_address_in_parent_stack_705 to i32*
  br label %627

; <label>:627:                                    ; preds = %621, %626
  %628 = phi i32* [ %625, %621 ], [ %_address_in_parent_stack_bt_706, %626 ]
  %_new_load_707 = load i32, i32* %628
  %629 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %630 = trunc i64 %629 to i32, !mcsema_real_eip !121
  %631 = add i32 %630, %_new_load_707
  %632 = zext i32 %631 to i64, !mcsema_real_eip !121
  store i64 %632, i64* %R8_val, !mcsema_real_eip !121
  %633 = load i64, i64* %RSI_val, !mcsema_real_eip !122
  %634 = trunc i64 %633 to i32, !mcsema_real_eip !122
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %631, i32 %634)
  %635 = extractvalue { i32, i1 } %uadd84, 0
  %636 = xor i32 %635, %634, !mcsema_real_eip !122
  %637 = xor i32 %636, %631, !mcsema_real_eip !122
  %638 = and i32 %637, 16, !mcsema_real_eip !122
  %639 = icmp ne i32 %638, 0, !mcsema_real_eip !122
  store i1 %639, i1* %AF_val, !mcsema_real_eip !122
  %640 = icmp slt i32 %635, 0
  store i1 %640, i1* %SF_val, !mcsema_real_eip !122
  %641 = icmp eq i32 %635, 0, !mcsema_real_eip !122
  store i1 %641, i1* %ZF_val, !mcsema_real_eip !122
  %642 = xor i32 %631, -2147483648, !mcsema_real_eip !122
  %643 = xor i32 %642, %634, !mcsema_real_eip !122
  %644 = and i32 %636, %643, !mcsema_real_eip !122
  %645 = icmp slt i32 %644, 0
  store i1 %645, i1* %OF_val, !mcsema_real_eip !122
  %646 = trunc i32 %635 to i8, !mcsema_real_eip !122
  %647 = tail call i8 @llvm.ctpop.i8(i8 %646), !mcsema_real_eip !122
  %648 = and i8 %647, 1
  %649 = icmp eq i8 %648, 0
  store i1 %649, i1* %PF_val, !mcsema_real_eip !122
  %650 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %650, i1* %CF_val, !mcsema_real_eip !122
  %651 = zext i32 %635 to i64, !mcsema_real_eip !122
  store i64 %651, i64* %RSI_val, !mcsema_real_eip !122
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %652 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -104
  %653 = add i64 %652, -104, !mcsema_real_eip !123
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !123
  %_ptr_to_int_708 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_local_end_to_int_709 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_710 = bitcast i64* %_allin_new_bt_124 to i8*
  %_offset_above_rbp_711 = sub i64 %_ptr_to_int_708, %_local_end_to_int_709
  %_pot_address_in_parent_stack_712 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_711
  %_cond1_713 = icmp ugt i8* %_ptr_bt_710, %_local_stack_end_ptr_
  %_cond2_1_714 = icmp ugt i8* %_ptr_bt_710, %_parent_stack_end_ptr_
  %_cond2_2_715 = icmp ult i8* %_ptr_bt_710, %_parent_stack_start_ptr_
  %_cond2_716 = or i1 %_cond2_1_714, %_cond2_2_715
  %_cond4_717 = icmp ule i8* %_pot_address_in_parent_stack_712, %_parent_stack_end_ptr_
  %_cond1_n_cond2_718 = and i1 %_cond1_713, %_cond2_716
  %_cond1_n_cond2_cond3_719 = and i1 %_cond1_n_cond2_718, %_cond4_717
  br i1 %_cond1_n_cond2_cond3_719, label %655, label %656

; <label>:655:                                    ; preds = %627
  %_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_711
  %_address_in_parent_stack_bt_721 = bitcast i8* %_address_in_parent_stack_720 to i64*
  br label %656

; <label>:656:                                    ; preds = %627, %655
  %657 = phi i64* [ %_allin_new_bt_124, %627 ], [ %_address_in_parent_stack_bt_721, %655 ]
  %_new_load_722 = load i64, i64* %657
  store i64 %_new_load_722, i64* %RCX_val, !mcsema_real_eip !123
  %658 = add i64 %_new_load_722, 8, !mcsema_real_eip !124
  %659 = inttoptr i64 %658 to i64*, !mcsema_real_eip !124
  %660 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %661 = trunc i64 %660 to i32, !mcsema_real_eip !124
  %662 = bitcast i64* %659 to i32*
  store i32 %661, i32* %662, !mcsema_real_eip !124
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %663 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -104
  %664 = add i64 %663, -104, !mcsema_real_eip !125
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %665 = inttoptr i64 %664 to i64*, !mcsema_real_eip !125
  %_ptr_to_int_723 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_local_end_to_int_724 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_725 = bitcast i64* %_allin_new_bt_127 to i8*
  %_offset_above_rbp_726 = sub i64 %_ptr_to_int_723, %_local_end_to_int_724
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %_ptr_bt_725, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %_ptr_bt_725, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %_ptr_bt_725, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond1_n_cond2_733, %_cond4_732
  br i1 %_cond1_n_cond2_cond3_734, label %666, label %667

; <label>:666:                                    ; preds = %656
  %_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_address_in_parent_stack_bt_736 = bitcast i8* %_address_in_parent_stack_735 to i64*
  br label %667

; <label>:667:                                    ; preds = %656, %666
  %668 = phi i64* [ %_allin_new_bt_127, %656 ], [ %_address_in_parent_stack_bt_736, %666 ]
  %_new_load_737 = load i64, i64* %668
  store i64 %_new_load_737, i64* %RAX_val, !mcsema_real_eip !125
  %_load_rsp_ptr_128 = load i8*, i8** %_RSP_ptr_
  %669 = load i64, i64* %RSP_val, !mcsema_real_eip !126
  %_new_ptr2int_129 = ptrtoint i8* %_load_rsp_ptr_128 to i64
  %uadd85 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_129, i64 96)
  %670 = extractvalue { i64, i1 } %uadd85, 0
  %671 = xor i64 %670, %_new_ptr2int_129, !mcsema_real_eip !126
  %672 = and i64 %671, 16, !mcsema_real_eip !126
  %673 = icmp ne i64 %672, 0, !mcsema_real_eip !126
  store i1 %673, i1* %AF_val, !mcsema_real_eip !126
  %674 = icmp slt i64 %670, 0
  store i1 %674, i1* %SF_val, !mcsema_real_eip !126
  %675 = icmp eq i64 %670, 0, !mcsema_real_eip !126
  store i1 %675, i1* %ZF_val, !mcsema_real_eip !126
  %676 = xor i64 %_new_ptr2int_129, -9223372036854775808, !mcsema_real_eip !126
  %677 = and i64 %671, %676, !mcsema_real_eip !126
  %678 = icmp slt i64 %677, 0
  store i1 %678, i1* %OF_val, !mcsema_real_eip !126
  %679 = trunc i64 %670 to i8, !mcsema_real_eip !126
  %680 = tail call i8 @llvm.ctpop.i8(i8 %679), !mcsema_real_eip !126
  %681 = and i8 %680, 1
  %682 = icmp eq i8 %681, 0
  store i1 %682, i1* %PF_val, !mcsema_real_eip !126
  %683 = extractvalue { i64, i1 } %uadd85, 1
  store i1 %683, i1* %CF_val, !mcsema_real_eip !126
  %_new_int2ptr_ = inttoptr i64 %670 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %670, i64* %RSP_val, !mcsema_real_eip !126
  %684 = inttoptr i64 %670 to i64*, !mcsema_real_eip !127
  %_ptr_to_int_738 = ptrtoint i64* %684 to i64
  %_local_end_to_int_739 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_740 = bitcast i64* %684 to i8*
  %_offset_above_rbp_741 = sub i64 %_ptr_to_int_738, %_local_end_to_int_739
  %_pot_address_in_parent_stack_742 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_741
  %_cond1_743 = icmp ugt i8* %_ptr_bt_740, %_local_stack_end_ptr_
  %_cond2_1_744 = icmp ugt i8* %_ptr_bt_740, %_parent_stack_end_ptr_
  %_cond2_2_745 = icmp ult i8* %_ptr_bt_740, %_parent_stack_start_ptr_
  %_cond2_746 = or i1 %_cond2_1_744, %_cond2_2_745
  %_cond4_747 = icmp ule i8* %_pot_address_in_parent_stack_742, %_parent_stack_end_ptr_
  %_cond1_n_cond2_748 = and i1 %_cond1_743, %_cond2_746
  %_cond1_n_cond2_cond3_749 = and i1 %_cond1_n_cond2_748, %_cond4_747
  br i1 %_cond1_n_cond2_cond3_749, label %685, label %686

; <label>:685:                                    ; preds = %667
  %_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_741
  %_address_in_parent_stack_bt_751 = bitcast i8* %_address_in_parent_stack_750 to i64*
  br label %686

; <label>:686:                                    ; preds = %667, %685
  %687 = phi i64* [ %684, %667 ], [ %_address_in_parent_stack_bt_751, %685 ]
  %_new_load_752 = load i64, i64* %687
  store i64 %_new_load_752, i64* %RBX_val, !mcsema_real_eip !127
  %688 = add i64 %670, 8, !mcsema_real_eip !127
  %_new_int2ptr_130 = inttoptr i64 %688 to i8*
  store volatile i8* %_new_int2ptr_130, i8** %_RSP_ptr_
  store i64 %688, i64* %RSP_val, !mcsema_real_eip !127
  %689 = inttoptr i64 %688 to i64*, !mcsema_real_eip !128
  %_ptr_to_int_753 = ptrtoint i64* %689 to i64
  %_local_end_to_int_754 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_755 = bitcast i64* %689 to i8*
  %_offset_above_rbp_756 = sub i64 %_ptr_to_int_753, %_local_end_to_int_754
  %_pot_address_in_parent_stack_757 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_756
  %_cond1_758 = icmp ugt i8* %_ptr_bt_755, %_local_stack_end_ptr_
  %_cond2_1_759 = icmp ugt i8* %_ptr_bt_755, %_parent_stack_end_ptr_
  %_cond2_2_760 = icmp ult i8* %_ptr_bt_755, %_parent_stack_start_ptr_
  %_cond2_761 = or i1 %_cond2_1_759, %_cond2_2_760
  %_cond4_762 = icmp ule i8* %_pot_address_in_parent_stack_757, %_parent_stack_end_ptr_
  %_cond1_n_cond2_763 = and i1 %_cond1_758, %_cond2_761
  %_cond1_n_cond2_cond3_764 = and i1 %_cond1_n_cond2_763, %_cond4_762
  br i1 %_cond1_n_cond2_cond3_764, label %690, label %691

; <label>:690:                                    ; preds = %686
  %_address_in_parent_stack_765 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_756
  %_address_in_parent_stack_bt_766 = bitcast i8* %_address_in_parent_stack_765 to i64*
  br label %691

; <label>:691:                                    ; preds = %686, %690
  %692 = phi i64* [ %689, %686 ], [ %_address_in_parent_stack_bt_766, %690 ]
  %_new_load_767 = load i64, i64* %692
  store i64 %_new_load_767, i64* %R14_val, !mcsema_real_eip !128
  %693 = add i64 %670, 16, !mcsema_real_eip !128
  %_new_int2ptr_131 = inttoptr i64 %693 to i8*
  store volatile i8* %_new_int2ptr_131, i8** %_RSP_ptr_
  store i64 %693, i64* %RSP_val, !mcsema_real_eip !128
  %694 = inttoptr i64 %693 to i64*, !mcsema_real_eip !129
  %_ptr_to_int_768 = ptrtoint i64* %694 to i64
  %_local_end_to_int_769 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_770 = bitcast i64* %694 to i8*
  %_offset_above_rbp_771 = sub i64 %_ptr_to_int_768, %_local_end_to_int_769
  %_pot_address_in_parent_stack_772 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_cond1_773 = icmp ugt i8* %_ptr_bt_770, %_local_stack_end_ptr_
  %_cond2_1_774 = icmp ugt i8* %_ptr_bt_770, %_parent_stack_end_ptr_
  %_cond2_2_775 = icmp ult i8* %_ptr_bt_770, %_parent_stack_start_ptr_
  %_cond2_776 = or i1 %_cond2_1_774, %_cond2_2_775
  %_cond4_777 = icmp ule i8* %_pot_address_in_parent_stack_772, %_parent_stack_end_ptr_
  %_cond1_n_cond2_778 = and i1 %_cond1_773, %_cond2_776
  %_cond1_n_cond2_cond3_779 = and i1 %_cond1_n_cond2_778, %_cond4_777
  br i1 %_cond1_n_cond2_cond3_779, label %695, label %696

; <label>:695:                                    ; preds = %691
  %_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_address_in_parent_stack_bt_781 = bitcast i8* %_address_in_parent_stack_780 to i64*
  br label %696

; <label>:696:                                    ; preds = %691, %695
  %697 = phi i64* [ %694, %691 ], [ %_address_in_parent_stack_bt_781, %695 ]
  %_new_load_782 = load i64, i64* %697
  %_new_int2ptr_132 = inttoptr i64 %_new_load_782 to i8*
  store volatile i8* %_new_int2ptr_132, i8** %_RBP_ptr_
  store i64 %_new_load_782, i64* %RBP_val, !mcsema_real_eip !129
  %698 = add i64 %670, 32, !mcsema_real_eip !130
  %_new_int2ptr_133 = inttoptr i64 %698 to i8*
  store volatile i8* %_new_int2ptr_133, i8** %_RSP_ptr_
  store i64 %698, i64* %RSP_val, !mcsema_real_eip !130
  %699 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %699, i64* %RAX, !mcsema_real_eip !130
  %700 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %700, i64* %RBX, !mcsema_real_eip !130
  %701 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %701, i64* %RCX, !mcsema_real_eip !130
  %702 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %702, i64* %RDX, !mcsema_real_eip !130
  %703 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %703, i64* %RSI, !mcsema_real_eip !130
  %704 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %704, i64* %RDI, !mcsema_real_eip !130
  %_load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_
  %705 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  %_new_ptr2int_135 = ptrtoint i8* %_load_rsp_ptr_134 to i64
  store volatile i64 %_new_ptr2int_135, i64* %RSP
  %_load_rbp_ptr_136 = load i8*, i8** %_RBP_ptr_
  %706 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  %_new_ptr2int_137 = ptrtoint i8* %_load_rbp_ptr_136 to i64
  store volatile i64 %_new_ptr2int_137, i64* %RBP
  %707 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %707, i64* %R8, !mcsema_real_eip !130
  %708 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %708, i64* %R9, !mcsema_real_eip !130
  %709 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %709, i64* %R10, !mcsema_real_eip !130
  %710 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %710, i64* %R11, !mcsema_real_eip !130
  %711 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %711, i64* %R12, !mcsema_real_eip !130
  %712 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %712, i64* %R13, !mcsema_real_eip !130
  %713 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %713, i64* %R14, !mcsema_real_eip !130
  %714 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %714, i64* %R15, !mcsema_real_eip !130
  %715 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %715, i64* %RIP, !mcsema_real_eip !130
  %716 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %716, i1* %CF, align 1, !mcsema_real_eip !130
  %717 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %717, i1* %PF, align 1, !mcsema_real_eip !130
  %718 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %718, i1* %AF, align 1, !mcsema_real_eip !130
  %719 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %719, i1* %ZF, align 1, !mcsema_real_eip !130
  %720 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %720, i1* %SF, align 1, !mcsema_real_eip !130
  %721 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %721, i1* %OF, align 1, !mcsema_real_eip !130
  %722 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %722, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %723 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %723, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %724 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %724, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %725 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %725, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %726 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %726, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %727 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %727, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %728 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %728, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %729 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %729, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %730 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %730, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %731 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %731, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %732 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %732, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %733 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %733, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %734 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %734, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %735 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %735, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %736 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %736, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %737 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %737, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %738 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %738, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %739 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %739, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %740 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %740, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %741 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %741, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %742 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %742, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %743 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %743, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %744 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %744, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %745 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %745, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %_ptr_to_int_783 = ptrtoint i64* %53 to i64
  %_local_end_to_int_784 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_785 = bitcast i64* %53 to i8*
  %_offset_above_rbp_786 = sub i64 %_ptr_to_int_783, %_local_end_to_int_784
  %_pot_address_in_parent_stack_787 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_786
  %_cond1_788 = icmp ugt i8* %_ptr_bt_785, %_local_stack_end_ptr_
  %_cond2_1_789 = icmp ugt i8* %_ptr_bt_785, %_parent_stack_end_ptr_
  %_cond2_2_790 = icmp ult i8* %_ptr_bt_785, %_parent_stack_start_ptr_
  %_cond2_791 = or i1 %_cond2_1_789, %_cond2_2_790
  %_cond4_792 = icmp ule i8* %_pot_address_in_parent_stack_787, %_parent_stack_end_ptr_
  %_cond1_n_cond2_793 = and i1 %_cond1_788, %_cond2_791
  %_cond1_n_cond2_cond3_794 = and i1 %_cond1_n_cond2_793, %_cond4_792
  br i1 %_cond1_n_cond2_cond3_794, label %746, label %747

; <label>:746:                                    ; preds = %696
  %_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_786
  %_address_in_parent_stack_bt_796 = bitcast i8* %_address_in_parent_stack_795 to i64*
  br label %747

; <label>:747:                                    ; preds = %696, %746
  %748 = phi i64* [ %53, %696 ], [ %_address_in_parent_stack_bt_796, %746 ]
  %_new_load_797 = load i64, i64* %748
  store i64 %_new_load_797, i64* %52, align 4
  %749 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %749, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %750 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %750, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %751 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %751, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %752 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %752, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %753 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !130
  store i11 %753, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !130
  %754 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %754, i128* %XMM0, align 1, !mcsema_real_eip !130
  %755 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %755, i128* %XMM1, align 1, !mcsema_real_eip !130
  %756 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %756, i128* %XMM2, align 1, !mcsema_real_eip !130
  %757 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %757, i128* %XMM3, align 1, !mcsema_real_eip !130
  %758 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %758, i128* %XMM4, align 1, !mcsema_real_eip !130
  %759 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %759, i128* %XMM5, align 1, !mcsema_real_eip !130
  %760 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %760, i128* %XMM6, align 1, !mcsema_real_eip !130
  %761 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %761, i128* %XMM7, align 1, !mcsema_real_eip !130
  %762 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %762, i128* %XMM8, align 1, !mcsema_real_eip !130
  %763 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %763, i128* %XMM9, align 1, !mcsema_real_eip !130
  %764 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %764, i128* %XMM10, align 1, !mcsema_real_eip !130
  %765 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %765, i128* %XMM11, align 1, !mcsema_real_eip !130
  %766 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %766, i128* %XMM12, align 1, !mcsema_real_eip !130
  %767 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %767, i128* %XMM13, align 1, !mcsema_real_eip !130
  %768 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %768, i128* %XMM14, align 1, !mcsema_real_eip !130
  %769 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %769, i128* %XMM15, align 1, !mcsema_real_eip !130
  %770 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %770, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %771 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %771, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 264}
!6 = !{i64 274}
!7 = !{i64 281}
!8 = !{i64 288}
!9 = !{i64 295}
!10 = !{i64 302}
!11 = !{i64 307}
!12 = !{i64 311}
!13 = !{i64 317}
!14 = !{i64 323}
!15 = !{i64 328}
!16 = !{i64 332}
!17 = !{i64 336}
!18 = !{i64 342}
!19 = !{i64 346}
!20 = !{i64 353}
!21 = !{i64 357}
!22 = !{i64 364}
!23 = !{i64 368}
!24 = !{i64 372}
!25 = !{i64 376}
!26 = !{i64 380}
!27 = !{i64 384}
!28 = !{i64 388}
!29 = !{i64 392}
!30 = !{i64 396}
!31 = !{i64 400}
!32 = !{i64 403}
!33 = !{i64 406}
!34 = !{i64 410}
!35 = !{i64 414}
!36 = !{i64 417}
!37 = !{i64 420}
!38 = !{i64 423}
!39 = !{i64 430}
!40 = !{i64 433}
!41 = !{i64 438}
!42 = !{i64 442}
!43 = !{i64 447}
!44 = !{i64 452}
!45 = !{i64 456}
!46 = !{i64 461}
!47 = !{i64 466}
!48 = !{i64 470}
!49 = !{i64 474}
!50 = !{i64 476}
!51 = !{i64 480}
!52 = !{i64 483}
!53 = !{i64 487}
!54 = !{i64 490}
!55 = !{i64 492}
!56 = !{i64 496}
!57 = !{i64 497}
!58 = !{i64 0}
!59 = !{i64 1}
!60 = !{i64 4}
!61 = !{i64 6}
!62 = !{i64 7}
!63 = !{i64 11}
!64 = !{i64 15}
!65 = !{i64 19}
!66 = !{i64 23}
!67 = !{i64 26}
!68 = !{i64 36}
!69 = !{i64 40}
!70 = !{i64 43}
!71 = !{i64 47}
!72 = !{i64 51}
!73 = !{i64 54}
!74 = !{i64 57}
!75 = !{i64 61}
!76 = !{i64 65}
!77 = !{i64 69}
!78 = !{i64 73}
!79 = !{i64 76}
!80 = !{i64 80}
!81 = !{i64 84}
!82 = !{i64 87}
!83 = !{i64 91}
!84 = !{i64 96}
!85 = !{i64 100}
!86 = !{i64 103}
!87 = !{i64 107}
!88 = !{i64 109}
!89 = !{i64 113}
!90 = !{i64 115}
!91 = !{i64 119}
!92 = !{i64 122}
!93 = !{i64 126}
!94 = !{i64 129}
!95 = !{i64 133}
!96 = !{i64 136}
!97 = !{i64 139}
!98 = !{i64 143}
!99 = !{i64 145}
!100 = !{i64 148}
!101 = !{i64 152}
!102 = !{i64 155}
!103 = !{i64 159}
!104 = !{i64 162}
!105 = !{i64 166}
!106 = !{i64 170}
!107 = !{i64 174}
!108 = !{i64 178}
!109 = !{i64 182}
!110 = !{i64 185}
!111 = !{i64 189}
!112 = !{i64 192}
!113 = !{i64 195}
!114 = !{i64 199}
!115 = !{i64 202}
!116 = !{i64 206}
!117 = !{i64 209}
!118 = !{i64 213}
!119 = !{i64 217}
!120 = !{i64 221}
!121 = !{i64 225}
!122 = !{i64 229}
!123 = !{i64 232}
!124 = !{i64 236}
!125 = !{i64 239}
!126 = !{i64 243}
!127 = !{i64 247}
!128 = !{i64 248}
!129 = !{i64 250}
!130 = !{i64 251}
