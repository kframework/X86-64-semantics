; ModuleID = 'Output/test_20.clang.trans.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 92
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 92
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
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %81 = add i64 %78, -12, !mcsema_real_eip !4
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64, i64* %RDI_val, !mcsema_real_eip !4
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !4
  %85 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !4
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -8
  %87 = add i64 %86, -8, !mcsema_real_eip !5
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !5
  %89 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 0, i32* %89, !mcsema_real_eip !5
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -4
  %91 = add i64 %90, -4, !mcsema_real_eip !6
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !6
  %93 = bitcast i64* %_allin_new_bt_8 to i32*
  %94 = load i32, i32* %93, !mcsema_real_eip !6
  %95 = zext i32 %94 to i64, !mcsema_real_eip !6
  store i64 %95, i64* %RDI_val, !mcsema_real_eip !6
  %96 = icmp eq i32 %94, 0, !mcsema_real_eip !7
  store i1 %96, i1* %ZF_val, !mcsema_real_eip !7
  %97 = icmp slt i32 %94, 0
  store i1 %97, i1* %SF_val, !mcsema_real_eip !7
  %98 = trunc i32 %94 to i8, !mcsema_real_eip !7
  %99 = tail call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !7
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF_val, !mcsema_real_eip !7
  store i1 false, i1* %CF_val, !mcsema_real_eip !7
  store i1 false, i1* %OF_val, !mcsema_real_eip !7
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -12
  %103 = add i64 %102, -12, !mcsema_real_eip !8
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !8
  %105 = load i64, i64* %RDI_val, !mcsema_real_eip !8
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !8
  %107 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !8
  %108 = load i1, i1* %ZF_val, !mcsema_real_eip !9
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  br i1 %108, label %block_0x19f, label %block_0x21, !mcsema_real_eip !9

block_0x19f:                                      ; preds = %entry
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -8
  %110 = add i64 %109, -8, !mcsema_real_eip !10
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !10
  %112 = bitcast i64* %_allin_new_bt_14 to i32*
  %113 = load i32, i32* %112, !mcsema_real_eip !10
  %114 = zext i32 %113 to i64, !mcsema_real_eip !10
  store i1 false, i1* %AF_val, !mcsema_real_eip !11
  %115 = icmp slt i32 %113, 0
  store i1 %115, i1* %SF_val, !mcsema_real_eip !11
  %116 = icmp eq i32 %113, 0, !mcsema_real_eip !11
  store i1 %116, i1* %ZF_val, !mcsema_real_eip !11
  store i1 false, i1* %OF_val, !mcsema_real_eip !11
  %117 = trunc i32 %113 to i8, !mcsema_real_eip !11
  %118 = tail call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !11
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF_val, !mcsema_real_eip !11
  store i1 false, i1* %CF_val, !mcsema_real_eip !11
  store i64 %114, i64* %RAX_val, !mcsema_real_eip !11
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %121 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -8
  %122 = add i64 %121, -8, !mcsema_real_eip !12
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !12
  %124 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %113, i32* %124, !mcsema_real_eip !12
  br label %block_0x2c8, !mcsema_real_eip !13

block_0x21:                                       ; preds = %entry
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %125 = add i64 %109, -12, !mcsema_real_eip !14
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !14
  %127 = bitcast i64* %_allin_new_bt_19 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !14
  %129 = add i32 %128, -1
  %130 = xor i32 %129, %128, !mcsema_real_eip !15
  %131 = and i32 %130, 16, !mcsema_real_eip !15
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !15
  store i1 %132, i1* %AF_val, !mcsema_real_eip !15
  %133 = trunc i32 %129 to i8, !mcsema_real_eip !15
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !15
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF_val, !mcsema_real_eip !15
  %137 = icmp eq i32 %129, 0, !mcsema_real_eip !15
  store i1 %137, i1* %ZF_val, !mcsema_real_eip !15
  %138 = icmp slt i32 %129, 0
  store i1 %138, i1* %SF_val, !mcsema_real_eip !15
  %139 = icmp eq i32 %128, 0
  store i1 %139, i1* %CF_val, !mcsema_real_eip !15
  %140 = and i32 %130, %128, !mcsema_real_eip !15
  %141 = icmp slt i32 %140, 0
  store i1 %141, i1* %OF_val, !mcsema_real_eip !15
  %142 = zext i32 %129 to i64, !mcsema_real_eip !15
  store i64 %142, i64* %RAX_val, !mcsema_real_eip !15
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -16
  %144 = add i64 %143, -16, !mcsema_real_eip !16
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !16
  %146 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 %129, i32* %146, !mcsema_real_eip !16
  %147 = load i1, i1* %ZF_val, !mcsema_real_eip !17
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  br i1 %147, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !17

block_0x2c8:                                      ; preds = %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -8
  %150 = add i64 %149, -8, !mcsema_real_eip !19
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !19
  %152 = bitcast i64* %_allin_new_bt_26 to i32*
  %153 = load i32, i32* %152, !mcsema_real_eip !19
  %154 = zext i32 %153 to i64, !mcsema_real_eip !19
  store i64 %154, i64* %RAX_val, !mcsema_real_eip !19
  %_load_rsp_ptr_27 = load i8*, i8** %_RSP_ptr_
  %155 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  %_allin_new_bt_28 = bitcast i8* %_load_rsp_ptr_27 to i64*
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !20
  %157 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !20
  %_new_int2ptr_ = inttoptr i64 %157 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %157, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_27, i64 16
  %158 = add i64 %155, 16, !mcsema_real_eip !21
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %158, i64* %RSP_val, !mcsema_real_eip !21
  %159 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  store i64 %159, i64* %RAX, !mcsema_real_eip !21
  %160 = load i64, i64* %RBX_val, !mcsema_real_eip !21
  store i64 %160, i64* %RBX, !mcsema_real_eip !21
  %161 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %161, i64* %RCX, !mcsema_real_eip !21
  %162 = load i64, i64* %RDX_val, !mcsema_real_eip !21
  store i64 %162, i64* %RDX, !mcsema_real_eip !21
  %163 = load i64, i64* %RSI_val, !mcsema_real_eip !21
  store i64 %163, i64* %RSI, !mcsema_real_eip !21
  %164 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  store i64 %164, i64* %RDI, !mcsema_real_eip !21
  %_load_rsp_ptr_30 = load i8*, i8** %_RSP_ptr_
  %165 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_ptr2int_31 = ptrtoint i8* %_load_rsp_ptr_30 to i64
  store volatile i64 %_new_ptr2int_31, i64* %RSP
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_ptr2int_33 = ptrtoint i8* %_load_rbp_ptr_32 to i64
  store volatile i64 %_new_ptr2int_33, i64* %RBP
  %167 = load i64, i64* %R8_val, !mcsema_real_eip !21
  store i64 %167, i64* %R8, !mcsema_real_eip !21
  %168 = load i64, i64* %R9_val, !mcsema_real_eip !21
  store i64 %168, i64* %R9, !mcsema_real_eip !21
  %169 = load i64, i64* %R10_val, !mcsema_real_eip !21
  store i64 %169, i64* %R10, !mcsema_real_eip !21
  %170 = load i64, i64* %R11_val, !mcsema_real_eip !21
  store i64 %170, i64* %R11, !mcsema_real_eip !21
  %171 = load i64, i64* %R12_val, !mcsema_real_eip !21
  store i64 %171, i64* %R12, !mcsema_real_eip !21
  %172 = load i64, i64* %R13_val, !mcsema_real_eip !21
  store i64 %172, i64* %R13, !mcsema_real_eip !21
  %173 = load i64, i64* %R14_val, !mcsema_real_eip !21
  store i64 %173, i64* %R14, !mcsema_real_eip !21
  %174 = load i64, i64* %R15_val, !mcsema_real_eip !21
  store i64 %174, i64* %R15, !mcsema_real_eip !21
  %175 = load i64, i64* %RIP_val, !mcsema_real_eip !21
  store i64 %175, i64* %RIP, !mcsema_real_eip !21
  %176 = load i1, i1* %CF_val, !mcsema_real_eip !21
  store i1 %176, i1* %CF, align 1, !mcsema_real_eip !21
  %177 = load i1, i1* %PF_val, !mcsema_real_eip !21
  store i1 %177, i1* %PF, align 1, !mcsema_real_eip !21
  %178 = load i1, i1* %AF_val, !mcsema_real_eip !21
  store i1 %178, i1* %AF, align 1, !mcsema_real_eip !21
  %179 = load i1, i1* %ZF_val, !mcsema_real_eip !21
  store i1 %179, i1* %ZF, align 1, !mcsema_real_eip !21
  %180 = load i1, i1* %SF_val, !mcsema_real_eip !21
  store i1 %180, i1* %SF, align 1, !mcsema_real_eip !21
  %181 = load i1, i1* %OF_val, !mcsema_real_eip !21
  store i1 %181, i1* %OF, align 1, !mcsema_real_eip !21
  %182 = load i1, i1* %DF_val, !mcsema_real_eip !21
  store i1 %182, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %183 = load i1, i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %183, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %184 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %184, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %185 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %185, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %186 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %186, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %187 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %187, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %188 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %188, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %189 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %189, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %190 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %190, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %191 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %191, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %192 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %192, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %193 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %193, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %194 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %194, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %195 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %195, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %196 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %196, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %197 = load i1, i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %197, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %198 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %198, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %199 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %199, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %200 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %200, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %201 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %201, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %202 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %202, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %203 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %203, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %204 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %204, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %205 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %205, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %206 = load i64, i64* %53, align 4
  store i64 %206, i64* %52, align 4
  %207 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %207, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %208 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %208, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %209 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %209, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %210 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %210, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %211 = load i128, i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %211, i128* %XMM0, align 1, !mcsema_real_eip !21
  %212 = load i128, i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %212, i128* %XMM1, align 1, !mcsema_real_eip !21
  %213 = load i128, i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %213, i128* %XMM2, align 1, !mcsema_real_eip !21
  %214 = load i128, i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %214, i128* %XMM3, align 1, !mcsema_real_eip !21
  %215 = load i128, i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %215, i128* %XMM4, align 1, !mcsema_real_eip !21
  %216 = load i128, i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %216, i128* %XMM5, align 1, !mcsema_real_eip !21
  %217 = load i128, i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %217, i128* %XMM6, align 1, !mcsema_real_eip !21
  %218 = load i128, i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %218, i128* %XMM7, align 1, !mcsema_real_eip !21
  %219 = load i128, i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %219, i128* %XMM8, align 1, !mcsema_real_eip !21
  %220 = load i128, i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %220, i128* %XMM9, align 1, !mcsema_real_eip !21
  %221 = load i128, i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %221, i128* %XMM10, align 1, !mcsema_real_eip !21
  %222 = load i128, i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %222, i128* %XMM11, align 1, !mcsema_real_eip !21
  %223 = load i128, i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %223, i128* %XMM12, align 1, !mcsema_real_eip !21
  %224 = load i128, i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %224, i128* %XMM13, align 1, !mcsema_real_eip !21
  %225 = load i128, i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %225, i128* %XMM14, align 1, !mcsema_real_eip !21
  %226 = load i128, i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %226, i128* %XMM15, align 1, !mcsema_real_eip !21
  %227 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %227, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %228 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %228, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x1ad:                                      ; preds = %block_0x21
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -8
  %229 = add i64 %148, -8, !mcsema_real_eip !18
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !18
  %231 = bitcast i64* %_allin_new_bt_35 to i32*
  %232 = load i32, i32* %231, !mcsema_real_eip !18
  %uadd155 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 1)
  %233 = extractvalue { i32, i1 } %uadd155, 0
  %234 = xor i32 %233, %232, !mcsema_real_eip !22
  %235 = and i32 %234, 16, !mcsema_real_eip !22
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !22
  store i1 %236, i1* %AF_val, !mcsema_real_eip !22
  %237 = icmp slt i32 %233, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !22
  %238 = icmp eq i32 %233, 0, !mcsema_real_eip !22
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !22
  %239 = xor i32 %232, -2147483648, !mcsema_real_eip !22
  %240 = and i32 %234, %239, !mcsema_real_eip !22
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !22
  %242 = trunc i32 %233 to i8, !mcsema_real_eip !22
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !22
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  store i1 %245, i1* %PF_val, !mcsema_real_eip !22
  %246 = extractvalue { i32, i1 } %uadd155, 1
  store i1 %246, i1* %CF_val, !mcsema_real_eip !22
  %247 = zext i32 %233 to i64, !mcsema_real_eip !22
  store i64 %247, i64* %RAX_val, !mcsema_real_eip !22
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -8
  %249 = add i64 %248, -8, !mcsema_real_eip !23
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !23
  %251 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %233, i32* %251, !mcsema_real_eip !23
  br label %block_0x2c8, !mcsema_real_eip !24

block_0x35:                                       ; preds = %block_0x21
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -12
  %252 = add i64 %148, -12, !mcsema_real_eip !25
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !25
  %254 = bitcast i64* %_allin_new_bt_40 to i32*
  %255 = load i32, i32* %254, !mcsema_real_eip !25
  %256 = add i32 %255, -2
  %257 = xor i32 %256, %255, !mcsema_real_eip !26
  %258 = and i32 %257, 16, !mcsema_real_eip !26
  %259 = icmp ne i32 %258, 0, !mcsema_real_eip !26
  store i1 %259, i1* %AF_val, !mcsema_real_eip !26
  %260 = trunc i32 %256 to i8, !mcsema_real_eip !26
  %261 = tail call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !26
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  store i1 %263, i1* %PF_val, !mcsema_real_eip !26
  %264 = icmp eq i32 %256, 0, !mcsema_real_eip !26
  store i1 %264, i1* %ZF_val, !mcsema_real_eip !26
  %265 = icmp slt i32 %256, 0
  store i1 %265, i1* %SF_val, !mcsema_real_eip !26
  %266 = icmp ult i32 %255, 2, !mcsema_real_eip !26
  store i1 %266, i1* %CF_val, !mcsema_real_eip !26
  %267 = and i32 %257, %255, !mcsema_real_eip !26
  %268 = icmp slt i32 %267, 0
  store i1 %268, i1* %OF_val, !mcsema_real_eip !26
  %269 = zext i32 %256 to i64, !mcsema_real_eip !26
  store i64 %269, i64* %RAX_val, !mcsema_real_eip !26
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %270 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -20
  %271 = add i64 %270, -20, !mcsema_real_eip !27
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !27
  %273 = bitcast i64* %_allin_new_bt_43 to i32*
  store i32 %256, i32* %273, !mcsema_real_eip !27
  %274 = load i1, i1* %ZF_val, !mcsema_real_eip !28
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %275 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  br i1 %274, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !28

block_0x1bb:                                      ; preds = %block_0x35
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -8
  %276 = add i64 %275, -8, !mcsema_real_eip !29
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !29
  %278 = bitcast i64* %_allin_new_bt_46 to i32*
  %279 = load i32, i32* %278, !mcsema_real_eip !29
  %uadd154 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %279, i32 2)
  %280 = extractvalue { i32, i1 } %uadd154, 0
  %281 = xor i32 %280, %279, !mcsema_real_eip !30
  %282 = and i32 %281, 16, !mcsema_real_eip !30
  %283 = icmp ne i32 %282, 0, !mcsema_real_eip !30
  store i1 %283, i1* %AF_val, !mcsema_real_eip !30
  %284 = icmp slt i32 %280, 0
  store i1 %284, i1* %SF_val, !mcsema_real_eip !30
  %285 = icmp eq i32 %280, 0, !mcsema_real_eip !30
  store i1 %285, i1* %ZF_val, !mcsema_real_eip !30
  %286 = xor i32 %279, -2147483648, !mcsema_real_eip !30
  %287 = and i32 %281, %286, !mcsema_real_eip !30
  %288 = icmp slt i32 %287, 0
  store i1 %288, i1* %OF_val, !mcsema_real_eip !30
  %289 = trunc i32 %280 to i8, !mcsema_real_eip !30
  %290 = tail call i8 @llvm.ctpop.i8(i8 %289), !mcsema_real_eip !30
  %291 = and i8 %290, 1
  %292 = icmp eq i8 %291, 0
  store i1 %292, i1* %PF_val, !mcsema_real_eip !30
  %293 = extractvalue { i32, i1 } %uadd154, 1
  store i1 %293, i1* %CF_val, !mcsema_real_eip !30
  %294 = zext i32 %280 to i64, !mcsema_real_eip !30
  store i64 %294, i64* %RAX_val, !mcsema_real_eip !30
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %295 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -8
  %296 = add i64 %295, -8, !mcsema_real_eip !31
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !31
  %298 = bitcast i64* %_allin_new_bt_49 to i32*
  store i32 %280, i32* %298, !mcsema_real_eip !31
  br label %block_0x2c8, !mcsema_real_eip !32

block_0x49:                                       ; preds = %block_0x35
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %299 = add i64 %275, -12, !mcsema_real_eip !33
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !33
  %301 = bitcast i64* %_allin_new_bt_51 to i32*
  %302 = load i32, i32* %301, !mcsema_real_eip !33
  %303 = add i32 %302, -4
  %304 = xor i32 %303, %302, !mcsema_real_eip !34
  %305 = and i32 %304, 16, !mcsema_real_eip !34
  %306 = icmp ne i32 %305, 0, !mcsema_real_eip !34
  store i1 %306, i1* %AF_val, !mcsema_real_eip !34
  %307 = trunc i32 %303 to i8, !mcsema_real_eip !34
  %308 = tail call i8 @llvm.ctpop.i8(i8 %307), !mcsema_real_eip !34
  %309 = and i8 %308, 1
  %310 = icmp eq i8 %309, 0
  store i1 %310, i1* %PF_val, !mcsema_real_eip !34
  %311 = icmp eq i32 %303, 0, !mcsema_real_eip !34
  store i1 %311, i1* %ZF_val, !mcsema_real_eip !34
  %312 = icmp slt i32 %303, 0
  store i1 %312, i1* %SF_val, !mcsema_real_eip !34
  %313 = icmp ult i32 %302, 4, !mcsema_real_eip !34
  store i1 %313, i1* %CF_val, !mcsema_real_eip !34
  %314 = and i32 %304, %302, !mcsema_real_eip !34
  %315 = icmp slt i32 %314, 0
  store i1 %315, i1* %OF_val, !mcsema_real_eip !34
  %316 = zext i32 %303 to i64, !mcsema_real_eip !34
  store i64 %316, i64* %RAX_val, !mcsema_real_eip !34
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %317 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -24
  %318 = add i64 %317, -24, !mcsema_real_eip !35
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !35
  %320 = bitcast i64* %_allin_new_bt_54 to i32*
  store i32 %303, i32* %320, !mcsema_real_eip !35
  %321 = load i1, i1* %ZF_val, !mcsema_real_eip !36
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %322 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  br i1 %321, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !36

block_0x1c9:                                      ; preds = %block_0x49
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -8
  %323 = add i64 %322, -8, !mcsema_real_eip !37
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !37
  %325 = bitcast i64* %_allin_new_bt_57 to i32*
  %326 = load i32, i32* %325, !mcsema_real_eip !37
  %uadd153 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %326, i32 4)
  %327 = extractvalue { i32, i1 } %uadd153, 0
  %328 = xor i32 %327, %326, !mcsema_real_eip !38
  %329 = and i32 %328, 16, !mcsema_real_eip !38
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !38
  store i1 %330, i1* %AF_val, !mcsema_real_eip !38
  %331 = icmp slt i32 %327, 0
  store i1 %331, i1* %SF_val, !mcsema_real_eip !38
  %332 = icmp eq i32 %327, 0, !mcsema_real_eip !38
  store i1 %332, i1* %ZF_val, !mcsema_real_eip !38
  %333 = xor i32 %326, -2147483648, !mcsema_real_eip !38
  %334 = and i32 %328, %333, !mcsema_real_eip !38
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !38
  %336 = trunc i32 %327 to i8, !mcsema_real_eip !38
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !38
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !38
  %340 = extractvalue { i32, i1 } %uadd153, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !38
  %341 = zext i32 %327 to i64, !mcsema_real_eip !38
  store i64 %341, i64* %RAX_val, !mcsema_real_eip !38
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %342 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -8
  %343 = add i64 %342, -8, !mcsema_real_eip !39
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !39
  %345 = bitcast i64* %_allin_new_bt_60 to i32*
  store i32 %327, i32* %345, !mcsema_real_eip !39
  br label %block_0x2c8, !mcsema_real_eip !40

block_0x5d:                                       ; preds = %block_0x49
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -12
  %346 = add i64 %322, -12, !mcsema_real_eip !41
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !41
  %348 = bitcast i64* %_allin_new_bt_62 to i32*
  %349 = load i32, i32* %348, !mcsema_real_eip !41
  %350 = add i32 %349, -6
  %351 = xor i32 %350, %349, !mcsema_real_eip !42
  %352 = and i32 %351, 16, !mcsema_real_eip !42
  %353 = icmp ne i32 %352, 0, !mcsema_real_eip !42
  store i1 %353, i1* %AF_val, !mcsema_real_eip !42
  %354 = trunc i32 %350 to i8, !mcsema_real_eip !42
  %355 = tail call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !42
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  store i1 %357, i1* %PF_val, !mcsema_real_eip !42
  %358 = icmp eq i32 %350, 0, !mcsema_real_eip !42
  store i1 %358, i1* %ZF_val, !mcsema_real_eip !42
  %359 = icmp slt i32 %350, 0
  store i1 %359, i1* %SF_val, !mcsema_real_eip !42
  %360 = icmp ult i32 %349, 6, !mcsema_real_eip !42
  store i1 %360, i1* %CF_val, !mcsema_real_eip !42
  %361 = and i32 %351, %349, !mcsema_real_eip !42
  %362 = icmp slt i32 %361, 0
  store i1 %362, i1* %OF_val, !mcsema_real_eip !42
  %363 = zext i32 %350 to i64, !mcsema_real_eip !42
  store i64 %363, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %364 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -28
  %365 = add i64 %364, -28, !mcsema_real_eip !43
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !43
  %367 = bitcast i64* %_allin_new_bt_65 to i32*
  store i32 %350, i32* %367, !mcsema_real_eip !43
  %368 = load i1, i1* %ZF_val, !mcsema_real_eip !44
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %369 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  br i1 %368, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !44

block_0x1d7:                                      ; preds = %block_0x5d
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -8
  %370 = add i64 %369, -8, !mcsema_real_eip !45
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !45
  %372 = bitcast i64* %_allin_new_bt_68 to i32*
  %373 = load i32, i32* %372, !mcsema_real_eip !45
  %uadd152 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 6)
  %374 = extractvalue { i32, i1 } %uadd152, 0
  %375 = xor i32 %374, %373, !mcsema_real_eip !46
  %376 = and i32 %375, 16, !mcsema_real_eip !46
  %377 = icmp ne i32 %376, 0, !mcsema_real_eip !46
  store i1 %377, i1* %AF_val, !mcsema_real_eip !46
  %378 = icmp slt i32 %374, 0
  store i1 %378, i1* %SF_val, !mcsema_real_eip !46
  %379 = icmp eq i32 %374, 0, !mcsema_real_eip !46
  store i1 %379, i1* %ZF_val, !mcsema_real_eip !46
  %380 = xor i32 %373, -2147483648, !mcsema_real_eip !46
  %381 = and i32 %375, %380, !mcsema_real_eip !46
  %382 = icmp slt i32 %381, 0
  store i1 %382, i1* %OF_val, !mcsema_real_eip !46
  %383 = trunc i32 %374 to i8, !mcsema_real_eip !46
  %384 = tail call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !46
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF_val, !mcsema_real_eip !46
  %387 = extractvalue { i32, i1 } %uadd152, 1
  store i1 %387, i1* %CF_val, !mcsema_real_eip !46
  %388 = zext i32 %374 to i64, !mcsema_real_eip !46
  store i64 %388, i64* %RAX_val, !mcsema_real_eip !46
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %389 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -8
  %390 = add i64 %389, -8, !mcsema_real_eip !47
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %391 = inttoptr i64 %390 to i64*, !mcsema_real_eip !47
  %392 = bitcast i64* %_allin_new_bt_71 to i32*
  store i32 %374, i32* %392, !mcsema_real_eip !47
  br label %block_0x2c8, !mcsema_real_eip !48

block_0x71:                                       ; preds = %block_0x5d
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -12
  %393 = add i64 %369, -12, !mcsema_real_eip !49
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !49
  %395 = bitcast i64* %_allin_new_bt_73 to i32*
  %396 = load i32, i32* %395, !mcsema_real_eip !49
  %397 = add i32 %396, -12
  %398 = xor i32 %397, %396, !mcsema_real_eip !50
  %399 = and i32 %398, 16, !mcsema_real_eip !50
  %400 = icmp ne i32 %399, 0, !mcsema_real_eip !50
  store i1 %400, i1* %AF_val, !mcsema_real_eip !50
  %401 = trunc i32 %397 to i8, !mcsema_real_eip !50
  %402 = tail call i8 @llvm.ctpop.i8(i8 %401), !mcsema_real_eip !50
  %403 = and i8 %402, 1
  %404 = icmp eq i8 %403, 0
  store i1 %404, i1* %PF_val, !mcsema_real_eip !50
  %405 = icmp eq i32 %397, 0, !mcsema_real_eip !50
  store i1 %405, i1* %ZF_val, !mcsema_real_eip !50
  %406 = icmp slt i32 %397, 0
  store i1 %406, i1* %SF_val, !mcsema_real_eip !50
  %407 = icmp ult i32 %396, 12, !mcsema_real_eip !50
  store i1 %407, i1* %CF_val, !mcsema_real_eip !50
  %408 = and i32 %398, %396, !mcsema_real_eip !50
  %409 = icmp slt i32 %408, 0
  store i1 %409, i1* %OF_val, !mcsema_real_eip !50
  %410 = zext i32 %397 to i64, !mcsema_real_eip !50
  store i64 %410, i64* %RAX_val, !mcsema_real_eip !50
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %411 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -32
  %412 = add i64 %411, -32, !mcsema_real_eip !51
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !51
  %414 = bitcast i64* %_allin_new_bt_76 to i32*
  store i32 %397, i32* %414, !mcsema_real_eip !51
  %415 = load i1, i1* %ZF_val, !mcsema_real_eip !52
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %416 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  br i1 %415, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !52

block_0x1e5:                                      ; preds = %block_0x71
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -8
  %417 = add i64 %416, -8, !mcsema_real_eip !53
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !53
  %419 = bitcast i64* %_allin_new_bt_79 to i32*
  %420 = load i32, i32* %419, !mcsema_real_eip !53
  %uadd151 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %420, i32 12)
  %421 = extractvalue { i32, i1 } %uadd151, 0
  %422 = xor i32 %421, %420, !mcsema_real_eip !54
  %423 = and i32 %422, 16, !mcsema_real_eip !54
  %424 = icmp ne i32 %423, 0, !mcsema_real_eip !54
  store i1 %424, i1* %AF_val, !mcsema_real_eip !54
  %425 = icmp slt i32 %421, 0
  store i1 %425, i1* %SF_val, !mcsema_real_eip !54
  %426 = icmp eq i32 %421, 0, !mcsema_real_eip !54
  store i1 %426, i1* %ZF_val, !mcsema_real_eip !54
  %427 = xor i32 %420, -2147483648, !mcsema_real_eip !54
  %428 = and i32 %422, %427, !mcsema_real_eip !54
  %429 = icmp slt i32 %428, 0
  store i1 %429, i1* %OF_val, !mcsema_real_eip !54
  %430 = trunc i32 %421 to i8, !mcsema_real_eip !54
  %431 = tail call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !54
  %432 = and i8 %431, 1
  %433 = icmp eq i8 %432, 0
  store i1 %433, i1* %PF_val, !mcsema_real_eip !54
  %434 = extractvalue { i32, i1 } %uadd151, 1
  store i1 %434, i1* %CF_val, !mcsema_real_eip !54
  %435 = zext i32 %421 to i64, !mcsema_real_eip !54
  store i64 %435, i64* %RAX_val, !mcsema_real_eip !54
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %436 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -8
  %437 = add i64 %436, -8, !mcsema_real_eip !55
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %438 = inttoptr i64 %437 to i64*, !mcsema_real_eip !55
  %439 = bitcast i64* %_allin_new_bt_82 to i32*
  store i32 %421, i32* %439, !mcsema_real_eip !55
  br label %block_0x2c8, !mcsema_real_eip !56

block_0x85:                                       ; preds = %block_0x71
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -12
  %440 = add i64 %416, -12, !mcsema_real_eip !57
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %441 = inttoptr i64 %440 to i64*, !mcsema_real_eip !57
  %442 = bitcast i64* %_allin_new_bt_84 to i32*
  %443 = load i32, i32* %442, !mcsema_real_eip !57
  %444 = add i32 %443, -13
  %445 = xor i32 %444, %443, !mcsema_real_eip !58
  %446 = and i32 %445, 16, !mcsema_real_eip !58
  %447 = icmp ne i32 %446, 0, !mcsema_real_eip !58
  store i1 %447, i1* %AF_val, !mcsema_real_eip !58
  %448 = trunc i32 %444 to i8, !mcsema_real_eip !58
  %449 = tail call i8 @llvm.ctpop.i8(i8 %448), !mcsema_real_eip !58
  %450 = and i8 %449, 1
  %451 = icmp eq i8 %450, 0
  store i1 %451, i1* %PF_val, !mcsema_real_eip !58
  %452 = icmp eq i32 %444, 0, !mcsema_real_eip !58
  store i1 %452, i1* %ZF_val, !mcsema_real_eip !58
  %453 = icmp slt i32 %444, 0
  store i1 %453, i1* %SF_val, !mcsema_real_eip !58
  %454 = icmp ult i32 %443, 13, !mcsema_real_eip !58
  store i1 %454, i1* %CF_val, !mcsema_real_eip !58
  %455 = and i32 %445, %443, !mcsema_real_eip !58
  %456 = icmp slt i32 %455, 0
  store i1 %456, i1* %OF_val, !mcsema_real_eip !58
  %457 = zext i32 %444 to i64, !mcsema_real_eip !58
  store i64 %457, i64* %RAX_val, !mcsema_real_eip !58
  %_load_rbp_ptr_85 = load i8*, i8** %_RBP_ptr_
  %458 = load i64, i64* %RBP_val, !mcsema_real_eip !59
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_85, i64 -36
  %459 = add i64 %458, -36, !mcsema_real_eip !59
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %460 = inttoptr i64 %459 to i64*, !mcsema_real_eip !59
  %461 = bitcast i64* %_allin_new_bt_87 to i32*
  store i32 %444, i32* %461, !mcsema_real_eip !59
  %462 = load i1, i1* %ZF_val, !mcsema_real_eip !60
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %463 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  br i1 %462, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !60

block_0x1f3:                                      ; preds = %block_0x85
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_88, i64 -8
  %464 = add i64 %463, -8, !mcsema_real_eip !61
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !61
  %466 = bitcast i64* %_allin_new_bt_90 to i32*
  %467 = load i32, i32* %466, !mcsema_real_eip !61
  %uadd150 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %467, i32 13)
  %468 = extractvalue { i32, i1 } %uadd150, 0
  %469 = xor i32 %468, %467, !mcsema_real_eip !62
  %470 = and i32 %469, 16, !mcsema_real_eip !62
  %471 = icmp ne i32 %470, 0, !mcsema_real_eip !62
  store i1 %471, i1* %AF_val, !mcsema_real_eip !62
  %472 = icmp slt i32 %468, 0
  store i1 %472, i1* %SF_val, !mcsema_real_eip !62
  %473 = icmp eq i32 %468, 0, !mcsema_real_eip !62
  store i1 %473, i1* %ZF_val, !mcsema_real_eip !62
  %474 = xor i32 %467, -2147483648, !mcsema_real_eip !62
  %475 = and i32 %469, %474, !mcsema_real_eip !62
  %476 = icmp slt i32 %475, 0
  store i1 %476, i1* %OF_val, !mcsema_real_eip !62
  %477 = trunc i32 %468 to i8, !mcsema_real_eip !62
  %478 = tail call i8 @llvm.ctpop.i8(i8 %477), !mcsema_real_eip !62
  %479 = and i8 %478, 1
  %480 = icmp eq i8 %479, 0
  store i1 %480, i1* %PF_val, !mcsema_real_eip !62
  %481 = extractvalue { i32, i1 } %uadd150, 1
  store i1 %481, i1* %CF_val, !mcsema_real_eip !62
  %482 = zext i32 %468 to i64, !mcsema_real_eip !62
  store i64 %482, i64* %RAX_val, !mcsema_real_eip !62
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %483 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -8
  %484 = add i64 %483, -8, !mcsema_real_eip !63
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !63
  %486 = bitcast i64* %_allin_new_bt_93 to i32*
  store i32 %468, i32* %486, !mcsema_real_eip !63
  br label %block_0x2c8, !mcsema_real_eip !64

block_0x99:                                       ; preds = %block_0x85
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_88, i64 -12
  %487 = add i64 %463, -12, !mcsema_real_eip !65
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !65
  %489 = bitcast i64* %_allin_new_bt_95 to i32*
  %490 = load i32, i32* %489, !mcsema_real_eip !65
  %491 = add i32 %490, -19
  %492 = xor i32 %491, %490, !mcsema_real_eip !66
  %493 = and i32 %492, 16
  %494 = icmp eq i32 %493, 0
  store i1 %494, i1* %AF_val, !mcsema_real_eip !66
  %495 = trunc i32 %491 to i8, !mcsema_real_eip !66
  %496 = tail call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !66
  %497 = and i8 %496, 1
  %498 = icmp eq i8 %497, 0
  store i1 %498, i1* %PF_val, !mcsema_real_eip !66
  %499 = icmp eq i32 %491, 0, !mcsema_real_eip !66
  store i1 %499, i1* %ZF_val, !mcsema_real_eip !66
  %500 = icmp slt i32 %491, 0
  store i1 %500, i1* %SF_val, !mcsema_real_eip !66
  %501 = icmp ult i32 %490, 19, !mcsema_real_eip !66
  store i1 %501, i1* %CF_val, !mcsema_real_eip !66
  %502 = and i32 %492, %490, !mcsema_real_eip !66
  %503 = icmp slt i32 %502, 0
  store i1 %503, i1* %OF_val, !mcsema_real_eip !66
  %504 = zext i32 %491 to i64, !mcsema_real_eip !66
  store i64 %504, i64* %RAX_val, !mcsema_real_eip !66
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %505 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -40
  %506 = add i64 %505, -40, !mcsema_real_eip !67
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %507 = inttoptr i64 %506 to i64*, !mcsema_real_eip !67
  %508 = bitcast i64* %_allin_new_bt_98 to i32*
  store i32 %491, i32* %508, !mcsema_real_eip !67
  %509 = load i1, i1* %ZF_val, !mcsema_real_eip !68
  %_load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_
  %510 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  br i1 %509, label %block_0x201, label %block_0xad, !mcsema_real_eip !68

block_0x201:                                      ; preds = %block_0x99
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -8
  %511 = add i64 %510, -8, !mcsema_real_eip !69
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !69
  %513 = bitcast i64* %_allin_new_bt_101 to i32*
  %514 = load i32, i32* %513, !mcsema_real_eip !69
  %uadd149 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %514, i32 19)
  %515 = extractvalue { i32, i1 } %uadd149, 0
  %516 = xor i32 %515, %514, !mcsema_real_eip !70
  %517 = and i32 %516, 16
  %518 = icmp eq i32 %517, 0
  store i1 %518, i1* %AF_val, !mcsema_real_eip !70
  %519 = icmp slt i32 %515, 0
  store i1 %519, i1* %SF_val, !mcsema_real_eip !70
  %520 = icmp eq i32 %515, 0, !mcsema_real_eip !70
  store i1 %520, i1* %ZF_val, !mcsema_real_eip !70
  %521 = xor i32 %514, -2147483648, !mcsema_real_eip !70
  %522 = and i32 %516, %521, !mcsema_real_eip !70
  %523 = icmp slt i32 %522, 0
  store i1 %523, i1* %OF_val, !mcsema_real_eip !70
  %524 = trunc i32 %515 to i8, !mcsema_real_eip !70
  %525 = tail call i8 @llvm.ctpop.i8(i8 %524), !mcsema_real_eip !70
  %526 = and i8 %525, 1
  %527 = icmp eq i8 %526, 0
  store i1 %527, i1* %PF_val, !mcsema_real_eip !70
  %528 = extractvalue { i32, i1 } %uadd149, 1
  store i1 %528, i1* %CF_val, !mcsema_real_eip !70
  %529 = zext i32 %515 to i64, !mcsema_real_eip !70
  store i64 %529, i64* %RAX_val, !mcsema_real_eip !70
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %530 = load i64, i64* %RBP_val, !mcsema_real_eip !71
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -8
  %531 = add i64 %530, -8, !mcsema_real_eip !71
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %532 = inttoptr i64 %531 to i64*, !mcsema_real_eip !71
  %533 = bitcast i64* %_allin_new_bt_104 to i32*
  store i32 %515, i32* %533, !mcsema_real_eip !71
  br label %block_0x2c8, !mcsema_real_eip !72

block_0xad:                                       ; preds = %block_0x99
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_99, i64 -12
  %534 = add i64 %510, -12, !mcsema_real_eip !73
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %535 = inttoptr i64 %534 to i64*, !mcsema_real_eip !73
  %536 = bitcast i64* %_allin_new_bt_106 to i32*
  %537 = load i32, i32* %536, !mcsema_real_eip !73
  %538 = add i32 %537, -255
  %539 = xor i32 %538, %537, !mcsema_real_eip !74
  %540 = and i32 %539, 16
  %541 = icmp eq i32 %540, 0
  store i1 %541, i1* %AF_val, !mcsema_real_eip !74
  %542 = trunc i32 %538 to i8, !mcsema_real_eip !74
  %543 = tail call i8 @llvm.ctpop.i8(i8 %542), !mcsema_real_eip !74
  %544 = and i8 %543, 1
  %545 = icmp eq i8 %544, 0
  store i1 %545, i1* %PF_val, !mcsema_real_eip !74
  %546 = icmp eq i32 %538, 0, !mcsema_real_eip !74
  store i1 %546, i1* %ZF_val, !mcsema_real_eip !74
  %547 = icmp slt i32 %538, 0
  store i1 %547, i1* %SF_val, !mcsema_real_eip !74
  %548 = icmp ult i32 %537, 255, !mcsema_real_eip !74
  store i1 %548, i1* %CF_val, !mcsema_real_eip !74
  %549 = and i32 %539, %537, !mcsema_real_eip !74
  %550 = icmp slt i32 %549, 0
  store i1 %550, i1* %OF_val, !mcsema_real_eip !74
  %551 = zext i32 %538 to i64, !mcsema_real_eip !74
  store i64 %551, i64* %RAX_val, !mcsema_real_eip !74
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %552 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -44
  %553 = add i64 %552, -44, !mcsema_real_eip !75
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !75
  %555 = bitcast i64* %_allin_new_bt_109 to i32*
  store i32 %538, i32* %555, !mcsema_real_eip !75
  %556 = load i1, i1* %ZF_val, !mcsema_real_eip !76
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %557 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  br i1 %556, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !76

block_0x20f:                                      ; preds = %block_0xad
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -8
  %558 = add i64 %557, -8, !mcsema_real_eip !77
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %559 = inttoptr i64 %558 to i64*, !mcsema_real_eip !77
  %560 = bitcast i64* %_allin_new_bt_112 to i32*
  %561 = load i32, i32* %560, !mcsema_real_eip !77
  %uadd148 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %561, i32 255)
  %562 = extractvalue { i32, i1 } %uadd148, 0
  %563 = xor i32 %562, %561, !mcsema_real_eip !78
  %564 = and i32 %563, 16
  %565 = icmp eq i32 %564, 0
  store i1 %565, i1* %AF_val, !mcsema_real_eip !78
  %566 = icmp slt i32 %562, 0
  store i1 %566, i1* %SF_val, !mcsema_real_eip !78
  %567 = icmp eq i32 %562, 0, !mcsema_real_eip !78
  store i1 %567, i1* %ZF_val, !mcsema_real_eip !78
  %568 = xor i32 %561, -2147483648, !mcsema_real_eip !78
  %569 = and i32 %563, %568, !mcsema_real_eip !78
  %570 = icmp slt i32 %569, 0
  store i1 %570, i1* %OF_val, !mcsema_real_eip !78
  %571 = trunc i32 %562 to i8, !mcsema_real_eip !78
  %572 = tail call i8 @llvm.ctpop.i8(i8 %571), !mcsema_real_eip !78
  %573 = and i8 %572, 1
  %574 = icmp eq i8 %573, 0
  store i1 %574, i1* %PF_val, !mcsema_real_eip !78
  %575 = extractvalue { i32, i1 } %uadd148, 1
  store i1 %575, i1* %CF_val, !mcsema_real_eip !78
  %576 = zext i32 %562 to i64, !mcsema_real_eip !78
  store i64 %576, i64* %RAX_val, !mcsema_real_eip !78
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %577 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -8
  %578 = add i64 %577, -8, !mcsema_real_eip !79
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %579 = inttoptr i64 %578 to i64*, !mcsema_real_eip !79
  %580 = bitcast i64* %_allin_new_bt_115 to i32*
  store i32 %562, i32* %580, !mcsema_real_eip !79
  br label %block_0x2c8, !mcsema_real_eip !80

block_0xc3:                                       ; preds = %block_0xad
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -12
  %581 = add i64 %557, -12, !mcsema_real_eip !81
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !81
  %583 = bitcast i64* %_allin_new_bt_117 to i32*
  %584 = load i32, i32* %583, !mcsema_real_eip !81
  %585 = add i32 %584, -74633
  %586 = xor i32 %585, %584, !mcsema_real_eip !82
  %587 = and i32 %586, 16, !mcsema_real_eip !82
  %588 = icmp ne i32 %587, 0, !mcsema_real_eip !82
  store i1 %588, i1* %AF_val, !mcsema_real_eip !82
  %589 = trunc i32 %585 to i8, !mcsema_real_eip !82
  %590 = tail call i8 @llvm.ctpop.i8(i8 %589), !mcsema_real_eip !82
  %591 = and i8 %590, 1
  %592 = icmp eq i8 %591, 0
  store i1 %592, i1* %PF_val, !mcsema_real_eip !82
  %593 = icmp eq i32 %585, 0, !mcsema_real_eip !82
  store i1 %593, i1* %ZF_val, !mcsema_real_eip !82
  %594 = icmp slt i32 %585, 0
  store i1 %594, i1* %SF_val, !mcsema_real_eip !82
  %595 = icmp ult i32 %584, 74633, !mcsema_real_eip !82
  store i1 %595, i1* %CF_val, !mcsema_real_eip !82
  %596 = and i32 %586, %584, !mcsema_real_eip !82
  %597 = icmp slt i32 %596, 0
  store i1 %597, i1* %OF_val, !mcsema_real_eip !82
  %598 = zext i32 %585 to i64, !mcsema_real_eip !82
  store i64 %598, i64* %RAX_val, !mcsema_real_eip !82
  %_load_rbp_ptr_118 = load i8*, i8** %_RBP_ptr_
  %599 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_118, i64 -48
  %600 = add i64 %599, -48, !mcsema_real_eip !83
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %601 = inttoptr i64 %600 to i64*, !mcsema_real_eip !83
  %602 = bitcast i64* %_allin_new_bt_120 to i32*
  store i32 %585, i32* %602, !mcsema_real_eip !83
  %603 = load i1, i1* %ZF_val, !mcsema_real_eip !84
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %604 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  br i1 %603, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !84

block_0x21f:                                      ; preds = %block_0xc3
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -8
  %605 = add i64 %604, -8, !mcsema_real_eip !85
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %606 = inttoptr i64 %605 to i64*, !mcsema_real_eip !85
  %607 = bitcast i64* %_allin_new_bt_123 to i32*
  %608 = load i32, i32* %607, !mcsema_real_eip !85
  %uadd147 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %608, i32 74633)
  %609 = extractvalue { i32, i1 } %uadd147, 0
  %610 = xor i32 %609, %608, !mcsema_real_eip !86
  %611 = and i32 %610, 16, !mcsema_real_eip !86
  %612 = icmp ne i32 %611, 0, !mcsema_real_eip !86
  store i1 %612, i1* %AF_val, !mcsema_real_eip !86
  %613 = icmp slt i32 %609, 0
  store i1 %613, i1* %SF_val, !mcsema_real_eip !86
  %614 = icmp eq i32 %609, 0, !mcsema_real_eip !86
  store i1 %614, i1* %ZF_val, !mcsema_real_eip !86
  %615 = xor i32 %608, -2147483648, !mcsema_real_eip !86
  %616 = and i32 %610, %615, !mcsema_real_eip !86
  %617 = icmp slt i32 %616, 0
  store i1 %617, i1* %OF_val, !mcsema_real_eip !86
  %618 = trunc i32 %609 to i8, !mcsema_real_eip !86
  %619 = tail call i8 @llvm.ctpop.i8(i8 %618), !mcsema_real_eip !86
  %620 = and i8 %619, 1
  %621 = icmp eq i8 %620, 0
  store i1 %621, i1* %PF_val, !mcsema_real_eip !86
  %622 = extractvalue { i32, i1 } %uadd147, 1
  store i1 %622, i1* %CF_val, !mcsema_real_eip !86
  %623 = zext i32 %609 to i64, !mcsema_real_eip !86
  store i64 %623, i64* %RAX_val, !mcsema_real_eip !86
  %_load_rbp_ptr_124 = load i8*, i8** %_RBP_ptr_
  %624 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %_new_gep_125 = getelementptr i8, i8* %_load_rbp_ptr_124, i64 -8
  %625 = add i64 %624, -8, !mcsema_real_eip !87
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !87
  %627 = bitcast i64* %_allin_new_bt_126 to i32*
  store i32 %609, i32* %627, !mcsema_real_eip !87
  br label %block_0x2c8, !mcsema_real_eip !88

block_0xd9:                                       ; preds = %block_0xc3
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -12
  %628 = add i64 %604, -12, !mcsema_real_eip !89
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %629 = inttoptr i64 %628 to i64*, !mcsema_real_eip !89
  %630 = bitcast i64* %_allin_new_bt_128 to i32*
  %631 = load i32, i32* %630, !mcsema_real_eip !89
  %632 = add i32 %631, -74634
  %633 = xor i32 %632, %631, !mcsema_real_eip !90
  %634 = and i32 %633, 16, !mcsema_real_eip !90
  %635 = icmp ne i32 %634, 0, !mcsema_real_eip !90
  store i1 %635, i1* %AF_val, !mcsema_real_eip !90
  %636 = trunc i32 %632 to i8, !mcsema_real_eip !90
  %637 = tail call i8 @llvm.ctpop.i8(i8 %636), !mcsema_real_eip !90
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  store i1 %639, i1* %PF_val, !mcsema_real_eip !90
  %640 = icmp eq i32 %632, 0, !mcsema_real_eip !90
  store i1 %640, i1* %ZF_val, !mcsema_real_eip !90
  %641 = icmp slt i32 %632, 0
  store i1 %641, i1* %SF_val, !mcsema_real_eip !90
  %642 = icmp ult i32 %631, 74634, !mcsema_real_eip !90
  store i1 %642, i1* %CF_val, !mcsema_real_eip !90
  %643 = and i32 %633, %631, !mcsema_real_eip !90
  %644 = icmp slt i32 %643, 0
  store i1 %644, i1* %OF_val, !mcsema_real_eip !90
  %645 = zext i32 %632 to i64, !mcsema_real_eip !90
  store i64 %645, i64* %RAX_val, !mcsema_real_eip !90
  %_load_rbp_ptr_129 = load i8*, i8** %_RBP_ptr_
  %646 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_129, i64 -52
  %647 = add i64 %646, -52, !mcsema_real_eip !91
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !91
  %649 = bitcast i64* %_allin_new_bt_131 to i32*
  store i32 %632, i32* %649, !mcsema_real_eip !91
  %650 = load i1, i1* %ZF_val, !mcsema_real_eip !92
  %_load_rbp_ptr_132 = load i8*, i8** %_RBP_ptr_
  %651 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  br i1 %650, label %block_0x22f, label %block_0xef, !mcsema_real_eip !92

block_0x22f:                                      ; preds = %block_0xd9
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -8
  %652 = add i64 %651, -8, !mcsema_real_eip !93
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %653 = inttoptr i64 %652 to i64*, !mcsema_real_eip !93
  %654 = bitcast i64* %_allin_new_bt_134 to i32*
  %655 = load i32, i32* %654, !mcsema_real_eip !93
  %uadd146 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %655, i32 74634)
  %656 = extractvalue { i32, i1 } %uadd146, 0
  %657 = xor i32 %656, %655, !mcsema_real_eip !94
  %658 = and i32 %657, 16, !mcsema_real_eip !94
  %659 = icmp ne i32 %658, 0, !mcsema_real_eip !94
  store i1 %659, i1* %AF_val, !mcsema_real_eip !94
  %660 = icmp slt i32 %656, 0
  store i1 %660, i1* %SF_val, !mcsema_real_eip !94
  %661 = icmp eq i32 %656, 0, !mcsema_real_eip !94
  store i1 %661, i1* %ZF_val, !mcsema_real_eip !94
  %662 = xor i32 %655, -2147483648, !mcsema_real_eip !94
  %663 = and i32 %657, %662, !mcsema_real_eip !94
  %664 = icmp slt i32 %663, 0
  store i1 %664, i1* %OF_val, !mcsema_real_eip !94
  %665 = trunc i32 %656 to i8, !mcsema_real_eip !94
  %666 = tail call i8 @llvm.ctpop.i8(i8 %665), !mcsema_real_eip !94
  %667 = and i8 %666, 1
  %668 = icmp eq i8 %667, 0
  store i1 %668, i1* %PF_val, !mcsema_real_eip !94
  %669 = extractvalue { i32, i1 } %uadd146, 1
  store i1 %669, i1* %CF_val, !mcsema_real_eip !94
  %670 = zext i32 %656 to i64, !mcsema_real_eip !94
  store i64 %670, i64* %RAX_val, !mcsema_real_eip !94
  %_load_rbp_ptr_135 = load i8*, i8** %_RBP_ptr_
  %671 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %_new_gep_136 = getelementptr i8, i8* %_load_rbp_ptr_135, i64 -8
  %672 = add i64 %671, -8, !mcsema_real_eip !95
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %673 = inttoptr i64 %672 to i64*, !mcsema_real_eip !95
  %674 = bitcast i64* %_allin_new_bt_137 to i32*
  store i32 %656, i32* %674, !mcsema_real_eip !95
  br label %block_0x2c8, !mcsema_real_eip !96

block_0xef:                                       ; preds = %block_0xd9
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_132, i64 -12
  %675 = add i64 %651, -12, !mcsema_real_eip !97
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !97
  %677 = bitcast i64* %_allin_new_bt_139 to i32*
  %678 = load i32, i32* %677, !mcsema_real_eip !97
  %679 = add i32 %678, -74635
  %680 = xor i32 %679, %678, !mcsema_real_eip !98
  %681 = and i32 %680, 16, !mcsema_real_eip !98
  %682 = icmp ne i32 %681, 0, !mcsema_real_eip !98
  store i1 %682, i1* %AF_val, !mcsema_real_eip !98
  %683 = trunc i32 %679 to i8, !mcsema_real_eip !98
  %684 = tail call i8 @llvm.ctpop.i8(i8 %683), !mcsema_real_eip !98
  %685 = and i8 %684, 1
  %686 = icmp eq i8 %685, 0
  store i1 %686, i1* %PF_val, !mcsema_real_eip !98
  %687 = icmp eq i32 %679, 0, !mcsema_real_eip !98
  store i1 %687, i1* %ZF_val, !mcsema_real_eip !98
  %688 = icmp slt i32 %679, 0
  store i1 %688, i1* %SF_val, !mcsema_real_eip !98
  %689 = icmp ult i32 %678, 74635, !mcsema_real_eip !98
  store i1 %689, i1* %CF_val, !mcsema_real_eip !98
  %690 = and i32 %680, %678, !mcsema_real_eip !98
  %691 = icmp slt i32 %690, 0
  store i1 %691, i1* %OF_val, !mcsema_real_eip !98
  %692 = zext i32 %679 to i64, !mcsema_real_eip !98
  store i64 %692, i64* %RAX_val, !mcsema_real_eip !98
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %693 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -56
  %694 = add i64 %693, -56, !mcsema_real_eip !99
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %695 = inttoptr i64 %694 to i64*, !mcsema_real_eip !99
  %696 = bitcast i64* %_allin_new_bt_142 to i32*
  store i32 %679, i32* %696, !mcsema_real_eip !99
  %697 = load i1, i1* %ZF_val, !mcsema_real_eip !100
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %698 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  br i1 %697, label %block_0x23f, label %block_0x105, !mcsema_real_eip !100

block_0x23f:                                      ; preds = %block_0xef
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -8
  %699 = add i64 %698, -8, !mcsema_real_eip !101
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %700 = inttoptr i64 %699 to i64*, !mcsema_real_eip !101
  %701 = bitcast i64* %_allin_new_bt_145 to i32*
  %702 = load i32, i32* %701, !mcsema_real_eip !101
  %uadd145 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %702, i32 74635)
  %703 = extractvalue { i32, i1 } %uadd145, 0
  %704 = xor i32 %703, %702, !mcsema_real_eip !102
  %705 = and i32 %704, 16, !mcsema_real_eip !102
  %706 = icmp ne i32 %705, 0, !mcsema_real_eip !102
  store i1 %706, i1* %AF_val, !mcsema_real_eip !102
  %707 = icmp slt i32 %703, 0
  store i1 %707, i1* %SF_val, !mcsema_real_eip !102
  %708 = icmp eq i32 %703, 0, !mcsema_real_eip !102
  store i1 %708, i1* %ZF_val, !mcsema_real_eip !102
  %709 = xor i32 %702, -2147483648, !mcsema_real_eip !102
  %710 = and i32 %704, %709, !mcsema_real_eip !102
  %711 = icmp slt i32 %710, 0
  store i1 %711, i1* %OF_val, !mcsema_real_eip !102
  %712 = trunc i32 %703 to i8, !mcsema_real_eip !102
  %713 = tail call i8 @llvm.ctpop.i8(i8 %712), !mcsema_real_eip !102
  %714 = and i8 %713, 1
  %715 = icmp eq i8 %714, 0
  store i1 %715, i1* %PF_val, !mcsema_real_eip !102
  %716 = extractvalue { i32, i1 } %uadd145, 1
  store i1 %716, i1* %CF_val, !mcsema_real_eip !102
  %717 = zext i32 %703 to i64, !mcsema_real_eip !102
  store i64 %717, i64* %RAX_val, !mcsema_real_eip !102
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %718 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -8
  %719 = add i64 %718, -8, !mcsema_real_eip !103
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %720 = inttoptr i64 %719 to i64*, !mcsema_real_eip !103
  %721 = bitcast i64* %_allin_new_bt_148 to i32*
  store i32 %703, i32* %721, !mcsema_real_eip !103
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x105:                                      ; preds = %block_0xef
  %_new_gep_149 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -12
  %722 = add i64 %698, -12, !mcsema_real_eip !105
  %_allin_new_bt_150 = bitcast i8* %_new_gep_149 to i64*
  %723 = inttoptr i64 %722 to i64*, !mcsema_real_eip !105
  %724 = bitcast i64* %_allin_new_bt_150 to i32*
  %725 = load i32, i32* %724, !mcsema_real_eip !105
  %726 = add i32 %725, -74636
  %727 = xor i32 %726, %725, !mcsema_real_eip !106
  %728 = and i32 %727, 16, !mcsema_real_eip !106
  %729 = icmp ne i32 %728, 0, !mcsema_real_eip !106
  store i1 %729, i1* %AF_val, !mcsema_real_eip !106
  %730 = trunc i32 %726 to i8, !mcsema_real_eip !106
  %731 = tail call i8 @llvm.ctpop.i8(i8 %730), !mcsema_real_eip !106
  %732 = and i8 %731, 1
  %733 = icmp eq i8 %732, 0
  store i1 %733, i1* %PF_val, !mcsema_real_eip !106
  %734 = icmp eq i32 %726, 0, !mcsema_real_eip !106
  store i1 %734, i1* %ZF_val, !mcsema_real_eip !106
  %735 = icmp slt i32 %726, 0
  store i1 %735, i1* %SF_val, !mcsema_real_eip !106
  %736 = icmp ult i32 %725, 74636, !mcsema_real_eip !106
  store i1 %736, i1* %CF_val, !mcsema_real_eip !106
  %737 = and i32 %727, %725, !mcsema_real_eip !106
  %738 = icmp slt i32 %737, 0
  store i1 %738, i1* %OF_val, !mcsema_real_eip !106
  %739 = zext i32 %726 to i64, !mcsema_real_eip !106
  store i64 %739, i64* %RAX_val, !mcsema_real_eip !106
  %_load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_
  %740 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %_new_gep_152 = getelementptr i8, i8* %_load_rbp_ptr_151, i64 -60
  %741 = add i64 %740, -60, !mcsema_real_eip !107
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %742 = inttoptr i64 %741 to i64*, !mcsema_real_eip !107
  %743 = bitcast i64* %_allin_new_bt_153 to i32*
  store i32 %726, i32* %743, !mcsema_real_eip !107
  %744 = load i1, i1* %ZF_val, !mcsema_real_eip !108
  %_load_rbp_ptr_154 = load i8*, i8** %_RBP_ptr_
  %745 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  br i1 %744, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !108

block_0x24f:                                      ; preds = %block_0x105
  %_new_gep_155 = getelementptr i8, i8* %_load_rbp_ptr_154, i64 -8
  %746 = add i64 %745, -8, !mcsema_real_eip !109
  %_allin_new_bt_156 = bitcast i8* %_new_gep_155 to i64*
  %747 = inttoptr i64 %746 to i64*, !mcsema_real_eip !109
  %748 = bitcast i64* %_allin_new_bt_156 to i32*
  %749 = load i32, i32* %748, !mcsema_real_eip !109
  %uadd144 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %749, i32 74636)
  %750 = extractvalue { i32, i1 } %uadd144, 0
  %751 = xor i32 %750, %749, !mcsema_real_eip !110
  %752 = and i32 %751, 16, !mcsema_real_eip !110
  %753 = icmp ne i32 %752, 0, !mcsema_real_eip !110
  store i1 %753, i1* %AF_val, !mcsema_real_eip !110
  %754 = icmp slt i32 %750, 0
  store i1 %754, i1* %SF_val, !mcsema_real_eip !110
  %755 = icmp eq i32 %750, 0, !mcsema_real_eip !110
  store i1 %755, i1* %ZF_val, !mcsema_real_eip !110
  %756 = xor i32 %749, -2147483648, !mcsema_real_eip !110
  %757 = and i32 %751, %756, !mcsema_real_eip !110
  %758 = icmp slt i32 %757, 0
  store i1 %758, i1* %OF_val, !mcsema_real_eip !110
  %759 = trunc i32 %750 to i8, !mcsema_real_eip !110
  %760 = tail call i8 @llvm.ctpop.i8(i8 %759), !mcsema_real_eip !110
  %761 = and i8 %760, 1
  %762 = icmp eq i8 %761, 0
  store i1 %762, i1* %PF_val, !mcsema_real_eip !110
  %763 = extractvalue { i32, i1 } %uadd144, 1
  store i1 %763, i1* %CF_val, !mcsema_real_eip !110
  %764 = zext i32 %750 to i64, !mcsema_real_eip !110
  store i64 %764, i64* %RAX_val, !mcsema_real_eip !110
  %_load_rbp_ptr_157 = load i8*, i8** %_RBP_ptr_
  %765 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %_new_gep_158 = getelementptr i8, i8* %_load_rbp_ptr_157, i64 -8
  %766 = add i64 %765, -8, !mcsema_real_eip !111
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %767 = inttoptr i64 %766 to i64*, !mcsema_real_eip !111
  %768 = bitcast i64* %_allin_new_bt_159 to i32*
  store i32 %750, i32* %768, !mcsema_real_eip !111
  br label %block_0x2c8, !mcsema_real_eip !112

block_0x11b:                                      ; preds = %block_0x105
  %_new_gep_160 = getelementptr i8, i8* %_load_rbp_ptr_154, i64 -12
  %769 = add i64 %745, -12, !mcsema_real_eip !113
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %770 = inttoptr i64 %769 to i64*, !mcsema_real_eip !113
  %771 = bitcast i64* %_allin_new_bt_161 to i32*
  %772 = load i32, i32* %771, !mcsema_real_eip !113
  %773 = add i32 %772, -74637
  %774 = xor i32 %773, %772, !mcsema_real_eip !114
  %775 = and i32 %774, 16, !mcsema_real_eip !114
  %776 = icmp ne i32 %775, 0, !mcsema_real_eip !114
  store i1 %776, i1* %AF_val, !mcsema_real_eip !114
  %777 = trunc i32 %773 to i8, !mcsema_real_eip !114
  %778 = tail call i8 @llvm.ctpop.i8(i8 %777), !mcsema_real_eip !114
  %779 = and i8 %778, 1
  %780 = icmp eq i8 %779, 0
  store i1 %780, i1* %PF_val, !mcsema_real_eip !114
  %781 = icmp eq i32 %773, 0, !mcsema_real_eip !114
  store i1 %781, i1* %ZF_val, !mcsema_real_eip !114
  %782 = icmp slt i32 %773, 0
  store i1 %782, i1* %SF_val, !mcsema_real_eip !114
  %783 = icmp ult i32 %772, 74637, !mcsema_real_eip !114
  store i1 %783, i1* %CF_val, !mcsema_real_eip !114
  %784 = and i32 %774, %772, !mcsema_real_eip !114
  %785 = icmp slt i32 %784, 0
  store i1 %785, i1* %OF_val, !mcsema_real_eip !114
  %786 = zext i32 %773 to i64, !mcsema_real_eip !114
  store i64 %786, i64* %RAX_val, !mcsema_real_eip !114
  %_load_rbp_ptr_162 = load i8*, i8** %_RBP_ptr_
  %787 = load i64, i64* %RBP_val, !mcsema_real_eip !115
  %_new_gep_163 = getelementptr i8, i8* %_load_rbp_ptr_162, i64 -64
  %788 = add i64 %787, -64, !mcsema_real_eip !115
  %_allin_new_bt_164 = bitcast i8* %_new_gep_163 to i64*
  %789 = inttoptr i64 %788 to i64*, !mcsema_real_eip !115
  %790 = bitcast i64* %_allin_new_bt_164 to i32*
  store i32 %773, i32* %790, !mcsema_real_eip !115
  %791 = load i1, i1* %ZF_val, !mcsema_real_eip !116
  %_load_rbp_ptr_165 = load i8*, i8** %_RBP_ptr_
  %792 = load i64, i64* %RBP_val, !mcsema_real_eip !117
  br i1 %791, label %block_0x25f, label %block_0x131, !mcsema_real_eip !116

block_0x25f:                                      ; preds = %block_0x11b
  %_new_gep_166 = getelementptr i8, i8* %_load_rbp_ptr_165, i64 -8
  %793 = add i64 %792, -8, !mcsema_real_eip !117
  %_allin_new_bt_167 = bitcast i8* %_new_gep_166 to i64*
  %794 = inttoptr i64 %793 to i64*, !mcsema_real_eip !117
  %795 = bitcast i64* %_allin_new_bt_167 to i32*
  %796 = load i32, i32* %795, !mcsema_real_eip !117
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %796, i32 74637)
  %797 = extractvalue { i32, i1 } %uadd143, 0
  %798 = xor i32 %797, %796, !mcsema_real_eip !118
  %799 = and i32 %798, 16, !mcsema_real_eip !118
  %800 = icmp ne i32 %799, 0, !mcsema_real_eip !118
  store i1 %800, i1* %AF_val, !mcsema_real_eip !118
  %801 = icmp slt i32 %797, 0
  store i1 %801, i1* %SF_val, !mcsema_real_eip !118
  %802 = icmp eq i32 %797, 0, !mcsema_real_eip !118
  store i1 %802, i1* %ZF_val, !mcsema_real_eip !118
  %803 = xor i32 %796, -2147483648, !mcsema_real_eip !118
  %804 = and i32 %798, %803, !mcsema_real_eip !118
  %805 = icmp slt i32 %804, 0
  store i1 %805, i1* %OF_val, !mcsema_real_eip !118
  %806 = trunc i32 %797 to i8, !mcsema_real_eip !118
  %807 = tail call i8 @llvm.ctpop.i8(i8 %806), !mcsema_real_eip !118
  %808 = and i8 %807, 1
  %809 = icmp eq i8 %808, 0
  store i1 %809, i1* %PF_val, !mcsema_real_eip !118
  %810 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %810, i1* %CF_val, !mcsema_real_eip !118
  %811 = zext i32 %797 to i64, !mcsema_real_eip !118
  store i64 %811, i64* %RAX_val, !mcsema_real_eip !118
  %_load_rbp_ptr_168 = load i8*, i8** %_RBP_ptr_
  %812 = load i64, i64* %RBP_val, !mcsema_real_eip !119
  %_new_gep_169 = getelementptr i8, i8* %_load_rbp_ptr_168, i64 -8
  %813 = add i64 %812, -8, !mcsema_real_eip !119
  %_allin_new_bt_170 = bitcast i8* %_new_gep_169 to i64*
  %814 = inttoptr i64 %813 to i64*, !mcsema_real_eip !119
  %815 = bitcast i64* %_allin_new_bt_170 to i32*
  store i32 %797, i32* %815, !mcsema_real_eip !119
  br label %block_0x2c8, !mcsema_real_eip !120

block_0x131:                                      ; preds = %block_0x11b
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_165, i64 -12
  %816 = add i64 %792, -12, !mcsema_real_eip !121
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %817 = inttoptr i64 %816 to i64*, !mcsema_real_eip !121
  %818 = bitcast i64* %_allin_new_bt_172 to i32*
  %819 = load i32, i32* %818, !mcsema_real_eip !121
  %820 = add i32 %819, -74639
  %821 = xor i32 %820, %819, !mcsema_real_eip !122
  %822 = and i32 %821, 16, !mcsema_real_eip !122
  %823 = icmp ne i32 %822, 0, !mcsema_real_eip !122
  store i1 %823, i1* %AF_val, !mcsema_real_eip !122
  %824 = trunc i32 %820 to i8, !mcsema_real_eip !122
  %825 = tail call i8 @llvm.ctpop.i8(i8 %824), !mcsema_real_eip !122
  %826 = and i8 %825, 1
  %827 = icmp eq i8 %826, 0
  store i1 %827, i1* %PF_val, !mcsema_real_eip !122
  %828 = icmp eq i32 %820, 0, !mcsema_real_eip !122
  store i1 %828, i1* %ZF_val, !mcsema_real_eip !122
  %829 = icmp slt i32 %820, 0
  store i1 %829, i1* %SF_val, !mcsema_real_eip !122
  %830 = icmp ult i32 %819, 74639, !mcsema_real_eip !122
  store i1 %830, i1* %CF_val, !mcsema_real_eip !122
  %831 = and i32 %821, %819, !mcsema_real_eip !122
  %832 = icmp slt i32 %831, 0
  store i1 %832, i1* %OF_val, !mcsema_real_eip !122
  %833 = zext i32 %820 to i64, !mcsema_real_eip !122
  store i64 %833, i64* %RAX_val, !mcsema_real_eip !122
  %_load_rbp_ptr_173 = load i8*, i8** %_RBP_ptr_
  %834 = load i64, i64* %RBP_val, !mcsema_real_eip !123
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_173, i64 -68
  %835 = add i64 %834, -68, !mcsema_real_eip !123
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %836 = inttoptr i64 %835 to i64*, !mcsema_real_eip !123
  %837 = bitcast i64* %_allin_new_bt_175 to i32*
  store i32 %820, i32* %837, !mcsema_real_eip !123
  %838 = load i1, i1* %ZF_val, !mcsema_real_eip !124
  %_load_rbp_ptr_176 = load i8*, i8** %_RBP_ptr_
  %839 = load i64, i64* %RBP_val, !mcsema_real_eip !125
  br i1 %838, label %block_0x26f, label %block_0x147, !mcsema_real_eip !124

block_0x26f:                                      ; preds = %block_0x131
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_176, i64 -8
  %840 = add i64 %839, -8, !mcsema_real_eip !125
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %841 = inttoptr i64 %840 to i64*, !mcsema_real_eip !125
  %842 = bitcast i64* %_allin_new_bt_178 to i32*
  %843 = load i32, i32* %842, !mcsema_real_eip !125
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %843, i32 74639)
  %844 = extractvalue { i32, i1 } %uadd142, 0
  %845 = xor i32 %844, %843, !mcsema_real_eip !126
  %846 = and i32 %845, 16, !mcsema_real_eip !126
  %847 = icmp ne i32 %846, 0, !mcsema_real_eip !126
  store i1 %847, i1* %AF_val, !mcsema_real_eip !126
  %848 = icmp slt i32 %844, 0
  store i1 %848, i1* %SF_val, !mcsema_real_eip !126
  %849 = icmp eq i32 %844, 0, !mcsema_real_eip !126
  store i1 %849, i1* %ZF_val, !mcsema_real_eip !126
  %850 = xor i32 %843, -2147483648, !mcsema_real_eip !126
  %851 = and i32 %845, %850, !mcsema_real_eip !126
  %852 = icmp slt i32 %851, 0
  store i1 %852, i1* %OF_val, !mcsema_real_eip !126
  %853 = trunc i32 %844 to i8, !mcsema_real_eip !126
  %854 = tail call i8 @llvm.ctpop.i8(i8 %853), !mcsema_real_eip !126
  %855 = and i8 %854, 1
  %856 = icmp eq i8 %855, 0
  store i1 %856, i1* %PF_val, !mcsema_real_eip !126
  %857 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %857, i1* %CF_val, !mcsema_real_eip !126
  %858 = zext i32 %844 to i64, !mcsema_real_eip !126
  store i64 %858, i64* %RAX_val, !mcsema_real_eip !126
  %_load_rbp_ptr_179 = load i8*, i8** %_RBP_ptr_
  %859 = load i64, i64* %RBP_val, !mcsema_real_eip !127
  %_new_gep_180 = getelementptr i8, i8* %_load_rbp_ptr_179, i64 -8
  %860 = add i64 %859, -8, !mcsema_real_eip !127
  %_allin_new_bt_181 = bitcast i8* %_new_gep_180 to i64*
  %861 = inttoptr i64 %860 to i64*, !mcsema_real_eip !127
  %862 = bitcast i64* %_allin_new_bt_181 to i32*
  store i32 %844, i32* %862, !mcsema_real_eip !127
  br label %block_0x2c8, !mcsema_real_eip !128

block_0x147:                                      ; preds = %block_0x131
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_176, i64 -12
  %863 = add i64 %839, -12, !mcsema_real_eip !129
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %864 = inttoptr i64 %863 to i64*, !mcsema_real_eip !129
  %865 = bitcast i64* %_allin_new_bt_183 to i32*
  %866 = load i32, i32* %865, !mcsema_real_eip !129
  %867 = add i32 %866, -74640
  %868 = xor i32 %867, %866, !mcsema_real_eip !130
  %869 = and i32 %868, 16
  %870 = icmp eq i32 %869, 0
  store i1 %870, i1* %AF_val, !mcsema_real_eip !130
  %871 = trunc i32 %867 to i8, !mcsema_real_eip !130
  %872 = tail call i8 @llvm.ctpop.i8(i8 %871), !mcsema_real_eip !130
  %873 = and i8 %872, 1
  %874 = icmp eq i8 %873, 0
  store i1 %874, i1* %PF_val, !mcsema_real_eip !130
  %875 = icmp eq i32 %867, 0, !mcsema_real_eip !130
  store i1 %875, i1* %ZF_val, !mcsema_real_eip !130
  %876 = icmp slt i32 %867, 0
  store i1 %876, i1* %SF_val, !mcsema_real_eip !130
  %877 = icmp ult i32 %866, 74640, !mcsema_real_eip !130
  store i1 %877, i1* %CF_val, !mcsema_real_eip !130
  %878 = and i32 %868, %866, !mcsema_real_eip !130
  %879 = icmp slt i32 %878, 0
  store i1 %879, i1* %OF_val, !mcsema_real_eip !130
  %880 = zext i32 %867 to i64, !mcsema_real_eip !130
  store i64 %880, i64* %RAX_val, !mcsema_real_eip !130
  %_load_rbp_ptr_184 = load i8*, i8** %_RBP_ptr_
  %881 = load i64, i64* %RBP_val, !mcsema_real_eip !131
  %_new_gep_185 = getelementptr i8, i8* %_load_rbp_ptr_184, i64 -72
  %882 = add i64 %881, -72, !mcsema_real_eip !131
  %_allin_new_bt_186 = bitcast i8* %_new_gep_185 to i64*
  %883 = inttoptr i64 %882 to i64*, !mcsema_real_eip !131
  %884 = bitcast i64* %_allin_new_bt_186 to i32*
  store i32 %867, i32* %884, !mcsema_real_eip !131
  %885 = load i1, i1* %ZF_val, !mcsema_real_eip !132
  %_load_rbp_ptr_187 = load i8*, i8** %_RBP_ptr_
  %886 = load i64, i64* %RBP_val, !mcsema_real_eip !133
  br i1 %885, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !132

block_0x27f:                                      ; preds = %block_0x147
  %_new_gep_188 = getelementptr i8, i8* %_load_rbp_ptr_187, i64 -8
  %887 = add i64 %886, -8, !mcsema_real_eip !133
  %_allin_new_bt_189 = bitcast i8* %_new_gep_188 to i64*
  %888 = inttoptr i64 %887 to i64*, !mcsema_real_eip !133
  %889 = bitcast i64* %_allin_new_bt_189 to i32*
  %890 = load i32, i32* %889, !mcsema_real_eip !133
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %890, i32 74640)
  %891 = extractvalue { i32, i1 } %uadd141, 0
  %892 = xor i32 %891, %890, !mcsema_real_eip !134
  %893 = and i32 %892, 16
  %894 = icmp eq i32 %893, 0
  store i1 %894, i1* %AF_val, !mcsema_real_eip !134
  %895 = icmp slt i32 %891, 0
  store i1 %895, i1* %SF_val, !mcsema_real_eip !134
  %896 = icmp eq i32 %891, 0, !mcsema_real_eip !134
  store i1 %896, i1* %ZF_val, !mcsema_real_eip !134
  %897 = xor i32 %890, -2147483648, !mcsema_real_eip !134
  %898 = and i32 %892, %897, !mcsema_real_eip !134
  %899 = icmp slt i32 %898, 0
  store i1 %899, i1* %OF_val, !mcsema_real_eip !134
  %900 = trunc i32 %891 to i8, !mcsema_real_eip !134
  %901 = tail call i8 @llvm.ctpop.i8(i8 %900), !mcsema_real_eip !134
  %902 = and i8 %901, 1
  %903 = icmp eq i8 %902, 0
  store i1 %903, i1* %PF_val, !mcsema_real_eip !134
  %904 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %904, i1* %CF_val, !mcsema_real_eip !134
  %905 = zext i32 %891 to i64, !mcsema_real_eip !134
  store i64 %905, i64* %RAX_val, !mcsema_real_eip !134
  %_load_rbp_ptr_190 = load i8*, i8** %_RBP_ptr_
  %906 = load i64, i64* %RBP_val, !mcsema_real_eip !135
  %_new_gep_191 = getelementptr i8, i8* %_load_rbp_ptr_190, i64 -8
  %907 = add i64 %906, -8, !mcsema_real_eip !135
  %_allin_new_bt_192 = bitcast i8* %_new_gep_191 to i64*
  %908 = inttoptr i64 %907 to i64*, !mcsema_real_eip !135
  %909 = bitcast i64* %_allin_new_bt_192 to i32*
  store i32 %891, i32* %909, !mcsema_real_eip !135
  br label %block_0x2c8, !mcsema_real_eip !136

block_0x15d:                                      ; preds = %block_0x147
  %_new_gep_193 = getelementptr i8, i8* %_load_rbp_ptr_187, i64 -12
  %910 = add i64 %886, -12, !mcsema_real_eip !137
  %_allin_new_bt_194 = bitcast i8* %_new_gep_193 to i64*
  %911 = inttoptr i64 %910 to i64*, !mcsema_real_eip !137
  %912 = bitcast i64* %_allin_new_bt_194 to i32*
  %913 = load i32, i32* %912, !mcsema_real_eip !137
  %914 = add i32 %913, -74641
  %915 = xor i32 %914, %913, !mcsema_real_eip !138
  %916 = and i32 %915, 16
  %917 = icmp eq i32 %916, 0
  store i1 %917, i1* %AF_val, !mcsema_real_eip !138
  %918 = trunc i32 %914 to i8, !mcsema_real_eip !138
  %919 = tail call i8 @llvm.ctpop.i8(i8 %918), !mcsema_real_eip !138
  %920 = and i8 %919, 1
  %921 = icmp eq i8 %920, 0
  store i1 %921, i1* %PF_val, !mcsema_real_eip !138
  %922 = icmp eq i32 %914, 0, !mcsema_real_eip !138
  store i1 %922, i1* %ZF_val, !mcsema_real_eip !138
  %923 = icmp slt i32 %914, 0
  store i1 %923, i1* %SF_val, !mcsema_real_eip !138
  %924 = icmp ult i32 %913, 74641, !mcsema_real_eip !138
  store i1 %924, i1* %CF_val, !mcsema_real_eip !138
  %925 = and i32 %915, %913, !mcsema_real_eip !138
  %926 = icmp slt i32 %925, 0
  store i1 %926, i1* %OF_val, !mcsema_real_eip !138
  %927 = zext i32 %914 to i64, !mcsema_real_eip !138
  store i64 %927, i64* %RAX_val, !mcsema_real_eip !138
  %_load_rbp_ptr_195 = load i8*, i8** %_RBP_ptr_
  %928 = load i64, i64* %RBP_val, !mcsema_real_eip !139
  %_new_gep_196 = getelementptr i8, i8* %_load_rbp_ptr_195, i64 -76
  %929 = add i64 %928, -76, !mcsema_real_eip !139
  %_allin_new_bt_197 = bitcast i8* %_new_gep_196 to i64*
  %930 = inttoptr i64 %929 to i64*, !mcsema_real_eip !139
  %931 = bitcast i64* %_allin_new_bt_197 to i32*
  store i32 %914, i32* %931, !mcsema_real_eip !139
  %932 = load i1, i1* %ZF_val, !mcsema_real_eip !140
  %_load_rbp_ptr_198 = load i8*, i8** %_RBP_ptr_
  %933 = load i64, i64* %RBP_val, !mcsema_real_eip !141
  br i1 %932, label %block_0x28f, label %block_0x173, !mcsema_real_eip !140

block_0x28f:                                      ; preds = %block_0x15d
  %_new_gep_199 = getelementptr i8, i8* %_load_rbp_ptr_198, i64 -8
  %934 = add i64 %933, -8, !mcsema_real_eip !141
  %_allin_new_bt_200 = bitcast i8* %_new_gep_199 to i64*
  %935 = inttoptr i64 %934 to i64*, !mcsema_real_eip !141
  %936 = bitcast i64* %_allin_new_bt_200 to i32*
  %937 = load i32, i32* %936, !mcsema_real_eip !141
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %937, i32 74641)
  %938 = extractvalue { i32, i1 } %uadd140, 0
  %939 = xor i32 %938, %937, !mcsema_real_eip !142
  %940 = and i32 %939, 16
  %941 = icmp eq i32 %940, 0
  store i1 %941, i1* %AF_val, !mcsema_real_eip !142
  %942 = icmp slt i32 %938, 0
  store i1 %942, i1* %SF_val, !mcsema_real_eip !142
  %943 = icmp eq i32 %938, 0, !mcsema_real_eip !142
  store i1 %943, i1* %ZF_val, !mcsema_real_eip !142
  %944 = xor i32 %937, -2147483648, !mcsema_real_eip !142
  %945 = and i32 %939, %944, !mcsema_real_eip !142
  %946 = icmp slt i32 %945, 0
  store i1 %946, i1* %OF_val, !mcsema_real_eip !142
  %947 = trunc i32 %938 to i8, !mcsema_real_eip !142
  %948 = tail call i8 @llvm.ctpop.i8(i8 %947), !mcsema_real_eip !142
  %949 = and i8 %948, 1
  %950 = icmp eq i8 %949, 0
  store i1 %950, i1* %PF_val, !mcsema_real_eip !142
  %951 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %951, i1* %CF_val, !mcsema_real_eip !142
  %952 = zext i32 %938 to i64, !mcsema_real_eip !142
  store i64 %952, i64* %RAX_val, !mcsema_real_eip !142
  %_load_rbp_ptr_201 = load i8*, i8** %_RBP_ptr_
  %953 = load i64, i64* %RBP_val, !mcsema_real_eip !143
  %_new_gep_202 = getelementptr i8, i8* %_load_rbp_ptr_201, i64 -8
  %954 = add i64 %953, -8, !mcsema_real_eip !143
  %_allin_new_bt_203 = bitcast i8* %_new_gep_202 to i64*
  %955 = inttoptr i64 %954 to i64*, !mcsema_real_eip !143
  %956 = bitcast i64* %_allin_new_bt_203 to i32*
  store i32 %938, i32* %956, !mcsema_real_eip !143
  br label %block_0x2c8, !mcsema_real_eip !144

block_0x173:                                      ; preds = %block_0x15d
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_198, i64 -12
  %957 = add i64 %933, -12, !mcsema_real_eip !145
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %958 = inttoptr i64 %957 to i64*, !mcsema_real_eip !145
  %959 = bitcast i64* %_allin_new_bt_205 to i32*
  %960 = load i32, i32* %959, !mcsema_real_eip !145
  %961 = add i32 %960, -74642
  %962 = xor i32 %961, %960, !mcsema_real_eip !146
  %963 = and i32 %962, 16
  %964 = icmp eq i32 %963, 0
  store i1 %964, i1* %AF_val, !mcsema_real_eip !146
  %965 = trunc i32 %961 to i8, !mcsema_real_eip !146
  %966 = tail call i8 @llvm.ctpop.i8(i8 %965), !mcsema_real_eip !146
  %967 = and i8 %966, 1
  %968 = icmp eq i8 %967, 0
  store i1 %968, i1* %PF_val, !mcsema_real_eip !146
  %969 = icmp eq i32 %961, 0, !mcsema_real_eip !146
  store i1 %969, i1* %ZF_val, !mcsema_real_eip !146
  %970 = icmp slt i32 %961, 0
  store i1 %970, i1* %SF_val, !mcsema_real_eip !146
  %971 = icmp ult i32 %960, 74642, !mcsema_real_eip !146
  store i1 %971, i1* %CF_val, !mcsema_real_eip !146
  %972 = and i32 %962, %960, !mcsema_real_eip !146
  %973 = icmp slt i32 %972, 0
  store i1 %973, i1* %OF_val, !mcsema_real_eip !146
  %974 = zext i32 %961 to i64, !mcsema_real_eip !146
  store i64 %974, i64* %RAX_val, !mcsema_real_eip !146
  %_load_rbp_ptr_206 = load i8*, i8** %_RBP_ptr_
  %975 = load i64, i64* %RBP_val, !mcsema_real_eip !147
  %_new_gep_207 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -80
  %976 = add i64 %975, -80, !mcsema_real_eip !147
  %_allin_new_bt_208 = bitcast i8* %_new_gep_207 to i64*
  %977 = inttoptr i64 %976 to i64*, !mcsema_real_eip !147
  %978 = bitcast i64* %_allin_new_bt_208 to i32*
  store i32 %961, i32* %978, !mcsema_real_eip !147
  %979 = load i1, i1* %ZF_val, !mcsema_real_eip !148
  %_load_rbp_ptr_209 = load i8*, i8** %_RBP_ptr_
  %980 = load i64, i64* %RBP_val, !mcsema_real_eip !149
  br i1 %979, label %block_0x29f, label %block_0x189, !mcsema_real_eip !148

block_0x29f:                                      ; preds = %block_0x173
  %_new_gep_210 = getelementptr i8, i8* %_load_rbp_ptr_209, i64 -8
  %981 = add i64 %980, -8, !mcsema_real_eip !149
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  %982 = inttoptr i64 %981 to i64*, !mcsema_real_eip !149
  %983 = bitcast i64* %_allin_new_bt_211 to i32*
  %984 = load i32, i32* %983, !mcsema_real_eip !149
  %uadd139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %984, i32 74642)
  %985 = extractvalue { i32, i1 } %uadd139, 0
  %986 = xor i32 %985, %984, !mcsema_real_eip !150
  %987 = and i32 %986, 16
  %988 = icmp eq i32 %987, 0
  store i1 %988, i1* %AF_val, !mcsema_real_eip !150
  %989 = icmp slt i32 %985, 0
  store i1 %989, i1* %SF_val, !mcsema_real_eip !150
  %990 = icmp eq i32 %985, 0, !mcsema_real_eip !150
  store i1 %990, i1* %ZF_val, !mcsema_real_eip !150
  %991 = xor i32 %984, -2147483648, !mcsema_real_eip !150
  %992 = and i32 %986, %991, !mcsema_real_eip !150
  %993 = icmp slt i32 %992, 0
  store i1 %993, i1* %OF_val, !mcsema_real_eip !150
  %994 = trunc i32 %985 to i8, !mcsema_real_eip !150
  %995 = tail call i8 @llvm.ctpop.i8(i8 %994), !mcsema_real_eip !150
  %996 = and i8 %995, 1
  %997 = icmp eq i8 %996, 0
  store i1 %997, i1* %PF_val, !mcsema_real_eip !150
  %998 = extractvalue { i32, i1 } %uadd139, 1
  store i1 %998, i1* %CF_val, !mcsema_real_eip !150
  %999 = zext i32 %985 to i64, !mcsema_real_eip !150
  store i64 %999, i64* %RAX_val, !mcsema_real_eip !150
  %_load_rbp_ptr_212 = load i8*, i8** %_RBP_ptr_
  %1000 = load i64, i64* %RBP_val, !mcsema_real_eip !151
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_212, i64 -8
  %1001 = add i64 %1000, -8, !mcsema_real_eip !151
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %1002 = inttoptr i64 %1001 to i64*, !mcsema_real_eip !151
  %1003 = bitcast i64* %_allin_new_bt_214 to i32*
  store i32 %985, i32* %1003, !mcsema_real_eip !151
  br label %block_0x2c8, !mcsema_real_eip !152

block_0x189:                                      ; preds = %block_0x173
  %_new_gep_215 = getelementptr i8, i8* %_load_rbp_ptr_209, i64 -12
  %1004 = add i64 %980, -12, !mcsema_real_eip !153
  %_allin_new_bt_216 = bitcast i8* %_new_gep_215 to i64*
  %1005 = inttoptr i64 %1004 to i64*, !mcsema_real_eip !153
  %1006 = bitcast i64* %_allin_new_bt_216 to i32*
  %1007 = load i32, i32* %1006, !mcsema_real_eip !153
  %1008 = add i32 %1007, -74643
  %1009 = xor i32 %1008, %1007, !mcsema_real_eip !154
  %1010 = and i32 %1009, 16
  %1011 = icmp eq i32 %1010, 0
  store i1 %1011, i1* %AF_val, !mcsema_real_eip !154
  %1012 = trunc i32 %1008 to i8, !mcsema_real_eip !154
  %1013 = tail call i8 @llvm.ctpop.i8(i8 %1012), !mcsema_real_eip !154
  %1014 = and i8 %1013, 1
  %1015 = icmp eq i8 %1014, 0
  store i1 %1015, i1* %PF_val, !mcsema_real_eip !154
  %1016 = icmp eq i32 %1008, 0, !mcsema_real_eip !154
  store i1 %1016, i1* %ZF_val, !mcsema_real_eip !154
  %1017 = icmp slt i32 %1008, 0
  store i1 %1017, i1* %SF_val, !mcsema_real_eip !154
  %1018 = icmp ult i32 %1007, 74643, !mcsema_real_eip !154
  store i1 %1018, i1* %CF_val, !mcsema_real_eip !154
  %1019 = and i32 %1009, %1007, !mcsema_real_eip !154
  %1020 = icmp slt i32 %1019, 0
  store i1 %1020, i1* %OF_val, !mcsema_real_eip !154
  %1021 = zext i32 %1008 to i64, !mcsema_real_eip !154
  store i64 %1021, i64* %RAX_val, !mcsema_real_eip !154
  %_load_rbp_ptr_217 = load i8*, i8** %_RBP_ptr_
  %1022 = load i64, i64* %RBP_val, !mcsema_real_eip !155
  %_new_gep_218 = getelementptr i8, i8* %_load_rbp_ptr_217, i64 -84
  %1023 = add i64 %1022, -84, !mcsema_real_eip !155
  %_allin_new_bt_219 = bitcast i8* %_new_gep_218 to i64*
  %1024 = inttoptr i64 %1023 to i64*, !mcsema_real_eip !155
  %1025 = bitcast i64* %_allin_new_bt_219 to i32*
  store i32 %1008, i32* %1025, !mcsema_real_eip !155
  %1026 = load i1, i1* %ZF_val, !mcsema_real_eip !156
  %_load_rbp_ptr_220 = load i8*, i8** %_RBP_ptr_
  %1027 = load i64, i64* %RBP_val, !mcsema_real_eip !157
  %_new_gep_221 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -8
  %1028 = add i64 %1027, -8, !mcsema_real_eip !157
  %_allin_new_bt_222 = bitcast i8* %_new_gep_221 to i64*
  %1029 = inttoptr i64 %1028 to i64*, !mcsema_real_eip !157
  %1030 = bitcast i64* %_allin_new_bt_222 to i32*
  %1031 = load i32, i32* %1030, !mcsema_real_eip !157
  %1032 = zext i32 %1031 to i64, !mcsema_real_eip !157
  store i64 %1032, i64* %RAX_val, !mcsema_real_eip !157
  br i1 %1026, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !156

block_0x2af:                                      ; preds = %block_0x189
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1031, i32 74643)
  %1033 = extractvalue { i32, i1 } %uadd, 0
  %1034 = xor i32 %1033, %1031, !mcsema_real_eip !158
  %1035 = and i32 %1034, 16
  %1036 = icmp eq i32 %1035, 0
  store i1 %1036, i1* %AF_val, !mcsema_real_eip !158
  %1037 = icmp slt i32 %1033, 0
  store i1 %1037, i1* %SF_val, !mcsema_real_eip !158
  %1038 = icmp eq i32 %1033, 0, !mcsema_real_eip !158
  store i1 %1038, i1* %ZF_val, !mcsema_real_eip !158
  %1039 = xor i32 %1031, -2147483648, !mcsema_real_eip !158
  %1040 = and i32 %1034, %1039, !mcsema_real_eip !158
  %1041 = icmp slt i32 %1040, 0
  store i1 %1041, i1* %OF_val, !mcsema_real_eip !158
  %1042 = trunc i32 %1033 to i8, !mcsema_real_eip !158
  %1043 = tail call i8 @llvm.ctpop.i8(i8 %1042), !mcsema_real_eip !158
  %1044 = and i8 %1043, 1
  %1045 = icmp eq i8 %1044, 0
  store i1 %1045, i1* %PF_val, !mcsema_real_eip !158
  %1046 = extractvalue { i32, i1 } %uadd, 1
  store i1 %1046, i1* %CF_val, !mcsema_real_eip !158
  %1047 = zext i32 %1033 to i64, !mcsema_real_eip !158
  store i64 %1047, i64* %RAX_val, !mcsema_real_eip !158
  %_load_rbp_ptr_223 = load i8*, i8** %_RBP_ptr_
  %1048 = load i64, i64* %RBP_val, !mcsema_real_eip !159
  %_new_gep_224 = getelementptr i8, i8* %_load_rbp_ptr_223, i64 -8
  %1049 = add i64 %1048, -8, !mcsema_real_eip !159
  %_allin_new_bt_225 = bitcast i8* %_new_gep_224 to i64*
  %1050 = inttoptr i64 %1049 to i64*, !mcsema_real_eip !159
  %1051 = bitcast i64* %_allin_new_bt_225 to i32*
  store i32 %1033, i32* %1051, !mcsema_real_eip !159
  br label %block_0x2c8, !mcsema_real_eip !160

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF_val, !mcsema_real_eip !161
  %1052 = icmp slt i32 %1031, 0
  store i1 %1052, i1* %SF_val, !mcsema_real_eip !161
  %1053 = icmp eq i32 %1031, 0, !mcsema_real_eip !161
  store i1 %1053, i1* %ZF_val, !mcsema_real_eip !161
  store i1 false, i1* %OF_val, !mcsema_real_eip !161
  %1054 = trunc i32 %1031 to i8, !mcsema_real_eip !161
  %1055 = tail call i8 @llvm.ctpop.i8(i8 %1054), !mcsema_real_eip !161
  %1056 = and i8 %1055, 1
  %1057 = icmp eq i8 %1056, 0
  store i1 %1057, i1* %PF_val, !mcsema_real_eip !161
  store i1 false, i1* %CF_val, !mcsema_real_eip !161
  store i64 %1032, i64* %RAX_val, !mcsema_real_eip !161
  %_load_rbp_ptr_226 = load i8*, i8** %_RBP_ptr_
  %1058 = load i64, i64* %RBP_val, !mcsema_real_eip !162
  %_new_gep_227 = getelementptr i8, i8* %_load_rbp_ptr_226, i64 -8
  %1059 = add i64 %1058, -8, !mcsema_real_eip !162
  %_allin_new_bt_228 = bitcast i8* %_new_gep_227 to i64*
  %1060 = inttoptr i64 %1059 to i64*, !mcsema_real_eip !162
  %1061 = bitcast i64* %_allin_new_bt_228 to i32*
  store i32 %1031, i32* %1061, !mcsema_real_eip !162
  %_load_rbp_ptr_229 = load i8*, i8** %_RBP_ptr_
  %1062 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_230 = getelementptr i8, i8* %_load_rbp_ptr_229, i64 -8
  %1063 = add i64 %1062, -8, !mcsema_real_eip !19
  %_allin_new_bt_231 = bitcast i8* %_new_gep_230 to i64*
  %1064 = inttoptr i64 %1063 to i64*, !mcsema_real_eip !19
  %1065 = bitcast i64* %_allin_new_bt_231 to i32*
  %1066 = load i32, i32* %1065, !mcsema_real_eip !19
  %1067 = zext i32 %1066 to i64, !mcsema_real_eip !19
  store i64 %1067, i64* %RAX_val, !mcsema_real_eip !19
  %_load_rsp_ptr_232 = load i8*, i8** %_RSP_ptr_
  %1068 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  %_allin_new_bt_233 = bitcast i8* %_load_rsp_ptr_232 to i64*
  %1069 = inttoptr i64 %1068 to i64*, !mcsema_real_eip !20
  %1070 = load i64, i64* %_allin_new_bt_233, !mcsema_real_eip !20
  %_new_int2ptr_234 = inttoptr i64 %1070 to i8*
  store volatile i8* %_new_int2ptr_234, i8** %_RBP_ptr_
  store i64 %1070, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_235 = getelementptr i8, i8* %_load_rsp_ptr_232, i64 16
  %1071 = add i64 %1068, 16, !mcsema_real_eip !21
  store volatile i8* %_new_gep_235, i8** %_RSP_ptr_
  store i64 %1071, i64* %RSP_val, !mcsema_real_eip !21
  %1072 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  store i64 %1072, i64* %RAX, !mcsema_real_eip !21
  %1073 = load i64, i64* %RBX_val, !mcsema_real_eip !21
  store i64 %1073, i64* %RBX, !mcsema_real_eip !21
  %1074 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %1074, i64* %RCX, !mcsema_real_eip !21
  %1075 = load i64, i64* %RDX_val, !mcsema_real_eip !21
  store i64 %1075, i64* %RDX, !mcsema_real_eip !21
  %1076 = load i64, i64* %RSI_val, !mcsema_real_eip !21
  store i64 %1076, i64* %RSI, !mcsema_real_eip !21
  %1077 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  store i64 %1077, i64* %RDI, !mcsema_real_eip !21
  %_load_rsp_ptr_236 = load i8*, i8** %_RSP_ptr_
  %1078 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_ptr2int_237 = ptrtoint i8* %_load_rsp_ptr_236 to i64
  store volatile i64 %_new_ptr2int_237, i64* %RSP
  %_load_rbp_ptr_238 = load i8*, i8** %_RBP_ptr_
  %1079 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_ptr2int_239 = ptrtoint i8* %_load_rbp_ptr_238 to i64
  store volatile i64 %_new_ptr2int_239, i64* %RBP
  %1080 = load i64, i64* %R8_val, !mcsema_real_eip !21
  store i64 %1080, i64* %R8, !mcsema_real_eip !21
  %1081 = load i64, i64* %R9_val, !mcsema_real_eip !21
  store i64 %1081, i64* %R9, !mcsema_real_eip !21
  %1082 = load i64, i64* %R10_val, !mcsema_real_eip !21
  store i64 %1082, i64* %R10, !mcsema_real_eip !21
  %1083 = load i64, i64* %R11_val, !mcsema_real_eip !21
  store i64 %1083, i64* %R11, !mcsema_real_eip !21
  %1084 = load i64, i64* %R12_val, !mcsema_real_eip !21
  store i64 %1084, i64* %R12, !mcsema_real_eip !21
  %1085 = load i64, i64* %R13_val, !mcsema_real_eip !21
  store i64 %1085, i64* %R13, !mcsema_real_eip !21
  %1086 = load i64, i64* %R14_val, !mcsema_real_eip !21
  store i64 %1086, i64* %R14, !mcsema_real_eip !21
  %1087 = load i64, i64* %R15_val, !mcsema_real_eip !21
  store i64 %1087, i64* %R15, !mcsema_real_eip !21
  %1088 = load i64, i64* %RIP_val, !mcsema_real_eip !21
  store i64 %1088, i64* %RIP, !mcsema_real_eip !21
  %1089 = load i1, i1* %CF_val, !mcsema_real_eip !21
  store i1 %1089, i1* %CF, align 1, !mcsema_real_eip !21
  %1090 = load i1, i1* %PF_val, !mcsema_real_eip !21
  store i1 %1090, i1* %PF, align 1, !mcsema_real_eip !21
  %1091 = load i1, i1* %AF_val, !mcsema_real_eip !21
  store i1 %1091, i1* %AF, align 1, !mcsema_real_eip !21
  %1092 = load i1, i1* %ZF_val, !mcsema_real_eip !21
  store i1 %1092, i1* %ZF, align 1, !mcsema_real_eip !21
  %1093 = load i1, i1* %SF_val, !mcsema_real_eip !21
  store i1 %1093, i1* %SF, align 1, !mcsema_real_eip !21
  %1094 = load i1, i1* %OF_val, !mcsema_real_eip !21
  store i1 %1094, i1* %OF, align 1, !mcsema_real_eip !21
  %1095 = load i1, i1* %DF_val, !mcsema_real_eip !21
  store i1 %1095, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %1096 = load i1, i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %1096, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %1097 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %1097, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %1098 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %1098, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %1099 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %1099, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %1100 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %1100, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %1101 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %1101, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %1102 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %1102, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %1103 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %1103, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %1104 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %1104, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %1105 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %1105, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %1106 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %1106, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %1107 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %1107, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %1108 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %1108, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %1109 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %1109, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %1110 = load i1, i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %1110, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %1111 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %1111, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %1112 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %1112, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %1113 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %1113, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %1114 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %1114, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %1115 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %1115, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %1116 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %1116, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %1117 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %1117, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %1118 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %1118, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %1119 = load i64, i64* %53, align 4
  store i64 %1119, i64* %52, align 4
  %1120 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %1120, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %1121 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %1121, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %1122 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %1122, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %1123 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %1123, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %1124 = load i128, i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %1124, i128* %XMM0, align 1, !mcsema_real_eip !21
  %1125 = load i128, i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %1125, i128* %XMM1, align 1, !mcsema_real_eip !21
  %1126 = load i128, i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %1126, i128* %XMM2, align 1, !mcsema_real_eip !21
  %1127 = load i128, i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %1127, i128* %XMM3, align 1, !mcsema_real_eip !21
  %1128 = load i128, i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %1128, i128* %XMM4, align 1, !mcsema_real_eip !21
  %1129 = load i128, i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %1129, i128* %XMM5, align 1, !mcsema_real_eip !21
  %1130 = load i128, i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %1130, i128* %XMM6, align 1, !mcsema_real_eip !21
  %1131 = load i128, i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %1131, i128* %XMM7, align 1, !mcsema_real_eip !21
  %1132 = load i128, i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %1132, i128* %XMM8, align 1, !mcsema_real_eip !21
  %1133 = load i128, i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %1133, i128* %XMM9, align 1, !mcsema_real_eip !21
  %1134 = load i128, i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %1134, i128* %XMM10, align 1, !mcsema_real_eip !21
  %1135 = load i128, i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %1135, i128* %XMM11, align 1, !mcsema_real_eip !21
  %1136 = load i128, i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %1136, i128* %XMM12, align 1, !mcsema_real_eip !21
  %1137 = load i128, i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %1137, i128* %XMM13, align 1, !mcsema_real_eip !21
  %1138 = load i128, i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %1138, i128* %XMM14, align 1, !mcsema_real_eip !21
  %1139 = load i128, i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %1139, i128* %XMM15, align 1, !mcsema_real_eip !21
  %1140 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %1140, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %1141 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %1141, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!5 = !{i64 7, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!6 = !{i64 14, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!7 = !{i64 17, [18 x i8] c"\09testl\09%edi, %edi\00"}
!8 = !{i64 19, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!9 = !{i64 22, [8 x i8] c"\09je\09387\00"}
!10 = !{i64 415, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!11 = !{i64 418, [15 x i8] c"\09addl\09$0, %eax\00"}
!12 = !{i64 421, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!13 = !{i64 424, [9 x i8] c"\09jmp\09283\00"}
!14 = !{i64 33, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!15 = !{i64 36, [15 x i8] c"\09subl\09$1, %eax\00"}
!16 = !{i64 39, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!17 = !{i64 42, [8 x i8] c"\09je\09381\00"}
!18 = !{i64 429, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!19 = !{i64 712, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!20 = !{i64 715, [11 x i8] c"\09popq\09%rbp\00"}
!21 = !{i64 716, [6 x i8] c"\09retq\00"}
!22 = !{i64 432, [15 x i8] c"\09addl\09$1, %eax\00"}
!23 = !{i64 435, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!24 = !{i64 438, [9 x i8] c"\09jmp\09269\00"}
!25 = !{i64 53, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!26 = !{i64 56, [15 x i8] c"\09subl\09$2, %eax\00"}
!27 = !{i64 59, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!28 = !{i64 62, [8 x i8] c"\09je\09375\00"}
!29 = !{i64 443, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!30 = !{i64 446, [15 x i8] c"\09addl\09$2, %eax\00"}
!31 = !{i64 449, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!32 = !{i64 452, [9 x i8] c"\09jmp\09255\00"}
!33 = !{i64 73, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!34 = !{i64 76, [15 x i8] c"\09subl\09$4, %eax\00"}
!35 = !{i64 79, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!36 = !{i64 82, [8 x i8] c"\09je\09369\00"}
!37 = !{i64 457, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!38 = !{i64 460, [15 x i8] c"\09addl\09$4, %eax\00"}
!39 = !{i64 463, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!40 = !{i64 466, [9 x i8] c"\09jmp\09241\00"}
!41 = !{i64 93, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!42 = !{i64 96, [15 x i8] c"\09subl\09$6, %eax\00"}
!43 = !{i64 99, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!44 = !{i64 102, [8 x i8] c"\09je\09363\00"}
!45 = !{i64 471, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!46 = !{i64 474, [15 x i8] c"\09addl\09$6, %eax\00"}
!47 = !{i64 477, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!48 = !{i64 480, [9 x i8] c"\09jmp\09227\00"}
!49 = !{i64 113, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!50 = !{i64 116, [16 x i8] c"\09subl\09$12, %eax\00"}
!51 = !{i64 119, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!52 = !{i64 122, [8 x i8] c"\09je\09357\00"}
!53 = !{i64 485, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!54 = !{i64 488, [16 x i8] c"\09addl\09$12, %eax\00"}
!55 = !{i64 491, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!56 = !{i64 494, [9 x i8] c"\09jmp\09213\00"}
!57 = !{i64 133, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!58 = !{i64 136, [16 x i8] c"\09subl\09$13, %eax\00"}
!59 = !{i64 139, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!60 = !{i64 142, [8 x i8] c"\09je\09351\00"}
!61 = !{i64 499, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!62 = !{i64 502, [16 x i8] c"\09addl\09$13, %eax\00"}
!63 = !{i64 505, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!64 = !{i64 508, [9 x i8] c"\09jmp\09199\00"}
!65 = !{i64 153, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!66 = !{i64 156, [16 x i8] c"\09subl\09$19, %eax\00"}
!67 = !{i64 159, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!68 = !{i64 162, [8 x i8] c"\09je\09345\00"}
!69 = !{i64 513, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!70 = !{i64 516, [16 x i8] c"\09addl\09$19, %eax\00"}
!71 = !{i64 519, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!72 = !{i64 522, [9 x i8] c"\09jmp\09185\00"}
!73 = !{i64 173, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!74 = !{i64 176, [17 x i8] c"\09subl\09$255, %eax\00"}
!75 = !{i64 181, [22 x i8] c"\09movl\09%eax, -44(%rbp)\00"}
!76 = !{i64 184, [8 x i8] c"\09je\09337\00"}
!77 = !{i64 527, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!78 = !{i64 530, [17 x i8] c"\09addl\09$255, %eax\00"}
!79 = !{i64 535, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!80 = !{i64 538, [9 x i8] c"\09jmp\09169\00"}
!81 = !{i64 195, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!82 = !{i64 198, [19 x i8] c"\09subl\09$74633, %eax\00"}
!83 = !{i64 203, [22 x i8] c"\09movl\09%eax, -48(%rbp)\00"}
!84 = !{i64 206, [8 x i8] c"\09je\09331\00"}
!85 = !{i64 543, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!86 = !{i64 546, [19 x i8] c"\09addl\09$74633, %eax\00"}
!87 = !{i64 551, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!88 = !{i64 554, [9 x i8] c"\09jmp\09153\00"}
!89 = !{i64 217, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!90 = !{i64 220, [19 x i8] c"\09subl\09$74634, %eax\00"}
!91 = !{i64 225, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!92 = !{i64 228, [8 x i8] c"\09je\09325\00"}
!93 = !{i64 559, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!94 = !{i64 562, [19 x i8] c"\09addl\09$74634, %eax\00"}
!95 = !{i64 567, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!96 = !{i64 570, [9 x i8] c"\09jmp\09137\00"}
!97 = !{i64 239, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!98 = !{i64 242, [19 x i8] c"\09subl\09$74635, %eax\00"}
!99 = !{i64 247, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!100 = !{i64 250, [8 x i8] c"\09je\09319\00"}
!101 = !{i64 575, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!102 = !{i64 578, [19 x i8] c"\09addl\09$74635, %eax\00"}
!103 = !{i64 583, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!104 = !{i64 586, [9 x i8] c"\09jmp\09121\00"}
!105 = !{i64 261, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!106 = !{i64 264, [19 x i8] c"\09subl\09$74636, %eax\00"}
!107 = !{i64 269, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!108 = !{i64 272, [8 x i8] c"\09je\09313\00"}
!109 = !{i64 591, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!110 = !{i64 594, [19 x i8] c"\09addl\09$74636, %eax\00"}
!111 = !{i64 599, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!112 = !{i64 602, [9 x i8] c"\09jmp\09105\00"}
!113 = !{i64 283, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!114 = !{i64 286, [19 x i8] c"\09subl\09$74637, %eax\00"}
!115 = !{i64 291, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!116 = !{i64 294, [8 x i8] c"\09je\09307\00"}
!117 = !{i64 607, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!118 = !{i64 610, [19 x i8] c"\09addl\09$74637, %eax\00"}
!119 = !{i64 615, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!120 = !{i64 618, [8 x i8] c"\09jmp\0989\00"}
!121 = !{i64 305, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!122 = !{i64 308, [19 x i8] c"\09subl\09$74639, %eax\00"}
!123 = !{i64 313, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!124 = !{i64 316, [8 x i8] c"\09je\09301\00"}
!125 = !{i64 623, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!126 = !{i64 626, [19 x i8] c"\09addl\09$74639, %eax\00"}
!127 = !{i64 631, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!128 = !{i64 634, [8 x i8] c"\09jmp\0973\00"}
!129 = !{i64 327, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!130 = !{i64 330, [19 x i8] c"\09subl\09$74640, %eax\00"}
!131 = !{i64 335, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!132 = !{i64 338, [8 x i8] c"\09je\09295\00"}
!133 = !{i64 639, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!134 = !{i64 642, [19 x i8] c"\09addl\09$74640, %eax\00"}
!135 = !{i64 647, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!136 = !{i64 650, [8 x i8] c"\09jmp\0957\00"}
!137 = !{i64 349, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!138 = !{i64 352, [19 x i8] c"\09subl\09$74641, %eax\00"}
!139 = !{i64 357, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!140 = !{i64 360, [8 x i8] c"\09je\09289\00"}
!141 = !{i64 655, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!142 = !{i64 658, [19 x i8] c"\09addl\09$74641, %eax\00"}
!143 = !{i64 663, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!144 = !{i64 666, [8 x i8] c"\09jmp\0941\00"}
!145 = !{i64 371, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!146 = !{i64 374, [19 x i8] c"\09subl\09$74642, %eax\00"}
!147 = !{i64 379, [22 x i8] c"\09movl\09%eax, -80(%rbp)\00"}
!148 = !{i64 382, [8 x i8] c"\09je\09283\00"}
!149 = !{i64 671, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!150 = !{i64 674, [19 x i8] c"\09addl\09$74642, %eax\00"}
!151 = !{i64 679, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!152 = !{i64 682, [8 x i8] c"\09jmp\0925\00"}
!153 = !{i64 393, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!154 = !{i64 396, [19 x i8] c"\09subl\09$74643, %eax\00"}
!155 = !{i64 401, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!156 = !{i64 404, [8 x i8] c"\09je\09277\00"}
!157 = !{i64 687, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!158 = !{i64 690, [19 x i8] c"\09addl\09$74643, %eax\00"}
!159 = !{i64 695, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!160 = !{i64 698, [7 x i8] c"\09jmp\099\00"}
!161 = !{i64 706, [15 x i8] c"\09addl\09$0, %eax\00"}
!162 = !{i64 709, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
