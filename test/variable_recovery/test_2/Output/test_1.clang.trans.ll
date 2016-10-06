; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 21
  %_RBP_ptr_ = alloca i8*, i64 21
  %_local_stack_start_ptr_ = alloca i8, i64 21
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 21
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
  store i1 false, i1* %CF_val, !mcsema_real_eip !4
  store i1 false, i1* %OF_val, !mcsema_real_eip !4
  store i1 false, i1* %SF_val, !mcsema_real_eip !4
  store i1 true, i1* %ZF_val, !mcsema_real_eip !4
  store i1 true, i1* %PF_val, !mcsema_real_eip !4
  store i64 0, i64* %RAX_val, !mcsema_real_eip !4
  %81 = load i64, i64* %RCX_val, !mcsema_real_eip !5
  %82 = and i64 %81, -256, !mcsema_real_eip !5
  store i64 %82, i64* %RCX_val, !mcsema_real_eip !5
  %_load_rbp_ptr_1 = load i8*, i8** %_RBP_ptr_
  %83 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_2 = getelementptr i8, i8* %_load_rbp_ptr_1, i64 -4
  %84 = add i64 %83, -4, !mcsema_real_eip !6
  %_allin_new_bt_3 = bitcast i8* %_new_gep_2 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !6
  %86 = load i64, i64* %RDI_val, !mcsema_real_eip !6
  %87 = trunc i64 %86 to i32, !mcsema_real_eip !6
  %88 = bitcast i64* %_allin_new_bt_3 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !6
  %_load_rbp_ptr_4 = load i8*, i8** %_RBP_ptr_
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_5 = getelementptr i8, i8* %_load_rbp_ptr_4, i64 -4
  %90 = add i64 %89, -4, !mcsema_real_eip !7
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !7
  %92 = bitcast i64* %_allin_new_bt_6 to i32*
  %93 = load i32, i32* %92, !mcsema_real_eip !7
  %94 = zext i32 %93 to i64, !mcsema_real_eip !7
  store i64 %94, i64* %RAX_val, !mcsema_real_eip !7
  %_load_rbp_ptr_7 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_8 = getelementptr i8, i8* %_load_rbp_ptr_7, i64 -8
  %96 = add i64 %95, -8, !mcsema_real_eip !8
  %_allin_new_bt_9 = bitcast i8* %_new_gep_8 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !8
  %98 = bitcast i64* %_allin_new_bt_9 to i32*
  store i32 %93, i32* %98, !mcsema_real_eip !8
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %100 = add i64 %99, -4, !mcsema_real_eip !9
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !9
  %102 = bitcast i64* %_allin_new_bt_12 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !9
  %104 = add i32 %103, -1
  %105 = xor i32 %104, %103, !mcsema_real_eip !10
  %106 = and i32 %105, 16, !mcsema_real_eip !10
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !10
  store i1 %107, i1* %AF_val, !mcsema_real_eip !10
  %108 = trunc i32 %104 to i8, !mcsema_real_eip !10
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !10
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  store i1 %111, i1* %PF_val, !mcsema_real_eip !10
  %112 = icmp eq i32 %104, 0, !mcsema_real_eip !10
  store i1 %112, i1* %ZF_val, !mcsema_real_eip !10
  %113 = icmp slt i32 %104, 0
  store i1 %113, i1* %SF_val, !mcsema_real_eip !10
  %114 = icmp eq i32 %103, 0
  store i1 %114, i1* %CF_val, !mcsema_real_eip !10
  %115 = and i32 %105, %103, !mcsema_real_eip !10
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF_val, !mcsema_real_eip !10
  %117 = zext i32 %104 to i64, !mcsema_real_eip !10
  store i64 %117, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %119 = add i64 %118, -12, !mcsema_real_eip !11
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !11
  %121 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %104, i32* %121, !mcsema_real_eip !11
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %123 = add i64 %122, -4, !mcsema_real_eip !12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !12
  %125 = bitcast i64* %_allin_new_bt_18 to i32*
  %126 = load i32, i32* %125, !mcsema_real_eip !12
  store i1 false, i1* %AF_val, !mcsema_real_eip !12
  %127 = trunc i32 %126 to i8, !mcsema_real_eip !12
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !12
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF_val, !mcsema_real_eip !12
  %131 = icmp eq i32 %126, 0, !mcsema_real_eip !12
  store i1 %131, i1* %ZF_val, !mcsema_real_eip !12
  %132 = icmp slt i32 %126, 0
  store i1 %132, i1* %SF_val, !mcsema_real_eip !12
  store i1 false, i1* %CF_val, !mcsema_real_eip !12
  store i1 false, i1* %OF_val, !mcsema_real_eip !12
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -13
  %134 = add i64 %133, -13, !mcsema_real_eip !13
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !13
  %136 = load i64, i64* %RCX_val, !mcsema_real_eip !13
  %137 = trunc i64 %136 to i8, !mcsema_real_eip !13
  %138 = bitcast i64* %_allin_new_bt_21 to i8*
  store i8 %137, i8* %138, !mcsema_real_eip !13
  %139 = load i1, i1* %ZF_val, !mcsema_real_eip !14
  br i1 %139, label %block_0x37, label %block_0x27, !mcsema_real_eip !14

block_0x37:                                       ; preds = %entry
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -13
  %141 = add i64 %140, -13, !mcsema_real_eip !15
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !15
  %143 = bitcast i64* %_allin_new_bt_24 to i8*
  %144 = load i8, i8* %143, !mcsema_real_eip !15
  %145 = and i8 %144, 1, !mcsema_real_eip !16
  store i1 false, i1* %SF_val, !mcsema_real_eip !16
  %146 = icmp eq i8 %145, 0, !mcsema_real_eip !16
  store i1 %146, i1* %ZF_val, !mcsema_real_eip !16
  %147 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !16
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  store i1 %149, i1* %PF_val, !mcsema_real_eip !16
  store i1 false, i1* %OF_val, !mcsema_real_eip !16
  store i1 false, i1* %CF_val, !mcsema_real_eip !16
  %150 = zext i8 %145 to i64
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !17
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %151 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !18
  %153 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !18
  %_new_int2ptr_ = inttoptr i64 %153 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %153, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 16
  %154 = add i64 %151, 16, !mcsema_real_eip !19
  store volatile i8* %_new_gep_27, i8** %_RSP_ptr_
  store i64 %154, i64* %RSP_val, !mcsema_real_eip !19
  %155 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %155, i64* %RAX, !mcsema_real_eip !19
  %156 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %156, i64* %RBX, !mcsema_real_eip !19
  %157 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %157, i64* %RCX, !mcsema_real_eip !19
  %158 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %158, i64* %RDX, !mcsema_real_eip !19
  %159 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %159, i64* %RSI, !mcsema_real_eip !19
  %160 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %160, i64* %RDI, !mcsema_real_eip !19
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %161 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %_new_ptr2int_29 = ptrtoint i8* %_load_rsp_ptr_28 to i64
  store volatile i64 %_new_ptr2int_29, i64* %RSP
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_ptr2int_31 = ptrtoint i8* %_load_rbp_ptr_30 to i64
  store volatile i64 %_new_ptr2int_31, i64* %RBP
  %163 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %163, i64* %R8, !mcsema_real_eip !19
  %164 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %164, i64* %R9, !mcsema_real_eip !19
  %165 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %165, i64* %R10, !mcsema_real_eip !19
  %166 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %166, i64* %R11, !mcsema_real_eip !19
  %167 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %167, i64* %R12, !mcsema_real_eip !19
  %168 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %168, i64* %R13, !mcsema_real_eip !19
  %169 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %169, i64* %R14, !mcsema_real_eip !19
  %170 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %170, i64* %R15, !mcsema_real_eip !19
  %171 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %171, i64* %RIP, !mcsema_real_eip !19
  %172 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !19
  %173 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %173, i1* %PF, align 1, !mcsema_real_eip !19
  %174 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %174, i1* %AF, align 1, !mcsema_real_eip !19
  %175 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %175, i1* %ZF, align 1, !mcsema_real_eip !19
  %176 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %176, i1* %SF, align 1, !mcsema_real_eip !19
  %177 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %177, i1* %OF, align 1, !mcsema_real_eip !19
  %178 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %178, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %179 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %179, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %180 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %180, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %181 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %181, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %182 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %182, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %183 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %183, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %184 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %184, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %185 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %185, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %186 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %186, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %187 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %187, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %188 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %188, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %189 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %189, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %190 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %190, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %191 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %191, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %192 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %192, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %193 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %193, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %194 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %194, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %195 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %195, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %196 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %196, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %197 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %197, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %198 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %198, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %199 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %199, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %200 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %200, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %201 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %201, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %202 = load i64, i64* %53, align 4
  store i64 %202, i64* %52, align 4
  %203 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %203, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %204 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %204, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %205 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %205, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %206 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %206, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %207 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %207, i128* %XMM0, align 1, !mcsema_real_eip !19
  %208 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %208, i128* %XMM1, align 1, !mcsema_real_eip !19
  %209 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %209, i128* %XMM2, align 1, !mcsema_real_eip !19
  %210 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %210, i128* %XMM3, align 1, !mcsema_real_eip !19
  %211 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %211, i128* %XMM4, align 1, !mcsema_real_eip !19
  %212 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %212, i128* %XMM5, align 1, !mcsema_real_eip !19
  %213 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %213, i128* %XMM6, align 1, !mcsema_real_eip !19
  %214 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %214, i128* %XMM7, align 1, !mcsema_real_eip !19
  %215 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %215, i128* %XMM8, align 1, !mcsema_real_eip !19
  %216 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %216, i128* %XMM9, align 1, !mcsema_real_eip !19
  %217 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %217, i128* %XMM10, align 1, !mcsema_real_eip !19
  %218 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %218, i128* %XMM11, align 1, !mcsema_real_eip !19
  %219 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %219, i128* %XMM12, align 1, !mcsema_real_eip !19
  %220 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %220, i128* %XMM13, align 1, !mcsema_real_eip !19
  %221 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %221, i128* %XMM14, align 1, !mcsema_real_eip !19
  %222 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %222, i128* %XMM15, align 1, !mcsema_real_eip !19
  %223 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %223, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %224 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %224, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19

block_0x27:                                       ; preds = %entry
  store i1 false, i1* %CF_val, !mcsema_real_eip !20
  store i1 false, i1* %OF_val, !mcsema_real_eip !20
  store i1 false, i1* %SF_val, !mcsema_real_eip !20
  store i1 true, i1* %ZF_val, !mcsema_real_eip !20
  store i1 true, i1* %PF_val, !mcsema_real_eip !20
  store i64 0, i64* %RAX_val, !mcsema_real_eip !20
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %225 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -8
  %226 = add i64 %225, -8, !mcsema_real_eip !21
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !21
  %228 = bitcast i64* %_allin_new_bt_34 to i32*
  %229 = load i32, i32* %228, !mcsema_real_eip !21
  %230 = zext i32 %229 to i64, !mcsema_real_eip !21
  store i64 %230, i64* %RCX_val, !mcsema_real_eip !21
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %231 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -12
  %232 = add i64 %231, -12, !mcsema_real_eip !22
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !22
  %234 = bitcast i64* %_allin_new_bt_37 to i32*
  %235 = load i32, i32* %234, !mcsema_real_eip !22
  %236 = and i32 %235, %229, !mcsema_real_eip !22
  %237 = zext i32 %236 to i64, !mcsema_real_eip !22
  store i64 %237, i64* %RCX_val, !mcsema_real_eip !22
  %238 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  %239 = trunc i64 %238 to i32, !mcsema_real_eip !23
  %240 = sub i32 %239, %236, !mcsema_real_eip !23
  %241 = xor i32 %240, %239, !mcsema_real_eip !23
  %242 = xor i32 %241, %236, !mcsema_real_eip !23
  %243 = and i32 %242, 16, !mcsema_real_eip !23
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !23
  store i1 %244, i1* %AF_val, !mcsema_real_eip !23
  %245 = trunc i32 %240 to i8, !mcsema_real_eip !23
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !23
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF_val, !mcsema_real_eip !23
  %249 = icmp eq i32 %239, %236
  store i1 %249, i1* %ZF_val, !mcsema_real_eip !23
  %250 = icmp slt i32 %240, 0
  store i1 %250, i1* %SF_val, !mcsema_real_eip !23
  %251 = icmp ult i32 %239, %236, !mcsema_real_eip !23
  store i1 %251, i1* %CF_val, !mcsema_real_eip !23
  %252 = xor i32 %239, %236, !mcsema_real_eip !23
  %253 = and i32 %241, %252, !mcsema_real_eip !23
  %254 = icmp slt i32 %253, 0
  store i1 %254, i1* %OF_val, !mcsema_real_eip !23
  %255 = load i1, i1* %ZF_val, !mcsema_real_eip !24
  %256 = zext i1 %255 to i64
  %257 = load i64, i64* %RDX_val, !mcsema_real_eip !24
  %258 = and i64 %257, -256, !mcsema_real_eip !24
  %259 = or i64 %258, %256
  store i64 %259, i64* %RDX_val, !mcsema_real_eip !24
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %260 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -13
  %261 = add i64 %260, -13, !mcsema_real_eip !25
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !25
  %263 = zext i1 %255 to i8
  %264 = bitcast i64* %_allin_new_bt_40 to i8*
  store i8 %263, i8* %264, !mcsema_real_eip !25
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %265 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -13
  %266 = add i64 %265, -13, !mcsema_real_eip !15
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !15
  %268 = bitcast i64* %_allin_new_bt_43 to i8*
  %269 = load i8, i8* %268, !mcsema_real_eip !15
  %270 = and i8 %269, 1, !mcsema_real_eip !16
  store i1 false, i1* %SF_val, !mcsema_real_eip !16
  %271 = icmp eq i8 %270, 0, !mcsema_real_eip !16
  store i1 %271, i1* %ZF_val, !mcsema_real_eip !16
  %272 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !16
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  store i1 %274, i1* %PF_val, !mcsema_real_eip !16
  store i1 false, i1* %OF_val, !mcsema_real_eip !16
  store i1 false, i1* %CF_val, !mcsema_real_eip !16
  %275 = zext i8 %270 to i64
  store i64 %275, i64* %RAX_val, !mcsema_real_eip !17
  %_load_rsp_ptr_44 = load i8*, i8** %_RSP_ptr_
  %276 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_allin_new_bt_45 = bitcast i8* %_load_rsp_ptr_44 to i64*
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !18
  %278 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !18
  %_new_int2ptr_46 = inttoptr i64 %278 to i8*
  store volatile i8* %_new_int2ptr_46, i8** %_RBP_ptr_
  store i64 %278, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_44, i64 16
  %279 = add i64 %276, 16, !mcsema_real_eip !19
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %279, i64* %RSP_val, !mcsema_real_eip !19
  %280 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %280, i64* %RAX, !mcsema_real_eip !19
  %281 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %281, i64* %RBX, !mcsema_real_eip !19
  %282 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %282, i64* %RCX, !mcsema_real_eip !19
  %283 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %283, i64* %RDX, !mcsema_real_eip !19
  %284 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %284, i64* %RSI, !mcsema_real_eip !19
  %285 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %285, i64* %RDI, !mcsema_real_eip !19
  %_load_rsp_ptr_48 = load i8*, i8** %_RSP_ptr_
  %286 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %_new_ptr2int_49 = ptrtoint i8* %_load_rsp_ptr_48 to i64
  store volatile i64 %_new_ptr2int_49, i64* %RSP
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_ptr2int_51 = ptrtoint i8* %_load_rbp_ptr_50 to i64
  store volatile i64 %_new_ptr2int_51, i64* %RBP
  %288 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %288, i64* %R8, !mcsema_real_eip !19
  %289 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %289, i64* %R9, !mcsema_real_eip !19
  %290 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %290, i64* %R10, !mcsema_real_eip !19
  %291 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %291, i64* %R11, !mcsema_real_eip !19
  %292 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %292, i64* %R12, !mcsema_real_eip !19
  %293 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %293, i64* %R13, !mcsema_real_eip !19
  %294 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %294, i64* %R14, !mcsema_real_eip !19
  %295 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %295, i64* %R15, !mcsema_real_eip !19
  %296 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %296, i64* %RIP, !mcsema_real_eip !19
  %297 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %297, i1* %CF, align 1, !mcsema_real_eip !19
  %298 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %298, i1* %PF, align 1, !mcsema_real_eip !19
  %299 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %299, i1* %AF, align 1, !mcsema_real_eip !19
  %300 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %300, i1* %ZF, align 1, !mcsema_real_eip !19
  %301 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %301, i1* %SF, align 1, !mcsema_real_eip !19
  %302 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %302, i1* %OF, align 1, !mcsema_real_eip !19
  %303 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %303, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %304 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %304, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %305 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %305, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %306 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %306, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %307 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %307, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %308 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %308, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %309 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %309, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %310 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %310, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %311 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %311, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %312 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %312, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %313 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %313, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %314 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %314, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %315 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %315, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %316 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %316, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %317 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %317, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %318 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %318, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %319 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %319, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %320 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %320, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %321 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %321, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %322 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %322, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %323 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %323, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %324 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %324, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %325 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %325, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %326 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %326, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %327 = load i64, i64* %53, align 4
  store i64 %327, i64* %52, align 4
  %328 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %328, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %329 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %329, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %330 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %330, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %331 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %331, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %332 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %332, i128* %XMM0, align 1, !mcsema_real_eip !19
  %333 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %333, i128* %XMM1, align 1, !mcsema_real_eip !19
  %334 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %334, i128* %XMM2, align 1, !mcsema_real_eip !19
  %335 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %335, i128* %XMM3, align 1, !mcsema_real_eip !19
  %336 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %336, i128* %XMM4, align 1, !mcsema_real_eip !19
  %337 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %337, i128* %XMM5, align 1, !mcsema_real_eip !19
  %338 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %338, i128* %XMM6, align 1, !mcsema_real_eip !19
  %339 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %339, i128* %XMM7, align 1, !mcsema_real_eip !19
  %340 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %340, i128* %XMM8, align 1, !mcsema_real_eip !19
  %341 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %341, i128* %XMM9, align 1, !mcsema_real_eip !19
  %342 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %342, i128* %XMM10, align 1, !mcsema_real_eip !19
  %343 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %343, i128* %XMM11, align 1, !mcsema_real_eip !19
  %344 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %344, i128* %XMM12, align 1, !mcsema_real_eip !19
  %345 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %345, i128* %XMM13, align 1, !mcsema_real_eip !19
  %346 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %346, i128* %XMM14, align 1, !mcsema_real_eip !19
  %347 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %347, i128* %XMM15, align 1, !mcsema_real_eip !19
  %348 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %348, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %349 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %349, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
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

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!5 = !{i64 6, [15 x i8] c"\09movb\09%al, %cl\00"}
!6 = !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!7 = !{i64 11, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!8 = !{i64 14, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!9 = !{i64 17, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!10 = !{i64 20, [15 x i8] c"\09subl\09$1, %eax\00"}
!11 = !{i64 23, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!12 = !{i64 26, [19 x i8] c"\09cmpl\09$0, -4(%rbp)\00"}
!13 = !{i64 30, [21 x i8] c"\09movb\09%cl, -13(%rbp)\00"}
!14 = !{i64 33, [7 x i8] c"\09je\0916\00"}
!15 = !{i64 55, [21 x i8] c"\09movb\09-13(%rbp), %al\00"}
!16 = !{i64 58, [14 x i8] c"\09andb\09$1, %al\00"}
!17 = !{i64 60, [18 x i8] c"\09movzbl\09%al, %eax\00"}
!18 = !{i64 63, [11 x i8] c"\09popq\09%rbp\00"}
!19 = !{i64 64, [6 x i8] c"\09retq\00"}
!20 = !{i64 39, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!21 = !{i64 41, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!22 = !{i64 44, [22 x i8] c"\09andl\09-12(%rbp), %ecx\00"}
!23 = !{i64 47, [17 x i8] c"\09cmpl\09%ecx, %eax\00"}
!24 = !{i64 49, [10 x i8] c"\09sete\09%dl\00"}
!25 = !{i64 52, [21 x i8] c"\09movb\09%dl, -13(%rbp)\00"}
