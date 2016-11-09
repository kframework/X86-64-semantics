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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -40
  %82 = add i64 %79, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !4
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 32
  %92 = icmp ult i64 %80, 32, !mcsema_real_eip !4
  store i1 %_trans_icmp_ne_7, i1* %CF_val, !mcsema_real_eip !4
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_8
  %93 = and i64 %_trans_xor_, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %_trans_xor_9, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  store i64 30, i64* %RDX_val, !mcsema_real_eip !7
  store i64 40, i64* %RCX_val, !mcsema_real_eip !8
  store i64 50, i64* %R8_val, !mcsema_real_eip !9
  store i64 60, i64* %R9_val, !mcsema_real_eip !10
  store i64 70, i64* %RAX_val, !mcsema_real_eip !11
  store i64 80, i64* %R10_val, !mcsema_real_eip !12
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %96 = add i64 %95, -4, !mcsema_real_eip !13
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !13
  %98 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !13
  %_load_rsp_ptr_13 = load i8*, i8** %_RSP_ptr_
  %99 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_allin_new_bt_14 = bitcast i8* %_load_rsp_ptr_13 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !14
  %101 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 70, i32* %101, !mcsema_real_eip !14
  %_load_rsp_ptr_15 = load i8*, i8** %_RSP_ptr_
  %102 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %_new_gep_16 = getelementptr i8, i8* %_load_rsp_ptr_15, i64 8
  %103 = add i64 %102, 8, !mcsema_real_eip !15
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !15
  %105 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 80, i32* %105, !mcsema_real_eip !15
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -12
  %107 = add i64 %106, -12, !mcsema_real_eip !16
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !16
  %109 = load i64, i64* %R10_val, !mcsema_real_eip !16
  %110 = trunc i64 %109 to i32, !mcsema_real_eip !16
  %111 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 %110, i32* %111, !mcsema_real_eip !16
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -16
  %113 = add i64 %112, -16, !mcsema_real_eip !17
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !17
  %115 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !17
  %117 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !17
  %_load_rsp_ptr_24 = load i8*, i8** %_RSP_ptr_
  %118 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_new_gep_25 = getelementptr i8, i8* %_load_rsp_ptr_24, i64 -8
  %119 = add i64 %118, -8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %_allin_new_bt_26, !mcsema_real_eip !18
  store volatile i8* %_new_gep_25, i8** %_RSP_ptr_
  store i64 %119, i64* %RSP_val, !mcsema_real_eip !18
  %121 = load i64, i64* %RAX_val, !mcsema_real_eip !18
  store i64 %121, i64* %RAX, !mcsema_real_eip !18
  %122 = load i64, i64* %RBX_val, !mcsema_real_eip !18
  store i64 %122, i64* %RBX, !mcsema_real_eip !18
  %123 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  store i64 %123, i64* %RCX, !mcsema_real_eip !18
  %124 = load i64, i64* %RDX_val, !mcsema_real_eip !18
  store i64 %124, i64* %RDX, !mcsema_real_eip !18
  %125 = load i64, i64* %RSI_val, !mcsema_real_eip !18
  store i64 %125, i64* %RSI, !mcsema_real_eip !18
  %126 = load i64, i64* %RDI_val, !mcsema_real_eip !18
  store i64 %126, i64* %RDI, !mcsema_real_eip !18
  %_load_rsp_ptr_27 = load i8*, i8** %_RSP_ptr_
  %127 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_new_ptr2int_28 = ptrtoint i8* %_load_rsp_ptr_27 to i64
  store volatile i64 %_new_ptr2int_28, i64* %RSP
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %128 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_ptr2int_30 = ptrtoint i8* %_load_rbp_ptr_29 to i64
  store volatile i64 %_new_ptr2int_30, i64* %RBP
  %129 = load i64, i64* %R8_val, !mcsema_real_eip !18
  store i64 %129, i64* %R8, !mcsema_real_eip !18
  %130 = load i64, i64* %R9_val, !mcsema_real_eip !18
  store i64 %130, i64* %R9, !mcsema_real_eip !18
  %131 = load i64, i64* %R10_val, !mcsema_real_eip !18
  store i64 %131, i64* %R10, !mcsema_real_eip !18
  %132 = load i64, i64* %R11_val, !mcsema_real_eip !18
  store i64 %132, i64* %R11, !mcsema_real_eip !18
  %133 = load i64, i64* %R12_val, !mcsema_real_eip !18
  store i64 %133, i64* %R12, !mcsema_real_eip !18
  %134 = load i64, i64* %R13_val, !mcsema_real_eip !18
  store i64 %134, i64* %R13, !mcsema_real_eip !18
  %135 = load i64, i64* %R14_val, !mcsema_real_eip !18
  store i64 %135, i64* %R14, !mcsema_real_eip !18
  %136 = load i64, i64* %R15_val, !mcsema_real_eip !18
  store i64 %136, i64* %R15, !mcsema_real_eip !18
  %137 = load i64, i64* %RIP_val, !mcsema_real_eip !18
  store i64 %137, i64* %RIP, !mcsema_real_eip !18
  %138 = load i1, i1* %CF_val, !mcsema_real_eip !18
  store i1 %138, i1* %CF, align 1, !mcsema_real_eip !18
  %139 = load i1, i1* %PF_val, !mcsema_real_eip !18
  store i1 %139, i1* %PF, align 1, !mcsema_real_eip !18
  %140 = load i1, i1* %AF_val, !mcsema_real_eip !18
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !18
  %141 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  store i1 %141, i1* %ZF, align 1, !mcsema_real_eip !18
  %142 = load i1, i1* %SF_val, !mcsema_real_eip !18
  store i1 %142, i1* %SF, align 1, !mcsema_real_eip !18
  %143 = load i1, i1* %OF_val, !mcsema_real_eip !18
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !18
  %144 = load i1, i1* %DF_val, !mcsema_real_eip !18
  store i1 %144, i1* %DF, align 1, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !18
  %145 = load i1, i1* %FPU_B_val, !mcsema_real_eip !18
  store i1 %145, i1* %FPU_B, align 1, !mcsema_real_eip !18
  %146 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !18
  store i1 %146, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  %147 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !18
  store i3 %147, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  %148 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !18
  store i1 %148, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  %149 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !18
  store i1 %149, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  %150 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !18
  store i1 %150, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  %151 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !18
  store i1 %151, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  %152 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !18
  store i1 %152, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  %153 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !18
  store i1 %153, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  %154 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !18
  store i1 %154, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  %155 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !18
  store i1 %155, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  %156 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !18
  store i1 %156, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  %157 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !18
  store i1 %157, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  %158 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !18
  store i1 %158, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  %159 = load i1, i1* %FPU_X_val, !mcsema_real_eip !18
  store i1 %159, i1* %FPU_X, align 1, !mcsema_real_eip !18
  %160 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !18
  store i2 %160, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  %161 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !18
  store i2 %161, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  %162 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !18
  store i1 %162, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  %163 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !18
  store i1 %163, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  %164 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !18
  store i1 %164, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  %165 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !18
  store i1 %165, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  %166 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !18
  store i1 %166, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  %167 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !18
  store i1 %167, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  %168 = load i64, i64* %53, align 4
  store i64 %168, i64* %52, align 4
  %169 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  store i16 %169, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  %170 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  store i64 %170, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !18
  %171 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  store i16 %171, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  %172 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  store i64 %172, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !18
  %173 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  store i11 %173, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  %174 = load i128, i128* %XMM0_val, !mcsema_real_eip !18
  store i128 %174, i128* %XMM0, align 1, !mcsema_real_eip !18
  %175 = load i128, i128* %XMM1_val, !mcsema_real_eip !18
  store i128 %175, i128* %XMM1, align 1, !mcsema_real_eip !18
  %176 = load i128, i128* %XMM2_val, !mcsema_real_eip !18
  store i128 %176, i128* %XMM2, align 1, !mcsema_real_eip !18
  %177 = load i128, i128* %XMM3_val, !mcsema_real_eip !18
  store i128 %177, i128* %XMM3, align 1, !mcsema_real_eip !18
  %178 = load i128, i128* %XMM4_val, !mcsema_real_eip !18
  store i128 %178, i128* %XMM4, align 1, !mcsema_real_eip !18
  %179 = load i128, i128* %XMM5_val, !mcsema_real_eip !18
  store i128 %179, i128* %XMM5, align 1, !mcsema_real_eip !18
  %180 = load i128, i128* %XMM6_val, !mcsema_real_eip !18
  store i128 %180, i128* %XMM6, align 1, !mcsema_real_eip !18
  %181 = load i128, i128* %XMM7_val, !mcsema_real_eip !18
  store i128 %181, i128* %XMM7, align 1, !mcsema_real_eip !18
  %182 = load i128, i128* %XMM8_val, !mcsema_real_eip !18
  store i128 %182, i128* %XMM8, align 1, !mcsema_real_eip !18
  %183 = load i128, i128* %XMM9_val, !mcsema_real_eip !18
  store i128 %183, i128* %XMM9, align 1, !mcsema_real_eip !18
  %184 = load i128, i128* %XMM10_val, !mcsema_real_eip !18
  store i128 %184, i128* %XMM10, align 1, !mcsema_real_eip !18
  %185 = load i128, i128* %XMM11_val, !mcsema_real_eip !18
  store i128 %185, i128* %XMM11, align 1, !mcsema_real_eip !18
  %186 = load i128, i128* %XMM12_val, !mcsema_real_eip !18
  store i128 %186, i128* %XMM12, align 1, !mcsema_real_eip !18
  %187 = load i128, i128* %XMM13_val, !mcsema_real_eip !18
  store i128 %187, i128* %XMM13, align 1, !mcsema_real_eip !18
  %188 = load i128, i128* %XMM14_val, !mcsema_real_eip !18
  store i128 %188, i128* %XMM14, align 1, !mcsema_real_eip !18
  %189 = load i128, i128* %XMM15_val, !mcsema_real_eip !18
  store i128 %189, i128* %XMM15, align 1, !mcsema_real_eip !18
  %190 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !18
  store i64 %190, i64* %STACK_BASE, align 1, !mcsema_real_eip !18
  %191 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  store i64 %191, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !18
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_45)
  %192 = load i64, i64* %RAX, !mcsema_real_eip !18
  store i64 %192, i64* %RAX_val, !mcsema_real_eip !18
  %193 = load i64, i64* %RBX, !mcsema_real_eip !18
  store i64 %193, i64* %RBX_val, !mcsema_real_eip !18
  %194 = load i64, i64* %RCX, !mcsema_real_eip !18
  store i64 %194, i64* %RCX_val, !mcsema_real_eip !18
  %195 = load i64, i64* %RDX, !mcsema_real_eip !18
  store i64 %195, i64* %RDX_val, !mcsema_real_eip !18
  %196 = load i64, i64* %RSI, !mcsema_real_eip !18
  store i64 %196, i64* %RSI_val, !mcsema_real_eip !18
  %197 = load i64, i64* %RDI, !mcsema_real_eip !18
  store i64 %197, i64* %RDI_val, !mcsema_real_eip !18
  %198 = load i64, i64* %RSP, !mcsema_real_eip !18
  store i64 %198, i64* %RSP_val, !mcsema_real_eip !18
  %199 = load i64, i64* %RBP, !mcsema_real_eip !18
  store i64 %199, i64* %RBP_val, !mcsema_real_eip !18
  %200 = load i64, i64* %R8, !mcsema_real_eip !18
  store i64 %200, i64* %R8_val, !mcsema_real_eip !18
  %201 = load i64, i64* %R9, !mcsema_real_eip !18
  store i64 %201, i64* %R9_val, !mcsema_real_eip !18
  %202 = load i64, i64* %R10, !mcsema_real_eip !18
  store i64 %202, i64* %R10_val, !mcsema_real_eip !18
  %203 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %203, i64* %R11_val, !mcsema_real_eip !18
  %204 = load i64, i64* %R12, !mcsema_real_eip !18
  store i64 %204, i64* %R12_val, !mcsema_real_eip !18
  %205 = load i64, i64* %R13, !mcsema_real_eip !18
  store i64 %205, i64* %R13_val, !mcsema_real_eip !18
  %206 = load i64, i64* %R14, !mcsema_real_eip !18
  store i64 %206, i64* %R14_val, !mcsema_real_eip !18
  %207 = load i64, i64* %R15, !mcsema_real_eip !18
  store i64 %207, i64* %R15_val, !mcsema_real_eip !18
  %208 = load i64, i64* %RIP, !mcsema_real_eip !18
  store i64 %208, i64* %RIP_val, !mcsema_real_eip !18
  %209 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 %209, i1* %CF_val, !mcsema_real_eip !18
  %210 = load i1, i1* %PF, align 1, !mcsema_real_eip !18
  store i1 %210, i1* %PF_val, !mcsema_real_eip !18
  %211 = load i1, i1* %AF, align 1, !mcsema_real_eip !18
  store i1 %211, i1* %AF_val, !mcsema_real_eip !18
  %212 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  store i1 %212, i1* %ZF_val, !mcsema_real_eip !18
  %213 = load i1, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 %213, i1* %SF_val, !mcsema_real_eip !18
  %214 = load i1, i1* %OF, align 1, !mcsema_real_eip !18
  store i1 %214, i1* %OF_val, !mcsema_real_eip !18
  %215 = load i1, i1* %DF, align 1, !mcsema_real_eip !18
  store i1 %215, i1* %DF_val, !mcsema_real_eip !18
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !18
  %216 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !18
  store i1 %216, i1* %FPU_B_val, !mcsema_real_eip !18
  %217 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !18
  store i1 %217, i1* %FPU_C3_val, !mcsema_real_eip !18
  %218 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !18
  store i3 %218, i3* %FPU_TOP_val, !mcsema_real_eip !18
  %219 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !18
  store i1 %219, i1* %FPU_C2_val, !mcsema_real_eip !18
  %220 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !18
  store i1 %220, i1* %FPU_C1_val, !mcsema_real_eip !18
  %221 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !18
  store i1 %221, i1* %FPU_C0_val, !mcsema_real_eip !18
  %222 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !18
  store i1 %222, i1* %FPU_ES_val, !mcsema_real_eip !18
  %223 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !18
  store i1 %223, i1* %FPU_SF_val, !mcsema_real_eip !18
  %224 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !18
  store i1 %224, i1* %FPU_PE_val, !mcsema_real_eip !18
  %225 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !18
  store i1 %225, i1* %FPU_UE_val, !mcsema_real_eip !18
  %226 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !18
  store i1 %226, i1* %FPU_OE_val, !mcsema_real_eip !18
  %227 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !18
  store i1 %227, i1* %FPU_ZE_val, !mcsema_real_eip !18
  %228 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !18
  store i1 %228, i1* %FPU_DE_val, !mcsema_real_eip !18
  %229 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !18
  store i1 %229, i1* %FPU_IE_val, !mcsema_real_eip !18
  %230 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !18
  store i1 %230, i1* %FPU_X_val, !mcsema_real_eip !18
  %231 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !18
  store i2 %231, i2* %FPU_RC_val, !mcsema_real_eip !18
  %232 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !18
  store i2 %232, i2* %FPU_PC_val, !mcsema_real_eip !18
  %233 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !18
  store i1 %233, i1* %FPU_PM_val, !mcsema_real_eip !18
  %234 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !18
  store i1 %234, i1* %FPU_UM_val, !mcsema_real_eip !18
  %235 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !18
  store i1 %235, i1* %FPU_OM_val, !mcsema_real_eip !18
  %236 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !18
  store i1 %236, i1* %FPU_ZM_val, !mcsema_real_eip !18
  %237 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !18
  store i1 %237, i1* %FPU_DM_val, !mcsema_real_eip !18
  %238 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !18
  store i1 %238, i1* %FPU_IM_val, !mcsema_real_eip !18
  %239 = load i64, i64* %52, align 4
  store i64 %239, i64* %53, align 4
  %240 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !18
  store i16 %240, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !18
  %241 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !18
  store i64 %241, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !18
  %242 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !18
  store i16 %242, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !18
  %243 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !18
  store i64 %243, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !18
  %244 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !18
  store i11 %244, i11* %FPU_FOPCODE_val, !mcsema_real_eip !18
  %245 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !18
  store i128 %245, i128* %XMM0_val, !mcsema_real_eip !18
  %246 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !18
  store i128 %246, i128* %XMM1_val, !mcsema_real_eip !18
  %247 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !18
  store i128 %247, i128* %XMM2_val, !mcsema_real_eip !18
  %248 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !18
  store i128 %248, i128* %XMM3_val, !mcsema_real_eip !18
  %249 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !18
  store i128 %249, i128* %XMM4_val, !mcsema_real_eip !18
  %250 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !18
  store i128 %250, i128* %XMM5_val, !mcsema_real_eip !18
  %251 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !18
  store i128 %251, i128* %XMM6_val, !mcsema_real_eip !18
  %252 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !18
  store i128 %252, i128* %XMM7_val, !mcsema_real_eip !18
  %253 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !18
  store i128 %253, i128* %XMM8_val, !mcsema_real_eip !18
  %254 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !18
  store i128 %254, i128* %XMM9_val, !mcsema_real_eip !18
  %255 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !18
  store i128 %255, i128* %XMM10_val, !mcsema_real_eip !18
  %256 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !18
  store i128 %256, i128* %XMM11_val, !mcsema_real_eip !18
  %257 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !18
  store i128 %257, i128* %XMM12_val, !mcsema_real_eip !18
  %258 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !18
  store i128 %258, i128* %XMM13_val, !mcsema_real_eip !18
  %259 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !18
  store i128 %259, i128* %XMM14_val, !mcsema_real_eip !18
  %260 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !18
  store i128 %260, i128* %XMM15_val, !mcsema_real_eip !18
  %261 = load i64, i64* %STACK_BASE, !mcsema_real_eip !18
  store i64 %261, i64* %STACK_BASE_val, !mcsema_real_eip !18
  %262 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !18
  store i64 %262, i64* %STACK_LIMIT_val, !mcsema_real_eip !18
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %263 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %264 = add i64 %263, -8, !mcsema_real_eip !19
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !19
  %266 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  %267 = trunc i64 %266 to i32, !mcsema_real_eip !19
  %268 = bitcast i64* %_allin_new_bt_33 to i32*
  store i32 %267, i32* %268, !mcsema_real_eip !19
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %269 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %270 = add i64 %269, -8, !mcsema_real_eip !20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !20
  %272 = bitcast i64* %_allin_new_bt_36 to i32*
  %273 = load i32, i32* %272, !mcsema_real_eip !20
  %274 = zext i32 %273 to i64, !mcsema_real_eip !20
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !20
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %275 = load i64, i64* %RSP_val, !mcsema_real_eip !21
  %_new_ptr2int_38 = ptrtoint i8* %_load_rsp_ptr_37 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_38, i64 32)
  %276 = extractvalue { i64, i1 } %uadd, 0
  %277 = xor i64 %276, %_new_ptr2int_38, !mcsema_real_eip !21
  %278 = and i64 %277, 16, !mcsema_real_eip !21
  %279 = icmp ne i64 %278, 0, !mcsema_real_eip !21
  store i1 %279, i1* %AF_val, !mcsema_real_eip !21
  %280 = icmp slt i64 %276, 0
  store i1 %280, i1* %SF_val, !mcsema_real_eip !21
  %281 = icmp eq i64 %276, 0, !mcsema_real_eip !21
  store i1 %281, i1* %ZF_val, !mcsema_real_eip !21
  %282 = xor i64 %_new_ptr2int_38, -9223372036854775808, !mcsema_real_eip !21
  %283 = and i64 %277, %282, !mcsema_real_eip !21
  %284 = icmp slt i64 %283, 0
  store i1 %284, i1* %OF_val, !mcsema_real_eip !21
  %285 = trunc i64 %276 to i8, !mcsema_real_eip !21
  %286 = tail call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !21
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF_val, !mcsema_real_eip !21
  %289 = extractvalue { i64, i1 } %uadd, 1
  store i1 %289, i1* %CF_val, !mcsema_real_eip !21
  %_new_int2ptr_ = inttoptr i64 %276 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %276, i64* %RSP_val, !mcsema_real_eip !21
  %290 = inttoptr i64 %276 to i64*, !mcsema_real_eip !22
  %291 = load i64, i64* %290, !mcsema_real_eip !22
  %_new_int2ptr_39 = inttoptr i64 %291 to i8*
  store volatile i8* %_new_int2ptr_39, i8** %_RBP_ptr_
  store i64 %291, i64* %RBP_val, !mcsema_real_eip !22
  %292 = add i64 %276, 16, !mcsema_real_eip !23
  %_new_int2ptr_40 = inttoptr i64 %292 to i8*
  store volatile i8* %_new_int2ptr_40, i8** %_RSP_ptr_
  store i64 %292, i64* %RSP_val, !mcsema_real_eip !23
  %293 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  store i64 %293, i64* %RAX, !mcsema_real_eip !23
  %294 = load i64, i64* %RBX_val, !mcsema_real_eip !23
  store i64 %294, i64* %RBX, !mcsema_real_eip !23
  %295 = load i64, i64* %RCX_val, !mcsema_real_eip !23
  store i64 %295, i64* %RCX, !mcsema_real_eip !23
  %296 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  store i64 %296, i64* %RDX, !mcsema_real_eip !23
  %297 = load i64, i64* %RSI_val, !mcsema_real_eip !23
  store i64 %297, i64* %RSI, !mcsema_real_eip !23
  %298 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  store i64 %298, i64* %RDI, !mcsema_real_eip !23
  %_load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_
  %299 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  %_new_ptr2int_42 = ptrtoint i8* %_load_rsp_ptr_41 to i64
  store volatile i64 %_new_ptr2int_42, i64* %RSP
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %300 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_ptr2int_44 = ptrtoint i8* %_load_rbp_ptr_43 to i64
  store volatile i64 %_new_ptr2int_44, i64* %RBP
  %301 = load i64, i64* %R8_val, !mcsema_real_eip !23
  store i64 %301, i64* %R8, !mcsema_real_eip !23
  %302 = load i64, i64* %R9_val, !mcsema_real_eip !23
  store i64 %302, i64* %R9, !mcsema_real_eip !23
  %303 = load i64, i64* %R10_val, !mcsema_real_eip !23
  store i64 %303, i64* %R10, !mcsema_real_eip !23
  %304 = load i64, i64* %R11_val, !mcsema_real_eip !23
  store i64 %304, i64* %R11, !mcsema_real_eip !23
  %305 = load i64, i64* %R12_val, !mcsema_real_eip !23
  store i64 %305, i64* %R12, !mcsema_real_eip !23
  %306 = load i64, i64* %R13_val, !mcsema_real_eip !23
  store i64 %306, i64* %R13, !mcsema_real_eip !23
  %307 = load i64, i64* %R14_val, !mcsema_real_eip !23
  store i64 %307, i64* %R14, !mcsema_real_eip !23
  %308 = load i64, i64* %R15_val, !mcsema_real_eip !23
  store i64 %308, i64* %R15, !mcsema_real_eip !23
  %309 = load i64, i64* %RIP_val, !mcsema_real_eip !23
  store i64 %309, i64* %RIP, !mcsema_real_eip !23
  %310 = load i1, i1* %CF_val, !mcsema_real_eip !23
  store i1 %310, i1* %CF, align 1, !mcsema_real_eip !23
  %311 = load i1, i1* %PF_val, !mcsema_real_eip !23
  store i1 %311, i1* %PF, align 1, !mcsema_real_eip !23
  %312 = load i1, i1* %AF_val, !mcsema_real_eip !23
  store i1 %312, i1* %AF, align 1, !mcsema_real_eip !23
  %313 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  store i1 %313, i1* %ZF, align 1, !mcsema_real_eip !23
  %314 = load i1, i1* %SF_val, !mcsema_real_eip !23
  store i1 %314, i1* %SF, align 1, !mcsema_real_eip !23
  %315 = load i1, i1* %OF_val, !mcsema_real_eip !23
  store i1 %315, i1* %OF, align 1, !mcsema_real_eip !23
  %316 = load i1, i1* %DF_val, !mcsema_real_eip !23
  store i1 %316, i1* %DF, align 1, !mcsema_real_eip !23
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !23
  %317 = load i1, i1* %FPU_B_val, !mcsema_real_eip !23
  store i1 %317, i1* %FPU_B, align 1, !mcsema_real_eip !23
  %318 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !23
  store i1 %318, i1* %FPU_C3, align 1, !mcsema_real_eip !23
  %319 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !23
  store i3 %319, i3* %FPU_TOP, align 1, !mcsema_real_eip !23
  %320 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !23
  store i1 %320, i1* %FPU_C2, align 1, !mcsema_real_eip !23
  %321 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !23
  store i1 %321, i1* %FPU_C1, align 1, !mcsema_real_eip !23
  %322 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !23
  store i1 %322, i1* %FPU_C0, align 1, !mcsema_real_eip !23
  %323 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !23
  store i1 %323, i1* %FPU_ES, align 1, !mcsema_real_eip !23
  %324 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !23
  store i1 %324, i1* %FPU_SF, align 1, !mcsema_real_eip !23
  %325 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !23
  store i1 %325, i1* %FPU_PE, align 1, !mcsema_real_eip !23
  %326 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !23
  store i1 %326, i1* %FPU_UE, align 1, !mcsema_real_eip !23
  %327 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !23
  store i1 %327, i1* %FPU_OE, align 1, !mcsema_real_eip !23
  %328 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !23
  store i1 %328, i1* %FPU_ZE, align 1, !mcsema_real_eip !23
  %329 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !23
  store i1 %329, i1* %FPU_DE, align 1, !mcsema_real_eip !23
  %330 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !23
  store i1 %330, i1* %FPU_IE, align 1, !mcsema_real_eip !23
  %331 = load i1, i1* %FPU_X_val, !mcsema_real_eip !23
  store i1 %331, i1* %FPU_X, align 1, !mcsema_real_eip !23
  %332 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !23
  store i2 %332, i2* %FPU_RC, align 1, !mcsema_real_eip !23
  %333 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !23
  store i2 %333, i2* %FPU_PC, align 1, !mcsema_real_eip !23
  %334 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !23
  store i1 %334, i1* %FPU_PM, align 1, !mcsema_real_eip !23
  %335 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !23
  store i1 %335, i1* %FPU_UM, align 1, !mcsema_real_eip !23
  %336 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !23
  store i1 %336, i1* %FPU_OM, align 1, !mcsema_real_eip !23
  %337 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !23
  store i1 %337, i1* %FPU_ZM, align 1, !mcsema_real_eip !23
  %338 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !23
  store i1 %338, i1* %FPU_DM, align 1, !mcsema_real_eip !23
  %339 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !23
  store i1 %339, i1* %FPU_IM, align 1, !mcsema_real_eip !23
  %340 = load i64, i64* %53, align 4
  store i64 %340, i64* %52, align 4
  %341 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !23
  store i16 %341, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !23
  %342 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !23
  store i64 %342, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !23
  %343 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !23
  store i16 %343, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !23
  %344 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !23
  store i64 %344, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !23
  %345 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !23
  store i11 %345, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !23
  %346 = load i128, i128* %XMM0_val, !mcsema_real_eip !23
  store i128 %346, i128* %XMM0, align 1, !mcsema_real_eip !23
  %347 = load i128, i128* %XMM1_val, !mcsema_real_eip !23
  store i128 %347, i128* %XMM1, align 1, !mcsema_real_eip !23
  %348 = load i128, i128* %XMM2_val, !mcsema_real_eip !23
  store i128 %348, i128* %XMM2, align 1, !mcsema_real_eip !23
  %349 = load i128, i128* %XMM3_val, !mcsema_real_eip !23
  store i128 %349, i128* %XMM3, align 1, !mcsema_real_eip !23
  %350 = load i128, i128* %XMM4_val, !mcsema_real_eip !23
  store i128 %350, i128* %XMM4, align 1, !mcsema_real_eip !23
  %351 = load i128, i128* %XMM5_val, !mcsema_real_eip !23
  store i128 %351, i128* %XMM5, align 1, !mcsema_real_eip !23
  %352 = load i128, i128* %XMM6_val, !mcsema_real_eip !23
  store i128 %352, i128* %XMM6, align 1, !mcsema_real_eip !23
  %353 = load i128, i128* %XMM7_val, !mcsema_real_eip !23
  store i128 %353, i128* %XMM7, align 1, !mcsema_real_eip !23
  %354 = load i128, i128* %XMM8_val, !mcsema_real_eip !23
  store i128 %354, i128* %XMM8, align 1, !mcsema_real_eip !23
  %355 = load i128, i128* %XMM9_val, !mcsema_real_eip !23
  store i128 %355, i128* %XMM9, align 1, !mcsema_real_eip !23
  %356 = load i128, i128* %XMM10_val, !mcsema_real_eip !23
  store i128 %356, i128* %XMM10, align 1, !mcsema_real_eip !23
  %357 = load i128, i128* %XMM11_val, !mcsema_real_eip !23
  store i128 %357, i128* %XMM11, align 1, !mcsema_real_eip !23
  %358 = load i128, i128* %XMM12_val, !mcsema_real_eip !23
  store i128 %358, i128* %XMM12, align 1, !mcsema_real_eip !23
  %359 = load i128, i128* %XMM13_val, !mcsema_real_eip !23
  store i128 %359, i128* %XMM13, align 1, !mcsema_real_eip !23
  %360 = load i128, i128* %XMM14_val, !mcsema_real_eip !23
  store i128 %360, i128* %XMM14, align 1, !mcsema_real_eip !23
  %361 = load i128, i128* %XMM15_val, !mcsema_real_eip !23
  store i128 %361, i128* %XMM15, align 1, !mcsema_real_eip !23
  %362 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !23
  store i64 %362, i64* %STACK_BASE, align 1, !mcsema_real_eip !23
  %363 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !23
  store i64 %363, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !23
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !24
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !24
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !24
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !24
  store i64 %78, i64* %81, !mcsema_real_eip !24
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !24
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !25
  %82 = add i64 %79, 16, !mcsema_real_eip !26
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !26
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !26
  %86 = zext i32 %85 to i64, !mcsema_real_eip !26
  store i64 %86, i64* %RAX_val, !mcsema_real_eip !26
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %88 = add i64 %87, 16, !mcsema_real_eip !27
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !27
  %90 = bitcast i64* %89 to i32*
  %91 = load i32, i32* %90, !mcsema_real_eip !27
  %92 = zext i32 %91 to i64, !mcsema_real_eip !27
  store i64 %92, i64* %R10_val, !mcsema_real_eip !27
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %94 = add i64 %93, -4, !mcsema_real_eip !28
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !28
  %96 = load i64, i64* %RDI_val, !mcsema_real_eip !28
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !28
  %98 = bitcast i64* %95 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !28
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %100 = add i64 %99, -8, !mcsema_real_eip !29
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !29
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !29
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !29
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !29
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %106 = add i64 %105, -12, !mcsema_real_eip !30
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !30
  %108 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !30
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !30
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %112 = add i64 %111, -16, !mcsema_real_eip !31
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !31
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !31
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !31
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %118 = add i64 %117, -20, !mcsema_real_eip !32
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !32
  %120 = load i64, i64* %R8_val, !mcsema_real_eip !32
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !32
  %122 = bitcast i64* %119 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !32
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %124 = add i64 %123, -24, !mcsema_real_eip !33
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !33
  %126 = load i64, i64* %R9_val, !mcsema_real_eip !33
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !33
  %128 = bitcast i64* %125 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !33
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %130 = add i64 %129, -28, !mcsema_real_eip !34
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !34
  %132 = load i64, i64* %R10_val, !mcsema_real_eip !34
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !34
  %134 = bitcast i64* %131 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !34
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %136 = add i64 %135, -32, !mcsema_real_eip !35
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !35
  %138 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !35
  %140 = bitcast i64* %137 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !35
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %142 = add i64 %141, -4, !mcsema_real_eip !36
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !36
  %144 = bitcast i64* %143 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !36
  %146 = zext i32 %145 to i64, !mcsema_real_eip !36
  store i64 %146, i64* %RAX_val, !mcsema_real_eip !36
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %148 = add i64 %147, -8, !mcsema_real_eip !37
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !37
  %150 = bitcast i64* %149 to i32*
  %151 = load i32, i32* %150, !mcsema_real_eip !37
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %145, i32 %151)
  %152 = extractvalue { i32, i1 } %uadd, 0
  %153 = xor i32 %152, %151, !mcsema_real_eip !37
  %154 = xor i32 %153, %145, !mcsema_real_eip !37
  %155 = and i32 %154, 16, !mcsema_real_eip !37
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !37
  store i1 %156, i1* %AF_val, !mcsema_real_eip !37
  %157 = icmp slt i32 %152, 0
  store i1 %157, i1* %SF_val, !mcsema_real_eip !37
  %158 = icmp eq i32 %152, 0, !mcsema_real_eip !37
  store i1 %158, i1* %ZF_val, !mcsema_real_eip !37
  %159 = xor i32 %145, -2147483648, !mcsema_real_eip !37
  %160 = xor i32 %159, %151, !mcsema_real_eip !37
  %161 = and i32 %153, %160, !mcsema_real_eip !37
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF_val, !mcsema_real_eip !37
  %163 = trunc i32 %152 to i8, !mcsema_real_eip !37
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !37
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !37
  %167 = extractvalue { i32, i1 } %uadd, 1
  store i1 %167, i1* %CF_val, !mcsema_real_eip !37
  %168 = zext i32 %152 to i64, !mcsema_real_eip !37
  store i64 %168, i64* %RAX_val, !mcsema_real_eip !37
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %170 = add i64 %169, -12, !mcsema_real_eip !38
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !38
  %172 = bitcast i64* %171 to i32*
  %173 = load i32, i32* %172, !mcsema_real_eip !38
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %152, i32 %173)
  %174 = extractvalue { i32, i1 } %uadd71, 0
  %175 = xor i32 %174, %173, !mcsema_real_eip !38
  %176 = xor i32 %175, %152, !mcsema_real_eip !38
  %177 = and i32 %176, 16, !mcsema_real_eip !38
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !38
  store i1 %178, i1* %AF_val, !mcsema_real_eip !38
  %179 = icmp slt i32 %174, 0
  store i1 %179, i1* %SF_val, !mcsema_real_eip !38
  %180 = icmp eq i32 %174, 0, !mcsema_real_eip !38
  store i1 %180, i1* %ZF_val, !mcsema_real_eip !38
  %181 = xor i32 %152, -2147483648, !mcsema_real_eip !38
  %182 = xor i32 %181, %173, !mcsema_real_eip !38
  %183 = and i32 %175, %182, !mcsema_real_eip !38
  %184 = icmp slt i32 %183, 0
  store i1 %184, i1* %OF_val, !mcsema_real_eip !38
  %185 = trunc i32 %174 to i8, !mcsema_real_eip !38
  %186 = tail call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !38
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  store i1 %188, i1* %PF_val, !mcsema_real_eip !38
  %189 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %189, i1* %CF_val, !mcsema_real_eip !38
  %190 = zext i32 %174 to i64, !mcsema_real_eip !38
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !38
  %191 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %192 = add i64 %191, -16, !mcsema_real_eip !39
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !39
  %194 = bitcast i64* %193 to i32*
  %195 = load i32, i32* %194, !mcsema_real_eip !39
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %174, i32 %195)
  %196 = extractvalue { i32, i1 } %uadd72, 0
  %197 = xor i32 %196, %195, !mcsema_real_eip !39
  %198 = xor i32 %197, %174, !mcsema_real_eip !39
  %199 = and i32 %198, 16, !mcsema_real_eip !39
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !39
  store i1 %200, i1* %AF_val, !mcsema_real_eip !39
  %201 = icmp slt i32 %196, 0
  store i1 %201, i1* %SF_val, !mcsema_real_eip !39
  %202 = icmp eq i32 %196, 0, !mcsema_real_eip !39
  store i1 %202, i1* %ZF_val, !mcsema_real_eip !39
  %203 = xor i32 %174, -2147483648, !mcsema_real_eip !39
  %204 = xor i32 %203, %195, !mcsema_real_eip !39
  %205 = and i32 %197, %204, !mcsema_real_eip !39
  %206 = icmp slt i32 %205, 0
  store i1 %206, i1* %OF_val, !mcsema_real_eip !39
  %207 = trunc i32 %196 to i8, !mcsema_real_eip !39
  %208 = tail call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !39
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %PF_val, !mcsema_real_eip !39
  %211 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %211, i1* %CF_val, !mcsema_real_eip !39
  %212 = zext i32 %196 to i64, !mcsema_real_eip !39
  store i64 %212, i64* %RAX_val, !mcsema_real_eip !39
  %213 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %214 = add i64 %213, -20, !mcsema_real_eip !40
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !40
  %216 = bitcast i64* %215 to i32*
  %217 = load i32, i32* %216, !mcsema_real_eip !40
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %217)
  %218 = extractvalue { i32, i1 } %uadd73, 0
  %219 = xor i32 %218, %217, !mcsema_real_eip !40
  %220 = xor i32 %219, %196, !mcsema_real_eip !40
  %221 = and i32 %220, 16, !mcsema_real_eip !40
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !40
  store i1 %222, i1* %AF_val, !mcsema_real_eip !40
  %223 = icmp slt i32 %218, 0
  store i1 %223, i1* %SF_val, !mcsema_real_eip !40
  %224 = icmp eq i32 %218, 0, !mcsema_real_eip !40
  store i1 %224, i1* %ZF_val, !mcsema_real_eip !40
  %225 = xor i32 %196, -2147483648, !mcsema_real_eip !40
  %226 = xor i32 %225, %217, !mcsema_real_eip !40
  %227 = and i32 %219, %226, !mcsema_real_eip !40
  %228 = icmp slt i32 %227, 0
  store i1 %228, i1* %OF_val, !mcsema_real_eip !40
  %229 = trunc i32 %218 to i8, !mcsema_real_eip !40
  %230 = tail call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !40
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  store i1 %232, i1* %PF_val, !mcsema_real_eip !40
  %233 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %233, i1* %CF_val, !mcsema_real_eip !40
  %234 = zext i32 %218 to i64, !mcsema_real_eip !40
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !40
  %235 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %236 = add i64 %235, -24, !mcsema_real_eip !41
  %237 = inttoptr i64 %236 to i64*, !mcsema_real_eip !41
  %238 = bitcast i64* %237 to i32*
  %239 = load i32, i32* %238, !mcsema_real_eip !41
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %218, i32 %239)
  %240 = extractvalue { i32, i1 } %uadd74, 0
  %241 = xor i32 %240, %239, !mcsema_real_eip !41
  %242 = xor i32 %241, %218, !mcsema_real_eip !41
  %243 = and i32 %242, 16, !mcsema_real_eip !41
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !41
  store i1 %244, i1* %AF_val, !mcsema_real_eip !41
  %245 = icmp slt i32 %240, 0
  store i1 %245, i1* %SF_val, !mcsema_real_eip !41
  %246 = icmp eq i32 %240, 0, !mcsema_real_eip !41
  store i1 %246, i1* %ZF_val, !mcsema_real_eip !41
  %247 = xor i32 %218, -2147483648, !mcsema_real_eip !41
  %248 = xor i32 %247, %239, !mcsema_real_eip !41
  %249 = and i32 %241, %248, !mcsema_real_eip !41
  %250 = icmp slt i32 %249, 0
  store i1 %250, i1* %OF_val, !mcsema_real_eip !41
  %251 = trunc i32 %240 to i8, !mcsema_real_eip !41
  %252 = tail call i8 @llvm.ctpop.i8(i8 %251), !mcsema_real_eip !41
  %253 = and i8 %252, 1
  %254 = icmp eq i8 %253, 0
  store i1 %254, i1* %PF_val, !mcsema_real_eip !41
  %255 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %255, i1* %CF_val, !mcsema_real_eip !41
  %256 = zext i32 %240 to i64, !mcsema_real_eip !41
  store i64 %256, i64* %RAX_val, !mcsema_real_eip !41
  %257 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %258 = add i64 %257, -28, !mcsema_real_eip !42
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !42
  %260 = bitcast i64* %259 to i32*
  %261 = load i32, i32* %260, !mcsema_real_eip !42
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %240, i32 %261)
  %262 = extractvalue { i32, i1 } %uadd75, 0
  %263 = xor i32 %262, %261, !mcsema_real_eip !42
  %264 = xor i32 %263, %240, !mcsema_real_eip !42
  %265 = and i32 %264, 16, !mcsema_real_eip !42
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !42
  store i1 %266, i1* %AF_val, !mcsema_real_eip !42
  %267 = icmp slt i32 %262, 0
  store i1 %267, i1* %SF_val, !mcsema_real_eip !42
  %268 = icmp eq i32 %262, 0, !mcsema_real_eip !42
  store i1 %268, i1* %ZF_val, !mcsema_real_eip !42
  %269 = xor i32 %240, -2147483648, !mcsema_real_eip !42
  %270 = xor i32 %269, %261, !mcsema_real_eip !42
  %271 = and i32 %263, %270, !mcsema_real_eip !42
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF_val, !mcsema_real_eip !42
  %273 = trunc i32 %262 to i8, !mcsema_real_eip !42
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !42
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF_val, !mcsema_real_eip !42
  %277 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %277, i1* %CF_val, !mcsema_real_eip !42
  %278 = zext i32 %262 to i64, !mcsema_real_eip !42
  store i64 %278, i64* %RAX_val, !mcsema_real_eip !42
  %279 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %280 = add i64 %279, -36, !mcsema_real_eip !43
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !43
  %282 = bitcast i64* %281 to i32*
  store i32 %262, i32* %282, !mcsema_real_eip !43
  %283 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %284 = add i64 %283, -36, !mcsema_real_eip !44
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !44
  %286 = bitcast i64* %285 to i32*
  %287 = load i32, i32* %286, !mcsema_real_eip !44
  %288 = add i32 %287, -40
  %289 = xor i32 %288, %287, !mcsema_real_eip !44
  %290 = and i32 %289, 16, !mcsema_real_eip !44
  %291 = icmp ne i32 %290, 0, !mcsema_real_eip !44
  store i1 %291, i1* %AF_val, !mcsema_real_eip !44
  %292 = trunc i32 %288 to i8, !mcsema_real_eip !44
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !44
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  store i1 %295, i1* %PF_val, !mcsema_real_eip !44
  %296 = icmp eq i32 %288, 0, !mcsema_real_eip !44
  store i1 %296, i1* %ZF_val, !mcsema_real_eip !44
  %297 = icmp slt i32 %288, 0
  store i1 %297, i1* %SF_val, !mcsema_real_eip !44
  %298 = icmp ult i32 %287, 40, !mcsema_real_eip !44
  store i1 %298, i1* %CF_val, !mcsema_real_eip !44
  %299 = and i32 %289, %287, !mcsema_real_eip !44
  %300 = icmp slt i32 %299, 0
  store i1 %300, i1* %OF_val, !mcsema_real_eip !44
  %301 = xor i1 %297, %300
  %302 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  %303 = or i1 %302, %301, !mcsema_real_eip !45
  %304 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %305 = add i64 %304, -36, !mcsema_real_eip !46
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !46
  %307 = bitcast i64* %306 to i32*
  %308 = load i32, i32* %307, !mcsema_real_eip !46
  %309 = zext i32 %308 to i64, !mcsema_real_eip !46
  store i64 %309, i64* %RAX_val, !mcsema_real_eip !46
  %310 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %311 = add i64 %310, -32, !mcsema_real_eip !47
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !47
  %313 = bitcast i64* %312 to i32*
  %314 = load i32, i32* %313, !mcsema_real_eip !47
  br i1 %303, label %block_0x59, label %block_0x4b, !mcsema_real_eip !45

block_0x4b:                                       ; preds = %entry
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %308, i32 %314)
  %315 = extractvalue { i32, i1 } %uadd77, 0
  %316 = xor i32 %315, %314, !mcsema_real_eip !48
  %317 = xor i32 %316, %308, !mcsema_real_eip !48
  %318 = and i32 %317, 16, !mcsema_real_eip !48
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !48
  store i1 %319, i1* %AF_val, !mcsema_real_eip !48
  %320 = icmp slt i32 %315, 0
  store i1 %320, i1* %SF_val, !mcsema_real_eip !48
  %321 = icmp eq i32 %315, 0, !mcsema_real_eip !48
  store i1 %321, i1* %ZF_val, !mcsema_real_eip !48
  %322 = xor i32 %308, -2147483648, !mcsema_real_eip !48
  %323 = xor i32 %322, %314, !mcsema_real_eip !48
  %324 = and i32 %316, %323, !mcsema_real_eip !48
  %325 = icmp slt i32 %324, 0
  store i1 %325, i1* %OF_val, !mcsema_real_eip !48
  %326 = trunc i32 %315 to i8, !mcsema_real_eip !48
  %327 = tail call i8 @llvm.ctpop.i8(i8 %326), !mcsema_real_eip !48
  %328 = and i8 %327, 1
  %329 = icmp eq i8 %328, 0
  store i1 %329, i1* %PF_val, !mcsema_real_eip !48
  %330 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %330, i1* %CF_val, !mcsema_real_eip !48
  %331 = zext i32 %315 to i64, !mcsema_real_eip !48
  store i64 %331, i64* %RAX_val, !mcsema_real_eip !48
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %333 = add i64 %332, -40, !mcsema_real_eip !49
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !49
  %335 = bitcast i64* %334 to i32*
  store i32 %315, i32* %335, !mcsema_real_eip !49
  br label %block_0x62, !mcsema_real_eip !50

block_0x59:                                       ; preds = %entry
  %336 = sub i32 %308, %314, !mcsema_real_eip !47
  %337 = xor i32 %336, %308, !mcsema_real_eip !47
  %338 = xor i32 %337, %314, !mcsema_real_eip !47
  %339 = and i32 %338, 16, !mcsema_real_eip !47
  %340 = icmp ne i32 %339, 0, !mcsema_real_eip !47
  store i1 %340, i1* %AF_val, !mcsema_real_eip !47
  %341 = trunc i32 %336 to i8, !mcsema_real_eip !47
  %342 = tail call i8 @llvm.ctpop.i8(i8 %341), !mcsema_real_eip !47
  %343 = and i8 %342, 1
  %344 = icmp eq i8 %343, 0
  store i1 %344, i1* %PF_val, !mcsema_real_eip !47
  %345 = icmp eq i32 %308, %314
  store i1 %345, i1* %ZF_val, !mcsema_real_eip !47
  %346 = icmp slt i32 %336, 0
  store i1 %346, i1* %SF_val, !mcsema_real_eip !47
  %347 = icmp ult i32 %308, %314, !mcsema_real_eip !47
  store i1 %347, i1* %CF_val, !mcsema_real_eip !47
  %348 = xor i32 %314, %308, !mcsema_real_eip !47
  %349 = and i32 %337, %348, !mcsema_real_eip !47
  %350 = icmp slt i32 %349, 0
  store i1 %350, i1* %OF_val, !mcsema_real_eip !47
  %351 = zext i32 %336 to i64, !mcsema_real_eip !47
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !47
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %353 = add i64 %352, -40, !mcsema_real_eip !51
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !51
  %355 = bitcast i64* %354 to i32*
  store i32 %336, i32* %355, !mcsema_real_eip !51
  br label %block_0x62, !mcsema_real_eip !52

block_0x62:                                       ; preds = %block_0x59, %block_0x4b
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %357 = add i64 %356, -40, !mcsema_real_eip !53
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !53
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, !mcsema_real_eip !53
  %361 = zext i32 %360 to i64, !mcsema_real_eip !53
  store i64 %361, i64* %RAX_val, !mcsema_real_eip !53
  %362 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !54
  %364 = load i64, i64* %363, !mcsema_real_eip !54
  store i64 %364, i64* %RBP_val, !mcsema_real_eip !54
  %365 = add i64 %362, 16, !mcsema_real_eip !55
  store i64 %365, i64* %RSP_val, !mcsema_real_eip !55
  %366 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  store i64 %366, i64* %RAX, !mcsema_real_eip !55
  %367 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  store i64 %367, i64* %RBX, !mcsema_real_eip !55
  %368 = load i64, i64* %RCX_val, !mcsema_real_eip !55
  store i64 %368, i64* %RCX, !mcsema_real_eip !55
  %369 = load i64, i64* %RDX_val, !mcsema_real_eip !55
  store i64 %369, i64* %RDX, !mcsema_real_eip !55
  %370 = load i64, i64* %RSI_val, !mcsema_real_eip !55
  store i64 %370, i64* %RSI, !mcsema_real_eip !55
  %371 = load i64, i64* %RDI_val, !mcsema_real_eip !55
  store i64 %371, i64* %RDI, !mcsema_real_eip !55
  %372 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  store i64 %372, i64* %RSP, !mcsema_real_eip !55
  %373 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  store i64 %373, i64* %RBP, !mcsema_real_eip !55
  %374 = load i64, i64* %R8_val, !mcsema_real_eip !55
  store i64 %374, i64* %R8, !mcsema_real_eip !55
  %375 = load i64, i64* %R9_val, !mcsema_real_eip !55
  store i64 %375, i64* %R9, !mcsema_real_eip !55
  %376 = load i64, i64* %R10_val, !mcsema_real_eip !55
  store i64 %376, i64* %R10, !mcsema_real_eip !55
  %377 = load i64, i64* %R11_val, !mcsema_real_eip !55
  store i64 %377, i64* %R11, !mcsema_real_eip !55
  %378 = load i64, i64* %R12_val, !mcsema_real_eip !55
  store i64 %378, i64* %R12, !mcsema_real_eip !55
  %379 = load i64, i64* %R13_val, !mcsema_real_eip !55
  store i64 %379, i64* %R13, !mcsema_real_eip !55
  %380 = load i64, i64* %R14_val, !mcsema_real_eip !55
  store i64 %380, i64* %R14, !mcsema_real_eip !55
  %381 = load i64, i64* %R15_val, !mcsema_real_eip !55
  store i64 %381, i64* %R15, !mcsema_real_eip !55
  %382 = load i64, i64* %RIP_val, !mcsema_real_eip !55
  store i64 %382, i64* %RIP, !mcsema_real_eip !55
  %383 = load i1, i1* %CF_val, !mcsema_real_eip !55
  store i1 %383, i1* %CF, align 1, !mcsema_real_eip !55
  %384 = load i1, i1* %PF_val, !mcsema_real_eip !55
  store i1 %384, i1* %PF, align 1, !mcsema_real_eip !55
  %385 = load i1, i1* %AF_val, !mcsema_real_eip !55
  store i1 %385, i1* %AF, align 1, !mcsema_real_eip !55
  %386 = load i1, i1* %ZF_val, !mcsema_real_eip !55
  store i1 %386, i1* %ZF, align 1, !mcsema_real_eip !55
  %387 = load i1, i1* %SF_val, !mcsema_real_eip !55
  store i1 %387, i1* %SF, align 1, !mcsema_real_eip !55
  %388 = load i1, i1* %OF_val, !mcsema_real_eip !55
  store i1 %388, i1* %OF, align 1, !mcsema_real_eip !55
  %389 = load i1, i1* %DF_val, !mcsema_real_eip !55
  store i1 %389, i1* %DF, align 1, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !55
  %390 = load i1, i1* %FPU_B_val, !mcsema_real_eip !55
  store i1 %390, i1* %FPU_B, align 1, !mcsema_real_eip !55
  %391 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !55
  store i1 %391, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  %392 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !55
  store i3 %392, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  %393 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !55
  store i1 %393, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  %394 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !55
  store i1 %394, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  %395 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !55
  store i1 %395, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  %396 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !55
  store i1 %396, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  %397 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !55
  store i1 %397, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  %398 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !55
  store i1 %398, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  %399 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !55
  store i1 %399, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  %400 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !55
  store i1 %400, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  %401 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !55
  store i1 %401, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  %402 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !55
  store i1 %402, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  %403 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !55
  store i1 %403, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  %404 = load i1, i1* %FPU_X_val, !mcsema_real_eip !55
  store i1 %404, i1* %FPU_X, align 1, !mcsema_real_eip !55
  %405 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !55
  store i2 %405, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  %406 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !55
  store i2 %406, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  %407 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !55
  store i1 %407, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  %408 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !55
  store i1 %408, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  %409 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !55
  store i1 %409, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  %410 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !55
  store i1 %410, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  %411 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !55
  store i1 %411, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  %412 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !55
  store i1 %412, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  %413 = load i64, i64* %53, align 4
  store i64 %413, i64* %52, align 4
  %414 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !55
  store i16 %414, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  %415 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !55
  store i64 %415, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !55
  %416 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !55
  store i16 %416, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  %417 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !55
  store i64 %417, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !55
  %418 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !55
  store i11 %418, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !55
  %419 = load i128, i128* %XMM0_val, !mcsema_real_eip !55
  store i128 %419, i128* %XMM0, align 1, !mcsema_real_eip !55
  %420 = load i128, i128* %XMM1_val, !mcsema_real_eip !55
  store i128 %420, i128* %XMM1, align 1, !mcsema_real_eip !55
  %421 = load i128, i128* %XMM2_val, !mcsema_real_eip !55
  store i128 %421, i128* %XMM2, align 1, !mcsema_real_eip !55
  %422 = load i128, i128* %XMM3_val, !mcsema_real_eip !55
  store i128 %422, i128* %XMM3, align 1, !mcsema_real_eip !55
  %423 = load i128, i128* %XMM4_val, !mcsema_real_eip !55
  store i128 %423, i128* %XMM4, align 1, !mcsema_real_eip !55
  %424 = load i128, i128* %XMM5_val, !mcsema_real_eip !55
  store i128 %424, i128* %XMM5, align 1, !mcsema_real_eip !55
  %425 = load i128, i128* %XMM6_val, !mcsema_real_eip !55
  store i128 %425, i128* %XMM6, align 1, !mcsema_real_eip !55
  %426 = load i128, i128* %XMM7_val, !mcsema_real_eip !55
  store i128 %426, i128* %XMM7, align 1, !mcsema_real_eip !55
  %427 = load i128, i128* %XMM8_val, !mcsema_real_eip !55
  store i128 %427, i128* %XMM8, align 1, !mcsema_real_eip !55
  %428 = load i128, i128* %XMM9_val, !mcsema_real_eip !55
  store i128 %428, i128* %XMM9, align 1, !mcsema_real_eip !55
  %429 = load i128, i128* %XMM10_val, !mcsema_real_eip !55
  store i128 %429, i128* %XMM10, align 1, !mcsema_real_eip !55
  %430 = load i128, i128* %XMM11_val, !mcsema_real_eip !55
  store i128 %430, i128* %XMM11, align 1, !mcsema_real_eip !55
  %431 = load i128, i128* %XMM12_val, !mcsema_real_eip !55
  store i128 %431, i128* %XMM12, align 1, !mcsema_real_eip !55
  %432 = load i128, i128* %XMM13_val, !mcsema_real_eip !55
  store i128 %432, i128* %XMM13, align 1, !mcsema_real_eip !55
  %433 = load i128, i128* %XMM14_val, !mcsema_real_eip !55
  store i128 %433, i128* %XMM14, align 1, !mcsema_real_eip !55
  %434 = load i128, i128* %XMM15_val, !mcsema_real_eip !55
  store i128 %434, i128* %XMM15, align 1, !mcsema_real_eip !55
  %435 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !55
  store i64 %435, i64* %STACK_BASE, align 1, !mcsema_real_eip !55
  %436 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !55
  store i64 %436, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !55
  ret void, !mcsema_real_eip !55
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
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !24
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
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !24
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !24
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !24
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !24
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !24
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !24
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !24
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !24
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !24
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !24
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !24
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !24
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !24
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !24
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !24
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !24
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !24
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !24
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !24
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !24
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !24
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !24
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !24
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %84 = add i64 %81, 16, !mcsema_real_eip !26
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !26
  %86 = bitcast i64* %_allin_new_bt_2 to i32*
  %_ptr_to_int_79 = ptrtoint i32* %86 to i64
  %_local_end_to_int_80 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_81 = bitcast i32* %86 to i8*
  %_offset_above_rbp_82 = sub i64 %_ptr_to_int_79, %_local_end_to_int_80
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_ptr_bt_81, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_ptr_bt_81, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_ptr_bt_81, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %87, label %88

; <label>:87:                                     ; preds = %55
  %_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_address_in_parent_stack_bt_92 = bitcast i8* %_address_in_parent_stack_91 to i32*
  br label %88

; <label>:88:                                     ; preds = %55, %87
  %89 = phi i32* [ %86, %55 ], [ %_address_in_parent_stack_bt_92, %87 ]
  %_new_load_93 = load i32, i32* %89
  %90 = zext i32 %_new_load_93 to i64, !mcsema_real_eip !26
  store i64 %90, i64* %RAX_val, !mcsema_real_eip !26
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 16
  %92 = add i64 %91, 16, !mcsema_real_eip !27
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !27
  %94 = bitcast i64* %_allin_new_bt_5 to i32*
  %_ptr_to_int_94 = ptrtoint i32* %94 to i64
  %_local_end_to_int_95 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_96 = bitcast i32* %94 to i8*
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_95
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_ptr_bt_96, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_ptr_bt_96, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_ptr_bt_96, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %95, label %96

; <label>:95:                                     ; preds = %88
  %_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_address_in_parent_stack_bt_107 = bitcast i8* %_address_in_parent_stack_106 to i32*
  br label %96

; <label>:96:                                     ; preds = %88, %95
  %97 = phi i32* [ %94, %88 ], [ %_address_in_parent_stack_bt_107, %95 ]
  %_new_load_108 = load i32, i32* %97
  %98 = zext i32 %_new_load_108 to i64, !mcsema_real_eip !27
  store i64 %98, i64* %R10_val, !mcsema_real_eip !27
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -4
  %100 = add i64 %99, -4, !mcsema_real_eip !28
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !28
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !28
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !28
  %104 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !28
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !29
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -8
  %106 = add i64 %105, -8, !mcsema_real_eip !29
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !29
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !29
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !29
  %110 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !29
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %112 = add i64 %111, -12, !mcsema_real_eip !30
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !30
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !30
  %116 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !30
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -16
  %118 = add i64 %117, -16, !mcsema_real_eip !31
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !31
  %120 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !31
  %122 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !31
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -20
  %124 = add i64 %123, -20, !mcsema_real_eip !32
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !32
  %126 = load i64, i64* %R8_val, !mcsema_real_eip !32
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !32
  %128 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !32
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -24
  %130 = add i64 %129, -24, !mcsema_real_eip !33
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !33
  %132 = load i64, i64* %R9_val, !mcsema_real_eip !33
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !33
  %134 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !33
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -28
  %136 = add i64 %135, -28, !mcsema_real_eip !34
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !34
  %138 = load i64, i64* %R10_val, !mcsema_real_eip !34
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !34
  %140 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !34
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -32
  %142 = add i64 %141, -32, !mcsema_real_eip !35
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !35
  %144 = load i64, i64* %RAX_val, !mcsema_real_eip !35
  %145 = trunc i64 %144 to i32, !mcsema_real_eip !35
  %146 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %145, i32* %146, !mcsema_real_eip !35
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -4
  %148 = add i64 %147, -4, !mcsema_real_eip !36
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !36
  %150 = bitcast i64* %_allin_new_bt_32 to i32*
  %_ptr_to_int_109 = ptrtoint i32* %150 to i64
  %_local_end_to_int_110 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_111 = bitcast i32* %150 to i8*
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_110
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_ptr_bt_111, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_ptr_bt_111, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_ptr_bt_111, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %151, label %152

; <label>:151:                                    ; preds = %96
  %_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_address_in_parent_stack_bt_122 = bitcast i8* %_address_in_parent_stack_121 to i32*
  br label %152

; <label>:152:                                    ; preds = %96, %151
  %153 = phi i32* [ %150, %96 ], [ %_address_in_parent_stack_bt_122, %151 ]
  %_new_load_123 = load i32, i32* %153
  %154 = zext i32 %_new_load_123 to i64, !mcsema_real_eip !36
  store i64 %154, i64* %RAX_val, !mcsema_real_eip !36
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -8
  %156 = add i64 %155, -8, !mcsema_real_eip !37
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !37
  %158 = bitcast i64* %_allin_new_bt_35 to i32*
  %_ptr_to_int_124 = ptrtoint i32* %158 to i64
  %_local_end_to_int_125 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_126 = bitcast i32* %158 to i8*
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_125
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_ptr_bt_126, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_ptr_bt_126, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_ptr_bt_126, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %159, label %160

; <label>:159:                                    ; preds = %152
  %_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_address_in_parent_stack_bt_137 = bitcast i8* %_address_in_parent_stack_136 to i32*
  br label %160

; <label>:160:                                    ; preds = %152, %159
  %161 = phi i32* [ %158, %152 ], [ %_address_in_parent_stack_bt_137, %159 ]
  %_new_load_138 = load i32, i32* %161
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_123, i32 %_new_load_138)
  %162 = extractvalue { i32, i1 } %uadd, 0
  %163 = xor i32 %162, %_new_load_138, !mcsema_real_eip !37
  %164 = xor i32 %163, %_new_load_123, !mcsema_real_eip !37
  %165 = and i32 %164, 16, !mcsema_real_eip !37
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !37
  store i1 %166, i1* %AF_val, !mcsema_real_eip !37
  %167 = icmp slt i32 %162, 0
  store i1 %167, i1* %SF_val, !mcsema_real_eip !37
  %168 = icmp eq i32 %162, 0, !mcsema_real_eip !37
  store i1 %168, i1* %ZF_val, !mcsema_real_eip !37
  %169 = xor i32 %_new_load_123, -2147483648, !mcsema_real_eip !37
  %170 = xor i32 %169, %_new_load_138, !mcsema_real_eip !37
  %171 = and i32 %163, %170, !mcsema_real_eip !37
  %172 = icmp slt i32 %171, 0
  store i1 %172, i1* %OF_val, !mcsema_real_eip !37
  %173 = trunc i32 %162 to i8, !mcsema_real_eip !37
  %174 = tail call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !37
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  store i1 %176, i1* %PF_val, !mcsema_real_eip !37
  %177 = extractvalue { i32, i1 } %uadd, 1
  store i1 %177, i1* %CF_val, !mcsema_real_eip !37
  %178 = zext i32 %162 to i64, !mcsema_real_eip !37
  store i64 %178, i64* %RAX_val, !mcsema_real_eip !37
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %179 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -12
  %180 = add i64 %179, -12, !mcsema_real_eip !38
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !38
  %182 = bitcast i64* %_allin_new_bt_38 to i32*
  %_ptr_to_int_139 = ptrtoint i32* %182 to i64
  %_local_end_to_int_140 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_141 = bitcast i32* %182 to i8*
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_140
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_ptr_bt_141, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_ptr_bt_141, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_ptr_bt_141, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  br i1 %_cond1_n_cond2_cond3_150, label %183, label %184

; <label>:183:                                    ; preds = %160
  %_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_address_in_parent_stack_bt_152 = bitcast i8* %_address_in_parent_stack_151 to i32*
  br label %184

; <label>:184:                                    ; preds = %160, %183
  %185 = phi i32* [ %182, %160 ], [ %_address_in_parent_stack_bt_152, %183 ]
  %_new_load_153 = load i32, i32* %185
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %162, i32 %_new_load_153)
  %186 = extractvalue { i32, i1 } %uadd71, 0
  %187 = xor i32 %186, %_new_load_153, !mcsema_real_eip !38
  %188 = xor i32 %187, %162, !mcsema_real_eip !38
  %189 = and i32 %188, 16, !mcsema_real_eip !38
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !38
  store i1 %190, i1* %AF_val, !mcsema_real_eip !38
  %191 = icmp slt i32 %186, 0
  store i1 %191, i1* %SF_val, !mcsema_real_eip !38
  %192 = icmp eq i32 %186, 0, !mcsema_real_eip !38
  store i1 %192, i1* %ZF_val, !mcsema_real_eip !38
  %193 = xor i32 %162, -2147483648, !mcsema_real_eip !38
  %194 = xor i32 %193, %_new_load_153, !mcsema_real_eip !38
  %195 = and i32 %187, %194, !mcsema_real_eip !38
  %196 = icmp slt i32 %195, 0
  store i1 %196, i1* %OF_val, !mcsema_real_eip !38
  %197 = trunc i32 %186 to i8, !mcsema_real_eip !38
  %198 = tail call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !38
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  store i1 %200, i1* %PF_val, !mcsema_real_eip !38
  %201 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %201, i1* %CF_val, !mcsema_real_eip !38
  %202 = zext i32 %186 to i64, !mcsema_real_eip !38
  store i64 %202, i64* %RAX_val, !mcsema_real_eip !38
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %203 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -16
  %204 = add i64 %203, -16, !mcsema_real_eip !39
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !39
  %206 = bitcast i64* %_allin_new_bt_41 to i32*
  %_ptr_to_int_154 = ptrtoint i32* %206 to i64
  %_local_end_to_int_155 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_156 = bitcast i32* %206 to i8*
  %_offset_above_rbp_157 = sub i64 %_ptr_to_int_154, %_local_end_to_int_155
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ugt i8* %_ptr_bt_156, %_local_stack_end_ptr_
  %_cond2_1_160 = icmp ugt i8* %_ptr_bt_156, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_ptr_bt_156, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond1_n_cond2_164, %_cond4_163
  br i1 %_cond1_n_cond2_cond3_165, label %207, label %208

; <label>:207:                                    ; preds = %184
  %_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_address_in_parent_stack_bt_167 = bitcast i8* %_address_in_parent_stack_166 to i32*
  br label %208

; <label>:208:                                    ; preds = %184, %207
  %209 = phi i32* [ %206, %184 ], [ %_address_in_parent_stack_bt_167, %207 ]
  %_new_load_168 = load i32, i32* %209
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %_new_load_168)
  %210 = extractvalue { i32, i1 } %uadd72, 0
  %211 = xor i32 %210, %_new_load_168, !mcsema_real_eip !39
  %212 = xor i32 %211, %186, !mcsema_real_eip !39
  %213 = and i32 %212, 16, !mcsema_real_eip !39
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !39
  store i1 %214, i1* %AF_val, !mcsema_real_eip !39
  %215 = icmp slt i32 %210, 0
  store i1 %215, i1* %SF_val, !mcsema_real_eip !39
  %216 = icmp eq i32 %210, 0, !mcsema_real_eip !39
  store i1 %216, i1* %ZF_val, !mcsema_real_eip !39
  %217 = xor i32 %186, -2147483648, !mcsema_real_eip !39
  %218 = xor i32 %217, %_new_load_168, !mcsema_real_eip !39
  %219 = and i32 %211, %218, !mcsema_real_eip !39
  %220 = icmp slt i32 %219, 0
  store i1 %220, i1* %OF_val, !mcsema_real_eip !39
  %221 = trunc i32 %210 to i8, !mcsema_real_eip !39
  %222 = tail call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !39
  %223 = and i8 %222, 1
  %224 = icmp eq i8 %223, 0
  store i1 %224, i1* %PF_val, !mcsema_real_eip !39
  %225 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %225, i1* %CF_val, !mcsema_real_eip !39
  %226 = zext i32 %210 to i64, !mcsema_real_eip !39
  store i64 %226, i64* %RAX_val, !mcsema_real_eip !39
  %_load_rbp_ptr_42 = load i8*, i8** %_RBP_ptr_
  %227 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_43 = getelementptr i8, i8* %_load_rbp_ptr_42, i64 -20
  %228 = add i64 %227, -20, !mcsema_real_eip !40
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !40
  %230 = bitcast i64* %_allin_new_bt_44 to i32*
  %_ptr_to_int_169 = ptrtoint i32* %230 to i64
  %_local_end_to_int_170 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_171 = bitcast i32* %230 to i8*
  %_offset_above_rbp_172 = sub i64 %_ptr_to_int_169, %_local_end_to_int_170
  %_pot_address_in_parent_stack_173 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_cond1_174 = icmp ugt i8* %_ptr_bt_171, %_local_stack_end_ptr_
  %_cond2_1_175 = icmp ugt i8* %_ptr_bt_171, %_parent_stack_end_ptr_
  %_cond2_2_176 = icmp ult i8* %_ptr_bt_171, %_parent_stack_start_ptr_
  %_cond2_177 = or i1 %_cond2_1_175, %_cond2_2_176
  %_cond4_178 = icmp ule i8* %_pot_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond1_n_cond2_179 = and i1 %_cond1_174, %_cond2_177
  %_cond1_n_cond2_cond3_180 = and i1 %_cond1_n_cond2_179, %_cond4_178
  br i1 %_cond1_n_cond2_cond3_180, label %231, label %232

; <label>:231:                                    ; preds = %208
  %_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_address_in_parent_stack_bt_182 = bitcast i8* %_address_in_parent_stack_181 to i32*
  br label %232

; <label>:232:                                    ; preds = %208, %231
  %233 = phi i32* [ %230, %208 ], [ %_address_in_parent_stack_bt_182, %231 ]
  %_new_load_183 = load i32, i32* %233
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %210, i32 %_new_load_183)
  %234 = extractvalue { i32, i1 } %uadd73, 0
  %235 = xor i32 %234, %_new_load_183, !mcsema_real_eip !40
  %236 = xor i32 %235, %210, !mcsema_real_eip !40
  %237 = and i32 %236, 16, !mcsema_real_eip !40
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !40
  store i1 %238, i1* %AF_val, !mcsema_real_eip !40
  %239 = icmp slt i32 %234, 0
  store i1 %239, i1* %SF_val, !mcsema_real_eip !40
  %240 = icmp eq i32 %234, 0, !mcsema_real_eip !40
  store i1 %240, i1* %ZF_val, !mcsema_real_eip !40
  %241 = xor i32 %210, -2147483648, !mcsema_real_eip !40
  %242 = xor i32 %241, %_new_load_183, !mcsema_real_eip !40
  %243 = and i32 %235, %242, !mcsema_real_eip !40
  %244 = icmp slt i32 %243, 0
  store i1 %244, i1* %OF_val, !mcsema_real_eip !40
  %245 = trunc i32 %234 to i8, !mcsema_real_eip !40
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !40
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF_val, !mcsema_real_eip !40
  %249 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %249, i1* %CF_val, !mcsema_real_eip !40
  %250 = zext i32 %234 to i64, !mcsema_real_eip !40
  store i64 %250, i64* %RAX_val, !mcsema_real_eip !40
  %_load_rbp_ptr_45 = load i8*, i8** %_RBP_ptr_
  %251 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_46 = getelementptr i8, i8* %_load_rbp_ptr_45, i64 -24
  %252 = add i64 %251, -24, !mcsema_real_eip !41
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !41
  %254 = bitcast i64* %_allin_new_bt_47 to i32*
  %_ptr_to_int_184 = ptrtoint i32* %254 to i64
  %_local_end_to_int_185 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_186 = bitcast i32* %254 to i8*
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_185
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_ptr_bt_186, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_ptr_bt_186, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_ptr_bt_186, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  br i1 %_cond1_n_cond2_cond3_195, label %255, label %256

; <label>:255:                                    ; preds = %232
  %_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_address_in_parent_stack_bt_197 = bitcast i8* %_address_in_parent_stack_196 to i32*
  br label %256

; <label>:256:                                    ; preds = %232, %255
  %257 = phi i32* [ %254, %232 ], [ %_address_in_parent_stack_bt_197, %255 ]
  %_new_load_198 = load i32, i32* %257
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 %_new_load_198)
  %258 = extractvalue { i32, i1 } %uadd74, 0
  %259 = xor i32 %258, %_new_load_198, !mcsema_real_eip !41
  %260 = xor i32 %259, %234, !mcsema_real_eip !41
  %261 = and i32 %260, 16, !mcsema_real_eip !41
  %262 = icmp ne i32 %261, 0, !mcsema_real_eip !41
  store i1 %262, i1* %AF_val, !mcsema_real_eip !41
  %263 = icmp slt i32 %258, 0
  store i1 %263, i1* %SF_val, !mcsema_real_eip !41
  %264 = icmp eq i32 %258, 0, !mcsema_real_eip !41
  store i1 %264, i1* %ZF_val, !mcsema_real_eip !41
  %265 = xor i32 %234, -2147483648, !mcsema_real_eip !41
  %266 = xor i32 %265, %_new_load_198, !mcsema_real_eip !41
  %267 = and i32 %259, %266, !mcsema_real_eip !41
  %268 = icmp slt i32 %267, 0
  store i1 %268, i1* %OF_val, !mcsema_real_eip !41
  %269 = trunc i32 %258 to i8, !mcsema_real_eip !41
  %270 = tail call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !41
  %271 = and i8 %270, 1
  %272 = icmp eq i8 %271, 0
  store i1 %272, i1* %PF_val, !mcsema_real_eip !41
  %273 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %273, i1* %CF_val, !mcsema_real_eip !41
  %274 = zext i32 %258 to i64, !mcsema_real_eip !41
  store i64 %274, i64* %RAX_val, !mcsema_real_eip !41
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %275 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -28
  %276 = add i64 %275, -28, !mcsema_real_eip !42
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !42
  %278 = bitcast i64* %_allin_new_bt_50 to i32*
  %_ptr_to_int_199 = ptrtoint i32* %278 to i64
  %_local_end_to_int_200 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_201 = bitcast i32* %278 to i8*
  %_offset_above_rbp_202 = sub i64 %_ptr_to_int_199, %_local_end_to_int_200
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_ptr_bt_201, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_ptr_bt_201, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_ptr_bt_201, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  br i1 %_cond1_n_cond2_cond3_210, label %279, label %280

; <label>:279:                                    ; preds = %256
  %_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_address_in_parent_stack_bt_212 = bitcast i8* %_address_in_parent_stack_211 to i32*
  br label %280

; <label>:280:                                    ; preds = %256, %279
  %281 = phi i32* [ %278, %256 ], [ %_address_in_parent_stack_bt_212, %279 ]
  %_new_load_213 = load i32, i32* %281
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %258, i32 %_new_load_213)
  %282 = extractvalue { i32, i1 } %uadd75, 0
  %283 = xor i32 %282, %_new_load_213, !mcsema_real_eip !42
  %284 = xor i32 %283, %258, !mcsema_real_eip !42
  %285 = and i32 %284, 16, !mcsema_real_eip !42
  %286 = icmp ne i32 %285, 0, !mcsema_real_eip !42
  store i1 %286, i1* %AF_val, !mcsema_real_eip !42
  %287 = icmp slt i32 %282, 0
  store i1 %287, i1* %SF_val, !mcsema_real_eip !42
  %288 = icmp eq i32 %282, 0, !mcsema_real_eip !42
  store i1 %288, i1* %ZF_val, !mcsema_real_eip !42
  %289 = xor i32 %258, -2147483648, !mcsema_real_eip !42
  %290 = xor i32 %289, %_new_load_213, !mcsema_real_eip !42
  %291 = and i32 %283, %290, !mcsema_real_eip !42
  %292 = icmp slt i32 %291, 0
  store i1 %292, i1* %OF_val, !mcsema_real_eip !42
  %293 = trunc i32 %282 to i8, !mcsema_real_eip !42
  %294 = tail call i8 @llvm.ctpop.i8(i8 %293), !mcsema_real_eip !42
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  store i1 %296, i1* %PF_val, !mcsema_real_eip !42
  %297 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %297, i1* %CF_val, !mcsema_real_eip !42
  %298 = zext i32 %282 to i64, !mcsema_real_eip !42
  store i64 %298, i64* %RAX_val, !mcsema_real_eip !42
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -36
  %300 = add i64 %299, -36, !mcsema_real_eip !43
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !43
  %302 = bitcast i64* %_allin_new_bt_53 to i32*
  store i32 %282, i32* %302, !mcsema_real_eip !43
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %303 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -36
  %304 = add i64 %303, -36, !mcsema_real_eip !44
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !44
  %306 = bitcast i64* %_allin_new_bt_56 to i32*
  %_ptr_to_int_214 = ptrtoint i32* %306 to i64
  %_local_end_to_int_215 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_216 = bitcast i32* %306 to i8*
  %_offset_above_rbp_217 = sub i64 %_ptr_to_int_214, %_local_end_to_int_215
  %_pot_address_in_parent_stack_218 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_cond1_219 = icmp ugt i8* %_ptr_bt_216, %_local_stack_end_ptr_
  %_cond2_1_220 = icmp ugt i8* %_ptr_bt_216, %_parent_stack_end_ptr_
  %_cond2_2_221 = icmp ult i8* %_ptr_bt_216, %_parent_stack_start_ptr_
  %_cond2_222 = or i1 %_cond2_1_220, %_cond2_2_221
  %_cond4_223 = icmp ule i8* %_pot_address_in_parent_stack_218, %_parent_stack_end_ptr_
  %_cond1_n_cond2_224 = and i1 %_cond1_219, %_cond2_222
  %_cond1_n_cond2_cond3_225 = and i1 %_cond1_n_cond2_224, %_cond4_223
  br i1 %_cond1_n_cond2_cond3_225, label %307, label %308

; <label>:307:                                    ; preds = %280
  %_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_address_in_parent_stack_bt_227 = bitcast i8* %_address_in_parent_stack_226 to i32*
  br label %308

; <label>:308:                                    ; preds = %280, %307
  %309 = phi i32* [ %306, %280 ], [ %_address_in_parent_stack_bt_227, %307 ]
  %_new_load_228 = load i32, i32* %309
  %310 = add i32 %_new_load_228, -40
  %311 = xor i32 %310, %_new_load_228, !mcsema_real_eip !44
  %312 = and i32 %311, 16, !mcsema_real_eip !44
  %313 = icmp ne i32 %312, 0, !mcsema_real_eip !44
  store i1 %313, i1* %AF_val, !mcsema_real_eip !44
  %314 = trunc i32 %310 to i8, !mcsema_real_eip !44
  %315 = tail call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !44
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  store i1 %317, i1* %PF_val, !mcsema_real_eip !44
  %318 = icmp eq i32 %310, 0, !mcsema_real_eip !44
  store i1 %318, i1* %ZF_val, !mcsema_real_eip !44
  %319 = icmp slt i32 %310, 0
  store i1 %319, i1* %SF_val, !mcsema_real_eip !44
  %320 = icmp ult i32 %_new_load_228, 40, !mcsema_real_eip !44
  store i1 %320, i1* %CF_val, !mcsema_real_eip !44
  %321 = and i32 %311, %_new_load_228, !mcsema_real_eip !44
  %322 = icmp slt i32 %321, 0
  store i1 %322, i1* %OF_val, !mcsema_real_eip !44
  %323 = xor i1 %319, %322
  %324 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  %325 = or i1 %324, %323, !mcsema_real_eip !45
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %326 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -36
  %327 = add i64 %326, -36, !mcsema_real_eip !46
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !46
  %329 = bitcast i64* %_allin_new_bt_59 to i32*
  %_ptr_to_int_229 = ptrtoint i32* %329 to i64
  %_local_end_to_int_230 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_231 = bitcast i32* %329 to i8*
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_230
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_ptr_bt_231, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_ptr_bt_231, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_ptr_bt_231, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  br i1 %_cond1_n_cond2_cond3_240, label %330, label %331

; <label>:330:                                    ; preds = %308
  %_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_address_in_parent_stack_bt_242 = bitcast i8* %_address_in_parent_stack_241 to i32*
  br label %331

; <label>:331:                                    ; preds = %308, %330
  %332 = phi i32* [ %329, %308 ], [ %_address_in_parent_stack_bt_242, %330 ]
  %_new_load_243 = load i32, i32* %332
  %333 = zext i32 %_new_load_243 to i64, !mcsema_real_eip !46
  store i64 %333, i64* %RAX_val, !mcsema_real_eip !46
  %_load_rbp_ptr_60 = load i8*, i8** %_RBP_ptr_
  %334 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_60, i64 -32
  %335 = add i64 %334, -32, !mcsema_real_eip !47
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !47
  %337 = bitcast i64* %_allin_new_bt_62 to i32*
  %_ptr_to_int_244 = ptrtoint i32* %337 to i64
  %_local_end_to_int_245 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_246 = bitcast i32* %337 to i8*
  %_offset_above_rbp_247 = sub i64 %_ptr_to_int_244, %_local_end_to_int_245
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ugt i8* %_ptr_bt_246, %_local_stack_end_ptr_
  %_cond2_1_250 = icmp ugt i8* %_ptr_bt_246, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_ptr_bt_246, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond1_n_cond2_254, %_cond4_253
  br i1 %_cond1_n_cond2_cond3_255, label %338, label %339

; <label>:338:                                    ; preds = %331
  %_address_in_parent_stack_256 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_address_in_parent_stack_bt_257 = bitcast i8* %_address_in_parent_stack_256 to i32*
  br label %339

; <label>:339:                                    ; preds = %331, %338
  %340 = phi i32* [ %337, %331 ], [ %_address_in_parent_stack_bt_257, %338 ]
  %_new_load_258 = load i32, i32* %340
  br i1 %325, label %block_0x59, label %block_0x4b, !mcsema_real_eip !45

block_0x4b:                                       ; preds = %339
  %uadd77 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_243, i32 %_new_load_258)
  %341 = extractvalue { i32, i1 } %uadd77, 0
  %342 = xor i32 %341, %_new_load_258, !mcsema_real_eip !48
  %343 = xor i32 %342, %_new_load_243, !mcsema_real_eip !48
  %344 = and i32 %343, 16, !mcsema_real_eip !48
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !48
  store i1 %345, i1* %AF_val, !mcsema_real_eip !48
  %346 = icmp slt i32 %341, 0
  store i1 %346, i1* %SF_val, !mcsema_real_eip !48
  %347 = icmp eq i32 %341, 0, !mcsema_real_eip !48
  store i1 %347, i1* %ZF_val, !mcsema_real_eip !48
  %348 = xor i32 %_new_load_243, -2147483648, !mcsema_real_eip !48
  %349 = xor i32 %348, %_new_load_258, !mcsema_real_eip !48
  %350 = and i32 %342, %349, !mcsema_real_eip !48
  %351 = icmp slt i32 %350, 0
  store i1 %351, i1* %OF_val, !mcsema_real_eip !48
  %352 = trunc i32 %341 to i8, !mcsema_real_eip !48
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !48
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF_val, !mcsema_real_eip !48
  %356 = extractvalue { i32, i1 } %uadd77, 1
  store i1 %356, i1* %CF_val, !mcsema_real_eip !48
  %357 = zext i32 %341 to i64, !mcsema_real_eip !48
  store i64 %357, i64* %RAX_val, !mcsema_real_eip !48
  %_load_rbp_ptr_63 = load i8*, i8** %_RBP_ptr_
  %358 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_63, i64 -40
  %359 = add i64 %358, -40, !mcsema_real_eip !49
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !49
  %361 = bitcast i64* %_allin_new_bt_65 to i32*
  store i32 %341, i32* %361, !mcsema_real_eip !49
  br label %block_0x62, !mcsema_real_eip !50

block_0x59:                                       ; preds = %339
  %362 = sub i32 %_new_load_243, %_new_load_258, !mcsema_real_eip !47
  %363 = xor i32 %362, %_new_load_243, !mcsema_real_eip !47
  %364 = xor i32 %363, %_new_load_258, !mcsema_real_eip !47
  %365 = and i32 %364, 16, !mcsema_real_eip !47
  %366 = icmp ne i32 %365, 0, !mcsema_real_eip !47
  store i1 %366, i1* %AF_val, !mcsema_real_eip !47
  %367 = trunc i32 %362 to i8, !mcsema_real_eip !47
  %368 = tail call i8 @llvm.ctpop.i8(i8 %367), !mcsema_real_eip !47
  %369 = and i8 %368, 1
  %370 = icmp eq i8 %369, 0
  store i1 %370, i1* %PF_val, !mcsema_real_eip !47
  %371 = icmp eq i32 %_new_load_243, %_new_load_258
  store i1 %371, i1* %ZF_val, !mcsema_real_eip !47
  %372 = icmp slt i32 %362, 0
  store i1 %372, i1* %SF_val, !mcsema_real_eip !47
  %373 = icmp ult i32 %_new_load_243, %_new_load_258, !mcsema_real_eip !47
  store i1 %373, i1* %CF_val, !mcsema_real_eip !47
  %374 = xor i32 %_new_load_258, %_new_load_243, !mcsema_real_eip !47
  %375 = and i32 %363, %374, !mcsema_real_eip !47
  %376 = icmp slt i32 %375, 0
  store i1 %376, i1* %OF_val, !mcsema_real_eip !47
  %377 = zext i32 %362 to i64, !mcsema_real_eip !47
  store i64 %377, i64* %RAX_val, !mcsema_real_eip !47
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %378 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -40
  %379 = add i64 %378, -40, !mcsema_real_eip !51
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %380 = inttoptr i64 %379 to i64*, !mcsema_real_eip !51
  %381 = bitcast i64* %_allin_new_bt_68 to i32*
  store i32 %362, i32* %381, !mcsema_real_eip !51
  br label %block_0x62, !mcsema_real_eip !52

block_0x62:                                       ; preds = %block_0x59, %block_0x4b
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %382 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -40
  %383 = add i64 %382, -40, !mcsema_real_eip !53
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !53
  %385 = bitcast i64* %_allin_new_bt_71 to i32*
  %_ptr_to_int_259 = ptrtoint i32* %385 to i64
  %_local_end_to_int_260 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_261 = bitcast i32* %385 to i8*
  %_offset_above_rbp_262 = sub i64 %_ptr_to_int_259, %_local_end_to_int_260
  %_pot_address_in_parent_stack_263 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_262
  %_cond1_264 = icmp ugt i8* %_ptr_bt_261, %_local_stack_end_ptr_
  %_cond2_1_265 = icmp ugt i8* %_ptr_bt_261, %_parent_stack_end_ptr_
  %_cond2_2_266 = icmp ult i8* %_ptr_bt_261, %_parent_stack_start_ptr_
  %_cond2_267 = or i1 %_cond2_1_265, %_cond2_2_266
  %_cond4_268 = icmp ule i8* %_pot_address_in_parent_stack_263, %_parent_stack_end_ptr_
  %_cond1_n_cond2_269 = and i1 %_cond1_264, %_cond2_267
  %_cond1_n_cond2_cond3_270 = and i1 %_cond1_n_cond2_269, %_cond4_268
  br i1 %_cond1_n_cond2_cond3_270, label %386, label %387

; <label>:386:                                    ; preds = %block_0x62
  %_address_in_parent_stack_271 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_262
  %_address_in_parent_stack_bt_272 = bitcast i8* %_address_in_parent_stack_271 to i32*
  br label %387

; <label>:387:                                    ; preds = %block_0x62, %386
  %388 = phi i32* [ %385, %block_0x62 ], [ %_address_in_parent_stack_bt_272, %386 ]
  %_new_load_273 = load i32, i32* %388
  %389 = zext i32 %_new_load_273 to i64, !mcsema_real_eip !53
  store i64 %389, i64* %RAX_val, !mcsema_real_eip !53
  %_load_rsp_ptr_72 = load i8*, i8** %_RSP_ptr_
  %390 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %_allin_new_bt_73 = bitcast i8* %_load_rsp_ptr_72 to i64*
  %391 = inttoptr i64 %390 to i64*, !mcsema_real_eip !54
  %_ptr_to_int_274 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_local_end_to_int_275 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_276 = bitcast i64* %_allin_new_bt_73 to i8*
  %_offset_above_rbp_277 = sub i64 %_ptr_to_int_274, %_local_end_to_int_275
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ugt i8* %_ptr_bt_276, %_local_stack_end_ptr_
  %_cond2_1_280 = icmp ugt i8* %_ptr_bt_276, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_ptr_bt_276, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond1_n_cond2_284, %_cond4_283
  br i1 %_cond1_n_cond2_cond3_285, label %392, label %393

; <label>:392:                                    ; preds = %387
  %_address_in_parent_stack_286 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_address_in_parent_stack_bt_287 = bitcast i8* %_address_in_parent_stack_286 to i64*
  br label %393

; <label>:393:                                    ; preds = %387, %392
  %394 = phi i64* [ %_allin_new_bt_73, %387 ], [ %_address_in_parent_stack_bt_287, %392 ]
  %_new_load_288 = load i64, i64* %394
  %_new_int2ptr_ = inttoptr i64 %_new_load_288 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_288, i64* %RBP_val, !mcsema_real_eip !54
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_72, i64 16
  %395 = add i64 %390, 16, !mcsema_real_eip !55
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %395, i64* %RSP_val, !mcsema_real_eip !55
  %396 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  store i64 %396, i64* %RAX, !mcsema_real_eip !55
  %397 = load i64, i64* %RBX_val, !mcsema_real_eip !55
  store i64 %397, i64* %RBX, !mcsema_real_eip !55
  %398 = load i64, i64* %RCX_val, !mcsema_real_eip !55
  store i64 %398, i64* %RCX, !mcsema_real_eip !55
  %399 = load i64, i64* %RDX_val, !mcsema_real_eip !55
  store i64 %399, i64* %RDX, !mcsema_real_eip !55
  %400 = load i64, i64* %RSI_val, !mcsema_real_eip !55
  store i64 %400, i64* %RSI, !mcsema_real_eip !55
  %401 = load i64, i64* %RDI_val, !mcsema_real_eip !55
  store i64 %401, i64* %RDI, !mcsema_real_eip !55
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %402 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %_new_ptr2int_76 = ptrtoint i8* %_load_rsp_ptr_75 to i64
  store volatile i64 %_new_ptr2int_76, i64* %RSP
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %403 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %_new_ptr2int_78 = ptrtoint i8* %_load_rbp_ptr_77 to i64
  store volatile i64 %_new_ptr2int_78, i64* %RBP
  %404 = load i64, i64* %R8_val, !mcsema_real_eip !55
  store i64 %404, i64* %R8, !mcsema_real_eip !55
  %405 = load i64, i64* %R9_val, !mcsema_real_eip !55
  store i64 %405, i64* %R9, !mcsema_real_eip !55
  %406 = load i64, i64* %R10_val, !mcsema_real_eip !55
  store i64 %406, i64* %R10, !mcsema_real_eip !55
  %407 = load i64, i64* %R11_val, !mcsema_real_eip !55
  store i64 %407, i64* %R11, !mcsema_real_eip !55
  %408 = load i64, i64* %R12_val, !mcsema_real_eip !55
  store i64 %408, i64* %R12, !mcsema_real_eip !55
  %409 = load i64, i64* %R13_val, !mcsema_real_eip !55
  store i64 %409, i64* %R13, !mcsema_real_eip !55
  %410 = load i64, i64* %R14_val, !mcsema_real_eip !55
  store i64 %410, i64* %R14, !mcsema_real_eip !55
  %411 = load i64, i64* %R15_val, !mcsema_real_eip !55
  store i64 %411, i64* %R15, !mcsema_real_eip !55
  %412 = load i64, i64* %RIP_val, !mcsema_real_eip !55
  store i64 %412, i64* %RIP, !mcsema_real_eip !55
  %413 = load i1, i1* %CF_val, !mcsema_real_eip !55
  store i1 %413, i1* %CF, align 1, !mcsema_real_eip !55
  %414 = load i1, i1* %PF_val, !mcsema_real_eip !55
  store i1 %414, i1* %PF, align 1, !mcsema_real_eip !55
  %415 = load i1, i1* %AF_val, !mcsema_real_eip !55
  store i1 %415, i1* %AF, align 1, !mcsema_real_eip !55
  %416 = load i1, i1* %ZF_val, !mcsema_real_eip !55
  store i1 %416, i1* %ZF, align 1, !mcsema_real_eip !55
  %417 = load i1, i1* %SF_val, !mcsema_real_eip !55
  store i1 %417, i1* %SF, align 1, !mcsema_real_eip !55
  %418 = load i1, i1* %OF_val, !mcsema_real_eip !55
  store i1 %418, i1* %OF, align 1, !mcsema_real_eip !55
  %419 = load i1, i1* %DF_val, !mcsema_real_eip !55
  store i1 %419, i1* %DF, align 1, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !55
  %420 = load i1, i1* %FPU_B_val, !mcsema_real_eip !55
  store i1 %420, i1* %FPU_B, align 1, !mcsema_real_eip !55
  %421 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !55
  store i1 %421, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  %422 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !55
  store i3 %422, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  %423 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !55
  store i1 %423, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  %424 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !55
  store i1 %424, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  %425 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !55
  store i1 %425, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  %426 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !55
  store i1 %426, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  %427 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !55
  store i1 %427, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  %428 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !55
  store i1 %428, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  %429 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !55
  store i1 %429, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  %430 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !55
  store i1 %430, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  %431 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !55
  store i1 %431, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  %432 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !55
  store i1 %432, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  %433 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !55
  store i1 %433, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  %434 = load i1, i1* %FPU_X_val, !mcsema_real_eip !55
  store i1 %434, i1* %FPU_X, align 1, !mcsema_real_eip !55
  %435 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !55
  store i2 %435, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  %436 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !55
  store i2 %436, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  %437 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !55
  store i1 %437, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  %438 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !55
  store i1 %438, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  %439 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !55
  store i1 %439, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  %440 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !55
  store i1 %440, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  %441 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !55
  store i1 %441, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  %442 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !55
  store i1 %442, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  %_ptr_to_int_289 = ptrtoint i64* %53 to i64
  %_local_end_to_int_290 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_291 = bitcast i64* %53 to i8*
  %_offset_above_rbp_292 = sub i64 %_ptr_to_int_289, %_local_end_to_int_290
  %_pot_address_in_parent_stack_293 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_292
  %_cond1_294 = icmp ugt i8* %_ptr_bt_291, %_local_stack_end_ptr_
  %_cond2_1_295 = icmp ugt i8* %_ptr_bt_291, %_parent_stack_end_ptr_
  %_cond2_2_296 = icmp ult i8* %_ptr_bt_291, %_parent_stack_start_ptr_
  %_cond2_297 = or i1 %_cond2_1_295, %_cond2_2_296
  %_cond4_298 = icmp ule i8* %_pot_address_in_parent_stack_293, %_parent_stack_end_ptr_
  %_cond1_n_cond2_299 = and i1 %_cond1_294, %_cond2_297
  %_cond1_n_cond2_cond3_300 = and i1 %_cond1_n_cond2_299, %_cond4_298
  br i1 %_cond1_n_cond2_cond3_300, label %443, label %444

; <label>:443:                                    ; preds = %393
  %_address_in_parent_stack_301 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_292
  %_address_in_parent_stack_bt_302 = bitcast i8* %_address_in_parent_stack_301 to i64*
  br label %444

; <label>:444:                                    ; preds = %393, %443
  %445 = phi i64* [ %53, %393 ], [ %_address_in_parent_stack_bt_302, %443 ]
  %_new_load_303 = load i64, i64* %445
  store i64 %_new_load_303, i64* %52, align 4
  %446 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !55
  store i16 %446, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  %447 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !55
  store i64 %447, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !55
  %448 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !55
  store i16 %448, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  %449 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !55
  store i64 %449, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !55
  %450 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !55
  store i11 %450, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !55
  %451 = load i128, i128* %XMM0_val, !mcsema_real_eip !55
  store i128 %451, i128* %XMM0, align 1, !mcsema_real_eip !55
  %452 = load i128, i128* %XMM1_val, !mcsema_real_eip !55
  store i128 %452, i128* %XMM1, align 1, !mcsema_real_eip !55
  %453 = load i128, i128* %XMM2_val, !mcsema_real_eip !55
  store i128 %453, i128* %XMM2, align 1, !mcsema_real_eip !55
  %454 = load i128, i128* %XMM3_val, !mcsema_real_eip !55
  store i128 %454, i128* %XMM3, align 1, !mcsema_real_eip !55
  %455 = load i128, i128* %XMM4_val, !mcsema_real_eip !55
  store i128 %455, i128* %XMM4, align 1, !mcsema_real_eip !55
  %456 = load i128, i128* %XMM5_val, !mcsema_real_eip !55
  store i128 %456, i128* %XMM5, align 1, !mcsema_real_eip !55
  %457 = load i128, i128* %XMM6_val, !mcsema_real_eip !55
  store i128 %457, i128* %XMM6, align 1, !mcsema_real_eip !55
  %458 = load i128, i128* %XMM7_val, !mcsema_real_eip !55
  store i128 %458, i128* %XMM7, align 1, !mcsema_real_eip !55
  %459 = load i128, i128* %XMM8_val, !mcsema_real_eip !55
  store i128 %459, i128* %XMM8, align 1, !mcsema_real_eip !55
  %460 = load i128, i128* %XMM9_val, !mcsema_real_eip !55
  store i128 %460, i128* %XMM9, align 1, !mcsema_real_eip !55
  %461 = load i128, i128* %XMM10_val, !mcsema_real_eip !55
  store i128 %461, i128* %XMM10, align 1, !mcsema_real_eip !55
  %462 = load i128, i128* %XMM11_val, !mcsema_real_eip !55
  store i128 %462, i128* %XMM11, align 1, !mcsema_real_eip !55
  %463 = load i128, i128* %XMM12_val, !mcsema_real_eip !55
  store i128 %463, i128* %XMM12, align 1, !mcsema_real_eip !55
  %464 = load i128, i128* %XMM13_val, !mcsema_real_eip !55
  store i128 %464, i128* %XMM13, align 1, !mcsema_real_eip !55
  %465 = load i128, i128* %XMM14_val, !mcsema_real_eip !55
  store i128 %465, i128* %XMM14, align 1, !mcsema_real_eip !55
  %466 = load i128, i128* %XMM15_val, !mcsema_real_eip !55
  store i128 %466, i128* %XMM15, align 1, !mcsema_real_eip !55
  %467 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !55
  store i64 %467, i64* %STACK_BASE, align 1, !mcsema_real_eip !55
  %468 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !55
  store i64 %468, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !55
  ret void, !mcsema_real_eip !55
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 135}
!9 = !{i64 140}
!10 = !{i64 146}
!11 = !{i64 152}
!12 = !{i64 157}
!13 = !{i64 163}
!14 = !{i64 170}
!15 = !{i64 177}
!16 = !{i64 185}
!17 = !{i64 189}
!18 = !{i64 192}
!19 = !{i64 197}
!20 = !{i64 200}
!21 = !{i64 203}
!22 = !{i64 207}
!23 = !{i64 208}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 7}
!28 = !{i64 11}
!29 = !{i64 14}
!30 = !{i64 17}
!31 = !{i64 20}
!32 = !{i64 23}
!33 = !{i64 27}
!34 = !{i64 31}
!35 = !{i64 35}
!36 = !{i64 38}
!37 = !{i64 41}
!38 = !{i64 44}
!39 = !{i64 47}
!40 = !{i64 50}
!41 = !{i64 53}
!42 = !{i64 56}
!43 = !{i64 59}
!44 = !{i64 62}
!45 = !{i64 69}
!46 = !{i64 89}
!47 = !{i64 92}
!48 = !{i64 78}
!49 = !{i64 81}
!50 = !{i64 84}
!51 = !{i64 95}
!52 = !{i64 75}
!53 = !{i64 98}
!54 = !{i64 101}
!55 = !{i64 102}
