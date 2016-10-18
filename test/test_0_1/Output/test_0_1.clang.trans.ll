; ModuleID = 'Output/test_0_1.clang.trans.bc'
source_filename = "Output/test_0_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [6 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2d = internal constant %0 <{ [6 x i8] c"test \00" }>, align 64

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 24
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 24
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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %81 = add i64 %78, -24
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %RDI_val, !mcsema_real_eip !5
  %_new_gep_2 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -12
  %82 = add i64 %78, -12, !mcsema_real_eip !6
  %_allin_new_bt_3 = bitcast i8* %_new_gep_2 to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !6
  %84 = bitcast i64* %_allin_new_bt_3 to i32*
  store i32 0, i32* %84, !mcsema_real_eip !6
  %85 = load i64, i64* %RDI_val, !mcsema_real_eip !7
  %86 = tail call x86_64_sysvcc i64 @printf(i64 %85), !mcsema_real_eip !7
  store i64 %86, i64* %RAX_val, !mcsema_real_eip !7
  store i64 0, i64* %RCX_val, !mcsema_real_eip !8
  %_load_rbp_ptr_4 = load i8*, i8** %_RBP_ptr_
  %87 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_5 = getelementptr i8, i8* %_load_rbp_ptr_4, i64 -8
  %88 = add i64 %87, -8, !mcsema_real_eip !9
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !9
  %90 = trunc i64 %86 to i32, !mcsema_real_eip !9
  %91 = bitcast i64* %_allin_new_bt_6 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !9
  %92 = load i64, i64* %RCX_val, !mcsema_real_eip !10
  %93 = and i64 %92, 4294967295
  store i64 %93, i64* %RAX_val, !mcsema_real_eip !10
  %_load_rsp_ptr_7 = load i8*, i8** %_RSP_ptr_
  %94 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %_new_ptr2int_8 = ptrtoint i8* %_load_rsp_ptr_7 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_8, i64 16)
  %95 = extractvalue { i64, i1 } %uadd, 0
  %96 = xor i64 %95, %_new_ptr2int_8, !mcsema_real_eip !11
  %97 = and i64 %96, 16
  %98 = icmp eq i64 %97, 0
  store i1 %98, i1* %AF_val, !mcsema_real_eip !11
  %99 = icmp slt i64 %95, 0
  store i1 %99, i1* %SF_val, !mcsema_real_eip !11
  %100 = icmp eq i64 %95, 0, !mcsema_real_eip !11
  store i1 %100, i1* %ZF_val, !mcsema_real_eip !11
  %101 = xor i64 %_new_ptr2int_8, -9223372036854775808, !mcsema_real_eip !11
  %102 = and i64 %96, %101, !mcsema_real_eip !11
  %103 = icmp slt i64 %102, 0
  store i1 %103, i1* %OF_val, !mcsema_real_eip !11
  %104 = trunc i64 %95 to i8, !mcsema_real_eip !11
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !11
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  store i1 %107, i1* %PF_val, !mcsema_real_eip !11
  %108 = extractvalue { i64, i1 } %uadd, 1
  store i1 %108, i1* %CF_val, !mcsema_real_eip !11
  %_new_int2ptr_ = inttoptr i64 %95 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %95, i64* %RSP_val, !mcsema_real_eip !11
  %109 = inttoptr i64 %95 to i64*, !mcsema_real_eip !12
  %110 = load i64, i64* %109, !mcsema_real_eip !12
  %_new_int2ptr_9 = inttoptr i64 %110 to i8*
  store volatile i8* %_new_int2ptr_9, i8** %_RBP_ptr_
  store i64 %110, i64* %RBP_val, !mcsema_real_eip !12
  %111 = add i64 %95, 16, !mcsema_real_eip !13
  %_new_int2ptr_10 = inttoptr i64 %111 to i8*
  store volatile i8* %_new_int2ptr_10, i8** %_RSP_ptr_
  store i64 %111, i64* %RSP_val, !mcsema_real_eip !13
  %112 = load i64, i64* %RAX_val, !mcsema_real_eip !13
  store i64 %112, i64* %RAX, !mcsema_real_eip !13
  %113 = load i64, i64* %RBX_val, !mcsema_real_eip !13
  store i64 %113, i64* %RBX, !mcsema_real_eip !13
  %114 = load i64, i64* %RCX_val, !mcsema_real_eip !13
  store i64 %114, i64* %RCX, !mcsema_real_eip !13
  %115 = load i64, i64* %RDX_val, !mcsema_real_eip !13
  store i64 %115, i64* %RDX, !mcsema_real_eip !13
  %116 = load i64, i64* %RSI_val, !mcsema_real_eip !13
  store i64 %116, i64* %RSI, !mcsema_real_eip !13
  %117 = load i64, i64* %RDI_val, !mcsema_real_eip !13
  store i64 %117, i64* %RDI, !mcsema_real_eip !13
  %_load_rsp_ptr_11 = load i8*, i8** %_RSP_ptr_
  %118 = load i64, i64* %RSP_val, !mcsema_real_eip !13
  %_new_ptr2int_12 = ptrtoint i8* %_load_rsp_ptr_11 to i64
  store volatile i64 %_new_ptr2int_12, i64* %RSP
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %119 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %_new_ptr2int_14 = ptrtoint i8* %_load_rbp_ptr_13 to i64
  store volatile i64 %_new_ptr2int_14, i64* %RBP
  %120 = load i64, i64* %R8_val, !mcsema_real_eip !13
  store i64 %120, i64* %R8, !mcsema_real_eip !13
  %121 = load i64, i64* %R9_val, !mcsema_real_eip !13
  store i64 %121, i64* %R9, !mcsema_real_eip !13
  %122 = load i64, i64* %R10_val, !mcsema_real_eip !13
  store i64 %122, i64* %R10, !mcsema_real_eip !13
  %123 = load i64, i64* %R11_val, !mcsema_real_eip !13
  store i64 %123, i64* %R11, !mcsema_real_eip !13
  %124 = load i64, i64* %R12_val, !mcsema_real_eip !13
  store i64 %124, i64* %R12, !mcsema_real_eip !13
  %125 = load i64, i64* %R13_val, !mcsema_real_eip !13
  store i64 %125, i64* %R13, !mcsema_real_eip !13
  %126 = load i64, i64* %R14_val, !mcsema_real_eip !13
  store i64 %126, i64* %R14, !mcsema_real_eip !13
  %127 = load i64, i64* %R15_val, !mcsema_real_eip !13
  store i64 %127, i64* %R15, !mcsema_real_eip !13
  %128 = load i64, i64* %RIP_val, !mcsema_real_eip !13
  store i64 %128, i64* %RIP, !mcsema_real_eip !13
  %129 = load i1, i1* %CF_val, !mcsema_real_eip !13
  store i1 %129, i1* %CF, align 1, !mcsema_real_eip !13
  %130 = load i1, i1* %PF_val, !mcsema_real_eip !13
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !13
  %131 = load i1, i1* %AF_val, !mcsema_real_eip !13
  store i1 %131, i1* %AF, align 1, !mcsema_real_eip !13
  %132 = load i1, i1* %ZF_val, !mcsema_real_eip !13
  store i1 %132, i1* %ZF, align 1, !mcsema_real_eip !13
  %133 = load i1, i1* %SF_val, !mcsema_real_eip !13
  store i1 %133, i1* %SF, align 1, !mcsema_real_eip !13
  %134 = load i1, i1* %OF_val, !mcsema_real_eip !13
  store i1 %134, i1* %OF, align 1, !mcsema_real_eip !13
  %135 = load i1, i1* %DF_val, !mcsema_real_eip !13
  store i1 %135, i1* %DF, align 1, !mcsema_real_eip !13
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !13
  %136 = load i1, i1* %FPU_B_val, !mcsema_real_eip !13
  store i1 %136, i1* %FPU_B, align 1, !mcsema_real_eip !13
  %137 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !13
  store i1 %137, i1* %FPU_C3, align 1, !mcsema_real_eip !13
  %138 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !13
  store i3 %138, i3* %FPU_TOP, align 1, !mcsema_real_eip !13
  %139 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !13
  store i1 %139, i1* %FPU_C2, align 1, !mcsema_real_eip !13
  %140 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !13
  store i1 %140, i1* %FPU_C1, align 1, !mcsema_real_eip !13
  %141 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !13
  store i1 %141, i1* %FPU_C0, align 1, !mcsema_real_eip !13
  %142 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !13
  store i1 %142, i1* %FPU_ES, align 1, !mcsema_real_eip !13
  %143 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !13
  store i1 %143, i1* %FPU_SF, align 1, !mcsema_real_eip !13
  %144 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !13
  store i1 %144, i1* %FPU_PE, align 1, !mcsema_real_eip !13
  %145 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !13
  store i1 %145, i1* %FPU_UE, align 1, !mcsema_real_eip !13
  %146 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !13
  store i1 %146, i1* %FPU_OE, align 1, !mcsema_real_eip !13
  %147 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !13
  store i1 %147, i1* %FPU_ZE, align 1, !mcsema_real_eip !13
  %148 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !13
  store i1 %148, i1* %FPU_DE, align 1, !mcsema_real_eip !13
  %149 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !13
  store i1 %149, i1* %FPU_IE, align 1, !mcsema_real_eip !13
  %150 = load i1, i1* %FPU_X_val, !mcsema_real_eip !13
  store i1 %150, i1* %FPU_X, align 1, !mcsema_real_eip !13
  %151 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !13
  store i2 %151, i2* %FPU_RC, align 1, !mcsema_real_eip !13
  %152 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !13
  store i2 %152, i2* %FPU_PC, align 1, !mcsema_real_eip !13
  %153 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !13
  store i1 %153, i1* %FPU_PM, align 1, !mcsema_real_eip !13
  %154 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !13
  store i1 %154, i1* %FPU_UM, align 1, !mcsema_real_eip !13
  %155 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !13
  store i1 %155, i1* %FPU_OM, align 1, !mcsema_real_eip !13
  %156 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !13
  store i1 %156, i1* %FPU_ZM, align 1, !mcsema_real_eip !13
  %157 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !13
  store i1 %157, i1* %FPU_DM, align 1, !mcsema_real_eip !13
  %158 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !13
  store i1 %158, i1* %FPU_IM, align 1, !mcsema_real_eip !13
  %159 = load i64, i64* %53, align 4
  store i64 %159, i64* %52, align 4
  %160 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !13
  store i16 %160, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !13
  %161 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !13
  store i64 %161, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !13
  %162 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !13
  store i16 %162, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !13
  %163 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !13
  store i64 %163, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !13
  %164 = load i128, i128* %XMM0_val, !mcsema_real_eip !13
  store i128 %164, i128* %XMM0, align 1, !mcsema_real_eip !13
  %165 = load i128, i128* %XMM1_val, !mcsema_real_eip !13
  store i128 %165, i128* %XMM1, align 1, !mcsema_real_eip !13
  %166 = load i128, i128* %XMM2_val, !mcsema_real_eip !13
  store i128 %166, i128* %XMM2, align 1, !mcsema_real_eip !13
  %167 = load i128, i128* %XMM3_val, !mcsema_real_eip !13
  store i128 %167, i128* %XMM3, align 1, !mcsema_real_eip !13
  %168 = load i128, i128* %XMM4_val, !mcsema_real_eip !13
  store i128 %168, i128* %XMM4, align 1, !mcsema_real_eip !13
  %169 = load i128, i128* %XMM5_val, !mcsema_real_eip !13
  store i128 %169, i128* %XMM5, align 1, !mcsema_real_eip !13
  %170 = load i128, i128* %XMM6_val, !mcsema_real_eip !13
  store i128 %170, i128* %XMM6, align 1, !mcsema_real_eip !13
  %171 = load i128, i128* %XMM7_val, !mcsema_real_eip !13
  store i128 %171, i128* %XMM7, align 1, !mcsema_real_eip !13
  %172 = load i128, i128* %XMM8_val, !mcsema_real_eip !13
  store i128 %172, i128* %XMM8, align 1, !mcsema_real_eip !13
  %173 = load i128, i128* %XMM9_val, !mcsema_real_eip !13
  store i128 %173, i128* %XMM9, align 1, !mcsema_real_eip !13
  %174 = load i128, i128* %XMM10_val, !mcsema_real_eip !13
  store i128 %174, i128* %XMM10, align 1, !mcsema_real_eip !13
  %175 = load i128, i128* %XMM11_val, !mcsema_real_eip !13
  store i128 %175, i128* %XMM11, align 1, !mcsema_real_eip !13
  %176 = load i128, i128* %XMM12_val, !mcsema_real_eip !13
  store i128 %176, i128* %XMM12, align 1, !mcsema_real_eip !13
  %177 = load i128, i128* %XMM13_val, !mcsema_real_eip !13
  store i128 %177, i128* %XMM13, align 1, !mcsema_real_eip !13
  %178 = load i128, i128* %XMM14_val, !mcsema_real_eip !13
  store i128 %178, i128* %XMM14, align 1, !mcsema_real_eip !13
  %179 = load i128, i128* %XMM15_val, !mcsema_real_eip !13
  store i128 %179, i128* %XMM15, align 1, !mcsema_real_eip !13
  %180 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !13
  store i64 %180, i64* %STACK_BASE, align 1, !mcsema_real_eip !13
  %181 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !13
  store i64 %181, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

declare x86_64_sysvcc i64 @printf(i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [16 x i8] c"\09subq\09$16, %rsp\00"}
!5 = !{i64 8, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!6 = !{i64 18, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!7 = !{i64 27, [9 x i8] c"\09callq\090\00"}
!8 = !{i64 32, [17 x i8] c"\09xorl\09%ecx, %ecx\00"}
!9 = !{i64 34, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!10 = !{i64 37, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!11 = !{i64 39, [16 x i8] c"\09addq\09$16, %rsp\00"}
!12 = !{i64 43, [11 x i8] c"\09popq\09%rbp\00"}
!13 = !{i64 44, [6 x i8] c"\09retq\00"}
