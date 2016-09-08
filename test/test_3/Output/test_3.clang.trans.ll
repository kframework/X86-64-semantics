; ModuleID = 'Output/test_3.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 28
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 28
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP, !mcsema_real_eip !2
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -16, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64* %RDI_val, !mcsema_real_eip !4
  store i64 %83, i64* %82, !mcsema_real_eip !4
  %84 = load i64* %RBP_val, !mcsema_real_eip !5
  %85 = add i64 %84, -12, !mcsema_real_eip !5
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  %87 = load i64* %RSI_val, !mcsema_real_eip !5
  %88 = trunc i64 %87 to i32, !mcsema_real_eip !5
  %89 = bitcast i64* %86 to i32*
  store i32 %88, i32* %89, !mcsema_real_eip !5
  %90 = load i64* %RBP_val, !mcsema_real_eip !6
  %91 = add i64 %90, -16, !mcsema_real_eip !6
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !6
  %93 = bitcast i64* %92 to i32*
  store i32 0, i32* %93, !mcsema_real_eip !6
  %94 = load i64* %RBP_val, !mcsema_real_eip !7
  %95 = add i64 %94, -20, !mcsema_real_eip !7
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !7
  %98 = load i64* %RBP_val, !mcsema_real_eip !8
  %99 = add i64 %98, -20, !mcsema_real_eip !8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !8
  %101 = bitcast i64* %100 to i32*
  %102 = load i32* %101, !mcsema_real_eip !8
  %103 = zext i32 %102 to i64, !mcsema_real_eip !8
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !8
  %104 = load i64* %RBP_val, !mcsema_real_eip !9
  %105 = add i64 %104, -12, !mcsema_real_eip !9
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !9
  %107 = bitcast i64* %106 to i32*
  %108 = load i32* %107, !mcsema_real_eip !9
  %109 = sub i32 %102, %108, !mcsema_real_eip !9
  %110 = xor i32 %109, %102, !mcsema_real_eip !9
  %111 = xor i32 %110, %108, !mcsema_real_eip !9
  %112 = and i32 %111, 16, !mcsema_real_eip !9
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !9
  store i1 %113, i1* %AF_val, !mcsema_real_eip !9
  %114 = trunc i32 %109 to i8, !mcsema_real_eip !9
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !9
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF_val, !mcsema_real_eip !9
  %118 = icmp eq i32 %102, %108
  store i1 %118, i1* %ZF_val, !mcsema_real_eip !9
  %119 = icmp slt i32 %109, 0
  store i1 %119, i1* %SF_val, !mcsema_real_eip !9
  %120 = icmp ult i32 %102, %108, !mcsema_real_eip !9
  store i1 %120, i1* %CF_val, !mcsema_real_eip !9
  %121 = xor i32 %108, %102, !mcsema_real_eip !9
  %122 = and i32 %110, %121, !mcsema_real_eip !9
  %123 = icmp slt i32 %122, 0
  store i1 %123, i1* %OF_val, !mcsema_real_eip !9
  %124 = load i1* %SF_val, !mcsema_real_eip !10
  %tmp = xor i1 %124, %123
  br i1 %tmp, label %block_0x25.preheader, label %block_0x48, !mcsema_real_eip !10

block_0x25.preheader:                             ; preds = %entry
  br label %block_0x25

block_0x48.loopexit:                              ; preds = %block_0x25
  br label %block_0x48

block_0x48:                                       ; preds = %block_0x48.loopexit, %entry
  %125 = load i64* %RBP_val, !mcsema_real_eip !11
  %126 = add i64 %125, -16, !mcsema_real_eip !11
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !11
  %128 = bitcast i64* %127 to i32*
  %129 = load i32* %128, !mcsema_real_eip !11
  %130 = zext i32 %129 to i64, !mcsema_real_eip !11
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !11
  %131 = load i64* %RSP_val, !mcsema_real_eip !12
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !12
  %133 = load i64* %132, !mcsema_real_eip !12
  store i64 %133, i64* %RBP_val, !mcsema_real_eip !12
  %134 = add i64 %131, 16, !mcsema_real_eip !13
  store i64 %134, i64* %RSP_val, !mcsema_real_eip !13
  %135 = load i64* %RAX_val, !mcsema_real_eip !13
  store i64 %135, i64* %RAX, !mcsema_real_eip !13
  %136 = load i64* %RBX_val, !mcsema_real_eip !13
  store i64 %136, i64* %RBX, !mcsema_real_eip !13
  %137 = load i64* %RCX_val, !mcsema_real_eip !13
  store i64 %137, i64* %RCX, !mcsema_real_eip !13
  %138 = load i64* %RDX_val, !mcsema_real_eip !13
  store i64 %138, i64* %RDX, !mcsema_real_eip !13
  %139 = load i64* %RSI_val, !mcsema_real_eip !13
  store i64 %139, i64* %RSI, !mcsema_real_eip !13
  %140 = load i64* %RDI_val, !mcsema_real_eip !13
  store i64 %140, i64* %RDI, !mcsema_real_eip !13
  %141 = load i64* %RSP_val, !mcsema_real_eip !13
  store i64 %141, i64* %RSP, !mcsema_real_eip !13
  %142 = load i64* %RBP_val, !mcsema_real_eip !13
  store i64 %142, i64* %RBP, !mcsema_real_eip !13
  %143 = load i64* %R8_val, !mcsema_real_eip !13
  store i64 %143, i64* %R8, !mcsema_real_eip !13
  %144 = load i64* %R9_val, !mcsema_real_eip !13
  store i64 %144, i64* %R9, !mcsema_real_eip !13
  %145 = load i64* %R10_val, !mcsema_real_eip !13
  store i64 %145, i64* %R10, !mcsema_real_eip !13
  %146 = load i64* %R11_val, !mcsema_real_eip !13
  store i64 %146, i64* %R11, !mcsema_real_eip !13
  %147 = load i64* %R12_val, !mcsema_real_eip !13
  store i64 %147, i64* %R12, !mcsema_real_eip !13
  %148 = load i64* %R13_val, !mcsema_real_eip !13
  store i64 %148, i64* %R13, !mcsema_real_eip !13
  %149 = load i64* %R14_val, !mcsema_real_eip !13
  store i64 %149, i64* %R14, !mcsema_real_eip !13
  %150 = load i64* %R15_val, !mcsema_real_eip !13
  store i64 %150, i64* %R15, !mcsema_real_eip !13
  %151 = load i64* %RIP_val, !mcsema_real_eip !13
  store i64 %151, i64* %RIP, !mcsema_real_eip !13
  %152 = load i1* %CF_val, !mcsema_real_eip !13
  store i1 %152, i1* %CF, align 1, !mcsema_real_eip !13
  %153 = load i1* %PF_val, !mcsema_real_eip !13
  store i1 %153, i1* %PF, align 1, !mcsema_real_eip !13
  %154 = load i1* %AF_val, !mcsema_real_eip !13
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !13
  %155 = load i1* %ZF_val, !mcsema_real_eip !13
  store i1 %155, i1* %ZF, align 1, !mcsema_real_eip !13
  %156 = load i1* %SF_val, !mcsema_real_eip !13
  store i1 %156, i1* %SF, align 1, !mcsema_real_eip !13
  %157 = load i1* %OF_val, !mcsema_real_eip !13
  store i1 %157, i1* %OF, align 1, !mcsema_real_eip !13
  %158 = load i1* %DF_val, !mcsema_real_eip !13
  store i1 %158, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %159 = load i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %159, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %160 = load i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %160, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %161 = load i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %161, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %162 = load i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %162, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %163 = load i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %163, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %164 = load i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %164, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %165 = load i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %165, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %166 = load i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %166, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %167 = load i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %167, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %168 = load i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %168, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %169 = load i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %169, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %170 = load i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %170, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %171 = load i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %171, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %172 = load i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %172, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %173 = load i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %173, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %174 = load i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %174, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %175 = load i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %175, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %176 = load i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %176, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %177 = load i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %177, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %178 = load i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %178, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %179 = load i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %179, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %180 = load i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %180, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %181 = load i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %181, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %182 = load i64* %53, align 4
  store i64 %182, i64* %52, align 4
  %183 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %183, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %184 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %184, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %185 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %185, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %186 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %186, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %187 = load i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %187, i128* %XMM0, align 1, !mcsema_real_eip !13
  %188 = load i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %188, i128* %XMM1, align 1, !mcsema_real_eip !13
  %189 = load i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %189, i128* %XMM2, align 1, !mcsema_real_eip !13
  %190 = load i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %190, i128* %XMM3, align 1, !mcsema_real_eip !13
  %191 = load i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %191, i128* %XMM4, align 1, !mcsema_real_eip !13
  %192 = load i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %192, i128* %XMM5, align 1, !mcsema_real_eip !13
  %193 = load i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %193, i128* %XMM6, align 1, !mcsema_real_eip !13
  %194 = load i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %194, i128* %XMM7, align 1, !mcsema_real_eip !13
  %195 = load i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %195, i128* %XMM8, align 1, !mcsema_real_eip !13
  %196 = load i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %196, i128* %XMM9, align 1, !mcsema_real_eip !13
  %197 = load i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %197, i128* %XMM10, align 1, !mcsema_real_eip !13
  %198 = load i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %198, i128* %XMM11, align 1, !mcsema_real_eip !13
  %199 = load i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %199, i128* %XMM12, align 1, !mcsema_real_eip !13
  %200 = load i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %200, i128* %XMM13, align 1, !mcsema_real_eip !13
  %201 = load i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %201, i128* %XMM14, align 1, !mcsema_real_eip !13
  %202 = load i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %202, i128* %XMM15, align 1, !mcsema_real_eip !13
  %203 = load i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %203, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %204 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %204, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13

block_0x25:                                       ; preds = %block_0x25, %block_0x25.preheader
  %205 = load i64* %RBP_val, !mcsema_real_eip !14
  %206 = add i64 %205, -20, !mcsema_real_eip !14
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !14
  %208 = bitcast i64* %207 to i32*
  %209 = load i32* %208, !mcsema_real_eip !14
  %210 = sext i32 %209 to i64, !mcsema_real_eip !14
  store i64 %210, i64* %RAX_val, !mcsema_real_eip !14
  %211 = load i64* %RBP_val, !mcsema_real_eip !15
  %212 = add i64 %211, -8, !mcsema_real_eip !15
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !15
  %214 = load i64* %213, !mcsema_real_eip !15
  store i64 %214, i64* %RCX_val, !mcsema_real_eip !15
  %215 = shl nsw i64 %210, 2
  %216 = add i64 %214, %215, !mcsema_real_eip !16
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !16
  %218 = bitcast i64* %217 to i32*
  %219 = load i32* %218, !mcsema_real_eip !16
  %220 = zext i32 %219 to i64, !mcsema_real_eip !16
  store i64 %220, i64* %RDX_val, !mcsema_real_eip !16
  %221 = load i64* %RBP_val, !mcsema_real_eip !17
  %222 = add i64 %221, -16, !mcsema_real_eip !17
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !17
  %224 = bitcast i64* %223 to i32*
  %225 = load i32* %224, !mcsema_real_eip !17
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 %225)
  %226 = extractvalue { i32, i1 } %uadd, 0
  %227 = xor i32 %226, %225, !mcsema_real_eip !18
  %228 = xor i32 %227, %219, !mcsema_real_eip !18
  %229 = and i32 %228, 16, !mcsema_real_eip !18
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !18
  store i1 %230, i1* %AF_val, !mcsema_real_eip !18
  %231 = icmp slt i32 %226, 0
  store i1 %231, i1* %SF_val, !mcsema_real_eip !18
  %232 = icmp eq i32 %226, 0, !mcsema_real_eip !18
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !18
  %233 = xor i32 %225, -2147483648, !mcsema_real_eip !18
  %234 = xor i32 %233, %219, !mcsema_real_eip !18
  %235 = and i32 %227, %234, !mcsema_real_eip !18
  %236 = icmp slt i32 %235, 0
  store i1 %236, i1* %OF_val, !mcsema_real_eip !18
  %237 = trunc i32 %226 to i8, !mcsema_real_eip !18
  %238 = tail call i8 @llvm.ctpop.i8(i8 %237), !mcsema_real_eip !18
  %239 = and i8 %238, 1
  %240 = icmp eq i8 %239, 0
  store i1 %240, i1* %PF_val, !mcsema_real_eip !18
  %241 = extractvalue { i32, i1 } %uadd, 1
  store i1 %241, i1* %CF_val, !mcsema_real_eip !18
  %242 = zext i32 %226 to i64, !mcsema_real_eip !18
  store i64 %242, i64* %RSI_val, !mcsema_real_eip !18
  %243 = load i64* %RBP_val, !mcsema_real_eip !19
  %244 = add i64 %243, -16, !mcsema_real_eip !19
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !19
  %246 = bitcast i64* %245 to i32*
  store i32 %226, i32* %246, !mcsema_real_eip !19
  %247 = load i64* %RBP_val, !mcsema_real_eip !20
  %248 = add i64 %247, -20, !mcsema_real_eip !20
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !20
  %250 = bitcast i64* %249 to i32*
  %251 = load i32* %250, !mcsema_real_eip !20
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 1)
  %252 = extractvalue { i32, i1 } %uadd70, 0
  %253 = xor i32 %252, %251, !mcsema_real_eip !21
  %254 = and i32 %253, 16, !mcsema_real_eip !21
  %255 = icmp ne i32 %254, 0, !mcsema_real_eip !21
  store i1 %255, i1* %AF_val, !mcsema_real_eip !21
  %256 = icmp slt i32 %252, 0
  store i1 %256, i1* %SF_val, !mcsema_real_eip !21
  %257 = icmp eq i32 %252, 0, !mcsema_real_eip !21
  store i1 %257, i1* %ZF_val, !mcsema_real_eip !21
  %258 = xor i32 %251, -2147483648, !mcsema_real_eip !21
  %259 = and i32 %253, %258, !mcsema_real_eip !21
  %260 = icmp slt i32 %259, 0
  store i1 %260, i1* %OF_val, !mcsema_real_eip !21
  %261 = trunc i32 %252 to i8, !mcsema_real_eip !21
  %262 = tail call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !21
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  store i1 %264, i1* %PF_val, !mcsema_real_eip !21
  %265 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %265, i1* %CF_val, !mcsema_real_eip !21
  %266 = zext i32 %252 to i64, !mcsema_real_eip !21
  store i64 %266, i64* %RAX_val, !mcsema_real_eip !21
  %267 = load i64* %RBP_val, !mcsema_real_eip !22
  %268 = add i64 %267, -20, !mcsema_real_eip !22
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !22
  %270 = bitcast i64* %269 to i32*
  store i32 %252, i32* %270, !mcsema_real_eip !22
  %271 = load i64* %RBP_val, !mcsema_real_eip !8
  %272 = add i64 %271, -20, !mcsema_real_eip !8
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !8
  %274 = bitcast i64* %273 to i32*
  %275 = load i32* %274, !mcsema_real_eip !8
  %276 = zext i32 %275 to i64, !mcsema_real_eip !8
  store i64 %276, i64* %RAX_val, !mcsema_real_eip !8
  %277 = load i64* %RBP_val, !mcsema_real_eip !9
  %278 = add i64 %277, -12, !mcsema_real_eip !9
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !9
  %280 = bitcast i64* %279 to i32*
  %281 = load i32* %280, !mcsema_real_eip !9
  %282 = sub i32 %275, %281, !mcsema_real_eip !9
  %283 = xor i32 %282, %275, !mcsema_real_eip !9
  %284 = xor i32 %283, %281, !mcsema_real_eip !9
  %285 = and i32 %284, 16, !mcsema_real_eip !9
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !9
  store i1 %286, i1* %AF_val, !mcsema_real_eip !9
  %287 = trunc i32 %282 to i8, !mcsema_real_eip !9
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !9
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !9
  %291 = icmp eq i32 %275, %281
  store i1 %291, i1* %ZF_val, !mcsema_real_eip !9
  %292 = icmp slt i32 %282, 0
  store i1 %292, i1* %SF_val, !mcsema_real_eip !9
  %293 = icmp ult i32 %275, %281, !mcsema_real_eip !9
  store i1 %293, i1* %CF_val, !mcsema_real_eip !9
  %294 = xor i32 %281, %275, !mcsema_real_eip !9
  %295 = and i32 %283, %294, !mcsema_real_eip !9
  %296 = icmp slt i32 %295, 0
  store i1 %296, i1* %OF_val, !mcsema_real_eip !9
  %297 = load i1* %SF_val, !mcsema_real_eip !10
  %tmp71 = xor i1 %297, %296
  br i1 %tmp71, label %block_0x25, label %block_0x48.loopexit, !mcsema_real_eip !10
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [21 x i8] c"\09movq\09%rdi, -8(%rbp)\00"}
!5 = metadata !{i64 8, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!6 = metadata !{i64 11, [20 x i8] c"\09movl\09$0, -16(%rbp)\00"}
!7 = metadata !{i64 18, [20 x i8] c"\09movl\09$0, -20(%rbp)\00"}
!8 = metadata !{i64 25, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!9 = metadata !{i64 28, [22 x i8] c"\09cmpl\09-12(%rbp), %eax\00"}
!10 = metadata !{i64 31, [8 x i8] c"\09jge\0935\00"}
!11 = metadata !{i64 72, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!12 = metadata !{i64 75, [11 x i8] c"\09popq\09%rbp\00"}
!13 = metadata !{i64 76, [6 x i8] c"\09retq\00"}
!14 = metadata !{i64 37, [24 x i8] c"\09movslq\09-20(%rbp), %rax\00"}
!15 = metadata !{i64 41, [21 x i8] c"\09movq\09-8(%rbp), %rcx\00"} ; [ DW_TAG_file_type ] [/]
!16 = metadata !{i64 45, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!17 = metadata !{i64 48, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!18 = metadata !{i64 51, [17 x i8] c"\09addl\09%edx, %esi\00"}
!19 = metadata !{i64 53, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!20 = metadata !{i64 56, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!21 = metadata !{i64 59, [15 x i8] c"\09addl\09$1, %eax\00"}
!22 = metadata !{i64 64, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
