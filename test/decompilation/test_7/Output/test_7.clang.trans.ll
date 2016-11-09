; ModuleID = 'Output/test_7.clang.trans.bc'
source_filename = "Output/test_7.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_160(%struct.regs*) {
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
  %82 = load i64, i64* %R14_val, !mcsema_real_eip !4
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %83 = add i64 %79, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !4
  store i64 %82, i64* %_allin_new_bt_2, !mcsema_real_eip !4
  %85 = load i64, i64* %RBX_val, !mcsema_real_eip !5
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %86 = add i64 %79, -24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  store i64 %85, i64* %_allin_new_bt_4, !mcsema_real_eip !5
  %_new_gep_5 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -168
  %88 = add i64 %79, -168
  %_trans_p2i_ = ptrtoint i8* %_new_gep_5 to i64
  %_trans_p2i_6 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_6
  %89 = xor i64 %88, %86, !mcsema_real_eip !6
  %90 = and i64 %_trans_xor_, 16
  %91 = icmp eq i64 %90, 0
  store i1 %91, i1* %AF_val, !mcsema_real_eip !6
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_5 to i64
  %_trans_trunc_ = trunc i64 %_trans_p2i_7 to i8
  %92 = trunc i64 %88 to i8, !mcsema_real_eip !6
  %93 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !6
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF_val, !mcsema_real_eip !6
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_5 to i64
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_8, 0
  %96 = icmp eq i64 %88, 0, !mcsema_real_eip !6
  store i1 %_trans_icmp_eq_, i1* %ZF_val, !mcsema_real_eip !6
  %_trans_p2i_9 = ptrtoint i8* %_new_gep_5 to i64
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_9, 0
  %97 = icmp slt i64 %88, 0
  store i1 %_trans_icmp_ne_, i1* %SF_val, !mcsema_real_eip !6
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_icmp_ne_11 = icmp ne i64 %_trans_p2i_10, 144
  %98 = icmp ult i64 %86, 144, !mcsema_real_eip !6
  store i1 %_trans_icmp_ne_11, i1* %CF_val, !mcsema_real_eip !6
  %_trans_p2i_12 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_13 = and i64 %_trans_xor_, %_trans_p2i_12
  %99 = and i64 %_trans_xor_, %86, !mcsema_real_eip !6
  %100 = icmp slt i64 %_trans_xor_13, 0
  store i1 %100, i1* %OF_val, !mcsema_real_eip !6
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  store i64 %88, i64* %RSP_val, !mcsema_real_eip !6
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %102 = add i64 %101, -20, !mcsema_real_eip !7
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !7
  %104 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 0, i32* %104, !mcsema_real_eip !7
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %106 = add i64 %105, -24, !mcsema_real_eip !8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !8
  %108 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 1, i32* %108, !mcsema_real_eip !8
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -68
  %110 = add i64 %109, -68, !mcsema_real_eip !9
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !9
  %112 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 0, i32* %112, !mcsema_real_eip !9
  br label %block_0x183, !mcsema_real_eip !10

block_0x183:                                      ; preds = %block_0x190, %entry
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -68
  %114 = add i64 %113, -68, !mcsema_real_eip !10
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !10
  %116 = bitcast i64* %_allin_new_bt_25 to i32*
  %117 = load i32, i32* %116, !mcsema_real_eip !10
  %118 = add i32 %117, -10
  %119 = xor i32 %118, %117, !mcsema_real_eip !10
  %120 = and i32 %119, 16, !mcsema_real_eip !10
  %121 = icmp ne i32 %120, 0, !mcsema_real_eip !10
  store i1 %121, i1* %AF_val, !mcsema_real_eip !10
  %122 = trunc i32 %118 to i8, !mcsema_real_eip !10
  %123 = tail call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !10
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF_val, !mcsema_real_eip !10
  %126 = icmp eq i32 %118, 0, !mcsema_real_eip !10
  store i1 %126, i1* %ZF_val, !mcsema_real_eip !10
  %127 = icmp slt i32 %118, 0
  store i1 %127, i1* %SF_val, !mcsema_real_eip !10
  %128 = icmp ult i32 %117, 10, !mcsema_real_eip !10
  store i1 %128, i1* %CF_val, !mcsema_real_eip !10
  %129 = and i32 %119, %117, !mcsema_real_eip !10
  %130 = icmp slt i32 %129, 0
  store i1 %130, i1* %OF_val, !mcsema_real_eip !10
  %tmp = xor i1 %127, %130
  br i1 %tmp, label %block_0x190, label %block_0x1b0, !mcsema_real_eip !11

block_0x190:                                      ; preds = %block_0x183
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -68
  %132 = add i64 %131, -68, !mcsema_real_eip !12
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !12
  %134 = bitcast i64* %_allin_new_bt_28 to i32*
  %135 = load i32, i32* %134, !mcsema_real_eip !12
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %135, i32 1)
  %136 = extractvalue { i32, i1 } %uadd, 0
  %137 = xor i32 %136, %135, !mcsema_real_eip !13
  %138 = and i32 %137, 16, !mcsema_real_eip !13
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !13
  store i1 %139, i1* %AF_val, !mcsema_real_eip !13
  %140 = icmp slt i32 %136, 0
  store i1 %140, i1* %SF_val, !mcsema_real_eip !13
  %141 = icmp eq i32 %136, 0, !mcsema_real_eip !13
  store i1 %141, i1* %ZF_val, !mcsema_real_eip !13
  %142 = xor i32 %135, -2147483648, !mcsema_real_eip !13
  %143 = and i32 %137, %142, !mcsema_real_eip !13
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF_val, !mcsema_real_eip !13
  %145 = trunc i32 %136 to i8, !mcsema_real_eip !13
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !13
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF_val, !mcsema_real_eip !13
  %149 = extractvalue { i32, i1 } %uadd, 1
  store i1 %149, i1* %CF_val, !mcsema_real_eip !13
  %150 = zext i32 %136 to i64, !mcsema_real_eip !13
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !13
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -68
  %152 = add i64 %151, -68, !mcsema_real_eip !14
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !14
  %154 = bitcast i64* %_allin_new_bt_31 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !14
  %156 = sext i32 %155 to i64, !mcsema_real_eip !14
  store i64 %156, i64* %RCX_val, !mcsema_real_eip !14
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -64
  %158 = add i64 %157, -64, !mcsema_real_eip !15
  %159 = shl nsw i64 %156, 2
  %_new_gep_34 = getelementptr i8, i8* %_new_gep_33, i64 %159
  %160 = add i64 %158, %159, !mcsema_real_eip !15
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !15
  %162 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  %163 = trunc i64 %162 to i32, !mcsema_real_eip !15
  %164 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %163, i32* %164, !mcsema_real_eip !15
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -68
  %166 = add i64 %165, -68, !mcsema_real_eip !16
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !16
  %168 = bitcast i64* %_allin_new_bt_38 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !16
  %uadd211 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %169, i32 1)
  %170 = extractvalue { i32, i1 } %uadd211, 0
  %171 = xor i32 %170, %169, !mcsema_real_eip !17
  %172 = and i32 %171, 16, !mcsema_real_eip !17
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !17
  store i1 %173, i1* %AF_val, !mcsema_real_eip !17
  %174 = icmp slt i32 %170, 0
  store i1 %174, i1* %SF_val, !mcsema_real_eip !17
  %175 = icmp eq i32 %170, 0, !mcsema_real_eip !17
  store i1 %175, i1* %ZF_val, !mcsema_real_eip !17
  %176 = xor i32 %169, -2147483648, !mcsema_real_eip !17
  %177 = and i32 %171, %176, !mcsema_real_eip !17
  %178 = icmp slt i32 %177, 0
  store i1 %178, i1* %OF_val, !mcsema_real_eip !17
  %179 = trunc i32 %170 to i8, !mcsema_real_eip !17
  %180 = tail call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !17
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  store i1 %182, i1* %PF_val, !mcsema_real_eip !17
  %183 = extractvalue { i32, i1 } %uadd211, 1
  store i1 %183, i1* %CF_val, !mcsema_real_eip !17
  %184 = zext i32 %170 to i64, !mcsema_real_eip !17
  store i64 %184, i64* %RAX_val, !mcsema_real_eip !17
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -68
  %186 = add i64 %185, -68, !mcsema_real_eip !18
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !18
  %188 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %170, i32* %188, !mcsema_real_eip !18
  br label %block_0x183, !mcsema_real_eip !19

block_0x1b0:                                      ; preds = %block_0x183
  store i64 40, i64* %RDI_val, !mcsema_real_eip !20
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -24
  %190 = add i64 %189, -24, !mcsema_real_eip !21
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !21
  %192 = ptrtoint i64* %_allin_new_bt_44 to i64, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -80
  %193 = add i64 %189, -80, !mcsema_real_eip !22
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !22
  store i64 %192, i64* %_allin_new_bt_46, !mcsema_real_eip !22
  %195 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  %196 = tail call x86_64_sysvcc i64 @malloc(i64 %195), !mcsema_real_eip !23
  store i64 %196, i64* %RAX_val, !mcsema_real_eip !23
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %197 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -88
  %198 = add i64 %197, -88, !mcsema_real_eip !24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !24
  store i64 %196, i64* %_allin_new_bt_49, !mcsema_real_eip !24
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %200 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -92
  %201 = add i64 %200, -92, !mcsema_real_eip !25
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !25
  %203 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 0, i32* %203, !mcsema_real_eip !25
  br label %block_0x1d2, !mcsema_real_eip !12

block_0x1d2:                                      ; preds = %block_0x1df, %block_0x1b0
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -92
  %205 = add i64 %204, -92, !mcsema_real_eip !26
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !26
  %207 = bitcast i64* %_allin_new_bt_55 to i32*
  %208 = load i32, i32* %207, !mcsema_real_eip !26
  %209 = add i32 %208, -10
  %210 = xor i32 %209, %208, !mcsema_real_eip !26
  %211 = and i32 %210, 16, !mcsema_real_eip !26
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !26
  store i1 %212, i1* %AF_val, !mcsema_real_eip !26
  %213 = trunc i32 %209 to i8, !mcsema_real_eip !26
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !26
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF_val, !mcsema_real_eip !26
  %217 = icmp eq i32 %209, 0, !mcsema_real_eip !26
  store i1 %217, i1* %ZF_val, !mcsema_real_eip !26
  %218 = icmp slt i32 %209, 0
  store i1 %218, i1* %SF_val, !mcsema_real_eip !26
  %219 = icmp ult i32 %208, 10, !mcsema_real_eip !26
  store i1 %219, i1* %CF_val, !mcsema_real_eip !26
  %220 = and i32 %210, %208, !mcsema_real_eip !26
  %221 = icmp slt i32 %220, 0
  store i1 %221, i1* %OF_val, !mcsema_real_eip !26
  %tmp212 = xor i1 %218, %221
  br i1 %tmp212, label %block_0x1df, label %block_0x202, !mcsema_real_eip !27

block_0x1df:                                      ; preds = %block_0x1d2
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -92
  %223 = add i64 %222, -92, !mcsema_real_eip !28
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !28
  %225 = bitcast i64* %_allin_new_bt_58 to i32*
  %226 = load i32, i32* %225, !mcsema_real_eip !28
  %uadd213 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 1)
  %227 = extractvalue { i32, i1 } %uadd213, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !29
  %229 = and i32 %228, 16, !mcsema_real_eip !29
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !29
  store i1 %230, i1* %AF_val, !mcsema_real_eip !29
  %231 = icmp slt i32 %227, 0
  store i1 %231, i1* %SF_val, !mcsema_real_eip !29
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !29
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !29
  %233 = xor i32 %226, -2147483648, !mcsema_real_eip !29
  %234 = and i32 %228, %233, !mcsema_real_eip !29
  %235 = icmp slt i32 %234, 0
  store i1 %235, i1* %OF_val, !mcsema_real_eip !29
  %236 = trunc i32 %227 to i8, !mcsema_real_eip !29
  %237 = tail call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !29
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  store i1 %239, i1* %PF_val, !mcsema_real_eip !29
  %240 = extractvalue { i32, i1 } %uadd213, 1
  store i1 %240, i1* %CF_val, !mcsema_real_eip !29
  %241 = zext i32 %227 to i64, !mcsema_real_eip !29
  store i64 %241, i64* %RAX_val, !mcsema_real_eip !29
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %242 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -92
  %243 = add i64 %242, -92, !mcsema_real_eip !30
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !30
  %245 = bitcast i64* %_allin_new_bt_61 to i32*
  %246 = load i32, i32* %245, !mcsema_real_eip !30
  %247 = sext i32 %246 to i64, !mcsema_real_eip !30
  store i64 %247, i64* %RCX_val, !mcsema_real_eip !30
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %249 = add i64 %248, -88, !mcsema_real_eip !31
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !31
  %251 = load i64, i64* %_allin_new_bt_64, !mcsema_real_eip !31
  store i64 %251, i64* %RDX_val, !mcsema_real_eip !31
  %252 = shl nsw i64 %247, 2
  %253 = add i64 %251, %252, !mcsema_real_eip !32
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !32
  %255 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %256 = trunc i64 %255 to i32, !mcsema_real_eip !32
  %257 = bitcast i64* %254 to i32*
  store i32 %256, i32* %257, !mcsema_real_eip !32
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -92
  %259 = add i64 %258, -92, !mcsema_real_eip !33
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !33
  %261 = bitcast i64* %_allin_new_bt_67 to i32*
  %262 = load i32, i32* %261, !mcsema_real_eip !33
  %uadd214 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 1)
  %263 = extractvalue { i32, i1 } %uadd214, 0
  %264 = xor i32 %263, %262, !mcsema_real_eip !34
  %265 = and i32 %264, 16, !mcsema_real_eip !34
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !34
  store i1 %266, i1* %AF_val, !mcsema_real_eip !34
  %267 = icmp slt i32 %263, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !34
  %268 = icmp eq i32 %263, 0, !mcsema_real_eip !34
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !34
  %269 = xor i32 %262, -2147483648, !mcsema_real_eip !34
  %270 = and i32 %264, %269, !mcsema_real_eip !34
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !34
  %272 = trunc i32 %263 to i8, !mcsema_real_eip !34
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !34
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !34
  %276 = extractvalue { i32, i1 } %uadd214, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !34
  %277 = zext i32 %263 to i64, !mcsema_real_eip !34
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !34
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_68, i64 -92
  %279 = add i64 %278, -92, !mcsema_real_eip !35
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !35
  %281 = bitcast i64* %_allin_new_bt_70 to i32*
  store i32 %263, i32* %281, !mcsema_real_eip !35
  br label %block_0x1d2, !mcsema_real_eip !36

block_0x202:                                      ; preds = %block_0x1d2
  store i64 10, i64* %RAX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %282 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -64
  %283 = add i64 %282, -64, !mcsema_real_eip !38
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !38
  %285 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !38
  store i64 %285, i64* %RCX_val, !mcsema_real_eip !38
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -24
  %286 = add i64 %282, -24, !mcsema_real_eip !39
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !39
  %288 = bitcast i64* %_allin_new_bt_75 to i32*
  %289 = load i32, i32* %288, !mcsema_real_eip !39
  %290 = zext i32 %289 to i64, !mcsema_real_eip !39
  store i64 %290, i64* %RDI_val, !mcsema_real_eip !39
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %291 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -80
  %292 = add i64 %291, -80, !mcsema_real_eip !40
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !40
  %294 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !40
  store i64 %294, i64* %RDX_val, !mcsema_real_eip !40
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -88
  %295 = add i64 %291, -88, !mcsema_real_eip !41
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !41
  %297 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !41
  store i64 %297, i64* %RSI_val, !mcsema_real_eip !41
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -24
  %299 = add i64 %298, -24, !mcsema_real_eip !42
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !42
  %301 = bitcast i64* %_allin_new_bt_83 to i32*
  %302 = load i32, i32* %301, !mcsema_real_eip !42
  %303 = zext i32 %302 to i64, !mcsema_real_eip !42
  store i64 %303, i64* %R8_val, !mcsema_real_eip !42
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -80
  %305 = add i64 %304, -80, !mcsema_real_eip !43
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !43
  %307 = load i64, i64* %_allin_new_bt_86, !mcsema_real_eip !43
  store i64 %307, i64* %R9_val, !mcsema_real_eip !43
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -88
  %308 = add i64 %304, -88, !mcsema_real_eip !44
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !44
  %310 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !44
  store i64 %310, i64* %R10_val, !mcsema_real_eip !44
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -104
  %312 = add i64 %311, -104, !mcsema_real_eip !45
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !45
  %314 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %314, i64* %_allin_new_bt_91, !mcsema_real_eip !45
  %315 = load i64, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %315, i64* %RSI_val, !mcsema_real_eip !46
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -104
  %317 = add i64 %316, -104, !mcsema_real_eip !47
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !47
  %319 = load i64, i64* %_allin_new_bt_94, !mcsema_real_eip !47
  store i64 %319, i64* %R11_val, !mcsema_real_eip !47
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -112
  %320 = add i64 %316, -112, !mcsema_real_eip !48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !48
  %322 = load i64, i64* %RCX_val, !mcsema_real_eip !48
  store i64 %322, i64* %_allin_new_bt_96, !mcsema_real_eip !48
  %323 = load i64, i64* %R11_val, !mcsema_real_eip !49
  store i64 %323, i64* %RCX_val, !mcsema_real_eip !49
  %_load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_
  %324 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -116
  %325 = add i64 %324, -116, !mcsema_real_eip !50
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !50
  %327 = load i64, i64* %R8_val, !mcsema_real_eip !50
  %328 = trunc i64 %327 to i32, !mcsema_real_eip !50
  %329 = bitcast i64* %_allin_new_bt_99 to i32*
  store i32 %328, i32* %329, !mcsema_real_eip !50
  %330 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  %331 = and i64 %330, 4294967295
  store i64 %331, i64* %R8_val, !mcsema_real_eip !51
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -128
  %333 = add i64 %332, -128, !mcsema_real_eip !52
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !52
  %335 = load i64, i64* %R9_val, !mcsema_real_eip !52
  store i64 %335, i64* %_allin_new_bt_102, !mcsema_real_eip !52
  %336 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  %337 = and i64 %336, 4294967295
  store i64 %337, i64* %R9_val, !mcsema_real_eip !53
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %338 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -116
  %339 = add i64 %338, -116, !mcsema_real_eip !54
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !54
  %341 = bitcast i64* %_allin_new_bt_105 to i32*
  %342 = load i32, i32* %341, !mcsema_real_eip !54
  %343 = zext i32 %342 to i64, !mcsema_real_eip !54
  store i64 %343, i64* %RAX_val, !mcsema_real_eip !54
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %344 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %_allin_new_bt_107 = bitcast i8* %_load_rsp_ptr_106 to i64*
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !55
  %346 = bitcast i64* %_allin_new_bt_107 to i32*
  store i32 %342, i32* %346, !mcsema_real_eip !55
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %347 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -112
  %348 = add i64 %347, -112, !mcsema_real_eip !56
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !56
  %350 = load i64, i64* %_allin_new_bt_110, !mcsema_real_eip !56
  store i64 %350, i64* %RBX_val, !mcsema_real_eip !56
  %_load_rsp_ptr_111 = load i8*, i8** %_RSP_ptr_
  %351 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %_new_gep_112 = getelementptr i8, i8* %_load_rsp_ptr_111, i64 8
  %352 = add i64 %351, 8, !mcsema_real_eip !57
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !57
  store i64 %350, i64* %_allin_new_bt_113, !mcsema_real_eip !57
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %354 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -128
  %355 = add i64 %354, -128, !mcsema_real_eip !58
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !58
  %357 = load i64, i64* %_allin_new_bt_116, !mcsema_real_eip !58
  store i64 %357, i64* %R14_val, !mcsema_real_eip !58
  %_load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_
  %358 = load i64, i64* %RSP_val, !mcsema_real_eip !59
  %_new_gep_118 = getelementptr i8, i8* %_load_rsp_ptr_117, i64 16
  %359 = add i64 %358, 16, !mcsema_real_eip !59
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !59
  store i64 %357, i64* %_allin_new_bt_119, !mcsema_real_eip !59
  %_load_rsp_ptr_120 = load i8*, i8** %_RSP_ptr_
  %361 = load i64, i64* %RSP_val, !mcsema_real_eip !60
  %_new_gep_121 = getelementptr i8, i8* %_load_rsp_ptr_120, i64 24
  %362 = add i64 %361, 24, !mcsema_real_eip !60
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !60
  %364 = load i64, i64* %R10_val, !mcsema_real_eip !60
  store i64 %364, i64* %_allin_new_bt_122, !mcsema_real_eip !60
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %365 = load i64, i64* %RSP_val, !mcsema_real_eip !61
  %_new_gep_124 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 -8
  %366 = add i64 %365, -8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !61
  store i64 -4981261766360305936, i64* %_allin_new_bt_125, !mcsema_real_eip !61
  store volatile i8* %_new_gep_124, i8** %_RSP_ptr_
  store i64 %366, i64* %RSP_val, !mcsema_real_eip !61
  %368 = load i64, i64* %RAX_val, !mcsema_real_eip !61
  store i64 %368, i64* %RAX, !mcsema_real_eip !61
  %369 = load i64, i64* %RBX_val, !mcsema_real_eip !61
  store i64 %369, i64* %RBX, !mcsema_real_eip !61
  %370 = load i64, i64* %RCX_val, !mcsema_real_eip !61
  store i64 %370, i64* %RCX, !mcsema_real_eip !61
  %371 = load i64, i64* %RDX_val, !mcsema_real_eip !61
  store i64 %371, i64* %RDX, !mcsema_real_eip !61
  %372 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  store i64 %372, i64* %RSI, !mcsema_real_eip !61
  %373 = load i64, i64* %RDI_val, !mcsema_real_eip !61
  store i64 %373, i64* %RDI, !mcsema_real_eip !61
  %_load_rsp_ptr_126 = load i8*, i8** %_RSP_ptr_
  %374 = load i64, i64* %RSP_val, !mcsema_real_eip !61
  %_new_ptr2int_127 = ptrtoint i8* %_load_rsp_ptr_126 to i64
  store volatile i64 %_new_ptr2int_127, i64* %RSP
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %375 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %_new_ptr2int_129 = ptrtoint i8* %_load_rbp_ptr_128 to i64
  store volatile i64 %_new_ptr2int_129, i64* %RBP
  %376 = load i64, i64* %R8_val, !mcsema_real_eip !61
  store i64 %376, i64* %R8, !mcsema_real_eip !61
  %377 = load i64, i64* %R9_val, !mcsema_real_eip !61
  store i64 %377, i64* %R9, !mcsema_real_eip !61
  %378 = load i64, i64* %R10_val, !mcsema_real_eip !61
  store i64 %378, i64* %R10, !mcsema_real_eip !61
  %379 = load i64, i64* %R11_val, !mcsema_real_eip !61
  store i64 %379, i64* %R11, !mcsema_real_eip !61
  %380 = load i64, i64* %R12_val, !mcsema_real_eip !61
  store i64 %380, i64* %R12, !mcsema_real_eip !61
  %381 = load i64, i64* %R13_val, !mcsema_real_eip !61
  store i64 %381, i64* %R13, !mcsema_real_eip !61
  %382 = load i64, i64* %R14_val, !mcsema_real_eip !61
  store i64 %382, i64* %R14, !mcsema_real_eip !61
  %383 = load i64, i64* %R15_val, !mcsema_real_eip !61
  store i64 %383, i64* %R15, !mcsema_real_eip !61
  %384 = load i64, i64* %RIP_val, !mcsema_real_eip !61
  store i64 %384, i64* %RIP, !mcsema_real_eip !61
  %385 = load i1, i1* %CF_val, !mcsema_real_eip !61
  store i1 %385, i1* %CF, align 1, !mcsema_real_eip !61
  %386 = load i1, i1* %PF_val, !mcsema_real_eip !61
  store i1 %386, i1* %PF, align 1, !mcsema_real_eip !61
  %387 = load i1, i1* %AF_val, !mcsema_real_eip !61
  store i1 %387, i1* %AF, align 1, !mcsema_real_eip !61
  %388 = load i1, i1* %ZF_val, !mcsema_real_eip !61
  store i1 %388, i1* %ZF, align 1, !mcsema_real_eip !61
  %389 = load i1, i1* %SF_val, !mcsema_real_eip !61
  store i1 %389, i1* %SF, align 1, !mcsema_real_eip !61
  %390 = load i1, i1* %OF_val, !mcsema_real_eip !61
  store i1 %390, i1* %OF, align 1, !mcsema_real_eip !61
  %391 = load i1, i1* %DF_val, !mcsema_real_eip !61
  store i1 %391, i1* %DF, align 1, !mcsema_real_eip !61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !61
  %392 = load i1, i1* %FPU_B_val, !mcsema_real_eip !61
  store i1 %392, i1* %FPU_B, align 1, !mcsema_real_eip !61
  %393 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !61
  store i1 %393, i1* %FPU_C3, align 1, !mcsema_real_eip !61
  %394 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !61
  store i3 %394, i3* %FPU_TOP, align 1, !mcsema_real_eip !61
  %395 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !61
  store i1 %395, i1* %FPU_C2, align 1, !mcsema_real_eip !61
  %396 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !61
  store i1 %396, i1* %FPU_C1, align 1, !mcsema_real_eip !61
  %397 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !61
  store i1 %397, i1* %FPU_C0, align 1, !mcsema_real_eip !61
  %398 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !61
  store i1 %398, i1* %FPU_ES, align 1, !mcsema_real_eip !61
  %399 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !61
  store i1 %399, i1* %FPU_SF, align 1, !mcsema_real_eip !61
  %400 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !61
  store i1 %400, i1* %FPU_PE, align 1, !mcsema_real_eip !61
  %401 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !61
  store i1 %401, i1* %FPU_UE, align 1, !mcsema_real_eip !61
  %402 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !61
  store i1 %402, i1* %FPU_OE, align 1, !mcsema_real_eip !61
  %403 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !61
  store i1 %403, i1* %FPU_ZE, align 1, !mcsema_real_eip !61
  %404 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !61
  store i1 %404, i1* %FPU_DE, align 1, !mcsema_real_eip !61
  %405 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !61
  store i1 %405, i1* %FPU_IE, align 1, !mcsema_real_eip !61
  %406 = load i1, i1* %FPU_X_val, !mcsema_real_eip !61
  store i1 %406, i1* %FPU_X, align 1, !mcsema_real_eip !61
  %407 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !61
  store i2 %407, i2* %FPU_RC, align 1, !mcsema_real_eip !61
  %408 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !61
  store i2 %408, i2* %FPU_PC, align 1, !mcsema_real_eip !61
  %409 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !61
  store i1 %409, i1* %FPU_PM, align 1, !mcsema_real_eip !61
  %410 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !61
  store i1 %410, i1* %FPU_UM, align 1, !mcsema_real_eip !61
  %411 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !61
  store i1 %411, i1* %FPU_OM, align 1, !mcsema_real_eip !61
  %412 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !61
  store i1 %412, i1* %FPU_ZM, align 1, !mcsema_real_eip !61
  %413 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !61
  store i1 %413, i1* %FPU_DM, align 1, !mcsema_real_eip !61
  %414 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !61
  store i1 %414, i1* %FPU_IM, align 1, !mcsema_real_eip !61
  %415 = load i64, i64* %53, align 4
  store i64 %415, i64* %52, align 4
  %416 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !61
  store i16 %416, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !61
  %417 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !61
  store i64 %417, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !61
  %418 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !61
  store i16 %418, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !61
  %419 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !61
  store i64 %419, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !61
  %420 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !61
  store i11 %420, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !61
  %421 = load i128, i128* %XMM0_val, !mcsema_real_eip !61
  store i128 %421, i128* %XMM0, align 1, !mcsema_real_eip !61
  %422 = load i128, i128* %XMM1_val, !mcsema_real_eip !61
  store i128 %422, i128* %XMM1, align 1, !mcsema_real_eip !61
  %423 = load i128, i128* %XMM2_val, !mcsema_real_eip !61
  store i128 %423, i128* %XMM2, align 1, !mcsema_real_eip !61
  %424 = load i128, i128* %XMM3_val, !mcsema_real_eip !61
  store i128 %424, i128* %XMM3, align 1, !mcsema_real_eip !61
  %425 = load i128, i128* %XMM4_val, !mcsema_real_eip !61
  store i128 %425, i128* %XMM4, align 1, !mcsema_real_eip !61
  %426 = load i128, i128* %XMM5_val, !mcsema_real_eip !61
  store i128 %426, i128* %XMM5, align 1, !mcsema_real_eip !61
  %427 = load i128, i128* %XMM6_val, !mcsema_real_eip !61
  store i128 %427, i128* %XMM6, align 1, !mcsema_real_eip !61
  %428 = load i128, i128* %XMM7_val, !mcsema_real_eip !61
  store i128 %428, i128* %XMM7, align 1, !mcsema_real_eip !61
  %429 = load i128, i128* %XMM8_val, !mcsema_real_eip !61
  store i128 %429, i128* %XMM8, align 1, !mcsema_real_eip !61
  %430 = load i128, i128* %XMM9_val, !mcsema_real_eip !61
  store i128 %430, i128* %XMM9, align 1, !mcsema_real_eip !61
  %431 = load i128, i128* %XMM10_val, !mcsema_real_eip !61
  store i128 %431, i128* %XMM10, align 1, !mcsema_real_eip !61
  %432 = load i128, i128* %XMM11_val, !mcsema_real_eip !61
  store i128 %432, i128* %XMM11, align 1, !mcsema_real_eip !61
  %433 = load i128, i128* %XMM12_val, !mcsema_real_eip !61
  store i128 %433, i128* %XMM12, align 1, !mcsema_real_eip !61
  %434 = load i128, i128* %XMM13_val, !mcsema_real_eip !61
  store i128 %434, i128* %XMM13, align 1, !mcsema_real_eip !61
  %435 = load i128, i128* %XMM14_val, !mcsema_real_eip !61
  store i128 %435, i128* %XMM14, align 1, !mcsema_real_eip !61
  %436 = load i128, i128* %XMM15_val, !mcsema_real_eip !61
  store i128 %436, i128* %XMM15, align 1, !mcsema_real_eip !61
  %437 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !61
  store i64 %437, i64* %STACK_BASE, align 1, !mcsema_real_eip !61
  %438 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !61
  store i64 %438, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !61
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_140)
  %439 = load i64, i64* %RAX, !mcsema_real_eip !61
  store i64 %439, i64* %RAX_val, !mcsema_real_eip !61
  %440 = load i64, i64* %RBX, !mcsema_real_eip !61
  store i64 %440, i64* %RBX_val, !mcsema_real_eip !61
  %441 = load i64, i64* %RCX, !mcsema_real_eip !61
  store i64 %441, i64* %RCX_val, !mcsema_real_eip !61
  %442 = load i64, i64* %RDX, !mcsema_real_eip !61
  store i64 %442, i64* %RDX_val, !mcsema_real_eip !61
  %443 = load i64, i64* %RSI, !mcsema_real_eip !61
  store i64 %443, i64* %RSI_val, !mcsema_real_eip !61
  %444 = load i64, i64* %RDI, !mcsema_real_eip !61
  store i64 %444, i64* %RDI_val, !mcsema_real_eip !61
  %445 = load i64, i64* %RSP, !mcsema_real_eip !61
  store i64 %445, i64* %RSP_val, !mcsema_real_eip !61
  %446 = load i64, i64* %RBP, !mcsema_real_eip !61
  store i64 %446, i64* %RBP_val, !mcsema_real_eip !61
  %447 = load i64, i64* %R8, !mcsema_real_eip !61
  store i64 %447, i64* %R8_val, !mcsema_real_eip !61
  %448 = load i64, i64* %R9, !mcsema_real_eip !61
  store i64 %448, i64* %R9_val, !mcsema_real_eip !61
  %449 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %449, i64* %R10_val, !mcsema_real_eip !61
  %450 = load i64, i64* %R11, !mcsema_real_eip !61
  store i64 %450, i64* %R11_val, !mcsema_real_eip !61
  %451 = load i64, i64* %R12, !mcsema_real_eip !61
  store i64 %451, i64* %R12_val, !mcsema_real_eip !61
  %452 = load i64, i64* %R13, !mcsema_real_eip !61
  store i64 %452, i64* %R13_val, !mcsema_real_eip !61
  %453 = load i64, i64* %R14, !mcsema_real_eip !61
  store i64 %453, i64* %R14_val, !mcsema_real_eip !61
  %454 = load i64, i64* %R15, !mcsema_real_eip !61
  store i64 %454, i64* %R15_val, !mcsema_real_eip !61
  %455 = load i64, i64* %RIP, !mcsema_real_eip !61
  store i64 %455, i64* %RIP_val, !mcsema_real_eip !61
  %456 = load i1, i1* %CF, align 1, !mcsema_real_eip !61
  store i1 %456, i1* %CF_val, !mcsema_real_eip !61
  %457 = load i1, i1* %PF, align 1, !mcsema_real_eip !61
  store i1 %457, i1* %PF_val, !mcsema_real_eip !61
  %458 = load i1, i1* %AF, align 1, !mcsema_real_eip !61
  store i1 %458, i1* %AF_val, !mcsema_real_eip !61
  %459 = load i1, i1* %ZF, align 1, !mcsema_real_eip !61
  store i1 %459, i1* %ZF_val, !mcsema_real_eip !61
  %460 = load i1, i1* %SF, align 1, !mcsema_real_eip !61
  store i1 %460, i1* %SF_val, !mcsema_real_eip !61
  %461 = load i1, i1* %OF, align 1, !mcsema_real_eip !61
  store i1 %461, i1* %OF_val, !mcsema_real_eip !61
  %462 = load i1, i1* %DF, align 1, !mcsema_real_eip !61
  store i1 %462, i1* %DF_val, !mcsema_real_eip !61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !61
  %463 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !61
  store i1 %463, i1* %FPU_B_val, !mcsema_real_eip !61
  %464 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !61
  store i1 %464, i1* %FPU_C3_val, !mcsema_real_eip !61
  %465 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !61
  store i3 %465, i3* %FPU_TOP_val, !mcsema_real_eip !61
  %466 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !61
  store i1 %466, i1* %FPU_C2_val, !mcsema_real_eip !61
  %467 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !61
  store i1 %467, i1* %FPU_C1_val, !mcsema_real_eip !61
  %468 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !61
  store i1 %468, i1* %FPU_C0_val, !mcsema_real_eip !61
  %469 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !61
  store i1 %469, i1* %FPU_ES_val, !mcsema_real_eip !61
  %470 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !61
  store i1 %470, i1* %FPU_SF_val, !mcsema_real_eip !61
  %471 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !61
  store i1 %471, i1* %FPU_PE_val, !mcsema_real_eip !61
  %472 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !61
  store i1 %472, i1* %FPU_UE_val, !mcsema_real_eip !61
  %473 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !61
  store i1 %473, i1* %FPU_OE_val, !mcsema_real_eip !61
  %474 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !61
  store i1 %474, i1* %FPU_ZE_val, !mcsema_real_eip !61
  %475 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !61
  store i1 %475, i1* %FPU_DE_val, !mcsema_real_eip !61
  %476 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !61
  store i1 %476, i1* %FPU_IE_val, !mcsema_real_eip !61
  %477 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !61
  store i1 %477, i1* %FPU_X_val, !mcsema_real_eip !61
  %478 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !61
  store i2 %478, i2* %FPU_RC_val, !mcsema_real_eip !61
  %479 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !61
  store i2 %479, i2* %FPU_PC_val, !mcsema_real_eip !61
  %480 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !61
  store i1 %480, i1* %FPU_PM_val, !mcsema_real_eip !61
  %481 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !61
  store i1 %481, i1* %FPU_UM_val, !mcsema_real_eip !61
  %482 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !61
  store i1 %482, i1* %FPU_OM_val, !mcsema_real_eip !61
  %483 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !61
  store i1 %483, i1* %FPU_ZM_val, !mcsema_real_eip !61
  %484 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !61
  store i1 %484, i1* %FPU_DM_val, !mcsema_real_eip !61
  %485 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !61
  store i1 %485, i1* %FPU_IM_val, !mcsema_real_eip !61
  %486 = load i64, i64* %52, align 4
  store i64 %486, i64* %53, align 4
  %487 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !61
  store i16 %487, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !61
  %488 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !61
  store i64 %488, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !61
  %489 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !61
  store i16 %489, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !61
  %490 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !61
  store i64 %490, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !61
  %491 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !61
  store i11 %491, i11* %FPU_FOPCODE_val, !mcsema_real_eip !61
  %492 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !61
  store i128 %492, i128* %XMM0_val, !mcsema_real_eip !61
  %493 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !61
  store i128 %493, i128* %XMM1_val, !mcsema_real_eip !61
  %494 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !61
  store i128 %494, i128* %XMM2_val, !mcsema_real_eip !61
  %495 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !61
  store i128 %495, i128* %XMM3_val, !mcsema_real_eip !61
  %496 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !61
  store i128 %496, i128* %XMM4_val, !mcsema_real_eip !61
  %497 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !61
  store i128 %497, i128* %XMM5_val, !mcsema_real_eip !61
  %498 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !61
  store i128 %498, i128* %XMM6_val, !mcsema_real_eip !61
  %499 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !61
  store i128 %499, i128* %XMM7_val, !mcsema_real_eip !61
  %500 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !61
  store i128 %500, i128* %XMM8_val, !mcsema_real_eip !61
  %501 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !61
  store i128 %501, i128* %XMM9_val, !mcsema_real_eip !61
  %502 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !61
  store i128 %502, i128* %XMM10_val, !mcsema_real_eip !61
  %503 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !61
  store i128 %503, i128* %XMM11_val, !mcsema_real_eip !61
  %504 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !61
  store i128 %504, i128* %XMM12_val, !mcsema_real_eip !61
  %505 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !61
  store i128 %505, i128* %XMM13_val, !mcsema_real_eip !61
  %506 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !61
  store i128 %506, i128* %XMM14_val, !mcsema_real_eip !61
  %507 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !61
  store i128 %507, i128* %XMM15_val, !mcsema_real_eip !61
  %508 = load i64, i64* %STACK_BASE, !mcsema_real_eip !61
  store i64 %508, i64* %STACK_BASE_val, !mcsema_real_eip !61
  %509 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !61
  store i64 %509, i64* %STACK_LIMIT_val, !mcsema_real_eip !61
  %_load_rsp_ptr_130 = load i8*, i8** %_RSP_ptr_
  %510 = load i64, i64* %RSP_val, !mcsema_real_eip !62
  %_new_ptr2int_131 = ptrtoint i8* %_load_rsp_ptr_130 to i64
  %uadd215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_131, i64 144)
  %511 = extractvalue { i64, i1 } %uadd215, 0
  %512 = xor i64 %511, %_new_ptr2int_131, !mcsema_real_eip !62
  %513 = and i64 %512, 16
  %514 = icmp eq i64 %513, 0
  store i1 %514, i1* %AF_val, !mcsema_real_eip !62
  %515 = icmp slt i64 %511, 0
  store i1 %515, i1* %SF_val, !mcsema_real_eip !62
  %516 = icmp eq i64 %511, 0, !mcsema_real_eip !62
  store i1 %516, i1* %ZF_val, !mcsema_real_eip !62
  %517 = xor i64 %_new_ptr2int_131, -9223372036854775808, !mcsema_real_eip !62
  %518 = and i64 %512, %517, !mcsema_real_eip !62
  %519 = icmp slt i64 %518, 0
  store i1 %519, i1* %OF_val, !mcsema_real_eip !62
  %520 = trunc i64 %511 to i8, !mcsema_real_eip !62
  %521 = tail call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !62
  %522 = and i8 %521, 1
  %523 = icmp eq i8 %522, 0
  store i1 %523, i1* %PF_val, !mcsema_real_eip !62
  %524 = extractvalue { i64, i1 } %uadd215, 1
  store i1 %524, i1* %CF_val, !mcsema_real_eip !62
  %_new_int2ptr_ = inttoptr i64 %511 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %511, i64* %RSP_val, !mcsema_real_eip !62
  %525 = inttoptr i64 %511 to i64*, !mcsema_real_eip !63
  %526 = load i64, i64* %525, !mcsema_real_eip !63
  store i64 %526, i64* %RBX_val, !mcsema_real_eip !63
  %527 = add i64 %511, 8, !mcsema_real_eip !63
  %_new_int2ptr_132 = inttoptr i64 %527 to i8*
  store volatile i8* %_new_int2ptr_132, i8** %_RSP_ptr_
  store i64 %527, i64* %RSP_val, !mcsema_real_eip !63
  %528 = inttoptr i64 %527 to i64*, !mcsema_real_eip !64
  %529 = load i64, i64* %528, !mcsema_real_eip !64
  store i64 %529, i64* %R14_val, !mcsema_real_eip !64
  %530 = add i64 %511, 16, !mcsema_real_eip !64
  %_new_int2ptr_133 = inttoptr i64 %530 to i8*
  store volatile i8* %_new_int2ptr_133, i8** %_RSP_ptr_
  store i64 %530, i64* %RSP_val, !mcsema_real_eip !64
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !65
  %532 = load i64, i64* %531, !mcsema_real_eip !65
  %_new_int2ptr_134 = inttoptr i64 %532 to i8*
  store volatile i8* %_new_int2ptr_134, i8** %_RBP_ptr_
  store i64 %532, i64* %RBP_val, !mcsema_real_eip !65
  %533 = add i64 %511, 32, !mcsema_real_eip !66
  %_new_int2ptr_135 = inttoptr i64 %533 to i8*
  store volatile i8* %_new_int2ptr_135, i8** %_RSP_ptr_
  store i64 %533, i64* %RSP_val, !mcsema_real_eip !66
  %534 = load i64, i64* %RAX_val, !mcsema_real_eip !66
  store i64 %534, i64* %RAX, !mcsema_real_eip !66
  %535 = load i64, i64* %RBX_val, !mcsema_real_eip !66
  store i64 %535, i64* %RBX, !mcsema_real_eip !66
  %536 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %536, i64* %RCX, !mcsema_real_eip !66
  %537 = load i64, i64* %RDX_val, !mcsema_real_eip !66
  store i64 %537, i64* %RDX, !mcsema_real_eip !66
  %538 = load i64, i64* %RSI_val, !mcsema_real_eip !66
  store i64 %538, i64* %RSI, !mcsema_real_eip !66
  %539 = load i64, i64* %RDI_val, !mcsema_real_eip !66
  store i64 %539, i64* %RDI, !mcsema_real_eip !66
  %_load_rsp_ptr_136 = load i8*, i8** %_RSP_ptr_
  %540 = load i64, i64* %RSP_val, !mcsema_real_eip !66
  %_new_ptr2int_137 = ptrtoint i8* %_load_rsp_ptr_136 to i64
  store volatile i64 %_new_ptr2int_137, i64* %RSP
  %_load_rbp_ptr_138 = load i8*, i8** %_RBP_ptr_
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_ptr2int_139 = ptrtoint i8* %_load_rbp_ptr_138 to i64
  store volatile i64 %_new_ptr2int_139, i64* %RBP
  %542 = load i64, i64* %R8_val, !mcsema_real_eip !66
  store i64 %542, i64* %R8, !mcsema_real_eip !66
  %543 = load i64, i64* %R9_val, !mcsema_real_eip !66
  store i64 %543, i64* %R9, !mcsema_real_eip !66
  %544 = load i64, i64* %R10_val, !mcsema_real_eip !66
  store i64 %544, i64* %R10, !mcsema_real_eip !66
  %545 = load i64, i64* %R11_val, !mcsema_real_eip !66
  store i64 %545, i64* %R11, !mcsema_real_eip !66
  %546 = load i64, i64* %R12_val, !mcsema_real_eip !66
  store i64 %546, i64* %R12, !mcsema_real_eip !66
  %547 = load i64, i64* %R13_val, !mcsema_real_eip !66
  store i64 %547, i64* %R13, !mcsema_real_eip !66
  %548 = load i64, i64* %R14_val, !mcsema_real_eip !66
  store i64 %548, i64* %R14, !mcsema_real_eip !66
  %549 = load i64, i64* %R15_val, !mcsema_real_eip !66
  store i64 %549, i64* %R15, !mcsema_real_eip !66
  %550 = load i64, i64* %RIP_val, !mcsema_real_eip !66
  store i64 %550, i64* %RIP, !mcsema_real_eip !66
  %551 = load i1, i1* %CF_val, !mcsema_real_eip !66
  store i1 %551, i1* %CF, align 1, !mcsema_real_eip !66
  %552 = load i1, i1* %PF_val, !mcsema_real_eip !66
  store i1 %552, i1* %PF, align 1, !mcsema_real_eip !66
  %553 = load i1, i1* %AF_val, !mcsema_real_eip !66
  store i1 %553, i1* %AF, align 1, !mcsema_real_eip !66
  %554 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  store i1 %554, i1* %ZF, align 1, !mcsema_real_eip !66
  %555 = load i1, i1* %SF_val, !mcsema_real_eip !66
  store i1 %555, i1* %SF, align 1, !mcsema_real_eip !66
  %556 = load i1, i1* %OF_val, !mcsema_real_eip !66
  store i1 %556, i1* %OF, align 1, !mcsema_real_eip !66
  %557 = load i1, i1* %DF_val, !mcsema_real_eip !66
  store i1 %557, i1* %DF, align 1, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !66
  %558 = load i1, i1* %FPU_B_val, !mcsema_real_eip !66
  store i1 %558, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %559 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !66
  store i1 %559, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %560 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !66
  store i3 %560, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %561 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !66
  store i1 %561, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %562 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !66
  store i1 %562, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %563 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !66
  store i1 %563, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %564 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !66
  store i1 %564, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %565 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !66
  store i1 %565, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %566 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !66
  store i1 %566, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %567 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !66
  store i1 %567, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %568 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !66
  store i1 %568, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %569 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !66
  store i1 %569, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %570 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !66
  store i1 %570, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %571 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !66
  store i1 %571, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %572 = load i1, i1* %FPU_X_val, !mcsema_real_eip !66
  store i1 %572, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %573 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !66
  store i2 %573, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %574 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !66
  store i2 %574, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %575 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !66
  store i1 %575, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %576 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !66
  store i1 %576, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %577 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !66
  store i1 %577, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %578 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !66
  store i1 %578, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %579 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !66
  store i1 %579, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %580 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !66
  store i1 %580, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %581 = load i64, i64* %53, align 4
  store i64 %581, i64* %52, align 4
  %582 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  store i16 %582, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %583 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  store i64 %583, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !66
  %584 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  store i16 %584, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %585 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  store i64 %585, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !66
  %586 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !66
  store i11 %586, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !66
  %587 = load i128, i128* %XMM0_val, !mcsema_real_eip !66
  store i128 %587, i128* %XMM0, align 1, !mcsema_real_eip !66
  %588 = load i128, i128* %XMM1_val, !mcsema_real_eip !66
  store i128 %588, i128* %XMM1, align 1, !mcsema_real_eip !66
  %589 = load i128, i128* %XMM2_val, !mcsema_real_eip !66
  store i128 %589, i128* %XMM2, align 1, !mcsema_real_eip !66
  %590 = load i128, i128* %XMM3_val, !mcsema_real_eip !66
  store i128 %590, i128* %XMM3, align 1, !mcsema_real_eip !66
  %591 = load i128, i128* %XMM4_val, !mcsema_real_eip !66
  store i128 %591, i128* %XMM4, align 1, !mcsema_real_eip !66
  %592 = load i128, i128* %XMM5_val, !mcsema_real_eip !66
  store i128 %592, i128* %XMM5, align 1, !mcsema_real_eip !66
  %593 = load i128, i128* %XMM6_val, !mcsema_real_eip !66
  store i128 %593, i128* %XMM6, align 1, !mcsema_real_eip !66
  %594 = load i128, i128* %XMM7_val, !mcsema_real_eip !66
  store i128 %594, i128* %XMM7, align 1, !mcsema_real_eip !66
  %595 = load i128, i128* %XMM8_val, !mcsema_real_eip !66
  store i128 %595, i128* %XMM8, align 1, !mcsema_real_eip !66
  %596 = load i128, i128* %XMM9_val, !mcsema_real_eip !66
  store i128 %596, i128* %XMM9, align 1, !mcsema_real_eip !66
  %597 = load i128, i128* %XMM10_val, !mcsema_real_eip !66
  store i128 %597, i128* %XMM10, align 1, !mcsema_real_eip !66
  %598 = load i128, i128* %XMM11_val, !mcsema_real_eip !66
  store i128 %598, i128* %XMM11, align 1, !mcsema_real_eip !66
  %599 = load i128, i128* %XMM12_val, !mcsema_real_eip !66
  store i128 %599, i128* %XMM12, align 1, !mcsema_real_eip !66
  %600 = load i128, i128* %XMM13_val, !mcsema_real_eip !66
  store i128 %600, i128* %XMM13, align 1, !mcsema_real_eip !66
  %601 = load i128, i128* %XMM14_val, !mcsema_real_eip !66
  store i128 %601, i128* %XMM14, align 1, !mcsema_real_eip !66
  %602 = load i128, i128* %XMM15_val, !mcsema_real_eip !66
  store i128 %602, i128* %XMM15, align 1, !mcsema_real_eip !66
  %603 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !66
  store i64 %603, i64* %STACK_BASE, align 1, !mcsema_real_eip !66
  %604 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  store i64 %604, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !67
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !67
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !67
  %XMM15_val = alloca i128, !mcsema_real_eip !67
  %XMM14_val = alloca i128, !mcsema_real_eip !67
  %XMM13_val = alloca i128, !mcsema_real_eip !67
  %XMM12_val = alloca i128, !mcsema_real_eip !67
  %XMM11_val = alloca i128, !mcsema_real_eip !67
  %XMM10_val = alloca i128, !mcsema_real_eip !67
  %XMM9_val = alloca i128, !mcsema_real_eip !67
  %XMM8_val = alloca i128, !mcsema_real_eip !67
  %XMM7_val = alloca i128, !mcsema_real_eip !67
  %XMM6_val = alloca i128, !mcsema_real_eip !67
  %XMM5_val = alloca i128, !mcsema_real_eip !67
  %XMM4_val = alloca i128, !mcsema_real_eip !67
  %XMM3_val = alloca i128, !mcsema_real_eip !67
  %XMM2_val = alloca i128, !mcsema_real_eip !67
  %XMM1_val = alloca i128, !mcsema_real_eip !67
  %XMM0_val = alloca i128, !mcsema_real_eip !67
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !67
  %FPU_IM_val = alloca i1, !mcsema_real_eip !67
  %FPU_DM_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !67
  %FPU_OM_val = alloca i1, !mcsema_real_eip !67
  %FPU_UM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PC_val = alloca i2, !mcsema_real_eip !67
  %FPU_RC_val = alloca i2, !mcsema_real_eip !67
  %FPU_X_val = alloca i1, !mcsema_real_eip !67
  %FPU_IE_val = alloca i1, !mcsema_real_eip !67
  %FPU_DE_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !67
  %FPU_OE_val = alloca i1, !mcsema_real_eip !67
  %FPU_UE_val = alloca i1, !mcsema_real_eip !67
  %FPU_PE_val = alloca i1, !mcsema_real_eip !67
  %FPU_SF_val = alloca i1, !mcsema_real_eip !67
  %FPU_ES_val = alloca i1, !mcsema_real_eip !67
  %FPU_C0_val = alloca i1, !mcsema_real_eip !67
  %FPU_C1_val = alloca i1, !mcsema_real_eip !67
  %FPU_C2_val = alloca i1, !mcsema_real_eip !67
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !67
  %FPU_C3_val = alloca i1, !mcsema_real_eip !67
  %FPU_B_val = alloca i1, !mcsema_real_eip !67
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !67
  %DF_val = alloca i1, !mcsema_real_eip !67
  %OF_val = alloca i1, !mcsema_real_eip !67
  %SF_val = alloca i1, !mcsema_real_eip !67
  %CF_val = alloca i1, !mcsema_real_eip !67
  %AF_val = alloca i1, !mcsema_real_eip !67
  %PF_val = alloca i1, !mcsema_real_eip !67
  %ZF_val = alloca i1, !mcsema_real_eip !67
  %RIP_val = alloca i64, !mcsema_real_eip !67
  %R14_val = alloca i64, !mcsema_real_eip !67
  %R13_val = alloca i64, !mcsema_real_eip !67
  %R12_val = alloca i64, !mcsema_real_eip !67
  %R11_val = alloca i64, !mcsema_real_eip !67
  %R10_val = alloca i64, !mcsema_real_eip !67
  %R9_val = alloca i64, !mcsema_real_eip !67
  %R8_val = alloca i64, !mcsema_real_eip !67
  %RSP_val = alloca i64, !mcsema_real_eip !67
  %RBP_val = alloca i64, !mcsema_real_eip !67
  %RDI_val = alloca i64, !mcsema_real_eip !67
  %RSI_val = alloca i64, !mcsema_real_eip !67
  %RDX_val = alloca i64, !mcsema_real_eip !67
  %RCX_val = alloca i64, !mcsema_real_eip !67
  %RBX_val = alloca i64, !mcsema_real_eip !67
  %RAX_val = alloca i64, !mcsema_real_eip !67
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !67
  %1 = load i64, i64* %RAX, !mcsema_real_eip !67
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !67
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !67
  %2 = load i64, i64* %RBX, !mcsema_real_eip !67
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !67
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !67
  %3 = load i64, i64* %RCX, !mcsema_real_eip !67
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !67
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !67
  %4 = load i64, i64* %RDX, !mcsema_real_eip !67
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !67
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !67
  %5 = load i64, i64* %RSI, !mcsema_real_eip !67
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !67
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !67
  %6 = load i64, i64* %RDI, !mcsema_real_eip !67
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !67
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !67
  %7 = load i64, i64* %RSP, !mcsema_real_eip !67
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !67
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !67
  %8 = load i64, i64* %RBP, !mcsema_real_eip !67
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !67
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !67
  %9 = load i64, i64* %R8, !mcsema_real_eip !67
  store i64 %9, i64* %R8_val, !mcsema_real_eip !67
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !67
  %10 = load i64, i64* %R9, !mcsema_real_eip !67
  store i64 %10, i64* %R9_val, !mcsema_real_eip !67
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !67
  %11 = load i64, i64* %R10, !mcsema_real_eip !67
  store i64 %11, i64* %R10_val, !mcsema_real_eip !67
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !67
  %12 = load i64, i64* %R11, !mcsema_real_eip !67
  store i64 %12, i64* %R11_val, !mcsema_real_eip !67
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !67
  %13 = load i64, i64* %R12, !mcsema_real_eip !67
  store i64 %13, i64* %R12_val, !mcsema_real_eip !67
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !67
  %14 = load i64, i64* %R13, !mcsema_real_eip !67
  store i64 %14, i64* %R13_val, !mcsema_real_eip !67
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !67
  %15 = load i64, i64* %R14, !mcsema_real_eip !67
  store i64 %15, i64* %R14_val, !mcsema_real_eip !67
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !67
  %16 = load i64, i64* %R15, !mcsema_real_eip !67
  store i64 %16, i64* %R15_val, !mcsema_real_eip !67
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !67
  %17 = load i64, i64* %RIP, !mcsema_real_eip !67
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !67
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !67
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !67
  store i1 %18, i1* %CF_val, !mcsema_real_eip !67
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !67
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !67
  store i1 %19, i1* %PF_val, !mcsema_real_eip !67
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !67
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !67
  store i1 %20, i1* %AF_val, !mcsema_real_eip !67
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !67
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !67
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !67
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !67
  store i1 %22, i1* %SF_val, !mcsema_real_eip !67
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !67
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %OF_val, !mcsema_real_eip !67
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !67
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %DF_val, !mcsema_real_eip !67
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !67
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !67
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !67
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !67
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !67
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !67
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !67
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !67
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !67
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !67
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !67
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !67
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !67
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !67
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !67
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !67
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !67
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !67
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !67
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !67
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !67
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !67
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !67
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !67
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !67
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !67
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !67
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !67
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !67
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !67
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !67
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !67
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !67
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !67
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !67
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !67
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !67
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !67
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !67
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !67
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !67
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !67
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !67
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !67
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !67
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !67
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !67
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !67
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !67
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !67
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !67
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !67
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !67
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !67
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !67
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !67
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !67
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !67
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !67
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !67
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !67
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !67
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !67
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !67
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !67
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !67
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !67
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !67
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !67
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !67
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !67
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !67
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !67
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !67
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !67
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !67
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !67
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !67
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !67
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !67
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !67
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !67
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !67
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !67
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !67
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !67
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !67
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !67
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !67
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !67
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !67
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !67
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !67
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !67
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !67
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !67
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !67
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !67
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !67
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !67
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !67
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !67
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !67
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !67
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !67
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !67
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !67
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !67
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !67
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !67
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !67
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !67
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !67
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !67
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !67
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !67
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !67
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !67
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !67
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !67
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !67
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !67
  store i64 %78, i64* %81, !mcsema_real_eip !67
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !68
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !69
  store i64 %82, i64* %84, !mcsema_real_eip !69
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !69
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %86 = add i64 %85, 40, !mcsema_real_eip !70
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !70
  %88 = load i64, i64* %87, !mcsema_real_eip !70
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !70
  %89 = add i64 %85, 32, !mcsema_real_eip !71
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !71
  %91 = load i64, i64* %90, !mcsema_real_eip !71
  store i64 %91, i64* %R10_val, !mcsema_real_eip !71
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %93 = add i64 %92, 24, !mcsema_real_eip !72
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !72
  %95 = load i64, i64* %94, !mcsema_real_eip !72
  store i64 %95, i64* %R11_val, !mcsema_real_eip !72
  %96 = add i64 %92, 16, !mcsema_real_eip !73
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !73
  %98 = bitcast i64* %97 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !73
  %100 = zext i32 %99 to i64, !mcsema_real_eip !73
  store i64 %100, i64* %RBX_val, !mcsema_real_eip !73
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %102 = add i64 %101, -12, !mcsema_real_eip !74
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !74
  %104 = load i64, i64* %RDI_val, !mcsema_real_eip !74
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !74
  %106 = bitcast i64* %103 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !74
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %108 = add i64 %107, -24, !mcsema_real_eip !75
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !75
  %110 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  store i64 %110, i64* %109, !mcsema_real_eip !75
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %112 = add i64 %111, -32, !mcsema_real_eip !76
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !76
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  store i64 %114, i64* %113, !mcsema_real_eip !76
  %115 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %116 = add i64 %115, -40, !mcsema_real_eip !77
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !77
  %118 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  store i64 %118, i64* %117, !mcsema_real_eip !77
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %120 = add i64 %119, -44, !mcsema_real_eip !78
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !78
  %122 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %123 = trunc i64 %122 to i32, !mcsema_real_eip !78
  %124 = bitcast i64* %121 to i32*
  store i32 %123, i32* %124, !mcsema_real_eip !78
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %126 = add i64 %125, -48, !mcsema_real_eip !79
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !79
  %128 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %129 = trunc i64 %128 to i32, !mcsema_real_eip !79
  %130 = bitcast i64* %127 to i32*
  store i32 %129, i32* %130, !mcsema_real_eip !79
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %132 = add i64 %131, -52, !mcsema_real_eip !80
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !80
  %134 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %135 = trunc i64 %134 to i32, !mcsema_real_eip !80
  %136 = bitcast i64* %133 to i32*
  store i32 %135, i32* %136, !mcsema_real_eip !80
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %138 = add i64 %137, -64, !mcsema_real_eip !81
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !81
  %140 = load i64, i64* %R11_val, !mcsema_real_eip !81
  store i64 %140, i64* %139, !mcsema_real_eip !81
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %142 = add i64 %141, -72, !mcsema_real_eip !82
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !82
  %144 = load i64, i64* %R10_val, !mcsema_real_eip !82
  store i64 %144, i64* %143, !mcsema_real_eip !82
  %145 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %146 = add i64 %145, -80, !mcsema_real_eip !83
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !83
  %148 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  store i64 %148, i64* %147, !mcsema_real_eip !83
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %150 = add i64 %149, -84, !mcsema_real_eip !84
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !84
  %152 = bitcast i64* %151 to i32*
  store i32 0, i32* %152, !mcsema_real_eip !84
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %154 = add i64 %153, -12, !mcsema_real_eip !85
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !85
  %156 = bitcast i64* %155 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !85
  %158 = zext i32 %157 to i64, !mcsema_real_eip !85
  store i64 %158, i64* %RDI_val, !mcsema_real_eip !85
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %160 = add i64 %159, -84, !mcsema_real_eip !86
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !86
  %162 = bitcast i64* %161 to i32*
  %163 = load i32, i32* %162, !mcsema_real_eip !86
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %157, i32 %163)
  %164 = extractvalue { i32, i1 } %uadd, 0
  %165 = xor i32 %164, %163, !mcsema_real_eip !87
  %166 = xor i32 %165, %157, !mcsema_real_eip !87
  %167 = and i32 %166, 16, !mcsema_real_eip !87
  %168 = icmp ne i32 %167, 0, !mcsema_real_eip !87
  store i1 %168, i1* %AF_val, !mcsema_real_eip !87
  %169 = icmp slt i32 %164, 0
  store i1 %169, i1* %SF_val, !mcsema_real_eip !87
  %170 = icmp eq i32 %164, 0, !mcsema_real_eip !87
  store i1 %170, i1* %ZF_val, !mcsema_real_eip !87
  %171 = xor i32 %163, -2147483648, !mcsema_real_eip !87
  %172 = xor i32 %171, %157, !mcsema_real_eip !87
  %173 = and i32 %165, %172, !mcsema_real_eip !87
  %174 = icmp slt i32 %173, 0
  store i1 %174, i1* %OF_val, !mcsema_real_eip !87
  %175 = trunc i32 %164 to i8, !mcsema_real_eip !87
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !87
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF_val, !mcsema_real_eip !87
  %179 = extractvalue { i32, i1 } %uadd, 1
  store i1 %179, i1* %CF_val, !mcsema_real_eip !87
  %180 = zext i32 %164 to i64, !mcsema_real_eip !87
  store i64 %180, i64* %R8_val, !mcsema_real_eip !87
  %181 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %182 = add i64 %181, -84, !mcsema_real_eip !88
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !88
  %184 = bitcast i64* %183 to i32*
  store i32 %164, i32* %184, !mcsema_real_eip !88
  %185 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %186 = add i64 %185, -88, !mcsema_real_eip !89
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !89
  %188 = bitcast i64* %187 to i32*
  store i32 0, i32* %188, !mcsema_real_eip !89
  br label %block_0x56, !mcsema_real_eip !90

block_0x56:                                       ; preds = %block_0x62, %entry
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %190 = add i64 %189, -88, !mcsema_real_eip !90
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !90
  %192 = bitcast i64* %191 to i32*
  %193 = load i32, i32* %192, !mcsema_real_eip !90
  %194 = zext i32 %193 to i64, !mcsema_real_eip !90
  store i64 %194, i64* %RAX_val, !mcsema_real_eip !90
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %196 = add i64 %195, -44, !mcsema_real_eip !91
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !91
  %198 = bitcast i64* %197 to i32*
  %199 = load i32, i32* %198, !mcsema_real_eip !91
  %200 = sub i32 %193, %199, !mcsema_real_eip !91
  %201 = xor i32 %200, %193, !mcsema_real_eip !91
  %202 = xor i32 %201, %199, !mcsema_real_eip !91
  %203 = and i32 %202, 16, !mcsema_real_eip !91
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !91
  store i1 %204, i1* %AF_val, !mcsema_real_eip !91
  %205 = trunc i32 %200 to i8, !mcsema_real_eip !91
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !91
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  store i1 %208, i1* %PF_val, !mcsema_real_eip !91
  %209 = icmp eq i32 %193, %199
  store i1 %209, i1* %ZF_val, !mcsema_real_eip !91
  %210 = icmp slt i32 %200, 0
  store i1 %210, i1* %SF_val, !mcsema_real_eip !91
  %211 = icmp ult i32 %193, %199, !mcsema_real_eip !91
  store i1 %211, i1* %CF_val, !mcsema_real_eip !91
  %212 = xor i32 %199, %193, !mcsema_real_eip !91
  %213 = and i32 %201, %212, !mcsema_real_eip !91
  %214 = icmp slt i32 %213, 0
  store i1 %214, i1* %OF_val, !mcsema_real_eip !91
  %215 = load i1, i1* %SF_val, !mcsema_real_eip !92
  %tmp = xor i1 %215, %214
  %216 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  br i1 %tmp, label %block_0x62, label %block_0x85, !mcsema_real_eip !92

block_0x62:                                       ; preds = %block_0x56
  %217 = add i64 %216, -88, !mcsema_real_eip !94
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !94
  %219 = bitcast i64* %218 to i32*
  %220 = load i32, i32* %219, !mcsema_real_eip !94
  %221 = sext i32 %220 to i64, !mcsema_real_eip !94
  store i64 %221, i64* %RAX_val, !mcsema_real_eip !94
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %223 = add i64 %222, -24, !mcsema_real_eip !95
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !95
  %225 = load i64, i64* %224, !mcsema_real_eip !95
  store i64 %225, i64* %RCX_val, !mcsema_real_eip !95
  %226 = shl nsw i64 %221, 2
  %227 = add i64 %225, %226, !mcsema_real_eip !96
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !96
  %229 = bitcast i64* %228 to i32*
  %230 = load i32, i32* %229, !mcsema_real_eip !96
  %231 = zext i32 %230 to i64, !mcsema_real_eip !96
  store i64 %231, i64* %RDX_val, !mcsema_real_eip !96
  %232 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %233 = add i64 %232, -84, !mcsema_real_eip !97
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !97
  %235 = bitcast i64* %234 to i32*
  %236 = load i32, i32* %235, !mcsema_real_eip !97
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %236)
  %237 = extractvalue { i32, i1 } %uadd71, 0
  %238 = xor i32 %237, %236, !mcsema_real_eip !98
  %239 = xor i32 %238, %230, !mcsema_real_eip !98
  %240 = and i32 %239, 16, !mcsema_real_eip !98
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !98
  store i1 %241, i1* %AF_val, !mcsema_real_eip !98
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF_val, !mcsema_real_eip !98
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !98
  store i1 %243, i1* %ZF_val, !mcsema_real_eip !98
  %244 = xor i32 %236, -2147483648, !mcsema_real_eip !98
  %245 = xor i32 %244, %230, !mcsema_real_eip !98
  %246 = and i32 %238, %245, !mcsema_real_eip !98
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF_val, !mcsema_real_eip !98
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !98
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !98
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF_val, !mcsema_real_eip !98
  %252 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %252, i1* %CF_val, !mcsema_real_eip !98
  %253 = zext i32 %237 to i64, !mcsema_real_eip !98
  store i64 %253, i64* %RSI_val, !mcsema_real_eip !98
  %254 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %255 = add i64 %254, -84, !mcsema_real_eip !99
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !99
  %257 = bitcast i64* %256 to i32*
  store i32 %237, i32* %257, !mcsema_real_eip !99
  %258 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %259 = add i64 %258, -88, !mcsema_real_eip !100
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !100
  %261 = bitcast i64* %260 to i32*
  %262 = load i32, i32* %261, !mcsema_real_eip !100
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 1)
  %263 = extractvalue { i32, i1 } %uadd72, 0
  %264 = xor i32 %263, %262, !mcsema_real_eip !101
  %265 = and i32 %264, 16, !mcsema_real_eip !101
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !101
  store i1 %266, i1* %AF_val, !mcsema_real_eip !101
  %267 = icmp slt i32 %263, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !101
  %268 = icmp eq i32 %263, 0, !mcsema_real_eip !101
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !101
  %269 = xor i32 %262, -2147483648, !mcsema_real_eip !101
  %270 = and i32 %264, %269, !mcsema_real_eip !101
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !101
  %272 = trunc i32 %263 to i8, !mcsema_real_eip !101
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !101
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !101
  %276 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !101
  %277 = zext i32 %263 to i64, !mcsema_real_eip !101
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !101
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %279 = add i64 %278, -88, !mcsema_real_eip !102
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !102
  %281 = bitcast i64* %280 to i32*
  store i32 %263, i32* %281, !mcsema_real_eip !102
  br label %block_0x56, !mcsema_real_eip !103

block_0x85:                                       ; preds = %block_0x56
  %.lcssa96 = phi i64 [ %216, %block_0x56 ]
  %282 = add i64 %.lcssa96, -32, !mcsema_real_eip !93
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !93
  %284 = load i64, i64* %283, !mcsema_real_eip !93
  store i64 %284, i64* %RAX_val, !mcsema_real_eip !93
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !104
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !104
  %288 = zext i32 %287 to i64, !mcsema_real_eip !104
  store i64 %288, i64* %RCX_val, !mcsema_real_eip !104
  %289 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %290 = add i64 %289, -84, !mcsema_real_eip !105
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !105
  %292 = bitcast i64* %291 to i32*
  %293 = load i32, i32* %292, !mcsema_real_eip !105
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %287, i32 %293)
  %294 = extractvalue { i32, i1 } %uadd73, 0
  %295 = xor i32 %294, %293, !mcsema_real_eip !106
  %296 = xor i32 %295, %287, !mcsema_real_eip !106
  %297 = and i32 %296, 16, !mcsema_real_eip !106
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !106
  store i1 %298, i1* %AF_val, !mcsema_real_eip !106
  %299 = icmp slt i32 %294, 0
  store i1 %299, i1* %SF_val, !mcsema_real_eip !106
  %300 = icmp eq i32 %294, 0, !mcsema_real_eip !106
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !106
  %301 = xor i32 %293, -2147483648, !mcsema_real_eip !106
  %302 = xor i32 %301, %287, !mcsema_real_eip !106
  %303 = and i32 %295, %302, !mcsema_real_eip !106
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF_val, !mcsema_real_eip !106
  %305 = trunc i32 %294 to i8, !mcsema_real_eip !106
  %306 = tail call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !106
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF_val, !mcsema_real_eip !106
  %309 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %309, i1* %CF_val, !mcsema_real_eip !106
  %310 = zext i32 %294 to i64, !mcsema_real_eip !106
  store i64 %310, i64* %RDX_val, !mcsema_real_eip !106
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %312 = add i64 %311, -84, !mcsema_real_eip !107
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !107
  %314 = bitcast i64* %313 to i32*
  store i32 %294, i32* %314, !mcsema_real_eip !107
  %315 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %316 = add i64 %315, -92, !mcsema_real_eip !108
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !108
  %318 = bitcast i64* %317 to i32*
  store i32 0, i32* %318, !mcsema_real_eip !108
  br label %block_0x9a, !mcsema_real_eip !94

block_0x9a:                                       ; preds = %block_0xa6, %block_0x85
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %320 = add i64 %319, -92, !mcsema_real_eip !109
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !109
  %322 = bitcast i64* %321 to i32*
  %323 = load i32, i32* %322, !mcsema_real_eip !109
  %324 = zext i32 %323 to i64, !mcsema_real_eip !109
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !109
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %326 = add i64 %325, -48, !mcsema_real_eip !110
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !110
  %328 = bitcast i64* %327 to i32*
  %329 = load i32, i32* %328, !mcsema_real_eip !110
  %330 = sub i32 %323, %329, !mcsema_real_eip !110
  %331 = xor i32 %330, %323, !mcsema_real_eip !110
  %332 = xor i32 %331, %329, !mcsema_real_eip !110
  %333 = and i32 %332, 16, !mcsema_real_eip !110
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !110
  store i1 %334, i1* %AF_val, !mcsema_real_eip !110
  %335 = trunc i32 %330 to i8, !mcsema_real_eip !110
  %336 = tail call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !110
  %337 = and i8 %336, 1
  %338 = icmp eq i8 %337, 0
  store i1 %338, i1* %PF_val, !mcsema_real_eip !110
  %339 = icmp eq i32 %323, %329
  store i1 %339, i1* %ZF_val, !mcsema_real_eip !110
  %340 = icmp slt i32 %330, 0
  store i1 %340, i1* %SF_val, !mcsema_real_eip !110
  %341 = icmp ult i32 %323, %329, !mcsema_real_eip !110
  store i1 %341, i1* %CF_val, !mcsema_real_eip !110
  %342 = xor i32 %329, %323, !mcsema_real_eip !110
  %343 = and i32 %331, %342, !mcsema_real_eip !110
  %344 = icmp slt i32 %343, 0
  store i1 %344, i1* %OF_val, !mcsema_real_eip !110
  %345 = load i1, i1* %SF_val, !mcsema_real_eip !111
  %tmp74 = xor i1 %345, %344
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  br i1 %tmp74, label %block_0xa6, label %block_0xc9, !mcsema_real_eip !111

block_0xa6:                                       ; preds = %block_0x9a
  %347 = add i64 %346, -92, !mcsema_real_eip !113
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !113
  %349 = bitcast i64* %348 to i32*
  %350 = load i32, i32* %349, !mcsema_real_eip !113
  %351 = sext i32 %350 to i64, !mcsema_real_eip !113
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !113
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %353 = add i64 %352, -40, !mcsema_real_eip !114
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !114
  %355 = load i64, i64* %354, !mcsema_real_eip !114
  store i64 %355, i64* %RCX_val, !mcsema_real_eip !114
  %356 = shl nsw i64 %351, 2
  %357 = add i64 %355, %356, !mcsema_real_eip !115
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !115
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, !mcsema_real_eip !115
  %361 = zext i32 %360 to i64, !mcsema_real_eip !115
  store i64 %361, i64* %RDX_val, !mcsema_real_eip !115
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !116
  %363 = add i64 %362, -84, !mcsema_real_eip !116
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !116
  %365 = bitcast i64* %364 to i32*
  %366 = load i32, i32* %365, !mcsema_real_eip !116
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %360, i32 %366)
  %367 = extractvalue { i32, i1 } %uadd75, 0
  %368 = xor i32 %367, %366, !mcsema_real_eip !117
  %369 = xor i32 %368, %360, !mcsema_real_eip !117
  %370 = and i32 %369, 16, !mcsema_real_eip !117
  %371 = icmp ne i32 %370, 0, !mcsema_real_eip !117
  store i1 %371, i1* %AF_val, !mcsema_real_eip !117
  %372 = icmp slt i32 %367, 0
  store i1 %372, i1* %SF_val, !mcsema_real_eip !117
  %373 = icmp eq i32 %367, 0, !mcsema_real_eip !117
  store i1 %373, i1* %ZF_val, !mcsema_real_eip !117
  %374 = xor i32 %366, -2147483648, !mcsema_real_eip !117
  %375 = xor i32 %374, %360, !mcsema_real_eip !117
  %376 = and i32 %368, %375, !mcsema_real_eip !117
  %377 = icmp slt i32 %376, 0
  store i1 %377, i1* %OF_val, !mcsema_real_eip !117
  %378 = trunc i32 %367 to i8, !mcsema_real_eip !117
  %379 = tail call i8 @llvm.ctpop.i8(i8 %378), !mcsema_real_eip !117
  %380 = and i8 %379, 1
  %381 = icmp eq i8 %380, 0
  store i1 %381, i1* %PF_val, !mcsema_real_eip !117
  %382 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %382, i1* %CF_val, !mcsema_real_eip !117
  %383 = zext i32 %367 to i64, !mcsema_real_eip !117
  store i64 %383, i64* %RSI_val, !mcsema_real_eip !117
  %384 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %385 = add i64 %384, -84, !mcsema_real_eip !118
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !118
  %387 = bitcast i64* %386 to i32*
  store i32 %367, i32* %387, !mcsema_real_eip !118
  %388 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %389 = add i64 %388, -92, !mcsema_real_eip !119
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !119
  %391 = bitcast i64* %390 to i32*
  %392 = load i32, i32* %391, !mcsema_real_eip !119
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 1)
  %393 = extractvalue { i32, i1 } %uadd76, 0
  %394 = xor i32 %393, %392, !mcsema_real_eip !120
  %395 = and i32 %394, 16, !mcsema_real_eip !120
  %396 = icmp ne i32 %395, 0, !mcsema_real_eip !120
  store i1 %396, i1* %AF_val, !mcsema_real_eip !120
  %397 = icmp slt i32 %393, 0
  store i1 %397, i1* %SF_val, !mcsema_real_eip !120
  %398 = icmp eq i32 %393, 0, !mcsema_real_eip !120
  store i1 %398, i1* %ZF_val, !mcsema_real_eip !120
  %399 = xor i32 %392, -2147483648, !mcsema_real_eip !120
  %400 = and i32 %394, %399, !mcsema_real_eip !120
  %401 = icmp slt i32 %400, 0
  store i1 %401, i1* %OF_val, !mcsema_real_eip !120
  %402 = trunc i32 %393 to i8, !mcsema_real_eip !120
  %403 = tail call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !120
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  store i1 %405, i1* %PF_val, !mcsema_real_eip !120
  %406 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %406, i1* %CF_val, !mcsema_real_eip !120
  %407 = zext i32 %393 to i64, !mcsema_real_eip !120
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !120
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %409 = add i64 %408, -92, !mcsema_real_eip !121
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !121
  %411 = bitcast i64* %410 to i32*
  store i32 %393, i32* %411, !mcsema_real_eip !121
  br label %block_0x9a, !mcsema_real_eip !122

block_0xc9:                                       ; preds = %block_0x9a
  %.lcssa95 = phi i64 [ %346, %block_0x9a ]
  %412 = add i64 %.lcssa95, -52, !mcsema_real_eip !112
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !112
  %414 = bitcast i64* %413 to i32*
  %415 = load i32, i32* %414, !mcsema_real_eip !112
  %416 = zext i32 %415 to i64, !mcsema_real_eip !112
  store i64 %416, i64* %RAX_val, !mcsema_real_eip !112
  %417 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %418 = add i64 %417, -84, !mcsema_real_eip !123
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !123
  %420 = bitcast i64* %419 to i32*
  %421 = load i32, i32* %420, !mcsema_real_eip !123
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %415, i32 %421)
  %422 = extractvalue { i32, i1 } %uadd77, 0
  %423 = xor i32 %422, %421, !mcsema_real_eip !124
  %424 = xor i32 %423, %415, !mcsema_real_eip !124
  %425 = and i32 %424, 16, !mcsema_real_eip !124
  %426 = icmp ne i32 %425, 0, !mcsema_real_eip !124
  store i1 %426, i1* %AF_val, !mcsema_real_eip !124
  %427 = icmp slt i32 %422, 0
  store i1 %427, i1* %SF_val, !mcsema_real_eip !124
  %428 = icmp eq i32 %422, 0, !mcsema_real_eip !124
  store i1 %428, i1* %ZF_val, !mcsema_real_eip !124
  %429 = xor i32 %421, -2147483648, !mcsema_real_eip !124
  %430 = xor i32 %429, %415, !mcsema_real_eip !124
  %431 = and i32 %423, %430, !mcsema_real_eip !124
  %432 = icmp slt i32 %431, 0
  store i1 %432, i1* %OF_val, !mcsema_real_eip !124
  %433 = trunc i32 %422 to i8, !mcsema_real_eip !124
  %434 = tail call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !124
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  store i1 %436, i1* %PF_val, !mcsema_real_eip !124
  %437 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %437, i1* %CF_val, !mcsema_real_eip !124
  %438 = zext i32 %422 to i64, !mcsema_real_eip !124
  store i64 %438, i64* %RCX_val, !mcsema_real_eip !124
  %439 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %440 = add i64 %439, -84, !mcsema_real_eip !125
  %441 = inttoptr i64 %440 to i64*, !mcsema_real_eip !125
  %442 = bitcast i64* %441 to i32*
  store i32 %422, i32* %442, !mcsema_real_eip !125
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %444 = add i64 %443, -96, !mcsema_real_eip !126
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !126
  %446 = bitcast i64* %445 to i32*
  store i32 0, i32* %446, !mcsema_real_eip !126
  br label %block_0xdb, !mcsema_real_eip !113

block_0xdb:                                       ; preds = %block_0xe7, %block_0xc9
  %447 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %448 = add i64 %447, -96, !mcsema_real_eip !127
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !127
  %450 = bitcast i64* %449 to i32*
  %451 = load i32, i32* %450, !mcsema_real_eip !127
  %452 = zext i32 %451 to i64, !mcsema_real_eip !127
  store i64 %452, i64* %RAX_val, !mcsema_real_eip !127
  %453 = load i64, i64* %RBP_val, !mcsema_real_eip !128
  %454 = add i64 %453, -44, !mcsema_real_eip !128
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !128
  %456 = bitcast i64* %455 to i32*
  %457 = load i32, i32* %456, !mcsema_real_eip !128
  %458 = sub i32 %451, %457, !mcsema_real_eip !128
  %459 = xor i32 %458, %451, !mcsema_real_eip !128
  %460 = xor i32 %459, %457, !mcsema_real_eip !128
  %461 = and i32 %460, 16, !mcsema_real_eip !128
  %462 = icmp ne i32 %461, 0, !mcsema_real_eip !128
  store i1 %462, i1* %AF_val, !mcsema_real_eip !128
  %463 = trunc i32 %458 to i8, !mcsema_real_eip !128
  %464 = tail call i8 @llvm.ctpop.i8(i8 %463), !mcsema_real_eip !128
  %465 = and i8 %464, 1
  %466 = icmp eq i8 %465, 0
  store i1 %466, i1* %PF_val, !mcsema_real_eip !128
  %467 = icmp eq i32 %451, %457
  store i1 %467, i1* %ZF_val, !mcsema_real_eip !128
  %468 = icmp slt i32 %458, 0
  store i1 %468, i1* %SF_val, !mcsema_real_eip !128
  %469 = icmp ult i32 %451, %457, !mcsema_real_eip !128
  store i1 %469, i1* %CF_val, !mcsema_real_eip !128
  %470 = xor i32 %457, %451, !mcsema_real_eip !128
  %471 = and i32 %459, %470, !mcsema_real_eip !128
  %472 = icmp slt i32 %471, 0
  store i1 %472, i1* %OF_val, !mcsema_real_eip !128
  %473 = load i1, i1* %SF_val, !mcsema_real_eip !129
  %tmp78 = xor i1 %473, %472
  %474 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  br i1 %tmp78, label %block_0xe7, label %block_0x10a, !mcsema_real_eip !129

block_0xe7:                                       ; preds = %block_0xdb
  %475 = add i64 %474, -96, !mcsema_real_eip !131
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !131
  %477 = bitcast i64* %476 to i32*
  %478 = load i32, i32* %477, !mcsema_real_eip !131
  %479 = sext i32 %478 to i64, !mcsema_real_eip !131
  store i64 %479, i64* %RAX_val, !mcsema_real_eip !131
  %480 = load i64, i64* %RBP_val, !mcsema_real_eip !132
  %481 = add i64 %480, -64, !mcsema_real_eip !132
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !132
  %483 = load i64, i64* %482, !mcsema_real_eip !132
  store i64 %483, i64* %RCX_val, !mcsema_real_eip !132
  %484 = shl nsw i64 %479, 2
  %485 = add i64 %483, %484, !mcsema_real_eip !133
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !133
  %487 = bitcast i64* %486 to i32*
  %488 = load i32, i32* %487, !mcsema_real_eip !133
  %489 = zext i32 %488 to i64, !mcsema_real_eip !133
  store i64 %489, i64* %RDX_val, !mcsema_real_eip !133
  %490 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  %491 = add i64 %490, -84, !mcsema_real_eip !134
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !134
  %493 = bitcast i64* %492 to i32*
  %494 = load i32, i32* %493, !mcsema_real_eip !134
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 %494)
  %495 = extractvalue { i32, i1 } %uadd79, 0
  %496 = xor i32 %495, %494, !mcsema_real_eip !135
  %497 = xor i32 %496, %488, !mcsema_real_eip !135
  %498 = and i32 %497, 16, !mcsema_real_eip !135
  %499 = icmp ne i32 %498, 0, !mcsema_real_eip !135
  store i1 %499, i1* %AF_val, !mcsema_real_eip !135
  %500 = icmp slt i32 %495, 0
  store i1 %500, i1* %SF_val, !mcsema_real_eip !135
  %501 = icmp eq i32 %495, 0, !mcsema_real_eip !135
  store i1 %501, i1* %ZF_val, !mcsema_real_eip !135
  %502 = xor i32 %494, -2147483648, !mcsema_real_eip !135
  %503 = xor i32 %502, %488, !mcsema_real_eip !135
  %504 = and i32 %496, %503, !mcsema_real_eip !135
  %505 = icmp slt i32 %504, 0
  store i1 %505, i1* %OF_val, !mcsema_real_eip !135
  %506 = trunc i32 %495 to i8, !mcsema_real_eip !135
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !135
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  store i1 %509, i1* %PF_val, !mcsema_real_eip !135
  %510 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %510, i1* %CF_val, !mcsema_real_eip !135
  %511 = zext i32 %495 to i64, !mcsema_real_eip !135
  store i64 %511, i64* %RSI_val, !mcsema_real_eip !135
  %512 = load i64, i64* %RBP_val, !mcsema_real_eip !136
  %513 = add i64 %512, -84, !mcsema_real_eip !136
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !136
  %515 = bitcast i64* %514 to i32*
  store i32 %495, i32* %515, !mcsema_real_eip !136
  %516 = load i64, i64* %RBP_val, !mcsema_real_eip !137
  %517 = add i64 %516, -96, !mcsema_real_eip !137
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !137
  %519 = bitcast i64* %518 to i32*
  %520 = load i32, i32* %519, !mcsema_real_eip !137
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %520, i32 1)
  %521 = extractvalue { i32, i1 } %uadd80, 0
  %522 = xor i32 %521, %520, !mcsema_real_eip !138
  %523 = and i32 %522, 16, !mcsema_real_eip !138
  %524 = icmp ne i32 %523, 0, !mcsema_real_eip !138
  store i1 %524, i1* %AF_val, !mcsema_real_eip !138
  %525 = icmp slt i32 %521, 0
  store i1 %525, i1* %SF_val, !mcsema_real_eip !138
  %526 = icmp eq i32 %521, 0, !mcsema_real_eip !138
  store i1 %526, i1* %ZF_val, !mcsema_real_eip !138
  %527 = xor i32 %520, -2147483648, !mcsema_real_eip !138
  %528 = and i32 %522, %527, !mcsema_real_eip !138
  %529 = icmp slt i32 %528, 0
  store i1 %529, i1* %OF_val, !mcsema_real_eip !138
  %530 = trunc i32 %521 to i8, !mcsema_real_eip !138
  %531 = tail call i8 @llvm.ctpop.i8(i8 %530), !mcsema_real_eip !138
  %532 = and i8 %531, 1
  %533 = icmp eq i8 %532, 0
  store i1 %533, i1* %PF_val, !mcsema_real_eip !138
  %534 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %534, i1* %CF_val, !mcsema_real_eip !138
  %535 = zext i32 %521 to i64, !mcsema_real_eip !138
  store i64 %535, i64* %RAX_val, !mcsema_real_eip !138
  %536 = load i64, i64* %RBP_val, !mcsema_real_eip !139
  %537 = add i64 %536, -96, !mcsema_real_eip !139
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !139
  %539 = bitcast i64* %538 to i32*
  store i32 %521, i32* %539, !mcsema_real_eip !139
  br label %block_0xdb, !mcsema_real_eip !140

block_0x10a:                                      ; preds = %block_0xdb
  %.lcssa94 = phi i64 [ %474, %block_0xdb ]
  %540 = add i64 %.lcssa94, -72, !mcsema_real_eip !130
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !130
  %542 = load i64, i64* %541, !mcsema_real_eip !130
  store i64 %542, i64* %RAX_val, !mcsema_real_eip !130
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !141
  %544 = bitcast i64* %543 to i32*
  %545 = load i32, i32* %544, !mcsema_real_eip !141
  %546 = zext i32 %545 to i64, !mcsema_real_eip !141
  store i64 %546, i64* %RCX_val, !mcsema_real_eip !141
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !142
  %548 = add i64 %547, -84, !mcsema_real_eip !142
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !142
  %550 = bitcast i64* %549 to i32*
  %551 = load i32, i32* %550, !mcsema_real_eip !142
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %545, i32 %551)
  %552 = extractvalue { i32, i1 } %uadd81, 0
  %553 = xor i32 %552, %551, !mcsema_real_eip !143
  %554 = xor i32 %553, %545, !mcsema_real_eip !143
  %555 = and i32 %554, 16, !mcsema_real_eip !143
  %556 = icmp ne i32 %555, 0, !mcsema_real_eip !143
  store i1 %556, i1* %AF_val, !mcsema_real_eip !143
  %557 = icmp slt i32 %552, 0
  store i1 %557, i1* %SF_val, !mcsema_real_eip !143
  %558 = icmp eq i32 %552, 0, !mcsema_real_eip !143
  store i1 %558, i1* %ZF_val, !mcsema_real_eip !143
  %559 = xor i32 %551, -2147483648, !mcsema_real_eip !143
  %560 = xor i32 %559, %545, !mcsema_real_eip !143
  %561 = and i32 %553, %560, !mcsema_real_eip !143
  %562 = icmp slt i32 %561, 0
  store i1 %562, i1* %OF_val, !mcsema_real_eip !143
  %563 = trunc i32 %552 to i8, !mcsema_real_eip !143
  %564 = tail call i8 @llvm.ctpop.i8(i8 %563), !mcsema_real_eip !143
  %565 = and i8 %564, 1
  %566 = icmp eq i8 %565, 0
  store i1 %566, i1* %PF_val, !mcsema_real_eip !143
  %567 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %567, i1* %CF_val, !mcsema_real_eip !143
  %568 = zext i32 %552 to i64, !mcsema_real_eip !143
  store i64 %568, i64* %RDX_val, !mcsema_real_eip !143
  %569 = load i64, i64* %RBP_val, !mcsema_real_eip !144
  %570 = add i64 %569, -84, !mcsema_real_eip !144
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !144
  %572 = bitcast i64* %571 to i32*
  store i32 %552, i32* %572, !mcsema_real_eip !144
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !145
  %574 = add i64 %573, -100, !mcsema_real_eip !145
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !145
  %576 = bitcast i64* %575 to i32*
  store i32 0, i32* %576, !mcsema_real_eip !145
  br label %block_0x11f, !mcsema_real_eip !131

block_0x11f:                                      ; preds = %block_0x12b, %block_0x10a
  %577 = load i64, i64* %RBP_val, !mcsema_real_eip !146
  %578 = add i64 %577, -100, !mcsema_real_eip !146
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !146
  %580 = bitcast i64* %579 to i32*
  %581 = load i32, i32* %580, !mcsema_real_eip !146
  %582 = zext i32 %581 to i64, !mcsema_real_eip !146
  store i64 %582, i64* %RAX_val, !mcsema_real_eip !146
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !147
  %584 = add i64 %583, -48, !mcsema_real_eip !147
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !147
  %586 = bitcast i64* %585 to i32*
  %587 = load i32, i32* %586, !mcsema_real_eip !147
  %588 = sub i32 %581, %587, !mcsema_real_eip !147
  %589 = xor i32 %588, %581, !mcsema_real_eip !147
  %590 = xor i32 %589, %587, !mcsema_real_eip !147
  %591 = and i32 %590, 16, !mcsema_real_eip !147
  %592 = icmp ne i32 %591, 0, !mcsema_real_eip !147
  store i1 %592, i1* %AF_val, !mcsema_real_eip !147
  %593 = trunc i32 %588 to i8, !mcsema_real_eip !147
  %594 = tail call i8 @llvm.ctpop.i8(i8 %593), !mcsema_real_eip !147
  %595 = and i8 %594, 1
  %596 = icmp eq i8 %595, 0
  store i1 %596, i1* %PF_val, !mcsema_real_eip !147
  %597 = icmp eq i32 %581, %587
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !147
  %598 = icmp slt i32 %588, 0
  store i1 %598, i1* %SF_val, !mcsema_real_eip !147
  %599 = icmp ult i32 %581, %587, !mcsema_real_eip !147
  store i1 %599, i1* %CF_val, !mcsema_real_eip !147
  %600 = xor i32 %587, %581, !mcsema_real_eip !147
  %601 = and i32 %589, %600, !mcsema_real_eip !147
  %602 = icmp slt i32 %601, 0
  store i1 %602, i1* %OF_val, !mcsema_real_eip !147
  %603 = load i1, i1* %SF_val, !mcsema_real_eip !148
  %tmp82 = xor i1 %603, %602
  %604 = load i64, i64* %RBP_val, !mcsema_real_eip !149
  br i1 %tmp82, label %block_0x12b, label %block_0x14e, !mcsema_real_eip !148

block_0x12b:                                      ; preds = %block_0x11f
  %605 = add i64 %604, -100, !mcsema_real_eip !150
  %606 = inttoptr i64 %605 to i64*, !mcsema_real_eip !150
  %607 = bitcast i64* %606 to i32*
  %608 = load i32, i32* %607, !mcsema_real_eip !150
  %609 = sext i32 %608 to i64, !mcsema_real_eip !150
  store i64 %609, i64* %RAX_val, !mcsema_real_eip !150
  %610 = load i64, i64* %RBP_val, !mcsema_real_eip !151
  %611 = add i64 %610, -80, !mcsema_real_eip !151
  %612 = inttoptr i64 %611 to i64*, !mcsema_real_eip !151
  %613 = load i64, i64* %612, !mcsema_real_eip !151
  store i64 %613, i64* %RCX_val, !mcsema_real_eip !151
  %614 = shl nsw i64 %609, 2
  %615 = add i64 %613, %614, !mcsema_real_eip !152
  %616 = inttoptr i64 %615 to i64*, !mcsema_real_eip !152
  %617 = bitcast i64* %616 to i32*
  %618 = load i32, i32* %617, !mcsema_real_eip !152
  %619 = zext i32 %618 to i64, !mcsema_real_eip !152
  store i64 %619, i64* %RDX_val, !mcsema_real_eip !152
  %620 = load i64, i64* %RBP_val, !mcsema_real_eip !153
  %621 = add i64 %620, -84, !mcsema_real_eip !153
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !153
  %623 = bitcast i64* %622 to i32*
  %624 = load i32, i32* %623, !mcsema_real_eip !153
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %618, i32 %624)
  %625 = extractvalue { i32, i1 } %uadd83, 0
  %626 = xor i32 %625, %624, !mcsema_real_eip !154
  %627 = xor i32 %626, %618, !mcsema_real_eip !154
  %628 = and i32 %627, 16, !mcsema_real_eip !154
  %629 = icmp ne i32 %628, 0, !mcsema_real_eip !154
  store i1 %629, i1* %AF_val, !mcsema_real_eip !154
  %630 = icmp slt i32 %625, 0
  store i1 %630, i1* %SF_val, !mcsema_real_eip !154
  %631 = icmp eq i32 %625, 0, !mcsema_real_eip !154
  store i1 %631, i1* %ZF_val, !mcsema_real_eip !154
  %632 = xor i32 %624, -2147483648, !mcsema_real_eip !154
  %633 = xor i32 %632, %618, !mcsema_real_eip !154
  %634 = and i32 %626, %633, !mcsema_real_eip !154
  %635 = icmp slt i32 %634, 0
  store i1 %635, i1* %OF_val, !mcsema_real_eip !154
  %636 = trunc i32 %625 to i8, !mcsema_real_eip !154
  %637 = tail call i8 @llvm.ctpop.i8(i8 %636), !mcsema_real_eip !154
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  store i1 %639, i1* %PF_val, !mcsema_real_eip !154
  %640 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %640, i1* %CF_val, !mcsema_real_eip !154
  %641 = zext i32 %625 to i64, !mcsema_real_eip !154
  store i64 %641, i64* %RSI_val, !mcsema_real_eip !154
  %642 = load i64, i64* %RBP_val, !mcsema_real_eip !155
  %643 = add i64 %642, -84, !mcsema_real_eip !155
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !155
  %645 = bitcast i64* %644 to i32*
  store i32 %625, i32* %645, !mcsema_real_eip !155
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !156
  %647 = add i64 %646, -100, !mcsema_real_eip !156
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !156
  %649 = bitcast i64* %648 to i32*
  %650 = load i32, i32* %649, !mcsema_real_eip !156
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %650, i32 1)
  %651 = extractvalue { i32, i1 } %uadd84, 0
  %652 = xor i32 %651, %650, !mcsema_real_eip !157
  %653 = and i32 %652, 16, !mcsema_real_eip !157
  %654 = icmp ne i32 %653, 0, !mcsema_real_eip !157
  store i1 %654, i1* %AF_val, !mcsema_real_eip !157
  %655 = icmp slt i32 %651, 0
  store i1 %655, i1* %SF_val, !mcsema_real_eip !157
  %656 = icmp eq i32 %651, 0, !mcsema_real_eip !157
  store i1 %656, i1* %ZF_val, !mcsema_real_eip !157
  %657 = xor i32 %650, -2147483648, !mcsema_real_eip !157
  %658 = and i32 %652, %657, !mcsema_real_eip !157
  %659 = icmp slt i32 %658, 0
  store i1 %659, i1* %OF_val, !mcsema_real_eip !157
  %660 = trunc i32 %651 to i8, !mcsema_real_eip !157
  %661 = tail call i8 @llvm.ctpop.i8(i8 %660), !mcsema_real_eip !157
  %662 = and i8 %661, 1
  %663 = icmp eq i8 %662, 0
  store i1 %663, i1* %PF_val, !mcsema_real_eip !157
  %664 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %664, i1* %CF_val, !mcsema_real_eip !157
  %665 = zext i32 %651 to i64, !mcsema_real_eip !157
  store i64 %665, i64* %RAX_val, !mcsema_real_eip !157
  %666 = load i64, i64* %RBP_val, !mcsema_real_eip !158
  %667 = add i64 %666, -100, !mcsema_real_eip !158
  %668 = inttoptr i64 %667 to i64*, !mcsema_real_eip !158
  %669 = bitcast i64* %668 to i32*
  store i32 %651, i32* %669, !mcsema_real_eip !158
  br label %block_0x11f, !mcsema_real_eip !159

block_0x14e:                                      ; preds = %block_0x11f
  %.lcssa = phi i64 [ %604, %block_0x11f ]
  %670 = add i64 %.lcssa, -84, !mcsema_real_eip !149
  %671 = inttoptr i64 %670 to i64*, !mcsema_real_eip !149
  %672 = bitcast i64* %671 to i32*
  %673 = load i32, i32* %672, !mcsema_real_eip !149
  %674 = zext i32 %673 to i64, !mcsema_real_eip !149
  store i64 %674, i64* %RAX_val, !mcsema_real_eip !149
  %675 = load i64, i64* %RSP_val, !mcsema_real_eip !160
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !160
  %677 = load i64, i64* %676, !mcsema_real_eip !160
  store i64 %677, i64* %RBX_val, !mcsema_real_eip !160
  %678 = add i64 %675, 8, !mcsema_real_eip !160
  store i64 %678, i64* %RSP_val, !mcsema_real_eip !160
  %679 = inttoptr i64 %678 to i64*, !mcsema_real_eip !161
  %680 = load i64, i64* %679, !mcsema_real_eip !161
  store i64 %680, i64* %RBP_val, !mcsema_real_eip !161
  %681 = add i64 %675, 24, !mcsema_real_eip !162
  store i64 %681, i64* %RSP_val, !mcsema_real_eip !162
  %682 = load i64, i64* %RAX_val, !mcsema_real_eip !162
  store i64 %682, i64* %RAX, !mcsema_real_eip !162
  %683 = load i64, i64* %RBX_val, !mcsema_real_eip !162
  store i64 %683, i64* %RBX, !mcsema_real_eip !162
  %684 = load i64, i64* %RCX_val, !mcsema_real_eip !162
  store i64 %684, i64* %RCX, !mcsema_real_eip !162
  %685 = load i64, i64* %RDX_val, !mcsema_real_eip !162
  store i64 %685, i64* %RDX, !mcsema_real_eip !162
  %686 = load i64, i64* %RSI_val, !mcsema_real_eip !162
  store i64 %686, i64* %RSI, !mcsema_real_eip !162
  %687 = load i64, i64* %RDI_val, !mcsema_real_eip !162
  store i64 %687, i64* %RDI, !mcsema_real_eip !162
  %688 = load i64, i64* %RSP_val, !mcsema_real_eip !162
  store i64 %688, i64* %RSP, !mcsema_real_eip !162
  %689 = load i64, i64* %RBP_val, !mcsema_real_eip !162
  store i64 %689, i64* %RBP, !mcsema_real_eip !162
  %690 = load i64, i64* %R8_val, !mcsema_real_eip !162
  store i64 %690, i64* %R8, !mcsema_real_eip !162
  %691 = load i64, i64* %R9_val, !mcsema_real_eip !162
  store i64 %691, i64* %R9, !mcsema_real_eip !162
  %692 = load i64, i64* %R10_val, !mcsema_real_eip !162
  store i64 %692, i64* %R10, !mcsema_real_eip !162
  %693 = load i64, i64* %R11_val, !mcsema_real_eip !162
  store i64 %693, i64* %R11, !mcsema_real_eip !162
  %694 = load i64, i64* %R12_val, !mcsema_real_eip !162
  store i64 %694, i64* %R12, !mcsema_real_eip !162
  %695 = load i64, i64* %R13_val, !mcsema_real_eip !162
  store i64 %695, i64* %R13, !mcsema_real_eip !162
  %696 = load i64, i64* %R14_val, !mcsema_real_eip !162
  store i64 %696, i64* %R14, !mcsema_real_eip !162
  %697 = load i64, i64* %R15_val, !mcsema_real_eip !162
  store i64 %697, i64* %R15, !mcsema_real_eip !162
  %698 = load i64, i64* %RIP_val, !mcsema_real_eip !162
  store i64 %698, i64* %RIP, !mcsema_real_eip !162
  %699 = load i1, i1* %CF_val, !mcsema_real_eip !162
  store i1 %699, i1* %CF, align 1, !mcsema_real_eip !162
  %700 = load i1, i1* %PF_val, !mcsema_real_eip !162
  store i1 %700, i1* %PF, align 1, !mcsema_real_eip !162
  %701 = load i1, i1* %AF_val, !mcsema_real_eip !162
  store i1 %701, i1* %AF, align 1, !mcsema_real_eip !162
  %702 = load i1, i1* %ZF_val, !mcsema_real_eip !162
  store i1 %702, i1* %ZF, align 1, !mcsema_real_eip !162
  %703 = load i1, i1* %SF_val, !mcsema_real_eip !162
  store i1 %703, i1* %SF, align 1, !mcsema_real_eip !162
  %704 = load i1, i1* %OF_val, !mcsema_real_eip !162
  store i1 %704, i1* %OF, align 1, !mcsema_real_eip !162
  %705 = load i1, i1* %DF_val, !mcsema_real_eip !162
  store i1 %705, i1* %DF, align 1, !mcsema_real_eip !162
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !162
  %706 = load i1, i1* %FPU_B_val, !mcsema_real_eip !162
  store i1 %706, i1* %FPU_B, align 1, !mcsema_real_eip !162
  %707 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !162
  store i1 %707, i1* %FPU_C3, align 1, !mcsema_real_eip !162
  %708 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !162
  store i3 %708, i3* %FPU_TOP, align 1, !mcsema_real_eip !162
  %709 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !162
  store i1 %709, i1* %FPU_C2, align 1, !mcsema_real_eip !162
  %710 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !162
  store i1 %710, i1* %FPU_C1, align 1, !mcsema_real_eip !162
  %711 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !162
  store i1 %711, i1* %FPU_C0, align 1, !mcsema_real_eip !162
  %712 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !162
  store i1 %712, i1* %FPU_ES, align 1, !mcsema_real_eip !162
  %713 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !162
  store i1 %713, i1* %FPU_SF, align 1, !mcsema_real_eip !162
  %714 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !162
  store i1 %714, i1* %FPU_PE, align 1, !mcsema_real_eip !162
  %715 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !162
  store i1 %715, i1* %FPU_UE, align 1, !mcsema_real_eip !162
  %716 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !162
  store i1 %716, i1* %FPU_OE, align 1, !mcsema_real_eip !162
  %717 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !162
  store i1 %717, i1* %FPU_ZE, align 1, !mcsema_real_eip !162
  %718 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !162
  store i1 %718, i1* %FPU_DE, align 1, !mcsema_real_eip !162
  %719 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !162
  store i1 %719, i1* %FPU_IE, align 1, !mcsema_real_eip !162
  %720 = load i1, i1* %FPU_X_val, !mcsema_real_eip !162
  store i1 %720, i1* %FPU_X, align 1, !mcsema_real_eip !162
  %721 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !162
  store i2 %721, i2* %FPU_RC, align 1, !mcsema_real_eip !162
  %722 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !162
  store i2 %722, i2* %FPU_PC, align 1, !mcsema_real_eip !162
  %723 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !162
  store i1 %723, i1* %FPU_PM, align 1, !mcsema_real_eip !162
  %724 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !162
  store i1 %724, i1* %FPU_UM, align 1, !mcsema_real_eip !162
  %725 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !162
  store i1 %725, i1* %FPU_OM, align 1, !mcsema_real_eip !162
  %726 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !162
  store i1 %726, i1* %FPU_ZM, align 1, !mcsema_real_eip !162
  %727 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !162
  store i1 %727, i1* %FPU_DM, align 1, !mcsema_real_eip !162
  %728 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !162
  store i1 %728, i1* %FPU_IM, align 1, !mcsema_real_eip !162
  %729 = load i64, i64* %53, align 4
  store i64 %729, i64* %52, align 4
  %730 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !162
  store i16 %730, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !162
  %731 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !162
  store i64 %731, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !162
  %732 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !162
  store i16 %732, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !162
  %733 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !162
  store i64 %733, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !162
  %734 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !162
  store i11 %734, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !162
  %735 = load i128, i128* %XMM0_val, !mcsema_real_eip !162
  store i128 %735, i128* %XMM0, align 1, !mcsema_real_eip !162
  %736 = load i128, i128* %XMM1_val, !mcsema_real_eip !162
  store i128 %736, i128* %XMM1, align 1, !mcsema_real_eip !162
  %737 = load i128, i128* %XMM2_val, !mcsema_real_eip !162
  store i128 %737, i128* %XMM2, align 1, !mcsema_real_eip !162
  %738 = load i128, i128* %XMM3_val, !mcsema_real_eip !162
  store i128 %738, i128* %XMM3, align 1, !mcsema_real_eip !162
  %739 = load i128, i128* %XMM4_val, !mcsema_real_eip !162
  store i128 %739, i128* %XMM4, align 1, !mcsema_real_eip !162
  %740 = load i128, i128* %XMM5_val, !mcsema_real_eip !162
  store i128 %740, i128* %XMM5, align 1, !mcsema_real_eip !162
  %741 = load i128, i128* %XMM6_val, !mcsema_real_eip !162
  store i128 %741, i128* %XMM6, align 1, !mcsema_real_eip !162
  %742 = load i128, i128* %XMM7_val, !mcsema_real_eip !162
  store i128 %742, i128* %XMM7, align 1, !mcsema_real_eip !162
  %743 = load i128, i128* %XMM8_val, !mcsema_real_eip !162
  store i128 %743, i128* %XMM8, align 1, !mcsema_real_eip !162
  %744 = load i128, i128* %XMM9_val, !mcsema_real_eip !162
  store i128 %744, i128* %XMM9, align 1, !mcsema_real_eip !162
  %745 = load i128, i128* %XMM10_val, !mcsema_real_eip !162
  store i128 %745, i128* %XMM10, align 1, !mcsema_real_eip !162
  %746 = load i128, i128* %XMM11_val, !mcsema_real_eip !162
  store i128 %746, i128* %XMM11, align 1, !mcsema_real_eip !162
  %747 = load i128, i128* %XMM12_val, !mcsema_real_eip !162
  store i128 %747, i128* %XMM12, align 1, !mcsema_real_eip !162
  %748 = load i128, i128* %XMM13_val, !mcsema_real_eip !162
  store i128 %748, i128* %XMM13, align 1, !mcsema_real_eip !162
  %749 = load i128, i128* %XMM14_val, !mcsema_real_eip !162
  store i128 %749, i128* %XMM14, align 1, !mcsema_real_eip !162
  %750 = load i128, i128* %XMM15_val, !mcsema_real_eip !162
  store i128 %750, i128* %XMM15, align 1, !mcsema_real_eip !162
  %751 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !162
  store i64 %751, i64* %STACK_BASE, align 1, !mcsema_real_eip !162
  %752 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !162
  store i64 %752, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !162
  ret void, !mcsema_real_eip !162
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_160(%struct.regs* %0)
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
  %R15_val = alloca i64, !mcsema_real_eip !67
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !67
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !67
  %XMM15_val = alloca i128, !mcsema_real_eip !67
  %XMM14_val = alloca i128, !mcsema_real_eip !67
  %XMM13_val = alloca i128, !mcsema_real_eip !67
  %XMM12_val = alloca i128, !mcsema_real_eip !67
  %XMM11_val = alloca i128, !mcsema_real_eip !67
  %XMM10_val = alloca i128, !mcsema_real_eip !67
  %XMM9_val = alloca i128, !mcsema_real_eip !67
  %XMM8_val = alloca i128, !mcsema_real_eip !67
  %XMM7_val = alloca i128, !mcsema_real_eip !67
  %XMM6_val = alloca i128, !mcsema_real_eip !67
  %XMM5_val = alloca i128, !mcsema_real_eip !67
  %XMM4_val = alloca i128, !mcsema_real_eip !67
  %XMM3_val = alloca i128, !mcsema_real_eip !67
  %XMM2_val = alloca i128, !mcsema_real_eip !67
  %XMM1_val = alloca i128, !mcsema_real_eip !67
  %XMM0_val = alloca i128, !mcsema_real_eip !67
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !67
  %FPU_IM_val = alloca i1, !mcsema_real_eip !67
  %FPU_DM_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !67
  %FPU_OM_val = alloca i1, !mcsema_real_eip !67
  %FPU_UM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PC_val = alloca i2, !mcsema_real_eip !67
  %FPU_RC_val = alloca i2, !mcsema_real_eip !67
  %FPU_X_val = alloca i1, !mcsema_real_eip !67
  %FPU_IE_val = alloca i1, !mcsema_real_eip !67
  %FPU_DE_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !67
  %FPU_OE_val = alloca i1, !mcsema_real_eip !67
  %FPU_UE_val = alloca i1, !mcsema_real_eip !67
  %FPU_PE_val = alloca i1, !mcsema_real_eip !67
  %FPU_SF_val = alloca i1, !mcsema_real_eip !67
  %FPU_ES_val = alloca i1, !mcsema_real_eip !67
  %FPU_C0_val = alloca i1, !mcsema_real_eip !67
  %FPU_C1_val = alloca i1, !mcsema_real_eip !67
  %FPU_C2_val = alloca i1, !mcsema_real_eip !67
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !67
  %FPU_C3_val = alloca i1, !mcsema_real_eip !67
  %FPU_B_val = alloca i1, !mcsema_real_eip !67
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !67
  %DF_val = alloca i1, !mcsema_real_eip !67
  %OF_val = alloca i1, !mcsema_real_eip !67
  %SF_val = alloca i1, !mcsema_real_eip !67
  %CF_val = alloca i1, !mcsema_real_eip !67
  %AF_val = alloca i1, !mcsema_real_eip !67
  %PF_val = alloca i1, !mcsema_real_eip !67
  %ZF_val = alloca i1, !mcsema_real_eip !67
  %RIP_val = alloca i64, !mcsema_real_eip !67
  %R14_val = alloca i64, !mcsema_real_eip !67
  %R13_val = alloca i64, !mcsema_real_eip !67
  %R12_val = alloca i64, !mcsema_real_eip !67
  %R11_val = alloca i64, !mcsema_real_eip !67
  %R10_val = alloca i64, !mcsema_real_eip !67
  %R9_val = alloca i64, !mcsema_real_eip !67
  %R8_val = alloca i64, !mcsema_real_eip !67
  %RSP_val = alloca i64, !mcsema_real_eip !67
  %RBP_val = alloca i64, !mcsema_real_eip !67
  %RDI_val = alloca i64, !mcsema_real_eip !67
  %RSI_val = alloca i64, !mcsema_real_eip !67
  %RDX_val = alloca i64, !mcsema_real_eip !67
  %RCX_val = alloca i64, !mcsema_real_eip !67
  %RBX_val = alloca i64, !mcsema_real_eip !67
  %RAX_val = alloca i64, !mcsema_real_eip !67
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !67
  %1 = load i64, i64* %RAX, !mcsema_real_eip !67
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !67
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !67
  %2 = load i64, i64* %RBX, !mcsema_real_eip !67
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !67
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !67
  %3 = load i64, i64* %RCX, !mcsema_real_eip !67
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !67
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !67
  %4 = load i64, i64* %RDX, !mcsema_real_eip !67
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !67
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !67
  %5 = load i64, i64* %RSI, !mcsema_real_eip !67
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !67
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !67
  %6 = load i64, i64* %RDI, !mcsema_real_eip !67
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !67
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !67
  %7 = load i64, i64* %RSP, !mcsema_real_eip !67
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !67
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !67
  %8 = load i64, i64* %RBP, !mcsema_real_eip !67
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !67
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !67
  %9 = load i64, i64* %R8, !mcsema_real_eip !67
  store i64 %9, i64* %R8_val, !mcsema_real_eip !67
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !67
  %10 = load i64, i64* %R9, !mcsema_real_eip !67
  store i64 %10, i64* %R9_val, !mcsema_real_eip !67
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !67
  %11 = load i64, i64* %R10, !mcsema_real_eip !67
  store i64 %11, i64* %R10_val, !mcsema_real_eip !67
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !67
  %12 = load i64, i64* %R11, !mcsema_real_eip !67
  store i64 %12, i64* %R11_val, !mcsema_real_eip !67
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !67
  %13 = load i64, i64* %R12, !mcsema_real_eip !67
  store i64 %13, i64* %R12_val, !mcsema_real_eip !67
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !67
  %14 = load i64, i64* %R13, !mcsema_real_eip !67
  store i64 %14, i64* %R13_val, !mcsema_real_eip !67
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !67
  %15 = load i64, i64* %R14, !mcsema_real_eip !67
  store i64 %15, i64* %R14_val, !mcsema_real_eip !67
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !67
  %16 = load i64, i64* %R15, !mcsema_real_eip !67
  store i64 %16, i64* %R15_val, !mcsema_real_eip !67
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !67
  %17 = load i64, i64* %RIP, !mcsema_real_eip !67
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !67
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !67
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !67
  store i1 %18, i1* %CF_val, !mcsema_real_eip !67
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !67
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !67
  store i1 %19, i1* %PF_val, !mcsema_real_eip !67
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !67
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !67
  store i1 %20, i1* %AF_val, !mcsema_real_eip !67
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !67
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !67
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !67
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !67
  store i1 %22, i1* %SF_val, !mcsema_real_eip !67
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !67
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %OF_val, !mcsema_real_eip !67
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !67
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %DF_val, !mcsema_real_eip !67
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !67
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !67
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !67
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !67
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !67
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !67
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !67
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !67
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !67
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !67
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !67
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !67
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !67
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !67
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !67
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !67
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !67
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !67
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !67
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !67
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !67
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !67
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !67
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !67
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !67
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !67
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !67
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !67
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !67
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !67
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !67
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !67
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !67
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !67
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !67
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !67
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !67
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !67
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !67
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !67
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !67
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !67
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !67
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !67
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !67
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !67
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !67
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !67
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !67
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !67
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !67
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !67
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !67
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !67
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !67
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !67
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !67
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !67
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !67
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !67
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !67
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !67
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !67
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !67
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !67
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !67
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !67
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !67
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !67
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !67
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !67
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !67
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !67
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !67
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !67
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !67
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !67
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !67
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !67
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !67
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !67
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !67
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !67
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !67
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !67
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !67
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !67
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !67
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !67
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !67
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !67
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !67
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !67
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !67
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !67
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !67
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !67
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !67
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !67
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !67
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !67
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !67
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !67
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !67
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !67
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !67
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !67
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !67
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !67
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !67
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !67
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !67
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !67
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !67
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !67
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !67
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !67
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !67
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !67
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !67
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !67
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !67
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !67
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !68
  %84 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %85 = add i64 %81, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !69
  store i64 %84, i64* %_allin_new_bt_2, !mcsema_real_eip !69
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %85, i64* %RSP_val, !mcsema_real_eip !69
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %88 = add i64 %87, 40, !mcsema_real_eip !70
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !70
  %_ptr_to_int_198 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_local_end_to_int_199 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_200 = bitcast i64* %_allin_new_bt_5 to i8*
  %_offset_above_rbp_201 = sub i64 %_ptr_to_int_198, %_local_end_to_int_199
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_ptr_bt_200, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_ptr_bt_200, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_ptr_bt_200, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  br i1 %_cond1_n_cond2_cond3_209, label %90, label %91

; <label>:90:                                     ; preds = %55
  %_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_address_in_parent_stack_bt_211 = bitcast i8* %_address_in_parent_stack_210 to i64*
  br label %91

; <label>:91:                                     ; preds = %55, %90
  %92 = phi i64* [ %_allin_new_bt_5, %55 ], [ %_address_in_parent_stack_bt_211, %90 ]
  %_new_load_212 = load i64, i64* %92
  store i64 %_new_load_212, i64* %RAX_val, !mcsema_real_eip !70
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 32
  %93 = add i64 %87, 32, !mcsema_real_eip !71
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !71
  %_ptr_to_int_213 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_local_end_to_int_214 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_215 = bitcast i64* %_allin_new_bt_7 to i8*
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_214
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_ptr_bt_215, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_ptr_bt_215, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_ptr_bt_215, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %95, label %96

; <label>:95:                                     ; preds = %91
  %_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_address_in_parent_stack_bt_226 = bitcast i8* %_address_in_parent_stack_225 to i64*
  br label %96

; <label>:96:                                     ; preds = %91, %95
  %97 = phi i64* [ %_allin_new_bt_7, %91 ], [ %_address_in_parent_stack_bt_226, %95 ]
  %_new_load_227 = load i64, i64* %97
  store i64 %_new_load_227, i64* %R10_val, !mcsema_real_eip !71
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 24
  %99 = add i64 %98, 24, !mcsema_real_eip !72
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !72
  %_ptr_to_int_228 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_229 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_230 = bitcast i64* %_allin_new_bt_10 to i8*
  %_offset_above_rbp_231 = sub i64 %_ptr_to_int_228, %_local_end_to_int_229
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_ptr_bt_230, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_ptr_bt_230, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_ptr_bt_230, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  br i1 %_cond1_n_cond2_cond3_239, label %101, label %102

; <label>:101:                                    ; preds = %96
  %_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_address_in_parent_stack_bt_241 = bitcast i8* %_address_in_parent_stack_240 to i64*
  br label %102

; <label>:102:                                    ; preds = %96, %101
  %103 = phi i64* [ %_allin_new_bt_10, %96 ], [ %_address_in_parent_stack_bt_241, %101 ]
  %_new_load_242 = load i64, i64* %103
  store i64 %_new_load_242, i64* %R11_val, !mcsema_real_eip !72
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 16
  %104 = add i64 %98, 16, !mcsema_real_eip !73
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !73
  %106 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_243 = ptrtoint i32* %106 to i64
  %_local_end_to_int_244 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_245 = bitcast i32* %106 to i8*
  %_offset_above_rbp_246 = sub i64 %_ptr_to_int_243, %_local_end_to_int_244
  %_pot_address_in_parent_stack_247 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_cond1_248 = icmp ugt i8* %_ptr_bt_245, %_local_stack_end_ptr_
  %_cond2_1_249 = icmp ugt i8* %_ptr_bt_245, %_parent_stack_end_ptr_
  %_cond2_2_250 = icmp ult i8* %_ptr_bt_245, %_parent_stack_start_ptr_
  %_cond2_251 = or i1 %_cond2_1_249, %_cond2_2_250
  %_cond4_252 = icmp ule i8* %_pot_address_in_parent_stack_247, %_parent_stack_end_ptr_
  %_cond1_n_cond2_253 = and i1 %_cond1_248, %_cond2_251
  %_cond1_n_cond2_cond3_254 = and i1 %_cond1_n_cond2_253, %_cond4_252
  br i1 %_cond1_n_cond2_cond3_254, label %107, label %108

; <label>:107:                                    ; preds = %102
  %_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_address_in_parent_stack_bt_256 = bitcast i8* %_address_in_parent_stack_255 to i32*
  br label %108

; <label>:108:                                    ; preds = %102, %107
  %109 = phi i32* [ %106, %102 ], [ %_address_in_parent_stack_bt_256, %107 ]
  %_new_load_257 = load i32, i32* %109
  %110 = zext i32 %_new_load_257 to i64, !mcsema_real_eip !73
  store i64 %110, i64* %RBX_val, !mcsema_real_eip !73
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %112 = add i64 %111, -12, !mcsema_real_eip !74
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !74
  %114 = load i64, i64* %RDI_val, !mcsema_real_eip !74
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !74
  %116 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !74
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -24
  %118 = add i64 %117, -24, !mcsema_real_eip !75
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !75
  %120 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  store i64 %120, i64* %_allin_new_bt_18, !mcsema_real_eip !75
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %122 = add i64 %121, -32, !mcsema_real_eip !76
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !76
  %124 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  store i64 %124, i64* %_allin_new_bt_21, !mcsema_real_eip !76
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -40
  %126 = add i64 %125, -40, !mcsema_real_eip !77
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !77
  %128 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  store i64 %128, i64* %_allin_new_bt_24, !mcsema_real_eip !77
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -44
  %130 = add i64 %129, -44, !mcsema_real_eip !78
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !78
  %132 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !78
  %134 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !78
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -48
  %136 = add i64 %135, -48, !mcsema_real_eip !79
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !79
  %138 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !79
  %140 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !79
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -52
  %142 = add i64 %141, -52, !mcsema_real_eip !80
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !80
  %144 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %145 = trunc i64 %144 to i32, !mcsema_real_eip !80
  %146 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %145, i32* %146, !mcsema_real_eip !80
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -64
  %148 = add i64 %147, -64, !mcsema_real_eip !81
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !81
  %150 = load i64, i64* %R11_val, !mcsema_real_eip !81
  store i64 %150, i64* %_allin_new_bt_36, !mcsema_real_eip !81
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -72
  %152 = add i64 %151, -72, !mcsema_real_eip !82
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !82
  %154 = load i64, i64* %R10_val, !mcsema_real_eip !82
  store i64 %154, i64* %_allin_new_bt_39, !mcsema_real_eip !82
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -80
  %156 = add i64 %155, -80, !mcsema_real_eip !83
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !83
  %158 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  store i64 %158, i64* %_allin_new_bt_42, !mcsema_real_eip !83
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -84
  %160 = add i64 %159, -84, !mcsema_real_eip !84
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !84
  %162 = bitcast i64* %_allin_new_bt_45 to i32*
  store i32 0, i32* %162, !mcsema_real_eip !84
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %164 = add i64 %163, -12, !mcsema_real_eip !85
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !85
  %166 = bitcast i64* %_allin_new_bt_48 to i32*
  %_ptr_to_int_258 = ptrtoint i32* %166 to i64
  %_local_end_to_int_259 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_260 = bitcast i32* %166 to i8*
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_259
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_ptr_bt_260, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_ptr_bt_260, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_ptr_bt_260, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  br i1 %_cond1_n_cond2_cond3_269, label %167, label %168

; <label>:167:                                    ; preds = %108
  %_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_address_in_parent_stack_bt_271 = bitcast i8* %_address_in_parent_stack_270 to i32*
  br label %168

; <label>:168:                                    ; preds = %108, %167
  %169 = phi i32* [ %166, %108 ], [ %_address_in_parent_stack_bt_271, %167 ]
  %_new_load_272 = load i32, i32* %169
  %170 = zext i32 %_new_load_272 to i64, !mcsema_real_eip !85
  store i64 %170, i64* %RDI_val, !mcsema_real_eip !85
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %171 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -84
  %172 = add i64 %171, -84, !mcsema_real_eip !86
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !86
  %174 = bitcast i64* %_allin_new_bt_51 to i32*
  %_ptr_to_int_273 = ptrtoint i32* %174 to i64
  %_local_end_to_int_274 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_275 = bitcast i32* %174 to i8*
  %_offset_above_rbp_276 = sub i64 %_ptr_to_int_273, %_local_end_to_int_274
  %_pot_address_in_parent_stack_277 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_cond1_278 = icmp ugt i8* %_ptr_bt_275, %_local_stack_end_ptr_
  %_cond2_1_279 = icmp ugt i8* %_ptr_bt_275, %_parent_stack_end_ptr_
  %_cond2_2_280 = icmp ult i8* %_ptr_bt_275, %_parent_stack_start_ptr_
  %_cond2_281 = or i1 %_cond2_1_279, %_cond2_2_280
  %_cond4_282 = icmp ule i8* %_pot_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond1_n_cond2_283 = and i1 %_cond1_278, %_cond2_281
  %_cond1_n_cond2_cond3_284 = and i1 %_cond1_n_cond2_283, %_cond4_282
  br i1 %_cond1_n_cond2_cond3_284, label %175, label %176

; <label>:175:                                    ; preds = %168
  %_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_276
  %_address_in_parent_stack_bt_286 = bitcast i8* %_address_in_parent_stack_285 to i32*
  br label %176

; <label>:176:                                    ; preds = %168, %175
  %177 = phi i32* [ %174, %168 ], [ %_address_in_parent_stack_bt_286, %175 ]
  %_new_load_287 = load i32, i32* %177
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_272, i32 %_new_load_287)
  %178 = extractvalue { i32, i1 } %uadd, 0
  %179 = xor i32 %178, %_new_load_287, !mcsema_real_eip !87
  %180 = xor i32 %179, %_new_load_272, !mcsema_real_eip !87
  %181 = and i32 %180, 16, !mcsema_real_eip !87
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !87
  store i1 %182, i1* %AF_val, !mcsema_real_eip !87
  %183 = icmp slt i32 %178, 0
  store i1 %183, i1* %SF_val, !mcsema_real_eip !87
  %184 = icmp eq i32 %178, 0, !mcsema_real_eip !87
  store i1 %184, i1* %ZF_val, !mcsema_real_eip !87
  %185 = xor i32 %_new_load_287, -2147483648, !mcsema_real_eip !87
  %186 = xor i32 %185, %_new_load_272, !mcsema_real_eip !87
  %187 = and i32 %179, %186, !mcsema_real_eip !87
  %188 = icmp slt i32 %187, 0
  store i1 %188, i1* %OF_val, !mcsema_real_eip !87
  %189 = trunc i32 %178 to i8, !mcsema_real_eip !87
  %190 = tail call i8 @llvm.ctpop.i8(i8 %189), !mcsema_real_eip !87
  %191 = and i8 %190, 1
  %192 = icmp eq i8 %191, 0
  store i1 %192, i1* %PF_val, !mcsema_real_eip !87
  %193 = extractvalue { i32, i1 } %uadd, 1
  store i1 %193, i1* %CF_val, !mcsema_real_eip !87
  %194 = zext i32 %178 to i64, !mcsema_real_eip !87
  store i64 %194, i64* %R8_val, !mcsema_real_eip !87
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -84
  %196 = add i64 %195, -84, !mcsema_real_eip !88
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !88
  %198 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 %178, i32* %198, !mcsema_real_eip !88
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %199 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -88
  %200 = add i64 %199, -88, !mcsema_real_eip !89
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !89
  %202 = bitcast i64* %_allin_new_bt_57 to i32*
  store i32 0, i32* %202, !mcsema_real_eip !89
  br label %block_0x56, !mcsema_real_eip !90

block_0x56:                                       ; preds = %289, %176
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %203 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -88
  %204 = add i64 %203, -88, !mcsema_real_eip !90
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !90
  %206 = bitcast i64* %_allin_new_bt_60 to i32*
  %_ptr_to_int_288 = ptrtoint i32* %206 to i64
  %_local_end_to_int_289 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_290 = bitcast i32* %206 to i8*
  %_offset_above_rbp_291 = sub i64 %_ptr_to_int_288, %_local_end_to_int_289
  %_pot_address_in_parent_stack_292 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_cond1_293 = icmp ugt i8* %_ptr_bt_290, %_local_stack_end_ptr_
  %_cond2_1_294 = icmp ugt i8* %_ptr_bt_290, %_parent_stack_end_ptr_
  %_cond2_2_295 = icmp ult i8* %_ptr_bt_290, %_parent_stack_start_ptr_
  %_cond2_296 = or i1 %_cond2_1_294, %_cond2_2_295
  %_cond4_297 = icmp ule i8* %_pot_address_in_parent_stack_292, %_parent_stack_end_ptr_
  %_cond1_n_cond2_298 = and i1 %_cond1_293, %_cond2_296
  %_cond1_n_cond2_cond3_299 = and i1 %_cond1_n_cond2_298, %_cond4_297
  br i1 %_cond1_n_cond2_cond3_299, label %207, label %208

; <label>:207:                                    ; preds = %block_0x56
  %_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_291
  %_address_in_parent_stack_bt_301 = bitcast i8* %_address_in_parent_stack_300 to i32*
  br label %208

; <label>:208:                                    ; preds = %block_0x56, %207
  %209 = phi i32* [ %206, %block_0x56 ], [ %_address_in_parent_stack_bt_301, %207 ]
  %_new_load_302 = load i32, i32* %209
  %210 = zext i32 %_new_load_302 to i64, !mcsema_real_eip !90
  store i64 %210, i64* %RAX_val, !mcsema_real_eip !90
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %211 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -44
  %212 = add i64 %211, -44, !mcsema_real_eip !91
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !91
  %214 = bitcast i64* %_allin_new_bt_63 to i32*
  %_ptr_to_int_303 = ptrtoint i32* %214 to i64
  %_local_end_to_int_304 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_305 = bitcast i32* %214 to i8*
  %_offset_above_rbp_306 = sub i64 %_ptr_to_int_303, %_local_end_to_int_304
  %_pot_address_in_parent_stack_307 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_cond1_308 = icmp ugt i8* %_ptr_bt_305, %_local_stack_end_ptr_
  %_cond2_1_309 = icmp ugt i8* %_ptr_bt_305, %_parent_stack_end_ptr_
  %_cond2_2_310 = icmp ult i8* %_ptr_bt_305, %_parent_stack_start_ptr_
  %_cond2_311 = or i1 %_cond2_1_309, %_cond2_2_310
  %_cond4_312 = icmp ule i8* %_pot_address_in_parent_stack_307, %_parent_stack_end_ptr_
  %_cond1_n_cond2_313 = and i1 %_cond1_308, %_cond2_311
  %_cond1_n_cond2_cond3_314 = and i1 %_cond1_n_cond2_313, %_cond4_312
  br i1 %_cond1_n_cond2_cond3_314, label %215, label %216

; <label>:215:                                    ; preds = %208
  %_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_306
  %_address_in_parent_stack_bt_316 = bitcast i8* %_address_in_parent_stack_315 to i32*
  br label %216

; <label>:216:                                    ; preds = %208, %215
  %217 = phi i32* [ %214, %208 ], [ %_address_in_parent_stack_bt_316, %215 ]
  %_new_load_317 = load i32, i32* %217
  %218 = sub i32 %_new_load_302, %_new_load_317, !mcsema_real_eip !91
  %219 = xor i32 %218, %_new_load_302, !mcsema_real_eip !91
  %220 = xor i32 %219, %_new_load_317, !mcsema_real_eip !91
  %221 = and i32 %220, 16, !mcsema_real_eip !91
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !91
  store i1 %222, i1* %AF_val, !mcsema_real_eip !91
  %223 = trunc i32 %218 to i8, !mcsema_real_eip !91
  %224 = tail call i8 @llvm.ctpop.i8(i8 %223), !mcsema_real_eip !91
  %225 = and i8 %224, 1
  %226 = icmp eq i8 %225, 0
  store i1 %226, i1* %PF_val, !mcsema_real_eip !91
  %227 = icmp eq i32 %_new_load_302, %_new_load_317
  store i1 %227, i1* %ZF_val, !mcsema_real_eip !91
  %228 = icmp slt i32 %218, 0
  store i1 %228, i1* %SF_val, !mcsema_real_eip !91
  %229 = icmp ult i32 %_new_load_302, %_new_load_317, !mcsema_real_eip !91
  store i1 %229, i1* %CF_val, !mcsema_real_eip !91
  %230 = xor i32 %_new_load_317, %_new_load_302, !mcsema_real_eip !91
  %231 = and i32 %219, %230, !mcsema_real_eip !91
  %232 = icmp slt i32 %231, 0
  store i1 %232, i1* %OF_val, !mcsema_real_eip !91
  %233 = load i1, i1* %SF_val, !mcsema_real_eip !92
  %tmp = xor i1 %233, %232
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %234 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  br i1 %tmp, label %block_0x62, label %block_0x85, !mcsema_real_eip !92

block_0x62:                                       ; preds = %216
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -88
  %235 = add i64 %234, -88, !mcsema_real_eip !94
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !94
  %237 = bitcast i64* %_allin_new_bt_66 to i32*
  %_ptr_to_int_318 = ptrtoint i32* %237 to i64
  %_local_end_to_int_319 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_320 = bitcast i32* %237 to i8*
  %_offset_above_rbp_321 = sub i64 %_ptr_to_int_318, %_local_end_to_int_319
  %_pot_address_in_parent_stack_322 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_321
  %_cond1_323 = icmp ugt i8* %_ptr_bt_320, %_local_stack_end_ptr_
  %_cond2_1_324 = icmp ugt i8* %_ptr_bt_320, %_parent_stack_end_ptr_
  %_cond2_2_325 = icmp ult i8* %_ptr_bt_320, %_parent_stack_start_ptr_
  %_cond2_326 = or i1 %_cond2_1_324, %_cond2_2_325
  %_cond4_327 = icmp ule i8* %_pot_address_in_parent_stack_322, %_parent_stack_end_ptr_
  %_cond1_n_cond2_328 = and i1 %_cond1_323, %_cond2_326
  %_cond1_n_cond2_cond3_329 = and i1 %_cond1_n_cond2_328, %_cond4_327
  br i1 %_cond1_n_cond2_cond3_329, label %238, label %239

; <label>:238:                                    ; preds = %block_0x62
  %_address_in_parent_stack_330 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_321
  %_address_in_parent_stack_bt_331 = bitcast i8* %_address_in_parent_stack_330 to i32*
  br label %239

; <label>:239:                                    ; preds = %block_0x62, %238
  %240 = phi i32* [ %237, %block_0x62 ], [ %_address_in_parent_stack_bt_331, %238 ]
  %_new_load_332 = load i32, i32* %240
  %241 = sext i32 %_new_load_332 to i64, !mcsema_real_eip !94
  store i64 %241, i64* %RAX_val, !mcsema_real_eip !94
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %242 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -24
  %243 = add i64 %242, -24, !mcsema_real_eip !95
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !95
  %_ptr_to_int_333 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_local_end_to_int_334 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_335 = bitcast i64* %_allin_new_bt_69 to i8*
  %_offset_above_rbp_336 = sub i64 %_ptr_to_int_333, %_local_end_to_int_334
  %_pot_address_in_parent_stack_337 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_cond1_338 = icmp ugt i8* %_ptr_bt_335, %_local_stack_end_ptr_
  %_cond2_1_339 = icmp ugt i8* %_ptr_bt_335, %_parent_stack_end_ptr_
  %_cond2_2_340 = icmp ult i8* %_ptr_bt_335, %_parent_stack_start_ptr_
  %_cond2_341 = or i1 %_cond2_1_339, %_cond2_2_340
  %_cond4_342 = icmp ule i8* %_pot_address_in_parent_stack_337, %_parent_stack_end_ptr_
  %_cond1_n_cond2_343 = and i1 %_cond1_338, %_cond2_341
  %_cond1_n_cond2_cond3_344 = and i1 %_cond1_n_cond2_343, %_cond4_342
  br i1 %_cond1_n_cond2_cond3_344, label %245, label %246

; <label>:245:                                    ; preds = %239
  %_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_336
  %_address_in_parent_stack_bt_346 = bitcast i8* %_address_in_parent_stack_345 to i64*
  br label %246

; <label>:246:                                    ; preds = %239, %245
  %247 = phi i64* [ %_allin_new_bt_69, %239 ], [ %_address_in_parent_stack_bt_346, %245 ]
  %_new_load_347 = load i64, i64* %247
  store i64 %_new_load_347, i64* %RCX_val, !mcsema_real_eip !95
  %248 = shl nsw i64 %241, 2
  %249 = add i64 %_new_load_347, %248, !mcsema_real_eip !96
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !96
  %251 = bitcast i64* %250 to i32*
  %_ptr_to_int_348 = ptrtoint i32* %251 to i64
  %_local_end_to_int_349 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_350 = bitcast i32* %251 to i8*
  %_offset_above_rbp_351 = sub i64 %_ptr_to_int_348, %_local_end_to_int_349
  %_pot_address_in_parent_stack_352 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_cond1_353 = icmp ugt i8* %_ptr_bt_350, %_local_stack_end_ptr_
  %_cond2_1_354 = icmp ugt i8* %_ptr_bt_350, %_parent_stack_end_ptr_
  %_cond2_2_355 = icmp ult i8* %_ptr_bt_350, %_parent_stack_start_ptr_
  %_cond2_356 = or i1 %_cond2_1_354, %_cond2_2_355
  %_cond4_357 = icmp ule i8* %_pot_address_in_parent_stack_352, %_parent_stack_end_ptr_
  %_cond1_n_cond2_358 = and i1 %_cond1_353, %_cond2_356
  %_cond1_n_cond2_cond3_359 = and i1 %_cond1_n_cond2_358, %_cond4_357
  br i1 %_cond1_n_cond2_cond3_359, label %252, label %253

; <label>:252:                                    ; preds = %246
  %_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_351
  %_address_in_parent_stack_bt_361 = bitcast i8* %_address_in_parent_stack_360 to i32*
  br label %253

; <label>:253:                                    ; preds = %246, %252
  %254 = phi i32* [ %251, %246 ], [ %_address_in_parent_stack_bt_361, %252 ]
  %_new_load_362 = load i32, i32* %254
  %255 = zext i32 %_new_load_362 to i64, !mcsema_real_eip !96
  store i64 %255, i64* %RDX_val, !mcsema_real_eip !96
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %256 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -84
  %257 = add i64 %256, -84, !mcsema_real_eip !97
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !97
  %259 = bitcast i64* %_allin_new_bt_72 to i32*
  %_ptr_to_int_363 = ptrtoint i32* %259 to i64
  %_local_end_to_int_364 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_365 = bitcast i32* %259 to i8*
  %_offset_above_rbp_366 = sub i64 %_ptr_to_int_363, %_local_end_to_int_364
  %_pot_address_in_parent_stack_367 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_cond1_368 = icmp ugt i8* %_ptr_bt_365, %_local_stack_end_ptr_
  %_cond2_1_369 = icmp ugt i8* %_ptr_bt_365, %_parent_stack_end_ptr_
  %_cond2_2_370 = icmp ult i8* %_ptr_bt_365, %_parent_stack_start_ptr_
  %_cond2_371 = or i1 %_cond2_1_369, %_cond2_2_370
  %_cond4_372 = icmp ule i8* %_pot_address_in_parent_stack_367, %_parent_stack_end_ptr_
  %_cond1_n_cond2_373 = and i1 %_cond1_368, %_cond2_371
  %_cond1_n_cond2_cond3_374 = and i1 %_cond1_n_cond2_373, %_cond4_372
  br i1 %_cond1_n_cond2_cond3_374, label %260, label %261

; <label>:260:                                    ; preds = %253
  %_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_366
  %_address_in_parent_stack_bt_376 = bitcast i8* %_address_in_parent_stack_375 to i32*
  br label %261

; <label>:261:                                    ; preds = %253, %260
  %262 = phi i32* [ %259, %253 ], [ %_address_in_parent_stack_bt_376, %260 ]
  %_new_load_377 = load i32, i32* %262
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_362, i32 %_new_load_377)
  %263 = extractvalue { i32, i1 } %uadd71, 0
  %264 = xor i32 %263, %_new_load_377, !mcsema_real_eip !98
  %265 = xor i32 %264, %_new_load_362, !mcsema_real_eip !98
  %266 = and i32 %265, 16, !mcsema_real_eip !98
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !98
  store i1 %267, i1* %AF_val, !mcsema_real_eip !98
  %268 = icmp slt i32 %263, 0
  store i1 %268, i1* %SF_val, !mcsema_real_eip !98
  %269 = icmp eq i32 %263, 0, !mcsema_real_eip !98
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !98
  %270 = xor i32 %_new_load_377, -2147483648, !mcsema_real_eip !98
  %271 = xor i32 %270, %_new_load_362, !mcsema_real_eip !98
  %272 = and i32 %264, %271, !mcsema_real_eip !98
  %273 = icmp slt i32 %272, 0
  store i1 %273, i1* %OF_val, !mcsema_real_eip !98
  %274 = trunc i32 %263 to i8, !mcsema_real_eip !98
  %275 = tail call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !98
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  store i1 %277, i1* %PF_val, !mcsema_real_eip !98
  %278 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %278, i1* %CF_val, !mcsema_real_eip !98
  %279 = zext i32 %263 to i64, !mcsema_real_eip !98
  store i64 %279, i64* %RSI_val, !mcsema_real_eip !98
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -84
  %281 = add i64 %280, -84, !mcsema_real_eip !99
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !99
  %283 = bitcast i64* %_allin_new_bt_75 to i32*
  store i32 %263, i32* %283, !mcsema_real_eip !99
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %284 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -88
  %285 = add i64 %284, -88, !mcsema_real_eip !100
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !100
  %287 = bitcast i64* %_allin_new_bt_78 to i32*
  %_ptr_to_int_378 = ptrtoint i32* %287 to i64
  %_local_end_to_int_379 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_380 = bitcast i32* %287 to i8*
  %_offset_above_rbp_381 = sub i64 %_ptr_to_int_378, %_local_end_to_int_379
  %_pot_address_in_parent_stack_382 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_cond1_383 = icmp ugt i8* %_ptr_bt_380, %_local_stack_end_ptr_
  %_cond2_1_384 = icmp ugt i8* %_ptr_bt_380, %_parent_stack_end_ptr_
  %_cond2_2_385 = icmp ult i8* %_ptr_bt_380, %_parent_stack_start_ptr_
  %_cond2_386 = or i1 %_cond2_1_384, %_cond2_2_385
  %_cond4_387 = icmp ule i8* %_pot_address_in_parent_stack_382, %_parent_stack_end_ptr_
  %_cond1_n_cond2_388 = and i1 %_cond1_383, %_cond2_386
  %_cond1_n_cond2_cond3_389 = and i1 %_cond1_n_cond2_388, %_cond4_387
  br i1 %_cond1_n_cond2_cond3_389, label %288, label %289

; <label>:288:                                    ; preds = %261
  %_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_381
  %_address_in_parent_stack_bt_391 = bitcast i8* %_address_in_parent_stack_390 to i32*
  br label %289

; <label>:289:                                    ; preds = %261, %288
  %290 = phi i32* [ %287, %261 ], [ %_address_in_parent_stack_bt_391, %288 ]
  %_new_load_392 = load i32, i32* %290
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_392, i32 1)
  %291 = extractvalue { i32, i1 } %uadd72, 0
  %292 = xor i32 %291, %_new_load_392, !mcsema_real_eip !101
  %293 = and i32 %292, 16, !mcsema_real_eip !101
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !101
  store i1 %294, i1* %AF_val, !mcsema_real_eip !101
  %295 = icmp slt i32 %291, 0
  store i1 %295, i1* %SF_val, !mcsema_real_eip !101
  %296 = icmp eq i32 %291, 0, !mcsema_real_eip !101
  store i1 %296, i1* %ZF_val, !mcsema_real_eip !101
  %297 = xor i32 %_new_load_392, -2147483648, !mcsema_real_eip !101
  %298 = and i32 %292, %297, !mcsema_real_eip !101
  %299 = icmp slt i32 %298, 0
  store i1 %299, i1* %OF_val, !mcsema_real_eip !101
  %300 = trunc i32 %291 to i8, !mcsema_real_eip !101
  %301 = tail call i8 @llvm.ctpop.i8(i8 %300), !mcsema_real_eip !101
  %302 = and i8 %301, 1
  %303 = icmp eq i8 %302, 0
  store i1 %303, i1* %PF_val, !mcsema_real_eip !101
  %304 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %304, i1* %CF_val, !mcsema_real_eip !101
  %305 = zext i32 %291 to i64, !mcsema_real_eip !101
  store i64 %305, i64* %RAX_val, !mcsema_real_eip !101
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %306 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -88
  %307 = add i64 %306, -88, !mcsema_real_eip !102
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !102
  %309 = bitcast i64* %_allin_new_bt_81 to i32*
  store i32 %291, i32* %309, !mcsema_real_eip !102
  br label %block_0x56, !mcsema_real_eip !103

block_0x85:                                       ; preds = %216
  %310 = phi i8* [ %_load_rbp_ptr_64, %216 ]
  %.lcssa96 = phi i64 [ %234, %216 ]
  %_new_gep_82 = getelementptr i8, i8* %310, i64 -32
  %311 = add i64 %.lcssa96, -32, !mcsema_real_eip !93
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !93
  %_ptr_to_int_393 = ptrtoint i64* %_allin_new_bt_83 to i64
  %_local_end_to_int_394 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_395 = bitcast i64* %_allin_new_bt_83 to i8*
  %_offset_above_rbp_396 = sub i64 %_ptr_to_int_393, %_local_end_to_int_394
  %_pot_address_in_parent_stack_397 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_cond1_398 = icmp ugt i8* %_ptr_bt_395, %_local_stack_end_ptr_
  %_cond2_1_399 = icmp ugt i8* %_ptr_bt_395, %_parent_stack_end_ptr_
  %_cond2_2_400 = icmp ult i8* %_ptr_bt_395, %_parent_stack_start_ptr_
  %_cond2_401 = or i1 %_cond2_1_399, %_cond2_2_400
  %_cond4_402 = icmp ule i8* %_pot_address_in_parent_stack_397, %_parent_stack_end_ptr_
  %_cond1_n_cond2_403 = and i1 %_cond1_398, %_cond2_401
  %_cond1_n_cond2_cond3_404 = and i1 %_cond1_n_cond2_403, %_cond4_402
  br i1 %_cond1_n_cond2_cond3_404, label %313, label %314

; <label>:313:                                    ; preds = %block_0x85
  %_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_396
  %_address_in_parent_stack_bt_406 = bitcast i8* %_address_in_parent_stack_405 to i64*
  br label %314

; <label>:314:                                    ; preds = %block_0x85, %313
  %315 = phi i64* [ %_allin_new_bt_83, %block_0x85 ], [ %_address_in_parent_stack_bt_406, %313 ]
  %_new_load_407 = load i64, i64* %315
  store i64 %_new_load_407, i64* %RAX_val, !mcsema_real_eip !93
  %316 = inttoptr i64 %_new_load_407 to i64*, !mcsema_real_eip !104
  %317 = bitcast i64* %316 to i32*
  %_ptr_to_int_408 = ptrtoint i32* %317 to i64
  %_local_end_to_int_409 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_410 = bitcast i32* %317 to i8*
  %_offset_above_rbp_411 = sub i64 %_ptr_to_int_408, %_local_end_to_int_409
  %_pot_address_in_parent_stack_412 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_cond1_413 = icmp ugt i8* %_ptr_bt_410, %_local_stack_end_ptr_
  %_cond2_1_414 = icmp ugt i8* %_ptr_bt_410, %_parent_stack_end_ptr_
  %_cond2_2_415 = icmp ult i8* %_ptr_bt_410, %_parent_stack_start_ptr_
  %_cond2_416 = or i1 %_cond2_1_414, %_cond2_2_415
  %_cond4_417 = icmp ule i8* %_pot_address_in_parent_stack_412, %_parent_stack_end_ptr_
  %_cond1_n_cond2_418 = and i1 %_cond1_413, %_cond2_416
  %_cond1_n_cond2_cond3_419 = and i1 %_cond1_n_cond2_418, %_cond4_417
  br i1 %_cond1_n_cond2_cond3_419, label %318, label %319

; <label>:318:                                    ; preds = %314
  %_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_411
  %_address_in_parent_stack_bt_421 = bitcast i8* %_address_in_parent_stack_420 to i32*
  br label %319

; <label>:319:                                    ; preds = %314, %318
  %320 = phi i32* [ %317, %314 ], [ %_address_in_parent_stack_bt_421, %318 ]
  %_new_load_422 = load i32, i32* %320
  %321 = zext i32 %_new_load_422 to i64, !mcsema_real_eip !104
  store i64 %321, i64* %RCX_val, !mcsema_real_eip !104
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -84
  %323 = add i64 %322, -84, !mcsema_real_eip !105
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !105
  %325 = bitcast i64* %_allin_new_bt_86 to i32*
  %_ptr_to_int_423 = ptrtoint i32* %325 to i64
  %_local_end_to_int_424 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_425 = bitcast i32* %325 to i8*
  %_offset_above_rbp_426 = sub i64 %_ptr_to_int_423, %_local_end_to_int_424
  %_pot_address_in_parent_stack_427 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_cond1_428 = icmp ugt i8* %_ptr_bt_425, %_local_stack_end_ptr_
  %_cond2_1_429 = icmp ugt i8* %_ptr_bt_425, %_parent_stack_end_ptr_
  %_cond2_2_430 = icmp ult i8* %_ptr_bt_425, %_parent_stack_start_ptr_
  %_cond2_431 = or i1 %_cond2_1_429, %_cond2_2_430
  %_cond4_432 = icmp ule i8* %_pot_address_in_parent_stack_427, %_parent_stack_end_ptr_
  %_cond1_n_cond2_433 = and i1 %_cond1_428, %_cond2_431
  %_cond1_n_cond2_cond3_434 = and i1 %_cond1_n_cond2_433, %_cond4_432
  br i1 %_cond1_n_cond2_cond3_434, label %326, label %327

; <label>:326:                                    ; preds = %319
  %_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_426
  %_address_in_parent_stack_bt_436 = bitcast i8* %_address_in_parent_stack_435 to i32*
  br label %327

; <label>:327:                                    ; preds = %319, %326
  %328 = phi i32* [ %325, %319 ], [ %_address_in_parent_stack_bt_436, %326 ]
  %_new_load_437 = load i32, i32* %328
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_422, i32 %_new_load_437)
  %329 = extractvalue { i32, i1 } %uadd73, 0
  %330 = xor i32 %329, %_new_load_437, !mcsema_real_eip !106
  %331 = xor i32 %330, %_new_load_422, !mcsema_real_eip !106
  %332 = and i32 %331, 16, !mcsema_real_eip !106
  %333 = icmp ne i32 %332, 0, !mcsema_real_eip !106
  store i1 %333, i1* %AF_val, !mcsema_real_eip !106
  %334 = icmp slt i32 %329, 0
  store i1 %334, i1* %SF_val, !mcsema_real_eip !106
  %335 = icmp eq i32 %329, 0, !mcsema_real_eip !106
  store i1 %335, i1* %ZF_val, !mcsema_real_eip !106
  %336 = xor i32 %_new_load_437, -2147483648, !mcsema_real_eip !106
  %337 = xor i32 %336, %_new_load_422, !mcsema_real_eip !106
  %338 = and i32 %330, %337, !mcsema_real_eip !106
  %339 = icmp slt i32 %338, 0
  store i1 %339, i1* %OF_val, !mcsema_real_eip !106
  %340 = trunc i32 %329 to i8, !mcsema_real_eip !106
  %341 = tail call i8 @llvm.ctpop.i8(i8 %340), !mcsema_real_eip !106
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  store i1 %343, i1* %PF_val, !mcsema_real_eip !106
  %344 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %344, i1* %CF_val, !mcsema_real_eip !106
  %345 = zext i32 %329 to i64, !mcsema_real_eip !106
  store i64 %345, i64* %RDX_val, !mcsema_real_eip !106
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -84
  %347 = add i64 %346, -84, !mcsema_real_eip !107
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !107
  %349 = bitcast i64* %_allin_new_bt_89 to i32*
  store i32 %329, i32* %349, !mcsema_real_eip !107
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %350 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -92
  %351 = add i64 %350, -92, !mcsema_real_eip !108
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !108
  %353 = bitcast i64* %_allin_new_bt_92 to i32*
  store i32 0, i32* %353, !mcsema_real_eip !108
  br label %block_0x9a, !mcsema_real_eip !94

block_0x9a:                                       ; preds = %440, %327
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %354 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -92
  %355 = add i64 %354, -92, !mcsema_real_eip !109
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !109
  %357 = bitcast i64* %_allin_new_bt_95 to i32*
  %_ptr_to_int_438 = ptrtoint i32* %357 to i64
  %_local_end_to_int_439 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_440 = bitcast i32* %357 to i8*
  %_offset_above_rbp_441 = sub i64 %_ptr_to_int_438, %_local_end_to_int_439
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_ptr_bt_440, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_ptr_bt_440, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_ptr_bt_440, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  br i1 %_cond1_n_cond2_cond3_449, label %358, label %359

; <label>:358:                                    ; preds = %block_0x9a
  %_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_address_in_parent_stack_bt_451 = bitcast i8* %_address_in_parent_stack_450 to i32*
  br label %359

; <label>:359:                                    ; preds = %block_0x9a, %358
  %360 = phi i32* [ %357, %block_0x9a ], [ %_address_in_parent_stack_bt_451, %358 ]
  %_new_load_452 = load i32, i32* %360
  %361 = zext i32 %_new_load_452 to i64, !mcsema_real_eip !109
  store i64 %361, i64* %RAX_val, !mcsema_real_eip !109
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -48
  %363 = add i64 %362, -48, !mcsema_real_eip !110
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !110
  %365 = bitcast i64* %_allin_new_bt_98 to i32*
  %_ptr_to_int_453 = ptrtoint i32* %365 to i64
  %_local_end_to_int_454 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_455 = bitcast i32* %365 to i8*
  %_offset_above_rbp_456 = sub i64 %_ptr_to_int_453, %_local_end_to_int_454
  %_pot_address_in_parent_stack_457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_cond1_458 = icmp ugt i8* %_ptr_bt_455, %_local_stack_end_ptr_
  %_cond2_1_459 = icmp ugt i8* %_ptr_bt_455, %_parent_stack_end_ptr_
  %_cond2_2_460 = icmp ult i8* %_ptr_bt_455, %_parent_stack_start_ptr_
  %_cond2_461 = or i1 %_cond2_1_459, %_cond2_2_460
  %_cond4_462 = icmp ule i8* %_pot_address_in_parent_stack_457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_463 = and i1 %_cond1_458, %_cond2_461
  %_cond1_n_cond2_cond3_464 = and i1 %_cond1_n_cond2_463, %_cond4_462
  br i1 %_cond1_n_cond2_cond3_464, label %366, label %367

; <label>:366:                                    ; preds = %359
  %_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_456
  %_address_in_parent_stack_bt_466 = bitcast i8* %_address_in_parent_stack_465 to i32*
  br label %367

; <label>:367:                                    ; preds = %359, %366
  %368 = phi i32* [ %365, %359 ], [ %_address_in_parent_stack_bt_466, %366 ]
  %_new_load_467 = load i32, i32* %368
  %369 = sub i32 %_new_load_452, %_new_load_467, !mcsema_real_eip !110
  %370 = xor i32 %369, %_new_load_452, !mcsema_real_eip !110
  %371 = xor i32 %370, %_new_load_467, !mcsema_real_eip !110
  %372 = and i32 %371, 16, !mcsema_real_eip !110
  %373 = icmp ne i32 %372, 0, !mcsema_real_eip !110
  store i1 %373, i1* %AF_val, !mcsema_real_eip !110
  %374 = trunc i32 %369 to i8, !mcsema_real_eip !110
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !110
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF_val, !mcsema_real_eip !110
  %378 = icmp eq i32 %_new_load_452, %_new_load_467
  store i1 %378, i1* %ZF_val, !mcsema_real_eip !110
  %379 = icmp slt i32 %369, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !110
  %380 = icmp ult i32 %_new_load_452, %_new_load_467, !mcsema_real_eip !110
  store i1 %380, i1* %CF_val, !mcsema_real_eip !110
  %381 = xor i32 %_new_load_467, %_new_load_452, !mcsema_real_eip !110
  %382 = and i32 %370, %381, !mcsema_real_eip !110
  %383 = icmp slt i32 %382, 0
  store i1 %383, i1* %OF_val, !mcsema_real_eip !110
  %384 = load i1, i1* %SF_val, !mcsema_real_eip !111
  %tmp74 = xor i1 %384, %383
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %385 = load i64, i64* %RBP_val, !mcsema_real_eip !112
  br i1 %tmp74, label %block_0xa6, label %block_0xc9, !mcsema_real_eip !111

block_0xa6:                                       ; preds = %367
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -92
  %386 = add i64 %385, -92, !mcsema_real_eip !113
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !113
  %388 = bitcast i64* %_allin_new_bt_101 to i32*
  %_ptr_to_int_468 = ptrtoint i32* %388 to i64
  %_local_end_to_int_469 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_470 = bitcast i32* %388 to i8*
  %_offset_above_rbp_471 = sub i64 %_ptr_to_int_468, %_local_end_to_int_469
  %_pot_address_in_parent_stack_472 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_cond1_473 = icmp ugt i8* %_ptr_bt_470, %_local_stack_end_ptr_
  %_cond2_1_474 = icmp ugt i8* %_ptr_bt_470, %_parent_stack_end_ptr_
  %_cond2_2_475 = icmp ult i8* %_ptr_bt_470, %_parent_stack_start_ptr_
  %_cond2_476 = or i1 %_cond2_1_474, %_cond2_2_475
  %_cond4_477 = icmp ule i8* %_pot_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond1_n_cond2_478 = and i1 %_cond1_473, %_cond2_476
  %_cond1_n_cond2_cond3_479 = and i1 %_cond1_n_cond2_478, %_cond4_477
  br i1 %_cond1_n_cond2_cond3_479, label %389, label %390

; <label>:389:                                    ; preds = %block_0xa6
  %_address_in_parent_stack_480 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_address_in_parent_stack_bt_481 = bitcast i8* %_address_in_parent_stack_480 to i32*
  br label %390

; <label>:390:                                    ; preds = %block_0xa6, %389
  %391 = phi i32* [ %388, %block_0xa6 ], [ %_address_in_parent_stack_bt_481, %389 ]
  %_new_load_482 = load i32, i32* %391
  %392 = sext i32 %_new_load_482 to i64, !mcsema_real_eip !113
  store i64 %392, i64* %RAX_val, !mcsema_real_eip !113
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %393 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -40
  %394 = add i64 %393, -40, !mcsema_real_eip !114
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %395 = inttoptr i64 %394 to i64*, !mcsema_real_eip !114
  %_ptr_to_int_483 = ptrtoint i64* %_allin_new_bt_104 to i64
  %_local_end_to_int_484 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_485 = bitcast i64* %_allin_new_bt_104 to i8*
  %_offset_above_rbp_486 = sub i64 %_ptr_to_int_483, %_local_end_to_int_484
  %_pot_address_in_parent_stack_487 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_cond1_488 = icmp ugt i8* %_ptr_bt_485, %_local_stack_end_ptr_
  %_cond2_1_489 = icmp ugt i8* %_ptr_bt_485, %_parent_stack_end_ptr_
  %_cond2_2_490 = icmp ult i8* %_ptr_bt_485, %_parent_stack_start_ptr_
  %_cond2_491 = or i1 %_cond2_1_489, %_cond2_2_490
  %_cond4_492 = icmp ule i8* %_pot_address_in_parent_stack_487, %_parent_stack_end_ptr_
  %_cond1_n_cond2_493 = and i1 %_cond1_488, %_cond2_491
  %_cond1_n_cond2_cond3_494 = and i1 %_cond1_n_cond2_493, %_cond4_492
  br i1 %_cond1_n_cond2_cond3_494, label %396, label %397

; <label>:396:                                    ; preds = %390
  %_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_address_in_parent_stack_bt_496 = bitcast i8* %_address_in_parent_stack_495 to i64*
  br label %397

; <label>:397:                                    ; preds = %390, %396
  %398 = phi i64* [ %_allin_new_bt_104, %390 ], [ %_address_in_parent_stack_bt_496, %396 ]
  %_new_load_497 = load i64, i64* %398
  store i64 %_new_load_497, i64* %RCX_val, !mcsema_real_eip !114
  %399 = shl nsw i64 %392, 2
  %400 = add i64 %_new_load_497, %399, !mcsema_real_eip !115
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !115
  %402 = bitcast i64* %401 to i32*
  %_ptr_to_int_498 = ptrtoint i32* %402 to i64
  %_local_end_to_int_499 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_500 = bitcast i32* %402 to i8*
  %_offset_above_rbp_501 = sub i64 %_ptr_to_int_498, %_local_end_to_int_499
  %_pot_address_in_parent_stack_502 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_501
  %_cond1_503 = icmp ugt i8* %_ptr_bt_500, %_local_stack_end_ptr_
  %_cond2_1_504 = icmp ugt i8* %_ptr_bt_500, %_parent_stack_end_ptr_
  %_cond2_2_505 = icmp ult i8* %_ptr_bt_500, %_parent_stack_start_ptr_
  %_cond2_506 = or i1 %_cond2_1_504, %_cond2_2_505
  %_cond4_507 = icmp ule i8* %_pot_address_in_parent_stack_502, %_parent_stack_end_ptr_
  %_cond1_n_cond2_508 = and i1 %_cond1_503, %_cond2_506
  %_cond1_n_cond2_cond3_509 = and i1 %_cond1_n_cond2_508, %_cond4_507
  br i1 %_cond1_n_cond2_cond3_509, label %403, label %404

; <label>:403:                                    ; preds = %397
  %_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_501
  %_address_in_parent_stack_bt_511 = bitcast i8* %_address_in_parent_stack_510 to i32*
  br label %404

; <label>:404:                                    ; preds = %397, %403
  %405 = phi i32* [ %402, %397 ], [ %_address_in_parent_stack_bt_511, %403 ]
  %_new_load_512 = load i32, i32* %405
  %406 = zext i32 %_new_load_512 to i64, !mcsema_real_eip !115
  store i64 %406, i64* %RDX_val, !mcsema_real_eip !115
  %_load_rbp_ptr_105 = load i8*, i8** %_RBP_ptr_
  %407 = load i64, i64* %RBP_val, !mcsema_real_eip !116
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_105, i64 -84
  %408 = add i64 %407, -84, !mcsema_real_eip !116
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !116
  %410 = bitcast i64* %_allin_new_bt_107 to i32*
  %_ptr_to_int_513 = ptrtoint i32* %410 to i64
  %_local_end_to_int_514 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_515 = bitcast i32* %410 to i8*
  %_offset_above_rbp_516 = sub i64 %_ptr_to_int_513, %_local_end_to_int_514
  %_pot_address_in_parent_stack_517 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_516
  %_cond1_518 = icmp ugt i8* %_ptr_bt_515, %_local_stack_end_ptr_
  %_cond2_1_519 = icmp ugt i8* %_ptr_bt_515, %_parent_stack_end_ptr_
  %_cond2_2_520 = icmp ult i8* %_ptr_bt_515, %_parent_stack_start_ptr_
  %_cond2_521 = or i1 %_cond2_1_519, %_cond2_2_520
  %_cond4_522 = icmp ule i8* %_pot_address_in_parent_stack_517, %_parent_stack_end_ptr_
  %_cond1_n_cond2_523 = and i1 %_cond1_518, %_cond2_521
  %_cond1_n_cond2_cond3_524 = and i1 %_cond1_n_cond2_523, %_cond4_522
  br i1 %_cond1_n_cond2_cond3_524, label %411, label %412

; <label>:411:                                    ; preds = %404
  %_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_516
  %_address_in_parent_stack_bt_526 = bitcast i8* %_address_in_parent_stack_525 to i32*
  br label %412

; <label>:412:                                    ; preds = %404, %411
  %413 = phi i32* [ %410, %404 ], [ %_address_in_parent_stack_bt_526, %411 ]
  %_new_load_527 = load i32, i32* %413
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_512, i32 %_new_load_527)
  %414 = extractvalue { i32, i1 } %uadd75, 0
  %415 = xor i32 %414, %_new_load_527, !mcsema_real_eip !117
  %416 = xor i32 %415, %_new_load_512, !mcsema_real_eip !117
  %417 = and i32 %416, 16, !mcsema_real_eip !117
  %418 = icmp ne i32 %417, 0, !mcsema_real_eip !117
  store i1 %418, i1* %AF_val, !mcsema_real_eip !117
  %419 = icmp slt i32 %414, 0
  store i1 %419, i1* %SF_val, !mcsema_real_eip !117
  %420 = icmp eq i32 %414, 0, !mcsema_real_eip !117
  store i1 %420, i1* %ZF_val, !mcsema_real_eip !117
  %421 = xor i32 %_new_load_527, -2147483648, !mcsema_real_eip !117
  %422 = xor i32 %421, %_new_load_512, !mcsema_real_eip !117
  %423 = and i32 %415, %422, !mcsema_real_eip !117
  %424 = icmp slt i32 %423, 0
  store i1 %424, i1* %OF_val, !mcsema_real_eip !117
  %425 = trunc i32 %414 to i8, !mcsema_real_eip !117
  %426 = tail call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !117
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF_val, !mcsema_real_eip !117
  %429 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %429, i1* %CF_val, !mcsema_real_eip !117
  %430 = zext i32 %414 to i64, !mcsema_real_eip !117
  store i64 %430, i64* %RSI_val, !mcsema_real_eip !117
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -84
  %432 = add i64 %431, -84, !mcsema_real_eip !118
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !118
  %434 = bitcast i64* %_allin_new_bt_110 to i32*
  store i32 %414, i32* %434, !mcsema_real_eip !118
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  %435 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -92
  %436 = add i64 %435, -92, !mcsema_real_eip !119
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !119
  %438 = bitcast i64* %_allin_new_bt_113 to i32*
  %_ptr_to_int_528 = ptrtoint i32* %438 to i64
  %_local_end_to_int_529 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_530 = bitcast i32* %438 to i8*
  %_offset_above_rbp_531 = sub i64 %_ptr_to_int_528, %_local_end_to_int_529
  %_pot_address_in_parent_stack_532 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_531
  %_cond1_533 = icmp ugt i8* %_ptr_bt_530, %_local_stack_end_ptr_
  %_cond2_1_534 = icmp ugt i8* %_ptr_bt_530, %_parent_stack_end_ptr_
  %_cond2_2_535 = icmp ult i8* %_ptr_bt_530, %_parent_stack_start_ptr_
  %_cond2_536 = or i1 %_cond2_1_534, %_cond2_2_535
  %_cond4_537 = icmp ule i8* %_pot_address_in_parent_stack_532, %_parent_stack_end_ptr_
  %_cond1_n_cond2_538 = and i1 %_cond1_533, %_cond2_536
  %_cond1_n_cond2_cond3_539 = and i1 %_cond1_n_cond2_538, %_cond4_537
  br i1 %_cond1_n_cond2_cond3_539, label %439, label %440

; <label>:439:                                    ; preds = %412
  %_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_531
  %_address_in_parent_stack_bt_541 = bitcast i8* %_address_in_parent_stack_540 to i32*
  br label %440

; <label>:440:                                    ; preds = %412, %439
  %441 = phi i32* [ %438, %412 ], [ %_address_in_parent_stack_bt_541, %439 ]
  %_new_load_542 = load i32, i32* %441
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_542, i32 1)
  %442 = extractvalue { i32, i1 } %uadd76, 0
  %443 = xor i32 %442, %_new_load_542, !mcsema_real_eip !120
  %444 = and i32 %443, 16, !mcsema_real_eip !120
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !120
  store i1 %445, i1* %AF_val, !mcsema_real_eip !120
  %446 = icmp slt i32 %442, 0
  store i1 %446, i1* %SF_val, !mcsema_real_eip !120
  %447 = icmp eq i32 %442, 0, !mcsema_real_eip !120
  store i1 %447, i1* %ZF_val, !mcsema_real_eip !120
  %448 = xor i32 %_new_load_542, -2147483648, !mcsema_real_eip !120
  %449 = and i32 %443, %448, !mcsema_real_eip !120
  %450 = icmp slt i32 %449, 0
  store i1 %450, i1* %OF_val, !mcsema_real_eip !120
  %451 = trunc i32 %442 to i8, !mcsema_real_eip !120
  %452 = tail call i8 @llvm.ctpop.i8(i8 %451), !mcsema_real_eip !120
  %453 = and i8 %452, 1
  %454 = icmp eq i8 %453, 0
  store i1 %454, i1* %PF_val, !mcsema_real_eip !120
  %455 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %455, i1* %CF_val, !mcsema_real_eip !120
  %456 = zext i32 %442 to i64, !mcsema_real_eip !120
  store i64 %456, i64* %RAX_val, !mcsema_real_eip !120
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %457 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -92
  %458 = add i64 %457, -92, !mcsema_real_eip !121
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %459 = inttoptr i64 %458 to i64*, !mcsema_real_eip !121
  %460 = bitcast i64* %_allin_new_bt_116 to i32*
  store i32 %442, i32* %460, !mcsema_real_eip !121
  br label %block_0x9a, !mcsema_real_eip !122

block_0xc9:                                       ; preds = %367
  %461 = phi i8* [ %_load_rbp_ptr_99, %367 ]
  %.lcssa95 = phi i64 [ %385, %367 ]
  %_new_gep_117 = getelementptr i8, i8* %461, i64 -52
  %462 = add i64 %.lcssa95, -52, !mcsema_real_eip !112
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !112
  %464 = bitcast i64* %_allin_new_bt_118 to i32*
  %_ptr_to_int_543 = ptrtoint i32* %464 to i64
  %_local_end_to_int_544 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_545 = bitcast i32* %464 to i8*
  %_offset_above_rbp_546 = sub i64 %_ptr_to_int_543, %_local_end_to_int_544
  %_pot_address_in_parent_stack_547 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_546
  %_cond1_548 = icmp ugt i8* %_ptr_bt_545, %_local_stack_end_ptr_
  %_cond2_1_549 = icmp ugt i8* %_ptr_bt_545, %_parent_stack_end_ptr_
  %_cond2_2_550 = icmp ult i8* %_ptr_bt_545, %_parent_stack_start_ptr_
  %_cond2_551 = or i1 %_cond2_1_549, %_cond2_2_550
  %_cond4_552 = icmp ule i8* %_pot_address_in_parent_stack_547, %_parent_stack_end_ptr_
  %_cond1_n_cond2_553 = and i1 %_cond1_548, %_cond2_551
  %_cond1_n_cond2_cond3_554 = and i1 %_cond1_n_cond2_553, %_cond4_552
  br i1 %_cond1_n_cond2_cond3_554, label %465, label %466

; <label>:465:                                    ; preds = %block_0xc9
  %_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_546
  %_address_in_parent_stack_bt_556 = bitcast i8* %_address_in_parent_stack_555 to i32*
  br label %466

; <label>:466:                                    ; preds = %block_0xc9, %465
  %467 = phi i32* [ %464, %block_0xc9 ], [ %_address_in_parent_stack_bt_556, %465 ]
  %_new_load_557 = load i32, i32* %467
  %468 = zext i32 %_new_load_557 to i64, !mcsema_real_eip !112
  store i64 %468, i64* %RAX_val, !mcsema_real_eip !112
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %469 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -84
  %470 = add i64 %469, -84, !mcsema_real_eip !123
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !123
  %472 = bitcast i64* %_allin_new_bt_121 to i32*
  %_ptr_to_int_558 = ptrtoint i32* %472 to i64
  %_local_end_to_int_559 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_560 = bitcast i32* %472 to i8*
  %_offset_above_rbp_561 = sub i64 %_ptr_to_int_558, %_local_end_to_int_559
  %_pot_address_in_parent_stack_562 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_561
  %_cond1_563 = icmp ugt i8* %_ptr_bt_560, %_local_stack_end_ptr_
  %_cond2_1_564 = icmp ugt i8* %_ptr_bt_560, %_parent_stack_end_ptr_
  %_cond2_2_565 = icmp ult i8* %_ptr_bt_560, %_parent_stack_start_ptr_
  %_cond2_566 = or i1 %_cond2_1_564, %_cond2_2_565
  %_cond4_567 = icmp ule i8* %_pot_address_in_parent_stack_562, %_parent_stack_end_ptr_
  %_cond1_n_cond2_568 = and i1 %_cond1_563, %_cond2_566
  %_cond1_n_cond2_cond3_569 = and i1 %_cond1_n_cond2_568, %_cond4_567
  br i1 %_cond1_n_cond2_cond3_569, label %473, label %474

; <label>:473:                                    ; preds = %466
  %_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_561
  %_address_in_parent_stack_bt_571 = bitcast i8* %_address_in_parent_stack_570 to i32*
  br label %474

; <label>:474:                                    ; preds = %466, %473
  %475 = phi i32* [ %472, %466 ], [ %_address_in_parent_stack_bt_571, %473 ]
  %_new_load_572 = load i32, i32* %475
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_557, i32 %_new_load_572)
  %476 = extractvalue { i32, i1 } %uadd77, 0
  %477 = xor i32 %476, %_new_load_572, !mcsema_real_eip !124
  %478 = xor i32 %477, %_new_load_557, !mcsema_real_eip !124
  %479 = and i32 %478, 16, !mcsema_real_eip !124
  %480 = icmp ne i32 %479, 0, !mcsema_real_eip !124
  store i1 %480, i1* %AF_val, !mcsema_real_eip !124
  %481 = icmp slt i32 %476, 0
  store i1 %481, i1* %SF_val, !mcsema_real_eip !124
  %482 = icmp eq i32 %476, 0, !mcsema_real_eip !124
  store i1 %482, i1* %ZF_val, !mcsema_real_eip !124
  %483 = xor i32 %_new_load_572, -2147483648, !mcsema_real_eip !124
  %484 = xor i32 %483, %_new_load_557, !mcsema_real_eip !124
  %485 = and i32 %477, %484, !mcsema_real_eip !124
  %486 = icmp slt i32 %485, 0
  store i1 %486, i1* %OF_val, !mcsema_real_eip !124
  %487 = trunc i32 %476 to i8, !mcsema_real_eip !124
  %488 = tail call i8 @llvm.ctpop.i8(i8 %487), !mcsema_real_eip !124
  %489 = and i8 %488, 1
  %490 = icmp eq i8 %489, 0
  store i1 %490, i1* %PF_val, !mcsema_real_eip !124
  %491 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %491, i1* %CF_val, !mcsema_real_eip !124
  %492 = zext i32 %476 to i64, !mcsema_real_eip !124
  store i64 %492, i64* %RCX_val, !mcsema_real_eip !124
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %493 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -84
  %494 = add i64 %493, -84, !mcsema_real_eip !125
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !125
  %496 = bitcast i64* %_allin_new_bt_124 to i32*
  store i32 %476, i32* %496, !mcsema_real_eip !125
  %_load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_
  %497 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_125, i64 -96
  %498 = add i64 %497, -96, !mcsema_real_eip !126
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %499 = inttoptr i64 %498 to i64*, !mcsema_real_eip !126
  %500 = bitcast i64* %_allin_new_bt_127 to i32*
  store i32 0, i32* %500, !mcsema_real_eip !126
  br label %block_0xdb, !mcsema_real_eip !113

block_0xdb:                                       ; preds = %587, %474
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %501 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -96
  %502 = add i64 %501, -96, !mcsema_real_eip !127
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !127
  %504 = bitcast i64* %_allin_new_bt_130 to i32*
  %_ptr_to_int_573 = ptrtoint i32* %504 to i64
  %_local_end_to_int_574 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_575 = bitcast i32* %504 to i8*
  %_offset_above_rbp_576 = sub i64 %_ptr_to_int_573, %_local_end_to_int_574
  %_pot_address_in_parent_stack_577 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_cond1_578 = icmp ugt i8* %_ptr_bt_575, %_local_stack_end_ptr_
  %_cond2_1_579 = icmp ugt i8* %_ptr_bt_575, %_parent_stack_end_ptr_
  %_cond2_2_580 = icmp ult i8* %_ptr_bt_575, %_parent_stack_start_ptr_
  %_cond2_581 = or i1 %_cond2_1_579, %_cond2_2_580
  %_cond4_582 = icmp ule i8* %_pot_address_in_parent_stack_577, %_parent_stack_end_ptr_
  %_cond1_n_cond2_583 = and i1 %_cond1_578, %_cond2_581
  %_cond1_n_cond2_cond3_584 = and i1 %_cond1_n_cond2_583, %_cond4_582
  br i1 %_cond1_n_cond2_cond3_584, label %505, label %506

; <label>:505:                                    ; preds = %block_0xdb
  %_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_address_in_parent_stack_bt_586 = bitcast i8* %_address_in_parent_stack_585 to i32*
  br label %506

; <label>:506:                                    ; preds = %block_0xdb, %505
  %507 = phi i32* [ %504, %block_0xdb ], [ %_address_in_parent_stack_bt_586, %505 ]
  %_new_load_587 = load i32, i32* %507
  %508 = zext i32 %_new_load_587 to i64, !mcsema_real_eip !127
  store i64 %508, i64* %RAX_val, !mcsema_real_eip !127
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %509 = load i64, i64* %RBP_val, !mcsema_real_eip !128
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -44
  %510 = add i64 %509, -44, !mcsema_real_eip !128
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !128
  %512 = bitcast i64* %_allin_new_bt_133 to i32*
  %_ptr_to_int_588 = ptrtoint i32* %512 to i64
  %_local_end_to_int_589 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_590 = bitcast i32* %512 to i8*
  %_offset_above_rbp_591 = sub i64 %_ptr_to_int_588, %_local_end_to_int_589
  %_pot_address_in_parent_stack_592 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_591
  %_cond1_593 = icmp ugt i8* %_ptr_bt_590, %_local_stack_end_ptr_
  %_cond2_1_594 = icmp ugt i8* %_ptr_bt_590, %_parent_stack_end_ptr_
  %_cond2_2_595 = icmp ult i8* %_ptr_bt_590, %_parent_stack_start_ptr_
  %_cond2_596 = or i1 %_cond2_1_594, %_cond2_2_595
  %_cond4_597 = icmp ule i8* %_pot_address_in_parent_stack_592, %_parent_stack_end_ptr_
  %_cond1_n_cond2_598 = and i1 %_cond1_593, %_cond2_596
  %_cond1_n_cond2_cond3_599 = and i1 %_cond1_n_cond2_598, %_cond4_597
  br i1 %_cond1_n_cond2_cond3_599, label %513, label %514

; <label>:513:                                    ; preds = %506
  %_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_591
  %_address_in_parent_stack_bt_601 = bitcast i8* %_address_in_parent_stack_600 to i32*
  br label %514

; <label>:514:                                    ; preds = %506, %513
  %515 = phi i32* [ %512, %506 ], [ %_address_in_parent_stack_bt_601, %513 ]
  %_new_load_602 = load i32, i32* %515
  %516 = sub i32 %_new_load_587, %_new_load_602, !mcsema_real_eip !128
  %517 = xor i32 %516, %_new_load_587, !mcsema_real_eip !128
  %518 = xor i32 %517, %_new_load_602, !mcsema_real_eip !128
  %519 = and i32 %518, 16, !mcsema_real_eip !128
  %520 = icmp ne i32 %519, 0, !mcsema_real_eip !128
  store i1 %520, i1* %AF_val, !mcsema_real_eip !128
  %521 = trunc i32 %516 to i8, !mcsema_real_eip !128
  %522 = tail call i8 @llvm.ctpop.i8(i8 %521), !mcsema_real_eip !128
  %523 = and i8 %522, 1
  %524 = icmp eq i8 %523, 0
  store i1 %524, i1* %PF_val, !mcsema_real_eip !128
  %525 = icmp eq i32 %_new_load_587, %_new_load_602
  store i1 %525, i1* %ZF_val, !mcsema_real_eip !128
  %526 = icmp slt i32 %516, 0
  store i1 %526, i1* %SF_val, !mcsema_real_eip !128
  %527 = icmp ult i32 %_new_load_587, %_new_load_602, !mcsema_real_eip !128
  store i1 %527, i1* %CF_val, !mcsema_real_eip !128
  %528 = xor i32 %_new_load_602, %_new_load_587, !mcsema_real_eip !128
  %529 = and i32 %517, %528, !mcsema_real_eip !128
  %530 = icmp slt i32 %529, 0
  store i1 %530, i1* %OF_val, !mcsema_real_eip !128
  %531 = load i1, i1* %SF_val, !mcsema_real_eip !129
  %tmp78 = xor i1 %531, %530
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %532 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  br i1 %tmp78, label %block_0xe7, label %block_0x10a, !mcsema_real_eip !129

block_0xe7:                                       ; preds = %514
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -96
  %533 = add i64 %532, -96, !mcsema_real_eip !131
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !131
  %535 = bitcast i64* %_allin_new_bt_136 to i32*
  %_ptr_to_int_603 = ptrtoint i32* %535 to i64
  %_local_end_to_int_604 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_605 = bitcast i32* %535 to i8*
  %_offset_above_rbp_606 = sub i64 %_ptr_to_int_603, %_local_end_to_int_604
  %_pot_address_in_parent_stack_607 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_606
  %_cond1_608 = icmp ugt i8* %_ptr_bt_605, %_local_stack_end_ptr_
  %_cond2_1_609 = icmp ugt i8* %_ptr_bt_605, %_parent_stack_end_ptr_
  %_cond2_2_610 = icmp ult i8* %_ptr_bt_605, %_parent_stack_start_ptr_
  %_cond2_611 = or i1 %_cond2_1_609, %_cond2_2_610
  %_cond4_612 = icmp ule i8* %_pot_address_in_parent_stack_607, %_parent_stack_end_ptr_
  %_cond1_n_cond2_613 = and i1 %_cond1_608, %_cond2_611
  %_cond1_n_cond2_cond3_614 = and i1 %_cond1_n_cond2_613, %_cond4_612
  br i1 %_cond1_n_cond2_cond3_614, label %536, label %537

; <label>:536:                                    ; preds = %block_0xe7
  %_address_in_parent_stack_615 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_606
  %_address_in_parent_stack_bt_616 = bitcast i8* %_address_in_parent_stack_615 to i32*
  br label %537

; <label>:537:                                    ; preds = %block_0xe7, %536
  %538 = phi i32* [ %535, %block_0xe7 ], [ %_address_in_parent_stack_bt_616, %536 ]
  %_new_load_617 = load i32, i32* %538
  %539 = sext i32 %_new_load_617 to i64, !mcsema_real_eip !131
  store i64 %539, i64* %RAX_val, !mcsema_real_eip !131
  %_load_rbp_ptr_137 = load i8*, i8** %_RBP_ptr_
  %540 = load i64, i64* %RBP_val, !mcsema_real_eip !132
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_137, i64 -64
  %541 = add i64 %540, -64, !mcsema_real_eip !132
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !132
  %_ptr_to_int_618 = ptrtoint i64* %_allin_new_bt_139 to i64
  %_local_end_to_int_619 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_620 = bitcast i64* %_allin_new_bt_139 to i8*
  %_offset_above_rbp_621 = sub i64 %_ptr_to_int_618, %_local_end_to_int_619
  %_pot_address_in_parent_stack_622 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_621
  %_cond1_623 = icmp ugt i8* %_ptr_bt_620, %_local_stack_end_ptr_
  %_cond2_1_624 = icmp ugt i8* %_ptr_bt_620, %_parent_stack_end_ptr_
  %_cond2_2_625 = icmp ult i8* %_ptr_bt_620, %_parent_stack_start_ptr_
  %_cond2_626 = or i1 %_cond2_1_624, %_cond2_2_625
  %_cond4_627 = icmp ule i8* %_pot_address_in_parent_stack_622, %_parent_stack_end_ptr_
  %_cond1_n_cond2_628 = and i1 %_cond1_623, %_cond2_626
  %_cond1_n_cond2_cond3_629 = and i1 %_cond1_n_cond2_628, %_cond4_627
  br i1 %_cond1_n_cond2_cond3_629, label %543, label %544

; <label>:543:                                    ; preds = %537
  %_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_621
  %_address_in_parent_stack_bt_631 = bitcast i8* %_address_in_parent_stack_630 to i64*
  br label %544

; <label>:544:                                    ; preds = %537, %543
  %545 = phi i64* [ %_allin_new_bt_139, %537 ], [ %_address_in_parent_stack_bt_631, %543 ]
  %_new_load_632 = load i64, i64* %545
  store i64 %_new_load_632, i64* %RCX_val, !mcsema_real_eip !132
  %546 = shl nsw i64 %539, 2
  %547 = add i64 %_new_load_632, %546, !mcsema_real_eip !133
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !133
  %549 = bitcast i64* %548 to i32*
  %_ptr_to_int_633 = ptrtoint i32* %549 to i64
  %_local_end_to_int_634 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_635 = bitcast i32* %549 to i8*
  %_offset_above_rbp_636 = sub i64 %_ptr_to_int_633, %_local_end_to_int_634
  %_pot_address_in_parent_stack_637 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_636
  %_cond1_638 = icmp ugt i8* %_ptr_bt_635, %_local_stack_end_ptr_
  %_cond2_1_639 = icmp ugt i8* %_ptr_bt_635, %_parent_stack_end_ptr_
  %_cond2_2_640 = icmp ult i8* %_ptr_bt_635, %_parent_stack_start_ptr_
  %_cond2_641 = or i1 %_cond2_1_639, %_cond2_2_640
  %_cond4_642 = icmp ule i8* %_pot_address_in_parent_stack_637, %_parent_stack_end_ptr_
  %_cond1_n_cond2_643 = and i1 %_cond1_638, %_cond2_641
  %_cond1_n_cond2_cond3_644 = and i1 %_cond1_n_cond2_643, %_cond4_642
  br i1 %_cond1_n_cond2_cond3_644, label %550, label %551

; <label>:550:                                    ; preds = %544
  %_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_636
  %_address_in_parent_stack_bt_646 = bitcast i8* %_address_in_parent_stack_645 to i32*
  br label %551

; <label>:551:                                    ; preds = %544, %550
  %552 = phi i32* [ %549, %544 ], [ %_address_in_parent_stack_bt_646, %550 ]
  %_new_load_647 = load i32, i32* %552
  %553 = zext i32 %_new_load_647 to i64, !mcsema_real_eip !133
  store i64 %553, i64* %RDX_val, !mcsema_real_eip !133
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %554 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -84
  %555 = add i64 %554, -84, !mcsema_real_eip !134
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !134
  %557 = bitcast i64* %_allin_new_bt_142 to i32*
  %_ptr_to_int_648 = ptrtoint i32* %557 to i64
  %_local_end_to_int_649 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_650 = bitcast i32* %557 to i8*
  %_offset_above_rbp_651 = sub i64 %_ptr_to_int_648, %_local_end_to_int_649
  %_pot_address_in_parent_stack_652 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_651
  %_cond1_653 = icmp ugt i8* %_ptr_bt_650, %_local_stack_end_ptr_
  %_cond2_1_654 = icmp ugt i8* %_ptr_bt_650, %_parent_stack_end_ptr_
  %_cond2_2_655 = icmp ult i8* %_ptr_bt_650, %_parent_stack_start_ptr_
  %_cond2_656 = or i1 %_cond2_1_654, %_cond2_2_655
  %_cond4_657 = icmp ule i8* %_pot_address_in_parent_stack_652, %_parent_stack_end_ptr_
  %_cond1_n_cond2_658 = and i1 %_cond1_653, %_cond2_656
  %_cond1_n_cond2_cond3_659 = and i1 %_cond1_n_cond2_658, %_cond4_657
  br i1 %_cond1_n_cond2_cond3_659, label %558, label %559

; <label>:558:                                    ; preds = %551
  %_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_651
  %_address_in_parent_stack_bt_661 = bitcast i8* %_address_in_parent_stack_660 to i32*
  br label %559

; <label>:559:                                    ; preds = %551, %558
  %560 = phi i32* [ %557, %551 ], [ %_address_in_parent_stack_bt_661, %558 ]
  %_new_load_662 = load i32, i32* %560
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_647, i32 %_new_load_662)
  %561 = extractvalue { i32, i1 } %uadd79, 0
  %562 = xor i32 %561, %_new_load_662, !mcsema_real_eip !135
  %563 = xor i32 %562, %_new_load_647, !mcsema_real_eip !135
  %564 = and i32 %563, 16, !mcsema_real_eip !135
  %565 = icmp ne i32 %564, 0, !mcsema_real_eip !135
  store i1 %565, i1* %AF_val, !mcsema_real_eip !135
  %566 = icmp slt i32 %561, 0
  store i1 %566, i1* %SF_val, !mcsema_real_eip !135
  %567 = icmp eq i32 %561, 0, !mcsema_real_eip !135
  store i1 %567, i1* %ZF_val, !mcsema_real_eip !135
  %568 = xor i32 %_new_load_662, -2147483648, !mcsema_real_eip !135
  %569 = xor i32 %568, %_new_load_647, !mcsema_real_eip !135
  %570 = and i32 %562, %569, !mcsema_real_eip !135
  %571 = icmp slt i32 %570, 0
  store i1 %571, i1* %OF_val, !mcsema_real_eip !135
  %572 = trunc i32 %561 to i8, !mcsema_real_eip !135
  %573 = tail call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !135
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  store i1 %575, i1* %PF_val, !mcsema_real_eip !135
  %576 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %576, i1* %CF_val, !mcsema_real_eip !135
  %577 = zext i32 %561 to i64, !mcsema_real_eip !135
  store i64 %577, i64* %RSI_val, !mcsema_real_eip !135
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %578 = load i64, i64* %RBP_val, !mcsema_real_eip !136
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -84
  %579 = add i64 %578, -84, !mcsema_real_eip !136
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !136
  %581 = bitcast i64* %_allin_new_bt_145 to i32*
  store i32 %561, i32* %581, !mcsema_real_eip !136
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %582 = load i64, i64* %RBP_val, !mcsema_real_eip !137
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -96
  %583 = add i64 %582, -96, !mcsema_real_eip !137
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !137
  %585 = bitcast i64* %_allin_new_bt_148 to i32*
  %_ptr_to_int_663 = ptrtoint i32* %585 to i64
  %_local_end_to_int_664 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_665 = bitcast i32* %585 to i8*
  %_offset_above_rbp_666 = sub i64 %_ptr_to_int_663, %_local_end_to_int_664
  %_pot_address_in_parent_stack_667 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_cond1_668 = icmp ugt i8* %_ptr_bt_665, %_local_stack_end_ptr_
  %_cond2_1_669 = icmp ugt i8* %_ptr_bt_665, %_parent_stack_end_ptr_
  %_cond2_2_670 = icmp ult i8* %_ptr_bt_665, %_parent_stack_start_ptr_
  %_cond2_671 = or i1 %_cond2_1_669, %_cond2_2_670
  %_cond4_672 = icmp ule i8* %_pot_address_in_parent_stack_667, %_parent_stack_end_ptr_
  %_cond1_n_cond2_673 = and i1 %_cond1_668, %_cond2_671
  %_cond1_n_cond2_cond3_674 = and i1 %_cond1_n_cond2_673, %_cond4_672
  br i1 %_cond1_n_cond2_cond3_674, label %586, label %587

; <label>:586:                                    ; preds = %559
  %_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_666
  %_address_in_parent_stack_bt_676 = bitcast i8* %_address_in_parent_stack_675 to i32*
  br label %587

; <label>:587:                                    ; preds = %559, %586
  %588 = phi i32* [ %585, %559 ], [ %_address_in_parent_stack_bt_676, %586 ]
  %_new_load_677 = load i32, i32* %588
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_677, i32 1)
  %589 = extractvalue { i32, i1 } %uadd80, 0
  %590 = xor i32 %589, %_new_load_677, !mcsema_real_eip !138
  %591 = and i32 %590, 16, !mcsema_real_eip !138
  %592 = icmp ne i32 %591, 0, !mcsema_real_eip !138
  store i1 %592, i1* %AF_val, !mcsema_real_eip !138
  %593 = icmp slt i32 %589, 0
  store i1 %593, i1* %SF_val, !mcsema_real_eip !138
  %594 = icmp eq i32 %589, 0, !mcsema_real_eip !138
  store i1 %594, i1* %ZF_val, !mcsema_real_eip !138
  %595 = xor i32 %_new_load_677, -2147483648, !mcsema_real_eip !138
  %596 = and i32 %590, %595, !mcsema_real_eip !138
  %597 = icmp slt i32 %596, 0
  store i1 %597, i1* %OF_val, !mcsema_real_eip !138
  %598 = trunc i32 %589 to i8, !mcsema_real_eip !138
  %599 = tail call i8 @llvm.ctpop.i8(i8 %598), !mcsema_real_eip !138
  %600 = and i8 %599, 1
  %601 = icmp eq i8 %600, 0
  store i1 %601, i1* %PF_val, !mcsema_real_eip !138
  %602 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %602, i1* %CF_val, !mcsema_real_eip !138
  %603 = zext i32 %589 to i64, !mcsema_real_eip !138
  store i64 %603, i64* %RAX_val, !mcsema_real_eip !138
  %_load_rbp_ptr_149 = load i8*, i8** %_RBP_ptr_
  %604 = load i64, i64* %RBP_val, !mcsema_real_eip !139
  %_new_gep_150 = getelementptr i8, i8* %_load_rbp_ptr_149, i64 -96
  %605 = add i64 %604, -96, !mcsema_real_eip !139
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %606 = inttoptr i64 %605 to i64*, !mcsema_real_eip !139
  %607 = bitcast i64* %_allin_new_bt_151 to i32*
  store i32 %589, i32* %607, !mcsema_real_eip !139
  br label %block_0xdb, !mcsema_real_eip !140

block_0x10a:                                      ; preds = %514
  %608 = phi i8* [ %_load_rbp_ptr_134, %514 ]
  %.lcssa94 = phi i64 [ %532, %514 ]
  %_new_gep_152 = getelementptr i8, i8* %608, i64 -72
  %609 = add i64 %.lcssa94, -72, !mcsema_real_eip !130
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %610 = inttoptr i64 %609 to i64*, !mcsema_real_eip !130
  %_ptr_to_int_678 = ptrtoint i64* %_allin_new_bt_153 to i64
  %_local_end_to_int_679 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_680 = bitcast i64* %_allin_new_bt_153 to i8*
  %_offset_above_rbp_681 = sub i64 %_ptr_to_int_678, %_local_end_to_int_679
  %_pot_address_in_parent_stack_682 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_cond1_683 = icmp ugt i8* %_ptr_bt_680, %_local_stack_end_ptr_
  %_cond2_1_684 = icmp ugt i8* %_ptr_bt_680, %_parent_stack_end_ptr_
  %_cond2_2_685 = icmp ult i8* %_ptr_bt_680, %_parent_stack_start_ptr_
  %_cond2_686 = or i1 %_cond2_1_684, %_cond2_2_685
  %_cond4_687 = icmp ule i8* %_pot_address_in_parent_stack_682, %_parent_stack_end_ptr_
  %_cond1_n_cond2_688 = and i1 %_cond1_683, %_cond2_686
  %_cond1_n_cond2_cond3_689 = and i1 %_cond1_n_cond2_688, %_cond4_687
  br i1 %_cond1_n_cond2_cond3_689, label %611, label %612

; <label>:611:                                    ; preds = %block_0x10a
  %_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_681
  %_address_in_parent_stack_bt_691 = bitcast i8* %_address_in_parent_stack_690 to i64*
  br label %612

; <label>:612:                                    ; preds = %block_0x10a, %611
  %613 = phi i64* [ %_allin_new_bt_153, %block_0x10a ], [ %_address_in_parent_stack_bt_691, %611 ]
  %_new_load_692 = load i64, i64* %613
  store i64 %_new_load_692, i64* %RAX_val, !mcsema_real_eip !130
  %614 = inttoptr i64 %_new_load_692 to i64*, !mcsema_real_eip !141
  %615 = bitcast i64* %614 to i32*
  %_ptr_to_int_693 = ptrtoint i32* %615 to i64
  %_local_end_to_int_694 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_695 = bitcast i32* %615 to i8*
  %_offset_above_rbp_696 = sub i64 %_ptr_to_int_693, %_local_end_to_int_694
  %_pot_address_in_parent_stack_697 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_cond1_698 = icmp ugt i8* %_ptr_bt_695, %_local_stack_end_ptr_
  %_cond2_1_699 = icmp ugt i8* %_ptr_bt_695, %_parent_stack_end_ptr_
  %_cond2_2_700 = icmp ult i8* %_ptr_bt_695, %_parent_stack_start_ptr_
  %_cond2_701 = or i1 %_cond2_1_699, %_cond2_2_700
  %_cond4_702 = icmp ule i8* %_pot_address_in_parent_stack_697, %_parent_stack_end_ptr_
  %_cond1_n_cond2_703 = and i1 %_cond1_698, %_cond2_701
  %_cond1_n_cond2_cond3_704 = and i1 %_cond1_n_cond2_703, %_cond4_702
  br i1 %_cond1_n_cond2_cond3_704, label %616, label %617

; <label>:616:                                    ; preds = %612
  %_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_696
  %_address_in_parent_stack_bt_706 = bitcast i8* %_address_in_parent_stack_705 to i32*
  br label %617

; <label>:617:                                    ; preds = %612, %616
  %618 = phi i32* [ %615, %612 ], [ %_address_in_parent_stack_bt_706, %616 ]
  %_new_load_707 = load i32, i32* %618
  %619 = zext i32 %_new_load_707 to i64, !mcsema_real_eip !141
  store i64 %619, i64* %RCX_val, !mcsema_real_eip !141
  %_load_rbp_ptr_154 = load i8*, i8** %_RBP_ptr_
  %620 = load i64, i64* %RBP_val, !mcsema_real_eip !142
  %_new_gep_155 = getelementptr i8, i8* %_load_rbp_ptr_154, i64 -84
  %621 = add i64 %620, -84, !mcsema_real_eip !142
  %_allin_new_bt_156 = bitcast i8* %_new_gep_155 to i64*
  %622 = inttoptr i64 %621 to i64*, !mcsema_real_eip !142
  %623 = bitcast i64* %_allin_new_bt_156 to i32*
  %_ptr_to_int_708 = ptrtoint i32* %623 to i64
  %_local_end_to_int_709 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_710 = bitcast i32* %623 to i8*
  %_offset_above_rbp_711 = sub i64 %_ptr_to_int_708, %_local_end_to_int_709
  %_pot_address_in_parent_stack_712 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_711
  %_cond1_713 = icmp ugt i8* %_ptr_bt_710, %_local_stack_end_ptr_
  %_cond2_1_714 = icmp ugt i8* %_ptr_bt_710, %_parent_stack_end_ptr_
  %_cond2_2_715 = icmp ult i8* %_ptr_bt_710, %_parent_stack_start_ptr_
  %_cond2_716 = or i1 %_cond2_1_714, %_cond2_2_715
  %_cond4_717 = icmp ule i8* %_pot_address_in_parent_stack_712, %_parent_stack_end_ptr_
  %_cond1_n_cond2_718 = and i1 %_cond1_713, %_cond2_716
  %_cond1_n_cond2_cond3_719 = and i1 %_cond1_n_cond2_718, %_cond4_717
  br i1 %_cond1_n_cond2_cond3_719, label %624, label %625

; <label>:624:                                    ; preds = %617
  %_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_711
  %_address_in_parent_stack_bt_721 = bitcast i8* %_address_in_parent_stack_720 to i32*
  br label %625

; <label>:625:                                    ; preds = %617, %624
  %626 = phi i32* [ %623, %617 ], [ %_address_in_parent_stack_bt_721, %624 ]
  %_new_load_722 = load i32, i32* %626
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_707, i32 %_new_load_722)
  %627 = extractvalue { i32, i1 } %uadd81, 0
  %628 = xor i32 %627, %_new_load_722, !mcsema_real_eip !143
  %629 = xor i32 %628, %_new_load_707, !mcsema_real_eip !143
  %630 = and i32 %629, 16, !mcsema_real_eip !143
  %631 = icmp ne i32 %630, 0, !mcsema_real_eip !143
  store i1 %631, i1* %AF_val, !mcsema_real_eip !143
  %632 = icmp slt i32 %627, 0
  store i1 %632, i1* %SF_val, !mcsema_real_eip !143
  %633 = icmp eq i32 %627, 0, !mcsema_real_eip !143
  store i1 %633, i1* %ZF_val, !mcsema_real_eip !143
  %634 = xor i32 %_new_load_722, -2147483648, !mcsema_real_eip !143
  %635 = xor i32 %634, %_new_load_707, !mcsema_real_eip !143
  %636 = and i32 %628, %635, !mcsema_real_eip !143
  %637 = icmp slt i32 %636, 0
  store i1 %637, i1* %OF_val, !mcsema_real_eip !143
  %638 = trunc i32 %627 to i8, !mcsema_real_eip !143
  %639 = tail call i8 @llvm.ctpop.i8(i8 %638), !mcsema_real_eip !143
  %640 = and i8 %639, 1
  %641 = icmp eq i8 %640, 0
  store i1 %641, i1* %PF_val, !mcsema_real_eip !143
  %642 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %642, i1* %CF_val, !mcsema_real_eip !143
  %643 = zext i32 %627 to i64, !mcsema_real_eip !143
  store i64 %643, i64* %RDX_val, !mcsema_real_eip !143
  %_load_rbp_ptr_157 = load i8*, i8** %_RBP_ptr_
  %644 = load i64, i64* %RBP_val, !mcsema_real_eip !144
  %_new_gep_158 = getelementptr i8, i8* %_load_rbp_ptr_157, i64 -84
  %645 = add i64 %644, -84, !mcsema_real_eip !144
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %646 = inttoptr i64 %645 to i64*, !mcsema_real_eip !144
  %647 = bitcast i64* %_allin_new_bt_159 to i32*
  store i32 %627, i32* %647, !mcsema_real_eip !144
  %_load_rbp_ptr_160 = load i8*, i8** %_RBP_ptr_
  %648 = load i64, i64* %RBP_val, !mcsema_real_eip !145
  %_new_gep_161 = getelementptr i8, i8* %_load_rbp_ptr_160, i64 -100
  %649 = add i64 %648, -100, !mcsema_real_eip !145
  %_allin_new_bt_162 = bitcast i8* %_new_gep_161 to i64*
  %650 = inttoptr i64 %649 to i64*, !mcsema_real_eip !145
  %651 = bitcast i64* %_allin_new_bt_162 to i32*
  store i32 0, i32* %651, !mcsema_real_eip !145
  br label %block_0x11f, !mcsema_real_eip !131

block_0x11f:                                      ; preds = %738, %625
  %_load_rbp_ptr_163 = load i8*, i8** %_RBP_ptr_
  %652 = load i64, i64* %RBP_val, !mcsema_real_eip !146
  %_new_gep_164 = getelementptr i8, i8* %_load_rbp_ptr_163, i64 -100
  %653 = add i64 %652, -100, !mcsema_real_eip !146
  %_allin_new_bt_165 = bitcast i8* %_new_gep_164 to i64*
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !146
  %655 = bitcast i64* %_allin_new_bt_165 to i32*
  %_ptr_to_int_723 = ptrtoint i32* %655 to i64
  %_local_end_to_int_724 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_725 = bitcast i32* %655 to i8*
  %_offset_above_rbp_726 = sub i64 %_ptr_to_int_723, %_local_end_to_int_724
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %_ptr_bt_725, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %_ptr_bt_725, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %_ptr_bt_725, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond1_n_cond2_733, %_cond4_732
  br i1 %_cond1_n_cond2_cond3_734, label %656, label %657

; <label>:656:                                    ; preds = %block_0x11f
  %_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_address_in_parent_stack_bt_736 = bitcast i8* %_address_in_parent_stack_735 to i32*
  br label %657

; <label>:657:                                    ; preds = %block_0x11f, %656
  %658 = phi i32* [ %655, %block_0x11f ], [ %_address_in_parent_stack_bt_736, %656 ]
  %_new_load_737 = load i32, i32* %658
  %659 = zext i32 %_new_load_737 to i64, !mcsema_real_eip !146
  store i64 %659, i64* %RAX_val, !mcsema_real_eip !146
  %_load_rbp_ptr_166 = load i8*, i8** %_RBP_ptr_
  %660 = load i64, i64* %RBP_val, !mcsema_real_eip !147
  %_new_gep_167 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -48
  %661 = add i64 %660, -48, !mcsema_real_eip !147
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  %662 = inttoptr i64 %661 to i64*, !mcsema_real_eip !147
  %663 = bitcast i64* %_allin_new_bt_168 to i32*
  %_ptr_to_int_738 = ptrtoint i32* %663 to i64
  %_local_end_to_int_739 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_740 = bitcast i32* %663 to i8*
  %_offset_above_rbp_741 = sub i64 %_ptr_to_int_738, %_local_end_to_int_739
  %_pot_address_in_parent_stack_742 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_741
  %_cond1_743 = icmp ugt i8* %_ptr_bt_740, %_local_stack_end_ptr_
  %_cond2_1_744 = icmp ugt i8* %_ptr_bt_740, %_parent_stack_end_ptr_
  %_cond2_2_745 = icmp ult i8* %_ptr_bt_740, %_parent_stack_start_ptr_
  %_cond2_746 = or i1 %_cond2_1_744, %_cond2_2_745
  %_cond4_747 = icmp ule i8* %_pot_address_in_parent_stack_742, %_parent_stack_end_ptr_
  %_cond1_n_cond2_748 = and i1 %_cond1_743, %_cond2_746
  %_cond1_n_cond2_cond3_749 = and i1 %_cond1_n_cond2_748, %_cond4_747
  br i1 %_cond1_n_cond2_cond3_749, label %664, label %665

; <label>:664:                                    ; preds = %657
  %_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_741
  %_address_in_parent_stack_bt_751 = bitcast i8* %_address_in_parent_stack_750 to i32*
  br label %665

; <label>:665:                                    ; preds = %657, %664
  %666 = phi i32* [ %663, %657 ], [ %_address_in_parent_stack_bt_751, %664 ]
  %_new_load_752 = load i32, i32* %666
  %667 = sub i32 %_new_load_737, %_new_load_752, !mcsema_real_eip !147
  %668 = xor i32 %667, %_new_load_737, !mcsema_real_eip !147
  %669 = xor i32 %668, %_new_load_752, !mcsema_real_eip !147
  %670 = and i32 %669, 16, !mcsema_real_eip !147
  %671 = icmp ne i32 %670, 0, !mcsema_real_eip !147
  store i1 %671, i1* %AF_val, !mcsema_real_eip !147
  %672 = trunc i32 %667 to i8, !mcsema_real_eip !147
  %673 = tail call i8 @llvm.ctpop.i8(i8 %672), !mcsema_real_eip !147
  %674 = and i8 %673, 1
  %675 = icmp eq i8 %674, 0
  store i1 %675, i1* %PF_val, !mcsema_real_eip !147
  %676 = icmp eq i32 %_new_load_737, %_new_load_752
  store i1 %676, i1* %ZF_val, !mcsema_real_eip !147
  %677 = icmp slt i32 %667, 0
  store i1 %677, i1* %SF_val, !mcsema_real_eip !147
  %678 = icmp ult i32 %_new_load_737, %_new_load_752, !mcsema_real_eip !147
  store i1 %678, i1* %CF_val, !mcsema_real_eip !147
  %679 = xor i32 %_new_load_752, %_new_load_737, !mcsema_real_eip !147
  %680 = and i32 %668, %679, !mcsema_real_eip !147
  %681 = icmp slt i32 %680, 0
  store i1 %681, i1* %OF_val, !mcsema_real_eip !147
  %682 = load i1, i1* %SF_val, !mcsema_real_eip !148
  %tmp82 = xor i1 %682, %681
  %_load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_
  %683 = load i64, i64* %RBP_val, !mcsema_real_eip !149
  br i1 %tmp82, label %block_0x12b, label %block_0x14e, !mcsema_real_eip !148

block_0x12b:                                      ; preds = %665
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_169, i64 -100
  %684 = add i64 %683, -100, !mcsema_real_eip !150
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %685 = inttoptr i64 %684 to i64*, !mcsema_real_eip !150
  %686 = bitcast i64* %_allin_new_bt_171 to i32*
  %_ptr_to_int_753 = ptrtoint i32* %686 to i64
  %_local_end_to_int_754 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_755 = bitcast i32* %686 to i8*
  %_offset_above_rbp_756 = sub i64 %_ptr_to_int_753, %_local_end_to_int_754
  %_pot_address_in_parent_stack_757 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_756
  %_cond1_758 = icmp ugt i8* %_ptr_bt_755, %_local_stack_end_ptr_
  %_cond2_1_759 = icmp ugt i8* %_ptr_bt_755, %_parent_stack_end_ptr_
  %_cond2_2_760 = icmp ult i8* %_ptr_bt_755, %_parent_stack_start_ptr_
  %_cond2_761 = or i1 %_cond2_1_759, %_cond2_2_760
  %_cond4_762 = icmp ule i8* %_pot_address_in_parent_stack_757, %_parent_stack_end_ptr_
  %_cond1_n_cond2_763 = and i1 %_cond1_758, %_cond2_761
  %_cond1_n_cond2_cond3_764 = and i1 %_cond1_n_cond2_763, %_cond4_762
  br i1 %_cond1_n_cond2_cond3_764, label %687, label %688

; <label>:687:                                    ; preds = %block_0x12b
  %_address_in_parent_stack_765 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_756
  %_address_in_parent_stack_bt_766 = bitcast i8* %_address_in_parent_stack_765 to i32*
  br label %688

; <label>:688:                                    ; preds = %block_0x12b, %687
  %689 = phi i32* [ %686, %block_0x12b ], [ %_address_in_parent_stack_bt_766, %687 ]
  %_new_load_767 = load i32, i32* %689
  %690 = sext i32 %_new_load_767 to i64, !mcsema_real_eip !150
  store i64 %690, i64* %RAX_val, !mcsema_real_eip !150
  %_load_rbp_ptr_172 = load i8*, i8** %_RBP_ptr_
  %691 = load i64, i64* %RBP_val, !mcsema_real_eip !151
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_172, i64 -80
  %692 = add i64 %691, -80, !mcsema_real_eip !151
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %693 = inttoptr i64 %692 to i64*, !mcsema_real_eip !151
  %_ptr_to_int_768 = ptrtoint i64* %_allin_new_bt_174 to i64
  %_local_end_to_int_769 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_770 = bitcast i64* %_allin_new_bt_174 to i8*
  %_offset_above_rbp_771 = sub i64 %_ptr_to_int_768, %_local_end_to_int_769
  %_pot_address_in_parent_stack_772 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_cond1_773 = icmp ugt i8* %_ptr_bt_770, %_local_stack_end_ptr_
  %_cond2_1_774 = icmp ugt i8* %_ptr_bt_770, %_parent_stack_end_ptr_
  %_cond2_2_775 = icmp ult i8* %_ptr_bt_770, %_parent_stack_start_ptr_
  %_cond2_776 = or i1 %_cond2_1_774, %_cond2_2_775
  %_cond4_777 = icmp ule i8* %_pot_address_in_parent_stack_772, %_parent_stack_end_ptr_
  %_cond1_n_cond2_778 = and i1 %_cond1_773, %_cond2_776
  %_cond1_n_cond2_cond3_779 = and i1 %_cond1_n_cond2_778, %_cond4_777
  br i1 %_cond1_n_cond2_cond3_779, label %694, label %695

; <label>:694:                                    ; preds = %688
  %_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_address_in_parent_stack_bt_781 = bitcast i8* %_address_in_parent_stack_780 to i64*
  br label %695

; <label>:695:                                    ; preds = %688, %694
  %696 = phi i64* [ %_allin_new_bt_174, %688 ], [ %_address_in_parent_stack_bt_781, %694 ]
  %_new_load_782 = load i64, i64* %696
  store i64 %_new_load_782, i64* %RCX_val, !mcsema_real_eip !151
  %697 = shl nsw i64 %690, 2
  %698 = add i64 %_new_load_782, %697, !mcsema_real_eip !152
  %699 = inttoptr i64 %698 to i64*, !mcsema_real_eip !152
  %700 = bitcast i64* %699 to i32*
  %_ptr_to_int_783 = ptrtoint i32* %700 to i64
  %_local_end_to_int_784 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_785 = bitcast i32* %700 to i8*
  %_offset_above_rbp_786 = sub i64 %_ptr_to_int_783, %_local_end_to_int_784
  %_pot_address_in_parent_stack_787 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_786
  %_cond1_788 = icmp ugt i8* %_ptr_bt_785, %_local_stack_end_ptr_
  %_cond2_1_789 = icmp ugt i8* %_ptr_bt_785, %_parent_stack_end_ptr_
  %_cond2_2_790 = icmp ult i8* %_ptr_bt_785, %_parent_stack_start_ptr_
  %_cond2_791 = or i1 %_cond2_1_789, %_cond2_2_790
  %_cond4_792 = icmp ule i8* %_pot_address_in_parent_stack_787, %_parent_stack_end_ptr_
  %_cond1_n_cond2_793 = and i1 %_cond1_788, %_cond2_791
  %_cond1_n_cond2_cond3_794 = and i1 %_cond1_n_cond2_793, %_cond4_792
  br i1 %_cond1_n_cond2_cond3_794, label %701, label %702

; <label>:701:                                    ; preds = %695
  %_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_786
  %_address_in_parent_stack_bt_796 = bitcast i8* %_address_in_parent_stack_795 to i32*
  br label %702

; <label>:702:                                    ; preds = %695, %701
  %703 = phi i32* [ %700, %695 ], [ %_address_in_parent_stack_bt_796, %701 ]
  %_new_load_797 = load i32, i32* %703
  %704 = zext i32 %_new_load_797 to i64, !mcsema_real_eip !152
  store i64 %704, i64* %RDX_val, !mcsema_real_eip !152
  %_load_rbp_ptr_175 = load i8*, i8** %_RBP_ptr_
  %705 = load i64, i64* %RBP_val, !mcsema_real_eip !153
  %_new_gep_176 = getelementptr i8, i8* %_load_rbp_ptr_175, i64 -84
  %706 = add i64 %705, -84, !mcsema_real_eip !153
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  %707 = inttoptr i64 %706 to i64*, !mcsema_real_eip !153
  %708 = bitcast i64* %_allin_new_bt_177 to i32*
  %_ptr_to_int_798 = ptrtoint i32* %708 to i64
  %_local_end_to_int_799 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_800 = bitcast i32* %708 to i8*
  %_offset_above_rbp_801 = sub i64 %_ptr_to_int_798, %_local_end_to_int_799
  %_pot_address_in_parent_stack_802 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_801
  %_cond1_803 = icmp ugt i8* %_ptr_bt_800, %_local_stack_end_ptr_
  %_cond2_1_804 = icmp ugt i8* %_ptr_bt_800, %_parent_stack_end_ptr_
  %_cond2_2_805 = icmp ult i8* %_ptr_bt_800, %_parent_stack_start_ptr_
  %_cond2_806 = or i1 %_cond2_1_804, %_cond2_2_805
  %_cond4_807 = icmp ule i8* %_pot_address_in_parent_stack_802, %_parent_stack_end_ptr_
  %_cond1_n_cond2_808 = and i1 %_cond1_803, %_cond2_806
  %_cond1_n_cond2_cond3_809 = and i1 %_cond1_n_cond2_808, %_cond4_807
  br i1 %_cond1_n_cond2_cond3_809, label %709, label %710

; <label>:709:                                    ; preds = %702
  %_address_in_parent_stack_810 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_801
  %_address_in_parent_stack_bt_811 = bitcast i8* %_address_in_parent_stack_810 to i32*
  br label %710

; <label>:710:                                    ; preds = %702, %709
  %711 = phi i32* [ %708, %702 ], [ %_address_in_parent_stack_bt_811, %709 ]
  %_new_load_812 = load i32, i32* %711
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_797, i32 %_new_load_812)
  %712 = extractvalue { i32, i1 } %uadd83, 0
  %713 = xor i32 %712, %_new_load_812, !mcsema_real_eip !154
  %714 = xor i32 %713, %_new_load_797, !mcsema_real_eip !154
  %715 = and i32 %714, 16, !mcsema_real_eip !154
  %716 = icmp ne i32 %715, 0, !mcsema_real_eip !154
  store i1 %716, i1* %AF_val, !mcsema_real_eip !154
  %717 = icmp slt i32 %712, 0
  store i1 %717, i1* %SF_val, !mcsema_real_eip !154
  %718 = icmp eq i32 %712, 0, !mcsema_real_eip !154
  store i1 %718, i1* %ZF_val, !mcsema_real_eip !154
  %719 = xor i32 %_new_load_812, -2147483648, !mcsema_real_eip !154
  %720 = xor i32 %719, %_new_load_797, !mcsema_real_eip !154
  %721 = and i32 %713, %720, !mcsema_real_eip !154
  %722 = icmp slt i32 %721, 0
  store i1 %722, i1* %OF_val, !mcsema_real_eip !154
  %723 = trunc i32 %712 to i8, !mcsema_real_eip !154
  %724 = tail call i8 @llvm.ctpop.i8(i8 %723), !mcsema_real_eip !154
  %725 = and i8 %724, 1
  %726 = icmp eq i8 %725, 0
  store i1 %726, i1* %PF_val, !mcsema_real_eip !154
  %727 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %727, i1* %CF_val, !mcsema_real_eip !154
  %728 = zext i32 %712 to i64, !mcsema_real_eip !154
  store i64 %728, i64* %RSI_val, !mcsema_real_eip !154
  %_load_rbp_ptr_178 = load i8*, i8** %_RBP_ptr_
  %729 = load i64, i64* %RBP_val, !mcsema_real_eip !155
  %_new_gep_179 = getelementptr i8, i8* %_load_rbp_ptr_178, i64 -84
  %730 = add i64 %729, -84, !mcsema_real_eip !155
  %_allin_new_bt_180 = bitcast i8* %_new_gep_179 to i64*
  %731 = inttoptr i64 %730 to i64*, !mcsema_real_eip !155
  %732 = bitcast i64* %_allin_new_bt_180 to i32*
  store i32 %712, i32* %732, !mcsema_real_eip !155
  %_load_rbp_ptr_181 = load i8*, i8** %_RBP_ptr_
  %733 = load i64, i64* %RBP_val, !mcsema_real_eip !156
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -100
  %734 = add i64 %733, -100, !mcsema_real_eip !156
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %735 = inttoptr i64 %734 to i64*, !mcsema_real_eip !156
  %736 = bitcast i64* %_allin_new_bt_183 to i32*
  %_ptr_to_int_813 = ptrtoint i32* %736 to i64
  %_local_end_to_int_814 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_815 = bitcast i32* %736 to i8*
  %_offset_above_rbp_816 = sub i64 %_ptr_to_int_813, %_local_end_to_int_814
  %_pot_address_in_parent_stack_817 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_816
  %_cond1_818 = icmp ugt i8* %_ptr_bt_815, %_local_stack_end_ptr_
  %_cond2_1_819 = icmp ugt i8* %_ptr_bt_815, %_parent_stack_end_ptr_
  %_cond2_2_820 = icmp ult i8* %_ptr_bt_815, %_parent_stack_start_ptr_
  %_cond2_821 = or i1 %_cond2_1_819, %_cond2_2_820
  %_cond4_822 = icmp ule i8* %_pot_address_in_parent_stack_817, %_parent_stack_end_ptr_
  %_cond1_n_cond2_823 = and i1 %_cond1_818, %_cond2_821
  %_cond1_n_cond2_cond3_824 = and i1 %_cond1_n_cond2_823, %_cond4_822
  br i1 %_cond1_n_cond2_cond3_824, label %737, label %738

; <label>:737:                                    ; preds = %710
  %_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_816
  %_address_in_parent_stack_bt_826 = bitcast i8* %_address_in_parent_stack_825 to i32*
  br label %738

; <label>:738:                                    ; preds = %710, %737
  %739 = phi i32* [ %736, %710 ], [ %_address_in_parent_stack_bt_826, %737 ]
  %_new_load_827 = load i32, i32* %739
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_827, i32 1)
  %740 = extractvalue { i32, i1 } %uadd84, 0
  %741 = xor i32 %740, %_new_load_827, !mcsema_real_eip !157
  %742 = and i32 %741, 16, !mcsema_real_eip !157
  %743 = icmp ne i32 %742, 0, !mcsema_real_eip !157
  store i1 %743, i1* %AF_val, !mcsema_real_eip !157
  %744 = icmp slt i32 %740, 0
  store i1 %744, i1* %SF_val, !mcsema_real_eip !157
  %745 = icmp eq i32 %740, 0, !mcsema_real_eip !157
  store i1 %745, i1* %ZF_val, !mcsema_real_eip !157
  %746 = xor i32 %_new_load_827, -2147483648, !mcsema_real_eip !157
  %747 = and i32 %741, %746, !mcsema_real_eip !157
  %748 = icmp slt i32 %747, 0
  store i1 %748, i1* %OF_val, !mcsema_real_eip !157
  %749 = trunc i32 %740 to i8, !mcsema_real_eip !157
  %750 = tail call i8 @llvm.ctpop.i8(i8 %749), !mcsema_real_eip !157
  %751 = and i8 %750, 1
  %752 = icmp eq i8 %751, 0
  store i1 %752, i1* %PF_val, !mcsema_real_eip !157
  %753 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %753, i1* %CF_val, !mcsema_real_eip !157
  %754 = zext i32 %740 to i64, !mcsema_real_eip !157
  store i64 %754, i64* %RAX_val, !mcsema_real_eip !157
  %_load_rbp_ptr_184 = load i8*, i8** %_RBP_ptr_
  %755 = load i64, i64* %RBP_val, !mcsema_real_eip !158
  %_new_gep_185 = getelementptr i8, i8* %_load_rbp_ptr_184, i64 -100
  %756 = add i64 %755, -100, !mcsema_real_eip !158
  %_allin_new_bt_186 = bitcast i8* %_new_gep_185 to i64*
  %757 = inttoptr i64 %756 to i64*, !mcsema_real_eip !158
  %758 = bitcast i64* %_allin_new_bt_186 to i32*
  store i32 %740, i32* %758, !mcsema_real_eip !158
  br label %block_0x11f, !mcsema_real_eip !159

block_0x14e:                                      ; preds = %665
  %759 = phi i8* [ %_load_rbp_ptr_169, %665 ]
  %.lcssa = phi i64 [ %683, %665 ]
  %_new_gep_187 = getelementptr i8, i8* %759, i64 -84
  %760 = add i64 %.lcssa, -84, !mcsema_real_eip !149
  %_allin_new_bt_188 = bitcast i8* %_new_gep_187 to i64*
  %761 = inttoptr i64 %760 to i64*, !mcsema_real_eip !149
  %762 = bitcast i64* %_allin_new_bt_188 to i32*
  %_ptr_to_int_828 = ptrtoint i32* %762 to i64
  %_local_end_to_int_829 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_830 = bitcast i32* %762 to i8*
  %_offset_above_rbp_831 = sub i64 %_ptr_to_int_828, %_local_end_to_int_829
  %_pot_address_in_parent_stack_832 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_831
  %_cond1_833 = icmp ugt i8* %_ptr_bt_830, %_local_stack_end_ptr_
  %_cond2_1_834 = icmp ugt i8* %_ptr_bt_830, %_parent_stack_end_ptr_
  %_cond2_2_835 = icmp ult i8* %_ptr_bt_830, %_parent_stack_start_ptr_
  %_cond2_836 = or i1 %_cond2_1_834, %_cond2_2_835
  %_cond4_837 = icmp ule i8* %_pot_address_in_parent_stack_832, %_parent_stack_end_ptr_
  %_cond1_n_cond2_838 = and i1 %_cond1_833, %_cond2_836
  %_cond1_n_cond2_cond3_839 = and i1 %_cond1_n_cond2_838, %_cond4_837
  br i1 %_cond1_n_cond2_cond3_839, label %763, label %764

; <label>:763:                                    ; preds = %block_0x14e
  %_address_in_parent_stack_840 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_831
  %_address_in_parent_stack_bt_841 = bitcast i8* %_address_in_parent_stack_840 to i32*
  br label %764

; <label>:764:                                    ; preds = %block_0x14e, %763
  %765 = phi i32* [ %762, %block_0x14e ], [ %_address_in_parent_stack_bt_841, %763 ]
  %_new_load_842 = load i32, i32* %765
  %766 = zext i32 %_new_load_842 to i64, !mcsema_real_eip !149
  store i64 %766, i64* %RAX_val, !mcsema_real_eip !149
  %_load_rsp_ptr_189 = load i8*, i8** %_RSP_ptr_
  %767 = load i64, i64* %RSP_val, !mcsema_real_eip !160
  %_allin_new_bt_190 = bitcast i8* %_load_rsp_ptr_189 to i64*
  %768 = inttoptr i64 %767 to i64*, !mcsema_real_eip !160
  %_ptr_to_int_843 = ptrtoint i64* %_allin_new_bt_190 to i64
  %_local_end_to_int_844 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_845 = bitcast i64* %_allin_new_bt_190 to i8*
  %_offset_above_rbp_846 = sub i64 %_ptr_to_int_843, %_local_end_to_int_844
  %_pot_address_in_parent_stack_847 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_846
  %_cond1_848 = icmp ugt i8* %_ptr_bt_845, %_local_stack_end_ptr_
  %_cond2_1_849 = icmp ugt i8* %_ptr_bt_845, %_parent_stack_end_ptr_
  %_cond2_2_850 = icmp ult i8* %_ptr_bt_845, %_parent_stack_start_ptr_
  %_cond2_851 = or i1 %_cond2_1_849, %_cond2_2_850
  %_cond4_852 = icmp ule i8* %_pot_address_in_parent_stack_847, %_parent_stack_end_ptr_
  %_cond1_n_cond2_853 = and i1 %_cond1_848, %_cond2_851
  %_cond1_n_cond2_cond3_854 = and i1 %_cond1_n_cond2_853, %_cond4_852
  br i1 %_cond1_n_cond2_cond3_854, label %769, label %770

; <label>:769:                                    ; preds = %764
  %_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_846
  %_address_in_parent_stack_bt_856 = bitcast i8* %_address_in_parent_stack_855 to i64*
  br label %770

; <label>:770:                                    ; preds = %764, %769
  %771 = phi i64* [ %_allin_new_bt_190, %764 ], [ %_address_in_parent_stack_bt_856, %769 ]
  %_new_load_857 = load i64, i64* %771
  store i64 %_new_load_857, i64* %RBX_val, !mcsema_real_eip !160
  %_new_gep_191 = getelementptr i8, i8* %_load_rsp_ptr_189, i64 8
  %772 = add i64 %767, 8, !mcsema_real_eip !160
  store volatile i8* %_new_gep_191, i8** %_RSP_ptr_
  store i64 %772, i64* %RSP_val, !mcsema_real_eip !160
  %_allin_new_bt_192 = bitcast i8* %_new_gep_191 to i64*
  %773 = inttoptr i64 %772 to i64*, !mcsema_real_eip !161
  %_ptr_to_int_858 = ptrtoint i64* %_allin_new_bt_192 to i64
  %_local_end_to_int_859 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_860 = bitcast i64* %_allin_new_bt_192 to i8*
  %_offset_above_rbp_861 = sub i64 %_ptr_to_int_858, %_local_end_to_int_859
  %_pot_address_in_parent_stack_862 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_861
  %_cond1_863 = icmp ugt i8* %_ptr_bt_860, %_local_stack_end_ptr_
  %_cond2_1_864 = icmp ugt i8* %_ptr_bt_860, %_parent_stack_end_ptr_
  %_cond2_2_865 = icmp ult i8* %_ptr_bt_860, %_parent_stack_start_ptr_
  %_cond2_866 = or i1 %_cond2_1_864, %_cond2_2_865
  %_cond4_867 = icmp ule i8* %_pot_address_in_parent_stack_862, %_parent_stack_end_ptr_
  %_cond1_n_cond2_868 = and i1 %_cond1_863, %_cond2_866
  %_cond1_n_cond2_cond3_869 = and i1 %_cond1_n_cond2_868, %_cond4_867
  br i1 %_cond1_n_cond2_cond3_869, label %774, label %775

; <label>:774:                                    ; preds = %770
  %_address_in_parent_stack_870 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_861
  %_address_in_parent_stack_bt_871 = bitcast i8* %_address_in_parent_stack_870 to i64*
  br label %775

; <label>:775:                                    ; preds = %770, %774
  %776 = phi i64* [ %_allin_new_bt_192, %770 ], [ %_address_in_parent_stack_bt_871, %774 ]
  %_new_load_872 = load i64, i64* %776
  %_new_int2ptr_ = inttoptr i64 %_new_load_872 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_872, i64* %RBP_val, !mcsema_real_eip !161
  %_new_gep_193 = getelementptr i8, i8* %_load_rsp_ptr_189, i64 24
  %777 = add i64 %767, 24, !mcsema_real_eip !162
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_
  store i64 %777, i64* %RSP_val, !mcsema_real_eip !162
  %778 = load i64, i64* %RAX_val, !mcsema_real_eip !162
  store i64 %778, i64* %RAX, !mcsema_real_eip !162
  %779 = load i64, i64* %RBX_val, !mcsema_real_eip !162
  store i64 %779, i64* %RBX, !mcsema_real_eip !162
  %780 = load i64, i64* %RCX_val, !mcsema_real_eip !162
  store i64 %780, i64* %RCX, !mcsema_real_eip !162
  %781 = load i64, i64* %RDX_val, !mcsema_real_eip !162
  store i64 %781, i64* %RDX, !mcsema_real_eip !162
  %782 = load i64, i64* %RSI_val, !mcsema_real_eip !162
  store i64 %782, i64* %RSI, !mcsema_real_eip !162
  %783 = load i64, i64* %RDI_val, !mcsema_real_eip !162
  store i64 %783, i64* %RDI, !mcsema_real_eip !162
  %_load_rsp_ptr_194 = load i8*, i8** %_RSP_ptr_
  %784 = load i64, i64* %RSP_val, !mcsema_real_eip !162
  %_new_ptr2int_195 = ptrtoint i8* %_load_rsp_ptr_194 to i64
  store volatile i64 %_new_ptr2int_195, i64* %RSP
  %_load_rbp_ptr_196 = load i8*, i8** %_RBP_ptr_
  %785 = load i64, i64* %RBP_val, !mcsema_real_eip !162
  %_new_ptr2int_197 = ptrtoint i8* %_load_rbp_ptr_196 to i64
  store volatile i64 %_new_ptr2int_197, i64* %RBP
  %786 = load i64, i64* %R8_val, !mcsema_real_eip !162
  store i64 %786, i64* %R8, !mcsema_real_eip !162
  %787 = load i64, i64* %R9_val, !mcsema_real_eip !162
  store i64 %787, i64* %R9, !mcsema_real_eip !162
  %788 = load i64, i64* %R10_val, !mcsema_real_eip !162
  store i64 %788, i64* %R10, !mcsema_real_eip !162
  %789 = load i64, i64* %R11_val, !mcsema_real_eip !162
  store i64 %789, i64* %R11, !mcsema_real_eip !162
  %790 = load i64, i64* %R12_val, !mcsema_real_eip !162
  store i64 %790, i64* %R12, !mcsema_real_eip !162
  %791 = load i64, i64* %R13_val, !mcsema_real_eip !162
  store i64 %791, i64* %R13, !mcsema_real_eip !162
  %792 = load i64, i64* %R14_val, !mcsema_real_eip !162
  store i64 %792, i64* %R14, !mcsema_real_eip !162
  %793 = load i64, i64* %R15_val, !mcsema_real_eip !162
  store i64 %793, i64* %R15, !mcsema_real_eip !162
  %794 = load i64, i64* %RIP_val, !mcsema_real_eip !162
  store i64 %794, i64* %RIP, !mcsema_real_eip !162
  %795 = load i1, i1* %CF_val, !mcsema_real_eip !162
  store i1 %795, i1* %CF, align 1, !mcsema_real_eip !162
  %796 = load i1, i1* %PF_val, !mcsema_real_eip !162
  store i1 %796, i1* %PF, align 1, !mcsema_real_eip !162
  %797 = load i1, i1* %AF_val, !mcsema_real_eip !162
  store i1 %797, i1* %AF, align 1, !mcsema_real_eip !162
  %798 = load i1, i1* %ZF_val, !mcsema_real_eip !162
  store i1 %798, i1* %ZF, align 1, !mcsema_real_eip !162
  %799 = load i1, i1* %SF_val, !mcsema_real_eip !162
  store i1 %799, i1* %SF, align 1, !mcsema_real_eip !162
  %800 = load i1, i1* %OF_val, !mcsema_real_eip !162
  store i1 %800, i1* %OF, align 1, !mcsema_real_eip !162
  %801 = load i1, i1* %DF_val, !mcsema_real_eip !162
  store i1 %801, i1* %DF, align 1, !mcsema_real_eip !162
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !162
  %802 = load i1, i1* %FPU_B_val, !mcsema_real_eip !162
  store i1 %802, i1* %FPU_B, align 1, !mcsema_real_eip !162
  %803 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !162
  store i1 %803, i1* %FPU_C3, align 1, !mcsema_real_eip !162
  %804 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !162
  store i3 %804, i3* %FPU_TOP, align 1, !mcsema_real_eip !162
  %805 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !162
  store i1 %805, i1* %FPU_C2, align 1, !mcsema_real_eip !162
  %806 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !162
  store i1 %806, i1* %FPU_C1, align 1, !mcsema_real_eip !162
  %807 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !162
  store i1 %807, i1* %FPU_C0, align 1, !mcsema_real_eip !162
  %808 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !162
  store i1 %808, i1* %FPU_ES, align 1, !mcsema_real_eip !162
  %809 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !162
  store i1 %809, i1* %FPU_SF, align 1, !mcsema_real_eip !162
  %810 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !162
  store i1 %810, i1* %FPU_PE, align 1, !mcsema_real_eip !162
  %811 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !162
  store i1 %811, i1* %FPU_UE, align 1, !mcsema_real_eip !162
  %812 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !162
  store i1 %812, i1* %FPU_OE, align 1, !mcsema_real_eip !162
  %813 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !162
  store i1 %813, i1* %FPU_ZE, align 1, !mcsema_real_eip !162
  %814 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !162
  store i1 %814, i1* %FPU_DE, align 1, !mcsema_real_eip !162
  %815 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !162
  store i1 %815, i1* %FPU_IE, align 1, !mcsema_real_eip !162
  %816 = load i1, i1* %FPU_X_val, !mcsema_real_eip !162
  store i1 %816, i1* %FPU_X, align 1, !mcsema_real_eip !162
  %817 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !162
  store i2 %817, i2* %FPU_RC, align 1, !mcsema_real_eip !162
  %818 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !162
  store i2 %818, i2* %FPU_PC, align 1, !mcsema_real_eip !162
  %819 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !162
  store i1 %819, i1* %FPU_PM, align 1, !mcsema_real_eip !162
  %820 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !162
  store i1 %820, i1* %FPU_UM, align 1, !mcsema_real_eip !162
  %821 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !162
  store i1 %821, i1* %FPU_OM, align 1, !mcsema_real_eip !162
  %822 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !162
  store i1 %822, i1* %FPU_ZM, align 1, !mcsema_real_eip !162
  %823 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !162
  store i1 %823, i1* %FPU_DM, align 1, !mcsema_real_eip !162
  %824 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !162
  store i1 %824, i1* %FPU_IM, align 1, !mcsema_real_eip !162
  %_ptr_to_int_873 = ptrtoint i64* %53 to i64
  %_local_end_to_int_874 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_875 = bitcast i64* %53 to i8*
  %_offset_above_rbp_876 = sub i64 %_ptr_to_int_873, %_local_end_to_int_874
  %_pot_address_in_parent_stack_877 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_876
  %_cond1_878 = icmp ugt i8* %_ptr_bt_875, %_local_stack_end_ptr_
  %_cond2_1_879 = icmp ugt i8* %_ptr_bt_875, %_parent_stack_end_ptr_
  %_cond2_2_880 = icmp ult i8* %_ptr_bt_875, %_parent_stack_start_ptr_
  %_cond2_881 = or i1 %_cond2_1_879, %_cond2_2_880
  %_cond4_882 = icmp ule i8* %_pot_address_in_parent_stack_877, %_parent_stack_end_ptr_
  %_cond1_n_cond2_883 = and i1 %_cond1_878, %_cond2_881
  %_cond1_n_cond2_cond3_884 = and i1 %_cond1_n_cond2_883, %_cond4_882
  br i1 %_cond1_n_cond2_cond3_884, label %825, label %826

; <label>:825:                                    ; preds = %775
  %_address_in_parent_stack_885 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_876
  %_address_in_parent_stack_bt_886 = bitcast i8* %_address_in_parent_stack_885 to i64*
  br label %826

; <label>:826:                                    ; preds = %775, %825
  %827 = phi i64* [ %53, %775 ], [ %_address_in_parent_stack_bt_886, %825 ]
  %_new_load_887 = load i64, i64* %827
  store i64 %_new_load_887, i64* %52, align 4
  %828 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !162
  store i16 %828, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !162
  %829 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !162
  store i64 %829, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !162
  %830 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !162
  store i16 %830, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !162
  %831 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !162
  store i64 %831, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !162
  %832 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !162
  store i11 %832, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !162
  %833 = load i128, i128* %XMM0_val, !mcsema_real_eip !162
  store i128 %833, i128* %XMM0, align 1, !mcsema_real_eip !162
  %834 = load i128, i128* %XMM1_val, !mcsema_real_eip !162
  store i128 %834, i128* %XMM1, align 1, !mcsema_real_eip !162
  %835 = load i128, i128* %XMM2_val, !mcsema_real_eip !162
  store i128 %835, i128* %XMM2, align 1, !mcsema_real_eip !162
  %836 = load i128, i128* %XMM3_val, !mcsema_real_eip !162
  store i128 %836, i128* %XMM3, align 1, !mcsema_real_eip !162
  %837 = load i128, i128* %XMM4_val, !mcsema_real_eip !162
  store i128 %837, i128* %XMM4, align 1, !mcsema_real_eip !162
  %838 = load i128, i128* %XMM5_val, !mcsema_real_eip !162
  store i128 %838, i128* %XMM5, align 1, !mcsema_real_eip !162
  %839 = load i128, i128* %XMM6_val, !mcsema_real_eip !162
  store i128 %839, i128* %XMM6, align 1, !mcsema_real_eip !162
  %840 = load i128, i128* %XMM7_val, !mcsema_real_eip !162
  store i128 %840, i128* %XMM7, align 1, !mcsema_real_eip !162
  %841 = load i128, i128* %XMM8_val, !mcsema_real_eip !162
  store i128 %841, i128* %XMM8, align 1, !mcsema_real_eip !162
  %842 = load i128, i128* %XMM9_val, !mcsema_real_eip !162
  store i128 %842, i128* %XMM9, align 1, !mcsema_real_eip !162
  %843 = load i128, i128* %XMM10_val, !mcsema_real_eip !162
  store i128 %843, i128* %XMM10, align 1, !mcsema_real_eip !162
  %844 = load i128, i128* %XMM11_val, !mcsema_real_eip !162
  store i128 %844, i128* %XMM11, align 1, !mcsema_real_eip !162
  %845 = load i128, i128* %XMM12_val, !mcsema_real_eip !162
  store i128 %845, i128* %XMM12, align 1, !mcsema_real_eip !162
  %846 = load i128, i128* %XMM13_val, !mcsema_real_eip !162
  store i128 %846, i128* %XMM13, align 1, !mcsema_real_eip !162
  %847 = load i128, i128* %XMM14_val, !mcsema_real_eip !162
  store i128 %847, i128* %XMM14, align 1, !mcsema_real_eip !162
  %848 = load i128, i128* %XMM15_val, !mcsema_real_eip !162
  store i128 %848, i128* %XMM15, align 1, !mcsema_real_eip !162
  %849 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !162
  store i64 %849, i64* %STACK_BASE, align 1, !mcsema_real_eip !162
  %850 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !162
  store i64 %850, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !162
  ret void, !mcsema_real_eip !162
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 352}
!3 = !{i64 353}
!4 = !{i64 356}
!5 = !{i64 358}
!6 = !{i64 359}
!7 = !{i64 366}
!8 = !{i64 373}
!9 = !{i64 380}
!10 = !{i64 387}
!11 = !{i64 394}
!12 = !{i64 400}
!13 = !{i64 403}
!14 = !{i64 408}
!15 = !{i64 412}
!16 = !{i64 416}
!17 = !{i64 419}
!18 = !{i64 424}
!19 = !{i64 427}
!20 = !{i64 432}
!21 = !{i64 442}
!22 = !{i64 446}
!23 = !{i64 450}
!24 = !{i64 455}
!25 = !{i64 459}
!26 = !{i64 466}
!27 = !{i64 473}
!28 = !{i64 479}
!29 = !{i64 482}
!30 = !{i64 487}
!31 = !{i64 491}
!32 = !{i64 495}
!33 = !{i64 498}
!34 = !{i64 501}
!35 = !{i64 506}
!36 = !{i64 509}
!37 = !{i64 514}
!38 = !{i64 519}
!39 = !{i64 523}
!40 = !{i64 526}
!41 = !{i64 530}
!42 = !{i64 534}
!43 = !{i64 538}
!44 = !{i64 542}
!45 = !{i64 546}
!46 = !{i64 550}
!47 = !{i64 553}
!48 = !{i64 557}
!49 = !{i64 561}
!50 = !{i64 564}
!51 = !{i64 568}
!52 = !{i64 571}
!53 = !{i64 575}
!54 = !{i64 578}
!55 = !{i64 581}
!56 = !{i64 584}
!57 = !{i64 588}
!58 = !{i64 593}
!59 = !{i64 597}
!60 = !{i64 602}
!61 = !{i64 607}
!62 = !{i64 612}
!63 = !{i64 619}
!64 = !{i64 620}
!65 = !{i64 622}
!66 = !{i64 623}
!67 = !{i64 0}
!68 = !{i64 1}
!69 = !{i64 4}
!70 = !{i64 5}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 20}
!75 = !{i64 23}
!76 = !{i64 27}
!77 = !{i64 31}
!78 = !{i64 35}
!79 = !{i64 39}
!80 = !{i64 43}
!81 = !{i64 46}
!82 = !{i64 50}
!83 = !{i64 54}
!84 = !{i64 58}
!85 = !{i64 65}
!86 = !{i64 68}
!87 = !{i64 72}
!88 = !{i64 75}
!89 = !{i64 79}
!90 = !{i64 86}
!91 = !{i64 89}
!92 = !{i64 92}
!93 = !{i64 133}
!94 = !{i64 98}
!95 = !{i64 102}
!96 = !{i64 106}
!97 = !{i64 109}
!98 = !{i64 112}
!99 = !{i64 114}
!100 = !{i64 117}
!101 = !{i64 120}
!102 = !{i64 125}
!103 = !{i64 128}
!104 = !{i64 137}
!105 = !{i64 139}
!106 = !{i64 142}
!107 = !{i64 144}
!108 = !{i64 147}
!109 = !{i64 154}
!110 = !{i64 157}
!111 = !{i64 160}
!112 = !{i64 201}
!113 = !{i64 166}
!114 = !{i64 170}
!115 = !{i64 174}
!116 = !{i64 177}
!117 = !{i64 180}
!118 = !{i64 182}
!119 = !{i64 185}
!120 = !{i64 188}
!121 = !{i64 193}
!122 = !{i64 196}
!123 = !{i64 204}
!124 = !{i64 207}
!125 = !{i64 209}
!126 = !{i64 212}
!127 = !{i64 219}
!128 = !{i64 222}
!129 = !{i64 225}
!130 = !{i64 266}
!131 = !{i64 231}
!132 = !{i64 235}
!133 = !{i64 239}
!134 = !{i64 242}
!135 = !{i64 245}
!136 = !{i64 247}
!137 = !{i64 250}
!138 = !{i64 253}
!139 = !{i64 258}
!140 = !{i64 261}
!141 = !{i64 270}
!142 = !{i64 272}
!143 = !{i64 275}
!144 = !{i64 277}
!145 = !{i64 280}
!146 = !{i64 287}
!147 = !{i64 290}
!148 = !{i64 293}
!149 = !{i64 334}
!150 = !{i64 299}
!151 = !{i64 303}
!152 = !{i64 307}
!153 = !{i64 310}
!154 = !{i64 313}
!155 = !{i64 315}
!156 = !{i64 318}
!157 = !{i64 321}
!158 = !{i64 326}
!159 = !{i64 329}
!160 = !{i64 337}
!161 = !{i64 338}
!162 = !{i64 339}
