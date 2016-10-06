; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_100(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 128
  %_RBP_ptr_ = alloca i8*, i64 128
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -120
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
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 12, i64* %RDI_val, !mcsema_real_eip !5
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
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %99 = add i64 %98, -16, !mcsema_real_eip !7
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !7
  %101 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 10, i32* %101, !mcsema_real_eip !7
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %103 = add i64 %102, -12, !mcsema_real_eip !8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !8
  %105 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 10, i32* %105, !mcsema_real_eip !8
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -8
  %107 = add i64 %106, -8, !mcsema_real_eip !9
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !9
  %109 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 10, i32* %109, !mcsema_real_eip !9
  %110 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  %111 = tail call x86_64_sysvcc i64 @malloc(i64 %110), !mcsema_real_eip !10
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %113 = add i64 %112, -16, !mcsema_real_eip !11
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !11
  %115 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !11
  store i64 %115, i64* %RDI_val, !mcsema_real_eip !11
  store i64 1, i64* %R8_val, !mcsema_real_eip !12
  store i64 2, i64* %R9_val, !mcsema_real_eip !13
  store i64 3, i64* %RCX_val, !mcsema_real_eip !14
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %117 = add i64 %116, -24, !mcsema_real_eip !15
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !15
  %119 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  store i64 %119, i64* %_allin_new_bt_19, !mcsema_real_eip !15
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %121 = add i64 %120, -24, !mcsema_real_eip !16
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !16
  %123 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !16
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !17
  %125 = bitcast i64* %124 to i32*
  store i32 5, i32* %125, !mcsema_real_eip !17
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %127 = add i64 %126, -24, !mcsema_real_eip !18
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !18
  %129 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !18
  store i64 %129, i64* %RAX_val, !mcsema_real_eip !18
  %130 = add i64 %129, 4, !mcsema_real_eip !19
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !19
  %132 = bitcast i64* %131 to i32*
  store i32 5, i32* %132, !mcsema_real_eip !19
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %134 = add i64 %133, -24, !mcsema_real_eip !20
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !20
  %136 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !20
  store i64 %136, i64* %RAX_val, !mcsema_real_eip !20
  %137 = add i64 %136, 8, !mcsema_real_eip !21
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !21
  %139 = bitcast i64* %138 to i32*
  store i32 5, i32* %139, !mcsema_real_eip !21
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -24
  %141 = add i64 %140, -24, !mcsema_real_eip !22
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !22
  %143 = load i64, i64* %_allin_new_bt_31, !mcsema_real_eip !22
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !22
  %144 = load i64, i64* %_allin_new_bt_31, !mcsema_real_eip !23
  store i64 %144, i64* %RDX_val, !mcsema_real_eip !23
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -16
  %146 = add i64 %145, -16, !mcsema_real_eip !24
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !24
  %148 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !24
  store i64 %148, i64* %RSI_val, !mcsema_real_eip !24
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -48
  %149 = add i64 %145, -48, !mcsema_real_eip !25
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !25
  store i64 %148, i64* %_allin_new_bt_36, !mcsema_real_eip !25
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -8
  %152 = add i64 %151, -8, !mcsema_real_eip !26
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !26
  %154 = bitcast i64* %_allin_new_bt_39 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !26
  %156 = zext i32 %155 to i64, !mcsema_real_eip !26
  store i64 %156, i64* %R10_val, !mcsema_real_eip !26
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -40
  %158 = add i64 %157, -40, !mcsema_real_eip !27
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !27
  %160 = bitcast i64* %_allin_new_bt_42 to i32*
  store i32 %155, i32* %160, !mcsema_real_eip !27
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %162 = add i64 %161, -48, !mcsema_real_eip !28
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !28
  %164 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !28
  store i64 %164, i64* %RSI_val, !mcsema_real_eip !28
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -40
  %165 = add i64 %161, -40, !mcsema_real_eip !29
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !29
  %167 = bitcast i64* %_allin_new_bt_47 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !29
  %169 = zext i32 %168 to i64, !mcsema_real_eip !29
  store i64 %169, i64* %R10_val, !mcsema_real_eip !29
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %170 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -56
  %171 = add i64 %170, -56, !mcsema_real_eip !30
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !30
  %173 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %173, i64* %_allin_new_bt_50, !mcsema_real_eip !30
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %174, i64* %RDI_val, !mcsema_real_eip !31
  %175 = load i64, i64* %R10_val, !mcsema_real_eip !32
  %176 = and i64 %175, 4294967295
  store i64 %176, i64* %RSI_val, !mcsema_real_eip !32
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -56
  %178 = add i64 %177, -56, !mcsema_real_eip !33
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !33
  %180 = load i64, i64* %_allin_new_bt_53, !mcsema_real_eip !33
  store i64 %180, i64* %R11_val, !mcsema_real_eip !33
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -64
  %181 = add i64 %177, -64, !mcsema_real_eip !34
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !34
  %183 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  store i64 %183, i64* %_allin_new_bt_55, !mcsema_real_eip !34
  %184 = load i64, i64* %R11_val, !mcsema_real_eip !35
  store i64 %184, i64* %RDX_val, !mcsema_real_eip !35
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -68
  %186 = add i64 %185, -68, !mcsema_real_eip !36
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !36
  %188 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !36
  %190 = bitcast i64* %_allin_new_bt_58 to i32*
  store i32 %189, i32* %190, !mcsema_real_eip !36
  %191 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %191, i64* %RCX_val, !mcsema_real_eip !37
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %192 = load i64, i64* %RSP_val, !mcsema_real_eip !38
  %_allin_new_bt_60 = bitcast i8* %_load_rsp_ptr_59 to i64*
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !38
  %194 = bitcast i64* %_allin_new_bt_60 to i32*
  store i32 3, i32* %194, !mcsema_real_eip !38
  %195 = load i64, i64* %R11_val, !mcsema_real_eip !39
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !39
  %197 = load i64, i64* %196, !mcsema_real_eip !39
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !39
  %_load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_
  %198 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %_new_gep_62 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 8
  %199 = add i64 %198, 8, !mcsema_real_eip !40
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !40
  store i64 %197, i64* %_allin_new_bt_63, !mcsema_real_eip !40
  %201 = load i64, i64* %R11_val, !mcsema_real_eip !41
  %202 = add i64 %201, 8, !mcsema_real_eip !41
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !41
  %204 = bitcast i64* %203 to i32*
  %205 = load i32, i32* %204, !mcsema_real_eip !41
  %206 = zext i32 %205 to i64, !mcsema_real_eip !41
  store i64 %206, i64* %R10_val, !mcsema_real_eip !41
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %207 = load i64, i64* %RSP_val, !mcsema_real_eip !42
  %_new_gep_65 = getelementptr i8, i8* %_load_rsp_ptr_64, i64 16
  %208 = add i64 %207, 16, !mcsema_real_eip !42
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !42
  %210 = bitcast i64* %_allin_new_bt_66 to i32*
  store i32 %205, i32* %210, !mcsema_real_eip !42
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %211 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 24
  %212 = add i64 %211, 24, !mcsema_real_eip !43
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !43
  %214 = load i64, i64* %R11_val, !mcsema_real_eip !43
  store i64 %214, i64* %_allin_new_bt_69, !mcsema_real_eip !43
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -64
  %216 = add i64 %215, -64, !mcsema_real_eip !44
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !44
  %218 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !44
  store i64 %218, i64* %RAX_val, !mcsema_real_eip !44
  %_load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_
  %219 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_73, i64 32
  %220 = add i64 %219, 32, !mcsema_real_eip !45
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !45
  store i64 %218, i64* %_allin_new_bt_75, !mcsema_real_eip !45
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %222 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 -8
  %223 = add i64 %222, -8
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !46
  store i64 -4981261766360305936, i64* %_allin_new_bt_78, !mcsema_real_eip !46
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
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
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %231 = load i64, i64* %RSP_val, !mcsema_real_eip !46
  %_new_ptr2int_80 = ptrtoint i8* %_load_rsp_ptr_79 to i64
  store volatile i64 %_new_ptr2int_80, i64* %RSP
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_ptr2int_82 = ptrtoint i8* %_load_rbp_ptr_81 to i64
  store volatile i64 %_new_ptr2int_82, i64* %RBP
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
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_104)
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
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -32
  %366 = add i64 %365, -32, !mcsema_real_eip !47
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !47
  %368 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %368, i64* %_allin_new_bt_85, !mcsema_real_eip !47
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -32
  %370 = add i64 %369, -32, !mcsema_real_eip !48
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !48
  %372 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !48
  store i64 %372, i64* %RAX_val, !mcsema_real_eip !48
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !49
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !49
  %376 = zext i32 %375 to i64, !mcsema_real_eip !49
  store i64 %376, i64* %RSI_val, !mcsema_real_eip !49
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -32
  %378 = add i64 %377, -32, !mcsema_real_eip !50
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !50
  %380 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !50
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
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %404 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -32
  %405 = add i64 %404, -32, !mcsema_real_eip !52
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !52
  %407 = load i64, i64* %_allin_new_bt_94, !mcsema_real_eip !52
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
  %_load_rsp_ptr_95 = load i8*, i8** %_RSP_ptr_
  %416 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %_new_gep_96 = getelementptr i8, i8* %_load_rsp_ptr_95, i64 112
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
  %_new_ptr2int_97 = ptrtoint i8* %_new_gep_96 to i1
  store volatile i1 %_new_ptr2int_97, i1* %CF_val
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_
  store i64 %417, i64* %RSP_val, !mcsema_real_eip !55
  %_allin_new_bt_98 = bitcast i8* %_new_gep_96 to i64*
  %431 = inttoptr i64 %417 to i64*, !mcsema_real_eip !56
  %432 = load i64, i64* %_allin_new_bt_98, !mcsema_real_eip !56
  %_new_int2ptr_ = inttoptr i64 %432 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %432, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_99 = getelementptr i8, i8* %_new_gep_96, i64 16
  %433 = add i64 %417, 16, !mcsema_real_eip !57
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_
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
  %_load_rsp_ptr_100 = load i8*, i8** %_RSP_ptr_
  %440 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %_new_ptr2int_101 = ptrtoint i8* %_load_rsp_ptr_100 to i64
  store volatile i64 %_new_ptr2int_101, i64* %RSP
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %441 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_ptr2int_103 = ptrtoint i8* %_load_rbp_ptr_102 to i64
  store volatile i64 %_new_ptr2int_103, i64* %RBP
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
  %_RSP_ptr_ = alloca i8*, i64 136
  %_RBP_ptr_ = alloca i8*, i64 136
  %_local_stack_start_ptr_ = alloca i8, i64 136
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 136
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %79 = add i64 %78, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !58
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !59
  %81 = load i64, i64* %R15_val, !mcsema_real_eip !60
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %82 = add i64 %78, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !60
  store i64 %81, i64* %_allin_new_bt_2, !mcsema_real_eip !60
  %84 = load i64, i64* %R14_val, !mcsema_real_eip !61
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %85 = add i64 %78, -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !61
  store i64 %84, i64* %_allin_new_bt_4, !mcsema_real_eip !61
  %87 = load i64, i64* %RBX_val, !mcsema_real_eip !62
  %_new_gep_5 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -32
  %88 = add i64 %78, -32
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !62
  store i64 %87, i64* %_allin_new_bt_6, !mcsema_real_eip !62
  %_new_gep_7 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -136
  %90 = add i64 %78, -136
  %91 = xor i64 %90, %88, !mcsema_real_eip !63
  %92 = and i64 %91, 16, !mcsema_real_eip !63
  %93 = icmp ne i64 %92, 0, !mcsema_real_eip !63
  store i1 %93, i1* %AF_val, !mcsema_real_eip !63
  %94 = trunc i64 %90 to i8, !mcsema_real_eip !63
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !63
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF_val, !mcsema_real_eip !63
  %98 = icmp eq i64 %90, 0, !mcsema_real_eip !63
  store i1 %98, i1* %ZF_val, !mcsema_real_eip !63
  %99 = icmp slt i64 %90, 0
  store i1 %99, i1* %SF_val, !mcsema_real_eip !63
  %100 = icmp ult i64 %88, 104, !mcsema_real_eip !63
  store i1 %100, i1* %CF_val, !mcsema_real_eip !63
  %101 = and i64 %91, %88, !mcsema_real_eip !63
  %102 = icmp slt i64 %101, 0
  store i1 %102, i1* %OF_val, !mcsema_real_eip !63
  store volatile i8* %_new_gep_7, i8** %_RSP_ptr_
  store i64 %90, i64* %RSP_val, !mcsema_real_eip !63
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %103 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 48
  %104 = add i64 %103, 48, !mcsema_real_eip !64
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !64
  %106 = load i64, i64* %_allin_new_bt_10, !mcsema_real_eip !64
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !64
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 40
  %107 = add i64 %103, 40, !mcsema_real_eip !65
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !65
  %109 = load i64, i64* %_allin_new_bt_12, !mcsema_real_eip !65
  store i64 %109, i64* %R10_val, !mcsema_real_eip !65
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 24
  %111 = add i64 %110, 24, !mcsema_real_eip !66
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !66
  %113 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !66
  store i64 %113, i64* %R11_val, !mcsema_real_eip !66
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 16
  %114 = add i64 %110, 16, !mcsema_real_eip !67
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !67
  %116 = bitcast i64* %_allin_new_bt_17 to i32*
  %117 = load i32, i32* %116, !mcsema_real_eip !67
  %118 = zext i32 %117 to i64, !mcsema_real_eip !67
  store i64 %118, i64* %RBX_val, !mcsema_real_eip !67
  store i64 12, i64* %R14_val, !mcsema_real_eip !68
  store i64 12, i64* %R15_val, !mcsema_real_eip !69
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -56
  %120 = add i64 %119, -56, !mcsema_real_eip !70
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !70
  %122 = load i64, i64* %RDI_val, !mcsema_real_eip !70
  store i64 %122, i64* %_allin_new_bt_20, !mcsema_real_eip !70
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -48
  %124 = add i64 %123, -48, !mcsema_real_eip !71
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !71
  %126 = load i64, i64* %RSI_val, !mcsema_real_eip !71
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !71
  %128 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !71
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -56
  %130 = add i64 %129, -56, !mcsema_real_eip !72
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !72
  %132 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !72
  store i64 %132, i64* %RDI_val, !mcsema_real_eip !72
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -40
  %133 = add i64 %129, -40, !mcsema_real_eip !73
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !73
  store i64 %132, i64* %_allin_new_bt_28, !mcsema_real_eip !73
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -48
  %136 = add i64 %135, -48, !mcsema_real_eip !74
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !74
  %138 = bitcast i64* %_allin_new_bt_31 to i32*
  %139 = load i32, i32* %138, !mcsema_real_eip !74
  %140 = zext i32 %139 to i64, !mcsema_real_eip !74
  store i64 %140, i64* %RSI_val, !mcsema_real_eip !74
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -32
  %142 = add i64 %141, -32, !mcsema_real_eip !75
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !75
  %144 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %139, i32* %144, !mcsema_real_eip !75
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -64
  %146 = add i64 %145, -64, !mcsema_real_eip !76
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !76
  %148 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  store i64 %148, i64* %_allin_new_bt_37, !mcsema_real_eip !76
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -72
  %150 = add i64 %149, -72, !mcsema_real_eip !77
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !77
  %152 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  store i64 %152, i64* %_allin_new_bt_40, !mcsema_real_eip !77
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -76
  %154 = add i64 %153, -76, !mcsema_real_eip !78
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !78
  %156 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %157 = trunc i64 %156 to i32, !mcsema_real_eip !78
  %158 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %157, i32* %158, !mcsema_real_eip !78
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -80
  %160 = add i64 %159, -80, !mcsema_real_eip !79
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !79
  %162 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !79
  %164 = bitcast i64* %_allin_new_bt_46 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !79
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -84
  %166 = add i64 %165, -84, !mcsema_real_eip !80
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !80
  %168 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %169 = trunc i64 %168 to i32, !mcsema_real_eip !80
  %170 = bitcast i64* %_allin_new_bt_49 to i32*
  store i32 %169, i32* %170, !mcsema_real_eip !80
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -96
  %172 = add i64 %171, -96, !mcsema_real_eip !81
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !81
  %174 = load i64, i64* %R10_val, !mcsema_real_eip !81
  store i64 %174, i64* %_allin_new_bt_52, !mcsema_real_eip !81
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -104
  %176 = add i64 %175, -104, !mcsema_real_eip !82
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !82
  %178 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  store i64 %178, i64* %_allin_new_bt_55, !mcsema_real_eip !82
  %179 = load i64, i64* %R15_val, !mcsema_real_eip !83
  store i64 %179, i64* %RDI_val, !mcsema_real_eip !83
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -120
  %181 = add i64 %180, -120, !mcsema_real_eip !84
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !84
  %183 = load i64, i64* %R11_val, !mcsema_real_eip !84
  store i64 %183, i64* %_allin_new_bt_58, !mcsema_real_eip !84
  %184 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  %185 = tail call x86_64_sysvcc i64 @malloc(i64 %184), !mcsema_real_eip !85
  store i64 %185, i64* %RAX_val, !mcsema_real_eip !85
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -112
  %187 = add i64 %186, -112, !mcsema_real_eip !86
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !86
  store i64 %185, i64* %_allin_new_bt_61, !mcsema_real_eip !86
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -40
  %190 = add i64 %189, -40, !mcsema_real_eip !87
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !87
  %192 = bitcast i64* %_allin_new_bt_64 to i32*
  %193 = load i32, i32* %192, !mcsema_real_eip !87
  %194 = zext i32 %193 to i64, !mcsema_real_eip !87
  store i64 %194, i64* %RSI_val, !mcsema_real_eip !87
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -64
  %196 = add i64 %195, -64, !mcsema_real_eip !88
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !88
  %198 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !88
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !88
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !89
  %200 = bitcast i64* %199 to i32*
  %201 = load i32, i32* %200, !mcsema_real_eip !89
  %202 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %203 = trunc i64 %202 to i32, !mcsema_real_eip !89
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %201)
  %204 = extractvalue { i32, i1 } %uadd, 0
  %205 = xor i32 %204, %201, !mcsema_real_eip !89
  %206 = xor i32 %205, %203, !mcsema_real_eip !89
  %207 = and i32 %206, 16, !mcsema_real_eip !89
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !89
  store i1 %208, i1* %AF_val, !mcsema_real_eip !89
  %209 = icmp slt i32 %204, 0
  store i1 %209, i1* %SF_val, !mcsema_real_eip !89
  %210 = icmp eq i32 %204, 0, !mcsema_real_eip !89
  store i1 %210, i1* %ZF_val, !mcsema_real_eip !89
  %211 = xor i32 %201, -2147483648, !mcsema_real_eip !89
  %212 = xor i32 %211, %203, !mcsema_real_eip !89
  %213 = and i32 %205, %212, !mcsema_real_eip !89
  %214 = icmp slt i32 %213, 0
  store i1 %214, i1* %OF_val, !mcsema_real_eip !89
  %215 = trunc i32 %204 to i8, !mcsema_real_eip !89
  %216 = tail call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !89
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  store i1 %218, i1* %PF_val, !mcsema_real_eip !89
  %219 = extractvalue { i32, i1 } %uadd, 1
  store i1 %219, i1* %CF_val, !mcsema_real_eip !89
  %220 = zext i32 %204 to i64, !mcsema_real_eip !89
  store i64 %220, i64* %RSI_val, !mcsema_real_eip !89
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -72
  %222 = add i64 %221, -72, !mcsema_real_eip !90
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !90
  %224 = load i64, i64* %_allin_new_bt_70, !mcsema_real_eip !90
  store i64 %224, i64* %RAX_val, !mcsema_real_eip !90
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !91
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !91
  %228 = load i64, i64* %RSI_val, !mcsema_real_eip !91
  %229 = trunc i64 %228 to i32, !mcsema_real_eip !91
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %227)
  %230 = extractvalue { i32, i1 } %uadd70, 0
  %231 = xor i32 %230, %227, !mcsema_real_eip !91
  %232 = xor i32 %231, %229, !mcsema_real_eip !91
  %233 = and i32 %232, 16, !mcsema_real_eip !91
  %234 = icmp ne i32 %233, 0, !mcsema_real_eip !91
  store i1 %234, i1* %AF_val, !mcsema_real_eip !91
  %235 = icmp slt i32 %230, 0
  store i1 %235, i1* %SF_val, !mcsema_real_eip !91
  %236 = icmp eq i32 %230, 0, !mcsema_real_eip !91
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !91
  %237 = xor i32 %227, -2147483648, !mcsema_real_eip !91
  %238 = xor i32 %237, %229, !mcsema_real_eip !91
  %239 = and i32 %231, %238, !mcsema_real_eip !91
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF_val, !mcsema_real_eip !91
  %241 = trunc i32 %230 to i8, !mcsema_real_eip !91
  %242 = tail call i8 @llvm.ctpop.i8(i8 %241), !mcsema_real_eip !91
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  store i1 %244, i1* %PF_val, !mcsema_real_eip !91
  %245 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %245, i1* %CF_val, !mcsema_real_eip !91
  %246 = zext i32 %230 to i64, !mcsema_real_eip !91
  store i64 %246, i64* %RSI_val, !mcsema_real_eip !91
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -120
  %248 = add i64 %247, -120, !mcsema_real_eip !92
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !92
  %250 = load i64, i64* %_allin_new_bt_73, !mcsema_real_eip !92
  store i64 %250, i64* %RAX_val, !mcsema_real_eip !92
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !93
  %252 = bitcast i64* %251 to i32*
  %253 = load i32, i32* %252, !mcsema_real_eip !93
  %254 = zext i32 %253 to i64, !mcsema_real_eip !93
  store i64 %254, i64* %R8_val, !mcsema_real_eip !93
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %255 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -96
  %256 = add i64 %255, -96, !mcsema_real_eip !94
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !94
  %258 = load i64, i64* %_allin_new_bt_76, !mcsema_real_eip !94
  store i64 %258, i64* %RCX_val, !mcsema_real_eip !94
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !95
  %260 = bitcast i64* %259 to i32*
  %261 = load i32, i32* %260, !mcsema_real_eip !95
  %262 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %263 = trunc i64 %262 to i32, !mcsema_real_eip !95
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 %261)
  %264 = extractvalue { i32, i1 } %uadd71, 0
  %265 = xor i32 %264, %261, !mcsema_real_eip !95
  %266 = xor i32 %265, %263, !mcsema_real_eip !95
  %267 = and i32 %266, 16, !mcsema_real_eip !95
  %268 = icmp ne i32 %267, 0, !mcsema_real_eip !95
  store i1 %268, i1* %AF_val, !mcsema_real_eip !95
  %269 = icmp slt i32 %264, 0
  store i1 %269, i1* %SF_val, !mcsema_real_eip !95
  %270 = icmp eq i32 %264, 0, !mcsema_real_eip !95
  store i1 %270, i1* %ZF_val, !mcsema_real_eip !95
  %271 = xor i32 %261, -2147483648, !mcsema_real_eip !95
  %272 = xor i32 %271, %263, !mcsema_real_eip !95
  %273 = and i32 %265, %272, !mcsema_real_eip !95
  %274 = icmp slt i32 %273, 0
  store i1 %274, i1* %OF_val, !mcsema_real_eip !95
  %275 = trunc i32 %264 to i8, !mcsema_real_eip !95
  %276 = tail call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !95
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  store i1 %278, i1* %PF_val, !mcsema_real_eip !95
  %279 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %279, i1* %CF_val, !mcsema_real_eip !95
  %280 = zext i32 %264 to i64, !mcsema_real_eip !95
  store i64 %280, i64* %R8_val, !mcsema_real_eip !95
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -104
  %282 = add i64 %281, -104, !mcsema_real_eip !96
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !96
  %284 = load i64, i64* %_allin_new_bt_79, !mcsema_real_eip !96
  store i64 %284, i64* %RCX_val, !mcsema_real_eip !96
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !97
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !97
  %288 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %289 = trunc i64 %288 to i32, !mcsema_real_eip !97
  %290 = add i32 %289, %287
  %291 = zext i32 %290 to i64, !mcsema_real_eip !97
  store i64 %291, i64* %R8_val, !mcsema_real_eip !97
  %292 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %293 = trunc i64 %292 to i32, !mcsema_real_eip !98
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %290, i32 %293)
  %294 = extractvalue { i32, i1 } %uadd73, 0
  %295 = xor i32 %294, %293, !mcsema_real_eip !98
  %296 = xor i32 %295, %290, !mcsema_real_eip !98
  %297 = and i32 %296, 16, !mcsema_real_eip !98
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !98
  store i1 %298, i1* %AF_val, !mcsema_real_eip !98
  %299 = icmp slt i32 %294, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !98
  %300 = icmp eq i32 %294, 0, !mcsema_real_eip !98
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !98
  %301 = xor i32 %290, -2147483648, !mcsema_real_eip !98
  %302 = xor i32 %301, %293, !mcsema_real_eip !98
  %303 = and i32 %295, %302, !mcsema_real_eip !98
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !98
  %305 = trunc i32 %294 to i8, !mcsema_real_eip !98
  %306 = tail call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !98
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF_val, !mcsema_real_eip !98
  %309 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %309, i1* %CF_val, !mcsema_real_eip !98
  %310 = zext i32 %294 to i64, !mcsema_real_eip !98
  store i64 %310, i64* %RSI_val, !mcsema_real_eip !98
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -112
  %312 = add i64 %311, -112, !mcsema_real_eip !99
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !99
  %314 = load i64, i64* %_allin_new_bt_82, !mcsema_real_eip !99
  store i64 %314, i64* %RCX_val, !mcsema_real_eip !99
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !100
  %316 = load i64, i64* %RSI_val, !mcsema_real_eip !100
  %317 = trunc i64 %316 to i32, !mcsema_real_eip !100
  %318 = bitcast i64* %315 to i32*
  store i32 %317, i32* %318, !mcsema_real_eip !100
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -36
  %320 = add i64 %319, -36, !mcsema_real_eip !101
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !101
  %322 = bitcast i64* %_allin_new_bt_85 to i32*
  %323 = load i32, i32* %322, !mcsema_real_eip !101
  %324 = zext i32 %323 to i64, !mcsema_real_eip !101
  store i64 %324, i64* %RSI_val, !mcsema_real_eip !101
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -64
  %326 = add i64 %325, -64, !mcsema_real_eip !102
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !102
  %328 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !102
  store i64 %328, i64* %RCX_val, !mcsema_real_eip !102
  %329 = add i64 %328, 4, !mcsema_real_eip !103
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !103
  %331 = bitcast i64* %330 to i32*
  %332 = load i32, i32* %331, !mcsema_real_eip !103
  %333 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %334 = trunc i64 %333 to i32, !mcsema_real_eip !103
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %334, i32 %332)
  %335 = extractvalue { i32, i1 } %uadd74, 0
  %336 = xor i32 %335, %332, !mcsema_real_eip !103
  %337 = xor i32 %336, %334, !mcsema_real_eip !103
  %338 = and i32 %337, 16, !mcsema_real_eip !103
  %339 = icmp ne i32 %338, 0, !mcsema_real_eip !103
  store i1 %339, i1* %AF_val, !mcsema_real_eip !103
  %340 = icmp slt i32 %335, 0
  store i1 %340, i1* %SF_val, !mcsema_real_eip !103
  %341 = icmp eq i32 %335, 0, !mcsema_real_eip !103
  store i1 %341, i1* %ZF_val, !mcsema_real_eip !103
  %342 = xor i32 %332, -2147483648, !mcsema_real_eip !103
  %343 = xor i32 %342, %334, !mcsema_real_eip !103
  %344 = and i32 %336, %343, !mcsema_real_eip !103
  %345 = icmp slt i32 %344, 0
  store i1 %345, i1* %OF_val, !mcsema_real_eip !103
  %346 = trunc i32 %335 to i8, !mcsema_real_eip !103
  %347 = tail call i8 @llvm.ctpop.i8(i8 %346), !mcsema_real_eip !103
  %348 = and i8 %347, 1
  %349 = icmp eq i8 %348, 0
  store i1 %349, i1* %PF_val, !mcsema_real_eip !103
  %350 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %350, i1* %CF_val, !mcsema_real_eip !103
  %351 = zext i32 %335 to i64, !mcsema_real_eip !103
  store i64 %351, i64* %RSI_val, !mcsema_real_eip !103
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -72
  %353 = add i64 %352, -72, !mcsema_real_eip !104
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !104
  %355 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !104
  store i64 %355, i64* %RCX_val, !mcsema_real_eip !104
  %356 = add i64 %355, 4, !mcsema_real_eip !105
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !105
  %358 = bitcast i64* %357 to i32*
  %359 = load i32, i32* %358, !mcsema_real_eip !105
  %360 = load i64, i64* %RSI_val, !mcsema_real_eip !105
  %361 = trunc i64 %360 to i32, !mcsema_real_eip !105
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %361, i32 %359)
  %362 = extractvalue { i32, i1 } %uadd75, 0
  %363 = xor i32 %362, %359, !mcsema_real_eip !105
  %364 = xor i32 %363, %361, !mcsema_real_eip !105
  %365 = and i32 %364, 16, !mcsema_real_eip !105
  %366 = icmp ne i32 %365, 0, !mcsema_real_eip !105
  store i1 %366, i1* %AF_val, !mcsema_real_eip !105
  %367 = icmp slt i32 %362, 0
  store i1 %367, i1* %SF_val, !mcsema_real_eip !105
  %368 = icmp eq i32 %362, 0, !mcsema_real_eip !105
  store i1 %368, i1* %ZF_val, !mcsema_real_eip !105
  %369 = xor i32 %359, -2147483648, !mcsema_real_eip !105
  %370 = xor i32 %369, %361, !mcsema_real_eip !105
  %371 = and i32 %363, %370, !mcsema_real_eip !105
  %372 = icmp slt i32 %371, 0
  store i1 %372, i1* %OF_val, !mcsema_real_eip !105
  %373 = trunc i32 %362 to i8, !mcsema_real_eip !105
  %374 = tail call i8 @llvm.ctpop.i8(i8 %373), !mcsema_real_eip !105
  %375 = and i8 %374, 1
  %376 = icmp eq i8 %375, 0
  store i1 %376, i1* %PF_val, !mcsema_real_eip !105
  %377 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %377, i1* %CF_val, !mcsema_real_eip !105
  %378 = zext i32 %362 to i64, !mcsema_real_eip !105
  store i64 %378, i64* %RSI_val, !mcsema_real_eip !105
  %379 = load i64, i64* %RAX_val, !mcsema_real_eip !106
  %380 = add i64 %379, 4, !mcsema_real_eip !106
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !106
  %382 = bitcast i64* %381 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !106
  %384 = zext i32 %383 to i64, !mcsema_real_eip !106
  store i64 %384, i64* %R8_val, !mcsema_real_eip !106
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %385 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -96
  %386 = add i64 %385, -96, !mcsema_real_eip !107
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !107
  %388 = load i64, i64* %_allin_new_bt_94, !mcsema_real_eip !107
  store i64 %388, i64* %RCX_val, !mcsema_real_eip !107
  %389 = add i64 %388, 4, !mcsema_real_eip !108
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !108
  %391 = bitcast i64* %390 to i32*
  %392 = load i32, i32* %391, !mcsema_real_eip !108
  %393 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %394 = trunc i64 %393 to i32, !mcsema_real_eip !108
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %392)
  %395 = extractvalue { i32, i1 } %uadd76, 0
  %396 = xor i32 %395, %392, !mcsema_real_eip !108
  %397 = xor i32 %396, %394, !mcsema_real_eip !108
  %398 = and i32 %397, 16, !mcsema_real_eip !108
  %399 = icmp ne i32 %398, 0, !mcsema_real_eip !108
  store i1 %399, i1* %AF_val, !mcsema_real_eip !108
  %400 = icmp slt i32 %395, 0
  store i1 %400, i1* %SF_val, !mcsema_real_eip !108
  %401 = icmp eq i32 %395, 0, !mcsema_real_eip !108
  store i1 %401, i1* %ZF_val, !mcsema_real_eip !108
  %402 = xor i32 %392, -2147483648, !mcsema_real_eip !108
  %403 = xor i32 %402, %394, !mcsema_real_eip !108
  %404 = and i32 %396, %403, !mcsema_real_eip !108
  %405 = icmp slt i32 %404, 0
  store i1 %405, i1* %OF_val, !mcsema_real_eip !108
  %406 = trunc i32 %395 to i8, !mcsema_real_eip !108
  %407 = tail call i8 @llvm.ctpop.i8(i8 %406), !mcsema_real_eip !108
  %408 = and i8 %407, 1
  %409 = icmp eq i8 %408, 0
  store i1 %409, i1* %PF_val, !mcsema_real_eip !108
  %410 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %410, i1* %CF_val, !mcsema_real_eip !108
  %411 = zext i32 %395 to i64, !mcsema_real_eip !108
  store i64 %411, i64* %R8_val, !mcsema_real_eip !108
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -104
  %413 = add i64 %412, -104, !mcsema_real_eip !109
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !109
  %415 = load i64, i64* %_allin_new_bt_97, !mcsema_real_eip !109
  store i64 %415, i64* %RCX_val, !mcsema_real_eip !109
  %416 = add i64 %415, 4, !mcsema_real_eip !110
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !110
  %418 = bitcast i64* %417 to i32*
  %419 = load i32, i32* %418, !mcsema_real_eip !110
  %420 = load i64, i64* %R8_val, !mcsema_real_eip !110
  %421 = trunc i64 %420 to i32, !mcsema_real_eip !110
  %422 = add i32 %421, %419
  %423 = zext i32 %422 to i64, !mcsema_real_eip !110
  store i64 %423, i64* %R8_val, !mcsema_real_eip !110
  %424 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %425 = trunc i64 %424 to i32, !mcsema_real_eip !111
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %422, i32 %425)
  %426 = extractvalue { i32, i1 } %uadd78, 0
  %427 = xor i32 %426, %425, !mcsema_real_eip !111
  %428 = xor i32 %427, %422, !mcsema_real_eip !111
  %429 = and i32 %428, 16, !mcsema_real_eip !111
  %430 = icmp ne i32 %429, 0, !mcsema_real_eip !111
  store i1 %430, i1* %AF_val, !mcsema_real_eip !111
  %431 = icmp slt i32 %426, 0
  store i1 %431, i1* %SF_val, !mcsema_real_eip !111
  %432 = icmp eq i32 %426, 0, !mcsema_real_eip !111
  store i1 %432, i1* %ZF_val, !mcsema_real_eip !111
  %433 = xor i32 %422, -2147483648, !mcsema_real_eip !111
  %434 = xor i32 %433, %425, !mcsema_real_eip !111
  %435 = and i32 %427, %434, !mcsema_real_eip !111
  %436 = icmp slt i32 %435, 0
  store i1 %436, i1* %OF_val, !mcsema_real_eip !111
  %437 = trunc i32 %426 to i8, !mcsema_real_eip !111
  %438 = tail call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !111
  %439 = and i8 %438, 1
  %440 = icmp eq i8 %439, 0
  store i1 %440, i1* %PF_val, !mcsema_real_eip !111
  %441 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %441, i1* %CF_val, !mcsema_real_eip !111
  %442 = zext i32 %426 to i64, !mcsema_real_eip !111
  store i64 %442, i64* %RSI_val, !mcsema_real_eip !111
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -112
  %444 = add i64 %443, -112, !mcsema_real_eip !112
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !112
  %446 = load i64, i64* %_allin_new_bt_100, !mcsema_real_eip !112
  store i64 %446, i64* %RCX_val, !mcsema_real_eip !112
  %447 = add i64 %446, 4, !mcsema_real_eip !113
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !113
  %449 = load i64, i64* %RSI_val, !mcsema_real_eip !113
  %450 = trunc i64 %449 to i32, !mcsema_real_eip !113
  %451 = bitcast i64* %448 to i32*
  store i32 %450, i32* %451, !mcsema_real_eip !113
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -32
  %453 = add i64 %452, -32, !mcsema_real_eip !114
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !114
  %455 = bitcast i64* %_allin_new_bt_103 to i32*
  %456 = load i32, i32* %455, !mcsema_real_eip !114
  %457 = zext i32 %456 to i64, !mcsema_real_eip !114
  store i64 %457, i64* %RSI_val, !mcsema_real_eip !114
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %458 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -64
  %459 = add i64 %458, -64, !mcsema_real_eip !115
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !115
  %461 = load i64, i64* %_allin_new_bt_106, !mcsema_real_eip !115
  store i64 %461, i64* %RCX_val, !mcsema_real_eip !115
  %462 = add i64 %461, 8, !mcsema_real_eip !116
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !116
  %464 = bitcast i64* %463 to i32*
  %465 = load i32, i32* %464, !mcsema_real_eip !116
  %466 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %467 = trunc i64 %466 to i32, !mcsema_real_eip !116
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 %465)
  %468 = extractvalue { i32, i1 } %uadd79, 0
  %469 = xor i32 %468, %465, !mcsema_real_eip !116
  %470 = xor i32 %469, %467, !mcsema_real_eip !116
  %471 = and i32 %470, 16, !mcsema_real_eip !116
  %472 = icmp ne i32 %471, 0, !mcsema_real_eip !116
  store i1 %472, i1* %AF_val, !mcsema_real_eip !116
  %473 = icmp slt i32 %468, 0
  store i1 %473, i1* %SF_val, !mcsema_real_eip !116
  %474 = icmp eq i32 %468, 0, !mcsema_real_eip !116
  store i1 %474, i1* %ZF_val, !mcsema_real_eip !116
  %475 = xor i32 %465, -2147483648, !mcsema_real_eip !116
  %476 = xor i32 %475, %467, !mcsema_real_eip !116
  %477 = and i32 %469, %476, !mcsema_real_eip !116
  %478 = icmp slt i32 %477, 0
  store i1 %478, i1* %OF_val, !mcsema_real_eip !116
  %479 = trunc i32 %468 to i8, !mcsema_real_eip !116
  %480 = tail call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !116
  %481 = and i8 %480, 1
  %482 = icmp eq i8 %481, 0
  store i1 %482, i1* %PF_val, !mcsema_real_eip !116
  %483 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %483, i1* %CF_val, !mcsema_real_eip !116
  %484 = zext i32 %468 to i64, !mcsema_real_eip !116
  store i64 %484, i64* %RSI_val, !mcsema_real_eip !116
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %485 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -72
  %486 = add i64 %485, -72, !mcsema_real_eip !117
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %487 = inttoptr i64 %486 to i64*, !mcsema_real_eip !117
  %488 = load i64, i64* %_allin_new_bt_109, !mcsema_real_eip !117
  store i64 %488, i64* %RCX_val, !mcsema_real_eip !117
  %489 = add i64 %488, 8, !mcsema_real_eip !118
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !118
  %491 = bitcast i64* %490 to i32*
  %492 = load i32, i32* %491, !mcsema_real_eip !118
  %493 = load i64, i64* %RSI_val, !mcsema_real_eip !118
  %494 = trunc i64 %493 to i32, !mcsema_real_eip !118
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %492)
  %495 = extractvalue { i32, i1 } %uadd80, 0
  %496 = xor i32 %495, %492, !mcsema_real_eip !118
  %497 = xor i32 %496, %494, !mcsema_real_eip !118
  %498 = and i32 %497, 16, !mcsema_real_eip !118
  %499 = icmp ne i32 %498, 0, !mcsema_real_eip !118
  store i1 %499, i1* %AF_val, !mcsema_real_eip !118
  %500 = icmp slt i32 %495, 0
  store i1 %500, i1* %SF_val, !mcsema_real_eip !118
  %501 = icmp eq i32 %495, 0, !mcsema_real_eip !118
  store i1 %501, i1* %ZF_val, !mcsema_real_eip !118
  %502 = xor i32 %492, -2147483648, !mcsema_real_eip !118
  %503 = xor i32 %502, %494, !mcsema_real_eip !118
  %504 = and i32 %496, %503, !mcsema_real_eip !118
  %505 = icmp slt i32 %504, 0
  store i1 %505, i1* %OF_val, !mcsema_real_eip !118
  %506 = trunc i32 %495 to i8, !mcsema_real_eip !118
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !118
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  store i1 %509, i1* %PF_val, !mcsema_real_eip !118
  %510 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %510, i1* %CF_val, !mcsema_real_eip !118
  %511 = zext i32 %495 to i64, !mcsema_real_eip !118
  store i64 %511, i64* %RSI_val, !mcsema_real_eip !118
  %512 = load i64, i64* %RAX_val, !mcsema_real_eip !119
  %513 = add i64 %512, 8, !mcsema_real_eip !119
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !119
  %515 = bitcast i64* %514 to i32*
  %516 = load i32, i32* %515, !mcsema_real_eip !119
  %517 = zext i32 %516 to i64, !mcsema_real_eip !119
  store i64 %517, i64* %R8_val, !mcsema_real_eip !119
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %518 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -96
  %519 = add i64 %518, -96, !mcsema_real_eip !120
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !120
  %521 = load i64, i64* %_allin_new_bt_112, !mcsema_real_eip !120
  store i64 %521, i64* %RCX_val, !mcsema_real_eip !120
  %522 = add i64 %521, 8, !mcsema_real_eip !121
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !121
  %524 = bitcast i64* %523 to i32*
  %525 = load i32, i32* %524, !mcsema_real_eip !121
  %526 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %527 = trunc i64 %526 to i32, !mcsema_real_eip !121
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %527, i32 %525)
  %528 = extractvalue { i32, i1 } %uadd81, 0
  %529 = xor i32 %528, %525, !mcsema_real_eip !121
  %530 = xor i32 %529, %527, !mcsema_real_eip !121
  %531 = and i32 %530, 16, !mcsema_real_eip !121
  %532 = icmp ne i32 %531, 0, !mcsema_real_eip !121
  store i1 %532, i1* %AF_val, !mcsema_real_eip !121
  %533 = icmp slt i32 %528, 0
  store i1 %533, i1* %SF_val, !mcsema_real_eip !121
  %534 = icmp eq i32 %528, 0, !mcsema_real_eip !121
  store i1 %534, i1* %ZF_val, !mcsema_real_eip !121
  %535 = xor i32 %525, -2147483648, !mcsema_real_eip !121
  %536 = xor i32 %535, %527, !mcsema_real_eip !121
  %537 = and i32 %529, %536, !mcsema_real_eip !121
  %538 = icmp slt i32 %537, 0
  store i1 %538, i1* %OF_val, !mcsema_real_eip !121
  %539 = trunc i32 %528 to i8, !mcsema_real_eip !121
  %540 = tail call i8 @llvm.ctpop.i8(i8 %539), !mcsema_real_eip !121
  %541 = and i8 %540, 1
  %542 = icmp eq i8 %541, 0
  store i1 %542, i1* %PF_val, !mcsema_real_eip !121
  %543 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %543, i1* %CF_val, !mcsema_real_eip !121
  %544 = zext i32 %528 to i64, !mcsema_real_eip !121
  store i64 %544, i64* %R8_val, !mcsema_real_eip !121
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %545 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -104
  %546 = add i64 %545, -104, !mcsema_real_eip !122
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !122
  %548 = load i64, i64* %_allin_new_bt_115, !mcsema_real_eip !122
  store i64 %548, i64* %RCX_val, !mcsema_real_eip !122
  %549 = add i64 %548, 8, !mcsema_real_eip !123
  %550 = inttoptr i64 %549 to i64*, !mcsema_real_eip !123
  %551 = bitcast i64* %550 to i32*
  %552 = load i32, i32* %551, !mcsema_real_eip !123
  %553 = load i64, i64* %R8_val, !mcsema_real_eip !123
  %554 = trunc i64 %553 to i32, !mcsema_real_eip !123
  %555 = add i32 %554, %552
  %556 = zext i32 %555 to i64, !mcsema_real_eip !123
  store i64 %556, i64* %R8_val, !mcsema_real_eip !123
  %557 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %558 = trunc i64 %557 to i32, !mcsema_real_eip !124
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %555, i32 %558)
  %559 = extractvalue { i32, i1 } %uadd83, 0
  %560 = xor i32 %559, %558, !mcsema_real_eip !124
  %561 = xor i32 %560, %555, !mcsema_real_eip !124
  %562 = and i32 %561, 16, !mcsema_real_eip !124
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !124
  store i1 %563, i1* %AF_val, !mcsema_real_eip !124
  %564 = icmp slt i32 %559, 0
  store i1 %564, i1* %SF_val, !mcsema_real_eip !124
  %565 = icmp eq i32 %559, 0, !mcsema_real_eip !124
  store i1 %565, i1* %ZF_val, !mcsema_real_eip !124
  %566 = xor i32 %555, -2147483648, !mcsema_real_eip !124
  %567 = xor i32 %566, %558, !mcsema_real_eip !124
  %568 = and i32 %560, %567, !mcsema_real_eip !124
  %569 = icmp slt i32 %568, 0
  store i1 %569, i1* %OF_val, !mcsema_real_eip !124
  %570 = trunc i32 %559 to i8, !mcsema_real_eip !124
  %571 = tail call i8 @llvm.ctpop.i8(i8 %570), !mcsema_real_eip !124
  %572 = and i8 %571, 1
  %573 = icmp eq i8 %572, 0
  store i1 %573, i1* %PF_val, !mcsema_real_eip !124
  %574 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %574, i1* %CF_val, !mcsema_real_eip !124
  %575 = zext i32 %559 to i64, !mcsema_real_eip !124
  store i64 %575, i64* %RSI_val, !mcsema_real_eip !124
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %576 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -112
  %577 = add i64 %576, -112, !mcsema_real_eip !125
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !125
  %579 = load i64, i64* %_allin_new_bt_118, !mcsema_real_eip !125
  store i64 %579, i64* %RCX_val, !mcsema_real_eip !125
  %580 = add i64 %579, 8, !mcsema_real_eip !126
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !126
  %582 = load i64, i64* %RSI_val, !mcsema_real_eip !126
  %583 = trunc i64 %582 to i32, !mcsema_real_eip !126
  %584 = bitcast i64* %581 to i32*
  store i32 %583, i32* %584, !mcsema_real_eip !126
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %585 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -112
  %586 = add i64 %585, -112, !mcsema_real_eip !127
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !127
  %588 = load i64, i64* %_allin_new_bt_121, !mcsema_real_eip !127
  store i64 %588, i64* %RAX_val, !mcsema_real_eip !127
  %_load_rsp_ptr_122 = load i8*, i8** %_RSP_ptr_
  %589 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %_new_gep_123 = getelementptr i8, i8* %_load_rsp_ptr_122, i64 104
  %uadd84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %589, i64 104)
  %590 = extractvalue { i64, i1 } %uadd84, 0
  %591 = xor i64 %590, %589, !mcsema_real_eip !128
  %592 = and i64 %591, 16, !mcsema_real_eip !128
  %593 = icmp ne i64 %592, 0, !mcsema_real_eip !128
  store i1 %593, i1* %AF_val, !mcsema_real_eip !128
  %594 = icmp slt i64 %590, 0
  store i1 %594, i1* %SF_val, !mcsema_real_eip !128
  %595 = icmp eq i64 %590, 0, !mcsema_real_eip !128
  store i1 %595, i1* %ZF_val, !mcsema_real_eip !128
  %596 = xor i64 %589, -9223372036854775808, !mcsema_real_eip !128
  %597 = and i64 %591, %596, !mcsema_real_eip !128
  %598 = icmp slt i64 %597, 0
  store i1 %598, i1* %OF_val, !mcsema_real_eip !128
  %599 = trunc i64 %590 to i8, !mcsema_real_eip !128
  %600 = tail call i8 @llvm.ctpop.i8(i8 %599), !mcsema_real_eip !128
  %601 = and i8 %600, 1
  %602 = icmp eq i8 %601, 0
  store i1 %602, i1* %PF_val, !mcsema_real_eip !128
  %603 = extractvalue { i64, i1 } %uadd84, 1
  %_new_ptr2int_124 = ptrtoint i8* %_new_gep_123 to i1
  store volatile i1 %_new_ptr2int_124, i1* %CF_val
  store volatile i8* %_new_gep_123, i8** %_RSP_ptr_
  store i64 %590, i64* %RSP_val, !mcsema_real_eip !128
  %_allin_new_bt_125 = bitcast i8* %_new_gep_123 to i64*
  %604 = inttoptr i64 %590 to i64*, !mcsema_real_eip !129
  %605 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !129
  store i64 %605, i64* %RBX_val, !mcsema_real_eip !129
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_123, i64 8
  %606 = add i64 %590, 8, !mcsema_real_eip !129
  store volatile i8* %_new_gep_126, i8** %_RSP_ptr_
  store i64 %606, i64* %RSP_val, !mcsema_real_eip !129
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %607 = inttoptr i64 %606 to i64*, !mcsema_real_eip !130
  %608 = load i64, i64* %_allin_new_bt_127, !mcsema_real_eip !130
  store i64 %608, i64* %R14_val, !mcsema_real_eip !130
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_123, i64 16
  %609 = add i64 %590, 16, !mcsema_real_eip !130
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_
  store i64 %609, i64* %RSP_val, !mcsema_real_eip !130
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %610 = inttoptr i64 %609 to i64*, !mcsema_real_eip !131
  %611 = load i64, i64* %_allin_new_bt_129, !mcsema_real_eip !131
  store i64 %611, i64* %R15_val, !mcsema_real_eip !131
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_123, i64 24
  %612 = add i64 %590, 24, !mcsema_real_eip !131
  store volatile i8* %_new_gep_130, i8** %_RSP_ptr_
  store i64 %612, i64* %RSP_val, !mcsema_real_eip !131
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %613 = inttoptr i64 %612 to i64*, !mcsema_real_eip !132
  %614 = load i64, i64* %_allin_new_bt_131, !mcsema_real_eip !132
  %_new_int2ptr_ = inttoptr i64 %614 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %614, i64* %RBP_val, !mcsema_real_eip !132
  %_new_gep_132 = getelementptr i8, i8* %_new_gep_123, i64 40
  %615 = add i64 %590, 40, !mcsema_real_eip !133
  store volatile i8* %_new_gep_132, i8** %_RSP_ptr_
  store i64 %615, i64* %RSP_val, !mcsema_real_eip !133
  %616 = load i64, i64* %RAX_val, !mcsema_real_eip !133
  store i64 %616, i64* %RAX, !mcsema_real_eip !133
  %617 = load i64, i64* %RBX_val, !mcsema_real_eip !133
  store i64 %617, i64* %RBX, !mcsema_real_eip !133
  %618 = load i64, i64* %RCX_val, !mcsema_real_eip !133
  store i64 %618, i64* %RCX, !mcsema_real_eip !133
  %619 = load i64, i64* %RDX_val, !mcsema_real_eip !133
  store i64 %619, i64* %RDX, !mcsema_real_eip !133
  %620 = load i64, i64* %RSI_val, !mcsema_real_eip !133
  store i64 %620, i64* %RSI, !mcsema_real_eip !133
  %621 = load i64, i64* %RDI_val, !mcsema_real_eip !133
  store i64 %621, i64* %RDI, !mcsema_real_eip !133
  %_load_rsp_ptr_133 = load i8*, i8** %_RSP_ptr_
  %622 = load i64, i64* %RSP_val, !mcsema_real_eip !133
  %_new_ptr2int_134 = ptrtoint i8* %_load_rsp_ptr_133 to i64
  store volatile i64 %_new_ptr2int_134, i64* %RSP
  %_load_rbp_ptr_135 = load i8*, i8** %_RBP_ptr_
  %623 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  %_new_ptr2int_136 = ptrtoint i8* %_load_rbp_ptr_135 to i64
  store volatile i64 %_new_ptr2int_136, i64* %RBP
  %624 = load i64, i64* %R8_val, !mcsema_real_eip !133
  store i64 %624, i64* %R8, !mcsema_real_eip !133
  %625 = load i64, i64* %R9_val, !mcsema_real_eip !133
  store i64 %625, i64* %R9, !mcsema_real_eip !133
  %626 = load i64, i64* %R10_val, !mcsema_real_eip !133
  store i64 %626, i64* %R10, !mcsema_real_eip !133
  %627 = load i64, i64* %R11_val, !mcsema_real_eip !133
  store i64 %627, i64* %R11, !mcsema_real_eip !133
  %628 = load i64, i64* %R12_val, !mcsema_real_eip !133
  store i64 %628, i64* %R12, !mcsema_real_eip !133
  %629 = load i64, i64* %R13_val, !mcsema_real_eip !133
  store i64 %629, i64* %R13, !mcsema_real_eip !133
  %630 = load i64, i64* %R14_val, !mcsema_real_eip !133
  store i64 %630, i64* %R14, !mcsema_real_eip !133
  %631 = load i64, i64* %R15_val, !mcsema_real_eip !133
  store i64 %631, i64* %R15, !mcsema_real_eip !133
  %632 = load i64, i64* %RIP_val, !mcsema_real_eip !133
  store i64 %632, i64* %RIP, !mcsema_real_eip !133
  %633 = load i1, i1* %CF_val, !mcsema_real_eip !133
  store i1 %633, i1* %CF, align 1, !mcsema_real_eip !133
  %634 = load i1, i1* %PF_val, !mcsema_real_eip !133
  store i1 %634, i1* %PF, align 1, !mcsema_real_eip !133
  %635 = load i1, i1* %AF_val, !mcsema_real_eip !133
  store i1 %635, i1* %AF, align 1, !mcsema_real_eip !133
  %636 = load i1, i1* %ZF_val, !mcsema_real_eip !133
  store i1 %636, i1* %ZF, align 1, !mcsema_real_eip !133
  %637 = load i1, i1* %SF_val, !mcsema_real_eip !133
  store i1 %637, i1* %SF, align 1, !mcsema_real_eip !133
  %638 = load i1, i1* %OF_val, !mcsema_real_eip !133
  store i1 %638, i1* %OF, align 1, !mcsema_real_eip !133
  %639 = load i1, i1* %DF_val, !mcsema_real_eip !133
  store i1 %639, i1* %DF, align 1, !mcsema_real_eip !133
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !133
  %640 = load i1, i1* %FPU_B_val, !mcsema_real_eip !133
  store i1 %640, i1* %FPU_B, align 1, !mcsema_real_eip !133
  %641 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !133
  store i1 %641, i1* %FPU_C3, align 1, !mcsema_real_eip !133
  %642 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !133
  store i3 %642, i3* %FPU_TOP, align 1, !mcsema_real_eip !133
  %643 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !133
  store i1 %643, i1* %FPU_C2, align 1, !mcsema_real_eip !133
  %644 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !133
  store i1 %644, i1* %FPU_C1, align 1, !mcsema_real_eip !133
  %645 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !133
  store i1 %645, i1* %FPU_C0, align 1, !mcsema_real_eip !133
  %646 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !133
  store i1 %646, i1* %FPU_ES, align 1, !mcsema_real_eip !133
  %647 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !133
  store i1 %647, i1* %FPU_SF, align 1, !mcsema_real_eip !133
  %648 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !133
  store i1 %648, i1* %FPU_PE, align 1, !mcsema_real_eip !133
  %649 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !133
  store i1 %649, i1* %FPU_UE, align 1, !mcsema_real_eip !133
  %650 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !133
  store i1 %650, i1* %FPU_OE, align 1, !mcsema_real_eip !133
  %651 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !133
  store i1 %651, i1* %FPU_ZE, align 1, !mcsema_real_eip !133
  %652 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !133
  store i1 %652, i1* %FPU_DE, align 1, !mcsema_real_eip !133
  %653 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !133
  store i1 %653, i1* %FPU_IE, align 1, !mcsema_real_eip !133
  %654 = load i1, i1* %FPU_X_val, !mcsema_real_eip !133
  store i1 %654, i1* %FPU_X, align 1, !mcsema_real_eip !133
  %655 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !133
  store i2 %655, i2* %FPU_RC, align 1, !mcsema_real_eip !133
  %656 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !133
  store i2 %656, i2* %FPU_PC, align 1, !mcsema_real_eip !133
  %657 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !133
  store i1 %657, i1* %FPU_PM, align 1, !mcsema_real_eip !133
  %658 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !133
  store i1 %658, i1* %FPU_UM, align 1, !mcsema_real_eip !133
  %659 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !133
  store i1 %659, i1* %FPU_OM, align 1, !mcsema_real_eip !133
  %660 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !133
  store i1 %660, i1* %FPU_ZM, align 1, !mcsema_real_eip !133
  %661 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !133
  store i1 %661, i1* %FPU_DM, align 1, !mcsema_real_eip !133
  %662 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !133
  store i1 %662, i1* %FPU_IM, align 1, !mcsema_real_eip !133
  %663 = load i64, i64* %53, align 4
  store i64 %663, i64* %52, align 4
  %664 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !133
  store i16 %664, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !133
  %665 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !133
  store i64 %665, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !133
  %666 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !133
  store i16 %666, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !133
  %667 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !133
  store i64 %667, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !133
  %668 = load i128, i128* %XMM0_val, !mcsema_real_eip !133
  store i128 %668, i128* %XMM0, align 1, !mcsema_real_eip !133
  %669 = load i128, i128* %XMM1_val, !mcsema_real_eip !133
  store i128 %669, i128* %XMM1, align 1, !mcsema_real_eip !133
  %670 = load i128, i128* %XMM2_val, !mcsema_real_eip !133
  store i128 %670, i128* %XMM2, align 1, !mcsema_real_eip !133
  %671 = load i128, i128* %XMM3_val, !mcsema_real_eip !133
  store i128 %671, i128* %XMM3, align 1, !mcsema_real_eip !133
  %672 = load i128, i128* %XMM4_val, !mcsema_real_eip !133
  store i128 %672, i128* %XMM4, align 1, !mcsema_real_eip !133
  %673 = load i128, i128* %XMM5_val, !mcsema_real_eip !133
  store i128 %673, i128* %XMM5, align 1, !mcsema_real_eip !133
  %674 = load i128, i128* %XMM6_val, !mcsema_real_eip !133
  store i128 %674, i128* %XMM6, align 1, !mcsema_real_eip !133
  %675 = load i128, i128* %XMM7_val, !mcsema_real_eip !133
  store i128 %675, i128* %XMM7, align 1, !mcsema_real_eip !133
  %676 = load i128, i128* %XMM8_val, !mcsema_real_eip !133
  store i128 %676, i128* %XMM8, align 1, !mcsema_real_eip !133
  %677 = load i128, i128* %XMM9_val, !mcsema_real_eip !133
  store i128 %677, i128* %XMM9, align 1, !mcsema_real_eip !133
  %678 = load i128, i128* %XMM10_val, !mcsema_real_eip !133
  store i128 %678, i128* %XMM10, align 1, !mcsema_real_eip !133
  %679 = load i128, i128* %XMM11_val, !mcsema_real_eip !133
  store i128 %679, i128* %XMM11, align 1, !mcsema_real_eip !133
  %680 = load i128, i128* %XMM12_val, !mcsema_real_eip !133
  store i128 %680, i128* %XMM12, align 1, !mcsema_real_eip !133
  %681 = load i128, i128* %XMM13_val, !mcsema_real_eip !133
  store i128 %681, i128* %XMM13, align 1, !mcsema_real_eip !133
  %682 = load i128, i128* %XMM14_val, !mcsema_real_eip !133
  store i128 %682, i128* %XMM14, align 1, !mcsema_real_eip !133
  %683 = load i128, i128* %XMM15_val, !mcsema_real_eip !133
  store i128 %683, i128* %XMM15, align 1, !mcsema_real_eip !133
  %684 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !133
  store i64 %684, i64* %STACK_BASE, align 1, !mcsema_real_eip !133
  %685 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !133
  store i64 %685, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

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
  tail call x86_64_sysvcc void @sub_100(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_ = alloca i8*, i64 136
  %_RBP_ptr_ = alloca i8*, i64 136
  %_local_stack_start_ptr_ = alloca i8, i64 136
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 136
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !58
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !59
  %83 = load i64, i64* %R15_val, !mcsema_real_eip !60
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %84 = add i64 %80, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !60
  store i64 %83, i64* %_allin_new_bt_2, !mcsema_real_eip !60
  %86 = load i64, i64* %R14_val, !mcsema_real_eip !61
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %87 = add i64 %80, -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !61
  store i64 %86, i64* %_allin_new_bt_4, !mcsema_real_eip !61
  %89 = load i64, i64* %RBX_val, !mcsema_real_eip !62
  %_new_gep_5 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -32
  %90 = add i64 %80, -32
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !62
  store i64 %89, i64* %_allin_new_bt_6, !mcsema_real_eip !62
  %_new_gep_7 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -136
  %92 = add i64 %80, -136
  %93 = xor i64 %92, %90, !mcsema_real_eip !63
  %94 = and i64 %93, 16, !mcsema_real_eip !63
  %95 = icmp ne i64 %94, 0, !mcsema_real_eip !63
  store i1 %95, i1* %AF_val, !mcsema_real_eip !63
  %96 = trunc i64 %92 to i8, !mcsema_real_eip !63
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !63
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !63
  %100 = icmp eq i64 %92, 0, !mcsema_real_eip !63
  store i1 %100, i1* %ZF_val, !mcsema_real_eip !63
  %101 = icmp slt i64 %92, 0
  store i1 %101, i1* %SF_val, !mcsema_real_eip !63
  %102 = icmp ult i64 %90, 104, !mcsema_real_eip !63
  store i1 %102, i1* %CF_val, !mcsema_real_eip !63
  %103 = and i64 %93, %90, !mcsema_real_eip !63
  %104 = icmp slt i64 %103, 0
  store i1 %104, i1* %OF_val, !mcsema_real_eip !63
  store volatile i8* %_new_gep_7, i8** %_RSP_ptr_
  store i64 %92, i64* %RSP_val, !mcsema_real_eip !63
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 48
  %106 = add i64 %105, 48, !mcsema_real_eip !64
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !64
  %_ptr_to_int_137 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_138 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_139 = bitcast i64* %_allin_new_bt_10 to i8*
  %_offset_above_rbp_140 = sub i64 %_ptr_to_int_137, %_local_end_to_int_138
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_ptr_bt_139, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_ptr_bt_139, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_ptr_bt_139, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  br i1 %_cond1_n_cond2_cond3_148, label %108, label %109

; <label>:108:                                    ; preds = %55
  %_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_address_in_parent_stack_bt_150 = bitcast i8* %_address_in_parent_stack_149 to i64*
  br label %109

; <label>:109:                                    ; preds = %55, %108
  %110 = phi i64* [ %_allin_new_bt_10, %55 ], [ %_address_in_parent_stack_bt_150, %108 ]
  %_new_load_151 = load i64, i64* %110
  store i64 %_new_load_151, i64* %RAX_val, !mcsema_real_eip !64
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 40
  %111 = add i64 %105, 40, !mcsema_real_eip !65
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !65
  %_ptr_to_int_152 = ptrtoint i64* %_allin_new_bt_12 to i64
  %_local_end_to_int_153 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_154 = bitcast i64* %_allin_new_bt_12 to i8*
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_153
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_ptr_bt_154, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_ptr_bt_154, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_ptr_bt_154, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %113, label %114

; <label>:113:                                    ; preds = %109
  %_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_address_in_parent_stack_bt_165 = bitcast i8* %_address_in_parent_stack_164 to i64*
  br label %114

; <label>:114:                                    ; preds = %109, %113
  %115 = phi i64* [ %_allin_new_bt_12, %109 ], [ %_address_in_parent_stack_bt_165, %113 ]
  %_new_load_166 = load i64, i64* %115
  store i64 %_new_load_166, i64* %R10_val, !mcsema_real_eip !65
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 24
  %117 = add i64 %116, 24, !mcsema_real_eip !66
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !66
  %119 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !66
  store i64 %119, i64* %R11_val, !mcsema_real_eip !66
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 16
  %120 = add i64 %116, 16, !mcsema_real_eip !67
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !67
  %122 = bitcast i64* %_allin_new_bt_17 to i32*
  %_ptr_to_int_167 = ptrtoint i32* %122 to i64
  %_local_end_to_int_168 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_169 = bitcast i32* %122 to i8*
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_168
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_ptr_bt_169, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_ptr_bt_169, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_ptr_bt_169, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %123, label %124

; <label>:123:                                    ; preds = %114
  %_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_address_in_parent_stack_bt_180 = bitcast i8* %_address_in_parent_stack_179 to i32*
  br label %124

; <label>:124:                                    ; preds = %114, %123
  %125 = phi i32* [ %122, %114 ], [ %_address_in_parent_stack_bt_180, %123 ]
  %_new_load_181 = load i32, i32* %125
  %126 = zext i32 %_new_load_181 to i64, !mcsema_real_eip !67
  store i64 %126, i64* %RBX_val, !mcsema_real_eip !67
  store i64 12, i64* %R14_val, !mcsema_real_eip !68
  store i64 12, i64* %R15_val, !mcsema_real_eip !69
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -56
  %128 = add i64 %127, -56, !mcsema_real_eip !70
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !70
  %130 = load i64, i64* %RDI_val, !mcsema_real_eip !70
  store i64 %130, i64* %_allin_new_bt_20, !mcsema_real_eip !70
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -48
  %132 = add i64 %131, -48, !mcsema_real_eip !71
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !71
  %134 = load i64, i64* %RSI_val, !mcsema_real_eip !71
  %135 = trunc i64 %134 to i32, !mcsema_real_eip !71
  %136 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %135, i32* %136, !mcsema_real_eip !71
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -56
  %138 = add i64 %137, -56, !mcsema_real_eip !72
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !72
  %_ptr_to_int_182 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_local_end_to_int_183 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_184 = bitcast i64* %_allin_new_bt_26 to i8*
  %_offset_above_rbp_185 = sub i64 %_ptr_to_int_182, %_local_end_to_int_183
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_cond1_187 = icmp ugt i8* %_ptr_bt_184, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_ptr_bt_184, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_ptr_bt_184, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  br i1 %_cond1_n_cond2_cond3_193, label %140, label %141

; <label>:140:                                    ; preds = %124
  %_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_address_in_parent_stack_bt_195 = bitcast i8* %_address_in_parent_stack_194 to i64*
  br label %141

; <label>:141:                                    ; preds = %124, %140
  %142 = phi i64* [ %_allin_new_bt_26, %124 ], [ %_address_in_parent_stack_bt_195, %140 ]
  %_new_load_196 = load i64, i64* %142
  store i64 %_new_load_196, i64* %RDI_val, !mcsema_real_eip !72
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -40
  %143 = add i64 %137, -40, !mcsema_real_eip !73
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !73
  store i64 %_new_load_196, i64* %_allin_new_bt_28, !mcsema_real_eip !73
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -48
  %146 = add i64 %145, -48, !mcsema_real_eip !74
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !74
  %148 = bitcast i64* %_allin_new_bt_31 to i32*
  %_ptr_to_int_197 = ptrtoint i32* %148 to i64
  %_local_end_to_int_198 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_199 = bitcast i32* %148 to i8*
  %_offset_above_rbp_200 = sub i64 %_ptr_to_int_197, %_local_end_to_int_198
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_cond1_202 = icmp ugt i8* %_ptr_bt_199, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_ptr_bt_199, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_ptr_bt_199, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  br i1 %_cond1_n_cond2_cond3_208, label %149, label %150

; <label>:149:                                    ; preds = %141
  %_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_address_in_parent_stack_bt_210 = bitcast i8* %_address_in_parent_stack_209 to i32*
  br label %150

; <label>:150:                                    ; preds = %141, %149
  %151 = phi i32* [ %148, %141 ], [ %_address_in_parent_stack_bt_210, %149 ]
  %_new_load_211 = load i32, i32* %151
  %152 = zext i32 %_new_load_211 to i64, !mcsema_real_eip !74
  store i64 %152, i64* %RSI_val, !mcsema_real_eip !74
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -32
  %154 = add i64 %153, -32, !mcsema_real_eip !75
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !75
  %156 = bitcast i64* %_allin_new_bt_34 to i32*
  store i32 %_new_load_211, i32* %156, !mcsema_real_eip !75
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -64
  %158 = add i64 %157, -64, !mcsema_real_eip !76
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !76
  %160 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  store i64 %160, i64* %_allin_new_bt_37, !mcsema_real_eip !76
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -72
  %162 = add i64 %161, -72, !mcsema_real_eip !77
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !77
  %164 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  store i64 %164, i64* %_allin_new_bt_40, !mcsema_real_eip !77
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -76
  %166 = add i64 %165, -76, !mcsema_real_eip !78
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !78
  %168 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %169 = trunc i64 %168 to i32, !mcsema_real_eip !78
  %170 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %169, i32* %170, !mcsema_real_eip !78
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -80
  %172 = add i64 %171, -80, !mcsema_real_eip !79
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !79
  %174 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %175 = trunc i64 %174 to i32, !mcsema_real_eip !79
  %176 = bitcast i64* %_allin_new_bt_46 to i32*
  store i32 %175, i32* %176, !mcsema_real_eip !79
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %177 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -84
  %178 = add i64 %177, -84, !mcsema_real_eip !80
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !80
  %180 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %181 = trunc i64 %180 to i32, !mcsema_real_eip !80
  %182 = bitcast i64* %_allin_new_bt_49 to i32*
  store i32 %181, i32* %182, !mcsema_real_eip !80
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -96
  %184 = add i64 %183, -96, !mcsema_real_eip !81
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !81
  %186 = load i64, i64* %R10_val, !mcsema_real_eip !81
  store i64 %186, i64* %_allin_new_bt_52, !mcsema_real_eip !81
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -104
  %188 = add i64 %187, -104, !mcsema_real_eip !82
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !82
  %190 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  store i64 %190, i64* %_allin_new_bt_55, !mcsema_real_eip !82
  %191 = load i64, i64* %R15_val, !mcsema_real_eip !83
  store i64 %191, i64* %RDI_val, !mcsema_real_eip !83
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %192 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -120
  %193 = add i64 %192, -120, !mcsema_real_eip !84
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !84
  %195 = load i64, i64* %R11_val, !mcsema_real_eip !84
  store i64 %195, i64* %_allin_new_bt_58, !mcsema_real_eip !84
  %196 = load i64, i64* %RDI_val, !mcsema_real_eip !85
  %197 = tail call x86_64_sysvcc i64 @malloc(i64 %196), !mcsema_real_eip !85
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !85
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -112
  %199 = add i64 %198, -112, !mcsema_real_eip !86
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !86
  store i64 %197, i64* %_allin_new_bt_61, !mcsema_real_eip !86
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %201 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -40
  %202 = add i64 %201, -40, !mcsema_real_eip !87
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !87
  %204 = bitcast i64* %_allin_new_bt_64 to i32*
  %_ptr_to_int_212 = ptrtoint i32* %204 to i64
  %_local_end_to_int_213 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_214 = bitcast i32* %204 to i8*
  %_offset_above_rbp_215 = sub i64 %_ptr_to_int_212, %_local_end_to_int_213
  %_pot_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_215
  %_cond1_217 = icmp ugt i8* %_ptr_bt_214, %_local_stack_end_ptr_
  %_cond2_1_218 = icmp ugt i8* %_ptr_bt_214, %_parent_stack_end_ptr_
  %_cond2_2_219 = icmp ult i8* %_ptr_bt_214, %_parent_stack_start_ptr_
  %_cond2_220 = or i1 %_cond2_1_218, %_cond2_2_219
  %_cond4_221 = icmp ule i8* %_pot_address_in_parent_stack_216, %_parent_stack_end_ptr_
  %_cond1_n_cond2_222 = and i1 %_cond1_217, %_cond2_220
  %_cond1_n_cond2_cond3_223 = and i1 %_cond1_n_cond2_222, %_cond4_221
  br i1 %_cond1_n_cond2_cond3_223, label %205, label %206

; <label>:205:                                    ; preds = %150
  %_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_215
  %_address_in_parent_stack_bt_225 = bitcast i8* %_address_in_parent_stack_224 to i32*
  br label %206

; <label>:206:                                    ; preds = %150, %205
  %207 = phi i32* [ %204, %150 ], [ %_address_in_parent_stack_bt_225, %205 ]
  %_new_load_226 = load i32, i32* %207
  %208 = zext i32 %_new_load_226 to i64, !mcsema_real_eip !87
  store i64 %208, i64* %RSI_val, !mcsema_real_eip !87
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %209 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -64
  %210 = add i64 %209, -64, !mcsema_real_eip !88
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !88
  %_ptr_to_int_227 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_local_end_to_int_228 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_229 = bitcast i64* %_allin_new_bt_67 to i8*
  %_offset_above_rbp_230 = sub i64 %_ptr_to_int_227, %_local_end_to_int_228
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_ptr_bt_229, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_ptr_bt_229, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_ptr_bt_229, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  br i1 %_cond1_n_cond2_cond3_238, label %212, label %213

; <label>:212:                                    ; preds = %206
  %_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_address_in_parent_stack_bt_240 = bitcast i8* %_address_in_parent_stack_239 to i64*
  br label %213

; <label>:213:                                    ; preds = %206, %212
  %214 = phi i64* [ %_allin_new_bt_67, %206 ], [ %_address_in_parent_stack_bt_240, %212 ]
  %_new_load_241 = load i64, i64* %214
  store i64 %_new_load_241, i64* %RAX_val, !mcsema_real_eip !88
  %215 = inttoptr i64 %_new_load_241 to i64*, !mcsema_real_eip !89
  %216 = bitcast i64* %215 to i32*
  %_ptr_to_int_242 = ptrtoint i32* %216 to i64
  %_local_end_to_int_243 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_244 = bitcast i32* %216 to i8*
  %_offset_above_rbp_245 = sub i64 %_ptr_to_int_242, %_local_end_to_int_243
  %_pot_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_245
  %_cond1_247 = icmp ugt i8* %_ptr_bt_244, %_local_stack_end_ptr_
  %_cond2_1_248 = icmp ugt i8* %_ptr_bt_244, %_parent_stack_end_ptr_
  %_cond2_2_249 = icmp ult i8* %_ptr_bt_244, %_parent_stack_start_ptr_
  %_cond2_250 = or i1 %_cond2_1_248, %_cond2_2_249
  %_cond4_251 = icmp ule i8* %_pot_address_in_parent_stack_246, %_parent_stack_end_ptr_
  %_cond1_n_cond2_252 = and i1 %_cond1_247, %_cond2_250
  %_cond1_n_cond2_cond3_253 = and i1 %_cond1_n_cond2_252, %_cond4_251
  br i1 %_cond1_n_cond2_cond3_253, label %217, label %218

; <label>:217:                                    ; preds = %213
  %_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_245
  %_address_in_parent_stack_bt_255 = bitcast i8* %_address_in_parent_stack_254 to i32*
  br label %218

; <label>:218:                                    ; preds = %213, %217
  %219 = phi i32* [ %216, %213 ], [ %_address_in_parent_stack_bt_255, %217 ]
  %_new_load_256 = load i32, i32* %219
  %220 = load i64, i64* %RSI_val, !mcsema_real_eip !89
  %221 = trunc i64 %220 to i32, !mcsema_real_eip !89
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 %_new_load_256)
  %222 = extractvalue { i32, i1 } %uadd, 0
  %223 = xor i32 %222, %_new_load_256, !mcsema_real_eip !89
  %224 = xor i32 %223, %221, !mcsema_real_eip !89
  %225 = and i32 %224, 16, !mcsema_real_eip !89
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !89
  store i1 %226, i1* %AF_val, !mcsema_real_eip !89
  %227 = icmp slt i32 %222, 0
  store i1 %227, i1* %SF_val, !mcsema_real_eip !89
  %228 = icmp eq i32 %222, 0, !mcsema_real_eip !89
  store i1 %228, i1* %ZF_val, !mcsema_real_eip !89
  %229 = xor i32 %_new_load_256, -2147483648, !mcsema_real_eip !89
  %230 = xor i32 %229, %221, !mcsema_real_eip !89
  %231 = and i32 %223, %230, !mcsema_real_eip !89
  %232 = icmp slt i32 %231, 0
  store i1 %232, i1* %OF_val, !mcsema_real_eip !89
  %233 = trunc i32 %222 to i8, !mcsema_real_eip !89
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !89
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF_val, !mcsema_real_eip !89
  %237 = extractvalue { i32, i1 } %uadd, 1
  store i1 %237, i1* %CF_val, !mcsema_real_eip !89
  %238 = zext i32 %222 to i64, !mcsema_real_eip !89
  store i64 %238, i64* %RSI_val, !mcsema_real_eip !89
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %239 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -72
  %240 = add i64 %239, -72, !mcsema_real_eip !90
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !90
  %_ptr_to_int_257 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_local_end_to_int_258 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_259 = bitcast i64* %_allin_new_bt_70 to i8*
  %_offset_above_rbp_260 = sub i64 %_ptr_to_int_257, %_local_end_to_int_258
  %_pot_address_in_parent_stack_261 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_260
  %_cond1_262 = icmp ugt i8* %_ptr_bt_259, %_local_stack_end_ptr_
  %_cond2_1_263 = icmp ugt i8* %_ptr_bt_259, %_parent_stack_end_ptr_
  %_cond2_2_264 = icmp ult i8* %_ptr_bt_259, %_parent_stack_start_ptr_
  %_cond2_265 = or i1 %_cond2_1_263, %_cond2_2_264
  %_cond4_266 = icmp ule i8* %_pot_address_in_parent_stack_261, %_parent_stack_end_ptr_
  %_cond1_n_cond2_267 = and i1 %_cond1_262, %_cond2_265
  %_cond1_n_cond2_cond3_268 = and i1 %_cond1_n_cond2_267, %_cond4_266
  br i1 %_cond1_n_cond2_cond3_268, label %242, label %243

; <label>:242:                                    ; preds = %218
  %_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_260
  %_address_in_parent_stack_bt_270 = bitcast i8* %_address_in_parent_stack_269 to i64*
  br label %243

; <label>:243:                                    ; preds = %218, %242
  %244 = phi i64* [ %_allin_new_bt_70, %218 ], [ %_address_in_parent_stack_bt_270, %242 ]
  %_new_load_271 = load i64, i64* %244
  store i64 %_new_load_271, i64* %RAX_val, !mcsema_real_eip !90
  %245 = inttoptr i64 %_new_load_271 to i64*, !mcsema_real_eip !91
  %246 = bitcast i64* %245 to i32*
  %_ptr_to_int_272 = ptrtoint i32* %246 to i64
  %_local_end_to_int_273 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_274 = bitcast i32* %246 to i8*
  %_offset_above_rbp_275 = sub i64 %_ptr_to_int_272, %_local_end_to_int_273
  %_pot_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_275
  %_cond1_277 = icmp ugt i8* %_ptr_bt_274, %_local_stack_end_ptr_
  %_cond2_1_278 = icmp ugt i8* %_ptr_bt_274, %_parent_stack_end_ptr_
  %_cond2_2_279 = icmp ult i8* %_ptr_bt_274, %_parent_stack_start_ptr_
  %_cond2_280 = or i1 %_cond2_1_278, %_cond2_2_279
  %_cond4_281 = icmp ule i8* %_pot_address_in_parent_stack_276, %_parent_stack_end_ptr_
  %_cond1_n_cond2_282 = and i1 %_cond1_277, %_cond2_280
  %_cond1_n_cond2_cond3_283 = and i1 %_cond1_n_cond2_282, %_cond4_281
  br i1 %_cond1_n_cond2_cond3_283, label %247, label %248

; <label>:247:                                    ; preds = %243
  %_address_in_parent_stack_284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_275
  %_address_in_parent_stack_bt_285 = bitcast i8* %_address_in_parent_stack_284 to i32*
  br label %248

; <label>:248:                                    ; preds = %243, %247
  %249 = phi i32* [ %246, %243 ], [ %_address_in_parent_stack_bt_285, %247 ]
  %_new_load_286 = load i32, i32* %249
  %250 = load i64, i64* %RSI_val, !mcsema_real_eip !91
  %251 = trunc i64 %250 to i32, !mcsema_real_eip !91
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 %_new_load_286)
  %252 = extractvalue { i32, i1 } %uadd70, 0
  %253 = xor i32 %252, %_new_load_286, !mcsema_real_eip !91
  %254 = xor i32 %253, %251, !mcsema_real_eip !91
  %255 = and i32 %254, 16, !mcsema_real_eip !91
  %256 = icmp ne i32 %255, 0, !mcsema_real_eip !91
  store i1 %256, i1* %AF_val, !mcsema_real_eip !91
  %257 = icmp slt i32 %252, 0
  store i1 %257, i1* %SF_val, !mcsema_real_eip !91
  %258 = icmp eq i32 %252, 0, !mcsema_real_eip !91
  store i1 %258, i1* %ZF_val, !mcsema_real_eip !91
  %259 = xor i32 %_new_load_286, -2147483648, !mcsema_real_eip !91
  %260 = xor i32 %259, %251, !mcsema_real_eip !91
  %261 = and i32 %253, %260, !mcsema_real_eip !91
  %262 = icmp slt i32 %261, 0
  store i1 %262, i1* %OF_val, !mcsema_real_eip !91
  %263 = trunc i32 %252 to i8, !mcsema_real_eip !91
  %264 = tail call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !91
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  store i1 %266, i1* %PF_val, !mcsema_real_eip !91
  %267 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %267, i1* %CF_val, !mcsema_real_eip !91
  %268 = zext i32 %252 to i64, !mcsema_real_eip !91
  store i64 %268, i64* %RSI_val, !mcsema_real_eip !91
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %269 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -120
  %270 = add i64 %269, -120, !mcsema_real_eip !92
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !92
  %_ptr_to_int_287 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_local_end_to_int_288 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_289 = bitcast i64* %_allin_new_bt_73 to i8*
  %_offset_above_rbp_290 = sub i64 %_ptr_to_int_287, %_local_end_to_int_288
  %_pot_address_in_parent_stack_291 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_290
  %_cond1_292 = icmp ugt i8* %_ptr_bt_289, %_local_stack_end_ptr_
  %_cond2_1_293 = icmp ugt i8* %_ptr_bt_289, %_parent_stack_end_ptr_
  %_cond2_2_294 = icmp ult i8* %_ptr_bt_289, %_parent_stack_start_ptr_
  %_cond2_295 = or i1 %_cond2_1_293, %_cond2_2_294
  %_cond4_296 = icmp ule i8* %_pot_address_in_parent_stack_291, %_parent_stack_end_ptr_
  %_cond1_n_cond2_297 = and i1 %_cond1_292, %_cond2_295
  %_cond1_n_cond2_cond3_298 = and i1 %_cond1_n_cond2_297, %_cond4_296
  br i1 %_cond1_n_cond2_cond3_298, label %272, label %273

; <label>:272:                                    ; preds = %248
  %_address_in_parent_stack_299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_290
  %_address_in_parent_stack_bt_300 = bitcast i8* %_address_in_parent_stack_299 to i64*
  br label %273

; <label>:273:                                    ; preds = %248, %272
  %274 = phi i64* [ %_allin_new_bt_73, %248 ], [ %_address_in_parent_stack_bt_300, %272 ]
  %_new_load_301 = load i64, i64* %274
  store i64 %_new_load_301, i64* %RAX_val, !mcsema_real_eip !92
  %275 = inttoptr i64 %_new_load_301 to i64*, !mcsema_real_eip !93
  %276 = bitcast i64* %275 to i32*
  %_ptr_to_int_302 = ptrtoint i32* %276 to i64
  %_local_end_to_int_303 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_304 = bitcast i32* %276 to i8*
  %_offset_above_rbp_305 = sub i64 %_ptr_to_int_302, %_local_end_to_int_303
  %_pot_address_in_parent_stack_306 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_305
  %_cond1_307 = icmp ugt i8* %_ptr_bt_304, %_local_stack_end_ptr_
  %_cond2_1_308 = icmp ugt i8* %_ptr_bt_304, %_parent_stack_end_ptr_
  %_cond2_2_309 = icmp ult i8* %_ptr_bt_304, %_parent_stack_start_ptr_
  %_cond2_310 = or i1 %_cond2_1_308, %_cond2_2_309
  %_cond4_311 = icmp ule i8* %_pot_address_in_parent_stack_306, %_parent_stack_end_ptr_
  %_cond1_n_cond2_312 = and i1 %_cond1_307, %_cond2_310
  %_cond1_n_cond2_cond3_313 = and i1 %_cond1_n_cond2_312, %_cond4_311
  br i1 %_cond1_n_cond2_cond3_313, label %277, label %278

; <label>:277:                                    ; preds = %273
  %_address_in_parent_stack_314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_305
  %_address_in_parent_stack_bt_315 = bitcast i8* %_address_in_parent_stack_314 to i32*
  br label %278

; <label>:278:                                    ; preds = %273, %277
  %279 = phi i32* [ %276, %273 ], [ %_address_in_parent_stack_bt_315, %277 ]
  %_new_load_316 = load i32, i32* %279
  %280 = zext i32 %_new_load_316 to i64, !mcsema_real_eip !93
  store i64 %280, i64* %R8_val, !mcsema_real_eip !93
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -96
  %282 = add i64 %281, -96, !mcsema_real_eip !94
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !94
  %_ptr_to_int_317 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_local_end_to_int_318 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_319 = bitcast i64* %_allin_new_bt_76 to i8*
  %_offset_above_rbp_320 = sub i64 %_ptr_to_int_317, %_local_end_to_int_318
  %_pot_address_in_parent_stack_321 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_320
  %_cond1_322 = icmp ugt i8* %_ptr_bt_319, %_local_stack_end_ptr_
  %_cond2_1_323 = icmp ugt i8* %_ptr_bt_319, %_parent_stack_end_ptr_
  %_cond2_2_324 = icmp ult i8* %_ptr_bt_319, %_parent_stack_start_ptr_
  %_cond2_325 = or i1 %_cond2_1_323, %_cond2_2_324
  %_cond4_326 = icmp ule i8* %_pot_address_in_parent_stack_321, %_parent_stack_end_ptr_
  %_cond1_n_cond2_327 = and i1 %_cond1_322, %_cond2_325
  %_cond1_n_cond2_cond3_328 = and i1 %_cond1_n_cond2_327, %_cond4_326
  br i1 %_cond1_n_cond2_cond3_328, label %284, label %285

; <label>:284:                                    ; preds = %278
  %_address_in_parent_stack_329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_320
  %_address_in_parent_stack_bt_330 = bitcast i8* %_address_in_parent_stack_329 to i64*
  br label %285

; <label>:285:                                    ; preds = %278, %284
  %286 = phi i64* [ %_allin_new_bt_76, %278 ], [ %_address_in_parent_stack_bt_330, %284 ]
  %_new_load_331 = load i64, i64* %286
  store i64 %_new_load_331, i64* %RCX_val, !mcsema_real_eip !94
  %287 = inttoptr i64 %_new_load_331 to i64*, !mcsema_real_eip !95
  %288 = bitcast i64* %287 to i32*
  %_ptr_to_int_332 = ptrtoint i32* %288 to i64
  %_local_end_to_int_333 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_334 = bitcast i32* %288 to i8*
  %_offset_above_rbp_335 = sub i64 %_ptr_to_int_332, %_local_end_to_int_333
  %_pot_address_in_parent_stack_336 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_335
  %_cond1_337 = icmp ugt i8* %_ptr_bt_334, %_local_stack_end_ptr_
  %_cond2_1_338 = icmp ugt i8* %_ptr_bt_334, %_parent_stack_end_ptr_
  %_cond2_2_339 = icmp ult i8* %_ptr_bt_334, %_parent_stack_start_ptr_
  %_cond2_340 = or i1 %_cond2_1_338, %_cond2_2_339
  %_cond4_341 = icmp ule i8* %_pot_address_in_parent_stack_336, %_parent_stack_end_ptr_
  %_cond1_n_cond2_342 = and i1 %_cond1_337, %_cond2_340
  %_cond1_n_cond2_cond3_343 = and i1 %_cond1_n_cond2_342, %_cond4_341
  br i1 %_cond1_n_cond2_cond3_343, label %289, label %290

; <label>:289:                                    ; preds = %285
  %_address_in_parent_stack_344 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_335
  %_address_in_parent_stack_bt_345 = bitcast i8* %_address_in_parent_stack_344 to i32*
  br label %290

; <label>:290:                                    ; preds = %285, %289
  %291 = phi i32* [ %288, %285 ], [ %_address_in_parent_stack_bt_345, %289 ]
  %_new_load_346 = load i32, i32* %291
  %292 = load i64, i64* %R8_val, !mcsema_real_eip !95
  %293 = trunc i64 %292 to i32, !mcsema_real_eip !95
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %293, i32 %_new_load_346)
  %294 = extractvalue { i32, i1 } %uadd71, 0
  %295 = xor i32 %294, %_new_load_346, !mcsema_real_eip !95
  %296 = xor i32 %295, %293, !mcsema_real_eip !95
  %297 = and i32 %296, 16, !mcsema_real_eip !95
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !95
  store i1 %298, i1* %AF_val, !mcsema_real_eip !95
  %299 = icmp slt i32 %294, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !95
  %300 = icmp eq i32 %294, 0, !mcsema_real_eip !95
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !95
  %301 = xor i32 %_new_load_346, -2147483648, !mcsema_real_eip !95
  %302 = xor i32 %301, %293, !mcsema_real_eip !95
  %303 = and i32 %295, %302, !mcsema_real_eip !95
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !95
  %305 = trunc i32 %294 to i8, !mcsema_real_eip !95
  %306 = tail call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !95
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF_val, !mcsema_real_eip !95
  %309 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %309, i1* %CF_val, !mcsema_real_eip !95
  %310 = zext i32 %294 to i64, !mcsema_real_eip !95
  store i64 %310, i64* %R8_val, !mcsema_real_eip !95
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -104
  %312 = add i64 %311, -104, !mcsema_real_eip !96
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !96
  %_ptr_to_int_347 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_local_end_to_int_348 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_349 = bitcast i64* %_allin_new_bt_79 to i8*
  %_offset_above_rbp_350 = sub i64 %_ptr_to_int_347, %_local_end_to_int_348
  %_pot_address_in_parent_stack_351 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_350
  %_cond1_352 = icmp ugt i8* %_ptr_bt_349, %_local_stack_end_ptr_
  %_cond2_1_353 = icmp ugt i8* %_ptr_bt_349, %_parent_stack_end_ptr_
  %_cond2_2_354 = icmp ult i8* %_ptr_bt_349, %_parent_stack_start_ptr_
  %_cond2_355 = or i1 %_cond2_1_353, %_cond2_2_354
  %_cond4_356 = icmp ule i8* %_pot_address_in_parent_stack_351, %_parent_stack_end_ptr_
  %_cond1_n_cond2_357 = and i1 %_cond1_352, %_cond2_355
  %_cond1_n_cond2_cond3_358 = and i1 %_cond1_n_cond2_357, %_cond4_356
  br i1 %_cond1_n_cond2_cond3_358, label %314, label %315

; <label>:314:                                    ; preds = %290
  %_address_in_parent_stack_359 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_350
  %_address_in_parent_stack_bt_360 = bitcast i8* %_address_in_parent_stack_359 to i64*
  br label %315

; <label>:315:                                    ; preds = %290, %314
  %316 = phi i64* [ %_allin_new_bt_79, %290 ], [ %_address_in_parent_stack_bt_360, %314 ]
  %_new_load_361 = load i64, i64* %316
  store i64 %_new_load_361, i64* %RCX_val, !mcsema_real_eip !96
  %317 = inttoptr i64 %_new_load_361 to i64*, !mcsema_real_eip !97
  %318 = bitcast i64* %317 to i32*
  %_ptr_to_int_362 = ptrtoint i32* %318 to i64
  %_local_end_to_int_363 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_364 = bitcast i32* %318 to i8*
  %_offset_above_rbp_365 = sub i64 %_ptr_to_int_362, %_local_end_to_int_363
  %_pot_address_in_parent_stack_366 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_365
  %_cond1_367 = icmp ugt i8* %_ptr_bt_364, %_local_stack_end_ptr_
  %_cond2_1_368 = icmp ugt i8* %_ptr_bt_364, %_parent_stack_end_ptr_
  %_cond2_2_369 = icmp ult i8* %_ptr_bt_364, %_parent_stack_start_ptr_
  %_cond2_370 = or i1 %_cond2_1_368, %_cond2_2_369
  %_cond4_371 = icmp ule i8* %_pot_address_in_parent_stack_366, %_parent_stack_end_ptr_
  %_cond1_n_cond2_372 = and i1 %_cond1_367, %_cond2_370
  %_cond1_n_cond2_cond3_373 = and i1 %_cond1_n_cond2_372, %_cond4_371
  br i1 %_cond1_n_cond2_cond3_373, label %319, label %320

; <label>:319:                                    ; preds = %315
  %_address_in_parent_stack_374 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_365
  %_address_in_parent_stack_bt_375 = bitcast i8* %_address_in_parent_stack_374 to i32*
  br label %320

; <label>:320:                                    ; preds = %315, %319
  %321 = phi i32* [ %318, %315 ], [ %_address_in_parent_stack_bt_375, %319 ]
  %_new_load_376 = load i32, i32* %321
  %322 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %323 = trunc i64 %322 to i32, !mcsema_real_eip !97
  %324 = add i32 %323, %_new_load_376
  %325 = zext i32 %324 to i64, !mcsema_real_eip !97
  store i64 %325, i64* %R8_val, !mcsema_real_eip !97
  %326 = load i64, i64* %RSI_val, !mcsema_real_eip !98
  %327 = trunc i64 %326 to i32, !mcsema_real_eip !98
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 %327)
  %328 = extractvalue { i32, i1 } %uadd73, 0
  %329 = xor i32 %328, %327, !mcsema_real_eip !98
  %330 = xor i32 %329, %324, !mcsema_real_eip !98
  %331 = and i32 %330, 16, !mcsema_real_eip !98
  %332 = icmp ne i32 %331, 0, !mcsema_real_eip !98
  store i1 %332, i1* %AF_val, !mcsema_real_eip !98
  %333 = icmp slt i32 %328, 0
  store i1 %333, i1* %SF_val, !mcsema_real_eip !98
  %334 = icmp eq i32 %328, 0, !mcsema_real_eip !98
  store i1 %334, i1* %ZF_val, !mcsema_real_eip !98
  %335 = xor i32 %324, -2147483648, !mcsema_real_eip !98
  %336 = xor i32 %335, %327, !mcsema_real_eip !98
  %337 = and i32 %329, %336, !mcsema_real_eip !98
  %338 = icmp slt i32 %337, 0
  store i1 %338, i1* %OF_val, !mcsema_real_eip !98
  %339 = trunc i32 %328 to i8, !mcsema_real_eip !98
  %340 = tail call i8 @llvm.ctpop.i8(i8 %339), !mcsema_real_eip !98
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  store i1 %342, i1* %PF_val, !mcsema_real_eip !98
  %343 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %343, i1* %CF_val, !mcsema_real_eip !98
  %344 = zext i32 %328 to i64, !mcsema_real_eip !98
  store i64 %344, i64* %RSI_val, !mcsema_real_eip !98
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -112
  %346 = add i64 %345, -112, !mcsema_real_eip !99
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !99
  %_ptr_to_int_377 = ptrtoint i64* %_allin_new_bt_82 to i64
  %_local_end_to_int_378 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_379 = bitcast i64* %_allin_new_bt_82 to i8*
  %_offset_above_rbp_380 = sub i64 %_ptr_to_int_377, %_local_end_to_int_378
  %_pot_address_in_parent_stack_381 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_380
  %_cond1_382 = icmp ugt i8* %_ptr_bt_379, %_local_stack_end_ptr_
  %_cond2_1_383 = icmp ugt i8* %_ptr_bt_379, %_parent_stack_end_ptr_
  %_cond2_2_384 = icmp ult i8* %_ptr_bt_379, %_parent_stack_start_ptr_
  %_cond2_385 = or i1 %_cond2_1_383, %_cond2_2_384
  %_cond4_386 = icmp ule i8* %_pot_address_in_parent_stack_381, %_parent_stack_end_ptr_
  %_cond1_n_cond2_387 = and i1 %_cond1_382, %_cond2_385
  %_cond1_n_cond2_cond3_388 = and i1 %_cond1_n_cond2_387, %_cond4_386
  br i1 %_cond1_n_cond2_cond3_388, label %348, label %349

; <label>:348:                                    ; preds = %320
  %_address_in_parent_stack_389 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_380
  %_address_in_parent_stack_bt_390 = bitcast i8* %_address_in_parent_stack_389 to i64*
  br label %349

; <label>:349:                                    ; preds = %320, %348
  %350 = phi i64* [ %_allin_new_bt_82, %320 ], [ %_address_in_parent_stack_bt_390, %348 ]
  %_new_load_391 = load i64, i64* %350
  store i64 %_new_load_391, i64* %RCX_val, !mcsema_real_eip !99
  %351 = inttoptr i64 %_new_load_391 to i64*, !mcsema_real_eip !100
  %352 = load i64, i64* %RSI_val, !mcsema_real_eip !100
  %353 = trunc i64 %352 to i32, !mcsema_real_eip !100
  %354 = bitcast i64* %351 to i32*
  store i32 %353, i32* %354, !mcsema_real_eip !100
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -36
  %356 = add i64 %355, -36, !mcsema_real_eip !101
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !101
  %358 = bitcast i64* %_allin_new_bt_85 to i32*
  %_ptr_to_int_392 = ptrtoint i32* %358 to i64
  %_local_end_to_int_393 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_394 = bitcast i32* %358 to i8*
  %_offset_above_rbp_395 = sub i64 %_ptr_to_int_392, %_local_end_to_int_393
  %_pot_address_in_parent_stack_396 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_395
  %_cond1_397 = icmp ugt i8* %_ptr_bt_394, %_local_stack_end_ptr_
  %_cond2_1_398 = icmp ugt i8* %_ptr_bt_394, %_parent_stack_end_ptr_
  %_cond2_2_399 = icmp ult i8* %_ptr_bt_394, %_parent_stack_start_ptr_
  %_cond2_400 = or i1 %_cond2_1_398, %_cond2_2_399
  %_cond4_401 = icmp ule i8* %_pot_address_in_parent_stack_396, %_parent_stack_end_ptr_
  %_cond1_n_cond2_402 = and i1 %_cond1_397, %_cond2_400
  %_cond1_n_cond2_cond3_403 = and i1 %_cond1_n_cond2_402, %_cond4_401
  br i1 %_cond1_n_cond2_cond3_403, label %359, label %360

; <label>:359:                                    ; preds = %349
  %_address_in_parent_stack_404 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_395
  %_address_in_parent_stack_bt_405 = bitcast i8* %_address_in_parent_stack_404 to i32*
  br label %360

; <label>:360:                                    ; preds = %349, %359
  %361 = phi i32* [ %358, %349 ], [ %_address_in_parent_stack_bt_405, %359 ]
  %_new_load_406 = load i32, i32* %361
  %362 = zext i32 %_new_load_406 to i64, !mcsema_real_eip !101
  store i64 %362, i64* %RSI_val, !mcsema_real_eip !101
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %363 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -64
  %364 = add i64 %363, -64, !mcsema_real_eip !102
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !102
  %_ptr_to_int_407 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_local_end_to_int_408 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_409 = bitcast i64* %_allin_new_bt_88 to i8*
  %_offset_above_rbp_410 = sub i64 %_ptr_to_int_407, %_local_end_to_int_408
  %_pot_address_in_parent_stack_411 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_410
  %_cond1_412 = icmp ugt i8* %_ptr_bt_409, %_local_stack_end_ptr_
  %_cond2_1_413 = icmp ugt i8* %_ptr_bt_409, %_parent_stack_end_ptr_
  %_cond2_2_414 = icmp ult i8* %_ptr_bt_409, %_parent_stack_start_ptr_
  %_cond2_415 = or i1 %_cond2_1_413, %_cond2_2_414
  %_cond4_416 = icmp ule i8* %_pot_address_in_parent_stack_411, %_parent_stack_end_ptr_
  %_cond1_n_cond2_417 = and i1 %_cond1_412, %_cond2_415
  %_cond1_n_cond2_cond3_418 = and i1 %_cond1_n_cond2_417, %_cond4_416
  br i1 %_cond1_n_cond2_cond3_418, label %366, label %367

; <label>:366:                                    ; preds = %360
  %_address_in_parent_stack_419 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_410
  %_address_in_parent_stack_bt_420 = bitcast i8* %_address_in_parent_stack_419 to i64*
  br label %367

; <label>:367:                                    ; preds = %360, %366
  %368 = phi i64* [ %_allin_new_bt_88, %360 ], [ %_address_in_parent_stack_bt_420, %366 ]
  %_new_load_421 = load i64, i64* %368
  store i64 %_new_load_421, i64* %RCX_val, !mcsema_real_eip !102
  %369 = add i64 %_new_load_421, 4, !mcsema_real_eip !103
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !103
  %371 = bitcast i64* %370 to i32*
  %_ptr_to_int_422 = ptrtoint i32* %371 to i64
  %_local_end_to_int_423 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_424 = bitcast i32* %371 to i8*
  %_offset_above_rbp_425 = sub i64 %_ptr_to_int_422, %_local_end_to_int_423
  %_pot_address_in_parent_stack_426 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_425
  %_cond1_427 = icmp ugt i8* %_ptr_bt_424, %_local_stack_end_ptr_
  %_cond2_1_428 = icmp ugt i8* %_ptr_bt_424, %_parent_stack_end_ptr_
  %_cond2_2_429 = icmp ult i8* %_ptr_bt_424, %_parent_stack_start_ptr_
  %_cond2_430 = or i1 %_cond2_1_428, %_cond2_2_429
  %_cond4_431 = icmp ule i8* %_pot_address_in_parent_stack_426, %_parent_stack_end_ptr_
  %_cond1_n_cond2_432 = and i1 %_cond1_427, %_cond2_430
  %_cond1_n_cond2_cond3_433 = and i1 %_cond1_n_cond2_432, %_cond4_431
  br i1 %_cond1_n_cond2_cond3_433, label %372, label %373

; <label>:372:                                    ; preds = %367
  %_address_in_parent_stack_434 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_425
  %_address_in_parent_stack_bt_435 = bitcast i8* %_address_in_parent_stack_434 to i32*
  br label %373

; <label>:373:                                    ; preds = %367, %372
  %374 = phi i32* [ %371, %367 ], [ %_address_in_parent_stack_bt_435, %372 ]
  %_new_load_436 = load i32, i32* %374
  %375 = load i64, i64* %RSI_val, !mcsema_real_eip !103
  %376 = trunc i64 %375 to i32, !mcsema_real_eip !103
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %376, i32 %_new_load_436)
  %377 = extractvalue { i32, i1 } %uadd74, 0
  %378 = xor i32 %377, %_new_load_436, !mcsema_real_eip !103
  %379 = xor i32 %378, %376, !mcsema_real_eip !103
  %380 = and i32 %379, 16, !mcsema_real_eip !103
  %381 = icmp ne i32 %380, 0, !mcsema_real_eip !103
  store i1 %381, i1* %AF_val, !mcsema_real_eip !103
  %382 = icmp slt i32 %377, 0
  store i1 %382, i1* %SF_val, !mcsema_real_eip !103
  %383 = icmp eq i32 %377, 0, !mcsema_real_eip !103
  store i1 %383, i1* %ZF_val, !mcsema_real_eip !103
  %384 = xor i32 %_new_load_436, -2147483648, !mcsema_real_eip !103
  %385 = xor i32 %384, %376, !mcsema_real_eip !103
  %386 = and i32 %378, %385, !mcsema_real_eip !103
  %387 = icmp slt i32 %386, 0
  store i1 %387, i1* %OF_val, !mcsema_real_eip !103
  %388 = trunc i32 %377 to i8, !mcsema_real_eip !103
  %389 = tail call i8 @llvm.ctpop.i8(i8 %388), !mcsema_real_eip !103
  %390 = and i8 %389, 1
  %391 = icmp eq i8 %390, 0
  store i1 %391, i1* %PF_val, !mcsema_real_eip !103
  %392 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %392, i1* %CF_val, !mcsema_real_eip !103
  %393 = zext i32 %377 to i64, !mcsema_real_eip !103
  store i64 %393, i64* %RSI_val, !mcsema_real_eip !103
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %394 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -72
  %395 = add i64 %394, -72, !mcsema_real_eip !104
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !104
  %_ptr_to_int_437 = ptrtoint i64* %_allin_new_bt_91 to i64
  %_local_end_to_int_438 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_439 = bitcast i64* %_allin_new_bt_91 to i8*
  %_offset_above_rbp_440 = sub i64 %_ptr_to_int_437, %_local_end_to_int_438
  %_pot_address_in_parent_stack_441 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_440
  %_cond1_442 = icmp ugt i8* %_ptr_bt_439, %_local_stack_end_ptr_
  %_cond2_1_443 = icmp ugt i8* %_ptr_bt_439, %_parent_stack_end_ptr_
  %_cond2_2_444 = icmp ult i8* %_ptr_bt_439, %_parent_stack_start_ptr_
  %_cond2_445 = or i1 %_cond2_1_443, %_cond2_2_444
  %_cond4_446 = icmp ule i8* %_pot_address_in_parent_stack_441, %_parent_stack_end_ptr_
  %_cond1_n_cond2_447 = and i1 %_cond1_442, %_cond2_445
  %_cond1_n_cond2_cond3_448 = and i1 %_cond1_n_cond2_447, %_cond4_446
  br i1 %_cond1_n_cond2_cond3_448, label %397, label %398

; <label>:397:                                    ; preds = %373
  %_address_in_parent_stack_449 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_440
  %_address_in_parent_stack_bt_450 = bitcast i8* %_address_in_parent_stack_449 to i64*
  br label %398

; <label>:398:                                    ; preds = %373, %397
  %399 = phi i64* [ %_allin_new_bt_91, %373 ], [ %_address_in_parent_stack_bt_450, %397 ]
  %_new_load_451 = load i64, i64* %399
  store i64 %_new_load_451, i64* %RCX_val, !mcsema_real_eip !104
  %400 = add i64 %_new_load_451, 4, !mcsema_real_eip !105
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !105
  %402 = bitcast i64* %401 to i32*
  %_ptr_to_int_452 = ptrtoint i32* %402 to i64
  %_local_end_to_int_453 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_454 = bitcast i32* %402 to i8*
  %_offset_above_rbp_455 = sub i64 %_ptr_to_int_452, %_local_end_to_int_453
  %_pot_address_in_parent_stack_456 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_455
  %_cond1_457 = icmp ugt i8* %_ptr_bt_454, %_local_stack_end_ptr_
  %_cond2_1_458 = icmp ugt i8* %_ptr_bt_454, %_parent_stack_end_ptr_
  %_cond2_2_459 = icmp ult i8* %_ptr_bt_454, %_parent_stack_start_ptr_
  %_cond2_460 = or i1 %_cond2_1_458, %_cond2_2_459
  %_cond4_461 = icmp ule i8* %_pot_address_in_parent_stack_456, %_parent_stack_end_ptr_
  %_cond1_n_cond2_462 = and i1 %_cond1_457, %_cond2_460
  %_cond1_n_cond2_cond3_463 = and i1 %_cond1_n_cond2_462, %_cond4_461
  br i1 %_cond1_n_cond2_cond3_463, label %403, label %404

; <label>:403:                                    ; preds = %398
  %_address_in_parent_stack_464 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_455
  %_address_in_parent_stack_bt_465 = bitcast i8* %_address_in_parent_stack_464 to i32*
  br label %404

; <label>:404:                                    ; preds = %398, %403
  %405 = phi i32* [ %402, %398 ], [ %_address_in_parent_stack_bt_465, %403 ]
  %_new_load_466 = load i32, i32* %405
  %406 = load i64, i64* %RSI_val, !mcsema_real_eip !105
  %407 = trunc i64 %406 to i32, !mcsema_real_eip !105
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %407, i32 %_new_load_466)
  %408 = extractvalue { i32, i1 } %uadd75, 0
  %409 = xor i32 %408, %_new_load_466, !mcsema_real_eip !105
  %410 = xor i32 %409, %407, !mcsema_real_eip !105
  %411 = and i32 %410, 16, !mcsema_real_eip !105
  %412 = icmp ne i32 %411, 0, !mcsema_real_eip !105
  store i1 %412, i1* %AF_val, !mcsema_real_eip !105
  %413 = icmp slt i32 %408, 0
  store i1 %413, i1* %SF_val, !mcsema_real_eip !105
  %414 = icmp eq i32 %408, 0, !mcsema_real_eip !105
  store i1 %414, i1* %ZF_val, !mcsema_real_eip !105
  %415 = xor i32 %_new_load_466, -2147483648, !mcsema_real_eip !105
  %416 = xor i32 %415, %407, !mcsema_real_eip !105
  %417 = and i32 %409, %416, !mcsema_real_eip !105
  %418 = icmp slt i32 %417, 0
  store i1 %418, i1* %OF_val, !mcsema_real_eip !105
  %419 = trunc i32 %408 to i8, !mcsema_real_eip !105
  %420 = tail call i8 @llvm.ctpop.i8(i8 %419), !mcsema_real_eip !105
  %421 = and i8 %420, 1
  %422 = icmp eq i8 %421, 0
  store i1 %422, i1* %PF_val, !mcsema_real_eip !105
  %423 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %423, i1* %CF_val, !mcsema_real_eip !105
  %424 = zext i32 %408 to i64, !mcsema_real_eip !105
  store i64 %424, i64* %RSI_val, !mcsema_real_eip !105
  %425 = load i64, i64* %RAX_val, !mcsema_real_eip !106
  %426 = add i64 %425, 4, !mcsema_real_eip !106
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !106
  %428 = bitcast i64* %427 to i32*
  %_ptr_to_int_467 = ptrtoint i32* %428 to i64
  %_local_end_to_int_468 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_469 = bitcast i32* %428 to i8*
  %_offset_above_rbp_470 = sub i64 %_ptr_to_int_467, %_local_end_to_int_468
  %_pot_address_in_parent_stack_471 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_470
  %_cond1_472 = icmp ugt i8* %_ptr_bt_469, %_local_stack_end_ptr_
  %_cond2_1_473 = icmp ugt i8* %_ptr_bt_469, %_parent_stack_end_ptr_
  %_cond2_2_474 = icmp ult i8* %_ptr_bt_469, %_parent_stack_start_ptr_
  %_cond2_475 = or i1 %_cond2_1_473, %_cond2_2_474
  %_cond4_476 = icmp ule i8* %_pot_address_in_parent_stack_471, %_parent_stack_end_ptr_
  %_cond1_n_cond2_477 = and i1 %_cond1_472, %_cond2_475
  %_cond1_n_cond2_cond3_478 = and i1 %_cond1_n_cond2_477, %_cond4_476
  br i1 %_cond1_n_cond2_cond3_478, label %429, label %430

; <label>:429:                                    ; preds = %404
  %_address_in_parent_stack_479 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_470
  %_address_in_parent_stack_bt_480 = bitcast i8* %_address_in_parent_stack_479 to i32*
  br label %430

; <label>:430:                                    ; preds = %404, %429
  %431 = phi i32* [ %428, %404 ], [ %_address_in_parent_stack_bt_480, %429 ]
  %_new_load_481 = load i32, i32* %431
  %432 = zext i32 %_new_load_481 to i64, !mcsema_real_eip !106
  store i64 %432, i64* %R8_val, !mcsema_real_eip !106
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %433 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -96
  %434 = add i64 %433, -96, !mcsema_real_eip !107
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !107
  %_ptr_to_int_482 = ptrtoint i64* %_allin_new_bt_94 to i64
  %_local_end_to_int_483 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_484 = bitcast i64* %_allin_new_bt_94 to i8*
  %_offset_above_rbp_485 = sub i64 %_ptr_to_int_482, %_local_end_to_int_483
  %_pot_address_in_parent_stack_486 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_485
  %_cond1_487 = icmp ugt i8* %_ptr_bt_484, %_local_stack_end_ptr_
  %_cond2_1_488 = icmp ugt i8* %_ptr_bt_484, %_parent_stack_end_ptr_
  %_cond2_2_489 = icmp ult i8* %_ptr_bt_484, %_parent_stack_start_ptr_
  %_cond2_490 = or i1 %_cond2_1_488, %_cond2_2_489
  %_cond4_491 = icmp ule i8* %_pot_address_in_parent_stack_486, %_parent_stack_end_ptr_
  %_cond1_n_cond2_492 = and i1 %_cond1_487, %_cond2_490
  %_cond1_n_cond2_cond3_493 = and i1 %_cond1_n_cond2_492, %_cond4_491
  br i1 %_cond1_n_cond2_cond3_493, label %436, label %437

; <label>:436:                                    ; preds = %430
  %_address_in_parent_stack_494 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_485
  %_address_in_parent_stack_bt_495 = bitcast i8* %_address_in_parent_stack_494 to i64*
  br label %437

; <label>:437:                                    ; preds = %430, %436
  %438 = phi i64* [ %_allin_new_bt_94, %430 ], [ %_address_in_parent_stack_bt_495, %436 ]
  %_new_load_496 = load i64, i64* %438
  store i64 %_new_load_496, i64* %RCX_val, !mcsema_real_eip !107
  %439 = add i64 %_new_load_496, 4, !mcsema_real_eip !108
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !108
  %441 = bitcast i64* %440 to i32*
  %_ptr_to_int_497 = ptrtoint i32* %441 to i64
  %_local_end_to_int_498 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_499 = bitcast i32* %441 to i8*
  %_offset_above_rbp_500 = sub i64 %_ptr_to_int_497, %_local_end_to_int_498
  %_pot_address_in_parent_stack_501 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_500
  %_cond1_502 = icmp ugt i8* %_ptr_bt_499, %_local_stack_end_ptr_
  %_cond2_1_503 = icmp ugt i8* %_ptr_bt_499, %_parent_stack_end_ptr_
  %_cond2_2_504 = icmp ult i8* %_ptr_bt_499, %_parent_stack_start_ptr_
  %_cond2_505 = or i1 %_cond2_1_503, %_cond2_2_504
  %_cond4_506 = icmp ule i8* %_pot_address_in_parent_stack_501, %_parent_stack_end_ptr_
  %_cond1_n_cond2_507 = and i1 %_cond1_502, %_cond2_505
  %_cond1_n_cond2_cond3_508 = and i1 %_cond1_n_cond2_507, %_cond4_506
  br i1 %_cond1_n_cond2_cond3_508, label %442, label %443

; <label>:442:                                    ; preds = %437
  %_address_in_parent_stack_509 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_500
  %_address_in_parent_stack_bt_510 = bitcast i8* %_address_in_parent_stack_509 to i32*
  br label %443

; <label>:443:                                    ; preds = %437, %442
  %444 = phi i32* [ %441, %437 ], [ %_address_in_parent_stack_bt_510, %442 ]
  %_new_load_511 = load i32, i32* %444
  %445 = load i64, i64* %R8_val, !mcsema_real_eip !108
  %446 = trunc i64 %445 to i32, !mcsema_real_eip !108
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %446, i32 %_new_load_511)
  %447 = extractvalue { i32, i1 } %uadd76, 0
  %448 = xor i32 %447, %_new_load_511, !mcsema_real_eip !108
  %449 = xor i32 %448, %446, !mcsema_real_eip !108
  %450 = and i32 %449, 16, !mcsema_real_eip !108
  %451 = icmp ne i32 %450, 0, !mcsema_real_eip !108
  store i1 %451, i1* %AF_val, !mcsema_real_eip !108
  %452 = icmp slt i32 %447, 0
  store i1 %452, i1* %SF_val, !mcsema_real_eip !108
  %453 = icmp eq i32 %447, 0, !mcsema_real_eip !108
  store i1 %453, i1* %ZF_val, !mcsema_real_eip !108
  %454 = xor i32 %_new_load_511, -2147483648, !mcsema_real_eip !108
  %455 = xor i32 %454, %446, !mcsema_real_eip !108
  %456 = and i32 %448, %455, !mcsema_real_eip !108
  %457 = icmp slt i32 %456, 0
  store i1 %457, i1* %OF_val, !mcsema_real_eip !108
  %458 = trunc i32 %447 to i8, !mcsema_real_eip !108
  %459 = tail call i8 @llvm.ctpop.i8(i8 %458), !mcsema_real_eip !108
  %460 = and i8 %459, 1
  %461 = icmp eq i8 %460, 0
  store i1 %461, i1* %PF_val, !mcsema_real_eip !108
  %462 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %462, i1* %CF_val, !mcsema_real_eip !108
  %463 = zext i32 %447 to i64, !mcsema_real_eip !108
  store i64 %463, i64* %R8_val, !mcsema_real_eip !108
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %464 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -104
  %465 = add i64 %464, -104, !mcsema_real_eip !109
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %466 = inttoptr i64 %465 to i64*, !mcsema_real_eip !109
  %_ptr_to_int_512 = ptrtoint i64* %_allin_new_bt_97 to i64
  %_local_end_to_int_513 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_514 = bitcast i64* %_allin_new_bt_97 to i8*
  %_offset_above_rbp_515 = sub i64 %_ptr_to_int_512, %_local_end_to_int_513
  %_pot_address_in_parent_stack_516 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_515
  %_cond1_517 = icmp ugt i8* %_ptr_bt_514, %_local_stack_end_ptr_
  %_cond2_1_518 = icmp ugt i8* %_ptr_bt_514, %_parent_stack_end_ptr_
  %_cond2_2_519 = icmp ult i8* %_ptr_bt_514, %_parent_stack_start_ptr_
  %_cond2_520 = or i1 %_cond2_1_518, %_cond2_2_519
  %_cond4_521 = icmp ule i8* %_pot_address_in_parent_stack_516, %_parent_stack_end_ptr_
  %_cond1_n_cond2_522 = and i1 %_cond1_517, %_cond2_520
  %_cond1_n_cond2_cond3_523 = and i1 %_cond1_n_cond2_522, %_cond4_521
  br i1 %_cond1_n_cond2_cond3_523, label %467, label %468

; <label>:467:                                    ; preds = %443
  %_address_in_parent_stack_524 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_515
  %_address_in_parent_stack_bt_525 = bitcast i8* %_address_in_parent_stack_524 to i64*
  br label %468

; <label>:468:                                    ; preds = %443, %467
  %469 = phi i64* [ %_allin_new_bt_97, %443 ], [ %_address_in_parent_stack_bt_525, %467 ]
  %_new_load_526 = load i64, i64* %469
  store i64 %_new_load_526, i64* %RCX_val, !mcsema_real_eip !109
  %470 = add i64 %_new_load_526, 4, !mcsema_real_eip !110
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !110
  %472 = bitcast i64* %471 to i32*
  %_ptr_to_int_527 = ptrtoint i32* %472 to i64
  %_local_end_to_int_528 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_529 = bitcast i32* %472 to i8*
  %_offset_above_rbp_530 = sub i64 %_ptr_to_int_527, %_local_end_to_int_528
  %_pot_address_in_parent_stack_531 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_530
  %_cond1_532 = icmp ugt i8* %_ptr_bt_529, %_local_stack_end_ptr_
  %_cond2_1_533 = icmp ugt i8* %_ptr_bt_529, %_parent_stack_end_ptr_
  %_cond2_2_534 = icmp ult i8* %_ptr_bt_529, %_parent_stack_start_ptr_
  %_cond2_535 = or i1 %_cond2_1_533, %_cond2_2_534
  %_cond4_536 = icmp ule i8* %_pot_address_in_parent_stack_531, %_parent_stack_end_ptr_
  %_cond1_n_cond2_537 = and i1 %_cond1_532, %_cond2_535
  %_cond1_n_cond2_cond3_538 = and i1 %_cond1_n_cond2_537, %_cond4_536
  br i1 %_cond1_n_cond2_cond3_538, label %473, label %474

; <label>:473:                                    ; preds = %468
  %_address_in_parent_stack_539 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_530
  %_address_in_parent_stack_bt_540 = bitcast i8* %_address_in_parent_stack_539 to i32*
  br label %474

; <label>:474:                                    ; preds = %468, %473
  %475 = phi i32* [ %472, %468 ], [ %_address_in_parent_stack_bt_540, %473 ]
  %_new_load_541 = load i32, i32* %475
  %476 = load i64, i64* %R8_val, !mcsema_real_eip !110
  %477 = trunc i64 %476 to i32, !mcsema_real_eip !110
  %478 = add i32 %477, %_new_load_541
  %479 = zext i32 %478 to i64, !mcsema_real_eip !110
  store i64 %479, i64* %R8_val, !mcsema_real_eip !110
  %480 = load i64, i64* %RSI_val, !mcsema_real_eip !111
  %481 = trunc i64 %480 to i32, !mcsema_real_eip !111
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %478, i32 %481)
  %482 = extractvalue { i32, i1 } %uadd78, 0
  %483 = xor i32 %482, %481, !mcsema_real_eip !111
  %484 = xor i32 %483, %478, !mcsema_real_eip !111
  %485 = and i32 %484, 16, !mcsema_real_eip !111
  %486 = icmp ne i32 %485, 0, !mcsema_real_eip !111
  store i1 %486, i1* %AF_val, !mcsema_real_eip !111
  %487 = icmp slt i32 %482, 0
  store i1 %487, i1* %SF_val, !mcsema_real_eip !111
  %488 = icmp eq i32 %482, 0, !mcsema_real_eip !111
  store i1 %488, i1* %ZF_val, !mcsema_real_eip !111
  %489 = xor i32 %478, -2147483648, !mcsema_real_eip !111
  %490 = xor i32 %489, %481, !mcsema_real_eip !111
  %491 = and i32 %483, %490, !mcsema_real_eip !111
  %492 = icmp slt i32 %491, 0
  store i1 %492, i1* %OF_val, !mcsema_real_eip !111
  %493 = trunc i32 %482 to i8, !mcsema_real_eip !111
  %494 = tail call i8 @llvm.ctpop.i8(i8 %493), !mcsema_real_eip !111
  %495 = and i8 %494, 1
  %496 = icmp eq i8 %495, 0
  store i1 %496, i1* %PF_val, !mcsema_real_eip !111
  %497 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %497, i1* %CF_val, !mcsema_real_eip !111
  %498 = zext i32 %482 to i64, !mcsema_real_eip !111
  store i64 %498, i64* %RSI_val, !mcsema_real_eip !111
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %499 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -112
  %500 = add i64 %499, -112, !mcsema_real_eip !112
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %501 = inttoptr i64 %500 to i64*, !mcsema_real_eip !112
  %_ptr_to_int_542 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_local_end_to_int_543 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_544 = bitcast i64* %_allin_new_bt_100 to i8*
  %_offset_above_rbp_545 = sub i64 %_ptr_to_int_542, %_local_end_to_int_543
  %_pot_address_in_parent_stack_546 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_545
  %_cond1_547 = icmp ugt i8* %_ptr_bt_544, %_local_stack_end_ptr_
  %_cond2_1_548 = icmp ugt i8* %_ptr_bt_544, %_parent_stack_end_ptr_
  %_cond2_2_549 = icmp ult i8* %_ptr_bt_544, %_parent_stack_start_ptr_
  %_cond2_550 = or i1 %_cond2_1_548, %_cond2_2_549
  %_cond4_551 = icmp ule i8* %_pot_address_in_parent_stack_546, %_parent_stack_end_ptr_
  %_cond1_n_cond2_552 = and i1 %_cond1_547, %_cond2_550
  %_cond1_n_cond2_cond3_553 = and i1 %_cond1_n_cond2_552, %_cond4_551
  br i1 %_cond1_n_cond2_cond3_553, label %502, label %503

; <label>:502:                                    ; preds = %474
  %_address_in_parent_stack_554 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_545
  %_address_in_parent_stack_bt_555 = bitcast i8* %_address_in_parent_stack_554 to i64*
  br label %503

; <label>:503:                                    ; preds = %474, %502
  %504 = phi i64* [ %_allin_new_bt_100, %474 ], [ %_address_in_parent_stack_bt_555, %502 ]
  %_new_load_556 = load i64, i64* %504
  store i64 %_new_load_556, i64* %RCX_val, !mcsema_real_eip !112
  %505 = add i64 %_new_load_556, 4, !mcsema_real_eip !113
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !113
  %507 = load i64, i64* %RSI_val, !mcsema_real_eip !113
  %508 = trunc i64 %507 to i32, !mcsema_real_eip !113
  %509 = bitcast i64* %506 to i32*
  store i32 %508, i32* %509, !mcsema_real_eip !113
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %510 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -32
  %511 = add i64 %510, -32, !mcsema_real_eip !114
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !114
  %513 = bitcast i64* %_allin_new_bt_103 to i32*
  %_ptr_to_int_557 = ptrtoint i32* %513 to i64
  %_local_end_to_int_558 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_559 = bitcast i32* %513 to i8*
  %_offset_above_rbp_560 = sub i64 %_ptr_to_int_557, %_local_end_to_int_558
  %_pot_address_in_parent_stack_561 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_560
  %_cond1_562 = icmp ugt i8* %_ptr_bt_559, %_local_stack_end_ptr_
  %_cond2_1_563 = icmp ugt i8* %_ptr_bt_559, %_parent_stack_end_ptr_
  %_cond2_2_564 = icmp ult i8* %_ptr_bt_559, %_parent_stack_start_ptr_
  %_cond2_565 = or i1 %_cond2_1_563, %_cond2_2_564
  %_cond4_566 = icmp ule i8* %_pot_address_in_parent_stack_561, %_parent_stack_end_ptr_
  %_cond1_n_cond2_567 = and i1 %_cond1_562, %_cond2_565
  %_cond1_n_cond2_cond3_568 = and i1 %_cond1_n_cond2_567, %_cond4_566
  br i1 %_cond1_n_cond2_cond3_568, label %514, label %515

; <label>:514:                                    ; preds = %503
  %_address_in_parent_stack_569 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_560
  %_address_in_parent_stack_bt_570 = bitcast i8* %_address_in_parent_stack_569 to i32*
  br label %515

; <label>:515:                                    ; preds = %503, %514
  %516 = phi i32* [ %513, %503 ], [ %_address_in_parent_stack_bt_570, %514 ]
  %_new_load_571 = load i32, i32* %516
  %517 = zext i32 %_new_load_571 to i64, !mcsema_real_eip !114
  store i64 %517, i64* %RSI_val, !mcsema_real_eip !114
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %518 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -64
  %519 = add i64 %518, -64, !mcsema_real_eip !115
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !115
  %_ptr_to_int_572 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_local_end_to_int_573 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_574 = bitcast i64* %_allin_new_bt_106 to i8*
  %_offset_above_rbp_575 = sub i64 %_ptr_to_int_572, %_local_end_to_int_573
  %_pot_address_in_parent_stack_576 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_575
  %_cond1_577 = icmp ugt i8* %_ptr_bt_574, %_local_stack_end_ptr_
  %_cond2_1_578 = icmp ugt i8* %_ptr_bt_574, %_parent_stack_end_ptr_
  %_cond2_2_579 = icmp ult i8* %_ptr_bt_574, %_parent_stack_start_ptr_
  %_cond2_580 = or i1 %_cond2_1_578, %_cond2_2_579
  %_cond4_581 = icmp ule i8* %_pot_address_in_parent_stack_576, %_parent_stack_end_ptr_
  %_cond1_n_cond2_582 = and i1 %_cond1_577, %_cond2_580
  %_cond1_n_cond2_cond3_583 = and i1 %_cond1_n_cond2_582, %_cond4_581
  br i1 %_cond1_n_cond2_cond3_583, label %521, label %522

; <label>:521:                                    ; preds = %515
  %_address_in_parent_stack_584 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_575
  %_address_in_parent_stack_bt_585 = bitcast i8* %_address_in_parent_stack_584 to i64*
  br label %522

; <label>:522:                                    ; preds = %515, %521
  %523 = phi i64* [ %_allin_new_bt_106, %515 ], [ %_address_in_parent_stack_bt_585, %521 ]
  %_new_load_586 = load i64, i64* %523
  store i64 %_new_load_586, i64* %RCX_val, !mcsema_real_eip !115
  %524 = add i64 %_new_load_586, 8, !mcsema_real_eip !116
  %525 = inttoptr i64 %524 to i64*, !mcsema_real_eip !116
  %526 = bitcast i64* %525 to i32*
  %_ptr_to_int_587 = ptrtoint i32* %526 to i64
  %_local_end_to_int_588 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_589 = bitcast i32* %526 to i8*
  %_offset_above_rbp_590 = sub i64 %_ptr_to_int_587, %_local_end_to_int_588
  %_pot_address_in_parent_stack_591 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_590
  %_cond1_592 = icmp ugt i8* %_ptr_bt_589, %_local_stack_end_ptr_
  %_cond2_1_593 = icmp ugt i8* %_ptr_bt_589, %_parent_stack_end_ptr_
  %_cond2_2_594 = icmp ult i8* %_ptr_bt_589, %_parent_stack_start_ptr_
  %_cond2_595 = or i1 %_cond2_1_593, %_cond2_2_594
  %_cond4_596 = icmp ule i8* %_pot_address_in_parent_stack_591, %_parent_stack_end_ptr_
  %_cond1_n_cond2_597 = and i1 %_cond1_592, %_cond2_595
  %_cond1_n_cond2_cond3_598 = and i1 %_cond1_n_cond2_597, %_cond4_596
  br i1 %_cond1_n_cond2_cond3_598, label %527, label %528

; <label>:527:                                    ; preds = %522
  %_address_in_parent_stack_599 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_590
  %_address_in_parent_stack_bt_600 = bitcast i8* %_address_in_parent_stack_599 to i32*
  br label %528

; <label>:528:                                    ; preds = %522, %527
  %529 = phi i32* [ %526, %522 ], [ %_address_in_parent_stack_bt_600, %527 ]
  %_new_load_601 = load i32, i32* %529
  %530 = load i64, i64* %RSI_val, !mcsema_real_eip !116
  %531 = trunc i64 %530 to i32, !mcsema_real_eip !116
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %531, i32 %_new_load_601)
  %532 = extractvalue { i32, i1 } %uadd79, 0
  %533 = xor i32 %532, %_new_load_601, !mcsema_real_eip !116
  %534 = xor i32 %533, %531, !mcsema_real_eip !116
  %535 = and i32 %534, 16, !mcsema_real_eip !116
  %536 = icmp ne i32 %535, 0, !mcsema_real_eip !116
  store i1 %536, i1* %AF_val, !mcsema_real_eip !116
  %537 = icmp slt i32 %532, 0
  store i1 %537, i1* %SF_val, !mcsema_real_eip !116
  %538 = icmp eq i32 %532, 0, !mcsema_real_eip !116
  store i1 %538, i1* %ZF_val, !mcsema_real_eip !116
  %539 = xor i32 %_new_load_601, -2147483648, !mcsema_real_eip !116
  %540 = xor i32 %539, %531, !mcsema_real_eip !116
  %541 = and i32 %533, %540, !mcsema_real_eip !116
  %542 = icmp slt i32 %541, 0
  store i1 %542, i1* %OF_val, !mcsema_real_eip !116
  %543 = trunc i32 %532 to i8, !mcsema_real_eip !116
  %544 = tail call i8 @llvm.ctpop.i8(i8 %543), !mcsema_real_eip !116
  %545 = and i8 %544, 1
  %546 = icmp eq i8 %545, 0
  store i1 %546, i1* %PF_val, !mcsema_real_eip !116
  %547 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %547, i1* %CF_val, !mcsema_real_eip !116
  %548 = zext i32 %532 to i64, !mcsema_real_eip !116
  store i64 %548, i64* %RSI_val, !mcsema_real_eip !116
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %549 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -72
  %550 = add i64 %549, -72, !mcsema_real_eip !117
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %551 = inttoptr i64 %550 to i64*, !mcsema_real_eip !117
  %_ptr_to_int_602 = ptrtoint i64* %_allin_new_bt_109 to i64
  %_local_end_to_int_603 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_604 = bitcast i64* %_allin_new_bt_109 to i8*
  %_offset_above_rbp_605 = sub i64 %_ptr_to_int_602, %_local_end_to_int_603
  %_pot_address_in_parent_stack_606 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_605
  %_cond1_607 = icmp ugt i8* %_ptr_bt_604, %_local_stack_end_ptr_
  %_cond2_1_608 = icmp ugt i8* %_ptr_bt_604, %_parent_stack_end_ptr_
  %_cond2_2_609 = icmp ult i8* %_ptr_bt_604, %_parent_stack_start_ptr_
  %_cond2_610 = or i1 %_cond2_1_608, %_cond2_2_609
  %_cond4_611 = icmp ule i8* %_pot_address_in_parent_stack_606, %_parent_stack_end_ptr_
  %_cond1_n_cond2_612 = and i1 %_cond1_607, %_cond2_610
  %_cond1_n_cond2_cond3_613 = and i1 %_cond1_n_cond2_612, %_cond4_611
  br i1 %_cond1_n_cond2_cond3_613, label %552, label %553

; <label>:552:                                    ; preds = %528
  %_address_in_parent_stack_614 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_605
  %_address_in_parent_stack_bt_615 = bitcast i8* %_address_in_parent_stack_614 to i64*
  br label %553

; <label>:553:                                    ; preds = %528, %552
  %554 = phi i64* [ %_allin_new_bt_109, %528 ], [ %_address_in_parent_stack_bt_615, %552 ]
  %_new_load_616 = load i64, i64* %554
  store i64 %_new_load_616, i64* %RCX_val, !mcsema_real_eip !117
  %555 = add i64 %_new_load_616, 8, !mcsema_real_eip !118
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !118
  %557 = bitcast i64* %556 to i32*
  %_ptr_to_int_617 = ptrtoint i32* %557 to i64
  %_local_end_to_int_618 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_619 = bitcast i32* %557 to i8*
  %_offset_above_rbp_620 = sub i64 %_ptr_to_int_617, %_local_end_to_int_618
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_ptr_bt_619, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_ptr_bt_619, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_ptr_bt_619, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond1_n_cond2_627, %_cond4_626
  br i1 %_cond1_n_cond2_cond3_628, label %558, label %559

; <label>:558:                                    ; preds = %553
  %_address_in_parent_stack_629 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_address_in_parent_stack_bt_630 = bitcast i8* %_address_in_parent_stack_629 to i32*
  br label %559

; <label>:559:                                    ; preds = %553, %558
  %560 = phi i32* [ %557, %553 ], [ %_address_in_parent_stack_bt_630, %558 ]
  %_new_load_631 = load i32, i32* %560
  %561 = load i64, i64* %RSI_val, !mcsema_real_eip !118
  %562 = trunc i64 %561 to i32, !mcsema_real_eip !118
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %562, i32 %_new_load_631)
  %563 = extractvalue { i32, i1 } %uadd80, 0
  %564 = xor i32 %563, %_new_load_631, !mcsema_real_eip !118
  %565 = xor i32 %564, %562, !mcsema_real_eip !118
  %566 = and i32 %565, 16, !mcsema_real_eip !118
  %567 = icmp ne i32 %566, 0, !mcsema_real_eip !118
  store i1 %567, i1* %AF_val, !mcsema_real_eip !118
  %568 = icmp slt i32 %563, 0
  store i1 %568, i1* %SF_val, !mcsema_real_eip !118
  %569 = icmp eq i32 %563, 0, !mcsema_real_eip !118
  store i1 %569, i1* %ZF_val, !mcsema_real_eip !118
  %570 = xor i32 %_new_load_631, -2147483648, !mcsema_real_eip !118
  %571 = xor i32 %570, %562, !mcsema_real_eip !118
  %572 = and i32 %564, %571, !mcsema_real_eip !118
  %573 = icmp slt i32 %572, 0
  store i1 %573, i1* %OF_val, !mcsema_real_eip !118
  %574 = trunc i32 %563 to i8, !mcsema_real_eip !118
  %575 = tail call i8 @llvm.ctpop.i8(i8 %574), !mcsema_real_eip !118
  %576 = and i8 %575, 1
  %577 = icmp eq i8 %576, 0
  store i1 %577, i1* %PF_val, !mcsema_real_eip !118
  %578 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %578, i1* %CF_val, !mcsema_real_eip !118
  %579 = zext i32 %563 to i64, !mcsema_real_eip !118
  store i64 %579, i64* %RSI_val, !mcsema_real_eip !118
  %580 = load i64, i64* %RAX_val, !mcsema_real_eip !119
  %581 = add i64 %580, 8, !mcsema_real_eip !119
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !119
  %583 = bitcast i64* %582 to i32*
  %_ptr_to_int_632 = ptrtoint i32* %583 to i64
  %_local_end_to_int_633 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_634 = bitcast i32* %583 to i8*
  %_offset_above_rbp_635 = sub i64 %_ptr_to_int_632, %_local_end_to_int_633
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_ptr_bt_634, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_ptr_bt_634, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_ptr_bt_634, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond1_n_cond2_642, %_cond4_641
  br i1 %_cond1_n_cond2_cond3_643, label %584, label %585

; <label>:584:                                    ; preds = %559
  %_address_in_parent_stack_644 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_address_in_parent_stack_bt_645 = bitcast i8* %_address_in_parent_stack_644 to i32*
  br label %585

; <label>:585:                                    ; preds = %559, %584
  %586 = phi i32* [ %583, %559 ], [ %_address_in_parent_stack_bt_645, %584 ]
  %_new_load_646 = load i32, i32* %586
  %587 = zext i32 %_new_load_646 to i64, !mcsema_real_eip !119
  store i64 %587, i64* %R8_val, !mcsema_real_eip !119
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %588 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -96
  %589 = add i64 %588, -96, !mcsema_real_eip !120
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !120
  %_ptr_to_int_647 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_local_end_to_int_648 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_649 = bitcast i64* %_allin_new_bt_112 to i8*
  %_offset_above_rbp_650 = sub i64 %_ptr_to_int_647, %_local_end_to_int_648
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_ptr_bt_649, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_ptr_bt_649, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_ptr_bt_649, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond1_n_cond2_657, %_cond4_656
  br i1 %_cond1_n_cond2_cond3_658, label %591, label %592

; <label>:591:                                    ; preds = %585
  %_address_in_parent_stack_659 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_address_in_parent_stack_bt_660 = bitcast i8* %_address_in_parent_stack_659 to i64*
  br label %592

; <label>:592:                                    ; preds = %585, %591
  %593 = phi i64* [ %_allin_new_bt_112, %585 ], [ %_address_in_parent_stack_bt_660, %591 ]
  %_new_load_661 = load i64, i64* %593
  store i64 %_new_load_661, i64* %RCX_val, !mcsema_real_eip !120
  %594 = add i64 %_new_load_661, 8, !mcsema_real_eip !121
  %595 = inttoptr i64 %594 to i64*, !mcsema_real_eip !121
  %596 = bitcast i64* %595 to i32*
  %_ptr_to_int_662 = ptrtoint i32* %596 to i64
  %_local_end_to_int_663 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_664 = bitcast i32* %596 to i8*
  %_offset_above_rbp_665 = sub i64 %_ptr_to_int_662, %_local_end_to_int_663
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_ptr_bt_664, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_ptr_bt_664, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_ptr_bt_664, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond1_n_cond2_672, %_cond4_671
  br i1 %_cond1_n_cond2_cond3_673, label %597, label %598

; <label>:597:                                    ; preds = %592
  %_address_in_parent_stack_674 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_address_in_parent_stack_bt_675 = bitcast i8* %_address_in_parent_stack_674 to i32*
  br label %598

; <label>:598:                                    ; preds = %592, %597
  %599 = phi i32* [ %596, %592 ], [ %_address_in_parent_stack_bt_675, %597 ]
  %_new_load_676 = load i32, i32* %599
  %600 = load i64, i64* %R8_val, !mcsema_real_eip !121
  %601 = trunc i64 %600 to i32, !mcsema_real_eip !121
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %601, i32 %_new_load_676)
  %602 = extractvalue { i32, i1 } %uadd81, 0
  %603 = xor i32 %602, %_new_load_676, !mcsema_real_eip !121
  %604 = xor i32 %603, %601, !mcsema_real_eip !121
  %605 = and i32 %604, 16, !mcsema_real_eip !121
  %606 = icmp ne i32 %605, 0, !mcsema_real_eip !121
  store i1 %606, i1* %AF_val, !mcsema_real_eip !121
  %607 = icmp slt i32 %602, 0
  store i1 %607, i1* %SF_val, !mcsema_real_eip !121
  %608 = icmp eq i32 %602, 0, !mcsema_real_eip !121
  store i1 %608, i1* %ZF_val, !mcsema_real_eip !121
  %609 = xor i32 %_new_load_676, -2147483648, !mcsema_real_eip !121
  %610 = xor i32 %609, %601, !mcsema_real_eip !121
  %611 = and i32 %603, %610, !mcsema_real_eip !121
  %612 = icmp slt i32 %611, 0
  store i1 %612, i1* %OF_val, !mcsema_real_eip !121
  %613 = trunc i32 %602 to i8, !mcsema_real_eip !121
  %614 = tail call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !121
  %615 = and i8 %614, 1
  %616 = icmp eq i8 %615, 0
  store i1 %616, i1* %PF_val, !mcsema_real_eip !121
  %617 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %617, i1* %CF_val, !mcsema_real_eip !121
  %618 = zext i32 %602 to i64, !mcsema_real_eip !121
  store i64 %618, i64* %R8_val, !mcsema_real_eip !121
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %619 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -104
  %620 = add i64 %619, -104, !mcsema_real_eip !122
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !122
  %_ptr_to_int_677 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_local_end_to_int_678 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_679 = bitcast i64* %_allin_new_bt_115 to i8*
  %_offset_above_rbp_680 = sub i64 %_ptr_to_int_677, %_local_end_to_int_678
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_ptr_bt_679, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_ptr_bt_679, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_ptr_bt_679, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond1_n_cond2_687, %_cond4_686
  br i1 %_cond1_n_cond2_cond3_688, label %622, label %623

; <label>:622:                                    ; preds = %598
  %_address_in_parent_stack_689 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_address_in_parent_stack_bt_690 = bitcast i8* %_address_in_parent_stack_689 to i64*
  br label %623

; <label>:623:                                    ; preds = %598, %622
  %624 = phi i64* [ %_allin_new_bt_115, %598 ], [ %_address_in_parent_stack_bt_690, %622 ]
  %_new_load_691 = load i64, i64* %624
  store i64 %_new_load_691, i64* %RCX_val, !mcsema_real_eip !122
  %625 = add i64 %_new_load_691, 8, !mcsema_real_eip !123
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !123
  %627 = bitcast i64* %626 to i32*
  %_ptr_to_int_692 = ptrtoint i32* %627 to i64
  %_local_end_to_int_693 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_694 = bitcast i32* %627 to i8*
  %_offset_above_rbp_695 = sub i64 %_ptr_to_int_692, %_local_end_to_int_693
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_ptr_bt_694, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_ptr_bt_694, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_ptr_bt_694, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond1_n_cond2_702, %_cond4_701
  br i1 %_cond1_n_cond2_cond3_703, label %628, label %629

; <label>:628:                                    ; preds = %623
  %_address_in_parent_stack_704 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_address_in_parent_stack_bt_705 = bitcast i8* %_address_in_parent_stack_704 to i32*
  br label %629

; <label>:629:                                    ; preds = %623, %628
  %630 = phi i32* [ %627, %623 ], [ %_address_in_parent_stack_bt_705, %628 ]
  %_new_load_706 = load i32, i32* %630
  %631 = load i64, i64* %R8_val, !mcsema_real_eip !123
  %632 = trunc i64 %631 to i32, !mcsema_real_eip !123
  %633 = add i32 %632, %_new_load_706
  %634 = zext i32 %633 to i64, !mcsema_real_eip !123
  store i64 %634, i64* %R8_val, !mcsema_real_eip !123
  %635 = load i64, i64* %RSI_val, !mcsema_real_eip !124
  %636 = trunc i64 %635 to i32, !mcsema_real_eip !124
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %633, i32 %636)
  %637 = extractvalue { i32, i1 } %uadd83, 0
  %638 = xor i32 %637, %636, !mcsema_real_eip !124
  %639 = xor i32 %638, %633, !mcsema_real_eip !124
  %640 = and i32 %639, 16, !mcsema_real_eip !124
  %641 = icmp ne i32 %640, 0, !mcsema_real_eip !124
  store i1 %641, i1* %AF_val, !mcsema_real_eip !124
  %642 = icmp slt i32 %637, 0
  store i1 %642, i1* %SF_val, !mcsema_real_eip !124
  %643 = icmp eq i32 %637, 0, !mcsema_real_eip !124
  store i1 %643, i1* %ZF_val, !mcsema_real_eip !124
  %644 = xor i32 %633, -2147483648, !mcsema_real_eip !124
  %645 = xor i32 %644, %636, !mcsema_real_eip !124
  %646 = and i32 %638, %645, !mcsema_real_eip !124
  %647 = icmp slt i32 %646, 0
  store i1 %647, i1* %OF_val, !mcsema_real_eip !124
  %648 = trunc i32 %637 to i8, !mcsema_real_eip !124
  %649 = tail call i8 @llvm.ctpop.i8(i8 %648), !mcsema_real_eip !124
  %650 = and i8 %649, 1
  %651 = icmp eq i8 %650, 0
  store i1 %651, i1* %PF_val, !mcsema_real_eip !124
  %652 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %652, i1* %CF_val, !mcsema_real_eip !124
  %653 = zext i32 %637 to i64, !mcsema_real_eip !124
  store i64 %653, i64* %RSI_val, !mcsema_real_eip !124
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %654 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -112
  %655 = add i64 %654, -112, !mcsema_real_eip !125
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %656 = inttoptr i64 %655 to i64*, !mcsema_real_eip !125
  %_ptr_to_int_707 = ptrtoint i64* %_allin_new_bt_118 to i64
  %_local_end_to_int_708 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_709 = bitcast i64* %_allin_new_bt_118 to i8*
  %_offset_above_rbp_710 = sub i64 %_ptr_to_int_707, %_local_end_to_int_708
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_ptr_bt_709, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_ptr_bt_709, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_ptr_bt_709, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  br i1 %_cond1_n_cond2_cond3_718, label %657, label %658

; <label>:657:                                    ; preds = %629
  %_address_in_parent_stack_719 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_address_in_parent_stack_bt_720 = bitcast i8* %_address_in_parent_stack_719 to i64*
  br label %658

; <label>:658:                                    ; preds = %629, %657
  %659 = phi i64* [ %_allin_new_bt_118, %629 ], [ %_address_in_parent_stack_bt_720, %657 ]
  %_new_load_721 = load i64, i64* %659
  store i64 %_new_load_721, i64* %RCX_val, !mcsema_real_eip !125
  %660 = add i64 %_new_load_721, 8, !mcsema_real_eip !126
  %661 = inttoptr i64 %660 to i64*, !mcsema_real_eip !126
  %662 = load i64, i64* %RSI_val, !mcsema_real_eip !126
  %663 = trunc i64 %662 to i32, !mcsema_real_eip !126
  %664 = bitcast i64* %661 to i32*
  store i32 %663, i32* %664, !mcsema_real_eip !126
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %665 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -112
  %666 = add i64 %665, -112, !mcsema_real_eip !127
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %667 = inttoptr i64 %666 to i64*, !mcsema_real_eip !127
  %_ptr_to_int_722 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_local_end_to_int_723 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_724 = bitcast i64* %_allin_new_bt_121 to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %_local_end_to_int_723
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  br i1 %_cond1_n_cond2_cond3_733, label %668, label %669

; <label>:668:                                    ; preds = %658
  %_address_in_parent_stack_734 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_address_in_parent_stack_bt_735 = bitcast i8* %_address_in_parent_stack_734 to i64*
  br label %669

; <label>:669:                                    ; preds = %658, %668
  %670 = phi i64* [ %_allin_new_bt_121, %658 ], [ %_address_in_parent_stack_bt_735, %668 ]
  %_new_load_736 = load i64, i64* %670
  store i64 %_new_load_736, i64* %RAX_val, !mcsema_real_eip !127
  %_load_rsp_ptr_122 = load i8*, i8** %_RSP_ptr_
  %671 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %_new_gep_123 = getelementptr i8, i8* %_load_rsp_ptr_122, i64 104
  %uadd84 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %671, i64 104)
  %672 = extractvalue { i64, i1 } %uadd84, 0
  %673 = xor i64 %672, %671, !mcsema_real_eip !128
  %674 = and i64 %673, 16, !mcsema_real_eip !128
  %675 = icmp ne i64 %674, 0, !mcsema_real_eip !128
  store i1 %675, i1* %AF_val, !mcsema_real_eip !128
  %676 = icmp slt i64 %672, 0
  store i1 %676, i1* %SF_val, !mcsema_real_eip !128
  %677 = icmp eq i64 %672, 0, !mcsema_real_eip !128
  store i1 %677, i1* %ZF_val, !mcsema_real_eip !128
  %678 = xor i64 %671, -9223372036854775808, !mcsema_real_eip !128
  %679 = and i64 %673, %678, !mcsema_real_eip !128
  %680 = icmp slt i64 %679, 0
  store i1 %680, i1* %OF_val, !mcsema_real_eip !128
  %681 = trunc i64 %672 to i8, !mcsema_real_eip !128
  %682 = tail call i8 @llvm.ctpop.i8(i8 %681), !mcsema_real_eip !128
  %683 = and i8 %682, 1
  %684 = icmp eq i8 %683, 0
  store i1 %684, i1* %PF_val, !mcsema_real_eip !128
  %685 = extractvalue { i64, i1 } %uadd84, 1
  %_new_ptr2int_124 = ptrtoint i8* %_new_gep_123 to i1
  store volatile i1 %_new_ptr2int_124, i1* %CF_val
  store volatile i8* %_new_gep_123, i8** %_RSP_ptr_
  store i64 %672, i64* %RSP_val, !mcsema_real_eip !128
  %_allin_new_bt_125 = bitcast i8* %_new_gep_123 to i64*
  %686 = inttoptr i64 %672 to i64*, !mcsema_real_eip !129
  %_ptr_to_int_737 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_local_end_to_int_738 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_739 = bitcast i64* %_allin_new_bt_125 to i8*
  %_offset_above_rbp_740 = sub i64 %_ptr_to_int_737, %_local_end_to_int_738
  %_pot_address_in_parent_stack_741 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_740
  %_cond1_742 = icmp ugt i8* %_ptr_bt_739, %_local_stack_end_ptr_
  %_cond2_1_743 = icmp ugt i8* %_ptr_bt_739, %_parent_stack_end_ptr_
  %_cond2_2_744 = icmp ult i8* %_ptr_bt_739, %_parent_stack_start_ptr_
  %_cond2_745 = or i1 %_cond2_1_743, %_cond2_2_744
  %_cond4_746 = icmp ule i8* %_pot_address_in_parent_stack_741, %_parent_stack_end_ptr_
  %_cond1_n_cond2_747 = and i1 %_cond1_742, %_cond2_745
  %_cond1_n_cond2_cond3_748 = and i1 %_cond1_n_cond2_747, %_cond4_746
  br i1 %_cond1_n_cond2_cond3_748, label %687, label %688

; <label>:687:                                    ; preds = %669
  %_address_in_parent_stack_749 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_740
  %_address_in_parent_stack_bt_750 = bitcast i8* %_address_in_parent_stack_749 to i64*
  br label %688

; <label>:688:                                    ; preds = %669, %687
  %689 = phi i64* [ %_allin_new_bt_125, %669 ], [ %_address_in_parent_stack_bt_750, %687 ]
  %_new_load_751 = load i64, i64* %689
  store i64 %_new_load_751, i64* %RBX_val, !mcsema_real_eip !129
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_123, i64 8
  %690 = add i64 %672, 8, !mcsema_real_eip !129
  store volatile i8* %_new_gep_126, i8** %_RSP_ptr_
  store i64 %690, i64* %RSP_val, !mcsema_real_eip !129
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %691 = inttoptr i64 %690 to i64*, !mcsema_real_eip !130
  %_ptr_to_int_752 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_local_end_to_int_753 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_754 = bitcast i64* %_allin_new_bt_127 to i8*
  %_offset_above_rbp_755 = sub i64 %_ptr_to_int_752, %_local_end_to_int_753
  %_pot_address_in_parent_stack_756 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_755
  %_cond1_757 = icmp ugt i8* %_ptr_bt_754, %_local_stack_end_ptr_
  %_cond2_1_758 = icmp ugt i8* %_ptr_bt_754, %_parent_stack_end_ptr_
  %_cond2_2_759 = icmp ult i8* %_ptr_bt_754, %_parent_stack_start_ptr_
  %_cond2_760 = or i1 %_cond2_1_758, %_cond2_2_759
  %_cond4_761 = icmp ule i8* %_pot_address_in_parent_stack_756, %_parent_stack_end_ptr_
  %_cond1_n_cond2_762 = and i1 %_cond1_757, %_cond2_760
  %_cond1_n_cond2_cond3_763 = and i1 %_cond1_n_cond2_762, %_cond4_761
  br i1 %_cond1_n_cond2_cond3_763, label %692, label %693

; <label>:692:                                    ; preds = %688
  %_address_in_parent_stack_764 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_755
  %_address_in_parent_stack_bt_765 = bitcast i8* %_address_in_parent_stack_764 to i64*
  br label %693

; <label>:693:                                    ; preds = %688, %692
  %694 = phi i64* [ %_allin_new_bt_127, %688 ], [ %_address_in_parent_stack_bt_765, %692 ]
  %_new_load_766 = load i64, i64* %694
  store i64 %_new_load_766, i64* %R14_val, !mcsema_real_eip !130
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_123, i64 16
  %695 = add i64 %672, 16, !mcsema_real_eip !130
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_
  store i64 %695, i64* %RSP_val, !mcsema_real_eip !130
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %696 = inttoptr i64 %695 to i64*, !mcsema_real_eip !131
  %_ptr_to_int_767 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_local_end_to_int_768 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_769 = bitcast i64* %_allin_new_bt_129 to i8*
  %_offset_above_rbp_770 = sub i64 %_ptr_to_int_767, %_local_end_to_int_768
  %_pot_address_in_parent_stack_771 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_770
  %_cond1_772 = icmp ugt i8* %_ptr_bt_769, %_local_stack_end_ptr_
  %_cond2_1_773 = icmp ugt i8* %_ptr_bt_769, %_parent_stack_end_ptr_
  %_cond2_2_774 = icmp ult i8* %_ptr_bt_769, %_parent_stack_start_ptr_
  %_cond2_775 = or i1 %_cond2_1_773, %_cond2_2_774
  %_cond4_776 = icmp ule i8* %_pot_address_in_parent_stack_771, %_parent_stack_end_ptr_
  %_cond1_n_cond2_777 = and i1 %_cond1_772, %_cond2_775
  %_cond1_n_cond2_cond3_778 = and i1 %_cond1_n_cond2_777, %_cond4_776
  br i1 %_cond1_n_cond2_cond3_778, label %697, label %698

; <label>:697:                                    ; preds = %693
  %_address_in_parent_stack_779 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_770
  %_address_in_parent_stack_bt_780 = bitcast i8* %_address_in_parent_stack_779 to i64*
  br label %698

; <label>:698:                                    ; preds = %693, %697
  %699 = phi i64* [ %_allin_new_bt_129, %693 ], [ %_address_in_parent_stack_bt_780, %697 ]
  %_new_load_781 = load i64, i64* %699
  store i64 %_new_load_781, i64* %R15_val, !mcsema_real_eip !131
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_123, i64 24
  %700 = add i64 %672, 24, !mcsema_real_eip !131
  store volatile i8* %_new_gep_130, i8** %_RSP_ptr_
  store i64 %700, i64* %RSP_val, !mcsema_real_eip !131
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %701 = inttoptr i64 %700 to i64*, !mcsema_real_eip !132
  %_ptr_to_int_782 = ptrtoint i64* %_allin_new_bt_131 to i64
  %_local_end_to_int_783 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_784 = bitcast i64* %_allin_new_bt_131 to i8*
  %_offset_above_rbp_785 = sub i64 %_ptr_to_int_782, %_local_end_to_int_783
  %_pot_address_in_parent_stack_786 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_785
  %_cond1_787 = icmp ugt i8* %_ptr_bt_784, %_local_stack_end_ptr_
  %_cond2_1_788 = icmp ugt i8* %_ptr_bt_784, %_parent_stack_end_ptr_
  %_cond2_2_789 = icmp ult i8* %_ptr_bt_784, %_parent_stack_start_ptr_
  %_cond2_790 = or i1 %_cond2_1_788, %_cond2_2_789
  %_cond4_791 = icmp ule i8* %_pot_address_in_parent_stack_786, %_parent_stack_end_ptr_
  %_cond1_n_cond2_792 = and i1 %_cond1_787, %_cond2_790
  %_cond1_n_cond2_cond3_793 = and i1 %_cond1_n_cond2_792, %_cond4_791
  br i1 %_cond1_n_cond2_cond3_793, label %702, label %703

; <label>:702:                                    ; preds = %698
  %_address_in_parent_stack_794 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_785
  %_address_in_parent_stack_bt_795 = bitcast i8* %_address_in_parent_stack_794 to i64*
  br label %703

; <label>:703:                                    ; preds = %698, %702
  %704 = phi i64* [ %_allin_new_bt_131, %698 ], [ %_address_in_parent_stack_bt_795, %702 ]
  %_new_load_796 = load i64, i64* %704
  %_new_int2ptr_ = inttoptr i64 %_new_load_796 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_796, i64* %RBP_val, !mcsema_real_eip !132
  %_new_gep_132 = getelementptr i8, i8* %_new_gep_123, i64 40
  %705 = add i64 %672, 40, !mcsema_real_eip !133
  store volatile i8* %_new_gep_132, i8** %_RSP_ptr_
  store i64 %705, i64* %RSP_val, !mcsema_real_eip !133
  %706 = load i64, i64* %RAX_val, !mcsema_real_eip !133
  store i64 %706, i64* %RAX, !mcsema_real_eip !133
  %707 = load i64, i64* %RBX_val, !mcsema_real_eip !133
  store i64 %707, i64* %RBX, !mcsema_real_eip !133
  %708 = load i64, i64* %RCX_val, !mcsema_real_eip !133
  store i64 %708, i64* %RCX, !mcsema_real_eip !133
  %709 = load i64, i64* %RDX_val, !mcsema_real_eip !133
  store i64 %709, i64* %RDX, !mcsema_real_eip !133
  %710 = load i64, i64* %RSI_val, !mcsema_real_eip !133
  store i64 %710, i64* %RSI, !mcsema_real_eip !133
  %711 = load i64, i64* %RDI_val, !mcsema_real_eip !133
  store i64 %711, i64* %RDI, !mcsema_real_eip !133
  %_load_rsp_ptr_133 = load i8*, i8** %_RSP_ptr_
  %712 = load i64, i64* %RSP_val, !mcsema_real_eip !133
  %_new_ptr2int_134 = ptrtoint i8* %_load_rsp_ptr_133 to i64
  store volatile i64 %_new_ptr2int_134, i64* %RSP
  %_load_rbp_ptr_135 = load i8*, i8** %_RBP_ptr_
  %713 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  %_new_ptr2int_136 = ptrtoint i8* %_load_rbp_ptr_135 to i64
  store volatile i64 %_new_ptr2int_136, i64* %RBP
  %714 = load i64, i64* %R8_val, !mcsema_real_eip !133
  store i64 %714, i64* %R8, !mcsema_real_eip !133
  %715 = load i64, i64* %R9_val, !mcsema_real_eip !133
  store i64 %715, i64* %R9, !mcsema_real_eip !133
  %716 = load i64, i64* %R10_val, !mcsema_real_eip !133
  store i64 %716, i64* %R10, !mcsema_real_eip !133
  %717 = load i64, i64* %R11_val, !mcsema_real_eip !133
  store i64 %717, i64* %R11, !mcsema_real_eip !133
  %718 = load i64, i64* %R12_val, !mcsema_real_eip !133
  store i64 %718, i64* %R12, !mcsema_real_eip !133
  %719 = load i64, i64* %R13_val, !mcsema_real_eip !133
  store i64 %719, i64* %R13, !mcsema_real_eip !133
  %720 = load i64, i64* %R14_val, !mcsema_real_eip !133
  store i64 %720, i64* %R14, !mcsema_real_eip !133
  %721 = load i64, i64* %R15_val, !mcsema_real_eip !133
  store i64 %721, i64* %R15, !mcsema_real_eip !133
  %722 = load i64, i64* %RIP_val, !mcsema_real_eip !133
  store i64 %722, i64* %RIP, !mcsema_real_eip !133
  %723 = load i1, i1* %CF_val, !mcsema_real_eip !133
  store i1 %723, i1* %CF, align 1, !mcsema_real_eip !133
  %724 = load i1, i1* %PF_val, !mcsema_real_eip !133
  store i1 %724, i1* %PF, align 1, !mcsema_real_eip !133
  %725 = load i1, i1* %AF_val, !mcsema_real_eip !133
  store i1 %725, i1* %AF, align 1, !mcsema_real_eip !133
  %726 = load i1, i1* %ZF_val, !mcsema_real_eip !133
  store i1 %726, i1* %ZF, align 1, !mcsema_real_eip !133
  %727 = load i1, i1* %SF_val, !mcsema_real_eip !133
  store i1 %727, i1* %SF, align 1, !mcsema_real_eip !133
  %728 = load i1, i1* %OF_val, !mcsema_real_eip !133
  store i1 %728, i1* %OF, align 1, !mcsema_real_eip !133
  %729 = load i1, i1* %DF_val, !mcsema_real_eip !133
  store i1 %729, i1* %DF, align 1, !mcsema_real_eip !133
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !133
  %730 = load i1, i1* %FPU_B_val, !mcsema_real_eip !133
  store i1 %730, i1* %FPU_B, align 1, !mcsema_real_eip !133
  %731 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !133
  store i1 %731, i1* %FPU_C3, align 1, !mcsema_real_eip !133
  %732 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !133
  store i3 %732, i3* %FPU_TOP, align 1, !mcsema_real_eip !133
  %733 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !133
  store i1 %733, i1* %FPU_C2, align 1, !mcsema_real_eip !133
  %734 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !133
  store i1 %734, i1* %FPU_C1, align 1, !mcsema_real_eip !133
  %735 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !133
  store i1 %735, i1* %FPU_C0, align 1, !mcsema_real_eip !133
  %736 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !133
  store i1 %736, i1* %FPU_ES, align 1, !mcsema_real_eip !133
  %737 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !133
  store i1 %737, i1* %FPU_SF, align 1, !mcsema_real_eip !133
  %738 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !133
  store i1 %738, i1* %FPU_PE, align 1, !mcsema_real_eip !133
  %739 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !133
  store i1 %739, i1* %FPU_UE, align 1, !mcsema_real_eip !133
  %740 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !133
  store i1 %740, i1* %FPU_OE, align 1, !mcsema_real_eip !133
  %741 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !133
  store i1 %741, i1* %FPU_ZE, align 1, !mcsema_real_eip !133
  %742 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !133
  store i1 %742, i1* %FPU_DE, align 1, !mcsema_real_eip !133
  %743 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !133
  store i1 %743, i1* %FPU_IE, align 1, !mcsema_real_eip !133
  %744 = load i1, i1* %FPU_X_val, !mcsema_real_eip !133
  store i1 %744, i1* %FPU_X, align 1, !mcsema_real_eip !133
  %745 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !133
  store i2 %745, i2* %FPU_RC, align 1, !mcsema_real_eip !133
  %746 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !133
  store i2 %746, i2* %FPU_PC, align 1, !mcsema_real_eip !133
  %747 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !133
  store i1 %747, i1* %FPU_PM, align 1, !mcsema_real_eip !133
  %748 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !133
  store i1 %748, i1* %FPU_UM, align 1, !mcsema_real_eip !133
  %749 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !133
  store i1 %749, i1* %FPU_OM, align 1, !mcsema_real_eip !133
  %750 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !133
  store i1 %750, i1* %FPU_ZM, align 1, !mcsema_real_eip !133
  %751 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !133
  store i1 %751, i1* %FPU_DM, align 1, !mcsema_real_eip !133
  %752 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !133
  store i1 %752, i1* %FPU_IM, align 1, !mcsema_real_eip !133
  %_ptr_to_int_797 = ptrtoint i64* %53 to i64
  %_local_end_to_int_798 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_799 = bitcast i64* %53 to i8*
  %_offset_above_rbp_800 = sub i64 %_ptr_to_int_797, %_local_end_to_int_798
  %_pot_address_in_parent_stack_801 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_800
  %_cond1_802 = icmp ugt i8* %_ptr_bt_799, %_local_stack_end_ptr_
  %_cond2_1_803 = icmp ugt i8* %_ptr_bt_799, %_parent_stack_end_ptr_
  %_cond2_2_804 = icmp ult i8* %_ptr_bt_799, %_parent_stack_start_ptr_
  %_cond2_805 = or i1 %_cond2_1_803, %_cond2_2_804
  %_cond4_806 = icmp ule i8* %_pot_address_in_parent_stack_801, %_parent_stack_end_ptr_
  %_cond1_n_cond2_807 = and i1 %_cond1_802, %_cond2_805
  %_cond1_n_cond2_cond3_808 = and i1 %_cond1_n_cond2_807, %_cond4_806
  br i1 %_cond1_n_cond2_cond3_808, label %753, label %754

; <label>:753:                                    ; preds = %703
  %_address_in_parent_stack_809 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_800
  %_address_in_parent_stack_bt_810 = bitcast i8* %_address_in_parent_stack_809 to i64*
  br label %754

; <label>:754:                                    ; preds = %703, %753
  %755 = phi i64* [ %53, %703 ], [ %_address_in_parent_stack_bt_810, %753 ]
  %_new_load_811 = load i64, i64* %755
  store i64 %_new_load_811, i64* %52, align 4
  %756 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !133
  store i16 %756, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !133
  %757 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !133
  store i64 %757, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !133
  %758 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !133
  store i16 %758, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !133
  %759 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !133
  store i64 %759, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !133
  %760 = load i128, i128* %XMM0_val, !mcsema_real_eip !133
  store i128 %760, i128* %XMM0, align 1, !mcsema_real_eip !133
  %761 = load i128, i128* %XMM1_val, !mcsema_real_eip !133
  store i128 %761, i128* %XMM1, align 1, !mcsema_real_eip !133
  %762 = load i128, i128* %XMM2_val, !mcsema_real_eip !133
  store i128 %762, i128* %XMM2, align 1, !mcsema_real_eip !133
  %763 = load i128, i128* %XMM3_val, !mcsema_real_eip !133
  store i128 %763, i128* %XMM3, align 1, !mcsema_real_eip !133
  %764 = load i128, i128* %XMM4_val, !mcsema_real_eip !133
  store i128 %764, i128* %XMM4, align 1, !mcsema_real_eip !133
  %765 = load i128, i128* %XMM5_val, !mcsema_real_eip !133
  store i128 %765, i128* %XMM5, align 1, !mcsema_real_eip !133
  %766 = load i128, i128* %XMM6_val, !mcsema_real_eip !133
  store i128 %766, i128* %XMM6, align 1, !mcsema_real_eip !133
  %767 = load i128, i128* %XMM7_val, !mcsema_real_eip !133
  store i128 %767, i128* %XMM7, align 1, !mcsema_real_eip !133
  %768 = load i128, i128* %XMM8_val, !mcsema_real_eip !133
  store i128 %768, i128* %XMM8, align 1, !mcsema_real_eip !133
  %769 = load i128, i128* %XMM9_val, !mcsema_real_eip !133
  store i128 %769, i128* %XMM9, align 1, !mcsema_real_eip !133
  %770 = load i128, i128* %XMM10_val, !mcsema_real_eip !133
  store i128 %770, i128* %XMM10, align 1, !mcsema_real_eip !133
  %771 = load i128, i128* %XMM11_val, !mcsema_real_eip !133
  store i128 %771, i128* %XMM11, align 1, !mcsema_real_eip !133
  %772 = load i128, i128* %XMM12_val, !mcsema_real_eip !133
  store i128 %772, i128* %XMM12, align 1, !mcsema_real_eip !133
  %773 = load i128, i128* %XMM13_val, !mcsema_real_eip !133
  store i128 %773, i128* %XMM13, align 1, !mcsema_real_eip !133
  %774 = load i128, i128* %XMM14_val, !mcsema_real_eip !133
  store i128 %774, i128* %XMM14, align 1, !mcsema_real_eip !133
  %775 = load i128, i128* %XMM15_val, !mcsema_real_eip !133
  store i128 %775, i128* %XMM15, align 1, !mcsema_real_eip !133
  %776 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !133
  store i64 %776, i64* %STACK_BASE, align 1, !mcsema_real_eip !133
  %777 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !133
  store i64 %777, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 257, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 260, [17 x i8] c"\09subq\09$112, %rsp\00"}
!5 = !{i64 269, [17 x i8] c"\09movl\09%eax, %edi\00"}
!6 = !{i64 271, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = !{i64 278, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!8 = !{i64 285, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!9 = !{i64 292, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!10 = !{i64 299, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 304, [22 x i8] c"\09leaq\09-16(%rbp), %rdi\00"}
!12 = !{i64 308, [15 x i8] c"\09movl\09$1, %r8d\00"}
!13 = !{i64 314, [15 x i8] c"\09movl\09$2, %r9d\00"}
!14 = !{i64 320, [15 x i8] c"\09movl\09$3, %ecx\00"}
!15 = !{i64 325, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!16 = !{i64 329, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 333, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!18 = !{i64 339, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 343, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!20 = !{i64 350, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!21 = !{i64 354, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!22 = !{i64 361, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!23 = !{i64 365, [22 x i8] c"\09movq\09-24(%rbp), %rdx\00"}
!24 = !{i64 369, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!25 = !{i64 373, [22 x i8] c"\09movq\09%rsi, -48(%rbp)\00"}
!26 = !{i64 377, [22 x i8] c"\09movl\09-8(%rbp), %r10d\00"}
!27 = !{i64 381, [23 x i8] c"\09movl\09%r10d, -40(%rbp)\00"}
!28 = !{i64 385, [22 x i8] c"\09movq\09-48(%rbp), %rsi\00"}
!29 = !{i64 389, [23 x i8] c"\09movl\09-40(%rbp), %r10d\00"}
!30 = !{i64 393, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!31 = !{i64 397, [17 x i8] c"\09movq\09%rsi, %rdi\00"}
!32 = !{i64 400, [18 x i8] c"\09movl\09%r10d, %esi\00"}
!33 = !{i64 403, [22 x i8] c"\09movq\09-56(%rbp), %r11\00"}
!34 = !{i64 407, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!35 = !{i64 411, [17 x i8] c"\09movq\09%r11, %rdx\00"}
!36 = !{i64 414, [22 x i8] c"\09movl\09%ecx, -68(%rbp)\00"}
!37 = !{i64 417, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = !{i64 420, [17 x i8] c"\09movl\09$3, (%rsp)\00"}
!39 = !{i64 427, [19 x i8] c"\09movq\09(%r11), %rax\00"}
!40 = !{i64 430, [20 x i8] c"\09movq\09%rax, 8(%rsp)\00"}
!41 = !{i64 435, [21 x i8] c"\09movl\098(%r11), %r10d\00"}
!42 = !{i64 439, [22 x i8] c"\09movl\09%r10d, 16(%rsp)\00"}
!43 = !{i64 444, [21 x i8] c"\09movq\09%r11, 24(%rsp)\00"}
!44 = !{i64 449, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!45 = !{i64 453, [21 x i8] c"\09movq\09%rax, 32(%rsp)\00"}
!46 = !{i64 458, [12 x i8] c"\09callq\09-463\00"}
!47 = !{i64 463, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!48 = !{i64 467, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!49 = !{i64 471, [19 x i8] c"\09movl\09(%rax), %esi\00"}
!50 = !{i64 473, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!51 = !{i64 477, [20 x i8] c"\09addl\094(%rax), %esi\00"}
!52 = !{i64 480, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!53 = !{i64 484, [20 x i8] c"\09addl\098(%rax), %esi\00"}
!54 = !{i64 487, [17 x i8] c"\09movl\09%esi, %eax\00"}
!55 = !{i64 489, [17 x i8] c"\09addq\09$112, %rsp\00"}
!56 = !{i64 493, [11 x i8] c"\09popq\09%rbp\00"}
!57 = !{i64 494, [6 x i8] c"\09retq\00"}
!58 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!59 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!60 = !{i64 4, [12 x i8] c"\09pushq\09%r15\00"}
!61 = !{i64 6, [12 x i8] c"\09pushq\09%r14\00"}
!62 = !{i64 8, [12 x i8] c"\09pushq\09%rbx\00"}
!63 = !{i64 9, [17 x i8] c"\09subq\09$104, %rsp\00"}
!64 = !{i64 13, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!65 = !{i64 17, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!66 = !{i64 21, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!67 = !{i64 25, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!68 = !{i64 28, [17 x i8] c"\09movl\09$12, %r14d\00"}
!69 = !{i64 34, [19 x i8] c"\09movl\09%r14d, %r15d\00"}
!70 = !{i64 37, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!71 = !{i64 41, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!72 = !{i64 44, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!73 = !{i64 48, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!74 = !{i64 52, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!75 = !{i64 55, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!76 = !{i64 58, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!77 = !{i64 62, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!78 = !{i64 66, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!79 = !{i64 70, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!80 = !{i64 74, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!81 = !{i64 77, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!82 = !{i64 81, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!83 = !{i64 85, [17 x i8] c"\09movq\09%r15, %rdi\00"}
!84 = !{i64 88, [23 x i8] c"\09movq\09%r11, -120(%rbp)\00"}
!85 = !{i64 92, [9 x i8] c"\09callq\090\00"}
!86 = !{i64 97, [23 x i8] c"\09movq\09%rax, -112(%rbp)\00"}
!87 = !{i64 101, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!88 = !{i64 104, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = !{i64 108, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!90 = !{i64 110, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!91 = !{i64 114, [19 x i8] c"\09addl\09(%rax), %esi\00"}
!92 = !{i64 116, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!93 = !{i64 120, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!94 = !{i64 123, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!95 = !{i64 127, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!96 = !{i64 130, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!97 = !{i64 134, [19 x i8] c"\09addl\09(%rcx), %r8d\00"}
!98 = !{i64 137, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!99 = !{i64 140, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!100 = !{i64 144, [19 x i8] c"\09movl\09%esi, (%rcx)\00"}
!101 = !{i64 146, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!102 = !{i64 149, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!103 = !{i64 153, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!104 = !{i64 156, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!105 = !{i64 160, [20 x i8] c"\09addl\094(%rcx), %esi\00"}
!106 = !{i64 163, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!107 = !{i64 167, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!108 = !{i64 171, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!109 = !{i64 175, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!110 = !{i64 179, [20 x i8] c"\09addl\094(%rcx), %r8d\00"}
!111 = !{i64 183, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!112 = !{i64 186, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!113 = !{i64 190, [20 x i8] c"\09movl\09%esi, 4(%rcx)\00"}
!114 = !{i64 193, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!115 = !{i64 196, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!116 = !{i64 200, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!117 = !{i64 203, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!118 = !{i64 207, [20 x i8] c"\09addl\098(%rcx), %esi\00"}
!119 = !{i64 210, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!120 = !{i64 214, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!121 = !{i64 218, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!122 = !{i64 222, [23 x i8] c"\09movq\09-104(%rbp), %rcx\00"}
!123 = !{i64 226, [20 x i8] c"\09addl\098(%rcx), %r8d\00"}
!124 = !{i64 230, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!125 = !{i64 233, [23 x i8] c"\09movq\09-112(%rbp), %rcx\00"}
!126 = !{i64 237, [20 x i8] c"\09movl\09%esi, 8(%rcx)\00"}
!127 = !{i64 240, [23 x i8] c"\09movq\09-112(%rbp), %rax\00"}
!128 = !{i64 244, [17 x i8] c"\09addq\09$104, %rsp\00"}
!129 = !{i64 248, [11 x i8] c"\09popq\09%rbx\00"}
!130 = !{i64 249, [11 x i8] c"\09popq\09%r14\00"}
!131 = !{i64 251, [11 x i8] c"\09popq\09%r15\00"}
!132 = !{i64 253, [11 x i8] c"\09popq\09%rbp\00"}
!133 = !{i64 254, [6 x i8] c"\09retq\00"}
