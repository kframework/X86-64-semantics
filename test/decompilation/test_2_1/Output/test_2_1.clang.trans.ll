; ModuleID = 'Output/test_2_1.clang.trans.bc'
source_filename = "Output/test_2_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_40(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
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
  %82 = load i64, i64* %RBX_val, !mcsema_real_eip !4
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -16
  %83 = add i64 %79, -16
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !4
  store i64 %82, i64* %_allin_new_bt_2, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -56
  %85 = add i64 %79, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %86 = xor i64 %85, %83, !mcsema_real_eip !5
  %87 = and i64 %_trans_xor_, 16, !mcsema_real_eip !5
  %88 = icmp ne i64 %87, 0, !mcsema_real_eip !5
  store i1 %88, i1* %AF_val, !mcsema_real_eip !5
  %_trans_p2i_5 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_trunc_ = trunc i64 %_trans_p2i_5 to i8
  %89 = trunc i64 %85 to i8, !mcsema_real_eip !5
  %90 = tail call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !5
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF_val, !mcsema_real_eip !5
  %_trans_p2i_6 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_6, 0
  %93 = icmp eq i64 %85, 0, !mcsema_real_eip !5
  store i1 %_trans_icmp_eq_, i1* %ZF_val, !mcsema_real_eip !5
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_7, 0
  %94 = icmp slt i64 %85, 0
  store i1 %_trans_icmp_ne_, i1* %SF_val, !mcsema_real_eip !5
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_icmp_ne_9 = icmp ne i64 %_trans_p2i_8, 40
  %95 = icmp ult i64 %83, 40, !mcsema_real_eip !5
  store i1 %_trans_icmp_ne_9, i1* %CF_val, !mcsema_real_eip !5
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_1 to i64
  %_trans_xor_11 = and i64 %_trans_xor_, %_trans_p2i_10
  %96 = and i64 %_trans_xor_, %83, !mcsema_real_eip !5
  %97 = icmp slt i64 %_trans_xor_11, 0
  store i1 %97, i1* %OF_val, !mcsema_real_eip !5
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %85, i64* %RSP_val, !mcsema_real_eip !5
  store i64 100, i64* %RAX_val, !mcsema_real_eip !6
  store i64 200, i64* %RCX_val, !mcsema_real_eip !7
  store i64 300, i64* %RDX_val, !mcsema_real_eip !8
  store i64 400, i64* %R8_val, !mcsema_real_eip !9
  store i64 500, i64* %R9_val, !mcsema_real_eip !10
  store i64 600, i64* %R10_val, !mcsema_real_eip !11
  store i64 10, i64* %R11_val, !mcsema_real_eip !12
  store i64 20, i64* %RBX_val, !mcsema_real_eip !13
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %99 = add i64 %98, -12, !mcsema_real_eip !14
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !14
  %101 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 0, i32* %101, !mcsema_real_eip !14
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -16
  %103 = add i64 %102, -16, !mcsema_real_eip !15
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !15
  %105 = load i64, i64* %RDI_val, !mcsema_real_eip !15
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !15
  %107 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !15
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -24
  %109 = add i64 %108, -24, !mcsema_real_eip !16
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !16
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !16
  store i64 %111, i64* %_allin_new_bt_20, !mcsema_real_eip !16
  %112 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  %113 = and i64 %112, 4294967295
  store i64 %113, i64* %RDI_val, !mcsema_real_eip !17
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !18
  %115 = and i64 %114, 4294967295
  store i64 %115, i64* %RSI_val, !mcsema_real_eip !18
  %116 = load i64, i64* %R8_val, !mcsema_real_eip !19
  %117 = and i64 %116, 4294967295
  store i64 %117, i64* %RCX_val, !mcsema_real_eip !19
  %118 = load i64, i64* %R9_val, !mcsema_real_eip !20
  %119 = and i64 %118, 4294967295
  store i64 %119, i64* %R8_val, !mcsema_real_eip !20
  %120 = load i64, i64* %R10_val, !mcsema_real_eip !21
  %121 = and i64 %120, 4294967295
  store i64 %121, i64* %R9_val, !mcsema_real_eip !21
  %_load_rsp_ptr_21 = load i8*, i8** %_RSP_ptr_
  %122 = load i64, i64* %RSP_val, !mcsema_real_eip !22
  %_allin_new_bt_22 = bitcast i8* %_load_rsp_ptr_21 to i64*
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !22
  %124 = bitcast i64* %_allin_new_bt_22 to i32*
  store i32 10, i32* %124, !mcsema_real_eip !22
  %_load_rsp_ptr_23 = load i8*, i8** %_RSP_ptr_
  %125 = load i64, i64* %RSP_val, !mcsema_real_eip !23
  %_new_gep_24 = getelementptr i8, i8* %_load_rsp_ptr_23, i64 8
  %126 = add i64 %125, 8, !mcsema_real_eip !23
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !23
  %128 = bitcast i64* %_allin_new_bt_25 to i32*
  store i32 20, i32* %128, !mcsema_real_eip !23
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -28
  %130 = add i64 %129, -28, !mcsema_real_eip !24
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !24
  %132 = load i64, i64* %RBX_val, !mcsema_real_eip !24
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !24
  %134 = bitcast i64* %_allin_new_bt_28 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !24
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -32
  %136 = add i64 %135, -32, !mcsema_real_eip !25
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !25
  %138 = load i64, i64* %R11_val, !mcsema_real_eip !25
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !25
  %140 = bitcast i64* %_allin_new_bt_31 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !25
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %141 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 -8
  %142 = add i64 %141, -8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %_allin_new_bt_34, !mcsema_real_eip !26
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_
  store i64 %142, i64* %RSP_val, !mcsema_real_eip !26
  %144 = load i64, i64* %RAX_val, !mcsema_real_eip !26
  store i64 %144, i64* %RAX, !mcsema_real_eip !26
  %145 = load i64, i64* %RBX_val, !mcsema_real_eip !26
  store i64 %145, i64* %RBX, !mcsema_real_eip !26
  %146 = load i64, i64* %RCX_val, !mcsema_real_eip !26
  store i64 %146, i64* %RCX, !mcsema_real_eip !26
  %147 = load i64, i64* %RDX_val, !mcsema_real_eip !26
  store i64 %147, i64* %RDX, !mcsema_real_eip !26
  %148 = load i64, i64* %RSI_val, !mcsema_real_eip !26
  store i64 %148, i64* %RSI, !mcsema_real_eip !26
  %149 = load i64, i64* %RDI_val, !mcsema_real_eip !26
  store i64 %149, i64* %RDI, !mcsema_real_eip !26
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %150 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %_new_ptr2int_36 = ptrtoint i8* %_load_rsp_ptr_35 to i64
  store volatile i64 %_new_ptr2int_36, i64* %RSP
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  %_new_ptr2int_38 = ptrtoint i8* %_load_rbp_ptr_37 to i64
  store volatile i64 %_new_ptr2int_38, i64* %RBP
  %152 = load i64, i64* %R8_val, !mcsema_real_eip !26
  store i64 %152, i64* %R8, !mcsema_real_eip !26
  %153 = load i64, i64* %R9_val, !mcsema_real_eip !26
  store i64 %153, i64* %R9, !mcsema_real_eip !26
  %154 = load i64, i64* %R10_val, !mcsema_real_eip !26
  store i64 %154, i64* %R10, !mcsema_real_eip !26
  %155 = load i64, i64* %R11_val, !mcsema_real_eip !26
  store i64 %155, i64* %R11, !mcsema_real_eip !26
  %156 = load i64, i64* %R12_val, !mcsema_real_eip !26
  store i64 %156, i64* %R12, !mcsema_real_eip !26
  %157 = load i64, i64* %R13_val, !mcsema_real_eip !26
  store i64 %157, i64* %R13, !mcsema_real_eip !26
  %158 = load i64, i64* %R14_val, !mcsema_real_eip !26
  store i64 %158, i64* %R14, !mcsema_real_eip !26
  %159 = load i64, i64* %R15_val, !mcsema_real_eip !26
  store i64 %159, i64* %R15, !mcsema_real_eip !26
  %160 = load i64, i64* %RIP_val, !mcsema_real_eip !26
  store i64 %160, i64* %RIP, !mcsema_real_eip !26
  %161 = load i1, i1* %CF_val, !mcsema_real_eip !26
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !26
  %162 = load i1, i1* %PF_val, !mcsema_real_eip !26
  store i1 %162, i1* %PF, align 1, !mcsema_real_eip !26
  %163 = load i1, i1* %AF_val, !mcsema_real_eip !26
  store i1 %163, i1* %AF, align 1, !mcsema_real_eip !26
  %164 = load i1, i1* %ZF_val, !mcsema_real_eip !26
  store i1 %164, i1* %ZF, align 1, !mcsema_real_eip !26
  %165 = load i1, i1* %SF_val, !mcsema_real_eip !26
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !26
  %166 = load i1, i1* %OF_val, !mcsema_real_eip !26
  store i1 %166, i1* %OF, align 1, !mcsema_real_eip !26
  %167 = load i1, i1* %DF_val, !mcsema_real_eip !26
  store i1 %167, i1* %DF, align 1, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !26
  %168 = load i1, i1* %FPU_B_val, !mcsema_real_eip !26
  store i1 %168, i1* %FPU_B, align 1, !mcsema_real_eip !26
  %169 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !26
  store i1 %169, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  %170 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !26
  store i3 %170, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  %171 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !26
  store i1 %171, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  %172 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !26
  store i1 %172, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  %173 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !26
  store i1 %173, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  %174 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !26
  store i1 %174, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  %175 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !26
  store i1 %175, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  %176 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !26
  store i1 %176, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  %177 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !26
  store i1 %177, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  %178 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !26
  store i1 %178, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  %179 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !26
  store i1 %179, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  %180 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !26
  store i1 %180, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  %181 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !26
  store i1 %181, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  %182 = load i1, i1* %FPU_X_val, !mcsema_real_eip !26
  store i1 %182, i1* %FPU_X, align 1, !mcsema_real_eip !26
  %183 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !26
  store i2 %183, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  %184 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !26
  store i2 %184, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  %185 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !26
  store i1 %185, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  %186 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !26
  store i1 %186, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  %187 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !26
  store i1 %187, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  %188 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !26
  store i1 %188, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  %189 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !26
  store i1 %189, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  %190 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !26
  store i1 %190, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  %191 = load i64, i64* %53, align 4
  store i64 %191, i64* %52, align 4
  %192 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  store i16 %192, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  %193 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  store i64 %193, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !26
  %194 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  store i16 %194, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  %195 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  store i64 %195, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !26
  %196 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !26
  store i11 %196, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  %197 = load i128, i128* %XMM0_val, !mcsema_real_eip !26
  store i128 %197, i128* %XMM0, align 1, !mcsema_real_eip !26
  %198 = load i128, i128* %XMM1_val, !mcsema_real_eip !26
  store i128 %198, i128* %XMM1, align 1, !mcsema_real_eip !26
  %199 = load i128, i128* %XMM2_val, !mcsema_real_eip !26
  store i128 %199, i128* %XMM2, align 1, !mcsema_real_eip !26
  %200 = load i128, i128* %XMM3_val, !mcsema_real_eip !26
  store i128 %200, i128* %XMM3, align 1, !mcsema_real_eip !26
  %201 = load i128, i128* %XMM4_val, !mcsema_real_eip !26
  store i128 %201, i128* %XMM4, align 1, !mcsema_real_eip !26
  %202 = load i128, i128* %XMM5_val, !mcsema_real_eip !26
  store i128 %202, i128* %XMM5, align 1, !mcsema_real_eip !26
  %203 = load i128, i128* %XMM6_val, !mcsema_real_eip !26
  store i128 %203, i128* %XMM6, align 1, !mcsema_real_eip !26
  %204 = load i128, i128* %XMM7_val, !mcsema_real_eip !26
  store i128 %204, i128* %XMM7, align 1, !mcsema_real_eip !26
  %205 = load i128, i128* %XMM8_val, !mcsema_real_eip !26
  store i128 %205, i128* %XMM8, align 1, !mcsema_real_eip !26
  %206 = load i128, i128* %XMM9_val, !mcsema_real_eip !26
  store i128 %206, i128* %XMM9, align 1, !mcsema_real_eip !26
  %207 = load i128, i128* %XMM10_val, !mcsema_real_eip !26
  store i128 %207, i128* %XMM10, align 1, !mcsema_real_eip !26
  %208 = load i128, i128* %XMM11_val, !mcsema_real_eip !26
  store i128 %208, i128* %XMM11, align 1, !mcsema_real_eip !26
  %209 = load i128, i128* %XMM12_val, !mcsema_real_eip !26
  store i128 %209, i128* %XMM12, align 1, !mcsema_real_eip !26
  %210 = load i128, i128* %XMM13_val, !mcsema_real_eip !26
  store i128 %210, i128* %XMM13, align 1, !mcsema_real_eip !26
  %211 = load i128, i128* %XMM14_val, !mcsema_real_eip !26
  store i128 %211, i128* %XMM14, align 1, !mcsema_real_eip !26
  %212 = load i128, i128* %XMM15_val, !mcsema_real_eip !26
  store i128 %212, i128* %XMM15, align 1, !mcsema_real_eip !26
  %213 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !26
  store i64 %213, i64* %STACK_BASE, align 1, !mcsema_real_eip !26
  %214 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  store i64 %214, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !26
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_48)
  %215 = load i64, i64* %RAX, !mcsema_real_eip !26
  store i64 %215, i64* %RAX_val, !mcsema_real_eip !26
  %216 = load i64, i64* %RBX, !mcsema_real_eip !26
  store i64 %216, i64* %RBX_val, !mcsema_real_eip !26
  %217 = load i64, i64* %RCX, !mcsema_real_eip !26
  store i64 %217, i64* %RCX_val, !mcsema_real_eip !26
  %218 = load i64, i64* %RDX, !mcsema_real_eip !26
  store i64 %218, i64* %RDX_val, !mcsema_real_eip !26
  %219 = load i64, i64* %RSI, !mcsema_real_eip !26
  store i64 %219, i64* %RSI_val, !mcsema_real_eip !26
  %220 = load i64, i64* %RDI, !mcsema_real_eip !26
  store i64 %220, i64* %RDI_val, !mcsema_real_eip !26
  %221 = load i64, i64* %RSP, !mcsema_real_eip !26
  store i64 %221, i64* %RSP_val, !mcsema_real_eip !26
  %222 = load i64, i64* %RBP, !mcsema_real_eip !26
  store i64 %222, i64* %RBP_val, !mcsema_real_eip !26
  %223 = load i64, i64* %R8, !mcsema_real_eip !26
  store i64 %223, i64* %R8_val, !mcsema_real_eip !26
  %224 = load i64, i64* %R9, !mcsema_real_eip !26
  store i64 %224, i64* %R9_val, !mcsema_real_eip !26
  %225 = load i64, i64* %R10, !mcsema_real_eip !26
  store i64 %225, i64* %R10_val, !mcsema_real_eip !26
  %226 = load i64, i64* %R11, !mcsema_real_eip !26
  store i64 %226, i64* %R11_val, !mcsema_real_eip !26
  %227 = load i64, i64* %R12, !mcsema_real_eip !26
  store i64 %227, i64* %R12_val, !mcsema_real_eip !26
  %228 = load i64, i64* %R13, !mcsema_real_eip !26
  store i64 %228, i64* %R13_val, !mcsema_real_eip !26
  %229 = load i64, i64* %R14, !mcsema_real_eip !26
  store i64 %229, i64* %R14_val, !mcsema_real_eip !26
  %230 = load i64, i64* %R15, !mcsema_real_eip !26
  store i64 %230, i64* %R15_val, !mcsema_real_eip !26
  %231 = load i64, i64* %RIP, !mcsema_real_eip !26
  store i64 %231, i64* %RIP_val, !mcsema_real_eip !26
  %232 = load i1, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 %232, i1* %CF_val, !mcsema_real_eip !26
  %233 = load i1, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 %233, i1* %PF_val, !mcsema_real_eip !26
  %234 = load i1, i1* %AF, align 1, !mcsema_real_eip !26
  store i1 %234, i1* %AF_val, !mcsema_real_eip !26
  %235 = load i1, i1* %ZF, align 1, !mcsema_real_eip !26
  store i1 %235, i1* %ZF_val, !mcsema_real_eip !26
  %236 = load i1, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 %236, i1* %SF_val, !mcsema_real_eip !26
  %237 = load i1, i1* %OF, align 1, !mcsema_real_eip !26
  store i1 %237, i1* %OF_val, !mcsema_real_eip !26
  %238 = load i1, i1* %DF, align 1, !mcsema_real_eip !26
  store i1 %238, i1* %DF_val, !mcsema_real_eip !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !26
  %239 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !26
  store i1 %239, i1* %FPU_B_val, !mcsema_real_eip !26
  %240 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !26
  store i1 %240, i1* %FPU_C3_val, !mcsema_real_eip !26
  %241 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !26
  store i3 %241, i3* %FPU_TOP_val, !mcsema_real_eip !26
  %242 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !26
  store i1 %242, i1* %FPU_C2_val, !mcsema_real_eip !26
  %243 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !26
  store i1 %243, i1* %FPU_C1_val, !mcsema_real_eip !26
  %244 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !26
  store i1 %244, i1* %FPU_C0_val, !mcsema_real_eip !26
  %245 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !26
  store i1 %245, i1* %FPU_ES_val, !mcsema_real_eip !26
  %246 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !26
  store i1 %246, i1* %FPU_SF_val, !mcsema_real_eip !26
  %247 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !26
  store i1 %247, i1* %FPU_PE_val, !mcsema_real_eip !26
  %248 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !26
  store i1 %248, i1* %FPU_UE_val, !mcsema_real_eip !26
  %249 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !26
  store i1 %249, i1* %FPU_OE_val, !mcsema_real_eip !26
  %250 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !26
  store i1 %250, i1* %FPU_ZE_val, !mcsema_real_eip !26
  %251 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !26
  store i1 %251, i1* %FPU_DE_val, !mcsema_real_eip !26
  %252 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !26
  store i1 %252, i1* %FPU_IE_val, !mcsema_real_eip !26
  %253 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !26
  store i1 %253, i1* %FPU_X_val, !mcsema_real_eip !26
  %254 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !26
  store i2 %254, i2* %FPU_RC_val, !mcsema_real_eip !26
  %255 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !26
  store i2 %255, i2* %FPU_PC_val, !mcsema_real_eip !26
  %256 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !26
  store i1 %256, i1* %FPU_PM_val, !mcsema_real_eip !26
  %257 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !26
  store i1 %257, i1* %FPU_UM_val, !mcsema_real_eip !26
  %258 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !26
  store i1 %258, i1* %FPU_OM_val, !mcsema_real_eip !26
  %259 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !26
  store i1 %259, i1* %FPU_ZM_val, !mcsema_real_eip !26
  %260 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !26
  store i1 %260, i1* %FPU_DM_val, !mcsema_real_eip !26
  %261 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !26
  store i1 %261, i1* %FPU_IM_val, !mcsema_real_eip !26
  %262 = load i64, i64* %52, align 4
  store i64 %262, i64* %53, align 4
  %263 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !26
  store i16 %263, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !26
  %264 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !26
  store i64 %264, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !26
  %265 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !26
  store i16 %265, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !26
  %266 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !26
  store i64 %266, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !26
  %267 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !26
  store i11 %267, i11* %FPU_FOPCODE_val, !mcsema_real_eip !26
  %268 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !26
  store i128 %268, i128* %XMM0_val, !mcsema_real_eip !26
  %269 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !26
  store i128 %269, i128* %XMM1_val, !mcsema_real_eip !26
  %270 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !26
  store i128 %270, i128* %XMM2_val, !mcsema_real_eip !26
  %271 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !26
  store i128 %271, i128* %XMM3_val, !mcsema_real_eip !26
  %272 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !26
  store i128 %272, i128* %XMM4_val, !mcsema_real_eip !26
  %273 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !26
  store i128 %273, i128* %XMM5_val, !mcsema_real_eip !26
  %274 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !26
  store i128 %274, i128* %XMM6_val, !mcsema_real_eip !26
  %275 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !26
  store i128 %275, i128* %XMM7_val, !mcsema_real_eip !26
  %276 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !26
  store i128 %276, i128* %XMM8_val, !mcsema_real_eip !26
  %277 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !26
  store i128 %277, i128* %XMM9_val, !mcsema_real_eip !26
  %278 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !26
  store i128 %278, i128* %XMM10_val, !mcsema_real_eip !26
  %279 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !26
  store i128 %279, i128* %XMM11_val, !mcsema_real_eip !26
  %280 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !26
  store i128 %280, i128* %XMM12_val, !mcsema_real_eip !26
  %281 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !26
  store i128 %281, i128* %XMM13_val, !mcsema_real_eip !26
  %282 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !26
  store i128 %282, i128* %XMM14_val, !mcsema_real_eip !26
  %283 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !26
  store i128 %283, i128* %XMM15_val, !mcsema_real_eip !26
  %284 = load i64, i64* %STACK_BASE, !mcsema_real_eip !26
  store i64 %284, i64* %STACK_BASE_val, !mcsema_real_eip !26
  %285 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !26
  store i64 %285, i64* %STACK_LIMIT_val, !mcsema_real_eip !26
  %_load_rsp_ptr_39 = load i8*, i8** %_RSP_ptr_
  %286 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  %_new_ptr2int_40 = ptrtoint i8* %_load_rsp_ptr_39 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_40, i64 40)
  %287 = extractvalue { i64, i1 } %uadd, 0
  %288 = xor i64 %287, %_new_ptr2int_40, !mcsema_real_eip !27
  %289 = and i64 %288, 16, !mcsema_real_eip !27
  %290 = icmp ne i64 %289, 0, !mcsema_real_eip !27
  store i1 %290, i1* %AF_val, !mcsema_real_eip !27
  %291 = icmp slt i64 %287, 0
  store i1 %291, i1* %SF_val, !mcsema_real_eip !27
  %292 = icmp eq i64 %287, 0, !mcsema_real_eip !27
  store i1 %292, i1* %ZF_val, !mcsema_real_eip !27
  %293 = xor i64 %_new_ptr2int_40, -9223372036854775808, !mcsema_real_eip !27
  %294 = and i64 %288, %293, !mcsema_real_eip !27
  %295 = icmp slt i64 %294, 0
  store i1 %295, i1* %OF_val, !mcsema_real_eip !27
  %296 = trunc i64 %287 to i8, !mcsema_real_eip !27
  %297 = tail call i8 @llvm.ctpop.i8(i8 %296), !mcsema_real_eip !27
  %298 = and i8 %297, 1
  %299 = icmp eq i8 %298, 0
  store i1 %299, i1* %PF_val, !mcsema_real_eip !27
  %300 = extractvalue { i64, i1 } %uadd, 1
  store i1 %300, i1* %CF_val, !mcsema_real_eip !27
  %_new_int2ptr_ = inttoptr i64 %287 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %287, i64* %RSP_val, !mcsema_real_eip !27
  %301 = inttoptr i64 %287 to i64*, !mcsema_real_eip !28
  %302 = load i64, i64* %301, !mcsema_real_eip !28
  store i64 %302, i64* %RBX_val, !mcsema_real_eip !28
  %303 = add i64 %287, 8, !mcsema_real_eip !28
  %_new_int2ptr_41 = inttoptr i64 %303 to i8*
  store volatile i8* %_new_int2ptr_41, i8** %_RSP_ptr_
  store i64 %303, i64* %RSP_val, !mcsema_real_eip !28
  %304 = inttoptr i64 %303 to i64*, !mcsema_real_eip !29
  %305 = load i64, i64* %304, !mcsema_real_eip !29
  %_new_int2ptr_42 = inttoptr i64 %305 to i8*
  store volatile i8* %_new_int2ptr_42, i8** %_RBP_ptr_
  store i64 %305, i64* %RBP_val, !mcsema_real_eip !29
  %306 = add i64 %287, 24, !mcsema_real_eip !30
  %_new_int2ptr_43 = inttoptr i64 %306 to i8*
  store volatile i8* %_new_int2ptr_43, i8** %_RSP_ptr_
  store i64 %306, i64* %RSP_val, !mcsema_real_eip !30
  %307 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %307, i64* %RAX, !mcsema_real_eip !30
  %308 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %308, i64* %RBX, !mcsema_real_eip !30
  %309 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %309, i64* %RCX, !mcsema_real_eip !30
  %310 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %310, i64* %RDX, !mcsema_real_eip !30
  %311 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %311, i64* %RSI, !mcsema_real_eip !30
  %312 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %312, i64* %RDI, !mcsema_real_eip !30
  %_load_rsp_ptr_44 = load i8*, i8** %_RSP_ptr_
  %313 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %_new_ptr2int_45 = ptrtoint i8* %_load_rsp_ptr_44 to i64
  store volatile i64 %_new_ptr2int_45, i64* %RSP
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %314 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %_new_ptr2int_47 = ptrtoint i8* %_load_rbp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %RBP
  %315 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %315, i64* %R8, !mcsema_real_eip !30
  %316 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %316, i64* %R9, !mcsema_real_eip !30
  %317 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %317, i64* %R10, !mcsema_real_eip !30
  %318 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %318, i64* %R11, !mcsema_real_eip !30
  %319 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %319, i64* %R12, !mcsema_real_eip !30
  %320 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %320, i64* %R13, !mcsema_real_eip !30
  %321 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %321, i64* %R14, !mcsema_real_eip !30
  %322 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %322, i64* %R15, !mcsema_real_eip !30
  %323 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %323, i64* %RIP, !mcsema_real_eip !30
  %324 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %324, i1* %CF, align 1, !mcsema_real_eip !30
  %325 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %325, i1* %PF, align 1, !mcsema_real_eip !30
  %326 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %326, i1* %AF, align 1, !mcsema_real_eip !30
  %327 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %327, i1* %ZF, align 1, !mcsema_real_eip !30
  %328 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %328, i1* %SF, align 1, !mcsema_real_eip !30
  %329 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %329, i1* %OF, align 1, !mcsema_real_eip !30
  %330 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %330, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %331 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %331, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %332 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %332, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %333 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %333, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %334 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %334, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %335 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %335, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %336 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %336, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %337 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %337, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %338 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %338, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %339 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %339, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %340 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %340, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %341 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %341, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %342 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %342, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %343 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %343, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %344 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %344, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %345 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %345, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %346 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %346, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %347 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %347, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %348 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %348, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %349 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %349, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %350 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %350, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %351 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %351, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %352 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %352, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %353 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %353, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %354 = load i64, i64* %53, align 4
  store i64 %354, i64* %52, align 4
  %355 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %355, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %356 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %356, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %357 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %357, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %358 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %358, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %359 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !30
  store i11 %359, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !30
  %360 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %360, i128* %XMM0, align 1, !mcsema_real_eip !30
  %361 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %361, i128* %XMM1, align 1, !mcsema_real_eip !30
  %362 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %362, i128* %XMM2, align 1, !mcsema_real_eip !30
  %363 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %363, i128* %XMM3, align 1, !mcsema_real_eip !30
  %364 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %364, i128* %XMM4, align 1, !mcsema_real_eip !30
  %365 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %365, i128* %XMM5, align 1, !mcsema_real_eip !30
  %366 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %366, i128* %XMM6, align 1, !mcsema_real_eip !30
  %367 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %367, i128* %XMM7, align 1, !mcsema_real_eip !30
  %368 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %368, i128* %XMM8, align 1, !mcsema_real_eip !30
  %369 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %369, i128* %XMM9, align 1, !mcsema_real_eip !30
  %370 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %370, i128* %XMM10, align 1, !mcsema_real_eip !30
  %371 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %371, i128* %XMM11, align 1, !mcsema_real_eip !30
  %372 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %372, i128* %XMM12, align 1, !mcsema_real_eip !30
  %373 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %373, i128* %XMM13, align 1, !mcsema_real_eip !30
  %374 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %374, i128* %XMM14, align 1, !mcsema_real_eip !30
  %375 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %375, i128* %XMM15, align 1, !mcsema_real_eip !30
  %376 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %376, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %377 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %377, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !31
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !31
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !31
  %XMM15_val = alloca i128, !mcsema_real_eip !31
  %XMM14_val = alloca i128, !mcsema_real_eip !31
  %XMM13_val = alloca i128, !mcsema_real_eip !31
  %XMM12_val = alloca i128, !mcsema_real_eip !31
  %XMM11_val = alloca i128, !mcsema_real_eip !31
  %XMM10_val = alloca i128, !mcsema_real_eip !31
  %XMM9_val = alloca i128, !mcsema_real_eip !31
  %XMM8_val = alloca i128, !mcsema_real_eip !31
  %XMM7_val = alloca i128, !mcsema_real_eip !31
  %XMM6_val = alloca i128, !mcsema_real_eip !31
  %XMM5_val = alloca i128, !mcsema_real_eip !31
  %XMM4_val = alloca i128, !mcsema_real_eip !31
  %XMM3_val = alloca i128, !mcsema_real_eip !31
  %XMM2_val = alloca i128, !mcsema_real_eip !31
  %XMM1_val = alloca i128, !mcsema_real_eip !31
  %XMM0_val = alloca i128, !mcsema_real_eip !31
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !31
  %FPU_IM_val = alloca i1, !mcsema_real_eip !31
  %FPU_DM_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !31
  %FPU_OM_val = alloca i1, !mcsema_real_eip !31
  %FPU_UM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PC_val = alloca i2, !mcsema_real_eip !31
  %FPU_RC_val = alloca i2, !mcsema_real_eip !31
  %FPU_X_val = alloca i1, !mcsema_real_eip !31
  %FPU_IE_val = alloca i1, !mcsema_real_eip !31
  %FPU_DE_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !31
  %FPU_OE_val = alloca i1, !mcsema_real_eip !31
  %FPU_UE_val = alloca i1, !mcsema_real_eip !31
  %FPU_PE_val = alloca i1, !mcsema_real_eip !31
  %FPU_SF_val = alloca i1, !mcsema_real_eip !31
  %FPU_ES_val = alloca i1, !mcsema_real_eip !31
  %FPU_C0_val = alloca i1, !mcsema_real_eip !31
  %FPU_C1_val = alloca i1, !mcsema_real_eip !31
  %FPU_C2_val = alloca i1, !mcsema_real_eip !31
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !31
  %FPU_C3_val = alloca i1, !mcsema_real_eip !31
  %FPU_B_val = alloca i1, !mcsema_real_eip !31
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !31
  %DF_val = alloca i1, !mcsema_real_eip !31
  %OF_val = alloca i1, !mcsema_real_eip !31
  %SF_val = alloca i1, !mcsema_real_eip !31
  %CF_val = alloca i1, !mcsema_real_eip !31
  %AF_val = alloca i1, !mcsema_real_eip !31
  %PF_val = alloca i1, !mcsema_real_eip !31
  %ZF_val = alloca i1, !mcsema_real_eip !31
  %RIP_val = alloca i64, !mcsema_real_eip !31
  %R14_val = alloca i64, !mcsema_real_eip !31
  %R13_val = alloca i64, !mcsema_real_eip !31
  %R12_val = alloca i64, !mcsema_real_eip !31
  %R11_val = alloca i64, !mcsema_real_eip !31
  %R10_val = alloca i64, !mcsema_real_eip !31
  %R9_val = alloca i64, !mcsema_real_eip !31
  %R8_val = alloca i64, !mcsema_real_eip !31
  %RSP_val = alloca i64, !mcsema_real_eip !31
  %RBP_val = alloca i64, !mcsema_real_eip !31
  %RDI_val = alloca i64, !mcsema_real_eip !31
  %RSI_val = alloca i64, !mcsema_real_eip !31
  %RDX_val = alloca i64, !mcsema_real_eip !31
  %RCX_val = alloca i64, !mcsema_real_eip !31
  %RBX_val = alloca i64, !mcsema_real_eip !31
  %RAX_val = alloca i64, !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %1 = load i64, i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %2 = load i64, i64* %RBX, !mcsema_real_eip !31
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !31
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !31
  %3 = load i64, i64* %RCX, !mcsema_real_eip !31
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !31
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %4 = load i64, i64* %RDX, !mcsema_real_eip !31
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !31
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !31
  %5 = load i64, i64* %RSI, !mcsema_real_eip !31
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !31
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %6 = load i64, i64* %RDI, !mcsema_real_eip !31
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %7 = load i64, i64* %RSP, !mcsema_real_eip !31
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %8 = load i64, i64* %RBP, !mcsema_real_eip !31
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %9 = load i64, i64* %R8, !mcsema_real_eip !31
  store i64 %9, i64* %R8_val, !mcsema_real_eip !31
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !31
  %10 = load i64, i64* %R9, !mcsema_real_eip !31
  store i64 %10, i64* %R9_val, !mcsema_real_eip !31
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %11 = load i64, i64* %R10, !mcsema_real_eip !31
  store i64 %11, i64* %R10_val, !mcsema_real_eip !31
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !31
  %12 = load i64, i64* %R11, !mcsema_real_eip !31
  store i64 %12, i64* %R11_val, !mcsema_real_eip !31
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %13 = load i64, i64* %R12, !mcsema_real_eip !31
  store i64 %13, i64* %R12_val, !mcsema_real_eip !31
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !31
  %14 = load i64, i64* %R13, !mcsema_real_eip !31
  store i64 %14, i64* %R13_val, !mcsema_real_eip !31
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %15 = load i64, i64* %R14, !mcsema_real_eip !31
  store i64 %15, i64* %R14_val, !mcsema_real_eip !31
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !31
  %16 = load i64, i64* %R15, !mcsema_real_eip !31
  store i64 %16, i64* %R15_val, !mcsema_real_eip !31
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %17 = load i64, i64* %RIP, !mcsema_real_eip !31
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %18, i1* %CF_val, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %PF_val, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %AF_val, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %SF_val, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %OF_val, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %DF_val, !mcsema_real_eip !31
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !31
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !31
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !31
  %59 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  store i11 %59, i11* %FPU_FOPCODE_val, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %60 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %60, i128* %XMM0_val, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %61 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %61, i128* %XMM1_val, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %62 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM2_val, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %63 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM3_val, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %64 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM4_val, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %65 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM5_val, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %66 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %66, i128* %XMM6_val, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %67 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %67, i128* %XMM7_val, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %68 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %68, i128* %XMM8_val, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %69 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %69, i128* %XMM9_val, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %70 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %70, i128* %XMM10_val, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %71 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %71, i128* %XMM11_val, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %72 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %72, i128* %XMM12_val, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %73 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %73, i128* %XMM13_val, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %74 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %74, i128* %XMM14_val, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %75 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  store i128 %75, i128* %XMM15_val, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %76 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  store i64 %76, i64* %STACK_BASE_val, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !31
  %77 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  store i64 %77, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  %78 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %79 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !31
  store i64 %78, i64* %81, !mcsema_real_eip !31
  store i64 %80, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %80, i64* %RBP_val, !mcsema_real_eip !32
  %82 = add i64 %79, 16, !mcsema_real_eip !33
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !33
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !33
  %86 = zext i32 %85 to i64, !mcsema_real_eip !33
  store i64 %86, i64* %RAX_val, !mcsema_real_eip !33
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %88 = add i64 %87, 16, !mcsema_real_eip !34
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !34
  %90 = bitcast i64* %89 to i32*
  %91 = load i32, i32* %90, !mcsema_real_eip !34
  %92 = zext i32 %91 to i64, !mcsema_real_eip !34
  store i64 %92, i64* %R10_val, !mcsema_real_eip !34
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %94 = add i64 %93, -4, !mcsema_real_eip !35
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !35
  %96 = load i64, i64* %RDI_val, !mcsema_real_eip !35
  %97 = trunc i64 %96 to i32, !mcsema_real_eip !35
  %98 = bitcast i64* %95 to i32*
  store i32 %97, i32* %98, !mcsema_real_eip !35
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %100 = add i64 %99, -8, !mcsema_real_eip !36
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !36
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !36
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !36
  %104 = bitcast i64* %101 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !36
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %106 = add i64 %105, -12, !mcsema_real_eip !37
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !37
  %108 = load i64, i64* %RDX_val, !mcsema_real_eip !37
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !37
  %110 = bitcast i64* %107 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !37
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %112 = add i64 %111, -16, !mcsema_real_eip !38
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !38
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !38
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !38
  %116 = bitcast i64* %113 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !38
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %118 = add i64 %117, -20, !mcsema_real_eip !39
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !39
  %120 = load i64, i64* %R8_val, !mcsema_real_eip !39
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !39
  %122 = bitcast i64* %119 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !39
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %124 = add i64 %123, -24, !mcsema_real_eip !40
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !40
  %126 = load i64, i64* %R9_val, !mcsema_real_eip !40
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !40
  %128 = bitcast i64* %125 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !40
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %130 = add i64 %129, -28, !mcsema_real_eip !41
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !41
  %132 = load i64, i64* %R10_val, !mcsema_real_eip !41
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !41
  %134 = bitcast i64* %131 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !41
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %136 = add i64 %135, -32, !mcsema_real_eip !42
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !42
  %138 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !42
  %140 = bitcast i64* %137 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !42
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %142 = add i64 %141, -28, !mcsema_real_eip !43
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !43
  %144 = bitcast i64* %143 to i32*
  %145 = load i32, i32* %144, !mcsema_real_eip !43
  %146 = zext i32 %145 to i64, !mcsema_real_eip !43
  store i64 %146, i64* %RAX_val, !mcsema_real_eip !43
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %148 = add i64 %147, -32, !mcsema_real_eip !44
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !44
  %150 = bitcast i64* %149 to i32*
  %151 = load i32, i32* %150, !mcsema_real_eip !44
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %145, i32 %151)
  %152 = extractvalue { i32, i1 } %uadd, 0
  %153 = xor i32 %152, %151, !mcsema_real_eip !44
  %154 = xor i32 %153, %145, !mcsema_real_eip !44
  %155 = and i32 %154, 16, !mcsema_real_eip !44
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !44
  store i1 %156, i1* %AF_val, !mcsema_real_eip !44
  %157 = icmp slt i32 %152, 0
  store i1 %157, i1* %SF_val, !mcsema_real_eip !44
  %158 = icmp eq i32 %152, 0, !mcsema_real_eip !44
  store i1 %158, i1* %ZF_val, !mcsema_real_eip !44
  %159 = xor i32 %145, -2147483648, !mcsema_real_eip !44
  %160 = xor i32 %159, %151, !mcsema_real_eip !44
  %161 = and i32 %153, %160, !mcsema_real_eip !44
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF_val, !mcsema_real_eip !44
  %163 = trunc i32 %152 to i8, !mcsema_real_eip !44
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !44
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !44
  %167 = extractvalue { i32, i1 } %uadd, 1
  store i1 %167, i1* %CF_val, !mcsema_real_eip !44
  %168 = zext i32 %152 to i64, !mcsema_real_eip !44
  store i64 %168, i64* %RAX_val, !mcsema_real_eip !44
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %170 = add i64 %169, -36, !mcsema_real_eip !45
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !45
  %172 = bitcast i64* %171 to i32*
  store i32 %152, i32* %172, !mcsema_real_eip !45
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %174 = add i64 %173, -36, !mcsema_real_eip !46
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !46
  %176 = bitcast i64* %175 to i32*
  %177 = load i32, i32* %176, !mcsema_real_eip !46
  %178 = zext i32 %177 to i64, !mcsema_real_eip !46
  store i64 %178, i64* %RAX_val, !mcsema_real_eip !46
  %179 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !47
  %181 = load i64, i64* %180, !mcsema_real_eip !47
  store i64 %181, i64* %RBP_val, !mcsema_real_eip !47
  %182 = add i64 %179, 16, !mcsema_real_eip !48
  store i64 %182, i64* %RSP_val, !mcsema_real_eip !48
  %183 = load i64, i64* %RAX_val, !mcsema_real_eip !48
  store i64 %183, i64* %RAX, !mcsema_real_eip !48
  %184 = load i64, i64* %RBX_val, !mcsema_real_eip !48
  store i64 %184, i64* %RBX, !mcsema_real_eip !48
  %185 = load i64, i64* %RCX_val, !mcsema_real_eip !48
  store i64 %185, i64* %RCX, !mcsema_real_eip !48
  %186 = load i64, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %186, i64* %RDX, !mcsema_real_eip !48
  %187 = load i64, i64* %RSI_val, !mcsema_real_eip !48
  store i64 %187, i64* %RSI, !mcsema_real_eip !48
  %188 = load i64, i64* %RDI_val, !mcsema_real_eip !48
  store i64 %188, i64* %RDI, !mcsema_real_eip !48
  %189 = load i64, i64* %RSP_val, !mcsema_real_eip !48
  store i64 %189, i64* %RSP, !mcsema_real_eip !48
  %190 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  store i64 %190, i64* %RBP, !mcsema_real_eip !48
  %191 = load i64, i64* %R8_val, !mcsema_real_eip !48
  store i64 %191, i64* %R8, !mcsema_real_eip !48
  %192 = load i64, i64* %R9_val, !mcsema_real_eip !48
  store i64 %192, i64* %R9, !mcsema_real_eip !48
  %193 = load i64, i64* %R10_val, !mcsema_real_eip !48
  store i64 %193, i64* %R10, !mcsema_real_eip !48
  %194 = load i64, i64* %R11_val, !mcsema_real_eip !48
  store i64 %194, i64* %R11, !mcsema_real_eip !48
  %195 = load i64, i64* %R12_val, !mcsema_real_eip !48
  store i64 %195, i64* %R12, !mcsema_real_eip !48
  %196 = load i64, i64* %R13_val, !mcsema_real_eip !48
  store i64 %196, i64* %R13, !mcsema_real_eip !48
  %197 = load i64, i64* %R14_val, !mcsema_real_eip !48
  store i64 %197, i64* %R14, !mcsema_real_eip !48
  %198 = load i64, i64* %R15_val, !mcsema_real_eip !48
  store i64 %198, i64* %R15, !mcsema_real_eip !48
  %199 = load i64, i64* %RIP_val, !mcsema_real_eip !48
  store i64 %199, i64* %RIP, !mcsema_real_eip !48
  %200 = load i1, i1* %CF_val, !mcsema_real_eip !48
  store i1 %200, i1* %CF, align 1, !mcsema_real_eip !48
  %201 = load i1, i1* %PF_val, !mcsema_real_eip !48
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !48
  %202 = load i1, i1* %AF_val, !mcsema_real_eip !48
  store i1 %202, i1* %AF, align 1, !mcsema_real_eip !48
  %203 = load i1, i1* %ZF_val, !mcsema_real_eip !48
  store i1 %203, i1* %ZF, align 1, !mcsema_real_eip !48
  %204 = load i1, i1* %SF_val, !mcsema_real_eip !48
  store i1 %204, i1* %SF, align 1, !mcsema_real_eip !48
  %205 = load i1, i1* %OF_val, !mcsema_real_eip !48
  store i1 %205, i1* %OF, align 1, !mcsema_real_eip !48
  %206 = load i1, i1* %DF_val, !mcsema_real_eip !48
  store i1 %206, i1* %DF, align 1, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !48
  %207 = load i1, i1* %FPU_B_val, !mcsema_real_eip !48
  store i1 %207, i1* %FPU_B, align 1, !mcsema_real_eip !48
  %208 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !48
  store i1 %208, i1* %FPU_C3, align 1, !mcsema_real_eip !48
  %209 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !48
  store i3 %209, i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  %210 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !48
  store i1 %210, i1* %FPU_C2, align 1, !mcsema_real_eip !48
  %211 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !48
  store i1 %211, i1* %FPU_C1, align 1, !mcsema_real_eip !48
  %212 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !48
  store i1 %212, i1* %FPU_C0, align 1, !mcsema_real_eip !48
  %213 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !48
  store i1 %213, i1* %FPU_ES, align 1, !mcsema_real_eip !48
  %214 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !48
  store i1 %214, i1* %FPU_SF, align 1, !mcsema_real_eip !48
  %215 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !48
  store i1 %215, i1* %FPU_PE, align 1, !mcsema_real_eip !48
  %216 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !48
  store i1 %216, i1* %FPU_UE, align 1, !mcsema_real_eip !48
  %217 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !48
  store i1 %217, i1* %FPU_OE, align 1, !mcsema_real_eip !48
  %218 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !48
  store i1 %218, i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  %219 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !48
  store i1 %219, i1* %FPU_DE, align 1, !mcsema_real_eip !48
  %220 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !48
  store i1 %220, i1* %FPU_IE, align 1, !mcsema_real_eip !48
  %221 = load i1, i1* %FPU_X_val, !mcsema_real_eip !48
  store i1 %221, i1* %FPU_X, align 1, !mcsema_real_eip !48
  %222 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !48
  store i2 %222, i2* %FPU_RC, align 1, !mcsema_real_eip !48
  %223 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !48
  store i2 %223, i2* %FPU_PC, align 1, !mcsema_real_eip !48
  %224 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !48
  store i1 %224, i1* %FPU_PM, align 1, !mcsema_real_eip !48
  %225 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !48
  store i1 %225, i1* %FPU_UM, align 1, !mcsema_real_eip !48
  %226 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !48
  store i1 %226, i1* %FPU_OM, align 1, !mcsema_real_eip !48
  %227 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !48
  store i1 %227, i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  %228 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !48
  store i1 %228, i1* %FPU_DM, align 1, !mcsema_real_eip !48
  %229 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !48
  store i1 %229, i1* %FPU_IM, align 1, !mcsema_real_eip !48
  %230 = load i64, i64* %53, align 4
  store i64 %230, i64* %52, align 4
  %231 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !48
  store i16 %231, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  %232 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !48
  store i64 %232, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !48
  %233 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !48
  store i16 %233, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  %234 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !48
  store i64 %234, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !48
  %235 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !48
  store i11 %235, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !48
  %236 = load i128, i128* %XMM0_val, !mcsema_real_eip !48
  store i128 %236, i128* %XMM0, align 1, !mcsema_real_eip !48
  %237 = load i128, i128* %XMM1_val, !mcsema_real_eip !48
  store i128 %237, i128* %XMM1, align 1, !mcsema_real_eip !48
  %238 = load i128, i128* %XMM2_val, !mcsema_real_eip !48
  store i128 %238, i128* %XMM2, align 1, !mcsema_real_eip !48
  %239 = load i128, i128* %XMM3_val, !mcsema_real_eip !48
  store i128 %239, i128* %XMM3, align 1, !mcsema_real_eip !48
  %240 = load i128, i128* %XMM4_val, !mcsema_real_eip !48
  store i128 %240, i128* %XMM4, align 1, !mcsema_real_eip !48
  %241 = load i128, i128* %XMM5_val, !mcsema_real_eip !48
  store i128 %241, i128* %XMM5, align 1, !mcsema_real_eip !48
  %242 = load i128, i128* %XMM6_val, !mcsema_real_eip !48
  store i128 %242, i128* %XMM6, align 1, !mcsema_real_eip !48
  %243 = load i128, i128* %XMM7_val, !mcsema_real_eip !48
  store i128 %243, i128* %XMM7, align 1, !mcsema_real_eip !48
  %244 = load i128, i128* %XMM8_val, !mcsema_real_eip !48
  store i128 %244, i128* %XMM8, align 1, !mcsema_real_eip !48
  %245 = load i128, i128* %XMM9_val, !mcsema_real_eip !48
  store i128 %245, i128* %XMM9, align 1, !mcsema_real_eip !48
  %246 = load i128, i128* %XMM10_val, !mcsema_real_eip !48
  store i128 %246, i128* %XMM10, align 1, !mcsema_real_eip !48
  %247 = load i128, i128* %XMM11_val, !mcsema_real_eip !48
  store i128 %247, i128* %XMM11, align 1, !mcsema_real_eip !48
  %248 = load i128, i128* %XMM12_val, !mcsema_real_eip !48
  store i128 %248, i128* %XMM12, align 1, !mcsema_real_eip !48
  %249 = load i128, i128* %XMM13_val, !mcsema_real_eip !48
  store i128 %249, i128* %XMM13, align 1, !mcsema_real_eip !48
  %250 = load i128, i128* %XMM14_val, !mcsema_real_eip !48
  store i128 %250, i128* %XMM14, align 1, !mcsema_real_eip !48
  %251 = load i128, i128* %XMM15_val, !mcsema_real_eip !48
  store i128 %251, i128* %XMM15, align 1, !mcsema_real_eip !48
  %252 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !48
  store i64 %252, i64* %STACK_BASE, align 1, !mcsema_real_eip !48
  %253 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !48
  store i64 %253, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_40(%struct.regs* %0)
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
  %_local_stack_start_ptr_ = alloca i8, i64 44
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 44
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %R15_val = alloca i64, !mcsema_real_eip !31
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !31
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !31
  %XMM15_val = alloca i128, !mcsema_real_eip !31
  %XMM14_val = alloca i128, !mcsema_real_eip !31
  %XMM13_val = alloca i128, !mcsema_real_eip !31
  %XMM12_val = alloca i128, !mcsema_real_eip !31
  %XMM11_val = alloca i128, !mcsema_real_eip !31
  %XMM10_val = alloca i128, !mcsema_real_eip !31
  %XMM9_val = alloca i128, !mcsema_real_eip !31
  %XMM8_val = alloca i128, !mcsema_real_eip !31
  %XMM7_val = alloca i128, !mcsema_real_eip !31
  %XMM6_val = alloca i128, !mcsema_real_eip !31
  %XMM5_val = alloca i128, !mcsema_real_eip !31
  %XMM4_val = alloca i128, !mcsema_real_eip !31
  %XMM3_val = alloca i128, !mcsema_real_eip !31
  %XMM2_val = alloca i128, !mcsema_real_eip !31
  %XMM1_val = alloca i128, !mcsema_real_eip !31
  %XMM0_val = alloca i128, !mcsema_real_eip !31
  %FPU_FOPCODE_val = alloca i11, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !31
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !31
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !31
  %FPU_IM_val = alloca i1, !mcsema_real_eip !31
  %FPU_DM_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !31
  %FPU_OM_val = alloca i1, !mcsema_real_eip !31
  %FPU_UM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PM_val = alloca i1, !mcsema_real_eip !31
  %FPU_PC_val = alloca i2, !mcsema_real_eip !31
  %FPU_RC_val = alloca i2, !mcsema_real_eip !31
  %FPU_X_val = alloca i1, !mcsema_real_eip !31
  %FPU_IE_val = alloca i1, !mcsema_real_eip !31
  %FPU_DE_val = alloca i1, !mcsema_real_eip !31
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !31
  %FPU_OE_val = alloca i1, !mcsema_real_eip !31
  %FPU_UE_val = alloca i1, !mcsema_real_eip !31
  %FPU_PE_val = alloca i1, !mcsema_real_eip !31
  %FPU_SF_val = alloca i1, !mcsema_real_eip !31
  %FPU_ES_val = alloca i1, !mcsema_real_eip !31
  %FPU_C0_val = alloca i1, !mcsema_real_eip !31
  %FPU_C1_val = alloca i1, !mcsema_real_eip !31
  %FPU_C2_val = alloca i1, !mcsema_real_eip !31
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !31
  %FPU_C3_val = alloca i1, !mcsema_real_eip !31
  %FPU_B_val = alloca i1, !mcsema_real_eip !31
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !31
  %DF_val = alloca i1, !mcsema_real_eip !31
  %OF_val = alloca i1, !mcsema_real_eip !31
  %SF_val = alloca i1, !mcsema_real_eip !31
  %CF_val = alloca i1, !mcsema_real_eip !31
  %AF_val = alloca i1, !mcsema_real_eip !31
  %PF_val = alloca i1, !mcsema_real_eip !31
  %ZF_val = alloca i1, !mcsema_real_eip !31
  %RIP_val = alloca i64, !mcsema_real_eip !31
  %R14_val = alloca i64, !mcsema_real_eip !31
  %R13_val = alloca i64, !mcsema_real_eip !31
  %R12_val = alloca i64, !mcsema_real_eip !31
  %R11_val = alloca i64, !mcsema_real_eip !31
  %R10_val = alloca i64, !mcsema_real_eip !31
  %R9_val = alloca i64, !mcsema_real_eip !31
  %R8_val = alloca i64, !mcsema_real_eip !31
  %RSP_val = alloca i64, !mcsema_real_eip !31
  %RBP_val = alloca i64, !mcsema_real_eip !31
  %RDI_val = alloca i64, !mcsema_real_eip !31
  %RSI_val = alloca i64, !mcsema_real_eip !31
  %RDX_val = alloca i64, !mcsema_real_eip !31
  %RCX_val = alloca i64, !mcsema_real_eip !31
  %RBX_val = alloca i64, !mcsema_real_eip !31
  %RAX_val = alloca i64, !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %1 = load i64, i64* %RAX, !mcsema_real_eip !31
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %2 = load i64, i64* %RBX, !mcsema_real_eip !31
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !31
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !31
  %3 = load i64, i64* %RCX, !mcsema_real_eip !31
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !31
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %4 = load i64, i64* %RDX, !mcsema_real_eip !31
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !31
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !31
  %5 = load i64, i64* %RSI, !mcsema_real_eip !31
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !31
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %6 = load i64, i64* %RDI, !mcsema_real_eip !31
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %7 = load i64, i64* %RSP, !mcsema_real_eip !31
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %8 = load i64, i64* %RBP, !mcsema_real_eip !31
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %9 = load i64, i64* %R8, !mcsema_real_eip !31
  store i64 %9, i64* %R8_val, !mcsema_real_eip !31
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !31
  %10 = load i64, i64* %R9, !mcsema_real_eip !31
  store i64 %10, i64* %R9_val, !mcsema_real_eip !31
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %11 = load i64, i64* %R10, !mcsema_real_eip !31
  store i64 %11, i64* %R10_val, !mcsema_real_eip !31
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !31
  %12 = load i64, i64* %R11, !mcsema_real_eip !31
  store i64 %12, i64* %R11_val, !mcsema_real_eip !31
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %13 = load i64, i64* %R12, !mcsema_real_eip !31
  store i64 %13, i64* %R12_val, !mcsema_real_eip !31
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !31
  %14 = load i64, i64* %R13, !mcsema_real_eip !31
  store i64 %14, i64* %R13_val, !mcsema_real_eip !31
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %15 = load i64, i64* %R14, !mcsema_real_eip !31
  store i64 %15, i64* %R14_val, !mcsema_real_eip !31
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !31
  %16 = load i64, i64* %R15, !mcsema_real_eip !31
  store i64 %16, i64* %R15_val, !mcsema_real_eip !31
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %17 = load i64, i64* %RIP, !mcsema_real_eip !31
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !31
  store i1 %18, i1* %CF_val, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !31
  store i1 %19, i1* %PF_val, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !31
  store i1 %20, i1* %AF_val, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !31
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !31
  store i1 %22, i1* %SF_val, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !31
  store i1 %23, i1* %OF_val, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !31
  store i1 %24, i1* %DF_val, !mcsema_real_eip !31
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !31
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !31
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !31
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !31
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
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
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !31
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !31
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  %FPU_FOPCODE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !31
  %61 = load i11, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !31
  store i11 %61, i11* %FPU_FOPCODE_val, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !31
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !31
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !31
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !31
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !31
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !31
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !31
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !31
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !31
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !31
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !31
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !31
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !31
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !31
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !31
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !31
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !31
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !31
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !31
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %82 = add i64 %81, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !31
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !31
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !32
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 16
  %84 = add i64 %81, 16, !mcsema_real_eip !33
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !33
  %86 = bitcast i64* %_allin_new_bt_2 to i32*
  %_ptr_to_int_49 = ptrtoint i32* %86 to i64
  %_local_end_to_int_50 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_51 = bitcast i32* %86 to i8*
  %_offset_above_rbp_52 = sub i64 %_ptr_to_int_49, %_local_end_to_int_50
  %_pot_address_in_parent_stack_53 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_52
  %_cond1_54 = icmp ugt i8* %_ptr_bt_51, %_local_stack_end_ptr_
  %_cond2_1_55 = icmp ugt i8* %_ptr_bt_51, %_parent_stack_end_ptr_
  %_cond2_2_56 = icmp ult i8* %_ptr_bt_51, %_parent_stack_start_ptr_
  %_cond2_57 = or i1 %_cond2_1_55, %_cond2_2_56
  %_cond4_58 = icmp ule i8* %_pot_address_in_parent_stack_53, %_parent_stack_end_ptr_
  %_cond1_n_cond2_59 = and i1 %_cond1_54, %_cond2_57
  %_cond1_n_cond2_cond3_60 = and i1 %_cond1_n_cond2_59, %_cond4_58
  br i1 %_cond1_n_cond2_cond3_60, label %87, label %88

; <label>:87:                                     ; preds = %55
  %_address_in_parent_stack_61 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_52
  %_address_in_parent_stack_bt_62 = bitcast i8* %_address_in_parent_stack_61 to i32*
  br label %88

; <label>:88:                                     ; preds = %55, %87
  %89 = phi i32* [ %86, %55 ], [ %_address_in_parent_stack_bt_62, %87 ]
  %_new_load_63 = load i32, i32* %89
  %90 = zext i32 %_new_load_63 to i64, !mcsema_real_eip !33
  store i64 %90, i64* %RAX_val, !mcsema_real_eip !33
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %91 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 16
  %92 = add i64 %91, 16, !mcsema_real_eip !34
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !34
  %94 = bitcast i64* %_allin_new_bt_5 to i32*
  %_ptr_to_int_64 = ptrtoint i32* %94 to i64
  %_local_end_to_int_65 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_66 = bitcast i32* %94 to i8*
  %_offset_above_rbp_67 = sub i64 %_ptr_to_int_64, %_local_end_to_int_65
  %_pot_address_in_parent_stack_68 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_67
  %_cond1_69 = icmp ugt i8* %_ptr_bt_66, %_local_stack_end_ptr_
  %_cond2_1_70 = icmp ugt i8* %_ptr_bt_66, %_parent_stack_end_ptr_
  %_cond2_2_71 = icmp ult i8* %_ptr_bt_66, %_parent_stack_start_ptr_
  %_cond2_72 = or i1 %_cond2_1_70, %_cond2_2_71
  %_cond4_73 = icmp ule i8* %_pot_address_in_parent_stack_68, %_parent_stack_end_ptr_
  %_cond1_n_cond2_74 = and i1 %_cond1_69, %_cond2_72
  %_cond1_n_cond2_cond3_75 = and i1 %_cond1_n_cond2_74, %_cond4_73
  br i1 %_cond1_n_cond2_cond3_75, label %95, label %96

; <label>:95:                                     ; preds = %88
  %_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_67
  %_address_in_parent_stack_bt_77 = bitcast i8* %_address_in_parent_stack_76 to i32*
  br label %96

; <label>:96:                                     ; preds = %88, %95
  %97 = phi i32* [ %94, %88 ], [ %_address_in_parent_stack_bt_77, %95 ]
  %_new_load_78 = load i32, i32* %97
  %98 = zext i32 %_new_load_78 to i64, !mcsema_real_eip !34
  store i64 %98, i64* %R10_val, !mcsema_real_eip !34
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -4
  %100 = add i64 %99, -4, !mcsema_real_eip !35
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !35
  %102 = load i64, i64* %RDI_val, !mcsema_real_eip !35
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !35
  %104 = bitcast i64* %_allin_new_bt_8 to i32*
  store i32 %103, i32* %104, !mcsema_real_eip !35
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -8
  %106 = add i64 %105, -8, !mcsema_real_eip !36
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !36
  %108 = load i64, i64* %RSI_val, !mcsema_real_eip !36
  %109 = trunc i64 %108 to i32, !mcsema_real_eip !36
  %110 = bitcast i64* %_allin_new_bt_11 to i32*
  store i32 %109, i32* %110, !mcsema_real_eip !36
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %111 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -12
  %112 = add i64 %111, -12, !mcsema_real_eip !37
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !37
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !37
  %115 = trunc i64 %114 to i32, !mcsema_real_eip !37
  %116 = bitcast i64* %_allin_new_bt_14 to i32*
  store i32 %115, i32* %116, !mcsema_real_eip !37
  %_load_rbp_ptr_15 = load i8*, i8** %_RBP_ptr_
  %117 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_16 = getelementptr i8, i8* %_load_rbp_ptr_15, i64 -16
  %118 = add i64 %117, -16, !mcsema_real_eip !38
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !38
  %120 = load i64, i64* %RCX_val, !mcsema_real_eip !38
  %121 = trunc i64 %120 to i32, !mcsema_real_eip !38
  %122 = bitcast i64* %_allin_new_bt_17 to i32*
  store i32 %121, i32* %122, !mcsema_real_eip !38
  %_load_rbp_ptr_18 = load i8*, i8** %_RBP_ptr_
  %123 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %_new_gep_19 = getelementptr i8, i8* %_load_rbp_ptr_18, i64 -20
  %124 = add i64 %123, -20, !mcsema_real_eip !39
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !39
  %126 = load i64, i64* %R8_val, !mcsema_real_eip !39
  %127 = trunc i64 %126 to i32, !mcsema_real_eip !39
  %128 = bitcast i64* %_allin_new_bt_20 to i32*
  store i32 %127, i32* %128, !mcsema_real_eip !39
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_22 = getelementptr i8, i8* %_load_rbp_ptr_21, i64 -24
  %130 = add i64 %129, -24, !mcsema_real_eip !40
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !40
  %132 = load i64, i64* %R9_val, !mcsema_real_eip !40
  %133 = trunc i64 %132 to i32, !mcsema_real_eip !40
  %134 = bitcast i64* %_allin_new_bt_23 to i32*
  store i32 %133, i32* %134, !mcsema_real_eip !40
  %_load_rbp_ptr_24 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %_new_gep_25 = getelementptr i8, i8* %_load_rbp_ptr_24, i64 -28
  %136 = add i64 %135, -28, !mcsema_real_eip !41
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !41
  %138 = load i64, i64* %R10_val, !mcsema_real_eip !41
  %139 = trunc i64 %138 to i32, !mcsema_real_eip !41
  %140 = bitcast i64* %_allin_new_bt_26 to i32*
  store i32 %139, i32* %140, !mcsema_real_eip !41
  %_load_rbp_ptr_27 = load i8*, i8** %_RBP_ptr_
  %141 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %_new_gep_28 = getelementptr i8, i8* %_load_rbp_ptr_27, i64 -32
  %142 = add i64 %141, -32, !mcsema_real_eip !42
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !42
  %144 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %145 = trunc i64 %144 to i32, !mcsema_real_eip !42
  %146 = bitcast i64* %_allin_new_bt_29 to i32*
  store i32 %145, i32* %146, !mcsema_real_eip !42
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_31 = getelementptr i8, i8* %_load_rbp_ptr_30, i64 -28
  %148 = add i64 %147, -28, !mcsema_real_eip !43
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !43
  %150 = bitcast i64* %_allin_new_bt_32 to i32*
  %_ptr_to_int_79 = ptrtoint i32* %150 to i64
  %_local_end_to_int_80 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_81 = bitcast i32* %150 to i8*
  %_offset_above_rbp_82 = sub i64 %_ptr_to_int_79, %_local_end_to_int_80
  %_pot_address_in_parent_stack_83 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i8* %_ptr_bt_81, %_local_stack_end_ptr_
  %_cond2_1_85 = icmp ugt i8* %_ptr_bt_81, %_parent_stack_end_ptr_
  %_cond2_2_86 = icmp ult i8* %_ptr_bt_81, %_parent_stack_start_ptr_
  %_cond2_87 = or i1 %_cond2_1_85, %_cond2_2_86
  %_cond4_88 = icmp ule i8* %_pot_address_in_parent_stack_83, %_parent_stack_end_ptr_
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %151, label %152

; <label>:151:                                    ; preds = %96
  %_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_82
  %_address_in_parent_stack_bt_92 = bitcast i8* %_address_in_parent_stack_91 to i32*
  br label %152

; <label>:152:                                    ; preds = %96, %151
  %153 = phi i32* [ %150, %96 ], [ %_address_in_parent_stack_bt_92, %151 ]
  %_new_load_93 = load i32, i32* %153
  %154 = zext i32 %_new_load_93 to i64, !mcsema_real_eip !43
  store i64 %154, i64* %RAX_val, !mcsema_real_eip !43
  %_load_rbp_ptr_33 = load i8*, i8** %_RBP_ptr_
  %155 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %_new_gep_34 = getelementptr i8, i8* %_load_rbp_ptr_33, i64 -32
  %156 = add i64 %155, -32, !mcsema_real_eip !44
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !44
  %158 = bitcast i64* %_allin_new_bt_35 to i32*
  %_ptr_to_int_94 = ptrtoint i32* %158 to i64
  %_local_end_to_int_95 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_96 = bitcast i32* %158 to i8*
  %_offset_above_rbp_97 = sub i64 %_ptr_to_int_94, %_local_end_to_int_95
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %_ptr_bt_96, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %_ptr_bt_96, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %_ptr_bt_96, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %159, label %160

; <label>:159:                                    ; preds = %152
  %_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_address_in_parent_stack_bt_107 = bitcast i8* %_address_in_parent_stack_106 to i32*
  br label %160

; <label>:160:                                    ; preds = %152, %159
  %161 = phi i32* [ %158, %152 ], [ %_address_in_parent_stack_bt_107, %159 ]
  %_new_load_108 = load i32, i32* %161
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_93, i32 %_new_load_108)
  %162 = extractvalue { i32, i1 } %uadd, 0
  %163 = xor i32 %162, %_new_load_108, !mcsema_real_eip !44
  %164 = xor i32 %163, %_new_load_93, !mcsema_real_eip !44
  %165 = and i32 %164, 16, !mcsema_real_eip !44
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !44
  store i1 %166, i1* %AF_val, !mcsema_real_eip !44
  %167 = icmp slt i32 %162, 0
  store i1 %167, i1* %SF_val, !mcsema_real_eip !44
  %168 = icmp eq i32 %162, 0, !mcsema_real_eip !44
  store i1 %168, i1* %ZF_val, !mcsema_real_eip !44
  %169 = xor i32 %_new_load_93, -2147483648, !mcsema_real_eip !44
  %170 = xor i32 %169, %_new_load_108, !mcsema_real_eip !44
  %171 = and i32 %163, %170, !mcsema_real_eip !44
  %172 = icmp slt i32 %171, 0
  store i1 %172, i1* %OF_val, !mcsema_real_eip !44
  %173 = trunc i32 %162 to i8, !mcsema_real_eip !44
  %174 = tail call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !44
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  store i1 %176, i1* %PF_val, !mcsema_real_eip !44
  %177 = extractvalue { i32, i1 } %uadd, 1
  store i1 %177, i1* %CF_val, !mcsema_real_eip !44
  %178 = zext i32 %162 to i64, !mcsema_real_eip !44
  store i64 %178, i64* %RAX_val, !mcsema_real_eip !44
  %_load_rbp_ptr_36 = load i8*, i8** %_RBP_ptr_
  %179 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  %_new_gep_37 = getelementptr i8, i8* %_load_rbp_ptr_36, i64 -36
  %180 = add i64 %179, -36, !mcsema_real_eip !45
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !45
  %182 = bitcast i64* %_allin_new_bt_38 to i32*
  store i32 %162, i32* %182, !mcsema_real_eip !45
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %183 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -36
  %184 = add i64 %183, -36, !mcsema_real_eip !46
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !46
  %186 = bitcast i64* %_allin_new_bt_41 to i32*
  %_ptr_to_int_109 = ptrtoint i32* %186 to i64
  %_local_end_to_int_110 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_111 = bitcast i32* %186 to i8*
  %_offset_above_rbp_112 = sub i64 %_ptr_to_int_109, %_local_end_to_int_110
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_ptr_bt_111, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_ptr_bt_111, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_ptr_bt_111, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %187, label %188

; <label>:187:                                    ; preds = %160
  %_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_address_in_parent_stack_bt_122 = bitcast i8* %_address_in_parent_stack_121 to i32*
  br label %188

; <label>:188:                                    ; preds = %160, %187
  %189 = phi i32* [ %186, %160 ], [ %_address_in_parent_stack_bt_122, %187 ]
  %_new_load_123 = load i32, i32* %189
  %190 = zext i32 %_new_load_123 to i64, !mcsema_real_eip !46
  store i64 %190, i64* %RAX_val, !mcsema_real_eip !46
  %_load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_
  %191 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %_allin_new_bt_43 = bitcast i8* %_load_rsp_ptr_42 to i64*
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !47
  %_ptr_to_int_124 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_local_end_to_int_125 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_126 = bitcast i64* %_allin_new_bt_43 to i8*
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_125
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_ptr_bt_126, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_ptr_bt_126, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_ptr_bt_126, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  br i1 %_cond1_n_cond2_cond3_135, label %193, label %194

; <label>:193:                                    ; preds = %188
  %_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_address_in_parent_stack_bt_137 = bitcast i8* %_address_in_parent_stack_136 to i64*
  br label %194

; <label>:194:                                    ; preds = %188, %193
  %195 = phi i64* [ %_allin_new_bt_43, %188 ], [ %_address_in_parent_stack_bt_137, %193 ]
  %_new_load_138 = load i64, i64* %195
  %_new_int2ptr_ = inttoptr i64 %_new_load_138 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_138, i64* %RBP_val, !mcsema_real_eip !47
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_42, i64 16
  %196 = add i64 %191, 16, !mcsema_real_eip !48
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %196, i64* %RSP_val, !mcsema_real_eip !48
  %197 = load i64, i64* %RAX_val, !mcsema_real_eip !48
  store i64 %197, i64* %RAX, !mcsema_real_eip !48
  %198 = load i64, i64* %RBX_val, !mcsema_real_eip !48
  store i64 %198, i64* %RBX, !mcsema_real_eip !48
  %199 = load i64, i64* %RCX_val, !mcsema_real_eip !48
  store i64 %199, i64* %RCX, !mcsema_real_eip !48
  %200 = load i64, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %200, i64* %RDX, !mcsema_real_eip !48
  %201 = load i64, i64* %RSI_val, !mcsema_real_eip !48
  store i64 %201, i64* %RSI, !mcsema_real_eip !48
  %202 = load i64, i64* %RDI_val, !mcsema_real_eip !48
  store i64 %202, i64* %RDI, !mcsema_real_eip !48
  %_load_rsp_ptr_45 = load i8*, i8** %_RSP_ptr_
  %203 = load i64, i64* %RSP_val, !mcsema_real_eip !48
  %_new_ptr2int_46 = ptrtoint i8* %_load_rsp_ptr_45 to i64
  store volatile i64 %_new_ptr2int_46, i64* %RSP
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %204 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %_new_ptr2int_48 = ptrtoint i8* %_load_rbp_ptr_47 to i64
  store volatile i64 %_new_ptr2int_48, i64* %RBP
  %205 = load i64, i64* %R8_val, !mcsema_real_eip !48
  store i64 %205, i64* %R8, !mcsema_real_eip !48
  %206 = load i64, i64* %R9_val, !mcsema_real_eip !48
  store i64 %206, i64* %R9, !mcsema_real_eip !48
  %207 = load i64, i64* %R10_val, !mcsema_real_eip !48
  store i64 %207, i64* %R10, !mcsema_real_eip !48
  %208 = load i64, i64* %R11_val, !mcsema_real_eip !48
  store i64 %208, i64* %R11, !mcsema_real_eip !48
  %209 = load i64, i64* %R12_val, !mcsema_real_eip !48
  store i64 %209, i64* %R12, !mcsema_real_eip !48
  %210 = load i64, i64* %R13_val, !mcsema_real_eip !48
  store i64 %210, i64* %R13, !mcsema_real_eip !48
  %211 = load i64, i64* %R14_val, !mcsema_real_eip !48
  store i64 %211, i64* %R14, !mcsema_real_eip !48
  %212 = load i64, i64* %R15_val, !mcsema_real_eip !48
  store i64 %212, i64* %R15, !mcsema_real_eip !48
  %213 = load i64, i64* %RIP_val, !mcsema_real_eip !48
  store i64 %213, i64* %RIP, !mcsema_real_eip !48
  %214 = load i1, i1* %CF_val, !mcsema_real_eip !48
  store i1 %214, i1* %CF, align 1, !mcsema_real_eip !48
  %215 = load i1, i1* %PF_val, !mcsema_real_eip !48
  store i1 %215, i1* %PF, align 1, !mcsema_real_eip !48
  %216 = load i1, i1* %AF_val, !mcsema_real_eip !48
  store i1 %216, i1* %AF, align 1, !mcsema_real_eip !48
  %217 = load i1, i1* %ZF_val, !mcsema_real_eip !48
  store i1 %217, i1* %ZF, align 1, !mcsema_real_eip !48
  %218 = load i1, i1* %SF_val, !mcsema_real_eip !48
  store i1 %218, i1* %SF, align 1, !mcsema_real_eip !48
  %219 = load i1, i1* %OF_val, !mcsema_real_eip !48
  store i1 %219, i1* %OF, align 1, !mcsema_real_eip !48
  %220 = load i1, i1* %DF_val, !mcsema_real_eip !48
  store i1 %220, i1* %DF, align 1, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !48
  %221 = load i1, i1* %FPU_B_val, !mcsema_real_eip !48
  store i1 %221, i1* %FPU_B, align 1, !mcsema_real_eip !48
  %222 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !48
  store i1 %222, i1* %FPU_C3, align 1, !mcsema_real_eip !48
  %223 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !48
  store i3 %223, i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  %224 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !48
  store i1 %224, i1* %FPU_C2, align 1, !mcsema_real_eip !48
  %225 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !48
  store i1 %225, i1* %FPU_C1, align 1, !mcsema_real_eip !48
  %226 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !48
  store i1 %226, i1* %FPU_C0, align 1, !mcsema_real_eip !48
  %227 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !48
  store i1 %227, i1* %FPU_ES, align 1, !mcsema_real_eip !48
  %228 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !48
  store i1 %228, i1* %FPU_SF, align 1, !mcsema_real_eip !48
  %229 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !48
  store i1 %229, i1* %FPU_PE, align 1, !mcsema_real_eip !48
  %230 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !48
  store i1 %230, i1* %FPU_UE, align 1, !mcsema_real_eip !48
  %231 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !48
  store i1 %231, i1* %FPU_OE, align 1, !mcsema_real_eip !48
  %232 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !48
  store i1 %232, i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  %233 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !48
  store i1 %233, i1* %FPU_DE, align 1, !mcsema_real_eip !48
  %234 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !48
  store i1 %234, i1* %FPU_IE, align 1, !mcsema_real_eip !48
  %235 = load i1, i1* %FPU_X_val, !mcsema_real_eip !48
  store i1 %235, i1* %FPU_X, align 1, !mcsema_real_eip !48
  %236 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !48
  store i2 %236, i2* %FPU_RC, align 1, !mcsema_real_eip !48
  %237 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !48
  store i2 %237, i2* %FPU_PC, align 1, !mcsema_real_eip !48
  %238 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !48
  store i1 %238, i1* %FPU_PM, align 1, !mcsema_real_eip !48
  %239 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !48
  store i1 %239, i1* %FPU_UM, align 1, !mcsema_real_eip !48
  %240 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !48
  store i1 %240, i1* %FPU_OM, align 1, !mcsema_real_eip !48
  %241 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !48
  store i1 %241, i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  %242 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !48
  store i1 %242, i1* %FPU_DM, align 1, !mcsema_real_eip !48
  %243 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !48
  store i1 %243, i1* %FPU_IM, align 1, !mcsema_real_eip !48
  %_ptr_to_int_139 = ptrtoint i64* %53 to i64
  %_local_end_to_int_140 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_141 = bitcast i64* %53 to i8*
  %_offset_above_rbp_142 = sub i64 %_ptr_to_int_139, %_local_end_to_int_140
  %_pot_address_in_parent_stack_143 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_cond1_144 = icmp ugt i8* %_ptr_bt_141, %_local_stack_end_ptr_
  %_cond2_1_145 = icmp ugt i8* %_ptr_bt_141, %_parent_stack_end_ptr_
  %_cond2_2_146 = icmp ult i8* %_ptr_bt_141, %_parent_stack_start_ptr_
  %_cond2_147 = or i1 %_cond2_1_145, %_cond2_2_146
  %_cond4_148 = icmp ule i8* %_pot_address_in_parent_stack_143, %_parent_stack_end_ptr_
  %_cond1_n_cond2_149 = and i1 %_cond1_144, %_cond2_147
  %_cond1_n_cond2_cond3_150 = and i1 %_cond1_n_cond2_149, %_cond4_148
  br i1 %_cond1_n_cond2_cond3_150, label %244, label %245

; <label>:244:                                    ; preds = %194
  %_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_142
  %_address_in_parent_stack_bt_152 = bitcast i8* %_address_in_parent_stack_151 to i64*
  br label %245

; <label>:245:                                    ; preds = %194, %244
  %246 = phi i64* [ %53, %194 ], [ %_address_in_parent_stack_bt_152, %244 ]
  %_new_load_153 = load i64, i64* %246
  store i64 %_new_load_153, i64* %52, align 4
  %247 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !48
  store i16 %247, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  %248 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !48
  store i64 %248, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !48
  %249 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !48
  store i16 %249, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  %250 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !48
  store i64 %250, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !48
  %251 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !48
  store i11 %251, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !48
  %252 = load i128, i128* %XMM0_val, !mcsema_real_eip !48
  store i128 %252, i128* %XMM0, align 1, !mcsema_real_eip !48
  %253 = load i128, i128* %XMM1_val, !mcsema_real_eip !48
  store i128 %253, i128* %XMM1, align 1, !mcsema_real_eip !48
  %254 = load i128, i128* %XMM2_val, !mcsema_real_eip !48
  store i128 %254, i128* %XMM2, align 1, !mcsema_real_eip !48
  %255 = load i128, i128* %XMM3_val, !mcsema_real_eip !48
  store i128 %255, i128* %XMM3, align 1, !mcsema_real_eip !48
  %256 = load i128, i128* %XMM4_val, !mcsema_real_eip !48
  store i128 %256, i128* %XMM4, align 1, !mcsema_real_eip !48
  %257 = load i128, i128* %XMM5_val, !mcsema_real_eip !48
  store i128 %257, i128* %XMM5, align 1, !mcsema_real_eip !48
  %258 = load i128, i128* %XMM6_val, !mcsema_real_eip !48
  store i128 %258, i128* %XMM6, align 1, !mcsema_real_eip !48
  %259 = load i128, i128* %XMM7_val, !mcsema_real_eip !48
  store i128 %259, i128* %XMM7, align 1, !mcsema_real_eip !48
  %260 = load i128, i128* %XMM8_val, !mcsema_real_eip !48
  store i128 %260, i128* %XMM8, align 1, !mcsema_real_eip !48
  %261 = load i128, i128* %XMM9_val, !mcsema_real_eip !48
  store i128 %261, i128* %XMM9, align 1, !mcsema_real_eip !48
  %262 = load i128, i128* %XMM10_val, !mcsema_real_eip !48
  store i128 %262, i128* %XMM10, align 1, !mcsema_real_eip !48
  %263 = load i128, i128* %XMM11_val, !mcsema_real_eip !48
  store i128 %263, i128* %XMM11, align 1, !mcsema_real_eip !48
  %264 = load i128, i128* %XMM12_val, !mcsema_real_eip !48
  store i128 %264, i128* %XMM12, align 1, !mcsema_real_eip !48
  %265 = load i128, i128* %XMM13_val, !mcsema_real_eip !48
  store i128 %265, i128* %XMM13, align 1, !mcsema_real_eip !48
  %266 = load i128, i128* %XMM14_val, !mcsema_real_eip !48
  store i128 %266, i128* %XMM14, align 1, !mcsema_real_eip !48
  %267 = load i128, i128* %XMM15_val, !mcsema_real_eip !48
  store i128 %267, i128* %XMM15, align 1, !mcsema_real_eip !48
  %268 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !48
  store i64 %268, i64* %STACK_BASE, align 1, !mcsema_real_eip !48
  %269 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !48
  store i64 %269, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64}
!3 = !{i64 65}
!4 = !{i64 68}
!5 = !{i64 69}
!6 = !{i64 73}
!7 = !{i64 78}
!8 = !{i64 83}
!9 = !{i64 88}
!10 = !{i64 94}
!11 = !{i64 100}
!12 = !{i64 106}
!13 = !{i64 112}
!14 = !{i64 117}
!15 = !{i64 124}
!16 = !{i64 127}
!17 = !{i64 131}
!18 = !{i64 133}
!19 = !{i64 135}
!20 = !{i64 138}
!21 = !{i64 141}
!22 = !{i64 144}
!23 = !{i64 151}
!24 = !{i64 159}
!25 = !{i64 162}
!26 = !{i64 166}
!27 = !{i64 171}
!28 = !{i64 175}
!29 = !{i64 176}
!30 = !{i64 177}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 7}
!35 = !{i64 11}
!36 = !{i64 14}
!37 = !{i64 17}
!38 = !{i64 20}
!39 = !{i64 23}
!40 = !{i64 27}
!41 = !{i64 31}
!42 = !{i64 35}
!43 = !{i64 38}
!44 = !{i64 41}
!45 = !{i64 44}
!46 = !{i64 47}
!47 = !{i64 50}
!48 = !{i64 51}
