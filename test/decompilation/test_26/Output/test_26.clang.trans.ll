; ModuleID = 'Output/test_26.clang.trans.bc'
source_filename = "Output/test_26.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_110(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -136
  %82 = add i64 %79, -136
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 128
  %92 = icmp ult i64 %80, 128, !mcsema_real_eip !4
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
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !17
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -8
  %131 = add i64 %127, -8, !mcsema_real_eip !18
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !18
  %133 = bitcast i64* %_allin_new_bt_32 to i32*
  %134 = load i32, i32* %133, !mcsema_real_eip !18
  %135 = zext i32 %134 to i64, !mcsema_real_eip !18
  store i64 %135, i64* %RCX_val, !mcsema_real_eip !18
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -48
  %137 = add i64 %136, -48, !mcsema_real_eip !19
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !19
  %139 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %134, i32* %139, !mcsema_real_eip !19
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -16
  %141 = add i64 %140, -16, !mcsema_real_eip !20
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !20
  %143 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !20
  store i64 %143, i64* %RDI_val, !mcsema_real_eip !20
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -56
  %144 = add i64 %140, -56, !mcsema_real_eip !21
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !21
  store i64 %143, i64* %_allin_new_bt_40, !mcsema_real_eip !21
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %147 = add i64 %146, -56, !mcsema_real_eip !22
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !22
  %149 = load i64, i64* %_allin_new_bt_43, !mcsema_real_eip !22
  store i64 %149, i64* %RDI_val, !mcsema_real_eip !22
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -48
  %150 = add i64 %146, -48, !mcsema_real_eip !23
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !23
  %152 = bitcast i64* %_allin_new_bt_45 to i32*
  %153 = load i32, i32* %152, !mcsema_real_eip !23
  %154 = zext i32 %153 to i64, !mcsema_real_eip !23
  store i64 %154, i64* %RSI_val, !mcsema_real_eip !23
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -8
  %156 = add i64 %155, -8, !mcsema_real_eip !24
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !24
  %158 = bitcast i64* %_allin_new_bt_48 to i32*
  %159 = load i32, i32* %158, !mcsema_real_eip !24
  %160 = zext i32 %159 to i64, !mcsema_real_eip !24
  store i64 %160, i64* %RCX_val, !mcsema_real_eip !24
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %161 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %_new_ptr2int_50 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  store volatile i64 %_new_ptr2int_50, i64* %RDX_val
  %_new_gep_51 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 16
  %162 = add i64 %161, 16, !mcsema_real_eip !26
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !26
  %164 = bitcast i64* %_allin_new_bt_52 to i32*
  store i32 %159, i32* %164, !mcsema_real_eip !26
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %165 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -16
  %166 = add i64 %165, -16, !mcsema_real_eip !27
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !27
  %168 = load i64, i64* %_allin_new_bt_55, !mcsema_real_eip !27
  %169 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %170 = add i64 %169, 8, !mcsema_real_eip !28
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !28
  store i64 %168, i64* %171, !mcsema_real_eip !28
  %172 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %173 = add i64 %172, 32, !mcsema_real_eip !29
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !29
  %175 = load i64, i64* %RAX_val, !mcsema_real_eip !29
  store i64 %175, i64* %174, !mcsema_real_eip !29
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -16
  %177 = add i64 %176, -16, !mcsema_real_eip !30
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !30
  %179 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !30
  store i64 %179, i64* %R8_val, !mcsema_real_eip !30
  %180 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  %181 = add i64 %180, 24, !mcsema_real_eip !31
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !31
  store i64 %179, i64* %182, !mcsema_real_eip !31
  %183 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !32
  %185 = bitcast i64* %184 to i32*
  store i32 3, i32* %185, !mcsema_real_eip !32
  store i64 1, i64* %RCX_val, !mcsema_real_eip !33
  store i64 2, i64* %R9_val, !mcsema_real_eip !34
  %186 = load i64, i64* %R8_val, !mcsema_real_eip !35
  store i64 %186, i64* %RDX_val, !mcsema_real_eip !35
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -76
  %188 = add i64 %187, -76, !mcsema_real_eip !36
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !36
  %190 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %191 = trunc i64 %190 to i32, !mcsema_real_eip !36
  %192 = bitcast i64* %_allin_new_bt_61 to i32*
  store i32 %191, i32* %192, !mcsema_real_eip !36
  %193 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %193, i64* %RCX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -76
  %195 = add i64 %194, -76, !mcsema_real_eip !38
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !38
  %197 = bitcast i64* %_allin_new_bt_64 to i32*
  %198 = load i32, i32* %197, !mcsema_real_eip !38
  %199 = zext i32 %198 to i64, !mcsema_real_eip !38
  store i64 %199, i64* %R8_val, !mcsema_real_eip !38
  %_load_rsp_ptr_65 = load i8*, i8** %_RSP_ptr_
  %200 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %_new_gep_66 = getelementptr i8, i8* %_load_rsp_ptr_65, i64 -8
  %201 = add i64 %200, -8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %_allin_new_bt_67, !mcsema_real_eip !39
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %201, i64* %RSP_val, !mcsema_real_eip !39
  %203 = load i64, i64* %RAX_val, !mcsema_real_eip !39
  store i64 %203, i64* %RAX, !mcsema_real_eip !39
  %204 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %204, i64* %RBX, !mcsema_real_eip !39
  %205 = load i64, i64* %RCX_val, !mcsema_real_eip !39
  store i64 %205, i64* %RCX, !mcsema_real_eip !39
  %206 = load i64, i64* %RDX_val, !mcsema_real_eip !39
  store i64 %206, i64* %RDX, !mcsema_real_eip !39
  %207 = load i64, i64* %RSI_val, !mcsema_real_eip !39
  store i64 %207, i64* %RSI, !mcsema_real_eip !39
  %208 = load i64, i64* %RDI_val, !mcsema_real_eip !39
  store i64 %208, i64* %RDI, !mcsema_real_eip !39
  %_load_rsp_ptr_68 = load i8*, i8** %_RSP_ptr_
  %209 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %_new_ptr2int_69 = ptrtoint i8* %_load_rsp_ptr_68 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RSP
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_ptr2int_71 = ptrtoint i8* %_load_rbp_ptr_70 to i64
  store volatile i64 %_new_ptr2int_71, i64* %RBP
  %211 = load i64, i64* %R8_val, !mcsema_real_eip !39
  store i64 %211, i64* %R8, !mcsema_real_eip !39
  %212 = load i64, i64* %R9_val, !mcsema_real_eip !39
  store i64 %212, i64* %R9, !mcsema_real_eip !39
  %213 = load i64, i64* %R10_val, !mcsema_real_eip !39
  store i64 %213, i64* %R10, !mcsema_real_eip !39
  %214 = load i64, i64* %R11_val, !mcsema_real_eip !39
  store i64 %214, i64* %R11, !mcsema_real_eip !39
  %215 = load i64, i64* %R12_val, !mcsema_real_eip !39
  store i64 %215, i64* %R12, !mcsema_real_eip !39
  %216 = load i64, i64* %R13_val, !mcsema_real_eip !39
  store i64 %216, i64* %R13, !mcsema_real_eip !39
  %217 = load i64, i64* %R14_val, !mcsema_real_eip !39
  store i64 %217, i64* %R14, !mcsema_real_eip !39
  %218 = load i64, i64* %R15_val, !mcsema_real_eip !39
  store i64 %218, i64* %R15, !mcsema_real_eip !39
  %219 = load i64, i64* %RIP_val, !mcsema_real_eip !39
  store i64 %219, i64* %RIP, !mcsema_real_eip !39
  %220 = load i1, i1* %CF_val, !mcsema_real_eip !39
  store i1 %220, i1* %CF, align 1, !mcsema_real_eip !39
  %221 = load i1, i1* %PF_val, !mcsema_real_eip !39
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !39
  %222 = load i1, i1* %AF_val, !mcsema_real_eip !39
  store i1 %222, i1* %AF, align 1, !mcsema_real_eip !39
  %223 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  store i1 %223, i1* %ZF, align 1, !mcsema_real_eip !39
  %224 = load i1, i1* %SF_val, !mcsema_real_eip !39
  store i1 %224, i1* %SF, align 1, !mcsema_real_eip !39
  %225 = load i1, i1* %OF_val, !mcsema_real_eip !39
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !39
  %226 = load i1, i1* %DF_val, !mcsema_real_eip !39
  store i1 %226, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %227 = load i1, i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %227, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %228 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %228, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %229 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %229, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %230 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %230, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %231 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %231, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %232 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %232, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %233 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %233, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %234 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %234, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %235 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %235, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %236 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %236, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %237 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %237, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %238 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %238, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %239 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %239, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %240 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %240, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %241 = load i1, i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %241, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %242 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %242, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %243 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %243, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %244 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %244, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %245 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %245, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %246 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %246, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %247 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %247, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %248 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %248, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %249 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %249, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %250 = load i64, i64* %53, align 4
  store i64 %250, i64* %52, align 4
  %251 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %251, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %252 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %252, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %253 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %253, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %254 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %254, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %255 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !39
  store i11 %255, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !39
  %256 = load i128, i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %256, i128* %XMM0, align 1, !mcsema_real_eip !39
  %257 = load i128, i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %257, i128* %XMM1, align 1, !mcsema_real_eip !39
  %258 = load i128, i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %258, i128* %XMM2, align 1, !mcsema_real_eip !39
  %259 = load i128, i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %259, i128* %XMM3, align 1, !mcsema_real_eip !39
  %260 = load i128, i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %260, i128* %XMM4, align 1, !mcsema_real_eip !39
  %261 = load i128, i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %261, i128* %XMM5, align 1, !mcsema_real_eip !39
  %262 = load i128, i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %262, i128* %XMM6, align 1, !mcsema_real_eip !39
  %263 = load i128, i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %263, i128* %XMM7, align 1, !mcsema_real_eip !39
  %264 = load i128, i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %264, i128* %XMM8, align 1, !mcsema_real_eip !39
  %265 = load i128, i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %265, i128* %XMM9, align 1, !mcsema_real_eip !39
  %266 = load i128, i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %266, i128* %XMM10, align 1, !mcsema_real_eip !39
  %267 = load i128, i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %267, i128* %XMM11, align 1, !mcsema_real_eip !39
  %268 = load i128, i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %268, i128* %XMM12, align 1, !mcsema_real_eip !39
  %269 = load i128, i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %269, i128* %XMM13, align 1, !mcsema_real_eip !39
  %270 = load i128, i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %270, i128* %XMM14, align 1, !mcsema_real_eip !39
  %271 = load i128, i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %271, i128* %XMM15, align 1, !mcsema_real_eip !39
  %272 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %272, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %273 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %273, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  %_load_rbp_ptr_106 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_106)
  %274 = load i64, i64* %RAX, !mcsema_real_eip !39
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !39
  %275 = load i64, i64* %RBX, !mcsema_real_eip !39
  store i64 %275, i64* %RBX_val, !mcsema_real_eip !39
  %276 = load i64, i64* %RCX, !mcsema_real_eip !39
  store i64 %276, i64* %RCX_val, !mcsema_real_eip !39
  %277 = load i64, i64* %RDX, !mcsema_real_eip !39
  store i64 %277, i64* %RDX_val, !mcsema_real_eip !39
  %278 = load i64, i64* %RSI, !mcsema_real_eip !39
  store i64 %278, i64* %RSI_val, !mcsema_real_eip !39
  %279 = load i64, i64* %RDI, !mcsema_real_eip !39
  store i64 %279, i64* %RDI_val, !mcsema_real_eip !39
  %280 = load i64, i64* %RSP, !mcsema_real_eip !39
  store i64 %280, i64* %RSP_val, !mcsema_real_eip !39
  %281 = load i64, i64* %RBP, !mcsema_real_eip !39
  store i64 %281, i64* %RBP_val, !mcsema_real_eip !39
  %282 = load i64, i64* %R8, !mcsema_real_eip !39
  store i64 %282, i64* %R8_val, !mcsema_real_eip !39
  %283 = load i64, i64* %R9, !mcsema_real_eip !39
  store i64 %283, i64* %R9_val, !mcsema_real_eip !39
  %284 = load i64, i64* %R10, !mcsema_real_eip !39
  store i64 %284, i64* %R10_val, !mcsema_real_eip !39
  %285 = load i64, i64* %R11, !mcsema_real_eip !39
  store i64 %285, i64* %R11_val, !mcsema_real_eip !39
  %286 = load i64, i64* %R12, !mcsema_real_eip !39
  store i64 %286, i64* %R12_val, !mcsema_real_eip !39
  %287 = load i64, i64* %R13, !mcsema_real_eip !39
  store i64 %287, i64* %R13_val, !mcsema_real_eip !39
  %288 = load i64, i64* %R14, !mcsema_real_eip !39
  store i64 %288, i64* %R14_val, !mcsema_real_eip !39
  %289 = load i64, i64* %R15, !mcsema_real_eip !39
  store i64 %289, i64* %R15_val, !mcsema_real_eip !39
  %290 = load i64, i64* %RIP, !mcsema_real_eip !39
  store i64 %290, i64* %RIP_val, !mcsema_real_eip !39
  %291 = load i1, i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %291, i1* %CF_val, !mcsema_real_eip !39
  %292 = load i1, i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %292, i1* %PF_val, !mcsema_real_eip !39
  %293 = load i1, i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %293, i1* %AF_val, !mcsema_real_eip !39
  %294 = load i1, i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %294, i1* %ZF_val, !mcsema_real_eip !39
  %295 = load i1, i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %295, i1* %SF_val, !mcsema_real_eip !39
  %296 = load i1, i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %296, i1* %OF_val, !mcsema_real_eip !39
  %297 = load i1, i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %297, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %298 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %298, i1* %FPU_B_val, !mcsema_real_eip !39
  %299 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %299, i1* %FPU_C3_val, !mcsema_real_eip !39
  %300 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %300, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %301 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %301, i1* %FPU_C2_val, !mcsema_real_eip !39
  %302 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %302, i1* %FPU_C1_val, !mcsema_real_eip !39
  %303 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %303, i1* %FPU_C0_val, !mcsema_real_eip !39
  %304 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %304, i1* %FPU_ES_val, !mcsema_real_eip !39
  %305 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %305, i1* %FPU_SF_val, !mcsema_real_eip !39
  %306 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %306, i1* %FPU_PE_val, !mcsema_real_eip !39
  %307 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %307, i1* %FPU_UE_val, !mcsema_real_eip !39
  %308 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %308, i1* %FPU_OE_val, !mcsema_real_eip !39
  %309 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %309, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %310 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %310, i1* %FPU_DE_val, !mcsema_real_eip !39
  %311 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %311, i1* %FPU_IE_val, !mcsema_real_eip !39
  %312 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %312, i1* %FPU_X_val, !mcsema_real_eip !39
  %313 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %313, i2* %FPU_RC_val, !mcsema_real_eip !39
  %314 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %314, i2* %FPU_PC_val, !mcsema_real_eip !39
  %315 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %315, i1* %FPU_PM_val, !mcsema_real_eip !39
  %316 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %316, i1* %FPU_UM_val, !mcsema_real_eip !39
  %317 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %317, i1* %FPU_OM_val, !mcsema_real_eip !39
  %318 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %318, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %319 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %319, i1* %FPU_DM_val, !mcsema_real_eip !39
  %320 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %320, i1* %FPU_IM_val, !mcsema_real_eip !39
  %321 = load i64, i64* %52, align 4
  store i64 %321, i64* %53, align 4
  %322 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %322, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %323 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %323, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %324 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %324, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %325 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %325, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %326 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !39
  store i11 %326, i11* %FPU_FOPCODE_val, !mcsema_real_eip !39
  %327 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %327, i128* %XMM0_val, !mcsema_real_eip !39
  %328 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %328, i128* %XMM1_val, !mcsema_real_eip !39
  %329 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %329, i128* %XMM2_val, !mcsema_real_eip !39
  %330 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %330, i128* %XMM3_val, !mcsema_real_eip !39
  %331 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %331, i128* %XMM4_val, !mcsema_real_eip !39
  %332 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %332, i128* %XMM5_val, !mcsema_real_eip !39
  %333 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %333, i128* %XMM6_val, !mcsema_real_eip !39
  %334 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %334, i128* %XMM7_val, !mcsema_real_eip !39
  %335 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %335, i128* %XMM8_val, !mcsema_real_eip !39
  %336 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %336, i128* %XMM9_val, !mcsema_real_eip !39
  %337 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %337, i128* %XMM10_val, !mcsema_real_eip !39
  %338 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %338, i128* %XMM11_val, !mcsema_real_eip !39
  %339 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %339, i128* %XMM12_val, !mcsema_real_eip !39
  %340 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %340, i128* %XMM13_val, !mcsema_real_eip !39
  %341 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %341, i128* %XMM14_val, !mcsema_real_eip !39
  %342 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %342, i128* %XMM15_val, !mcsema_real_eip !39
  %343 = load i64, i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %343, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %344 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %344, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -64
  %346 = add i64 %345, -64, !mcsema_real_eip !40
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !40
  %348 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  %349 = trunc i64 %348 to i32, !mcsema_real_eip !40
  %350 = bitcast i64* %_allin_new_bt_74 to i32*
  store i32 %349, i32* %350, !mcsema_real_eip !40
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -72
  %352 = add i64 %351, -72, !mcsema_real_eip !41
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !41
  %354 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %354, i64* %_allin_new_bt_77, !mcsema_real_eip !41
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -72
  %356 = add i64 %355, -72, !mcsema_real_eip !42
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !42
  %358 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !42
  store i64 %358, i64* %RAX_val, !mcsema_real_eip !42
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -40
  %359 = add i64 %355, -40, !mcsema_real_eip !43
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !43
  store i64 %358, i64* %_allin_new_bt_82, !mcsema_real_eip !43
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %361 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -64
  %362 = add i64 %361, -64, !mcsema_real_eip !44
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !44
  %364 = bitcast i64* %_allin_new_bt_85 to i32*
  %365 = load i32, i32* %364, !mcsema_real_eip !44
  %366 = zext i32 %365 to i64, !mcsema_real_eip !44
  store i64 %366, i64* %RDX_val, !mcsema_real_eip !44
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %367 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -32
  %368 = add i64 %367, -32, !mcsema_real_eip !45
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !45
  %370 = bitcast i64* %_allin_new_bt_88 to i32*
  store i32 %365, i32* %370, !mcsema_real_eip !45
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -40
  %372 = add i64 %371, -40, !mcsema_real_eip !46
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !46
  %374 = bitcast i64* %_allin_new_bt_91 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !46
  %376 = zext i32 %375 to i64, !mcsema_real_eip !46
  store i64 %376, i64* %RDX_val, !mcsema_real_eip !46
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -36
  %378 = add i64 %377, -36, !mcsema_real_eip !47
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !47
  %380 = bitcast i64* %_allin_new_bt_94 to i32*
  %381 = load i32, i32* %380, !mcsema_real_eip !47
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %375, i32 %381)
  %382 = extractvalue { i32, i1 } %uadd, 0
  %383 = xor i32 %382, %381, !mcsema_real_eip !47
  %384 = xor i32 %383, %375, !mcsema_real_eip !47
  %385 = and i32 %384, 16, !mcsema_real_eip !47
  %386 = icmp ne i32 %385, 0, !mcsema_real_eip !47
  store i1 %386, i1* %AF_val, !mcsema_real_eip !47
  %387 = icmp slt i32 %382, 0
  store i1 %387, i1* %SF_val, !mcsema_real_eip !47
  %388 = icmp eq i32 %382, 0, !mcsema_real_eip !47
  store i1 %388, i1* %ZF_val, !mcsema_real_eip !47
  %389 = xor i32 %375, -2147483648, !mcsema_real_eip !47
  %390 = xor i32 %389, %381, !mcsema_real_eip !47
  %391 = and i32 %383, %390, !mcsema_real_eip !47
  %392 = icmp slt i32 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !47
  %393 = trunc i32 %382 to i8, !mcsema_real_eip !47
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !47
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  store i1 %396, i1* %PF_val, !mcsema_real_eip !47
  %397 = extractvalue { i32, i1 } %uadd, 1
  store i1 %397, i1* %CF_val, !mcsema_real_eip !47
  %398 = zext i32 %382 to i64, !mcsema_real_eip !47
  store i64 %398, i64* %RDX_val, !mcsema_real_eip !47
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %399 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -32
  %400 = add i64 %399, -32, !mcsema_real_eip !48
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !48
  %402 = bitcast i64* %_allin_new_bt_97 to i32*
  %403 = load i32, i32* %402, !mcsema_real_eip !48
  %404 = add i32 %382, %403
  %405 = zext i32 %404 to i64, !mcsema_real_eip !48
  store i64 %405, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %405, i64* %RAX_val, !mcsema_real_eip !49
  %_load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_
  %406 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %_new_ptr2int_99 = ptrtoint i8* %_load_rsp_ptr_98 to i64
  %uadd212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_99, i64 128)
  %407 = extractvalue { i64, i1 } %uadd212, 0
  %408 = xor i64 %407, %_new_ptr2int_99, !mcsema_real_eip !50
  %409 = and i64 %408, 16, !mcsema_real_eip !50
  %410 = icmp ne i64 %409, 0, !mcsema_real_eip !50
  store i1 %410, i1* %AF_val, !mcsema_real_eip !50
  %411 = icmp slt i64 %407, 0
  store i1 %411, i1* %SF_val, !mcsema_real_eip !50
  %412 = icmp eq i64 %407, 0, !mcsema_real_eip !50
  store i1 %412, i1* %ZF_val, !mcsema_real_eip !50
  %413 = xor i64 %_new_ptr2int_99, -9223372036854775808, !mcsema_real_eip !50
  %414 = and i64 %408, %413, !mcsema_real_eip !50
  %415 = icmp slt i64 %414, 0
  store i1 %415, i1* %OF_val, !mcsema_real_eip !50
  %416 = trunc i64 %407 to i8, !mcsema_real_eip !50
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !50
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF_val, !mcsema_real_eip !50
  %420 = extractvalue { i64, i1 } %uadd212, 1
  store i1 %420, i1* %CF_val, !mcsema_real_eip !50
  %_new_int2ptr_ = inttoptr i64 %407 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %407, i64* %RSP_val, !mcsema_real_eip !50
  %421 = inttoptr i64 %407 to i64*, !mcsema_real_eip !51
  %422 = load i64, i64* %421, !mcsema_real_eip !51
  %_new_int2ptr_100 = inttoptr i64 %422 to i8*
  store volatile i8* %_new_int2ptr_100, i8** %_RBP_ptr_
  store i64 %422, i64* %RBP_val, !mcsema_real_eip !51
  %423 = add i64 %407, 16, !mcsema_real_eip !52
  %_new_int2ptr_101 = inttoptr i64 %423 to i8*
  store volatile i8* %_new_int2ptr_101, i8** %_RSP_ptr_
  store i64 %423, i64* %RSP_val, !mcsema_real_eip !52
  %424 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  store i64 %424, i64* %RAX, !mcsema_real_eip !52
  %425 = load i64, i64* %RBX_val, !mcsema_real_eip !52
  store i64 %425, i64* %RBX, !mcsema_real_eip !52
  %426 = load i64, i64* %RCX_val, !mcsema_real_eip !52
  store i64 %426, i64* %RCX, !mcsema_real_eip !52
  %427 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  store i64 %427, i64* %RDX, !mcsema_real_eip !52
  %428 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  store i64 %428, i64* %RSI, !mcsema_real_eip !52
  %429 = load i64, i64* %RDI_val, !mcsema_real_eip !52
  store i64 %429, i64* %RDI, !mcsema_real_eip !52
  %_load_rsp_ptr_102 = load i8*, i8** %_RSP_ptr_
  %430 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  %_new_ptr2int_103 = ptrtoint i8* %_load_rsp_ptr_102 to i64
  store volatile i64 %_new_ptr2int_103, i64* %RSP
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_ptr2int_105 = ptrtoint i8* %_load_rbp_ptr_104 to i64
  store volatile i64 %_new_ptr2int_105, i64* %RBP
  %432 = load i64, i64* %R8_val, !mcsema_real_eip !52
  store i64 %432, i64* %R8, !mcsema_real_eip !52
  %433 = load i64, i64* %R9_val, !mcsema_real_eip !52
  store i64 %433, i64* %R9, !mcsema_real_eip !52
  %434 = load i64, i64* %R10_val, !mcsema_real_eip !52
  store i64 %434, i64* %R10, !mcsema_real_eip !52
  %435 = load i64, i64* %R11_val, !mcsema_real_eip !52
  store i64 %435, i64* %R11, !mcsema_real_eip !52
  %436 = load i64, i64* %R12_val, !mcsema_real_eip !52
  store i64 %436, i64* %R12, !mcsema_real_eip !52
  %437 = load i64, i64* %R13_val, !mcsema_real_eip !52
  store i64 %437, i64* %R13, !mcsema_real_eip !52
  %438 = load i64, i64* %R14_val, !mcsema_real_eip !52
  store i64 %438, i64* %R14, !mcsema_real_eip !52
  %439 = load i64, i64* %R15_val, !mcsema_real_eip !52
  store i64 %439, i64* %R15, !mcsema_real_eip !52
  %440 = load i64, i64* %RIP_val, !mcsema_real_eip !52
  store i64 %440, i64* %RIP, !mcsema_real_eip !52
  %441 = load i1, i1* %CF_val, !mcsema_real_eip !52
  store i1 %441, i1* %CF, align 1, !mcsema_real_eip !52
  %442 = load i1, i1* %PF_val, !mcsema_real_eip !52
  store i1 %442, i1* %PF, align 1, !mcsema_real_eip !52
  %443 = load i1, i1* %AF_val, !mcsema_real_eip !52
  store i1 %443, i1* %AF, align 1, !mcsema_real_eip !52
  %444 = load i1, i1* %ZF_val, !mcsema_real_eip !52
  store i1 %444, i1* %ZF, align 1, !mcsema_real_eip !52
  %445 = load i1, i1* %SF_val, !mcsema_real_eip !52
  store i1 %445, i1* %SF, align 1, !mcsema_real_eip !52
  %446 = load i1, i1* %OF_val, !mcsema_real_eip !52
  store i1 %446, i1* %OF, align 1, !mcsema_real_eip !52
  %447 = load i1, i1* %DF_val, !mcsema_real_eip !52
  store i1 %447, i1* %DF, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  %448 = load i1, i1* %FPU_B_val, !mcsema_real_eip !52
  store i1 %448, i1* %FPU_B, align 1, !mcsema_real_eip !52
  %449 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !52
  store i1 %449, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  %450 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !52
  store i3 %450, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  %451 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !52
  store i1 %451, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  %452 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !52
  store i1 %452, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  %453 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !52
  store i1 %453, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  %454 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !52
  store i1 %454, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  %455 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !52
  store i1 %455, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  %456 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !52
  store i1 %456, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  %457 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !52
  store i1 %457, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  %458 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !52
  store i1 %458, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  %459 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !52
  store i1 %459, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  %460 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !52
  store i1 %460, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  %461 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !52
  store i1 %461, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  %462 = load i1, i1* %FPU_X_val, !mcsema_real_eip !52
  store i1 %462, i1* %FPU_X, align 1, !mcsema_real_eip !52
  %463 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !52
  store i2 %463, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  %464 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !52
  store i2 %464, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  %465 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !52
  store i1 %465, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  %466 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !52
  store i1 %466, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  %467 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !52
  store i1 %467, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  %468 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !52
  store i1 %468, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  %469 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !52
  store i1 %469, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  %470 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !52
  store i1 %470, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %471 = load i64, i64* %53, align 4
  store i64 %471, i64* %52, align 4
  %472 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !52
  store i16 %472, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  %473 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !52
  store i64 %473, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !52
  %474 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !52
  store i16 %474, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  %475 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !52
  store i64 %475, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !52
  %476 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !52
  store i11 %476, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !52
  %477 = load i128, i128* %XMM0_val, !mcsema_real_eip !52
  store i128 %477, i128* %XMM0, align 1, !mcsema_real_eip !52
  %478 = load i128, i128* %XMM1_val, !mcsema_real_eip !52
  store i128 %478, i128* %XMM1, align 1, !mcsema_real_eip !52
  %479 = load i128, i128* %XMM2_val, !mcsema_real_eip !52
  store i128 %479, i128* %XMM2, align 1, !mcsema_real_eip !52
  %480 = load i128, i128* %XMM3_val, !mcsema_real_eip !52
  store i128 %480, i128* %XMM3, align 1, !mcsema_real_eip !52
  %481 = load i128, i128* %XMM4_val, !mcsema_real_eip !52
  store i128 %481, i128* %XMM4, align 1, !mcsema_real_eip !52
  %482 = load i128, i128* %XMM5_val, !mcsema_real_eip !52
  store i128 %482, i128* %XMM5, align 1, !mcsema_real_eip !52
  %483 = load i128, i128* %XMM6_val, !mcsema_real_eip !52
  store i128 %483, i128* %XMM6, align 1, !mcsema_real_eip !52
  %484 = load i128, i128* %XMM7_val, !mcsema_real_eip !52
  store i128 %484, i128* %XMM7, align 1, !mcsema_real_eip !52
  %485 = load i128, i128* %XMM8_val, !mcsema_real_eip !52
  store i128 %485, i128* %XMM8, align 1, !mcsema_real_eip !52
  %486 = load i128, i128* %XMM9_val, !mcsema_real_eip !52
  store i128 %486, i128* %XMM9, align 1, !mcsema_real_eip !52
  %487 = load i128, i128* %XMM10_val, !mcsema_real_eip !52
  store i128 %487, i128* %XMM10, align 1, !mcsema_real_eip !52
  %488 = load i128, i128* %XMM11_val, !mcsema_real_eip !52
  store i128 %488, i128* %XMM11, align 1, !mcsema_real_eip !52
  %489 = load i128, i128* %XMM12_val, !mcsema_real_eip !52
  store i128 %489, i128* %XMM12, align 1, !mcsema_real_eip !52
  %490 = load i128, i128* %XMM13_val, !mcsema_real_eip !52
  store i128 %490, i128* %XMM13, align 1, !mcsema_real_eip !52
  %491 = load i128, i128* %XMM14_val, !mcsema_real_eip !52
  store i128 %491, i128* %XMM14, align 1, !mcsema_real_eip !52
  %492 = load i128, i128* %XMM15_val, !mcsema_real_eip !52
  store i128 %492, i128* %XMM15, align 1, !mcsema_real_eip !52
  %493 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !52
  store i64 %493, i64* %STACK_BASE, align 1, !mcsema_real_eip !52
  %494 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !52
  store i64 %494, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !53
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !53
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !53
  %XMM15_val = alloca i128, !mcsema_real_eip !53
  %XMM14_val = alloca i128, !mcsema_real_eip !53
  %XMM13_val = alloca i128, !mcsema_real_eip !53
  %XMM12_val = alloca i128, !mcsema_real_eip !53
  %XMM11_val = alloca i128, !mcsema_real_eip !53
  %XMM10_val = alloca i128, !mcsema_real_eip !53
  %XMM9_val = alloca i128, !mcsema_real_eip !53
  %XMM8_val = alloca i128, !mcsema_real_eip !53
  %XMM7_val = alloca i128, !mcsema_real_eip !53
  %XMM6_val = alloca i128, !mcsema_real_eip !53
  %XMM5_val = alloca i128, !mcsema_real_eip !53
  %XMM4_val = alloca i128, !mcsema_real_eip !53
  %XMM3_val = alloca i128, !mcsema_real_eip !53
  %XMM2_val = alloca i128, !mcsema_real_eip !53
  %XMM1_val = alloca i128, !mcsema_real_eip !53
  %XMM0_val = alloca i128, !mcsema_real_eip !53
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %FPU_IM_val = alloca i1, !mcsema_real_eip !53
  %FPU_DM_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !53
  %FPU_OM_val = alloca i1, !mcsema_real_eip !53
  %FPU_UM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PC_val = alloca i2, !mcsema_real_eip !53
  %FPU_RC_val = alloca i2, !mcsema_real_eip !53
  %FPU_X_val = alloca i1, !mcsema_real_eip !53
  %FPU_IE_val = alloca i1, !mcsema_real_eip !53
  %FPU_DE_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !53
  %FPU_OE_val = alloca i1, !mcsema_real_eip !53
  %FPU_UE_val = alloca i1, !mcsema_real_eip !53
  %FPU_PE_val = alloca i1, !mcsema_real_eip !53
  %FPU_SF_val = alloca i1, !mcsema_real_eip !53
  %FPU_ES_val = alloca i1, !mcsema_real_eip !53
  %FPU_C0_val = alloca i1, !mcsema_real_eip !53
  %FPU_C1_val = alloca i1, !mcsema_real_eip !53
  %FPU_C2_val = alloca i1, !mcsema_real_eip !53
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !53
  %FPU_C3_val = alloca i1, !mcsema_real_eip !53
  %FPU_B_val = alloca i1, !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %DF_val = alloca i1, !mcsema_real_eip !53
  %OF_val = alloca i1, !mcsema_real_eip !53
  %SF_val = alloca i1, !mcsema_real_eip !53
  %CF_val = alloca i1, !mcsema_real_eip !53
  %AF_val = alloca i1, !mcsema_real_eip !53
  %PF_val = alloca i1, !mcsema_real_eip !53
  %ZF_val = alloca i1, !mcsema_real_eip !53
  %RIP_val = alloca i64, !mcsema_real_eip !53
  %R14_val = alloca i64, !mcsema_real_eip !53
  %R13_val = alloca i64, !mcsema_real_eip !53
  %R12_val = alloca i64, !mcsema_real_eip !53
  %R11_val = alloca i64, !mcsema_real_eip !53
  %R10_val = alloca i64, !mcsema_real_eip !53
  %R9_val = alloca i64, !mcsema_real_eip !53
  %R8_val = alloca i64, !mcsema_real_eip !53
  %RSP_val = alloca i64, !mcsema_real_eip !53
  %RBP_val = alloca i64, !mcsema_real_eip !53
  %RDI_val = alloca i64, !mcsema_real_eip !53
  %RSI_val = alloca i64, !mcsema_real_eip !53
  %RDX_val = alloca i64, !mcsema_real_eip !53
  %RCX_val = alloca i64, !mcsema_real_eip !53
  %RBX_val = alloca i64, !mcsema_real_eip !53
  %RAX_val = alloca i64, !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %1 = load i64, i64* %RAX, !mcsema_real_eip !53
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %2 = load i64, i64* %RBX, !mcsema_real_eip !53
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %3 = load i64, i64* %RCX, !mcsema_real_eip !53
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %4 = load i64, i64* %RDX, !mcsema_real_eip !53
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %5 = load i64, i64* %RSI, !mcsema_real_eip !53
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %6 = load i64, i64* %RDI, !mcsema_real_eip !53
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %7 = load i64, i64* %RSP, !mcsema_real_eip !53
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !53
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %8 = load i64, i64* %RBP, !mcsema_real_eip !53
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %9 = load i64, i64* %R8, !mcsema_real_eip !53
  store i64 %9, i64* %R8_val, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %10 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %10, i64* %R9_val, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %11 = load i64, i64* %R10, !mcsema_real_eip !53
  store i64 %11, i64* %R10_val, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %12 = load i64, i64* %R11, !mcsema_real_eip !53
  store i64 %12, i64* %R11_val, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %13 = load i64, i64* %R12, !mcsema_real_eip !53
  store i64 %13, i64* %R12_val, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %14 = load i64, i64* %R13, !mcsema_real_eip !53
  store i64 %14, i64* %R13_val, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %15 = load i64, i64* %R14, !mcsema_real_eip !53
  store i64 %15, i64* %R14_val, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %16 = load i64, i64* %R15, !mcsema_real_eip !53
  store i64 %16, i64* %R15_val, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %17 = load i64, i64* %RIP, !mcsema_real_eip !53
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %18, i1* %CF_val, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %19, i1* %PF_val, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %20, i1* %AF_val, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %22, i1* %SF_val, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %23, i1* %OF_val, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %24, i1* %DF_val, !mcsema_real_eip !53
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !53
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !53
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !53
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !53
  store i64 %78, i64* %81, !mcsema_real_eip !53
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !54
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %83 = add i64 %79, -16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !55
  store i64 %82, i64* %84, !mcsema_real_eip !55
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !55
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %86 = add i64 %85, 48, !mcsema_real_eip !56
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !56
  %88 = load i64, i64* %87, !mcsema_real_eip !56
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !56
  %89 = add i64 %85, 40, !mcsema_real_eip !57
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !57
  %91 = load i64, i64* %90, !mcsema_real_eip !57
  store i64 %91, i64* %R10_val, !mcsema_real_eip !57
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %93 = add i64 %92, 24, !mcsema_real_eip !58
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !58
  %95 = ptrtoint i64* %94 to i64, !mcsema_real_eip !58
  store i64 %95, i64* %R11_val, !mcsema_real_eip !58
  %96 = add i64 %92, 16, !mcsema_real_eip !59
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !59
  %98 = bitcast i64* %97 to i32*
  %99 = load i32, i32* %98, !mcsema_real_eip !59
  %100 = zext i32 %99 to i64, !mcsema_real_eip !59
  store i64 %100, i64* %RBX_val, !mcsema_real_eip !59
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %102 = add i64 %101, -56, !mcsema_real_eip !60
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !60
  %104 = load i64, i64* %RDI_val, !mcsema_real_eip !60
  store i64 %104, i64* %103, !mcsema_real_eip !60
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %106 = add i64 %105, -48, !mcsema_real_eip !61
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !61
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !61
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !61
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %112 = add i64 %111, -32, !mcsema_real_eip !62
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !62
  %114 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !62
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !62
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %118 = add i64 %117, -56, !mcsema_real_eip !63
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !63
  %120 = load i64, i64* %119, !mcsema_real_eip !63
  store i64 %120, i64* %RDI_val, !mcsema_real_eip !63
  %121 = add i64 %117, -40, !mcsema_real_eip !64
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !64
  store i64 %120, i64* %122, !mcsema_real_eip !64
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %124 = add i64 %123, -64, !mcsema_real_eip !65
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !65
  %126 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %126, i64* %125, !mcsema_real_eip !65
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %128 = add i64 %127, -72, !mcsema_real_eip !66
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !66
  %130 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %130, i64* %129, !mcsema_real_eip !66
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %132 = add i64 %131, -76, !mcsema_real_eip !67
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !67
  %134 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %135 = trunc i64 %134 to i32, !mcsema_real_eip !67
  %136 = bitcast i64* %133 to i32*
  store i32 %135, i32* %136, !mcsema_real_eip !67
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %138 = add i64 %137, -80, !mcsema_real_eip !68
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !68
  %140 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %141 = trunc i64 %140 to i32, !mcsema_real_eip !68
  %142 = bitcast i64* %139 to i32*
  store i32 %141, i32* %142, !mcsema_real_eip !68
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %144 = add i64 %143, -84, !mcsema_real_eip !69
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !69
  %146 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %147 = trunc i64 %146 to i32, !mcsema_real_eip !69
  %148 = bitcast i64* %145 to i32*
  store i32 %147, i32* %148, !mcsema_real_eip !69
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %150 = add i64 %149, -96, !mcsema_real_eip !70
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !70
  %152 = load i64, i64* %R10_val, !mcsema_real_eip !70
  store i64 %152, i64* %151, !mcsema_real_eip !70
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %154 = add i64 %153, -104, !mcsema_real_eip !71
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !71
  %156 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %156, i64* %155, !mcsema_real_eip !71
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %158 = add i64 %157, -40, !mcsema_real_eip !72
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !72
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !72
  %162 = zext i32 %161 to i64, !mcsema_real_eip !72
  store i64 %162, i64* %RSI_val, !mcsema_real_eip !72
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %164 = add i64 %163, -64, !mcsema_real_eip !73
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !73
  %166 = load i64, i64* %165, !mcsema_real_eip !73
  store i64 %166, i64* %RCX_val, !mcsema_real_eip !73
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !74
  %168 = bitcast i64* %167 to i32*
  %169 = load i32, i32* %168, !mcsema_real_eip !74
  %170 = zext i32 %169 to i64, !mcsema_real_eip !74
  store i64 %170, i64* %R8_val, !mcsema_real_eip !74
  %171 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %172 = trunc i64 %171 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %169, i32 %172)
  %173 = extractvalue { i32, i1 } %uadd, 0
  %174 = xor i32 %173, %172, !mcsema_real_eip !75
  %175 = xor i32 %174, %169, !mcsema_real_eip !75
  %176 = and i32 %175, 16, !mcsema_real_eip !75
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !75
  store i1 %177, i1* %AF_val, !mcsema_real_eip !75
  %178 = icmp slt i32 %173, 0
  store i1 %178, i1* %SF_val, !mcsema_real_eip !75
  %179 = icmp eq i32 %173, 0, !mcsema_real_eip !75
  store i1 %179, i1* %ZF_val, !mcsema_real_eip !75
  %180 = xor i32 %169, -2147483648, !mcsema_real_eip !75
  %181 = xor i32 %180, %172, !mcsema_real_eip !75
  %182 = and i32 %174, %181, !mcsema_real_eip !75
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF_val, !mcsema_real_eip !75
  %184 = trunc i32 %173 to i8, !mcsema_real_eip !75
  %185 = tail call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !75
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  store i1 %187, i1* %PF_val, !mcsema_real_eip !75
  %188 = extractvalue { i32, i1 } %uadd, 1
  store i1 %188, i1* %CF_val, !mcsema_real_eip !75
  %189 = zext i32 %173 to i64, !mcsema_real_eip !75
  store i64 %189, i64* %RSI_val, !mcsema_real_eip !75
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %191 = add i64 %190, -72, !mcsema_real_eip !76
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !76
  %193 = load i64, i64* %192, !mcsema_real_eip !76
  store i64 %193, i64* %RCX_val, !mcsema_real_eip !76
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !77
  %195 = bitcast i64* %194 to i32*
  %196 = load i32, i32* %195, !mcsema_real_eip !77
  %197 = zext i32 %196 to i64, !mcsema_real_eip !77
  store i64 %197, i64* %R8_val, !mcsema_real_eip !77
  %198 = load i64, i64* %RSI_val, !mcsema_real_eip !78
  %199 = trunc i64 %198 to i32, !mcsema_real_eip !78
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %199)
  %200 = extractvalue { i32, i1 } %uadd71, 0
  %201 = xor i32 %200, %199, !mcsema_real_eip !78
  %202 = xor i32 %201, %196, !mcsema_real_eip !78
  %203 = and i32 %202, 16, !mcsema_real_eip !78
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !78
  store i1 %204, i1* %AF_val, !mcsema_real_eip !78
  %205 = icmp slt i32 %200, 0
  store i1 %205, i1* %SF_val, !mcsema_real_eip !78
  %206 = icmp eq i32 %200, 0, !mcsema_real_eip !78
  store i1 %206, i1* %ZF_val, !mcsema_real_eip !78
  %207 = xor i32 %196, -2147483648, !mcsema_real_eip !78
  %208 = xor i32 %207, %199, !mcsema_real_eip !78
  %209 = and i32 %201, %208, !mcsema_real_eip !78
  %210 = icmp slt i32 %209, 0
  store i1 %210, i1* %OF_val, !mcsema_real_eip !78
  %211 = trunc i32 %200 to i8, !mcsema_real_eip !78
  %212 = tail call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !78
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  store i1 %214, i1* %PF_val, !mcsema_real_eip !78
  %215 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %215, i1* %CF_val, !mcsema_real_eip !78
  %216 = zext i32 %200 to i64, !mcsema_real_eip !78
  store i64 %216, i64* %RSI_val, !mcsema_real_eip !78
  %217 = load i64, i64* %R11_val, !mcsema_real_eip !79
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !79
  %219 = bitcast i64* %218 to i32*
  %220 = load i32, i32* %219, !mcsema_real_eip !79
  %221 = zext i32 %220 to i64, !mcsema_real_eip !79
  store i64 %221, i64* %R8_val, !mcsema_real_eip !79
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %223 = add i64 %222, -96, !mcsema_real_eip !80
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !80
  %225 = load i64, i64* %224, !mcsema_real_eip !80
  store i64 %225, i64* %RCX_val, !mcsema_real_eip !80
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !81
  %227 = bitcast i64* %226 to i32*
  %228 = load i32, i32* %227, !mcsema_real_eip !81
  %229 = zext i32 %228 to i64, !mcsema_real_eip !81
  store i64 %229, i64* %R9_val, !mcsema_real_eip !81
  %230 = load i64, i64* %R8_val, !mcsema_real_eip !82
  %231 = trunc i64 %230 to i32, !mcsema_real_eip !82
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %231)
  %232 = extractvalue { i32, i1 } %uadd72, 0
  %233 = xor i32 %232, %231, !mcsema_real_eip !82
  %234 = xor i32 %233, %228, !mcsema_real_eip !82
  %235 = and i32 %234, 16, !mcsema_real_eip !82
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !82
  store i1 %236, i1* %AF_val, !mcsema_real_eip !82
  %237 = icmp slt i32 %232, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !82
  %238 = icmp eq i32 %232, 0, !mcsema_real_eip !82
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !82
  %239 = xor i32 %228, -2147483648, !mcsema_real_eip !82
  %240 = xor i32 %239, %231, !mcsema_real_eip !82
  %241 = and i32 %233, %240, !mcsema_real_eip !82
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF_val, !mcsema_real_eip !82
  %243 = trunc i32 %232 to i8, !mcsema_real_eip !82
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !82
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !82
  %247 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %247, i1* %CF_val, !mcsema_real_eip !82
  %248 = zext i32 %232 to i64, !mcsema_real_eip !82
  store i64 %248, i64* %R8_val, !mcsema_real_eip !82
  %249 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !83
  %251 = bitcast i64* %250 to i32*
  %252 = load i32, i32* %251, !mcsema_real_eip !83
  %253 = zext i32 %252 to i64, !mcsema_real_eip !83
  store i64 %253, i64* %R9_val, !mcsema_real_eip !83
  %254 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %255 = trunc i64 %254 to i32, !mcsema_real_eip !84
  %256 = add i32 %252, %255
  %257 = zext i32 %256 to i64, !mcsema_real_eip !84
  store i64 %257, i64* %R8_val, !mcsema_real_eip !84
  %258 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  %259 = trunc i64 %258 to i32, !mcsema_real_eip !85
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %259)
  %260 = extractvalue { i32, i1 } %uadd74, 0
  %261 = xor i32 %260, %259, !mcsema_real_eip !85
  %262 = xor i32 %261, %256, !mcsema_real_eip !85
  %263 = and i32 %262, 16, !mcsema_real_eip !85
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !85
  store i1 %264, i1* %AF_val, !mcsema_real_eip !85
  %265 = icmp slt i32 %260, 0
  store i1 %265, i1* %SF_val, !mcsema_real_eip !85
  %266 = icmp eq i32 %260, 0, !mcsema_real_eip !85
  store i1 %266, i1* %ZF_val, !mcsema_real_eip !85
  %267 = xor i32 %256, -2147483648, !mcsema_real_eip !85
  %268 = xor i32 %267, %259, !mcsema_real_eip !85
  %269 = and i32 %261, %268, !mcsema_real_eip !85
  %270 = icmp slt i32 %269, 0
  store i1 %270, i1* %OF_val, !mcsema_real_eip !85
  %271 = trunc i32 %260 to i8, !mcsema_real_eip !85
  %272 = tail call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !85
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  store i1 %274, i1* %PF_val, !mcsema_real_eip !85
  %275 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %275, i1* %CF_val, !mcsema_real_eip !85
  %276 = zext i32 %260 to i64, !mcsema_real_eip !85
  store i64 %276, i64* %RSI_val, !mcsema_real_eip !85
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %278 = add i64 %277, -120, !mcsema_real_eip !86
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !86
  %280 = bitcast i64* %279 to i32*
  store i32 %260, i32* %280, !mcsema_real_eip !86
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %282 = add i64 %281, -36, !mcsema_real_eip !87
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !87
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !87
  %286 = zext i32 %285 to i64, !mcsema_real_eip !87
  store i64 %286, i64* %RSI_val, !mcsema_real_eip !87
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %288 = add i64 %287, -64, !mcsema_real_eip !88
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !88
  %290 = load i64, i64* %289, !mcsema_real_eip !88
  store i64 %290, i64* %RAX_val, !mcsema_real_eip !88
  %291 = add i64 %290, 4, !mcsema_real_eip !89
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !89
  %293 = bitcast i64* %292 to i32*
  %294 = load i32, i32* %293, !mcsema_real_eip !89
  %295 = zext i32 %294 to i64, !mcsema_real_eip !89
  store i64 %295, i64* %R8_val, !mcsema_real_eip !89
  %296 = load i64, i64* %RSI_val, !mcsema_real_eip !90
  %297 = trunc i64 %296 to i32, !mcsema_real_eip !90
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %297)
  %298 = extractvalue { i32, i1 } %uadd75, 0
  %299 = xor i32 %298, %297, !mcsema_real_eip !90
  %300 = xor i32 %299, %294, !mcsema_real_eip !90
  %301 = and i32 %300, 16, !mcsema_real_eip !90
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !90
  store i1 %302, i1* %AF_val, !mcsema_real_eip !90
  %303 = icmp slt i32 %298, 0
  store i1 %303, i1* %SF_val, !mcsema_real_eip !90
  %304 = icmp eq i32 %298, 0, !mcsema_real_eip !90
  store i1 %304, i1* %ZF_val, !mcsema_real_eip !90
  %305 = xor i32 %294, -2147483648, !mcsema_real_eip !90
  %306 = xor i32 %305, %297, !mcsema_real_eip !90
  %307 = and i32 %299, %306, !mcsema_real_eip !90
  %308 = icmp slt i32 %307, 0
  store i1 %308, i1* %OF_val, !mcsema_real_eip !90
  %309 = trunc i32 %298 to i8, !mcsema_real_eip !90
  %310 = tail call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !90
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  store i1 %312, i1* %PF_val, !mcsema_real_eip !90
  %313 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %313, i1* %CF_val, !mcsema_real_eip !90
  %314 = zext i32 %298 to i64, !mcsema_real_eip !90
  store i64 %314, i64* %RSI_val, !mcsema_real_eip !90
  %315 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %316 = add i64 %315, -72, !mcsema_real_eip !91
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !91
  %318 = load i64, i64* %317, !mcsema_real_eip !91
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !91
  %319 = add i64 %318, 4, !mcsema_real_eip !92
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !92
  %321 = bitcast i64* %320 to i32*
  %322 = load i32, i32* %321, !mcsema_real_eip !92
  %323 = zext i32 %322 to i64, !mcsema_real_eip !92
  store i64 %323, i64* %R8_val, !mcsema_real_eip !92
  %324 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %325 = trunc i64 %324 to i32, !mcsema_real_eip !93
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 %325)
  %326 = extractvalue { i32, i1 } %uadd76, 0
  %327 = xor i32 %326, %325, !mcsema_real_eip !93
  %328 = xor i32 %327, %322, !mcsema_real_eip !93
  %329 = and i32 %328, 16, !mcsema_real_eip !93
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !93
  store i1 %330, i1* %AF_val, !mcsema_real_eip !93
  %331 = icmp slt i32 %326, 0
  store i1 %331, i1* %SF_val, !mcsema_real_eip !93
  %332 = icmp eq i32 %326, 0, !mcsema_real_eip !93
  store i1 %332, i1* %ZF_val, !mcsema_real_eip !93
  %333 = xor i32 %322, -2147483648, !mcsema_real_eip !93
  %334 = xor i32 %333, %325, !mcsema_real_eip !93
  %335 = and i32 %327, %334, !mcsema_real_eip !93
  %336 = icmp slt i32 %335, 0
  store i1 %336, i1* %OF_val, !mcsema_real_eip !93
  %337 = trunc i32 %326 to i8, !mcsema_real_eip !93
  %338 = tail call i8 @llvm.ctpop.i8(i8 %337), !mcsema_real_eip !93
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  store i1 %340, i1* %PF_val, !mcsema_real_eip !93
  %341 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %341, i1* %CF_val, !mcsema_real_eip !93
  %342 = zext i32 %326 to i64, !mcsema_real_eip !93
  store i64 %342, i64* %RSI_val, !mcsema_real_eip !93
  %343 = load i64, i64* %R11_val, !mcsema_real_eip !94
  %344 = add i64 %343, 4, !mcsema_real_eip !94
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !94
  %346 = bitcast i64* %345 to i32*
  %347 = load i32, i32* %346, !mcsema_real_eip !94
  %348 = zext i32 %347 to i64, !mcsema_real_eip !94
  store i64 %348, i64* %R8_val, !mcsema_real_eip !94
  %349 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %350 = add i64 %349, -96, !mcsema_real_eip !95
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !95
  %352 = load i64, i64* %351, !mcsema_real_eip !95
  store i64 %352, i64* %RAX_val, !mcsema_real_eip !95
  %353 = add i64 %352, 4, !mcsema_real_eip !96
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !96
  %355 = bitcast i64* %354 to i32*
  %356 = load i32, i32* %355, !mcsema_real_eip !96
  %357 = zext i32 %356 to i64, !mcsema_real_eip !96
  store i64 %357, i64* %R9_val, !mcsema_real_eip !96
  %358 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %359 = trunc i64 %358 to i32, !mcsema_real_eip !97
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %356, i32 %359)
  %360 = extractvalue { i32, i1 } %uadd77, 0
  %361 = xor i32 %360, %359, !mcsema_real_eip !97
  %362 = xor i32 %361, %356, !mcsema_real_eip !97
  %363 = and i32 %362, 16, !mcsema_real_eip !97
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !97
  store i1 %364, i1* %AF_val, !mcsema_real_eip !97
  %365 = icmp slt i32 %360, 0
  store i1 %365, i1* %SF_val, !mcsema_real_eip !97
  %366 = icmp eq i32 %360, 0, !mcsema_real_eip !97
  store i1 %366, i1* %ZF_val, !mcsema_real_eip !97
  %367 = xor i32 %356, -2147483648, !mcsema_real_eip !97
  %368 = xor i32 %367, %359, !mcsema_real_eip !97
  %369 = and i32 %361, %368, !mcsema_real_eip !97
  %370 = icmp slt i32 %369, 0
  store i1 %370, i1* %OF_val, !mcsema_real_eip !97
  %371 = trunc i32 %360 to i8, !mcsema_real_eip !97
  %372 = tail call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !97
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  store i1 %374, i1* %PF_val, !mcsema_real_eip !97
  %375 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %375, i1* %CF_val, !mcsema_real_eip !97
  %376 = zext i32 %360 to i64, !mcsema_real_eip !97
  store i64 %376, i64* %R8_val, !mcsema_real_eip !97
  %377 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %378 = add i64 %377, -104, !mcsema_real_eip !98
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !98
  %380 = load i64, i64* %379, !mcsema_real_eip !98
  store i64 %380, i64* %RAX_val, !mcsema_real_eip !98
  %381 = add i64 %380, 4, !mcsema_real_eip !99
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !99
  %383 = bitcast i64* %382 to i32*
  %384 = load i32, i32* %383, !mcsema_real_eip !99
  %385 = zext i32 %384 to i64, !mcsema_real_eip !99
  store i64 %385, i64* %R9_val, !mcsema_real_eip !99
  %386 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %387 = trunc i64 %386 to i32, !mcsema_real_eip !100
  %388 = add i32 %384, %387
  %389 = zext i32 %388 to i64, !mcsema_real_eip !100
  store i64 %389, i64* %R8_val, !mcsema_real_eip !100
  %390 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %391 = trunc i64 %390 to i32, !mcsema_real_eip !101
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %388, i32 %391)
  %392 = extractvalue { i32, i1 } %uadd79, 0
  %393 = xor i32 %392, %391, !mcsema_real_eip !101
  %394 = xor i32 %393, %388, !mcsema_real_eip !101
  %395 = and i32 %394, 16, !mcsema_real_eip !101
  %396 = icmp ne i32 %395, 0, !mcsema_real_eip !101
  store i1 %396, i1* %AF_val, !mcsema_real_eip !101
  %397 = icmp slt i32 %392, 0
  store i1 %397, i1* %SF_val, !mcsema_real_eip !101
  %398 = icmp eq i32 %392, 0, !mcsema_real_eip !101
  store i1 %398, i1* %ZF_val, !mcsema_real_eip !101
  %399 = xor i32 %388, -2147483648, !mcsema_real_eip !101
  %400 = xor i32 %399, %391, !mcsema_real_eip !101
  %401 = and i32 %393, %400, !mcsema_real_eip !101
  %402 = icmp slt i32 %401, 0
  store i1 %402, i1* %OF_val, !mcsema_real_eip !101
  %403 = trunc i32 %392 to i8, !mcsema_real_eip !101
  %404 = tail call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !101
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  store i1 %406, i1* %PF_val, !mcsema_real_eip !101
  %407 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %407, i1* %CF_val, !mcsema_real_eip !101
  %408 = zext i32 %392 to i64, !mcsema_real_eip !101
  store i64 %408, i64* %RSI_val, !mcsema_real_eip !101
  %409 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %410 = add i64 %409, -116, !mcsema_real_eip !102
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !102
  %412 = bitcast i64* %411 to i32*
  store i32 %392, i32* %412, !mcsema_real_eip !102
  %413 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %414 = add i64 %413, -32, !mcsema_real_eip !103
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !103
  %416 = bitcast i64* %415 to i32*
  %417 = load i32, i32* %416, !mcsema_real_eip !103
  %418 = zext i32 %417 to i64, !mcsema_real_eip !103
  store i64 %418, i64* %RSI_val, !mcsema_real_eip !103
  %419 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %420 = add i64 %419, -64, !mcsema_real_eip !104
  %421 = inttoptr i64 %420 to i64*, !mcsema_real_eip !104
  %422 = load i64, i64* %421, !mcsema_real_eip !104
  store i64 %422, i64* %RAX_val, !mcsema_real_eip !104
  %423 = add i64 %422, 8, !mcsema_real_eip !105
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !105
  %425 = bitcast i64* %424 to i32*
  %426 = load i32, i32* %425, !mcsema_real_eip !105
  %427 = zext i32 %426 to i64, !mcsema_real_eip !105
  store i64 %427, i64* %R8_val, !mcsema_real_eip !105
  %428 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %429 = trunc i64 %428 to i32, !mcsema_real_eip !106
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %426, i32 %429)
  %430 = extractvalue { i32, i1 } %uadd80, 0
  %431 = xor i32 %430, %429, !mcsema_real_eip !106
  %432 = xor i32 %431, %426, !mcsema_real_eip !106
  %433 = and i32 %432, 16, !mcsema_real_eip !106
  %434 = icmp ne i32 %433, 0, !mcsema_real_eip !106
  store i1 %434, i1* %AF_val, !mcsema_real_eip !106
  %435 = icmp slt i32 %430, 0
  store i1 %435, i1* %SF_val, !mcsema_real_eip !106
  %436 = icmp eq i32 %430, 0, !mcsema_real_eip !106
  store i1 %436, i1* %ZF_val, !mcsema_real_eip !106
  %437 = xor i32 %426, -2147483648, !mcsema_real_eip !106
  %438 = xor i32 %437, %429, !mcsema_real_eip !106
  %439 = and i32 %431, %438, !mcsema_real_eip !106
  %440 = icmp slt i32 %439, 0
  store i1 %440, i1* %OF_val, !mcsema_real_eip !106
  %441 = trunc i32 %430 to i8, !mcsema_real_eip !106
  %442 = tail call i8 @llvm.ctpop.i8(i8 %441), !mcsema_real_eip !106
  %443 = and i8 %442, 1
  %444 = icmp eq i8 %443, 0
  store i1 %444, i1* %PF_val, !mcsema_real_eip !106
  %445 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %445, i1* %CF_val, !mcsema_real_eip !106
  %446 = zext i32 %430 to i64, !mcsema_real_eip !106
  store i64 %446, i64* %RSI_val, !mcsema_real_eip !106
  %447 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %448 = add i64 %447, -72, !mcsema_real_eip !107
  %449 = inttoptr i64 %448 to i64*, !mcsema_real_eip !107
  %450 = load i64, i64* %449, !mcsema_real_eip !107
  store i64 %450, i64* %RAX_val, !mcsema_real_eip !107
  %451 = add i64 %450, 8, !mcsema_real_eip !108
  %452 = inttoptr i64 %451 to i64*, !mcsema_real_eip !108
  %453 = bitcast i64* %452 to i32*
  %454 = load i32, i32* %453, !mcsema_real_eip !108
  %455 = zext i32 %454 to i64, !mcsema_real_eip !108
  store i64 %455, i64* %R8_val, !mcsema_real_eip !108
  %456 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %457 = trunc i64 %456 to i32, !mcsema_real_eip !109
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %454, i32 %457)
  %458 = extractvalue { i32, i1 } %uadd81, 0
  %459 = xor i32 %458, %457, !mcsema_real_eip !109
  %460 = xor i32 %459, %454, !mcsema_real_eip !109
  %461 = and i32 %460, 16, !mcsema_real_eip !109
  %462 = icmp ne i32 %461, 0, !mcsema_real_eip !109
  store i1 %462, i1* %AF_val, !mcsema_real_eip !109
  %463 = icmp slt i32 %458, 0
  store i1 %463, i1* %SF_val, !mcsema_real_eip !109
  %464 = icmp eq i32 %458, 0, !mcsema_real_eip !109
  store i1 %464, i1* %ZF_val, !mcsema_real_eip !109
  %465 = xor i32 %454, -2147483648, !mcsema_real_eip !109
  %466 = xor i32 %465, %457, !mcsema_real_eip !109
  %467 = and i32 %459, %466, !mcsema_real_eip !109
  %468 = icmp slt i32 %467, 0
  store i1 %468, i1* %OF_val, !mcsema_real_eip !109
  %469 = trunc i32 %458 to i8, !mcsema_real_eip !109
  %470 = tail call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !109
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  store i1 %472, i1* %PF_val, !mcsema_real_eip !109
  %473 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %473, i1* %CF_val, !mcsema_real_eip !109
  %474 = zext i32 %458 to i64, !mcsema_real_eip !109
  store i64 %474, i64* %RSI_val, !mcsema_real_eip !109
  %475 = load i64, i64* %R11_val, !mcsema_real_eip !110
  %476 = add i64 %475, 8, !mcsema_real_eip !110
  %477 = inttoptr i64 %476 to i64*, !mcsema_real_eip !110
  %478 = bitcast i64* %477 to i32*
  %479 = load i32, i32* %478, !mcsema_real_eip !110
  %480 = zext i32 %479 to i64, !mcsema_real_eip !110
  store i64 %480, i64* %R8_val, !mcsema_real_eip !110
  %481 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %482 = add i64 %481, -96, !mcsema_real_eip !111
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !111
  %484 = load i64, i64* %483, !mcsema_real_eip !111
  store i64 %484, i64* %RAX_val, !mcsema_real_eip !111
  %485 = add i64 %484, 8, !mcsema_real_eip !112
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !112
  %487 = bitcast i64* %486 to i32*
  %488 = load i32, i32* %487, !mcsema_real_eip !112
  %489 = zext i32 %488 to i64, !mcsema_real_eip !112
  store i64 %489, i64* %R9_val, !mcsema_real_eip !112
  %490 = load i64, i64* %R8_val, !mcsema_real_eip !113
  %491 = trunc i64 %490 to i32, !mcsema_real_eip !113
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %488, i32 %491)
  %492 = extractvalue { i32, i1 } %uadd82, 0
  %493 = xor i32 %492, %491, !mcsema_real_eip !113
  %494 = xor i32 %493, %488, !mcsema_real_eip !113
  %495 = and i32 %494, 16, !mcsema_real_eip !113
  %496 = icmp ne i32 %495, 0, !mcsema_real_eip !113
  store i1 %496, i1* %AF_val, !mcsema_real_eip !113
  %497 = icmp slt i32 %492, 0
  store i1 %497, i1* %SF_val, !mcsema_real_eip !113
  %498 = icmp eq i32 %492, 0, !mcsema_real_eip !113
  store i1 %498, i1* %ZF_val, !mcsema_real_eip !113
  %499 = xor i32 %488, -2147483648, !mcsema_real_eip !113
  %500 = xor i32 %499, %491, !mcsema_real_eip !113
  %501 = and i32 %493, %500, !mcsema_real_eip !113
  %502 = icmp slt i32 %501, 0
  store i1 %502, i1* %OF_val, !mcsema_real_eip !113
  %503 = trunc i32 %492 to i8, !mcsema_real_eip !113
  %504 = tail call i8 @llvm.ctpop.i8(i8 %503), !mcsema_real_eip !113
  %505 = and i8 %504, 1
  %506 = icmp eq i8 %505, 0
  store i1 %506, i1* %PF_val, !mcsema_real_eip !113
  %507 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %507, i1* %CF_val, !mcsema_real_eip !113
  %508 = zext i32 %492 to i64, !mcsema_real_eip !113
  store i64 %508, i64* %R8_val, !mcsema_real_eip !113
  %509 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %510 = add i64 %509, -104, !mcsema_real_eip !114
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !114
  %512 = load i64, i64* %511, !mcsema_real_eip !114
  store i64 %512, i64* %RAX_val, !mcsema_real_eip !114
  %513 = add i64 %512, 8, !mcsema_real_eip !115
  %514 = inttoptr i64 %513 to i64*, !mcsema_real_eip !115
  %515 = bitcast i64* %514 to i32*
  %516 = load i32, i32* %515, !mcsema_real_eip !115
  %517 = zext i32 %516 to i64, !mcsema_real_eip !115
  store i64 %517, i64* %R9_val, !mcsema_real_eip !115
  %518 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %519 = trunc i64 %518 to i32, !mcsema_real_eip !116
  %520 = add i32 %516, %519
  %521 = zext i32 %520 to i64, !mcsema_real_eip !116
  store i64 %521, i64* %R8_val, !mcsema_real_eip !116
  %522 = load i64, i64* %RSI_val, !mcsema_real_eip !117
  %523 = trunc i64 %522 to i32, !mcsema_real_eip !117
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %520, i32 %523)
  %524 = extractvalue { i32, i1 } %uadd84, 0
  %525 = xor i32 %524, %523, !mcsema_real_eip !117
  %526 = xor i32 %525, %520, !mcsema_real_eip !117
  %527 = and i32 %526, 16, !mcsema_real_eip !117
  %528 = icmp ne i32 %527, 0, !mcsema_real_eip !117
  store i1 %528, i1* %AF_val, !mcsema_real_eip !117
  %529 = icmp slt i32 %524, 0
  store i1 %529, i1* %SF_val, !mcsema_real_eip !117
  %530 = icmp eq i32 %524, 0, !mcsema_real_eip !117
  store i1 %530, i1* %ZF_val, !mcsema_real_eip !117
  %531 = xor i32 %520, -2147483648, !mcsema_real_eip !117
  %532 = xor i32 %531, %523, !mcsema_real_eip !117
  %533 = and i32 %525, %532, !mcsema_real_eip !117
  %534 = icmp slt i32 %533, 0
  store i1 %534, i1* %OF_val, !mcsema_real_eip !117
  %535 = trunc i32 %524 to i8, !mcsema_real_eip !117
  %536 = tail call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !117
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  store i1 %538, i1* %PF_val, !mcsema_real_eip !117
  %539 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %539, i1* %CF_val, !mcsema_real_eip !117
  %540 = zext i32 %524 to i64, !mcsema_real_eip !117
  store i64 %540, i64* %RSI_val, !mcsema_real_eip !117
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %542 = add i64 %541, -112, !mcsema_real_eip !118
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !118
  %544 = bitcast i64* %543 to i32*
  store i32 %524, i32* %544, !mcsema_real_eip !118
  %545 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %546 = add i64 %545, -16, !mcsema_real_eip !119
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !119
  %548 = load i64, i64* %RSI_val, !mcsema_real_eip !119
  %549 = trunc i64 %548 to i32, !mcsema_real_eip !119
  %550 = bitcast i64* %547 to i32*
  store i32 %549, i32* %550, !mcsema_real_eip !119
  %551 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %552 = add i64 %551, -120, !mcsema_real_eip !120
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !120
  %554 = load i64, i64* %553, !mcsema_real_eip !120
  store i64 %554, i64* %RAX_val, !mcsema_real_eip !120
  %555 = add i64 %551, -24, !mcsema_real_eip !121
  %556 = inttoptr i64 %555 to i64*, !mcsema_real_eip !121
  store i64 %554, i64* %556, !mcsema_real_eip !121
  %557 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %558 = add i64 %557, -16, !mcsema_real_eip !122
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !122
  %560 = bitcast i64* %559 to i32*
  %561 = load i32, i32* %560, !mcsema_real_eip !122
  %562 = zext i32 %561 to i64, !mcsema_real_eip !122
  store i64 %562, i64* %RSI_val, !mcsema_real_eip !122
  %563 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %564 = add i64 %563, -128, !mcsema_real_eip !123
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !123
  %566 = bitcast i64* %565 to i32*
  store i32 %561, i32* %566, !mcsema_real_eip !123
  %567 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %568 = add i64 %567, -24, !mcsema_real_eip !124
  %569 = inttoptr i64 %568 to i64*, !mcsema_real_eip !124
  %570 = load i64, i64* %569, !mcsema_real_eip !124
  store i64 %570, i64* %RAX_val, !mcsema_real_eip !124
  %571 = add i64 %567, -136, !mcsema_real_eip !125
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !125
  store i64 %570, i64* %572, !mcsema_real_eip !125
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %574 = add i64 %573, -136, !mcsema_real_eip !126
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !126
  %576 = load i64, i64* %575, !mcsema_real_eip !126
  store i64 %576, i64* %RAX_val, !mcsema_real_eip !126
  %577 = add i64 %573, -128, !mcsema_real_eip !127
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !127
  %579 = bitcast i64* %578 to i32*
  %580 = load i32, i32* %579, !mcsema_real_eip !127
  %581 = zext i32 %580 to i64, !mcsema_real_eip !127
  store i64 %581, i64* %RDX_val, !mcsema_real_eip !127
  %582 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !128
  %584 = load i64, i64* %583, !mcsema_real_eip !128
  store i64 %584, i64* %RBX_val, !mcsema_real_eip !128
  %585 = add i64 %582, 8, !mcsema_real_eip !128
  store i64 %585, i64* %RSP_val, !mcsema_real_eip !128
  %586 = inttoptr i64 %585 to i64*, !mcsema_real_eip !129
  %587 = load i64, i64* %586, !mcsema_real_eip !129
  store i64 %587, i64* %RBP_val, !mcsema_real_eip !129
  %588 = add i64 %582, 24, !mcsema_real_eip !130
  store i64 %588, i64* %RSP_val, !mcsema_real_eip !130
  %589 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %589, i64* %RAX, !mcsema_real_eip !130
  %590 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %590, i64* %RBX, !mcsema_real_eip !130
  %591 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %591, i64* %RCX, !mcsema_real_eip !130
  %592 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %592, i64* %RDX, !mcsema_real_eip !130
  %593 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %593, i64* %RSI, !mcsema_real_eip !130
  %594 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %594, i64* %RDI, !mcsema_real_eip !130
  %595 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %595, i64* %RSP, !mcsema_real_eip !130
  %596 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %596, i64* %RBP, !mcsema_real_eip !130
  %597 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %597, i64* %R8, !mcsema_real_eip !130
  %598 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %598, i64* %R9, !mcsema_real_eip !130
  %599 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %599, i64* %R10, !mcsema_real_eip !130
  %600 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %600, i64* %R11, !mcsema_real_eip !130
  %601 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %601, i64* %R12, !mcsema_real_eip !130
  %602 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %602, i64* %R13, !mcsema_real_eip !130
  %603 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %603, i64* %R14, !mcsema_real_eip !130
  %604 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %604, i64* %R15, !mcsema_real_eip !130
  %605 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %605, i64* %RIP, !mcsema_real_eip !130
  %606 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %606, i1* %CF, align 1, !mcsema_real_eip !130
  %607 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %607, i1* %PF, align 1, !mcsema_real_eip !130
  %608 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %608, i1* %AF, align 1, !mcsema_real_eip !130
  %609 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %609, i1* %ZF, align 1, !mcsema_real_eip !130
  %610 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %610, i1* %SF, align 1, !mcsema_real_eip !130
  %611 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %611, i1* %OF, align 1, !mcsema_real_eip !130
  %612 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %612, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %613 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %613, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %614 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %614, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %615 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %615, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %616 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %616, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %617 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %617, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %618 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %618, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %619 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %619, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %620 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %620, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %621 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %621, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %622 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %622, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %623 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %623, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %624 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %624, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %625 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %625, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %626 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %626, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %627 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %627, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %628 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %628, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %629 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %629, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %630, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %631, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %632, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %633, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %634 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %635 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %635, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %636 = load i64, i64* %53, align 4
  store i64 %636, i64* %52, align 4
  %637 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %637, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %638 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %638, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %639 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %639, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %640 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %640, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %641 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !130
  store i11 %641, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !130
  %642 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %642, i128* %XMM0, align 1, !mcsema_real_eip !130
  %643 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %643, i128* %XMM1, align 1, !mcsema_real_eip !130
  %644 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %644, i128* %XMM2, align 1, !mcsema_real_eip !130
  %645 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %645, i128* %XMM3, align 1, !mcsema_real_eip !130
  %646 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %646, i128* %XMM4, align 1, !mcsema_real_eip !130
  %647 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %647, i128* %XMM5, align 1, !mcsema_real_eip !130
  %648 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %648, i128* %XMM6, align 1, !mcsema_real_eip !130
  %649 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %649, i128* %XMM7, align 1, !mcsema_real_eip !130
  %650 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %650, i128* %XMM8, align 1, !mcsema_real_eip !130
  %651 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %651, i128* %XMM9, align 1, !mcsema_real_eip !130
  %652 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %652, i128* %XMM10, align 1, !mcsema_real_eip !130
  %653 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %653, i128* %XMM11, align 1, !mcsema_real_eip !130
  %654 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %654, i128* %XMM12, align 1, !mcsema_real_eip !130
  %655 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %655, i128* %XMM13, align 1, !mcsema_real_eip !130
  %656 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %656, i128* %XMM14, align 1, !mcsema_real_eip !130
  %657 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %657, i128* %XMM15, align 1, !mcsema_real_eip !130
  %658 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %658, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %659 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %659, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_110(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !53
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !53
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !53
  %XMM15_val = alloca i128, !mcsema_real_eip !53
  %XMM14_val = alloca i128, !mcsema_real_eip !53
  %XMM13_val = alloca i128, !mcsema_real_eip !53
  %XMM12_val = alloca i128, !mcsema_real_eip !53
  %XMM11_val = alloca i128, !mcsema_real_eip !53
  %XMM10_val = alloca i128, !mcsema_real_eip !53
  %XMM9_val = alloca i128, !mcsema_real_eip !53
  %XMM8_val = alloca i128, !mcsema_real_eip !53
  %XMM7_val = alloca i128, !mcsema_real_eip !53
  %XMM6_val = alloca i128, !mcsema_real_eip !53
  %XMM5_val = alloca i128, !mcsema_real_eip !53
  %XMM4_val = alloca i128, !mcsema_real_eip !53
  %XMM3_val = alloca i128, !mcsema_real_eip !53
  %XMM2_val = alloca i128, !mcsema_real_eip !53
  %XMM1_val = alloca i128, !mcsema_real_eip !53
  %XMM0_val = alloca i128, !mcsema_real_eip !53
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %FPU_IM_val = alloca i1, !mcsema_real_eip !53
  %FPU_DM_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !53
  %FPU_OM_val = alloca i1, !mcsema_real_eip !53
  %FPU_UM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PC_val = alloca i2, !mcsema_real_eip !53
  %FPU_RC_val = alloca i2, !mcsema_real_eip !53
  %FPU_X_val = alloca i1, !mcsema_real_eip !53
  %FPU_IE_val = alloca i1, !mcsema_real_eip !53
  %FPU_DE_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !53
  %FPU_OE_val = alloca i1, !mcsema_real_eip !53
  %FPU_UE_val = alloca i1, !mcsema_real_eip !53
  %FPU_PE_val = alloca i1, !mcsema_real_eip !53
  %FPU_SF_val = alloca i1, !mcsema_real_eip !53
  %FPU_ES_val = alloca i1, !mcsema_real_eip !53
  %FPU_C0_val = alloca i1, !mcsema_real_eip !53
  %FPU_C1_val = alloca i1, !mcsema_real_eip !53
  %FPU_C2_val = alloca i1, !mcsema_real_eip !53
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !53
  %FPU_C3_val = alloca i1, !mcsema_real_eip !53
  %FPU_B_val = alloca i1, !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %DF_val = alloca i1, !mcsema_real_eip !53
  %OF_val = alloca i1, !mcsema_real_eip !53
  %SF_val = alloca i1, !mcsema_real_eip !53
  %CF_val = alloca i1, !mcsema_real_eip !53
  %AF_val = alloca i1, !mcsema_real_eip !53
  %PF_val = alloca i1, !mcsema_real_eip !53
  %ZF_val = alloca i1, !mcsema_real_eip !53
  %RIP_val = alloca i64, !mcsema_real_eip !53
  %R14_val = alloca i64, !mcsema_real_eip !53
  %R13_val = alloca i64, !mcsema_real_eip !53
  %R12_val = alloca i64, !mcsema_real_eip !53
  %R11_val = alloca i64, !mcsema_real_eip !53
  %R10_val = alloca i64, !mcsema_real_eip !53
  %R9_val = alloca i64, !mcsema_real_eip !53
  %R8_val = alloca i64, !mcsema_real_eip !53
  %RSP_val = alloca i64, !mcsema_real_eip !53
  %RBP_val = alloca i64, !mcsema_real_eip !53
  %RDI_val = alloca i64, !mcsema_real_eip !53
  %RSI_val = alloca i64, !mcsema_real_eip !53
  %RDX_val = alloca i64, !mcsema_real_eip !53
  %RCX_val = alloca i64, !mcsema_real_eip !53
  %RBX_val = alloca i64, !mcsema_real_eip !53
  %RAX_val = alloca i64, !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %1 = load i64, i64* %RAX, !mcsema_real_eip !53
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %2 = load i64, i64* %RBX, !mcsema_real_eip !53
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %3 = load i64, i64* %RCX, !mcsema_real_eip !53
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %4 = load i64, i64* %RDX, !mcsema_real_eip !53
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %5 = load i64, i64* %RSI, !mcsema_real_eip !53
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %6 = load i64, i64* %RDI, !mcsema_real_eip !53
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %7 = load i64, i64* %RSP, !mcsema_real_eip !53
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !53
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %8 = load i64, i64* %RBP, !mcsema_real_eip !53
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %9 = load i64, i64* %R8, !mcsema_real_eip !53
  store i64 %9, i64* %R8_val, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %10 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %10, i64* %R9_val, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %11 = load i64, i64* %R10, !mcsema_real_eip !53
  store i64 %11, i64* %R10_val, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %12 = load i64, i64* %R11, !mcsema_real_eip !53
  store i64 %12, i64* %R11_val, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %13 = load i64, i64* %R12, !mcsema_real_eip !53
  store i64 %13, i64* %R12_val, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %14 = load i64, i64* %R13, !mcsema_real_eip !53
  store i64 %14, i64* %R13_val, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %15 = load i64, i64* %R14, !mcsema_real_eip !53
  store i64 %15, i64* %R14_val, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %16 = load i64, i64* %R15, !mcsema_real_eip !53
  store i64 %16, i64* %R15_val, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %17 = load i64, i64* %RIP, !mcsema_real_eip !53
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %18, i1* %CF_val, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %19, i1* %PF_val, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %20, i1* %AF_val, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %22, i1* %SF_val, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %23, i1* %OF_val, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %24, i1* %DF_val, !mcsema_real_eip !53
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !53
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !53
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !53
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !53
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !53
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !54
  %84 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %85 = add i64 %81, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !55
  store i64 %84, i64* %_allin_new_bt_2, !mcsema_real_eip !55
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %85, i64* %RSP_val, !mcsema_real_eip !55
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 48
  %88 = add i64 %87, 48, !mcsema_real_eip !56
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !56
  %_ptr_to_int_132 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_local_end_to_int_133 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_134 = bitcast i64* %_allin_new_bt_5 to i8*
  %_offset_above_rbp_135 = sub i64 %_ptr_to_int_132, %_local_end_to_int_133
  %_pot_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_cond1_137 = icmp ugt i8* %_ptr_bt_134, %_local_stack_end_ptr_
  %_cond2_1_138 = icmp ugt i8* %_ptr_bt_134, %_parent_stack_end_ptr_
  %_cond2_2_139 = icmp ult i8* %_ptr_bt_134, %_parent_stack_start_ptr_
  %_cond2_140 = or i1 %_cond2_1_138, %_cond2_2_139
  %_cond4_141 = icmp ule i8* %_pot_address_in_parent_stack_136, %_parent_stack_end_ptr_
  %_cond1_n_cond2_142 = and i1 %_cond1_137, %_cond2_140
  %_cond1_n_cond2_cond3_143 = and i1 %_cond1_n_cond2_142, %_cond4_141
  br i1 %_cond1_n_cond2_cond3_143, label %90, label %91

; <label>:90:                                     ; preds = %55
  %_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_address_in_parent_stack_bt_145 = bitcast i8* %_address_in_parent_stack_144 to i64*
  br label %91

; <label>:91:                                     ; preds = %55, %90
  %92 = phi i64* [ %_allin_new_bt_5, %55 ], [ %_address_in_parent_stack_bt_145, %90 ]
  %_new_load_146 = load i64, i64* %92
  store i64 %_new_load_146, i64* %RAX_val, !mcsema_real_eip !56
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %93 = add i64 %87, 40, !mcsema_real_eip !57
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !57
  %_ptr_to_int_147 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_local_end_to_int_148 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_149 = bitcast i64* %_allin_new_bt_7 to i8*
  %_offset_above_rbp_150 = sub i64 %_ptr_to_int_147, %_local_end_to_int_148
  %_pot_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_cond1_152 = icmp ugt i8* %_ptr_bt_149, %_local_stack_end_ptr_
  %_cond2_1_153 = icmp ugt i8* %_ptr_bt_149, %_parent_stack_end_ptr_
  %_cond2_2_154 = icmp ult i8* %_ptr_bt_149, %_parent_stack_start_ptr_
  %_cond2_155 = or i1 %_cond2_1_153, %_cond2_2_154
  %_cond4_156 = icmp ule i8* %_pot_address_in_parent_stack_151, %_parent_stack_end_ptr_
  %_cond1_n_cond2_157 = and i1 %_cond1_152, %_cond2_155
  %_cond1_n_cond2_cond3_158 = and i1 %_cond1_n_cond2_157, %_cond4_156
  br i1 %_cond1_n_cond2_cond3_158, label %95, label %96

; <label>:95:                                     ; preds = %91
  %_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_address_in_parent_stack_bt_160 = bitcast i8* %_address_in_parent_stack_159 to i64*
  br label %96

; <label>:96:                                     ; preds = %91, %95
  %97 = phi i64* [ %_allin_new_bt_7, %91 ], [ %_address_in_parent_stack_bt_160, %95 ]
  %_new_load_161 = load i64, i64* %97
  store i64 %_new_load_161, i64* %R10_val, !mcsema_real_eip !57
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 24
  %99 = add i64 %98, 24, !mcsema_real_eip !58
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !58
  %101 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !58
  store i64 %101, i64* %R11_val, !mcsema_real_eip !58
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 16
  %102 = add i64 %98, 16, !mcsema_real_eip !59
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !59
  %104 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_162 = ptrtoint i32* %104 to i64
  %_local_end_to_int_163 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_164 = bitcast i32* %104 to i8*
  %_offset_above_rbp_165 = sub i64 %_ptr_to_int_162, %_local_end_to_int_163
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_ptr_bt_164, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_ptr_bt_164, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_ptr_bt_164, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  br i1 %_cond1_n_cond2_cond3_173, label %105, label %106

; <label>:105:                                    ; preds = %96
  %_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_address_in_parent_stack_bt_175 = bitcast i8* %_address_in_parent_stack_174 to i32*
  br label %106

; <label>:106:                                    ; preds = %96, %105
  %107 = phi i32* [ %104, %96 ], [ %_address_in_parent_stack_bt_175, %105 ]
  %_new_load_176 = load i32, i32* %107
  %108 = zext i32 %_new_load_176 to i64, !mcsema_real_eip !59
  store i64 %108, i64* %RBX_val, !mcsema_real_eip !59
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -56
  %110 = add i64 %109, -56, !mcsema_real_eip !60
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !60
  %112 = load i64, i64* %RDI_val, !mcsema_real_eip !60
  store i64 %112, i64* %_allin_new_bt_15, !mcsema_real_eip !60
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -48
  %114 = add i64 %113, -48, !mcsema_real_eip !61
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !61
  %116 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %117 = trunc i64 %116 to i32, !mcsema_real_eip !61
  %118 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %117, i32* %118, !mcsema_real_eip !61
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %120 = add i64 %119, -32, !mcsema_real_eip !62
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !62
  %122 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %123 = trunc i64 %122 to i32, !mcsema_real_eip !62
  %124 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %123, i32* %124, !mcsema_real_eip !62
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -56
  %126 = add i64 %125, -56, !mcsema_real_eip !63
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !63
  %_ptr_to_int_177 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_local_end_to_int_178 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_179 = bitcast i64* %_allin_new_bt_24 to i8*
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %_local_end_to_int_178
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_ptr_bt_179, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_ptr_bt_179, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_ptr_bt_179, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  br i1 %_cond1_n_cond2_cond3_188, label %128, label %129

; <label>:128:                                    ; preds = %106
  %_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_address_in_parent_stack_bt_190 = bitcast i8* %_address_in_parent_stack_189 to i64*
  br label %129

; <label>:129:                                    ; preds = %106, %128
  %130 = phi i64* [ %_allin_new_bt_24, %106 ], [ %_address_in_parent_stack_bt_190, %128 ]
  %_new_load_191 = load i64, i64* %130
  store i64 %_new_load_191, i64* %RDI_val, !mcsema_real_eip !63
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -40
  %131 = add i64 %125, -40, !mcsema_real_eip !64
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !64
  store i64 %_new_load_191, i64* %_allin_new_bt_26, !mcsema_real_eip !64
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -64
  %134 = add i64 %133, -64, !mcsema_real_eip !65
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !65
  %136 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %136, i64* %_allin_new_bt_29, !mcsema_real_eip !65
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -72
  %138 = add i64 %137, -72, !mcsema_real_eip !66
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !66
  %140 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %140, i64* %_allin_new_bt_32, !mcsema_real_eip !66
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -76
  %142 = add i64 %141, -76, !mcsema_real_eip !67
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !67
  %144 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %145 = trunc i64 %144 to i32, !mcsema_real_eip !67
  %146 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %145, i32* %146, !mcsema_real_eip !67
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -80
  %148 = add i64 %147, -80, !mcsema_real_eip !68
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !68
  %150 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %151 = trunc i64 %150 to i32, !mcsema_real_eip !68
  %152 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %151, i32* %152, !mcsema_real_eip !68
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -84
  %154 = add i64 %153, -84, !mcsema_real_eip !69
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !69
  %156 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %157 = trunc i64 %156 to i32, !mcsema_real_eip !69
  %158 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %157, i32* %158, !mcsema_real_eip !69
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -96
  %160 = add i64 %159, -96, !mcsema_real_eip !70
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !70
  %162 = load i64, i64* %R10_val, !mcsema_real_eip !70
  store i64 %162, i64* %_allin_new_bt_44, !mcsema_real_eip !70
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -104
  %164 = add i64 %163, -104, !mcsema_real_eip !71
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !71
  %166 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %166, i64* %_allin_new_bt_47, !mcsema_real_eip !71
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -40
  %168 = add i64 %167, -40, !mcsema_real_eip !72
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !72
  %170 = bitcast i64* %_allin_new_bt_50 to i32*
  %_ptr_to_int_192 = ptrtoint i32* %170 to i64
  %_local_end_to_int_193 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_194 = bitcast i32* %170 to i8*
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_193
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_ptr_bt_194, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_ptr_bt_194, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_ptr_bt_194, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %171, label %172

; <label>:171:                                    ; preds = %129
  %_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_address_in_parent_stack_bt_205 = bitcast i8* %_address_in_parent_stack_204 to i32*
  br label %172

; <label>:172:                                    ; preds = %129, %171
  %173 = phi i32* [ %170, %129 ], [ %_address_in_parent_stack_bt_205, %171 ]
  %_new_load_206 = load i32, i32* %173
  %174 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !72
  store i64 %174, i64* %RSI_val, !mcsema_real_eip !72
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -64
  %176 = add i64 %175, -64, !mcsema_real_eip !73
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !73
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_53 to i64
  %_local_end_to_int_208 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_209 = bitcast i64* %_allin_new_bt_53 to i8*
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_208
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_ptr_bt_209, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_ptr_bt_209, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_ptr_bt_209, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %178, label %179

; <label>:178:                                    ; preds = %172
  %_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_address_in_parent_stack_bt_220 = bitcast i8* %_address_in_parent_stack_219 to i64*
  br label %179

; <label>:179:                                    ; preds = %172, %178
  %180 = phi i64* [ %_allin_new_bt_53, %172 ], [ %_address_in_parent_stack_bt_220, %178 ]
  %_new_load_221 = load i64, i64* %180
  store i64 %_new_load_221, i64* %RCX_val, !mcsema_real_eip !73
  %181 = inttoptr i64 %_new_load_221 to i64*, !mcsema_real_eip !74
  %182 = bitcast i64* %181 to i32*
  %_ptr_to_int_222 = ptrtoint i32* %182 to i64
  %_local_end_to_int_223 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_224 = bitcast i32* %182 to i8*
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_223
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_ptr_bt_224, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_ptr_bt_224, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_ptr_bt_224, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %183, label %184

; <label>:183:                                    ; preds = %179
  %_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_address_in_parent_stack_bt_235 = bitcast i8* %_address_in_parent_stack_234 to i32*
  br label %184

; <label>:184:                                    ; preds = %179, %183
  %185 = phi i32* [ %182, %179 ], [ %_address_in_parent_stack_bt_235, %183 ]
  %_new_load_236 = load i32, i32* %185
  %186 = zext i32 %_new_load_236 to i64, !mcsema_real_eip !74
  store i64 %186, i64* %R8_val, !mcsema_real_eip !74
  %187 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %188 = trunc i64 %187 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_236, i32 %188)
  %189 = extractvalue { i32, i1 } %uadd, 0
  %190 = xor i32 %189, %188, !mcsema_real_eip !75
  %191 = xor i32 %190, %_new_load_236, !mcsema_real_eip !75
  %192 = and i32 %191, 16, !mcsema_real_eip !75
  %193 = icmp ne i32 %192, 0, !mcsema_real_eip !75
  store i1 %193, i1* %AF_val, !mcsema_real_eip !75
  %194 = icmp slt i32 %189, 0
  store i1 %194, i1* %SF_val, !mcsema_real_eip !75
  %195 = icmp eq i32 %189, 0, !mcsema_real_eip !75
  store i1 %195, i1* %ZF_val, !mcsema_real_eip !75
  %196 = xor i32 %_new_load_236, -2147483648, !mcsema_real_eip !75
  %197 = xor i32 %196, %188, !mcsema_real_eip !75
  %198 = and i32 %190, %197, !mcsema_real_eip !75
  %199 = icmp slt i32 %198, 0
  store i1 %199, i1* %OF_val, !mcsema_real_eip !75
  %200 = trunc i32 %189 to i8, !mcsema_real_eip !75
  %201 = tail call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !75
  %202 = and i8 %201, 1
  %203 = icmp eq i8 %202, 0
  store i1 %203, i1* %PF_val, !mcsema_real_eip !75
  %204 = extractvalue { i32, i1 } %uadd, 1
  store i1 %204, i1* %CF_val, !mcsema_real_eip !75
  %205 = zext i32 %189 to i64, !mcsema_real_eip !75
  store i64 %205, i64* %RSI_val, !mcsema_real_eip !75
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %206 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -72
  %207 = add i64 %206, -72, !mcsema_real_eip !76
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !76
  %_ptr_to_int_237 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_local_end_to_int_238 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_239 = bitcast i64* %_allin_new_bt_56 to i8*
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %_local_end_to_int_238
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_ptr_bt_239, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_ptr_bt_239, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_ptr_bt_239, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  br i1 %_cond1_n_cond2_cond3_248, label %209, label %210

; <label>:209:                                    ; preds = %184
  %_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_address_in_parent_stack_bt_250 = bitcast i8* %_address_in_parent_stack_249 to i64*
  br label %210

; <label>:210:                                    ; preds = %184, %209
  %211 = phi i64* [ %_allin_new_bt_56, %184 ], [ %_address_in_parent_stack_bt_250, %209 ]
  %_new_load_251 = load i64, i64* %211
  store i64 %_new_load_251, i64* %RCX_val, !mcsema_real_eip !76
  %212 = inttoptr i64 %_new_load_251 to i64*, !mcsema_real_eip !77
  %213 = bitcast i64* %212 to i32*
  %_ptr_to_int_252 = ptrtoint i32* %213 to i64
  %_local_end_to_int_253 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_254 = bitcast i32* %213 to i8*
  %_offset_above_rbp_255 = sub i64 %_ptr_to_int_252, %_local_end_to_int_253
  %_pot_address_in_parent_stack_256 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_cond1_257 = icmp ugt i8* %_ptr_bt_254, %_local_stack_end_ptr_
  %_cond2_1_258 = icmp ugt i8* %_ptr_bt_254, %_parent_stack_end_ptr_
  %_cond2_2_259 = icmp ult i8* %_ptr_bt_254, %_parent_stack_start_ptr_
  %_cond2_260 = or i1 %_cond2_1_258, %_cond2_2_259
  %_cond4_261 = icmp ule i8* %_pot_address_in_parent_stack_256, %_parent_stack_end_ptr_
  %_cond1_n_cond2_262 = and i1 %_cond1_257, %_cond2_260
  %_cond1_n_cond2_cond3_263 = and i1 %_cond1_n_cond2_262, %_cond4_261
  br i1 %_cond1_n_cond2_cond3_263, label %214, label %215

; <label>:214:                                    ; preds = %210
  %_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_address_in_parent_stack_bt_265 = bitcast i8* %_address_in_parent_stack_264 to i32*
  br label %215

; <label>:215:                                    ; preds = %210, %214
  %216 = phi i32* [ %213, %210 ], [ %_address_in_parent_stack_bt_265, %214 ]
  %_new_load_266 = load i32, i32* %216
  %217 = zext i32 %_new_load_266 to i64, !mcsema_real_eip !77
  store i64 %217, i64* %R8_val, !mcsema_real_eip !77
  %218 = load i64, i64* %RSI_val, !mcsema_real_eip !78
  %219 = trunc i64 %218 to i32, !mcsema_real_eip !78
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_266, i32 %219)
  %220 = extractvalue { i32, i1 } %uadd71, 0
  %221 = xor i32 %220, %219, !mcsema_real_eip !78
  %222 = xor i32 %221, %_new_load_266, !mcsema_real_eip !78
  %223 = and i32 %222, 16, !mcsema_real_eip !78
  %224 = icmp ne i32 %223, 0, !mcsema_real_eip !78
  store i1 %224, i1* %AF_val, !mcsema_real_eip !78
  %225 = icmp slt i32 %220, 0
  store i1 %225, i1* %SF_val, !mcsema_real_eip !78
  %226 = icmp eq i32 %220, 0, !mcsema_real_eip !78
  store i1 %226, i1* %ZF_val, !mcsema_real_eip !78
  %227 = xor i32 %_new_load_266, -2147483648, !mcsema_real_eip !78
  %228 = xor i32 %227, %219, !mcsema_real_eip !78
  %229 = and i32 %221, %228, !mcsema_real_eip !78
  %230 = icmp slt i32 %229, 0
  store i1 %230, i1* %OF_val, !mcsema_real_eip !78
  %231 = trunc i32 %220 to i8, !mcsema_real_eip !78
  %232 = tail call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !78
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  store i1 %234, i1* %PF_val, !mcsema_real_eip !78
  %235 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %235, i1* %CF_val, !mcsema_real_eip !78
  %236 = zext i32 %220 to i64, !mcsema_real_eip !78
  store i64 %236, i64* %RSI_val, !mcsema_real_eip !78
  %237 = load i64, i64* %R11_val, !mcsema_real_eip !79
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !79
  %239 = bitcast i64* %238 to i32*
  %_ptr_to_int_267 = ptrtoint i32* %239 to i64
  %_local_end_to_int_268 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_269 = bitcast i32* %239 to i8*
  %_offset_above_rbp_270 = sub i64 %_ptr_to_int_267, %_local_end_to_int_268
  %_pot_address_in_parent_stack_271 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_cond1_272 = icmp ugt i8* %_ptr_bt_269, %_local_stack_end_ptr_
  %_cond2_1_273 = icmp ugt i8* %_ptr_bt_269, %_parent_stack_end_ptr_
  %_cond2_2_274 = icmp ult i8* %_ptr_bt_269, %_parent_stack_start_ptr_
  %_cond2_275 = or i1 %_cond2_1_273, %_cond2_2_274
  %_cond4_276 = icmp ule i8* %_pot_address_in_parent_stack_271, %_parent_stack_end_ptr_
  %_cond1_n_cond2_277 = and i1 %_cond1_272, %_cond2_275
  %_cond1_n_cond2_cond3_278 = and i1 %_cond1_n_cond2_277, %_cond4_276
  br i1 %_cond1_n_cond2_cond3_278, label %240, label %241

; <label>:240:                                    ; preds = %215
  %_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_address_in_parent_stack_bt_280 = bitcast i8* %_address_in_parent_stack_279 to i32*
  br label %241

; <label>:241:                                    ; preds = %215, %240
  %242 = phi i32* [ %239, %215 ], [ %_address_in_parent_stack_bt_280, %240 ]
  %_new_load_281 = load i32, i32* %242
  %243 = zext i32 %_new_load_281 to i64, !mcsema_real_eip !79
  store i64 %243, i64* %R8_val, !mcsema_real_eip !79
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %244 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -96
  %245 = add i64 %244, -96, !mcsema_real_eip !80
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !80
  %_ptr_to_int_282 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_local_end_to_int_283 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_284 = bitcast i64* %_allin_new_bt_59 to i8*
  %_offset_above_rbp_285 = sub i64 %_ptr_to_int_282, %_local_end_to_int_283
  %_pot_address_in_parent_stack_286 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_cond1_287 = icmp ugt i8* %_ptr_bt_284, %_local_stack_end_ptr_
  %_cond2_1_288 = icmp ugt i8* %_ptr_bt_284, %_parent_stack_end_ptr_
  %_cond2_2_289 = icmp ult i8* %_ptr_bt_284, %_parent_stack_start_ptr_
  %_cond2_290 = or i1 %_cond2_1_288, %_cond2_2_289
  %_cond4_291 = icmp ule i8* %_pot_address_in_parent_stack_286, %_parent_stack_end_ptr_
  %_cond1_n_cond2_292 = and i1 %_cond1_287, %_cond2_290
  %_cond1_n_cond2_cond3_293 = and i1 %_cond1_n_cond2_292, %_cond4_291
  br i1 %_cond1_n_cond2_cond3_293, label %247, label %248

; <label>:247:                                    ; preds = %241
  %_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_address_in_parent_stack_bt_295 = bitcast i8* %_address_in_parent_stack_294 to i64*
  br label %248

; <label>:248:                                    ; preds = %241, %247
  %249 = phi i64* [ %_allin_new_bt_59, %241 ], [ %_address_in_parent_stack_bt_295, %247 ]
  %_new_load_296 = load i64, i64* %249
  store i64 %_new_load_296, i64* %RCX_val, !mcsema_real_eip !80
  %250 = inttoptr i64 %_new_load_296 to i64*, !mcsema_real_eip !81
  %251 = bitcast i64* %250 to i32*
  %_ptr_to_int_297 = ptrtoint i32* %251 to i64
  %_local_end_to_int_298 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_299 = bitcast i32* %251 to i8*
  %_offset_above_rbp_300 = sub i64 %_ptr_to_int_297, %_local_end_to_int_298
  %_pot_address_in_parent_stack_301 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_cond1_302 = icmp ugt i8* %_ptr_bt_299, %_local_stack_end_ptr_
  %_cond2_1_303 = icmp ugt i8* %_ptr_bt_299, %_parent_stack_end_ptr_
  %_cond2_2_304 = icmp ult i8* %_ptr_bt_299, %_parent_stack_start_ptr_
  %_cond2_305 = or i1 %_cond2_1_303, %_cond2_2_304
  %_cond4_306 = icmp ule i8* %_pot_address_in_parent_stack_301, %_parent_stack_end_ptr_
  %_cond1_n_cond2_307 = and i1 %_cond1_302, %_cond2_305
  %_cond1_n_cond2_cond3_308 = and i1 %_cond1_n_cond2_307, %_cond4_306
  br i1 %_cond1_n_cond2_cond3_308, label %252, label %253

; <label>:252:                                    ; preds = %248
  %_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_address_in_parent_stack_bt_310 = bitcast i8* %_address_in_parent_stack_309 to i32*
  br label %253

; <label>:253:                                    ; preds = %248, %252
  %254 = phi i32* [ %251, %248 ], [ %_address_in_parent_stack_bt_310, %252 ]
  %_new_load_311 = load i32, i32* %254
  %255 = zext i32 %_new_load_311 to i64, !mcsema_real_eip !81
  store i64 %255, i64* %R9_val, !mcsema_real_eip !81
  %256 = load i64, i64* %R8_val, !mcsema_real_eip !82
  %257 = trunc i64 %256 to i32, !mcsema_real_eip !82
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_311, i32 %257)
  %258 = extractvalue { i32, i1 } %uadd72, 0
  %259 = xor i32 %258, %257, !mcsema_real_eip !82
  %260 = xor i32 %259, %_new_load_311, !mcsema_real_eip !82
  %261 = and i32 %260, 16, !mcsema_real_eip !82
  %262 = icmp ne i32 %261, 0, !mcsema_real_eip !82
  store i1 %262, i1* %AF_val, !mcsema_real_eip !82
  %263 = icmp slt i32 %258, 0
  store i1 %263, i1* %SF_val, !mcsema_real_eip !82
  %264 = icmp eq i32 %258, 0, !mcsema_real_eip !82
  store i1 %264, i1* %ZF_val, !mcsema_real_eip !82
  %265 = xor i32 %_new_load_311, -2147483648, !mcsema_real_eip !82
  %266 = xor i32 %265, %257, !mcsema_real_eip !82
  %267 = and i32 %259, %266, !mcsema_real_eip !82
  %268 = icmp slt i32 %267, 0
  store i1 %268, i1* %OF_val, !mcsema_real_eip !82
  %269 = trunc i32 %258 to i8, !mcsema_real_eip !82
  %270 = tail call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !82
  %271 = and i8 %270, 1
  %272 = icmp eq i8 %271, 0
  store i1 %272, i1* %PF_val, !mcsema_real_eip !82
  %273 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %273, i1* %CF_val, !mcsema_real_eip !82
  %274 = zext i32 %258 to i64, !mcsema_real_eip !82
  store i64 %274, i64* %R8_val, !mcsema_real_eip !82
  %275 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !83
  %277 = bitcast i64* %276 to i32*
  %_ptr_to_int_312 = ptrtoint i32* %277 to i64
  %_local_end_to_int_313 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_314 = bitcast i32* %277 to i8*
  %_offset_above_rbp_315 = sub i64 %_ptr_to_int_312, %_local_end_to_int_313
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_ptr_bt_314, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_ptr_bt_314, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_ptr_bt_314, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  br i1 %_cond1_n_cond2_cond3_323, label %278, label %279

; <label>:278:                                    ; preds = %253
  %_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_address_in_parent_stack_bt_325 = bitcast i8* %_address_in_parent_stack_324 to i32*
  br label %279

; <label>:279:                                    ; preds = %253, %278
  %280 = phi i32* [ %277, %253 ], [ %_address_in_parent_stack_bt_325, %278 ]
  %_new_load_326 = load i32, i32* %280
  %281 = zext i32 %_new_load_326 to i64, !mcsema_real_eip !83
  store i64 %281, i64* %R9_val, !mcsema_real_eip !83
  %282 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %283 = trunc i64 %282 to i32, !mcsema_real_eip !84
  %284 = add i32 %_new_load_326, %283
  %285 = zext i32 %284 to i64, !mcsema_real_eip !84
  store i64 %285, i64* %R8_val, !mcsema_real_eip !84
  %286 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  %287 = trunc i64 %286 to i32, !mcsema_real_eip !85
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %284, i32 %287)
  %288 = extractvalue { i32, i1 } %uadd74, 0
  %289 = xor i32 %288, %287, !mcsema_real_eip !85
  %290 = xor i32 %289, %284, !mcsema_real_eip !85
  %291 = and i32 %290, 16, !mcsema_real_eip !85
  %292 = icmp ne i32 %291, 0, !mcsema_real_eip !85
  store i1 %292, i1* %AF_val, !mcsema_real_eip !85
  %293 = icmp slt i32 %288, 0
  store i1 %293, i1* %SF_val, !mcsema_real_eip !85
  %294 = icmp eq i32 %288, 0, !mcsema_real_eip !85
  store i1 %294, i1* %ZF_val, !mcsema_real_eip !85
  %295 = xor i32 %284, -2147483648, !mcsema_real_eip !85
  %296 = xor i32 %295, %287, !mcsema_real_eip !85
  %297 = and i32 %289, %296, !mcsema_real_eip !85
  %298 = icmp slt i32 %297, 0
  store i1 %298, i1* %OF_val, !mcsema_real_eip !85
  %299 = trunc i32 %288 to i8, !mcsema_real_eip !85
  %300 = tail call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !85
  %301 = and i8 %300, 1
  %302 = icmp eq i8 %301, 0
  store i1 %302, i1* %PF_val, !mcsema_real_eip !85
  %303 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %303, i1* %CF_val, !mcsema_real_eip !85
  %304 = zext i32 %288 to i64, !mcsema_real_eip !85
  store i64 %304, i64* %RSI_val, !mcsema_real_eip !85
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %305 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -120
  %306 = add i64 %305, -120, !mcsema_real_eip !86
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !86
  %308 = bitcast i64* %_allin_new_bt_62 to i32*
  store i32 %288, i32* %308, !mcsema_real_eip !86
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %309 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -36
  %310 = add i64 %309, -36, !mcsema_real_eip !87
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !87
  %312 = bitcast i64* %_allin_new_bt_65 to i32*
  %_ptr_to_int_327 = ptrtoint i32* %312 to i64
  %_local_end_to_int_328 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_329 = bitcast i32* %312 to i8*
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %_local_end_to_int_328
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_ptr_bt_329, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_ptr_bt_329, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_ptr_bt_329, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  br i1 %_cond1_n_cond2_cond3_338, label %313, label %314

; <label>:313:                                    ; preds = %279
  %_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_address_in_parent_stack_bt_340 = bitcast i8* %_address_in_parent_stack_339 to i32*
  br label %314

; <label>:314:                                    ; preds = %279, %313
  %315 = phi i32* [ %312, %279 ], [ %_address_in_parent_stack_bt_340, %313 ]
  %_new_load_341 = load i32, i32* %315
  %316 = zext i32 %_new_load_341 to i64, !mcsema_real_eip !87
  store i64 %316, i64* %RSI_val, !mcsema_real_eip !87
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %317 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -64
  %318 = add i64 %317, -64, !mcsema_real_eip !88
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !88
  %_ptr_to_int_342 = ptrtoint i64* %_allin_new_bt_68 to i64
  %_local_end_to_int_343 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_344 = bitcast i64* %_allin_new_bt_68 to i8*
  %_offset_above_rbp_345 = sub i64 %_ptr_to_int_342, %_local_end_to_int_343
  %_pot_address_in_parent_stack_346 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_cond1_347 = icmp ugt i8* %_ptr_bt_344, %_local_stack_end_ptr_
  %_cond2_1_348 = icmp ugt i8* %_ptr_bt_344, %_parent_stack_end_ptr_
  %_cond2_2_349 = icmp ult i8* %_ptr_bt_344, %_parent_stack_start_ptr_
  %_cond2_350 = or i1 %_cond2_1_348, %_cond2_2_349
  %_cond4_351 = icmp ule i8* %_pot_address_in_parent_stack_346, %_parent_stack_end_ptr_
  %_cond1_n_cond2_352 = and i1 %_cond1_347, %_cond2_350
  %_cond1_n_cond2_cond3_353 = and i1 %_cond1_n_cond2_352, %_cond4_351
  br i1 %_cond1_n_cond2_cond3_353, label %320, label %321

; <label>:320:                                    ; preds = %314
  %_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_address_in_parent_stack_bt_355 = bitcast i8* %_address_in_parent_stack_354 to i64*
  br label %321

; <label>:321:                                    ; preds = %314, %320
  %322 = phi i64* [ %_allin_new_bt_68, %314 ], [ %_address_in_parent_stack_bt_355, %320 ]
  %_new_load_356 = load i64, i64* %322
  store i64 %_new_load_356, i64* %RAX_val, !mcsema_real_eip !88
  %323 = add i64 %_new_load_356, 4, !mcsema_real_eip !89
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !89
  %325 = bitcast i64* %324 to i32*
  %_ptr_to_int_357 = ptrtoint i32* %325 to i64
  %_local_end_to_int_358 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_359 = bitcast i32* %325 to i8*
  %_offset_above_rbp_360 = sub i64 %_ptr_to_int_357, %_local_end_to_int_358
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_ptr_bt_359, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_ptr_bt_359, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_ptr_bt_359, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  br i1 %_cond1_n_cond2_cond3_368, label %326, label %327

; <label>:326:                                    ; preds = %321
  %_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_address_in_parent_stack_bt_370 = bitcast i8* %_address_in_parent_stack_369 to i32*
  br label %327

; <label>:327:                                    ; preds = %321, %326
  %328 = phi i32* [ %325, %321 ], [ %_address_in_parent_stack_bt_370, %326 ]
  %_new_load_371 = load i32, i32* %328
  %329 = zext i32 %_new_load_371 to i64, !mcsema_real_eip !89
  store i64 %329, i64* %R8_val, !mcsema_real_eip !89
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !90
  %331 = trunc i64 %330 to i32, !mcsema_real_eip !90
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_371, i32 %331)
  %332 = extractvalue { i32, i1 } %uadd75, 0
  %333 = xor i32 %332, %331, !mcsema_real_eip !90
  %334 = xor i32 %333, %_new_load_371, !mcsema_real_eip !90
  %335 = and i32 %334, 16, !mcsema_real_eip !90
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !90
  store i1 %336, i1* %AF_val, !mcsema_real_eip !90
  %337 = icmp slt i32 %332, 0
  store i1 %337, i1* %SF_val, !mcsema_real_eip !90
  %338 = icmp eq i32 %332, 0, !mcsema_real_eip !90
  store i1 %338, i1* %ZF_val, !mcsema_real_eip !90
  %339 = xor i32 %_new_load_371, -2147483648, !mcsema_real_eip !90
  %340 = xor i32 %339, %331, !mcsema_real_eip !90
  %341 = and i32 %333, %340, !mcsema_real_eip !90
  %342 = icmp slt i32 %341, 0
  store i1 %342, i1* %OF_val, !mcsema_real_eip !90
  %343 = trunc i32 %332 to i8, !mcsema_real_eip !90
  %344 = tail call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !90
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  store i1 %346, i1* %PF_val, !mcsema_real_eip !90
  %347 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %347, i1* %CF_val, !mcsema_real_eip !90
  %348 = zext i32 %332 to i64, !mcsema_real_eip !90
  store i64 %348, i64* %RSI_val, !mcsema_real_eip !90
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %349 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -72
  %350 = add i64 %349, -72, !mcsema_real_eip !91
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !91
  %_ptr_to_int_372 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_local_end_to_int_373 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_374 = bitcast i64* %_allin_new_bt_71 to i8*
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_373
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_ptr_bt_374, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_ptr_bt_374, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_ptr_bt_374, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  br i1 %_cond1_n_cond2_cond3_383, label %352, label %353

; <label>:352:                                    ; preds = %327
  %_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_address_in_parent_stack_bt_385 = bitcast i8* %_address_in_parent_stack_384 to i64*
  br label %353

; <label>:353:                                    ; preds = %327, %352
  %354 = phi i64* [ %_allin_new_bt_71, %327 ], [ %_address_in_parent_stack_bt_385, %352 ]
  %_new_load_386 = load i64, i64* %354
  store i64 %_new_load_386, i64* %RAX_val, !mcsema_real_eip !91
  %355 = add i64 %_new_load_386, 4, !mcsema_real_eip !92
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !92
  %357 = bitcast i64* %356 to i32*
  %_ptr_to_int_387 = ptrtoint i32* %357 to i64
  %_local_end_to_int_388 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_389 = bitcast i32* %357 to i8*
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_388
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_ptr_bt_389, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_ptr_bt_389, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_ptr_bt_389, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  br i1 %_cond1_n_cond2_cond3_398, label %358, label %359

; <label>:358:                                    ; preds = %353
  %_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_address_in_parent_stack_bt_400 = bitcast i8* %_address_in_parent_stack_399 to i32*
  br label %359

; <label>:359:                                    ; preds = %353, %358
  %360 = phi i32* [ %357, %353 ], [ %_address_in_parent_stack_bt_400, %358 ]
  %_new_load_401 = load i32, i32* %360
  %361 = zext i32 %_new_load_401 to i64, !mcsema_real_eip !92
  store i64 %361, i64* %R8_val, !mcsema_real_eip !92
  %362 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %363 = trunc i64 %362 to i32, !mcsema_real_eip !93
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_401, i32 %363)
  %364 = extractvalue { i32, i1 } %uadd76, 0
  %365 = xor i32 %364, %363, !mcsema_real_eip !93
  %366 = xor i32 %365, %_new_load_401, !mcsema_real_eip !93
  %367 = and i32 %366, 16, !mcsema_real_eip !93
  %368 = icmp ne i32 %367, 0, !mcsema_real_eip !93
  store i1 %368, i1* %AF_val, !mcsema_real_eip !93
  %369 = icmp slt i32 %364, 0
  store i1 %369, i1* %SF_val, !mcsema_real_eip !93
  %370 = icmp eq i32 %364, 0, !mcsema_real_eip !93
  store i1 %370, i1* %ZF_val, !mcsema_real_eip !93
  %371 = xor i32 %_new_load_401, -2147483648, !mcsema_real_eip !93
  %372 = xor i32 %371, %363, !mcsema_real_eip !93
  %373 = and i32 %365, %372, !mcsema_real_eip !93
  %374 = icmp slt i32 %373, 0
  store i1 %374, i1* %OF_val, !mcsema_real_eip !93
  %375 = trunc i32 %364 to i8, !mcsema_real_eip !93
  %376 = tail call i8 @llvm.ctpop.i8(i8 %375), !mcsema_real_eip !93
  %377 = and i8 %376, 1
  %378 = icmp eq i8 %377, 0
  store i1 %378, i1* %PF_val, !mcsema_real_eip !93
  %379 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %379, i1* %CF_val, !mcsema_real_eip !93
  %380 = zext i32 %364 to i64, !mcsema_real_eip !93
  store i64 %380, i64* %RSI_val, !mcsema_real_eip !93
  %381 = load i64, i64* %R11_val, !mcsema_real_eip !94
  %382 = add i64 %381, 4, !mcsema_real_eip !94
  %383 = inttoptr i64 %382 to i64*, !mcsema_real_eip !94
  %384 = bitcast i64* %383 to i32*
  %_ptr_to_int_402 = ptrtoint i32* %384 to i64
  %_local_end_to_int_403 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_404 = bitcast i32* %384 to i8*
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_403
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_ptr_bt_404, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_ptr_bt_404, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_ptr_bt_404, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  br i1 %_cond1_n_cond2_cond3_413, label %385, label %386

; <label>:385:                                    ; preds = %359
  %_address_in_parent_stack_414 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_address_in_parent_stack_bt_415 = bitcast i8* %_address_in_parent_stack_414 to i32*
  br label %386

; <label>:386:                                    ; preds = %359, %385
  %387 = phi i32* [ %384, %359 ], [ %_address_in_parent_stack_bt_415, %385 ]
  %_new_load_416 = load i32, i32* %387
  %388 = zext i32 %_new_load_416 to i64, !mcsema_real_eip !94
  store i64 %388, i64* %R8_val, !mcsema_real_eip !94
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %389 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -96
  %390 = add i64 %389, -96, !mcsema_real_eip !95
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %391 = inttoptr i64 %390 to i64*, !mcsema_real_eip !95
  %_ptr_to_int_417 = ptrtoint i64* %_allin_new_bt_74 to i64
  %_local_end_to_int_418 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_419 = bitcast i64* %_allin_new_bt_74 to i8*
  %_offset_above_rbp_420 = sub i64 %_ptr_to_int_417, %_local_end_to_int_418
  %_pot_address_in_parent_stack_421 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_cond1_422 = icmp ugt i8* %_ptr_bt_419, %_local_stack_end_ptr_
  %_cond2_1_423 = icmp ugt i8* %_ptr_bt_419, %_parent_stack_end_ptr_
  %_cond2_2_424 = icmp ult i8* %_ptr_bt_419, %_parent_stack_start_ptr_
  %_cond2_425 = or i1 %_cond2_1_423, %_cond2_2_424
  %_cond4_426 = icmp ule i8* %_pot_address_in_parent_stack_421, %_parent_stack_end_ptr_
  %_cond1_n_cond2_427 = and i1 %_cond1_422, %_cond2_425
  %_cond1_n_cond2_cond3_428 = and i1 %_cond1_n_cond2_427, %_cond4_426
  br i1 %_cond1_n_cond2_cond3_428, label %392, label %393

; <label>:392:                                    ; preds = %386
  %_address_in_parent_stack_429 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_address_in_parent_stack_bt_430 = bitcast i8* %_address_in_parent_stack_429 to i64*
  br label %393

; <label>:393:                                    ; preds = %386, %392
  %394 = phi i64* [ %_allin_new_bt_74, %386 ], [ %_address_in_parent_stack_bt_430, %392 ]
  %_new_load_431 = load i64, i64* %394
  store i64 %_new_load_431, i64* %RAX_val, !mcsema_real_eip !95
  %395 = add i64 %_new_load_431, 4, !mcsema_real_eip !96
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !96
  %397 = bitcast i64* %396 to i32*
  %_ptr_to_int_432 = ptrtoint i32* %397 to i64
  %_local_end_to_int_433 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_434 = bitcast i32* %397 to i8*
  %_offset_above_rbp_435 = sub i64 %_ptr_to_int_432, %_local_end_to_int_433
  %_pot_address_in_parent_stack_436 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_cond1_437 = icmp ugt i8* %_ptr_bt_434, %_local_stack_end_ptr_
  %_cond2_1_438 = icmp ugt i8* %_ptr_bt_434, %_parent_stack_end_ptr_
  %_cond2_2_439 = icmp ult i8* %_ptr_bt_434, %_parent_stack_start_ptr_
  %_cond2_440 = or i1 %_cond2_1_438, %_cond2_2_439
  %_cond4_441 = icmp ule i8* %_pot_address_in_parent_stack_436, %_parent_stack_end_ptr_
  %_cond1_n_cond2_442 = and i1 %_cond1_437, %_cond2_440
  %_cond1_n_cond2_cond3_443 = and i1 %_cond1_n_cond2_442, %_cond4_441
  br i1 %_cond1_n_cond2_cond3_443, label %398, label %399

; <label>:398:                                    ; preds = %393
  %_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_address_in_parent_stack_bt_445 = bitcast i8* %_address_in_parent_stack_444 to i32*
  br label %399

; <label>:399:                                    ; preds = %393, %398
  %400 = phi i32* [ %397, %393 ], [ %_address_in_parent_stack_bt_445, %398 ]
  %_new_load_446 = load i32, i32* %400
  %401 = zext i32 %_new_load_446 to i64, !mcsema_real_eip !96
  store i64 %401, i64* %R9_val, !mcsema_real_eip !96
  %402 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %403 = trunc i64 %402 to i32, !mcsema_real_eip !97
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_446, i32 %403)
  %404 = extractvalue { i32, i1 } %uadd77, 0
  %405 = xor i32 %404, %403, !mcsema_real_eip !97
  %406 = xor i32 %405, %_new_load_446, !mcsema_real_eip !97
  %407 = and i32 %406, 16, !mcsema_real_eip !97
  %408 = icmp ne i32 %407, 0, !mcsema_real_eip !97
  store i1 %408, i1* %AF_val, !mcsema_real_eip !97
  %409 = icmp slt i32 %404, 0
  store i1 %409, i1* %SF_val, !mcsema_real_eip !97
  %410 = icmp eq i32 %404, 0, !mcsema_real_eip !97
  store i1 %410, i1* %ZF_val, !mcsema_real_eip !97
  %411 = xor i32 %_new_load_446, -2147483648, !mcsema_real_eip !97
  %412 = xor i32 %411, %403, !mcsema_real_eip !97
  %413 = and i32 %405, %412, !mcsema_real_eip !97
  %414 = icmp slt i32 %413, 0
  store i1 %414, i1* %OF_val, !mcsema_real_eip !97
  %415 = trunc i32 %404 to i8, !mcsema_real_eip !97
  %416 = tail call i8 @llvm.ctpop.i8(i8 %415), !mcsema_real_eip !97
  %417 = and i8 %416, 1
  %418 = icmp eq i8 %417, 0
  store i1 %418, i1* %PF_val, !mcsema_real_eip !97
  %419 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %419, i1* %CF_val, !mcsema_real_eip !97
  %420 = zext i32 %404 to i64, !mcsema_real_eip !97
  store i64 %420, i64* %R8_val, !mcsema_real_eip !97
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %421 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -104
  %422 = add i64 %421, -104, !mcsema_real_eip !98
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !98
  %_ptr_to_int_447 = ptrtoint i64* %_allin_new_bt_77 to i64
  %_local_end_to_int_448 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_449 = bitcast i64* %_allin_new_bt_77 to i8*
  %_offset_above_rbp_450 = sub i64 %_ptr_to_int_447, %_local_end_to_int_448
  %_pot_address_in_parent_stack_451 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_cond1_452 = icmp ugt i8* %_ptr_bt_449, %_local_stack_end_ptr_
  %_cond2_1_453 = icmp ugt i8* %_ptr_bt_449, %_parent_stack_end_ptr_
  %_cond2_2_454 = icmp ult i8* %_ptr_bt_449, %_parent_stack_start_ptr_
  %_cond2_455 = or i1 %_cond2_1_453, %_cond2_2_454
  %_cond4_456 = icmp ule i8* %_pot_address_in_parent_stack_451, %_parent_stack_end_ptr_
  %_cond1_n_cond2_457 = and i1 %_cond1_452, %_cond2_455
  %_cond1_n_cond2_cond3_458 = and i1 %_cond1_n_cond2_457, %_cond4_456
  br i1 %_cond1_n_cond2_cond3_458, label %424, label %425

; <label>:424:                                    ; preds = %399
  %_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_address_in_parent_stack_bt_460 = bitcast i8* %_address_in_parent_stack_459 to i64*
  br label %425

; <label>:425:                                    ; preds = %399, %424
  %426 = phi i64* [ %_allin_new_bt_77, %399 ], [ %_address_in_parent_stack_bt_460, %424 ]
  %_new_load_461 = load i64, i64* %426
  store i64 %_new_load_461, i64* %RAX_val, !mcsema_real_eip !98
  %427 = add i64 %_new_load_461, 4, !mcsema_real_eip !99
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !99
  %429 = bitcast i64* %428 to i32*
  %_ptr_to_int_462 = ptrtoint i32* %429 to i64
  %_local_end_to_int_463 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_464 = bitcast i32* %429 to i8*
  %_offset_above_rbp_465 = sub i64 %_ptr_to_int_462, %_local_end_to_int_463
  %_pot_address_in_parent_stack_466 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_cond1_467 = icmp ugt i8* %_ptr_bt_464, %_local_stack_end_ptr_
  %_cond2_1_468 = icmp ugt i8* %_ptr_bt_464, %_parent_stack_end_ptr_
  %_cond2_2_469 = icmp ult i8* %_ptr_bt_464, %_parent_stack_start_ptr_
  %_cond2_470 = or i1 %_cond2_1_468, %_cond2_2_469
  %_cond4_471 = icmp ule i8* %_pot_address_in_parent_stack_466, %_parent_stack_end_ptr_
  %_cond1_n_cond2_472 = and i1 %_cond1_467, %_cond2_470
  %_cond1_n_cond2_cond3_473 = and i1 %_cond1_n_cond2_472, %_cond4_471
  br i1 %_cond1_n_cond2_cond3_473, label %430, label %431

; <label>:430:                                    ; preds = %425
  %_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_address_in_parent_stack_bt_475 = bitcast i8* %_address_in_parent_stack_474 to i32*
  br label %431

; <label>:431:                                    ; preds = %425, %430
  %432 = phi i32* [ %429, %425 ], [ %_address_in_parent_stack_bt_475, %430 ]
  %_new_load_476 = load i32, i32* %432
  %433 = zext i32 %_new_load_476 to i64, !mcsema_real_eip !99
  store i64 %433, i64* %R9_val, !mcsema_real_eip !99
  %434 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %435 = trunc i64 %434 to i32, !mcsema_real_eip !100
  %436 = add i32 %_new_load_476, %435
  %437 = zext i32 %436 to i64, !mcsema_real_eip !100
  store i64 %437, i64* %R8_val, !mcsema_real_eip !100
  %438 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %439 = trunc i64 %438 to i32, !mcsema_real_eip !101
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %436, i32 %439)
  %440 = extractvalue { i32, i1 } %uadd79, 0
  %441 = xor i32 %440, %439, !mcsema_real_eip !101
  %442 = xor i32 %441, %436, !mcsema_real_eip !101
  %443 = and i32 %442, 16, !mcsema_real_eip !101
  %444 = icmp ne i32 %443, 0, !mcsema_real_eip !101
  store i1 %444, i1* %AF_val, !mcsema_real_eip !101
  %445 = icmp slt i32 %440, 0
  store i1 %445, i1* %SF_val, !mcsema_real_eip !101
  %446 = icmp eq i32 %440, 0, !mcsema_real_eip !101
  store i1 %446, i1* %ZF_val, !mcsema_real_eip !101
  %447 = xor i32 %436, -2147483648, !mcsema_real_eip !101
  %448 = xor i32 %447, %439, !mcsema_real_eip !101
  %449 = and i32 %441, %448, !mcsema_real_eip !101
  %450 = icmp slt i32 %449, 0
  store i1 %450, i1* %OF_val, !mcsema_real_eip !101
  %451 = trunc i32 %440 to i8, !mcsema_real_eip !101
  %452 = tail call i8 @llvm.ctpop.i8(i8 %451), !mcsema_real_eip !101
  %453 = and i8 %452, 1
  %454 = icmp eq i8 %453, 0
  store i1 %454, i1* %PF_val, !mcsema_real_eip !101
  %455 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %455, i1* %CF_val, !mcsema_real_eip !101
  %456 = zext i32 %440 to i64, !mcsema_real_eip !101
  store i64 %456, i64* %RSI_val, !mcsema_real_eip !101
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %457 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -116
  %458 = add i64 %457, -116, !mcsema_real_eip !102
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %459 = inttoptr i64 %458 to i64*, !mcsema_real_eip !102
  %460 = bitcast i64* %_allin_new_bt_80 to i32*
  store i32 %440, i32* %460, !mcsema_real_eip !102
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %461 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %462 = add i64 %461, -32, !mcsema_real_eip !103
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !103
  %464 = bitcast i64* %_allin_new_bt_83 to i32*
  %_ptr_to_int_477 = ptrtoint i32* %464 to i64
  %_local_end_to_int_478 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_479 = bitcast i32* %464 to i8*
  %_offset_above_rbp_480 = sub i64 %_ptr_to_int_477, %_local_end_to_int_478
  %_pot_address_in_parent_stack_481 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_cond1_482 = icmp ugt i8* %_ptr_bt_479, %_local_stack_end_ptr_
  %_cond2_1_483 = icmp ugt i8* %_ptr_bt_479, %_parent_stack_end_ptr_
  %_cond2_2_484 = icmp ult i8* %_ptr_bt_479, %_parent_stack_start_ptr_
  %_cond2_485 = or i1 %_cond2_1_483, %_cond2_2_484
  %_cond4_486 = icmp ule i8* %_pot_address_in_parent_stack_481, %_parent_stack_end_ptr_
  %_cond1_n_cond2_487 = and i1 %_cond1_482, %_cond2_485
  %_cond1_n_cond2_cond3_488 = and i1 %_cond1_n_cond2_487, %_cond4_486
  br i1 %_cond1_n_cond2_cond3_488, label %465, label %466

; <label>:465:                                    ; preds = %431
  %_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_address_in_parent_stack_bt_490 = bitcast i8* %_address_in_parent_stack_489 to i32*
  br label %466

; <label>:466:                                    ; preds = %431, %465
  %467 = phi i32* [ %464, %431 ], [ %_address_in_parent_stack_bt_490, %465 ]
  %_new_load_491 = load i32, i32* %467
  %468 = zext i32 %_new_load_491 to i64, !mcsema_real_eip !103
  store i64 %468, i64* %RSI_val, !mcsema_real_eip !103
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %469 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -64
  %470 = add i64 %469, -64, !mcsema_real_eip !104
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !104
  %_ptr_to_int_492 = ptrtoint i64* %_allin_new_bt_86 to i64
  %_local_end_to_int_493 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_494 = bitcast i64* %_allin_new_bt_86 to i8*
  %_offset_above_rbp_495 = sub i64 %_ptr_to_int_492, %_local_end_to_int_493
  %_pot_address_in_parent_stack_496 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_cond1_497 = icmp ugt i8* %_ptr_bt_494, %_local_stack_end_ptr_
  %_cond2_1_498 = icmp ugt i8* %_ptr_bt_494, %_parent_stack_end_ptr_
  %_cond2_2_499 = icmp ult i8* %_ptr_bt_494, %_parent_stack_start_ptr_
  %_cond2_500 = or i1 %_cond2_1_498, %_cond2_2_499
  %_cond4_501 = icmp ule i8* %_pot_address_in_parent_stack_496, %_parent_stack_end_ptr_
  %_cond1_n_cond2_502 = and i1 %_cond1_497, %_cond2_500
  %_cond1_n_cond2_cond3_503 = and i1 %_cond1_n_cond2_502, %_cond4_501
  br i1 %_cond1_n_cond2_cond3_503, label %472, label %473

; <label>:472:                                    ; preds = %466
  %_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_address_in_parent_stack_bt_505 = bitcast i8* %_address_in_parent_stack_504 to i64*
  br label %473

; <label>:473:                                    ; preds = %466, %472
  %474 = phi i64* [ %_allin_new_bt_86, %466 ], [ %_address_in_parent_stack_bt_505, %472 ]
  %_new_load_506 = load i64, i64* %474
  store i64 %_new_load_506, i64* %RAX_val, !mcsema_real_eip !104
  %475 = add i64 %_new_load_506, 8, !mcsema_real_eip !105
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !105
  %477 = bitcast i64* %476 to i32*
  %_ptr_to_int_507 = ptrtoint i32* %477 to i64
  %_local_end_to_int_508 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_509 = bitcast i32* %477 to i8*
  %_offset_above_rbp_510 = sub i64 %_ptr_to_int_507, %_local_end_to_int_508
  %_pot_address_in_parent_stack_511 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_cond1_512 = icmp ugt i8* %_ptr_bt_509, %_local_stack_end_ptr_
  %_cond2_1_513 = icmp ugt i8* %_ptr_bt_509, %_parent_stack_end_ptr_
  %_cond2_2_514 = icmp ult i8* %_ptr_bt_509, %_parent_stack_start_ptr_
  %_cond2_515 = or i1 %_cond2_1_513, %_cond2_2_514
  %_cond4_516 = icmp ule i8* %_pot_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond1_n_cond2_517 = and i1 %_cond1_512, %_cond2_515
  %_cond1_n_cond2_cond3_518 = and i1 %_cond1_n_cond2_517, %_cond4_516
  br i1 %_cond1_n_cond2_cond3_518, label %478, label %479

; <label>:478:                                    ; preds = %473
  %_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_address_in_parent_stack_bt_520 = bitcast i8* %_address_in_parent_stack_519 to i32*
  br label %479

; <label>:479:                                    ; preds = %473, %478
  %480 = phi i32* [ %477, %473 ], [ %_address_in_parent_stack_bt_520, %478 ]
  %_new_load_521 = load i32, i32* %480
  %481 = zext i32 %_new_load_521 to i64, !mcsema_real_eip !105
  store i64 %481, i64* %R8_val, !mcsema_real_eip !105
  %482 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %483 = trunc i64 %482 to i32, !mcsema_real_eip !106
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_521, i32 %483)
  %484 = extractvalue { i32, i1 } %uadd80, 0
  %485 = xor i32 %484, %483, !mcsema_real_eip !106
  %486 = xor i32 %485, %_new_load_521, !mcsema_real_eip !106
  %487 = and i32 %486, 16, !mcsema_real_eip !106
  %488 = icmp ne i32 %487, 0, !mcsema_real_eip !106
  store i1 %488, i1* %AF_val, !mcsema_real_eip !106
  %489 = icmp slt i32 %484, 0
  store i1 %489, i1* %SF_val, !mcsema_real_eip !106
  %490 = icmp eq i32 %484, 0, !mcsema_real_eip !106
  store i1 %490, i1* %ZF_val, !mcsema_real_eip !106
  %491 = xor i32 %_new_load_521, -2147483648, !mcsema_real_eip !106
  %492 = xor i32 %491, %483, !mcsema_real_eip !106
  %493 = and i32 %485, %492, !mcsema_real_eip !106
  %494 = icmp slt i32 %493, 0
  store i1 %494, i1* %OF_val, !mcsema_real_eip !106
  %495 = trunc i32 %484 to i8, !mcsema_real_eip !106
  %496 = tail call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !106
  %497 = and i8 %496, 1
  %498 = icmp eq i8 %497, 0
  store i1 %498, i1* %PF_val, !mcsema_real_eip !106
  %499 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %499, i1* %CF_val, !mcsema_real_eip !106
  %500 = zext i32 %484 to i64, !mcsema_real_eip !106
  store i64 %500, i64* %RSI_val, !mcsema_real_eip !106
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %501 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -72
  %502 = add i64 %501, -72, !mcsema_real_eip !107
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !107
  %_ptr_to_int_522 = ptrtoint i64* %_allin_new_bt_89 to i64
  %_local_end_to_int_523 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_524 = bitcast i64* %_allin_new_bt_89 to i8*
  %_offset_above_rbp_525 = sub i64 %_ptr_to_int_522, %_local_end_to_int_523
  %_pot_address_in_parent_stack_526 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_cond1_527 = icmp ugt i8* %_ptr_bt_524, %_local_stack_end_ptr_
  %_cond2_1_528 = icmp ugt i8* %_ptr_bt_524, %_parent_stack_end_ptr_
  %_cond2_2_529 = icmp ult i8* %_ptr_bt_524, %_parent_stack_start_ptr_
  %_cond2_530 = or i1 %_cond2_1_528, %_cond2_2_529
  %_cond4_531 = icmp ule i8* %_pot_address_in_parent_stack_526, %_parent_stack_end_ptr_
  %_cond1_n_cond2_532 = and i1 %_cond1_527, %_cond2_530
  %_cond1_n_cond2_cond3_533 = and i1 %_cond1_n_cond2_532, %_cond4_531
  br i1 %_cond1_n_cond2_cond3_533, label %504, label %505

; <label>:504:                                    ; preds = %479
  %_address_in_parent_stack_534 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_address_in_parent_stack_bt_535 = bitcast i8* %_address_in_parent_stack_534 to i64*
  br label %505

; <label>:505:                                    ; preds = %479, %504
  %506 = phi i64* [ %_allin_new_bt_89, %479 ], [ %_address_in_parent_stack_bt_535, %504 ]
  %_new_load_536 = load i64, i64* %506
  store i64 %_new_load_536, i64* %RAX_val, !mcsema_real_eip !107
  %507 = add i64 %_new_load_536, 8, !mcsema_real_eip !108
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !108
  %509 = bitcast i64* %508 to i32*
  %_ptr_to_int_537 = ptrtoint i32* %509 to i64
  %_local_end_to_int_538 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_539 = bitcast i32* %509 to i8*
  %_offset_above_rbp_540 = sub i64 %_ptr_to_int_537, %_local_end_to_int_538
  %_pot_address_in_parent_stack_541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_cond1_542 = icmp ugt i8* %_ptr_bt_539, %_local_stack_end_ptr_
  %_cond2_1_543 = icmp ugt i8* %_ptr_bt_539, %_parent_stack_end_ptr_
  %_cond2_2_544 = icmp ult i8* %_ptr_bt_539, %_parent_stack_start_ptr_
  %_cond2_545 = or i1 %_cond2_1_543, %_cond2_2_544
  %_cond4_546 = icmp ule i8* %_pot_address_in_parent_stack_541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_547 = and i1 %_cond1_542, %_cond2_545
  %_cond1_n_cond2_cond3_548 = and i1 %_cond1_n_cond2_547, %_cond4_546
  br i1 %_cond1_n_cond2_cond3_548, label %510, label %511

; <label>:510:                                    ; preds = %505
  %_address_in_parent_stack_549 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_address_in_parent_stack_bt_550 = bitcast i8* %_address_in_parent_stack_549 to i32*
  br label %511

; <label>:511:                                    ; preds = %505, %510
  %512 = phi i32* [ %509, %505 ], [ %_address_in_parent_stack_bt_550, %510 ]
  %_new_load_551 = load i32, i32* %512
  %513 = zext i32 %_new_load_551 to i64, !mcsema_real_eip !108
  store i64 %513, i64* %R8_val, !mcsema_real_eip !108
  %514 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %515 = trunc i64 %514 to i32, !mcsema_real_eip !109
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_551, i32 %515)
  %516 = extractvalue { i32, i1 } %uadd81, 0
  %517 = xor i32 %516, %515, !mcsema_real_eip !109
  %518 = xor i32 %517, %_new_load_551, !mcsema_real_eip !109
  %519 = and i32 %518, 16, !mcsema_real_eip !109
  %520 = icmp ne i32 %519, 0, !mcsema_real_eip !109
  store i1 %520, i1* %AF_val, !mcsema_real_eip !109
  %521 = icmp slt i32 %516, 0
  store i1 %521, i1* %SF_val, !mcsema_real_eip !109
  %522 = icmp eq i32 %516, 0, !mcsema_real_eip !109
  store i1 %522, i1* %ZF_val, !mcsema_real_eip !109
  %523 = xor i32 %_new_load_551, -2147483648, !mcsema_real_eip !109
  %524 = xor i32 %523, %515, !mcsema_real_eip !109
  %525 = and i32 %517, %524, !mcsema_real_eip !109
  %526 = icmp slt i32 %525, 0
  store i1 %526, i1* %OF_val, !mcsema_real_eip !109
  %527 = trunc i32 %516 to i8, !mcsema_real_eip !109
  %528 = tail call i8 @llvm.ctpop.i8(i8 %527), !mcsema_real_eip !109
  %529 = and i8 %528, 1
  %530 = icmp eq i8 %529, 0
  store i1 %530, i1* %PF_val, !mcsema_real_eip !109
  %531 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %531, i1* %CF_val, !mcsema_real_eip !109
  %532 = zext i32 %516 to i64, !mcsema_real_eip !109
  store i64 %532, i64* %RSI_val, !mcsema_real_eip !109
  %533 = load i64, i64* %R11_val, !mcsema_real_eip !110
  %534 = add i64 %533, 8, !mcsema_real_eip !110
  %535 = inttoptr i64 %534 to i64*, !mcsema_real_eip !110
  %536 = bitcast i64* %535 to i32*
  %_ptr_to_int_552 = ptrtoint i32* %536 to i64
  %_local_end_to_int_553 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_554 = bitcast i32* %536 to i8*
  %_offset_above_rbp_555 = sub i64 %_ptr_to_int_552, %_local_end_to_int_553
  %_pot_address_in_parent_stack_556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_cond1_557 = icmp ugt i8* %_ptr_bt_554, %_local_stack_end_ptr_
  %_cond2_1_558 = icmp ugt i8* %_ptr_bt_554, %_parent_stack_end_ptr_
  %_cond2_2_559 = icmp ult i8* %_ptr_bt_554, %_parent_stack_start_ptr_
  %_cond2_560 = or i1 %_cond2_1_558, %_cond2_2_559
  %_cond4_561 = icmp ule i8* %_pot_address_in_parent_stack_556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_562 = and i1 %_cond1_557, %_cond2_560
  %_cond1_n_cond2_cond3_563 = and i1 %_cond1_n_cond2_562, %_cond4_561
  br i1 %_cond1_n_cond2_cond3_563, label %537, label %538

; <label>:537:                                    ; preds = %511
  %_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_address_in_parent_stack_bt_565 = bitcast i8* %_address_in_parent_stack_564 to i32*
  br label %538

; <label>:538:                                    ; preds = %511, %537
  %539 = phi i32* [ %536, %511 ], [ %_address_in_parent_stack_bt_565, %537 ]
  %_new_load_566 = load i32, i32* %539
  %540 = zext i32 %_new_load_566 to i64, !mcsema_real_eip !110
  store i64 %540, i64* %R8_val, !mcsema_real_eip !110
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -96
  %542 = add i64 %541, -96, !mcsema_real_eip !111
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !111
  %_ptr_to_int_567 = ptrtoint i64* %_allin_new_bt_92 to i64
  %_local_end_to_int_568 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_569 = bitcast i64* %_allin_new_bt_92 to i8*
  %_offset_above_rbp_570 = sub i64 %_ptr_to_int_567, %_local_end_to_int_568
  %_pot_address_in_parent_stack_571 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_cond1_572 = icmp ugt i8* %_ptr_bt_569, %_local_stack_end_ptr_
  %_cond2_1_573 = icmp ugt i8* %_ptr_bt_569, %_parent_stack_end_ptr_
  %_cond2_2_574 = icmp ult i8* %_ptr_bt_569, %_parent_stack_start_ptr_
  %_cond2_575 = or i1 %_cond2_1_573, %_cond2_2_574
  %_cond4_576 = icmp ule i8* %_pot_address_in_parent_stack_571, %_parent_stack_end_ptr_
  %_cond1_n_cond2_577 = and i1 %_cond1_572, %_cond2_575
  %_cond1_n_cond2_cond3_578 = and i1 %_cond1_n_cond2_577, %_cond4_576
  br i1 %_cond1_n_cond2_cond3_578, label %544, label %545

; <label>:544:                                    ; preds = %538
  %_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_address_in_parent_stack_bt_580 = bitcast i8* %_address_in_parent_stack_579 to i64*
  br label %545

; <label>:545:                                    ; preds = %538, %544
  %546 = phi i64* [ %_allin_new_bt_92, %538 ], [ %_address_in_parent_stack_bt_580, %544 ]
  %_new_load_581 = load i64, i64* %546
  store i64 %_new_load_581, i64* %RAX_val, !mcsema_real_eip !111
  %547 = add i64 %_new_load_581, 8, !mcsema_real_eip !112
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !112
  %549 = bitcast i64* %548 to i32*
  %_ptr_to_int_582 = ptrtoint i32* %549 to i64
  %_local_end_to_int_583 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_584 = bitcast i32* %549 to i8*
  %_offset_above_rbp_585 = sub i64 %_ptr_to_int_582, %_local_end_to_int_583
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_ptr_bt_584, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_ptr_bt_584, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_ptr_bt_584, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  br i1 %_cond1_n_cond2_cond3_593, label %550, label %551

; <label>:550:                                    ; preds = %545
  %_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_address_in_parent_stack_bt_595 = bitcast i8* %_address_in_parent_stack_594 to i32*
  br label %551

; <label>:551:                                    ; preds = %545, %550
  %552 = phi i32* [ %549, %545 ], [ %_address_in_parent_stack_bt_595, %550 ]
  %_new_load_596 = load i32, i32* %552
  %553 = zext i32 %_new_load_596 to i64, !mcsema_real_eip !112
  store i64 %553, i64* %R9_val, !mcsema_real_eip !112
  %554 = load i64, i64* %R8_val, !mcsema_real_eip !113
  %555 = trunc i64 %554 to i32, !mcsema_real_eip !113
  %uadd82 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_596, i32 %555)
  %556 = extractvalue { i32, i1 } %uadd82, 0
  %557 = xor i32 %556, %555, !mcsema_real_eip !113
  %558 = xor i32 %557, %_new_load_596, !mcsema_real_eip !113
  %559 = and i32 %558, 16, !mcsema_real_eip !113
  %560 = icmp ne i32 %559, 0, !mcsema_real_eip !113
  store i1 %560, i1* %AF_val, !mcsema_real_eip !113
  %561 = icmp slt i32 %556, 0
  store i1 %561, i1* %SF_val, !mcsema_real_eip !113
  %562 = icmp eq i32 %556, 0, !mcsema_real_eip !113
  store i1 %562, i1* %ZF_val, !mcsema_real_eip !113
  %563 = xor i32 %_new_load_596, -2147483648, !mcsema_real_eip !113
  %564 = xor i32 %563, %555, !mcsema_real_eip !113
  %565 = and i32 %557, %564, !mcsema_real_eip !113
  %566 = icmp slt i32 %565, 0
  store i1 %566, i1* %OF_val, !mcsema_real_eip !113
  %567 = trunc i32 %556 to i8, !mcsema_real_eip !113
  %568 = tail call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !113
  %569 = and i8 %568, 1
  %570 = icmp eq i8 %569, 0
  store i1 %570, i1* %PF_val, !mcsema_real_eip !113
  %571 = extractvalue { i32, i1 } %uadd82, 1
  store i1 %571, i1* %CF_val, !mcsema_real_eip !113
  %572 = zext i32 %556 to i64, !mcsema_real_eip !113
  store i64 %572, i64* %R8_val, !mcsema_real_eip !113
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -104
  %574 = add i64 %573, -104, !mcsema_real_eip !114
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !114
  %_ptr_to_int_597 = ptrtoint i64* %_allin_new_bt_95 to i64
  %_local_end_to_int_598 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_599 = bitcast i64* %_allin_new_bt_95 to i8*
  %_offset_above_rbp_600 = sub i64 %_ptr_to_int_597, %_local_end_to_int_598
  %_pot_address_in_parent_stack_601 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_cond1_602 = icmp ugt i8* %_ptr_bt_599, %_local_stack_end_ptr_
  %_cond2_1_603 = icmp ugt i8* %_ptr_bt_599, %_parent_stack_end_ptr_
  %_cond2_2_604 = icmp ult i8* %_ptr_bt_599, %_parent_stack_start_ptr_
  %_cond2_605 = or i1 %_cond2_1_603, %_cond2_2_604
  %_cond4_606 = icmp ule i8* %_pot_address_in_parent_stack_601, %_parent_stack_end_ptr_
  %_cond1_n_cond2_607 = and i1 %_cond1_602, %_cond2_605
  %_cond1_n_cond2_cond3_608 = and i1 %_cond1_n_cond2_607, %_cond4_606
  br i1 %_cond1_n_cond2_cond3_608, label %576, label %577

; <label>:576:                                    ; preds = %551
  %_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_address_in_parent_stack_bt_610 = bitcast i8* %_address_in_parent_stack_609 to i64*
  br label %577

; <label>:577:                                    ; preds = %551, %576
  %578 = phi i64* [ %_allin_new_bt_95, %551 ], [ %_address_in_parent_stack_bt_610, %576 ]
  %_new_load_611 = load i64, i64* %578
  store i64 %_new_load_611, i64* %RAX_val, !mcsema_real_eip !114
  %579 = add i64 %_new_load_611, 8, !mcsema_real_eip !115
  %580 = inttoptr i64 %579 to i64*, !mcsema_real_eip !115
  %581 = bitcast i64* %580 to i32*
  %_ptr_to_int_612 = ptrtoint i32* %581 to i64
  %_local_end_to_int_613 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_614 = bitcast i32* %581 to i8*
  %_offset_above_rbp_615 = sub i64 %_ptr_to_int_612, %_local_end_to_int_613
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_ptr_bt_614, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_ptr_bt_614, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_ptr_bt_614, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  br i1 %_cond1_n_cond2_cond3_623, label %582, label %583

; <label>:582:                                    ; preds = %577
  %_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_address_in_parent_stack_bt_625 = bitcast i8* %_address_in_parent_stack_624 to i32*
  br label %583

; <label>:583:                                    ; preds = %577, %582
  %584 = phi i32* [ %581, %577 ], [ %_address_in_parent_stack_bt_625, %582 ]
  %_new_load_626 = load i32, i32* %584
  %585 = zext i32 %_new_load_626 to i64, !mcsema_real_eip !115
  store i64 %585, i64* %R9_val, !mcsema_real_eip !115
  %586 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %587 = trunc i64 %586 to i32, !mcsema_real_eip !116
  %588 = add i32 %_new_load_626, %587
  %589 = zext i32 %588 to i64, !mcsema_real_eip !116
  store i64 %589, i64* %R8_val, !mcsema_real_eip !116
  %590 = load i64, i64* %RSI_val, !mcsema_real_eip !117
  %591 = trunc i64 %590 to i32, !mcsema_real_eip !117
  %uadd84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %588, i32 %591)
  %592 = extractvalue { i32, i1 } %uadd84, 0
  %593 = xor i32 %592, %591, !mcsema_real_eip !117
  %594 = xor i32 %593, %588, !mcsema_real_eip !117
  %595 = and i32 %594, 16, !mcsema_real_eip !117
  %596 = icmp ne i32 %595, 0, !mcsema_real_eip !117
  store i1 %596, i1* %AF_val, !mcsema_real_eip !117
  %597 = icmp slt i32 %592, 0
  store i1 %597, i1* %SF_val, !mcsema_real_eip !117
  %598 = icmp eq i32 %592, 0, !mcsema_real_eip !117
  store i1 %598, i1* %ZF_val, !mcsema_real_eip !117
  %599 = xor i32 %588, -2147483648, !mcsema_real_eip !117
  %600 = xor i32 %599, %591, !mcsema_real_eip !117
  %601 = and i32 %593, %600, !mcsema_real_eip !117
  %602 = icmp slt i32 %601, 0
  store i1 %602, i1* %OF_val, !mcsema_real_eip !117
  %603 = trunc i32 %592 to i8, !mcsema_real_eip !117
  %604 = tail call i8 @llvm.ctpop.i8(i8 %603), !mcsema_real_eip !117
  %605 = and i8 %604, 1
  %606 = icmp eq i8 %605, 0
  store i1 %606, i1* %PF_val, !mcsema_real_eip !117
  %607 = extractvalue { i32, i1 } %uadd84, 1
  store i1 %607, i1* %CF_val, !mcsema_real_eip !117
  %608 = zext i32 %592 to i64, !mcsema_real_eip !117
  store i64 %608, i64* %RSI_val, !mcsema_real_eip !117
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %609 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -112
  %610 = add i64 %609, -112, !mcsema_real_eip !118
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %611 = inttoptr i64 %610 to i64*, !mcsema_real_eip !118
  %612 = bitcast i64* %_allin_new_bt_98 to i32*
  store i32 %592, i32* %612, !mcsema_real_eip !118
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %613 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -16
  %614 = add i64 %613, -16, !mcsema_real_eip !119
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %615 = inttoptr i64 %614 to i64*, !mcsema_real_eip !119
  %616 = load i64, i64* %RSI_val, !mcsema_real_eip !119
  %617 = trunc i64 %616 to i32, !mcsema_real_eip !119
  %618 = bitcast i64* %_allin_new_bt_101 to i32*
  store i32 %617, i32* %618, !mcsema_real_eip !119
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %619 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -120
  %620 = add i64 %619, -120, !mcsema_real_eip !120
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !120
  %_ptr_to_int_627 = ptrtoint i64* %_allin_new_bt_104 to i64
  %_local_end_to_int_628 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_629 = bitcast i64* %_allin_new_bt_104 to i8*
  %_offset_above_rbp_630 = sub i64 %_ptr_to_int_627, %_local_end_to_int_628
  %_pot_address_in_parent_stack_631 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_cond1_632 = icmp ugt i8* %_ptr_bt_629, %_local_stack_end_ptr_
  %_cond2_1_633 = icmp ugt i8* %_ptr_bt_629, %_parent_stack_end_ptr_
  %_cond2_2_634 = icmp ult i8* %_ptr_bt_629, %_parent_stack_start_ptr_
  %_cond2_635 = or i1 %_cond2_1_633, %_cond2_2_634
  %_cond4_636 = icmp ule i8* %_pot_address_in_parent_stack_631, %_parent_stack_end_ptr_
  %_cond1_n_cond2_637 = and i1 %_cond1_632, %_cond2_635
  %_cond1_n_cond2_cond3_638 = and i1 %_cond1_n_cond2_637, %_cond4_636
  br i1 %_cond1_n_cond2_cond3_638, label %622, label %623

; <label>:622:                                    ; preds = %583
  %_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_address_in_parent_stack_bt_640 = bitcast i8* %_address_in_parent_stack_639 to i64*
  br label %623

; <label>:623:                                    ; preds = %583, %622
  %624 = phi i64* [ %_allin_new_bt_104, %583 ], [ %_address_in_parent_stack_bt_640, %622 ]
  %_new_load_641 = load i64, i64* %624
  store i64 %_new_load_641, i64* %RAX_val, !mcsema_real_eip !120
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -24
  %625 = add i64 %619, -24, !mcsema_real_eip !121
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !121
  store i64 %_new_load_641, i64* %_allin_new_bt_106, !mcsema_real_eip !121
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %627 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -16
  %628 = add i64 %627, -16, !mcsema_real_eip !122
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %629 = inttoptr i64 %628 to i64*, !mcsema_real_eip !122
  %630 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_642 = ptrtoint i32* %630 to i64
  %_local_end_to_int_643 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_644 = bitcast i32* %630 to i8*
  %_offset_above_rbp_645 = sub i64 %_ptr_to_int_642, %_local_end_to_int_643
  %_pot_address_in_parent_stack_646 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_cond1_647 = icmp ugt i8* %_ptr_bt_644, %_local_stack_end_ptr_
  %_cond2_1_648 = icmp ugt i8* %_ptr_bt_644, %_parent_stack_end_ptr_
  %_cond2_2_649 = icmp ult i8* %_ptr_bt_644, %_parent_stack_start_ptr_
  %_cond2_650 = or i1 %_cond2_1_648, %_cond2_2_649
  %_cond4_651 = icmp ule i8* %_pot_address_in_parent_stack_646, %_parent_stack_end_ptr_
  %_cond1_n_cond2_652 = and i1 %_cond1_647, %_cond2_650
  %_cond1_n_cond2_cond3_653 = and i1 %_cond1_n_cond2_652, %_cond4_651
  br i1 %_cond1_n_cond2_cond3_653, label %631, label %632

; <label>:631:                                    ; preds = %623
  %_address_in_parent_stack_654 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_address_in_parent_stack_bt_655 = bitcast i8* %_address_in_parent_stack_654 to i32*
  br label %632

; <label>:632:                                    ; preds = %623, %631
  %633 = phi i32* [ %630, %623 ], [ %_address_in_parent_stack_bt_655, %631 ]
  %_new_load_656 = load i32, i32* %633
  %634 = zext i32 %_new_load_656 to i64, !mcsema_real_eip !122
  store i64 %634, i64* %RSI_val, !mcsema_real_eip !122
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %635 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -128
  %636 = add i64 %635, -128, !mcsema_real_eip !123
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %637 = inttoptr i64 %636 to i64*, !mcsema_real_eip !123
  %638 = bitcast i64* %_allin_new_bt_112 to i32*
  store i32 %_new_load_656, i32* %638, !mcsema_real_eip !123
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %639 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -24
  %640 = add i64 %639, -24, !mcsema_real_eip !124
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %641 = inttoptr i64 %640 to i64*, !mcsema_real_eip !124
  %_ptr_to_int_657 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_local_end_to_int_658 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_659 = bitcast i64* %_allin_new_bt_115 to i8*
  %_offset_above_rbp_660 = sub i64 %_ptr_to_int_657, %_local_end_to_int_658
  %_pot_address_in_parent_stack_661 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_660
  %_cond1_662 = icmp ugt i8* %_ptr_bt_659, %_local_stack_end_ptr_
  %_cond2_1_663 = icmp ugt i8* %_ptr_bt_659, %_parent_stack_end_ptr_
  %_cond2_2_664 = icmp ult i8* %_ptr_bt_659, %_parent_stack_start_ptr_
  %_cond2_665 = or i1 %_cond2_1_663, %_cond2_2_664
  %_cond4_666 = icmp ule i8* %_pot_address_in_parent_stack_661, %_parent_stack_end_ptr_
  %_cond1_n_cond2_667 = and i1 %_cond1_662, %_cond2_665
  %_cond1_n_cond2_cond3_668 = and i1 %_cond1_n_cond2_667, %_cond4_666
  br i1 %_cond1_n_cond2_cond3_668, label %642, label %643

; <label>:642:                                    ; preds = %632
  %_address_in_parent_stack_669 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_660
  %_address_in_parent_stack_bt_670 = bitcast i8* %_address_in_parent_stack_669 to i64*
  br label %643

; <label>:643:                                    ; preds = %632, %642
  %644 = phi i64* [ %_allin_new_bt_115, %632 ], [ %_address_in_parent_stack_bt_670, %642 ]
  %_new_load_671 = load i64, i64* %644
  store i64 %_new_load_671, i64* %RAX_val, !mcsema_real_eip !124
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -136
  %645 = add i64 %639, -136, !mcsema_real_eip !125
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %646 = inttoptr i64 %645 to i64*, !mcsema_real_eip !125
  store i64 %_new_load_671, i64* %_allin_new_bt_117, !mcsema_real_eip !125
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %647 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -136
  %648 = add i64 %647, -136, !mcsema_real_eip !126
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %649 = inttoptr i64 %648 to i64*, !mcsema_real_eip !126
  %_ptr_to_int_672 = ptrtoint i64* %_allin_new_bt_120 to i64
  %_local_end_to_int_673 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_674 = bitcast i64* %_allin_new_bt_120 to i8*
  %_offset_above_rbp_675 = sub i64 %_ptr_to_int_672, %_local_end_to_int_673
  %_pot_address_in_parent_stack_676 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_cond1_677 = icmp ugt i8* %_ptr_bt_674, %_local_stack_end_ptr_
  %_cond2_1_678 = icmp ugt i8* %_ptr_bt_674, %_parent_stack_end_ptr_
  %_cond2_2_679 = icmp ult i8* %_ptr_bt_674, %_parent_stack_start_ptr_
  %_cond2_680 = or i1 %_cond2_1_678, %_cond2_2_679
  %_cond4_681 = icmp ule i8* %_pot_address_in_parent_stack_676, %_parent_stack_end_ptr_
  %_cond1_n_cond2_682 = and i1 %_cond1_677, %_cond2_680
  %_cond1_n_cond2_cond3_683 = and i1 %_cond1_n_cond2_682, %_cond4_681
  br i1 %_cond1_n_cond2_cond3_683, label %650, label %651

; <label>:650:                                    ; preds = %643
  %_address_in_parent_stack_684 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_address_in_parent_stack_bt_685 = bitcast i8* %_address_in_parent_stack_684 to i64*
  br label %651

; <label>:651:                                    ; preds = %643, %650
  %652 = phi i64* [ %_allin_new_bt_120, %643 ], [ %_address_in_parent_stack_bt_685, %650 ]
  %_new_load_686 = load i64, i64* %652
  store i64 %_new_load_686, i64* %RAX_val, !mcsema_real_eip !126
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -128
  %653 = add i64 %647, -128, !mcsema_real_eip !127
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !127
  %655 = bitcast i64* %_allin_new_bt_122 to i32*
  %_ptr_to_int_687 = ptrtoint i32* %655 to i64
  %_local_end_to_int_688 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_689 = bitcast i32* %655 to i8*
  %_offset_above_rbp_690 = sub i64 %_ptr_to_int_687, %_local_end_to_int_688
  %_pot_address_in_parent_stack_691 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_cond1_692 = icmp ugt i8* %_ptr_bt_689, %_local_stack_end_ptr_
  %_cond2_1_693 = icmp ugt i8* %_ptr_bt_689, %_parent_stack_end_ptr_
  %_cond2_2_694 = icmp ult i8* %_ptr_bt_689, %_parent_stack_start_ptr_
  %_cond2_695 = or i1 %_cond2_1_693, %_cond2_2_694
  %_cond4_696 = icmp ule i8* %_pot_address_in_parent_stack_691, %_parent_stack_end_ptr_
  %_cond1_n_cond2_697 = and i1 %_cond1_692, %_cond2_695
  %_cond1_n_cond2_cond3_698 = and i1 %_cond1_n_cond2_697, %_cond4_696
  br i1 %_cond1_n_cond2_cond3_698, label %656, label %657

; <label>:656:                                    ; preds = %651
  %_address_in_parent_stack_699 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_address_in_parent_stack_bt_700 = bitcast i8* %_address_in_parent_stack_699 to i32*
  br label %657

; <label>:657:                                    ; preds = %651, %656
  %658 = phi i32* [ %655, %651 ], [ %_address_in_parent_stack_bt_700, %656 ]
  %_new_load_701 = load i32, i32* %658
  %659 = zext i32 %_new_load_701 to i64, !mcsema_real_eip !127
  store i64 %659, i64* %RDX_val, !mcsema_real_eip !127
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %660 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %_allin_new_bt_124 = bitcast i8* %_load_rsp_ptr_123 to i64*
  %661 = inttoptr i64 %660 to i64*, !mcsema_real_eip !128
  %_ptr_to_int_702 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_local_end_to_int_703 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_704 = bitcast i64* %_allin_new_bt_124 to i8*
  %_offset_above_rbp_705 = sub i64 %_ptr_to_int_702, %_local_end_to_int_703
  %_pot_address_in_parent_stack_706 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_cond1_707 = icmp ugt i8* %_ptr_bt_704, %_local_stack_end_ptr_
  %_cond2_1_708 = icmp ugt i8* %_ptr_bt_704, %_parent_stack_end_ptr_
  %_cond2_2_709 = icmp ult i8* %_ptr_bt_704, %_parent_stack_start_ptr_
  %_cond2_710 = or i1 %_cond2_1_708, %_cond2_2_709
  %_cond4_711 = icmp ule i8* %_pot_address_in_parent_stack_706, %_parent_stack_end_ptr_
  %_cond1_n_cond2_712 = and i1 %_cond1_707, %_cond2_710
  %_cond1_n_cond2_cond3_713 = and i1 %_cond1_n_cond2_712, %_cond4_711
  br i1 %_cond1_n_cond2_cond3_713, label %662, label %663

; <label>:662:                                    ; preds = %657
  %_address_in_parent_stack_714 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_address_in_parent_stack_bt_715 = bitcast i8* %_address_in_parent_stack_714 to i64*
  br label %663

; <label>:663:                                    ; preds = %657, %662
  %664 = phi i64* [ %_allin_new_bt_124, %657 ], [ %_address_in_parent_stack_bt_715, %662 ]
  %_new_load_716 = load i64, i64* %664
  store i64 %_new_load_716, i64* %RBX_val, !mcsema_real_eip !128
  %_new_gep_125 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 8
  %665 = add i64 %660, 8, !mcsema_real_eip !128
  store volatile i8* %_new_gep_125, i8** %_RSP_ptr_
  store i64 %665, i64* %RSP_val, !mcsema_real_eip !128
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %666 = inttoptr i64 %665 to i64*, !mcsema_real_eip !129
  %_ptr_to_int_717 = ptrtoint i64* %_allin_new_bt_126 to i64
  %_local_end_to_int_718 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_719 = bitcast i64* %_allin_new_bt_126 to i8*
  %_offset_above_rbp_720 = sub i64 %_ptr_to_int_717, %_local_end_to_int_718
  %_pot_address_in_parent_stack_721 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_cond1_722 = icmp ugt i8* %_ptr_bt_719, %_local_stack_end_ptr_
  %_cond2_1_723 = icmp ugt i8* %_ptr_bt_719, %_parent_stack_end_ptr_
  %_cond2_2_724 = icmp ult i8* %_ptr_bt_719, %_parent_stack_start_ptr_
  %_cond2_725 = or i1 %_cond2_1_723, %_cond2_2_724
  %_cond4_726 = icmp ule i8* %_pot_address_in_parent_stack_721, %_parent_stack_end_ptr_
  %_cond1_n_cond2_727 = and i1 %_cond1_722, %_cond2_725
  %_cond1_n_cond2_cond3_728 = and i1 %_cond1_n_cond2_727, %_cond4_726
  br i1 %_cond1_n_cond2_cond3_728, label %667, label %668

; <label>:667:                                    ; preds = %663
  %_address_in_parent_stack_729 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_address_in_parent_stack_bt_730 = bitcast i8* %_address_in_parent_stack_729 to i64*
  br label %668

; <label>:668:                                    ; preds = %663, %667
  %669 = phi i64* [ %_allin_new_bt_126, %663 ], [ %_address_in_parent_stack_bt_730, %667 ]
  %_new_load_731 = load i64, i64* %669
  %_new_int2ptr_ = inttoptr i64 %_new_load_731 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_731, i64* %RBP_val, !mcsema_real_eip !129
  %_new_gep_127 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 24
  %670 = add i64 %660, 24, !mcsema_real_eip !130
  store volatile i8* %_new_gep_127, i8** %_RSP_ptr_
  store i64 %670, i64* %RSP_val, !mcsema_real_eip !130
  %671 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %671, i64* %RAX, !mcsema_real_eip !130
  %672 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %672, i64* %RBX, !mcsema_real_eip !130
  %673 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %673, i64* %RCX, !mcsema_real_eip !130
  %674 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %674, i64* %RDX, !mcsema_real_eip !130
  %675 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %675, i64* %RSI, !mcsema_real_eip !130
  %676 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %676, i64* %RDI, !mcsema_real_eip !130
  %_load_rsp_ptr_128 = load i8*, i8** %_RSP_ptr_
  %677 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  %_new_ptr2int_129 = ptrtoint i8* %_load_rsp_ptr_128 to i64
  store volatile i64 %_new_ptr2int_129, i64* %RSP
  %_load_rbp_ptr_130 = load i8*, i8** %_RBP_ptr_
  %678 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  %_new_ptr2int_131 = ptrtoint i8* %_load_rbp_ptr_130 to i64
  store volatile i64 %_new_ptr2int_131, i64* %RBP
  %679 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %679, i64* %R8, !mcsema_real_eip !130
  %680 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %680, i64* %R9, !mcsema_real_eip !130
  %681 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %681, i64* %R10, !mcsema_real_eip !130
  %682 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %682, i64* %R11, !mcsema_real_eip !130
  %683 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %683, i64* %R12, !mcsema_real_eip !130
  %684 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %684, i64* %R13, !mcsema_real_eip !130
  %685 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %685, i64* %R14, !mcsema_real_eip !130
  %686 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %686, i64* %R15, !mcsema_real_eip !130
  %687 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %687, i64* %RIP, !mcsema_real_eip !130
  %688 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %688, i1* %CF, align 1, !mcsema_real_eip !130
  %689 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %689, i1* %PF, align 1, !mcsema_real_eip !130
  %690 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %690, i1* %AF, align 1, !mcsema_real_eip !130
  %691 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %691, i1* %ZF, align 1, !mcsema_real_eip !130
  %692 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %692, i1* %SF, align 1, !mcsema_real_eip !130
  %693 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %693, i1* %OF, align 1, !mcsema_real_eip !130
  %694 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %694, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %695 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %695, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %696 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %696, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %697 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %697, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %698 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %698, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %699 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %699, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %700 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %700, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %701 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %701, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %702 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %702, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %703 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %703, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %704 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %704, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %705 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %705, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %706 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %706, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %707 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %707, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %708 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %708, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %709 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %709, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %710 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %710, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %711 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %711, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %712 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %712, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %713 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %713, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %714 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %714, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %715 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %715, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %716 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %716, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %717 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %717, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %_ptr_to_int_732 = ptrtoint i64* %53 to i64
  %_local_end_to_int_733 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_734 = bitcast i64* %53 to i8*
  %_offset_above_rbp_735 = sub i64 %_ptr_to_int_732, %_local_end_to_int_733
  %_pot_address_in_parent_stack_736 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_cond1_737 = icmp ugt i8* %_ptr_bt_734, %_local_stack_end_ptr_
  %_cond2_1_738 = icmp ugt i8* %_ptr_bt_734, %_parent_stack_end_ptr_
  %_cond2_2_739 = icmp ult i8* %_ptr_bt_734, %_parent_stack_start_ptr_
  %_cond2_740 = or i1 %_cond2_1_738, %_cond2_2_739
  %_cond4_741 = icmp ule i8* %_pot_address_in_parent_stack_736, %_parent_stack_end_ptr_
  %_cond1_n_cond2_742 = and i1 %_cond1_737, %_cond2_740
  %_cond1_n_cond2_cond3_743 = and i1 %_cond1_n_cond2_742, %_cond4_741
  br i1 %_cond1_n_cond2_cond3_743, label %718, label %719

; <label>:718:                                    ; preds = %668
  %_address_in_parent_stack_744 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_address_in_parent_stack_bt_745 = bitcast i8* %_address_in_parent_stack_744 to i64*
  br label %719

; <label>:719:                                    ; preds = %668, %718
  %720 = phi i64* [ %53, %668 ], [ %_address_in_parent_stack_bt_745, %718 ]
  %_new_load_746 = load i64, i64* %720
  store i64 %_new_load_746, i64* %52, align 4
  %721 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %721, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %722 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %722, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %723 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %723, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %724 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %724, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %725 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !130
  store i11 %725, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !130
  %726 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %726, i128* %XMM0, align 1, !mcsema_real_eip !130
  %727 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %727, i128* %XMM1, align 1, !mcsema_real_eip !130
  %728 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %728, i128* %XMM2, align 1, !mcsema_real_eip !130
  %729 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %729, i128* %XMM3, align 1, !mcsema_real_eip !130
  %730 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %730, i128* %XMM4, align 1, !mcsema_real_eip !130
  %731 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %731, i128* %XMM5, align 1, !mcsema_real_eip !130
  %732 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %732, i128* %XMM6, align 1, !mcsema_real_eip !130
  %733 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %733, i128* %XMM7, align 1, !mcsema_real_eip !130
  %734 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %734, i128* %XMM8, align 1, !mcsema_real_eip !130
  %735 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %735, i128* %XMM9, align 1, !mcsema_real_eip !130
  %736 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %736, i128* %XMM10, align 1, !mcsema_real_eip !130
  %737 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %737, i128* %XMM11, align 1, !mcsema_real_eip !130
  %738 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %738, i128* %XMM12, align 1, !mcsema_real_eip !130
  %739 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %739, i128* %XMM13, align 1, !mcsema_real_eip !130
  %740 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %740, i128* %XMM14, align 1, !mcsema_real_eip !130
  %741 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %741, i128* %XMM15, align 1, !mcsema_real_eip !130
  %742 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %742, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %743 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %743, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 272}
!3 = !{i64 273}
!4 = !{i64 276}
!5 = !{i64 283}
!6 = !{i64 300}
!7 = !{i64 304}
!8 = !{i64 311}
!9 = !{i64 316}
!10 = !{i64 318}
!11 = !{i64 323}
!12 = !{i64 327}
!13 = !{i64 333}
!14 = !{i64 337}
!15 = !{i64 344}
!16 = !{i64 348}
!17 = !{i64 355}
!18 = !{i64 359}
!19 = !{i64 362}
!20 = !{i64 365}
!21 = !{i64 369}
!22 = !{i64 373}
!23 = !{i64 377}
!24 = !{i64 380}
!25 = !{i64 383}
!26 = !{i64 386}
!27 = !{i64 389}
!28 = !{i64 393}
!29 = !{i64 397}
!30 = !{i64 401}
!31 = !{i64 405}
!32 = !{i64 409}
!33 = !{i64 415}
!34 = !{i64 420}
!35 = !{i64 426}
!36 = !{i64 429}
!37 = !{i64 432}
!38 = !{i64 435}
!39 = !{i64 439}
!40 = !{i64 444}
!41 = !{i64 447}
!42 = !{i64 451}
!43 = !{i64 455}
!44 = !{i64 459}
!45 = !{i64 462}
!46 = !{i64 465}
!47 = !{i64 468}
!48 = !{i64 471}
!49 = !{i64 474}
!50 = !{i64 476}
!51 = !{i64 483}
!52 = !{i64 484}
!53 = !{i64 0}
!54 = !{i64 1}
!55 = !{i64 4}
!56 = !{i64 5}
!57 = !{i64 9}
!58 = !{i64 13}
!59 = !{i64 17}
!60 = !{i64 20}
!61 = !{i64 24}
!62 = !{i64 27}
!63 = !{i64 30}
!64 = !{i64 34}
!65 = !{i64 38}
!66 = !{i64 42}
!67 = !{i64 46}
!68 = !{i64 50}
!69 = !{i64 54}
!70 = !{i64 57}
!71 = !{i64 61}
!72 = !{i64 65}
!73 = !{i64 68}
!74 = !{i64 72}
!75 = !{i64 75}
!76 = !{i64 78}
!77 = !{i64 82}
!78 = !{i64 85}
!79 = !{i64 88}
!80 = !{i64 91}
!81 = !{i64 95}
!82 = !{i64 98}
!83 = !{i64 101}
!84 = !{i64 104}
!85 = !{i64 107}
!86 = !{i64 110}
!87 = !{i64 113}
!88 = !{i64 116}
!89 = !{i64 120}
!90 = !{i64 124}
!91 = !{i64 127}
!92 = !{i64 131}
!93 = !{i64 135}
!94 = !{i64 138}
!95 = !{i64 142}
!96 = !{i64 146}
!97 = !{i64 150}
!98 = !{i64 153}
!99 = !{i64 157}
!100 = !{i64 161}
!101 = !{i64 164}
!102 = !{i64 167}
!103 = !{i64 170}
!104 = !{i64 173}
!105 = !{i64 177}
!106 = !{i64 181}
!107 = !{i64 184}
!108 = !{i64 188}
!109 = !{i64 192}
!110 = !{i64 195}
!111 = !{i64 199}
!112 = !{i64 203}
!113 = !{i64 207}
!114 = !{i64 210}
!115 = !{i64 214}
!116 = !{i64 218}
!117 = !{i64 221}
!118 = !{i64 224}
!119 = !{i64 227}
!120 = !{i64 230}
!121 = !{i64 234}
!122 = !{i64 238}
!123 = !{i64 241}
!124 = !{i64 244}
!125 = !{i64 248}
!126 = !{i64 255}
!127 = !{i64 262}
!128 = !{i64 265}
!129 = !{i64 266}
!130 = !{i64 267}
