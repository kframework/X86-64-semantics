; ModuleID = 'Output/test_2.clang.trans.bc'
source_filename = "Output/test_2.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -40
  %81 = add i64 %78, -40
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16, !mcsema_real_eip !4
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !4
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
  %91 = icmp ult i64 %79, 32, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  store i64 30, i64* %RDX_val, !mcsema_real_eip !7
  store i64 40, i64* %RCX_val, !mcsema_real_eip !8
  store i64 50, i64* %R8_val, !mcsema_real_eip !9
  store i64 60, i64* %R9_val, !mcsema_real_eip !10
  store i64 70, i64* %RAX_val, !mcsema_real_eip !11
  store i64 80, i64* %R10_val, !mcsema_real_eip !12
  %_load_rbp_ptr_2 = load i8*, i8** %_RBP_ptr_
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_3 = getelementptr i8, i8* %_load_rbp_ptr_2, i64 -4
  %95 = add i64 %94, -4, !mcsema_real_eip !13
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !13
  %97 = bitcast i64* %_allin_new_bt_4 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !13
  %_load_rsp_ptr_5 = load i8*, i8** %_RSP_ptr_
  %98 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_allin_new_bt_6 = bitcast i8* %_load_rsp_ptr_5 to i64*
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !14
  %100 = bitcast i64* %_allin_new_bt_6 to i32*
  store i32 70, i32* %100, !mcsema_real_eip !14
  %_load_rsp_ptr_7 = load i8*, i8** %_RSP_ptr_
  %101 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %_new_gep_8 = getelementptr i8, i8* %_load_rsp_ptr_7, i64 8
  %102 = add i64 %101, 8, !mcsema_real_eip !15
  %_allin_new_bt_9 = bitcast i8* %_new_gep_8 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !15
  %104 = bitcast i64* %_allin_new_bt_9 to i32*
  store i32 80, i32* %104, !mcsema_real_eip !15
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -12
  %106 = add i64 %105, -12, !mcsema_real_eip !16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !16
  %108 = load i64, i64* %R10_val, !mcsema_real_eip !16
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !16
  %110 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !16
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %112 = add i64 %111, -16, !mcsema_real_eip !17
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !17
  %114 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !17
  %116 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !17
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %118 = add i64 %117, -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !18
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %118, i64* %RSP_val, !mcsema_real_eip !18
  %120 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  store i64 %120, i64* %RAX, !mcsema_real_eip !18
  %121 = load i64, i64* %RBX_val, !mcsema_real_eip !18
  store i64 %121, i64* %RBX, !mcsema_real_eip !18
  %122 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  store i64 %122, i64* %RCX, !mcsema_real_eip !18
  %123 = load i64, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %123, i64* %RDX, !mcsema_real_eip !18
  %124 = load i64, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %124, i64* %RSI, !mcsema_real_eip !18
  %125 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  store i64 %125, i64* %RDI, !mcsema_real_eip !18
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %126 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_new_ptr2int_20 = ptrtoint i8* %_load_rsp_ptr_19 to i64
  store volatile i64 %_new_ptr2int_20, i64* %RSP
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %127 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_ptr2int_22 = ptrtoint i8* %_load_rbp_ptr_21 to i64
  store volatile i64 %_new_ptr2int_22, i64* %RBP
  %128 = load i64, i64* %R8_val, !mcsema_real_eip !18
  store i64 %128, i64* %R8, !mcsema_real_eip !18
  %129 = load i64, i64* %R9_val, !mcsema_real_eip !18
  store i64 %129, i64* %R9, !mcsema_real_eip !18
  %130 = load i64, i64* %R10_val, !mcsema_real_eip !18
  store i64 %130, i64* %R10, !mcsema_real_eip !18
  %131 = load i64, i64* %R11_val, !mcsema_real_eip !18
  store i64 %131, i64* %R11, !mcsema_real_eip !18
  %132 = load i64, i64* %R12_val, !mcsema_real_eip !18
  store i64 %132, i64* %R12, !mcsema_real_eip !18
  %133 = load i64, i64* %R13_val, !mcsema_real_eip !18
  store i64 %133, i64* %R13, !mcsema_real_eip !18
  %134 = load i64, i64* %R14_val, !mcsema_real_eip !18
  store i64 %134, i64* %R14, !mcsema_real_eip !18
  %135 = load i64, i64* %R15_val, !mcsema_real_eip !18
  store i64 %135, i64* %R15, !mcsema_real_eip !18
  %136 = load i64, i64* %RIP_val, !mcsema_real_eip !18
  store i64 %136, i64* %RIP, !mcsema_real_eip !18
  %137 = load i1, i1* %CF_val, !mcsema_real_eip !18
  store i1 %137, i1* %CF, align 1, !mcsema_real_eip !18
  %138 = load i1, i1* %PF_val, !mcsema_real_eip !18
  store i1 %138, i1* %PF, align 1, !mcsema_real_eip !18
  %139 = load i1, i1* %AF_val, !mcsema_real_eip !18
  store i1 %139, i1* %AF, align 1, !mcsema_real_eip !18
  %140 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !18
  %141 = load i1, i1* %SF_val, !mcsema_real_eip !18
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !18
  %142 = load i1, i1* %OF_val, !mcsema_real_eip !18
  store i1 %142, i1* %OF, align 1, !mcsema_real_eip !18
  %143 = load i1, i1* %DF_val, !mcsema_real_eip !18
  store i1 %143, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %144 = load i1, i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %144, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %145 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %145, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %146 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %146, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %147 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %147, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %148 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %148, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %149 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %149, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %150 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %150, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %151 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %151, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %152 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %152, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %153 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %153, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %154 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %154, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %155 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %155, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %156 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %156, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %157 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %157, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %158 = load i1, i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %158, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %159 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %159, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %160 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %160, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %161 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %161, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %162 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %162, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %163 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %163, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %164 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %164, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %165 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %165, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %166 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %166, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %167 = load i64, i64* %53, align 4
  store i64 %167, i64* %52, align 4
  %168 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %168, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %169 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %169, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %170 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %170, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %171 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %171, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %172 = load i128, i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %172, i128* %XMM0, align 1, !mcsema_real_eip !18
  %173 = load i128, i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %173, i128* %XMM1, align 1, !mcsema_real_eip !18
  %174 = load i128, i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %174, i128* %XMM2, align 1, !mcsema_real_eip !18
  %175 = load i128, i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %175, i128* %XMM3, align 1, !mcsema_real_eip !18
  %176 = load i128, i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %176, i128* %XMM4, align 1, !mcsema_real_eip !18
  %177 = load i128, i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %177, i128* %XMM5, align 1, !mcsema_real_eip !18
  %178 = load i128, i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %178, i128* %XMM6, align 1, !mcsema_real_eip !18
  %179 = load i128, i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %179, i128* %XMM7, align 1, !mcsema_real_eip !18
  %180 = load i128, i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %180, i128* %XMM8, align 1, !mcsema_real_eip !18
  %181 = load i128, i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %181, i128* %XMM9, align 1, !mcsema_real_eip !18
  %182 = load i128, i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %182, i128* %XMM10, align 1, !mcsema_real_eip !18
  %183 = load i128, i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %183, i128* %XMM11, align 1, !mcsema_real_eip !18
  %184 = load i128, i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %184, i128* %XMM12, align 1, !mcsema_real_eip !18
  %185 = load i128, i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %185, i128* %XMM13, align 1, !mcsema_real_eip !18
  %186 = load i128, i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %186, i128* %XMM14, align 1, !mcsema_real_eip !18
  %187 = load i128, i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %187, i128* %XMM15, align 1, !mcsema_real_eip !18
  %188 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %188, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %189 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %189, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_37)
  %190 = load i64, i64* %RAX, !mcsema_real_eip !18
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !18
  %191 = load i64, i64* %RBX, !mcsema_real_eip !18
  store i64 %191, i64* %RBX_val, !mcsema_real_eip !18
  %192 = load i64, i64* %RCX, !mcsema_real_eip !18
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !18
  %193 = load i64, i64* %RDX, !mcsema_real_eip !18
  store i64 %193, i64* %RDX_val, !mcsema_real_eip !18
  %194 = load i64, i64* %RSI, !mcsema_real_eip !18
  store i64 %194, i64* %RSI_val, !mcsema_real_eip !18
  %195 = load i64, i64* %RDI, !mcsema_real_eip !18
  store i64 %195, i64* %RDI_val, !mcsema_real_eip !18
  %196 = load i64, i64* %RSP, !mcsema_real_eip !18
  store i64 %196, i64* %RSP_val, !mcsema_real_eip !18
  %197 = load i64, i64* %RBP, !mcsema_real_eip !18
  store i64 %197, i64* %RBP_val, !mcsema_real_eip !18
  %198 = load i64, i64* %R8, !mcsema_real_eip !18
  store i64 %198, i64* %R8_val, !mcsema_real_eip !18
  %199 = load i64, i64* %R9, !mcsema_real_eip !18
  store i64 %199, i64* %R9_val, !mcsema_real_eip !18
  %200 = load i64, i64* %R10, !mcsema_real_eip !18
  store i64 %200, i64* %R10_val, !mcsema_real_eip !18
  %201 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %201, i64* %R11_val, !mcsema_real_eip !18
  %202 = load i64, i64* %R12, !mcsema_real_eip !18
  store i64 %202, i64* %R12_val, !mcsema_real_eip !18
  %203 = load i64, i64* %R13, !mcsema_real_eip !18
  store i64 %203, i64* %R13_val, !mcsema_real_eip !18
  %204 = load i64, i64* %R14, !mcsema_real_eip !18
  store i64 %204, i64* %R14_val, !mcsema_real_eip !18
  %205 = load i64, i64* %R15, !mcsema_real_eip !18
  store i64 %205, i64* %R15_val, !mcsema_real_eip !18
  %206 = load i64, i64* %RIP, !mcsema_real_eip !18
  store i64 %206, i64* %RIP_val, !mcsema_real_eip !18
  %207 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %207, i1* %CF_val, !mcsema_real_eip !18
  %208 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %208, i1* %PF_val, !mcsema_real_eip !18
  %209 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %209, i1* %AF_val, !mcsema_real_eip !18
  %210 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %210, i1* %ZF_val, !mcsema_real_eip !18
  %211 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %211, i1* %SF_val, !mcsema_real_eip !18
  %212 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %212, i1* %OF_val, !mcsema_real_eip !18
  %213 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %213, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %214 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %214, i1* %FPU_B_val, !mcsema_real_eip !18
  %215 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %215, i1* %FPU_C3_val, !mcsema_real_eip !18
  %216 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %216, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %217 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %217, i1* %FPU_C2_val, !mcsema_real_eip !18
  %218 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %218, i1* %FPU_C1_val, !mcsema_real_eip !18
  %219 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %219, i1* %FPU_C0_val, !mcsema_real_eip !18
  %220 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %220, i1* %FPU_ES_val, !mcsema_real_eip !18
  %221 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %221, i1* %FPU_SF_val, !mcsema_real_eip !18
  %222 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %222, i1* %FPU_PE_val, !mcsema_real_eip !18
  %223 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %223, i1* %FPU_UE_val, !mcsema_real_eip !18
  %224 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %224, i1* %FPU_OE_val, !mcsema_real_eip !18
  %225 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %225, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %226 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %226, i1* %FPU_DE_val, !mcsema_real_eip !18
  %227 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %227, i1* %FPU_IE_val, !mcsema_real_eip !18
  %228 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %228, i1* %FPU_X_val, !mcsema_real_eip !18
  %229 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %229, i2* %FPU_RC_val, !mcsema_real_eip !18
  %230 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %230, i2* %FPU_PC_val, !mcsema_real_eip !18
  %231 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %231, i1* %FPU_PM_val, !mcsema_real_eip !18
  %232 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %232, i1* %FPU_UM_val, !mcsema_real_eip !18
  %233 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %233, i1* %FPU_OM_val, !mcsema_real_eip !18
  %234 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %234, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %235 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %235, i1* %FPU_DM_val, !mcsema_real_eip !18
  %236 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %236, i1* %FPU_IM_val, !mcsema_real_eip !18
  %237 = load i64, i64* %52, align 4
  store i64 %237, i64* %53, align 4
  %238 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %238, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %239 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %239, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %240 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %240, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %241 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %241, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %242 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %242, i128* %XMM0_val, !mcsema_real_eip !18
  %243 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %243, i128* %XMM1_val, !mcsema_real_eip !18
  %244 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %244, i128* %XMM2_val, !mcsema_real_eip !18
  %245 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %245, i128* %XMM3_val, !mcsema_real_eip !18
  %246 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %246, i128* %XMM4_val, !mcsema_real_eip !18
  %247 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %247, i128* %XMM5_val, !mcsema_real_eip !18
  %248 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %248, i128* %XMM6_val, !mcsema_real_eip !18
  %249 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %249, i128* %XMM7_val, !mcsema_real_eip !18
  %250 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %250, i128* %XMM8_val, !mcsema_real_eip !18
  %251 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %251, i128* %XMM9_val, !mcsema_real_eip !18
  %252 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %252, i128* %XMM10_val, !mcsema_real_eip !18
  %253 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %253, i128* %XMM11_val, !mcsema_real_eip !18
  %254 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %254, i128* %XMM12_val, !mcsema_real_eip !18
  %255 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %255, i128* %XMM13_val, !mcsema_real_eip !18
  %256 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %256, i128* %XMM14_val, !mcsema_real_eip !18
  %257 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %257, i128* %XMM15_val, !mcsema_real_eip !18
  %258 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %258, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %259 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %259, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %260 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -8
  %261 = add i64 %260, -8, !mcsema_real_eip !19
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !19
  %263 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  %264 = trunc i64 %263 to i32, !mcsema_real_eip !19
  %265 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 %264, i32* %265, !mcsema_real_eip !19
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %266 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -8
  %267 = add i64 %266, -8, !mcsema_real_eip !20
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !20
  %269 = bitcast i64* %_allin_new_bt_28 to i32*
  %270 = load i32, i32* %269, !mcsema_real_eip !20
  %271 = zext i32 %270 to i64, !mcsema_real_eip !20
  store i64 %271, i64* %RAX_val, !mcsema_real_eip !20
  %_load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_
  %272 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_ptr2int_30 = ptrtoint i8* %_load_rsp_ptr_29 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_30, i64 32)
  %273 = extractvalue { i64, i1 } %uadd, 0
  %274 = xor i64 %273, %_new_ptr2int_30, !mcsema_real_eip !21
  %275 = and i64 %274, 16, !mcsema_real_eip !21
  %276 = icmp ne i64 %275, 0, !mcsema_real_eip !21
  store i1 %276, i1* %AF_val, !mcsema_real_eip !21
  %277 = icmp slt i64 %273, 0
  store i1 %277, i1* %SF_val, !mcsema_real_eip !21
  %278 = icmp eq i64 %273, 0, !mcsema_real_eip !21
  store i1 %278, i1* %ZF_val, !mcsema_real_eip !21
  %279 = xor i64 %_new_ptr2int_30, -9223372036854775808, !mcsema_real_eip !21
  %280 = and i64 %274, %279, !mcsema_real_eip !21
  %281 = icmp slt i64 %280, 0
  store i1 %281, i1* %OF_val, !mcsema_real_eip !21
  %282 = trunc i64 %273 to i8, !mcsema_real_eip !21
  %283 = tail call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !21
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  store i1 %285, i1* %PF_val, !mcsema_real_eip !21
  %286 = extractvalue { i64, i1 } %uadd, 1
  store i1 %286, i1* %CF_val, !mcsema_real_eip !21
  %_new_int2ptr_ = inttoptr i64 %273 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %273, i64* %RSP_val, !mcsema_real_eip !21
  %287 = inttoptr i64 %273 to i64*, !mcsema_real_eip !22
  %288 = load i64, i64* %287, !mcsema_real_eip !22
  %_new_int2ptr_31 = inttoptr i64 %288 to i8*
  store volatile i8* %_new_int2ptr_31, i8** %_RBP_ptr_
  store i64 %288, i64* %RBP_val, !mcsema_real_eip !22
  %289 = add i64 %273, 16, !mcsema_real_eip !23
  %_new_int2ptr_32 = inttoptr i64 %289 to i8*
  store volatile i8* %_new_int2ptr_32, i8** %_RSP_ptr_
  store i64 %289, i64* %RSP_val, !mcsema_real_eip !23
  %290 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %290, i64* %RAX, !mcsema_real_eip !23
  %291 = load i64, i64* %RBX_val, !mcsema_real_eip !23
  store i64 %291, i64* %RBX, !mcsema_real_eip !23
  %292 = load i64, i64* %RCX_val, !mcsema_real_eip !23
  store i64 %292, i64* %RCX, !mcsema_real_eip !23
  %293 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  store i64 %293, i64* %RDX, !mcsema_real_eip !23
  %294 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  store i64 %294, i64* %RSI, !mcsema_real_eip !23
  %295 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  store i64 %295, i64* %RDI, !mcsema_real_eip !23
  %_load_rsp_ptr_33 = load i8*, i8** %_RSP_ptr_
  %296 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  %_new_ptr2int_34 = ptrtoint i8* %_load_rsp_ptr_33 to i64
  store volatile i64 %_new_ptr2int_34, i64* %RSP
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_ptr2int_36 = ptrtoint i8* %_load_rbp_ptr_35 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RBP
  %298 = load i64, i64* %R8_val, !mcsema_real_eip !23
  store i64 %298, i64* %R8, !mcsema_real_eip !23
  %299 = load i64, i64* %R9_val, !mcsema_real_eip !23
  store i64 %299, i64* %R9, !mcsema_real_eip !23
  %300 = load i64, i64* %R10_val, !mcsema_real_eip !23
  store i64 %300, i64* %R10, !mcsema_real_eip !23
  %301 = load i64, i64* %R11_val, !mcsema_real_eip !23
  store i64 %301, i64* %R11, !mcsema_real_eip !23
  %302 = load i64, i64* %R12_val, !mcsema_real_eip !23
  store i64 %302, i64* %R12, !mcsema_real_eip !23
  %303 = load i64, i64* %R13_val, !mcsema_real_eip !23
  store i64 %303, i64* %R13, !mcsema_real_eip !23
  %304 = load i64, i64* %R14_val, !mcsema_real_eip !23
  store i64 %304, i64* %R14, !mcsema_real_eip !23
  %305 = load i64, i64* %R15_val, !mcsema_real_eip !23
  store i64 %305, i64* %R15, !mcsema_real_eip !23
  %306 = load i64, i64* %RIP_val, !mcsema_real_eip !23
  store i64 %306, i64* %RIP, !mcsema_real_eip !23
  %307 = load i1, i1* %CF_val, !mcsema_real_eip !23
  store i1 %307, i1* %CF, align 1, !mcsema_real_eip !23
  %308 = load i1, i1* %PF_val, !mcsema_real_eip !23
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !23
  %309 = load i1, i1* %AF_val, !mcsema_real_eip !23
  store i1 %309, i1* %AF, align 1, !mcsema_real_eip !23
  %310 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  store i1 %310, i1* %ZF, align 1, !mcsema_real_eip !23
  %311 = load i1, i1* %SF_val, !mcsema_real_eip !23
  store i1 %311, i1* %SF, align 1, !mcsema_real_eip !23
  %312 = load i1, i1* %OF_val, !mcsema_real_eip !23
  store i1 %312, i1* %OF, align 1, !mcsema_real_eip !23
  %313 = load i1, i1* %DF_val, !mcsema_real_eip !23
  store i1 %313, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %314 = load i1, i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %314, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %315 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %315, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %316 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %316, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %317 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %317, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %318 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %318, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %319 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %319, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %320 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %320, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %321 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %321, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %322 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %322, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %323 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %323, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %324 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %324, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %325 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %325, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %326 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %326, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %327 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %327, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %328 = load i1, i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %328, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %329 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %329, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %330 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %330, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %331 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %331, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %332 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %332, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %333 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %333, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %334 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %334, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %335 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %335, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %336 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %336, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %337 = load i64, i64* %53, align 4
  store i64 %337, i64* %52, align 4
  %338 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %338, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %339 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %339, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %340 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %340, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %341 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %341, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %342 = load i128, i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %342, i128* %XMM0, align 1, !mcsema_real_eip !23
  %343 = load i128, i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %343, i128* %XMM1, align 1, !mcsema_real_eip !23
  %344 = load i128, i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %344, i128* %XMM2, align 1, !mcsema_real_eip !23
  %345 = load i128, i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %345, i128* %XMM3, align 1, !mcsema_real_eip !23
  %346 = load i128, i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %346, i128* %XMM4, align 1, !mcsema_real_eip !23
  %347 = load i128, i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %347, i128* %XMM5, align 1, !mcsema_real_eip !23
  %348 = load i128, i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %348, i128* %XMM6, align 1, !mcsema_real_eip !23
  %349 = load i128, i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %349, i128* %XMM7, align 1, !mcsema_real_eip !23
  %350 = load i128, i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %350, i128* %XMM8, align 1, !mcsema_real_eip !23
  %351 = load i128, i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %351, i128* %XMM9, align 1, !mcsema_real_eip !23
  %352 = load i128, i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %352, i128* %XMM10, align 1, !mcsema_real_eip !23
  %353 = load i128, i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %353, i128* %XMM11, align 1, !mcsema_real_eip !23
  %354 = load i128, i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %354, i128* %XMM12, align 1, !mcsema_real_eip !23
  %355 = load i128, i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %355, i128* %XMM13, align 1, !mcsema_real_eip !23
  %356 = load i128, i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %356, i128* %XMM14, align 1, !mcsema_real_eip !23
  %357 = load i128, i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %357, i128* %XMM15, align 1, !mcsema_real_eip !23
  %358 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %358, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %359 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %359, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !24
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !24
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !24
  %XMM15_val = alloca i128, !mcsema_real_eip !24
  %XMM14_val = alloca i128, !mcsema_real_eip !24
  %XMM13_val = alloca i128, !mcsema_real_eip !24
  %XMM12_val = alloca i128, !mcsema_real_eip !24
  %XMM11_val = alloca i128, !mcsema_real_eip !24
  %XMM10_val = alloca i128, !mcsema_real_eip !24
  %XMM9_val = alloca i128, !mcsema_real_eip !24
  %XMM8_val = alloca i128, !mcsema_real_eip !24
  %XMM7_val = alloca i128, !mcsema_real_eip !24
  %XMM6_val = alloca i128, !mcsema_real_eip !24
  %XMM5_val = alloca i128, !mcsema_real_eip !24
  %XMM4_val = alloca i128, !mcsema_real_eip !24
  %XMM3_val = alloca i128, !mcsema_real_eip !24
  %XMM2_val = alloca i128, !mcsema_real_eip !24
  %XMM1_val = alloca i128, !mcsema_real_eip !24
  %XMM0_val = alloca i128, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !24
  %FPU_IM_val = alloca i1, !mcsema_real_eip !24
  %FPU_DM_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !24
  %FPU_OM_val = alloca i1, !mcsema_real_eip !24
  %FPU_UM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PC_val = alloca i2, !mcsema_real_eip !24
  %FPU_RC_val = alloca i2, !mcsema_real_eip !24
  %FPU_X_val = alloca i1, !mcsema_real_eip !24
  %FPU_IE_val = alloca i1, !mcsema_real_eip !24
  %FPU_DE_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !24
  %FPU_OE_val = alloca i1, !mcsema_real_eip !24
  %FPU_UE_val = alloca i1, !mcsema_real_eip !24
  %FPU_PE_val = alloca i1, !mcsema_real_eip !24
  %FPU_SF_val = alloca i1, !mcsema_real_eip !24
  %FPU_ES_val = alloca i1, !mcsema_real_eip !24
  %FPU_C0_val = alloca i1, !mcsema_real_eip !24
  %FPU_C1_val = alloca i1, !mcsema_real_eip !24
  %FPU_C2_val = alloca i1, !mcsema_real_eip !24
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !24
  %FPU_C3_val = alloca i1, !mcsema_real_eip !24
  %FPU_B_val = alloca i1, !mcsema_real_eip !24
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !24
  %DF_val = alloca i1, !mcsema_real_eip !24
  %OF_val = alloca i1, !mcsema_real_eip !24
  %SF_val = alloca i1, !mcsema_real_eip !24
  %CF_val = alloca i1, !mcsema_real_eip !24
  %AF_val = alloca i1, !mcsema_real_eip !24
  %PF_val = alloca i1, !mcsema_real_eip !24
  %ZF_val = alloca i1, !mcsema_real_eip !24
  %RIP_val = alloca i64, !mcsema_real_eip !24
  %R14_val = alloca i64, !mcsema_real_eip !24
  %R13_val = alloca i64, !mcsema_real_eip !24
  %R12_val = alloca i64, !mcsema_real_eip !24
  %R11_val = alloca i64, !mcsema_real_eip !24
  %R10_val = alloca i64, !mcsema_real_eip !24
  %R9_val = alloca i64, !mcsema_real_eip !24
  %R8_val = alloca i64, !mcsema_real_eip !24
  %RSP_val = alloca i64, !mcsema_real_eip !24
  %RBP_val = alloca i64, !mcsema_real_eip !24
  %RDI_val = alloca i64, !mcsema_real_eip !24
  %RSI_val = alloca i64, !mcsema_real_eip !24
  %RDX_val = alloca i64, !mcsema_real_eip !24
  %RCX_val = alloca i64, !mcsema_real_eip !24
  %RBX_val = alloca i64, !mcsema_real_eip !24
  %RAX_val = alloca i64, !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %1 = load i64, i64* %RAX, !mcsema_real_eip !24
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %2 = load i64, i64* %RBX, !mcsema_real_eip !24
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !24
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %3 = load i64, i64* %RCX, !mcsema_real_eip !24
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !24
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %4 = load i64, i64* %RDX, !mcsema_real_eip !24
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %5 = load i64, i64* %RSI, !mcsema_real_eip !24
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %6 = load i64, i64* %RDI, !mcsema_real_eip !24
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %7 = load i64, i64* %RSP, !mcsema_real_eip !24
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %8 = load i64, i64* %RBP, !mcsema_real_eip !24
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %9 = load i64, i64* %R8, !mcsema_real_eip !24
  store i64 %9, i64* %R8_val, !mcsema_real_eip !24
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %10 = load i64, i64* %R9, !mcsema_real_eip !24
  store i64 %10, i64* %R9_val, !mcsema_real_eip !24
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %11 = load i64, i64* %R10, !mcsema_real_eip !24
  store i64 %11, i64* %R10_val, !mcsema_real_eip !24
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %12 = load i64, i64* %R11, !mcsema_real_eip !24
  store i64 %12, i64* %R11_val, !mcsema_real_eip !24
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %13 = load i64, i64* %R12, !mcsema_real_eip !24
  store i64 %13, i64* %R12_val, !mcsema_real_eip !24
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %14 = load i64, i64* %R13, !mcsema_real_eip !24
  store i64 %14, i64* %R13_val, !mcsema_real_eip !24
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %15 = load i64, i64* %R14, !mcsema_real_eip !24
  store i64 %15, i64* %R14_val, !mcsema_real_eip !24
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %16 = load i64, i64* %R15, !mcsema_real_eip !24
  store i64 %16, i64* %R15_val, !mcsema_real_eip !24
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %17 = load i64, i64* %RIP, !mcsema_real_eip !24
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !24
  store i1 %18, i1* %CF_val, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !24
  store i1 %19, i1* %PF_val, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %AF_val, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !24
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %SF_val, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %OF_val, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %DF_val, !mcsema_real_eip !24
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !24
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !24
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !24
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !24
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !24
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !24
  store i64 %77, i64* %80, !mcsema_real_eip !24
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !24
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !25
  %81 = add i64 %78, 16, !mcsema_real_eip !26
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !26
  %83 = bitcast i64* %82 to i32*
  %84 = load i32, i32* %83, !mcsema_real_eip !26
  %85 = zext i32 %84 to i64, !mcsema_real_eip !26
  store i64 %85, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %87 = add i64 %86, 16, !mcsema_real_eip !27
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !27
  %89 = bitcast i64* %88 to i32*
  %90 = load i32, i32* %89, !mcsema_real_eip !27
  %91 = zext i32 %90 to i64, !mcsema_real_eip !27
  store i64 %91, i64* %R10_val, !mcsema_real_eip !27
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %93 = add i64 %92, -4, !mcsema_real_eip !28
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !28
  %95 = load i64, i64* %RDI_val, !mcsema_real_eip !28
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !28
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !28
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %99 = add i64 %98, -8, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !29
  %101 = load i64, i64* %RSI_val, !mcsema_real_eip !29
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !29
  %103 = bitcast i64* %100 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !29
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %105 = add i64 %104, -12, !mcsema_real_eip !30
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !30
  %107 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !30
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !30
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %111 = add i64 %110, -16, !mcsema_real_eip !31
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !31
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !31
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !31
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %117 = add i64 %116, -20, !mcsema_real_eip !32
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !32
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !32
  %120 = trunc i64 %119 to i32, !mcsema_real_eip !32
  %121 = bitcast i64* %118 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !32
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %123 = add i64 %122, -24, !mcsema_real_eip !33
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !33
  %125 = load i64, i64* %R9_val, !mcsema_real_eip !33
  %126 = trunc i64 %125 to i32, !mcsema_real_eip !33
  %127 = bitcast i64* %124 to i32*
  store i32 %126, i32* %127, !mcsema_real_eip !33
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %129 = add i64 %128, -28, !mcsema_real_eip !34
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !34
  %131 = load i64, i64* %R10_val, !mcsema_real_eip !34
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !34
  %133 = bitcast i64* %130 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !34
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %135 = add i64 %134, -32, !mcsema_real_eip !35
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !35
  %137 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !35
  %139 = bitcast i64* %136 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !35
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %141 = add i64 %140, -4, !mcsema_real_eip !36
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !36
  %143 = bitcast i64* %142 to i32*
  %144 = load i32, i32* %143, !mcsema_real_eip !36
  %145 = zext i32 %144 to i64, !mcsema_real_eip !36
  store i64 %145, i64* %RAX_val, !mcsema_real_eip !36
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %147 = add i64 %146, -8, !mcsema_real_eip !37
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !37
  %149 = bitcast i64* %148 to i32*
  %150 = load i32, i32* %149, !mcsema_real_eip !37
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %144, i32 %150)
  %151 = extractvalue { i32, i1 } %uadd, 0
  %152 = xor i32 %151, %150, !mcsema_real_eip !37
  %153 = xor i32 %152, %144, !mcsema_real_eip !37
  %154 = and i32 %153, 16, !mcsema_real_eip !37
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !37
  store i1 %155, i1* %AF_val, !mcsema_real_eip !37
  %156 = icmp slt i32 %151, 0
  store i1 %156, i1* %SF_val, !mcsema_real_eip !37
  %157 = icmp eq i32 %151, 0, !mcsema_real_eip !37
  store i1 %157, i1* %ZF_val, !mcsema_real_eip !37
  %158 = xor i32 %144, -2147483648, !mcsema_real_eip !37
  %159 = xor i32 %158, %150, !mcsema_real_eip !37
  %160 = and i32 %152, %159, !mcsema_real_eip !37
  %161 = icmp slt i32 %160, 0
  store i1 %161, i1* %OF_val, !mcsema_real_eip !37
  %162 = trunc i32 %151 to i8, !mcsema_real_eip !37
  %163 = tail call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !37
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  store i1 %165, i1* %PF_val, !mcsema_real_eip !37
  %166 = extractvalue { i32, i1 } %uadd, 1
  store i1 %166, i1* %CF_val, !mcsema_real_eip !37
  %167 = zext i32 %151 to i64, !mcsema_real_eip !37
  store i64 %167, i64* %RAX_val, !mcsema_real_eip !37
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %169 = add i64 %168, -12, !mcsema_real_eip !38
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !38
  %171 = bitcast i64* %170 to i32*
  %172 = load i32, i32* %171, !mcsema_real_eip !38
  %uadd139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %151, i32 %172)
  %173 = extractvalue { i32, i1 } %uadd139, 0
  %174 = xor i32 %173, %172, !mcsema_real_eip !38
  %175 = xor i32 %174, %151, !mcsema_real_eip !38
  %176 = and i32 %175, 16, !mcsema_real_eip !38
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !38
  store i1 %177, i1* %AF_val, !mcsema_real_eip !38
  %178 = icmp slt i32 %173, 0
  store i1 %178, i1* %SF_val, !mcsema_real_eip !38
  %179 = icmp eq i32 %173, 0, !mcsema_real_eip !38
  store i1 %179, i1* %ZF_val, !mcsema_real_eip !38
  %180 = xor i32 %151, -2147483648, !mcsema_real_eip !38
  %181 = xor i32 %180, %172, !mcsema_real_eip !38
  %182 = and i32 %174, %181, !mcsema_real_eip !38
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF_val, !mcsema_real_eip !38
  %184 = trunc i32 %173 to i8, !mcsema_real_eip !38
  %185 = tail call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !38
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  store i1 %187, i1* %PF_val, !mcsema_real_eip !38
  %188 = extractvalue { i32, i1 } %uadd139, 1
  store i1 %188, i1* %CF_val, !mcsema_real_eip !38
  %189 = zext i32 %173 to i64, !mcsema_real_eip !38
  store i64 %189, i64* %RAX_val, !mcsema_real_eip !38
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %191 = add i64 %190, -16, !mcsema_real_eip !39
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !39
  %193 = bitcast i64* %192 to i32*
  %194 = load i32, i32* %193, !mcsema_real_eip !39
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %173, i32 %194)
  %195 = extractvalue { i32, i1 } %uadd140, 0
  %196 = xor i32 %195, %194, !mcsema_real_eip !39
  %197 = xor i32 %196, %173, !mcsema_real_eip !39
  %198 = and i32 %197, 16, !mcsema_real_eip !39
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !39
  store i1 %199, i1* %AF_val, !mcsema_real_eip !39
  %200 = icmp slt i32 %195, 0
  store i1 %200, i1* %SF_val, !mcsema_real_eip !39
  %201 = icmp eq i32 %195, 0, !mcsema_real_eip !39
  store i1 %201, i1* %ZF_val, !mcsema_real_eip !39
  %202 = xor i32 %173, -2147483648, !mcsema_real_eip !39
  %203 = xor i32 %202, %194, !mcsema_real_eip !39
  %204 = and i32 %196, %203, !mcsema_real_eip !39
  %205 = icmp slt i32 %204, 0
  store i1 %205, i1* %OF_val, !mcsema_real_eip !39
  %206 = trunc i32 %195 to i8, !mcsema_real_eip !39
  %207 = tail call i8 @llvm.ctpop.i8(i8 %206), !mcsema_real_eip !39
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  store i1 %209, i1* %PF_val, !mcsema_real_eip !39
  %210 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %210, i1* %CF_val, !mcsema_real_eip !39
  %211 = zext i32 %195 to i64, !mcsema_real_eip !39
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !39
  %212 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %213 = add i64 %212, -20, !mcsema_real_eip !40
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !40
  %215 = bitcast i64* %214 to i32*
  %216 = load i32, i32* %215, !mcsema_real_eip !40
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %216)
  %217 = extractvalue { i32, i1 } %uadd141, 0
  %218 = xor i32 %217, %216, !mcsema_real_eip !40
  %219 = xor i32 %218, %195, !mcsema_real_eip !40
  %220 = and i32 %219, 16, !mcsema_real_eip !40
  %221 = icmp ne i32 %220, 0, !mcsema_real_eip !40
  store i1 %221, i1* %AF_val, !mcsema_real_eip !40
  %222 = icmp slt i32 %217, 0
  store i1 %222, i1* %SF_val, !mcsema_real_eip !40
  %223 = icmp eq i32 %217, 0, !mcsema_real_eip !40
  store i1 %223, i1* %ZF_val, !mcsema_real_eip !40
  %224 = xor i32 %195, -2147483648, !mcsema_real_eip !40
  %225 = xor i32 %224, %216, !mcsema_real_eip !40
  %226 = and i32 %218, %225, !mcsema_real_eip !40
  %227 = icmp slt i32 %226, 0
  store i1 %227, i1* %OF_val, !mcsema_real_eip !40
  %228 = trunc i32 %217 to i8, !mcsema_real_eip !40
  %229 = tail call i8 @llvm.ctpop.i8(i8 %228), !mcsema_real_eip !40
  %230 = and i8 %229, 1
  %231 = icmp eq i8 %230, 0
  store i1 %231, i1* %PF_val, !mcsema_real_eip !40
  %232 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %232, i1* %CF_val, !mcsema_real_eip !40
  %233 = zext i32 %217 to i64, !mcsema_real_eip !40
  store i64 %233, i64* %RAX_val, !mcsema_real_eip !40
  %234 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %235 = add i64 %234, -24, !mcsema_real_eip !41
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !41
  %237 = bitcast i64* %236 to i32*
  %238 = load i32, i32* %237, !mcsema_real_eip !41
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %217, i32 %238)
  %239 = extractvalue { i32, i1 } %uadd142, 0
  %240 = xor i32 %239, %238, !mcsema_real_eip !41
  %241 = xor i32 %240, %217, !mcsema_real_eip !41
  %242 = and i32 %241, 16, !mcsema_real_eip !41
  %243 = icmp ne i32 %242, 0, !mcsema_real_eip !41
  store i1 %243, i1* %AF_val, !mcsema_real_eip !41
  %244 = icmp slt i32 %239, 0
  store i1 %244, i1* %SF_val, !mcsema_real_eip !41
  %245 = icmp eq i32 %239, 0, !mcsema_real_eip !41
  store i1 %245, i1* %ZF_val, !mcsema_real_eip !41
  %246 = xor i32 %217, -2147483648, !mcsema_real_eip !41
  %247 = xor i32 %246, %238, !mcsema_real_eip !41
  %248 = and i32 %240, %247, !mcsema_real_eip !41
  %249 = icmp slt i32 %248, 0
  store i1 %249, i1* %OF_val, !mcsema_real_eip !41
  %250 = trunc i32 %239 to i8, !mcsema_real_eip !41
  %251 = tail call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !41
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  store i1 %253, i1* %PF_val, !mcsema_real_eip !41
  %254 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %254, i1* %CF_val, !mcsema_real_eip !41
  %255 = zext i32 %239 to i64, !mcsema_real_eip !41
  store i64 %255, i64* %RAX_val, !mcsema_real_eip !41
  %256 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %257 = add i64 %256, -28, !mcsema_real_eip !42
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !42
  %259 = bitcast i64* %258 to i32*
  %260 = load i32, i32* %259, !mcsema_real_eip !42
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %260)
  %261 = extractvalue { i32, i1 } %uadd143, 0
  %262 = xor i32 %261, %260, !mcsema_real_eip !42
  %263 = xor i32 %262, %239, !mcsema_real_eip !42
  %264 = and i32 %263, 16, !mcsema_real_eip !42
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !42
  store i1 %265, i1* %AF_val, !mcsema_real_eip !42
  %266 = icmp slt i32 %261, 0
  store i1 %266, i1* %SF_val, !mcsema_real_eip !42
  %267 = icmp eq i32 %261, 0, !mcsema_real_eip !42
  store i1 %267, i1* %ZF_val, !mcsema_real_eip !42
  %268 = xor i32 %239, -2147483648, !mcsema_real_eip !42
  %269 = xor i32 %268, %260, !mcsema_real_eip !42
  %270 = and i32 %262, %269, !mcsema_real_eip !42
  %271 = icmp slt i32 %270, 0
  store i1 %271, i1* %OF_val, !mcsema_real_eip !42
  %272 = trunc i32 %261 to i8, !mcsema_real_eip !42
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !42
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !42
  %276 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %276, i1* %CF_val, !mcsema_real_eip !42
  %277 = zext i32 %261 to i64, !mcsema_real_eip !42
  store i64 %277, i64* %RAX_val, !mcsema_real_eip !42
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %279 = add i64 %278, -36, !mcsema_real_eip !43
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !43
  %281 = bitcast i64* %280 to i32*
  store i32 %261, i32* %281, !mcsema_real_eip !43
  %282 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %283 = add i64 %282, -36, !mcsema_real_eip !44
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !44
  %285 = bitcast i64* %284 to i32*
  %286 = load i32, i32* %285, !mcsema_real_eip !44
  %287 = add i32 %286, -40
  %288 = xor i32 %287, %286, !mcsema_real_eip !44
  %289 = and i32 %288, 16, !mcsema_real_eip !44
  %290 = icmp ne i32 %289, 0, !mcsema_real_eip !44
  store i1 %290, i1* %AF_val, !mcsema_real_eip !44
  %291 = trunc i32 %287 to i8, !mcsema_real_eip !44
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !44
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF_val, !mcsema_real_eip !44
  %295 = icmp eq i32 %287, 0, !mcsema_real_eip !44
  store i1 %295, i1* %ZF_val, !mcsema_real_eip !44
  %296 = icmp slt i32 %287, 0
  store i1 %296, i1* %SF_val, !mcsema_real_eip !44
  %297 = icmp ult i32 %286, 40, !mcsema_real_eip !44
  store i1 %297, i1* %CF_val, !mcsema_real_eip !44
  %298 = and i32 %288, %286, !mcsema_real_eip !44
  %299 = icmp slt i32 %298, 0
  store i1 %299, i1* %OF_val, !mcsema_real_eip !44
  %300 = xor i1 %296, %299
  %301 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  %302 = or i1 %301, %300, !mcsema_real_eip !45
  %303 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %304 = add i64 %303, -36, !mcsema_real_eip !46
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !46
  %306 = bitcast i64* %305 to i32*
  %307 = load i32, i32* %306, !mcsema_real_eip !46
  %308 = zext i32 %307 to i64, !mcsema_real_eip !46
  store i64 %308, i64* %RAX_val, !mcsema_real_eip !46
  %309 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %310 = add i64 %309, -32, !mcsema_real_eip !47
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !47
  %312 = bitcast i64* %311 to i32*
  %313 = load i32, i32* %312, !mcsema_real_eip !47
  br i1 %302, label %block_0x56, label %block_0x48, !mcsema_real_eip !45

block_0x56:                                       ; preds = %entry
  %314 = sub i32 %307, %313, !mcsema_real_eip !47
  %315 = xor i32 %314, %307, !mcsema_real_eip !47
  %316 = xor i32 %315, %313, !mcsema_real_eip !47
  %317 = and i32 %316, 16, !mcsema_real_eip !47
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !47
  store i1 %318, i1* %AF_val, !mcsema_real_eip !47
  %319 = trunc i32 %314 to i8, !mcsema_real_eip !47
  %320 = tail call i8 @llvm.ctpop.i8(i8 %319), !mcsema_real_eip !47
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  store i1 %322, i1* %PF_val, !mcsema_real_eip !47
  %323 = icmp eq i32 %307, %313
  store i1 %323, i1* %ZF_val, !mcsema_real_eip !47
  %324 = icmp slt i32 %314, 0
  store i1 %324, i1* %SF_val, !mcsema_real_eip !47
  %325 = icmp ult i32 %307, %313, !mcsema_real_eip !47
  store i1 %325, i1* %CF_val, !mcsema_real_eip !47
  %326 = xor i32 %313, %307, !mcsema_real_eip !47
  %327 = and i32 %315, %326, !mcsema_real_eip !47
  %328 = icmp slt i32 %327, 0
  store i1 %328, i1* %OF_val, !mcsema_real_eip !47
  %329 = zext i32 %314 to i64, !mcsema_real_eip !47
  store i64 %329, i64* %RAX_val, !mcsema_real_eip !47
  %330 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %331 = add i64 %330, -40, !mcsema_real_eip !48
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !48
  %333 = bitcast i64* %332 to i32*
  store i32 %314, i32* %333, !mcsema_real_eip !48
  %334 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %335 = add i64 %334, -40, !mcsema_real_eip !49
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !49
  %337 = bitcast i64* %336 to i32*
  %338 = load i32, i32* %337, !mcsema_real_eip !49
  %339 = zext i32 %338 to i64, !mcsema_real_eip !49
  store i64 %339, i64* %RAX_val, !mcsema_real_eip !49
  %340 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !50
  %342 = load i64, i64* %341, !mcsema_real_eip !50
  store i64 %342, i64* %RBP_val, !mcsema_real_eip !50
  %343 = add i64 %340, 16, !mcsema_real_eip !51
  store i64 %343, i64* %RSP_val, !mcsema_real_eip !51
  %344 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  store i64 %344, i64* %RAX, !mcsema_real_eip !51
  %345 = load i64, i64* %RBX_val, !mcsema_real_eip !51
  store i64 %345, i64* %RBX, !mcsema_real_eip !51
  %346 = load i64, i64* %RCX_val, !mcsema_real_eip !51
  store i64 %346, i64* %RCX, !mcsema_real_eip !51
  %347 = load i64, i64* %RDX_val, !mcsema_real_eip !51
  store i64 %347, i64* %RDX, !mcsema_real_eip !51
  %348 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  store i64 %348, i64* %RSI, !mcsema_real_eip !51
  %349 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  store i64 %349, i64* %RDI, !mcsema_real_eip !51
  %350 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  store i64 %350, i64* %RSP, !mcsema_real_eip !51
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  store i64 %351, i64* %RBP, !mcsema_real_eip !51
  %352 = load i64, i64* %R8_val, !mcsema_real_eip !51
  store i64 %352, i64* %R8, !mcsema_real_eip !51
  %353 = load i64, i64* %R9_val, !mcsema_real_eip !51
  store i64 %353, i64* %R9, !mcsema_real_eip !51
  %354 = load i64, i64* %R10_val, !mcsema_real_eip !51
  store i64 %354, i64* %R10, !mcsema_real_eip !51
  %355 = load i64, i64* %R11_val, !mcsema_real_eip !51
  store i64 %355, i64* %R11, !mcsema_real_eip !51
  %356 = load i64, i64* %R12_val, !mcsema_real_eip !51
  store i64 %356, i64* %R12, !mcsema_real_eip !51
  %357 = load i64, i64* %R13_val, !mcsema_real_eip !51
  store i64 %357, i64* %R13, !mcsema_real_eip !51
  %358 = load i64, i64* %R14_val, !mcsema_real_eip !51
  store i64 %358, i64* %R14, !mcsema_real_eip !51
  %359 = load i64, i64* %R15_val, !mcsema_real_eip !51
  store i64 %359, i64* %R15, !mcsema_real_eip !51
  %360 = load i64, i64* %RIP_val, !mcsema_real_eip !51
  store i64 %360, i64* %RIP, !mcsema_real_eip !51
  %361 = load i1, i1* %CF_val, !mcsema_real_eip !51
  store i1 %361, i1* %CF, align 1, !mcsema_real_eip !51
  %362 = load i1, i1* %PF_val, !mcsema_real_eip !51
  store i1 %362, i1* %PF, align 1, !mcsema_real_eip !51
  %363 = load i1, i1* %AF_val, !mcsema_real_eip !51
  store i1 %363, i1* %AF, align 1, !mcsema_real_eip !51
  %364 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  store i1 %364, i1* %ZF, align 1, !mcsema_real_eip !51
  %365 = load i1, i1* %SF_val, !mcsema_real_eip !51
  store i1 %365, i1* %SF, align 1, !mcsema_real_eip !51
  %366 = load i1, i1* %OF_val, !mcsema_real_eip !51
  store i1 %366, i1* %OF, align 1, !mcsema_real_eip !51
  %367 = load i1, i1* %DF_val, !mcsema_real_eip !51
  store i1 %367, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %368 = load i1, i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %368, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %369 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %369, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %370 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %370, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %371 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %371, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %372 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %372, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %373 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %373, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %374 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %374, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %375 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %375, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %376 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %376, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %377 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %377, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %378 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %378, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %379 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %379, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %380 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %380, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %381 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %381, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %382 = load i1, i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %382, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %383 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %383, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %384 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %384, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %385 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %385, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %386 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %386, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %387 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %387, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %388 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %388, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %389 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %389, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %390 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %390, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %391 = load i64, i64* %53, align 4
  store i64 %391, i64* %52, align 4
  %392 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %392, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %393 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %393, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %394 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %394, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %395 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %395, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %396 = load i128, i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %396, i128* %XMM0, align 1, !mcsema_real_eip !51
  %397 = load i128, i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %397, i128* %XMM1, align 1, !mcsema_real_eip !51
  %398 = load i128, i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %398, i128* %XMM2, align 1, !mcsema_real_eip !51
  %399 = load i128, i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %399, i128* %XMM3, align 1, !mcsema_real_eip !51
  %400 = load i128, i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %400, i128* %XMM4, align 1, !mcsema_real_eip !51
  %401 = load i128, i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %401, i128* %XMM5, align 1, !mcsema_real_eip !51
  %402 = load i128, i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %402, i128* %XMM6, align 1, !mcsema_real_eip !51
  %403 = load i128, i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %403, i128* %XMM7, align 1, !mcsema_real_eip !51
  %404 = load i128, i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %404, i128* %XMM8, align 1, !mcsema_real_eip !51
  %405 = load i128, i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %405, i128* %XMM9, align 1, !mcsema_real_eip !51
  %406 = load i128, i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %406, i128* %XMM10, align 1, !mcsema_real_eip !51
  %407 = load i128, i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %407, i128* %XMM11, align 1, !mcsema_real_eip !51
  %408 = load i128, i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %408, i128* %XMM12, align 1, !mcsema_real_eip !51
  %409 = load i128, i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %409, i128* %XMM13, align 1, !mcsema_real_eip !51
  %410 = load i128, i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %410, i128* %XMM14, align 1, !mcsema_real_eip !51
  %411 = load i128, i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %411, i128* %XMM15, align 1, !mcsema_real_eip !51
  %412 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %412, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %413 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %413, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51

block_0x48:                                       ; preds = %entry
  %uadd145 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %307, i32 %313)
  %414 = extractvalue { i32, i1 } %uadd145, 0
  %415 = xor i32 %414, %313, !mcsema_real_eip !52
  %416 = xor i32 %415, %307, !mcsema_real_eip !52
  %417 = and i32 %416, 16, !mcsema_real_eip !52
  %418 = icmp ne i32 %417, 0, !mcsema_real_eip !52
  store i1 %418, i1* %AF_val, !mcsema_real_eip !52
  %419 = icmp slt i32 %414, 0
  store i1 %419, i1* %SF_val, !mcsema_real_eip !52
  %420 = icmp eq i32 %414, 0, !mcsema_real_eip !52
  store i1 %420, i1* %ZF_val, !mcsema_real_eip !52
  %421 = xor i32 %307, -2147483648, !mcsema_real_eip !52
  %422 = xor i32 %421, %313, !mcsema_real_eip !52
  %423 = and i32 %415, %422, !mcsema_real_eip !52
  %424 = icmp slt i32 %423, 0
  store i1 %424, i1* %OF_val, !mcsema_real_eip !52
  %425 = trunc i32 %414 to i8, !mcsema_real_eip !52
  %426 = tail call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !52
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF_val, !mcsema_real_eip !52
  %429 = extractvalue { i32, i1 } %uadd145, 1
  store i1 %429, i1* %CF_val, !mcsema_real_eip !52
  %430 = zext i32 %414 to i64, !mcsema_real_eip !52
  store i64 %430, i64* %RAX_val, !mcsema_real_eip !52
  %431 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %432 = add i64 %431, -40, !mcsema_real_eip !53
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !53
  %434 = bitcast i64* %433 to i32*
  store i32 %414, i32* %434, !mcsema_real_eip !53
  %435 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %436 = add i64 %435, -40, !mcsema_real_eip !49
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !49
  %438 = bitcast i64* %437 to i32*
  %439 = load i32, i32* %438, !mcsema_real_eip !49
  %440 = zext i32 %439 to i64, !mcsema_real_eip !49
  store i64 %440, i64* %RAX_val, !mcsema_real_eip !49
  %441 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !50
  %443 = load i64, i64* %442, !mcsema_real_eip !50
  store i64 %443, i64* %RBP_val, !mcsema_real_eip !50
  %444 = add i64 %441, 16, !mcsema_real_eip !51
  store i64 %444, i64* %RSP_val, !mcsema_real_eip !51
  %445 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  store i64 %445, i64* %RAX, !mcsema_real_eip !51
  %446 = load i64, i64* %RBX_val, !mcsema_real_eip !51
  store i64 %446, i64* %RBX, !mcsema_real_eip !51
  %447 = load i64, i64* %RCX_val, !mcsema_real_eip !51
  store i64 %447, i64* %RCX, !mcsema_real_eip !51
  %448 = load i64, i64* %RDX_val, !mcsema_real_eip !51
  store i64 %448, i64* %RDX, !mcsema_real_eip !51
  %449 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  store i64 %449, i64* %RSI, !mcsema_real_eip !51
  %450 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  store i64 %450, i64* %RDI, !mcsema_real_eip !51
  %451 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  store i64 %451, i64* %RSP, !mcsema_real_eip !51
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  store i64 %452, i64* %RBP, !mcsema_real_eip !51
  %453 = load i64, i64* %R8_val, !mcsema_real_eip !51
  store i64 %453, i64* %R8, !mcsema_real_eip !51
  %454 = load i64, i64* %R9_val, !mcsema_real_eip !51
  store i64 %454, i64* %R9, !mcsema_real_eip !51
  %455 = load i64, i64* %R10_val, !mcsema_real_eip !51
  store i64 %455, i64* %R10, !mcsema_real_eip !51
  %456 = load i64, i64* %R11_val, !mcsema_real_eip !51
  store i64 %456, i64* %R11, !mcsema_real_eip !51
  %457 = load i64, i64* %R12_val, !mcsema_real_eip !51
  store i64 %457, i64* %R12, !mcsema_real_eip !51
  %458 = load i64, i64* %R13_val, !mcsema_real_eip !51
  store i64 %458, i64* %R13, !mcsema_real_eip !51
  %459 = load i64, i64* %R14_val, !mcsema_real_eip !51
  store i64 %459, i64* %R14, !mcsema_real_eip !51
  %460 = load i64, i64* %R15_val, !mcsema_real_eip !51
  store i64 %460, i64* %R15, !mcsema_real_eip !51
  %461 = load i64, i64* %RIP_val, !mcsema_real_eip !51
  store i64 %461, i64* %RIP, !mcsema_real_eip !51
  %462 = load i1, i1* %CF_val, !mcsema_real_eip !51
  store i1 %462, i1* %CF, align 1, !mcsema_real_eip !51
  %463 = load i1, i1* %PF_val, !mcsema_real_eip !51
  store i1 %463, i1* %PF, align 1, !mcsema_real_eip !51
  %464 = load i1, i1* %AF_val, !mcsema_real_eip !51
  store i1 %464, i1* %AF, align 1, !mcsema_real_eip !51
  %465 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  store i1 %465, i1* %ZF, align 1, !mcsema_real_eip !51
  %466 = load i1, i1* %SF_val, !mcsema_real_eip !51
  store i1 %466, i1* %SF, align 1, !mcsema_real_eip !51
  %467 = load i1, i1* %OF_val, !mcsema_real_eip !51
  store i1 %467, i1* %OF, align 1, !mcsema_real_eip !51
  %468 = load i1, i1* %DF_val, !mcsema_real_eip !51
  store i1 %468, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %469 = load i1, i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %469, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %470 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %470, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %471 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %471, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %472 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %472, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %473 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %473, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %474 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %474, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %475 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %475, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %476 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %476, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %477 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %477, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %478 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %478, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %479 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %479, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %480 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %480, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %481 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %481, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %482 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %482, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %483 = load i1, i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %483, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %484 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %484, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %485 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %485, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %486 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %486, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %487 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %487, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %488 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %488, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %489 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %489, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %490 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %490, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %491 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %491, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %492 = load i64, i64* %53, align 4
  store i64 %492, i64* %52, align 4
  %493 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %493, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %494 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %494, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %495 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %495, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %496 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %496, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %497 = load i128, i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %497, i128* %XMM0, align 1, !mcsema_real_eip !51
  %498 = load i128, i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %498, i128* %XMM1, align 1, !mcsema_real_eip !51
  %499 = load i128, i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %499, i128* %XMM2, align 1, !mcsema_real_eip !51
  %500 = load i128, i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %500, i128* %XMM3, align 1, !mcsema_real_eip !51
  %501 = load i128, i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %501, i128* %XMM4, align 1, !mcsema_real_eip !51
  %502 = load i128, i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %502, i128* %XMM5, align 1, !mcsema_real_eip !51
  %503 = load i128, i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %503, i128* %XMM6, align 1, !mcsema_real_eip !51
  %504 = load i128, i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %504, i128* %XMM7, align 1, !mcsema_real_eip !51
  %505 = load i128, i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %505, i128* %XMM8, align 1, !mcsema_real_eip !51
  %506 = load i128, i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %506, i128* %XMM9, align 1, !mcsema_real_eip !51
  %507 = load i128, i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %507, i128* %XMM10, align 1, !mcsema_real_eip !51
  %508 = load i128, i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %508, i128* %XMM11, align 1, !mcsema_real_eip !51
  %509 = load i128, i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %509, i128* %XMM12, align 1, !mcsema_real_eip !51
  %510 = load i128, i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %510, i128* %XMM13, align 1, !mcsema_real_eip !51
  %511 = load i128, i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %511, i128* %XMM14, align 1, !mcsema_real_eip !51
  %512 = load i128, i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %512, i128* %XMM15, align 1, !mcsema_real_eip !51
  %513 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %513, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %514 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %514, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_70(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !24
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !24
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !24
  %XMM15_val = alloca i128, !mcsema_real_eip !24
  %XMM14_val = alloca i128, !mcsema_real_eip !24
  %XMM13_val = alloca i128, !mcsema_real_eip !24
  %XMM12_val = alloca i128, !mcsema_real_eip !24
  %XMM11_val = alloca i128, !mcsema_real_eip !24
  %XMM10_val = alloca i128, !mcsema_real_eip !24
  %XMM9_val = alloca i128, !mcsema_real_eip !24
  %XMM8_val = alloca i128, !mcsema_real_eip !24
  %XMM7_val = alloca i128, !mcsema_real_eip !24
  %XMM6_val = alloca i128, !mcsema_real_eip !24
  %XMM5_val = alloca i128, !mcsema_real_eip !24
  %XMM4_val = alloca i128, !mcsema_real_eip !24
  %XMM3_val = alloca i128, !mcsema_real_eip !24
  %XMM2_val = alloca i128, !mcsema_real_eip !24
  %XMM1_val = alloca i128, !mcsema_real_eip !24
  %XMM0_val = alloca i128, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !24
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !24
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !24
  %FPU_IM_val = alloca i1, !mcsema_real_eip !24
  %FPU_DM_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !24
  %FPU_OM_val = alloca i1, !mcsema_real_eip !24
  %FPU_UM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PM_val = alloca i1, !mcsema_real_eip !24
  %FPU_PC_val = alloca i2, !mcsema_real_eip !24
  %FPU_RC_val = alloca i2, !mcsema_real_eip !24
  %FPU_X_val = alloca i1, !mcsema_real_eip !24
  %FPU_IE_val = alloca i1, !mcsema_real_eip !24
  %FPU_DE_val = alloca i1, !mcsema_real_eip !24
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !24
  %FPU_OE_val = alloca i1, !mcsema_real_eip !24
  %FPU_UE_val = alloca i1, !mcsema_real_eip !24
  %FPU_PE_val = alloca i1, !mcsema_real_eip !24
  %FPU_SF_val = alloca i1, !mcsema_real_eip !24
  %FPU_ES_val = alloca i1, !mcsema_real_eip !24
  %FPU_C0_val = alloca i1, !mcsema_real_eip !24
  %FPU_C1_val = alloca i1, !mcsema_real_eip !24
  %FPU_C2_val = alloca i1, !mcsema_real_eip !24
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !24
  %FPU_C3_val = alloca i1, !mcsema_real_eip !24
  %FPU_B_val = alloca i1, !mcsema_real_eip !24
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !24
  %DF_val = alloca i1, !mcsema_real_eip !24
  %OF_val = alloca i1, !mcsema_real_eip !24
  %SF_val = alloca i1, !mcsema_real_eip !24
  %CF_val = alloca i1, !mcsema_real_eip !24
  %AF_val = alloca i1, !mcsema_real_eip !24
  %PF_val = alloca i1, !mcsema_real_eip !24
  %ZF_val = alloca i1, !mcsema_real_eip !24
  %RIP_val = alloca i64, !mcsema_real_eip !24
  %R14_val = alloca i64, !mcsema_real_eip !24
  %R13_val = alloca i64, !mcsema_real_eip !24
  %R12_val = alloca i64, !mcsema_real_eip !24
  %R11_val = alloca i64, !mcsema_real_eip !24
  %R10_val = alloca i64, !mcsema_real_eip !24
  %R9_val = alloca i64, !mcsema_real_eip !24
  %R8_val = alloca i64, !mcsema_real_eip !24
  %RSP_val = alloca i64, !mcsema_real_eip !24
  %RBP_val = alloca i64, !mcsema_real_eip !24
  %RDI_val = alloca i64, !mcsema_real_eip !24
  %RSI_val = alloca i64, !mcsema_real_eip !24
  %RDX_val = alloca i64, !mcsema_real_eip !24
  %RCX_val = alloca i64, !mcsema_real_eip !24
  %RBX_val = alloca i64, !mcsema_real_eip !24
  %RAX_val = alloca i64, !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %1 = load i64, i64* %RAX, !mcsema_real_eip !24
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %2 = load i64, i64* %RBX, !mcsema_real_eip !24
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !24
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %3 = load i64, i64* %RCX, !mcsema_real_eip !24
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !24
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %4 = load i64, i64* %RDX, !mcsema_real_eip !24
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %5 = load i64, i64* %RSI, !mcsema_real_eip !24
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %6 = load i64, i64* %RDI, !mcsema_real_eip !24
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %7 = load i64, i64* %RSP, !mcsema_real_eip !24
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %8 = load i64, i64* %RBP, !mcsema_real_eip !24
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %9 = load i64, i64* %R8, !mcsema_real_eip !24
  store i64 %9, i64* %R8_val, !mcsema_real_eip !24
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !24
  %10 = load i64, i64* %R9, !mcsema_real_eip !24
  store i64 %10, i64* %R9_val, !mcsema_real_eip !24
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %11 = load i64, i64* %R10, !mcsema_real_eip !24
  store i64 %11, i64* %R10_val, !mcsema_real_eip !24
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %12 = load i64, i64* %R11, !mcsema_real_eip !24
  store i64 %12, i64* %R11_val, !mcsema_real_eip !24
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %13 = load i64, i64* %R12, !mcsema_real_eip !24
  store i64 %13, i64* %R12_val, !mcsema_real_eip !24
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %14 = load i64, i64* %R13, !mcsema_real_eip !24
  store i64 %14, i64* %R13_val, !mcsema_real_eip !24
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %15 = load i64, i64* %R14, !mcsema_real_eip !24
  store i64 %15, i64* %R14_val, !mcsema_real_eip !24
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %16 = load i64, i64* %R15, !mcsema_real_eip !24
  store i64 %16, i64* %R15_val, !mcsema_real_eip !24
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %17 = load i64, i64* %RIP, !mcsema_real_eip !24
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !24
  store i1 %18, i1* %CF_val, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !24
  store i1 %19, i1* %PF_val, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !24
  store i1 %20, i1* %AF_val, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !24
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !24
  store i1 %22, i1* %SF_val, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !24
  store i1 %23, i1* %OF_val, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !24
  store i1 %24, i1* %DF_val, !mcsema_real_eip !24
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !24
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !24
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !24
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !24
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !24
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !24
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !24
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !24
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !24
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !24
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !24
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !24
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !24
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !24
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !24
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !24
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !24
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !24
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !24
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !24
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !24
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !24
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !24
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !24
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %81 = add i64 %80, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !24
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !24
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %83 = add i64 %80, 16, !mcsema_real_eip !26
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !26
  %85 = bitcast i64* %_allin_new_bt_2 to i32*
  %_ptr_to_int_90 = ptrtoint i32* %85 to i64
  %_local_end_to_int_91 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_92 = bitcast i32* %85 to i8*
  %_offset_above_rbp_93 = sub i64 %_ptr_to_int_90, %_local_end_to_int_91
  %_pot_address_in_parent_stack_94 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_cond1_95 = icmp ugt i8* %_ptr_bt_92, %_local_stack_end_ptr_
  %_cond2_1_96 = icmp ugt i8* %_ptr_bt_92, %_parent_stack_end_ptr_
  %_cond2_2_97 = icmp ult i8* %_ptr_bt_92, %_parent_stack_start_ptr_
  %_cond2_98 = or i1 %_cond2_1_96, %_cond2_2_97
  %_cond4_99 = icmp ule i8* %_pot_address_in_parent_stack_94, %_parent_stack_end_ptr_
  %_cond1_n_cond2_100 = and i1 %_cond1_95, %_cond2_98
  %_cond1_n_cond2_cond3_101 = and i1 %_cond1_n_cond2_100, %_cond4_99
  br i1 %_cond1_n_cond2_cond3_101, label %86, label %87

; <label>:86:                                     ; preds = %55
  %_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_93
  %_address_in_parent_stack_bt_103 = bitcast i8* %_address_in_parent_stack_102 to i32*
  br label %87

; <label>:87:                                     ; preds = %55, %86
  %88 = phi i32* [ %85, %55 ], [ %_address_in_parent_stack_bt_103, %86 ]
  %_new_load_104 = load i32, i32* %88
  %89 = zext i32 %_new_load_104 to i64, !mcsema_real_eip !26
  store i64 %89, i64* %RAX_val, !mcsema_real_eip !26
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 16
  %91 = add i64 %90, 16, !mcsema_real_eip !27
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !27
  %93 = bitcast i64* %_allin_new_bt_5 to i32*
  %_ptr_to_int_105 = ptrtoint i32* %93 to i64
  %_local_end_to_int_106 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_107 = bitcast i32* %93 to i8*
  %_offset_above_rbp_108 = sub i64 %_ptr_to_int_105, %_local_end_to_int_106
  %_pot_address_in_parent_stack_109 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_cond1_110 = icmp ugt i8* %_ptr_bt_107, %_local_stack_end_ptr_
  %_cond2_1_111 = icmp ugt i8* %_ptr_bt_107, %_parent_stack_end_ptr_
  %_cond2_2_112 = icmp ult i8* %_ptr_bt_107, %_parent_stack_start_ptr_
  %_cond2_113 = or i1 %_cond2_1_111, %_cond2_2_112
  %_cond4_114 = icmp ule i8* %_pot_address_in_parent_stack_109, %_parent_stack_end_ptr_
  %_cond1_n_cond2_115 = and i1 %_cond1_110, %_cond2_113
  %_cond1_n_cond2_cond3_116 = and i1 %_cond1_n_cond2_115, %_cond4_114
  br i1 %_cond1_n_cond2_cond3_116, label %94, label %95

; <label>:94:                                     ; preds = %87
  %_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_108
  %_address_in_parent_stack_bt_118 = bitcast i8* %_address_in_parent_stack_117 to i32*
  br label %95

; <label>:95:                                     ; preds = %87, %94
  %96 = phi i32* [ %93, %87 ], [ %_address_in_parent_stack_bt_118, %94 ]
  %_new_load_119 = load i32, i32* %96
  %97 = zext i32 %_new_load_119 to i64, !mcsema_real_eip !27
  store i64 %97, i64* %R10_val, !mcsema_real_eip !27
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -4
  %99 = add i64 %98, -4, !mcsema_real_eip !28
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !28
  %101 = load i64, i64* %RDI_val, !mcsema_real_eip !28
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !28
  %103 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 %102, i32* %103, !mcsema_real_eip !28
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -8
  %105 = add i64 %104, -8, !mcsema_real_eip !29
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !29
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !29
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !29
  %109 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !29
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %111 = add i64 %110, -12, !mcsema_real_eip !30
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !30
  %113 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !30
  %115 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !30
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -16
  %117 = add i64 %116, -16, !mcsema_real_eip !31
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !31
  %119 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  %120 = trunc i64 %119 to i32, !mcsema_real_eip !31
  %121 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !31
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %122 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -20
  %123 = add i64 %122, -20, !mcsema_real_eip !32
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !32
  %125 = load i64, i64* %R8_val, !mcsema_real_eip !32
  %126 = trunc i64 %125 to i32, !mcsema_real_eip !32
  %127 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 %126, i32* %127, !mcsema_real_eip !32
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -24
  %129 = add i64 %128, -24, !mcsema_real_eip !33
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !33
  %131 = load i64, i64* %R9_val, !mcsema_real_eip !33
  %132 = trunc i64 %131 to i32, !mcsema_real_eip !33
  %133 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %132, i32* %133, !mcsema_real_eip !33
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %134 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -28
  %135 = add i64 %134, -28, !mcsema_real_eip !34
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !34
  %137 = load i64, i64* %R10_val, !mcsema_real_eip !34
  %138 = trunc i64 %137 to i32, !mcsema_real_eip !34
  %139 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 %138, i32* %139, !mcsema_real_eip !34
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -32
  %141 = add i64 %140, -32, !mcsema_real_eip !35
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !35
  %143 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  %144 = trunc i64 %143 to i32, !mcsema_real_eip !35
  %145 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %144, i32* %145, !mcsema_real_eip !35
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %146 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -4
  %147 = add i64 %146, -4, !mcsema_real_eip !36
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !36
  %149 = bitcast i64* %_allin_new_bt_32 to i32*
  %_ptr_to_int_120 = ptrtoint i32* %149 to i64
  %_local_end_to_int_121 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_122 = bitcast i32* %149 to i8*
  %_offset_above_rbp_123 = sub i64 %_ptr_to_int_120, %_local_end_to_int_121
  %_pot_address_in_parent_stack_124 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_123
  %_cond1_125 = icmp ugt i8* %_ptr_bt_122, %_local_stack_end_ptr_
  %_cond2_1_126 = icmp ugt i8* %_ptr_bt_122, %_parent_stack_end_ptr_
  %_cond2_2_127 = icmp ult i8* %_ptr_bt_122, %_parent_stack_start_ptr_
  %_cond2_128 = or i1 %_cond2_1_126, %_cond2_2_127
  %_cond4_129 = icmp ule i8* %_pot_address_in_parent_stack_124, %_parent_stack_end_ptr_
  %_cond1_n_cond2_130 = and i1 %_cond1_125, %_cond2_128
  %_cond1_n_cond2_cond3_131 = and i1 %_cond1_n_cond2_130, %_cond4_129
  br i1 %_cond1_n_cond2_cond3_131, label %150, label %151

; <label>:150:                                    ; preds = %95
  %_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_123
  %_address_in_parent_stack_bt_133 = bitcast i8* %_address_in_parent_stack_132 to i32*
  br label %151

; <label>:151:                                    ; preds = %95, %150
  %152 = phi i32* [ %149, %95 ], [ %_address_in_parent_stack_bt_133, %150 ]
  %_new_load_134 = load i32, i32* %152
  %153 = zext i32 %_new_load_134 to i64, !mcsema_real_eip !36
  store i64 %153, i64* %RAX_val, !mcsema_real_eip !36
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -8
  %155 = add i64 %154, -8, !mcsema_real_eip !37
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !37
  %157 = bitcast i64* %_allin_new_bt_35 to i32*
  %_ptr_to_int_135 = ptrtoint i32* %157 to i64
  %_local_end_to_int_136 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_137 = bitcast i32* %157 to i8*
  %_offset_above_rbp_138 = sub i64 %_ptr_to_int_135, %_local_end_to_int_136
  %_pot_address_in_parent_stack_139 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_138
  %_cond1_140 = icmp ugt i8* %_ptr_bt_137, %_local_stack_end_ptr_
  %_cond2_1_141 = icmp ugt i8* %_ptr_bt_137, %_parent_stack_end_ptr_
  %_cond2_2_142 = icmp ult i8* %_ptr_bt_137, %_parent_stack_start_ptr_
  %_cond2_143 = or i1 %_cond2_1_141, %_cond2_2_142
  %_cond4_144 = icmp ule i8* %_pot_address_in_parent_stack_139, %_parent_stack_end_ptr_
  %_cond1_n_cond2_145 = and i1 %_cond1_140, %_cond2_143
  %_cond1_n_cond2_cond3_146 = and i1 %_cond1_n_cond2_145, %_cond4_144
  br i1 %_cond1_n_cond2_cond3_146, label %158, label %159

; <label>:158:                                    ; preds = %151
  %_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_138
  %_address_in_parent_stack_bt_148 = bitcast i8* %_address_in_parent_stack_147 to i32*
  br label %159

; <label>:159:                                    ; preds = %151, %158
  %160 = phi i32* [ %157, %151 ], [ %_address_in_parent_stack_bt_148, %158 ]
  %_new_load_149 = load i32, i32* %160
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_134, i32 %_new_load_149)
  %161 = extractvalue { i32, i1 } %uadd, 0
  %162 = xor i32 %161, %_new_load_149, !mcsema_real_eip !37
  %163 = xor i32 %162, %_new_load_134, !mcsema_real_eip !37
  %164 = and i32 %163, 16, !mcsema_real_eip !37
  %165 = icmp ne i32 %164, 0, !mcsema_real_eip !37
  store i1 %165, i1* %AF_val, !mcsema_real_eip !37
  %166 = icmp slt i32 %161, 0
  store i1 %166, i1* %SF_val, !mcsema_real_eip !37
  %167 = icmp eq i32 %161, 0, !mcsema_real_eip !37
  store i1 %167, i1* %ZF_val, !mcsema_real_eip !37
  %168 = xor i32 %_new_load_134, -2147483648, !mcsema_real_eip !37
  %169 = xor i32 %168, %_new_load_149, !mcsema_real_eip !37
  %170 = and i32 %162, %169, !mcsema_real_eip !37
  %171 = icmp slt i32 %170, 0
  store i1 %171, i1* %OF_val, !mcsema_real_eip !37
  %172 = trunc i32 %161 to i8, !mcsema_real_eip !37
  %173 = tail call i8 @llvm.ctpop.i8(i8 %172), !mcsema_real_eip !37
  %174 = and i8 %173, 1
  %175 = icmp eq i8 %174, 0
  store i1 %175, i1* %PF_val, !mcsema_real_eip !37
  %176 = extractvalue { i32, i1 } %uadd, 1
  store i1 %176, i1* %CF_val, !mcsema_real_eip !37
  %177 = zext i32 %161 to i64, !mcsema_real_eip !37
  store i64 %177, i64* %RAX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -12
  %179 = add i64 %178, -12, !mcsema_real_eip !38
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !38
  %181 = bitcast i64* %_allin_new_bt_38 to i32*
  %_ptr_to_int_150 = ptrtoint i32* %181 to i64
  %_local_end_to_int_151 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_152 = bitcast i32* %181 to i8*
  %_offset_above_rbp_153 = sub i64 %_ptr_to_int_150, %_local_end_to_int_151
  %_pot_address_in_parent_stack_154 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_153
  %_cond1_155 = icmp ugt i8* %_ptr_bt_152, %_local_stack_end_ptr_
  %_cond2_1_156 = icmp ugt i8* %_ptr_bt_152, %_parent_stack_end_ptr_
  %_cond2_2_157 = icmp ult i8* %_ptr_bt_152, %_parent_stack_start_ptr_
  %_cond2_158 = or i1 %_cond2_1_156, %_cond2_2_157
  %_cond4_159 = icmp ule i8* %_pot_address_in_parent_stack_154, %_parent_stack_end_ptr_
  %_cond1_n_cond2_160 = and i1 %_cond1_155, %_cond2_158
  %_cond1_n_cond2_cond3_161 = and i1 %_cond1_n_cond2_160, %_cond4_159
  br i1 %_cond1_n_cond2_cond3_161, label %182, label %183

; <label>:182:                                    ; preds = %159
  %_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_153
  %_address_in_parent_stack_bt_163 = bitcast i8* %_address_in_parent_stack_162 to i32*
  br label %183

; <label>:183:                                    ; preds = %159, %182
  %184 = phi i32* [ %181, %159 ], [ %_address_in_parent_stack_bt_163, %182 ]
  %_new_load_164 = load i32, i32* %184
  %uadd139 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %161, i32 %_new_load_164)
  %185 = extractvalue { i32, i1 } %uadd139, 0
  %186 = xor i32 %185, %_new_load_164, !mcsema_real_eip !38
  %187 = xor i32 %186, %161, !mcsema_real_eip !38
  %188 = and i32 %187, 16, !mcsema_real_eip !38
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !38
  store i1 %189, i1* %AF_val, !mcsema_real_eip !38
  %190 = icmp slt i32 %185, 0
  store i1 %190, i1* %SF_val, !mcsema_real_eip !38
  %191 = icmp eq i32 %185, 0, !mcsema_real_eip !38
  store i1 %191, i1* %ZF_val, !mcsema_real_eip !38
  %192 = xor i32 %161, -2147483648, !mcsema_real_eip !38
  %193 = xor i32 %192, %_new_load_164, !mcsema_real_eip !38
  %194 = and i32 %186, %193, !mcsema_real_eip !38
  %195 = icmp slt i32 %194, 0
  store i1 %195, i1* %OF_val, !mcsema_real_eip !38
  %196 = trunc i32 %185 to i8, !mcsema_real_eip !38
  %197 = tail call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !38
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF_val, !mcsema_real_eip !38
  %200 = extractvalue { i32, i1 } %uadd139, 1
  store i1 %200, i1* %CF_val, !mcsema_real_eip !38
  %201 = zext i32 %185 to i64, !mcsema_real_eip !38
  store i64 %201, i64* %RAX_val, !mcsema_real_eip !38
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -16
  %203 = add i64 %202, -16, !mcsema_real_eip !39
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !39
  %205 = bitcast i64* %_allin_new_bt_41 to i32*
  %_ptr_to_int_165 = ptrtoint i32* %205 to i64
  %_local_end_to_int_166 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_167 = bitcast i32* %205 to i8*
  %_offset_above_rbp_168 = sub i64 %_ptr_to_int_165, %_local_end_to_int_166
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_ptr_bt_167, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_ptr_bt_167, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_ptr_bt_167, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %206, label %207

; <label>:206:                                    ; preds = %183
  %_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_address_in_parent_stack_bt_178 = bitcast i8* %_address_in_parent_stack_177 to i32*
  br label %207

; <label>:207:                                    ; preds = %183, %206
  %208 = phi i32* [ %205, %183 ], [ %_address_in_parent_stack_bt_178, %206 ]
  %_new_load_179 = load i32, i32* %208
  %uadd140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %185, i32 %_new_load_179)
  %209 = extractvalue { i32, i1 } %uadd140, 0
  %210 = xor i32 %209, %_new_load_179, !mcsema_real_eip !39
  %211 = xor i32 %210, %185, !mcsema_real_eip !39
  %212 = and i32 %211, 16, !mcsema_real_eip !39
  %213 = icmp ne i32 %212, 0, !mcsema_real_eip !39
  store i1 %213, i1* %AF_val, !mcsema_real_eip !39
  %214 = icmp slt i32 %209, 0
  store i1 %214, i1* %SF_val, !mcsema_real_eip !39
  %215 = icmp eq i32 %209, 0, !mcsema_real_eip !39
  store i1 %215, i1* %ZF_val, !mcsema_real_eip !39
  %216 = xor i32 %185, -2147483648, !mcsema_real_eip !39
  %217 = xor i32 %216, %_new_load_179, !mcsema_real_eip !39
  %218 = and i32 %210, %217, !mcsema_real_eip !39
  %219 = icmp slt i32 %218, 0
  store i1 %219, i1* %OF_val, !mcsema_real_eip !39
  %220 = trunc i32 %209 to i8, !mcsema_real_eip !39
  %221 = tail call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !39
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  store i1 %223, i1* %PF_val, !mcsema_real_eip !39
  %224 = extractvalue { i32, i1 } %uadd140, 1
  store i1 %224, i1* %CF_val, !mcsema_real_eip !39
  %225 = zext i32 %209 to i64, !mcsema_real_eip !39
  store i64 %225, i64* %RAX_val, !mcsema_real_eip !39
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %226 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -20
  %227 = add i64 %226, -20, !mcsema_real_eip !40
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !40
  %229 = bitcast i64* %_allin_new_bt_44 to i32*
  %_ptr_to_int_180 = ptrtoint i32* %229 to i64
  %_local_end_to_int_181 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_182 = bitcast i32* %229 to i8*
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %_local_end_to_int_181
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_ptr_bt_182, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_ptr_bt_182, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_ptr_bt_182, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  br i1 %_cond1_n_cond2_cond3_191, label %230, label %231

; <label>:230:                                    ; preds = %207
  %_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_address_in_parent_stack_bt_193 = bitcast i8* %_address_in_parent_stack_192 to i32*
  br label %231

; <label>:231:                                    ; preds = %207, %230
  %232 = phi i32* [ %229, %207 ], [ %_address_in_parent_stack_bt_193, %230 ]
  %_new_load_194 = load i32, i32* %232
  %uadd141 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %209, i32 %_new_load_194)
  %233 = extractvalue { i32, i1 } %uadd141, 0
  %234 = xor i32 %233, %_new_load_194, !mcsema_real_eip !40
  %235 = xor i32 %234, %209, !mcsema_real_eip !40
  %236 = and i32 %235, 16, !mcsema_real_eip !40
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !40
  store i1 %237, i1* %AF_val, !mcsema_real_eip !40
  %238 = icmp slt i32 %233, 0
  store i1 %238, i1* %SF_val, !mcsema_real_eip !40
  %239 = icmp eq i32 %233, 0, !mcsema_real_eip !40
  store i1 %239, i1* %ZF_val, !mcsema_real_eip !40
  %240 = xor i32 %209, -2147483648, !mcsema_real_eip !40
  %241 = xor i32 %240, %_new_load_194, !mcsema_real_eip !40
  %242 = and i32 %234, %241, !mcsema_real_eip !40
  %243 = icmp slt i32 %242, 0
  store i1 %243, i1* %OF_val, !mcsema_real_eip !40
  %244 = trunc i32 %233 to i8, !mcsema_real_eip !40
  %245 = tail call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !40
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  store i1 %247, i1* %PF_val, !mcsema_real_eip !40
  %248 = extractvalue { i32, i1 } %uadd141, 1
  store i1 %248, i1* %CF_val, !mcsema_real_eip !40
  %249 = zext i32 %233 to i64, !mcsema_real_eip !40
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %250 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -24
  %251 = add i64 %250, -24, !mcsema_real_eip !41
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !41
  %253 = bitcast i64* %_allin_new_bt_47 to i32*
  %_ptr_to_int_195 = ptrtoint i32* %253 to i64
  %_local_end_to_int_196 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_197 = bitcast i32* %253 to i8*
  %_offset_above_rbp_198 = sub i64 %_ptr_to_int_195, %_local_end_to_int_196
  %_pot_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_cond1_200 = icmp ugt i8* %_ptr_bt_197, %_local_stack_end_ptr_
  %_cond2_1_201 = icmp ugt i8* %_ptr_bt_197, %_parent_stack_end_ptr_
  %_cond2_2_202 = icmp ult i8* %_ptr_bt_197, %_parent_stack_start_ptr_
  %_cond2_203 = or i1 %_cond2_1_201, %_cond2_2_202
  %_cond4_204 = icmp ule i8* %_pot_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond1_n_cond2_205 = and i1 %_cond1_200, %_cond2_203
  %_cond1_n_cond2_cond3_206 = and i1 %_cond1_n_cond2_205, %_cond4_204
  br i1 %_cond1_n_cond2_cond3_206, label %254, label %255

; <label>:254:                                    ; preds = %231
  %_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_address_in_parent_stack_bt_208 = bitcast i8* %_address_in_parent_stack_207 to i32*
  br label %255

; <label>:255:                                    ; preds = %231, %254
  %256 = phi i32* [ %253, %231 ], [ %_address_in_parent_stack_bt_208, %254 ]
  %_new_load_209 = load i32, i32* %256
  %uadd142 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %_new_load_209)
  %257 = extractvalue { i32, i1 } %uadd142, 0
  %258 = xor i32 %257, %_new_load_209, !mcsema_real_eip !41
  %259 = xor i32 %258, %233, !mcsema_real_eip !41
  %260 = and i32 %259, 16, !mcsema_real_eip !41
  %261 = icmp ne i32 %260, 0, !mcsema_real_eip !41
  store i1 %261, i1* %AF_val, !mcsema_real_eip !41
  %262 = icmp slt i32 %257, 0
  store i1 %262, i1* %SF_val, !mcsema_real_eip !41
  %263 = icmp eq i32 %257, 0, !mcsema_real_eip !41
  store i1 %263, i1* %ZF_val, !mcsema_real_eip !41
  %264 = xor i32 %233, -2147483648, !mcsema_real_eip !41
  %265 = xor i32 %264, %_new_load_209, !mcsema_real_eip !41
  %266 = and i32 %258, %265, !mcsema_real_eip !41
  %267 = icmp slt i32 %266, 0
  store i1 %267, i1* %OF_val, !mcsema_real_eip !41
  %268 = trunc i32 %257 to i8, !mcsema_real_eip !41
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !41
  %270 = and i8 %269, 1
  %271 = icmp eq i8 %270, 0
  store i1 %271, i1* %PF_val, !mcsema_real_eip !41
  %272 = extractvalue { i32, i1 } %uadd142, 1
  store i1 %272, i1* %CF_val, !mcsema_real_eip !41
  %273 = zext i32 %257 to i64, !mcsema_real_eip !41
  store i64 %273, i64* %RAX_val, !mcsema_real_eip !41
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -28
  %275 = add i64 %274, -28, !mcsema_real_eip !42
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !42
  %277 = bitcast i64* %_allin_new_bt_50 to i32*
  %_ptr_to_int_210 = ptrtoint i32* %277 to i64
  %_local_end_to_int_211 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_212 = bitcast i32* %277 to i8*
  %_offset_above_rbp_213 = sub i64 %_ptr_to_int_210, %_local_end_to_int_211
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_ptr_bt_212, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_ptr_bt_212, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_ptr_bt_212, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  br i1 %_cond1_n_cond2_cond3_221, label %278, label %279

; <label>:278:                                    ; preds = %255
  %_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_address_in_parent_stack_bt_223 = bitcast i8* %_address_in_parent_stack_222 to i32*
  br label %279

; <label>:279:                                    ; preds = %255, %278
  %280 = phi i32* [ %277, %255 ], [ %_address_in_parent_stack_bt_223, %278 ]
  %_new_load_224 = load i32, i32* %280
  %uadd143 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %257, i32 %_new_load_224)
  %281 = extractvalue { i32, i1 } %uadd143, 0
  %282 = xor i32 %281, %_new_load_224, !mcsema_real_eip !42
  %283 = xor i32 %282, %257, !mcsema_real_eip !42
  %284 = and i32 %283, 16, !mcsema_real_eip !42
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !42
  store i1 %285, i1* %AF_val, !mcsema_real_eip !42
  %286 = icmp slt i32 %281, 0
  store i1 %286, i1* %SF_val, !mcsema_real_eip !42
  %287 = icmp eq i32 %281, 0, !mcsema_real_eip !42
  store i1 %287, i1* %ZF_val, !mcsema_real_eip !42
  %288 = xor i32 %257, -2147483648, !mcsema_real_eip !42
  %289 = xor i32 %288, %_new_load_224, !mcsema_real_eip !42
  %290 = and i32 %282, %289, !mcsema_real_eip !42
  %291 = icmp slt i32 %290, 0
  store i1 %291, i1* %OF_val, !mcsema_real_eip !42
  %292 = trunc i32 %281 to i8, !mcsema_real_eip !42
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !42
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  store i1 %295, i1* %PF_val, !mcsema_real_eip !42
  %296 = extractvalue { i32, i1 } %uadd143, 1
  store i1 %296, i1* %CF_val, !mcsema_real_eip !42
  %297 = zext i32 %281 to i64, !mcsema_real_eip !42
  store i64 %297, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %298 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -36
  %299 = add i64 %298, -36, !mcsema_real_eip !43
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !43
  %301 = bitcast i64* %_allin_new_bt_53 to i32*
  store i32 %281, i32* %301, !mcsema_real_eip !43
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %302 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -36
  %303 = add i64 %302, -36, !mcsema_real_eip !44
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !44
  %305 = bitcast i64* %_allin_new_bt_56 to i32*
  %_ptr_to_int_225 = ptrtoint i32* %305 to i64
  %_local_end_to_int_226 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_227 = bitcast i32* %305 to i8*
  %_offset_above_rbp_228 = sub i64 %_ptr_to_int_225, %_local_end_to_int_226
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_ptr_bt_227, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_ptr_bt_227, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_ptr_bt_227, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  br i1 %_cond1_n_cond2_cond3_236, label %306, label %307

; <label>:306:                                    ; preds = %279
  %_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_address_in_parent_stack_bt_238 = bitcast i8* %_address_in_parent_stack_237 to i32*
  br label %307

; <label>:307:                                    ; preds = %279, %306
  %308 = phi i32* [ %305, %279 ], [ %_address_in_parent_stack_bt_238, %306 ]
  %_new_load_239 = load i32, i32* %308
  %309 = add i32 %_new_load_239, -40
  %310 = xor i32 %309, %_new_load_239, !mcsema_real_eip !44
  %311 = and i32 %310, 16, !mcsema_real_eip !44
  %312 = icmp ne i32 %311, 0, !mcsema_real_eip !44
  store i1 %312, i1* %AF_val, !mcsema_real_eip !44
  %313 = trunc i32 %309 to i8, !mcsema_real_eip !44
  %314 = tail call i8 @llvm.ctpop.i8(i8 %313), !mcsema_real_eip !44
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  store i1 %316, i1* %PF_val, !mcsema_real_eip !44
  %317 = icmp eq i32 %309, 0, !mcsema_real_eip !44
  store i1 %317, i1* %ZF_val, !mcsema_real_eip !44
  %318 = icmp slt i32 %309, 0
  store i1 %318, i1* %SF_val, !mcsema_real_eip !44
  %319 = icmp ult i32 %_new_load_239, 40, !mcsema_real_eip !44
  store i1 %319, i1* %CF_val, !mcsema_real_eip !44
  %320 = and i32 %310, %_new_load_239, !mcsema_real_eip !44
  %321 = icmp slt i32 %320, 0
  store i1 %321, i1* %OF_val, !mcsema_real_eip !44
  %322 = xor i1 %318, %321
  %323 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  %324 = or i1 %323, %322, !mcsema_real_eip !45
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %325 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -36
  %326 = add i64 %325, -36, !mcsema_real_eip !46
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !46
  %328 = bitcast i64* %_allin_new_bt_59 to i32*
  %_ptr_to_int_240 = ptrtoint i32* %328 to i64
  %_local_end_to_int_241 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_242 = bitcast i32* %328 to i8*
  %_offset_above_rbp_243 = sub i64 %_ptr_to_int_240, %_local_end_to_int_241
  %_pot_address_in_parent_stack_244 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_cond1_245 = icmp ugt i8* %_ptr_bt_242, %_local_stack_end_ptr_
  %_cond2_1_246 = icmp ugt i8* %_ptr_bt_242, %_parent_stack_end_ptr_
  %_cond2_2_247 = icmp ult i8* %_ptr_bt_242, %_parent_stack_start_ptr_
  %_cond2_248 = or i1 %_cond2_1_246, %_cond2_2_247
  %_cond4_249 = icmp ule i8* %_pot_address_in_parent_stack_244, %_parent_stack_end_ptr_
  %_cond1_n_cond2_250 = and i1 %_cond1_245, %_cond2_248
  %_cond1_n_cond2_cond3_251 = and i1 %_cond1_n_cond2_250, %_cond4_249
  br i1 %_cond1_n_cond2_cond3_251, label %329, label %330

; <label>:329:                                    ; preds = %307
  %_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_address_in_parent_stack_bt_253 = bitcast i8* %_address_in_parent_stack_252 to i32*
  br label %330

; <label>:330:                                    ; preds = %307, %329
  %331 = phi i32* [ %328, %307 ], [ %_address_in_parent_stack_bt_253, %329 ]
  %_new_load_254 = load i32, i32* %331
  %332 = zext i32 %_new_load_254 to i64, !mcsema_real_eip !46
  store i64 %332, i64* %RAX_val, !mcsema_real_eip !46
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %333 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -32
  %334 = add i64 %333, -32, !mcsema_real_eip !47
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !47
  %336 = bitcast i64* %_allin_new_bt_62 to i32*
  %_ptr_to_int_255 = ptrtoint i32* %336 to i64
  %_local_end_to_int_256 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_257 = bitcast i32* %336 to i8*
  %_offset_above_rbp_258 = sub i64 %_ptr_to_int_255, %_local_end_to_int_256
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_ptr_bt_257, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_ptr_bt_257, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_ptr_bt_257, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  br i1 %_cond1_n_cond2_cond3_266, label %337, label %338

; <label>:337:                                    ; preds = %330
  %_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_address_in_parent_stack_bt_268 = bitcast i8* %_address_in_parent_stack_267 to i32*
  br label %338

; <label>:338:                                    ; preds = %330, %337
  %339 = phi i32* [ %336, %330 ], [ %_address_in_parent_stack_bt_268, %337 ]
  %_new_load_269 = load i32, i32* %339
  br i1 %324, label %block_0x56, label %block_0x48, !mcsema_real_eip !45

block_0x56:                                       ; preds = %338
  %340 = sub i32 %_new_load_254, %_new_load_269, !mcsema_real_eip !47
  %341 = xor i32 %340, %_new_load_254, !mcsema_real_eip !47
  %342 = xor i32 %341, %_new_load_269, !mcsema_real_eip !47
  %343 = and i32 %342, 16, !mcsema_real_eip !47
  %344 = icmp ne i32 %343, 0, !mcsema_real_eip !47
  store i1 %344, i1* %AF_val, !mcsema_real_eip !47
  %345 = trunc i32 %340 to i8, !mcsema_real_eip !47
  %346 = tail call i8 @llvm.ctpop.i8(i8 %345), !mcsema_real_eip !47
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  store i1 %348, i1* %PF_val, !mcsema_real_eip !47
  %349 = icmp eq i32 %_new_load_254, %_new_load_269
  store i1 %349, i1* %ZF_val, !mcsema_real_eip !47
  %350 = icmp slt i32 %340, 0
  store i1 %350, i1* %SF_val, !mcsema_real_eip !47
  %351 = icmp ult i32 %_new_load_254, %_new_load_269, !mcsema_real_eip !47
  store i1 %351, i1* %CF_val, !mcsema_real_eip !47
  %352 = xor i32 %_new_load_269, %_new_load_254, !mcsema_real_eip !47
  %353 = and i32 %341, %352, !mcsema_real_eip !47
  %354 = icmp slt i32 %353, 0
  store i1 %354, i1* %OF_val, !mcsema_real_eip !47
  %355 = zext i32 %340 to i64, !mcsema_real_eip !47
  store i64 %355, i64* %RAX_val, !mcsema_real_eip !47
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -40
  %357 = add i64 %356, -40, !mcsema_real_eip !48
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !48
  %359 = bitcast i64* %_allin_new_bt_65 to i32*
  store i32 %340, i32* %359, !mcsema_real_eip !48
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %360 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -40
  %361 = add i64 %360, -40, !mcsema_real_eip !49
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !49
  %363 = bitcast i64* %_allin_new_bt_68 to i32*
  %_ptr_to_int_270 = ptrtoint i32* %363 to i64
  %_local_end_to_int_271 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_272 = bitcast i32* %363 to i8*
  %_offset_above_rbp_273 = sub i64 %_ptr_to_int_270, %_local_end_to_int_271
  %_pot_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_cond1_275 = icmp ugt i8* %_ptr_bt_272, %_local_stack_end_ptr_
  %_cond2_1_276 = icmp ugt i8* %_ptr_bt_272, %_parent_stack_end_ptr_
  %_cond2_2_277 = icmp ult i8* %_ptr_bt_272, %_parent_stack_start_ptr_
  %_cond2_278 = or i1 %_cond2_1_276, %_cond2_2_277
  %_cond4_279 = icmp ule i8* %_pot_address_in_parent_stack_274, %_parent_stack_end_ptr_
  %_cond1_n_cond2_280 = and i1 %_cond1_275, %_cond2_278
  %_cond1_n_cond2_cond3_281 = and i1 %_cond1_n_cond2_280, %_cond4_279
  br i1 %_cond1_n_cond2_cond3_281, label %364, label %365

; <label>:364:                                    ; preds = %block_0x56
  %_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_address_in_parent_stack_bt_283 = bitcast i8* %_address_in_parent_stack_282 to i32*
  br label %365

; <label>:365:                                    ; preds = %block_0x56, %364
  %366 = phi i32* [ %363, %block_0x56 ], [ %_address_in_parent_stack_bt_283, %364 ]
  %_new_load_284 = load i32, i32* %366
  %367 = zext i32 %_new_load_284 to i64, !mcsema_real_eip !49
  store i64 %367, i64* %RAX_val, !mcsema_real_eip !49
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %368 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %_allin_new_bt_70 = bitcast i8* %_load_rsp_ptr_69 to i64*
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !50
  %_ptr_to_int_285 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_local_end_to_int_286 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_287 = bitcast i64* %_allin_new_bt_70 to i8*
  %_offset_above_rbp_288 = sub i64 %_ptr_to_int_285, %_local_end_to_int_286
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_ptr_bt_287, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_ptr_bt_287, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_ptr_bt_287, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  br i1 %_cond1_n_cond2_cond3_296, label %370, label %371

; <label>:370:                                    ; preds = %365
  %_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_address_in_parent_stack_bt_298 = bitcast i8* %_address_in_parent_stack_297 to i64*
  br label %371

; <label>:371:                                    ; preds = %365, %370
  %372 = phi i64* [ %_allin_new_bt_70, %365 ], [ %_address_in_parent_stack_bt_298, %370 ]
  %_new_load_299 = load i64, i64* %372
  %_new_int2ptr_ = inttoptr i64 %_new_load_299 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_299, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_71 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 16
  %373 = add i64 %368, 16, !mcsema_real_eip !51
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_
  store i64 %373, i64* %RSP_val, !mcsema_real_eip !51
  %374 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  store i64 %374, i64* %RAX, !mcsema_real_eip !51
  %375 = load i64, i64* %RBX_val, !mcsema_real_eip !51
  store i64 %375, i64* %RBX, !mcsema_real_eip !51
  %376 = load i64, i64* %RCX_val, !mcsema_real_eip !51
  store i64 %376, i64* %RCX, !mcsema_real_eip !51
  %377 = load i64, i64* %RDX_val, !mcsema_real_eip !51
  store i64 %377, i64* %RDX, !mcsema_real_eip !51
  %378 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  store i64 %378, i64* %RSI, !mcsema_real_eip !51
  %379 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  store i64 %379, i64* %RDI, !mcsema_real_eip !51
  %_load_rsp_ptr_72 = load i8*, i8** %_RSP_ptr_
  %380 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %_new_ptr2int_73 = ptrtoint i8* %_load_rsp_ptr_72 to i64
  store volatile i64 %_new_ptr2int_73, i64* %RSP
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %381 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_ptr2int_75 = ptrtoint i8* %_load_rbp_ptr_74 to i64
  store volatile i64 %_new_ptr2int_75, i64* %RBP
  %382 = load i64, i64* %R8_val, !mcsema_real_eip !51
  store i64 %382, i64* %R8, !mcsema_real_eip !51
  %383 = load i64, i64* %R9_val, !mcsema_real_eip !51
  store i64 %383, i64* %R9, !mcsema_real_eip !51
  %384 = load i64, i64* %R10_val, !mcsema_real_eip !51
  store i64 %384, i64* %R10, !mcsema_real_eip !51
  %385 = load i64, i64* %R11_val, !mcsema_real_eip !51
  store i64 %385, i64* %R11, !mcsema_real_eip !51
  %386 = load i64, i64* %R12_val, !mcsema_real_eip !51
  store i64 %386, i64* %R12, !mcsema_real_eip !51
  %387 = load i64, i64* %R13_val, !mcsema_real_eip !51
  store i64 %387, i64* %R13, !mcsema_real_eip !51
  %388 = load i64, i64* %R14_val, !mcsema_real_eip !51
  store i64 %388, i64* %R14, !mcsema_real_eip !51
  %389 = load i64, i64* %R15_val, !mcsema_real_eip !51
  store i64 %389, i64* %R15, !mcsema_real_eip !51
  %390 = load i64, i64* %RIP_val, !mcsema_real_eip !51
  store i64 %390, i64* %RIP, !mcsema_real_eip !51
  %391 = load i1, i1* %CF_val, !mcsema_real_eip !51
  store i1 %391, i1* %CF, align 1, !mcsema_real_eip !51
  %392 = load i1, i1* %PF_val, !mcsema_real_eip !51
  store i1 %392, i1* %PF, align 1, !mcsema_real_eip !51
  %393 = load i1, i1* %AF_val, !mcsema_real_eip !51
  store i1 %393, i1* %AF, align 1, !mcsema_real_eip !51
  %394 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  store i1 %394, i1* %ZF, align 1, !mcsema_real_eip !51
  %395 = load i1, i1* %SF_val, !mcsema_real_eip !51
  store i1 %395, i1* %SF, align 1, !mcsema_real_eip !51
  %396 = load i1, i1* %OF_val, !mcsema_real_eip !51
  store i1 %396, i1* %OF, align 1, !mcsema_real_eip !51
  %397 = load i1, i1* %DF_val, !mcsema_real_eip !51
  store i1 %397, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %398 = load i1, i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %398, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %399 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %399, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %400 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %400, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %401 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %401, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %402 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %402, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %403 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %403, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %404 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %404, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %405 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %405, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %406 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %406, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %407 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %407, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %408 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %408, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %409 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %409, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %410 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %410, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %411 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %411, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %412 = load i1, i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %412, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %413 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %413, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %414 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %414, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %415 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %415, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %416 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %416, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %417 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %417, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %418 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %418, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %419 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %419, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %420 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %420, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %_ptr_to_int_300 = ptrtoint i64* %53 to i64
  %_local_end_to_int_301 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_302 = bitcast i64* %53 to i8*
  %_offset_above_rbp_303 = sub i64 %_ptr_to_int_300, %_local_end_to_int_301
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_ptr_bt_302, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_ptr_bt_302, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_ptr_bt_302, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  br i1 %_cond1_n_cond2_cond3_311, label %421, label %422

; <label>:421:                                    ; preds = %371
  %_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_address_in_parent_stack_bt_313 = bitcast i8* %_address_in_parent_stack_312 to i64*
  br label %422

; <label>:422:                                    ; preds = %371, %421
  %423 = phi i64* [ %53, %371 ], [ %_address_in_parent_stack_bt_313, %421 ]
  %_new_load_314 = load i64, i64* %423
  store i64 %_new_load_314, i64* %52, align 4
  %424 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %424, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %425 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %425, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %426 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %426, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %427 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %427, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %428 = load i128, i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %428, i128* %XMM0, align 1, !mcsema_real_eip !51
  %429 = load i128, i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %429, i128* %XMM1, align 1, !mcsema_real_eip !51
  %430 = load i128, i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %430, i128* %XMM2, align 1, !mcsema_real_eip !51
  %431 = load i128, i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %431, i128* %XMM3, align 1, !mcsema_real_eip !51
  %432 = load i128, i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %432, i128* %XMM4, align 1, !mcsema_real_eip !51
  %433 = load i128, i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %433, i128* %XMM5, align 1, !mcsema_real_eip !51
  %434 = load i128, i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %434, i128* %XMM6, align 1, !mcsema_real_eip !51
  %435 = load i128, i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %435, i128* %XMM7, align 1, !mcsema_real_eip !51
  %436 = load i128, i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %436, i128* %XMM8, align 1, !mcsema_real_eip !51
  %437 = load i128, i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %437, i128* %XMM9, align 1, !mcsema_real_eip !51
  %438 = load i128, i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %438, i128* %XMM10, align 1, !mcsema_real_eip !51
  %439 = load i128, i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %439, i128* %XMM11, align 1, !mcsema_real_eip !51
  %440 = load i128, i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %440, i128* %XMM12, align 1, !mcsema_real_eip !51
  %441 = load i128, i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %441, i128* %XMM13, align 1, !mcsema_real_eip !51
  %442 = load i128, i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %442, i128* %XMM14, align 1, !mcsema_real_eip !51
  %443 = load i128, i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %443, i128* %XMM15, align 1, !mcsema_real_eip !51
  %444 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %444, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %445 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %445, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51

block_0x48:                                       ; preds = %338
  %uadd145 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_254, i32 %_new_load_269)
  %446 = extractvalue { i32, i1 } %uadd145, 0
  %447 = xor i32 %446, %_new_load_269, !mcsema_real_eip !52
  %448 = xor i32 %447, %_new_load_254, !mcsema_real_eip !52
  %449 = and i32 %448, 16, !mcsema_real_eip !52
  %450 = icmp ne i32 %449, 0, !mcsema_real_eip !52
  store i1 %450, i1* %AF_val, !mcsema_real_eip !52
  %451 = icmp slt i32 %446, 0
  store i1 %451, i1* %SF_val, !mcsema_real_eip !52
  %452 = icmp eq i32 %446, 0, !mcsema_real_eip !52
  store i1 %452, i1* %ZF_val, !mcsema_real_eip !52
  %453 = xor i32 %_new_load_254, -2147483648, !mcsema_real_eip !52
  %454 = xor i32 %453, %_new_load_269, !mcsema_real_eip !52
  %455 = and i32 %447, %454, !mcsema_real_eip !52
  %456 = icmp slt i32 %455, 0
  store i1 %456, i1* %OF_val, !mcsema_real_eip !52
  %457 = trunc i32 %446 to i8, !mcsema_real_eip !52
  %458 = tail call i8 @llvm.ctpop.i8(i8 %457), !mcsema_real_eip !52
  %459 = and i8 %458, 1
  %460 = icmp eq i8 %459, 0
  store i1 %460, i1* %PF_val, !mcsema_real_eip !52
  %461 = extractvalue { i32, i1 } %uadd145, 1
  store i1 %461, i1* %CF_val, !mcsema_real_eip !52
  %462 = zext i32 %446 to i64, !mcsema_real_eip !52
  store i64 %462, i64* %RAX_val, !mcsema_real_eip !52
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %463 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -40
  %464 = add i64 %463, -40, !mcsema_real_eip !53
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !53
  %466 = bitcast i64* %_allin_new_bt_78 to i32*
  store i32 %446, i32* %466, !mcsema_real_eip !53
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %467 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -40
  %468 = add i64 %467, -40, !mcsema_real_eip !49
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !49
  %470 = bitcast i64* %_allin_new_bt_81 to i32*
  %_ptr_to_int_315 = ptrtoint i32* %470 to i64
  %_local_end_to_int_316 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_317 = bitcast i32* %470 to i8*
  %_offset_above_rbp_318 = sub i64 %_ptr_to_int_315, %_local_end_to_int_316
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_ptr_bt_317, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_ptr_bt_317, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_ptr_bt_317, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  br i1 %_cond1_n_cond2_cond3_326, label %471, label %472

; <label>:471:                                    ; preds = %block_0x48
  %_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_address_in_parent_stack_bt_328 = bitcast i8* %_address_in_parent_stack_327 to i32*
  br label %472

; <label>:472:                                    ; preds = %block_0x48, %471
  %473 = phi i32* [ %470, %block_0x48 ], [ %_address_in_parent_stack_bt_328, %471 ]
  %_new_load_329 = load i32, i32* %473
  %474 = zext i32 %_new_load_329 to i64, !mcsema_real_eip !49
  store i64 %474, i64* %RAX_val, !mcsema_real_eip !49
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %475 = load i64, i64* %RSP_val, !mcsema_real_eip !50
  %_allin_new_bt_83 = bitcast i8* %_load_rsp_ptr_82 to i64*
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !50
  %_ptr_to_int_330 = ptrtoint i64* %_allin_new_bt_83 to i64
  %_local_end_to_int_331 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_332 = bitcast i64* %_allin_new_bt_83 to i8*
  %_offset_above_rbp_333 = sub i64 %_ptr_to_int_330, %_local_end_to_int_331
  %_pot_address_in_parent_stack_334 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_cond1_335 = icmp ugt i8* %_ptr_bt_332, %_local_stack_end_ptr_
  %_cond2_1_336 = icmp ugt i8* %_ptr_bt_332, %_parent_stack_end_ptr_
  %_cond2_2_337 = icmp ult i8* %_ptr_bt_332, %_parent_stack_start_ptr_
  %_cond2_338 = or i1 %_cond2_1_336, %_cond2_2_337
  %_cond4_339 = icmp ule i8* %_pot_address_in_parent_stack_334, %_parent_stack_end_ptr_
  %_cond1_n_cond2_340 = and i1 %_cond1_335, %_cond2_338
  %_cond1_n_cond2_cond3_341 = and i1 %_cond1_n_cond2_340, %_cond4_339
  br i1 %_cond1_n_cond2_cond3_341, label %477, label %478

; <label>:477:                                    ; preds = %472
  %_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_address_in_parent_stack_bt_343 = bitcast i8* %_address_in_parent_stack_342 to i64*
  br label %478

; <label>:478:                                    ; preds = %472, %477
  %479 = phi i64* [ %_allin_new_bt_83, %472 ], [ %_address_in_parent_stack_bt_343, %477 ]
  %_new_load_344 = load i64, i64* %479
  %_new_int2ptr_84 = inttoptr i64 %_new_load_344 to i8*
  store volatile i8* %_new_int2ptr_84, i8** %_RBP_ptr_
  store i64 %_new_load_344, i64* %RBP_val, !mcsema_real_eip !50
  %_new_gep_85 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 16
  %480 = add i64 %475, 16, !mcsema_real_eip !51
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %480, i64* %RSP_val, !mcsema_real_eip !51
  %481 = load i64, i64* %RAX_val, !mcsema_real_eip !51
  store i64 %481, i64* %RAX, !mcsema_real_eip !51
  %482 = load i64, i64* %RBX_val, !mcsema_real_eip !51
  store i64 %482, i64* %RBX, !mcsema_real_eip !51
  %483 = load i64, i64* %RCX_val, !mcsema_real_eip !51
  store i64 %483, i64* %RCX, !mcsema_real_eip !51
  %484 = load i64, i64* %RDX_val, !mcsema_real_eip !51
  store i64 %484, i64* %RDX, !mcsema_real_eip !51
  %485 = load i64, i64* %RSI_val, !mcsema_real_eip !51
  store i64 %485, i64* %RSI, !mcsema_real_eip !51
  %486 = load i64, i64* %RDI_val, !mcsema_real_eip !51
  store i64 %486, i64* %RDI, !mcsema_real_eip !51
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %487 = load i64, i64* %RSP_val, !mcsema_real_eip !51
  %_new_ptr2int_87 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  store volatile i64 %_new_ptr2int_87, i64* %RSP
  %_load_rbp_ptr_88 = load i8*, i8** %_RBP_ptr_
  %488 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_ptr2int_89 = ptrtoint i8* %_load_rbp_ptr_88 to i64
  store volatile i64 %_new_ptr2int_89, i64* %RBP
  %489 = load i64, i64* %R8_val, !mcsema_real_eip !51
  store i64 %489, i64* %R8, !mcsema_real_eip !51
  %490 = load i64, i64* %R9_val, !mcsema_real_eip !51
  store i64 %490, i64* %R9, !mcsema_real_eip !51
  %491 = load i64, i64* %R10_val, !mcsema_real_eip !51
  store i64 %491, i64* %R10, !mcsema_real_eip !51
  %492 = load i64, i64* %R11_val, !mcsema_real_eip !51
  store i64 %492, i64* %R11, !mcsema_real_eip !51
  %493 = load i64, i64* %R12_val, !mcsema_real_eip !51
  store i64 %493, i64* %R12, !mcsema_real_eip !51
  %494 = load i64, i64* %R13_val, !mcsema_real_eip !51
  store i64 %494, i64* %R13, !mcsema_real_eip !51
  %495 = load i64, i64* %R14_val, !mcsema_real_eip !51
  store i64 %495, i64* %R14, !mcsema_real_eip !51
  %496 = load i64, i64* %R15_val, !mcsema_real_eip !51
  store i64 %496, i64* %R15, !mcsema_real_eip !51
  %497 = load i64, i64* %RIP_val, !mcsema_real_eip !51
  store i64 %497, i64* %RIP, !mcsema_real_eip !51
  %498 = load i1, i1* %CF_val, !mcsema_real_eip !51
  store i1 %498, i1* %CF, align 1, !mcsema_real_eip !51
  %499 = load i1, i1* %PF_val, !mcsema_real_eip !51
  store i1 %499, i1* %PF, align 1, !mcsema_real_eip !51
  %500 = load i1, i1* %AF_val, !mcsema_real_eip !51
  store i1 %500, i1* %AF, align 1, !mcsema_real_eip !51
  %501 = load i1, i1* %ZF_val, !mcsema_real_eip !51
  store i1 %501, i1* %ZF, align 1, !mcsema_real_eip !51
  %502 = load i1, i1* %SF_val, !mcsema_real_eip !51
  store i1 %502, i1* %SF, align 1, !mcsema_real_eip !51
  %503 = load i1, i1* %OF_val, !mcsema_real_eip !51
  store i1 %503, i1* %OF, align 1, !mcsema_real_eip !51
  %504 = load i1, i1* %DF_val, !mcsema_real_eip !51
  store i1 %504, i1* %DF, align 1, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !51
  %505 = load i1, i1* %FPU_B_val, !mcsema_real_eip !51
  store i1 %505, i1* %FPU_B, align 1, !mcsema_real_eip !51
  %506 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !51
  store i1 %506, i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %507 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !51
  store i3 %507, i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %508 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !51
  store i1 %508, i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %509 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !51
  store i1 %509, i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %510 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !51
  store i1 %510, i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %511 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !51
  store i1 %511, i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %512 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !51
  store i1 %512, i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %513 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !51
  store i1 %513, i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %514 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !51
  store i1 %514, i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %515 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !51
  store i1 %515, i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %516 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !51
  store i1 %516, i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %517 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !51
  store i1 %517, i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %518 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !51
  store i1 %518, i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %519 = load i1, i1* %FPU_X_val, !mcsema_real_eip !51
  store i1 %519, i1* %FPU_X, align 1, !mcsema_real_eip !51
  %520 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !51
  store i2 %520, i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %521 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !51
  store i2 %521, i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %522 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !51
  store i1 %522, i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %523 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !51
  store i1 %523, i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %524 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !51
  store i1 %524, i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %525 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !51
  store i1 %525, i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %526 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !51
  store i1 %526, i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %527 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !51
  store i1 %527, i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %_ptr_to_int_345 = ptrtoint i64* %53 to i64
  %_local_end_to_int_346 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_347 = bitcast i64* %53 to i8*
  %_offset_above_rbp_348 = sub i64 %_ptr_to_int_345, %_local_end_to_int_346
  %_pot_address_in_parent_stack_349 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_cond1_350 = icmp ugt i8* %_ptr_bt_347, %_local_stack_end_ptr_
  %_cond2_1_351 = icmp ugt i8* %_ptr_bt_347, %_parent_stack_end_ptr_
  %_cond2_2_352 = icmp ult i8* %_ptr_bt_347, %_parent_stack_start_ptr_
  %_cond2_353 = or i1 %_cond2_1_351, %_cond2_2_352
  %_cond4_354 = icmp ule i8* %_pot_address_in_parent_stack_349, %_parent_stack_end_ptr_
  %_cond1_n_cond2_355 = and i1 %_cond1_350, %_cond2_353
  %_cond1_n_cond2_cond3_356 = and i1 %_cond1_n_cond2_355, %_cond4_354
  br i1 %_cond1_n_cond2_cond3_356, label %528, label %529

; <label>:528:                                    ; preds = %478
  %_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_address_in_parent_stack_bt_358 = bitcast i8* %_address_in_parent_stack_357 to i64*
  br label %529

; <label>:529:                                    ; preds = %478, %528
  %530 = phi i64* [ %53, %478 ], [ %_address_in_parent_stack_bt_358, %528 ]
  %_new_load_359 = load i64, i64* %530
  store i64 %_new_load_359, i64* %52, align 4
  %531 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  store i16 %531, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %532 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  store i64 %532, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !51
  %533 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  store i16 %533, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %534 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  store i64 %534, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !51
  %535 = load i128, i128* %XMM0_val, !mcsema_real_eip !51
  store i128 %535, i128* %XMM0, align 1, !mcsema_real_eip !51
  %536 = load i128, i128* %XMM1_val, !mcsema_real_eip !51
  store i128 %536, i128* %XMM1, align 1, !mcsema_real_eip !51
  %537 = load i128, i128* %XMM2_val, !mcsema_real_eip !51
  store i128 %537, i128* %XMM2, align 1, !mcsema_real_eip !51
  %538 = load i128, i128* %XMM3_val, !mcsema_real_eip !51
  store i128 %538, i128* %XMM3, align 1, !mcsema_real_eip !51
  %539 = load i128, i128* %XMM4_val, !mcsema_real_eip !51
  store i128 %539, i128* %XMM4, align 1, !mcsema_real_eip !51
  %540 = load i128, i128* %XMM5_val, !mcsema_real_eip !51
  store i128 %540, i128* %XMM5, align 1, !mcsema_real_eip !51
  %541 = load i128, i128* %XMM6_val, !mcsema_real_eip !51
  store i128 %541, i128* %XMM6, align 1, !mcsema_real_eip !51
  %542 = load i128, i128* %XMM7_val, !mcsema_real_eip !51
  store i128 %542, i128* %XMM7, align 1, !mcsema_real_eip !51
  %543 = load i128, i128* %XMM8_val, !mcsema_real_eip !51
  store i128 %543, i128* %XMM8, align 1, !mcsema_real_eip !51
  %544 = load i128, i128* %XMM9_val, !mcsema_real_eip !51
  store i128 %544, i128* %XMM9, align 1, !mcsema_real_eip !51
  %545 = load i128, i128* %XMM10_val, !mcsema_real_eip !51
  store i128 %545, i128* %XMM10, align 1, !mcsema_real_eip !51
  %546 = load i128, i128* %XMM11_val, !mcsema_real_eip !51
  store i128 %546, i128* %XMM11, align 1, !mcsema_real_eip !51
  %547 = load i128, i128* %XMM12_val, !mcsema_real_eip !51
  store i128 %547, i128* %XMM12, align 1, !mcsema_real_eip !51
  %548 = load i128, i128* %XMM13_val, !mcsema_real_eip !51
  store i128 %548, i128* %XMM13, align 1, !mcsema_real_eip !51
  %549 = load i128, i128* %XMM14_val, !mcsema_real_eip !51
  store i128 %549, i128* %XMM14, align 1, !mcsema_real_eip !51
  %550 = load i128, i128* %XMM15_val, !mcsema_real_eip !51
  store i128 %550, i128* %XMM15, align 1, !mcsema_real_eip !51
  %551 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !51
  store i64 %551, i64* %STACK_BASE, align 1, !mcsema_real_eip !51
  %552 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 %552, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 113, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 116, [16 x i8] c"\09subq\09$32, %rsp\00"}
!5 = !{i64 120, [16 x i8] c"\09movl\09$10, %edi\00"}
!6 = !{i64 125, [16 x i8] c"\09movl\09$20, %esi\00"}
!7 = !{i64 130, [16 x i8] c"\09movl\09$30, %edx\00"}
!8 = !{i64 135, [16 x i8] c"\09movl\09$40, %ecx\00"}
!9 = !{i64 140, [16 x i8] c"\09movl\09$50, %r8d\00"}
!10 = !{i64 146, [16 x i8] c"\09movl\09$60, %r9d\00"}
!11 = !{i64 152, [16 x i8] c"\09movl\09$70, %eax\00"}
!12 = !{i64 157, [17 x i8] c"\09movl\09$80, %r10d\00"}
!13 = !{i64 163, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!14 = !{i64 170, [18 x i8] c"\09movl\09$70, (%rsp)\00"}
!15 = !{i64 177, [19 x i8] c"\09movl\09$80, 8(%rsp)\00"}
!16 = !{i64 185, [23 x i8] c"\09movl\09%r10d, -12(%rbp)\00"}
!17 = !{i64 189, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!18 = !{i64 192, [12 x i8] c"\09callq\09-197\00"}
!19 = !{i64 197, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!20 = !{i64 200, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!21 = !{i64 203, [16 x i8] c"\09addq\09$32, %rsp\00"}
!22 = !{i64 207, [11 x i8] c"\09popq\09%rbp\00"}
!23 = !{i64 208, [6 x i8] c"\09retq\00"}
!24 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!25 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!26 = !{i64 4, [21 x i8] c"\09movl\0924(%rbp), %eax\00"}
!27 = !{i64 7, [22 x i8] c"\09movl\0916(%rbp), %r10d\00"}
!28 = !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!29 = !{i64 14, [21 x i8] c"\09movl\09%esi, -8(%rbp)\00"}
!30 = !{i64 17, [22 x i8] c"\09movl\09%edx, -12(%rbp)\00"}
!31 = !{i64 20, [22 x i8] c"\09movl\09%ecx, -16(%rbp)\00"}
!32 = !{i64 23, [22 x i8] c"\09movl\09%r8d, -20(%rbp)\00"}
!33 = !{i64 27, [22 x i8] c"\09movl\09%r9d, -24(%rbp)\00"}
!34 = !{i64 31, [23 x i8] c"\09movl\09%r10d, -28(%rbp)\00"}
!35 = !{i64 35, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!36 = !{i64 38, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!37 = !{i64 41, [21 x i8] c"\09addl\09-8(%rbp), %eax\00"}
!38 = !{i64 44, [22 x i8] c"\09addl\09-12(%rbp), %eax\00"}
!39 = !{i64 47, [22 x i8] c"\09addl\09-16(%rbp), %eax\00"}
!40 = !{i64 50, [22 x i8] c"\09addl\09-20(%rbp), %eax\00"}
!41 = !{i64 53, [22 x i8] c"\09addl\09-24(%rbp), %eax\00"}
!42 = !{i64 56, [22 x i8] c"\09addl\09-28(%rbp), %eax\00"}
!43 = !{i64 59, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!44 = !{i64 62, [21 x i8] c"\09cmpl\09$40, -36(%rbp)\00"}
!45 = !{i64 66, [8 x i8] c"\09jle\0914\00"}
!46 = !{i64 86, [22 x i8] c"\09movl\09-36(%rbp), %eax\00"}
!47 = !{i64 89, [22 x i8] c"\09subl\09-32(%rbp), %eax\00"}
!48 = !{i64 92, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
!49 = !{i64 95, [22 x i8] c"\09movl\09-40(%rbp), %eax\00"}
!50 = !{i64 98, [11 x i8] c"\09popq\09%rbp\00"}
!51 = !{i64 99, [6 x i8] c"\09retq\00"}
!52 = !{i64 75, [22 x i8] c"\09addl\09-32(%rbp), %eax\00"}
!53 = !{i64 78, [22 x i8] c"\09movl\09%eax, -40(%rbp)\00"}
