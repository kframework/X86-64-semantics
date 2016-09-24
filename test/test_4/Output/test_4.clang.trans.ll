; ModuleID = 'Output/test_4.clang.trans.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x1ee = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 256
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 256
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
  store i64 %_local_stack_end_, i64* %RSP_val
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
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !2
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !2
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !2
  store i64 %77, i64* %80, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = load i64, i64* %R15_val, !mcsema_real_eip !4
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !4
  store i64 %81, i64* %83, !mcsema_real_eip !4
  %84 = load i64, i64* %R14_val, !mcsema_real_eip !5
  %85 = add i64 %78, -24
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !5
  store i64 %84, i64* %86, !mcsema_real_eip !5
  %87 = load i64, i64* %R13_val, !mcsema_real_eip !6
  %88 = add i64 %78, -32
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !6
  store i64 %87, i64* %89, !mcsema_real_eip !6
  %90 = load i64, i64* %R12_val, !mcsema_real_eip !7
  %91 = add i64 %78, -40
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !7
  store i64 %90, i64* %92, !mcsema_real_eip !7
  %93 = load i64, i64* %RBX_val, !mcsema_real_eip !8
  %94 = add i64 %78, -48
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !8
  store i64 %93, i64* %95, !mcsema_real_eip !8
  %96 = add i64 %78, -248
  %97 = xor i64 %96, %94, !mcsema_real_eip !9
  %98 = and i64 %97, 16, !mcsema_real_eip !9
  %99 = icmp ne i64 %98, 0, !mcsema_real_eip !9
  store i1 %99, i1* %AF_val, !mcsema_real_eip !9
  %100 = trunc i64 %96 to i8, !mcsema_real_eip !9
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !9
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF_val, !mcsema_real_eip !9
  %104 = icmp eq i64 %96, 0, !mcsema_real_eip !9
  store i1 %104, i1* %ZF_val, !mcsema_real_eip !9
  %105 = icmp slt i64 %96, 0
  store i1 %105, i1* %SF_val, !mcsema_real_eip !9
  %106 = icmp ult i64 %94, 200, !mcsema_real_eip !9
  store i1 %106, i1* %CF_val, !mcsema_real_eip !9
  %107 = and i64 %97, %94, !mcsema_real_eip !9
  %108 = icmp slt i64 %107, 0
  store i1 %108, i1* %OF_val, !mcsema_real_eip !9
  store i64 %96, i64* %RSP_val, !mcsema_real_eip !9
  store i64 100, i64* %RAX_val, !mcsema_real_eip !10
  store i64 200, i64* %RCX_val, !mcsema_real_eip !11
  store i64 300, i64* %RDX_val, !mcsema_real_eip !12
  store i64 400, i64* %R8_val, !mcsema_real_eip !13
  store i64 500, i64* %R9_val, !mcsema_real_eip !14
  store i64 600, i64* %R10_val, !mcsema_real_eip !15
  store i64 10, i64* %R11_val, !mcsema_real_eip !16
  %109 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %110 = add i64 %109, -144, !mcsema_real_eip !17
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !17
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !17
  store i64 %112, i64* %RBX_val, !mcsema_real_eip !17
  %113 = add i64 %109, -96, !mcsema_real_eip !18
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !18
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !18
  store i64 %115, i64* %R14_val, !mcsema_real_eip !18
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %R15_val, !mcsema_real_eip !19
  store i64 40, i64* %R12_val, !mcsema_real_eip !20
  store i64 ptrtoint (%0* @data_0x1ee to i64), i64* %R13_val, !mcsema_real_eip !21
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %117 = add i64 %116, -44, !mcsema_real_eip !22
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !22
  %119 = bitcast i64* %118 to i32*
  store i32 0, i32* %119, !mcsema_real_eip !22
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !23
  %121 = add i64 %120, -48, !mcsema_real_eip !23
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !23
  %123 = load i64, i64* %RDI_val, !mcsema_real_eip !23
  %124 = trunc i64 %123 to i32, !mcsema_real_eip !23
  %125 = bitcast i64* %122 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !23
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %127 = add i64 %126, -56, !mcsema_real_eip !24
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !24
  %129 = load i64, i64* %RSI_val, !mcsema_real_eip !24
  store i64 %129, i64* %128, !mcsema_real_eip !24
  %130 = load i64, i64* %R14_val, !mcsema_real_eip !25
  store i64 %130, i64* %RDI_val, !mcsema_real_eip !26
  %131 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %131, i64* %RSI_val, !mcsema_real_eip !27
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %133 = add i64 %132, -148, !mcsema_real_eip !28
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !28
  %135 = load i64, i64* %RDX_val, !mcsema_real_eip !28
  %136 = trunc i64 %135 to i32, !mcsema_real_eip !28
  %137 = bitcast i64* %134 to i32*
  store i32 %136, i32* %137, !mcsema_real_eip !28
  %138 = load i64, i64* %R12_val, !mcsema_real_eip !29
  store i64 %138, i64* %RDX_val, !mcsema_real_eip !29
  %139 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  %140 = add i64 %139, -160, !mcsema_real_eip !30
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !30
  %142 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %142, i64* %141, !mcsema_real_eip !30
  %143 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  %144 = add i64 %143, -168, !mcsema_real_eip !31
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !31
  %146 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %146, i64* %145, !mcsema_real_eip !31
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %148 = add i64 %147, -172, !mcsema_real_eip !32
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !32
  %150 = load i64, i64* %RAX_val, !mcsema_real_eip !32
  %151 = trunc i64 %150 to i32, !mcsema_real_eip !32
  %152 = bitcast i64* %149 to i32*
  store i32 %151, i32* %152, !mcsema_real_eip !32
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %154 = add i64 %153, -176, !mcsema_real_eip !33
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !33
  %156 = load i64, i64* %RCX_val, !mcsema_real_eip !33
  %157 = trunc i64 %156 to i32, !mcsema_real_eip !33
  %158 = bitcast i64* %155 to i32*
  store i32 %157, i32* %158, !mcsema_real_eip !33
  %159 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %160 = add i64 %159, -184, !mcsema_real_eip !34
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !34
  %162 = load i64, i64* %R14_val, !mcsema_real_eip !34
  store i64 %162, i64* %161, !mcsema_real_eip !34
  %163 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %164 = add i64 %163, -188, !mcsema_real_eip !35
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !35
  %166 = load i64, i64* %R8_val, !mcsema_real_eip !35
  %167 = trunc i64 %166 to i32, !mcsema_real_eip !35
  %168 = bitcast i64* %165 to i32*
  store i32 %167, i32* %168, !mcsema_real_eip !35
  %169 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %170 = add i64 %169, -192, !mcsema_real_eip !36
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !36
  %172 = load i64, i64* %R9_val, !mcsema_real_eip !36
  %173 = trunc i64 %172 to i32, !mcsema_real_eip !36
  %174 = bitcast i64* %171 to i32*
  store i32 %173, i32* %174, !mcsema_real_eip !36
  %175 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %176 = add i64 %175, -196, !mcsema_real_eip !37
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !37
  %178 = load i64, i64* %R10_val, !mcsema_real_eip !37
  %179 = trunc i64 %178 to i32, !mcsema_real_eip !37
  %180 = bitcast i64* %177 to i32*
  store i32 %179, i32* %180, !mcsema_real_eip !37
  %181 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %182 = add i64 %181, -200, !mcsema_real_eip !38
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !38
  %184 = load i64, i64* %R11_val, !mcsema_real_eip !38
  %185 = trunc i64 %184 to i32, !mcsema_real_eip !38
  %186 = bitcast i64* %183 to i32*
  store i32 %185, i32* %186, !mcsema_real_eip !38
  %187 = load i64, i64* %RBP_val, !mcsema_real_eip !39
  %188 = add i64 %187, -208, !mcsema_real_eip !39
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !39
  %190 = load i64, i64* %RBX_val, !mcsema_real_eip !39
  store i64 %190, i64* %189, !mcsema_real_eip !39
  %191 = load i64, i64* %RDI_val, !mcsema_real_eip !40
  %192 = load i64, i64* %RSI_val, !mcsema_real_eip !40
  %193 = load i64, i64* %RDX_val, !mcsema_real_eip !40
  %194 = tail call x86_64_sysvcc i64 @memcpy(i64 %191, i64 %192, i64 %193), !mcsema_real_eip !40
  store i64 %194, i64* %RAX_val, !mcsema_real_eip !40
  %195 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %196 = add i64 %195, -208, !mcsema_real_eip !41
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !41
  %198 = load i64, i64* %197, !mcsema_real_eip !41
  store i64 %198, i64* %RDX_val, !mcsema_real_eip !41
  store i64 %198, i64* %RDI_val, !mcsema_real_eip !42
  %199 = add i64 %195, -160, !mcsema_real_eip !43
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !43
  %201 = load i64, i64* %200, !mcsema_real_eip !43
  store i64 %201, i64* %RSI_val, !mcsema_real_eip !43
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %203 = add i64 %202, -168, !mcsema_real_eip !44
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !44
  %205 = load i64, i64* %204, !mcsema_real_eip !44
  store i64 %205, i64* %RDX_val, !mcsema_real_eip !44
  %206 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  %207 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  %208 = tail call x86_64_sysvcc i64 @memcpy(i64 %206, i64 %207, i64 %205), !mcsema_real_eip !45
  store i64 %208, i64* %RAX_val, !mcsema_real_eip !45
  %209 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %210 = add i64 %209, -172, !mcsema_real_eip !46
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !46
  %212 = bitcast i64* %211 to i32*
  %213 = load i32, i32* %212, !mcsema_real_eip !46
  %214 = zext i32 %213 to i64, !mcsema_real_eip !46
  store i64 %214, i64* %RDI_val, !mcsema_real_eip !46
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  %216 = add i64 %215, -176, !mcsema_real_eip !47
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !47
  %218 = bitcast i64* %217 to i32*
  %219 = load i32, i32* %218, !mcsema_real_eip !47
  %220 = zext i32 %219 to i64, !mcsema_real_eip !47
  store i64 %220, i64* %RSI_val, !mcsema_real_eip !47
  %221 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %222 = add i64 %221, -148, !mcsema_real_eip !48
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !48
  %224 = bitcast i64* %223 to i32*
  %225 = load i32, i32* %224, !mcsema_real_eip !48
  %226 = zext i32 %225 to i64, !mcsema_real_eip !48
  store i64 %226, i64* %RDX_val, !mcsema_real_eip !48
  %227 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %228 = add i64 %227, -188, !mcsema_real_eip !49
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !49
  %230 = bitcast i64* %229 to i32*
  %231 = load i32, i32* %230, !mcsema_real_eip !49
  %232 = zext i32 %231 to i64, !mcsema_real_eip !49
  store i64 %232, i64* %RCX_val, !mcsema_real_eip !49
  %233 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %234 = add i64 %233, -192, !mcsema_real_eip !50
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !50
  %236 = bitcast i64* %235 to i32*
  %237 = load i32, i32* %236, !mcsema_real_eip !50
  %238 = zext i32 %237 to i64, !mcsema_real_eip !50
  store i64 %238, i64* %R8_val, !mcsema_real_eip !50
  %239 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %240 = add i64 %239, -196, !mcsema_real_eip !51
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !51
  %242 = bitcast i64* %241 to i32*
  %243 = load i32, i32* %242, !mcsema_real_eip !51
  %244 = zext i32 %243 to i64, !mcsema_real_eip !51
  store i64 %244, i64* %R9_val, !mcsema_real_eip !51
  %245 = load i64, i64* %RSP_val, !mcsema_real_eip !52
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !52
  %247 = bitcast i64* %246 to i32*
  store i32 10, i32* %247, !mcsema_real_eip !52
  %248 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %249 = add i64 %248, -184, !mcsema_real_eip !53
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !53
  %251 = load i64, i64* %250, !mcsema_real_eip !53
  store i64 %251, i64* %RBX_val, !mcsema_real_eip !53
  %252 = load i64, i64* %RSP_val, !mcsema_real_eip !54
  %253 = add i64 %252, 8, !mcsema_real_eip !54
  %254 = inttoptr i64 %253 to i64*, !mcsema_real_eip !54
  store i64 %251, i64* %254, !mcsema_real_eip !54
  %255 = load i64, i64* %RSP_val, !mcsema_real_eip !55
  %256 = add i64 %255, 16, !mcsema_real_eip !55
  %257 = inttoptr i64 %256 to i64*, !mcsema_real_eip !55
  %258 = bitcast i64* %257 to i32*
  store i32 10, i32* %258, !mcsema_real_eip !55
  %259 = load i64, i64* %RBP_val, !mcsema_real_eip !56
  %260 = add i64 %259, -208, !mcsema_real_eip !56
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !56
  %262 = load i64, i64* %261, !mcsema_real_eip !56
  store i64 %262, i64* %R14_val, !mcsema_real_eip !56
  %263 = load i64, i64* %RSP_val, !mcsema_real_eip !57
  %264 = add i64 %263, 24, !mcsema_real_eip !57
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !57
  store i64 %262, i64* %265, !mcsema_real_eip !57
  %266 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  %267 = add i64 %266, -8
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !58
  store i64 -4981261766360305936, i64* %268, !mcsema_real_eip !58
  store i64 %267, i64* %RSP_val, !mcsema_real_eip !58
  %269 = load i64, i64* %RAX_val, !mcsema_real_eip !58
  store i64 %269, i64* %RAX, !mcsema_real_eip !58
  %270 = load i64, i64* %RBX_val, !mcsema_real_eip !58
  store i64 %270, i64* %RBX, !mcsema_real_eip !58
  %271 = load i64, i64* %RCX_val, !mcsema_real_eip !58
  store i64 %271, i64* %RCX, !mcsema_real_eip !58
  %272 = load i64, i64* %RDX_val, !mcsema_real_eip !58
  store i64 %272, i64* %RDX, !mcsema_real_eip !58
  %273 = load i64, i64* %RSI_val, !mcsema_real_eip !58
  store i64 %273, i64* %RSI, !mcsema_real_eip !58
  %274 = load i64, i64* %RDI_val, !mcsema_real_eip !58
  store i64 %274, i64* %RDI, !mcsema_real_eip !58
  %275 = load i64, i64* %RSP_val, !mcsema_real_eip !58
  store i64 %275, i64* %RSP, !mcsema_real_eip !58
  %276 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  store i64 %276, i64* %RBP, !mcsema_real_eip !58
  %277 = load i64, i64* %R8_val, !mcsema_real_eip !58
  store i64 %277, i64* %R8, !mcsema_real_eip !58
  %278 = load i64, i64* %R9_val, !mcsema_real_eip !58
  store i64 %278, i64* %R9, !mcsema_real_eip !58
  %279 = load i64, i64* %R10_val, !mcsema_real_eip !58
  store i64 %279, i64* %R10, !mcsema_real_eip !58
  %280 = load i64, i64* %R11_val, !mcsema_real_eip !58
  store i64 %280, i64* %R11, !mcsema_real_eip !58
  %281 = load i64, i64* %R12_val, !mcsema_real_eip !58
  store i64 %281, i64* %R12, !mcsema_real_eip !58
  %282 = load i64, i64* %R13_val, !mcsema_real_eip !58
  store i64 %282, i64* %R13, !mcsema_real_eip !58
  %283 = load i64, i64* %R14_val, !mcsema_real_eip !58
  store i64 %283, i64* %R14, !mcsema_real_eip !58
  %284 = load i64, i64* %R15_val, !mcsema_real_eip !58
  store i64 %284, i64* %R15, !mcsema_real_eip !58
  %285 = load i64, i64* %RIP_val, !mcsema_real_eip !58
  store i64 %285, i64* %RIP, !mcsema_real_eip !58
  %286 = load i1, i1* %CF_val, !mcsema_real_eip !58
  store i1 %286, i1* %CF, align 1, !mcsema_real_eip !58
  %287 = load i1, i1* %PF_val, !mcsema_real_eip !58
  store i1 %287, i1* %PF, align 1, !mcsema_real_eip !58
  %288 = load i1, i1* %AF_val, !mcsema_real_eip !58
  store i1 %288, i1* %AF, align 1, !mcsema_real_eip !58
  %289 = load i1, i1* %ZF_val, !mcsema_real_eip !58
  store i1 %289, i1* %ZF, align 1, !mcsema_real_eip !58
  %290 = load i1, i1* %SF_val, !mcsema_real_eip !58
  store i1 %290, i1* %SF, align 1, !mcsema_real_eip !58
  %291 = load i1, i1* %OF_val, !mcsema_real_eip !58
  store i1 %291, i1* %OF, align 1, !mcsema_real_eip !58
  %292 = load i1, i1* %DF_val, !mcsema_real_eip !58
  store i1 %292, i1* %DF, align 1, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !58
  %293 = load i1, i1* %FPU_B_val, !mcsema_real_eip !58
  store i1 %293, i1* %FPU_B, align 1, !mcsema_real_eip !58
  %294 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !58
  store i1 %294, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  %295 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !58
  store i3 %295, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  %296 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !58
  store i1 %296, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  %297 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !58
  store i1 %297, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  %298 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !58
  store i1 %298, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  %299 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !58
  store i1 %299, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  %300 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !58
  store i1 %300, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  %301 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !58
  store i1 %301, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  %302 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !58
  store i1 %302, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  %303 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !58
  store i1 %303, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  %304 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !58
  store i1 %304, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  %305 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !58
  store i1 %305, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  %306 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !58
  store i1 %306, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  %307 = load i1, i1* %FPU_X_val, !mcsema_real_eip !58
  store i1 %307, i1* %FPU_X, align 1, !mcsema_real_eip !58
  %308 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !58
  store i2 %308, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  %309 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !58
  store i2 %309, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  %310 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !58
  store i1 %310, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  %311 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !58
  store i1 %311, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  %312 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !58
  store i1 %312, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  %313 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !58
  store i1 %313, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  %314 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !58
  store i1 %314, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  %315 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !58
  store i1 %315, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  %316 = load i64, i64* %53, align 4
  store i64 %316, i64* %52, align 4
  %317 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  store i16 %317, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  %318 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  store i64 %318, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !58
  %319 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  store i16 %319, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  %320 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  store i64 %320, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !58
  %321 = load i128, i128* %XMM0_val, !mcsema_real_eip !58
  store i128 %321, i128* %XMM0, align 1, !mcsema_real_eip !58
  %322 = load i128, i128* %XMM1_val, !mcsema_real_eip !58
  store i128 %322, i128* %XMM1, align 1, !mcsema_real_eip !58
  %323 = load i128, i128* %XMM2_val, !mcsema_real_eip !58
  store i128 %323, i128* %XMM2, align 1, !mcsema_real_eip !58
  %324 = load i128, i128* %XMM3_val, !mcsema_real_eip !58
  store i128 %324, i128* %XMM3, align 1, !mcsema_real_eip !58
  %325 = load i128, i128* %XMM4_val, !mcsema_real_eip !58
  store i128 %325, i128* %XMM4, align 1, !mcsema_real_eip !58
  %326 = load i128, i128* %XMM5_val, !mcsema_real_eip !58
  store i128 %326, i128* %XMM5, align 1, !mcsema_real_eip !58
  %327 = load i128, i128* %XMM6_val, !mcsema_real_eip !58
  store i128 %327, i128* %XMM6, align 1, !mcsema_real_eip !58
  %328 = load i128, i128* %XMM7_val, !mcsema_real_eip !58
  store i128 %328, i128* %XMM7, align 1, !mcsema_real_eip !58
  %329 = load i128, i128* %XMM8_val, !mcsema_real_eip !58
  store i128 %329, i128* %XMM8, align 1, !mcsema_real_eip !58
  %330 = load i128, i128* %XMM9_val, !mcsema_real_eip !58
  store i128 %330, i128* %XMM9, align 1, !mcsema_real_eip !58
  %331 = load i128, i128* %XMM10_val, !mcsema_real_eip !58
  store i128 %331, i128* %XMM10, align 1, !mcsema_real_eip !58
  %332 = load i128, i128* %XMM11_val, !mcsema_real_eip !58
  store i128 %332, i128* %XMM11, align 1, !mcsema_real_eip !58
  %333 = load i128, i128* %XMM12_val, !mcsema_real_eip !58
  store i128 %333, i128* %XMM12, align 1, !mcsema_real_eip !58
  %334 = load i128, i128* %XMM13_val, !mcsema_real_eip !58
  store i128 %334, i128* %XMM13, align 1, !mcsema_real_eip !58
  %335 = load i128, i128* %XMM14_val, !mcsema_real_eip !58
  store i128 %335, i128* %XMM14, align 1, !mcsema_real_eip !58
  %336 = load i128, i128* %XMM15_val, !mcsema_real_eip !58
  store i128 %336, i128* %XMM15, align 1, !mcsema_real_eip !58
  %337 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !58
  store i64 %337, i64* %STACK_BASE, align 1, !mcsema_real_eip !58
  %338 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  store i64 %338, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !58
  call void @sub_0.1(%struct.regs* %0, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %339 = load i64, i64* %RAX, !mcsema_real_eip !58
  store i64 %339, i64* %RAX_val, !mcsema_real_eip !58
  %340 = load i64, i64* %RBX, !mcsema_real_eip !58
  store i64 %340, i64* %RBX_val, !mcsema_real_eip !58
  %341 = load i64, i64* %RCX, !mcsema_real_eip !58
  store i64 %341, i64* %RCX_val, !mcsema_real_eip !58
  %342 = load i64, i64* %RDX, !mcsema_real_eip !58
  store i64 %342, i64* %RDX_val, !mcsema_real_eip !58
  %343 = load i64, i64* %RSI, !mcsema_real_eip !58
  store i64 %343, i64* %RSI_val, !mcsema_real_eip !58
  %344 = load i64, i64* %RDI, !mcsema_real_eip !58
  store i64 %344, i64* %RDI_val, !mcsema_real_eip !58
  %345 = load i64, i64* %RSP, !mcsema_real_eip !58
  store i64 %345, i64* %RSP_val, !mcsema_real_eip !58
  %346 = load i64, i64* %RBP, !mcsema_real_eip !58
  store i64 %346, i64* %RBP_val, !mcsema_real_eip !58
  %347 = load i64, i64* %R8, !mcsema_real_eip !58
  store i64 %347, i64* %R8_val, !mcsema_real_eip !58
  %348 = load i64, i64* %R9, !mcsema_real_eip !58
  store i64 %348, i64* %R9_val, !mcsema_real_eip !58
  %349 = load i64, i64* %R10, !mcsema_real_eip !58
  store i64 %349, i64* %R10_val, !mcsema_real_eip !58
  %350 = load i64, i64* %R11, !mcsema_real_eip !58
  store i64 %350, i64* %R11_val, !mcsema_real_eip !58
  %351 = load i64, i64* %R12, !mcsema_real_eip !58
  store i64 %351, i64* %R12_val, !mcsema_real_eip !58
  %352 = load i64, i64* %R13, !mcsema_real_eip !58
  store i64 %352, i64* %R13_val, !mcsema_real_eip !58
  %353 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %353, i64* %R14_val, !mcsema_real_eip !58
  %354 = load i64, i64* %R15, !mcsema_real_eip !58
  store i64 %354, i64* %R15_val, !mcsema_real_eip !58
  %355 = load i64, i64* %RIP, !mcsema_real_eip !58
  store i64 %355, i64* %RIP_val, !mcsema_real_eip !58
  %356 = load i1, i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %356, i1* %CF_val, !mcsema_real_eip !58
  %357 = load i1, i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %357, i1* %PF_val, !mcsema_real_eip !58
  %358 = load i1, i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %358, i1* %AF_val, !mcsema_real_eip !58
  %359 = load i1, i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %359, i1* %ZF_val, !mcsema_real_eip !58
  %360 = load i1, i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %360, i1* %SF_val, !mcsema_real_eip !58
  %361 = load i1, i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %361, i1* %OF_val, !mcsema_real_eip !58
  %362 = load i1, i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %362, i1* %DF_val, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %363 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %363, i1* %FPU_B_val, !mcsema_real_eip !58
  %364 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %364, i1* %FPU_C3_val, !mcsema_real_eip !58
  %365 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %365, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %366 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %366, i1* %FPU_C2_val, !mcsema_real_eip !58
  %367 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %367, i1* %FPU_C1_val, !mcsema_real_eip !58
  %368 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %368, i1* %FPU_C0_val, !mcsema_real_eip !58
  %369 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %369, i1* %FPU_ES_val, !mcsema_real_eip !58
  %370 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %370, i1* %FPU_SF_val, !mcsema_real_eip !58
  %371 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %371, i1* %FPU_PE_val, !mcsema_real_eip !58
  %372 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %372, i1* %FPU_UE_val, !mcsema_real_eip !58
  %373 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %373, i1* %FPU_OE_val, !mcsema_real_eip !58
  %374 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %374, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %375 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %375, i1* %FPU_DE_val, !mcsema_real_eip !58
  %376 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %376, i1* %FPU_IE_val, !mcsema_real_eip !58
  %377 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %377, i1* %FPU_X_val, !mcsema_real_eip !58
  %378 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %378, i2* %FPU_RC_val, !mcsema_real_eip !58
  %379 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %379, i2* %FPU_PC_val, !mcsema_real_eip !58
  %380 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %380, i1* %FPU_PM_val, !mcsema_real_eip !58
  %381 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %381, i1* %FPU_UM_val, !mcsema_real_eip !58
  %382 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %382, i1* %FPU_OM_val, !mcsema_real_eip !58
  %383 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %383, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %384 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %384, i1* %FPU_DM_val, !mcsema_real_eip !58
  %385 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %385, i1* %FPU_IM_val, !mcsema_real_eip !58
  %386 = load i64, i64* %52, align 4
  store i64 %386, i64* %53, align 4
  %387 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %387, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %388 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %388, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %389 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %389, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %390 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %390, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %391 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %391, i128* %XMM0_val, !mcsema_real_eip !58
  %392 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %392, i128* %XMM1_val, !mcsema_real_eip !58
  %393 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %393, i128* %XMM2_val, !mcsema_real_eip !58
  %394 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %394, i128* %XMM3_val, !mcsema_real_eip !58
  %395 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %395, i128* %XMM4_val, !mcsema_real_eip !58
  %396 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %396, i128* %XMM5_val, !mcsema_real_eip !58
  %397 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %397, i128* %XMM6_val, !mcsema_real_eip !58
  %398 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %398, i128* %XMM7_val, !mcsema_real_eip !58
  %399 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %399, i128* %XMM8_val, !mcsema_real_eip !58
  %400 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %400, i128* %XMM9_val, !mcsema_real_eip !58
  %401 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %401, i128* %XMM10_val, !mcsema_real_eip !58
  %402 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %402, i128* %XMM11_val, !mcsema_real_eip !58
  %403 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %403, i128* %XMM12_val, !mcsema_real_eip !58
  %404 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %404, i128* %XMM13_val, !mcsema_real_eip !58
  %405 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %405, i128* %XMM14_val, !mcsema_real_eip !58
  %406 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %406, i128* %XMM15_val, !mcsema_real_eip !58
  %407 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %407, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %408 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %408, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %409 = load i64, i64* %RSP_val, !mcsema_real_eip !59
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %409, i64 200)
  %410 = extractvalue { i64, i1 } %uadd, 0
  %411 = xor i64 %410, %409, !mcsema_real_eip !59
  %412 = and i64 %411, 16, !mcsema_real_eip !59
  %413 = icmp ne i64 %412, 0, !mcsema_real_eip !59
  store i1 %413, i1* %AF_val, !mcsema_real_eip !59
  %414 = icmp slt i64 %410, 0
  store i1 %414, i1* %SF_val, !mcsema_real_eip !59
  %415 = icmp eq i64 %410, 0, !mcsema_real_eip !59
  store i1 %415, i1* %ZF_val, !mcsema_real_eip !59
  %416 = xor i64 %409, -9223372036854775808, !mcsema_real_eip !59
  %417 = and i64 %411, %416, !mcsema_real_eip !59
  %418 = icmp slt i64 %417, 0
  store i1 %418, i1* %OF_val, !mcsema_real_eip !59
  %419 = trunc i64 %410 to i8, !mcsema_real_eip !59
  %420 = tail call i8 @llvm.ctpop.i8(i8 %419), !mcsema_real_eip !59
  %421 = and i8 %420, 1
  %422 = icmp eq i8 %421, 0
  store i1 %422, i1* %PF_val, !mcsema_real_eip !59
  %423 = extractvalue { i64, i1 } %uadd, 1
  store i1 %423, i1* %CF_val, !mcsema_real_eip !59
  store i64 %410, i64* %RSP_val, !mcsema_real_eip !59
  %424 = inttoptr i64 %410 to i64*, !mcsema_real_eip !60
  %425 = load i64, i64* %424, !mcsema_real_eip !60
  store i64 %425, i64* %RBX_val, !mcsema_real_eip !60
  %426 = add i64 %410, 8, !mcsema_real_eip !60
  store i64 %426, i64* %RSP_val, !mcsema_real_eip !60
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !61
  %428 = load i64, i64* %427, !mcsema_real_eip !61
  store i64 %428, i64* %R12_val, !mcsema_real_eip !61
  %429 = add i64 %410, 16, !mcsema_real_eip !61
  store i64 %429, i64* %RSP_val, !mcsema_real_eip !61
  %430 = inttoptr i64 %429 to i64*, !mcsema_real_eip !62
  %431 = load i64, i64* %430, !mcsema_real_eip !62
  store i64 %431, i64* %R13_val, !mcsema_real_eip !62
  %432 = add i64 %410, 24, !mcsema_real_eip !62
  store i64 %432, i64* %RSP_val, !mcsema_real_eip !62
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !63
  %434 = load i64, i64* %433, !mcsema_real_eip !63
  store i64 %434, i64* %R14_val, !mcsema_real_eip !63
  %435 = add i64 %410, 32, !mcsema_real_eip !63
  store i64 %435, i64* %RSP_val, !mcsema_real_eip !63
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !64
  %437 = load i64, i64* %436, !mcsema_real_eip !64
  store i64 %437, i64* %R15_val, !mcsema_real_eip !64
  %438 = add i64 %410, 40, !mcsema_real_eip !64
  store i64 %438, i64* %RSP_val, !mcsema_real_eip !64
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !65
  %440 = load i64, i64* %439, !mcsema_real_eip !65
  store i64 %440, i64* %RBP_val, !mcsema_real_eip !65
  %441 = add i64 %410, 56, !mcsema_real_eip !66
  store i64 %441, i64* %RSP_val, !mcsema_real_eip !66
  %442 = load i64, i64* %RAX_val, !mcsema_real_eip !66
  store i64 %442, i64* %RAX, !mcsema_real_eip !66
  %443 = load i64, i64* %RBX_val, !mcsema_real_eip !66
  store i64 %443, i64* %RBX, !mcsema_real_eip !66
  %444 = load i64, i64* %RCX_val, !mcsema_real_eip !66
  store i64 %444, i64* %RCX, !mcsema_real_eip !66
  %445 = load i64, i64* %RDX_val, !mcsema_real_eip !66
  store i64 %445, i64* %RDX, !mcsema_real_eip !66
  %446 = load i64, i64* %RSI_val, !mcsema_real_eip !66
  store i64 %446, i64* %RSI, !mcsema_real_eip !66
  %447 = load i64, i64* %RDI_val, !mcsema_real_eip !66
  store i64 %447, i64* %RDI, !mcsema_real_eip !66
  %448 = load i64, i64* %RSP_val, !mcsema_real_eip !66
  store i64 %448, i64* %RSP, !mcsema_real_eip !66
  %449 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  store i64 %449, i64* %RBP, !mcsema_real_eip !66
  %450 = load i64, i64* %R8_val, !mcsema_real_eip !66
  store i64 %450, i64* %R8, !mcsema_real_eip !66
  %451 = load i64, i64* %R9_val, !mcsema_real_eip !66
  store i64 %451, i64* %R9, !mcsema_real_eip !66
  %452 = load i64, i64* %R10_val, !mcsema_real_eip !66
  store i64 %452, i64* %R10, !mcsema_real_eip !66
  %453 = load i64, i64* %R11_val, !mcsema_real_eip !66
  store i64 %453, i64* %R11, !mcsema_real_eip !66
  %454 = load i64, i64* %R12_val, !mcsema_real_eip !66
  store i64 %454, i64* %R12, !mcsema_real_eip !66
  %455 = load i64, i64* %R13_val, !mcsema_real_eip !66
  store i64 %455, i64* %R13, !mcsema_real_eip !66
  %456 = load i64, i64* %R14_val, !mcsema_real_eip !66
  store i64 %456, i64* %R14, !mcsema_real_eip !66
  %457 = load i64, i64* %R15_val, !mcsema_real_eip !66
  store i64 %457, i64* %R15, !mcsema_real_eip !66
  %458 = load i64, i64* %RIP_val, !mcsema_real_eip !66
  store i64 %458, i64* %RIP, !mcsema_real_eip !66
  %459 = load i1, i1* %CF_val, !mcsema_real_eip !66
  store i1 %459, i1* %CF, align 1, !mcsema_real_eip !66
  %460 = load i1, i1* %PF_val, !mcsema_real_eip !66
  store i1 %460, i1* %PF, align 1, !mcsema_real_eip !66
  %461 = load i1, i1* %AF_val, !mcsema_real_eip !66
  store i1 %461, i1* %AF, align 1, !mcsema_real_eip !66
  %462 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  store i1 %462, i1* %ZF, align 1, !mcsema_real_eip !66
  %463 = load i1, i1* %SF_val, !mcsema_real_eip !66
  store i1 %463, i1* %SF, align 1, !mcsema_real_eip !66
  %464 = load i1, i1* %OF_val, !mcsema_real_eip !66
  store i1 %464, i1* %OF, align 1, !mcsema_real_eip !66
  %465 = load i1, i1* %DF_val, !mcsema_real_eip !66
  store i1 %465, i1* %DF, align 1, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !66
  %466 = load i1, i1* %FPU_B_val, !mcsema_real_eip !66
  store i1 %466, i1* %FPU_B, align 1, !mcsema_real_eip !66
  %467 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !66
  store i1 %467, i1* %FPU_C3, align 1, !mcsema_real_eip !66
  %468 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !66
  store i3 %468, i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  %469 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !66
  store i1 %469, i1* %FPU_C2, align 1, !mcsema_real_eip !66
  %470 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !66
  store i1 %470, i1* %FPU_C1, align 1, !mcsema_real_eip !66
  %471 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !66
  store i1 %471, i1* %FPU_C0, align 1, !mcsema_real_eip !66
  %472 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !66
  store i1 %472, i1* %FPU_ES, align 1, !mcsema_real_eip !66
  %473 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !66
  store i1 %473, i1* %FPU_SF, align 1, !mcsema_real_eip !66
  %474 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !66
  store i1 %474, i1* %FPU_PE, align 1, !mcsema_real_eip !66
  %475 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !66
  store i1 %475, i1* %FPU_UE, align 1, !mcsema_real_eip !66
  %476 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !66
  store i1 %476, i1* %FPU_OE, align 1, !mcsema_real_eip !66
  %477 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !66
  store i1 %477, i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  %478 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !66
  store i1 %478, i1* %FPU_DE, align 1, !mcsema_real_eip !66
  %479 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !66
  store i1 %479, i1* %FPU_IE, align 1, !mcsema_real_eip !66
  %480 = load i1, i1* %FPU_X_val, !mcsema_real_eip !66
  store i1 %480, i1* %FPU_X, align 1, !mcsema_real_eip !66
  %481 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !66
  store i2 %481, i2* %FPU_RC, align 1, !mcsema_real_eip !66
  %482 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !66
  store i2 %482, i2* %FPU_PC, align 1, !mcsema_real_eip !66
  %483 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !66
  store i1 %483, i1* %FPU_PM, align 1, !mcsema_real_eip !66
  %484 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !66
  store i1 %484, i1* %FPU_UM, align 1, !mcsema_real_eip !66
  %485 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !66
  store i1 %485, i1* %FPU_OM, align 1, !mcsema_real_eip !66
  %486 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !66
  store i1 %486, i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  %487 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !66
  store i1 %487, i1* %FPU_DM, align 1, !mcsema_real_eip !66
  %488 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !66
  store i1 %488, i1* %FPU_IM, align 1, !mcsema_real_eip !66
  %489 = load i64, i64* %53, align 4
  store i64 %489, i64* %52, align 4
  %490 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  store i16 %490, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  %491 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  store i64 %491, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !66
  %492 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  store i16 %492, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  %493 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  store i64 %493, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !66
  %494 = load i128, i128* %XMM0_val, !mcsema_real_eip !66
  store i128 %494, i128* %XMM0, align 1, !mcsema_real_eip !66
  %495 = load i128, i128* %XMM1_val, !mcsema_real_eip !66
  store i128 %495, i128* %XMM1, align 1, !mcsema_real_eip !66
  %496 = load i128, i128* %XMM2_val, !mcsema_real_eip !66
  store i128 %496, i128* %XMM2, align 1, !mcsema_real_eip !66
  %497 = load i128, i128* %XMM3_val, !mcsema_real_eip !66
  store i128 %497, i128* %XMM3, align 1, !mcsema_real_eip !66
  %498 = load i128, i128* %XMM4_val, !mcsema_real_eip !66
  store i128 %498, i128* %XMM4, align 1, !mcsema_real_eip !66
  %499 = load i128, i128* %XMM5_val, !mcsema_real_eip !66
  store i128 %499, i128* %XMM5, align 1, !mcsema_real_eip !66
  %500 = load i128, i128* %XMM6_val, !mcsema_real_eip !66
  store i128 %500, i128* %XMM6, align 1, !mcsema_real_eip !66
  %501 = load i128, i128* %XMM7_val, !mcsema_real_eip !66
  store i128 %501, i128* %XMM7, align 1, !mcsema_real_eip !66
  %502 = load i128, i128* %XMM8_val, !mcsema_real_eip !66
  store i128 %502, i128* %XMM8, align 1, !mcsema_real_eip !66
  %503 = load i128, i128* %XMM9_val, !mcsema_real_eip !66
  store i128 %503, i128* %XMM9, align 1, !mcsema_real_eip !66
  %504 = load i128, i128* %XMM10_val, !mcsema_real_eip !66
  store i128 %504, i128* %XMM10, align 1, !mcsema_real_eip !66
  %505 = load i128, i128* %XMM11_val, !mcsema_real_eip !66
  store i128 %505, i128* %XMM11, align 1, !mcsema_real_eip !66
  %506 = load i128, i128* %XMM12_val, !mcsema_real_eip !66
  store i128 %506, i128* %XMM12, align 1, !mcsema_real_eip !66
  %507 = load i128, i128* %XMM13_val, !mcsema_real_eip !66
  store i128 %507, i128* %XMM13, align 1, !mcsema_real_eip !66
  %508 = load i128, i128* %XMM14_val, !mcsema_real_eip !66
  store i128 %508, i128* %XMM14, align 1, !mcsema_real_eip !66
  %509 = load i128, i128* %XMM15_val, !mcsema_real_eip !66
  store i128 %509, i128* %XMM15, align 1, !mcsema_real_eip !66
  %510 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !66
  store i64 %510, i64* %STACK_BASE, align 1, !mcsema_real_eip !66
  %511 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  store i64 %511, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 80
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 80
  %R15_val = alloca i64, !mcsema_real_eip !67
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !67
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !67
  %XMM15_val = alloca i128, !mcsema_real_eip !67
  %XMM14_val = alloca i128, !mcsema_real_eip !67
  %XMM13_val = alloca i128, !mcsema_real_eip !67
  %XMM12_val = alloca i128, !mcsema_real_eip !67
  %XMM11_val = alloca i128, !mcsema_real_eip !67
  %XMM10_val = alloca i128, !mcsema_real_eip !67
  %XMM9_val = alloca i128, !mcsema_real_eip !67
  %XMM8_val = alloca i128, !mcsema_real_eip !67
  %XMM7_val = alloca i128, !mcsema_real_eip !67
  %XMM6_val = alloca i128, !mcsema_real_eip !67
  %XMM5_val = alloca i128, !mcsema_real_eip !67
  %XMM4_val = alloca i128, !mcsema_real_eip !67
  %XMM3_val = alloca i128, !mcsema_real_eip !67
  %XMM2_val = alloca i128, !mcsema_real_eip !67
  %XMM1_val = alloca i128, !mcsema_real_eip !67
  %XMM0_val = alloca i128, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !67
  %FPU_IM_val = alloca i1, !mcsema_real_eip !67
  %FPU_DM_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !67
  %FPU_OM_val = alloca i1, !mcsema_real_eip !67
  %FPU_UM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PC_val = alloca i2, !mcsema_real_eip !67
  %FPU_RC_val = alloca i2, !mcsema_real_eip !67
  %FPU_X_val = alloca i1, !mcsema_real_eip !67
  %FPU_IE_val = alloca i1, !mcsema_real_eip !67
  %FPU_DE_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !67
  %FPU_OE_val = alloca i1, !mcsema_real_eip !67
  %FPU_UE_val = alloca i1, !mcsema_real_eip !67
  %FPU_PE_val = alloca i1, !mcsema_real_eip !67
  %FPU_SF_val = alloca i1, !mcsema_real_eip !67
  %FPU_ES_val = alloca i1, !mcsema_real_eip !67
  %FPU_C0_val = alloca i1, !mcsema_real_eip !67
  %FPU_C1_val = alloca i1, !mcsema_real_eip !67
  %FPU_C2_val = alloca i1, !mcsema_real_eip !67
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !67
  %FPU_C3_val = alloca i1, !mcsema_real_eip !67
  %FPU_B_val = alloca i1, !mcsema_real_eip !67
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !67
  %DF_val = alloca i1, !mcsema_real_eip !67
  %OF_val = alloca i1, !mcsema_real_eip !67
  %SF_val = alloca i1, !mcsema_real_eip !67
  %CF_val = alloca i1, !mcsema_real_eip !67
  %AF_val = alloca i1, !mcsema_real_eip !67
  %PF_val = alloca i1, !mcsema_real_eip !67
  %ZF_val = alloca i1, !mcsema_real_eip !67
  %RIP_val = alloca i64, !mcsema_real_eip !67
  %R14_val = alloca i64, !mcsema_real_eip !67
  %R13_val = alloca i64, !mcsema_real_eip !67
  %R12_val = alloca i64, !mcsema_real_eip !67
  %R11_val = alloca i64, !mcsema_real_eip !67
  %R10_val = alloca i64, !mcsema_real_eip !67
  %R9_val = alloca i64, !mcsema_real_eip !67
  %R8_val = alloca i64, !mcsema_real_eip !67
  %RSP_val = alloca i64, !mcsema_real_eip !67
  %RBP_val = alloca i64, !mcsema_real_eip !67
  %RDI_val = alloca i64, !mcsema_real_eip !67
  %RSI_val = alloca i64, !mcsema_real_eip !67
  %RDX_val = alloca i64, !mcsema_real_eip !67
  %RCX_val = alloca i64, !mcsema_real_eip !67
  %RBX_val = alloca i64, !mcsema_real_eip !67
  %RAX_val = alloca i64, !mcsema_real_eip !67
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !67
  %1 = load i64, i64* %RAX, !mcsema_real_eip !67
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !67
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !67
  %2 = load i64, i64* %RBX, !mcsema_real_eip !67
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !67
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !67
  %3 = load i64, i64* %RCX, !mcsema_real_eip !67
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !67
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !67
  %4 = load i64, i64* %RDX, !mcsema_real_eip !67
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !67
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !67
  %5 = load i64, i64* %RSI, !mcsema_real_eip !67
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !67
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !67
  %6 = load i64, i64* %RDI, !mcsema_real_eip !67
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !67
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !67
  %7 = load i64, i64* %RSP, !mcsema_real_eip !67
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !67
  %8 = load i64, i64* %RBP, !mcsema_real_eip !67
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !67
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !67
  %9 = load i64, i64* %R8, !mcsema_real_eip !67
  store i64 %9, i64* %R8_val, !mcsema_real_eip !67
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !67
  %10 = load i64, i64* %R9, !mcsema_real_eip !67
  store i64 %10, i64* %R9_val, !mcsema_real_eip !67
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !67
  %11 = load i64, i64* %R10, !mcsema_real_eip !67
  store i64 %11, i64* %R10_val, !mcsema_real_eip !67
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !67
  %12 = load i64, i64* %R11, !mcsema_real_eip !67
  store i64 %12, i64* %R11_val, !mcsema_real_eip !67
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !67
  %13 = load i64, i64* %R12, !mcsema_real_eip !67
  store i64 %13, i64* %R12_val, !mcsema_real_eip !67
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !67
  %14 = load i64, i64* %R13, !mcsema_real_eip !67
  store i64 %14, i64* %R13_val, !mcsema_real_eip !67
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !67
  %15 = load i64, i64* %R14, !mcsema_real_eip !67
  store i64 %15, i64* %R14_val, !mcsema_real_eip !67
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !67
  %16 = load i64, i64* %R15, !mcsema_real_eip !67
  store i64 %16, i64* %R15_val, !mcsema_real_eip !67
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !67
  %17 = load i64, i64* %RIP, !mcsema_real_eip !67
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !67
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !67
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !67
  store i1 %18, i1* %CF_val, !mcsema_real_eip !67
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !67
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !67
  store i1 %19, i1* %PF_val, !mcsema_real_eip !67
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !67
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !67
  store i1 %20, i1* %AF_val, !mcsema_real_eip !67
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !67
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !67
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !67
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !67
  store i1 %22, i1* %SF_val, !mcsema_real_eip !67
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !67
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %OF_val, !mcsema_real_eip !67
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !67
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %DF_val, !mcsema_real_eip !67
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !67
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !67
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !67
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !67
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !67
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !67
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !67
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !67
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !67
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !67
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !67
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !67
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !67
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !67
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !67
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !67
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !67
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !67
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !67
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !67
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !67
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !67
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !67
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !67
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !67
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !67
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !67
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !67
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !67
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !67
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !67
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !67
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !67
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !67
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !67
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !67
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !67
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !67
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !67
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !67
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !67
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !67
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !67
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !67
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !67
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !67
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !67
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !67
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !67
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !67
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !67
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !67
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !67
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !67
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !67
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !67
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !67
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !67
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !67
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !67
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !67
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !67
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !67
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !67
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !67
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !67
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !67
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !67
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !67
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !67
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !67
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !67
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !67
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !67
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !67
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !67
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !67
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !67
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !67
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !67
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !67
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !67
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !67
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !67
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !67
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !67
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !67
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !67
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !67
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !67
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !67
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !67
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !67
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !67
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !67
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !67
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !67
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !67
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !67
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !67
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !67
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !67
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !67
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !67
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !67
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !67
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !67
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !67
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !67
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !67
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !67
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !67
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !67
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !67
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !67
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !67
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !67
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %78 = load i64, i64* %RSP_val, !mcsema_real_eip !67
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !67
  store i64 %77, i64* %80, !mcsema_real_eip !67
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !68
  %81 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %82 = add i64 %78, -16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !69
  store i64 %81, i64* %83, !mcsema_real_eip !69
  store i64 %82, i64* %RSP_val, !mcsema_real_eip !69
  %84 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %85 = add i64 %84, 40, !mcsema_real_eip !70
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !70
  %87 = load i64, i64* %86, !mcsema_real_eip !70
  store i64 %87, i64* %RAX_val, !mcsema_real_eip !70
  %88 = add i64 %84, 32, !mcsema_real_eip !71
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !71
  %90 = bitcast i64* %89 to i32*
  %91 = load i32, i32* %90, !mcsema_real_eip !71
  %92 = zext i32 %91 to i64, !mcsema_real_eip !71
  store i64 %92, i64* %R10_val, !mcsema_real_eip !71
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %94 = add i64 %93, 24, !mcsema_real_eip !72
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !72
  %96 = load i64, i64* %95, !mcsema_real_eip !72
  store i64 %96, i64* %R11_val, !mcsema_real_eip !72
  %97 = add i64 %93, 16, !mcsema_real_eip !73
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !73
  %99 = bitcast i64* %98 to i32*
  %100 = load i32, i32* %99, !mcsema_real_eip !73
  %101 = zext i32 %100 to i64, !mcsema_real_eip !73
  store i64 %101, i64* %RBX_val, !mcsema_real_eip !73
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %103 = add i64 %102, -12, !mcsema_real_eip !74
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !74
  %105 = load i64, i64* %RDI_val, !mcsema_real_eip !74
  %106 = trunc i64 %105 to i32, !mcsema_real_eip !74
  %107 = bitcast i64* %104 to i32*
  store i32 %106, i32* %107, !mcsema_real_eip !74
  %108 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %109 = add i64 %108, -16, !mcsema_real_eip !75
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !75
  %111 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %112 = trunc i64 %111 to i32, !mcsema_real_eip !75
  %113 = bitcast i64* %110 to i32*
  store i32 %112, i32* %113, !mcsema_real_eip !75
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %115 = add i64 %114, -20, !mcsema_real_eip !76
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !76
  %117 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  %118 = trunc i64 %117 to i32, !mcsema_real_eip !76
  %119 = bitcast i64* %116 to i32*
  store i32 %118, i32* %119, !mcsema_real_eip !76
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %121 = add i64 %120, -24, !mcsema_real_eip !77
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !77
  %123 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  %124 = trunc i64 %123 to i32, !mcsema_real_eip !77
  %125 = bitcast i64* %122 to i32*
  store i32 %124, i32* %125, !mcsema_real_eip !77
  %126 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %127 = add i64 %126, -28, !mcsema_real_eip !78
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !78
  %129 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %130 = trunc i64 %129 to i32, !mcsema_real_eip !78
  %131 = bitcast i64* %128 to i32*
  store i32 %130, i32* %131, !mcsema_real_eip !78
  %132 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %133 = add i64 %132, -32, !mcsema_real_eip !79
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !79
  %135 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %136 = trunc i64 %135 to i32, !mcsema_real_eip !79
  %137 = bitcast i64* %134 to i32*
  store i32 %136, i32* %137, !mcsema_real_eip !79
  %138 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %139 = add i64 %138, -36, !mcsema_real_eip !80
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !80
  %141 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %142 = trunc i64 %141 to i32, !mcsema_real_eip !80
  %143 = bitcast i64* %140 to i32*
  store i32 %142, i32* %143, !mcsema_real_eip !80
  %144 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %145 = add i64 %144, -48, !mcsema_real_eip !81
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !81
  %147 = load i64, i64* %R11_val, !mcsema_real_eip !81
  store i64 %147, i64* %146, !mcsema_real_eip !81
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %149 = add i64 %148, -52, !mcsema_real_eip !82
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !82
  %151 = load i64, i64* %R10_val, !mcsema_real_eip !82
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !82
  %153 = bitcast i64* %150 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !82
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %155 = add i64 %154, -64, !mcsema_real_eip !83
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !83
  %157 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  store i64 %157, i64* %156, !mcsema_real_eip !83
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %159 = add i64 %158, -68, !mcsema_real_eip !84
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !84
  %161 = bitcast i64* %160 to i32*
  store i32 0, i32* %161, !mcsema_real_eip !84
  %162 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %163 = add i64 %162, -72, !mcsema_real_eip !85
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !85
  %165 = bitcast i64* %164 to i32*
  store i32 0, i32* %165, !mcsema_real_eip !85
  %166 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %167 = add i64 %166, -72, !mcsema_real_eip !86
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !86
  %169 = bitcast i64* %168 to i32*
  %170 = load i32, i32* %169, !mcsema_real_eip !86
  %171 = zext i32 %170 to i64, !mcsema_real_eip !86
  store i64 %171, i64* %RAX_val, !mcsema_real_eip !86
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %173 = add i64 %172, -36, !mcsema_real_eip !87
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !87
  %175 = bitcast i64* %174 to i32*
  %176 = load i32, i32* %175, !mcsema_real_eip !87
  %177 = sub i32 %170, %176, !mcsema_real_eip !87
  %178 = xor i32 %177, %170, !mcsema_real_eip !87
  %179 = xor i32 %178, %176, !mcsema_real_eip !87
  %180 = and i32 %179, 16, !mcsema_real_eip !87
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !87
  store i1 %181, i1* %AF_val, !mcsema_real_eip !87
  %182 = trunc i32 %177 to i8, !mcsema_real_eip !87
  %183 = tail call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !87
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  store i1 %185, i1* %PF_val, !mcsema_real_eip !87
  %186 = icmp eq i32 %170, %176
  store i1 %186, i1* %ZF_val, !mcsema_real_eip !87
  %187 = icmp slt i32 %177, 0
  store i1 %187, i1* %SF_val, !mcsema_real_eip !87
  %188 = icmp ult i32 %170, %176, !mcsema_real_eip !87
  store i1 %188, i1* %CF_val, !mcsema_real_eip !87
  %189 = xor i32 %176, %170, !mcsema_real_eip !87
  %190 = and i32 %178, %189, !mcsema_real_eip !87
  %191 = icmp slt i32 %190, 0
  store i1 %191, i1* %OF_val, !mcsema_real_eip !87
  %192 = load i1, i1* %SF_val, !mcsema_real_eip !88
  %tmp = xor i1 %192, %191
  br i1 %tmp, label %block_0x51.preheader, label %block_0x7f, !mcsema_real_eip !88

block_0x51.preheader:                             ; preds = %entry
  br label %block_0x51

block_0x7f.loopexit:                              ; preds = %block_0x51
  br label %block_0x7f

block_0x7f:                                       ; preds = %block_0x7f.loopexit, %entry
  %193 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %194 = add i64 %193, -68, !mcsema_real_eip !89
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !89
  %196 = bitcast i64* %195 to i32*
  %197 = load i32, i32* %196, !mcsema_real_eip !89
  %198 = zext i32 %197 to i64, !mcsema_real_eip !89
  store i64 %198, i64* %RAX_val, !mcsema_real_eip !89
  %199 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %200 = add i64 %199, -12, !mcsema_real_eip !90
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !90
  %202 = bitcast i64* %201 to i32*
  %203 = load i32, i32* %202, !mcsema_real_eip !90
  %204 = zext i32 %203 to i64, !mcsema_real_eip !90
  store i64 %204, i64* %RCX_val, !mcsema_real_eip !90
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %206 = add i64 %205, -16, !mcsema_real_eip !91
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !91
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %208, !mcsema_real_eip !91
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %203, i32 %209)
  %210 = extractvalue { i32, i1 } %uadd72, 0
  %211 = xor i32 %210, %209, !mcsema_real_eip !91
  %212 = xor i32 %211, %203, !mcsema_real_eip !91
  %213 = and i32 %212, 16, !mcsema_real_eip !91
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !91
  store i1 %214, i1* %AF_val, !mcsema_real_eip !91
  %215 = icmp slt i32 %210, 0
  store i1 %215, i1* %SF_val, !mcsema_real_eip !91
  %216 = icmp eq i32 %210, 0, !mcsema_real_eip !91
  store i1 %216, i1* %ZF_val, !mcsema_real_eip !91
  %217 = xor i32 %203, -2147483648, !mcsema_real_eip !91
  %218 = xor i32 %217, %209, !mcsema_real_eip !91
  %219 = and i32 %211, %218, !mcsema_real_eip !91
  %220 = icmp slt i32 %219, 0
  store i1 %220, i1* %OF_val, !mcsema_real_eip !91
  %221 = trunc i32 %210 to i8, !mcsema_real_eip !91
  %222 = tail call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !91
  %223 = and i8 %222, 1
  %224 = icmp eq i8 %223, 0
  store i1 %224, i1* %PF_val, !mcsema_real_eip !91
  %225 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %225, i1* %CF_val, !mcsema_real_eip !91
  %226 = zext i32 %210 to i64, !mcsema_real_eip !91
  store i64 %226, i64* %RCX_val, !mcsema_real_eip !91
  %227 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %228 = add i64 %227, -20, !mcsema_real_eip !92
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !92
  %230 = bitcast i64* %229 to i32*
  %231 = load i32, i32* %230, !mcsema_real_eip !92
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %210, i32 %231)
  %232 = extractvalue { i32, i1 } %uadd73, 0
  %233 = xor i32 %232, %231, !mcsema_real_eip !92
  %234 = xor i32 %233, %210, !mcsema_real_eip !92
  %235 = and i32 %234, 16, !mcsema_real_eip !92
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !92
  store i1 %236, i1* %AF_val, !mcsema_real_eip !92
  %237 = icmp slt i32 %232, 0
  store i1 %237, i1* %SF_val, !mcsema_real_eip !92
  %238 = icmp eq i32 %232, 0, !mcsema_real_eip !92
  store i1 %238, i1* %ZF_val, !mcsema_real_eip !92
  %239 = xor i32 %210, -2147483648, !mcsema_real_eip !92
  %240 = xor i32 %239, %231, !mcsema_real_eip !92
  %241 = and i32 %233, %240, !mcsema_real_eip !92
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF_val, !mcsema_real_eip !92
  %243 = trunc i32 %232 to i8, !mcsema_real_eip !92
  %244 = tail call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !92
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF_val, !mcsema_real_eip !92
  %247 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %247, i1* %CF_val, !mcsema_real_eip !92
  %248 = zext i32 %232 to i64, !mcsema_real_eip !92
  store i64 %248, i64* %RCX_val, !mcsema_real_eip !92
  %249 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %250 = add i64 %249, -24, !mcsema_real_eip !93
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !93
  %252 = bitcast i64* %251 to i32*
  %253 = load i32, i32* %252, !mcsema_real_eip !93
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %253)
  %254 = extractvalue { i32, i1 } %uadd74, 0
  %255 = xor i32 %254, %253, !mcsema_real_eip !93
  %256 = xor i32 %255, %232, !mcsema_real_eip !93
  %257 = and i32 %256, 16, !mcsema_real_eip !93
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !93
  store i1 %258, i1* %AF_val, !mcsema_real_eip !93
  %259 = icmp slt i32 %254, 0
  store i1 %259, i1* %SF_val, !mcsema_real_eip !93
  %260 = icmp eq i32 %254, 0, !mcsema_real_eip !93
  store i1 %260, i1* %ZF_val, !mcsema_real_eip !93
  %261 = xor i32 %232, -2147483648, !mcsema_real_eip !93
  %262 = xor i32 %261, %253, !mcsema_real_eip !93
  %263 = and i32 %255, %262, !mcsema_real_eip !93
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF_val, !mcsema_real_eip !93
  %265 = trunc i32 %254 to i8, !mcsema_real_eip !93
  %266 = tail call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !93
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF_val, !mcsema_real_eip !93
  %269 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %269, i1* %CF_val, !mcsema_real_eip !93
  %270 = zext i32 %254 to i64, !mcsema_real_eip !93
  store i64 %270, i64* %RCX_val, !mcsema_real_eip !93
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %272 = add i64 %271, -28, !mcsema_real_eip !94
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !94
  %274 = bitcast i64* %273 to i32*
  %275 = load i32, i32* %274, !mcsema_real_eip !94
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %254, i32 %275)
  %276 = extractvalue { i32, i1 } %uadd75, 0
  %277 = xor i32 %276, %275, !mcsema_real_eip !94
  %278 = xor i32 %277, %254, !mcsema_real_eip !94
  %279 = and i32 %278, 16, !mcsema_real_eip !94
  %280 = icmp ne i32 %279, 0, !mcsema_real_eip !94
  store i1 %280, i1* %AF_val, !mcsema_real_eip !94
  %281 = icmp slt i32 %276, 0
  store i1 %281, i1* %SF_val, !mcsema_real_eip !94
  %282 = icmp eq i32 %276, 0, !mcsema_real_eip !94
  store i1 %282, i1* %ZF_val, !mcsema_real_eip !94
  %283 = xor i32 %254, -2147483648, !mcsema_real_eip !94
  %284 = xor i32 %283, %275, !mcsema_real_eip !94
  %285 = and i32 %277, %284, !mcsema_real_eip !94
  %286 = icmp slt i32 %285, 0
  store i1 %286, i1* %OF_val, !mcsema_real_eip !94
  %287 = trunc i32 %276 to i8, !mcsema_real_eip !94
  %288 = tail call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !94
  %289 = and i8 %288, 1
  %290 = icmp eq i8 %289, 0
  store i1 %290, i1* %PF_val, !mcsema_real_eip !94
  %291 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %291, i1* %CF_val, !mcsema_real_eip !94
  %292 = zext i32 %276 to i64, !mcsema_real_eip !94
  store i64 %292, i64* %RCX_val, !mcsema_real_eip !94
  %293 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %294 = add i64 %293, -32, !mcsema_real_eip !95
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !95
  %296 = bitcast i64* %295 to i32*
  %297 = load i32, i32* %296, !mcsema_real_eip !95
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %297)
  %298 = extractvalue { i32, i1 } %uadd76, 0
  %299 = xor i32 %298, %297, !mcsema_real_eip !95
  %300 = xor i32 %299, %276, !mcsema_real_eip !95
  %301 = and i32 %300, 16, !mcsema_real_eip !95
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !95
  store i1 %302, i1* %AF_val, !mcsema_real_eip !95
  %303 = icmp eq i32 %298, 0, !mcsema_real_eip !95
  store i1 %303, i1* %ZF_val, !mcsema_real_eip !95
  %304 = trunc i32 %298 to i8, !mcsema_real_eip !95
  %305 = tail call i8 @llvm.ctpop.i8(i8 %304), !mcsema_real_eip !95
  %306 = and i8 %305, 1
  %307 = icmp eq i8 %306, 0
  store i1 %307, i1* %PF_val, !mcsema_real_eip !95
  %308 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %308, i1* %CF_val, !mcsema_real_eip !95
  %309 = zext i32 %298 to i64, !mcsema_real_eip !95
  store i64 %309, i64* %RCX_val, !mcsema_real_eip !95
  %310 = load i64, i64* %RAX_val, !mcsema_real_eip !96
  %311 = trunc i64 %310 to i32, !mcsema_real_eip !96
  %312 = sext i32 %311 to i64, !mcsema_real_eip !96
  %313 = sext i32 %298 to i64, !mcsema_real_eip !96
  %314 = mul i64 %312, %313, !mcsema_real_eip !96
  %315 = mul i32 %311, %298, !mcsema_real_eip !96
  %316 = sext i32 %315 to i64, !mcsema_real_eip !96
  %317 = icmp ne i64 %316, %314, !mcsema_real_eip !96
  store i1 %317, i1* %SF_val, !mcsema_real_eip !96
  store i1 %317, i1* %OF_val, !mcsema_real_eip !96
  %318 = zext i32 %315 to i64, !mcsema_real_eip !96
  store i64 %318, i64* %RAX_val, !mcsema_real_eip !96
  %319 = load i64, i64* %RSP_val, !mcsema_real_eip !97
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !97
  %321 = load i64, i64* %320, !mcsema_real_eip !97
  store i64 %321, i64* %RBX_val, !mcsema_real_eip !97
  %322 = add i64 %319, 8, !mcsema_real_eip !97
  store i64 %322, i64* %RSP_val, !mcsema_real_eip !97
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !98
  %324 = load i64, i64* %323, !mcsema_real_eip !98
  store i64 %324, i64* %RBP_val, !mcsema_real_eip !98
  %325 = add i64 %319, 24, !mcsema_real_eip !99
  store i64 %325, i64* %RSP_val, !mcsema_real_eip !99
  %326 = load i64, i64* %RAX_val, !mcsema_real_eip !99
  store i64 %326, i64* %RAX, !mcsema_real_eip !99
  %327 = load i64, i64* %RBX_val, !mcsema_real_eip !99
  store i64 %327, i64* %RBX, !mcsema_real_eip !99
  %328 = load i64, i64* %RCX_val, !mcsema_real_eip !99
  store i64 %328, i64* %RCX, !mcsema_real_eip !99
  %329 = load i64, i64* %RDX_val, !mcsema_real_eip !99
  store i64 %329, i64* %RDX, !mcsema_real_eip !99
  %330 = load i64, i64* %RSI_val, !mcsema_real_eip !99
  store i64 %330, i64* %RSI, !mcsema_real_eip !99
  %331 = load i64, i64* %RDI_val, !mcsema_real_eip !99
  store i64 %331, i64* %RDI, !mcsema_real_eip !99
  %332 = load i64, i64* %RSP_val, !mcsema_real_eip !99
  store i64 %332, i64* %RSP, !mcsema_real_eip !99
  %333 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  store i64 %333, i64* %RBP, !mcsema_real_eip !99
  %334 = load i64, i64* %R8_val, !mcsema_real_eip !99
  store i64 %334, i64* %R8, !mcsema_real_eip !99
  %335 = load i64, i64* %R9_val, !mcsema_real_eip !99
  store i64 %335, i64* %R9, !mcsema_real_eip !99
  %336 = load i64, i64* %R10_val, !mcsema_real_eip !99
  store i64 %336, i64* %R10, !mcsema_real_eip !99
  %337 = load i64, i64* %R11_val, !mcsema_real_eip !99
  store i64 %337, i64* %R11, !mcsema_real_eip !99
  %338 = load i64, i64* %R12_val, !mcsema_real_eip !99
  store i64 %338, i64* %R12, !mcsema_real_eip !99
  %339 = load i64, i64* %R13_val, !mcsema_real_eip !99
  store i64 %339, i64* %R13, !mcsema_real_eip !99
  %340 = load i64, i64* %R14_val, !mcsema_real_eip !99
  store i64 %340, i64* %R14, !mcsema_real_eip !99
  %341 = load i64, i64* %R15_val, !mcsema_real_eip !99
  store i64 %341, i64* %R15, !mcsema_real_eip !99
  %342 = load i64, i64* %RIP_val, !mcsema_real_eip !99
  store i64 %342, i64* %RIP, !mcsema_real_eip !99
  %343 = load i1, i1* %CF_val, !mcsema_real_eip !99
  store i1 %343, i1* %CF, align 1, !mcsema_real_eip !99
  %344 = load i1, i1* %PF_val, !mcsema_real_eip !99
  store i1 %344, i1* %PF, align 1, !mcsema_real_eip !99
  %345 = load i1, i1* %AF_val, !mcsema_real_eip !99
  store i1 %345, i1* %AF, align 1, !mcsema_real_eip !99
  %346 = load i1, i1* %ZF_val, !mcsema_real_eip !99
  store i1 %346, i1* %ZF, align 1, !mcsema_real_eip !99
  %347 = load i1, i1* %SF_val, !mcsema_real_eip !99
  store i1 %347, i1* %SF, align 1, !mcsema_real_eip !99
  %348 = load i1, i1* %OF_val, !mcsema_real_eip !99
  store i1 %348, i1* %OF, align 1, !mcsema_real_eip !99
  %349 = load i1, i1* %DF_val, !mcsema_real_eip !99
  store i1 %349, i1* %DF, align 1, !mcsema_real_eip !99
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !99
  %350 = load i1, i1* %FPU_B_val, !mcsema_real_eip !99
  store i1 %350, i1* %FPU_B, align 1, !mcsema_real_eip !99
  %351 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !99
  store i1 %351, i1* %FPU_C3, align 1, !mcsema_real_eip !99
  %352 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !99
  store i3 %352, i3* %FPU_TOP, align 1, !mcsema_real_eip !99
  %353 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !99
  store i1 %353, i1* %FPU_C2, align 1, !mcsema_real_eip !99
  %354 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !99
  store i1 %354, i1* %FPU_C1, align 1, !mcsema_real_eip !99
  %355 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !99
  store i1 %355, i1* %FPU_C0, align 1, !mcsema_real_eip !99
  %356 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !99
  store i1 %356, i1* %FPU_ES, align 1, !mcsema_real_eip !99
  %357 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !99
  store i1 %357, i1* %FPU_SF, align 1, !mcsema_real_eip !99
  %358 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !99
  store i1 %358, i1* %FPU_PE, align 1, !mcsema_real_eip !99
  %359 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !99
  store i1 %359, i1* %FPU_UE, align 1, !mcsema_real_eip !99
  %360 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !99
  store i1 %360, i1* %FPU_OE, align 1, !mcsema_real_eip !99
  %361 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !99
  store i1 %361, i1* %FPU_ZE, align 1, !mcsema_real_eip !99
  %362 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !99
  store i1 %362, i1* %FPU_DE, align 1, !mcsema_real_eip !99
  %363 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !99
  store i1 %363, i1* %FPU_IE, align 1, !mcsema_real_eip !99
  %364 = load i1, i1* %FPU_X_val, !mcsema_real_eip !99
  store i1 %364, i1* %FPU_X, align 1, !mcsema_real_eip !99
  %365 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !99
  store i2 %365, i2* %FPU_RC, align 1, !mcsema_real_eip !99
  %366 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !99
  store i2 %366, i2* %FPU_PC, align 1, !mcsema_real_eip !99
  %367 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !99
  store i1 %367, i1* %FPU_PM, align 1, !mcsema_real_eip !99
  %368 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !99
  store i1 %368, i1* %FPU_UM, align 1, !mcsema_real_eip !99
  %369 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !99
  store i1 %369, i1* %FPU_OM, align 1, !mcsema_real_eip !99
  %370 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !99
  store i1 %370, i1* %FPU_ZM, align 1, !mcsema_real_eip !99
  %371 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !99
  store i1 %371, i1* %FPU_DM, align 1, !mcsema_real_eip !99
  %372 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !99
  store i1 %372, i1* %FPU_IM, align 1, !mcsema_real_eip !99
  %373 = load i64, i64* %53, align 4
  store i64 %373, i64* %52, align 4
  %374 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !99
  store i16 %374, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !99
  %375 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !99
  store i64 %375, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !99
  %376 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !99
  store i16 %376, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !99
  %377 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !99
  store i64 %377, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !99
  %378 = load i128, i128* %XMM0_val, !mcsema_real_eip !99
  store i128 %378, i128* %XMM0, align 1, !mcsema_real_eip !99
  %379 = load i128, i128* %XMM1_val, !mcsema_real_eip !99
  store i128 %379, i128* %XMM1, align 1, !mcsema_real_eip !99
  %380 = load i128, i128* %XMM2_val, !mcsema_real_eip !99
  store i128 %380, i128* %XMM2, align 1, !mcsema_real_eip !99
  %381 = load i128, i128* %XMM3_val, !mcsema_real_eip !99
  store i128 %381, i128* %XMM3, align 1, !mcsema_real_eip !99
  %382 = load i128, i128* %XMM4_val, !mcsema_real_eip !99
  store i128 %382, i128* %XMM4, align 1, !mcsema_real_eip !99
  %383 = load i128, i128* %XMM5_val, !mcsema_real_eip !99
  store i128 %383, i128* %XMM5, align 1, !mcsema_real_eip !99
  %384 = load i128, i128* %XMM6_val, !mcsema_real_eip !99
  store i128 %384, i128* %XMM6, align 1, !mcsema_real_eip !99
  %385 = load i128, i128* %XMM7_val, !mcsema_real_eip !99
  store i128 %385, i128* %XMM7, align 1, !mcsema_real_eip !99
  %386 = load i128, i128* %XMM8_val, !mcsema_real_eip !99
  store i128 %386, i128* %XMM8, align 1, !mcsema_real_eip !99
  %387 = load i128, i128* %XMM9_val, !mcsema_real_eip !99
  store i128 %387, i128* %XMM9, align 1, !mcsema_real_eip !99
  %388 = load i128, i128* %XMM10_val, !mcsema_real_eip !99
  store i128 %388, i128* %XMM10, align 1, !mcsema_real_eip !99
  %389 = load i128, i128* %XMM11_val, !mcsema_real_eip !99
  store i128 %389, i128* %XMM11, align 1, !mcsema_real_eip !99
  %390 = load i128, i128* %XMM12_val, !mcsema_real_eip !99
  store i128 %390, i128* %XMM12, align 1, !mcsema_real_eip !99
  %391 = load i128, i128* %XMM13_val, !mcsema_real_eip !99
  store i128 %391, i128* %XMM13, align 1, !mcsema_real_eip !99
  %392 = load i128, i128* %XMM14_val, !mcsema_real_eip !99
  store i128 %392, i128* %XMM14, align 1, !mcsema_real_eip !99
  %393 = load i128, i128* %XMM15_val, !mcsema_real_eip !99
  store i128 %393, i128* %XMM15, align 1, !mcsema_real_eip !99
  %394 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !99
  store i64 %394, i64* %STACK_BASE, align 1, !mcsema_real_eip !99
  %395 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !99
  store i64 %395, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !99
  ret void, !mcsema_real_eip !99

block_0x51:                                       ; preds = %block_0x51, %block_0x51.preheader
  %396 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %397 = add i64 %396, -72, !mcsema_real_eip !100
  %398 = inttoptr i64 %397 to i64*, !mcsema_real_eip !100
  %399 = bitcast i64* %398 to i32*
  %400 = load i32, i32* %399, !mcsema_real_eip !100
  %401 = sext i32 %400 to i64, !mcsema_real_eip !100
  store i64 %401, i64* %RAX_val, !mcsema_real_eip !100
  %402 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %403 = add i64 %402, -48, !mcsema_real_eip !101
  %404 = inttoptr i64 %403 to i64*, !mcsema_real_eip !101
  %405 = load i64, i64* %404, !mcsema_real_eip !101
  store i64 %405, i64* %RCX_val, !mcsema_real_eip !101
  %406 = shl nsw i64 %401, 2
  %407 = add i64 %405, %406, !mcsema_real_eip !102
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !102
  %409 = bitcast i64* %408 to i32*
  %410 = load i32, i32* %409, !mcsema_real_eip !102
  %411 = zext i32 %410 to i64, !mcsema_real_eip !102
  store i64 %411, i64* %RDX_val, !mcsema_real_eip !102
  %412 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %413 = add i64 %412, -72, !mcsema_real_eip !103
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !103
  %415 = bitcast i64* %414 to i32*
  %416 = load i32, i32* %415, !mcsema_real_eip !103
  %417 = sext i32 %416 to i64, !mcsema_real_eip !103
  store i64 %417, i64* %RAX_val, !mcsema_real_eip !103
  %418 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %419 = add i64 %418, -64, !mcsema_real_eip !104
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !104
  %421 = load i64, i64* %420, !mcsema_real_eip !104
  store i64 %421, i64* %RCX_val, !mcsema_real_eip !104
  %422 = shl nsw i64 %417, 2
  %423 = add i64 %421, %422, !mcsema_real_eip !105
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !105
  %425 = load i64, i64* %RDX_val, !mcsema_real_eip !105
  %426 = trunc i64 %425 to i32, !mcsema_real_eip !105
  %427 = bitcast i64* %424 to i32*
  %428 = load i32, i32* %427, !mcsema_real_eip !105
  %429 = sub i32 %426, %428, !mcsema_real_eip !105
  %430 = xor i32 %429, %426, !mcsema_real_eip !105
  %431 = xor i32 %430, %428, !mcsema_real_eip !105
  %432 = and i32 %431, 16, !mcsema_real_eip !105
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !105
  store i1 %433, i1* %AF_val, !mcsema_real_eip !105
  %434 = trunc i32 %429 to i8, !mcsema_real_eip !105
  %435 = tail call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !105
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF_val, !mcsema_real_eip !105
  %438 = icmp eq i32 %426, %428
  store i1 %438, i1* %ZF_val, !mcsema_real_eip !105
  %439 = icmp slt i32 %429, 0
  store i1 %439, i1* %SF_val, !mcsema_real_eip !105
  %440 = icmp ult i32 %426, %428, !mcsema_real_eip !105
  store i1 %440, i1* %CF_val, !mcsema_real_eip !105
  %441 = xor i32 %426, %428, !mcsema_real_eip !105
  %442 = and i32 %430, %441, !mcsema_real_eip !105
  %443 = icmp slt i32 %442, 0
  store i1 %443, i1* %OF_val, !mcsema_real_eip !105
  %444 = zext i32 %429 to i64, !mcsema_real_eip !105
  store i64 %444, i64* %RDX_val, !mcsema_real_eip !105
  %445 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %446 = add i64 %445, -68, !mcsema_real_eip !106
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !106
  %448 = bitcast i64* %447 to i32*
  %449 = load i32, i32* %448, !mcsema_real_eip !106
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %429, i32 %449)
  %450 = extractvalue { i32, i1 } %uadd, 0
  %451 = xor i32 %450, %449, !mcsema_real_eip !107
  %452 = xor i32 %451, %429, !mcsema_real_eip !107
  %453 = and i32 %452, 16, !mcsema_real_eip !107
  %454 = icmp ne i32 %453, 0, !mcsema_real_eip !107
  store i1 %454, i1* %AF_val, !mcsema_real_eip !107
  %455 = icmp slt i32 %450, 0
  store i1 %455, i1* %SF_val, !mcsema_real_eip !107
  %456 = icmp eq i32 %450, 0, !mcsema_real_eip !107
  store i1 %456, i1* %ZF_val, !mcsema_real_eip !107
  %457 = xor i32 %449, -2147483648, !mcsema_real_eip !107
  %458 = xor i32 %457, %429, !mcsema_real_eip !107
  %459 = and i32 %451, %458, !mcsema_real_eip !107
  %460 = icmp slt i32 %459, 0
  store i1 %460, i1* %OF_val, !mcsema_real_eip !107
  %461 = trunc i32 %450 to i8, !mcsema_real_eip !107
  %462 = tail call i8 @llvm.ctpop.i8(i8 %461), !mcsema_real_eip !107
  %463 = and i8 %462, 1
  %464 = icmp eq i8 %463, 0
  store i1 %464, i1* %PF_val, !mcsema_real_eip !107
  %465 = extractvalue { i32, i1 } %uadd, 1
  store i1 %465, i1* %CF_val, !mcsema_real_eip !107
  %466 = zext i32 %450 to i64, !mcsema_real_eip !107
  store i64 %466, i64* %RSI_val, !mcsema_real_eip !107
  %467 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %468 = add i64 %467, -68, !mcsema_real_eip !108
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !108
  %470 = bitcast i64* %469 to i32*
  store i32 %450, i32* %470, !mcsema_real_eip !108
  %471 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %472 = add i64 %471, -72, !mcsema_real_eip !109
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !109
  %474 = bitcast i64* %473 to i32*
  %475 = load i32, i32* %474, !mcsema_real_eip !109
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 1)
  %476 = extractvalue { i32, i1 } %uadd70, 0
  %477 = xor i32 %476, %475, !mcsema_real_eip !110
  %478 = and i32 %477, 16, !mcsema_real_eip !110
  %479 = icmp ne i32 %478, 0, !mcsema_real_eip !110
  store i1 %479, i1* %AF_val, !mcsema_real_eip !110
  %480 = icmp slt i32 %476, 0
  store i1 %480, i1* %SF_val, !mcsema_real_eip !110
  %481 = icmp eq i32 %476, 0, !mcsema_real_eip !110
  store i1 %481, i1* %ZF_val, !mcsema_real_eip !110
  %482 = xor i32 %475, -2147483648, !mcsema_real_eip !110
  %483 = and i32 %477, %482, !mcsema_real_eip !110
  %484 = icmp slt i32 %483, 0
  store i1 %484, i1* %OF_val, !mcsema_real_eip !110
  %485 = trunc i32 %476 to i8, !mcsema_real_eip !110
  %486 = tail call i8 @llvm.ctpop.i8(i8 %485), !mcsema_real_eip !110
  %487 = and i8 %486, 1
  %488 = icmp eq i8 %487, 0
  store i1 %488, i1* %PF_val, !mcsema_real_eip !110
  %489 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %489, i1* %CF_val, !mcsema_real_eip !110
  %490 = zext i32 %476 to i64, !mcsema_real_eip !110
  store i64 %490, i64* %RAX_val, !mcsema_real_eip !110
  %491 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %492 = add i64 %491, -72, !mcsema_real_eip !111
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !111
  %494 = bitcast i64* %493 to i32*
  store i32 %476, i32* %494, !mcsema_real_eip !111
  %495 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %496 = add i64 %495, -72, !mcsema_real_eip !86
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !86
  %498 = bitcast i64* %497 to i32*
  %499 = load i32, i32* %498, !mcsema_real_eip !86
  %500 = zext i32 %499 to i64, !mcsema_real_eip !86
  store i64 %500, i64* %RAX_val, !mcsema_real_eip !86
  %501 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %502 = add i64 %501, -36, !mcsema_real_eip !87
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !87
  %504 = bitcast i64* %503 to i32*
  %505 = load i32, i32* %504, !mcsema_real_eip !87
  %506 = sub i32 %499, %505, !mcsema_real_eip !87
  %507 = xor i32 %506, %499, !mcsema_real_eip !87
  %508 = xor i32 %507, %505, !mcsema_real_eip !87
  %509 = and i32 %508, 16, !mcsema_real_eip !87
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !87
  store i1 %510, i1* %AF_val, !mcsema_real_eip !87
  %511 = trunc i32 %506 to i8, !mcsema_real_eip !87
  %512 = tail call i8 @llvm.ctpop.i8(i8 %511), !mcsema_real_eip !87
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  store i1 %514, i1* %PF_val, !mcsema_real_eip !87
  %515 = icmp eq i32 %499, %505
  store i1 %515, i1* %ZF_val, !mcsema_real_eip !87
  %516 = icmp slt i32 %506, 0
  store i1 %516, i1* %SF_val, !mcsema_real_eip !87
  %517 = icmp ult i32 %499, %505, !mcsema_real_eip !87
  store i1 %517, i1* %CF_val, !mcsema_real_eip !87
  %518 = xor i32 %505, %499, !mcsema_real_eip !87
  %519 = and i32 %507, %518, !mcsema_real_eip !87
  %520 = icmp slt i32 %519, 0
  store i1 %520, i1* %OF_val, !mcsema_real_eip !87
  %521 = load i1, i1* %SF_val, !mcsema_real_eip !88
  %tmp71 = xor i1 %521, %520
  br i1 %tmp71, label %block_0x51, label %block_0x7f.loopexit, !mcsema_real_eip !88
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_a0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0.1(%struct.regs*, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 80
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 80
  %R15_val = alloca i64, !mcsema_real_eip !67
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !67
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !67
  %XMM15_val = alloca i128, !mcsema_real_eip !67
  %XMM14_val = alloca i128, !mcsema_real_eip !67
  %XMM13_val = alloca i128, !mcsema_real_eip !67
  %XMM12_val = alloca i128, !mcsema_real_eip !67
  %XMM11_val = alloca i128, !mcsema_real_eip !67
  %XMM10_val = alloca i128, !mcsema_real_eip !67
  %XMM9_val = alloca i128, !mcsema_real_eip !67
  %XMM8_val = alloca i128, !mcsema_real_eip !67
  %XMM7_val = alloca i128, !mcsema_real_eip !67
  %XMM6_val = alloca i128, !mcsema_real_eip !67
  %XMM5_val = alloca i128, !mcsema_real_eip !67
  %XMM4_val = alloca i128, !mcsema_real_eip !67
  %XMM3_val = alloca i128, !mcsema_real_eip !67
  %XMM2_val = alloca i128, !mcsema_real_eip !67
  %XMM1_val = alloca i128, !mcsema_real_eip !67
  %XMM0_val = alloca i128, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !67
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !67
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !67
  %FPU_IM_val = alloca i1, !mcsema_real_eip !67
  %FPU_DM_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !67
  %FPU_OM_val = alloca i1, !mcsema_real_eip !67
  %FPU_UM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PM_val = alloca i1, !mcsema_real_eip !67
  %FPU_PC_val = alloca i2, !mcsema_real_eip !67
  %FPU_RC_val = alloca i2, !mcsema_real_eip !67
  %FPU_X_val = alloca i1, !mcsema_real_eip !67
  %FPU_IE_val = alloca i1, !mcsema_real_eip !67
  %FPU_DE_val = alloca i1, !mcsema_real_eip !67
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !67
  %FPU_OE_val = alloca i1, !mcsema_real_eip !67
  %FPU_UE_val = alloca i1, !mcsema_real_eip !67
  %FPU_PE_val = alloca i1, !mcsema_real_eip !67
  %FPU_SF_val = alloca i1, !mcsema_real_eip !67
  %FPU_ES_val = alloca i1, !mcsema_real_eip !67
  %FPU_C0_val = alloca i1, !mcsema_real_eip !67
  %FPU_C1_val = alloca i1, !mcsema_real_eip !67
  %FPU_C2_val = alloca i1, !mcsema_real_eip !67
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !67
  %FPU_C3_val = alloca i1, !mcsema_real_eip !67
  %FPU_B_val = alloca i1, !mcsema_real_eip !67
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !67
  %DF_val = alloca i1, !mcsema_real_eip !67
  %OF_val = alloca i1, !mcsema_real_eip !67
  %SF_val = alloca i1, !mcsema_real_eip !67
  %CF_val = alloca i1, !mcsema_real_eip !67
  %AF_val = alloca i1, !mcsema_real_eip !67
  %PF_val = alloca i1, !mcsema_real_eip !67
  %ZF_val = alloca i1, !mcsema_real_eip !67
  %RIP_val = alloca i64, !mcsema_real_eip !67
  %R14_val = alloca i64, !mcsema_real_eip !67
  %R13_val = alloca i64, !mcsema_real_eip !67
  %R12_val = alloca i64, !mcsema_real_eip !67
  %R11_val = alloca i64, !mcsema_real_eip !67
  %R10_val = alloca i64, !mcsema_real_eip !67
  %R9_val = alloca i64, !mcsema_real_eip !67
  %R8_val = alloca i64, !mcsema_real_eip !67
  %RSP_val = alloca i64, !mcsema_real_eip !67
  %RBP_val = alloca i64, !mcsema_real_eip !67
  %RDI_val = alloca i64, !mcsema_real_eip !67
  %RSI_val = alloca i64, !mcsema_real_eip !67
  %RDX_val = alloca i64, !mcsema_real_eip !67
  %RCX_val = alloca i64, !mcsema_real_eip !67
  %RBX_val = alloca i64, !mcsema_real_eip !67
  %RAX_val = alloca i64, !mcsema_real_eip !67
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !67
  %1 = load i64, i64* %RAX, !mcsema_real_eip !67
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !67
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !67
  %2 = load i64, i64* %RBX, !mcsema_real_eip !67
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !67
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !67
  %3 = load i64, i64* %RCX, !mcsema_real_eip !67
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !67
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !67
  %4 = load i64, i64* %RDX, !mcsema_real_eip !67
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !67
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !67
  %5 = load i64, i64* %RSI, !mcsema_real_eip !67
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !67
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !67
  %6 = load i64, i64* %RDI, !mcsema_real_eip !67
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !67
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !67
  %7 = load i64, i64* %RSP, !mcsema_real_eip !67
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !67
  %8 = load i64, i64* %RBP, !mcsema_real_eip !67
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !67
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !67
  %9 = load i64, i64* %R8, !mcsema_real_eip !67
  store i64 %9, i64* %R8_val, !mcsema_real_eip !67
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !67
  %10 = load i64, i64* %R9, !mcsema_real_eip !67
  store i64 %10, i64* %R9_val, !mcsema_real_eip !67
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !67
  %11 = load i64, i64* %R10, !mcsema_real_eip !67
  store i64 %11, i64* %R10_val, !mcsema_real_eip !67
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !67
  %12 = load i64, i64* %R11, !mcsema_real_eip !67
  store i64 %12, i64* %R11_val, !mcsema_real_eip !67
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !67
  %13 = load i64, i64* %R12, !mcsema_real_eip !67
  store i64 %13, i64* %R12_val, !mcsema_real_eip !67
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !67
  %14 = load i64, i64* %R13, !mcsema_real_eip !67
  store i64 %14, i64* %R13_val, !mcsema_real_eip !67
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !67
  %15 = load i64, i64* %R14, !mcsema_real_eip !67
  store i64 %15, i64* %R14_val, !mcsema_real_eip !67
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !67
  %16 = load i64, i64* %R15, !mcsema_real_eip !67
  store i64 %16, i64* %R15_val, !mcsema_real_eip !67
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !67
  %17 = load i64, i64* %RIP, !mcsema_real_eip !67
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !67
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !67
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !67
  store i1 %18, i1* %CF_val, !mcsema_real_eip !67
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !67
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !67
  store i1 %19, i1* %PF_val, !mcsema_real_eip !67
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !67
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !67
  store i1 %20, i1* %AF_val, !mcsema_real_eip !67
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !67
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !67
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !67
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !67
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !67
  store i1 %22, i1* %SF_val, !mcsema_real_eip !67
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !67
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !67
  store i1 %23, i1* %OF_val, !mcsema_real_eip !67
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !67
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !67
  store i1 %24, i1* %DF_val, !mcsema_real_eip !67
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !67
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !67
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !67
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !67
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !67
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !67
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !67
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !67
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !67
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !67
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !67
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !67
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !67
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !67
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !67
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !67
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !67
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !67
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !67
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !67
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !67
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !67
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !67
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !67
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !67
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !67
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !67
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !67
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !67
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !67
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !67
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !67
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !67
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !67
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !67
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !67
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !67
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !67
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !67
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !67
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !67
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !67
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !67
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !67
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !67
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !67
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !67
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !67
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !67
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !67
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !67
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !67
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !67
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !67
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !67
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !67
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !67
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !67
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !67
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !67
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !67
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !67
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !67
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !67
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !67
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !67
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !67
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !67
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !67
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !67
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !67
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !67
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !67
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !67
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
  br i1 %_cond6_, label %54, label %55

; <label>:54:                                     ; preds = %entry
  %_address_in_parent_stack_1 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_
  br label %55

; <label>:55:                                     ; preds = %entry, %54
  %56 = phi i64 [ %_head_p2i_, %entry ], [ %_address_in_parent_stack_1, %54 ]
  %_address_ptr_in_parent_stack_ = inttoptr i64 %56 to i64*
  %_new_load_ = load i64, i64* %_address_ptr_in_parent_stack_
  store i64 %_new_load_, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !67
  %57 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !67
  store i16 %57, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !67
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !67
  %58 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !67
  store i64 %58, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !67
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !67
  %59 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !67
  store i16 %59, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !67
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !67
  %60 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !67
  store i64 %60, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !67
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !67
  %61 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !67
  store i128 %61, i128* %XMM0_val, !mcsema_real_eip !67
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !67
  %62 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !67
  store i128 %62, i128* %XMM1_val, !mcsema_real_eip !67
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !67
  %63 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !67
  store i128 %63, i128* %XMM2_val, !mcsema_real_eip !67
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !67
  %64 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !67
  store i128 %64, i128* %XMM3_val, !mcsema_real_eip !67
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !67
  %65 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !67
  store i128 %65, i128* %XMM4_val, !mcsema_real_eip !67
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !67
  %66 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !67
  store i128 %66, i128* %XMM5_val, !mcsema_real_eip !67
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !67
  %67 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !67
  store i128 %67, i128* %XMM6_val, !mcsema_real_eip !67
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !67
  %68 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !67
  store i128 %68, i128* %XMM7_val, !mcsema_real_eip !67
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !67
  %69 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !67
  store i128 %69, i128* %XMM8_val, !mcsema_real_eip !67
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !67
  %70 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !67
  store i128 %70, i128* %XMM9_val, !mcsema_real_eip !67
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !67
  %71 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !67
  store i128 %71, i128* %XMM10_val, !mcsema_real_eip !67
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !67
  %72 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !67
  store i128 %72, i128* %XMM11_val, !mcsema_real_eip !67
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !67
  %73 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !67
  store i128 %73, i128* %XMM12_val, !mcsema_real_eip !67
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !67
  %74 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !67
  store i128 %74, i128* %XMM13_val, !mcsema_real_eip !67
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !67
  %75 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !67
  store i128 %75, i128* %XMM14_val, !mcsema_real_eip !67
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !67
  %76 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !67
  store i128 %76, i128* %XMM15_val, !mcsema_real_eip !67
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !67
  %77 = load i64, i64* %STACK_BASE, !mcsema_real_eip !67
  store i64 %77, i64* %STACK_BASE_val, !mcsema_real_eip !67
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !67
  %78 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !67
  store i64 %78, i64* %STACK_LIMIT_val, !mcsema_real_eip !67
  %79 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %80 = load i64, i64* %RSP_val, !mcsema_real_eip !67
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !67
  store i64 %79, i64* %82, !mcsema_real_eip !67
  store i64 %81, i64* %RBP_val, !mcsema_real_eip !68
  %83 = load i64, i64* %RBX_val, !mcsema_real_eip !69
  %84 = add i64 %80, -16
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !69
  store i64 %83, i64* %85, !mcsema_real_eip !69
  store i64 %84, i64* %RSP_val, !mcsema_real_eip !69
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %87 = add i64 %86, 40, !mcsema_real_eip !70
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !70
  %_head_p2i_2 = ptrtoint i64* %88 to i64
  %_offset_above_rbp_3 = sub i64 %_head_p2i_2, %_local_stack_end_
  %_address_in_parent_stack_4 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  %_cond0_5 = icmp ugt i64 %_head_p2i_2, %_local_stack_end_
  %_cond1_6 = icmp ugt i64 %_head_p2i_2, %_parent_stack_end_ptr_
  %_cond2_7 = icmp ult i64 %_head_p2i_2, %_parent_stack_start_ptr_
  %_cond3_8 = or i1 %_cond1_6, %_cond2_7
  %_cond4_9 = icmp ule i64 %_address_in_parent_stack_4, %_parent_stack_end_ptr_
  %_cond5_10 = and i1 %_cond0_5, %_cond3_8
  %_cond6_11 = and i1 %_cond5_10, %_cond4_9
  br i1 %_cond6_11, label %89, label %90

; <label>:89:                                     ; preds = %55
  %_address_in_parent_stack_12 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_3
  br label %90

; <label>:90:                                     ; preds = %55, %89
  %91 = phi i64 [ %_head_p2i_2, %55 ], [ %_address_in_parent_stack_12, %89 ]
  %_address_ptr_in_parent_stack_13 = inttoptr i64 %91 to i64*
  %_new_load_14 = load i64, i64* %_address_ptr_in_parent_stack_13
  store i64 %_new_load_14, i64* %RAX_val, !mcsema_real_eip !70
  %92 = add i64 %86, 32, !mcsema_real_eip !71
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !71
  %94 = bitcast i64* %93 to i32*
  %_head_p2i_15 = ptrtoint i32* %94 to i64
  %_offset_above_rbp_16 = sub i64 %_head_p2i_15, %_local_stack_end_
  %_address_in_parent_stack_17 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  %_cond0_18 = icmp ugt i64 %_head_p2i_15, %_local_stack_end_
  %_cond1_19 = icmp ugt i64 %_head_p2i_15, %_parent_stack_end_ptr_
  %_cond2_20 = icmp ult i64 %_head_p2i_15, %_parent_stack_start_ptr_
  %_cond3_21 = or i1 %_cond1_19, %_cond2_20
  %_cond4_22 = icmp ule i64 %_address_in_parent_stack_17, %_parent_stack_end_ptr_
  %_cond5_23 = and i1 %_cond0_18, %_cond3_21
  %_cond6_24 = and i1 %_cond5_23, %_cond4_22
  br i1 %_cond6_24, label %95, label %96

; <label>:95:                                     ; preds = %90
  %_address_in_parent_stack_25 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_16
  br label %96

; <label>:96:                                     ; preds = %90, %95
  %97 = phi i64 [ %_head_p2i_15, %90 ], [ %_address_in_parent_stack_25, %95 ]
  %_address_ptr_in_parent_stack_26 = inttoptr i64 %97 to i32*
  %_new_load_27 = load i32, i32* %_address_ptr_in_parent_stack_26
  %98 = zext i32 %_new_load_27 to i64, !mcsema_real_eip !71
  store i64 %98, i64* %R10_val, !mcsema_real_eip !71
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %100 = add i64 %99, 24, !mcsema_real_eip !72
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !72
  %_head_p2i_28 = ptrtoint i64* %101 to i64
  %_offset_above_rbp_29 = sub i64 %_head_p2i_28, %_local_stack_end_
  %_address_in_parent_stack_30 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  %_cond0_31 = icmp ugt i64 %_head_p2i_28, %_local_stack_end_
  %_cond1_32 = icmp ugt i64 %_head_p2i_28, %_parent_stack_end_ptr_
  %_cond2_33 = icmp ult i64 %_head_p2i_28, %_parent_stack_start_ptr_
  %_cond3_34 = or i1 %_cond1_32, %_cond2_33
  %_cond4_35 = icmp ule i64 %_address_in_parent_stack_30, %_parent_stack_end_ptr_
  %_cond5_36 = and i1 %_cond0_31, %_cond3_34
  %_cond6_37 = and i1 %_cond5_36, %_cond4_35
  br i1 %_cond6_37, label %102, label %103

; <label>:102:                                    ; preds = %96
  %_address_in_parent_stack_38 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_29
  br label %103

; <label>:103:                                    ; preds = %96, %102
  %104 = phi i64 [ %_head_p2i_28, %96 ], [ %_address_in_parent_stack_38, %102 ]
  %_address_ptr_in_parent_stack_39 = inttoptr i64 %104 to i64*
  %_new_load_40 = load i64, i64* %_address_ptr_in_parent_stack_39
  store i64 %_new_load_40, i64* %R11_val, !mcsema_real_eip !72
  %105 = add i64 %99, 16, !mcsema_real_eip !73
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !73
  %107 = bitcast i64* %106 to i32*
  %_head_p2i_41 = ptrtoint i32* %107 to i64
  %_offset_above_rbp_42 = sub i64 %_head_p2i_41, %_local_stack_end_
  %_address_in_parent_stack_43 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  %_cond0_44 = icmp ugt i64 %_head_p2i_41, %_local_stack_end_
  %_cond1_45 = icmp ugt i64 %_head_p2i_41, %_parent_stack_end_ptr_
  %_cond2_46 = icmp ult i64 %_head_p2i_41, %_parent_stack_start_ptr_
  %_cond3_47 = or i1 %_cond1_45, %_cond2_46
  %_cond4_48 = icmp ule i64 %_address_in_parent_stack_43, %_parent_stack_end_ptr_
  %_cond5_49 = and i1 %_cond0_44, %_cond3_47
  %_cond6_50 = and i1 %_cond5_49, %_cond4_48
  br i1 %_cond6_50, label %108, label %109

; <label>:108:                                    ; preds = %103
  %_address_in_parent_stack_51 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_42
  br label %109

; <label>:109:                                    ; preds = %103, %108
  %110 = phi i64 [ %_head_p2i_41, %103 ], [ %_address_in_parent_stack_51, %108 ]
  %_address_ptr_in_parent_stack_52 = inttoptr i64 %110 to i32*
  %_new_load_53 = load i32, i32* %_address_ptr_in_parent_stack_52
  %111 = zext i32 %_new_load_53 to i64, !mcsema_real_eip !73
  store i64 %111, i64* %RBX_val, !mcsema_real_eip !73
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %113 = add i64 %112, -12, !mcsema_real_eip !74
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !74
  %115 = load i64, i64* %RDI_val, !mcsema_real_eip !74
  %116 = trunc i64 %115 to i32, !mcsema_real_eip !74
  %117 = bitcast i64* %114 to i32*
  store i32 %116, i32* %117, !mcsema_real_eip !74
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %119 = add i64 %118, -16, !mcsema_real_eip !75
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !75
  %121 = load i64, i64* %RSI_val, !mcsema_real_eip !75
  %122 = trunc i64 %121 to i32, !mcsema_real_eip !75
  %123 = bitcast i64* %120 to i32*
  store i32 %122, i32* %123, !mcsema_real_eip !75
  %124 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %125 = add i64 %124, -20, !mcsema_real_eip !76
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !76
  %127 = load i64, i64* %RDX_val, !mcsema_real_eip !76
  %128 = trunc i64 %127 to i32, !mcsema_real_eip !76
  %129 = bitcast i64* %126 to i32*
  store i32 %128, i32* %129, !mcsema_real_eip !76
  %130 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %131 = add i64 %130, -24, !mcsema_real_eip !77
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !77
  %133 = load i64, i64* %RCX_val, !mcsema_real_eip !77
  %134 = trunc i64 %133 to i32, !mcsema_real_eip !77
  %135 = bitcast i64* %132 to i32*
  store i32 %134, i32* %135, !mcsema_real_eip !77
  %136 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %137 = add i64 %136, -28, !mcsema_real_eip !78
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !78
  %139 = load i64, i64* %R8_val, !mcsema_real_eip !78
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !78
  %141 = bitcast i64* %138 to i32*
  store i32 %140, i32* %141, !mcsema_real_eip !78
  %142 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %143 = add i64 %142, -32, !mcsema_real_eip !79
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !79
  %145 = load i64, i64* %R9_val, !mcsema_real_eip !79
  %146 = trunc i64 %145 to i32, !mcsema_real_eip !79
  %147 = bitcast i64* %144 to i32*
  store i32 %146, i32* %147, !mcsema_real_eip !79
  %148 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %149 = add i64 %148, -36, !mcsema_real_eip !80
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !80
  %151 = load i64, i64* %RBX_val, !mcsema_real_eip !80
  %152 = trunc i64 %151 to i32, !mcsema_real_eip !80
  %153 = bitcast i64* %150 to i32*
  store i32 %152, i32* %153, !mcsema_real_eip !80
  %154 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %155 = add i64 %154, -48, !mcsema_real_eip !81
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !81
  %157 = load i64, i64* %R11_val, !mcsema_real_eip !81
  store i64 %157, i64* %156, !mcsema_real_eip !81
  %158 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %159 = add i64 %158, -52, !mcsema_real_eip !82
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !82
  %161 = load i64, i64* %R10_val, !mcsema_real_eip !82
  %162 = trunc i64 %161 to i32, !mcsema_real_eip !82
  %163 = bitcast i64* %160 to i32*
  store i32 %162, i32* %163, !mcsema_real_eip !82
  %164 = load i64, i64* %RBP_val, !mcsema_real_eip !83
  %165 = add i64 %164, -64, !mcsema_real_eip !83
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !83
  %167 = load i64, i64* %RAX_val, !mcsema_real_eip !83
  store i64 %167, i64* %166, !mcsema_real_eip !83
  %168 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %169 = add i64 %168, -68, !mcsema_real_eip !84
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !84
  %171 = bitcast i64* %170 to i32*
  store i32 0, i32* %171, !mcsema_real_eip !84
  %172 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %173 = add i64 %172, -72, !mcsema_real_eip !85
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !85
  %175 = bitcast i64* %174 to i32*
  store i32 0, i32* %175, !mcsema_real_eip !85
  %176 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %177 = add i64 %176, -72, !mcsema_real_eip !86
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !86
  %179 = bitcast i64* %178 to i32*
  %_head_p2i_54 = ptrtoint i32* %179 to i64
  %_offset_above_rbp_55 = sub i64 %_head_p2i_54, %_local_stack_end_
  %_address_in_parent_stack_56 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  %_cond0_57 = icmp ugt i64 %_head_p2i_54, %_local_stack_end_
  %_cond1_58 = icmp ugt i64 %_head_p2i_54, %_parent_stack_end_ptr_
  %_cond2_59 = icmp ult i64 %_head_p2i_54, %_parent_stack_start_ptr_
  %_cond3_60 = or i1 %_cond1_58, %_cond2_59
  %_cond4_61 = icmp ule i64 %_address_in_parent_stack_56, %_parent_stack_end_ptr_
  %_cond5_62 = and i1 %_cond0_57, %_cond3_60
  %_cond6_63 = and i1 %_cond5_62, %_cond4_61
  br i1 %_cond6_63, label %180, label %181

; <label>:180:                                    ; preds = %109
  %_address_in_parent_stack_64 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_55
  br label %181

; <label>:181:                                    ; preds = %109, %180
  %182 = phi i64 [ %_head_p2i_54, %109 ], [ %_address_in_parent_stack_64, %180 ]
  %_address_ptr_in_parent_stack_65 = inttoptr i64 %182 to i32*
  %_new_load_66 = load i32, i32* %_address_ptr_in_parent_stack_65
  %183 = zext i32 %_new_load_66 to i64, !mcsema_real_eip !86
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !86
  %184 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %185 = add i64 %184, -36, !mcsema_real_eip !87
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !87
  %187 = bitcast i64* %186 to i32*
  %_head_p2i_67 = ptrtoint i32* %187 to i64
  %_offset_above_rbp_68 = sub i64 %_head_p2i_67, %_local_stack_end_
  %_address_in_parent_stack_69 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  %_cond0_70 = icmp ugt i64 %_head_p2i_67, %_local_stack_end_
  %_cond1_71 = icmp ugt i64 %_head_p2i_67, %_parent_stack_end_ptr_
  %_cond2_72 = icmp ult i64 %_head_p2i_67, %_parent_stack_start_ptr_
  %_cond3_73 = or i1 %_cond1_71, %_cond2_72
  %_cond4_74 = icmp ule i64 %_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond5_75 = and i1 %_cond0_70, %_cond3_73
  %_cond6_76 = and i1 %_cond5_75, %_cond4_74
  br i1 %_cond6_76, label %188, label %189

; <label>:188:                                    ; preds = %181
  %_address_in_parent_stack_77 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_68
  br label %189

; <label>:189:                                    ; preds = %181, %188
  %190 = phi i64 [ %_head_p2i_67, %181 ], [ %_address_in_parent_stack_77, %188 ]
  %_address_ptr_in_parent_stack_78 = inttoptr i64 %190 to i32*
  %_new_load_79 = load i32, i32* %_address_ptr_in_parent_stack_78
  %191 = sub i32 %_new_load_66, %_new_load_79, !mcsema_real_eip !87
  %192 = xor i32 %191, %_new_load_66, !mcsema_real_eip !87
  %193 = xor i32 %192, %_new_load_79, !mcsema_real_eip !87
  %194 = and i32 %193, 16, !mcsema_real_eip !87
  %195 = icmp ne i32 %194, 0, !mcsema_real_eip !87
  store i1 %195, i1* %AF_val, !mcsema_real_eip !87
  %196 = trunc i32 %191 to i8, !mcsema_real_eip !87
  %197 = tail call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !87
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF_val, !mcsema_real_eip !87
  %200 = icmp eq i32 %_new_load_66, %_new_load_79
  store i1 %200, i1* %ZF_val, !mcsema_real_eip !87
  %201 = icmp slt i32 %191, 0
  store i1 %201, i1* %SF_val, !mcsema_real_eip !87
  %202 = icmp ult i32 %_new_load_66, %_new_load_79, !mcsema_real_eip !87
  store i1 %202, i1* %CF_val, !mcsema_real_eip !87
  %203 = xor i32 %_new_load_79, %_new_load_66, !mcsema_real_eip !87
  %204 = and i32 %192, %203, !mcsema_real_eip !87
  %205 = icmp slt i32 %204, 0
  store i1 %205, i1* %OF_val, !mcsema_real_eip !87
  %206 = load i1, i1* %SF_val, !mcsema_real_eip !88
  %tmp = xor i1 %206, %205
  br i1 %tmp, label %block_0x51.preheader, label %block_0x7f, !mcsema_real_eip !88

block_0x51.preheader:                             ; preds = %189
  br label %block_0x51

block_0x7f.loopexit:                              ; preds = %558
  br label %block_0x7f

block_0x7f:                                       ; preds = %block_0x7f.loopexit, %189
  %207 = load i64, i64* %RBP_val, !mcsema_real_eip !89
  %208 = add i64 %207, -68, !mcsema_real_eip !89
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !89
  %210 = bitcast i64* %209 to i32*
  %_head_p2i_80 = ptrtoint i32* %210 to i64
  %_offset_above_rbp_81 = sub i64 %_head_p2i_80, %_local_stack_end_
  %_address_in_parent_stack_82 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  %_cond0_83 = icmp ugt i64 %_head_p2i_80, %_local_stack_end_
  %_cond1_84 = icmp ugt i64 %_head_p2i_80, %_parent_stack_end_ptr_
  %_cond2_85 = icmp ult i64 %_head_p2i_80, %_parent_stack_start_ptr_
  %_cond3_86 = or i1 %_cond1_84, %_cond2_85
  %_cond4_87 = icmp ule i64 %_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond5_88 = and i1 %_cond0_83, %_cond3_86
  %_cond6_89 = and i1 %_cond5_88, %_cond4_87
  br i1 %_cond6_89, label %211, label %212

; <label>:211:                                    ; preds = %block_0x7f
  %_address_in_parent_stack_90 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_81
  br label %212

; <label>:212:                                    ; preds = %block_0x7f, %211
  %213 = phi i64 [ %_head_p2i_80, %block_0x7f ], [ %_address_in_parent_stack_90, %211 ]
  %_address_ptr_in_parent_stack_91 = inttoptr i64 %213 to i32*
  %_new_load_92 = load i32, i32* %_address_ptr_in_parent_stack_91
  %214 = zext i32 %_new_load_92 to i64, !mcsema_real_eip !89
  store i64 %214, i64* %RAX_val, !mcsema_real_eip !89
  %215 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %216 = add i64 %215, -12, !mcsema_real_eip !90
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !90
  %218 = bitcast i64* %217 to i32*
  %_head_p2i_93 = ptrtoint i32* %218 to i64
  %_offset_above_rbp_94 = sub i64 %_head_p2i_93, %_local_stack_end_
  %_address_in_parent_stack_95 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  %_cond0_96 = icmp ugt i64 %_head_p2i_93, %_local_stack_end_
  %_cond1_97 = icmp ugt i64 %_head_p2i_93, %_parent_stack_end_ptr_
  %_cond2_98 = icmp ult i64 %_head_p2i_93, %_parent_stack_start_ptr_
  %_cond3_99 = or i1 %_cond1_97, %_cond2_98
  %_cond4_100 = icmp ule i64 %_address_in_parent_stack_95, %_parent_stack_end_ptr_
  %_cond5_101 = and i1 %_cond0_96, %_cond3_99
  %_cond6_102 = and i1 %_cond5_101, %_cond4_100
  br i1 %_cond6_102, label %219, label %220

; <label>:219:                                    ; preds = %212
  %_address_in_parent_stack_103 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_94
  br label %220

; <label>:220:                                    ; preds = %212, %219
  %221 = phi i64 [ %_head_p2i_93, %212 ], [ %_address_in_parent_stack_103, %219 ]
  %_address_ptr_in_parent_stack_104 = inttoptr i64 %221 to i32*
  %_new_load_105 = load i32, i32* %_address_ptr_in_parent_stack_104
  %222 = zext i32 %_new_load_105 to i64, !mcsema_real_eip !90
  store i64 %222, i64* %RCX_val, !mcsema_real_eip !90
  %223 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %224 = add i64 %223, -16, !mcsema_real_eip !91
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !91
  %226 = bitcast i64* %225 to i32*
  %_head_p2i_106 = ptrtoint i32* %226 to i64
  %_offset_above_rbp_107 = sub i64 %_head_p2i_106, %_local_stack_end_
  %_address_in_parent_stack_108 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  %_cond0_109 = icmp ugt i64 %_head_p2i_106, %_local_stack_end_
  %_cond1_110 = icmp ugt i64 %_head_p2i_106, %_parent_stack_end_ptr_
  %_cond2_111 = icmp ult i64 %_head_p2i_106, %_parent_stack_start_ptr_
  %_cond3_112 = or i1 %_cond1_110, %_cond2_111
  %_cond4_113 = icmp ule i64 %_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond5_114 = and i1 %_cond0_109, %_cond3_112
  %_cond6_115 = and i1 %_cond5_114, %_cond4_113
  br i1 %_cond6_115, label %227, label %228

; <label>:227:                                    ; preds = %220
  %_address_in_parent_stack_116 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_107
  br label %228

; <label>:228:                                    ; preds = %220, %227
  %229 = phi i64 [ %_head_p2i_106, %220 ], [ %_address_in_parent_stack_116, %227 ]
  %_address_ptr_in_parent_stack_117 = inttoptr i64 %229 to i32*
  %_new_load_118 = load i32, i32* %_address_ptr_in_parent_stack_117
  %uadd72 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_105, i32 %_new_load_118)
  %230 = extractvalue { i32, i1 } %uadd72, 0
  %231 = xor i32 %230, %_new_load_118, !mcsema_real_eip !91
  %232 = xor i32 %231, %_new_load_105, !mcsema_real_eip !91
  %233 = and i32 %232, 16, !mcsema_real_eip !91
  %234 = icmp ne i32 %233, 0, !mcsema_real_eip !91
  store i1 %234, i1* %AF_val, !mcsema_real_eip !91
  %235 = icmp slt i32 %230, 0
  store i1 %235, i1* %SF_val, !mcsema_real_eip !91
  %236 = icmp eq i32 %230, 0, !mcsema_real_eip !91
  store i1 %236, i1* %ZF_val, !mcsema_real_eip !91
  %237 = xor i32 %_new_load_105, -2147483648, !mcsema_real_eip !91
  %238 = xor i32 %237, %_new_load_118, !mcsema_real_eip !91
  %239 = and i32 %231, %238, !mcsema_real_eip !91
  %240 = icmp slt i32 %239, 0
  store i1 %240, i1* %OF_val, !mcsema_real_eip !91
  %241 = trunc i32 %230 to i8, !mcsema_real_eip !91
  %242 = tail call i8 @llvm.ctpop.i8(i8 %241), !mcsema_real_eip !91
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  store i1 %244, i1* %PF_val, !mcsema_real_eip !91
  %245 = extractvalue { i32, i1 } %uadd72, 1
  store i1 %245, i1* %CF_val, !mcsema_real_eip !91
  %246 = zext i32 %230 to i64, !mcsema_real_eip !91
  store i64 %246, i64* %RCX_val, !mcsema_real_eip !91
  %247 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %248 = add i64 %247, -20, !mcsema_real_eip !92
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !92
  %250 = bitcast i64* %249 to i32*
  %_head_p2i_119 = ptrtoint i32* %250 to i64
  %_offset_above_rbp_120 = sub i64 %_head_p2i_119, %_local_stack_end_
  %_address_in_parent_stack_121 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  %_cond0_122 = icmp ugt i64 %_head_p2i_119, %_local_stack_end_
  %_cond1_123 = icmp ugt i64 %_head_p2i_119, %_parent_stack_end_ptr_
  %_cond2_124 = icmp ult i64 %_head_p2i_119, %_parent_stack_start_ptr_
  %_cond3_125 = or i1 %_cond1_123, %_cond2_124
  %_cond4_126 = icmp ule i64 %_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond5_127 = and i1 %_cond0_122, %_cond3_125
  %_cond6_128 = and i1 %_cond5_127, %_cond4_126
  br i1 %_cond6_128, label %251, label %252

; <label>:251:                                    ; preds = %228
  %_address_in_parent_stack_129 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_120
  br label %252

; <label>:252:                                    ; preds = %228, %251
  %253 = phi i64 [ %_head_p2i_119, %228 ], [ %_address_in_parent_stack_129, %251 ]
  %_address_ptr_in_parent_stack_130 = inttoptr i64 %253 to i32*
  %_new_load_131 = load i32, i32* %_address_ptr_in_parent_stack_130
  %uadd73 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %_new_load_131)
  %254 = extractvalue { i32, i1 } %uadd73, 0
  %255 = xor i32 %254, %_new_load_131, !mcsema_real_eip !92
  %256 = xor i32 %255, %230, !mcsema_real_eip !92
  %257 = and i32 %256, 16, !mcsema_real_eip !92
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !92
  store i1 %258, i1* %AF_val, !mcsema_real_eip !92
  %259 = icmp slt i32 %254, 0
  store i1 %259, i1* %SF_val, !mcsema_real_eip !92
  %260 = icmp eq i32 %254, 0, !mcsema_real_eip !92
  store i1 %260, i1* %ZF_val, !mcsema_real_eip !92
  %261 = xor i32 %230, -2147483648, !mcsema_real_eip !92
  %262 = xor i32 %261, %_new_load_131, !mcsema_real_eip !92
  %263 = and i32 %255, %262, !mcsema_real_eip !92
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF_val, !mcsema_real_eip !92
  %265 = trunc i32 %254 to i8, !mcsema_real_eip !92
  %266 = tail call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !92
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF_val, !mcsema_real_eip !92
  %269 = extractvalue { i32, i1 } %uadd73, 1
  store i1 %269, i1* %CF_val, !mcsema_real_eip !92
  %270 = zext i32 %254 to i64, !mcsema_real_eip !92
  store i64 %270, i64* %RCX_val, !mcsema_real_eip !92
  %271 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %272 = add i64 %271, -24, !mcsema_real_eip !93
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !93
  %274 = bitcast i64* %273 to i32*
  %_head_p2i_132 = ptrtoint i32* %274 to i64
  %_offset_above_rbp_133 = sub i64 %_head_p2i_132, %_local_stack_end_
  %_address_in_parent_stack_134 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  %_cond0_135 = icmp ugt i64 %_head_p2i_132, %_local_stack_end_
  %_cond1_136 = icmp ugt i64 %_head_p2i_132, %_parent_stack_end_ptr_
  %_cond2_137 = icmp ult i64 %_head_p2i_132, %_parent_stack_start_ptr_
  %_cond3_138 = or i1 %_cond1_136, %_cond2_137
  %_cond4_139 = icmp ule i64 %_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond5_140 = and i1 %_cond0_135, %_cond3_138
  %_cond6_141 = and i1 %_cond5_140, %_cond4_139
  br i1 %_cond6_141, label %275, label %276

; <label>:275:                                    ; preds = %252
  %_address_in_parent_stack_142 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_133
  br label %276

; <label>:276:                                    ; preds = %252, %275
  %277 = phi i64 [ %_head_p2i_132, %252 ], [ %_address_in_parent_stack_142, %275 ]
  %_address_ptr_in_parent_stack_143 = inttoptr i64 %277 to i32*
  %_new_load_144 = load i32, i32* %_address_ptr_in_parent_stack_143
  %uadd74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %254, i32 %_new_load_144)
  %278 = extractvalue { i32, i1 } %uadd74, 0
  %279 = xor i32 %278, %_new_load_144, !mcsema_real_eip !93
  %280 = xor i32 %279, %254, !mcsema_real_eip !93
  %281 = and i32 %280, 16, !mcsema_real_eip !93
  %282 = icmp ne i32 %281, 0, !mcsema_real_eip !93
  store i1 %282, i1* %AF_val, !mcsema_real_eip !93
  %283 = icmp slt i32 %278, 0
  store i1 %283, i1* %SF_val, !mcsema_real_eip !93
  %284 = icmp eq i32 %278, 0, !mcsema_real_eip !93
  store i1 %284, i1* %ZF_val, !mcsema_real_eip !93
  %285 = xor i32 %254, -2147483648, !mcsema_real_eip !93
  %286 = xor i32 %285, %_new_load_144, !mcsema_real_eip !93
  %287 = and i32 %279, %286, !mcsema_real_eip !93
  %288 = icmp slt i32 %287, 0
  store i1 %288, i1* %OF_val, !mcsema_real_eip !93
  %289 = trunc i32 %278 to i8, !mcsema_real_eip !93
  %290 = tail call i8 @llvm.ctpop.i8(i8 %289), !mcsema_real_eip !93
  %291 = and i8 %290, 1
  %292 = icmp eq i8 %291, 0
  store i1 %292, i1* %PF_val, !mcsema_real_eip !93
  %293 = extractvalue { i32, i1 } %uadd74, 1
  store i1 %293, i1* %CF_val, !mcsema_real_eip !93
  %294 = zext i32 %278 to i64, !mcsema_real_eip !93
  store i64 %294, i64* %RCX_val, !mcsema_real_eip !93
  %295 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %296 = add i64 %295, -28, !mcsema_real_eip !94
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !94
  %298 = bitcast i64* %297 to i32*
  %_head_p2i_145 = ptrtoint i32* %298 to i64
  %_offset_above_rbp_146 = sub i64 %_head_p2i_145, %_local_stack_end_
  %_address_in_parent_stack_147 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  %_cond0_148 = icmp ugt i64 %_head_p2i_145, %_local_stack_end_
  %_cond1_149 = icmp ugt i64 %_head_p2i_145, %_parent_stack_end_ptr_
  %_cond2_150 = icmp ult i64 %_head_p2i_145, %_parent_stack_start_ptr_
  %_cond3_151 = or i1 %_cond1_149, %_cond2_150
  %_cond4_152 = icmp ule i64 %_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond5_153 = and i1 %_cond0_148, %_cond3_151
  %_cond6_154 = and i1 %_cond5_153, %_cond4_152
  br i1 %_cond6_154, label %299, label %300

; <label>:299:                                    ; preds = %276
  %_address_in_parent_stack_155 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_146
  br label %300

; <label>:300:                                    ; preds = %276, %299
  %301 = phi i64 [ %_head_p2i_145, %276 ], [ %_address_in_parent_stack_155, %299 ]
  %_address_ptr_in_parent_stack_156 = inttoptr i64 %301 to i32*
  %_new_load_157 = load i32, i32* %_address_ptr_in_parent_stack_156
  %uadd75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %278, i32 %_new_load_157)
  %302 = extractvalue { i32, i1 } %uadd75, 0
  %303 = xor i32 %302, %_new_load_157, !mcsema_real_eip !94
  %304 = xor i32 %303, %278, !mcsema_real_eip !94
  %305 = and i32 %304, 16, !mcsema_real_eip !94
  %306 = icmp ne i32 %305, 0, !mcsema_real_eip !94
  store i1 %306, i1* %AF_val, !mcsema_real_eip !94
  %307 = icmp slt i32 %302, 0
  store i1 %307, i1* %SF_val, !mcsema_real_eip !94
  %308 = icmp eq i32 %302, 0, !mcsema_real_eip !94
  store i1 %308, i1* %ZF_val, !mcsema_real_eip !94
  %309 = xor i32 %278, -2147483648, !mcsema_real_eip !94
  %310 = xor i32 %309, %_new_load_157, !mcsema_real_eip !94
  %311 = and i32 %303, %310, !mcsema_real_eip !94
  %312 = icmp slt i32 %311, 0
  store i1 %312, i1* %OF_val, !mcsema_real_eip !94
  %313 = trunc i32 %302 to i8, !mcsema_real_eip !94
  %314 = tail call i8 @llvm.ctpop.i8(i8 %313), !mcsema_real_eip !94
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  store i1 %316, i1* %PF_val, !mcsema_real_eip !94
  %317 = extractvalue { i32, i1 } %uadd75, 1
  store i1 %317, i1* %CF_val, !mcsema_real_eip !94
  %318 = zext i32 %302 to i64, !mcsema_real_eip !94
  store i64 %318, i64* %RCX_val, !mcsema_real_eip !94
  %319 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %320 = add i64 %319, -32, !mcsema_real_eip !95
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !95
  %322 = bitcast i64* %321 to i32*
  %_head_p2i_158 = ptrtoint i32* %322 to i64
  %_offset_above_rbp_159 = sub i64 %_head_p2i_158, %_local_stack_end_
  %_address_in_parent_stack_160 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_159
  %_cond0_161 = icmp ugt i64 %_head_p2i_158, %_local_stack_end_
  %_cond1_162 = icmp ugt i64 %_head_p2i_158, %_parent_stack_end_ptr_
  %_cond2_163 = icmp ult i64 %_head_p2i_158, %_parent_stack_start_ptr_
  %_cond3_164 = or i1 %_cond1_162, %_cond2_163
  %_cond4_165 = icmp ule i64 %_address_in_parent_stack_160, %_parent_stack_end_ptr_
  %_cond5_166 = and i1 %_cond0_161, %_cond3_164
  %_cond6_167 = and i1 %_cond5_166, %_cond4_165
  br i1 %_cond6_167, label %323, label %324

; <label>:323:                                    ; preds = %300
  %_address_in_parent_stack_168 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_159
  br label %324

; <label>:324:                                    ; preds = %300, %323
  %325 = phi i64 [ %_head_p2i_158, %300 ], [ %_address_in_parent_stack_168, %323 ]
  %_address_ptr_in_parent_stack_169 = inttoptr i64 %325 to i32*
  %_new_load_170 = load i32, i32* %_address_ptr_in_parent_stack_169
  %uadd76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %302, i32 %_new_load_170)
  %326 = extractvalue { i32, i1 } %uadd76, 0
  %327 = xor i32 %326, %_new_load_170, !mcsema_real_eip !95
  %328 = xor i32 %327, %302, !mcsema_real_eip !95
  %329 = and i32 %328, 16, !mcsema_real_eip !95
  %330 = icmp ne i32 %329, 0, !mcsema_real_eip !95
  store i1 %330, i1* %AF_val, !mcsema_real_eip !95
  %331 = icmp eq i32 %326, 0, !mcsema_real_eip !95
  store i1 %331, i1* %ZF_val, !mcsema_real_eip !95
  %332 = trunc i32 %326 to i8, !mcsema_real_eip !95
  %333 = tail call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !95
  %334 = and i8 %333, 1
  %335 = icmp eq i8 %334, 0
  store i1 %335, i1* %PF_val, !mcsema_real_eip !95
  %336 = extractvalue { i32, i1 } %uadd76, 1
  store i1 %336, i1* %CF_val, !mcsema_real_eip !95
  %337 = zext i32 %326 to i64, !mcsema_real_eip !95
  store i64 %337, i64* %RCX_val, !mcsema_real_eip !95
  %338 = load i64, i64* %RAX_val, !mcsema_real_eip !96
  %339 = trunc i64 %338 to i32, !mcsema_real_eip !96
  %340 = sext i32 %339 to i64, !mcsema_real_eip !96
  %341 = sext i32 %326 to i64, !mcsema_real_eip !96
  %342 = mul i64 %340, %341, !mcsema_real_eip !96
  %343 = mul i32 %339, %326, !mcsema_real_eip !96
  %344 = sext i32 %343 to i64, !mcsema_real_eip !96
  %345 = icmp ne i64 %344, %342, !mcsema_real_eip !96
  store i1 %345, i1* %SF_val, !mcsema_real_eip !96
  store i1 %345, i1* %OF_val, !mcsema_real_eip !96
  %346 = zext i32 %343 to i64, !mcsema_real_eip !96
  store i64 %346, i64* %RAX_val, !mcsema_real_eip !96
  %347 = load i64, i64* %RSP_val, !mcsema_real_eip !97
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !97
  %_head_p2i_171 = ptrtoint i64* %348 to i64
  %_offset_above_rbp_172 = sub i64 %_head_p2i_171, %_local_stack_end_
  %_address_in_parent_stack_173 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_172
  %_cond0_174 = icmp ugt i64 %_head_p2i_171, %_local_stack_end_
  %_cond1_175 = icmp ugt i64 %_head_p2i_171, %_parent_stack_end_ptr_
  %_cond2_176 = icmp ult i64 %_head_p2i_171, %_parent_stack_start_ptr_
  %_cond3_177 = or i1 %_cond1_175, %_cond2_176
  %_cond4_178 = icmp ule i64 %_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond5_179 = and i1 %_cond0_174, %_cond3_177
  %_cond6_180 = and i1 %_cond5_179, %_cond4_178
  br i1 %_cond6_180, label %349, label %350

; <label>:349:                                    ; preds = %324
  %_address_in_parent_stack_181 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_172
  br label %350

; <label>:350:                                    ; preds = %324, %349
  %351 = phi i64 [ %_head_p2i_171, %324 ], [ %_address_in_parent_stack_181, %349 ]
  %_address_ptr_in_parent_stack_182 = inttoptr i64 %351 to i64*
  %_new_load_183 = load i64, i64* %_address_ptr_in_parent_stack_182
  store i64 %_new_load_183, i64* %RBX_val, !mcsema_real_eip !97
  %352 = add i64 %347, 8, !mcsema_real_eip !97
  store i64 %352, i64* %RSP_val, !mcsema_real_eip !97
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !98
  %_head_p2i_184 = ptrtoint i64* %353 to i64
  %_offset_above_rbp_185 = sub i64 %_head_p2i_184, %_local_stack_end_
  %_address_in_parent_stack_186 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_185
  %_cond0_187 = icmp ugt i64 %_head_p2i_184, %_local_stack_end_
  %_cond1_188 = icmp ugt i64 %_head_p2i_184, %_parent_stack_end_ptr_
  %_cond2_189 = icmp ult i64 %_head_p2i_184, %_parent_stack_start_ptr_
  %_cond3_190 = or i1 %_cond1_188, %_cond2_189
  %_cond4_191 = icmp ule i64 %_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond5_192 = and i1 %_cond0_187, %_cond3_190
  %_cond6_193 = and i1 %_cond5_192, %_cond4_191
  br i1 %_cond6_193, label %354, label %355

; <label>:354:                                    ; preds = %350
  %_address_in_parent_stack_194 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_185
  br label %355

; <label>:355:                                    ; preds = %350, %354
  %356 = phi i64 [ %_head_p2i_184, %350 ], [ %_address_in_parent_stack_194, %354 ]
  %_address_ptr_in_parent_stack_195 = inttoptr i64 %356 to i64*
  %_new_load_196 = load i64, i64* %_address_ptr_in_parent_stack_195
  store i64 %_new_load_196, i64* %RBP_val, !mcsema_real_eip !98
  %357 = add i64 %347, 24, !mcsema_real_eip !99
  store i64 %357, i64* %RSP_val, !mcsema_real_eip !99
  %358 = load i64, i64* %RAX_val, !mcsema_real_eip !99
  store i64 %358, i64* %RAX, !mcsema_real_eip !99
  %359 = load i64, i64* %RBX_val, !mcsema_real_eip !99
  store i64 %359, i64* %RBX, !mcsema_real_eip !99
  %360 = load i64, i64* %RCX_val, !mcsema_real_eip !99
  store i64 %360, i64* %RCX, !mcsema_real_eip !99
  %361 = load i64, i64* %RDX_val, !mcsema_real_eip !99
  store i64 %361, i64* %RDX, !mcsema_real_eip !99
  %362 = load i64, i64* %RSI_val, !mcsema_real_eip !99
  store i64 %362, i64* %RSI, !mcsema_real_eip !99
  %363 = load i64, i64* %RDI_val, !mcsema_real_eip !99
  store i64 %363, i64* %RDI, !mcsema_real_eip !99
  %364 = load i64, i64* %RSP_val, !mcsema_real_eip !99
  store i64 %364, i64* %RSP, !mcsema_real_eip !99
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  store i64 %365, i64* %RBP, !mcsema_real_eip !99
  %366 = load i64, i64* %R8_val, !mcsema_real_eip !99
  store i64 %366, i64* %R8, !mcsema_real_eip !99
  %367 = load i64, i64* %R9_val, !mcsema_real_eip !99
  store i64 %367, i64* %R9, !mcsema_real_eip !99
  %368 = load i64, i64* %R10_val, !mcsema_real_eip !99
  store i64 %368, i64* %R10, !mcsema_real_eip !99
  %369 = load i64, i64* %R11_val, !mcsema_real_eip !99
  store i64 %369, i64* %R11, !mcsema_real_eip !99
  %370 = load i64, i64* %R12_val, !mcsema_real_eip !99
  store i64 %370, i64* %R12, !mcsema_real_eip !99
  %371 = load i64, i64* %R13_val, !mcsema_real_eip !99
  store i64 %371, i64* %R13, !mcsema_real_eip !99
  %372 = load i64, i64* %R14_val, !mcsema_real_eip !99
  store i64 %372, i64* %R14, !mcsema_real_eip !99
  %373 = load i64, i64* %R15_val, !mcsema_real_eip !99
  store i64 %373, i64* %R15, !mcsema_real_eip !99
  %374 = load i64, i64* %RIP_val, !mcsema_real_eip !99
  store i64 %374, i64* %RIP, !mcsema_real_eip !99
  %375 = load i1, i1* %CF_val, !mcsema_real_eip !99
  store i1 %375, i1* %CF, align 1, !mcsema_real_eip !99
  %376 = load i1, i1* %PF_val, !mcsema_real_eip !99
  store i1 %376, i1* %PF, align 1, !mcsema_real_eip !99
  %377 = load i1, i1* %AF_val, !mcsema_real_eip !99
  store i1 %377, i1* %AF, align 1, !mcsema_real_eip !99
  %378 = load i1, i1* %ZF_val, !mcsema_real_eip !99
  store i1 %378, i1* %ZF, align 1, !mcsema_real_eip !99
  %379 = load i1, i1* %SF_val, !mcsema_real_eip !99
  store i1 %379, i1* %SF, align 1, !mcsema_real_eip !99
  %380 = load i1, i1* %OF_val, !mcsema_real_eip !99
  store i1 %380, i1* %OF, align 1, !mcsema_real_eip !99
  %381 = load i1, i1* %DF_val, !mcsema_real_eip !99
  store i1 %381, i1* %DF, align 1, !mcsema_real_eip !99
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !99
  %382 = load i1, i1* %FPU_B_val, !mcsema_real_eip !99
  store i1 %382, i1* %FPU_B, align 1, !mcsema_real_eip !99
  %383 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !99
  store i1 %383, i1* %FPU_C3, align 1, !mcsema_real_eip !99
  %384 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !99
  store i3 %384, i3* %FPU_TOP, align 1, !mcsema_real_eip !99
  %385 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !99
  store i1 %385, i1* %FPU_C2, align 1, !mcsema_real_eip !99
  %386 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !99
  store i1 %386, i1* %FPU_C1, align 1, !mcsema_real_eip !99
  %387 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !99
  store i1 %387, i1* %FPU_C0, align 1, !mcsema_real_eip !99
  %388 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !99
  store i1 %388, i1* %FPU_ES, align 1, !mcsema_real_eip !99
  %389 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !99
  store i1 %389, i1* %FPU_SF, align 1, !mcsema_real_eip !99
  %390 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !99
  store i1 %390, i1* %FPU_PE, align 1, !mcsema_real_eip !99
  %391 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !99
  store i1 %391, i1* %FPU_UE, align 1, !mcsema_real_eip !99
  %392 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !99
  store i1 %392, i1* %FPU_OE, align 1, !mcsema_real_eip !99
  %393 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !99
  store i1 %393, i1* %FPU_ZE, align 1, !mcsema_real_eip !99
  %394 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !99
  store i1 %394, i1* %FPU_DE, align 1, !mcsema_real_eip !99
  %395 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !99
  store i1 %395, i1* %FPU_IE, align 1, !mcsema_real_eip !99
  %396 = load i1, i1* %FPU_X_val, !mcsema_real_eip !99
  store i1 %396, i1* %FPU_X, align 1, !mcsema_real_eip !99
  %397 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !99
  store i2 %397, i2* %FPU_RC, align 1, !mcsema_real_eip !99
  %398 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !99
  store i2 %398, i2* %FPU_PC, align 1, !mcsema_real_eip !99
  %399 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !99
  store i1 %399, i1* %FPU_PM, align 1, !mcsema_real_eip !99
  %400 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !99
  store i1 %400, i1* %FPU_UM, align 1, !mcsema_real_eip !99
  %401 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !99
  store i1 %401, i1* %FPU_OM, align 1, !mcsema_real_eip !99
  %402 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !99
  store i1 %402, i1* %FPU_ZM, align 1, !mcsema_real_eip !99
  %403 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !99
  store i1 %403, i1* %FPU_DM, align 1, !mcsema_real_eip !99
  %404 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !99
  store i1 %404, i1* %FPU_IM, align 1, !mcsema_real_eip !99
  %_head_p2i_197 = ptrtoint i64* %53 to i64
  %_offset_above_rbp_198 = sub i64 %_head_p2i_197, %_local_stack_end_
  %_address_in_parent_stack_199 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_198
  %_cond0_200 = icmp ugt i64 %_head_p2i_197, %_local_stack_end_
  %_cond1_201 = icmp ugt i64 %_head_p2i_197, %_parent_stack_end_ptr_
  %_cond2_202 = icmp ult i64 %_head_p2i_197, %_parent_stack_start_ptr_
  %_cond3_203 = or i1 %_cond1_201, %_cond2_202
  %_cond4_204 = icmp ule i64 %_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond5_205 = and i1 %_cond0_200, %_cond3_203
  %_cond6_206 = and i1 %_cond5_205, %_cond4_204
  br i1 %_cond6_206, label %405, label %406

; <label>:405:                                    ; preds = %355
  %_address_in_parent_stack_207 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_198
  br label %406

; <label>:406:                                    ; preds = %355, %405
  %407 = phi i64 [ %_head_p2i_197, %355 ], [ %_address_in_parent_stack_207, %405 ]
  %_address_ptr_in_parent_stack_208 = inttoptr i64 %407 to i64*
  %_new_load_209 = load i64, i64* %_address_ptr_in_parent_stack_208
  store i64 %_new_load_209, i64* %52, align 4
  %408 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !99
  store i16 %408, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !99
  %409 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !99
  store i64 %409, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !99
  %410 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !99
  store i16 %410, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !99
  %411 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !99
  store i64 %411, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !99
  %412 = load i128, i128* %XMM0_val, !mcsema_real_eip !99
  store i128 %412, i128* %XMM0, align 1, !mcsema_real_eip !99
  %413 = load i128, i128* %XMM1_val, !mcsema_real_eip !99
  store i128 %413, i128* %XMM1, align 1, !mcsema_real_eip !99
  %414 = load i128, i128* %XMM2_val, !mcsema_real_eip !99
  store i128 %414, i128* %XMM2, align 1, !mcsema_real_eip !99
  %415 = load i128, i128* %XMM3_val, !mcsema_real_eip !99
  store i128 %415, i128* %XMM3, align 1, !mcsema_real_eip !99
  %416 = load i128, i128* %XMM4_val, !mcsema_real_eip !99
  store i128 %416, i128* %XMM4, align 1, !mcsema_real_eip !99
  %417 = load i128, i128* %XMM5_val, !mcsema_real_eip !99
  store i128 %417, i128* %XMM5, align 1, !mcsema_real_eip !99
  %418 = load i128, i128* %XMM6_val, !mcsema_real_eip !99
  store i128 %418, i128* %XMM6, align 1, !mcsema_real_eip !99
  %419 = load i128, i128* %XMM7_val, !mcsema_real_eip !99
  store i128 %419, i128* %XMM7, align 1, !mcsema_real_eip !99
  %420 = load i128, i128* %XMM8_val, !mcsema_real_eip !99
  store i128 %420, i128* %XMM8, align 1, !mcsema_real_eip !99
  %421 = load i128, i128* %XMM9_val, !mcsema_real_eip !99
  store i128 %421, i128* %XMM9, align 1, !mcsema_real_eip !99
  %422 = load i128, i128* %XMM10_val, !mcsema_real_eip !99
  store i128 %422, i128* %XMM10, align 1, !mcsema_real_eip !99
  %423 = load i128, i128* %XMM11_val, !mcsema_real_eip !99
  store i128 %423, i128* %XMM11, align 1, !mcsema_real_eip !99
  %424 = load i128, i128* %XMM12_val, !mcsema_real_eip !99
  store i128 %424, i128* %XMM12, align 1, !mcsema_real_eip !99
  %425 = load i128, i128* %XMM13_val, !mcsema_real_eip !99
  store i128 %425, i128* %XMM13, align 1, !mcsema_real_eip !99
  %426 = load i128, i128* %XMM14_val, !mcsema_real_eip !99
  store i128 %426, i128* %XMM14, align 1, !mcsema_real_eip !99
  %427 = load i128, i128* %XMM15_val, !mcsema_real_eip !99
  store i128 %427, i128* %XMM15, align 1, !mcsema_real_eip !99
  %428 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !99
  store i64 %428, i64* %STACK_BASE, align 1, !mcsema_real_eip !99
  %429 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !99
  store i64 %429, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !99
  ret void, !mcsema_real_eip !99

block_0x51:                                       ; preds = %558, %block_0x51.preheader
  %430 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %431 = add i64 %430, -72, !mcsema_real_eip !100
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !100
  %433 = bitcast i64* %432 to i32*
  %_head_p2i_210 = ptrtoint i32* %433 to i64
  %_offset_above_rbp_211 = sub i64 %_head_p2i_210, %_local_stack_end_
  %_address_in_parent_stack_212 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_211
  %_cond0_213 = icmp ugt i64 %_head_p2i_210, %_local_stack_end_
  %_cond1_214 = icmp ugt i64 %_head_p2i_210, %_parent_stack_end_ptr_
  %_cond2_215 = icmp ult i64 %_head_p2i_210, %_parent_stack_start_ptr_
  %_cond3_216 = or i1 %_cond1_214, %_cond2_215
  %_cond4_217 = icmp ule i64 %_address_in_parent_stack_212, %_parent_stack_end_ptr_
  %_cond5_218 = and i1 %_cond0_213, %_cond3_216
  %_cond6_219 = and i1 %_cond5_218, %_cond4_217
  br i1 %_cond6_219, label %434, label %435

; <label>:434:                                    ; preds = %block_0x51
  %_address_in_parent_stack_220 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_211
  br label %435

; <label>:435:                                    ; preds = %block_0x51, %434
  %436 = phi i64 [ %_head_p2i_210, %block_0x51 ], [ %_address_in_parent_stack_220, %434 ]
  %_address_ptr_in_parent_stack_221 = inttoptr i64 %436 to i32*
  %_new_load_222 = load i32, i32* %_address_ptr_in_parent_stack_221
  %437 = sext i32 %_new_load_222 to i64, !mcsema_real_eip !100
  store i64 %437, i64* %RAX_val, !mcsema_real_eip !100
  %438 = load i64, i64* %RBP_val, !mcsema_real_eip !101
  %439 = add i64 %438, -48, !mcsema_real_eip !101
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !101
  %_head_p2i_223 = ptrtoint i64* %440 to i64
  %_offset_above_rbp_224 = sub i64 %_head_p2i_223, %_local_stack_end_
  %_address_in_parent_stack_225 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_224
  %_cond0_226 = icmp ugt i64 %_head_p2i_223, %_local_stack_end_
  %_cond1_227 = icmp ugt i64 %_head_p2i_223, %_parent_stack_end_ptr_
  %_cond2_228 = icmp ult i64 %_head_p2i_223, %_parent_stack_start_ptr_
  %_cond3_229 = or i1 %_cond1_227, %_cond2_228
  %_cond4_230 = icmp ule i64 %_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond5_231 = and i1 %_cond0_226, %_cond3_229
  %_cond6_232 = and i1 %_cond5_231, %_cond4_230
  br i1 %_cond6_232, label %441, label %442

; <label>:441:                                    ; preds = %435
  %_address_in_parent_stack_233 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_224
  br label %442

; <label>:442:                                    ; preds = %435, %441
  %443 = phi i64 [ %_head_p2i_223, %435 ], [ %_address_in_parent_stack_233, %441 ]
  %_address_ptr_in_parent_stack_234 = inttoptr i64 %443 to i64*
  %_new_load_235 = load i64, i64* %_address_ptr_in_parent_stack_234
  store i64 %_new_load_235, i64* %RCX_val, !mcsema_real_eip !101
  %444 = shl nsw i64 %437, 2
  %445 = add i64 %_new_load_235, %444, !mcsema_real_eip !102
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !102
  %447 = bitcast i64* %446 to i32*
  %_head_p2i_236 = ptrtoint i32* %447 to i64
  %_offset_above_rbp_237 = sub i64 %_head_p2i_236, %_local_stack_end_
  %_address_in_parent_stack_238 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_237
  %_cond0_239 = icmp ugt i64 %_head_p2i_236, %_local_stack_end_
  %_cond1_240 = icmp ugt i64 %_head_p2i_236, %_parent_stack_end_ptr_
  %_cond2_241 = icmp ult i64 %_head_p2i_236, %_parent_stack_start_ptr_
  %_cond3_242 = or i1 %_cond1_240, %_cond2_241
  %_cond4_243 = icmp ule i64 %_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond5_244 = and i1 %_cond0_239, %_cond3_242
  %_cond6_245 = and i1 %_cond5_244, %_cond4_243
  br i1 %_cond6_245, label %448, label %449

; <label>:448:                                    ; preds = %442
  %_address_in_parent_stack_246 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_237
  br label %449

; <label>:449:                                    ; preds = %442, %448
  %450 = phi i64 [ %_head_p2i_236, %442 ], [ %_address_in_parent_stack_246, %448 ]
  %_address_ptr_in_parent_stack_247 = inttoptr i64 %450 to i32*
  %_new_load_248 = load i32, i32* %_address_ptr_in_parent_stack_247
  %451 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !102
  store i64 %451, i64* %RDX_val, !mcsema_real_eip !102
  %452 = load i64, i64* %RBP_val, !mcsema_real_eip !103
  %453 = add i64 %452, -72, !mcsema_real_eip !103
  %454 = inttoptr i64 %453 to i64*, !mcsema_real_eip !103
  %455 = bitcast i64* %454 to i32*
  %_head_p2i_249 = ptrtoint i32* %455 to i64
  %_offset_above_rbp_250 = sub i64 %_head_p2i_249, %_local_stack_end_
  %_address_in_parent_stack_251 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_250
  %_cond0_252 = icmp ugt i64 %_head_p2i_249, %_local_stack_end_
  %_cond1_253 = icmp ugt i64 %_head_p2i_249, %_parent_stack_end_ptr_
  %_cond2_254 = icmp ult i64 %_head_p2i_249, %_parent_stack_start_ptr_
  %_cond3_255 = or i1 %_cond1_253, %_cond2_254
  %_cond4_256 = icmp ule i64 %_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond5_257 = and i1 %_cond0_252, %_cond3_255
  %_cond6_258 = and i1 %_cond5_257, %_cond4_256
  br i1 %_cond6_258, label %456, label %457

; <label>:456:                                    ; preds = %449
  %_address_in_parent_stack_259 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_250
  br label %457

; <label>:457:                                    ; preds = %449, %456
  %458 = phi i64 [ %_head_p2i_249, %449 ], [ %_address_in_parent_stack_259, %456 ]
  %_address_ptr_in_parent_stack_260 = inttoptr i64 %458 to i32*
  %_new_load_261 = load i32, i32* %_address_ptr_in_parent_stack_260
  %459 = sext i32 %_new_load_261 to i64, !mcsema_real_eip !103
  store i64 %459, i64* %RAX_val, !mcsema_real_eip !103
  %460 = load i64, i64* %RBP_val, !mcsema_real_eip !104
  %461 = add i64 %460, -64, !mcsema_real_eip !104
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !104
  %_head_p2i_262 = ptrtoint i64* %462 to i64
  %_offset_above_rbp_263 = sub i64 %_head_p2i_262, %_local_stack_end_
  %_address_in_parent_stack_264 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_263
  %_cond0_265 = icmp ugt i64 %_head_p2i_262, %_local_stack_end_
  %_cond1_266 = icmp ugt i64 %_head_p2i_262, %_parent_stack_end_ptr_
  %_cond2_267 = icmp ult i64 %_head_p2i_262, %_parent_stack_start_ptr_
  %_cond3_268 = or i1 %_cond1_266, %_cond2_267
  %_cond4_269 = icmp ule i64 %_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond5_270 = and i1 %_cond0_265, %_cond3_268
  %_cond6_271 = and i1 %_cond5_270, %_cond4_269
  br i1 %_cond6_271, label %463, label %464

; <label>:463:                                    ; preds = %457
  %_address_in_parent_stack_272 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_263
  br label %464

; <label>:464:                                    ; preds = %457, %463
  %465 = phi i64 [ %_head_p2i_262, %457 ], [ %_address_in_parent_stack_272, %463 ]
  %_address_ptr_in_parent_stack_273 = inttoptr i64 %465 to i64*
  %_new_load_274 = load i64, i64* %_address_ptr_in_parent_stack_273
  store i64 %_new_load_274, i64* %RCX_val, !mcsema_real_eip !104
  %466 = shl nsw i64 %459, 2
  %467 = add i64 %_new_load_274, %466, !mcsema_real_eip !105
  %468 = inttoptr i64 %467 to i64*, !mcsema_real_eip !105
  %469 = load i64, i64* %RDX_val, !mcsema_real_eip !105
  %470 = trunc i64 %469 to i32, !mcsema_real_eip !105
  %471 = bitcast i64* %468 to i32*
  %_head_p2i_275 = ptrtoint i32* %471 to i64
  %_offset_above_rbp_276 = sub i64 %_head_p2i_275, %_local_stack_end_
  %_address_in_parent_stack_277 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_276
  %_cond0_278 = icmp ugt i64 %_head_p2i_275, %_local_stack_end_
  %_cond1_279 = icmp ugt i64 %_head_p2i_275, %_parent_stack_end_ptr_
  %_cond2_280 = icmp ult i64 %_head_p2i_275, %_parent_stack_start_ptr_
  %_cond3_281 = or i1 %_cond1_279, %_cond2_280
  %_cond4_282 = icmp ule i64 %_address_in_parent_stack_277, %_parent_stack_end_ptr_
  %_cond5_283 = and i1 %_cond0_278, %_cond3_281
  %_cond6_284 = and i1 %_cond5_283, %_cond4_282
  br i1 %_cond6_284, label %472, label %473

; <label>:472:                                    ; preds = %464
  %_address_in_parent_stack_285 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_276
  br label %473

; <label>:473:                                    ; preds = %464, %472
  %474 = phi i64 [ %_head_p2i_275, %464 ], [ %_address_in_parent_stack_285, %472 ]
  %_address_ptr_in_parent_stack_286 = inttoptr i64 %474 to i32*
  %_new_load_287 = load i32, i32* %_address_ptr_in_parent_stack_286
  %475 = sub i32 %470, %_new_load_287, !mcsema_real_eip !105
  %476 = xor i32 %475, %470, !mcsema_real_eip !105
  %477 = xor i32 %476, %_new_load_287, !mcsema_real_eip !105
  %478 = and i32 %477, 16, !mcsema_real_eip !105
  %479 = icmp ne i32 %478, 0, !mcsema_real_eip !105
  store i1 %479, i1* %AF_val, !mcsema_real_eip !105
  %480 = trunc i32 %475 to i8, !mcsema_real_eip !105
  %481 = tail call i8 @llvm.ctpop.i8(i8 %480), !mcsema_real_eip !105
  %482 = and i8 %481, 1
  %483 = icmp eq i8 %482, 0
  store i1 %483, i1* %PF_val, !mcsema_real_eip !105
  %484 = icmp eq i32 %470, %_new_load_287
  store i1 %484, i1* %ZF_val, !mcsema_real_eip !105
  %485 = icmp slt i32 %475, 0
  store i1 %485, i1* %SF_val, !mcsema_real_eip !105
  %486 = icmp ult i32 %470, %_new_load_287, !mcsema_real_eip !105
  store i1 %486, i1* %CF_val, !mcsema_real_eip !105
  %487 = xor i32 %470, %_new_load_287, !mcsema_real_eip !105
  %488 = and i32 %476, %487, !mcsema_real_eip !105
  %489 = icmp slt i32 %488, 0
  store i1 %489, i1* %OF_val, !mcsema_real_eip !105
  %490 = zext i32 %475 to i64, !mcsema_real_eip !105
  store i64 %490, i64* %RDX_val, !mcsema_real_eip !105
  %491 = load i64, i64* %RBP_val, !mcsema_real_eip !106
  %492 = add i64 %491, -68, !mcsema_real_eip !106
  %493 = inttoptr i64 %492 to i64*, !mcsema_real_eip !106
  %494 = bitcast i64* %493 to i32*
  %_head_p2i_288 = ptrtoint i32* %494 to i64
  %_offset_above_rbp_289 = sub i64 %_head_p2i_288, %_local_stack_end_
  %_address_in_parent_stack_290 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_289
  %_cond0_291 = icmp ugt i64 %_head_p2i_288, %_local_stack_end_
  %_cond1_292 = icmp ugt i64 %_head_p2i_288, %_parent_stack_end_ptr_
  %_cond2_293 = icmp ult i64 %_head_p2i_288, %_parent_stack_start_ptr_
  %_cond3_294 = or i1 %_cond1_292, %_cond2_293
  %_cond4_295 = icmp ule i64 %_address_in_parent_stack_290, %_parent_stack_end_ptr_
  %_cond5_296 = and i1 %_cond0_291, %_cond3_294
  %_cond6_297 = and i1 %_cond5_296, %_cond4_295
  br i1 %_cond6_297, label %495, label %496

; <label>:495:                                    ; preds = %473
  %_address_in_parent_stack_298 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_289
  br label %496

; <label>:496:                                    ; preds = %473, %495
  %497 = phi i64 [ %_head_p2i_288, %473 ], [ %_address_in_parent_stack_298, %495 ]
  %_address_ptr_in_parent_stack_299 = inttoptr i64 %497 to i32*
  %_new_load_300 = load i32, i32* %_address_ptr_in_parent_stack_299
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 %_new_load_300)
  %498 = extractvalue { i32, i1 } %uadd, 0
  %499 = xor i32 %498, %_new_load_300, !mcsema_real_eip !107
  %500 = xor i32 %499, %475, !mcsema_real_eip !107
  %501 = and i32 %500, 16, !mcsema_real_eip !107
  %502 = icmp ne i32 %501, 0, !mcsema_real_eip !107
  store i1 %502, i1* %AF_val, !mcsema_real_eip !107
  %503 = icmp slt i32 %498, 0
  store i1 %503, i1* %SF_val, !mcsema_real_eip !107
  %504 = icmp eq i32 %498, 0, !mcsema_real_eip !107
  store i1 %504, i1* %ZF_val, !mcsema_real_eip !107
  %505 = xor i32 %_new_load_300, -2147483648, !mcsema_real_eip !107
  %506 = xor i32 %505, %475, !mcsema_real_eip !107
  %507 = and i32 %499, %506, !mcsema_real_eip !107
  %508 = icmp slt i32 %507, 0
  store i1 %508, i1* %OF_val, !mcsema_real_eip !107
  %509 = trunc i32 %498 to i8, !mcsema_real_eip !107
  %510 = tail call i8 @llvm.ctpop.i8(i8 %509), !mcsema_real_eip !107
  %511 = and i8 %510, 1
  %512 = icmp eq i8 %511, 0
  store i1 %512, i1* %PF_val, !mcsema_real_eip !107
  %513 = extractvalue { i32, i1 } %uadd, 1
  store i1 %513, i1* %CF_val, !mcsema_real_eip !107
  %514 = zext i32 %498 to i64, !mcsema_real_eip !107
  store i64 %514, i64* %RSI_val, !mcsema_real_eip !107
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %516 = add i64 %515, -68, !mcsema_real_eip !108
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !108
  %518 = bitcast i64* %517 to i32*
  store i32 %498, i32* %518, !mcsema_real_eip !108
  %519 = load i64, i64* %RBP_val, !mcsema_real_eip !109
  %520 = add i64 %519, -72, !mcsema_real_eip !109
  %521 = inttoptr i64 %520 to i64*, !mcsema_real_eip !109
  %522 = bitcast i64* %521 to i32*
  %_head_p2i_301 = ptrtoint i32* %522 to i64
  %_offset_above_rbp_302 = sub i64 %_head_p2i_301, %_local_stack_end_
  %_address_in_parent_stack_303 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_302
  %_cond0_304 = icmp ugt i64 %_head_p2i_301, %_local_stack_end_
  %_cond1_305 = icmp ugt i64 %_head_p2i_301, %_parent_stack_end_ptr_
  %_cond2_306 = icmp ult i64 %_head_p2i_301, %_parent_stack_start_ptr_
  %_cond3_307 = or i1 %_cond1_305, %_cond2_306
  %_cond4_308 = icmp ule i64 %_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond5_309 = and i1 %_cond0_304, %_cond3_307
  %_cond6_310 = and i1 %_cond5_309, %_cond4_308
  br i1 %_cond6_310, label %523, label %524

; <label>:523:                                    ; preds = %496
  %_address_in_parent_stack_311 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_302
  br label %524

; <label>:524:                                    ; preds = %496, %523
  %525 = phi i64 [ %_head_p2i_301, %496 ], [ %_address_in_parent_stack_311, %523 ]
  %_address_ptr_in_parent_stack_312 = inttoptr i64 %525 to i32*
  %_new_load_313 = load i32, i32* %_address_ptr_in_parent_stack_312
  %uadd70 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %_new_load_313, i32 1)
  %526 = extractvalue { i32, i1 } %uadd70, 0
  %527 = xor i32 %526, %_new_load_313, !mcsema_real_eip !110
  %528 = and i32 %527, 16, !mcsema_real_eip !110
  %529 = icmp ne i32 %528, 0, !mcsema_real_eip !110
  store i1 %529, i1* %AF_val, !mcsema_real_eip !110
  %530 = icmp slt i32 %526, 0
  store i1 %530, i1* %SF_val, !mcsema_real_eip !110
  %531 = icmp eq i32 %526, 0, !mcsema_real_eip !110
  store i1 %531, i1* %ZF_val, !mcsema_real_eip !110
  %532 = xor i32 %_new_load_313, -2147483648, !mcsema_real_eip !110
  %533 = and i32 %527, %532, !mcsema_real_eip !110
  %534 = icmp slt i32 %533, 0
  store i1 %534, i1* %OF_val, !mcsema_real_eip !110
  %535 = trunc i32 %526 to i8, !mcsema_real_eip !110
  %536 = tail call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !110
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  store i1 %538, i1* %PF_val, !mcsema_real_eip !110
  %539 = extractvalue { i32, i1 } %uadd70, 1
  store i1 %539, i1* %CF_val, !mcsema_real_eip !110
  %540 = zext i32 %526 to i64, !mcsema_real_eip !110
  store i64 %540, i64* %RAX_val, !mcsema_real_eip !110
  %541 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %542 = add i64 %541, -72, !mcsema_real_eip !111
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !111
  %544 = bitcast i64* %543 to i32*
  store i32 %526, i32* %544, !mcsema_real_eip !111
  %545 = load i64, i64* %RBP_val, !mcsema_real_eip !86
  %546 = add i64 %545, -72, !mcsema_real_eip !86
  %547 = inttoptr i64 %546 to i64*, !mcsema_real_eip !86
  %548 = bitcast i64* %547 to i32*
  %_head_p2i_314 = ptrtoint i32* %548 to i64
  %_offset_above_rbp_315 = sub i64 %_head_p2i_314, %_local_stack_end_
  %_address_in_parent_stack_316 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_315
  %_cond0_317 = icmp ugt i64 %_head_p2i_314, %_local_stack_end_
  %_cond1_318 = icmp ugt i64 %_head_p2i_314, %_parent_stack_end_ptr_
  %_cond2_319 = icmp ult i64 %_head_p2i_314, %_parent_stack_start_ptr_
  %_cond3_320 = or i1 %_cond1_318, %_cond2_319
  %_cond4_321 = icmp ule i64 %_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond5_322 = and i1 %_cond0_317, %_cond3_320
  %_cond6_323 = and i1 %_cond5_322, %_cond4_321
  br i1 %_cond6_323, label %549, label %550

; <label>:549:                                    ; preds = %524
  %_address_in_parent_stack_324 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_315
  br label %550

; <label>:550:                                    ; preds = %524, %549
  %551 = phi i64 [ %_head_p2i_314, %524 ], [ %_address_in_parent_stack_324, %549 ]
  %_address_ptr_in_parent_stack_325 = inttoptr i64 %551 to i32*
  %_new_load_326 = load i32, i32* %_address_ptr_in_parent_stack_325
  %552 = zext i32 %_new_load_326 to i64, !mcsema_real_eip !86
  store i64 %552, i64* %RAX_val, !mcsema_real_eip !86
  %553 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %554 = add i64 %553, -36, !mcsema_real_eip !87
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !87
  %556 = bitcast i64* %555 to i32*
  %_head_p2i_327 = ptrtoint i32* %556 to i64
  %_offset_above_rbp_328 = sub i64 %_head_p2i_327, %_local_stack_end_
  %_address_in_parent_stack_329 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_328
  %_cond0_330 = icmp ugt i64 %_head_p2i_327, %_local_stack_end_
  %_cond1_331 = icmp ugt i64 %_head_p2i_327, %_parent_stack_end_ptr_
  %_cond2_332 = icmp ult i64 %_head_p2i_327, %_parent_stack_start_ptr_
  %_cond3_333 = or i1 %_cond1_331, %_cond2_332
  %_cond4_334 = icmp ule i64 %_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond5_335 = and i1 %_cond0_330, %_cond3_333
  %_cond6_336 = and i1 %_cond5_335, %_cond4_334
  br i1 %_cond6_336, label %557, label %558

; <label>:557:                                    ; preds = %550
  %_address_in_parent_stack_337 = add i64 %_parent_stack_start_ptr_, %_offset_above_rbp_328
  br label %558

; <label>:558:                                    ; preds = %550, %557
  %559 = phi i64 [ %_head_p2i_327, %550 ], [ %_address_in_parent_stack_337, %557 ]
  %_address_ptr_in_parent_stack_338 = inttoptr i64 %559 to i32*
  %_new_load_339 = load i32, i32* %_address_ptr_in_parent_stack_338
  %560 = sub i32 %_new_load_326, %_new_load_339, !mcsema_real_eip !87
  %561 = xor i32 %560, %_new_load_326, !mcsema_real_eip !87
  %562 = xor i32 %561, %_new_load_339, !mcsema_real_eip !87
  %563 = and i32 %562, 16, !mcsema_real_eip !87
  %564 = icmp ne i32 %563, 0, !mcsema_real_eip !87
  store i1 %564, i1* %AF_val, !mcsema_real_eip !87
  %565 = trunc i32 %560 to i8, !mcsema_real_eip !87
  %566 = tail call i8 @llvm.ctpop.i8(i8 %565), !mcsema_real_eip !87
  %567 = and i8 %566, 1
  %568 = icmp eq i8 %567, 0
  store i1 %568, i1* %PF_val, !mcsema_real_eip !87
  %569 = icmp eq i32 %_new_load_326, %_new_load_339
  store i1 %569, i1* %ZF_val, !mcsema_real_eip !87
  %570 = icmp slt i32 %560, 0
  store i1 %570, i1* %SF_val, !mcsema_real_eip !87
  %571 = icmp ult i32 %_new_load_326, %_new_load_339, !mcsema_real_eip !87
  store i1 %571, i1* %CF_val, !mcsema_real_eip !87
  %572 = xor i32 %_new_load_339, %_new_load_326, !mcsema_real_eip !87
  %573 = and i32 %561, %572, !mcsema_real_eip !87
  %574 = icmp slt i32 %573, 0
  store i1 %574, i1* %OF_val, !mcsema_real_eip !87
  %575 = load i1, i1* %SF_val, !mcsema_real_eip !88
  %tmp71 = xor i1 %575, %574
  br i1 %tmp71, label %block_0x51, label %block_0x7f.loopexit, !mcsema_real_eip !88
}

attributes #0 = { nounwind }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 161, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 164, [12 x i8] c"\09pushq\09%r15\00"}
!5 = !{i64 166, [12 x i8] c"\09pushq\09%r14\00"}
!6 = !{i64 168, [12 x i8] c"\09pushq\09%r13\00"}
!7 = !{i64 170, [12 x i8] c"\09pushq\09%r12\00"}
!8 = !{i64 172, [12 x i8] c"\09pushq\09%rbx\00"}
!9 = !{i64 173, [17 x i8] c"\09subq\09$200, %rsp\00"}
!10 = !{i64 180, [17 x i8] c"\09movl\09$100, %eax\00"}
!11 = !{i64 185, [17 x i8] c"\09movl\09$200, %ecx\00"}
!12 = !{i64 190, [17 x i8] c"\09movl\09$300, %edx\00"}
!13 = !{i64 195, [17 x i8] c"\09movl\09$400, %r8d\00"}
!14 = !{i64 201, [17 x i8] c"\09movl\09$500, %r9d\00"}
!15 = !{i64 207, [18 x i8] c"\09movl\09$600, %r10d\00"}
!16 = !{i64 213, [17 x i8] c"\09movl\09$10, %r11d\00"}
!17 = !{i64 219, [23 x i8] c"\09leaq\09-144(%rbp), %rbx\00"}
!18 = !{i64 226, [22 x i8] c"\09leaq\09-96(%rbp), %r14\00"}
!19 = !{i64 230, [18 x i8] c"\09movabsq\09$0, %r15\00"}
!20 = !{i64 240, [19 x i8] c"\09movabsq\09$40, %r12\00"}
!21 = !{i64 250, [18 x i8] c"\09movabsq\09$0, %r13\00"}
!22 = !{i64 260, [20 x i8] c"\09movl\09$0, -44(%rbp)\00"}
!23 = !{i64 267, [22 x i8] c"\09movl\09%edi, -48(%rbp)\00"}
!24 = !{i64 270, [22 x i8] c"\09movq\09%rsi, -56(%rbp)\00"}
!25 = !{i64 274, [17 x i8] c"\09movq\09%r14, %rsi\00"}
!26 = !{i64 277, [17 x i8] c"\09movq\09%rsi, %rdi\00"}
!27 = !{i64 280, [17 x i8] c"\09movq\09%r13, %rsi\00"}
!28 = !{i64 283, [23 x i8] c"\09movl\09%edx, -148(%rbp)\00"}
!29 = !{i64 289, [17 x i8] c"\09movq\09%r12, %rdx\00"}
!30 = !{i64 292, [23 x i8] c"\09movq\09%r15, -160(%rbp)\00"}
!31 = !{i64 299, [23 x i8] c"\09movq\09%r12, -168(%rbp)\00"}
!32 = !{i64 306, [23 x i8] c"\09movl\09%eax, -172(%rbp)\00"}
!33 = !{i64 312, [23 x i8] c"\09movl\09%ecx, -176(%rbp)\00"}
!34 = !{i64 318, [23 x i8] c"\09movq\09%r14, -184(%rbp)\00"}
!35 = !{i64 325, [23 x i8] c"\09movl\09%r8d, -188(%rbp)\00"}
!36 = !{i64 332, [23 x i8] c"\09movl\09%r9d, -192(%rbp)\00"}
!37 = !{i64 339, [24 x i8] c"\09movl\09%r10d, -196(%rbp)\00"}
!38 = !{i64 346, [24 x i8] c"\09movl\09%r11d, -200(%rbp)\00"}
!39 = !{i64 353, [23 x i8] c"\09movq\09%rbx, -208(%rbp)\00"}
!40 = !{i64 360, [9 x i8] c"\09callq\090\00"}
!41 = !{i64 365, [23 x i8] c"\09movq\09-208(%rbp), %rdx\00"}
!42 = !{i64 372, [17 x i8] c"\09movq\09%rdx, %rdi\00"}
!43 = !{i64 375, [23 x i8] c"\09movq\09-160(%rbp), %rsi\00"}
!44 = !{i64 382, [23 x i8] c"\09movq\09-168(%rbp), %rdx\00"}
!45 = !{i64 389, [9 x i8] c"\09callq\090\00"}
!46 = !{i64 394, [23 x i8] c"\09movl\09-172(%rbp), %edi\00"}
!47 = !{i64 400, [23 x i8] c"\09movl\09-176(%rbp), %esi\00"}
!48 = !{i64 406, [23 x i8] c"\09movl\09-148(%rbp), %edx\00"}
!49 = !{i64 412, [23 x i8] c"\09movl\09-188(%rbp), %ecx\00"}
!50 = !{i64 418, [23 x i8] c"\09movl\09-192(%rbp), %r8d\00"}
!51 = !{i64 425, [23 x i8] c"\09movl\09-196(%rbp), %r9d\00"}
!52 = !{i64 432, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!53 = !{i64 439, [23 x i8] c"\09movq\09-184(%rbp), %rbx\00"}
!54 = !{i64 446, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!55 = !{i64 451, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!56 = !{i64 459, [23 x i8] c"\09movq\09-208(%rbp), %r14\00"}
!57 = !{i64 466, [21 x i8] c"\09movq\09%r14, 24(%rsp)\00"}
!58 = !{i64 471, [12 x i8] c"\09callq\09-476\00"}
!59 = !{i64 476, [17 x i8] c"\09addq\09$200, %rsp\00"}
!60 = !{i64 483, [11 x i8] c"\09popq\09%rbx\00"}
!61 = !{i64 484, [11 x i8] c"\09popq\09%r12\00"}
!62 = !{i64 486, [11 x i8] c"\09popq\09%r13\00"}
!63 = !{i64 488, [11 x i8] c"\09popq\09%r14\00"}
!64 = !{i64 490, [11 x i8] c"\09popq\09%r15\00"}
!65 = !{i64 492, [11 x i8] c"\09popq\09%rbp\00"}
!66 = !{i64 493, [6 x i8] c"\09retq\00"}
!67 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!68 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!69 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!70 = !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!71 = !{i64 9, [22 x i8] c"\09movl\0932(%rbp), %r10d\00"}
!72 = !{i64 13, [21 x i8] c"\09movq\0924(%rbp), %r11\00"}
!73 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!74 = !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!75 = !{i64 23, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!76 = !{i64 26, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!77 = !{i64 29, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!78 = !{i64 32, [22 x i8] c"\09movl\09%r8d, -28(%rbp)\00"}
!79 = !{i64 36, [22 x i8] c"\09movl\09%r9d, -32(%rbp)\00"}
!80 = !{i64 40, [22 x i8] c"\09movl\09%ebx, -36(%rbp)\00"}
!81 = !{i64 43, [22 x i8] c"\09movq\09%r11, -48(%rbp)\00"}
!82 = !{i64 47, [23 x i8] c"\09movl\09%r10d, -52(%rbp)\00"}
!83 = !{i64 51, [22 x i8] c"\09movq\09%rax, -64(%rbp)\00"}
!84 = !{i64 55, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!85 = !{i64 62, [20 x i8] c"\09movl\09$0, -72(%rbp)\00"}
!86 = !{i64 69, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!87 = !{i64 72, [22 x i8] c"\09cmpl\09-36(%rbp), %eax\00"}
!88 = !{i64 75, [8 x i8] c"\09jge\0946\00"}
!89 = !{i64 127, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!90 = !{i64 130, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!91 = !{i64 133, [22 x i8] c"\09addl\09-16(%rbp), %ecx\00"}
!92 = !{i64 136, [22 x i8] c"\09addl\09-20(%rbp), %ecx\00"}
!93 = !{i64 139, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!94 = !{i64 142, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!95 = !{i64 145, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!96 = !{i64 148, [18 x i8] c"\09imull\09%ecx, %eax\00"}
!97 = !{i64 151, [11 x i8] c"\09popq\09%rbx\00"}
!98 = !{i64 152, [11 x i8] c"\09popq\09%rbp\00"}
!99 = !{i64 153, [6 x i8] c"\09retq\00"}
!100 = !{i64 81, [24 x i8] c"\09movslq\09-72(%rbp), %rax\00"}
!101 = !{i64 85, [22 x i8] c"\09movq\09-48(%rbp), %rcx\00"}
!102 = !{i64 89, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!103 = !{i64 92, [24 x i8] c"\09movslq\09-72(%rbp), %rax\00"}
!104 = !{i64 96, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!105 = !{i64 100, [26 x i8] c"\09subl\09(%rcx,%rax,4), %edx\00"}
!106 = !{i64 103, [22 x i8] c"\09movl\09-68(%rbp), %esi\00"}
!107 = !{i64 106, [17 x i8] c"\09addl\09%edx, %esi\00"}
!108 = !{i64 108, [22 x i8] c"\09movl\09%esi, -68(%rbp)\00"}
!109 = !{i64 111, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!110 = !{i64 114, [15 x i8] c"\09addl\09$1, %eax\00"}
!111 = !{i64 119, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
