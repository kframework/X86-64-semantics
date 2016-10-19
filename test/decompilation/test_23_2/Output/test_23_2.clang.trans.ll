; ModuleID = 'Output/test_23_2.clang.trans.bc'
source_filename = "test_23_1.new.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_4004ed(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 13
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 13
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %82 = add i64 %79, -12, !mcsema_real_eip !4
  %_allin_new_bt_2 = bitcast i8* %_new_gep_1 to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  %84 = bitcast i64* %_allin_new_bt_2 to i32*
  store i32 0, i32* %84, !mcsema_real_eip !4
  %_load_rbp_ptr_3 = load i8*, i8** %_RBP_ptr_
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %_new_gep_4 = getelementptr i8, i8* %_load_rbp_ptr_3, i64 -5
  %86 = add i64 %85, -5, !mcsema_real_eip !5
  %_allin_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !5
  %88 = bitcast i64* %_allin_new_bt_5 to i8*
  store i8 119, i8* %88, !mcsema_real_eip !5
  br label %block_0x40053b, !mcsema_real_eip !6

block_0x40053b:                                   ; preds = %block_0x400537, %entry
  %_load_rbp_ptr_6 = load i8*, i8** %_RBP_ptr_
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_7 = getelementptr i8, i8* %_load_rbp_ptr_6, i64 -4
  %90 = add i64 %89, -4, !mcsema_real_eip !7
  %_allin_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !7
  %92 = bitcast i64* %_allin_new_bt_8 to i32*
  %93 = load i32, i32* %92, !mcsema_real_eip !7
  store i1 false, i1* %AF_val, !mcsema_real_eip !7
  %94 = trunc i32 %93 to i8, !mcsema_real_eip !7
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !7
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF_val, !mcsema_real_eip !7
  %98 = icmp eq i32 %93, 0, !mcsema_real_eip !7
  store i1 %98, i1* %ZF_val, !mcsema_real_eip !7
  %99 = icmp slt i32 %93, 0
  store i1 %99, i1* %SF_val, !mcsema_real_eip !7
  store i1 false, i1* %CF_val, !mcsema_real_eip !7
  store i1 false, i1* %OF_val, !mcsema_real_eip !7
  %100 = icmp slt i32 %93, 1
  br i1 %100, label %block_0x4004fe, label %block_0x400546, !mcsema_real_eip !8

block_0x4004fe:                                   ; preds = %block_0x40053b
  %_load_rbp_ptr_9 = load i8*, i8** %_RBP_ptr_
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_10 = getelementptr i8, i8* %_load_rbp_ptr_9, i64 -4
  %102 = add i64 %101, -4, !mcsema_real_eip !9
  %_allin_new_bt_11 = bitcast i8* %_new_gep_10 to i64*
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !9
  %104 = bitcast i64* %_allin_new_bt_11 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !9
  %106 = sext i32 %105 to i64, !mcsema_real_eip !10
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rbp_ptr_12 = load i8*, i8** %_RBP_ptr_
  %107 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %_new_gep_13 = getelementptr i8, i8* %_load_rbp_ptr_12, i64 -5
  %108 = add i64 %107, -5, !mcsema_real_eip !11
  %_new_gep_14 = getelementptr i8, i8* %_new_gep_13, i64 %106
  %109 = add i64 %108, %106, !mcsema_real_eip !11
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !11
  %111 = bitcast i64* %_allin_new_bt_15 to i8*
  %112 = load i8, i8* %111, !mcsema_real_eip !11
  %113 = sext i8 %112 to i32, !mcsema_real_eip !12
  %114 = zext i32 %113 to i64, !mcsema_real_eip !12
  store i64 %114, i64* %RAX_val, !mcsema_real_eip !12
  %115 = add nsw i32 %113, -100
  %116 = xor i32 %115, %113, !mcsema_real_eip !13
  %117 = and i32 %116, 16, !mcsema_real_eip !13
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !13
  store i1 %118, i1* %AF_val, !mcsema_real_eip !13
  %119 = trunc i32 %115 to i8, !mcsema_real_eip !13
  %120 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !13
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  store i1 %122, i1* %PF_val, !mcsema_real_eip !13
  %123 = icmp eq i32 %115, 0, !mcsema_real_eip !13
  store i1 %123, i1* %ZF_val, !mcsema_real_eip !13
  %124 = icmp slt i32 %115, 0
  store i1 %124, i1* %SF_val, !mcsema_real_eip !13
  %125 = icmp ult i8 %112, 100
  store i1 %125, i1* %CF_val, !mcsema_real_eip !13
  %126 = and i32 %116, %113, !mcsema_real_eip !13
  %127 = icmp slt i32 %126, 0
  store i1 %127, i1* %OF_val, !mcsema_real_eip !13
  %128 = load i1, i1* %ZF_val, !mcsema_real_eip !14
  br i1 %128, label %block_0x400537, label %block_0x400510, !mcsema_real_eip !14

block_0x400546:                                   ; preds = %block_0x400521, %block_0x400515, %block_0x40053b
  store i64 1, i64* %RAX_val
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %129 = load i64, i64* %RSP_val, !mcsema_real_eip !15
  %_allin_new_bt_17 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !15
  %131 = load i64, i64* %_allin_new_bt_17, !mcsema_real_eip !15
  %_new_int2ptr_ = inttoptr i64 %131 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %131, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_18 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 16
  %132 = add i64 %129, 16, !mcsema_real_eip !16
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_
  store i64 %132, i64* %RSP_val, !mcsema_real_eip !16
  %133 = load i64, i64* %RAX_val, !mcsema_real_eip !16
  store i64 %133, i64* %RAX, !mcsema_real_eip !16
  %134 = load i64, i64* %RBX_val, !mcsema_real_eip !16
  store i64 %134, i64* %RBX, !mcsema_real_eip !16
  %135 = load i64, i64* %RCX_val, !mcsema_real_eip !16
  store i64 %135, i64* %RCX, !mcsema_real_eip !16
  %136 = load i64, i64* %RDX_val, !mcsema_real_eip !16
  store i64 %136, i64* %RDX, !mcsema_real_eip !16
  %137 = load i64, i64* %RSI_val, !mcsema_real_eip !16
  store i64 %137, i64* %RSI, !mcsema_real_eip !16
  %138 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  store i64 %138, i64* %RDI, !mcsema_real_eip !16
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %139 = load i64, i64* %RSP_val, !mcsema_real_eip !16
  %_new_ptr2int_20 = ptrtoint i8* %_load_rsp_ptr_19 to i64
  store volatile i64 %_new_ptr2int_20, i64* %RSP
  %_load_rbp_ptr_21 = load i8*, i8** %_RBP_ptr_
  %140 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %_new_ptr2int_22 = ptrtoint i8* %_load_rbp_ptr_21 to i64
  store volatile i64 %_new_ptr2int_22, i64* %RBP
  %141 = load i64, i64* %R8_val, !mcsema_real_eip !16
  store i64 %141, i64* %R8, !mcsema_real_eip !16
  %142 = load i64, i64* %R9_val, !mcsema_real_eip !16
  store i64 %142, i64* %R9, !mcsema_real_eip !16
  %143 = load i64, i64* %R10_val, !mcsema_real_eip !16
  store i64 %143, i64* %R10, !mcsema_real_eip !16
  %144 = load i64, i64* %R11_val, !mcsema_real_eip !16
  store i64 %144, i64* %R11, !mcsema_real_eip !16
  %145 = load i64, i64* %R12_val, !mcsema_real_eip !16
  store i64 %145, i64* %R12, !mcsema_real_eip !16
  %146 = load i64, i64* %R13_val, !mcsema_real_eip !16
  store i64 %146, i64* %R13, !mcsema_real_eip !16
  %147 = load i64, i64* %R14_val, !mcsema_real_eip !16
  store i64 %147, i64* %R14, !mcsema_real_eip !16
  %148 = load i64, i64* %R15_val, !mcsema_real_eip !16
  store i64 %148, i64* %R15, !mcsema_real_eip !16
  %149 = load i64, i64* %RIP_val, !mcsema_real_eip !16
  store i64 %149, i64* %RIP, !mcsema_real_eip !16
  %150 = load i1, i1* %CF_val, !mcsema_real_eip !16
  store i1 %150, i1* %CF, align 1, !mcsema_real_eip !16
  %151 = load i1, i1* %PF_val, !mcsema_real_eip !16
  store i1 %151, i1* %PF, align 1, !mcsema_real_eip !16
  %152 = load i1, i1* %AF_val, !mcsema_real_eip !16
  store i1 %152, i1* %AF, align 1, !mcsema_real_eip !16
  %153 = load i1, i1* %ZF_val, !mcsema_real_eip !16
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !16
  %154 = load i1, i1* %SF_val, !mcsema_real_eip !16
  store i1 %154, i1* %SF, align 1, !mcsema_real_eip !16
  %155 = load i1, i1* %OF_val, !mcsema_real_eip !16
  store i1 %155, i1* %OF, align 1, !mcsema_real_eip !16
  %156 = load i1, i1* %DF_val, !mcsema_real_eip !16
  store i1 %156, i1* %DF, align 1, !mcsema_real_eip !16
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !16
  %157 = load i1, i1* %FPU_B_val, !mcsema_real_eip !16
  store i1 %157, i1* %FPU_B, align 1, !mcsema_real_eip !16
  %158 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !16
  store i1 %158, i1* %FPU_C3, align 1, !mcsema_real_eip !16
  %159 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !16
  store i3 %159, i3* %FPU_TOP, align 1, !mcsema_real_eip !16
  %160 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !16
  store i1 %160, i1* %FPU_C2, align 1, !mcsema_real_eip !16
  %161 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !16
  store i1 %161, i1* %FPU_C1, align 1, !mcsema_real_eip !16
  %162 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !16
  store i1 %162, i1* %FPU_C0, align 1, !mcsema_real_eip !16
  %163 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !16
  store i1 %163, i1* %FPU_ES, align 1, !mcsema_real_eip !16
  %164 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !16
  store i1 %164, i1* %FPU_SF, align 1, !mcsema_real_eip !16
  %165 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !16
  store i1 %165, i1* %FPU_PE, align 1, !mcsema_real_eip !16
  %166 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !16
  store i1 %166, i1* %FPU_UE, align 1, !mcsema_real_eip !16
  %167 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !16
  store i1 %167, i1* %FPU_OE, align 1, !mcsema_real_eip !16
  %168 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !16
  store i1 %168, i1* %FPU_ZE, align 1, !mcsema_real_eip !16
  %169 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !16
  store i1 %169, i1* %FPU_DE, align 1, !mcsema_real_eip !16
  %170 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !16
  store i1 %170, i1* %FPU_IE, align 1, !mcsema_real_eip !16
  %171 = load i1, i1* %FPU_X_val, !mcsema_real_eip !16
  store i1 %171, i1* %FPU_X, align 1, !mcsema_real_eip !16
  %172 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !16
  store i2 %172, i2* %FPU_RC, align 1, !mcsema_real_eip !16
  %173 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !16
  store i2 %173, i2* %FPU_PC, align 1, !mcsema_real_eip !16
  %174 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !16
  store i1 %174, i1* %FPU_PM, align 1, !mcsema_real_eip !16
  %175 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !16
  store i1 %175, i1* %FPU_UM, align 1, !mcsema_real_eip !16
  %176 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !16
  store i1 %176, i1* %FPU_OM, align 1, !mcsema_real_eip !16
  %177 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !16
  store i1 %177, i1* %FPU_ZM, align 1, !mcsema_real_eip !16
  %178 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !16
  store i1 %178, i1* %FPU_DM, align 1, !mcsema_real_eip !16
  %179 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !16
  store i1 %179, i1* %FPU_IM, align 1, !mcsema_real_eip !16
  %180 = load i64, i64* %53, align 4
  store i64 %180, i64* %52, align 4
  %181 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !16
  store i16 %181, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !16
  %182 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !16
  store i64 %182, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !16
  %183 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !16
  store i16 %183, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !16
  %184 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !16
  store i64 %184, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !16
  %185 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !16
  store i11 %185, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !16
  %186 = load i128, i128* %XMM0_val, !mcsema_real_eip !16
  store i128 %186, i128* %XMM0, align 1, !mcsema_real_eip !16
  %187 = load i128, i128* %XMM1_val, !mcsema_real_eip !16
  store i128 %187, i128* %XMM1, align 1, !mcsema_real_eip !16
  %188 = load i128, i128* %XMM2_val, !mcsema_real_eip !16
  store i128 %188, i128* %XMM2, align 1, !mcsema_real_eip !16
  %189 = load i128, i128* %XMM3_val, !mcsema_real_eip !16
  store i128 %189, i128* %XMM3, align 1, !mcsema_real_eip !16
  %190 = load i128, i128* %XMM4_val, !mcsema_real_eip !16
  store i128 %190, i128* %XMM4, align 1, !mcsema_real_eip !16
  %191 = load i128, i128* %XMM5_val, !mcsema_real_eip !16
  store i128 %191, i128* %XMM5, align 1, !mcsema_real_eip !16
  %192 = load i128, i128* %XMM6_val, !mcsema_real_eip !16
  store i128 %192, i128* %XMM6, align 1, !mcsema_real_eip !16
  %193 = load i128, i128* %XMM7_val, !mcsema_real_eip !16
  store i128 %193, i128* %XMM7, align 1, !mcsema_real_eip !16
  %194 = load i128, i128* %XMM8_val, !mcsema_real_eip !16
  store i128 %194, i128* %XMM8, align 1, !mcsema_real_eip !16
  %195 = load i128, i128* %XMM9_val, !mcsema_real_eip !16
  store i128 %195, i128* %XMM9, align 1, !mcsema_real_eip !16
  %196 = load i128, i128* %XMM10_val, !mcsema_real_eip !16
  store i128 %196, i128* %XMM10, align 1, !mcsema_real_eip !16
  %197 = load i128, i128* %XMM11_val, !mcsema_real_eip !16
  store i128 %197, i128* %XMM11, align 1, !mcsema_real_eip !16
  %198 = load i128, i128* %XMM12_val, !mcsema_real_eip !16
  store i128 %198, i128* %XMM12, align 1, !mcsema_real_eip !16
  %199 = load i128, i128* %XMM13_val, !mcsema_real_eip !16
  store i128 %199, i128* %XMM13, align 1, !mcsema_real_eip !16
  %200 = load i128, i128* %XMM14_val, !mcsema_real_eip !16
  store i128 %200, i128* %XMM14, align 1, !mcsema_real_eip !16
  %201 = load i128, i128* %XMM15_val, !mcsema_real_eip !16
  store i128 %201, i128* %XMM15, align 1, !mcsema_real_eip !16
  %202 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !16
  store i64 %202, i64* %STACK_BASE, align 1, !mcsema_real_eip !16
  %203 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !16
  store i64 %203, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16

block_0x400510:                                   ; preds = %block_0x4004fe
  %204 = load i64, i64* %RAX_val, !mcsema_real_eip !17
  %205 = trunc i64 %204 to i32, !mcsema_real_eip !17
  %206 = add i32 %205, -100
  %207 = xor i32 %206, %205, !mcsema_real_eip !17
  %208 = and i32 %207, 16, !mcsema_real_eip !17
  %209 = icmp ne i32 %208, 0, !mcsema_real_eip !17
  store i1 %209, i1* %AF_val, !mcsema_real_eip !17
  %210 = trunc i32 %206 to i8, !mcsema_real_eip !17
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !17
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF_val, !mcsema_real_eip !17
  %214 = icmp eq i32 %206, 0, !mcsema_real_eip !17
  store i1 %214, i1* %ZF_val, !mcsema_real_eip !17
  %215 = icmp slt i32 %206, 0
  store i1 %215, i1* %SF_val, !mcsema_real_eip !17
  %216 = icmp ult i32 %205, 100, !mcsema_real_eip !17
  store i1 %216, i1* %CF_val, !mcsema_real_eip !17
  %217 = and i32 %207, %205, !mcsema_real_eip !17
  %218 = icmp slt i32 %217, 0
  store i1 %218, i1* %OF_val, !mcsema_real_eip !17
  %tmp = xor i1 %215, %218
  %219 = load i1, i1* %ZF_val, !mcsema_real_eip !18
  %.demorgan = or i1 %219, %tmp
  %220 = load i64, i64* %RAX_val, !mcsema_real_eip !19
  %221 = trunc i64 %220 to i32, !mcsema_real_eip !19
  br i1 %.demorgan, label %block_0x400515, label %block_0x40051c, !mcsema_real_eip !18

block_0x400537:                                   ; preds = %block_0x400521, %block_0x40051c, %block_0x400515, %block_0x4004fe
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %222 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -4
  %223 = add i64 %222, -4, !mcsema_real_eip !20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !20
  %225 = bitcast i64* %_allin_new_bt_25 to i32*
  %226 = load i32, i32* %225, !mcsema_real_eip !20
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 1)
  %227 = extractvalue { i32, i1 } %uadd, 0
  %228 = xor i32 %227, %226, !mcsema_real_eip !20
  %229 = and i32 %228, 16, !mcsema_real_eip !20
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !20
  store i1 %230, i1* %AF_val, !mcsema_real_eip !20
  %231 = icmp slt i32 %227, 0
  store i1 %231, i1* %SF_val, !mcsema_real_eip !20
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !20
  store i1 %232, i1* %ZF_val, !mcsema_real_eip !20
  %233 = xor i32 %226, -2147483648, !mcsema_real_eip !20
  %234 = and i32 %228, %233, !mcsema_real_eip !20
  %235 = icmp slt i32 %234, 0
  store i1 %235, i1* %OF_val, !mcsema_real_eip !20
  %236 = trunc i32 %227 to i8, !mcsema_real_eip !20
  %237 = tail call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !20
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  store i1 %239, i1* %PF_val, !mcsema_real_eip !20
  %240 = extractvalue { i32, i1 } %uadd, 1
  store i1 %240, i1* %CF_val, !mcsema_real_eip !20
  store i32 %227, i32* %225, !mcsema_real_eip !20
  br label %block_0x40053b, !mcsema_real_eip !19

block_0x400515:                                   ; preds = %block_0x400510
  %241 = add i32 %221, -97
  %242 = xor i32 %241, %221, !mcsema_real_eip !21
  %243 = and i32 %242, 16, !mcsema_real_eip !21
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !21
  store i1 %244, i1* %AF_val, !mcsema_real_eip !21
  %245 = trunc i32 %241 to i8, !mcsema_real_eip !21
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !21
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF_val, !mcsema_real_eip !21
  %249 = icmp eq i32 %241, 0, !mcsema_real_eip !21
  store i1 %249, i1* %ZF_val, !mcsema_real_eip !21
  %250 = icmp slt i32 %241, 0
  store i1 %250, i1* %SF_val, !mcsema_real_eip !21
  %251 = icmp ult i32 %221, 97, !mcsema_real_eip !21
  store i1 %251, i1* %CF_val, !mcsema_real_eip !21
  %252 = and i32 %242, %221, !mcsema_real_eip !21
  %253 = icmp slt i32 %252, 0
  store i1 %253, i1* %OF_val, !mcsema_real_eip !21
  %254 = load i1, i1* %ZF_val, !mcsema_real_eip !22
  br i1 %254, label %block_0x400537, label %block_0x400546, !mcsema_real_eip !22

block_0x40051c:                                   ; preds = %block_0x400510
  %255 = add i32 %221, -115
  %256 = xor i32 %255, %221, !mcsema_real_eip !19
  %257 = and i32 %256, 16
  %258 = icmp eq i32 %257, 0
  store i1 %258, i1* %AF_val, !mcsema_real_eip !19
  %259 = trunc i32 %255 to i8, !mcsema_real_eip !19
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !19
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF_val, !mcsema_real_eip !19
  %263 = icmp eq i32 %255, 0, !mcsema_real_eip !19
  store i1 %263, i1* %ZF_val, !mcsema_real_eip !19
  %264 = icmp slt i32 %255, 0
  store i1 %264, i1* %SF_val, !mcsema_real_eip !19
  %265 = icmp ult i32 %221, 115, !mcsema_real_eip !19
  store i1 %265, i1* %CF_val, !mcsema_real_eip !19
  %266 = and i32 %256, %221, !mcsema_real_eip !19
  %267 = icmp slt i32 %266, 0
  store i1 %267, i1* %OF_val, !mcsema_real_eip !19
  %268 = load i1, i1* %ZF_val, !mcsema_real_eip !23
  br i1 %268, label %block_0x400537, label %block_0x400521, !mcsema_real_eip !23

block_0x400521:                                   ; preds = %block_0x40051c
  %269 = load i64, i64* %RAX_val, !mcsema_real_eip !24
  %270 = trunc i64 %269 to i32, !mcsema_real_eip !24
  %271 = add i32 %270, -119
  %272 = xor i32 %271, %270, !mcsema_real_eip !24
  %273 = and i32 %272, 16
  %274 = icmp eq i32 %273, 0
  store i1 %274, i1* %AF_val, !mcsema_real_eip !24
  %275 = trunc i32 %271 to i8, !mcsema_real_eip !24
  %276 = tail call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !24
  %277 = and i8 %276, 1
  %278 = icmp eq i8 %277, 0
  store i1 %278, i1* %PF_val, !mcsema_real_eip !24
  %279 = icmp eq i32 %271, 0, !mcsema_real_eip !24
  store i1 %279, i1* %ZF_val, !mcsema_real_eip !24
  %280 = icmp slt i32 %271, 0
  store i1 %280, i1* %SF_val, !mcsema_real_eip !24
  %281 = icmp ult i32 %270, 119, !mcsema_real_eip !24
  store i1 %281, i1* %CF_val, !mcsema_real_eip !24
  %282 = and i32 %272, %270, !mcsema_real_eip !24
  %283 = icmp slt i32 %282, 0
  store i1 %283, i1* %OF_val, !mcsema_real_eip !24
  %284 = load i1, i1* %ZF_val, !mcsema_real_eip !25
  br i1 %284, label %block_0x400537, label %block_0x400546, !mcsema_real_eip !25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_4004ed(%struct.regs* %0)
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
!2 = !{i64 4195565}
!3 = !{i64 4195566}
!4 = !{i64 4195569}
!5 = !{i64 4195576}
!6 = !{i64 4195580}
!7 = !{i64 4195643}
!8 = !{i64 4195647}
!9 = !{i64 4195582}
!10 = !{i64 4195585}
!11 = !{i64 4195587}
!12 = !{i64 4195592}
!13 = !{i64 4195595}
!14 = !{i64 4195598}
!15 = !{i64 4195654}
!16 = !{i64 4195655}
!17 = !{i64 4195600}
!18 = !{i64 4195603}
!19 = !{i64 4195612}
!20 = !{i64 4195639}
!21 = !{i64 4195605}
!22 = !{i64 4195608}
!23 = !{i64 4195615}
!24 = !{i64 4195617}
!25 = !{i64 4195620}
