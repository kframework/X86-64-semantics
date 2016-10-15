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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -136
  %81 = add i64 %78, -136
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16, !mcsema_real_eip !4
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !4
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
  %91 = icmp ult i64 %79, 128, !mcsema_real_eip !4
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
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !17
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -8
  %135 = add i64 %131, -8, !mcsema_real_eip !18
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !18
  %137 = bitcast i64* %_allin_new_bt_27 to i32*
  %138 = load i32, i32* %137, !mcsema_real_eip !18
  %139 = zext i32 %138 to i64, !mcsema_real_eip !18
  store i64 %139, i64* %RCX_val, !mcsema_real_eip !18
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -48
  %141 = add i64 %140, -48, !mcsema_real_eip !19
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !19
  %143 = bitcast i64* %_allin_new_bt_30 to i32*
  store i32 %138, i32* %143, !mcsema_real_eip !19
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %145 = add i64 %144, -16, !mcsema_real_eip !20
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !20
  %147 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !20
  store i64 %147, i64* %RDI_val, !mcsema_real_eip !20
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -56
  %148 = add i64 %144, -56, !mcsema_real_eip !21
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !21
  store i64 %147, i64* %_allin_new_bt_35, !mcsema_real_eip !21
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -56
  %151 = add i64 %150, -56, !mcsema_real_eip !22
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !22
  %153 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !22
  store i64 %153, i64* %RDI_val, !mcsema_real_eip !22
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -48
  %154 = add i64 %150, -48, !mcsema_real_eip !23
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !23
  %156 = bitcast i64* %_allin_new_bt_40 to i32*
  %157 = load i32, i32* %156, !mcsema_real_eip !23
  %158 = zext i32 %157 to i64, !mcsema_real_eip !23
  store i64 %158, i64* %RSI_val, !mcsema_real_eip !23
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -8
  %160 = add i64 %159, -8, !mcsema_real_eip !24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !24
  %162 = bitcast i64* %_allin_new_bt_43 to i32*
  %163 = load i32, i32* %162, !mcsema_real_eip !24
  %164 = zext i32 %163 to i64, !mcsema_real_eip !24
  store i64 %164, i64* %RCX_val, !mcsema_real_eip !24
  %_load_rsp_ptr_44 = load i8*, i8** %_RSP_ptr_
  %165 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  %_new_ptr2int_45 = ptrtoint i8* %_load_rsp_ptr_44 to i64
  store volatile i64 %_new_ptr2int_45, i64* %RDX_val
  %_new_gep_46 = getelementptr i8, i8* %_load_rsp_ptr_44, i64 16
  %166 = add i64 %165, 16, !mcsema_real_eip !26
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !26
  %168 = bitcast i64* %_allin_new_bt_47 to i32*
  store i32 %163, i32* %168, !mcsema_real_eip !26
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -16
  %170 = add i64 %169, -16, !mcsema_real_eip !27
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !27
  %172 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !27
  %173 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %174 = add i64 %173, 8, !mcsema_real_eip !28
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !28
  store i64 %172, i64* %175, !mcsema_real_eip !28
  %176 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %177 = add i64 %176, 32, !mcsema_real_eip !29
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !29
  %179 = load i64, i64* %RAX_val, !mcsema_real_eip !29
  store i64 %179, i64* %178, !mcsema_real_eip !29
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -16
  %181 = add i64 %180, -16, !mcsema_real_eip !30
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !30
  %183 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !30
  store i64 %183, i64* %R8_val, !mcsema_real_eip !30
  %184 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  %185 = add i64 %184, 24, !mcsema_real_eip !31
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !31
  store i64 %183, i64* %186, !mcsema_real_eip !31
  %187 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !32
  %189 = bitcast i64* %188 to i32*
  store i32 3, i32* %189, !mcsema_real_eip !32
  store i64 1, i64* %RCX_val, !mcsema_real_eip !33
  store i64 2, i64* %R9_val, !mcsema_real_eip !34
  %190 = load i64, i64* %R8_val, !mcsema_real_eip !35
  store i64 %190, i64* %RDX_val, !mcsema_real_eip !35
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %191 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -76
  %192 = add i64 %191, -76, !mcsema_real_eip !36
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !36
  %194 = load i64, i64* %RCX_val, !mcsema_real_eip !36
  %195 = trunc i64 %194 to i32, !mcsema_real_eip !36
  %196 = bitcast i64* %_allin_new_bt_56 to i32*
  store i32 %195, i32* %196, !mcsema_real_eip !36
  %197 = load i64, i64* %RAX_val, !mcsema_real_eip !37
  store i64 %197, i64* %RCX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -76
  %199 = add i64 %198, -76, !mcsema_real_eip !38
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !38
  %201 = bitcast i64* %_allin_new_bt_59 to i32*
  %202 = load i32, i32* %201, !mcsema_real_eip !38
  %203 = zext i32 %202 to i64, !mcsema_real_eip !38
  store i64 %203, i64* %R8_val, !mcsema_real_eip !38
  %_load_rsp_ptr_60 = load i8*, i8** %_RSP_ptr_
  %204 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_60, i64 -8
  %205 = add i64 %204, -8
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %_allin_new_bt_62, !mcsema_real_eip !39
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %205, i64* %RSP_val, !mcsema_real_eip !39
  %207 = load i64, i64* %RAX_val, !mcsema_real_eip !39
  store i64 %207, i64* %RAX, !mcsema_real_eip !39
  %208 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %208, i64* %RBX, !mcsema_real_eip !39
  %209 = load i64, i64* %RCX_val, !mcsema_real_eip !39
  store i64 %209, i64* %RCX, !mcsema_real_eip !39
  %210 = load i64, i64* %RDX_val, !mcsema_real_eip !39
  store i64 %210, i64* %RDX, !mcsema_real_eip !39
  %211 = load i64, i64* %RSI_val, !mcsema_real_eip !39
  store i64 %211, i64* %RSI, !mcsema_real_eip !39
  %212 = load i64, i64* %RDI_val, !mcsema_real_eip !39
  store i64 %212, i64* %RDI, !mcsema_real_eip !39
  %_load_rsp_ptr_63 = load i8*, i8** %_RSP_ptr_
  %213 = load i64, i64* %RSP_val, !mcsema_real_eip !39
  %_new_ptr2int_64 = ptrtoint i8* %_load_rsp_ptr_63 to i64
  store volatile i64 %_new_ptr2int_64, i64* %RSP
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %214 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_ptr2int_66 = ptrtoint i8* %_load_rbp_ptr_65 to i64
  store volatile i64 %_new_ptr2int_66, i64* %RBP
  %215 = load i64, i64* %R8_val, !mcsema_real_eip !39
  store i64 %215, i64* %R8, !mcsema_real_eip !39
  %216 = load i64, i64* %R9_val, !mcsema_real_eip !39
  store i64 %216, i64* %R9, !mcsema_real_eip !39
  %217 = load i64, i64* %R10_val, !mcsema_real_eip !39
  store i64 %217, i64* %R10, !mcsema_real_eip !39
  %218 = load i64, i64* %R11_val, !mcsema_real_eip !39
  store i64 %218, i64* %R11, !mcsema_real_eip !39
  %219 = load i64, i64* %R12_val, !mcsema_real_eip !39
  store i64 %219, i64* %R12, !mcsema_real_eip !39
  %220 = load i64, i64* %R13_val, !mcsema_real_eip !39
  store i64 %220, i64* %R13, !mcsema_real_eip !39
  %221 = load i64, i64* %R14_val, !mcsema_real_eip !39
  store i64 %221, i64* %R14, !mcsema_real_eip !39
  %222 = load i64, i64* %R15_val, !mcsema_real_eip !39
  store i64 %222, i64* %R15, !mcsema_real_eip !39
  %223 = load i64, i64* %RIP_val, !mcsema_real_eip !39
  store i64 %223, i64* %RIP, !mcsema_real_eip !39
  %224 = load i1, i1* %CF_val, !mcsema_real_eip !39
  store i1 %224, i1* %CF, align 1, !mcsema_real_eip !39
  %225 = load i1, i1* %PF_val, !mcsema_real_eip !39
  store i1 %225, i1* %PF, align 1, !mcsema_real_eip !39
  %226 = load i1, i1* %AF_val, !mcsema_real_eip !39
  store i1 %226, i1* %AF, align 1, !mcsema_real_eip !39
  %227 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  store i1 %227, i1* %ZF, align 1, !mcsema_real_eip !39
  %228 = load i1, i1* %SF_val, !mcsema_real_eip !39
  store i1 %228, i1* %SF, align 1, !mcsema_real_eip !39
  %229 = load i1, i1* %OF_val, !mcsema_real_eip !39
  store i1 %229, i1* %OF, align 1, !mcsema_real_eip !39
  %230 = load i1, i1* %DF_val, !mcsema_real_eip !39
  store i1 %230, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %231 = load i1, i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %231, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %232 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %232, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %233 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %233, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %234 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %234, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %235 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %235, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %236 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %236, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %237 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %237, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %238 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %238, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %239 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %239, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %240 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %240, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %241 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %241, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %242 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %242, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %243 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %243, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %244 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %244, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %245 = load i1, i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %245, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %246 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %246, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %247 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %247, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %248 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %248, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %249 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %249, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %250 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %250, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %251 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %251, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %252 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %252, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %253 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %253, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %254 = load i64, i64* %53, align 4
  store i64 %254, i64* %52, align 4
  %255 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %255, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %256 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %256, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %257 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %257, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %258 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %258, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %259 = load i128, i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %259, i128* %XMM0, align 1, !mcsema_real_eip !39
  %260 = load i128, i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %260, i128* %XMM1, align 1, !mcsema_real_eip !39
  %261 = load i128, i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %261, i128* %XMM2, align 1, !mcsema_real_eip !39
  %262 = load i128, i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %262, i128* %XMM3, align 1, !mcsema_real_eip !39
  %263 = load i128, i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %263, i128* %XMM4, align 1, !mcsema_real_eip !39
  %264 = load i128, i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %264, i128* %XMM5, align 1, !mcsema_real_eip !39
  %265 = load i128, i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %265, i128* %XMM6, align 1, !mcsema_real_eip !39
  %266 = load i128, i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %266, i128* %XMM7, align 1, !mcsema_real_eip !39
  %267 = load i128, i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %267, i128* %XMM8, align 1, !mcsema_real_eip !39
  %268 = load i128, i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %268, i128* %XMM9, align 1, !mcsema_real_eip !39
  %269 = load i128, i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %269, i128* %XMM10, align 1, !mcsema_real_eip !39
  %270 = load i128, i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %270, i128* %XMM11, align 1, !mcsema_real_eip !39
  %271 = load i128, i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %271, i128* %XMM12, align 1, !mcsema_real_eip !39
  %272 = load i128, i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %272, i128* %XMM13, align 1, !mcsema_real_eip !39
  %273 = load i128, i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %273, i128* %XMM14, align 1, !mcsema_real_eip !39
  %274 = load i128, i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %274, i128* %XMM15, align 1, !mcsema_real_eip !39
  %275 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %275, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %276 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %276, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_101)
  %277 = load i64, i64* %RAX, !mcsema_real_eip !39
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !39
  %278 = load i64, i64* %RBX, !mcsema_real_eip !39
  store i64 %278, i64* %RBX_val, !mcsema_real_eip !39
  %279 = load i64, i64* %RCX, !mcsema_real_eip !39
  store i64 %279, i64* %RCX_val, !mcsema_real_eip !39
  %280 = load i64, i64* %RDX, !mcsema_real_eip !39
  store i64 %280, i64* %RDX_val, !mcsema_real_eip !39
  %281 = load i64, i64* %RSI, !mcsema_real_eip !39
  store i64 %281, i64* %RSI_val, !mcsema_real_eip !39
  %282 = load i64, i64* %RDI, !mcsema_real_eip !39
  store i64 %282, i64* %RDI_val, !mcsema_real_eip !39
  %283 = load i64, i64* %RSP, !mcsema_real_eip !39
  store i64 %283, i64* %RSP_val, !mcsema_real_eip !39
  %284 = load i64, i64* %RBP, !mcsema_real_eip !39
  store i64 %284, i64* %RBP_val, !mcsema_real_eip !39
  %285 = load i64, i64* %R8, !mcsema_real_eip !39
  store i64 %285, i64* %R8_val, !mcsema_real_eip !39
  %286 = load i64, i64* %R9, !mcsema_real_eip !39
  store i64 %286, i64* %R9_val, !mcsema_real_eip !39
  %287 = load i64, i64* %R10, !mcsema_real_eip !39
  store i64 %287, i64* %R10_val, !mcsema_real_eip !39
  %288 = load i64, i64* %R11, !mcsema_real_eip !39
  store i64 %288, i64* %R11_val, !mcsema_real_eip !39
  %289 = load i64, i64* %R12, !mcsema_real_eip !39
  store i64 %289, i64* %R12_val, !mcsema_real_eip !39
  %290 = load i64, i64* %R13, !mcsema_real_eip !39
  store i64 %290, i64* %R13_val, !mcsema_real_eip !39
  %291 = load i64, i64* %R14, !mcsema_real_eip !39
  store i64 %291, i64* %R14_val, !mcsema_real_eip !39
  %292 = load i64, i64* %R15, !mcsema_real_eip !39
  store i64 %292, i64* %R15_val, !mcsema_real_eip !39
  %293 = load i64, i64* %RIP, !mcsema_real_eip !39
  store i64 %293, i64* %RIP_val, !mcsema_real_eip !39
  %294 = load i1, i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %294, i1* %CF_val, !mcsema_real_eip !39
  %295 = load i1, i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %295, i1* %PF_val, !mcsema_real_eip !39
  %296 = load i1, i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %296, i1* %AF_val, !mcsema_real_eip !39
  %297 = load i1, i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %297, i1* %ZF_val, !mcsema_real_eip !39
  %298 = load i1, i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %298, i1* %SF_val, !mcsema_real_eip !39
  %299 = load i1, i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %299, i1* %OF_val, !mcsema_real_eip !39
  %300 = load i1, i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %300, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %301 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %301, i1* %FPU_B_val, !mcsema_real_eip !39
  %302 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %302, i1* %FPU_C3_val, !mcsema_real_eip !39
  %303 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %303, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %304 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %304, i1* %FPU_C2_val, !mcsema_real_eip !39
  %305 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %305, i1* %FPU_C1_val, !mcsema_real_eip !39
  %306 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %306, i1* %FPU_C0_val, !mcsema_real_eip !39
  %307 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %307, i1* %FPU_ES_val, !mcsema_real_eip !39
  %308 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %308, i1* %FPU_SF_val, !mcsema_real_eip !39
  %309 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %309, i1* %FPU_PE_val, !mcsema_real_eip !39
  %310 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %310, i1* %FPU_UE_val, !mcsema_real_eip !39
  %311 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %311, i1* %FPU_OE_val, !mcsema_real_eip !39
  %312 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %312, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %313 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %313, i1* %FPU_DE_val, !mcsema_real_eip !39
  %314 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %314, i1* %FPU_IE_val, !mcsema_real_eip !39
  %315 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %315, i1* %FPU_X_val, !mcsema_real_eip !39
  %316 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %316, i2* %FPU_RC_val, !mcsema_real_eip !39
  %317 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %317, i2* %FPU_PC_val, !mcsema_real_eip !39
  %318 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %318, i1* %FPU_PM_val, !mcsema_real_eip !39
  %319 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %319, i1* %FPU_UM_val, !mcsema_real_eip !39
  %320 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %320, i1* %FPU_OM_val, !mcsema_real_eip !39
  %321 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %321, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %322 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %322, i1* %FPU_DM_val, !mcsema_real_eip !39
  %323 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %323, i1* %FPU_IM_val, !mcsema_real_eip !39
  %324 = load i64, i64* %52, align 4
  store i64 %324, i64* %53, align 4
  %325 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %325, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %326 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %326, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %327 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %327, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %328 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %328, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %329 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %329, i128* %XMM0_val, !mcsema_real_eip !39
  %330 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %330, i128* %XMM1_val, !mcsema_real_eip !39
  %331 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %331, i128* %XMM2_val, !mcsema_real_eip !39
  %332 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %332, i128* %XMM3_val, !mcsema_real_eip !39
  %333 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %333, i128* %XMM4_val, !mcsema_real_eip !39
  %334 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %334, i128* %XMM5_val, !mcsema_real_eip !39
  %335 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %335, i128* %XMM6_val, !mcsema_real_eip !39
  %336 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %336, i128* %XMM7_val, !mcsema_real_eip !39
  %337 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %337, i128* %XMM8_val, !mcsema_real_eip !39
  %338 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %338, i128* %XMM9_val, !mcsema_real_eip !39
  %339 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %339, i128* %XMM10_val, !mcsema_real_eip !39
  %340 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %340, i128* %XMM11_val, !mcsema_real_eip !39
  %341 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %341, i128* %XMM12_val, !mcsema_real_eip !39
  %342 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %342, i128* %XMM13_val, !mcsema_real_eip !39
  %343 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %343, i128* %XMM14_val, !mcsema_real_eip !39
  %344 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %344, i128* %XMM15_val, !mcsema_real_eip !39
  %345 = load i64, i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %345, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %346 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %346, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %347 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -64
  %348 = add i64 %347, -64, !mcsema_real_eip !40
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !40
  %350 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  %351 = trunc i64 %350 to i32, !mcsema_real_eip !40
  %352 = bitcast i64* %_allin_new_bt_69 to i32*
  store i32 %351, i32* %352, !mcsema_real_eip !40
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %353 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -72
  %354 = add i64 %353, -72, !mcsema_real_eip !41
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !41
  %356 = load i64, i64* %RAX_val, !mcsema_real_eip !41
  store i64 %356, i64* %_allin_new_bt_72, !mcsema_real_eip !41
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %357 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -72
  %358 = add i64 %357, -72, !mcsema_real_eip !42
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !42
  %360 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !42
  store i64 %360, i64* %RAX_val, !mcsema_real_eip !42
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -40
  %361 = add i64 %357, -40, !mcsema_real_eip !43
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !43
  store i64 %360, i64* %_allin_new_bt_77, !mcsema_real_eip !43
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %363 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -64
  %364 = add i64 %363, -64, !mcsema_real_eip !44
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !44
  %366 = bitcast i64* %_allin_new_bt_80 to i32*
  %367 = load i32, i32* %366, !mcsema_real_eip !44
  %368 = zext i32 %367 to i64, !mcsema_real_eip !44
  store i64 %368, i64* %RDX_val, !mcsema_real_eip !44
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %370 = add i64 %369, -32, !mcsema_real_eip !45
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !45
  %372 = bitcast i64* %_allin_new_bt_83 to i32*
  store i32 %367, i32* %372, !mcsema_real_eip !45
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -40
  %374 = add i64 %373, -40, !mcsema_real_eip !46
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !46
  %376 = bitcast i64* %_allin_new_bt_86 to i32*
  %377 = load i32, i32* %376, !mcsema_real_eip !46
  %378 = zext i32 %377 to i64, !mcsema_real_eip !46
  store i64 %378, i64* %RDX_val, !mcsema_real_eip !46
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %379 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -36
  %380 = add i64 %379, -36, !mcsema_real_eip !47
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !47
  %382 = bitcast i64* %_allin_new_bt_89 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !47
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 %383)
  %384 = extractvalue { i32, i1 } %uadd, 0
  %385 = xor i32 %384, %383, !mcsema_real_eip !47
  %386 = xor i32 %385, %377, !mcsema_real_eip !47
  %387 = and i32 %386, 16, !mcsema_real_eip !47
  %388 = icmp ne i32 %387, 0, !mcsema_real_eip !47
  store i1 %388, i1* %AF_val, !mcsema_real_eip !47
  %389 = icmp slt i32 %384, 0
  store i1 %389, i1* %SF_val, !mcsema_real_eip !47
  %390 = icmp eq i32 %384, 0, !mcsema_real_eip !47
  store i1 %390, i1* %ZF_val, !mcsema_real_eip !47
  %391 = xor i32 %377, -2147483648, !mcsema_real_eip !47
  %392 = xor i32 %391, %383, !mcsema_real_eip !47
  %393 = and i32 %385, %392, !mcsema_real_eip !47
  %394 = icmp slt i32 %393, 0
  store i1 %394, i1* %OF_val, !mcsema_real_eip !47
  %395 = trunc i32 %384 to i8, !mcsema_real_eip !47
  %396 = tail call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !47
  %397 = and i8 %396, 1
  %398 = icmp eq i8 %397, 0
  store i1 %398, i1* %PF_val, !mcsema_real_eip !47
  %399 = extractvalue { i32, i1 } %uadd, 1
  store i1 %399, i1* %CF_val, !mcsema_real_eip !47
  %400 = zext i32 %384 to i64, !mcsema_real_eip !47
  store i64 %400, i64* %RDX_val, !mcsema_real_eip !47
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %401 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -32
  %402 = add i64 %401, -32, !mcsema_real_eip !48
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !48
  %404 = bitcast i64* %_allin_new_bt_92 to i32*
  %405 = load i32, i32* %404, !mcsema_real_eip !48
  %406 = add i32 %384, %405
  %407 = zext i32 %406 to i64, !mcsema_real_eip !48
  store i64 %407, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !49
  %_load_rsp_ptr_93 = load i8*, i8** %_RSP_ptr_
  %408 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %_new_ptr2int_94 = ptrtoint i8* %_load_rsp_ptr_93 to i64
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_94, i64 128)
  %409 = extractvalue { i64, i1 } %uadd210, 0
  %410 = xor i64 %409, %_new_ptr2int_94, !mcsema_real_eip !50
  %411 = and i64 %410, 16, !mcsema_real_eip !50
  %412 = icmp ne i64 %411, 0, !mcsema_real_eip !50
  store i1 %412, i1* %AF_val, !mcsema_real_eip !50
  %413 = icmp slt i64 %409, 0
  store i1 %413, i1* %SF_val, !mcsema_real_eip !50
  %414 = icmp eq i64 %409, 0, !mcsema_real_eip !50
  store i1 %414, i1* %ZF_val, !mcsema_real_eip !50
  %415 = xor i64 %_new_ptr2int_94, -9223372036854775808, !mcsema_real_eip !50
  %416 = and i64 %410, %415, !mcsema_real_eip !50
  %417 = icmp slt i64 %416, 0
  store i1 %417, i1* %OF_val, !mcsema_real_eip !50
  %418 = trunc i64 %409 to i8, !mcsema_real_eip !50
  %419 = tail call i8 @llvm.ctpop.i8(i8 %418), !mcsema_real_eip !50
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  store i1 %421, i1* %PF_val, !mcsema_real_eip !50
  %422 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %422, i1* %CF_val, !mcsema_real_eip !50
  %_new_int2ptr_ = inttoptr i64 %409 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %409, i64* %RSP_val, !mcsema_real_eip !50
  %423 = inttoptr i64 %409 to i64*, !mcsema_real_eip !51
  %424 = load i64, i64* %423, !mcsema_real_eip !51
  %_new_int2ptr_95 = inttoptr i64 %424 to i8*
  store volatile i8* %_new_int2ptr_95, i8** %_RBP_ptr_
  store i64 %424, i64* %RBP_val, !mcsema_real_eip !51
  %425 = add i64 %409, 16, !mcsema_real_eip !52
  %_new_int2ptr_96 = inttoptr i64 %425 to i8*
  store volatile i8* %_new_int2ptr_96, i8** %_RSP_ptr_
  store i64 %425, i64* %RSP_val, !mcsema_real_eip !52
  %426 = load i64, i64* %RAX_val, !mcsema_real_eip !52
  store i64 %426, i64* %RAX, !mcsema_real_eip !52
  %427 = load i64, i64* %RBX_val, !mcsema_real_eip !52
  store i64 %427, i64* %RBX, !mcsema_real_eip !52
  %428 = load i64, i64* %RCX_val, !mcsema_real_eip !52
  store i64 %428, i64* %RCX, !mcsema_real_eip !52
  %429 = load i64, i64* %RDX_val, !mcsema_real_eip !52
  store i64 %429, i64* %RDX, !mcsema_real_eip !52
  %430 = load i64, i64* %RSI_val, !mcsema_real_eip !52
  store i64 %430, i64* %RSI, !mcsema_real_eip !52
  %431 = load i64, i64* %RDI_val, !mcsema_real_eip !52
  store i64 %431, i64* %RDI, !mcsema_real_eip !52
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %432 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  %_new_ptr2int_98 = ptrtoint i8* %_load_rsp_ptr_97 to i64
  store volatile i64 %_new_ptr2int_98, i64* %RSP
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %433 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %_new_ptr2int_100 = ptrtoint i8* %_load_rbp_ptr_99 to i64
  store volatile i64 %_new_ptr2int_100, i64* %RBP
  %434 = load i64, i64* %R8_val, !mcsema_real_eip !52
  store i64 %434, i64* %R8, !mcsema_real_eip !52
  %435 = load i64, i64* %R9_val, !mcsema_real_eip !52
  store i64 %435, i64* %R9, !mcsema_real_eip !52
  %436 = load i64, i64* %R10_val, !mcsema_real_eip !52
  store i64 %436, i64* %R10, !mcsema_real_eip !52
  %437 = load i64, i64* %R11_val, !mcsema_real_eip !52
  store i64 %437, i64* %R11, !mcsema_real_eip !52
  %438 = load i64, i64* %R12_val, !mcsema_real_eip !52
  store i64 %438, i64* %R12, !mcsema_real_eip !52
  %439 = load i64, i64* %R13_val, !mcsema_real_eip !52
  store i64 %439, i64* %R13, !mcsema_real_eip !52
  %440 = load i64, i64* %R14_val, !mcsema_real_eip !52
  store i64 %440, i64* %R14, !mcsema_real_eip !52
  %441 = load i64, i64* %R15_val, !mcsema_real_eip !52
  store i64 %441, i64* %R15, !mcsema_real_eip !52
  %442 = load i64, i64* %RIP_val, !mcsema_real_eip !52
  store i64 %442, i64* %RIP, !mcsema_real_eip !52
  %443 = load i1, i1* %CF_val, !mcsema_real_eip !52
  store i1 %443, i1* %CF, align 1, !mcsema_real_eip !52
  %444 = load i1, i1* %PF_val, !mcsema_real_eip !52
  store i1 %444, i1* %PF, align 1, !mcsema_real_eip !52
  %445 = load i1, i1* %AF_val, !mcsema_real_eip !52
  store i1 %445, i1* %AF, align 1, !mcsema_real_eip !52
  %446 = load i1, i1* %ZF_val, !mcsema_real_eip !52
  store i1 %446, i1* %ZF, align 1, !mcsema_real_eip !52
  %447 = load i1, i1* %SF_val, !mcsema_real_eip !52
  store i1 %447, i1* %SF, align 1, !mcsema_real_eip !52
  %448 = load i1, i1* %OF_val, !mcsema_real_eip !52
  store i1 %448, i1* %OF, align 1, !mcsema_real_eip !52
  %449 = load i1, i1* %DF_val, !mcsema_real_eip !52
  store i1 %449, i1* %DF, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  %450 = load i1, i1* %FPU_B_val, !mcsema_real_eip !52
  store i1 %450, i1* %FPU_B, align 1, !mcsema_real_eip !52
  %451 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !52
  store i1 %451, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  %452 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !52
  store i3 %452, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  %453 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !52
  store i1 %453, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  %454 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !52
  store i1 %454, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  %455 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !52
  store i1 %455, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  %456 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !52
  store i1 %456, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  %457 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !52
  store i1 %457, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  %458 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !52
  store i1 %458, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  %459 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !52
  store i1 %459, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  %460 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !52
  store i1 %460, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  %461 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !52
  store i1 %461, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  %462 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !52
  store i1 %462, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  %463 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !52
  store i1 %463, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  %464 = load i1, i1* %FPU_X_val, !mcsema_real_eip !52
  store i1 %464, i1* %FPU_X, align 1, !mcsema_real_eip !52
  %465 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !52
  store i2 %465, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  %466 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !52
  store i2 %466, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  %467 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !52
  store i1 %467, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  %468 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !52
  store i1 %468, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  %469 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !52
  store i1 %469, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  %470 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !52
  store i1 %470, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  %471 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !52
  store i1 %471, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  %472 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !52
  store i1 %472, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %473 = load i64, i64* %53, align 4
  store i64 %473, i64* %52, align 4
  %474 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !52
  store i16 %474, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  %475 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !52
  store i64 %475, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !52
  %476 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !52
  store i16 %476, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  %477 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !52
  store i64 %477, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !52
  %478 = load i128, i128* %XMM0_val, !mcsema_real_eip !52
  store i128 %478, i128* %XMM0, align 1, !mcsema_real_eip !52
  %479 = load i128, i128* %XMM1_val, !mcsema_real_eip !52
  store i128 %479, i128* %XMM1, align 1, !mcsema_real_eip !52
  %480 = load i128, i128* %XMM2_val, !mcsema_real_eip !52
  store i128 %480, i128* %XMM2, align 1, !mcsema_real_eip !52
  %481 = load i128, i128* %XMM3_val, !mcsema_real_eip !52
  store i128 %481, i128* %XMM3, align 1, !mcsema_real_eip !52
  %482 = load i128, i128* %XMM4_val, !mcsema_real_eip !52
  store i128 %482, i128* %XMM4, align 1, !mcsema_real_eip !52
  %483 = load i128, i128* %XMM5_val, !mcsema_real_eip !52
  store i128 %483, i128* %XMM5, align 1, !mcsema_real_eip !52
  %484 = load i128, i128* %XMM6_val, !mcsema_real_eip !52
  store i128 %484, i128* %XMM6, align 1, !mcsema_real_eip !52
  %485 = load i128, i128* %XMM7_val, !mcsema_real_eip !52
  store i128 %485, i128* %XMM7, align 1, !mcsema_real_eip !52
  %486 = load i128, i128* %XMM8_val, !mcsema_real_eip !52
  store i128 %486, i128* %XMM8, align 1, !mcsema_real_eip !52
  %487 = load i128, i128* %XMM9_val, !mcsema_real_eip !52
  store i128 %487, i128* %XMM9, align 1, !mcsema_real_eip !52
  %488 = load i128, i128* %XMM10_val, !mcsema_real_eip !52
  store i128 %488, i128* %XMM10, align 1, !mcsema_real_eip !52
  %489 = load i128, i128* %XMM11_val, !mcsema_real_eip !52
  store i128 %489, i128* %XMM11, align 1, !mcsema_real_eip !52
  %490 = load i128, i128* %XMM12_val, !mcsema_real_eip !52
  store i128 %490, i128* %XMM12, align 1, !mcsema_real_eip !52
  %491 = load i128, i128* %XMM13_val, !mcsema_real_eip !52
  store i128 %491, i128* %XMM13, align 1, !mcsema_real_eip !52
  %492 = load i128, i128* %XMM14_val, !mcsema_real_eip !52
  store i128 %492, i128* %XMM14, align 1, !mcsema_real_eip !52
  %493 = load i128, i128* %XMM15_val, !mcsema_real_eip !52
  store i128 %493, i128* %XMM15, align 1, !mcsema_real_eip !52
  %494 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !52
  store i64 %494, i64* %STACK_BASE, align 1, !mcsema_real_eip !52
  %495 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !52
  store i64 %495, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !52
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
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !53
  store i64 %77, i64* %80, !mcsema_real_eip !53
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !54
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !55
  store i64 %81, i64* %83, !mcsema_real_eip !55
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !55
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %85 = add i64 %84, 48, !mcsema_real_eip !56
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !56
  %87 = load i64, i64* %86, !mcsema_real_eip !56
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !56
  %88 = add i64 %84, 40, !mcsema_real_eip !57
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !57
  %90 = load i64, i64* %89, !mcsema_real_eip !57
  store i64 %90, i64* %R10_val, !mcsema_real_eip !57
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %92 = add i64 %91, 24, !mcsema_real_eip !58
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !58
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !58
  store i64 %94, i64* %R11_val, !mcsema_real_eip !58
  %95 = add i64 %91, 16, !mcsema_real_eip !59
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !59
  %97 = bitcast i64* %96 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !59
  %99 = zext i32 %98 to i64, !mcsema_real_eip !59
  store i64 %99, i64* %RBX_val, !mcsema_real_eip !59
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %101 = add i64 %100, -56, !mcsema_real_eip !60
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !60
  %103 = load i64, i64* %RDI_val, !mcsema_real_eip !60
  store i64 %103, i64* %102, !mcsema_real_eip !60
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %105 = add i64 %104, -48, !mcsema_real_eip !61
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !61
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !61
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !61
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %111 = add i64 %110, -32, !mcsema_real_eip !62
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !62
  %113 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !62
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !62
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %117 = add i64 %116, -56, !mcsema_real_eip !63
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !63
  %119 = load i64, i64* %118, !mcsema_real_eip !63
  store i64 %119, i64* %RDI_val, !mcsema_real_eip !63
  %120 = add i64 %116, -40, !mcsema_real_eip !64
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !64
  store i64 %119, i64* %121, !mcsema_real_eip !64
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %123 = add i64 %122, -64, !mcsema_real_eip !65
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !65
  %125 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %125, i64* %124, !mcsema_real_eip !65
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %127 = add i64 %126, -72, !mcsema_real_eip !66
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !66
  %129 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %129, i64* %128, !mcsema_real_eip !66
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %131 = add i64 %130, -76, !mcsema_real_eip !67
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !67
  %133 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %134 = trunc i64 %133 to i32, !mcsema_real_eip !67
  %135 = bitcast i64* %132 to i32*
  store i32 %134, i32* %135, !mcsema_real_eip !67
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %137 = add i64 %136, -80, !mcsema_real_eip !68
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !68
  %139 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !68
  %141 = bitcast i64* %138 to i32*
  store i32 %140, i32* %141, !mcsema_real_eip !68
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %143 = add i64 %142, -84, !mcsema_real_eip !69
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !69
  %145 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !69
  %147 = bitcast i64* %144 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !69
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %149 = add i64 %148, -96, !mcsema_real_eip !70
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !70
  %151 = load i64, i64* %R10_val, !mcsema_real_eip !70
  store i64 %151, i64* %150, !mcsema_real_eip !70
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %153 = add i64 %152, -104, !mcsema_real_eip !71
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !71
  %155 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %155, i64* %154, !mcsema_real_eip !71
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %157 = add i64 %156, -40, !mcsema_real_eip !72
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !72
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !72
  %161 = zext i32 %160 to i64, !mcsema_real_eip !72
  store i64 %161, i64* %RSI_val, !mcsema_real_eip !72
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %163 = add i64 %162, -64, !mcsema_real_eip !73
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !73
  %165 = load i64, i64* %164, !mcsema_real_eip !73
  store i64 %165, i64* %RCX_val, !mcsema_real_eip !73
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !74
  %167 = bitcast i64* %166 to i32*
  %168 = load i32, i32* %167, !mcsema_real_eip !74
  %169 = zext i32 %168 to i64, !mcsema_real_eip !74
  store i64 %169, i64* %R8_val, !mcsema_real_eip !74
  %170 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %171 = trunc i64 %170 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %168, i32 %171)
  %172 = extractvalue { i32, i1 } %uadd, 0
  %173 = xor i32 %172, %171, !mcsema_real_eip !75
  %174 = xor i32 %173, %168, !mcsema_real_eip !75
  %175 = and i32 %174, 16, !mcsema_real_eip !75
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !75
  store i1 %176, i1* %AF_val, !mcsema_real_eip !75
  %177 = icmp slt i32 %172, 0
  store i1 %177, i1* %SF_val, !mcsema_real_eip !75
  %178 = icmp eq i32 %172, 0, !mcsema_real_eip !75
  store i1 %178, i1* %ZF_val, !mcsema_real_eip !75
  %179 = xor i32 %168, -2147483648, !mcsema_real_eip !75
  %180 = xor i32 %179, %171, !mcsema_real_eip !75
  %181 = and i32 %173, %180, !mcsema_real_eip !75
  %182 = icmp slt i32 %181, 0
  store i1 %182, i1* %OF_val, !mcsema_real_eip !75
  %183 = trunc i32 %172 to i8, !mcsema_real_eip !75
  %184 = tail call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !75
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  store i1 %186, i1* %PF_val, !mcsema_real_eip !75
  %187 = extractvalue { i32, i1 } %uadd, 1
  store i1 %187, i1* %CF_val, !mcsema_real_eip !75
  %188 = zext i32 %172 to i64, !mcsema_real_eip !75
  store i64 %188, i64* %RSI_val, !mcsema_real_eip !75
  %189 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %190 = add i64 %189, -72, !mcsema_real_eip !76
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !76
  %192 = load i64, i64* %191, !mcsema_real_eip !76
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !76
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !77
  %194 = bitcast i64* %193 to i32*
  %195 = load i32, i32* %194, !mcsema_real_eip !77
  %196 = zext i32 %195 to i64, !mcsema_real_eip !77
  store i64 %196, i64* %R8_val, !mcsema_real_eip !77
  %197 = load i64, i64* %RSI_val, !mcsema_real_eip !78
  %198 = trunc i64 %197 to i32, !mcsema_real_eip !78
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %198)
  %199 = extractvalue { i32, i1 } %uadd70, 0
  %200 = xor i32 %199, %198, !mcsema_real_eip !78
  %201 = xor i32 %200, %195, !mcsema_real_eip !78
  %202 = and i32 %201, 16, !mcsema_real_eip !78
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !78
  store i1 %203, i1* %AF_val, !mcsema_real_eip !78
  %204 = icmp slt i32 %199, 0
  store i1 %204, i1* %SF_val, !mcsema_real_eip !78
  %205 = icmp eq i32 %199, 0, !mcsema_real_eip !78
  store i1 %205, i1* %ZF_val, !mcsema_real_eip !78
  %206 = xor i32 %195, -2147483648, !mcsema_real_eip !78
  %207 = xor i32 %206, %198, !mcsema_real_eip !78
  %208 = and i32 %200, %207, !mcsema_real_eip !78
  %209 = icmp slt i32 %208, 0
  store i1 %209, i1* %OF_val, !mcsema_real_eip !78
  %210 = trunc i32 %199 to i8, !mcsema_real_eip !78
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !78
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF_val, !mcsema_real_eip !78
  %214 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %214, i1* %CF_val, !mcsema_real_eip !78
  %215 = zext i32 %199 to i64, !mcsema_real_eip !78
  store i64 %215, i64* %RSI_val, !mcsema_real_eip !78
  %216 = load i64, i64* %R11_val, !mcsema_real_eip !79
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !79
  %218 = bitcast i64* %217 to i32*
  %219 = load i32, i32* %218, !mcsema_real_eip !79
  %220 = zext i32 %219 to i64, !mcsema_real_eip !79
  store i64 %220, i64* %R8_val, !mcsema_real_eip !79
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %222 = add i64 %221, -96, !mcsema_real_eip !80
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !80
  %224 = load i64, i64* %223, !mcsema_real_eip !80
  store i64 %224, i64* %RCX_val, !mcsema_real_eip !80
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !81
  %226 = bitcast i64* %225 to i32*
  %227 = load i32, i32* %226, !mcsema_real_eip !81
  %228 = zext i32 %227 to i64, !mcsema_real_eip !81
  store i64 %228, i64* %R9_val, !mcsema_real_eip !81
  %229 = load i64, i64* %R8_val, !mcsema_real_eip !82
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !82
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %230)
  %231 = extractvalue { i32, i1 } %uadd71, 0
  %232 = xor i32 %231, %230, !mcsema_real_eip !82
  %233 = xor i32 %232, %227, !mcsema_real_eip !82
  %234 = and i32 %233, 16, !mcsema_real_eip !82
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !82
  store i1 %235, i1* %AF_val, !mcsema_real_eip !82
  %236 = icmp slt i32 %231, 0
  store i1 %236, i1* %SF_val, !mcsema_real_eip !82
  %237 = icmp eq i32 %231, 0, !mcsema_real_eip !82
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !82
  %238 = xor i32 %227, -2147483648, !mcsema_real_eip !82
  %239 = xor i32 %238, %230, !mcsema_real_eip !82
  %240 = and i32 %232, %239, !mcsema_real_eip !82
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !82
  %242 = trunc i32 %231 to i8, !mcsema_real_eip !82
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !82
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  store i1 %245, i1* %PF_val, !mcsema_real_eip !82
  %246 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %246, i1* %CF_val, !mcsema_real_eip !82
  %247 = zext i32 %231 to i64, !mcsema_real_eip !82
  store i64 %247, i64* %R8_val, !mcsema_real_eip !82
  %248 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !83
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !83
  %252 = zext i32 %251 to i64, !mcsema_real_eip !83
  store i64 %252, i64* %R9_val, !mcsema_real_eip !83
  %253 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %254 = trunc i64 %253 to i32, !mcsema_real_eip !84
  %255 = add i32 %251, %254
  %256 = zext i32 %255 to i64, !mcsema_real_eip !84
  store i64 %256, i64* %R8_val, !mcsema_real_eip !84
  %257 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  %258 = trunc i64 %257 to i32, !mcsema_real_eip !85
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %255, i32 %258)
  %259 = extractvalue { i32, i1 } %uadd73, 0
  %260 = xor i32 %259, %258, !mcsema_real_eip !85
  %261 = xor i32 %260, %255, !mcsema_real_eip !85
  %262 = and i32 %261, 16, !mcsema_real_eip !85
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !85
  store i1 %263, i1* %AF_val, !mcsema_real_eip !85
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF_val, !mcsema_real_eip !85
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !85
  store i1 %265, i1* %ZF_val, !mcsema_real_eip !85
  %266 = xor i32 %255, -2147483648, !mcsema_real_eip !85
  %267 = xor i32 %266, %258, !mcsema_real_eip !85
  %268 = and i32 %260, %267, !mcsema_real_eip !85
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF_val, !mcsema_real_eip !85
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !85
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !85
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF_val, !mcsema_real_eip !85
  %274 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %274, i1* %CF_val, !mcsema_real_eip !85
  %275 = zext i32 %259 to i64, !mcsema_real_eip !85
  store i64 %275, i64* %RSI_val, !mcsema_real_eip !85
  %276 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %277 = add i64 %276, -120, !mcsema_real_eip !86
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !86
  %279 = bitcast i64* %278 to i32*
  store i32 %259, i32* %279, !mcsema_real_eip !86
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %281 = add i64 %280, -36, !mcsema_real_eip !87
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !87
  %283 = bitcast i64* %282 to i32*
  %284 = load i32, i32* %283, !mcsema_real_eip !87
  %285 = zext i32 %284 to i64, !mcsema_real_eip !87
  store i64 %285, i64* %RSI_val, !mcsema_real_eip !87
  %286 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %287 = add i64 %286, -64, !mcsema_real_eip !88
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !88
  %289 = load i64, i64* %288, !mcsema_real_eip !88
  store i64 %289, i64* %RAX_val, !mcsema_real_eip !88
  %290 = add i64 %289, 4, !mcsema_real_eip !89
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !89
  %292 = bitcast i64* %291 to i32*
  %293 = load i32, i32* %292, !mcsema_real_eip !89
  %294 = zext i32 %293 to i64, !mcsema_real_eip !89
  store i64 %294, i64* %R8_val, !mcsema_real_eip !89
  %295 = load i64, i64* %RSI_val, !mcsema_real_eip !90
  %296 = trunc i64 %295 to i32, !mcsema_real_eip !90
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %293, i32 %296)
  %297 = extractvalue { i32, i1 } %uadd74, 0
  %298 = xor i32 %297, %296, !mcsema_real_eip !90
  %299 = xor i32 %298, %293, !mcsema_real_eip !90
  %300 = and i32 %299, 16, !mcsema_real_eip !90
  %301 = icmp ne i32 %300, 0, !mcsema_real_eip !90
  store i1 %301, i1* %AF_val, !mcsema_real_eip !90
  %302 = icmp slt i32 %297, 0
  store i1 %302, i1* %SF_val, !mcsema_real_eip !90
  %303 = icmp eq i32 %297, 0, !mcsema_real_eip !90
  store i1 %303, i1* %ZF_val, !mcsema_real_eip !90
  %304 = xor i32 %293, -2147483648, !mcsema_real_eip !90
  %305 = xor i32 %304, %296, !mcsema_real_eip !90
  %306 = and i32 %298, %305, !mcsema_real_eip !90
  %307 = icmp slt i32 %306, 0
  store i1 %307, i1* %OF_val, !mcsema_real_eip !90
  %308 = trunc i32 %297 to i8, !mcsema_real_eip !90
  %309 = tail call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !90
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  store i1 %311, i1* %PF_val, !mcsema_real_eip !90
  %312 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %312, i1* %CF_val, !mcsema_real_eip !90
  %313 = zext i32 %297 to i64, !mcsema_real_eip !90
  store i64 %313, i64* %RSI_val, !mcsema_real_eip !90
  %314 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %315 = add i64 %314, -72, !mcsema_real_eip !91
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !91
  %317 = load i64, i64* %316, !mcsema_real_eip !91
  store i64 %317, i64* %RAX_val, !mcsema_real_eip !91
  %318 = add i64 %317, 4, !mcsema_real_eip !92
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !92
  %320 = bitcast i64* %319 to i32*
  %321 = load i32, i32* %320, !mcsema_real_eip !92
  %322 = zext i32 %321 to i64, !mcsema_real_eip !92
  store i64 %322, i64* %R8_val, !mcsema_real_eip !92
  %323 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %324 = trunc i64 %323 to i32, !mcsema_real_eip !93
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %321, i32 %324)
  %325 = extractvalue { i32, i1 } %uadd75, 0
  %326 = xor i32 %325, %324, !mcsema_real_eip !93
  %327 = xor i32 %326, %321, !mcsema_real_eip !93
  %328 = and i32 %327, 16, !mcsema_real_eip !93
  %329 = icmp ne i32 %328, 0, !mcsema_real_eip !93
  store i1 %329, i1* %AF_val, !mcsema_real_eip !93
  %330 = icmp slt i32 %325, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !93
  %331 = icmp eq i32 %325, 0, !mcsema_real_eip !93
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !93
  %332 = xor i32 %321, -2147483648, !mcsema_real_eip !93
  %333 = xor i32 %332, %324, !mcsema_real_eip !93
  %334 = and i32 %326, %333, !mcsema_real_eip !93
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !93
  %336 = trunc i32 %325 to i8, !mcsema_real_eip !93
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !93
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !93
  %340 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !93
  %341 = zext i32 %325 to i64, !mcsema_real_eip !93
  store i64 %341, i64* %RSI_val, !mcsema_real_eip !93
  %342 = load i64, i64* %R11_val, !mcsema_real_eip !94
  %343 = add i64 %342, 4, !mcsema_real_eip !94
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !94
  %345 = bitcast i64* %344 to i32*
  %346 = load i32, i32* %345, !mcsema_real_eip !94
  %347 = zext i32 %346 to i64, !mcsema_real_eip !94
  store i64 %347, i64* %R8_val, !mcsema_real_eip !94
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %349 = add i64 %348, -96, !mcsema_real_eip !95
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !95
  %351 = load i64, i64* %350, !mcsema_real_eip !95
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !95
  %352 = add i64 %351, 4, !mcsema_real_eip !96
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !96
  %354 = bitcast i64* %353 to i32*
  %355 = load i32, i32* %354, !mcsema_real_eip !96
  %356 = zext i32 %355 to i64, !mcsema_real_eip !96
  store i64 %356, i64* %R9_val, !mcsema_real_eip !96
  %357 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %358 = trunc i64 %357 to i32, !mcsema_real_eip !97
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %355, i32 %358)
  %359 = extractvalue { i32, i1 } %uadd76, 0
  %360 = xor i32 %359, %358, !mcsema_real_eip !97
  %361 = xor i32 %360, %355, !mcsema_real_eip !97
  %362 = and i32 %361, 16, !mcsema_real_eip !97
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !97
  store i1 %363, i1* %AF_val, !mcsema_real_eip !97
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !97
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !97
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !97
  %366 = xor i32 %355, -2147483648, !mcsema_real_eip !97
  %367 = xor i32 %366, %358, !mcsema_real_eip !97
  %368 = and i32 %360, %367, !mcsema_real_eip !97
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !97
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !97
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !97
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !97
  %374 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !97
  %375 = zext i32 %359 to i64, !mcsema_real_eip !97
  store i64 %375, i64* %R8_val, !mcsema_real_eip !97
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %377 = add i64 %376, -104, !mcsema_real_eip !98
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !98
  %379 = load i64, i64* %378, !mcsema_real_eip !98
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !98
  %380 = add i64 %379, 4, !mcsema_real_eip !99
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !99
  %382 = bitcast i64* %381 to i32*
  %383 = load i32, i32* %382, !mcsema_real_eip !99
  %384 = zext i32 %383 to i64, !mcsema_real_eip !99
  store i64 %384, i64* %R9_val, !mcsema_real_eip !99
  %385 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %386 = trunc i64 %385 to i32, !mcsema_real_eip !100
  %387 = add i32 %383, %386
  %388 = zext i32 %387 to i64, !mcsema_real_eip !100
  store i64 %388, i64* %R8_val, !mcsema_real_eip !100
  %389 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %390 = trunc i64 %389 to i32, !mcsema_real_eip !101
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %387, i32 %390)
  %391 = extractvalue { i32, i1 } %uadd78, 0
  %392 = xor i32 %391, %390, !mcsema_real_eip !101
  %393 = xor i32 %392, %387, !mcsema_real_eip !101
  %394 = and i32 %393, 16, !mcsema_real_eip !101
  %395 = icmp ne i32 %394, 0, !mcsema_real_eip !101
  store i1 %395, i1* %AF_val, !mcsema_real_eip !101
  %396 = icmp slt i32 %391, 0
  store i1 %396, i1* %SF_val, !mcsema_real_eip !101
  %397 = icmp eq i32 %391, 0, !mcsema_real_eip !101
  store i1 %397, i1* %ZF_val, !mcsema_real_eip !101
  %398 = xor i32 %387, -2147483648, !mcsema_real_eip !101
  %399 = xor i32 %398, %390, !mcsema_real_eip !101
  %400 = and i32 %392, %399, !mcsema_real_eip !101
  %401 = icmp slt i32 %400, 0
  store i1 %401, i1* %OF_val, !mcsema_real_eip !101
  %402 = trunc i32 %391 to i8, !mcsema_real_eip !101
  %403 = tail call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !101
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  store i1 %405, i1* %PF_val, !mcsema_real_eip !101
  %406 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %406, i1* %CF_val, !mcsema_real_eip !101
  %407 = zext i32 %391 to i64, !mcsema_real_eip !101
  store i64 %407, i64* %RSI_val, !mcsema_real_eip !101
  %408 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %409 = add i64 %408, -116, !mcsema_real_eip !102
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !102
  %411 = bitcast i64* %410 to i32*
  store i32 %391, i32* %411, !mcsema_real_eip !102
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %413 = add i64 %412, -32, !mcsema_real_eip !103
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !103
  %415 = bitcast i64* %414 to i32*
  %416 = load i32, i32* %415, !mcsema_real_eip !103
  %417 = zext i32 %416 to i64, !mcsema_real_eip !103
  store i64 %417, i64* %RSI_val, !mcsema_real_eip !103
  %418 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %419 = add i64 %418, -64, !mcsema_real_eip !104
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !104
  %421 = load i64, i64* %420, !mcsema_real_eip !104
  store i64 %421, i64* %RAX_val, !mcsema_real_eip !104
  %422 = add i64 %421, 8, !mcsema_real_eip !105
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !105
  %424 = bitcast i64* %423 to i32*
  %425 = load i32, i32* %424, !mcsema_real_eip !105
  %426 = zext i32 %425 to i64, !mcsema_real_eip !105
  store i64 %426, i64* %R8_val, !mcsema_real_eip !105
  %427 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %428 = trunc i64 %427 to i32, !mcsema_real_eip !106
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 %428)
  %429 = extractvalue { i32, i1 } %uadd79, 0
  %430 = xor i32 %429, %428, !mcsema_real_eip !106
  %431 = xor i32 %430, %425, !mcsema_real_eip !106
  %432 = and i32 %431, 16, !mcsema_real_eip !106
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !106
  store i1 %433, i1* %AF_val, !mcsema_real_eip !106
  %434 = icmp slt i32 %429, 0
  store i1 %434, i1* %SF_val, !mcsema_real_eip !106
  %435 = icmp eq i32 %429, 0, !mcsema_real_eip !106
  store i1 %435, i1* %ZF_val, !mcsema_real_eip !106
  %436 = xor i32 %425, -2147483648, !mcsema_real_eip !106
  %437 = xor i32 %436, %428, !mcsema_real_eip !106
  %438 = and i32 %430, %437, !mcsema_real_eip !106
  %439 = icmp slt i32 %438, 0
  store i1 %439, i1* %OF_val, !mcsema_real_eip !106
  %440 = trunc i32 %429 to i8, !mcsema_real_eip !106
  %441 = tail call i8 @llvm.ctpop.i8(i8 %440), !mcsema_real_eip !106
  %442 = and i8 %441, 1
  %443 = icmp eq i8 %442, 0
  store i1 %443, i1* %PF_val, !mcsema_real_eip !106
  %444 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %444, i1* %CF_val, !mcsema_real_eip !106
  %445 = zext i32 %429 to i64, !mcsema_real_eip !106
  store i64 %445, i64* %RSI_val, !mcsema_real_eip !106
  %446 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %447 = add i64 %446, -72, !mcsema_real_eip !107
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !107
  %449 = load i64, i64* %448, !mcsema_real_eip !107
  store i64 %449, i64* %RAX_val, !mcsema_real_eip !107
  %450 = add i64 %449, 8, !mcsema_real_eip !108
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !108
  %452 = bitcast i64* %451 to i32*
  %453 = load i32, i32* %452, !mcsema_real_eip !108
  %454 = zext i32 %453 to i64, !mcsema_real_eip !108
  store i64 %454, i64* %R8_val, !mcsema_real_eip !108
  %455 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %456 = trunc i64 %455 to i32, !mcsema_real_eip !109
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %453, i32 %456)
  %457 = extractvalue { i32, i1 } %uadd80, 0
  %458 = xor i32 %457, %456, !mcsema_real_eip !109
  %459 = xor i32 %458, %453, !mcsema_real_eip !109
  %460 = and i32 %459, 16, !mcsema_real_eip !109
  %461 = icmp ne i32 %460, 0, !mcsema_real_eip !109
  store i1 %461, i1* %AF_val, !mcsema_real_eip !109
  %462 = icmp slt i32 %457, 0
  store i1 %462, i1* %SF_val, !mcsema_real_eip !109
  %463 = icmp eq i32 %457, 0, !mcsema_real_eip !109
  store i1 %463, i1* %ZF_val, !mcsema_real_eip !109
  %464 = xor i32 %453, -2147483648, !mcsema_real_eip !109
  %465 = xor i32 %464, %456, !mcsema_real_eip !109
  %466 = and i32 %458, %465, !mcsema_real_eip !109
  %467 = icmp slt i32 %466, 0
  store i1 %467, i1* %OF_val, !mcsema_real_eip !109
  %468 = trunc i32 %457 to i8, !mcsema_real_eip !109
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !109
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF_val, !mcsema_real_eip !109
  %472 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %472, i1* %CF_val, !mcsema_real_eip !109
  %473 = zext i32 %457 to i64, !mcsema_real_eip !109
  store i64 %473, i64* %RSI_val, !mcsema_real_eip !109
  %474 = load i64, i64* %R11_val, !mcsema_real_eip !110
  %475 = add i64 %474, 8, !mcsema_real_eip !110
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !110
  %477 = bitcast i64* %476 to i32*
  %478 = load i32, i32* %477, !mcsema_real_eip !110
  %479 = zext i32 %478 to i64, !mcsema_real_eip !110
  store i64 %479, i64* %R8_val, !mcsema_real_eip !110
  %480 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %481 = add i64 %480, -96, !mcsema_real_eip !111
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !111
  %483 = load i64, i64* %482, !mcsema_real_eip !111
  store i64 %483, i64* %RAX_val, !mcsema_real_eip !111
  %484 = add i64 %483, 8, !mcsema_real_eip !112
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !112
  %486 = bitcast i64* %485 to i32*
  %487 = load i32, i32* %486, !mcsema_real_eip !112
  %488 = zext i32 %487 to i64, !mcsema_real_eip !112
  store i64 %488, i64* %R9_val, !mcsema_real_eip !112
  %489 = load i64, i64* %R8_val, !mcsema_real_eip !113
  %490 = trunc i64 %489 to i32, !mcsema_real_eip !113
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %487, i32 %490)
  %491 = extractvalue { i32, i1 } %uadd81, 0
  %492 = xor i32 %491, %490, !mcsema_real_eip !113
  %493 = xor i32 %492, %487, !mcsema_real_eip !113
  %494 = and i32 %493, 16, !mcsema_real_eip !113
  %495 = icmp ne i32 %494, 0, !mcsema_real_eip !113
  store i1 %495, i1* %AF_val, !mcsema_real_eip !113
  %496 = icmp slt i32 %491, 0
  store i1 %496, i1* %SF_val, !mcsema_real_eip !113
  %497 = icmp eq i32 %491, 0, !mcsema_real_eip !113
  store i1 %497, i1* %ZF_val, !mcsema_real_eip !113
  %498 = xor i32 %487, -2147483648, !mcsema_real_eip !113
  %499 = xor i32 %498, %490, !mcsema_real_eip !113
  %500 = and i32 %492, %499, !mcsema_real_eip !113
  %501 = icmp slt i32 %500, 0
  store i1 %501, i1* %OF_val, !mcsema_real_eip !113
  %502 = trunc i32 %491 to i8, !mcsema_real_eip !113
  %503 = tail call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !113
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  store i1 %505, i1* %PF_val, !mcsema_real_eip !113
  %506 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %506, i1* %CF_val, !mcsema_real_eip !113
  %507 = zext i32 %491 to i64, !mcsema_real_eip !113
  store i64 %507, i64* %R8_val, !mcsema_real_eip !113
  %508 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %509 = add i64 %508, -104, !mcsema_real_eip !114
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !114
  %511 = load i64, i64* %510, !mcsema_real_eip !114
  store i64 %511, i64* %RAX_val, !mcsema_real_eip !114
  %512 = add i64 %511, 8, !mcsema_real_eip !115
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !115
  %514 = bitcast i64* %513 to i32*
  %515 = load i32, i32* %514, !mcsema_real_eip !115
  %516 = zext i32 %515 to i64, !mcsema_real_eip !115
  store i64 %516, i64* %R9_val, !mcsema_real_eip !115
  %517 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %518 = trunc i64 %517 to i32, !mcsema_real_eip !116
  %519 = add i32 %515, %518
  %520 = zext i32 %519 to i64, !mcsema_real_eip !116
  store i64 %520, i64* %R8_val, !mcsema_real_eip !116
  %521 = load i64, i64* %RSI_val, !mcsema_real_eip !117
  %522 = trunc i64 %521 to i32, !mcsema_real_eip !117
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %519, i32 %522)
  %523 = extractvalue { i32, i1 } %uadd83, 0
  %524 = xor i32 %523, %522, !mcsema_real_eip !117
  %525 = xor i32 %524, %519, !mcsema_real_eip !117
  %526 = and i32 %525, 16, !mcsema_real_eip !117
  %527 = icmp ne i32 %526, 0, !mcsema_real_eip !117
  store i1 %527, i1* %AF_val, !mcsema_real_eip !117
  %528 = icmp slt i32 %523, 0
  store i1 %528, i1* %SF_val, !mcsema_real_eip !117
  %529 = icmp eq i32 %523, 0, !mcsema_real_eip !117
  store i1 %529, i1* %ZF_val, !mcsema_real_eip !117
  %530 = xor i32 %519, -2147483648, !mcsema_real_eip !117
  %531 = xor i32 %530, %522, !mcsema_real_eip !117
  %532 = and i32 %524, %531, !mcsema_real_eip !117
  %533 = icmp slt i32 %532, 0
  store i1 %533, i1* %OF_val, !mcsema_real_eip !117
  %534 = trunc i32 %523 to i8, !mcsema_real_eip !117
  %535 = tail call i8 @llvm.ctpop.i8(i8 %534), !mcsema_real_eip !117
  %536 = and i8 %535, 1
  %537 = icmp eq i8 %536, 0
  store i1 %537, i1* %PF_val, !mcsema_real_eip !117
  %538 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %538, i1* %CF_val, !mcsema_real_eip !117
  %539 = zext i32 %523 to i64, !mcsema_real_eip !117
  store i64 %539, i64* %RSI_val, !mcsema_real_eip !117
  %540 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %541 = add i64 %540, -112, !mcsema_real_eip !118
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !118
  %543 = bitcast i64* %542 to i32*
  store i32 %523, i32* %543, !mcsema_real_eip !118
  %544 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %545 = add i64 %544, -16, !mcsema_real_eip !119
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !119
  %547 = load i64, i64* %RSI_val, !mcsema_real_eip !119
  %548 = trunc i64 %547 to i32, !mcsema_real_eip !119
  %549 = bitcast i64* %546 to i32*
  store i32 %548, i32* %549, !mcsema_real_eip !119
  %550 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %551 = add i64 %550, -120, !mcsema_real_eip !120
  %552 = inttoptr i64 %551 to i64*, !mcsema_real_eip !120
  %553 = load i64, i64* %552, !mcsema_real_eip !120
  store i64 %553, i64* %RAX_val, !mcsema_real_eip !120
  %554 = add i64 %550, -24, !mcsema_real_eip !121
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !121
  store i64 %553, i64* %555, !mcsema_real_eip !121
  %556 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %557 = add i64 %556, -16, !mcsema_real_eip !122
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !122
  %559 = bitcast i64* %558 to i32*
  %560 = load i32, i32* %559, !mcsema_real_eip !122
  %561 = zext i32 %560 to i64, !mcsema_real_eip !122
  store i64 %561, i64* %RSI_val, !mcsema_real_eip !122
  %562 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %563 = add i64 %562, -128, !mcsema_real_eip !123
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !123
  %565 = bitcast i64* %564 to i32*
  store i32 %560, i32* %565, !mcsema_real_eip !123
  %566 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %567 = add i64 %566, -24, !mcsema_real_eip !124
  %568 = inttoptr i64 %567 to i64*, !mcsema_real_eip !124
  %569 = load i64, i64* %568, !mcsema_real_eip !124
  store i64 %569, i64* %RAX_val, !mcsema_real_eip !124
  %570 = add i64 %566, -136, !mcsema_real_eip !125
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !125
  store i64 %569, i64* %571, !mcsema_real_eip !125
  %572 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %573 = add i64 %572, -136, !mcsema_real_eip !126
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !126
  %575 = load i64, i64* %574, !mcsema_real_eip !126
  store i64 %575, i64* %RAX_val, !mcsema_real_eip !126
  %576 = add i64 %572, -128, !mcsema_real_eip !127
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !127
  %578 = bitcast i64* %577 to i32*
  %579 = load i32, i32* %578, !mcsema_real_eip !127
  %580 = zext i32 %579 to i64, !mcsema_real_eip !127
  store i64 %580, i64* %RDX_val, !mcsema_real_eip !127
  %581 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !128
  %583 = load i64, i64* %582, !mcsema_real_eip !128
  store i64 %583, i64* %RBX_val, !mcsema_real_eip !128
  %584 = add i64 %581, 8, !mcsema_real_eip !128
  store i64 %584, i64* %RSP_val, !mcsema_real_eip !128
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !129
  %586 = load i64, i64* %585, !mcsema_real_eip !129
  store i64 %586, i64* %RBP_val, !mcsema_real_eip !129
  %587 = add i64 %581, 24, !mcsema_real_eip !130
  store i64 %587, i64* %RSP_val, !mcsema_real_eip !130
  %588 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %588, i64* %RAX, !mcsema_real_eip !130
  %589 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %589, i64* %RBX, !mcsema_real_eip !130
  %590 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %590, i64* %RCX, !mcsema_real_eip !130
  %591 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %591, i64* %RDX, !mcsema_real_eip !130
  %592 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %592, i64* %RSI, !mcsema_real_eip !130
  %593 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %593, i64* %RDI, !mcsema_real_eip !130
  %594 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  store i64 %594, i64* %RSP, !mcsema_real_eip !130
  %595 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  store i64 %595, i64* %RBP, !mcsema_real_eip !130
  %596 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %596, i64* %R8, !mcsema_real_eip !130
  %597 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %597, i64* %R9, !mcsema_real_eip !130
  %598 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %598, i64* %R10, !mcsema_real_eip !130
  %599 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %599, i64* %R11, !mcsema_real_eip !130
  %600 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %600, i64* %R12, !mcsema_real_eip !130
  %601 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %601, i64* %R13, !mcsema_real_eip !130
  %602 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %602, i64* %R14, !mcsema_real_eip !130
  %603 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %603, i64* %R15, !mcsema_real_eip !130
  %604 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %604, i64* %RIP, !mcsema_real_eip !130
  %605 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %605, i1* %CF, align 1, !mcsema_real_eip !130
  %606 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %606, i1* %PF, align 1, !mcsema_real_eip !130
  %607 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %607, i1* %AF, align 1, !mcsema_real_eip !130
  %608 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %608, i1* %ZF, align 1, !mcsema_real_eip !130
  %609 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %609, i1* %SF, align 1, !mcsema_real_eip !130
  %610 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %610, i1* %OF, align 1, !mcsema_real_eip !130
  %611 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %611, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %612 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %612, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %613 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %613, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %614 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %614, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %615 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %615, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %616 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %616, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %617 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %617, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %618 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %618, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %619 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %619, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %620 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %620, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %621 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %621, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %622 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %622, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %623 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %623, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %624 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %624, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %625 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %625, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %626 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %626, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %627 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %627, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %628 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %628, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %629 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %629, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %630 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %630, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %631 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %631, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %632 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %632, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %633 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %633, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %634 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %635 = load i64, i64* %53, align 4
  store i64 %635, i64* %52, align 4
  %636 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %636, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %637 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %637, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %638 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %638, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %639 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %639, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %640 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %640, i128* %XMM0, align 1, !mcsema_real_eip !130
  %641 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %641, i128* %XMM1, align 1, !mcsema_real_eip !130
  %642 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %642, i128* %XMM2, align 1, !mcsema_real_eip !130
  %643 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %643, i128* %XMM3, align 1, !mcsema_real_eip !130
  %644 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %644, i128* %XMM4, align 1, !mcsema_real_eip !130
  %645 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %645, i128* %XMM5, align 1, !mcsema_real_eip !130
  %646 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %646, i128* %XMM6, align 1, !mcsema_real_eip !130
  %647 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %647, i128* %XMM7, align 1, !mcsema_real_eip !130
  %648 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %648, i128* %XMM8, align 1, !mcsema_real_eip !130
  %649 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %649, i128* %XMM9, align 1, !mcsema_real_eip !130
  %650 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %650, i128* %XMM10, align 1, !mcsema_real_eip !130
  %651 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %651, i128* %XMM11, align 1, !mcsema_real_eip !130
  %652 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %652, i128* %XMM12, align 1, !mcsema_real_eip !130
  %653 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %653, i128* %XMM13, align 1, !mcsema_real_eip !130
  %654 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %654, i128* %XMM14, align 1, !mcsema_real_eip !130
  %655 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %655, i128* %XMM15, align 1, !mcsema_real_eip !130
  %656 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %656, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %657 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %657, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
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
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !53
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !54
  %83 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %84 = add i64 %80, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !55
  store i64 %83, i64* %_allin_new_bt_2, !mcsema_real_eip !55
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !55
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 48
  %87 = add i64 %86, 48, !mcsema_real_eip !56
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !56
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
  br i1 %_cond1_n_cond2_cond3_143, label %89, label %90

; <label>:89:                                     ; preds = %55
  %_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_address_in_parent_stack_bt_145 = bitcast i8* %_address_in_parent_stack_144 to i64*
  br label %90

; <label>:90:                                     ; preds = %55, %89
  %91 = phi i64* [ %_allin_new_bt_5, %55 ], [ %_address_in_parent_stack_bt_145, %89 ]
  %_new_load_146 = load i64, i64* %91
  store i64 %_new_load_146, i64* %RAX_val, !mcsema_real_eip !56
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %92 = add i64 %86, 40, !mcsema_real_eip !57
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !57
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
  br i1 %_cond1_n_cond2_cond3_158, label %94, label %95

; <label>:94:                                     ; preds = %90
  %_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_address_in_parent_stack_bt_160 = bitcast i8* %_address_in_parent_stack_159 to i64*
  br label %95

; <label>:95:                                     ; preds = %90, %94
  %96 = phi i64* [ %_allin_new_bt_7, %90 ], [ %_address_in_parent_stack_bt_160, %94 ]
  %_new_load_161 = load i64, i64* %96
  store i64 %_new_load_161, i64* %R10_val, !mcsema_real_eip !57
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 24
  %98 = add i64 %97, 24, !mcsema_real_eip !58
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !58
  %100 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !58
  store i64 %100, i64* %R11_val, !mcsema_real_eip !58
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 16
  %101 = add i64 %97, 16, !mcsema_real_eip !59
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !59
  %103 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_162 = ptrtoint i32* %103 to i64
  %_local_end_to_int_163 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_164 = bitcast i32* %103 to i8*
  %_offset_above_rbp_165 = sub i64 %_ptr_to_int_162, %_local_end_to_int_163
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_ptr_bt_164, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_ptr_bt_164, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_ptr_bt_164, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  br i1 %_cond1_n_cond2_cond3_173, label %104, label %105

; <label>:104:                                    ; preds = %95
  %_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_address_in_parent_stack_bt_175 = bitcast i8* %_address_in_parent_stack_174 to i32*
  br label %105

; <label>:105:                                    ; preds = %95, %104
  %106 = phi i32* [ %103, %95 ], [ %_address_in_parent_stack_bt_175, %104 ]
  %_new_load_176 = load i32, i32* %106
  %107 = zext i32 %_new_load_176 to i64, !mcsema_real_eip !59
  store i64 %107, i64* %RBX_val, !mcsema_real_eip !59
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -56
  %109 = add i64 %108, -56, !mcsema_real_eip !60
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !60
  %111 = load i64, i64* %RDI_val, !mcsema_real_eip !60
  store i64 %111, i64* %_allin_new_bt_15, !mcsema_real_eip !60
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -48
  %113 = add i64 %112, -48, !mcsema_real_eip !61
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !61
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !61
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !61
  %117 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !61
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %119 = add i64 %118, -32, !mcsema_real_eip !62
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !62
  %121 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !62
  %123 = bitcast i64* %_allin_new_bt_21 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !62
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -56
  %125 = add i64 %124, -56, !mcsema_real_eip !63
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !63
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
  br i1 %_cond1_n_cond2_cond3_188, label %127, label %128

; <label>:127:                                    ; preds = %105
  %_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_address_in_parent_stack_bt_190 = bitcast i8* %_address_in_parent_stack_189 to i64*
  br label %128

; <label>:128:                                    ; preds = %105, %127
  %129 = phi i64* [ %_allin_new_bt_24, %105 ], [ %_address_in_parent_stack_bt_190, %127 ]
  %_new_load_191 = load i64, i64* %129
  store i64 %_new_load_191, i64* %RDI_val, !mcsema_real_eip !63
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -40
  %130 = add i64 %124, -40, !mcsema_real_eip !64
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !64
  store i64 %_new_load_191, i64* %_allin_new_bt_26, !mcsema_real_eip !64
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -64
  %133 = add i64 %132, -64, !mcsema_real_eip !65
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !65
  %135 = load i64, i64* %RDX_val, !mcsema_real_eip !65
  store i64 %135, i64* %_allin_new_bt_29, !mcsema_real_eip !65
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -72
  %137 = add i64 %136, -72, !mcsema_real_eip !66
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !66
  %139 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %139, i64* %_allin_new_bt_32, !mcsema_real_eip !66
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -76
  %141 = add i64 %140, -76, !mcsema_real_eip !67
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !67
  %143 = load i64, i64* %R8_val, !mcsema_real_eip !67
  %144 = trunc i64 %143 to i32, !mcsema_real_eip !67
  %145 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %144, i32* %145, !mcsema_real_eip !67
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -80
  %147 = add i64 %146, -80, !mcsema_real_eip !68
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !68
  %149 = load i64, i64* %R9_val, !mcsema_real_eip !68
  %150 = trunc i64 %149 to i32, !mcsema_real_eip !68
  %151 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %150, i32* %151, !mcsema_real_eip !68
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -84
  %153 = add i64 %152, -84, !mcsema_real_eip !69
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !69
  %155 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %156 = trunc i64 %155 to i32, !mcsema_real_eip !69
  %157 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %156, i32* %157, !mcsema_real_eip !69
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -96
  %159 = add i64 %158, -96, !mcsema_real_eip !70
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !70
  %161 = load i64, i64* %R10_val, !mcsema_real_eip !70
  store i64 %161, i64* %_allin_new_bt_44, !mcsema_real_eip !70
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -104
  %163 = add i64 %162, -104, !mcsema_real_eip !71
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !71
  %165 = load i64, i64* %RAX_val, !mcsema_real_eip !71
  store i64 %165, i64* %_allin_new_bt_47, !mcsema_real_eip !71
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -40
  %167 = add i64 %166, -40, !mcsema_real_eip !72
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !72
  %169 = bitcast i64* %_allin_new_bt_50 to i32*
  %_ptr_to_int_192 = ptrtoint i32* %169 to i64
  %_local_end_to_int_193 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_194 = bitcast i32* %169 to i8*
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_193
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_ptr_bt_194, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_ptr_bt_194, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_ptr_bt_194, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %170, label %171

; <label>:170:                                    ; preds = %128
  %_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_address_in_parent_stack_bt_205 = bitcast i8* %_address_in_parent_stack_204 to i32*
  br label %171

; <label>:171:                                    ; preds = %128, %170
  %172 = phi i32* [ %169, %128 ], [ %_address_in_parent_stack_bt_205, %170 ]
  %_new_load_206 = load i32, i32* %172
  %173 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !72
  store i64 %173, i64* %RSI_val, !mcsema_real_eip !72
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %174 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -64
  %175 = add i64 %174, -64, !mcsema_real_eip !73
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !73
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
  br i1 %_cond1_n_cond2_cond3_218, label %177, label %178

; <label>:177:                                    ; preds = %171
  %_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_address_in_parent_stack_bt_220 = bitcast i8* %_address_in_parent_stack_219 to i64*
  br label %178

; <label>:178:                                    ; preds = %171, %177
  %179 = phi i64* [ %_allin_new_bt_53, %171 ], [ %_address_in_parent_stack_bt_220, %177 ]
  %_new_load_221 = load i64, i64* %179
  store i64 %_new_load_221, i64* %RCX_val, !mcsema_real_eip !73
  %180 = inttoptr i64 %_new_load_221 to i64*, !mcsema_real_eip !74
  %181 = bitcast i64* %180 to i32*
  %_ptr_to_int_222 = ptrtoint i32* %181 to i64
  %_local_end_to_int_223 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_224 = bitcast i32* %181 to i8*
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_223
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_ptr_bt_224, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_ptr_bt_224, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_ptr_bt_224, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %182, label %183

; <label>:182:                                    ; preds = %178
  %_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_address_in_parent_stack_bt_235 = bitcast i8* %_address_in_parent_stack_234 to i32*
  br label %183

; <label>:183:                                    ; preds = %178, %182
  %184 = phi i32* [ %181, %178 ], [ %_address_in_parent_stack_bt_235, %182 ]
  %_new_load_236 = load i32, i32* %184
  %185 = zext i32 %_new_load_236 to i64, !mcsema_real_eip !74
  store i64 %185, i64* %R8_val, !mcsema_real_eip !74
  %186 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %187 = trunc i64 %186 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_236, i32 %187)
  %188 = extractvalue { i32, i1 } %uadd, 0
  %189 = xor i32 %188, %187, !mcsema_real_eip !75
  %190 = xor i32 %189, %_new_load_236, !mcsema_real_eip !75
  %191 = and i32 %190, 16, !mcsema_real_eip !75
  %192 = icmp ne i32 %191, 0, !mcsema_real_eip !75
  store i1 %192, i1* %AF_val, !mcsema_real_eip !75
  %193 = icmp slt i32 %188, 0
  store i1 %193, i1* %SF_val, !mcsema_real_eip !75
  %194 = icmp eq i32 %188, 0, !mcsema_real_eip !75
  store i1 %194, i1* %ZF_val, !mcsema_real_eip !75
  %195 = xor i32 %_new_load_236, -2147483648, !mcsema_real_eip !75
  %196 = xor i32 %195, %187, !mcsema_real_eip !75
  %197 = and i32 %189, %196, !mcsema_real_eip !75
  %198 = icmp slt i32 %197, 0
  store i1 %198, i1* %OF_val, !mcsema_real_eip !75
  %199 = trunc i32 %188 to i8, !mcsema_real_eip !75
  %200 = tail call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !75
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  store i1 %202, i1* %PF_val, !mcsema_real_eip !75
  %203 = extractvalue { i32, i1 } %uadd, 1
  store i1 %203, i1* %CF_val, !mcsema_real_eip !75
  %204 = zext i32 %188 to i64, !mcsema_real_eip !75
  store i64 %204, i64* %RSI_val, !mcsema_real_eip !75
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -72
  %206 = add i64 %205, -72, !mcsema_real_eip !76
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !76
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
  br i1 %_cond1_n_cond2_cond3_248, label %208, label %209

; <label>:208:                                    ; preds = %183
  %_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_address_in_parent_stack_bt_250 = bitcast i8* %_address_in_parent_stack_249 to i64*
  br label %209

; <label>:209:                                    ; preds = %183, %208
  %210 = phi i64* [ %_allin_new_bt_56, %183 ], [ %_address_in_parent_stack_bt_250, %208 ]
  %_new_load_251 = load i64, i64* %210
  store i64 %_new_load_251, i64* %RCX_val, !mcsema_real_eip !76
  %211 = inttoptr i64 %_new_load_251 to i64*, !mcsema_real_eip !77
  %212 = bitcast i64* %211 to i32*
  %_ptr_to_int_252 = ptrtoint i32* %212 to i64
  %_local_end_to_int_253 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_254 = bitcast i32* %212 to i8*
  %_offset_above_rbp_255 = sub i64 %_ptr_to_int_252, %_local_end_to_int_253
  %_pot_address_in_parent_stack_256 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_cond1_257 = icmp ugt i8* %_ptr_bt_254, %_local_stack_end_ptr_
  %_cond2_1_258 = icmp ugt i8* %_ptr_bt_254, %_parent_stack_end_ptr_
  %_cond2_2_259 = icmp ult i8* %_ptr_bt_254, %_parent_stack_start_ptr_
  %_cond2_260 = or i1 %_cond2_1_258, %_cond2_2_259
  %_cond4_261 = icmp ule i8* %_pot_address_in_parent_stack_256, %_parent_stack_end_ptr_
  %_cond1_n_cond2_262 = and i1 %_cond1_257, %_cond2_260
  %_cond1_n_cond2_cond3_263 = and i1 %_cond1_n_cond2_262, %_cond4_261
  br i1 %_cond1_n_cond2_cond3_263, label %213, label %214

; <label>:213:                                    ; preds = %209
  %_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_address_in_parent_stack_bt_265 = bitcast i8* %_address_in_parent_stack_264 to i32*
  br label %214

; <label>:214:                                    ; preds = %209, %213
  %215 = phi i32* [ %212, %209 ], [ %_address_in_parent_stack_bt_265, %213 ]
  %_new_load_266 = load i32, i32* %215
  %216 = zext i32 %_new_load_266 to i64, !mcsema_real_eip !77
  store i64 %216, i64* %R8_val, !mcsema_real_eip !77
  %217 = load i64, i64* %RSI_val, !mcsema_real_eip !78
  %218 = trunc i64 %217 to i32, !mcsema_real_eip !78
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_266, i32 %218)
  %219 = extractvalue { i32, i1 } %uadd70, 0
  %220 = xor i32 %219, %218, !mcsema_real_eip !78
  %221 = xor i32 %220, %_new_load_266, !mcsema_real_eip !78
  %222 = and i32 %221, 16, !mcsema_real_eip !78
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !78
  store i1 %223, i1* %AF_val, !mcsema_real_eip !78
  %224 = icmp slt i32 %219, 0
  store i1 %224, i1* %SF_val, !mcsema_real_eip !78
  %225 = icmp eq i32 %219, 0, !mcsema_real_eip !78
  store i1 %225, i1* %ZF_val, !mcsema_real_eip !78
  %226 = xor i32 %_new_load_266, -2147483648, !mcsema_real_eip !78
  %227 = xor i32 %226, %218, !mcsema_real_eip !78
  %228 = and i32 %220, %227, !mcsema_real_eip !78
  %229 = icmp slt i32 %228, 0
  store i1 %229, i1* %OF_val, !mcsema_real_eip !78
  %230 = trunc i32 %219 to i8, !mcsema_real_eip !78
  %231 = tail call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !78
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  store i1 %233, i1* %PF_val, !mcsema_real_eip !78
  %234 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %234, i1* %CF_val, !mcsema_real_eip !78
  %235 = zext i32 %219 to i64, !mcsema_real_eip !78
  store i64 %235, i64* %RSI_val, !mcsema_real_eip !78
  %236 = load i64, i64* %R11_val, !mcsema_real_eip !79
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !79
  %238 = bitcast i64* %237 to i32*
  %_ptr_to_int_267 = ptrtoint i32* %238 to i64
  %_local_end_to_int_268 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_269 = bitcast i32* %238 to i8*
  %_offset_above_rbp_270 = sub i64 %_ptr_to_int_267, %_local_end_to_int_268
  %_pot_address_in_parent_stack_271 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_cond1_272 = icmp ugt i8* %_ptr_bt_269, %_local_stack_end_ptr_
  %_cond2_1_273 = icmp ugt i8* %_ptr_bt_269, %_parent_stack_end_ptr_
  %_cond2_2_274 = icmp ult i8* %_ptr_bt_269, %_parent_stack_start_ptr_
  %_cond2_275 = or i1 %_cond2_1_273, %_cond2_2_274
  %_cond4_276 = icmp ule i8* %_pot_address_in_parent_stack_271, %_parent_stack_end_ptr_
  %_cond1_n_cond2_277 = and i1 %_cond1_272, %_cond2_275
  %_cond1_n_cond2_cond3_278 = and i1 %_cond1_n_cond2_277, %_cond4_276
  br i1 %_cond1_n_cond2_cond3_278, label %239, label %240

; <label>:239:                                    ; preds = %214
  %_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_address_in_parent_stack_bt_280 = bitcast i8* %_address_in_parent_stack_279 to i32*
  br label %240

; <label>:240:                                    ; preds = %214, %239
  %241 = phi i32* [ %238, %214 ], [ %_address_in_parent_stack_bt_280, %239 ]
  %_new_load_281 = load i32, i32* %241
  %242 = zext i32 %_new_load_281 to i64, !mcsema_real_eip !79
  store i64 %242, i64* %R8_val, !mcsema_real_eip !79
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %243 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -96
  %244 = add i64 %243, -96, !mcsema_real_eip !80
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !80
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
  br i1 %_cond1_n_cond2_cond3_293, label %246, label %247

; <label>:246:                                    ; preds = %240
  %_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_address_in_parent_stack_bt_295 = bitcast i8* %_address_in_parent_stack_294 to i64*
  br label %247

; <label>:247:                                    ; preds = %240, %246
  %248 = phi i64* [ %_allin_new_bt_59, %240 ], [ %_address_in_parent_stack_bt_295, %246 ]
  %_new_load_296 = load i64, i64* %248
  store i64 %_new_load_296, i64* %RCX_val, !mcsema_real_eip !80
  %249 = inttoptr i64 %_new_load_296 to i64*, !mcsema_real_eip !81
  %250 = bitcast i64* %249 to i32*
  %_ptr_to_int_297 = ptrtoint i32* %250 to i64
  %_local_end_to_int_298 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_299 = bitcast i32* %250 to i8*
  %_offset_above_rbp_300 = sub i64 %_ptr_to_int_297, %_local_end_to_int_298
  %_pot_address_in_parent_stack_301 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_cond1_302 = icmp ugt i8* %_ptr_bt_299, %_local_stack_end_ptr_
  %_cond2_1_303 = icmp ugt i8* %_ptr_bt_299, %_parent_stack_end_ptr_
  %_cond2_2_304 = icmp ult i8* %_ptr_bt_299, %_parent_stack_start_ptr_
  %_cond2_305 = or i1 %_cond2_1_303, %_cond2_2_304
  %_cond4_306 = icmp ule i8* %_pot_address_in_parent_stack_301, %_parent_stack_end_ptr_
  %_cond1_n_cond2_307 = and i1 %_cond1_302, %_cond2_305
  %_cond1_n_cond2_cond3_308 = and i1 %_cond1_n_cond2_307, %_cond4_306
  br i1 %_cond1_n_cond2_cond3_308, label %251, label %252

; <label>:251:                                    ; preds = %247
  %_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_address_in_parent_stack_bt_310 = bitcast i8* %_address_in_parent_stack_309 to i32*
  br label %252

; <label>:252:                                    ; preds = %247, %251
  %253 = phi i32* [ %250, %247 ], [ %_address_in_parent_stack_bt_310, %251 ]
  %_new_load_311 = load i32, i32* %253
  %254 = zext i32 %_new_load_311 to i64, !mcsema_real_eip !81
  store i64 %254, i64* %R9_val, !mcsema_real_eip !81
  %255 = load i64, i64* %R8_val, !mcsema_real_eip !82
  %256 = trunc i64 %255 to i32, !mcsema_real_eip !82
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_311, i32 %256)
  %257 = extractvalue { i32, i1 } %uadd71, 0
  %258 = xor i32 %257, %256, !mcsema_real_eip !82
  %259 = xor i32 %258, %_new_load_311, !mcsema_real_eip !82
  %260 = and i32 %259, 16, !mcsema_real_eip !82
  %261 = icmp ne i32 %260, 0, !mcsema_real_eip !82
  store i1 %261, i1* %AF_val, !mcsema_real_eip !82
  %262 = icmp slt i32 %257, 0
  store i1 %262, i1* %SF_val, !mcsema_real_eip !82
  %263 = icmp eq i32 %257, 0, !mcsema_real_eip !82
  store i1 %263, i1* %ZF_val, !mcsema_real_eip !82
  %264 = xor i32 %_new_load_311, -2147483648, !mcsema_real_eip !82
  %265 = xor i32 %264, %256, !mcsema_real_eip !82
  %266 = and i32 %258, %265, !mcsema_real_eip !82
  %267 = icmp slt i32 %266, 0
  store i1 %267, i1* %OF_val, !mcsema_real_eip !82
  %268 = trunc i32 %257 to i8, !mcsema_real_eip !82
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !82
  %270 = and i8 %269, 1
  %271 = icmp eq i8 %270, 0
  store i1 %271, i1* %PF_val, !mcsema_real_eip !82
  %272 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %272, i1* %CF_val, !mcsema_real_eip !82
  %273 = zext i32 %257 to i64, !mcsema_real_eip !82
  store i64 %273, i64* %R8_val, !mcsema_real_eip !82
  %274 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !83
  %276 = bitcast i64* %275 to i32*
  %_ptr_to_int_312 = ptrtoint i32* %276 to i64
  %_local_end_to_int_313 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_314 = bitcast i32* %276 to i8*
  %_offset_above_rbp_315 = sub i64 %_ptr_to_int_312, %_local_end_to_int_313
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_ptr_bt_314, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_ptr_bt_314, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_ptr_bt_314, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  br i1 %_cond1_n_cond2_cond3_323, label %277, label %278

; <label>:277:                                    ; preds = %252
  %_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_address_in_parent_stack_bt_325 = bitcast i8* %_address_in_parent_stack_324 to i32*
  br label %278

; <label>:278:                                    ; preds = %252, %277
  %279 = phi i32* [ %276, %252 ], [ %_address_in_parent_stack_bt_325, %277 ]
  %_new_load_326 = load i32, i32* %279
  %280 = zext i32 %_new_load_326 to i64, !mcsema_real_eip !83
  store i64 %280, i64* %R9_val, !mcsema_real_eip !83
  %281 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %282 = trunc i64 %281 to i32, !mcsema_real_eip !84
  %283 = add i32 %_new_load_326, %282
  %284 = zext i32 %283 to i64, !mcsema_real_eip !84
  store i64 %284, i64* %R8_val, !mcsema_real_eip !84
  %285 = load i64, i64* %RSI_val, !mcsema_real_eip !85
  %286 = trunc i64 %285 to i32, !mcsema_real_eip !85
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %283, i32 %286)
  %287 = extractvalue { i32, i1 } %uadd73, 0
  %288 = xor i32 %287, %286, !mcsema_real_eip !85
  %289 = xor i32 %288, %283, !mcsema_real_eip !85
  %290 = and i32 %289, 16, !mcsema_real_eip !85
  %291 = icmp ne i32 %290, 0, !mcsema_real_eip !85
  store i1 %291, i1* %AF_val, !mcsema_real_eip !85
  %292 = icmp slt i32 %287, 0
  store i1 %292, i1* %SF_val, !mcsema_real_eip !85
  %293 = icmp eq i32 %287, 0, !mcsema_real_eip !85
  store i1 %293, i1* %ZF_val, !mcsema_real_eip !85
  %294 = xor i32 %283, -2147483648, !mcsema_real_eip !85
  %295 = xor i32 %294, %286, !mcsema_real_eip !85
  %296 = and i32 %288, %295, !mcsema_real_eip !85
  %297 = icmp slt i32 %296, 0
  store i1 %297, i1* %OF_val, !mcsema_real_eip !85
  %298 = trunc i32 %287 to i8, !mcsema_real_eip !85
  %299 = tail call i8 @llvm.ctpop.i8(i8 %298), !mcsema_real_eip !85
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  store i1 %301, i1* %PF_val, !mcsema_real_eip !85
  %302 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %302, i1* %CF_val, !mcsema_real_eip !85
  %303 = zext i32 %287 to i64, !mcsema_real_eip !85
  store i64 %303, i64* %RSI_val, !mcsema_real_eip !85
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -120
  %305 = add i64 %304, -120, !mcsema_real_eip !86
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !86
  %307 = bitcast i64* %_allin_new_bt_62 to i32*
  store i32 %287, i32* %307, !mcsema_real_eip !86
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %308 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -36
  %309 = add i64 %308, -36, !mcsema_real_eip !87
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !87
  %311 = bitcast i64* %_allin_new_bt_65 to i32*
  %_ptr_to_int_327 = ptrtoint i32* %311 to i64
  %_local_end_to_int_328 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_329 = bitcast i32* %311 to i8*
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %_local_end_to_int_328
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_ptr_bt_329, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_ptr_bt_329, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_ptr_bt_329, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  br i1 %_cond1_n_cond2_cond3_338, label %312, label %313

; <label>:312:                                    ; preds = %278
  %_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_address_in_parent_stack_bt_340 = bitcast i8* %_address_in_parent_stack_339 to i32*
  br label %313

; <label>:313:                                    ; preds = %278, %312
  %314 = phi i32* [ %311, %278 ], [ %_address_in_parent_stack_bt_340, %312 ]
  %_new_load_341 = load i32, i32* %314
  %315 = zext i32 %_new_load_341 to i64, !mcsema_real_eip !87
  store i64 %315, i64* %RSI_val, !mcsema_real_eip !87
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -64
  %317 = add i64 %316, -64, !mcsema_real_eip !88
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !88
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
  br i1 %_cond1_n_cond2_cond3_353, label %319, label %320

; <label>:319:                                    ; preds = %313
  %_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_address_in_parent_stack_bt_355 = bitcast i8* %_address_in_parent_stack_354 to i64*
  br label %320

; <label>:320:                                    ; preds = %313, %319
  %321 = phi i64* [ %_allin_new_bt_68, %313 ], [ %_address_in_parent_stack_bt_355, %319 ]
  %_new_load_356 = load i64, i64* %321
  store i64 %_new_load_356, i64* %RAX_val, !mcsema_real_eip !88
  %322 = add i64 %_new_load_356, 4, !mcsema_real_eip !89
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !89
  %324 = bitcast i64* %323 to i32*
  %_ptr_to_int_357 = ptrtoint i32* %324 to i64
  %_local_end_to_int_358 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_359 = bitcast i32* %324 to i8*
  %_offset_above_rbp_360 = sub i64 %_ptr_to_int_357, %_local_end_to_int_358
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_ptr_bt_359, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_ptr_bt_359, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_ptr_bt_359, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  br i1 %_cond1_n_cond2_cond3_368, label %325, label %326

; <label>:325:                                    ; preds = %320
  %_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_address_in_parent_stack_bt_370 = bitcast i8* %_address_in_parent_stack_369 to i32*
  br label %326

; <label>:326:                                    ; preds = %320, %325
  %327 = phi i32* [ %324, %320 ], [ %_address_in_parent_stack_bt_370, %325 ]
  %_new_load_371 = load i32, i32* %327
  %328 = zext i32 %_new_load_371 to i64, !mcsema_real_eip !89
  store i64 %328, i64* %R8_val, !mcsema_real_eip !89
  %329 = load i64, i64* %RSI_val, !mcsema_real_eip !90
  %330 = trunc i64 %329 to i32, !mcsema_real_eip !90
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_371, i32 %330)
  %331 = extractvalue { i32, i1 } %uadd74, 0
  %332 = xor i32 %331, %330, !mcsema_real_eip !90
  %333 = xor i32 %332, %_new_load_371, !mcsema_real_eip !90
  %334 = and i32 %333, 16, !mcsema_real_eip !90
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !90
  store i1 %335, i1* %AF_val, !mcsema_real_eip !90
  %336 = icmp slt i32 %331, 0
  store i1 %336, i1* %SF_val, !mcsema_real_eip !90
  %337 = icmp eq i32 %331, 0, !mcsema_real_eip !90
  store i1 %337, i1* %ZF_val, !mcsema_real_eip !90
  %338 = xor i32 %_new_load_371, -2147483648, !mcsema_real_eip !90
  %339 = xor i32 %338, %330, !mcsema_real_eip !90
  %340 = and i32 %332, %339, !mcsema_real_eip !90
  %341 = icmp slt i32 %340, 0
  store i1 %341, i1* %OF_val, !mcsema_real_eip !90
  %342 = trunc i32 %331 to i8, !mcsema_real_eip !90
  %343 = tail call i8 @llvm.ctpop.i8(i8 %342), !mcsema_real_eip !90
  %344 = and i8 %343, 1
  %345 = icmp eq i8 %344, 0
  store i1 %345, i1* %PF_val, !mcsema_real_eip !90
  %346 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %346, i1* %CF_val, !mcsema_real_eip !90
  %347 = zext i32 %331 to i64, !mcsema_real_eip !90
  store i64 %347, i64* %RSI_val, !mcsema_real_eip !90
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %348 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -72
  %349 = add i64 %348, -72, !mcsema_real_eip !91
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !91
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
  br i1 %_cond1_n_cond2_cond3_383, label %351, label %352

; <label>:351:                                    ; preds = %326
  %_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_address_in_parent_stack_bt_385 = bitcast i8* %_address_in_parent_stack_384 to i64*
  br label %352

; <label>:352:                                    ; preds = %326, %351
  %353 = phi i64* [ %_allin_new_bt_71, %326 ], [ %_address_in_parent_stack_bt_385, %351 ]
  %_new_load_386 = load i64, i64* %353
  store i64 %_new_load_386, i64* %RAX_val, !mcsema_real_eip !91
  %354 = add i64 %_new_load_386, 4, !mcsema_real_eip !92
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !92
  %356 = bitcast i64* %355 to i32*
  %_ptr_to_int_387 = ptrtoint i32* %356 to i64
  %_local_end_to_int_388 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_389 = bitcast i32* %356 to i8*
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_388
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_ptr_bt_389, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_ptr_bt_389, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_ptr_bt_389, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  br i1 %_cond1_n_cond2_cond3_398, label %357, label %358

; <label>:357:                                    ; preds = %352
  %_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_address_in_parent_stack_bt_400 = bitcast i8* %_address_in_parent_stack_399 to i32*
  br label %358

; <label>:358:                                    ; preds = %352, %357
  %359 = phi i32* [ %356, %352 ], [ %_address_in_parent_stack_bt_400, %357 ]
  %_new_load_401 = load i32, i32* %359
  %360 = zext i32 %_new_load_401 to i64, !mcsema_real_eip !92
  store i64 %360, i64* %R8_val, !mcsema_real_eip !92
  %361 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %362 = trunc i64 %361 to i32, !mcsema_real_eip !93
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_401, i32 %362)
  %363 = extractvalue { i32, i1 } %uadd75, 0
  %364 = xor i32 %363, %362, !mcsema_real_eip !93
  %365 = xor i32 %364, %_new_load_401, !mcsema_real_eip !93
  %366 = and i32 %365, 16, !mcsema_real_eip !93
  %367 = icmp ne i32 %366, 0, !mcsema_real_eip !93
  store i1 %367, i1* %AF_val, !mcsema_real_eip !93
  %368 = icmp slt i32 %363, 0
  store i1 %368, i1* %SF_val, !mcsema_real_eip !93
  %369 = icmp eq i32 %363, 0, !mcsema_real_eip !93
  store i1 %369, i1* %ZF_val, !mcsema_real_eip !93
  %370 = xor i32 %_new_load_401, -2147483648, !mcsema_real_eip !93
  %371 = xor i32 %370, %362, !mcsema_real_eip !93
  %372 = and i32 %364, %371, !mcsema_real_eip !93
  %373 = icmp slt i32 %372, 0
  store i1 %373, i1* %OF_val, !mcsema_real_eip !93
  %374 = trunc i32 %363 to i8, !mcsema_real_eip !93
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !93
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF_val, !mcsema_real_eip !93
  %378 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %378, i1* %CF_val, !mcsema_real_eip !93
  %379 = zext i32 %363 to i64, !mcsema_real_eip !93
  store i64 %379, i64* %RSI_val, !mcsema_real_eip !93
  %380 = load i64, i64* %R11_val, !mcsema_real_eip !94
  %381 = add i64 %380, 4, !mcsema_real_eip !94
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !94
  %383 = bitcast i64* %382 to i32*
  %_ptr_to_int_402 = ptrtoint i32* %383 to i64
  %_local_end_to_int_403 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_404 = bitcast i32* %383 to i8*
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_403
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_ptr_bt_404, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_ptr_bt_404, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_ptr_bt_404, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  br i1 %_cond1_n_cond2_cond3_413, label %384, label %385

; <label>:384:                                    ; preds = %358
  %_address_in_parent_stack_414 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_address_in_parent_stack_bt_415 = bitcast i8* %_address_in_parent_stack_414 to i32*
  br label %385

; <label>:385:                                    ; preds = %358, %384
  %386 = phi i32* [ %383, %358 ], [ %_address_in_parent_stack_bt_415, %384 ]
  %_new_load_416 = load i32, i32* %386
  %387 = zext i32 %_new_load_416 to i64, !mcsema_real_eip !94
  store i64 %387, i64* %R8_val, !mcsema_real_eip !94
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %388 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -96
  %389 = add i64 %388, -96, !mcsema_real_eip !95
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %390 = inttoptr i64 %389 to i64*, !mcsema_real_eip !95
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
  br i1 %_cond1_n_cond2_cond3_428, label %391, label %392

; <label>:391:                                    ; preds = %385
  %_address_in_parent_stack_429 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_address_in_parent_stack_bt_430 = bitcast i8* %_address_in_parent_stack_429 to i64*
  br label %392

; <label>:392:                                    ; preds = %385, %391
  %393 = phi i64* [ %_allin_new_bt_74, %385 ], [ %_address_in_parent_stack_bt_430, %391 ]
  %_new_load_431 = load i64, i64* %393
  store i64 %_new_load_431, i64* %RAX_val, !mcsema_real_eip !95
  %394 = add i64 %_new_load_431, 4, !mcsema_real_eip !96
  %395 = inttoptr i64 %394 to i64*, !mcsema_real_eip !96
  %396 = bitcast i64* %395 to i32*
  %_ptr_to_int_432 = ptrtoint i32* %396 to i64
  %_local_end_to_int_433 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_434 = bitcast i32* %396 to i8*
  %_offset_above_rbp_435 = sub i64 %_ptr_to_int_432, %_local_end_to_int_433
  %_pot_address_in_parent_stack_436 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_cond1_437 = icmp ugt i8* %_ptr_bt_434, %_local_stack_end_ptr_
  %_cond2_1_438 = icmp ugt i8* %_ptr_bt_434, %_parent_stack_end_ptr_
  %_cond2_2_439 = icmp ult i8* %_ptr_bt_434, %_parent_stack_start_ptr_
  %_cond2_440 = or i1 %_cond2_1_438, %_cond2_2_439
  %_cond4_441 = icmp ule i8* %_pot_address_in_parent_stack_436, %_parent_stack_end_ptr_
  %_cond1_n_cond2_442 = and i1 %_cond1_437, %_cond2_440
  %_cond1_n_cond2_cond3_443 = and i1 %_cond1_n_cond2_442, %_cond4_441
  br i1 %_cond1_n_cond2_cond3_443, label %397, label %398

; <label>:397:                                    ; preds = %392
  %_address_in_parent_stack_444 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_address_in_parent_stack_bt_445 = bitcast i8* %_address_in_parent_stack_444 to i32*
  br label %398

; <label>:398:                                    ; preds = %392, %397
  %399 = phi i32* [ %396, %392 ], [ %_address_in_parent_stack_bt_445, %397 ]
  %_new_load_446 = load i32, i32* %399
  %400 = zext i32 %_new_load_446 to i64, !mcsema_real_eip !96
  store i64 %400, i64* %R9_val, !mcsema_real_eip !96
  %401 = load i64, i64* %R8_val, !mcsema_real_eip !97
  %402 = trunc i64 %401 to i32, !mcsema_real_eip !97
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_446, i32 %402)
  %403 = extractvalue { i32, i1 } %uadd76, 0
  %404 = xor i32 %403, %402, !mcsema_real_eip !97
  %405 = xor i32 %404, %_new_load_446, !mcsema_real_eip !97
  %406 = and i32 %405, 16, !mcsema_real_eip !97
  %407 = icmp ne i32 %406, 0, !mcsema_real_eip !97
  store i1 %407, i1* %AF_val, !mcsema_real_eip !97
  %408 = icmp slt i32 %403, 0
  store i1 %408, i1* %SF_val, !mcsema_real_eip !97
  %409 = icmp eq i32 %403, 0, !mcsema_real_eip !97
  store i1 %409, i1* %ZF_val, !mcsema_real_eip !97
  %410 = xor i32 %_new_load_446, -2147483648, !mcsema_real_eip !97
  %411 = xor i32 %410, %402, !mcsema_real_eip !97
  %412 = and i32 %404, %411, !mcsema_real_eip !97
  %413 = icmp slt i32 %412, 0
  store i1 %413, i1* %OF_val, !mcsema_real_eip !97
  %414 = trunc i32 %403 to i8, !mcsema_real_eip !97
  %415 = tail call i8 @llvm.ctpop.i8(i8 %414), !mcsema_real_eip !97
  %416 = and i8 %415, 1
  %417 = icmp eq i8 %416, 0
  store i1 %417, i1* %PF_val, !mcsema_real_eip !97
  %418 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %418, i1* %CF_val, !mcsema_real_eip !97
  %419 = zext i32 %403 to i64, !mcsema_real_eip !97
  store i64 %419, i64* %R8_val, !mcsema_real_eip !97
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %420 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -104
  %421 = add i64 %420, -104, !mcsema_real_eip !98
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %422 = inttoptr i64 %421 to i64*, !mcsema_real_eip !98
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
  br i1 %_cond1_n_cond2_cond3_458, label %423, label %424

; <label>:423:                                    ; preds = %398
  %_address_in_parent_stack_459 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_address_in_parent_stack_bt_460 = bitcast i8* %_address_in_parent_stack_459 to i64*
  br label %424

; <label>:424:                                    ; preds = %398, %423
  %425 = phi i64* [ %_allin_new_bt_77, %398 ], [ %_address_in_parent_stack_bt_460, %423 ]
  %_new_load_461 = load i64, i64* %425
  store i64 %_new_load_461, i64* %RAX_val, !mcsema_real_eip !98
  %426 = add i64 %_new_load_461, 4, !mcsema_real_eip !99
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !99
  %428 = bitcast i64* %427 to i32*
  %_ptr_to_int_462 = ptrtoint i32* %428 to i64
  %_local_end_to_int_463 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_464 = bitcast i32* %428 to i8*
  %_offset_above_rbp_465 = sub i64 %_ptr_to_int_462, %_local_end_to_int_463
  %_pot_address_in_parent_stack_466 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_cond1_467 = icmp ugt i8* %_ptr_bt_464, %_local_stack_end_ptr_
  %_cond2_1_468 = icmp ugt i8* %_ptr_bt_464, %_parent_stack_end_ptr_
  %_cond2_2_469 = icmp ult i8* %_ptr_bt_464, %_parent_stack_start_ptr_
  %_cond2_470 = or i1 %_cond2_1_468, %_cond2_2_469
  %_cond4_471 = icmp ule i8* %_pot_address_in_parent_stack_466, %_parent_stack_end_ptr_
  %_cond1_n_cond2_472 = and i1 %_cond1_467, %_cond2_470
  %_cond1_n_cond2_cond3_473 = and i1 %_cond1_n_cond2_472, %_cond4_471
  br i1 %_cond1_n_cond2_cond3_473, label %429, label %430

; <label>:429:                                    ; preds = %424
  %_address_in_parent_stack_474 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_address_in_parent_stack_bt_475 = bitcast i8* %_address_in_parent_stack_474 to i32*
  br label %430

; <label>:430:                                    ; preds = %424, %429
  %431 = phi i32* [ %428, %424 ], [ %_address_in_parent_stack_bt_475, %429 ]
  %_new_load_476 = load i32, i32* %431
  %432 = zext i32 %_new_load_476 to i64, !mcsema_real_eip !99
  store i64 %432, i64* %R9_val, !mcsema_real_eip !99
  %433 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %434 = trunc i64 %433 to i32, !mcsema_real_eip !100
  %435 = add i32 %_new_load_476, %434
  %436 = zext i32 %435 to i64, !mcsema_real_eip !100
  store i64 %436, i64* %R8_val, !mcsema_real_eip !100
  %437 = load i64, i64* %RSI_val, !mcsema_real_eip !101
  %438 = trunc i64 %437 to i32, !mcsema_real_eip !101
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %435, i32 %438)
  %439 = extractvalue { i32, i1 } %uadd78, 0
  %440 = xor i32 %439, %438, !mcsema_real_eip !101
  %441 = xor i32 %440, %435, !mcsema_real_eip !101
  %442 = and i32 %441, 16, !mcsema_real_eip !101
  %443 = icmp ne i32 %442, 0, !mcsema_real_eip !101
  store i1 %443, i1* %AF_val, !mcsema_real_eip !101
  %444 = icmp slt i32 %439, 0
  store i1 %444, i1* %SF_val, !mcsema_real_eip !101
  %445 = icmp eq i32 %439, 0, !mcsema_real_eip !101
  store i1 %445, i1* %ZF_val, !mcsema_real_eip !101
  %446 = xor i32 %435, -2147483648, !mcsema_real_eip !101
  %447 = xor i32 %446, %438, !mcsema_real_eip !101
  %448 = and i32 %440, %447, !mcsema_real_eip !101
  %449 = icmp slt i32 %448, 0
  store i1 %449, i1* %OF_val, !mcsema_real_eip !101
  %450 = trunc i32 %439 to i8, !mcsema_real_eip !101
  %451 = tail call i8 @llvm.ctpop.i8(i8 %450), !mcsema_real_eip !101
  %452 = and i8 %451, 1
  %453 = icmp eq i8 %452, 0
  store i1 %453, i1* %PF_val, !mcsema_real_eip !101
  %454 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %454, i1* %CF_val, !mcsema_real_eip !101
  %455 = zext i32 %439 to i64, !mcsema_real_eip !101
  store i64 %455, i64* %RSI_val, !mcsema_real_eip !101
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %456 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -116
  %457 = add i64 %456, -116, !mcsema_real_eip !102
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !102
  %459 = bitcast i64* %_allin_new_bt_80 to i32*
  store i32 %439, i32* %459, !mcsema_real_eip !102
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %460 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %461 = add i64 %460, -32, !mcsema_real_eip !103
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !103
  %463 = bitcast i64* %_allin_new_bt_83 to i32*
  %_ptr_to_int_477 = ptrtoint i32* %463 to i64
  %_local_end_to_int_478 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_479 = bitcast i32* %463 to i8*
  %_offset_above_rbp_480 = sub i64 %_ptr_to_int_477, %_local_end_to_int_478
  %_pot_address_in_parent_stack_481 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_cond1_482 = icmp ugt i8* %_ptr_bt_479, %_local_stack_end_ptr_
  %_cond2_1_483 = icmp ugt i8* %_ptr_bt_479, %_parent_stack_end_ptr_
  %_cond2_2_484 = icmp ult i8* %_ptr_bt_479, %_parent_stack_start_ptr_
  %_cond2_485 = or i1 %_cond2_1_483, %_cond2_2_484
  %_cond4_486 = icmp ule i8* %_pot_address_in_parent_stack_481, %_parent_stack_end_ptr_
  %_cond1_n_cond2_487 = and i1 %_cond1_482, %_cond2_485
  %_cond1_n_cond2_cond3_488 = and i1 %_cond1_n_cond2_487, %_cond4_486
  br i1 %_cond1_n_cond2_cond3_488, label %464, label %465

; <label>:464:                                    ; preds = %430
  %_address_in_parent_stack_489 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_address_in_parent_stack_bt_490 = bitcast i8* %_address_in_parent_stack_489 to i32*
  br label %465

; <label>:465:                                    ; preds = %430, %464
  %466 = phi i32* [ %463, %430 ], [ %_address_in_parent_stack_bt_490, %464 ]
  %_new_load_491 = load i32, i32* %466
  %467 = zext i32 %_new_load_491 to i64, !mcsema_real_eip !103
  store i64 %467, i64* %RSI_val, !mcsema_real_eip !103
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %468 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -64
  %469 = add i64 %468, -64, !mcsema_real_eip !104
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %470 = inttoptr i64 %469 to i64*, !mcsema_real_eip !104
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
  br i1 %_cond1_n_cond2_cond3_503, label %471, label %472

; <label>:471:                                    ; preds = %465
  %_address_in_parent_stack_504 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_address_in_parent_stack_bt_505 = bitcast i8* %_address_in_parent_stack_504 to i64*
  br label %472

; <label>:472:                                    ; preds = %465, %471
  %473 = phi i64* [ %_allin_new_bt_86, %465 ], [ %_address_in_parent_stack_bt_505, %471 ]
  %_new_load_506 = load i64, i64* %473
  store i64 %_new_load_506, i64* %RAX_val, !mcsema_real_eip !104
  %474 = add i64 %_new_load_506, 8, !mcsema_real_eip !105
  %475 = inttoptr i64 %474 to i64*, !mcsema_real_eip !105
  %476 = bitcast i64* %475 to i32*
  %_ptr_to_int_507 = ptrtoint i32* %476 to i64
  %_local_end_to_int_508 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_509 = bitcast i32* %476 to i8*
  %_offset_above_rbp_510 = sub i64 %_ptr_to_int_507, %_local_end_to_int_508
  %_pot_address_in_parent_stack_511 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_cond1_512 = icmp ugt i8* %_ptr_bt_509, %_local_stack_end_ptr_
  %_cond2_1_513 = icmp ugt i8* %_ptr_bt_509, %_parent_stack_end_ptr_
  %_cond2_2_514 = icmp ult i8* %_ptr_bt_509, %_parent_stack_start_ptr_
  %_cond2_515 = or i1 %_cond2_1_513, %_cond2_2_514
  %_cond4_516 = icmp ule i8* %_pot_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond1_n_cond2_517 = and i1 %_cond1_512, %_cond2_515
  %_cond1_n_cond2_cond3_518 = and i1 %_cond1_n_cond2_517, %_cond4_516
  br i1 %_cond1_n_cond2_cond3_518, label %477, label %478

; <label>:477:                                    ; preds = %472
  %_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_address_in_parent_stack_bt_520 = bitcast i8* %_address_in_parent_stack_519 to i32*
  br label %478

; <label>:478:                                    ; preds = %472, %477
  %479 = phi i32* [ %476, %472 ], [ %_address_in_parent_stack_bt_520, %477 ]
  %_new_load_521 = load i32, i32* %479
  %480 = zext i32 %_new_load_521 to i64, !mcsema_real_eip !105
  store i64 %480, i64* %R8_val, !mcsema_real_eip !105
  %481 = load i64, i64* %RSI_val, !mcsema_real_eip !106
  %482 = trunc i64 %481 to i32, !mcsema_real_eip !106
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_521, i32 %482)
  %483 = extractvalue { i32, i1 } %uadd79, 0
  %484 = xor i32 %483, %482, !mcsema_real_eip !106
  %485 = xor i32 %484, %_new_load_521, !mcsema_real_eip !106
  %486 = and i32 %485, 16, !mcsema_real_eip !106
  %487 = icmp ne i32 %486, 0, !mcsema_real_eip !106
  store i1 %487, i1* %AF_val, !mcsema_real_eip !106
  %488 = icmp slt i32 %483, 0
  store i1 %488, i1* %SF_val, !mcsema_real_eip !106
  %489 = icmp eq i32 %483, 0, !mcsema_real_eip !106
  store i1 %489, i1* %ZF_val, !mcsema_real_eip !106
  %490 = xor i32 %_new_load_521, -2147483648, !mcsema_real_eip !106
  %491 = xor i32 %490, %482, !mcsema_real_eip !106
  %492 = and i32 %484, %491, !mcsema_real_eip !106
  %493 = icmp slt i32 %492, 0
  store i1 %493, i1* %OF_val, !mcsema_real_eip !106
  %494 = trunc i32 %483 to i8, !mcsema_real_eip !106
  %495 = tail call i8 @llvm.ctpop.i8(i8 %494), !mcsema_real_eip !106
  %496 = and i8 %495, 1
  %497 = icmp eq i8 %496, 0
  store i1 %497, i1* %PF_val, !mcsema_real_eip !106
  %498 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %498, i1* %CF_val, !mcsema_real_eip !106
  %499 = zext i32 %483 to i64, !mcsema_real_eip !106
  store i64 %499, i64* %RSI_val, !mcsema_real_eip !106
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %500 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -72
  %501 = add i64 %500, -72, !mcsema_real_eip !107
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !107
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
  br i1 %_cond1_n_cond2_cond3_533, label %503, label %504

; <label>:503:                                    ; preds = %478
  %_address_in_parent_stack_534 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_address_in_parent_stack_bt_535 = bitcast i8* %_address_in_parent_stack_534 to i64*
  br label %504

; <label>:504:                                    ; preds = %478, %503
  %505 = phi i64* [ %_allin_new_bt_89, %478 ], [ %_address_in_parent_stack_bt_535, %503 ]
  %_new_load_536 = load i64, i64* %505
  store i64 %_new_load_536, i64* %RAX_val, !mcsema_real_eip !107
  %506 = add i64 %_new_load_536, 8, !mcsema_real_eip !108
  %507 = inttoptr i64 %506 to i64*, !mcsema_real_eip !108
  %508 = bitcast i64* %507 to i32*
  %_ptr_to_int_537 = ptrtoint i32* %508 to i64
  %_local_end_to_int_538 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_539 = bitcast i32* %508 to i8*
  %_offset_above_rbp_540 = sub i64 %_ptr_to_int_537, %_local_end_to_int_538
  %_pot_address_in_parent_stack_541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_cond1_542 = icmp ugt i8* %_ptr_bt_539, %_local_stack_end_ptr_
  %_cond2_1_543 = icmp ugt i8* %_ptr_bt_539, %_parent_stack_end_ptr_
  %_cond2_2_544 = icmp ult i8* %_ptr_bt_539, %_parent_stack_start_ptr_
  %_cond2_545 = or i1 %_cond2_1_543, %_cond2_2_544
  %_cond4_546 = icmp ule i8* %_pot_address_in_parent_stack_541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_547 = and i1 %_cond1_542, %_cond2_545
  %_cond1_n_cond2_cond3_548 = and i1 %_cond1_n_cond2_547, %_cond4_546
  br i1 %_cond1_n_cond2_cond3_548, label %509, label %510

; <label>:509:                                    ; preds = %504
  %_address_in_parent_stack_549 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_address_in_parent_stack_bt_550 = bitcast i8* %_address_in_parent_stack_549 to i32*
  br label %510

; <label>:510:                                    ; preds = %504, %509
  %511 = phi i32* [ %508, %504 ], [ %_address_in_parent_stack_bt_550, %509 ]
  %_new_load_551 = load i32, i32* %511
  %512 = zext i32 %_new_load_551 to i64, !mcsema_real_eip !108
  store i64 %512, i64* %R8_val, !mcsema_real_eip !108
  %513 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %514 = trunc i64 %513 to i32, !mcsema_real_eip !109
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_551, i32 %514)
  %515 = extractvalue { i32, i1 } %uadd80, 0
  %516 = xor i32 %515, %514, !mcsema_real_eip !109
  %517 = xor i32 %516, %_new_load_551, !mcsema_real_eip !109
  %518 = and i32 %517, 16, !mcsema_real_eip !109
  %519 = icmp ne i32 %518, 0, !mcsema_real_eip !109
  store i1 %519, i1* %AF_val, !mcsema_real_eip !109
  %520 = icmp slt i32 %515, 0
  store i1 %520, i1* %SF_val, !mcsema_real_eip !109
  %521 = icmp eq i32 %515, 0, !mcsema_real_eip !109
  store i1 %521, i1* %ZF_val, !mcsema_real_eip !109
  %522 = xor i32 %_new_load_551, -2147483648, !mcsema_real_eip !109
  %523 = xor i32 %522, %514, !mcsema_real_eip !109
  %524 = and i32 %516, %523, !mcsema_real_eip !109
  %525 = icmp slt i32 %524, 0
  store i1 %525, i1* %OF_val, !mcsema_real_eip !109
  %526 = trunc i32 %515 to i8, !mcsema_real_eip !109
  %527 = tail call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !109
  %528 = and i8 %527, 1
  %529 = icmp eq i8 %528, 0
  store i1 %529, i1* %PF_val, !mcsema_real_eip !109
  %530 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %530, i1* %CF_val, !mcsema_real_eip !109
  %531 = zext i32 %515 to i64, !mcsema_real_eip !109
  store i64 %531, i64* %RSI_val, !mcsema_real_eip !109
  %532 = load i64, i64* %R11_val, !mcsema_real_eip !110
  %533 = add i64 %532, 8, !mcsema_real_eip !110
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !110
  %535 = bitcast i64* %534 to i32*
  %_ptr_to_int_552 = ptrtoint i32* %535 to i64
  %_local_end_to_int_553 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_554 = bitcast i32* %535 to i8*
  %_offset_above_rbp_555 = sub i64 %_ptr_to_int_552, %_local_end_to_int_553
  %_pot_address_in_parent_stack_556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_cond1_557 = icmp ugt i8* %_ptr_bt_554, %_local_stack_end_ptr_
  %_cond2_1_558 = icmp ugt i8* %_ptr_bt_554, %_parent_stack_end_ptr_
  %_cond2_2_559 = icmp ult i8* %_ptr_bt_554, %_parent_stack_start_ptr_
  %_cond2_560 = or i1 %_cond2_1_558, %_cond2_2_559
  %_cond4_561 = icmp ule i8* %_pot_address_in_parent_stack_556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_562 = and i1 %_cond1_557, %_cond2_560
  %_cond1_n_cond2_cond3_563 = and i1 %_cond1_n_cond2_562, %_cond4_561
  br i1 %_cond1_n_cond2_cond3_563, label %536, label %537

; <label>:536:                                    ; preds = %510
  %_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_address_in_parent_stack_bt_565 = bitcast i8* %_address_in_parent_stack_564 to i32*
  br label %537

; <label>:537:                                    ; preds = %510, %536
  %538 = phi i32* [ %535, %510 ], [ %_address_in_parent_stack_bt_565, %536 ]
  %_new_load_566 = load i32, i32* %538
  %539 = zext i32 %_new_load_566 to i64, !mcsema_real_eip !110
  store i64 %539, i64* %R8_val, !mcsema_real_eip !110
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %540 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -96
  %541 = add i64 %540, -96, !mcsema_real_eip !111
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !111
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
  br i1 %_cond1_n_cond2_cond3_578, label %543, label %544

; <label>:543:                                    ; preds = %537
  %_address_in_parent_stack_579 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_address_in_parent_stack_bt_580 = bitcast i8* %_address_in_parent_stack_579 to i64*
  br label %544

; <label>:544:                                    ; preds = %537, %543
  %545 = phi i64* [ %_allin_new_bt_92, %537 ], [ %_address_in_parent_stack_bt_580, %543 ]
  %_new_load_581 = load i64, i64* %545
  store i64 %_new_load_581, i64* %RAX_val, !mcsema_real_eip !111
  %546 = add i64 %_new_load_581, 8, !mcsema_real_eip !112
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !112
  %548 = bitcast i64* %547 to i32*
  %_ptr_to_int_582 = ptrtoint i32* %548 to i64
  %_local_end_to_int_583 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_584 = bitcast i32* %548 to i8*
  %_offset_above_rbp_585 = sub i64 %_ptr_to_int_582, %_local_end_to_int_583
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_ptr_bt_584, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_ptr_bt_584, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_ptr_bt_584, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  br i1 %_cond1_n_cond2_cond3_593, label %549, label %550

; <label>:549:                                    ; preds = %544
  %_address_in_parent_stack_594 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_address_in_parent_stack_bt_595 = bitcast i8* %_address_in_parent_stack_594 to i32*
  br label %550

; <label>:550:                                    ; preds = %544, %549
  %551 = phi i32* [ %548, %544 ], [ %_address_in_parent_stack_bt_595, %549 ]
  %_new_load_596 = load i32, i32* %551
  %552 = zext i32 %_new_load_596 to i64, !mcsema_real_eip !112
  store i64 %552, i64* %R9_val, !mcsema_real_eip !112
  %553 = load i64, i64* %R8_val, !mcsema_real_eip !113
  %554 = trunc i64 %553 to i32, !mcsema_real_eip !113
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_596, i32 %554)
  %555 = extractvalue { i32, i1 } %uadd81, 0
  %556 = xor i32 %555, %554, !mcsema_real_eip !113
  %557 = xor i32 %556, %_new_load_596, !mcsema_real_eip !113
  %558 = and i32 %557, 16, !mcsema_real_eip !113
  %559 = icmp ne i32 %558, 0, !mcsema_real_eip !113
  store i1 %559, i1* %AF_val, !mcsema_real_eip !113
  %560 = icmp slt i32 %555, 0
  store i1 %560, i1* %SF_val, !mcsema_real_eip !113
  %561 = icmp eq i32 %555, 0, !mcsema_real_eip !113
  store i1 %561, i1* %ZF_val, !mcsema_real_eip !113
  %562 = xor i32 %_new_load_596, -2147483648, !mcsema_real_eip !113
  %563 = xor i32 %562, %554, !mcsema_real_eip !113
  %564 = and i32 %556, %563, !mcsema_real_eip !113
  %565 = icmp slt i32 %564, 0
  store i1 %565, i1* %OF_val, !mcsema_real_eip !113
  %566 = trunc i32 %555 to i8, !mcsema_real_eip !113
  %567 = tail call i8 @llvm.ctpop.i8(i8 %566), !mcsema_real_eip !113
  %568 = and i8 %567, 1
  %569 = icmp eq i8 %568, 0
  store i1 %569, i1* %PF_val, !mcsema_real_eip !113
  %570 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %570, i1* %CF_val, !mcsema_real_eip !113
  %571 = zext i32 %555 to i64, !mcsema_real_eip !113
  store i64 %571, i64* %R8_val, !mcsema_real_eip !113
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %572 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -104
  %573 = add i64 %572, -104, !mcsema_real_eip !114
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !114
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
  br i1 %_cond1_n_cond2_cond3_608, label %575, label %576

; <label>:575:                                    ; preds = %550
  %_address_in_parent_stack_609 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_address_in_parent_stack_bt_610 = bitcast i8* %_address_in_parent_stack_609 to i64*
  br label %576

; <label>:576:                                    ; preds = %550, %575
  %577 = phi i64* [ %_allin_new_bt_95, %550 ], [ %_address_in_parent_stack_bt_610, %575 ]
  %_new_load_611 = load i64, i64* %577
  store i64 %_new_load_611, i64* %RAX_val, !mcsema_real_eip !114
  %578 = add i64 %_new_load_611, 8, !mcsema_real_eip !115
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !115
  %580 = bitcast i64* %579 to i32*
  %_ptr_to_int_612 = ptrtoint i32* %580 to i64
  %_local_end_to_int_613 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_614 = bitcast i32* %580 to i8*
  %_offset_above_rbp_615 = sub i64 %_ptr_to_int_612, %_local_end_to_int_613
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_ptr_bt_614, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_ptr_bt_614, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_ptr_bt_614, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  br i1 %_cond1_n_cond2_cond3_623, label %581, label %582

; <label>:581:                                    ; preds = %576
  %_address_in_parent_stack_624 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_address_in_parent_stack_bt_625 = bitcast i8* %_address_in_parent_stack_624 to i32*
  br label %582

; <label>:582:                                    ; preds = %576, %581
  %583 = phi i32* [ %580, %576 ], [ %_address_in_parent_stack_bt_625, %581 ]
  %_new_load_626 = load i32, i32* %583
  %584 = zext i32 %_new_load_626 to i64, !mcsema_real_eip !115
  store i64 %584, i64* %R9_val, !mcsema_real_eip !115
  %585 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %586 = trunc i64 %585 to i32, !mcsema_real_eip !116
  %587 = add i32 %_new_load_626, %586
  %588 = zext i32 %587 to i64, !mcsema_real_eip !116
  store i64 %588, i64* %R8_val, !mcsema_real_eip !116
  %589 = load i64, i64* %RSI_val, !mcsema_real_eip !117
  %590 = trunc i64 %589 to i32, !mcsema_real_eip !117
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %587, i32 %590)
  %591 = extractvalue { i32, i1 } %uadd83, 0
  %592 = xor i32 %591, %590, !mcsema_real_eip !117
  %593 = xor i32 %592, %587, !mcsema_real_eip !117
  %594 = and i32 %593, 16, !mcsema_real_eip !117
  %595 = icmp ne i32 %594, 0, !mcsema_real_eip !117
  store i1 %595, i1* %AF_val, !mcsema_real_eip !117
  %596 = icmp slt i32 %591, 0
  store i1 %596, i1* %SF_val, !mcsema_real_eip !117
  %597 = icmp eq i32 %591, 0, !mcsema_real_eip !117
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !117
  %598 = xor i32 %587, -2147483648, !mcsema_real_eip !117
  %599 = xor i32 %598, %590, !mcsema_real_eip !117
  %600 = and i32 %592, %599, !mcsema_real_eip !117
  %601 = icmp slt i32 %600, 0
  store i1 %601, i1* %OF_val, !mcsema_real_eip !117
  %602 = trunc i32 %591 to i8, !mcsema_real_eip !117
  %603 = tail call i8 @llvm.ctpop.i8(i8 %602), !mcsema_real_eip !117
  %604 = and i8 %603, 1
  %605 = icmp eq i8 %604, 0
  store i1 %605, i1* %PF_val, !mcsema_real_eip !117
  %606 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %606, i1* %CF_val, !mcsema_real_eip !117
  %607 = zext i32 %591 to i64, !mcsema_real_eip !117
  store i64 %607, i64* %RSI_val, !mcsema_real_eip !117
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %608 = load i64, i64* %RBP_val, !mcsema_real_eip !118
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -112
  %609 = add i64 %608, -112, !mcsema_real_eip !118
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %610 = inttoptr i64 %609 to i64*, !mcsema_real_eip !118
  %611 = bitcast i64* %_allin_new_bt_98 to i32*
  store i32 %591, i32* %611, !mcsema_real_eip !118
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %612 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -16
  %613 = add i64 %612, -16, !mcsema_real_eip !119
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %614 = inttoptr i64 %613 to i64*, !mcsema_real_eip !119
  %615 = load i64, i64* %RSI_val, !mcsema_real_eip !119
  %616 = trunc i64 %615 to i32, !mcsema_real_eip !119
  %617 = bitcast i64* %_allin_new_bt_101 to i32*
  store i32 %616, i32* %617, !mcsema_real_eip !119
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %618 = load i64, i64* %RBP_val, !mcsema_real_eip !120
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -120
  %619 = add i64 %618, -120, !mcsema_real_eip !120
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %620 = inttoptr i64 %619 to i64*, !mcsema_real_eip !120
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
  br i1 %_cond1_n_cond2_cond3_638, label %621, label %622

; <label>:621:                                    ; preds = %582
  %_address_in_parent_stack_639 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_address_in_parent_stack_bt_640 = bitcast i8* %_address_in_parent_stack_639 to i64*
  br label %622

; <label>:622:                                    ; preds = %582, %621
  %623 = phi i64* [ %_allin_new_bt_104, %582 ], [ %_address_in_parent_stack_bt_640, %621 ]
  %_new_load_641 = load i64, i64* %623
  store i64 %_new_load_641, i64* %RAX_val, !mcsema_real_eip !120
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -24
  %624 = add i64 %618, -24, !mcsema_real_eip !121
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %625 = inttoptr i64 %624 to i64*, !mcsema_real_eip !121
  store i64 %_new_load_641, i64* %_allin_new_bt_106, !mcsema_real_eip !121
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %626 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -16
  %627 = add i64 %626, -16, !mcsema_real_eip !122
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !122
  %629 = bitcast i64* %_allin_new_bt_109 to i32*
  %_ptr_to_int_642 = ptrtoint i32* %629 to i64
  %_local_end_to_int_643 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_644 = bitcast i32* %629 to i8*
  %_offset_above_rbp_645 = sub i64 %_ptr_to_int_642, %_local_end_to_int_643
  %_pot_address_in_parent_stack_646 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_cond1_647 = icmp ugt i8* %_ptr_bt_644, %_local_stack_end_ptr_
  %_cond2_1_648 = icmp ugt i8* %_ptr_bt_644, %_parent_stack_end_ptr_
  %_cond2_2_649 = icmp ult i8* %_ptr_bt_644, %_parent_stack_start_ptr_
  %_cond2_650 = or i1 %_cond2_1_648, %_cond2_2_649
  %_cond4_651 = icmp ule i8* %_pot_address_in_parent_stack_646, %_parent_stack_end_ptr_
  %_cond1_n_cond2_652 = and i1 %_cond1_647, %_cond2_650
  %_cond1_n_cond2_cond3_653 = and i1 %_cond1_n_cond2_652, %_cond4_651
  br i1 %_cond1_n_cond2_cond3_653, label %630, label %631

; <label>:630:                                    ; preds = %622
  %_address_in_parent_stack_654 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_645
  %_address_in_parent_stack_bt_655 = bitcast i8* %_address_in_parent_stack_654 to i32*
  br label %631

; <label>:631:                                    ; preds = %622, %630
  %632 = phi i32* [ %629, %622 ], [ %_address_in_parent_stack_bt_655, %630 ]
  %_new_load_656 = load i32, i32* %632
  %633 = zext i32 %_new_load_656 to i64, !mcsema_real_eip !122
  store i64 %633, i64* %RSI_val, !mcsema_real_eip !122
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %634 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -128
  %635 = add i64 %634, -128, !mcsema_real_eip !123
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %636 = inttoptr i64 %635 to i64*, !mcsema_real_eip !123
  %637 = bitcast i64* %_allin_new_bt_112 to i32*
  store i32 %_new_load_656, i32* %637, !mcsema_real_eip !123
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %638 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -24
  %639 = add i64 %638, -24, !mcsema_real_eip !124
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %640 = inttoptr i64 %639 to i64*, !mcsema_real_eip !124
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
  br i1 %_cond1_n_cond2_cond3_668, label %641, label %642

; <label>:641:                                    ; preds = %631
  %_address_in_parent_stack_669 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_660
  %_address_in_parent_stack_bt_670 = bitcast i8* %_address_in_parent_stack_669 to i64*
  br label %642

; <label>:642:                                    ; preds = %631, %641
  %643 = phi i64* [ %_allin_new_bt_115, %631 ], [ %_address_in_parent_stack_bt_670, %641 ]
  %_new_load_671 = load i64, i64* %643
  store i64 %_new_load_671, i64* %RAX_val, !mcsema_real_eip !124
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -136
  %644 = add i64 %638, -136, !mcsema_real_eip !125
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %645 = inttoptr i64 %644 to i64*, !mcsema_real_eip !125
  store i64 %_new_load_671, i64* %_allin_new_bt_117, !mcsema_real_eip !125
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -136
  %647 = add i64 %646, -136, !mcsema_real_eip !126
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !126
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
  br i1 %_cond1_n_cond2_cond3_683, label %649, label %650

; <label>:649:                                    ; preds = %642
  %_address_in_parent_stack_684 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_675
  %_address_in_parent_stack_bt_685 = bitcast i8* %_address_in_parent_stack_684 to i64*
  br label %650

; <label>:650:                                    ; preds = %642, %649
  %651 = phi i64* [ %_allin_new_bt_120, %642 ], [ %_address_in_parent_stack_bt_685, %649 ]
  %_new_load_686 = load i64, i64* %651
  store i64 %_new_load_686, i64* %RAX_val, !mcsema_real_eip !126
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -128
  %652 = add i64 %646, -128, !mcsema_real_eip !127
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %653 = inttoptr i64 %652 to i64*, !mcsema_real_eip !127
  %654 = bitcast i64* %_allin_new_bt_122 to i32*
  %_ptr_to_int_687 = ptrtoint i32* %654 to i64
  %_local_end_to_int_688 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_689 = bitcast i32* %654 to i8*
  %_offset_above_rbp_690 = sub i64 %_ptr_to_int_687, %_local_end_to_int_688
  %_pot_address_in_parent_stack_691 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_cond1_692 = icmp ugt i8* %_ptr_bt_689, %_local_stack_end_ptr_
  %_cond2_1_693 = icmp ugt i8* %_ptr_bt_689, %_parent_stack_end_ptr_
  %_cond2_2_694 = icmp ult i8* %_ptr_bt_689, %_parent_stack_start_ptr_
  %_cond2_695 = or i1 %_cond2_1_693, %_cond2_2_694
  %_cond4_696 = icmp ule i8* %_pot_address_in_parent_stack_691, %_parent_stack_end_ptr_
  %_cond1_n_cond2_697 = and i1 %_cond1_692, %_cond2_695
  %_cond1_n_cond2_cond3_698 = and i1 %_cond1_n_cond2_697, %_cond4_696
  br i1 %_cond1_n_cond2_cond3_698, label %655, label %656

; <label>:655:                                    ; preds = %650
  %_address_in_parent_stack_699 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_690
  %_address_in_parent_stack_bt_700 = bitcast i8* %_address_in_parent_stack_699 to i32*
  br label %656

; <label>:656:                                    ; preds = %650, %655
  %657 = phi i32* [ %654, %650 ], [ %_address_in_parent_stack_bt_700, %655 ]
  %_new_load_701 = load i32, i32* %657
  %658 = zext i32 %_new_load_701 to i64, !mcsema_real_eip !127
  store i64 %658, i64* %RDX_val, !mcsema_real_eip !127
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %659 = load i64, i64* %RSP_val, !mcsema_real_eip !128
  %_allin_new_bt_124 = bitcast i8* %_load_rsp_ptr_123 to i64*
  %660 = inttoptr i64 %659 to i64*, !mcsema_real_eip !128
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
  br i1 %_cond1_n_cond2_cond3_713, label %661, label %662

; <label>:661:                                    ; preds = %656
  %_address_in_parent_stack_714 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_705
  %_address_in_parent_stack_bt_715 = bitcast i8* %_address_in_parent_stack_714 to i64*
  br label %662

; <label>:662:                                    ; preds = %656, %661
  %663 = phi i64* [ %_allin_new_bt_124, %656 ], [ %_address_in_parent_stack_bt_715, %661 ]
  %_new_load_716 = load i64, i64* %663
  store i64 %_new_load_716, i64* %RBX_val, !mcsema_real_eip !128
  %_new_gep_125 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 8
  %664 = add i64 %659, 8, !mcsema_real_eip !128
  store volatile i8* %_new_gep_125, i8** %_RSP_ptr_
  store i64 %664, i64* %RSP_val, !mcsema_real_eip !128
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %665 = inttoptr i64 %664 to i64*, !mcsema_real_eip !129
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
  br i1 %_cond1_n_cond2_cond3_728, label %666, label %667

; <label>:666:                                    ; preds = %662
  %_address_in_parent_stack_729 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_address_in_parent_stack_bt_730 = bitcast i8* %_address_in_parent_stack_729 to i64*
  br label %667

; <label>:667:                                    ; preds = %662, %666
  %668 = phi i64* [ %_allin_new_bt_126, %662 ], [ %_address_in_parent_stack_bt_730, %666 ]
  %_new_load_731 = load i64, i64* %668
  %_new_int2ptr_ = inttoptr i64 %_new_load_731 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_731, i64* %RBP_val, !mcsema_real_eip !129
  %_new_gep_127 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 24
  %669 = add i64 %659, 24, !mcsema_real_eip !130
  store volatile i8* %_new_gep_127, i8** %_RSP_ptr_
  store i64 %669, i64* %RSP_val, !mcsema_real_eip !130
  %670 = load i64, i64* %RAX_val, !mcsema_real_eip !130
  store i64 %670, i64* %RAX, !mcsema_real_eip !130
  %671 = load i64, i64* %RBX_val, !mcsema_real_eip !130
  store i64 %671, i64* %RBX, !mcsema_real_eip !130
  %672 = load i64, i64* %RCX_val, !mcsema_real_eip !130
  store i64 %672, i64* %RCX, !mcsema_real_eip !130
  %673 = load i64, i64* %RDX_val, !mcsema_real_eip !130
  store i64 %673, i64* %RDX, !mcsema_real_eip !130
  %674 = load i64, i64* %RSI_val, !mcsema_real_eip !130
  store i64 %674, i64* %RSI, !mcsema_real_eip !130
  %675 = load i64, i64* %RDI_val, !mcsema_real_eip !130
  store i64 %675, i64* %RDI, !mcsema_real_eip !130
  %_load_rsp_ptr_128 = load i8*, i8** %_RSP_ptr_
  %676 = load i64, i64* %RSP_val, !mcsema_real_eip !130
  %_new_ptr2int_129 = ptrtoint i8* %_load_rsp_ptr_128 to i64
  store volatile i64 %_new_ptr2int_129, i64* %RSP
  %_load_rbp_ptr_130 = load i8*, i8** %_RBP_ptr_
  %677 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  %_new_ptr2int_131 = ptrtoint i8* %_load_rbp_ptr_130 to i64
  store volatile i64 %_new_ptr2int_131, i64* %RBP
  %678 = load i64, i64* %R8_val, !mcsema_real_eip !130
  store i64 %678, i64* %R8, !mcsema_real_eip !130
  %679 = load i64, i64* %R9_val, !mcsema_real_eip !130
  store i64 %679, i64* %R9, !mcsema_real_eip !130
  %680 = load i64, i64* %R10_val, !mcsema_real_eip !130
  store i64 %680, i64* %R10, !mcsema_real_eip !130
  %681 = load i64, i64* %R11_val, !mcsema_real_eip !130
  store i64 %681, i64* %R11, !mcsema_real_eip !130
  %682 = load i64, i64* %R12_val, !mcsema_real_eip !130
  store i64 %682, i64* %R12, !mcsema_real_eip !130
  %683 = load i64, i64* %R13_val, !mcsema_real_eip !130
  store i64 %683, i64* %R13, !mcsema_real_eip !130
  %684 = load i64, i64* %R14_val, !mcsema_real_eip !130
  store i64 %684, i64* %R14, !mcsema_real_eip !130
  %685 = load i64, i64* %R15_val, !mcsema_real_eip !130
  store i64 %685, i64* %R15, !mcsema_real_eip !130
  %686 = load i64, i64* %RIP_val, !mcsema_real_eip !130
  store i64 %686, i64* %RIP, !mcsema_real_eip !130
  %687 = load i1, i1* %CF_val, !mcsema_real_eip !130
  store i1 %687, i1* %CF, align 1, !mcsema_real_eip !130
  %688 = load i1, i1* %PF_val, !mcsema_real_eip !130
  store i1 %688, i1* %PF, align 1, !mcsema_real_eip !130
  %689 = load i1, i1* %AF_val, !mcsema_real_eip !130
  store i1 %689, i1* %AF, align 1, !mcsema_real_eip !130
  %690 = load i1, i1* %ZF_val, !mcsema_real_eip !130
  store i1 %690, i1* %ZF, align 1, !mcsema_real_eip !130
  %691 = load i1, i1* %SF_val, !mcsema_real_eip !130
  store i1 %691, i1* %SF, align 1, !mcsema_real_eip !130
  %692 = load i1, i1* %OF_val, !mcsema_real_eip !130
  store i1 %692, i1* %OF, align 1, !mcsema_real_eip !130
  %693 = load i1, i1* %DF_val, !mcsema_real_eip !130
  store i1 %693, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %694 = load i1, i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %694, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %695 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %695, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %696 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %696, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %697 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %697, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %698 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %698, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %699 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %699, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %700 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %700, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %701 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %701, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %702 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %702, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %703 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %703, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %704 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %704, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %705 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %705, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %706 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %706, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %707 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %707, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %708 = load i1, i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %708, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %709 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %709, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %710 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %710, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %711 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %711, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %712 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %712, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %713 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %713, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %714 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %714, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %715 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %715, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %716 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %716, i1* %FPU_IM, align 1, !mcsema_real_eip !130
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
  br i1 %_cond1_n_cond2_cond3_743, label %717, label %718

; <label>:717:                                    ; preds = %667
  %_address_in_parent_stack_744 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_735
  %_address_in_parent_stack_bt_745 = bitcast i8* %_address_in_parent_stack_744 to i64*
  br label %718

; <label>:718:                                    ; preds = %667, %717
  %719 = phi i64* [ %53, %667 ], [ %_address_in_parent_stack_bt_745, %717 ]
  %_new_load_746 = load i64, i64* %719
  store i64 %_new_load_746, i64* %52, align 4
  %720 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %720, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %721 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %721, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %722 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %722, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %723 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %723, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %724 = load i128, i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %724, i128* %XMM0, align 1, !mcsema_real_eip !130
  %725 = load i128, i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %725, i128* %XMM1, align 1, !mcsema_real_eip !130
  %726 = load i128, i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %726, i128* %XMM2, align 1, !mcsema_real_eip !130
  %727 = load i128, i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %727, i128* %XMM3, align 1, !mcsema_real_eip !130
  %728 = load i128, i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %728, i128* %XMM4, align 1, !mcsema_real_eip !130
  %729 = load i128, i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %729, i128* %XMM5, align 1, !mcsema_real_eip !130
  %730 = load i128, i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %730, i128* %XMM6, align 1, !mcsema_real_eip !130
  %731 = load i128, i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %731, i128* %XMM7, align 1, !mcsema_real_eip !130
  %732 = load i128, i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %732, i128* %XMM8, align 1, !mcsema_real_eip !130
  %733 = load i128, i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %733, i128* %XMM9, align 1, !mcsema_real_eip !130
  %734 = load i128, i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %734, i128* %XMM10, align 1, !mcsema_real_eip !130
  %735 = load i128, i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %735, i128* %XMM11, align 1, !mcsema_real_eip !130
  %736 = load i128, i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %736, i128* %XMM12, align 1, !mcsema_real_eip !130
  %737 = load i128, i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %737, i128* %XMM13, align 1, !mcsema_real_eip !130
  %738 = load i128, i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %738, i128* %XMM14, align 1, !mcsema_real_eip !130
  %739 = load i128, i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %739, i128* %XMM15, align 1, !mcsema_real_eip !130
  %740 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %740, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %741 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %741, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 273, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 276, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = !{i64 283, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 290, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 297, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 304, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 316, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 318, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 323, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 327, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!13 = !{i64 333, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = !{i64 337, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!15 = !{i64 344, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = !{i64 348, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!17 = !{i64 355, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!18 = !{i64 359, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!19 = !{i64 362, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!20 = !{i64 365, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!21 = !{i64 369, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!22 = !{i64 373, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!23 = !{i64 377, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!24 = !{i64 380, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!25 = !{i64 383, [17 x i8] c"\09movq\09%rsp, %rdx\00"}
!26 = !{i64 386, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!27 = !{i64 389, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!28 = !{i64 393, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!29 = !{i64 397, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!30 = !{i64 401, [21 x i8] c"\09leaq\09-16(%rbp), %r8\00"}
!31 = !{i64 405, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!32 = !{i64 409, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!33 = !{i64 415, [15 x i8] c"\09movl\09$1, %ecx\00"}
!34 = !{i64 420, [15 x i8] c"\09movl\09$2, %r9d\00"}
!35 = !{i64 426, [16 x i8] c"\09movq\09%r8, %rdx\00"}
!36 = !{i64 429, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!37 = !{i64 432, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = !{i64 435, [22 x i8] c"\09movl\09-76(%rbp), %r8d\00"}
!39 = !{i64 439, [12 x i8] c"\09callq\09-444\00"}
!40 = !{i64 444, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!41 = !{i64 447, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!42 = !{i64 451, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!43 = !{i64 455, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!44 = !{i64 459, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!45 = !{i64 462, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!46 = !{i64 465, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!47 = !{i64 468, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!48 = !{i64 471, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!49 = !{i64 474, [17 x i8] c"\09movl\09%edx, %eax\00"}
!50 = !{i64 476, [17 x i8] c"\09addq\09$128, %rsp\00"}
!51 = !{i64 483, [11 x i8] c"\09popq\09%rbp\00"}
!52 = !{i64 484, [6 x i8] c"\09retq\00"}
!53 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!54 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!55 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!56 = !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!57 = !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!58 = !{i64 13, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!59 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!60 = !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!61 = !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!62 = !{i64 27, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!63 = !{i64 30, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!64 = !{i64 34, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!65 = !{i64 38, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!66 = !{i64 42, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!67 = !{i64 46, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!68 = !{i64 50, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!69 = !{i64 54, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!70 = !{i64 57, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!71 = !{i64 61, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!72 = !{i64 65, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!73 = !{i64 68, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!74 = !{i64 72, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!75 = !{i64 75, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!76 = !{i64 78, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!77 = !{i64 82, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!78 = !{i64 85, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!79 = !{i64 88, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!80 = !{i64 91, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!81 = !{i64 95, [19 x i8] c"\09movl\09(%rcx), %r9d\00"}
!82 = !{i64 98, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!83 = !{i64 101, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!84 = !{i64 104, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!85 = !{i64 107, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!86 = !{i64 110, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!87 = !{i64 113, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!88 = !{i64 116, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = !{i64 120, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!90 = !{i64 124, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!91 = !{i64 127, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!92 = !{i64 131, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!93 = !{i64 135, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!94 = !{i64 138, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!95 = !{i64 142, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!96 = !{i64 146, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!97 = !{i64 150, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!98 = !{i64 153, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!99 = !{i64 157, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!100 = !{i64 161, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!101 = !{i64 164, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!102 = !{i64 167, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!103 = !{i64 170, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!104 = !{i64 173, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!105 = !{i64 177, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!106 = !{i64 181, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!107 = !{i64 184, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!108 = !{i64 188, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!109 = !{i64 192, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = !{i64 195, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!111 = !{i64 199, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!112 = !{i64 203, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!113 = !{i64 207, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!114 = !{i64 210, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!115 = !{i64 214, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!116 = !{i64 218, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!117 = !{i64 221, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!118 = !{i64 224, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!119 = !{i64 227, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!120 = !{i64 230, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!121 = !{i64 234, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!122 = !{i64 238, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!123 = !{i64 241, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!124 = !{i64 244, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!125 = !{i64 248, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!126 = !{i64 255, [23 x i8] c"\09movq\09-136(%rbp), %rax\00"}
!127 = !{i64 262, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!128 = !{i64 265, [11 x i8] c"\09popq\09%rbx\00"}
!129 = !{i64 266, [11 x i8] c"\09popq\09%rbp\00"}
!130 = !{i64 267, [6 x i8] c"\09retq\00"}
