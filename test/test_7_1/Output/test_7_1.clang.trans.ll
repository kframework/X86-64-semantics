; ModuleID = 'Output/test_7_1.clang.trans.bc'
source_filename = "Output/test_7_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_30(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 96
  %_RBP_ptr_ = alloca i8*, i64 96
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -88
  %81 = add i64 %78, -88
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
  %91 = icmp ult i64 %79, 80, !mcsema_real_eip !4
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
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -52
  %99 = add i64 %98, -52, !mcsema_real_eip !6
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  %101 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 0, i32* %101, !mcsema_real_eip !6
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -52
  %103 = add i64 %102, -52, !mcsema_real_eip !7
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !7
  %105 = bitcast i64* %_allin_new_bt_10 to i32*
  %106 = load i32, i32* %105, !mcsema_real_eip !7
  %107 = add i32 %106, -10
  %108 = xor i32 %107, %106, !mcsema_real_eip !7
  %109 = and i32 %108, 16, !mcsema_real_eip !7
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !7
  store i1 %110, i1* %AF_val, !mcsema_real_eip !7
  %111 = trunc i32 %107 to i8, !mcsema_real_eip !7
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !7
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  store i1 %114, i1* %PF_val, !mcsema_real_eip !7
  %115 = icmp eq i32 %107, 0, !mcsema_real_eip !7
  store i1 %115, i1* %ZF_val, !mcsema_real_eip !7
  %116 = icmp slt i32 %107, 0
  store i1 %116, i1* %SF_val, !mcsema_real_eip !7
  %117 = icmp ult i32 %106, 10, !mcsema_real_eip !7
  store i1 %117, i1* %CF_val, !mcsema_real_eip !7
  %118 = and i32 %108, %106, !mcsema_real_eip !7
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF_val, !mcsema_real_eip !7
  %tmp = xor i1 %116, %119
  br i1 %tmp, label %block_0x50.preheader, label %block_0x6a, !mcsema_real_eip !8

block_0x50.preheader:                             ; preds = %entry
  br label %block_0x50

block_0x6a.loopexit:                              ; preds = %block_0x50
  br label %block_0x6a

block_0x6a:                                       ; preds = %block_0x6a.loopexit, %entry
  store i64 10, i64* %RAX_val, !mcsema_real_eip !9
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -48
  %121 = add i64 %120, -48, !mcsema_real_eip !10
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !10
  %123 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !10
  store i64 %123, i64* %RCX_val, !mcsema_real_eip !10
  store i64 10, i64* %RDI_val, !mcsema_real_eip !11
  %124 = load i64, i64* %RAX_val, !mcsema_real_eip !12
  %125 = and i64 %124, 4294967295
  store i64 %125, i64* %RSI_val, !mcsema_real_eip !12
  store i64 %125, i64* %RDX_val, !mcsema_real_eip !13
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -64
  %127 = add i64 %126, -64, !mcsema_real_eip !14
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !14
  %129 = load i64, i64* %RCX_val, !mcsema_real_eip !14
  store i64 %129, i64* %_allin_new_bt_16, !mcsema_real_eip !14
  %130 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  %131 = and i64 %130, 4294967295
  store i64 %131, i64* %RCX_val, !mcsema_real_eip !15
  store i64 %131, i64* %R8_val, !mcsema_real_eip !16
  store i64 %131, i64* %R9_val, !mcsema_real_eip !17
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -64
  %133 = add i64 %132, -64, !mcsema_real_eip !18
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !18
  %135 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !18
  store i64 %135, i64* %R10_val, !mcsema_real_eip !18
  %_load_rsp_ptr_20 = load i8*, i8** %_RSP_ptr_
  %136 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %_allin_new_bt_21 = bitcast i8* %_load_rsp_ptr_20 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !19
  store i64 %135, i64* %_allin_new_bt_21, !mcsema_real_eip !19
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %138 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %139 = add i64 %138, -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %_allin_new_bt_24, !mcsema_real_eip !20
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %139, i64* %RSP_val, !mcsema_real_eip !20
  %141 = load i64, i64* %RAX_val, !mcsema_real_eip !20
  store i64 %141, i64* %RAX, !mcsema_real_eip !20
  %142 = load i64, i64* %RBX_val, !mcsema_real_eip !20
  store i64 %142, i64* %RBX, !mcsema_real_eip !20
  %143 = load i64, i64* %RCX_val, !mcsema_real_eip !20
  store i64 %143, i64* %RCX, !mcsema_real_eip !20
  %144 = load i64, i64* %RDX_val, !mcsema_real_eip !20
  store i64 %144, i64* %RDX, !mcsema_real_eip !20
  %145 = load i64, i64* %RSI_val, !mcsema_real_eip !20
  store i64 %145, i64* %RSI, !mcsema_real_eip !20
  %146 = load i64, i64* %RDI_val, !mcsema_real_eip !20
  store i64 %146, i64* %RDI, !mcsema_real_eip !20
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %147 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  %_new_ptr2int_26 = ptrtoint i8* %_load_rsp_ptr_25 to i64
  store volatile i64 %_new_ptr2int_26, i64* %RSP
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_ptr2int_28 = ptrtoint i8* %_load_rbp_ptr_27 to i64
  store volatile i64 %_new_ptr2int_28, i64* %RBP
  %149 = load i64, i64* %R8_val, !mcsema_real_eip !20
  store i64 %149, i64* %R8, !mcsema_real_eip !20
  %150 = load i64, i64* %R9_val, !mcsema_real_eip !20
  store i64 %150, i64* %R9, !mcsema_real_eip !20
  %151 = load i64, i64* %R10_val, !mcsema_real_eip !20
  store i64 %151, i64* %R10, !mcsema_real_eip !20
  %152 = load i64, i64* %R11_val, !mcsema_real_eip !20
  store i64 %152, i64* %R11, !mcsema_real_eip !20
  %153 = load i64, i64* %R12_val, !mcsema_real_eip !20
  store i64 %153, i64* %R12, !mcsema_real_eip !20
  %154 = load i64, i64* %R13_val, !mcsema_real_eip !20
  store i64 %154, i64* %R13, !mcsema_real_eip !20
  %155 = load i64, i64* %R14_val, !mcsema_real_eip !20
  store i64 %155, i64* %R14, !mcsema_real_eip !20
  %156 = load i64, i64* %R15_val, !mcsema_real_eip !20
  store i64 %156, i64* %R15, !mcsema_real_eip !20
  %157 = load i64, i64* %RIP_val, !mcsema_real_eip !20
  store i64 %157, i64* %RIP, !mcsema_real_eip !20
  %158 = load i1, i1* %CF_val, !mcsema_real_eip !20
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !20
  %159 = load i1, i1* %PF_val, !mcsema_real_eip !20
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !20
  %160 = load i1, i1* %AF_val, !mcsema_real_eip !20
  store i1 %160, i1* %AF, align 1, !mcsema_real_eip !20
  %161 = load i1, i1* %ZF_val, !mcsema_real_eip !20
  store i1 %161, i1* %ZF, align 1, !mcsema_real_eip !20
  %162 = load i1, i1* %SF_val, !mcsema_real_eip !20
  store i1 %162, i1* %SF, align 1, !mcsema_real_eip !20
  %163 = load i1, i1* %OF_val, !mcsema_real_eip !20
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !20
  %164 = load i1, i1* %DF_val, !mcsema_real_eip !20
  store i1 %164, i1* %DF, align 1, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !20
  %165 = load i1, i1* %FPU_B_val, !mcsema_real_eip !20
  store i1 %165, i1* %FPU_B, align 1, !mcsema_real_eip !20
  %166 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !20
  store i1 %166, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %167 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !20
  store i3 %167, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %168 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !20
  store i1 %168, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %169 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !20
  store i1 %169, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %170 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !20
  store i1 %170, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %171 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !20
  store i1 %171, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %172 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !20
  store i1 %172, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %173 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !20
  store i1 %173, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %174 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !20
  store i1 %174, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %175 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !20
  store i1 %175, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %176 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !20
  store i1 %176, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %177 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !20
  store i1 %177, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %178 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !20
  store i1 %178, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %179 = load i1, i1* %FPU_X_val, !mcsema_real_eip !20
  store i1 %179, i1* %FPU_X, align 1, !mcsema_real_eip !20
  %180 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !20
  store i2 %180, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %181 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !20
  store i2 %181, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %182 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !20
  store i1 %182, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %183 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !20
  store i1 %183, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %184 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !20
  store i1 %184, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %185 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !20
  store i1 %185, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %186 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !20
  store i1 %186, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %187 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !20
  store i1 %187, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %188 = load i64, i64* %53, align 4
  store i64 %188, i64* %52, align 4
  %189 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  store i16 %189, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %190 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  store i64 %190, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !20
  %191 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  store i16 %191, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %192 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  store i64 %192, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !20
  %193 = load i128, i128* %XMM0_val, !mcsema_real_eip !20
  store i128 %193, i128* %XMM0, align 1, !mcsema_real_eip !20
  %194 = load i128, i128* %XMM1_val, !mcsema_real_eip !20
  store i128 %194, i128* %XMM1, align 1, !mcsema_real_eip !20
  %195 = load i128, i128* %XMM2_val, !mcsema_real_eip !20
  store i128 %195, i128* %XMM2, align 1, !mcsema_real_eip !20
  %196 = load i128, i128* %XMM3_val, !mcsema_real_eip !20
  store i128 %196, i128* %XMM3, align 1, !mcsema_real_eip !20
  %197 = load i128, i128* %XMM4_val, !mcsema_real_eip !20
  store i128 %197, i128* %XMM4, align 1, !mcsema_real_eip !20
  %198 = load i128, i128* %XMM5_val, !mcsema_real_eip !20
  store i128 %198, i128* %XMM5, align 1, !mcsema_real_eip !20
  %199 = load i128, i128* %XMM6_val, !mcsema_real_eip !20
  store i128 %199, i128* %XMM6, align 1, !mcsema_real_eip !20
  %200 = load i128, i128* %XMM7_val, !mcsema_real_eip !20
  store i128 %200, i128* %XMM7, align 1, !mcsema_real_eip !20
  %201 = load i128, i128* %XMM8_val, !mcsema_real_eip !20
  store i128 %201, i128* %XMM8, align 1, !mcsema_real_eip !20
  %202 = load i128, i128* %XMM9_val, !mcsema_real_eip !20
  store i128 %202, i128* %XMM9, align 1, !mcsema_real_eip !20
  %203 = load i128, i128* %XMM10_val, !mcsema_real_eip !20
  store i128 %203, i128* %XMM10, align 1, !mcsema_real_eip !20
  %204 = load i128, i128* %XMM11_val, !mcsema_real_eip !20
  store i128 %204, i128* %XMM11, align 1, !mcsema_real_eip !20
  %205 = load i128, i128* %XMM12_val, !mcsema_real_eip !20
  store i128 %205, i128* %XMM12, align 1, !mcsema_real_eip !20
  %206 = load i128, i128* %XMM13_val, !mcsema_real_eip !20
  store i128 %206, i128* %XMM13, align 1, !mcsema_real_eip !20
  %207 = load i128, i128* %XMM14_val, !mcsema_real_eip !20
  store i128 %207, i128* %XMM14, align 1, !mcsema_real_eip !20
  %208 = load i128, i128* %XMM15_val, !mcsema_real_eip !20
  store i128 %208, i128* %XMM15, align 1, !mcsema_real_eip !20
  %209 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !20
  store i64 %209, i64* %STACK_BASE, align 1, !mcsema_real_eip !20
  %210 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  store i64 %210, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !20
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_54)
  %211 = load i64, i64* %RAX, !mcsema_real_eip !20
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !20
  %212 = load i64, i64* %RBX, !mcsema_real_eip !20
  store i64 %212, i64* %RBX_val, !mcsema_real_eip !20
  %213 = load i64, i64* %RCX, !mcsema_real_eip !20
  store i64 %213, i64* %RCX_val, !mcsema_real_eip !20
  %214 = load i64, i64* %RDX, !mcsema_real_eip !20
  store i64 %214, i64* %RDX_val, !mcsema_real_eip !20
  %215 = load i64, i64* %RSI, !mcsema_real_eip !20
  store i64 %215, i64* %RSI_val, !mcsema_real_eip !20
  %216 = load i64, i64* %RDI, !mcsema_real_eip !20
  store i64 %216, i64* %RDI_val, !mcsema_real_eip !20
  %217 = load i64, i64* %RSP, !mcsema_real_eip !20
  store i64 %217, i64* %RSP_val, !mcsema_real_eip !20
  %218 = load i64, i64* %RBP, !mcsema_real_eip !20
  store i64 %218, i64* %RBP_val, !mcsema_real_eip !20
  %219 = load i64, i64* %R8, !mcsema_real_eip !20
  store i64 %219, i64* %R8_val, !mcsema_real_eip !20
  %220 = load i64, i64* %R9, !mcsema_real_eip !20
  store i64 %220, i64* %R9_val, !mcsema_real_eip !20
  %221 = load i64, i64* %R10, !mcsema_real_eip !20
  store i64 %221, i64* %R10_val, !mcsema_real_eip !20
  %222 = load i64, i64* %R11, !mcsema_real_eip !20
  store i64 %222, i64* %R11_val, !mcsema_real_eip !20
  %223 = load i64, i64* %R12, !mcsema_real_eip !20
  store i64 %223, i64* %R12_val, !mcsema_real_eip !20
  %224 = load i64, i64* %R13, !mcsema_real_eip !20
  store i64 %224, i64* %R13_val, !mcsema_real_eip !20
  %225 = load i64, i64* %R14, !mcsema_real_eip !20
  store i64 %225, i64* %R14_val, !mcsema_real_eip !20
  %226 = load i64, i64* %R15, !mcsema_real_eip !20
  store i64 %226, i64* %R15_val, !mcsema_real_eip !20
  %227 = load i64, i64* %RIP, !mcsema_real_eip !20
  store i64 %227, i64* %RIP_val, !mcsema_real_eip !20
  %228 = load i1, i1* %CF, align 1, !mcsema_real_eip !20
  store i1 %228, i1* %CF_val, !mcsema_real_eip !20
  %229 = load i1, i1* %PF, align 1, !mcsema_real_eip !20
  store i1 %229, i1* %PF_val, !mcsema_real_eip !20
  %230 = load i1, i1* %AF, align 1, !mcsema_real_eip !20
  store i1 %230, i1* %AF_val, !mcsema_real_eip !20
  %231 = load i1, i1* %ZF, align 1, !mcsema_real_eip !20
  store i1 %231, i1* %ZF_val, !mcsema_real_eip !20
  %232 = load i1, i1* %SF, align 1, !mcsema_real_eip !20
  store i1 %232, i1* %SF_val, !mcsema_real_eip !20
  %233 = load i1, i1* %OF, align 1, !mcsema_real_eip !20
  store i1 %233, i1* %OF_val, !mcsema_real_eip !20
  %234 = load i1, i1* %DF, align 1, !mcsema_real_eip !20
  store i1 %234, i1* %DF_val, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %235 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !20
  store i1 %235, i1* %FPU_B_val, !mcsema_real_eip !20
  %236 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !20
  store i1 %236, i1* %FPU_C3_val, !mcsema_real_eip !20
  %237 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  store i3 %237, i3* %FPU_TOP_val, !mcsema_real_eip !20
  %238 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !20
  store i1 %238, i1* %FPU_C2_val, !mcsema_real_eip !20
  %239 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !20
  store i1 %239, i1* %FPU_C1_val, !mcsema_real_eip !20
  %240 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !20
  store i1 %240, i1* %FPU_C0_val, !mcsema_real_eip !20
  %241 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !20
  store i1 %241, i1* %FPU_ES_val, !mcsema_real_eip !20
  %242 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !20
  store i1 %242, i1* %FPU_SF_val, !mcsema_real_eip !20
  %243 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !20
  store i1 %243, i1* %FPU_PE_val, !mcsema_real_eip !20
  %244 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !20
  store i1 %244, i1* %FPU_UE_val, !mcsema_real_eip !20
  %245 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !20
  store i1 %245, i1* %FPU_OE_val, !mcsema_real_eip !20
  %246 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  store i1 %246, i1* %FPU_ZE_val, !mcsema_real_eip !20
  %247 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !20
  store i1 %247, i1* %FPU_DE_val, !mcsema_real_eip !20
  %248 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !20
  store i1 %248, i1* %FPU_IE_val, !mcsema_real_eip !20
  %249 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !20
  store i1 %249, i1* %FPU_X_val, !mcsema_real_eip !20
  %250 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !20
  store i2 %250, i2* %FPU_RC_val, !mcsema_real_eip !20
  %251 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !20
  store i2 %251, i2* %FPU_PC_val, !mcsema_real_eip !20
  %252 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !20
  store i1 %252, i1* %FPU_PM_val, !mcsema_real_eip !20
  %253 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !20
  store i1 %253, i1* %FPU_UM_val, !mcsema_real_eip !20
  %254 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !20
  store i1 %254, i1* %FPU_OM_val, !mcsema_real_eip !20
  %255 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  store i1 %255, i1* %FPU_ZM_val, !mcsema_real_eip !20
  %256 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !20
  store i1 %256, i1* %FPU_DM_val, !mcsema_real_eip !20
  %257 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !20
  store i1 %257, i1* %FPU_IM_val, !mcsema_real_eip !20
  %258 = load i64, i64* %52, align 4
  store i64 %258, i64* %53, align 4
  %259 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  store i16 %259, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !20
  %260 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !20
  store i64 %260, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !20
  %261 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  store i16 %261, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !20
  %262 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !20
  store i64 %262, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !20
  %263 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !20
  store i128 %263, i128* %XMM0_val, !mcsema_real_eip !20
  %264 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !20
  store i128 %264, i128* %XMM1_val, !mcsema_real_eip !20
  %265 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !20
  store i128 %265, i128* %XMM2_val, !mcsema_real_eip !20
  %266 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !20
  store i128 %266, i128* %XMM3_val, !mcsema_real_eip !20
  %267 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !20
  store i128 %267, i128* %XMM4_val, !mcsema_real_eip !20
  %268 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !20
  store i128 %268, i128* %XMM5_val, !mcsema_real_eip !20
  %269 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !20
  store i128 %269, i128* %XMM6_val, !mcsema_real_eip !20
  %270 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !20
  store i128 %270, i128* %XMM7_val, !mcsema_real_eip !20
  %271 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !20
  store i128 %271, i128* %XMM8_val, !mcsema_real_eip !20
  %272 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !20
  store i128 %272, i128* %XMM9_val, !mcsema_real_eip !20
  %273 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !20
  store i128 %273, i128* %XMM10_val, !mcsema_real_eip !20
  %274 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !20
  store i128 %274, i128* %XMM11_val, !mcsema_real_eip !20
  %275 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !20
  store i128 %275, i128* %XMM12_val, !mcsema_real_eip !20
  %276 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !20
  store i128 %276, i128* %XMM13_val, !mcsema_real_eip !20
  %277 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !20
  store i128 %277, i128* %XMM14_val, !mcsema_real_eip !20
  %278 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !20
  store i128 %278, i128* %XMM15_val, !mcsema_real_eip !20
  %279 = load i64, i64* %STACK_BASE, !mcsema_real_eip !20
  store i64 %279, i64* %STACK_BASE_val, !mcsema_real_eip !20
  %280 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !20
  store i64 %280, i64* %STACK_LIMIT_val, !mcsema_real_eip !20
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %281 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_gep_30 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 80
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 80)
  %282 = extractvalue { i64, i1 } %uadd210, 0
  %283 = xor i64 %282, %281, !mcsema_real_eip !21
  %284 = and i64 %283, 16
  %285 = icmp eq i64 %284, 0
  store i1 %285, i1* %AF_val, !mcsema_real_eip !21
  %286 = icmp slt i64 %282, 0
  store i1 %286, i1* %SF_val, !mcsema_real_eip !21
  %287 = icmp eq i64 %282, 0, !mcsema_real_eip !21
  store i1 %287, i1* %ZF_val, !mcsema_real_eip !21
  %288 = xor i64 %281, -9223372036854775808, !mcsema_real_eip !21
  %289 = and i64 %283, %288, !mcsema_real_eip !21
  %290 = icmp slt i64 %289, 0
  store i1 %290, i1* %OF_val, !mcsema_real_eip !21
  %291 = trunc i64 %282 to i8, !mcsema_real_eip !21
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !21
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF_val, !mcsema_real_eip !21
  %295 = extractvalue { i64, i1 } %uadd210, 1
  %_new_ptr2int_31 = ptrtoint i8* %_new_gep_30 to i1
  store volatile i1 %_new_ptr2int_31, i1* %CF_val
  store volatile i8* %_new_gep_30, i8** %_RSP_ptr_
  store i64 %282, i64* %RSP_val, !mcsema_real_eip !21
  %_allin_new_bt_32 = bitcast i8* %_new_gep_30 to i64*
  %296 = inttoptr i64 %282 to i64*, !mcsema_real_eip !22
  %297 = load i64, i64* %_allin_new_bt_32, !mcsema_real_eip !22
  %_new_int2ptr_ = inttoptr i64 %297 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %297, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_30, i64 16
  %298 = add i64 %282, 16, !mcsema_real_eip !23
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_
  store i64 %298, i64* %RSP_val, !mcsema_real_eip !23
  %299 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %299, i64* %RAX, !mcsema_real_eip !23
  %300 = load i64, i64* %RBX_val, !mcsema_real_eip !23
  store i64 %300, i64* %RBX, !mcsema_real_eip !23
  %301 = load i64, i64* %RCX_val, !mcsema_real_eip !23
  store i64 %301, i64* %RCX, !mcsema_real_eip !23
  %302 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  store i64 %302, i64* %RDX, !mcsema_real_eip !23
  %303 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  store i64 %303, i64* %RSI, !mcsema_real_eip !23
  %304 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  store i64 %304, i64* %RDI, !mcsema_real_eip !23
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %305 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  %_new_ptr2int_35 = ptrtoint i8* %_load_rsp_ptr_34 to i64
  store volatile i64 %_new_ptr2int_35, i64* %RSP
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %306 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_ptr2int_37 = ptrtoint i8* %_load_rbp_ptr_36 to i64
  store volatile i64 %_new_ptr2int_37, i64* %RBP
  %307 = load i64, i64* %R8_val, !mcsema_real_eip !23
  store i64 %307, i64* %R8, !mcsema_real_eip !23
  %308 = load i64, i64* %R9_val, !mcsema_real_eip !23
  store i64 %308, i64* %R9, !mcsema_real_eip !23
  %309 = load i64, i64* %R10_val, !mcsema_real_eip !23
  store i64 %309, i64* %R10, !mcsema_real_eip !23
  %310 = load i64, i64* %R11_val, !mcsema_real_eip !23
  store i64 %310, i64* %R11, !mcsema_real_eip !23
  %311 = load i64, i64* %R12_val, !mcsema_real_eip !23
  store i64 %311, i64* %R12, !mcsema_real_eip !23
  %312 = load i64, i64* %R13_val, !mcsema_real_eip !23
  store i64 %312, i64* %R13, !mcsema_real_eip !23
  %313 = load i64, i64* %R14_val, !mcsema_real_eip !23
  store i64 %313, i64* %R14, !mcsema_real_eip !23
  %314 = load i64, i64* %R15_val, !mcsema_real_eip !23
  store i64 %314, i64* %R15, !mcsema_real_eip !23
  %315 = load i64, i64* %RIP_val, !mcsema_real_eip !23
  store i64 %315, i64* %RIP, !mcsema_real_eip !23
  %316 = load i1, i1* %CF_val, !mcsema_real_eip !23
  store i1 %316, i1* %CF, align 1, !mcsema_real_eip !23
  %317 = load i1, i1* %PF_val, !mcsema_real_eip !23
  store i1 %317, i1* %PF, align 1, !mcsema_real_eip !23
  %318 = load i1, i1* %AF_val, !mcsema_real_eip !23
  store i1 %318, i1* %AF, align 1, !mcsema_real_eip !23
  %319 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  store i1 %319, i1* %ZF, align 1, !mcsema_real_eip !23
  %320 = load i1, i1* %SF_val, !mcsema_real_eip !23
  store i1 %320, i1* %SF, align 1, !mcsema_real_eip !23
  %321 = load i1, i1* %OF_val, !mcsema_real_eip !23
  store i1 %321, i1* %OF, align 1, !mcsema_real_eip !23
  %322 = load i1, i1* %DF_val, !mcsema_real_eip !23
  store i1 %322, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %323 = load i1, i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %323, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %324 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %324, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %325 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %325, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %326 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %326, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %327 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %327, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %328 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %328, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %329 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %329, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %330 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %330, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %331 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %331, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %332 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %332, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %333 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %333, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %334 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %334, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %335 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %335, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %336 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %336, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %337 = load i1, i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %337, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %338 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %338, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %339 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %339, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %340 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %340, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %341 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %341, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %342 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %342, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %343 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %343, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %344 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %344, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %345 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %345, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %346 = load i64, i64* %53, align 4
  store i64 %346, i64* %52, align 4
  %347 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %347, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %348 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %348, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %349 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %349, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %350 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %350, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %351 = load i128, i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %351, i128* %XMM0, align 1, !mcsema_real_eip !23
  %352 = load i128, i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %352, i128* %XMM1, align 1, !mcsema_real_eip !23
  %353 = load i128, i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %353, i128* %XMM2, align 1, !mcsema_real_eip !23
  %354 = load i128, i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %354, i128* %XMM3, align 1, !mcsema_real_eip !23
  %355 = load i128, i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %355, i128* %XMM4, align 1, !mcsema_real_eip !23
  %356 = load i128, i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %356, i128* %XMM5, align 1, !mcsema_real_eip !23
  %357 = load i128, i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %357, i128* %XMM6, align 1, !mcsema_real_eip !23
  %358 = load i128, i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %358, i128* %XMM7, align 1, !mcsema_real_eip !23
  %359 = load i128, i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %359, i128* %XMM8, align 1, !mcsema_real_eip !23
  %360 = load i128, i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %360, i128* %XMM9, align 1, !mcsema_real_eip !23
  %361 = load i128, i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %361, i128* %XMM10, align 1, !mcsema_real_eip !23
  %362 = load i128, i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %362, i128* %XMM11, align 1, !mcsema_real_eip !23
  %363 = load i128, i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %363, i128* %XMM12, align 1, !mcsema_real_eip !23
  %364 = load i128, i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %364, i128* %XMM13, align 1, !mcsema_real_eip !23
  %365 = load i128, i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %365, i128* %XMM14, align 1, !mcsema_real_eip !23
  %366 = load i128, i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %366, i128* %XMM15, align 1, !mcsema_real_eip !23
  %367 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %367, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %368 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %368, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23

block_0x50:                                       ; preds = %block_0x50, %block_0x50.preheader
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -52
  %370 = add i64 %369, -52, !mcsema_real_eip !24
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !24
  %372 = bitcast i64* %_allin_new_bt_40 to i32*
  %373 = load i32, i32* %372, !mcsema_real_eip !24
  %374 = sext i32 %373 to i64, !mcsema_real_eip !24
  store i64 %374, i64* %RAX_val, !mcsema_real_eip !24
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %375 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -48
  %376 = add i64 %375, -48, !mcsema_real_eip !25
  %377 = shl nsw i64 %374, 2
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_42, i64 %377
  %378 = add i64 %376, %377, !mcsema_real_eip !25
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %379 = inttoptr i64 %378 to i64*, !mcsema_real_eip !25
  %380 = bitcast i64* %_allin_new_bt_44 to i32*
  store i32 21, i32* %380, !mcsema_real_eip !25
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %381 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -52
  %382 = add i64 %381, -52, !mcsema_real_eip !26
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %383 = inttoptr i64 %382 to i64*, !mcsema_real_eip !26
  %384 = bitcast i64* %_allin_new_bt_47 to i32*
  %385 = load i32, i32* %384, !mcsema_real_eip !26
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %385, i32 1)
  %386 = extractvalue { i32, i1 } %uadd, 0
  %387 = xor i32 %386, %385, !mcsema_real_eip !27
  %388 = and i32 %387, 16, !mcsema_real_eip !27
  %389 = icmp ne i32 %388, 0, !mcsema_real_eip !27
  store i1 %389, i1* %AF_val, !mcsema_real_eip !27
  %390 = icmp slt i32 %386, 0
  store i1 %390, i1* %SF_val, !mcsema_real_eip !27
  %391 = icmp eq i32 %386, 0, !mcsema_real_eip !27
  store i1 %391, i1* %ZF_val, !mcsema_real_eip !27
  %392 = xor i32 %385, -2147483648, !mcsema_real_eip !27
  %393 = and i32 %387, %392, !mcsema_real_eip !27
  %394 = icmp slt i32 %393, 0
  store i1 %394, i1* %OF_val, !mcsema_real_eip !27
  %395 = trunc i32 %386 to i8, !mcsema_real_eip !27
  %396 = tail call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !27
  %397 = and i8 %396, 1
  %398 = icmp eq i8 %397, 0
  store i1 %398, i1* %PF_val, !mcsema_real_eip !27
  %399 = extractvalue { i32, i1 } %uadd, 1
  store i1 %399, i1* %CF_val, !mcsema_real_eip !27
  %400 = zext i32 %386 to i64, !mcsema_real_eip !27
  store i64 %400, i64* %RAX_val, !mcsema_real_eip !27
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %401 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -52
  %402 = add i64 %401, -52, !mcsema_real_eip !28
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !28
  %404 = bitcast i64* %_allin_new_bt_50 to i32*
  store i32 %386, i32* %404, !mcsema_real_eip !28
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %405 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -52
  %406 = add i64 %405, -52, !mcsema_real_eip !7
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !7
  %408 = bitcast i64* %_allin_new_bt_53 to i32*
  %409 = load i32, i32* %408, !mcsema_real_eip !7
  %410 = add i32 %409, -10
  %411 = xor i32 %410, %409, !mcsema_real_eip !7
  %412 = and i32 %411, 16, !mcsema_real_eip !7
  %413 = icmp ne i32 %412, 0, !mcsema_real_eip !7
  store i1 %413, i1* %AF_val, !mcsema_real_eip !7
  %414 = trunc i32 %410 to i8, !mcsema_real_eip !7
  %415 = tail call i8 @llvm.ctpop.i8(i8 %414), !mcsema_real_eip !7
  %416 = and i8 %415, 1
  %417 = icmp eq i8 %416, 0
  store i1 %417, i1* %PF_val, !mcsema_real_eip !7
  %418 = icmp eq i32 %410, 0, !mcsema_real_eip !7
  store i1 %418, i1* %ZF_val, !mcsema_real_eip !7
  %419 = icmp slt i32 %410, 0
  store i1 %419, i1* %SF_val, !mcsema_real_eip !7
  %420 = icmp ult i32 %409, 10, !mcsema_real_eip !7
  store i1 %420, i1* %CF_val, !mcsema_real_eip !7
  %421 = and i32 %411, %409, !mcsema_real_eip !7
  %422 = icmp slt i32 %421, 0
  store i1 %422, i1* %OF_val, !mcsema_real_eip !7
  %tmp209 = xor i1 %419, %422
  br i1 %tmp209, label %block_0x50, label %block_0x6a.loopexit, !mcsema_real_eip !8
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 44
  %_RBP_ptr_ = alloca i8*, i64 44
  %_local_stack_start_ptr_ = alloca i8, i64 44
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 44
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !29
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !29
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !29
  %XMM15_val = alloca i128, !mcsema_real_eip !29
  %XMM14_val = alloca i128, !mcsema_real_eip !29
  %XMM13_val = alloca i128, !mcsema_real_eip !29
  %XMM12_val = alloca i128, !mcsema_real_eip !29
  %XMM11_val = alloca i128, !mcsema_real_eip !29
  %XMM10_val = alloca i128, !mcsema_real_eip !29
  %XMM9_val = alloca i128, !mcsema_real_eip !29
  %XMM8_val = alloca i128, !mcsema_real_eip !29
  %XMM7_val = alloca i128, !mcsema_real_eip !29
  %XMM6_val = alloca i128, !mcsema_real_eip !29
  %XMM5_val = alloca i128, !mcsema_real_eip !29
  %XMM4_val = alloca i128, !mcsema_real_eip !29
  %XMM3_val = alloca i128, !mcsema_real_eip !29
  %XMM2_val = alloca i128, !mcsema_real_eip !29
  %XMM1_val = alloca i128, !mcsema_real_eip !29
  %XMM0_val = alloca i128, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !29
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !29
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !29
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !29
  %FPU_IM_val = alloca i1, !mcsema_real_eip !29
  %FPU_DM_val = alloca i1, !mcsema_real_eip !29
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !29
  %FPU_OM_val = alloca i1, !mcsema_real_eip !29
  %FPU_UM_val = alloca i1, !mcsema_real_eip !29
  %FPU_PM_val = alloca i1, !mcsema_real_eip !29
  %FPU_PC_val = alloca i2, !mcsema_real_eip !29
  %FPU_RC_val = alloca i2, !mcsema_real_eip !29
  %FPU_X_val = alloca i1, !mcsema_real_eip !29
  %FPU_IE_val = alloca i1, !mcsema_real_eip !29
  %FPU_DE_val = alloca i1, !mcsema_real_eip !29
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !29
  %FPU_OE_val = alloca i1, !mcsema_real_eip !29
  %FPU_UE_val = alloca i1, !mcsema_real_eip !29
  %FPU_PE_val = alloca i1, !mcsema_real_eip !29
  %FPU_SF_val = alloca i1, !mcsema_real_eip !29
  %FPU_ES_val = alloca i1, !mcsema_real_eip !29
  %FPU_C0_val = alloca i1, !mcsema_real_eip !29
  %FPU_C1_val = alloca i1, !mcsema_real_eip !29
  %FPU_C2_val = alloca i1, !mcsema_real_eip !29
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !29
  %FPU_C3_val = alloca i1, !mcsema_real_eip !29
  %FPU_B_val = alloca i1, !mcsema_real_eip !29
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !29
  %DF_val = alloca i1, !mcsema_real_eip !29
  %OF_val = alloca i1, !mcsema_real_eip !29
  %SF_val = alloca i1, !mcsema_real_eip !29
  %CF_val = alloca i1, !mcsema_real_eip !29
  %AF_val = alloca i1, !mcsema_real_eip !29
  %PF_val = alloca i1, !mcsema_real_eip !29
  %ZF_val = alloca i1, !mcsema_real_eip !29
  %RIP_val = alloca i64, !mcsema_real_eip !29
  %R14_val = alloca i64, !mcsema_real_eip !29
  %R13_val = alloca i64, !mcsema_real_eip !29
  %R12_val = alloca i64, !mcsema_real_eip !29
  %R11_val = alloca i64, !mcsema_real_eip !29
  %R10_val = alloca i64, !mcsema_real_eip !29
  %R9_val = alloca i64, !mcsema_real_eip !29
  %R8_val = alloca i64, !mcsema_real_eip !29
  %RSP_val = alloca i64, !mcsema_real_eip !29
  %RBP_val = alloca i64, !mcsema_real_eip !29
  %RDI_val = alloca i64, !mcsema_real_eip !29
  %RSI_val = alloca i64, !mcsema_real_eip !29
  %RDX_val = alloca i64, !mcsema_real_eip !29
  %RCX_val = alloca i64, !mcsema_real_eip !29
  %RBX_val = alloca i64, !mcsema_real_eip !29
  %RAX_val = alloca i64, !mcsema_real_eip !29
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !29
  %1 = load i64, i64* %RAX, !mcsema_real_eip !29
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !29
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !29
  %2 = load i64, i64* %RBX, !mcsema_real_eip !29
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !29
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !29
  %3 = load i64, i64* %RCX, !mcsema_real_eip !29
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !29
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !29
  %4 = load i64, i64* %RDX, !mcsema_real_eip !29
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !29
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !29
  %5 = load i64, i64* %RSI, !mcsema_real_eip !29
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !29
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !29
  %6 = load i64, i64* %RDI, !mcsema_real_eip !29
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !29
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !29
  %7 = load i64, i64* %RSP, !mcsema_real_eip !29
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !29
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !29
  %8 = load i64, i64* %RBP, !mcsema_real_eip !29
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !29
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !29
  %9 = load i64, i64* %R8, !mcsema_real_eip !29
  store i64 %9, i64* %R8_val, !mcsema_real_eip !29
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !29
  %10 = load i64, i64* %R9, !mcsema_real_eip !29
  store i64 %10, i64* %R9_val, !mcsema_real_eip !29
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !29
  %11 = load i64, i64* %R10, !mcsema_real_eip !29
  store i64 %11, i64* %R10_val, !mcsema_real_eip !29
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !29
  %12 = load i64, i64* %R11, !mcsema_real_eip !29
  store i64 %12, i64* %R11_val, !mcsema_real_eip !29
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !29
  %13 = load i64, i64* %R12, !mcsema_real_eip !29
  store i64 %13, i64* %R12_val, !mcsema_real_eip !29
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !29
  %14 = load i64, i64* %R13, !mcsema_real_eip !29
  store i64 %14, i64* %R13_val, !mcsema_real_eip !29
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !29
  %15 = load i64, i64* %R14, !mcsema_real_eip !29
  store i64 %15, i64* %R14_val, !mcsema_real_eip !29
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !29
  %16 = load i64, i64* %R15, !mcsema_real_eip !29
  store i64 %16, i64* %R15_val, !mcsema_real_eip !29
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !29
  %17 = load i64, i64* %RIP, !mcsema_real_eip !29
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !29
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !29
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %CF_val, !mcsema_real_eip !29
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !29
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %PF_val, !mcsema_real_eip !29
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !29
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %AF_val, !mcsema_real_eip !29
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !29
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !29
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !29
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %SF_val, !mcsema_real_eip !29
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !29
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %OF_val, !mcsema_real_eip !29
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !29
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %DF_val, !mcsema_real_eip !29
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !29
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !29
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !29
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !29
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !29
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !29
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !29
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !29
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !29
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !29
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !29
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !29
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !29
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !29
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !29
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !29
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !29
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !29
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !29
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !29
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !29
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !29
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !29
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !29
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !29
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !29
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !29
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !29
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !29
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !29
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !29
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !29
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !29
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !29
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !29
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !29
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !29
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !29
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !29
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !29
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !29
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !29
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !29
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !29
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !29
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !29
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !29
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !29
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !29
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !29
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !29
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !29
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !29
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !29
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !29
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !29
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !29
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !29
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !29
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !29
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !29
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !29
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !29
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !29
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !29
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !29
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !29
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !29
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !29
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !29
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !29
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !29
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !29
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !29
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !29
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !29
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !29
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !29
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !29
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !29
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !29
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !29
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !29
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !29
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !29
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !29
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !29
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !29
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !29
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !29
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !29
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !29
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !29
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !29
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !29
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !29
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !29
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !29
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !29
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !29
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !29
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !29
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !29
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !29
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !29
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !29
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !29
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !29
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !29
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %79 = add i64 %78, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !29
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !29
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %81 = add i64 %78, 8, !mcsema_real_eip !31
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !31
  %83 = load i64, i64* %_allin_new_bt_2, !mcsema_real_eip !31
  store i64 %83, i64* %RAX_val, !mcsema_real_eip !31
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %84 = add i64 %78, -12, !mcsema_real_eip !32
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !32
  %86 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  %87 = trunc i64 %86 to i32, !mcsema_real_eip !32
  %88 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !32
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %90 = add i64 %89, -8, !mcsema_real_eip !33
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !33
  %92 = load i64, i64* %RSI_val, !mcsema_real_eip !33
  %93 = trunc i64 %92 to i32, !mcsema_real_eip !33
  %94 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !33
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %96 = add i64 %95, -12, !mcsema_real_eip !34
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !34
  %98 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  %99 = trunc i64 %98 to i32, !mcsema_real_eip !34
  %100 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %99, i32* %100, !mcsema_real_eip !34
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -16
  %102 = add i64 %101, -16, !mcsema_real_eip !35
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !35
  %104 = load i64, i64* %RCX_val, !mcsema_real_eip !35
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !35
  %106 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %105, i32* %106, !mcsema_real_eip !35
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %108 = add i64 %107, -20, !mcsema_real_eip !36
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !36
  %110 = load i64, i64* %R8_val, !mcsema_real_eip !36
  %111 = trunc i64 %110 to i32, !mcsema_real_eip !36
  %112 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %111, i32* %112, !mcsema_real_eip !36
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %113 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %114 = add i64 %113, -24, !mcsema_real_eip !37
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !37
  %116 = load i64, i64* %R9_val, !mcsema_real_eip !37
  %117 = trunc i64 %116 to i32, !mcsema_real_eip !37
  %118 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %117, i32* %118, !mcsema_real_eip !37
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -32
  %120 = add i64 %119, -32, !mcsema_real_eip !38
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !38
  %122 = load i64, i64* %RAX_val, !mcsema_real_eip !38
  store i64 %122, i64* %_allin_new_bt_22, !mcsema_real_eip !38
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -32
  %124 = add i64 %123, -32, !mcsema_real_eip !39
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !39
  %126 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !39
  store i64 %126, i64* %RAX_val, !mcsema_real_eip !39
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !40
  %128 = bitcast i64* %127 to i32*
  %129 = load i32, i32* %128, !mcsema_real_eip !40
  %130 = zext i32 %129 to i64, !mcsema_real_eip !40
  store i64 %130, i64* %RCX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %131 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -36
  %132 = add i64 %131, -36, !mcsema_real_eip !41
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !41
  %134 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 %129, i32* %134, !mcsema_real_eip !41
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -36
  %136 = add i64 %135, -36, !mcsema_real_eip !42
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !42
  %138 = bitcast i64* %_allin_new_bt_31 to i32*
  %139 = load i32, i32* %138, !mcsema_real_eip !42
  %140 = zext i32 %139 to i64, !mcsema_real_eip !42
  store i64 %140, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %141 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !43
  %143 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !43
  %_new_int2ptr_ = inttoptr i64 %143 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %143, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 16
  %144 = add i64 %141, 16, !mcsema_real_eip !44
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %144, i64* %RSP_val, !mcsema_real_eip !44
  %145 = load i64, i64* %RAX_val, !mcsema_real_eip !44
  store i64 %145, i64* %RAX, !mcsema_real_eip !44
  %146 = load i64, i64* %RBX_val, !mcsema_real_eip !44
  store i64 %146, i64* %RBX, !mcsema_real_eip !44
  %147 = load i64, i64* %RCX_val, !mcsema_real_eip !44
  store i64 %147, i64* %RCX, !mcsema_real_eip !44
  %148 = load i64, i64* %RDX_val, !mcsema_real_eip !44
  store i64 %148, i64* %RDX, !mcsema_real_eip !44
  %149 = load i64, i64* %RSI_val, !mcsema_real_eip !44
  store i64 %149, i64* %RSI, !mcsema_real_eip !44
  %150 = load i64, i64* %RDI_val, !mcsema_real_eip !44
  store i64 %150, i64* %RDI, !mcsema_real_eip !44
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %151 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %_new_ptr2int_36 = ptrtoint i8* %_load_rsp_ptr_35 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  %153 = load i64, i64* %R8_val, !mcsema_real_eip !44
  store i64 %153, i64* %R8, !mcsema_real_eip !44
  %154 = load i64, i64* %R9_val, !mcsema_real_eip !44
  store i64 %154, i64* %R9, !mcsema_real_eip !44
  %155 = load i64, i64* %R10_val, !mcsema_real_eip !44
  store i64 %155, i64* %R10, !mcsema_real_eip !44
  %156 = load i64, i64* %R11_val, !mcsema_real_eip !44
  store i64 %156, i64* %R11, !mcsema_real_eip !44
  %157 = load i64, i64* %R12_val, !mcsema_real_eip !44
  store i64 %157, i64* %R12, !mcsema_real_eip !44
  %158 = load i64, i64* %R13_val, !mcsema_real_eip !44
  store i64 %158, i64* %R13, !mcsema_real_eip !44
  %159 = load i64, i64* %R14_val, !mcsema_real_eip !44
  store i64 %159, i64* %R14, !mcsema_real_eip !44
  %160 = load i64, i64* %R15_val, !mcsema_real_eip !44
  store i64 %160, i64* %R15, !mcsema_real_eip !44
  %161 = load i64, i64* %RIP_val, !mcsema_real_eip !44
  store i64 %161, i64* %RIP, !mcsema_real_eip !44
  %162 = load i1, i1* %CF_val, !mcsema_real_eip !44
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !44
  %163 = load i1, i1* %PF_val, !mcsema_real_eip !44
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !44
  %164 = load i1, i1* %AF_val, !mcsema_real_eip !44
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !44
  %165 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  store i1 %165, i1* %ZF, align 1, !mcsema_real_eip !44
  %166 = load i1, i1* %SF_val, !mcsema_real_eip !44
  store i1 %166, i1* %SF, align 1, !mcsema_real_eip !44
  %167 = load i1, i1* %OF_val, !mcsema_real_eip !44
  store i1 %167, i1* %OF, align 1, !mcsema_real_eip !44
  %168 = load i1, i1* %DF_val, !mcsema_real_eip !44
  store i1 %168, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  %169 = load i1, i1* %FPU_B_val, !mcsema_real_eip !44
  store i1 %169, i1* %FPU_B, align 1, !mcsema_real_eip !44
  %170 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !44
  store i1 %170, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  %171 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !44
  store i3 %171, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  %172 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !44
  store i1 %172, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  %173 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !44
  store i1 %173, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  %174 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !44
  store i1 %174, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  %175 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !44
  store i1 %175, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  %176 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !44
  store i1 %176, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  %177 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !44
  store i1 %177, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  %178 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !44
  store i1 %178, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  %179 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !44
  store i1 %179, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  %180 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !44
  store i1 %180, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  %181 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !44
  store i1 %181, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  %182 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !44
  store i1 %182, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  %183 = load i1, i1* %FPU_X_val, !mcsema_real_eip !44
  store i1 %183, i1* %FPU_X, align 1, !mcsema_real_eip !44
  %184 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !44
  store i2 %184, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  %185 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !44
  store i2 %185, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  %186 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !44
  store i1 %186, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  %187 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !44
  store i1 %187, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  %188 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !44
  store i1 %188, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  %189 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !44
  store i1 %189, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  %190 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !44
  store i1 %190, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  %191 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !44
  store i1 %191, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %192 = load i64, i64* %53, align 4
  store i64 %192, i64* %52, align 4
  %193 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !44
  store i16 %193, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  %194 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !44
  store i64 %194, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  %195 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !44
  store i16 %195, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  %196 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !44
  store i64 %196, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  %197 = load i128, i128* %XMM0_val, !mcsema_real_eip !44
  store i128 %197, i128* %XMM0, align 1, !mcsema_real_eip !44
  %198 = load i128, i128* %XMM1_val, !mcsema_real_eip !44
  store i128 %198, i128* %XMM1, align 1, !mcsema_real_eip !44
  %199 = load i128, i128* %XMM2_val, !mcsema_real_eip !44
  store i128 %199, i128* %XMM2, align 1, !mcsema_real_eip !44
  %200 = load i128, i128* %XMM3_val, !mcsema_real_eip !44
  store i128 %200, i128* %XMM3, align 1, !mcsema_real_eip !44
  %201 = load i128, i128* %XMM4_val, !mcsema_real_eip !44
  store i128 %201, i128* %XMM4, align 1, !mcsema_real_eip !44
  %202 = load i128, i128* %XMM5_val, !mcsema_real_eip !44
  store i128 %202, i128* %XMM5, align 1, !mcsema_real_eip !44
  %203 = load i128, i128* %XMM6_val, !mcsema_real_eip !44
  store i128 %203, i128* %XMM6, align 1, !mcsema_real_eip !44
  %204 = load i128, i128* %XMM7_val, !mcsema_real_eip !44
  store i128 %204, i128* %XMM7, align 1, !mcsema_real_eip !44
  %205 = load i128, i128* %XMM8_val, !mcsema_real_eip !44
  store i128 %205, i128* %XMM8, align 1, !mcsema_real_eip !44
  %206 = load i128, i128* %XMM9_val, !mcsema_real_eip !44
  store i128 %206, i128* %XMM9, align 1, !mcsema_real_eip !44
  %207 = load i128, i128* %XMM10_val, !mcsema_real_eip !44
  store i128 %207, i128* %XMM10, align 1, !mcsema_real_eip !44
  %208 = load i128, i128* %XMM11_val, !mcsema_real_eip !44
  store i128 %208, i128* %XMM11, align 1, !mcsema_real_eip !44
  %209 = load i128, i128* %XMM12_val, !mcsema_real_eip !44
  store i128 %209, i128* %XMM12, align 1, !mcsema_real_eip !44
  %210 = load i128, i128* %XMM13_val, !mcsema_real_eip !44
  store i128 %210, i128* %XMM13, align 1, !mcsema_real_eip !44
  %211 = load i128, i128* %XMM14_val, !mcsema_real_eip !44
  store i128 %211, i128* %XMM14, align 1, !mcsema_real_eip !44
  %212 = load i128, i128* %XMM15_val, !mcsema_real_eip !44
  store i128 %212, i128* %XMM15, align 1, !mcsema_real_eip !44
  %213 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !44
  store i64 %213, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  %214 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !44
  store i64 %214, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*, i64 0
  %_RBP_ptr_ = alloca i8*, i64 0
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  tail call x86_64_sysvcc void @sub_30(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 44
  %_RBP_ptr_ = alloca i8*, i64 44
  %_local_stack_start_ptr_ = alloca i8, i64 44
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 44
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !29
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !29
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !29
  %XMM15_val = alloca i128, !mcsema_real_eip !29
  %XMM14_val = alloca i128, !mcsema_real_eip !29
  %XMM13_val = alloca i128, !mcsema_real_eip !29
  %XMM12_val = alloca i128, !mcsema_real_eip !29
  %XMM11_val = alloca i128, !mcsema_real_eip !29
  %XMM10_val = alloca i128, !mcsema_real_eip !29
  %XMM9_val = alloca i128, !mcsema_real_eip !29
  %XMM8_val = alloca i128, !mcsema_real_eip !29
  %XMM7_val = alloca i128, !mcsema_real_eip !29
  %XMM6_val = alloca i128, !mcsema_real_eip !29
  %XMM5_val = alloca i128, !mcsema_real_eip !29
  %XMM4_val = alloca i128, !mcsema_real_eip !29
  %XMM3_val = alloca i128, !mcsema_real_eip !29
  %XMM2_val = alloca i128, !mcsema_real_eip !29
  %XMM1_val = alloca i128, !mcsema_real_eip !29
  %XMM0_val = alloca i128, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !29
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !29
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !29
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !29
  %FPU_IM_val = alloca i1, !mcsema_real_eip !29
  %FPU_DM_val = alloca i1, !mcsema_real_eip !29
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !29
  %FPU_OM_val = alloca i1, !mcsema_real_eip !29
  %FPU_UM_val = alloca i1, !mcsema_real_eip !29
  %FPU_PM_val = alloca i1, !mcsema_real_eip !29
  %FPU_PC_val = alloca i2, !mcsema_real_eip !29
  %FPU_RC_val = alloca i2, !mcsema_real_eip !29
  %FPU_X_val = alloca i1, !mcsema_real_eip !29
  %FPU_IE_val = alloca i1, !mcsema_real_eip !29
  %FPU_DE_val = alloca i1, !mcsema_real_eip !29
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !29
  %FPU_OE_val = alloca i1, !mcsema_real_eip !29
  %FPU_UE_val = alloca i1, !mcsema_real_eip !29
  %FPU_PE_val = alloca i1, !mcsema_real_eip !29
  %FPU_SF_val = alloca i1, !mcsema_real_eip !29
  %FPU_ES_val = alloca i1, !mcsema_real_eip !29
  %FPU_C0_val = alloca i1, !mcsema_real_eip !29
  %FPU_C1_val = alloca i1, !mcsema_real_eip !29
  %FPU_C2_val = alloca i1, !mcsema_real_eip !29
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !29
  %FPU_C3_val = alloca i1, !mcsema_real_eip !29
  %FPU_B_val = alloca i1, !mcsema_real_eip !29
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !29
  %DF_val = alloca i1, !mcsema_real_eip !29
  %OF_val = alloca i1, !mcsema_real_eip !29
  %SF_val = alloca i1, !mcsema_real_eip !29
  %CF_val = alloca i1, !mcsema_real_eip !29
  %AF_val = alloca i1, !mcsema_real_eip !29
  %PF_val = alloca i1, !mcsema_real_eip !29
  %ZF_val = alloca i1, !mcsema_real_eip !29
  %RIP_val = alloca i64, !mcsema_real_eip !29
  %R14_val = alloca i64, !mcsema_real_eip !29
  %R13_val = alloca i64, !mcsema_real_eip !29
  %R12_val = alloca i64, !mcsema_real_eip !29
  %R11_val = alloca i64, !mcsema_real_eip !29
  %R10_val = alloca i64, !mcsema_real_eip !29
  %R9_val = alloca i64, !mcsema_real_eip !29
  %R8_val = alloca i64, !mcsema_real_eip !29
  %RSP_val = alloca i64, !mcsema_real_eip !29
  %RBP_val = alloca i64, !mcsema_real_eip !29
  %RDI_val = alloca i64, !mcsema_real_eip !29
  %RSI_val = alloca i64, !mcsema_real_eip !29
  %RDX_val = alloca i64, !mcsema_real_eip !29
  %RCX_val = alloca i64, !mcsema_real_eip !29
  %RBX_val = alloca i64, !mcsema_real_eip !29
  %RAX_val = alloca i64, !mcsema_real_eip !29
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !29
  %1 = load i64, i64* %RAX, !mcsema_real_eip !29
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !29
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !29
  %2 = load i64, i64* %RBX, !mcsema_real_eip !29
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !29
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !29
  %3 = load i64, i64* %RCX, !mcsema_real_eip !29
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !29
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !29
  %4 = load i64, i64* %RDX, !mcsema_real_eip !29
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !29
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !29
  %5 = load i64, i64* %RSI, !mcsema_real_eip !29
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !29
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !29
  %6 = load i64, i64* %RDI, !mcsema_real_eip !29
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !29
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !29
  %7 = load i64, i64* %RSP, !mcsema_real_eip !29
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !29
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !29
  %8 = load i64, i64* %RBP, !mcsema_real_eip !29
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !29
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !29
  %9 = load i64, i64* %R8, !mcsema_real_eip !29
  store i64 %9, i64* %R8_val, !mcsema_real_eip !29
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !29
  %10 = load i64, i64* %R9, !mcsema_real_eip !29
  store i64 %10, i64* %R9_val, !mcsema_real_eip !29
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !29
  %11 = load i64, i64* %R10, !mcsema_real_eip !29
  store i64 %11, i64* %R10_val, !mcsema_real_eip !29
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !29
  %12 = load i64, i64* %R11, !mcsema_real_eip !29
  store i64 %12, i64* %R11_val, !mcsema_real_eip !29
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !29
  %13 = load i64, i64* %R12, !mcsema_real_eip !29
  store i64 %13, i64* %R12_val, !mcsema_real_eip !29
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !29
  %14 = load i64, i64* %R13, !mcsema_real_eip !29
  store i64 %14, i64* %R13_val, !mcsema_real_eip !29
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !29
  %15 = load i64, i64* %R14, !mcsema_real_eip !29
  store i64 %15, i64* %R14_val, !mcsema_real_eip !29
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !29
  %16 = load i64, i64* %R15, !mcsema_real_eip !29
  store i64 %16, i64* %R15_val, !mcsema_real_eip !29
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !29
  %17 = load i64, i64* %RIP, !mcsema_real_eip !29
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !29
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !29
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !29
  store i1 %18, i1* %CF_val, !mcsema_real_eip !29
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !29
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !29
  store i1 %19, i1* %PF_val, !mcsema_real_eip !29
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !29
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !29
  store i1 %20, i1* %AF_val, !mcsema_real_eip !29
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !29
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !29
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !29
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !29
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !29
  store i1 %22, i1* %SF_val, !mcsema_real_eip !29
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !29
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !29
  store i1 %23, i1* %OF_val, !mcsema_real_eip !29
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !29
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !29
  store i1 %24, i1* %DF_val, !mcsema_real_eip !29
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !29
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !29
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !29
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !29
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !29
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !29
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !29
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !29
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !29
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !29
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !29
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !29
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !29
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !29
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !29
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !29
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !29
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !29
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !29
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !29
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !29
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !29
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !29
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !29
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !29
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !29
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !29
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !29
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !29
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !29
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !29
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !29
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !29
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !29
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !29
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !29
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !29
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !29
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !29
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !29
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !29
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !29
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !29
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !29
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !29
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !29
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !29
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !29
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !29
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !29
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !29
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !29
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !29
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !29
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !29
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !29
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !29
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !29
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !29
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !29
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !29
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !29
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !29
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !29
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !29
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !29
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !29
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !29
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !29
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !29
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !29
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !29
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !29
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !29
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !29
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !29
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !29
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !29
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !29
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !29
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !29
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !29
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !29
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !29
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !29
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !29
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !29
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !29
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !29
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !29
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !29
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !29
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !29
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !29
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !29
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !29
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !29
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !29
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !29
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !29
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !29
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !29
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !29
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !29
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !29
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !29
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !29
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !29
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !29
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !29
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !29
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !29
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %83 = add i64 %80, 8, !mcsema_real_eip !31
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !31
  %_ptr_to_int_39 = ptrtoint i64* %_allin_new_bt_2 to i64
  %_local_end_to_int_40 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_41 = bitcast i64* %_allin_new_bt_2 to i8*
  %_offset_above_rbp_42 = sub i64 %_ptr_to_int_39, %_local_end_to_int_40
  %_pot_address_in_parent_stack_43 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_42
  %_cond1_44 = icmp ugt i8* %_ptr_bt_41, %_local_stack_end_ptr_
  %_cond2_1_45 = icmp ugt i8* %_ptr_bt_41, %_parent_stack_end_ptr_
  %_cond2_2_46 = icmp ult i8* %_ptr_bt_41, %_parent_stack_start_ptr_
  %_cond2_47 = or i1 %_cond2_1_45, %_cond2_2_46
  %_cond4_48 = icmp ule i8* %_pot_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond1_n_cond2_49 = and i1 %_cond1_44, %_cond2_47
  %_cond1_n_cond2_cond3_50 = and i1 %_cond1_n_cond2_49, %_cond4_48
  br i1 %_cond1_n_cond2_cond3_50, label %85, label %86

; <label>:85:                                     ; preds = %55
  %_address_in_parent_stack_51 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_42
  %_address_in_parent_stack_bt_52 = bitcast i8* %_address_in_parent_stack_51 to i64*
  br label %86

; <label>:86:                                     ; preds = %55, %85
  %87 = phi i64* [ %_allin_new_bt_2, %55 ], [ %_address_in_parent_stack_bt_52, %85 ]
  %_new_load_53 = load i64, i64* %87
  store i64 %_new_load_53, i64* %RAX_val, !mcsema_real_eip !31
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %88 = add i64 %80, -12, !mcsema_real_eip !32
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !32
  %90 = load i64, i64* %RDI_val, !mcsema_real_eip !32
  %91 = trunc i64 %90 to i32, !mcsema_real_eip !32
  %92 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 %91, i32* %92, !mcsema_real_eip !32
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %94 = add i64 %93, -8, !mcsema_real_eip !33
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !33
  %96 = load i64, i64* %RSI_val, !mcsema_real_eip !33
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !33
  %98 = bitcast i64* %_allin_new_bt_7 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !33
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %100 = add i64 %99, -12, !mcsema_real_eip !34
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !34
  %102 = load i64, i64* %RDX_val, !mcsema_real_eip !34
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !34
  %104 = bitcast i64* %_allin_new_bt_10 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !34
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -16
  %106 = add i64 %105, -16, !mcsema_real_eip !35
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !35
  %108 = load i64, i64* %RCX_val, !mcsema_real_eip !35
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !35
  %110 = bitcast i64* %_allin_new_bt_13 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !35
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -20
  %112 = add i64 %111, -20, !mcsema_real_eip !36
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !36
  %114 = load i64, i64* %R8_val, !mcsema_real_eip !36
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !36
  %116 = bitcast i64* %_allin_new_bt_16 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !36
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -24
  %118 = add i64 %117, -24, !mcsema_real_eip !37
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !37
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !37
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !37
  %122 = bitcast i64* %_allin_new_bt_19 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !37
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -32
  %124 = add i64 %123, -32, !mcsema_real_eip !38
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !38
  %126 = load i64, i64* %RAX_val, !mcsema_real_eip !38
  store i64 %126, i64* %_allin_new_bt_22, !mcsema_real_eip !38
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -32
  %128 = add i64 %127, -32, !mcsema_real_eip !39
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !39
  %_ptr_to_int_54 = ptrtoint i64* %_allin_new_bt_25 to i64
  %_local_end_to_int_55 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_56 = bitcast i64* %_allin_new_bt_25 to i8*
  %_offset_above_rbp_57 = sub i64 %_ptr_to_int_54, %_local_end_to_int_55
  %_pot_address_in_parent_stack_58 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_57
  %_cond1_59 = icmp ugt i8* %_ptr_bt_56, %_local_stack_end_ptr_
  %_cond2_1_60 = icmp ugt i8* %_ptr_bt_56, %_parent_stack_end_ptr_
  %_cond2_2_61 = icmp ult i8* %_ptr_bt_56, %_parent_stack_start_ptr_
  %_cond2_62 = or i1 %_cond2_1_60, %_cond2_2_61
  %_cond4_63 = icmp ule i8* %_pot_address_in_parent_stack_58, %_parent_stack_end_ptr_
  %_cond1_n_cond2_64 = and i1 %_cond1_59, %_cond2_62
  %_cond1_n_cond2_cond3_65 = and i1 %_cond1_n_cond2_64, %_cond4_63
  br i1 %_cond1_n_cond2_cond3_65, label %130, label %131

; <label>:130:                                    ; preds = %86
  %_address_in_parent_stack_66 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_57
  %_address_in_parent_stack_bt_67 = bitcast i8* %_address_in_parent_stack_66 to i64*
  br label %131

; <label>:131:                                    ; preds = %86, %130
  %132 = phi i64* [ %_allin_new_bt_25, %86 ], [ %_address_in_parent_stack_bt_67, %130 ]
  %_new_load_68 = load i64, i64* %132
  store i64 %_new_load_68, i64* %RAX_val, !mcsema_real_eip !39
  %133 = inttoptr i64 %_new_load_68 to i64*, !mcsema_real_eip !40
  %134 = bitcast i64* %133 to i32*
  %_ptr_to_int_69 = ptrtoint i32* %134 to i64
  %_local_end_to_int_70 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_71 = bitcast i32* %134 to i8*
  %_offset_above_rbp_72 = sub i64 %_ptr_to_int_69, %_local_end_to_int_70
  %_pot_address_in_parent_stack_73 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_72
  %_cond1_74 = icmp ugt i8* %_ptr_bt_71, %_local_stack_end_ptr_
  %_cond2_1_75 = icmp ugt i8* %_ptr_bt_71, %_parent_stack_end_ptr_
  %_cond2_2_76 = icmp ult i8* %_ptr_bt_71, %_parent_stack_start_ptr_
  %_cond2_77 = or i1 %_cond2_1_75, %_cond2_2_76
  %_cond4_78 = icmp ule i8* %_pot_address_in_parent_stack_73, %_parent_stack_end_ptr_
  %_cond1_n_cond2_79 = and i1 %_cond1_74, %_cond2_77
  %_cond1_n_cond2_cond3_80 = and i1 %_cond1_n_cond2_79, %_cond4_78
  br i1 %_cond1_n_cond2_cond3_80, label %135, label %136

; <label>:135:                                    ; preds = %131
  %_address_in_parent_stack_81 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_72
  %_address_in_parent_stack_bt_82 = bitcast i8* %_address_in_parent_stack_81 to i32*
  br label %136

; <label>:136:                                    ; preds = %131, %135
  %137 = phi i32* [ %134, %131 ], [ %_address_in_parent_stack_bt_82, %135 ]
  %_new_load_83 = load i32, i32* %137
  %138 = zext i32 %_new_load_83 to i64, !mcsema_real_eip !40
  store i64 %138, i64* %RCX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -36
  %140 = add i64 %139, -36, !mcsema_real_eip !41
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !41
  %142 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 %_new_load_83, i32* %142, !mcsema_real_eip !41
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -36
  %144 = add i64 %143, -36, !mcsema_real_eip !42
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !42
  %146 = bitcast i64* %_allin_new_bt_31 to i32*
  %_ptr_to_int_84 = ptrtoint i32* %146 to i64
  %_local_end_to_int_85 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_86 = bitcast i32* %146 to i8*
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_85
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_ptr_bt_86, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_ptr_bt_86, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_ptr_bt_86, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  br i1 %_cond1_n_cond2_cond3_95, label %147, label %148

; <label>:147:                                    ; preds = %136
  %_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_address_in_parent_stack_bt_97 = bitcast i8* %_address_in_parent_stack_96 to i32*
  br label %148

; <label>:148:                                    ; preds = %136, %147
  %149 = phi i32* [ %146, %136 ], [ %_address_in_parent_stack_bt_97, %147 ]
  %_new_load_98 = load i32, i32* %149
  %150 = zext i32 %_new_load_98 to i64, !mcsema_real_eip !42
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %151 = load i64, i64* %RSP_val, !mcsema_real_eip !43
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !43
  %_ptr_to_int_99 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_local_end_to_int_100 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_101 = bitcast i64* %_allin_new_bt_33 to i8*
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_100
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_ptr_bt_101, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_ptr_bt_101, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_ptr_bt_101, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %153, label %154

; <label>:153:                                    ; preds = %148
  %_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_address_in_parent_stack_bt_112 = bitcast i8* %_address_in_parent_stack_111 to i64*
  br label %154

; <label>:154:                                    ; preds = %148, %153
  %155 = phi i64* [ %_allin_new_bt_33, %148 ], [ %_address_in_parent_stack_bt_112, %153 ]
  %_new_load_113 = load i64, i64* %155
  %_new_int2ptr_ = inttoptr i64 %_new_load_113 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_113, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 16
  %156 = add i64 %151, 16, !mcsema_real_eip !44
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %156, i64* %RSP_val, !mcsema_real_eip !44
  %157 = load i64, i64* %RAX_val, !mcsema_real_eip !44
  store i64 %157, i64* %RAX, !mcsema_real_eip !44
  %158 = load i64, i64* %RBX_val, !mcsema_real_eip !44
  store i64 %158, i64* %RBX, !mcsema_real_eip !44
  %159 = load i64, i64* %RCX_val, !mcsema_real_eip !44
  store i64 %159, i64* %RCX, !mcsema_real_eip !44
  %160 = load i64, i64* %RDX_val, !mcsema_real_eip !44
  store i64 %160, i64* %RDX, !mcsema_real_eip !44
  %161 = load i64, i64* %RSI_val, !mcsema_real_eip !44
  store i64 %161, i64* %RSI, !mcsema_real_eip !44
  %162 = load i64, i64* %RDI_val, !mcsema_real_eip !44
  store i64 %162, i64* %RDI, !mcsema_real_eip !44
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %163 = load i64, i64* %RSP_val, !mcsema_real_eip !44
  %_new_ptr2int_36 = ptrtoint i8* %_load_rsp_ptr_35 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  %165 = load i64, i64* %R8_val, !mcsema_real_eip !44
  store i64 %165, i64* %R8, !mcsema_real_eip !44
  %166 = load i64, i64* %R9_val, !mcsema_real_eip !44
  store i64 %166, i64* %R9, !mcsema_real_eip !44
  %167 = load i64, i64* %R10_val, !mcsema_real_eip !44
  store i64 %167, i64* %R10, !mcsema_real_eip !44
  %168 = load i64, i64* %R11_val, !mcsema_real_eip !44
  store i64 %168, i64* %R11, !mcsema_real_eip !44
  %169 = load i64, i64* %R12_val, !mcsema_real_eip !44
  store i64 %169, i64* %R12, !mcsema_real_eip !44
  %170 = load i64, i64* %R13_val, !mcsema_real_eip !44
  store i64 %170, i64* %R13, !mcsema_real_eip !44
  %171 = load i64, i64* %R14_val, !mcsema_real_eip !44
  store i64 %171, i64* %R14, !mcsema_real_eip !44
  %172 = load i64, i64* %R15_val, !mcsema_real_eip !44
  store i64 %172, i64* %R15, !mcsema_real_eip !44
  %173 = load i64, i64* %RIP_val, !mcsema_real_eip !44
  store i64 %173, i64* %RIP, !mcsema_real_eip !44
  %174 = load i1, i1* %CF_val, !mcsema_real_eip !44
  store i1 %174, i1* %CF, align 1, !mcsema_real_eip !44
  %175 = load i1, i1* %PF_val, !mcsema_real_eip !44
  store i1 %175, i1* %PF, align 1, !mcsema_real_eip !44
  %176 = load i1, i1* %AF_val, !mcsema_real_eip !44
  store i1 %176, i1* %AF, align 1, !mcsema_real_eip !44
  %177 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !44
  %178 = load i1, i1* %SF_val, !mcsema_real_eip !44
  store i1 %178, i1* %SF, align 1, !mcsema_real_eip !44
  %179 = load i1, i1* %OF_val, !mcsema_real_eip !44
  store i1 %179, i1* %OF, align 1, !mcsema_real_eip !44
  %180 = load i1, i1* %DF_val, !mcsema_real_eip !44
  store i1 %180, i1* %DF, align 1, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !44
  %181 = load i1, i1* %FPU_B_val, !mcsema_real_eip !44
  store i1 %181, i1* %FPU_B, align 1, !mcsema_real_eip !44
  %182 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !44
  store i1 %182, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  %183 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !44
  store i3 %183, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  %184 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !44
  store i1 %184, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  %185 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !44
  store i1 %185, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  %186 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !44
  store i1 %186, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  %187 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !44
  store i1 %187, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  %188 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !44
  store i1 %188, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  %189 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !44
  store i1 %189, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  %190 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !44
  store i1 %190, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  %191 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !44
  store i1 %191, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  %192 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !44
  store i1 %192, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  %193 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !44
  store i1 %193, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  %194 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !44
  store i1 %194, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  %195 = load i1, i1* %FPU_X_val, !mcsema_real_eip !44
  store i1 %195, i1* %FPU_X, align 1, !mcsema_real_eip !44
  %196 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !44
  store i2 %196, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  %197 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !44
  store i2 %197, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  %198 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !44
  store i1 %198, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  %199 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !44
  store i1 %199, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  %200 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !44
  store i1 %200, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  %201 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !44
  store i1 %201, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  %202 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !44
  store i1 %202, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  %203 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !44
  store i1 %203, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  %_ptr_to_int_114 = ptrtoint i64* %53 to i64
  %_local_end_to_int_115 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_116 = bitcast i64* %53 to i8*
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_115
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_ptr_bt_116, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_ptr_bt_116, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_ptr_bt_116, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %204, label %205

; <label>:204:                                    ; preds = %154
  %_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_address_in_parent_stack_bt_127 = bitcast i8* %_address_in_parent_stack_126 to i64*
  br label %205

; <label>:205:                                    ; preds = %154, %204
  %206 = phi i64* [ %53, %154 ], [ %_address_in_parent_stack_bt_127, %204 ]
  %_new_load_128 = load i64, i64* %206
  store i64 %_new_load_128, i64* %52, align 4
  %207 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !44
  store i16 %207, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  %208 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !44
  store i64 %208, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !44
  %209 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !44
  store i16 %209, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  %210 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !44
  store i64 %210, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !44
  %211 = load i128, i128* %XMM0_val, !mcsema_real_eip !44
  store i128 %211, i128* %XMM0, align 1, !mcsema_real_eip !44
  %212 = load i128, i128* %XMM1_val, !mcsema_real_eip !44
  store i128 %212, i128* %XMM1, align 1, !mcsema_real_eip !44
  %213 = load i128, i128* %XMM2_val, !mcsema_real_eip !44
  store i128 %213, i128* %XMM2, align 1, !mcsema_real_eip !44
  %214 = load i128, i128* %XMM3_val, !mcsema_real_eip !44
  store i128 %214, i128* %XMM3, align 1, !mcsema_real_eip !44
  %215 = load i128, i128* %XMM4_val, !mcsema_real_eip !44
  store i128 %215, i128* %XMM4, align 1, !mcsema_real_eip !44
  %216 = load i128, i128* %XMM5_val, !mcsema_real_eip !44
  store i128 %216, i128* %XMM5, align 1, !mcsema_real_eip !44
  %217 = load i128, i128* %XMM6_val, !mcsema_real_eip !44
  store i128 %217, i128* %XMM6, align 1, !mcsema_real_eip !44
  %218 = load i128, i128* %XMM7_val, !mcsema_real_eip !44
  store i128 %218, i128* %XMM7, align 1, !mcsema_real_eip !44
  %219 = load i128, i128* %XMM8_val, !mcsema_real_eip !44
  store i128 %219, i128* %XMM8, align 1, !mcsema_real_eip !44
  %220 = load i128, i128* %XMM9_val, !mcsema_real_eip !44
  store i128 %220, i128* %XMM9, align 1, !mcsema_real_eip !44
  %221 = load i128, i128* %XMM10_val, !mcsema_real_eip !44
  store i128 %221, i128* %XMM10, align 1, !mcsema_real_eip !44
  %222 = load i128, i128* %XMM11_val, !mcsema_real_eip !44
  store i128 %222, i128* %XMM11, align 1, !mcsema_real_eip !44
  %223 = load i128, i128* %XMM12_val, !mcsema_real_eip !44
  store i128 %223, i128* %XMM12, align 1, !mcsema_real_eip !44
  %224 = load i128, i128* %XMM13_val, !mcsema_real_eip !44
  store i128 %224, i128* %XMM13, align 1, !mcsema_real_eip !44
  %225 = load i128, i128* %XMM14_val, !mcsema_real_eip !44
  store i128 %225, i128* %XMM14, align 1, !mcsema_real_eip !44
  %226 = load i128, i128* %XMM15_val, !mcsema_real_eip !44
  store i128 %226, i128* %XMM15, align 1, !mcsema_real_eip !44
  %227 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !44
  store i64 %227, i64* %STACK_BASE, align 1, !mcsema_real_eip !44
  %228 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !44
  store i64 %228, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 49, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 52, [16 x i8] c"\09subq\09$80, %rsp\00"}
!5 = !{i64 56, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = !{i64 63, [20 x i8] c"\09movl\09$0, -52(%rbp)\00"}
!7 = !{i64 70, [21 x i8] c"\09cmpl\09$10, -52(%rbp)\00"}
!8 = !{i64 74, [8 x i8] c"\09jge\0926\00"}
!9 = !{i64 106, [16 x i8] c"\09movl\09$10, %eax\00"}
!10 = !{i64 111, [22 x i8] c"\09leaq\09-48(%rbp), %rcx\00"}
!11 = !{i64 115, [17 x i8] c"\09movl\09%eax, %edi\00"}
!12 = !{i64 117, [17 x i8] c"\09movl\09%eax, %esi\00"}
!13 = !{i64 119, [17 x i8] c"\09movl\09%eax, %edx\00"}
!14 = !{i64 121, [22 x i8] c"\09movq\09%rcx, -64(%rbp)\00"}
!15 = !{i64 125, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!16 = !{i64 127, [17 x i8] c"\09movl\09%eax, %r8d\00"}
!17 = !{i64 130, [17 x i8] c"\09movl\09%eax, %r9d\00"}
!18 = !{i64 133, [22 x i8] c"\09movq\09-64(%rbp), %r10\00"}
!19 = !{i64 137, [19 x i8] c"\09movq\09%r10, (%rsp)\00"}
!20 = !{i64 141, [12 x i8] c"\09callq\09-146\00"}
!21 = !{i64 146, [16 x i8] c"\09addq\09$80, %rsp\00"}
!22 = !{i64 150, [11 x i8] c"\09popq\09%rbp\00"}
!23 = !{i64 151, [6 x i8] c"\09retq\00"}
!24 = !{i64 80, [24 x i8] c"\09movslq\09-52(%rbp), %rax\00"}
!25 = !{i64 84, [28 x i8] c"\09movl\09$21, -48(%rbp,%rax,4)\00"}
!26 = !{i64 92, [22 x i8] c"\09movl\09-52(%rbp), %eax\00"}
!27 = !{i64 95, [15 x i8] c"\09addl\09$1, %eax\00"}
!28 = !{i64 98, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!29 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!30 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!31 = !{i64 4, [21 x i8] c"\09movq\0916(%rbp), %rax\00"}
!32 = !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!33 = !{i64 11, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!34 = !{i64 14, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!35 = !{i64 17, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!36 = !{i64 20, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!37 = !{i64 24, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!38 = !{i64 28, [22 x i8] c"\09movq\09%rax, -32(%rbp)\00"}
!39 = !{i64 32, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!40 = !{i64 36, [19 x i8] c"\09movl\09(%rax), %ecx\00"}
!41 = !{i64 38, [22 x i8] c"\09movl\09%ecx, -36(%rbp)\00"}
!42 = !{i64 41, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!43 = !{i64 44, [11 x i8] c"\09popq\09%rbp\00"}
!44 = !{i64 45, [6 x i8] c"\09retq\00"}
