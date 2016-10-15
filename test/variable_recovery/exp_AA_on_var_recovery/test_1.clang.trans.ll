; ModuleID = '/home/sdasgup3/Github/binary-decompilation/test/test_1/Output/test_1.clang.ll'
source_filename = "Output/test_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@_debug_parent_stack_ = internal constant [28 x i8] c"Accessing Parent Stack [0]\0A\00"
@_debug_parent_stack_.2 = internal constant [28 x i8] c"Accessing Parent Stack [1]\0A\00"
@_debug_parent_stack_.3 = internal constant [28 x i8] c"Accessing Parent Stack [2]\0A\00"
@_debug_parent_stack_.4 = internal constant [28 x i8] c"Accessing Parent Stack [3]\0A\00"
@_debug_parent_stack_.5 = internal constant [28 x i8] c"Accessing Parent Stack [4]\0A\00"
@_debug_parent_stack_.6 = internal constant [28 x i8] c"Accessing Parent Stack [5]\0A\00"
@_debug_parent_stack_.7 = internal constant [28 x i8] c"Accessing Parent Stack [6]\0A\00"
@_debug_parent_stack_.8 = internal constant [28 x i8] c"Accessing Parent Stack [7]\0A\00"
@_debug_parent_stack_.9 = internal constant [28 x i8] c"Accessing Parent Stack [8]\0A\00"
@_debug_parent_stack_.10 = internal constant [28 x i8] c"Accessing Parent Stack [9]\0A\00"
@_debug_parent_stack_.11 = internal constant [29 x i8] c"Accessing Parent Stack [10]\0A\00"
@_debug_parent_stack_.12 = internal constant [29 x i8] c"Accessing Parent Stack [11]\0A\00"

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_70(%struct.regs*) #0 {
entry:
  %_RSP_ptr_ = alloca i8*, i64 32
  %_RBP_ptr_ = alloca i8*, i64 32
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
  %_new_load_ = load i8*, i8** %_RBP_ptr_
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %_new_load_1 = load i8*, i8** %_RSP_ptr_
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_new_load_1, i64 -8
  %79 = add i64 %78, -8
  %_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %_new_bt_, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %_new_gep_2 = getelementptr i8, i8* %_new_load_1, i64 -24
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
  store volatile i8* %_new_gep_2, i8** %_RSP_ptr_
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i64 10, i64* %RDI_val, !mcsema_real_eip !5
  store i64 20, i64* %RSI_val, !mcsema_real_eip !6
  %_new_load_3 = load i8*, i8** %_RBP_ptr_
  %94 = load i64, i64* %RBP_val, !mcsema_real_eip !7
  %_new_gep_4 = getelementptr i8, i8* %_new_load_3, i64 -4
  %95 = add i64 %94, -4, !mcsema_real_eip !7
  %_new_bt_5 = bitcast i8* %_new_gep_4 to i64*
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !7
  %97 = bitcast i64* %_new_bt_5 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !7
  %_new_load_6 = load i8*, i8** %_RSP_ptr_
  %98 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  %_new_gep_7 = getelementptr i8, i8* %_new_load_6, i64 -8
  %99 = add i64 %98, -8
  %_new_bt_8 = bitcast i8* %_new_gep_7 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %_new_bt_8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_7, i8** %_RSP_ptr_
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
  %_new_load_9 = load i8*, i8** %_RSP_ptr_
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !8
  store i64 %107, i64* %RSP, !mcsema_real_eip !8
  %_new_load_10 = load i8*, i8** %_RBP_ptr_
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
  %_new_load_from_rbp_ = load i8*, i8** %_RBP_ptr_
  call void @sub_0.1(%struct.regs* %0, i8* %_local_stack_start_ptr_, i8* %_local_stack_end_ptr_, i8* %_new_load_from_rbp_)
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
  %_new_load_11 = load i8*, i8** %_RBP_ptr_
  %241 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %_new_gep_12 = getelementptr i8, i8* %_new_load_11, i64 -8
  %242 = add i64 %241, -8, !mcsema_real_eip !9
  %_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !9
  %244 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  %245 = trunc i64 %244 to i32, !mcsema_real_eip !9
  %246 = bitcast i64* %_new_bt_13 to i32*
  store i32 %245, i32* %246, !mcsema_real_eip !9
  %_new_load_14 = load i8*, i8** %_RBP_ptr_
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !10
  %_new_gep_15 = getelementptr i8, i8* %_new_load_14, i64 -8
  %248 = add i64 %247, -8, !mcsema_real_eip !10
  %_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !10
  %250 = bitcast i64* %_new_bt_16 to i32*
  %251 = load i32, i32* %250, !mcsema_real_eip !10
  %252 = zext i32 %251 to i64, !mcsema_real_eip !10
  store i64 %252, i64* %RAX_val, !mcsema_real_eip !10
  %_new_load_17 = load i8*, i8** %_RSP_ptr_
  %253 = load i64, i64* %RSP_val, !mcsema_real_eip !11
  %_new_gep_18 = getelementptr i8, i8* %_new_load_17, i64 16
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
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_
  store i64 %254, i64* %RSP_val, !mcsema_real_eip !11
  %_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %268 = inttoptr i64 %254 to i64*, !mcsema_real_eip !12
  %269 = load i64, i64* %_new_bt_19, !mcsema_real_eip !12
  %_new_int2ptr_ = inttoptr i64 %269 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %269, i64* %RBP_val, !mcsema_real_eip !12
  %270 = add i64 %254, 16, !mcsema_real_eip !13
  %_new_int2ptr_20 = inttoptr i64 %270 to i8*
  store volatile i8* %_new_int2ptr_20, i8** %_RSP_ptr_
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
  %_new_load_21 = load i8*, i8** %_RSP_ptr_
  %277 = load i64, i64* %RSP_val, !mcsema_real_eip !13
  store i64 %277, i64* %RSP, !mcsema_real_eip !13
  %_new_load_22 = load i8*, i8** %_RBP_ptr_
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
  %_RSP_ptr_ = alloca i8*, i64 28
  %_RBP_ptr_ = alloca i8*, i64 28
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !14
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
  %_new_load_ = load i8*, i8** %_RBP_ptr_
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_load_1 = load i8*, i8** %_RSP_ptr_
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_new_gep_ = getelementptr i8, i8* %_new_load_1, i64 -8
  %79 = add i64 %78, -8
  %_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !14
  store i64 %77, i64* %_new_bt_, !mcsema_real_eip !14
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !14
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_2 = getelementptr i8, i8* %_new_load_1, i64 -12
  %81 = add i64 %78, -12, !mcsema_real_eip !16
  %_new_bt_3 = bitcast i8* %_new_gep_2 to i64*
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %83 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !16
  %85 = bitcast i64* %_new_bt_3 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !16
  %_new_load_4 = load i8*, i8** %_RBP_ptr_
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_5 = getelementptr i8, i8* %_new_load_4, i64 -8
  %87 = add i64 %86, -8, !mcsema_real_eip !17
  %_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !17
  %89 = load i64, i64* %RSI_val, !mcsema_real_eip !17
  %90 = trunc i64 %89 to i32, !mcsema_real_eip !17
  %91 = bitcast i64* %_new_bt_6 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !17
  %_new_load_7 = load i8*, i8** %_RBP_ptr_
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_8 = getelementptr i8, i8* %_new_load_7, i64 -4
  %93 = add i64 %92, -4, !mcsema_real_eip !18
  %_new_bt_9 = bitcast i8* %_new_gep_8 to i64*
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !18
  %95 = bitcast i64* %_new_bt_9 to i32*
  %96 = load i32, i32* %95, !mcsema_real_eip !18
  %97 = zext i32 %96 to i64, !mcsema_real_eip !18
  store i64 %97, i64* %RSI_val, !mcsema_real_eip !18
  %_new_load_10 = load i8*, i8** %_RBP_ptr_
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_11 = getelementptr i8, i8* %_new_load_10, i64 -8
  %99 = add i64 %98, -8, !mcsema_real_eip !19
  %_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !19
  %101 = bitcast i64* %_new_bt_12 to i32*
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
  %_new_load_13 = load i8*, i8** %_RBP_ptr_
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_14 = getelementptr i8, i8* %_new_load_13, i64 -12
  %121 = add i64 %120, -12, !mcsema_real_eip !20
  %_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !20
  %123 = bitcast i64* %_new_bt_15 to i32*
  store i32 %103, i32* %123, !mcsema_real_eip !20
  %_new_load_16 = load i8*, i8** %_RBP_ptr_
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_17 = getelementptr i8, i8* %_new_load_16, i64 -4
  %125 = add i64 %124, -4, !mcsema_real_eip !21
  %_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !21
  %127 = bitcast i64* %_new_bt_18 to i32*
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
  br i1 %134, label %block_0x5e, label %block_0x1d.preheader, !mcsema_real_eip !22

block_0x1d.preheader:                             ; preds = %entry
  br label %block_0x1d

block_0x5e.loopexit:                              ; preds = %block_0x13
  br label %block_0x5e

block_0x5e:                                       ; preds = %block_0x5e.loopexit, %entry
  %_new_load_19 = load i8*, i8** %_RBP_ptr_
  %135 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_20 = getelementptr i8, i8* %_new_load_19, i64 -16
  %136 = add i64 %135, -16, !mcsema_real_eip !23
  %_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !23
  %138 = bitcast i64* %_new_bt_21 to i32*
  %139 = load i32, i32* %138, !mcsema_real_eip !23
  %140 = zext i32 %139 to i64, !mcsema_real_eip !23
  store i64 %140, i64* %RAX_val, !mcsema_real_eip !23
  %_new_load_22 = load i8*, i8** %_RSP_ptr_
  %141 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %_new_bt_23 = bitcast i8* %_new_load_22 to i64*
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !24
  %143 = load i64, i64* %_new_bt_23, !mcsema_real_eip !24
  %_new_int2ptr_ = inttoptr i64 %143 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %143, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_24 = getelementptr i8, i8* %_new_load_22, i64 16
  %144 = add i64 %141, 16, !mcsema_real_eip !25
  store volatile i8* %_new_gep_24, i8** %_RSP_ptr_
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
  %_new_load_25 = load i8*, i8** %_RSP_ptr_
  %151 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %151, i64* %RSP, !mcsema_real_eip !25
  %_new_load_26 = load i8*, i8** %_RBP_ptr_
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

block_0x1d:                                       ; preds = %block_0x13, %block_0x1d.preheader
  store i64 2, i64* %RAX_val, !mcsema_real_eip !26
  %_new_load_27 = load i8*, i8** %_RBP_ptr_
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_28 = getelementptr i8, i8* %_new_load_27, i64 -4
  %216 = add i64 %215, -4, !mcsema_real_eip !27
  %_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !27
  %218 = bitcast i64* %_new_bt_29 to i32*
  %219 = load i32, i32* %218, !mcsema_real_eip !27
  %220 = zext i32 %219 to i64, !mcsema_real_eip !27
  store i64 %220, i64* %RCX_val, !mcsema_real_eip !27
  %_new_load_30 = load i8*, i8** %_RBP_ptr_
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_31 = getelementptr i8, i8* %_new_load_30, i64 -20
  %222 = add i64 %221, -20, !mcsema_real_eip !28
  %_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !28
  %224 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  %225 = trunc i64 %224 to i32, !mcsema_real_eip !28
  %226 = bitcast i64* %_new_bt_32 to i32*
  store i32 %225, i32* %226, !mcsema_real_eip !28
  %227 = load i64, i64* %RCX_val, !mcsema_real_eip !29
  %228 = and i64 %227, 4294967295
  store i64 %228, i64* %RAX_val, !mcsema_real_eip !29
  %229 = shl i64 %227, 32
  %sext = ashr i64 %229, 63
  %230 = and i64 %sext, 4294967295
  store i64 %230, i64* %RDX_val, !mcsema_real_eip !30
  %_new_load_33 = load i8*, i8** %_RBP_ptr_
  %231 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_34 = getelementptr i8, i8* %_new_load_33, i64 -20
  %232 = add i64 %231, -20, !mcsema_real_eip !31
  %_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !31
  %234 = bitcast i64* %_new_bt_35 to i32*
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
  %_new_load_36 = load i8*, i8** %_RBP_ptr_
  %254 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_37 = getelementptr i8, i8* %_new_load_36, i64 -12
  %255 = add i64 %254, -12, !mcsema_real_eip !34
  %_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !34
  %257 = bitcast i64* %_new_bt_38 to i32*
  %258 = load i32, i32* %257, !mcsema_real_eip !34
  %259 = zext i32 %258 to i64, !mcsema_real_eip !34
  store i64 %259, i64* %RAX_val, !mcsema_real_eip !34
  br i1 %252, label %block_0x39, label %block_0x47, !mcsema_real_eip !35

block_0x47:                                       ; preds = %block_0x1d
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
  %_new_load_39 = load i8*, i8** %_RBP_ptr_
  %274 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_40 = getelementptr i8, i8* %_new_load_39, i64 -12
  %275 = add i64 %274, -12, !mcsema_real_eip !37
  %_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !37
  %277 = bitcast i64* %_new_bt_41 to i32*
  store i32 %260, i32* %277, !mcsema_real_eip !37
  %_new_load_42 = load i8*, i8** %_RBP_ptr_
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_43 = getelementptr i8, i8* %_new_load_42, i64 -4
  %279 = add i64 %278, -4, !mcsema_real_eip !38
  %_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !38
  %281 = bitcast i64* %_new_bt_44 to i32*
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
  %_new_load_45 = load i8*, i8** %_RBP_ptr_
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_46 = getelementptr i8, i8* %_new_load_45, i64 -4
  %298 = add i64 %297, -4, !mcsema_real_eip !40
  %_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !40
  %300 = bitcast i64* %_new_bt_47 to i32*
  store i32 %283, i32* %300, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x39:                                       ; preds = %block_0x1d
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
  %_new_load_48 = load i8*, i8** %_RBP_ptr_
  %316 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_49 = getelementptr i8, i8* %_new_load_48, i64 -16
  %317 = add i64 %316, -16, !mcsema_real_eip !43
  %_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !43
  %319 = bitcast i64* %_new_bt_50 to i32*
  store i32 %301, i32* %319, !mcsema_real_eip !43
  %_new_load_51 = load i8*, i8** %_RBP_ptr_
  %320 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_52 = getelementptr i8, i8* %_new_load_51, i64 -4
  %321 = add i64 %320, -4, !mcsema_real_eip !38
  %_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !38
  %323 = bitcast i64* %_new_bt_53 to i32*
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
  %_new_load_54 = load i8*, i8** %_RBP_ptr_
  %339 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_55 = getelementptr i8, i8* %_new_load_54, i64 -4
  %340 = add i64 %339, -4, !mcsema_real_eip !40
  %_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !40
  %342 = bitcast i64* %_new_bt_56 to i32*
  store i32 %325, i32* %342, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x13:                                       ; preds = %block_0x39, %block_0x47
  %_new_load_57 = load i8*, i8** %_RBP_ptr_
  %343 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_58 = getelementptr i8, i8* %_new_load_57, i64 -4
  %344 = add i64 %343, -4, !mcsema_real_eip !21
  %_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %345 = inttoptr i64 %344 to i64*, !mcsema_real_eip !21
  %346 = bitcast i64* %_new_bt_59 to i32*
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
  br i1 %353, label %block_0x5e.loopexit, label %block_0x1d, !mcsema_real_eip !22
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: nounwind
define void @mcsema_main(%struct.regs*) #0 {
driverBlockRaw:
  %_RSP_ptr_ = alloca i8*, i64 0
  %_RBP_ptr_ = alloca i8*, i64 0
  %_local_stack_start_ptr_ = alloca i8, i64 0
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 0
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %_RSP_ptr_ = alloca i8*, i64 28
  %_RBP_ptr_ = alloca i8*, i64 28
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !14
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
  %_ptr_to_int_ = ptrtoint i64* %52 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_ = bitcast i8* %_local_stack_end_ptr_ to i64*
  %_parent_end_bt_ = bitcast i8* %_parent_stack_end_ptr_ to i64*
  %_parent_start_bt_ = bitcast i8* %_parent_stack_start_ptr_ to i64*
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i64, i64* %_parent_start_bt_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i64* %52, %_local_end_bt_
  %_cond2_1 = icmp ugt i64* %52, %_parent_end_bt_
  %_cond2_2 = icmp ult i64* %52, %_parent_start_bt_
  %_cond2_ = or i1 %_cond2_1, %_cond2_2
  %_cond4_ = icmp ule i64* %_pot_address_in_parent_stack_, %_parent_end_bt_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %54, label %56

; <label>:54:                                     ; preds = %entry
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_, i32 0, i32 0))
  %_address_in_parent_stack_ = getelementptr i64, i64* %_parent_start_bt_, i64 %_offset_above_rbp_
  br label %56

; <label>:56:                                     ; preds = %entry, %54
  %57 = phi i64* [ %52, %entry ], [ %_address_in_parent_stack_, %54 ]
  %_new_load_60 = load i64, i64* %57
  store i64 %_new_load_60, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %58 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  store i16 %58, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %59 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !14
  store i64 %59, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %60 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  store i16 %60, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %61 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !14
  store i64 %61, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %62 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %63 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %64 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %65 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %66 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %67 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !14
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %68 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !14
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %69 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !14
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %70 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !14
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %71 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !14
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %72 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !14
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %73 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !14
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %74 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !14
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %75 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !14
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %76 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !14
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %77 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !14
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %78 = load i64, i64* %STACK_BASE, !mcsema_real_eip !14
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !14
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !14
  %79 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !14
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !14
  %_new_load_ = load i8*, i8** %_RBP_ptr_
  %80 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %_new_load_1 = load i8*, i8** %_RSP_ptr_
  %81 = load i64, i64* %RSP_val, !mcsema_real_eip !14
  %_new_gep_ = getelementptr i8, i8* %_new_load_1, i64 -8
  %82 = add i64 %81, -8
  %_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !14
  store i64 %80, i64* %_new_bt_, !mcsema_real_eip !14
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !14
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !15
  %_new_gep_2 = getelementptr i8, i8* %_new_load_1, i64 -12
  %84 = add i64 %81, -12, !mcsema_real_eip !16
  %_new_bt_3 = bitcast i8* %_new_gep_2 to i64*
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !16
  %86 = load i64, i64* %RDI_val, !mcsema_real_eip !16
  %87 = trunc i64 %86 to i32, !mcsema_real_eip !16
  %88 = bitcast i64* %_new_bt_3 to i32*
  store i32 %87, i32* %88, !mcsema_real_eip !16
  %_new_load_4 = load i8*, i8** %_RBP_ptr_
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %_new_gep_5 = getelementptr i8, i8* %_new_load_4, i64 -8
  %90 = add i64 %89, -8, !mcsema_real_eip !17
  %_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !17
  %92 = load i64, i64* %RSI_val, !mcsema_real_eip !17
  %93 = trunc i64 %92 to i32, !mcsema_real_eip !17
  %94 = bitcast i64* %_new_bt_6 to i32*
  store i32 %93, i32* %94, !mcsema_real_eip !17
  %_new_load_7 = load i8*, i8** %_RBP_ptr_
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !18
  %_new_gep_8 = getelementptr i8, i8* %_new_load_7, i64 -4
  %96 = add i64 %95, -4, !mcsema_real_eip !18
  %_new_bt_9 = bitcast i8* %_new_gep_8 to i64*
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !18
  %98 = bitcast i64* %_new_bt_9 to i32*
  %_ptr_to_int_61 = ptrtoint i32* %98 to i64
  %_local_end_to_int_62 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_63 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_64 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_65 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_66 = sub i64 %_ptr_to_int_61, %_local_end_to_int_62
  %_pot_address_in_parent_stack_67 = getelementptr i32, i32* %_parent_start_bt_65, i64 %_offset_above_rbp_66
  %_cond1_68 = icmp ugt i32* %98, %_local_end_bt_63
  %_cond2_169 = icmp ugt i32* %98, %_parent_end_bt_64
  %_cond2_270 = icmp ult i32* %98, %_parent_start_bt_65
  %_cond2_71 = or i1 %_cond2_169, %_cond2_270
  %_cond4_72 = icmp ule i32* %_pot_address_in_parent_stack_67, %_parent_end_bt_64
  %_cond1_n_cond2_73 = and i1 %_cond1_68, %_cond2_71
  %_cond1_n_cond2_cond3_74 = and i1 %_cond1_n_cond2_73, %_cond4_72
  br i1 %_cond1_n_cond2_cond3_74, label %99, label %101

; <label>:99:                                     ; preds = %56
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.2, i32 0, i32 0))
  %_address_in_parent_stack_75 = getelementptr i32, i32* %_parent_start_bt_65, i64 %_offset_above_rbp_66
  br label %101

; <label>:101:                                    ; preds = %56, %99
  %102 = phi i32* [ %98, %56 ], [ %_address_in_parent_stack_75, %99 ]
  %_new_load_76 = load i32, i32* %102
  %103 = zext i32 %_new_load_76 to i64, !mcsema_real_eip !18
  store i64 %103, i64* %RSI_val, !mcsema_real_eip !18
  %_new_load_10 = load i8*, i8** %_RBP_ptr_
  %104 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %_new_gep_11 = getelementptr i8, i8* %_new_load_10, i64 -8
  %105 = add i64 %104, -8, !mcsema_real_eip !19
  %_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !19
  %107 = bitcast i64* %_new_bt_12 to i32*
  %_ptr_to_int_77 = ptrtoint i32* %107 to i64
  %_local_end_to_int_78 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_79 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_80 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_81 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_82 = sub i64 %_ptr_to_int_77, %_local_end_to_int_78
  %_pot_address_in_parent_stack_83 = getelementptr i32, i32* %_parent_start_bt_81, i64 %_offset_above_rbp_82
  %_cond1_84 = icmp ugt i32* %107, %_local_end_bt_79
  %_cond2_185 = icmp ugt i32* %107, %_parent_end_bt_80
  %_cond2_286 = icmp ult i32* %107, %_parent_start_bt_81
  %_cond2_87 = or i1 %_cond2_185, %_cond2_286
  %_cond4_88 = icmp ule i32* %_pot_address_in_parent_stack_83, %_parent_end_bt_80
  %_cond1_n_cond2_89 = and i1 %_cond1_84, %_cond2_87
  %_cond1_n_cond2_cond3_90 = and i1 %_cond1_n_cond2_89, %_cond4_88
  br i1 %_cond1_n_cond2_cond3_90, label %108, label %110

; <label>:108:                                    ; preds = %101
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.3, i32 0, i32 0))
  %_address_in_parent_stack_91 = getelementptr i32, i32* %_parent_start_bt_81, i64 %_offset_above_rbp_82
  br label %110

; <label>:110:                                    ; preds = %101, %108
  %111 = phi i32* [ %107, %101 ], [ %_address_in_parent_stack_91, %108 ]
  %_new_load_92 = load i32, i32* %111
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_76, i32 %_new_load_92)
  %112 = extractvalue { i32, i1 } %uadd, 0
  %113 = xor i32 %112, %_new_load_92, !mcsema_real_eip !19
  %114 = xor i32 %113, %_new_load_76, !mcsema_real_eip !19
  %115 = and i32 %114, 16, !mcsema_real_eip !19
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !19
  store i1 %116, i1* %AF_val, !mcsema_real_eip !19
  %117 = icmp slt i32 %112, 0
  store i1 %117, i1* %SF_val, !mcsema_real_eip !19
  %118 = icmp eq i32 %112, 0, !mcsema_real_eip !19
  store i1 %118, i1* %ZF_val, !mcsema_real_eip !19
  %119 = xor i32 %_new_load_76, -2147483648, !mcsema_real_eip !19
  %120 = xor i32 %119, %_new_load_92, !mcsema_real_eip !19
  %121 = and i32 %113, %120, !mcsema_real_eip !19
  %122 = icmp slt i32 %121, 0
  store i1 %122, i1* %OF_val, !mcsema_real_eip !19
  %123 = trunc i32 %112 to i8, !mcsema_real_eip !19
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !19
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF_val, !mcsema_real_eip !19
  %127 = extractvalue { i32, i1 } %uadd, 1
  store i1 %127, i1* %CF_val, !mcsema_real_eip !19
  %128 = zext i32 %112 to i64, !mcsema_real_eip !19
  store i64 %128, i64* %RSI_val, !mcsema_real_eip !19
  %_new_load_13 = load i8*, i8** %_RBP_ptr_
  %129 = load i64, i64* %RBP_val, !mcsema_real_eip !20
  %_new_gep_14 = getelementptr i8, i8* %_new_load_13, i64 -12
  %130 = add i64 %129, -12, !mcsema_real_eip !20
  %_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !20
  %132 = bitcast i64* %_new_bt_15 to i32*
  store i32 %112, i32* %132, !mcsema_real_eip !20
  %_new_load_16 = load i8*, i8** %_RBP_ptr_
  %133 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_17 = getelementptr i8, i8* %_new_load_16, i64 -4
  %134 = add i64 %133, -4, !mcsema_real_eip !21
  %_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !21
  %136 = bitcast i64* %_new_bt_18 to i32*
  %_ptr_to_int_93 = ptrtoint i32* %136 to i64
  %_local_end_to_int_94 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_95 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_96 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_97 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_93, %_local_end_to_int_94
  %_pot_address_in_parent_stack_99 = getelementptr i32, i32* %_parent_start_bt_97, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i32* %136, %_local_end_bt_95
  %_cond2_1101 = icmp ugt i32* %136, %_parent_end_bt_96
  %_cond2_2102 = icmp ult i32* %136, %_parent_start_bt_97
  %_cond2_103 = or i1 %_cond2_1101, %_cond2_2102
  %_cond4_104 = icmp ule i32* %_pot_address_in_parent_stack_99, %_parent_end_bt_96
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %137, label %139

; <label>:137:                                    ; preds = %110
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.4, i32 0, i32 0))
  %_address_in_parent_stack_107 = getelementptr i32, i32* %_parent_start_bt_97, i64 %_offset_above_rbp_98
  br label %139

; <label>:139:                                    ; preds = %110, %137
  %140 = phi i32* [ %136, %110 ], [ %_address_in_parent_stack_107, %137 ]
  %_new_load_108 = load i32, i32* %140
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %141 = trunc i32 %_new_load_108 to i8, !mcsema_real_eip !21
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !21
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !21
  %145 = icmp eq i32 %_new_load_108, 0, !mcsema_real_eip !21
  store i1 %145, i1* %ZF_val, !mcsema_real_eip !21
  %146 = icmp slt i32 %_new_load_108, 0
  store i1 %146, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %146, label %block_0x5e, label %block_0x1d.preheader, !mcsema_real_eip !22

block_0x1d.preheader:                             ; preds = %139
  br label %block_0x1d

block_0x5e.loopexit:                              ; preds = %382
  br label %block_0x5e

block_0x5e:                                       ; preds = %block_0x5e.loopexit, %139
  %_new_load_19 = load i8*, i8** %_RBP_ptr_
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %_new_gep_20 = getelementptr i8, i8* %_new_load_19, i64 -16
  %148 = add i64 %147, -16, !mcsema_real_eip !23
  %_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !23
  %150 = bitcast i64* %_new_bt_21 to i32*
  %_ptr_to_int_109 = ptrtoint i32* %150 to i64
  %_local_end_to_int_110 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_111 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_112 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_113 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_114 = sub i64 %_ptr_to_int_109, %_local_end_to_int_110
  %_pot_address_in_parent_stack_115 = getelementptr i32, i32* %_parent_start_bt_113, i64 %_offset_above_rbp_114
  %_cond1_116 = icmp ugt i32* %150, %_local_end_bt_111
  %_cond2_1117 = icmp ugt i32* %150, %_parent_end_bt_112
  %_cond2_2118 = icmp ult i32* %150, %_parent_start_bt_113
  %_cond2_119 = or i1 %_cond2_1117, %_cond2_2118
  %_cond4_120 = icmp ule i32* %_pot_address_in_parent_stack_115, %_parent_end_bt_112
  %_cond1_n_cond2_121 = and i1 %_cond1_116, %_cond2_119
  %_cond1_n_cond2_cond3_122 = and i1 %_cond1_n_cond2_121, %_cond4_120
  br i1 %_cond1_n_cond2_cond3_122, label %151, label %153

; <label>:151:                                    ; preds = %block_0x5e
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.5, i32 0, i32 0))
  %_address_in_parent_stack_123 = getelementptr i32, i32* %_parent_start_bt_113, i64 %_offset_above_rbp_114
  br label %153

; <label>:153:                                    ; preds = %block_0x5e, %151
  %154 = phi i32* [ %150, %block_0x5e ], [ %_address_in_parent_stack_123, %151 ]
  %_new_load_124 = load i32, i32* %154
  %155 = zext i32 %_new_load_124 to i64, !mcsema_real_eip !23
  store i64 %155, i64* %RAX_val, !mcsema_real_eip !23
  %_new_load_22 = load i8*, i8** %_RSP_ptr_
  %156 = load i64, i64* %RSP_val, !mcsema_real_eip !24
  %_new_bt_23 = bitcast i8* %_new_load_22 to i64*
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !24
  %158 = load i64, i64* %_new_bt_23, !mcsema_real_eip !24
  %_new_int2ptr_ = inttoptr i64 %158 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %158, i64* %RBP_val, !mcsema_real_eip !24
  %_new_gep_24 = getelementptr i8, i8* %_new_load_22, i64 16
  %159 = add i64 %156, 16, !mcsema_real_eip !25
  store volatile i8* %_new_gep_24, i8** %_RSP_ptr_
  store i64 %159, i64* %RSP_val, !mcsema_real_eip !25
  %160 = load i64, i64* %RAX_val, !mcsema_real_eip !25
  store i64 %160, i64* %RAX, !mcsema_real_eip !25
  %161 = load i64, i64* %RBX_val, !mcsema_real_eip !25
  store i64 %161, i64* %RBX, !mcsema_real_eip !25
  %162 = load i64, i64* %RCX_val, !mcsema_real_eip !25
  store i64 %162, i64* %RCX, !mcsema_real_eip !25
  %163 = load i64, i64* %RDX_val, !mcsema_real_eip !25
  store i64 %163, i64* %RDX, !mcsema_real_eip !25
  %164 = load i64, i64* %RSI_val, !mcsema_real_eip !25
  store i64 %164, i64* %RSI, !mcsema_real_eip !25
  %165 = load i64, i64* %RDI_val, !mcsema_real_eip !25
  store i64 %165, i64* %RDI, !mcsema_real_eip !25
  %_new_load_25 = load i8*, i8** %_RSP_ptr_
  %166 = load i64, i64* %RSP_val, !mcsema_real_eip !25
  store i64 %166, i64* %RSP, !mcsema_real_eip !25
  %_new_load_26 = load i8*, i8** %_RBP_ptr_
  %167 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  store i64 %167, i64* %RBP, !mcsema_real_eip !25
  %168 = load i64, i64* %R8_val, !mcsema_real_eip !25
  store i64 %168, i64* %R8, !mcsema_real_eip !25
  %169 = load i64, i64* %R9_val, !mcsema_real_eip !25
  store i64 %169, i64* %R9, !mcsema_real_eip !25
  %170 = load i64, i64* %R10_val, !mcsema_real_eip !25
  store i64 %170, i64* %R10, !mcsema_real_eip !25
  %171 = load i64, i64* %R11_val, !mcsema_real_eip !25
  store i64 %171, i64* %R11, !mcsema_real_eip !25
  %172 = load i64, i64* %R12_val, !mcsema_real_eip !25
  store i64 %172, i64* %R12, !mcsema_real_eip !25
  %173 = load i64, i64* %R13_val, !mcsema_real_eip !25
  store i64 %173, i64* %R13, !mcsema_real_eip !25
  %174 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %174, i64* %R14, !mcsema_real_eip !25
  %175 = load i64, i64* %R15_val, !mcsema_real_eip !25
  store i64 %175, i64* %R15, !mcsema_real_eip !25
  %176 = load i64, i64* %RIP_val, !mcsema_real_eip !25
  store i64 %176, i64* %RIP, !mcsema_real_eip !25
  %177 = load i1, i1* %CF_val, !mcsema_real_eip !25
  store i1 %177, i1* %CF, align 1, !mcsema_real_eip !25
  %178 = load i1, i1* %PF_val, !mcsema_real_eip !25
  store i1 %178, i1* %PF, align 1, !mcsema_real_eip !25
  %179 = load i1, i1* %AF_val, !mcsema_real_eip !25
  store i1 %179, i1* %AF, align 1, !mcsema_real_eip !25
  %180 = load i1, i1* %ZF_val, !mcsema_real_eip !25
  store i1 %180, i1* %ZF, align 1, !mcsema_real_eip !25
  %181 = load i1, i1* %SF_val, !mcsema_real_eip !25
  store i1 %181, i1* %SF, align 1, !mcsema_real_eip !25
  %182 = load i1, i1* %OF_val, !mcsema_real_eip !25
  store i1 %182, i1* %OF, align 1, !mcsema_real_eip !25
  %183 = load i1, i1* %DF_val, !mcsema_real_eip !25
  store i1 %183, i1* %DF, align 1, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !25
  %184 = load i1, i1* %FPU_B_val, !mcsema_real_eip !25
  store i1 %184, i1* %FPU_B, align 1, !mcsema_real_eip !25
  %185 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !25
  store i1 %185, i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %186 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !25
  store i3 %186, i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %187 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !25
  store i1 %187, i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %188 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !25
  store i1 %188, i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %189 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !25
  store i1 %189, i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %190 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !25
  store i1 %190, i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %191 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !25
  store i1 %191, i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %192 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !25
  store i1 %192, i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %193 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !25
  store i1 %193, i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %194 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !25
  store i1 %194, i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %195 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !25
  store i1 %195, i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %196 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !25
  store i1 %196, i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %197 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !25
  store i1 %197, i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %198 = load i1, i1* %FPU_X_val, !mcsema_real_eip !25
  store i1 %198, i1* %FPU_X, align 1, !mcsema_real_eip !25
  %199 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !25
  store i2 %199, i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %200 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !25
  store i2 %200, i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %201 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !25
  store i1 %201, i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %202 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !25
  store i1 %202, i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %203 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !25
  store i1 %203, i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %204 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !25
  store i1 %204, i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %205 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !25
  store i1 %205, i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %206 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !25
  store i1 %206, i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %_ptr_to_int_125 = ptrtoint i64* %53 to i64
  %_local_end_to_int_126 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_127 = bitcast i8* %_local_stack_end_ptr_ to i64*
  %_parent_end_bt_128 = bitcast i8* %_parent_stack_end_ptr_ to i64*
  %_parent_start_bt_129 = bitcast i8* %_parent_stack_start_ptr_ to i64*
  %_offset_above_rbp_130 = sub i64 %_ptr_to_int_125, %_local_end_to_int_126
  %_pot_address_in_parent_stack_131 = getelementptr i64, i64* %_parent_start_bt_129, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ugt i64* %53, %_local_end_bt_127
  %_cond2_1133 = icmp ugt i64* %53, %_parent_end_bt_128
  %_cond2_2134 = icmp ult i64* %53, %_parent_start_bt_129
  %_cond2_135 = or i1 %_cond2_1133, %_cond2_2134
  %_cond4_136 = icmp ule i64* %_pot_address_in_parent_stack_131, %_parent_end_bt_128
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond1_n_cond2_137, %_cond4_136
  br i1 %_cond1_n_cond2_cond3_138, label %207, label %209

; <label>:207:                                    ; preds = %153
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.6, i32 0, i32 0))
  %_address_in_parent_stack_139 = getelementptr i64, i64* %_parent_start_bt_129, i64 %_offset_above_rbp_130
  br label %209

; <label>:209:                                    ; preds = %153, %207
  %210 = phi i64* [ %53, %153 ], [ %_address_in_parent_stack_139, %207 ]
  %_new_load_140 = load i64, i64* %210
  store i64 %_new_load_140, i64* %52, align 4
  %211 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !25
  store i16 %211, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %212 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !25
  store i64 %212, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !25
  %213 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !25
  store i16 %213, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %214 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !25
  store i64 %214, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !25
  %215 = load i128, i128* %XMM0_val, !mcsema_real_eip !25
  store i128 %215, i128* %XMM0, align 1, !mcsema_real_eip !25
  %216 = load i128, i128* %XMM1_val, !mcsema_real_eip !25
  store i128 %216, i128* %XMM1, align 1, !mcsema_real_eip !25
  %217 = load i128, i128* %XMM2_val, !mcsema_real_eip !25
  store i128 %217, i128* %XMM2, align 1, !mcsema_real_eip !25
  %218 = load i128, i128* %XMM3_val, !mcsema_real_eip !25
  store i128 %218, i128* %XMM3, align 1, !mcsema_real_eip !25
  %219 = load i128, i128* %XMM4_val, !mcsema_real_eip !25
  store i128 %219, i128* %XMM4, align 1, !mcsema_real_eip !25
  %220 = load i128, i128* %XMM5_val, !mcsema_real_eip !25
  store i128 %220, i128* %XMM5, align 1, !mcsema_real_eip !25
  %221 = load i128, i128* %XMM6_val, !mcsema_real_eip !25
  store i128 %221, i128* %XMM6, align 1, !mcsema_real_eip !25
  %222 = load i128, i128* %XMM7_val, !mcsema_real_eip !25
  store i128 %222, i128* %XMM7, align 1, !mcsema_real_eip !25
  %223 = load i128, i128* %XMM8_val, !mcsema_real_eip !25
  store i128 %223, i128* %XMM8, align 1, !mcsema_real_eip !25
  %224 = load i128, i128* %XMM9_val, !mcsema_real_eip !25
  store i128 %224, i128* %XMM9, align 1, !mcsema_real_eip !25
  %225 = load i128, i128* %XMM10_val, !mcsema_real_eip !25
  store i128 %225, i128* %XMM10, align 1, !mcsema_real_eip !25
  %226 = load i128, i128* %XMM11_val, !mcsema_real_eip !25
  store i128 %226, i128* %XMM11, align 1, !mcsema_real_eip !25
  %227 = load i128, i128* %XMM12_val, !mcsema_real_eip !25
  store i128 %227, i128* %XMM12, align 1, !mcsema_real_eip !25
  %228 = load i128, i128* %XMM13_val, !mcsema_real_eip !25
  store i128 %228, i128* %XMM13, align 1, !mcsema_real_eip !25
  %229 = load i128, i128* %XMM14_val, !mcsema_real_eip !25
  store i128 %229, i128* %XMM14, align 1, !mcsema_real_eip !25
  %230 = load i128, i128* %XMM15_val, !mcsema_real_eip !25
  store i128 %230, i128* %XMM15, align 1, !mcsema_real_eip !25
  %231 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !25
  store i64 %231, i64* %STACK_BASE, align 1, !mcsema_real_eip !25
  %232 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !25
  store i64 %232, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25

block_0x1d:                                       ; preds = %382, %block_0x1d.preheader
  store i64 2, i64* %RAX_val, !mcsema_real_eip !26
  %_new_load_27 = load i8*, i8** %_RBP_ptr_
  %233 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  %_new_gep_28 = getelementptr i8, i8* %_new_load_27, i64 -4
  %234 = add i64 %233, -4, !mcsema_real_eip !27
  %_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !27
  %236 = bitcast i64* %_new_bt_29 to i32*
  %_ptr_to_int_141 = ptrtoint i32* %236 to i64
  %_local_end_to_int_142 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_143 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_144 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_145 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_146 = sub i64 %_ptr_to_int_141, %_local_end_to_int_142
  %_pot_address_in_parent_stack_147 = getelementptr i32, i32* %_parent_start_bt_145, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i32* %236, %_local_end_bt_143
  %_cond2_1149 = icmp ugt i32* %236, %_parent_end_bt_144
  %_cond2_2150 = icmp ult i32* %236, %_parent_start_bt_145
  %_cond2_151 = or i1 %_cond2_1149, %_cond2_2150
  %_cond4_152 = icmp ule i32* %_pot_address_in_parent_stack_147, %_parent_end_bt_144
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %237, label %239

; <label>:237:                                    ; preds = %block_0x1d
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.7, i32 0, i32 0))
  %_address_in_parent_stack_155 = getelementptr i32, i32* %_parent_start_bt_145, i64 %_offset_above_rbp_146
  br label %239

; <label>:239:                                    ; preds = %block_0x1d, %237
  %240 = phi i32* [ %236, %block_0x1d ], [ %_address_in_parent_stack_155, %237 ]
  %_new_load_156 = load i32, i32* %240
  %241 = zext i32 %_new_load_156 to i64, !mcsema_real_eip !27
  store i64 %241, i64* %RCX_val, !mcsema_real_eip !27
  %_new_load_30 = load i8*, i8** %_RBP_ptr_
  %242 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %_new_gep_31 = getelementptr i8, i8* %_new_load_30, i64 -20
  %243 = add i64 %242, -20, !mcsema_real_eip !28
  %_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !28
  %245 = load i64, i64* %RAX_val, !mcsema_real_eip !28
  %246 = trunc i64 %245 to i32, !mcsema_real_eip !28
  %247 = bitcast i64* %_new_bt_32 to i32*
  store i32 %246, i32* %247, !mcsema_real_eip !28
  %248 = load i64, i64* %RCX_val, !mcsema_real_eip !29
  %249 = and i64 %248, 4294967295
  store i64 %249, i64* %RAX_val, !mcsema_real_eip !29
  %250 = shl i64 %248, 32
  %sext = ashr i64 %250, 63
  %251 = and i64 %sext, 4294967295
  store i64 %251, i64* %RDX_val, !mcsema_real_eip !30
  %_new_load_33 = load i8*, i8** %_RBP_ptr_
  %252 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %_new_gep_34 = getelementptr i8, i8* %_new_load_33, i64 -20
  %253 = add i64 %252, -20, !mcsema_real_eip !31
  %_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !31
  %255 = bitcast i64* %_new_bt_35 to i32*
  %_ptr_to_int_157 = ptrtoint i32* %255 to i64
  %_local_end_to_int_158 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_159 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_160 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_161 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_162 = sub i64 %_ptr_to_int_157, %_local_end_to_int_158
  %_pot_address_in_parent_stack_163 = getelementptr i32, i32* %_parent_start_bt_161, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i32* %255, %_local_end_bt_159
  %_cond2_1165 = icmp ugt i32* %255, %_parent_end_bt_160
  %_cond2_2166 = icmp ult i32* %255, %_parent_start_bt_161
  %_cond2_167 = or i1 %_cond2_1165, %_cond2_2166
  %_cond4_168 = icmp ule i32* %_pot_address_in_parent_stack_163, %_parent_end_bt_160
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  br i1 %_cond1_n_cond2_cond3_170, label %256, label %258

; <label>:256:                                    ; preds = %239
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.8, i32 0, i32 0))
  %_address_in_parent_stack_171 = getelementptr i32, i32* %_parent_start_bt_161, i64 %_offset_above_rbp_162
  br label %258

; <label>:258:                                    ; preds = %239, %256
  %259 = phi i32* [ %255, %239 ], [ %_address_in_parent_stack_171, %256 ]
  %_new_load_172 = load i32, i32* %259
  %260 = zext i32 %_new_load_172 to i64, !mcsema_real_eip !31
  store i64 %260, i64* %RCX_val, !mcsema_real_eip !31
  %261 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %262 = load i64, i64* %RDX_val, !mcsema_real_eip !32
  %263 = shl i64 %262, 32, !mcsema_real_eip !32
  %sext70 = shl i64 %261, 32
  %264 = ashr exact i64 %sext70, 32
  %265 = or i64 %263, %264, !mcsema_real_eip !32
  %266 = sext i32 %_new_load_172 to i64, !mcsema_real_eip !32
  %267 = sdiv i64 %265, %266, !mcsema_real_eip !32
  %268 = srem i64 %265, %266, !mcsema_real_eip !32
  %269 = and i64 %268, 4294967295
  store i64 %269, i64* %RDX_val, !mcsema_real_eip !32
  %270 = and i64 %267, 4294967295
  store i64 %270, i64* %RAX_val, !mcsema_real_eip !32
  %271 = trunc i64 %268 to i32, !mcsema_real_eip !33
  store i1 false, i1* %AF_val, !mcsema_real_eip !33
  %272 = trunc i64 %268 to i8
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !33
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF_val, !mcsema_real_eip !33
  %276 = icmp eq i32 %271, 0, !mcsema_real_eip !33
  store i1 %276, i1* %ZF_val, !mcsema_real_eip !33
  %277 = icmp slt i32 %271, 0
  store i1 %277, i1* %SF_val, !mcsema_real_eip !33
  store i1 false, i1* %CF_val, !mcsema_real_eip !33
  store i1 false, i1* %OF_val, !mcsema_real_eip !33
  %_new_load_36 = load i8*, i8** %_RBP_ptr_
  %278 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %_new_gep_37 = getelementptr i8, i8* %_new_load_36, i64 -12
  %279 = add i64 %278, -12, !mcsema_real_eip !34
  %_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !34
  %281 = bitcast i64* %_new_bt_38 to i32*
  %_ptr_to_int_173 = ptrtoint i32* %281 to i64
  %_local_end_to_int_174 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_175 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_176 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_177 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_173, %_local_end_to_int_174
  %_pot_address_in_parent_stack_179 = getelementptr i32, i32* %_parent_start_bt_177, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i32* %281, %_local_end_bt_175
  %_cond2_1181 = icmp ugt i32* %281, %_parent_end_bt_176
  %_cond2_2182 = icmp ult i32* %281, %_parent_start_bt_177
  %_cond2_183 = or i1 %_cond2_1181, %_cond2_2182
  %_cond4_184 = icmp ule i32* %_pot_address_in_parent_stack_179, %_parent_end_bt_176
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %282, label %284

; <label>:282:                                    ; preds = %258
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.9, i32 0, i32 0))
  %_address_in_parent_stack_187 = getelementptr i32, i32* %_parent_start_bt_177, i64 %_offset_above_rbp_178
  br label %284

; <label>:284:                                    ; preds = %258, %282
  %285 = phi i32* [ %281, %258 ], [ %_address_in_parent_stack_187, %282 ]
  %_new_load_188 = load i32, i32* %285
  %286 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !34
  store i64 %286, i64* %RAX_val, !mcsema_real_eip !34
  br i1 %276, label %block_0x39, label %block_0x47, !mcsema_real_eip !35

block_0x47:                                       ; preds = %284
  %287 = add i32 %_new_load_188, -10
  %288 = xor i32 %287, %_new_load_188, !mcsema_real_eip !36
  %289 = and i32 %288, 16, !mcsema_real_eip !36
  %290 = icmp ne i32 %289, 0, !mcsema_real_eip !36
  store i1 %290, i1* %AF_val, !mcsema_real_eip !36
  %291 = trunc i32 %287 to i8, !mcsema_real_eip !36
  %292 = tail call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !36
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF_val, !mcsema_real_eip !36
  %295 = icmp eq i32 %287, 0, !mcsema_real_eip !36
  store i1 %295, i1* %ZF_val, !mcsema_real_eip !36
  %296 = icmp slt i32 %287, 0
  store i1 %296, i1* %SF_val, !mcsema_real_eip !36
  %297 = icmp ult i32 %_new_load_188, 10, !mcsema_real_eip !36
  store i1 %297, i1* %CF_val, !mcsema_real_eip !36
  %298 = and i32 %288, %_new_load_188, !mcsema_real_eip !36
  %299 = icmp slt i32 %298, 0
  store i1 %299, i1* %OF_val, !mcsema_real_eip !36
  %300 = zext i32 %287 to i64, !mcsema_real_eip !36
  store i64 %300, i64* %RAX_val, !mcsema_real_eip !36
  %_new_load_39 = load i8*, i8** %_RBP_ptr_
  %301 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %_new_gep_40 = getelementptr i8, i8* %_new_load_39, i64 -12
  %302 = add i64 %301, -12, !mcsema_real_eip !37
  %_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !37
  %304 = bitcast i64* %_new_bt_41 to i32*
  store i32 %287, i32* %304, !mcsema_real_eip !37
  %_new_load_42 = load i8*, i8** %_RBP_ptr_
  %305 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_43 = getelementptr i8, i8* %_new_load_42, i64 -4
  %306 = add i64 %305, -4, !mcsema_real_eip !38
  %_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !38
  %308 = bitcast i64* %_new_bt_44 to i32*
  %_ptr_to_int_189 = ptrtoint i32* %308 to i64
  %_local_end_to_int_190 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_191 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_192 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_193 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_194 = sub i64 %_ptr_to_int_189, %_local_end_to_int_190
  %_pot_address_in_parent_stack_195 = getelementptr i32, i32* %_parent_start_bt_193, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i32* %308, %_local_end_bt_191
  %_cond2_1197 = icmp ugt i32* %308, %_parent_end_bt_192
  %_cond2_2198 = icmp ult i32* %308, %_parent_start_bt_193
  %_cond2_199 = or i1 %_cond2_1197, %_cond2_2198
  %_cond4_200 = icmp ule i32* %_pot_address_in_parent_stack_195, %_parent_end_bt_192
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %309, label %311

; <label>:309:                                    ; preds = %block_0x47
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_debug_parent_stack_.10, i32 0, i32 0))
  %_address_in_parent_stack_203 = getelementptr i32, i32* %_parent_start_bt_193, i64 %_offset_above_rbp_194
  br label %311

; <label>:311:                                    ; preds = %block_0x47, %309
  %312 = phi i32* [ %308, %block_0x47 ], [ %_address_in_parent_stack_203, %309 ]
  %_new_load_204 = load i32, i32* %312
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_204, i32 -1)
  %313 = extractvalue { i32, i1 } %uadd73, 0
  %314 = xor i32 %313, %_new_load_204, !mcsema_real_eip !39
  %315 = and i32 %314, 16
  %316 = icmp eq i32 %315, 0
  store i1 %316, i1* %AF_val, !mcsema_real_eip !39
  %317 = icmp slt i32 %313, 0
  store i1 %317, i1* %SF_val, !mcsema_real_eip !39
  %318 = icmp eq i32 %313, 0, !mcsema_real_eip !39
  store i1 %318, i1* %ZF_val, !mcsema_real_eip !39
  %319 = and i32 %314, %_new_load_204, !mcsema_real_eip !39
  %320 = icmp slt i32 %319, 0
  store i1 %320, i1* %OF_val, !mcsema_real_eip !39
  %321 = trunc i32 %313 to i8, !mcsema_real_eip !39
  %322 = tail call i8 @llvm.ctpop.i8(i8 %321), !mcsema_real_eip !39
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  store i1 %324, i1* %PF_val, !mcsema_real_eip !39
  %325 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %325, i1* %CF_val, !mcsema_real_eip !39
  %326 = zext i32 %313 to i64, !mcsema_real_eip !39
  store i64 %326, i64* %RAX_val, !mcsema_real_eip !39
  %_new_load_45 = load i8*, i8** %_RBP_ptr_
  %327 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_46 = getelementptr i8, i8* %_new_load_45, i64 -4
  %328 = add i64 %327, -4, !mcsema_real_eip !40
  %_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !40
  %330 = bitcast i64* %_new_bt_47 to i32*
  store i32 %313, i32* %330, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x39:                                       ; preds = %284
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_188, i32 10)
  %331 = extractvalue { i32, i1 } %uadd71, 0
  %332 = xor i32 %331, %_new_load_188, !mcsema_real_eip !42
  %333 = and i32 %332, 16, !mcsema_real_eip !42
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !42
  store i1 %334, i1* %AF_val, !mcsema_real_eip !42
  %335 = icmp slt i32 %331, 0
  store i1 %335, i1* %SF_val, !mcsema_real_eip !42
  %336 = icmp eq i32 %331, 0, !mcsema_real_eip !42
  store i1 %336, i1* %ZF_val, !mcsema_real_eip !42
  %337 = xor i32 %_new_load_188, -2147483648, !mcsema_real_eip !42
  %338 = and i32 %332, %337, !mcsema_real_eip !42
  %339 = icmp slt i32 %338, 0
  store i1 %339, i1* %OF_val, !mcsema_real_eip !42
  %340 = trunc i32 %331 to i8, !mcsema_real_eip !42
  %341 = tail call i8 @llvm.ctpop.i8(i8 %340), !mcsema_real_eip !42
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  store i1 %343, i1* %PF_val, !mcsema_real_eip !42
  %344 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %344, i1* %CF_val, !mcsema_real_eip !42
  %345 = zext i32 %331 to i64, !mcsema_real_eip !42
  store i64 %345, i64* %RAX_val, !mcsema_real_eip !42
  %_new_load_48 = load i8*, i8** %_RBP_ptr_
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %_new_gep_49 = getelementptr i8, i8* %_new_load_48, i64 -16
  %347 = add i64 %346, -16, !mcsema_real_eip !43
  %_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !43
  %349 = bitcast i64* %_new_bt_50 to i32*
  store i32 %331, i32* %349, !mcsema_real_eip !43
  %_new_load_51 = load i8*, i8** %_RBP_ptr_
  %350 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %_new_gep_52 = getelementptr i8, i8* %_new_load_51, i64 -4
  %351 = add i64 %350, -4, !mcsema_real_eip !38
  %_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !38
  %353 = bitcast i64* %_new_bt_53 to i32*
  %_ptr_to_int_205 = ptrtoint i32* %353 to i64
  %_local_end_to_int_206 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_207 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_208 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_209 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_205, %_local_end_to_int_206
  %_pot_address_in_parent_stack_211 = getelementptr i32, i32* %_parent_start_bt_209, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i32* %353, %_local_end_bt_207
  %_cond2_1213 = icmp ugt i32* %353, %_parent_end_bt_208
  %_cond2_2214 = icmp ult i32* %353, %_parent_start_bt_209
  %_cond2_215 = or i1 %_cond2_1213, %_cond2_2214
  %_cond4_216 = icmp ule i32* %_pot_address_in_parent_stack_211, %_parent_end_bt_208
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %354, label %356

; <label>:354:                                    ; preds = %block_0x39
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_debug_parent_stack_.11, i32 0, i32 0))
  %_address_in_parent_stack_219 = getelementptr i32, i32* %_parent_start_bt_209, i64 %_offset_above_rbp_210
  br label %356

; <label>:356:                                    ; preds = %block_0x39, %354
  %357 = phi i32* [ %353, %block_0x39 ], [ %_address_in_parent_stack_219, %354 ]
  %_new_load_220 = load i32, i32* %357
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_220, i32 -1)
  %358 = extractvalue { i32, i1 } %uadd72, 0
  %359 = xor i32 %358, %_new_load_220, !mcsema_real_eip !39
  %360 = and i32 %359, 16
  %361 = icmp eq i32 %360, 0
  store i1 %361, i1* %AF_val, !mcsema_real_eip !39
  %362 = icmp slt i32 %358, 0
  store i1 %362, i1* %SF_val, !mcsema_real_eip !39
  %363 = icmp eq i32 %358, 0, !mcsema_real_eip !39
  store i1 %363, i1* %ZF_val, !mcsema_real_eip !39
  %364 = and i32 %359, %_new_load_220, !mcsema_real_eip !39
  %365 = icmp slt i32 %364, 0
  store i1 %365, i1* %OF_val, !mcsema_real_eip !39
  %366 = trunc i32 %358 to i8, !mcsema_real_eip !39
  %367 = tail call i8 @llvm.ctpop.i8(i8 %366), !mcsema_real_eip !39
  %368 = and i8 %367, 1
  %369 = icmp eq i8 %368, 0
  store i1 %369, i1* %PF_val, !mcsema_real_eip !39
  %370 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %370, i1* %CF_val, !mcsema_real_eip !39
  %371 = zext i32 %358 to i64, !mcsema_real_eip !39
  store i64 %371, i64* %RAX_val, !mcsema_real_eip !39
  %_new_load_54 = load i8*, i8** %_RBP_ptr_
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %_new_gep_55 = getelementptr i8, i8* %_new_load_54, i64 -4
  %373 = add i64 %372, -4, !mcsema_real_eip !40
  %_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !40
  %375 = bitcast i64* %_new_bt_56 to i32*
  store i32 %358, i32* %375, !mcsema_real_eip !40
  br label %block_0x13, !mcsema_real_eip !41

block_0x13:                                       ; preds = %356, %311
  %_new_load_57 = load i8*, i8** %_RBP_ptr_
  %376 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %_new_gep_58 = getelementptr i8, i8* %_new_load_57, i64 -4
  %377 = add i64 %376, -4, !mcsema_real_eip !21
  %_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !21
  %379 = bitcast i64* %_new_bt_59 to i32*
  %_ptr_to_int_221 = ptrtoint i32* %379 to i64
  %_local_end_to_int_222 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_local_end_bt_223 = bitcast i8* %_local_stack_end_ptr_ to i32*
  %_parent_end_bt_224 = bitcast i8* %_parent_stack_end_ptr_ to i32*
  %_parent_start_bt_225 = bitcast i8* %_parent_stack_start_ptr_ to i32*
  %_offset_above_rbp_226 = sub i64 %_ptr_to_int_221, %_local_end_to_int_222
  %_pot_address_in_parent_stack_227 = getelementptr i32, i32* %_parent_start_bt_225, i64 %_offset_above_rbp_226
  %_cond1_228 = icmp ugt i32* %379, %_local_end_bt_223
  %_cond2_1229 = icmp ugt i32* %379, %_parent_end_bt_224
  %_cond2_2230 = icmp ult i32* %379, %_parent_start_bt_225
  %_cond2_231 = or i1 %_cond2_1229, %_cond2_2230
  %_cond4_232 = icmp ule i32* %_pot_address_in_parent_stack_227, %_parent_end_bt_224
  %_cond1_n_cond2_233 = and i1 %_cond1_228, %_cond2_231
  %_cond1_n_cond2_cond3_234 = and i1 %_cond1_n_cond2_233, %_cond4_232
  br i1 %_cond1_n_cond2_cond3_234, label %380, label %382

; <label>:380:                                    ; preds = %block_0x13
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_debug_parent_stack_.12, i32 0, i32 0))
  %_address_in_parent_stack_235 = getelementptr i32, i32* %_parent_start_bt_225, i64 %_offset_above_rbp_226
  br label %382

; <label>:382:                                    ; preds = %block_0x13, %380
  %383 = phi i32* [ %379, %block_0x13 ], [ %_address_in_parent_stack_235, %380 ]
  %_new_load_236 = load i32, i32* %383
  store i1 false, i1* %AF_val, !mcsema_real_eip !21
  %384 = trunc i32 %_new_load_236 to i8, !mcsema_real_eip !21
  %385 = tail call i8 @llvm.ctpop.i8(i8 %384), !mcsema_real_eip !21
  %386 = and i8 %385, 1
  %387 = icmp eq i8 %386, 0
  store i1 %387, i1* %PF_val, !mcsema_real_eip !21
  %388 = icmp eq i32 %_new_load_236, 0, !mcsema_real_eip !21
  store i1 %388, i1* %ZF_val, !mcsema_real_eip !21
  %389 = icmp slt i32 %_new_load_236, 0
  store i1 %389, i1* %SF_val, !mcsema_real_eip !21
  store i1 false, i1* %CF_val, !mcsema_real_eip !21
  store i1 false, i1* %OF_val, !mcsema_real_eip !21
  br i1 %389, label %block_0x5e.loopexit, label %block_0x1d, !mcsema_real_eip !22
}

declare i32 @printf(i8* noalias, ...)

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
!22 = !{i64 23, [7 x i8] c"\09jl\0965\00"}
!23 = !{i64 94, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!24 = !{i64 97, [11 x i8] c"\09popq\09%rbp\00"}
!25 = !{i64 98, [6 x i8] c"\09retq\00"}
!26 = !{i64 29, [15 x i8] c"\09movl\09$2, %eax\00"}
!27 = !{i64 34, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!28 = !{i64 37, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!29 = !{i64 40, [17 x i8] c"\09movl\09%ecx, %eax\00"}
!30 = !{i64 42, [6 x i8] c"\09cltd\00"}
!31 = !{i64 43, [22 x i8] c"\09movl\09-20(%rbp), %ecx\00"}
!32 = !{i64 46, [12 x i8] c"\09idivl\09%ecx\00"}
!33 = !{i64 48, [15 x i8] c"\09cmpl\09$0, %edx\00"}
!34 = !{i64 71, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!35 = !{i64 51, [8 x i8] c"\09jne\0914\00"}
!36 = !{i64 74, [16 x i8] c"\09subl\09$10, %eax\00"}
!37 = !{i64 77, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!38 = !{i64 80, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!39 = !{i64 83, [16 x i8] c"\09addl\09$-1, %eax\00"}
!40 = !{i64 86, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!41 = !{i64 89, [9 x i8] c"\09jmp\09-75\00"}
!42 = !{i64 60, [16 x i8] c"\09addl\09$10, %eax\00"}
!43 = !{i64 63, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
