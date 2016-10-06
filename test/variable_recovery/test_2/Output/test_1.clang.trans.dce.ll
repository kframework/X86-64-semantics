; ModuleID = 'Output/test_1.clang.trans.ll'
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
  %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
  %77 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
  %78 = add i64 %77, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %78, i64* %RSP_val, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %78, i64* %RBP_val, !mcsema_real_eip !3
  store i1 false, i1* %CF_val, !mcsema_real_eip !4
  store i1 false, i1* %OF_val, !mcsema_real_eip !4
  store i1 false, i1* %SF_val, !mcsema_real_eip !4
  store i1 true, i1* %ZF_val, !mcsema_real_eip !4
  store i1 true, i1* %PF_val, !mcsema_real_eip !4
  store i64 0, i64* %RAX_val, !mcsema_real_eip !4
  %79 = load i64, i64* %RCX_val, !mcsema_real_eip !5
  %80 = and i64 %79, -256, !mcsema_real_eip !5
  store i64 %80, i64* %RCX_val, !mcsema_real_eip !5
  %_load_rbp_ptr_1 = load i8*, i8** %_RBP_ptr_
  %_new_gep_2 = getelementptr i8, i8* %_load_rbp_ptr_1, i64 -4
  %_allin_new_bt_3 = bitcast i8* %_new_gep_2 to i64*
  %81 = load i64, i64* %RDI_val, !mcsema_real_eip !6
  %82 = trunc i64 %81 to i32, !mcsema_real_eip !6
  %83 = bitcast i64* %_allin_new_bt_3 to i32*
  store i32 %82, i32* %83, !mcsema_real_eip !6
  %_load_rbp_ptr_4 = load i8*, i8** %_RBP_ptr_
  %_new_gep_5 = getelementptr i8, i8* %_load_rbp_ptr_4, i64 -4
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %84 = bitcast i64* %_allin_new_bt_6 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !7
  %86 = zext i32 %85 to i64, !mcsema_real_eip !7
  store i64 %86, i64* %RAX_val, !mcsema_real_eip !7
  %_load_rbp_ptr_7 = load i8*, i8** %_RBP_ptr_
  %_new_gep_8 = getelementptr i8, i8* %_load_rbp_ptr_7, i64 -8
  %_allin_new_bt_9 = bitcast i8* %_new_gep_8 to i64*
  %87 = bitcast i64* %_allin_new_bt_9 to i32*
  store i32 %85, i32* %87, !mcsema_real_eip !8
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %88 = bitcast i64* %_allin_new_bt_12 to i32*
  %89 = load i32, i32* %88, !mcsema_real_eip !9
  %90 = add i32 %89, -1
  %91 = xor i32 %90, %89, !mcsema_real_eip !10
  %92 = and i32 %91, 16, !mcsema_real_eip !10
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !10
  store i1 %93, i1* %AF_val, !mcsema_real_eip !10
  %94 = trunc i32 %90 to i8, !mcsema_real_eip !10
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !10
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF_val, !mcsema_real_eip !10
  %98 = icmp eq i32 %90, 0, !mcsema_real_eip !10
  store i1 %98, i1* %ZF_val, !mcsema_real_eip !10
  %99 = icmp slt i32 %90, 0
  store i1 %99, i1* %SF_val, !mcsema_real_eip !10
  %100 = icmp eq i32 %89, 0
  store i1 %100, i1* %CF_val, !mcsema_real_eip !10
  %101 = and i32 %91, %89, !mcsema_real_eip !10
  %102 = icmp slt i32 %101, 0
  store i1 %102, i1* %OF_val, !mcsema_real_eip !10
  %103 = zext i32 %90 to i64, !mcsema_real_eip !10
  store i64 %103, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -12
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %104 = bitcast i64* %_allin_new_bt_15 to i32*
  store i32 %90, i32* %104, !mcsema_real_eip !11
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %105 = bitcast i64* %_allin_new_bt_18 to i32*
  %106 = load i32, i32* %105, !mcsema_real_eip !12
  store i1 false, i1* %AF_val, !mcsema_real_eip !12
  %107 = trunc i32 %106 to i8, !mcsema_real_eip !12
  %108 = tail call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !12
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF_val, !mcsema_real_eip !12
  %111 = icmp eq i32 %106, 0, !mcsema_real_eip !12
  store i1 %111, i1* %ZF_val, !mcsema_real_eip !12
  %112 = icmp slt i32 %106, 0
  store i1 %112, i1* %SF_val, !mcsema_real_eip !12
  store i1 false, i1* %CF_val, !mcsema_real_eip !12
  store i1 false, i1* %OF_val, !mcsema_real_eip !12
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -13
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !13
  %114 = trunc i64 %113 to i8, !mcsema_real_eip !13
  %115 = bitcast i64* %_allin_new_bt_21 to i8*
  store i8 %114, i8* %115, !mcsema_real_eip !13
  %116 = load i1, i1* %ZF_val, !mcsema_real_eip !14
  br i1 %116, label %block_0x37, label %block_0x27, !mcsema_real_eip !14

block_0x37:                                       ; preds = %entry
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -13
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %117 = bitcast i64* %_allin_new_bt_24 to i8*
  %118 = load i8, i8* %117, !mcsema_real_eip !15
  %119 = and i8 %118, 1, !mcsema_real_eip !16
  store i1 false, i1* %SF_val, !mcsema_real_eip !16
  %120 = icmp eq i8 %119, 0, !mcsema_real_eip !16
  store i1 %120, i1* %ZF_val, !mcsema_real_eip !16
  %121 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !16
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF_val, !mcsema_real_eip !16
  store i1 false, i1* %OF_val, !mcsema_real_eip !16
  store i1 false, i1* %CF_val, !mcsema_real_eip !16
  %124 = zext i8 %119 to i64
  store i64 %124, i64* %RAX_val, !mcsema_real_eip !17
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %125 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %126 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !18
  %_new_int2ptr_ = inttoptr i64 %126 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %126, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 16
  %127 = add i64 %125, 16, !mcsema_real_eip !19
  store volatile i8* %_new_gep_27, i8** %_RSP_ptr_
  store i64 %127, i64* %RSP_val, !mcsema_real_eip !19
  %128 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %128, i64* %RAX, !mcsema_real_eip !19
  %129 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %129, i64* %RBX, !mcsema_real_eip !19
  %130 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %130, i64* %RCX, !mcsema_real_eip !19
  %131 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %131, i64* %RDX, !mcsema_real_eip !19
  %132 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %132, i64* %RSI, !mcsema_real_eip !19
  %133 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %133, i64* %RDI, !mcsema_real_eip !19
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_29 = ptrtoint i8* %_load_rsp_ptr_28 to i64
  store volatile i64 %_new_ptr2int_29, i64* %RSP
  %_load_rbp_ptr_30 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_31 = ptrtoint i8* %_load_rbp_ptr_30 to i64
  store volatile i64 %_new_ptr2int_31, i64* %RBP
  %134 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %134, i64* %R8, !mcsema_real_eip !19
  %135 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %135, i64* %R9, !mcsema_real_eip !19
  %136 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %136, i64* %R10, !mcsema_real_eip !19
  %137 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %137, i64* %R11, !mcsema_real_eip !19
  %138 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %138, i64* %R12, !mcsema_real_eip !19
  %139 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %139, i64* %R13, !mcsema_real_eip !19
  %140 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %140, i64* %R14, !mcsema_real_eip !19
  %141 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %141, i64* %R15, !mcsema_real_eip !19
  %142 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %142, i64* %RIP, !mcsema_real_eip !19
  %143 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %143, i1* %CF, align 1, !mcsema_real_eip !19
  %144 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %144, i1* %PF, align 1, !mcsema_real_eip !19
  %145 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %145, i1* %AF, align 1, !mcsema_real_eip !19
  %146 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %146, i1* %ZF, align 1, !mcsema_real_eip !19
  %147 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %147, i1* %SF, align 1, !mcsema_real_eip !19
  %148 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %148, i1* %OF, align 1, !mcsema_real_eip !19
  %149 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %149, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %150 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %150, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %151 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %151, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %152 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %152, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %153 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %153, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %154 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %154, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %155 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %155, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %156 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %156, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %157 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %157, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %158 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %158, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %159 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %159, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %160 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %160, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %161 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %161, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %162 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %162, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %163 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %163, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %164 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %164, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %165 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %165, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %166 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %166, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %167 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %167, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %168 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %168, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %169 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %169, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %170 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %170, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %171 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %171, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %172 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %172, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %173 = load i64, i64* %53, align 4
  store i64 %173, i64* %52, align 4
  %174 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %174, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %175 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %175, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %176 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %176, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %177 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %177, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %178 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %178, i128* %XMM0, align 1, !mcsema_real_eip !19
  %179 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %179, i128* %XMM1, align 1, !mcsema_real_eip !19
  %180 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %180, i128* %XMM2, align 1, !mcsema_real_eip !19
  %181 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %181, i128* %XMM3, align 1, !mcsema_real_eip !19
  %182 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %182, i128* %XMM4, align 1, !mcsema_real_eip !19
  %183 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %183, i128* %XMM5, align 1, !mcsema_real_eip !19
  %184 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %184, i128* %XMM6, align 1, !mcsema_real_eip !19
  %185 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %185, i128* %XMM7, align 1, !mcsema_real_eip !19
  %186 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %186, i128* %XMM8, align 1, !mcsema_real_eip !19
  %187 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %187, i128* %XMM9, align 1, !mcsema_real_eip !19
  %188 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %188, i128* %XMM10, align 1, !mcsema_real_eip !19
  %189 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %189, i128* %XMM11, align 1, !mcsema_real_eip !19
  %190 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %190, i128* %XMM12, align 1, !mcsema_real_eip !19
  %191 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %191, i128* %XMM13, align 1, !mcsema_real_eip !19
  %192 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %192, i128* %XMM14, align 1, !mcsema_real_eip !19
  %193 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %193, i128* %XMM15, align 1, !mcsema_real_eip !19
  %194 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %194, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %195 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %195, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19

block_0x27:                                       ; preds = %entry
  store i1 false, i1* %CF_val, !mcsema_real_eip !20
  store i1 false, i1* %OF_val, !mcsema_real_eip !20
  store i1 false, i1* %SF_val, !mcsema_real_eip !20
  store i1 true, i1* %ZF_val, !mcsema_real_eip !20
  store i1 true, i1* %PF_val, !mcsema_real_eip !20
  store i64 0, i64* %RAX_val, !mcsema_real_eip !20
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %196 = bitcast i64* %_allin_new_bt_34 to i32*
  %197 = load i32, i32* %196, !mcsema_real_eip !21
  %198 = zext i32 %197 to i64, !mcsema_real_eip !21
  store i64 %198, i64* %RCX_val, !mcsema_real_eip !21
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -12
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %199 = bitcast i64* %_allin_new_bt_37 to i32*
  %200 = load i32, i32* %199, !mcsema_real_eip !22
  %201 = and i32 %200, %197, !mcsema_real_eip !22
  %202 = zext i32 %201 to i64, !mcsema_real_eip !22
  store i64 %202, i64* %RCX_val, !mcsema_real_eip !22
  %203 = load i64, i64* %RAX_val, !mcsema_real_eip !23
  %204 = trunc i64 %203 to i32, !mcsema_real_eip !23
  %205 = sub i32 %204, %201, !mcsema_real_eip !23
  %206 = xor i32 %205, %204, !mcsema_real_eip !23
  %207 = xor i32 %206, %201, !mcsema_real_eip !23
  %208 = and i32 %207, 16, !mcsema_real_eip !23
  %209 = icmp ne i32 %208, 0, !mcsema_real_eip !23
  store i1 %209, i1* %AF_val, !mcsema_real_eip !23
  %210 = trunc i32 %205 to i8, !mcsema_real_eip !23
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !23
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF_val, !mcsema_real_eip !23
  %214 = icmp eq i32 %204, %201
  store i1 %214, i1* %ZF_val, !mcsema_real_eip !23
  %215 = icmp slt i32 %205, 0
  store i1 %215, i1* %SF_val, !mcsema_real_eip !23
  %216 = icmp ult i32 %204, %201, !mcsema_real_eip !23
  store i1 %216, i1* %CF_val, !mcsema_real_eip !23
  %217 = xor i32 %204, %201, !mcsema_real_eip !23
  %218 = and i32 %206, %217, !mcsema_real_eip !23
  %219 = icmp slt i32 %218, 0
  store i1 %219, i1* %OF_val, !mcsema_real_eip !23
  %220 = load i1, i1* %ZF_val, !mcsema_real_eip !24
  %221 = zext i1 %220 to i64
  %222 = load i64, i64* %RDX_val, !mcsema_real_eip !24
  %223 = and i64 %222, -256, !mcsema_real_eip !24
  %224 = or i64 %223, %221
  store i64 %224, i64* %RDX_val, !mcsema_real_eip !24
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -13
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %225 = zext i1 %220 to i8
  %226 = bitcast i64* %_allin_new_bt_40 to i8*
  store i8 %225, i8* %226, !mcsema_real_eip !25
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -13
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %227 = bitcast i64* %_allin_new_bt_43 to i8*
  %228 = load i8, i8* %227, !mcsema_real_eip !15
  %229 = and i8 %228, 1, !mcsema_real_eip !16
  store i1 false, i1* %SF_val, !mcsema_real_eip !16
  %230 = icmp eq i8 %229, 0, !mcsema_real_eip !16
  store i1 %230, i1* %ZF_val, !mcsema_real_eip !16
  %231 = tail call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !16
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  store i1 %233, i1* %PF_val, !mcsema_real_eip !16
  store i1 false, i1* %OF_val, !mcsema_real_eip !16
  store i1 false, i1* %CF_val, !mcsema_real_eip !16
  %234 = zext i8 %229 to i64
  store i64 %234, i64* %RAX_val, !mcsema_real_eip !17
  %_load_rsp_ptr_44 = load i8*, i8** %_RSP_ptr_
  %235 = load i64, i64* %RSP_val, !mcsema_real_eip !18
  %_allin_new_bt_45 = bitcast i8* %_load_rsp_ptr_44 to i64*
  %236 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !18
  %_new_int2ptr_46 = inttoptr i64 %236 to i8*
  store volatile i8* %_new_int2ptr_46, i8** %_RBP_ptr_
  store i64 %236, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_44, i64 16
  %237 = add i64 %235, 16, !mcsema_real_eip !19
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %237, i64* %RSP_val, !mcsema_real_eip !19
  %238 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  store i64 %238, i64* %RAX, !mcsema_real_eip !19
  %239 = load i64, i64* %RBX_val, !mcsema_real_eip !19
  store i64 %239, i64* %RBX, !mcsema_real_eip !19
  %240 = load i64, i64* %RCX_val, !mcsema_real_eip !19
  store i64 %240, i64* %RCX, !mcsema_real_eip !19
  %241 = load i64, i64* %RDX_val, !mcsema_real_eip !19
  store i64 %241, i64* %RDX, !mcsema_real_eip !19
  %242 = load i64, i64* %RSI_val, !mcsema_real_eip !19
  store i64 %242, i64* %RSI, !mcsema_real_eip !19
  %243 = load i64, i64* %RDI_val, !mcsema_real_eip !19
  store i64 %243, i64* %RDI, !mcsema_real_eip !19
  %_load_rsp_ptr_48 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_49 = ptrtoint i8* %_load_rsp_ptr_48 to i64
  store volatile i64 %_new_ptr2int_49, i64* %RSP
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_ptr2int_51 = ptrtoint i8* %_load_rbp_ptr_50 to i64
  store volatile i64 %_new_ptr2int_51, i64* %RBP
  %244 = load i64, i64* %R8_val, !mcsema_real_eip !19
  store i64 %244, i64* %R8, !mcsema_real_eip !19
  %245 = load i64, i64* %R9_val, !mcsema_real_eip !19
  store i64 %245, i64* %R9, !mcsema_real_eip !19
  %246 = load i64, i64* %R10_val, !mcsema_real_eip !19
  store i64 %246, i64* %R10, !mcsema_real_eip !19
  %247 = load i64, i64* %R11_val, !mcsema_real_eip !19
  store i64 %247, i64* %R11, !mcsema_real_eip !19
  %248 = load i64, i64* %R12_val, !mcsema_real_eip !19
  store i64 %248, i64* %R12, !mcsema_real_eip !19
  %249 = load i64, i64* %R13_val, !mcsema_real_eip !19
  store i64 %249, i64* %R13, !mcsema_real_eip !19
  %250 = load i64, i64* %R14_val, !mcsema_real_eip !19
  store i64 %250, i64* %R14, !mcsema_real_eip !19
  %251 = load i64, i64* %R15_val, !mcsema_real_eip !19
  store i64 %251, i64* %R15, !mcsema_real_eip !19
  %252 = load i64, i64* %RIP_val, !mcsema_real_eip !19
  store i64 %252, i64* %RIP, !mcsema_real_eip !19
  %253 = load i1, i1* %CF_val, !mcsema_real_eip !19
  store i1 %253, i1* %CF, align 1, !mcsema_real_eip !19
  %254 = load i1, i1* %PF_val, !mcsema_real_eip !19
  store i1 %254, i1* %PF, align 1, !mcsema_real_eip !19
  %255 = load i1, i1* %AF_val, !mcsema_real_eip !19
  store i1 %255, i1* %AF, align 1, !mcsema_real_eip !19
  %256 = load i1, i1* %ZF_val, !mcsema_real_eip !19
  store i1 %256, i1* %ZF, align 1, !mcsema_real_eip !19
  %257 = load i1, i1* %SF_val, !mcsema_real_eip !19
  store i1 %257, i1* %SF, align 1, !mcsema_real_eip !19
  %258 = load i1, i1* %OF_val, !mcsema_real_eip !19
  store i1 %258, i1* %OF, align 1, !mcsema_real_eip !19
  %259 = load i1, i1* %DF_val, !mcsema_real_eip !19
  store i1 %259, i1* %DF, align 1, !mcsema_real_eip !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !19
  %260 = load i1, i1* %FPU_B_val, !mcsema_real_eip !19
  store i1 %260, i1* %FPU_B, align 1, !mcsema_real_eip !19
  %261 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !19
  store i1 %261, i1* %FPU_C3, align 1, !mcsema_real_eip !19
  %262 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !19
  store i3 %262, i3* %FPU_TOP, align 1, !mcsema_real_eip !19
  %263 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !19
  store i1 %263, i1* %FPU_C2, align 1, !mcsema_real_eip !19
  %264 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !19
  store i1 %264, i1* %FPU_C1, align 1, !mcsema_real_eip !19
  %265 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !19
  store i1 %265, i1* %FPU_C0, align 1, !mcsema_real_eip !19
  %266 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !19
  store i1 %266, i1* %FPU_ES, align 1, !mcsema_real_eip !19
  %267 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !19
  store i1 %267, i1* %FPU_SF, align 1, !mcsema_real_eip !19
  %268 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !19
  store i1 %268, i1* %FPU_PE, align 1, !mcsema_real_eip !19
  %269 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !19
  store i1 %269, i1* %FPU_UE, align 1, !mcsema_real_eip !19
  %270 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !19
  store i1 %270, i1* %FPU_OE, align 1, !mcsema_real_eip !19
  %271 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !19
  store i1 %271, i1* %FPU_ZE, align 1, !mcsema_real_eip !19
  %272 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !19
  store i1 %272, i1* %FPU_DE, align 1, !mcsema_real_eip !19
  %273 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !19
  store i1 %273, i1* %FPU_IE, align 1, !mcsema_real_eip !19
  %274 = load i1, i1* %FPU_X_val, !mcsema_real_eip !19
  store i1 %274, i1* %FPU_X, align 1, !mcsema_real_eip !19
  %275 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !19
  store i2 %275, i2* %FPU_RC, align 1, !mcsema_real_eip !19
  %276 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !19
  store i2 %276, i2* %FPU_PC, align 1, !mcsema_real_eip !19
  %277 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !19
  store i1 %277, i1* %FPU_PM, align 1, !mcsema_real_eip !19
  %278 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !19
  store i1 %278, i1* %FPU_UM, align 1, !mcsema_real_eip !19
  %279 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !19
  store i1 %279, i1* %FPU_OM, align 1, !mcsema_real_eip !19
  %280 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !19
  store i1 %280, i1* %FPU_ZM, align 1, !mcsema_real_eip !19
  %281 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !19
  store i1 %281, i1* %FPU_DM, align 1, !mcsema_real_eip !19
  %282 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !19
  store i1 %282, i1* %FPU_IM, align 1, !mcsema_real_eip !19
  %283 = load i64, i64* %53, align 4
  store i64 %283, i64* %52, align 4
  %284 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !19
  store i16 %284, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !19
  %285 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !19
  store i64 %285, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !19
  %286 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !19
  store i16 %286, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !19
  %287 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !19
  store i64 %287, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !19
  %288 = load i128, i128* %XMM0_val, !mcsema_real_eip !19
  store i128 %288, i128* %XMM0, align 1, !mcsema_real_eip !19
  %289 = load i128, i128* %XMM1_val, !mcsema_real_eip !19
  store i128 %289, i128* %XMM1, align 1, !mcsema_real_eip !19
  %290 = load i128, i128* %XMM2_val, !mcsema_real_eip !19
  store i128 %290, i128* %XMM2, align 1, !mcsema_real_eip !19
  %291 = load i128, i128* %XMM3_val, !mcsema_real_eip !19
  store i128 %291, i128* %XMM3, align 1, !mcsema_real_eip !19
  %292 = load i128, i128* %XMM4_val, !mcsema_real_eip !19
  store i128 %292, i128* %XMM4, align 1, !mcsema_real_eip !19
  %293 = load i128, i128* %XMM5_val, !mcsema_real_eip !19
  store i128 %293, i128* %XMM5, align 1, !mcsema_real_eip !19
  %294 = load i128, i128* %XMM6_val, !mcsema_real_eip !19
  store i128 %294, i128* %XMM6, align 1, !mcsema_real_eip !19
  %295 = load i128, i128* %XMM7_val, !mcsema_real_eip !19
  store i128 %295, i128* %XMM7, align 1, !mcsema_real_eip !19
  %296 = load i128, i128* %XMM8_val, !mcsema_real_eip !19
  store i128 %296, i128* %XMM8, align 1, !mcsema_real_eip !19
  %297 = load i128, i128* %XMM9_val, !mcsema_real_eip !19
  store i128 %297, i128* %XMM9, align 1, !mcsema_real_eip !19
  %298 = load i128, i128* %XMM10_val, !mcsema_real_eip !19
  store i128 %298, i128* %XMM10, align 1, !mcsema_real_eip !19
  %299 = load i128, i128* %XMM11_val, !mcsema_real_eip !19
  store i128 %299, i128* %XMM11, align 1, !mcsema_real_eip !19
  %300 = load i128, i128* %XMM12_val, !mcsema_real_eip !19
  store i128 %300, i128* %XMM12, align 1, !mcsema_real_eip !19
  %301 = load i128, i128* %XMM13_val, !mcsema_real_eip !19
  store i128 %301, i128* %XMM13, align 1, !mcsema_real_eip !19
  %302 = load i128, i128* %XMM14_val, !mcsema_real_eip !19
  store i128 %302, i128* %XMM14, align 1, !mcsema_real_eip !19
  %303 = load i128, i128* %XMM15_val, !mcsema_real_eip !19
  store i128 %303, i128* %XMM15, align 1, !mcsema_real_eip !19
  %304 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !19
  store i64 %304, i64* %STACK_BASE, align 1, !mcsema_real_eip !19
  %305 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !19
  store i64 %305, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !19
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
