; ModuleID = 'Output/test_21.clang.trans.bc'
source_filename = "Output/test_21.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
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
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -16
  %87 = add i64 %86, -16, !mcsema_real_eip !5
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !5
  %89 = load i64, i64* %RSI_val, !mcsema_real_eip !5
  store i64 %89, i64* %_allin_new_bt_5, !mcsema_real_eip !5
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -16
  %91 = add i64 %90, -16, !mcsema_real_eip !6
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !6
  %93 = load i64, i64* %_allin_new_bt_8, !mcsema_real_eip !6
  store i64 %93, i64* %RSI_val, !mcsema_real_eip !6
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !7
  %95 = load i64, i64* %94, !mcsema_real_eip !7
  store i64 %95, i64* %RSI_val, !mcsema_real_eip !7
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %96 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -24
  %97 = add i64 %96, -24, !mcsema_real_eip !8
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !8
  store i64 %95, i64* %_allin_new_bt_11, !mcsema_real_eip !8
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -4
  %100 = add i64 %99, -4, !mcsema_real_eip !9
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !9
  %102 = bitcast i64* %_allin_new_bt_14 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !9
  %104 = zext i32 %103 to i64, !mcsema_real_eip !9
  store i64 %104, i64* %RDI_val, !mcsema_real_eip !9
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -24
  %106 = add i64 %105, -24, !mcsema_real_eip !10
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !10
  %108 = load i64, i64* %_allin_new_bt_17, !mcsema_real_eip !10
  store i64 %104, i64* %RDI_val, !mcsema_real_eip !11
  store i64 %104, i64* %RCX_val, !mcsema_real_eip !12
  %109 = and i64 %104, 31, !mcsema_real_eip !13
  %110 = add nsw i64 %104, -1
  %111 = icmp ne i64 %109, 0, !mcsema_real_eip !13
  %112 = select i1 %111, i64 %110, i64 0, !mcsema_real_eip !13
  %113 = zext i1 %111 to i64
  %114 = lshr i64 %108, %112, !mcsema_real_eip !13
  %115 = and i64 %114, 1, !mcsema_real_eip !13
  %116 = icmp ne i64 %115, 0, !mcsema_real_eip !13
  %117 = load i1, i1* %CF_val, !mcsema_real_eip !13
  %118 = select i1 %111, i1 %116, i1 %117, !mcsema_real_eip !13
  %119 = lshr i64 %114, %113, !mcsema_real_eip !13
  %120 = load i1, i1* %OF_val, !mcsema_real_eip !13
  %not. = icmp ne i64 %109, 1
  %121 = and i1 %120, %not.
  store i1 %121, i1* %OF_val, !mcsema_real_eip !13
  store i1 %118, i1* %CF_val, !mcsema_real_eip !13
  %122 = load i1, i1* %ZF_val, !mcsema_real_eip !13
  %123 = icmp eq i64 %119, 0, !mcsema_real_eip !13
  %124 = select i1 %111, i1 %123, i1 %122, !mcsema_real_eip !13
  store i1 %124, i1* %ZF_val, !mcsema_real_eip !13
  %125 = load i1, i1* %SF_val, !mcsema_real_eip !13
  %126 = icmp slt i64 %119, 0, !mcsema_real_eip !13
  %127 = select i1 %111, i1 %126, i1 %125, !mcsema_real_eip !13
  store i1 %127, i1* %SF_val, !mcsema_real_eip !13
  %128 = load i1, i1* %PF_val, !mcsema_real_eip !13
  %129 = trunc i64 %119 to i8, !mcsema_real_eip !13
  %130 = tail call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !13
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %111, i1 %132, i1 %128, !mcsema_real_eip !13
  store i1 %133, i1* %PF_val, !mcsema_real_eip !13
  store i64 %119, i64* %RSI_val, !mcsema_real_eip !13
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -24
  %135 = add i64 %134, -24, !mcsema_real_eip !14
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !14
  store i64 %119, i64* %_allin_new_bt_20, !mcsema_real_eip !14
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %137 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -24
  %138 = add i64 %137, -24, !mcsema_real_eip !15
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !15
  %140 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !15
  store i64 %140, i64* %RSI_val, !mcsema_real_eip !15
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -16
  %141 = add i64 %137, -16, !mcsema_real_eip !16
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !16
  %143 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !16
  store i64 %143, i64* %RAX_val, !mcsema_real_eip !16
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !17
  store i64 %140, i64* %144, !mcsema_real_eip !17
  %_load_rsp_ptr_26 = load i8*, i8** %_RSP_ptr_
  %145 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_allin_new_bt_27 = bitcast i8* %_load_rsp_ptr_26 to i64*
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !18
  %147 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !18
  %_new_int2ptr_ = inttoptr i64 %147 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %147, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_28 = getelementptr i8, i8* %_load_rsp_ptr_26, i64 16
  %148 = add i64 %145, 16, !mcsema_real_eip !19
  store volatile i8* %_new_gep_28, i8** %_RSP_ptr_
  store i64 %148, i64* %RSP_val, !mcsema_real_eip !19
  %149 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %149, i64* %RAX, !mcsema_real_eip !19
  %150 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %150, i64* %RBX, !mcsema_real_eip !19
  %151 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %151, i64* %RCX, !mcsema_real_eip !19
  %152 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %152, i64* %RDX, !mcsema_real_eip !19
  %153 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %153, i64* %RSI, !mcsema_real_eip !19
  %154 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %154, i64* %RDI, !mcsema_real_eip !19
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %155 = load i64, i64* %RSP_val, !mcsema_real_eip !19
  %_new_ptr2int_30 = ptrtoint i8* %_load_rsp_ptr_29 to i64
  store volatile i64 %_new_ptr2int_30, i64* %RSP
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_ptr2int_32 = ptrtoint i8* %_load_rbp_ptr_31 to i64
  store volatile i64 %_new_ptr2int_32, i64* %RBP
  %157 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %157, i64* %R8, !mcsema_real_eip !19
  %158 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %158, i64* %R9, !mcsema_real_eip !19
  %159 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %159, i64* %R10, !mcsema_real_eip !19
  %160 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %160, i64* %R11, !mcsema_real_eip !19
  %161 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %161, i64* %R12, !mcsema_real_eip !19
  %162 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %162, i64* %R13, !mcsema_real_eip !19
  %163 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %163, i64* %R14, !mcsema_real_eip !19
  %164 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %164, i64* %R15, !mcsema_real_eip !19
  %165 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %165, i64* %RIP, !mcsema_real_eip !19
  %166 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %166, i1* %CF, align 1, !mcsema_real_eip !19
  %167 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !19
  %168 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %168, i1* %AF, align 1, !mcsema_real_eip !19
  %169 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %169, i1* %ZF, align 1, !mcsema_real_eip !19
  %170 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %170, i1* %SF, align 1, !mcsema_real_eip !19
  %171 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %171, i1* %OF, align 1, !mcsema_real_eip !19
  %172 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %172, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %173 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %173, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %174 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %174, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %175 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %175, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %176 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %176, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %177 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %177, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %178 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %178, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %179 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %179, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %180 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %180, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %181 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %181, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %182 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %182, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %183 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %183, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %184 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %184, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %185 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %185, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %186 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %186, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %187 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %187, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %188 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %188, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %189 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %189, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %190 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %190, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %191 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %191, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %192 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %192, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %193 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %193, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %194 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %194, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %195 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %195, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %196 = load i64, i64* %53, align 4
  store i64 %196, i64* %52, align 4
  %197 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %197, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %198 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %198, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %199 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %199, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %200 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %200, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %201 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %201, i128* %XMM0, align 1, !mcsema_real_eip !19
  %202 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %202, i128* %XMM1, align 1, !mcsema_real_eip !19
  %203 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %203, i128* %XMM2, align 1, !mcsema_real_eip !19
  %204 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %204, i128* %XMM3, align 1, !mcsema_real_eip !19
  %205 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %205, i128* %XMM4, align 1, !mcsema_real_eip !19
  %206 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %206, i128* %XMM5, align 1, !mcsema_real_eip !19
  %207 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %207, i128* %XMM6, align 1, !mcsema_real_eip !19
  %208 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %208, i128* %XMM7, align 1, !mcsema_real_eip !19
  %209 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %209, i128* %XMM8, align 1, !mcsema_real_eip !19
  %210 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %210, i128* %XMM9, align 1, !mcsema_real_eip !19
  %211 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %211, i128* %XMM10, align 1, !mcsema_real_eip !19
  %212 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %212, i128* %XMM11, align 1, !mcsema_real_eip !19
  %213 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %213, i128* %XMM12, align 1, !mcsema_real_eip !19
  %214 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %214, i128* %XMM13, align 1, !mcsema_real_eip !19
  %215 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %215, i128* %XMM14, align 1, !mcsema_real_eip !19
  %216 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %216, i128* %XMM15, align 1, !mcsema_real_eip !19
  %217 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %217, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %218 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %218, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
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

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!5 = !{i64 7, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!6 = !{i64 11, [22 x i8] c"\09movq\09-16(%rbp), %rsi\00"}
!7 = !{i64 15, [19 x i8] c"\09movq\09(%rsi), %rsi\00"}
!8 = !{i64 18, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!9 = !{i64 22, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!10 = !{i64 25, [22 x i8] c"\09movq\09-24(%rbp), %rsi\00"}
!11 = !{i64 29, [17 x i8] c"\09movl\09%edi, %edi\00"}
!12 = !{i64 31, [17 x i8] c"\09movl\09%edi, %ecx\00"}
!13 = !{i64 33, [16 x i8] c"\09shrq\09%cl, %rsi\00"}
!14 = !{i64 36, [22 x i8] c"\09movq\09%rsi, -24(%rbp)\00"}
!15 = !{i64 40, [22 x i8] c"\09movq\09-24(%rbp), %rsi\00"}
!16 = !{i64 44, [22 x i8] c"\09movq\09-16(%rbp), %rax\00"}
!17 = !{i64 48, [19 x i8] c"\09movq\09%rsi, (%rax)\00"}
!18 = !{i64 51, [11 x i8] c"\09popq\09%rbp\00"}
!19 = !{i64 52, [6 x i8] c"\09retq\00"}
