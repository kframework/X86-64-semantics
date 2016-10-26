; ModuleID = 'Output/test_26.clang.trans.bc'
source_filename = "Output/test_26.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

define internal x86_64_sysvcc void @sub_120(%struct.regs*) {
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
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %115 = add i64 %114, -24, !mcsema_real_eip !12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !12
  %117 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !12
  store i64 %117, i64* %RAX_val, !mcsema_real_eip !12
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !13
  %119 = bitcast i64* %118 to i32*
  store i32 5, i32* %119, !mcsema_real_eip !13
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %121 = add i64 %120, -24, !mcsema_real_eip !14
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !14
  %123 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !14
  store i64 %123, i64* %RAX_val, !mcsema_real_eip !14
  %124 = add i64 %123, 4, !mcsema_real_eip !15
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !15
  %126 = bitcast i64* %125 to i32*
  store i32 5, i32* %126, !mcsema_real_eip !15
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -24
  %128 = add i64 %127, -24, !mcsema_real_eip !16
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !16
  %130 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !16
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !16
  %131 = add i64 %130, 8, !mcsema_real_eip !17
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !17
  %133 = bitcast i64* %132 to i32*
  store i32 5, i32* %133, !mcsema_real_eip !17
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %135 = add i64 %134, -24, !mcsema_real_eip !18
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !18
  %137 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !18
  store i64 %137, i64* %RAX_val, !mcsema_real_eip !18
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -8
  %138 = add i64 %134, -8, !mcsema_real_eip !19
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !19
  %140 = bitcast i64* %_allin_new_bt_30 to i32*
  %141 = load i32, i32* %140, !mcsema_real_eip !19
  %142 = zext i32 %141 to i64, !mcsema_real_eip !19
  store i64 %142, i64* %RCX_val, !mcsema_real_eip !19
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -48
  %144 = add i64 %143, -48, !mcsema_real_eip !20
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !20
  %146 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %141, i32* %146, !mcsema_real_eip !20
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -16
  %148 = add i64 %147, -16, !mcsema_real_eip !21
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !21
  %150 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !21
  store i64 %150, i64* %RDI_val, !mcsema_real_eip !21
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -56
  %151 = add i64 %147, -56, !mcsema_real_eip !22
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !22
  store i64 %150, i64* %_allin_new_bt_38, !mcsema_real_eip !22
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -56
  %154 = add i64 %153, -56, !mcsema_real_eip !23
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !23
  %156 = load i64, i64* %_allin_new_bt_41, !mcsema_real_eip !23
  store i64 %156, i64* %RDI_val, !mcsema_real_eip !23
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -48
  %157 = add i64 %153, -48, !mcsema_real_eip !24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !24
  %159 = bitcast i64* %_allin_new_bt_43 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !24
  %161 = zext i32 %160 to i64, !mcsema_real_eip !24
  store i64 %161, i64* %RSI_val, !mcsema_real_eip !24
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -8
  %163 = add i64 %162, -8, !mcsema_real_eip !25
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !25
  %165 = bitcast i64* %_allin_new_bt_46 to i32*
  %166 = load i32, i32* %165, !mcsema_real_eip !25
  %167 = zext i32 %166 to i64, !mcsema_real_eip !25
  store i64 %167, i64* %RCX_val, !mcsema_real_eip !25
  %_load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_
  %168 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %_new_ptr2int_48 = ptrtoint i8* %_load_rsp_ptr_47 to i64
  store volatile i64 %_new_ptr2int_48, i64* %RDX_val
  %_new_gep_49 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 16
  %169 = add i64 %168, 16, !mcsema_real_eip !27
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !27
  %171 = bitcast i64* %_allin_new_bt_50 to i32*
  store i32 %166, i32* %171, !mcsema_real_eip !27
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -16
  %173 = add i64 %172, -16, !mcsema_real_eip !28
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !28
  %175 = load i64, i64* %_allin_new_bt_53, !mcsema_real_eip !28
  %176 = load i64, i64* %RDX_val, !mcsema_real_eip !29
  %177 = add i64 %176, 8, !mcsema_real_eip !29
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !29
  store i64 %175, i64* %178, !mcsema_real_eip !29
  %179 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %180 = add i64 %179, 32, !mcsema_real_eip !30
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !30
  %182 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %182, i64* %181, !mcsema_real_eip !30
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -16
  %184 = add i64 %183, -16, !mcsema_real_eip !31
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !31
  %186 = ptrtoint i64* %_allin_new_bt_56 to i64, !mcsema_real_eip !31
  store i64 %186, i64* %R8_val, !mcsema_real_eip !31
  %187 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %188 = add i64 %187, 24, !mcsema_real_eip !32
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !32
  store i64 %186, i64* %189, !mcsema_real_eip !32
  %190 = load i64, i64* %RDX_val, !mcsema_real_eip !33
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !33
  %192 = bitcast i64* %191 to i32*
  store i32 3, i32* %192, !mcsema_real_eip !33
  store i64 1, i64* %RCX_val, !mcsema_real_eip !34
  store i64 2, i64* %R9_val, !mcsema_real_eip !35
  %193 = load i64, i64* %R8_val, !mcsema_real_eip !36
  store i64 %193, i64* %RDX_val, !mcsema_real_eip !36
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %194 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -76
  %195 = add i64 %194, -76, !mcsema_real_eip !37
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !37
  %197 = load i64, i64* %RCX_val, !mcsema_real_eip !37
  %198 = trunc i64 %197 to i32, !mcsema_real_eip !37
  %199 = bitcast i64* %_allin_new_bt_59 to i32*
  store i32 %198, i32* %199, !mcsema_real_eip !37
  %200 = load i64, i64* %RAX_val, !mcsema_real_eip !38
  store i64 %200, i64* %RCX_val, !mcsema_real_eip !38
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %201 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -76
  %202 = add i64 %201, -76, !mcsema_real_eip !39
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !39
  %204 = bitcast i64* %_allin_new_bt_62 to i32*
  %205 = load i32, i32* %204, !mcsema_real_eip !39
  %206 = zext i32 %205 to i64, !mcsema_real_eip !39
  store i64 %206, i64* %R8_val, !mcsema_real_eip !39
  %_load_rsp_ptr_63 = load i8*, i8** %_RSP_ptr_
  %207 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %_new_gep_64 = getelementptr i8, i8* %_load_rsp_ptr_63, i64 -8
  %208 = add i64 %207, -8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !40
  store i64 -4981261766360305936, i64* %_allin_new_bt_65, !mcsema_real_eip !40
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %208, i64* %RSP_val, !mcsema_real_eip !40
  %210 = load i64, i64* %RAX_val, !mcsema_real_eip !40
  store i64 %210, i64* %RAX, !mcsema_real_eip !40
  %211 = load i64, i64* %RBX_val, !mcsema_real_eip !40
  store i64 %211, i64* %RBX, !mcsema_real_eip !40
  %212 = load i64, i64* %RCX_val, !mcsema_real_eip !40
  store i64 %212, i64* %RCX, !mcsema_real_eip !40
  %213 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  store i64 %213, i64* %RDX, !mcsema_real_eip !40
  %214 = load i64, i64* %RSI_val, !mcsema_real_eip !40
  store i64 %214, i64* %RSI, !mcsema_real_eip !40
  %215 = load i64, i64* %RDI_val, !mcsema_real_eip !40
  store i64 %215, i64* %RDI, !mcsema_real_eip !40
  %_load_rsp_ptr_66 = load i8*, i8** %_RSP_ptr_
  %216 = load i64, i64* %RSP_val, !mcsema_real_eip !40
  %_new_ptr2int_67 = ptrtoint i8* %_load_rsp_ptr_66 to i64
  store volatile i64 %_new_ptr2int_67, i64* %RSP
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  %217 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_ptr2int_69 = ptrtoint i8* %_load_rbp_ptr_68 to i64
  store volatile i64 %_new_ptr2int_69, i64* %RBP
  %218 = load i64, i64* %R8_val, !mcsema_real_eip !40
  store i64 %218, i64* %R8, !mcsema_real_eip !40
  %219 = load i64, i64* %R9_val, !mcsema_real_eip !40
  store i64 %219, i64* %R9, !mcsema_real_eip !40
  %220 = load i64, i64* %R10_val, !mcsema_real_eip !40
  store i64 %220, i64* %R10, !mcsema_real_eip !40
  %221 = load i64, i64* %R11_val, !mcsema_real_eip !40
  store i64 %221, i64* %R11, !mcsema_real_eip !40
  %222 = load i64, i64* %R12_val, !mcsema_real_eip !40
  store i64 %222, i64* %R12, !mcsema_real_eip !40
  %223 = load i64, i64* %R13_val, !mcsema_real_eip !40
  store i64 %223, i64* %R13, !mcsema_real_eip !40
  %224 = load i64, i64* %R14_val, !mcsema_real_eip !40
  store i64 %224, i64* %R14, !mcsema_real_eip !40
  %225 = load i64, i64* %R15_val, !mcsema_real_eip !40
  store i64 %225, i64* %R15, !mcsema_real_eip !40
  %226 = load i64, i64* %RIP_val, !mcsema_real_eip !40
  store i64 %226, i64* %RIP, !mcsema_real_eip !40
  %227 = load i1, i1* %CF_val, !mcsema_real_eip !40
  store i1 %227, i1* %CF, align 1, !mcsema_real_eip !40
  %228 = load i1, i1* %PF_val, !mcsema_real_eip !40
  store i1 %228, i1* %PF, align 1, !mcsema_real_eip !40
  %229 = load i1, i1* %AF_val, !mcsema_real_eip !40
  store i1 %229, i1* %AF, align 1, !mcsema_real_eip !40
  %230 = load i1, i1* %ZF_val, !mcsema_real_eip !40
  store i1 %230, i1* %ZF, align 1, !mcsema_real_eip !40
  %231 = load i1, i1* %SF_val, !mcsema_real_eip !40
  store i1 %231, i1* %SF, align 1, !mcsema_real_eip !40
  %232 = load i1, i1* %OF_val, !mcsema_real_eip !40
  store i1 %232, i1* %OF, align 1, !mcsema_real_eip !40
  %233 = load i1, i1* %DF_val, !mcsema_real_eip !40
  store i1 %233, i1* %DF, align 1, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !40
  %234 = load i1, i1* %FPU_B_val, !mcsema_real_eip !40
  store i1 %234, i1* %FPU_B, align 1, !mcsema_real_eip !40
  %235 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !40
  store i1 %235, i1* %FPU_C3, align 1, !mcsema_real_eip !40
  %236 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !40
  store i3 %236, i3* %FPU_TOP, align 1, !mcsema_real_eip !40
  %237 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !40
  store i1 %237, i1* %FPU_C2, align 1, !mcsema_real_eip !40
  %238 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !40
  store i1 %238, i1* %FPU_C1, align 1, !mcsema_real_eip !40
  %239 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !40
  store i1 %239, i1* %FPU_C0, align 1, !mcsema_real_eip !40
  %240 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !40
  store i1 %240, i1* %FPU_ES, align 1, !mcsema_real_eip !40
  %241 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !40
  store i1 %241, i1* %FPU_SF, align 1, !mcsema_real_eip !40
  %242 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !40
  store i1 %242, i1* %FPU_PE, align 1, !mcsema_real_eip !40
  %243 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !40
  store i1 %243, i1* %FPU_UE, align 1, !mcsema_real_eip !40
  %244 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !40
  store i1 %244, i1* %FPU_OE, align 1, !mcsema_real_eip !40
  %245 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !40
  store i1 %245, i1* %FPU_ZE, align 1, !mcsema_real_eip !40
  %246 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !40
  store i1 %246, i1* %FPU_DE, align 1, !mcsema_real_eip !40
  %247 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !40
  store i1 %247, i1* %FPU_IE, align 1, !mcsema_real_eip !40
  %248 = load i1, i1* %FPU_X_val, !mcsema_real_eip !40
  store i1 %248, i1* %FPU_X, align 1, !mcsema_real_eip !40
  %249 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !40
  store i2 %249, i2* %FPU_RC, align 1, !mcsema_real_eip !40
  %250 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !40
  store i2 %250, i2* %FPU_PC, align 1, !mcsema_real_eip !40
  %251 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !40
  store i1 %251, i1* %FPU_PM, align 1, !mcsema_real_eip !40
  %252 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !40
  store i1 %252, i1* %FPU_UM, align 1, !mcsema_real_eip !40
  %253 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !40
  store i1 %253, i1* %FPU_OM, align 1, !mcsema_real_eip !40
  %254 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !40
  store i1 %254, i1* %FPU_ZM, align 1, !mcsema_real_eip !40
  %255 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !40
  store i1 %255, i1* %FPU_DM, align 1, !mcsema_real_eip !40
  %256 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !40
  store i1 %256, i1* %FPU_IM, align 1, !mcsema_real_eip !40
  %257 = load i64, i64* %53, align 4
  store i64 %257, i64* %52, align 4
  %258 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !40
  store i16 %258, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !40
  %259 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !40
  store i64 %259, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !40
  %260 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !40
  store i16 %260, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !40
  %261 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !40
  store i64 %261, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !40
  %262 = load i128, i128* %XMM0_val, !mcsema_real_eip !40
  store i128 %262, i128* %XMM0, align 1, !mcsema_real_eip !40
  %263 = load i128, i128* %XMM1_val, !mcsema_real_eip !40
  store i128 %263, i128* %XMM1, align 1, !mcsema_real_eip !40
  %264 = load i128, i128* %XMM2_val, !mcsema_real_eip !40
  store i128 %264, i128* %XMM2, align 1, !mcsema_real_eip !40
  %265 = load i128, i128* %XMM3_val, !mcsema_real_eip !40
  store i128 %265, i128* %XMM3, align 1, !mcsema_real_eip !40
  %266 = load i128, i128* %XMM4_val, !mcsema_real_eip !40
  store i128 %266, i128* %XMM4, align 1, !mcsema_real_eip !40
  %267 = load i128, i128* %XMM5_val, !mcsema_real_eip !40
  store i128 %267, i128* %XMM5, align 1, !mcsema_real_eip !40
  %268 = load i128, i128* %XMM6_val, !mcsema_real_eip !40
  store i128 %268, i128* %XMM6, align 1, !mcsema_real_eip !40
  %269 = load i128, i128* %XMM7_val, !mcsema_real_eip !40
  store i128 %269, i128* %XMM7, align 1, !mcsema_real_eip !40
  %270 = load i128, i128* %XMM8_val, !mcsema_real_eip !40
  store i128 %270, i128* %XMM8, align 1, !mcsema_real_eip !40
  %271 = load i128, i128* %XMM9_val, !mcsema_real_eip !40
  store i128 %271, i128* %XMM9, align 1, !mcsema_real_eip !40
  %272 = load i128, i128* %XMM10_val, !mcsema_real_eip !40
  store i128 %272, i128* %XMM10, align 1, !mcsema_real_eip !40
  %273 = load i128, i128* %XMM11_val, !mcsema_real_eip !40
  store i128 %273, i128* %XMM11, align 1, !mcsema_real_eip !40
  %274 = load i128, i128* %XMM12_val, !mcsema_real_eip !40
  store i128 %274, i128* %XMM12, align 1, !mcsema_real_eip !40
  %275 = load i128, i128* %XMM13_val, !mcsema_real_eip !40
  store i128 %275, i128* %XMM13, align 1, !mcsema_real_eip !40
  %276 = load i128, i128* %XMM14_val, !mcsema_real_eip !40
  store i128 %276, i128* %XMM14, align 1, !mcsema_real_eip !40
  %277 = load i128, i128* %XMM15_val, !mcsema_real_eip !40
  store i128 %277, i128* %XMM15, align 1, !mcsema_real_eip !40
  %278 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !40
  store i64 %278, i64* %STACK_BASE, align 1, !mcsema_real_eip !40
  %279 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !40
  store i64 %279, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !40
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_104)
  %280 = load i64, i64* %RAX, !mcsema_real_eip !40
  store i64 %280, i64* %RAX_val, !mcsema_real_eip !40
  %281 = load i64, i64* %RBX, !mcsema_real_eip !40
  store i64 %281, i64* %RBX_val, !mcsema_real_eip !40
  %282 = load i64, i64* %RCX, !mcsema_real_eip !40
  store i64 %282, i64* %RCX_val, !mcsema_real_eip !40
  %283 = load i64, i64* %RDX, !mcsema_real_eip !40
  store i64 %283, i64* %RDX_val, !mcsema_real_eip !40
  %284 = load i64, i64* %RSI, !mcsema_real_eip !40
  store i64 %284, i64* %RSI_val, !mcsema_real_eip !40
  %285 = load i64, i64* %RDI, !mcsema_real_eip !40
  store i64 %285, i64* %RDI_val, !mcsema_real_eip !40
  %286 = load i64, i64* %RSP, !mcsema_real_eip !40
  store i64 %286, i64* %RSP_val, !mcsema_real_eip !40
  %287 = load i64, i64* %RBP, !mcsema_real_eip !40
  store i64 %287, i64* %RBP_val, !mcsema_real_eip !40
  %288 = load i64, i64* %R8, !mcsema_real_eip !40
  store i64 %288, i64* %R8_val, !mcsema_real_eip !40
  %289 = load i64, i64* %R9, !mcsema_real_eip !40
  store i64 %289, i64* %R9_val, !mcsema_real_eip !40
  %290 = load i64, i64* %R10, !mcsema_real_eip !40
  store i64 %290, i64* %R10_val, !mcsema_real_eip !40
  %291 = load i64, i64* %R11, !mcsema_real_eip !40
  store i64 %291, i64* %R11_val, !mcsema_real_eip !40
  %292 = load i64, i64* %R12, !mcsema_real_eip !40
  store i64 %292, i64* %R12_val, !mcsema_real_eip !40
  %293 = load i64, i64* %R13, !mcsema_real_eip !40
  store i64 %293, i64* %R13_val, !mcsema_real_eip !40
  %294 = load i64, i64* %R14, !mcsema_real_eip !40
  store i64 %294, i64* %R14_val, !mcsema_real_eip !40
  %295 = load i64, i64* %R15, !mcsema_real_eip !40
  store i64 %295, i64* %R15_val, !mcsema_real_eip !40
  %296 = load i64, i64* %RIP, !mcsema_real_eip !40
  store i64 %296, i64* %RIP_val, !mcsema_real_eip !40
  %297 = load i1, i1* %CF, align 1, !mcsema_real_eip !40
  store i1 %297, i1* %CF_val, !mcsema_real_eip !40
  %298 = load i1, i1* %PF, align 1, !mcsema_real_eip !40
  store i1 %298, i1* %PF_val, !mcsema_real_eip !40
  %299 = load i1, i1* %AF, align 1, !mcsema_real_eip !40
  store i1 %299, i1* %AF_val, !mcsema_real_eip !40
  %300 = load i1, i1* %ZF, align 1, !mcsema_real_eip !40
  store i1 %300, i1* %ZF_val, !mcsema_real_eip !40
  %301 = load i1, i1* %SF, align 1, !mcsema_real_eip !40
  store i1 %301, i1* %SF_val, !mcsema_real_eip !40
  %302 = load i1, i1* %OF, align 1, !mcsema_real_eip !40
  store i1 %302, i1* %OF_val, !mcsema_real_eip !40
  %303 = load i1, i1* %DF, align 1, !mcsema_real_eip !40
  store i1 %303, i1* %DF_val, !mcsema_real_eip !40
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !40
  %304 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !40
  store i1 %304, i1* %FPU_B_val, !mcsema_real_eip !40
  %305 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !40
  store i1 %305, i1* %FPU_C3_val, !mcsema_real_eip !40
  %306 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !40
  store i3 %306, i3* %FPU_TOP_val, !mcsema_real_eip !40
  %307 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !40
  store i1 %307, i1* %FPU_C2_val, !mcsema_real_eip !40
  %308 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !40
  store i1 %308, i1* %FPU_C1_val, !mcsema_real_eip !40
  %309 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !40
  store i1 %309, i1* %FPU_C0_val, !mcsema_real_eip !40
  %310 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !40
  store i1 %310, i1* %FPU_ES_val, !mcsema_real_eip !40
  %311 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !40
  store i1 %311, i1* %FPU_SF_val, !mcsema_real_eip !40
  %312 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !40
  store i1 %312, i1* %FPU_PE_val, !mcsema_real_eip !40
  %313 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !40
  store i1 %313, i1* %FPU_UE_val, !mcsema_real_eip !40
  %314 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !40
  store i1 %314, i1* %FPU_OE_val, !mcsema_real_eip !40
  %315 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !40
  store i1 %315, i1* %FPU_ZE_val, !mcsema_real_eip !40
  %316 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !40
  store i1 %316, i1* %FPU_DE_val, !mcsema_real_eip !40
  %317 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !40
  store i1 %317, i1* %FPU_IE_val, !mcsema_real_eip !40
  %318 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !40
  store i1 %318, i1* %FPU_X_val, !mcsema_real_eip !40
  %319 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !40
  store i2 %319, i2* %FPU_RC_val, !mcsema_real_eip !40
  %320 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !40
  store i2 %320, i2* %FPU_PC_val, !mcsema_real_eip !40
  %321 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !40
  store i1 %321, i1* %FPU_PM_val, !mcsema_real_eip !40
  %322 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !40
  store i1 %322, i1* %FPU_UM_val, !mcsema_real_eip !40
  %323 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !40
  store i1 %323, i1* %FPU_OM_val, !mcsema_real_eip !40
  %324 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !40
  store i1 %324, i1* %FPU_ZM_val, !mcsema_real_eip !40
  %325 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !40
  store i1 %325, i1* %FPU_DM_val, !mcsema_real_eip !40
  %326 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !40
  store i1 %326, i1* %FPU_IM_val, !mcsema_real_eip !40
  %327 = load i64, i64* %52, align 4
  store i64 %327, i64* %53, align 4
  %328 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !40
  store i16 %328, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !40
  %329 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !40
  store i64 %329, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !40
  %330 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !40
  store i16 %330, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !40
  %331 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !40
  store i64 %331, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !40
  %332 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !40
  store i128 %332, i128* %XMM0_val, !mcsema_real_eip !40
  %333 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !40
  store i128 %333, i128* %XMM1_val, !mcsema_real_eip !40
  %334 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !40
  store i128 %334, i128* %XMM2_val, !mcsema_real_eip !40
  %335 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !40
  store i128 %335, i128* %XMM3_val, !mcsema_real_eip !40
  %336 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !40
  store i128 %336, i128* %XMM4_val, !mcsema_real_eip !40
  %337 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !40
  store i128 %337, i128* %XMM5_val, !mcsema_real_eip !40
  %338 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !40
  store i128 %338, i128* %XMM6_val, !mcsema_real_eip !40
  %339 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !40
  store i128 %339, i128* %XMM7_val, !mcsema_real_eip !40
  %340 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !40
  store i128 %340, i128* %XMM8_val, !mcsema_real_eip !40
  %341 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !40
  store i128 %341, i128* %XMM9_val, !mcsema_real_eip !40
  %342 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !40
  store i128 %342, i128* %XMM10_val, !mcsema_real_eip !40
  %343 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !40
  store i128 %343, i128* %XMM11_val, !mcsema_real_eip !40
  %344 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !40
  store i128 %344, i128* %XMM12_val, !mcsema_real_eip !40
  %345 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !40
  store i128 %345, i128* %XMM13_val, !mcsema_real_eip !40
  %346 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !40
  store i128 %346, i128* %XMM14_val, !mcsema_real_eip !40
  %347 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !40
  store i128 %347, i128* %XMM15_val, !mcsema_real_eip !40
  %348 = load i64, i64* %STACK_BASE, !mcsema_real_eip !40
  store i64 %348, i64* %STACK_BASE_val, !mcsema_real_eip !40
  %349 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !40
  store i64 %349, i64* %STACK_LIMIT_val, !mcsema_real_eip !40
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %350 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -64
  %351 = add i64 %350, -64, !mcsema_real_eip !41
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !41
  %353 = load i64, i64* %RDX_val, !mcsema_real_eip !41
  %354 = trunc i64 %353 to i32, !mcsema_real_eip !41
  %355 = bitcast i64* %_allin_new_bt_72 to i32*
  store i32 %354, i32* %355, !mcsema_real_eip !41
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -72
  %357 = add i64 %356, -72, !mcsema_real_eip !42
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !42
  %359 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  store i64 %359, i64* %_allin_new_bt_75, !mcsema_real_eip !42
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %360 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -72
  %361 = add i64 %360, -72, !mcsema_real_eip !43
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !43
  %363 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !43
  store i64 %363, i64* %RAX_val, !mcsema_real_eip !43
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -40
  %364 = add i64 %360, -40, !mcsema_real_eip !44
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !44
  store i64 %363, i64* %_allin_new_bt_80, !mcsema_real_eip !44
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %366 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -64
  %367 = add i64 %366, -64, !mcsema_real_eip !45
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !45
  %369 = bitcast i64* %_allin_new_bt_83 to i32*
  %370 = load i32, i32* %369, !mcsema_real_eip !45
  %371 = zext i32 %370 to i64, !mcsema_real_eip !45
  store i64 %371, i64* %RDX_val, !mcsema_real_eip !45
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -32
  %373 = add i64 %372, -32, !mcsema_real_eip !46
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !46
  %375 = bitcast i64* %_allin_new_bt_86 to i32*
  store i32 %370, i32* %375, !mcsema_real_eip !46
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -40
  %377 = add i64 %376, -40, !mcsema_real_eip !47
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !47
  %379 = bitcast i64* %_allin_new_bt_89 to i32*
  %380 = load i32, i32* %379, !mcsema_real_eip !47
  %381 = zext i32 %380 to i64, !mcsema_real_eip !47
  store i64 %381, i64* %RDX_val, !mcsema_real_eip !47
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %382 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -36
  %383 = add i64 %382, -36, !mcsema_real_eip !48
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !48
  %385 = bitcast i64* %_allin_new_bt_92 to i32*
  %386 = load i32, i32* %385, !mcsema_real_eip !48
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %386)
  %387 = extractvalue { i32, i1 } %uadd, 0
  %388 = xor i32 %387, %386, !mcsema_real_eip !48
  %389 = xor i32 %388, %380, !mcsema_real_eip !48
  %390 = and i32 %389, 16, !mcsema_real_eip !48
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !48
  store i1 %391, i1* %AF_val, !mcsema_real_eip !48
  %392 = icmp slt i32 %387, 0
  store i1 %392, i1* %SF_val, !mcsema_real_eip !48
  %393 = icmp eq i32 %387, 0, !mcsema_real_eip !48
  store i1 %393, i1* %ZF_val, !mcsema_real_eip !48
  %394 = xor i32 %380, -2147483648, !mcsema_real_eip !48
  %395 = xor i32 %394, %386, !mcsema_real_eip !48
  %396 = and i32 %388, %395, !mcsema_real_eip !48
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF_val, !mcsema_real_eip !48
  %398 = trunc i32 %387 to i8, !mcsema_real_eip !48
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !48
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF_val, !mcsema_real_eip !48
  %402 = extractvalue { i32, i1 } %uadd, 1
  store i1 %402, i1* %CF_val, !mcsema_real_eip !48
  %403 = zext i32 %387 to i64, !mcsema_real_eip !48
  store i64 %403, i64* %RDX_val, !mcsema_real_eip !48
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %404 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -32
  %405 = add i64 %404, -32, !mcsema_real_eip !49
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !49
  %407 = bitcast i64* %_allin_new_bt_95 to i32*
  %408 = load i32, i32* %407, !mcsema_real_eip !49
  %409 = add i32 %387, %408
  %410 = zext i32 %409 to i64, !mcsema_real_eip !49
  store i64 %410, i64* %RDX_val, !mcsema_real_eip !49
  store i64 %410, i64* %RAX_val, !mcsema_real_eip !50
  %_load_rsp_ptr_96 = load i8*, i8** %_RSP_ptr_
  %411 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %_new_ptr2int_97 = ptrtoint i8* %_load_rsp_ptr_96 to i64
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_97, i64 128)
  %412 = extractvalue { i64, i1 } %uadd210, 0
  %413 = xor i64 %412, %_new_ptr2int_97, !mcsema_real_eip !51
  %414 = and i64 %413, 16, !mcsema_real_eip !51
  %415 = icmp ne i64 %414, 0, !mcsema_real_eip !51
  store i1 %415, i1* %AF_val, !mcsema_real_eip !51
  %416 = icmp slt i64 %412, 0
  store i1 %416, i1* %SF_val, !mcsema_real_eip !51
  %417 = icmp eq i64 %412, 0, !mcsema_real_eip !51
  store i1 %417, i1* %ZF_val, !mcsema_real_eip !51
  %418 = xor i64 %_new_ptr2int_97, -9223372036854775808, !mcsema_real_eip !51
  %419 = and i64 %413, %418, !mcsema_real_eip !51
  %420 = icmp slt i64 %419, 0
  store i1 %420, i1* %OF_val, !mcsema_real_eip !51
  %421 = trunc i64 %412 to i8, !mcsema_real_eip !51
  %422 = tail call i8 @llvm.ctpop.i8(i8 %421), !mcsema_real_eip !51
  %423 = and i8 %422, 1
  %424 = icmp eq i8 %423, 0
  store i1 %424, i1* %PF_val, !mcsema_real_eip !51
  %425 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %425, i1* %CF_val, !mcsema_real_eip !51
  %_new_int2ptr_ = inttoptr i64 %412 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %412, i64* %RSP_val, !mcsema_real_eip !51
  %426 = inttoptr i64 %412 to i64*, !mcsema_real_eip !52
  %427 = load i64, i64* %426, !mcsema_real_eip !52
  %_new_int2ptr_98 = inttoptr i64 %427 to i8*
  store volatile i8* %_new_int2ptr_98, i8** %_RBP_ptr_
  store i64 %427, i64* %RBP_val, !mcsema_real_eip !52
  %428 = add i64 %412, 16, !mcsema_real_eip !53
  %_new_int2ptr_99 = inttoptr i64 %428 to i8*
  store volatile i8* %_new_int2ptr_99, i8** %_RSP_ptr_
  store i64 %428, i64* %RSP_val, !mcsema_real_eip !53
  %429 = load i64, i64* %RAX_val, !mcsema_real_eip !53
  store i64 %429, i64* %RAX, !mcsema_real_eip !53
  %430 = load i64, i64* %RBX_val, !mcsema_real_eip !53
  store i64 %430, i64* %RBX, !mcsema_real_eip !53
  %431 = load i64, i64* %RCX_val, !mcsema_real_eip !53
  store i64 %431, i64* %RCX, !mcsema_real_eip !53
  %432 = load i64, i64* %RDX_val, !mcsema_real_eip !53
  store i64 %432, i64* %RDX, !mcsema_real_eip !53
  %433 = load i64, i64* %RSI_val, !mcsema_real_eip !53
  store i64 %433, i64* %RSI, !mcsema_real_eip !53
  %434 = load i64, i64* %RDI_val, !mcsema_real_eip !53
  store i64 %434, i64* %RDI, !mcsema_real_eip !53
  %_load_rsp_ptr_100 = load i8*, i8** %_RSP_ptr_
  %435 = load i64, i64* %RSP_val, !mcsema_real_eip !53
  %_new_ptr2int_101 = ptrtoint i8* %_load_rsp_ptr_100 to i64
  store volatile i64 %_new_ptr2int_101, i64* %RSP
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %436 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_ptr2int_103 = ptrtoint i8* %_load_rbp_ptr_102 to i64
  store volatile i64 %_new_ptr2int_103, i64* %RBP
  %437 = load i64, i64* %R8_val, !mcsema_real_eip !53
  store i64 %437, i64* %R8, !mcsema_real_eip !53
  %438 = load i64, i64* %R9_val, !mcsema_real_eip !53
  store i64 %438, i64* %R9, !mcsema_real_eip !53
  %439 = load i64, i64* %R10_val, !mcsema_real_eip !53
  store i64 %439, i64* %R10, !mcsema_real_eip !53
  %440 = load i64, i64* %R11_val, !mcsema_real_eip !53
  store i64 %440, i64* %R11, !mcsema_real_eip !53
  %441 = load i64, i64* %R12_val, !mcsema_real_eip !53
  store i64 %441, i64* %R12, !mcsema_real_eip !53
  %442 = load i64, i64* %R13_val, !mcsema_real_eip !53
  store i64 %442, i64* %R13, !mcsema_real_eip !53
  %443 = load i64, i64* %R14_val, !mcsema_real_eip !53
  store i64 %443, i64* %R14, !mcsema_real_eip !53
  %444 = load i64, i64* %R15_val, !mcsema_real_eip !53
  store i64 %444, i64* %R15, !mcsema_real_eip !53
  %445 = load i64, i64* %RIP_val, !mcsema_real_eip !53
  store i64 %445, i64* %RIP, !mcsema_real_eip !53
  %446 = load i1, i1* %CF_val, !mcsema_real_eip !53
  store i1 %446, i1* %CF, align 1, !mcsema_real_eip !53
  %447 = load i1, i1* %PF_val, !mcsema_real_eip !53
  store i1 %447, i1* %PF, align 1, !mcsema_real_eip !53
  %448 = load i1, i1* %AF_val, !mcsema_real_eip !53
  store i1 %448, i1* %AF, align 1, !mcsema_real_eip !53
  %449 = load i1, i1* %ZF_val, !mcsema_real_eip !53
  store i1 %449, i1* %ZF, align 1, !mcsema_real_eip !53
  %450 = load i1, i1* %SF_val, !mcsema_real_eip !53
  store i1 %450, i1* %SF, align 1, !mcsema_real_eip !53
  %451 = load i1, i1* %OF_val, !mcsema_real_eip !53
  store i1 %451, i1* %OF, align 1, !mcsema_real_eip !53
  %452 = load i1, i1* %DF_val, !mcsema_real_eip !53
  store i1 %452, i1* %DF, align 1, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !53
  %453 = load i1, i1* %FPU_B_val, !mcsema_real_eip !53
  store i1 %453, i1* %FPU_B, align 1, !mcsema_real_eip !53
  %454 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !53
  store i1 %454, i1* %FPU_C3, align 1, !mcsema_real_eip !53
  %455 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !53
  store i3 %455, i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  %456 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !53
  store i1 %456, i1* %FPU_C2, align 1, !mcsema_real_eip !53
  %457 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !53
  store i1 %457, i1* %FPU_C1, align 1, !mcsema_real_eip !53
  %458 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !53
  store i1 %458, i1* %FPU_C0, align 1, !mcsema_real_eip !53
  %459 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !53
  store i1 %459, i1* %FPU_ES, align 1, !mcsema_real_eip !53
  %460 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !53
  store i1 %460, i1* %FPU_SF, align 1, !mcsema_real_eip !53
  %461 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !53
  store i1 %461, i1* %FPU_PE, align 1, !mcsema_real_eip !53
  %462 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !53
  store i1 %462, i1* %FPU_UE, align 1, !mcsema_real_eip !53
  %463 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !53
  store i1 %463, i1* %FPU_OE, align 1, !mcsema_real_eip !53
  %464 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !53
  store i1 %464, i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  %465 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !53
  store i1 %465, i1* %FPU_DE, align 1, !mcsema_real_eip !53
  %466 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !53
  store i1 %466, i1* %FPU_IE, align 1, !mcsema_real_eip !53
  %467 = load i1, i1* %FPU_X_val, !mcsema_real_eip !53
  store i1 %467, i1* %FPU_X, align 1, !mcsema_real_eip !53
  %468 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !53
  store i2 %468, i2* %FPU_RC, align 1, !mcsema_real_eip !53
  %469 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !53
  store i2 %469, i2* %FPU_PC, align 1, !mcsema_real_eip !53
  %470 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !53
  store i1 %470, i1* %FPU_PM, align 1, !mcsema_real_eip !53
  %471 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !53
  store i1 %471, i1* %FPU_UM, align 1, !mcsema_real_eip !53
  %472 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !53
  store i1 %472, i1* %FPU_OM, align 1, !mcsema_real_eip !53
  %473 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !53
  store i1 %473, i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  %474 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !53
  store i1 %474, i1* %FPU_DM, align 1, !mcsema_real_eip !53
  %475 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !53
  store i1 %475, i1* %FPU_IM, align 1, !mcsema_real_eip !53
  %476 = load i64, i64* %53, align 4
  store i64 %476, i64* %52, align 4
  %477 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  store i16 %477, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  %478 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  store i64 %478, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !53
  %479 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  store i16 %479, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  %480 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  store i64 %480, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !53
  %481 = load i128, i128* %XMM0_val, !mcsema_real_eip !53
  store i128 %481, i128* %XMM0, align 1, !mcsema_real_eip !53
  %482 = load i128, i128* %XMM1_val, !mcsema_real_eip !53
  store i128 %482, i128* %XMM1, align 1, !mcsema_real_eip !53
  %483 = load i128, i128* %XMM2_val, !mcsema_real_eip !53
  store i128 %483, i128* %XMM2, align 1, !mcsema_real_eip !53
  %484 = load i128, i128* %XMM3_val, !mcsema_real_eip !53
  store i128 %484, i128* %XMM3, align 1, !mcsema_real_eip !53
  %485 = load i128, i128* %XMM4_val, !mcsema_real_eip !53
  store i128 %485, i128* %XMM4, align 1, !mcsema_real_eip !53
  %486 = load i128, i128* %XMM5_val, !mcsema_real_eip !53
  store i128 %486, i128* %XMM5, align 1, !mcsema_real_eip !53
  %487 = load i128, i128* %XMM6_val, !mcsema_real_eip !53
  store i128 %487, i128* %XMM6, align 1, !mcsema_real_eip !53
  %488 = load i128, i128* %XMM7_val, !mcsema_real_eip !53
  store i128 %488, i128* %XMM7, align 1, !mcsema_real_eip !53
  %489 = load i128, i128* %XMM8_val, !mcsema_real_eip !53
  store i128 %489, i128* %XMM8, align 1, !mcsema_real_eip !53
  %490 = load i128, i128* %XMM9_val, !mcsema_real_eip !53
  store i128 %490, i128* %XMM9, align 1, !mcsema_real_eip !53
  %491 = load i128, i128* %XMM10_val, !mcsema_real_eip !53
  store i128 %491, i128* %XMM10, align 1, !mcsema_real_eip !53
  %492 = load i128, i128* %XMM11_val, !mcsema_real_eip !53
  store i128 %492, i128* %XMM11, align 1, !mcsema_real_eip !53
  %493 = load i128, i128* %XMM12_val, !mcsema_real_eip !53
  store i128 %493, i128* %XMM12, align 1, !mcsema_real_eip !53
  %494 = load i128, i128* %XMM13_val, !mcsema_real_eip !53
  store i128 %494, i128* %XMM13, align 1, !mcsema_real_eip !53
  %495 = load i128, i128* %XMM14_val, !mcsema_real_eip !53
  store i128 %495, i128* %XMM14, align 1, !mcsema_real_eip !53
  %496 = load i128, i128* %XMM15_val, !mcsema_real_eip !53
  store i128 %496, i128* %XMM15, align 1, !mcsema_real_eip !53
  %497 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !53
  store i64 %497, i64* %STACK_BASE, align 1, !mcsema_real_eip !53
  %498 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  store i64 %498, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !54
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !54
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !54
  %XMM15_val = alloca i128, !mcsema_real_eip !54
  %XMM14_val = alloca i128, !mcsema_real_eip !54
  %XMM13_val = alloca i128, !mcsema_real_eip !54
  %XMM12_val = alloca i128, !mcsema_real_eip !54
  %XMM11_val = alloca i128, !mcsema_real_eip !54
  %XMM10_val = alloca i128, !mcsema_real_eip !54
  %XMM9_val = alloca i128, !mcsema_real_eip !54
  %XMM8_val = alloca i128, !mcsema_real_eip !54
  %XMM7_val = alloca i128, !mcsema_real_eip !54
  %XMM6_val = alloca i128, !mcsema_real_eip !54
  %XMM5_val = alloca i128, !mcsema_real_eip !54
  %XMM4_val = alloca i128, !mcsema_real_eip !54
  %XMM3_val = alloca i128, !mcsema_real_eip !54
  %XMM2_val = alloca i128, !mcsema_real_eip !54
  %XMM1_val = alloca i128, !mcsema_real_eip !54
  %XMM0_val = alloca i128, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !54
  %FPU_IM_val = alloca i1, !mcsema_real_eip !54
  %FPU_DM_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !54
  %FPU_OM_val = alloca i1, !mcsema_real_eip !54
  %FPU_UM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PC_val = alloca i2, !mcsema_real_eip !54
  %FPU_RC_val = alloca i2, !mcsema_real_eip !54
  %FPU_X_val = alloca i1, !mcsema_real_eip !54
  %FPU_IE_val = alloca i1, !mcsema_real_eip !54
  %FPU_DE_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !54
  %FPU_OE_val = alloca i1, !mcsema_real_eip !54
  %FPU_UE_val = alloca i1, !mcsema_real_eip !54
  %FPU_PE_val = alloca i1, !mcsema_real_eip !54
  %FPU_SF_val = alloca i1, !mcsema_real_eip !54
  %FPU_ES_val = alloca i1, !mcsema_real_eip !54
  %FPU_C0_val = alloca i1, !mcsema_real_eip !54
  %FPU_C1_val = alloca i1, !mcsema_real_eip !54
  %FPU_C2_val = alloca i1, !mcsema_real_eip !54
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !54
  %FPU_C3_val = alloca i1, !mcsema_real_eip !54
  %FPU_B_val = alloca i1, !mcsema_real_eip !54
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !54
  %DF_val = alloca i1, !mcsema_real_eip !54
  %OF_val = alloca i1, !mcsema_real_eip !54
  %SF_val = alloca i1, !mcsema_real_eip !54
  %CF_val = alloca i1, !mcsema_real_eip !54
  %AF_val = alloca i1, !mcsema_real_eip !54
  %PF_val = alloca i1, !mcsema_real_eip !54
  %ZF_val = alloca i1, !mcsema_real_eip !54
  %RIP_val = alloca i64, !mcsema_real_eip !54
  %R14_val = alloca i64, !mcsema_real_eip !54
  %R13_val = alloca i64, !mcsema_real_eip !54
  %R12_val = alloca i64, !mcsema_real_eip !54
  %R11_val = alloca i64, !mcsema_real_eip !54
  %R10_val = alloca i64, !mcsema_real_eip !54
  %R9_val = alloca i64, !mcsema_real_eip !54
  %R8_val = alloca i64, !mcsema_real_eip !54
  %RSP_val = alloca i64, !mcsema_real_eip !54
  %RBP_val = alloca i64, !mcsema_real_eip !54
  %RDI_val = alloca i64, !mcsema_real_eip !54
  %RSI_val = alloca i64, !mcsema_real_eip !54
  %RDX_val = alloca i64, !mcsema_real_eip !54
  %RCX_val = alloca i64, !mcsema_real_eip !54
  %RBX_val = alloca i64, !mcsema_real_eip !54
  %RAX_val = alloca i64, !mcsema_real_eip !54
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %1 = load i64, i64* %RAX, !mcsema_real_eip !54
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !54
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %2 = load i64, i64* %RBX, !mcsema_real_eip !54
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !54
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !54
  %3 = load i64, i64* %RCX, !mcsema_real_eip !54
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !54
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %4 = load i64, i64* %RDX, !mcsema_real_eip !54
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !54
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !54
  %5 = load i64, i64* %RSI, !mcsema_real_eip !54
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !54
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %6 = load i64, i64* %RDI, !mcsema_real_eip !54
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !54
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %7 = load i64, i64* %RSP, !mcsema_real_eip !54
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !54
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %8 = load i64, i64* %RBP, !mcsema_real_eip !54
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !54
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %9 = load i64, i64* %R8, !mcsema_real_eip !54
  store i64 %9, i64* %R8_val, !mcsema_real_eip !54
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !54
  %10 = load i64, i64* %R9, !mcsema_real_eip !54
  store i64 %10, i64* %R9_val, !mcsema_real_eip !54
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %11 = load i64, i64* %R10, !mcsema_real_eip !54
  store i64 %11, i64* %R10_val, !mcsema_real_eip !54
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !54
  %12 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %12, i64* %R11_val, !mcsema_real_eip !54
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %13 = load i64, i64* %R12, !mcsema_real_eip !54
  store i64 %13, i64* %R12_val, !mcsema_real_eip !54
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !54
  %14 = load i64, i64* %R13, !mcsema_real_eip !54
  store i64 %14, i64* %R13_val, !mcsema_real_eip !54
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %15 = load i64, i64* %R14, !mcsema_real_eip !54
  store i64 %15, i64* %R14_val, !mcsema_real_eip !54
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !54
  %16 = load i64, i64* %R15, !mcsema_real_eip !54
  store i64 %16, i64* %R15_val, !mcsema_real_eip !54
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %17 = load i64, i64* %RIP, !mcsema_real_eip !54
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !54
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !54
  store i1 %18, i1* %CF_val, !mcsema_real_eip !54
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !54
  store i1 %19, i1* %PF_val, !mcsema_real_eip !54
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !54
  store i1 %20, i1* %AF_val, !mcsema_real_eip !54
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !54
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !54
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !54
  store i1 %22, i1* %SF_val, !mcsema_real_eip !54
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !54
  store i1 %23, i1* %OF_val, !mcsema_real_eip !54
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !54
  store i1 %24, i1* %DF_val, !mcsema_real_eip !54
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !54
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !54
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !54
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !54
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !54
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !54
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !54
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !54
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !54
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !54
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !54
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !54
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !54
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !54
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !54
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !54
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !54
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !54
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !54
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !54
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !54
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !54
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !54
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !54
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !54
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !54
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !54
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !54
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !54
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !54
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !54
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !54
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !54
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !54
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !54
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !54
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !54
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !54
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !54
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !54
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !54
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !54
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !54
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !54
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !54
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !54
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !54
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !54
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !54
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !54
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !54
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !54
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !54
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !54
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !54
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !54
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !54
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !54
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !54
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !54
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !54
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !54
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !54
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !54
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !54
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !54
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !54
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !54
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !54
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !54
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !54
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !54
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !54
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !54
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !54
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !54
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !54
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !54
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !54
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !54
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !54
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !54
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !54
  store i64 %77, i64* %80, !mcsema_real_eip !54
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !55
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !56
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !56
  store i64 %81, i64* %83, !mcsema_real_eip !56
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !56
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %85 = add i64 %84, 48, !mcsema_real_eip !57
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !57
  %87 = load i64, i64* %86, !mcsema_real_eip !57
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !57
  %88 = add i64 %84, 40, !mcsema_real_eip !58
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !58
  %90 = load i64, i64* %89, !mcsema_real_eip !58
  store i64 %90, i64* %R10_val, !mcsema_real_eip !58
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %92 = add i64 %91, 24, !mcsema_real_eip !59
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !59
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !59
  store i64 %94, i64* %R11_val, !mcsema_real_eip !59
  %95 = add i64 %91, 16, !mcsema_real_eip !60
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !60
  %97 = bitcast i64* %96 to i32*
  %98 = load i32, i32* %97, !mcsema_real_eip !60
  %99 = zext i32 %98 to i64, !mcsema_real_eip !60
  store i64 %99, i64* %RBX_val, !mcsema_real_eip !60
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %101 = add i64 %100, -56, !mcsema_real_eip !61
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !61
  %103 = load i64, i64* %RDI_val, !mcsema_real_eip !61
  store i64 %103, i64* %102, !mcsema_real_eip !61
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %105 = add i64 %104, -48, !mcsema_real_eip !62
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !62
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !62
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !62
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %111 = add i64 %110, -48, !mcsema_real_eip !63
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !63
  %113 = bitcast i64* %112 to i32*
  %114 = load i32, i32* %113, !mcsema_real_eip !63
  %115 = zext i32 %114 to i64, !mcsema_real_eip !63
  store i64 %115, i64* %RSI_val, !mcsema_real_eip !63
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %117 = add i64 %116, -32, !mcsema_real_eip !64
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !64
  %119 = bitcast i64* %118 to i32*
  store i32 %114, i32* %119, !mcsema_real_eip !64
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %121 = add i64 %120, -56, !mcsema_real_eip !65
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !65
  %123 = load i64, i64* %122, !mcsema_real_eip !65
  store i64 %123, i64* %RDI_val, !mcsema_real_eip !65
  %124 = add i64 %120, -40, !mcsema_real_eip !66
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !66
  store i64 %123, i64* %125, !mcsema_real_eip !66
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %127 = add i64 %126, -64, !mcsema_real_eip !67
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !67
  %129 = load i64, i64* %RDX_val, !mcsema_real_eip !67
  store i64 %129, i64* %128, !mcsema_real_eip !67
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %131 = add i64 %130, -72, !mcsema_real_eip !68
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !68
  %133 = load i64, i64* %RCX_val, !mcsema_real_eip !68
  store i64 %133, i64* %132, !mcsema_real_eip !68
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %135 = add i64 %134, -76, !mcsema_real_eip !69
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !69
  %137 = load i64, i64* %R8_val, !mcsema_real_eip !69
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !69
  %139 = bitcast i64* %136 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !69
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %141 = add i64 %140, -80, !mcsema_real_eip !70
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !70
  %143 = load i64, i64* %R9_val, !mcsema_real_eip !70
  %144 = trunc i64 %143 to i32, !mcsema_real_eip !70
  %145 = bitcast i64* %142 to i32*
  store i32 %144, i32* %145, !mcsema_real_eip !70
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %147 = add i64 %146, -84, !mcsema_real_eip !71
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !71
  %149 = load i64, i64* %RBX_val, !mcsema_real_eip !71
  %150 = trunc i64 %149 to i32, !mcsema_real_eip !71
  %151 = bitcast i64* %148 to i32*
  store i32 %150, i32* %151, !mcsema_real_eip !71
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %153 = add i64 %152, -96, !mcsema_real_eip !72
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !72
  %155 = load i64, i64* %R10_val, !mcsema_real_eip !72
  store i64 %155, i64* %154, !mcsema_real_eip !72
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %157 = add i64 %156, -104, !mcsema_real_eip !73
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !73
  %159 = load i64, i64* %RAX_val, !mcsema_real_eip !73
  store i64 %159, i64* %158, !mcsema_real_eip !73
  %160 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %161 = add i64 %160, -40, !mcsema_real_eip !74
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !74
  %163 = bitcast i64* %162 to i32*
  %164 = load i32, i32* %163, !mcsema_real_eip !74
  %165 = zext i32 %164 to i64, !mcsema_real_eip !74
  store i64 %165, i64* %RSI_val, !mcsema_real_eip !74
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %167 = add i64 %166, -64, !mcsema_real_eip !75
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !75
  %169 = load i64, i64* %168, !mcsema_real_eip !75
  store i64 %169, i64* %RAX_val, !mcsema_real_eip !75
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !76
  %171 = bitcast i64* %170 to i32*
  %172 = load i32, i32* %171, !mcsema_real_eip !76
  %173 = zext i32 %172 to i64, !mcsema_real_eip !76
  store i64 %173, i64* %R8_val, !mcsema_real_eip !76
  %174 = load i64, i64* %RSI_val, !mcsema_real_eip !77
  %175 = trunc i64 %174 to i32, !mcsema_real_eip !77
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %172, i32 %175)
  %176 = extractvalue { i32, i1 } %uadd, 0
  %177 = xor i32 %176, %175, !mcsema_real_eip !77
  %178 = xor i32 %177, %172, !mcsema_real_eip !77
  %179 = and i32 %178, 16, !mcsema_real_eip !77
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !77
  store i1 %180, i1* %AF_val, !mcsema_real_eip !77
  %181 = icmp slt i32 %176, 0
  store i1 %181, i1* %SF_val, !mcsema_real_eip !77
  %182 = icmp eq i32 %176, 0, !mcsema_real_eip !77
  store i1 %182, i1* %ZF_val, !mcsema_real_eip !77
  %183 = xor i32 %172, -2147483648, !mcsema_real_eip !77
  %184 = xor i32 %183, %175, !mcsema_real_eip !77
  %185 = and i32 %177, %184, !mcsema_real_eip !77
  %186 = icmp slt i32 %185, 0
  store i1 %186, i1* %OF_val, !mcsema_real_eip !77
  %187 = trunc i32 %176 to i8, !mcsema_real_eip !77
  %188 = tail call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !77
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  store i1 %190, i1* %PF_val, !mcsema_real_eip !77
  %191 = extractvalue { i32, i1 } %uadd, 1
  store i1 %191, i1* %CF_val, !mcsema_real_eip !77
  %192 = zext i32 %176 to i64, !mcsema_real_eip !77
  store i64 %192, i64* %RSI_val, !mcsema_real_eip !77
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %194 = add i64 %193, -72, !mcsema_real_eip !78
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !78
  %196 = load i64, i64* %195, !mcsema_real_eip !78
  store i64 %196, i64* %RAX_val, !mcsema_real_eip !78
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !79
  %198 = bitcast i64* %197 to i32*
  %199 = load i32, i32* %198, !mcsema_real_eip !79
  %200 = zext i32 %199 to i64, !mcsema_real_eip !79
  store i64 %200, i64* %R8_val, !mcsema_real_eip !79
  %201 = load i64, i64* %RSI_val, !mcsema_real_eip !80
  %202 = trunc i64 %201 to i32, !mcsema_real_eip !80
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %199, i32 %202)
  %203 = extractvalue { i32, i1 } %uadd70, 0
  %204 = xor i32 %203, %202, !mcsema_real_eip !80
  %205 = xor i32 %204, %199, !mcsema_real_eip !80
  %206 = and i32 %205, 16, !mcsema_real_eip !80
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !80
  store i1 %207, i1* %AF_val, !mcsema_real_eip !80
  %208 = icmp slt i32 %203, 0
  store i1 %208, i1* %SF_val, !mcsema_real_eip !80
  %209 = icmp eq i32 %203, 0, !mcsema_real_eip !80
  store i1 %209, i1* %ZF_val, !mcsema_real_eip !80
  %210 = xor i32 %199, -2147483648, !mcsema_real_eip !80
  %211 = xor i32 %210, %202, !mcsema_real_eip !80
  %212 = and i32 %204, %211, !mcsema_real_eip !80
  %213 = icmp slt i32 %212, 0
  store i1 %213, i1* %OF_val, !mcsema_real_eip !80
  %214 = trunc i32 %203 to i8, !mcsema_real_eip !80
  %215 = tail call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !80
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  store i1 %217, i1* %PF_val, !mcsema_real_eip !80
  %218 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %218, i1* %CF_val, !mcsema_real_eip !80
  %219 = zext i32 %203 to i64, !mcsema_real_eip !80
  store i64 %219, i64* %RSI_val, !mcsema_real_eip !80
  %220 = load i64, i64* %R11_val, !mcsema_real_eip !81
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !81
  %222 = bitcast i64* %221 to i32*
  %223 = load i32, i32* %222, !mcsema_real_eip !81
  %224 = zext i32 %223 to i64, !mcsema_real_eip !81
  store i64 %224, i64* %R8_val, !mcsema_real_eip !81
  %225 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %226 = add i64 %225, -96, !mcsema_real_eip !82
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !82
  %228 = load i64, i64* %227, !mcsema_real_eip !82
  store i64 %228, i64* %RAX_val, !mcsema_real_eip !82
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !83
  %230 = bitcast i64* %229 to i32*
  %231 = load i32, i32* %230, !mcsema_real_eip !83
  %232 = zext i32 %231 to i64, !mcsema_real_eip !83
  store i64 %232, i64* %R9_val, !mcsema_real_eip !83
  %233 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %234 = trunc i64 %233 to i32, !mcsema_real_eip !84
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 %234)
  %235 = extractvalue { i32, i1 } %uadd71, 0
  %236 = xor i32 %235, %234, !mcsema_real_eip !84
  %237 = xor i32 %236, %231, !mcsema_real_eip !84
  %238 = and i32 %237, 16, !mcsema_real_eip !84
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !84
  store i1 %239, i1* %AF_val, !mcsema_real_eip !84
  %240 = icmp slt i32 %235, 0
  store i1 %240, i1* %SF_val, !mcsema_real_eip !84
  %241 = icmp eq i32 %235, 0, !mcsema_real_eip !84
  store i1 %241, i1* %ZF_val, !mcsema_real_eip !84
  %242 = xor i32 %231, -2147483648, !mcsema_real_eip !84
  %243 = xor i32 %242, %234, !mcsema_real_eip !84
  %244 = and i32 %236, %243, !mcsema_real_eip !84
  %245 = icmp slt i32 %244, 0
  store i1 %245, i1* %OF_val, !mcsema_real_eip !84
  %246 = trunc i32 %235 to i8, !mcsema_real_eip !84
  %247 = tail call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !84
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  store i1 %249, i1* %PF_val, !mcsema_real_eip !84
  %250 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %250, i1* %CF_val, !mcsema_real_eip !84
  %251 = zext i32 %235 to i64, !mcsema_real_eip !84
  store i64 %251, i64* %R8_val, !mcsema_real_eip !84
  %252 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %253 = add i64 %252, -104, !mcsema_real_eip !85
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !85
  %255 = load i64, i64* %254, !mcsema_real_eip !85
  store i64 %255, i64* %RAX_val, !mcsema_real_eip !85
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !86
  %257 = bitcast i64* %256 to i32*
  %258 = load i32, i32* %257, !mcsema_real_eip !86
  %259 = zext i32 %258 to i64, !mcsema_real_eip !86
  store i64 %259, i64* %R9_val, !mcsema_real_eip !86
  %260 = load i64, i64* %R8_val, !mcsema_real_eip !87
  %261 = trunc i64 %260 to i32, !mcsema_real_eip !87
  %262 = add i32 %258, %261
  %263 = zext i32 %262 to i64, !mcsema_real_eip !87
  store i64 %263, i64* %R8_val, !mcsema_real_eip !87
  %264 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  %265 = trunc i64 %264 to i32, !mcsema_real_eip !88
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %262, i32 %265)
  %266 = extractvalue { i32, i1 } %uadd73, 0
  %267 = xor i32 %266, %265, !mcsema_real_eip !88
  %268 = xor i32 %267, %262, !mcsema_real_eip !88
  %269 = and i32 %268, 16, !mcsema_real_eip !88
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !88
  store i1 %270, i1* %AF_val, !mcsema_real_eip !88
  %271 = icmp slt i32 %266, 0
  store i1 %271, i1* %SF_val, !mcsema_real_eip !88
  %272 = icmp eq i32 %266, 0, !mcsema_real_eip !88
  store i1 %272, i1* %ZF_val, !mcsema_real_eip !88
  %273 = xor i32 %262, -2147483648, !mcsema_real_eip !88
  %274 = xor i32 %273, %265, !mcsema_real_eip !88
  %275 = and i32 %267, %274, !mcsema_real_eip !88
  %276 = icmp slt i32 %275, 0
  store i1 %276, i1* %OF_val, !mcsema_real_eip !88
  %277 = trunc i32 %266 to i8, !mcsema_real_eip !88
  %278 = tail call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !88
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  store i1 %280, i1* %PF_val, !mcsema_real_eip !88
  %281 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %281, i1* %CF_val, !mcsema_real_eip !88
  %282 = zext i32 %266 to i64, !mcsema_real_eip !88
  store i64 %282, i64* %RSI_val, !mcsema_real_eip !88
  %283 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %284 = add i64 %283, -120, !mcsema_real_eip !89
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !89
  %286 = bitcast i64* %285 to i32*
  store i32 %266, i32* %286, !mcsema_real_eip !89
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %288 = add i64 %287, -36, !mcsema_real_eip !90
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !90
  %290 = bitcast i64* %289 to i32*
  %291 = load i32, i32* %290, !mcsema_real_eip !90
  %292 = zext i32 %291 to i64, !mcsema_real_eip !90
  store i64 %292, i64* %RSI_val, !mcsema_real_eip !90
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %294 = add i64 %293, -64, !mcsema_real_eip !91
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !91
  %296 = load i64, i64* %295, !mcsema_real_eip !91
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !91
  %297 = add i64 %296, 4, !mcsema_real_eip !92
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !92
  %299 = bitcast i64* %298 to i32*
  %300 = load i32, i32* %299, !mcsema_real_eip !92
  %301 = zext i32 %300 to i64, !mcsema_real_eip !92
  store i64 %301, i64* %R8_val, !mcsema_real_eip !92
  %302 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !93
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %300, i32 %303)
  %304 = extractvalue { i32, i1 } %uadd74, 0
  %305 = xor i32 %304, %303, !mcsema_real_eip !93
  %306 = xor i32 %305, %300, !mcsema_real_eip !93
  %307 = and i32 %306, 16, !mcsema_real_eip !93
  %308 = icmp ne i32 %307, 0, !mcsema_real_eip !93
  store i1 %308, i1* %AF_val, !mcsema_real_eip !93
  %309 = icmp slt i32 %304, 0
  store i1 %309, i1* %SF_val, !mcsema_real_eip !93
  %310 = icmp eq i32 %304, 0, !mcsema_real_eip !93
  store i1 %310, i1* %ZF_val, !mcsema_real_eip !93
  %311 = xor i32 %300, -2147483648, !mcsema_real_eip !93
  %312 = xor i32 %311, %303, !mcsema_real_eip !93
  %313 = and i32 %305, %312, !mcsema_real_eip !93
  %314 = icmp slt i32 %313, 0
  store i1 %314, i1* %OF_val, !mcsema_real_eip !93
  %315 = trunc i32 %304 to i8, !mcsema_real_eip !93
  %316 = tail call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !93
  %317 = and i8 %316, 1
  %318 = icmp eq i8 %317, 0
  store i1 %318, i1* %PF_val, !mcsema_real_eip !93
  %319 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %319, i1* %CF_val, !mcsema_real_eip !93
  %320 = zext i32 %304 to i64, !mcsema_real_eip !93
  store i64 %320, i64* %RSI_val, !mcsema_real_eip !93
  %321 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %322 = add i64 %321, -72, !mcsema_real_eip !94
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !94
  %324 = load i64, i64* %323, !mcsema_real_eip !94
  store i64 %324, i64* %RAX_val, !mcsema_real_eip !94
  %325 = add i64 %324, 4, !mcsema_real_eip !95
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !95
  %327 = bitcast i64* %326 to i32*
  %328 = load i32, i32* %327, !mcsema_real_eip !95
  %329 = zext i32 %328 to i64, !mcsema_real_eip !95
  store i64 %329, i64* %R8_val, !mcsema_real_eip !95
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %331 = trunc i64 %330 to i32, !mcsema_real_eip !96
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %328, i32 %331)
  %332 = extractvalue { i32, i1 } %uadd75, 0
  %333 = xor i32 %332, %331, !mcsema_real_eip !96
  %334 = xor i32 %333, %328, !mcsema_real_eip !96
  %335 = and i32 %334, 16, !mcsema_real_eip !96
  %336 = icmp ne i32 %335, 0, !mcsema_real_eip !96
  store i1 %336, i1* %AF_val, !mcsema_real_eip !96
  %337 = icmp slt i32 %332, 0
  store i1 %337, i1* %SF_val, !mcsema_real_eip !96
  %338 = icmp eq i32 %332, 0, !mcsema_real_eip !96
  store i1 %338, i1* %ZF_val, !mcsema_real_eip !96
  %339 = xor i32 %328, -2147483648, !mcsema_real_eip !96
  %340 = xor i32 %339, %331, !mcsema_real_eip !96
  %341 = and i32 %333, %340, !mcsema_real_eip !96
  %342 = icmp slt i32 %341, 0
  store i1 %342, i1* %OF_val, !mcsema_real_eip !96
  %343 = trunc i32 %332 to i8, !mcsema_real_eip !96
  %344 = tail call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !96
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  store i1 %346, i1* %PF_val, !mcsema_real_eip !96
  %347 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %347, i1* %CF_val, !mcsema_real_eip !96
  %348 = zext i32 %332 to i64, !mcsema_real_eip !96
  store i64 %348, i64* %RSI_val, !mcsema_real_eip !96
  %349 = load i64, i64* %R11_val, !mcsema_real_eip !97
  %350 = add i64 %349, 4, !mcsema_real_eip !97
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !97
  %352 = bitcast i64* %351 to i32*
  %353 = load i32, i32* %352, !mcsema_real_eip !97
  %354 = zext i32 %353 to i64, !mcsema_real_eip !97
  store i64 %354, i64* %R8_val, !mcsema_real_eip !97
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %356 = add i64 %355, -96, !mcsema_real_eip !98
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !98
  %358 = load i64, i64* %357, !mcsema_real_eip !98
  store i64 %358, i64* %RAX_val, !mcsema_real_eip !98
  %359 = add i64 %358, 4, !mcsema_real_eip !99
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !99
  %361 = bitcast i64* %360 to i32*
  %362 = load i32, i32* %361, !mcsema_real_eip !99
  %363 = zext i32 %362 to i64, !mcsema_real_eip !99
  store i64 %363, i64* %R9_val, !mcsema_real_eip !99
  %364 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %365 = trunc i64 %364 to i32, !mcsema_real_eip !100
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %362, i32 %365)
  %366 = extractvalue { i32, i1 } %uadd76, 0
  %367 = xor i32 %366, %365, !mcsema_real_eip !100
  %368 = xor i32 %367, %362, !mcsema_real_eip !100
  %369 = and i32 %368, 16, !mcsema_real_eip !100
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !100
  store i1 %370, i1* %AF_val, !mcsema_real_eip !100
  %371 = icmp slt i32 %366, 0
  store i1 %371, i1* %SF_val, !mcsema_real_eip !100
  %372 = icmp eq i32 %366, 0, !mcsema_real_eip !100
  store i1 %372, i1* %ZF_val, !mcsema_real_eip !100
  %373 = xor i32 %362, -2147483648, !mcsema_real_eip !100
  %374 = xor i32 %373, %365, !mcsema_real_eip !100
  %375 = and i32 %367, %374, !mcsema_real_eip !100
  %376 = icmp slt i32 %375, 0
  store i1 %376, i1* %OF_val, !mcsema_real_eip !100
  %377 = trunc i32 %366 to i8, !mcsema_real_eip !100
  %378 = tail call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !100
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  store i1 %380, i1* %PF_val, !mcsema_real_eip !100
  %381 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %381, i1* %CF_val, !mcsema_real_eip !100
  %382 = zext i32 %366 to i64, !mcsema_real_eip !100
  store i64 %382, i64* %R8_val, !mcsema_real_eip !100
  %383 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %384 = add i64 %383, -104, !mcsema_real_eip !101
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !101
  %386 = load i64, i64* %385, !mcsema_real_eip !101
  store i64 %386, i64* %RAX_val, !mcsema_real_eip !101
  %387 = add i64 %386, 4, !mcsema_real_eip !102
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !102
  %389 = bitcast i64* %388 to i32*
  %390 = load i32, i32* %389, !mcsema_real_eip !102
  %391 = zext i32 %390 to i64, !mcsema_real_eip !102
  store i64 %391, i64* %R9_val, !mcsema_real_eip !102
  %392 = load i64, i64* %R8_val, !mcsema_real_eip !103
  %393 = trunc i64 %392 to i32, !mcsema_real_eip !103
  %394 = add i32 %390, %393
  %395 = zext i32 %394 to i64, !mcsema_real_eip !103
  store i64 %395, i64* %R8_val, !mcsema_real_eip !103
  %396 = load i64, i64* %RSI_val, !mcsema_real_eip !104
  %397 = trunc i64 %396 to i32, !mcsema_real_eip !104
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %394, i32 %397)
  %398 = extractvalue { i32, i1 } %uadd78, 0
  %399 = xor i32 %398, %397, !mcsema_real_eip !104
  %400 = xor i32 %399, %394, !mcsema_real_eip !104
  %401 = and i32 %400, 16, !mcsema_real_eip !104
  %402 = icmp ne i32 %401, 0, !mcsema_real_eip !104
  store i1 %402, i1* %AF_val, !mcsema_real_eip !104
  %403 = icmp slt i32 %398, 0
  store i1 %403, i1* %SF_val, !mcsema_real_eip !104
  %404 = icmp eq i32 %398, 0, !mcsema_real_eip !104
  store i1 %404, i1* %ZF_val, !mcsema_real_eip !104
  %405 = xor i32 %394, -2147483648, !mcsema_real_eip !104
  %406 = xor i32 %405, %397, !mcsema_real_eip !104
  %407 = and i32 %399, %406, !mcsema_real_eip !104
  %408 = icmp slt i32 %407, 0
  store i1 %408, i1* %OF_val, !mcsema_real_eip !104
  %409 = trunc i32 %398 to i8, !mcsema_real_eip !104
  %410 = tail call i8 @llvm.ctpop.i8(i8 %409), !mcsema_real_eip !104
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  store i1 %412, i1* %PF_val, !mcsema_real_eip !104
  %413 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %413, i1* %CF_val, !mcsema_real_eip !104
  %414 = zext i32 %398 to i64, !mcsema_real_eip !104
  store i64 %414, i64* %RSI_val, !mcsema_real_eip !104
  %415 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %416 = add i64 %415, -116, !mcsema_real_eip !105
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !105
  %418 = bitcast i64* %417 to i32*
  store i32 %398, i32* %418, !mcsema_real_eip !105
  %419 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %420 = add i64 %419, -32, !mcsema_real_eip !106
  %421 = inttoptr i64 %420 to i64*, !mcsema_real_eip !106
  %422 = bitcast i64* %421 to i32*
  %423 = load i32, i32* %422, !mcsema_real_eip !106
  %424 = zext i32 %423 to i64, !mcsema_real_eip !106
  store i64 %424, i64* %RSI_val, !mcsema_real_eip !106
  %425 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %426 = add i64 %425, -64, !mcsema_real_eip !107
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !107
  %428 = load i64, i64* %427, !mcsema_real_eip !107
  store i64 %428, i64* %RAX_val, !mcsema_real_eip !107
  %429 = add i64 %428, 8, !mcsema_real_eip !108
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !108
  %431 = bitcast i64* %430 to i32*
  %432 = load i32, i32* %431, !mcsema_real_eip !108
  %433 = zext i32 %432 to i64, !mcsema_real_eip !108
  store i64 %433, i64* %R8_val, !mcsema_real_eip !108
  %434 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %435 = trunc i64 %434 to i32, !mcsema_real_eip !109
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %432, i32 %435)
  %436 = extractvalue { i32, i1 } %uadd79, 0
  %437 = xor i32 %436, %435, !mcsema_real_eip !109
  %438 = xor i32 %437, %432, !mcsema_real_eip !109
  %439 = and i32 %438, 16, !mcsema_real_eip !109
  %440 = icmp ne i32 %439, 0, !mcsema_real_eip !109
  store i1 %440, i1* %AF_val, !mcsema_real_eip !109
  %441 = icmp slt i32 %436, 0
  store i1 %441, i1* %SF_val, !mcsema_real_eip !109
  %442 = icmp eq i32 %436, 0, !mcsema_real_eip !109
  store i1 %442, i1* %ZF_val, !mcsema_real_eip !109
  %443 = xor i32 %432, -2147483648, !mcsema_real_eip !109
  %444 = xor i32 %443, %435, !mcsema_real_eip !109
  %445 = and i32 %437, %444, !mcsema_real_eip !109
  %446 = icmp slt i32 %445, 0
  store i1 %446, i1* %OF_val, !mcsema_real_eip !109
  %447 = trunc i32 %436 to i8, !mcsema_real_eip !109
  %448 = tail call i8 @llvm.ctpop.i8(i8 %447), !mcsema_real_eip !109
  %449 = and i8 %448, 1
  %450 = icmp eq i8 %449, 0
  store i1 %450, i1* %PF_val, !mcsema_real_eip !109
  %451 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %451, i1* %CF_val, !mcsema_real_eip !109
  %452 = zext i32 %436 to i64, !mcsema_real_eip !109
  store i64 %452, i64* %RSI_val, !mcsema_real_eip !109
  %453 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %454 = add i64 %453, -72, !mcsema_real_eip !110
  %455 = inttoptr i64 %454 to i64*, !mcsema_real_eip !110
  %456 = load i64, i64* %455, !mcsema_real_eip !110
  store i64 %456, i64* %RAX_val, !mcsema_real_eip !110
  %457 = add i64 %456, 8, !mcsema_real_eip !111
  %458 = inttoptr i64 %457 to i64*, !mcsema_real_eip !111
  %459 = bitcast i64* %458 to i32*
  %460 = load i32, i32* %459, !mcsema_real_eip !111
  %461 = zext i32 %460 to i64, !mcsema_real_eip !111
  store i64 %461, i64* %R8_val, !mcsema_real_eip !111
  %462 = load i64, i64* %RSI_val, !mcsema_real_eip !112
  %463 = trunc i64 %462 to i32, !mcsema_real_eip !112
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %460, i32 %463)
  %464 = extractvalue { i32, i1 } %uadd80, 0
  %465 = xor i32 %464, %463, !mcsema_real_eip !112
  %466 = xor i32 %465, %460, !mcsema_real_eip !112
  %467 = and i32 %466, 16, !mcsema_real_eip !112
  %468 = icmp ne i32 %467, 0, !mcsema_real_eip !112
  store i1 %468, i1* %AF_val, !mcsema_real_eip !112
  %469 = icmp slt i32 %464, 0
  store i1 %469, i1* %SF_val, !mcsema_real_eip !112
  %470 = icmp eq i32 %464, 0, !mcsema_real_eip !112
  store i1 %470, i1* %ZF_val, !mcsema_real_eip !112
  %471 = xor i32 %460, -2147483648, !mcsema_real_eip !112
  %472 = xor i32 %471, %463, !mcsema_real_eip !112
  %473 = and i32 %465, %472, !mcsema_real_eip !112
  %474 = icmp slt i32 %473, 0
  store i1 %474, i1* %OF_val, !mcsema_real_eip !112
  %475 = trunc i32 %464 to i8, !mcsema_real_eip !112
  %476 = tail call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !112
  %477 = and i8 %476, 1
  %478 = icmp eq i8 %477, 0
  store i1 %478, i1* %PF_val, !mcsema_real_eip !112
  %479 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %479, i1* %CF_val, !mcsema_real_eip !112
  %480 = zext i32 %464 to i64, !mcsema_real_eip !112
  store i64 %480, i64* %RSI_val, !mcsema_real_eip !112
  %481 = load i64, i64* %R11_val, !mcsema_real_eip !113
  %482 = add i64 %481, 8, !mcsema_real_eip !113
  %483 = inttoptr i64 %482 to i64*, !mcsema_real_eip !113
  %484 = bitcast i64* %483 to i32*
  %485 = load i32, i32* %484, !mcsema_real_eip !113
  %486 = zext i32 %485 to i64, !mcsema_real_eip !113
  store i64 %486, i64* %R8_val, !mcsema_real_eip !113
  %487 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %488 = add i64 %487, -96, !mcsema_real_eip !114
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !114
  %490 = load i64, i64* %489, !mcsema_real_eip !114
  store i64 %490, i64* %RAX_val, !mcsema_real_eip !114
  %491 = add i64 %490, 8, !mcsema_real_eip !115
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !115
  %493 = bitcast i64* %492 to i32*
  %494 = load i32, i32* %493, !mcsema_real_eip !115
  %495 = zext i32 %494 to i64, !mcsema_real_eip !115
  store i64 %495, i64* %R9_val, !mcsema_real_eip !115
  %496 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %497 = trunc i64 %496 to i32, !mcsema_real_eip !116
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %497)
  %498 = extractvalue { i32, i1 } %uadd81, 0
  %499 = xor i32 %498, %497, !mcsema_real_eip !116
  %500 = xor i32 %499, %494, !mcsema_real_eip !116
  %501 = and i32 %500, 16, !mcsema_real_eip !116
  %502 = icmp ne i32 %501, 0, !mcsema_real_eip !116
  store i1 %502, i1* %AF_val, !mcsema_real_eip !116
  %503 = icmp slt i32 %498, 0
  store i1 %503, i1* %SF_val, !mcsema_real_eip !116
  %504 = icmp eq i32 %498, 0, !mcsema_real_eip !116
  store i1 %504, i1* %ZF_val, !mcsema_real_eip !116
  %505 = xor i32 %494, -2147483648, !mcsema_real_eip !116
  %506 = xor i32 %505, %497, !mcsema_real_eip !116
  %507 = and i32 %499, %506, !mcsema_real_eip !116
  %508 = icmp slt i32 %507, 0
  store i1 %508, i1* %OF_val, !mcsema_real_eip !116
  %509 = trunc i32 %498 to i8, !mcsema_real_eip !116
  %510 = tail call i8 @llvm.ctpop.i8(i8 %509), !mcsema_real_eip !116
  %511 = and i8 %510, 1
  %512 = icmp eq i8 %511, 0
  store i1 %512, i1* %PF_val, !mcsema_real_eip !116
  %513 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %513, i1* %CF_val, !mcsema_real_eip !116
  %514 = zext i32 %498 to i64, !mcsema_real_eip !116
  store i64 %514, i64* %R8_val, !mcsema_real_eip !116
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %516 = add i64 %515, -104, !mcsema_real_eip !117
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !117
  %518 = load i64, i64* %517, !mcsema_real_eip !117
  store i64 %518, i64* %RAX_val, !mcsema_real_eip !117
  %519 = add i64 %518, 8, !mcsema_real_eip !118
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !118
  %521 = bitcast i64* %520 to i32*
  %522 = load i32, i32* %521, !mcsema_real_eip !118
  %523 = zext i32 %522 to i64, !mcsema_real_eip !118
  store i64 %523, i64* %R9_val, !mcsema_real_eip !118
  %524 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %525 = trunc i64 %524 to i32, !mcsema_real_eip !119
  %526 = add i32 %522, %525
  %527 = zext i32 %526 to i64, !mcsema_real_eip !119
  store i64 %527, i64* %R8_val, !mcsema_real_eip !119
  %528 = load i64, i64* %RSI_val, !mcsema_real_eip !120
  %529 = trunc i64 %528 to i32, !mcsema_real_eip !120
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %526, i32 %529)
  %530 = extractvalue { i32, i1 } %uadd83, 0
  %531 = xor i32 %530, %529, !mcsema_real_eip !120
  %532 = xor i32 %531, %526, !mcsema_real_eip !120
  %533 = and i32 %532, 16, !mcsema_real_eip !120
  %534 = icmp ne i32 %533, 0, !mcsema_real_eip !120
  store i1 %534, i1* %AF_val, !mcsema_real_eip !120
  %535 = icmp slt i32 %530, 0
  store i1 %535, i1* %SF_val, !mcsema_real_eip !120
  %536 = icmp eq i32 %530, 0, !mcsema_real_eip !120
  store i1 %536, i1* %ZF_val, !mcsema_real_eip !120
  %537 = xor i32 %526, -2147483648, !mcsema_real_eip !120
  %538 = xor i32 %537, %529, !mcsema_real_eip !120
  %539 = and i32 %531, %538, !mcsema_real_eip !120
  %540 = icmp slt i32 %539, 0
  store i1 %540, i1* %OF_val, !mcsema_real_eip !120
  %541 = trunc i32 %530 to i8, !mcsema_real_eip !120
  %542 = tail call i8 @llvm.ctpop.i8(i8 %541), !mcsema_real_eip !120
  %543 = and i8 %542, 1
  %544 = icmp eq i8 %543, 0
  store i1 %544, i1* %PF_val, !mcsema_real_eip !120
  %545 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %545, i1* %CF_val, !mcsema_real_eip !120
  %546 = zext i32 %530 to i64, !mcsema_real_eip !120
  store i64 %546, i64* %RSI_val, !mcsema_real_eip !120
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %548 = add i64 %547, -112, !mcsema_real_eip !121
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !121
  %550 = bitcast i64* %549 to i32*
  store i32 %530, i32* %550, !mcsema_real_eip !121
  %551 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %552 = add i64 %551, -112, !mcsema_real_eip !122
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !122
  %554 = bitcast i64* %553 to i32*
  %555 = load i32, i32* %554, !mcsema_real_eip !122
  %556 = zext i32 %555 to i64, !mcsema_real_eip !122
  store i64 %556, i64* %RSI_val, !mcsema_real_eip !122
  %557 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %558 = add i64 %557, -16, !mcsema_real_eip !123
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !123
  %560 = bitcast i64* %559 to i32*
  store i32 %555, i32* %560, !mcsema_real_eip !123
  %561 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %562 = add i64 %561, -120, !mcsema_real_eip !124
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !124
  %564 = load i64, i64* %563, !mcsema_real_eip !124
  store i64 %564, i64* %RAX_val, !mcsema_real_eip !124
  %565 = add i64 %561, -24, !mcsema_real_eip !125
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !125
  store i64 %564, i64* %566, !mcsema_real_eip !125
  %567 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %568 = add i64 %567, -16, !mcsema_real_eip !126
  %569 = inttoptr i64 %568 to i64*, !mcsema_real_eip !126
  %570 = bitcast i64* %569 to i32*
  %571 = load i32, i32* %570, !mcsema_real_eip !126
  %572 = zext i32 %571 to i64, !mcsema_real_eip !126
  store i64 %572, i64* %RSI_val, !mcsema_real_eip !126
  %573 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %574 = add i64 %573, -128, !mcsema_real_eip !127
  %575 = inttoptr i64 %574 to i64*, !mcsema_real_eip !127
  %576 = bitcast i64* %575 to i32*
  store i32 %571, i32* %576, !mcsema_real_eip !127
  %577 = load i64, i64* %RBP_val, !mcsema_real_eip !128
  %578 = add i64 %577, -24, !mcsema_real_eip !128
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !128
  %580 = load i64, i64* %579, !mcsema_real_eip !128
  store i64 %580, i64* %RAX_val, !mcsema_real_eip !128
  %581 = add i64 %577, -136, !mcsema_real_eip !129
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !129
  store i64 %580, i64* %582, !mcsema_real_eip !129
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  %584 = add i64 %583, -136, !mcsema_real_eip !130
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !130
  %586 = load i64, i64* %585, !mcsema_real_eip !130
  store i64 %586, i64* %RAX_val, !mcsema_real_eip !130
  %587 = add i64 %583, -128, !mcsema_real_eip !131
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !131
  %589 = bitcast i64* %588 to i32*
  %590 = load i32, i32* %589, !mcsema_real_eip !131
  %591 = zext i32 %590 to i64, !mcsema_real_eip !131
  store i64 %591, i64* %RDX_val, !mcsema_real_eip !131
  %592 = load i64, i64* %RSP_val, !mcsema_real_eip !132
  %593 = inttoptr i64 %592 to i64*, !mcsema_real_eip !132
  %594 = load i64, i64* %593, !mcsema_real_eip !132
  store i64 %594, i64* %RBX_val, !mcsema_real_eip !132
  %595 = add i64 %592, 8, !mcsema_real_eip !132
  store i64 %595, i64* %RSP_val, !mcsema_real_eip !132
  %596 = inttoptr i64 %595 to i64*, !mcsema_real_eip !133
  %597 = load i64, i64* %596, !mcsema_real_eip !133
  store i64 %597, i64* %RBP_val, !mcsema_real_eip !133
  %598 = add i64 %592, 24, !mcsema_real_eip !134
  store i64 %598, i64* %RSP_val, !mcsema_real_eip !134
  %599 = load i64, i64* %RAX_val, !mcsema_real_eip !134
  store i64 %599, i64* %RAX, !mcsema_real_eip !134
  %600 = load i64, i64* %RBX_val, !mcsema_real_eip !134
  store i64 %600, i64* %RBX, !mcsema_real_eip !134
  %601 = load i64, i64* %RCX_val, !mcsema_real_eip !134
  store i64 %601, i64* %RCX, !mcsema_real_eip !134
  %602 = load i64, i64* %RDX_val, !mcsema_real_eip !134
  store i64 %602, i64* %RDX, !mcsema_real_eip !134
  %603 = load i64, i64* %RSI_val, !mcsema_real_eip !134
  store i64 %603, i64* %RSI, !mcsema_real_eip !134
  %604 = load i64, i64* %RDI_val, !mcsema_real_eip !134
  store i64 %604, i64* %RDI, !mcsema_real_eip !134
  %605 = load i64, i64* %RSP_val, !mcsema_real_eip !134
  store i64 %605, i64* %RSP, !mcsema_real_eip !134
  %606 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  store i64 %606, i64* %RBP, !mcsema_real_eip !134
  %607 = load i64, i64* %R8_val, !mcsema_real_eip !134
  store i64 %607, i64* %R8, !mcsema_real_eip !134
  %608 = load i64, i64* %R9_val, !mcsema_real_eip !134
  store i64 %608, i64* %R9, !mcsema_real_eip !134
  %609 = load i64, i64* %R10_val, !mcsema_real_eip !134
  store i64 %609, i64* %R10, !mcsema_real_eip !134
  %610 = load i64, i64* %R11_val, !mcsema_real_eip !134
  store i64 %610, i64* %R11, !mcsema_real_eip !134
  %611 = load i64, i64* %R12_val, !mcsema_real_eip !134
  store i64 %611, i64* %R12, !mcsema_real_eip !134
  %612 = load i64, i64* %R13_val, !mcsema_real_eip !134
  store i64 %612, i64* %R13, !mcsema_real_eip !134
  %613 = load i64, i64* %R14_val, !mcsema_real_eip !134
  store i64 %613, i64* %R14, !mcsema_real_eip !134
  %614 = load i64, i64* %R15_val, !mcsema_real_eip !134
  store i64 %614, i64* %R15, !mcsema_real_eip !134
  %615 = load i64, i64* %RIP_val, !mcsema_real_eip !134
  store i64 %615, i64* %RIP, !mcsema_real_eip !134
  %616 = load i1, i1* %CF_val, !mcsema_real_eip !134
  store i1 %616, i1* %CF, align 1, !mcsema_real_eip !134
  %617 = load i1, i1* %PF_val, !mcsema_real_eip !134
  store i1 %617, i1* %PF, align 1, !mcsema_real_eip !134
  %618 = load i1, i1* %AF_val, !mcsema_real_eip !134
  store i1 %618, i1* %AF, align 1, !mcsema_real_eip !134
  %619 = load i1, i1* %ZF_val, !mcsema_real_eip !134
  store i1 %619, i1* %ZF, align 1, !mcsema_real_eip !134
  %620 = load i1, i1* %SF_val, !mcsema_real_eip !134
  store i1 %620, i1* %SF, align 1, !mcsema_real_eip !134
  %621 = load i1, i1* %OF_val, !mcsema_real_eip !134
  store i1 %621, i1* %OF, align 1, !mcsema_real_eip !134
  %622 = load i1, i1* %DF_val, !mcsema_real_eip !134
  store i1 %622, i1* %DF, align 1, !mcsema_real_eip !134
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !134
  %623 = load i1, i1* %FPU_B_val, !mcsema_real_eip !134
  store i1 %623, i1* %FPU_B, align 1, !mcsema_real_eip !134
  %624 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !134
  store i1 %624, i1* %FPU_C3, align 1, !mcsema_real_eip !134
  %625 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !134
  store i3 %625, i3* %FPU_TOP, align 1, !mcsema_real_eip !134
  %626 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !134
  store i1 %626, i1* %FPU_C2, align 1, !mcsema_real_eip !134
  %627 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !134
  store i1 %627, i1* %FPU_C1, align 1, !mcsema_real_eip !134
  %628 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !134
  store i1 %628, i1* %FPU_C0, align 1, !mcsema_real_eip !134
  %629 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !134
  store i1 %629, i1* %FPU_ES, align 1, !mcsema_real_eip !134
  %630 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !134
  store i1 %630, i1* %FPU_SF, align 1, !mcsema_real_eip !134
  %631 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !134
  store i1 %631, i1* %FPU_PE, align 1, !mcsema_real_eip !134
  %632 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !134
  store i1 %632, i1* %FPU_UE, align 1, !mcsema_real_eip !134
  %633 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !134
  store i1 %633, i1* %FPU_OE, align 1, !mcsema_real_eip !134
  %634 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !134
  store i1 %634, i1* %FPU_ZE, align 1, !mcsema_real_eip !134
  %635 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !134
  store i1 %635, i1* %FPU_DE, align 1, !mcsema_real_eip !134
  %636 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !134
  store i1 %636, i1* %FPU_IE, align 1, !mcsema_real_eip !134
  %637 = load i1, i1* %FPU_X_val, !mcsema_real_eip !134
  store i1 %637, i1* %FPU_X, align 1, !mcsema_real_eip !134
  %638 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !134
  store i2 %638, i2* %FPU_RC, align 1, !mcsema_real_eip !134
  %639 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !134
  store i2 %639, i2* %FPU_PC, align 1, !mcsema_real_eip !134
  %640 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !134
  store i1 %640, i1* %FPU_PM, align 1, !mcsema_real_eip !134
  %641 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !134
  store i1 %641, i1* %FPU_UM, align 1, !mcsema_real_eip !134
  %642 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !134
  store i1 %642, i1* %FPU_OM, align 1, !mcsema_real_eip !134
  %643 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !134
  store i1 %643, i1* %FPU_ZM, align 1, !mcsema_real_eip !134
  %644 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !134
  store i1 %644, i1* %FPU_DM, align 1, !mcsema_real_eip !134
  %645 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !134
  store i1 %645, i1* %FPU_IM, align 1, !mcsema_real_eip !134
  %646 = load i64, i64* %53, align 4
  store i64 %646, i64* %52, align 4
  %647 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !134
  store i16 %647, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !134
  %648 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !134
  store i64 %648, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !134
  %649 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !134
  store i16 %649, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !134
  %650 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !134
  store i64 %650, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !134
  %651 = load i128, i128* %XMM0_val, !mcsema_real_eip !134
  store i128 %651, i128* %XMM0, align 1, !mcsema_real_eip !134
  %652 = load i128, i128* %XMM1_val, !mcsema_real_eip !134
  store i128 %652, i128* %XMM1, align 1, !mcsema_real_eip !134
  %653 = load i128, i128* %XMM2_val, !mcsema_real_eip !134
  store i128 %653, i128* %XMM2, align 1, !mcsema_real_eip !134
  %654 = load i128, i128* %XMM3_val, !mcsema_real_eip !134
  store i128 %654, i128* %XMM3, align 1, !mcsema_real_eip !134
  %655 = load i128, i128* %XMM4_val, !mcsema_real_eip !134
  store i128 %655, i128* %XMM4, align 1, !mcsema_real_eip !134
  %656 = load i128, i128* %XMM5_val, !mcsema_real_eip !134
  store i128 %656, i128* %XMM5, align 1, !mcsema_real_eip !134
  %657 = load i128, i128* %XMM6_val, !mcsema_real_eip !134
  store i128 %657, i128* %XMM6, align 1, !mcsema_real_eip !134
  %658 = load i128, i128* %XMM7_val, !mcsema_real_eip !134
  store i128 %658, i128* %XMM7, align 1, !mcsema_real_eip !134
  %659 = load i128, i128* %XMM8_val, !mcsema_real_eip !134
  store i128 %659, i128* %XMM8, align 1, !mcsema_real_eip !134
  %660 = load i128, i128* %XMM9_val, !mcsema_real_eip !134
  store i128 %660, i128* %XMM9, align 1, !mcsema_real_eip !134
  %661 = load i128, i128* %XMM10_val, !mcsema_real_eip !134
  store i128 %661, i128* %XMM10, align 1, !mcsema_real_eip !134
  %662 = load i128, i128* %XMM11_val, !mcsema_real_eip !134
  store i128 %662, i128* %XMM11, align 1, !mcsema_real_eip !134
  %663 = load i128, i128* %XMM12_val, !mcsema_real_eip !134
  store i128 %663, i128* %XMM12, align 1, !mcsema_real_eip !134
  %664 = load i128, i128* %XMM13_val, !mcsema_real_eip !134
  store i128 %664, i128* %XMM13, align 1, !mcsema_real_eip !134
  %665 = load i128, i128* %XMM14_val, !mcsema_real_eip !134
  store i128 %665, i128* %XMM14, align 1, !mcsema_real_eip !134
  %666 = load i128, i128* %XMM15_val, !mcsema_real_eip !134
  store i128 %666, i128* %XMM15, align 1, !mcsema_real_eip !134
  %667 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !134
  store i64 %667, i64* %STACK_BASE, align 1, !mcsema_real_eip !134
  %668 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !134
  store i64 %668, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !134
  ret void, !mcsema_real_eip !134
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_120(%struct.regs* %0)
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
  %R15_val = alloca i64, !mcsema_real_eip !54
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !54
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !54
  %XMM15_val = alloca i128, !mcsema_real_eip !54
  %XMM14_val = alloca i128, !mcsema_real_eip !54
  %XMM13_val = alloca i128, !mcsema_real_eip !54
  %XMM12_val = alloca i128, !mcsema_real_eip !54
  %XMM11_val = alloca i128, !mcsema_real_eip !54
  %XMM10_val = alloca i128, !mcsema_real_eip !54
  %XMM9_val = alloca i128, !mcsema_real_eip !54
  %XMM8_val = alloca i128, !mcsema_real_eip !54
  %XMM7_val = alloca i128, !mcsema_real_eip !54
  %XMM6_val = alloca i128, !mcsema_real_eip !54
  %XMM5_val = alloca i128, !mcsema_real_eip !54
  %XMM4_val = alloca i128, !mcsema_real_eip !54
  %XMM3_val = alloca i128, !mcsema_real_eip !54
  %XMM2_val = alloca i128, !mcsema_real_eip !54
  %XMM1_val = alloca i128, !mcsema_real_eip !54
  %XMM0_val = alloca i128, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !54
  %FPU_IM_val = alloca i1, !mcsema_real_eip !54
  %FPU_DM_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !54
  %FPU_OM_val = alloca i1, !mcsema_real_eip !54
  %FPU_UM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PC_val = alloca i2, !mcsema_real_eip !54
  %FPU_RC_val = alloca i2, !mcsema_real_eip !54
  %FPU_X_val = alloca i1, !mcsema_real_eip !54
  %FPU_IE_val = alloca i1, !mcsema_real_eip !54
  %FPU_DE_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !54
  %FPU_OE_val = alloca i1, !mcsema_real_eip !54
  %FPU_UE_val = alloca i1, !mcsema_real_eip !54
  %FPU_PE_val = alloca i1, !mcsema_real_eip !54
  %FPU_SF_val = alloca i1, !mcsema_real_eip !54
  %FPU_ES_val = alloca i1, !mcsema_real_eip !54
  %FPU_C0_val = alloca i1, !mcsema_real_eip !54
  %FPU_C1_val = alloca i1, !mcsema_real_eip !54
  %FPU_C2_val = alloca i1, !mcsema_real_eip !54
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !54
  %FPU_C3_val = alloca i1, !mcsema_real_eip !54
  %FPU_B_val = alloca i1, !mcsema_real_eip !54
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !54
  %DF_val = alloca i1, !mcsema_real_eip !54
  %OF_val = alloca i1, !mcsema_real_eip !54
  %SF_val = alloca i1, !mcsema_real_eip !54
  %CF_val = alloca i1, !mcsema_real_eip !54
  %AF_val = alloca i1, !mcsema_real_eip !54
  %PF_val = alloca i1, !mcsema_real_eip !54
  %ZF_val = alloca i1, !mcsema_real_eip !54
  %RIP_val = alloca i64, !mcsema_real_eip !54
  %R14_val = alloca i64, !mcsema_real_eip !54
  %R13_val = alloca i64, !mcsema_real_eip !54
  %R12_val = alloca i64, !mcsema_real_eip !54
  %R11_val = alloca i64, !mcsema_real_eip !54
  %R10_val = alloca i64, !mcsema_real_eip !54
  %R9_val = alloca i64, !mcsema_real_eip !54
  %R8_val = alloca i64, !mcsema_real_eip !54
  %RSP_val = alloca i64, !mcsema_real_eip !54
  %RBP_val = alloca i64, !mcsema_real_eip !54
  %RDI_val = alloca i64, !mcsema_real_eip !54
  %RSI_val = alloca i64, !mcsema_real_eip !54
  %RDX_val = alloca i64, !mcsema_real_eip !54
  %RCX_val = alloca i64, !mcsema_real_eip !54
  %RBX_val = alloca i64, !mcsema_real_eip !54
  %RAX_val = alloca i64, !mcsema_real_eip !54
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %1 = load i64, i64* %RAX, !mcsema_real_eip !54
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !54
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %2 = load i64, i64* %RBX, !mcsema_real_eip !54
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !54
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !54
  %3 = load i64, i64* %RCX, !mcsema_real_eip !54
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !54
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %4 = load i64, i64* %RDX, !mcsema_real_eip !54
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !54
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !54
  %5 = load i64, i64* %RSI, !mcsema_real_eip !54
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !54
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %6 = load i64, i64* %RDI, !mcsema_real_eip !54
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !54
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %7 = load i64, i64* %RSP, !mcsema_real_eip !54
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !54
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %8 = load i64, i64* %RBP, !mcsema_real_eip !54
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !54
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %9 = load i64, i64* %R8, !mcsema_real_eip !54
  store i64 %9, i64* %R8_val, !mcsema_real_eip !54
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !54
  %10 = load i64, i64* %R9, !mcsema_real_eip !54
  store i64 %10, i64* %R9_val, !mcsema_real_eip !54
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %11 = load i64, i64* %R10, !mcsema_real_eip !54
  store i64 %11, i64* %R10_val, !mcsema_real_eip !54
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !54
  %12 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %12, i64* %R11_val, !mcsema_real_eip !54
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %13 = load i64, i64* %R12, !mcsema_real_eip !54
  store i64 %13, i64* %R12_val, !mcsema_real_eip !54
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !54
  %14 = load i64, i64* %R13, !mcsema_real_eip !54
  store i64 %14, i64* %R13_val, !mcsema_real_eip !54
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %15 = load i64, i64* %R14, !mcsema_real_eip !54
  store i64 %15, i64* %R14_val, !mcsema_real_eip !54
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !54
  %16 = load i64, i64* %R15, !mcsema_real_eip !54
  store i64 %16, i64* %R15_val, !mcsema_real_eip !54
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %17 = load i64, i64* %RIP, !mcsema_real_eip !54
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !54
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !54
  store i1 %18, i1* %CF_val, !mcsema_real_eip !54
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !54
  store i1 %19, i1* %PF_val, !mcsema_real_eip !54
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !54
  store i1 %20, i1* %AF_val, !mcsema_real_eip !54
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !54
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !54
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !54
  store i1 %22, i1* %SF_val, !mcsema_real_eip !54
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !54
  store i1 %23, i1* %OF_val, !mcsema_real_eip !54
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !54
  store i1 %24, i1* %DF_val, !mcsema_real_eip !54
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !54
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !54
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !54
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !54
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !54
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !54
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !54
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !54
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !54
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !54
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !54
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !54
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !54
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !54
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !54
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !54
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !54
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !54
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !54
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !54
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !54
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !54
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !54
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !54
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !54
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !54
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !54
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !54
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !54
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !54
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !54
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !54
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !54
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !54
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !54
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !54
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !54
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !54
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !54
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !54
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !54
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !54
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !54
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !54
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !54
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !54
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !54
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !54
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !54
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !54
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !54
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !54
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !54
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !54
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !54
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !54
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !54
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !54
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !54
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !54
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !54
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !54
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !54
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !54
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !54
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !54
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !54
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !54
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !54
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !54
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !54
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !54
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !54
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !54
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !54
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !54
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !54
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !54
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !54
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !54
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !54
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !54
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !54
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !55
  %83 = load i64, i64* %RBX_val, !mcsema_real_eip !56
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %84 = add i64 %80, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !56
  store i64 %83, i64* %_allin_new_bt_2, !mcsema_real_eip !56
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !56
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 48
  %87 = add i64 %86, 48, !mcsema_real_eip !57
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !57
  %_ptr_to_int_141 = ptrtoint i64* %_allin_new_bt_5 to i64
  %_local_end_to_int_142 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_143 = bitcast i64* %_allin_new_bt_5 to i8*
  %_offset_above_rbp_144 = sub i64 %_ptr_to_int_141, %_local_end_to_int_142
  %_pot_address_in_parent_stack_145 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_144
  %_cond1_146 = icmp ugt i8* %_ptr_bt_143, %_local_stack_end_ptr_
  %_cond2_1_147 = icmp ugt i8* %_ptr_bt_143, %_parent_stack_end_ptr_
  %_cond2_2_148 = icmp ult i8* %_ptr_bt_143, %_parent_stack_start_ptr_
  %_cond2_149 = or i1 %_cond2_1_147, %_cond2_2_148
  %_cond4_150 = icmp ule i8* %_pot_address_in_parent_stack_145, %_parent_stack_end_ptr_
  %_cond1_n_cond2_151 = and i1 %_cond1_146, %_cond2_149
  %_cond1_n_cond2_cond3_152 = and i1 %_cond1_n_cond2_151, %_cond4_150
  br i1 %_cond1_n_cond2_cond3_152, label %89, label %90

; <label>:89:                                     ; preds = %55
  %_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_144
  %_address_in_parent_stack_bt_154 = bitcast i8* %_address_in_parent_stack_153 to i64*
  br label %90

; <label>:90:                                     ; preds = %55, %89
  %91 = phi i64* [ %_allin_new_bt_5, %55 ], [ %_address_in_parent_stack_bt_154, %89 ]
  %_new_load_155 = load i64, i64* %91
  store i64 %_new_load_155, i64* %RAX_val, !mcsema_real_eip !57
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 40
  %92 = add i64 %86, 40, !mcsema_real_eip !58
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !58
  %_ptr_to_int_156 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_local_end_to_int_157 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_158 = bitcast i64* %_allin_new_bt_7 to i8*
  %_offset_above_rbp_159 = sub i64 %_ptr_to_int_156, %_local_end_to_int_157
  %_pot_address_in_parent_stack_160 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_159
  %_cond1_161 = icmp ugt i8* %_ptr_bt_158, %_local_stack_end_ptr_
  %_cond2_1_162 = icmp ugt i8* %_ptr_bt_158, %_parent_stack_end_ptr_
  %_cond2_2_163 = icmp ult i8* %_ptr_bt_158, %_parent_stack_start_ptr_
  %_cond2_164 = or i1 %_cond2_1_162, %_cond2_2_163
  %_cond4_165 = icmp ule i8* %_pot_address_in_parent_stack_160, %_parent_stack_end_ptr_
  %_cond1_n_cond2_166 = and i1 %_cond1_161, %_cond2_164
  %_cond1_n_cond2_cond3_167 = and i1 %_cond1_n_cond2_166, %_cond4_165
  br i1 %_cond1_n_cond2_cond3_167, label %94, label %95

; <label>:94:                                     ; preds = %90
  %_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_159
  %_address_in_parent_stack_bt_169 = bitcast i8* %_address_in_parent_stack_168 to i64*
  br label %95

; <label>:95:                                     ; preds = %90, %94
  %96 = phi i64* [ %_allin_new_bt_7, %90 ], [ %_address_in_parent_stack_bt_169, %94 ]
  %_new_load_170 = load i64, i64* %96
  store i64 %_new_load_170, i64* %R10_val, !mcsema_real_eip !58
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 24
  %98 = add i64 %97, 24, !mcsema_real_eip !59
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !59
  %100 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !59
  store i64 %100, i64* %R11_val, !mcsema_real_eip !59
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 16
  %101 = add i64 %97, 16, !mcsema_real_eip !60
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !60
  %103 = bitcast i64* %_allin_new_bt_12 to i32*
  %_ptr_to_int_171 = ptrtoint i32* %103 to i64
  %_local_end_to_int_172 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_173 = bitcast i32* %103 to i8*
  %_offset_above_rbp_174 = sub i64 %_ptr_to_int_171, %_local_end_to_int_172
  %_pot_address_in_parent_stack_175 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_174
  %_cond1_176 = icmp ugt i8* %_ptr_bt_173, %_local_stack_end_ptr_
  %_cond2_1_177 = icmp ugt i8* %_ptr_bt_173, %_parent_stack_end_ptr_
  %_cond2_2_178 = icmp ult i8* %_ptr_bt_173, %_parent_stack_start_ptr_
  %_cond2_179 = or i1 %_cond2_1_177, %_cond2_2_178
  %_cond4_180 = icmp ule i8* %_pot_address_in_parent_stack_175, %_parent_stack_end_ptr_
  %_cond1_n_cond2_181 = and i1 %_cond1_176, %_cond2_179
  %_cond1_n_cond2_cond3_182 = and i1 %_cond1_n_cond2_181, %_cond4_180
  br i1 %_cond1_n_cond2_cond3_182, label %104, label %105

; <label>:104:                                    ; preds = %95
  %_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_174
  %_address_in_parent_stack_bt_184 = bitcast i8* %_address_in_parent_stack_183 to i32*
  br label %105

; <label>:105:                                    ; preds = %95, %104
  %106 = phi i32* [ %103, %95 ], [ %_address_in_parent_stack_bt_184, %104 ]
  %_new_load_185 = load i32, i32* %106
  %107 = zext i32 %_new_load_185 to i64, !mcsema_real_eip !60
  store i64 %107, i64* %RBX_val, !mcsema_real_eip !60
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -56
  %109 = add i64 %108, -56, !mcsema_real_eip !61
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !61
  %111 = load i64, i64* %RDI_val, !mcsema_real_eip !61
  store i64 %111, i64* %_allin_new_bt_15, !mcsema_real_eip !61
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !62
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -48
  %113 = add i64 %112, -48, !mcsema_real_eip !62
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !62
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !62
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !62
  %117 = bitcast i64* %_allin_new_bt_18 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !62
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -48
  %119 = add i64 %118, -48, !mcsema_real_eip !63
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !63
  %121 = bitcast i64* %_allin_new_bt_21 to i32*
  %_ptr_to_int_186 = ptrtoint i32* %121 to i64
  %_local_end_to_int_187 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_188 = bitcast i32* %121 to i8*
  %_offset_above_rbp_189 = sub i64 %_ptr_to_int_186, %_local_end_to_int_187
  %_pot_address_in_parent_stack_190 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_189
  %_cond1_191 = icmp ugt i8* %_ptr_bt_188, %_local_stack_end_ptr_
  %_cond2_1_192 = icmp ugt i8* %_ptr_bt_188, %_parent_stack_end_ptr_
  %_cond2_2_193 = icmp ult i8* %_ptr_bt_188, %_parent_stack_start_ptr_
  %_cond2_194 = or i1 %_cond2_1_192, %_cond2_2_193
  %_cond4_195 = icmp ule i8* %_pot_address_in_parent_stack_190, %_parent_stack_end_ptr_
  %_cond1_n_cond2_196 = and i1 %_cond1_191, %_cond2_194
  %_cond1_n_cond2_cond3_197 = and i1 %_cond1_n_cond2_196, %_cond4_195
  br i1 %_cond1_n_cond2_cond3_197, label %122, label %123

; <label>:122:                                    ; preds = %105
  %_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_189
  %_address_in_parent_stack_bt_199 = bitcast i8* %_address_in_parent_stack_198 to i32*
  br label %123

; <label>:123:                                    ; preds = %105, %122
  %124 = phi i32* [ %121, %105 ], [ %_address_in_parent_stack_bt_199, %122 ]
  %_new_load_200 = load i32, i32* %124
  %125 = zext i32 %_new_load_200 to i64, !mcsema_real_eip !63
  store i64 %125, i64* %RSI_val, !mcsema_real_eip !63
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -32
  %127 = add i64 %126, -32, !mcsema_real_eip !64
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !64
  %129 = bitcast i64* %_allin_new_bt_24 to i32*
  store i32 %_new_load_200, i32* %129, !mcsema_real_eip !64
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !65
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -56
  %131 = add i64 %130, -56, !mcsema_real_eip !65
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !65
  %_ptr_to_int_201 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_local_end_to_int_202 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_203 = bitcast i64* %_allin_new_bt_27 to i8*
  %_offset_above_rbp_204 = sub i64 %_ptr_to_int_201, %_local_end_to_int_202
  %_pot_address_in_parent_stack_205 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_204
  %_cond1_206 = icmp ugt i8* %_ptr_bt_203, %_local_stack_end_ptr_
  %_cond2_1_207 = icmp ugt i8* %_ptr_bt_203, %_parent_stack_end_ptr_
  %_cond2_2_208 = icmp ult i8* %_ptr_bt_203, %_parent_stack_start_ptr_
  %_cond2_209 = or i1 %_cond2_1_207, %_cond2_2_208
  %_cond4_210 = icmp ule i8* %_pot_address_in_parent_stack_205, %_parent_stack_end_ptr_
  %_cond1_n_cond2_211 = and i1 %_cond1_206, %_cond2_209
  %_cond1_n_cond2_cond3_212 = and i1 %_cond1_n_cond2_211, %_cond4_210
  br i1 %_cond1_n_cond2_cond3_212, label %133, label %134

; <label>:133:                                    ; preds = %123
  %_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_204
  %_address_in_parent_stack_bt_214 = bitcast i8* %_address_in_parent_stack_213 to i64*
  br label %134

; <label>:134:                                    ; preds = %123, %133
  %135 = phi i64* [ %_allin_new_bt_27, %123 ], [ %_address_in_parent_stack_bt_214, %133 ]
  %_new_load_215 = load i64, i64* %135
  store i64 %_new_load_215, i64* %RDI_val, !mcsema_real_eip !65
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -40
  %136 = add i64 %130, -40, !mcsema_real_eip !66
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !66
  store i64 %_new_load_215, i64* %_allin_new_bt_29, !mcsema_real_eip !66
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -64
  %139 = add i64 %138, -64, !mcsema_real_eip !67
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !67
  %141 = load i64, i64* %RDX_val, !mcsema_real_eip !67
  store i64 %141, i64* %_allin_new_bt_32, !mcsema_real_eip !67
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !68
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -72
  %143 = add i64 %142, -72, !mcsema_real_eip !68
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !68
  %145 = load i64, i64* %RCX_val, !mcsema_real_eip !68
  store i64 %145, i64* %_allin_new_bt_35, !mcsema_real_eip !68
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -76
  %147 = add i64 %146, -76, !mcsema_real_eip !69
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !69
  %149 = load i64, i64* %R8_val, !mcsema_real_eip !69
  %150 = trunc i64 %149 to i32, !mcsema_real_eip !69
  %151 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %150, i32* %151, !mcsema_real_eip !69
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -80
  %153 = add i64 %152, -80, !mcsema_real_eip !70
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !70
  %155 = load i64, i64* %R9_val, !mcsema_real_eip !70
  %156 = trunc i64 %155 to i32, !mcsema_real_eip !70
  %157 = bitcast i64* %_allin_new_bt_41 to i32*
  store i32 %156, i32* %157, !mcsema_real_eip !70
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -84
  %159 = add i64 %158, -84, !mcsema_real_eip !71
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !71
  %161 = load i64, i64* %RBX_val, !mcsema_real_eip !71
  %162 = trunc i64 %161 to i32, !mcsema_real_eip !71
  %163 = bitcast i64* %_allin_new_bt_44 to i32*
  store i32 %162, i32* %163, !mcsema_real_eip !71
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -96
  %165 = add i64 %164, -96, !mcsema_real_eip !72
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !72
  %167 = load i64, i64* %R10_val, !mcsema_real_eip !72
  store i64 %167, i64* %_allin_new_bt_47, !mcsema_real_eip !72
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -104
  %169 = add i64 %168, -104, !mcsema_real_eip !73
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !73
  %171 = load i64, i64* %RAX_val, !mcsema_real_eip !73
  store i64 %171, i64* %_allin_new_bt_50, !mcsema_real_eip !73
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -40
  %173 = add i64 %172, -40, !mcsema_real_eip !74
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !74
  %175 = bitcast i64* %_allin_new_bt_53 to i32*
  %_ptr_to_int_216 = ptrtoint i32* %175 to i64
  %_local_end_to_int_217 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_218 = bitcast i32* %175 to i8*
  %_offset_above_rbp_219 = sub i64 %_ptr_to_int_216, %_local_end_to_int_217
  %_pot_address_in_parent_stack_220 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_219
  %_cond1_221 = icmp ugt i8* %_ptr_bt_218, %_local_stack_end_ptr_
  %_cond2_1_222 = icmp ugt i8* %_ptr_bt_218, %_parent_stack_end_ptr_
  %_cond2_2_223 = icmp ult i8* %_ptr_bt_218, %_parent_stack_start_ptr_
  %_cond2_224 = or i1 %_cond2_1_222, %_cond2_2_223
  %_cond4_225 = icmp ule i8* %_pot_address_in_parent_stack_220, %_parent_stack_end_ptr_
  %_cond1_n_cond2_226 = and i1 %_cond1_221, %_cond2_224
  %_cond1_n_cond2_cond3_227 = and i1 %_cond1_n_cond2_226, %_cond4_225
  br i1 %_cond1_n_cond2_cond3_227, label %176, label %177

; <label>:176:                                    ; preds = %134
  %_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_219
  %_address_in_parent_stack_bt_229 = bitcast i8* %_address_in_parent_stack_228 to i32*
  br label %177

; <label>:177:                                    ; preds = %134, %176
  %178 = phi i32* [ %175, %134 ], [ %_address_in_parent_stack_bt_229, %176 ]
  %_new_load_230 = load i32, i32* %178
  %179 = zext i32 %_new_load_230 to i64, !mcsema_real_eip !74
  store i64 %179, i64* %RSI_val, !mcsema_real_eip !74
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -64
  %181 = add i64 %180, -64, !mcsema_real_eip !75
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !75
  %_ptr_to_int_231 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_local_end_to_int_232 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_233 = bitcast i64* %_allin_new_bt_56 to i8*
  %_offset_above_rbp_234 = sub i64 %_ptr_to_int_231, %_local_end_to_int_232
  %_pot_address_in_parent_stack_235 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_234
  %_cond1_236 = icmp ugt i8* %_ptr_bt_233, %_local_stack_end_ptr_
  %_cond2_1_237 = icmp ugt i8* %_ptr_bt_233, %_parent_stack_end_ptr_
  %_cond2_2_238 = icmp ult i8* %_ptr_bt_233, %_parent_stack_start_ptr_
  %_cond2_239 = or i1 %_cond2_1_237, %_cond2_2_238
  %_cond4_240 = icmp ule i8* %_pot_address_in_parent_stack_235, %_parent_stack_end_ptr_
  %_cond1_n_cond2_241 = and i1 %_cond1_236, %_cond2_239
  %_cond1_n_cond2_cond3_242 = and i1 %_cond1_n_cond2_241, %_cond4_240
  br i1 %_cond1_n_cond2_cond3_242, label %183, label %184

; <label>:183:                                    ; preds = %177
  %_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_234
  %_address_in_parent_stack_bt_244 = bitcast i8* %_address_in_parent_stack_243 to i64*
  br label %184

; <label>:184:                                    ; preds = %177, %183
  %185 = phi i64* [ %_allin_new_bt_56, %177 ], [ %_address_in_parent_stack_bt_244, %183 ]
  %_new_load_245 = load i64, i64* %185
  store i64 %_new_load_245, i64* %RAX_val, !mcsema_real_eip !75
  %186 = inttoptr i64 %_new_load_245 to i64*, !mcsema_real_eip !76
  %187 = bitcast i64* %186 to i32*
  %_ptr_to_int_246 = ptrtoint i32* %187 to i64
  %_local_end_to_int_247 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_248 = bitcast i32* %187 to i8*
  %_offset_above_rbp_249 = sub i64 %_ptr_to_int_246, %_local_end_to_int_247
  %_pot_address_in_parent_stack_250 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_249
  %_cond1_251 = icmp ugt i8* %_ptr_bt_248, %_local_stack_end_ptr_
  %_cond2_1_252 = icmp ugt i8* %_ptr_bt_248, %_parent_stack_end_ptr_
  %_cond2_2_253 = icmp ult i8* %_ptr_bt_248, %_parent_stack_start_ptr_
  %_cond2_254 = or i1 %_cond2_1_252, %_cond2_2_253
  %_cond4_255 = icmp ule i8* %_pot_address_in_parent_stack_250, %_parent_stack_end_ptr_
  %_cond1_n_cond2_256 = and i1 %_cond1_251, %_cond2_254
  %_cond1_n_cond2_cond3_257 = and i1 %_cond1_n_cond2_256, %_cond4_255
  br i1 %_cond1_n_cond2_cond3_257, label %188, label %189

; <label>:188:                                    ; preds = %184
  %_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_249
  %_address_in_parent_stack_bt_259 = bitcast i8* %_address_in_parent_stack_258 to i32*
  br label %189

; <label>:189:                                    ; preds = %184, %188
  %190 = phi i32* [ %187, %184 ], [ %_address_in_parent_stack_bt_259, %188 ]
  %_new_load_260 = load i32, i32* %190
  %191 = zext i32 %_new_load_260 to i64, !mcsema_real_eip !76
  store i64 %191, i64* %R8_val, !mcsema_real_eip !76
  %192 = load i64, i64* %RSI_val, !mcsema_real_eip !77
  %193 = trunc i64 %192 to i32, !mcsema_real_eip !77
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_260, i32 %193)
  %194 = extractvalue { i32, i1 } %uadd, 0
  %195 = xor i32 %194, %193, !mcsema_real_eip !77
  %196 = xor i32 %195, %_new_load_260, !mcsema_real_eip !77
  %197 = and i32 %196, 16, !mcsema_real_eip !77
  %198 = icmp ne i32 %197, 0, !mcsema_real_eip !77
  store i1 %198, i1* %AF_val, !mcsema_real_eip !77
  %199 = icmp slt i32 %194, 0
  store i1 %199, i1* %SF_val, !mcsema_real_eip !77
  %200 = icmp eq i32 %194, 0, !mcsema_real_eip !77
  store i1 %200, i1* %ZF_val, !mcsema_real_eip !77
  %201 = xor i32 %_new_load_260, -2147483648, !mcsema_real_eip !77
  %202 = xor i32 %201, %193, !mcsema_real_eip !77
  %203 = and i32 %195, %202, !mcsema_real_eip !77
  %204 = icmp slt i32 %203, 0
  store i1 %204, i1* %OF_val, !mcsema_real_eip !77
  %205 = trunc i32 %194 to i8, !mcsema_real_eip !77
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !77
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  store i1 %208, i1* %PF_val, !mcsema_real_eip !77
  %209 = extractvalue { i32, i1 } %uadd, 1
  store i1 %209, i1* %CF_val, !mcsema_real_eip !77
  %210 = zext i32 %194 to i64, !mcsema_real_eip !77
  store i64 %210, i64* %RSI_val, !mcsema_real_eip !77
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %211 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -72
  %212 = add i64 %211, -72, !mcsema_real_eip !78
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !78
  %_ptr_to_int_261 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_local_end_to_int_262 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_263 = bitcast i64* %_allin_new_bt_59 to i8*
  %_offset_above_rbp_264 = sub i64 %_ptr_to_int_261, %_local_end_to_int_262
  %_pot_address_in_parent_stack_265 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_264
  %_cond1_266 = icmp ugt i8* %_ptr_bt_263, %_local_stack_end_ptr_
  %_cond2_1_267 = icmp ugt i8* %_ptr_bt_263, %_parent_stack_end_ptr_
  %_cond2_2_268 = icmp ult i8* %_ptr_bt_263, %_parent_stack_start_ptr_
  %_cond2_269 = or i1 %_cond2_1_267, %_cond2_2_268
  %_cond4_270 = icmp ule i8* %_pot_address_in_parent_stack_265, %_parent_stack_end_ptr_
  %_cond1_n_cond2_271 = and i1 %_cond1_266, %_cond2_269
  %_cond1_n_cond2_cond3_272 = and i1 %_cond1_n_cond2_271, %_cond4_270
  br i1 %_cond1_n_cond2_cond3_272, label %214, label %215

; <label>:214:                                    ; preds = %189
  %_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_264
  %_address_in_parent_stack_bt_274 = bitcast i8* %_address_in_parent_stack_273 to i64*
  br label %215

; <label>:215:                                    ; preds = %189, %214
  %216 = phi i64* [ %_allin_new_bt_59, %189 ], [ %_address_in_parent_stack_bt_274, %214 ]
  %_new_load_275 = load i64, i64* %216
  store i64 %_new_load_275, i64* %RAX_val, !mcsema_real_eip !78
  %217 = inttoptr i64 %_new_load_275 to i64*, !mcsema_real_eip !79
  %218 = bitcast i64* %217 to i32*
  %_ptr_to_int_276 = ptrtoint i32* %218 to i64
  %_local_end_to_int_277 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_278 = bitcast i32* %218 to i8*
  %_offset_above_rbp_279 = sub i64 %_ptr_to_int_276, %_local_end_to_int_277
  %_pot_address_in_parent_stack_280 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_279
  %_cond1_281 = icmp ugt i8* %_ptr_bt_278, %_local_stack_end_ptr_
  %_cond2_1_282 = icmp ugt i8* %_ptr_bt_278, %_parent_stack_end_ptr_
  %_cond2_2_283 = icmp ult i8* %_ptr_bt_278, %_parent_stack_start_ptr_
  %_cond2_284 = or i1 %_cond2_1_282, %_cond2_2_283
  %_cond4_285 = icmp ule i8* %_pot_address_in_parent_stack_280, %_parent_stack_end_ptr_
  %_cond1_n_cond2_286 = and i1 %_cond1_281, %_cond2_284
  %_cond1_n_cond2_cond3_287 = and i1 %_cond1_n_cond2_286, %_cond4_285
  br i1 %_cond1_n_cond2_cond3_287, label %219, label %220

; <label>:219:                                    ; preds = %215
  %_address_in_parent_stack_288 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_279
  %_address_in_parent_stack_bt_289 = bitcast i8* %_address_in_parent_stack_288 to i32*
  br label %220

; <label>:220:                                    ; preds = %215, %219
  %221 = phi i32* [ %218, %215 ], [ %_address_in_parent_stack_bt_289, %219 ]
  %_new_load_290 = load i32, i32* %221
  %222 = zext i32 %_new_load_290 to i64, !mcsema_real_eip !79
  store i64 %222, i64* %R8_val, !mcsema_real_eip !79
  %223 = load i64, i64* %RSI_val, !mcsema_real_eip !80
  %224 = trunc i64 %223 to i32, !mcsema_real_eip !80
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_290, i32 %224)
  %225 = extractvalue { i32, i1 } %uadd70, 0
  %226 = xor i32 %225, %224, !mcsema_real_eip !80
  %227 = xor i32 %226, %_new_load_290, !mcsema_real_eip !80
  %228 = and i32 %227, 16, !mcsema_real_eip !80
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !80
  store i1 %229, i1* %AF_val, !mcsema_real_eip !80
  %230 = icmp slt i32 %225, 0
  store i1 %230, i1* %SF_val, !mcsema_real_eip !80
  %231 = icmp eq i32 %225, 0, !mcsema_real_eip !80
  store i1 %231, i1* %ZF_val, !mcsema_real_eip !80
  %232 = xor i32 %_new_load_290, -2147483648, !mcsema_real_eip !80
  %233 = xor i32 %232, %224, !mcsema_real_eip !80
  %234 = and i32 %226, %233, !mcsema_real_eip !80
  %235 = icmp slt i32 %234, 0
  store i1 %235, i1* %OF_val, !mcsema_real_eip !80
  %236 = trunc i32 %225 to i8, !mcsema_real_eip !80
  %237 = tail call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !80
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  store i1 %239, i1* %PF_val, !mcsema_real_eip !80
  %240 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %240, i1* %CF_val, !mcsema_real_eip !80
  %241 = zext i32 %225 to i64, !mcsema_real_eip !80
  store i64 %241, i64* %RSI_val, !mcsema_real_eip !80
  %242 = load i64, i64* %R11_val, !mcsema_real_eip !81
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !81
  %244 = bitcast i64* %243 to i32*
  %_ptr_to_int_291 = ptrtoint i32* %244 to i64
  %_local_end_to_int_292 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_293 = bitcast i32* %244 to i8*
  %_offset_above_rbp_294 = sub i64 %_ptr_to_int_291, %_local_end_to_int_292
  %_pot_address_in_parent_stack_295 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_294
  %_cond1_296 = icmp ugt i8* %_ptr_bt_293, %_local_stack_end_ptr_
  %_cond2_1_297 = icmp ugt i8* %_ptr_bt_293, %_parent_stack_end_ptr_
  %_cond2_2_298 = icmp ult i8* %_ptr_bt_293, %_parent_stack_start_ptr_
  %_cond2_299 = or i1 %_cond2_1_297, %_cond2_2_298
  %_cond4_300 = icmp ule i8* %_pot_address_in_parent_stack_295, %_parent_stack_end_ptr_
  %_cond1_n_cond2_301 = and i1 %_cond1_296, %_cond2_299
  %_cond1_n_cond2_cond3_302 = and i1 %_cond1_n_cond2_301, %_cond4_300
  br i1 %_cond1_n_cond2_cond3_302, label %245, label %246

; <label>:245:                                    ; preds = %220
  %_address_in_parent_stack_303 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_294
  %_address_in_parent_stack_bt_304 = bitcast i8* %_address_in_parent_stack_303 to i32*
  br label %246

; <label>:246:                                    ; preds = %220, %245
  %247 = phi i32* [ %244, %220 ], [ %_address_in_parent_stack_bt_304, %245 ]
  %_new_load_305 = load i32, i32* %247
  %248 = zext i32 %_new_load_305 to i64, !mcsema_real_eip !81
  store i64 %248, i64* %R8_val, !mcsema_real_eip !81
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -96
  %250 = add i64 %249, -96, !mcsema_real_eip !82
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !82
  %_ptr_to_int_306 = ptrtoint i64* %_allin_new_bt_62 to i64
  %_local_end_to_int_307 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_308 = bitcast i64* %_allin_new_bt_62 to i8*
  %_offset_above_rbp_309 = sub i64 %_ptr_to_int_306, %_local_end_to_int_307
  %_pot_address_in_parent_stack_310 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_309
  %_cond1_311 = icmp ugt i8* %_ptr_bt_308, %_local_stack_end_ptr_
  %_cond2_1_312 = icmp ugt i8* %_ptr_bt_308, %_parent_stack_end_ptr_
  %_cond2_2_313 = icmp ult i8* %_ptr_bt_308, %_parent_stack_start_ptr_
  %_cond2_314 = or i1 %_cond2_1_312, %_cond2_2_313
  %_cond4_315 = icmp ule i8* %_pot_address_in_parent_stack_310, %_parent_stack_end_ptr_
  %_cond1_n_cond2_316 = and i1 %_cond1_311, %_cond2_314
  %_cond1_n_cond2_cond3_317 = and i1 %_cond1_n_cond2_316, %_cond4_315
  br i1 %_cond1_n_cond2_cond3_317, label %252, label %253

; <label>:252:                                    ; preds = %246
  %_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_309
  %_address_in_parent_stack_bt_319 = bitcast i8* %_address_in_parent_stack_318 to i64*
  br label %253

; <label>:253:                                    ; preds = %246, %252
  %254 = phi i64* [ %_allin_new_bt_62, %246 ], [ %_address_in_parent_stack_bt_319, %252 ]
  %_new_load_320 = load i64, i64* %254
  store i64 %_new_load_320, i64* %RAX_val, !mcsema_real_eip !82
  %255 = inttoptr i64 %_new_load_320 to i64*, !mcsema_real_eip !83
  %256 = bitcast i64* %255 to i32*
  %_ptr_to_int_321 = ptrtoint i32* %256 to i64
  %_local_end_to_int_322 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_323 = bitcast i32* %256 to i8*
  %_offset_above_rbp_324 = sub i64 %_ptr_to_int_321, %_local_end_to_int_322
  %_pot_address_in_parent_stack_325 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_324
  %_cond1_326 = icmp ugt i8* %_ptr_bt_323, %_local_stack_end_ptr_
  %_cond2_1_327 = icmp ugt i8* %_ptr_bt_323, %_parent_stack_end_ptr_
  %_cond2_2_328 = icmp ult i8* %_ptr_bt_323, %_parent_stack_start_ptr_
  %_cond2_329 = or i1 %_cond2_1_327, %_cond2_2_328
  %_cond4_330 = icmp ule i8* %_pot_address_in_parent_stack_325, %_parent_stack_end_ptr_
  %_cond1_n_cond2_331 = and i1 %_cond1_326, %_cond2_329
  %_cond1_n_cond2_cond3_332 = and i1 %_cond1_n_cond2_331, %_cond4_330
  br i1 %_cond1_n_cond2_cond3_332, label %257, label %258

; <label>:257:                                    ; preds = %253
  %_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_324
  %_address_in_parent_stack_bt_334 = bitcast i8* %_address_in_parent_stack_333 to i32*
  br label %258

; <label>:258:                                    ; preds = %253, %257
  %259 = phi i32* [ %256, %253 ], [ %_address_in_parent_stack_bt_334, %257 ]
  %_new_load_335 = load i32, i32* %259
  %260 = zext i32 %_new_load_335 to i64, !mcsema_real_eip !83
  store i64 %260, i64* %R9_val, !mcsema_real_eip !83
  %261 = load i64, i64* %R8_val, !mcsema_real_eip !84
  %262 = trunc i64 %261 to i32, !mcsema_real_eip !84
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_335, i32 %262)
  %263 = extractvalue { i32, i1 } %uadd71, 0
  %264 = xor i32 %263, %262, !mcsema_real_eip !84
  %265 = xor i32 %264, %_new_load_335, !mcsema_real_eip !84
  %266 = and i32 %265, 16, !mcsema_real_eip !84
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !84
  store i1 %267, i1* %AF_val, !mcsema_real_eip !84
  %268 = icmp slt i32 %263, 0
  store i1 %268, i1* %SF_val, !mcsema_real_eip !84
  %269 = icmp eq i32 %263, 0, !mcsema_real_eip !84
  store i1 %269, i1* %ZF_val, !mcsema_real_eip !84
  %270 = xor i32 %_new_load_335, -2147483648, !mcsema_real_eip !84
  %271 = xor i32 %270, %262, !mcsema_real_eip !84
  %272 = and i32 %264, %271, !mcsema_real_eip !84
  %273 = icmp slt i32 %272, 0
  store i1 %273, i1* %OF_val, !mcsema_real_eip !84
  %274 = trunc i32 %263 to i8, !mcsema_real_eip !84
  %275 = tail call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !84
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  store i1 %277, i1* %PF_val, !mcsema_real_eip !84
  %278 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %278, i1* %CF_val, !mcsema_real_eip !84
  %279 = zext i32 %263 to i64, !mcsema_real_eip !84
  store i64 %279, i64* %R8_val, !mcsema_real_eip !84
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %280 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -104
  %281 = add i64 %280, -104, !mcsema_real_eip !85
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !85
  %_ptr_to_int_336 = ptrtoint i64* %_allin_new_bt_65 to i64
  %_local_end_to_int_337 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_338 = bitcast i64* %_allin_new_bt_65 to i8*
  %_offset_above_rbp_339 = sub i64 %_ptr_to_int_336, %_local_end_to_int_337
  %_pot_address_in_parent_stack_340 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_339
  %_cond1_341 = icmp ugt i8* %_ptr_bt_338, %_local_stack_end_ptr_
  %_cond2_1_342 = icmp ugt i8* %_ptr_bt_338, %_parent_stack_end_ptr_
  %_cond2_2_343 = icmp ult i8* %_ptr_bt_338, %_parent_stack_start_ptr_
  %_cond2_344 = or i1 %_cond2_1_342, %_cond2_2_343
  %_cond4_345 = icmp ule i8* %_pot_address_in_parent_stack_340, %_parent_stack_end_ptr_
  %_cond1_n_cond2_346 = and i1 %_cond1_341, %_cond2_344
  %_cond1_n_cond2_cond3_347 = and i1 %_cond1_n_cond2_346, %_cond4_345
  br i1 %_cond1_n_cond2_cond3_347, label %283, label %284

; <label>:283:                                    ; preds = %258
  %_address_in_parent_stack_348 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_339
  %_address_in_parent_stack_bt_349 = bitcast i8* %_address_in_parent_stack_348 to i64*
  br label %284

; <label>:284:                                    ; preds = %258, %283
  %285 = phi i64* [ %_allin_new_bt_65, %258 ], [ %_address_in_parent_stack_bt_349, %283 ]
  %_new_load_350 = load i64, i64* %285
  store i64 %_new_load_350, i64* %RAX_val, !mcsema_real_eip !85
  %286 = inttoptr i64 %_new_load_350 to i64*, !mcsema_real_eip !86
  %287 = bitcast i64* %286 to i32*
  %_ptr_to_int_351 = ptrtoint i32* %287 to i64
  %_local_end_to_int_352 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_353 = bitcast i32* %287 to i8*
  %_offset_above_rbp_354 = sub i64 %_ptr_to_int_351, %_local_end_to_int_352
  %_pot_address_in_parent_stack_355 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_354
  %_cond1_356 = icmp ugt i8* %_ptr_bt_353, %_local_stack_end_ptr_
  %_cond2_1_357 = icmp ugt i8* %_ptr_bt_353, %_parent_stack_end_ptr_
  %_cond2_2_358 = icmp ult i8* %_ptr_bt_353, %_parent_stack_start_ptr_
  %_cond2_359 = or i1 %_cond2_1_357, %_cond2_2_358
  %_cond4_360 = icmp ule i8* %_pot_address_in_parent_stack_355, %_parent_stack_end_ptr_
  %_cond1_n_cond2_361 = and i1 %_cond1_356, %_cond2_359
  %_cond1_n_cond2_cond3_362 = and i1 %_cond1_n_cond2_361, %_cond4_360
  br i1 %_cond1_n_cond2_cond3_362, label %288, label %289

; <label>:288:                                    ; preds = %284
  %_address_in_parent_stack_363 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_354
  %_address_in_parent_stack_bt_364 = bitcast i8* %_address_in_parent_stack_363 to i32*
  br label %289

; <label>:289:                                    ; preds = %284, %288
  %290 = phi i32* [ %287, %284 ], [ %_address_in_parent_stack_bt_364, %288 ]
  %_new_load_365 = load i32, i32* %290
  %291 = zext i32 %_new_load_365 to i64, !mcsema_real_eip !86
  store i64 %291, i64* %R9_val, !mcsema_real_eip !86
  %292 = load i64, i64* %R8_val, !mcsema_real_eip !87
  %293 = trunc i64 %292 to i32, !mcsema_real_eip !87
  %294 = add i32 %_new_load_365, %293
  %295 = zext i32 %294 to i64, !mcsema_real_eip !87
  store i64 %295, i64* %R8_val, !mcsema_real_eip !87
  %296 = load i64, i64* %RSI_val, !mcsema_real_eip !88
  %297 = trunc i64 %296 to i32, !mcsema_real_eip !88
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %294, i32 %297)
  %298 = extractvalue { i32, i1 } %uadd73, 0
  %299 = xor i32 %298, %297, !mcsema_real_eip !88
  %300 = xor i32 %299, %294, !mcsema_real_eip !88
  %301 = and i32 %300, 16, !mcsema_real_eip !88
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !88
  store i1 %302, i1* %AF_val, !mcsema_real_eip !88
  %303 = icmp slt i32 %298, 0
  store i1 %303, i1* %SF_val, !mcsema_real_eip !88
  %304 = icmp eq i32 %298, 0, !mcsema_real_eip !88
  store i1 %304, i1* %ZF_val, !mcsema_real_eip !88
  %305 = xor i32 %294, -2147483648, !mcsema_real_eip !88
  %306 = xor i32 %305, %297, !mcsema_real_eip !88
  %307 = and i32 %299, %306, !mcsema_real_eip !88
  %308 = icmp slt i32 %307, 0
  store i1 %308, i1* %OF_val, !mcsema_real_eip !88
  %309 = trunc i32 %298 to i8, !mcsema_real_eip !88
  %310 = tail call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !88
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  store i1 %312, i1* %PF_val, !mcsema_real_eip !88
  %313 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %313, i1* %CF_val, !mcsema_real_eip !88
  %314 = zext i32 %298 to i64, !mcsema_real_eip !88
  store i64 %314, i64* %RSI_val, !mcsema_real_eip !88
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %315 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -120
  %316 = add i64 %315, -120, !mcsema_real_eip !89
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !89
  %318 = bitcast i64* %_allin_new_bt_68 to i32*
  store i32 %298, i32* %318, !mcsema_real_eip !89
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -36
  %320 = add i64 %319, -36, !mcsema_real_eip !90
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !90
  %322 = bitcast i64* %_allin_new_bt_71 to i32*
  %_ptr_to_int_366 = ptrtoint i32* %322 to i64
  %_local_end_to_int_367 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_368 = bitcast i32* %322 to i8*
  %_offset_above_rbp_369 = sub i64 %_ptr_to_int_366, %_local_end_to_int_367
  %_pot_address_in_parent_stack_370 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_369
  %_cond1_371 = icmp ugt i8* %_ptr_bt_368, %_local_stack_end_ptr_
  %_cond2_1_372 = icmp ugt i8* %_ptr_bt_368, %_parent_stack_end_ptr_
  %_cond2_2_373 = icmp ult i8* %_ptr_bt_368, %_parent_stack_start_ptr_
  %_cond2_374 = or i1 %_cond2_1_372, %_cond2_2_373
  %_cond4_375 = icmp ule i8* %_pot_address_in_parent_stack_370, %_parent_stack_end_ptr_
  %_cond1_n_cond2_376 = and i1 %_cond1_371, %_cond2_374
  %_cond1_n_cond2_cond3_377 = and i1 %_cond1_n_cond2_376, %_cond4_375
  br i1 %_cond1_n_cond2_cond3_377, label %323, label %324

; <label>:323:                                    ; preds = %289
  %_address_in_parent_stack_378 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_369
  %_address_in_parent_stack_bt_379 = bitcast i8* %_address_in_parent_stack_378 to i32*
  br label %324

; <label>:324:                                    ; preds = %289, %323
  %325 = phi i32* [ %322, %289 ], [ %_address_in_parent_stack_bt_379, %323 ]
  %_new_load_380 = load i32, i32* %325
  %326 = zext i32 %_new_load_380 to i64, !mcsema_real_eip !90
  store i64 %326, i64* %RSI_val, !mcsema_real_eip !90
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %327 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -64
  %328 = add i64 %327, -64, !mcsema_real_eip !91
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !91
  %_ptr_to_int_381 = ptrtoint i64* %_allin_new_bt_74 to i64
  %_local_end_to_int_382 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_383 = bitcast i64* %_allin_new_bt_74 to i8*
  %_offset_above_rbp_384 = sub i64 %_ptr_to_int_381, %_local_end_to_int_382
  %_pot_address_in_parent_stack_385 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_384
  %_cond1_386 = icmp ugt i8* %_ptr_bt_383, %_local_stack_end_ptr_
  %_cond2_1_387 = icmp ugt i8* %_ptr_bt_383, %_parent_stack_end_ptr_
  %_cond2_2_388 = icmp ult i8* %_ptr_bt_383, %_parent_stack_start_ptr_
  %_cond2_389 = or i1 %_cond2_1_387, %_cond2_2_388
  %_cond4_390 = icmp ule i8* %_pot_address_in_parent_stack_385, %_parent_stack_end_ptr_
  %_cond1_n_cond2_391 = and i1 %_cond1_386, %_cond2_389
  %_cond1_n_cond2_cond3_392 = and i1 %_cond1_n_cond2_391, %_cond4_390
  br i1 %_cond1_n_cond2_cond3_392, label %330, label %331

; <label>:330:                                    ; preds = %324
  %_address_in_parent_stack_393 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_384
  %_address_in_parent_stack_bt_394 = bitcast i8* %_address_in_parent_stack_393 to i64*
  br label %331

; <label>:331:                                    ; preds = %324, %330
  %332 = phi i64* [ %_allin_new_bt_74, %324 ], [ %_address_in_parent_stack_bt_394, %330 ]
  %_new_load_395 = load i64, i64* %332
  store i64 %_new_load_395, i64* %RAX_val, !mcsema_real_eip !91
  %333 = add i64 %_new_load_395, 4, !mcsema_real_eip !92
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !92
  %335 = bitcast i64* %334 to i32*
  %_ptr_to_int_396 = ptrtoint i32* %335 to i64
  %_local_end_to_int_397 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_398 = bitcast i32* %335 to i8*
  %_offset_above_rbp_399 = sub i64 %_ptr_to_int_396, %_local_end_to_int_397
  %_pot_address_in_parent_stack_400 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_399
  %_cond1_401 = icmp ugt i8* %_ptr_bt_398, %_local_stack_end_ptr_
  %_cond2_1_402 = icmp ugt i8* %_ptr_bt_398, %_parent_stack_end_ptr_
  %_cond2_2_403 = icmp ult i8* %_ptr_bt_398, %_parent_stack_start_ptr_
  %_cond2_404 = or i1 %_cond2_1_402, %_cond2_2_403
  %_cond4_405 = icmp ule i8* %_pot_address_in_parent_stack_400, %_parent_stack_end_ptr_
  %_cond1_n_cond2_406 = and i1 %_cond1_401, %_cond2_404
  %_cond1_n_cond2_cond3_407 = and i1 %_cond1_n_cond2_406, %_cond4_405
  br i1 %_cond1_n_cond2_cond3_407, label %336, label %337

; <label>:336:                                    ; preds = %331
  %_address_in_parent_stack_408 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_399
  %_address_in_parent_stack_bt_409 = bitcast i8* %_address_in_parent_stack_408 to i32*
  br label %337

; <label>:337:                                    ; preds = %331, %336
  %338 = phi i32* [ %335, %331 ], [ %_address_in_parent_stack_bt_409, %336 ]
  %_new_load_410 = load i32, i32* %338
  %339 = zext i32 %_new_load_410 to i64, !mcsema_real_eip !92
  store i64 %339, i64* %R8_val, !mcsema_real_eip !92
  %340 = load i64, i64* %RSI_val, !mcsema_real_eip !93
  %341 = trunc i64 %340 to i32, !mcsema_real_eip !93
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_410, i32 %341)
  %342 = extractvalue { i32, i1 } %uadd74, 0
  %343 = xor i32 %342, %341, !mcsema_real_eip !93
  %344 = xor i32 %343, %_new_load_410, !mcsema_real_eip !93
  %345 = and i32 %344, 16, !mcsema_real_eip !93
  %346 = icmp ne i32 %345, 0, !mcsema_real_eip !93
  store i1 %346, i1* %AF_val, !mcsema_real_eip !93
  %347 = icmp slt i32 %342, 0
  store i1 %347, i1* %SF_val, !mcsema_real_eip !93
  %348 = icmp eq i32 %342, 0, !mcsema_real_eip !93
  store i1 %348, i1* %ZF_val, !mcsema_real_eip !93
  %349 = xor i32 %_new_load_410, -2147483648, !mcsema_real_eip !93
  %350 = xor i32 %349, %341, !mcsema_real_eip !93
  %351 = and i32 %343, %350, !mcsema_real_eip !93
  %352 = icmp slt i32 %351, 0
  store i1 %352, i1* %OF_val, !mcsema_real_eip !93
  %353 = trunc i32 %342 to i8, !mcsema_real_eip !93
  %354 = tail call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !93
  %355 = and i8 %354, 1
  %356 = icmp eq i8 %355, 0
  store i1 %356, i1* %PF_val, !mcsema_real_eip !93
  %357 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %357, i1* %CF_val, !mcsema_real_eip !93
  %358 = zext i32 %342 to i64, !mcsema_real_eip !93
  store i64 %358, i64* %RSI_val, !mcsema_real_eip !93
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %359 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -72
  %360 = add i64 %359, -72, !mcsema_real_eip !94
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %361 = inttoptr i64 %360 to i64*, !mcsema_real_eip !94
  %_ptr_to_int_411 = ptrtoint i64* %_allin_new_bt_77 to i64
  %_local_end_to_int_412 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_413 = bitcast i64* %_allin_new_bt_77 to i8*
  %_offset_above_rbp_414 = sub i64 %_ptr_to_int_411, %_local_end_to_int_412
  %_pot_address_in_parent_stack_415 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_414
  %_cond1_416 = icmp ugt i8* %_ptr_bt_413, %_local_stack_end_ptr_
  %_cond2_1_417 = icmp ugt i8* %_ptr_bt_413, %_parent_stack_end_ptr_
  %_cond2_2_418 = icmp ult i8* %_ptr_bt_413, %_parent_stack_start_ptr_
  %_cond2_419 = or i1 %_cond2_1_417, %_cond2_2_418
  %_cond4_420 = icmp ule i8* %_pot_address_in_parent_stack_415, %_parent_stack_end_ptr_
  %_cond1_n_cond2_421 = and i1 %_cond1_416, %_cond2_419
  %_cond1_n_cond2_cond3_422 = and i1 %_cond1_n_cond2_421, %_cond4_420
  br i1 %_cond1_n_cond2_cond3_422, label %362, label %363

; <label>:362:                                    ; preds = %337
  %_address_in_parent_stack_423 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_414
  %_address_in_parent_stack_bt_424 = bitcast i8* %_address_in_parent_stack_423 to i64*
  br label %363

; <label>:363:                                    ; preds = %337, %362
  %364 = phi i64* [ %_allin_new_bt_77, %337 ], [ %_address_in_parent_stack_bt_424, %362 ]
  %_new_load_425 = load i64, i64* %364
  store i64 %_new_load_425, i64* %RAX_val, !mcsema_real_eip !94
  %365 = add i64 %_new_load_425, 4, !mcsema_real_eip !95
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !95
  %367 = bitcast i64* %366 to i32*
  %_ptr_to_int_426 = ptrtoint i32* %367 to i64
  %_local_end_to_int_427 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_428 = bitcast i32* %367 to i8*
  %_offset_above_rbp_429 = sub i64 %_ptr_to_int_426, %_local_end_to_int_427
  %_pot_address_in_parent_stack_430 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_429
  %_cond1_431 = icmp ugt i8* %_ptr_bt_428, %_local_stack_end_ptr_
  %_cond2_1_432 = icmp ugt i8* %_ptr_bt_428, %_parent_stack_end_ptr_
  %_cond2_2_433 = icmp ult i8* %_ptr_bt_428, %_parent_stack_start_ptr_
  %_cond2_434 = or i1 %_cond2_1_432, %_cond2_2_433
  %_cond4_435 = icmp ule i8* %_pot_address_in_parent_stack_430, %_parent_stack_end_ptr_
  %_cond1_n_cond2_436 = and i1 %_cond1_431, %_cond2_434
  %_cond1_n_cond2_cond3_437 = and i1 %_cond1_n_cond2_436, %_cond4_435
  br i1 %_cond1_n_cond2_cond3_437, label %368, label %369

; <label>:368:                                    ; preds = %363
  %_address_in_parent_stack_438 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_429
  %_address_in_parent_stack_bt_439 = bitcast i8* %_address_in_parent_stack_438 to i32*
  br label %369

; <label>:369:                                    ; preds = %363, %368
  %370 = phi i32* [ %367, %363 ], [ %_address_in_parent_stack_bt_439, %368 ]
  %_new_load_440 = load i32, i32* %370
  %371 = zext i32 %_new_load_440 to i64, !mcsema_real_eip !95
  store i64 %371, i64* %R8_val, !mcsema_real_eip !95
  %372 = load i64, i64* %RSI_val, !mcsema_real_eip !96
  %373 = trunc i64 %372 to i32, !mcsema_real_eip !96
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_440, i32 %373)
  %374 = extractvalue { i32, i1 } %uadd75, 0
  %375 = xor i32 %374, %373, !mcsema_real_eip !96
  %376 = xor i32 %375, %_new_load_440, !mcsema_real_eip !96
  %377 = and i32 %376, 16, !mcsema_real_eip !96
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !96
  store i1 %378, i1* %AF_val, !mcsema_real_eip !96
  %379 = icmp slt i32 %374, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !96
  %380 = icmp eq i32 %374, 0, !mcsema_real_eip !96
  store i1 %380, i1* %ZF_val, !mcsema_real_eip !96
  %381 = xor i32 %_new_load_440, -2147483648, !mcsema_real_eip !96
  %382 = xor i32 %381, %373, !mcsema_real_eip !96
  %383 = and i32 %375, %382, !mcsema_real_eip !96
  %384 = icmp slt i32 %383, 0
  store i1 %384, i1* %OF_val, !mcsema_real_eip !96
  %385 = trunc i32 %374 to i8, !mcsema_real_eip !96
  %386 = tail call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !96
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF_val, !mcsema_real_eip !96
  %389 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %389, i1* %CF_val, !mcsema_real_eip !96
  %390 = zext i32 %374 to i64, !mcsema_real_eip !96
  store i64 %390, i64* %RSI_val, !mcsema_real_eip !96
  %391 = load i64, i64* %R11_val, !mcsema_real_eip !97
  %392 = add i64 %391, 4, !mcsema_real_eip !97
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !97
  %394 = bitcast i64* %393 to i32*
  %_ptr_to_int_441 = ptrtoint i32* %394 to i64
  %_local_end_to_int_442 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_443 = bitcast i32* %394 to i8*
  %_offset_above_rbp_444 = sub i64 %_ptr_to_int_441, %_local_end_to_int_442
  %_pot_address_in_parent_stack_445 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_444
  %_cond1_446 = icmp ugt i8* %_ptr_bt_443, %_local_stack_end_ptr_
  %_cond2_1_447 = icmp ugt i8* %_ptr_bt_443, %_parent_stack_end_ptr_
  %_cond2_2_448 = icmp ult i8* %_ptr_bt_443, %_parent_stack_start_ptr_
  %_cond2_449 = or i1 %_cond2_1_447, %_cond2_2_448
  %_cond4_450 = icmp ule i8* %_pot_address_in_parent_stack_445, %_parent_stack_end_ptr_
  %_cond1_n_cond2_451 = and i1 %_cond1_446, %_cond2_449
  %_cond1_n_cond2_cond3_452 = and i1 %_cond1_n_cond2_451, %_cond4_450
  br i1 %_cond1_n_cond2_cond3_452, label %395, label %396

; <label>:395:                                    ; preds = %369
  %_address_in_parent_stack_453 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_444
  %_address_in_parent_stack_bt_454 = bitcast i8* %_address_in_parent_stack_453 to i32*
  br label %396

; <label>:396:                                    ; preds = %369, %395
  %397 = phi i32* [ %394, %369 ], [ %_address_in_parent_stack_bt_454, %395 ]
  %_new_load_455 = load i32, i32* %397
  %398 = zext i32 %_new_load_455 to i64, !mcsema_real_eip !97
  store i64 %398, i64* %R8_val, !mcsema_real_eip !97
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %399 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -96
  %400 = add i64 %399, -96, !mcsema_real_eip !98
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !98
  %_ptr_to_int_456 = ptrtoint i64* %_allin_new_bt_80 to i64
  %_local_end_to_int_457 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_458 = bitcast i64* %_allin_new_bt_80 to i8*
  %_offset_above_rbp_459 = sub i64 %_ptr_to_int_456, %_local_end_to_int_457
  %_pot_address_in_parent_stack_460 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_459
  %_cond1_461 = icmp ugt i8* %_ptr_bt_458, %_local_stack_end_ptr_
  %_cond2_1_462 = icmp ugt i8* %_ptr_bt_458, %_parent_stack_end_ptr_
  %_cond2_2_463 = icmp ult i8* %_ptr_bt_458, %_parent_stack_start_ptr_
  %_cond2_464 = or i1 %_cond2_1_462, %_cond2_2_463
  %_cond4_465 = icmp ule i8* %_pot_address_in_parent_stack_460, %_parent_stack_end_ptr_
  %_cond1_n_cond2_466 = and i1 %_cond1_461, %_cond2_464
  %_cond1_n_cond2_cond3_467 = and i1 %_cond1_n_cond2_466, %_cond4_465
  br i1 %_cond1_n_cond2_cond3_467, label %402, label %403

; <label>:402:                                    ; preds = %396
  %_address_in_parent_stack_468 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_459
  %_address_in_parent_stack_bt_469 = bitcast i8* %_address_in_parent_stack_468 to i64*
  br label %403

; <label>:403:                                    ; preds = %396, %402
  %404 = phi i64* [ %_allin_new_bt_80, %396 ], [ %_address_in_parent_stack_bt_469, %402 ]
  %_new_load_470 = load i64, i64* %404
  store i64 %_new_load_470, i64* %RAX_val, !mcsema_real_eip !98
  %405 = add i64 %_new_load_470, 4, !mcsema_real_eip !99
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !99
  %407 = bitcast i64* %406 to i32*
  %_ptr_to_int_471 = ptrtoint i32* %407 to i64
  %_local_end_to_int_472 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_473 = bitcast i32* %407 to i8*
  %_offset_above_rbp_474 = sub i64 %_ptr_to_int_471, %_local_end_to_int_472
  %_pot_address_in_parent_stack_475 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_474
  %_cond1_476 = icmp ugt i8* %_ptr_bt_473, %_local_stack_end_ptr_
  %_cond2_1_477 = icmp ugt i8* %_ptr_bt_473, %_parent_stack_end_ptr_
  %_cond2_2_478 = icmp ult i8* %_ptr_bt_473, %_parent_stack_start_ptr_
  %_cond2_479 = or i1 %_cond2_1_477, %_cond2_2_478
  %_cond4_480 = icmp ule i8* %_pot_address_in_parent_stack_475, %_parent_stack_end_ptr_
  %_cond1_n_cond2_481 = and i1 %_cond1_476, %_cond2_479
  %_cond1_n_cond2_cond3_482 = and i1 %_cond1_n_cond2_481, %_cond4_480
  br i1 %_cond1_n_cond2_cond3_482, label %408, label %409

; <label>:408:                                    ; preds = %403
  %_address_in_parent_stack_483 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_474
  %_address_in_parent_stack_bt_484 = bitcast i8* %_address_in_parent_stack_483 to i32*
  br label %409

; <label>:409:                                    ; preds = %403, %408
  %410 = phi i32* [ %407, %403 ], [ %_address_in_parent_stack_bt_484, %408 ]
  %_new_load_485 = load i32, i32* %410
  %411 = zext i32 %_new_load_485 to i64, !mcsema_real_eip !99
  store i64 %411, i64* %R9_val, !mcsema_real_eip !99
  %412 = load i64, i64* %R8_val, !mcsema_real_eip !100
  %413 = trunc i64 %412 to i32, !mcsema_real_eip !100
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_485, i32 %413)
  %414 = extractvalue { i32, i1 } %uadd76, 0
  %415 = xor i32 %414, %413, !mcsema_real_eip !100
  %416 = xor i32 %415, %_new_load_485, !mcsema_real_eip !100
  %417 = and i32 %416, 16, !mcsema_real_eip !100
  %418 = icmp ne i32 %417, 0, !mcsema_real_eip !100
  store i1 %418, i1* %AF_val, !mcsema_real_eip !100
  %419 = icmp slt i32 %414, 0
  store i1 %419, i1* %SF_val, !mcsema_real_eip !100
  %420 = icmp eq i32 %414, 0, !mcsema_real_eip !100
  store i1 %420, i1* %ZF_val, !mcsema_real_eip !100
  %421 = xor i32 %_new_load_485, -2147483648, !mcsema_real_eip !100
  %422 = xor i32 %421, %413, !mcsema_real_eip !100
  %423 = and i32 %415, %422, !mcsema_real_eip !100
  %424 = icmp slt i32 %423, 0
  store i1 %424, i1* %OF_val, !mcsema_real_eip !100
  %425 = trunc i32 %414 to i8, !mcsema_real_eip !100
  %426 = tail call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !100
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF_val, !mcsema_real_eip !100
  %429 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %429, i1* %CF_val, !mcsema_real_eip !100
  %430 = zext i32 %414 to i64, !mcsema_real_eip !100
  store i64 %430, i64* %R8_val, !mcsema_real_eip !100
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -104
  %432 = add i64 %431, -104, !mcsema_real_eip !101
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !101
  %_ptr_to_int_486 = ptrtoint i64* %_allin_new_bt_83 to i64
  %_local_end_to_int_487 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_488 = bitcast i64* %_allin_new_bt_83 to i8*
  %_offset_above_rbp_489 = sub i64 %_ptr_to_int_486, %_local_end_to_int_487
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_ptr_bt_488, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_ptr_bt_488, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_ptr_bt_488, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  br i1 %_cond1_n_cond2_cond3_497, label %434, label %435

; <label>:434:                                    ; preds = %409
  %_address_in_parent_stack_498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_address_in_parent_stack_bt_499 = bitcast i8* %_address_in_parent_stack_498 to i64*
  br label %435

; <label>:435:                                    ; preds = %409, %434
  %436 = phi i64* [ %_allin_new_bt_83, %409 ], [ %_address_in_parent_stack_bt_499, %434 ]
  %_new_load_500 = load i64, i64* %436
  store i64 %_new_load_500, i64* %RAX_val, !mcsema_real_eip !101
  %437 = add i64 %_new_load_500, 4, !mcsema_real_eip !102
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !102
  %439 = bitcast i64* %438 to i32*
  %_ptr_to_int_501 = ptrtoint i32* %439 to i64
  %_local_end_to_int_502 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_503 = bitcast i32* %439 to i8*
  %_offset_above_rbp_504 = sub i64 %_ptr_to_int_501, %_local_end_to_int_502
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_ptr_bt_503, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_ptr_bt_503, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_ptr_bt_503, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  br i1 %_cond1_n_cond2_cond3_512, label %440, label %441

; <label>:440:                                    ; preds = %435
  %_address_in_parent_stack_513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_address_in_parent_stack_bt_514 = bitcast i8* %_address_in_parent_stack_513 to i32*
  br label %441

; <label>:441:                                    ; preds = %435, %440
  %442 = phi i32* [ %439, %435 ], [ %_address_in_parent_stack_bt_514, %440 ]
  %_new_load_515 = load i32, i32* %442
  %443 = zext i32 %_new_load_515 to i64, !mcsema_real_eip !102
  store i64 %443, i64* %R9_val, !mcsema_real_eip !102
  %444 = load i64, i64* %R8_val, !mcsema_real_eip !103
  %445 = trunc i64 %444 to i32, !mcsema_real_eip !103
  %446 = add i32 %_new_load_515, %445
  %447 = zext i32 %446 to i64, !mcsema_real_eip !103
  store i64 %447, i64* %R8_val, !mcsema_real_eip !103
  %448 = load i64, i64* %RSI_val, !mcsema_real_eip !104
  %449 = trunc i64 %448 to i32, !mcsema_real_eip !104
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %446, i32 %449)
  %450 = extractvalue { i32, i1 } %uadd78, 0
  %451 = xor i32 %450, %449, !mcsema_real_eip !104
  %452 = xor i32 %451, %446, !mcsema_real_eip !104
  %453 = and i32 %452, 16, !mcsema_real_eip !104
  %454 = icmp ne i32 %453, 0, !mcsema_real_eip !104
  store i1 %454, i1* %AF_val, !mcsema_real_eip !104
  %455 = icmp slt i32 %450, 0
  store i1 %455, i1* %SF_val, !mcsema_real_eip !104
  %456 = icmp eq i32 %450, 0, !mcsema_real_eip !104
  store i1 %456, i1* %ZF_val, !mcsema_real_eip !104
  %457 = xor i32 %446, -2147483648, !mcsema_real_eip !104
  %458 = xor i32 %457, %449, !mcsema_real_eip !104
  %459 = and i32 %451, %458, !mcsema_real_eip !104
  %460 = icmp slt i32 %459, 0
  store i1 %460, i1* %OF_val, !mcsema_real_eip !104
  %461 = trunc i32 %450 to i8, !mcsema_real_eip !104
  %462 = tail call i8 @llvm.ctpop.i8(i8 %461), !mcsema_real_eip !104
  %463 = and i8 %462, 1
  %464 = icmp eq i8 %463, 0
  store i1 %464, i1* %PF_val, !mcsema_real_eip !104
  %465 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %465, i1* %CF_val, !mcsema_real_eip !104
  %466 = zext i32 %450 to i64, !mcsema_real_eip !104
  store i64 %466, i64* %RSI_val, !mcsema_real_eip !104
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %467 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -116
  %468 = add i64 %467, -116, !mcsema_real_eip !105
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !105
  %470 = bitcast i64* %_allin_new_bt_86 to i32*
  store i32 %450, i32* %470, !mcsema_real_eip !105
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %471 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -32
  %472 = add i64 %471, -32, !mcsema_real_eip !106
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !106
  %474 = bitcast i64* %_allin_new_bt_89 to i32*
  %_ptr_to_int_516 = ptrtoint i32* %474 to i64
  %_local_end_to_int_517 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_518 = bitcast i32* %474 to i8*
  %_offset_above_rbp_519 = sub i64 %_ptr_to_int_516, %_local_end_to_int_517
  %_pot_address_in_parent_stack_520 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_519
  %_cond1_521 = icmp ugt i8* %_ptr_bt_518, %_local_stack_end_ptr_
  %_cond2_1_522 = icmp ugt i8* %_ptr_bt_518, %_parent_stack_end_ptr_
  %_cond2_2_523 = icmp ult i8* %_ptr_bt_518, %_parent_stack_start_ptr_
  %_cond2_524 = or i1 %_cond2_1_522, %_cond2_2_523
  %_cond4_525 = icmp ule i8* %_pot_address_in_parent_stack_520, %_parent_stack_end_ptr_
  %_cond1_n_cond2_526 = and i1 %_cond1_521, %_cond2_524
  %_cond1_n_cond2_cond3_527 = and i1 %_cond1_n_cond2_526, %_cond4_525
  br i1 %_cond1_n_cond2_cond3_527, label %475, label %476

; <label>:475:                                    ; preds = %441
  %_address_in_parent_stack_528 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_519
  %_address_in_parent_stack_bt_529 = bitcast i8* %_address_in_parent_stack_528 to i32*
  br label %476

; <label>:476:                                    ; preds = %441, %475
  %477 = phi i32* [ %474, %441 ], [ %_address_in_parent_stack_bt_529, %475 ]
  %_new_load_530 = load i32, i32* %477
  %478 = zext i32 %_new_load_530 to i64, !mcsema_real_eip !106
  store i64 %478, i64* %RSI_val, !mcsema_real_eip !106
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %479 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -64
  %480 = add i64 %479, -64, !mcsema_real_eip !107
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !107
  %_ptr_to_int_531 = ptrtoint i64* %_allin_new_bt_92 to i64
  %_local_end_to_int_532 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_533 = bitcast i64* %_allin_new_bt_92 to i8*
  %_offset_above_rbp_534 = sub i64 %_ptr_to_int_531, %_local_end_to_int_532
  %_pot_address_in_parent_stack_535 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_534
  %_cond1_536 = icmp ugt i8* %_ptr_bt_533, %_local_stack_end_ptr_
  %_cond2_1_537 = icmp ugt i8* %_ptr_bt_533, %_parent_stack_end_ptr_
  %_cond2_2_538 = icmp ult i8* %_ptr_bt_533, %_parent_stack_start_ptr_
  %_cond2_539 = or i1 %_cond2_1_537, %_cond2_2_538
  %_cond4_540 = icmp ule i8* %_pot_address_in_parent_stack_535, %_parent_stack_end_ptr_
  %_cond1_n_cond2_541 = and i1 %_cond1_536, %_cond2_539
  %_cond1_n_cond2_cond3_542 = and i1 %_cond1_n_cond2_541, %_cond4_540
  br i1 %_cond1_n_cond2_cond3_542, label %482, label %483

; <label>:482:                                    ; preds = %476
  %_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_534
  %_address_in_parent_stack_bt_544 = bitcast i8* %_address_in_parent_stack_543 to i64*
  br label %483

; <label>:483:                                    ; preds = %476, %482
  %484 = phi i64* [ %_allin_new_bt_92, %476 ], [ %_address_in_parent_stack_bt_544, %482 ]
  %_new_load_545 = load i64, i64* %484
  store i64 %_new_load_545, i64* %RAX_val, !mcsema_real_eip !107
  %485 = add i64 %_new_load_545, 8, !mcsema_real_eip !108
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !108
  %487 = bitcast i64* %486 to i32*
  %_ptr_to_int_546 = ptrtoint i32* %487 to i64
  %_local_end_to_int_547 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_548 = bitcast i32* %487 to i8*
  %_offset_above_rbp_549 = sub i64 %_ptr_to_int_546, %_local_end_to_int_547
  %_pot_address_in_parent_stack_550 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_549
  %_cond1_551 = icmp ugt i8* %_ptr_bt_548, %_local_stack_end_ptr_
  %_cond2_1_552 = icmp ugt i8* %_ptr_bt_548, %_parent_stack_end_ptr_
  %_cond2_2_553 = icmp ult i8* %_ptr_bt_548, %_parent_stack_start_ptr_
  %_cond2_554 = or i1 %_cond2_1_552, %_cond2_2_553
  %_cond4_555 = icmp ule i8* %_pot_address_in_parent_stack_550, %_parent_stack_end_ptr_
  %_cond1_n_cond2_556 = and i1 %_cond1_551, %_cond2_554
  %_cond1_n_cond2_cond3_557 = and i1 %_cond1_n_cond2_556, %_cond4_555
  br i1 %_cond1_n_cond2_cond3_557, label %488, label %489

; <label>:488:                                    ; preds = %483
  %_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_549
  %_address_in_parent_stack_bt_559 = bitcast i8* %_address_in_parent_stack_558 to i32*
  br label %489

; <label>:489:                                    ; preds = %483, %488
  %490 = phi i32* [ %487, %483 ], [ %_address_in_parent_stack_bt_559, %488 ]
  %_new_load_560 = load i32, i32* %490
  %491 = zext i32 %_new_load_560 to i64, !mcsema_real_eip !108
  store i64 %491, i64* %R8_val, !mcsema_real_eip !108
  %492 = load i64, i64* %RSI_val, !mcsema_real_eip !109
  %493 = trunc i64 %492 to i32, !mcsema_real_eip !109
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_560, i32 %493)
  %494 = extractvalue { i32, i1 } %uadd79, 0
  %495 = xor i32 %494, %493, !mcsema_real_eip !109
  %496 = xor i32 %495, %_new_load_560, !mcsema_real_eip !109
  %497 = and i32 %496, 16, !mcsema_real_eip !109
  %498 = icmp ne i32 %497, 0, !mcsema_real_eip !109
  store i1 %498, i1* %AF_val, !mcsema_real_eip !109
  %499 = icmp slt i32 %494, 0
  store i1 %499, i1* %SF_val, !mcsema_real_eip !109
  %500 = icmp eq i32 %494, 0, !mcsema_real_eip !109
  store i1 %500, i1* %ZF_val, !mcsema_real_eip !109
  %501 = xor i32 %_new_load_560, -2147483648, !mcsema_real_eip !109
  %502 = xor i32 %501, %493, !mcsema_real_eip !109
  %503 = and i32 %495, %502, !mcsema_real_eip !109
  %504 = icmp slt i32 %503, 0
  store i1 %504, i1* %OF_val, !mcsema_real_eip !109
  %505 = trunc i32 %494 to i8, !mcsema_real_eip !109
  %506 = tail call i8 @llvm.ctpop.i8(i8 %505), !mcsema_real_eip !109
  %507 = and i8 %506, 1
  %508 = icmp eq i8 %507, 0
  store i1 %508, i1* %PF_val, !mcsema_real_eip !109
  %509 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %509, i1* %CF_val, !mcsema_real_eip !109
  %510 = zext i32 %494 to i64, !mcsema_real_eip !109
  store i64 %510, i64* %RSI_val, !mcsema_real_eip !109
  %_load_rbp_ptr_93 = load i8*, i8** %_RBP_ptr_
  %511 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_93, i64 -72
  %512 = add i64 %511, -72, !mcsema_real_eip !110
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !110
  %_ptr_to_int_561 = ptrtoint i64* %_allin_new_bt_95 to i64
  %_local_end_to_int_562 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_563 = bitcast i64* %_allin_new_bt_95 to i8*
  %_offset_above_rbp_564 = sub i64 %_ptr_to_int_561, %_local_end_to_int_562
  %_pot_address_in_parent_stack_565 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_564
  %_cond1_566 = icmp ugt i8* %_ptr_bt_563, %_local_stack_end_ptr_
  %_cond2_1_567 = icmp ugt i8* %_ptr_bt_563, %_parent_stack_end_ptr_
  %_cond2_2_568 = icmp ult i8* %_ptr_bt_563, %_parent_stack_start_ptr_
  %_cond2_569 = or i1 %_cond2_1_567, %_cond2_2_568
  %_cond4_570 = icmp ule i8* %_pot_address_in_parent_stack_565, %_parent_stack_end_ptr_
  %_cond1_n_cond2_571 = and i1 %_cond1_566, %_cond2_569
  %_cond1_n_cond2_cond3_572 = and i1 %_cond1_n_cond2_571, %_cond4_570
  br i1 %_cond1_n_cond2_cond3_572, label %514, label %515

; <label>:514:                                    ; preds = %489
  %_address_in_parent_stack_573 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_564
  %_address_in_parent_stack_bt_574 = bitcast i8* %_address_in_parent_stack_573 to i64*
  br label %515

; <label>:515:                                    ; preds = %489, %514
  %516 = phi i64* [ %_allin_new_bt_95, %489 ], [ %_address_in_parent_stack_bt_574, %514 ]
  %_new_load_575 = load i64, i64* %516
  store i64 %_new_load_575, i64* %RAX_val, !mcsema_real_eip !110
  %517 = add i64 %_new_load_575, 8, !mcsema_real_eip !111
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !111
  %519 = bitcast i64* %518 to i32*
  %_ptr_to_int_576 = ptrtoint i32* %519 to i64
  %_local_end_to_int_577 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_578 = bitcast i32* %519 to i8*
  %_offset_above_rbp_579 = sub i64 %_ptr_to_int_576, %_local_end_to_int_577
  %_pot_address_in_parent_stack_580 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_579
  %_cond1_581 = icmp ugt i8* %_ptr_bt_578, %_local_stack_end_ptr_
  %_cond2_1_582 = icmp ugt i8* %_ptr_bt_578, %_parent_stack_end_ptr_
  %_cond2_2_583 = icmp ult i8* %_ptr_bt_578, %_parent_stack_start_ptr_
  %_cond2_584 = or i1 %_cond2_1_582, %_cond2_2_583
  %_cond4_585 = icmp ule i8* %_pot_address_in_parent_stack_580, %_parent_stack_end_ptr_
  %_cond1_n_cond2_586 = and i1 %_cond1_581, %_cond2_584
  %_cond1_n_cond2_cond3_587 = and i1 %_cond1_n_cond2_586, %_cond4_585
  br i1 %_cond1_n_cond2_cond3_587, label %520, label %521

; <label>:520:                                    ; preds = %515
  %_address_in_parent_stack_588 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_579
  %_address_in_parent_stack_bt_589 = bitcast i8* %_address_in_parent_stack_588 to i32*
  br label %521

; <label>:521:                                    ; preds = %515, %520
  %522 = phi i32* [ %519, %515 ], [ %_address_in_parent_stack_bt_589, %520 ]
  %_new_load_590 = load i32, i32* %522
  %523 = zext i32 %_new_load_590 to i64, !mcsema_real_eip !111
  store i64 %523, i64* %R8_val, !mcsema_real_eip !111
  %524 = load i64, i64* %RSI_val, !mcsema_real_eip !112
  %525 = trunc i64 %524 to i32, !mcsema_real_eip !112
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_590, i32 %525)
  %526 = extractvalue { i32, i1 } %uadd80, 0
  %527 = xor i32 %526, %525, !mcsema_real_eip !112
  %528 = xor i32 %527, %_new_load_590, !mcsema_real_eip !112
  %529 = and i32 %528, 16, !mcsema_real_eip !112
  %530 = icmp ne i32 %529, 0, !mcsema_real_eip !112
  store i1 %530, i1* %AF_val, !mcsema_real_eip !112
  %531 = icmp slt i32 %526, 0
  store i1 %531, i1* %SF_val, !mcsema_real_eip !112
  %532 = icmp eq i32 %526, 0, !mcsema_real_eip !112
  store i1 %532, i1* %ZF_val, !mcsema_real_eip !112
  %533 = xor i32 %_new_load_590, -2147483648, !mcsema_real_eip !112
  %534 = xor i32 %533, %525, !mcsema_real_eip !112
  %535 = and i32 %527, %534, !mcsema_real_eip !112
  %536 = icmp slt i32 %535, 0
  store i1 %536, i1* %OF_val, !mcsema_real_eip !112
  %537 = trunc i32 %526 to i8, !mcsema_real_eip !112
  %538 = tail call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !112
  %539 = and i8 %538, 1
  %540 = icmp eq i8 %539, 0
  store i1 %540, i1* %PF_val, !mcsema_real_eip !112
  %541 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %541, i1* %CF_val, !mcsema_real_eip !112
  %542 = zext i32 %526 to i64, !mcsema_real_eip !112
  store i64 %542, i64* %RSI_val, !mcsema_real_eip !112
  %543 = load i64, i64* %R11_val, !mcsema_real_eip !113
  %544 = add i64 %543, 8, !mcsema_real_eip !113
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !113
  %546 = bitcast i64* %545 to i32*
  %_ptr_to_int_591 = ptrtoint i32* %546 to i64
  %_local_end_to_int_592 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_593 = bitcast i32* %546 to i8*
  %_offset_above_rbp_594 = sub i64 %_ptr_to_int_591, %_local_end_to_int_592
  %_pot_address_in_parent_stack_595 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_594
  %_cond1_596 = icmp ugt i8* %_ptr_bt_593, %_local_stack_end_ptr_
  %_cond2_1_597 = icmp ugt i8* %_ptr_bt_593, %_parent_stack_end_ptr_
  %_cond2_2_598 = icmp ult i8* %_ptr_bt_593, %_parent_stack_start_ptr_
  %_cond2_599 = or i1 %_cond2_1_597, %_cond2_2_598
  %_cond4_600 = icmp ule i8* %_pot_address_in_parent_stack_595, %_parent_stack_end_ptr_
  %_cond1_n_cond2_601 = and i1 %_cond1_596, %_cond2_599
  %_cond1_n_cond2_cond3_602 = and i1 %_cond1_n_cond2_601, %_cond4_600
  br i1 %_cond1_n_cond2_cond3_602, label %547, label %548

; <label>:547:                                    ; preds = %521
  %_address_in_parent_stack_603 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_594
  %_address_in_parent_stack_bt_604 = bitcast i8* %_address_in_parent_stack_603 to i32*
  br label %548

; <label>:548:                                    ; preds = %521, %547
  %549 = phi i32* [ %546, %521 ], [ %_address_in_parent_stack_bt_604, %547 ]
  %_new_load_605 = load i32, i32* %549
  %550 = zext i32 %_new_load_605 to i64, !mcsema_real_eip !113
  store i64 %550, i64* %R8_val, !mcsema_real_eip !113
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %551 = load i64, i64* %RBP_val, !mcsema_real_eip !114
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -96
  %552 = add i64 %551, -96, !mcsema_real_eip !114
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !114
  %_ptr_to_int_606 = ptrtoint i64* %_allin_new_bt_98 to i64
  %_local_end_to_int_607 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_608 = bitcast i64* %_allin_new_bt_98 to i8*
  %_offset_above_rbp_609 = sub i64 %_ptr_to_int_606, %_local_end_to_int_607
  %_pot_address_in_parent_stack_610 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_609
  %_cond1_611 = icmp ugt i8* %_ptr_bt_608, %_local_stack_end_ptr_
  %_cond2_1_612 = icmp ugt i8* %_ptr_bt_608, %_parent_stack_end_ptr_
  %_cond2_2_613 = icmp ult i8* %_ptr_bt_608, %_parent_stack_start_ptr_
  %_cond2_614 = or i1 %_cond2_1_612, %_cond2_2_613
  %_cond4_615 = icmp ule i8* %_pot_address_in_parent_stack_610, %_parent_stack_end_ptr_
  %_cond1_n_cond2_616 = and i1 %_cond1_611, %_cond2_614
  %_cond1_n_cond2_cond3_617 = and i1 %_cond1_n_cond2_616, %_cond4_615
  br i1 %_cond1_n_cond2_cond3_617, label %554, label %555

; <label>:554:                                    ; preds = %548
  %_address_in_parent_stack_618 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_609
  %_address_in_parent_stack_bt_619 = bitcast i8* %_address_in_parent_stack_618 to i64*
  br label %555

; <label>:555:                                    ; preds = %548, %554
  %556 = phi i64* [ %_allin_new_bt_98, %548 ], [ %_address_in_parent_stack_bt_619, %554 ]
  %_new_load_620 = load i64, i64* %556
  store i64 %_new_load_620, i64* %RAX_val, !mcsema_real_eip !114
  %557 = add i64 %_new_load_620, 8, !mcsema_real_eip !115
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !115
  %559 = bitcast i64* %558 to i32*
  %_ptr_to_int_621 = ptrtoint i32* %559 to i64
  %_local_end_to_int_622 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_623 = bitcast i32* %559 to i8*
  %_offset_above_rbp_624 = sub i64 %_ptr_to_int_621, %_local_end_to_int_622
  %_pot_address_in_parent_stack_625 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_624
  %_cond1_626 = icmp ugt i8* %_ptr_bt_623, %_local_stack_end_ptr_
  %_cond2_1_627 = icmp ugt i8* %_ptr_bt_623, %_parent_stack_end_ptr_
  %_cond2_2_628 = icmp ult i8* %_ptr_bt_623, %_parent_stack_start_ptr_
  %_cond2_629 = or i1 %_cond2_1_627, %_cond2_2_628
  %_cond4_630 = icmp ule i8* %_pot_address_in_parent_stack_625, %_parent_stack_end_ptr_
  %_cond1_n_cond2_631 = and i1 %_cond1_626, %_cond2_629
  %_cond1_n_cond2_cond3_632 = and i1 %_cond1_n_cond2_631, %_cond4_630
  br i1 %_cond1_n_cond2_cond3_632, label %560, label %561

; <label>:560:                                    ; preds = %555
  %_address_in_parent_stack_633 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_624
  %_address_in_parent_stack_bt_634 = bitcast i8* %_address_in_parent_stack_633 to i32*
  br label %561

; <label>:561:                                    ; preds = %555, %560
  %562 = phi i32* [ %559, %555 ], [ %_address_in_parent_stack_bt_634, %560 ]
  %_new_load_635 = load i32, i32* %562
  %563 = zext i32 %_new_load_635 to i64, !mcsema_real_eip !115
  store i64 %563, i64* %R9_val, !mcsema_real_eip !115
  %564 = load i64, i64* %R8_val, !mcsema_real_eip !116
  %565 = trunc i64 %564 to i32, !mcsema_real_eip !116
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_635, i32 %565)
  %566 = extractvalue { i32, i1 } %uadd81, 0
  %567 = xor i32 %566, %565, !mcsema_real_eip !116
  %568 = xor i32 %567, %_new_load_635, !mcsema_real_eip !116
  %569 = and i32 %568, 16, !mcsema_real_eip !116
  %570 = icmp ne i32 %569, 0, !mcsema_real_eip !116
  store i1 %570, i1* %AF_val, !mcsema_real_eip !116
  %571 = icmp slt i32 %566, 0
  store i1 %571, i1* %SF_val, !mcsema_real_eip !116
  %572 = icmp eq i32 %566, 0, !mcsema_real_eip !116
  store i1 %572, i1* %ZF_val, !mcsema_real_eip !116
  %573 = xor i32 %_new_load_635, -2147483648, !mcsema_real_eip !116
  %574 = xor i32 %573, %565, !mcsema_real_eip !116
  %575 = and i32 %567, %574, !mcsema_real_eip !116
  %576 = icmp slt i32 %575, 0
  store i1 %576, i1* %OF_val, !mcsema_real_eip !116
  %577 = trunc i32 %566 to i8, !mcsema_real_eip !116
  %578 = tail call i8 @llvm.ctpop.i8(i8 %577), !mcsema_real_eip !116
  %579 = and i8 %578, 1
  %580 = icmp eq i8 %579, 0
  store i1 %580, i1* %PF_val, !mcsema_real_eip !116
  %581 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %581, i1* %CF_val, !mcsema_real_eip !116
  %582 = zext i32 %566 to i64, !mcsema_real_eip !116
  store i64 %582, i64* %R8_val, !mcsema_real_eip !116
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %583 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -104
  %584 = add i64 %583, -104, !mcsema_real_eip !117
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !117
  %_ptr_to_int_636 = ptrtoint i64* %_allin_new_bt_101 to i64
  %_local_end_to_int_637 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_638 = bitcast i64* %_allin_new_bt_101 to i8*
  %_offset_above_rbp_639 = sub i64 %_ptr_to_int_636, %_local_end_to_int_637
  %_pot_address_in_parent_stack_640 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_639
  %_cond1_641 = icmp ugt i8* %_ptr_bt_638, %_local_stack_end_ptr_
  %_cond2_1_642 = icmp ugt i8* %_ptr_bt_638, %_parent_stack_end_ptr_
  %_cond2_2_643 = icmp ult i8* %_ptr_bt_638, %_parent_stack_start_ptr_
  %_cond2_644 = or i1 %_cond2_1_642, %_cond2_2_643
  %_cond4_645 = icmp ule i8* %_pot_address_in_parent_stack_640, %_parent_stack_end_ptr_
  %_cond1_n_cond2_646 = and i1 %_cond1_641, %_cond2_644
  %_cond1_n_cond2_cond3_647 = and i1 %_cond1_n_cond2_646, %_cond4_645
  br i1 %_cond1_n_cond2_cond3_647, label %586, label %587

; <label>:586:                                    ; preds = %561
  %_address_in_parent_stack_648 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_639
  %_address_in_parent_stack_bt_649 = bitcast i8* %_address_in_parent_stack_648 to i64*
  br label %587

; <label>:587:                                    ; preds = %561, %586
  %588 = phi i64* [ %_allin_new_bt_101, %561 ], [ %_address_in_parent_stack_bt_649, %586 ]
  %_new_load_650 = load i64, i64* %588
  store i64 %_new_load_650, i64* %RAX_val, !mcsema_real_eip !117
  %589 = add i64 %_new_load_650, 8, !mcsema_real_eip !118
  %590 = inttoptr i64 %589 to i64*, !mcsema_real_eip !118
  %591 = bitcast i64* %590 to i32*
  %_ptr_to_int_651 = ptrtoint i32* %591 to i64
  %_local_end_to_int_652 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_653 = bitcast i32* %591 to i8*
  %_offset_above_rbp_654 = sub i64 %_ptr_to_int_651, %_local_end_to_int_652
  %_pot_address_in_parent_stack_655 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_654
  %_cond1_656 = icmp ugt i8* %_ptr_bt_653, %_local_stack_end_ptr_
  %_cond2_1_657 = icmp ugt i8* %_ptr_bt_653, %_parent_stack_end_ptr_
  %_cond2_2_658 = icmp ult i8* %_ptr_bt_653, %_parent_stack_start_ptr_
  %_cond2_659 = or i1 %_cond2_1_657, %_cond2_2_658
  %_cond4_660 = icmp ule i8* %_pot_address_in_parent_stack_655, %_parent_stack_end_ptr_
  %_cond1_n_cond2_661 = and i1 %_cond1_656, %_cond2_659
  %_cond1_n_cond2_cond3_662 = and i1 %_cond1_n_cond2_661, %_cond4_660
  br i1 %_cond1_n_cond2_cond3_662, label %592, label %593

; <label>:592:                                    ; preds = %587
  %_address_in_parent_stack_663 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_654
  %_address_in_parent_stack_bt_664 = bitcast i8* %_address_in_parent_stack_663 to i32*
  br label %593

; <label>:593:                                    ; preds = %587, %592
  %594 = phi i32* [ %591, %587 ], [ %_address_in_parent_stack_bt_664, %592 ]
  %_new_load_665 = load i32, i32* %594
  %595 = zext i32 %_new_load_665 to i64, !mcsema_real_eip !118
  store i64 %595, i64* %R9_val, !mcsema_real_eip !118
  %596 = load i64, i64* %R8_val, !mcsema_real_eip !119
  %597 = trunc i64 %596 to i32, !mcsema_real_eip !119
  %598 = add i32 %_new_load_665, %597
  %599 = zext i32 %598 to i64, !mcsema_real_eip !119
  store i64 %599, i64* %R8_val, !mcsema_real_eip !119
  %600 = load i64, i64* %RSI_val, !mcsema_real_eip !120
  %601 = trunc i64 %600 to i32, !mcsema_real_eip !120
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %598, i32 %601)
  %602 = extractvalue { i32, i1 } %uadd83, 0
  %603 = xor i32 %602, %601, !mcsema_real_eip !120
  %604 = xor i32 %603, %598, !mcsema_real_eip !120
  %605 = and i32 %604, 16, !mcsema_real_eip !120
  %606 = icmp ne i32 %605, 0, !mcsema_real_eip !120
  store i1 %606, i1* %AF_val, !mcsema_real_eip !120
  %607 = icmp slt i32 %602, 0
  store i1 %607, i1* %SF_val, !mcsema_real_eip !120
  %608 = icmp eq i32 %602, 0, !mcsema_real_eip !120
  store i1 %608, i1* %ZF_val, !mcsema_real_eip !120
  %609 = xor i32 %598, -2147483648, !mcsema_real_eip !120
  %610 = xor i32 %609, %601, !mcsema_real_eip !120
  %611 = and i32 %603, %610, !mcsema_real_eip !120
  %612 = icmp slt i32 %611, 0
  store i1 %612, i1* %OF_val, !mcsema_real_eip !120
  %613 = trunc i32 %602 to i8, !mcsema_real_eip !120
  %614 = tail call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !120
  %615 = and i8 %614, 1
  %616 = icmp eq i8 %615, 0
  store i1 %616, i1* %PF_val, !mcsema_real_eip !120
  %617 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %617, i1* %CF_val, !mcsema_real_eip !120
  %618 = zext i32 %602 to i64, !mcsema_real_eip !120
  store i64 %618, i64* %RSI_val, !mcsema_real_eip !120
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %619 = load i64, i64* %RBP_val, !mcsema_real_eip !121
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -112
  %620 = add i64 %619, -112, !mcsema_real_eip !121
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %621 = inttoptr i64 %620 to i64*, !mcsema_real_eip !121
  %622 = bitcast i64* %_allin_new_bt_104 to i32*
  store i32 %602, i32* %622, !mcsema_real_eip !121
  %_load_rbp_ptr_105 = load i8*, i8** %_RBP_ptr_
  %623 = load i64, i64* %RBP_val, !mcsema_real_eip !122
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_105, i64 -112
  %624 = add i64 %623, -112, !mcsema_real_eip !122
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %625 = inttoptr i64 %624 to i64*, !mcsema_real_eip !122
  %626 = bitcast i64* %_allin_new_bt_107 to i32*
  %_ptr_to_int_666 = ptrtoint i32* %626 to i64
  %_local_end_to_int_667 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_668 = bitcast i32* %626 to i8*
  %_offset_above_rbp_669 = sub i64 %_ptr_to_int_666, %_local_end_to_int_667
  %_pot_address_in_parent_stack_670 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_669
  %_cond1_671 = icmp ugt i8* %_ptr_bt_668, %_local_stack_end_ptr_
  %_cond2_1_672 = icmp ugt i8* %_ptr_bt_668, %_parent_stack_end_ptr_
  %_cond2_2_673 = icmp ult i8* %_ptr_bt_668, %_parent_stack_start_ptr_
  %_cond2_674 = or i1 %_cond2_1_672, %_cond2_2_673
  %_cond4_675 = icmp ule i8* %_pot_address_in_parent_stack_670, %_parent_stack_end_ptr_
  %_cond1_n_cond2_676 = and i1 %_cond1_671, %_cond2_674
  %_cond1_n_cond2_cond3_677 = and i1 %_cond1_n_cond2_676, %_cond4_675
  br i1 %_cond1_n_cond2_cond3_677, label %627, label %628

; <label>:627:                                    ; preds = %593
  %_address_in_parent_stack_678 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_669
  %_address_in_parent_stack_bt_679 = bitcast i8* %_address_in_parent_stack_678 to i32*
  br label %628

; <label>:628:                                    ; preds = %593, %627
  %629 = phi i32* [ %626, %593 ], [ %_address_in_parent_stack_bt_679, %627 ]
  %_new_load_680 = load i32, i32* %629
  %630 = zext i32 %_new_load_680 to i64, !mcsema_real_eip !122
  store i64 %630, i64* %RSI_val, !mcsema_real_eip !122
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %631 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -16
  %632 = add i64 %631, -16, !mcsema_real_eip !123
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %633 = inttoptr i64 %632 to i64*, !mcsema_real_eip !123
  %634 = bitcast i64* %_allin_new_bt_110 to i32*
  store i32 %_new_load_680, i32* %634, !mcsema_real_eip !123
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  %635 = load i64, i64* %RBP_val, !mcsema_real_eip !124
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -120
  %636 = add i64 %635, -120, !mcsema_real_eip !124
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %637 = inttoptr i64 %636 to i64*, !mcsema_real_eip !124
  %_ptr_to_int_681 = ptrtoint i64* %_allin_new_bt_113 to i64
  %_local_end_to_int_682 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_683 = bitcast i64* %_allin_new_bt_113 to i8*
  %_offset_above_rbp_684 = sub i64 %_ptr_to_int_681, %_local_end_to_int_682
  %_pot_address_in_parent_stack_685 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_684
  %_cond1_686 = icmp ugt i8* %_ptr_bt_683, %_local_stack_end_ptr_
  %_cond2_1_687 = icmp ugt i8* %_ptr_bt_683, %_parent_stack_end_ptr_
  %_cond2_2_688 = icmp ult i8* %_ptr_bt_683, %_parent_stack_start_ptr_
  %_cond2_689 = or i1 %_cond2_1_687, %_cond2_2_688
  %_cond4_690 = icmp ule i8* %_pot_address_in_parent_stack_685, %_parent_stack_end_ptr_
  %_cond1_n_cond2_691 = and i1 %_cond1_686, %_cond2_689
  %_cond1_n_cond2_cond3_692 = and i1 %_cond1_n_cond2_691, %_cond4_690
  br i1 %_cond1_n_cond2_cond3_692, label %638, label %639

; <label>:638:                                    ; preds = %628
  %_address_in_parent_stack_693 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_684
  %_address_in_parent_stack_bt_694 = bitcast i8* %_address_in_parent_stack_693 to i64*
  br label %639

; <label>:639:                                    ; preds = %628, %638
  %640 = phi i64* [ %_allin_new_bt_113, %628 ], [ %_address_in_parent_stack_bt_694, %638 ]
  %_new_load_695 = load i64, i64* %640
  store i64 %_new_load_695, i64* %RAX_val, !mcsema_real_eip !124
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -24
  %641 = add i64 %635, -24, !mcsema_real_eip !125
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %642 = inttoptr i64 %641 to i64*, !mcsema_real_eip !125
  store i64 %_new_load_695, i64* %_allin_new_bt_115, !mcsema_real_eip !125
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %643 = load i64, i64* %RBP_val, !mcsema_real_eip !126
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -16
  %644 = add i64 %643, -16, !mcsema_real_eip !126
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %645 = inttoptr i64 %644 to i64*, !mcsema_real_eip !126
  %646 = bitcast i64* %_allin_new_bt_118 to i32*
  %_ptr_to_int_696 = ptrtoint i32* %646 to i64
  %_local_end_to_int_697 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_698 = bitcast i32* %646 to i8*
  %_offset_above_rbp_699 = sub i64 %_ptr_to_int_696, %_local_end_to_int_697
  %_pot_address_in_parent_stack_700 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_699
  %_cond1_701 = icmp ugt i8* %_ptr_bt_698, %_local_stack_end_ptr_
  %_cond2_1_702 = icmp ugt i8* %_ptr_bt_698, %_parent_stack_end_ptr_
  %_cond2_2_703 = icmp ult i8* %_ptr_bt_698, %_parent_stack_start_ptr_
  %_cond2_704 = or i1 %_cond2_1_702, %_cond2_2_703
  %_cond4_705 = icmp ule i8* %_pot_address_in_parent_stack_700, %_parent_stack_end_ptr_
  %_cond1_n_cond2_706 = and i1 %_cond1_701, %_cond2_704
  %_cond1_n_cond2_cond3_707 = and i1 %_cond1_n_cond2_706, %_cond4_705
  br i1 %_cond1_n_cond2_cond3_707, label %647, label %648

; <label>:647:                                    ; preds = %639
  %_address_in_parent_stack_708 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_699
  %_address_in_parent_stack_bt_709 = bitcast i8* %_address_in_parent_stack_708 to i32*
  br label %648

; <label>:648:                                    ; preds = %639, %647
  %649 = phi i32* [ %646, %639 ], [ %_address_in_parent_stack_bt_709, %647 ]
  %_new_load_710 = load i32, i32* %649
  %650 = zext i32 %_new_load_710 to i64, !mcsema_real_eip !126
  store i64 %650, i64* %RSI_val, !mcsema_real_eip !126
  %_load_rbp_ptr_119 = load i8*, i8** %_RBP_ptr_
  %651 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_119, i64 -128
  %652 = add i64 %651, -128, !mcsema_real_eip !127
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %653 = inttoptr i64 %652 to i64*, !mcsema_real_eip !127
  %654 = bitcast i64* %_allin_new_bt_121 to i32*
  store i32 %_new_load_710, i32* %654, !mcsema_real_eip !127
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %655 = load i64, i64* %RBP_val, !mcsema_real_eip !128
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -24
  %656 = add i64 %655, -24, !mcsema_real_eip !128
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %657 = inttoptr i64 %656 to i64*, !mcsema_real_eip !128
  %_ptr_to_int_711 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_local_end_to_int_712 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_713 = bitcast i64* %_allin_new_bt_124 to i8*
  %_offset_above_rbp_714 = sub i64 %_ptr_to_int_711, %_local_end_to_int_712
  %_pot_address_in_parent_stack_715 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_714
  %_cond1_716 = icmp ugt i8* %_ptr_bt_713, %_local_stack_end_ptr_
  %_cond2_1_717 = icmp ugt i8* %_ptr_bt_713, %_parent_stack_end_ptr_
  %_cond2_2_718 = icmp ult i8* %_ptr_bt_713, %_parent_stack_start_ptr_
  %_cond2_719 = or i1 %_cond2_1_717, %_cond2_2_718
  %_cond4_720 = icmp ule i8* %_pot_address_in_parent_stack_715, %_parent_stack_end_ptr_
  %_cond1_n_cond2_721 = and i1 %_cond1_716, %_cond2_719
  %_cond1_n_cond2_cond3_722 = and i1 %_cond1_n_cond2_721, %_cond4_720
  br i1 %_cond1_n_cond2_cond3_722, label %658, label %659

; <label>:658:                                    ; preds = %648
  %_address_in_parent_stack_723 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_714
  %_address_in_parent_stack_bt_724 = bitcast i8* %_address_in_parent_stack_723 to i64*
  br label %659

; <label>:659:                                    ; preds = %648, %658
  %660 = phi i64* [ %_allin_new_bt_124, %648 ], [ %_address_in_parent_stack_bt_724, %658 ]
  %_new_load_725 = load i64, i64* %660
  store i64 %_new_load_725, i64* %RAX_val, !mcsema_real_eip !128
  %_new_gep_125 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -136
  %661 = add i64 %655, -136, !mcsema_real_eip !129
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %662 = inttoptr i64 %661 to i64*, !mcsema_real_eip !129
  store i64 %_new_load_725, i64* %_allin_new_bt_126, !mcsema_real_eip !129
  %_load_rbp_ptr_127 = load i8*, i8** %_RBP_ptr_
  %663 = load i64, i64* %RBP_val, !mcsema_real_eip !130
  %_new_gep_128 = getelementptr i8, i8* %_load_rbp_ptr_127, i64 -136
  %664 = add i64 %663, -136, !mcsema_real_eip !130
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %665 = inttoptr i64 %664 to i64*, !mcsema_real_eip !130
  %_ptr_to_int_726 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_local_end_to_int_727 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_728 = bitcast i64* %_allin_new_bt_129 to i8*
  %_offset_above_rbp_729 = sub i64 %_ptr_to_int_726, %_local_end_to_int_727
  %_pot_address_in_parent_stack_730 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_729
  %_cond1_731 = icmp ugt i8* %_ptr_bt_728, %_local_stack_end_ptr_
  %_cond2_1_732 = icmp ugt i8* %_ptr_bt_728, %_parent_stack_end_ptr_
  %_cond2_2_733 = icmp ult i8* %_ptr_bt_728, %_parent_stack_start_ptr_
  %_cond2_734 = or i1 %_cond2_1_732, %_cond2_2_733
  %_cond4_735 = icmp ule i8* %_pot_address_in_parent_stack_730, %_parent_stack_end_ptr_
  %_cond1_n_cond2_736 = and i1 %_cond1_731, %_cond2_734
  %_cond1_n_cond2_cond3_737 = and i1 %_cond1_n_cond2_736, %_cond4_735
  br i1 %_cond1_n_cond2_cond3_737, label %666, label %667

; <label>:666:                                    ; preds = %659
  %_address_in_parent_stack_738 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_729
  %_address_in_parent_stack_bt_739 = bitcast i8* %_address_in_parent_stack_738 to i64*
  br label %667

; <label>:667:                                    ; preds = %659, %666
  %668 = phi i64* [ %_allin_new_bt_129, %659 ], [ %_address_in_parent_stack_bt_739, %666 ]
  %_new_load_740 = load i64, i64* %668
  store i64 %_new_load_740, i64* %RAX_val, !mcsema_real_eip !130
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_127, i64 -128
  %669 = add i64 %663, -128, !mcsema_real_eip !131
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %670 = inttoptr i64 %669 to i64*, !mcsema_real_eip !131
  %671 = bitcast i64* %_allin_new_bt_131 to i32*
  %_ptr_to_int_741 = ptrtoint i32* %671 to i64
  %_local_end_to_int_742 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_743 = bitcast i32* %671 to i8*
  %_offset_above_rbp_744 = sub i64 %_ptr_to_int_741, %_local_end_to_int_742
  %_pot_address_in_parent_stack_745 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_744
  %_cond1_746 = icmp ugt i8* %_ptr_bt_743, %_local_stack_end_ptr_
  %_cond2_1_747 = icmp ugt i8* %_ptr_bt_743, %_parent_stack_end_ptr_
  %_cond2_2_748 = icmp ult i8* %_ptr_bt_743, %_parent_stack_start_ptr_
  %_cond2_749 = or i1 %_cond2_1_747, %_cond2_2_748
  %_cond4_750 = icmp ule i8* %_pot_address_in_parent_stack_745, %_parent_stack_end_ptr_
  %_cond1_n_cond2_751 = and i1 %_cond1_746, %_cond2_749
  %_cond1_n_cond2_cond3_752 = and i1 %_cond1_n_cond2_751, %_cond4_750
  br i1 %_cond1_n_cond2_cond3_752, label %672, label %673

; <label>:672:                                    ; preds = %667
  %_address_in_parent_stack_753 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_744
  %_address_in_parent_stack_bt_754 = bitcast i8* %_address_in_parent_stack_753 to i32*
  br label %673

; <label>:673:                                    ; preds = %667, %672
  %674 = phi i32* [ %671, %667 ], [ %_address_in_parent_stack_bt_754, %672 ]
  %_new_load_755 = load i32, i32* %674
  %675 = zext i32 %_new_load_755 to i64, !mcsema_real_eip !131
  store i64 %675, i64* %RDX_val, !mcsema_real_eip !131
  %_load_rsp_ptr_132 = load i8*, i8** %_RSP_ptr_
  %676 = load i64, i64* %RSP_val, !mcsema_real_eip !132
  %_allin_new_bt_133 = bitcast i8* %_load_rsp_ptr_132 to i64*
  %677 = inttoptr i64 %676 to i64*, !mcsema_real_eip !132
  %_ptr_to_int_756 = ptrtoint i64* %_allin_new_bt_133 to i64
  %_local_end_to_int_757 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_758 = bitcast i64* %_allin_new_bt_133 to i8*
  %_offset_above_rbp_759 = sub i64 %_ptr_to_int_756, %_local_end_to_int_757
  %_pot_address_in_parent_stack_760 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_759
  %_cond1_761 = icmp ugt i8* %_ptr_bt_758, %_local_stack_end_ptr_
  %_cond2_1_762 = icmp ugt i8* %_ptr_bt_758, %_parent_stack_end_ptr_
  %_cond2_2_763 = icmp ult i8* %_ptr_bt_758, %_parent_stack_start_ptr_
  %_cond2_764 = or i1 %_cond2_1_762, %_cond2_2_763
  %_cond4_765 = icmp ule i8* %_pot_address_in_parent_stack_760, %_parent_stack_end_ptr_
  %_cond1_n_cond2_766 = and i1 %_cond1_761, %_cond2_764
  %_cond1_n_cond2_cond3_767 = and i1 %_cond1_n_cond2_766, %_cond4_765
  br i1 %_cond1_n_cond2_cond3_767, label %678, label %679

; <label>:678:                                    ; preds = %673
  %_address_in_parent_stack_768 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_759
  %_address_in_parent_stack_bt_769 = bitcast i8* %_address_in_parent_stack_768 to i64*
  br label %679

; <label>:679:                                    ; preds = %673, %678
  %680 = phi i64* [ %_allin_new_bt_133, %673 ], [ %_address_in_parent_stack_bt_769, %678 ]
  %_new_load_770 = load i64, i64* %680
  store i64 %_new_load_770, i64* %RBX_val, !mcsema_real_eip !132
  %_new_gep_134 = getelementptr i8, i8* %_load_rsp_ptr_132, i64 8
  %681 = add i64 %676, 8, !mcsema_real_eip !132
  store volatile i8* %_new_gep_134, i8** %_RSP_ptr_
  store i64 %681, i64* %RSP_val, !mcsema_real_eip !132
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !133
  %_ptr_to_int_771 = ptrtoint i64* %_allin_new_bt_135 to i64
  %_local_end_to_int_772 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_773 = bitcast i64* %_allin_new_bt_135 to i8*
  %_offset_above_rbp_774 = sub i64 %_ptr_to_int_771, %_local_end_to_int_772
  %_pot_address_in_parent_stack_775 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_774
  %_cond1_776 = icmp ugt i8* %_ptr_bt_773, %_local_stack_end_ptr_
  %_cond2_1_777 = icmp ugt i8* %_ptr_bt_773, %_parent_stack_end_ptr_
  %_cond2_2_778 = icmp ult i8* %_ptr_bt_773, %_parent_stack_start_ptr_
  %_cond2_779 = or i1 %_cond2_1_777, %_cond2_2_778
  %_cond4_780 = icmp ule i8* %_pot_address_in_parent_stack_775, %_parent_stack_end_ptr_
  %_cond1_n_cond2_781 = and i1 %_cond1_776, %_cond2_779
  %_cond1_n_cond2_cond3_782 = and i1 %_cond1_n_cond2_781, %_cond4_780
  br i1 %_cond1_n_cond2_cond3_782, label %683, label %684

; <label>:683:                                    ; preds = %679
  %_address_in_parent_stack_783 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_774
  %_address_in_parent_stack_bt_784 = bitcast i8* %_address_in_parent_stack_783 to i64*
  br label %684

; <label>:684:                                    ; preds = %679, %683
  %685 = phi i64* [ %_allin_new_bt_135, %679 ], [ %_address_in_parent_stack_bt_784, %683 ]
  %_new_load_785 = load i64, i64* %685
  %_new_int2ptr_ = inttoptr i64 %_new_load_785 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_785, i64* %RBP_val, !mcsema_real_eip !133
  %_new_gep_136 = getelementptr i8, i8* %_load_rsp_ptr_132, i64 24
  %686 = add i64 %676, 24, !mcsema_real_eip !134
  store volatile i8* %_new_gep_136, i8** %_RSP_ptr_
  store i64 %686, i64* %RSP_val, !mcsema_real_eip !134
  %687 = load i64, i64* %RAX_val, !mcsema_real_eip !134
  store i64 %687, i64* %RAX, !mcsema_real_eip !134
  %688 = load i64, i64* %RBX_val, !mcsema_real_eip !134
  store i64 %688, i64* %RBX, !mcsema_real_eip !134
  %689 = load i64, i64* %RCX_val, !mcsema_real_eip !134
  store i64 %689, i64* %RCX, !mcsema_real_eip !134
  %690 = load i64, i64* %RDX_val, !mcsema_real_eip !134
  store i64 %690, i64* %RDX, !mcsema_real_eip !134
  %691 = load i64, i64* %RSI_val, !mcsema_real_eip !134
  store i64 %691, i64* %RSI, !mcsema_real_eip !134
  %692 = load i64, i64* %RDI_val, !mcsema_real_eip !134
  store i64 %692, i64* %RDI, !mcsema_real_eip !134
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %693 = load i64, i64* %RSP_val, !mcsema_real_eip !134
  %_new_ptr2int_138 = ptrtoint i8* %_load_rsp_ptr_137 to i64
  store volatile i64 %_new_ptr2int_138, i64* %RSP
  %_load_rbp_ptr_139 = load i8*, i8** %_RBP_ptr_
  %694 = load i64, i64* %RBP_val, !mcsema_real_eip !134
  %_new_ptr2int_140 = ptrtoint i8* %_load_rbp_ptr_139 to i64
  store volatile i64 %_new_ptr2int_140, i64* %RBP
  %695 = load i64, i64* %R8_val, !mcsema_real_eip !134
  store i64 %695, i64* %R8, !mcsema_real_eip !134
  %696 = load i64, i64* %R9_val, !mcsema_real_eip !134
  store i64 %696, i64* %R9, !mcsema_real_eip !134
  %697 = load i64, i64* %R10_val, !mcsema_real_eip !134
  store i64 %697, i64* %R10, !mcsema_real_eip !134
  %698 = load i64, i64* %R11_val, !mcsema_real_eip !134
  store i64 %698, i64* %R11, !mcsema_real_eip !134
  %699 = load i64, i64* %R12_val, !mcsema_real_eip !134
  store i64 %699, i64* %R12, !mcsema_real_eip !134
  %700 = load i64, i64* %R13_val, !mcsema_real_eip !134
  store i64 %700, i64* %R13, !mcsema_real_eip !134
  %701 = load i64, i64* %R14_val, !mcsema_real_eip !134
  store i64 %701, i64* %R14, !mcsema_real_eip !134
  %702 = load i64, i64* %R15_val, !mcsema_real_eip !134
  store i64 %702, i64* %R15, !mcsema_real_eip !134
  %703 = load i64, i64* %RIP_val, !mcsema_real_eip !134
  store i64 %703, i64* %RIP, !mcsema_real_eip !134
  %704 = load i1, i1* %CF_val, !mcsema_real_eip !134
  store i1 %704, i1* %CF, align 1, !mcsema_real_eip !134
  %705 = load i1, i1* %PF_val, !mcsema_real_eip !134
  store i1 %705, i1* %PF, align 1, !mcsema_real_eip !134
  %706 = load i1, i1* %AF_val, !mcsema_real_eip !134
  store i1 %706, i1* %AF, align 1, !mcsema_real_eip !134
  %707 = load i1, i1* %ZF_val, !mcsema_real_eip !134
  store i1 %707, i1* %ZF, align 1, !mcsema_real_eip !134
  %708 = load i1, i1* %SF_val, !mcsema_real_eip !134
  store i1 %708, i1* %SF, align 1, !mcsema_real_eip !134
  %709 = load i1, i1* %OF_val, !mcsema_real_eip !134
  store i1 %709, i1* %OF, align 1, !mcsema_real_eip !134
  %710 = load i1, i1* %DF_val, !mcsema_real_eip !134
  store i1 %710, i1* %DF, align 1, !mcsema_real_eip !134
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !134
  %711 = load i1, i1* %FPU_B_val, !mcsema_real_eip !134
  store i1 %711, i1* %FPU_B, align 1, !mcsema_real_eip !134
  %712 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !134
  store i1 %712, i1* %FPU_C3, align 1, !mcsema_real_eip !134
  %713 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !134
  store i3 %713, i3* %FPU_TOP, align 1, !mcsema_real_eip !134
  %714 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !134
  store i1 %714, i1* %FPU_C2, align 1, !mcsema_real_eip !134
  %715 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !134
  store i1 %715, i1* %FPU_C1, align 1, !mcsema_real_eip !134
  %716 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !134
  store i1 %716, i1* %FPU_C0, align 1, !mcsema_real_eip !134
  %717 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !134
  store i1 %717, i1* %FPU_ES, align 1, !mcsema_real_eip !134
  %718 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !134
  store i1 %718, i1* %FPU_SF, align 1, !mcsema_real_eip !134
  %719 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !134
  store i1 %719, i1* %FPU_PE, align 1, !mcsema_real_eip !134
  %720 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !134
  store i1 %720, i1* %FPU_UE, align 1, !mcsema_real_eip !134
  %721 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !134
  store i1 %721, i1* %FPU_OE, align 1, !mcsema_real_eip !134
  %722 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !134
  store i1 %722, i1* %FPU_ZE, align 1, !mcsema_real_eip !134
  %723 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !134
  store i1 %723, i1* %FPU_DE, align 1, !mcsema_real_eip !134
  %724 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !134
  store i1 %724, i1* %FPU_IE, align 1, !mcsema_real_eip !134
  %725 = load i1, i1* %FPU_X_val, !mcsema_real_eip !134
  store i1 %725, i1* %FPU_X, align 1, !mcsema_real_eip !134
  %726 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !134
  store i2 %726, i2* %FPU_RC, align 1, !mcsema_real_eip !134
  %727 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !134
  store i2 %727, i2* %FPU_PC, align 1, !mcsema_real_eip !134
  %728 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !134
  store i1 %728, i1* %FPU_PM, align 1, !mcsema_real_eip !134
  %729 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !134
  store i1 %729, i1* %FPU_UM, align 1, !mcsema_real_eip !134
  %730 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !134
  store i1 %730, i1* %FPU_OM, align 1, !mcsema_real_eip !134
  %731 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !134
  store i1 %731, i1* %FPU_ZM, align 1, !mcsema_real_eip !134
  %732 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !134
  store i1 %732, i1* %FPU_DM, align 1, !mcsema_real_eip !134
  %733 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !134
  store i1 %733, i1* %FPU_IM, align 1, !mcsema_real_eip !134
  %_ptr_to_int_786 = ptrtoint i64* %53 to i64
  %_local_end_to_int_787 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_788 = bitcast i64* %53 to i8*
  %_offset_above_rbp_789 = sub i64 %_ptr_to_int_786, %_local_end_to_int_787
  %_pot_address_in_parent_stack_790 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_789
  %_cond1_791 = icmp ugt i8* %_ptr_bt_788, %_local_stack_end_ptr_
  %_cond2_1_792 = icmp ugt i8* %_ptr_bt_788, %_parent_stack_end_ptr_
  %_cond2_2_793 = icmp ult i8* %_ptr_bt_788, %_parent_stack_start_ptr_
  %_cond2_794 = or i1 %_cond2_1_792, %_cond2_2_793
  %_cond4_795 = icmp ule i8* %_pot_address_in_parent_stack_790, %_parent_stack_end_ptr_
  %_cond1_n_cond2_796 = and i1 %_cond1_791, %_cond2_794
  %_cond1_n_cond2_cond3_797 = and i1 %_cond1_n_cond2_796, %_cond4_795
  br i1 %_cond1_n_cond2_cond3_797, label %734, label %735

; <label>:734:                                    ; preds = %684
  %_address_in_parent_stack_798 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_789
  %_address_in_parent_stack_bt_799 = bitcast i8* %_address_in_parent_stack_798 to i64*
  br label %735

; <label>:735:                                    ; preds = %684, %734
  %736 = phi i64* [ %53, %684 ], [ %_address_in_parent_stack_bt_799, %734 ]
  %_new_load_800 = load i64, i64* %736
  store i64 %_new_load_800, i64* %52, align 4
  %737 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !134
  store i16 %737, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !134
  %738 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !134
  store i64 %738, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !134
  %739 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !134
  store i16 %739, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !134
  %740 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !134
  store i64 %740, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !134
  %741 = load i128, i128* %XMM0_val, !mcsema_real_eip !134
  store i128 %741, i128* %XMM0, align 1, !mcsema_real_eip !134
  %742 = load i128, i128* %XMM1_val, !mcsema_real_eip !134
  store i128 %742, i128* %XMM1, align 1, !mcsema_real_eip !134
  %743 = load i128, i128* %XMM2_val, !mcsema_real_eip !134
  store i128 %743, i128* %XMM2, align 1, !mcsema_real_eip !134
  %744 = load i128, i128* %XMM3_val, !mcsema_real_eip !134
  store i128 %744, i128* %XMM3, align 1, !mcsema_real_eip !134
  %745 = load i128, i128* %XMM4_val, !mcsema_real_eip !134
  store i128 %745, i128* %XMM4, align 1, !mcsema_real_eip !134
  %746 = load i128, i128* %XMM5_val, !mcsema_real_eip !134
  store i128 %746, i128* %XMM5, align 1, !mcsema_real_eip !134
  %747 = load i128, i128* %XMM6_val, !mcsema_real_eip !134
  store i128 %747, i128* %XMM6, align 1, !mcsema_real_eip !134
  %748 = load i128, i128* %XMM7_val, !mcsema_real_eip !134
  store i128 %748, i128* %XMM7, align 1, !mcsema_real_eip !134
  %749 = load i128, i128* %XMM8_val, !mcsema_real_eip !134
  store i128 %749, i128* %XMM8, align 1, !mcsema_real_eip !134
  %750 = load i128, i128* %XMM9_val, !mcsema_real_eip !134
  store i128 %750, i128* %XMM9, align 1, !mcsema_real_eip !134
  %751 = load i128, i128* %XMM10_val, !mcsema_real_eip !134
  store i128 %751, i128* %XMM10, align 1, !mcsema_real_eip !134
  %752 = load i128, i128* %XMM11_val, !mcsema_real_eip !134
  store i128 %752, i128* %XMM11, align 1, !mcsema_real_eip !134
  %753 = load i128, i128* %XMM12_val, !mcsema_real_eip !134
  store i128 %753, i128* %XMM12, align 1, !mcsema_real_eip !134
  %754 = load i128, i128* %XMM13_val, !mcsema_real_eip !134
  store i128 %754, i128* %XMM13, align 1, !mcsema_real_eip !134
  %755 = load i128, i128* %XMM14_val, !mcsema_real_eip !134
  store i128 %755, i128* %XMM14, align 1, !mcsema_real_eip !134
  %756 = load i128, i128* %XMM15_val, !mcsema_real_eip !134
  store i128 %756, i128* %XMM15, align 1, !mcsema_real_eip !134
  %757 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !134
  store i64 %757, i64* %STACK_BASE, align 1, !mcsema_real_eip !134
  %758 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !134
  store i64 %758, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !134
  ret void, !mcsema_real_eip !134
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 288, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 289, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 292, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = !{i64 299, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 306, [21 x i8] c"\09movl\09$10, -16(%rbp)\00"}
!7 = !{i64 313, [21 x i8] c"\09movl\09$10, -12(%rbp)\00"}
!8 = !{i64 320, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!9 = !{i64 332, [17 x i8] c"\09movl\09%eax, %edi\00"}
!10 = !{i64 334, [9 x i8] c"\09callq\090\00"}
!11 = !{i64 339, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = !{i64 343, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!13 = !{i64 347, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!14 = !{i64 353, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!15 = !{i64 357, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!16 = !{i64 364, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!17 = !{i64 368, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!18 = !{i64 375, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!19 = !{i64 379, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!20 = !{i64 382, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!21 = !{i64 385, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!22 = !{i64 389, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!23 = !{i64 393, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!24 = !{i64 397, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!25 = !{i64 400, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!26 = !{i64 403, [17 x i8] c"\09movq\09%rsp, %rdx\00"}
!27 = !{i64 406, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!28 = !{i64 409, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!29 = !{i64 413, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!30 = !{i64 417, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!31 = !{i64 421, [21 x i8] c"\09leaq\09-16(%rbp), %r8\00"}
!32 = !{i64 425, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!33 = !{i64 429, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!34 = !{i64 435, [15 x i8] c"\09movl\09$1, %ecx\00"}
!35 = !{i64 440, [15 x i8] c"\09movl\09$2, %r9d\00"}
!36 = !{i64 446, [16 x i8] c"\09movq\09%r8, %rdx\00"}
!37 = !{i64 449, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!38 = !{i64 452, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!39 = !{i64 455, [22 x i8] c"\09movl\09-76(%rbp), %r8d\00"}
!40 = !{i64 459, [12 x i8] c"\09callq\09-464\00"}
!41 = !{i64 464, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!42 = !{i64 467, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!43 = !{i64 471, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!44 = !{i64 475, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!45 = !{i64 479, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!46 = !{i64 482, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!47 = !{i64 485, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!48 = !{i64 488, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!49 = !{i64 491, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!50 = !{i64 494, [17 x i8] c"\09movl\09%edx, %eax\00"}
!51 = !{i64 496, [17 x i8] c"\09addq\09$128, %rsp\00"}
!52 = !{i64 503, [11 x i8] c"\09popq\09%rbp\00"}
!53 = !{i64 504, [6 x i8] c"\09retq\00"}
!54 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!55 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!56 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!57 = !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!58 = !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!59 = !{i64 13, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!60 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!61 = !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!62 = !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!63 = !{i64 27, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!64 = !{i64 30, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!65 = !{i64 33, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!66 = !{i64 37, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!67 = !{i64 41, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!68 = !{i64 45, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!69 = !{i64 49, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!70 = !{i64 53, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!71 = !{i64 57, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!72 = !{i64 60, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!73 = !{i64 64, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!74 = !{i64 68, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!75 = !{i64 71, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!76 = !{i64 75, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!77 = !{i64 78, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!78 = !{i64 81, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!79 = !{i64 85, [19 x i8] c"\09movl\09(%rax), %r8d\00"}
!80 = !{i64 88, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!81 = !{i64 91, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!82 = !{i64 94, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!83 = !{i64 98, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!84 = !{i64 101, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!85 = !{i64 104, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!86 = !{i64 108, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!87 = !{i64 111, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!88 = !{i64 114, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!89 = !{i64 117, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!90 = !{i64 120, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!91 = !{i64 123, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!92 = !{i64 127, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!93 = !{i64 131, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!94 = !{i64 134, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!95 = !{i64 138, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!96 = !{i64 142, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!97 = !{i64 145, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!98 = !{i64 149, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!99 = !{i64 153, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!100 = !{i64 157, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!101 = !{i64 160, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!102 = !{i64 164, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!103 = !{i64 168, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!104 = !{i64 171, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!105 = !{i64 174, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!106 = !{i64 177, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!107 = !{i64 180, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!108 = !{i64 184, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!109 = !{i64 188, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = !{i64 191, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!111 = !{i64 195, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!112 = !{i64 199, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!113 = !{i64 202, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!114 = !{i64 206, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!115 = !{i64 210, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!116 = !{i64 214, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!117 = !{i64 217, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!118 = !{i64 221, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!119 = !{i64 225, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!120 = !{i64 228, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!121 = !{i64 231, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!122 = !{i64 234, [23 x i8] c"\09movl\09-112(%rbp), %esi\00"}
!123 = !{i64 237, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!124 = !{i64 240, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!125 = !{i64 244, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!126 = !{i64 248, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!127 = !{i64 251, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!128 = !{i64 254, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!129 = !{i64 258, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!130 = !{i64 265, [23 x i8] c"\09movq\09-136(%rbp), %rax\00"}
!131 = !{i64 272, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!132 = !{i64 275, [11 x i8] c"\09popq\09%rbx\00"}
!133 = !{i64 276, [11 x i8] c"\09popq\09%rbp\00"}
!134 = !{i64 277, [6 x i8] c"\09retq\00"}
