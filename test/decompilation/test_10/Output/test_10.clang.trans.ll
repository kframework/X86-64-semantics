; ModuleID = 'Output/test_10.clang.trans.bc'
source_filename = "Output/test_10.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
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
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -16
  %86 = add i64 %85, -16, !mcsema_real_eip !5
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  %88 = load i64, i64* %RSI_val, !mcsema_real_eip !5
  store i64 %88, i64* %_allin_new_bt_5, !mcsema_real_eip !5
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -8
  %90 = add i64 %89, -8, !mcsema_real_eip !6
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !6
  %92 = load i64, i64* %_allin_new_bt_8, !mcsema_real_eip !6
  store i64 %92, i64* %RSI_val, !mcsema_real_eip !6
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -24
  %93 = add i64 %89, -24, !mcsema_real_eip !7
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !7
  store i64 %92, i64* %_allin_new_bt_10, !mcsema_real_eip !7
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -16
  %96 = add i64 %95, -16, !mcsema_real_eip !8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !8
  %98 = load i64, i64* %_allin_new_bt_13, !mcsema_real_eip !8
  store i64 %98, i64* %RSI_val, !mcsema_real_eip !8
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -32
  %99 = add i64 %95, -32, !mcsema_real_eip !9
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !9
  store i64 %98, i64* %_allin_new_bt_15, !mcsema_real_eip !9
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -24
  %102 = add i64 %101, -24, !mcsema_real_eip !10
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !10
  %104 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !10
  store i64 %104, i64* %RSI_val, !mcsema_real_eip !10
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !11
  %106 = bitcast i64* %105 to i8*
  %107 = load i8, i8* %106, !mcsema_real_eip !11
  %108 = zext i8 %107 to i64, !mcsema_real_eip !11
  %109 = load i64, i64* %RAX_val, !mcsema_real_eip !11
  %110 = and i64 %109, -256, !mcsema_real_eip !11
  %111 = or i64 %110, %108
  store i64 %111, i64* %RAX_val, !mcsema_real_eip !11
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -33
  %113 = add i64 %112, -33, !mcsema_real_eip !12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !12
  %115 = bitcast i64* %_allin_new_bt_21 to i8*
  store i8 %107, i8* %115, !mcsema_real_eip !12
  br label %block_0x25, !mcsema_real_eip !13

block_0x25:                                       ; preds = %block_0x58, %entry
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -33
  %117 = add i64 %116, -33, !mcsema_real_eip !13
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !13
  %119 = bitcast i64* %_allin_new_bt_24 to i8*
  %120 = load i8, i8* %119, !mcsema_real_eip !13
  %121 = sext i8 %120 to i32, !mcsema_real_eip !13
  %122 = zext i32 %121 to i64, !mcsema_real_eip !13
  store i64 %122, i64* %RAX_val, !mcsema_real_eip !13
  store i1 false, i1* %AF_val, !mcsema_real_eip !14
  %123 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !14
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF_val, !mcsema_real_eip !14
  %126 = icmp eq i8 %120, 0
  store i1 %126, i1* %ZF_val, !mcsema_real_eip !14
  %127 = icmp slt i8 %120, 0
  store i1 %127, i1* %SF_val, !mcsema_real_eip !14
  store i1 false, i1* %CF_val, !mcsema_real_eip !14
  store i1 false, i1* %OF_val, !mcsema_real_eip !14
  br i1 %126, label %block_0x82, label %block_0x34, !mcsema_real_eip !15

block_0x34:                                       ; preds = %block_0x25
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -33
  %129 = add i64 %128, -33, !mcsema_real_eip !16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !16
  %131 = bitcast i64* %_allin_new_bt_27 to i8*
  %132 = load i8, i8* %131, !mcsema_real_eip !16
  %133 = sext i8 %132 to i32, !mcsema_real_eip !16
  %134 = zext i32 %133 to i64, !mcsema_real_eip !16
  store i64 %134, i64* %RAX_val, !mcsema_real_eip !16
  %135 = add nsw i32 %133, -47
  %136 = xor i32 %135, %133, !mcsema_real_eip !17
  %137 = and i32 %136, 16, !mcsema_real_eip !17
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !17
  store i1 %138, i1* %AF_val, !mcsema_real_eip !17
  %139 = trunc i32 %135 to i8, !mcsema_real_eip !17
  %140 = tail call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !17
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  store i1 %142, i1* %PF_val, !mcsema_real_eip !17
  %143 = icmp eq i32 %135, 0, !mcsema_real_eip !17
  store i1 %143, i1* %ZF_val, !mcsema_real_eip !17
  %144 = icmp slt i32 %135, 0
  store i1 %144, i1* %SF_val, !mcsema_real_eip !17
  %145 = icmp ult i8 %132, 47
  store i1 %145, i1* %CF_val, !mcsema_real_eip !17
  %146 = and i32 %136, %133, !mcsema_real_eip !17
  %147 = icmp slt i32 %146, 0
  store i1 %147, i1* %OF_val, !mcsema_real_eip !17
  %148 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %149 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  br i1 %148, label %block_0x43, label %block_0x4f, !mcsema_real_eip !18

block_0x82:                                       ; preds = %block_0x25
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %150 = load i64, i64* %RSP_val, !mcsema_real_eip !20
  %_allin_new_bt_30 = bitcast i8* %_load_rsp_ptr_29 to i64*
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !20
  %152 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !20
  %_new_int2ptr_ = inttoptr i64 %152 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %152, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_31 = getelementptr i8, i8* %_load_rsp_ptr_29, i64 16
  %153 = add i64 %150, 16, !mcsema_real_eip !21
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_
  store i64 %153, i64* %RSP_val, !mcsema_real_eip !21
  %154 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  store i64 %154, i64* %RAX, !mcsema_real_eip !21
  %155 = load i64, i64* %RBX_val, !mcsema_real_eip !21
  store i64 %155, i64* %RBX, !mcsema_real_eip !21
  %156 = load i64, i64* %RCX_val, !mcsema_real_eip !21
  store i64 %156, i64* %RCX, !mcsema_real_eip !21
  %157 = load i64, i64* %RDX_val, !mcsema_real_eip !21
  store i64 %157, i64* %RDX, !mcsema_real_eip !21
  %158 = load i64, i64* %RSI_val, !mcsema_real_eip !21
  store i64 %158, i64* %RSI, !mcsema_real_eip !21
  %159 = load i64, i64* %RDI_val, !mcsema_real_eip !21
  store i64 %159, i64* %RDI, !mcsema_real_eip !21
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %160 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_ptr2int_33 = ptrtoint i8* %_load_rsp_ptr_32 to i64
  store volatile i64 %_new_ptr2int_33, i64* %RSP
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %161 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_ptr2int_35 = ptrtoint i8* %_load_rbp_ptr_34 to i64
  store volatile i64 %_new_ptr2int_35, i64* %RBP
  %162 = load i64, i64* %R8_val, !mcsema_real_eip !21
  store i64 %162, i64* %R8, !mcsema_real_eip !21
  %163 = load i64, i64* %R9_val, !mcsema_real_eip !21
  store i64 %163, i64* %R9, !mcsema_real_eip !21
  %164 = load i64, i64* %R10_val, !mcsema_real_eip !21
  store i64 %164, i64* %R10, !mcsema_real_eip !21
  %165 = load i64, i64* %R11_val, !mcsema_real_eip !21
  store i64 %165, i64* %R11, !mcsema_real_eip !21
  %166 = load i64, i64* %R12_val, !mcsema_real_eip !21
  store i64 %166, i64* %R12, !mcsema_real_eip !21
  %167 = load i64, i64* %R13_val, !mcsema_real_eip !21
  store i64 %167, i64* %R13, !mcsema_real_eip !21
  %168 = load i64, i64* %R14_val, !mcsema_real_eip !21
  store i64 %168, i64* %R14, !mcsema_real_eip !21
  %169 = load i64, i64* %R15_val, !mcsema_real_eip !21
  store i64 %169, i64* %R15, !mcsema_real_eip !21
  %170 = load i64, i64* %RIP_val, !mcsema_real_eip !21
  store i64 %170, i64* %RIP, !mcsema_real_eip !21
  %171 = load i1, i1* %CF_val, !mcsema_real_eip !21
  store i1 %171, i1* %CF, align 1, !mcsema_real_eip !21
  %172 = load i1, i1* %PF_val, !mcsema_real_eip !21
  store i1 %172, i1* %PF, align 1, !mcsema_real_eip !21
  %173 = load i1, i1* %AF_val, !mcsema_real_eip !21
  store i1 %173, i1* %AF, align 1, !mcsema_real_eip !21
  %174 = load i1, i1* %ZF_val, !mcsema_real_eip !21
  store i1 %174, i1* %ZF, align 1, !mcsema_real_eip !21
  %175 = load i1, i1* %SF_val, !mcsema_real_eip !21
  store i1 %175, i1* %SF, align 1, !mcsema_real_eip !21
  %176 = load i1, i1* %OF_val, !mcsema_real_eip !21
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !21
  %177 = load i1, i1* %DF_val, !mcsema_real_eip !21
  store i1 %177, i1* %DF, align 1, !mcsema_real_eip !21
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !21
  %178 = load i1, i1* %FPU_B_val, !mcsema_real_eip !21
  store i1 %178, i1* %FPU_B, align 1, !mcsema_real_eip !21
  %179 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !21
  store i1 %179, i1* %FPU_C3, align 1, !mcsema_real_eip !21
  %180 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !21
  store i3 %180, i3* %FPU_TOP, align 1, !mcsema_real_eip !21
  %181 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !21
  store i1 %181, i1* %FPU_C2, align 1, !mcsema_real_eip !21
  %182 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !21
  store i1 %182, i1* %FPU_C1, align 1, !mcsema_real_eip !21
  %183 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !21
  store i1 %183, i1* %FPU_C0, align 1, !mcsema_real_eip !21
  %184 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !21
  store i1 %184, i1* %FPU_ES, align 1, !mcsema_real_eip !21
  %185 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !21
  store i1 %185, i1* %FPU_SF, align 1, !mcsema_real_eip !21
  %186 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !21
  store i1 %186, i1* %FPU_PE, align 1, !mcsema_real_eip !21
  %187 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !21
  store i1 %187, i1* %FPU_UE, align 1, !mcsema_real_eip !21
  %188 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !21
  store i1 %188, i1* %FPU_OE, align 1, !mcsema_real_eip !21
  %189 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !21
  store i1 %189, i1* %FPU_ZE, align 1, !mcsema_real_eip !21
  %190 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !21
  store i1 %190, i1* %FPU_DE, align 1, !mcsema_real_eip !21
  %191 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !21
  store i1 %191, i1* %FPU_IE, align 1, !mcsema_real_eip !21
  %192 = load i1, i1* %FPU_X_val, !mcsema_real_eip !21
  store i1 %192, i1* %FPU_X, align 1, !mcsema_real_eip !21
  %193 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !21
  store i2 %193, i2* %FPU_RC, align 1, !mcsema_real_eip !21
  %194 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !21
  store i2 %194, i2* %FPU_PC, align 1, !mcsema_real_eip !21
  %195 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !21
  store i1 %195, i1* %FPU_PM, align 1, !mcsema_real_eip !21
  %196 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !21
  store i1 %196, i1* %FPU_UM, align 1, !mcsema_real_eip !21
  %197 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !21
  store i1 %197, i1* %FPU_OM, align 1, !mcsema_real_eip !21
  %198 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !21
  store i1 %198, i1* %FPU_ZM, align 1, !mcsema_real_eip !21
  %199 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !21
  store i1 %199, i1* %FPU_DM, align 1, !mcsema_real_eip !21
  %200 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !21
  store i1 %200, i1* %FPU_IM, align 1, !mcsema_real_eip !21
  %201 = load i64, i64* %53, align 4
  store i64 %201, i64* %52, align 4
  %202 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !21
  store i16 %202, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !21
  %203 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !21
  store i64 %203, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !21
  %204 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !21
  store i16 %204, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !21
  %205 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !21
  store i64 %205, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !21
  %206 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !21
  store i11 %206, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !21
  %207 = load i128, i128* %XMM0_val, !mcsema_real_eip !21
  store i128 %207, i128* %XMM0, align 1, !mcsema_real_eip !21
  %208 = load i128, i128* %XMM1_val, !mcsema_real_eip !21
  store i128 %208, i128* %XMM1, align 1, !mcsema_real_eip !21
  %209 = load i128, i128* %XMM2_val, !mcsema_real_eip !21
  store i128 %209, i128* %XMM2, align 1, !mcsema_real_eip !21
  %210 = load i128, i128* %XMM3_val, !mcsema_real_eip !21
  store i128 %210, i128* %XMM3, align 1, !mcsema_real_eip !21
  %211 = load i128, i128* %XMM4_val, !mcsema_real_eip !21
  store i128 %211, i128* %XMM4, align 1, !mcsema_real_eip !21
  %212 = load i128, i128* %XMM5_val, !mcsema_real_eip !21
  store i128 %212, i128* %XMM5, align 1, !mcsema_real_eip !21
  %213 = load i128, i128* %XMM6_val, !mcsema_real_eip !21
  store i128 %213, i128* %XMM6, align 1, !mcsema_real_eip !21
  %214 = load i128, i128* %XMM7_val, !mcsema_real_eip !21
  store i128 %214, i128* %XMM7, align 1, !mcsema_real_eip !21
  %215 = load i128, i128* %XMM8_val, !mcsema_real_eip !21
  store i128 %215, i128* %XMM8, align 1, !mcsema_real_eip !21
  %216 = load i128, i128* %XMM9_val, !mcsema_real_eip !21
  store i128 %216, i128* %XMM9, align 1, !mcsema_real_eip !21
  %217 = load i128, i128* %XMM10_val, !mcsema_real_eip !21
  store i128 %217, i128* %XMM10, align 1, !mcsema_real_eip !21
  %218 = load i128, i128* %XMM11_val, !mcsema_real_eip !21
  store i128 %218, i128* %XMM11, align 1, !mcsema_real_eip !21
  %219 = load i128, i128* %XMM12_val, !mcsema_real_eip !21
  store i128 %219, i128* %XMM12, align 1, !mcsema_real_eip !21
  %220 = load i128, i128* %XMM13_val, !mcsema_real_eip !21
  store i128 %220, i128* %XMM13, align 1, !mcsema_real_eip !21
  %221 = load i128, i128* %XMM14_val, !mcsema_real_eip !21
  store i128 %221, i128* %XMM14, align 1, !mcsema_real_eip !21
  %222 = load i128, i128* %XMM15_val, !mcsema_real_eip !21
  store i128 %222, i128* %XMM15, align 1, !mcsema_real_eip !21
  %223 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !21
  store i64 %223, i64* %STACK_BASE, align 1, !mcsema_real_eip !21
  %224 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !21
  store i64 %224, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21

block_0x43:                                       ; preds = %block_0x34
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -32
  %225 = add i64 %149, -32, !mcsema_real_eip !22
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !22
  %227 = load i64, i64* %_allin_new_bt_37, !mcsema_real_eip !22
  store i64 %227, i64* %RAX_val, !mcsema_real_eip !22
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !23
  %229 = bitcast i64* %228 to i8*
  store i8 92, i8* %229, !mcsema_real_eip !23
  br label %block_0x58, !mcsema_real_eip !24

block_0x4f:                                       ; preds = %block_0x34
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -33
  %230 = add i64 %149, -33, !mcsema_real_eip !19
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !19
  %232 = bitcast i64* %_allin_new_bt_39 to i8*
  %233 = load i8, i8* %232, !mcsema_real_eip !19
  %234 = zext i8 %233 to i64, !mcsema_real_eip !19
  %235 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  %236 = and i64 %235, -256, !mcsema_real_eip !19
  %237 = or i64 %236, %234
  store i64 %237, i64* %RAX_val, !mcsema_real_eip !19
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %238 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -32
  %239 = add i64 %238, -32, !mcsema_real_eip !25
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !25
  %241 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !25
  store i64 %241, i64* %RCX_val, !mcsema_real_eip !25
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !26
  %243 = load i64, i64* %RAX_val, !mcsema_real_eip !26
  %244 = trunc i64 %243 to i8, !mcsema_real_eip !26
  %245 = bitcast i64* %242 to i8*
  store i8 %244, i8* %245, !mcsema_real_eip !26
  br label %block_0x58, !mcsema_real_eip !22

block_0x58:                                       ; preds = %block_0x4f, %block_0x43
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %246 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %247 = add i64 %246, -24, !mcsema_real_eip !27
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !27
  %249 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %249, i64 1)
  %250 = extractvalue { i64, i1 } %uadd, 0
  %251 = xor i64 %250, %249, !mcsema_real_eip !28
  %252 = and i64 %251, 16, !mcsema_real_eip !28
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !28
  store i1 %253, i1* %AF_val, !mcsema_real_eip !28
  %254 = icmp slt i64 %250, 0
  store i1 %254, i1* %SF_val, !mcsema_real_eip !28
  %255 = icmp eq i64 %250, 0, !mcsema_real_eip !28
  store i1 %255, i1* %ZF_val, !mcsema_real_eip !28
  %256 = xor i64 %249, -9223372036854775808, !mcsema_real_eip !28
  %257 = and i64 %251, %256, !mcsema_real_eip !28
  %258 = icmp slt i64 %257, 0
  store i1 %258, i1* %OF_val, !mcsema_real_eip !28
  %259 = trunc i64 %250 to i8, !mcsema_real_eip !28
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !28
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !28
  %263 = extractvalue { i64, i1 } %uadd, 1
  store i1 %263, i1* %CF_val, !mcsema_real_eip !28
  store i64 %250, i64* %RAX_val, !mcsema_real_eip !28
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %264 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -24
  %265 = add i64 %264, -24, !mcsema_real_eip !29
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !29
  store i64 %250, i64* %_allin_new_bt_48, !mcsema_real_eip !29
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %267 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -32
  %268 = add i64 %267, -32, !mcsema_real_eip !30
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !30
  %270 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !30
  %uadd71 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %270, i64 1)
  %271 = extractvalue { i64, i1 } %uadd71, 0
  %272 = xor i64 %271, %270, !mcsema_real_eip !31
  %273 = and i64 %272, 16, !mcsema_real_eip !31
  %274 = icmp ne i64 %273, 0, !mcsema_real_eip !31
  store i1 %274, i1* %AF_val, !mcsema_real_eip !31
  %275 = icmp slt i64 %271, 0
  store i1 %275, i1* %SF_val, !mcsema_real_eip !31
  %276 = icmp eq i64 %271, 0, !mcsema_real_eip !31
  store i1 %276, i1* %ZF_val, !mcsema_real_eip !31
  %277 = xor i64 %270, -9223372036854775808, !mcsema_real_eip !31
  %278 = and i64 %272, %277, !mcsema_real_eip !31
  %279 = icmp slt i64 %278, 0
  store i1 %279, i1* %OF_val, !mcsema_real_eip !31
  %280 = trunc i64 %271 to i8, !mcsema_real_eip !31
  %281 = tail call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !31
  %282 = and i8 %281, 1
  %283 = icmp eq i8 %282, 0
  store i1 %283, i1* %PF_val, !mcsema_real_eip !31
  %284 = extractvalue { i64, i1 } %uadd71, 1
  store i1 %284, i1* %CF_val, !mcsema_real_eip !31
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !31
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %285 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -32
  %286 = add i64 %285, -32, !mcsema_real_eip !32
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !32
  store i64 %271, i64* %_allin_new_bt_54, !mcsema_real_eip !32
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %288 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %289 = add i64 %288, -24, !mcsema_real_eip !33
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !33
  %291 = load i64, i64* %_allin_new_bt_57, !mcsema_real_eip !33
  store i64 %291, i64* %RAX_val, !mcsema_real_eip !33
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !34
  %293 = bitcast i64* %292 to i8*
  %294 = load i8, i8* %293, !mcsema_real_eip !34
  %295 = zext i8 %294 to i64, !mcsema_real_eip !34
  %296 = load i64, i64* %RCX_val, !mcsema_real_eip !34
  %297 = and i64 %296, -256, !mcsema_real_eip !34
  %298 = or i64 %297, %295
  store i64 %298, i64* %RCX_val, !mcsema_real_eip !34
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -33
  %300 = add i64 %299, -33, !mcsema_real_eip !35
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !35
  %302 = bitcast i64* %_allin_new_bt_60 to i8*
  store i8 %294, i8* %302, !mcsema_real_eip !35
  br label %block_0x25, !mcsema_real_eip !36
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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

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
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 28}
!11 = !{i64 32}
!12 = !{i64 34}
!13 = !{i64 37}
!14 = !{i64 41}
!15 = !{i64 46}
!16 = !{i64 52}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 79}
!20 = !{i64 130}
!21 = !{i64 131}
!22 = !{i64 67}
!23 = !{i64 71}
!24 = !{i64 74}
!25 = !{i64 82}
!26 = !{i64 86}
!27 = !{i64 88}
!28 = !{i64 92}
!29 = !{i64 98}
!30 = !{i64 102}
!31 = !{i64 106}
!32 = !{i64 112}
!33 = !{i64 116}
!34 = !{i64 120}
!35 = !{i64 122}
!36 = !{i64 125}
