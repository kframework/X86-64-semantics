; ModuleID = 'Output/test_28.clang.trans.bc'
source_filename = "Output/test_28.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [13 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2d = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64

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
  %_new_gep_1 = getelementptr i8, i8* %_load_rsp_ptr_, i64 -24
  %82 = add i64 %79, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_1 to i64
  %_trans_p2i_2 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_2
  %83 = xor i64 %82, %80, !mcsema_real_eip !4
  %84 = and i64 %_trans_xor_, 16
  %85 = icmp eq i64 %84, 0
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
  %_trans_icmp_ne_7 = icmp ne i64 %_trans_p2i_6, 16
  %92 = icmp ult i64 %80, 16, !mcsema_real_eip !4
  store i1 %_trans_icmp_ne_7, i1* %CF_val, !mcsema_real_eip !4
  %_trans_p2i_8 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_9 = and i64 %_trans_xor_, %_trans_p2i_8
  %93 = and i64 %_trans_xor_, %80, !mcsema_real_eip !4
  %94 = icmp slt i64 %_trans_xor_9, 0
  store i1 %94, i1* %OF_val, !mcsema_real_eip !4
  store volatile i8* %_new_gep_1, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %RDI_val, !mcsema_real_eip !5
  %_load_rbp_ptr_10 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %_new_gep_11 = getelementptr i8, i8* %_load_rbp_ptr_10, i64 -4
  %96 = add i64 %95, -4, !mcsema_real_eip !6
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !6
  %98 = bitcast i64* %_allin_new_bt_12 to i32*
  store i32 0, i32* %98, !mcsema_real_eip !6
  %99 = load i64, i64* %RAX_val, !mcsema_real_eip !7
  %100 = and i64 %99, -256, !mcsema_real_eip !7
  store i64 %100, i64* %RAX_val, !mcsema_real_eip !7
  %101 = load i64, i64* %RDI_val, !mcsema_real_eip !8
  %102 = load i64, i64* %RSI_val, !mcsema_real_eip !8
  %103 = load i64, i64* %RDX_val, !mcsema_real_eip !8
  %104 = load i64, i64* %RCX_val, !mcsema_real_eip !8
  %105 = load i64, i64* %R8_val, !mcsema_real_eip !8
  %106 = load i64, i64* %R9_val, !mcsema_real_eip !8
  %_load_rsp_ptr_13 = load i8*, i8** %_RSP_ptr_
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  %_allin_new_bt_14 = bitcast i8* %_load_rsp_ptr_13 to i64*
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !8
  %109 = load i64, i64* %_allin_new_bt_14, !mcsema_real_eip !8
  %_new_gep_15 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 8
  %110 = add i64 %107, 8, !mcsema_real_eip !8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !8
  %112 = load i64, i64* %_allin_new_bt_16, !mcsema_real_eip !8
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 16
  %113 = add i64 %107, 16, !mcsema_real_eip !8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !8
  %115 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !8
  %_new_gep_19 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 24
  %116 = add i64 %107, 24, !mcsema_real_eip !8
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !8
  %118 = load i64, i64* %_allin_new_bt_20, !mcsema_real_eip !8
  %_new_gep_21 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 32
  %119 = add i64 %107, 32, !mcsema_real_eip !8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !8
  %121 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_13, i64 40
  %122 = add i64 %107, 40, !mcsema_real_eip !8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !8
  %124 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !8
  %125 = tail call x86_64_sysvcc i64 @printf(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %109, i64 %112, i64 %115, i64 %118, i64 %121, i64 %124), !mcsema_real_eip !8
  store i64 %125, i64* %RAX_val, !mcsema_real_eip !8
  store i64 0, i64* %RCX_val, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -8
  %127 = add i64 %126, -8, !mcsema_real_eip !10
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !10
  %129 = trunc i64 %125 to i32, !mcsema_real_eip !10
  %130 = bitcast i64* %_allin_new_bt_27 to i32*
  store i32 %129, i32* %130, !mcsema_real_eip !10
  %131 = load i64, i64* %RCX_val, !mcsema_real_eip !11
  %132 = and i64 %131, 4294967295
  store i64 %132, i64* %RAX_val, !mcsema_real_eip !11
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %133 = load i64, i64* %RSP_val, !mcsema_real_eip !12
  %_new_ptr2int_29 = ptrtoint i8* %_load_rsp_ptr_28 to i64
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_new_ptr2int_29, i64 16)
  %134 = extractvalue { i64, i1 } %uadd, 0
  %135 = xor i64 %134, %_new_ptr2int_29, !mcsema_real_eip !12
  %136 = and i64 %135, 16
  %137 = icmp eq i64 %136, 0
  store i1 %137, i1* %AF_val, !mcsema_real_eip !12
  %138 = icmp slt i64 %134, 0
  store i1 %138, i1* %SF_val, !mcsema_real_eip !12
  %139 = icmp eq i64 %134, 0, !mcsema_real_eip !12
  store i1 %139, i1* %ZF_val, !mcsema_real_eip !12
  %140 = xor i64 %_new_ptr2int_29, -9223372036854775808, !mcsema_real_eip !12
  %141 = and i64 %135, %140, !mcsema_real_eip !12
  %142 = icmp slt i64 %141, 0
  store i1 %142, i1* %OF_val, !mcsema_real_eip !12
  %143 = trunc i64 %134 to i8, !mcsema_real_eip !12
  %144 = tail call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !12
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  store i1 %146, i1* %PF_val, !mcsema_real_eip !12
  %147 = extractvalue { i64, i1 } %uadd, 1
  store i1 %147, i1* %CF_val, !mcsema_real_eip !12
  %_new_int2ptr_ = inttoptr i64 %134 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RSP_ptr_
  store i64 %134, i64* %RSP_val, !mcsema_real_eip !12
  %148 = inttoptr i64 %134 to i64*, !mcsema_real_eip !13
  %149 = load i64, i64* %148, !mcsema_real_eip !13
  %_new_int2ptr_30 = inttoptr i64 %149 to i8*
  store volatile i8* %_new_int2ptr_30, i8** %_RBP_ptr_
  store i64 %149, i64* %RBP_val, !mcsema_real_eip !13
  %150 = add i64 %134, 16, !mcsema_real_eip !14
  %_new_int2ptr_31 = inttoptr i64 %150 to i8*
  store volatile i8* %_new_int2ptr_31, i8** %_RSP_ptr_
  store i64 %150, i64* %RSP_val, !mcsema_real_eip !14
  %151 = load i64, i64* %RAX_val, !mcsema_real_eip !14
  store i64 %151, i64* %RAX, !mcsema_real_eip !14
  %152 = load i64, i64* %RBX_val, !mcsema_real_eip !14
  store i64 %152, i64* %RBX, !mcsema_real_eip !14
  %153 = load i64, i64* %RCX_val, !mcsema_real_eip !14
  store i64 %153, i64* %RCX, !mcsema_real_eip !14
  %154 = load i64, i64* %RDX_val, !mcsema_real_eip !14
  store i64 %154, i64* %RDX, !mcsema_real_eip !14
  %155 = load i64, i64* %RSI_val, !mcsema_real_eip !14
  store i64 %155, i64* %RSI, !mcsema_real_eip !14
  %156 = load i64, i64* %RDI_val, !mcsema_real_eip !14
  store i64 %156, i64* %RDI, !mcsema_real_eip !14
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %157 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_new_ptr2int_33 = ptrtoint i8* %_load_rsp_ptr_32 to i64
  store volatile i64 %_new_ptr2int_33, i64* %RSP
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_ptr2int_35 = ptrtoint i8* %_load_rbp_ptr_34 to i64
  store volatile i64 %_new_ptr2int_35, i64* %RBP
  %159 = load i64, i64* %R8_val, !mcsema_real_eip !14
  store i64 %159, i64* %R8, !mcsema_real_eip !14
  %160 = load i64, i64* %R9_val, !mcsema_real_eip !14
  store i64 %160, i64* %R9, !mcsema_real_eip !14
  %161 = load i64, i64* %R10_val, !mcsema_real_eip !14
  store i64 %161, i64* %R10, !mcsema_real_eip !14
  %162 = load i64, i64* %R11_val, !mcsema_real_eip !14
  store i64 %162, i64* %R11, !mcsema_real_eip !14
  %163 = load i64, i64* %R12_val, !mcsema_real_eip !14
  store i64 %163, i64* %R12, !mcsema_real_eip !14
  %164 = load i64, i64* %R13_val, !mcsema_real_eip !14
  store i64 %164, i64* %R13, !mcsema_real_eip !14
  %165 = load i64, i64* %R14_val, !mcsema_real_eip !14
  store i64 %165, i64* %R14, !mcsema_real_eip !14
  %166 = load i64, i64* %R15_val, !mcsema_real_eip !14
  store i64 %166, i64* %R15, !mcsema_real_eip !14
  %167 = load i64, i64* %RIP_val, !mcsema_real_eip !14
  store i64 %167, i64* %RIP, !mcsema_real_eip !14
  %168 = load i1, i1* %CF_val, !mcsema_real_eip !14
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !14
  %169 = load i1, i1* %PF_val, !mcsema_real_eip !14
  store i1 %169, i1* %PF, align 1, !mcsema_real_eip !14
  %170 = load i1, i1* %AF_val, !mcsema_real_eip !14
  store i1 %170, i1* %AF, align 1, !mcsema_real_eip !14
  %171 = load i1, i1* %ZF_val, !mcsema_real_eip !14
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !14
  %172 = load i1, i1* %SF_val, !mcsema_real_eip !14
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !14
  %173 = load i1, i1* %OF_val, !mcsema_real_eip !14
  store i1 %173, i1* %OF, align 1, !mcsema_real_eip !14
  %174 = load i1, i1* %DF_val, !mcsema_real_eip !14
  store i1 %174, i1* %DF, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  %175 = load i1, i1* %FPU_B_val, !mcsema_real_eip !14
  store i1 %175, i1* %FPU_B, align 1, !mcsema_real_eip !14
  %176 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !14
  store i1 %176, i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %177 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !14
  store i3 %177, i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %178 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !14
  store i1 %178, i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %179 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !14
  store i1 %179, i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %180 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !14
  store i1 %180, i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %181 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !14
  store i1 %181, i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %182 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !14
  store i1 %182, i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %183 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !14
  store i1 %183, i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %184 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !14
  store i1 %184, i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %185 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !14
  store i1 %185, i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %186 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !14
  store i1 %186, i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %187 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !14
  store i1 %187, i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %188 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !14
  store i1 %188, i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %189 = load i1, i1* %FPU_X_val, !mcsema_real_eip !14
  store i1 %189, i1* %FPU_X, align 1, !mcsema_real_eip !14
  %190 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !14
  store i2 %190, i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %191 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !14
  store i2 %191, i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %192 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !14
  store i1 %192, i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %193 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !14
  store i1 %193, i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %194 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !14
  store i1 %194, i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %195 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !14
  store i1 %195, i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %196 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !14
  store i1 %196, i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %197 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !14
  store i1 %197, i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %198 = load i64, i64* %53, align 4
  store i64 %198, i64* %52, align 4
  %199 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  store i16 %199, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %200 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  store i64 %200, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !14
  %201 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  store i16 %201, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %202 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  store i64 %202, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !14
  %203 = load i11, i11* %FPU_FOPCODE_val, !mcsema_real_eip !14
  store i11 %203, i11* %FPU_FOPCODE, align 1, !mcsema_real_eip !14
  %204 = load i128, i128* %XMM0_val, !mcsema_real_eip !14
  store i128 %204, i128* %XMM0, align 1, !mcsema_real_eip !14
  %205 = load i128, i128* %XMM1_val, !mcsema_real_eip !14
  store i128 %205, i128* %XMM1, align 1, !mcsema_real_eip !14
  %206 = load i128, i128* %XMM2_val, !mcsema_real_eip !14
  store i128 %206, i128* %XMM2, align 1, !mcsema_real_eip !14
  %207 = load i128, i128* %XMM3_val, !mcsema_real_eip !14
  store i128 %207, i128* %XMM3, align 1, !mcsema_real_eip !14
  %208 = load i128, i128* %XMM4_val, !mcsema_real_eip !14
  store i128 %208, i128* %XMM4, align 1, !mcsema_real_eip !14
  %209 = load i128, i128* %XMM5_val, !mcsema_real_eip !14
  store i128 %209, i128* %XMM5, align 1, !mcsema_real_eip !14
  %210 = load i128, i128* %XMM6_val, !mcsema_real_eip !14
  store i128 %210, i128* %XMM6, align 1, !mcsema_real_eip !14
  %211 = load i128, i128* %XMM7_val, !mcsema_real_eip !14
  store i128 %211, i128* %XMM7, align 1, !mcsema_real_eip !14
  %212 = load i128, i128* %XMM8_val, !mcsema_real_eip !14
  store i128 %212, i128* %XMM8, align 1, !mcsema_real_eip !14
  %213 = load i128, i128* %XMM9_val, !mcsema_real_eip !14
  store i128 %213, i128* %XMM9, align 1, !mcsema_real_eip !14
  %214 = load i128, i128* %XMM10_val, !mcsema_real_eip !14
  store i128 %214, i128* %XMM10, align 1, !mcsema_real_eip !14
  %215 = load i128, i128* %XMM11_val, !mcsema_real_eip !14
  store i128 %215, i128* %XMM11, align 1, !mcsema_real_eip !14
  %216 = load i128, i128* %XMM12_val, !mcsema_real_eip !14
  store i128 %216, i128* %XMM12, align 1, !mcsema_real_eip !14
  %217 = load i128, i128* %XMM13_val, !mcsema_real_eip !14
  store i128 %217, i128* %XMM13, align 1, !mcsema_real_eip !14
  %218 = load i128, i128* %XMM14_val, !mcsema_real_eip !14
  store i128 %218, i128* %XMM14, align 1, !mcsema_real_eip !14
  %219 = load i128, i128* %XMM15_val, !mcsema_real_eip !14
  store i128 %219, i128* %XMM15, align 1, !mcsema_real_eip !14
  %220 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !14
  store i64 %220, i64* %STACK_BASE, align 1, !mcsema_real_eip !14
  %221 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  store i64 %221, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 25}
!8 = !{i64 27}
!9 = !{i64 32}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
