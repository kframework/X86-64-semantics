; ModuleID = 'Output/test_23.clang.trans.bc'
source_filename = "Output/test_23.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%1 = type <{ [77 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2a1 = internal constant %0 <{ void (%struct.regs*)* @sub_172, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_180, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_164, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_18e, void (%struct.regs*)* @sub_156 }>, align 64
@data_0x359 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value(%struct.regs* %reg_context, i64 %ptr) #0 {
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

define internal x86_64_sysvcc void @sub_b0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 104
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 104
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
  %81 = add i64 %78, -104
  %82 = xor i64 %81, %79, !mcsema_real_eip !4
  %83 = and i64 %82, 16, !mcsema_real_eip !4
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !4
  store i1 %84, i1* %AF_val, !mcsema_real_eip !4
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  store i1 false, i1* %CF_val, !mcsema_real_eip !5
  store i1 false, i1* %OF_val, !mcsema_real_eip !5
  store i1 false, i1* %SF_val, !mcsema_real_eip !5
  store i1 true, i1* %ZF_val, !mcsema_real_eip !5
  store i1 true, i1* %PF_val, !mcsema_real_eip !5
  store i64 0, i64* %RAX_val, !mcsema_real_eip !5
  store i64 28, i64* %RCX_val, !mcsema_real_eip !6
  store i64 28, i64* %RDX_val, !mcsema_real_eip !7
  %85 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %86 = add i64 %85, -64, !mcsema_real_eip !8
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !8
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !8
  store i64 %88, i64* %R8_val, !mcsema_real_eip !8
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %R9_val, !mcsema_real_eip !9
  %89 = add i64 %85, -4, !mcsema_real_eip !10
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !10
  %91 = bitcast i64* %90 to i32*
  store i32 0, i32* %91, !mcsema_real_eip !10
  %92 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %93 = add i64 %92, -8, !mcsema_real_eip !11
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !11
  %95 = load i64, i64* %RDI_val, !mcsema_real_eip !11
  %96 = trunc i64 %95 to i32, !mcsema_real_eip !11
  %97 = bitcast i64* %94 to i32*
  store i32 %96, i32* %97, !mcsema_real_eip !11
  %98 = load i64, i64* %RBP_val, !mcsema_real_eip !12
  %99 = add i64 %98, -16, !mcsema_real_eip !12
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !12
  %101 = load i64, i64* %RSI_val, !mcsema_real_eip !12
  store i64 %101, i64* %100, !mcsema_real_eip !12
  %102 = load i64, i64* %RBP_val, !mcsema_real_eip !13
  %103 = add i64 %102, -36, !mcsema_real_eip !13
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !13
  %105 = bitcast i64* %104 to i32*
  store i32 0, i32* %105, !mcsema_real_eip !13
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !14
  %107 = add i64 %106, -20, !mcsema_real_eip !14
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !14
  %109 = bitcast i64* %108 to i32*
  store i32 1, i32* %109, !mcsema_real_eip !14
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %111 = add i64 %110, -24, !mcsema_real_eip !15
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !15
  %113 = bitcast i64* %112 to i32*
  store i32 1, i32* %113, !mcsema_real_eip !15
  %114 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %115 = add i64 %114, -20, !mcsema_real_eip !16
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !16
  %117 = bitcast i64* %116 to i32*
  %118 = load i32, i32* %117, !mcsema_real_eip !16
  %119 = sext i32 %118 to i64, !mcsema_real_eip !16
  store i64 %119, i64* %RSI_val, !mcsema_real_eip !16
  %120 = load i64, i64* %RBP_val, !mcsema_real_eip !17
  %121 = add i64 %120, -24, !mcsema_real_eip !17
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !17
  %123 = bitcast i64* %122 to i32*
  %124 = load i32, i32* %123, !mcsema_real_eip !17
  %125 = sext i32 %124 to i64, !mcsema_real_eip !17
  %126 = mul i64 %125, 11, !mcsema_real_eip !18
  store i64 %126, i64* %R10_val, !mcsema_real_eip !18
  %127 = load i64, i64* %R9_val, !mcsema_real_eip !19
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %126, i64 %127)
  %128 = extractvalue { i64, i1 } %uadd, 0
  %129 = xor i64 %128, %127, !mcsema_real_eip !19
  %130 = xor i64 %129, %126, !mcsema_real_eip !19
  %131 = and i64 %130, 16, !mcsema_real_eip !19
  %132 = icmp ne i64 %131, 0, !mcsema_real_eip !19
  store i1 %132, i1* %AF_val, !mcsema_real_eip !19
  %133 = icmp slt i64 %128, 0
  store i1 %133, i1* %SF_val, !mcsema_real_eip !19
  %134 = icmp eq i64 %128, 0, !mcsema_real_eip !19
  store i1 %134, i1* %ZF_val, !mcsema_real_eip !19
  %135 = xor i64 %127, -9223372036854775808, !mcsema_real_eip !19
  %136 = xor i64 %135, %126, !mcsema_real_eip !19
  %137 = and i64 %129, %136, !mcsema_real_eip !19
  %138 = icmp slt i64 %137, 0
  store i1 %138, i1* %OF_val, !mcsema_real_eip !19
  %139 = trunc i64 %128 to i8, !mcsema_real_eip !19
  %140 = tail call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !19
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  store i1 %142, i1* %PF_val, !mcsema_real_eip !19
  %143 = extractvalue { i64, i1 } %uadd, 1
  store i1 %143, i1* %CF_val, !mcsema_real_eip !19
  store i64 %128, i64* %R9_val, !mcsema_real_eip !19
  %144 = load i64, i64* %RSI_val, !mcsema_real_eip !20
  %145 = add i64 %144, %128, !mcsema_real_eip !20
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !20
  %147 = bitcast i64* %146 to i8*
  store i8 88, i8* %147, !mcsema_real_eip !20
  %148 = load i64, i64* %RAX_val, !mcsema_real_eip !21
  %149 = and i64 %148, 4294967295
  store i64 %149, i64* %RDI_val, !mcsema_real_eip !21
  %150 = load i64, i64* %R8_val, !mcsema_real_eip !22
  store i64 %150, i64* %RSI_val, !mcsema_real_eip !22
  %151 = load i64, i64* %RDX_val, !mcsema_real_eip !23
  %152 = tail call x86_64_sysvcc i64 @read(i64 %149, i64 %150, i64 %151), !mcsema_real_eip !23
  store i64 %152, i64* %RAX_val, !mcsema_real_eip !23
  %153 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %154 = add i64 %153, -72, !mcsema_real_eip !24
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !24
  store i64 %152, i64* %155, !mcsema_real_eip !24
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %157 = add i64 %156, -36, !mcsema_real_eip !25
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !25
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !25
  %161 = add i32 %160, -28
  %162 = xor i32 %161, %160, !mcsema_real_eip !25
  %163 = and i32 %162, 16
  %164 = icmp eq i32 %163, 0
  store i1 %164, i1* %AF_val, !mcsema_real_eip !25
  %165 = trunc i32 %161 to i8, !mcsema_real_eip !25
  %166 = tail call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !25
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  store i1 %168, i1* %PF_val, !mcsema_real_eip !25
  %169 = icmp eq i32 %161, 0, !mcsema_real_eip !25
  store i1 %169, i1* %ZF_val, !mcsema_real_eip !25
  %170 = icmp slt i32 %161, 0
  store i1 %170, i1* %SF_val, !mcsema_real_eip !25
  %171 = icmp ult i32 %160, 28, !mcsema_real_eip !25
  store i1 %171, i1* %CF_val, !mcsema_real_eip !25
  %172 = and i32 %162, %160, !mcsema_real_eip !25
  %173 = icmp slt i32 %172, 0
  store i1 %173, i1* %OF_val, !mcsema_real_eip !25
  %tmp = xor i1 %170, %173
  %174 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !27

block_0x291:                                      ; preds = %entry
  %175 = add i64 %174, -4, !mcsema_real_eip !26
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !26
  %177 = bitcast i64* %176 to i32*
  store i32 1, i32* %177, !mcsema_real_eip !26
  %178 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %179 = add i64 %178, -4, !mcsema_real_eip !28
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !28
  %181 = bitcast i64* %180 to i32*
  %182 = load i32, i32* %181, !mcsema_real_eip !28
  %183 = zext i32 %182 to i64, !mcsema_real_eip !28
  store i64 %183, i64* %RAX_val, !mcsema_real_eip !28
  %184 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 96)
  %185 = extractvalue { i64, i1 } %uadd351, 0
  %186 = xor i64 %185, %184, !mcsema_real_eip !29
  %187 = and i64 %186, 16, !mcsema_real_eip !29
  %188 = icmp ne i64 %187, 0, !mcsema_real_eip !29
  store i1 %188, i1* %AF_val, !mcsema_real_eip !29
  %189 = icmp slt i64 %185, 0
  store i1 %189, i1* %SF_val, !mcsema_real_eip !29
  %190 = icmp eq i64 %185, 0, !mcsema_real_eip !29
  store i1 %190, i1* %ZF_val, !mcsema_real_eip !29
  %191 = xor i64 %184, -9223372036854775808, !mcsema_real_eip !29
  %192 = and i64 %186, %191, !mcsema_real_eip !29
  %193 = icmp slt i64 %192, 0
  store i1 %193, i1* %OF_val, !mcsema_real_eip !29
  %194 = trunc i64 %185 to i8, !mcsema_real_eip !29
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !29
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF_val, !mcsema_real_eip !29
  %198 = extractvalue { i64, i1 } %uadd351, 1
  store i1 %198, i1* %CF_val, !mcsema_real_eip !29
  store i64 %185, i64* %RSP_val, !mcsema_real_eip !29
  %199 = inttoptr i64 %185 to i64*, !mcsema_real_eip !30
  %200 = load i64, i64* %199, !mcsema_real_eip !30
  store i64 %200, i64* %RBP_val, !mcsema_real_eip !30
  %201 = add i64 %185, 16, !mcsema_real_eip !31
  store i64 %201, i64* %RSP_val, !mcsema_real_eip !31
  %202 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %202, i64* %RAX, !mcsema_real_eip !31
  %203 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %203, i64* %RBX, !mcsema_real_eip !31
  %204 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %204, i64* %RCX, !mcsema_real_eip !31
  %205 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %205, i64* %RDX, !mcsema_real_eip !31
  %206 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %206, i64* %RSI, !mcsema_real_eip !31
  %207 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %207, i64* %RDI, !mcsema_real_eip !31
  %208 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %208, i64* %RSP, !mcsema_real_eip !31
  %209 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %209, i64* %RBP, !mcsema_real_eip !31
  %210 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %210, i64* %R8, !mcsema_real_eip !31
  %211 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %211, i64* %R9, !mcsema_real_eip !31
  %212 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %212, i64* %R10, !mcsema_real_eip !31
  %213 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %213, i64* %R11, !mcsema_real_eip !31
  %214 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %214, i64* %R12, !mcsema_real_eip !31
  %215 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %215, i64* %R13, !mcsema_real_eip !31
  %216 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %216, i64* %R14, !mcsema_real_eip !31
  %217 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %217, i64* %R15, !mcsema_real_eip !31
  %218 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %218, i64* %RIP, !mcsema_real_eip !31
  %219 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %219, i1* %CF, align 1, !mcsema_real_eip !31
  %220 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !31
  %221 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %221, i1* %AF, align 1, !mcsema_real_eip !31
  %222 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !31
  %223 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %223, i1* %SF, align 1, !mcsema_real_eip !31
  %224 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %224, i1* %OF, align 1, !mcsema_real_eip !31
  %225 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %225, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %226 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %226, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %227 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %227, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %228 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %228, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %229 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %229, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %230 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %230, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %231 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %231, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %232 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %232, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %233 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %233, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %234 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %234, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %235 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %235, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %236 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %236, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %237 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %237, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %238 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %238, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %239 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %239, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %240 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %240, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %241 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %241, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %242 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %242, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %243 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %243, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %244 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %244, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %245 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %245, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %246 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %246, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %247 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %247, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %248 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %248, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %249 = load i64, i64* %53, align 4
  store i64 %249, i64* %52, align 4
  %250 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %250, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %251 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %251, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %252 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %252, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %253 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %253, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %254 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %254, i128* %XMM0, align 1, !mcsema_real_eip !31
  %255 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %255, i128* %XMM1, align 1, !mcsema_real_eip !31
  %256 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %256, i128* %XMM2, align 1, !mcsema_real_eip !31
  %257 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %257, i128* %XMM3, align 1, !mcsema_real_eip !31
  %258 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %258, i128* %XMM4, align 1, !mcsema_real_eip !31
  %259 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %259, i128* %XMM5, align 1, !mcsema_real_eip !31
  %260 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %260, i128* %XMM6, align 1, !mcsema_real_eip !31
  %261 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %261, i128* %XMM7, align 1, !mcsema_real_eip !31
  %262 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %262, i128* %XMM8, align 1, !mcsema_real_eip !31
  %263 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %263, i128* %XMM9, align 1, !mcsema_real_eip !31
  %264 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %264, i128* %XMM10, align 1, !mcsema_real_eip !31
  %265 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %265, i128* %XMM11, align 1, !mcsema_real_eip !31
  %266 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %266, i128* %XMM12, align 1, !mcsema_real_eip !31
  %267 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %267, i128* %XMM13, align 1, !mcsema_real_eip !31
  %268 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %268, i128* %XMM14, align 1, !mcsema_real_eip !31
  %269 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %269, i128* %XMM15, align 1, !mcsema_real_eip !31
  %270 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %270, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %271 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %271, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x11e:                                      ; preds = %entry
  %272 = add i64 %174, -20, !mcsema_real_eip !32
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !32
  %274 = bitcast i64* %273 to i32*
  %275 = load i32, i32* %274, !mcsema_real_eip !32
  %276 = zext i32 %275 to i64, !mcsema_real_eip !32
  store i64 %276, i64* %RAX_val, !mcsema_real_eip !32
  %277 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %278 = add i64 %277, -28, !mcsema_real_eip !33
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !33
  %280 = bitcast i64* %279 to i32*
  store i32 %275, i32* %280, !mcsema_real_eip !33
  %281 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %282 = add i64 %281, -24, !mcsema_real_eip !34
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !34
  %284 = bitcast i64* %283 to i32*
  %285 = load i32, i32* %284, !mcsema_real_eip !34
  %286 = zext i32 %285 to i64, !mcsema_real_eip !34
  store i64 %286, i64* %RAX_val, !mcsema_real_eip !34
  %287 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %288 = add i64 %287, -32, !mcsema_real_eip !35
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !35
  %290 = bitcast i64* %289 to i32*
  store i32 %285, i32* %290, !mcsema_real_eip !35
  %291 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %292 = add i64 %291, -36, !mcsema_real_eip !36
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !36
  %294 = bitcast i64* %293 to i32*
  %295 = load i32, i32* %294, !mcsema_real_eip !36
  %296 = sext i32 %295 to i64, !mcsema_real_eip !36
  store i64 %296, i64* %RCX_val, !mcsema_real_eip !36
  %297 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %298 = add i64 %297, -64, !mcsema_real_eip !37
  %299 = add i64 %298, %296, !mcsema_real_eip !37
  %300 = inttoptr i64 %299 to i64*, !mcsema_real_eip !37
  %301 = bitcast i64* %300 to i8*
  %302 = load i8, i8* %301, !mcsema_real_eip !37
  %303 = sext i8 %302 to i32, !mcsema_real_eip !37
  %304 = add nsw i32 %303, -97
  %305 = zext i32 %304 to i64, !mcsema_real_eip !38
  store i64 %305, i64* %RCX_val, !mcsema_real_eip !39
  %306 = add nsw i32 %303, -119
  %307 = xor i32 %306, %304, !mcsema_real_eip !40
  %308 = and i32 %307, 16
  %309 = icmp eq i32 %308, 0
  store i1 %309, i1* %AF_val, !mcsema_real_eip !40
  %310 = trunc i32 %306 to i8, !mcsema_real_eip !40
  %311 = tail call i8 @llvm.ctpop.i8(i8 %310), !mcsema_real_eip !40
  %312 = and i8 %311, 1
  %313 = icmp eq i8 %312, 0
  store i1 %313, i1* %PF_val, !mcsema_real_eip !40
  %314 = icmp eq i32 %306, 0, !mcsema_real_eip !40
  store i1 %314, i1* %ZF_val, !mcsema_real_eip !40
  %315 = icmp slt i32 %306, 0
  store i1 %315, i1* %SF_val, !mcsema_real_eip !40
  %316 = icmp ult i32 %304, 22, !mcsema_real_eip !40
  store i1 %316, i1* %CF_val, !mcsema_real_eip !40
  %317 = and i32 %307, %304, !mcsema_real_eip !40
  %318 = icmp slt i32 %317, 0
  store i1 %318, i1* %OF_val, !mcsema_real_eip !40
  %319 = zext i32 %306 to i64, !mcsema_real_eip !40
  store i64 %319, i64* %RAX_val, !mcsema_real_eip !40
  %320 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %321 = add i64 %320, -80, !mcsema_real_eip !41
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !41
  %323 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %323, i64* %322, !mcsema_real_eip !41
  %324 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %325 = add i64 %324, -84, !mcsema_real_eip !42
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !42
  %327 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %328 = trunc i64 %327 to i32, !mcsema_real_eip !42
  %329 = bitcast i64* %326 to i32*
  store i32 %328, i32* %329, !mcsema_real_eip !42
  %330 = load i1, i1* %ZF_val, !mcsema_real_eip !43
  %331 = load i1, i1* %CF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %331, %330
  %332 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !43

block_0x18e:                                      ; preds = %block_0x11e
  %333 = add i64 %332, -4, !mcsema_real_eip !44
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !44
  %335 = bitcast i64* %334 to i32*
  store i32 1, i32* %335, !mcsema_real_eip !44
  %336 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %337 = add i64 %336, -4, !mcsema_real_eip !28
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !28
  %339 = bitcast i64* %338 to i32*
  %340 = load i32, i32* %339, !mcsema_real_eip !28
  %341 = zext i32 %340 to i64, !mcsema_real_eip !28
  store i64 %341, i64* %RAX_val, !mcsema_real_eip !28
  %342 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %342, i64 96)
  %343 = extractvalue { i64, i1 } %uadd350, 0
  %344 = xor i64 %343, %342, !mcsema_real_eip !29
  %345 = and i64 %344, 16, !mcsema_real_eip !29
  %346 = icmp ne i64 %345, 0, !mcsema_real_eip !29
  store i1 %346, i1* %AF_val, !mcsema_real_eip !29
  %347 = icmp slt i64 %343, 0
  store i1 %347, i1* %SF_val, !mcsema_real_eip !29
  %348 = icmp eq i64 %343, 0, !mcsema_real_eip !29
  store i1 %348, i1* %ZF_val, !mcsema_real_eip !29
  %349 = xor i64 %342, -9223372036854775808, !mcsema_real_eip !29
  %350 = and i64 %344, %349, !mcsema_real_eip !29
  %351 = icmp slt i64 %350, 0
  store i1 %351, i1* %OF_val, !mcsema_real_eip !29
  %352 = trunc i64 %343 to i8, !mcsema_real_eip !29
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !29
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF_val, !mcsema_real_eip !29
  %356 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %356, i1* %CF_val, !mcsema_real_eip !29
  store i64 %343, i64* %RSP_val, !mcsema_real_eip !29
  %357 = inttoptr i64 %343 to i64*, !mcsema_real_eip !30
  %358 = load i64, i64* %357, !mcsema_real_eip !30
  store i64 %358, i64* %RBP_val, !mcsema_real_eip !30
  %359 = add i64 %343, 16, !mcsema_real_eip !31
  store i64 %359, i64* %RSP_val, !mcsema_real_eip !31
  %360 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %360, i64* %RAX, !mcsema_real_eip !31
  %361 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %361, i64* %RBX, !mcsema_real_eip !31
  %362 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %362, i64* %RCX, !mcsema_real_eip !31
  %363 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %363, i64* %RDX, !mcsema_real_eip !31
  %364 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %364, i64* %RSI, !mcsema_real_eip !31
  %365 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %365, i64* %RDI, !mcsema_real_eip !31
  %366 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %366, i64* %RSP, !mcsema_real_eip !31
  %367 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %367, i64* %RBP, !mcsema_real_eip !31
  %368 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %368, i64* %R8, !mcsema_real_eip !31
  %369 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %369, i64* %R9, !mcsema_real_eip !31
  %370 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %370, i64* %R10, !mcsema_real_eip !31
  %371 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %371, i64* %R11, !mcsema_real_eip !31
  %372 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %372, i64* %R12, !mcsema_real_eip !31
  %373 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %373, i64* %R13, !mcsema_real_eip !31
  %374 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %374, i64* %R14, !mcsema_real_eip !31
  %375 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %375, i64* %R15, !mcsema_real_eip !31
  %376 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %376, i64* %RIP, !mcsema_real_eip !31
  %377 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %377, i1* %CF, align 1, !mcsema_real_eip !31
  %378 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %378, i1* %PF, align 1, !mcsema_real_eip !31
  %379 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %379, i1* %AF, align 1, !mcsema_real_eip !31
  %380 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %380, i1* %ZF, align 1, !mcsema_real_eip !31
  %381 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %381, i1* %SF, align 1, !mcsema_real_eip !31
  %382 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %382, i1* %OF, align 1, !mcsema_real_eip !31
  %383 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %383, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %384 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %384, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %385 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %385, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %386 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %386, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %387 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %387, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %388 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %388, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %389 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %389, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %390 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %390, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %391 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %391, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %392 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %392, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %393 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %393, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %394 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %394, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %395 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %395, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %396 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %396, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %397 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %397, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %398 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %398, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %399 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %399, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %400 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %400, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %401 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %401, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %402 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %402, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %403 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %403, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %404 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %404, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %405 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %405, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %406 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %406, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %407 = load i64, i64* %53, align 4
  store i64 %407, i64* %52, align 4
  %408 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %408, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %409 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %409, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %410 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %410, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %411 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %411, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %412 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %412, i128* %XMM0, align 1, !mcsema_real_eip !31
  %413 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %413, i128* %XMM1, align 1, !mcsema_real_eip !31
  %414 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %414, i128* %XMM2, align 1, !mcsema_real_eip !31
  %415 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %415, i128* %XMM3, align 1, !mcsema_real_eip !31
  %416 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %416, i128* %XMM4, align 1, !mcsema_real_eip !31
  %417 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %417, i128* %XMM5, align 1, !mcsema_real_eip !31
  %418 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %418, i128* %XMM6, align 1, !mcsema_real_eip !31
  %419 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %419, i128* %XMM7, align 1, !mcsema_real_eip !31
  %420 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %420, i128* %XMM8, align 1, !mcsema_real_eip !31
  %421 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %421, i128* %XMM9, align 1, !mcsema_real_eip !31
  %422 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %422, i128* %XMM10, align 1, !mcsema_real_eip !31
  %423 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %423, i128* %XMM11, align 1, !mcsema_real_eip !31
  %424 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %424, i128* %XMM12, align 1, !mcsema_real_eip !31
  %425 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %425, i128* %XMM13, align 1, !mcsema_real_eip !31
  %426 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %426, i128* %XMM14, align 1, !mcsema_real_eip !31
  %427 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %427, i128* %XMM15, align 1, !mcsema_real_eip !31
  %428 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %428, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %429 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %429, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x148:                                      ; preds = %block_0x11e
  %430 = add i64 %332, -80, !mcsema_real_eip !45
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !45
  %432 = load i64, i64* %431, !mcsema_real_eip !45
  store i64 %432, i64* %RAX_val, !mcsema_real_eip !45
  %433 = shl i64 %432, 3
  %434 = add i64 %433, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !46
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !46
  %436 = load i64, i64* %435, !mcsema_real_eip !46
  store i64 %436, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %432, i64* %RAX, !mcsema_real_eip !47
  %437 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %437, i64* %RBX, !mcsema_real_eip !47
  %438 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %438, i64* %RCX, !mcsema_real_eip !47
  %439 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %439, i64* %RDX, !mcsema_real_eip !47
  %440 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %440, i64* %RSI, !mcsema_real_eip !47
  %441 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %441, i64* %RDI, !mcsema_real_eip !47
  %442 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %442, i64* %RSP, !mcsema_real_eip !47
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %443, i64* %RBP, !mcsema_real_eip !47
  %444 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %444, i64* %R8, !mcsema_real_eip !47
  %445 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %445, i64* %R9, !mcsema_real_eip !47
  %446 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %446, i64* %R10, !mcsema_real_eip !47
  %447 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %447, i64* %R11, !mcsema_real_eip !47
  %448 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %448, i64* %R12, !mcsema_real_eip !47
  %449 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %449, i64* %R13, !mcsema_real_eip !47
  %450 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %450, i64* %R14, !mcsema_real_eip !47
  %451 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %451, i64* %R15, !mcsema_real_eip !47
  %452 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %452, i64* %RIP, !mcsema_real_eip !47
  %453 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %453, i1* %CF, align 1, !mcsema_real_eip !47
  %454 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %454, i1* %PF, align 1, !mcsema_real_eip !47
  %455 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %455, i1* %AF, align 1, !mcsema_real_eip !47
  %456 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %456, i1* %ZF, align 1, !mcsema_real_eip !47
  %457 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %457, i1* %SF, align 1, !mcsema_real_eip !47
  %458 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %458, i1* %OF, align 1, !mcsema_real_eip !47
  %459 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %459, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %460 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %460, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %461 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %461, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %462 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %462, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %463 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %463, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %464 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %464, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %465 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %465, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %466 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %466, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %467 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %467, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %468 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %468, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %469 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %469, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %470 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %470, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %471 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %471, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %472 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %472, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %473 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %473, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %474 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %474, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %475 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %475, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %476 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %476, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %477 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %477, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %478 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %478, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %479 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %479, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %480 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %480, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %481 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %481, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %482 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %482, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %483 = load i64, i64* %53, align 4
  store i64 %483, i64* %52, align 4
  %484 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %484, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %485 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %485, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %486 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %486, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %487 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %487, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %488 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %488, i128* %XMM0, align 1, !mcsema_real_eip !47
  %489 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %489, i128* %XMM1, align 1, !mcsema_real_eip !47
  %490 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %490, i128* %XMM2, align 1, !mcsema_real_eip !47
  %491 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %491, i128* %XMM3, align 1, !mcsema_real_eip !47
  %492 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %492, i128* %XMM4, align 1, !mcsema_real_eip !47
  %493 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %493, i128* %XMM5, align 1, !mcsema_real_eip !47
  %494 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %494, i128* %XMM6, align 1, !mcsema_real_eip !47
  %495 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %495, i128* %XMM7, align 1, !mcsema_real_eip !47
  %496 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %496, i128* %XMM8, align 1, !mcsema_real_eip !47
  %497 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %497, i128* %XMM9, align 1, !mcsema_real_eip !47
  %498 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %498, i128* %XMM10, align 1, !mcsema_real_eip !47
  %499 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %499, i128* %XMM11, align 1, !mcsema_real_eip !47
  %500 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %500, i128* %XMM12, align 1, !mcsema_real_eip !47
  %501 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %501, i128* %XMM13, align 1, !mcsema_real_eip !47
  %502 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %502, i128* %XMM14, align 1, !mcsema_real_eip !47
  %503 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %503, i128* %XMM15, align 1, !mcsema_real_eip !47
  %504 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %504, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %505 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %505, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  call void @do_call_value.1(%struct.regs* %0, i64 %436, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %506 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %506, i64* %RAX_val, !mcsema_real_eip !47
  %507 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %507, i64* %RBX_val, !mcsema_real_eip !47
  %508 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %508, i64* %RCX_val, !mcsema_real_eip !47
  %509 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %509, i64* %RDX_val, !mcsema_real_eip !47
  %510 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %510, i64* %RSI_val, !mcsema_real_eip !47
  %511 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %511, i64* %RDI_val, !mcsema_real_eip !47
  %512 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %512, i64* %RSP_val, !mcsema_real_eip !47
  %513 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %513, i64* %RBP_val, !mcsema_real_eip !47
  %514 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %514, i64* %R8_val, !mcsema_real_eip !47
  %515 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %515, i64* %R9_val, !mcsema_real_eip !47
  %516 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %516, i64* %R10_val, !mcsema_real_eip !47
  %517 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %517, i64* %R11_val, !mcsema_real_eip !47
  %518 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %518, i64* %R12_val, !mcsema_real_eip !47
  %519 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %519, i64* %R13_val, !mcsema_real_eip !47
  %520 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %520, i64* %R14_val, !mcsema_real_eip !47
  %521 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %521, i64* %R15_val, !mcsema_real_eip !47
  %522 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %522, i64* %RIP_val, !mcsema_real_eip !47
  %523 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %523, i1* %CF_val, !mcsema_real_eip !47
  %524 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %524, i1* %PF_val, !mcsema_real_eip !47
  %525 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %525, i1* %AF_val, !mcsema_real_eip !47
  %526 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %526, i1* %ZF_val, !mcsema_real_eip !47
  %527 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %527, i1* %SF_val, !mcsema_real_eip !47
  %528 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %528, i1* %OF_val, !mcsema_real_eip !47
  %529 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %529, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %530 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %530, i1* %FPU_B_val, !mcsema_real_eip !47
  %531 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %531, i1* %FPU_C3_val, !mcsema_real_eip !47
  %532 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %532, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %533 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %533, i1* %FPU_C2_val, !mcsema_real_eip !47
  %534 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %534, i1* %FPU_C1_val, !mcsema_real_eip !47
  %535 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %535, i1* %FPU_C0_val, !mcsema_real_eip !47
  %536 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %536, i1* %FPU_ES_val, !mcsema_real_eip !47
  %537 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %537, i1* %FPU_SF_val, !mcsema_real_eip !47
  %538 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %538, i1* %FPU_PE_val, !mcsema_real_eip !47
  %539 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %539, i1* %FPU_UE_val, !mcsema_real_eip !47
  %540 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %540, i1* %FPU_OE_val, !mcsema_real_eip !47
  %541 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %541, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %542 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %542, i1* %FPU_DE_val, !mcsema_real_eip !47
  %543 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %543, i1* %FPU_IE_val, !mcsema_real_eip !47
  %544 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %544, i1* %FPU_X_val, !mcsema_real_eip !47
  %545 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %545, i2* %FPU_RC_val, !mcsema_real_eip !47
  %546 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %546, i2* %FPU_PC_val, !mcsema_real_eip !47
  %547 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %547, i1* %FPU_PM_val, !mcsema_real_eip !47
  %548 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %548, i1* %FPU_UM_val, !mcsema_real_eip !47
  %549 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %549, i1* %FPU_OM_val, !mcsema_real_eip !47
  %550 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %550, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %551 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %551, i1* %FPU_DM_val, !mcsema_real_eip !47
  %552 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %552, i1* %FPU_IM_val, !mcsema_real_eip !47
  %553 = load i64, i64* %52, align 4
  store i64 %553, i64* %53, align 4
  %554 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %554, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %555 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %555, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %556 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %556, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %557 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %557, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %558 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %558, i128* %XMM0_val, !mcsema_real_eip !47
  %559 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %559, i128* %XMM1_val, !mcsema_real_eip !47
  %560 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %560, i128* %XMM2_val, !mcsema_real_eip !47
  %561 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %561, i128* %XMM3_val, !mcsema_real_eip !47
  %562 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %562, i128* %XMM4_val, !mcsema_real_eip !47
  %563 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %563, i128* %XMM5_val, !mcsema_real_eip !47
  %564 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %564, i128* %XMM6_val, !mcsema_real_eip !47
  %565 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %565, i128* %XMM7_val, !mcsema_real_eip !47
  %566 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %566, i128* %XMM8_val, !mcsema_real_eip !47
  %567 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %567, i128* %XMM9_val, !mcsema_real_eip !47
  %568 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %568, i128* %XMM10_val, !mcsema_real_eip !47
  %569 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %569, i128* %XMM11_val, !mcsema_real_eip !47
  %570 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %570, i128* %XMM12_val, !mcsema_real_eip !47
  %571 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %571, i128* %XMM13_val, !mcsema_real_eip !47
  %572 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %572, i128* %XMM14_val, !mcsema_real_eip !47
  %573 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %573, i128* %XMM15_val, !mcsema_real_eip !47
  %574 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %574, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %575 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %575, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %576 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %577 = add i64 %576, 8, !mcsema_real_eip !47
  store i64 %577, i64* %RSP_val, !mcsema_real_eip !47
  %578 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %578, i64* %RAX, !mcsema_real_eip !47
  %579 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %579, i64* %RBX, !mcsema_real_eip !47
  %580 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %580, i64* %RCX, !mcsema_real_eip !47
  %581 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %581, i64* %RDX, !mcsema_real_eip !47
  %582 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %582, i64* %RSI, !mcsema_real_eip !47
  %583 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %583, i64* %RDI, !mcsema_real_eip !47
  %584 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %584, i64* %RSP, !mcsema_real_eip !47
  %585 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %585, i64* %RBP, !mcsema_real_eip !47
  %586 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %586, i64* %R8, !mcsema_real_eip !47
  %587 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %587, i64* %R9, !mcsema_real_eip !47
  %588 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %588, i64* %R10, !mcsema_real_eip !47
  %589 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %589, i64* %R11, !mcsema_real_eip !47
  %590 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %590, i64* %R12, !mcsema_real_eip !47
  %591 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %591, i64* %R13, !mcsema_real_eip !47
  %592 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %592, i64* %R14, !mcsema_real_eip !47
  %593 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %593, i64* %R15, !mcsema_real_eip !47
  %594 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %594, i64* %RIP, !mcsema_real_eip !47
  %595 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %595, i1* %CF, align 1, !mcsema_real_eip !47
  %596 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %596, i1* %PF, align 1, !mcsema_real_eip !47
  %597 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %597, i1* %AF, align 1, !mcsema_real_eip !47
  %598 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %598, i1* %ZF, align 1, !mcsema_real_eip !47
  %599 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %599, i1* %SF, align 1, !mcsema_real_eip !47
  %600 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %600, i1* %OF, align 1, !mcsema_real_eip !47
  %601 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %601, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %602 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %602, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %603 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %603, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %604 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %604, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %605 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %605, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %606 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %606, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %607 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %607, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %608 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %608, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %609 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %609, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %610 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %610, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %611 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %611, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %612 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %612, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %613 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %613, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %614 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %614, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %615 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %615, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %616 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %616, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %617 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %617, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %618 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %618, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %619 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %619, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %620 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %620, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %621 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %621, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %622 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %622, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %623 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %623, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %624 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %624, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %625 = load i64, i64* %53, align 4
  store i64 %625, i64* %52, align 4
  %626 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %626, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %627 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %627, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %628 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %628, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %629 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %629, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %630 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %630, i128* %XMM0, align 1, !mcsema_real_eip !47
  %631 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %631, i128* %XMM1, align 1, !mcsema_real_eip !47
  %632 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %632, i128* %XMM2, align 1, !mcsema_real_eip !47
  %633 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %633, i128* %XMM3, align 1, !mcsema_real_eip !47
  %634 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %634, i128* %XMM4, align 1, !mcsema_real_eip !47
  %635 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %635, i128* %XMM5, align 1, !mcsema_real_eip !47
  %636 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %636, i128* %XMM6, align 1, !mcsema_real_eip !47
  %637 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %637, i128* %XMM7, align 1, !mcsema_real_eip !47
  %638 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %638, i128* %XMM8, align 1, !mcsema_real_eip !47
  %639 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %639, i128* %XMM9, align 1, !mcsema_real_eip !47
  %640 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %640, i128* %XMM10, align 1, !mcsema_real_eip !47
  %641 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %641, i128* %XMM11, align 1, !mcsema_real_eip !47
  %642 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %642, i128* %XMM12, align 1, !mcsema_real_eip !47
  %643 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %643, i128* %XMM13, align 1, !mcsema_real_eip !47
  %644 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %644, i128* %XMM14, align 1, !mcsema_real_eip !47
  %645 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %645, i128* %XMM15, align 1, !mcsema_real_eip !47
  %646 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %646, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %647 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %647, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

define internal x86_64_sysvcc void @sub_172(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 84
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %R15_val = alloca i64, !mcsema_real_eip !48
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !48
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !48
  %XMM15_val = alloca i128, !mcsema_real_eip !48
  %XMM14_val = alloca i128, !mcsema_real_eip !48
  %XMM13_val = alloca i128, !mcsema_real_eip !48
  %XMM12_val = alloca i128, !mcsema_real_eip !48
  %XMM11_val = alloca i128, !mcsema_real_eip !48
  %XMM10_val = alloca i128, !mcsema_real_eip !48
  %XMM9_val = alloca i128, !mcsema_real_eip !48
  %XMM8_val = alloca i128, !mcsema_real_eip !48
  %XMM7_val = alloca i128, !mcsema_real_eip !48
  %XMM6_val = alloca i128, !mcsema_real_eip !48
  %XMM5_val = alloca i128, !mcsema_real_eip !48
  %XMM4_val = alloca i128, !mcsema_real_eip !48
  %XMM3_val = alloca i128, !mcsema_real_eip !48
  %XMM2_val = alloca i128, !mcsema_real_eip !48
  %XMM1_val = alloca i128, !mcsema_real_eip !48
  %XMM0_val = alloca i128, !mcsema_real_eip !48
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !48
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !48
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !48
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !48
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !48
  %FPU_IM_val = alloca i1, !mcsema_real_eip !48
  %FPU_DM_val = alloca i1, !mcsema_real_eip !48
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !48
  %FPU_OM_val = alloca i1, !mcsema_real_eip !48
  %FPU_UM_val = alloca i1, !mcsema_real_eip !48
  %FPU_PM_val = alloca i1, !mcsema_real_eip !48
  %FPU_PC_val = alloca i2, !mcsema_real_eip !48
  %FPU_RC_val = alloca i2, !mcsema_real_eip !48
  %FPU_X_val = alloca i1, !mcsema_real_eip !48
  %FPU_IE_val = alloca i1, !mcsema_real_eip !48
  %FPU_DE_val = alloca i1, !mcsema_real_eip !48
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !48
  %FPU_OE_val = alloca i1, !mcsema_real_eip !48
  %FPU_UE_val = alloca i1, !mcsema_real_eip !48
  %FPU_PE_val = alloca i1, !mcsema_real_eip !48
  %FPU_SF_val = alloca i1, !mcsema_real_eip !48
  %FPU_ES_val = alloca i1, !mcsema_real_eip !48
  %FPU_C0_val = alloca i1, !mcsema_real_eip !48
  %FPU_C1_val = alloca i1, !mcsema_real_eip !48
  %FPU_C2_val = alloca i1, !mcsema_real_eip !48
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !48
  %FPU_C3_val = alloca i1, !mcsema_real_eip !48
  %FPU_B_val = alloca i1, !mcsema_real_eip !48
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !48
  %DF_val = alloca i1, !mcsema_real_eip !48
  %OF_val = alloca i1, !mcsema_real_eip !48
  %SF_val = alloca i1, !mcsema_real_eip !48
  %CF_val = alloca i1, !mcsema_real_eip !48
  %AF_val = alloca i1, !mcsema_real_eip !48
  %PF_val = alloca i1, !mcsema_real_eip !48
  %ZF_val = alloca i1, !mcsema_real_eip !48
  %RIP_val = alloca i64, !mcsema_real_eip !48
  %R14_val = alloca i64, !mcsema_real_eip !48
  %R13_val = alloca i64, !mcsema_real_eip !48
  %R12_val = alloca i64, !mcsema_real_eip !48
  %R11_val = alloca i64, !mcsema_real_eip !48
  %R10_val = alloca i64, !mcsema_real_eip !48
  %R9_val = alloca i64, !mcsema_real_eip !48
  %R8_val = alloca i64, !mcsema_real_eip !48
  %RSP_val = alloca i64, !mcsema_real_eip !48
  %RBP_val = alloca i64, !mcsema_real_eip !48
  %RDI_val = alloca i64, !mcsema_real_eip !48
  %RSI_val = alloca i64, !mcsema_real_eip !48
  %RDX_val = alloca i64, !mcsema_real_eip !48
  %RCX_val = alloca i64, !mcsema_real_eip !48
  %RBX_val = alloca i64, !mcsema_real_eip !48
  %RAX_val = alloca i64, !mcsema_real_eip !48
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !48
  %1 = load i64, i64* %RAX, !mcsema_real_eip !48
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !48
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !48
  %2 = load i64, i64* %RBX, !mcsema_real_eip !48
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !48
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !48
  %3 = load i64, i64* %RCX, !mcsema_real_eip !48
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !48
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !48
  %4 = load i64, i64* %RDX, !mcsema_real_eip !48
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !48
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !48
  %5 = load i64, i64* %RSI, !mcsema_real_eip !48
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !48
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !48
  %6 = load i64, i64* %RDI, !mcsema_real_eip !48
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !48
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !48
  %7 = load i64, i64* %RSP, !mcsema_real_eip !48
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !48
  %8 = load i64, i64* %RBP, !mcsema_real_eip !48
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !48
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !48
  %9 = load i64, i64* %R8, !mcsema_real_eip !48
  store i64 %9, i64* %R8_val, !mcsema_real_eip !48
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !48
  %10 = load i64, i64* %R9, !mcsema_real_eip !48
  store i64 %10, i64* %R9_val, !mcsema_real_eip !48
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !48
  %11 = load i64, i64* %R10, !mcsema_real_eip !48
  store i64 %11, i64* %R10_val, !mcsema_real_eip !48
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !48
  %12 = load i64, i64* %R11, !mcsema_real_eip !48
  store i64 %12, i64* %R11_val, !mcsema_real_eip !48
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !48
  %13 = load i64, i64* %R12, !mcsema_real_eip !48
  store i64 %13, i64* %R12_val, !mcsema_real_eip !48
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !48
  %14 = load i64, i64* %R13, !mcsema_real_eip !48
  store i64 %14, i64* %R13_val, !mcsema_real_eip !48
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !48
  %15 = load i64, i64* %R14, !mcsema_real_eip !48
  store i64 %15, i64* %R14_val, !mcsema_real_eip !48
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !48
  %16 = load i64, i64* %R15, !mcsema_real_eip !48
  store i64 %16, i64* %R15_val, !mcsema_real_eip !48
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !48
  %17 = load i64, i64* %RIP, !mcsema_real_eip !48
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !48
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !48
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !48
  store i1 %18, i1* %CF_val, !mcsema_real_eip !48
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !48
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !48
  store i1 %19, i1* %PF_val, !mcsema_real_eip !48
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !48
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !48
  store i1 %20, i1* %AF_val, !mcsema_real_eip !48
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !48
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !48
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !48
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !48
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !48
  store i1 %22, i1* %SF_val, !mcsema_real_eip !48
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !48
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !48
  store i1 %23, i1* %OF_val, !mcsema_real_eip !48
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !48
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !48
  store i1 %24, i1* %DF_val, !mcsema_real_eip !48
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !48
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !48
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !48
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !48
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !48
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !48
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !48
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !48
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !48
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !48
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !48
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !48
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !48
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !48
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !48
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !48
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !48
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !48
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !48
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !48
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !48
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !48
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !48
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !48
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !48
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !48
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !48
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !48
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !48
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !48
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !48
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !48
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !48
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !48
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !48
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !48
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !48
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !48
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !48
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !48
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !48
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !48
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !48
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !48
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !48
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !48
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !48
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !48
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !48
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !48
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !48
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !48
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !48
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !48
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !48
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !48
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !48
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !48
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !48
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !48
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !48
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !48
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !48
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !48
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !48
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !48
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !48
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !48
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !48
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !48
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !48
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !48
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !48
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !48
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !48
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !48
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !48
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !48
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !48
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !48
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !48
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !48
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !48
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !48
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !48
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !48
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !48
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !48
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !48
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !48
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !48
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !48
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !48
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !48
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !48
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !48
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !48
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !48
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !48
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !48
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !48
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !48
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !48
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !48
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !48
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !48
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !48
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !48
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !48
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !48
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !48
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !48
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !48
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !48
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !48
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !48
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !48
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !48
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !48
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !48
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !48
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !48
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !48
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !48
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !48
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !48
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !48
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !48
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !48
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !48
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !48
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !48
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !48
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !48
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %78 = add i64 %77, -20, !mcsema_real_eip !48
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !48
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !48
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 -1)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !49
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !49
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !49
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !49
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !49
  %88 = and i32 %83, %81, !mcsema_real_eip !49
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF_val, !mcsema_real_eip !49
  %90 = trunc i32 %82 to i8, !mcsema_real_eip !49
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !49
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF_val, !mcsema_real_eip !49
  %94 = extractvalue { i32, i1 } %uadd, 1
  store i1 %94, i1* %CF_val, !mcsema_real_eip !49
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !50
  %96 = add i64 %95, -20, !mcsema_real_eip !50
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !50
  %98 = bitcast i64* %97 to i32*
  store i32 %82, i32* %98, !mcsema_real_eip !50
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !51
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %100 = add i64 %99, -20, !mcsema_real_eip !52
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !52
  %102 = bitcast i64* %101 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !52
  %104 = sext i32 %103 to i64, !mcsema_real_eip !52
  store i64 %104, i64* %RCX_val, !mcsema_real_eip !52
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %106 = add i64 %105, -24, !mcsema_real_eip !53
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = bitcast i64* %107 to i32*
  %109 = load i32, i32* %108, !mcsema_real_eip !53
  %110 = sext i32 %109 to i64, !mcsema_real_eip !53
  %111 = mul i64 %110, 11, !mcsema_real_eip !54
  store i64 %111, i64* %RDX_val, !mcsema_real_eip !54
  %112 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  %uadd347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 %112)
  %113 = extractvalue { i64, i1 } %uadd347, 0
  %114 = xor i64 %113, %112, !mcsema_real_eip !55
  %115 = xor i64 %114, %111, !mcsema_real_eip !55
  %116 = and i64 %115, 16, !mcsema_real_eip !55
  %117 = icmp ne i64 %116, 0, !mcsema_real_eip !55
  store i1 %117, i1* %AF_val, !mcsema_real_eip !55
  %118 = icmp slt i64 %113, 0
  store i1 %118, i1* %SF_val, !mcsema_real_eip !55
  %119 = icmp eq i64 %113, 0, !mcsema_real_eip !55
  store i1 %119, i1* %ZF_val, !mcsema_real_eip !55
  %120 = xor i64 %112, -9223372036854775808, !mcsema_real_eip !55
  %121 = xor i64 %120, %111, !mcsema_real_eip !55
  %122 = and i64 %114, %121, !mcsema_real_eip !55
  %123 = icmp slt i64 %122, 0
  store i1 %123, i1* %OF_val, !mcsema_real_eip !55
  %124 = trunc i64 %113 to i8, !mcsema_real_eip !55
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !55
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF_val, !mcsema_real_eip !55
  %128 = extractvalue { i64, i1 } %uadd347, 1
  store i1 %128, i1* %CF_val, !mcsema_real_eip !55
  store i64 %113, i64* %RAX_val, !mcsema_real_eip !55
  %129 = load i64, i64* %RCX_val, !mcsema_real_eip !56
  %130 = add i64 %129, %113, !mcsema_real_eip !56
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !56
  %132 = bitcast i64* %131 to i8*
  %133 = load i8, i8* %132, !mcsema_real_eip !56
  %134 = sext i8 %133 to i32, !mcsema_real_eip !56
  %135 = zext i32 %134 to i64, !mcsema_real_eip !56
  store i64 %135, i64* %RSI_val, !mcsema_real_eip !56
  %136 = add nsw i32 %134, -35
  %137 = xor i32 %136, %134, !mcsema_real_eip !57
  %138 = and i32 %137, 16, !mcsema_real_eip !57
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !57
  store i1 %139, i1* %AF_val, !mcsema_real_eip !57
  %140 = trunc i32 %136 to i8, !mcsema_real_eip !57
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !57
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF_val, !mcsema_real_eip !57
  %144 = icmp eq i32 %136, 0, !mcsema_real_eip !57
  store i1 %144, i1* %ZF_val, !mcsema_real_eip !57
  %145 = icmp slt i32 %136, 0
  store i1 %145, i1* %SF_val, !mcsema_real_eip !57
  %146 = icmp ult i8 %133, 35
  store i1 %146, i1* %CF_val, !mcsema_real_eip !57
  %147 = and i32 %137, %134, !mcsema_real_eip !57
  %148 = icmp slt i32 %147, 0
  store i1 %148, i1* %OF_val, !mcsema_real_eip !57
  %149 = load i1, i1* %ZF_val, !mcsema_real_eip !58
  br i1 %149, label %block_0x1c0, label %block_0x1cc, !mcsema_real_eip !58

block_0x1cc:                                      ; preds = %entry
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !59
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %151 = add i64 %150, -20, !mcsema_real_eip !60
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !60
  %153 = bitcast i64* %152 to i32*
  %154 = load i32, i32* %153, !mcsema_real_eip !60
  %155 = sext i32 %154 to i64, !mcsema_real_eip !60
  store i64 %155, i64* %RCX_val, !mcsema_real_eip !60
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %157 = add i64 %156, -24, !mcsema_real_eip !61
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !61
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !61
  %161 = sext i32 %160 to i64, !mcsema_real_eip !61
  %162 = mul i64 %161, 11, !mcsema_real_eip !62
  store i64 %162, i64* %RDX_val, !mcsema_real_eip !62
  %163 = load i64, i64* %RAX_val, !mcsema_real_eip !63
  %uadd349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %162, i64 %163)
  %164 = extractvalue { i64, i1 } %uadd349, 0
  %165 = xor i64 %164, %163, !mcsema_real_eip !63
  %166 = xor i64 %165, %162, !mcsema_real_eip !63
  %167 = and i64 %166, 16, !mcsema_real_eip !63
  %168 = icmp ne i64 %167, 0, !mcsema_real_eip !63
  store i1 %168, i1* %AF_val, !mcsema_real_eip !63
  %169 = icmp slt i64 %164, 0
  store i1 %169, i1* %SF_val, !mcsema_real_eip !63
  %170 = icmp eq i64 %164, 0, !mcsema_real_eip !63
  store i1 %170, i1* %ZF_val, !mcsema_real_eip !63
  %171 = xor i64 %163, -9223372036854775808, !mcsema_real_eip !63
  %172 = xor i64 %171, %162, !mcsema_real_eip !63
  %173 = and i64 %165, %172, !mcsema_real_eip !63
  %174 = icmp slt i64 %173, 0
  store i1 %174, i1* %OF_val, !mcsema_real_eip !63
  %175 = trunc i64 %164 to i8, !mcsema_real_eip !63
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !63
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF_val, !mcsema_real_eip !63
  %179 = extractvalue { i64, i1 } %uadd349, 1
  store i1 %179, i1* %CF_val, !mcsema_real_eip !63
  store i64 %164, i64* %RAX_val, !mcsema_real_eip !63
  %180 = load i64, i64* %RCX_val, !mcsema_real_eip !64
  %181 = add i64 %180, %164, !mcsema_real_eip !64
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !64
  %183 = bitcast i64* %182 to i8*
  %184 = load i8, i8* %183, !mcsema_real_eip !64
  %185 = sext i8 %184 to i32, !mcsema_real_eip !64
  %186 = zext i32 %185 to i64, !mcsema_real_eip !64
  store i64 %186, i64* %RSI_val, !mcsema_real_eip !64
  %187 = add nsw i32 %185, -32
  %188 = xor i32 %187, %185, !mcsema_real_eip !65
  %189 = and i32 %188, 16, !mcsema_real_eip !65
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !65
  store i1 %190, i1* %AF_val, !mcsema_real_eip !65
  %191 = trunc i32 %187 to i8, !mcsema_real_eip !65
  %192 = tail call i8 @llvm.ctpop.i8(i8 %191), !mcsema_real_eip !65
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  store i1 %194, i1* %PF_val, !mcsema_real_eip !65
  %195 = icmp eq i32 %187, 0, !mcsema_real_eip !65
  store i1 %195, i1* %ZF_val, !mcsema_real_eip !65
  %196 = icmp slt i32 %187, 0
  store i1 %196, i1* %SF_val, !mcsema_real_eip !65
  %197 = icmp ult i8 %184, 32
  store i1 %197, i1* %CF_val, !mcsema_real_eip !65
  %198 = and i32 %188, %185, !mcsema_real_eip !65
  %199 = icmp slt i32 %198, 0
  store i1 %199, i1* %OF_val, !mcsema_real_eip !65
  %200 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  br i1 %200, label %block_0x242, label %block_0x1f2, !mcsema_real_eip !66

block_0x1c0:                                      ; preds = %entry
  %201 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %202 = add i64 %201, -4, !mcsema_real_eip !67
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !67
  %204 = bitcast i64* %203 to i32*
  store i32 0, i32* %204, !mcsema_real_eip !67
  br label %block_0x298, !mcsema_real_eip !68

block_0x298:                                      ; preds = %block_0x18e, %block_0x25a, %block_0x1c0
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %206 = add i64 %205, -4, !mcsema_real_eip !28
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !28
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %208, !mcsema_real_eip !28
  %210 = zext i32 %209 to i64, !mcsema_real_eip !28
  store i64 %210, i64* %RAX_val, !mcsema_real_eip !28
  %211 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 96)
  %212 = extractvalue { i64, i1 } %uadd348, 0
  %213 = xor i64 %212, %211, !mcsema_real_eip !29
  %214 = and i64 %213, 16, !mcsema_real_eip !29
  %215 = icmp ne i64 %214, 0, !mcsema_real_eip !29
  store i1 %215, i1* %AF_val, !mcsema_real_eip !29
  %216 = icmp slt i64 %212, 0
  store i1 %216, i1* %SF_val, !mcsema_real_eip !29
  %217 = icmp eq i64 %212, 0, !mcsema_real_eip !29
  store i1 %217, i1* %ZF_val, !mcsema_real_eip !29
  %218 = xor i64 %211, -9223372036854775808, !mcsema_real_eip !29
  %219 = and i64 %213, %218, !mcsema_real_eip !29
  %220 = icmp slt i64 %219, 0
  store i1 %220, i1* %OF_val, !mcsema_real_eip !29
  %221 = trunc i64 %212 to i8, !mcsema_real_eip !29
  %222 = tail call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !29
  %223 = and i8 %222, 1
  %224 = icmp eq i8 %223, 0
  store i1 %224, i1* %PF_val, !mcsema_real_eip !29
  %225 = extractvalue { i64, i1 } %uadd348, 1
  store i1 %225, i1* %CF_val, !mcsema_real_eip !29
  store i64 %212, i64* %RSP_val, !mcsema_real_eip !29
  %226 = inttoptr i64 %212 to i64*, !mcsema_real_eip !30
  %227 = load i64, i64* %226, !mcsema_real_eip !30
  store i64 %227, i64* %RBP_val, !mcsema_real_eip !30
  %228 = add i64 %212, 16, !mcsema_real_eip !31
  store i64 %228, i64* %RSP_val, !mcsema_real_eip !31
  %229 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %229, i64* %RAX, !mcsema_real_eip !31
  %230 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %230, i64* %RBX, !mcsema_real_eip !31
  %231 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %231, i64* %RCX, !mcsema_real_eip !31
  %232 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %232, i64* %RDX, !mcsema_real_eip !31
  %233 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %233, i64* %RSI, !mcsema_real_eip !31
  %234 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %234, i64* %RDI, !mcsema_real_eip !31
  %235 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %235, i64* %RSP, !mcsema_real_eip !31
  %236 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %236, i64* %RBP, !mcsema_real_eip !31
  %237 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %237, i64* %R8, !mcsema_real_eip !31
  %238 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %238, i64* %R9, !mcsema_real_eip !31
  %239 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %239, i64* %R10, !mcsema_real_eip !31
  %240 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %240, i64* %R11, !mcsema_real_eip !31
  %241 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %241, i64* %R12, !mcsema_real_eip !31
  %242 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %242, i64* %R13, !mcsema_real_eip !31
  %243 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %243, i64* %R14, !mcsema_real_eip !31
  %244 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %244, i64* %R15, !mcsema_real_eip !31
  %245 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %245, i64* %RIP, !mcsema_real_eip !31
  %246 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %246, i1* %CF, align 1, !mcsema_real_eip !31
  %247 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %247, i1* %PF, align 1, !mcsema_real_eip !31
  %248 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %248, i1* %AF, align 1, !mcsema_real_eip !31
  %249 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %249, i1* %ZF, align 1, !mcsema_real_eip !31
  %250 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %250, i1* %SF, align 1, !mcsema_real_eip !31
  %251 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %251, i1* %OF, align 1, !mcsema_real_eip !31
  %252 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %252, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %253 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %253, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %254 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %254, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %255 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %255, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %256 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %256, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %257 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %257, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %258 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %258, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %259 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %259, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %260 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %260, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %261 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %261, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %262 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %262, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %263 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %263, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %264 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %264, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %265 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %265, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %266 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %266, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %267 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %267, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %268 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %268, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %269 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %269, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %270 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %270, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %271 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %271, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %272 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %272, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %273 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %273, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %274 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %274, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %275 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %275, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %276 = load i64, i64* %53, align 4
  store i64 %276, i64* %52, align 4
  %277 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %277, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %278 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %278, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %279 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %279, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %280 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %280, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %281 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %281, i128* %XMM0, align 1, !mcsema_real_eip !31
  %282 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %282, i128* %XMM1, align 1, !mcsema_real_eip !31
  %283 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %283, i128* %XMM2, align 1, !mcsema_real_eip !31
  %284 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %284, i128* %XMM3, align 1, !mcsema_real_eip !31
  %285 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %285, i128* %XMM4, align 1, !mcsema_real_eip !31
  %286 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %286, i128* %XMM5, align 1, !mcsema_real_eip !31
  %287 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %287, i128* %XMM6, align 1, !mcsema_real_eip !31
  %288 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %288, i128* %XMM7, align 1, !mcsema_real_eip !31
  %289 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %289, i128* %XMM8, align 1, !mcsema_real_eip !31
  %290 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %290, i128* %XMM9, align 1, !mcsema_real_eip !31
  %291 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %291, i128* %XMM10, align 1, !mcsema_real_eip !31
  %292 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %292, i128* %XMM11, align 1, !mcsema_real_eip !31
  %293 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %293, i128* %XMM12, align 1, !mcsema_real_eip !31
  %294 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %294, i128* %XMM13, align 1, !mcsema_real_eip !31
  %295 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %295, i128* %XMM14, align 1, !mcsema_real_eip !31
  %296 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %296, i128* %XMM15, align 1, !mcsema_real_eip !31
  %297 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %297, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %298 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %298, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x242:                                      ; preds = %block_0x22c, %block_0x1cc
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %300 = add i64 %299, -28, !mcsema_real_eip !69
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !69
  %302 = bitcast i64* %301 to i32*
  %303 = load i32, i32* %302, !mcsema_real_eip !69
  %304 = zext i32 %303 to i64, !mcsema_real_eip !69
  store i64 %304, i64* %RAX_val, !mcsema_real_eip !69
  %305 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %306 = add i64 %305, -20, !mcsema_real_eip !70
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !70
  %308 = bitcast i64* %307 to i32*
  %309 = load i32, i32* %308, !mcsema_real_eip !70
  %310 = sub i32 %303, %309, !mcsema_real_eip !70
  %311 = xor i32 %310, %303, !mcsema_real_eip !70
  %312 = xor i32 %311, %309, !mcsema_real_eip !70
  %313 = and i32 %312, 16, !mcsema_real_eip !70
  %314 = icmp ne i32 %313, 0, !mcsema_real_eip !70
  store i1 %314, i1* %AF_val, !mcsema_real_eip !70
  %315 = trunc i32 %310 to i8, !mcsema_real_eip !70
  %316 = tail call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !70
  %317 = and i8 %316, 1
  %318 = icmp eq i8 %317, 0
  store i1 %318, i1* %PF_val, !mcsema_real_eip !70
  %319 = icmp eq i32 %303, %309
  store i1 %319, i1* %ZF_val, !mcsema_real_eip !70
  %320 = icmp slt i32 %310, 0
  store i1 %320, i1* %SF_val, !mcsema_real_eip !70
  %321 = icmp ult i32 %303, %309, !mcsema_real_eip !70
  store i1 %321, i1* %CF_val, !mcsema_real_eip !70
  %322 = xor i32 %309, %303, !mcsema_real_eip !70
  %323 = and i32 %311, %322, !mcsema_real_eip !70
  %324 = icmp slt i32 %323, 0
  store i1 %324, i1* %OF_val, !mcsema_real_eip !70
  %325 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %325, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1f2:                                      ; preds = %block_0x1cc
  %326 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %327 = add i64 %326, -24, !mcsema_real_eip !72
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !72
  %329 = bitcast i64* %328 to i32*
  %330 = load i32, i32* %329, !mcsema_real_eip !72
  %331 = add i32 %330, -2
  %332 = xor i32 %331, %330, !mcsema_real_eip !72
  %333 = and i32 %332, 16, !mcsema_real_eip !72
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !72
  store i1 %334, i1* %AF_val, !mcsema_real_eip !72
  %335 = trunc i32 %331 to i8, !mcsema_real_eip !72
  %336 = tail call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !72
  %337 = and i8 %336, 1
  %338 = icmp eq i8 %337, 0
  store i1 %338, i1* %PF_val, !mcsema_real_eip !72
  %339 = icmp eq i32 %331, 0, !mcsema_real_eip !72
  store i1 %339, i1* %ZF_val, !mcsema_real_eip !72
  %340 = icmp slt i32 %331, 0
  store i1 %340, i1* %SF_val, !mcsema_real_eip !72
  %341 = icmp ult i32 %330, 2, !mcsema_real_eip !72
  store i1 %341, i1* %CF_val, !mcsema_real_eip !72
  %342 = and i32 %332, %330, !mcsema_real_eip !72
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF_val, !mcsema_real_eip !72
  %344 = load i1, i1* %ZF_val, !mcsema_real_eip !73
  br i1 %344, label %block_0x1fc, label %block_0x236, !mcsema_real_eip !73

block_0x236:                                      ; preds = %block_0x22c, %block_0x222, %block_0x1fc, %block_0x1f2
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %346 = add i64 %345, -28, !mcsema_real_eip !74
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !74
  %348 = bitcast i64* %347 to i32*
  %349 = load i32, i32* %348, !mcsema_real_eip !74
  %350 = zext i32 %349 to i64, !mcsema_real_eip !74
  store i64 %350, i64* %RAX_val, !mcsema_real_eip !74
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %352 = add i64 %351, -20, !mcsema_real_eip !75
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !75
  %354 = bitcast i64* %353 to i32*
  store i32 %349, i32* %354, !mcsema_real_eip !75
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %356 = add i64 %355, -32, !mcsema_real_eip !76
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !76
  %358 = bitcast i64* %357 to i32*
  %359 = load i32, i32* %358, !mcsema_real_eip !76
  %360 = zext i32 %359 to i64, !mcsema_real_eip !76
  store i64 %360, i64* %RAX_val, !mcsema_real_eip !76
  %361 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %362 = add i64 %361, -24, !mcsema_real_eip !77
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !77
  %364 = bitcast i64* %363 to i32*
  store i32 %359, i32* %364, !mcsema_real_eip !77
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %366 = add i64 %365, -28, !mcsema_real_eip !69
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !69
  %368 = bitcast i64* %367 to i32*
  %369 = load i32, i32* %368, !mcsema_real_eip !69
  %370 = zext i32 %369 to i64, !mcsema_real_eip !69
  store i64 %370, i64* %RAX_val, !mcsema_real_eip !69
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %372 = add i64 %371, -20, !mcsema_real_eip !70
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !70
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !70
  %376 = sub i32 %369, %375, !mcsema_real_eip !70
  %377 = xor i32 %376, %369, !mcsema_real_eip !70
  %378 = xor i32 %377, %375, !mcsema_real_eip !70
  %379 = and i32 %378, 16, !mcsema_real_eip !70
  %380 = icmp ne i32 %379, 0, !mcsema_real_eip !70
  store i1 %380, i1* %AF_val, !mcsema_real_eip !70
  %381 = trunc i32 %376 to i8, !mcsema_real_eip !70
  %382 = tail call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !70
  %383 = and i8 %382, 1
  %384 = icmp eq i8 %383, 0
  store i1 %384, i1* %PF_val, !mcsema_real_eip !70
  %385 = icmp eq i32 %369, %375
  store i1 %385, i1* %ZF_val, !mcsema_real_eip !70
  %386 = icmp slt i32 %376, 0
  store i1 %386, i1* %SF_val, !mcsema_real_eip !70
  %387 = icmp ult i32 %369, %375, !mcsema_real_eip !70
  store i1 %387, i1* %CF_val, !mcsema_real_eip !70
  %388 = xor i32 %375, %369, !mcsema_real_eip !70
  %389 = and i32 %377, %388, !mcsema_real_eip !70
  %390 = icmp slt i32 %389, 0
  store i1 %390, i1* %OF_val, !mcsema_real_eip !70
  %391 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %391, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1fc:                                      ; preds = %block_0x1f2
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !78
  %392 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %393 = add i64 %392, -20, !mcsema_real_eip !79
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !79
  %395 = bitcast i64* %394 to i32*
  %396 = load i32, i32* %395, !mcsema_real_eip !79
  %397 = sext i32 %396 to i64, !mcsema_real_eip !79
  store i64 %397, i64* %RCX_val, !mcsema_real_eip !79
  %398 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %399 = add i64 %398, -24, !mcsema_real_eip !80
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !80
  %401 = bitcast i64* %400 to i32*
  %402 = load i32, i32* %401, !mcsema_real_eip !80
  %403 = sext i32 %402 to i64, !mcsema_real_eip !80
  %404 = mul i64 %403, 11, !mcsema_real_eip !81
  store i64 %404, i64* %RDX_val, !mcsema_real_eip !81
  %405 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %404, i64 %405)
  %406 = extractvalue { i64, i1 } %uadd350, 0
  %407 = xor i64 %406, %405, !mcsema_real_eip !82
  %408 = xor i64 %407, %404, !mcsema_real_eip !82
  %409 = and i64 %408, 16, !mcsema_real_eip !82
  %410 = icmp ne i64 %409, 0, !mcsema_real_eip !82
  store i1 %410, i1* %AF_val, !mcsema_real_eip !82
  %411 = icmp slt i64 %406, 0
  store i1 %411, i1* %SF_val, !mcsema_real_eip !82
  %412 = icmp eq i64 %406, 0, !mcsema_real_eip !82
  store i1 %412, i1* %ZF_val, !mcsema_real_eip !82
  %413 = xor i64 %405, -9223372036854775808, !mcsema_real_eip !82
  %414 = xor i64 %413, %404, !mcsema_real_eip !82
  %415 = and i64 %407, %414, !mcsema_real_eip !82
  %416 = icmp slt i64 %415, 0
  store i1 %416, i1* %OF_val, !mcsema_real_eip !82
  %417 = trunc i64 %406 to i8, !mcsema_real_eip !82
  %418 = tail call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !82
  %419 = and i8 %418, 1
  %420 = icmp eq i8 %419, 0
  store i1 %420, i1* %PF_val, !mcsema_real_eip !82
  %421 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %421, i1* %CF_val, !mcsema_real_eip !82
  store i64 %406, i64* %RAX_val, !mcsema_real_eip !82
  %422 = load i64, i64* %RCX_val, !mcsema_real_eip !83
  %423 = add i64 %422, %406, !mcsema_real_eip !83
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !83
  %425 = bitcast i64* %424 to i8*
  %426 = load i8, i8* %425, !mcsema_real_eip !83
  %427 = sext i8 %426 to i32, !mcsema_real_eip !83
  %428 = zext i32 %427 to i64, !mcsema_real_eip !83
  store i64 %428, i64* %RSI_val, !mcsema_real_eip !83
  %429 = add nsw i32 %427, -124
  %430 = xor i32 %429, %427, !mcsema_real_eip !84
  %431 = and i32 %430, 16
  %432 = icmp eq i32 %431, 0
  store i1 %432, i1* %AF_val, !mcsema_real_eip !84
  %433 = trunc i32 %429 to i8, !mcsema_real_eip !84
  %434 = tail call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !84
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  store i1 %436, i1* %PF_val, !mcsema_real_eip !84
  %437 = icmp eq i32 %429, 0, !mcsema_real_eip !84
  store i1 %437, i1* %ZF_val, !mcsema_real_eip !84
  %438 = icmp slt i32 %429, 0
  store i1 %438, i1* %SF_val, !mcsema_real_eip !84
  %439 = icmp ult i8 %426, 124
  store i1 %439, i1* %CF_val, !mcsema_real_eip !84
  %440 = and i32 %430, %427, !mcsema_real_eip !84
  %441 = icmp slt i32 %440, 0
  store i1 %441, i1* %OF_val, !mcsema_real_eip !84
  %442 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  br i1 %442, label %block_0x222, label %block_0x236, !mcsema_real_eip !85

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !86
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %444 = add i64 %443, -20, !mcsema_real_eip !87
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !87
  %446 = bitcast i64* %445 to i32*
  %447 = load i32, i32* %446, !mcsema_real_eip !87
  %448 = sext i32 %447 to i64, !mcsema_real_eip !87
  store i64 %448, i64* %RCX_val, !mcsema_real_eip !87
  %449 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %450 = add i64 %449, -24, !mcsema_real_eip !88
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !88
  %452 = bitcast i64* %451 to i32*
  %453 = load i32, i32* %452, !mcsema_real_eip !88
  %454 = sext i32 %453 to i64, !mcsema_real_eip !88
  %455 = mul i64 %454, 11, !mcsema_real_eip !89
  store i64 %455, i64* %RDX_val, !mcsema_real_eip !89
  %456 = load i64, i64* %RAX_val, !mcsema_real_eip !90
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %455, i64 %456)
  %457 = extractvalue { i64, i1 } %uadd352, 0
  %458 = xor i64 %457, %456, !mcsema_real_eip !90
  %459 = xor i64 %458, %455, !mcsema_real_eip !90
  %460 = and i64 %459, 16, !mcsema_real_eip !90
  %461 = icmp ne i64 %460, 0, !mcsema_real_eip !90
  store i1 %461, i1* %AF_val, !mcsema_real_eip !90
  %462 = icmp slt i64 %457, 0
  store i1 %462, i1* %SF_val, !mcsema_real_eip !90
  %463 = icmp eq i64 %457, 0, !mcsema_real_eip !90
  store i1 %463, i1* %ZF_val, !mcsema_real_eip !90
  %464 = xor i64 %456, -9223372036854775808, !mcsema_real_eip !90
  %465 = xor i64 %464, %455, !mcsema_real_eip !90
  %466 = and i64 %458, %465, !mcsema_real_eip !90
  %467 = icmp slt i64 %466, 0
  store i1 %467, i1* %OF_val, !mcsema_real_eip !90
  %468 = trunc i64 %457 to i8, !mcsema_real_eip !90
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !90
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF_val, !mcsema_real_eip !90
  %472 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %472, i1* %CF_val, !mcsema_real_eip !90
  store i64 %457, i64* %RAX_val, !mcsema_real_eip !90
  %473 = load i64, i64* %RCX_val, !mcsema_real_eip !91
  %474 = add i64 %473, %457, !mcsema_real_eip !91
  %475 = inttoptr i64 %474 to i64*, !mcsema_real_eip !91
  %476 = bitcast i64* %475 to i8*
  store i8 88, i8* %476, !mcsema_real_eip !91
  %477 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %478 = add i64 %477, -36, !mcsema_real_eip !92
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !92
  %480 = bitcast i64* %479 to i32*
  %481 = load i32, i32* %480, !mcsema_real_eip !92
  %uadd353 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %481, i32 1)
  %482 = extractvalue { i32, i1 } %uadd353, 0
  %483 = xor i32 %482, %481, !mcsema_real_eip !93
  %484 = and i32 %483, 16, !mcsema_real_eip !93
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !93
  store i1 %485, i1* %AF_val, !mcsema_real_eip !93
  %486 = icmp slt i32 %482, 0
  store i1 %486, i1* %SF_val, !mcsema_real_eip !93
  %487 = icmp eq i32 %482, 0, !mcsema_real_eip !93
  store i1 %487, i1* %ZF_val, !mcsema_real_eip !93
  %488 = xor i32 %481, -2147483648, !mcsema_real_eip !93
  %489 = and i32 %483, %488, !mcsema_real_eip !93
  %490 = icmp slt i32 %489, 0
  store i1 %490, i1* %OF_val, !mcsema_real_eip !93
  %491 = trunc i32 %482 to i8, !mcsema_real_eip !93
  %492 = tail call i8 @llvm.ctpop.i8(i8 %491), !mcsema_real_eip !93
  %493 = and i8 %492, 1
  %494 = icmp eq i8 %493, 0
  store i1 %494, i1* %PF_val, !mcsema_real_eip !93
  %495 = extractvalue { i32, i1 } %uadd353, 1
  store i1 %495, i1* %CF_val, !mcsema_real_eip !93
  %496 = zext i32 %482 to i64, !mcsema_real_eip !93
  store i64 %496, i64* %RSI_val, !mcsema_real_eip !93
  %497 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %498 = add i64 %497, -36, !mcsema_real_eip !94
  %499 = inttoptr i64 %498 to i64*, !mcsema_real_eip !94
  %500 = bitcast i64* %499 to i32*
  store i32 %482, i32* %500, !mcsema_real_eip !94
  %501 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %502 = add i64 %501, -36, !mcsema_real_eip !25
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !25
  %504 = bitcast i64* %503 to i32*
  %505 = load i32, i32* %504, !mcsema_real_eip !25
  %506 = add i32 %505, -28
  %507 = xor i32 %506, %505, !mcsema_real_eip !25
  %508 = and i32 %507, 16
  %509 = icmp eq i32 %508, 0
  store i1 %509, i1* %AF_val, !mcsema_real_eip !25
  %510 = trunc i32 %506 to i8, !mcsema_real_eip !25
  %511 = tail call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !25
  %512 = and i8 %511, 1
  %513 = icmp eq i8 %512, 0
  store i1 %513, i1* %PF_val, !mcsema_real_eip !25
  %514 = icmp eq i32 %506, 0, !mcsema_real_eip !25
  store i1 %514, i1* %ZF_val, !mcsema_real_eip !25
  %515 = icmp slt i32 %506, 0
  store i1 %515, i1* %SF_val, !mcsema_real_eip !25
  %516 = icmp ult i32 %505, 28, !mcsema_real_eip !25
  store i1 %516, i1* %CF_val, !mcsema_real_eip !25
  %517 = and i32 %507, %505, !mcsema_real_eip !25
  %518 = icmp slt i32 %517, 0
  store i1 %518, i1* %OF_val, !mcsema_real_eip !25
  %tmp = xor i1 %515, %518
  %519 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !27

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %520 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %521 = add i64 %520, -32, !mcsema_real_eip !95
  %522 = inttoptr i64 %521 to i64*, !mcsema_real_eip !95
  %523 = bitcast i64* %522 to i32*
  %524 = load i32, i32* %523, !mcsema_real_eip !95
  %525 = zext i32 %524 to i64, !mcsema_real_eip !95
  store i64 %525, i64* %RAX_val, !mcsema_real_eip !95
  %526 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %527 = add i64 %526, -24, !mcsema_real_eip !96
  %528 = inttoptr i64 %527 to i64*, !mcsema_real_eip !96
  %529 = bitcast i64* %528 to i32*
  %530 = load i32, i32* %529, !mcsema_real_eip !96
  %531 = sub i32 %524, %530, !mcsema_real_eip !96
  %532 = xor i32 %531, %524, !mcsema_real_eip !96
  %533 = xor i32 %532, %530, !mcsema_real_eip !96
  %534 = and i32 %533, 16, !mcsema_real_eip !96
  %535 = icmp ne i32 %534, 0, !mcsema_real_eip !96
  store i1 %535, i1* %AF_val, !mcsema_real_eip !96
  %536 = trunc i32 %531 to i8, !mcsema_real_eip !96
  %537 = tail call i8 @llvm.ctpop.i8(i8 %536), !mcsema_real_eip !96
  %538 = and i8 %537, 1
  %539 = icmp eq i8 %538, 0
  store i1 %539, i1* %PF_val, !mcsema_real_eip !96
  %540 = icmp eq i32 %524, %530
  store i1 %540, i1* %ZF_val, !mcsema_real_eip !96
  %541 = icmp slt i32 %531, 0
  store i1 %541, i1* %SF_val, !mcsema_real_eip !96
  %542 = icmp ult i32 %524, %530, !mcsema_real_eip !96
  store i1 %542, i1* %CF_val, !mcsema_real_eip !96
  %543 = xor i32 %530, %524, !mcsema_real_eip !96
  %544 = and i32 %532, %543, !mcsema_real_eip !96
  %545 = icmp slt i32 %544, 0
  store i1 %545, i1* %OF_val, !mcsema_real_eip !96
  %546 = load i1, i1* %ZF_val, !mcsema_real_eip !97
  br i1 %546, label %block_0x25a, label %block_0x266, !mcsema_real_eip !97

block_0x222:                                      ; preds = %block_0x1fc
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %548 = add i64 %547, -20, !mcsema_real_eip !98
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !98
  %550 = bitcast i64* %549 to i32*
  %551 = load i32, i32* %550, !mcsema_real_eip !98
  store i1 false, i1* %AF_val, !mcsema_real_eip !98
  %552 = trunc i32 %551 to i8, !mcsema_real_eip !98
  %553 = tail call i8 @llvm.ctpop.i8(i8 %552), !mcsema_real_eip !98
  %554 = and i8 %553, 1
  %555 = icmp eq i8 %554, 0
  store i1 %555, i1* %PF_val, !mcsema_real_eip !98
  %556 = icmp eq i32 %551, 0, !mcsema_real_eip !98
  store i1 %556, i1* %ZF_val, !mcsema_real_eip !98
  %557 = icmp slt i32 %551, 0
  store i1 %557, i1* %SF_val, !mcsema_real_eip !98
  store i1 false, i1* %CF_val, !mcsema_real_eip !98
  store i1 false, i1* %OF_val, !mcsema_real_eip !98
  %558 = icmp slt i32 %551, 1
  br i1 %558, label %block_0x236, label %block_0x22c, !mcsema_real_eip !99

block_0x25a:                                      ; preds = %block_0x24e
  %559 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %560 = add i64 %559, -4, !mcsema_real_eip !100
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !100
  %562 = bitcast i64* %561 to i32*
  store i32 2, i32* %562, !mcsema_real_eip !100
  br label %block_0x298, !mcsema_real_eip !101

block_0x22c:                                      ; preds = %block_0x222
  %563 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %564 = add i64 %563, -20, !mcsema_real_eip !102
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !102
  %566 = bitcast i64* %565 to i32*
  %567 = load i32, i32* %566, !mcsema_real_eip !102
  %568 = add i32 %567, -11
  %569 = xor i32 %568, %567, !mcsema_real_eip !102
  %570 = and i32 %569, 16, !mcsema_real_eip !102
  %571 = icmp ne i32 %570, 0, !mcsema_real_eip !102
  store i1 %571, i1* %AF_val, !mcsema_real_eip !102
  %572 = trunc i32 %568 to i8, !mcsema_real_eip !102
  %573 = tail call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !102
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  store i1 %575, i1* %PF_val, !mcsema_real_eip !102
  %576 = icmp eq i32 %568, 0, !mcsema_real_eip !102
  store i1 %576, i1* %ZF_val, !mcsema_real_eip !102
  %577 = icmp slt i32 %568, 0
  store i1 %577, i1* %SF_val, !mcsema_real_eip !102
  %578 = icmp ult i32 %567, 11, !mcsema_real_eip !102
  store i1 %578, i1* %CF_val, !mcsema_real_eip !102
  %579 = and i32 %569, %567, !mcsema_real_eip !102
  %580 = icmp slt i32 %579, 0
  store i1 %580, i1* %OF_val, !mcsema_real_eip !102
  %581 = xor i1 %577, %580
  br i1 %581, label %block_0x242, label %block_0x236, !mcsema_real_eip !103

block_0x291:                                      ; preds = %block_0x266
  %582 = add i64 %519, -4, !mcsema_real_eip !26
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !26
  %584 = bitcast i64* %583 to i32*
  store i32 1, i32* %584, !mcsema_real_eip !26
  %585 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %586 = add i64 %585, -4, !mcsema_real_eip !28
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !28
  %588 = bitcast i64* %587 to i32*
  %589 = load i32, i32* %588, !mcsema_real_eip !28
  %590 = zext i32 %589 to i64, !mcsema_real_eip !28
  store i64 %590, i64* %RAX_val, !mcsema_real_eip !28
  %591 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %591, i64 96)
  %592 = extractvalue { i64, i1 } %uadd357, 0
  %593 = xor i64 %592, %591, !mcsema_real_eip !29
  %594 = and i64 %593, 16, !mcsema_real_eip !29
  %595 = icmp ne i64 %594, 0, !mcsema_real_eip !29
  store i1 %595, i1* %AF_val, !mcsema_real_eip !29
  %596 = icmp slt i64 %592, 0
  store i1 %596, i1* %SF_val, !mcsema_real_eip !29
  %597 = icmp eq i64 %592, 0, !mcsema_real_eip !29
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !29
  %598 = xor i64 %591, -9223372036854775808, !mcsema_real_eip !29
  %599 = and i64 %593, %598, !mcsema_real_eip !29
  %600 = icmp slt i64 %599, 0
  store i1 %600, i1* %OF_val, !mcsema_real_eip !29
  %601 = trunc i64 %592 to i8, !mcsema_real_eip !29
  %602 = tail call i8 @llvm.ctpop.i8(i8 %601), !mcsema_real_eip !29
  %603 = and i8 %602, 1
  %604 = icmp eq i8 %603, 0
  store i1 %604, i1* %PF_val, !mcsema_real_eip !29
  %605 = extractvalue { i64, i1 } %uadd357, 1
  store i1 %605, i1* %CF_val, !mcsema_real_eip !29
  store i64 %592, i64* %RSP_val, !mcsema_real_eip !29
  %606 = inttoptr i64 %592 to i64*, !mcsema_real_eip !30
  %607 = load i64, i64* %606, !mcsema_real_eip !30
  store i64 %607, i64* %RBP_val, !mcsema_real_eip !30
  %608 = add i64 %592, 16, !mcsema_real_eip !31
  store i64 %608, i64* %RSP_val, !mcsema_real_eip !31
  %609 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %609, i64* %RAX, !mcsema_real_eip !31
  %610 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %610, i64* %RBX, !mcsema_real_eip !31
  %611 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %611, i64* %RCX, !mcsema_real_eip !31
  %612 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %612, i64* %RDX, !mcsema_real_eip !31
  %613 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %613, i64* %RSI, !mcsema_real_eip !31
  %614 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %614, i64* %RDI, !mcsema_real_eip !31
  %615 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %615, i64* %RSP, !mcsema_real_eip !31
  %616 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %616, i64* %RBP, !mcsema_real_eip !31
  %617 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %617, i64* %R8, !mcsema_real_eip !31
  %618 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %618, i64* %R9, !mcsema_real_eip !31
  %619 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %619, i64* %R10, !mcsema_real_eip !31
  %620 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %620, i64* %R11, !mcsema_real_eip !31
  %621 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %621, i64* %R12, !mcsema_real_eip !31
  %622 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %622, i64* %R13, !mcsema_real_eip !31
  %623 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %623, i64* %R14, !mcsema_real_eip !31
  %624 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %624, i64* %R15, !mcsema_real_eip !31
  %625 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %625, i64* %RIP, !mcsema_real_eip !31
  %626 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %626, i1* %CF, align 1, !mcsema_real_eip !31
  %627 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %627, i1* %PF, align 1, !mcsema_real_eip !31
  %628 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %628, i1* %AF, align 1, !mcsema_real_eip !31
  %629 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %629, i1* %ZF, align 1, !mcsema_real_eip !31
  %630 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %630, i1* %SF, align 1, !mcsema_real_eip !31
  %631 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %631, i1* %OF, align 1, !mcsema_real_eip !31
  %632 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %632, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %633 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %633, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %634 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %634, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %635 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %635, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %636 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %636, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %637 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %637, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %638 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %638, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %639 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %639, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %640 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %640, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %641 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %641, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %642 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %642, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %643 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %643, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %644 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %644, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %645 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %645, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %646 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %646, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %647 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %647, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %648 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %648, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %649 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %649, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %650 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %650, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %651 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %651, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %652 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %652, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %653 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %653, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %654 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %654, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %655 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %655, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %656 = load i64, i64* %53, align 4
  store i64 %656, i64* %52, align 4
  %657 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %657, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %658 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %658, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %659 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %659, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %660 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %660, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %661 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %661, i128* %XMM0, align 1, !mcsema_real_eip !31
  %662 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %662, i128* %XMM1, align 1, !mcsema_real_eip !31
  %663 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %663, i128* %XMM2, align 1, !mcsema_real_eip !31
  %664 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %664, i128* %XMM3, align 1, !mcsema_real_eip !31
  %665 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %665, i128* %XMM4, align 1, !mcsema_real_eip !31
  %666 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %666, i128* %XMM5, align 1, !mcsema_real_eip !31
  %667 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %667, i128* %XMM6, align 1, !mcsema_real_eip !31
  %668 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %668, i128* %XMM7, align 1, !mcsema_real_eip !31
  %669 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %669, i128* %XMM8, align 1, !mcsema_real_eip !31
  %670 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %670, i128* %XMM9, align 1, !mcsema_real_eip !31
  %671 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %671, i128* %XMM10, align 1, !mcsema_real_eip !31
  %672 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %672, i128* %XMM11, align 1, !mcsema_real_eip !31
  %673 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %673, i128* %XMM12, align 1, !mcsema_real_eip !31
  %674 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %674, i128* %XMM13, align 1, !mcsema_real_eip !31
  %675 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %675, i128* %XMM14, align 1, !mcsema_real_eip !31
  %676 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %676, i128* %XMM15, align 1, !mcsema_real_eip !31
  %677 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %677, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %678 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %678, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x11e:                                      ; preds = %block_0x266
  %679 = add i64 %519, -20, !mcsema_real_eip !32
  %680 = inttoptr i64 %679 to i64*, !mcsema_real_eip !32
  %681 = bitcast i64* %680 to i32*
  %682 = load i32, i32* %681, !mcsema_real_eip !32
  %683 = zext i32 %682 to i64, !mcsema_real_eip !32
  store i64 %683, i64* %RAX_val, !mcsema_real_eip !32
  %684 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %685 = add i64 %684, -28, !mcsema_real_eip !33
  %686 = inttoptr i64 %685 to i64*, !mcsema_real_eip !33
  %687 = bitcast i64* %686 to i32*
  store i32 %682, i32* %687, !mcsema_real_eip !33
  %688 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %689 = add i64 %688, -24, !mcsema_real_eip !34
  %690 = inttoptr i64 %689 to i64*, !mcsema_real_eip !34
  %691 = bitcast i64* %690 to i32*
  %692 = load i32, i32* %691, !mcsema_real_eip !34
  %693 = zext i32 %692 to i64, !mcsema_real_eip !34
  store i64 %693, i64* %RAX_val, !mcsema_real_eip !34
  %694 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %695 = add i64 %694, -32, !mcsema_real_eip !35
  %696 = inttoptr i64 %695 to i64*, !mcsema_real_eip !35
  %697 = bitcast i64* %696 to i32*
  store i32 %692, i32* %697, !mcsema_real_eip !35
  %698 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %699 = add i64 %698, -36, !mcsema_real_eip !36
  %700 = inttoptr i64 %699 to i64*, !mcsema_real_eip !36
  %701 = bitcast i64* %700 to i32*
  %702 = load i32, i32* %701, !mcsema_real_eip !36
  %703 = sext i32 %702 to i64, !mcsema_real_eip !36
  store i64 %703, i64* %RCX_val, !mcsema_real_eip !36
  %704 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %705 = add i64 %704, -64, !mcsema_real_eip !37
  %706 = add i64 %705, %703, !mcsema_real_eip !37
  %707 = inttoptr i64 %706 to i64*, !mcsema_real_eip !37
  %708 = bitcast i64* %707 to i8*
  %709 = load i8, i8* %708, !mcsema_real_eip !37
  %710 = sext i8 %709 to i32, !mcsema_real_eip !37
  %711 = add nsw i32 %710, -97
  %712 = zext i32 %711 to i64, !mcsema_real_eip !38
  store i64 %712, i64* %RCX_val, !mcsema_real_eip !39
  %713 = add nsw i32 %710, -119
  %714 = xor i32 %713, %711, !mcsema_real_eip !40
  %715 = and i32 %714, 16
  %716 = icmp eq i32 %715, 0
  store i1 %716, i1* %AF_val, !mcsema_real_eip !40
  %717 = trunc i32 %713 to i8, !mcsema_real_eip !40
  %718 = tail call i8 @llvm.ctpop.i8(i8 %717), !mcsema_real_eip !40
  %719 = and i8 %718, 1
  %720 = icmp eq i8 %719, 0
  store i1 %720, i1* %PF_val, !mcsema_real_eip !40
  %721 = icmp eq i32 %713, 0, !mcsema_real_eip !40
  store i1 %721, i1* %ZF_val, !mcsema_real_eip !40
  %722 = icmp slt i32 %713, 0
  store i1 %722, i1* %SF_val, !mcsema_real_eip !40
  %723 = icmp ult i32 %711, 22, !mcsema_real_eip !40
  store i1 %723, i1* %CF_val, !mcsema_real_eip !40
  %724 = and i32 %714, %711, !mcsema_real_eip !40
  %725 = icmp slt i32 %724, 0
  store i1 %725, i1* %OF_val, !mcsema_real_eip !40
  %726 = zext i32 %713 to i64, !mcsema_real_eip !40
  store i64 %726, i64* %RAX_val, !mcsema_real_eip !40
  %727 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %728 = add i64 %727, -80, !mcsema_real_eip !41
  %729 = inttoptr i64 %728 to i64*, !mcsema_real_eip !41
  %730 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %730, i64* %729, !mcsema_real_eip !41
  %731 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %732 = add i64 %731, -84, !mcsema_real_eip !42
  %733 = inttoptr i64 %732 to i64*, !mcsema_real_eip !42
  %734 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %735 = trunc i64 %734 to i32, !mcsema_real_eip !42
  %736 = bitcast i64* %733 to i32*
  store i32 %735, i32* %736, !mcsema_real_eip !42
  %737 = load i1, i1* %ZF_val, !mcsema_real_eip !43
  %738 = load i1, i1* %CF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %738, %737
  %739 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !43

block_0x18e:                                      ; preds = %block_0x11e
  %740 = add i64 %739, -4, !mcsema_real_eip !44
  %741 = inttoptr i64 %740 to i64*, !mcsema_real_eip !44
  %742 = bitcast i64* %741 to i32*
  store i32 1, i32* %742, !mcsema_real_eip !44
  br label %block_0x298, !mcsema_real_eip !104

block_0x148:                                      ; preds = %block_0x11e
  %743 = add i64 %739, -80, !mcsema_real_eip !45
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !45
  %745 = load i64, i64* %744, !mcsema_real_eip !45
  store i64 %745, i64* %RAX_val, !mcsema_real_eip !45
  %746 = shl i64 %745, 3
  %747 = add i64 %746, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !46
  %748 = inttoptr i64 %747 to i64*, !mcsema_real_eip !46
  %749 = load i64, i64* %748, !mcsema_real_eip !46
  store i64 %749, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %745, i64* %RAX, !mcsema_real_eip !47
  %750 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %750, i64* %RBX, !mcsema_real_eip !47
  %751 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %751, i64* %RCX, !mcsema_real_eip !47
  %752 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %752, i64* %RDX, !mcsema_real_eip !47
  %753 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %753, i64* %RSI, !mcsema_real_eip !47
  %754 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %754, i64* %RDI, !mcsema_real_eip !47
  %755 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %755, i64* %RSP, !mcsema_real_eip !47
  %756 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %756, i64* %RBP, !mcsema_real_eip !47
  %757 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %757, i64* %R8, !mcsema_real_eip !47
  %758 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %758, i64* %R9, !mcsema_real_eip !47
  %759 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %759, i64* %R10, !mcsema_real_eip !47
  %760 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %760, i64* %R11, !mcsema_real_eip !47
  %761 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %761, i64* %R12, !mcsema_real_eip !47
  %762 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %762, i64* %R13, !mcsema_real_eip !47
  %763 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %763, i64* %R14, !mcsema_real_eip !47
  %764 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %764, i64* %R15, !mcsema_real_eip !47
  %765 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %765, i64* %RIP, !mcsema_real_eip !47
  %766 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %766, i1* %CF, align 1, !mcsema_real_eip !47
  %767 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %767, i1* %PF, align 1, !mcsema_real_eip !47
  %768 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %768, i1* %AF, align 1, !mcsema_real_eip !47
  %769 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %769, i1* %ZF, align 1, !mcsema_real_eip !47
  %770 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %770, i1* %SF, align 1, !mcsema_real_eip !47
  %771 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %771, i1* %OF, align 1, !mcsema_real_eip !47
  %772 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %772, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %773 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %773, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %774 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %774, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %775 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %775, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %776 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %776, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %777 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %777, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %778 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %778, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %779 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %779, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %780 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %780, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %781 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %781, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %782 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %782, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %783 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %783, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %784 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %784, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %785 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %785, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %786 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %786, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %787 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %787, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %788 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %788, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %789 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %789, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %790 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %790, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %791 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %791, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %792 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %792, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %793 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %793, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %794 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %794, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %795 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %795, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %796 = load i64, i64* %53, align 4
  store i64 %796, i64* %52, align 4
  %797 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %797, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %798 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %798, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %799 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %799, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %800 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %800, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %801 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %801, i128* %XMM0, align 1, !mcsema_real_eip !47
  %802 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %802, i128* %XMM1, align 1, !mcsema_real_eip !47
  %803 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %803, i128* %XMM2, align 1, !mcsema_real_eip !47
  %804 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %804, i128* %XMM3, align 1, !mcsema_real_eip !47
  %805 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %805, i128* %XMM4, align 1, !mcsema_real_eip !47
  %806 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %806, i128* %XMM5, align 1, !mcsema_real_eip !47
  %807 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %807, i128* %XMM6, align 1, !mcsema_real_eip !47
  %808 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %808, i128* %XMM7, align 1, !mcsema_real_eip !47
  %809 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %809, i128* %XMM8, align 1, !mcsema_real_eip !47
  %810 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %810, i128* %XMM9, align 1, !mcsema_real_eip !47
  %811 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %811, i128* %XMM10, align 1, !mcsema_real_eip !47
  %812 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %812, i128* %XMM11, align 1, !mcsema_real_eip !47
  %813 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %813, i128* %XMM12, align 1, !mcsema_real_eip !47
  %814 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %814, i128* %XMM13, align 1, !mcsema_real_eip !47
  %815 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %815, i128* %XMM14, align 1, !mcsema_real_eip !47
  %816 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %816, i128* %XMM15, align 1, !mcsema_real_eip !47
  %817 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %817, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %818 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %818, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  call void @do_call_value.2(%struct.regs* %0, i64 %749, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %819 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %819, i64* %RAX_val, !mcsema_real_eip !47
  %820 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %820, i64* %RBX_val, !mcsema_real_eip !47
  %821 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %821, i64* %RCX_val, !mcsema_real_eip !47
  %822 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %822, i64* %RDX_val, !mcsema_real_eip !47
  %823 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %823, i64* %RSI_val, !mcsema_real_eip !47
  %824 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %824, i64* %RDI_val, !mcsema_real_eip !47
  %825 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %825, i64* %RSP_val, !mcsema_real_eip !47
  %826 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %826, i64* %RBP_val, !mcsema_real_eip !47
  %827 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %827, i64* %R8_val, !mcsema_real_eip !47
  %828 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %828, i64* %R9_val, !mcsema_real_eip !47
  %829 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %829, i64* %R10_val, !mcsema_real_eip !47
  %830 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %830, i64* %R11_val, !mcsema_real_eip !47
  %831 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %831, i64* %R12_val, !mcsema_real_eip !47
  %832 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %832, i64* %R13_val, !mcsema_real_eip !47
  %833 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %833, i64* %R14_val, !mcsema_real_eip !47
  %834 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %834, i64* %R15_val, !mcsema_real_eip !47
  %835 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %835, i64* %RIP_val, !mcsema_real_eip !47
  %836 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %836, i1* %CF_val, !mcsema_real_eip !47
  %837 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %837, i1* %PF_val, !mcsema_real_eip !47
  %838 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %838, i1* %AF_val, !mcsema_real_eip !47
  %839 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %839, i1* %ZF_val, !mcsema_real_eip !47
  %840 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %840, i1* %SF_val, !mcsema_real_eip !47
  %841 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %841, i1* %OF_val, !mcsema_real_eip !47
  %842 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %842, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %843 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %843, i1* %FPU_B_val, !mcsema_real_eip !47
  %844 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %844, i1* %FPU_C3_val, !mcsema_real_eip !47
  %845 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %845, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %846 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %846, i1* %FPU_C2_val, !mcsema_real_eip !47
  %847 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %847, i1* %FPU_C1_val, !mcsema_real_eip !47
  %848 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %848, i1* %FPU_C0_val, !mcsema_real_eip !47
  %849 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %849, i1* %FPU_ES_val, !mcsema_real_eip !47
  %850 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %850, i1* %FPU_SF_val, !mcsema_real_eip !47
  %851 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %851, i1* %FPU_PE_val, !mcsema_real_eip !47
  %852 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %852, i1* %FPU_UE_val, !mcsema_real_eip !47
  %853 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %853, i1* %FPU_OE_val, !mcsema_real_eip !47
  %854 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %854, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %855 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %855, i1* %FPU_DE_val, !mcsema_real_eip !47
  %856 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %856, i1* %FPU_IE_val, !mcsema_real_eip !47
  %857 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %857, i1* %FPU_X_val, !mcsema_real_eip !47
  %858 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %858, i2* %FPU_RC_val, !mcsema_real_eip !47
  %859 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %859, i2* %FPU_PC_val, !mcsema_real_eip !47
  %860 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %860, i1* %FPU_PM_val, !mcsema_real_eip !47
  %861 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %861, i1* %FPU_UM_val, !mcsema_real_eip !47
  %862 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %862, i1* %FPU_OM_val, !mcsema_real_eip !47
  %863 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %863, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %864 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %864, i1* %FPU_DM_val, !mcsema_real_eip !47
  %865 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %865, i1* %FPU_IM_val, !mcsema_real_eip !47
  %866 = load i64, i64* %52, align 4
  store i64 %866, i64* %53, align 4
  %867 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %867, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %868 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %868, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %869 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %869, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %870 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %870, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %871 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %871, i128* %XMM0_val, !mcsema_real_eip !47
  %872 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %872, i128* %XMM1_val, !mcsema_real_eip !47
  %873 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %873, i128* %XMM2_val, !mcsema_real_eip !47
  %874 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %874, i128* %XMM3_val, !mcsema_real_eip !47
  %875 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %875, i128* %XMM4_val, !mcsema_real_eip !47
  %876 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %876, i128* %XMM5_val, !mcsema_real_eip !47
  %877 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %877, i128* %XMM6_val, !mcsema_real_eip !47
  %878 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %878, i128* %XMM7_val, !mcsema_real_eip !47
  %879 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %879, i128* %XMM8_val, !mcsema_real_eip !47
  %880 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %880, i128* %XMM9_val, !mcsema_real_eip !47
  %881 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %881, i128* %XMM10_val, !mcsema_real_eip !47
  %882 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %882, i128* %XMM11_val, !mcsema_real_eip !47
  %883 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %883, i128* %XMM12_val, !mcsema_real_eip !47
  %884 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %884, i128* %XMM13_val, !mcsema_real_eip !47
  %885 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %885, i128* %XMM14_val, !mcsema_real_eip !47
  %886 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %886, i128* %XMM15_val, !mcsema_real_eip !47
  %887 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %887, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %888 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %888, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %889 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %890 = add i64 %889, 8, !mcsema_real_eip !47
  store i64 %890, i64* %RSP_val, !mcsema_real_eip !47
  %891 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %891, i64* %RAX, !mcsema_real_eip !47
  %892 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %892, i64* %RBX, !mcsema_real_eip !47
  %893 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %893, i64* %RCX, !mcsema_real_eip !47
  %894 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %894, i64* %RDX, !mcsema_real_eip !47
  %895 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %895, i64* %RSI, !mcsema_real_eip !47
  %896 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %896, i64* %RDI, !mcsema_real_eip !47
  %897 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %897, i64* %RSP, !mcsema_real_eip !47
  %898 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %898, i64* %RBP, !mcsema_real_eip !47
  %899 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %899, i64* %R8, !mcsema_real_eip !47
  %900 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %900, i64* %R9, !mcsema_real_eip !47
  %901 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %901, i64* %R10, !mcsema_real_eip !47
  %902 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %902, i64* %R11, !mcsema_real_eip !47
  %903 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %903, i64* %R12, !mcsema_real_eip !47
  %904 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %904, i64* %R13, !mcsema_real_eip !47
  %905 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %905, i64* %R14, !mcsema_real_eip !47
  %906 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %906, i64* %R15, !mcsema_real_eip !47
  %907 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %907, i64* %RIP, !mcsema_real_eip !47
  %908 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %908, i1* %CF, align 1, !mcsema_real_eip !47
  %909 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %909, i1* %PF, align 1, !mcsema_real_eip !47
  %910 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %910, i1* %AF, align 1, !mcsema_real_eip !47
  %911 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %911, i1* %ZF, align 1, !mcsema_real_eip !47
  %912 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %912, i1* %SF, align 1, !mcsema_real_eip !47
  %913 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %913, i1* %OF, align 1, !mcsema_real_eip !47
  %914 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %914, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %915 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %915, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %916 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %916, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %917 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %917, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %918 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %918, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %919 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %919, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %920 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %920, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %921 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %921, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %922 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %922, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %923 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %923, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %924 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %924, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %925 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %925, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %926 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %926, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %927 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %927, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %928 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %928, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %929 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %929, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %930 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %930, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %931 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %931, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %932 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %932, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %933 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %933, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %934 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %934, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %935 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %935, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %936 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %936, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %937 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %937, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %938 = load i64, i64* %53, align 4
  store i64 %938, i64* %52, align 4
  %939 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %939, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %940 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %940, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %941 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %941, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %942 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %942, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %943 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %943, i128* %XMM0, align 1, !mcsema_real_eip !47
  %944 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %944, i128* %XMM1, align 1, !mcsema_real_eip !47
  %945 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %945, i128* %XMM2, align 1, !mcsema_real_eip !47
  %946 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %946, i128* %XMM3, align 1, !mcsema_real_eip !47
  %947 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %947, i128* %XMM4, align 1, !mcsema_real_eip !47
  %948 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %948, i128* %XMM5, align 1, !mcsema_real_eip !47
  %949 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %949, i128* %XMM6, align 1, !mcsema_real_eip !47
  %950 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %950, i128* %XMM7, align 1, !mcsema_real_eip !47
  %951 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %951, i128* %XMM8, align 1, !mcsema_real_eip !47
  %952 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %952, i128* %XMM9, align 1, !mcsema_real_eip !47
  %953 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %953, i128* %XMM10, align 1, !mcsema_real_eip !47
  %954 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %954, i128* %XMM11, align 1, !mcsema_real_eip !47
  %955 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %955, i128* %XMM12, align 1, !mcsema_real_eip !47
  %956 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %956, i128* %XMM13, align 1, !mcsema_real_eip !47
  %957 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %957, i128* %XMM14, align 1, !mcsema_real_eip !47
  %958 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %958, i128* %XMM15, align 1, !mcsema_real_eip !47
  %959 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %959, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %960 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %960, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_18e(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 4
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 4
  %R15_val = alloca i64, !mcsema_real_eip !44
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !44
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !44
  %XMM15_val = alloca i128, !mcsema_real_eip !44
  %XMM14_val = alloca i128, !mcsema_real_eip !44
  %XMM13_val = alloca i128, !mcsema_real_eip !44
  %XMM12_val = alloca i128, !mcsema_real_eip !44
  %XMM11_val = alloca i128, !mcsema_real_eip !44
  %XMM10_val = alloca i128, !mcsema_real_eip !44
  %XMM9_val = alloca i128, !mcsema_real_eip !44
  %XMM8_val = alloca i128, !mcsema_real_eip !44
  %XMM7_val = alloca i128, !mcsema_real_eip !44
  %XMM6_val = alloca i128, !mcsema_real_eip !44
  %XMM5_val = alloca i128, !mcsema_real_eip !44
  %XMM4_val = alloca i128, !mcsema_real_eip !44
  %XMM3_val = alloca i128, !mcsema_real_eip !44
  %XMM2_val = alloca i128, !mcsema_real_eip !44
  %XMM1_val = alloca i128, !mcsema_real_eip !44
  %XMM0_val = alloca i128, !mcsema_real_eip !44
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !44
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !44
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !44
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !44
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !44
  %FPU_IM_val = alloca i1, !mcsema_real_eip !44
  %FPU_DM_val = alloca i1, !mcsema_real_eip !44
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !44
  %FPU_OM_val = alloca i1, !mcsema_real_eip !44
  %FPU_UM_val = alloca i1, !mcsema_real_eip !44
  %FPU_PM_val = alloca i1, !mcsema_real_eip !44
  %FPU_PC_val = alloca i2, !mcsema_real_eip !44
  %FPU_RC_val = alloca i2, !mcsema_real_eip !44
  %FPU_X_val = alloca i1, !mcsema_real_eip !44
  %FPU_IE_val = alloca i1, !mcsema_real_eip !44
  %FPU_DE_val = alloca i1, !mcsema_real_eip !44
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !44
  %FPU_OE_val = alloca i1, !mcsema_real_eip !44
  %FPU_UE_val = alloca i1, !mcsema_real_eip !44
  %FPU_PE_val = alloca i1, !mcsema_real_eip !44
  %FPU_SF_val = alloca i1, !mcsema_real_eip !44
  %FPU_ES_val = alloca i1, !mcsema_real_eip !44
  %FPU_C0_val = alloca i1, !mcsema_real_eip !44
  %FPU_C1_val = alloca i1, !mcsema_real_eip !44
  %FPU_C2_val = alloca i1, !mcsema_real_eip !44
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !44
  %FPU_C3_val = alloca i1, !mcsema_real_eip !44
  %FPU_B_val = alloca i1, !mcsema_real_eip !44
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !44
  %DF_val = alloca i1, !mcsema_real_eip !44
  %OF_val = alloca i1, !mcsema_real_eip !44
  %SF_val = alloca i1, !mcsema_real_eip !44
  %CF_val = alloca i1, !mcsema_real_eip !44
  %AF_val = alloca i1, !mcsema_real_eip !44
  %PF_val = alloca i1, !mcsema_real_eip !44
  %ZF_val = alloca i1, !mcsema_real_eip !44
  %RIP_val = alloca i64, !mcsema_real_eip !44
  %R14_val = alloca i64, !mcsema_real_eip !44
  %R13_val = alloca i64, !mcsema_real_eip !44
  %R12_val = alloca i64, !mcsema_real_eip !44
  %R11_val = alloca i64, !mcsema_real_eip !44
  %R10_val = alloca i64, !mcsema_real_eip !44
  %R9_val = alloca i64, !mcsema_real_eip !44
  %R8_val = alloca i64, !mcsema_real_eip !44
  %RSP_val = alloca i64, !mcsema_real_eip !44
  %RBP_val = alloca i64, !mcsema_real_eip !44
  %RDI_val = alloca i64, !mcsema_real_eip !44
  %RSI_val = alloca i64, !mcsema_real_eip !44
  %RDX_val = alloca i64, !mcsema_real_eip !44
  %RCX_val = alloca i64, !mcsema_real_eip !44
  %RBX_val = alloca i64, !mcsema_real_eip !44
  %RAX_val = alloca i64, !mcsema_real_eip !44
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !44
  %1 = load i64, i64* %RAX, !mcsema_real_eip !44
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !44
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !44
  %2 = load i64, i64* %RBX, !mcsema_real_eip !44
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !44
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !44
  %3 = load i64, i64* %RCX, !mcsema_real_eip !44
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !44
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !44
  %4 = load i64, i64* %RDX, !mcsema_real_eip !44
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !44
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !44
  %5 = load i64, i64* %RSI, !mcsema_real_eip !44
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !44
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !44
  %6 = load i64, i64* %RDI, !mcsema_real_eip !44
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !44
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !44
  %7 = load i64, i64* %RSP, !mcsema_real_eip !44
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !44
  %8 = load i64, i64* %RBP, !mcsema_real_eip !44
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !44
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !44
  %9 = load i64, i64* %R8, !mcsema_real_eip !44
  store i64 %9, i64* %R8_val, !mcsema_real_eip !44
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !44
  %10 = load i64, i64* %R9, !mcsema_real_eip !44
  store i64 %10, i64* %R9_val, !mcsema_real_eip !44
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !44
  %11 = load i64, i64* %R10, !mcsema_real_eip !44
  store i64 %11, i64* %R10_val, !mcsema_real_eip !44
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !44
  %12 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %12, i64* %R11_val, !mcsema_real_eip !44
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !44
  %13 = load i64, i64* %R12, !mcsema_real_eip !44
  store i64 %13, i64* %R12_val, !mcsema_real_eip !44
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !44
  %14 = load i64, i64* %R13, !mcsema_real_eip !44
  store i64 %14, i64* %R13_val, !mcsema_real_eip !44
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !44
  %15 = load i64, i64* %R14, !mcsema_real_eip !44
  store i64 %15, i64* %R14_val, !mcsema_real_eip !44
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !44
  %16 = load i64, i64* %R15, !mcsema_real_eip !44
  store i64 %16, i64* %R15_val, !mcsema_real_eip !44
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !44
  %17 = load i64, i64* %RIP, !mcsema_real_eip !44
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !44
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !44
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !44
  store i1 %18, i1* %CF_val, !mcsema_real_eip !44
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !44
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !44
  store i1 %19, i1* %PF_val, !mcsema_real_eip !44
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !44
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !44
  store i1 %20, i1* %AF_val, !mcsema_real_eip !44
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !44
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !44
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !44
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !44
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !44
  store i1 %22, i1* %SF_val, !mcsema_real_eip !44
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !44
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !44
  store i1 %23, i1* %OF_val, !mcsema_real_eip !44
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !44
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !44
  store i1 %24, i1* %DF_val, !mcsema_real_eip !44
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !44
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !44
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !44
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !44
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !44
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !44
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !44
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !44
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !44
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !44
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !44
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !44
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !44
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !44
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !44
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !44
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !44
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !44
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !44
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !44
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !44
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !44
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !44
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !44
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !44
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !44
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !44
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !44
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !44
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !44
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !44
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !44
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !44
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !44
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !44
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !44
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !44
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !44
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !44
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !44
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !44
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !44
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !44
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !44
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !44
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !44
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !44
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !44
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !44
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !44
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !44
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !44
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !44
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !44
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !44
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !44
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !44
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !44
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !44
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !44
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !44
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !44
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !44
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !44
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !44
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !44
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !44
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !44
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !44
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !44
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !44
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !44
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !44
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !44
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !44
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !44
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !44
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !44
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !44
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !44
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !44
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !44
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !44
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !44
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !44
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !44
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !44
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !44
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !44
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !44
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !44
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !44
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !44
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !44
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !44
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !44
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !44
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !44
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !44
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !44
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !44
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !44
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !44
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !44
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !44
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !44
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !44
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !44
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !44
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !44
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !44
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !44
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !44
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !44
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !44
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !44
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !44
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !44
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !44
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !44
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !44
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !44
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !44
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !44
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !44
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !44
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !44
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !44
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !44
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !44
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !44
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !44
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !44
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !44
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !44
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !44
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !44
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !44
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !44
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !44
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  %78 = add i64 %77, -4, !mcsema_real_eip !44
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !44
  %80 = bitcast i64* %79 to i32*
  store i32 1, i32* %80, !mcsema_real_eip !44
  %81 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %82 = add i64 %81, -4, !mcsema_real_eip !28
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !28
  %84 = bitcast i64* %83 to i32*
  %85 = load i32, i32* %84, !mcsema_real_eip !28
  %86 = zext i32 %85 to i64, !mcsema_real_eip !28
  store i64 %86, i64* %RAX_val, !mcsema_real_eip !28
  %87 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %87, i64 96)
  %88 = extractvalue { i64, i1 } %uadd, 0
  %89 = xor i64 %88, %87, !mcsema_real_eip !29
  %90 = and i64 %89, 16, !mcsema_real_eip !29
  %91 = icmp ne i64 %90, 0, !mcsema_real_eip !29
  store i1 %91, i1* %AF_val, !mcsema_real_eip !29
  %92 = icmp slt i64 %88, 0
  store i1 %92, i1* %SF_val, !mcsema_real_eip !29
  %93 = icmp eq i64 %88, 0, !mcsema_real_eip !29
  store i1 %93, i1* %ZF_val, !mcsema_real_eip !29
  %94 = xor i64 %87, -9223372036854775808, !mcsema_real_eip !29
  %95 = and i64 %89, %94, !mcsema_real_eip !29
  %96 = icmp slt i64 %95, 0
  store i1 %96, i1* %OF_val, !mcsema_real_eip !29
  %97 = trunc i64 %88 to i8, !mcsema_real_eip !29
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !29
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF_val, !mcsema_real_eip !29
  %101 = extractvalue { i64, i1 } %uadd, 1
  store i1 %101, i1* %CF_val, !mcsema_real_eip !29
  store i64 %88, i64* %RSP_val, !mcsema_real_eip !29
  %102 = inttoptr i64 %88 to i64*, !mcsema_real_eip !30
  %103 = load i64, i64* %102, !mcsema_real_eip !30
  store i64 %103, i64* %RBP_val, !mcsema_real_eip !30
  %104 = add i64 %88, 16, !mcsema_real_eip !31
  store i64 %104, i64* %RSP_val, !mcsema_real_eip !31
  %105 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %105, i64* %RAX, !mcsema_real_eip !31
  %106 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %106, i64* %RBX, !mcsema_real_eip !31
  %107 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %107, i64* %RCX, !mcsema_real_eip !31
  %108 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %108, i64* %RDX, !mcsema_real_eip !31
  %109 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %109, i64* %RSI, !mcsema_real_eip !31
  %110 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %110, i64* %RDI, !mcsema_real_eip !31
  %111 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %111, i64* %RSP, !mcsema_real_eip !31
  %112 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %112, i64* %RBP, !mcsema_real_eip !31
  %113 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %113, i64* %R8, !mcsema_real_eip !31
  %114 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %114, i64* %R9, !mcsema_real_eip !31
  %115 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %115, i64* %R10, !mcsema_real_eip !31
  %116 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %116, i64* %R11, !mcsema_real_eip !31
  %117 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %117, i64* %R12, !mcsema_real_eip !31
  %118 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %118, i64* %R13, !mcsema_real_eip !31
  %119 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %119, i64* %R14, !mcsema_real_eip !31
  %120 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %120, i64* %R15, !mcsema_real_eip !31
  %121 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %121, i64* %RIP, !mcsema_real_eip !31
  %122 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %122, i1* %CF, align 1, !mcsema_real_eip !31
  %123 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !31
  %124 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !31
  %125 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %125, i1* %ZF, align 1, !mcsema_real_eip !31
  %126 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %126, i1* %SF, align 1, !mcsema_real_eip !31
  %127 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %127, i1* %OF, align 1, !mcsema_real_eip !31
  %128 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %128, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %129 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %129, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %130 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %130, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %131 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %131, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %132 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %132, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %133 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %133, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %134 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %134, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %135 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %135, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %136 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %136, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %137 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %137, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %138 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %138, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %139 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %139, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %140 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %140, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %141 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %141, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %142 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %142, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %143 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %143, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %144 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %144, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %145 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %145, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %146 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %146, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %147 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %147, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %148 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %148, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %149 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %149, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %150 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %150, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %151 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %151, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %152 = load i64, i64* %53, align 4
  store i64 %152, i64* %52, align 4
  %153 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %153, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %154 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %154, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %155 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %155, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %156 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %156, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %157 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %157, i128* %XMM0, align 1, !mcsema_real_eip !31
  %158 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %158, i128* %XMM1, align 1, !mcsema_real_eip !31
  %159 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %159, i128* %XMM2, align 1, !mcsema_real_eip !31
  %160 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %160, i128* %XMM3, align 1, !mcsema_real_eip !31
  %161 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %161, i128* %XMM4, align 1, !mcsema_real_eip !31
  %162 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %162, i128* %XMM5, align 1, !mcsema_real_eip !31
  %163 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %163, i128* %XMM6, align 1, !mcsema_real_eip !31
  %164 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %164, i128* %XMM7, align 1, !mcsema_real_eip !31
  %165 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %165, i128* %XMM8, align 1, !mcsema_real_eip !31
  %166 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %166, i128* %XMM9, align 1, !mcsema_real_eip !31
  %167 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %167, i128* %XMM10, align 1, !mcsema_real_eip !31
  %168 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %168, i128* %XMM11, align 1, !mcsema_real_eip !31
  %169 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %169, i128* %XMM12, align 1, !mcsema_real_eip !31
  %170 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %170, i128* %XMM13, align 1, !mcsema_real_eip !31
  %171 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %171, i128* %XMM14, align 1, !mcsema_real_eip !31
  %172 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %172, i128* %XMM15, align 1, !mcsema_real_eip !31
  %173 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %173, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %174 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %174, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

define internal x86_64_sysvcc void @sub_180(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 84
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %R15_val = alloca i64, !mcsema_real_eip !105
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !105
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !105
  %XMM15_val = alloca i128, !mcsema_real_eip !105
  %XMM14_val = alloca i128, !mcsema_real_eip !105
  %XMM13_val = alloca i128, !mcsema_real_eip !105
  %XMM12_val = alloca i128, !mcsema_real_eip !105
  %XMM11_val = alloca i128, !mcsema_real_eip !105
  %XMM10_val = alloca i128, !mcsema_real_eip !105
  %XMM9_val = alloca i128, !mcsema_real_eip !105
  %XMM8_val = alloca i128, !mcsema_real_eip !105
  %XMM7_val = alloca i128, !mcsema_real_eip !105
  %XMM6_val = alloca i128, !mcsema_real_eip !105
  %XMM5_val = alloca i128, !mcsema_real_eip !105
  %XMM4_val = alloca i128, !mcsema_real_eip !105
  %XMM3_val = alloca i128, !mcsema_real_eip !105
  %XMM2_val = alloca i128, !mcsema_real_eip !105
  %XMM1_val = alloca i128, !mcsema_real_eip !105
  %XMM0_val = alloca i128, !mcsema_real_eip !105
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !105
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !105
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !105
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !105
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !105
  %FPU_IM_val = alloca i1, !mcsema_real_eip !105
  %FPU_DM_val = alloca i1, !mcsema_real_eip !105
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !105
  %FPU_OM_val = alloca i1, !mcsema_real_eip !105
  %FPU_UM_val = alloca i1, !mcsema_real_eip !105
  %FPU_PM_val = alloca i1, !mcsema_real_eip !105
  %FPU_PC_val = alloca i2, !mcsema_real_eip !105
  %FPU_RC_val = alloca i2, !mcsema_real_eip !105
  %FPU_X_val = alloca i1, !mcsema_real_eip !105
  %FPU_IE_val = alloca i1, !mcsema_real_eip !105
  %FPU_DE_val = alloca i1, !mcsema_real_eip !105
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !105
  %FPU_OE_val = alloca i1, !mcsema_real_eip !105
  %FPU_UE_val = alloca i1, !mcsema_real_eip !105
  %FPU_PE_val = alloca i1, !mcsema_real_eip !105
  %FPU_SF_val = alloca i1, !mcsema_real_eip !105
  %FPU_ES_val = alloca i1, !mcsema_real_eip !105
  %FPU_C0_val = alloca i1, !mcsema_real_eip !105
  %FPU_C1_val = alloca i1, !mcsema_real_eip !105
  %FPU_C2_val = alloca i1, !mcsema_real_eip !105
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !105
  %FPU_C3_val = alloca i1, !mcsema_real_eip !105
  %FPU_B_val = alloca i1, !mcsema_real_eip !105
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !105
  %DF_val = alloca i1, !mcsema_real_eip !105
  %OF_val = alloca i1, !mcsema_real_eip !105
  %SF_val = alloca i1, !mcsema_real_eip !105
  %CF_val = alloca i1, !mcsema_real_eip !105
  %AF_val = alloca i1, !mcsema_real_eip !105
  %PF_val = alloca i1, !mcsema_real_eip !105
  %ZF_val = alloca i1, !mcsema_real_eip !105
  %RIP_val = alloca i64, !mcsema_real_eip !105
  %R14_val = alloca i64, !mcsema_real_eip !105
  %R13_val = alloca i64, !mcsema_real_eip !105
  %R12_val = alloca i64, !mcsema_real_eip !105
  %R11_val = alloca i64, !mcsema_real_eip !105
  %R10_val = alloca i64, !mcsema_real_eip !105
  %R9_val = alloca i64, !mcsema_real_eip !105
  %R8_val = alloca i64, !mcsema_real_eip !105
  %RSP_val = alloca i64, !mcsema_real_eip !105
  %RBP_val = alloca i64, !mcsema_real_eip !105
  %RDI_val = alloca i64, !mcsema_real_eip !105
  %RSI_val = alloca i64, !mcsema_real_eip !105
  %RDX_val = alloca i64, !mcsema_real_eip !105
  %RCX_val = alloca i64, !mcsema_real_eip !105
  %RBX_val = alloca i64, !mcsema_real_eip !105
  %RAX_val = alloca i64, !mcsema_real_eip !105
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !105
  %1 = load i64, i64* %RAX, !mcsema_real_eip !105
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !105
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !105
  %2 = load i64, i64* %RBX, !mcsema_real_eip !105
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !105
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !105
  %3 = load i64, i64* %RCX, !mcsema_real_eip !105
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !105
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !105
  %4 = load i64, i64* %RDX, !mcsema_real_eip !105
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !105
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !105
  %5 = load i64, i64* %RSI, !mcsema_real_eip !105
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !105
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !105
  %6 = load i64, i64* %RDI, !mcsema_real_eip !105
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !105
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !105
  %7 = load i64, i64* %RSP, !mcsema_real_eip !105
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !105
  %8 = load i64, i64* %RBP, !mcsema_real_eip !105
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !105
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !105
  %9 = load i64, i64* %R8, !mcsema_real_eip !105
  store i64 %9, i64* %R8_val, !mcsema_real_eip !105
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !105
  %10 = load i64, i64* %R9, !mcsema_real_eip !105
  store i64 %10, i64* %R9_val, !mcsema_real_eip !105
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !105
  %11 = load i64, i64* %R10, !mcsema_real_eip !105
  store i64 %11, i64* %R10_val, !mcsema_real_eip !105
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !105
  %12 = load i64, i64* %R11, !mcsema_real_eip !105
  store i64 %12, i64* %R11_val, !mcsema_real_eip !105
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !105
  %13 = load i64, i64* %R12, !mcsema_real_eip !105
  store i64 %13, i64* %R12_val, !mcsema_real_eip !105
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !105
  %14 = load i64, i64* %R13, !mcsema_real_eip !105
  store i64 %14, i64* %R13_val, !mcsema_real_eip !105
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !105
  %15 = load i64, i64* %R14, !mcsema_real_eip !105
  store i64 %15, i64* %R14_val, !mcsema_real_eip !105
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !105
  %16 = load i64, i64* %R15, !mcsema_real_eip !105
  store i64 %16, i64* %R15_val, !mcsema_real_eip !105
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !105
  %17 = load i64, i64* %RIP, !mcsema_real_eip !105
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !105
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !105
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !105
  store i1 %18, i1* %CF_val, !mcsema_real_eip !105
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !105
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !105
  store i1 %19, i1* %PF_val, !mcsema_real_eip !105
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !105
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !105
  store i1 %20, i1* %AF_val, !mcsema_real_eip !105
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !105
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !105
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !105
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !105
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !105
  store i1 %22, i1* %SF_val, !mcsema_real_eip !105
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !105
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !105
  store i1 %23, i1* %OF_val, !mcsema_real_eip !105
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !105
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !105
  store i1 %24, i1* %DF_val, !mcsema_real_eip !105
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !105
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !105
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !105
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !105
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !105
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !105
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !105
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !105
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !105
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !105
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !105
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !105
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !105
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !105
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !105
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !105
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !105
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !105
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !105
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !105
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !105
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !105
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !105
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !105
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !105
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !105
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !105
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !105
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !105
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !105
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !105
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !105
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !105
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !105
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !105
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !105
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !105
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !105
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !105
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !105
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !105
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !105
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !105
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !105
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !105
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !105
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !105
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !105
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !105
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !105
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !105
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !105
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !105
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !105
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !105
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !105
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !105
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !105
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !105
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !105
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !105
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !105
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !105
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !105
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !105
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !105
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !105
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !105
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !105
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !105
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !105
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !105
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !105
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !105
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !105
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !105
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !105
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !105
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !105
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !105
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !105
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !105
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !105
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !105
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !105
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !105
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !105
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !105
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !105
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !105
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !105
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !105
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !105
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !105
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !105
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !105
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !105
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !105
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !105
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !105
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !105
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !105
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !105
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !105
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !105
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !105
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !105
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !105
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !105
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !105
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !105
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !105
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !105
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !105
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !105
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !105
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !105
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !105
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !105
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !105
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !105
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !105
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !105
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !105
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !105
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !105
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !105
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !105
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !105
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !105
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !105
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !105
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !105
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !105
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !105
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !105
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !105
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !105
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !105
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !105
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !105
  %78 = add i64 %77, -20, !mcsema_real_eip !105
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !105
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !105
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 1)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !106
  %84 = and i32 %83, 16, !mcsema_real_eip !106
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !106
  store i1 %85, i1* %AF_val, !mcsema_real_eip !106
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !106
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !106
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !106
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !106
  %89 = and i32 %83, %88, !mcsema_real_eip !106
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !106
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !106
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !106
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !106
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !106
  %96 = load i64, i64* %RBP_val, !mcsema_real_eip !107
  %97 = add i64 %96, -20, !mcsema_real_eip !107
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !107
  %99 = bitcast i64* %98 to i32*
  store i32 %82, i32* %99, !mcsema_real_eip !107
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !51
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %101 = add i64 %100, -20, !mcsema_real_eip !52
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !52
  %103 = bitcast i64* %102 to i32*
  %104 = load i32, i32* %103, !mcsema_real_eip !52
  %105 = sext i32 %104 to i64, !mcsema_real_eip !52
  store i64 %105, i64* %RCX_val, !mcsema_real_eip !52
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %107 = add i64 %106, -24, !mcsema_real_eip !53
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !53
  %109 = bitcast i64* %108 to i32*
  %110 = load i32, i32* %109, !mcsema_real_eip !53
  %111 = sext i32 %110 to i64, !mcsema_real_eip !53
  %112 = mul i64 %111, 11, !mcsema_real_eip !54
  store i64 %112, i64* %RDX_val, !mcsema_real_eip !54
  %113 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  %uadd347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %113)
  %114 = extractvalue { i64, i1 } %uadd347, 0
  %115 = xor i64 %114, %113, !mcsema_real_eip !55
  %116 = xor i64 %115, %112, !mcsema_real_eip !55
  %117 = and i64 %116, 16, !mcsema_real_eip !55
  %118 = icmp ne i64 %117, 0, !mcsema_real_eip !55
  store i1 %118, i1* %AF_val, !mcsema_real_eip !55
  %119 = icmp slt i64 %114, 0
  store i1 %119, i1* %SF_val, !mcsema_real_eip !55
  %120 = icmp eq i64 %114, 0, !mcsema_real_eip !55
  store i1 %120, i1* %ZF_val, !mcsema_real_eip !55
  %121 = xor i64 %113, -9223372036854775808, !mcsema_real_eip !55
  %122 = xor i64 %121, %112, !mcsema_real_eip !55
  %123 = and i64 %115, %122, !mcsema_real_eip !55
  %124 = icmp slt i64 %123, 0
  store i1 %124, i1* %OF_val, !mcsema_real_eip !55
  %125 = trunc i64 %114 to i8, !mcsema_real_eip !55
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !55
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF_val, !mcsema_real_eip !55
  %129 = extractvalue { i64, i1 } %uadd347, 1
  store i1 %129, i1* %CF_val, !mcsema_real_eip !55
  store i64 %114, i64* %RAX_val, !mcsema_real_eip !55
  %130 = load i64, i64* %RCX_val, !mcsema_real_eip !56
  %131 = add i64 %130, %114, !mcsema_real_eip !56
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !56
  %133 = bitcast i64* %132 to i8*
  %134 = load i8, i8* %133, !mcsema_real_eip !56
  %135 = sext i8 %134 to i32, !mcsema_real_eip !56
  %136 = zext i32 %135 to i64, !mcsema_real_eip !56
  store i64 %136, i64* %RSI_val, !mcsema_real_eip !56
  %137 = add nsw i32 %135, -35
  %138 = xor i32 %137, %135, !mcsema_real_eip !57
  %139 = and i32 %138, 16, !mcsema_real_eip !57
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !57
  store i1 %140, i1* %AF_val, !mcsema_real_eip !57
  %141 = trunc i32 %137 to i8, !mcsema_real_eip !57
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !57
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !57
  %145 = icmp eq i32 %137, 0, !mcsema_real_eip !57
  store i1 %145, i1* %ZF_val, !mcsema_real_eip !57
  %146 = icmp slt i32 %137, 0
  store i1 %146, i1* %SF_val, !mcsema_real_eip !57
  %147 = icmp ult i8 %134, 35
  store i1 %147, i1* %CF_val, !mcsema_real_eip !57
  %148 = and i32 %138, %135, !mcsema_real_eip !57
  %149 = icmp slt i32 %148, 0
  store i1 %149, i1* %OF_val, !mcsema_real_eip !57
  %150 = load i1, i1* %ZF_val, !mcsema_real_eip !58
  br i1 %150, label %block_0x1c0, label %block_0x1cc, !mcsema_real_eip !58

block_0x1cc:                                      ; preds = %entry
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !59
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %152 = add i64 %151, -20, !mcsema_real_eip !60
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !60
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !60
  %156 = sext i32 %155 to i64, !mcsema_real_eip !60
  store i64 %156, i64* %RCX_val, !mcsema_real_eip !60
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %158 = add i64 %157, -24, !mcsema_real_eip !61
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !61
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !61
  %162 = sext i32 %161 to i64, !mcsema_real_eip !61
  %163 = mul i64 %162, 11, !mcsema_real_eip !62
  store i64 %163, i64* %RDX_val, !mcsema_real_eip !62
  %164 = load i64, i64* %RAX_val, !mcsema_real_eip !63
  %uadd349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %164)
  %165 = extractvalue { i64, i1 } %uadd349, 0
  %166 = xor i64 %165, %164, !mcsema_real_eip !63
  %167 = xor i64 %166, %163, !mcsema_real_eip !63
  %168 = and i64 %167, 16, !mcsema_real_eip !63
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !63
  store i1 %169, i1* %AF_val, !mcsema_real_eip !63
  %170 = icmp slt i64 %165, 0
  store i1 %170, i1* %SF_val, !mcsema_real_eip !63
  %171 = icmp eq i64 %165, 0, !mcsema_real_eip !63
  store i1 %171, i1* %ZF_val, !mcsema_real_eip !63
  %172 = xor i64 %164, -9223372036854775808, !mcsema_real_eip !63
  %173 = xor i64 %172, %163, !mcsema_real_eip !63
  %174 = and i64 %166, %173, !mcsema_real_eip !63
  %175 = icmp slt i64 %174, 0
  store i1 %175, i1* %OF_val, !mcsema_real_eip !63
  %176 = trunc i64 %165 to i8, !mcsema_real_eip !63
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !63
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  store i1 %179, i1* %PF_val, !mcsema_real_eip !63
  %180 = extractvalue { i64, i1 } %uadd349, 1
  store i1 %180, i1* %CF_val, !mcsema_real_eip !63
  store i64 %165, i64* %RAX_val, !mcsema_real_eip !63
  %181 = load i64, i64* %RCX_val, !mcsema_real_eip !64
  %182 = add i64 %181, %165, !mcsema_real_eip !64
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !64
  %184 = bitcast i64* %183 to i8*
  %185 = load i8, i8* %184, !mcsema_real_eip !64
  %186 = sext i8 %185 to i32, !mcsema_real_eip !64
  %187 = zext i32 %186 to i64, !mcsema_real_eip !64
  store i64 %187, i64* %RSI_val, !mcsema_real_eip !64
  %188 = add nsw i32 %186, -32
  %189 = xor i32 %188, %186, !mcsema_real_eip !65
  %190 = and i32 %189, 16, !mcsema_real_eip !65
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !65
  store i1 %191, i1* %AF_val, !mcsema_real_eip !65
  %192 = trunc i32 %188 to i8, !mcsema_real_eip !65
  %193 = tail call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !65
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  store i1 %195, i1* %PF_val, !mcsema_real_eip !65
  %196 = icmp eq i32 %188, 0, !mcsema_real_eip !65
  store i1 %196, i1* %ZF_val, !mcsema_real_eip !65
  %197 = icmp slt i32 %188, 0
  store i1 %197, i1* %SF_val, !mcsema_real_eip !65
  %198 = icmp ult i8 %185, 32
  store i1 %198, i1* %CF_val, !mcsema_real_eip !65
  %199 = and i32 %189, %186, !mcsema_real_eip !65
  %200 = icmp slt i32 %199, 0
  store i1 %200, i1* %OF_val, !mcsema_real_eip !65
  %201 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  br i1 %201, label %block_0x242, label %block_0x1f2, !mcsema_real_eip !66

block_0x1c0:                                      ; preds = %entry
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %203 = add i64 %202, -4, !mcsema_real_eip !67
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !67
  %205 = bitcast i64* %204 to i32*
  store i32 0, i32* %205, !mcsema_real_eip !67
  br label %block_0x298, !mcsema_real_eip !68

block_0x298:                                      ; preds = %block_0x18e, %block_0x25a, %block_0x1c0
  %206 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %207 = add i64 %206, -4, !mcsema_real_eip !28
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !28
  %209 = bitcast i64* %208 to i32*
  %210 = load i32, i32* %209, !mcsema_real_eip !28
  %211 = zext i32 %210 to i64, !mcsema_real_eip !28
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !28
  %212 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 96)
  %213 = extractvalue { i64, i1 } %uadd348, 0
  %214 = xor i64 %213, %212, !mcsema_real_eip !29
  %215 = and i64 %214, 16, !mcsema_real_eip !29
  %216 = icmp ne i64 %215, 0, !mcsema_real_eip !29
  store i1 %216, i1* %AF_val, !mcsema_real_eip !29
  %217 = icmp slt i64 %213, 0
  store i1 %217, i1* %SF_val, !mcsema_real_eip !29
  %218 = icmp eq i64 %213, 0, !mcsema_real_eip !29
  store i1 %218, i1* %ZF_val, !mcsema_real_eip !29
  %219 = xor i64 %212, -9223372036854775808, !mcsema_real_eip !29
  %220 = and i64 %214, %219, !mcsema_real_eip !29
  %221 = icmp slt i64 %220, 0
  store i1 %221, i1* %OF_val, !mcsema_real_eip !29
  %222 = trunc i64 %213 to i8, !mcsema_real_eip !29
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !29
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF_val, !mcsema_real_eip !29
  %226 = extractvalue { i64, i1 } %uadd348, 1
  store i1 %226, i1* %CF_val, !mcsema_real_eip !29
  store i64 %213, i64* %RSP_val, !mcsema_real_eip !29
  %227 = inttoptr i64 %213 to i64*, !mcsema_real_eip !30
  %228 = load i64, i64* %227, !mcsema_real_eip !30
  store i64 %228, i64* %RBP_val, !mcsema_real_eip !30
  %229 = add i64 %213, 16, !mcsema_real_eip !31
  store i64 %229, i64* %RSP_val, !mcsema_real_eip !31
  %230 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %230, i64* %RAX, !mcsema_real_eip !31
  %231 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %231, i64* %RBX, !mcsema_real_eip !31
  %232 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %232, i64* %RCX, !mcsema_real_eip !31
  %233 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %233, i64* %RDX, !mcsema_real_eip !31
  %234 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %234, i64* %RSI, !mcsema_real_eip !31
  %235 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %235, i64* %RDI, !mcsema_real_eip !31
  %236 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %236, i64* %RSP, !mcsema_real_eip !31
  %237 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %237, i64* %RBP, !mcsema_real_eip !31
  %238 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %238, i64* %R8, !mcsema_real_eip !31
  %239 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %239, i64* %R9, !mcsema_real_eip !31
  %240 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %240, i64* %R10, !mcsema_real_eip !31
  %241 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %241, i64* %R11, !mcsema_real_eip !31
  %242 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %242, i64* %R12, !mcsema_real_eip !31
  %243 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %243, i64* %R13, !mcsema_real_eip !31
  %244 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %244, i64* %R14, !mcsema_real_eip !31
  %245 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %245, i64* %R15, !mcsema_real_eip !31
  %246 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %246, i64* %RIP, !mcsema_real_eip !31
  %247 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %247, i1* %CF, align 1, !mcsema_real_eip !31
  %248 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %248, i1* %PF, align 1, !mcsema_real_eip !31
  %249 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %249, i1* %AF, align 1, !mcsema_real_eip !31
  %250 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %250, i1* %ZF, align 1, !mcsema_real_eip !31
  %251 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %251, i1* %SF, align 1, !mcsema_real_eip !31
  %252 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %252, i1* %OF, align 1, !mcsema_real_eip !31
  %253 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %253, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %254 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %254, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %255 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %255, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %256 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %256, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %257 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %257, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %258 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %258, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %259 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %259, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %260 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %260, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %261 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %261, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %262 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %262, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %263 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %263, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %264 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %264, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %265 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %265, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %266 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %266, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %267 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %267, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %268 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %268, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %269 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %269, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %270 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %270, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %271 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %271, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %272 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %272, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %273 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %273, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %274 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %274, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %275 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %275, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %276 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %276, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %277 = load i64, i64* %53, align 4
  store i64 %277, i64* %52, align 4
  %278 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %278, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %279 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %279, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %280 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %280, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %281 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %281, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %282 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %282, i128* %XMM0, align 1, !mcsema_real_eip !31
  %283 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %283, i128* %XMM1, align 1, !mcsema_real_eip !31
  %284 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %284, i128* %XMM2, align 1, !mcsema_real_eip !31
  %285 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %285, i128* %XMM3, align 1, !mcsema_real_eip !31
  %286 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %286, i128* %XMM4, align 1, !mcsema_real_eip !31
  %287 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %287, i128* %XMM5, align 1, !mcsema_real_eip !31
  %288 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %288, i128* %XMM6, align 1, !mcsema_real_eip !31
  %289 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %289, i128* %XMM7, align 1, !mcsema_real_eip !31
  %290 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %290, i128* %XMM8, align 1, !mcsema_real_eip !31
  %291 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %291, i128* %XMM9, align 1, !mcsema_real_eip !31
  %292 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %292, i128* %XMM10, align 1, !mcsema_real_eip !31
  %293 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %293, i128* %XMM11, align 1, !mcsema_real_eip !31
  %294 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %294, i128* %XMM12, align 1, !mcsema_real_eip !31
  %295 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %295, i128* %XMM13, align 1, !mcsema_real_eip !31
  %296 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %296, i128* %XMM14, align 1, !mcsema_real_eip !31
  %297 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %297, i128* %XMM15, align 1, !mcsema_real_eip !31
  %298 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %298, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %299 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %299, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x242:                                      ; preds = %block_0x22c, %block_0x1cc
  %300 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %301 = add i64 %300, -28, !mcsema_real_eip !69
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !69
  %303 = bitcast i64* %302 to i32*
  %304 = load i32, i32* %303, !mcsema_real_eip !69
  %305 = zext i32 %304 to i64, !mcsema_real_eip !69
  store i64 %305, i64* %RAX_val, !mcsema_real_eip !69
  %306 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %307 = add i64 %306, -20, !mcsema_real_eip !70
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !70
  %309 = bitcast i64* %308 to i32*
  %310 = load i32, i32* %309, !mcsema_real_eip !70
  %311 = sub i32 %304, %310, !mcsema_real_eip !70
  %312 = xor i32 %311, %304, !mcsema_real_eip !70
  %313 = xor i32 %312, %310, !mcsema_real_eip !70
  %314 = and i32 %313, 16, !mcsema_real_eip !70
  %315 = icmp ne i32 %314, 0, !mcsema_real_eip !70
  store i1 %315, i1* %AF_val, !mcsema_real_eip !70
  %316 = trunc i32 %311 to i8, !mcsema_real_eip !70
  %317 = tail call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !70
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  store i1 %319, i1* %PF_val, !mcsema_real_eip !70
  %320 = icmp eq i32 %304, %310
  store i1 %320, i1* %ZF_val, !mcsema_real_eip !70
  %321 = icmp slt i32 %311, 0
  store i1 %321, i1* %SF_val, !mcsema_real_eip !70
  %322 = icmp ult i32 %304, %310, !mcsema_real_eip !70
  store i1 %322, i1* %CF_val, !mcsema_real_eip !70
  %323 = xor i32 %310, %304, !mcsema_real_eip !70
  %324 = and i32 %312, %323, !mcsema_real_eip !70
  %325 = icmp slt i32 %324, 0
  store i1 %325, i1* %OF_val, !mcsema_real_eip !70
  %326 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %326, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1f2:                                      ; preds = %block_0x1cc
  %327 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %328 = add i64 %327, -24, !mcsema_real_eip !72
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !72
  %330 = bitcast i64* %329 to i32*
  %331 = load i32, i32* %330, !mcsema_real_eip !72
  %332 = add i32 %331, -2
  %333 = xor i32 %332, %331, !mcsema_real_eip !72
  %334 = and i32 %333, 16, !mcsema_real_eip !72
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !72
  store i1 %335, i1* %AF_val, !mcsema_real_eip !72
  %336 = trunc i32 %332 to i8, !mcsema_real_eip !72
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !72
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !72
  %340 = icmp eq i32 %332, 0, !mcsema_real_eip !72
  store i1 %340, i1* %ZF_val, !mcsema_real_eip !72
  %341 = icmp slt i32 %332, 0
  store i1 %341, i1* %SF_val, !mcsema_real_eip !72
  %342 = icmp ult i32 %331, 2, !mcsema_real_eip !72
  store i1 %342, i1* %CF_val, !mcsema_real_eip !72
  %343 = and i32 %333, %331, !mcsema_real_eip !72
  %344 = icmp slt i32 %343, 0
  store i1 %344, i1* %OF_val, !mcsema_real_eip !72
  %345 = load i1, i1* %ZF_val, !mcsema_real_eip !73
  br i1 %345, label %block_0x1fc, label %block_0x236, !mcsema_real_eip !73

block_0x236:                                      ; preds = %block_0x22c, %block_0x222, %block_0x1fc, %block_0x1f2
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %347 = add i64 %346, -28, !mcsema_real_eip !74
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !74
  %349 = bitcast i64* %348 to i32*
  %350 = load i32, i32* %349, !mcsema_real_eip !74
  %351 = zext i32 %350 to i64, !mcsema_real_eip !74
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !74
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %353 = add i64 %352, -20, !mcsema_real_eip !75
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !75
  %355 = bitcast i64* %354 to i32*
  store i32 %350, i32* %355, !mcsema_real_eip !75
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %357 = add i64 %356, -32, !mcsema_real_eip !76
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !76
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, !mcsema_real_eip !76
  %361 = zext i32 %360 to i64, !mcsema_real_eip !76
  store i64 %361, i64* %RAX_val, !mcsema_real_eip !76
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %363 = add i64 %362, -24, !mcsema_real_eip !77
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !77
  %365 = bitcast i64* %364 to i32*
  store i32 %360, i32* %365, !mcsema_real_eip !77
  %366 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %367 = add i64 %366, -28, !mcsema_real_eip !69
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !69
  %369 = bitcast i64* %368 to i32*
  %370 = load i32, i32* %369, !mcsema_real_eip !69
  %371 = zext i32 %370 to i64, !mcsema_real_eip !69
  store i64 %371, i64* %RAX_val, !mcsema_real_eip !69
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %373 = add i64 %372, -20, !mcsema_real_eip !70
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !70
  %375 = bitcast i64* %374 to i32*
  %376 = load i32, i32* %375, !mcsema_real_eip !70
  %377 = sub i32 %370, %376, !mcsema_real_eip !70
  %378 = xor i32 %377, %370, !mcsema_real_eip !70
  %379 = xor i32 %378, %376, !mcsema_real_eip !70
  %380 = and i32 %379, 16, !mcsema_real_eip !70
  %381 = icmp ne i32 %380, 0, !mcsema_real_eip !70
  store i1 %381, i1* %AF_val, !mcsema_real_eip !70
  %382 = trunc i32 %377 to i8, !mcsema_real_eip !70
  %383 = tail call i8 @llvm.ctpop.i8(i8 %382), !mcsema_real_eip !70
  %384 = and i8 %383, 1
  %385 = icmp eq i8 %384, 0
  store i1 %385, i1* %PF_val, !mcsema_real_eip !70
  %386 = icmp eq i32 %370, %376
  store i1 %386, i1* %ZF_val, !mcsema_real_eip !70
  %387 = icmp slt i32 %377, 0
  store i1 %387, i1* %SF_val, !mcsema_real_eip !70
  %388 = icmp ult i32 %370, %376, !mcsema_real_eip !70
  store i1 %388, i1* %CF_val, !mcsema_real_eip !70
  %389 = xor i32 %376, %370, !mcsema_real_eip !70
  %390 = and i32 %378, %389, !mcsema_real_eip !70
  %391 = icmp slt i32 %390, 0
  store i1 %391, i1* %OF_val, !mcsema_real_eip !70
  %392 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %392, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1fc:                                      ; preds = %block_0x1f2
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !78
  %393 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %394 = add i64 %393, -20, !mcsema_real_eip !79
  %395 = inttoptr i64 %394 to i64*, !mcsema_real_eip !79
  %396 = bitcast i64* %395 to i32*
  %397 = load i32, i32* %396, !mcsema_real_eip !79
  %398 = sext i32 %397 to i64, !mcsema_real_eip !79
  store i64 %398, i64* %RCX_val, !mcsema_real_eip !79
  %399 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %400 = add i64 %399, -24, !mcsema_real_eip !80
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !80
  %402 = bitcast i64* %401 to i32*
  %403 = load i32, i32* %402, !mcsema_real_eip !80
  %404 = sext i32 %403 to i64, !mcsema_real_eip !80
  %405 = mul i64 %404, 11, !mcsema_real_eip !81
  store i64 %405, i64* %RDX_val, !mcsema_real_eip !81
  %406 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %405, i64 %406)
  %407 = extractvalue { i64, i1 } %uadd350, 0
  %408 = xor i64 %407, %406, !mcsema_real_eip !82
  %409 = xor i64 %408, %405, !mcsema_real_eip !82
  %410 = and i64 %409, 16, !mcsema_real_eip !82
  %411 = icmp ne i64 %410, 0, !mcsema_real_eip !82
  store i1 %411, i1* %AF_val, !mcsema_real_eip !82
  %412 = icmp slt i64 %407, 0
  store i1 %412, i1* %SF_val, !mcsema_real_eip !82
  %413 = icmp eq i64 %407, 0, !mcsema_real_eip !82
  store i1 %413, i1* %ZF_val, !mcsema_real_eip !82
  %414 = xor i64 %406, -9223372036854775808, !mcsema_real_eip !82
  %415 = xor i64 %414, %405, !mcsema_real_eip !82
  %416 = and i64 %408, %415, !mcsema_real_eip !82
  %417 = icmp slt i64 %416, 0
  store i1 %417, i1* %OF_val, !mcsema_real_eip !82
  %418 = trunc i64 %407 to i8, !mcsema_real_eip !82
  %419 = tail call i8 @llvm.ctpop.i8(i8 %418), !mcsema_real_eip !82
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  store i1 %421, i1* %PF_val, !mcsema_real_eip !82
  %422 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %422, i1* %CF_val, !mcsema_real_eip !82
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !82
  %423 = load i64, i64* %RCX_val, !mcsema_real_eip !83
  %424 = add i64 %423, %407, !mcsema_real_eip !83
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !83
  %426 = bitcast i64* %425 to i8*
  %427 = load i8, i8* %426, !mcsema_real_eip !83
  %428 = sext i8 %427 to i32, !mcsema_real_eip !83
  %429 = zext i32 %428 to i64, !mcsema_real_eip !83
  store i64 %429, i64* %RSI_val, !mcsema_real_eip !83
  %430 = add nsw i32 %428, -124
  %431 = xor i32 %430, %428, !mcsema_real_eip !84
  %432 = and i32 %431, 16
  %433 = icmp eq i32 %432, 0
  store i1 %433, i1* %AF_val, !mcsema_real_eip !84
  %434 = trunc i32 %430 to i8, !mcsema_real_eip !84
  %435 = tail call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !84
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF_val, !mcsema_real_eip !84
  %438 = icmp eq i32 %430, 0, !mcsema_real_eip !84
  store i1 %438, i1* %ZF_val, !mcsema_real_eip !84
  %439 = icmp slt i32 %430, 0
  store i1 %439, i1* %SF_val, !mcsema_real_eip !84
  %440 = icmp ult i8 %427, 124
  store i1 %440, i1* %CF_val, !mcsema_real_eip !84
  %441 = and i32 %431, %428, !mcsema_real_eip !84
  %442 = icmp slt i32 %441, 0
  store i1 %442, i1* %OF_val, !mcsema_real_eip !84
  %443 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  br i1 %443, label %block_0x222, label %block_0x236, !mcsema_real_eip !85

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !86
  %444 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %445 = add i64 %444, -20, !mcsema_real_eip !87
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !87
  %447 = bitcast i64* %446 to i32*
  %448 = load i32, i32* %447, !mcsema_real_eip !87
  %449 = sext i32 %448 to i64, !mcsema_real_eip !87
  store i64 %449, i64* %RCX_val, !mcsema_real_eip !87
  %450 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %451 = add i64 %450, -24, !mcsema_real_eip !88
  %452 = inttoptr i64 %451 to i64*, !mcsema_real_eip !88
  %453 = bitcast i64* %452 to i32*
  %454 = load i32, i32* %453, !mcsema_real_eip !88
  %455 = sext i32 %454 to i64, !mcsema_real_eip !88
  %456 = mul i64 %455, 11, !mcsema_real_eip !89
  store i64 %456, i64* %RDX_val, !mcsema_real_eip !89
  %457 = load i64, i64* %RAX_val, !mcsema_real_eip !90
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 %457)
  %458 = extractvalue { i64, i1 } %uadd352, 0
  %459 = xor i64 %458, %457, !mcsema_real_eip !90
  %460 = xor i64 %459, %456, !mcsema_real_eip !90
  %461 = and i64 %460, 16, !mcsema_real_eip !90
  %462 = icmp ne i64 %461, 0, !mcsema_real_eip !90
  store i1 %462, i1* %AF_val, !mcsema_real_eip !90
  %463 = icmp slt i64 %458, 0
  store i1 %463, i1* %SF_val, !mcsema_real_eip !90
  %464 = icmp eq i64 %458, 0, !mcsema_real_eip !90
  store i1 %464, i1* %ZF_val, !mcsema_real_eip !90
  %465 = xor i64 %457, -9223372036854775808, !mcsema_real_eip !90
  %466 = xor i64 %465, %456, !mcsema_real_eip !90
  %467 = and i64 %459, %466, !mcsema_real_eip !90
  %468 = icmp slt i64 %467, 0
  store i1 %468, i1* %OF_val, !mcsema_real_eip !90
  %469 = trunc i64 %458 to i8, !mcsema_real_eip !90
  %470 = tail call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !90
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  store i1 %472, i1* %PF_val, !mcsema_real_eip !90
  %473 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %473, i1* %CF_val, !mcsema_real_eip !90
  store i64 %458, i64* %RAX_val, !mcsema_real_eip !90
  %474 = load i64, i64* %RCX_val, !mcsema_real_eip !91
  %475 = add i64 %474, %458, !mcsema_real_eip !91
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !91
  %477 = bitcast i64* %476 to i8*
  store i8 88, i8* %477, !mcsema_real_eip !91
  %478 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %479 = add i64 %478, -36, !mcsema_real_eip !92
  %480 = inttoptr i64 %479 to i64*, !mcsema_real_eip !92
  %481 = bitcast i64* %480 to i32*
  %482 = load i32, i32* %481, !mcsema_real_eip !92
  %uadd353 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 1)
  %483 = extractvalue { i32, i1 } %uadd353, 0
  %484 = xor i32 %483, %482, !mcsema_real_eip !93
  %485 = and i32 %484, 16, !mcsema_real_eip !93
  %486 = icmp ne i32 %485, 0, !mcsema_real_eip !93
  store i1 %486, i1* %AF_val, !mcsema_real_eip !93
  %487 = icmp slt i32 %483, 0
  store i1 %487, i1* %SF_val, !mcsema_real_eip !93
  %488 = icmp eq i32 %483, 0, !mcsema_real_eip !93
  store i1 %488, i1* %ZF_val, !mcsema_real_eip !93
  %489 = xor i32 %482, -2147483648, !mcsema_real_eip !93
  %490 = and i32 %484, %489, !mcsema_real_eip !93
  %491 = icmp slt i32 %490, 0
  store i1 %491, i1* %OF_val, !mcsema_real_eip !93
  %492 = trunc i32 %483 to i8, !mcsema_real_eip !93
  %493 = tail call i8 @llvm.ctpop.i8(i8 %492), !mcsema_real_eip !93
  %494 = and i8 %493, 1
  %495 = icmp eq i8 %494, 0
  store i1 %495, i1* %PF_val, !mcsema_real_eip !93
  %496 = extractvalue { i32, i1 } %uadd353, 1
  store i1 %496, i1* %CF_val, !mcsema_real_eip !93
  %497 = zext i32 %483 to i64, !mcsema_real_eip !93
  store i64 %497, i64* %RSI_val, !mcsema_real_eip !93
  %498 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %499 = add i64 %498, -36, !mcsema_real_eip !94
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !94
  %501 = bitcast i64* %500 to i32*
  store i32 %483, i32* %501, !mcsema_real_eip !94
  %502 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %503 = add i64 %502, -36, !mcsema_real_eip !25
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !25
  %505 = bitcast i64* %504 to i32*
  %506 = load i32, i32* %505, !mcsema_real_eip !25
  %507 = add i32 %506, -28
  %508 = xor i32 %507, %506, !mcsema_real_eip !25
  %509 = and i32 %508, 16
  %510 = icmp eq i32 %509, 0
  store i1 %510, i1* %AF_val, !mcsema_real_eip !25
  %511 = trunc i32 %507 to i8, !mcsema_real_eip !25
  %512 = tail call i8 @llvm.ctpop.i8(i8 %511), !mcsema_real_eip !25
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  store i1 %514, i1* %PF_val, !mcsema_real_eip !25
  %515 = icmp eq i32 %507, 0, !mcsema_real_eip !25
  store i1 %515, i1* %ZF_val, !mcsema_real_eip !25
  %516 = icmp slt i32 %507, 0
  store i1 %516, i1* %SF_val, !mcsema_real_eip !25
  %517 = icmp ult i32 %506, 28, !mcsema_real_eip !25
  store i1 %517, i1* %CF_val, !mcsema_real_eip !25
  %518 = and i32 %508, %506, !mcsema_real_eip !25
  %519 = icmp slt i32 %518, 0
  store i1 %519, i1* %OF_val, !mcsema_real_eip !25
  %tmp = xor i1 %516, %519
  %520 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !27

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %521 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %522 = add i64 %521, -32, !mcsema_real_eip !95
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !95
  %524 = bitcast i64* %523 to i32*
  %525 = load i32, i32* %524, !mcsema_real_eip !95
  %526 = zext i32 %525 to i64, !mcsema_real_eip !95
  store i64 %526, i64* %RAX_val, !mcsema_real_eip !95
  %527 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %528 = add i64 %527, -24, !mcsema_real_eip !96
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !96
  %530 = bitcast i64* %529 to i32*
  %531 = load i32, i32* %530, !mcsema_real_eip !96
  %532 = sub i32 %525, %531, !mcsema_real_eip !96
  %533 = xor i32 %532, %525, !mcsema_real_eip !96
  %534 = xor i32 %533, %531, !mcsema_real_eip !96
  %535 = and i32 %534, 16, !mcsema_real_eip !96
  %536 = icmp ne i32 %535, 0, !mcsema_real_eip !96
  store i1 %536, i1* %AF_val, !mcsema_real_eip !96
  %537 = trunc i32 %532 to i8, !mcsema_real_eip !96
  %538 = tail call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !96
  %539 = and i8 %538, 1
  %540 = icmp eq i8 %539, 0
  store i1 %540, i1* %PF_val, !mcsema_real_eip !96
  %541 = icmp eq i32 %525, %531
  store i1 %541, i1* %ZF_val, !mcsema_real_eip !96
  %542 = icmp slt i32 %532, 0
  store i1 %542, i1* %SF_val, !mcsema_real_eip !96
  %543 = icmp ult i32 %525, %531, !mcsema_real_eip !96
  store i1 %543, i1* %CF_val, !mcsema_real_eip !96
  %544 = xor i32 %531, %525, !mcsema_real_eip !96
  %545 = and i32 %533, %544, !mcsema_real_eip !96
  %546 = icmp slt i32 %545, 0
  store i1 %546, i1* %OF_val, !mcsema_real_eip !96
  %547 = load i1, i1* %ZF_val, !mcsema_real_eip !97
  br i1 %547, label %block_0x25a, label %block_0x266, !mcsema_real_eip !97

block_0x222:                                      ; preds = %block_0x1fc
  %548 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %549 = add i64 %548, -20, !mcsema_real_eip !98
  %550 = inttoptr i64 %549 to i64*, !mcsema_real_eip !98
  %551 = bitcast i64* %550 to i32*
  %552 = load i32, i32* %551, !mcsema_real_eip !98
  store i1 false, i1* %AF_val, !mcsema_real_eip !98
  %553 = trunc i32 %552 to i8, !mcsema_real_eip !98
  %554 = tail call i8 @llvm.ctpop.i8(i8 %553), !mcsema_real_eip !98
  %555 = and i8 %554, 1
  %556 = icmp eq i8 %555, 0
  store i1 %556, i1* %PF_val, !mcsema_real_eip !98
  %557 = icmp eq i32 %552, 0, !mcsema_real_eip !98
  store i1 %557, i1* %ZF_val, !mcsema_real_eip !98
  %558 = icmp slt i32 %552, 0
  store i1 %558, i1* %SF_val, !mcsema_real_eip !98
  store i1 false, i1* %CF_val, !mcsema_real_eip !98
  store i1 false, i1* %OF_val, !mcsema_real_eip !98
  %559 = icmp slt i32 %552, 1
  br i1 %559, label %block_0x236, label %block_0x22c, !mcsema_real_eip !99

block_0x25a:                                      ; preds = %block_0x24e
  %560 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %561 = add i64 %560, -4, !mcsema_real_eip !100
  %562 = inttoptr i64 %561 to i64*, !mcsema_real_eip !100
  %563 = bitcast i64* %562 to i32*
  store i32 2, i32* %563, !mcsema_real_eip !100
  br label %block_0x298, !mcsema_real_eip !101

block_0x22c:                                      ; preds = %block_0x222
  %564 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %565 = add i64 %564, -20, !mcsema_real_eip !102
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !102
  %567 = bitcast i64* %566 to i32*
  %568 = load i32, i32* %567, !mcsema_real_eip !102
  %569 = add i32 %568, -11
  %570 = xor i32 %569, %568, !mcsema_real_eip !102
  %571 = and i32 %570, 16, !mcsema_real_eip !102
  %572 = icmp ne i32 %571, 0, !mcsema_real_eip !102
  store i1 %572, i1* %AF_val, !mcsema_real_eip !102
  %573 = trunc i32 %569 to i8, !mcsema_real_eip !102
  %574 = tail call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !102
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  store i1 %576, i1* %PF_val, !mcsema_real_eip !102
  %577 = icmp eq i32 %569, 0, !mcsema_real_eip !102
  store i1 %577, i1* %ZF_val, !mcsema_real_eip !102
  %578 = icmp slt i32 %569, 0
  store i1 %578, i1* %SF_val, !mcsema_real_eip !102
  %579 = icmp ult i32 %568, 11, !mcsema_real_eip !102
  store i1 %579, i1* %CF_val, !mcsema_real_eip !102
  %580 = and i32 %570, %568, !mcsema_real_eip !102
  %581 = icmp slt i32 %580, 0
  store i1 %581, i1* %OF_val, !mcsema_real_eip !102
  %582 = xor i1 %578, %581
  br i1 %582, label %block_0x242, label %block_0x236, !mcsema_real_eip !103

block_0x291:                                      ; preds = %block_0x266
  %583 = add i64 %520, -4, !mcsema_real_eip !26
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !26
  %585 = bitcast i64* %584 to i32*
  store i32 1, i32* %585, !mcsema_real_eip !26
  %586 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %587 = add i64 %586, -4, !mcsema_real_eip !28
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !28
  %589 = bitcast i64* %588 to i32*
  %590 = load i32, i32* %589, !mcsema_real_eip !28
  %591 = zext i32 %590 to i64, !mcsema_real_eip !28
  store i64 %591, i64* %RAX_val, !mcsema_real_eip !28
  %592 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %592, i64 96)
  %593 = extractvalue { i64, i1 } %uadd357, 0
  %594 = xor i64 %593, %592, !mcsema_real_eip !29
  %595 = and i64 %594, 16, !mcsema_real_eip !29
  %596 = icmp ne i64 %595, 0, !mcsema_real_eip !29
  store i1 %596, i1* %AF_val, !mcsema_real_eip !29
  %597 = icmp slt i64 %593, 0
  store i1 %597, i1* %SF_val, !mcsema_real_eip !29
  %598 = icmp eq i64 %593, 0, !mcsema_real_eip !29
  store i1 %598, i1* %ZF_val, !mcsema_real_eip !29
  %599 = xor i64 %592, -9223372036854775808, !mcsema_real_eip !29
  %600 = and i64 %594, %599, !mcsema_real_eip !29
  %601 = icmp slt i64 %600, 0
  store i1 %601, i1* %OF_val, !mcsema_real_eip !29
  %602 = trunc i64 %593 to i8, !mcsema_real_eip !29
  %603 = tail call i8 @llvm.ctpop.i8(i8 %602), !mcsema_real_eip !29
  %604 = and i8 %603, 1
  %605 = icmp eq i8 %604, 0
  store i1 %605, i1* %PF_val, !mcsema_real_eip !29
  %606 = extractvalue { i64, i1 } %uadd357, 1
  store i1 %606, i1* %CF_val, !mcsema_real_eip !29
  store i64 %593, i64* %RSP_val, !mcsema_real_eip !29
  %607 = inttoptr i64 %593 to i64*, !mcsema_real_eip !30
  %608 = load i64, i64* %607, !mcsema_real_eip !30
  store i64 %608, i64* %RBP_val, !mcsema_real_eip !30
  %609 = add i64 %593, 16, !mcsema_real_eip !31
  store i64 %609, i64* %RSP_val, !mcsema_real_eip !31
  %610 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %610, i64* %RAX, !mcsema_real_eip !31
  %611 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %611, i64* %RBX, !mcsema_real_eip !31
  %612 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %612, i64* %RCX, !mcsema_real_eip !31
  %613 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %613, i64* %RDX, !mcsema_real_eip !31
  %614 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %614, i64* %RSI, !mcsema_real_eip !31
  %615 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %615, i64* %RDI, !mcsema_real_eip !31
  %616 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %616, i64* %RSP, !mcsema_real_eip !31
  %617 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %617, i64* %RBP, !mcsema_real_eip !31
  %618 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %618, i64* %R8, !mcsema_real_eip !31
  %619 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %619, i64* %R9, !mcsema_real_eip !31
  %620 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %620, i64* %R10, !mcsema_real_eip !31
  %621 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %621, i64* %R11, !mcsema_real_eip !31
  %622 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %622, i64* %R12, !mcsema_real_eip !31
  %623 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %623, i64* %R13, !mcsema_real_eip !31
  %624 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %624, i64* %R14, !mcsema_real_eip !31
  %625 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %625, i64* %R15, !mcsema_real_eip !31
  %626 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %626, i64* %RIP, !mcsema_real_eip !31
  %627 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %627, i1* %CF, align 1, !mcsema_real_eip !31
  %628 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %628, i1* %PF, align 1, !mcsema_real_eip !31
  %629 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %629, i1* %AF, align 1, !mcsema_real_eip !31
  %630 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %630, i1* %ZF, align 1, !mcsema_real_eip !31
  %631 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %631, i1* %SF, align 1, !mcsema_real_eip !31
  %632 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %632, i1* %OF, align 1, !mcsema_real_eip !31
  %633 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %633, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %634 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %634, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %635 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %635, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %636 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %636, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %637 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %637, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %638 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %638, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %639 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %639, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %640 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %640, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %641 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %641, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %642 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %642, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %643 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %643, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %644 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %644, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %645 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %645, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %646 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %646, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %647 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %647, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %648 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %648, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %649 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %649, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %650 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %650, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %651 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %651, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %652 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %652, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %653 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %653, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %654 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %654, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %655 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %655, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %656 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %656, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %657 = load i64, i64* %53, align 4
  store i64 %657, i64* %52, align 4
  %658 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %658, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %659 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %659, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %660 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %660, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %661 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %661, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %662 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %662, i128* %XMM0, align 1, !mcsema_real_eip !31
  %663 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %663, i128* %XMM1, align 1, !mcsema_real_eip !31
  %664 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %664, i128* %XMM2, align 1, !mcsema_real_eip !31
  %665 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %665, i128* %XMM3, align 1, !mcsema_real_eip !31
  %666 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %666, i128* %XMM4, align 1, !mcsema_real_eip !31
  %667 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %667, i128* %XMM5, align 1, !mcsema_real_eip !31
  %668 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %668, i128* %XMM6, align 1, !mcsema_real_eip !31
  %669 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %669, i128* %XMM7, align 1, !mcsema_real_eip !31
  %670 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %670, i128* %XMM8, align 1, !mcsema_real_eip !31
  %671 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %671, i128* %XMM9, align 1, !mcsema_real_eip !31
  %672 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %672, i128* %XMM10, align 1, !mcsema_real_eip !31
  %673 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %673, i128* %XMM11, align 1, !mcsema_real_eip !31
  %674 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %674, i128* %XMM12, align 1, !mcsema_real_eip !31
  %675 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %675, i128* %XMM13, align 1, !mcsema_real_eip !31
  %676 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %676, i128* %XMM14, align 1, !mcsema_real_eip !31
  %677 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %677, i128* %XMM15, align 1, !mcsema_real_eip !31
  %678 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %678, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %679 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %679, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x11e:                                      ; preds = %block_0x266
  %680 = add i64 %520, -20, !mcsema_real_eip !32
  %681 = inttoptr i64 %680 to i64*, !mcsema_real_eip !32
  %682 = bitcast i64* %681 to i32*
  %683 = load i32, i32* %682, !mcsema_real_eip !32
  %684 = zext i32 %683 to i64, !mcsema_real_eip !32
  store i64 %684, i64* %RAX_val, !mcsema_real_eip !32
  %685 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %686 = add i64 %685, -28, !mcsema_real_eip !33
  %687 = inttoptr i64 %686 to i64*, !mcsema_real_eip !33
  %688 = bitcast i64* %687 to i32*
  store i32 %683, i32* %688, !mcsema_real_eip !33
  %689 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %690 = add i64 %689, -24, !mcsema_real_eip !34
  %691 = inttoptr i64 %690 to i64*, !mcsema_real_eip !34
  %692 = bitcast i64* %691 to i32*
  %693 = load i32, i32* %692, !mcsema_real_eip !34
  %694 = zext i32 %693 to i64, !mcsema_real_eip !34
  store i64 %694, i64* %RAX_val, !mcsema_real_eip !34
  %695 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %696 = add i64 %695, -32, !mcsema_real_eip !35
  %697 = inttoptr i64 %696 to i64*, !mcsema_real_eip !35
  %698 = bitcast i64* %697 to i32*
  store i32 %693, i32* %698, !mcsema_real_eip !35
  %699 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %700 = add i64 %699, -36, !mcsema_real_eip !36
  %701 = inttoptr i64 %700 to i64*, !mcsema_real_eip !36
  %702 = bitcast i64* %701 to i32*
  %703 = load i32, i32* %702, !mcsema_real_eip !36
  %704 = sext i32 %703 to i64, !mcsema_real_eip !36
  store i64 %704, i64* %RCX_val, !mcsema_real_eip !36
  %705 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %706 = add i64 %705, -64, !mcsema_real_eip !37
  %707 = add i64 %706, %704, !mcsema_real_eip !37
  %708 = inttoptr i64 %707 to i64*, !mcsema_real_eip !37
  %709 = bitcast i64* %708 to i8*
  %710 = load i8, i8* %709, !mcsema_real_eip !37
  %711 = sext i8 %710 to i32, !mcsema_real_eip !37
  %712 = add nsw i32 %711, -97
  %713 = zext i32 %712 to i64, !mcsema_real_eip !38
  store i64 %713, i64* %RCX_val, !mcsema_real_eip !39
  %714 = add nsw i32 %711, -119
  %715 = xor i32 %714, %712, !mcsema_real_eip !40
  %716 = and i32 %715, 16
  %717 = icmp eq i32 %716, 0
  store i1 %717, i1* %AF_val, !mcsema_real_eip !40
  %718 = trunc i32 %714 to i8, !mcsema_real_eip !40
  %719 = tail call i8 @llvm.ctpop.i8(i8 %718), !mcsema_real_eip !40
  %720 = and i8 %719, 1
  %721 = icmp eq i8 %720, 0
  store i1 %721, i1* %PF_val, !mcsema_real_eip !40
  %722 = icmp eq i32 %714, 0, !mcsema_real_eip !40
  store i1 %722, i1* %ZF_val, !mcsema_real_eip !40
  %723 = icmp slt i32 %714, 0
  store i1 %723, i1* %SF_val, !mcsema_real_eip !40
  %724 = icmp ult i32 %712, 22, !mcsema_real_eip !40
  store i1 %724, i1* %CF_val, !mcsema_real_eip !40
  %725 = and i32 %715, %712, !mcsema_real_eip !40
  %726 = icmp slt i32 %725, 0
  store i1 %726, i1* %OF_val, !mcsema_real_eip !40
  %727 = zext i32 %714 to i64, !mcsema_real_eip !40
  store i64 %727, i64* %RAX_val, !mcsema_real_eip !40
  %728 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %729 = add i64 %728, -80, !mcsema_real_eip !41
  %730 = inttoptr i64 %729 to i64*, !mcsema_real_eip !41
  %731 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %731, i64* %730, !mcsema_real_eip !41
  %732 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %733 = add i64 %732, -84, !mcsema_real_eip !42
  %734 = inttoptr i64 %733 to i64*, !mcsema_real_eip !42
  %735 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %736 = trunc i64 %735 to i32, !mcsema_real_eip !42
  %737 = bitcast i64* %734 to i32*
  store i32 %736, i32* %737, !mcsema_real_eip !42
  %738 = load i1, i1* %ZF_val, !mcsema_real_eip !43
  %739 = load i1, i1* %CF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %739, %738
  %740 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !43

block_0x18e:                                      ; preds = %block_0x11e
  %741 = add i64 %740, -4, !mcsema_real_eip !44
  %742 = inttoptr i64 %741 to i64*, !mcsema_real_eip !44
  %743 = bitcast i64* %742 to i32*
  store i32 1, i32* %743, !mcsema_real_eip !44
  br label %block_0x298, !mcsema_real_eip !104

block_0x148:                                      ; preds = %block_0x11e
  %744 = add i64 %740, -80, !mcsema_real_eip !45
  %745 = inttoptr i64 %744 to i64*, !mcsema_real_eip !45
  %746 = load i64, i64* %745, !mcsema_real_eip !45
  store i64 %746, i64* %RAX_val, !mcsema_real_eip !45
  %747 = shl i64 %746, 3
  %748 = add i64 %747, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !46
  %749 = inttoptr i64 %748 to i64*, !mcsema_real_eip !46
  %750 = load i64, i64* %749, !mcsema_real_eip !46
  store i64 %750, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %746, i64* %RAX, !mcsema_real_eip !47
  %751 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %751, i64* %RBX, !mcsema_real_eip !47
  %752 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %752, i64* %RCX, !mcsema_real_eip !47
  %753 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %753, i64* %RDX, !mcsema_real_eip !47
  %754 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %754, i64* %RSI, !mcsema_real_eip !47
  %755 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %755, i64* %RDI, !mcsema_real_eip !47
  %756 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %756, i64* %RSP, !mcsema_real_eip !47
  %757 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %757, i64* %RBP, !mcsema_real_eip !47
  %758 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %758, i64* %R8, !mcsema_real_eip !47
  %759 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %759, i64* %R9, !mcsema_real_eip !47
  %760 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %760, i64* %R10, !mcsema_real_eip !47
  %761 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %761, i64* %R11, !mcsema_real_eip !47
  %762 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %762, i64* %R12, !mcsema_real_eip !47
  %763 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %763, i64* %R13, !mcsema_real_eip !47
  %764 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %764, i64* %R14, !mcsema_real_eip !47
  %765 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %765, i64* %R15, !mcsema_real_eip !47
  %766 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %766, i64* %RIP, !mcsema_real_eip !47
  %767 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %767, i1* %CF, align 1, !mcsema_real_eip !47
  %768 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %768, i1* %PF, align 1, !mcsema_real_eip !47
  %769 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %769, i1* %AF, align 1, !mcsema_real_eip !47
  %770 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %770, i1* %ZF, align 1, !mcsema_real_eip !47
  %771 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %771, i1* %SF, align 1, !mcsema_real_eip !47
  %772 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %772, i1* %OF, align 1, !mcsema_real_eip !47
  %773 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %773, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %774 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %774, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %775 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %775, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %776 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %776, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %777 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %777, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %778 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %778, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %779 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %779, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %780 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %780, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %781 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %781, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %782 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %782, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %783 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %783, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %784 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %784, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %785 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %785, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %786 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %786, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %787 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %787, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %788 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %788, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %789 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %789, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %790 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %790, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %791 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %791, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %792 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %792, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %793 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %793, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %794 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %794, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %795 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %795, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %796 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %796, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %797 = load i64, i64* %53, align 4
  store i64 %797, i64* %52, align 4
  %798 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %798, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %799 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %799, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %800 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %800, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %801 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %801, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %802 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %802, i128* %XMM0, align 1, !mcsema_real_eip !47
  %803 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %803, i128* %XMM1, align 1, !mcsema_real_eip !47
  %804 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %804, i128* %XMM2, align 1, !mcsema_real_eip !47
  %805 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %805, i128* %XMM3, align 1, !mcsema_real_eip !47
  %806 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %806, i128* %XMM4, align 1, !mcsema_real_eip !47
  %807 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %807, i128* %XMM5, align 1, !mcsema_real_eip !47
  %808 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %808, i128* %XMM6, align 1, !mcsema_real_eip !47
  %809 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %809, i128* %XMM7, align 1, !mcsema_real_eip !47
  %810 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %810, i128* %XMM8, align 1, !mcsema_real_eip !47
  %811 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %811, i128* %XMM9, align 1, !mcsema_real_eip !47
  %812 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %812, i128* %XMM10, align 1, !mcsema_real_eip !47
  %813 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %813, i128* %XMM11, align 1, !mcsema_real_eip !47
  %814 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %814, i128* %XMM12, align 1, !mcsema_real_eip !47
  %815 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %815, i128* %XMM13, align 1, !mcsema_real_eip !47
  %816 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %816, i128* %XMM14, align 1, !mcsema_real_eip !47
  %817 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %817, i128* %XMM15, align 1, !mcsema_real_eip !47
  %818 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %818, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %819 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %819, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  call void @do_call_value.3(%struct.regs* %0, i64 %750, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %820 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %820, i64* %RAX_val, !mcsema_real_eip !47
  %821 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %821, i64* %RBX_val, !mcsema_real_eip !47
  %822 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %822, i64* %RCX_val, !mcsema_real_eip !47
  %823 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %823, i64* %RDX_val, !mcsema_real_eip !47
  %824 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %824, i64* %RSI_val, !mcsema_real_eip !47
  %825 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %825, i64* %RDI_val, !mcsema_real_eip !47
  %826 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %826, i64* %RSP_val, !mcsema_real_eip !47
  %827 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %827, i64* %RBP_val, !mcsema_real_eip !47
  %828 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %828, i64* %R8_val, !mcsema_real_eip !47
  %829 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %829, i64* %R9_val, !mcsema_real_eip !47
  %830 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %830, i64* %R10_val, !mcsema_real_eip !47
  %831 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %831, i64* %R11_val, !mcsema_real_eip !47
  %832 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %832, i64* %R12_val, !mcsema_real_eip !47
  %833 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %833, i64* %R13_val, !mcsema_real_eip !47
  %834 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %834, i64* %R14_val, !mcsema_real_eip !47
  %835 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %835, i64* %R15_val, !mcsema_real_eip !47
  %836 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %836, i64* %RIP_val, !mcsema_real_eip !47
  %837 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %837, i1* %CF_val, !mcsema_real_eip !47
  %838 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %838, i1* %PF_val, !mcsema_real_eip !47
  %839 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %839, i1* %AF_val, !mcsema_real_eip !47
  %840 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %840, i1* %ZF_val, !mcsema_real_eip !47
  %841 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %841, i1* %SF_val, !mcsema_real_eip !47
  %842 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %842, i1* %OF_val, !mcsema_real_eip !47
  %843 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %843, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %844 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %844, i1* %FPU_B_val, !mcsema_real_eip !47
  %845 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %845, i1* %FPU_C3_val, !mcsema_real_eip !47
  %846 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %846, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %847 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %847, i1* %FPU_C2_val, !mcsema_real_eip !47
  %848 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %848, i1* %FPU_C1_val, !mcsema_real_eip !47
  %849 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %849, i1* %FPU_C0_val, !mcsema_real_eip !47
  %850 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %850, i1* %FPU_ES_val, !mcsema_real_eip !47
  %851 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %851, i1* %FPU_SF_val, !mcsema_real_eip !47
  %852 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %852, i1* %FPU_PE_val, !mcsema_real_eip !47
  %853 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %853, i1* %FPU_UE_val, !mcsema_real_eip !47
  %854 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %854, i1* %FPU_OE_val, !mcsema_real_eip !47
  %855 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %855, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %856 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %856, i1* %FPU_DE_val, !mcsema_real_eip !47
  %857 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %857, i1* %FPU_IE_val, !mcsema_real_eip !47
  %858 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %858, i1* %FPU_X_val, !mcsema_real_eip !47
  %859 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %859, i2* %FPU_RC_val, !mcsema_real_eip !47
  %860 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %860, i2* %FPU_PC_val, !mcsema_real_eip !47
  %861 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %861, i1* %FPU_PM_val, !mcsema_real_eip !47
  %862 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %862, i1* %FPU_UM_val, !mcsema_real_eip !47
  %863 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %863, i1* %FPU_OM_val, !mcsema_real_eip !47
  %864 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %864, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %865 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %865, i1* %FPU_DM_val, !mcsema_real_eip !47
  %866 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %866, i1* %FPU_IM_val, !mcsema_real_eip !47
  %867 = load i64, i64* %52, align 4
  store i64 %867, i64* %53, align 4
  %868 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %868, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %869 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %869, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %870 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %870, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %871 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %871, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %872 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %872, i128* %XMM0_val, !mcsema_real_eip !47
  %873 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %873, i128* %XMM1_val, !mcsema_real_eip !47
  %874 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %874, i128* %XMM2_val, !mcsema_real_eip !47
  %875 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %875, i128* %XMM3_val, !mcsema_real_eip !47
  %876 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %876, i128* %XMM4_val, !mcsema_real_eip !47
  %877 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %877, i128* %XMM5_val, !mcsema_real_eip !47
  %878 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %878, i128* %XMM6_val, !mcsema_real_eip !47
  %879 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %879, i128* %XMM7_val, !mcsema_real_eip !47
  %880 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %880, i128* %XMM8_val, !mcsema_real_eip !47
  %881 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %881, i128* %XMM9_val, !mcsema_real_eip !47
  %882 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %882, i128* %XMM10_val, !mcsema_real_eip !47
  %883 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %883, i128* %XMM11_val, !mcsema_real_eip !47
  %884 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %884, i128* %XMM12_val, !mcsema_real_eip !47
  %885 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %885, i128* %XMM13_val, !mcsema_real_eip !47
  %886 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %886, i128* %XMM14_val, !mcsema_real_eip !47
  %887 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %887, i128* %XMM15_val, !mcsema_real_eip !47
  %888 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %888, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %889 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %889, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %890 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %891 = add i64 %890, 8, !mcsema_real_eip !47
  store i64 %891, i64* %RSP_val, !mcsema_real_eip !47
  %892 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %892, i64* %RAX, !mcsema_real_eip !47
  %893 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %893, i64* %RBX, !mcsema_real_eip !47
  %894 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %894, i64* %RCX, !mcsema_real_eip !47
  %895 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %895, i64* %RDX, !mcsema_real_eip !47
  %896 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %896, i64* %RSI, !mcsema_real_eip !47
  %897 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %897, i64* %RDI, !mcsema_real_eip !47
  %898 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %898, i64* %RSP, !mcsema_real_eip !47
  %899 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %899, i64* %RBP, !mcsema_real_eip !47
  %900 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %900, i64* %R8, !mcsema_real_eip !47
  %901 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %901, i64* %R9, !mcsema_real_eip !47
  %902 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %902, i64* %R10, !mcsema_real_eip !47
  %903 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %903, i64* %R11, !mcsema_real_eip !47
  %904 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %904, i64* %R12, !mcsema_real_eip !47
  %905 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %905, i64* %R13, !mcsema_real_eip !47
  %906 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %906, i64* %R14, !mcsema_real_eip !47
  %907 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %907, i64* %R15, !mcsema_real_eip !47
  %908 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %908, i64* %RIP, !mcsema_real_eip !47
  %909 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %909, i1* %CF, align 1, !mcsema_real_eip !47
  %910 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %910, i1* %PF, align 1, !mcsema_real_eip !47
  %911 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %911, i1* %AF, align 1, !mcsema_real_eip !47
  %912 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %912, i1* %ZF, align 1, !mcsema_real_eip !47
  %913 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %913, i1* %SF, align 1, !mcsema_real_eip !47
  %914 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %914, i1* %OF, align 1, !mcsema_real_eip !47
  %915 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %915, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %916 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %916, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %917 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %917, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %918 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %918, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %919 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %919, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %920 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %920, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %921 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %921, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %922 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %922, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %923 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %923, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %924 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %924, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %925 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %925, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %926 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %926, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %927 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %927, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %928 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %928, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %929 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %929, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %930 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %930, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %931 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %931, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %932 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %932, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %933 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %933, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %934 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %934, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %935 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %935, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %936 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %936, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %937 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %937, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %938 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %938, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %939 = load i64, i64* %53, align 4
  store i64 %939, i64* %52, align 4
  %940 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %940, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %941 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %941, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %942 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %942, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %943 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %943, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %944 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %944, i128* %XMM0, align 1, !mcsema_real_eip !47
  %945 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %945, i128* %XMM1, align 1, !mcsema_real_eip !47
  %946 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %946, i128* %XMM2, align 1, !mcsema_real_eip !47
  %947 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %947, i128* %XMM3, align 1, !mcsema_real_eip !47
  %948 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %948, i128* %XMM4, align 1, !mcsema_real_eip !47
  %949 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %949, i128* %XMM5, align 1, !mcsema_real_eip !47
  %950 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %950, i128* %XMM6, align 1, !mcsema_real_eip !47
  %951 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %951, i128* %XMM7, align 1, !mcsema_real_eip !47
  %952 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %952, i128* %XMM8, align 1, !mcsema_real_eip !47
  %953 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %953, i128* %XMM9, align 1, !mcsema_real_eip !47
  %954 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %954, i128* %XMM10, align 1, !mcsema_real_eip !47
  %955 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %955, i128* %XMM11, align 1, !mcsema_real_eip !47
  %956 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %956, i128* %XMM12, align 1, !mcsema_real_eip !47
  %957 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %957, i128* %XMM13, align 1, !mcsema_real_eip !47
  %958 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %958, i128* %XMM14, align 1, !mcsema_real_eip !47
  %959 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %959, i128* %XMM15, align 1, !mcsema_real_eip !47
  %960 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %960, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %961 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %961, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

define internal x86_64_sysvcc void @sub_164(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 84
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %R15_val = alloca i64, !mcsema_real_eip !108
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !108
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !108
  %XMM15_val = alloca i128, !mcsema_real_eip !108
  %XMM14_val = alloca i128, !mcsema_real_eip !108
  %XMM13_val = alloca i128, !mcsema_real_eip !108
  %XMM12_val = alloca i128, !mcsema_real_eip !108
  %XMM11_val = alloca i128, !mcsema_real_eip !108
  %XMM10_val = alloca i128, !mcsema_real_eip !108
  %XMM9_val = alloca i128, !mcsema_real_eip !108
  %XMM8_val = alloca i128, !mcsema_real_eip !108
  %XMM7_val = alloca i128, !mcsema_real_eip !108
  %XMM6_val = alloca i128, !mcsema_real_eip !108
  %XMM5_val = alloca i128, !mcsema_real_eip !108
  %XMM4_val = alloca i128, !mcsema_real_eip !108
  %XMM3_val = alloca i128, !mcsema_real_eip !108
  %XMM2_val = alloca i128, !mcsema_real_eip !108
  %XMM1_val = alloca i128, !mcsema_real_eip !108
  %XMM0_val = alloca i128, !mcsema_real_eip !108
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !108
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !108
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !108
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !108
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !108
  %FPU_IM_val = alloca i1, !mcsema_real_eip !108
  %FPU_DM_val = alloca i1, !mcsema_real_eip !108
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !108
  %FPU_OM_val = alloca i1, !mcsema_real_eip !108
  %FPU_UM_val = alloca i1, !mcsema_real_eip !108
  %FPU_PM_val = alloca i1, !mcsema_real_eip !108
  %FPU_PC_val = alloca i2, !mcsema_real_eip !108
  %FPU_RC_val = alloca i2, !mcsema_real_eip !108
  %FPU_X_val = alloca i1, !mcsema_real_eip !108
  %FPU_IE_val = alloca i1, !mcsema_real_eip !108
  %FPU_DE_val = alloca i1, !mcsema_real_eip !108
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !108
  %FPU_OE_val = alloca i1, !mcsema_real_eip !108
  %FPU_UE_val = alloca i1, !mcsema_real_eip !108
  %FPU_PE_val = alloca i1, !mcsema_real_eip !108
  %FPU_SF_val = alloca i1, !mcsema_real_eip !108
  %FPU_ES_val = alloca i1, !mcsema_real_eip !108
  %FPU_C0_val = alloca i1, !mcsema_real_eip !108
  %FPU_C1_val = alloca i1, !mcsema_real_eip !108
  %FPU_C2_val = alloca i1, !mcsema_real_eip !108
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !108
  %FPU_C3_val = alloca i1, !mcsema_real_eip !108
  %FPU_B_val = alloca i1, !mcsema_real_eip !108
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !108
  %DF_val = alloca i1, !mcsema_real_eip !108
  %OF_val = alloca i1, !mcsema_real_eip !108
  %SF_val = alloca i1, !mcsema_real_eip !108
  %CF_val = alloca i1, !mcsema_real_eip !108
  %AF_val = alloca i1, !mcsema_real_eip !108
  %PF_val = alloca i1, !mcsema_real_eip !108
  %ZF_val = alloca i1, !mcsema_real_eip !108
  %RIP_val = alloca i64, !mcsema_real_eip !108
  %R14_val = alloca i64, !mcsema_real_eip !108
  %R13_val = alloca i64, !mcsema_real_eip !108
  %R12_val = alloca i64, !mcsema_real_eip !108
  %R11_val = alloca i64, !mcsema_real_eip !108
  %R10_val = alloca i64, !mcsema_real_eip !108
  %R9_val = alloca i64, !mcsema_real_eip !108
  %R8_val = alloca i64, !mcsema_real_eip !108
  %RSP_val = alloca i64, !mcsema_real_eip !108
  %RBP_val = alloca i64, !mcsema_real_eip !108
  %RDI_val = alloca i64, !mcsema_real_eip !108
  %RSI_val = alloca i64, !mcsema_real_eip !108
  %RDX_val = alloca i64, !mcsema_real_eip !108
  %RCX_val = alloca i64, !mcsema_real_eip !108
  %RBX_val = alloca i64, !mcsema_real_eip !108
  %RAX_val = alloca i64, !mcsema_real_eip !108
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !108
  %1 = load i64, i64* %RAX, !mcsema_real_eip !108
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !108
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !108
  %2 = load i64, i64* %RBX, !mcsema_real_eip !108
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !108
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !108
  %3 = load i64, i64* %RCX, !mcsema_real_eip !108
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !108
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !108
  %4 = load i64, i64* %RDX, !mcsema_real_eip !108
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !108
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !108
  %5 = load i64, i64* %RSI, !mcsema_real_eip !108
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !108
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !108
  %6 = load i64, i64* %RDI, !mcsema_real_eip !108
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !108
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !108
  %7 = load i64, i64* %RSP, !mcsema_real_eip !108
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !108
  %8 = load i64, i64* %RBP, !mcsema_real_eip !108
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !108
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !108
  %9 = load i64, i64* %R8, !mcsema_real_eip !108
  store i64 %9, i64* %R8_val, !mcsema_real_eip !108
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !108
  %10 = load i64, i64* %R9, !mcsema_real_eip !108
  store i64 %10, i64* %R9_val, !mcsema_real_eip !108
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !108
  %11 = load i64, i64* %R10, !mcsema_real_eip !108
  store i64 %11, i64* %R10_val, !mcsema_real_eip !108
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !108
  %12 = load i64, i64* %R11, !mcsema_real_eip !108
  store i64 %12, i64* %R11_val, !mcsema_real_eip !108
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !108
  %13 = load i64, i64* %R12, !mcsema_real_eip !108
  store i64 %13, i64* %R12_val, !mcsema_real_eip !108
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !108
  %14 = load i64, i64* %R13, !mcsema_real_eip !108
  store i64 %14, i64* %R13_val, !mcsema_real_eip !108
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !108
  %15 = load i64, i64* %R14, !mcsema_real_eip !108
  store i64 %15, i64* %R14_val, !mcsema_real_eip !108
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !108
  %16 = load i64, i64* %R15, !mcsema_real_eip !108
  store i64 %16, i64* %R15_val, !mcsema_real_eip !108
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !108
  %17 = load i64, i64* %RIP, !mcsema_real_eip !108
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !108
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !108
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !108
  store i1 %18, i1* %CF_val, !mcsema_real_eip !108
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !108
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !108
  store i1 %19, i1* %PF_val, !mcsema_real_eip !108
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !108
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !108
  store i1 %20, i1* %AF_val, !mcsema_real_eip !108
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !108
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !108
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !108
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !108
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !108
  store i1 %22, i1* %SF_val, !mcsema_real_eip !108
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !108
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !108
  store i1 %23, i1* %OF_val, !mcsema_real_eip !108
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !108
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !108
  store i1 %24, i1* %DF_val, !mcsema_real_eip !108
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !108
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !108
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !108
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !108
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !108
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !108
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !108
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !108
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !108
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !108
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !108
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !108
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !108
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !108
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !108
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !108
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !108
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !108
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !108
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !108
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !108
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !108
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !108
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !108
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !108
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !108
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !108
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !108
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !108
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !108
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !108
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !108
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !108
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !108
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !108
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !108
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !108
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !108
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !108
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !108
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !108
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !108
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !108
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !108
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !108
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !108
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !108
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !108
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !108
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !108
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !108
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !108
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !108
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !108
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !108
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !108
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !108
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !108
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !108
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !108
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !108
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !108
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !108
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !108
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !108
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !108
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !108
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !108
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !108
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !108
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !108
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !108
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !108
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !108
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !108
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !108
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !108
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !108
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !108
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !108
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !108
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !108
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !108
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !108
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !108
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !108
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !108
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !108
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !108
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !108
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !108
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !108
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !108
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !108
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !108
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !108
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !108
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !108
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !108
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !108
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !108
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !108
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !108
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !108
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !108
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !108
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !108
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !108
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !108
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !108
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !108
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !108
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !108
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !108
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !108
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !108
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !108
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !108
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !108
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !108
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !108
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !108
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !108
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !108
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !108
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !108
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !108
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !108
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !108
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !108
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !108
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !108
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !108
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !108
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !108
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !108
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !108
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !108
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !108
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !108
  %78 = add i64 %77, -24, !mcsema_real_eip !108
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !108
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !108
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 1)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !109
  %84 = and i32 %83, 16, !mcsema_real_eip !109
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !109
  store i1 %85, i1* %AF_val, !mcsema_real_eip !109
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !109
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !109
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !109
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !109
  %89 = and i32 %83, %88, !mcsema_real_eip !109
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !109
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !109
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !109
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !109
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !109
  %96 = load i64, i64* %RBP_val, !mcsema_real_eip !110
  %97 = add i64 %96, -24, !mcsema_real_eip !110
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !110
  %99 = bitcast i64* %98 to i32*
  store i32 %82, i32* %99, !mcsema_real_eip !110
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !51
  %100 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %101 = add i64 %100, -20, !mcsema_real_eip !52
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !52
  %103 = bitcast i64* %102 to i32*
  %104 = load i32, i32* %103, !mcsema_real_eip !52
  %105 = sext i32 %104 to i64, !mcsema_real_eip !52
  store i64 %105, i64* %RCX_val, !mcsema_real_eip !52
  %106 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %107 = add i64 %106, -24, !mcsema_real_eip !53
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !53
  %109 = bitcast i64* %108 to i32*
  %110 = load i32, i32* %109, !mcsema_real_eip !53
  %111 = sext i32 %110 to i64, !mcsema_real_eip !53
  %112 = mul i64 %111, 11, !mcsema_real_eip !54
  store i64 %112, i64* %RDX_val, !mcsema_real_eip !54
  %113 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  %uadd347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %113)
  %114 = extractvalue { i64, i1 } %uadd347, 0
  %115 = xor i64 %114, %113, !mcsema_real_eip !55
  %116 = xor i64 %115, %112, !mcsema_real_eip !55
  %117 = and i64 %116, 16, !mcsema_real_eip !55
  %118 = icmp ne i64 %117, 0, !mcsema_real_eip !55
  store i1 %118, i1* %AF_val, !mcsema_real_eip !55
  %119 = icmp slt i64 %114, 0
  store i1 %119, i1* %SF_val, !mcsema_real_eip !55
  %120 = icmp eq i64 %114, 0, !mcsema_real_eip !55
  store i1 %120, i1* %ZF_val, !mcsema_real_eip !55
  %121 = xor i64 %113, -9223372036854775808, !mcsema_real_eip !55
  %122 = xor i64 %121, %112, !mcsema_real_eip !55
  %123 = and i64 %115, %122, !mcsema_real_eip !55
  %124 = icmp slt i64 %123, 0
  store i1 %124, i1* %OF_val, !mcsema_real_eip !55
  %125 = trunc i64 %114 to i8, !mcsema_real_eip !55
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !55
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF_val, !mcsema_real_eip !55
  %129 = extractvalue { i64, i1 } %uadd347, 1
  store i1 %129, i1* %CF_val, !mcsema_real_eip !55
  store i64 %114, i64* %RAX_val, !mcsema_real_eip !55
  %130 = load i64, i64* %RCX_val, !mcsema_real_eip !56
  %131 = add i64 %130, %114, !mcsema_real_eip !56
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !56
  %133 = bitcast i64* %132 to i8*
  %134 = load i8, i8* %133, !mcsema_real_eip !56
  %135 = sext i8 %134 to i32, !mcsema_real_eip !56
  %136 = zext i32 %135 to i64, !mcsema_real_eip !56
  store i64 %136, i64* %RSI_val, !mcsema_real_eip !56
  %137 = add nsw i32 %135, -35
  %138 = xor i32 %137, %135, !mcsema_real_eip !57
  %139 = and i32 %138, 16, !mcsema_real_eip !57
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !57
  store i1 %140, i1* %AF_val, !mcsema_real_eip !57
  %141 = trunc i32 %137 to i8, !mcsema_real_eip !57
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !57
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF_val, !mcsema_real_eip !57
  %145 = icmp eq i32 %137, 0, !mcsema_real_eip !57
  store i1 %145, i1* %ZF_val, !mcsema_real_eip !57
  %146 = icmp slt i32 %137, 0
  store i1 %146, i1* %SF_val, !mcsema_real_eip !57
  %147 = icmp ult i8 %134, 35
  store i1 %147, i1* %CF_val, !mcsema_real_eip !57
  %148 = and i32 %138, %135, !mcsema_real_eip !57
  %149 = icmp slt i32 %148, 0
  store i1 %149, i1* %OF_val, !mcsema_real_eip !57
  %150 = load i1, i1* %ZF_val, !mcsema_real_eip !58
  br i1 %150, label %block_0x1c0, label %block_0x1cc, !mcsema_real_eip !58

block_0x1cc:                                      ; preds = %entry
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !59
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %152 = add i64 %151, -20, !mcsema_real_eip !60
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !60
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, !mcsema_real_eip !60
  %156 = sext i32 %155 to i64, !mcsema_real_eip !60
  store i64 %156, i64* %RCX_val, !mcsema_real_eip !60
  %157 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %158 = add i64 %157, -24, !mcsema_real_eip !61
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !61
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, !mcsema_real_eip !61
  %162 = sext i32 %161 to i64, !mcsema_real_eip !61
  %163 = mul i64 %162, 11, !mcsema_real_eip !62
  store i64 %163, i64* %RDX_val, !mcsema_real_eip !62
  %164 = load i64, i64* %RAX_val, !mcsema_real_eip !63
  %uadd349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %163, i64 %164)
  %165 = extractvalue { i64, i1 } %uadd349, 0
  %166 = xor i64 %165, %164, !mcsema_real_eip !63
  %167 = xor i64 %166, %163, !mcsema_real_eip !63
  %168 = and i64 %167, 16, !mcsema_real_eip !63
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !63
  store i1 %169, i1* %AF_val, !mcsema_real_eip !63
  %170 = icmp slt i64 %165, 0
  store i1 %170, i1* %SF_val, !mcsema_real_eip !63
  %171 = icmp eq i64 %165, 0, !mcsema_real_eip !63
  store i1 %171, i1* %ZF_val, !mcsema_real_eip !63
  %172 = xor i64 %164, -9223372036854775808, !mcsema_real_eip !63
  %173 = xor i64 %172, %163, !mcsema_real_eip !63
  %174 = and i64 %166, %173, !mcsema_real_eip !63
  %175 = icmp slt i64 %174, 0
  store i1 %175, i1* %OF_val, !mcsema_real_eip !63
  %176 = trunc i64 %165 to i8, !mcsema_real_eip !63
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !63
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  store i1 %179, i1* %PF_val, !mcsema_real_eip !63
  %180 = extractvalue { i64, i1 } %uadd349, 1
  store i1 %180, i1* %CF_val, !mcsema_real_eip !63
  store i64 %165, i64* %RAX_val, !mcsema_real_eip !63
  %181 = load i64, i64* %RCX_val, !mcsema_real_eip !64
  %182 = add i64 %181, %165, !mcsema_real_eip !64
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !64
  %184 = bitcast i64* %183 to i8*
  %185 = load i8, i8* %184, !mcsema_real_eip !64
  %186 = sext i8 %185 to i32, !mcsema_real_eip !64
  %187 = zext i32 %186 to i64, !mcsema_real_eip !64
  store i64 %187, i64* %RSI_val, !mcsema_real_eip !64
  %188 = add nsw i32 %186, -32
  %189 = xor i32 %188, %186, !mcsema_real_eip !65
  %190 = and i32 %189, 16, !mcsema_real_eip !65
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !65
  store i1 %191, i1* %AF_val, !mcsema_real_eip !65
  %192 = trunc i32 %188 to i8, !mcsema_real_eip !65
  %193 = tail call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !65
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  store i1 %195, i1* %PF_val, !mcsema_real_eip !65
  %196 = icmp eq i32 %188, 0, !mcsema_real_eip !65
  store i1 %196, i1* %ZF_val, !mcsema_real_eip !65
  %197 = icmp slt i32 %188, 0
  store i1 %197, i1* %SF_val, !mcsema_real_eip !65
  %198 = icmp ult i8 %185, 32
  store i1 %198, i1* %CF_val, !mcsema_real_eip !65
  %199 = and i32 %189, %186, !mcsema_real_eip !65
  %200 = icmp slt i32 %199, 0
  store i1 %200, i1* %OF_val, !mcsema_real_eip !65
  %201 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  br i1 %201, label %block_0x242, label %block_0x1f2, !mcsema_real_eip !66

block_0x1c0:                                      ; preds = %entry
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %203 = add i64 %202, -4, !mcsema_real_eip !67
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !67
  %205 = bitcast i64* %204 to i32*
  store i32 0, i32* %205, !mcsema_real_eip !67
  br label %block_0x298, !mcsema_real_eip !68

block_0x298:                                      ; preds = %block_0x18e, %block_0x25a, %block_0x1c0
  %206 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %207 = add i64 %206, -4, !mcsema_real_eip !28
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !28
  %209 = bitcast i64* %208 to i32*
  %210 = load i32, i32* %209, !mcsema_real_eip !28
  %211 = zext i32 %210 to i64, !mcsema_real_eip !28
  store i64 %211, i64* %RAX_val, !mcsema_real_eip !28
  %212 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 96)
  %213 = extractvalue { i64, i1 } %uadd348, 0
  %214 = xor i64 %213, %212, !mcsema_real_eip !29
  %215 = and i64 %214, 16, !mcsema_real_eip !29
  %216 = icmp ne i64 %215, 0, !mcsema_real_eip !29
  store i1 %216, i1* %AF_val, !mcsema_real_eip !29
  %217 = icmp slt i64 %213, 0
  store i1 %217, i1* %SF_val, !mcsema_real_eip !29
  %218 = icmp eq i64 %213, 0, !mcsema_real_eip !29
  store i1 %218, i1* %ZF_val, !mcsema_real_eip !29
  %219 = xor i64 %212, -9223372036854775808, !mcsema_real_eip !29
  %220 = and i64 %214, %219, !mcsema_real_eip !29
  %221 = icmp slt i64 %220, 0
  store i1 %221, i1* %OF_val, !mcsema_real_eip !29
  %222 = trunc i64 %213 to i8, !mcsema_real_eip !29
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !29
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF_val, !mcsema_real_eip !29
  %226 = extractvalue { i64, i1 } %uadd348, 1
  store i1 %226, i1* %CF_val, !mcsema_real_eip !29
  store i64 %213, i64* %RSP_val, !mcsema_real_eip !29
  %227 = inttoptr i64 %213 to i64*, !mcsema_real_eip !30
  %228 = load i64, i64* %227, !mcsema_real_eip !30
  store i64 %228, i64* %RBP_val, !mcsema_real_eip !30
  %229 = add i64 %213, 16, !mcsema_real_eip !31
  store i64 %229, i64* %RSP_val, !mcsema_real_eip !31
  %230 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %230, i64* %RAX, !mcsema_real_eip !31
  %231 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %231, i64* %RBX, !mcsema_real_eip !31
  %232 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %232, i64* %RCX, !mcsema_real_eip !31
  %233 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %233, i64* %RDX, !mcsema_real_eip !31
  %234 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %234, i64* %RSI, !mcsema_real_eip !31
  %235 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %235, i64* %RDI, !mcsema_real_eip !31
  %236 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %236, i64* %RSP, !mcsema_real_eip !31
  %237 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %237, i64* %RBP, !mcsema_real_eip !31
  %238 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %238, i64* %R8, !mcsema_real_eip !31
  %239 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %239, i64* %R9, !mcsema_real_eip !31
  %240 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %240, i64* %R10, !mcsema_real_eip !31
  %241 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %241, i64* %R11, !mcsema_real_eip !31
  %242 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %242, i64* %R12, !mcsema_real_eip !31
  %243 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %243, i64* %R13, !mcsema_real_eip !31
  %244 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %244, i64* %R14, !mcsema_real_eip !31
  %245 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %245, i64* %R15, !mcsema_real_eip !31
  %246 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %246, i64* %RIP, !mcsema_real_eip !31
  %247 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %247, i1* %CF, align 1, !mcsema_real_eip !31
  %248 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %248, i1* %PF, align 1, !mcsema_real_eip !31
  %249 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %249, i1* %AF, align 1, !mcsema_real_eip !31
  %250 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %250, i1* %ZF, align 1, !mcsema_real_eip !31
  %251 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %251, i1* %SF, align 1, !mcsema_real_eip !31
  %252 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %252, i1* %OF, align 1, !mcsema_real_eip !31
  %253 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %253, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %254 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %254, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %255 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %255, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %256 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %256, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %257 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %257, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %258 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %258, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %259 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %259, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %260 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %260, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %261 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %261, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %262 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %262, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %263 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %263, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %264 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %264, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %265 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %265, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %266 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %266, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %267 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %267, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %268 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %268, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %269 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %269, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %270 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %270, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %271 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %271, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %272 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %272, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %273 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %273, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %274 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %274, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %275 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %275, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %276 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %276, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %277 = load i64, i64* %53, align 4
  store i64 %277, i64* %52, align 4
  %278 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %278, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %279 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %279, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %280 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %280, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %281 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %281, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %282 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %282, i128* %XMM0, align 1, !mcsema_real_eip !31
  %283 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %283, i128* %XMM1, align 1, !mcsema_real_eip !31
  %284 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %284, i128* %XMM2, align 1, !mcsema_real_eip !31
  %285 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %285, i128* %XMM3, align 1, !mcsema_real_eip !31
  %286 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %286, i128* %XMM4, align 1, !mcsema_real_eip !31
  %287 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %287, i128* %XMM5, align 1, !mcsema_real_eip !31
  %288 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %288, i128* %XMM6, align 1, !mcsema_real_eip !31
  %289 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %289, i128* %XMM7, align 1, !mcsema_real_eip !31
  %290 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %290, i128* %XMM8, align 1, !mcsema_real_eip !31
  %291 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %291, i128* %XMM9, align 1, !mcsema_real_eip !31
  %292 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %292, i128* %XMM10, align 1, !mcsema_real_eip !31
  %293 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %293, i128* %XMM11, align 1, !mcsema_real_eip !31
  %294 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %294, i128* %XMM12, align 1, !mcsema_real_eip !31
  %295 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %295, i128* %XMM13, align 1, !mcsema_real_eip !31
  %296 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %296, i128* %XMM14, align 1, !mcsema_real_eip !31
  %297 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %297, i128* %XMM15, align 1, !mcsema_real_eip !31
  %298 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %298, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %299 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %299, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x242:                                      ; preds = %block_0x22c, %block_0x1cc
  %300 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %301 = add i64 %300, -28, !mcsema_real_eip !69
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !69
  %303 = bitcast i64* %302 to i32*
  %304 = load i32, i32* %303, !mcsema_real_eip !69
  %305 = zext i32 %304 to i64, !mcsema_real_eip !69
  store i64 %305, i64* %RAX_val, !mcsema_real_eip !69
  %306 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %307 = add i64 %306, -20, !mcsema_real_eip !70
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !70
  %309 = bitcast i64* %308 to i32*
  %310 = load i32, i32* %309, !mcsema_real_eip !70
  %311 = sub i32 %304, %310, !mcsema_real_eip !70
  %312 = xor i32 %311, %304, !mcsema_real_eip !70
  %313 = xor i32 %312, %310, !mcsema_real_eip !70
  %314 = and i32 %313, 16, !mcsema_real_eip !70
  %315 = icmp ne i32 %314, 0, !mcsema_real_eip !70
  store i1 %315, i1* %AF_val, !mcsema_real_eip !70
  %316 = trunc i32 %311 to i8, !mcsema_real_eip !70
  %317 = tail call i8 @llvm.ctpop.i8(i8 %316), !mcsema_real_eip !70
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  store i1 %319, i1* %PF_val, !mcsema_real_eip !70
  %320 = icmp eq i32 %304, %310
  store i1 %320, i1* %ZF_val, !mcsema_real_eip !70
  %321 = icmp slt i32 %311, 0
  store i1 %321, i1* %SF_val, !mcsema_real_eip !70
  %322 = icmp ult i32 %304, %310, !mcsema_real_eip !70
  store i1 %322, i1* %CF_val, !mcsema_real_eip !70
  %323 = xor i32 %310, %304, !mcsema_real_eip !70
  %324 = and i32 %312, %323, !mcsema_real_eip !70
  %325 = icmp slt i32 %324, 0
  store i1 %325, i1* %OF_val, !mcsema_real_eip !70
  %326 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %326, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1f2:                                      ; preds = %block_0x1cc
  %327 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %328 = add i64 %327, -24, !mcsema_real_eip !72
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !72
  %330 = bitcast i64* %329 to i32*
  %331 = load i32, i32* %330, !mcsema_real_eip !72
  %332 = add i32 %331, -2
  %333 = xor i32 %332, %331, !mcsema_real_eip !72
  %334 = and i32 %333, 16, !mcsema_real_eip !72
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !72
  store i1 %335, i1* %AF_val, !mcsema_real_eip !72
  %336 = trunc i32 %332 to i8, !mcsema_real_eip !72
  %337 = tail call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !72
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF_val, !mcsema_real_eip !72
  %340 = icmp eq i32 %332, 0, !mcsema_real_eip !72
  store i1 %340, i1* %ZF_val, !mcsema_real_eip !72
  %341 = icmp slt i32 %332, 0
  store i1 %341, i1* %SF_val, !mcsema_real_eip !72
  %342 = icmp ult i32 %331, 2, !mcsema_real_eip !72
  store i1 %342, i1* %CF_val, !mcsema_real_eip !72
  %343 = and i32 %333, %331, !mcsema_real_eip !72
  %344 = icmp slt i32 %343, 0
  store i1 %344, i1* %OF_val, !mcsema_real_eip !72
  %345 = load i1, i1* %ZF_val, !mcsema_real_eip !73
  br i1 %345, label %block_0x1fc, label %block_0x236, !mcsema_real_eip !73

block_0x236:                                      ; preds = %block_0x22c, %block_0x222, %block_0x1fc, %block_0x1f2
  %346 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %347 = add i64 %346, -28, !mcsema_real_eip !74
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !74
  %349 = bitcast i64* %348 to i32*
  %350 = load i32, i32* %349, !mcsema_real_eip !74
  %351 = zext i32 %350 to i64, !mcsema_real_eip !74
  store i64 %351, i64* %RAX_val, !mcsema_real_eip !74
  %352 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %353 = add i64 %352, -20, !mcsema_real_eip !75
  %354 = inttoptr i64 %353 to i64*, !mcsema_real_eip !75
  %355 = bitcast i64* %354 to i32*
  store i32 %350, i32* %355, !mcsema_real_eip !75
  %356 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %357 = add i64 %356, -32, !mcsema_real_eip !76
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !76
  %359 = bitcast i64* %358 to i32*
  %360 = load i32, i32* %359, !mcsema_real_eip !76
  %361 = zext i32 %360 to i64, !mcsema_real_eip !76
  store i64 %361, i64* %RAX_val, !mcsema_real_eip !76
  %362 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %363 = add i64 %362, -24, !mcsema_real_eip !77
  %364 = inttoptr i64 %363 to i64*, !mcsema_real_eip !77
  %365 = bitcast i64* %364 to i32*
  store i32 %360, i32* %365, !mcsema_real_eip !77
  %366 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %367 = add i64 %366, -28, !mcsema_real_eip !69
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !69
  %369 = bitcast i64* %368 to i32*
  %370 = load i32, i32* %369, !mcsema_real_eip !69
  %371 = zext i32 %370 to i64, !mcsema_real_eip !69
  store i64 %371, i64* %RAX_val, !mcsema_real_eip !69
  %372 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %373 = add i64 %372, -20, !mcsema_real_eip !70
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !70
  %375 = bitcast i64* %374 to i32*
  %376 = load i32, i32* %375, !mcsema_real_eip !70
  %377 = sub i32 %370, %376, !mcsema_real_eip !70
  %378 = xor i32 %377, %370, !mcsema_real_eip !70
  %379 = xor i32 %378, %376, !mcsema_real_eip !70
  %380 = and i32 %379, 16, !mcsema_real_eip !70
  %381 = icmp ne i32 %380, 0, !mcsema_real_eip !70
  store i1 %381, i1* %AF_val, !mcsema_real_eip !70
  %382 = trunc i32 %377 to i8, !mcsema_real_eip !70
  %383 = tail call i8 @llvm.ctpop.i8(i8 %382), !mcsema_real_eip !70
  %384 = and i8 %383, 1
  %385 = icmp eq i8 %384, 0
  store i1 %385, i1* %PF_val, !mcsema_real_eip !70
  %386 = icmp eq i32 %370, %376
  store i1 %386, i1* %ZF_val, !mcsema_real_eip !70
  %387 = icmp slt i32 %377, 0
  store i1 %387, i1* %SF_val, !mcsema_real_eip !70
  %388 = icmp ult i32 %370, %376, !mcsema_real_eip !70
  store i1 %388, i1* %CF_val, !mcsema_real_eip !70
  %389 = xor i32 %376, %370, !mcsema_real_eip !70
  %390 = and i32 %378, %389, !mcsema_real_eip !70
  %391 = icmp slt i32 %390, 0
  store i1 %391, i1* %OF_val, !mcsema_real_eip !70
  %392 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %392, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1fc:                                      ; preds = %block_0x1f2
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !78
  %393 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %394 = add i64 %393, -20, !mcsema_real_eip !79
  %395 = inttoptr i64 %394 to i64*, !mcsema_real_eip !79
  %396 = bitcast i64* %395 to i32*
  %397 = load i32, i32* %396, !mcsema_real_eip !79
  %398 = sext i32 %397 to i64, !mcsema_real_eip !79
  store i64 %398, i64* %RCX_val, !mcsema_real_eip !79
  %399 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %400 = add i64 %399, -24, !mcsema_real_eip !80
  %401 = inttoptr i64 %400 to i64*, !mcsema_real_eip !80
  %402 = bitcast i64* %401 to i32*
  %403 = load i32, i32* %402, !mcsema_real_eip !80
  %404 = sext i32 %403 to i64, !mcsema_real_eip !80
  %405 = mul i64 %404, 11, !mcsema_real_eip !81
  store i64 %405, i64* %RDX_val, !mcsema_real_eip !81
  %406 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %405, i64 %406)
  %407 = extractvalue { i64, i1 } %uadd350, 0
  %408 = xor i64 %407, %406, !mcsema_real_eip !82
  %409 = xor i64 %408, %405, !mcsema_real_eip !82
  %410 = and i64 %409, 16, !mcsema_real_eip !82
  %411 = icmp ne i64 %410, 0, !mcsema_real_eip !82
  store i1 %411, i1* %AF_val, !mcsema_real_eip !82
  %412 = icmp slt i64 %407, 0
  store i1 %412, i1* %SF_val, !mcsema_real_eip !82
  %413 = icmp eq i64 %407, 0, !mcsema_real_eip !82
  store i1 %413, i1* %ZF_val, !mcsema_real_eip !82
  %414 = xor i64 %406, -9223372036854775808, !mcsema_real_eip !82
  %415 = xor i64 %414, %405, !mcsema_real_eip !82
  %416 = and i64 %408, %415, !mcsema_real_eip !82
  %417 = icmp slt i64 %416, 0
  store i1 %417, i1* %OF_val, !mcsema_real_eip !82
  %418 = trunc i64 %407 to i8, !mcsema_real_eip !82
  %419 = tail call i8 @llvm.ctpop.i8(i8 %418), !mcsema_real_eip !82
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  store i1 %421, i1* %PF_val, !mcsema_real_eip !82
  %422 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %422, i1* %CF_val, !mcsema_real_eip !82
  store i64 %407, i64* %RAX_val, !mcsema_real_eip !82
  %423 = load i64, i64* %RCX_val, !mcsema_real_eip !83
  %424 = add i64 %423, %407, !mcsema_real_eip !83
  %425 = inttoptr i64 %424 to i64*, !mcsema_real_eip !83
  %426 = bitcast i64* %425 to i8*
  %427 = load i8, i8* %426, !mcsema_real_eip !83
  %428 = sext i8 %427 to i32, !mcsema_real_eip !83
  %429 = zext i32 %428 to i64, !mcsema_real_eip !83
  store i64 %429, i64* %RSI_val, !mcsema_real_eip !83
  %430 = add nsw i32 %428, -124
  %431 = xor i32 %430, %428, !mcsema_real_eip !84
  %432 = and i32 %431, 16
  %433 = icmp eq i32 %432, 0
  store i1 %433, i1* %AF_val, !mcsema_real_eip !84
  %434 = trunc i32 %430 to i8, !mcsema_real_eip !84
  %435 = tail call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !84
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF_val, !mcsema_real_eip !84
  %438 = icmp eq i32 %430, 0, !mcsema_real_eip !84
  store i1 %438, i1* %ZF_val, !mcsema_real_eip !84
  %439 = icmp slt i32 %430, 0
  store i1 %439, i1* %SF_val, !mcsema_real_eip !84
  %440 = icmp ult i8 %427, 124
  store i1 %440, i1* %CF_val, !mcsema_real_eip !84
  %441 = and i32 %431, %428, !mcsema_real_eip !84
  %442 = icmp slt i32 %441, 0
  store i1 %442, i1* %OF_val, !mcsema_real_eip !84
  %443 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  br i1 %443, label %block_0x222, label %block_0x236, !mcsema_real_eip !85

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !86
  %444 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %445 = add i64 %444, -20, !mcsema_real_eip !87
  %446 = inttoptr i64 %445 to i64*, !mcsema_real_eip !87
  %447 = bitcast i64* %446 to i32*
  %448 = load i32, i32* %447, !mcsema_real_eip !87
  %449 = sext i32 %448 to i64, !mcsema_real_eip !87
  store i64 %449, i64* %RCX_val, !mcsema_real_eip !87
  %450 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %451 = add i64 %450, -24, !mcsema_real_eip !88
  %452 = inttoptr i64 %451 to i64*, !mcsema_real_eip !88
  %453 = bitcast i64* %452 to i32*
  %454 = load i32, i32* %453, !mcsema_real_eip !88
  %455 = sext i32 %454 to i64, !mcsema_real_eip !88
  %456 = mul i64 %455, 11, !mcsema_real_eip !89
  store i64 %456, i64* %RDX_val, !mcsema_real_eip !89
  %457 = load i64, i64* %RAX_val, !mcsema_real_eip !90
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %456, i64 %457)
  %458 = extractvalue { i64, i1 } %uadd352, 0
  %459 = xor i64 %458, %457, !mcsema_real_eip !90
  %460 = xor i64 %459, %456, !mcsema_real_eip !90
  %461 = and i64 %460, 16, !mcsema_real_eip !90
  %462 = icmp ne i64 %461, 0, !mcsema_real_eip !90
  store i1 %462, i1* %AF_val, !mcsema_real_eip !90
  %463 = icmp slt i64 %458, 0
  store i1 %463, i1* %SF_val, !mcsema_real_eip !90
  %464 = icmp eq i64 %458, 0, !mcsema_real_eip !90
  store i1 %464, i1* %ZF_val, !mcsema_real_eip !90
  %465 = xor i64 %457, -9223372036854775808, !mcsema_real_eip !90
  %466 = xor i64 %465, %456, !mcsema_real_eip !90
  %467 = and i64 %459, %466, !mcsema_real_eip !90
  %468 = icmp slt i64 %467, 0
  store i1 %468, i1* %OF_val, !mcsema_real_eip !90
  %469 = trunc i64 %458 to i8, !mcsema_real_eip !90
  %470 = tail call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !90
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  store i1 %472, i1* %PF_val, !mcsema_real_eip !90
  %473 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %473, i1* %CF_val, !mcsema_real_eip !90
  store i64 %458, i64* %RAX_val, !mcsema_real_eip !90
  %474 = load i64, i64* %RCX_val, !mcsema_real_eip !91
  %475 = add i64 %474, %458, !mcsema_real_eip !91
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !91
  %477 = bitcast i64* %476 to i8*
  store i8 88, i8* %477, !mcsema_real_eip !91
  %478 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %479 = add i64 %478, -36, !mcsema_real_eip !92
  %480 = inttoptr i64 %479 to i64*, !mcsema_real_eip !92
  %481 = bitcast i64* %480 to i32*
  %482 = load i32, i32* %481, !mcsema_real_eip !92
  %uadd353 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %482, i32 1)
  %483 = extractvalue { i32, i1 } %uadd353, 0
  %484 = xor i32 %483, %482, !mcsema_real_eip !93
  %485 = and i32 %484, 16, !mcsema_real_eip !93
  %486 = icmp ne i32 %485, 0, !mcsema_real_eip !93
  store i1 %486, i1* %AF_val, !mcsema_real_eip !93
  %487 = icmp slt i32 %483, 0
  store i1 %487, i1* %SF_val, !mcsema_real_eip !93
  %488 = icmp eq i32 %483, 0, !mcsema_real_eip !93
  store i1 %488, i1* %ZF_val, !mcsema_real_eip !93
  %489 = xor i32 %482, -2147483648, !mcsema_real_eip !93
  %490 = and i32 %484, %489, !mcsema_real_eip !93
  %491 = icmp slt i32 %490, 0
  store i1 %491, i1* %OF_val, !mcsema_real_eip !93
  %492 = trunc i32 %483 to i8, !mcsema_real_eip !93
  %493 = tail call i8 @llvm.ctpop.i8(i8 %492), !mcsema_real_eip !93
  %494 = and i8 %493, 1
  %495 = icmp eq i8 %494, 0
  store i1 %495, i1* %PF_val, !mcsema_real_eip !93
  %496 = extractvalue { i32, i1 } %uadd353, 1
  store i1 %496, i1* %CF_val, !mcsema_real_eip !93
  %497 = zext i32 %483 to i64, !mcsema_real_eip !93
  store i64 %497, i64* %RSI_val, !mcsema_real_eip !93
  %498 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %499 = add i64 %498, -36, !mcsema_real_eip !94
  %500 = inttoptr i64 %499 to i64*, !mcsema_real_eip !94
  %501 = bitcast i64* %500 to i32*
  store i32 %483, i32* %501, !mcsema_real_eip !94
  %502 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %503 = add i64 %502, -36, !mcsema_real_eip !25
  %504 = inttoptr i64 %503 to i64*, !mcsema_real_eip !25
  %505 = bitcast i64* %504 to i32*
  %506 = load i32, i32* %505, !mcsema_real_eip !25
  %507 = add i32 %506, -28
  %508 = xor i32 %507, %506, !mcsema_real_eip !25
  %509 = and i32 %508, 16
  %510 = icmp eq i32 %509, 0
  store i1 %510, i1* %AF_val, !mcsema_real_eip !25
  %511 = trunc i32 %507 to i8, !mcsema_real_eip !25
  %512 = tail call i8 @llvm.ctpop.i8(i8 %511), !mcsema_real_eip !25
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  store i1 %514, i1* %PF_val, !mcsema_real_eip !25
  %515 = icmp eq i32 %507, 0, !mcsema_real_eip !25
  store i1 %515, i1* %ZF_val, !mcsema_real_eip !25
  %516 = icmp slt i32 %507, 0
  store i1 %516, i1* %SF_val, !mcsema_real_eip !25
  %517 = icmp ult i32 %506, 28, !mcsema_real_eip !25
  store i1 %517, i1* %CF_val, !mcsema_real_eip !25
  %518 = and i32 %508, %506, !mcsema_real_eip !25
  %519 = icmp slt i32 %518, 0
  store i1 %519, i1* %OF_val, !mcsema_real_eip !25
  %tmp = xor i1 %516, %519
  %520 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !27

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %521 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %522 = add i64 %521, -32, !mcsema_real_eip !95
  %523 = inttoptr i64 %522 to i64*, !mcsema_real_eip !95
  %524 = bitcast i64* %523 to i32*
  %525 = load i32, i32* %524, !mcsema_real_eip !95
  %526 = zext i32 %525 to i64, !mcsema_real_eip !95
  store i64 %526, i64* %RAX_val, !mcsema_real_eip !95
  %527 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %528 = add i64 %527, -24, !mcsema_real_eip !96
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !96
  %530 = bitcast i64* %529 to i32*
  %531 = load i32, i32* %530, !mcsema_real_eip !96
  %532 = sub i32 %525, %531, !mcsema_real_eip !96
  %533 = xor i32 %532, %525, !mcsema_real_eip !96
  %534 = xor i32 %533, %531, !mcsema_real_eip !96
  %535 = and i32 %534, 16, !mcsema_real_eip !96
  %536 = icmp ne i32 %535, 0, !mcsema_real_eip !96
  store i1 %536, i1* %AF_val, !mcsema_real_eip !96
  %537 = trunc i32 %532 to i8, !mcsema_real_eip !96
  %538 = tail call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !96
  %539 = and i8 %538, 1
  %540 = icmp eq i8 %539, 0
  store i1 %540, i1* %PF_val, !mcsema_real_eip !96
  %541 = icmp eq i32 %525, %531
  store i1 %541, i1* %ZF_val, !mcsema_real_eip !96
  %542 = icmp slt i32 %532, 0
  store i1 %542, i1* %SF_val, !mcsema_real_eip !96
  %543 = icmp ult i32 %525, %531, !mcsema_real_eip !96
  store i1 %543, i1* %CF_val, !mcsema_real_eip !96
  %544 = xor i32 %531, %525, !mcsema_real_eip !96
  %545 = and i32 %533, %544, !mcsema_real_eip !96
  %546 = icmp slt i32 %545, 0
  store i1 %546, i1* %OF_val, !mcsema_real_eip !96
  %547 = load i1, i1* %ZF_val, !mcsema_real_eip !97
  br i1 %547, label %block_0x25a, label %block_0x266, !mcsema_real_eip !97

block_0x222:                                      ; preds = %block_0x1fc
  %548 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %549 = add i64 %548, -20, !mcsema_real_eip !98
  %550 = inttoptr i64 %549 to i64*, !mcsema_real_eip !98
  %551 = bitcast i64* %550 to i32*
  %552 = load i32, i32* %551, !mcsema_real_eip !98
  store i1 false, i1* %AF_val, !mcsema_real_eip !98
  %553 = trunc i32 %552 to i8, !mcsema_real_eip !98
  %554 = tail call i8 @llvm.ctpop.i8(i8 %553), !mcsema_real_eip !98
  %555 = and i8 %554, 1
  %556 = icmp eq i8 %555, 0
  store i1 %556, i1* %PF_val, !mcsema_real_eip !98
  %557 = icmp eq i32 %552, 0, !mcsema_real_eip !98
  store i1 %557, i1* %ZF_val, !mcsema_real_eip !98
  %558 = icmp slt i32 %552, 0
  store i1 %558, i1* %SF_val, !mcsema_real_eip !98
  store i1 false, i1* %CF_val, !mcsema_real_eip !98
  store i1 false, i1* %OF_val, !mcsema_real_eip !98
  %559 = icmp slt i32 %552, 1
  br i1 %559, label %block_0x236, label %block_0x22c, !mcsema_real_eip !99

block_0x25a:                                      ; preds = %block_0x24e
  %560 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %561 = add i64 %560, -4, !mcsema_real_eip !100
  %562 = inttoptr i64 %561 to i64*, !mcsema_real_eip !100
  %563 = bitcast i64* %562 to i32*
  store i32 2, i32* %563, !mcsema_real_eip !100
  br label %block_0x298, !mcsema_real_eip !101

block_0x22c:                                      ; preds = %block_0x222
  %564 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %565 = add i64 %564, -20, !mcsema_real_eip !102
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !102
  %567 = bitcast i64* %566 to i32*
  %568 = load i32, i32* %567, !mcsema_real_eip !102
  %569 = add i32 %568, -11
  %570 = xor i32 %569, %568, !mcsema_real_eip !102
  %571 = and i32 %570, 16, !mcsema_real_eip !102
  %572 = icmp ne i32 %571, 0, !mcsema_real_eip !102
  store i1 %572, i1* %AF_val, !mcsema_real_eip !102
  %573 = trunc i32 %569 to i8, !mcsema_real_eip !102
  %574 = tail call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !102
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  store i1 %576, i1* %PF_val, !mcsema_real_eip !102
  %577 = icmp eq i32 %569, 0, !mcsema_real_eip !102
  store i1 %577, i1* %ZF_val, !mcsema_real_eip !102
  %578 = icmp slt i32 %569, 0
  store i1 %578, i1* %SF_val, !mcsema_real_eip !102
  %579 = icmp ult i32 %568, 11, !mcsema_real_eip !102
  store i1 %579, i1* %CF_val, !mcsema_real_eip !102
  %580 = and i32 %570, %568, !mcsema_real_eip !102
  %581 = icmp slt i32 %580, 0
  store i1 %581, i1* %OF_val, !mcsema_real_eip !102
  %582 = xor i1 %578, %581
  br i1 %582, label %block_0x242, label %block_0x236, !mcsema_real_eip !103

block_0x291:                                      ; preds = %block_0x266
  %583 = add i64 %520, -4, !mcsema_real_eip !26
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !26
  %585 = bitcast i64* %584 to i32*
  store i32 1, i32* %585, !mcsema_real_eip !26
  %586 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %587 = add i64 %586, -4, !mcsema_real_eip !28
  %588 = inttoptr i64 %587 to i64*, !mcsema_real_eip !28
  %589 = bitcast i64* %588 to i32*
  %590 = load i32, i32* %589, !mcsema_real_eip !28
  %591 = zext i32 %590 to i64, !mcsema_real_eip !28
  store i64 %591, i64* %RAX_val, !mcsema_real_eip !28
  %592 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %592, i64 96)
  %593 = extractvalue { i64, i1 } %uadd357, 0
  %594 = xor i64 %593, %592, !mcsema_real_eip !29
  %595 = and i64 %594, 16, !mcsema_real_eip !29
  %596 = icmp ne i64 %595, 0, !mcsema_real_eip !29
  store i1 %596, i1* %AF_val, !mcsema_real_eip !29
  %597 = icmp slt i64 %593, 0
  store i1 %597, i1* %SF_val, !mcsema_real_eip !29
  %598 = icmp eq i64 %593, 0, !mcsema_real_eip !29
  store i1 %598, i1* %ZF_val, !mcsema_real_eip !29
  %599 = xor i64 %592, -9223372036854775808, !mcsema_real_eip !29
  %600 = and i64 %594, %599, !mcsema_real_eip !29
  %601 = icmp slt i64 %600, 0
  store i1 %601, i1* %OF_val, !mcsema_real_eip !29
  %602 = trunc i64 %593 to i8, !mcsema_real_eip !29
  %603 = tail call i8 @llvm.ctpop.i8(i8 %602), !mcsema_real_eip !29
  %604 = and i8 %603, 1
  %605 = icmp eq i8 %604, 0
  store i1 %605, i1* %PF_val, !mcsema_real_eip !29
  %606 = extractvalue { i64, i1 } %uadd357, 1
  store i1 %606, i1* %CF_val, !mcsema_real_eip !29
  store i64 %593, i64* %RSP_val, !mcsema_real_eip !29
  %607 = inttoptr i64 %593 to i64*, !mcsema_real_eip !30
  %608 = load i64, i64* %607, !mcsema_real_eip !30
  store i64 %608, i64* %RBP_val, !mcsema_real_eip !30
  %609 = add i64 %593, 16, !mcsema_real_eip !31
  store i64 %609, i64* %RSP_val, !mcsema_real_eip !31
  %610 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %610, i64* %RAX, !mcsema_real_eip !31
  %611 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %611, i64* %RBX, !mcsema_real_eip !31
  %612 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %612, i64* %RCX, !mcsema_real_eip !31
  %613 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %613, i64* %RDX, !mcsema_real_eip !31
  %614 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %614, i64* %RSI, !mcsema_real_eip !31
  %615 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %615, i64* %RDI, !mcsema_real_eip !31
  %616 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %616, i64* %RSP, !mcsema_real_eip !31
  %617 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %617, i64* %RBP, !mcsema_real_eip !31
  %618 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %618, i64* %R8, !mcsema_real_eip !31
  %619 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %619, i64* %R9, !mcsema_real_eip !31
  %620 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %620, i64* %R10, !mcsema_real_eip !31
  %621 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %621, i64* %R11, !mcsema_real_eip !31
  %622 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %622, i64* %R12, !mcsema_real_eip !31
  %623 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %623, i64* %R13, !mcsema_real_eip !31
  %624 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %624, i64* %R14, !mcsema_real_eip !31
  %625 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %625, i64* %R15, !mcsema_real_eip !31
  %626 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %626, i64* %RIP, !mcsema_real_eip !31
  %627 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %627, i1* %CF, align 1, !mcsema_real_eip !31
  %628 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %628, i1* %PF, align 1, !mcsema_real_eip !31
  %629 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %629, i1* %AF, align 1, !mcsema_real_eip !31
  %630 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %630, i1* %ZF, align 1, !mcsema_real_eip !31
  %631 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %631, i1* %SF, align 1, !mcsema_real_eip !31
  %632 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %632, i1* %OF, align 1, !mcsema_real_eip !31
  %633 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %633, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %634 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %634, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %635 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %635, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %636 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %636, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %637 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %637, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %638 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %638, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %639 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %639, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %640 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %640, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %641 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %641, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %642 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %642, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %643 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %643, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %644 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %644, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %645 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %645, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %646 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %646, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %647 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %647, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %648 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %648, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %649 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %649, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %650 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %650, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %651 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %651, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %652 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %652, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %653 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %653, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %654 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %654, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %655 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %655, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %656 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %656, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %657 = load i64, i64* %53, align 4
  store i64 %657, i64* %52, align 4
  %658 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %658, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %659 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %659, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %660 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %660, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %661 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %661, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %662 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %662, i128* %XMM0, align 1, !mcsema_real_eip !31
  %663 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %663, i128* %XMM1, align 1, !mcsema_real_eip !31
  %664 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %664, i128* %XMM2, align 1, !mcsema_real_eip !31
  %665 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %665, i128* %XMM3, align 1, !mcsema_real_eip !31
  %666 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %666, i128* %XMM4, align 1, !mcsema_real_eip !31
  %667 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %667, i128* %XMM5, align 1, !mcsema_real_eip !31
  %668 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %668, i128* %XMM6, align 1, !mcsema_real_eip !31
  %669 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %669, i128* %XMM7, align 1, !mcsema_real_eip !31
  %670 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %670, i128* %XMM8, align 1, !mcsema_real_eip !31
  %671 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %671, i128* %XMM9, align 1, !mcsema_real_eip !31
  %672 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %672, i128* %XMM10, align 1, !mcsema_real_eip !31
  %673 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %673, i128* %XMM11, align 1, !mcsema_real_eip !31
  %674 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %674, i128* %XMM12, align 1, !mcsema_real_eip !31
  %675 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %675, i128* %XMM13, align 1, !mcsema_real_eip !31
  %676 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %676, i128* %XMM14, align 1, !mcsema_real_eip !31
  %677 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %677, i128* %XMM15, align 1, !mcsema_real_eip !31
  %678 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %678, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %679 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %679, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x11e:                                      ; preds = %block_0x266
  %680 = add i64 %520, -20, !mcsema_real_eip !32
  %681 = inttoptr i64 %680 to i64*, !mcsema_real_eip !32
  %682 = bitcast i64* %681 to i32*
  %683 = load i32, i32* %682, !mcsema_real_eip !32
  %684 = zext i32 %683 to i64, !mcsema_real_eip !32
  store i64 %684, i64* %RAX_val, !mcsema_real_eip !32
  %685 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %686 = add i64 %685, -28, !mcsema_real_eip !33
  %687 = inttoptr i64 %686 to i64*, !mcsema_real_eip !33
  %688 = bitcast i64* %687 to i32*
  store i32 %683, i32* %688, !mcsema_real_eip !33
  %689 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %690 = add i64 %689, -24, !mcsema_real_eip !34
  %691 = inttoptr i64 %690 to i64*, !mcsema_real_eip !34
  %692 = bitcast i64* %691 to i32*
  %693 = load i32, i32* %692, !mcsema_real_eip !34
  %694 = zext i32 %693 to i64, !mcsema_real_eip !34
  store i64 %694, i64* %RAX_val, !mcsema_real_eip !34
  %695 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %696 = add i64 %695, -32, !mcsema_real_eip !35
  %697 = inttoptr i64 %696 to i64*, !mcsema_real_eip !35
  %698 = bitcast i64* %697 to i32*
  store i32 %693, i32* %698, !mcsema_real_eip !35
  %699 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %700 = add i64 %699, -36, !mcsema_real_eip !36
  %701 = inttoptr i64 %700 to i64*, !mcsema_real_eip !36
  %702 = bitcast i64* %701 to i32*
  %703 = load i32, i32* %702, !mcsema_real_eip !36
  %704 = sext i32 %703 to i64, !mcsema_real_eip !36
  store i64 %704, i64* %RCX_val, !mcsema_real_eip !36
  %705 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %706 = add i64 %705, -64, !mcsema_real_eip !37
  %707 = add i64 %706, %704, !mcsema_real_eip !37
  %708 = inttoptr i64 %707 to i64*, !mcsema_real_eip !37
  %709 = bitcast i64* %708 to i8*
  %710 = load i8, i8* %709, !mcsema_real_eip !37
  %711 = sext i8 %710 to i32, !mcsema_real_eip !37
  %712 = add nsw i32 %711, -97
  %713 = zext i32 %712 to i64, !mcsema_real_eip !38
  store i64 %713, i64* %RCX_val, !mcsema_real_eip !39
  %714 = add nsw i32 %711, -119
  %715 = xor i32 %714, %712, !mcsema_real_eip !40
  %716 = and i32 %715, 16
  %717 = icmp eq i32 %716, 0
  store i1 %717, i1* %AF_val, !mcsema_real_eip !40
  %718 = trunc i32 %714 to i8, !mcsema_real_eip !40
  %719 = tail call i8 @llvm.ctpop.i8(i8 %718), !mcsema_real_eip !40
  %720 = and i8 %719, 1
  %721 = icmp eq i8 %720, 0
  store i1 %721, i1* %PF_val, !mcsema_real_eip !40
  %722 = icmp eq i32 %714, 0, !mcsema_real_eip !40
  store i1 %722, i1* %ZF_val, !mcsema_real_eip !40
  %723 = icmp slt i32 %714, 0
  store i1 %723, i1* %SF_val, !mcsema_real_eip !40
  %724 = icmp ult i32 %712, 22, !mcsema_real_eip !40
  store i1 %724, i1* %CF_val, !mcsema_real_eip !40
  %725 = and i32 %715, %712, !mcsema_real_eip !40
  %726 = icmp slt i32 %725, 0
  store i1 %726, i1* %OF_val, !mcsema_real_eip !40
  %727 = zext i32 %714 to i64, !mcsema_real_eip !40
  store i64 %727, i64* %RAX_val, !mcsema_real_eip !40
  %728 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %729 = add i64 %728, -80, !mcsema_real_eip !41
  %730 = inttoptr i64 %729 to i64*, !mcsema_real_eip !41
  %731 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %731, i64* %730, !mcsema_real_eip !41
  %732 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %733 = add i64 %732, -84, !mcsema_real_eip !42
  %734 = inttoptr i64 %733 to i64*, !mcsema_real_eip !42
  %735 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %736 = trunc i64 %735 to i32, !mcsema_real_eip !42
  %737 = bitcast i64* %734 to i32*
  store i32 %736, i32* %737, !mcsema_real_eip !42
  %738 = load i1, i1* %ZF_val, !mcsema_real_eip !43
  %739 = load i1, i1* %CF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %739, %738
  %740 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !43

block_0x18e:                                      ; preds = %block_0x11e
  %741 = add i64 %740, -4, !mcsema_real_eip !44
  %742 = inttoptr i64 %741 to i64*, !mcsema_real_eip !44
  %743 = bitcast i64* %742 to i32*
  store i32 1, i32* %743, !mcsema_real_eip !44
  br label %block_0x298, !mcsema_real_eip !104

block_0x148:                                      ; preds = %block_0x11e
  %744 = add i64 %740, -80, !mcsema_real_eip !45
  %745 = inttoptr i64 %744 to i64*, !mcsema_real_eip !45
  %746 = load i64, i64* %745, !mcsema_real_eip !45
  store i64 %746, i64* %RAX_val, !mcsema_real_eip !45
  %747 = shl i64 %746, 3
  %748 = add i64 %747, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !46
  %749 = inttoptr i64 %748 to i64*, !mcsema_real_eip !46
  %750 = load i64, i64* %749, !mcsema_real_eip !46
  store i64 %750, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %746, i64* %RAX, !mcsema_real_eip !47
  %751 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %751, i64* %RBX, !mcsema_real_eip !47
  %752 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %752, i64* %RCX, !mcsema_real_eip !47
  %753 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %753, i64* %RDX, !mcsema_real_eip !47
  %754 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %754, i64* %RSI, !mcsema_real_eip !47
  %755 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %755, i64* %RDI, !mcsema_real_eip !47
  %756 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %756, i64* %RSP, !mcsema_real_eip !47
  %757 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %757, i64* %RBP, !mcsema_real_eip !47
  %758 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %758, i64* %R8, !mcsema_real_eip !47
  %759 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %759, i64* %R9, !mcsema_real_eip !47
  %760 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %760, i64* %R10, !mcsema_real_eip !47
  %761 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %761, i64* %R11, !mcsema_real_eip !47
  %762 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %762, i64* %R12, !mcsema_real_eip !47
  %763 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %763, i64* %R13, !mcsema_real_eip !47
  %764 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %764, i64* %R14, !mcsema_real_eip !47
  %765 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %765, i64* %R15, !mcsema_real_eip !47
  %766 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %766, i64* %RIP, !mcsema_real_eip !47
  %767 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %767, i1* %CF, align 1, !mcsema_real_eip !47
  %768 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %768, i1* %PF, align 1, !mcsema_real_eip !47
  %769 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %769, i1* %AF, align 1, !mcsema_real_eip !47
  %770 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %770, i1* %ZF, align 1, !mcsema_real_eip !47
  %771 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %771, i1* %SF, align 1, !mcsema_real_eip !47
  %772 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %772, i1* %OF, align 1, !mcsema_real_eip !47
  %773 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %773, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %774 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %774, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %775 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %775, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %776 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %776, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %777 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %777, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %778 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %778, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %779 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %779, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %780 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %780, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %781 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %781, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %782 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %782, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %783 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %783, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %784 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %784, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %785 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %785, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %786 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %786, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %787 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %787, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %788 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %788, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %789 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %789, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %790 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %790, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %791 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %791, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %792 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %792, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %793 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %793, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %794 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %794, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %795 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %795, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %796 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %796, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %797 = load i64, i64* %53, align 4
  store i64 %797, i64* %52, align 4
  %798 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %798, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %799 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %799, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %800 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %800, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %801 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %801, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %802 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %802, i128* %XMM0, align 1, !mcsema_real_eip !47
  %803 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %803, i128* %XMM1, align 1, !mcsema_real_eip !47
  %804 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %804, i128* %XMM2, align 1, !mcsema_real_eip !47
  %805 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %805, i128* %XMM3, align 1, !mcsema_real_eip !47
  %806 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %806, i128* %XMM4, align 1, !mcsema_real_eip !47
  %807 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %807, i128* %XMM5, align 1, !mcsema_real_eip !47
  %808 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %808, i128* %XMM6, align 1, !mcsema_real_eip !47
  %809 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %809, i128* %XMM7, align 1, !mcsema_real_eip !47
  %810 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %810, i128* %XMM8, align 1, !mcsema_real_eip !47
  %811 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %811, i128* %XMM9, align 1, !mcsema_real_eip !47
  %812 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %812, i128* %XMM10, align 1, !mcsema_real_eip !47
  %813 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %813, i128* %XMM11, align 1, !mcsema_real_eip !47
  %814 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %814, i128* %XMM12, align 1, !mcsema_real_eip !47
  %815 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %815, i128* %XMM13, align 1, !mcsema_real_eip !47
  %816 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %816, i128* %XMM14, align 1, !mcsema_real_eip !47
  %817 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %817, i128* %XMM15, align 1, !mcsema_real_eip !47
  %818 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %818, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %819 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %819, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  call void @do_call_value.4(%struct.regs* %0, i64 %750, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %820 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %820, i64* %RAX_val, !mcsema_real_eip !47
  %821 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %821, i64* %RBX_val, !mcsema_real_eip !47
  %822 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %822, i64* %RCX_val, !mcsema_real_eip !47
  %823 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %823, i64* %RDX_val, !mcsema_real_eip !47
  %824 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %824, i64* %RSI_val, !mcsema_real_eip !47
  %825 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %825, i64* %RDI_val, !mcsema_real_eip !47
  %826 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %826, i64* %RSP_val, !mcsema_real_eip !47
  %827 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %827, i64* %RBP_val, !mcsema_real_eip !47
  %828 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %828, i64* %R8_val, !mcsema_real_eip !47
  %829 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %829, i64* %R9_val, !mcsema_real_eip !47
  %830 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %830, i64* %R10_val, !mcsema_real_eip !47
  %831 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %831, i64* %R11_val, !mcsema_real_eip !47
  %832 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %832, i64* %R12_val, !mcsema_real_eip !47
  %833 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %833, i64* %R13_val, !mcsema_real_eip !47
  %834 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %834, i64* %R14_val, !mcsema_real_eip !47
  %835 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %835, i64* %R15_val, !mcsema_real_eip !47
  %836 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %836, i64* %RIP_val, !mcsema_real_eip !47
  %837 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %837, i1* %CF_val, !mcsema_real_eip !47
  %838 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %838, i1* %PF_val, !mcsema_real_eip !47
  %839 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %839, i1* %AF_val, !mcsema_real_eip !47
  %840 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %840, i1* %ZF_val, !mcsema_real_eip !47
  %841 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %841, i1* %SF_val, !mcsema_real_eip !47
  %842 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %842, i1* %OF_val, !mcsema_real_eip !47
  %843 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %843, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %844 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %844, i1* %FPU_B_val, !mcsema_real_eip !47
  %845 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %845, i1* %FPU_C3_val, !mcsema_real_eip !47
  %846 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %846, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %847 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %847, i1* %FPU_C2_val, !mcsema_real_eip !47
  %848 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %848, i1* %FPU_C1_val, !mcsema_real_eip !47
  %849 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %849, i1* %FPU_C0_val, !mcsema_real_eip !47
  %850 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %850, i1* %FPU_ES_val, !mcsema_real_eip !47
  %851 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %851, i1* %FPU_SF_val, !mcsema_real_eip !47
  %852 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %852, i1* %FPU_PE_val, !mcsema_real_eip !47
  %853 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %853, i1* %FPU_UE_val, !mcsema_real_eip !47
  %854 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %854, i1* %FPU_OE_val, !mcsema_real_eip !47
  %855 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %855, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %856 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %856, i1* %FPU_DE_val, !mcsema_real_eip !47
  %857 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %857, i1* %FPU_IE_val, !mcsema_real_eip !47
  %858 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %858, i1* %FPU_X_val, !mcsema_real_eip !47
  %859 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %859, i2* %FPU_RC_val, !mcsema_real_eip !47
  %860 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %860, i2* %FPU_PC_val, !mcsema_real_eip !47
  %861 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %861, i1* %FPU_PM_val, !mcsema_real_eip !47
  %862 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %862, i1* %FPU_UM_val, !mcsema_real_eip !47
  %863 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %863, i1* %FPU_OM_val, !mcsema_real_eip !47
  %864 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %864, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %865 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %865, i1* %FPU_DM_val, !mcsema_real_eip !47
  %866 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %866, i1* %FPU_IM_val, !mcsema_real_eip !47
  %867 = load i64, i64* %52, align 4
  store i64 %867, i64* %53, align 4
  %868 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %868, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %869 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %869, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %870 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %870, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %871 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %871, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %872 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %872, i128* %XMM0_val, !mcsema_real_eip !47
  %873 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %873, i128* %XMM1_val, !mcsema_real_eip !47
  %874 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %874, i128* %XMM2_val, !mcsema_real_eip !47
  %875 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %875, i128* %XMM3_val, !mcsema_real_eip !47
  %876 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %876, i128* %XMM4_val, !mcsema_real_eip !47
  %877 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %877, i128* %XMM5_val, !mcsema_real_eip !47
  %878 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %878, i128* %XMM6_val, !mcsema_real_eip !47
  %879 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %879, i128* %XMM7_val, !mcsema_real_eip !47
  %880 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %880, i128* %XMM8_val, !mcsema_real_eip !47
  %881 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %881, i128* %XMM9_val, !mcsema_real_eip !47
  %882 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %882, i128* %XMM10_val, !mcsema_real_eip !47
  %883 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %883, i128* %XMM11_val, !mcsema_real_eip !47
  %884 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %884, i128* %XMM12_val, !mcsema_real_eip !47
  %885 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %885, i128* %XMM13_val, !mcsema_real_eip !47
  %886 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %886, i128* %XMM14_val, !mcsema_real_eip !47
  %887 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %887, i128* %XMM15_val, !mcsema_real_eip !47
  %888 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %888, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %889 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %889, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %890 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %891 = add i64 %890, 8, !mcsema_real_eip !47
  store i64 %891, i64* %RSP_val, !mcsema_real_eip !47
  %892 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %892, i64* %RAX, !mcsema_real_eip !47
  %893 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %893, i64* %RBX, !mcsema_real_eip !47
  %894 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %894, i64* %RCX, !mcsema_real_eip !47
  %895 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %895, i64* %RDX, !mcsema_real_eip !47
  %896 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %896, i64* %RSI, !mcsema_real_eip !47
  %897 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %897, i64* %RDI, !mcsema_real_eip !47
  %898 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %898, i64* %RSP, !mcsema_real_eip !47
  %899 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %899, i64* %RBP, !mcsema_real_eip !47
  %900 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %900, i64* %R8, !mcsema_real_eip !47
  %901 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %901, i64* %R9, !mcsema_real_eip !47
  %902 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %902, i64* %R10, !mcsema_real_eip !47
  %903 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %903, i64* %R11, !mcsema_real_eip !47
  %904 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %904, i64* %R12, !mcsema_real_eip !47
  %905 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %905, i64* %R13, !mcsema_real_eip !47
  %906 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %906, i64* %R14, !mcsema_real_eip !47
  %907 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %907, i64* %R15, !mcsema_real_eip !47
  %908 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %908, i64* %RIP, !mcsema_real_eip !47
  %909 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %909, i1* %CF, align 1, !mcsema_real_eip !47
  %910 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %910, i1* %PF, align 1, !mcsema_real_eip !47
  %911 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %911, i1* %AF, align 1, !mcsema_real_eip !47
  %912 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %912, i1* %ZF, align 1, !mcsema_real_eip !47
  %913 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %913, i1* %SF, align 1, !mcsema_real_eip !47
  %914 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %914, i1* %OF, align 1, !mcsema_real_eip !47
  %915 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %915, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %916 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %916, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %917 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %917, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %918 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %918, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %919 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %919, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %920 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %920, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %921 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %921, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %922 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %922, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %923 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %923, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %924 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %924, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %925 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %925, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %926 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %926, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %927 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %927, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %928 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %928, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %929 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %929, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %930 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %930, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %931 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %931, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %932 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %932, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %933 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %933, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %934 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %934, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %935 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %935, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %936 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %936, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %937 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %937, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %938 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %938, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %939 = load i64, i64* %53, align 4
  store i64 %939, i64* %52, align 4
  %940 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %940, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %941 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %941, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %942 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %942, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %943 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %943, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %944 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %944, i128* %XMM0, align 1, !mcsema_real_eip !47
  %945 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %945, i128* %XMM1, align 1, !mcsema_real_eip !47
  %946 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %946, i128* %XMM2, align 1, !mcsema_real_eip !47
  %947 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %947, i128* %XMM3, align 1, !mcsema_real_eip !47
  %948 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %948, i128* %XMM4, align 1, !mcsema_real_eip !47
  %949 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %949, i128* %XMM5, align 1, !mcsema_real_eip !47
  %950 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %950, i128* %XMM6, align 1, !mcsema_real_eip !47
  %951 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %951, i128* %XMM7, align 1, !mcsema_real_eip !47
  %952 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %952, i128* %XMM8, align 1, !mcsema_real_eip !47
  %953 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %953, i128* %XMM9, align 1, !mcsema_real_eip !47
  %954 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %954, i128* %XMM10, align 1, !mcsema_real_eip !47
  %955 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %955, i128* %XMM11, align 1, !mcsema_real_eip !47
  %956 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %956, i128* %XMM12, align 1, !mcsema_real_eip !47
  %957 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %957, i128* %XMM13, align 1, !mcsema_real_eip !47
  %958 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %958, i128* %XMM14, align 1, !mcsema_real_eip !47
  %959 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %959, i128* %XMM15, align 1, !mcsema_real_eip !47
  %960 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %960, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %961 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %961, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

define internal x86_64_sysvcc void @sub_156(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 84
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 84
  %R15_val = alloca i64, !mcsema_real_eip !111
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !111
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !111
  %XMM15_val = alloca i128, !mcsema_real_eip !111
  %XMM14_val = alloca i128, !mcsema_real_eip !111
  %XMM13_val = alloca i128, !mcsema_real_eip !111
  %XMM12_val = alloca i128, !mcsema_real_eip !111
  %XMM11_val = alloca i128, !mcsema_real_eip !111
  %XMM10_val = alloca i128, !mcsema_real_eip !111
  %XMM9_val = alloca i128, !mcsema_real_eip !111
  %XMM8_val = alloca i128, !mcsema_real_eip !111
  %XMM7_val = alloca i128, !mcsema_real_eip !111
  %XMM6_val = alloca i128, !mcsema_real_eip !111
  %XMM5_val = alloca i128, !mcsema_real_eip !111
  %XMM4_val = alloca i128, !mcsema_real_eip !111
  %XMM3_val = alloca i128, !mcsema_real_eip !111
  %XMM2_val = alloca i128, !mcsema_real_eip !111
  %XMM1_val = alloca i128, !mcsema_real_eip !111
  %XMM0_val = alloca i128, !mcsema_real_eip !111
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !111
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !111
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !111
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !111
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !111
  %FPU_IM_val = alloca i1, !mcsema_real_eip !111
  %FPU_DM_val = alloca i1, !mcsema_real_eip !111
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !111
  %FPU_OM_val = alloca i1, !mcsema_real_eip !111
  %FPU_UM_val = alloca i1, !mcsema_real_eip !111
  %FPU_PM_val = alloca i1, !mcsema_real_eip !111
  %FPU_PC_val = alloca i2, !mcsema_real_eip !111
  %FPU_RC_val = alloca i2, !mcsema_real_eip !111
  %FPU_X_val = alloca i1, !mcsema_real_eip !111
  %FPU_IE_val = alloca i1, !mcsema_real_eip !111
  %FPU_DE_val = alloca i1, !mcsema_real_eip !111
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !111
  %FPU_OE_val = alloca i1, !mcsema_real_eip !111
  %FPU_UE_val = alloca i1, !mcsema_real_eip !111
  %FPU_PE_val = alloca i1, !mcsema_real_eip !111
  %FPU_SF_val = alloca i1, !mcsema_real_eip !111
  %FPU_ES_val = alloca i1, !mcsema_real_eip !111
  %FPU_C0_val = alloca i1, !mcsema_real_eip !111
  %FPU_C1_val = alloca i1, !mcsema_real_eip !111
  %FPU_C2_val = alloca i1, !mcsema_real_eip !111
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !111
  %FPU_C3_val = alloca i1, !mcsema_real_eip !111
  %FPU_B_val = alloca i1, !mcsema_real_eip !111
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !111
  %DF_val = alloca i1, !mcsema_real_eip !111
  %OF_val = alloca i1, !mcsema_real_eip !111
  %SF_val = alloca i1, !mcsema_real_eip !111
  %CF_val = alloca i1, !mcsema_real_eip !111
  %AF_val = alloca i1, !mcsema_real_eip !111
  %PF_val = alloca i1, !mcsema_real_eip !111
  %ZF_val = alloca i1, !mcsema_real_eip !111
  %RIP_val = alloca i64, !mcsema_real_eip !111
  %R14_val = alloca i64, !mcsema_real_eip !111
  %R13_val = alloca i64, !mcsema_real_eip !111
  %R12_val = alloca i64, !mcsema_real_eip !111
  %R11_val = alloca i64, !mcsema_real_eip !111
  %R10_val = alloca i64, !mcsema_real_eip !111
  %R9_val = alloca i64, !mcsema_real_eip !111
  %R8_val = alloca i64, !mcsema_real_eip !111
  %RSP_val = alloca i64, !mcsema_real_eip !111
  %RBP_val = alloca i64, !mcsema_real_eip !111
  %RDI_val = alloca i64, !mcsema_real_eip !111
  %RSI_val = alloca i64, !mcsema_real_eip !111
  %RDX_val = alloca i64, !mcsema_real_eip !111
  %RCX_val = alloca i64, !mcsema_real_eip !111
  %RBX_val = alloca i64, !mcsema_real_eip !111
  %RAX_val = alloca i64, !mcsema_real_eip !111
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !111
  %1 = load i64, i64* %RAX, !mcsema_real_eip !111
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !111
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !111
  %2 = load i64, i64* %RBX, !mcsema_real_eip !111
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !111
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !111
  %3 = load i64, i64* %RCX, !mcsema_real_eip !111
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !111
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !111
  %4 = load i64, i64* %RDX, !mcsema_real_eip !111
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !111
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !111
  %5 = load i64, i64* %RSI, !mcsema_real_eip !111
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !111
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !111
  %6 = load i64, i64* %RDI, !mcsema_real_eip !111
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !111
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !111
  %7 = load i64, i64* %RSP, !mcsema_real_eip !111
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !111
  %8 = load i64, i64* %RBP, !mcsema_real_eip !111
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !111
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !111
  %9 = load i64, i64* %R8, !mcsema_real_eip !111
  store i64 %9, i64* %R8_val, !mcsema_real_eip !111
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !111
  %10 = load i64, i64* %R9, !mcsema_real_eip !111
  store i64 %10, i64* %R9_val, !mcsema_real_eip !111
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !111
  %11 = load i64, i64* %R10, !mcsema_real_eip !111
  store i64 %11, i64* %R10_val, !mcsema_real_eip !111
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !111
  %12 = load i64, i64* %R11, !mcsema_real_eip !111
  store i64 %12, i64* %R11_val, !mcsema_real_eip !111
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !111
  %13 = load i64, i64* %R12, !mcsema_real_eip !111
  store i64 %13, i64* %R12_val, !mcsema_real_eip !111
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !111
  %14 = load i64, i64* %R13, !mcsema_real_eip !111
  store i64 %14, i64* %R13_val, !mcsema_real_eip !111
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !111
  %15 = load i64, i64* %R14, !mcsema_real_eip !111
  store i64 %15, i64* %R14_val, !mcsema_real_eip !111
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !111
  %16 = load i64, i64* %R15, !mcsema_real_eip !111
  store i64 %16, i64* %R15_val, !mcsema_real_eip !111
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !111
  %17 = load i64, i64* %RIP, !mcsema_real_eip !111
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !111
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !111
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !111
  store i1 %18, i1* %CF_val, !mcsema_real_eip !111
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !111
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !111
  store i1 %19, i1* %PF_val, !mcsema_real_eip !111
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !111
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !111
  store i1 %20, i1* %AF_val, !mcsema_real_eip !111
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !111
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !111
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !111
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !111
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !111
  store i1 %22, i1* %SF_val, !mcsema_real_eip !111
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !111
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !111
  store i1 %23, i1* %OF_val, !mcsema_real_eip !111
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !111
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !111
  store i1 %24, i1* %DF_val, !mcsema_real_eip !111
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !111
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !111
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !111
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !111
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !111
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !111
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !111
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !111
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !111
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !111
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !111
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !111
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !111
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !111
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !111
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !111
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !111
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !111
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !111
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !111
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !111
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !111
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !111
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !111
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !111
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !111
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !111
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !111
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !111
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !111
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !111
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !111
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !111
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !111
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !111
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !111
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !111
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !111
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !111
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !111
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !111
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !111
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !111
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !111
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !111
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !111
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !111
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !111
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !111
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !111
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !111
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !111
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !111
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !111
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !111
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !111
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !111
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !111
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !111
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !111
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !111
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !111
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !111
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !111
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !111
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !111
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !111
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !111
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !111
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !111
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !111
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !111
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !111
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !111
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !111
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !111
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !111
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !111
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !111
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !111
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !111
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !111
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !111
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !111
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !111
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !111
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !111
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !111
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !111
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !111
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !111
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !111
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !111
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !111
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !111
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !111
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !111
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !111
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !111
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !111
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !111
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !111
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !111
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !111
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !111
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !111
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !111
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !111
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !111
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !111
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !111
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !111
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !111
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !111
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !111
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !111
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !111
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !111
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !111
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !111
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !111
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !111
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !111
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !111
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !111
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !111
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !111
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !111
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !111
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !111
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !111
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !111
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !111
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !111
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !111
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !111
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !111
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !111
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !111
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !111
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !111
  %78 = add i64 %77, -24, !mcsema_real_eip !111
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !111
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !111
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 -1)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !112
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !112
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !112
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !112
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !112
  %88 = and i32 %83, %81, !mcsema_real_eip !112
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF_val, !mcsema_real_eip !112
  %90 = trunc i32 %82 to i8, !mcsema_real_eip !112
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !112
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF_val, !mcsema_real_eip !112
  %94 = extractvalue { i32, i1 } %uadd, 1
  store i1 %94, i1* %CF_val, !mcsema_real_eip !112
  %95 = load i64, i64* %RBP_val, !mcsema_real_eip !113
  %96 = add i64 %95, -24, !mcsema_real_eip !113
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !113
  %98 = bitcast i64* %97 to i32*
  store i32 %82, i32* %98, !mcsema_real_eip !113
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !51
  %99 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %100 = add i64 %99, -20, !mcsema_real_eip !52
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !52
  %102 = bitcast i64* %101 to i32*
  %103 = load i32, i32* %102, !mcsema_real_eip !52
  %104 = sext i32 %103 to i64, !mcsema_real_eip !52
  store i64 %104, i64* %RCX_val, !mcsema_real_eip !52
  %105 = load i64, i64* %RBP_val, !mcsema_real_eip !53
  %106 = add i64 %105, -24, !mcsema_real_eip !53
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = bitcast i64* %107 to i32*
  %109 = load i32, i32* %108, !mcsema_real_eip !53
  %110 = sext i32 %109 to i64, !mcsema_real_eip !53
  %111 = mul i64 %110, 11, !mcsema_real_eip !54
  store i64 %111, i64* %RDX_val, !mcsema_real_eip !54
  %112 = load i64, i64* %RAX_val, !mcsema_real_eip !55
  %uadd347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 %112)
  %113 = extractvalue { i64, i1 } %uadd347, 0
  %114 = xor i64 %113, %112, !mcsema_real_eip !55
  %115 = xor i64 %114, %111, !mcsema_real_eip !55
  %116 = and i64 %115, 16, !mcsema_real_eip !55
  %117 = icmp ne i64 %116, 0, !mcsema_real_eip !55
  store i1 %117, i1* %AF_val, !mcsema_real_eip !55
  %118 = icmp slt i64 %113, 0
  store i1 %118, i1* %SF_val, !mcsema_real_eip !55
  %119 = icmp eq i64 %113, 0, !mcsema_real_eip !55
  store i1 %119, i1* %ZF_val, !mcsema_real_eip !55
  %120 = xor i64 %112, -9223372036854775808, !mcsema_real_eip !55
  %121 = xor i64 %120, %111, !mcsema_real_eip !55
  %122 = and i64 %114, %121, !mcsema_real_eip !55
  %123 = icmp slt i64 %122, 0
  store i1 %123, i1* %OF_val, !mcsema_real_eip !55
  %124 = trunc i64 %113 to i8, !mcsema_real_eip !55
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !55
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF_val, !mcsema_real_eip !55
  %128 = extractvalue { i64, i1 } %uadd347, 1
  store i1 %128, i1* %CF_val, !mcsema_real_eip !55
  store i64 %113, i64* %RAX_val, !mcsema_real_eip !55
  %129 = load i64, i64* %RCX_val, !mcsema_real_eip !56
  %130 = add i64 %129, %113, !mcsema_real_eip !56
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !56
  %132 = bitcast i64* %131 to i8*
  %133 = load i8, i8* %132, !mcsema_real_eip !56
  %134 = sext i8 %133 to i32, !mcsema_real_eip !56
  %135 = zext i32 %134 to i64, !mcsema_real_eip !56
  store i64 %135, i64* %RSI_val, !mcsema_real_eip !56
  %136 = add nsw i32 %134, -35
  %137 = xor i32 %136, %134, !mcsema_real_eip !57
  %138 = and i32 %137, 16, !mcsema_real_eip !57
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !57
  store i1 %139, i1* %AF_val, !mcsema_real_eip !57
  %140 = trunc i32 %136 to i8, !mcsema_real_eip !57
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !57
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF_val, !mcsema_real_eip !57
  %144 = icmp eq i32 %136, 0, !mcsema_real_eip !57
  store i1 %144, i1* %ZF_val, !mcsema_real_eip !57
  %145 = icmp slt i32 %136, 0
  store i1 %145, i1* %SF_val, !mcsema_real_eip !57
  %146 = icmp ult i8 %133, 35
  store i1 %146, i1* %CF_val, !mcsema_real_eip !57
  %147 = and i32 %137, %134, !mcsema_real_eip !57
  %148 = icmp slt i32 %147, 0
  store i1 %148, i1* %OF_val, !mcsema_real_eip !57
  %149 = load i1, i1* %ZF_val, !mcsema_real_eip !58
  br i1 %149, label %block_0x1c0, label %block_0x1cc, !mcsema_real_eip !58

block_0x1cc:                                      ; preds = %entry
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !59
  %150 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %151 = add i64 %150, -20, !mcsema_real_eip !60
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !60
  %153 = bitcast i64* %152 to i32*
  %154 = load i32, i32* %153, !mcsema_real_eip !60
  %155 = sext i32 %154 to i64, !mcsema_real_eip !60
  store i64 %155, i64* %RCX_val, !mcsema_real_eip !60
  %156 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %157 = add i64 %156, -24, !mcsema_real_eip !61
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !61
  %159 = bitcast i64* %158 to i32*
  %160 = load i32, i32* %159, !mcsema_real_eip !61
  %161 = sext i32 %160 to i64, !mcsema_real_eip !61
  %162 = mul i64 %161, 11, !mcsema_real_eip !62
  store i64 %162, i64* %RDX_val, !mcsema_real_eip !62
  %163 = load i64, i64* %RAX_val, !mcsema_real_eip !63
  %uadd349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %162, i64 %163)
  %164 = extractvalue { i64, i1 } %uadd349, 0
  %165 = xor i64 %164, %163, !mcsema_real_eip !63
  %166 = xor i64 %165, %162, !mcsema_real_eip !63
  %167 = and i64 %166, 16, !mcsema_real_eip !63
  %168 = icmp ne i64 %167, 0, !mcsema_real_eip !63
  store i1 %168, i1* %AF_val, !mcsema_real_eip !63
  %169 = icmp slt i64 %164, 0
  store i1 %169, i1* %SF_val, !mcsema_real_eip !63
  %170 = icmp eq i64 %164, 0, !mcsema_real_eip !63
  store i1 %170, i1* %ZF_val, !mcsema_real_eip !63
  %171 = xor i64 %163, -9223372036854775808, !mcsema_real_eip !63
  %172 = xor i64 %171, %162, !mcsema_real_eip !63
  %173 = and i64 %165, %172, !mcsema_real_eip !63
  %174 = icmp slt i64 %173, 0
  store i1 %174, i1* %OF_val, !mcsema_real_eip !63
  %175 = trunc i64 %164 to i8, !mcsema_real_eip !63
  %176 = tail call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !63
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  store i1 %178, i1* %PF_val, !mcsema_real_eip !63
  %179 = extractvalue { i64, i1 } %uadd349, 1
  store i1 %179, i1* %CF_val, !mcsema_real_eip !63
  store i64 %164, i64* %RAX_val, !mcsema_real_eip !63
  %180 = load i64, i64* %RCX_val, !mcsema_real_eip !64
  %181 = add i64 %180, %164, !mcsema_real_eip !64
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !64
  %183 = bitcast i64* %182 to i8*
  %184 = load i8, i8* %183, !mcsema_real_eip !64
  %185 = sext i8 %184 to i32, !mcsema_real_eip !64
  %186 = zext i32 %185 to i64, !mcsema_real_eip !64
  store i64 %186, i64* %RSI_val, !mcsema_real_eip !64
  %187 = add nsw i32 %185, -32
  %188 = xor i32 %187, %185, !mcsema_real_eip !65
  %189 = and i32 %188, 16, !mcsema_real_eip !65
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !65
  store i1 %190, i1* %AF_val, !mcsema_real_eip !65
  %191 = trunc i32 %187 to i8, !mcsema_real_eip !65
  %192 = tail call i8 @llvm.ctpop.i8(i8 %191), !mcsema_real_eip !65
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  store i1 %194, i1* %PF_val, !mcsema_real_eip !65
  %195 = icmp eq i32 %187, 0, !mcsema_real_eip !65
  store i1 %195, i1* %ZF_val, !mcsema_real_eip !65
  %196 = icmp slt i32 %187, 0
  store i1 %196, i1* %SF_val, !mcsema_real_eip !65
  %197 = icmp ult i8 %184, 32
  store i1 %197, i1* %CF_val, !mcsema_real_eip !65
  %198 = and i32 %188, %185, !mcsema_real_eip !65
  %199 = icmp slt i32 %198, 0
  store i1 %199, i1* %OF_val, !mcsema_real_eip !65
  %200 = load i1, i1* %ZF_val, !mcsema_real_eip !66
  br i1 %200, label %block_0x242, label %block_0x1f2, !mcsema_real_eip !66

block_0x1c0:                                      ; preds = %entry
  %201 = load i64, i64* %RBP_val, !mcsema_real_eip !67
  %202 = add i64 %201, -4, !mcsema_real_eip !67
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !67
  %204 = bitcast i64* %203 to i32*
  store i32 0, i32* %204, !mcsema_real_eip !67
  br label %block_0x298, !mcsema_real_eip !68

block_0x298:                                      ; preds = %block_0x18e, %block_0x25a, %block_0x1c0
  %205 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %206 = add i64 %205, -4, !mcsema_real_eip !28
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !28
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %208, !mcsema_real_eip !28
  %210 = zext i32 %209 to i64, !mcsema_real_eip !28
  store i64 %210, i64* %RAX_val, !mcsema_real_eip !28
  %211 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd348 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 96)
  %212 = extractvalue { i64, i1 } %uadd348, 0
  %213 = xor i64 %212, %211, !mcsema_real_eip !29
  %214 = and i64 %213, 16, !mcsema_real_eip !29
  %215 = icmp ne i64 %214, 0, !mcsema_real_eip !29
  store i1 %215, i1* %AF_val, !mcsema_real_eip !29
  %216 = icmp slt i64 %212, 0
  store i1 %216, i1* %SF_val, !mcsema_real_eip !29
  %217 = icmp eq i64 %212, 0, !mcsema_real_eip !29
  store i1 %217, i1* %ZF_val, !mcsema_real_eip !29
  %218 = xor i64 %211, -9223372036854775808, !mcsema_real_eip !29
  %219 = and i64 %213, %218, !mcsema_real_eip !29
  %220 = icmp slt i64 %219, 0
  store i1 %220, i1* %OF_val, !mcsema_real_eip !29
  %221 = trunc i64 %212 to i8, !mcsema_real_eip !29
  %222 = tail call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !29
  %223 = and i8 %222, 1
  %224 = icmp eq i8 %223, 0
  store i1 %224, i1* %PF_val, !mcsema_real_eip !29
  %225 = extractvalue { i64, i1 } %uadd348, 1
  store i1 %225, i1* %CF_val, !mcsema_real_eip !29
  store i64 %212, i64* %RSP_val, !mcsema_real_eip !29
  %226 = inttoptr i64 %212 to i64*, !mcsema_real_eip !30
  %227 = load i64, i64* %226, !mcsema_real_eip !30
  store i64 %227, i64* %RBP_val, !mcsema_real_eip !30
  %228 = add i64 %212, 16, !mcsema_real_eip !31
  store i64 %228, i64* %RSP_val, !mcsema_real_eip !31
  %229 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %229, i64* %RAX, !mcsema_real_eip !31
  %230 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %230, i64* %RBX, !mcsema_real_eip !31
  %231 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %231, i64* %RCX, !mcsema_real_eip !31
  %232 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %232, i64* %RDX, !mcsema_real_eip !31
  %233 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %233, i64* %RSI, !mcsema_real_eip !31
  %234 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %234, i64* %RDI, !mcsema_real_eip !31
  %235 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %235, i64* %RSP, !mcsema_real_eip !31
  %236 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %236, i64* %RBP, !mcsema_real_eip !31
  %237 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %237, i64* %R8, !mcsema_real_eip !31
  %238 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %238, i64* %R9, !mcsema_real_eip !31
  %239 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %239, i64* %R10, !mcsema_real_eip !31
  %240 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %240, i64* %R11, !mcsema_real_eip !31
  %241 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %241, i64* %R12, !mcsema_real_eip !31
  %242 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %242, i64* %R13, !mcsema_real_eip !31
  %243 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %243, i64* %R14, !mcsema_real_eip !31
  %244 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %244, i64* %R15, !mcsema_real_eip !31
  %245 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %245, i64* %RIP, !mcsema_real_eip !31
  %246 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %246, i1* %CF, align 1, !mcsema_real_eip !31
  %247 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %247, i1* %PF, align 1, !mcsema_real_eip !31
  %248 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %248, i1* %AF, align 1, !mcsema_real_eip !31
  %249 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %249, i1* %ZF, align 1, !mcsema_real_eip !31
  %250 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %250, i1* %SF, align 1, !mcsema_real_eip !31
  %251 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %251, i1* %OF, align 1, !mcsema_real_eip !31
  %252 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %252, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %253 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %253, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %254 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %254, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %255 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %255, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %256 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %256, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %257 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %257, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %258 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %258, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %259 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %259, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %260 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %260, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %261 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %261, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %262 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %262, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %263 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %263, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %264 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %264, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %265 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %265, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %266 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %266, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %267 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %267, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %268 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %268, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %269 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %269, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %270 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %270, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %271 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %271, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %272 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %272, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %273 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %273, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %274 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %274, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %275 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %275, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %276 = load i64, i64* %53, align 4
  store i64 %276, i64* %52, align 4
  %277 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %277, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %278 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %278, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %279 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %279, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %280 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %280, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %281 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %281, i128* %XMM0, align 1, !mcsema_real_eip !31
  %282 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %282, i128* %XMM1, align 1, !mcsema_real_eip !31
  %283 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %283, i128* %XMM2, align 1, !mcsema_real_eip !31
  %284 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %284, i128* %XMM3, align 1, !mcsema_real_eip !31
  %285 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %285, i128* %XMM4, align 1, !mcsema_real_eip !31
  %286 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %286, i128* %XMM5, align 1, !mcsema_real_eip !31
  %287 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %287, i128* %XMM6, align 1, !mcsema_real_eip !31
  %288 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %288, i128* %XMM7, align 1, !mcsema_real_eip !31
  %289 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %289, i128* %XMM8, align 1, !mcsema_real_eip !31
  %290 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %290, i128* %XMM9, align 1, !mcsema_real_eip !31
  %291 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %291, i128* %XMM10, align 1, !mcsema_real_eip !31
  %292 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %292, i128* %XMM11, align 1, !mcsema_real_eip !31
  %293 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %293, i128* %XMM12, align 1, !mcsema_real_eip !31
  %294 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %294, i128* %XMM13, align 1, !mcsema_real_eip !31
  %295 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %295, i128* %XMM14, align 1, !mcsema_real_eip !31
  %296 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %296, i128* %XMM15, align 1, !mcsema_real_eip !31
  %297 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %297, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %298 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %298, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x242:                                      ; preds = %block_0x22c, %block_0x1cc
  %299 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %300 = add i64 %299, -28, !mcsema_real_eip !69
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !69
  %302 = bitcast i64* %301 to i32*
  %303 = load i32, i32* %302, !mcsema_real_eip !69
  %304 = zext i32 %303 to i64, !mcsema_real_eip !69
  store i64 %304, i64* %RAX_val, !mcsema_real_eip !69
  %305 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %306 = add i64 %305, -20, !mcsema_real_eip !70
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !70
  %308 = bitcast i64* %307 to i32*
  %309 = load i32, i32* %308, !mcsema_real_eip !70
  %310 = sub i32 %303, %309, !mcsema_real_eip !70
  %311 = xor i32 %310, %303, !mcsema_real_eip !70
  %312 = xor i32 %311, %309, !mcsema_real_eip !70
  %313 = and i32 %312, 16, !mcsema_real_eip !70
  %314 = icmp ne i32 %313, 0, !mcsema_real_eip !70
  store i1 %314, i1* %AF_val, !mcsema_real_eip !70
  %315 = trunc i32 %310 to i8, !mcsema_real_eip !70
  %316 = tail call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !70
  %317 = and i8 %316, 1
  %318 = icmp eq i8 %317, 0
  store i1 %318, i1* %PF_val, !mcsema_real_eip !70
  %319 = icmp eq i32 %303, %309
  store i1 %319, i1* %ZF_val, !mcsema_real_eip !70
  %320 = icmp slt i32 %310, 0
  store i1 %320, i1* %SF_val, !mcsema_real_eip !70
  %321 = icmp ult i32 %303, %309, !mcsema_real_eip !70
  store i1 %321, i1* %CF_val, !mcsema_real_eip !70
  %322 = xor i32 %309, %303, !mcsema_real_eip !70
  %323 = and i32 %311, %322, !mcsema_real_eip !70
  %324 = icmp slt i32 %323, 0
  store i1 %324, i1* %OF_val, !mcsema_real_eip !70
  %325 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %325, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1f2:                                      ; preds = %block_0x1cc
  %326 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %327 = add i64 %326, -24, !mcsema_real_eip !72
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !72
  %329 = bitcast i64* %328 to i32*
  %330 = load i32, i32* %329, !mcsema_real_eip !72
  %331 = add i32 %330, -2
  %332 = xor i32 %331, %330, !mcsema_real_eip !72
  %333 = and i32 %332, 16, !mcsema_real_eip !72
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !72
  store i1 %334, i1* %AF_val, !mcsema_real_eip !72
  %335 = trunc i32 %331 to i8, !mcsema_real_eip !72
  %336 = tail call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !72
  %337 = and i8 %336, 1
  %338 = icmp eq i8 %337, 0
  store i1 %338, i1* %PF_val, !mcsema_real_eip !72
  %339 = icmp eq i32 %331, 0, !mcsema_real_eip !72
  store i1 %339, i1* %ZF_val, !mcsema_real_eip !72
  %340 = icmp slt i32 %331, 0
  store i1 %340, i1* %SF_val, !mcsema_real_eip !72
  %341 = icmp ult i32 %330, 2, !mcsema_real_eip !72
  store i1 %341, i1* %CF_val, !mcsema_real_eip !72
  %342 = and i32 %332, %330, !mcsema_real_eip !72
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF_val, !mcsema_real_eip !72
  %344 = load i1, i1* %ZF_val, !mcsema_real_eip !73
  br i1 %344, label %block_0x1fc, label %block_0x236, !mcsema_real_eip !73

block_0x236:                                      ; preds = %block_0x22c, %block_0x222, %block_0x1fc, %block_0x1f2
  %345 = load i64, i64* %RBP_val, !mcsema_real_eip !74
  %346 = add i64 %345, -28, !mcsema_real_eip !74
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !74
  %348 = bitcast i64* %347 to i32*
  %349 = load i32, i32* %348, !mcsema_real_eip !74
  %350 = zext i32 %349 to i64, !mcsema_real_eip !74
  store i64 %350, i64* %RAX_val, !mcsema_real_eip !74
  %351 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %352 = add i64 %351, -20, !mcsema_real_eip !75
  %353 = inttoptr i64 %352 to i64*, !mcsema_real_eip !75
  %354 = bitcast i64* %353 to i32*
  store i32 %349, i32* %354, !mcsema_real_eip !75
  %355 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %356 = add i64 %355, -32, !mcsema_real_eip !76
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !76
  %358 = bitcast i64* %357 to i32*
  %359 = load i32, i32* %358, !mcsema_real_eip !76
  %360 = zext i32 %359 to i64, !mcsema_real_eip !76
  store i64 %360, i64* %RAX_val, !mcsema_real_eip !76
  %361 = load i64, i64* %RBP_val, !mcsema_real_eip !77
  %362 = add i64 %361, -24, !mcsema_real_eip !77
  %363 = inttoptr i64 %362 to i64*, !mcsema_real_eip !77
  %364 = bitcast i64* %363 to i32*
  store i32 %359, i32* %364, !mcsema_real_eip !77
  %365 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %366 = add i64 %365, -28, !mcsema_real_eip !69
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !69
  %368 = bitcast i64* %367 to i32*
  %369 = load i32, i32* %368, !mcsema_real_eip !69
  %370 = zext i32 %369 to i64, !mcsema_real_eip !69
  store i64 %370, i64* %RAX_val, !mcsema_real_eip !69
  %371 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %372 = add i64 %371, -20, !mcsema_real_eip !70
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !70
  %374 = bitcast i64* %373 to i32*
  %375 = load i32, i32* %374, !mcsema_real_eip !70
  %376 = sub i32 %369, %375, !mcsema_real_eip !70
  %377 = xor i32 %376, %369, !mcsema_real_eip !70
  %378 = xor i32 %377, %375, !mcsema_real_eip !70
  %379 = and i32 %378, 16, !mcsema_real_eip !70
  %380 = icmp ne i32 %379, 0, !mcsema_real_eip !70
  store i1 %380, i1* %AF_val, !mcsema_real_eip !70
  %381 = trunc i32 %376 to i8, !mcsema_real_eip !70
  %382 = tail call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !70
  %383 = and i8 %382, 1
  %384 = icmp eq i8 %383, 0
  store i1 %384, i1* %PF_val, !mcsema_real_eip !70
  %385 = icmp eq i32 %369, %375
  store i1 %385, i1* %ZF_val, !mcsema_real_eip !70
  %386 = icmp slt i32 %376, 0
  store i1 %386, i1* %SF_val, !mcsema_real_eip !70
  %387 = icmp ult i32 %369, %375, !mcsema_real_eip !70
  store i1 %387, i1* %CF_val, !mcsema_real_eip !70
  %388 = xor i32 %375, %369, !mcsema_real_eip !70
  %389 = and i32 %377, %388, !mcsema_real_eip !70
  %390 = icmp slt i32 %389, 0
  store i1 %390, i1* %OF_val, !mcsema_real_eip !70
  %391 = load i1, i1* %ZF_val, !mcsema_real_eip !71
  br i1 %391, label %block_0x24e, label %block_0x266, !mcsema_real_eip !71

block_0x1fc:                                      ; preds = %block_0x1f2
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !78
  %392 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %393 = add i64 %392, -20, !mcsema_real_eip !79
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !79
  %395 = bitcast i64* %394 to i32*
  %396 = load i32, i32* %395, !mcsema_real_eip !79
  %397 = sext i32 %396 to i64, !mcsema_real_eip !79
  store i64 %397, i64* %RCX_val, !mcsema_real_eip !79
  %398 = load i64, i64* %RBP_val, !mcsema_real_eip !80
  %399 = add i64 %398, -24, !mcsema_real_eip !80
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !80
  %401 = bitcast i64* %400 to i32*
  %402 = load i32, i32* %401, !mcsema_real_eip !80
  %403 = sext i32 %402 to i64, !mcsema_real_eip !80
  %404 = mul i64 %403, 11, !mcsema_real_eip !81
  store i64 %404, i64* %RDX_val, !mcsema_real_eip !81
  %405 = load i64, i64* %RAX_val, !mcsema_real_eip !82
  %uadd350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %404, i64 %405)
  %406 = extractvalue { i64, i1 } %uadd350, 0
  %407 = xor i64 %406, %405, !mcsema_real_eip !82
  %408 = xor i64 %407, %404, !mcsema_real_eip !82
  %409 = and i64 %408, 16, !mcsema_real_eip !82
  %410 = icmp ne i64 %409, 0, !mcsema_real_eip !82
  store i1 %410, i1* %AF_val, !mcsema_real_eip !82
  %411 = icmp slt i64 %406, 0
  store i1 %411, i1* %SF_val, !mcsema_real_eip !82
  %412 = icmp eq i64 %406, 0, !mcsema_real_eip !82
  store i1 %412, i1* %ZF_val, !mcsema_real_eip !82
  %413 = xor i64 %405, -9223372036854775808, !mcsema_real_eip !82
  %414 = xor i64 %413, %404, !mcsema_real_eip !82
  %415 = and i64 %407, %414, !mcsema_real_eip !82
  %416 = icmp slt i64 %415, 0
  store i1 %416, i1* %OF_val, !mcsema_real_eip !82
  %417 = trunc i64 %406 to i8, !mcsema_real_eip !82
  %418 = tail call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !82
  %419 = and i8 %418, 1
  %420 = icmp eq i8 %419, 0
  store i1 %420, i1* %PF_val, !mcsema_real_eip !82
  %421 = extractvalue { i64, i1 } %uadd350, 1
  store i1 %421, i1* %CF_val, !mcsema_real_eip !82
  store i64 %406, i64* %RAX_val, !mcsema_real_eip !82
  %422 = load i64, i64* %RCX_val, !mcsema_real_eip !83
  %423 = add i64 %422, %406, !mcsema_real_eip !83
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !83
  %425 = bitcast i64* %424 to i8*
  %426 = load i8, i8* %425, !mcsema_real_eip !83
  %427 = sext i8 %426 to i32, !mcsema_real_eip !83
  %428 = zext i32 %427 to i64, !mcsema_real_eip !83
  store i64 %428, i64* %RSI_val, !mcsema_real_eip !83
  %429 = add nsw i32 %427, -124
  %430 = xor i32 %429, %427, !mcsema_real_eip !84
  %431 = and i32 %430, 16
  %432 = icmp eq i32 %431, 0
  store i1 %432, i1* %AF_val, !mcsema_real_eip !84
  %433 = trunc i32 %429 to i8, !mcsema_real_eip !84
  %434 = tail call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !84
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  store i1 %436, i1* %PF_val, !mcsema_real_eip !84
  %437 = icmp eq i32 %429, 0, !mcsema_real_eip !84
  store i1 %437, i1* %ZF_val, !mcsema_real_eip !84
  %438 = icmp slt i32 %429, 0
  store i1 %438, i1* %SF_val, !mcsema_real_eip !84
  %439 = icmp ult i8 %426, 124
  store i1 %439, i1* %CF_val, !mcsema_real_eip !84
  %440 = and i32 %430, %427, !mcsema_real_eip !84
  %441 = icmp slt i32 %440, 0
  store i1 %441, i1* %OF_val, !mcsema_real_eip !84
  %442 = load i1, i1* %ZF_val, !mcsema_real_eip !85
  br i1 %442, label %block_0x222, label %block_0x236, !mcsema_real_eip !85

block_0x266:                                      ; preds = %block_0x24e, %block_0x236, %block_0x242
  store i64 ptrtoint (%1* @data_0x359 to i64), i64* %RAX_val, !mcsema_real_eip !86
  %443 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %444 = add i64 %443, -20, !mcsema_real_eip !87
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !87
  %446 = bitcast i64* %445 to i32*
  %447 = load i32, i32* %446, !mcsema_real_eip !87
  %448 = sext i32 %447 to i64, !mcsema_real_eip !87
  store i64 %448, i64* %RCX_val, !mcsema_real_eip !87
  %449 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %450 = add i64 %449, -24, !mcsema_real_eip !88
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !88
  %452 = bitcast i64* %451 to i32*
  %453 = load i32, i32* %452, !mcsema_real_eip !88
  %454 = sext i32 %453 to i64, !mcsema_real_eip !88
  %455 = mul i64 %454, 11, !mcsema_real_eip !89
  store i64 %455, i64* %RDX_val, !mcsema_real_eip !89
  %456 = load i64, i64* %RAX_val, !mcsema_real_eip !90
  %uadd352 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %455, i64 %456)
  %457 = extractvalue { i64, i1 } %uadd352, 0
  %458 = xor i64 %457, %456, !mcsema_real_eip !90
  %459 = xor i64 %458, %455, !mcsema_real_eip !90
  %460 = and i64 %459, 16, !mcsema_real_eip !90
  %461 = icmp ne i64 %460, 0, !mcsema_real_eip !90
  store i1 %461, i1* %AF_val, !mcsema_real_eip !90
  %462 = icmp slt i64 %457, 0
  store i1 %462, i1* %SF_val, !mcsema_real_eip !90
  %463 = icmp eq i64 %457, 0, !mcsema_real_eip !90
  store i1 %463, i1* %ZF_val, !mcsema_real_eip !90
  %464 = xor i64 %456, -9223372036854775808, !mcsema_real_eip !90
  %465 = xor i64 %464, %455, !mcsema_real_eip !90
  %466 = and i64 %458, %465, !mcsema_real_eip !90
  %467 = icmp slt i64 %466, 0
  store i1 %467, i1* %OF_val, !mcsema_real_eip !90
  %468 = trunc i64 %457 to i8, !mcsema_real_eip !90
  %469 = tail call i8 @llvm.ctpop.i8(i8 %468), !mcsema_real_eip !90
  %470 = and i8 %469, 1
  %471 = icmp eq i8 %470, 0
  store i1 %471, i1* %PF_val, !mcsema_real_eip !90
  %472 = extractvalue { i64, i1 } %uadd352, 1
  store i1 %472, i1* %CF_val, !mcsema_real_eip !90
  store i64 %457, i64* %RAX_val, !mcsema_real_eip !90
  %473 = load i64, i64* %RCX_val, !mcsema_real_eip !91
  %474 = add i64 %473, %457, !mcsema_real_eip !91
  %475 = inttoptr i64 %474 to i64*, !mcsema_real_eip !91
  %476 = bitcast i64* %475 to i8*
  store i8 88, i8* %476, !mcsema_real_eip !91
  %477 = load i64, i64* %RBP_val, !mcsema_real_eip !92
  %478 = add i64 %477, -36, !mcsema_real_eip !92
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !92
  %480 = bitcast i64* %479 to i32*
  %481 = load i32, i32* %480, !mcsema_real_eip !92
  %uadd353 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %481, i32 1)
  %482 = extractvalue { i32, i1 } %uadd353, 0
  %483 = xor i32 %482, %481, !mcsema_real_eip !93
  %484 = and i32 %483, 16, !mcsema_real_eip !93
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !93
  store i1 %485, i1* %AF_val, !mcsema_real_eip !93
  %486 = icmp slt i32 %482, 0
  store i1 %486, i1* %SF_val, !mcsema_real_eip !93
  %487 = icmp eq i32 %482, 0, !mcsema_real_eip !93
  store i1 %487, i1* %ZF_val, !mcsema_real_eip !93
  %488 = xor i32 %481, -2147483648, !mcsema_real_eip !93
  %489 = and i32 %483, %488, !mcsema_real_eip !93
  %490 = icmp slt i32 %489, 0
  store i1 %490, i1* %OF_val, !mcsema_real_eip !93
  %491 = trunc i32 %482 to i8, !mcsema_real_eip !93
  %492 = tail call i8 @llvm.ctpop.i8(i8 %491), !mcsema_real_eip !93
  %493 = and i8 %492, 1
  %494 = icmp eq i8 %493, 0
  store i1 %494, i1* %PF_val, !mcsema_real_eip !93
  %495 = extractvalue { i32, i1 } %uadd353, 1
  store i1 %495, i1* %CF_val, !mcsema_real_eip !93
  %496 = zext i32 %482 to i64, !mcsema_real_eip !93
  store i64 %496, i64* %RSI_val, !mcsema_real_eip !93
  %497 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %498 = add i64 %497, -36, !mcsema_real_eip !94
  %499 = inttoptr i64 %498 to i64*, !mcsema_real_eip !94
  %500 = bitcast i64* %499 to i32*
  store i32 %482, i32* %500, !mcsema_real_eip !94
  %501 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %502 = add i64 %501, -36, !mcsema_real_eip !25
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !25
  %504 = bitcast i64* %503 to i32*
  %505 = load i32, i32* %504, !mcsema_real_eip !25
  %506 = add i32 %505, -28
  %507 = xor i32 %506, %505, !mcsema_real_eip !25
  %508 = and i32 %507, 16
  %509 = icmp eq i32 %508, 0
  store i1 %509, i1* %AF_val, !mcsema_real_eip !25
  %510 = trunc i32 %506 to i8, !mcsema_real_eip !25
  %511 = tail call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !25
  %512 = and i8 %511, 1
  %513 = icmp eq i8 %512, 0
  store i1 %513, i1* %PF_val, !mcsema_real_eip !25
  %514 = icmp eq i32 %506, 0, !mcsema_real_eip !25
  store i1 %514, i1* %ZF_val, !mcsema_real_eip !25
  %515 = icmp slt i32 %506, 0
  store i1 %515, i1* %SF_val, !mcsema_real_eip !25
  %516 = icmp ult i32 %505, 28, !mcsema_real_eip !25
  store i1 %516, i1* %CF_val, !mcsema_real_eip !25
  %517 = and i32 %507, %505, !mcsema_real_eip !25
  %518 = icmp slt i32 %517, 0
  store i1 %518, i1* %OF_val, !mcsema_real_eip !25
  %tmp = xor i1 %515, %518
  %519 = load i64, i64* %RBP_val, !mcsema_real_eip !26
  br i1 %tmp, label %block_0x11e, label %block_0x291, !mcsema_real_eip !27

block_0x24e:                                      ; preds = %block_0x236, %block_0x242
  %520 = load i64, i64* %RBP_val, !mcsema_real_eip !95
  %521 = add i64 %520, -32, !mcsema_real_eip !95
  %522 = inttoptr i64 %521 to i64*, !mcsema_real_eip !95
  %523 = bitcast i64* %522 to i32*
  %524 = load i32, i32* %523, !mcsema_real_eip !95
  %525 = zext i32 %524 to i64, !mcsema_real_eip !95
  store i64 %525, i64* %RAX_val, !mcsema_real_eip !95
  %526 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %527 = add i64 %526, -24, !mcsema_real_eip !96
  %528 = inttoptr i64 %527 to i64*, !mcsema_real_eip !96
  %529 = bitcast i64* %528 to i32*
  %530 = load i32, i32* %529, !mcsema_real_eip !96
  %531 = sub i32 %524, %530, !mcsema_real_eip !96
  %532 = xor i32 %531, %524, !mcsema_real_eip !96
  %533 = xor i32 %532, %530, !mcsema_real_eip !96
  %534 = and i32 %533, 16, !mcsema_real_eip !96
  %535 = icmp ne i32 %534, 0, !mcsema_real_eip !96
  store i1 %535, i1* %AF_val, !mcsema_real_eip !96
  %536 = trunc i32 %531 to i8, !mcsema_real_eip !96
  %537 = tail call i8 @llvm.ctpop.i8(i8 %536), !mcsema_real_eip !96
  %538 = and i8 %537, 1
  %539 = icmp eq i8 %538, 0
  store i1 %539, i1* %PF_val, !mcsema_real_eip !96
  %540 = icmp eq i32 %524, %530
  store i1 %540, i1* %ZF_val, !mcsema_real_eip !96
  %541 = icmp slt i32 %531, 0
  store i1 %541, i1* %SF_val, !mcsema_real_eip !96
  %542 = icmp ult i32 %524, %530, !mcsema_real_eip !96
  store i1 %542, i1* %CF_val, !mcsema_real_eip !96
  %543 = xor i32 %530, %524, !mcsema_real_eip !96
  %544 = and i32 %532, %543, !mcsema_real_eip !96
  %545 = icmp slt i32 %544, 0
  store i1 %545, i1* %OF_val, !mcsema_real_eip !96
  %546 = load i1, i1* %ZF_val, !mcsema_real_eip !97
  br i1 %546, label %block_0x25a, label %block_0x266, !mcsema_real_eip !97

block_0x222:                                      ; preds = %block_0x1fc
  %547 = load i64, i64* %RBP_val, !mcsema_real_eip !98
  %548 = add i64 %547, -20, !mcsema_real_eip !98
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !98
  %550 = bitcast i64* %549 to i32*
  %551 = load i32, i32* %550, !mcsema_real_eip !98
  store i1 false, i1* %AF_val, !mcsema_real_eip !98
  %552 = trunc i32 %551 to i8, !mcsema_real_eip !98
  %553 = tail call i8 @llvm.ctpop.i8(i8 %552), !mcsema_real_eip !98
  %554 = and i8 %553, 1
  %555 = icmp eq i8 %554, 0
  store i1 %555, i1* %PF_val, !mcsema_real_eip !98
  %556 = icmp eq i32 %551, 0, !mcsema_real_eip !98
  store i1 %556, i1* %ZF_val, !mcsema_real_eip !98
  %557 = icmp slt i32 %551, 0
  store i1 %557, i1* %SF_val, !mcsema_real_eip !98
  store i1 false, i1* %CF_val, !mcsema_real_eip !98
  store i1 false, i1* %OF_val, !mcsema_real_eip !98
  %558 = icmp slt i32 %551, 1
  br i1 %558, label %block_0x236, label %block_0x22c, !mcsema_real_eip !99

block_0x25a:                                      ; preds = %block_0x24e
  %559 = load i64, i64* %RBP_val, !mcsema_real_eip !100
  %560 = add i64 %559, -4, !mcsema_real_eip !100
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !100
  %562 = bitcast i64* %561 to i32*
  store i32 2, i32* %562, !mcsema_real_eip !100
  br label %block_0x298, !mcsema_real_eip !101

block_0x22c:                                      ; preds = %block_0x222
  %563 = load i64, i64* %RBP_val, !mcsema_real_eip !102
  %564 = add i64 %563, -20, !mcsema_real_eip !102
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !102
  %566 = bitcast i64* %565 to i32*
  %567 = load i32, i32* %566, !mcsema_real_eip !102
  %568 = add i32 %567, -11
  %569 = xor i32 %568, %567, !mcsema_real_eip !102
  %570 = and i32 %569, 16, !mcsema_real_eip !102
  %571 = icmp ne i32 %570, 0, !mcsema_real_eip !102
  store i1 %571, i1* %AF_val, !mcsema_real_eip !102
  %572 = trunc i32 %568 to i8, !mcsema_real_eip !102
  %573 = tail call i8 @llvm.ctpop.i8(i8 %572), !mcsema_real_eip !102
  %574 = and i8 %573, 1
  %575 = icmp eq i8 %574, 0
  store i1 %575, i1* %PF_val, !mcsema_real_eip !102
  %576 = icmp eq i32 %568, 0, !mcsema_real_eip !102
  store i1 %576, i1* %ZF_val, !mcsema_real_eip !102
  %577 = icmp slt i32 %568, 0
  store i1 %577, i1* %SF_val, !mcsema_real_eip !102
  %578 = icmp ult i32 %567, 11, !mcsema_real_eip !102
  store i1 %578, i1* %CF_val, !mcsema_real_eip !102
  %579 = and i32 %569, %567, !mcsema_real_eip !102
  %580 = icmp slt i32 %579, 0
  store i1 %580, i1* %OF_val, !mcsema_real_eip !102
  %581 = xor i1 %577, %580
  br i1 %581, label %block_0x242, label %block_0x236, !mcsema_real_eip !103

block_0x291:                                      ; preds = %block_0x266
  %582 = add i64 %519, -4, !mcsema_real_eip !26
  %583 = inttoptr i64 %582 to i64*, !mcsema_real_eip !26
  %584 = bitcast i64* %583 to i32*
  store i32 1, i32* %584, !mcsema_real_eip !26
  %585 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %586 = add i64 %585, -4, !mcsema_real_eip !28
  %587 = inttoptr i64 %586 to i64*, !mcsema_real_eip !28
  %588 = bitcast i64* %587 to i32*
  %589 = load i32, i32* %588, !mcsema_real_eip !28
  %590 = zext i32 %589 to i64, !mcsema_real_eip !28
  store i64 %590, i64* %RAX_val, !mcsema_real_eip !28
  %591 = load i64, i64* %RSP_val, !mcsema_real_eip !29
  %uadd357 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %591, i64 96)
  %592 = extractvalue { i64, i1 } %uadd357, 0
  %593 = xor i64 %592, %591, !mcsema_real_eip !29
  %594 = and i64 %593, 16, !mcsema_real_eip !29
  %595 = icmp ne i64 %594, 0, !mcsema_real_eip !29
  store i1 %595, i1* %AF_val, !mcsema_real_eip !29
  %596 = icmp slt i64 %592, 0
  store i1 %596, i1* %SF_val, !mcsema_real_eip !29
  %597 = icmp eq i64 %592, 0, !mcsema_real_eip !29
  store i1 %597, i1* %ZF_val, !mcsema_real_eip !29
  %598 = xor i64 %591, -9223372036854775808, !mcsema_real_eip !29
  %599 = and i64 %593, %598, !mcsema_real_eip !29
  %600 = icmp slt i64 %599, 0
  store i1 %600, i1* %OF_val, !mcsema_real_eip !29
  %601 = trunc i64 %592 to i8, !mcsema_real_eip !29
  %602 = tail call i8 @llvm.ctpop.i8(i8 %601), !mcsema_real_eip !29
  %603 = and i8 %602, 1
  %604 = icmp eq i8 %603, 0
  store i1 %604, i1* %PF_val, !mcsema_real_eip !29
  %605 = extractvalue { i64, i1 } %uadd357, 1
  store i1 %605, i1* %CF_val, !mcsema_real_eip !29
  store i64 %592, i64* %RSP_val, !mcsema_real_eip !29
  %606 = inttoptr i64 %592 to i64*, !mcsema_real_eip !30
  %607 = load i64, i64* %606, !mcsema_real_eip !30
  store i64 %607, i64* %RBP_val, !mcsema_real_eip !30
  %608 = add i64 %592, 16, !mcsema_real_eip !31
  store i64 %608, i64* %RSP_val, !mcsema_real_eip !31
  %609 = load i64, i64* %RAX_val, !mcsema_real_eip !31
  store i64 %609, i64* %RAX, !mcsema_real_eip !31
  %610 = load i64, i64* %RBX_val, !mcsema_real_eip !31
  store i64 %610, i64* %RBX, !mcsema_real_eip !31
  %611 = load i64, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %611, i64* %RCX, !mcsema_real_eip !31
  %612 = load i64, i64* %RDX_val, !mcsema_real_eip !31
  store i64 %612, i64* %RDX, !mcsema_real_eip !31
  %613 = load i64, i64* %RSI_val, !mcsema_real_eip !31
  store i64 %613, i64* %RSI, !mcsema_real_eip !31
  %614 = load i64, i64* %RDI_val, !mcsema_real_eip !31
  store i64 %614, i64* %RDI, !mcsema_real_eip !31
  %615 = load i64, i64* %RSP_val, !mcsema_real_eip !31
  store i64 %615, i64* %RSP, !mcsema_real_eip !31
  %616 = load i64, i64* %RBP_val, !mcsema_real_eip !31
  store i64 %616, i64* %RBP, !mcsema_real_eip !31
  %617 = load i64, i64* %R8_val, !mcsema_real_eip !31
  store i64 %617, i64* %R8, !mcsema_real_eip !31
  %618 = load i64, i64* %R9_val, !mcsema_real_eip !31
  store i64 %618, i64* %R9, !mcsema_real_eip !31
  %619 = load i64, i64* %R10_val, !mcsema_real_eip !31
  store i64 %619, i64* %R10, !mcsema_real_eip !31
  %620 = load i64, i64* %R11_val, !mcsema_real_eip !31
  store i64 %620, i64* %R11, !mcsema_real_eip !31
  %621 = load i64, i64* %R12_val, !mcsema_real_eip !31
  store i64 %621, i64* %R12, !mcsema_real_eip !31
  %622 = load i64, i64* %R13_val, !mcsema_real_eip !31
  store i64 %622, i64* %R13, !mcsema_real_eip !31
  %623 = load i64, i64* %R14_val, !mcsema_real_eip !31
  store i64 %623, i64* %R14, !mcsema_real_eip !31
  %624 = load i64, i64* %R15_val, !mcsema_real_eip !31
  store i64 %624, i64* %R15, !mcsema_real_eip !31
  %625 = load i64, i64* %RIP_val, !mcsema_real_eip !31
  store i64 %625, i64* %RIP, !mcsema_real_eip !31
  %626 = load i1, i1* %CF_val, !mcsema_real_eip !31
  store i1 %626, i1* %CF, align 1, !mcsema_real_eip !31
  %627 = load i1, i1* %PF_val, !mcsema_real_eip !31
  store i1 %627, i1* %PF, align 1, !mcsema_real_eip !31
  %628 = load i1, i1* %AF_val, !mcsema_real_eip !31
  store i1 %628, i1* %AF, align 1, !mcsema_real_eip !31
  %629 = load i1, i1* %ZF_val, !mcsema_real_eip !31
  store i1 %629, i1* %ZF, align 1, !mcsema_real_eip !31
  %630 = load i1, i1* %SF_val, !mcsema_real_eip !31
  store i1 %630, i1* %SF, align 1, !mcsema_real_eip !31
  %631 = load i1, i1* %OF_val, !mcsema_real_eip !31
  store i1 %631, i1* %OF, align 1, !mcsema_real_eip !31
  %632 = load i1, i1* %DF_val, !mcsema_real_eip !31
  store i1 %632, i1* %DF, align 1, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !31
  %633 = load i1, i1* %FPU_B_val, !mcsema_real_eip !31
  store i1 %633, i1* %FPU_B, align 1, !mcsema_real_eip !31
  %634 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !31
  store i1 %634, i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %635 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !31
  store i3 %635, i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %636 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !31
  store i1 %636, i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %637 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !31
  store i1 %637, i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %638 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !31
  store i1 %638, i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %639 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !31
  store i1 %639, i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %640 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !31
  store i1 %640, i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %641 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !31
  store i1 %641, i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %642 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !31
  store i1 %642, i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %643 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !31
  store i1 %643, i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %644 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !31
  store i1 %644, i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %645 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !31
  store i1 %645, i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %646 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !31
  store i1 %646, i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %647 = load i1, i1* %FPU_X_val, !mcsema_real_eip !31
  store i1 %647, i1* %FPU_X, align 1, !mcsema_real_eip !31
  %648 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !31
  store i2 %648, i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %649 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !31
  store i2 %649, i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %650 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !31
  store i1 %650, i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %651 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !31
  store i1 %651, i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %652 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !31
  store i1 %652, i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %653 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !31
  store i1 %653, i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %654 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !31
  store i1 %654, i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %655 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !31
  store i1 %655, i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %656 = load i64, i64* %53, align 4
  store i64 %656, i64* %52, align 4
  %657 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !31
  store i16 %657, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %658 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !31
  store i64 %658, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !31
  %659 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !31
  store i16 %659, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %660 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !31
  store i64 %660, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !31
  %661 = load i128, i128* %XMM0_val, !mcsema_real_eip !31
  store i128 %661, i128* %XMM0, align 1, !mcsema_real_eip !31
  %662 = load i128, i128* %XMM1_val, !mcsema_real_eip !31
  store i128 %662, i128* %XMM1, align 1, !mcsema_real_eip !31
  %663 = load i128, i128* %XMM2_val, !mcsema_real_eip !31
  store i128 %663, i128* %XMM2, align 1, !mcsema_real_eip !31
  %664 = load i128, i128* %XMM3_val, !mcsema_real_eip !31
  store i128 %664, i128* %XMM3, align 1, !mcsema_real_eip !31
  %665 = load i128, i128* %XMM4_val, !mcsema_real_eip !31
  store i128 %665, i128* %XMM4, align 1, !mcsema_real_eip !31
  %666 = load i128, i128* %XMM5_val, !mcsema_real_eip !31
  store i128 %666, i128* %XMM5, align 1, !mcsema_real_eip !31
  %667 = load i128, i128* %XMM6_val, !mcsema_real_eip !31
  store i128 %667, i128* %XMM6, align 1, !mcsema_real_eip !31
  %668 = load i128, i128* %XMM7_val, !mcsema_real_eip !31
  store i128 %668, i128* %XMM7, align 1, !mcsema_real_eip !31
  %669 = load i128, i128* %XMM8_val, !mcsema_real_eip !31
  store i128 %669, i128* %XMM8, align 1, !mcsema_real_eip !31
  %670 = load i128, i128* %XMM9_val, !mcsema_real_eip !31
  store i128 %670, i128* %XMM9, align 1, !mcsema_real_eip !31
  %671 = load i128, i128* %XMM10_val, !mcsema_real_eip !31
  store i128 %671, i128* %XMM10, align 1, !mcsema_real_eip !31
  %672 = load i128, i128* %XMM11_val, !mcsema_real_eip !31
  store i128 %672, i128* %XMM11, align 1, !mcsema_real_eip !31
  %673 = load i128, i128* %XMM12_val, !mcsema_real_eip !31
  store i128 %673, i128* %XMM12, align 1, !mcsema_real_eip !31
  %674 = load i128, i128* %XMM13_val, !mcsema_real_eip !31
  store i128 %674, i128* %XMM13, align 1, !mcsema_real_eip !31
  %675 = load i128, i128* %XMM14_val, !mcsema_real_eip !31
  store i128 %675, i128* %XMM14, align 1, !mcsema_real_eip !31
  %676 = load i128, i128* %XMM15_val, !mcsema_real_eip !31
  store i128 %676, i128* %XMM15, align 1, !mcsema_real_eip !31
  %677 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !31
  store i64 %677, i64* %STACK_BASE, align 1, !mcsema_real_eip !31
  %678 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !31
  store i64 %678, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x11e:                                      ; preds = %block_0x266
  %679 = add i64 %519, -20, !mcsema_real_eip !32
  %680 = inttoptr i64 %679 to i64*, !mcsema_real_eip !32
  %681 = bitcast i64* %680 to i32*
  %682 = load i32, i32* %681, !mcsema_real_eip !32
  %683 = zext i32 %682 to i64, !mcsema_real_eip !32
  store i64 %683, i64* %RAX_val, !mcsema_real_eip !32
  %684 = load i64, i64* %RBP_val, !mcsema_real_eip !33
  %685 = add i64 %684, -28, !mcsema_real_eip !33
  %686 = inttoptr i64 %685 to i64*, !mcsema_real_eip !33
  %687 = bitcast i64* %686 to i32*
  store i32 %682, i32* %687, !mcsema_real_eip !33
  %688 = load i64, i64* %RBP_val, !mcsema_real_eip !34
  %689 = add i64 %688, -24, !mcsema_real_eip !34
  %690 = inttoptr i64 %689 to i64*, !mcsema_real_eip !34
  %691 = bitcast i64* %690 to i32*
  %692 = load i32, i32* %691, !mcsema_real_eip !34
  %693 = zext i32 %692 to i64, !mcsema_real_eip !34
  store i64 %693, i64* %RAX_val, !mcsema_real_eip !34
  %694 = load i64, i64* %RBP_val, !mcsema_real_eip !35
  %695 = add i64 %694, -32, !mcsema_real_eip !35
  %696 = inttoptr i64 %695 to i64*, !mcsema_real_eip !35
  %697 = bitcast i64* %696 to i32*
  store i32 %692, i32* %697, !mcsema_real_eip !35
  %698 = load i64, i64* %RBP_val, !mcsema_real_eip !36
  %699 = add i64 %698, -36, !mcsema_real_eip !36
  %700 = inttoptr i64 %699 to i64*, !mcsema_real_eip !36
  %701 = bitcast i64* %700 to i32*
  %702 = load i32, i32* %701, !mcsema_real_eip !36
  %703 = sext i32 %702 to i64, !mcsema_real_eip !36
  store i64 %703, i64* %RCX_val, !mcsema_real_eip !36
  %704 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %705 = add i64 %704, -64, !mcsema_real_eip !37
  %706 = add i64 %705, %703, !mcsema_real_eip !37
  %707 = inttoptr i64 %706 to i64*, !mcsema_real_eip !37
  %708 = bitcast i64* %707 to i8*
  %709 = load i8, i8* %708, !mcsema_real_eip !37
  %710 = sext i8 %709 to i32, !mcsema_real_eip !37
  %711 = add nsw i32 %710, -97
  %712 = zext i32 %711 to i64, !mcsema_real_eip !38
  store i64 %712, i64* %RCX_val, !mcsema_real_eip !39
  %713 = add nsw i32 %710, -119
  %714 = xor i32 %713, %711, !mcsema_real_eip !40
  %715 = and i32 %714, 16
  %716 = icmp eq i32 %715, 0
  store i1 %716, i1* %AF_val, !mcsema_real_eip !40
  %717 = trunc i32 %713 to i8, !mcsema_real_eip !40
  %718 = tail call i8 @llvm.ctpop.i8(i8 %717), !mcsema_real_eip !40
  %719 = and i8 %718, 1
  %720 = icmp eq i8 %719, 0
  store i1 %720, i1* %PF_val, !mcsema_real_eip !40
  %721 = icmp eq i32 %713, 0, !mcsema_real_eip !40
  store i1 %721, i1* %ZF_val, !mcsema_real_eip !40
  %722 = icmp slt i32 %713, 0
  store i1 %722, i1* %SF_val, !mcsema_real_eip !40
  %723 = icmp ult i32 %711, 22, !mcsema_real_eip !40
  store i1 %723, i1* %CF_val, !mcsema_real_eip !40
  %724 = and i32 %714, %711, !mcsema_real_eip !40
  %725 = icmp slt i32 %724, 0
  store i1 %725, i1* %OF_val, !mcsema_real_eip !40
  %726 = zext i32 %713 to i64, !mcsema_real_eip !40
  store i64 %726, i64* %RAX_val, !mcsema_real_eip !40
  %727 = load i64, i64* %RBP_val, !mcsema_real_eip !41
  %728 = add i64 %727, -80, !mcsema_real_eip !41
  %729 = inttoptr i64 %728 to i64*, !mcsema_real_eip !41
  %730 = load i64, i64* %RCX_val, !mcsema_real_eip !41
  store i64 %730, i64* %729, !mcsema_real_eip !41
  %731 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %732 = add i64 %731, -84, !mcsema_real_eip !42
  %733 = inttoptr i64 %732 to i64*, !mcsema_real_eip !42
  %734 = load i64, i64* %RAX_val, !mcsema_real_eip !42
  %735 = trunc i64 %734 to i32, !mcsema_real_eip !42
  %736 = bitcast i64* %733 to i32*
  store i32 %735, i32* %736, !mcsema_real_eip !42
  %737 = load i1, i1* %ZF_val, !mcsema_real_eip !43
  %738 = load i1, i1* %CF_val, !mcsema_real_eip !43
  %.demorgan = or i1 %738, %737
  %739 = load i64, i64* %RBP_val, !mcsema_real_eip !44
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !43

block_0x18e:                                      ; preds = %block_0x11e
  %740 = add i64 %739, -4, !mcsema_real_eip !44
  %741 = inttoptr i64 %740 to i64*, !mcsema_real_eip !44
  %742 = bitcast i64* %741 to i32*
  store i32 1, i32* %742, !mcsema_real_eip !44
  br label %block_0x298, !mcsema_real_eip !104

block_0x148:                                      ; preds = %block_0x11e
  %743 = add i64 %739, -80, !mcsema_real_eip !45
  %744 = inttoptr i64 %743 to i64*, !mcsema_real_eip !45
  %745 = load i64, i64* %744, !mcsema_real_eip !45
  store i64 %745, i64* %RAX_val, !mcsema_real_eip !45
  %746 = shl i64 %745, 3
  %747 = add i64 %746, ptrtoint (%0* @data_0x2a1 to i64), !mcsema_real_eip !46
  %748 = inttoptr i64 %747 to i64*, !mcsema_real_eip !46
  %749 = load i64, i64* %748, !mcsema_real_eip !46
  store i64 %749, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %745, i64* %RAX, !mcsema_real_eip !47
  %750 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %750, i64* %RBX, !mcsema_real_eip !47
  %751 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %751, i64* %RCX, !mcsema_real_eip !47
  %752 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %752, i64* %RDX, !mcsema_real_eip !47
  %753 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %753, i64* %RSI, !mcsema_real_eip !47
  %754 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %754, i64* %RDI, !mcsema_real_eip !47
  %755 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %755, i64* %RSP, !mcsema_real_eip !47
  %756 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %756, i64* %RBP, !mcsema_real_eip !47
  %757 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %757, i64* %R8, !mcsema_real_eip !47
  %758 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %758, i64* %R9, !mcsema_real_eip !47
  %759 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %759, i64* %R10, !mcsema_real_eip !47
  %760 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %760, i64* %R11, !mcsema_real_eip !47
  %761 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %761, i64* %R12, !mcsema_real_eip !47
  %762 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %762, i64* %R13, !mcsema_real_eip !47
  %763 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %763, i64* %R14, !mcsema_real_eip !47
  %764 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %764, i64* %R15, !mcsema_real_eip !47
  %765 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %765, i64* %RIP, !mcsema_real_eip !47
  %766 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %766, i1* %CF, align 1, !mcsema_real_eip !47
  %767 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %767, i1* %PF, align 1, !mcsema_real_eip !47
  %768 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %768, i1* %AF, align 1, !mcsema_real_eip !47
  %769 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %769, i1* %ZF, align 1, !mcsema_real_eip !47
  %770 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %770, i1* %SF, align 1, !mcsema_real_eip !47
  %771 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %771, i1* %OF, align 1, !mcsema_real_eip !47
  %772 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %772, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %773 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %773, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %774 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %774, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %775 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %775, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %776 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %776, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %777 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %777, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %778 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %778, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %779 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %779, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %780 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %780, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %781 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %781, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %782 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %782, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %783 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %783, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %784 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %784, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %785 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %785, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %786 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %786, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %787 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %787, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %788 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %788, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %789 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %789, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %790 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %790, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %791 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %791, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %792 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %792, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %793 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %793, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %794 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %794, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %795 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %795, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %796 = load i64, i64* %53, align 4
  store i64 %796, i64* %52, align 4
  %797 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %797, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %798 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %798, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %799 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %799, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %800 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %800, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %801 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %801, i128* %XMM0, align 1, !mcsema_real_eip !47
  %802 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %802, i128* %XMM1, align 1, !mcsema_real_eip !47
  %803 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %803, i128* %XMM2, align 1, !mcsema_real_eip !47
  %804 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %804, i128* %XMM3, align 1, !mcsema_real_eip !47
  %805 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %805, i128* %XMM4, align 1, !mcsema_real_eip !47
  %806 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %806, i128* %XMM5, align 1, !mcsema_real_eip !47
  %807 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %807, i128* %XMM6, align 1, !mcsema_real_eip !47
  %808 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %808, i128* %XMM7, align 1, !mcsema_real_eip !47
  %809 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %809, i128* %XMM8, align 1, !mcsema_real_eip !47
  %810 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %810, i128* %XMM9, align 1, !mcsema_real_eip !47
  %811 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %811, i128* %XMM10, align 1, !mcsema_real_eip !47
  %812 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %812, i128* %XMM11, align 1, !mcsema_real_eip !47
  %813 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %813, i128* %XMM12, align 1, !mcsema_real_eip !47
  %814 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %814, i128* %XMM13, align 1, !mcsema_real_eip !47
  %815 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %815, i128* %XMM14, align 1, !mcsema_real_eip !47
  %816 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %816, i128* %XMM15, align 1, !mcsema_real_eip !47
  %817 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %817, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %818 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %818, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  call void @do_call_value.5(%struct.regs* %0, i64 %749, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %819 = load i64, i64* %RAX, !mcsema_real_eip !47
  store i64 %819, i64* %RAX_val, !mcsema_real_eip !47
  %820 = load i64, i64* %RBX, !mcsema_real_eip !47
  store i64 %820, i64* %RBX_val, !mcsema_real_eip !47
  %821 = load i64, i64* %RCX, !mcsema_real_eip !47
  store i64 %821, i64* %RCX_val, !mcsema_real_eip !47
  %822 = load i64, i64* %RDX, !mcsema_real_eip !47
  store i64 %822, i64* %RDX_val, !mcsema_real_eip !47
  %823 = load i64, i64* %RSI, !mcsema_real_eip !47
  store i64 %823, i64* %RSI_val, !mcsema_real_eip !47
  %824 = load i64, i64* %RDI, !mcsema_real_eip !47
  store i64 %824, i64* %RDI_val, !mcsema_real_eip !47
  %825 = load i64, i64* %RSP, !mcsema_real_eip !47
  store i64 %825, i64* %RSP_val, !mcsema_real_eip !47
  %826 = load i64, i64* %RBP, !mcsema_real_eip !47
  store i64 %826, i64* %RBP_val, !mcsema_real_eip !47
  %827 = load i64, i64* %R8, !mcsema_real_eip !47
  store i64 %827, i64* %R8_val, !mcsema_real_eip !47
  %828 = load i64, i64* %R9, !mcsema_real_eip !47
  store i64 %828, i64* %R9_val, !mcsema_real_eip !47
  %829 = load i64, i64* %R10, !mcsema_real_eip !47
  store i64 %829, i64* %R10_val, !mcsema_real_eip !47
  %830 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %830, i64* %R11_val, !mcsema_real_eip !47
  %831 = load i64, i64* %R12, !mcsema_real_eip !47
  store i64 %831, i64* %R12_val, !mcsema_real_eip !47
  %832 = load i64, i64* %R13, !mcsema_real_eip !47
  store i64 %832, i64* %R13_val, !mcsema_real_eip !47
  %833 = load i64, i64* %R14, !mcsema_real_eip !47
  store i64 %833, i64* %R14_val, !mcsema_real_eip !47
  %834 = load i64, i64* %R15, !mcsema_real_eip !47
  store i64 %834, i64* %R15_val, !mcsema_real_eip !47
  %835 = load i64, i64* %RIP, !mcsema_real_eip !47
  store i64 %835, i64* %RIP_val, !mcsema_real_eip !47
  %836 = load i1, i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %836, i1* %CF_val, !mcsema_real_eip !47
  %837 = load i1, i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %837, i1* %PF_val, !mcsema_real_eip !47
  %838 = load i1, i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %838, i1* %AF_val, !mcsema_real_eip !47
  %839 = load i1, i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %839, i1* %ZF_val, !mcsema_real_eip !47
  %840 = load i1, i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %840, i1* %SF_val, !mcsema_real_eip !47
  %841 = load i1, i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %841, i1* %OF_val, !mcsema_real_eip !47
  %842 = load i1, i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %842, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %843 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %843, i1* %FPU_B_val, !mcsema_real_eip !47
  %844 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %844, i1* %FPU_C3_val, !mcsema_real_eip !47
  %845 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %845, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %846 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %846, i1* %FPU_C2_val, !mcsema_real_eip !47
  %847 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %847, i1* %FPU_C1_val, !mcsema_real_eip !47
  %848 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %848, i1* %FPU_C0_val, !mcsema_real_eip !47
  %849 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %849, i1* %FPU_ES_val, !mcsema_real_eip !47
  %850 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %850, i1* %FPU_SF_val, !mcsema_real_eip !47
  %851 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %851, i1* %FPU_PE_val, !mcsema_real_eip !47
  %852 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %852, i1* %FPU_UE_val, !mcsema_real_eip !47
  %853 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %853, i1* %FPU_OE_val, !mcsema_real_eip !47
  %854 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %854, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %855 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %855, i1* %FPU_DE_val, !mcsema_real_eip !47
  %856 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %856, i1* %FPU_IE_val, !mcsema_real_eip !47
  %857 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %857, i1* %FPU_X_val, !mcsema_real_eip !47
  %858 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %858, i2* %FPU_RC_val, !mcsema_real_eip !47
  %859 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %859, i2* %FPU_PC_val, !mcsema_real_eip !47
  %860 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %860, i1* %FPU_PM_val, !mcsema_real_eip !47
  %861 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %861, i1* %FPU_UM_val, !mcsema_real_eip !47
  %862 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %862, i1* %FPU_OM_val, !mcsema_real_eip !47
  %863 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %863, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %864 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %864, i1* %FPU_DM_val, !mcsema_real_eip !47
  %865 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %865, i1* %FPU_IM_val, !mcsema_real_eip !47
  %866 = load i64, i64* %52, align 4
  store i64 %866, i64* %53, align 4
  %867 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %867, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %868 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %868, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %869 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %869, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %870 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %870, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %871 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %871, i128* %XMM0_val, !mcsema_real_eip !47
  %872 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %872, i128* %XMM1_val, !mcsema_real_eip !47
  %873 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %873, i128* %XMM2_val, !mcsema_real_eip !47
  %874 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %874, i128* %XMM3_val, !mcsema_real_eip !47
  %875 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %875, i128* %XMM4_val, !mcsema_real_eip !47
  %876 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %876, i128* %XMM5_val, !mcsema_real_eip !47
  %877 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %877, i128* %XMM6_val, !mcsema_real_eip !47
  %878 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %878, i128* %XMM7_val, !mcsema_real_eip !47
  %879 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %879, i128* %XMM8_val, !mcsema_real_eip !47
  %880 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %880, i128* %XMM9_val, !mcsema_real_eip !47
  %881 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %881, i128* %XMM10_val, !mcsema_real_eip !47
  %882 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %882, i128* %XMM11_val, !mcsema_real_eip !47
  %883 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %883, i128* %XMM12_val, !mcsema_real_eip !47
  %884 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %884, i128* %XMM13_val, !mcsema_real_eip !47
  %885 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %885, i128* %XMM14_val, !mcsema_real_eip !47
  %886 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %886, i128* %XMM15_val, !mcsema_real_eip !47
  %887 = load i64, i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %887, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %888 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %888, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %889 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  %890 = add i64 %889, 8, !mcsema_real_eip !47
  store i64 %890, i64* %RSP_val, !mcsema_real_eip !47
  %891 = load i64, i64* %RAX_val, !mcsema_real_eip !47
  store i64 %891, i64* %RAX, !mcsema_real_eip !47
  %892 = load i64, i64* %RBX_val, !mcsema_real_eip !47
  store i64 %892, i64* %RBX, !mcsema_real_eip !47
  %893 = load i64, i64* %RCX_val, !mcsema_real_eip !47
  store i64 %893, i64* %RCX, !mcsema_real_eip !47
  %894 = load i64, i64* %RDX_val, !mcsema_real_eip !47
  store i64 %894, i64* %RDX, !mcsema_real_eip !47
  %895 = load i64, i64* %RSI_val, !mcsema_real_eip !47
  store i64 %895, i64* %RSI, !mcsema_real_eip !47
  %896 = load i64, i64* %RDI_val, !mcsema_real_eip !47
  store i64 %896, i64* %RDI, !mcsema_real_eip !47
  %897 = load i64, i64* %RSP_val, !mcsema_real_eip !47
  store i64 %897, i64* %RSP, !mcsema_real_eip !47
  %898 = load i64, i64* %RBP_val, !mcsema_real_eip !47
  store i64 %898, i64* %RBP, !mcsema_real_eip !47
  %899 = load i64, i64* %R8_val, !mcsema_real_eip !47
  store i64 %899, i64* %R8, !mcsema_real_eip !47
  %900 = load i64, i64* %R9_val, !mcsema_real_eip !47
  store i64 %900, i64* %R9, !mcsema_real_eip !47
  %901 = load i64, i64* %R10_val, !mcsema_real_eip !47
  store i64 %901, i64* %R10, !mcsema_real_eip !47
  %902 = load i64, i64* %R11_val, !mcsema_real_eip !47
  store i64 %902, i64* %R11, !mcsema_real_eip !47
  %903 = load i64, i64* %R12_val, !mcsema_real_eip !47
  store i64 %903, i64* %R12, !mcsema_real_eip !47
  %904 = load i64, i64* %R13_val, !mcsema_real_eip !47
  store i64 %904, i64* %R13, !mcsema_real_eip !47
  %905 = load i64, i64* %R14_val, !mcsema_real_eip !47
  store i64 %905, i64* %R14, !mcsema_real_eip !47
  %906 = load i64, i64* %R15_val, !mcsema_real_eip !47
  store i64 %906, i64* %R15, !mcsema_real_eip !47
  %907 = load i64, i64* %RIP_val, !mcsema_real_eip !47
  store i64 %907, i64* %RIP, !mcsema_real_eip !47
  %908 = load i1, i1* %CF_val, !mcsema_real_eip !47
  store i1 %908, i1* %CF, align 1, !mcsema_real_eip !47
  %909 = load i1, i1* %PF_val, !mcsema_real_eip !47
  store i1 %909, i1* %PF, align 1, !mcsema_real_eip !47
  %910 = load i1, i1* %AF_val, !mcsema_real_eip !47
  store i1 %910, i1* %AF, align 1, !mcsema_real_eip !47
  %911 = load i1, i1* %ZF_val, !mcsema_real_eip !47
  store i1 %911, i1* %ZF, align 1, !mcsema_real_eip !47
  %912 = load i1, i1* %SF_val, !mcsema_real_eip !47
  store i1 %912, i1* %SF, align 1, !mcsema_real_eip !47
  %913 = load i1, i1* %OF_val, !mcsema_real_eip !47
  store i1 %913, i1* %OF, align 1, !mcsema_real_eip !47
  %914 = load i1, i1* %DF_val, !mcsema_real_eip !47
  store i1 %914, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %915 = load i1, i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %915, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %916 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %916, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %917 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %917, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %918 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %918, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %919 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %919, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %920 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %920, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %921 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %921, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %922 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %922, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %923 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %923, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %924 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %924, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %925 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %925, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %926 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %926, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %927 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %927, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %928 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %928, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %929 = load i1, i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %929, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %930 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %930, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %931 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %931, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %932 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %932, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %933 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %933, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %934 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %934, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %935 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %935, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %936 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %936, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %937 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %937, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %938 = load i64, i64* %53, align 4
  store i64 %938, i64* %52, align 4
  %939 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %939, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %940 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %940, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %941 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %941, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %942 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %942, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %943 = load i128, i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %943, i128* %XMM0, align 1, !mcsema_real_eip !47
  %944 = load i128, i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %944, i128* %XMM1, align 1, !mcsema_real_eip !47
  %945 = load i128, i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %945, i128* %XMM2, align 1, !mcsema_real_eip !47
  %946 = load i128, i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %946, i128* %XMM3, align 1, !mcsema_real_eip !47
  %947 = load i128, i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %947, i128* %XMM4, align 1, !mcsema_real_eip !47
  %948 = load i128, i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %948, i128* %XMM5, align 1, !mcsema_real_eip !47
  %949 = load i128, i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %949, i128* %XMM6, align 1, !mcsema_real_eip !47
  %950 = load i128, i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %950, i128* %XMM7, align 1, !mcsema_real_eip !47
  %951 = load i128, i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %951, i128* %XMM8, align 1, !mcsema_real_eip !47
  %952 = load i128, i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %952, i128* %XMM9, align 1, !mcsema_real_eip !47
  %953 = load i128, i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %953, i128* %XMM10, align 1, !mcsema_real_eip !47
  %954 = load i128, i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %954, i128* %XMM11, align 1, !mcsema_real_eip !47
  %955 = load i128, i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %955, i128* %XMM12, align 1, !mcsema_real_eip !47
  %956 = load i128, i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %956, i128* %XMM13, align 1, !mcsema_real_eip !47
  %957 = load i128, i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %957, i128* %XMM14, align 1, !mcsema_real_eip !47
  %958 = load i128, i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %958, i128* %XMM15, align 1, !mcsema_real_eip !47
  %959 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %959, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %960 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %960, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  tail call x86_64_sysvcc void @sub_b0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value.1(%struct.regs* %reg_context, i64 %ptr, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
  %_local_stack_alloc_1 = alloca i64, i64 0
  %_local_stack_start_ptr_2 = getelementptr inbounds i64, i64* %_local_stack_alloc_1, i32 0
  %_local_stack_start_3 = ptrtoint i64* %_local_stack_start_ptr_2 to i64
  %_local_stack_end_4 = add i64 %_local_stack_start_3, 0
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value.2(%struct.regs* %reg_context, i64 %ptr, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
  %_local_stack_alloc_1 = alloca i64, i64 0
  %_local_stack_start_ptr_2 = getelementptr inbounds i64, i64* %_local_stack_alloc_1, i32 0
  %_local_stack_start_3 = ptrtoint i64* %_local_stack_start_ptr_2 to i64
  %_local_stack_end_4 = add i64 %_local_stack_start_3, 0
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value.3(%struct.regs* %reg_context, i64 %ptr, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
  %_local_stack_alloc_1 = alloca i64, i64 0
  %_local_stack_start_ptr_2 = getelementptr inbounds i64, i64* %_local_stack_alloc_1, i32 0
  %_local_stack_start_3 = ptrtoint i64* %_local_stack_start_ptr_2 to i64
  %_local_stack_end_4 = add i64 %_local_stack_start_3, 0
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value.4(%struct.regs* %reg_context, i64 %ptr, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
  %_local_stack_alloc_1 = alloca i64, i64 0
  %_local_stack_start_ptr_2 = getelementptr inbounds i64, i64* %_local_stack_alloc_1, i32 0
  %_local_stack_start_3 = ptrtoint i64* %_local_stack_start_ptr_2 to i64
  %_local_stack_end_4 = add i64 %_local_stack_start_3, 0
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value.5(%struct.regs* %reg_context, i64 %ptr, i64 %_parent_stack_start_ptr_, i64 %_parent_stack_end_ptr_) #0 {
  %_local_stack_alloc_1 = alloca i64, i64 0
  %_local_stack_start_ptr_2 = getelementptr inbounds i64, i64* %_local_stack_alloc_1, i32 0
  %_local_stack_start_3 = ptrtoint i64* %_local_stack_start_ptr_2 to i64
  %_local_stack_end_4 = add i64 %_local_stack_start_3, 0
  %_local_stack_alloc_ = alloca i64, i64 0
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 0
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

attributes #0 = { alwaysinline }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 176, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 177, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 180, [16 x i8] c"\09subq\09$96, %rsp\00"}
!5 = !{i64 184, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!6 = !{i64 186, [16 x i8] c"\09movl\09$28, %ecx\00"}
!7 = !{i64 191, [17 x i8] c"\09movl\09%ecx, %edx\00"}
!8 = !{i64 193, [21 x i8] c"\09leaq\09-64(%rbp), %r8\00"}
!9 = !{i64 197, [17 x i8] c"\09movabsq\09$0, %r9\00"}
!10 = !{i64 207, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!11 = !{i64 214, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!12 = !{i64 217, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!13 = !{i64 221, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!14 = !{i64 228, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!15 = !{i64 235, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!16 = !{i64 242, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!17 = !{i64 246, [24 x i8] c"\09movslq\09-24(%rbp), %r10\00"}
!18 = !{i64 250, [18 x i8] c"\09imulq\09 $11, %r10\00"}
!19 = !{i64 254, [16 x i8] c"\09addq\09%r10, %r9\00"}
!20 = !{i64 257, [22 x i8] c"\09movb\09$88, (%r9,%rsi)\00"}
!21 = !{i64 262, [17 x i8] c"\09movl\09%eax, %edi\00"}
!22 = !{i64 264, [16 x i8] c"\09movq\09%r8, %rsi\00"}
!23 = !{i64 267, [9 x i8] c"\09callq\090\00"}
!24 = !{i64 272, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!25 = !{i64 276, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!26 = !{i64 657, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!27 = !{i64 280, [9 x i8] c"\09jge\09371\00"}
!28 = !{i64 664, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!29 = !{i64 667, [16 x i8] c"\09addq\09$96, %rsp\00"}
!30 = !{i64 671, [11 x i8] c"\09popq\09%rbp\00"}
!31 = !{i64 672, [6 x i8] c"\09retq\00"}
!32 = !{i64 286, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!33 = !{i64 289, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!34 = !{i64 292, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!35 = !{i64 295, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!36 = !{i64 298, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!37 = !{i64 302, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!38 = !{i64 307, [17 x i8] c"\09addl\09$-97, %eax\00"}
!39 = !{i64 310, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!40 = !{i64 312, [16 x i8] c"\09subl\09$22, %eax\00"}
!41 = !{i64 315, [22 x i8] c"\09movq\09%rcx, -80(%rbp)\00"}
!42 = !{i64 319, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!43 = !{i64 322, [7 x i8] c"\09ja\0970\00"}
!44 = !{i64 398, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!45 = !{i64 328, [22 x i8] c"\09movq\09-80(%rbp), %rax\00"}
!46 = !{i64 332, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!47 = !{i64 340, [12 x i8] c"\09jmpq\09*%rcx\00"}
!48 = !{i64 370, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!49 = !{i64 373, [16 x i8] c"\09addl\09$-1, %eax\00"}
!50 = !{i64 376, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!51 = !{i64 410, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!52 = !{i64 420, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!53 = !{i64 424, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!54 = !{i64 428, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!55 = !{i64 432, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!56 = !{i64 435, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!57 = !{i64 439, [16 x i8] c"\09cmpl\09$35, %esi\00"}
!58 = !{i64 442, [8 x i8] c"\09jne\0912\00"}
!59 = !{i64 460, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!60 = !{i64 470, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!61 = !{i64 474, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!62 = !{i64 478, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!63 = !{i64 482, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!64 = !{i64 485, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!65 = !{i64 489, [16 x i8] c"\09cmpl\09$32, %esi\00"}
!66 = !{i64 492, [7 x i8] c"\09je\0980\00"}
!67 = !{i64 448, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!68 = !{i64 455, [9 x i8] c"\09jmp\09204\00"}
!69 = !{i64 578, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!70 = !{i64 581, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!71 = !{i64 584, [8 x i8] c"\09jne\0924\00"}
!72 = !{i64 498, [20 x i8] c"\09cmpl\09$2, -24(%rbp)\00"}
!73 = !{i64 502, [8 x i8] c"\09jne\0958\00"}
!74 = !{i64 566, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!75 = !{i64 569, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!76 = !{i64 572, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!77 = !{i64 575, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!78 = !{i64 508, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!79 = !{i64 518, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!80 = !{i64 522, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!81 = !{i64 526, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!82 = !{i64 530, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!83 = !{i64 533, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!84 = !{i64 537, [17 x i8] c"\09cmpl\09$124, %esi\00"}
!85 = !{i64 540, [8 x i8] c"\09jne\0920\00"}
!86 = !{i64 614, [18 x i8] c"\09movabsq\09$0, %rax\00"}
!87 = !{i64 624, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!88 = !{i64 628, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!89 = !{i64 632, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!90 = !{i64 636, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!91 = !{i64 639, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!92 = !{i64 643, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!93 = !{i64 646, [15 x i8] c"\09addl\09$1, %esi\00"}
!94 = !{i64 649, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!95 = !{i64 590, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!96 = !{i64 593, [22 x i8] c"\09cmpl\09-24(%rbp), %eax\00"}
!97 = !{i64 596, [8 x i8] c"\09jne\0912\00"}
!98 = !{i64 546, [20 x i8] c"\09cmpl\09$0, -20(%rbp)\00"}
!99 = !{i64 550, [8 x i8] c"\09jle\0910\00"}
!100 = !{i64 602, [19 x i8] c"\09movl\09$2, -4(%rbp)\00"}
!101 = !{i64 609, [8 x i8] c"\09jmp\0950\00"}
!102 = !{i64 556, [21 x i8] c"\09cmpl\09$11, -20(%rbp)\00"}
!103 = !{i64 560, [7 x i8] c"\09jl\0912\00"}
!104 = !{i64 405, [9 x i8] c"\09jmp\09254\00"}
!105 = !{i64 384, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!106 = !{i64 387, [15 x i8] c"\09addl\09$1, %eax\00"}
!107 = !{i64 390, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!108 = !{i64 356, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!109 = !{i64 359, [15 x i8] c"\09addl\09$1, %eax\00"}
!110 = !{i64 362, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!111 = !{i64 342, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!112 = !{i64 345, [16 x i8] c"\09addl\09$-1, %eax\00"}
!113 = !{i64 348, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
