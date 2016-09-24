; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 32
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 32
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
  store i64 %_local_stack_end_, i64* %RSP_val
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
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -24
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
  %91 = icmp ult i64 %79, 16, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %95 = add i64 %94, -4, !mcsema_real_eip !7
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !7
  %98 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !8
  store i64 %99, i64* %RSP_val, !mcsema_real_eip !8
  %101 = load i64, i64* %RAX_val, !mcsema_real_eip !8
  store i64 %101, i64* %RAX, !mcsema_real_eip !8
  %102 = load i64, i64* %RBX_val, !mcsema_real_eip !8
  store i64 %102, i64* %RBX, !mcsema_real_eip !8
  %103 = load i64, i64* %RCX_val, !mcsema_real_eip !8
  store i64 %103, i64* %RCX, !mcsema_real_eip !8
  %104 = load i64, i64* %RDX_val, !mcsema_real_eip !8
  store i64 %104, i64* %RDX, !mcsema_real_eip !8
  %105 = load i64, i64* %RSI_val, !mcsema_real_eip !8
  store i64 %105, i64* %RSI, !mcsema_real_eip !8
  %106 = load i64, i64* %RDI_val, !mcsema_real_eip !8
  store i64 %106, i64* %RDI, !mcsema_real_eip !8
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  store i64 %107, i64* %RSP, !mcsema_real_eip !8
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  store i64 %108, i64* %RBP, !mcsema_real_eip !8
  %109 = load i64, i64* %R8_val, !mcsema_real_eip !8
  store i64 %109, i64* %R8, !mcsema_real_eip !8
  %110 = load i64, i64* %R9_val, !mcsema_real_eip !8
  store i64 %110, i64* %R9, !mcsema_real_eip !8
  %111 = load i64, i64* %R10_val, !mcsema_real_eip !8
  store i64 %111, i64* %R10, !mcsema_real_eip !8
  %112 = load i64, i64* %R11_val, !mcsema_real_eip !8
  store i64 %112, i64* %R11, !mcsema_real_eip !8
  %113 = load i64, i64* %R12_val, !mcsema_real_eip !8
  store i64 %113, i64* %R12, !mcsema_real_eip !8
  %114 = load i64, i64* %R13_val, !mcsema_real_eip !8
  store i64 %114, i64* %R13, !mcsema_real_eip !8
  %115 = load i64, i64* %R14_val, !mcsema_real_eip !8
  store i64 %115, i64* %R14, !mcsema_real_eip !8
  %116 = load i64, i64* %R15_val, !mcsema_real_eip !8
  store i64 %116, i64* %R15, !mcsema_real_eip !8
  %117 = load i64, i64* %RIP_val, !mcsema_real_eip !8
  store i64 %117, i64* %RIP, !mcsema_real_eip !8
  %118 = load i1, i1* %CF_val, !mcsema_real_eip !8
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !8
  %119 = load i1, i1* %PF_val, !mcsema_real_eip !8
  store i1 %119, i1* %PF, align 1, !mcsema_real_eip !8
  %120 = load i1, i1* %AF_val, !mcsema_real_eip !8
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !8
  %121 = load i1, i1* %ZF_val, !mcsema_real_eip !8
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !8
  %122 = load i1, i1* %SF_val, !mcsema_real_eip !8
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !8
  %123 = load i1, i1* %OF_val, !mcsema_real_eip !8
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !8
  %124 = load i1, i1* %DF_val, !mcsema_real_eip !8
  store i1 %124, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  %125 = load i1, i1* %FPU_B_val, !mcsema_real_eip !8
  store i1 %125, i1* %FPU_B, align 1, !mcsema_real_eip !8
  %126 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !8
  store i1 %126, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %127 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !8
  store i3 %127, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %128 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !8
  store i1 %128, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %129 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !8
  store i1 %129, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %130 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !8
  store i1 %130, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %131 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !8
  store i1 %131, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %132 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !8
  store i1 %132, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %133 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !8
  store i1 %133, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %134 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !8
  store i1 %134, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %135 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !8
  store i1 %135, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %136 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !8
  store i1 %136, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %137 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !8
  store i1 %137, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %138 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !8
  store i1 %138, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %139 = load i1, i1* %FPU_X_val, !mcsema_real_eip !8
  store i1 %139, i1* %FPU_X, align 1, !mcsema_real_eip !8
  %140 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !8
  store i2 %140, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %141 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !8
  store i2 %141, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %142 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !8
  store i1 %142, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %143 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !8
  store i1 %143, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %144 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !8
  store i1 %144, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %145 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !8
  store i1 %145, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %146 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !8
  store i1 %146, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %147 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !8
  store i1 %147, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %148 = load i64, i64* %53, align 4
  store i64 %148, i64* %52, align 4
  %149 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  store i16 %149, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %150 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  store i64 %150, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  %151 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  store i16 %151, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %152 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  store i64 %152, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  %153 = load i128, i128* %XMM0_val, !mcsema_real_eip !8
  store i128 %153, i128* %XMM0, align 1, !mcsema_real_eip !8
  %154 = load i128, i128* %XMM1_val, !mcsema_real_eip !8
  store i128 %154, i128* %XMM1, align 1, !mcsema_real_eip !8
  %155 = load i128, i128* %XMM2_val, !mcsema_real_eip !8
  store i128 %155, i128* %XMM2, align 1, !mcsema_real_eip !8
  %156 = load i128, i128* %XMM3_val, !mcsema_real_eip !8
  store i128 %156, i128* %XMM3, align 1, !mcsema_real_eip !8
  %157 = load i128, i128* %XMM4_val, !mcsema_real_eip !8
  store i128 %157, i128* %XMM4, align 1, !mcsema_real_eip !8
  %158 = load i128, i128* %XMM5_val, !mcsema_real_eip !8
  store i128 %158, i128* %XMM5, align 1, !mcsema_real_eip !8
  %159 = load i128, i128* %XMM6_val, !mcsema_real_eip !8
  store i128 %159, i128* %XMM6, align 1, !mcsema_real_eip !8
  %160 = load i128, i128* %XMM7_val, !mcsema_real_eip !8
  store i128 %160, i128* %XMM7, align 1, !mcsema_real_eip !8
  %161 = load i128, i128* %XMM8_val, !mcsema_real_eip !8
  store i128 %161, i128* %XMM8, align 1, !mcsema_real_eip !8
  %162 = load i128, i128* %XMM9_val, !mcsema_real_eip !8
  store i128 %162, i128* %XMM9, align 1, !mcsema_real_eip !8
  %163 = load i128, i128* %XMM10_val, !mcsema_real_eip !8
  store i128 %163, i128* %XMM10, align 1, !mcsema_real_eip !8
  %164 = load i128, i128* %XMM11_val, !mcsema_real_eip !8
  store i128 %164, i128* %XMM11, align 1, !mcsema_real_eip !8
  %165 = load i128, i128* %XMM12_val, !mcsema_real_eip !8
  store i128 %165, i128* %XMM12, align 1, !mcsema_real_eip !8
  %166 = load i128, i128* %XMM13_val, !mcsema_real_eip !8
  store i128 %166, i128* %XMM13, align 1, !mcsema_real_eip !8
  %167 = load i128, i128* %XMM14_val, !mcsema_real_eip !8
  store i128 %167, i128* %XMM14, align 1, !mcsema_real_eip !8
  %168 = load i128, i128* %XMM15_val, !mcsema_real_eip !8
  store i128 %168, i128* %XMM15, align 1, !mcsema_real_eip !8
  %169 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !8
  store i64 %169, i64* %STACK_BASE, align 1, !mcsema_real_eip !8
  %170 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  store i64 %170, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !8
  call void @sub_0.1(%struct.regs* %0, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %171 = load i64, i64* %RAX, !mcsema_real_eip !8
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !8
  %172 = load i64, i64* %RBX, !mcsema_real_eip !8
  store i64 %172, i64* %RBX_val, !mcsema_real_eip !8
  %173 = load i64, i64* %RCX, !mcsema_real_eip !8
  store i64 %173, i64* %RCX_val, !mcsema_real_eip !8
  %174 = load i64, i64* %RDX, !mcsema_real_eip !8
  store i64 %174, i64* %RDX_val, !mcsema_real_eip !8
  %175 = load i64, i64* %RSI, !mcsema_real_eip !8
  store i64 %175, i64* %RSI_val, !mcsema_real_eip !8
  %176 = load i64, i64* %RDI, !mcsema_real_eip !8
  store i64 %176, i64* %RDI_val, !mcsema_real_eip !8
  %177 = load i64, i64* %RSP, !mcsema_real_eip !8
  store i64 %177, i64* %RSP_val, !mcsema_real_eip !8
  %178 = load i64, i64* %RBP, !mcsema_real_eip !8
  store i64 %178, i64* %RBP_val, !mcsema_real_eip !8
  %179 = load i64, i64* %R8, !mcsema_real_eip !8
  store i64 %179, i64* %R8_val, !mcsema_real_eip !8
  %180 = load i64, i64* %R9, !mcsema_real_eip !8
  store i64 %180, i64* %R9_val, !mcsema_real_eip !8
  %181 = load i64, i64* %R10, !mcsema_real_eip !8
  store i64 %181, i64* %R10_val, !mcsema_real_eip !8
  %182 = load i64, i64* %R11, !mcsema_real_eip !8
  store i64 %182, i64* %R11_val, !mcsema_real_eip !8
  %183 = load i64, i64* %R12, !mcsema_real_eip !8
  store i64 %183, i64* %R12_val, !mcsema_real_eip !8
  %184 = load i64, i64* %R13, !mcsema_real_eip !8
  store i64 %184, i64* %R13_val, !mcsema_real_eip !8
  %185 = load i64, i64* %R14, !mcsema_real_eip !8
  store i64 %185, i64* %R14_val, !mcsema_real_eip !8
  %186 = load i64, i64* %R15, !mcsema_real_eip !8
  store i64 %186, i64* %R15_val, !mcsema_real_eip !8
  %187 = load i64, i64* %RIP, !mcsema_real_eip !8
  store i64 %187, i64* %RIP_val, !mcsema_real_eip !8
  %188 = load i1, i1* %CF, align 1, !mcsema_real_eip !8
  store i1 %188, i1* %CF_val, !mcsema_real_eip !8
  %189 = load i1, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %189, i1* %PF_val, !mcsema_real_eip !8
  %190 = load i1, i1* %AF, align 1, !mcsema_real_eip !8
  store i1 %190, i1* %AF_val, !mcsema_real_eip !8
  %191 = load i1, i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 %191, i1* %ZF_val, !mcsema_real_eip !8
  %192 = load i1, i1* %SF, align 1, !mcsema_real_eip !8
  store i1 %192, i1* %SF_val, !mcsema_real_eip !8
  %193 = load i1, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %193, i1* %OF_val, !mcsema_real_eip !8
  %194 = load i1, i1* %DF, align 1, !mcsema_real_eip !8
  store i1 %194, i1* %DF_val, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %195 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %195, i1* %FPU_B_val, !mcsema_real_eip !8
  %196 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i1 %196, i1* %FPU_C3_val, !mcsema_real_eip !8
  %197 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i3 %197, i3* %FPU_TOP_val, !mcsema_real_eip !8
  %198 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %198, i1* %FPU_C2_val, !mcsema_real_eip !8
  %199 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %199, i1* %FPU_C1_val, !mcsema_real_eip !8
  %200 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %200, i1* %FPU_C0_val, !mcsema_real_eip !8
  %201 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %201, i1* %FPU_ES_val, !mcsema_real_eip !8
  %202 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %202, i1* %FPU_SF_val, !mcsema_real_eip !8
  %203 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %203, i1* %FPU_PE_val, !mcsema_real_eip !8
  %204 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %204, i1* %FPU_UE_val, !mcsema_real_eip !8
  %205 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %205, i1* %FPU_OE_val, !mcsema_real_eip !8
  %206 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %206, i1* %FPU_ZE_val, !mcsema_real_eip !8
  %207 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %207, i1* %FPU_DE_val, !mcsema_real_eip !8
  %208 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %208, i1* %FPU_IE_val, !mcsema_real_eip !8
  %209 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i1 %209, i1* %FPU_X_val, !mcsema_real_eip !8
  %210 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %210, i2* %FPU_RC_val, !mcsema_real_eip !8
  %211 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i2 %211, i2* %FPU_PC_val, !mcsema_real_eip !8
  %212 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %212, i1* %FPU_PM_val, !mcsema_real_eip !8
  %213 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %213, i1* %FPU_UM_val, !mcsema_real_eip !8
  %214 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %214, i1* %FPU_OM_val, !mcsema_real_eip !8
  %215 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %215, i1* %FPU_ZM_val, !mcsema_real_eip !8
  %216 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %216, i1* %FPU_DM_val, !mcsema_real_eip !8
  %217 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  store i1 %217, i1* %FPU_IM_val, !mcsema_real_eip !8
  %218 = load i64, i64* %52, align 4
  store i64 %218, i64* %53, align 4
  %219 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i16 %219, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !8
  %220 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !8
  store i64 %220, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !8
  %221 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i16 %221, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !8
  %222 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !8
  store i64 %222, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !8
  %223 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %223, i128* %XMM0_val, !mcsema_real_eip !8
  %224 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %224, i128* %XMM1_val, !mcsema_real_eip !8
  %225 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %225, i128* %XMM2_val, !mcsema_real_eip !8
  %226 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %226, i128* %XMM3_val, !mcsema_real_eip !8
  %227 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %227, i128* %XMM4_val, !mcsema_real_eip !8
  %228 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %228, i128* %XMM5_val, !mcsema_real_eip !8
  %229 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %229, i128* %XMM6_val, !mcsema_real_eip !8
  %230 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %230, i128* %XMM7_val, !mcsema_real_eip !8
  %231 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %231, i128* %XMM8_val, !mcsema_real_eip !8
  %232 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %232, i128* %XMM9_val, !mcsema_real_eip !8
  %233 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %233, i128* %XMM10_val, !mcsema_real_eip !8
  %234 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %234, i128* %XMM11_val, !mcsema_real_eip !8
  %235 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %235, i128* %XMM12_val, !mcsema_real_eip !8
  %236 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %236, i128* %XMM13_val, !mcsema_real_eip !8
  %237 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %237, i128* %XMM14_val, !mcsema_real_eip !8
  %238 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !8
  store i128 %238, i128* %XMM15_val, !mcsema_real_eip !8
  %239 = load i64, i64* %STACK_BASE, !mcsema_real_eip !8
  store i64 %239, i64* %STACK_BASE_val, !mcsema_real_eip !8
  %240 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !8
  store i64 %240, i64* %STACK_LIMIT_val, !mcsema_real_eip !8
  %241 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %242 = add i64 %241, -8, !mcsema_real_eip !9
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !9
  %244 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  %245 = trunc i64 %244 to i32, !mcsema_real_eip !9
  %246 = bitcast i64* %243 to i32*
  store i32 %245, i32* %246, !mcsema_real_eip !9
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %248 = add i64 %247, -8, !mcsema_real_eip !10
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10
  %250 = bitcast i64* %249 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !10
  %252 = zext i32 %251 to i64, !mcsema_real_eip !10
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !10
  %253 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 16)
  %254 = extractvalue { i64, i1 } %uadd, 0
  %255 = xor i64 %254, %253, !mcsema_real_eip !11
  %256 = and i64 %255, 16
  %257 = icmp eq i64 %256, 0
  store i1 %257, i1* %AF_val, !mcsema_real_eip !11
  %258 = icmp slt i64 %254, 0
  store i1 %258, i1* %SF_val, !mcsema_real_eip !11
  %259 = icmp eq i64 %254, 0, !mcsema_real_eip !11
  store i1 %259, i1* %ZF_val, !mcsema_real_eip !11
  %260 = xor i64 %253, -9223372036854775808, !mcsema_real_eip !11
  %261 = and i64 %255, %260, !mcsema_real_eip !11
  %262 = icmp slt i64 %261, 0
  store i1 %262, i1* %OF_val, !mcsema_real_eip !11
  %263 = trunc i64 %254 to i8, !mcsema_real_eip !11
  %264 = tail call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !11
  %265 = and i8 %264, 1
  %266 = icmp eq i8 %265, 0
  store i1 %266, i1* %PF_val, !mcsema_real_eip !11
  %267 = extractvalue { i64, i1 } %uadd, 1
  store i1 %267, i1* %CF_val, !mcsema_real_eip !11
  store i64 %254, i64* %RSP_val, !mcsema_real_eip !11
  %268 = inttoptr i64 %254 to i64*, !mcsema_real_eip !12
  %269 = load i64, i64* %268, !mcsema_real_eip !12
  store i64 %269, i64* %RBP_val, !mcsema_real_eip !12
  %270 = add i64 %254, 16, !mcsema_real_eip !13
  store i64 %270, i64* %RSP_val, !mcsema_real_eip !13
  %271 = load i64, i64* %RAX_val, !mcsema_real_eip !13
  store i64 %271, i64* %RAX, !mcsema_real_eip !13
  %272 = load i64, i64* %RBX_val, !mcsema_real_eip !13
  store i64 %272, i64* %RBX, !mcsema_real_eip !13
  %273 = load i64, i64* %RCX_val, !mcsema_real_eip !13
  store i64 %273, i64* %RCX, !mcsema_real_eip !13
  %274 = load i64, i64* %RDX_val, !mcsema_real_eip !13
  store i64 %274, i64* %RDX, !mcsema_real_eip !13
  %275 = load i64, i64* %RSI_val, !mcsema_real_eip !13
  store i64 %275, i64* %RSI, !mcsema_real_eip !13
  %276 = load i64, i64* %RDI_val, !mcsema_real_eip !13
  store i64 %276, i64* %RDI, !mcsema_real_eip !13
  %277 = load i64, i64* %RSP_val, !mcsema_real_eip !13
  store i64 %277, i64* %RSP, !mcsema_real_eip !13
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  store i64 %278, i64* %RBP, !mcsema_real_eip !13
  %279 = load i64, i64* %R8_val, !mcsema_real_eip !13
  store i64 %279, i64* %R8, !mcsema_real_eip !13
  %280 = load i64, i64* %R9_val, !mcsema_real_eip !13
  store i64 %280, i64* %R9, !mcsema_real_eip !13
  %281 = load i64, i64* %R10_val, !mcsema_real_eip !13
  store i64 %281, i64* %R10, !mcsema_real_eip !13
  %282 = load i64, i64* %R11_val, !mcsema_real_eip !13
  store i64 %282, i64* %R11, !mcsema_real_eip !13
  %283 = load i64, i64* %R12_val, !mcsema_real_eip !13
  store i64 %283, i64* %R12, !mcsema_real_eip !13
  %284 = load i64, i64* %R13_val, !mcsema_real_eip !13
  store i64 %284, i64* %R13, !mcsema_real_eip !13
  %285 = load i64, i64* %R14_val, !mcsema_real_eip !13
  store i64 %285, i64* %R14, !mcsema_real_eip !13
  %286 = load i64, i64* %R15_val, !mcsema_real_eip !13
  store i64 %286, i64* %R15, !mcsema_real_eip !13
  %287 = load i64, i64* %RIP_val, !mcsema_real_eip !13
  store i64 %287, i64* %RIP, !mcsema_real_eip !13
  %288 = load i1, i1* %CF_val, !mcsema_real_eip !13
  store i1 %288, i1* %CF, align 1, !mcsema_real_eip !13
  %289 = load i1, i1* %PF_val, !mcsema_real_eip !13
  store i1 %289, i1* %PF, align 1, !mcsema_real_eip !13
  %290 = load i1, i1* %AF_val, !mcsema_real_eip !13
  store i1 %290, i1* %AF, align 1, !mcsema_real_eip !13
  %291 = load i1, i1* %ZF_val, !mcsema_real_eip !13
  store i1 %291, i1* %ZF, align 1, !mcsema_real_eip !13
  %292 = load i1, i1* %SF_val, !mcsema_real_eip !13
  store i1 %292, i1* %SF, align 1, !mcsema_real_eip !13
  %293 = load i1, i1* %OF_val, !mcsema_real_eip !13
  store i1 %293, i1* %OF, align 1, !mcsema_real_eip !13
  %294 = load i1, i1* %DF_val, !mcsema_real_eip !13
  store i1 %294, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %295 = load i1, i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %295, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %296 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %296, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %297 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %297, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %298 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %298, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %299 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %299, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %300 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %300, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %301 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %301, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %302 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %302, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %303 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %303, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %304 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %304, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %305 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %305, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %306 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %306, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %307 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %307, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %308 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %308, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %309 = load i1, i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %309, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %310 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %310, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %311 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %311, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %312 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %312, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %313 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %313, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %314 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %314, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %315 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %315, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %316 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %316, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %317 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %317, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %318 = load i64, i64* %53, align 4
  store i64 %318, i64* %52, align 4
  %319 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %319, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %320 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %320, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %321 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %321, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %322 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %322, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %323 = load i128, i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %323, i128* %XMM0, align 1, !mcsema_real_eip !13
  %324 = load i128, i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %324, i128* %XMM1, align 1, !mcsema_real_eip !13
  %325 = load i128, i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %325, i128* %XMM2, align 1, !mcsema_real_eip !13
  %326 = load i128, i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %326, i128* %XMM3, align 1, !mcsema_real_eip !13
  %327 = load i128, i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %327, i128* %XMM4, align 1, !mcsema_real_eip !13
  %328 = load i128, i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %328, i128* %XMM5, align 1, !mcsema_real_eip !13
  %329 = load i128, i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %329, i128* %XMM6, align 1, !mcsema_real_eip !13
  %330 = load i128, i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %330, i128* %XMM7, align 1, !mcsema_real_eip !13
  %331 = load i128, i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %331, i128* %XMM8, align 1, !mcsema_real_eip !13
  %332 = load i128, i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %332, i128* %XMM9, align 1, !mcsema_real_eip !13
  %333 = load i128, i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %333, i128* %XMM10, align 1, !mcsema_real_eip !13
  %334 = load i128, i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %334, i128* %XMM11, align 1, !mcsema_real_eip !13
  %335 = load i128, i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %335, i128* %XMM12, align 1, !mcsema_real_eip !13
  %336 = load i128, i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %336, i128* %XMM13, align 1, !mcsema_real_eip !13
  %337 = load i128, i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %337, i128* %XMM14, align 1, !mcsema_real_eip !13
  %338 = load i128, i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %338, i128* %XMM15, align 1, !mcsema_real_eip !13
  %339 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %339, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %340 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %340, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 28
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 28
  %R15_val = alloca i64, !mcsema_real_eip !14
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !14
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !14
  %XMM15_val = alloca i128, !mcsema_real_eip !14
  %XMM14_val = alloca i128, !mcsema_real_eip !14
  %XMM13_val = alloca i128, !mcsema_real_eip !14
  %XMM12_val = alloca i128, !mcsema_real_eip !14
  %XMM11_val = alloca i128, !mcsema_real_eip !14
  %XMM10_val = alloca i128, !mcsema_real_eip !14
  %XMM9_val = alloca i128, !mcsema_real_eip !14
  %XMM8_val = alloca i128, !mcsema_real_eip !14
  %XMM7_val = alloca i128, !mcsema_real_eip !14
  %XMM6_val = alloca i128, !mcsema_real_eip !14
  %XMM5_val = alloca i128, !mcsema_real_eip !14
  %XMM4_val = alloca i128, !mcsema_real_eip !14
  %XMM3_val = alloca i128, !mcsema_real_eip !14
  %XMM2_val = alloca i128, !mcsema_real_eip !14
  %XMM1_val = alloca i128, !mcsema_real_eip !14
  %XMM0_val = alloca i128, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !14
  %FPU_IM_val = alloca i1, !mcsema_real_eip !14
  %FPU_DM_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !14
  %FPU_OM_val = alloca i1, !mcsema_real_eip !14
  %FPU_UM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PC_val = alloca i2, !mcsema_real_eip !14
  %FPU_RC_val = alloca i2, !mcsema_real_eip !14
  %FPU_X_val = alloca i1, !mcsema_real_eip !14
  %FPU_IE_val = alloca i1, !mcsema_real_eip !14
  %FPU_DE_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !14
  %FPU_OE_val = alloca i1, !mcsema_real_eip !14
  %FPU_UE_val = alloca i1, !mcsema_real_eip !14
  %FPU_PE_val = alloca i1, !mcsema_real_eip !14
  %FPU_SF_val = alloca i1, !mcsema_real_eip !14
  %FPU_ES_val = alloca i1, !mcsema_real_eip !14
  %FPU_C0_val = alloca i1, !mcsema_real_eip !14
  %FPU_C1_val = alloca i1, !mcsema_real_eip !14
  %FPU_C2_val = alloca i1, !mcsema_real_eip !14
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !14
  %FPU_C3_val = alloca i1, !mcsema_real_eip !14
  %FPU_B_val = alloca i1, !mcsema_real_eip !14
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !14
  %DF_val = alloca i1, !mcsema_real_eip !14
  %OF_val = alloca i1, !mcsema_real_eip !14
  %SF_val = alloca i1, !mcsema_real_eip !14
  %CF_val = alloca i1, !mcsema_real_eip !14
  %AF_val = alloca i1, !mcsema_real_eip !14
  %PF_val = alloca i1, !mcsema_real_eip !14
  %ZF_val = alloca i1, !mcsema_real_eip !14
  %RIP_val = alloca i64, !mcsema_real_eip !14
  %R14_val = alloca i64, !mcsema_real_eip !14
  %R13_val = alloca i64, !mcsema_real_eip !14
  %R12_val = alloca i64, !mcsema_real_eip !14
  %R11_val = alloca i64, !mcsema_real_eip !14
  %R10_val = alloca i64, !mcsema_real_eip !14
  %R9_val = alloca i64, !mcsema_real_eip !14
  %R8_val = alloca i64, !mcsema_real_eip !14
  %RSP_val = alloca i64, !mcsema_real_eip !14
  %RBP_val = alloca i64, !mcsema_real_eip !14
  %RDI_val = alloca i64, !mcsema_real_eip !14
  %RSI_val = alloca i64, !mcsema_real_eip !14
  %RDX_val = alloca i64, !mcsema_real_eip !14
  %RCX_val = alloca i64, !mcsema_real_eip !14
  %RBX_val = alloca i64, !mcsema_real_eip !14
  %RAX_val = alloca i64, !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64, i64* %RAX, !mcsema_real_eip !14
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64, i64* %RBX, !mcsema_real_eip !14
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64, i64* %RCX, !mcsema_real_eip !14
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64, i64* %RDX, !mcsema_real_eip !14
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64, i64* %RSI, !mcsema_real_eip !14
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64, i64* %RDI, !mcsema_real_eip !14
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %7 = load i64, i64* %RSP, !mcsema_real_eip !14
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %8 = load i64, i64* %RBP, !mcsema_real_eip !14
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %9 = load i64, i64* %R8, !mcsema_real_eip !14
  store i64 %9, i64* %R8_val, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %10 = load i64, i64* %R9, !mcsema_real_eip !14
  store i64 %10, i64* %R9_val, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %11 = load i64, i64* %R10, !mcsema_real_eip !14
  store i64 %11, i64* %R10_val, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %12 = load i64, i64* %R11, !mcsema_real_eip !14
  store i64 %12, i64* %R11_val, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %13 = load i64, i64* %R12, !mcsema_real_eip !14
  store i64 %13, i64* %R12_val, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %14 = load i64, i64* %R13, !mcsema_real_eip !14
  store i64 %14, i64* %R13_val, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %15 = load i64, i64* %R14, !mcsema_real_eip !14
  store i64 %15, i64* %R14_val, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %16 = load i64, i64* %R15, !mcsema_real_eip !14
  store i64 %16, i64* %R15_val, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %17 = load i64, i64* %RIP, !mcsema_real_eip !14
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %CF_val, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %PF_val, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %AF_val, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %SF_val, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %OF_val, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %DF_val, !mcsema_real_eip !14
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !14
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !14
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !14
  store i64 %77, i64* %80, !mcsema_real_eip !14
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !14
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !15
  %81 = add i64 %78, -12, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %83 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !16
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !16
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %87 = add i64 %86, -8, !mcsema_real_eip !17
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !17
  %89 = load i64, i64* %RSI_val, !mcsema_real_eip !17
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !17
  %91 = bitcast i64* %88 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !17
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %93 = add i64 %92, -4, !mcsema_real_eip !18
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !18
  %95 = bitcast i64* %94 to i32*
  %96 = load i32, i32* %95, !mcsema_real_eip !18
  %97 = zext i32 %96 to i64, !mcsema_real_eip !18
  store i64 %97, i64* %RSI_val, !mcsema_real_eip !18
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %99 = add i64 %98, -8, !mcsema_real_eip !19
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  %101 = bitcast i64* %100 to i32*
  %102 = load i32, i32* %101, !mcsema_real_eip !19
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %96, i32 %102)
  %103 = extractvalue { i32, i1 } %uadd, 0
  %104 = xor i32 %103, %102, !mcsema_real_eip !19
  %105 = xor i32 %104, %96, !mcsema_real_eip !19
  %106 = and i32 %105, 16, !mcsema_real_eip !19
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !19
  store i1 %107, i1* %AF_val, !mcsema_real_eip !19
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF_val, !mcsema_real_eip !19
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !19
  store i1 %109, i1* %ZF_val, !mcsema_real_eip !19
  %110 = xor i32 %96, -2147483648, !mcsema_real_eip !19
  %111 = xor i32 %110, %102, !mcsema_real_eip !19
  %112 = and i32 %104, %111, !mcsema_real_eip !19
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF_val, !mcsema_real_eip !19
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !19
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !19
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF_val, !mcsema_real_eip !19
  %118 = extractvalue { i32, i1 } %uadd, 1
  store i1 %118, i1* %CF_val, !mcsema_real_eip !19
  %119 = zext i32 %103 to i64, !mcsema_real_eip !19
  store i64 %119, i64* %RSI_val, !mcsema_real_eip !19
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %121 = add i64 %120, -12, !mcsema_real_eip !20
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !20
  %123 = bitcast i64* %122 to i32*
  store i32 %103, i32* %123, !mcsema_real_eip !20
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %125 = add i64 %124, -4, !mcsema_real_eip !21
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %127 = bitcast i64* %126 to i32*
  %128 = load i32, i32* %127, !mcsema_real_eip !21
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %129 = trunc i32 %128 to i8, !mcsema_real_eip !21
  %130 = tail call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !21
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  store i1 %132, i1* %PF_val, !mcsema_real_eip !21
  %133 = icmp eq i32 %128, 0, !mcsema_real_eip !21
  store i1 %133, i1* %ZF_val, !mcsema_real_eip !21
  %134 = icmp slt i32 %128, 0
  store i1 %134, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %134, label %block_0x6a, label %block_0x20.preheader, !mcsema_real_eip !22

block_0x20.preheader:                             ; preds = %entry
  br label %block_0x20

block_0x6a.loopexit:                              ; preds = %block_0x13
  br label %block_0x6a

block_0x6a:                                       ; preds = %block_0x6a.loopexit, %entry
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %136 = add i64 %135, -16, !mcsema_real_eip !23
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !23
  %138 = bitcast i64* %137 to i32*
  %139 = load i32, i32* %138, !mcsema_real_eip !23
  %140 = zext i32 %139 to i64, !mcsema_real_eip !23
  store i64 %140, i64* %RAX_val, !mcsema_real_eip !23
  %141 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !24
  %143 = load i64, i64* %142, !mcsema_real_eip !24
  store i64 %143, i64* %RBP_val, !mcsema_real_eip !24
  %144 = add i64 %141, 16, !mcsema_real_eip !25
  store i64 %144, i64* %RSP_val, !mcsema_real_eip !25
  %145 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  store i64 %145, i64* %RAX, !mcsema_real_eip !25
  %146 = load i64, i64* %RBX_val, !mcsema_real_eip !25
  store i64 %146, i64* %RBX, !mcsema_real_eip !25
  %147 = load i64, i64* %RCX_val, !mcsema_real_eip !25
  store i64 %147, i64* %RCX, !mcsema_real_eip !25
  %148 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  store i64 %148, i64* %RDX, !mcsema_real_eip !25
  %149 = load i64, i64* %RSI_val, !mcsema_real_eip !25
  store i64 %149, i64* %RSI, !mcsema_real_eip !25
  %150 = load i64, i64* %RDI_val, !mcsema_real_eip !25
  store i64 %150, i64* %RDI, !mcsema_real_eip !25
  %151 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %151, i64* %RSP, !mcsema_real_eip !25
  %152 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  store i64 %152, i64* %RBP, !mcsema_real_eip !25
  %153 = load i64, i64* %R8_val, !mcsema_real_eip !25
  store i64 %153, i64* %R8, !mcsema_real_eip !25
  %154 = load i64, i64* %R9_val, !mcsema_real_eip !25
  store i64 %154, i64* %R9, !mcsema_real_eip !25
  %155 = load i64, i64* %R10_val, !mcsema_real_eip !25
  store i64 %155, i64* %R10, !mcsema_real_eip !25
  %156 = load i64, i64* %R11_val, !mcsema_real_eip !25
  store i64 %156, i64* %R11, !mcsema_real_eip !25
  %157 = load i64, i64* %R12_val, !mcsema_real_eip !25
  store i64 %157, i64* %R12, !mcsema_real_eip !25
  %158 = load i64, i64* %R13_val, !mcsema_real_eip !25
  store i64 %158, i64* %R13, !mcsema_real_eip !25
  %159 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %159, i64* %R14, !mcsema_real_eip !25
  %160 = load i64, i64* %R15_val, !mcsema_real_eip !25
  store i64 %160, i64* %R15, !mcsema_real_eip !25
  %161 = load i64, i64* %RIP_val, !mcsema_real_eip !25
  store i64 %161, i64* %RIP, !mcsema_real_eip !25
  %162 = load i1, i1* %CF_val, !mcsema_real_eip !25
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !25
  %163 = load i1, i1* %PF_val, !mcsema_real_eip !25
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !25
  %164 = load i1, i1* %AF_val, !mcsema_real_eip !25
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !25
  %165 = load i1, i1* %ZF_val, !mcsema_real_eip !25
  store i1 %165, i1* %ZF, align 1, !mcsema_real_eip !25
  %166 = load i1, i1* %SF_val, !mcsema_real_eip !25
  store i1 %166, i1* %SF, align 1, !mcsema_real_eip !25
  %167 = load i1, i1* %OF_val, !mcsema_real_eip !25
  store i1 %167, i1* %OF, align 1, !mcsema_real_eip !25
  %168 = load i1, i1* %DF_val, !mcsema_real_eip !25
  store i1 %168, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  %169 = load i1, i1* %FPU_B_val, !mcsema_real_eip !25
  store i1 %169, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %170 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !25
  store i1 %170, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %171 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !25
  store i3 %171, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %172 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !25
  store i1 %172, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %173 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !25
  store i1 %173, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %174 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !25
  store i1 %174, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %175 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !25
  store i1 %175, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %176 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !25
  store i1 %176, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %177 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !25
  store i1 %177, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %178 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !25
  store i1 %178, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %179 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !25
  store i1 %179, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %180 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !25
  store i1 %180, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %181 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !25
  store i1 %181, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %182 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !25
  store i1 %182, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %183 = load i1, i1* %FPU_X_val, !mcsema_real_eip !25
  store i1 %183, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %184 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !25
  store i2 %184, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %185 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !25
  store i2 %185, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %186 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !25
  store i1 %186, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %187 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !25
  store i1 %187, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %188 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !25
  store i1 %188, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %189 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !25
  store i1 %189, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %190 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !25
  store i1 %190, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %191 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !25
  store i1 %191, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %192 = load i64, i64* %53, align 4
  store i64 %192, i64* %52, align 4
  %193 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  store i16 %193, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %194 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  store i64 %194, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  %195 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  store i16 %195, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %196 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  store i64 %196, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  %197 = load i128, i128* %XMM0_val, !mcsema_real_eip !25
  store i128 %197, i128* %XMM0, align 1, !mcsema_real_eip !25
  %198 = load i128, i128* %XMM1_val, !mcsema_real_eip !25
  store i128 %198, i128* %XMM1, align 1, !mcsema_real_eip !25
  %199 = load i128, i128* %XMM2_val, !mcsema_real_eip !25
  store i128 %199, i128* %XMM2, align 1, !mcsema_real_eip !25
  %200 = load i128, i128* %XMM3_val, !mcsema_real_eip !25
  store i128 %200, i128* %XMM3, align 1, !mcsema_real_eip !25
  %201 = load i128, i128* %XMM4_val, !mcsema_real_eip !25
  store i128 %201, i128* %XMM4, align 1, !mcsema_real_eip !25
  %202 = load i128, i128* %XMM5_val, !mcsema_real_eip !25
  store i128 %202, i128* %XMM5, align 1, !mcsema_real_eip !25
  %203 = load i128, i128* %XMM6_val, !mcsema_real_eip !25
  store i128 %203, i128* %XMM6, align 1, !mcsema_real_eip !25
  %204 = load i128, i128* %XMM7_val, !mcsema_real_eip !25
  store i128 %204, i128* %XMM7, align 1, !mcsema_real_eip !25
  %205 = load i128, i128* %XMM8_val, !mcsema_real_eip !25
  store i128 %205, i128* %XMM8, align 1, !mcsema_real_eip !25
  %206 = load i128, i128* %XMM9_val, !mcsema_real_eip !25
  store i128 %206, i128* %XMM9, align 1, !mcsema_real_eip !25
  %207 = load i128, i128* %XMM10_val, !mcsema_real_eip !25
  store i128 %207, i128* %XMM10, align 1, !mcsema_real_eip !25
  %208 = load i128, i128* %XMM11_val, !mcsema_real_eip !25
  store i128 %208, i128* %XMM11, align 1, !mcsema_real_eip !25
  %209 = load i128, i128* %XMM12_val, !mcsema_real_eip !25
  store i128 %209, i128* %XMM12, align 1, !mcsema_real_eip !25
  %210 = load i128, i128* %XMM13_val, !mcsema_real_eip !25
  store i128 %210, i128* %XMM13, align 1, !mcsema_real_eip !25
  %211 = load i128, i128* %XMM14_val, !mcsema_real_eip !25
  store i128 %211, i128* %XMM14, align 1, !mcsema_real_eip !25
  %212 = load i128, i128* %XMM15_val, !mcsema_real_eip !25
  store i128 %212, i128* %XMM15, align 1, !mcsema_real_eip !25
  %213 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !25
  store i64 %213, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  %214 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 %214, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25

block_0x20:                                       ; preds = %block_0x13, %block_0x20.preheader
  store i64 2, i64* %RAX_val, !mcsema_real_eip !26
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %216 = add i64 %215, -4, !mcsema_real_eip !27
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !27
  %218 = bitcast i64* %217 to i32*
  %219 = load i32, i32* %218, !mcsema_real_eip !27
  %220 = zext i32 %219 to i64, !mcsema_real_eip !27
  store i64 %220, i64* %RCX_val, !mcsema_real_eip !27
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %222 = add i64 %221, -20, !mcsema_real_eip !28
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !28
  %224 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  %225 = trunc i64 %224 to i32, !mcsema_real_eip !28
  %226 = bitcast i64* %223 to i32*
  store i32 %225, i32* %226, !mcsema_real_eip !28
  %227 = load i64, i64* %RCX_val, !mcsema_real_eip !29
  %228 = and i64 %227, 4294967295
  store i64 %228, i64* %RAX_val, !mcsema_real_eip !29
  %229 = shl i64 %227, 32
  %sext = ashr i64 %229, 63
  %230 = and i64 %sext, 4294967295
  store i64 %230, i64* %RDX_val, !mcsema_real_eip !30
  %231 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %232 = add i64 %231, -20, !mcsema_real_eip !31
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !31
  %234 = bitcast i64* %233 to i32*
  %235 = load i32, i32* %234, !mcsema_real_eip !31
  %236 = zext i32 %235 to i64, !mcsema_real_eip !31
  store i64 %236, i64* %RCX_val, !mcsema_real_eip !31
  %237 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %238 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %239 = shl i64 %238, 32, !mcsema_real_eip !32
  %sext70 = shl i64 %237, 32
  %240 = ashr exact i64 %sext70, 32
  %241 = or i64 %239, %240, !mcsema_real_eip !32
  %242 = sext i32 %235 to i64, !mcsema_real_eip !32
  %243 = sdiv i64 %241, %242, !mcsema_real_eip !32
  %244 = srem i64 %241, %242, !mcsema_real_eip !32
  %245 = and i64 %244, 4294967295
  store i64 %245, i64* %RDX_val, !mcsema_real_eip !32
  %246 = and i64 %243, 4294967295
  store i64 %246, i64* %RAX_val, !mcsema_real_eip !32
  %247 = trunc i64 %244 to i32, !mcsema_real_eip !33
  store i1 false, i1* %AF_val, !mcsema_real_eip !33
  %248 = trunc i64 %244 to i8
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !33
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF_val, !mcsema_real_eip !33
  %252 = icmp eq i32 %247, 0, !mcsema_real_eip !33
  store i1 %252, i1* %ZF_val, !mcsema_real_eip !33
  %253 = icmp slt i32 %247, 0
  store i1 %253, i1* %SF_val, !mcsema_real_eip !33
  store i1 false, i1* %CF_val, !mcsema_real_eip !33
  store i1 false, i1* %OF_val, !mcsema_real_eip !33
  %254 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %255 = add i64 %254, -12, !mcsema_real_eip !34
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !34
  %257 = bitcast i64* %256 to i32*
  %258 = load i32, i32* %257, !mcsema_real_eip !34
  %259 = zext i32 %258 to i64, !mcsema_real_eip !34
  store i64 %259, i64* %RAX_val, !mcsema_real_eip !34
  br i1 %252, label %block_0x3f, label %block_0x4f, !mcsema_real_eip !35

block_0x4f:                                       ; preds = %block_0x20
  %260 = add i32 %258, -10
  %261 = xor i32 %260, %258, !mcsema_real_eip !36
  %262 = and i32 %261, 16, !mcsema_real_eip !36
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !36
  store i1 %263, i1* %AF_val, !mcsema_real_eip !36
  %264 = trunc i32 %260 to i8, !mcsema_real_eip !36
  %265 = tail call i8 @llvm.ctpop.i8(i8 %264), !mcsema_real_eip !36
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  store i1 %267, i1* %PF_val, !mcsema_real_eip !36
  %268 = icmp eq i32 %260, 0, !mcsema_real_eip !36
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !36
  %269 = icmp slt i32 %260, 0
  store i1 %269, i1* %SF_val, !mcsema_real_eip !36
  %270 = icmp ult i32 %258, 10, !mcsema_real_eip !36
  store i1 %270, i1* %CF_val, !mcsema_real_eip !36
  %271 = and i32 %261, %258, !mcsema_real_eip !36
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !36
  %273 = zext i32 %260 to i64, !mcsema_real_eip !36
  store i64 %273, i64* %RAX_val, !mcsema_real_eip !36
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %275 = add i64 %274, -12, !mcsema_real_eip !37
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !37
  %277 = bitcast i64* %276 to i32*
  store i32 %260, i32* %277, !mcsema_real_eip !37
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %279 = add i64 %278, -4, !mcsema_real_eip !38
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !38
  %281 = bitcast i64* %280 to i32*
  %282 = load i32, i32* %281, !mcsema_real_eip !38
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %282, i32 -1)
  %283 = extractvalue { i32, i1 } %uadd73, 0
  %284 = xor i32 %283, %282, !mcsema_real_eip !39
  %285 = and i32 %284, 16
  %286 = icmp eq i32 %285, 0
  store i1 %286, i1* %AF_val, !mcsema_real_eip !39
  %287 = icmp slt i32 %283, 0
  store i1 %287, i1* %SF_val, !mcsema_real_eip !39
  %288 = icmp eq i32 %283, 0, !mcsema_real_eip !39
  store i1 %288, i1* %ZF_val, !mcsema_real_eip !39
  %289 = and i32 %284, %282, !mcsema_real_eip !39
  %290 = icmp slt i32 %289, 0
  store i1 %290, i1* %OF_val, !mcsema_real_eip !39
  %291 = trunc i32 %283 to i8, !mcsema_real_eip !39
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !39
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF_val, !mcsema_real_eip !39
  %295 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %295, i1* %CF_val, !mcsema_real_eip !39
  %296 = zext i32 %283 to i64, !mcsema_real_eip !39
  store i64 %296, i64* %RAX_val, !mcsema_real_eip !39
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %298 = add i64 %297, -4, !mcsema_real_eip !40
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !40
  %300 = bitcast i64* %299 to i32*
  store i32 %283, i32* %300, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x3f:                                       ; preds = %block_0x20
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %258, i32 10)
  %301 = extractvalue { i32, i1 } %uadd71, 0
  %302 = xor i32 %301, %258, !mcsema_real_eip !42
  %303 = and i32 %302, 16, !mcsema_real_eip !42
  %304 = icmp ne i32 %303, 0, !mcsema_real_eip !42
  store i1 %304, i1* %AF_val, !mcsema_real_eip !42
  %305 = icmp slt i32 %301, 0
  store i1 %305, i1* %SF_val, !mcsema_real_eip !42
  %306 = icmp eq i32 %301, 0, !mcsema_real_eip !42
  store i1 %306, i1* %ZF_val, !mcsema_real_eip !42
  %307 = xor i32 %258, -2147483648, !mcsema_real_eip !42
  %308 = and i32 %302, %307, !mcsema_real_eip !42
  %309 = icmp slt i32 %308, 0
  store i1 %309, i1* %OF_val, !mcsema_real_eip !42
  %310 = trunc i32 %301 to i8, !mcsema_real_eip !42
  %311 = tail call i8 @llvm.ctpop.i8(i8 %310), !mcsema_real_eip !42
  %312 = and i8 %311, 1
  %313 = icmp eq i8 %312, 0
  store i1 %313, i1* %PF_val, !mcsema_real_eip !42
  %314 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %314, i1* %CF_val, !mcsema_real_eip !42
  %315 = zext i32 %301 to i64, !mcsema_real_eip !42
  store i64 %315, i64* %RAX_val, !mcsema_real_eip !42
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %317 = add i64 %316, -16, !mcsema_real_eip !43
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !43
  %319 = bitcast i64* %318 to i32*
  store i32 %301, i32* %319, !mcsema_real_eip !43
  %320 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %321 = add i64 %320, -4, !mcsema_real_eip !38
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !38
  %323 = bitcast i64* %322 to i32*
  %324 = load i32, i32* %323, !mcsema_real_eip !38
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 -1)
  %325 = extractvalue { i32, i1 } %uadd72, 0
  %326 = xor i32 %325, %324, !mcsema_real_eip !39
  %327 = and i32 %326, 16
  %328 = icmp eq i32 %327, 0
  store i1 %328, i1* %AF_val, !mcsema_real_eip !39
  %329 = icmp slt i32 %325, 0
  store i1 %329, i1* %SF_val, !mcsema_real_eip !39
  %330 = icmp eq i32 %325, 0, !mcsema_real_eip !39
  store i1 %330, i1* %ZF_val, !mcsema_real_eip !39
  %331 = and i32 %326, %324, !mcsema_real_eip !39
  %332 = icmp slt i32 %331, 0
  store i1 %332, i1* %OF_val, !mcsema_real_eip !39
  %333 = trunc i32 %325 to i8, !mcsema_real_eip !39
  %334 = tail call i8 @llvm.ctpop.i8(i8 %333), !mcsema_real_eip !39
  %335 = and i8 %334, 1
  %336 = icmp eq i8 %335, 0
  store i1 %336, i1* %PF_val, !mcsema_real_eip !39
  %337 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %337, i1* %CF_val, !mcsema_real_eip !39
  %338 = zext i32 %325 to i64, !mcsema_real_eip !39
  store i64 %338, i64* %RAX_val, !mcsema_real_eip !39
  %339 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %340 = add i64 %339, -4, !mcsema_real_eip !40
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !40
  %342 = bitcast i64* %341 to i32*
  store i32 %325, i32* %342, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x13:                                       ; preds = %block_0x3f, %block_0x4f
  %343 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %344 = add i64 %343, -4, !mcsema_real_eip !21
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !21
  %346 = bitcast i64* %345 to i32*
  %347 = load i32, i32* %346, !mcsema_real_eip !21
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %348 = trunc i32 %347 to i8, !mcsema_real_eip !21
  %349 = tail call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !21
  %350 = and i8 %349, 1
  %351 = icmp eq i8 %350, 0
  store i1 %351, i1* %PF_val, !mcsema_real_eip !21
  %352 = icmp eq i32 %347, 0, !mcsema_real_eip !21
  store i1 %352, i1* %ZF_val, !mcsema_real_eip !21
  %353 = icmp slt i32 %347, 0
  store i1 %353, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %353, label %block_0x6a.loopexit, label %block_0x20, !mcsema_real_eip !22
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 28
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 28
  %R15_val = alloca i64, !mcsema_real_eip !14
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !14
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !14
  %XMM15_val = alloca i128, !mcsema_real_eip !14
  %XMM14_val = alloca i128, !mcsema_real_eip !14
  %XMM13_val = alloca i128, !mcsema_real_eip !14
  %XMM12_val = alloca i128, !mcsema_real_eip !14
  %XMM11_val = alloca i128, !mcsema_real_eip !14
  %XMM10_val = alloca i128, !mcsema_real_eip !14
  %XMM9_val = alloca i128, !mcsema_real_eip !14
  %XMM8_val = alloca i128, !mcsema_real_eip !14
  %XMM7_val = alloca i128, !mcsema_real_eip !14
  %XMM6_val = alloca i128, !mcsema_real_eip !14
  %XMM5_val = alloca i128, !mcsema_real_eip !14
  %XMM4_val = alloca i128, !mcsema_real_eip !14
  %XMM3_val = alloca i128, !mcsema_real_eip !14
  %XMM2_val = alloca i128, !mcsema_real_eip !14
  %XMM1_val = alloca i128, !mcsema_real_eip !14
  %XMM0_val = alloca i128, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !14
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !14
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !14
  %FPU_IM_val = alloca i1, !mcsema_real_eip !14
  %FPU_DM_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !14
  %FPU_OM_val = alloca i1, !mcsema_real_eip !14
  %FPU_UM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PM_val = alloca i1, !mcsema_real_eip !14
  %FPU_PC_val = alloca i2, !mcsema_real_eip !14
  %FPU_RC_val = alloca i2, !mcsema_real_eip !14
  %FPU_X_val = alloca i1, !mcsema_real_eip !14
  %FPU_IE_val = alloca i1, !mcsema_real_eip !14
  %FPU_DE_val = alloca i1, !mcsema_real_eip !14
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !14
  %FPU_OE_val = alloca i1, !mcsema_real_eip !14
  %FPU_UE_val = alloca i1, !mcsema_real_eip !14
  %FPU_PE_val = alloca i1, !mcsema_real_eip !14
  %FPU_SF_val = alloca i1, !mcsema_real_eip !14
  %FPU_ES_val = alloca i1, !mcsema_real_eip !14
  %FPU_C0_val = alloca i1, !mcsema_real_eip !14
  %FPU_C1_val = alloca i1, !mcsema_real_eip !14
  %FPU_C2_val = alloca i1, !mcsema_real_eip !14
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !14
  %FPU_C3_val = alloca i1, !mcsema_real_eip !14
  %FPU_B_val = alloca i1, !mcsema_real_eip !14
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !14
  %DF_val = alloca i1, !mcsema_real_eip !14
  %OF_val = alloca i1, !mcsema_real_eip !14
  %SF_val = alloca i1, !mcsema_real_eip !14
  %CF_val = alloca i1, !mcsema_real_eip !14
  %AF_val = alloca i1, !mcsema_real_eip !14
  %PF_val = alloca i1, !mcsema_real_eip !14
  %ZF_val = alloca i1, !mcsema_real_eip !14
  %RIP_val = alloca i64, !mcsema_real_eip !14
  %R14_val = alloca i64, !mcsema_real_eip !14
  %R13_val = alloca i64, !mcsema_real_eip !14
  %R12_val = alloca i64, !mcsema_real_eip !14
  %R11_val = alloca i64, !mcsema_real_eip !14
  %R10_val = alloca i64, !mcsema_real_eip !14
  %R9_val = alloca i64, !mcsema_real_eip !14
  %R8_val = alloca i64, !mcsema_real_eip !14
  %RSP_val = alloca i64, !mcsema_real_eip !14
  %RBP_val = alloca i64, !mcsema_real_eip !14
  %RDI_val = alloca i64, !mcsema_real_eip !14
  %RSI_val = alloca i64, !mcsema_real_eip !14
  %RDX_val = alloca i64, !mcsema_real_eip !14
  %RCX_val = alloca i64, !mcsema_real_eip !14
  %RBX_val = alloca i64, !mcsema_real_eip !14
  %RAX_val = alloca i64, !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %1 = load i64, i64* %RAX, !mcsema_real_eip !14
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %2 = load i64, i64* %RBX, !mcsema_real_eip !14
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !14
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !14
  %3 = load i64, i64* %RCX, !mcsema_real_eip !14
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !14
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %4 = load i64, i64* %RDX, !mcsema_real_eip !14
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %5 = load i64, i64* %RSI, !mcsema_real_eip !14
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %6 = load i64, i64* %RDI, !mcsema_real_eip !14
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %7 = load i64, i64* %RSP, !mcsema_real_eip !14
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %8 = load i64, i64* %RBP, !mcsema_real_eip !14
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %9 = load i64, i64* %R8, !mcsema_real_eip !14
  store i64 %9, i64* %R8_val, !mcsema_real_eip !14
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !14
  %10 = load i64, i64* %R9, !mcsema_real_eip !14
  store i64 %10, i64* %R9_val, !mcsema_real_eip !14
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %11 = load i64, i64* %R10, !mcsema_real_eip !14
  store i64 %11, i64* %R10_val, !mcsema_real_eip !14
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !14
  %12 = load i64, i64* %R11, !mcsema_real_eip !14
  store i64 %12, i64* %R11_val, !mcsema_real_eip !14
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %13 = load i64, i64* %R12, !mcsema_real_eip !14
  store i64 %13, i64* %R12_val, !mcsema_real_eip !14
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !14
  %14 = load i64, i64* %R13, !mcsema_real_eip !14
  store i64 %14, i64* %R13_val, !mcsema_real_eip !14
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %15 = load i64, i64* %R14, !mcsema_real_eip !14
  store i64 %15, i64* %R14_val, !mcsema_real_eip !14
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !14
  %16 = load i64, i64* %R15, !mcsema_real_eip !14
  store i64 %16, i64* %R15_val, !mcsema_real_eip !14
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %17 = load i64, i64* %RIP, !mcsema_real_eip !14
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %CF_val, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !14
  store i1 %19, i1* %PF_val, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !14
  store i1 %20, i1* %AF_val, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %SF_val, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !14
  store i1 %23, i1* %OF_val, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %DF_val, !mcsema_real_eip !14
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !14
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !14
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %_head_p2i_ = ptrtoint i64* %52 to i64
  %_offset_above_rbp_ = sub i64 %_head_p2i_, %_local_stack_end_
  %_address_in_parent_stack_ = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_
  %_cond0_ = icmp ugt i64 %_head_p2i_, %_local_stack_end_
  %_cond1_ = icmp ugt i64 %_head_p2i_, %_parent_stack_end_ptr_
  %_cond2_ = icmp ult i64 %_head_p2i_, %_parent_stack_start_ptr_
  %_cond3_ = or i1 %_cond1_, %_cond2_
  %_cond4_ = icmp ule i64 %_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond5_ = and i1 %_cond0_, %_cond3_
  %_cond6_ = and i1 %_cond5_, %_cond4_
  br i1 %_cond6_, label %54, label %55

; <label>:54:                                     ; preds = %entry
  %_address_in_parent_stack_1 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_
  br label %55

; <label>:55:                                     ; preds = %entry, %54
  %56 = phi i64 [ %_head_p2i_, %entry ], [ %_address_in_parent_stack_1, %54 ]
  %_address_ptr_in_parent_stack_ = inttoptr i64 %56 to i64*
  %_new_load_ = load i64, i64* %_address_ptr_in_parent_stack_
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !14
  store i64 %79, i64* %82, !mcsema_real_eip !14
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !14
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !15
  %83 = add i64 %80, -12, !mcsema_real_eip !16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !16
  %85 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  %86 = trunc i64 %85 to i32, !mcsema_real_eip !16
  %87 = bitcast i64* %84 to i32*
  store i32 %86, i32* %87, !mcsema_real_eip !16
  %88 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %89 = add i64 %88, -8, !mcsema_real_eip !17
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !17
  %91 = load i64, i64* %RSI_val, !mcsema_real_eip !17
  %92 = trunc i64 %91 to i32, !mcsema_real_eip !17
  %93 = bitcast i64* %90 to i32*
  store i32 %92, i32* %93, !mcsema_real_eip !17
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %95 = add i64 %94, -4, !mcsema_real_eip !18
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !18
  %97 = bitcast i64* %96 to i32*
  %_head_p2i_2 = ptrtoint i32* %97 to i64
  %_offset_above_rbp_3 = sub i64 %_head_p2i_2, %_local_stack_end_
  %_address_in_parent_stack_4 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  %_cond0_5 = icmp ugt i64 %_head_p2i_2, %_local_stack_end_
  %_cond1_6 = icmp ugt i64 %_head_p2i_2, %_parent_stack_end_ptr_
  %_cond2_7 = icmp ult i64 %_head_p2i_2, %_parent_stack_start_ptr_
  %_cond3_8 = or i1 %_cond1_6, %_cond2_7
  %_cond4_9 = icmp ule i64 %_address_in_parent_stack_4, %_parent_stack_end_ptr_
  %_cond5_10 = and i1 %_cond0_5, %_cond3_8
  %_cond6_11 = and i1 %_cond5_10, %_cond4_9
  br i1 %_cond6_11, label %98, label %99

; <label>:98:                                     ; preds = %55
  %_address_in_parent_stack_12 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  br label %99

; <label>:99:                                     ; preds = %55, %98
  %100 = phi i64 [ %_head_p2i_2, %55 ], [ %_address_in_parent_stack_12, %98 ]
  %_address_ptr_in_parent_stack_13 = inttoptr i64 %100 to i32*
  %_new_load_14 = load i32, i32* %_address_ptr_in_parent_stack_13
  %101 = zext i32 %_new_load_14 to i64, !mcsema_real_eip !18
  store i64 %101, i64* %RSI_val, !mcsema_real_eip !18
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %103 = add i64 %102, -8, !mcsema_real_eip !19
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !19
  %105 = bitcast i64* %104 to i32*
  %_head_p2i_15 = ptrtoint i32* %105 to i64
  %_offset_above_rbp_16 = sub i64 %_head_p2i_15, %_local_stack_end_
  %_address_in_parent_stack_17 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  %_cond0_18 = icmp ugt i64 %_head_p2i_15, %_local_stack_end_
  %_cond1_19 = icmp ugt i64 %_head_p2i_15, %_parent_stack_end_ptr_
  %_cond2_20 = icmp ult i64 %_head_p2i_15, %_parent_stack_start_ptr_
  %_cond3_21 = or i1 %_cond1_19, %_cond2_20
  %_cond4_22 = icmp ule i64 %_address_in_parent_stack_17, %_parent_stack_end_ptr_
  %_cond5_23 = and i1 %_cond0_18, %_cond3_21
  %_cond6_24 = and i1 %_cond5_23, %_cond4_22
  br i1 %_cond6_24, label %106, label %107

; <label>:106:                                    ; preds = %99
  %_address_in_parent_stack_25 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  br label %107

; <label>:107:                                    ; preds = %99, %106
  %108 = phi i64 [ %_head_p2i_15, %99 ], [ %_address_in_parent_stack_25, %106 ]
  %_address_ptr_in_parent_stack_26 = inttoptr i64 %108 to i32*
  %_new_load_27 = load i32, i32* %_address_ptr_in_parent_stack_26
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_14, i32 %_new_load_27)
  %109 = extractvalue { i32, i1 } %uadd, 0
  %110 = xor i32 %109, %_new_load_27, !mcsema_real_eip !19
  %111 = xor i32 %110, %_new_load_14, !mcsema_real_eip !19
  %112 = and i32 %111, 16, !mcsema_real_eip !19
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !19
  store i1 %113, i1* %AF_val, !mcsema_real_eip !19
  %114 = icmp slt i32 %109, 0
  store i1 %114, i1* %SF_val, !mcsema_real_eip !19
  %115 = icmp eq i32 %109, 0, !mcsema_real_eip !19
  store i1 %115, i1* %ZF_val, !mcsema_real_eip !19
  %116 = xor i32 %_new_load_14, -2147483648, !mcsema_real_eip !19
  %117 = xor i32 %116, %_new_load_27, !mcsema_real_eip !19
  %118 = and i32 %110, %117, !mcsema_real_eip !19
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF_val, !mcsema_real_eip !19
  %120 = trunc i32 %109 to i8, !mcsema_real_eip !19
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !19
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF_val, !mcsema_real_eip !19
  %124 = extractvalue { i32, i1 } %uadd, 1
  store i1 %124, i1* %CF_val, !mcsema_real_eip !19
  %125 = zext i32 %109 to i64, !mcsema_real_eip !19
  store i64 %125, i64* %RSI_val, !mcsema_real_eip !19
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %127 = add i64 %126, -12, !mcsema_real_eip !20
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !20
  %129 = bitcast i64* %128 to i32*
  store i32 %109, i32* %129, !mcsema_real_eip !20
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %131 = add i64 %130, -4, !mcsema_real_eip !21
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !21
  %133 = bitcast i64* %132 to i32*
  %_head_p2i_28 = ptrtoint i32* %133 to i64
  %_offset_above_rbp_29 = sub i64 %_head_p2i_28, %_local_stack_end_
  %_address_in_parent_stack_30 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  %_cond0_31 = icmp ugt i64 %_head_p2i_28, %_local_stack_end_
  %_cond1_32 = icmp ugt i64 %_head_p2i_28, %_parent_stack_end_ptr_
  %_cond2_33 = icmp ult i64 %_head_p2i_28, %_parent_stack_start_ptr_
  %_cond3_34 = or i1 %_cond1_32, %_cond2_33
  %_cond4_35 = icmp ule i64 %_address_in_parent_stack_30, %_parent_stack_end_ptr_
  %_cond5_36 = and i1 %_cond0_31, %_cond3_34
  %_cond6_37 = and i1 %_cond5_36, %_cond4_35
  br i1 %_cond6_37, label %134, label %135

; <label>:134:                                    ; preds = %107
  %_address_in_parent_stack_38 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  br label %135

; <label>:135:                                    ; preds = %107, %134
  %136 = phi i64 [ %_head_p2i_28, %107 ], [ %_address_in_parent_stack_38, %134 ]
  %_address_ptr_in_parent_stack_39 = inttoptr i64 %136 to i32*
  %_new_load_40 = load i32, i32* %_address_ptr_in_parent_stack_39
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %137 = trunc i32 %_new_load_40 to i8, !mcsema_real_eip !21
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !21
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  store i1 %140, i1* %PF_val, !mcsema_real_eip !21
  %141 = icmp eq i32 %_new_load_40, 0, !mcsema_real_eip !21
  store i1 %141, i1* %ZF_val, !mcsema_real_eip !21
  %142 = icmp slt i32 %_new_load_40, 0
  store i1 %142, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %142, label %block_0x6a, label %block_0x20.preheader, !mcsema_real_eip !22

block_0x20.preheader:                             ; preds = %135
  br label %block_0x20

block_0x6a.loopexit:                              ; preds = %372
  br label %block_0x6a

block_0x6a:                                       ; preds = %block_0x6a.loopexit, %135
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %144 = add i64 %143, -16, !mcsema_real_eip !23
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !23
  %146 = bitcast i64* %145 to i32*
  %_head_p2i_41 = ptrtoint i32* %146 to i64
  %_offset_above_rbp_42 = sub i64 %_head_p2i_41, %_local_stack_end_
  %_address_in_parent_stack_43 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  %_cond0_44 = icmp ugt i64 %_head_p2i_41, %_local_stack_end_
  %_cond1_45 = icmp ugt i64 %_head_p2i_41, %_parent_stack_end_ptr_
  %_cond2_46 = icmp ult i64 %_head_p2i_41, %_parent_stack_start_ptr_
  %_cond3_47 = or i1 %_cond1_45, %_cond2_46
  %_cond4_48 = icmp ule i64 %_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond5_49 = and i1 %_cond0_44, %_cond3_47
  %_cond6_50 = and i1 %_cond5_49, %_cond4_48
  br i1 %_cond6_50, label %147, label %148

; <label>:147:                                    ; preds = %block_0x6a
  %_address_in_parent_stack_51 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  br label %148

; <label>:148:                                    ; preds = %block_0x6a, %147
  %149 = phi i64 [ %_head_p2i_41, %block_0x6a ], [ %_address_in_parent_stack_51, %147 ]
  %_address_ptr_in_parent_stack_52 = inttoptr i64 %149 to i32*
  %_new_load_53 = load i32, i32* %_address_ptr_in_parent_stack_52
  %150 = zext i32 %_new_load_53 to i64, !mcsema_real_eip !23
  store i64 %150, i64* %RAX_val, !mcsema_real_eip !23
  %151 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !24
  %_head_p2i_54 = ptrtoint i64* %152 to i64
  %_offset_above_rbp_55 = sub i64 %_head_p2i_54, %_local_stack_end_
  %_address_in_parent_stack_56 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  %_cond0_57 = icmp ugt i64 %_head_p2i_54, %_local_stack_end_
  %_cond1_58 = icmp ugt i64 %_head_p2i_54, %_parent_stack_end_ptr_
  %_cond2_59 = icmp ult i64 %_head_p2i_54, %_parent_stack_start_ptr_
  %_cond3_60 = or i1 %_cond1_58, %_cond2_59
  %_cond4_61 = icmp ule i64 %_address_in_parent_stack_56, %_parent_stack_end_ptr_
  %_cond5_62 = and i1 %_cond0_57, %_cond3_60
  %_cond6_63 = and i1 %_cond5_62, %_cond4_61
  br i1 %_cond6_63, label %153, label %154

; <label>:153:                                    ; preds = %148
  %_address_in_parent_stack_64 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  br label %154

; <label>:154:                                    ; preds = %148, %153
  %155 = phi i64 [ %_head_p2i_54, %148 ], [ %_address_in_parent_stack_64, %153 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %155 to i64*
  %_new_load_66 = load i64, i64* %_address_ptr_in_parent_stack_65
  store i64 %_new_load_66, i64* %RBP_val, !mcsema_real_eip !24
  %156 = add i64 %151, 16, !mcsema_real_eip !25
  store i64 %156, i64* %RSP_val, !mcsema_real_eip !25
  %157 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  store i64 %157, i64* %RAX, !mcsema_real_eip !25
  %158 = load i64, i64* %RBX_val, !mcsema_real_eip !25
  store i64 %158, i64* %RBX, !mcsema_real_eip !25
  %159 = load i64, i64* %RCX_val, !mcsema_real_eip !25
  store i64 %159, i64* %RCX, !mcsema_real_eip !25
  %160 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  store i64 %160, i64* %RDX, !mcsema_real_eip !25
  %161 = load i64, i64* %RSI_val, !mcsema_real_eip !25
  store i64 %161, i64* %RSI, !mcsema_real_eip !25
  %162 = load i64, i64* %RDI_val, !mcsema_real_eip !25
  store i64 %162, i64* %RDI, !mcsema_real_eip !25
  %163 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %163, i64* %RSP, !mcsema_real_eip !25
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  store i64 %164, i64* %RBP, !mcsema_real_eip !25
  %165 = load i64, i64* %R8_val, !mcsema_real_eip !25
  store i64 %165, i64* %R8, !mcsema_real_eip !25
  %166 = load i64, i64* %R9_val, !mcsema_real_eip !25
  store i64 %166, i64* %R9, !mcsema_real_eip !25
  %167 = load i64, i64* %R10_val, !mcsema_real_eip !25
  store i64 %167, i64* %R10, !mcsema_real_eip !25
  %168 = load i64, i64* %R11_val, !mcsema_real_eip !25
  store i64 %168, i64* %R11, !mcsema_real_eip !25
  %169 = load i64, i64* %R12_val, !mcsema_real_eip !25
  store i64 %169, i64* %R12, !mcsema_real_eip !25
  %170 = load i64, i64* %R13_val, !mcsema_real_eip !25
  store i64 %170, i64* %R13, !mcsema_real_eip !25
  %171 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %171, i64* %R14, !mcsema_real_eip !25
  %172 = load i64, i64* %R15_val, !mcsema_real_eip !25
  store i64 %172, i64* %R15, !mcsema_real_eip !25
  %173 = load i64, i64* %RIP_val, !mcsema_real_eip !25
  store i64 %173, i64* %RIP, !mcsema_real_eip !25
  %174 = load i1, i1* %CF_val, !mcsema_real_eip !25
  store i1 %174, i1* %CF, align 1, !mcsema_real_eip !25
  %175 = load i1, i1* %PF_val, !mcsema_real_eip !25
  store i1 %175, i1* %PF, align 1, !mcsema_real_eip !25
  %176 = load i1, i1* %AF_val, !mcsema_real_eip !25
  store i1 %176, i1* %AF, align 1, !mcsema_real_eip !25
  %177 = load i1, i1* %ZF_val, !mcsema_real_eip !25
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !25
  %178 = load i1, i1* %SF_val, !mcsema_real_eip !25
  store i1 %178, i1* %SF, align 1, !mcsema_real_eip !25
  %179 = load i1, i1* %OF_val, !mcsema_real_eip !25
  store i1 %179, i1* %OF, align 1, !mcsema_real_eip !25
  %180 = load i1, i1* %DF_val, !mcsema_real_eip !25
  store i1 %180, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  %181 = load i1, i1* %FPU_B_val, !mcsema_real_eip !25
  store i1 %181, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %182 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !25
  store i1 %182, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %183 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !25
  store i3 %183, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %184 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !25
  store i1 %184, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %185 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !25
  store i1 %185, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %186 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !25
  store i1 %186, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %187 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !25
  store i1 %187, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %188 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !25
  store i1 %188, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %189 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !25
  store i1 %189, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %190 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !25
  store i1 %190, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %191 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !25
  store i1 %191, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %192 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !25
  store i1 %192, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %193 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !25
  store i1 %193, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %194 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !25
  store i1 %194, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %195 = load i1, i1* %FPU_X_val, !mcsema_real_eip !25
  store i1 %195, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %196 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !25
  store i2 %196, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %197 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !25
  store i2 %197, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %198 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !25
  store i1 %198, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %199 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !25
  store i1 %199, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %200 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !25
  store i1 %200, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %201 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !25
  store i1 %201, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %202 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !25
  store i1 %202, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %203 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !25
  store i1 %203, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %_head_p2i_67 = ptrtoint i64* %53 to i64
  %_offset_above_rbp_68 = sub i64 %_head_p2i_67, %_local_stack_end_
  %_address_in_parent_stack_69 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  %_cond0_70 = icmp ugt i64 %_head_p2i_67, %_local_stack_end_
  %_cond1_71 = icmp ugt i64 %_head_p2i_67, %_parent_stack_end_ptr_
  %_cond2_72 = icmp ult i64 %_head_p2i_67, %_parent_stack_start_ptr_
  %_cond3_73 = or i1 %_cond1_71, %_cond2_72
  %_cond4_74 = icmp ule i64 %_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond5_75 = and i1 %_cond0_70, %_cond3_73
  %_cond6_76 = and i1 %_cond5_75, %_cond4_74
  br i1 %_cond6_76, label %204, label %205

; <label>:204:                                    ; preds = %154
  %_address_in_parent_stack_77 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  br label %205

; <label>:205:                                    ; preds = %154, %204
  %206 = phi i64 [ %_head_p2i_67, %154 ], [ %_address_in_parent_stack_77, %204 ]
  %_address_ptr_in_parent_stack_78 = inttoptr i64 %206 to i64*
  %_new_load_79 = load i64, i64* %_address_ptr_in_parent_stack_78
  store i64 %_new_load_79, i64* %52, align 4
  %207 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  store i16 %207, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %208 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  store i64 %208, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  %209 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  store i16 %209, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %210 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  store i64 %210, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  %211 = load i128, i128* %XMM0_val, !mcsema_real_eip !25
  store i128 %211, i128* %XMM0, align 1, !mcsema_real_eip !25
  %212 = load i128, i128* %XMM1_val, !mcsema_real_eip !25
  store i128 %212, i128* %XMM1, align 1, !mcsema_real_eip !25
  %213 = load i128, i128* %XMM2_val, !mcsema_real_eip !25
  store i128 %213, i128* %XMM2, align 1, !mcsema_real_eip !25
  %214 = load i128, i128* %XMM3_val, !mcsema_real_eip !25
  store i128 %214, i128* %XMM3, align 1, !mcsema_real_eip !25
  %215 = load i128, i128* %XMM4_val, !mcsema_real_eip !25
  store i128 %215, i128* %XMM4, align 1, !mcsema_real_eip !25
  %216 = load i128, i128* %XMM5_val, !mcsema_real_eip !25
  store i128 %216, i128* %XMM5, align 1, !mcsema_real_eip !25
  %217 = load i128, i128* %XMM6_val, !mcsema_real_eip !25
  store i128 %217, i128* %XMM6, align 1, !mcsema_real_eip !25
  %218 = load i128, i128* %XMM7_val, !mcsema_real_eip !25
  store i128 %218, i128* %XMM7, align 1, !mcsema_real_eip !25
  %219 = load i128, i128* %XMM8_val, !mcsema_real_eip !25
  store i128 %219, i128* %XMM8, align 1, !mcsema_real_eip !25
  %220 = load i128, i128* %XMM9_val, !mcsema_real_eip !25
  store i128 %220, i128* %XMM9, align 1, !mcsema_real_eip !25
  %221 = load i128, i128* %XMM10_val, !mcsema_real_eip !25
  store i128 %221, i128* %XMM10, align 1, !mcsema_real_eip !25
  %222 = load i128, i128* %XMM11_val, !mcsema_real_eip !25
  store i128 %222, i128* %XMM11, align 1, !mcsema_real_eip !25
  %223 = load i128, i128* %XMM12_val, !mcsema_real_eip !25
  store i128 %223, i128* %XMM12, align 1, !mcsema_real_eip !25
  %224 = load i128, i128* %XMM13_val, !mcsema_real_eip !25
  store i128 %224, i128* %XMM13, align 1, !mcsema_real_eip !25
  %225 = load i128, i128* %XMM14_val, !mcsema_real_eip !25
  store i128 %225, i128* %XMM14, align 1, !mcsema_real_eip !25
  %226 = load i128, i128* %XMM15_val, !mcsema_real_eip !25
  store i128 %226, i128* %XMM15, align 1, !mcsema_real_eip !25
  %227 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !25
  store i64 %227, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  %228 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 %228, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25

block_0x20:                                       ; preds = %372, %block_0x20.preheader
  store i64 2, i64* %RAX_val, !mcsema_real_eip !26
  %229 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %230 = add i64 %229, -4, !mcsema_real_eip !27
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !27
  %232 = bitcast i64* %231 to i32*
  %_head_p2i_80 = ptrtoint i32* %232 to i64
  %_offset_above_rbp_81 = sub i64 %_head_p2i_80, %_local_stack_end_
  %_address_in_parent_stack_82 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  %_cond0_83 = icmp ugt i64 %_head_p2i_80, %_local_stack_end_
  %_cond1_84 = icmp ugt i64 %_head_p2i_80, %_parent_stack_end_ptr_
  %_cond2_85 = icmp ult i64 %_head_p2i_80, %_parent_stack_start_ptr_
  %_cond3_86 = or i1 %_cond1_84, %_cond2_85
  %_cond4_87 = icmp ule i64 %_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond5_88 = and i1 %_cond0_83, %_cond3_86
  %_cond6_89 = and i1 %_cond5_88, %_cond4_87
  br i1 %_cond6_89, label %233, label %234

; <label>:233:                                    ; preds = %block_0x20
  %_address_in_parent_stack_90 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  br label %234

; <label>:234:                                    ; preds = %block_0x20, %233
  %235 = phi i64 [ %_head_p2i_80, %block_0x20 ], [ %_address_in_parent_stack_90, %233 ]
  %_address_ptr_in_parent_stack_91 = inttoptr i64 %235 to i32*
  %_new_load_92 = load i32, i32* %_address_ptr_in_parent_stack_91
  %236 = zext i32 %_new_load_92 to i64, !mcsema_real_eip !27
  store i64 %236, i64* %RCX_val, !mcsema_real_eip !27
  %237 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %238 = add i64 %237, -20, !mcsema_real_eip !28
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !28
  %240 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !28
  %242 = bitcast i64* %239 to i32*
  store i32 %241, i32* %242, !mcsema_real_eip !28
  %243 = load i64, i64* %RCX_val, !mcsema_real_eip !29
  %244 = and i64 %243, 4294967295
  store i64 %244, i64* %RAX_val, !mcsema_real_eip !29
  %245 = shl i64 %243, 32
  %sext = ashr i64 %245, 63
  %246 = and i64 %sext, 4294967295
  store i64 %246, i64* %RDX_val, !mcsema_real_eip !30
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %248 = add i64 %247, -20, !mcsema_real_eip !31
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !31
  %250 = bitcast i64* %249 to i32*
  %_head_p2i_93 = ptrtoint i32* %250 to i64
  %_offset_above_rbp_94 = sub i64 %_head_p2i_93, %_local_stack_end_
  %_address_in_parent_stack_95 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  %_cond0_96 = icmp ugt i64 %_head_p2i_93, %_local_stack_end_
  %_cond1_97 = icmp ugt i64 %_head_p2i_93, %_parent_stack_end_ptr_
  %_cond2_98 = icmp ult i64 %_head_p2i_93, %_parent_stack_start_ptr_
  %_cond3_99 = or i1 %_cond1_97, %_cond2_98
  %_cond4_100 = icmp ule i64 %_address_in_parent_stack_95, %_parent_stack_end_ptr_
  %_cond5_101 = and i1 %_cond0_96, %_cond3_99
  %_cond6_102 = and i1 %_cond5_101, %_cond4_100
  br i1 %_cond6_102, label %251, label %252

; <label>:251:                                    ; preds = %234
  %_address_in_parent_stack_103 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  br label %252

; <label>:252:                                    ; preds = %234, %251
  %253 = phi i64 [ %_head_p2i_93, %234 ], [ %_address_in_parent_stack_103, %251 ]
  %_address_ptr_in_parent_stack_104 = inttoptr i64 %253 to i32*
  %_new_load_105 = load i32, i32* %_address_ptr_in_parent_stack_104
  %254 = zext i32 %_new_load_105 to i64, !mcsema_real_eip !31
  store i64 %254, i64* %RCX_val, !mcsema_real_eip !31
  %255 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %256 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %257 = shl i64 %256, 32, !mcsema_real_eip !32
  %sext70 = shl i64 %255, 32
  %258 = ashr exact i64 %sext70, 32
  %259 = or i64 %257, %258, !mcsema_real_eip !32
  %260 = sext i32 %_new_load_105 to i64, !mcsema_real_eip !32
  %261 = sdiv i64 %259, %260, !mcsema_real_eip !32
  %262 = srem i64 %259, %260, !mcsema_real_eip !32
  %263 = and i64 %262, 4294967295
  store i64 %263, i64* %RDX_val, !mcsema_real_eip !32
  %264 = and i64 %261, 4294967295
  store i64 %264, i64* %RAX_val, !mcsema_real_eip !32
  %265 = trunc i64 %262 to i32, !mcsema_real_eip !33
  store i1 false, i1* %AF_val, !mcsema_real_eip !33
  %266 = trunc i64 %262 to i8
  %267 = tail call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !33
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF_val, !mcsema_real_eip !33
  %270 = icmp eq i32 %265, 0, !mcsema_real_eip !33
  store i1 %270, i1* %ZF_val, !mcsema_real_eip !33
  %271 = icmp slt i32 %265, 0
  store i1 %271, i1* %SF_val, !mcsema_real_eip !33
  store i1 false, i1* %CF_val, !mcsema_real_eip !33
  store i1 false, i1* %OF_val, !mcsema_real_eip !33
  %272 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %273 = add i64 %272, -12, !mcsema_real_eip !34
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !34
  %275 = bitcast i64* %274 to i32*
  %_head_p2i_106 = ptrtoint i32* %275 to i64
  %_offset_above_rbp_107 = sub i64 %_head_p2i_106, %_local_stack_end_
  %_address_in_parent_stack_108 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  %_cond0_109 = icmp ugt i64 %_head_p2i_106, %_local_stack_end_
  %_cond1_110 = icmp ugt i64 %_head_p2i_106, %_parent_stack_end_ptr_
  %_cond2_111 = icmp ult i64 %_head_p2i_106, %_parent_stack_start_ptr_
  %_cond3_112 = or i1 %_cond1_110, %_cond2_111
  %_cond4_113 = icmp ule i64 %_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond5_114 = and i1 %_cond0_109, %_cond3_112
  %_cond6_115 = and i1 %_cond5_114, %_cond4_113
  br i1 %_cond6_115, label %276, label %277

; <label>:276:                                    ; preds = %252
  %_address_in_parent_stack_116 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  br label %277

; <label>:277:                                    ; preds = %252, %276
  %278 = phi i64 [ %_head_p2i_106, %252 ], [ %_address_in_parent_stack_116, %276 ]
  %_address_ptr_in_parent_stack_117 = inttoptr i64 %278 to i32*
  %_new_load_118 = load i32, i32* %_address_ptr_in_parent_stack_117
  %279 = zext i32 %_new_load_118 to i64, !mcsema_real_eip !34
  store i64 %279, i64* %RAX_val, !mcsema_real_eip !34
  br i1 %270, label %block_0x3f, label %block_0x4f, !mcsema_real_eip !35

block_0x4f:                                       ; preds = %277
  %280 = add i32 %_new_load_118, -10
  %281 = xor i32 %280, %_new_load_118, !mcsema_real_eip !36
  %282 = and i32 %281, 16, !mcsema_real_eip !36
  %283 = icmp ne i32 %282, 0, !mcsema_real_eip !36
  store i1 %283, i1* %AF_val, !mcsema_real_eip !36
  %284 = trunc i32 %280 to i8, !mcsema_real_eip !36
  %285 = tail call i8 @llvm.ctpop.i8(i8 %284), !mcsema_real_eip !36
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  store i1 %287, i1* %PF_val, !mcsema_real_eip !36
  %288 = icmp eq i32 %280, 0, !mcsema_real_eip !36
  store i1 %288, i1* %ZF_val, !mcsema_real_eip !36
  %289 = icmp slt i32 %280, 0
  store i1 %289, i1* %SF_val, !mcsema_real_eip !36
  %290 = icmp ult i32 %_new_load_118, 10, !mcsema_real_eip !36
  store i1 %290, i1* %CF_val, !mcsema_real_eip !36
  %291 = and i32 %281, %_new_load_118, !mcsema_real_eip !36
  %292 = icmp slt i32 %291, 0
  store i1 %292, i1* %OF_val, !mcsema_real_eip !36
  %293 = zext i32 %280 to i64, !mcsema_real_eip !36
  store i64 %293, i64* %RAX_val, !mcsema_real_eip !36
  %294 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %295 = add i64 %294, -12, !mcsema_real_eip !37
  %296 = inttoptr i64 %295 to i64*, !mcsema_real_eip !37
  %297 = bitcast i64* %296 to i32*
  store i32 %280, i32* %297, !mcsema_real_eip !37
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %299 = add i64 %298, -4, !mcsema_real_eip !38
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !38
  %301 = bitcast i64* %300 to i32*
  %_head_p2i_119 = ptrtoint i32* %301 to i64
  %_offset_above_rbp_120 = sub i64 %_head_p2i_119, %_local_stack_end_
  %_address_in_parent_stack_121 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  %_cond0_122 = icmp ugt i64 %_head_p2i_119, %_local_stack_end_
  %_cond1_123 = icmp ugt i64 %_head_p2i_119, %_parent_stack_end_ptr_
  %_cond2_124 = icmp ult i64 %_head_p2i_119, %_parent_stack_start_ptr_
  %_cond3_125 = or i1 %_cond1_123, %_cond2_124
  %_cond4_126 = icmp ule i64 %_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond5_127 = and i1 %_cond0_122, %_cond3_125
  %_cond6_128 = and i1 %_cond5_127, %_cond4_126
  br i1 %_cond6_128, label %302, label %303

; <label>:302:                                    ; preds = %block_0x4f
  %_address_in_parent_stack_129 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  br label %303

; <label>:303:                                    ; preds = %block_0x4f, %302
  %304 = phi i64 [ %_head_p2i_119, %block_0x4f ], [ %_address_in_parent_stack_129, %302 ]
  %_address_ptr_in_parent_stack_130 = inttoptr i64 %304 to i32*
  %_new_load_131 = load i32, i32* %_address_ptr_in_parent_stack_130
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_131, i32 -1)
  %305 = extractvalue { i32, i1 } %uadd73, 0
  %306 = xor i32 %305, %_new_load_131, !mcsema_real_eip !39
  %307 = and i32 %306, 16
  %308 = icmp eq i32 %307, 0
  store i1 %308, i1* %AF_val, !mcsema_real_eip !39
  %309 = icmp slt i32 %305, 0
  store i1 %309, i1* %SF_val, !mcsema_real_eip !39
  %310 = icmp eq i32 %305, 0, !mcsema_real_eip !39
  store i1 %310, i1* %ZF_val, !mcsema_real_eip !39
  %311 = and i32 %306, %_new_load_131, !mcsema_real_eip !39
  %312 = icmp slt i32 %311, 0
  store i1 %312, i1* %OF_val, !mcsema_real_eip !39
  %313 = trunc i32 %305 to i8, !mcsema_real_eip !39
  %314 = tail call i8 @llvm.ctpop.i8(i8 %313), !mcsema_real_eip !39
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  store i1 %316, i1* %PF_val, !mcsema_real_eip !39
  %317 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %317, i1* %CF_val, !mcsema_real_eip !39
  %318 = zext i32 %305 to i64, !mcsema_real_eip !39
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !39
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %320 = add i64 %319, -4, !mcsema_real_eip !40
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !40
  %322 = bitcast i64* %321 to i32*
  store i32 %305, i32* %322, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x3f:                                       ; preds = %277
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_118, i32 10)
  %323 = extractvalue { i32, i1 } %uadd71, 0
  %324 = xor i32 %323, %_new_load_118, !mcsema_real_eip !42
  %325 = and i32 %324, 16, !mcsema_real_eip !42
  %326 = icmp ne i32 %325, 0, !mcsema_real_eip !42
  store i1 %326, i1* %AF_val, !mcsema_real_eip !42
  %327 = icmp slt i32 %323, 0
  store i1 %327, i1* %SF_val, !mcsema_real_eip !42
  %328 = icmp eq i32 %323, 0, !mcsema_real_eip !42
  store i1 %328, i1* %ZF_val, !mcsema_real_eip !42
  %329 = xor i32 %_new_load_118, -2147483648, !mcsema_real_eip !42
  %330 = and i32 %324, %329, !mcsema_real_eip !42
  %331 = icmp slt i32 %330, 0
  store i1 %331, i1* %OF_val, !mcsema_real_eip !42
  %332 = trunc i32 %323 to i8, !mcsema_real_eip !42
  %333 = tail call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !42
  %334 = and i8 %333, 1
  %335 = icmp eq i8 %334, 0
  store i1 %335, i1* %PF_val, !mcsema_real_eip !42
  %336 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %336, i1* %CF_val, !mcsema_real_eip !42
  %337 = zext i32 %323 to i64, !mcsema_real_eip !42
  store i64 %337, i64* %RAX_val, !mcsema_real_eip !42
  %338 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %339 = add i64 %338, -16, !mcsema_real_eip !43
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !43
  %341 = bitcast i64* %340 to i32*
  store i32 %323, i32* %341, !mcsema_real_eip !43
  %342 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %343 = add i64 %342, -4, !mcsema_real_eip !38
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !38
  %345 = bitcast i64* %344 to i32*
  %_head_p2i_132 = ptrtoint i32* %345 to i64
  %_offset_above_rbp_133 = sub i64 %_head_p2i_132, %_local_stack_end_
  %_address_in_parent_stack_134 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  %_cond0_135 = icmp ugt i64 %_head_p2i_132, %_local_stack_end_
  %_cond1_136 = icmp ugt i64 %_head_p2i_132, %_parent_stack_end_ptr_
  %_cond2_137 = icmp ult i64 %_head_p2i_132, %_parent_stack_start_ptr_
  %_cond3_138 = or i1 %_cond1_136, %_cond2_137
  %_cond4_139 = icmp ule i64 %_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond5_140 = and i1 %_cond0_135, %_cond3_138
  %_cond6_141 = and i1 %_cond5_140, %_cond4_139
  br i1 %_cond6_141, label %346, label %347

; <label>:346:                                    ; preds = %block_0x3f
  %_address_in_parent_stack_142 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  br label %347

; <label>:347:                                    ; preds = %block_0x3f, %346
  %348 = phi i64 [ %_head_p2i_132, %block_0x3f ], [ %_address_in_parent_stack_142, %346 ]
  %_address_ptr_in_parent_stack_143 = inttoptr i64 %348 to i32*
  %_new_load_144 = load i32, i32* %_address_ptr_in_parent_stack_143
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_144, i32 -1)
  %349 = extractvalue { i32, i1 } %uadd72, 0
  %350 = xor i32 %349, %_new_load_144, !mcsema_real_eip !39
  %351 = and i32 %350, 16
  %352 = icmp eq i32 %351, 0
  store i1 %352, i1* %AF_val, !mcsema_real_eip !39
  %353 = icmp slt i32 %349, 0
  store i1 %353, i1* %SF_val, !mcsema_real_eip !39
  %354 = icmp eq i32 %349, 0, !mcsema_real_eip !39
  store i1 %354, i1* %ZF_val, !mcsema_real_eip !39
  %355 = and i32 %350, %_new_load_144, !mcsema_real_eip !39
  %356 = icmp slt i32 %355, 0
  store i1 %356, i1* %OF_val, !mcsema_real_eip !39
  %357 = trunc i32 %349 to i8, !mcsema_real_eip !39
  %358 = tail call i8 @llvm.ctpop.i8(i8 %357), !mcsema_real_eip !39
  %359 = and i8 %358, 1
  %360 = icmp eq i8 %359, 0
  store i1 %360, i1* %PF_val, !mcsema_real_eip !39
  %361 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %361, i1* %CF_val, !mcsema_real_eip !39
  %362 = zext i32 %349 to i64, !mcsema_real_eip !39
  store i64 %362, i64* %RAX_val, !mcsema_real_eip !39
  %363 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %364 = add i64 %363, -4, !mcsema_real_eip !40
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !40
  %366 = bitcast i64* %365 to i32*
  store i32 %349, i32* %366, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x13:                                       ; preds = %347, %303
  %367 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %368 = add i64 %367, -4, !mcsema_real_eip !21
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !21
  %370 = bitcast i64* %369 to i32*
  %_head_p2i_145 = ptrtoint i32* %370 to i64
  %_offset_above_rbp_146 = sub i64 %_head_p2i_145, %_local_stack_end_
  %_address_in_parent_stack_147 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  %_cond0_148 = icmp ugt i64 %_head_p2i_145, %_local_stack_end_
  %_cond1_149 = icmp ugt i64 %_head_p2i_145, %_parent_stack_end_ptr_
  %_cond2_150 = icmp ult i64 %_head_p2i_145, %_parent_stack_start_ptr_
  %_cond3_151 = or i1 %_cond1_149, %_cond2_150
  %_cond4_152 = icmp ule i64 %_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond5_153 = and i1 %_cond0_148, %_cond3_151
  %_cond6_154 = and i1 %_cond5_153, %_cond4_152
  br i1 %_cond6_154, label %371, label %372

; <label>:371:                                    ; preds = %block_0x13
  %_address_in_parent_stack_155 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  br label %372

; <label>:372:                                    ; preds = %block_0x13, %371
  %373 = phi i64 [ %_head_p2i_145, %block_0x13 ], [ %_address_in_parent_stack_155, %371 ]
  %_address_ptr_in_parent_stack_156 = inttoptr i64 %373 to i32*
  %_new_load_157 = load i32, i32* %_address_ptr_in_parent_stack_156
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %374 = trunc i32 %_new_load_157 to i8, !mcsema_real_eip !21
  %375 = tail call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !21
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF_val, !mcsema_real_eip !21
  %378 = icmp eq i32 %_new_load_157, 0, !mcsema_real_eip !21
  store i1 %378, i1* %ZF_val, !mcsema_real_eip !21
  %379 = icmp slt i32 %_new_load_157, 0
  store i1 %379, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %379, label %block_0x6a.loopexit, label %block_0x20, !mcsema_real_eip !22
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 113, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 116, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = !{i64 120, [16 x i8] c"\09movl\09$10, %edi\00"}
!6 = !{i64 125, [16 x i8] c"\09movl\09$20, %esi\00"}
!7 = !{i64 130, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!8 = !{i64 137, [12 x i8] c"\09callq\09-142\00"}
!9 = !{i64 142, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!10 = !{i64 145, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!11 = !{i64 148, [16 x i8] c"\09addq\09$16, %rsp\00"}
!12 = !{i64 152, [11 x i8] c"\09popq\09%rbp\00"}
!13 = !{i64 153, [6 x i8] c"\09retq\00"}
!14 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!15 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!16 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!17 = !{i64 7, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!18 = !{i64 10, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!19 = !{i64 13, [21 x i8] c"\09addl\09-8(%rbp), %esi\00"}
!20 = !{i64 16, [22 x i8] c"\09movl\09%esi, -12(%rbp)\00"}
!21 = !{i64 19, [19 x i8] c"\09cmpl\09$0, -4(%rbp)\00"}
!22 = !{i64 26, [7 x i8] c"\09jl\0974\00"}
!23 = !{i64 106, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!24 = !{i64 109, [11 x i8] c"\09popq\09%rbp\00"}
!25 = !{i64 110, [6 x i8] c"\09retq\00"}
!26 = !{i64 32, [15 x i8] c"\09movl\09$2, %eax\00"}
!27 = !{i64 37, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!28 = !{i64 40, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!29 = !{i64 43, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!30 = !{i64 45, [6 x i8] c"\09cltd\00"}
!31 = !{i64 46, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!32 = !{i64 49, [12 x i8] c"\09idivl\09%ecx\00"}
!33 = !{i64 51, [15 x i8] c"\09cmpl\09$0, %edx\00"}
!34 = !{i64 79, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!35 = !{i64 57, [8 x i8] c"\09jne\0916\00"}
!36 = !{i64 82, [16 x i8] c"\09subl\09$10, %eax\00"}
!37 = !{i64 87, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!38 = !{i64 90, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!39 = !{i64 93, [24 x i8] c"\09addl\09$4294967295, %eax\00"}
!40 = !{i64 98, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!41 = !{i64 101, [9 x i8] c"\09jmp\09-87\00"}
!42 = !{i64 66, [16 x i8] c"\09addl\09$10, %eax\00"}
!43 = !{i64 71, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
