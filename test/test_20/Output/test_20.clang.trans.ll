; ModuleID = 'Output/test_20.clang.trans.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x1e2 = internal constant %0 <{ void (%struct.regs*)* @sub_132, void (%struct.regs*)* @sub_142, void (%struct.regs*)* @sub_152, void (%struct.regs*)* @sub_162, void (%struct.regs*)* @sub_172, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_182, void (%struct.regs*)* @sub_192, void (%struct.regs*)* @sub_1a2, void (%struct.regs*)* @sub_1b2, void (%struct.regs*)* @sub_1c2, void (%struct.regs*)* @sub_a2, void (%struct.regs*)* @sub_b2, void (%struct.regs*)* @sub_c2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_e2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_f2, void (%struct.regs*)* @sub_102, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_112 }>, align 64

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

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %_local_stack_alloc_ = alloca i64, i64 60
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 60
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
  store i64 %79, i64* %RSP_val, !mcsema_real_eip !2
  store i64 %79, i64* %RBP_val, !mcsema_real_eip !3
  %81 = add i64 %78, -12, !mcsema_real_eip !4
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !4
  %83 = load i64, i64* %RDI_val, !mcsema_real_eip !4
  %84 = trunc i64 %83 to i32, !mcsema_real_eip !4
  %85 = bitcast i64* %82 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !4
  %86 = load i64, i64* %RBP_val, !mcsema_real_eip !5
  %87 = add i64 %86, -8, !mcsema_real_eip !5
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !5
  %89 = bitcast i64* %88 to i32*
  store i32 0, i32* %89, !mcsema_real_eip !5
  %90 = load i64, i64* %RBP_val, !mcsema_real_eip !6
  %91 = add i64 %90, -4, !mcsema_real_eip !6
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !6
  %93 = bitcast i64* %92 to i32*
  %94 = load i32, i32* %93, !mcsema_real_eip !6
  %95 = zext i32 %94 to i64, !mcsema_real_eip !6
  store i64 %95, i64* %RDI_val, !mcsema_real_eip !6
  %96 = add i32 %94, -74632
  %97 = xor i32 %96, %94, !mcsema_real_eip !7
  %98 = and i32 %97, 16, !mcsema_real_eip !7
  %99 = icmp ne i32 %98, 0, !mcsema_real_eip !7
  store i1 %99, i1* %AF_val, !mcsema_real_eip !7
  %100 = trunc i32 %96 to i8, !mcsema_real_eip !7
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !7
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF_val, !mcsema_real_eip !7
  %104 = icmp eq i32 %96, 0, !mcsema_real_eip !7
  store i1 %104, i1* %ZF_val, !mcsema_real_eip !7
  %105 = icmp slt i32 %96, 0
  store i1 %105, i1* %SF_val, !mcsema_real_eip !7
  %106 = icmp ult i32 %94, 74632, !mcsema_real_eip !7
  store i1 %106, i1* %CF_val, !mcsema_real_eip !7
  %107 = and i32 %97, %94, !mcsema_real_eip !7
  %108 = icmp slt i32 %107, 0
  store i1 %108, i1* %OF_val, !mcsema_real_eip !7
  %109 = zext i32 %96 to i64, !mcsema_real_eip !7
  store i64 %109, i64* %RAX_val, !mcsema_real_eip !7
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !8
  %111 = add i64 %110, -12, !mcsema_real_eip !8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !8
  %113 = load i64, i64* %RDI_val, !mcsema_real_eip !8
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !8
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !8
  %116 = load i64, i64* %RBP_val, !mcsema_real_eip !9
  %117 = add i64 %116, -16, !mcsema_real_eip !9
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !9
  %119 = load i64, i64* %RAX_val, !mcsema_real_eip !9
  %120 = trunc i64 %119 to i32, !mcsema_real_eip !9
  %121 = bitcast i64* %118 to i32*
  store i32 %120, i32* %121, !mcsema_real_eip !9
  %122 = load i1, i1* %OF_val, !mcsema_real_eip !10
  %123 = load i1, i1* %SF_val, !mcsema_real_eip !10
  %tmp = xor i1 %123, %122
  %124 = load i1, i1* %ZF_val, !mcsema_real_eip !10
  %.demorgan = or i1 %124, %tmp
  %125 = load i64, i64* %RBP_val, !mcsema_real_eip !11
  %126 = add i64 %125, -12, !mcsema_real_eip !11
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !11
  %128 = bitcast i64* %127 to i32*
  %129 = load i32, i32* %128, !mcsema_real_eip !11
  %130 = zext i32 %129 to i64, !mcsema_real_eip !11
  store i64 %130, i64* %RAX_val, !mcsema_real_eip !11
  br i1 %.demorgan, label %block_0x29, label %block_0x7a, !mcsema_real_eip !10

block_0x7a:                                       ; preds = %entry
  %131 = add i32 %129, -74633
  %132 = zext i32 %131 to i64, !mcsema_real_eip !12
  store i64 %132, i64* %RCX_val, !mcsema_real_eip !13
  %133 = add i32 %129, -74643
  %134 = xor i32 %133, %131, !mcsema_real_eip !14
  %135 = and i32 %134, 16, !mcsema_real_eip !14
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !14
  store i1 %136, i1* %AF_val, !mcsema_real_eip !14
  %137 = trunc i32 %133 to i8, !mcsema_real_eip !14
  %138 = tail call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !14
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  store i1 %140, i1* %PF_val, !mcsema_real_eip !14
  %141 = icmp eq i32 %133, 0, !mcsema_real_eip !14
  store i1 %141, i1* %ZF_val, !mcsema_real_eip !14
  %142 = icmp slt i32 %133, 0
  store i1 %142, i1* %SF_val, !mcsema_real_eip !14
  %143 = icmp ult i32 %131, 10, !mcsema_real_eip !14
  store i1 %143, i1* %CF_val, !mcsema_real_eip !14
  %144 = and i32 %134, %131, !mcsema_real_eip !14
  %145 = icmp slt i32 %144, 0
  store i1 %145, i1* %OF_val, !mcsema_real_eip !14
  %146 = zext i32 %133 to i64, !mcsema_real_eip !14
  store i64 %146, i64* %RAX_val, !mcsema_real_eip !14
  %147 = load i64, i64* %RBP_val, !mcsema_real_eip !15
  %148 = add i64 %147, -48, !mcsema_real_eip !15
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !15
  %150 = load i64, i64* %RCX_val, !mcsema_real_eip !15
  store i64 %150, i64* %149, !mcsema_real_eip !15
  %151 = load i64, i64* %RBP_val, !mcsema_real_eip !16
  %152 = add i64 %151, -52, !mcsema_real_eip !16
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !16
  %154 = load i64, i64* %RAX_val, !mcsema_real_eip !16
  %155 = trunc i64 %154 to i32, !mcsema_real_eip !16
  %156 = bitcast i64* %153 to i32*
  store i32 %155, i32* %156, !mcsema_real_eip !16
  %157 = load i1, i1* %ZF_val, !mcsema_real_eip !17
  %158 = load i1, i1* %CF_val, !mcsema_real_eip !17
  %.demorgan565 = or i1 %158, %157
  br i1 %.demorgan565, label %block_0x94, label %block_0x1d2, !mcsema_real_eip !17

block_0x29:                                       ; preds = %entry
  %159 = add i32 %129, -254
  %160 = xor i32 %159, %129, !mcsema_real_eip !18
  %161 = and i32 %160, 16
  %162 = icmp eq i32 %161, 0
  store i1 %162, i1* %AF_val, !mcsema_real_eip !18
  %163 = trunc i32 %159 to i8, !mcsema_real_eip !18
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !18
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF_val, !mcsema_real_eip !18
  %167 = icmp eq i32 %159, 0, !mcsema_real_eip !18
  store i1 %167, i1* %ZF_val, !mcsema_real_eip !18
  %168 = icmp slt i32 %159, 0
  store i1 %168, i1* %SF_val, !mcsema_real_eip !18
  %169 = icmp ult i32 %129, 254, !mcsema_real_eip !18
  store i1 %169, i1* %CF_val, !mcsema_real_eip !18
  %170 = and i32 %160, %129, !mcsema_real_eip !18
  %171 = icmp slt i32 %170, 0
  store i1 %171, i1* %OF_val, !mcsema_real_eip !18
  %172 = zext i32 %159 to i64, !mcsema_real_eip !18
  store i64 %172, i64* %RAX_val, !mcsema_real_eip !18
  %173 = load i64, i64* %RBP_val, !mcsema_real_eip !19
  %174 = add i64 %173, -20, !mcsema_real_eip !19
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !19
  %176 = bitcast i64* %175 to i32*
  store i32 %159, i32* %176, !mcsema_real_eip !19
  %177 = load i1, i1* %OF_val, !mcsema_real_eip !20
  %178 = load i1, i1* %SF_val, !mcsema_real_eip !20
  %tmp556 = xor i1 %178, %177
  %179 = load i1, i1* %ZF_val, !mcsema_real_eip !20
  %.demorgan558 = or i1 %179, %tmp556
  %180 = load i64, i64* %RBP_val, !mcsema_real_eip !21
  %181 = add i64 %180, -12, !mcsema_real_eip !21
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !21
  %183 = bitcast i64* %182 to i32*
  %184 = load i32, i32* %183, !mcsema_real_eip !21
  %185 = zext i32 %184 to i64, !mcsema_real_eip !21
  store i64 %185, i64* %RAX_val, !mcsema_real_eip !21
  br i1 %.demorgan558, label %block_0x3f, label %block_0x64, !mcsema_real_eip !20

block_0x1d2:                                      ; preds = %block_0x3f, %block_0x64, %block_0x7a
  %186 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %187 = add i64 %186, -8, !mcsema_real_eip !22
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !22
  %189 = bitcast i64* %188 to i32*
  %190 = load i32, i32* %189, !mcsema_real_eip !22
  %191 = zext i32 %190 to i64, !mcsema_real_eip !22
  store i1 false, i1* %AF_val, !mcsema_real_eip !23
  %192 = icmp slt i32 %190, 0
  store i1 %192, i1* %SF_val, !mcsema_real_eip !23
  %193 = icmp eq i32 %190, 0, !mcsema_real_eip !23
  store i1 %193, i1* %ZF_val, !mcsema_real_eip !23
  store i1 false, i1* %OF_val, !mcsema_real_eip !23
  %194 = trunc i32 %190 to i8, !mcsema_real_eip !23
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !23
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF_val, !mcsema_real_eip !23
  store i1 false, i1* %CF_val, !mcsema_real_eip !23
  store i64 %191, i64* %RAX_val, !mcsema_real_eip !23
  %198 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %199 = add i64 %198, -8, !mcsema_real_eip !24
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !24
  %201 = bitcast i64* %200 to i32*
  store i32 %190, i32* %201, !mcsema_real_eip !24
  %202 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %203 = add i64 %202, -8, !mcsema_real_eip !25
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !25
  %205 = bitcast i64* %204 to i32*
  %206 = load i32, i32* %205, !mcsema_real_eip !25
  %207 = zext i32 %206 to i64, !mcsema_real_eip !25
  store i64 %207, i64* %RAX_val, !mcsema_real_eip !25
  %208 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !26
  %210 = load i64, i64* %209, !mcsema_real_eip !26
  store i64 %210, i64* %RBP_val, !mcsema_real_eip !26
  %211 = add i64 %208, 16, !mcsema_real_eip !27
  store i64 %211, i64* %RSP_val, !mcsema_real_eip !27
  %212 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %212, i64* %RAX, !mcsema_real_eip !27
  %213 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %213, i64* %RBX, !mcsema_real_eip !27
  %214 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %214, i64* %RCX, !mcsema_real_eip !27
  %215 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %215, i64* %RDX, !mcsema_real_eip !27
  %216 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %216, i64* %RSI, !mcsema_real_eip !27
  %217 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %217, i64* %RDI, !mcsema_real_eip !27
  %218 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %218, i64* %RSP, !mcsema_real_eip !27
  %219 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %219, i64* %RBP, !mcsema_real_eip !27
  %220 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %220, i64* %R8, !mcsema_real_eip !27
  %221 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %221, i64* %R9, !mcsema_real_eip !27
  %222 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %222, i64* %R10, !mcsema_real_eip !27
  %223 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %223, i64* %R11, !mcsema_real_eip !27
  %224 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %224, i64* %R12, !mcsema_real_eip !27
  %225 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %225, i64* %R13, !mcsema_real_eip !27
  %226 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %226, i64* %R14, !mcsema_real_eip !27
  %227 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %227, i64* %R15, !mcsema_real_eip !27
  %228 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %228, i64* %RIP, !mcsema_real_eip !27
  %229 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %229, i1* %CF, align 1, !mcsema_real_eip !27
  %230 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %230, i1* %PF, align 1, !mcsema_real_eip !27
  %231 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !27
  %232 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %232, i1* %ZF, align 1, !mcsema_real_eip !27
  %233 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %233, i1* %SF, align 1, !mcsema_real_eip !27
  %234 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %234, i1* %OF, align 1, !mcsema_real_eip !27
  %235 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %235, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %236 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %236, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %237 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %237, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %238 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %238, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %239 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %239, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %240 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %240, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %241 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %241, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %242 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %242, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %243 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %243, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %244 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %244, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %245 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %245, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %246 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %246, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %247 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %247, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %248 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %248, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %249 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %249, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %250 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %250, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %251 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %251, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %252 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %252, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %253 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %253, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %254 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %254, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %255 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %255, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %256 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %256, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %257 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %257, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %258 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %258, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %259 = load i64, i64* %53, align 4
  store i64 %259, i64* %52, align 4
  %260 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %260, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %261 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %261, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %262 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %262, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %263 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %263, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %264 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %264, i128* %XMM0, align 1, !mcsema_real_eip !27
  %265 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %265, i128* %XMM1, align 1, !mcsema_real_eip !27
  %266 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %266, i128* %XMM2, align 1, !mcsema_real_eip !27
  %267 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %267, i128* %XMM3, align 1, !mcsema_real_eip !27
  %268 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %268, i128* %XMM4, align 1, !mcsema_real_eip !27
  %269 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %269, i128* %XMM5, align 1, !mcsema_real_eip !27
  %270 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %270, i128* %XMM6, align 1, !mcsema_real_eip !27
  %271 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %271, i128* %XMM7, align 1, !mcsema_real_eip !27
  %272 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %272, i128* %XMM8, align 1, !mcsema_real_eip !27
  %273 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %273, i128* %XMM9, align 1, !mcsema_real_eip !27
  %274 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %274, i128* %XMM10, align 1, !mcsema_real_eip !27
  %275 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %275, i128* %XMM11, align 1, !mcsema_real_eip !27
  %276 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %276, i128* %XMM12, align 1, !mcsema_real_eip !27
  %277 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %277, i128* %XMM13, align 1, !mcsema_real_eip !27
  %278 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %278, i128* %XMM14, align 1, !mcsema_real_eip !27
  %279 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %279, i128* %XMM15, align 1, !mcsema_real_eip !27
  %280 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %280, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %281 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %281, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x94:                                       ; preds = %block_0x7a
  %282 = load i64, i64* %RBP_val, !mcsema_real_eip !28
  %283 = add i64 %282, -48, !mcsema_real_eip !28
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !28
  %285 = load i64, i64* %284, !mcsema_real_eip !28
  store i64 %285, i64* %RAX_val, !mcsema_real_eip !28
  %286 = shl i64 %285, 3
  %287 = add i64 %286, ptrtoint (%0* @data_0x1e2 to i64), !mcsema_real_eip !29
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !29
  %289 = load i64, i64* %288, !mcsema_real_eip !29
  store i64 %289, i64* %RCX_val, !mcsema_real_eip !29
  store i64 %285, i64* %RAX, !mcsema_real_eip !30
  %290 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %290, i64* %RBX, !mcsema_real_eip !30
  %291 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %291, i64* %RCX, !mcsema_real_eip !30
  %292 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %292, i64* %RDX, !mcsema_real_eip !30
  %293 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %293, i64* %RSI, !mcsema_real_eip !30
  %294 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %294, i64* %RDI, !mcsema_real_eip !30
  %295 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  store i64 %295, i64* %RSP, !mcsema_real_eip !30
  %296 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  store i64 %296, i64* %RBP, !mcsema_real_eip !30
  %297 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %297, i64* %R8, !mcsema_real_eip !30
  %298 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %298, i64* %R9, !mcsema_real_eip !30
  %299 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %299, i64* %R10, !mcsema_real_eip !30
  %300 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %300, i64* %R11, !mcsema_real_eip !30
  %301 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %301, i64* %R12, !mcsema_real_eip !30
  %302 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %302, i64* %R13, !mcsema_real_eip !30
  %303 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %303, i64* %R14, !mcsema_real_eip !30
  %304 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %304, i64* %R15, !mcsema_real_eip !30
  %305 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %305, i64* %RIP, !mcsema_real_eip !30
  %306 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !30
  %307 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %307, i1* %PF, align 1, !mcsema_real_eip !30
  %308 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %308, i1* %AF, align 1, !mcsema_real_eip !30
  %309 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %309, i1* %ZF, align 1, !mcsema_real_eip !30
  %310 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %310, i1* %SF, align 1, !mcsema_real_eip !30
  %311 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %311, i1* %OF, align 1, !mcsema_real_eip !30
  %312 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %312, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %313 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %313, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %314 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %314, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %315 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %315, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %316 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %316, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %317 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %317, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %318 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %318, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %319 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %319, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %320 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %320, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %321 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %321, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %322 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %322, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %323 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %323, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %324 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %324, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %325 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %325, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %326 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %326, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %327 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %327, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %328 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %328, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %329 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %329, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %330 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %330, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %331 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %331, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %332 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %332, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %333 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %333, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %334 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %334, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %335 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %335, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %336 = load i64, i64* %53, align 4
  store i64 %336, i64* %52, align 4
  %337 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %337, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %338 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %338, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %339 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %339, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %340 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %340, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %341 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %341, i128* %XMM0, align 1, !mcsema_real_eip !30
  %342 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %342, i128* %XMM1, align 1, !mcsema_real_eip !30
  %343 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %343, i128* %XMM2, align 1, !mcsema_real_eip !30
  %344 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %344, i128* %XMM3, align 1, !mcsema_real_eip !30
  %345 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %345, i128* %XMM4, align 1, !mcsema_real_eip !30
  %346 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %346, i128* %XMM5, align 1, !mcsema_real_eip !30
  %347 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %347, i128* %XMM6, align 1, !mcsema_real_eip !30
  %348 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %348, i128* %XMM7, align 1, !mcsema_real_eip !30
  %349 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %349, i128* %XMM8, align 1, !mcsema_real_eip !30
  %350 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %350, i128* %XMM9, align 1, !mcsema_real_eip !30
  %351 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %351, i128* %XMM10, align 1, !mcsema_real_eip !30
  %352 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %352, i128* %XMM11, align 1, !mcsema_real_eip !30
  %353 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %353, i128* %XMM12, align 1, !mcsema_real_eip !30
  %354 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %354, i128* %XMM13, align 1, !mcsema_real_eip !30
  %355 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %355, i128* %XMM14, align 1, !mcsema_real_eip !30
  %356 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %356, i128* %XMM15, align 1, !mcsema_real_eip !30
  %357 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %357, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %358 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %358, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  call void @do_call_value.1(%struct.regs* %0, i64 %289, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %359 = load i64, i64* %RAX, !mcsema_real_eip !30
  store i64 %359, i64* %RAX_val, !mcsema_real_eip !30
  %360 = load i64, i64* %RBX, !mcsema_real_eip !30
  store i64 %360, i64* %RBX_val, !mcsema_real_eip !30
  %361 = load i64, i64* %RCX, !mcsema_real_eip !30
  store i64 %361, i64* %RCX_val, !mcsema_real_eip !30
  %362 = load i64, i64* %RDX, !mcsema_real_eip !30
  store i64 %362, i64* %RDX_val, !mcsema_real_eip !30
  %363 = load i64, i64* %RSI, !mcsema_real_eip !30
  store i64 %363, i64* %RSI_val, !mcsema_real_eip !30
  %364 = load i64, i64* %RDI, !mcsema_real_eip !30
  store i64 %364, i64* %RDI_val, !mcsema_real_eip !30
  %365 = load i64, i64* %RSP, !mcsema_real_eip !30
  store i64 %365, i64* %RSP_val, !mcsema_real_eip !30
  %366 = load i64, i64* %RBP, !mcsema_real_eip !30
  store i64 %366, i64* %RBP_val, !mcsema_real_eip !30
  %367 = load i64, i64* %R8, !mcsema_real_eip !30
  store i64 %367, i64* %R8_val, !mcsema_real_eip !30
  %368 = load i64, i64* %R9, !mcsema_real_eip !30
  store i64 %368, i64* %R9_val, !mcsema_real_eip !30
  %369 = load i64, i64* %R10, !mcsema_real_eip !30
  store i64 %369, i64* %R10_val, !mcsema_real_eip !30
  %370 = load i64, i64* %R11, !mcsema_real_eip !30
  store i64 %370, i64* %R11_val, !mcsema_real_eip !30
  %371 = load i64, i64* %R12, !mcsema_real_eip !30
  store i64 %371, i64* %R12_val, !mcsema_real_eip !30
  %372 = load i64, i64* %R13, !mcsema_real_eip !30
  store i64 %372, i64* %R13_val, !mcsema_real_eip !30
  %373 = load i64, i64* %R14, !mcsema_real_eip !30
  store i64 %373, i64* %R14_val, !mcsema_real_eip !30
  %374 = load i64, i64* %R15, !mcsema_real_eip !30
  store i64 %374, i64* %R15_val, !mcsema_real_eip !30
  %375 = load i64, i64* %RIP, !mcsema_real_eip !30
  store i64 %375, i64* %RIP_val, !mcsema_real_eip !30
  %376 = load i1, i1* %CF, align 1, !mcsema_real_eip !30
  store i1 %376, i1* %CF_val, !mcsema_real_eip !30
  %377 = load i1, i1* %PF, align 1, !mcsema_real_eip !30
  store i1 %377, i1* %PF_val, !mcsema_real_eip !30
  %378 = load i1, i1* %AF, align 1, !mcsema_real_eip !30
  store i1 %378, i1* %AF_val, !mcsema_real_eip !30
  %379 = load i1, i1* %ZF, align 1, !mcsema_real_eip !30
  store i1 %379, i1* %ZF_val, !mcsema_real_eip !30
  %380 = load i1, i1* %SF, align 1, !mcsema_real_eip !30
  store i1 %380, i1* %SF_val, !mcsema_real_eip !30
  %381 = load i1, i1* %OF, align 1, !mcsema_real_eip !30
  store i1 %381, i1* %OF_val, !mcsema_real_eip !30
  %382 = load i1, i1* %DF, align 1, !mcsema_real_eip !30
  store i1 %382, i1* %DF_val, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !30
  %383 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !30
  store i1 %383, i1* %FPU_B_val, !mcsema_real_eip !30
  %384 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  store i1 %384, i1* %FPU_C3_val, !mcsema_real_eip !30
  %385 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  store i3 %385, i3* %FPU_TOP_val, !mcsema_real_eip !30
  %386 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  store i1 %386, i1* %FPU_C2_val, !mcsema_real_eip !30
  %387 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  store i1 %387, i1* %FPU_C1_val, !mcsema_real_eip !30
  %388 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  store i1 %388, i1* %FPU_C0_val, !mcsema_real_eip !30
  %389 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  store i1 %389, i1* %FPU_ES_val, !mcsema_real_eip !30
  %390 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  store i1 %390, i1* %FPU_SF_val, !mcsema_real_eip !30
  %391 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  store i1 %391, i1* %FPU_PE_val, !mcsema_real_eip !30
  %392 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  store i1 %392, i1* %FPU_UE_val, !mcsema_real_eip !30
  %393 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  store i1 %393, i1* %FPU_OE_val, !mcsema_real_eip !30
  %394 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  store i1 %394, i1* %FPU_ZE_val, !mcsema_real_eip !30
  %395 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  store i1 %395, i1* %FPU_DE_val, !mcsema_real_eip !30
  %396 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  store i1 %396, i1* %FPU_IE_val, !mcsema_real_eip !30
  %397 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !30
  store i1 %397, i1* %FPU_X_val, !mcsema_real_eip !30
  %398 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  store i2 %398, i2* %FPU_RC_val, !mcsema_real_eip !30
  %399 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  store i2 %399, i2* %FPU_PC_val, !mcsema_real_eip !30
  %400 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  store i1 %400, i1* %FPU_PM_val, !mcsema_real_eip !30
  %401 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  store i1 %401, i1* %FPU_UM_val, !mcsema_real_eip !30
  %402 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  store i1 %402, i1* %FPU_OM_val, !mcsema_real_eip !30
  %403 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  store i1 %403, i1* %FPU_ZM_val, !mcsema_real_eip !30
  %404 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  store i1 %404, i1* %FPU_DM_val, !mcsema_real_eip !30
  %405 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  store i1 %405, i1* %FPU_IM_val, !mcsema_real_eip !30
  %406 = load i64, i64* %52, align 4
  store i64 %406, i64* %53, align 4
  %407 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  store i16 %407, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  %408 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !30
  store i64 %408, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  %409 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  store i16 %409, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  %410 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !30
  store i64 %410, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  %411 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !30
  store i128 %411, i128* %XMM0_val, !mcsema_real_eip !30
  %412 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !30
  store i128 %412, i128* %XMM1_val, !mcsema_real_eip !30
  %413 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !30
  store i128 %413, i128* %XMM2_val, !mcsema_real_eip !30
  %414 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !30
  store i128 %414, i128* %XMM3_val, !mcsema_real_eip !30
  %415 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !30
  store i128 %415, i128* %XMM4_val, !mcsema_real_eip !30
  %416 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !30
  store i128 %416, i128* %XMM5_val, !mcsema_real_eip !30
  %417 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !30
  store i128 %417, i128* %XMM6_val, !mcsema_real_eip !30
  %418 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !30
  store i128 %418, i128* %XMM7_val, !mcsema_real_eip !30
  %419 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !30
  store i128 %419, i128* %XMM8_val, !mcsema_real_eip !30
  %420 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !30
  store i128 %420, i128* %XMM9_val, !mcsema_real_eip !30
  %421 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !30
  store i128 %421, i128* %XMM10_val, !mcsema_real_eip !30
  %422 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !30
  store i128 %422, i128* %XMM11_val, !mcsema_real_eip !30
  %423 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !30
  store i128 %423, i128* %XMM12_val, !mcsema_real_eip !30
  %424 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !30
  store i128 %424, i128* %XMM13_val, !mcsema_real_eip !30
  %425 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !30
  store i128 %425, i128* %XMM14_val, !mcsema_real_eip !30
  %426 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !30
  store i128 %426, i128* %XMM15_val, !mcsema_real_eip !30
  %427 = load i64, i64* %STACK_BASE, !mcsema_real_eip !30
  store i64 %427, i64* %STACK_BASE_val, !mcsema_real_eip !30
  %428 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !30
  store i64 %428, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  %429 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  %430 = add i64 %429, 8, !mcsema_real_eip !30
  store i64 %430, i64* %RSP_val, !mcsema_real_eip !30
  %431 = load i64, i64* %RAX_val, !mcsema_real_eip !30
  store i64 %431, i64* %RAX, !mcsema_real_eip !30
  %432 = load i64, i64* %RBX_val, !mcsema_real_eip !30
  store i64 %432, i64* %RBX, !mcsema_real_eip !30
  %433 = load i64, i64* %RCX_val, !mcsema_real_eip !30
  store i64 %433, i64* %RCX, !mcsema_real_eip !30
  %434 = load i64, i64* %RDX_val, !mcsema_real_eip !30
  store i64 %434, i64* %RDX, !mcsema_real_eip !30
  %435 = load i64, i64* %RSI_val, !mcsema_real_eip !30
  store i64 %435, i64* %RSI, !mcsema_real_eip !30
  %436 = load i64, i64* %RDI_val, !mcsema_real_eip !30
  store i64 %436, i64* %RDI, !mcsema_real_eip !30
  %437 = load i64, i64* %RSP_val, !mcsema_real_eip !30
  store i64 %437, i64* %RSP, !mcsema_real_eip !30
  %438 = load i64, i64* %RBP_val, !mcsema_real_eip !30
  store i64 %438, i64* %RBP, !mcsema_real_eip !30
  %439 = load i64, i64* %R8_val, !mcsema_real_eip !30
  store i64 %439, i64* %R8, !mcsema_real_eip !30
  %440 = load i64, i64* %R9_val, !mcsema_real_eip !30
  store i64 %440, i64* %R9, !mcsema_real_eip !30
  %441 = load i64, i64* %R10_val, !mcsema_real_eip !30
  store i64 %441, i64* %R10, !mcsema_real_eip !30
  %442 = load i64, i64* %R11_val, !mcsema_real_eip !30
  store i64 %442, i64* %R11, !mcsema_real_eip !30
  %443 = load i64, i64* %R12_val, !mcsema_real_eip !30
  store i64 %443, i64* %R12, !mcsema_real_eip !30
  %444 = load i64, i64* %R13_val, !mcsema_real_eip !30
  store i64 %444, i64* %R13, !mcsema_real_eip !30
  %445 = load i64, i64* %R14_val, !mcsema_real_eip !30
  store i64 %445, i64* %R14, !mcsema_real_eip !30
  %446 = load i64, i64* %R15_val, !mcsema_real_eip !30
  store i64 %446, i64* %R15, !mcsema_real_eip !30
  %447 = load i64, i64* %RIP_val, !mcsema_real_eip !30
  store i64 %447, i64* %RIP, !mcsema_real_eip !30
  %448 = load i1, i1* %CF_val, !mcsema_real_eip !30
  store i1 %448, i1* %CF, align 1, !mcsema_real_eip !30
  %449 = load i1, i1* %PF_val, !mcsema_real_eip !30
  store i1 %449, i1* %PF, align 1, !mcsema_real_eip !30
  %450 = load i1, i1* %AF_val, !mcsema_real_eip !30
  store i1 %450, i1* %AF, align 1, !mcsema_real_eip !30
  %451 = load i1, i1* %ZF_val, !mcsema_real_eip !30
  store i1 %451, i1* %ZF, align 1, !mcsema_real_eip !30
  %452 = load i1, i1* %SF_val, !mcsema_real_eip !30
  store i1 %452, i1* %SF, align 1, !mcsema_real_eip !30
  %453 = load i1, i1* %OF_val, !mcsema_real_eip !30
  store i1 %453, i1* %OF, align 1, !mcsema_real_eip !30
  %454 = load i1, i1* %DF_val, !mcsema_real_eip !30
  store i1 %454, i1* %DF, align 1, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !30
  %455 = load i1, i1* %FPU_B_val, !mcsema_real_eip !30
  store i1 %455, i1* %FPU_B, align 1, !mcsema_real_eip !30
  %456 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !30
  store i1 %456, i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %457 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !30
  store i3 %457, i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %458 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !30
  store i1 %458, i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %459 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !30
  store i1 %459, i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %460 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !30
  store i1 %460, i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %461 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !30
  store i1 %461, i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %462 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !30
  store i1 %462, i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %463 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !30
  store i1 %463, i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %464 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !30
  store i1 %464, i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %465 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !30
  store i1 %465, i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %466 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !30
  store i1 %466, i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %467 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !30
  store i1 %467, i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %468 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !30
  store i1 %468, i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %469 = load i1, i1* %FPU_X_val, !mcsema_real_eip !30
  store i1 %469, i1* %FPU_X, align 1, !mcsema_real_eip !30
  %470 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !30
  store i2 %470, i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %471 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !30
  store i2 %471, i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %472 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !30
  store i1 %472, i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %473 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !30
  store i1 %473, i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %474 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !30
  store i1 %474, i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %475 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !30
  store i1 %475, i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %476 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !30
  store i1 %476, i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %477 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !30
  store i1 %477, i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %478 = load i64, i64* %53, align 4
  store i64 %478, i64* %52, align 4
  %479 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !30
  store i16 %479, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %480 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !30
  store i64 %480, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !30
  %481 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !30
  store i16 %481, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %482 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !30
  store i64 %482, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !30
  %483 = load i128, i128* %XMM0_val, !mcsema_real_eip !30
  store i128 %483, i128* %XMM0, align 1, !mcsema_real_eip !30
  %484 = load i128, i128* %XMM1_val, !mcsema_real_eip !30
  store i128 %484, i128* %XMM1, align 1, !mcsema_real_eip !30
  %485 = load i128, i128* %XMM2_val, !mcsema_real_eip !30
  store i128 %485, i128* %XMM2, align 1, !mcsema_real_eip !30
  %486 = load i128, i128* %XMM3_val, !mcsema_real_eip !30
  store i128 %486, i128* %XMM3, align 1, !mcsema_real_eip !30
  %487 = load i128, i128* %XMM4_val, !mcsema_real_eip !30
  store i128 %487, i128* %XMM4, align 1, !mcsema_real_eip !30
  %488 = load i128, i128* %XMM5_val, !mcsema_real_eip !30
  store i128 %488, i128* %XMM5, align 1, !mcsema_real_eip !30
  %489 = load i128, i128* %XMM6_val, !mcsema_real_eip !30
  store i128 %489, i128* %XMM6, align 1, !mcsema_real_eip !30
  %490 = load i128, i128* %XMM7_val, !mcsema_real_eip !30
  store i128 %490, i128* %XMM7, align 1, !mcsema_real_eip !30
  %491 = load i128, i128* %XMM8_val, !mcsema_real_eip !30
  store i128 %491, i128* %XMM8, align 1, !mcsema_real_eip !30
  %492 = load i128, i128* %XMM9_val, !mcsema_real_eip !30
  store i128 %492, i128* %XMM9, align 1, !mcsema_real_eip !30
  %493 = load i128, i128* %XMM10_val, !mcsema_real_eip !30
  store i128 %493, i128* %XMM10, align 1, !mcsema_real_eip !30
  %494 = load i128, i128* %XMM11_val, !mcsema_real_eip !30
  store i128 %494, i128* %XMM11, align 1, !mcsema_real_eip !30
  %495 = load i128, i128* %XMM12_val, !mcsema_real_eip !30
  store i128 %495, i128* %XMM12, align 1, !mcsema_real_eip !30
  %496 = load i128, i128* %XMM13_val, !mcsema_real_eip !30
  store i128 %496, i128* %XMM13, align 1, !mcsema_real_eip !30
  %497 = load i128, i128* %XMM14_val, !mcsema_real_eip !30
  store i128 %497, i128* %XMM14, align 1, !mcsema_real_eip !30
  %498 = load i128, i128* %XMM15_val, !mcsema_real_eip !30
  store i128 %498, i128* %XMM15, align 1, !mcsema_real_eip !30
  %499 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !30
  store i64 %499, i64* %STACK_BASE, align 1, !mcsema_real_eip !30
  %500 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !30
  store i64 %500, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30

block_0x64:                                       ; preds = %block_0x29
  %501 = add i32 %184, -255
  %502 = xor i32 %501, %184, !mcsema_real_eip !31
  %503 = and i32 %502, 16
  %504 = icmp eq i32 %503, 0
  store i1 %504, i1* %AF_val, !mcsema_real_eip !31
  %505 = trunc i32 %501 to i8, !mcsema_real_eip !31
  %506 = tail call i8 @llvm.ctpop.i8(i8 %505), !mcsema_real_eip !31
  %507 = and i8 %506, 1
  %508 = icmp eq i8 %507, 0
  store i1 %508, i1* %PF_val, !mcsema_real_eip !31
  %509 = icmp eq i32 %501, 0, !mcsema_real_eip !31
  store i1 %509, i1* %ZF_val, !mcsema_real_eip !31
  %510 = icmp slt i32 %501, 0
  store i1 %510, i1* %SF_val, !mcsema_real_eip !31
  %511 = icmp ult i32 %184, 255, !mcsema_real_eip !31
  store i1 %511, i1* %CF_val, !mcsema_real_eip !31
  %512 = and i32 %502, %184, !mcsema_real_eip !31
  %513 = icmp slt i32 %512, 0
  store i1 %513, i1* %OF_val, !mcsema_real_eip !31
  %514 = zext i32 %501 to i64, !mcsema_real_eip !31
  store i64 %514, i64* %RAX_val, !mcsema_real_eip !31
  %515 = load i64, i64* %RBP_val, !mcsema_real_eip !32
  %516 = add i64 %515, -36, !mcsema_real_eip !32
  %517 = inttoptr i64 %516 to i64*, !mcsema_real_eip !32
  %518 = bitcast i64* %517 to i32*
  store i32 %501, i32* %518, !mcsema_real_eip !32
  %519 = load i1, i1* %ZF_val, !mcsema_real_eip !33
  br i1 %519, label %block_0x122, label %block_0x1d2, !mcsema_real_eip !33

block_0x3f:                                       ; preds = %block_0x29
  store i64 %185, i64* %RCX_val, !mcsema_real_eip !34
  store i64 %185, i64* %RDX_val, !mcsema_real_eip !35
  %520 = load i64, i64* %RAX_val, !mcsema_real_eip !36
  %521 = trunc i64 %520 to i32, !mcsema_real_eip !36
  %522 = add i32 %521, -19
  %523 = xor i32 %522, %521, !mcsema_real_eip !36
  %524 = and i32 %523, 16
  %525 = icmp eq i32 %524, 0
  store i1 %525, i1* %AF_val, !mcsema_real_eip !36
  %526 = trunc i32 %522 to i8, !mcsema_real_eip !36
  %527 = tail call i8 @llvm.ctpop.i8(i8 %526), !mcsema_real_eip !36
  %528 = and i8 %527, 1
  %529 = icmp eq i8 %528, 0
  store i1 %529, i1* %PF_val, !mcsema_real_eip !36
  %530 = icmp eq i32 %522, 0, !mcsema_real_eip !36
  store i1 %530, i1* %ZF_val, !mcsema_real_eip !36
  %531 = icmp slt i32 %522, 0
  store i1 %531, i1* %SF_val, !mcsema_real_eip !36
  %532 = icmp ult i32 %521, 19, !mcsema_real_eip !36
  store i1 %532, i1* %CF_val, !mcsema_real_eip !36
  %533 = and i32 %523, %521, !mcsema_real_eip !36
  %534 = icmp slt i32 %533, 0
  store i1 %534, i1* %OF_val, !mcsema_real_eip !36
  %535 = zext i32 %522 to i64, !mcsema_real_eip !36
  store i64 %535, i64* %RAX_val, !mcsema_real_eip !36
  %536 = load i64, i64* %RBP_val, !mcsema_real_eip !37
  %537 = add i64 %536, -24, !mcsema_real_eip !37
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !37
  %539 = bitcast i64* %538 to i32*
  store i32 %522, i32* %539, !mcsema_real_eip !37
  %540 = load i64, i64* %RBP_val, !mcsema_real_eip !38
  %541 = add i64 %540, -32, !mcsema_real_eip !38
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !38
  %543 = load i64, i64* %RDX_val, !mcsema_real_eip !38
  store i64 %543, i64* %542, !mcsema_real_eip !38
  %544 = load i1, i1* %ZF_val, !mcsema_real_eip !39
  %545 = load i1, i1* %CF_val, !mcsema_real_eip !39
  %.demorgan561 = or i1 %545, %544
  br i1 %.demorgan561, label %block_0x56, label %block_0x1d2, !mcsema_real_eip !39

block_0x122:                                      ; preds = %block_0x64
  %546 = load i64, i64* %RBP_val, !mcsema_real_eip !40
  %547 = add i64 %546, -8, !mcsema_real_eip !40
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !40
  %549 = bitcast i64* %548 to i32*
  %550 = load i32, i32* %549, !mcsema_real_eip !40
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %550, i32 255)
  %551 = extractvalue { i32, i1 } %uadd, 0
  %552 = xor i32 %551, %550, !mcsema_real_eip !41
  %553 = and i32 %552, 16
  %554 = icmp eq i32 %553, 0
  store i1 %554, i1* %AF_val, !mcsema_real_eip !41
  %555 = icmp slt i32 %551, 0
  store i1 %555, i1* %SF_val, !mcsema_real_eip !41
  %556 = icmp eq i32 %551, 0, !mcsema_real_eip !41
  store i1 %556, i1* %ZF_val, !mcsema_real_eip !41
  %557 = xor i32 %550, -2147483648, !mcsema_real_eip !41
  %558 = and i32 %552, %557, !mcsema_real_eip !41
  %559 = icmp slt i32 %558, 0
  store i1 %559, i1* %OF_val, !mcsema_real_eip !41
  %560 = trunc i32 %551 to i8, !mcsema_real_eip !41
  %561 = tail call i8 @llvm.ctpop.i8(i8 %560), !mcsema_real_eip !41
  %562 = and i8 %561, 1
  %563 = icmp eq i8 %562, 0
  store i1 %563, i1* %PF_val, !mcsema_real_eip !41
  %564 = extractvalue { i32, i1 } %uadd, 1
  store i1 %564, i1* %CF_val, !mcsema_real_eip !41
  %565 = zext i32 %551 to i64, !mcsema_real_eip !41
  store i64 %565, i64* %RAX_val, !mcsema_real_eip !41
  %566 = load i64, i64* %RBP_val, !mcsema_real_eip !42
  %567 = add i64 %566, -8, !mcsema_real_eip !42
  %568 = inttoptr i64 %567 to i64*, !mcsema_real_eip !42
  %569 = bitcast i64* %568 to i32*
  store i32 %551, i32* %569, !mcsema_real_eip !42
  %570 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %571 = add i64 %570, -8, !mcsema_real_eip !25
  %572 = inttoptr i64 %571 to i64*, !mcsema_real_eip !25
  %573 = bitcast i64* %572 to i32*
  %574 = load i32, i32* %573, !mcsema_real_eip !25
  %575 = zext i32 %574 to i64, !mcsema_real_eip !25
  store i64 %575, i64* %RAX_val, !mcsema_real_eip !25
  %576 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %577 = inttoptr i64 %576 to i64*, !mcsema_real_eip !26
  %578 = load i64, i64* %577, !mcsema_real_eip !26
  store i64 %578, i64* %RBP_val, !mcsema_real_eip !26
  %579 = add i64 %576, 16, !mcsema_real_eip !27
  store i64 %579, i64* %RSP_val, !mcsema_real_eip !27
  %580 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %580, i64* %RAX, !mcsema_real_eip !27
  %581 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %581, i64* %RBX, !mcsema_real_eip !27
  %582 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %582, i64* %RCX, !mcsema_real_eip !27
  %583 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %583, i64* %RDX, !mcsema_real_eip !27
  %584 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %584, i64* %RSI, !mcsema_real_eip !27
  %585 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %585, i64* %RDI, !mcsema_real_eip !27
  %586 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %586, i64* %RSP, !mcsema_real_eip !27
  %587 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %587, i64* %RBP, !mcsema_real_eip !27
  %588 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %588, i64* %R8, !mcsema_real_eip !27
  %589 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %589, i64* %R9, !mcsema_real_eip !27
  %590 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %590, i64* %R10, !mcsema_real_eip !27
  %591 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %591, i64* %R11, !mcsema_real_eip !27
  %592 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %592, i64* %R12, !mcsema_real_eip !27
  %593 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %593, i64* %R13, !mcsema_real_eip !27
  %594 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %594, i64* %R14, !mcsema_real_eip !27
  %595 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %595, i64* %R15, !mcsema_real_eip !27
  %596 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %596, i64* %RIP, !mcsema_real_eip !27
  %597 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %597, i1* %CF, align 1, !mcsema_real_eip !27
  %598 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %598, i1* %PF, align 1, !mcsema_real_eip !27
  %599 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %599, i1* %AF, align 1, !mcsema_real_eip !27
  %600 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %600, i1* %ZF, align 1, !mcsema_real_eip !27
  %601 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %601, i1* %SF, align 1, !mcsema_real_eip !27
  %602 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %602, i1* %OF, align 1, !mcsema_real_eip !27
  %603 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %603, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %604 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %604, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %605 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %605, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %606 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %606, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %607 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %607, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %608 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %608, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %609 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %609, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %610 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %610, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %611 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %611, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %612 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %612, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %613 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %613, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %614 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %614, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %615 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %615, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %616 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %616, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %617 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %617, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %618 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %618, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %619 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %619, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %620 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %620, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %621 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %621, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %622 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %622, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %623 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %623, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %624 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %624, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %625 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %625, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %626 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %626, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %627 = load i64, i64* %53, align 4
  store i64 %627, i64* %52, align 4
  %628 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %628, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %629 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %629, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %630 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %630, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %631 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %631, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %632 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %632, i128* %XMM0, align 1, !mcsema_real_eip !27
  %633 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %633, i128* %XMM1, align 1, !mcsema_real_eip !27
  %634 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %634, i128* %XMM2, align 1, !mcsema_real_eip !27
  %635 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %635, i128* %XMM3, align 1, !mcsema_real_eip !27
  %636 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %636, i128* %XMM4, align 1, !mcsema_real_eip !27
  %637 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %637, i128* %XMM5, align 1, !mcsema_real_eip !27
  %638 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %638, i128* %XMM6, align 1, !mcsema_real_eip !27
  %639 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %639, i128* %XMM7, align 1, !mcsema_real_eip !27
  %640 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %640, i128* %XMM8, align 1, !mcsema_real_eip !27
  %641 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %641, i128* %XMM9, align 1, !mcsema_real_eip !27
  %642 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %642, i128* %XMM10, align 1, !mcsema_real_eip !27
  %643 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %643, i128* %XMM11, align 1, !mcsema_real_eip !27
  %644 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %644, i128* %XMM12, align 1, !mcsema_real_eip !27
  %645 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %645, i128* %XMM13, align 1, !mcsema_real_eip !27
  %646 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %646, i128* %XMM14, align 1, !mcsema_real_eip !27
  %647 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %647, i128* %XMM15, align 1, !mcsema_real_eip !27
  %648 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %648, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %649 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %649, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x56:                                       ; preds = %block_0x3f
  %650 = load i64, i64* %RBP_val, !mcsema_real_eip !43
  %651 = add i64 %650, -32, !mcsema_real_eip !43
  %652 = inttoptr i64 %651 to i64*, !mcsema_real_eip !43
  %653 = load i64, i64* %652, !mcsema_real_eip !43
  store i64 %653, i64* %RAX_val, !mcsema_real_eip !43
  %654 = shl i64 %653, 3
  %655 = add i64 %654, add (i64 ptrtoint (%0* @data_0x1e2 to i64), i64 88), !mcsema_real_eip !44
  %656 = inttoptr i64 %655 to i64*, !mcsema_real_eip !44
  %657 = load i64, i64* %656, !mcsema_real_eip !44
  store i64 %657, i64* %RCX_val, !mcsema_real_eip !44
  store i64 %653, i64* %RAX, !mcsema_real_eip !45
  %658 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %658, i64* %RBX, !mcsema_real_eip !45
  %659 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  store i64 %659, i64* %RCX, !mcsema_real_eip !45
  %660 = load i64, i64* %RDX_val, !mcsema_real_eip !45
  store i64 %660, i64* %RDX, !mcsema_real_eip !45
  %661 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %661, i64* %RSI, !mcsema_real_eip !45
  %662 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  store i64 %662, i64* %RDI, !mcsema_real_eip !45
  %663 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  store i64 %663, i64* %RSP, !mcsema_real_eip !45
  %664 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  store i64 %664, i64* %RBP, !mcsema_real_eip !45
  %665 = load i64, i64* %R8_val, !mcsema_real_eip !45
  store i64 %665, i64* %R8, !mcsema_real_eip !45
  %666 = load i64, i64* %R9_val, !mcsema_real_eip !45
  store i64 %666, i64* %R9, !mcsema_real_eip !45
  %667 = load i64, i64* %R10_val, !mcsema_real_eip !45
  store i64 %667, i64* %R10, !mcsema_real_eip !45
  %668 = load i64, i64* %R11_val, !mcsema_real_eip !45
  store i64 %668, i64* %R11, !mcsema_real_eip !45
  %669 = load i64, i64* %R12_val, !mcsema_real_eip !45
  store i64 %669, i64* %R12, !mcsema_real_eip !45
  %670 = load i64, i64* %R13_val, !mcsema_real_eip !45
  store i64 %670, i64* %R13, !mcsema_real_eip !45
  %671 = load i64, i64* %R14_val, !mcsema_real_eip !45
  store i64 %671, i64* %R14, !mcsema_real_eip !45
  %672 = load i64, i64* %R15_val, !mcsema_real_eip !45
  store i64 %672, i64* %R15, !mcsema_real_eip !45
  %673 = load i64, i64* %RIP_val, !mcsema_real_eip !45
  store i64 %673, i64* %RIP, !mcsema_real_eip !45
  %674 = load i1, i1* %CF_val, !mcsema_real_eip !45
  store i1 %674, i1* %CF, align 1, !mcsema_real_eip !45
  %675 = load i1, i1* %PF_val, !mcsema_real_eip !45
  store i1 %675, i1* %PF, align 1, !mcsema_real_eip !45
  %676 = load i1, i1* %AF_val, !mcsema_real_eip !45
  store i1 %676, i1* %AF, align 1, !mcsema_real_eip !45
  %677 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  store i1 %677, i1* %ZF, align 1, !mcsema_real_eip !45
  %678 = load i1, i1* %SF_val, !mcsema_real_eip !45
  store i1 %678, i1* %SF, align 1, !mcsema_real_eip !45
  %679 = load i1, i1* %OF_val, !mcsema_real_eip !45
  store i1 %679, i1* %OF, align 1, !mcsema_real_eip !45
  %680 = load i1, i1* %DF_val, !mcsema_real_eip !45
  store i1 %680, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  %681 = load i1, i1* %FPU_B_val, !mcsema_real_eip !45
  store i1 %681, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %682 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !45
  store i1 %682, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %683 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !45
  store i3 %683, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %684 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !45
  store i1 %684, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %685 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !45
  store i1 %685, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %686 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !45
  store i1 %686, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %687 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !45
  store i1 %687, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %688 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !45
  store i1 %688, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %689 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !45
  store i1 %689, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %690 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !45
  store i1 %690, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %691 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !45
  store i1 %691, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %692 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !45
  store i1 %692, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %693 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !45
  store i1 %693, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %694 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !45
  store i1 %694, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %695 = load i1, i1* %FPU_X_val, !mcsema_real_eip !45
  store i1 %695, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %696 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !45
  store i2 %696, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %697 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !45
  store i2 %697, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %698 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !45
  store i1 %698, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %699 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !45
  store i1 %699, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %700 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !45
  store i1 %700, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %701 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !45
  store i1 %701, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %702 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !45
  store i1 %702, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %703 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !45
  store i1 %703, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %704 = load i64, i64* %53, align 4
  store i64 %704, i64* %52, align 4
  %705 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  store i16 %705, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %706 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  store i64 %706, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  %707 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  store i16 %707, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %708 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  store i64 %708, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  %709 = load i128, i128* %XMM0_val, !mcsema_real_eip !45
  store i128 %709, i128* %XMM0, align 1, !mcsema_real_eip !45
  %710 = load i128, i128* %XMM1_val, !mcsema_real_eip !45
  store i128 %710, i128* %XMM1, align 1, !mcsema_real_eip !45
  %711 = load i128, i128* %XMM2_val, !mcsema_real_eip !45
  store i128 %711, i128* %XMM2, align 1, !mcsema_real_eip !45
  %712 = load i128, i128* %XMM3_val, !mcsema_real_eip !45
  store i128 %712, i128* %XMM3, align 1, !mcsema_real_eip !45
  %713 = load i128, i128* %XMM4_val, !mcsema_real_eip !45
  store i128 %713, i128* %XMM4, align 1, !mcsema_real_eip !45
  %714 = load i128, i128* %XMM5_val, !mcsema_real_eip !45
  store i128 %714, i128* %XMM5, align 1, !mcsema_real_eip !45
  %715 = load i128, i128* %XMM6_val, !mcsema_real_eip !45
  store i128 %715, i128* %XMM6, align 1, !mcsema_real_eip !45
  %716 = load i128, i128* %XMM7_val, !mcsema_real_eip !45
  store i128 %716, i128* %XMM7, align 1, !mcsema_real_eip !45
  %717 = load i128, i128* %XMM8_val, !mcsema_real_eip !45
  store i128 %717, i128* %XMM8, align 1, !mcsema_real_eip !45
  %718 = load i128, i128* %XMM9_val, !mcsema_real_eip !45
  store i128 %718, i128* %XMM9, align 1, !mcsema_real_eip !45
  %719 = load i128, i128* %XMM10_val, !mcsema_real_eip !45
  store i128 %719, i128* %XMM10, align 1, !mcsema_real_eip !45
  %720 = load i128, i128* %XMM11_val, !mcsema_real_eip !45
  store i128 %720, i128* %XMM11, align 1, !mcsema_real_eip !45
  %721 = load i128, i128* %XMM12_val, !mcsema_real_eip !45
  store i128 %721, i128* %XMM12, align 1, !mcsema_real_eip !45
  %722 = load i128, i128* %XMM13_val, !mcsema_real_eip !45
  store i128 %722, i128* %XMM13, align 1, !mcsema_real_eip !45
  %723 = load i128, i128* %XMM14_val, !mcsema_real_eip !45
  store i128 %723, i128* %XMM14, align 1, !mcsema_real_eip !45
  %724 = load i128, i128* %XMM15_val, !mcsema_real_eip !45
  store i128 %724, i128* %XMM15, align 1, !mcsema_real_eip !45
  %725 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !45
  store i64 %725, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  %726 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  store i64 %726, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  call void @do_call_value.2(%struct.regs* %0, i64 %657, i64 %_local_stack_start_, i64 %_local_stack_end_)
  %727 = load i64, i64* %RAX, !mcsema_real_eip !45
  store i64 %727, i64* %RAX_val, !mcsema_real_eip !45
  %728 = load i64, i64* %RBX, !mcsema_real_eip !45
  store i64 %728, i64* %RBX_val, !mcsema_real_eip !45
  %729 = load i64, i64* %RCX, !mcsema_real_eip !45
  store i64 %729, i64* %RCX_val, !mcsema_real_eip !45
  %730 = load i64, i64* %RDX, !mcsema_real_eip !45
  store i64 %730, i64* %RDX_val, !mcsema_real_eip !45
  %731 = load i64, i64* %RSI, !mcsema_real_eip !45
  store i64 %731, i64* %RSI_val, !mcsema_real_eip !45
  %732 = load i64, i64* %RDI, !mcsema_real_eip !45
  store i64 %732, i64* %RDI_val, !mcsema_real_eip !45
  %733 = load i64, i64* %RSP, !mcsema_real_eip !45
  store i64 %733, i64* %RSP_val, !mcsema_real_eip !45
  %734 = load i64, i64* %RBP, !mcsema_real_eip !45
  store i64 %734, i64* %RBP_val, !mcsema_real_eip !45
  %735 = load i64, i64* %R8, !mcsema_real_eip !45
  store i64 %735, i64* %R8_val, !mcsema_real_eip !45
  %736 = load i64, i64* %R9, !mcsema_real_eip !45
  store i64 %736, i64* %R9_val, !mcsema_real_eip !45
  %737 = load i64, i64* %R10, !mcsema_real_eip !45
  store i64 %737, i64* %R10_val, !mcsema_real_eip !45
  %738 = load i64, i64* %R11, !mcsema_real_eip !45
  store i64 %738, i64* %R11_val, !mcsema_real_eip !45
  %739 = load i64, i64* %R12, !mcsema_real_eip !45
  store i64 %739, i64* %R12_val, !mcsema_real_eip !45
  %740 = load i64, i64* %R13, !mcsema_real_eip !45
  store i64 %740, i64* %R13_val, !mcsema_real_eip !45
  %741 = load i64, i64* %R14, !mcsema_real_eip !45
  store i64 %741, i64* %R14_val, !mcsema_real_eip !45
  %742 = load i64, i64* %R15, !mcsema_real_eip !45
  store i64 %742, i64* %R15_val, !mcsema_real_eip !45
  %743 = load i64, i64* %RIP, !mcsema_real_eip !45
  store i64 %743, i64* %RIP_val, !mcsema_real_eip !45
  %744 = load i1, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 %744, i1* %CF_val, !mcsema_real_eip !45
  %745 = load i1, i1* %PF, align 1, !mcsema_real_eip !45
  store i1 %745, i1* %PF_val, !mcsema_real_eip !45
  %746 = load i1, i1* %AF, align 1, !mcsema_real_eip !45
  store i1 %746, i1* %AF_val, !mcsema_real_eip !45
  %747 = load i1, i1* %ZF, align 1, !mcsema_real_eip !45
  store i1 %747, i1* %ZF_val, !mcsema_real_eip !45
  %748 = load i1, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 %748, i1* %SF_val, !mcsema_real_eip !45
  %749 = load i1, i1* %OF, align 1, !mcsema_real_eip !45
  store i1 %749, i1* %OF_val, !mcsema_real_eip !45
  %750 = load i1, i1* %DF, align 1, !mcsema_real_eip !45
  store i1 %750, i1* %DF_val, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %751 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !45
  store i1 %751, i1* %FPU_B_val, !mcsema_real_eip !45
  %752 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  store i1 %752, i1* %FPU_C3_val, !mcsema_real_eip !45
  %753 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  store i3 %753, i3* %FPU_TOP_val, !mcsema_real_eip !45
  %754 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  store i1 %754, i1* %FPU_C2_val, !mcsema_real_eip !45
  %755 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  store i1 %755, i1* %FPU_C1_val, !mcsema_real_eip !45
  %756 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  store i1 %756, i1* %FPU_C0_val, !mcsema_real_eip !45
  %757 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  store i1 %757, i1* %FPU_ES_val, !mcsema_real_eip !45
  %758 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  store i1 %758, i1* %FPU_SF_val, !mcsema_real_eip !45
  %759 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  store i1 %759, i1* %FPU_PE_val, !mcsema_real_eip !45
  %760 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  store i1 %760, i1* %FPU_UE_val, !mcsema_real_eip !45
  %761 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  store i1 %761, i1* %FPU_OE_val, !mcsema_real_eip !45
  %762 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  store i1 %762, i1* %FPU_ZE_val, !mcsema_real_eip !45
  %763 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  store i1 %763, i1* %FPU_DE_val, !mcsema_real_eip !45
  %764 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  store i1 %764, i1* %FPU_IE_val, !mcsema_real_eip !45
  %765 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !45
  store i1 %765, i1* %FPU_X_val, !mcsema_real_eip !45
  %766 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  store i2 %766, i2* %FPU_RC_val, !mcsema_real_eip !45
  %767 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  store i2 %767, i2* %FPU_PC_val, !mcsema_real_eip !45
  %768 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  store i1 %768, i1* %FPU_PM_val, !mcsema_real_eip !45
  %769 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  store i1 %769, i1* %FPU_UM_val, !mcsema_real_eip !45
  %770 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  store i1 %770, i1* %FPU_OM_val, !mcsema_real_eip !45
  %771 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  store i1 %771, i1* %FPU_ZM_val, !mcsema_real_eip !45
  %772 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  store i1 %772, i1* %FPU_DM_val, !mcsema_real_eip !45
  %773 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  store i1 %773, i1* %FPU_IM_val, !mcsema_real_eip !45
  %774 = load i64, i64* %52, align 4
  store i64 %774, i64* %53, align 4
  %775 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  store i16 %775, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  %776 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !45
  store i64 %776, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  %777 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  store i16 %777, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  %778 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !45
  store i64 %778, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  %779 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !45
  store i128 %779, i128* %XMM0_val, !mcsema_real_eip !45
  %780 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !45
  store i128 %780, i128* %XMM1_val, !mcsema_real_eip !45
  %781 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !45
  store i128 %781, i128* %XMM2_val, !mcsema_real_eip !45
  %782 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !45
  store i128 %782, i128* %XMM3_val, !mcsema_real_eip !45
  %783 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !45
  store i128 %783, i128* %XMM4_val, !mcsema_real_eip !45
  %784 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !45
  store i128 %784, i128* %XMM5_val, !mcsema_real_eip !45
  %785 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !45
  store i128 %785, i128* %XMM6_val, !mcsema_real_eip !45
  %786 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !45
  store i128 %786, i128* %XMM7_val, !mcsema_real_eip !45
  %787 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !45
  store i128 %787, i128* %XMM8_val, !mcsema_real_eip !45
  %788 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !45
  store i128 %788, i128* %XMM9_val, !mcsema_real_eip !45
  %789 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !45
  store i128 %789, i128* %XMM10_val, !mcsema_real_eip !45
  %790 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !45
  store i128 %790, i128* %XMM11_val, !mcsema_real_eip !45
  %791 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !45
  store i128 %791, i128* %XMM12_val, !mcsema_real_eip !45
  %792 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !45
  store i128 %792, i128* %XMM13_val, !mcsema_real_eip !45
  %793 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !45
  store i128 %793, i128* %XMM14_val, !mcsema_real_eip !45
  %794 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !45
  store i128 %794, i128* %XMM15_val, !mcsema_real_eip !45
  %795 = load i64, i64* %STACK_BASE, !mcsema_real_eip !45
  store i64 %795, i64* %STACK_BASE_val, !mcsema_real_eip !45
  %796 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !45
  store i64 %796, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  %797 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  %798 = add i64 %797, 8, !mcsema_real_eip !45
  store i64 %798, i64* %RSP_val, !mcsema_real_eip !45
  %799 = load i64, i64* %RAX_val, !mcsema_real_eip !45
  store i64 %799, i64* %RAX, !mcsema_real_eip !45
  %800 = load i64, i64* %RBX_val, !mcsema_real_eip !45
  store i64 %800, i64* %RBX, !mcsema_real_eip !45
  %801 = load i64, i64* %RCX_val, !mcsema_real_eip !45
  store i64 %801, i64* %RCX, !mcsema_real_eip !45
  %802 = load i64, i64* %RDX_val, !mcsema_real_eip !45
  store i64 %802, i64* %RDX, !mcsema_real_eip !45
  %803 = load i64, i64* %RSI_val, !mcsema_real_eip !45
  store i64 %803, i64* %RSI, !mcsema_real_eip !45
  %804 = load i64, i64* %RDI_val, !mcsema_real_eip !45
  store i64 %804, i64* %RDI, !mcsema_real_eip !45
  %805 = load i64, i64* %RSP_val, !mcsema_real_eip !45
  store i64 %805, i64* %RSP, !mcsema_real_eip !45
  %806 = load i64, i64* %RBP_val, !mcsema_real_eip !45
  store i64 %806, i64* %RBP, !mcsema_real_eip !45
  %807 = load i64, i64* %R8_val, !mcsema_real_eip !45
  store i64 %807, i64* %R8, !mcsema_real_eip !45
  %808 = load i64, i64* %R9_val, !mcsema_real_eip !45
  store i64 %808, i64* %R9, !mcsema_real_eip !45
  %809 = load i64, i64* %R10_val, !mcsema_real_eip !45
  store i64 %809, i64* %R10, !mcsema_real_eip !45
  %810 = load i64, i64* %R11_val, !mcsema_real_eip !45
  store i64 %810, i64* %R11, !mcsema_real_eip !45
  %811 = load i64, i64* %R12_val, !mcsema_real_eip !45
  store i64 %811, i64* %R12, !mcsema_real_eip !45
  %812 = load i64, i64* %R13_val, !mcsema_real_eip !45
  store i64 %812, i64* %R13, !mcsema_real_eip !45
  %813 = load i64, i64* %R14_val, !mcsema_real_eip !45
  store i64 %813, i64* %R14, !mcsema_real_eip !45
  %814 = load i64, i64* %R15_val, !mcsema_real_eip !45
  store i64 %814, i64* %R15, !mcsema_real_eip !45
  %815 = load i64, i64* %RIP_val, !mcsema_real_eip !45
  store i64 %815, i64* %RIP, !mcsema_real_eip !45
  %816 = load i1, i1* %CF_val, !mcsema_real_eip !45
  store i1 %816, i1* %CF, align 1, !mcsema_real_eip !45
  %817 = load i1, i1* %PF_val, !mcsema_real_eip !45
  store i1 %817, i1* %PF, align 1, !mcsema_real_eip !45
  %818 = load i1, i1* %AF_val, !mcsema_real_eip !45
  store i1 %818, i1* %AF, align 1, !mcsema_real_eip !45
  %819 = load i1, i1* %ZF_val, !mcsema_real_eip !45
  store i1 %819, i1* %ZF, align 1, !mcsema_real_eip !45
  %820 = load i1, i1* %SF_val, !mcsema_real_eip !45
  store i1 %820, i1* %SF, align 1, !mcsema_real_eip !45
  %821 = load i1, i1* %OF_val, !mcsema_real_eip !45
  store i1 %821, i1* %OF, align 1, !mcsema_real_eip !45
  %822 = load i1, i1* %DF_val, !mcsema_real_eip !45
  store i1 %822, i1* %DF, align 1, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !45
  %823 = load i1, i1* %FPU_B_val, !mcsema_real_eip !45
  store i1 %823, i1* %FPU_B, align 1, !mcsema_real_eip !45
  %824 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !45
  store i1 %824, i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %825 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !45
  store i3 %825, i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %826 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !45
  store i1 %826, i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %827 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !45
  store i1 %827, i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %828 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !45
  store i1 %828, i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %829 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !45
  store i1 %829, i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %830 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !45
  store i1 %830, i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %831 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !45
  store i1 %831, i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %832 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !45
  store i1 %832, i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %833 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !45
  store i1 %833, i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %834 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !45
  store i1 %834, i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %835 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !45
  store i1 %835, i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %836 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !45
  store i1 %836, i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %837 = load i1, i1* %FPU_X_val, !mcsema_real_eip !45
  store i1 %837, i1* %FPU_X, align 1, !mcsema_real_eip !45
  %838 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !45
  store i2 %838, i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %839 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !45
  store i2 %839, i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %840 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !45
  store i1 %840, i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %841 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !45
  store i1 %841, i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %842 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !45
  store i1 %842, i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %843 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !45
  store i1 %843, i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %844 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !45
  store i1 %844, i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %845 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !45
  store i1 %845, i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %846 = load i64, i64* %53, align 4
  store i64 %846, i64* %52, align 4
  %847 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !45
  store i16 %847, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %848 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !45
  store i64 %848, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !45
  %849 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !45
  store i16 %849, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %850 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !45
  store i64 %850, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !45
  %851 = load i128, i128* %XMM0_val, !mcsema_real_eip !45
  store i128 %851, i128* %XMM0, align 1, !mcsema_real_eip !45
  %852 = load i128, i128* %XMM1_val, !mcsema_real_eip !45
  store i128 %852, i128* %XMM1, align 1, !mcsema_real_eip !45
  %853 = load i128, i128* %XMM2_val, !mcsema_real_eip !45
  store i128 %853, i128* %XMM2, align 1, !mcsema_real_eip !45
  %854 = load i128, i128* %XMM3_val, !mcsema_real_eip !45
  store i128 %854, i128* %XMM3, align 1, !mcsema_real_eip !45
  %855 = load i128, i128* %XMM4_val, !mcsema_real_eip !45
  store i128 %855, i128* %XMM4, align 1, !mcsema_real_eip !45
  %856 = load i128, i128* %XMM5_val, !mcsema_real_eip !45
  store i128 %856, i128* %XMM5, align 1, !mcsema_real_eip !45
  %857 = load i128, i128* %XMM6_val, !mcsema_real_eip !45
  store i128 %857, i128* %XMM6, align 1, !mcsema_real_eip !45
  %858 = load i128, i128* %XMM7_val, !mcsema_real_eip !45
  store i128 %858, i128* %XMM7, align 1, !mcsema_real_eip !45
  %859 = load i128, i128* %XMM8_val, !mcsema_real_eip !45
  store i128 %859, i128* %XMM8, align 1, !mcsema_real_eip !45
  %860 = load i128, i128* %XMM9_val, !mcsema_real_eip !45
  store i128 %860, i128* %XMM9, align 1, !mcsema_real_eip !45
  %861 = load i128, i128* %XMM10_val, !mcsema_real_eip !45
  store i128 %861, i128* %XMM10, align 1, !mcsema_real_eip !45
  %862 = load i128, i128* %XMM11_val, !mcsema_real_eip !45
  store i128 %862, i128* %XMM11, align 1, !mcsema_real_eip !45
  %863 = load i128, i128* %XMM12_val, !mcsema_real_eip !45
  store i128 %863, i128* %XMM12, align 1, !mcsema_real_eip !45
  %864 = load i128, i128* %XMM13_val, !mcsema_real_eip !45
  store i128 %864, i128* %XMM13, align 1, !mcsema_real_eip !45
  %865 = load i128, i128* %XMM14_val, !mcsema_real_eip !45
  store i128 %865, i128* %XMM14, align 1, !mcsema_real_eip !45
  %866 = load i128, i128* %XMM15_val, !mcsema_real_eip !45
  store i128 %866, i128* %XMM15, align 1, !mcsema_real_eip !45
  %867 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !45
  store i64 %867, i64* %STACK_BASE, align 1, !mcsema_real_eip !45
  %868 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !45
  store i64 %868, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !45
  ret void, !mcsema_real_eip !45
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_132(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !46
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !46
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !46
  %XMM15_val = alloca i128, !mcsema_real_eip !46
  %XMM14_val = alloca i128, !mcsema_real_eip !46
  %XMM13_val = alloca i128, !mcsema_real_eip !46
  %XMM12_val = alloca i128, !mcsema_real_eip !46
  %XMM11_val = alloca i128, !mcsema_real_eip !46
  %XMM10_val = alloca i128, !mcsema_real_eip !46
  %XMM9_val = alloca i128, !mcsema_real_eip !46
  %XMM8_val = alloca i128, !mcsema_real_eip !46
  %XMM7_val = alloca i128, !mcsema_real_eip !46
  %XMM6_val = alloca i128, !mcsema_real_eip !46
  %XMM5_val = alloca i128, !mcsema_real_eip !46
  %XMM4_val = alloca i128, !mcsema_real_eip !46
  %XMM3_val = alloca i128, !mcsema_real_eip !46
  %XMM2_val = alloca i128, !mcsema_real_eip !46
  %XMM1_val = alloca i128, !mcsema_real_eip !46
  %XMM0_val = alloca i128, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !46
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !46
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !46
  %FPU_IM_val = alloca i1, !mcsema_real_eip !46
  %FPU_DM_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !46
  %FPU_OM_val = alloca i1, !mcsema_real_eip !46
  %FPU_UM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PM_val = alloca i1, !mcsema_real_eip !46
  %FPU_PC_val = alloca i2, !mcsema_real_eip !46
  %FPU_RC_val = alloca i2, !mcsema_real_eip !46
  %FPU_X_val = alloca i1, !mcsema_real_eip !46
  %FPU_IE_val = alloca i1, !mcsema_real_eip !46
  %FPU_DE_val = alloca i1, !mcsema_real_eip !46
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !46
  %FPU_OE_val = alloca i1, !mcsema_real_eip !46
  %FPU_UE_val = alloca i1, !mcsema_real_eip !46
  %FPU_PE_val = alloca i1, !mcsema_real_eip !46
  %FPU_SF_val = alloca i1, !mcsema_real_eip !46
  %FPU_ES_val = alloca i1, !mcsema_real_eip !46
  %FPU_C0_val = alloca i1, !mcsema_real_eip !46
  %FPU_C1_val = alloca i1, !mcsema_real_eip !46
  %FPU_C2_val = alloca i1, !mcsema_real_eip !46
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !46
  %FPU_C3_val = alloca i1, !mcsema_real_eip !46
  %FPU_B_val = alloca i1, !mcsema_real_eip !46
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !46
  %DF_val = alloca i1, !mcsema_real_eip !46
  %OF_val = alloca i1, !mcsema_real_eip !46
  %SF_val = alloca i1, !mcsema_real_eip !46
  %CF_val = alloca i1, !mcsema_real_eip !46
  %AF_val = alloca i1, !mcsema_real_eip !46
  %PF_val = alloca i1, !mcsema_real_eip !46
  %ZF_val = alloca i1, !mcsema_real_eip !46
  %RIP_val = alloca i64, !mcsema_real_eip !46
  %R14_val = alloca i64, !mcsema_real_eip !46
  %R13_val = alloca i64, !mcsema_real_eip !46
  %R12_val = alloca i64, !mcsema_real_eip !46
  %R11_val = alloca i64, !mcsema_real_eip !46
  %R10_val = alloca i64, !mcsema_real_eip !46
  %R9_val = alloca i64, !mcsema_real_eip !46
  %R8_val = alloca i64, !mcsema_real_eip !46
  %RSP_val = alloca i64, !mcsema_real_eip !46
  %RBP_val = alloca i64, !mcsema_real_eip !46
  %RDI_val = alloca i64, !mcsema_real_eip !46
  %RSI_val = alloca i64, !mcsema_real_eip !46
  %RDX_val = alloca i64, !mcsema_real_eip !46
  %RCX_val = alloca i64, !mcsema_real_eip !46
  %RBX_val = alloca i64, !mcsema_real_eip !46
  %RAX_val = alloca i64, !mcsema_real_eip !46
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !46
  %1 = load i64, i64* %RAX, !mcsema_real_eip !46
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !46
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !46
  %2 = load i64, i64* %RBX, !mcsema_real_eip !46
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !46
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !46
  %3 = load i64, i64* %RCX, !mcsema_real_eip !46
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !46
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !46
  %4 = load i64, i64* %RDX, !mcsema_real_eip !46
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !46
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !46
  %5 = load i64, i64* %RSI, !mcsema_real_eip !46
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !46
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !46
  %6 = load i64, i64* %RDI, !mcsema_real_eip !46
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !46
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !46
  %7 = load i64, i64* %RSP, !mcsema_real_eip !46
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !46
  %8 = load i64, i64* %RBP, !mcsema_real_eip !46
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !46
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !46
  %9 = load i64, i64* %R8, !mcsema_real_eip !46
  store i64 %9, i64* %R8_val, !mcsema_real_eip !46
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !46
  %10 = load i64, i64* %R9, !mcsema_real_eip !46
  store i64 %10, i64* %R9_val, !mcsema_real_eip !46
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !46
  %11 = load i64, i64* %R10, !mcsema_real_eip !46
  store i64 %11, i64* %R10_val, !mcsema_real_eip !46
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !46
  %12 = load i64, i64* %R11, !mcsema_real_eip !46
  store i64 %12, i64* %R11_val, !mcsema_real_eip !46
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !46
  %13 = load i64, i64* %R12, !mcsema_real_eip !46
  store i64 %13, i64* %R12_val, !mcsema_real_eip !46
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !46
  %14 = load i64, i64* %R13, !mcsema_real_eip !46
  store i64 %14, i64* %R13_val, !mcsema_real_eip !46
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !46
  %15 = load i64, i64* %R14, !mcsema_real_eip !46
  store i64 %15, i64* %R14_val, !mcsema_real_eip !46
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !46
  %16 = load i64, i64* %R15, !mcsema_real_eip !46
  store i64 %16, i64* %R15_val, !mcsema_real_eip !46
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !46
  %17 = load i64, i64* %RIP, !mcsema_real_eip !46
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !46
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !46
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 %18, i1* %CF_val, !mcsema_real_eip !46
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !46
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 %19, i1* %PF_val, !mcsema_real_eip !46
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !46
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !46
  store i1 %20, i1* %AF_val, !mcsema_real_eip !46
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !46
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !46
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !46
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !46
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %22, i1* %SF_val, !mcsema_real_eip !46
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !46
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !46
  store i1 %23, i1* %OF_val, !mcsema_real_eip !46
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !46
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !46
  store i1 %24, i1* %DF_val, !mcsema_real_eip !46
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !46
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !46
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !46
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !46
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !46
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !46
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !46
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !46
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !46
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !46
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !46
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !46
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !46
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !46
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !46
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !46
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !46
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !46
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !46
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !46
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !46
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !46
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !46
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !46
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !46
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !46
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !46
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !46
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !46
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !46
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !46
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !46
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !46
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !46
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !46
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !46
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !46
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !46
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !46
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !46
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !46
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !46
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !46
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !46
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !46
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !46
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !46
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !46
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !46
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !46
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !46
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !46
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !46
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !46
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !46
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !46
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !46
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !46
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !46
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !46
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !46
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !46
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !46
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !46
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !46
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !46
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !46
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !46
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !46
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !46
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !46
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !46
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !46
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !46
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !46
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !46
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !46
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !46
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !46
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !46
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !46
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !46
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !46
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !46
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !46
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !46
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !46
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !46
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !46
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !46
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !46
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !46
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !46
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !46
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !46
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !46
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !46
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !46
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !46
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !46
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !46
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !46
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !46
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !46
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !46
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !46
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !46
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !46
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !46
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !46
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !46
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !46
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !46
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !46
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !46
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !46
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !46
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !46
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !46
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !46
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !46
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !46
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !46
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !46
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !46
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !46
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !46
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !46
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !46
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !46
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !46
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !46
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !46
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !46
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !46
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !46
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !46
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !46
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !46
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !46
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !46
  %78 = add i64 %77, -8, !mcsema_real_eip !46
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !46
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !46
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74633)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !47
  %84 = and i32 %83, 16, !mcsema_real_eip !47
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !47
  store i1 %85, i1* %AF_val, !mcsema_real_eip !47
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !47
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !47
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !47
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !47
  %89 = and i32 %83, %88, !mcsema_real_eip !47
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !47
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !47
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !47
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !47
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !47
  %96 = zext i32 %82 to i64, !mcsema_real_eip !47
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !47
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !48
  %98 = add i64 %97, -8, !mcsema_real_eip !48
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !48
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !48
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_142(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !49
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !49
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !49
  %XMM15_val = alloca i128, !mcsema_real_eip !49
  %XMM14_val = alloca i128, !mcsema_real_eip !49
  %XMM13_val = alloca i128, !mcsema_real_eip !49
  %XMM12_val = alloca i128, !mcsema_real_eip !49
  %XMM11_val = alloca i128, !mcsema_real_eip !49
  %XMM10_val = alloca i128, !mcsema_real_eip !49
  %XMM9_val = alloca i128, !mcsema_real_eip !49
  %XMM8_val = alloca i128, !mcsema_real_eip !49
  %XMM7_val = alloca i128, !mcsema_real_eip !49
  %XMM6_val = alloca i128, !mcsema_real_eip !49
  %XMM5_val = alloca i128, !mcsema_real_eip !49
  %XMM4_val = alloca i128, !mcsema_real_eip !49
  %XMM3_val = alloca i128, !mcsema_real_eip !49
  %XMM2_val = alloca i128, !mcsema_real_eip !49
  %XMM1_val = alloca i128, !mcsema_real_eip !49
  %XMM0_val = alloca i128, !mcsema_real_eip !49
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !49
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !49
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !49
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !49
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !49
  %FPU_IM_val = alloca i1, !mcsema_real_eip !49
  %FPU_DM_val = alloca i1, !mcsema_real_eip !49
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !49
  %FPU_OM_val = alloca i1, !mcsema_real_eip !49
  %FPU_UM_val = alloca i1, !mcsema_real_eip !49
  %FPU_PM_val = alloca i1, !mcsema_real_eip !49
  %FPU_PC_val = alloca i2, !mcsema_real_eip !49
  %FPU_RC_val = alloca i2, !mcsema_real_eip !49
  %FPU_X_val = alloca i1, !mcsema_real_eip !49
  %FPU_IE_val = alloca i1, !mcsema_real_eip !49
  %FPU_DE_val = alloca i1, !mcsema_real_eip !49
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !49
  %FPU_OE_val = alloca i1, !mcsema_real_eip !49
  %FPU_UE_val = alloca i1, !mcsema_real_eip !49
  %FPU_PE_val = alloca i1, !mcsema_real_eip !49
  %FPU_SF_val = alloca i1, !mcsema_real_eip !49
  %FPU_ES_val = alloca i1, !mcsema_real_eip !49
  %FPU_C0_val = alloca i1, !mcsema_real_eip !49
  %FPU_C1_val = alloca i1, !mcsema_real_eip !49
  %FPU_C2_val = alloca i1, !mcsema_real_eip !49
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !49
  %FPU_C3_val = alloca i1, !mcsema_real_eip !49
  %FPU_B_val = alloca i1, !mcsema_real_eip !49
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !49
  %DF_val = alloca i1, !mcsema_real_eip !49
  %OF_val = alloca i1, !mcsema_real_eip !49
  %SF_val = alloca i1, !mcsema_real_eip !49
  %CF_val = alloca i1, !mcsema_real_eip !49
  %AF_val = alloca i1, !mcsema_real_eip !49
  %PF_val = alloca i1, !mcsema_real_eip !49
  %ZF_val = alloca i1, !mcsema_real_eip !49
  %RIP_val = alloca i64, !mcsema_real_eip !49
  %R14_val = alloca i64, !mcsema_real_eip !49
  %R13_val = alloca i64, !mcsema_real_eip !49
  %R12_val = alloca i64, !mcsema_real_eip !49
  %R11_val = alloca i64, !mcsema_real_eip !49
  %R10_val = alloca i64, !mcsema_real_eip !49
  %R9_val = alloca i64, !mcsema_real_eip !49
  %R8_val = alloca i64, !mcsema_real_eip !49
  %RSP_val = alloca i64, !mcsema_real_eip !49
  %RBP_val = alloca i64, !mcsema_real_eip !49
  %RDI_val = alloca i64, !mcsema_real_eip !49
  %RSI_val = alloca i64, !mcsema_real_eip !49
  %RDX_val = alloca i64, !mcsema_real_eip !49
  %RCX_val = alloca i64, !mcsema_real_eip !49
  %RBX_val = alloca i64, !mcsema_real_eip !49
  %RAX_val = alloca i64, !mcsema_real_eip !49
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !49
  %1 = load i64, i64* %RAX, !mcsema_real_eip !49
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !49
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !49
  %2 = load i64, i64* %RBX, !mcsema_real_eip !49
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !49
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !49
  %3 = load i64, i64* %RCX, !mcsema_real_eip !49
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !49
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !49
  %4 = load i64, i64* %RDX, !mcsema_real_eip !49
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !49
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !49
  %5 = load i64, i64* %RSI, !mcsema_real_eip !49
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !49
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !49
  %6 = load i64, i64* %RDI, !mcsema_real_eip !49
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !49
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !49
  %7 = load i64, i64* %RSP, !mcsema_real_eip !49
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !49
  %8 = load i64, i64* %RBP, !mcsema_real_eip !49
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !49
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !49
  %9 = load i64, i64* %R8, !mcsema_real_eip !49
  store i64 %9, i64* %R8_val, !mcsema_real_eip !49
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !49
  %10 = load i64, i64* %R9, !mcsema_real_eip !49
  store i64 %10, i64* %R9_val, !mcsema_real_eip !49
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !49
  %11 = load i64, i64* %R10, !mcsema_real_eip !49
  store i64 %11, i64* %R10_val, !mcsema_real_eip !49
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !49
  %12 = load i64, i64* %R11, !mcsema_real_eip !49
  store i64 %12, i64* %R11_val, !mcsema_real_eip !49
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !49
  %13 = load i64, i64* %R12, !mcsema_real_eip !49
  store i64 %13, i64* %R12_val, !mcsema_real_eip !49
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !49
  %14 = load i64, i64* %R13, !mcsema_real_eip !49
  store i64 %14, i64* %R13_val, !mcsema_real_eip !49
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !49
  %15 = load i64, i64* %R14, !mcsema_real_eip !49
  store i64 %15, i64* %R14_val, !mcsema_real_eip !49
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !49
  %16 = load i64, i64* %R15, !mcsema_real_eip !49
  store i64 %16, i64* %R15_val, !mcsema_real_eip !49
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !49
  %17 = load i64, i64* %RIP, !mcsema_real_eip !49
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !49
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !49
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !49
  store i1 %18, i1* %CF_val, !mcsema_real_eip !49
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !49
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !49
  store i1 %19, i1* %PF_val, !mcsema_real_eip !49
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !49
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !49
  store i1 %20, i1* %AF_val, !mcsema_real_eip !49
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !49
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !49
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !49
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !49
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !49
  store i1 %22, i1* %SF_val, !mcsema_real_eip !49
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !49
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !49
  store i1 %23, i1* %OF_val, !mcsema_real_eip !49
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !49
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !49
  store i1 %24, i1* %DF_val, !mcsema_real_eip !49
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !49
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !49
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !49
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !49
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !49
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !49
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !49
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !49
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !49
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !49
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !49
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !49
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !49
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !49
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !49
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !49
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !49
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !49
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !49
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !49
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !49
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !49
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !49
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !49
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !49
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !49
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !49
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !49
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !49
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !49
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !49
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !49
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !49
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !49
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !49
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !49
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !49
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !49
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !49
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !49
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !49
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !49
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !49
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !49
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !49
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !49
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !49
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !49
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !49
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !49
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !49
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !49
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !49
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !49
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !49
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !49
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !49
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !49
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !49
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !49
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !49
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !49
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !49
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !49
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !49
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !49
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !49
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !49
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !49
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !49
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !49
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !49
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !49
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !49
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !49
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !49
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !49
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !49
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !49
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !49
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !49
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !49
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !49
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !49
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !49
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !49
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !49
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !49
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !49
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !49
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !49
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !49
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !49
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !49
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !49
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !49
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !49
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !49
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !49
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !49
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !49
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !49
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !49
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !49
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !49
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !49
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !49
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !49
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !49
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !49
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !49
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !49
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !49
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !49
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !49
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !49
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !49
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !49
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !49
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !49
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !49
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !49
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !49
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !49
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !49
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !49
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !49
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !49
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !49
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !49
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !49
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !49
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !49
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !49
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !49
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !49
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !49
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !49
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !49
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !49
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !49
  %78 = add i64 %77, -8, !mcsema_real_eip !49
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !49
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !49
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74634)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !50
  %84 = and i32 %83, 16, !mcsema_real_eip !50
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !50
  store i1 %85, i1* %AF_val, !mcsema_real_eip !50
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !50
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !50
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !50
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !50
  %89 = and i32 %83, %88, !mcsema_real_eip !50
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !50
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !50
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !50
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !50
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !50
  %96 = zext i32 %82 to i64, !mcsema_real_eip !50
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !50
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !51
  %98 = add i64 %97, -8, !mcsema_real_eip !51
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !51
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !51
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_152(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !52
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !52
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !52
  %XMM15_val = alloca i128, !mcsema_real_eip !52
  %XMM14_val = alloca i128, !mcsema_real_eip !52
  %XMM13_val = alloca i128, !mcsema_real_eip !52
  %XMM12_val = alloca i128, !mcsema_real_eip !52
  %XMM11_val = alloca i128, !mcsema_real_eip !52
  %XMM10_val = alloca i128, !mcsema_real_eip !52
  %XMM9_val = alloca i128, !mcsema_real_eip !52
  %XMM8_val = alloca i128, !mcsema_real_eip !52
  %XMM7_val = alloca i128, !mcsema_real_eip !52
  %XMM6_val = alloca i128, !mcsema_real_eip !52
  %XMM5_val = alloca i128, !mcsema_real_eip !52
  %XMM4_val = alloca i128, !mcsema_real_eip !52
  %XMM3_val = alloca i128, !mcsema_real_eip !52
  %XMM2_val = alloca i128, !mcsema_real_eip !52
  %XMM1_val = alloca i128, !mcsema_real_eip !52
  %XMM0_val = alloca i128, !mcsema_real_eip !52
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !52
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !52
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !52
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !52
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !52
  %FPU_IM_val = alloca i1, !mcsema_real_eip !52
  %FPU_DM_val = alloca i1, !mcsema_real_eip !52
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !52
  %FPU_OM_val = alloca i1, !mcsema_real_eip !52
  %FPU_UM_val = alloca i1, !mcsema_real_eip !52
  %FPU_PM_val = alloca i1, !mcsema_real_eip !52
  %FPU_PC_val = alloca i2, !mcsema_real_eip !52
  %FPU_RC_val = alloca i2, !mcsema_real_eip !52
  %FPU_X_val = alloca i1, !mcsema_real_eip !52
  %FPU_IE_val = alloca i1, !mcsema_real_eip !52
  %FPU_DE_val = alloca i1, !mcsema_real_eip !52
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !52
  %FPU_OE_val = alloca i1, !mcsema_real_eip !52
  %FPU_UE_val = alloca i1, !mcsema_real_eip !52
  %FPU_PE_val = alloca i1, !mcsema_real_eip !52
  %FPU_SF_val = alloca i1, !mcsema_real_eip !52
  %FPU_ES_val = alloca i1, !mcsema_real_eip !52
  %FPU_C0_val = alloca i1, !mcsema_real_eip !52
  %FPU_C1_val = alloca i1, !mcsema_real_eip !52
  %FPU_C2_val = alloca i1, !mcsema_real_eip !52
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !52
  %FPU_C3_val = alloca i1, !mcsema_real_eip !52
  %FPU_B_val = alloca i1, !mcsema_real_eip !52
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !52
  %DF_val = alloca i1, !mcsema_real_eip !52
  %OF_val = alloca i1, !mcsema_real_eip !52
  %SF_val = alloca i1, !mcsema_real_eip !52
  %CF_val = alloca i1, !mcsema_real_eip !52
  %AF_val = alloca i1, !mcsema_real_eip !52
  %PF_val = alloca i1, !mcsema_real_eip !52
  %ZF_val = alloca i1, !mcsema_real_eip !52
  %RIP_val = alloca i64, !mcsema_real_eip !52
  %R14_val = alloca i64, !mcsema_real_eip !52
  %R13_val = alloca i64, !mcsema_real_eip !52
  %R12_val = alloca i64, !mcsema_real_eip !52
  %R11_val = alloca i64, !mcsema_real_eip !52
  %R10_val = alloca i64, !mcsema_real_eip !52
  %R9_val = alloca i64, !mcsema_real_eip !52
  %R8_val = alloca i64, !mcsema_real_eip !52
  %RSP_val = alloca i64, !mcsema_real_eip !52
  %RBP_val = alloca i64, !mcsema_real_eip !52
  %RDI_val = alloca i64, !mcsema_real_eip !52
  %RSI_val = alloca i64, !mcsema_real_eip !52
  %RDX_val = alloca i64, !mcsema_real_eip !52
  %RCX_val = alloca i64, !mcsema_real_eip !52
  %RBX_val = alloca i64, !mcsema_real_eip !52
  %RAX_val = alloca i64, !mcsema_real_eip !52
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !52
  %1 = load i64, i64* %RAX, !mcsema_real_eip !52
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !52
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !52
  %2 = load i64, i64* %RBX, !mcsema_real_eip !52
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !52
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !52
  %3 = load i64, i64* %RCX, !mcsema_real_eip !52
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !52
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !52
  %4 = load i64, i64* %RDX, !mcsema_real_eip !52
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !52
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !52
  %5 = load i64, i64* %RSI, !mcsema_real_eip !52
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !52
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !52
  %6 = load i64, i64* %RDI, !mcsema_real_eip !52
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !52
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !52
  %7 = load i64, i64* %RSP, !mcsema_real_eip !52
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !52
  %8 = load i64, i64* %RBP, !mcsema_real_eip !52
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !52
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !52
  %9 = load i64, i64* %R8, !mcsema_real_eip !52
  store i64 %9, i64* %R8_val, !mcsema_real_eip !52
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !52
  %10 = load i64, i64* %R9, !mcsema_real_eip !52
  store i64 %10, i64* %R9_val, !mcsema_real_eip !52
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !52
  %11 = load i64, i64* %R10, !mcsema_real_eip !52
  store i64 %11, i64* %R10_val, !mcsema_real_eip !52
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !52
  %12 = load i64, i64* %R11, !mcsema_real_eip !52
  store i64 %12, i64* %R11_val, !mcsema_real_eip !52
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !52
  %13 = load i64, i64* %R12, !mcsema_real_eip !52
  store i64 %13, i64* %R12_val, !mcsema_real_eip !52
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !52
  %14 = load i64, i64* %R13, !mcsema_real_eip !52
  store i64 %14, i64* %R13_val, !mcsema_real_eip !52
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !52
  %15 = load i64, i64* %R14, !mcsema_real_eip !52
  store i64 %15, i64* %R14_val, !mcsema_real_eip !52
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !52
  %16 = load i64, i64* %R15, !mcsema_real_eip !52
  store i64 %16, i64* %R15_val, !mcsema_real_eip !52
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !52
  %17 = load i64, i64* %RIP, !mcsema_real_eip !52
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !52
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !52
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !52
  store i1 %18, i1* %CF_val, !mcsema_real_eip !52
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !52
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !52
  store i1 %19, i1* %PF_val, !mcsema_real_eip !52
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !52
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !52
  store i1 %20, i1* %AF_val, !mcsema_real_eip !52
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !52
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !52
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !52
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !52
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !52
  store i1 %22, i1* %SF_val, !mcsema_real_eip !52
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !52
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !52
  store i1 %23, i1* %OF_val, !mcsema_real_eip !52
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !52
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !52
  store i1 %24, i1* %DF_val, !mcsema_real_eip !52
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !52
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !52
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !52
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !52
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !52
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !52
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !52
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !52
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !52
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !52
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !52
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !52
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !52
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !52
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !52
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !52
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !52
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !52
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !52
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !52
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !52
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !52
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !52
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !52
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !52
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !52
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !52
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !52
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !52
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !52
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !52
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !52
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !52
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !52
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !52
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !52
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !52
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !52
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !52
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !52
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !52
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !52
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !52
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !52
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !52
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !52
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !52
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !52
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !52
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !52
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !52
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !52
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !52
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !52
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !52
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !52
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !52
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !52
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !52
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !52
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !52
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !52
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !52
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !52
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !52
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !52
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !52
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !52
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !52
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !52
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !52
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !52
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !52
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !52
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !52
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !52
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !52
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !52
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !52
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !52
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !52
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !52
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !52
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !52
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !52
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !52
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !52
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !52
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !52
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !52
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !52
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !52
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !52
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !52
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !52
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !52
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !52
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !52
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !52
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !52
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !52
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !52
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !52
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !52
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !52
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !52
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !52
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !52
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !52
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !52
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !52
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !52
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !52
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !52
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !52
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !52
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !52
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !52
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !52
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !52
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !52
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !52
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !52
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !52
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !52
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !52
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !52
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !52
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !52
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !52
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !52
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !52
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !52
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !52
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !52
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !52
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !52
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !52
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !52
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !52
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !52
  %78 = add i64 %77, -8, !mcsema_real_eip !52
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !52
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !52
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74635)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !53
  %84 = and i32 %83, 16, !mcsema_real_eip !53
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !53
  store i1 %85, i1* %AF_val, !mcsema_real_eip !53
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !53
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !53
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !53
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !53
  %89 = and i32 %83, %88, !mcsema_real_eip !53
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !53
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !53
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !53
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !53
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !53
  %96 = zext i32 %82 to i64, !mcsema_real_eip !53
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !53
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !54
  %98 = add i64 %97, -8, !mcsema_real_eip !54
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !54
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !54
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_162(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !55
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !55
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !55
  %XMM15_val = alloca i128, !mcsema_real_eip !55
  %XMM14_val = alloca i128, !mcsema_real_eip !55
  %XMM13_val = alloca i128, !mcsema_real_eip !55
  %XMM12_val = alloca i128, !mcsema_real_eip !55
  %XMM11_val = alloca i128, !mcsema_real_eip !55
  %XMM10_val = alloca i128, !mcsema_real_eip !55
  %XMM9_val = alloca i128, !mcsema_real_eip !55
  %XMM8_val = alloca i128, !mcsema_real_eip !55
  %XMM7_val = alloca i128, !mcsema_real_eip !55
  %XMM6_val = alloca i128, !mcsema_real_eip !55
  %XMM5_val = alloca i128, !mcsema_real_eip !55
  %XMM4_val = alloca i128, !mcsema_real_eip !55
  %XMM3_val = alloca i128, !mcsema_real_eip !55
  %XMM2_val = alloca i128, !mcsema_real_eip !55
  %XMM1_val = alloca i128, !mcsema_real_eip !55
  %XMM0_val = alloca i128, !mcsema_real_eip !55
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !55
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !55
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !55
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !55
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !55
  %FPU_IM_val = alloca i1, !mcsema_real_eip !55
  %FPU_DM_val = alloca i1, !mcsema_real_eip !55
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !55
  %FPU_OM_val = alloca i1, !mcsema_real_eip !55
  %FPU_UM_val = alloca i1, !mcsema_real_eip !55
  %FPU_PM_val = alloca i1, !mcsema_real_eip !55
  %FPU_PC_val = alloca i2, !mcsema_real_eip !55
  %FPU_RC_val = alloca i2, !mcsema_real_eip !55
  %FPU_X_val = alloca i1, !mcsema_real_eip !55
  %FPU_IE_val = alloca i1, !mcsema_real_eip !55
  %FPU_DE_val = alloca i1, !mcsema_real_eip !55
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !55
  %FPU_OE_val = alloca i1, !mcsema_real_eip !55
  %FPU_UE_val = alloca i1, !mcsema_real_eip !55
  %FPU_PE_val = alloca i1, !mcsema_real_eip !55
  %FPU_SF_val = alloca i1, !mcsema_real_eip !55
  %FPU_ES_val = alloca i1, !mcsema_real_eip !55
  %FPU_C0_val = alloca i1, !mcsema_real_eip !55
  %FPU_C1_val = alloca i1, !mcsema_real_eip !55
  %FPU_C2_val = alloca i1, !mcsema_real_eip !55
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !55
  %FPU_C3_val = alloca i1, !mcsema_real_eip !55
  %FPU_B_val = alloca i1, !mcsema_real_eip !55
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !55
  %DF_val = alloca i1, !mcsema_real_eip !55
  %OF_val = alloca i1, !mcsema_real_eip !55
  %SF_val = alloca i1, !mcsema_real_eip !55
  %CF_val = alloca i1, !mcsema_real_eip !55
  %AF_val = alloca i1, !mcsema_real_eip !55
  %PF_val = alloca i1, !mcsema_real_eip !55
  %ZF_val = alloca i1, !mcsema_real_eip !55
  %RIP_val = alloca i64, !mcsema_real_eip !55
  %R14_val = alloca i64, !mcsema_real_eip !55
  %R13_val = alloca i64, !mcsema_real_eip !55
  %R12_val = alloca i64, !mcsema_real_eip !55
  %R11_val = alloca i64, !mcsema_real_eip !55
  %R10_val = alloca i64, !mcsema_real_eip !55
  %R9_val = alloca i64, !mcsema_real_eip !55
  %R8_val = alloca i64, !mcsema_real_eip !55
  %RSP_val = alloca i64, !mcsema_real_eip !55
  %RBP_val = alloca i64, !mcsema_real_eip !55
  %RDI_val = alloca i64, !mcsema_real_eip !55
  %RSI_val = alloca i64, !mcsema_real_eip !55
  %RDX_val = alloca i64, !mcsema_real_eip !55
  %RCX_val = alloca i64, !mcsema_real_eip !55
  %RBX_val = alloca i64, !mcsema_real_eip !55
  %RAX_val = alloca i64, !mcsema_real_eip !55
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !55
  %1 = load i64, i64* %RAX, !mcsema_real_eip !55
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !55
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !55
  %2 = load i64, i64* %RBX, !mcsema_real_eip !55
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !55
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !55
  %3 = load i64, i64* %RCX, !mcsema_real_eip !55
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !55
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !55
  %4 = load i64, i64* %RDX, !mcsema_real_eip !55
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !55
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !55
  %5 = load i64, i64* %RSI, !mcsema_real_eip !55
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !55
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !55
  %6 = load i64, i64* %RDI, !mcsema_real_eip !55
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !55
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !55
  %7 = load i64, i64* %RSP, !mcsema_real_eip !55
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !55
  %8 = load i64, i64* %RBP, !mcsema_real_eip !55
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !55
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !55
  %9 = load i64, i64* %R8, !mcsema_real_eip !55
  store i64 %9, i64* %R8_val, !mcsema_real_eip !55
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !55
  %10 = load i64, i64* %R9, !mcsema_real_eip !55
  store i64 %10, i64* %R9_val, !mcsema_real_eip !55
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !55
  %11 = load i64, i64* %R10, !mcsema_real_eip !55
  store i64 %11, i64* %R10_val, !mcsema_real_eip !55
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !55
  %12 = load i64, i64* %R11, !mcsema_real_eip !55
  store i64 %12, i64* %R11_val, !mcsema_real_eip !55
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !55
  %13 = load i64, i64* %R12, !mcsema_real_eip !55
  store i64 %13, i64* %R12_val, !mcsema_real_eip !55
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !55
  %14 = load i64, i64* %R13, !mcsema_real_eip !55
  store i64 %14, i64* %R13_val, !mcsema_real_eip !55
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !55
  %15 = load i64, i64* %R14, !mcsema_real_eip !55
  store i64 %15, i64* %R14_val, !mcsema_real_eip !55
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !55
  %16 = load i64, i64* %R15, !mcsema_real_eip !55
  store i64 %16, i64* %R15_val, !mcsema_real_eip !55
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !55
  %17 = load i64, i64* %RIP, !mcsema_real_eip !55
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !55
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !55
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !55
  store i1 %18, i1* %CF_val, !mcsema_real_eip !55
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !55
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !55
  store i1 %19, i1* %PF_val, !mcsema_real_eip !55
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !55
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !55
  store i1 %20, i1* %AF_val, !mcsema_real_eip !55
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !55
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !55
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !55
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !55
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !55
  store i1 %22, i1* %SF_val, !mcsema_real_eip !55
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !55
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !55
  store i1 %23, i1* %OF_val, !mcsema_real_eip !55
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !55
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !55
  store i1 %24, i1* %DF_val, !mcsema_real_eip !55
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !55
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !55
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !55
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !55
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !55
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !55
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !55
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !55
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !55
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !55
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !55
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !55
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !55
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !55
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !55
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !55
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !55
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !55
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !55
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !55
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !55
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !55
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !55
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !55
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !55
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !55
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !55
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !55
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !55
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !55
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !55
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !55
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !55
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !55
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !55
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !55
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !55
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !55
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !55
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !55
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !55
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !55
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !55
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !55
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !55
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !55
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !55
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !55
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !55
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !55
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !55
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !55
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !55
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !55
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !55
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !55
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !55
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !55
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !55
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !55
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !55
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !55
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !55
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !55
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !55
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !55
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !55
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !55
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !55
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !55
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !55
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !55
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !55
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !55
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !55
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !55
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !55
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !55
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !55
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !55
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !55
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !55
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !55
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !55
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !55
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !55
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !55
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !55
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !55
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !55
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !55
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !55
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !55
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !55
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !55
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !55
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !55
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !55
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !55
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !55
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !55
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !55
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !55
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !55
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !55
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !55
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !55
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !55
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !55
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !55
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !55
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !55
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !55
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !55
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !55
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !55
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !55
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !55
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !55
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !55
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !55
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !55
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !55
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !55
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !55
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !55
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !55
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !55
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !55
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !55
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !55
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !55
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !55
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !55
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !55
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !55
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !55
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !55
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !55
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !55
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !55
  %78 = add i64 %77, -8, !mcsema_real_eip !55
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !55
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !55
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74636)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !56
  %84 = and i32 %83, 16, !mcsema_real_eip !56
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !56
  store i1 %85, i1* %AF_val, !mcsema_real_eip !56
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !56
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !56
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !56
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !56
  %89 = and i32 %83, %88, !mcsema_real_eip !56
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !56
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !56
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !56
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !56
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !56
  %96 = zext i32 %82 to i64, !mcsema_real_eip !56
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !56
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !57
  %98 = add i64 %97, -8, !mcsema_real_eip !57
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !57
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !57
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_172(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !58
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !58
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !58
  %XMM15_val = alloca i128, !mcsema_real_eip !58
  %XMM14_val = alloca i128, !mcsema_real_eip !58
  %XMM13_val = alloca i128, !mcsema_real_eip !58
  %XMM12_val = alloca i128, !mcsema_real_eip !58
  %XMM11_val = alloca i128, !mcsema_real_eip !58
  %XMM10_val = alloca i128, !mcsema_real_eip !58
  %XMM9_val = alloca i128, !mcsema_real_eip !58
  %XMM8_val = alloca i128, !mcsema_real_eip !58
  %XMM7_val = alloca i128, !mcsema_real_eip !58
  %XMM6_val = alloca i128, !mcsema_real_eip !58
  %XMM5_val = alloca i128, !mcsema_real_eip !58
  %XMM4_val = alloca i128, !mcsema_real_eip !58
  %XMM3_val = alloca i128, !mcsema_real_eip !58
  %XMM2_val = alloca i128, !mcsema_real_eip !58
  %XMM1_val = alloca i128, !mcsema_real_eip !58
  %XMM0_val = alloca i128, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !58
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !58
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !58
  %FPU_IM_val = alloca i1, !mcsema_real_eip !58
  %FPU_DM_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !58
  %FPU_OM_val = alloca i1, !mcsema_real_eip !58
  %FPU_UM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PM_val = alloca i1, !mcsema_real_eip !58
  %FPU_PC_val = alloca i2, !mcsema_real_eip !58
  %FPU_RC_val = alloca i2, !mcsema_real_eip !58
  %FPU_X_val = alloca i1, !mcsema_real_eip !58
  %FPU_IE_val = alloca i1, !mcsema_real_eip !58
  %FPU_DE_val = alloca i1, !mcsema_real_eip !58
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !58
  %FPU_OE_val = alloca i1, !mcsema_real_eip !58
  %FPU_UE_val = alloca i1, !mcsema_real_eip !58
  %FPU_PE_val = alloca i1, !mcsema_real_eip !58
  %FPU_SF_val = alloca i1, !mcsema_real_eip !58
  %FPU_ES_val = alloca i1, !mcsema_real_eip !58
  %FPU_C0_val = alloca i1, !mcsema_real_eip !58
  %FPU_C1_val = alloca i1, !mcsema_real_eip !58
  %FPU_C2_val = alloca i1, !mcsema_real_eip !58
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !58
  %FPU_C3_val = alloca i1, !mcsema_real_eip !58
  %FPU_B_val = alloca i1, !mcsema_real_eip !58
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !58
  %DF_val = alloca i1, !mcsema_real_eip !58
  %OF_val = alloca i1, !mcsema_real_eip !58
  %SF_val = alloca i1, !mcsema_real_eip !58
  %CF_val = alloca i1, !mcsema_real_eip !58
  %AF_val = alloca i1, !mcsema_real_eip !58
  %PF_val = alloca i1, !mcsema_real_eip !58
  %ZF_val = alloca i1, !mcsema_real_eip !58
  %RIP_val = alloca i64, !mcsema_real_eip !58
  %R14_val = alloca i64, !mcsema_real_eip !58
  %R13_val = alloca i64, !mcsema_real_eip !58
  %R12_val = alloca i64, !mcsema_real_eip !58
  %R11_val = alloca i64, !mcsema_real_eip !58
  %R10_val = alloca i64, !mcsema_real_eip !58
  %R9_val = alloca i64, !mcsema_real_eip !58
  %R8_val = alloca i64, !mcsema_real_eip !58
  %RSP_val = alloca i64, !mcsema_real_eip !58
  %RBP_val = alloca i64, !mcsema_real_eip !58
  %RDI_val = alloca i64, !mcsema_real_eip !58
  %RSI_val = alloca i64, !mcsema_real_eip !58
  %RDX_val = alloca i64, !mcsema_real_eip !58
  %RCX_val = alloca i64, !mcsema_real_eip !58
  %RBX_val = alloca i64, !mcsema_real_eip !58
  %RAX_val = alloca i64, !mcsema_real_eip !58
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !58
  %1 = load i64, i64* %RAX, !mcsema_real_eip !58
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !58
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !58
  %2 = load i64, i64* %RBX, !mcsema_real_eip !58
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !58
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !58
  %3 = load i64, i64* %RCX, !mcsema_real_eip !58
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !58
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !58
  %4 = load i64, i64* %RDX, !mcsema_real_eip !58
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !58
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !58
  %5 = load i64, i64* %RSI, !mcsema_real_eip !58
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !58
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !58
  %6 = load i64, i64* %RDI, !mcsema_real_eip !58
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !58
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !58
  %7 = load i64, i64* %RSP, !mcsema_real_eip !58
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !58
  %8 = load i64, i64* %RBP, !mcsema_real_eip !58
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !58
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !58
  %9 = load i64, i64* %R8, !mcsema_real_eip !58
  store i64 %9, i64* %R8_val, !mcsema_real_eip !58
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !58
  %10 = load i64, i64* %R9, !mcsema_real_eip !58
  store i64 %10, i64* %R9_val, !mcsema_real_eip !58
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !58
  %11 = load i64, i64* %R10, !mcsema_real_eip !58
  store i64 %11, i64* %R10_val, !mcsema_real_eip !58
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !58
  %12 = load i64, i64* %R11, !mcsema_real_eip !58
  store i64 %12, i64* %R11_val, !mcsema_real_eip !58
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !58
  %13 = load i64, i64* %R12, !mcsema_real_eip !58
  store i64 %13, i64* %R12_val, !mcsema_real_eip !58
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !58
  %14 = load i64, i64* %R13, !mcsema_real_eip !58
  store i64 %14, i64* %R13_val, !mcsema_real_eip !58
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !58
  %15 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %15, i64* %R14_val, !mcsema_real_eip !58
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !58
  %16 = load i64, i64* %R15, !mcsema_real_eip !58
  store i64 %16, i64* %R15_val, !mcsema_real_eip !58
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !58
  %17 = load i64, i64* %RIP, !mcsema_real_eip !58
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !58
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !58
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !58
  store i1 %18, i1* %CF_val, !mcsema_real_eip !58
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !58
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !58
  store i1 %19, i1* %PF_val, !mcsema_real_eip !58
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !58
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !58
  store i1 %20, i1* %AF_val, !mcsema_real_eip !58
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !58
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !58
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !58
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !58
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !58
  store i1 %22, i1* %SF_val, !mcsema_real_eip !58
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !58
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !58
  store i1 %23, i1* %OF_val, !mcsema_real_eip !58
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !58
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !58
  store i1 %24, i1* %DF_val, !mcsema_real_eip !58
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !58
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !58
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !58
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !58
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !58
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !58
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !58
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !58
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !58
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !58
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !58
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !58
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !58
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !58
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !58
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !58
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !58
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !58
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !58
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !58
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !58
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !58
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !58
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !58
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !58
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !58
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !58
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !58
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !58
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !58
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !58
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !58
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !58
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !58
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !58
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !58
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !58
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !58
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !58
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !58
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !58
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !58
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !58
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !58
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !58
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !58
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !58
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !58
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !58
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !58
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !58
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !58
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !58
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !58
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !58
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !58
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !58
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !58
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !58
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !58
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !58
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !58
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !58
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !58
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !58
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !58
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !58
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !58
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !58
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !58
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !58
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !58
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !58
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !58
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !58
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !58
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !58
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !58
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !58
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !58
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !58
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !58
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !58
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !58
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !58
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !58
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !58
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !58
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !58
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !58
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !58
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !58
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !58
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !58
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !58
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !58
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !58
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !58
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !58
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !58
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !58
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !58
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !58
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !58
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !58
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !58
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !58
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !58
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !58
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !58
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !58
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !58
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !58
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !58
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !58
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !58
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !58
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !58
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !58
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !58
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !58
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !58
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !58
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !58
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !58
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !58
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !58
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !58
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !58
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !58
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !58
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !58
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !58
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !58
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !58
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !58
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !58
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !58
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !58
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !58
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !58
  %78 = add i64 %77, -8, !mcsema_real_eip !58
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !58
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !58
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74637)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !59
  %84 = and i32 %83, 16, !mcsema_real_eip !59
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !59
  store i1 %85, i1* %AF_val, !mcsema_real_eip !59
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !59
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !59
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !59
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !59
  %89 = and i32 %83, %88, !mcsema_real_eip !59
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !59
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !59
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !59
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !59
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !59
  %96 = zext i32 %82 to i64, !mcsema_real_eip !59
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !59
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !60
  %98 = add i64 %97, -8, !mcsema_real_eip !60
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !60
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !60
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1d2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !22
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !22
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !22
  %XMM15_val = alloca i128, !mcsema_real_eip !22
  %XMM14_val = alloca i128, !mcsema_real_eip !22
  %XMM13_val = alloca i128, !mcsema_real_eip !22
  %XMM12_val = alloca i128, !mcsema_real_eip !22
  %XMM11_val = alloca i128, !mcsema_real_eip !22
  %XMM10_val = alloca i128, !mcsema_real_eip !22
  %XMM9_val = alloca i128, !mcsema_real_eip !22
  %XMM8_val = alloca i128, !mcsema_real_eip !22
  %XMM7_val = alloca i128, !mcsema_real_eip !22
  %XMM6_val = alloca i128, !mcsema_real_eip !22
  %XMM5_val = alloca i128, !mcsema_real_eip !22
  %XMM4_val = alloca i128, !mcsema_real_eip !22
  %XMM3_val = alloca i128, !mcsema_real_eip !22
  %XMM2_val = alloca i128, !mcsema_real_eip !22
  %XMM1_val = alloca i128, !mcsema_real_eip !22
  %XMM0_val = alloca i128, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !22
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !22
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !22
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !22
  %FPU_IM_val = alloca i1, !mcsema_real_eip !22
  %FPU_DM_val = alloca i1, !mcsema_real_eip !22
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !22
  %FPU_OM_val = alloca i1, !mcsema_real_eip !22
  %FPU_UM_val = alloca i1, !mcsema_real_eip !22
  %FPU_PM_val = alloca i1, !mcsema_real_eip !22
  %FPU_PC_val = alloca i2, !mcsema_real_eip !22
  %FPU_RC_val = alloca i2, !mcsema_real_eip !22
  %FPU_X_val = alloca i1, !mcsema_real_eip !22
  %FPU_IE_val = alloca i1, !mcsema_real_eip !22
  %FPU_DE_val = alloca i1, !mcsema_real_eip !22
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !22
  %FPU_OE_val = alloca i1, !mcsema_real_eip !22
  %FPU_UE_val = alloca i1, !mcsema_real_eip !22
  %FPU_PE_val = alloca i1, !mcsema_real_eip !22
  %FPU_SF_val = alloca i1, !mcsema_real_eip !22
  %FPU_ES_val = alloca i1, !mcsema_real_eip !22
  %FPU_C0_val = alloca i1, !mcsema_real_eip !22
  %FPU_C1_val = alloca i1, !mcsema_real_eip !22
  %FPU_C2_val = alloca i1, !mcsema_real_eip !22
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !22
  %FPU_C3_val = alloca i1, !mcsema_real_eip !22
  %FPU_B_val = alloca i1, !mcsema_real_eip !22
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !22
  %DF_val = alloca i1, !mcsema_real_eip !22
  %OF_val = alloca i1, !mcsema_real_eip !22
  %SF_val = alloca i1, !mcsema_real_eip !22
  %CF_val = alloca i1, !mcsema_real_eip !22
  %AF_val = alloca i1, !mcsema_real_eip !22
  %PF_val = alloca i1, !mcsema_real_eip !22
  %ZF_val = alloca i1, !mcsema_real_eip !22
  %RIP_val = alloca i64, !mcsema_real_eip !22
  %R14_val = alloca i64, !mcsema_real_eip !22
  %R13_val = alloca i64, !mcsema_real_eip !22
  %R12_val = alloca i64, !mcsema_real_eip !22
  %R11_val = alloca i64, !mcsema_real_eip !22
  %R10_val = alloca i64, !mcsema_real_eip !22
  %R9_val = alloca i64, !mcsema_real_eip !22
  %R8_val = alloca i64, !mcsema_real_eip !22
  %RSP_val = alloca i64, !mcsema_real_eip !22
  %RBP_val = alloca i64, !mcsema_real_eip !22
  %RDI_val = alloca i64, !mcsema_real_eip !22
  %RSI_val = alloca i64, !mcsema_real_eip !22
  %RDX_val = alloca i64, !mcsema_real_eip !22
  %RCX_val = alloca i64, !mcsema_real_eip !22
  %RBX_val = alloca i64, !mcsema_real_eip !22
  %RAX_val = alloca i64, !mcsema_real_eip !22
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !22
  %1 = load i64, i64* %RAX, !mcsema_real_eip !22
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !22
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !22
  %2 = load i64, i64* %RBX, !mcsema_real_eip !22
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !22
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !22
  %3 = load i64, i64* %RCX, !mcsema_real_eip !22
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !22
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !22
  %4 = load i64, i64* %RDX, !mcsema_real_eip !22
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !22
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !22
  %5 = load i64, i64* %RSI, !mcsema_real_eip !22
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !22
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !22
  %6 = load i64, i64* %RDI, !mcsema_real_eip !22
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !22
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !22
  %7 = load i64, i64* %RSP, !mcsema_real_eip !22
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !22
  %8 = load i64, i64* %RBP, !mcsema_real_eip !22
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !22
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !22
  %9 = load i64, i64* %R8, !mcsema_real_eip !22
  store i64 %9, i64* %R8_val, !mcsema_real_eip !22
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !22
  %10 = load i64, i64* %R9, !mcsema_real_eip !22
  store i64 %10, i64* %R9_val, !mcsema_real_eip !22
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !22
  %11 = load i64, i64* %R10, !mcsema_real_eip !22
  store i64 %11, i64* %R10_val, !mcsema_real_eip !22
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !22
  %12 = load i64, i64* %R11, !mcsema_real_eip !22
  store i64 %12, i64* %R11_val, !mcsema_real_eip !22
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !22
  %13 = load i64, i64* %R12, !mcsema_real_eip !22
  store i64 %13, i64* %R12_val, !mcsema_real_eip !22
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !22
  %14 = load i64, i64* %R13, !mcsema_real_eip !22
  store i64 %14, i64* %R13_val, !mcsema_real_eip !22
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !22
  %15 = load i64, i64* %R14, !mcsema_real_eip !22
  store i64 %15, i64* %R14_val, !mcsema_real_eip !22
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !22
  %16 = load i64, i64* %R15, !mcsema_real_eip !22
  store i64 %16, i64* %R15_val, !mcsema_real_eip !22
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !22
  %17 = load i64, i64* %RIP, !mcsema_real_eip !22
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !22
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !22
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %18, i1* %CF_val, !mcsema_real_eip !22
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !22
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %19, i1* %PF_val, !mcsema_real_eip !22
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !22
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %20, i1* %AF_val, !mcsema_real_eip !22
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !22
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !22
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !22
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %SF_val, !mcsema_real_eip !22
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !22
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %OF_val, !mcsema_real_eip !22
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !22
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %DF_val, !mcsema_real_eip !22
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !22
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !22
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !22
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !22
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !22
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !22
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !22
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !22
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !22
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !22
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !22
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !22
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !22
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !22
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !22
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !22
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !22
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !22
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !22
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !22
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !22
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !22
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !22
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !22
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !22
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !22
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !22
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !22
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !22
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !22
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !22
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !22
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !22
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !22
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !22
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !22
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !22
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !22
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !22
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !22
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !22
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !22
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !22
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !22
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !22
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !22
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !22
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !22
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !22
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !22
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !22
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !22
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !22
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !22
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !22
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !22
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !22
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !22
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !22
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !22
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !22
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !22
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !22
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !22
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !22
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !22
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !22
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !22
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !22
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !22
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !22
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !22
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !22
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !22
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !22
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !22
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !22
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !22
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !22
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !22
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !22
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !22
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !22
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !22
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !22
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !22
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !22
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !22
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !22
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !22
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !22
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !22
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !22
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !22
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !22
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !22
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !22
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !22
  %78 = add i64 %77, -8, !mcsema_real_eip !22
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !22
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !22
  %82 = zext i32 %81 to i64, !mcsema_real_eip !22
  store i1 false, i1* %AF_val, !mcsema_real_eip !23
  %83 = icmp slt i32 %81, 0
  store i1 %83, i1* %SF_val, !mcsema_real_eip !23
  %84 = icmp eq i32 %81, 0, !mcsema_real_eip !23
  store i1 %84, i1* %ZF_val, !mcsema_real_eip !23
  store i1 false, i1* %OF_val, !mcsema_real_eip !23
  %85 = trunc i32 %81 to i8, !mcsema_real_eip !23
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !23
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !23
  store i1 false, i1* %CF_val, !mcsema_real_eip !23
  store i64 %82, i64* %RAX_val, !mcsema_real_eip !23
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !24
  %90 = add i64 %89, -8, !mcsema_real_eip !24
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !24
  %92 = bitcast i64* %91 to i32*
  store i32 %81, i32* %92, !mcsema_real_eip !24
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %94 = add i64 %93, -8, !mcsema_real_eip !25
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !25
  %96 = bitcast i64* %95 to i32*
  %97 = load i32, i32* %96, !mcsema_real_eip !25
  %98 = zext i32 %97 to i64, !mcsema_real_eip !25
  store i64 %98, i64* %RAX_val, !mcsema_real_eip !25
  %99 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !26
  %101 = load i64, i64* %100, !mcsema_real_eip !26
  store i64 %101, i64* %RBP_val, !mcsema_real_eip !26
  %102 = add i64 %99, 16, !mcsema_real_eip !27
  store i64 %102, i64* %RSP_val, !mcsema_real_eip !27
  %103 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %103, i64* %RAX, !mcsema_real_eip !27
  %104 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %104, i64* %RBX, !mcsema_real_eip !27
  %105 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %105, i64* %RCX, !mcsema_real_eip !27
  %106 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %106, i64* %RDX, !mcsema_real_eip !27
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %107, i64* %RSI, !mcsema_real_eip !27
  %108 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %108, i64* %RDI, !mcsema_real_eip !27
  %109 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %109, i64* %RSP, !mcsema_real_eip !27
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %110, i64* %RBP, !mcsema_real_eip !27
  %111 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %111, i64* %R8, !mcsema_real_eip !27
  %112 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %112, i64* %R9, !mcsema_real_eip !27
  %113 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %113, i64* %R10, !mcsema_real_eip !27
  %114 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %114, i64* %R11, !mcsema_real_eip !27
  %115 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %115, i64* %R12, !mcsema_real_eip !27
  %116 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %116, i64* %R13, !mcsema_real_eip !27
  %117 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %117, i64* %R14, !mcsema_real_eip !27
  %118 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %118, i64* %R15, !mcsema_real_eip !27
  %119 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %119, i64* %RIP, !mcsema_real_eip !27
  %120 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %120, i1* %CF, align 1, !mcsema_real_eip !27
  %121 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !27
  %122 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !27
  %123 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !27
  %124 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %124, i1* %SF, align 1, !mcsema_real_eip !27
  %125 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %125, i1* %OF, align 1, !mcsema_real_eip !27
  %126 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %126, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %127 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %127, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %128 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %128, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %129 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %129, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %130, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %131, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %132, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %133, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %134, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %137 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %137, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %142 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %142, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %143 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %143, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %150 = load i64, i64* %53, align 4
  store i64 %150, i64* %52, align 4
  %151 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %151, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %152 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %152, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %153 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %153, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %154 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %154, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %155 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %155, i128* %XMM0, align 1, !mcsema_real_eip !27
  %156 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %156, i128* %XMM1, align 1, !mcsema_real_eip !27
  %157 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %157, i128* %XMM2, align 1, !mcsema_real_eip !27
  %158 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %158, i128* %XMM3, align 1, !mcsema_real_eip !27
  %159 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %159, i128* %XMM4, align 1, !mcsema_real_eip !27
  %160 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %160, i128* %XMM5, align 1, !mcsema_real_eip !27
  %161 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %161, i128* %XMM6, align 1, !mcsema_real_eip !27
  %162 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %162, i128* %XMM7, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM8, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM9, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM10, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM11, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM12, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM13, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM14, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM15, align 1, !mcsema_real_eip !27
  %171 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %171, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %172 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %172, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_182(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !61
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !61
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !61
  %XMM15_val = alloca i128, !mcsema_real_eip !61
  %XMM14_val = alloca i128, !mcsema_real_eip !61
  %XMM13_val = alloca i128, !mcsema_real_eip !61
  %XMM12_val = alloca i128, !mcsema_real_eip !61
  %XMM11_val = alloca i128, !mcsema_real_eip !61
  %XMM10_val = alloca i128, !mcsema_real_eip !61
  %XMM9_val = alloca i128, !mcsema_real_eip !61
  %XMM8_val = alloca i128, !mcsema_real_eip !61
  %XMM7_val = alloca i128, !mcsema_real_eip !61
  %XMM6_val = alloca i128, !mcsema_real_eip !61
  %XMM5_val = alloca i128, !mcsema_real_eip !61
  %XMM4_val = alloca i128, !mcsema_real_eip !61
  %XMM3_val = alloca i128, !mcsema_real_eip !61
  %XMM2_val = alloca i128, !mcsema_real_eip !61
  %XMM1_val = alloca i128, !mcsema_real_eip !61
  %XMM0_val = alloca i128, !mcsema_real_eip !61
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !61
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !61
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !61
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !61
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !61
  %FPU_IM_val = alloca i1, !mcsema_real_eip !61
  %FPU_DM_val = alloca i1, !mcsema_real_eip !61
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !61
  %FPU_OM_val = alloca i1, !mcsema_real_eip !61
  %FPU_UM_val = alloca i1, !mcsema_real_eip !61
  %FPU_PM_val = alloca i1, !mcsema_real_eip !61
  %FPU_PC_val = alloca i2, !mcsema_real_eip !61
  %FPU_RC_val = alloca i2, !mcsema_real_eip !61
  %FPU_X_val = alloca i1, !mcsema_real_eip !61
  %FPU_IE_val = alloca i1, !mcsema_real_eip !61
  %FPU_DE_val = alloca i1, !mcsema_real_eip !61
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !61
  %FPU_OE_val = alloca i1, !mcsema_real_eip !61
  %FPU_UE_val = alloca i1, !mcsema_real_eip !61
  %FPU_PE_val = alloca i1, !mcsema_real_eip !61
  %FPU_SF_val = alloca i1, !mcsema_real_eip !61
  %FPU_ES_val = alloca i1, !mcsema_real_eip !61
  %FPU_C0_val = alloca i1, !mcsema_real_eip !61
  %FPU_C1_val = alloca i1, !mcsema_real_eip !61
  %FPU_C2_val = alloca i1, !mcsema_real_eip !61
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !61
  %FPU_C3_val = alloca i1, !mcsema_real_eip !61
  %FPU_B_val = alloca i1, !mcsema_real_eip !61
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !61
  %DF_val = alloca i1, !mcsema_real_eip !61
  %OF_val = alloca i1, !mcsema_real_eip !61
  %SF_val = alloca i1, !mcsema_real_eip !61
  %CF_val = alloca i1, !mcsema_real_eip !61
  %AF_val = alloca i1, !mcsema_real_eip !61
  %PF_val = alloca i1, !mcsema_real_eip !61
  %ZF_val = alloca i1, !mcsema_real_eip !61
  %RIP_val = alloca i64, !mcsema_real_eip !61
  %R14_val = alloca i64, !mcsema_real_eip !61
  %R13_val = alloca i64, !mcsema_real_eip !61
  %R12_val = alloca i64, !mcsema_real_eip !61
  %R11_val = alloca i64, !mcsema_real_eip !61
  %R10_val = alloca i64, !mcsema_real_eip !61
  %R9_val = alloca i64, !mcsema_real_eip !61
  %R8_val = alloca i64, !mcsema_real_eip !61
  %RSP_val = alloca i64, !mcsema_real_eip !61
  %RBP_val = alloca i64, !mcsema_real_eip !61
  %RDI_val = alloca i64, !mcsema_real_eip !61
  %RSI_val = alloca i64, !mcsema_real_eip !61
  %RDX_val = alloca i64, !mcsema_real_eip !61
  %RCX_val = alloca i64, !mcsema_real_eip !61
  %RBX_val = alloca i64, !mcsema_real_eip !61
  %RAX_val = alloca i64, !mcsema_real_eip !61
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !61
  %1 = load i64, i64* %RAX, !mcsema_real_eip !61
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !61
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !61
  %2 = load i64, i64* %RBX, !mcsema_real_eip !61
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !61
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !61
  %3 = load i64, i64* %RCX, !mcsema_real_eip !61
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !61
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !61
  %4 = load i64, i64* %RDX, !mcsema_real_eip !61
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !61
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !61
  %5 = load i64, i64* %RSI, !mcsema_real_eip !61
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !61
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !61
  %6 = load i64, i64* %RDI, !mcsema_real_eip !61
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !61
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !61
  %7 = load i64, i64* %RSP, !mcsema_real_eip !61
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !61
  %8 = load i64, i64* %RBP, !mcsema_real_eip !61
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !61
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !61
  %9 = load i64, i64* %R8, !mcsema_real_eip !61
  store i64 %9, i64* %R8_val, !mcsema_real_eip !61
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !61
  %10 = load i64, i64* %R9, !mcsema_real_eip !61
  store i64 %10, i64* %R9_val, !mcsema_real_eip !61
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !61
  %11 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %11, i64* %R10_val, !mcsema_real_eip !61
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !61
  %12 = load i64, i64* %R11, !mcsema_real_eip !61
  store i64 %12, i64* %R11_val, !mcsema_real_eip !61
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !61
  %13 = load i64, i64* %R12, !mcsema_real_eip !61
  store i64 %13, i64* %R12_val, !mcsema_real_eip !61
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !61
  %14 = load i64, i64* %R13, !mcsema_real_eip !61
  store i64 %14, i64* %R13_val, !mcsema_real_eip !61
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !61
  %15 = load i64, i64* %R14, !mcsema_real_eip !61
  store i64 %15, i64* %R14_val, !mcsema_real_eip !61
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !61
  %16 = load i64, i64* %R15, !mcsema_real_eip !61
  store i64 %16, i64* %R15_val, !mcsema_real_eip !61
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !61
  %17 = load i64, i64* %RIP, !mcsema_real_eip !61
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !61
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !61
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !61
  store i1 %18, i1* %CF_val, !mcsema_real_eip !61
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !61
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !61
  store i1 %19, i1* %PF_val, !mcsema_real_eip !61
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !61
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !61
  store i1 %20, i1* %AF_val, !mcsema_real_eip !61
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !61
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !61
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !61
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !61
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !61
  store i1 %22, i1* %SF_val, !mcsema_real_eip !61
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !61
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !61
  store i1 %23, i1* %OF_val, !mcsema_real_eip !61
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !61
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !61
  store i1 %24, i1* %DF_val, !mcsema_real_eip !61
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !61
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !61
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !61
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !61
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !61
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !61
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !61
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !61
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !61
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !61
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !61
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !61
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !61
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !61
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !61
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !61
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !61
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !61
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !61
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !61
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !61
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !61
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !61
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !61
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !61
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !61
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !61
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !61
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !61
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !61
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !61
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !61
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !61
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !61
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !61
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !61
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !61
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !61
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !61
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !61
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !61
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !61
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !61
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !61
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !61
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !61
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !61
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !61
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !61
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !61
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !61
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !61
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !61
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !61
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !61
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !61
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !61
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !61
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !61
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !61
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !61
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !61
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !61
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !61
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !61
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !61
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !61
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !61
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !61
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !61
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !61
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !61
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !61
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !61
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !61
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !61
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !61
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !61
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !61
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !61
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !61
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !61
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !61
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !61
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !61
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !61
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !61
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !61
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !61
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !61
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !61
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !61
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !61
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !61
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !61
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !61
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !61
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !61
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !61
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !61
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !61
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !61
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !61
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !61
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !61
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !61
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !61
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !61
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !61
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !61
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !61
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !61
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !61
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !61
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !61
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !61
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !61
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !61
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !61
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !61
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !61
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !61
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !61
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !61
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !61
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !61
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !61
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !61
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !61
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !61
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !61
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !61
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !61
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !61
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !61
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !61
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !61
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !61
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !61
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !61
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !61
  %78 = add i64 %77, -8, !mcsema_real_eip !61
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !61
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !61
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74639)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !62
  %84 = and i32 %83, 16, !mcsema_real_eip !62
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !62
  store i1 %85, i1* %AF_val, !mcsema_real_eip !62
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !62
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !62
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !62
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !62
  %89 = and i32 %83, %88, !mcsema_real_eip !62
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !62
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !62
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !62
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !62
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !62
  %96 = zext i32 %82 to i64, !mcsema_real_eip !62
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !62
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !63
  %98 = add i64 %97, -8, !mcsema_real_eip !63
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !63
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !63
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_192(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !64
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !64
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !64
  %XMM15_val = alloca i128, !mcsema_real_eip !64
  %XMM14_val = alloca i128, !mcsema_real_eip !64
  %XMM13_val = alloca i128, !mcsema_real_eip !64
  %XMM12_val = alloca i128, !mcsema_real_eip !64
  %XMM11_val = alloca i128, !mcsema_real_eip !64
  %XMM10_val = alloca i128, !mcsema_real_eip !64
  %XMM9_val = alloca i128, !mcsema_real_eip !64
  %XMM8_val = alloca i128, !mcsema_real_eip !64
  %XMM7_val = alloca i128, !mcsema_real_eip !64
  %XMM6_val = alloca i128, !mcsema_real_eip !64
  %XMM5_val = alloca i128, !mcsema_real_eip !64
  %XMM4_val = alloca i128, !mcsema_real_eip !64
  %XMM3_val = alloca i128, !mcsema_real_eip !64
  %XMM2_val = alloca i128, !mcsema_real_eip !64
  %XMM1_val = alloca i128, !mcsema_real_eip !64
  %XMM0_val = alloca i128, !mcsema_real_eip !64
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !64
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !64
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !64
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !64
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !64
  %FPU_IM_val = alloca i1, !mcsema_real_eip !64
  %FPU_DM_val = alloca i1, !mcsema_real_eip !64
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !64
  %FPU_OM_val = alloca i1, !mcsema_real_eip !64
  %FPU_UM_val = alloca i1, !mcsema_real_eip !64
  %FPU_PM_val = alloca i1, !mcsema_real_eip !64
  %FPU_PC_val = alloca i2, !mcsema_real_eip !64
  %FPU_RC_val = alloca i2, !mcsema_real_eip !64
  %FPU_X_val = alloca i1, !mcsema_real_eip !64
  %FPU_IE_val = alloca i1, !mcsema_real_eip !64
  %FPU_DE_val = alloca i1, !mcsema_real_eip !64
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !64
  %FPU_OE_val = alloca i1, !mcsema_real_eip !64
  %FPU_UE_val = alloca i1, !mcsema_real_eip !64
  %FPU_PE_val = alloca i1, !mcsema_real_eip !64
  %FPU_SF_val = alloca i1, !mcsema_real_eip !64
  %FPU_ES_val = alloca i1, !mcsema_real_eip !64
  %FPU_C0_val = alloca i1, !mcsema_real_eip !64
  %FPU_C1_val = alloca i1, !mcsema_real_eip !64
  %FPU_C2_val = alloca i1, !mcsema_real_eip !64
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !64
  %FPU_C3_val = alloca i1, !mcsema_real_eip !64
  %FPU_B_val = alloca i1, !mcsema_real_eip !64
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !64
  %DF_val = alloca i1, !mcsema_real_eip !64
  %OF_val = alloca i1, !mcsema_real_eip !64
  %SF_val = alloca i1, !mcsema_real_eip !64
  %CF_val = alloca i1, !mcsema_real_eip !64
  %AF_val = alloca i1, !mcsema_real_eip !64
  %PF_val = alloca i1, !mcsema_real_eip !64
  %ZF_val = alloca i1, !mcsema_real_eip !64
  %RIP_val = alloca i64, !mcsema_real_eip !64
  %R14_val = alloca i64, !mcsema_real_eip !64
  %R13_val = alloca i64, !mcsema_real_eip !64
  %R12_val = alloca i64, !mcsema_real_eip !64
  %R11_val = alloca i64, !mcsema_real_eip !64
  %R10_val = alloca i64, !mcsema_real_eip !64
  %R9_val = alloca i64, !mcsema_real_eip !64
  %R8_val = alloca i64, !mcsema_real_eip !64
  %RSP_val = alloca i64, !mcsema_real_eip !64
  %RBP_val = alloca i64, !mcsema_real_eip !64
  %RDI_val = alloca i64, !mcsema_real_eip !64
  %RSI_val = alloca i64, !mcsema_real_eip !64
  %RDX_val = alloca i64, !mcsema_real_eip !64
  %RCX_val = alloca i64, !mcsema_real_eip !64
  %RBX_val = alloca i64, !mcsema_real_eip !64
  %RAX_val = alloca i64, !mcsema_real_eip !64
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !64
  %1 = load i64, i64* %RAX, !mcsema_real_eip !64
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !64
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !64
  %2 = load i64, i64* %RBX, !mcsema_real_eip !64
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !64
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !64
  %3 = load i64, i64* %RCX, !mcsema_real_eip !64
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !64
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !64
  %4 = load i64, i64* %RDX, !mcsema_real_eip !64
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !64
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !64
  %5 = load i64, i64* %RSI, !mcsema_real_eip !64
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !64
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !64
  %6 = load i64, i64* %RDI, !mcsema_real_eip !64
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !64
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !64
  %7 = load i64, i64* %RSP, !mcsema_real_eip !64
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !64
  %8 = load i64, i64* %RBP, !mcsema_real_eip !64
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !64
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !64
  %9 = load i64, i64* %R8, !mcsema_real_eip !64
  store i64 %9, i64* %R8_val, !mcsema_real_eip !64
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !64
  %10 = load i64, i64* %R9, !mcsema_real_eip !64
  store i64 %10, i64* %R9_val, !mcsema_real_eip !64
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !64
  %11 = load i64, i64* %R10, !mcsema_real_eip !64
  store i64 %11, i64* %R10_val, !mcsema_real_eip !64
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !64
  %12 = load i64, i64* %R11, !mcsema_real_eip !64
  store i64 %12, i64* %R11_val, !mcsema_real_eip !64
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !64
  %13 = load i64, i64* %R12, !mcsema_real_eip !64
  store i64 %13, i64* %R12_val, !mcsema_real_eip !64
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !64
  %14 = load i64, i64* %R13, !mcsema_real_eip !64
  store i64 %14, i64* %R13_val, !mcsema_real_eip !64
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !64
  %15 = load i64, i64* %R14, !mcsema_real_eip !64
  store i64 %15, i64* %R14_val, !mcsema_real_eip !64
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !64
  %16 = load i64, i64* %R15, !mcsema_real_eip !64
  store i64 %16, i64* %R15_val, !mcsema_real_eip !64
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !64
  %17 = load i64, i64* %RIP, !mcsema_real_eip !64
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !64
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !64
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !64
  store i1 %18, i1* %CF_val, !mcsema_real_eip !64
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !64
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !64
  store i1 %19, i1* %PF_val, !mcsema_real_eip !64
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !64
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !64
  store i1 %20, i1* %AF_val, !mcsema_real_eip !64
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !64
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !64
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !64
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !64
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !64
  store i1 %22, i1* %SF_val, !mcsema_real_eip !64
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !64
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !64
  store i1 %23, i1* %OF_val, !mcsema_real_eip !64
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !64
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !64
  store i1 %24, i1* %DF_val, !mcsema_real_eip !64
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !64
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !64
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !64
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !64
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !64
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !64
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !64
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !64
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !64
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !64
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !64
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !64
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !64
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !64
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !64
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !64
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !64
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !64
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !64
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !64
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !64
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !64
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !64
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !64
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !64
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !64
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !64
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !64
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !64
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !64
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !64
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !64
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !64
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !64
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !64
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !64
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !64
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !64
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !64
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !64
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !64
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !64
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !64
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !64
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !64
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !64
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !64
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !64
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !64
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !64
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !64
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !64
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !64
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !64
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !64
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !64
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !64
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !64
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !64
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !64
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !64
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !64
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !64
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !64
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !64
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !64
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !64
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !64
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !64
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !64
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !64
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !64
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !64
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !64
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !64
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !64
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !64
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !64
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !64
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !64
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !64
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !64
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !64
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !64
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !64
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !64
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !64
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !64
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !64
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !64
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !64
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !64
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !64
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !64
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !64
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !64
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !64
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !64
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !64
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !64
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !64
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !64
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !64
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !64
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !64
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !64
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !64
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !64
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !64
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !64
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !64
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !64
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !64
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !64
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !64
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !64
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !64
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !64
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !64
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !64
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !64
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !64
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !64
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !64
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !64
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !64
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !64
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !64
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !64
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !64
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !64
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !64
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !64
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !64
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !64
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !64
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !64
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !64
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !64
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !64
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !64
  %78 = add i64 %77, -8, !mcsema_real_eip !64
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !64
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !64
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74640)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !65
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !65
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !65
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !65
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !65
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !65
  %89 = and i32 %83, %88, !mcsema_real_eip !65
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !65
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !65
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !65
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !65
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !65
  %96 = zext i32 %82 to i64, !mcsema_real_eip !65
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !65
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !66
  %98 = add i64 %97, -8, !mcsema_real_eip !66
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !66
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !66
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1a2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
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
  %78 = add i64 %77, -8, !mcsema_real_eip !67
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !67
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !67
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74641)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !68
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !68
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !68
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !68
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !68
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !68
  %89 = and i32 %83, %88, !mcsema_real_eip !68
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !68
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !68
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !68
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !68
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !68
  %96 = zext i32 %82 to i64, !mcsema_real_eip !68
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !68
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !69
  %98 = add i64 %97, -8, !mcsema_real_eip !69
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !69
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !69
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1b2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !70
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !70
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !70
  %XMM15_val = alloca i128, !mcsema_real_eip !70
  %XMM14_val = alloca i128, !mcsema_real_eip !70
  %XMM13_val = alloca i128, !mcsema_real_eip !70
  %XMM12_val = alloca i128, !mcsema_real_eip !70
  %XMM11_val = alloca i128, !mcsema_real_eip !70
  %XMM10_val = alloca i128, !mcsema_real_eip !70
  %XMM9_val = alloca i128, !mcsema_real_eip !70
  %XMM8_val = alloca i128, !mcsema_real_eip !70
  %XMM7_val = alloca i128, !mcsema_real_eip !70
  %XMM6_val = alloca i128, !mcsema_real_eip !70
  %XMM5_val = alloca i128, !mcsema_real_eip !70
  %XMM4_val = alloca i128, !mcsema_real_eip !70
  %XMM3_val = alloca i128, !mcsema_real_eip !70
  %XMM2_val = alloca i128, !mcsema_real_eip !70
  %XMM1_val = alloca i128, !mcsema_real_eip !70
  %XMM0_val = alloca i128, !mcsema_real_eip !70
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !70
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !70
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !70
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !70
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !70
  %FPU_IM_val = alloca i1, !mcsema_real_eip !70
  %FPU_DM_val = alloca i1, !mcsema_real_eip !70
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !70
  %FPU_OM_val = alloca i1, !mcsema_real_eip !70
  %FPU_UM_val = alloca i1, !mcsema_real_eip !70
  %FPU_PM_val = alloca i1, !mcsema_real_eip !70
  %FPU_PC_val = alloca i2, !mcsema_real_eip !70
  %FPU_RC_val = alloca i2, !mcsema_real_eip !70
  %FPU_X_val = alloca i1, !mcsema_real_eip !70
  %FPU_IE_val = alloca i1, !mcsema_real_eip !70
  %FPU_DE_val = alloca i1, !mcsema_real_eip !70
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !70
  %FPU_OE_val = alloca i1, !mcsema_real_eip !70
  %FPU_UE_val = alloca i1, !mcsema_real_eip !70
  %FPU_PE_val = alloca i1, !mcsema_real_eip !70
  %FPU_SF_val = alloca i1, !mcsema_real_eip !70
  %FPU_ES_val = alloca i1, !mcsema_real_eip !70
  %FPU_C0_val = alloca i1, !mcsema_real_eip !70
  %FPU_C1_val = alloca i1, !mcsema_real_eip !70
  %FPU_C2_val = alloca i1, !mcsema_real_eip !70
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !70
  %FPU_C3_val = alloca i1, !mcsema_real_eip !70
  %FPU_B_val = alloca i1, !mcsema_real_eip !70
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !70
  %DF_val = alloca i1, !mcsema_real_eip !70
  %OF_val = alloca i1, !mcsema_real_eip !70
  %SF_val = alloca i1, !mcsema_real_eip !70
  %CF_val = alloca i1, !mcsema_real_eip !70
  %AF_val = alloca i1, !mcsema_real_eip !70
  %PF_val = alloca i1, !mcsema_real_eip !70
  %ZF_val = alloca i1, !mcsema_real_eip !70
  %RIP_val = alloca i64, !mcsema_real_eip !70
  %R14_val = alloca i64, !mcsema_real_eip !70
  %R13_val = alloca i64, !mcsema_real_eip !70
  %R12_val = alloca i64, !mcsema_real_eip !70
  %R11_val = alloca i64, !mcsema_real_eip !70
  %R10_val = alloca i64, !mcsema_real_eip !70
  %R9_val = alloca i64, !mcsema_real_eip !70
  %R8_val = alloca i64, !mcsema_real_eip !70
  %RSP_val = alloca i64, !mcsema_real_eip !70
  %RBP_val = alloca i64, !mcsema_real_eip !70
  %RDI_val = alloca i64, !mcsema_real_eip !70
  %RSI_val = alloca i64, !mcsema_real_eip !70
  %RDX_val = alloca i64, !mcsema_real_eip !70
  %RCX_val = alloca i64, !mcsema_real_eip !70
  %RBX_val = alloca i64, !mcsema_real_eip !70
  %RAX_val = alloca i64, !mcsema_real_eip !70
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !70
  %1 = load i64, i64* %RAX, !mcsema_real_eip !70
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !70
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !70
  %2 = load i64, i64* %RBX, !mcsema_real_eip !70
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !70
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !70
  %3 = load i64, i64* %RCX, !mcsema_real_eip !70
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !70
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !70
  %4 = load i64, i64* %RDX, !mcsema_real_eip !70
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !70
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !70
  %5 = load i64, i64* %RSI, !mcsema_real_eip !70
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !70
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !70
  %6 = load i64, i64* %RDI, !mcsema_real_eip !70
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !70
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !70
  %7 = load i64, i64* %RSP, !mcsema_real_eip !70
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !70
  %8 = load i64, i64* %RBP, !mcsema_real_eip !70
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !70
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !70
  %9 = load i64, i64* %R8, !mcsema_real_eip !70
  store i64 %9, i64* %R8_val, !mcsema_real_eip !70
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !70
  %10 = load i64, i64* %R9, !mcsema_real_eip !70
  store i64 %10, i64* %R9_val, !mcsema_real_eip !70
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !70
  %11 = load i64, i64* %R10, !mcsema_real_eip !70
  store i64 %11, i64* %R10_val, !mcsema_real_eip !70
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !70
  %12 = load i64, i64* %R11, !mcsema_real_eip !70
  store i64 %12, i64* %R11_val, !mcsema_real_eip !70
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !70
  %13 = load i64, i64* %R12, !mcsema_real_eip !70
  store i64 %13, i64* %R12_val, !mcsema_real_eip !70
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !70
  %14 = load i64, i64* %R13, !mcsema_real_eip !70
  store i64 %14, i64* %R13_val, !mcsema_real_eip !70
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !70
  %15 = load i64, i64* %R14, !mcsema_real_eip !70
  store i64 %15, i64* %R14_val, !mcsema_real_eip !70
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !70
  %16 = load i64, i64* %R15, !mcsema_real_eip !70
  store i64 %16, i64* %R15_val, !mcsema_real_eip !70
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !70
  %17 = load i64, i64* %RIP, !mcsema_real_eip !70
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !70
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !70
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !70
  store i1 %18, i1* %CF_val, !mcsema_real_eip !70
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !70
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !70
  store i1 %19, i1* %PF_val, !mcsema_real_eip !70
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !70
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !70
  store i1 %20, i1* %AF_val, !mcsema_real_eip !70
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !70
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !70
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !70
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !70
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !70
  store i1 %22, i1* %SF_val, !mcsema_real_eip !70
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !70
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !70
  store i1 %23, i1* %OF_val, !mcsema_real_eip !70
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !70
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !70
  store i1 %24, i1* %DF_val, !mcsema_real_eip !70
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !70
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !70
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !70
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !70
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !70
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !70
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !70
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !70
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !70
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !70
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !70
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !70
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !70
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !70
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !70
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !70
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !70
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !70
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !70
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !70
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !70
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !70
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !70
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !70
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !70
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !70
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !70
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !70
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !70
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !70
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !70
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !70
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !70
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !70
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !70
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !70
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !70
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !70
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !70
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !70
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !70
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !70
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !70
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !70
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !70
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !70
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !70
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !70
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !70
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !70
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !70
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !70
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !70
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !70
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !70
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !70
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !70
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !70
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !70
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !70
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !70
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !70
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !70
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !70
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !70
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !70
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !70
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !70
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !70
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !70
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !70
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !70
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !70
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !70
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !70
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !70
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !70
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !70
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !70
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !70
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !70
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !70
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !70
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !70
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !70
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !70
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !70
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !70
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !70
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !70
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !70
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !70
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !70
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !70
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !70
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !70
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !70
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !70
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !70
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !70
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !70
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !70
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !70
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !70
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !70
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !70
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !70
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !70
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !70
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !70
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !70
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !70
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !70
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !70
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !70
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !70
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !70
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !70
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !70
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !70
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !70
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !70
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !70
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !70
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !70
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !70
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !70
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !70
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !70
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !70
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !70
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !70
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !70
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !70
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !70
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !70
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !70
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !70
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !70
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !70
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !70
  %78 = add i64 %77, -8, !mcsema_real_eip !70
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !70
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !70
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74642)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !71
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !71
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !71
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !71
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !71
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !71
  %89 = and i32 %83, %88, !mcsema_real_eip !71
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !71
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !71
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !71
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !71
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !71
  %96 = zext i32 %82 to i64, !mcsema_real_eip !71
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !71
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !72
  %98 = add i64 %97, -8, !mcsema_real_eip !72
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !72
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !72
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1c2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !73
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !73
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !73
  %XMM15_val = alloca i128, !mcsema_real_eip !73
  %XMM14_val = alloca i128, !mcsema_real_eip !73
  %XMM13_val = alloca i128, !mcsema_real_eip !73
  %XMM12_val = alloca i128, !mcsema_real_eip !73
  %XMM11_val = alloca i128, !mcsema_real_eip !73
  %XMM10_val = alloca i128, !mcsema_real_eip !73
  %XMM9_val = alloca i128, !mcsema_real_eip !73
  %XMM8_val = alloca i128, !mcsema_real_eip !73
  %XMM7_val = alloca i128, !mcsema_real_eip !73
  %XMM6_val = alloca i128, !mcsema_real_eip !73
  %XMM5_val = alloca i128, !mcsema_real_eip !73
  %XMM4_val = alloca i128, !mcsema_real_eip !73
  %XMM3_val = alloca i128, !mcsema_real_eip !73
  %XMM2_val = alloca i128, !mcsema_real_eip !73
  %XMM1_val = alloca i128, !mcsema_real_eip !73
  %XMM0_val = alloca i128, !mcsema_real_eip !73
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !73
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !73
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !73
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !73
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !73
  %FPU_IM_val = alloca i1, !mcsema_real_eip !73
  %FPU_DM_val = alloca i1, !mcsema_real_eip !73
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !73
  %FPU_OM_val = alloca i1, !mcsema_real_eip !73
  %FPU_UM_val = alloca i1, !mcsema_real_eip !73
  %FPU_PM_val = alloca i1, !mcsema_real_eip !73
  %FPU_PC_val = alloca i2, !mcsema_real_eip !73
  %FPU_RC_val = alloca i2, !mcsema_real_eip !73
  %FPU_X_val = alloca i1, !mcsema_real_eip !73
  %FPU_IE_val = alloca i1, !mcsema_real_eip !73
  %FPU_DE_val = alloca i1, !mcsema_real_eip !73
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !73
  %FPU_OE_val = alloca i1, !mcsema_real_eip !73
  %FPU_UE_val = alloca i1, !mcsema_real_eip !73
  %FPU_PE_val = alloca i1, !mcsema_real_eip !73
  %FPU_SF_val = alloca i1, !mcsema_real_eip !73
  %FPU_ES_val = alloca i1, !mcsema_real_eip !73
  %FPU_C0_val = alloca i1, !mcsema_real_eip !73
  %FPU_C1_val = alloca i1, !mcsema_real_eip !73
  %FPU_C2_val = alloca i1, !mcsema_real_eip !73
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !73
  %FPU_C3_val = alloca i1, !mcsema_real_eip !73
  %FPU_B_val = alloca i1, !mcsema_real_eip !73
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !73
  %DF_val = alloca i1, !mcsema_real_eip !73
  %OF_val = alloca i1, !mcsema_real_eip !73
  %SF_val = alloca i1, !mcsema_real_eip !73
  %CF_val = alloca i1, !mcsema_real_eip !73
  %AF_val = alloca i1, !mcsema_real_eip !73
  %PF_val = alloca i1, !mcsema_real_eip !73
  %ZF_val = alloca i1, !mcsema_real_eip !73
  %RIP_val = alloca i64, !mcsema_real_eip !73
  %R14_val = alloca i64, !mcsema_real_eip !73
  %R13_val = alloca i64, !mcsema_real_eip !73
  %R12_val = alloca i64, !mcsema_real_eip !73
  %R11_val = alloca i64, !mcsema_real_eip !73
  %R10_val = alloca i64, !mcsema_real_eip !73
  %R9_val = alloca i64, !mcsema_real_eip !73
  %R8_val = alloca i64, !mcsema_real_eip !73
  %RSP_val = alloca i64, !mcsema_real_eip !73
  %RBP_val = alloca i64, !mcsema_real_eip !73
  %RDI_val = alloca i64, !mcsema_real_eip !73
  %RSI_val = alloca i64, !mcsema_real_eip !73
  %RDX_val = alloca i64, !mcsema_real_eip !73
  %RCX_val = alloca i64, !mcsema_real_eip !73
  %RBX_val = alloca i64, !mcsema_real_eip !73
  %RAX_val = alloca i64, !mcsema_real_eip !73
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !73
  %1 = load i64, i64* %RAX, !mcsema_real_eip !73
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !73
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !73
  %2 = load i64, i64* %RBX, !mcsema_real_eip !73
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !73
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !73
  %3 = load i64, i64* %RCX, !mcsema_real_eip !73
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !73
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !73
  %4 = load i64, i64* %RDX, !mcsema_real_eip !73
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !73
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !73
  %5 = load i64, i64* %RSI, !mcsema_real_eip !73
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !73
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !73
  %6 = load i64, i64* %RDI, !mcsema_real_eip !73
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !73
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !73
  %7 = load i64, i64* %RSP, !mcsema_real_eip !73
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !73
  %8 = load i64, i64* %RBP, !mcsema_real_eip !73
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !73
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !73
  %9 = load i64, i64* %R8, !mcsema_real_eip !73
  store i64 %9, i64* %R8_val, !mcsema_real_eip !73
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !73
  %10 = load i64, i64* %R9, !mcsema_real_eip !73
  store i64 %10, i64* %R9_val, !mcsema_real_eip !73
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !73
  %11 = load i64, i64* %R10, !mcsema_real_eip !73
  store i64 %11, i64* %R10_val, !mcsema_real_eip !73
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !73
  %12 = load i64, i64* %R11, !mcsema_real_eip !73
  store i64 %12, i64* %R11_val, !mcsema_real_eip !73
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !73
  %13 = load i64, i64* %R12, !mcsema_real_eip !73
  store i64 %13, i64* %R12_val, !mcsema_real_eip !73
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !73
  %14 = load i64, i64* %R13, !mcsema_real_eip !73
  store i64 %14, i64* %R13_val, !mcsema_real_eip !73
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !73
  %15 = load i64, i64* %R14, !mcsema_real_eip !73
  store i64 %15, i64* %R14_val, !mcsema_real_eip !73
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !73
  %16 = load i64, i64* %R15, !mcsema_real_eip !73
  store i64 %16, i64* %R15_val, !mcsema_real_eip !73
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !73
  %17 = load i64, i64* %RIP, !mcsema_real_eip !73
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !73
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !73
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !73
  store i1 %18, i1* %CF_val, !mcsema_real_eip !73
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !73
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !73
  store i1 %19, i1* %PF_val, !mcsema_real_eip !73
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !73
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !73
  store i1 %20, i1* %AF_val, !mcsema_real_eip !73
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !73
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !73
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !73
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !73
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !73
  store i1 %22, i1* %SF_val, !mcsema_real_eip !73
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !73
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !73
  store i1 %23, i1* %OF_val, !mcsema_real_eip !73
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !73
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !73
  store i1 %24, i1* %DF_val, !mcsema_real_eip !73
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !73
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !73
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !73
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !73
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !73
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !73
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !73
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !73
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !73
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !73
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !73
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !73
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !73
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !73
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !73
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !73
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !73
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !73
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !73
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !73
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !73
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !73
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !73
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !73
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !73
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !73
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !73
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !73
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !73
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !73
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !73
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !73
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !73
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !73
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !73
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !73
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !73
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !73
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !73
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !73
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !73
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !73
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !73
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !73
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !73
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !73
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !73
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !73
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !73
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !73
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !73
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !73
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !73
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !73
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !73
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !73
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !73
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !73
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !73
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !73
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !73
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !73
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !73
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !73
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !73
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !73
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !73
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !73
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !73
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !73
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !73
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !73
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !73
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !73
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !73
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !73
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !73
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !73
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !73
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !73
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !73
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !73
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !73
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !73
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !73
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !73
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !73
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !73
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !73
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !73
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !73
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !73
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !73
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !73
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !73
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !73
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !73
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !73
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !73
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !73
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !73
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !73
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !73
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !73
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !73
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !73
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !73
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !73
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !73
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !73
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !73
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !73
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !73
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !73
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !73
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !73
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !73
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !73
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !73
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !73
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !73
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !73
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !73
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !73
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !73
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !73
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !73
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !73
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !73
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !73
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !73
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !73
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !73
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !73
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !73
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !73
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !73
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !73
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !73
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !73
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !73
  %78 = add i64 %77, -8, !mcsema_real_eip !73
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !73
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !73
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 74643)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !74
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !74
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !74
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !74
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !74
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !74
  %89 = and i32 %83, %88, !mcsema_real_eip !74
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !74
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !74
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !74
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !74
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !74
  %96 = zext i32 %82 to i64, !mcsema_real_eip !74
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !74
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !75
  %98 = add i64 %97, -8, !mcsema_real_eip !75
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !75
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !75
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_a2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !76
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !76
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !76
  %XMM15_val = alloca i128, !mcsema_real_eip !76
  %XMM14_val = alloca i128, !mcsema_real_eip !76
  %XMM13_val = alloca i128, !mcsema_real_eip !76
  %XMM12_val = alloca i128, !mcsema_real_eip !76
  %XMM11_val = alloca i128, !mcsema_real_eip !76
  %XMM10_val = alloca i128, !mcsema_real_eip !76
  %XMM9_val = alloca i128, !mcsema_real_eip !76
  %XMM8_val = alloca i128, !mcsema_real_eip !76
  %XMM7_val = alloca i128, !mcsema_real_eip !76
  %XMM6_val = alloca i128, !mcsema_real_eip !76
  %XMM5_val = alloca i128, !mcsema_real_eip !76
  %XMM4_val = alloca i128, !mcsema_real_eip !76
  %XMM3_val = alloca i128, !mcsema_real_eip !76
  %XMM2_val = alloca i128, !mcsema_real_eip !76
  %XMM1_val = alloca i128, !mcsema_real_eip !76
  %XMM0_val = alloca i128, !mcsema_real_eip !76
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !76
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !76
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !76
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !76
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !76
  %FPU_IM_val = alloca i1, !mcsema_real_eip !76
  %FPU_DM_val = alloca i1, !mcsema_real_eip !76
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !76
  %FPU_OM_val = alloca i1, !mcsema_real_eip !76
  %FPU_UM_val = alloca i1, !mcsema_real_eip !76
  %FPU_PM_val = alloca i1, !mcsema_real_eip !76
  %FPU_PC_val = alloca i2, !mcsema_real_eip !76
  %FPU_RC_val = alloca i2, !mcsema_real_eip !76
  %FPU_X_val = alloca i1, !mcsema_real_eip !76
  %FPU_IE_val = alloca i1, !mcsema_real_eip !76
  %FPU_DE_val = alloca i1, !mcsema_real_eip !76
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !76
  %FPU_OE_val = alloca i1, !mcsema_real_eip !76
  %FPU_UE_val = alloca i1, !mcsema_real_eip !76
  %FPU_PE_val = alloca i1, !mcsema_real_eip !76
  %FPU_SF_val = alloca i1, !mcsema_real_eip !76
  %FPU_ES_val = alloca i1, !mcsema_real_eip !76
  %FPU_C0_val = alloca i1, !mcsema_real_eip !76
  %FPU_C1_val = alloca i1, !mcsema_real_eip !76
  %FPU_C2_val = alloca i1, !mcsema_real_eip !76
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !76
  %FPU_C3_val = alloca i1, !mcsema_real_eip !76
  %FPU_B_val = alloca i1, !mcsema_real_eip !76
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !76
  %DF_val = alloca i1, !mcsema_real_eip !76
  %OF_val = alloca i1, !mcsema_real_eip !76
  %SF_val = alloca i1, !mcsema_real_eip !76
  %CF_val = alloca i1, !mcsema_real_eip !76
  %AF_val = alloca i1, !mcsema_real_eip !76
  %PF_val = alloca i1, !mcsema_real_eip !76
  %ZF_val = alloca i1, !mcsema_real_eip !76
  %RIP_val = alloca i64, !mcsema_real_eip !76
  %R14_val = alloca i64, !mcsema_real_eip !76
  %R13_val = alloca i64, !mcsema_real_eip !76
  %R12_val = alloca i64, !mcsema_real_eip !76
  %R11_val = alloca i64, !mcsema_real_eip !76
  %R10_val = alloca i64, !mcsema_real_eip !76
  %R9_val = alloca i64, !mcsema_real_eip !76
  %R8_val = alloca i64, !mcsema_real_eip !76
  %RSP_val = alloca i64, !mcsema_real_eip !76
  %RBP_val = alloca i64, !mcsema_real_eip !76
  %RDI_val = alloca i64, !mcsema_real_eip !76
  %RSI_val = alloca i64, !mcsema_real_eip !76
  %RDX_val = alloca i64, !mcsema_real_eip !76
  %RCX_val = alloca i64, !mcsema_real_eip !76
  %RBX_val = alloca i64, !mcsema_real_eip !76
  %RAX_val = alloca i64, !mcsema_real_eip !76
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !76
  %1 = load i64, i64* %RAX, !mcsema_real_eip !76
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !76
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !76
  %2 = load i64, i64* %RBX, !mcsema_real_eip !76
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !76
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !76
  %3 = load i64, i64* %RCX, !mcsema_real_eip !76
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !76
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !76
  %4 = load i64, i64* %RDX, !mcsema_real_eip !76
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !76
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !76
  %5 = load i64, i64* %RSI, !mcsema_real_eip !76
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !76
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !76
  %6 = load i64, i64* %RDI, !mcsema_real_eip !76
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !76
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !76
  %7 = load i64, i64* %RSP, !mcsema_real_eip !76
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !76
  %8 = load i64, i64* %RBP, !mcsema_real_eip !76
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !76
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !76
  %9 = load i64, i64* %R8, !mcsema_real_eip !76
  store i64 %9, i64* %R8_val, !mcsema_real_eip !76
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !76
  %10 = load i64, i64* %R9, !mcsema_real_eip !76
  store i64 %10, i64* %R9_val, !mcsema_real_eip !76
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !76
  %11 = load i64, i64* %R10, !mcsema_real_eip !76
  store i64 %11, i64* %R10_val, !mcsema_real_eip !76
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !76
  %12 = load i64, i64* %R11, !mcsema_real_eip !76
  store i64 %12, i64* %R11_val, !mcsema_real_eip !76
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !76
  %13 = load i64, i64* %R12, !mcsema_real_eip !76
  store i64 %13, i64* %R12_val, !mcsema_real_eip !76
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !76
  %14 = load i64, i64* %R13, !mcsema_real_eip !76
  store i64 %14, i64* %R13_val, !mcsema_real_eip !76
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !76
  %15 = load i64, i64* %R14, !mcsema_real_eip !76
  store i64 %15, i64* %R14_val, !mcsema_real_eip !76
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !76
  %16 = load i64, i64* %R15, !mcsema_real_eip !76
  store i64 %16, i64* %R15_val, !mcsema_real_eip !76
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !76
  %17 = load i64, i64* %RIP, !mcsema_real_eip !76
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !76
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !76
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !76
  store i1 %18, i1* %CF_val, !mcsema_real_eip !76
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !76
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !76
  store i1 %19, i1* %PF_val, !mcsema_real_eip !76
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !76
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !76
  store i1 %20, i1* %AF_val, !mcsema_real_eip !76
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !76
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !76
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !76
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !76
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !76
  store i1 %22, i1* %SF_val, !mcsema_real_eip !76
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !76
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !76
  store i1 %23, i1* %OF_val, !mcsema_real_eip !76
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !76
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !76
  store i1 %24, i1* %DF_val, !mcsema_real_eip !76
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !76
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !76
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !76
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !76
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !76
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !76
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !76
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !76
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !76
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !76
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !76
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !76
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !76
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !76
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !76
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !76
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !76
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !76
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !76
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !76
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !76
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !76
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !76
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !76
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !76
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !76
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !76
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !76
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !76
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !76
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !76
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !76
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !76
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !76
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !76
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !76
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !76
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !76
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !76
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !76
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !76
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !76
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !76
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !76
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !76
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !76
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !76
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !76
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !76
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !76
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !76
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !76
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !76
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !76
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !76
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !76
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !76
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !76
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !76
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !76
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !76
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !76
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !76
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !76
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !76
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !76
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !76
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !76
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !76
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !76
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !76
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !76
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !76
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !76
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !76
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !76
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !76
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !76
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !76
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !76
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !76
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !76
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !76
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !76
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !76
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !76
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !76
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !76
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !76
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !76
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !76
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !76
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !76
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !76
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !76
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !76
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !76
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !76
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !76
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !76
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !76
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !76
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !76
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !76
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !76
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !76
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !76
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !76
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !76
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !76
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !76
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !76
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !76
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !76
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !76
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !76
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !76
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !76
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !76
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !76
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !76
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !76
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !76
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !76
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !76
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !76
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !76
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !76
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !76
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !76
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !76
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !76
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !76
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !76
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !76
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !76
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !76
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !76
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !76
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !76
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !76
  %78 = add i64 %77, -8, !mcsema_real_eip !76
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !76
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !76
  %82 = zext i32 %81 to i64, !mcsema_real_eip !76
  store i1 false, i1* %AF_val, !mcsema_real_eip !77
  %83 = icmp slt i32 %81, 0
  store i1 %83, i1* %SF_val, !mcsema_real_eip !77
  %84 = icmp eq i32 %81, 0, !mcsema_real_eip !77
  store i1 %84, i1* %ZF_val, !mcsema_real_eip !77
  store i1 false, i1* %OF_val, !mcsema_real_eip !77
  %85 = trunc i32 %81 to i8, !mcsema_real_eip !77
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !77
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF_val, !mcsema_real_eip !77
  store i1 false, i1* %CF_val, !mcsema_real_eip !77
  store i64 %82, i64* %RAX_val, !mcsema_real_eip !77
  %89 = load i64, i64* %RBP_val, !mcsema_real_eip !78
  %90 = add i64 %89, -8, !mcsema_real_eip !78
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !78
  %92 = bitcast i64* %91 to i32*
  store i32 %81, i32* %92, !mcsema_real_eip !78
  %93 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %94 = add i64 %93, -8, !mcsema_real_eip !25
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !25
  %96 = bitcast i64* %95 to i32*
  %97 = load i32, i32* %96, !mcsema_real_eip !25
  %98 = zext i32 %97 to i64, !mcsema_real_eip !25
  store i64 %98, i64* %RAX_val, !mcsema_real_eip !25
  %99 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !26
  %101 = load i64, i64* %100, !mcsema_real_eip !26
  store i64 %101, i64* %RBP_val, !mcsema_real_eip !26
  %102 = add i64 %99, 16, !mcsema_real_eip !27
  store i64 %102, i64* %RSP_val, !mcsema_real_eip !27
  %103 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %103, i64* %RAX, !mcsema_real_eip !27
  %104 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %104, i64* %RBX, !mcsema_real_eip !27
  %105 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %105, i64* %RCX, !mcsema_real_eip !27
  %106 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %106, i64* %RDX, !mcsema_real_eip !27
  %107 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %107, i64* %RSI, !mcsema_real_eip !27
  %108 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %108, i64* %RDI, !mcsema_real_eip !27
  %109 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %109, i64* %RSP, !mcsema_real_eip !27
  %110 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %110, i64* %RBP, !mcsema_real_eip !27
  %111 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %111, i64* %R8, !mcsema_real_eip !27
  %112 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %112, i64* %R9, !mcsema_real_eip !27
  %113 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %113, i64* %R10, !mcsema_real_eip !27
  %114 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %114, i64* %R11, !mcsema_real_eip !27
  %115 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %115, i64* %R12, !mcsema_real_eip !27
  %116 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %116, i64* %R13, !mcsema_real_eip !27
  %117 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %117, i64* %R14, !mcsema_real_eip !27
  %118 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %118, i64* %R15, !mcsema_real_eip !27
  %119 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %119, i64* %RIP, !mcsema_real_eip !27
  %120 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %120, i1* %CF, align 1, !mcsema_real_eip !27
  %121 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !27
  %122 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !27
  %123 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !27
  %124 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %124, i1* %SF, align 1, !mcsema_real_eip !27
  %125 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %125, i1* %OF, align 1, !mcsema_real_eip !27
  %126 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %126, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %127 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %127, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %128 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %128, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %129 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %129, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %130, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %131, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %132, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %133, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %134, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %137 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %137, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %142 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %142, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %143 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %143, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %150 = load i64, i64* %53, align 4
  store i64 %150, i64* %52, align 4
  %151 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %151, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %152 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %152, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %153 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %153, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %154 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %154, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %155 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %155, i128* %XMM0, align 1, !mcsema_real_eip !27
  %156 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %156, i128* %XMM1, align 1, !mcsema_real_eip !27
  %157 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %157, i128* %XMM2, align 1, !mcsema_real_eip !27
  %158 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %158, i128* %XMM3, align 1, !mcsema_real_eip !27
  %159 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %159, i128* %XMM4, align 1, !mcsema_real_eip !27
  %160 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %160, i128* %XMM5, align 1, !mcsema_real_eip !27
  %161 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %161, i128* %XMM6, align 1, !mcsema_real_eip !27
  %162 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %162, i128* %XMM7, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM8, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM9, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM10, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM11, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM12, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM13, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM14, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM15, align 1, !mcsema_real_eip !27
  %171 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %171, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %172 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %172, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_b2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !79
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !79
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !79
  %XMM15_val = alloca i128, !mcsema_real_eip !79
  %XMM14_val = alloca i128, !mcsema_real_eip !79
  %XMM13_val = alloca i128, !mcsema_real_eip !79
  %XMM12_val = alloca i128, !mcsema_real_eip !79
  %XMM11_val = alloca i128, !mcsema_real_eip !79
  %XMM10_val = alloca i128, !mcsema_real_eip !79
  %XMM9_val = alloca i128, !mcsema_real_eip !79
  %XMM8_val = alloca i128, !mcsema_real_eip !79
  %XMM7_val = alloca i128, !mcsema_real_eip !79
  %XMM6_val = alloca i128, !mcsema_real_eip !79
  %XMM5_val = alloca i128, !mcsema_real_eip !79
  %XMM4_val = alloca i128, !mcsema_real_eip !79
  %XMM3_val = alloca i128, !mcsema_real_eip !79
  %XMM2_val = alloca i128, !mcsema_real_eip !79
  %XMM1_val = alloca i128, !mcsema_real_eip !79
  %XMM0_val = alloca i128, !mcsema_real_eip !79
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !79
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !79
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !79
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !79
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !79
  %FPU_IM_val = alloca i1, !mcsema_real_eip !79
  %FPU_DM_val = alloca i1, !mcsema_real_eip !79
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !79
  %FPU_OM_val = alloca i1, !mcsema_real_eip !79
  %FPU_UM_val = alloca i1, !mcsema_real_eip !79
  %FPU_PM_val = alloca i1, !mcsema_real_eip !79
  %FPU_PC_val = alloca i2, !mcsema_real_eip !79
  %FPU_RC_val = alloca i2, !mcsema_real_eip !79
  %FPU_X_val = alloca i1, !mcsema_real_eip !79
  %FPU_IE_val = alloca i1, !mcsema_real_eip !79
  %FPU_DE_val = alloca i1, !mcsema_real_eip !79
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !79
  %FPU_OE_val = alloca i1, !mcsema_real_eip !79
  %FPU_UE_val = alloca i1, !mcsema_real_eip !79
  %FPU_PE_val = alloca i1, !mcsema_real_eip !79
  %FPU_SF_val = alloca i1, !mcsema_real_eip !79
  %FPU_ES_val = alloca i1, !mcsema_real_eip !79
  %FPU_C0_val = alloca i1, !mcsema_real_eip !79
  %FPU_C1_val = alloca i1, !mcsema_real_eip !79
  %FPU_C2_val = alloca i1, !mcsema_real_eip !79
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !79
  %FPU_C3_val = alloca i1, !mcsema_real_eip !79
  %FPU_B_val = alloca i1, !mcsema_real_eip !79
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !79
  %DF_val = alloca i1, !mcsema_real_eip !79
  %OF_val = alloca i1, !mcsema_real_eip !79
  %SF_val = alloca i1, !mcsema_real_eip !79
  %CF_val = alloca i1, !mcsema_real_eip !79
  %AF_val = alloca i1, !mcsema_real_eip !79
  %PF_val = alloca i1, !mcsema_real_eip !79
  %ZF_val = alloca i1, !mcsema_real_eip !79
  %RIP_val = alloca i64, !mcsema_real_eip !79
  %R14_val = alloca i64, !mcsema_real_eip !79
  %R13_val = alloca i64, !mcsema_real_eip !79
  %R12_val = alloca i64, !mcsema_real_eip !79
  %R11_val = alloca i64, !mcsema_real_eip !79
  %R10_val = alloca i64, !mcsema_real_eip !79
  %R9_val = alloca i64, !mcsema_real_eip !79
  %R8_val = alloca i64, !mcsema_real_eip !79
  %RSP_val = alloca i64, !mcsema_real_eip !79
  %RBP_val = alloca i64, !mcsema_real_eip !79
  %RDI_val = alloca i64, !mcsema_real_eip !79
  %RSI_val = alloca i64, !mcsema_real_eip !79
  %RDX_val = alloca i64, !mcsema_real_eip !79
  %RCX_val = alloca i64, !mcsema_real_eip !79
  %RBX_val = alloca i64, !mcsema_real_eip !79
  %RAX_val = alloca i64, !mcsema_real_eip !79
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !79
  %1 = load i64, i64* %RAX, !mcsema_real_eip !79
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !79
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !79
  %2 = load i64, i64* %RBX, !mcsema_real_eip !79
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !79
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !79
  %3 = load i64, i64* %RCX, !mcsema_real_eip !79
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !79
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !79
  %4 = load i64, i64* %RDX, !mcsema_real_eip !79
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !79
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !79
  %5 = load i64, i64* %RSI, !mcsema_real_eip !79
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !79
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !79
  %6 = load i64, i64* %RDI, !mcsema_real_eip !79
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !79
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !79
  %7 = load i64, i64* %RSP, !mcsema_real_eip !79
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !79
  %8 = load i64, i64* %RBP, !mcsema_real_eip !79
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !79
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !79
  %9 = load i64, i64* %R8, !mcsema_real_eip !79
  store i64 %9, i64* %R8_val, !mcsema_real_eip !79
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !79
  %10 = load i64, i64* %R9, !mcsema_real_eip !79
  store i64 %10, i64* %R9_val, !mcsema_real_eip !79
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !79
  %11 = load i64, i64* %R10, !mcsema_real_eip !79
  store i64 %11, i64* %R10_val, !mcsema_real_eip !79
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !79
  %12 = load i64, i64* %R11, !mcsema_real_eip !79
  store i64 %12, i64* %R11_val, !mcsema_real_eip !79
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !79
  %13 = load i64, i64* %R12, !mcsema_real_eip !79
  store i64 %13, i64* %R12_val, !mcsema_real_eip !79
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !79
  %14 = load i64, i64* %R13, !mcsema_real_eip !79
  store i64 %14, i64* %R13_val, !mcsema_real_eip !79
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !79
  %15 = load i64, i64* %R14, !mcsema_real_eip !79
  store i64 %15, i64* %R14_val, !mcsema_real_eip !79
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !79
  %16 = load i64, i64* %R15, !mcsema_real_eip !79
  store i64 %16, i64* %R15_val, !mcsema_real_eip !79
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !79
  %17 = load i64, i64* %RIP, !mcsema_real_eip !79
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !79
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !79
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !79
  store i1 %18, i1* %CF_val, !mcsema_real_eip !79
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !79
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !79
  store i1 %19, i1* %PF_val, !mcsema_real_eip !79
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !79
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !79
  store i1 %20, i1* %AF_val, !mcsema_real_eip !79
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !79
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !79
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !79
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !79
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !79
  store i1 %22, i1* %SF_val, !mcsema_real_eip !79
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !79
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !79
  store i1 %23, i1* %OF_val, !mcsema_real_eip !79
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !79
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !79
  store i1 %24, i1* %DF_val, !mcsema_real_eip !79
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !79
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !79
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !79
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !79
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !79
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !79
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !79
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !79
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !79
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !79
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !79
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !79
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !79
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !79
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !79
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !79
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !79
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !79
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !79
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !79
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !79
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !79
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !79
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !79
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !79
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !79
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !79
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !79
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !79
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !79
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !79
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !79
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !79
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !79
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !79
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !79
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !79
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !79
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !79
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !79
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !79
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !79
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !79
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !79
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !79
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !79
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !79
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !79
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !79
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !79
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !79
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !79
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !79
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !79
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !79
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !79
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !79
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !79
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !79
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !79
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !79
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !79
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !79
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !79
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !79
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !79
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !79
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !79
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !79
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !79
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !79
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !79
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !79
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !79
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !79
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !79
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !79
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !79
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !79
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !79
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !79
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !79
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !79
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !79
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !79
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !79
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !79
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !79
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !79
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !79
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !79
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !79
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !79
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !79
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !79
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !79
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !79
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !79
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !79
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !79
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !79
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !79
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !79
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !79
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !79
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !79
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !79
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !79
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !79
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !79
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !79
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !79
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !79
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !79
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !79
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !79
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !79
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !79
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !79
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !79
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !79
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !79
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !79
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !79
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !79
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !79
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !79
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !79
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !79
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !79
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !79
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !79
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !79
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !79
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !79
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !79
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !79
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !79
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !79
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !79
  %78 = add i64 %77, -8, !mcsema_real_eip !79
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !79
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !79
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 1)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !80
  %84 = and i32 %83, 16, !mcsema_real_eip !80
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !80
  store i1 %85, i1* %AF_val, !mcsema_real_eip !80
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !80
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !80
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !80
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !80
  %89 = and i32 %83, %88, !mcsema_real_eip !80
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !80
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !80
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !80
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !80
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !80
  %96 = zext i32 %82 to i64, !mcsema_real_eip !80
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !80
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !81
  %98 = add i64 %97, -8, !mcsema_real_eip !81
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !81
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !81
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_c2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !82
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !82
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !82
  %XMM15_val = alloca i128, !mcsema_real_eip !82
  %XMM14_val = alloca i128, !mcsema_real_eip !82
  %XMM13_val = alloca i128, !mcsema_real_eip !82
  %XMM12_val = alloca i128, !mcsema_real_eip !82
  %XMM11_val = alloca i128, !mcsema_real_eip !82
  %XMM10_val = alloca i128, !mcsema_real_eip !82
  %XMM9_val = alloca i128, !mcsema_real_eip !82
  %XMM8_val = alloca i128, !mcsema_real_eip !82
  %XMM7_val = alloca i128, !mcsema_real_eip !82
  %XMM6_val = alloca i128, !mcsema_real_eip !82
  %XMM5_val = alloca i128, !mcsema_real_eip !82
  %XMM4_val = alloca i128, !mcsema_real_eip !82
  %XMM3_val = alloca i128, !mcsema_real_eip !82
  %XMM2_val = alloca i128, !mcsema_real_eip !82
  %XMM1_val = alloca i128, !mcsema_real_eip !82
  %XMM0_val = alloca i128, !mcsema_real_eip !82
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !82
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !82
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !82
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !82
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !82
  %FPU_IM_val = alloca i1, !mcsema_real_eip !82
  %FPU_DM_val = alloca i1, !mcsema_real_eip !82
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !82
  %FPU_OM_val = alloca i1, !mcsema_real_eip !82
  %FPU_UM_val = alloca i1, !mcsema_real_eip !82
  %FPU_PM_val = alloca i1, !mcsema_real_eip !82
  %FPU_PC_val = alloca i2, !mcsema_real_eip !82
  %FPU_RC_val = alloca i2, !mcsema_real_eip !82
  %FPU_X_val = alloca i1, !mcsema_real_eip !82
  %FPU_IE_val = alloca i1, !mcsema_real_eip !82
  %FPU_DE_val = alloca i1, !mcsema_real_eip !82
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !82
  %FPU_OE_val = alloca i1, !mcsema_real_eip !82
  %FPU_UE_val = alloca i1, !mcsema_real_eip !82
  %FPU_PE_val = alloca i1, !mcsema_real_eip !82
  %FPU_SF_val = alloca i1, !mcsema_real_eip !82
  %FPU_ES_val = alloca i1, !mcsema_real_eip !82
  %FPU_C0_val = alloca i1, !mcsema_real_eip !82
  %FPU_C1_val = alloca i1, !mcsema_real_eip !82
  %FPU_C2_val = alloca i1, !mcsema_real_eip !82
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !82
  %FPU_C3_val = alloca i1, !mcsema_real_eip !82
  %FPU_B_val = alloca i1, !mcsema_real_eip !82
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !82
  %DF_val = alloca i1, !mcsema_real_eip !82
  %OF_val = alloca i1, !mcsema_real_eip !82
  %SF_val = alloca i1, !mcsema_real_eip !82
  %CF_val = alloca i1, !mcsema_real_eip !82
  %AF_val = alloca i1, !mcsema_real_eip !82
  %PF_val = alloca i1, !mcsema_real_eip !82
  %ZF_val = alloca i1, !mcsema_real_eip !82
  %RIP_val = alloca i64, !mcsema_real_eip !82
  %R14_val = alloca i64, !mcsema_real_eip !82
  %R13_val = alloca i64, !mcsema_real_eip !82
  %R12_val = alloca i64, !mcsema_real_eip !82
  %R11_val = alloca i64, !mcsema_real_eip !82
  %R10_val = alloca i64, !mcsema_real_eip !82
  %R9_val = alloca i64, !mcsema_real_eip !82
  %R8_val = alloca i64, !mcsema_real_eip !82
  %RSP_val = alloca i64, !mcsema_real_eip !82
  %RBP_val = alloca i64, !mcsema_real_eip !82
  %RDI_val = alloca i64, !mcsema_real_eip !82
  %RSI_val = alloca i64, !mcsema_real_eip !82
  %RDX_val = alloca i64, !mcsema_real_eip !82
  %RCX_val = alloca i64, !mcsema_real_eip !82
  %RBX_val = alloca i64, !mcsema_real_eip !82
  %RAX_val = alloca i64, !mcsema_real_eip !82
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !82
  %1 = load i64, i64* %RAX, !mcsema_real_eip !82
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !82
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !82
  %2 = load i64, i64* %RBX, !mcsema_real_eip !82
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !82
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !82
  %3 = load i64, i64* %RCX, !mcsema_real_eip !82
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !82
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !82
  %4 = load i64, i64* %RDX, !mcsema_real_eip !82
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !82
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !82
  %5 = load i64, i64* %RSI, !mcsema_real_eip !82
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !82
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !82
  %6 = load i64, i64* %RDI, !mcsema_real_eip !82
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !82
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !82
  %7 = load i64, i64* %RSP, !mcsema_real_eip !82
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !82
  %8 = load i64, i64* %RBP, !mcsema_real_eip !82
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !82
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !82
  %9 = load i64, i64* %R8, !mcsema_real_eip !82
  store i64 %9, i64* %R8_val, !mcsema_real_eip !82
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !82
  %10 = load i64, i64* %R9, !mcsema_real_eip !82
  store i64 %10, i64* %R9_val, !mcsema_real_eip !82
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !82
  %11 = load i64, i64* %R10, !mcsema_real_eip !82
  store i64 %11, i64* %R10_val, !mcsema_real_eip !82
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !82
  %12 = load i64, i64* %R11, !mcsema_real_eip !82
  store i64 %12, i64* %R11_val, !mcsema_real_eip !82
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !82
  %13 = load i64, i64* %R12, !mcsema_real_eip !82
  store i64 %13, i64* %R12_val, !mcsema_real_eip !82
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !82
  %14 = load i64, i64* %R13, !mcsema_real_eip !82
  store i64 %14, i64* %R13_val, !mcsema_real_eip !82
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !82
  %15 = load i64, i64* %R14, !mcsema_real_eip !82
  store i64 %15, i64* %R14_val, !mcsema_real_eip !82
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !82
  %16 = load i64, i64* %R15, !mcsema_real_eip !82
  store i64 %16, i64* %R15_val, !mcsema_real_eip !82
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !82
  %17 = load i64, i64* %RIP, !mcsema_real_eip !82
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !82
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !82
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !82
  store i1 %18, i1* %CF_val, !mcsema_real_eip !82
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !82
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !82
  store i1 %19, i1* %PF_val, !mcsema_real_eip !82
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !82
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !82
  store i1 %20, i1* %AF_val, !mcsema_real_eip !82
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !82
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !82
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !82
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !82
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !82
  store i1 %22, i1* %SF_val, !mcsema_real_eip !82
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !82
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !82
  store i1 %23, i1* %OF_val, !mcsema_real_eip !82
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !82
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !82
  store i1 %24, i1* %DF_val, !mcsema_real_eip !82
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !82
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !82
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !82
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !82
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !82
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !82
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !82
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !82
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !82
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !82
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !82
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !82
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !82
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !82
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !82
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !82
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !82
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !82
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !82
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !82
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !82
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !82
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !82
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !82
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !82
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !82
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !82
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !82
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !82
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !82
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !82
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !82
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !82
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !82
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !82
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !82
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !82
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !82
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !82
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !82
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !82
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !82
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !82
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !82
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !82
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !82
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !82
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !82
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !82
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !82
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !82
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !82
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !82
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !82
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !82
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !82
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !82
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !82
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !82
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !82
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !82
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !82
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !82
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !82
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !82
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !82
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !82
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !82
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !82
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !82
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !82
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !82
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !82
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !82
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !82
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !82
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !82
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !82
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !82
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !82
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !82
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !82
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !82
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !82
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !82
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !82
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !82
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !82
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !82
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !82
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !82
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !82
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !82
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !82
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !82
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !82
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !82
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !82
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !82
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !82
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !82
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !82
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !82
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !82
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !82
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !82
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !82
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !82
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !82
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !82
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !82
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !82
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !82
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !82
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !82
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !82
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !82
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !82
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !82
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !82
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !82
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !82
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !82
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !82
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !82
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !82
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !82
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !82
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !82
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !82
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !82
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !82
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !82
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !82
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !82
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !82
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !82
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !82
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !82
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !82
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !82
  %78 = add i64 %77, -8, !mcsema_real_eip !82
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !82
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !82
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 2)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !83
  %84 = and i32 %83, 16, !mcsema_real_eip !83
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !83
  store i1 %85, i1* %AF_val, !mcsema_real_eip !83
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !83
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !83
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !83
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !83
  %89 = and i32 %83, %88, !mcsema_real_eip !83
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !83
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !83
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !83
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !83
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !83
  %96 = zext i32 %82 to i64, !mcsema_real_eip !83
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !83
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !84
  %98 = add i64 %97, -8, !mcsema_real_eip !84
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !84
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !84
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_d2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !85
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !85
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !85
  %XMM15_val = alloca i128, !mcsema_real_eip !85
  %XMM14_val = alloca i128, !mcsema_real_eip !85
  %XMM13_val = alloca i128, !mcsema_real_eip !85
  %XMM12_val = alloca i128, !mcsema_real_eip !85
  %XMM11_val = alloca i128, !mcsema_real_eip !85
  %XMM10_val = alloca i128, !mcsema_real_eip !85
  %XMM9_val = alloca i128, !mcsema_real_eip !85
  %XMM8_val = alloca i128, !mcsema_real_eip !85
  %XMM7_val = alloca i128, !mcsema_real_eip !85
  %XMM6_val = alloca i128, !mcsema_real_eip !85
  %XMM5_val = alloca i128, !mcsema_real_eip !85
  %XMM4_val = alloca i128, !mcsema_real_eip !85
  %XMM3_val = alloca i128, !mcsema_real_eip !85
  %XMM2_val = alloca i128, !mcsema_real_eip !85
  %XMM1_val = alloca i128, !mcsema_real_eip !85
  %XMM0_val = alloca i128, !mcsema_real_eip !85
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !85
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !85
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !85
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !85
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !85
  %FPU_IM_val = alloca i1, !mcsema_real_eip !85
  %FPU_DM_val = alloca i1, !mcsema_real_eip !85
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !85
  %FPU_OM_val = alloca i1, !mcsema_real_eip !85
  %FPU_UM_val = alloca i1, !mcsema_real_eip !85
  %FPU_PM_val = alloca i1, !mcsema_real_eip !85
  %FPU_PC_val = alloca i2, !mcsema_real_eip !85
  %FPU_RC_val = alloca i2, !mcsema_real_eip !85
  %FPU_X_val = alloca i1, !mcsema_real_eip !85
  %FPU_IE_val = alloca i1, !mcsema_real_eip !85
  %FPU_DE_val = alloca i1, !mcsema_real_eip !85
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !85
  %FPU_OE_val = alloca i1, !mcsema_real_eip !85
  %FPU_UE_val = alloca i1, !mcsema_real_eip !85
  %FPU_PE_val = alloca i1, !mcsema_real_eip !85
  %FPU_SF_val = alloca i1, !mcsema_real_eip !85
  %FPU_ES_val = alloca i1, !mcsema_real_eip !85
  %FPU_C0_val = alloca i1, !mcsema_real_eip !85
  %FPU_C1_val = alloca i1, !mcsema_real_eip !85
  %FPU_C2_val = alloca i1, !mcsema_real_eip !85
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !85
  %FPU_C3_val = alloca i1, !mcsema_real_eip !85
  %FPU_B_val = alloca i1, !mcsema_real_eip !85
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !85
  %DF_val = alloca i1, !mcsema_real_eip !85
  %OF_val = alloca i1, !mcsema_real_eip !85
  %SF_val = alloca i1, !mcsema_real_eip !85
  %CF_val = alloca i1, !mcsema_real_eip !85
  %AF_val = alloca i1, !mcsema_real_eip !85
  %PF_val = alloca i1, !mcsema_real_eip !85
  %ZF_val = alloca i1, !mcsema_real_eip !85
  %RIP_val = alloca i64, !mcsema_real_eip !85
  %R14_val = alloca i64, !mcsema_real_eip !85
  %R13_val = alloca i64, !mcsema_real_eip !85
  %R12_val = alloca i64, !mcsema_real_eip !85
  %R11_val = alloca i64, !mcsema_real_eip !85
  %R10_val = alloca i64, !mcsema_real_eip !85
  %R9_val = alloca i64, !mcsema_real_eip !85
  %R8_val = alloca i64, !mcsema_real_eip !85
  %RSP_val = alloca i64, !mcsema_real_eip !85
  %RBP_val = alloca i64, !mcsema_real_eip !85
  %RDI_val = alloca i64, !mcsema_real_eip !85
  %RSI_val = alloca i64, !mcsema_real_eip !85
  %RDX_val = alloca i64, !mcsema_real_eip !85
  %RCX_val = alloca i64, !mcsema_real_eip !85
  %RBX_val = alloca i64, !mcsema_real_eip !85
  %RAX_val = alloca i64, !mcsema_real_eip !85
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !85
  %1 = load i64, i64* %RAX, !mcsema_real_eip !85
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !85
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !85
  %2 = load i64, i64* %RBX, !mcsema_real_eip !85
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !85
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !85
  %3 = load i64, i64* %RCX, !mcsema_real_eip !85
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !85
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !85
  %4 = load i64, i64* %RDX, !mcsema_real_eip !85
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !85
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !85
  %5 = load i64, i64* %RSI, !mcsema_real_eip !85
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !85
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !85
  %6 = load i64, i64* %RDI, !mcsema_real_eip !85
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !85
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !85
  %7 = load i64, i64* %RSP, !mcsema_real_eip !85
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !85
  %8 = load i64, i64* %RBP, !mcsema_real_eip !85
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !85
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !85
  %9 = load i64, i64* %R8, !mcsema_real_eip !85
  store i64 %9, i64* %R8_val, !mcsema_real_eip !85
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !85
  %10 = load i64, i64* %R9, !mcsema_real_eip !85
  store i64 %10, i64* %R9_val, !mcsema_real_eip !85
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !85
  %11 = load i64, i64* %R10, !mcsema_real_eip !85
  store i64 %11, i64* %R10_val, !mcsema_real_eip !85
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !85
  %12 = load i64, i64* %R11, !mcsema_real_eip !85
  store i64 %12, i64* %R11_val, !mcsema_real_eip !85
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !85
  %13 = load i64, i64* %R12, !mcsema_real_eip !85
  store i64 %13, i64* %R12_val, !mcsema_real_eip !85
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !85
  %14 = load i64, i64* %R13, !mcsema_real_eip !85
  store i64 %14, i64* %R13_val, !mcsema_real_eip !85
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !85
  %15 = load i64, i64* %R14, !mcsema_real_eip !85
  store i64 %15, i64* %R14_val, !mcsema_real_eip !85
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !85
  %16 = load i64, i64* %R15, !mcsema_real_eip !85
  store i64 %16, i64* %R15_val, !mcsema_real_eip !85
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !85
  %17 = load i64, i64* %RIP, !mcsema_real_eip !85
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !85
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !85
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !85
  store i1 %18, i1* %CF_val, !mcsema_real_eip !85
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !85
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !85
  store i1 %19, i1* %PF_val, !mcsema_real_eip !85
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !85
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !85
  store i1 %20, i1* %AF_val, !mcsema_real_eip !85
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !85
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !85
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !85
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !85
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !85
  store i1 %22, i1* %SF_val, !mcsema_real_eip !85
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !85
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !85
  store i1 %23, i1* %OF_val, !mcsema_real_eip !85
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !85
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !85
  store i1 %24, i1* %DF_val, !mcsema_real_eip !85
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !85
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !85
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !85
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !85
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !85
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !85
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !85
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !85
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !85
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !85
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !85
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !85
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !85
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !85
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !85
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !85
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !85
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !85
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !85
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !85
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !85
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !85
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !85
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !85
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !85
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !85
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !85
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !85
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !85
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !85
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !85
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !85
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !85
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !85
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !85
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !85
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !85
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !85
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !85
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !85
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !85
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !85
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !85
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !85
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !85
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !85
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !85
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !85
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !85
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !85
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !85
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !85
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !85
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !85
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !85
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !85
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !85
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !85
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !85
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !85
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !85
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !85
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !85
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !85
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !85
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !85
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !85
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !85
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !85
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !85
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !85
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !85
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !85
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !85
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !85
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !85
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !85
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !85
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !85
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !85
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !85
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !85
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !85
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !85
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !85
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !85
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !85
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !85
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !85
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !85
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !85
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !85
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !85
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !85
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !85
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !85
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !85
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !85
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !85
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !85
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !85
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !85
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !85
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !85
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !85
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !85
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !85
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !85
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !85
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !85
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !85
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !85
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !85
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !85
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !85
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !85
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !85
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !85
  %78 = add i64 %77, -8, !mcsema_real_eip !85
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !85
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !85
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 4)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !86
  %84 = and i32 %83, 16, !mcsema_real_eip !86
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !86
  store i1 %85, i1* %AF_val, !mcsema_real_eip !86
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !86
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !86
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !86
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !86
  %89 = and i32 %83, %88, !mcsema_real_eip !86
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !86
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !86
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !86
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !86
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !86
  %96 = zext i32 %82 to i64, !mcsema_real_eip !86
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !86
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !87
  %98 = add i64 %97, -8, !mcsema_real_eip !87
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !87
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !87
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_e2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !88
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !88
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !88
  %XMM15_val = alloca i128, !mcsema_real_eip !88
  %XMM14_val = alloca i128, !mcsema_real_eip !88
  %XMM13_val = alloca i128, !mcsema_real_eip !88
  %XMM12_val = alloca i128, !mcsema_real_eip !88
  %XMM11_val = alloca i128, !mcsema_real_eip !88
  %XMM10_val = alloca i128, !mcsema_real_eip !88
  %XMM9_val = alloca i128, !mcsema_real_eip !88
  %XMM8_val = alloca i128, !mcsema_real_eip !88
  %XMM7_val = alloca i128, !mcsema_real_eip !88
  %XMM6_val = alloca i128, !mcsema_real_eip !88
  %XMM5_val = alloca i128, !mcsema_real_eip !88
  %XMM4_val = alloca i128, !mcsema_real_eip !88
  %XMM3_val = alloca i128, !mcsema_real_eip !88
  %XMM2_val = alloca i128, !mcsema_real_eip !88
  %XMM1_val = alloca i128, !mcsema_real_eip !88
  %XMM0_val = alloca i128, !mcsema_real_eip !88
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !88
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !88
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !88
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !88
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !88
  %FPU_IM_val = alloca i1, !mcsema_real_eip !88
  %FPU_DM_val = alloca i1, !mcsema_real_eip !88
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !88
  %FPU_OM_val = alloca i1, !mcsema_real_eip !88
  %FPU_UM_val = alloca i1, !mcsema_real_eip !88
  %FPU_PM_val = alloca i1, !mcsema_real_eip !88
  %FPU_PC_val = alloca i2, !mcsema_real_eip !88
  %FPU_RC_val = alloca i2, !mcsema_real_eip !88
  %FPU_X_val = alloca i1, !mcsema_real_eip !88
  %FPU_IE_val = alloca i1, !mcsema_real_eip !88
  %FPU_DE_val = alloca i1, !mcsema_real_eip !88
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !88
  %FPU_OE_val = alloca i1, !mcsema_real_eip !88
  %FPU_UE_val = alloca i1, !mcsema_real_eip !88
  %FPU_PE_val = alloca i1, !mcsema_real_eip !88
  %FPU_SF_val = alloca i1, !mcsema_real_eip !88
  %FPU_ES_val = alloca i1, !mcsema_real_eip !88
  %FPU_C0_val = alloca i1, !mcsema_real_eip !88
  %FPU_C1_val = alloca i1, !mcsema_real_eip !88
  %FPU_C2_val = alloca i1, !mcsema_real_eip !88
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !88
  %FPU_C3_val = alloca i1, !mcsema_real_eip !88
  %FPU_B_val = alloca i1, !mcsema_real_eip !88
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !88
  %DF_val = alloca i1, !mcsema_real_eip !88
  %OF_val = alloca i1, !mcsema_real_eip !88
  %SF_val = alloca i1, !mcsema_real_eip !88
  %CF_val = alloca i1, !mcsema_real_eip !88
  %AF_val = alloca i1, !mcsema_real_eip !88
  %PF_val = alloca i1, !mcsema_real_eip !88
  %ZF_val = alloca i1, !mcsema_real_eip !88
  %RIP_val = alloca i64, !mcsema_real_eip !88
  %R14_val = alloca i64, !mcsema_real_eip !88
  %R13_val = alloca i64, !mcsema_real_eip !88
  %R12_val = alloca i64, !mcsema_real_eip !88
  %R11_val = alloca i64, !mcsema_real_eip !88
  %R10_val = alloca i64, !mcsema_real_eip !88
  %R9_val = alloca i64, !mcsema_real_eip !88
  %R8_val = alloca i64, !mcsema_real_eip !88
  %RSP_val = alloca i64, !mcsema_real_eip !88
  %RBP_val = alloca i64, !mcsema_real_eip !88
  %RDI_val = alloca i64, !mcsema_real_eip !88
  %RSI_val = alloca i64, !mcsema_real_eip !88
  %RDX_val = alloca i64, !mcsema_real_eip !88
  %RCX_val = alloca i64, !mcsema_real_eip !88
  %RBX_val = alloca i64, !mcsema_real_eip !88
  %RAX_val = alloca i64, !mcsema_real_eip !88
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !88
  %1 = load i64, i64* %RAX, !mcsema_real_eip !88
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !88
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !88
  %2 = load i64, i64* %RBX, !mcsema_real_eip !88
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !88
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !88
  %3 = load i64, i64* %RCX, !mcsema_real_eip !88
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !88
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !88
  %4 = load i64, i64* %RDX, !mcsema_real_eip !88
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !88
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !88
  %5 = load i64, i64* %RSI, !mcsema_real_eip !88
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !88
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !88
  %6 = load i64, i64* %RDI, !mcsema_real_eip !88
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !88
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !88
  %7 = load i64, i64* %RSP, !mcsema_real_eip !88
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !88
  %8 = load i64, i64* %RBP, !mcsema_real_eip !88
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !88
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !88
  %9 = load i64, i64* %R8, !mcsema_real_eip !88
  store i64 %9, i64* %R8_val, !mcsema_real_eip !88
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !88
  %10 = load i64, i64* %R9, !mcsema_real_eip !88
  store i64 %10, i64* %R9_val, !mcsema_real_eip !88
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !88
  %11 = load i64, i64* %R10, !mcsema_real_eip !88
  store i64 %11, i64* %R10_val, !mcsema_real_eip !88
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !88
  %12 = load i64, i64* %R11, !mcsema_real_eip !88
  store i64 %12, i64* %R11_val, !mcsema_real_eip !88
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !88
  %13 = load i64, i64* %R12, !mcsema_real_eip !88
  store i64 %13, i64* %R12_val, !mcsema_real_eip !88
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !88
  %14 = load i64, i64* %R13, !mcsema_real_eip !88
  store i64 %14, i64* %R13_val, !mcsema_real_eip !88
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !88
  %15 = load i64, i64* %R14, !mcsema_real_eip !88
  store i64 %15, i64* %R14_val, !mcsema_real_eip !88
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !88
  %16 = load i64, i64* %R15, !mcsema_real_eip !88
  store i64 %16, i64* %R15_val, !mcsema_real_eip !88
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !88
  %17 = load i64, i64* %RIP, !mcsema_real_eip !88
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !88
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !88
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !88
  store i1 %18, i1* %CF_val, !mcsema_real_eip !88
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !88
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !88
  store i1 %19, i1* %PF_val, !mcsema_real_eip !88
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !88
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !88
  store i1 %20, i1* %AF_val, !mcsema_real_eip !88
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !88
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !88
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !88
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !88
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !88
  store i1 %22, i1* %SF_val, !mcsema_real_eip !88
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !88
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !88
  store i1 %23, i1* %OF_val, !mcsema_real_eip !88
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !88
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !88
  store i1 %24, i1* %DF_val, !mcsema_real_eip !88
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !88
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !88
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !88
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !88
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !88
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !88
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !88
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !88
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !88
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !88
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !88
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !88
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !88
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !88
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !88
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !88
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !88
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !88
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !88
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !88
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !88
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !88
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !88
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !88
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !88
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !88
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !88
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !88
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !88
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !88
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !88
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !88
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !88
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !88
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !88
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !88
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !88
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !88
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !88
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !88
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !88
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !88
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !88
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !88
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !88
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !88
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !88
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !88
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !88
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !88
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !88
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !88
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !88
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !88
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !88
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !88
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !88
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !88
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !88
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !88
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !88
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !88
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !88
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !88
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !88
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !88
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !88
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !88
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !88
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !88
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !88
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !88
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !88
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !88
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !88
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !88
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !88
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !88
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !88
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !88
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !88
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !88
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !88
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !88
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !88
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !88
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !88
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !88
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !88
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !88
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !88
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !88
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !88
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !88
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !88
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !88
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !88
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !88
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !88
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !88
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !88
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !88
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !88
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !88
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !88
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !88
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !88
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !88
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !88
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !88
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !88
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !88
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !88
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !88
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !88
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !88
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !88
  %78 = add i64 %77, -8, !mcsema_real_eip !88
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !88
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !88
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 6)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !89
  %84 = and i32 %83, 16, !mcsema_real_eip !89
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !89
  store i1 %85, i1* %AF_val, !mcsema_real_eip !89
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !89
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !89
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !89
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !89
  %89 = and i32 %83, %88, !mcsema_real_eip !89
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !89
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !89
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !89
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !89
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !89
  %96 = zext i32 %82 to i64, !mcsema_real_eip !89
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !89
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !90
  %98 = add i64 %97, -8, !mcsema_real_eip !90
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !90
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !90
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_f2(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !91
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !91
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !91
  %XMM15_val = alloca i128, !mcsema_real_eip !91
  %XMM14_val = alloca i128, !mcsema_real_eip !91
  %XMM13_val = alloca i128, !mcsema_real_eip !91
  %XMM12_val = alloca i128, !mcsema_real_eip !91
  %XMM11_val = alloca i128, !mcsema_real_eip !91
  %XMM10_val = alloca i128, !mcsema_real_eip !91
  %XMM9_val = alloca i128, !mcsema_real_eip !91
  %XMM8_val = alloca i128, !mcsema_real_eip !91
  %XMM7_val = alloca i128, !mcsema_real_eip !91
  %XMM6_val = alloca i128, !mcsema_real_eip !91
  %XMM5_val = alloca i128, !mcsema_real_eip !91
  %XMM4_val = alloca i128, !mcsema_real_eip !91
  %XMM3_val = alloca i128, !mcsema_real_eip !91
  %XMM2_val = alloca i128, !mcsema_real_eip !91
  %XMM1_val = alloca i128, !mcsema_real_eip !91
  %XMM0_val = alloca i128, !mcsema_real_eip !91
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !91
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !91
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !91
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !91
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !91
  %FPU_IM_val = alloca i1, !mcsema_real_eip !91
  %FPU_DM_val = alloca i1, !mcsema_real_eip !91
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !91
  %FPU_OM_val = alloca i1, !mcsema_real_eip !91
  %FPU_UM_val = alloca i1, !mcsema_real_eip !91
  %FPU_PM_val = alloca i1, !mcsema_real_eip !91
  %FPU_PC_val = alloca i2, !mcsema_real_eip !91
  %FPU_RC_val = alloca i2, !mcsema_real_eip !91
  %FPU_X_val = alloca i1, !mcsema_real_eip !91
  %FPU_IE_val = alloca i1, !mcsema_real_eip !91
  %FPU_DE_val = alloca i1, !mcsema_real_eip !91
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !91
  %FPU_OE_val = alloca i1, !mcsema_real_eip !91
  %FPU_UE_val = alloca i1, !mcsema_real_eip !91
  %FPU_PE_val = alloca i1, !mcsema_real_eip !91
  %FPU_SF_val = alloca i1, !mcsema_real_eip !91
  %FPU_ES_val = alloca i1, !mcsema_real_eip !91
  %FPU_C0_val = alloca i1, !mcsema_real_eip !91
  %FPU_C1_val = alloca i1, !mcsema_real_eip !91
  %FPU_C2_val = alloca i1, !mcsema_real_eip !91
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !91
  %FPU_C3_val = alloca i1, !mcsema_real_eip !91
  %FPU_B_val = alloca i1, !mcsema_real_eip !91
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !91
  %DF_val = alloca i1, !mcsema_real_eip !91
  %OF_val = alloca i1, !mcsema_real_eip !91
  %SF_val = alloca i1, !mcsema_real_eip !91
  %CF_val = alloca i1, !mcsema_real_eip !91
  %AF_val = alloca i1, !mcsema_real_eip !91
  %PF_val = alloca i1, !mcsema_real_eip !91
  %ZF_val = alloca i1, !mcsema_real_eip !91
  %RIP_val = alloca i64, !mcsema_real_eip !91
  %R14_val = alloca i64, !mcsema_real_eip !91
  %R13_val = alloca i64, !mcsema_real_eip !91
  %R12_val = alloca i64, !mcsema_real_eip !91
  %R11_val = alloca i64, !mcsema_real_eip !91
  %R10_val = alloca i64, !mcsema_real_eip !91
  %R9_val = alloca i64, !mcsema_real_eip !91
  %R8_val = alloca i64, !mcsema_real_eip !91
  %RSP_val = alloca i64, !mcsema_real_eip !91
  %RBP_val = alloca i64, !mcsema_real_eip !91
  %RDI_val = alloca i64, !mcsema_real_eip !91
  %RSI_val = alloca i64, !mcsema_real_eip !91
  %RDX_val = alloca i64, !mcsema_real_eip !91
  %RCX_val = alloca i64, !mcsema_real_eip !91
  %RBX_val = alloca i64, !mcsema_real_eip !91
  %RAX_val = alloca i64, !mcsema_real_eip !91
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !91
  %1 = load i64, i64* %RAX, !mcsema_real_eip !91
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !91
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !91
  %2 = load i64, i64* %RBX, !mcsema_real_eip !91
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !91
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !91
  %3 = load i64, i64* %RCX, !mcsema_real_eip !91
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !91
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !91
  %4 = load i64, i64* %RDX, !mcsema_real_eip !91
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !91
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !91
  %5 = load i64, i64* %RSI, !mcsema_real_eip !91
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !91
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !91
  %6 = load i64, i64* %RDI, !mcsema_real_eip !91
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !91
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !91
  %7 = load i64, i64* %RSP, !mcsema_real_eip !91
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !91
  %8 = load i64, i64* %RBP, !mcsema_real_eip !91
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !91
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !91
  %9 = load i64, i64* %R8, !mcsema_real_eip !91
  store i64 %9, i64* %R8_val, !mcsema_real_eip !91
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !91
  %10 = load i64, i64* %R9, !mcsema_real_eip !91
  store i64 %10, i64* %R9_val, !mcsema_real_eip !91
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !91
  %11 = load i64, i64* %R10, !mcsema_real_eip !91
  store i64 %11, i64* %R10_val, !mcsema_real_eip !91
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !91
  %12 = load i64, i64* %R11, !mcsema_real_eip !91
  store i64 %12, i64* %R11_val, !mcsema_real_eip !91
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !91
  %13 = load i64, i64* %R12, !mcsema_real_eip !91
  store i64 %13, i64* %R12_val, !mcsema_real_eip !91
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !91
  %14 = load i64, i64* %R13, !mcsema_real_eip !91
  store i64 %14, i64* %R13_val, !mcsema_real_eip !91
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !91
  %15 = load i64, i64* %R14, !mcsema_real_eip !91
  store i64 %15, i64* %R14_val, !mcsema_real_eip !91
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !91
  %16 = load i64, i64* %R15, !mcsema_real_eip !91
  store i64 %16, i64* %R15_val, !mcsema_real_eip !91
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !91
  %17 = load i64, i64* %RIP, !mcsema_real_eip !91
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !91
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !91
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !91
  store i1 %18, i1* %CF_val, !mcsema_real_eip !91
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !91
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !91
  store i1 %19, i1* %PF_val, !mcsema_real_eip !91
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !91
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !91
  store i1 %20, i1* %AF_val, !mcsema_real_eip !91
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !91
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !91
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !91
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !91
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !91
  store i1 %22, i1* %SF_val, !mcsema_real_eip !91
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !91
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !91
  store i1 %23, i1* %OF_val, !mcsema_real_eip !91
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !91
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !91
  store i1 %24, i1* %DF_val, !mcsema_real_eip !91
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !91
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !91
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !91
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !91
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !91
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !91
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !91
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !91
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !91
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !91
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !91
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !91
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !91
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !91
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !91
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !91
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !91
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !91
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !91
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !91
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !91
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !91
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !91
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !91
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !91
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !91
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !91
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !91
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !91
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !91
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !91
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !91
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !91
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !91
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !91
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !91
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !91
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !91
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !91
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !91
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !91
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !91
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !91
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !91
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !91
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !91
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !91
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !91
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !91
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !91
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !91
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !91
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !91
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !91
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !91
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !91
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !91
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !91
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !91
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !91
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !91
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !91
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !91
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !91
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !91
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !91
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !91
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !91
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !91
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !91
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !91
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !91
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !91
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !91
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !91
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !91
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !91
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !91
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !91
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !91
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !91
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !91
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !91
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !91
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !91
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !91
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !91
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !91
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !91
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !91
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !91
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !91
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !91
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !91
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !91
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !91
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !91
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !91
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !91
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !91
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !91
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !91
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !91
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !91
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !91
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !91
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !91
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !91
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !91
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !91
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !91
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !91
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !91
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !91
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !91
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !91
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !91
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !91
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !91
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !91
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !91
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !91
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !91
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !91
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !91
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !91
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !91
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !91
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !91
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !91
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !91
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !91
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !91
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !91
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !91
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !91
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !91
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !91
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !91
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !91
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !91
  %78 = add i64 %77, -8, !mcsema_real_eip !91
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !91
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !91
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 12)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !92
  %84 = and i32 %83, 16, !mcsema_real_eip !92
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !92
  store i1 %85, i1* %AF_val, !mcsema_real_eip !92
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !92
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !92
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !92
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !92
  %89 = and i32 %83, %88, !mcsema_real_eip !92
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !92
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !92
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !92
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !92
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !92
  %96 = zext i32 %82 to i64, !mcsema_real_eip !92
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !92
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !93
  %98 = add i64 %97, -8, !mcsema_real_eip !93
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !93
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !93
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_102(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !94
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !94
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !94
  %XMM15_val = alloca i128, !mcsema_real_eip !94
  %XMM14_val = alloca i128, !mcsema_real_eip !94
  %XMM13_val = alloca i128, !mcsema_real_eip !94
  %XMM12_val = alloca i128, !mcsema_real_eip !94
  %XMM11_val = alloca i128, !mcsema_real_eip !94
  %XMM10_val = alloca i128, !mcsema_real_eip !94
  %XMM9_val = alloca i128, !mcsema_real_eip !94
  %XMM8_val = alloca i128, !mcsema_real_eip !94
  %XMM7_val = alloca i128, !mcsema_real_eip !94
  %XMM6_val = alloca i128, !mcsema_real_eip !94
  %XMM5_val = alloca i128, !mcsema_real_eip !94
  %XMM4_val = alloca i128, !mcsema_real_eip !94
  %XMM3_val = alloca i128, !mcsema_real_eip !94
  %XMM2_val = alloca i128, !mcsema_real_eip !94
  %XMM1_val = alloca i128, !mcsema_real_eip !94
  %XMM0_val = alloca i128, !mcsema_real_eip !94
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !94
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !94
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !94
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !94
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !94
  %FPU_IM_val = alloca i1, !mcsema_real_eip !94
  %FPU_DM_val = alloca i1, !mcsema_real_eip !94
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !94
  %FPU_OM_val = alloca i1, !mcsema_real_eip !94
  %FPU_UM_val = alloca i1, !mcsema_real_eip !94
  %FPU_PM_val = alloca i1, !mcsema_real_eip !94
  %FPU_PC_val = alloca i2, !mcsema_real_eip !94
  %FPU_RC_val = alloca i2, !mcsema_real_eip !94
  %FPU_X_val = alloca i1, !mcsema_real_eip !94
  %FPU_IE_val = alloca i1, !mcsema_real_eip !94
  %FPU_DE_val = alloca i1, !mcsema_real_eip !94
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !94
  %FPU_OE_val = alloca i1, !mcsema_real_eip !94
  %FPU_UE_val = alloca i1, !mcsema_real_eip !94
  %FPU_PE_val = alloca i1, !mcsema_real_eip !94
  %FPU_SF_val = alloca i1, !mcsema_real_eip !94
  %FPU_ES_val = alloca i1, !mcsema_real_eip !94
  %FPU_C0_val = alloca i1, !mcsema_real_eip !94
  %FPU_C1_val = alloca i1, !mcsema_real_eip !94
  %FPU_C2_val = alloca i1, !mcsema_real_eip !94
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !94
  %FPU_C3_val = alloca i1, !mcsema_real_eip !94
  %FPU_B_val = alloca i1, !mcsema_real_eip !94
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !94
  %DF_val = alloca i1, !mcsema_real_eip !94
  %OF_val = alloca i1, !mcsema_real_eip !94
  %SF_val = alloca i1, !mcsema_real_eip !94
  %CF_val = alloca i1, !mcsema_real_eip !94
  %AF_val = alloca i1, !mcsema_real_eip !94
  %PF_val = alloca i1, !mcsema_real_eip !94
  %ZF_val = alloca i1, !mcsema_real_eip !94
  %RIP_val = alloca i64, !mcsema_real_eip !94
  %R14_val = alloca i64, !mcsema_real_eip !94
  %R13_val = alloca i64, !mcsema_real_eip !94
  %R12_val = alloca i64, !mcsema_real_eip !94
  %R11_val = alloca i64, !mcsema_real_eip !94
  %R10_val = alloca i64, !mcsema_real_eip !94
  %R9_val = alloca i64, !mcsema_real_eip !94
  %R8_val = alloca i64, !mcsema_real_eip !94
  %RSP_val = alloca i64, !mcsema_real_eip !94
  %RBP_val = alloca i64, !mcsema_real_eip !94
  %RDI_val = alloca i64, !mcsema_real_eip !94
  %RSI_val = alloca i64, !mcsema_real_eip !94
  %RDX_val = alloca i64, !mcsema_real_eip !94
  %RCX_val = alloca i64, !mcsema_real_eip !94
  %RBX_val = alloca i64, !mcsema_real_eip !94
  %RAX_val = alloca i64, !mcsema_real_eip !94
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !94
  %1 = load i64, i64* %RAX, !mcsema_real_eip !94
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !94
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !94
  %2 = load i64, i64* %RBX, !mcsema_real_eip !94
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !94
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !94
  %3 = load i64, i64* %RCX, !mcsema_real_eip !94
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !94
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !94
  %4 = load i64, i64* %RDX, !mcsema_real_eip !94
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !94
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !94
  %5 = load i64, i64* %RSI, !mcsema_real_eip !94
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !94
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !94
  %6 = load i64, i64* %RDI, !mcsema_real_eip !94
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !94
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !94
  %7 = load i64, i64* %RSP, !mcsema_real_eip !94
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !94
  %8 = load i64, i64* %RBP, !mcsema_real_eip !94
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !94
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !94
  %9 = load i64, i64* %R8, !mcsema_real_eip !94
  store i64 %9, i64* %R8_val, !mcsema_real_eip !94
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !94
  %10 = load i64, i64* %R9, !mcsema_real_eip !94
  store i64 %10, i64* %R9_val, !mcsema_real_eip !94
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !94
  %11 = load i64, i64* %R10, !mcsema_real_eip !94
  store i64 %11, i64* %R10_val, !mcsema_real_eip !94
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !94
  %12 = load i64, i64* %R11, !mcsema_real_eip !94
  store i64 %12, i64* %R11_val, !mcsema_real_eip !94
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !94
  %13 = load i64, i64* %R12, !mcsema_real_eip !94
  store i64 %13, i64* %R12_val, !mcsema_real_eip !94
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !94
  %14 = load i64, i64* %R13, !mcsema_real_eip !94
  store i64 %14, i64* %R13_val, !mcsema_real_eip !94
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !94
  %15 = load i64, i64* %R14, !mcsema_real_eip !94
  store i64 %15, i64* %R14_val, !mcsema_real_eip !94
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !94
  %16 = load i64, i64* %R15, !mcsema_real_eip !94
  store i64 %16, i64* %R15_val, !mcsema_real_eip !94
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !94
  %17 = load i64, i64* %RIP, !mcsema_real_eip !94
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !94
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !94
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !94
  store i1 %18, i1* %CF_val, !mcsema_real_eip !94
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !94
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !94
  store i1 %19, i1* %PF_val, !mcsema_real_eip !94
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !94
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !94
  store i1 %20, i1* %AF_val, !mcsema_real_eip !94
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !94
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !94
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !94
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !94
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !94
  store i1 %22, i1* %SF_val, !mcsema_real_eip !94
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !94
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !94
  store i1 %23, i1* %OF_val, !mcsema_real_eip !94
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !94
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !94
  store i1 %24, i1* %DF_val, !mcsema_real_eip !94
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !94
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !94
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !94
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !94
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !94
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !94
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !94
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !94
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !94
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !94
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !94
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !94
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !94
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !94
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !94
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !94
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !94
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !94
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !94
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !94
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !94
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !94
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !94
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !94
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !94
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !94
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !94
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !94
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !94
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !94
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !94
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !94
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !94
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !94
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !94
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !94
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !94
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !94
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !94
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !94
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !94
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !94
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !94
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !94
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !94
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !94
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !94
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !94
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !94
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !94
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !94
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !94
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !94
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !94
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !94
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !94
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !94
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !94
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !94
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !94
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !94
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !94
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !94
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !94
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !94
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !94
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !94
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !94
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !94
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !94
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !94
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !94
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !94
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !94
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !94
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !94
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !94
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !94
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !94
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !94
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !94
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !94
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !94
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !94
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !94
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !94
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !94
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !94
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !94
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !94
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !94
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !94
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !94
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !94
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !94
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !94
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !94
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !94
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !94
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !94
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !94
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !94
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !94
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !94
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !94
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !94
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !94
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !94
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !94
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !94
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !94
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !94
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !94
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !94
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !94
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !94
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !94
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !94
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !94
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !94
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !94
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !94
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !94
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !94
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !94
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !94
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !94
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !94
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !94
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !94
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !94
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !94
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !94
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !94
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !94
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !94
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !94
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !94
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !94
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !94
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !94
  %78 = add i64 %77, -8, !mcsema_real_eip !94
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !94
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !94
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 13)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !95
  %84 = and i32 %83, 16, !mcsema_real_eip !95
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !95
  store i1 %85, i1* %AF_val, !mcsema_real_eip !95
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !95
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !95
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !95
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !95
  %89 = and i32 %83, %88, !mcsema_real_eip !95
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !95
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !95
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !95
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !95
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !95
  %96 = zext i32 %82 to i64, !mcsema_real_eip !95
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !95
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !96
  %98 = add i64 %97, -8, !mcsema_real_eip !96
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !96
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !96
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_112(%struct.regs*) #1 {
entry:
  %_local_stack_alloc_ = alloca i64, i64 8
  %_local_stack_start_ptr_ = getelementptr inbounds i64, i64* %_local_stack_alloc_, i32 0
  %_local_stack_start_ = ptrtoint i64* %_local_stack_start_ptr_ to i64
  %_local_stack_end_ = add i64 %_local_stack_start_, 8
  %R15_val = alloca i64, !mcsema_real_eip !97
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !97
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !97
  %XMM15_val = alloca i128, !mcsema_real_eip !97
  %XMM14_val = alloca i128, !mcsema_real_eip !97
  %XMM13_val = alloca i128, !mcsema_real_eip !97
  %XMM12_val = alloca i128, !mcsema_real_eip !97
  %XMM11_val = alloca i128, !mcsema_real_eip !97
  %XMM10_val = alloca i128, !mcsema_real_eip !97
  %XMM9_val = alloca i128, !mcsema_real_eip !97
  %XMM8_val = alloca i128, !mcsema_real_eip !97
  %XMM7_val = alloca i128, !mcsema_real_eip !97
  %XMM6_val = alloca i128, !mcsema_real_eip !97
  %XMM5_val = alloca i128, !mcsema_real_eip !97
  %XMM4_val = alloca i128, !mcsema_real_eip !97
  %XMM3_val = alloca i128, !mcsema_real_eip !97
  %XMM2_val = alloca i128, !mcsema_real_eip !97
  %XMM1_val = alloca i128, !mcsema_real_eip !97
  %XMM0_val = alloca i128, !mcsema_real_eip !97
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !97
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !97
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !97
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !97
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !97
  %FPU_IM_val = alloca i1, !mcsema_real_eip !97
  %FPU_DM_val = alloca i1, !mcsema_real_eip !97
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !97
  %FPU_OM_val = alloca i1, !mcsema_real_eip !97
  %FPU_UM_val = alloca i1, !mcsema_real_eip !97
  %FPU_PM_val = alloca i1, !mcsema_real_eip !97
  %FPU_PC_val = alloca i2, !mcsema_real_eip !97
  %FPU_RC_val = alloca i2, !mcsema_real_eip !97
  %FPU_X_val = alloca i1, !mcsema_real_eip !97
  %FPU_IE_val = alloca i1, !mcsema_real_eip !97
  %FPU_DE_val = alloca i1, !mcsema_real_eip !97
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !97
  %FPU_OE_val = alloca i1, !mcsema_real_eip !97
  %FPU_UE_val = alloca i1, !mcsema_real_eip !97
  %FPU_PE_val = alloca i1, !mcsema_real_eip !97
  %FPU_SF_val = alloca i1, !mcsema_real_eip !97
  %FPU_ES_val = alloca i1, !mcsema_real_eip !97
  %FPU_C0_val = alloca i1, !mcsema_real_eip !97
  %FPU_C1_val = alloca i1, !mcsema_real_eip !97
  %FPU_C2_val = alloca i1, !mcsema_real_eip !97
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !97
  %FPU_C3_val = alloca i1, !mcsema_real_eip !97
  %FPU_B_val = alloca i1, !mcsema_real_eip !97
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !97
  %DF_val = alloca i1, !mcsema_real_eip !97
  %OF_val = alloca i1, !mcsema_real_eip !97
  %SF_val = alloca i1, !mcsema_real_eip !97
  %CF_val = alloca i1, !mcsema_real_eip !97
  %AF_val = alloca i1, !mcsema_real_eip !97
  %PF_val = alloca i1, !mcsema_real_eip !97
  %ZF_val = alloca i1, !mcsema_real_eip !97
  %RIP_val = alloca i64, !mcsema_real_eip !97
  %R14_val = alloca i64, !mcsema_real_eip !97
  %R13_val = alloca i64, !mcsema_real_eip !97
  %R12_val = alloca i64, !mcsema_real_eip !97
  %R11_val = alloca i64, !mcsema_real_eip !97
  %R10_val = alloca i64, !mcsema_real_eip !97
  %R9_val = alloca i64, !mcsema_real_eip !97
  %R8_val = alloca i64, !mcsema_real_eip !97
  %RSP_val = alloca i64, !mcsema_real_eip !97
  %RBP_val = alloca i64, !mcsema_real_eip !97
  %RDI_val = alloca i64, !mcsema_real_eip !97
  %RSI_val = alloca i64, !mcsema_real_eip !97
  %RDX_val = alloca i64, !mcsema_real_eip !97
  %RCX_val = alloca i64, !mcsema_real_eip !97
  %RBX_val = alloca i64, !mcsema_real_eip !97
  %RAX_val = alloca i64, !mcsema_real_eip !97
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !97
  %1 = load i64, i64* %RAX, !mcsema_real_eip !97
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !97
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !97
  %2 = load i64, i64* %RBX, !mcsema_real_eip !97
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !97
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !97
  %3 = load i64, i64* %RCX, !mcsema_real_eip !97
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !97
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !97
  %4 = load i64, i64* %RDX, !mcsema_real_eip !97
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !97
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !97
  %5 = load i64, i64* %RSI, !mcsema_real_eip !97
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !97
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !97
  %6 = load i64, i64* %RDI, !mcsema_real_eip !97
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !97
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !97
  %7 = load i64, i64* %RSP, !mcsema_real_eip !97
  store i64 %_local_stack_end_, i64* %RSP_val
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !97
  %8 = load i64, i64* %RBP, !mcsema_real_eip !97
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !97
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !97
  %9 = load i64, i64* %R8, !mcsema_real_eip !97
  store i64 %9, i64* %R8_val, !mcsema_real_eip !97
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !97
  %10 = load i64, i64* %R9, !mcsema_real_eip !97
  store i64 %10, i64* %R9_val, !mcsema_real_eip !97
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !97
  %11 = load i64, i64* %R10, !mcsema_real_eip !97
  store i64 %11, i64* %R10_val, !mcsema_real_eip !97
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !97
  %12 = load i64, i64* %R11, !mcsema_real_eip !97
  store i64 %12, i64* %R11_val, !mcsema_real_eip !97
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !97
  %13 = load i64, i64* %R12, !mcsema_real_eip !97
  store i64 %13, i64* %R12_val, !mcsema_real_eip !97
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !97
  %14 = load i64, i64* %R13, !mcsema_real_eip !97
  store i64 %14, i64* %R13_val, !mcsema_real_eip !97
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !97
  %15 = load i64, i64* %R14, !mcsema_real_eip !97
  store i64 %15, i64* %R14_val, !mcsema_real_eip !97
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !97
  %16 = load i64, i64* %R15, !mcsema_real_eip !97
  store i64 %16, i64* %R15_val, !mcsema_real_eip !97
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !97
  %17 = load i64, i64* %RIP, !mcsema_real_eip !97
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !97
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !97
  %18 = load i1, i1* %CF, align 1, !mcsema_real_eip !97
  store i1 %18, i1* %CF_val, !mcsema_real_eip !97
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !97
  %19 = load i1, i1* %PF, align 1, !mcsema_real_eip !97
  store i1 %19, i1* %PF_val, !mcsema_real_eip !97
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !97
  %20 = load i1, i1* %AF, align 1, !mcsema_real_eip !97
  store i1 %20, i1* %AF_val, !mcsema_real_eip !97
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !97
  %21 = load i1, i1* %ZF, align 1, !mcsema_real_eip !97
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !97
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !97
  %22 = load i1, i1* %SF, align 1, !mcsema_real_eip !97
  store i1 %22, i1* %SF_val, !mcsema_real_eip !97
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !97
  %23 = load i1, i1* %OF, align 1, !mcsema_real_eip !97
  store i1 %23, i1* %OF_val, !mcsema_real_eip !97
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !97
  %24 = load i1, i1* %DF, align 1, !mcsema_real_eip !97
  store i1 %24, i1* %DF_val, !mcsema_real_eip !97
  %25 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !97
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !97
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !97
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !97
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !97
  %28 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !97
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !97
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !97
  %29 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !97
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !97
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !97
  %30 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !97
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !97
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !97
  %31 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !97
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !97
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !97
  %32 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !97
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !97
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !97
  %33 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !97
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !97
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !97
  %34 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !97
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !97
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !97
  %35 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !97
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !97
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !97
  %36 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !97
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !97
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !97
  %37 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !97
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !97
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !97
  %38 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !97
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !97
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !97
  %39 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !97
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !97
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !97
  %40 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !97
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !97
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !97
  %41 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !97
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !97
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !97
  %42 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !97
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !97
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !97
  %43 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !97
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !97
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !97
  %44 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !97
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !97
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !97
  %45 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !97
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !97
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !97
  %46 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !97
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !97
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !97
  %47 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !97
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !97
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !97
  %48 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !97
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !97
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !97
  %49 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !97
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !97
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !97
  %50 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !97
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !97
  %51 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !97
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64, i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !97
  %55 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !97
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !97
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !97
  %56 = load i64, i64* %FPU_LASTIP_OFF, !mcsema_real_eip !97
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !97
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !97
  %57 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !97
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !97
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !97
  %58 = load i64, i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !97
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !97
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !97
  %59 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !97
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !97
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !97
  %60 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !97
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !97
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !97
  %61 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !97
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !97
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !97
  %62 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !97
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !97
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !97
  %63 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !97
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !97
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !97
  %64 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !97
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !97
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !97
  %65 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !97
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !97
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !97
  %66 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !97
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !97
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !97
  %67 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !97
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !97
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !97
  %68 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !97
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !97
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !97
  %69 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !97
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !97
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !97
  %70 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !97
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !97
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !97
  %71 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !97
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !97
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !97
  %72 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !97
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !97
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !97
  %73 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !97
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !97
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !97
  %74 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !97
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !97
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !97
  %75 = load i64, i64* %STACK_BASE, !mcsema_real_eip !97
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !97
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !97
  %76 = load i64, i64* %STACK_LIMIT, !mcsema_real_eip !97
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !97
  %77 = load i64, i64* %RBP_val, !mcsema_real_eip !97
  %78 = add i64 %77, -8, !mcsema_real_eip !97
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !97
  %80 = bitcast i64* %79 to i32*
  %81 = load i32, i32* %80, !mcsema_real_eip !97
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %81, i32 19)
  %82 = extractvalue { i32, i1 } %uadd, 0
  %83 = xor i32 %82, %81, !mcsema_real_eip !98
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  store i1 %85, i1* %AF_val, !mcsema_real_eip !98
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF_val, !mcsema_real_eip !98
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !98
  store i1 %87, i1* %ZF_val, !mcsema_real_eip !98
  %88 = xor i32 %81, -2147483648, !mcsema_real_eip !98
  %89 = and i32 %83, %88, !mcsema_real_eip !98
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF_val, !mcsema_real_eip !98
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !98
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !98
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF_val, !mcsema_real_eip !98
  %95 = extractvalue { i32, i1 } %uadd, 1
  store i1 %95, i1* %CF_val, !mcsema_real_eip !98
  %96 = zext i32 %82 to i64, !mcsema_real_eip !98
  store i64 %96, i64* %RAX_val, !mcsema_real_eip !98
  %97 = load i64, i64* %RBP_val, !mcsema_real_eip !99
  %98 = add i64 %97, -8, !mcsema_real_eip !99
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !99
  %100 = bitcast i64* %99 to i32*
  store i32 %82, i32* %100, !mcsema_real_eip !99
  %101 = load i64, i64* %RBP_val, !mcsema_real_eip !25
  %102 = add i64 %101, -8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, !mcsema_real_eip !25
  %106 = zext i32 %105 to i64, !mcsema_real_eip !25
  store i64 %106, i64* %RAX_val, !mcsema_real_eip !25
  %107 = load i64, i64* %RSP_val, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = load i64, i64* %108, !mcsema_real_eip !26
  store i64 %109, i64* %RBP_val, !mcsema_real_eip !26
  %110 = add i64 %107, 16, !mcsema_real_eip !27
  store i64 %110, i64* %RSP_val, !mcsema_real_eip !27
  %111 = load i64, i64* %RAX_val, !mcsema_real_eip !27
  store i64 %111, i64* %RAX, !mcsema_real_eip !27
  %112 = load i64, i64* %RBX_val, !mcsema_real_eip !27
  store i64 %112, i64* %RBX, !mcsema_real_eip !27
  %113 = load i64, i64* %RCX_val, !mcsema_real_eip !27
  store i64 %113, i64* %RCX, !mcsema_real_eip !27
  %114 = load i64, i64* %RDX_val, !mcsema_real_eip !27
  store i64 %114, i64* %RDX, !mcsema_real_eip !27
  %115 = load i64, i64* %RSI_val, !mcsema_real_eip !27
  store i64 %115, i64* %RSI, !mcsema_real_eip !27
  %116 = load i64, i64* %RDI_val, !mcsema_real_eip !27
  store i64 %116, i64* %RDI, !mcsema_real_eip !27
  %117 = load i64, i64* %RSP_val, !mcsema_real_eip !27
  store i64 %117, i64* %RSP, !mcsema_real_eip !27
  %118 = load i64, i64* %RBP_val, !mcsema_real_eip !27
  store i64 %118, i64* %RBP, !mcsema_real_eip !27
  %119 = load i64, i64* %R8_val, !mcsema_real_eip !27
  store i64 %119, i64* %R8, !mcsema_real_eip !27
  %120 = load i64, i64* %R9_val, !mcsema_real_eip !27
  store i64 %120, i64* %R9, !mcsema_real_eip !27
  %121 = load i64, i64* %R10_val, !mcsema_real_eip !27
  store i64 %121, i64* %R10, !mcsema_real_eip !27
  %122 = load i64, i64* %R11_val, !mcsema_real_eip !27
  store i64 %122, i64* %R11, !mcsema_real_eip !27
  %123 = load i64, i64* %R12_val, !mcsema_real_eip !27
  store i64 %123, i64* %R12, !mcsema_real_eip !27
  %124 = load i64, i64* %R13_val, !mcsema_real_eip !27
  store i64 %124, i64* %R13, !mcsema_real_eip !27
  %125 = load i64, i64* %R14_val, !mcsema_real_eip !27
  store i64 %125, i64* %R14, !mcsema_real_eip !27
  %126 = load i64, i64* %R15_val, !mcsema_real_eip !27
  store i64 %126, i64* %R15, !mcsema_real_eip !27
  %127 = load i64, i64* %RIP_val, !mcsema_real_eip !27
  store i64 %127, i64* %RIP, !mcsema_real_eip !27
  %128 = load i1, i1* %CF_val, !mcsema_real_eip !27
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !27
  %129 = load i1, i1* %PF_val, !mcsema_real_eip !27
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !27
  %130 = load i1, i1* %AF_val, !mcsema_real_eip !27
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !27
  %131 = load i1, i1* %ZF_val, !mcsema_real_eip !27
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !27
  %132 = load i1, i1* %SF_val, !mcsema_real_eip !27
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !27
  %133 = load i1, i1* %OF_val, !mcsema_real_eip !27
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !27
  %134 = load i1, i1* %DF_val, !mcsema_real_eip !27
  store i1 %134, i1* %DF, align 1, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !27
  %135 = load i1, i1* %FPU_B_val, !mcsema_real_eip !27
  store i1 %135, i1* %FPU_B, align 1, !mcsema_real_eip !27
  %136 = load i1, i1* %FPU_C3_val, !mcsema_real_eip !27
  store i1 %136, i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %137 = load i3, i3* %FPU_TOP_val, !mcsema_real_eip !27
  store i3 %137, i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %138 = load i1, i1* %FPU_C2_val, !mcsema_real_eip !27
  store i1 %138, i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %139 = load i1, i1* %FPU_C1_val, !mcsema_real_eip !27
  store i1 %139, i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %140 = load i1, i1* %FPU_C0_val, !mcsema_real_eip !27
  store i1 %140, i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %141 = load i1, i1* %FPU_ES_val, !mcsema_real_eip !27
  store i1 %141, i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %142 = load i1, i1* %FPU_SF_val, !mcsema_real_eip !27
  store i1 %142, i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %143 = load i1, i1* %FPU_PE_val, !mcsema_real_eip !27
  store i1 %143, i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %144 = load i1, i1* %FPU_UE_val, !mcsema_real_eip !27
  store i1 %144, i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %145 = load i1, i1* %FPU_OE_val, !mcsema_real_eip !27
  store i1 %145, i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %146 = load i1, i1* %FPU_ZE_val, !mcsema_real_eip !27
  store i1 %146, i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %147 = load i1, i1* %FPU_DE_val, !mcsema_real_eip !27
  store i1 %147, i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %148 = load i1, i1* %FPU_IE_val, !mcsema_real_eip !27
  store i1 %148, i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %149 = load i1, i1* %FPU_X_val, !mcsema_real_eip !27
  store i1 %149, i1* %FPU_X, align 1, !mcsema_real_eip !27
  %150 = load i2, i2* %FPU_RC_val, !mcsema_real_eip !27
  store i2 %150, i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %151 = load i2, i2* %FPU_PC_val, !mcsema_real_eip !27
  store i2 %151, i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %152 = load i1, i1* %FPU_PM_val, !mcsema_real_eip !27
  store i1 %152, i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %153 = load i1, i1* %FPU_UM_val, !mcsema_real_eip !27
  store i1 %153, i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %154 = load i1, i1* %FPU_OM_val, !mcsema_real_eip !27
  store i1 %154, i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %155 = load i1, i1* %FPU_ZM_val, !mcsema_real_eip !27
  store i1 %155, i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %156 = load i1, i1* %FPU_DM_val, !mcsema_real_eip !27
  store i1 %156, i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %157 = load i1, i1* %FPU_IM_val, !mcsema_real_eip !27
  store i1 %157, i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %158 = load i64, i64* %53, align 4
  store i64 %158, i64* %52, align 4
  %159 = load i16, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !27
  store i16 %159, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %160 = load i64, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !27
  store i64 %160, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !27
  %161 = load i16, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !27
  store i16 %161, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %162 = load i64, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !27
  store i64 %162, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !27
  %163 = load i128, i128* %XMM0_val, !mcsema_real_eip !27
  store i128 %163, i128* %XMM0, align 1, !mcsema_real_eip !27
  %164 = load i128, i128* %XMM1_val, !mcsema_real_eip !27
  store i128 %164, i128* %XMM1, align 1, !mcsema_real_eip !27
  %165 = load i128, i128* %XMM2_val, !mcsema_real_eip !27
  store i128 %165, i128* %XMM2, align 1, !mcsema_real_eip !27
  %166 = load i128, i128* %XMM3_val, !mcsema_real_eip !27
  store i128 %166, i128* %XMM3, align 1, !mcsema_real_eip !27
  %167 = load i128, i128* %XMM4_val, !mcsema_real_eip !27
  store i128 %167, i128* %XMM4, align 1, !mcsema_real_eip !27
  %168 = load i128, i128* %XMM5_val, !mcsema_real_eip !27
  store i128 %168, i128* %XMM5, align 1, !mcsema_real_eip !27
  %169 = load i128, i128* %XMM6_val, !mcsema_real_eip !27
  store i128 %169, i128* %XMM6, align 1, !mcsema_real_eip !27
  %170 = load i128, i128* %XMM7_val, !mcsema_real_eip !27
  store i128 %170, i128* %XMM7, align 1, !mcsema_real_eip !27
  %171 = load i128, i128* %XMM8_val, !mcsema_real_eip !27
  store i128 %171, i128* %XMM8, align 1, !mcsema_real_eip !27
  %172 = load i128, i128* %XMM9_val, !mcsema_real_eip !27
  store i128 %172, i128* %XMM9, align 1, !mcsema_real_eip !27
  %173 = load i128, i128* %XMM10_val, !mcsema_real_eip !27
  store i128 %173, i128* %XMM10, align 1, !mcsema_real_eip !27
  %174 = load i128, i128* %XMM11_val, !mcsema_real_eip !27
  store i128 %174, i128* %XMM11, align 1, !mcsema_real_eip !27
  %175 = load i128, i128* %XMM12_val, !mcsema_real_eip !27
  store i128 %175, i128* %XMM12, align 1, !mcsema_real_eip !27
  %176 = load i128, i128* %XMM13_val, !mcsema_real_eip !27
  store i128 %176, i128* %XMM13, align 1, !mcsema_real_eip !27
  %177 = load i128, i128* %XMM14_val, !mcsema_real_eip !27
  store i128 %177, i128* %XMM14, align 1, !mcsema_real_eip !27
  %178 = load i128, i128* %XMM15_val, !mcsema_real_eip !27
  store i128 %178, i128* %XMM15, align 1, !mcsema_real_eip !27
  %179 = load i64, i64* %STACK_BASE_val, !mcsema_real_eip !27
  store i64 %179, i64* %STACK_BASE, align 1, !mcsema_real_eip !27
  %180 = load i64, i64* %STACK_LIMIT_val, !mcsema_real_eip !27
  store i64 %180, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

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
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

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

attributes #0 = { alwaysinline }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!5 = !{i64 7, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!6 = !{i64 14, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!7 = !{i64 19, [19 x i8] c"\09subl\09$74632, %eax\00"}
!8 = !{i64 24, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!9 = !{i64 27, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!10 = !{i64 30, [7 x i8] c"\09jg\0986\00"}
!11 = !{i64 122, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!12 = !{i64 125, [24 x i8] c"\09addl\09$4294892663, %eax\00"}
!13 = !{i64 130, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!14 = !{i64 132, [16 x i8] c"\09subl\09$10, %eax\00"}
!15 = !{i64 135, [22 x i8] c"\09movq\09%rcx, -48(%rbp)\00"}
!16 = !{i64 139, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!17 = !{i64 142, [8 x i8] c"\09ja\09318\00"}
!18 = !{i64 44, [17 x i8] c"\09subl\09$254, %eax\00"}
!19 = !{i64 49, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!20 = !{i64 52, [7 x i8] c"\09jg\0942\00"}
!21 = !{i64 100, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!22 = !{i64 466, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!23 = !{i64 469, [15 x i8] c"\09addl\09$0, %eax\00"}
!24 = !{i64 474, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!25 = !{i64 477, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!26 = !{i64 480, [11 x i8] c"\09popq\09%rbp\00"}
!27 = !{i64 481, [6 x i8] c"\09retq\00"}
!28 = !{i64 148, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!29 = !{i64 152, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!30 = !{i64 160, [12 x i8] c"\09jmpq\09*%rcx\00"}
!31 = !{i64 103, [17 x i8] c"\09subl\09$255, %eax\00"}
!32 = !{i64 108, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!33 = !{i64 111, [8 x i8] c"\09je\09173\00"}
!34 = !{i64 66, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!35 = !{i64 68, [17 x i8] c"\09movl\09%ecx, %edx\00"}
!36 = !{i64 70, [16 x i8] c"\09subl\09$19, %eax\00"}
!37 = !{i64 73, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!38 = !{i64 76, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!39 = !{i64 80, [8 x i8] c"\09ja\09380\00"}
!40 = !{i64 290, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!41 = !{i64 293, [17 x i8] c"\09addl\09$255, %eax\00"}
!42 = !{i64 298, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!43 = !{i64 86, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!44 = !{i64 90, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!45 = !{i64 98, [12 x i8] c"\09jmpq\09*%rcx\00"}
!46 = !{i64 306, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!47 = !{i64 309, [19 x i8] c"\09addl\09$74633, %eax\00"}
!48 = !{i64 314, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!49 = !{i64 322, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!50 = !{i64 325, [19 x i8] c"\09addl\09$74634, %eax\00"}
!51 = !{i64 330, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!52 = !{i64 338, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!53 = !{i64 341, [19 x i8] c"\09addl\09$74635, %eax\00"}
!54 = !{i64 346, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!55 = !{i64 354, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!56 = !{i64 357, [19 x i8] c"\09addl\09$74636, %eax\00"}
!57 = !{i64 362, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!58 = !{i64 370, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!59 = !{i64 373, [19 x i8] c"\09addl\09$74637, %eax\00"}
!60 = !{i64 378, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!61 = !{i64 386, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!62 = !{i64 389, [19 x i8] c"\09addl\09$74639, %eax\00"}
!63 = !{i64 394, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!64 = !{i64 402, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!65 = !{i64 405, [19 x i8] c"\09addl\09$74640, %eax\00"}
!66 = !{i64 410, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!67 = !{i64 418, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!68 = !{i64 421, [19 x i8] c"\09addl\09$74641, %eax\00"}
!69 = !{i64 426, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!70 = !{i64 434, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!71 = !{i64 437, [19 x i8] c"\09addl\09$74642, %eax\00"}
!72 = !{i64 442, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!73 = !{i64 450, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!74 = !{i64 453, [19 x i8] c"\09addl\09$74643, %eax\00"}
!75 = !{i64 458, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!76 = !{i64 162, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!77 = !{i64 165, [15 x i8] c"\09addl\09$0, %eax\00"}
!78 = !{i64 170, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!79 = !{i64 178, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!80 = !{i64 181, [15 x i8] c"\09addl\09$1, %eax\00"}
!81 = !{i64 186, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!82 = !{i64 194, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!83 = !{i64 197, [15 x i8] c"\09addl\09$2, %eax\00"}
!84 = !{i64 202, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!85 = !{i64 210, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!86 = !{i64 213, [15 x i8] c"\09addl\09$4, %eax\00"}
!87 = !{i64 218, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!88 = !{i64 226, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!89 = !{i64 229, [15 x i8] c"\09addl\09$6, %eax\00"}
!90 = !{i64 234, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!91 = !{i64 242, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!92 = !{i64 245, [16 x i8] c"\09addl\09$12, %eax\00"}
!93 = !{i64 250, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!94 = !{i64 258, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!95 = !{i64 261, [16 x i8] c"\09addl\09$13, %eax\00"}
!96 = !{i64 266, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!97 = !{i64 274, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!98 = !{i64 277, [16 x i8] c"\09addl\09$19, %eax\00"}
!99 = !{i64 282, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
