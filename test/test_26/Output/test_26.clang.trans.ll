; ModuleID = 'Output/test_26.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@_debug_parent_stack_ = internal constant [28 x i8] c"Accessing Parent Stack [0]\0A\00"
@_debug_parent_stack_2 = internal constant [28 x i8] c"Accessing Parent Stack [1]\0A\00"
@_debug_parent_stack_3 = internal constant [28 x i8] c"Accessing Parent Stack [2]\0A\00"
@_debug_parent_stack_4 = internal constant [28 x i8] c"Accessing Parent Stack [3]\0A\00"
@_debug_parent_stack_5 = internal constant [28 x i8] c"Accessing Parent Stack [4]\0A\00"
@_debug_parent_stack_6 = internal constant [28 x i8] c"Accessing Parent Stack [5]\0A\00"
@_debug_parent_stack_7 = internal constant [28 x i8] c"Accessing Parent Stack [6]\0A\00"
@_debug_parent_stack_8 = internal constant [28 x i8] c"Accessing Parent Stack [7]\0A\00"
@_debug_parent_stack_9 = internal constant [28 x i8] c"Accessing Parent Stack [8]\0A\00"
@_debug_parent_stack_10 = internal constant [28 x i8] c"Accessing Parent Stack [9]\0A\00"
@_debug_parent_stack_11 = internal constant [29 x i8] c"Accessing Parent Stack [10]\0A\00"
@_debug_parent_stack_12 = internal constant [29 x i8] c"Accessing Parent Stack [11]\0A\00"
@_debug_parent_stack_13 = internal constant [29 x i8] c"Accessing Parent Stack [12]\0A\00"
@_debug_parent_stack_14 = internal constant [29 x i8] c"Accessing Parent Stack [13]\0A\00"
@_debug_parent_stack_15 = internal constant [29 x i8] c"Accessing Parent Stack [14]\0A\00"
@_debug_parent_stack_16 = internal constant [29 x i8] c"Accessing Parent Stack [15]\0A\00"
@_debug_parent_stack_17 = internal constant [29 x i8] c"Accessing Parent Stack [16]\0A\00"
@_debug_parent_stack_18 = internal constant [29 x i8] c"Accessing Parent Stack [17]\0A\00"
@_debug_parent_stack_19 = internal constant [29 x i8] c"Accessing Parent Stack [18]\0A\00"
@_debug_parent_stack_20 = internal constant [29 x i8] c"Accessing Parent Stack [19]\0A\00"
@_debug_parent_stack_21 = internal constant [29 x i8] c"Accessing Parent Stack [20]\0A\00"
@_debug_parent_stack_22 = internal constant [29 x i8] c"Accessing Parent Stack [21]\0A\00"
@_debug_parent_stack_23 = internal constant [29 x i8] c"Accessing Parent Stack [22]\0A\00"
@_debug_parent_stack_24 = internal constant [29 x i8] c"Accessing Parent Stack [23]\0A\00"
@_debug_parent_stack_25 = internal constant [29 x i8] c"Accessing Parent Stack [24]\0A\00"
@_debug_parent_stack_26 = internal constant [29 x i8] c"Accessing Parent Stack [25]\0A\00"
@_debug_parent_stack_27 = internal constant [29 x i8] c"Accessing Parent Stack [26]\0A\00"
@_debug_parent_stack_28 = internal constant [29 x i8] c"Accessing Parent Stack [27]\0A\00"
@_debug_parent_stack_29 = internal constant [29 x i8] c"Accessing Parent Stack [28]\0A\00"
@_debug_parent_stack_30 = internal constant [29 x i8] c"Accessing Parent Stack [29]\0A\00"
@_debug_parent_stack_31 = internal constant [29 x i8] c"Accessing Parent Stack [30]\0A\00"
@_debug_parent_stack_32 = internal constant [29 x i8] c"Accessing Parent Stack [31]\0A\00"
@_debug_parent_stack_33 = internal constant [29 x i8] c"Accessing Parent Stack [32]\0A\00"
@_debug_parent_stack_34 = internal constant [29 x i8] c"Accessing Parent Stack [33]\0A\00"
@_debug_parent_stack_35 = internal constant [29 x i8] c"Accessing Parent Stack [34]\0A\00"
@_debug_parent_stack_36 = internal constant [29 x i8] c"Accessing Parent Stack [35]\0A\00"
@_debug_parent_stack_37 = internal constant [29 x i8] c"Accessing Parent Stack [36]\0A\00"
@_debug_parent_stack_38 = internal constant [29 x i8] c"Accessing Parent Stack [37]\0A\00"
@_debug_parent_stack_39 = internal constant [29 x i8] c"Accessing Parent Stack [38]\0A\00"
@_debug_parent_stack_40 = internal constant [29 x i8] c"Accessing Parent Stack [39]\0A\00"
@_debug_parent_stack_41 = internal constant [29 x i8] c"Accessing Parent Stack [40]\0A\00"
@_debug_parent_stack_42 = internal constant [29 x i8] c"Accessing Parent Stack [41]\0A\00"

define internal x86_64_sysvcc void @sub_110(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 144
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 144
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %1 = load i64* %RAX, !mcsema_real_eip !2
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX, !mcsema_real_eip !2
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX, !mcsema_real_eip !2
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %4 = load i64* %RDX, !mcsema_real_eip !2
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %5 = load i64* %RSI, !mcsema_real_eip !2
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI, !mcsema_real_eip !2
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP, !mcsema_real_eip !2
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP, !mcsema_real_eip !2
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8, !mcsema_real_eip !2
  store i64 %9, i64* %R8_val, !mcsema_real_eip !2
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9, !mcsema_real_eip !2
  store i64 %10, i64* %R9_val, !mcsema_real_eip !2
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10, !mcsema_real_eip !2
  store i64 %11, i64* %R10_val, !mcsema_real_eip !2
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11, !mcsema_real_eip !2
  store i64 %12, i64* %R11_val, !mcsema_real_eip !2
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12, !mcsema_real_eip !2
  store i64 %13, i64* %R12_val, !mcsema_real_eip !2
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13, !mcsema_real_eip !2
  store i64 %14, i64* %R13_val, !mcsema_real_eip !2
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14, !mcsema_real_eip !2
  store i64 %15, i64* %R14_val, !mcsema_real_eip !2
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15, !mcsema_real_eip !2
  store i64 %16, i64* %R15_val, !mcsema_real_eip !2
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP, !mcsema_real_eip !2
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %18 = load i1* %CF, align 1, !mcsema_real_eip !2
  store i1 %18, i1* %CF_val, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %19 = load i1* %PF, align 1, !mcsema_real_eip !2
  store i1 %19, i1* %PF_val, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %20 = load i1* %AF, align 1, !mcsema_real_eip !2
  store i1 %20, i1* %AF_val, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !2
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %22 = load i1* %SF, align 1, !mcsema_real_eip !2
  store i1 %22, i1* %SF_val, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %23 = load i1* %OF, align 1, !mcsema_real_eip !2
  store i1 %23, i1* %OF_val, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %24 = load i1* %DF, align 1, !mcsema_real_eip !2
  store i1 %24, i1* %DF_val, !mcsema_real_eip !2
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !2
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !2
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !2
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !2
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !2
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !2
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !2
  %77 = load i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -136
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
  %91 = icmp ult i64 %79, 128, !mcsema_real_eip !4
  store i1 %91, i1* %CF_val, !mcsema_real_eip !4
  %92 = and i64 %82, %79, !mcsema_real_eip !4
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %94 = load i64* %RBP_val, !mcsema_real_eip !5
  %95 = add i64 %94, -4, !mcsema_real_eip !5
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !5
  %97 = bitcast i64* %96 to i32*
  store i32 0, i32* %97, !mcsema_real_eip !5
  %98 = load i64* %RBP_val, !mcsema_real_eip !6
  %99 = add i64 %98, -16, !mcsema_real_eip !6
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !6
  store i64 42949672970, i64* %100, !mcsema_real_eip !6
  %101 = load i64* %RBP_val, !mcsema_real_eip !7
  %102 = add i64 %101, -8, !mcsema_real_eip !7
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !7
  %104 = bitcast i64* %103 to i32*
  store i32 10, i32* %104, !mcsema_real_eip !7
  store i64 24, i64* %RCX_val, !mcsema_real_eip !8
  store i64 24, i64* %RDI_val, !mcsema_real_eip !9
  %105 = tail call x86_64_sysvcc i64 @malloc(i64 24), !mcsema_real_eip !10
  store i64 %105, i64* %RAX_val, !mcsema_real_eip !10
  %106 = load i64* %RBP_val, !mcsema_real_eip !11
  %107 = add i64 %106, -24, !mcsema_real_eip !11
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !11
  store i64 %105, i64* %108, !mcsema_real_eip !11
  %109 = load i64* %RAX_val, !mcsema_real_eip !12
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !12
  %111 = bitcast i64* %110 to i32*
  store i32 5, i32* %111, !mcsema_real_eip !12
  %112 = load i64* %RBP_val, !mcsema_real_eip !13
  %113 = add i64 %112, -24, !mcsema_real_eip !13
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !13
  %115 = load i64* %114, !mcsema_real_eip !13
  store i64 %115, i64* %RAX_val, !mcsema_real_eip !13
  %116 = add i64 %115, 4, !mcsema_real_eip !14
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !14
  %118 = bitcast i64* %117 to i32*
  store i32 5, i32* %118, !mcsema_real_eip !14
  %119 = load i64* %RBP_val, !mcsema_real_eip !15
  %120 = add i64 %119, -24, !mcsema_real_eip !15
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !15
  %122 = load i64* %121, !mcsema_real_eip !15
  store i64 %122, i64* %RAX_val, !mcsema_real_eip !15
  %123 = add i64 %122, 8, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !16
  %125 = bitcast i64* %124 to i32*
  store i32 5, i32* %125, !mcsema_real_eip !16
  %126 = load i64* %RBP_val, !mcsema_real_eip !17
  %127 = add i64 %126, -24, !mcsema_real_eip !17
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !17
  %129 = load i64* %128, !mcsema_real_eip !17
  store i64 %129, i64* %RAX_val, !mcsema_real_eip !17
  %130 = add i64 %126, -8, !mcsema_real_eip !18
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !18
  %132 = bitcast i64* %131 to i32*
  %133 = load i32* %132, !mcsema_real_eip !18
  %134 = zext i32 %133 to i64, !mcsema_real_eip !18
  store i64 %134, i64* %RCX_val, !mcsema_real_eip !18
  %135 = load i64* %RBP_val, !mcsema_real_eip !19
  %136 = add i64 %135, -48, !mcsema_real_eip !19
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !19
  %138 = bitcast i64* %137 to i32*
  store i32 %133, i32* %138, !mcsema_real_eip !19
  %139 = load i64* %RBP_val, !mcsema_real_eip !20
  %140 = add i64 %139, -16, !mcsema_real_eip !20
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !20
  %142 = load i64* %141, !mcsema_real_eip !20
  store i64 %142, i64* %RDI_val, !mcsema_real_eip !20
  %143 = add i64 %139, -56, !mcsema_real_eip !21
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !21
  store i64 %142, i64* %144, !mcsema_real_eip !21
  %145 = load i64* %RBP_val, !mcsema_real_eip !22
  %146 = add i64 %145, -56, !mcsema_real_eip !22
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !22
  %148 = load i64* %147, !mcsema_real_eip !22
  store i64 %148, i64* %RDI_val, !mcsema_real_eip !22
  %149 = add i64 %145, -48, !mcsema_real_eip !23
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !23
  %151 = bitcast i64* %150 to i32*
  %152 = load i32* %151, !mcsema_real_eip !23
  %153 = zext i32 %152 to i64, !mcsema_real_eip !23
  store i64 %153, i64* %RSI_val, !mcsema_real_eip !23
  %154 = load i64* %RBP_val, !mcsema_real_eip !24
  %155 = add i64 %154, -8, !mcsema_real_eip !24
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !24
  %157 = bitcast i64* %156 to i32*
  %158 = load i32* %157, !mcsema_real_eip !24
  %159 = zext i32 %158 to i64, !mcsema_real_eip !24
  store i64 %159, i64* %RCX_val, !mcsema_real_eip !24
  %160 = load i64* %RSP_val, !mcsema_real_eip !25
  store i64 %160, i64* %RDX_val, !mcsema_real_eip !25
  %161 = add i64 %160, 16, !mcsema_real_eip !26
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !26
  %163 = bitcast i64* %162 to i32*
  store i32 %158, i32* %163, !mcsema_real_eip !26
  %164 = load i64* %RBP_val, !mcsema_real_eip !27
  %165 = add i64 %164, -16, !mcsema_real_eip !27
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !27
  %167 = load i64* %166, !mcsema_real_eip !27
  %168 = load i64* %RDX_val, !mcsema_real_eip !28
  %169 = add i64 %168, 8, !mcsema_real_eip !28
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !28
  store i64 %167, i64* %170, !mcsema_real_eip !28
  %171 = load i64* %RDX_val, !mcsema_real_eip !29
  %172 = add i64 %171, 32, !mcsema_real_eip !29
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !29
  %174 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %174, i64* %173, !mcsema_real_eip !29
  %175 = load i64* %RBP_val, !mcsema_real_eip !30
  %176 = add i64 %175, -16, !mcsema_real_eip !30
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !30
  %178 = ptrtoint i64* %177 to i64, !mcsema_real_eip !30
  store i64 %178, i64* %R8_val, !mcsema_real_eip !30
  %179 = load i64* %RDX_val, !mcsema_real_eip !31
  %180 = add i64 %179, 24, !mcsema_real_eip !31
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !31
  store i64 %178, i64* %181, !mcsema_real_eip !31
  %182 = load i64* %RDX_val, !mcsema_real_eip !32
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !32
  %184 = bitcast i64* %183 to i32*
  store i32 3, i32* %184, !mcsema_real_eip !32
  store i64 1, i64* %RCX_val, !mcsema_real_eip !33
  store i64 2, i64* %R9_val, !mcsema_real_eip !34
  %185 = load i64* %R8_val, !mcsema_real_eip !35
  store i64 %185, i64* %RDX_val, !mcsema_real_eip !35
  %186 = load i64* %RBP_val, !mcsema_real_eip !36
  %187 = add i64 %186, -76, !mcsema_real_eip !36
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !36
  %189 = load i64* %RCX_val, !mcsema_real_eip !36
  %190 = trunc i64 %189 to i32, !mcsema_real_eip !36
  %191 = bitcast i64* %188 to i32*
  store i32 %190, i32* %191, !mcsema_real_eip !36
  %192 = load i64* %RAX_val, !mcsema_real_eip !37
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !37
  %193 = load i64* %RBP_val, !mcsema_real_eip !38
  %194 = add i64 %193, -76, !mcsema_real_eip !38
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !38
  %196 = bitcast i64* %195 to i32*
  %197 = load i32* %196, !mcsema_real_eip !38
  %198 = zext i32 %197 to i64, !mcsema_real_eip !38
  store i64 %198, i64* %R8_val, !mcsema_real_eip !38
  %199 = load i64* %RSP_val, !mcsema_real_eip !39
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %201, !mcsema_real_eip !39
  store i64 %200, i64* %RSP_val, !mcsema_real_eip !39
  %202 = load i64* %RAX_val, !mcsema_real_eip !39
  store i64 %202, i64* %RAX, !mcsema_real_eip !39
  %203 = load i64* %RBX_val, !mcsema_real_eip !39
  store i64 %203, i64* %RBX, !mcsema_real_eip !39
  %204 = load i64* %RCX_val, !mcsema_real_eip !39
  store i64 %204, i64* %RCX, !mcsema_real_eip !39
  %205 = load i64* %RDX_val, !mcsema_real_eip !39
  store i64 %205, i64* %RDX, !mcsema_real_eip !39
  %206 = load i64* %RSI_val, !mcsema_real_eip !39
  store i64 %206, i64* %RSI, !mcsema_real_eip !39
  %207 = load i64* %RDI_val, !mcsema_real_eip !39
  store i64 %207, i64* %RDI, !mcsema_real_eip !39
  %208 = load i64* %RSP_val, !mcsema_real_eip !39
  store i64 %208, i64* %RSP, !mcsema_real_eip !39
  %209 = load i64* %RBP_val, !mcsema_real_eip !39
  store i64 %209, i64* %RBP, !mcsema_real_eip !39
  %210 = load i64* %R8_val, !mcsema_real_eip !39
  store i64 %210, i64* %R8, !mcsema_real_eip !39
  %211 = load i64* %R9_val, !mcsema_real_eip !39
  store i64 %211, i64* %R9, !mcsema_real_eip !39
  %212 = load i64* %R10_val, !mcsema_real_eip !39
  store i64 %212, i64* %R10, !mcsema_real_eip !39
  %213 = load i64* %R11_val, !mcsema_real_eip !39
  store i64 %213, i64* %R11, !mcsema_real_eip !39
  %214 = load i64* %R12_val, !mcsema_real_eip !39
  store i64 %214, i64* %R12, !mcsema_real_eip !39
  %215 = load i64* %R13_val, !mcsema_real_eip !39
  store i64 %215, i64* %R13, !mcsema_real_eip !39
  %216 = load i64* %R14_val, !mcsema_real_eip !39
  store i64 %216, i64* %R14, !mcsema_real_eip !39
  %217 = load i64* %R15_val, !mcsema_real_eip !39
  store i64 %217, i64* %R15, !mcsema_real_eip !39
  %218 = load i64* %RIP_val, !mcsema_real_eip !39
  store i64 %218, i64* %RIP, !mcsema_real_eip !39
  %219 = load i1* %CF_val, !mcsema_real_eip !39
  store i1 %219, i1* %CF, align 1, !mcsema_real_eip !39
  %220 = load i1* %PF_val, !mcsema_real_eip !39
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !39
  %221 = load i1* %AF_val, !mcsema_real_eip !39
  store i1 %221, i1* %AF, align 1, !mcsema_real_eip !39
  %222 = load i1* %ZF_val, !mcsema_real_eip !39
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !39
  %223 = load i1* %SF_val, !mcsema_real_eip !39
  store i1 %223, i1* %SF, align 1, !mcsema_real_eip !39
  %224 = load i1* %OF_val, !mcsema_real_eip !39
  store i1 %224, i1* %OF, align 1, !mcsema_real_eip !39
  %225 = load i1* %DF_val, !mcsema_real_eip !39
  store i1 %225, i1* %DF, align 1, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !39
  %226 = load i1* %FPU_B_val, !mcsema_real_eip !39
  store i1 %226, i1* %FPU_B, align 1, !mcsema_real_eip !39
  %227 = load i1* %FPU_C3_val, !mcsema_real_eip !39
  store i1 %227, i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %228 = load i3* %FPU_TOP_val, !mcsema_real_eip !39
  store i3 %228, i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %229 = load i1* %FPU_C2_val, !mcsema_real_eip !39
  store i1 %229, i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %230 = load i1* %FPU_C1_val, !mcsema_real_eip !39
  store i1 %230, i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %231 = load i1* %FPU_C0_val, !mcsema_real_eip !39
  store i1 %231, i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %232 = load i1* %FPU_ES_val, !mcsema_real_eip !39
  store i1 %232, i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %233 = load i1* %FPU_SF_val, !mcsema_real_eip !39
  store i1 %233, i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %234 = load i1* %FPU_PE_val, !mcsema_real_eip !39
  store i1 %234, i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %235 = load i1* %FPU_UE_val, !mcsema_real_eip !39
  store i1 %235, i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %236 = load i1* %FPU_OE_val, !mcsema_real_eip !39
  store i1 %236, i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %237 = load i1* %FPU_ZE_val, !mcsema_real_eip !39
  store i1 %237, i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %238 = load i1* %FPU_DE_val, !mcsema_real_eip !39
  store i1 %238, i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %239 = load i1* %FPU_IE_val, !mcsema_real_eip !39
  store i1 %239, i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %240 = load i1* %FPU_X_val, !mcsema_real_eip !39
  store i1 %240, i1* %FPU_X, align 1, !mcsema_real_eip !39
  %241 = load i2* %FPU_RC_val, !mcsema_real_eip !39
  store i2 %241, i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %242 = load i2* %FPU_PC_val, !mcsema_real_eip !39
  store i2 %242, i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %243 = load i1* %FPU_PM_val, !mcsema_real_eip !39
  store i1 %243, i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %244 = load i1* %FPU_UM_val, !mcsema_real_eip !39
  store i1 %244, i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %245 = load i1* %FPU_OM_val, !mcsema_real_eip !39
  store i1 %245, i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %246 = load i1* %FPU_ZM_val, !mcsema_real_eip !39
  store i1 %246, i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %247 = load i1* %FPU_DM_val, !mcsema_real_eip !39
  store i1 %247, i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %248 = load i1* %FPU_IM_val, !mcsema_real_eip !39
  store i1 %248, i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %249 = load i64* %53, align 4
  store i64 %249, i64* %52, align 4
  %250 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  store i16 %250, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %251 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  store i64 %251, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !39
  %252 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  store i16 %252, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %253 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  store i64 %253, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !39
  %254 = load i128* %XMM0_val, !mcsema_real_eip !39
  store i128 %254, i128* %XMM0, align 1, !mcsema_real_eip !39
  %255 = load i128* %XMM1_val, !mcsema_real_eip !39
  store i128 %255, i128* %XMM1, align 1, !mcsema_real_eip !39
  %256 = load i128* %XMM2_val, !mcsema_real_eip !39
  store i128 %256, i128* %XMM2, align 1, !mcsema_real_eip !39
  %257 = load i128* %XMM3_val, !mcsema_real_eip !39
  store i128 %257, i128* %XMM3, align 1, !mcsema_real_eip !39
  %258 = load i128* %XMM4_val, !mcsema_real_eip !39
  store i128 %258, i128* %XMM4, align 1, !mcsema_real_eip !39
  %259 = load i128* %XMM5_val, !mcsema_real_eip !39
  store i128 %259, i128* %XMM5, align 1, !mcsema_real_eip !39
  %260 = load i128* %XMM6_val, !mcsema_real_eip !39
  store i128 %260, i128* %XMM6, align 1, !mcsema_real_eip !39
  %261 = load i128* %XMM7_val, !mcsema_real_eip !39
  store i128 %261, i128* %XMM7, align 1, !mcsema_real_eip !39
  %262 = load i128* %XMM8_val, !mcsema_real_eip !39
  store i128 %262, i128* %XMM8, align 1, !mcsema_real_eip !39
  %263 = load i128* %XMM9_val, !mcsema_real_eip !39
  store i128 %263, i128* %XMM9, align 1, !mcsema_real_eip !39
  %264 = load i128* %XMM10_val, !mcsema_real_eip !39
  store i128 %264, i128* %XMM10, align 1, !mcsema_real_eip !39
  %265 = load i128* %XMM11_val, !mcsema_real_eip !39
  store i128 %265, i128* %XMM11, align 1, !mcsema_real_eip !39
  %266 = load i128* %XMM12_val, !mcsema_real_eip !39
  store i128 %266, i128* %XMM12, align 1, !mcsema_real_eip !39
  %267 = load i128* %XMM13_val, !mcsema_real_eip !39
  store i128 %267, i128* %XMM13, align 1, !mcsema_real_eip !39
  %268 = load i128* %XMM14_val, !mcsema_real_eip !39
  store i128 %268, i128* %XMM14, align 1, !mcsema_real_eip !39
  %269 = load i128* %XMM15_val, !mcsema_real_eip !39
  store i128 %269, i128* %XMM15, align 1, !mcsema_real_eip !39
  %270 = load i64* %STACK_BASE_val, !mcsema_real_eip !39
  store i64 %270, i64* %STACK_BASE, align 1, !mcsema_real_eip !39
  %271 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  store i64 %271, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !39
  call void @sub_01(%struct.regs* %0, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %272 = load i64* %RAX, !mcsema_real_eip !39
  store i64 %272, i64* %RAX_val, !mcsema_real_eip !39
  %273 = load i64* %RBX, !mcsema_real_eip !39
  store i64 %273, i64* %RBX_val, !mcsema_real_eip !39
  %274 = load i64* %RCX, !mcsema_real_eip !39
  store i64 %274, i64* %RCX_val, !mcsema_real_eip !39
  %275 = load i64* %RDX, !mcsema_real_eip !39
  store i64 %275, i64* %RDX_val, !mcsema_real_eip !39
  %276 = load i64* %RSI, !mcsema_real_eip !39
  store i64 %276, i64* %RSI_val, !mcsema_real_eip !39
  %277 = load i64* %RDI, !mcsema_real_eip !39
  store i64 %277, i64* %RDI_val, !mcsema_real_eip !39
  %278 = load i64* %RSP, !mcsema_real_eip !39
  store i64 %278, i64* %RSP_val, !mcsema_real_eip !39
  %279 = load i64* %RBP, !mcsema_real_eip !39
  store i64 %279, i64* %RBP_val, !mcsema_real_eip !39
  %280 = load i64* %R8, !mcsema_real_eip !39
  store i64 %280, i64* %R8_val, !mcsema_real_eip !39
  %281 = load i64* %R9, !mcsema_real_eip !39
  store i64 %281, i64* %R9_val, !mcsema_real_eip !39
  %282 = load i64* %R10, !mcsema_real_eip !39
  store i64 %282, i64* %R10_val, !mcsema_real_eip !39
  %283 = load i64* %R11, !mcsema_real_eip !39
  store i64 %283, i64* %R11_val, !mcsema_real_eip !39
  %284 = load i64* %R12, !mcsema_real_eip !39
  store i64 %284, i64* %R12_val, !mcsema_real_eip !39
  %285 = load i64* %R13, !mcsema_real_eip !39
  store i64 %285, i64* %R13_val, !mcsema_real_eip !39
  %286 = load i64* %R14, !mcsema_real_eip !39
  store i64 %286, i64* %R14_val, !mcsema_real_eip !39
  %287 = load i64* %R15, !mcsema_real_eip !39
  store i64 %287, i64* %R15_val, !mcsema_real_eip !39
  %288 = load i64* %RIP, !mcsema_real_eip !39
  store i64 %288, i64* %RIP_val, !mcsema_real_eip !39
  %289 = load i1* %CF, align 1, !mcsema_real_eip !39
  store i1 %289, i1* %CF_val, !mcsema_real_eip !39
  %290 = load i1* %PF, align 1, !mcsema_real_eip !39
  store i1 %290, i1* %PF_val, !mcsema_real_eip !39
  %291 = load i1* %AF, align 1, !mcsema_real_eip !39
  store i1 %291, i1* %AF_val, !mcsema_real_eip !39
  %292 = load i1* %ZF, align 1, !mcsema_real_eip !39
  store i1 %292, i1* %ZF_val, !mcsema_real_eip !39
  %293 = load i1* %SF, align 1, !mcsema_real_eip !39
  store i1 %293, i1* %SF_val, !mcsema_real_eip !39
  %294 = load i1* %OF, align 1, !mcsema_real_eip !39
  store i1 %294, i1* %OF_val, !mcsema_real_eip !39
  %295 = load i1* %DF, align 1, !mcsema_real_eip !39
  store i1 %295, i1* %DF_val, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %296 = load i1* %FPU_B, align 1, !mcsema_real_eip !39
  store i1 %296, i1* %FPU_B_val, !mcsema_real_eip !39
  %297 = load i1* %FPU_C3, align 1, !mcsema_real_eip !39
  store i1 %297, i1* %FPU_C3_val, !mcsema_real_eip !39
  %298 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  store i3 %298, i3* %FPU_TOP_val, !mcsema_real_eip !39
  %299 = load i1* %FPU_C2, align 1, !mcsema_real_eip !39
  store i1 %299, i1* %FPU_C2_val, !mcsema_real_eip !39
  %300 = load i1* %FPU_C1, align 1, !mcsema_real_eip !39
  store i1 %300, i1* %FPU_C1_val, !mcsema_real_eip !39
  %301 = load i1* %FPU_C0, align 1, !mcsema_real_eip !39
  store i1 %301, i1* %FPU_C0_val, !mcsema_real_eip !39
  %302 = load i1* %FPU_ES, align 1, !mcsema_real_eip !39
  store i1 %302, i1* %FPU_ES_val, !mcsema_real_eip !39
  %303 = load i1* %FPU_SF, align 1, !mcsema_real_eip !39
  store i1 %303, i1* %FPU_SF_val, !mcsema_real_eip !39
  %304 = load i1* %FPU_PE, align 1, !mcsema_real_eip !39
  store i1 %304, i1* %FPU_PE_val, !mcsema_real_eip !39
  %305 = load i1* %FPU_UE, align 1, !mcsema_real_eip !39
  store i1 %305, i1* %FPU_UE_val, !mcsema_real_eip !39
  %306 = load i1* %FPU_OE, align 1, !mcsema_real_eip !39
  store i1 %306, i1* %FPU_OE_val, !mcsema_real_eip !39
  %307 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  store i1 %307, i1* %FPU_ZE_val, !mcsema_real_eip !39
  %308 = load i1* %FPU_DE, align 1, !mcsema_real_eip !39
  store i1 %308, i1* %FPU_DE_val, !mcsema_real_eip !39
  %309 = load i1* %FPU_IE, align 1, !mcsema_real_eip !39
  store i1 %309, i1* %FPU_IE_val, !mcsema_real_eip !39
  %310 = load i1* %FPU_X, align 1, !mcsema_real_eip !39
  store i1 %310, i1* %FPU_X_val, !mcsema_real_eip !39
  %311 = load i2* %FPU_RC, align 1, !mcsema_real_eip !39
  store i2 %311, i2* %FPU_RC_val, !mcsema_real_eip !39
  %312 = load i2* %FPU_PC, align 1, !mcsema_real_eip !39
  store i2 %312, i2* %FPU_PC_val, !mcsema_real_eip !39
  %313 = load i1* %FPU_PM, align 1, !mcsema_real_eip !39
  store i1 %313, i1* %FPU_PM_val, !mcsema_real_eip !39
  %314 = load i1* %FPU_UM, align 1, !mcsema_real_eip !39
  store i1 %314, i1* %FPU_UM_val, !mcsema_real_eip !39
  %315 = load i1* %FPU_OM, align 1, !mcsema_real_eip !39
  store i1 %315, i1* %FPU_OM_val, !mcsema_real_eip !39
  %316 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  store i1 %316, i1* %FPU_ZM_val, !mcsema_real_eip !39
  %317 = load i1* %FPU_DM, align 1, !mcsema_real_eip !39
  store i1 %317, i1* %FPU_DM_val, !mcsema_real_eip !39
  %318 = load i1* %FPU_IM, align 1, !mcsema_real_eip !39
  store i1 %318, i1* %FPU_IM_val, !mcsema_real_eip !39
  %319 = load i64* %52, align 4
  store i64 %319, i64* %53, align 4
  %320 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  store i16 %320, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !39
  %321 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !39
  store i64 %321, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !39
  %322 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  store i16 %322, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !39
  %323 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !39
  store i64 %323, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !39
  %324 = load i128* %XMM0, align 1, !mcsema_real_eip !39
  store i128 %324, i128* %XMM0_val, !mcsema_real_eip !39
  %325 = load i128* %XMM1, align 1, !mcsema_real_eip !39
  store i128 %325, i128* %XMM1_val, !mcsema_real_eip !39
  %326 = load i128* %XMM2, align 1, !mcsema_real_eip !39
  store i128 %326, i128* %XMM2_val, !mcsema_real_eip !39
  %327 = load i128* %XMM3, align 1, !mcsema_real_eip !39
  store i128 %327, i128* %XMM3_val, !mcsema_real_eip !39
  %328 = load i128* %XMM4, align 1, !mcsema_real_eip !39
  store i128 %328, i128* %XMM4_val, !mcsema_real_eip !39
  %329 = load i128* %XMM5, align 1, !mcsema_real_eip !39
  store i128 %329, i128* %XMM5_val, !mcsema_real_eip !39
  %330 = load i128* %XMM6, align 1, !mcsema_real_eip !39
  store i128 %330, i128* %XMM6_val, !mcsema_real_eip !39
  %331 = load i128* %XMM7, align 1, !mcsema_real_eip !39
  store i128 %331, i128* %XMM7_val, !mcsema_real_eip !39
  %332 = load i128* %XMM8, align 1, !mcsema_real_eip !39
  store i128 %332, i128* %XMM8_val, !mcsema_real_eip !39
  %333 = load i128* %XMM9, align 1, !mcsema_real_eip !39
  store i128 %333, i128* %XMM9_val, !mcsema_real_eip !39
  %334 = load i128* %XMM10, align 1, !mcsema_real_eip !39
  store i128 %334, i128* %XMM10_val, !mcsema_real_eip !39
  %335 = load i128* %XMM11, align 1, !mcsema_real_eip !39
  store i128 %335, i128* %XMM11_val, !mcsema_real_eip !39
  %336 = load i128* %XMM12, align 1, !mcsema_real_eip !39
  store i128 %336, i128* %XMM12_val, !mcsema_real_eip !39
  %337 = load i128* %XMM13, align 1, !mcsema_real_eip !39
  store i128 %337, i128* %XMM13_val, !mcsema_real_eip !39
  %338 = load i128* %XMM14, align 1, !mcsema_real_eip !39
  store i128 %338, i128* %XMM14_val, !mcsema_real_eip !39
  %339 = load i128* %XMM15, align 1, !mcsema_real_eip !39
  store i128 %339, i128* %XMM15_val, !mcsema_real_eip !39
  %340 = load i64* %STACK_BASE, !mcsema_real_eip !39
  store i64 %340, i64* %STACK_BASE_val, !mcsema_real_eip !39
  %341 = load i64* %STACK_LIMIT, !mcsema_real_eip !39
  store i64 %341, i64* %STACK_LIMIT_val, !mcsema_real_eip !39
  %342 = load i64* %RBP_val, !mcsema_real_eip !40
  %343 = add i64 %342, -64, !mcsema_real_eip !40
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !40
  %345 = load i64* %RDX_val, !mcsema_real_eip !40
  %346 = trunc i64 %345 to i32, !mcsema_real_eip !40
  %347 = bitcast i64* %344 to i32*
  store i32 %346, i32* %347, !mcsema_real_eip !40
  %348 = load i64* %RBP_val, !mcsema_real_eip !41
  %349 = add i64 %348, -72, !mcsema_real_eip !41
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !41
  %351 = load i64* %RAX_val, !mcsema_real_eip !41
  store i64 %351, i64* %350, !mcsema_real_eip !41
  %352 = load i64* %RBP_val, !mcsema_real_eip !42
  %353 = add i64 %352, -72, !mcsema_real_eip !42
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !42
  %355 = load i64* %354, !mcsema_real_eip !42
  store i64 %355, i64* %RAX_val, !mcsema_real_eip !42
  %356 = add i64 %352, -40, !mcsema_real_eip !43
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !43
  store i64 %355, i64* %357, !mcsema_real_eip !43
  %358 = load i64* %RBP_val, !mcsema_real_eip !44
  %359 = add i64 %358, -64, !mcsema_real_eip !44
  %360 = inttoptr i64 %359 to i64*, !mcsema_real_eip !44
  %361 = bitcast i64* %360 to i32*
  %362 = load i32* %361, !mcsema_real_eip !44
  %363 = zext i32 %362 to i64, !mcsema_real_eip !44
  store i64 %363, i64* %RDX_val, !mcsema_real_eip !44
  %364 = load i64* %RBP_val, !mcsema_real_eip !45
  %365 = add i64 %364, -32, !mcsema_real_eip !45
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !45
  %367 = bitcast i64* %366 to i32*
  store i32 %362, i32* %367, !mcsema_real_eip !45
  %368 = load i64* %RBP_val, !mcsema_real_eip !46
  %369 = add i64 %368, -40, !mcsema_real_eip !46
  %370 = inttoptr i64 %369 to i64*, !mcsema_real_eip !46
  %371 = bitcast i64* %370 to i32*
  %372 = load i32* %371, !mcsema_real_eip !46
  %373 = zext i32 %372 to i64, !mcsema_real_eip !46
  store i64 %373, i64* %RDX_val, !mcsema_real_eip !46
  %374 = load i64* %RBP_val, !mcsema_real_eip !47
  %375 = add i64 %374, -36, !mcsema_real_eip !47
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !47
  %377 = bitcast i64* %376 to i32*
  %378 = load i32* %377, !mcsema_real_eip !47
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %372, i32 %378)
  %379 = extractvalue { i32, i1 } %uadd, 0
  %380 = xor i32 %379, %378, !mcsema_real_eip !47
  %381 = xor i32 %380, %372, !mcsema_real_eip !47
  %382 = and i32 %381, 16, !mcsema_real_eip !47
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !47
  store i1 %383, i1* %AF_val, !mcsema_real_eip !47
  %384 = icmp slt i32 %379, 0
  store i1 %384, i1* %SF_val, !mcsema_real_eip !47
  %385 = icmp eq i32 %379, 0, !mcsema_real_eip !47
  store i1 %385, i1* %ZF_val, !mcsema_real_eip !47
  %386 = xor i32 %372, -2147483648, !mcsema_real_eip !47
  %387 = xor i32 %386, %378, !mcsema_real_eip !47
  %388 = and i32 %380, %387, !mcsema_real_eip !47
  %389 = icmp slt i32 %388, 0
  store i1 %389, i1* %OF_val, !mcsema_real_eip !47
  %390 = trunc i32 %379 to i8, !mcsema_real_eip !47
  %391 = tail call i8 @llvm.ctpop.i8(i8 %390), !mcsema_real_eip !47
  %392 = and i8 %391, 1
  %393 = icmp eq i8 %392, 0
  store i1 %393, i1* %PF_val, !mcsema_real_eip !47
  %394 = extractvalue { i32, i1 } %uadd, 1
  store i1 %394, i1* %CF_val, !mcsema_real_eip !47
  %395 = zext i32 %379 to i64, !mcsema_real_eip !47
  store i64 %395, i64* %RDX_val, !mcsema_real_eip !47
  %396 = load i64* %RBP_val, !mcsema_real_eip !48
  %397 = add i64 %396, -32, !mcsema_real_eip !48
  %398 = inttoptr i64 %397 to i64*, !mcsema_real_eip !48
  %399 = bitcast i64* %398 to i32*
  %400 = load i32* %399, !mcsema_real_eip !48
  %401 = add i32 %379, %400
  %402 = zext i32 %401 to i64, !mcsema_real_eip !48
  store i64 %402, i64* %RDX_val, !mcsema_real_eip !48
  store i64 %402, i64* %RAX_val, !mcsema_real_eip !49
  %403 = load i64* %RSP_val, !mcsema_real_eip !50
  %uadd210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %403, i64 128)
  %404 = extractvalue { i64, i1 } %uadd210, 0
  %405 = xor i64 %404, %403, !mcsema_real_eip !50
  %406 = and i64 %405, 16, !mcsema_real_eip !50
  %407 = icmp ne i64 %406, 0, !mcsema_real_eip !50
  store i1 %407, i1* %AF_val, !mcsema_real_eip !50
  %408 = icmp slt i64 %404, 0
  store i1 %408, i1* %SF_val, !mcsema_real_eip !50
  %409 = icmp eq i64 %404, 0, !mcsema_real_eip !50
  store i1 %409, i1* %ZF_val, !mcsema_real_eip !50
  %410 = xor i64 %403, -9223372036854775808, !mcsema_real_eip !50
  %411 = and i64 %405, %410, !mcsema_real_eip !50
  %412 = icmp slt i64 %411, 0
  store i1 %412, i1* %OF_val, !mcsema_real_eip !50
  %413 = trunc i64 %404 to i8, !mcsema_real_eip !50
  %414 = tail call i8 @llvm.ctpop.i8(i8 %413), !mcsema_real_eip !50
  %415 = and i8 %414, 1
  %416 = icmp eq i8 %415, 0
  store i1 %416, i1* %PF_val, !mcsema_real_eip !50
  %417 = extractvalue { i64, i1 } %uadd210, 1
  store i1 %417, i1* %CF_val, !mcsema_real_eip !50
  store i64 %404, i64* %RSP_val, !mcsema_real_eip !50
  %418 = inttoptr i64 %404 to i64*, !mcsema_real_eip !51
  %419 = load i64* %418, !mcsema_real_eip !51
  store i64 %419, i64* %RBP_val, !mcsema_real_eip !51
  %420 = add i64 %404, 16, !mcsema_real_eip !52
  store i64 %420, i64* %RSP_val, !mcsema_real_eip !52
  %421 = load i64* %RAX_val, !mcsema_real_eip !52
  store i64 %421, i64* %RAX, !mcsema_real_eip !52
  %422 = load i64* %RBX_val, !mcsema_real_eip !52
  store i64 %422, i64* %RBX, !mcsema_real_eip !52
  %423 = load i64* %RCX_val, !mcsema_real_eip !52
  store i64 %423, i64* %RCX, !mcsema_real_eip !52
  %424 = load i64* %RDX_val, !mcsema_real_eip !52
  store i64 %424, i64* %RDX, !mcsema_real_eip !52
  %425 = load i64* %RSI_val, !mcsema_real_eip !52
  store i64 %425, i64* %RSI, !mcsema_real_eip !52
  %426 = load i64* %RDI_val, !mcsema_real_eip !52
  store i64 %426, i64* %RDI, !mcsema_real_eip !52
  %427 = load i64* %RSP_val, !mcsema_real_eip !52
  store i64 %427, i64* %RSP, !mcsema_real_eip !52
  %428 = load i64* %RBP_val, !mcsema_real_eip !52
  store i64 %428, i64* %RBP, !mcsema_real_eip !52
  %429 = load i64* %R8_val, !mcsema_real_eip !52
  store i64 %429, i64* %R8, !mcsema_real_eip !52
  %430 = load i64* %R9_val, !mcsema_real_eip !52
  store i64 %430, i64* %R9, !mcsema_real_eip !52
  %431 = load i64* %R10_val, !mcsema_real_eip !52
  store i64 %431, i64* %R10, !mcsema_real_eip !52
  %432 = load i64* %R11_val, !mcsema_real_eip !52
  store i64 %432, i64* %R11, !mcsema_real_eip !52
  %433 = load i64* %R12_val, !mcsema_real_eip !52
  store i64 %433, i64* %R12, !mcsema_real_eip !52
  %434 = load i64* %R13_val, !mcsema_real_eip !52
  store i64 %434, i64* %R13, !mcsema_real_eip !52
  %435 = load i64* %R14_val, !mcsema_real_eip !52
  store i64 %435, i64* %R14, !mcsema_real_eip !52
  %436 = load i64* %R15_val, !mcsema_real_eip !52
  store i64 %436, i64* %R15, !mcsema_real_eip !52
  %437 = load i64* %RIP_val, !mcsema_real_eip !52
  store i64 %437, i64* %RIP, !mcsema_real_eip !52
  %438 = load i1* %CF_val, !mcsema_real_eip !52
  store i1 %438, i1* %CF, align 1, !mcsema_real_eip !52
  %439 = load i1* %PF_val, !mcsema_real_eip !52
  store i1 %439, i1* %PF, align 1, !mcsema_real_eip !52
  %440 = load i1* %AF_val, !mcsema_real_eip !52
  store i1 %440, i1* %AF, align 1, !mcsema_real_eip !52
  %441 = load i1* %ZF_val, !mcsema_real_eip !52
  store i1 %441, i1* %ZF, align 1, !mcsema_real_eip !52
  %442 = load i1* %SF_val, !mcsema_real_eip !52
  store i1 %442, i1* %SF, align 1, !mcsema_real_eip !52
  %443 = load i1* %OF_val, !mcsema_real_eip !52
  store i1 %443, i1* %OF, align 1, !mcsema_real_eip !52
  %444 = load i1* %DF_val, !mcsema_real_eip !52
  store i1 %444, i1* %DF, align 1, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !52
  %445 = load i1* %FPU_B_val, !mcsema_real_eip !52
  store i1 %445, i1* %FPU_B, align 1, !mcsema_real_eip !52
  %446 = load i1* %FPU_C3_val, !mcsema_real_eip !52
  store i1 %446, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  %447 = load i3* %FPU_TOP_val, !mcsema_real_eip !52
  store i3 %447, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  %448 = load i1* %FPU_C2_val, !mcsema_real_eip !52
  store i1 %448, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  %449 = load i1* %FPU_C1_val, !mcsema_real_eip !52
  store i1 %449, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  %450 = load i1* %FPU_C0_val, !mcsema_real_eip !52
  store i1 %450, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  %451 = load i1* %FPU_ES_val, !mcsema_real_eip !52
  store i1 %451, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  %452 = load i1* %FPU_SF_val, !mcsema_real_eip !52
  store i1 %452, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  %453 = load i1* %FPU_PE_val, !mcsema_real_eip !52
  store i1 %453, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  %454 = load i1* %FPU_UE_val, !mcsema_real_eip !52
  store i1 %454, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  %455 = load i1* %FPU_OE_val, !mcsema_real_eip !52
  store i1 %455, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  %456 = load i1* %FPU_ZE_val, !mcsema_real_eip !52
  store i1 %456, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  %457 = load i1* %FPU_DE_val, !mcsema_real_eip !52
  store i1 %457, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  %458 = load i1* %FPU_IE_val, !mcsema_real_eip !52
  store i1 %458, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  %459 = load i1* %FPU_X_val, !mcsema_real_eip !52
  store i1 %459, i1* %FPU_X, align 1, !mcsema_real_eip !52
  %460 = load i2* %FPU_RC_val, !mcsema_real_eip !52
  store i2 %460, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  %461 = load i2* %FPU_PC_val, !mcsema_real_eip !52
  store i2 %461, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  %462 = load i1* %FPU_PM_val, !mcsema_real_eip !52
  store i1 %462, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  %463 = load i1* %FPU_UM_val, !mcsema_real_eip !52
  store i1 %463, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  %464 = load i1* %FPU_OM_val, !mcsema_real_eip !52
  store i1 %464, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  %465 = load i1* %FPU_ZM_val, !mcsema_real_eip !52
  store i1 %465, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  %466 = load i1* %FPU_DM_val, !mcsema_real_eip !52
  store i1 %466, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  %467 = load i1* %FPU_IM_val, !mcsema_real_eip !52
  store i1 %467, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  %468 = load i64* %53, align 4
  store i64 %468, i64* %52, align 4
  %469 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !52
  store i16 %469, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  %470 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !52
  store i64 %470, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !52
  %471 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !52
  store i16 %471, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  %472 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !52
  store i64 %472, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !52
  %473 = load i128* %XMM0_val, !mcsema_real_eip !52
  store i128 %473, i128* %XMM0, align 1, !mcsema_real_eip !52
  %474 = load i128* %XMM1_val, !mcsema_real_eip !52
  store i128 %474, i128* %XMM1, align 1, !mcsema_real_eip !52
  %475 = load i128* %XMM2_val, !mcsema_real_eip !52
  store i128 %475, i128* %XMM2, align 1, !mcsema_real_eip !52
  %476 = load i128* %XMM3_val, !mcsema_real_eip !52
  store i128 %476, i128* %XMM3, align 1, !mcsema_real_eip !52
  %477 = load i128* %XMM4_val, !mcsema_real_eip !52
  store i128 %477, i128* %XMM4, align 1, !mcsema_real_eip !52
  %478 = load i128* %XMM5_val, !mcsema_real_eip !52
  store i128 %478, i128* %XMM5, align 1, !mcsema_real_eip !52
  %479 = load i128* %XMM6_val, !mcsema_real_eip !52
  store i128 %479, i128* %XMM6, align 1, !mcsema_real_eip !52
  %480 = load i128* %XMM7_val, !mcsema_real_eip !52
  store i128 %480, i128* %XMM7, align 1, !mcsema_real_eip !52
  %481 = load i128* %XMM8_val, !mcsema_real_eip !52
  store i128 %481, i128* %XMM8, align 1, !mcsema_real_eip !52
  %482 = load i128* %XMM9_val, !mcsema_real_eip !52
  store i128 %482, i128* %XMM9, align 1, !mcsema_real_eip !52
  %483 = load i128* %XMM10_val, !mcsema_real_eip !52
  store i128 %483, i128* %XMM10, align 1, !mcsema_real_eip !52
  %484 = load i128* %XMM11_val, !mcsema_real_eip !52
  store i128 %484, i128* %XMM11, align 1, !mcsema_real_eip !52
  %485 = load i128* %XMM12_val, !mcsema_real_eip !52
  store i128 %485, i128* %XMM12, align 1, !mcsema_real_eip !52
  %486 = load i128* %XMM13_val, !mcsema_real_eip !52
  store i128 %486, i128* %XMM13, align 1, !mcsema_real_eip !52
  %487 = load i128* %XMM14_val, !mcsema_real_eip !52
  store i128 %487, i128* %XMM14, align 1, !mcsema_real_eip !52
  %488 = load i128* %XMM15_val, !mcsema_real_eip !52
  store i128 %488, i128* %XMM15, align 1, !mcsema_real_eip !52
  %489 = load i64* %STACK_BASE_val, !mcsema_real_eip !52
  store i64 %489, i64* %STACK_BASE, align 1, !mcsema_real_eip !52
  %490 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !52
  store i64 %490, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 144
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 144
  %R15_val = alloca i64, !mcsema_real_eip !53
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !53
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !53
  %XMM15_val = alloca i128, !mcsema_real_eip !53
  %XMM14_val = alloca i128, !mcsema_real_eip !53
  %XMM13_val = alloca i128, !mcsema_real_eip !53
  %XMM12_val = alloca i128, !mcsema_real_eip !53
  %XMM11_val = alloca i128, !mcsema_real_eip !53
  %XMM10_val = alloca i128, !mcsema_real_eip !53
  %XMM9_val = alloca i128, !mcsema_real_eip !53
  %XMM8_val = alloca i128, !mcsema_real_eip !53
  %XMM7_val = alloca i128, !mcsema_real_eip !53
  %XMM6_val = alloca i128, !mcsema_real_eip !53
  %XMM5_val = alloca i128, !mcsema_real_eip !53
  %XMM4_val = alloca i128, !mcsema_real_eip !53
  %XMM3_val = alloca i128, !mcsema_real_eip !53
  %XMM2_val = alloca i128, !mcsema_real_eip !53
  %XMM1_val = alloca i128, !mcsema_real_eip !53
  %XMM0_val = alloca i128, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %FPU_IM_val = alloca i1, !mcsema_real_eip !53
  %FPU_DM_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !53
  %FPU_OM_val = alloca i1, !mcsema_real_eip !53
  %FPU_UM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PC_val = alloca i2, !mcsema_real_eip !53
  %FPU_RC_val = alloca i2, !mcsema_real_eip !53
  %FPU_X_val = alloca i1, !mcsema_real_eip !53
  %FPU_IE_val = alloca i1, !mcsema_real_eip !53
  %FPU_DE_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !53
  %FPU_OE_val = alloca i1, !mcsema_real_eip !53
  %FPU_UE_val = alloca i1, !mcsema_real_eip !53
  %FPU_PE_val = alloca i1, !mcsema_real_eip !53
  %FPU_SF_val = alloca i1, !mcsema_real_eip !53
  %FPU_ES_val = alloca i1, !mcsema_real_eip !53
  %FPU_C0_val = alloca i1, !mcsema_real_eip !53
  %FPU_C1_val = alloca i1, !mcsema_real_eip !53
  %FPU_C2_val = alloca i1, !mcsema_real_eip !53
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !53
  %FPU_C3_val = alloca i1, !mcsema_real_eip !53
  %FPU_B_val = alloca i1, !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %DF_val = alloca i1, !mcsema_real_eip !53
  %OF_val = alloca i1, !mcsema_real_eip !53
  %SF_val = alloca i1, !mcsema_real_eip !53
  %CF_val = alloca i1, !mcsema_real_eip !53
  %AF_val = alloca i1, !mcsema_real_eip !53
  %PF_val = alloca i1, !mcsema_real_eip !53
  %ZF_val = alloca i1, !mcsema_real_eip !53
  %RIP_val = alloca i64, !mcsema_real_eip !53
  %R14_val = alloca i64, !mcsema_real_eip !53
  %R13_val = alloca i64, !mcsema_real_eip !53
  %R12_val = alloca i64, !mcsema_real_eip !53
  %R11_val = alloca i64, !mcsema_real_eip !53
  %R10_val = alloca i64, !mcsema_real_eip !53
  %R9_val = alloca i64, !mcsema_real_eip !53
  %R8_val = alloca i64, !mcsema_real_eip !53
  %RSP_val = alloca i64, !mcsema_real_eip !53
  %RBP_val = alloca i64, !mcsema_real_eip !53
  %RDI_val = alloca i64, !mcsema_real_eip !53
  %RSI_val = alloca i64, !mcsema_real_eip !53
  %RDX_val = alloca i64, !mcsema_real_eip !53
  %RCX_val = alloca i64, !mcsema_real_eip !53
  %RBX_val = alloca i64, !mcsema_real_eip !53
  %RAX_val = alloca i64, !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %1 = load i64* %RAX, !mcsema_real_eip !53
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %2 = load i64* %RBX, !mcsema_real_eip !53
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %3 = load i64* %RCX, !mcsema_real_eip !53
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %4 = load i64* %RDX, !mcsema_real_eip !53
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %5 = load i64* %RSI, !mcsema_real_eip !53
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %6 = load i64* %RDI, !mcsema_real_eip !53
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %7 = load i64* %RSP, !mcsema_real_eip !53
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %8 = load i64* %RBP, !mcsema_real_eip !53
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %9 = load i64* %R8, !mcsema_real_eip !53
  store i64 %9, i64* %R8_val, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %10 = load i64* %R9, !mcsema_real_eip !53
  store i64 %10, i64* %R9_val, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %11 = load i64* %R10, !mcsema_real_eip !53
  store i64 %11, i64* %R10_val, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %12 = load i64* %R11, !mcsema_real_eip !53
  store i64 %12, i64* %R11_val, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %13 = load i64* %R12, !mcsema_real_eip !53
  store i64 %13, i64* %R12_val, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %14 = load i64* %R13, !mcsema_real_eip !53
  store i64 %14, i64* %R13_val, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %15 = load i64* %R14, !mcsema_real_eip !53
  store i64 %15, i64* %R14_val, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %16 = load i64* %R15, !mcsema_real_eip !53
  store i64 %16, i64* %R15_val, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %17 = load i64* %RIP, !mcsema_real_eip !53
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %18 = load i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %18, i1* %CF_val, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %19 = load i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %19, i1* %PF_val, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %20 = load i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %20, i1* %AF_val, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %22 = load i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %22, i1* %SF_val, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %23 = load i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %23, i1* %OF_val, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %24 = load i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %24, i1* %DF_val, !mcsema_real_eip !53
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !53
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !53
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %77 = load i64* %RBP_val, !mcsema_real_eip !53
  %78 = load i64* %RSP_val, !mcsema_real_eip !53
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !53
  store i64 %77, i64* %80, !mcsema_real_eip !53
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !54
  %81 = load i64* %RBX_val, !mcsema_real_eip !55
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !55
  store i64 %81, i64* %83, !mcsema_real_eip !55
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !55
  %84 = load i64* %RBP_val, !mcsema_real_eip !56
  %85 = add i64 %84, 48, !mcsema_real_eip !56
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !56
  %87 = load i64* %86, !mcsema_real_eip !56
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !56
  %88 = add i64 %84, 40, !mcsema_real_eip !57
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !57
  %90 = load i64* %89, !mcsema_real_eip !57
  store i64 %90, i64* %R10_val, !mcsema_real_eip !57
  %91 = load i64* %RBP_val, !mcsema_real_eip !58
  %92 = add i64 %91, 24, !mcsema_real_eip !58
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !58
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !58
  store i64 %94, i64* %R11_val, !mcsema_real_eip !58
  %95 = add i64 %91, 16, !mcsema_real_eip !59
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !59
  %97 = bitcast i64* %96 to i32*
  %98 = load i32* %97, !mcsema_real_eip !59
  %99 = zext i32 %98 to i64, !mcsema_real_eip !59
  store i64 %99, i64* %RBX_val, !mcsema_real_eip !59
  %100 = load i64* %RBP_val, !mcsema_real_eip !60
  %101 = add i64 %100, -56, !mcsema_real_eip !60
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !60
  %103 = load i64* %RDI_val, !mcsema_real_eip !60
  store i64 %103, i64* %102, !mcsema_real_eip !60
  %104 = load i64* %RBP_val, !mcsema_real_eip !61
  %105 = add i64 %104, -48, !mcsema_real_eip !61
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !61
  %107 = load i64* %RSI_val, !mcsema_real_eip !61
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !61
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !61
  %110 = load i64* %RBP_val, !mcsema_real_eip !62
  %111 = add i64 %110, -32, !mcsema_real_eip !62
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !62
  %113 = load i64* %RSI_val, !mcsema_real_eip !62
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !62
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !62
  %116 = load i64* %RBP_val, !mcsema_real_eip !63
  %117 = add i64 %116, -56, !mcsema_real_eip !63
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !63
  %119 = load i64* %118, !mcsema_real_eip !63
  store i64 %119, i64* %RDI_val, !mcsema_real_eip !63
  %120 = add i64 %116, -40, !mcsema_real_eip !64
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !64
  store i64 %119, i64* %121, !mcsema_real_eip !64
  %122 = load i64* %RBP_val, !mcsema_real_eip !65
  %123 = add i64 %122, -64, !mcsema_real_eip !65
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !65
  %125 = load i64* %RDX_val, !mcsema_real_eip !65
  store i64 %125, i64* %124, !mcsema_real_eip !65
  %126 = load i64* %RBP_val, !mcsema_real_eip !66
  %127 = add i64 %126, -72, !mcsema_real_eip !66
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !66
  %129 = load i64* %RCX_val, !mcsema_real_eip !66
  store i64 %129, i64* %128, !mcsema_real_eip !66
  %130 = load i64* %RBP_val, !mcsema_real_eip !67
  %131 = add i64 %130, -76, !mcsema_real_eip !67
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !67
  %133 = load i64* %R8_val, !mcsema_real_eip !67
  %134 = trunc i64 %133 to i32, !mcsema_real_eip !67
  %135 = bitcast i64* %132 to i32*
  store i32 %134, i32* %135, !mcsema_real_eip !67
  %136 = load i64* %RBP_val, !mcsema_real_eip !68
  %137 = add i64 %136, -80, !mcsema_real_eip !68
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !68
  %139 = load i64* %R9_val, !mcsema_real_eip !68
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !68
  %141 = bitcast i64* %138 to i32*
  store i32 %140, i32* %141, !mcsema_real_eip !68
  %142 = load i64* %RBP_val, !mcsema_real_eip !69
  %143 = add i64 %142, -84, !mcsema_real_eip !69
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !69
  %145 = load i64* %RBX_val, !mcsema_real_eip !69
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !69
  %147 = bitcast i64* %144 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !69
  %148 = load i64* %RBP_val, !mcsema_real_eip !70
  %149 = add i64 %148, -96, !mcsema_real_eip !70
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !70
  %151 = load i64* %R10_val, !mcsema_real_eip !70
  store i64 %151, i64* %150, !mcsema_real_eip !70
  %152 = load i64* %RBP_val, !mcsema_real_eip !71
  %153 = add i64 %152, -104, !mcsema_real_eip !71
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !71
  %155 = load i64* %RAX_val, !mcsema_real_eip !71
  store i64 %155, i64* %154, !mcsema_real_eip !71
  %156 = load i64* %RBP_val, !mcsema_real_eip !72
  %157 = add i64 %156, -40, !mcsema_real_eip !72
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !72
  %159 = bitcast i64* %158 to i32*
  %160 = load i32* %159, !mcsema_real_eip !72
  %161 = zext i32 %160 to i64, !mcsema_real_eip !72
  store i64 %161, i64* %RSI_val, !mcsema_real_eip !72
  %162 = load i64* %RBP_val, !mcsema_real_eip !73
  %163 = add i64 %162, -64, !mcsema_real_eip !73
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !73
  %165 = load i64* %164, !mcsema_real_eip !73
  store i64 %165, i64* %RCX_val, !mcsema_real_eip !73
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !74
  %167 = bitcast i64* %166 to i32*
  %168 = load i32* %167, !mcsema_real_eip !74
  %169 = zext i32 %168 to i64, !mcsema_real_eip !74
  store i64 %169, i64* %R8_val, !mcsema_real_eip !74
  %170 = load i64* %RSI_val, !mcsema_real_eip !75
  %171 = trunc i64 %170 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %168, i32 %171)
  %172 = extractvalue { i32, i1 } %uadd, 0
  %173 = xor i32 %172, %171, !mcsema_real_eip !75
  %174 = xor i32 %173, %168, !mcsema_real_eip !75
  %175 = and i32 %174, 16, !mcsema_real_eip !75
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !75
  store i1 %176, i1* %AF_val, !mcsema_real_eip !75
  %177 = icmp slt i32 %172, 0
  store i1 %177, i1* %SF_val, !mcsema_real_eip !75
  %178 = icmp eq i32 %172, 0, !mcsema_real_eip !75
  store i1 %178, i1* %ZF_val, !mcsema_real_eip !75
  %179 = xor i32 %168, -2147483648, !mcsema_real_eip !75
  %180 = xor i32 %179, %171, !mcsema_real_eip !75
  %181 = and i32 %173, %180, !mcsema_real_eip !75
  %182 = icmp slt i32 %181, 0
  store i1 %182, i1* %OF_val, !mcsema_real_eip !75
  %183 = trunc i32 %172 to i8, !mcsema_real_eip !75
  %184 = tail call i8 @llvm.ctpop.i8(i8 %183), !mcsema_real_eip !75
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  store i1 %186, i1* %PF_val, !mcsema_real_eip !75
  %187 = extractvalue { i32, i1 } %uadd, 1
  store i1 %187, i1* %CF_val, !mcsema_real_eip !75
  %188 = zext i32 %172 to i64, !mcsema_real_eip !75
  store i64 %188, i64* %RSI_val, !mcsema_real_eip !75
  %189 = load i64* %RBP_val, !mcsema_real_eip !76
  %190 = add i64 %189, -72, !mcsema_real_eip !76
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !76
  %192 = load i64* %191, !mcsema_real_eip !76
  store i64 %192, i64* %RCX_val, !mcsema_real_eip !76
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !77
  %194 = bitcast i64* %193 to i32*
  %195 = load i32* %194, !mcsema_real_eip !77
  %196 = zext i32 %195 to i64, !mcsema_real_eip !77
  store i64 %196, i64* %R8_val, !mcsema_real_eip !77
  %197 = load i64* %RSI_val, !mcsema_real_eip !78
  %198 = trunc i64 %197 to i32, !mcsema_real_eip !78
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %198)
  %199 = extractvalue { i32, i1 } %uadd70, 0
  %200 = xor i32 %199, %198, !mcsema_real_eip !78
  %201 = xor i32 %200, %195, !mcsema_real_eip !78
  %202 = and i32 %201, 16, !mcsema_real_eip !78
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !78
  store i1 %203, i1* %AF_val, !mcsema_real_eip !78
  %204 = icmp slt i32 %199, 0
  store i1 %204, i1* %SF_val, !mcsema_real_eip !78
  %205 = icmp eq i32 %199, 0, !mcsema_real_eip !78
  store i1 %205, i1* %ZF_val, !mcsema_real_eip !78
  %206 = xor i32 %195, -2147483648, !mcsema_real_eip !78
  %207 = xor i32 %206, %198, !mcsema_real_eip !78
  %208 = and i32 %200, %207, !mcsema_real_eip !78
  %209 = icmp slt i32 %208, 0
  store i1 %209, i1* %OF_val, !mcsema_real_eip !78
  %210 = trunc i32 %199 to i8, !mcsema_real_eip !78
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !78
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF_val, !mcsema_real_eip !78
  %214 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %214, i1* %CF_val, !mcsema_real_eip !78
  %215 = zext i32 %199 to i64, !mcsema_real_eip !78
  store i64 %215, i64* %RSI_val, !mcsema_real_eip !78
  %216 = load i64* %R11_val, !mcsema_real_eip !79
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !79
  %218 = bitcast i64* %217 to i32*
  %219 = load i32* %218, !mcsema_real_eip !79
  %220 = zext i32 %219 to i64, !mcsema_real_eip !79
  store i64 %220, i64* %R8_val, !mcsema_real_eip !79
  %221 = load i64* %RBP_val, !mcsema_real_eip !80
  %222 = add i64 %221, -96, !mcsema_real_eip !80
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !80
  %224 = load i64* %223, !mcsema_real_eip !80
  store i64 %224, i64* %RCX_val, !mcsema_real_eip !80
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !81
  %226 = bitcast i64* %225 to i32*
  %227 = load i32* %226, !mcsema_real_eip !81
  %228 = zext i32 %227 to i64, !mcsema_real_eip !81
  store i64 %228, i64* %R9_val, !mcsema_real_eip !81
  %229 = load i64* %R8_val, !mcsema_real_eip !82
  %230 = trunc i64 %229 to i32, !mcsema_real_eip !82
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %230)
  %231 = extractvalue { i32, i1 } %uadd71, 0
  %232 = xor i32 %231, %230, !mcsema_real_eip !82
  %233 = xor i32 %232, %227, !mcsema_real_eip !82
  %234 = and i32 %233, 16, !mcsema_real_eip !82
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !82
  store i1 %235, i1* %AF_val, !mcsema_real_eip !82
  %236 = icmp slt i32 %231, 0
  store i1 %236, i1* %SF_val, !mcsema_real_eip !82
  %237 = icmp eq i32 %231, 0, !mcsema_real_eip !82
  store i1 %237, i1* %ZF_val, !mcsema_real_eip !82
  %238 = xor i32 %227, -2147483648, !mcsema_real_eip !82
  %239 = xor i32 %238, %230, !mcsema_real_eip !82
  %240 = and i32 %232, %239, !mcsema_real_eip !82
  %241 = icmp slt i32 %240, 0
  store i1 %241, i1* %OF_val, !mcsema_real_eip !82
  %242 = trunc i32 %231 to i8, !mcsema_real_eip !82
  %243 = tail call i8 @llvm.ctpop.i8(i8 %242), !mcsema_real_eip !82
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  store i1 %245, i1* %PF_val, !mcsema_real_eip !82
  %246 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %246, i1* %CF_val, !mcsema_real_eip !82
  %247 = zext i32 %231 to i64, !mcsema_real_eip !82
  store i64 %247, i64* %R8_val, !mcsema_real_eip !82
  %248 = load i64* %RAX_val, !mcsema_real_eip !83
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !83
  %250 = bitcast i64* %249 to i32*
  %251 = load i32* %250, !mcsema_real_eip !83
  %252 = zext i32 %251 to i64, !mcsema_real_eip !83
  store i64 %252, i64* %R9_val, !mcsema_real_eip !83
  %253 = load i64* %R8_val, !mcsema_real_eip !84
  %254 = trunc i64 %253 to i32, !mcsema_real_eip !84
  %255 = add i32 %251, %254
  %256 = zext i32 %255 to i64, !mcsema_real_eip !84
  store i64 %256, i64* %R8_val, !mcsema_real_eip !84
  %257 = load i64* %RSI_val, !mcsema_real_eip !85
  %258 = trunc i64 %257 to i32, !mcsema_real_eip !85
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %255, i32 %258)
  %259 = extractvalue { i32, i1 } %uadd73, 0
  %260 = xor i32 %259, %258, !mcsema_real_eip !85
  %261 = xor i32 %260, %255, !mcsema_real_eip !85
  %262 = and i32 %261, 16, !mcsema_real_eip !85
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !85
  store i1 %263, i1* %AF_val, !mcsema_real_eip !85
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF_val, !mcsema_real_eip !85
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !85
  store i1 %265, i1* %ZF_val, !mcsema_real_eip !85
  %266 = xor i32 %255, -2147483648, !mcsema_real_eip !85
  %267 = xor i32 %266, %258, !mcsema_real_eip !85
  %268 = and i32 %260, %267, !mcsema_real_eip !85
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF_val, !mcsema_real_eip !85
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !85
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !85
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF_val, !mcsema_real_eip !85
  %274 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %274, i1* %CF_val, !mcsema_real_eip !85
  %275 = zext i32 %259 to i64, !mcsema_real_eip !85
  store i64 %275, i64* %RSI_val, !mcsema_real_eip !85
  %276 = load i64* %RBP_val, !mcsema_real_eip !86
  %277 = add i64 %276, -120, !mcsema_real_eip !86
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !86
  %279 = bitcast i64* %278 to i32*
  store i32 %259, i32* %279, !mcsema_real_eip !86
  %280 = load i64* %RBP_val, !mcsema_real_eip !87
  %281 = add i64 %280, -36, !mcsema_real_eip !87
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !87
  %283 = bitcast i64* %282 to i32*
  %284 = load i32* %283, !mcsema_real_eip !87
  %285 = zext i32 %284 to i64, !mcsema_real_eip !87
  store i64 %285, i64* %RSI_val, !mcsema_real_eip !87
  %286 = load i64* %RBP_val, !mcsema_real_eip !88
  %287 = add i64 %286, -64, !mcsema_real_eip !88
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !88
  %289 = load i64* %288, !mcsema_real_eip !88
  store i64 %289, i64* %RAX_val, !mcsema_real_eip !88
  %290 = add i64 %289, 4, !mcsema_real_eip !89
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !89
  %292 = bitcast i64* %291 to i32*
  %293 = load i32* %292, !mcsema_real_eip !89
  %294 = zext i32 %293 to i64, !mcsema_real_eip !89
  store i64 %294, i64* %R8_val, !mcsema_real_eip !89
  %295 = load i64* %RSI_val, !mcsema_real_eip !90
  %296 = trunc i64 %295 to i32, !mcsema_real_eip !90
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %293, i32 %296)
  %297 = extractvalue { i32, i1 } %uadd74, 0
  %298 = xor i32 %297, %296, !mcsema_real_eip !90
  %299 = xor i32 %298, %293, !mcsema_real_eip !90
  %300 = and i32 %299, 16, !mcsema_real_eip !90
  %301 = icmp ne i32 %300, 0, !mcsema_real_eip !90
  store i1 %301, i1* %AF_val, !mcsema_real_eip !90
  %302 = icmp slt i32 %297, 0
  store i1 %302, i1* %SF_val, !mcsema_real_eip !90
  %303 = icmp eq i32 %297, 0, !mcsema_real_eip !90
  store i1 %303, i1* %ZF_val, !mcsema_real_eip !90
  %304 = xor i32 %293, -2147483648, !mcsema_real_eip !90
  %305 = xor i32 %304, %296, !mcsema_real_eip !90
  %306 = and i32 %298, %305, !mcsema_real_eip !90
  %307 = icmp slt i32 %306, 0
  store i1 %307, i1* %OF_val, !mcsema_real_eip !90
  %308 = trunc i32 %297 to i8, !mcsema_real_eip !90
  %309 = tail call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !90
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  store i1 %311, i1* %PF_val, !mcsema_real_eip !90
  %312 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %312, i1* %CF_val, !mcsema_real_eip !90
  %313 = zext i32 %297 to i64, !mcsema_real_eip !90
  store i64 %313, i64* %RSI_val, !mcsema_real_eip !90
  %314 = load i64* %RBP_val, !mcsema_real_eip !91
  %315 = add i64 %314, -72, !mcsema_real_eip !91
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !91
  %317 = load i64* %316, !mcsema_real_eip !91
  store i64 %317, i64* %RAX_val, !mcsema_real_eip !91
  %318 = add i64 %317, 4, !mcsema_real_eip !92
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !92
  %320 = bitcast i64* %319 to i32*
  %321 = load i32* %320, !mcsema_real_eip !92
  %322 = zext i32 %321 to i64, !mcsema_real_eip !92
  store i64 %322, i64* %R8_val, !mcsema_real_eip !92
  %323 = load i64* %RSI_val, !mcsema_real_eip !93
  %324 = trunc i64 %323 to i32, !mcsema_real_eip !93
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %321, i32 %324)
  %325 = extractvalue { i32, i1 } %uadd75, 0
  %326 = xor i32 %325, %324, !mcsema_real_eip !93
  %327 = xor i32 %326, %321, !mcsema_real_eip !93
  %328 = and i32 %327, 16, !mcsema_real_eip !93
  %329 = icmp ne i32 %328, 0, !mcsema_real_eip !93
  store i1 %329, i1* %AF_val, !mcsema_real_eip !93
  %330 = icmp slt i32 %325, 0
  store i1 %330, i1* %SF_val, !mcsema_real_eip !93
  %331 = icmp eq i32 %325, 0, !mcsema_real_eip !93
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !93
  %332 = xor i32 %321, -2147483648, !mcsema_real_eip !93
  %333 = xor i32 %332, %324, !mcsema_real_eip !93
  %334 = and i32 %326, %333, !mcsema_real_eip !93
  %335 = icmp slt i32 %334, 0
  store i1 %335, i1* %OF_val, !mcsema_real_eip !93
  %336 = trunc i32 %325 to i8, !mcsema_real_eip !93
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !93
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !93
  %340 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %340, i1* %CF_val, !mcsema_real_eip !93
  %341 = zext i32 %325 to i64, !mcsema_real_eip !93
  store i64 %341, i64* %RSI_val, !mcsema_real_eip !93
  %342 = load i64* %R11_val, !mcsema_real_eip !94
  %343 = add i64 %342, 4, !mcsema_real_eip !94
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !94
  %345 = bitcast i64* %344 to i32*
  %346 = load i32* %345, !mcsema_real_eip !94
  %347 = zext i32 %346 to i64, !mcsema_real_eip !94
  store i64 %347, i64* %R8_val, !mcsema_real_eip !94
  %348 = load i64* %RBP_val, !mcsema_real_eip !95
  %349 = add i64 %348, -96, !mcsema_real_eip !95
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !95
  %351 = load i64* %350, !mcsema_real_eip !95
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !95
  %352 = add i64 %351, 4, !mcsema_real_eip !96
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !96
  %354 = bitcast i64* %353 to i32*
  %355 = load i32* %354, !mcsema_real_eip !96
  %356 = zext i32 %355 to i64, !mcsema_real_eip !96
  store i64 %356, i64* %R9_val, !mcsema_real_eip !96
  %357 = load i64* %R8_val, !mcsema_real_eip !97
  %358 = trunc i64 %357 to i32, !mcsema_real_eip !97
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %355, i32 %358)
  %359 = extractvalue { i32, i1 } %uadd76, 0
  %360 = xor i32 %359, %358, !mcsema_real_eip !97
  %361 = xor i32 %360, %355, !mcsema_real_eip !97
  %362 = and i32 %361, 16, !mcsema_real_eip !97
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !97
  store i1 %363, i1* %AF_val, !mcsema_real_eip !97
  %364 = icmp slt i32 %359, 0
  store i1 %364, i1* %SF_val, !mcsema_real_eip !97
  %365 = icmp eq i32 %359, 0, !mcsema_real_eip !97
  store i1 %365, i1* %ZF_val, !mcsema_real_eip !97
  %366 = xor i32 %355, -2147483648, !mcsema_real_eip !97
  %367 = xor i32 %366, %358, !mcsema_real_eip !97
  %368 = and i32 %360, %367, !mcsema_real_eip !97
  %369 = icmp slt i32 %368, 0
  store i1 %369, i1* %OF_val, !mcsema_real_eip !97
  %370 = trunc i32 %359 to i8, !mcsema_real_eip !97
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !97
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF_val, !mcsema_real_eip !97
  %374 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %374, i1* %CF_val, !mcsema_real_eip !97
  %375 = zext i32 %359 to i64, !mcsema_real_eip !97
  store i64 %375, i64* %R8_val, !mcsema_real_eip !97
  %376 = load i64* %RBP_val, !mcsema_real_eip !98
  %377 = add i64 %376, -104, !mcsema_real_eip !98
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !98
  %379 = load i64* %378, !mcsema_real_eip !98
  store i64 %379, i64* %RAX_val, !mcsema_real_eip !98
  %380 = add i64 %379, 4, !mcsema_real_eip !99
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !99
  %382 = bitcast i64* %381 to i32*
  %383 = load i32* %382, !mcsema_real_eip !99
  %384 = zext i32 %383 to i64, !mcsema_real_eip !99
  store i64 %384, i64* %R9_val, !mcsema_real_eip !99
  %385 = load i64* %R8_val, !mcsema_real_eip !100
  %386 = trunc i64 %385 to i32, !mcsema_real_eip !100
  %387 = add i32 %383, %386
  %388 = zext i32 %387 to i64, !mcsema_real_eip !100
  store i64 %388, i64* %R8_val, !mcsema_real_eip !100
  %389 = load i64* %RSI_val, !mcsema_real_eip !101
  %390 = trunc i64 %389 to i32, !mcsema_real_eip !101
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %387, i32 %390)
  %391 = extractvalue { i32, i1 } %uadd78, 0
  %392 = xor i32 %391, %390, !mcsema_real_eip !101
  %393 = xor i32 %392, %387, !mcsema_real_eip !101
  %394 = and i32 %393, 16, !mcsema_real_eip !101
  %395 = icmp ne i32 %394, 0, !mcsema_real_eip !101
  store i1 %395, i1* %AF_val, !mcsema_real_eip !101
  %396 = icmp slt i32 %391, 0
  store i1 %396, i1* %SF_val, !mcsema_real_eip !101
  %397 = icmp eq i32 %391, 0, !mcsema_real_eip !101
  store i1 %397, i1* %ZF_val, !mcsema_real_eip !101
  %398 = xor i32 %387, -2147483648, !mcsema_real_eip !101
  %399 = xor i32 %398, %390, !mcsema_real_eip !101
  %400 = and i32 %392, %399, !mcsema_real_eip !101
  %401 = icmp slt i32 %400, 0
  store i1 %401, i1* %OF_val, !mcsema_real_eip !101
  %402 = trunc i32 %391 to i8, !mcsema_real_eip !101
  %403 = tail call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !101
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  store i1 %405, i1* %PF_val, !mcsema_real_eip !101
  %406 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %406, i1* %CF_val, !mcsema_real_eip !101
  %407 = zext i32 %391 to i64, !mcsema_real_eip !101
  store i64 %407, i64* %RSI_val, !mcsema_real_eip !101
  %408 = load i64* %RBP_val, !mcsema_real_eip !102
  %409 = add i64 %408, -116, !mcsema_real_eip !102
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !102
  %411 = bitcast i64* %410 to i32*
  store i32 %391, i32* %411, !mcsema_real_eip !102
  %412 = load i64* %RBP_val, !mcsema_real_eip !103
  %413 = add i64 %412, -32, !mcsema_real_eip !103
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !103
  %415 = bitcast i64* %414 to i32*
  %416 = load i32* %415, !mcsema_real_eip !103
  %417 = zext i32 %416 to i64, !mcsema_real_eip !103
  store i64 %417, i64* %RSI_val, !mcsema_real_eip !103
  %418 = load i64* %RBP_val, !mcsema_real_eip !104
  %419 = add i64 %418, -64, !mcsema_real_eip !104
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !104
  %421 = load i64* %420, !mcsema_real_eip !104
  store i64 %421, i64* %RAX_val, !mcsema_real_eip !104
  %422 = add i64 %421, 8, !mcsema_real_eip !105
  %423 = inttoptr i64 %422 to i64*, !mcsema_real_eip !105
  %424 = bitcast i64* %423 to i32*
  %425 = load i32* %424, !mcsema_real_eip !105
  %426 = zext i32 %425 to i64, !mcsema_real_eip !105
  store i64 %426, i64* %R8_val, !mcsema_real_eip !105
  %427 = load i64* %RSI_val, !mcsema_real_eip !106
  %428 = trunc i64 %427 to i32, !mcsema_real_eip !106
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 %428)
  %429 = extractvalue { i32, i1 } %uadd79, 0
  %430 = xor i32 %429, %428, !mcsema_real_eip !106
  %431 = xor i32 %430, %425, !mcsema_real_eip !106
  %432 = and i32 %431, 16, !mcsema_real_eip !106
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !106
  store i1 %433, i1* %AF_val, !mcsema_real_eip !106
  %434 = icmp slt i32 %429, 0
  store i1 %434, i1* %SF_val, !mcsema_real_eip !106
  %435 = icmp eq i32 %429, 0, !mcsema_real_eip !106
  store i1 %435, i1* %ZF_val, !mcsema_real_eip !106
  %436 = xor i32 %425, -2147483648, !mcsema_real_eip !106
  %437 = xor i32 %436, %428, !mcsema_real_eip !106
  %438 = and i32 %430, %437, !mcsema_real_eip !106
  %439 = icmp slt i32 %438, 0
  store i1 %439, i1* %OF_val, !mcsema_real_eip !106
  %440 = trunc i32 %429 to i8, !mcsema_real_eip !106
  %441 = tail call i8 @llvm.ctpop.i8(i8 %440), !mcsema_real_eip !106
  %442 = and i8 %441, 1
  %443 = icmp eq i8 %442, 0
  store i1 %443, i1* %PF_val, !mcsema_real_eip !106
  %444 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %444, i1* %CF_val, !mcsema_real_eip !106
  %445 = zext i32 %429 to i64, !mcsema_real_eip !106
  store i64 %445, i64* %RSI_val, !mcsema_real_eip !106
  %446 = load i64* %RBP_val, !mcsema_real_eip !107
  %447 = add i64 %446, -72, !mcsema_real_eip !107
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !107
  %449 = load i64* %448, !mcsema_real_eip !107
  store i64 %449, i64* %RAX_val, !mcsema_real_eip !107
  %450 = add i64 %449, 8, !mcsema_real_eip !108
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !108
  %452 = bitcast i64* %451 to i32*
  %453 = load i32* %452, !mcsema_real_eip !108
  %454 = zext i32 %453 to i64, !mcsema_real_eip !108
  store i64 %454, i64* %R8_val, !mcsema_real_eip !108
  %455 = load i64* %RSI_val, !mcsema_real_eip !109
  %456 = trunc i64 %455 to i32, !mcsema_real_eip !109
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %453, i32 %456)
  %457 = extractvalue { i32, i1 } %uadd80, 0
  %458 = xor i32 %457, %456, !mcsema_real_eip !109
  %459 = xor i32 %458, %453, !mcsema_real_eip !109
  %460 = and i32 %459, 16, !mcsema_real_eip !109
  %461 = icmp ne i32 %460, 0, !mcsema_real_eip !109
  store i1 %461, i1* %AF_val, !mcsema_real_eip !109
  %462 = icmp slt i32 %457, 0
  store i1 %462, i1* %SF_val, !mcsema_real_eip !109
  %463 = icmp eq i32 %457, 0, !mcsema_real_eip !109
  store i1 %463, i1* %ZF_val, !mcsema_real_eip !109
  %464 = xor i32 %453, -2147483648, !mcsema_real_eip !109
  %465 = xor i32 %464, %456, !mcsema_real_eip !109
  %466 = and i32 %458, %465, !mcsema_real_eip !109
  %467 = icmp slt i32 %466, 0
  store i1 %467, i1* %OF_val, !mcsema_real_eip !109
  %468 = trunc i32 %457 to i8, !mcsema_real_eip !109
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !109
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF_val, !mcsema_real_eip !109
  %472 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %472, i1* %CF_val, !mcsema_real_eip !109
  %473 = zext i32 %457 to i64, !mcsema_real_eip !109
  store i64 %473, i64* %RSI_val, !mcsema_real_eip !109
  %474 = load i64* %R11_val, !mcsema_real_eip !110
  %475 = add i64 %474, 8, !mcsema_real_eip !110
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !110
  %477 = bitcast i64* %476 to i32*
  %478 = load i32* %477, !mcsema_real_eip !110
  %479 = zext i32 %478 to i64, !mcsema_real_eip !110
  store i64 %479, i64* %R8_val, !mcsema_real_eip !110
  %480 = load i64* %RBP_val, !mcsema_real_eip !111
  %481 = add i64 %480, -96, !mcsema_real_eip !111
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !111
  %483 = load i64* %482, !mcsema_real_eip !111
  store i64 %483, i64* %RAX_val, !mcsema_real_eip !111
  %484 = add i64 %483, 8, !mcsema_real_eip !112
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !112
  %486 = bitcast i64* %485 to i32*
  %487 = load i32* %486, !mcsema_real_eip !112
  %488 = zext i32 %487 to i64, !mcsema_real_eip !112
  store i64 %488, i64* %R9_val, !mcsema_real_eip !112
  %489 = load i64* %R8_val, !mcsema_real_eip !113
  %490 = trunc i64 %489 to i32, !mcsema_real_eip !113
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %487, i32 %490)
  %491 = extractvalue { i32, i1 } %uadd81, 0
  %492 = xor i32 %491, %490, !mcsema_real_eip !113
  %493 = xor i32 %492, %487, !mcsema_real_eip !113
  %494 = and i32 %493, 16, !mcsema_real_eip !113
  %495 = icmp ne i32 %494, 0, !mcsema_real_eip !113
  store i1 %495, i1* %AF_val, !mcsema_real_eip !113
  %496 = icmp slt i32 %491, 0
  store i1 %496, i1* %SF_val, !mcsema_real_eip !113
  %497 = icmp eq i32 %491, 0, !mcsema_real_eip !113
  store i1 %497, i1* %ZF_val, !mcsema_real_eip !113
  %498 = xor i32 %487, -2147483648, !mcsema_real_eip !113
  %499 = xor i32 %498, %490, !mcsema_real_eip !113
  %500 = and i32 %492, %499, !mcsema_real_eip !113
  %501 = icmp slt i32 %500, 0
  store i1 %501, i1* %OF_val, !mcsema_real_eip !113
  %502 = trunc i32 %491 to i8, !mcsema_real_eip !113
  %503 = tail call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !113
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  store i1 %505, i1* %PF_val, !mcsema_real_eip !113
  %506 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %506, i1* %CF_val, !mcsema_real_eip !113
  %507 = zext i32 %491 to i64, !mcsema_real_eip !113
  store i64 %507, i64* %R8_val, !mcsema_real_eip !113
  %508 = load i64* %RBP_val, !mcsema_real_eip !114
  %509 = add i64 %508, -104, !mcsema_real_eip !114
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !114
  %511 = load i64* %510, !mcsema_real_eip !114
  store i64 %511, i64* %RAX_val, !mcsema_real_eip !114
  %512 = add i64 %511, 8, !mcsema_real_eip !115
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !115
  %514 = bitcast i64* %513 to i32*
  %515 = load i32* %514, !mcsema_real_eip !115
  %516 = zext i32 %515 to i64, !mcsema_real_eip !115
  store i64 %516, i64* %R9_val, !mcsema_real_eip !115
  %517 = load i64* %R8_val, !mcsema_real_eip !116
  %518 = trunc i64 %517 to i32, !mcsema_real_eip !116
  %519 = add i32 %515, %518
  %520 = zext i32 %519 to i64, !mcsema_real_eip !116
  store i64 %520, i64* %R8_val, !mcsema_real_eip !116
  %521 = load i64* %RSI_val, !mcsema_real_eip !117
  %522 = trunc i64 %521 to i32, !mcsema_real_eip !117
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %519, i32 %522)
  %523 = extractvalue { i32, i1 } %uadd83, 0
  %524 = xor i32 %523, %522, !mcsema_real_eip !117
  %525 = xor i32 %524, %519, !mcsema_real_eip !117
  %526 = and i32 %525, 16, !mcsema_real_eip !117
  %527 = icmp ne i32 %526, 0, !mcsema_real_eip !117
  store i1 %527, i1* %AF_val, !mcsema_real_eip !117
  %528 = icmp slt i32 %523, 0
  store i1 %528, i1* %SF_val, !mcsema_real_eip !117
  %529 = icmp eq i32 %523, 0, !mcsema_real_eip !117
  store i1 %529, i1* %ZF_val, !mcsema_real_eip !117
  %530 = xor i32 %519, -2147483648, !mcsema_real_eip !117
  %531 = xor i32 %530, %522, !mcsema_real_eip !117
  %532 = and i32 %524, %531, !mcsema_real_eip !117
  %533 = icmp slt i32 %532, 0
  store i1 %533, i1* %OF_val, !mcsema_real_eip !117
  %534 = trunc i32 %523 to i8, !mcsema_real_eip !117
  %535 = tail call i8 @llvm.ctpop.i8(i8 %534), !mcsema_real_eip !117
  %536 = and i8 %535, 1
  %537 = icmp eq i8 %536, 0
  store i1 %537, i1* %PF_val, !mcsema_real_eip !117
  %538 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %538, i1* %CF_val, !mcsema_real_eip !117
  %539 = zext i32 %523 to i64, !mcsema_real_eip !117
  store i64 %539, i64* %RSI_val, !mcsema_real_eip !117
  %540 = load i64* %RBP_val, !mcsema_real_eip !118
  %541 = add i64 %540, -112, !mcsema_real_eip !118
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !118
  %543 = bitcast i64* %542 to i32*
  store i32 %523, i32* %543, !mcsema_real_eip !118
  %544 = load i64* %RBP_val, !mcsema_real_eip !119
  %545 = add i64 %544, -16, !mcsema_real_eip !119
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !119
  %547 = load i64* %RSI_val, !mcsema_real_eip !119
  %548 = trunc i64 %547 to i32, !mcsema_real_eip !119
  %549 = bitcast i64* %546 to i32*
  store i32 %548, i32* %549, !mcsema_real_eip !119
  %550 = load i64* %RBP_val, !mcsema_real_eip !120
  %551 = add i64 %550, -120, !mcsema_real_eip !120
  %552 = inttoptr i64 %551 to i64*, !mcsema_real_eip !120
  %553 = load i64* %552, !mcsema_real_eip !120
  store i64 %553, i64* %RAX_val, !mcsema_real_eip !120
  %554 = add i64 %550, -24, !mcsema_real_eip !121
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !121
  store i64 %553, i64* %555, !mcsema_real_eip !121
  %556 = load i64* %RBP_val, !mcsema_real_eip !122
  %557 = add i64 %556, -16, !mcsema_real_eip !122
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !122
  %559 = bitcast i64* %558 to i32*
  %560 = load i32* %559, !mcsema_real_eip !122
  %561 = zext i32 %560 to i64, !mcsema_real_eip !122
  store i64 %561, i64* %RSI_val, !mcsema_real_eip !122
  %562 = load i64* %RBP_val, !mcsema_real_eip !123
  %563 = add i64 %562, -128, !mcsema_real_eip !123
  %564 = inttoptr i64 %563 to i64*, !mcsema_real_eip !123
  %565 = bitcast i64* %564 to i32*
  store i32 %560, i32* %565, !mcsema_real_eip !123
  %566 = load i64* %RBP_val, !mcsema_real_eip !124
  %567 = add i64 %566, -24, !mcsema_real_eip !124
  %568 = inttoptr i64 %567 to i64*, !mcsema_real_eip !124
  %569 = load i64* %568, !mcsema_real_eip !124
  store i64 %569, i64* %RAX_val, !mcsema_real_eip !124
  %570 = add i64 %566, -136, !mcsema_real_eip !125
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !125
  store i64 %569, i64* %571, !mcsema_real_eip !125
  %572 = load i64* %RBP_val, !mcsema_real_eip !126
  %573 = add i64 %572, -136, !mcsema_real_eip !126
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !126
  %575 = load i64* %574, !mcsema_real_eip !126
  store i64 %575, i64* %RAX_val, !mcsema_real_eip !126
  %576 = add i64 %572, -128, !mcsema_real_eip !127
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !127
  %578 = bitcast i64* %577 to i32*
  %579 = load i32* %578, !mcsema_real_eip !127
  %580 = zext i32 %579 to i64, !mcsema_real_eip !127
  store i64 %580, i64* %RDX_val, !mcsema_real_eip !127
  %581 = load i64* %RSP_val, !mcsema_real_eip !128
  %582 = inttoptr i64 %581 to i64*, !mcsema_real_eip !128
  %583 = load i64* %582, !mcsema_real_eip !128
  store i64 %583, i64* %RBX_val, !mcsema_real_eip !128
  %584 = add i64 %581, 8, !mcsema_real_eip !128
  store i64 %584, i64* %RSP_val, !mcsema_real_eip !128
  %585 = inttoptr i64 %584 to i64*, !mcsema_real_eip !129
  %586 = load i64* %585, !mcsema_real_eip !129
  store i64 %586, i64* %RBP_val, !mcsema_real_eip !129
  %587 = add i64 %581, 24, !mcsema_real_eip !130
  store i64 %587, i64* %RSP_val, !mcsema_real_eip !130
  %588 = load i64* %RAX_val, !mcsema_real_eip !130
  store i64 %588, i64* %RAX, !mcsema_real_eip !130
  %589 = load i64* %RBX_val, !mcsema_real_eip !130
  store i64 %589, i64* %RBX, !mcsema_real_eip !130
  %590 = load i64* %RCX_val, !mcsema_real_eip !130
  store i64 %590, i64* %RCX, !mcsema_real_eip !130
  %591 = load i64* %RDX_val, !mcsema_real_eip !130
  store i64 %591, i64* %RDX, !mcsema_real_eip !130
  %592 = load i64* %RSI_val, !mcsema_real_eip !130
  store i64 %592, i64* %RSI, !mcsema_real_eip !130
  %593 = load i64* %RDI_val, !mcsema_real_eip !130
  store i64 %593, i64* %RDI, !mcsema_real_eip !130
  %594 = load i64* %RSP_val, !mcsema_real_eip !130
  store i64 %594, i64* %RSP, !mcsema_real_eip !130
  %595 = load i64* %RBP_val, !mcsema_real_eip !130
  store i64 %595, i64* %RBP, !mcsema_real_eip !130
  %596 = load i64* %R8_val, !mcsema_real_eip !130
  store i64 %596, i64* %R8, !mcsema_real_eip !130
  %597 = load i64* %R9_val, !mcsema_real_eip !130
  store i64 %597, i64* %R9, !mcsema_real_eip !130
  %598 = load i64* %R10_val, !mcsema_real_eip !130
  store i64 %598, i64* %R10, !mcsema_real_eip !130
  %599 = load i64* %R11_val, !mcsema_real_eip !130
  store i64 %599, i64* %R11, !mcsema_real_eip !130
  %600 = load i64* %R12_val, !mcsema_real_eip !130
  store i64 %600, i64* %R12, !mcsema_real_eip !130
  %601 = load i64* %R13_val, !mcsema_real_eip !130
  store i64 %601, i64* %R13, !mcsema_real_eip !130
  %602 = load i64* %R14_val, !mcsema_real_eip !130
  store i64 %602, i64* %R14, !mcsema_real_eip !130
  %603 = load i64* %R15_val, !mcsema_real_eip !130
  store i64 %603, i64* %R15, !mcsema_real_eip !130
  %604 = load i64* %RIP_val, !mcsema_real_eip !130
  store i64 %604, i64* %RIP, !mcsema_real_eip !130
  %605 = load i1* %CF_val, !mcsema_real_eip !130
  store i1 %605, i1* %CF, align 1, !mcsema_real_eip !130
  %606 = load i1* %PF_val, !mcsema_real_eip !130
  store i1 %606, i1* %PF, align 1, !mcsema_real_eip !130
  %607 = load i1* %AF_val, !mcsema_real_eip !130
  store i1 %607, i1* %AF, align 1, !mcsema_real_eip !130
  %608 = load i1* %ZF_val, !mcsema_real_eip !130
  store i1 %608, i1* %ZF, align 1, !mcsema_real_eip !130
  %609 = load i1* %SF_val, !mcsema_real_eip !130
  store i1 %609, i1* %SF, align 1, !mcsema_real_eip !130
  %610 = load i1* %OF_val, !mcsema_real_eip !130
  store i1 %610, i1* %OF, align 1, !mcsema_real_eip !130
  %611 = load i1* %DF_val, !mcsema_real_eip !130
  store i1 %611, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %612 = load i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %612, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %613 = load i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %613, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %614 = load i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %614, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %615 = load i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %615, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %616 = load i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %616, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %617 = load i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %617, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %618 = load i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %618, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %619 = load i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %619, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %620 = load i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %620, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %621 = load i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %621, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %622 = load i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %622, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %623 = load i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %623, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %624 = load i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %624, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %625 = load i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %625, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %626 = load i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %626, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %627 = load i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %627, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %628 = load i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %628, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %629 = load i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %629, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %630 = load i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %630, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %631 = load i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %631, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %632 = load i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %632, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %633 = load i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %633, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %634 = load i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %634, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %635 = load i64* %53, align 4
  store i64 %635, i64* %52, align 4
  %636 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %636, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %637 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %637, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %638 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %638, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %639 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %639, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %640 = load i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %640, i128* %XMM0, align 1, !mcsema_real_eip !130
  %641 = load i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %641, i128* %XMM1, align 1, !mcsema_real_eip !130
  %642 = load i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %642, i128* %XMM2, align 1, !mcsema_real_eip !130
  %643 = load i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %643, i128* %XMM3, align 1, !mcsema_real_eip !130
  %644 = load i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %644, i128* %XMM4, align 1, !mcsema_real_eip !130
  %645 = load i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %645, i128* %XMM5, align 1, !mcsema_real_eip !130
  %646 = load i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %646, i128* %XMM6, align 1, !mcsema_real_eip !130
  %647 = load i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %647, i128* %XMM7, align 1, !mcsema_real_eip !130
  %648 = load i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %648, i128* %XMM8, align 1, !mcsema_real_eip !130
  %649 = load i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %649, i128* %XMM9, align 1, !mcsema_real_eip !130
  %650 = load i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %650, i128* %XMM10, align 1, !mcsema_real_eip !130
  %651 = load i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %651, i128* %XMM11, align 1, !mcsema_real_eip !130
  %652 = load i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %652, i128* %XMM12, align 1, !mcsema_real_eip !130
  %653 = load i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %653, i128* %XMM13, align 1, !mcsema_real_eip !130
  %654 = load i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %654, i128* %XMM14, align 1, !mcsema_real_eip !130
  %655 = load i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %655, i128* %XMM15, align 1, !mcsema_real_eip !130
  %656 = load i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %656, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %657 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %657, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_110(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_01(%struct.regs*, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 144
  %_local_stack_start_ptr_ = getelementptr inbounds i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 144
  %R15_val = alloca i64, !mcsema_real_eip !53
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !53
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !53
  %XMM15_val = alloca i128, !mcsema_real_eip !53
  %XMM14_val = alloca i128, !mcsema_real_eip !53
  %XMM13_val = alloca i128, !mcsema_real_eip !53
  %XMM12_val = alloca i128, !mcsema_real_eip !53
  %XMM11_val = alloca i128, !mcsema_real_eip !53
  %XMM10_val = alloca i128, !mcsema_real_eip !53
  %XMM9_val = alloca i128, !mcsema_real_eip !53
  %XMM8_val = alloca i128, !mcsema_real_eip !53
  %XMM7_val = alloca i128, !mcsema_real_eip !53
  %XMM6_val = alloca i128, !mcsema_real_eip !53
  %XMM5_val = alloca i128, !mcsema_real_eip !53
  %XMM4_val = alloca i128, !mcsema_real_eip !53
  %XMM3_val = alloca i128, !mcsema_real_eip !53
  %XMM2_val = alloca i128, !mcsema_real_eip !53
  %XMM1_val = alloca i128, !mcsema_real_eip !53
  %XMM0_val = alloca i128, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !53
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !53
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !53
  %FPU_IM_val = alloca i1, !mcsema_real_eip !53
  %FPU_DM_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !53
  %FPU_OM_val = alloca i1, !mcsema_real_eip !53
  %FPU_UM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PM_val = alloca i1, !mcsema_real_eip !53
  %FPU_PC_val = alloca i2, !mcsema_real_eip !53
  %FPU_RC_val = alloca i2, !mcsema_real_eip !53
  %FPU_X_val = alloca i1, !mcsema_real_eip !53
  %FPU_IE_val = alloca i1, !mcsema_real_eip !53
  %FPU_DE_val = alloca i1, !mcsema_real_eip !53
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !53
  %FPU_OE_val = alloca i1, !mcsema_real_eip !53
  %FPU_UE_val = alloca i1, !mcsema_real_eip !53
  %FPU_PE_val = alloca i1, !mcsema_real_eip !53
  %FPU_SF_val = alloca i1, !mcsema_real_eip !53
  %FPU_ES_val = alloca i1, !mcsema_real_eip !53
  %FPU_C0_val = alloca i1, !mcsema_real_eip !53
  %FPU_C1_val = alloca i1, !mcsema_real_eip !53
  %FPU_C2_val = alloca i1, !mcsema_real_eip !53
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !53
  %FPU_C3_val = alloca i1, !mcsema_real_eip !53
  %FPU_B_val = alloca i1, !mcsema_real_eip !53
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !53
  %DF_val = alloca i1, !mcsema_real_eip !53
  %OF_val = alloca i1, !mcsema_real_eip !53
  %SF_val = alloca i1, !mcsema_real_eip !53
  %CF_val = alloca i1, !mcsema_real_eip !53
  %AF_val = alloca i1, !mcsema_real_eip !53
  %PF_val = alloca i1, !mcsema_real_eip !53
  %ZF_val = alloca i1, !mcsema_real_eip !53
  %RIP_val = alloca i64, !mcsema_real_eip !53
  %R14_val = alloca i64, !mcsema_real_eip !53
  %R13_val = alloca i64, !mcsema_real_eip !53
  %R12_val = alloca i64, !mcsema_real_eip !53
  %R11_val = alloca i64, !mcsema_real_eip !53
  %R10_val = alloca i64, !mcsema_real_eip !53
  %R9_val = alloca i64, !mcsema_real_eip !53
  %R8_val = alloca i64, !mcsema_real_eip !53
  %RSP_val = alloca i64, !mcsema_real_eip !53
  %RBP_val = alloca i64, !mcsema_real_eip !53
  %RDI_val = alloca i64, !mcsema_real_eip !53
  %RSI_val = alloca i64, !mcsema_real_eip !53
  %RDX_val = alloca i64, !mcsema_real_eip !53
  %RCX_val = alloca i64, !mcsema_real_eip !53
  %RBX_val = alloca i64, !mcsema_real_eip !53
  %RAX_val = alloca i64, !mcsema_real_eip !53
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !53
  %1 = load i64* %RAX, !mcsema_real_eip !53
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !53
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !53
  %2 = load i64* %RBX, !mcsema_real_eip !53
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !53
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !53
  %3 = load i64* %RCX, !mcsema_real_eip !53
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !53
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !53
  %4 = load i64* %RDX, !mcsema_real_eip !53
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !53
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !53
  %5 = load i64* %RSI, !mcsema_real_eip !53
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !53
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !53
  %6 = load i64* %RDI, !mcsema_real_eip !53
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !53
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !53
  %7 = load i64* %RSP, !mcsema_real_eip !53
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !53
  %8 = load i64* %RBP, !mcsema_real_eip !53
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !53
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !53
  %9 = load i64* %R8, !mcsema_real_eip !53
  store i64 %9, i64* %R8_val, !mcsema_real_eip !53
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !53
  %10 = load i64* %R9, !mcsema_real_eip !53
  store i64 %10, i64* %R9_val, !mcsema_real_eip !53
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !53
  %11 = load i64* %R10, !mcsema_real_eip !53
  store i64 %11, i64* %R10_val, !mcsema_real_eip !53
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !53
  %12 = load i64* %R11, !mcsema_real_eip !53
  store i64 %12, i64* %R11_val, !mcsema_real_eip !53
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !53
  %13 = load i64* %R12, !mcsema_real_eip !53
  store i64 %13, i64* %R12_val, !mcsema_real_eip !53
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !53
  %14 = load i64* %R13, !mcsema_real_eip !53
  store i64 %14, i64* %R13_val, !mcsema_real_eip !53
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !53
  %15 = load i64* %R14, !mcsema_real_eip !53
  store i64 %15, i64* %R14_val, !mcsema_real_eip !53
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !53
  %16 = load i64* %R15, !mcsema_real_eip !53
  store i64 %16, i64* %R15_val, !mcsema_real_eip !53
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !53
  %17 = load i64* %RIP, !mcsema_real_eip !53
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !53
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !53
  %18 = load i1* %CF, align 1, !mcsema_real_eip !53
  store i1 %18, i1* %CF_val, !mcsema_real_eip !53
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !53
  %19 = load i1* %PF, align 1, !mcsema_real_eip !53
  store i1 %19, i1* %PF_val, !mcsema_real_eip !53
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !53
  %20 = load i1* %AF, align 1, !mcsema_real_eip !53
  store i1 %20, i1* %AF_val, !mcsema_real_eip !53
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !53
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !53
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !53
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !53
  %22 = load i1* %SF, align 1, !mcsema_real_eip !53
  store i1 %22, i1* %SF_val, !mcsema_real_eip !53
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !53
  %23 = load i1* %OF, align 1, !mcsema_real_eip !53
  store i1 %23, i1* %OF_val, !mcsema_real_eip !53
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !53
  %24 = load i1* %DF, align 1, !mcsema_real_eip !53
  store i1 %24, i1* %DF_val, !mcsema_real_eip !53
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !53
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !53
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !53
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !53
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !53
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !53
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !53
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !53
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !53
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !53
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !53
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !53
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !53
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !53
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !53
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !53
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !53
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !53
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !53
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !53
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !53
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !53
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !53
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !53
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !53
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !53
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !53
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !53
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !53
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !53
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !53
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !53
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !53
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !53
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !53
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !53
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !53
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !53
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !53
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !53
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !53
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !53
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !53
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !53
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !53
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !53
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !53
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !53
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !53
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !53
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !53
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !53
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !53
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !53
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !53
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !53
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !53
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !53
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !53
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !53
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !53
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !53
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !53
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !53
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !53
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !53
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !53
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !53
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !53
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !53
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !53
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !53
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !53
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !53
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
  br i1 %_cond6_, label %54, label %56

; <label>:54                                      ; preds = %entry
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_, i32 0, i32 0))
  %_address_in_parent_stack_1 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_
  br label %56

; <label>:56                                      ; preds = %54, %entry
  %57 = phi i64 [ %_head_p2i_, %entry ], [ %_address_in_parent_stack_1, %54 ]
  %_address_ptr_in_parent_stack_ = inttoptr i64 %57 to i64*
  %_new_load_ = load i64* %_address_ptr_in_parent_stack_
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !53
  %58 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !53
  store i16 %58, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !53
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !53
  %59 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !53
  store i64 %59, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !53
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !53
  %60 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !53
  store i16 %60, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !53
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !53
  %61 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !53
  store i64 %61, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !53
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !53
  %62 = load i128* %XMM0, align 1, !mcsema_real_eip !53
  store i128 %62, i128* %XMM0_val, !mcsema_real_eip !53
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !53
  %63 = load i128* %XMM1, align 1, !mcsema_real_eip !53
  store i128 %63, i128* %XMM1_val, !mcsema_real_eip !53
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !53
  %64 = load i128* %XMM2, align 1, !mcsema_real_eip !53
  store i128 %64, i128* %XMM2_val, !mcsema_real_eip !53
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !53
  %65 = load i128* %XMM3, align 1, !mcsema_real_eip !53
  store i128 %65, i128* %XMM3_val, !mcsema_real_eip !53
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !53
  %66 = load i128* %XMM4, align 1, !mcsema_real_eip !53
  store i128 %66, i128* %XMM4_val, !mcsema_real_eip !53
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !53
  %67 = load i128* %XMM5, align 1, !mcsema_real_eip !53
  store i128 %67, i128* %XMM5_val, !mcsema_real_eip !53
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !53
  %68 = load i128* %XMM6, align 1, !mcsema_real_eip !53
  store i128 %68, i128* %XMM6_val, !mcsema_real_eip !53
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !53
  %69 = load i128* %XMM7, align 1, !mcsema_real_eip !53
  store i128 %69, i128* %XMM7_val, !mcsema_real_eip !53
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !53
  %70 = load i128* %XMM8, align 1, !mcsema_real_eip !53
  store i128 %70, i128* %XMM8_val, !mcsema_real_eip !53
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !53
  %71 = load i128* %XMM9, align 1, !mcsema_real_eip !53
  store i128 %71, i128* %XMM9_val, !mcsema_real_eip !53
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !53
  %72 = load i128* %XMM10, align 1, !mcsema_real_eip !53
  store i128 %72, i128* %XMM10_val, !mcsema_real_eip !53
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !53
  %73 = load i128* %XMM11, align 1, !mcsema_real_eip !53
  store i128 %73, i128* %XMM11_val, !mcsema_real_eip !53
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !53
  %74 = load i128* %XMM12, align 1, !mcsema_real_eip !53
  store i128 %74, i128* %XMM12_val, !mcsema_real_eip !53
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !53
  %75 = load i128* %XMM13, align 1, !mcsema_real_eip !53
  store i128 %75, i128* %XMM13_val, !mcsema_real_eip !53
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !53
  %76 = load i128* %XMM14, align 1, !mcsema_real_eip !53
  store i128 %76, i128* %XMM14_val, !mcsema_real_eip !53
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !53
  %77 = load i128* %XMM15, align 1, !mcsema_real_eip !53
  store i128 %77, i128* %XMM15_val, !mcsema_real_eip !53
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !53
  %78 = load i64* %STACK_BASE, !mcsema_real_eip !53
  store i64 %78, i64* %STACK_BASE_val, !mcsema_real_eip !53
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !53
  %79 = load i64* %STACK_LIMIT, !mcsema_real_eip !53
  store i64 %79, i64* %STACK_LIMIT_val, !mcsema_real_eip !53
  %80 = load i64* %RBP_val, !mcsema_real_eip !53
  %81 = load i64* %RSP_val, !mcsema_real_eip !53
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !53
  store i64 %80, i64* %83, !mcsema_real_eip !53
  store i64 %82, i64* %RBP_val, !mcsema_real_eip !54
  %84 = load i64* %RBX_val, !mcsema_real_eip !55
  %85 = add i64 %81, -16
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !55
  store i64 %84, i64* %86, !mcsema_real_eip !55
  store i64 %85, i64* %RSP_val, !mcsema_real_eip !55
  %87 = load i64* %RBP_val, !mcsema_real_eip !56
  %88 = add i64 %87, 48, !mcsema_real_eip !56
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !56
  %_head_p2i_2 = ptrtoint i64* %89 to i64
  %_offset_above_rbp_3 = sub i64 %_head_p2i_2, %_local_stack_end_
  %_address_in_parent_stack_4 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  %_cond0_5 = icmp ugt i64 %_head_p2i_2, %_local_stack_end_
  %_cond1_6 = icmp ugt i64 %_head_p2i_2, %_parent_stack_end_ptr_
  %_cond2_7 = icmp ult i64 %_head_p2i_2, %_parent_stack_start_ptr_
  %_cond3_8 = or i1 %_cond1_6, %_cond2_7
  %_cond4_9 = icmp ule i64 %_address_in_parent_stack_4, %_parent_stack_end_ptr_
  %_cond5_10 = and i1 %_cond0_5, %_cond3_8
  %_cond6_11 = and i1 %_cond5_10, %_cond4_9
  br i1 %_cond6_11, label %90, label %92

; <label>:90                                      ; preds = %56
  %91 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_2, i32 0, i32 0))
  %_address_in_parent_stack_12 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  br label %92

; <label>:92                                      ; preds = %90, %56
  %93 = phi i64 [ %_head_p2i_2, %56 ], [ %_address_in_parent_stack_12, %90 ]
  %_address_ptr_in_parent_stack_13 = inttoptr i64 %93 to i64*
  %_new_load_14 = load i64* %_address_ptr_in_parent_stack_13
  store i64 %_new_load_14, i64* %RAX_val, !mcsema_real_eip !56
  %94 = add i64 %87, 40, !mcsema_real_eip !57
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !57
  %_head_p2i_15 = ptrtoint i64* %95 to i64
  %_offset_above_rbp_16 = sub i64 %_head_p2i_15, %_local_stack_end_
  %_address_in_parent_stack_17 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  %_cond0_18 = icmp ugt i64 %_head_p2i_15, %_local_stack_end_
  %_cond1_19 = icmp ugt i64 %_head_p2i_15, %_parent_stack_end_ptr_
  %_cond2_20 = icmp ult i64 %_head_p2i_15, %_parent_stack_start_ptr_
  %_cond3_21 = or i1 %_cond1_19, %_cond2_20
  %_cond4_22 = icmp ule i64 %_address_in_parent_stack_17, %_parent_stack_end_ptr_
  %_cond5_23 = and i1 %_cond0_18, %_cond3_21
  %_cond6_24 = and i1 %_cond5_23, %_cond4_22
  br i1 %_cond6_24, label %96, label %98

; <label>:96                                      ; preds = %92
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_3, i32 0, i32 0))
  %_address_in_parent_stack_25 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  br label %98

; <label>:98                                      ; preds = %96, %92
  %99 = phi i64 [ %_head_p2i_15, %92 ], [ %_address_in_parent_stack_25, %96 ]
  %_address_ptr_in_parent_stack_26 = inttoptr i64 %99 to i64*
  %_new_load_27 = load i64* %_address_ptr_in_parent_stack_26
  store i64 %_new_load_27, i64* %R10_val, !mcsema_real_eip !57
  %100 = load i64* %RBP_val, !mcsema_real_eip !58
  %101 = add i64 %100, 24, !mcsema_real_eip !58
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !58
  %103 = ptrtoint i64* %102 to i64, !mcsema_real_eip !58
  store i64 %103, i64* %R11_val, !mcsema_real_eip !58
  %104 = add i64 %100, 16, !mcsema_real_eip !59
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !59
  %106 = bitcast i64* %105 to i32*
  %_head_p2i_28 = ptrtoint i32* %106 to i64
  %_offset_above_rbp_29 = sub i64 %_head_p2i_28, %_local_stack_end_
  %_address_in_parent_stack_30 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  %_cond0_31 = icmp ugt i64 %_head_p2i_28, %_local_stack_end_
  %_cond1_32 = icmp ugt i64 %_head_p2i_28, %_parent_stack_end_ptr_
  %_cond2_33 = icmp ult i64 %_head_p2i_28, %_parent_stack_start_ptr_
  %_cond3_34 = or i1 %_cond1_32, %_cond2_33
  %_cond4_35 = icmp ule i64 %_address_in_parent_stack_30, %_parent_stack_end_ptr_
  %_cond5_36 = and i1 %_cond0_31, %_cond3_34
  %_cond6_37 = and i1 %_cond5_36, %_cond4_35
  br i1 %_cond6_37, label %107, label %109

; <label>:107                                     ; preds = %98
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_4, i32 0, i32 0))
  %_address_in_parent_stack_38 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  br label %109

; <label>:109                                     ; preds = %107, %98
  %110 = phi i64 [ %_head_p2i_28, %98 ], [ %_address_in_parent_stack_38, %107 ]
  %_address_ptr_in_parent_stack_39 = inttoptr i64 %110 to i32*
  %_new_load_40 = load i32* %_address_ptr_in_parent_stack_39
  %111 = zext i32 %_new_load_40 to i64, !mcsema_real_eip !59
  store i64 %111, i64* %RBX_val, !mcsema_real_eip !59
  %112 = load i64* %RBP_val, !mcsema_real_eip !60
  %113 = add i64 %112, -56, !mcsema_real_eip !60
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !60
  %115 = load i64* %RDI_val, !mcsema_real_eip !60
  store i64 %115, i64* %114, !mcsema_real_eip !60
  %116 = load i64* %RBP_val, !mcsema_real_eip !61
  %117 = add i64 %116, -48, !mcsema_real_eip !61
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !61
  %119 = load i64* %RSI_val, !mcsema_real_eip !61
  %120 = trunc i64 %119 to i32, !mcsema_real_eip !61
  %121 = bitcast i64* %118 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !61
  %122 = load i64* %RBP_val, !mcsema_real_eip !62
  %123 = add i64 %122, -32, !mcsema_real_eip !62
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !62
  %125 = load i64* %RSI_val, !mcsema_real_eip !62
  %126 = trunc i64 %125 to i32, !mcsema_real_eip !62
  %127 = bitcast i64* %124 to i32*
  store i32 %126, i32* %127, !mcsema_real_eip !62
  %128 = load i64* %RBP_val, !mcsema_real_eip !63
  %129 = add i64 %128, -56, !mcsema_real_eip !63
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !63
  %_head_p2i_41 = ptrtoint i64* %130 to i64
  %_offset_above_rbp_42 = sub i64 %_head_p2i_41, %_local_stack_end_
  %_address_in_parent_stack_43 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  %_cond0_44 = icmp ugt i64 %_head_p2i_41, %_local_stack_end_
  %_cond1_45 = icmp ugt i64 %_head_p2i_41, %_parent_stack_end_ptr_
  %_cond2_46 = icmp ult i64 %_head_p2i_41, %_parent_stack_start_ptr_
  %_cond3_47 = or i1 %_cond1_45, %_cond2_46
  %_cond4_48 = icmp ule i64 %_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond5_49 = and i1 %_cond0_44, %_cond3_47
  %_cond6_50 = and i1 %_cond5_49, %_cond4_48
  br i1 %_cond6_50, label %131, label %133

; <label>:131                                     ; preds = %109
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_5, i32 0, i32 0))
  %_address_in_parent_stack_51 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  br label %133

; <label>:133                                     ; preds = %131, %109
  %134 = phi i64 [ %_head_p2i_41, %109 ], [ %_address_in_parent_stack_51, %131 ]
  %_address_ptr_in_parent_stack_52 = inttoptr i64 %134 to i64*
  %_new_load_53 = load i64* %_address_ptr_in_parent_stack_52
  store i64 %_new_load_53, i64* %RDI_val, !mcsema_real_eip !63
  %135 = add i64 %128, -40, !mcsema_real_eip !64
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !64
  store i64 %_new_load_53, i64* %136, !mcsema_real_eip !64
  %137 = load i64* %RBP_val, !mcsema_real_eip !65
  %138 = add i64 %137, -64, !mcsema_real_eip !65
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !65
  %140 = load i64* %RDX_val, !mcsema_real_eip !65
  store i64 %140, i64* %139, !mcsema_real_eip !65
  %141 = load i64* %RBP_val, !mcsema_real_eip !66
  %142 = add i64 %141, -72, !mcsema_real_eip !66
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !66
  %144 = load i64* %RCX_val, !mcsema_real_eip !66
  store i64 %144, i64* %143, !mcsema_real_eip !66
  %145 = load i64* %RBP_val, !mcsema_real_eip !67
  %146 = add i64 %145, -76, !mcsema_real_eip !67
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !67
  %148 = load i64* %R8_val, !mcsema_real_eip !67
  %149 = trunc i64 %148 to i32, !mcsema_real_eip !67
  %150 = bitcast i64* %147 to i32*
  store i32 %149, i32* %150, !mcsema_real_eip !67
  %151 = load i64* %RBP_val, !mcsema_real_eip !68
  %152 = add i64 %151, -80, !mcsema_real_eip !68
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !68
  %154 = load i64* %R9_val, !mcsema_real_eip !68
  %155 = trunc i64 %154 to i32, !mcsema_real_eip !68
  %156 = bitcast i64* %153 to i32*
  store i32 %155, i32* %156, !mcsema_real_eip !68
  %157 = load i64* %RBP_val, !mcsema_real_eip !69
  %158 = add i64 %157, -84, !mcsema_real_eip !69
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !69
  %160 = load i64* %RBX_val, !mcsema_real_eip !69
  %161 = trunc i64 %160 to i32, !mcsema_real_eip !69
  %162 = bitcast i64* %159 to i32*
  store i32 %161, i32* %162, !mcsema_real_eip !69
  %163 = load i64* %RBP_val, !mcsema_real_eip !70
  %164 = add i64 %163, -96, !mcsema_real_eip !70
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !70
  %166 = load i64* %R10_val, !mcsema_real_eip !70
  store i64 %166, i64* %165, !mcsema_real_eip !70
  %167 = load i64* %RBP_val, !mcsema_real_eip !71
  %168 = add i64 %167, -104, !mcsema_real_eip !71
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !71
  %170 = load i64* %RAX_val, !mcsema_real_eip !71
  store i64 %170, i64* %169, !mcsema_real_eip !71
  %171 = load i64* %RBP_val, !mcsema_real_eip !72
  %172 = add i64 %171, -40, !mcsema_real_eip !72
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !72
  %174 = bitcast i64* %173 to i32*
  %_head_p2i_54 = ptrtoint i32* %174 to i64
  %_offset_above_rbp_55 = sub i64 %_head_p2i_54, %_local_stack_end_
  %_address_in_parent_stack_56 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  %_cond0_57 = icmp ugt i64 %_head_p2i_54, %_local_stack_end_
  %_cond1_58 = icmp ugt i64 %_head_p2i_54, %_parent_stack_end_ptr_
  %_cond2_59 = icmp ult i64 %_head_p2i_54, %_parent_stack_start_ptr_
  %_cond3_60 = or i1 %_cond1_58, %_cond2_59
  %_cond4_61 = icmp ule i64 %_address_in_parent_stack_56, %_parent_stack_end_ptr_
  %_cond5_62 = and i1 %_cond0_57, %_cond3_60
  %_cond6_63 = and i1 %_cond5_62, %_cond4_61
  br i1 %_cond6_63, label %175, label %177

; <label>:175                                     ; preds = %133
  %176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_6, i32 0, i32 0))
  %_address_in_parent_stack_64 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  br label %177

; <label>:177                                     ; preds = %175, %133
  %178 = phi i64 [ %_head_p2i_54, %133 ], [ %_address_in_parent_stack_64, %175 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %178 to i32*
  %_new_load_66 = load i32* %_address_ptr_in_parent_stack_65
  %179 = zext i32 %_new_load_66 to i64, !mcsema_real_eip !72
  store i64 %179, i64* %RSI_val, !mcsema_real_eip !72
  %180 = load i64* %RBP_val, !mcsema_real_eip !73
  %181 = add i64 %180, -64, !mcsema_real_eip !73
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !73
  %_head_p2i_67 = ptrtoint i64* %182 to i64
  %_offset_above_rbp_68 = sub i64 %_head_p2i_67, %_local_stack_end_
  %_address_in_parent_stack_69 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  %_cond0_70 = icmp ugt i64 %_head_p2i_67, %_local_stack_end_
  %_cond1_71 = icmp ugt i64 %_head_p2i_67, %_parent_stack_end_ptr_
  %_cond2_72 = icmp ult i64 %_head_p2i_67, %_parent_stack_start_ptr_
  %_cond3_73 = or i1 %_cond1_71, %_cond2_72
  %_cond4_74 = icmp ule i64 %_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond5_75 = and i1 %_cond0_70, %_cond3_73
  %_cond6_76 = and i1 %_cond5_75, %_cond4_74
  br i1 %_cond6_76, label %183, label %185

; <label>:183                                     ; preds = %177
  %184 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_7, i32 0, i32 0))
  %_address_in_parent_stack_77 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  br label %185

; <label>:185                                     ; preds = %183, %177
  %186 = phi i64 [ %_head_p2i_67, %177 ], [ %_address_in_parent_stack_77, %183 ]
  %_address_ptr_in_parent_stack_78 = inttoptr i64 %186 to i64*
  %_new_load_79 = load i64* %_address_ptr_in_parent_stack_78
  store i64 %_new_load_79, i64* %RCX_val, !mcsema_real_eip !73
  %187 = inttoptr i64 %_new_load_79 to i64*, !mcsema_real_eip !74
  %188 = bitcast i64* %187 to i32*
  %_head_p2i_80 = ptrtoint i32* %188 to i64
  %_offset_above_rbp_81 = sub i64 %_head_p2i_80, %_local_stack_end_
  %_address_in_parent_stack_82 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  %_cond0_83 = icmp ugt i64 %_head_p2i_80, %_local_stack_end_
  %_cond1_84 = icmp ugt i64 %_head_p2i_80, %_parent_stack_end_ptr_
  %_cond2_85 = icmp ult i64 %_head_p2i_80, %_parent_stack_start_ptr_
  %_cond3_86 = or i1 %_cond1_84, %_cond2_85
  %_cond4_87 = icmp ule i64 %_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond5_88 = and i1 %_cond0_83, %_cond3_86
  %_cond6_89 = and i1 %_cond5_88, %_cond4_87
  br i1 %_cond6_89, label %189, label %191

; <label>:189                                     ; preds = %185
  %190 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_8, i32 0, i32 0))
  %_address_in_parent_stack_90 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  br label %191

; <label>:191                                     ; preds = %189, %185
  %192 = phi i64 [ %_head_p2i_80, %185 ], [ %_address_in_parent_stack_90, %189 ]
  %_address_ptr_in_parent_stack_91 = inttoptr i64 %192 to i32*
  %_new_load_92 = load i32* %_address_ptr_in_parent_stack_91
  %193 = zext i32 %_new_load_92 to i64, !mcsema_real_eip !74
  store i64 %193, i64* %R8_val, !mcsema_real_eip !74
  %194 = load i64* %RSI_val, !mcsema_real_eip !75
  %195 = trunc i64 %194 to i32, !mcsema_real_eip !75
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_92, i32 %195)
  %196 = extractvalue { i32, i1 } %uadd, 0
  %197 = xor i32 %196, %195, !mcsema_real_eip !75
  %198 = xor i32 %197, %_new_load_92, !mcsema_real_eip !75
  %199 = and i32 %198, 16, !mcsema_real_eip !75
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !75
  store i1 %200, i1* %AF_val, !mcsema_real_eip !75
  %201 = icmp slt i32 %196, 0
  store i1 %201, i1* %SF_val, !mcsema_real_eip !75
  %202 = icmp eq i32 %196, 0, !mcsema_real_eip !75
  store i1 %202, i1* %ZF_val, !mcsema_real_eip !75
  %203 = xor i32 %_new_load_92, -2147483648, !mcsema_real_eip !75
  %204 = xor i32 %203, %195, !mcsema_real_eip !75
  %205 = and i32 %197, %204, !mcsema_real_eip !75
  %206 = icmp slt i32 %205, 0
  store i1 %206, i1* %OF_val, !mcsema_real_eip !75
  %207 = trunc i32 %196 to i8, !mcsema_real_eip !75
  %208 = tail call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !75
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %PF_val, !mcsema_real_eip !75
  %211 = extractvalue { i32, i1 } %uadd, 1
  store i1 %211, i1* %CF_val, !mcsema_real_eip !75
  %212 = zext i32 %196 to i64, !mcsema_real_eip !75
  store i64 %212, i64* %RSI_val, !mcsema_real_eip !75
  %213 = load i64* %RBP_val, !mcsema_real_eip !76
  %214 = add i64 %213, -72, !mcsema_real_eip !76
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !76
  %_head_p2i_93 = ptrtoint i64* %215 to i64
  %_offset_above_rbp_94 = sub i64 %_head_p2i_93, %_local_stack_end_
  %_address_in_parent_stack_95 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  %_cond0_96 = icmp ugt i64 %_head_p2i_93, %_local_stack_end_
  %_cond1_97 = icmp ugt i64 %_head_p2i_93, %_parent_stack_end_ptr_
  %_cond2_98 = icmp ult i64 %_head_p2i_93, %_parent_stack_start_ptr_
  %_cond3_99 = or i1 %_cond1_97, %_cond2_98
  %_cond4_100 = icmp ule i64 %_address_in_parent_stack_95, %_parent_stack_end_ptr_
  %_cond5_101 = and i1 %_cond0_96, %_cond3_99
  %_cond6_102 = and i1 %_cond5_101, %_cond4_100
  br i1 %_cond6_102, label %216, label %218

; <label>:216                                     ; preds = %191
  %217 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_9, i32 0, i32 0))
  %_address_in_parent_stack_103 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  br label %218

; <label>:218                                     ; preds = %216, %191
  %219 = phi i64 [ %_head_p2i_93, %191 ], [ %_address_in_parent_stack_103, %216 ]
  %_address_ptr_in_parent_stack_104 = inttoptr i64 %219 to i64*
  %_new_load_105 = load i64* %_address_ptr_in_parent_stack_104
  store i64 %_new_load_105, i64* %RCX_val, !mcsema_real_eip !76
  %220 = inttoptr i64 %_new_load_105 to i64*, !mcsema_real_eip !77
  %221 = bitcast i64* %220 to i32*
  %_head_p2i_106 = ptrtoint i32* %221 to i64
  %_offset_above_rbp_107 = sub i64 %_head_p2i_106, %_local_stack_end_
  %_address_in_parent_stack_108 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  %_cond0_109 = icmp ugt i64 %_head_p2i_106, %_local_stack_end_
  %_cond1_110 = icmp ugt i64 %_head_p2i_106, %_parent_stack_end_ptr_
  %_cond2_111 = icmp ult i64 %_head_p2i_106, %_parent_stack_start_ptr_
  %_cond3_112 = or i1 %_cond1_110, %_cond2_111
  %_cond4_113 = icmp ule i64 %_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond5_114 = and i1 %_cond0_109, %_cond3_112
  %_cond6_115 = and i1 %_cond5_114, %_cond4_113
  br i1 %_cond6_115, label %222, label %224

; <label>:222                                     ; preds = %218
  %223 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @_debug_parent_stack_10, i32 0, i32 0))
  %_address_in_parent_stack_116 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  br label %224

; <label>:224                                     ; preds = %222, %218
  %225 = phi i64 [ %_head_p2i_106, %218 ], [ %_address_in_parent_stack_116, %222 ]
  %_address_ptr_in_parent_stack_117 = inttoptr i64 %225 to i32*
  %_new_load_118 = load i32* %_address_ptr_in_parent_stack_117
  %226 = zext i32 %_new_load_118 to i64, !mcsema_real_eip !77
  store i64 %226, i64* %R8_val, !mcsema_real_eip !77
  %227 = load i64* %RSI_val, !mcsema_real_eip !78
  %228 = trunc i64 %227 to i32, !mcsema_real_eip !78
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_118, i32 %228)
  %229 = extractvalue { i32, i1 } %uadd70, 0
  %230 = xor i32 %229, %228, !mcsema_real_eip !78
  %231 = xor i32 %230, %_new_load_118, !mcsema_real_eip !78
  %232 = and i32 %231, 16, !mcsema_real_eip !78
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !78
  store i1 %233, i1* %AF_val, !mcsema_real_eip !78
  %234 = icmp slt i32 %229, 0
  store i1 %234, i1* %SF_val, !mcsema_real_eip !78
  %235 = icmp eq i32 %229, 0, !mcsema_real_eip !78
  store i1 %235, i1* %ZF_val, !mcsema_real_eip !78
  %236 = xor i32 %_new_load_118, -2147483648, !mcsema_real_eip !78
  %237 = xor i32 %236, %228, !mcsema_real_eip !78
  %238 = and i32 %230, %237, !mcsema_real_eip !78
  %239 = icmp slt i32 %238, 0
  store i1 %239, i1* %OF_val, !mcsema_real_eip !78
  %240 = trunc i32 %229 to i8, !mcsema_real_eip !78
  %241 = tail call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !78
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  store i1 %243, i1* %PF_val, !mcsema_real_eip !78
  %244 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %244, i1* %CF_val, !mcsema_real_eip !78
  %245 = zext i32 %229 to i64, !mcsema_real_eip !78
  store i64 %245, i64* %RSI_val, !mcsema_real_eip !78
  %246 = load i64* %R11_val, !mcsema_real_eip !79
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !79
  %248 = bitcast i64* %247 to i32*
  %_head_p2i_119 = ptrtoint i32* %248 to i64
  %_offset_above_rbp_120 = sub i64 %_head_p2i_119, %_local_stack_end_
  %_address_in_parent_stack_121 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  %_cond0_122 = icmp ugt i64 %_head_p2i_119, %_local_stack_end_
  %_cond1_123 = icmp ugt i64 %_head_p2i_119, %_parent_stack_end_ptr_
  %_cond2_124 = icmp ult i64 %_head_p2i_119, %_parent_stack_start_ptr_
  %_cond3_125 = or i1 %_cond1_123, %_cond2_124
  %_cond4_126 = icmp ule i64 %_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond5_127 = and i1 %_cond0_122, %_cond3_125
  %_cond6_128 = and i1 %_cond5_127, %_cond4_126
  br i1 %_cond6_128, label %249, label %251

; <label>:249                                     ; preds = %224
  %250 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_11, i32 0, i32 0))
  %_address_in_parent_stack_129 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  br label %251

; <label>:251                                     ; preds = %249, %224
  %252 = phi i64 [ %_head_p2i_119, %224 ], [ %_address_in_parent_stack_129, %249 ]
  %_address_ptr_in_parent_stack_130 = inttoptr i64 %252 to i32*
  %_new_load_131 = load i32* %_address_ptr_in_parent_stack_130
  %253 = zext i32 %_new_load_131 to i64, !mcsema_real_eip !79
  store i64 %253, i64* %R8_val, !mcsema_real_eip !79
  %254 = load i64* %RBP_val, !mcsema_real_eip !80
  %255 = add i64 %254, -96, !mcsema_real_eip !80
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !80
  %_head_p2i_132 = ptrtoint i64* %256 to i64
  %_offset_above_rbp_133 = sub i64 %_head_p2i_132, %_local_stack_end_
  %_address_in_parent_stack_134 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  %_cond0_135 = icmp ugt i64 %_head_p2i_132, %_local_stack_end_
  %_cond1_136 = icmp ugt i64 %_head_p2i_132, %_parent_stack_end_ptr_
  %_cond2_137 = icmp ult i64 %_head_p2i_132, %_parent_stack_start_ptr_
  %_cond3_138 = or i1 %_cond1_136, %_cond2_137
  %_cond4_139 = icmp ule i64 %_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond5_140 = and i1 %_cond0_135, %_cond3_138
  %_cond6_141 = and i1 %_cond5_140, %_cond4_139
  br i1 %_cond6_141, label %257, label %259

; <label>:257                                     ; preds = %251
  %258 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_12, i32 0, i32 0))
  %_address_in_parent_stack_142 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  br label %259

; <label>:259                                     ; preds = %257, %251
  %260 = phi i64 [ %_head_p2i_132, %251 ], [ %_address_in_parent_stack_142, %257 ]
  %_address_ptr_in_parent_stack_143 = inttoptr i64 %260 to i64*
  %_new_load_144 = load i64* %_address_ptr_in_parent_stack_143
  store i64 %_new_load_144, i64* %RCX_val, !mcsema_real_eip !80
  %261 = inttoptr i64 %_new_load_144 to i64*, !mcsema_real_eip !81
  %262 = bitcast i64* %261 to i32*
  %_head_p2i_145 = ptrtoint i32* %262 to i64
  %_offset_above_rbp_146 = sub i64 %_head_p2i_145, %_local_stack_end_
  %_address_in_parent_stack_147 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  %_cond0_148 = icmp ugt i64 %_head_p2i_145, %_local_stack_end_
  %_cond1_149 = icmp ugt i64 %_head_p2i_145, %_parent_stack_end_ptr_
  %_cond2_150 = icmp ult i64 %_head_p2i_145, %_parent_stack_start_ptr_
  %_cond3_151 = or i1 %_cond1_149, %_cond2_150
  %_cond4_152 = icmp ule i64 %_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond5_153 = and i1 %_cond0_148, %_cond3_151
  %_cond6_154 = and i1 %_cond5_153, %_cond4_152
  br i1 %_cond6_154, label %263, label %265

; <label>:263                                     ; preds = %259
  %264 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_13, i32 0, i32 0))
  %_address_in_parent_stack_155 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  br label %265

; <label>:265                                     ; preds = %263, %259
  %266 = phi i64 [ %_head_p2i_145, %259 ], [ %_address_in_parent_stack_155, %263 ]
  %_address_ptr_in_parent_stack_156 = inttoptr i64 %266 to i32*
  %_new_load_157 = load i32* %_address_ptr_in_parent_stack_156
  %267 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !81
  store i64 %267, i64* %R9_val, !mcsema_real_eip !81
  %268 = load i64* %R8_val, !mcsema_real_eip !82
  %269 = trunc i64 %268 to i32, !mcsema_real_eip !82
  %uadd71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_157, i32 %269)
  %270 = extractvalue { i32, i1 } %uadd71, 0
  %271 = xor i32 %270, %269, !mcsema_real_eip !82
  %272 = xor i32 %271, %_new_load_157, !mcsema_real_eip !82
  %273 = and i32 %272, 16, !mcsema_real_eip !82
  %274 = icmp ne i32 %273, 0, !mcsema_real_eip !82
  store i1 %274, i1* %AF_val, !mcsema_real_eip !82
  %275 = icmp slt i32 %270, 0
  store i1 %275, i1* %SF_val, !mcsema_real_eip !82
  %276 = icmp eq i32 %270, 0, !mcsema_real_eip !82
  store i1 %276, i1* %ZF_val, !mcsema_real_eip !82
  %277 = xor i32 %_new_load_157, -2147483648, !mcsema_real_eip !82
  %278 = xor i32 %277, %269, !mcsema_real_eip !82
  %279 = and i32 %271, %278, !mcsema_real_eip !82
  %280 = icmp slt i32 %279, 0
  store i1 %280, i1* %OF_val, !mcsema_real_eip !82
  %281 = trunc i32 %270 to i8, !mcsema_real_eip !82
  %282 = tail call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !82
  %283 = and i8 %282, 1
  %284 = icmp eq i8 %283, 0
  store i1 %284, i1* %PF_val, !mcsema_real_eip !82
  %285 = extractvalue { i32, i1 } %uadd71, 1
  store i1 %285, i1* %CF_val, !mcsema_real_eip !82
  %286 = zext i32 %270 to i64, !mcsema_real_eip !82
  store i64 %286, i64* %R8_val, !mcsema_real_eip !82
  %287 = load i64* %RAX_val, !mcsema_real_eip !83
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !83
  %289 = bitcast i64* %288 to i32*
  %_head_p2i_158 = ptrtoint i32* %289 to i64
  %_offset_above_rbp_159 = sub i64 %_head_p2i_158, %_local_stack_end_
  %_address_in_parent_stack_160 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_159
  %_cond0_161 = icmp ugt i64 %_head_p2i_158, %_local_stack_end_
  %_cond1_162 = icmp ugt i64 %_head_p2i_158, %_parent_stack_end_ptr_
  %_cond2_163 = icmp ult i64 %_head_p2i_158, %_parent_stack_start_ptr_
  %_cond3_164 = or i1 %_cond1_162, %_cond2_163
  %_cond4_165 = icmp ule i64 %_address_in_parent_stack_160, %_parent_stack_end_ptr_
  %_cond5_166 = and i1 %_cond0_161, %_cond3_164
  %_cond6_167 = and i1 %_cond5_166, %_cond4_165
  br i1 %_cond6_167, label %290, label %292

; <label>:290                                     ; preds = %265
  %291 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_14, i32 0, i32 0))
  %_address_in_parent_stack_168 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_159
  br label %292

; <label>:292                                     ; preds = %290, %265
  %293 = phi i64 [ %_head_p2i_158, %265 ], [ %_address_in_parent_stack_168, %290 ]
  %_address_ptr_in_parent_stack_169 = inttoptr i64 %293 to i32*
  %_new_load_170 = load i32* %_address_ptr_in_parent_stack_169
  %294 = zext i32 %_new_load_170 to i64, !mcsema_real_eip !83
  store i64 %294, i64* %R9_val, !mcsema_real_eip !83
  %295 = load i64* %R8_val, !mcsema_real_eip !84
  %296 = trunc i64 %295 to i32, !mcsema_real_eip !84
  %297 = add i32 %_new_load_170, %296
  %298 = zext i32 %297 to i64, !mcsema_real_eip !84
  store i64 %298, i64* %R8_val, !mcsema_real_eip !84
  %299 = load i64* %RSI_val, !mcsema_real_eip !85
  %300 = trunc i64 %299 to i32, !mcsema_real_eip !85
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %297, i32 %300)
  %301 = extractvalue { i32, i1 } %uadd73, 0
  %302 = xor i32 %301, %300, !mcsema_real_eip !85
  %303 = xor i32 %302, %297, !mcsema_real_eip !85
  %304 = and i32 %303, 16, !mcsema_real_eip !85
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !85
  store i1 %305, i1* %AF_val, !mcsema_real_eip !85
  %306 = icmp slt i32 %301, 0
  store i1 %306, i1* %SF_val, !mcsema_real_eip !85
  %307 = icmp eq i32 %301, 0, !mcsema_real_eip !85
  store i1 %307, i1* %ZF_val, !mcsema_real_eip !85
  %308 = xor i32 %297, -2147483648, !mcsema_real_eip !85
  %309 = xor i32 %308, %300, !mcsema_real_eip !85
  %310 = and i32 %302, %309, !mcsema_real_eip !85
  %311 = icmp slt i32 %310, 0
  store i1 %311, i1* %OF_val, !mcsema_real_eip !85
  %312 = trunc i32 %301 to i8, !mcsema_real_eip !85
  %313 = tail call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !85
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  store i1 %315, i1* %PF_val, !mcsema_real_eip !85
  %316 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %316, i1* %CF_val, !mcsema_real_eip !85
  %317 = zext i32 %301 to i64, !mcsema_real_eip !85
  store i64 %317, i64* %RSI_val, !mcsema_real_eip !85
  %318 = load i64* %RBP_val, !mcsema_real_eip !86
  %319 = add i64 %318, -120, !mcsema_real_eip !86
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !86
  %321 = bitcast i64* %320 to i32*
  store i32 %301, i32* %321, !mcsema_real_eip !86
  %322 = load i64* %RBP_val, !mcsema_real_eip !87
  %323 = add i64 %322, -36, !mcsema_real_eip !87
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !87
  %325 = bitcast i64* %324 to i32*
  %_head_p2i_171 = ptrtoint i32* %325 to i64
  %_offset_above_rbp_172 = sub i64 %_head_p2i_171, %_local_stack_end_
  %_address_in_parent_stack_173 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_172
  %_cond0_174 = icmp ugt i64 %_head_p2i_171, %_local_stack_end_
  %_cond1_175 = icmp ugt i64 %_head_p2i_171, %_parent_stack_end_ptr_
  %_cond2_176 = icmp ult i64 %_head_p2i_171, %_parent_stack_start_ptr_
  %_cond3_177 = or i1 %_cond1_175, %_cond2_176
  %_cond4_178 = icmp ule i64 %_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond5_179 = and i1 %_cond0_174, %_cond3_177
  %_cond6_180 = and i1 %_cond5_179, %_cond4_178
  br i1 %_cond6_180, label %326, label %328

; <label>:326                                     ; preds = %292
  %327 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_15, i32 0, i32 0))
  %_address_in_parent_stack_181 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_172
  br label %328

; <label>:328                                     ; preds = %326, %292
  %329 = phi i64 [ %_head_p2i_171, %292 ], [ %_address_in_parent_stack_181, %326 ]
  %_address_ptr_in_parent_stack_182 = inttoptr i64 %329 to i32*
  %_new_load_183 = load i32* %_address_ptr_in_parent_stack_182
  %330 = zext i32 %_new_load_183 to i64, !mcsema_real_eip !87
  store i64 %330, i64* %RSI_val, !mcsema_real_eip !87
  %331 = load i64* %RBP_val, !mcsema_real_eip !88
  %332 = add i64 %331, -64, !mcsema_real_eip !88
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !88
  %_head_p2i_184 = ptrtoint i64* %333 to i64
  %_offset_above_rbp_185 = sub i64 %_head_p2i_184, %_local_stack_end_
  %_address_in_parent_stack_186 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_185
  %_cond0_187 = icmp ugt i64 %_head_p2i_184, %_local_stack_end_
  %_cond1_188 = icmp ugt i64 %_head_p2i_184, %_parent_stack_end_ptr_
  %_cond2_189 = icmp ult i64 %_head_p2i_184, %_parent_stack_start_ptr_
  %_cond3_190 = or i1 %_cond1_188, %_cond2_189
  %_cond4_191 = icmp ule i64 %_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond5_192 = and i1 %_cond0_187, %_cond3_190
  %_cond6_193 = and i1 %_cond5_192, %_cond4_191
  br i1 %_cond6_193, label %334, label %336

; <label>:334                                     ; preds = %328
  %335 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_16, i32 0, i32 0))
  %_address_in_parent_stack_194 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_185
  br label %336

; <label>:336                                     ; preds = %334, %328
  %337 = phi i64 [ %_head_p2i_184, %328 ], [ %_address_in_parent_stack_194, %334 ]
  %_address_ptr_in_parent_stack_195 = inttoptr i64 %337 to i64*
  %_new_load_196 = load i64* %_address_ptr_in_parent_stack_195
  store i64 %_new_load_196, i64* %RAX_val, !mcsema_real_eip !88
  %338 = add i64 %_new_load_196, 4, !mcsema_real_eip !89
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !89
  %340 = bitcast i64* %339 to i32*
  %_head_p2i_197 = ptrtoint i32* %340 to i64
  %_offset_above_rbp_198 = sub i64 %_head_p2i_197, %_local_stack_end_
  %_address_in_parent_stack_199 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_198
  %_cond0_200 = icmp ugt i64 %_head_p2i_197, %_local_stack_end_
  %_cond1_201 = icmp ugt i64 %_head_p2i_197, %_parent_stack_end_ptr_
  %_cond2_202 = icmp ult i64 %_head_p2i_197, %_parent_stack_start_ptr_
  %_cond3_203 = or i1 %_cond1_201, %_cond2_202
  %_cond4_204 = icmp ule i64 %_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond5_205 = and i1 %_cond0_200, %_cond3_203
  %_cond6_206 = and i1 %_cond5_205, %_cond4_204
  br i1 %_cond6_206, label %341, label %343

; <label>:341                                     ; preds = %336
  %342 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_17, i32 0, i32 0))
  %_address_in_parent_stack_207 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_198
  br label %343

; <label>:343                                     ; preds = %341, %336
  %344 = phi i64 [ %_head_p2i_197, %336 ], [ %_address_in_parent_stack_207, %341 ]
  %_address_ptr_in_parent_stack_208 = inttoptr i64 %344 to i32*
  %_new_load_209 = load i32* %_address_ptr_in_parent_stack_208
  %345 = zext i32 %_new_load_209 to i64, !mcsema_real_eip !89
  store i64 %345, i64* %R8_val, !mcsema_real_eip !89
  %346 = load i64* %RSI_val, !mcsema_real_eip !90
  %347 = trunc i64 %346 to i32, !mcsema_real_eip !90
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_209, i32 %347)
  %348 = extractvalue { i32, i1 } %uadd74, 0
  %349 = xor i32 %348, %347, !mcsema_real_eip !90
  %350 = xor i32 %349, %_new_load_209, !mcsema_real_eip !90
  %351 = and i32 %350, 16, !mcsema_real_eip !90
  %352 = icmp ne i32 %351, 0, !mcsema_real_eip !90
  store i1 %352, i1* %AF_val, !mcsema_real_eip !90
  %353 = icmp slt i32 %348, 0
  store i1 %353, i1* %SF_val, !mcsema_real_eip !90
  %354 = icmp eq i32 %348, 0, !mcsema_real_eip !90
  store i1 %354, i1* %ZF_val, !mcsema_real_eip !90
  %355 = xor i32 %_new_load_209, -2147483648, !mcsema_real_eip !90
  %356 = xor i32 %355, %347, !mcsema_real_eip !90
  %357 = and i32 %349, %356, !mcsema_real_eip !90
  %358 = icmp slt i32 %357, 0
  store i1 %358, i1* %OF_val, !mcsema_real_eip !90
  %359 = trunc i32 %348 to i8, !mcsema_real_eip !90
  %360 = tail call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !90
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  store i1 %362, i1* %PF_val, !mcsema_real_eip !90
  %363 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %363, i1* %CF_val, !mcsema_real_eip !90
  %364 = zext i32 %348 to i64, !mcsema_real_eip !90
  store i64 %364, i64* %RSI_val, !mcsema_real_eip !90
  %365 = load i64* %RBP_val, !mcsema_real_eip !91
  %366 = add i64 %365, -72, !mcsema_real_eip !91
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !91
  %_head_p2i_210 = ptrtoint i64* %367 to i64
  %_offset_above_rbp_211 = sub i64 %_head_p2i_210, %_local_stack_end_
  %_address_in_parent_stack_212 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_211
  %_cond0_213 = icmp ugt i64 %_head_p2i_210, %_local_stack_end_
  %_cond1_214 = icmp ugt i64 %_head_p2i_210, %_parent_stack_end_ptr_
  %_cond2_215 = icmp ult i64 %_head_p2i_210, %_parent_stack_start_ptr_
  %_cond3_216 = or i1 %_cond1_214, %_cond2_215
  %_cond4_217 = icmp ule i64 %_address_in_parent_stack_212, %_parent_stack_end_ptr_
  %_cond5_218 = and i1 %_cond0_213, %_cond3_216
  %_cond6_219 = and i1 %_cond5_218, %_cond4_217
  br i1 %_cond6_219, label %368, label %370

; <label>:368                                     ; preds = %343
  %369 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_18, i32 0, i32 0))
  %_address_in_parent_stack_220 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_211
  br label %370

; <label>:370                                     ; preds = %368, %343
  %371 = phi i64 [ %_head_p2i_210, %343 ], [ %_address_in_parent_stack_220, %368 ]
  %_address_ptr_in_parent_stack_221 = inttoptr i64 %371 to i64*
  %_new_load_222 = load i64* %_address_ptr_in_parent_stack_221
  store i64 %_new_load_222, i64* %RAX_val, !mcsema_real_eip !91
  %372 = add i64 %_new_load_222, 4, !mcsema_real_eip !92
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !92
  %374 = bitcast i64* %373 to i32*
  %_head_p2i_223 = ptrtoint i32* %374 to i64
  %_offset_above_rbp_224 = sub i64 %_head_p2i_223, %_local_stack_end_
  %_address_in_parent_stack_225 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_224
  %_cond0_226 = icmp ugt i64 %_head_p2i_223, %_local_stack_end_
  %_cond1_227 = icmp ugt i64 %_head_p2i_223, %_parent_stack_end_ptr_
  %_cond2_228 = icmp ult i64 %_head_p2i_223, %_parent_stack_start_ptr_
  %_cond3_229 = or i1 %_cond1_227, %_cond2_228
  %_cond4_230 = icmp ule i64 %_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond5_231 = and i1 %_cond0_226, %_cond3_229
  %_cond6_232 = and i1 %_cond5_231, %_cond4_230
  br i1 %_cond6_232, label %375, label %377

; <label>:375                                     ; preds = %370
  %376 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_19, i32 0, i32 0))
  %_address_in_parent_stack_233 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_224
  br label %377

; <label>:377                                     ; preds = %375, %370
  %378 = phi i64 [ %_head_p2i_223, %370 ], [ %_address_in_parent_stack_233, %375 ]
  %_address_ptr_in_parent_stack_234 = inttoptr i64 %378 to i32*
  %_new_load_235 = load i32* %_address_ptr_in_parent_stack_234
  %379 = zext i32 %_new_load_235 to i64, !mcsema_real_eip !92
  store i64 %379, i64* %R8_val, !mcsema_real_eip !92
  %380 = load i64* %RSI_val, !mcsema_real_eip !93
  %381 = trunc i64 %380 to i32, !mcsema_real_eip !93
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_235, i32 %381)
  %382 = extractvalue { i32, i1 } %uadd75, 0
  %383 = xor i32 %382, %381, !mcsema_real_eip !93
  %384 = xor i32 %383, %_new_load_235, !mcsema_real_eip !93
  %385 = and i32 %384, 16, !mcsema_real_eip !93
  %386 = icmp ne i32 %385, 0, !mcsema_real_eip !93
  store i1 %386, i1* %AF_val, !mcsema_real_eip !93
  %387 = icmp slt i32 %382, 0
  store i1 %387, i1* %SF_val, !mcsema_real_eip !93
  %388 = icmp eq i32 %382, 0, !mcsema_real_eip !93
  store i1 %388, i1* %ZF_val, !mcsema_real_eip !93
  %389 = xor i32 %_new_load_235, -2147483648, !mcsema_real_eip !93
  %390 = xor i32 %389, %381, !mcsema_real_eip !93
  %391 = and i32 %383, %390, !mcsema_real_eip !93
  %392 = icmp slt i32 %391, 0
  store i1 %392, i1* %OF_val, !mcsema_real_eip !93
  %393 = trunc i32 %382 to i8, !mcsema_real_eip !93
  %394 = tail call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !93
  %395 = and i8 %394, 1
  %396 = icmp eq i8 %395, 0
  store i1 %396, i1* %PF_val, !mcsema_real_eip !93
  %397 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %397, i1* %CF_val, !mcsema_real_eip !93
  %398 = zext i32 %382 to i64, !mcsema_real_eip !93
  store i64 %398, i64* %RSI_val, !mcsema_real_eip !93
  %399 = load i64* %R11_val, !mcsema_real_eip !94
  %400 = add i64 %399, 4, !mcsema_real_eip !94
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !94
  %402 = bitcast i64* %401 to i32*
  %_head_p2i_236 = ptrtoint i32* %402 to i64
  %_offset_above_rbp_237 = sub i64 %_head_p2i_236, %_local_stack_end_
  %_address_in_parent_stack_238 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_237
  %_cond0_239 = icmp ugt i64 %_head_p2i_236, %_local_stack_end_
  %_cond1_240 = icmp ugt i64 %_head_p2i_236, %_parent_stack_end_ptr_
  %_cond2_241 = icmp ult i64 %_head_p2i_236, %_parent_stack_start_ptr_
  %_cond3_242 = or i1 %_cond1_240, %_cond2_241
  %_cond4_243 = icmp ule i64 %_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond5_244 = and i1 %_cond0_239, %_cond3_242
  %_cond6_245 = and i1 %_cond5_244, %_cond4_243
  br i1 %_cond6_245, label %403, label %405

; <label>:403                                     ; preds = %377
  %404 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_20, i32 0, i32 0))
  %_address_in_parent_stack_246 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_237
  br label %405

; <label>:405                                     ; preds = %403, %377
  %406 = phi i64 [ %_head_p2i_236, %377 ], [ %_address_in_parent_stack_246, %403 ]
  %_address_ptr_in_parent_stack_247 = inttoptr i64 %406 to i32*
  %_new_load_248 = load i32* %_address_ptr_in_parent_stack_247
  %407 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !94
  store i64 %407, i64* %R8_val, !mcsema_real_eip !94
  %408 = load i64* %RBP_val, !mcsema_real_eip !95
  %409 = add i64 %408, -96, !mcsema_real_eip !95
  %410 = inttoptr i64 %409 to i64*, !mcsema_real_eip !95
  %_head_p2i_249 = ptrtoint i64* %410 to i64
  %_offset_above_rbp_250 = sub i64 %_head_p2i_249, %_local_stack_end_
  %_address_in_parent_stack_251 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_250
  %_cond0_252 = icmp ugt i64 %_head_p2i_249, %_local_stack_end_
  %_cond1_253 = icmp ugt i64 %_head_p2i_249, %_parent_stack_end_ptr_
  %_cond2_254 = icmp ult i64 %_head_p2i_249, %_parent_stack_start_ptr_
  %_cond3_255 = or i1 %_cond1_253, %_cond2_254
  %_cond4_256 = icmp ule i64 %_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond5_257 = and i1 %_cond0_252, %_cond3_255
  %_cond6_258 = and i1 %_cond5_257, %_cond4_256
  br i1 %_cond6_258, label %411, label %413

; <label>:411                                     ; preds = %405
  %412 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_21, i32 0, i32 0))
  %_address_in_parent_stack_259 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_250
  br label %413

; <label>:413                                     ; preds = %411, %405
  %414 = phi i64 [ %_head_p2i_249, %405 ], [ %_address_in_parent_stack_259, %411 ]
  %_address_ptr_in_parent_stack_260 = inttoptr i64 %414 to i64*
  %_new_load_261 = load i64* %_address_ptr_in_parent_stack_260
  store i64 %_new_load_261, i64* %RAX_val, !mcsema_real_eip !95
  %415 = add i64 %_new_load_261, 4, !mcsema_real_eip !96
  %416 = inttoptr i64 %415 to i64*, !mcsema_real_eip !96
  %417 = bitcast i64* %416 to i32*
  %_head_p2i_262 = ptrtoint i32* %417 to i64
  %_offset_above_rbp_263 = sub i64 %_head_p2i_262, %_local_stack_end_
  %_address_in_parent_stack_264 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_263
  %_cond0_265 = icmp ugt i64 %_head_p2i_262, %_local_stack_end_
  %_cond1_266 = icmp ugt i64 %_head_p2i_262, %_parent_stack_end_ptr_
  %_cond2_267 = icmp ult i64 %_head_p2i_262, %_parent_stack_start_ptr_
  %_cond3_268 = or i1 %_cond1_266, %_cond2_267
  %_cond4_269 = icmp ule i64 %_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond5_270 = and i1 %_cond0_265, %_cond3_268
  %_cond6_271 = and i1 %_cond5_270, %_cond4_269
  br i1 %_cond6_271, label %418, label %420

; <label>:418                                     ; preds = %413
  %419 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_22, i32 0, i32 0))
  %_address_in_parent_stack_272 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_263
  br label %420

; <label>:420                                     ; preds = %418, %413
  %421 = phi i64 [ %_head_p2i_262, %413 ], [ %_address_in_parent_stack_272, %418 ]
  %_address_ptr_in_parent_stack_273 = inttoptr i64 %421 to i32*
  %_new_load_274 = load i32* %_address_ptr_in_parent_stack_273
  %422 = zext i32 %_new_load_274 to i64, !mcsema_real_eip !96
  store i64 %422, i64* %R9_val, !mcsema_real_eip !96
  %423 = load i64* %R8_val, !mcsema_real_eip !97
  %424 = trunc i64 %423 to i32, !mcsema_real_eip !97
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_274, i32 %424)
  %425 = extractvalue { i32, i1 } %uadd76, 0
  %426 = xor i32 %425, %424, !mcsema_real_eip !97
  %427 = xor i32 %426, %_new_load_274, !mcsema_real_eip !97
  %428 = and i32 %427, 16, !mcsema_real_eip !97
  %429 = icmp ne i32 %428, 0, !mcsema_real_eip !97
  store i1 %429, i1* %AF_val, !mcsema_real_eip !97
  %430 = icmp slt i32 %425, 0
  store i1 %430, i1* %SF_val, !mcsema_real_eip !97
  %431 = icmp eq i32 %425, 0, !mcsema_real_eip !97
  store i1 %431, i1* %ZF_val, !mcsema_real_eip !97
  %432 = xor i32 %_new_load_274, -2147483648, !mcsema_real_eip !97
  %433 = xor i32 %432, %424, !mcsema_real_eip !97
  %434 = and i32 %426, %433, !mcsema_real_eip !97
  %435 = icmp slt i32 %434, 0
  store i1 %435, i1* %OF_val, !mcsema_real_eip !97
  %436 = trunc i32 %425 to i8, !mcsema_real_eip !97
  %437 = tail call i8 @llvm.ctpop.i8(i8 %436), !mcsema_real_eip !97
  %438 = and i8 %437, 1
  %439 = icmp eq i8 %438, 0
  store i1 %439, i1* %PF_val, !mcsema_real_eip !97
  %440 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %440, i1* %CF_val, !mcsema_real_eip !97
  %441 = zext i32 %425 to i64, !mcsema_real_eip !97
  store i64 %441, i64* %R8_val, !mcsema_real_eip !97
  %442 = load i64* %RBP_val, !mcsema_real_eip !98
  %443 = add i64 %442, -104, !mcsema_real_eip !98
  %444 = inttoptr i64 %443 to i64*, !mcsema_real_eip !98
  %_head_p2i_275 = ptrtoint i64* %444 to i64
  %_offset_above_rbp_276 = sub i64 %_head_p2i_275, %_local_stack_end_
  %_address_in_parent_stack_277 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_276
  %_cond0_278 = icmp ugt i64 %_head_p2i_275, %_local_stack_end_
  %_cond1_279 = icmp ugt i64 %_head_p2i_275, %_parent_stack_end_ptr_
  %_cond2_280 = icmp ult i64 %_head_p2i_275, %_parent_stack_start_ptr_
  %_cond3_281 = or i1 %_cond1_279, %_cond2_280
  %_cond4_282 = icmp ule i64 %_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond5_283 = and i1 %_cond0_278, %_cond3_281
  %_cond6_284 = and i1 %_cond5_283, %_cond4_282
  br i1 %_cond6_284, label %445, label %447

; <label>:445                                     ; preds = %420
  %446 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_23, i32 0, i32 0))
  %_address_in_parent_stack_285 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_276
  br label %447

; <label>:447                                     ; preds = %445, %420
  %448 = phi i64 [ %_head_p2i_275, %420 ], [ %_address_in_parent_stack_285, %445 ]
  %_address_ptr_in_parent_stack_286 = inttoptr i64 %448 to i64*
  %_new_load_287 = load i64* %_address_ptr_in_parent_stack_286
  store i64 %_new_load_287, i64* %RAX_val, !mcsema_real_eip !98
  %449 = add i64 %_new_load_287, 4, !mcsema_real_eip !99
  %450 = inttoptr i64 %449 to i64*, !mcsema_real_eip !99
  %451 = bitcast i64* %450 to i32*
  %_head_p2i_288 = ptrtoint i32* %451 to i64
  %_offset_above_rbp_289 = sub i64 %_head_p2i_288, %_local_stack_end_
  %_address_in_parent_stack_290 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_289
  %_cond0_291 = icmp ugt i64 %_head_p2i_288, %_local_stack_end_
  %_cond1_292 = icmp ugt i64 %_head_p2i_288, %_parent_stack_end_ptr_
  %_cond2_293 = icmp ult i64 %_head_p2i_288, %_parent_stack_start_ptr_
  %_cond3_294 = or i1 %_cond1_292, %_cond2_293
  %_cond4_295 = icmp ule i64 %_address_in_parent_stack_290, %_parent_stack_end_ptr_
  %_cond5_296 = and i1 %_cond0_291, %_cond3_294
  %_cond6_297 = and i1 %_cond5_296, %_cond4_295
  br i1 %_cond6_297, label %452, label %454

; <label>:452                                     ; preds = %447
  %453 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_24, i32 0, i32 0))
  %_address_in_parent_stack_298 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_289
  br label %454

; <label>:454                                     ; preds = %452, %447
  %455 = phi i64 [ %_head_p2i_288, %447 ], [ %_address_in_parent_stack_298, %452 ]
  %_address_ptr_in_parent_stack_299 = inttoptr i64 %455 to i32*
  %_new_load_300 = load i32* %_address_ptr_in_parent_stack_299
  %456 = zext i32 %_new_load_300 to i64, !mcsema_real_eip !99
  store i64 %456, i64* %R9_val, !mcsema_real_eip !99
  %457 = load i64* %R8_val, !mcsema_real_eip !100
  %458 = trunc i64 %457 to i32, !mcsema_real_eip !100
  %459 = add i32 %_new_load_300, %458
  %460 = zext i32 %459 to i64, !mcsema_real_eip !100
  store i64 %460, i64* %R8_val, !mcsema_real_eip !100
  %461 = load i64* %RSI_val, !mcsema_real_eip !101
  %462 = trunc i64 %461 to i32, !mcsema_real_eip !101
  %uadd78 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %459, i32 %462)
  %463 = extractvalue { i32, i1 } %uadd78, 0
  %464 = xor i32 %463, %462, !mcsema_real_eip !101
  %465 = xor i32 %464, %459, !mcsema_real_eip !101
  %466 = and i32 %465, 16, !mcsema_real_eip !101
  %467 = icmp ne i32 %466, 0, !mcsema_real_eip !101
  store i1 %467, i1* %AF_val, !mcsema_real_eip !101
  %468 = icmp slt i32 %463, 0
  store i1 %468, i1* %SF_val, !mcsema_real_eip !101
  %469 = icmp eq i32 %463, 0, !mcsema_real_eip !101
  store i1 %469, i1* %ZF_val, !mcsema_real_eip !101
  %470 = xor i32 %459, -2147483648, !mcsema_real_eip !101
  %471 = xor i32 %470, %462, !mcsema_real_eip !101
  %472 = and i32 %464, %471, !mcsema_real_eip !101
  %473 = icmp slt i32 %472, 0
  store i1 %473, i1* %OF_val, !mcsema_real_eip !101
  %474 = trunc i32 %463 to i8, !mcsema_real_eip !101
  %475 = tail call i8 @llvm.ctpop.i8(i8 %474), !mcsema_real_eip !101
  %476 = and i8 %475, 1
  %477 = icmp eq i8 %476, 0
  store i1 %477, i1* %PF_val, !mcsema_real_eip !101
  %478 = extractvalue { i32, i1 } %uadd78, 1
  store i1 %478, i1* %CF_val, !mcsema_real_eip !101
  %479 = zext i32 %463 to i64, !mcsema_real_eip !101
  store i64 %479, i64* %RSI_val, !mcsema_real_eip !101
  %480 = load i64* %RBP_val, !mcsema_real_eip !102
  %481 = add i64 %480, -116, !mcsema_real_eip !102
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !102
  %483 = bitcast i64* %482 to i32*
  store i32 %463, i32* %483, !mcsema_real_eip !102
  %484 = load i64* %RBP_val, !mcsema_real_eip !103
  %485 = add i64 %484, -32, !mcsema_real_eip !103
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !103
  %487 = bitcast i64* %486 to i32*
  %_head_p2i_301 = ptrtoint i32* %487 to i64
  %_offset_above_rbp_302 = sub i64 %_head_p2i_301, %_local_stack_end_
  %_address_in_parent_stack_303 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_302
  %_cond0_304 = icmp ugt i64 %_head_p2i_301, %_local_stack_end_
  %_cond1_305 = icmp ugt i64 %_head_p2i_301, %_parent_stack_end_ptr_
  %_cond2_306 = icmp ult i64 %_head_p2i_301, %_parent_stack_start_ptr_
  %_cond3_307 = or i1 %_cond1_305, %_cond2_306
  %_cond4_308 = icmp ule i64 %_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond5_309 = and i1 %_cond0_304, %_cond3_307
  %_cond6_310 = and i1 %_cond5_309, %_cond4_308
  br i1 %_cond6_310, label %488, label %490

; <label>:488                                     ; preds = %454
  %489 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_25, i32 0, i32 0))
  %_address_in_parent_stack_311 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_302
  br label %490

; <label>:490                                     ; preds = %488, %454
  %491 = phi i64 [ %_head_p2i_301, %454 ], [ %_address_in_parent_stack_311, %488 ]
  %_address_ptr_in_parent_stack_312 = inttoptr i64 %491 to i32*
  %_new_load_313 = load i32* %_address_ptr_in_parent_stack_312
  %492 = zext i32 %_new_load_313 to i64, !mcsema_real_eip !103
  store i64 %492, i64* %RSI_val, !mcsema_real_eip !103
  %493 = load i64* %RBP_val, !mcsema_real_eip !104
  %494 = add i64 %493, -64, !mcsema_real_eip !104
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !104
  %_head_p2i_314 = ptrtoint i64* %495 to i64
  %_offset_above_rbp_315 = sub i64 %_head_p2i_314, %_local_stack_end_
  %_address_in_parent_stack_316 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_315
  %_cond0_317 = icmp ugt i64 %_head_p2i_314, %_local_stack_end_
  %_cond1_318 = icmp ugt i64 %_head_p2i_314, %_parent_stack_end_ptr_
  %_cond2_319 = icmp ult i64 %_head_p2i_314, %_parent_stack_start_ptr_
  %_cond3_320 = or i1 %_cond1_318, %_cond2_319
  %_cond4_321 = icmp ule i64 %_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond5_322 = and i1 %_cond0_317, %_cond3_320
  %_cond6_323 = and i1 %_cond5_322, %_cond4_321
  br i1 %_cond6_323, label %496, label %498

; <label>:496                                     ; preds = %490
  %497 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_26, i32 0, i32 0))
  %_address_in_parent_stack_324 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_315
  br label %498

; <label>:498                                     ; preds = %496, %490
  %499 = phi i64 [ %_head_p2i_314, %490 ], [ %_address_in_parent_stack_324, %496 ]
  %_address_ptr_in_parent_stack_325 = inttoptr i64 %499 to i64*
  %_new_load_326 = load i64* %_address_ptr_in_parent_stack_325
  store i64 %_new_load_326, i64* %RAX_val, !mcsema_real_eip !104
  %500 = add i64 %_new_load_326, 8, !mcsema_real_eip !105
  %501 = inttoptr i64 %500 to i64*, !mcsema_real_eip !105
  %502 = bitcast i64* %501 to i32*
  %_head_p2i_327 = ptrtoint i32* %502 to i64
  %_offset_above_rbp_328 = sub i64 %_head_p2i_327, %_local_stack_end_
  %_address_in_parent_stack_329 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_328
  %_cond0_330 = icmp ugt i64 %_head_p2i_327, %_local_stack_end_
  %_cond1_331 = icmp ugt i64 %_head_p2i_327, %_parent_stack_end_ptr_
  %_cond2_332 = icmp ult i64 %_head_p2i_327, %_parent_stack_start_ptr_
  %_cond3_333 = or i1 %_cond1_331, %_cond2_332
  %_cond4_334 = icmp ule i64 %_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond5_335 = and i1 %_cond0_330, %_cond3_333
  %_cond6_336 = and i1 %_cond5_335, %_cond4_334
  br i1 %_cond6_336, label %503, label %505

; <label>:503                                     ; preds = %498
  %504 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_27, i32 0, i32 0))
  %_address_in_parent_stack_337 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_328
  br label %505

; <label>:505                                     ; preds = %503, %498
  %506 = phi i64 [ %_head_p2i_327, %498 ], [ %_address_in_parent_stack_337, %503 ]
  %_address_ptr_in_parent_stack_338 = inttoptr i64 %506 to i32*
  %_new_load_339 = load i32* %_address_ptr_in_parent_stack_338
  %507 = zext i32 %_new_load_339 to i64, !mcsema_real_eip !105
  store i64 %507, i64* %R8_val, !mcsema_real_eip !105
  %508 = load i64* %RSI_val, !mcsema_real_eip !106
  %509 = trunc i64 %508 to i32, !mcsema_real_eip !106
  %uadd79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_339, i32 %509)
  %510 = extractvalue { i32, i1 } %uadd79, 0
  %511 = xor i32 %510, %509, !mcsema_real_eip !106
  %512 = xor i32 %511, %_new_load_339, !mcsema_real_eip !106
  %513 = and i32 %512, 16, !mcsema_real_eip !106
  %514 = icmp ne i32 %513, 0, !mcsema_real_eip !106
  store i1 %514, i1* %AF_val, !mcsema_real_eip !106
  %515 = icmp slt i32 %510, 0
  store i1 %515, i1* %SF_val, !mcsema_real_eip !106
  %516 = icmp eq i32 %510, 0, !mcsema_real_eip !106
  store i1 %516, i1* %ZF_val, !mcsema_real_eip !106
  %517 = xor i32 %_new_load_339, -2147483648, !mcsema_real_eip !106
  %518 = xor i32 %517, %509, !mcsema_real_eip !106
  %519 = and i32 %511, %518, !mcsema_real_eip !106
  %520 = icmp slt i32 %519, 0
  store i1 %520, i1* %OF_val, !mcsema_real_eip !106
  %521 = trunc i32 %510 to i8, !mcsema_real_eip !106
  %522 = tail call i8 @llvm.ctpop.i8(i8 %521), !mcsema_real_eip !106
  %523 = and i8 %522, 1
  %524 = icmp eq i8 %523, 0
  store i1 %524, i1* %PF_val, !mcsema_real_eip !106
  %525 = extractvalue { i32, i1 } %uadd79, 1
  store i1 %525, i1* %CF_val, !mcsema_real_eip !106
  %526 = zext i32 %510 to i64, !mcsema_real_eip !106
  store i64 %526, i64* %RSI_val, !mcsema_real_eip !106
  %527 = load i64* %RBP_val, !mcsema_real_eip !107
  %528 = add i64 %527, -72, !mcsema_real_eip !107
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !107
  %_head_p2i_340 = ptrtoint i64* %529 to i64
  %_offset_above_rbp_341 = sub i64 %_head_p2i_340, %_local_stack_end_
  %_address_in_parent_stack_342 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_341
  %_cond0_343 = icmp ugt i64 %_head_p2i_340, %_local_stack_end_
  %_cond1_344 = icmp ugt i64 %_head_p2i_340, %_parent_stack_end_ptr_
  %_cond2_345 = icmp ult i64 %_head_p2i_340, %_parent_stack_start_ptr_
  %_cond3_346 = or i1 %_cond1_344, %_cond2_345
  %_cond4_347 = icmp ule i64 %_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond5_348 = and i1 %_cond0_343, %_cond3_346
  %_cond6_349 = and i1 %_cond5_348, %_cond4_347
  br i1 %_cond6_349, label %530, label %532

; <label>:530                                     ; preds = %505
  %531 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_28, i32 0, i32 0))
  %_address_in_parent_stack_350 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_341
  br label %532

; <label>:532                                     ; preds = %530, %505
  %533 = phi i64 [ %_head_p2i_340, %505 ], [ %_address_in_parent_stack_350, %530 ]
  %_address_ptr_in_parent_stack_351 = inttoptr i64 %533 to i64*
  %_new_load_352 = load i64* %_address_ptr_in_parent_stack_351
  store i64 %_new_load_352, i64* %RAX_val, !mcsema_real_eip !107
  %534 = add i64 %_new_load_352, 8, !mcsema_real_eip !108
  %535 = inttoptr i64 %534 to i64*, !mcsema_real_eip !108
  %536 = bitcast i64* %535 to i32*
  %_head_p2i_353 = ptrtoint i32* %536 to i64
  %_offset_above_rbp_354 = sub i64 %_head_p2i_353, %_local_stack_end_
  %_address_in_parent_stack_355 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_354
  %_cond0_356 = icmp ugt i64 %_head_p2i_353, %_local_stack_end_
  %_cond1_357 = icmp ugt i64 %_head_p2i_353, %_parent_stack_end_ptr_
  %_cond2_358 = icmp ult i64 %_head_p2i_353, %_parent_stack_start_ptr_
  %_cond3_359 = or i1 %_cond1_357, %_cond2_358
  %_cond4_360 = icmp ule i64 %_address_in_parent_stack_355, %_parent_stack_end_ptr_
  %_cond5_361 = and i1 %_cond0_356, %_cond3_359
  %_cond6_362 = and i1 %_cond5_361, %_cond4_360
  br i1 %_cond6_362, label %537, label %539

; <label>:537                                     ; preds = %532
  %538 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_29, i32 0, i32 0))
  %_address_in_parent_stack_363 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_354
  br label %539

; <label>:539                                     ; preds = %537, %532
  %540 = phi i64 [ %_head_p2i_353, %532 ], [ %_address_in_parent_stack_363, %537 ]
  %_address_ptr_in_parent_stack_364 = inttoptr i64 %540 to i32*
  %_new_load_365 = load i32* %_address_ptr_in_parent_stack_364
  %541 = zext i32 %_new_load_365 to i64, !mcsema_real_eip !108
  store i64 %541, i64* %R8_val, !mcsema_real_eip !108
  %542 = load i64* %RSI_val, !mcsema_real_eip !109
  %543 = trunc i64 %542 to i32, !mcsema_real_eip !109
  %uadd80 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_365, i32 %543)
  %544 = extractvalue { i32, i1 } %uadd80, 0
  %545 = xor i32 %544, %543, !mcsema_real_eip !109
  %546 = xor i32 %545, %_new_load_365, !mcsema_real_eip !109
  %547 = and i32 %546, 16, !mcsema_real_eip !109
  %548 = icmp ne i32 %547, 0, !mcsema_real_eip !109
  store i1 %548, i1* %AF_val, !mcsema_real_eip !109
  %549 = icmp slt i32 %544, 0
  store i1 %549, i1* %SF_val, !mcsema_real_eip !109
  %550 = icmp eq i32 %544, 0, !mcsema_real_eip !109
  store i1 %550, i1* %ZF_val, !mcsema_real_eip !109
  %551 = xor i32 %_new_load_365, -2147483648, !mcsema_real_eip !109
  %552 = xor i32 %551, %543, !mcsema_real_eip !109
  %553 = and i32 %545, %552, !mcsema_real_eip !109
  %554 = icmp slt i32 %553, 0
  store i1 %554, i1* %OF_val, !mcsema_real_eip !109
  %555 = trunc i32 %544 to i8, !mcsema_real_eip !109
  %556 = tail call i8 @llvm.ctpop.i8(i8 %555), !mcsema_real_eip !109
  %557 = and i8 %556, 1
  %558 = icmp eq i8 %557, 0
  store i1 %558, i1* %PF_val, !mcsema_real_eip !109
  %559 = extractvalue { i32, i1 } %uadd80, 1
  store i1 %559, i1* %CF_val, !mcsema_real_eip !109
  %560 = zext i32 %544 to i64, !mcsema_real_eip !109
  store i64 %560, i64* %RSI_val, !mcsema_real_eip !109
  %561 = load i64* %R11_val, !mcsema_real_eip !110
  %562 = add i64 %561, 8, !mcsema_real_eip !110
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !110
  %564 = bitcast i64* %563 to i32*
  %_head_p2i_366 = ptrtoint i32* %564 to i64
  %_offset_above_rbp_367 = sub i64 %_head_p2i_366, %_local_stack_end_
  %_address_in_parent_stack_368 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_367
  %_cond0_369 = icmp ugt i64 %_head_p2i_366, %_local_stack_end_
  %_cond1_370 = icmp ugt i64 %_head_p2i_366, %_parent_stack_end_ptr_
  %_cond2_371 = icmp ult i64 %_head_p2i_366, %_parent_stack_start_ptr_
  %_cond3_372 = or i1 %_cond1_370, %_cond2_371
  %_cond4_373 = icmp ule i64 %_address_in_parent_stack_368, %_parent_stack_end_ptr_
  %_cond5_374 = and i1 %_cond0_369, %_cond3_372
  %_cond6_375 = and i1 %_cond5_374, %_cond4_373
  br i1 %_cond6_375, label %565, label %567

; <label>:565                                     ; preds = %539
  %566 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_30, i32 0, i32 0))
  %_address_in_parent_stack_376 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_367
  br label %567

; <label>:567                                     ; preds = %565, %539
  %568 = phi i64 [ %_head_p2i_366, %539 ], [ %_address_in_parent_stack_376, %565 ]
  %_address_ptr_in_parent_stack_377 = inttoptr i64 %568 to i32*
  %_new_load_378 = load i32* %_address_ptr_in_parent_stack_377
  %569 = zext i32 %_new_load_378 to i64, !mcsema_real_eip !110
  store i64 %569, i64* %R8_val, !mcsema_real_eip !110
  %570 = load i64* %RBP_val, !mcsema_real_eip !111
  %571 = add i64 %570, -96, !mcsema_real_eip !111
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !111
  %_head_p2i_379 = ptrtoint i64* %572 to i64
  %_offset_above_rbp_380 = sub i64 %_head_p2i_379, %_local_stack_end_
  %_address_in_parent_stack_381 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_380
  %_cond0_382 = icmp ugt i64 %_head_p2i_379, %_local_stack_end_
  %_cond1_383 = icmp ugt i64 %_head_p2i_379, %_parent_stack_end_ptr_
  %_cond2_384 = icmp ult i64 %_head_p2i_379, %_parent_stack_start_ptr_
  %_cond3_385 = or i1 %_cond1_383, %_cond2_384
  %_cond4_386 = icmp ule i64 %_address_in_parent_stack_381, %_parent_stack_end_ptr_
  %_cond5_387 = and i1 %_cond0_382, %_cond3_385
  %_cond6_388 = and i1 %_cond5_387, %_cond4_386
  br i1 %_cond6_388, label %573, label %575

; <label>:573                                     ; preds = %567
  %574 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_31, i32 0, i32 0))
  %_address_in_parent_stack_389 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_380
  br label %575

; <label>:575                                     ; preds = %573, %567
  %576 = phi i64 [ %_head_p2i_379, %567 ], [ %_address_in_parent_stack_389, %573 ]
  %_address_ptr_in_parent_stack_390 = inttoptr i64 %576 to i64*
  %_new_load_391 = load i64* %_address_ptr_in_parent_stack_390
  store i64 %_new_load_391, i64* %RAX_val, !mcsema_real_eip !111
  %577 = add i64 %_new_load_391, 8, !mcsema_real_eip !112
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !112
  %579 = bitcast i64* %578 to i32*
  %_head_p2i_392 = ptrtoint i32* %579 to i64
  %_offset_above_rbp_393 = sub i64 %_head_p2i_392, %_local_stack_end_
  %_address_in_parent_stack_394 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_393
  %_cond0_395 = icmp ugt i64 %_head_p2i_392, %_local_stack_end_
  %_cond1_396 = icmp ugt i64 %_head_p2i_392, %_parent_stack_end_ptr_
  %_cond2_397 = icmp ult i64 %_head_p2i_392, %_parent_stack_start_ptr_
  %_cond3_398 = or i1 %_cond1_396, %_cond2_397
  %_cond4_399 = icmp ule i64 %_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond5_400 = and i1 %_cond0_395, %_cond3_398
  %_cond6_401 = and i1 %_cond5_400, %_cond4_399
  br i1 %_cond6_401, label %580, label %582

; <label>:580                                     ; preds = %575
  %581 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_32, i32 0, i32 0))
  %_address_in_parent_stack_402 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_393
  br label %582

; <label>:582                                     ; preds = %580, %575
  %583 = phi i64 [ %_head_p2i_392, %575 ], [ %_address_in_parent_stack_402, %580 ]
  %_address_ptr_in_parent_stack_403 = inttoptr i64 %583 to i32*
  %_new_load_404 = load i32* %_address_ptr_in_parent_stack_403
  %584 = zext i32 %_new_load_404 to i64, !mcsema_real_eip !112
  store i64 %584, i64* %R9_val, !mcsema_real_eip !112
  %585 = load i64* %R8_val, !mcsema_real_eip !113
  %586 = trunc i64 %585 to i32, !mcsema_real_eip !113
  %uadd81 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_404, i32 %586)
  %587 = extractvalue { i32, i1 } %uadd81, 0
  %588 = xor i32 %587, %586, !mcsema_real_eip !113
  %589 = xor i32 %588, %_new_load_404, !mcsema_real_eip !113
  %590 = and i32 %589, 16, !mcsema_real_eip !113
  %591 = icmp ne i32 %590, 0, !mcsema_real_eip !113
  store i1 %591, i1* %AF_val, !mcsema_real_eip !113
  %592 = icmp slt i32 %587, 0
  store i1 %592, i1* %SF_val, !mcsema_real_eip !113
  %593 = icmp eq i32 %587, 0, !mcsema_real_eip !113
  store i1 %593, i1* %ZF_val, !mcsema_real_eip !113
  %594 = xor i32 %_new_load_404, -2147483648, !mcsema_real_eip !113
  %595 = xor i32 %594, %586, !mcsema_real_eip !113
  %596 = and i32 %588, %595, !mcsema_real_eip !113
  %597 = icmp slt i32 %596, 0
  store i1 %597, i1* %OF_val, !mcsema_real_eip !113
  %598 = trunc i32 %587 to i8, !mcsema_real_eip !113
  %599 = tail call i8 @llvm.ctpop.i8(i8 %598), !mcsema_real_eip !113
  %600 = and i8 %599, 1
  %601 = icmp eq i8 %600, 0
  store i1 %601, i1* %PF_val, !mcsema_real_eip !113
  %602 = extractvalue { i32, i1 } %uadd81, 1
  store i1 %602, i1* %CF_val, !mcsema_real_eip !113
  %603 = zext i32 %587 to i64, !mcsema_real_eip !113
  store i64 %603, i64* %R8_val, !mcsema_real_eip !113
  %604 = load i64* %RBP_val, !mcsema_real_eip !114
  %605 = add i64 %604, -104, !mcsema_real_eip !114
  %606 = inttoptr i64 %605 to i64*, !mcsema_real_eip !114
  %_head_p2i_405 = ptrtoint i64* %606 to i64
  %_offset_above_rbp_406 = sub i64 %_head_p2i_405, %_local_stack_end_
  %_address_in_parent_stack_407 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_406
  %_cond0_408 = icmp ugt i64 %_head_p2i_405, %_local_stack_end_
  %_cond1_409 = icmp ugt i64 %_head_p2i_405, %_parent_stack_end_ptr_
  %_cond2_410 = icmp ult i64 %_head_p2i_405, %_parent_stack_start_ptr_
  %_cond3_411 = or i1 %_cond1_409, %_cond2_410
  %_cond4_412 = icmp ule i64 %_address_in_parent_stack_407, %_parent_stack_end_ptr_
  %_cond5_413 = and i1 %_cond0_408, %_cond3_411
  %_cond6_414 = and i1 %_cond5_413, %_cond4_412
  br i1 %_cond6_414, label %607, label %609

; <label>:607                                     ; preds = %582
  %608 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_33, i32 0, i32 0))
  %_address_in_parent_stack_415 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_406
  br label %609

; <label>:609                                     ; preds = %607, %582
  %610 = phi i64 [ %_head_p2i_405, %582 ], [ %_address_in_parent_stack_415, %607 ]
  %_address_ptr_in_parent_stack_416 = inttoptr i64 %610 to i64*
  %_new_load_417 = load i64* %_address_ptr_in_parent_stack_416
  store i64 %_new_load_417, i64* %RAX_val, !mcsema_real_eip !114
  %611 = add i64 %_new_load_417, 8, !mcsema_real_eip !115
  %612 = inttoptr i64 %611 to i64*, !mcsema_real_eip !115
  %613 = bitcast i64* %612 to i32*
  %_head_p2i_418 = ptrtoint i32* %613 to i64
  %_offset_above_rbp_419 = sub i64 %_head_p2i_418, %_local_stack_end_
  %_address_in_parent_stack_420 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_419
  %_cond0_421 = icmp ugt i64 %_head_p2i_418, %_local_stack_end_
  %_cond1_422 = icmp ugt i64 %_head_p2i_418, %_parent_stack_end_ptr_
  %_cond2_423 = icmp ult i64 %_head_p2i_418, %_parent_stack_start_ptr_
  %_cond3_424 = or i1 %_cond1_422, %_cond2_423
  %_cond4_425 = icmp ule i64 %_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond5_426 = and i1 %_cond0_421, %_cond3_424
  %_cond6_427 = and i1 %_cond5_426, %_cond4_425
  br i1 %_cond6_427, label %614, label %616

; <label>:614                                     ; preds = %609
  %615 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_34, i32 0, i32 0))
  %_address_in_parent_stack_428 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_419
  br label %616

; <label>:616                                     ; preds = %614, %609
  %617 = phi i64 [ %_head_p2i_418, %609 ], [ %_address_in_parent_stack_428, %614 ]
  %_address_ptr_in_parent_stack_429 = inttoptr i64 %617 to i32*
  %_new_load_430 = load i32* %_address_ptr_in_parent_stack_429
  %618 = zext i32 %_new_load_430 to i64, !mcsema_real_eip !115
  store i64 %618, i64* %R9_val, !mcsema_real_eip !115
  %619 = load i64* %R8_val, !mcsema_real_eip !116
  %620 = trunc i64 %619 to i32, !mcsema_real_eip !116
  %621 = add i32 %_new_load_430, %620
  %622 = zext i32 %621 to i64, !mcsema_real_eip !116
  store i64 %622, i64* %R8_val, !mcsema_real_eip !116
  %623 = load i64* %RSI_val, !mcsema_real_eip !117
  %624 = trunc i64 %623 to i32, !mcsema_real_eip !117
  %uadd83 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %621, i32 %624)
  %625 = extractvalue { i32, i1 } %uadd83, 0
  %626 = xor i32 %625, %624, !mcsema_real_eip !117
  %627 = xor i32 %626, %621, !mcsema_real_eip !117
  %628 = and i32 %627, 16, !mcsema_real_eip !117
  %629 = icmp ne i32 %628, 0, !mcsema_real_eip !117
  store i1 %629, i1* %AF_val, !mcsema_real_eip !117
  %630 = icmp slt i32 %625, 0
  store i1 %630, i1* %SF_val, !mcsema_real_eip !117
  %631 = icmp eq i32 %625, 0, !mcsema_real_eip !117
  store i1 %631, i1* %ZF_val, !mcsema_real_eip !117
  %632 = xor i32 %621, -2147483648, !mcsema_real_eip !117
  %633 = xor i32 %632, %624, !mcsema_real_eip !117
  %634 = and i32 %626, %633, !mcsema_real_eip !117
  %635 = icmp slt i32 %634, 0
  store i1 %635, i1* %OF_val, !mcsema_real_eip !117
  %636 = trunc i32 %625 to i8, !mcsema_real_eip !117
  %637 = tail call i8 @llvm.ctpop.i8(i8 %636), !mcsema_real_eip !117
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  store i1 %639, i1* %PF_val, !mcsema_real_eip !117
  %640 = extractvalue { i32, i1 } %uadd83, 1
  store i1 %640, i1* %CF_val, !mcsema_real_eip !117
  %641 = zext i32 %625 to i64, !mcsema_real_eip !117
  store i64 %641, i64* %RSI_val, !mcsema_real_eip !117
  %642 = load i64* %RBP_val, !mcsema_real_eip !118
  %643 = add i64 %642, -112, !mcsema_real_eip !118
  %644 = inttoptr i64 %643 to i64*, !mcsema_real_eip !118
  %645 = bitcast i64* %644 to i32*
  store i32 %625, i32* %645, !mcsema_real_eip !118
  %646 = load i64* %RBP_val, !mcsema_real_eip !119
  %647 = add i64 %646, -16, !mcsema_real_eip !119
  %648 = inttoptr i64 %647 to i64*, !mcsema_real_eip !119
  %649 = load i64* %RSI_val, !mcsema_real_eip !119
  %650 = trunc i64 %649 to i32, !mcsema_real_eip !119
  %651 = bitcast i64* %648 to i32*
  store i32 %650, i32* %651, !mcsema_real_eip !119
  %652 = load i64* %RBP_val, !mcsema_real_eip !120
  %653 = add i64 %652, -120, !mcsema_real_eip !120
  %654 = inttoptr i64 %653 to i64*, !mcsema_real_eip !120
  %_head_p2i_431 = ptrtoint i64* %654 to i64
  %_offset_above_rbp_432 = sub i64 %_head_p2i_431, %_local_stack_end_
  %_address_in_parent_stack_433 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_432
  %_cond0_434 = icmp ugt i64 %_head_p2i_431, %_local_stack_end_
  %_cond1_435 = icmp ugt i64 %_head_p2i_431, %_parent_stack_end_ptr_
  %_cond2_436 = icmp ult i64 %_head_p2i_431, %_parent_stack_start_ptr_
  %_cond3_437 = or i1 %_cond1_435, %_cond2_436
  %_cond4_438 = icmp ule i64 %_address_in_parent_stack_433, %_parent_stack_end_ptr_
  %_cond5_439 = and i1 %_cond0_434, %_cond3_437
  %_cond6_440 = and i1 %_cond5_439, %_cond4_438
  br i1 %_cond6_440, label %655, label %657

; <label>:655                                     ; preds = %616
  %656 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_35, i32 0, i32 0))
  %_address_in_parent_stack_441 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_432
  br label %657

; <label>:657                                     ; preds = %655, %616
  %658 = phi i64 [ %_head_p2i_431, %616 ], [ %_address_in_parent_stack_441, %655 ]
  %_address_ptr_in_parent_stack_442 = inttoptr i64 %658 to i64*
  %_new_load_443 = load i64* %_address_ptr_in_parent_stack_442
  store i64 %_new_load_443, i64* %RAX_val, !mcsema_real_eip !120
  %659 = add i64 %652, -24, !mcsema_real_eip !121
  %660 = inttoptr i64 %659 to i64*, !mcsema_real_eip !121
  store i64 %_new_load_443, i64* %660, !mcsema_real_eip !121
  %661 = load i64* %RBP_val, !mcsema_real_eip !122
  %662 = add i64 %661, -16, !mcsema_real_eip !122
  %663 = inttoptr i64 %662 to i64*, !mcsema_real_eip !122
  %664 = bitcast i64* %663 to i32*
  %_head_p2i_444 = ptrtoint i32* %664 to i64
  %_offset_above_rbp_445 = sub i64 %_head_p2i_444, %_local_stack_end_
  %_address_in_parent_stack_446 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_445
  %_cond0_447 = icmp ugt i64 %_head_p2i_444, %_local_stack_end_
  %_cond1_448 = icmp ugt i64 %_head_p2i_444, %_parent_stack_end_ptr_
  %_cond2_449 = icmp ult i64 %_head_p2i_444, %_parent_stack_start_ptr_
  %_cond3_450 = or i1 %_cond1_448, %_cond2_449
  %_cond4_451 = icmp ule i64 %_address_in_parent_stack_446, %_parent_stack_end_ptr_
  %_cond5_452 = and i1 %_cond0_447, %_cond3_450
  %_cond6_453 = and i1 %_cond5_452, %_cond4_451
  br i1 %_cond6_453, label %665, label %667

; <label>:665                                     ; preds = %657
  %666 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_36, i32 0, i32 0))
  %_address_in_parent_stack_454 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_445
  br label %667

; <label>:667                                     ; preds = %665, %657
  %668 = phi i64 [ %_head_p2i_444, %657 ], [ %_address_in_parent_stack_454, %665 ]
  %_address_ptr_in_parent_stack_455 = inttoptr i64 %668 to i32*
  %_new_load_456 = load i32* %_address_ptr_in_parent_stack_455
  %669 = zext i32 %_new_load_456 to i64, !mcsema_real_eip !122
  store i64 %669, i64* %RSI_val, !mcsema_real_eip !122
  %670 = load i64* %RBP_val, !mcsema_real_eip !123
  %671 = add i64 %670, -128, !mcsema_real_eip !123
  %672 = inttoptr i64 %671 to i64*, !mcsema_real_eip !123
  %673 = bitcast i64* %672 to i32*
  store i32 %_new_load_456, i32* %673, !mcsema_real_eip !123
  %674 = load i64* %RBP_val, !mcsema_real_eip !124
  %675 = add i64 %674, -24, !mcsema_real_eip !124
  %676 = inttoptr i64 %675 to i64*, !mcsema_real_eip !124
  %_head_p2i_457 = ptrtoint i64* %676 to i64
  %_offset_above_rbp_458 = sub i64 %_head_p2i_457, %_local_stack_end_
  %_address_in_parent_stack_459 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_458
  %_cond0_460 = icmp ugt i64 %_head_p2i_457, %_local_stack_end_
  %_cond1_461 = icmp ugt i64 %_head_p2i_457, %_parent_stack_end_ptr_
  %_cond2_462 = icmp ult i64 %_head_p2i_457, %_parent_stack_start_ptr_
  %_cond3_463 = or i1 %_cond1_461, %_cond2_462
  %_cond4_464 = icmp ule i64 %_address_in_parent_stack_459, %_parent_stack_end_ptr_
  %_cond5_465 = and i1 %_cond0_460, %_cond3_463
  %_cond6_466 = and i1 %_cond5_465, %_cond4_464
  br i1 %_cond6_466, label %677, label %679

; <label>:677                                     ; preds = %667
  %678 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_37, i32 0, i32 0))
  %_address_in_parent_stack_467 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_458
  br label %679

; <label>:679                                     ; preds = %677, %667
  %680 = phi i64 [ %_head_p2i_457, %667 ], [ %_address_in_parent_stack_467, %677 ]
  %_address_ptr_in_parent_stack_468 = inttoptr i64 %680 to i64*
  %_new_load_469 = load i64* %_address_ptr_in_parent_stack_468
  store i64 %_new_load_469, i64* %RAX_val, !mcsema_real_eip !124
  %681 = add i64 %674, -136, !mcsema_real_eip !125
  %682 = inttoptr i64 %681 to i64*, !mcsema_real_eip !125
  store i64 %_new_load_469, i64* %682, !mcsema_real_eip !125
  %683 = load i64* %RBP_val, !mcsema_real_eip !126
  %684 = add i64 %683, -136, !mcsema_real_eip !126
  %685 = inttoptr i64 %684 to i64*, !mcsema_real_eip !126
  %_head_p2i_470 = ptrtoint i64* %685 to i64
  %_offset_above_rbp_471 = sub i64 %_head_p2i_470, %_local_stack_end_
  %_address_in_parent_stack_472 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_471
  %_cond0_473 = icmp ugt i64 %_head_p2i_470, %_local_stack_end_
  %_cond1_474 = icmp ugt i64 %_head_p2i_470, %_parent_stack_end_ptr_
  %_cond2_475 = icmp ult i64 %_head_p2i_470, %_parent_stack_start_ptr_
  %_cond3_476 = or i1 %_cond1_474, %_cond2_475
  %_cond4_477 = icmp ule i64 %_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond5_478 = and i1 %_cond0_473, %_cond3_476
  %_cond6_479 = and i1 %_cond5_478, %_cond4_477
  br i1 %_cond6_479, label %686, label %688

; <label>:686                                     ; preds = %679
  %687 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_38, i32 0, i32 0))
  %_address_in_parent_stack_480 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_471
  br label %688

; <label>:688                                     ; preds = %686, %679
  %689 = phi i64 [ %_head_p2i_470, %679 ], [ %_address_in_parent_stack_480, %686 ]
  %_address_ptr_in_parent_stack_481 = inttoptr i64 %689 to i64*
  %_new_load_482 = load i64* %_address_ptr_in_parent_stack_481
  store i64 %_new_load_482, i64* %RAX_val, !mcsema_real_eip !126
  %690 = add i64 %683, -128, !mcsema_real_eip !127
  %691 = inttoptr i64 %690 to i64*, !mcsema_real_eip !127
  %692 = bitcast i64* %691 to i32*
  %_head_p2i_483 = ptrtoint i32* %692 to i64
  %_offset_above_rbp_484 = sub i64 %_head_p2i_483, %_local_stack_end_
  %_address_in_parent_stack_485 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_484
  %_cond0_486 = icmp ugt i64 %_head_p2i_483, %_local_stack_end_
  %_cond1_487 = icmp ugt i64 %_head_p2i_483, %_parent_stack_end_ptr_
  %_cond2_488 = icmp ult i64 %_head_p2i_483, %_parent_stack_start_ptr_
  %_cond3_489 = or i1 %_cond1_487, %_cond2_488
  %_cond4_490 = icmp ule i64 %_address_in_parent_stack_485, %_parent_stack_end_ptr_
  %_cond5_491 = and i1 %_cond0_486, %_cond3_489
  %_cond6_492 = and i1 %_cond5_491, %_cond4_490
  br i1 %_cond6_492, label %693, label %695

; <label>:693                                     ; preds = %688
  %694 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_39, i32 0, i32 0))
  %_address_in_parent_stack_493 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_484
  br label %695

; <label>:695                                     ; preds = %693, %688
  %696 = phi i64 [ %_head_p2i_483, %688 ], [ %_address_in_parent_stack_493, %693 ]
  %_address_ptr_in_parent_stack_494 = inttoptr i64 %696 to i32*
  %_new_load_495 = load i32* %_address_ptr_in_parent_stack_494
  %697 = zext i32 %_new_load_495 to i64, !mcsema_real_eip !127
  store i64 %697, i64* %RDX_val, !mcsema_real_eip !127
  %698 = load i64* %RSP_val, !mcsema_real_eip !128
  %699 = inttoptr i64 %698 to i64*, !mcsema_real_eip !128
  %_head_p2i_496 = ptrtoint i64* %699 to i64
  %_offset_above_rbp_497 = sub i64 %_head_p2i_496, %_local_stack_end_
  %_address_in_parent_stack_498 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_497
  %_cond0_499 = icmp ugt i64 %_head_p2i_496, %_local_stack_end_
  %_cond1_500 = icmp ugt i64 %_head_p2i_496, %_parent_stack_end_ptr_
  %_cond2_501 = icmp ult i64 %_head_p2i_496, %_parent_stack_start_ptr_
  %_cond3_502 = or i1 %_cond1_500, %_cond2_501
  %_cond4_503 = icmp ule i64 %_address_in_parent_stack_498, %_parent_stack_end_ptr_
  %_cond5_504 = and i1 %_cond0_499, %_cond3_502
  %_cond6_505 = and i1 %_cond5_504, %_cond4_503
  br i1 %_cond6_505, label %700, label %702

; <label>:700                                     ; preds = %695
  %701 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_40, i32 0, i32 0))
  %_address_in_parent_stack_506 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_497
  br label %702

; <label>:702                                     ; preds = %700, %695
  %703 = phi i64 [ %_head_p2i_496, %695 ], [ %_address_in_parent_stack_506, %700 ]
  %_address_ptr_in_parent_stack_507 = inttoptr i64 %703 to i64*
  %_new_load_508 = load i64* %_address_ptr_in_parent_stack_507
  store i64 %_new_load_508, i64* %RBX_val, !mcsema_real_eip !128
  %704 = add i64 %698, 8, !mcsema_real_eip !128
  store i64 %704, i64* %RSP_val, !mcsema_real_eip !128
  %705 = inttoptr i64 %704 to i64*, !mcsema_real_eip !129
  %_head_p2i_509 = ptrtoint i64* %705 to i64
  %_offset_above_rbp_510 = sub i64 %_head_p2i_509, %_local_stack_end_
  %_address_in_parent_stack_511 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_510
  %_cond0_512 = icmp ugt i64 %_head_p2i_509, %_local_stack_end_
  %_cond1_513 = icmp ugt i64 %_head_p2i_509, %_parent_stack_end_ptr_
  %_cond2_514 = icmp ult i64 %_head_p2i_509, %_parent_stack_start_ptr_
  %_cond3_515 = or i1 %_cond1_513, %_cond2_514
  %_cond4_516 = icmp ule i64 %_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond5_517 = and i1 %_cond0_512, %_cond3_515
  %_cond6_518 = and i1 %_cond5_517, %_cond4_516
  br i1 %_cond6_518, label %706, label %708

; <label>:706                                     ; preds = %702
  %707 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_41, i32 0, i32 0))
  %_address_in_parent_stack_519 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_510
  br label %708

; <label>:708                                     ; preds = %706, %702
  %709 = phi i64 [ %_head_p2i_509, %702 ], [ %_address_in_parent_stack_519, %706 ]
  %_address_ptr_in_parent_stack_520 = inttoptr i64 %709 to i64*
  %_new_load_521 = load i64* %_address_ptr_in_parent_stack_520
  store i64 %_new_load_521, i64* %RBP_val, !mcsema_real_eip !129
  %710 = add i64 %698, 24, !mcsema_real_eip !130
  store i64 %710, i64* %RSP_val, !mcsema_real_eip !130
  %711 = load i64* %RAX_val, !mcsema_real_eip !130
  store i64 %711, i64* %RAX, !mcsema_real_eip !130
  %712 = load i64* %RBX_val, !mcsema_real_eip !130
  store i64 %712, i64* %RBX, !mcsema_real_eip !130
  %713 = load i64* %RCX_val, !mcsema_real_eip !130
  store i64 %713, i64* %RCX, !mcsema_real_eip !130
  %714 = load i64* %RDX_val, !mcsema_real_eip !130
  store i64 %714, i64* %RDX, !mcsema_real_eip !130
  %715 = load i64* %RSI_val, !mcsema_real_eip !130
  store i64 %715, i64* %RSI, !mcsema_real_eip !130
  %716 = load i64* %RDI_val, !mcsema_real_eip !130
  store i64 %716, i64* %RDI, !mcsema_real_eip !130
  %717 = load i64* %RSP_val, !mcsema_real_eip !130
  store i64 %717, i64* %RSP, !mcsema_real_eip !130
  %718 = load i64* %RBP_val, !mcsema_real_eip !130
  store i64 %718, i64* %RBP, !mcsema_real_eip !130
  %719 = load i64* %R8_val, !mcsema_real_eip !130
  store i64 %719, i64* %R8, !mcsema_real_eip !130
  %720 = load i64* %R9_val, !mcsema_real_eip !130
  store i64 %720, i64* %R9, !mcsema_real_eip !130
  %721 = load i64* %R10_val, !mcsema_real_eip !130
  store i64 %721, i64* %R10, !mcsema_real_eip !130
  %722 = load i64* %R11_val, !mcsema_real_eip !130
  store i64 %722, i64* %R11, !mcsema_real_eip !130
  %723 = load i64* %R12_val, !mcsema_real_eip !130
  store i64 %723, i64* %R12, !mcsema_real_eip !130
  %724 = load i64* %R13_val, !mcsema_real_eip !130
  store i64 %724, i64* %R13, !mcsema_real_eip !130
  %725 = load i64* %R14_val, !mcsema_real_eip !130
  store i64 %725, i64* %R14, !mcsema_real_eip !130
  %726 = load i64* %R15_val, !mcsema_real_eip !130
  store i64 %726, i64* %R15, !mcsema_real_eip !130
  %727 = load i64* %RIP_val, !mcsema_real_eip !130
  store i64 %727, i64* %RIP, !mcsema_real_eip !130
  %728 = load i1* %CF_val, !mcsema_real_eip !130
  store i1 %728, i1* %CF, align 1, !mcsema_real_eip !130
  %729 = load i1* %PF_val, !mcsema_real_eip !130
  store i1 %729, i1* %PF, align 1, !mcsema_real_eip !130
  %730 = load i1* %AF_val, !mcsema_real_eip !130
  store i1 %730, i1* %AF, align 1, !mcsema_real_eip !130
  %731 = load i1* %ZF_val, !mcsema_real_eip !130
  store i1 %731, i1* %ZF, align 1, !mcsema_real_eip !130
  %732 = load i1* %SF_val, !mcsema_real_eip !130
  store i1 %732, i1* %SF, align 1, !mcsema_real_eip !130
  %733 = load i1* %OF_val, !mcsema_real_eip !130
  store i1 %733, i1* %OF, align 1, !mcsema_real_eip !130
  %734 = load i1* %DF_val, !mcsema_real_eip !130
  store i1 %734, i1* %DF, align 1, !mcsema_real_eip !130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !130
  %735 = load i1* %FPU_B_val, !mcsema_real_eip !130
  store i1 %735, i1* %FPU_B, align 1, !mcsema_real_eip !130
  %736 = load i1* %FPU_C3_val, !mcsema_real_eip !130
  store i1 %736, i1* %FPU_C3, align 1, !mcsema_real_eip !130
  %737 = load i3* %FPU_TOP_val, !mcsema_real_eip !130
  store i3 %737, i3* %FPU_TOP, align 1, !mcsema_real_eip !130
  %738 = load i1* %FPU_C2_val, !mcsema_real_eip !130
  store i1 %738, i1* %FPU_C2, align 1, !mcsema_real_eip !130
  %739 = load i1* %FPU_C1_val, !mcsema_real_eip !130
  store i1 %739, i1* %FPU_C1, align 1, !mcsema_real_eip !130
  %740 = load i1* %FPU_C0_val, !mcsema_real_eip !130
  store i1 %740, i1* %FPU_C0, align 1, !mcsema_real_eip !130
  %741 = load i1* %FPU_ES_val, !mcsema_real_eip !130
  store i1 %741, i1* %FPU_ES, align 1, !mcsema_real_eip !130
  %742 = load i1* %FPU_SF_val, !mcsema_real_eip !130
  store i1 %742, i1* %FPU_SF, align 1, !mcsema_real_eip !130
  %743 = load i1* %FPU_PE_val, !mcsema_real_eip !130
  store i1 %743, i1* %FPU_PE, align 1, !mcsema_real_eip !130
  %744 = load i1* %FPU_UE_val, !mcsema_real_eip !130
  store i1 %744, i1* %FPU_UE, align 1, !mcsema_real_eip !130
  %745 = load i1* %FPU_OE_val, !mcsema_real_eip !130
  store i1 %745, i1* %FPU_OE, align 1, !mcsema_real_eip !130
  %746 = load i1* %FPU_ZE_val, !mcsema_real_eip !130
  store i1 %746, i1* %FPU_ZE, align 1, !mcsema_real_eip !130
  %747 = load i1* %FPU_DE_val, !mcsema_real_eip !130
  store i1 %747, i1* %FPU_DE, align 1, !mcsema_real_eip !130
  %748 = load i1* %FPU_IE_val, !mcsema_real_eip !130
  store i1 %748, i1* %FPU_IE, align 1, !mcsema_real_eip !130
  %749 = load i1* %FPU_X_val, !mcsema_real_eip !130
  store i1 %749, i1* %FPU_X, align 1, !mcsema_real_eip !130
  %750 = load i2* %FPU_RC_val, !mcsema_real_eip !130
  store i2 %750, i2* %FPU_RC, align 1, !mcsema_real_eip !130
  %751 = load i2* %FPU_PC_val, !mcsema_real_eip !130
  store i2 %751, i2* %FPU_PC, align 1, !mcsema_real_eip !130
  %752 = load i1* %FPU_PM_val, !mcsema_real_eip !130
  store i1 %752, i1* %FPU_PM, align 1, !mcsema_real_eip !130
  %753 = load i1* %FPU_UM_val, !mcsema_real_eip !130
  store i1 %753, i1* %FPU_UM, align 1, !mcsema_real_eip !130
  %754 = load i1* %FPU_OM_val, !mcsema_real_eip !130
  store i1 %754, i1* %FPU_OM, align 1, !mcsema_real_eip !130
  %755 = load i1* %FPU_ZM_val, !mcsema_real_eip !130
  store i1 %755, i1* %FPU_ZM, align 1, !mcsema_real_eip !130
  %756 = load i1* %FPU_DM_val, !mcsema_real_eip !130
  store i1 %756, i1* %FPU_DM, align 1, !mcsema_real_eip !130
  %757 = load i1* %FPU_IM_val, !mcsema_real_eip !130
  store i1 %757, i1* %FPU_IM, align 1, !mcsema_real_eip !130
  %_head_p2i_522 = ptrtoint i64* %53 to i64
  %_offset_above_rbp_523 = sub i64 %_head_p2i_522, %_local_stack_end_
  %_address_in_parent_stack_524 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_523
  %_cond0_525 = icmp ugt i64 %_head_p2i_522, %_local_stack_end_
  %_cond1_526 = icmp ugt i64 %_head_p2i_522, %_parent_stack_end_ptr_
  %_cond2_527 = icmp ult i64 %_head_p2i_522, %_parent_stack_start_ptr_
  %_cond3_528 = or i1 %_cond1_526, %_cond2_527
  %_cond4_529 = icmp ule i64 %_address_in_parent_stack_524, %_parent_stack_end_ptr_
  %_cond5_530 = and i1 %_cond0_525, %_cond3_528
  %_cond6_531 = and i1 %_cond5_530, %_cond4_529
  br i1 %_cond6_531, label %758, label %760

; <label>:758                                     ; preds = %708
  %759 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @_debug_parent_stack_42, i32 0, i32 0))
  %_address_in_parent_stack_532 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_523
  br label %760

; <label>:760                                     ; preds = %758, %708
  %761 = phi i64 [ %_head_p2i_522, %708 ], [ %_address_in_parent_stack_532, %758 ]
  %_address_ptr_in_parent_stack_533 = inttoptr i64 %761 to i64*
  %_new_load_534 = load i64* %_address_ptr_in_parent_stack_533
  store i64 %_new_load_534, i64* %52, align 4
  %762 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !130
  store i16 %762, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !130
  %763 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !130
  store i64 %763, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !130
  %764 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !130
  store i16 %764, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !130
  %765 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !130
  store i64 %765, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !130
  %766 = load i128* %XMM0_val, !mcsema_real_eip !130
  store i128 %766, i128* %XMM0, align 1, !mcsema_real_eip !130
  %767 = load i128* %XMM1_val, !mcsema_real_eip !130
  store i128 %767, i128* %XMM1, align 1, !mcsema_real_eip !130
  %768 = load i128* %XMM2_val, !mcsema_real_eip !130
  store i128 %768, i128* %XMM2, align 1, !mcsema_real_eip !130
  %769 = load i128* %XMM3_val, !mcsema_real_eip !130
  store i128 %769, i128* %XMM3, align 1, !mcsema_real_eip !130
  %770 = load i128* %XMM4_val, !mcsema_real_eip !130
  store i128 %770, i128* %XMM4, align 1, !mcsema_real_eip !130
  %771 = load i128* %XMM5_val, !mcsema_real_eip !130
  store i128 %771, i128* %XMM5, align 1, !mcsema_real_eip !130
  %772 = load i128* %XMM6_val, !mcsema_real_eip !130
  store i128 %772, i128* %XMM6, align 1, !mcsema_real_eip !130
  %773 = load i128* %XMM7_val, !mcsema_real_eip !130
  store i128 %773, i128* %XMM7, align 1, !mcsema_real_eip !130
  %774 = load i128* %XMM8_val, !mcsema_real_eip !130
  store i128 %774, i128* %XMM8, align 1, !mcsema_real_eip !130
  %775 = load i128* %XMM9_val, !mcsema_real_eip !130
  store i128 %775, i128* %XMM9, align 1, !mcsema_real_eip !130
  %776 = load i128* %XMM10_val, !mcsema_real_eip !130
  store i128 %776, i128* %XMM10, align 1, !mcsema_real_eip !130
  %777 = load i128* %XMM11_val, !mcsema_real_eip !130
  store i128 %777, i128* %XMM11, align 1, !mcsema_real_eip !130
  %778 = load i128* %XMM12_val, !mcsema_real_eip !130
  store i128 %778, i128* %XMM12, align 1, !mcsema_real_eip !130
  %779 = load i128* %XMM13_val, !mcsema_real_eip !130
  store i128 %779, i128* %XMM13, align 1, !mcsema_real_eip !130
  %780 = load i128* %XMM14_val, !mcsema_real_eip !130
  store i128 %780, i128* %XMM14, align 1, !mcsema_real_eip !130
  %781 = load i128* %XMM15_val, !mcsema_real_eip !130
  store i128 %781, i128* %XMM15, align 1, !mcsema_real_eip !130
  %782 = load i64* %STACK_BASE_val, !mcsema_real_eip !130
  store i64 %782, i64* %STACK_BASE, align 1, !mcsema_real_eip !130
  %783 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !130
  store i64 %783, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !130
  ret void, !mcsema_real_eip !130
}

declare i32 @printf(i8* noalias, ...)

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 272, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 273, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 276, [17 x i8] c"\09subq\09$128, %rsp\00"}
!5 = metadata !{i64 283, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!6 = metadata !{i64 300, [22 x i8] c"\09movq\09%rax, -16(%rbp)\00"}
!7 = metadata !{i64 304, [20 x i8] c"\09movl\09$10, -8(%rbp)\00"}
!8 = metadata !{i64 311, [16 x i8] c"\09movl\09$24, %ecx\00"}
!9 = metadata !{i64 316, [17 x i8] c"\09movl\09%ecx, %edi\00"}
!10 = metadata !{i64 318, [9 x i8] c"\09callq\090\00"}
!11 = metadata !{i64 323, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!12 = metadata !{i64 327, [17 x i8] c"\09movl\09$5, (%rax)\00"}
!13 = metadata !{i64 333, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!14 = metadata !{i64 337, [18 x i8] c"\09movl\09$5, 4(%rax)\00"}
!15 = metadata !{i64 344, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!16 = metadata !{i64 348, [18 x i8] c"\09movl\09$5, 8(%rax)\00"}
!17 = metadata !{i64 355, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!18 = metadata !{i64 359, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!19 = metadata !{i64 362, [22 x i8] c"\09movl\09%ecx, -48(%rbp)\00"}
!20 = metadata !{i64 365, [22 x i8] c"\09movq\09-16(%rbp), %rdi\00"}
!21 = metadata !{i64 369, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!22 = metadata !{i64 373, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!23 = metadata !{i64 377, [22 x i8] c"\09movl\09-48(%rbp), %esi\00"}
!24 = metadata !{i64 380, [21 x i8] c"\09movl\09-8(%rbp), %ecx\00"}
!25 = metadata !{i64 383, [17 x i8] c"\09movq\09%rsp, %rdx\00"}
!26 = metadata !{i64 386, [21 x i8] c"\09movl\09%ecx, 16(%rdx)\00"}
!27 = metadata !{i64 389, [21 x i8] c"\09movq\09-16(%rbp), %r8\00"}
!28 = metadata !{i64 393, [19 x i8] c"\09movq\09%r8, 8(%rdx)\00"}
!29 = metadata !{i64 397, [21 x i8] c"\09movq\09%rax, 32(%rdx)\00"}
!30 = metadata !{i64 401, [21 x i8] c"\09leaq\09-16(%rbp), %r8\00"}
!31 = metadata !{i64 405, [20 x i8] c"\09movq\09%r8, 24(%rdx)\00"}
!32 = metadata !{i64 409, [17 x i8] c"\09movl\09$3, (%rdx)\00"}
!33 = metadata !{i64 415, [15 x i8] c"\09movl\09$1, %ecx\00"}
!34 = metadata !{i64 420, [15 x i8] c"\09movl\09$2, %r9d\00"}
!35 = metadata !{i64 426, [16 x i8] c"\09movq\09%r8, %rdx\00"}
!36 = metadata !{i64 429, [22 x i8] c"\09movl\09%ecx, -76(%rbp)\00"}
!37 = metadata !{i64 432, [17 x i8] c"\09movq\09%rax, %rcx\00"}
!38 = metadata !{i64 435, [22 x i8] c"\09movl\09-76(%rbp), %r8d\00"}
!39 = metadata !{i64 439, [12 x i8] c"\09callq\09-444\00"}
!40 = metadata !{i64 444, [22 x i8] c"\09movl\09%edx, -64(%rbp)\00"}
!41 = metadata !{i64 447, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!42 = metadata !{i64 451, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!43 = metadata !{i64 455, [22 x i8] c"\09movq\09%rax, -40(%rbp)\00"}
!44 = metadata !{i64 459, [22 x i8] c"\09movl\09-64(%rbp), %edx\00"}
!45 = metadata !{i64 462, [22 x i8] c"\09movl\09%edx, -32(%rbp)\00"}
!46 = metadata !{i64 465, [22 x i8] c"\09movl\09-40(%rbp), %edx\00"}
!47 = metadata !{i64 468, [22 x i8] c"\09addl\09-36(%rbp), %edx\00"}
!48 = metadata !{i64 471, [22 x i8] c"\09addl\09-32(%rbp), %edx\00"}
!49 = metadata !{i64 474, [17 x i8] c"\09movl\09%edx, %eax\00"}
!50 = metadata !{i64 476, [17 x i8] c"\09addq\09$128, %rsp\00"}
!51 = metadata !{i64 483, [11 x i8] c"\09popq\09%rbp\00"}
!52 = metadata !{i64 484, [6 x i8] c"\09retq\00"}
!53 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!54 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!55 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!56 = metadata !{i64 5, [21 x i8] c"\09movq\0948(%rbp), %rax\00"}
!57 = metadata !{i64 9, [21 x i8] c"\09movq\0940(%rbp), %r10\00"}
!58 = metadata !{i64 13, [21 x i8] c"\09leaq\0924(%rbp), %r11\00"}
!59 = metadata !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!60 = metadata !{i64 20, [22 x i8] c"\09movq\09%rdi, -56(%rbp)\00"}
!61 = metadata !{i64 24, [22 x i8] c"\09movl\09%esi, -48(%rbp)\00"}
!62 = metadata !{i64 27, [22 x i8] c"\09movl\09%esi, -32(%rbp)\00"}
!63 = metadata !{i64 30, [22 x i8] c"\09movq\09-56(%rbp), %rdi\00"}
!64 = metadata !{i64 34, [22 x i8] c"\09movq\09%rdi, -40(%rbp)\00"}
!65 = metadata !{i64 38, [22 x i8] c"\09movq\09%rdx, -64(%rbp)\00"}
!66 = metadata !{i64 42, [22 x i8] c"\09movq\09%rcx, -72(%rbp)\00"}
!67 = metadata !{i64 46, [22 x i8] c"\09movl\09%r8d, -76(%rbp)\00"}
!68 = metadata !{i64 50, [22 x i8] c"\09movl\09%r9d, -80(%rbp)\00"}
!69 = metadata !{i64 54, [22 x i8] c"\09movl\09%ebx, -84(%rbp)\00"}
!70 = metadata !{i64 57, [22 x i8] c"\09movq\09%r10, -96(%rbp)\00"}
!71 = metadata !{i64 61, [23 x i8] c"\09movq\09%rax, -104(%rbp)\00"}
!72 = metadata !{i64 65, [22 x i8] c"\09movl\09-40(%rbp), %esi\00"}
!73 = metadata !{i64 68, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!74 = metadata !{i64 72, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!75 = metadata !{i64 75, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!76 = metadata !{i64 78, [22 x i8] c"\09movq\09-72(%rbp), %rcx\00"}
!77 = metadata !{i64 82, [19 x i8] c"\09movl\09(%rcx), %r8d\00"}
!78 = metadata !{i64 85, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!79 = metadata !{i64 88, [19 x i8] c"\09movl\09(%r11), %r8d\00"}
!80 = metadata !{i64 91, [22 x i8] c"\09movq\09-96(%rbp), %rcx\00"}
!81 = metadata !{i64 95, [19 x i8] c"\09movl\09(%rcx), %r9d\00"}
!82 = metadata !{i64 98, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!83 = metadata !{i64 101, [19 x i8] c"\09movl\09(%rax), %r9d\00"}
!84 = metadata !{i64 104, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!85 = metadata !{i64 107, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!86 = metadata !{i64 110, [23 x i8] c"\09movl\09%esi, -120(%rbp)\00"}
!87 = metadata !{i64 113, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!88 = metadata !{i64 116, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!89 = metadata !{i64 120, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!90 = metadata !{i64 124, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!91 = metadata !{i64 127, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!92 = metadata !{i64 131, [20 x i8] c"\09movl\094(%rax), %r8d\00"}
!93 = metadata !{i64 135, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!94 = metadata !{i64 138, [20 x i8] c"\09movl\094(%r11), %r8d\00"}
!95 = metadata !{i64 142, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!96 = metadata !{i64 146, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!97 = metadata !{i64 150, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!98 = metadata !{i64 153, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!99 = metadata !{i64 157, [20 x i8] c"\09movl\094(%rax), %r9d\00"}
!100 = metadata !{i64 161, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!101 = metadata !{i64 164, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!102 = metadata !{i64 167, [23 x i8] c"\09movl\09%esi, -116(%rbp)\00"}
!103 = metadata !{i64 170, [22 x i8] c"\09movl\09-32(%rbp), %esi\00"}
!104 = metadata !{i64 173, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!105 = metadata !{i64 177, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!106 = metadata !{i64 181, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!107 = metadata !{i64 184, [22 x i8] c"\09movq\09-72(%rbp), %rax\00"}
!108 = metadata !{i64 188, [20 x i8] c"\09movl\098(%rax), %r8d\00"}
!109 = metadata !{i64 192, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!110 = metadata !{i64 195, [20 x i8] c"\09movl\098(%r11), %r8d\00"}
!111 = metadata !{i64 199, [22 x i8] c"\09movq\09-96(%rbp), %rax\00"}
!112 = metadata !{i64 203, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!113 = metadata !{i64 207, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!114 = metadata !{i64 210, [23 x i8] c"\09movq\09-104(%rbp), %rax\00"}
!115 = metadata !{i64 214, [20 x i8] c"\09movl\098(%rax), %r9d\00"}
!116 = metadata !{i64 218, [17 x i8] c"\09addl\09%r9d, %r8d\00"}
!117 = metadata !{i64 221, [17 x i8] c"\09addl\09%r8d, %esi\00"}
!118 = metadata !{i64 224, [23 x i8] c"\09movl\09%esi, -112(%rbp)\00"}
!119 = metadata !{i64 227, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!120 = metadata !{i64 230, [23 x i8] c"\09movq\09-120(%rbp), %rax\00"}
!121 = metadata !{i64 234, [22 x i8] c"\09movq\09%rax, -24(%rbp)\00"}
!122 = metadata !{i64 238, [22 x i8] c"\09movl\09-16(%rbp), %esi\00"}
!123 = metadata !{i64 241, [23 x i8] c"\09movl\09%esi, -128(%rbp)\00"}
!124 = metadata !{i64 244, [22 x i8] c"\09movq\09-24(%rbp), %rax\00"}
!125 = metadata !{i64 248, [23 x i8] c"\09movq\09%rax, -136(%rbp)\00"}
!126 = metadata !{i64 255, [23 x i8] c"\09movq\09-136(%rbp), %rax\00"}
!127 = metadata !{i64 262, [23 x i8] c"\09movl\09-128(%rbp), %edx\00"}
!128 = metadata !{i64 265, [11 x i8] c"\09popq\09%rbx\00"}
!129 = metadata !{i64 266, [11 x i8] c"\09popq\09%rbp\00"}
!130 = metadata !{i64 267, [6 x i8] c"\09retq\00"}
