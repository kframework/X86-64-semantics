; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 56
  %_RBP_ptr_ = alloca i8*, i64 56
  %_local_stack_start_ptr_ = alloca i8, i64 56
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 56
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
  %83 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 0, i32* %83, !mcsema_real_eip !4
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -8
  %85 = add i64 %84, -8, !mcsema_real_eip !5
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  %87 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 0, i32* %87, !mcsema_real_eip !5
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %88 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -8
  %89 = add i64 %88, -8, !mcsema_real_eip !6
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !6
  %91 = bitcast i64* %_allin_new_bt_8 to i32*
  %92 = load i32, i32* %91, !mcsema_real_eip !6
  %93 = add i32 %92, -5
  %94 = xor i32 %93, %92, !mcsema_real_eip !6
  %95 = and i32 %94, 16, !mcsema_real_eip !6
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !6
  store i1 %96, i1* %AF_val, !mcsema_real_eip !6
  %97 = trunc i32 %93 to i8, !mcsema_real_eip !6
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !6
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF_val, !mcsema_real_eip !6
  %101 = icmp eq i32 %93, 0, !mcsema_real_eip !6
  store i1 %101, i1* %ZF_val, !mcsema_real_eip !6
  %102 = icmp slt i32 %93, 0
  store i1 %102, i1* %SF_val, !mcsema_real_eip !6
  %103 = icmp ult i32 %92, 5, !mcsema_real_eip !6
  store i1 %103, i1* %CF_val, !mcsema_real_eip !6
  %104 = and i32 %94, %92, !mcsema_real_eip !6
  %105 = icmp slt i32 %104, 0
  store i1 %105, i1* %OF_val, !mcsema_real_eip !6
  %tmp = xor i1 %102, %105
  br i1 %tmp, label %block_0x1c.preheader, label %block_0x42, !mcsema_real_eip !7

block_0x1c.preheader:                             ; preds = %entry
  br label %block_0x1c

block_0x42.loopexit:                              ; preds = %block_0x1c
  br label %block_0x42

block_0x42:                                       ; preds = %block_0x42.loopexit, %entry
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -44
  %107 = add i64 %106, -44, !mcsema_real_eip !8
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = bitcast i64* %_allin_new_bt_11 to i32*
  %110 = load i32, i32* %109, !mcsema_real_eip !8
  %111 = zext i32 %110 to i64, !mcsema_real_eip !8
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !8
  %_load_rsp_ptr_12 = load i8*, i8** %_RSP_ptr_
  %112 = load i64, i64* %RSP_val, !mcsema_real_eip !9
  %_allin_new_bt_13 = bitcast i8* %_load_rsp_ptr_12 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !9
  %114 = load i64, i64* %_allin_new_bt_13, !mcsema_real_eip !9
  %_new_int2ptr_ = inttoptr i64 %114 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %114, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_14 = getelementptr i8, i8* %_load_rsp_ptr_12, i64 16
  %115 = add i64 %112, 16, !mcsema_real_eip !10
  store volatile i8* %_new_gep_14, i8** %_RSP_ptr_
  store i64 %115, i64* %RSP_val, !mcsema_real_eip !10
  %116 = load i64, i64* %RAX_val, !mcsema_real_eip !10
  store i64 %116, i64* %RAX, !mcsema_real_eip !10
  %117 = load i64, i64* %RBX_val, !mcsema_real_eip !10
  store i64 %117, i64* %RBX, !mcsema_real_eip !10
  %118 = load i64, i64* %RCX_val, !mcsema_real_eip !10
  store i64 %118, i64* %RCX, !mcsema_real_eip !10
  %119 = load i64, i64* %RDX_val, !mcsema_real_eip !10
  store i64 %119, i64* %RDX, !mcsema_real_eip !10
  %120 = load i64, i64* %RSI_val, !mcsema_real_eip !10
  store i64 %120, i64* %RSI, !mcsema_real_eip !10
  %121 = load i64, i64* %RDI_val, !mcsema_real_eip !10
  store i64 %121, i64* %RDI, !mcsema_real_eip !10
  %_load_rsp_ptr_15 = load i8*, i8** %_RSP_ptr_
  %122 = load i64, i64* %RSP_val, !mcsema_real_eip !10
  %_new_ptr2int_16 = ptrtoint i8* %_load_rsp_ptr_15 to i64
  store volatile i64 %_new_ptr2int_16, i64* %RSP
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_ptr2int_18 = ptrtoint i8* %_load_rbp_ptr_17 to i64
  store volatile i64 %_new_ptr2int_18, i64* %RBP
  %124 = load i64, i64* %R8_val, !mcsema_real_eip !10
  store i64 %124, i64* %R8, !mcsema_real_eip !10
  %125 = load i64, i64* %R9_val, !mcsema_real_eip !10
  store i64 %125, i64* %R9, !mcsema_real_eip !10
  %126 = load i64, i64* %R10_val, !mcsema_real_eip !10
  store i64 %126, i64* %R10, !mcsema_real_eip !10
  %127 = load i64, i64* %R11_val, !mcsema_real_eip !10
  store i64 %127, i64* %R11, !mcsema_real_eip !10
  %128 = load i64, i64* %R12_val, !mcsema_real_eip !10
  store i64 %128, i64* %R12, !mcsema_real_eip !10
  %129 = load i64, i64* %R13_val, !mcsema_real_eip !10
  store i64 %129, i64* %R13, !mcsema_real_eip !10
  %130 = load i64, i64* %R14_val, !mcsema_real_eip !10
  store i64 %130, i64* %R14, !mcsema_real_eip !10
  %131 = load i64, i64* %R15_val, !mcsema_real_eip !10
  store i64 %131, i64* %R15, !mcsema_real_eip !10
  %132 = load i64, i64* %RIP_val, !mcsema_real_eip !10
  store i64 %132, i64* %RIP, !mcsema_real_eip !10
  %133 = load i1, i1* %CF_val, !mcsema_real_eip !10
  store i1 %133, i1* %CF, align 1, !mcsema_real_eip !10
  %134 = load i1, i1* %PF_val, !mcsema_real_eip !10
  store i1 %134, i1* %PF, align 1, !mcsema_real_eip !10
  %135 = load i1, i1* %AF_val, !mcsema_real_eip !10
  store i1 %135, i1* %AF, align 1, !mcsema_real_eip !10
  %136 = load i1, i1* %ZF_val, !mcsema_real_eip !10
  store i1 %136, i1* %ZF, align 1, !mcsema_real_eip !10
  %137 = load i1, i1* %SF_val, !mcsema_real_eip !10
  store i1 %137, i1* %SF, align 1, !mcsema_real_eip !10
  %138 = load i1, i1* %OF_val, !mcsema_real_eip !10
  store i1 %138, i1* %OF, align 1, !mcsema_real_eip !10
  %139 = load i1, i1* %DF_val, !mcsema_real_eip !10
  store i1 %139, i1* %DF, align 1, !mcsema_real_eip !10
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !10
  %140 = load i1, i1* %FPU_B_val, !mcsema_real_eip !10
  store i1 %140, i1* %FPU_B, align 1, !mcsema_real_eip !10
  %141 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !10
  store i1 %141, i1* %FPU_C3, align 1, !mcsema_real_eip !10
  %142 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !10
  store i3 %142, i3* %FPU_TOP, align 1, !mcsema_real_eip !10
  %143 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !10
  store i1 %143, i1* %FPU_C2, align 1, !mcsema_real_eip !10
  %144 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !10
  store i1 %144, i1* %FPU_C1, align 1, !mcsema_real_eip !10
  %145 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !10
  store i1 %145, i1* %FPU_C0, align 1, !mcsema_real_eip !10
  %146 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !10
  store i1 %146, i1* %FPU_ES, align 1, !mcsema_real_eip !10
  %147 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !10
  store i1 %147, i1* %FPU_SF, align 1, !mcsema_real_eip !10
  %148 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !10
  store i1 %148, i1* %FPU_PE, align 1, !mcsema_real_eip !10
  %149 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !10
  store i1 %149, i1* %FPU_UE, align 1, !mcsema_real_eip !10
  %150 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !10
  store i1 %150, i1* %FPU_OE, align 1, !mcsema_real_eip !10
  %151 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !10
  store i1 %151, i1* %FPU_ZE, align 1, !mcsema_real_eip !10
  %152 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !10
  store i1 %152, i1* %FPU_DE, align 1, !mcsema_real_eip !10
  %153 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !10
  store i1 %153, i1* %FPU_IE, align 1, !mcsema_real_eip !10
  %154 = load i1, i1* %FPU_X_val, !mcsema_real_eip !10
  store i1 %154, i1* %FPU_X, align 1, !mcsema_real_eip !10
  %155 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !10
  store i2 %155, i2* %FPU_RC, align 1, !mcsema_real_eip !10
  %156 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !10
  store i2 %156, i2* %FPU_PC, align 1, !mcsema_real_eip !10
  %157 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !10
  store i1 %157, i1* %FPU_PM, align 1, !mcsema_real_eip !10
  %158 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !10
  store i1 %158, i1* %FPU_UM, align 1, !mcsema_real_eip !10
  %159 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !10
  store i1 %159, i1* %FPU_OM, align 1, !mcsema_real_eip !10
  %160 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !10
  store i1 %160, i1* %FPU_ZM, align 1, !mcsema_real_eip !10
  %161 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !10
  store i1 %161, i1* %FPU_DM, align 1, !mcsema_real_eip !10
  %162 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !10
  store i1 %162, i1* %FPU_IM, align 1, !mcsema_real_eip !10
  %163 = load i64, i64* %53, align 4
  store i64 %163, i64* %52, align 4
  %164 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !10
  store i16 %164, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !10
  %165 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !10
  store i64 %165, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !10
  %166 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !10
  store i16 %166, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !10
  %167 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !10
  store i64 %167, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !10
  %168 = load i128, i128* %XMM0_val, !mcsema_real_eip !10
  store i128 %168, i128* %XMM0, align 1, !mcsema_real_eip !10
  %169 = load i128, i128* %XMM1_val, !mcsema_real_eip !10
  store i128 %169, i128* %XMM1, align 1, !mcsema_real_eip !10
  %170 = load i128, i128* %XMM2_val, !mcsema_real_eip !10
  store i128 %170, i128* %XMM2, align 1, !mcsema_real_eip !10
  %171 = load i128, i128* %XMM3_val, !mcsema_real_eip !10
  store i128 %171, i128* %XMM3, align 1, !mcsema_real_eip !10
  %172 = load i128, i128* %XMM4_val, !mcsema_real_eip !10
  store i128 %172, i128* %XMM4, align 1, !mcsema_real_eip !10
  %173 = load i128, i128* %XMM5_val, !mcsema_real_eip !10
  store i128 %173, i128* %XMM5, align 1, !mcsema_real_eip !10
  %174 = load i128, i128* %XMM6_val, !mcsema_real_eip !10
  store i128 %174, i128* %XMM6, align 1, !mcsema_real_eip !10
  %175 = load i128, i128* %XMM7_val, !mcsema_real_eip !10
  store i128 %175, i128* %XMM7, align 1, !mcsema_real_eip !10
  %176 = load i128, i128* %XMM8_val, !mcsema_real_eip !10
  store i128 %176, i128* %XMM8, align 1, !mcsema_real_eip !10
  %177 = load i128, i128* %XMM9_val, !mcsema_real_eip !10
  store i128 %177, i128* %XMM9, align 1, !mcsema_real_eip !10
  %178 = load i128, i128* %XMM10_val, !mcsema_real_eip !10
  store i128 %178, i128* %XMM10, align 1, !mcsema_real_eip !10
  %179 = load i128, i128* %XMM11_val, !mcsema_real_eip !10
  store i128 %179, i128* %XMM11, align 1, !mcsema_real_eip !10
  %180 = load i128, i128* %XMM12_val, !mcsema_real_eip !10
  store i128 %180, i128* %XMM12, align 1, !mcsema_real_eip !10
  %181 = load i128, i128* %XMM13_val, !mcsema_real_eip !10
  store i128 %181, i128* %XMM13, align 1, !mcsema_real_eip !10
  %182 = load i128, i128* %XMM14_val, !mcsema_real_eip !10
  store i128 %182, i128* %XMM14, align 1, !mcsema_real_eip !10
  %183 = load i128, i128* %XMM15_val, !mcsema_real_eip !10
  store i128 %183, i128* %XMM15, align 1, !mcsema_real_eip !10
  %184 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !10
  store i64 %184, i64* %STACK_BASE, align 1, !mcsema_real_eip !10
  %185 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !10
  store i64 %185, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10

block_0x1c:                                       ; preds = %block_0x1c, %block_0x1c.preheader
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %187 = add i64 %186, -8, !mcsema_real_eip !11
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !11
  %189 = bitcast i64* %_allin_new_bt_21 to i32*
  %190 = load i32, i32* %189, !mcsema_real_eip !11
  %191 = sext i32 %190 to i64, !mcsema_real_eip !11
  store i64 %191, i64* %RAX_val, !mcsema_real_eip !11
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %192 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -48
  %193 = add i64 %192, -48, !mcsema_real_eip !12
  %194 = shl nsw i64 %191, 3
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_23, i64 %194
  %195 = add i64 %193, %194, !mcsema_real_eip !12
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !12
  %197 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 1, i32* %197, !mcsema_real_eip !12
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -8
  %199 = add i64 %198, -8, !mcsema_real_eip !13
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !13
  %201 = bitcast i64* %_allin_new_bt_28 to i32*
  %202 = load i32, i32* %201, !mcsema_real_eip !13
  %203 = sext i32 %202 to i64, !mcsema_real_eip !13
  store i64 %203, i64* %RAX_val, !mcsema_real_eip !13
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -44
  %205 = add i64 %204, -44, !mcsema_real_eip !14
  %206 = shl nsw i64 %203, 3
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_30, i64 %206
  %207 = add i64 %205, %206, !mcsema_real_eip !14
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !14
  %209 = bitcast i64* %_allin_new_bt_32 to i32*
  store i32 2, i32* %209, !mcsema_real_eip !14
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %210 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -8
  %211 = add i64 %210, -8, !mcsema_real_eip !15
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !15
  %213 = bitcast i64* %_allin_new_bt_35 to i32*
  %214 = load i32, i32* %213, !mcsema_real_eip !15
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %214, i32 1)
  %215 = extractvalue { i32, i1 } %uadd, 0
  %216 = xor i32 %215, %214, !mcsema_real_eip !16
  %217 = and i32 %216, 16, !mcsema_real_eip !16
  %218 = icmp ne i32 %217, 0, !mcsema_real_eip !16
  store i1 %218, i1* %AF_val, !mcsema_real_eip !16
  %219 = icmp slt i32 %215, 0
  store i1 %219, i1* %SF_val, !mcsema_real_eip !16
  %220 = icmp eq i32 %215, 0, !mcsema_real_eip !16
  store i1 %220, i1* %ZF_val, !mcsema_real_eip !16
  %221 = xor i32 %214, -2147483648, !mcsema_real_eip !16
  %222 = and i32 %216, %221, !mcsema_real_eip !16
  %223 = icmp slt i32 %222, 0
  store i1 %223, i1* %OF_val, !mcsema_real_eip !16
  %224 = trunc i32 %215 to i8, !mcsema_real_eip !16
  %225 = tail call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !16
  %226 = and i8 %225, 1
  %227 = icmp eq i8 %226, 0
  store i1 %227, i1* %PF_val, !mcsema_real_eip !16
  %228 = extractvalue { i32, i1 } %uadd, 1
  store i1 %228, i1* %CF_val, !mcsema_real_eip !16
  %229 = zext i32 %215 to i64, !mcsema_real_eip !16
  store i64 %229, i64* %RAX_val, !mcsema_real_eip !16
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %230 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -8
  %231 = add i64 %230, -8, !mcsema_real_eip !17
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !17
  %233 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %215, i32* %233, !mcsema_real_eip !17
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %234 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -8
  %235 = add i64 %234, -8, !mcsema_real_eip !6
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !6
  %237 = bitcast i64* %_allin_new_bt_41 to i32*
  %238 = load i32, i32* %237, !mcsema_real_eip !6
  %239 = add i32 %238, -5
  %240 = xor i32 %239, %238, !mcsema_real_eip !6
  %241 = and i32 %240, 16, !mcsema_real_eip !6
  %242 = icmp ne i32 %241, 0, !mcsema_real_eip !6
  store i1 %242, i1* %AF_val, !mcsema_real_eip !6
  %243 = trunc i32 %239 to i8, !mcsema_real_eip !6
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !6
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !6
  %247 = icmp eq i32 %239, 0, !mcsema_real_eip !6
  store i1 %247, i1* %ZF_val, !mcsema_real_eip !6
  %248 = icmp slt i32 %239, 0
  store i1 %248, i1* %SF_val, !mcsema_real_eip !6
  %249 = icmp ult i32 %238, 5, !mcsema_real_eip !6
  store i1 %249, i1* %CF_val, !mcsema_real_eip !6
  %250 = and i32 %240, %238, !mcsema_real_eip !6
  %251 = icmp slt i32 %250, 0
  store i1 %251, i1* %OF_val, !mcsema_real_eip !6
  %tmp70 = xor i1 %248, %251
  br i1 %tmp70, label %block_0x1c, label %block_0x42.loopexit, !mcsema_real_eip !7
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
!4 = !{i64 4, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!5 = !{i64 11, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!6 = !{i64 18, [19 x i8] c"\09cmpl\09$5, -8(%rbp)\00"}
!7 = !{i64 22, [8 x i8] c"\09jge\0938\00"}
!8 = !{i64 66, [22 x i8] c"\09movl\09-44(%rbp), %eax\00"}
!9 = !{i64 69, [11 x i8] c"\09popq\09%rbp\00"}
!10 = !{i64 70, [6 x i8] c"\09retq\00"}
!11 = !{i64 28, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!12 = !{i64 32, [27 x i8] c"\09movl\09$1, -48(%rbp,%rax,8)\00"}
!13 = !{i64 40, [23 x i8] c"\09movslq\09-8(%rbp), %rax\00"}
!14 = !{i64 44, [27 x i8] c"\09movl\09$2, -44(%rbp,%rax,8)\00"}
!15 = !{i64 52, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!16 = !{i64 55, [15 x i8] c"\09addl\09$1, %eax\00"}
!17 = !{i64 58, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
