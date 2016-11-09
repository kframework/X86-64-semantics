; ModuleID = 'Output/test_13_1.clang.trans.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_10(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 24
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 24
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %82 = add i64 %79, -24
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 16
  %92 = icmp ult i64 %80, 16, !mcsema_real_eip !4
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
  br label %block_0x1f, !mcsema_real_eip !6

block_0x1f:                                       ; preds = %block_0x2c, %entry
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %100 = add i64 %99, -4, !mcsema_real_eip !6
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !6
  %102 = bitcast i64* %_allin_new_bt_15 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !6
  %104 = add i32 %103, -2
  %105 = xor i32 %104, %103, !mcsema_real_eip !6
  %106 = and i32 %105, 16, !mcsema_real_eip !6
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !6
  store i1 %107, i1* %AF_val, !mcsema_real_eip !6
  %108 = trunc i32 %104 to i8, !mcsema_real_eip !6
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !6
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  store i1 %111, i1* %PF_val, !mcsema_real_eip !6
  %112 = icmp eq i32 %104, 0, !mcsema_real_eip !6
  store i1 %112, i1* %ZF_val, !mcsema_real_eip !6
  %113 = icmp slt i32 %104, 0
  store i1 %113, i1* %SF_val, !mcsema_real_eip !6
  %114 = icmp ult i32 %103, 2, !mcsema_real_eip !6
  store i1 %114, i1* %CF_val, !mcsema_real_eip !6
  %115 = and i32 %105, %103, !mcsema_real_eip !6
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF_val, !mcsema_real_eip !6
  %tmp = xor i1 %113, %116
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !7
  br i1 %tmp, label %block_0x2c, label %block_0x41, !mcsema_real_eip !8

block_0x2c:                                       ; preds = %block_0x1f
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %118 = add i64 %117, -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !9
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !9
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %118, i64* %RSP_val, !mcsema_real_eip !9
  %120 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  store i64 %120, i64* %RAX, !mcsema_real_eip !9
  %121 = load i64, i64* %RBX_val, !mcsema_real_eip !9
  store i64 %121, i64* %RBX, !mcsema_real_eip !9
  %122 = load i64, i64* %RCX_val, !mcsema_real_eip !9
  store i64 %122, i64* %RCX, !mcsema_real_eip !9
  %123 = load i64, i64* %RDX_val, !mcsema_real_eip !9
  store i64 %123, i64* %RDX, !mcsema_real_eip !9
  %124 = load i64, i64* %RSI_val, !mcsema_real_eip !9
  store i64 %124, i64* %RSI, !mcsema_real_eip !9
  %125 = load i64, i64* %RDI_val, !mcsema_real_eip !9
  store i64 %125, i64* %RDI, !mcsema_real_eip !9
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %126 = load i64, i64* %RSP_val, !mcsema_real_eip !9
  %_new_ptr2int_20 = ptrtoint i8* %_load_rsp_ptr_19 to i64
  store volatile i64 %_new_ptr2int_20, i64* %RSP
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_ptr2int_22 = ptrtoint i8* %_load_rbp_ptr_21 to i64
  store volatile i64 %_new_ptr2int_22, i64* %RBP
  %128 = load i64, i64* %R8_val, !mcsema_real_eip !9
  store i64 %128, i64* %R8, !mcsema_real_eip !9
  %129 = load i64, i64* %R9_val, !mcsema_real_eip !9
  store i64 %129, i64* %R9, !mcsema_real_eip !9
  %130 = load i64, i64* %R10_val, !mcsema_real_eip !9
  store i64 %130, i64* %R10, !mcsema_real_eip !9
  %131 = load i64, i64* %R11_val, !mcsema_real_eip !9
  store i64 %131, i64* %R11, !mcsema_real_eip !9
  %132 = load i64, i64* %R12_val, !mcsema_real_eip !9
  store i64 %132, i64* %R12, !mcsema_real_eip !9
  %133 = load i64, i64* %R13_val, !mcsema_real_eip !9
  store i64 %133, i64* %R13, !mcsema_real_eip !9
  %134 = load i64, i64* %R14_val, !mcsema_real_eip !9
  store i64 %134, i64* %R14, !mcsema_real_eip !9
  %135 = load i64, i64* %R15_val, !mcsema_real_eip !9
  store i64 %135, i64* %R15, !mcsema_real_eip !9
  %136 = load i64, i64* %RIP_val, !mcsema_real_eip !9
  store i64 %136, i64* %RIP, !mcsema_real_eip !9
  %137 = load i1, i1* %CF_val, !mcsema_real_eip !9
  store i1 %137, i1* %CF, align 1, !mcsema_real_eip !9
  %138 = load i1, i1* %PF_val, !mcsema_real_eip !9
  store i1 %138, i1* %PF, align 1, !mcsema_real_eip !9
  %139 = load i1, i1* %AF_val, !mcsema_real_eip !9
  store i1 %139, i1* %AF, align 1, !mcsema_real_eip !9
  %140 = load i1, i1* %ZF_val, !mcsema_real_eip !9
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !9
  %141 = load i1, i1* %SF_val, !mcsema_real_eip !9
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !9
  %142 = load i1, i1* %OF_val, !mcsema_real_eip !9
  store i1 %142, i1* %OF, align 1, !mcsema_real_eip !9
  %143 = load i1, i1* %DF_val, !mcsema_real_eip !9
  store i1 %143, i1* %DF, align 1, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !9
  %144 = load i1, i1* %FPU_B_val, !mcsema_real_eip !9
  store i1 %144, i1* %FPU_B, align 1, !mcsema_real_eip !9
  %145 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !9
  store i1 %145, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  %146 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !9
  store i3 %146, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  %147 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !9
  store i1 %147, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  %148 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !9
  store i1 %148, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  %149 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !9
  store i1 %149, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  %150 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !9
  store i1 %150, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  %151 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !9
  store i1 %151, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  %152 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !9
  store i1 %152, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  %153 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !9
  store i1 %153, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  %154 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !9
  store i1 %154, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  %155 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !9
  store i1 %155, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  %156 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !9
  store i1 %156, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  %157 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !9
  store i1 %157, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  %158 = load i1, i1* %FPU_X_val, !mcsema_real_eip !9
  store i1 %158, i1* %FPU_X, align 1, !mcsema_real_eip !9
  %159 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !9
  store i2 %159, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  %160 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !9
  store i2 %160, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  %161 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !9
  store i1 %161, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  %162 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !9
  store i1 %162, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  %163 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !9
  store i1 %163, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  %164 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !9
  store i1 %164, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  %165 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !9
  store i1 %165, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  %166 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !9
  store i1 %166, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  %167 = load i64, i64* %53, align 4
  store i64 %167, i64* %52, align 4
  %168 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  store i16 %168, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  %169 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  store i64 %169, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !9
  %170 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  store i16 %170, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  %171 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  store i64 %171, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !9
  %172 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !9
  store i11 %172, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  %173 = load i128, i128* %XMM0_val, !mcsema_real_eip !9
  store i128 %173, i128* %XMM0, align 1, !mcsema_real_eip !9
  %174 = load i128, i128* %XMM1_val, !mcsema_real_eip !9
  store i128 %174, i128* %XMM1, align 1, !mcsema_real_eip !9
  %175 = load i128, i128* %XMM2_val, !mcsema_real_eip !9
  store i128 %175, i128* %XMM2, align 1, !mcsema_real_eip !9
  %176 = load i128, i128* %XMM3_val, !mcsema_real_eip !9
  store i128 %176, i128* %XMM3, align 1, !mcsema_real_eip !9
  %177 = load i128, i128* %XMM4_val, !mcsema_real_eip !9
  store i128 %177, i128* %XMM4, align 1, !mcsema_real_eip !9
  %178 = load i128, i128* %XMM5_val, !mcsema_real_eip !9
  store i128 %178, i128* %XMM5, align 1, !mcsema_real_eip !9
  %179 = load i128, i128* %XMM6_val, !mcsema_real_eip !9
  store i128 %179, i128* %XMM6, align 1, !mcsema_real_eip !9
  %180 = load i128, i128* %XMM7_val, !mcsema_real_eip !9
  store i128 %180, i128* %XMM7, align 1, !mcsema_real_eip !9
  %181 = load i128, i128* %XMM8_val, !mcsema_real_eip !9
  store i128 %181, i128* %XMM8, align 1, !mcsema_real_eip !9
  %182 = load i128, i128* %XMM9_val, !mcsema_real_eip !9
  store i128 %182, i128* %XMM9, align 1, !mcsema_real_eip !9
  %183 = load i128, i128* %XMM10_val, !mcsema_real_eip !9
  store i128 %183, i128* %XMM10, align 1, !mcsema_real_eip !9
  %184 = load i128, i128* %XMM11_val, !mcsema_real_eip !9
  store i128 %184, i128* %XMM11, align 1, !mcsema_real_eip !9
  %185 = load i128, i128* %XMM12_val, !mcsema_real_eip !9
  store i128 %185, i128* %XMM12, align 1, !mcsema_real_eip !9
  %186 = load i128, i128* %XMM13_val, !mcsema_real_eip !9
  store i128 %186, i128* %XMM13, align 1, !mcsema_real_eip !9
  %187 = load i128, i128* %XMM14_val, !mcsema_real_eip !9
  store i128 %187, i128* %XMM14, align 1, !mcsema_real_eip !9
  %188 = load i128, i128* %XMM15_val, !mcsema_real_eip !9
  store i128 %188, i128* %XMM15, align 1, !mcsema_real_eip !9
  %189 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !9
  store i64 %189, i64* %STACK_BASE, align 1, !mcsema_real_eip !9
  %190 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  store i64 %190, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !9
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_39)
  %191 = load i64, i64* %RAX, !mcsema_real_eip !9
  store i64 %191, i64* %RAX_val, !mcsema_real_eip !9
  %192 = load i64, i64* %RBX, !mcsema_real_eip !9
  store i64 %192, i64* %RBX_val, !mcsema_real_eip !9
  %193 = load i64, i64* %RCX, !mcsema_real_eip !9
  store i64 %193, i64* %RCX_val, !mcsema_real_eip !9
  %194 = load i64, i64* %RDX, !mcsema_real_eip !9
  store i64 %194, i64* %RDX_val, !mcsema_real_eip !9
  %195 = load i64, i64* %RSI, !mcsema_real_eip !9
  store i64 %195, i64* %RSI_val, !mcsema_real_eip !9
  %196 = load i64, i64* %RDI, !mcsema_real_eip !9
  store i64 %196, i64* %RDI_val, !mcsema_real_eip !9
  %197 = load i64, i64* %RSP, !mcsema_real_eip !9
  store i64 %197, i64* %RSP_val, !mcsema_real_eip !9
  %198 = load i64, i64* %RBP, !mcsema_real_eip !9
  store i64 %198, i64* %RBP_val, !mcsema_real_eip !9
  %199 = load i64, i64* %R8, !mcsema_real_eip !9
  store i64 %199, i64* %R8_val, !mcsema_real_eip !9
  %200 = load i64, i64* %R9, !mcsema_real_eip !9
  store i64 %200, i64* %R9_val, !mcsema_real_eip !9
  %201 = load i64, i64* %R10, !mcsema_real_eip !9
  store i64 %201, i64* %R10_val, !mcsema_real_eip !9
  %202 = load i64, i64* %R11, !mcsema_real_eip !9
  store i64 %202, i64* %R11_val, !mcsema_real_eip !9
  %203 = load i64, i64* %R12, !mcsema_real_eip !9
  store i64 %203, i64* %R12_val, !mcsema_real_eip !9
  %204 = load i64, i64* %R13, !mcsema_real_eip !9
  store i64 %204, i64* %R13_val, !mcsema_real_eip !9
  %205 = load i64, i64* %R14, !mcsema_real_eip !9
  store i64 %205, i64* %R14_val, !mcsema_real_eip !9
  %206 = load i64, i64* %R15, !mcsema_real_eip !9
  store i64 %206, i64* %R15_val, !mcsema_real_eip !9
  %207 = load i64, i64* %RIP, !mcsema_real_eip !9
  store i64 %207, i64* %RIP_val, !mcsema_real_eip !9
  %208 = load i1, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 %208, i1* %CF_val, !mcsema_real_eip !9
  %209 = load i1, i1* %PF, align 1, !mcsema_real_eip !9
  store i1 %209, i1* %PF_val, !mcsema_real_eip !9
  %210 = load i1, i1* %AF, align 1, !mcsema_real_eip !9
  store i1 %210, i1* %AF_val, !mcsema_real_eip !9
  %211 = load i1, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %211, i1* %ZF_val, !mcsema_real_eip !9
  %212 = load i1, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 %212, i1* %SF_val, !mcsema_real_eip !9
  %213 = load i1, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 %213, i1* %OF_val, !mcsema_real_eip !9
  %214 = load i1, i1* %DF, align 1, !mcsema_real_eip !9
  store i1 %214, i1* %DF_val, !mcsema_real_eip !9
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !9
  %215 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !9
  store i1 %215, i1* %FPU_B_val, !mcsema_real_eip !9
  %216 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !9
  store i1 %216, i1* %FPU_C3_val, !mcsema_real_eip !9
  %217 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !9
  store i3 %217, i3* %FPU_TOP_val, !mcsema_real_eip !9
  %218 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !9
  store i1 %218, i1* %FPU_C2_val, !mcsema_real_eip !9
  %219 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !9
  store i1 %219, i1* %FPU_C1_val, !mcsema_real_eip !9
  %220 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !9
  store i1 %220, i1* %FPU_C0_val, !mcsema_real_eip !9
  %221 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !9
  store i1 %221, i1* %FPU_ES_val, !mcsema_real_eip !9
  %222 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !9
  store i1 %222, i1* %FPU_SF_val, !mcsema_real_eip !9
  %223 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !9
  store i1 %223, i1* %FPU_PE_val, !mcsema_real_eip !9
  %224 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !9
  store i1 %224, i1* %FPU_UE_val, !mcsema_real_eip !9
  %225 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !9
  store i1 %225, i1* %FPU_OE_val, !mcsema_real_eip !9
  %226 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !9
  store i1 %226, i1* %FPU_ZE_val, !mcsema_real_eip !9
  %227 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !9
  store i1 %227, i1* %FPU_DE_val, !mcsema_real_eip !9
  %228 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !9
  store i1 %228, i1* %FPU_IE_val, !mcsema_real_eip !9
  %229 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !9
  store i1 %229, i1* %FPU_X_val, !mcsema_real_eip !9
  %230 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !9
  store i2 %230, i2* %FPU_RC_val, !mcsema_real_eip !9
  %231 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !9
  store i2 %231, i2* %FPU_PC_val, !mcsema_real_eip !9
  %232 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !9
  store i1 %232, i1* %FPU_PM_val, !mcsema_real_eip !9
  %233 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !9
  store i1 %233, i1* %FPU_UM_val, !mcsema_real_eip !9
  %234 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !9
  store i1 %234, i1* %FPU_OM_val, !mcsema_real_eip !9
  %235 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !9
  store i1 %235, i1* %FPU_ZM_val, !mcsema_real_eip !9
  %236 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !9
  store i1 %236, i1* %FPU_DM_val, !mcsema_real_eip !9
  %237 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !9
  store i1 %237, i1* %FPU_IM_val, !mcsema_real_eip !9
  %238 = load i64, i64* %52, align 4
  store i64 %238, i64* %53, align 4
  %239 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !9
  store i16 %239, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !9
  %240 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !9
  store i64 %240, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !9
  %241 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !9
  store i16 %241, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !9
  %242 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !9
  store i64 %242, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !9
  %243 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !9
  store i11 %243, i11* %FPU_FOPCODE_val, !mcsema_real_eip !9
  %244 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !9
  store i128 %244, i128* %XMM0_val, !mcsema_real_eip !9
  %245 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !9
  store i128 %245, i128* %XMM1_val, !mcsema_real_eip !9
  %246 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !9
  store i128 %246, i128* %XMM2_val, !mcsema_real_eip !9
  %247 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !9
  store i128 %247, i128* %XMM3_val, !mcsema_real_eip !9
  %248 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !9
  store i128 %248, i128* %XMM4_val, !mcsema_real_eip !9
  %249 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !9
  store i128 %249, i128* %XMM5_val, !mcsema_real_eip !9
  %250 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !9
  store i128 %250, i128* %XMM6_val, !mcsema_real_eip !9
  %251 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !9
  store i128 %251, i128* %XMM7_val, !mcsema_real_eip !9
  %252 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !9
  store i128 %252, i128* %XMM8_val, !mcsema_real_eip !9
  %253 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !9
  store i128 %253, i128* %XMM9_val, !mcsema_real_eip !9
  %254 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !9
  store i128 %254, i128* %XMM10_val, !mcsema_real_eip !9
  %255 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !9
  store i128 %255, i128* %XMM11_val, !mcsema_real_eip !9
  %256 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !9
  store i128 %256, i128* %XMM12_val, !mcsema_real_eip !9
  %257 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !9
  store i128 %257, i128* %XMM13_val, !mcsema_real_eip !9
  %258 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !9
  store i128 %258, i128* %XMM14_val, !mcsema_real_eip !9
  %259 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !9
  store i128 %259, i128* %XMM15_val, !mcsema_real_eip !9
  %260 = load i64, i64* %STACK_BASE, !mcsema_real_eip !9
  store i64 %260, i64* %STACK_BASE_val, !mcsema_real_eip !9
  %261 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !9
  store i64 %261, i64* %STACK_LIMIT_val, !mcsema_real_eip !9
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %262 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -4
  %263 = add i64 %262, -4, !mcsema_real_eip !10
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %264 = inttoptr i64 %263 to i64*, !mcsema_real_eip !10
  %265 = bitcast i64* %_allin_new_bt_25 to i32*
  %266 = load i32, i32* %265, !mcsema_real_eip !10
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 1)
  %267 = extractvalue { i32, i1 } %uadd, 0
  %268 = xor i32 %267, %266, !mcsema_real_eip !11
  %269 = and i32 %268, 16, !mcsema_real_eip !11
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !11
  store i1 %270, i1* %AF_val, !mcsema_real_eip !11
  %271 = icmp slt i32 %267, 0
  store i1 %271, i1* %SF_val, !mcsema_real_eip !11
  %272 = icmp eq i32 %267, 0, !mcsema_real_eip !11
  store i1 %272, i1* %ZF_val, !mcsema_real_eip !11
  %273 = xor i32 %266, -2147483648, !mcsema_real_eip !11
  %274 = and i32 %268, %273, !mcsema_real_eip !11
  %275 = icmp slt i32 %274, 0
  store i1 %275, i1* %OF_val, !mcsema_real_eip !11
  %276 = trunc i32 %267 to i8, !mcsema_real_eip !11
  %277 = tail call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !11
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  store i1 %279, i1* %PF_val, !mcsema_real_eip !11
  %280 = extractvalue { i32, i1 } %uadd, 1
  store i1 %280, i1* %CF_val, !mcsema_real_eip !11
  %281 = zext i32 %267 to i64, !mcsema_real_eip !11
  store i64 %281, i64* %RAX_val, !mcsema_real_eip !11
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %282 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -4
  %283 = add i64 %282, -4, !mcsema_real_eip !12
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !12
  %285 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 %267, i32* %285, !mcsema_real_eip !12
  br label %block_0x1f, !mcsema_real_eip !13

block_0x41:                                       ; preds = %block_0x1f
  %286 = phi i8* [ %_load_rsp_ptr_16, %block_0x1f ]
  %.lcssa = phi i64 [ %117, %block_0x1f ]
  %uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa, i64 16)
  %287 = extractvalue { i64, i1 } %uadd211, 0
  %_trans_p2i_29 = ptrtoint i8* %286 to i64
  %_trans_xor_30 = xor i64 %287, %_trans_p2i_29
  %288 = xor i64 %287, %.lcssa, !mcsema_real_eip !7
  %289 = and i64 %_trans_xor_30, 16
  %290 = icmp eq i64 %289, 0
  store i1 %290, i1* %AF_val, !mcsema_real_eip !7
  %291 = icmp slt i64 %287, 0
  store i1 %291, i1* %SF_val, !mcsema_real_eip !7
  %292 = icmp eq i64 %287, 0, !mcsema_real_eip !7
  store i1 %292, i1* %ZF_val, !mcsema_real_eip !7
  %_trans_p2i_31 = ptrtoint i8* %286 to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_31, -9223372036854775808
  %293 = xor i64 %.lcssa, -9223372036854775808, !mcsema_real_eip !7
  %294 = and i64 %_trans_xor_30, %_trans_xor_32, !mcsema_real_eip !7
  %295 = icmp slt i64 %294, 0
  store i1 %295, i1* %OF_val, !mcsema_real_eip !7
  %296 = trunc i64 %287 to i8, !mcsema_real_eip !7
  %297 = tail call i8 @llvm.ctpop.i8(i8 %296), !mcsema_real_eip !7
  %298 = and i8 %297, 1
  %299 = icmp eq i8 %298, 0
  store i1 %299, i1* %PF_val, !mcsema_real_eip !7
  %300 = extractvalue { i64, i1 } %uadd211, 1
  store i1 %300, i1* %CF_val, !mcsema_real_eip !7
  %_new_int2ptr_ = inttoptr i64 %287 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %287, i64* %RSP_val, !mcsema_real_eip !7
  %301 = inttoptr i64 %287 to i64*, !mcsema_real_eip !14
  %302 = load i64, i64* %301, !mcsema_real_eip !14
  %_new_int2ptr_33 = inttoptr i64 %302 to i8*
  store volatile i8* %_new_int2ptr_33, i8** %_RBP_ptr_
  store i64 %302, i64* %RBP_val, !mcsema_real_eip !14
  %303 = add i64 %287, 16, !mcsema_real_eip !15
  %_new_int2ptr_34 = inttoptr i64 %303 to i8*
  store volatile i8* %_new_int2ptr_34, i8** %_RSP_ptr_
  store i64 %303, i64* %RSP_val, !mcsema_real_eip !15
  %304 = load i64, i64* %RAX_val, !mcsema_real_eip !15
  store i64 %304, i64* %RAX, !mcsema_real_eip !15
  %305 = load i64, i64* %RBX_val, !mcsema_real_eip !15
  store i64 %305, i64* %RBX, !mcsema_real_eip !15
  %306 = load i64, i64* %RCX_val, !mcsema_real_eip !15
  store i64 %306, i64* %RCX, !mcsema_real_eip !15
  %307 = load i64, i64* %RDX_val, !mcsema_real_eip !15
  store i64 %307, i64* %RDX, !mcsema_real_eip !15
  %308 = load i64, i64* %RSI_val, !mcsema_real_eip !15
  store i64 %308, i64* %RSI, !mcsema_real_eip !15
  %309 = load i64, i64* %RDI_val, !mcsema_real_eip !15
  store i64 %309, i64* %RDI, !mcsema_real_eip !15
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %310 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %_new_ptr2int_36 = ptrtoint i8* %_load_rsp_ptr_35 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %311 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  %312 = load i64, i64* %R8_val, !mcsema_real_eip !15
  store i64 %312, i64* %R8, !mcsema_real_eip !15
  %313 = load i64, i64* %R9_val, !mcsema_real_eip !15
  store i64 %313, i64* %R9, !mcsema_real_eip !15
  %314 = load i64, i64* %R10_val, !mcsema_real_eip !15
  store i64 %314, i64* %R10, !mcsema_real_eip !15
  %315 = load i64, i64* %R11_val, !mcsema_real_eip !15
  store i64 %315, i64* %R11, !mcsema_real_eip !15
  %316 = load i64, i64* %R12_val, !mcsema_real_eip !15
  store i64 %316, i64* %R12, !mcsema_real_eip !15
  %317 = load i64, i64* %R13_val, !mcsema_real_eip !15
  store i64 %317, i64* %R13, !mcsema_real_eip !15
  %318 = load i64, i64* %R14_val, !mcsema_real_eip !15
  store i64 %318, i64* %R14, !mcsema_real_eip !15
  %319 = load i64, i64* %R15_val, !mcsema_real_eip !15
  store i64 %319, i64* %R15, !mcsema_real_eip !15
  %320 = load i64, i64* %RIP_val, !mcsema_real_eip !15
  store i64 %320, i64* %RIP, !mcsema_real_eip !15
  %321 = load i1, i1* %CF_val, !mcsema_real_eip !15
  store i1 %321, i1* %CF, align 1, !mcsema_real_eip !15
  %322 = load i1, i1* %PF_val, !mcsema_real_eip !15
  store i1 %322, i1* %PF, align 1, !mcsema_real_eip !15
  %323 = load i1, i1* %AF_val, !mcsema_real_eip !15
  store i1 %323, i1* %AF, align 1, !mcsema_real_eip !15
  %324 = load i1, i1* %ZF_val, !mcsema_real_eip !15
  store i1 %324, i1* %ZF, align 1, !mcsema_real_eip !15
  %325 = load i1, i1* %SF_val, !mcsema_real_eip !15
  store i1 %325, i1* %SF, align 1, !mcsema_real_eip !15
  %326 = load i1, i1* %OF_val, !mcsema_real_eip !15
  store i1 %326, i1* %OF, align 1, !mcsema_real_eip !15
  %327 = load i1, i1* %DF_val, !mcsema_real_eip !15
  store i1 %327, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  %328 = load i1, i1* %FPU_B_val, !mcsema_real_eip !15
  store i1 %328, i1* %FPU_B, align 1, !mcsema_real_eip !15
  %329 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !15
  store i1 %329, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  %330 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !15
  store i3 %330, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  %331 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !15
  store i1 %331, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  %332 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !15
  store i1 %332, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  %333 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !15
  store i1 %333, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  %334 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !15
  store i1 %334, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  %335 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !15
  store i1 %335, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  %336 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !15
  store i1 %336, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  %337 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !15
  store i1 %337, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  %338 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !15
  store i1 %338, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  %339 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !15
  store i1 %339, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  %340 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !15
  store i1 %340, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  %341 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !15
  store i1 %341, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  %342 = load i1, i1* %FPU_X_val, !mcsema_real_eip !15
  store i1 %342, i1* %FPU_X, align 1, !mcsema_real_eip !15
  %343 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !15
  store i2 %343, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  %344 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !15
  store i2 %344, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  %345 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !15
  store i1 %345, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  %346 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !15
  store i1 %346, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  %347 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !15
  store i1 %347, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  %348 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !15
  store i1 %348, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  %349 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !15
  store i1 %349, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  %350 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !15
  store i1 %350, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %351 = load i64, i64* %53, align 4
  store i64 %351, i64* %52, align 4
  %352 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !15
  store i16 %352, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  %353 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !15
  store i64 %353, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  %354 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !15
  store i16 %354, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  %355 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !15
  store i64 %355, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  %356 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !15
  store i11 %356, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !15
  %357 = load i128, i128* %XMM0_val, !mcsema_real_eip !15
  store i128 %357, i128* %XMM0, align 1, !mcsema_real_eip !15
  %358 = load i128, i128* %XMM1_val, !mcsema_real_eip !15
  store i128 %358, i128* %XMM1, align 1, !mcsema_real_eip !15
  %359 = load i128, i128* %XMM2_val, !mcsema_real_eip !15
  store i128 %359, i128* %XMM2, align 1, !mcsema_real_eip !15
  %360 = load i128, i128* %XMM3_val, !mcsema_real_eip !15
  store i128 %360, i128* %XMM3, align 1, !mcsema_real_eip !15
  %361 = load i128, i128* %XMM4_val, !mcsema_real_eip !15
  store i128 %361, i128* %XMM4, align 1, !mcsema_real_eip !15
  %362 = load i128, i128* %XMM5_val, !mcsema_real_eip !15
  store i128 %362, i128* %XMM5, align 1, !mcsema_real_eip !15
  %363 = load i128, i128* %XMM6_val, !mcsema_real_eip !15
  store i128 %363, i128* %XMM6, align 1, !mcsema_real_eip !15
  %364 = load i128, i128* %XMM7_val, !mcsema_real_eip !15
  store i128 %364, i128* %XMM7, align 1, !mcsema_real_eip !15
  %365 = load i128, i128* %XMM8_val, !mcsema_real_eip !15
  store i128 %365, i128* %XMM8, align 1, !mcsema_real_eip !15
  %366 = load i128, i128* %XMM9_val, !mcsema_real_eip !15
  store i128 %366, i128* %XMM9, align 1, !mcsema_real_eip !15
  %367 = load i128, i128* %XMM10_val, !mcsema_real_eip !15
  store i128 %367, i128* %XMM10, align 1, !mcsema_real_eip !15
  %368 = load i128, i128* %XMM11_val, !mcsema_real_eip !15
  store i128 %368, i128* %XMM11, align 1, !mcsema_real_eip !15
  %369 = load i128, i128* %XMM12_val, !mcsema_real_eip !15
  store i128 %369, i128* %XMM12, align 1, !mcsema_real_eip !15
  %370 = load i128, i128* %XMM13_val, !mcsema_real_eip !15
  store i128 %370, i128* %XMM13, align 1, !mcsema_real_eip !15
  %371 = load i128, i128* %XMM14_val, !mcsema_real_eip !15
  store i128 %371, i128* %XMM14, align 1, !mcsema_real_eip !15
  %372 = load i128, i128* %XMM15_val, !mcsema_real_eip !15
  store i128 %372, i128* %XMM15, align 1, !mcsema_real_eip !15
  %373 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !15
  store i64 %373, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  %374 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !15
  store i64 %374, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !16
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !16
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !16
  %XMM15_val = alloca i128, !mcsema_real_eip !16
  %XMM14_val = alloca i128, !mcsema_real_eip !16
  %XMM13_val = alloca i128, !mcsema_real_eip !16
  %XMM12_val = alloca i128, !mcsema_real_eip !16
  %XMM11_val = alloca i128, !mcsema_real_eip !16
  %XMM10_val = alloca i128, !mcsema_real_eip !16
  %XMM9_val = alloca i128, !mcsema_real_eip !16
  %XMM8_val = alloca i128, !mcsema_real_eip !16
  %XMM7_val = alloca i128, !mcsema_real_eip !16
  %XMM6_val = alloca i128, !mcsema_real_eip !16
  %XMM5_val = alloca i128, !mcsema_real_eip !16
  %XMM4_val = alloca i128, !mcsema_real_eip !16
  %XMM3_val = alloca i128, !mcsema_real_eip !16
  %XMM2_val = alloca i128, !mcsema_real_eip !16
  %XMM1_val = alloca i128, !mcsema_real_eip !16
  %XMM0_val = alloca i128, !mcsema_real_eip !16
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !16
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !16
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !16
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !16
  %FPU_IM_val = alloca i1, !mcsema_real_eip !16
  %FPU_DM_val = alloca i1, !mcsema_real_eip !16
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !16
  %FPU_OM_val = alloca i1, !mcsema_real_eip !16
  %FPU_UM_val = alloca i1, !mcsema_real_eip !16
  %FPU_PM_val = alloca i1, !mcsema_real_eip !16
  %FPU_PC_val = alloca i2, !mcsema_real_eip !16
  %FPU_RC_val = alloca i2, !mcsema_real_eip !16
  %FPU_X_val = alloca i1, !mcsema_real_eip !16
  %FPU_IE_val = alloca i1, !mcsema_real_eip !16
  %FPU_DE_val = alloca i1, !mcsema_real_eip !16
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !16
  %FPU_OE_val = alloca i1, !mcsema_real_eip !16
  %FPU_UE_val = alloca i1, !mcsema_real_eip !16
  %FPU_PE_val = alloca i1, !mcsema_real_eip !16
  %FPU_SF_val = alloca i1, !mcsema_real_eip !16
  %FPU_ES_val = alloca i1, !mcsema_real_eip !16
  %FPU_C0_val = alloca i1, !mcsema_real_eip !16
  %FPU_C1_val = alloca i1, !mcsema_real_eip !16
  %FPU_C2_val = alloca i1, !mcsema_real_eip !16
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !16
  %FPU_C3_val = alloca i1, !mcsema_real_eip !16
  %FPU_B_val = alloca i1, !mcsema_real_eip !16
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !16
  %DF_val = alloca i1, !mcsema_real_eip !16
  %OF_val = alloca i1, !mcsema_real_eip !16
  %SF_val = alloca i1, !mcsema_real_eip !16
  %CF_val = alloca i1, !mcsema_real_eip !16
  %AF_val = alloca i1, !mcsema_real_eip !16
  %PF_val = alloca i1, !mcsema_real_eip !16
  %ZF_val = alloca i1, !mcsema_real_eip !16
  %RIP_val = alloca i64, !mcsema_real_eip !16
  %R14_val = alloca i64, !mcsema_real_eip !16
  %R13_val = alloca i64, !mcsema_real_eip !16
  %R12_val = alloca i64, !mcsema_real_eip !16
  %R11_val = alloca i64, !mcsema_real_eip !16
  %R10_val = alloca i64, !mcsema_real_eip !16
  %R9_val = alloca i64, !mcsema_real_eip !16
  %R8_val = alloca i64, !mcsema_real_eip !16
  %RSP_val = alloca i64, !mcsema_real_eip !16
  %RBP_val = alloca i64, !mcsema_real_eip !16
  %RDI_val = alloca i64, !mcsema_real_eip !16
  %RSI_val = alloca i64, !mcsema_real_eip !16
  %RDX_val = alloca i64, !mcsema_real_eip !16
  %RCX_val = alloca i64, !mcsema_real_eip !16
  %RBX_val = alloca i64, !mcsema_real_eip !16
  %RAX_val = alloca i64, !mcsema_real_eip !16
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !16
  %1 = load i64, i64* %RAX, !mcsema_real_eip !16
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !16
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !16
  %2 = load i64, i64* %RBX, !mcsema_real_eip !16
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !16
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !16
  %3 = load i64, i64* %RCX, !mcsema_real_eip !16
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !16
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !16
  %4 = load i64, i64* %RDX, !mcsema_real_eip !16
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !16
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !16
  %5 = load i64, i64* %RSI, !mcsema_real_eip !16
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !16
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !16
  %6 = load i64, i64* %RDI, !mcsema_real_eip !16
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !16
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !16
  %7 = load i64, i64* %RSP, !mcsema_real_eip !16
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !16
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !16
  %8 = load i64, i64* %RBP, !mcsema_real_eip !16
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !16
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !16
  %9 = load i64, i64* %R8, !mcsema_real_eip !16
  store i64 %9, i64* %R8_val, !mcsema_real_eip !16
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !16
  %10 = load i64, i64* %R9, !mcsema_real_eip !16
  store i64 %10, i64* %R9_val, !mcsema_real_eip !16
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !16
  %11 = load i64, i64* %R10, !mcsema_real_eip !16
  store i64 %11, i64* %R10_val, !mcsema_real_eip !16
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !16
  %12 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %12, i64* %R11_val, !mcsema_real_eip !16
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !16
  %13 = load i64, i64* %R12, !mcsema_real_eip !16
  store i64 %13, i64* %R12_val, !mcsema_real_eip !16
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !16
  %14 = load i64, i64* %R13, !mcsema_real_eip !16
  store i64 %14, i64* %R13_val, !mcsema_real_eip !16
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !16
  %15 = load i64, i64* %R14, !mcsema_real_eip !16
  store i64 %15, i64* %R14_val, !mcsema_real_eip !16
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !16
  %16 = load i64, i64* %R15, !mcsema_real_eip !16
  store i64 %16, i64* %R15_val, !mcsema_real_eip !16
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !16
  %17 = load i64, i64* %RIP, !mcsema_real_eip !16
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !16
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !16
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %CF_val, !mcsema_real_eip !16
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !16
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !16
  store i1 %19, i1* %PF_val, !mcsema_real_eip !16
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !16
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %AF_val, !mcsema_real_eip !16
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !16
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !16
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !16
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %SF_val, !mcsema_real_eip !16
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !16
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %OF_val, !mcsema_real_eip !16
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !16
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %DF_val, !mcsema_real_eip !16
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !16
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !16
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !16
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !16
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !16
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !16
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !16
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !16
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !16
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !16
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !16
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !16
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !16
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !16
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !16
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !16
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !16
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !16
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !16
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !16
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !16
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !16
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !16
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !16
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !16
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !16
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !16
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !16
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !16
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !16
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !16
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !16
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !16
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !16
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !16
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !16
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !16
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !16
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !16
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !16
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !16
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !16
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !16
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !16
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !16
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !16
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !16
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !16
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !16
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !16
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !16
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !16
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !16
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !16
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !16
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !16
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !16
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !16
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !16
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !16
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !16
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !16
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !16
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !16
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !16
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !16
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !16
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !16
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !16
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !16
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !16
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !16
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !16
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !16
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !16
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !16
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !16
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !16
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !16
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !16
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !16
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !16
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !16
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !16
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !16
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !16
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !16
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !16
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !16
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !16
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !16
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !16
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !16
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !16
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !16
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !16
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !16
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !16
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !16
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !16
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !16
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !16
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !16
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !16
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !16
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !16
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !16
  store i64 %78, i64* %81, !mcsema_real_eip !16
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !16
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !17
  %82 = load i64, i64* %81, !mcsema_real_eip !18
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !18
  %83 = add i64 %79, 8, !mcsema_real_eip !19
  store i64 %83, i64* %RSP_val, !mcsema_real_eip !19
  %84 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %84, i64* %RAX, !mcsema_real_eip !19
  %85 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %85, i64* %RBX, !mcsema_real_eip !19
  %86 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %86, i64* %RCX, !mcsema_real_eip !19
  %87 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %87, i64* %RDX, !mcsema_real_eip !19
  %88 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %88, i64* %RSI, !mcsema_real_eip !19
  %89 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %89, i64* %RDI, !mcsema_real_eip !19
  %90 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  store i64 %90, i64* %RSP, !mcsema_real_eip !19
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  store i64 %91, i64* %RBP, !mcsema_real_eip !19
  %92 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %92, i64* %R8, !mcsema_real_eip !19
  %93 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %93, i64* %R9, !mcsema_real_eip !19
  %94 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %94, i64* %R10, !mcsema_real_eip !19
  %95 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %95, i64* %R11, !mcsema_real_eip !19
  %96 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %96, i64* %R12, !mcsema_real_eip !19
  %97 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %97, i64* %R13, !mcsema_real_eip !19
  %98 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %98, i64* %R14, !mcsema_real_eip !19
  %99 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %99, i64* %R15, !mcsema_real_eip !19
  %100 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %100, i64* %RIP, !mcsema_real_eip !19
  %101 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !19
  %102 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !19
  %103 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %103, i1* %AF, align 1, !mcsema_real_eip !19
  %104 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %104, i1* %ZF, align 1, !mcsema_real_eip !19
  %105 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %105, i1* %SF, align 1, !mcsema_real_eip !19
  %106 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %106, i1* %OF, align 1, !mcsema_real_eip !19
  %107 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %107, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %108 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %108, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %109 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %109, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %110 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %110, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %111 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %111, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %112 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %112, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %113 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %113, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %114 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %114, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %115 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %115, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %116 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %116, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %117 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %117, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %118 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %118, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %119 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %119, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %120 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %120, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %121 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %121, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %122 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %122, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %123 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %123, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %124 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %124, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %125 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %125, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %126 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %126, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %127 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %127, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %128 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %128, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %129 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %129, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %130 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %130, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %131 = load i64, i64* %53, align 4
  store i64 %131, i64* %52, align 4
  %132 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %132, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %133 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %133, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %134 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %134, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %135 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %135, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %136 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !19
  store i11 %136, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  %137 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %137, i128* %XMM0, align 1, !mcsema_real_eip !19
  %138 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %138, i128* %XMM1, align 1, !mcsema_real_eip !19
  %139 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %139, i128* %XMM2, align 1, !mcsema_real_eip !19
  %140 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %140, i128* %XMM3, align 1, !mcsema_real_eip !19
  %141 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %141, i128* %XMM4, align 1, !mcsema_real_eip !19
  %142 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %142, i128* %XMM5, align 1, !mcsema_real_eip !19
  %143 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %143, i128* %XMM6, align 1, !mcsema_real_eip !19
  %144 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %144, i128* %XMM7, align 1, !mcsema_real_eip !19
  %145 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %145, i128* %XMM8, align 1, !mcsema_real_eip !19
  %146 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %146, i128* %XMM9, align 1, !mcsema_real_eip !19
  %147 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %147, i128* %XMM10, align 1, !mcsema_real_eip !19
  %148 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %148, i128* %XMM11, align 1, !mcsema_real_eip !19
  %149 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %149, i128* %XMM12, align 1, !mcsema_real_eip !19
  %150 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %150, i128* %XMM13, align 1, !mcsema_real_eip !19
  %151 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %151, i128* %XMM14, align 1, !mcsema_real_eip !19
  %152 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %152, i128* %XMM15, align 1, !mcsema_real_eip !19
  %153 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %153, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %154 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %154, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_10(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 8
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 8
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !16
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !16
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !16
  %XMM15_val = alloca i128, !mcsema_real_eip !16
  %XMM14_val = alloca i128, !mcsema_real_eip !16
  %XMM13_val = alloca i128, !mcsema_real_eip !16
  %XMM12_val = alloca i128, !mcsema_real_eip !16
  %XMM11_val = alloca i128, !mcsema_real_eip !16
  %XMM10_val = alloca i128, !mcsema_real_eip !16
  %XMM9_val = alloca i128, !mcsema_real_eip !16
  %XMM8_val = alloca i128, !mcsema_real_eip !16
  %XMM7_val = alloca i128, !mcsema_real_eip !16
  %XMM6_val = alloca i128, !mcsema_real_eip !16
  %XMM5_val = alloca i128, !mcsema_real_eip !16
  %XMM4_val = alloca i128, !mcsema_real_eip !16
  %XMM3_val = alloca i128, !mcsema_real_eip !16
  %XMM2_val = alloca i128, !mcsema_real_eip !16
  %XMM1_val = alloca i128, !mcsema_real_eip !16
  %XMM0_val = alloca i128, !mcsema_real_eip !16
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !16
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !16
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !16
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !16
  %FPU_IM_val = alloca i1, !mcsema_real_eip !16
  %FPU_DM_val = alloca i1, !mcsema_real_eip !16
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !16
  %FPU_OM_val = alloca i1, !mcsema_real_eip !16
  %FPU_UM_val = alloca i1, !mcsema_real_eip !16
  %FPU_PM_val = alloca i1, !mcsema_real_eip !16
  %FPU_PC_val = alloca i2, !mcsema_real_eip !16
  %FPU_RC_val = alloca i2, !mcsema_real_eip !16
  %FPU_X_val = alloca i1, !mcsema_real_eip !16
  %FPU_IE_val = alloca i1, !mcsema_real_eip !16
  %FPU_DE_val = alloca i1, !mcsema_real_eip !16
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !16
  %FPU_OE_val = alloca i1, !mcsema_real_eip !16
  %FPU_UE_val = alloca i1, !mcsema_real_eip !16
  %FPU_PE_val = alloca i1, !mcsema_real_eip !16
  %FPU_SF_val = alloca i1, !mcsema_real_eip !16
  %FPU_ES_val = alloca i1, !mcsema_real_eip !16
  %FPU_C0_val = alloca i1, !mcsema_real_eip !16
  %FPU_C1_val = alloca i1, !mcsema_real_eip !16
  %FPU_C2_val = alloca i1, !mcsema_real_eip !16
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !16
  %FPU_C3_val = alloca i1, !mcsema_real_eip !16
  %FPU_B_val = alloca i1, !mcsema_real_eip !16
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !16
  %DF_val = alloca i1, !mcsema_real_eip !16
  %OF_val = alloca i1, !mcsema_real_eip !16
  %SF_val = alloca i1, !mcsema_real_eip !16
  %CF_val = alloca i1, !mcsema_real_eip !16
  %AF_val = alloca i1, !mcsema_real_eip !16
  %PF_val = alloca i1, !mcsema_real_eip !16
  %ZF_val = alloca i1, !mcsema_real_eip !16
  %RIP_val = alloca i64, !mcsema_real_eip !16
  %R14_val = alloca i64, !mcsema_real_eip !16
  %R13_val = alloca i64, !mcsema_real_eip !16
  %R12_val = alloca i64, !mcsema_real_eip !16
  %R11_val = alloca i64, !mcsema_real_eip !16
  %R10_val = alloca i64, !mcsema_real_eip !16
  %R9_val = alloca i64, !mcsema_real_eip !16
  %R8_val = alloca i64, !mcsema_real_eip !16
  %RSP_val = alloca i64, !mcsema_real_eip !16
  %RBP_val = alloca i64, !mcsema_real_eip !16
  %RDI_val = alloca i64, !mcsema_real_eip !16
  %RSI_val = alloca i64, !mcsema_real_eip !16
  %RDX_val = alloca i64, !mcsema_real_eip !16
  %RCX_val = alloca i64, !mcsema_real_eip !16
  %RBX_val = alloca i64, !mcsema_real_eip !16
  %RAX_val = alloca i64, !mcsema_real_eip !16
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !16
  %1 = load i64, i64* %RAX, !mcsema_real_eip !16
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !16
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !16
  %2 = load i64, i64* %RBX, !mcsema_real_eip !16
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !16
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !16
  %3 = load i64, i64* %RCX, !mcsema_real_eip !16
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !16
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !16
  %4 = load i64, i64* %RDX, !mcsema_real_eip !16
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !16
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !16
  %5 = load i64, i64* %RSI, !mcsema_real_eip !16
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !16
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !16
  %6 = load i64, i64* %RDI, !mcsema_real_eip !16
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !16
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !16
  %7 = load i64, i64* %RSP, !mcsema_real_eip !16
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !16
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !16
  %8 = load i64, i64* %RBP, !mcsema_real_eip !16
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !16
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !16
  %9 = load i64, i64* %R8, !mcsema_real_eip !16
  store i64 %9, i64* %R8_val, !mcsema_real_eip !16
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !16
  %10 = load i64, i64* %R9, !mcsema_real_eip !16
  store i64 %10, i64* %R9_val, !mcsema_real_eip !16
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !16
  %11 = load i64, i64* %R10, !mcsema_real_eip !16
  store i64 %11, i64* %R10_val, !mcsema_real_eip !16
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !16
  %12 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %12, i64* %R11_val, !mcsema_real_eip !16
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !16
  %13 = load i64, i64* %R12, !mcsema_real_eip !16
  store i64 %13, i64* %R12_val, !mcsema_real_eip !16
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !16
  %14 = load i64, i64* %R13, !mcsema_real_eip !16
  store i64 %14, i64* %R13_val, !mcsema_real_eip !16
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !16
  %15 = load i64, i64* %R14, !mcsema_real_eip !16
  store i64 %15, i64* %R14_val, !mcsema_real_eip !16
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !16
  %16 = load i64, i64* %R15, !mcsema_real_eip !16
  store i64 %16, i64* %R15_val, !mcsema_real_eip !16
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !16
  %17 = load i64, i64* %RIP, !mcsema_real_eip !16
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !16
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !16
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !16
  store i1 %18, i1* %CF_val, !mcsema_real_eip !16
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !16
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !16
  store i1 %19, i1* %PF_val, !mcsema_real_eip !16
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !16
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !16
  store i1 %20, i1* %AF_val, !mcsema_real_eip !16
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !16
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !16
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !16
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !16
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !16
  store i1 %22, i1* %SF_val, !mcsema_real_eip !16
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !16
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !16
  store i1 %23, i1* %OF_val, !mcsema_real_eip !16
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !16
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !16
  store i1 %24, i1* %DF_val, !mcsema_real_eip !16
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !16
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !16
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !16
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !16
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !16
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !16
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !16
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !16
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !16
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !16
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !16
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !16
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !16
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !16
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !16
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !16
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !16
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !16
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !16
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !16
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !16
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !16
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !16
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !16
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !16
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !16
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !16
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !16
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !16
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !16
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !16
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !16
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !16
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !16
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !16
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !16
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !16
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !16
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !16
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !16
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !16
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !16
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !16
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !16
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !16
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !16
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !16
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !16
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !16
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !16
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !16
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !16
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !16
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !16
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !16
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !16
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !16
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !16
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !16
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !16
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !16
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !16
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !16
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !16
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !16
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !16
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !16
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !16
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !16
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !16
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !16
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !16
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !16
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !16
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !16
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !16
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !16
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !16
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !16
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !16
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !16
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !16
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !16
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !16
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !16
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !16
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !16
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !16
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !16
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !16
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !16
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !16
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !16
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !16
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !16
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !16
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !16
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !16
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !16
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !16
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !16
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !16
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !16
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !16
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !16
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !16
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !16
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !16
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !16
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !16
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !16
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !16
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !16
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !16
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !16
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !17
  %_ptr_to_int_6 = ptrtoint i64* %_allin_new_bt_ to i64
  %_local_end_to_int_7 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_8 = bitcast i64* %_allin_new_bt_ to i8*
  %_offset_above_rbp_9 = sub i64 %_ptr_to_int_6, %_local_end_to_int_7
  %_pot_address_in_parent_stack_10 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_9
  %_cond1_11 = icmp ugt i8* %_ptr_bt_8, %_local_stack_end_ptr_
  %_cond2_1_12 = icmp ugt i8* %_ptr_bt_8, %_parent_stack_end_ptr_
  %_cond2_2_13 = icmp ult i8* %_ptr_bt_8, %_parent_stack_start_ptr_
  %_cond2_14 = or i1 %_cond2_1_12, %_cond2_2_13
  %_cond4_15 = icmp ule i8* %_pot_address_in_parent_stack_10, %_parent_stack_end_ptr_
  %_cond1_n_cond2_16 = and i1 %_cond1_11, %_cond2_14
  %_cond1_n_cond2_cond3_17 = and i1 %_cond1_n_cond2_16, %_cond4_15
  br i1 %_cond1_n_cond2_cond3_17, label %84, label %85

; <label>:84:                                     ; preds = %55
  %_address_in_parent_stack_18 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_9
  %_address_in_parent_stack_bt_19 = bitcast i8* %_address_in_parent_stack_18 to i64*
  br label %85

; <label>:85:                                     ; preds = %55, %84
  %86 = phi i64* [ %_allin_new_bt_, %55 ], [ %_address_in_parent_stack_bt_19, %84 ]
  %_new_load_20 = load i64, i64* %86
  %_new_int2ptr_ = inttoptr i64 %_new_load_20 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_20, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 8
  %87 = add i64 %81, 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !19
  %88 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %88, i64* %RAX, !mcsema_real_eip !19
  %89 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %89, i64* %RBX, !mcsema_real_eip !19
  %90 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %90, i64* %RCX, !mcsema_real_eip !19
  %91 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %91, i64* %RDX, !mcsema_real_eip !19
  %92 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %92, i64* %RSI, !mcsema_real_eip !19
  %93 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %93, i64* %RDI, !mcsema_real_eip !19
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %94 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %_new_ptr2int_3 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  store volatile i64 %_new_ptr2int_3, i64* %RSP
  %_load_rbp_ptr_4 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_ptr2int_5 = ptrtoint i8* %_load_rbp_ptr_4 to i64
  store volatile i64 %_new_ptr2int_5, i64* %RBP
  %96 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %96, i64* %R8, !mcsema_real_eip !19
  %97 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %97, i64* %R9, !mcsema_real_eip !19
  %98 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %98, i64* %R10, !mcsema_real_eip !19
  %99 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %99, i64* %R11, !mcsema_real_eip !19
  %100 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %100, i64* %R12, !mcsema_real_eip !19
  %101 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %101, i64* %R13, !mcsema_real_eip !19
  %102 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %102, i64* %R14, !mcsema_real_eip !19
  %103 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %103, i64* %R15, !mcsema_real_eip !19
  %104 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %104, i64* %RIP, !mcsema_real_eip !19
  %105 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !19
  %106 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !19
  %107 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !19
  %108 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !19
  %109 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !19
  %110 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %110, i1* %OF, align 1, !mcsema_real_eip !19
  %111 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %111, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %112 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %112, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %113 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %113, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %114 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %114, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %115 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %115, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %116 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %116, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %117 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %117, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %118 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %118, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %119 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %119, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %120 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %120, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %121 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %121, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %122 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %122, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %123 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %123, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %124 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %124, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %125 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %125, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %126 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %126, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %127 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %127, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %128 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %128, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %129 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %129, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %130 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %130, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %131 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %131, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %132 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %132, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %133 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %133, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %134 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %134, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %_ptr_to_int_21 = ptrtoint i64* %53 to i64
  %_local_end_to_int_22 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_23 = bitcast i64* %53 to i8*
  %_offset_above_rbp_24 = sub i64 %_ptr_to_int_21, %_local_end_to_int_22
  %_pot_address_in_parent_stack_25 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_24
  %_cond1_26 = icmp ugt i8* %_ptr_bt_23, %_local_stack_end_ptr_
  %_cond2_1_27 = icmp ugt i8* %_ptr_bt_23, %_parent_stack_end_ptr_
  %_cond2_2_28 = icmp ult i8* %_ptr_bt_23, %_parent_stack_start_ptr_
  %_cond2_29 = or i1 %_cond2_1_27, %_cond2_2_28
  %_cond4_30 = icmp ule i8* %_pot_address_in_parent_stack_25, %_parent_stack_end_ptr_
  %_cond1_n_cond2_31 = and i1 %_cond1_26, %_cond2_29
  %_cond1_n_cond2_cond3_32 = and i1 %_cond1_n_cond2_31, %_cond4_30
  br i1 %_cond1_n_cond2_cond3_32, label %135, label %136

; <label>:135:                                    ; preds = %85
  %_address_in_parent_stack_33 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_24
  %_address_in_parent_stack_bt_34 = bitcast i8* %_address_in_parent_stack_33 to i64*
  br label %136

; <label>:136:                                    ; preds = %85, %135
  %137 = phi i64* [ %53, %85 ], [ %_address_in_parent_stack_bt_34, %135 ]
  %_new_load_35 = load i64, i64* %137
  store i64 %_new_load_35, i64* %52, align 4
  %138 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %138, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %139 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %139, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %140 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %140, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %141 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %141, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %142 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !19
  store i11 %142, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !19
  %143 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %143, i128* %XMM0, align 1, !mcsema_real_eip !19
  %144 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %144, i128* %XMM1, align 1, !mcsema_real_eip !19
  %145 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %145, i128* %XMM2, align 1, !mcsema_real_eip !19
  %146 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %146, i128* %XMM3, align 1, !mcsema_real_eip !19
  %147 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %147, i128* %XMM4, align 1, !mcsema_real_eip !19
  %148 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %148, i128* %XMM5, align 1, !mcsema_real_eip !19
  %149 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %149, i128* %XMM6, align 1, !mcsema_real_eip !19
  %150 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %150, i128* %XMM7, align 1, !mcsema_real_eip !19
  %151 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %151, i128* %XMM8, align 1, !mcsema_real_eip !19
  %152 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %152, i128* %XMM9, align 1, !mcsema_real_eip !19
  %153 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %153, i128* %XMM10, align 1, !mcsema_real_eip !19
  %154 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %154, i128* %XMM11, align 1, !mcsema_real_eip !19
  %155 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %155, i128* %XMM12, align 1, !mcsema_real_eip !19
  %156 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %156, i128* %XMM13, align 1, !mcsema_real_eip !19
  %157 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %157, i128* %XMM14, align 1, !mcsema_real_eip !19
  %158 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %158, i128* %XMM15, align 1, !mcsema_real_eip !19
  %159 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %159, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %160 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %160, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 17}
!4 = !{i64 20}
!5 = !{i64 24}
!6 = !{i64 31}
!7 = !{i64 65}
!8 = !{i64 38}
!9 = !{i64 44}
!10 = !{i64 49}
!11 = !{i64 52}
!12 = !{i64 57}
!13 = !{i64 60}
!14 = !{i64 69}
!15 = !{i64 70}
!16 = !{i64 0}
!17 = !{i64 1}
!18 = !{i64 4}
!19 = !{i64 5}
