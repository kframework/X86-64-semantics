; ModuleID = 'Output/test_5.clang.trans.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
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
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !3
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %82 = add i64 %79, -16, !mcsema_real_eip !4
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  %84 = load i64, i64* %RDI_val, !mcsema_real_eip !4
  store i64 %84, i64* %_allin_new_bt_2, !mcsema_real_eip !4
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -12
  %86 = add i64 %85, -12, !mcsema_real_eip !5
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  %88 = load i64, i64* %RSI_val, !mcsema_real_eip !5
  %89 = trunc i64 %88 to i32, !mcsema_real_eip !5
  %90 = bitcast i64* %_allin_new_bt_5 to i32*
  store i32 %89, i32* %90, !mcsema_real_eip !5
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -16
  %92 = add i64 %91, -16, !mcsema_real_eip !6
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !6
  %94 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 0, i32* %94, !mcsema_real_eip !6
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -20
  %96 = add i64 %95, -20, !mcsema_real_eip !7
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !7
  %98 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %entry
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -20
  %100 = add i64 %99, -20, !mcsema_real_eip !8
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !8
  %102 = bitcast i64* %_allin_new_bt_14 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !8
  %104 = zext i32 %103 to i64, !mcsema_real_eip !8
  store i64 %104, i64* %RAX_val, !mcsema_real_eip !8
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -12
  %106 = add i64 %105, -12, !mcsema_real_eip !9
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !9
  %108 = bitcast i64* %_allin_new_bt_17 to i32*
  %109 = load i32, i32* %108, !mcsema_real_eip !9
  %110 = sub i32 %103, %109, !mcsema_real_eip !9
  %111 = xor i32 %110, %103, !mcsema_real_eip !9
  %112 = xor i32 %111, %109, !mcsema_real_eip !9
  %113 = and i32 %112, 16, !mcsema_real_eip !9
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !9
  store i1 %114, i1* %AF_val, !mcsema_real_eip !9
  %115 = trunc i32 %110 to i8, !mcsema_real_eip !9
  %116 = tail call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !9
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  store i1 %118, i1* %PF_val, !mcsema_real_eip !9
  %119 = icmp eq i32 %103, %109
  store i1 %119, i1* %ZF_val, !mcsema_real_eip !9
  %120 = icmp slt i32 %110, 0
  store i1 %120, i1* %SF_val, !mcsema_real_eip !9
  %121 = icmp ult i32 %103, %109, !mcsema_real_eip !9
  store i1 %121, i1* %CF_val, !mcsema_real_eip !9
  %122 = xor i32 %109, %103, !mcsema_real_eip !9
  %123 = and i32 %111, %122, !mcsema_real_eip !9
  %124 = icmp slt i32 %123, 0
  store i1 %124, i1* %OF_val, !mcsema_real_eip !9
  %125 = load i1, i1* %SF_val, !mcsema_real_eip !10
  %tmp = xor i1 %125, %124
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  br i1 %tmp, label %block_0x25, label %block_0x48, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -20
  %127 = add i64 %126, -20, !mcsema_real_eip !12
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !12
  %129 = bitcast i64* %_allin_new_bt_20 to i32*
  %130 = load i32, i32* %129, !mcsema_real_eip !12
  %131 = sext i32 %130 to i64, !mcsema_real_eip !12
  store i64 %131, i64* %RAX_val, !mcsema_real_eip !12
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -8
  %133 = add i64 %132, -8, !mcsema_real_eip !13
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !13
  %135 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !13
  store i64 %135, i64* %RCX_val, !mcsema_real_eip !13
  %136 = shl nsw i64 %131, 2
  %137 = add i64 %135, %136, !mcsema_real_eip !14
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !14
  %139 = bitcast i64* %138 to i32*
  %140 = load i32, i32* %139, !mcsema_real_eip !14
  %141 = zext i32 %140 to i64, !mcsema_real_eip !14
  store i64 %141, i64* %RDX_val, !mcsema_real_eip !14
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -16
  %143 = add i64 %142, -16, !mcsema_real_eip !15
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !15
  %145 = bitcast i64* %_allin_new_bt_26 to i32*
  %146 = load i32, i32* %145, !mcsema_real_eip !15
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %140, i32 %146)
  %147 = extractvalue { i32, i1 } %uadd, 0
  %148 = xor i32 %147, %146, !mcsema_real_eip !16
  %149 = xor i32 %148, %140, !mcsema_real_eip !16
  %150 = and i32 %149, 16, !mcsema_real_eip !16
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !16
  store i1 %151, i1* %AF_val, !mcsema_real_eip !16
  %152 = icmp slt i32 %147, 0
  store i1 %152, i1* %SF_val, !mcsema_real_eip !16
  %153 = icmp eq i32 %147, 0, !mcsema_real_eip !16
  store i1 %153, i1* %ZF_val, !mcsema_real_eip !16
  %154 = xor i32 %146, -2147483648, !mcsema_real_eip !16
  %155 = xor i32 %154, %140, !mcsema_real_eip !16
  %156 = and i32 %148, %155, !mcsema_real_eip !16
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF_val, !mcsema_real_eip !16
  %158 = trunc i32 %147 to i8, !mcsema_real_eip !16
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !16
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF_val, !mcsema_real_eip !16
  %162 = extractvalue { i32, i1 } %uadd, 1
  store i1 %162, i1* %CF_val, !mcsema_real_eip !16
  %163 = zext i32 %147 to i64, !mcsema_real_eip !16
  store i64 %163, i64* %RSI_val, !mcsema_real_eip !16
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -16
  %165 = add i64 %164, -16, !mcsema_real_eip !17
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !17
  %167 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %147, i32* %167, !mcsema_real_eip !17
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -20
  %169 = add i64 %168, -20, !mcsema_real_eip !18
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !18
  %171 = bitcast i64* %_allin_new_bt_32 to i32*
  %172 = load i32, i32* %171, !mcsema_real_eip !18
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %172, i32 1)
  %173 = extractvalue { i32, i1 } %uadd71, 0
  %174 = xor i32 %173, %172, !mcsema_real_eip !19
  %175 = and i32 %174, 16, !mcsema_real_eip !19
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !19
  store i1 %176, i1* %AF_val, !mcsema_real_eip !19
  %177 = icmp slt i32 %173, 0
  store i1 %177, i1* %SF_val, !mcsema_real_eip !19
  %178 = icmp eq i32 %173, 0, !mcsema_real_eip !19
  store i1 %178, i1* %ZF_val, !mcsema_real_eip !19
  %179 = xor i32 %172, -2147483648, !mcsema_real_eip !19
  %180 = and i32 %174, %179, !mcsema_real_eip !19
  %181 = icmp slt i32 %180, 0
  store i1 %181, i1* %OF_val, !mcsema_real_eip !19
  %182 = trunc i32 %173 to i8, !mcsema_real_eip !19
  %183 = tail call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !19
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  store i1 %185, i1* %PF_val, !mcsema_real_eip !19
  %186 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %186, i1* %CF_val, !mcsema_real_eip !19
  %187 = zext i32 %173 to i64, !mcsema_real_eip !19
  store i64 %187, i64* %RAX_val, !mcsema_real_eip !19
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %188 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -20
  %189 = add i64 %188, -20, !mcsema_real_eip !20
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !20
  %191 = bitcast i64* %_allin_new_bt_35 to i32*
  store i32 %173, i32* %191, !mcsema_real_eip !20
  br label %block_0x19, !mcsema_real_eip !21

block_0x48:                                       ; preds = %block_0x19
  %192 = phi i8* [ %_load_rbp_ptr_18, %block_0x19 ]
  %.lcssa = phi i64 [ %126, %block_0x19 ]
  %_new_gep_36 = getelementptr i8, i8* %192, i64 -16
  %193 = add i64 %.lcssa, -16, !mcsema_real_eip !11
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !11
  %195 = bitcast i64* %_allin_new_bt_37 to i32*
  %196 = load i32, i32* %195, !mcsema_real_eip !11
  %197 = zext i32 %196 to i64, !mcsema_real_eip !11
  store i64 %197, i64* %RAX_val, !mcsema_real_eip !11
  %_load_rsp_ptr_38 = load i8*, i8** %_RSP_ptr_
  %198 = load i64, i64* %RSP_val, !mcsema_real_eip !22
  %_allin_new_bt_39 = bitcast i8* %_load_rsp_ptr_38 to i64*
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !22
  %200 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !22
  %_new_int2ptr_ = inttoptr i64 %200 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %200, i64* %RBP_val, !mcsema_real_eip !22
  %_new_gep_40 = getelementptr i8, i8* %_load_rsp_ptr_38, i64 16
  %201 = add i64 %198, 16, !mcsema_real_eip !23
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_
  store i64 %201, i64* %RSP_val, !mcsema_real_eip !23
  %202 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %202, i64* %RAX, !mcsema_real_eip !23
  %203 = load i64, i64* %RBX_val, !mcsema_real_eip !23
  store i64 %203, i64* %RBX, !mcsema_real_eip !23
  %204 = load i64, i64* %RCX_val, !mcsema_real_eip !23
  store i64 %204, i64* %RCX, !mcsema_real_eip !23
  %205 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  store i64 %205, i64* %RDX, !mcsema_real_eip !23
  %206 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  store i64 %206, i64* %RSI, !mcsema_real_eip !23
  %207 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  store i64 %207, i64* %RDI, !mcsema_real_eip !23
  %_load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_
  %208 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  %_new_ptr2int_42 = ptrtoint i8* %_load_rsp_ptr_41 to i64
  store volatile i64 %_new_ptr2int_42, i64* %RSP
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %209 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_ptr2int_44 = ptrtoint i8* %_load_rbp_ptr_43 to i64
  store volatile i64 %_new_ptr2int_44, i64* %RBP
  %210 = load i64, i64* %R8_val, !mcsema_real_eip !23
  store i64 %210, i64* %R8, !mcsema_real_eip !23
  %211 = load i64, i64* %R9_val, !mcsema_real_eip !23
  store i64 %211, i64* %R9, !mcsema_real_eip !23
  %212 = load i64, i64* %R10_val, !mcsema_real_eip !23
  store i64 %212, i64* %R10, !mcsema_real_eip !23
  %213 = load i64, i64* %R11_val, !mcsema_real_eip !23
  store i64 %213, i64* %R11, !mcsema_real_eip !23
  %214 = load i64, i64* %R12_val, !mcsema_real_eip !23
  store i64 %214, i64* %R12, !mcsema_real_eip !23
  %215 = load i64, i64* %R13_val, !mcsema_real_eip !23
  store i64 %215, i64* %R13, !mcsema_real_eip !23
  %216 = load i64, i64* %R14_val, !mcsema_real_eip !23
  store i64 %216, i64* %R14, !mcsema_real_eip !23
  %217 = load i64, i64* %R15_val, !mcsema_real_eip !23
  store i64 %217, i64* %R15, !mcsema_real_eip !23
  %218 = load i64, i64* %RIP_val, !mcsema_real_eip !23
  store i64 %218, i64* %RIP, !mcsema_real_eip !23
  %219 = load i1, i1* %CF_val, !mcsema_real_eip !23
  store i1 %219, i1* %CF, align 1, !mcsema_real_eip !23
  %220 = load i1, i1* %PF_val, !mcsema_real_eip !23
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !23
  %221 = load i1, i1* %AF_val, !mcsema_real_eip !23
  store i1 %221, i1* %AF, align 1, !mcsema_real_eip !23
  %222 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !23
  %223 = load i1, i1* %SF_val, !mcsema_real_eip !23
  store i1 %223, i1* %SF, align 1, !mcsema_real_eip !23
  %224 = load i1, i1* %OF_val, !mcsema_real_eip !23
  store i1 %224, i1* %OF, align 1, !mcsema_real_eip !23
  %225 = load i1, i1* %DF_val, !mcsema_real_eip !23
  store i1 %225, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %226 = load i1, i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %226, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %227 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %227, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %228 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %228, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %229 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %229, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %230 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %230, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %231 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %231, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %232 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %232, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %233 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %233, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %234 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %234, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %235 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %235, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %236 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %236, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %237 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %237, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %238 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %238, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %239 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %239, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %240 = load i1, i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %240, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %241 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %241, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %242 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %242, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %243 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %243, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %244 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %244, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %245 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %245, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %246 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %246, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %247 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %247, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %248 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %248, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %249 = load i64, i64* %53, align 4
  store i64 %249, i64* %52, align 4
  %250 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %250, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %251 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %251, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %252 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %252, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %253 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %253, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %254 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !23
  store i11 %254, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %255 = load i128, i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %255, i128* %XMM0, align 1, !mcsema_real_eip !23
  %256 = load i128, i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %256, i128* %XMM1, align 1, !mcsema_real_eip !23
  %257 = load i128, i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %257, i128* %XMM2, align 1, !mcsema_real_eip !23
  %258 = load i128, i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %258, i128* %XMM3, align 1, !mcsema_real_eip !23
  %259 = load i128, i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %259, i128* %XMM4, align 1, !mcsema_real_eip !23
  %260 = load i128, i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %260, i128* %XMM5, align 1, !mcsema_real_eip !23
  %261 = load i128, i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %261, i128* %XMM6, align 1, !mcsema_real_eip !23
  %262 = load i128, i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %262, i128* %XMM7, align 1, !mcsema_real_eip !23
  %263 = load i128, i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %263, i128* %XMM8, align 1, !mcsema_real_eip !23
  %264 = load i128, i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %264, i128* %XMM9, align 1, !mcsema_real_eip !23
  %265 = load i128, i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %265, i128* %XMM10, align 1, !mcsema_real_eip !23
  %266 = load i128, i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %266, i128* %XMM11, align 1, !mcsema_real_eip !23
  %267 = load i128, i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %267, i128* %XMM12, align 1, !mcsema_real_eip !23
  %268 = load i128, i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %268, i128* %XMM13, align 1, !mcsema_real_eip !23
  %269 = load i128, i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %269, i128* %XMM14, align 1, !mcsema_real_eip !23
  %270 = load i128, i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %270, i128* %XMM15, align 1, !mcsema_real_eip !23
  %271 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %271, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %272 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %272, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 72}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 45}
!15 = !{i64 48}
!16 = !{i64 51}
!17 = !{i64 53}
!18 = !{i64 56}
!19 = !{i64 59}
!20 = !{i64 64}
!21 = !{i64 67}
!22 = !{i64 75}
!23 = !{i64 76}
