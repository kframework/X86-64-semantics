; ModuleID = 'Output/test_20.clang.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%1 = type <{ [468 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2a3 = internal constant %0 <{ void (%struct.regs*)* @sub_181, void (%struct.regs*)* @sub_19a, void (%struct.regs*)* @sub_1b3, void (%struct.regs*)* @sub_1cc, void (%struct.regs*)* @sub_1e5, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_1fe, void (%struct.regs*)* @sub_217, void (%struct.regs*)* @sub_230, void (%struct.regs*)* @sub_249, void (%struct.regs*)* @sub_262, void (%struct.regs*)* @sub_a0, void (%struct.regs*)* @sub_b9, void (%struct.regs*)* @sub_d2, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_eb, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_104, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_11d, void (%struct.regs*)* @sub_136, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_14f }>, align 64
@data_0x39b = internal constant %1 <{ [468 x i8] c"Input was zero\0A\00Input was one\0A\00Input was two\0A\00Input was four\0A\00Input was six\0A\00Input was twelve\0A\00Input was thirteen\0A\00Input was nineteen\0A\00Input was two hundred fifty-five\0A\00Really big input:  0x12389\0A\00Really big input:  0x1238A\0A\00Really big input:  0x1238B\0A\00Really big input:  0x1238C\0A\00Really big input:  0x1238D\0A\00Really big input:  0x1238F\0A\00Really big input:  0x12390\0A\00Really big input:  0x12391\0A\00Really big input:  0x12392\0A\00Really big input:  0x12393\0A\00Unknown input: %d\0A\00" }>, align 64

; Function Attrs: alwaysinline
define internal fastcc void @do_call_value(%struct.regs* %reg_context, i64 %ptr) #0 {
  %1 = inttoptr i64 %ptr to void (%struct.regs*)*
  tail call x86_64_sysvcc void %1(%struct.regs* %reg_context)
  ret void
}

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
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
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !2
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
  %81 = add i64 %78, -152
  store i64 %81, i64* %RSP_val, !mcsema_real_eip !4
  %82 = add i64 %78, -12, !mcsema_real_eip !5
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !5
  %84 = load i64* %RDI_val, !mcsema_real_eip !5
  %85 = trunc i64 %84 to i32, !mcsema_real_eip !5
  %86 = bitcast i64* %83 to i32*
  store i32 %85, i32* %86, !mcsema_real_eip !5
  %87 = load i64* %RDI_val, !mcsema_real_eip !6
  %88 = and i64 %87, 4294967295
  store i64 %88, i64* %RAX_val, !mcsema_real_eip !6
  %89 = trunc i64 %87 to i32, !mcsema_real_eip !7
  %90 = add i32 %89, -74632
  %91 = xor i32 %90, %89, !mcsema_real_eip !7
  %92 = and i32 %91, 16, !mcsema_real_eip !7
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !7
  store i1 %93, i1* %AF_val, !mcsema_real_eip !7
  %94 = trunc i32 %90 to i8, !mcsema_real_eip !7
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !7
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF_val, !mcsema_real_eip !7
  %98 = icmp eq i32 %90, 0, !mcsema_real_eip !7
  store i1 %98, i1* %ZF_val, !mcsema_real_eip !7
  %99 = icmp slt i32 %90, 0
  store i1 %99, i1* %SF_val, !mcsema_real_eip !7
  %100 = icmp ult i32 %89, 74632, !mcsema_real_eip !7
  store i1 %100, i1* %CF_val, !mcsema_real_eip !7
  %101 = and i32 %91, %89, !mcsema_real_eip !7
  %102 = icmp slt i32 %101, 0
  store i1 %102, i1* %OF_val, !mcsema_real_eip !7
  %103 = zext i32 %90 to i64, !mcsema_real_eip !7
  store i64 %103, i64* %RDI_val, !mcsema_real_eip !7
  %104 = load i64* %RBP_val, !mcsema_real_eip !8
  %105 = add i64 %104, -8, !mcsema_real_eip !8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !8
  %107 = load i64* %RAX_val, !mcsema_real_eip !8
  %108 = trunc i64 %107 to i32, !mcsema_real_eip !8
  %109 = bitcast i64* %106 to i32*
  store i32 %108, i32* %109, !mcsema_real_eip !8
  %110 = load i64* %RBP_val, !mcsema_real_eip !9
  %111 = add i64 %110, -12, !mcsema_real_eip !9
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !9
  %113 = load i64* %RDI_val, !mcsema_real_eip !9
  %114 = trunc i64 %113 to i32, !mcsema_real_eip !9
  %115 = bitcast i64* %112 to i32*
  store i32 %114, i32* %115, !mcsema_real_eip !9
  %116 = load i1* %OF_val, !mcsema_real_eip !10
  %117 = load i1* %SF_val, !mcsema_real_eip !10
  %tmp = xor i1 %117, %116
  %118 = load i1* %ZF_val, !mcsema_real_eip !10
  %.demorgan = or i1 %118, %tmp
  %119 = load i64* %RBP_val, !mcsema_real_eip !11
  %120 = add i64 %119, -8, !mcsema_real_eip !11
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !11
  %122 = bitcast i64* %121 to i32*
  %123 = load i32* %122, !mcsema_real_eip !11
  %124 = zext i32 %123 to i64, !mcsema_real_eip !11
  store i64 %124, i64* %RAX_val, !mcsema_real_eip !11
  br i1 %.demorgan, label %block_0x27, label %block_0x78, !mcsema_real_eip !10

block_0x78:                                       ; preds = %entry
  %125 = add i32 %123, -74633
  %126 = zext i32 %125 to i64, !mcsema_real_eip !12
  store i64 %126, i64* %RCX_val, !mcsema_real_eip !13
  %127 = add i32 %123, -74643
  %128 = xor i32 %127, %125, !mcsema_real_eip !14
  %129 = and i32 %128, 16, !mcsema_real_eip !14
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !14
  store i1 %130, i1* %AF_val, !mcsema_real_eip !14
  %131 = trunc i32 %127 to i8, !mcsema_real_eip !14
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !14
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF_val, !mcsema_real_eip !14
  %135 = icmp eq i32 %127, 0, !mcsema_real_eip !14
  store i1 %135, i1* %ZF_val, !mcsema_real_eip !14
  %136 = icmp slt i32 %127, 0
  store i1 %136, i1* %SF_val, !mcsema_real_eip !14
  %137 = icmp ult i32 %125, 10, !mcsema_real_eip !14
  store i1 %137, i1* %CF_val, !mcsema_real_eip !14
  %138 = and i32 %128, %125, !mcsema_real_eip !14
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF_val, !mcsema_real_eip !14
  %140 = zext i32 %127 to i64, !mcsema_real_eip !14
  store i64 %140, i64* %RAX_val, !mcsema_real_eip !14
  %141 = load i64* %RBP_val, !mcsema_real_eip !15
  %142 = add i64 %141, -48, !mcsema_real_eip !15
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !15
  %144 = load i64* %RCX_val, !mcsema_real_eip !15
  store i64 %144, i64* %143, !mcsema_real_eip !15
  %145 = load i64* %RBP_val, !mcsema_real_eip !16
  %146 = add i64 %145, -52, !mcsema_real_eip !16
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !16
  %148 = load i64* %RAX_val, !mcsema_real_eip !16
  %149 = trunc i64 %148 to i32, !mcsema_real_eip !16
  %150 = bitcast i64* %147 to i32*
  store i32 %149, i32* %150, !mcsema_real_eip !16
  %151 = load i1* %ZF_val, !mcsema_real_eip !17
  %152 = load i1* %CF_val, !mcsema_real_eip !17
  %.demorgan566 = or i1 %152, %151
  br i1 %.demorgan566, label %block_0x92, label %block_0x27b, !mcsema_real_eip !17

block_0x27:                                       ; preds = %entry
  %153 = add i32 %123, -254
  %154 = xor i32 %153, %123, !mcsema_real_eip !18
  %155 = and i32 %154, 16
  %156 = icmp eq i32 %155, 0
  store i1 %156, i1* %AF_val, !mcsema_real_eip !18
  %157 = trunc i32 %153 to i8, !mcsema_real_eip !18
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !18
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF_val, !mcsema_real_eip !18
  %161 = icmp eq i32 %153, 0, !mcsema_real_eip !18
  store i1 %161, i1* %ZF_val, !mcsema_real_eip !18
  %162 = icmp slt i32 %153, 0
  store i1 %162, i1* %SF_val, !mcsema_real_eip !18
  %163 = icmp ult i32 %123, 254, !mcsema_real_eip !18
  store i1 %163, i1* %CF_val, !mcsema_real_eip !18
  %164 = and i32 %154, %123, !mcsema_real_eip !18
  %165 = icmp slt i32 %164, 0
  store i1 %165, i1* %OF_val, !mcsema_real_eip !18
  %166 = zext i32 %153 to i64, !mcsema_real_eip !18
  store i64 %166, i64* %RAX_val, !mcsema_real_eip !18
  %167 = load i64* %RBP_val, !mcsema_real_eip !19
  %168 = add i64 %167, -16, !mcsema_real_eip !19
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !19
  %170 = bitcast i64* %169 to i32*
  store i32 %153, i32* %170, !mcsema_real_eip !19
  %171 = load i1* %OF_val, !mcsema_real_eip !20
  %172 = load i1* %SF_val, !mcsema_real_eip !20
  %tmp556 = xor i1 %172, %171
  %173 = load i1* %ZF_val, !mcsema_real_eip !20
  %.demorgan558 = or i1 %173, %tmp556
  %174 = load i64* %RBP_val, !mcsema_real_eip !21
  %175 = add i64 %174, -8, !mcsema_real_eip !21
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !21
  %177 = bitcast i64* %176 to i32*
  %178 = load i32* %177, !mcsema_real_eip !21
  %179 = zext i32 %178 to i64, !mcsema_real_eip !21
  store i64 %179, i64* %RAX_val, !mcsema_real_eip !21
  br i1 %.demorgan558, label %block_0x3d, label %block_0x62, !mcsema_real_eip !20

block_0x27b:                                      ; preds = %block_0x3d, %block_0x62, %block_0x78
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 449), i64* %RDI_val, !mcsema_real_eip !22
  %180 = load i64* %RBP_val, !mcsema_real_eip !23
  %181 = add i64 %180, -4, !mcsema_real_eip !23
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !23
  %183 = bitcast i64* %182 to i32*
  %184 = load i32* %183, !mcsema_real_eip !23
  %185 = zext i32 %184 to i64, !mcsema_real_eip !23
  store i64 %185, i64* %RSI_val, !mcsema_real_eip !23
  %186 = load i64* %RDI_val, !mcsema_real_eip !24
  %187 = load i64* %RDX_val, !mcsema_real_eip !24
  %188 = load i64* %RCX_val, !mcsema_real_eip !24
  %189 = tail call x86_64_sysvcc i64 @printf(i64 %186, i64 %185, i64 %187, i64 %188), !mcsema_real_eip !24
  %190 = load i64* %RBP_val, !mcsema_real_eip !25
  %191 = add i64 %190, -132, !mcsema_real_eip !25
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !25
  %193 = trunc i64 %189 to i32, !mcsema_real_eip !25
  %194 = bitcast i64* %192 to i32*
  store i32 %193, i32* %194, !mcsema_real_eip !25
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %195 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %195, i64 144)
  %196 = extractvalue { i64, i1 } %uadd, 0
  %197 = xor i64 %196, %195, !mcsema_real_eip !27
  %198 = and i64 %197, 16
  %199 = icmp eq i64 %198, 0
  store i1 %199, i1* %AF_val, !mcsema_real_eip !27
  %200 = icmp slt i64 %196, 0
  store i1 %200, i1* %SF_val, !mcsema_real_eip !27
  %201 = icmp eq i64 %196, 0, !mcsema_real_eip !27
  store i1 %201, i1* %ZF_val, !mcsema_real_eip !27
  %202 = xor i64 %195, -9223372036854775808, !mcsema_real_eip !27
  %203 = and i64 %197, %202, !mcsema_real_eip !27
  %204 = icmp slt i64 %203, 0
  store i1 %204, i1* %OF_val, !mcsema_real_eip !27
  %205 = trunc i64 %196 to i8, !mcsema_real_eip !27
  %206 = tail call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !27
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  store i1 %208, i1* %PF_val, !mcsema_real_eip !27
  %209 = extractvalue { i64, i1 } %uadd, 1
  store i1 %209, i1* %CF_val, !mcsema_real_eip !27
  store i64 %196, i64* %RSP_val, !mcsema_real_eip !27
  %210 = inttoptr i64 %196 to i64*, !mcsema_real_eip !28
  %211 = load i64* %210, !mcsema_real_eip !28
  store i64 %211, i64* %RBP_val, !mcsema_real_eip !28
  %212 = add i64 %196, 16, !mcsema_real_eip !29
  store i64 %212, i64* %RSP_val, !mcsema_real_eip !29
  %213 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %213, i64* %RAX, !mcsema_real_eip !29
  %214 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %214, i64* %RBX, !mcsema_real_eip !29
  %215 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %215, i64* %RCX, !mcsema_real_eip !29
  %216 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %216, i64* %RDX, !mcsema_real_eip !29
  %217 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %217, i64* %RSI, !mcsema_real_eip !29
  %218 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %218, i64* %RDI, !mcsema_real_eip !29
  %219 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %219, i64* %RSP, !mcsema_real_eip !29
  %220 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %220, i64* %RBP, !mcsema_real_eip !29
  %221 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %221, i64* %R8, !mcsema_real_eip !29
  %222 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %222, i64* %R9, !mcsema_real_eip !29
  %223 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %223, i64* %R10, !mcsema_real_eip !29
  %224 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %224, i64* %R11, !mcsema_real_eip !29
  %225 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %225, i64* %R12, !mcsema_real_eip !29
  %226 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %226, i64* %R13, !mcsema_real_eip !29
  %227 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %227, i64* %R14, !mcsema_real_eip !29
  %228 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %228, i64* %R15, !mcsema_real_eip !29
  %229 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %229, i64* %RIP, !mcsema_real_eip !29
  %230 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %230, i1* %CF, align 1, !mcsema_real_eip !29
  %231 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %231, i1* %PF, align 1, !mcsema_real_eip !29
  %232 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %232, i1* %AF, align 1, !mcsema_real_eip !29
  %233 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %233, i1* %ZF, align 1, !mcsema_real_eip !29
  %234 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %234, i1* %SF, align 1, !mcsema_real_eip !29
  %235 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %235, i1* %OF, align 1, !mcsema_real_eip !29
  %236 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %236, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %237 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %237, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %238 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %238, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %239 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %239, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %240 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %240, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %241 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %241, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %242 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %242, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %243 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %243, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %244 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %244, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %245 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %245, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %246 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %246, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %247 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %247, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %248 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %248, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %249 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %249, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %250 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %250, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %251 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %251, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %252 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %252, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %253 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %253, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %254 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %254, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %255 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %255, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %256 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %256, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %257 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %257, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %258 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %258, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %259 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %259, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %260 = load i64* %53, align 4
  store i64 %260, i64* %52, align 4
  %261 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %261, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %262 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %262, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %263 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %263, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %264 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %264, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %265 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %265, i128* %XMM0, align 1, !mcsema_real_eip !29
  %266 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %266, i128* %XMM1, align 1, !mcsema_real_eip !29
  %267 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %267, i128* %XMM2, align 1, !mcsema_real_eip !29
  %268 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %268, i128* %XMM3, align 1, !mcsema_real_eip !29
  %269 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %269, i128* %XMM4, align 1, !mcsema_real_eip !29
  %270 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %270, i128* %XMM5, align 1, !mcsema_real_eip !29
  %271 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %271, i128* %XMM6, align 1, !mcsema_real_eip !29
  %272 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %272, i128* %XMM7, align 1, !mcsema_real_eip !29
  %273 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %273, i128* %XMM8, align 1, !mcsema_real_eip !29
  %274 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %274, i128* %XMM9, align 1, !mcsema_real_eip !29
  %275 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %275, i128* %XMM10, align 1, !mcsema_real_eip !29
  %276 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %276, i128* %XMM11, align 1, !mcsema_real_eip !29
  %277 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %277, i128* %XMM12, align 1, !mcsema_real_eip !29
  %278 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %278, i128* %XMM13, align 1, !mcsema_real_eip !29
  %279 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %279, i128* %XMM14, align 1, !mcsema_real_eip !29
  %280 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %280, i128* %XMM15, align 1, !mcsema_real_eip !29
  %281 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %281, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %282 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %282, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29

block_0x92:                                       ; preds = %block_0x78
  %283 = load i64* %RBP_val, !mcsema_real_eip !30
  %284 = add i64 %283, -48, !mcsema_real_eip !30
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !30
  %286 = load i64* %285, !mcsema_real_eip !30
  store i64 %286, i64* %RAX_val, !mcsema_real_eip !30
  %287 = shl i64 %286, 3
  %288 = add i64 %287, ptrtoint (%0* @data_0x2a3 to i64), !mcsema_real_eip !31
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !31
  %290 = load i64* %289, !mcsema_real_eip !31
  store i64 %290, i64* %RCX_val, !mcsema_real_eip !31
  store i64 %286, i64* %RAX, !mcsema_real_eip !32
  %291 = load i64* %RBX_val, !mcsema_real_eip !32
  store i64 %291, i64* %RBX, !mcsema_real_eip !32
  %292 = load i64* %RCX_val, !mcsema_real_eip !32
  store i64 %292, i64* %RCX, !mcsema_real_eip !32
  %293 = load i64* %RDX_val, !mcsema_real_eip !32
  store i64 %293, i64* %RDX, !mcsema_real_eip !32
  %294 = load i64* %RSI_val, !mcsema_real_eip !32
  store i64 %294, i64* %RSI, !mcsema_real_eip !32
  %295 = load i64* %RDI_val, !mcsema_real_eip !32
  store i64 %295, i64* %RDI, !mcsema_real_eip !32
  %296 = load i64* %RSP_val, !mcsema_real_eip !32
  store i64 %296, i64* %RSP, !mcsema_real_eip !32
  %297 = load i64* %RBP_val, !mcsema_real_eip !32
  store i64 %297, i64* %RBP, !mcsema_real_eip !32
  %298 = load i64* %R8_val, !mcsema_real_eip !32
  store i64 %298, i64* %R8, !mcsema_real_eip !32
  %299 = load i64* %R9_val, !mcsema_real_eip !32
  store i64 %299, i64* %R9, !mcsema_real_eip !32
  %300 = load i64* %R10_val, !mcsema_real_eip !32
  store i64 %300, i64* %R10, !mcsema_real_eip !32
  %301 = load i64* %R11_val, !mcsema_real_eip !32
  store i64 %301, i64* %R11, !mcsema_real_eip !32
  %302 = load i64* %R12_val, !mcsema_real_eip !32
  store i64 %302, i64* %R12, !mcsema_real_eip !32
  %303 = load i64* %R13_val, !mcsema_real_eip !32
  store i64 %303, i64* %R13, !mcsema_real_eip !32
  %304 = load i64* %R14_val, !mcsema_real_eip !32
  store i64 %304, i64* %R14, !mcsema_real_eip !32
  %305 = load i64* %R15_val, !mcsema_real_eip !32
  store i64 %305, i64* %R15, !mcsema_real_eip !32
  %306 = load i64* %RIP_val, !mcsema_real_eip !32
  store i64 %306, i64* %RIP, !mcsema_real_eip !32
  %307 = load i1* %CF_val, !mcsema_real_eip !32
  store i1 %307, i1* %CF, align 1, !mcsema_real_eip !32
  %308 = load i1* %PF_val, !mcsema_real_eip !32
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !32
  %309 = load i1* %AF_val, !mcsema_real_eip !32
  store i1 %309, i1* %AF, align 1, !mcsema_real_eip !32
  %310 = load i1* %ZF_val, !mcsema_real_eip !32
  store i1 %310, i1* %ZF, align 1, !mcsema_real_eip !32
  %311 = load i1* %SF_val, !mcsema_real_eip !32
  store i1 %311, i1* %SF, align 1, !mcsema_real_eip !32
  %312 = load i1* %OF_val, !mcsema_real_eip !32
  store i1 %312, i1* %OF, align 1, !mcsema_real_eip !32
  %313 = load i1* %DF_val, !mcsema_real_eip !32
  store i1 %313, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %314 = load i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %314, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %315 = load i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %315, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %316 = load i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %316, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %317 = load i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %317, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %318 = load i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %318, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %319 = load i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %319, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %320 = load i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %320, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %321 = load i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %321, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %322 = load i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %322, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %323 = load i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %323, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %324 = load i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %324, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %325 = load i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %325, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %326 = load i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %326, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %327 = load i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %327, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %328 = load i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %328, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %329 = load i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %329, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %330 = load i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %330, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %331 = load i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %331, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %332 = load i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %332, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %333 = load i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %333, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %334 = load i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %334, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %335 = load i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %335, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %336 = load i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %336, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %337 = load i64* %53, align 4
  store i64 %337, i64* %52, align 4
  %338 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %338, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %339 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %339, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %340 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %340, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %341 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %341, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %342 = load i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %342, i128* %XMM0, align 1, !mcsema_real_eip !32
  %343 = load i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %343, i128* %XMM1, align 1, !mcsema_real_eip !32
  %344 = load i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %344, i128* %XMM2, align 1, !mcsema_real_eip !32
  %345 = load i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %345, i128* %XMM3, align 1, !mcsema_real_eip !32
  %346 = load i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %346, i128* %XMM4, align 1, !mcsema_real_eip !32
  %347 = load i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %347, i128* %XMM5, align 1, !mcsema_real_eip !32
  %348 = load i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %348, i128* %XMM6, align 1, !mcsema_real_eip !32
  %349 = load i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %349, i128* %XMM7, align 1, !mcsema_real_eip !32
  %350 = load i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %350, i128* %XMM8, align 1, !mcsema_real_eip !32
  %351 = load i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %351, i128* %XMM9, align 1, !mcsema_real_eip !32
  %352 = load i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %352, i128* %XMM10, align 1, !mcsema_real_eip !32
  %353 = load i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %353, i128* %XMM11, align 1, !mcsema_real_eip !32
  %354 = load i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %354, i128* %XMM12, align 1, !mcsema_real_eip !32
  %355 = load i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %355, i128* %XMM13, align 1, !mcsema_real_eip !32
  %356 = load i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %356, i128* %XMM14, align 1, !mcsema_real_eip !32
  %357 = load i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %357, i128* %XMM15, align 1, !mcsema_real_eip !32
  %358 = load i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %358, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %359 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %359, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  tail call fastcc void @do_call_value(%struct.regs* %0, i64 %290), !mcsema_real_eip !32
  %360 = load i64* %RAX, !mcsema_real_eip !32
  store i64 %360, i64* %RAX_val, !mcsema_real_eip !32
  %361 = load i64* %RBX, !mcsema_real_eip !32
  store i64 %361, i64* %RBX_val, !mcsema_real_eip !32
  %362 = load i64* %RCX, !mcsema_real_eip !32
  store i64 %362, i64* %RCX_val, !mcsema_real_eip !32
  %363 = load i64* %RDX, !mcsema_real_eip !32
  store i64 %363, i64* %RDX_val, !mcsema_real_eip !32
  %364 = load i64* %RSI, !mcsema_real_eip !32
  store i64 %364, i64* %RSI_val, !mcsema_real_eip !32
  %365 = load i64* %RDI, !mcsema_real_eip !32
  store i64 %365, i64* %RDI_val, !mcsema_real_eip !32
  %366 = load i64* %RSP, !mcsema_real_eip !32
  store i64 %366, i64* %RSP_val, !mcsema_real_eip !32
  %367 = load i64* %RBP, !mcsema_real_eip !32
  store i64 %367, i64* %RBP_val, !mcsema_real_eip !32
  %368 = load i64* %R8, !mcsema_real_eip !32
  store i64 %368, i64* %R8_val, !mcsema_real_eip !32
  %369 = load i64* %R9, !mcsema_real_eip !32
  store i64 %369, i64* %R9_val, !mcsema_real_eip !32
  %370 = load i64* %R10, !mcsema_real_eip !32
  store i64 %370, i64* %R10_val, !mcsema_real_eip !32
  %371 = load i64* %R11, !mcsema_real_eip !32
  store i64 %371, i64* %R11_val, !mcsema_real_eip !32
  %372 = load i64* %R12, !mcsema_real_eip !32
  store i64 %372, i64* %R12_val, !mcsema_real_eip !32
  %373 = load i64* %R13, !mcsema_real_eip !32
  store i64 %373, i64* %R13_val, !mcsema_real_eip !32
  %374 = load i64* %R14, !mcsema_real_eip !32
  store i64 %374, i64* %R14_val, !mcsema_real_eip !32
  %375 = load i64* %R15, !mcsema_real_eip !32
  store i64 %375, i64* %R15_val, !mcsema_real_eip !32
  %376 = load i64* %RIP, !mcsema_real_eip !32
  store i64 %376, i64* %RIP_val, !mcsema_real_eip !32
  %377 = load i1* %CF, align 1, !mcsema_real_eip !32
  store i1 %377, i1* %CF_val, !mcsema_real_eip !32
  %378 = load i1* %PF, align 1, !mcsema_real_eip !32
  store i1 %378, i1* %PF_val, !mcsema_real_eip !32
  %379 = load i1* %AF, align 1, !mcsema_real_eip !32
  store i1 %379, i1* %AF_val, !mcsema_real_eip !32
  %380 = load i1* %ZF, align 1, !mcsema_real_eip !32
  store i1 %380, i1* %ZF_val, !mcsema_real_eip !32
  %381 = load i1* %SF, align 1, !mcsema_real_eip !32
  store i1 %381, i1* %SF_val, !mcsema_real_eip !32
  %382 = load i1* %OF, align 1, !mcsema_real_eip !32
  store i1 %382, i1* %OF_val, !mcsema_real_eip !32
  %383 = load i1* %DF, align 1, !mcsema_real_eip !32
  store i1 %383, i1* %DF_val, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !32
  %384 = load i1* %FPU_B, align 1, !mcsema_real_eip !32
  store i1 %384, i1* %FPU_B_val, !mcsema_real_eip !32
  %385 = load i1* %FPU_C3, align 1, !mcsema_real_eip !32
  store i1 %385, i1* %FPU_C3_val, !mcsema_real_eip !32
  %386 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  store i3 %386, i3* %FPU_TOP_val, !mcsema_real_eip !32
  %387 = load i1* %FPU_C2, align 1, !mcsema_real_eip !32
  store i1 %387, i1* %FPU_C2_val, !mcsema_real_eip !32
  %388 = load i1* %FPU_C1, align 1, !mcsema_real_eip !32
  store i1 %388, i1* %FPU_C1_val, !mcsema_real_eip !32
  %389 = load i1* %FPU_C0, align 1, !mcsema_real_eip !32
  store i1 %389, i1* %FPU_C0_val, !mcsema_real_eip !32
  %390 = load i1* %FPU_ES, align 1, !mcsema_real_eip !32
  store i1 %390, i1* %FPU_ES_val, !mcsema_real_eip !32
  %391 = load i1* %FPU_SF, align 1, !mcsema_real_eip !32
  store i1 %391, i1* %FPU_SF_val, !mcsema_real_eip !32
  %392 = load i1* %FPU_PE, align 1, !mcsema_real_eip !32
  store i1 %392, i1* %FPU_PE_val, !mcsema_real_eip !32
  %393 = load i1* %FPU_UE, align 1, !mcsema_real_eip !32
  store i1 %393, i1* %FPU_UE_val, !mcsema_real_eip !32
  %394 = load i1* %FPU_OE, align 1, !mcsema_real_eip !32
  store i1 %394, i1* %FPU_OE_val, !mcsema_real_eip !32
  %395 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  store i1 %395, i1* %FPU_ZE_val, !mcsema_real_eip !32
  %396 = load i1* %FPU_DE, align 1, !mcsema_real_eip !32
  store i1 %396, i1* %FPU_DE_val, !mcsema_real_eip !32
  %397 = load i1* %FPU_IE, align 1, !mcsema_real_eip !32
  store i1 %397, i1* %FPU_IE_val, !mcsema_real_eip !32
  %398 = load i1* %FPU_X, align 1, !mcsema_real_eip !32
  store i1 %398, i1* %FPU_X_val, !mcsema_real_eip !32
  %399 = load i2* %FPU_RC, align 1, !mcsema_real_eip !32
  store i2 %399, i2* %FPU_RC_val, !mcsema_real_eip !32
  %400 = load i2* %FPU_PC, align 1, !mcsema_real_eip !32
  store i2 %400, i2* %FPU_PC_val, !mcsema_real_eip !32
  %401 = load i1* %FPU_PM, align 1, !mcsema_real_eip !32
  store i1 %401, i1* %FPU_PM_val, !mcsema_real_eip !32
  %402 = load i1* %FPU_UM, align 1, !mcsema_real_eip !32
  store i1 %402, i1* %FPU_UM_val, !mcsema_real_eip !32
  %403 = load i1* %FPU_OM, align 1, !mcsema_real_eip !32
  store i1 %403, i1* %FPU_OM_val, !mcsema_real_eip !32
  %404 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  store i1 %404, i1* %FPU_ZM_val, !mcsema_real_eip !32
  %405 = load i1* %FPU_DM, align 1, !mcsema_real_eip !32
  store i1 %405, i1* %FPU_DM_val, !mcsema_real_eip !32
  %406 = load i1* %FPU_IM, align 1, !mcsema_real_eip !32
  store i1 %406, i1* %FPU_IM_val, !mcsema_real_eip !32
  %407 = load i64* %52, align 4
  store i64 %407, i64* %53, align 4
  %408 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  store i16 %408, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  %409 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !32
  store i64 %409, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  %410 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  store i16 %410, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  %411 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !32
  store i64 %411, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  %412 = load i128* %XMM0, align 1, !mcsema_real_eip !32
  store i128 %412, i128* %XMM0_val, !mcsema_real_eip !32
  %413 = load i128* %XMM1, align 1, !mcsema_real_eip !32
  store i128 %413, i128* %XMM1_val, !mcsema_real_eip !32
  %414 = load i128* %XMM2, align 1, !mcsema_real_eip !32
  store i128 %414, i128* %XMM2_val, !mcsema_real_eip !32
  %415 = load i128* %XMM3, align 1, !mcsema_real_eip !32
  store i128 %415, i128* %XMM3_val, !mcsema_real_eip !32
  %416 = load i128* %XMM4, align 1, !mcsema_real_eip !32
  store i128 %416, i128* %XMM4_val, !mcsema_real_eip !32
  %417 = load i128* %XMM5, align 1, !mcsema_real_eip !32
  store i128 %417, i128* %XMM5_val, !mcsema_real_eip !32
  %418 = load i128* %XMM6, align 1, !mcsema_real_eip !32
  store i128 %418, i128* %XMM6_val, !mcsema_real_eip !32
  %419 = load i128* %XMM7, align 1, !mcsema_real_eip !32
  store i128 %419, i128* %XMM7_val, !mcsema_real_eip !32
  %420 = load i128* %XMM8, align 1, !mcsema_real_eip !32
  store i128 %420, i128* %XMM8_val, !mcsema_real_eip !32
  %421 = load i128* %XMM9, align 1, !mcsema_real_eip !32
  store i128 %421, i128* %XMM9_val, !mcsema_real_eip !32
  %422 = load i128* %XMM10, align 1, !mcsema_real_eip !32
  store i128 %422, i128* %XMM10_val, !mcsema_real_eip !32
  %423 = load i128* %XMM11, align 1, !mcsema_real_eip !32
  store i128 %423, i128* %XMM11_val, !mcsema_real_eip !32
  %424 = load i128* %XMM12, align 1, !mcsema_real_eip !32
  store i128 %424, i128* %XMM12_val, !mcsema_real_eip !32
  %425 = load i128* %XMM13, align 1, !mcsema_real_eip !32
  store i128 %425, i128* %XMM13_val, !mcsema_real_eip !32
  %426 = load i128* %XMM14, align 1, !mcsema_real_eip !32
  store i128 %426, i128* %XMM14_val, !mcsema_real_eip !32
  %427 = load i128* %XMM15, align 1, !mcsema_real_eip !32
  store i128 %427, i128* %XMM15_val, !mcsema_real_eip !32
  %428 = load i64* %STACK_BASE, !mcsema_real_eip !32
  store i64 %428, i64* %STACK_BASE_val, !mcsema_real_eip !32
  %429 = load i64* %STACK_LIMIT, !mcsema_real_eip !32
  store i64 %429, i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  %430 = load i64* %RSP_val, !mcsema_real_eip !32
  %431 = add i64 %430, 8, !mcsema_real_eip !32
  store i64 %431, i64* %RSP_val, !mcsema_real_eip !32
  %432 = load i64* %RAX_val, !mcsema_real_eip !32
  store i64 %432, i64* %RAX, !mcsema_real_eip !32
  %433 = load i64* %RBX_val, !mcsema_real_eip !32
  store i64 %433, i64* %RBX, !mcsema_real_eip !32
  %434 = load i64* %RCX_val, !mcsema_real_eip !32
  store i64 %434, i64* %RCX, !mcsema_real_eip !32
  %435 = load i64* %RDX_val, !mcsema_real_eip !32
  store i64 %435, i64* %RDX, !mcsema_real_eip !32
  %436 = load i64* %RSI_val, !mcsema_real_eip !32
  store i64 %436, i64* %RSI, !mcsema_real_eip !32
  %437 = load i64* %RDI_val, !mcsema_real_eip !32
  store i64 %437, i64* %RDI, !mcsema_real_eip !32
  %438 = load i64* %RSP_val, !mcsema_real_eip !32
  store i64 %438, i64* %RSP, !mcsema_real_eip !32
  %439 = load i64* %RBP_val, !mcsema_real_eip !32
  store i64 %439, i64* %RBP, !mcsema_real_eip !32
  %440 = load i64* %R8_val, !mcsema_real_eip !32
  store i64 %440, i64* %R8, !mcsema_real_eip !32
  %441 = load i64* %R9_val, !mcsema_real_eip !32
  store i64 %441, i64* %R9, !mcsema_real_eip !32
  %442 = load i64* %R10_val, !mcsema_real_eip !32
  store i64 %442, i64* %R10, !mcsema_real_eip !32
  %443 = load i64* %R11_val, !mcsema_real_eip !32
  store i64 %443, i64* %R11, !mcsema_real_eip !32
  %444 = load i64* %R12_val, !mcsema_real_eip !32
  store i64 %444, i64* %R12, !mcsema_real_eip !32
  %445 = load i64* %R13_val, !mcsema_real_eip !32
  store i64 %445, i64* %R13, !mcsema_real_eip !32
  %446 = load i64* %R14_val, !mcsema_real_eip !32
  store i64 %446, i64* %R14, !mcsema_real_eip !32
  %447 = load i64* %R15_val, !mcsema_real_eip !32
  store i64 %447, i64* %R15, !mcsema_real_eip !32
  %448 = load i64* %RIP_val, !mcsema_real_eip !32
  store i64 %448, i64* %RIP, !mcsema_real_eip !32
  %449 = load i1* %CF_val, !mcsema_real_eip !32
  store i1 %449, i1* %CF, align 1, !mcsema_real_eip !32
  %450 = load i1* %PF_val, !mcsema_real_eip !32
  store i1 %450, i1* %PF, align 1, !mcsema_real_eip !32
  %451 = load i1* %AF_val, !mcsema_real_eip !32
  store i1 %451, i1* %AF, align 1, !mcsema_real_eip !32
  %452 = load i1* %ZF_val, !mcsema_real_eip !32
  store i1 %452, i1* %ZF, align 1, !mcsema_real_eip !32
  %453 = load i1* %SF_val, !mcsema_real_eip !32
  store i1 %453, i1* %SF, align 1, !mcsema_real_eip !32
  %454 = load i1* %OF_val, !mcsema_real_eip !32
  store i1 %454, i1* %OF, align 1, !mcsema_real_eip !32
  %455 = load i1* %DF_val, !mcsema_real_eip !32
  store i1 %455, i1* %DF, align 1, !mcsema_real_eip !32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !32
  %456 = load i1* %FPU_B_val, !mcsema_real_eip !32
  store i1 %456, i1* %FPU_B, align 1, !mcsema_real_eip !32
  %457 = load i1* %FPU_C3_val, !mcsema_real_eip !32
  store i1 %457, i1* %FPU_C3, align 1, !mcsema_real_eip !32
  %458 = load i3* %FPU_TOP_val, !mcsema_real_eip !32
  store i3 %458, i3* %FPU_TOP, align 1, !mcsema_real_eip !32
  %459 = load i1* %FPU_C2_val, !mcsema_real_eip !32
  store i1 %459, i1* %FPU_C2, align 1, !mcsema_real_eip !32
  %460 = load i1* %FPU_C1_val, !mcsema_real_eip !32
  store i1 %460, i1* %FPU_C1, align 1, !mcsema_real_eip !32
  %461 = load i1* %FPU_C0_val, !mcsema_real_eip !32
  store i1 %461, i1* %FPU_C0, align 1, !mcsema_real_eip !32
  %462 = load i1* %FPU_ES_val, !mcsema_real_eip !32
  store i1 %462, i1* %FPU_ES, align 1, !mcsema_real_eip !32
  %463 = load i1* %FPU_SF_val, !mcsema_real_eip !32
  store i1 %463, i1* %FPU_SF, align 1, !mcsema_real_eip !32
  %464 = load i1* %FPU_PE_val, !mcsema_real_eip !32
  store i1 %464, i1* %FPU_PE, align 1, !mcsema_real_eip !32
  %465 = load i1* %FPU_UE_val, !mcsema_real_eip !32
  store i1 %465, i1* %FPU_UE, align 1, !mcsema_real_eip !32
  %466 = load i1* %FPU_OE_val, !mcsema_real_eip !32
  store i1 %466, i1* %FPU_OE, align 1, !mcsema_real_eip !32
  %467 = load i1* %FPU_ZE_val, !mcsema_real_eip !32
  store i1 %467, i1* %FPU_ZE, align 1, !mcsema_real_eip !32
  %468 = load i1* %FPU_DE_val, !mcsema_real_eip !32
  store i1 %468, i1* %FPU_DE, align 1, !mcsema_real_eip !32
  %469 = load i1* %FPU_IE_val, !mcsema_real_eip !32
  store i1 %469, i1* %FPU_IE, align 1, !mcsema_real_eip !32
  %470 = load i1* %FPU_X_val, !mcsema_real_eip !32
  store i1 %470, i1* %FPU_X, align 1, !mcsema_real_eip !32
  %471 = load i2* %FPU_RC_val, !mcsema_real_eip !32
  store i2 %471, i2* %FPU_RC, align 1, !mcsema_real_eip !32
  %472 = load i2* %FPU_PC_val, !mcsema_real_eip !32
  store i2 %472, i2* %FPU_PC, align 1, !mcsema_real_eip !32
  %473 = load i1* %FPU_PM_val, !mcsema_real_eip !32
  store i1 %473, i1* %FPU_PM, align 1, !mcsema_real_eip !32
  %474 = load i1* %FPU_UM_val, !mcsema_real_eip !32
  store i1 %474, i1* %FPU_UM, align 1, !mcsema_real_eip !32
  %475 = load i1* %FPU_OM_val, !mcsema_real_eip !32
  store i1 %475, i1* %FPU_OM, align 1, !mcsema_real_eip !32
  %476 = load i1* %FPU_ZM_val, !mcsema_real_eip !32
  store i1 %476, i1* %FPU_ZM, align 1, !mcsema_real_eip !32
  %477 = load i1* %FPU_DM_val, !mcsema_real_eip !32
  store i1 %477, i1* %FPU_DM, align 1, !mcsema_real_eip !32
  %478 = load i1* %FPU_IM_val, !mcsema_real_eip !32
  store i1 %478, i1* %FPU_IM, align 1, !mcsema_real_eip !32
  %479 = load i64* %53, align 4
  store i64 %479, i64* %52, align 4
  %480 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !32
  store i16 %480, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !32
  %481 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !32
  store i64 %481, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !32
  %482 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !32
  store i16 %482, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !32
  %483 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !32
  store i64 %483, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !32
  %484 = load i128* %XMM0_val, !mcsema_real_eip !32
  store i128 %484, i128* %XMM0, align 1, !mcsema_real_eip !32
  %485 = load i128* %XMM1_val, !mcsema_real_eip !32
  store i128 %485, i128* %XMM1, align 1, !mcsema_real_eip !32
  %486 = load i128* %XMM2_val, !mcsema_real_eip !32
  store i128 %486, i128* %XMM2, align 1, !mcsema_real_eip !32
  %487 = load i128* %XMM3_val, !mcsema_real_eip !32
  store i128 %487, i128* %XMM3, align 1, !mcsema_real_eip !32
  %488 = load i128* %XMM4_val, !mcsema_real_eip !32
  store i128 %488, i128* %XMM4, align 1, !mcsema_real_eip !32
  %489 = load i128* %XMM5_val, !mcsema_real_eip !32
  store i128 %489, i128* %XMM5, align 1, !mcsema_real_eip !32
  %490 = load i128* %XMM6_val, !mcsema_real_eip !32
  store i128 %490, i128* %XMM6, align 1, !mcsema_real_eip !32
  %491 = load i128* %XMM7_val, !mcsema_real_eip !32
  store i128 %491, i128* %XMM7, align 1, !mcsema_real_eip !32
  %492 = load i128* %XMM8_val, !mcsema_real_eip !32
  store i128 %492, i128* %XMM8, align 1, !mcsema_real_eip !32
  %493 = load i128* %XMM9_val, !mcsema_real_eip !32
  store i128 %493, i128* %XMM9, align 1, !mcsema_real_eip !32
  %494 = load i128* %XMM10_val, !mcsema_real_eip !32
  store i128 %494, i128* %XMM10, align 1, !mcsema_real_eip !32
  %495 = load i128* %XMM11_val, !mcsema_real_eip !32
  store i128 %495, i128* %XMM11, align 1, !mcsema_real_eip !32
  %496 = load i128* %XMM12_val, !mcsema_real_eip !32
  store i128 %496, i128* %XMM12, align 1, !mcsema_real_eip !32
  %497 = load i128* %XMM13_val, !mcsema_real_eip !32
  store i128 %497, i128* %XMM13, align 1, !mcsema_real_eip !32
  %498 = load i128* %XMM14_val, !mcsema_real_eip !32
  store i128 %498, i128* %XMM14, align 1, !mcsema_real_eip !32
  %499 = load i128* %XMM15_val, !mcsema_real_eip !32
  store i128 %499, i128* %XMM15, align 1, !mcsema_real_eip !32
  %500 = load i64* %STACK_BASE_val, !mcsema_real_eip !32
  store i64 %500, i64* %STACK_BASE, align 1, !mcsema_real_eip !32
  %501 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !32
  store i64 %501, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x62:                                       ; preds = %block_0x27
  %502 = add i32 %178, -255
  %503 = xor i32 %502, %178, !mcsema_real_eip !33
  %504 = and i32 %503, 16
  %505 = icmp eq i32 %504, 0
  store i1 %505, i1* %AF_val, !mcsema_real_eip !33
  %506 = trunc i32 %502 to i8, !mcsema_real_eip !33
  %507 = tail call i8 @llvm.ctpop.i8(i8 %506), !mcsema_real_eip !33
  %508 = and i8 %507, 1
  %509 = icmp eq i8 %508, 0
  store i1 %509, i1* %PF_val, !mcsema_real_eip !33
  %510 = icmp eq i32 %502, 0, !mcsema_real_eip !33
  store i1 %510, i1* %ZF_val, !mcsema_real_eip !33
  %511 = icmp slt i32 %502, 0
  store i1 %511, i1* %SF_val, !mcsema_real_eip !33
  %512 = icmp ult i32 %178, 255, !mcsema_real_eip !33
  store i1 %512, i1* %CF_val, !mcsema_real_eip !33
  %513 = and i32 %503, %178, !mcsema_real_eip !33
  %514 = icmp slt i32 %513, 0
  store i1 %514, i1* %OF_val, !mcsema_real_eip !33
  %515 = zext i32 %502 to i64, !mcsema_real_eip !33
  store i64 %515, i64* %RAX_val, !mcsema_real_eip !33
  %516 = load i64* %RBP_val, !mcsema_real_eip !34
  %517 = add i64 %516, -36, !mcsema_real_eip !34
  %518 = inttoptr i64 %517 to i64*, !mcsema_real_eip !34
  %519 = bitcast i64* %518 to i32*
  store i32 %502, i32* %519, !mcsema_real_eip !34
  %520 = load i1* %ZF_val, !mcsema_real_eip !35
  br i1 %520, label %block_0x168, label %block_0x27b, !mcsema_real_eip !35

block_0x3d:                                       ; preds = %block_0x27
  store i64 %179, i64* %RCX_val, !mcsema_real_eip !36
  store i64 %179, i64* %RDX_val, !mcsema_real_eip !37
  %521 = load i64* %RAX_val, !mcsema_real_eip !38
  %522 = trunc i64 %521 to i32, !mcsema_real_eip !38
  %523 = add i32 %522, -19
  %524 = xor i32 %523, %522, !mcsema_real_eip !38
  %525 = and i32 %524, 16
  %526 = icmp eq i32 %525, 0
  store i1 %526, i1* %AF_val, !mcsema_real_eip !38
  %527 = trunc i32 %523 to i8, !mcsema_real_eip !38
  %528 = tail call i8 @llvm.ctpop.i8(i8 %527), !mcsema_real_eip !38
  %529 = and i8 %528, 1
  %530 = icmp eq i8 %529, 0
  store i1 %530, i1* %PF_val, !mcsema_real_eip !38
  %531 = icmp eq i32 %523, 0, !mcsema_real_eip !38
  store i1 %531, i1* %ZF_val, !mcsema_real_eip !38
  %532 = icmp slt i32 %523, 0
  store i1 %532, i1* %SF_val, !mcsema_real_eip !38
  %533 = icmp ult i32 %522, 19, !mcsema_real_eip !38
  store i1 %533, i1* %CF_val, !mcsema_real_eip !38
  %534 = and i32 %524, %522, !mcsema_real_eip !38
  %535 = icmp slt i32 %534, 0
  store i1 %535, i1* %OF_val, !mcsema_real_eip !38
  %536 = zext i32 %523 to i64, !mcsema_real_eip !38
  store i64 %536, i64* %RAX_val, !mcsema_real_eip !38
  %537 = load i64* %RBP_val, !mcsema_real_eip !39
  %538 = add i64 %537, -20, !mcsema_real_eip !39
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !39
  %540 = bitcast i64* %539 to i32*
  store i32 %523, i32* %540, !mcsema_real_eip !39
  %541 = load i64* %RBP_val, !mcsema_real_eip !40
  %542 = add i64 %541, -32, !mcsema_real_eip !40
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !40
  %544 = load i64* %RDX_val, !mcsema_real_eip !40
  store i64 %544, i64* %543, !mcsema_real_eip !40
  %545 = load i1* %ZF_val, !mcsema_real_eip !41
  %546 = load i1* %CF_val, !mcsema_real_eip !41
  %.demorgan561 = or i1 %546, %545
  br i1 %.demorgan561, label %block_0x54, label %block_0x27b, !mcsema_real_eip !41

block_0x168:                                      ; preds = %block_0x62
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 135), i64* %RDI_val, !mcsema_real_eip !42
  %547 = load i64* %RSI_val, !mcsema_real_eip !43
  %548 = load i64* %RDX_val, !mcsema_real_eip !43
  %549 = load i64* %RCX_val, !mcsema_real_eip !43
  %550 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 135), i64 %547, i64 %548, i64 %549), !mcsema_real_eip !43
  %551 = load i64* %RBP_val, !mcsema_real_eip !44
  %552 = add i64 %551, -88, !mcsema_real_eip !44
  %553 = inttoptr i64 %552 to i64*, !mcsema_real_eip !44
  %554 = trunc i64 %550 to i32, !mcsema_real_eip !44
  %555 = bitcast i64* %553 to i32*
  store i32 %554, i32* %555, !mcsema_real_eip !44
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %556 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd562 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %556, i64 144)
  %557 = extractvalue { i64, i1 } %uadd562, 0
  %558 = xor i64 %557, %556, !mcsema_real_eip !27
  %559 = and i64 %558, 16
  %560 = icmp eq i64 %559, 0
  store i1 %560, i1* %AF_val, !mcsema_real_eip !27
  %561 = icmp slt i64 %557, 0
  store i1 %561, i1* %SF_val, !mcsema_real_eip !27
  %562 = icmp eq i64 %557, 0, !mcsema_real_eip !27
  store i1 %562, i1* %ZF_val, !mcsema_real_eip !27
  %563 = xor i64 %556, -9223372036854775808, !mcsema_real_eip !27
  %564 = and i64 %558, %563, !mcsema_real_eip !27
  %565 = icmp slt i64 %564, 0
  store i1 %565, i1* %OF_val, !mcsema_real_eip !27
  %566 = trunc i64 %557 to i8, !mcsema_real_eip !27
  %567 = tail call i8 @llvm.ctpop.i8(i8 %566), !mcsema_real_eip !27
  %568 = and i8 %567, 1
  %569 = icmp eq i8 %568, 0
  store i1 %569, i1* %PF_val, !mcsema_real_eip !27
  %570 = extractvalue { i64, i1 } %uadd562, 1
  store i1 %570, i1* %CF_val, !mcsema_real_eip !27
  store i64 %557, i64* %RSP_val, !mcsema_real_eip !27
  %571 = inttoptr i64 %557 to i64*, !mcsema_real_eip !28
  %572 = load i64* %571, !mcsema_real_eip !28
  store i64 %572, i64* %RBP_val, !mcsema_real_eip !28
  %573 = add i64 %557, 16, !mcsema_real_eip !29
  store i64 %573, i64* %RSP_val, !mcsema_real_eip !29
  %574 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %574, i64* %RAX, !mcsema_real_eip !29
  %575 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %575, i64* %RBX, !mcsema_real_eip !29
  %576 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %576, i64* %RCX, !mcsema_real_eip !29
  %577 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %577, i64* %RDX, !mcsema_real_eip !29
  %578 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %578, i64* %RSI, !mcsema_real_eip !29
  %579 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %579, i64* %RDI, !mcsema_real_eip !29
  %580 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %580, i64* %RSP, !mcsema_real_eip !29
  %581 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %581, i64* %RBP, !mcsema_real_eip !29
  %582 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %582, i64* %R8, !mcsema_real_eip !29
  %583 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %583, i64* %R9, !mcsema_real_eip !29
  %584 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %584, i64* %R10, !mcsema_real_eip !29
  %585 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %585, i64* %R11, !mcsema_real_eip !29
  %586 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %586, i64* %R12, !mcsema_real_eip !29
  %587 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %587, i64* %R13, !mcsema_real_eip !29
  %588 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %588, i64* %R14, !mcsema_real_eip !29
  %589 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %589, i64* %R15, !mcsema_real_eip !29
  %590 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %590, i64* %RIP, !mcsema_real_eip !29
  %591 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %591, i1* %CF, align 1, !mcsema_real_eip !29
  %592 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %592, i1* %PF, align 1, !mcsema_real_eip !29
  %593 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %593, i1* %AF, align 1, !mcsema_real_eip !29
  %594 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %594, i1* %ZF, align 1, !mcsema_real_eip !29
  %595 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %595, i1* %SF, align 1, !mcsema_real_eip !29
  %596 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %596, i1* %OF, align 1, !mcsema_real_eip !29
  %597 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %597, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %598 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %598, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %599 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %599, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %600 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %600, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %601 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %601, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %602 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %602, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %603 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %603, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %604 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %604, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %605 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %605, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %606 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %606, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %607 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %607, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %608 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %608, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %609 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %609, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %610 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %610, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %611 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %611, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %612 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %612, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %613 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %613, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %614 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %614, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %615 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %615, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %616 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %616, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %617 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %617, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %618 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %618, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %619 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %619, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %620 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %620, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %621 = load i64* %53, align 4
  store i64 %621, i64* %52, align 4
  %622 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %622, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %623 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %623, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %624 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %624, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %625 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %625, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %626 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %626, i128* %XMM0, align 1, !mcsema_real_eip !29
  %627 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %627, i128* %XMM1, align 1, !mcsema_real_eip !29
  %628 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %628, i128* %XMM2, align 1, !mcsema_real_eip !29
  %629 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %629, i128* %XMM3, align 1, !mcsema_real_eip !29
  %630 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %630, i128* %XMM4, align 1, !mcsema_real_eip !29
  %631 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %631, i128* %XMM5, align 1, !mcsema_real_eip !29
  %632 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %632, i128* %XMM6, align 1, !mcsema_real_eip !29
  %633 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %633, i128* %XMM7, align 1, !mcsema_real_eip !29
  %634 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %634, i128* %XMM8, align 1, !mcsema_real_eip !29
  %635 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %635, i128* %XMM9, align 1, !mcsema_real_eip !29
  %636 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %636, i128* %XMM10, align 1, !mcsema_real_eip !29
  %637 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %637, i128* %XMM11, align 1, !mcsema_real_eip !29
  %638 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %638, i128* %XMM12, align 1, !mcsema_real_eip !29
  %639 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %639, i128* %XMM13, align 1, !mcsema_real_eip !29
  %640 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %640, i128* %XMM14, align 1, !mcsema_real_eip !29
  %641 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %641, i128* %XMM15, align 1, !mcsema_real_eip !29
  %642 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %642, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %643 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %643, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29

block_0x54:                                       ; preds = %block_0x3d
  %644 = load i64* %RBP_val, !mcsema_real_eip !45
  %645 = add i64 %644, -32, !mcsema_real_eip !45
  %646 = inttoptr i64 %645 to i64*, !mcsema_real_eip !45
  %647 = load i64* %646, !mcsema_real_eip !45
  store i64 %647, i64* %RAX_val, !mcsema_real_eip !45
  %648 = shl i64 %647, 3
  %649 = add i64 %648, add (i64 ptrtoint (%0* @data_0x2a3 to i64), i64 88), !mcsema_real_eip !46
  %650 = inttoptr i64 %649 to i64*, !mcsema_real_eip !46
  %651 = load i64* %650, !mcsema_real_eip !46
  store i64 %651, i64* %RCX_val, !mcsema_real_eip !46
  store i64 %647, i64* %RAX, !mcsema_real_eip !47
  %652 = load i64* %RBX_val, !mcsema_real_eip !47
  store i64 %652, i64* %RBX, !mcsema_real_eip !47
  %653 = load i64* %RCX_val, !mcsema_real_eip !47
  store i64 %653, i64* %RCX, !mcsema_real_eip !47
  %654 = load i64* %RDX_val, !mcsema_real_eip !47
  store i64 %654, i64* %RDX, !mcsema_real_eip !47
  %655 = load i64* %RSI_val, !mcsema_real_eip !47
  store i64 %655, i64* %RSI, !mcsema_real_eip !47
  %656 = load i64* %RDI_val, !mcsema_real_eip !47
  store i64 %656, i64* %RDI, !mcsema_real_eip !47
  %657 = load i64* %RSP_val, !mcsema_real_eip !47
  store i64 %657, i64* %RSP, !mcsema_real_eip !47
  %658 = load i64* %RBP_val, !mcsema_real_eip !47
  store i64 %658, i64* %RBP, !mcsema_real_eip !47
  %659 = load i64* %R8_val, !mcsema_real_eip !47
  store i64 %659, i64* %R8, !mcsema_real_eip !47
  %660 = load i64* %R9_val, !mcsema_real_eip !47
  store i64 %660, i64* %R9, !mcsema_real_eip !47
  %661 = load i64* %R10_val, !mcsema_real_eip !47
  store i64 %661, i64* %R10, !mcsema_real_eip !47
  %662 = load i64* %R11_val, !mcsema_real_eip !47
  store i64 %662, i64* %R11, !mcsema_real_eip !47
  %663 = load i64* %R12_val, !mcsema_real_eip !47
  store i64 %663, i64* %R12, !mcsema_real_eip !47
  %664 = load i64* %R13_val, !mcsema_real_eip !47
  store i64 %664, i64* %R13, !mcsema_real_eip !47
  %665 = load i64* %R14_val, !mcsema_real_eip !47
  store i64 %665, i64* %R14, !mcsema_real_eip !47
  %666 = load i64* %R15_val, !mcsema_real_eip !47
  store i64 %666, i64* %R15, !mcsema_real_eip !47
  %667 = load i64* %RIP_val, !mcsema_real_eip !47
  store i64 %667, i64* %RIP, !mcsema_real_eip !47
  %668 = load i1* %CF_val, !mcsema_real_eip !47
  store i1 %668, i1* %CF, align 1, !mcsema_real_eip !47
  %669 = load i1* %PF_val, !mcsema_real_eip !47
  store i1 %669, i1* %PF, align 1, !mcsema_real_eip !47
  %670 = load i1* %AF_val, !mcsema_real_eip !47
  store i1 %670, i1* %AF, align 1, !mcsema_real_eip !47
  %671 = load i1* %ZF_val, !mcsema_real_eip !47
  store i1 %671, i1* %ZF, align 1, !mcsema_real_eip !47
  %672 = load i1* %SF_val, !mcsema_real_eip !47
  store i1 %672, i1* %SF, align 1, !mcsema_real_eip !47
  %673 = load i1* %OF_val, !mcsema_real_eip !47
  store i1 %673, i1* %OF, align 1, !mcsema_real_eip !47
  %674 = load i1* %DF_val, !mcsema_real_eip !47
  store i1 %674, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %675 = load i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %675, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %676 = load i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %676, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %677 = load i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %677, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %678 = load i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %678, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %679 = load i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %679, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %680 = load i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %680, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %681 = load i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %681, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %682 = load i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %682, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %683 = load i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %683, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %684 = load i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %684, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %685 = load i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %685, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %686 = load i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %686, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %687 = load i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %687, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %688 = load i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %688, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %689 = load i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %689, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %690 = load i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %690, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %691 = load i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %691, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %692 = load i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %692, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %693 = load i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %693, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %694 = load i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %694, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %695 = load i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %695, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %696 = load i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %696, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %697 = load i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %697, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %698 = load i64* %53, align 4
  store i64 %698, i64* %52, align 4
  %699 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %699, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %700 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %700, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %701 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %701, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %702 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %702, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %703 = load i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %703, i128* %XMM0, align 1, !mcsema_real_eip !47
  %704 = load i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %704, i128* %XMM1, align 1, !mcsema_real_eip !47
  %705 = load i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %705, i128* %XMM2, align 1, !mcsema_real_eip !47
  %706 = load i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %706, i128* %XMM3, align 1, !mcsema_real_eip !47
  %707 = load i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %707, i128* %XMM4, align 1, !mcsema_real_eip !47
  %708 = load i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %708, i128* %XMM5, align 1, !mcsema_real_eip !47
  %709 = load i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %709, i128* %XMM6, align 1, !mcsema_real_eip !47
  %710 = load i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %710, i128* %XMM7, align 1, !mcsema_real_eip !47
  %711 = load i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %711, i128* %XMM8, align 1, !mcsema_real_eip !47
  %712 = load i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %712, i128* %XMM9, align 1, !mcsema_real_eip !47
  %713 = load i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %713, i128* %XMM10, align 1, !mcsema_real_eip !47
  %714 = load i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %714, i128* %XMM11, align 1, !mcsema_real_eip !47
  %715 = load i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %715, i128* %XMM12, align 1, !mcsema_real_eip !47
  %716 = load i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %716, i128* %XMM13, align 1, !mcsema_real_eip !47
  %717 = load i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %717, i128* %XMM14, align 1, !mcsema_real_eip !47
  %718 = load i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %718, i128* %XMM15, align 1, !mcsema_real_eip !47
  %719 = load i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %719, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %720 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %720, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  tail call fastcc void @do_call_value(%struct.regs* %0, i64 %651), !mcsema_real_eip !47
  %721 = load i64* %RAX, !mcsema_real_eip !47
  store i64 %721, i64* %RAX_val, !mcsema_real_eip !47
  %722 = load i64* %RBX, !mcsema_real_eip !47
  store i64 %722, i64* %RBX_val, !mcsema_real_eip !47
  %723 = load i64* %RCX, !mcsema_real_eip !47
  store i64 %723, i64* %RCX_val, !mcsema_real_eip !47
  %724 = load i64* %RDX, !mcsema_real_eip !47
  store i64 %724, i64* %RDX_val, !mcsema_real_eip !47
  %725 = load i64* %RSI, !mcsema_real_eip !47
  store i64 %725, i64* %RSI_val, !mcsema_real_eip !47
  %726 = load i64* %RDI, !mcsema_real_eip !47
  store i64 %726, i64* %RDI_val, !mcsema_real_eip !47
  %727 = load i64* %RSP, !mcsema_real_eip !47
  store i64 %727, i64* %RSP_val, !mcsema_real_eip !47
  %728 = load i64* %RBP, !mcsema_real_eip !47
  store i64 %728, i64* %RBP_val, !mcsema_real_eip !47
  %729 = load i64* %R8, !mcsema_real_eip !47
  store i64 %729, i64* %R8_val, !mcsema_real_eip !47
  %730 = load i64* %R9, !mcsema_real_eip !47
  store i64 %730, i64* %R9_val, !mcsema_real_eip !47
  %731 = load i64* %R10, !mcsema_real_eip !47
  store i64 %731, i64* %R10_val, !mcsema_real_eip !47
  %732 = load i64* %R11, !mcsema_real_eip !47
  store i64 %732, i64* %R11_val, !mcsema_real_eip !47
  %733 = load i64* %R12, !mcsema_real_eip !47
  store i64 %733, i64* %R12_val, !mcsema_real_eip !47
  %734 = load i64* %R13, !mcsema_real_eip !47
  store i64 %734, i64* %R13_val, !mcsema_real_eip !47
  %735 = load i64* %R14, !mcsema_real_eip !47
  store i64 %735, i64* %R14_val, !mcsema_real_eip !47
  %736 = load i64* %R15, !mcsema_real_eip !47
  store i64 %736, i64* %R15_val, !mcsema_real_eip !47
  %737 = load i64* %RIP, !mcsema_real_eip !47
  store i64 %737, i64* %RIP_val, !mcsema_real_eip !47
  %738 = load i1* %CF, align 1, !mcsema_real_eip !47
  store i1 %738, i1* %CF_val, !mcsema_real_eip !47
  %739 = load i1* %PF, align 1, !mcsema_real_eip !47
  store i1 %739, i1* %PF_val, !mcsema_real_eip !47
  %740 = load i1* %AF, align 1, !mcsema_real_eip !47
  store i1 %740, i1* %AF_val, !mcsema_real_eip !47
  %741 = load i1* %ZF, align 1, !mcsema_real_eip !47
  store i1 %741, i1* %ZF_val, !mcsema_real_eip !47
  %742 = load i1* %SF, align 1, !mcsema_real_eip !47
  store i1 %742, i1* %SF_val, !mcsema_real_eip !47
  %743 = load i1* %OF, align 1, !mcsema_real_eip !47
  store i1 %743, i1* %OF_val, !mcsema_real_eip !47
  %744 = load i1* %DF, align 1, !mcsema_real_eip !47
  store i1 %744, i1* %DF_val, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !47
  %745 = load i1* %FPU_B, align 1, !mcsema_real_eip !47
  store i1 %745, i1* %FPU_B_val, !mcsema_real_eip !47
  %746 = load i1* %FPU_C3, align 1, !mcsema_real_eip !47
  store i1 %746, i1* %FPU_C3_val, !mcsema_real_eip !47
  %747 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  store i3 %747, i3* %FPU_TOP_val, !mcsema_real_eip !47
  %748 = load i1* %FPU_C2, align 1, !mcsema_real_eip !47
  store i1 %748, i1* %FPU_C2_val, !mcsema_real_eip !47
  %749 = load i1* %FPU_C1, align 1, !mcsema_real_eip !47
  store i1 %749, i1* %FPU_C1_val, !mcsema_real_eip !47
  %750 = load i1* %FPU_C0, align 1, !mcsema_real_eip !47
  store i1 %750, i1* %FPU_C0_val, !mcsema_real_eip !47
  %751 = load i1* %FPU_ES, align 1, !mcsema_real_eip !47
  store i1 %751, i1* %FPU_ES_val, !mcsema_real_eip !47
  %752 = load i1* %FPU_SF, align 1, !mcsema_real_eip !47
  store i1 %752, i1* %FPU_SF_val, !mcsema_real_eip !47
  %753 = load i1* %FPU_PE, align 1, !mcsema_real_eip !47
  store i1 %753, i1* %FPU_PE_val, !mcsema_real_eip !47
  %754 = load i1* %FPU_UE, align 1, !mcsema_real_eip !47
  store i1 %754, i1* %FPU_UE_val, !mcsema_real_eip !47
  %755 = load i1* %FPU_OE, align 1, !mcsema_real_eip !47
  store i1 %755, i1* %FPU_OE_val, !mcsema_real_eip !47
  %756 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  store i1 %756, i1* %FPU_ZE_val, !mcsema_real_eip !47
  %757 = load i1* %FPU_DE, align 1, !mcsema_real_eip !47
  store i1 %757, i1* %FPU_DE_val, !mcsema_real_eip !47
  %758 = load i1* %FPU_IE, align 1, !mcsema_real_eip !47
  store i1 %758, i1* %FPU_IE_val, !mcsema_real_eip !47
  %759 = load i1* %FPU_X, align 1, !mcsema_real_eip !47
  store i1 %759, i1* %FPU_X_val, !mcsema_real_eip !47
  %760 = load i2* %FPU_RC, align 1, !mcsema_real_eip !47
  store i2 %760, i2* %FPU_RC_val, !mcsema_real_eip !47
  %761 = load i2* %FPU_PC, align 1, !mcsema_real_eip !47
  store i2 %761, i2* %FPU_PC_val, !mcsema_real_eip !47
  %762 = load i1* %FPU_PM, align 1, !mcsema_real_eip !47
  store i1 %762, i1* %FPU_PM_val, !mcsema_real_eip !47
  %763 = load i1* %FPU_UM, align 1, !mcsema_real_eip !47
  store i1 %763, i1* %FPU_UM_val, !mcsema_real_eip !47
  %764 = load i1* %FPU_OM, align 1, !mcsema_real_eip !47
  store i1 %764, i1* %FPU_OM_val, !mcsema_real_eip !47
  %765 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  store i1 %765, i1* %FPU_ZM_val, !mcsema_real_eip !47
  %766 = load i1* %FPU_DM, align 1, !mcsema_real_eip !47
  store i1 %766, i1* %FPU_DM_val, !mcsema_real_eip !47
  %767 = load i1* %FPU_IM, align 1, !mcsema_real_eip !47
  store i1 %767, i1* %FPU_IM_val, !mcsema_real_eip !47
  %768 = load i64* %52, align 4
  store i64 %768, i64* %53, align 4
  %769 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  store i16 %769, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  %770 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !47
  store i64 %770, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  %771 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  store i16 %771, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  %772 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !47
  store i64 %772, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  %773 = load i128* %XMM0, align 1, !mcsema_real_eip !47
  store i128 %773, i128* %XMM0_val, !mcsema_real_eip !47
  %774 = load i128* %XMM1, align 1, !mcsema_real_eip !47
  store i128 %774, i128* %XMM1_val, !mcsema_real_eip !47
  %775 = load i128* %XMM2, align 1, !mcsema_real_eip !47
  store i128 %775, i128* %XMM2_val, !mcsema_real_eip !47
  %776 = load i128* %XMM3, align 1, !mcsema_real_eip !47
  store i128 %776, i128* %XMM3_val, !mcsema_real_eip !47
  %777 = load i128* %XMM4, align 1, !mcsema_real_eip !47
  store i128 %777, i128* %XMM4_val, !mcsema_real_eip !47
  %778 = load i128* %XMM5, align 1, !mcsema_real_eip !47
  store i128 %778, i128* %XMM5_val, !mcsema_real_eip !47
  %779 = load i128* %XMM6, align 1, !mcsema_real_eip !47
  store i128 %779, i128* %XMM6_val, !mcsema_real_eip !47
  %780 = load i128* %XMM7, align 1, !mcsema_real_eip !47
  store i128 %780, i128* %XMM7_val, !mcsema_real_eip !47
  %781 = load i128* %XMM8, align 1, !mcsema_real_eip !47
  store i128 %781, i128* %XMM8_val, !mcsema_real_eip !47
  %782 = load i128* %XMM9, align 1, !mcsema_real_eip !47
  store i128 %782, i128* %XMM9_val, !mcsema_real_eip !47
  %783 = load i128* %XMM10, align 1, !mcsema_real_eip !47
  store i128 %783, i128* %XMM10_val, !mcsema_real_eip !47
  %784 = load i128* %XMM11, align 1, !mcsema_real_eip !47
  store i128 %784, i128* %XMM11_val, !mcsema_real_eip !47
  %785 = load i128* %XMM12, align 1, !mcsema_real_eip !47
  store i128 %785, i128* %XMM12_val, !mcsema_real_eip !47
  %786 = load i128* %XMM13, align 1, !mcsema_real_eip !47
  store i128 %786, i128* %XMM13_val, !mcsema_real_eip !47
  %787 = load i128* %XMM14, align 1, !mcsema_real_eip !47
  store i128 %787, i128* %XMM14_val, !mcsema_real_eip !47
  %788 = load i128* %XMM15, align 1, !mcsema_real_eip !47
  store i128 %788, i128* %XMM15_val, !mcsema_real_eip !47
  %789 = load i64* %STACK_BASE, !mcsema_real_eip !47
  store i64 %789, i64* %STACK_BASE_val, !mcsema_real_eip !47
  %790 = load i64* %STACK_LIMIT, !mcsema_real_eip !47
  store i64 %790, i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  %791 = load i64* %RSP_val, !mcsema_real_eip !47
  %792 = add i64 %791, 8, !mcsema_real_eip !47
  store i64 %792, i64* %RSP_val, !mcsema_real_eip !47
  %793 = load i64* %RAX_val, !mcsema_real_eip !47
  store i64 %793, i64* %RAX, !mcsema_real_eip !47
  %794 = load i64* %RBX_val, !mcsema_real_eip !47
  store i64 %794, i64* %RBX, !mcsema_real_eip !47
  %795 = load i64* %RCX_val, !mcsema_real_eip !47
  store i64 %795, i64* %RCX, !mcsema_real_eip !47
  %796 = load i64* %RDX_val, !mcsema_real_eip !47
  store i64 %796, i64* %RDX, !mcsema_real_eip !47
  %797 = load i64* %RSI_val, !mcsema_real_eip !47
  store i64 %797, i64* %RSI, !mcsema_real_eip !47
  %798 = load i64* %RDI_val, !mcsema_real_eip !47
  store i64 %798, i64* %RDI, !mcsema_real_eip !47
  %799 = load i64* %RSP_val, !mcsema_real_eip !47
  store i64 %799, i64* %RSP, !mcsema_real_eip !47
  %800 = load i64* %RBP_val, !mcsema_real_eip !47
  store i64 %800, i64* %RBP, !mcsema_real_eip !47
  %801 = load i64* %R8_val, !mcsema_real_eip !47
  store i64 %801, i64* %R8, !mcsema_real_eip !47
  %802 = load i64* %R9_val, !mcsema_real_eip !47
  store i64 %802, i64* %R9, !mcsema_real_eip !47
  %803 = load i64* %R10_val, !mcsema_real_eip !47
  store i64 %803, i64* %R10, !mcsema_real_eip !47
  %804 = load i64* %R11_val, !mcsema_real_eip !47
  store i64 %804, i64* %R11, !mcsema_real_eip !47
  %805 = load i64* %R12_val, !mcsema_real_eip !47
  store i64 %805, i64* %R12, !mcsema_real_eip !47
  %806 = load i64* %R13_val, !mcsema_real_eip !47
  store i64 %806, i64* %R13, !mcsema_real_eip !47
  %807 = load i64* %R14_val, !mcsema_real_eip !47
  store i64 %807, i64* %R14, !mcsema_real_eip !47
  %808 = load i64* %R15_val, !mcsema_real_eip !47
  store i64 %808, i64* %R15, !mcsema_real_eip !47
  %809 = load i64* %RIP_val, !mcsema_real_eip !47
  store i64 %809, i64* %RIP, !mcsema_real_eip !47
  %810 = load i1* %CF_val, !mcsema_real_eip !47
  store i1 %810, i1* %CF, align 1, !mcsema_real_eip !47
  %811 = load i1* %PF_val, !mcsema_real_eip !47
  store i1 %811, i1* %PF, align 1, !mcsema_real_eip !47
  %812 = load i1* %AF_val, !mcsema_real_eip !47
  store i1 %812, i1* %AF, align 1, !mcsema_real_eip !47
  %813 = load i1* %ZF_val, !mcsema_real_eip !47
  store i1 %813, i1* %ZF, align 1, !mcsema_real_eip !47
  %814 = load i1* %SF_val, !mcsema_real_eip !47
  store i1 %814, i1* %SF, align 1, !mcsema_real_eip !47
  %815 = load i1* %OF_val, !mcsema_real_eip !47
  store i1 %815, i1* %OF, align 1, !mcsema_real_eip !47
  %816 = load i1* %DF_val, !mcsema_real_eip !47
  store i1 %816, i1* %DF, align 1, !mcsema_real_eip !47
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !47
  %817 = load i1* %FPU_B_val, !mcsema_real_eip !47
  store i1 %817, i1* %FPU_B, align 1, !mcsema_real_eip !47
  %818 = load i1* %FPU_C3_val, !mcsema_real_eip !47
  store i1 %818, i1* %FPU_C3, align 1, !mcsema_real_eip !47
  %819 = load i3* %FPU_TOP_val, !mcsema_real_eip !47
  store i3 %819, i3* %FPU_TOP, align 1, !mcsema_real_eip !47
  %820 = load i1* %FPU_C2_val, !mcsema_real_eip !47
  store i1 %820, i1* %FPU_C2, align 1, !mcsema_real_eip !47
  %821 = load i1* %FPU_C1_val, !mcsema_real_eip !47
  store i1 %821, i1* %FPU_C1, align 1, !mcsema_real_eip !47
  %822 = load i1* %FPU_C0_val, !mcsema_real_eip !47
  store i1 %822, i1* %FPU_C0, align 1, !mcsema_real_eip !47
  %823 = load i1* %FPU_ES_val, !mcsema_real_eip !47
  store i1 %823, i1* %FPU_ES, align 1, !mcsema_real_eip !47
  %824 = load i1* %FPU_SF_val, !mcsema_real_eip !47
  store i1 %824, i1* %FPU_SF, align 1, !mcsema_real_eip !47
  %825 = load i1* %FPU_PE_val, !mcsema_real_eip !47
  store i1 %825, i1* %FPU_PE, align 1, !mcsema_real_eip !47
  %826 = load i1* %FPU_UE_val, !mcsema_real_eip !47
  store i1 %826, i1* %FPU_UE, align 1, !mcsema_real_eip !47
  %827 = load i1* %FPU_OE_val, !mcsema_real_eip !47
  store i1 %827, i1* %FPU_OE, align 1, !mcsema_real_eip !47
  %828 = load i1* %FPU_ZE_val, !mcsema_real_eip !47
  store i1 %828, i1* %FPU_ZE, align 1, !mcsema_real_eip !47
  %829 = load i1* %FPU_DE_val, !mcsema_real_eip !47
  store i1 %829, i1* %FPU_DE, align 1, !mcsema_real_eip !47
  %830 = load i1* %FPU_IE_val, !mcsema_real_eip !47
  store i1 %830, i1* %FPU_IE, align 1, !mcsema_real_eip !47
  %831 = load i1* %FPU_X_val, !mcsema_real_eip !47
  store i1 %831, i1* %FPU_X, align 1, !mcsema_real_eip !47
  %832 = load i2* %FPU_RC_val, !mcsema_real_eip !47
  store i2 %832, i2* %FPU_RC, align 1, !mcsema_real_eip !47
  %833 = load i2* %FPU_PC_val, !mcsema_real_eip !47
  store i2 %833, i2* %FPU_PC, align 1, !mcsema_real_eip !47
  %834 = load i1* %FPU_PM_val, !mcsema_real_eip !47
  store i1 %834, i1* %FPU_PM, align 1, !mcsema_real_eip !47
  %835 = load i1* %FPU_UM_val, !mcsema_real_eip !47
  store i1 %835, i1* %FPU_UM, align 1, !mcsema_real_eip !47
  %836 = load i1* %FPU_OM_val, !mcsema_real_eip !47
  store i1 %836, i1* %FPU_OM, align 1, !mcsema_real_eip !47
  %837 = load i1* %FPU_ZM_val, !mcsema_real_eip !47
  store i1 %837, i1* %FPU_ZM, align 1, !mcsema_real_eip !47
  %838 = load i1* %FPU_DM_val, !mcsema_real_eip !47
  store i1 %838, i1* %FPU_DM, align 1, !mcsema_real_eip !47
  %839 = load i1* %FPU_IM_val, !mcsema_real_eip !47
  store i1 %839, i1* %FPU_IM, align 1, !mcsema_real_eip !47
  %840 = load i64* %53, align 4
  store i64 %840, i64* %52, align 4
  %841 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !47
  store i16 %841, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !47
  %842 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !47
  store i64 %842, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !47
  %843 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !47
  store i16 %843, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !47
  %844 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !47
  store i64 %844, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !47
  %845 = load i128* %XMM0_val, !mcsema_real_eip !47
  store i128 %845, i128* %XMM0, align 1, !mcsema_real_eip !47
  %846 = load i128* %XMM1_val, !mcsema_real_eip !47
  store i128 %846, i128* %XMM1, align 1, !mcsema_real_eip !47
  %847 = load i128* %XMM2_val, !mcsema_real_eip !47
  store i128 %847, i128* %XMM2, align 1, !mcsema_real_eip !47
  %848 = load i128* %XMM3_val, !mcsema_real_eip !47
  store i128 %848, i128* %XMM3, align 1, !mcsema_real_eip !47
  %849 = load i128* %XMM4_val, !mcsema_real_eip !47
  store i128 %849, i128* %XMM4, align 1, !mcsema_real_eip !47
  %850 = load i128* %XMM5_val, !mcsema_real_eip !47
  store i128 %850, i128* %XMM5, align 1, !mcsema_real_eip !47
  %851 = load i128* %XMM6_val, !mcsema_real_eip !47
  store i128 %851, i128* %XMM6, align 1, !mcsema_real_eip !47
  %852 = load i128* %XMM7_val, !mcsema_real_eip !47
  store i128 %852, i128* %XMM7, align 1, !mcsema_real_eip !47
  %853 = load i128* %XMM8_val, !mcsema_real_eip !47
  store i128 %853, i128* %XMM8, align 1, !mcsema_real_eip !47
  %854 = load i128* %XMM9_val, !mcsema_real_eip !47
  store i128 %854, i128* %XMM9, align 1, !mcsema_real_eip !47
  %855 = load i128* %XMM10_val, !mcsema_real_eip !47
  store i128 %855, i128* %XMM10, align 1, !mcsema_real_eip !47
  %856 = load i128* %XMM11_val, !mcsema_real_eip !47
  store i128 %856, i128* %XMM11, align 1, !mcsema_real_eip !47
  %857 = load i128* %XMM12_val, !mcsema_real_eip !47
  store i128 %857, i128* %XMM12, align 1, !mcsema_real_eip !47
  %858 = load i128* %XMM13_val, !mcsema_real_eip !47
  store i128 %858, i128* %XMM13, align 1, !mcsema_real_eip !47
  %859 = load i128* %XMM14_val, !mcsema_real_eip !47
  store i128 %859, i128* %XMM14, align 1, !mcsema_real_eip !47
  %860 = load i128* %XMM15_val, !mcsema_real_eip !47
  store i128 %860, i128* %XMM15, align 1, !mcsema_real_eip !47
  %861 = load i64* %STACK_BASE_val, !mcsema_real_eip !47
  store i64 %861, i64* %STACK_BASE, align 1, !mcsema_real_eip !47
  %862 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !47
  store i64 %862, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47
}

define internal x86_64_sysvcc void @sub_181(%struct.regs*) {
entry:
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !48
  %1 = load i64* %RAX, !mcsema_real_eip !48
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !48
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !48
  %2 = load i64* %RBX, !mcsema_real_eip !48
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !48
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !48
  %3 = load i64* %RCX, !mcsema_real_eip !48
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !48
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !48
  %4 = load i64* %RDX, !mcsema_real_eip !48
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !48
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !48
  %5 = load i64* %RSI, !mcsema_real_eip !48
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !48
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !48
  %6 = load i64* %RDI, !mcsema_real_eip !48
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !48
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !48
  %7 = load i64* %RSP, !mcsema_real_eip !48
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !48
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !48
  %8 = load i64* %RBP, !mcsema_real_eip !48
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !48
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !48
  %9 = load i64* %R8, !mcsema_real_eip !48
  store i64 %9, i64* %R8_val, !mcsema_real_eip !48
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !48
  %10 = load i64* %R9, !mcsema_real_eip !48
  store i64 %10, i64* %R9_val, !mcsema_real_eip !48
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !48
  %11 = load i64* %R10, !mcsema_real_eip !48
  store i64 %11, i64* %R10_val, !mcsema_real_eip !48
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !48
  %12 = load i64* %R11, !mcsema_real_eip !48
  store i64 %12, i64* %R11_val, !mcsema_real_eip !48
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !48
  %13 = load i64* %R12, !mcsema_real_eip !48
  store i64 %13, i64* %R12_val, !mcsema_real_eip !48
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !48
  %14 = load i64* %R13, !mcsema_real_eip !48
  store i64 %14, i64* %R13_val, !mcsema_real_eip !48
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !48
  %15 = load i64* %R14, !mcsema_real_eip !48
  store i64 %15, i64* %R14_val, !mcsema_real_eip !48
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !48
  %16 = load i64* %R15, !mcsema_real_eip !48
  store i64 %16, i64* %R15_val, !mcsema_real_eip !48
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !48
  %17 = load i64* %RIP, !mcsema_real_eip !48
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !48
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !48
  %18 = load i1* %CF, align 1, !mcsema_real_eip !48
  store i1 %18, i1* %CF_val, !mcsema_real_eip !48
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !48
  %19 = load i1* %PF, align 1, !mcsema_real_eip !48
  store i1 %19, i1* %PF_val, !mcsema_real_eip !48
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !48
  %20 = load i1* %AF, align 1, !mcsema_real_eip !48
  store i1 %20, i1* %AF_val, !mcsema_real_eip !48
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !48
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !48
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !48
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !48
  %22 = load i1* %SF, align 1, !mcsema_real_eip !48
  store i1 %22, i1* %SF_val, !mcsema_real_eip !48
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !48
  %23 = load i1* %OF, align 1, !mcsema_real_eip !48
  store i1 %23, i1* %OF_val, !mcsema_real_eip !48
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !48
  %24 = load i1* %DF, align 1, !mcsema_real_eip !48
  store i1 %24, i1* %DF_val, !mcsema_real_eip !48
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !48
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !48
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !48
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !48
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !48
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !48
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !48
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !48
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !48
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !48
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !48
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !48
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !48
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !48
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !48
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !48
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !48
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !48
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !48
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !48
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !48
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !48
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !48
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !48
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !48
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !48
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !48
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !48
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !48
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !48
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !48
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !48
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !48
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !48
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !48
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !48
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !48
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !48
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !48
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !48
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !48
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !48
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !48
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !48
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !48
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !48
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !48
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !48
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !48
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !48
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !48
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !48
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !48
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !48
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !48
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !48
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !48
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !48
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !48
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !48
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !48
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !48
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !48
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !48
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !48
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !48
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !48
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !48
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !48
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !48
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !48
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !48
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !48
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !48
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !48
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !48
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !48
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !48
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !48
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !48
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !48
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !48
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !48
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !48
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !48
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !48
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !48
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !48
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !48
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !48
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !48
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !48
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !48
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !48
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !48
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !48
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !48
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !48
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !48
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !48
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !48
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !48
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !48
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !48
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !48
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !48
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !48
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !48
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !48
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !48
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !48
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !48
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !48
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !48
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !48
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !48
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !48
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !48
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !48
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !48
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !48
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !48
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !48
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !48
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !48
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !48
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !48
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !48
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !48
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !48
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !48
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !48
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !48
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !48
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 169), i64* %RDI_val, !mcsema_real_eip !48
  %77 = load i64* %RSI_val, !mcsema_real_eip !49
  %78 = load i64* %RDX_val, !mcsema_real_eip !49
  %79 = load i64* %RCX_val, !mcsema_real_eip !49
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 169), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !49
  %81 = load i64* %RBP_val, !mcsema_real_eip !50
  %82 = add i64 %81, -92, !mcsema_real_eip !50
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !50
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !50
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !50
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_19a(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !51
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !51
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !51
  %XMM15_val = alloca i128, !mcsema_real_eip !51
  %XMM14_val = alloca i128, !mcsema_real_eip !51
  %XMM13_val = alloca i128, !mcsema_real_eip !51
  %XMM12_val = alloca i128, !mcsema_real_eip !51
  %XMM11_val = alloca i128, !mcsema_real_eip !51
  %XMM10_val = alloca i128, !mcsema_real_eip !51
  %XMM9_val = alloca i128, !mcsema_real_eip !51
  %XMM8_val = alloca i128, !mcsema_real_eip !51
  %XMM7_val = alloca i128, !mcsema_real_eip !51
  %XMM6_val = alloca i128, !mcsema_real_eip !51
  %XMM5_val = alloca i128, !mcsema_real_eip !51
  %XMM4_val = alloca i128, !mcsema_real_eip !51
  %XMM3_val = alloca i128, !mcsema_real_eip !51
  %XMM2_val = alloca i128, !mcsema_real_eip !51
  %XMM1_val = alloca i128, !mcsema_real_eip !51
  %XMM0_val = alloca i128, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !51
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !51
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !51
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !51
  %FPU_IM_val = alloca i1, !mcsema_real_eip !51
  %FPU_DM_val = alloca i1, !mcsema_real_eip !51
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !51
  %FPU_OM_val = alloca i1, !mcsema_real_eip !51
  %FPU_UM_val = alloca i1, !mcsema_real_eip !51
  %FPU_PM_val = alloca i1, !mcsema_real_eip !51
  %FPU_PC_val = alloca i2, !mcsema_real_eip !51
  %FPU_RC_val = alloca i2, !mcsema_real_eip !51
  %FPU_X_val = alloca i1, !mcsema_real_eip !51
  %FPU_IE_val = alloca i1, !mcsema_real_eip !51
  %FPU_DE_val = alloca i1, !mcsema_real_eip !51
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !51
  %FPU_OE_val = alloca i1, !mcsema_real_eip !51
  %FPU_UE_val = alloca i1, !mcsema_real_eip !51
  %FPU_PE_val = alloca i1, !mcsema_real_eip !51
  %FPU_SF_val = alloca i1, !mcsema_real_eip !51
  %FPU_ES_val = alloca i1, !mcsema_real_eip !51
  %FPU_C0_val = alloca i1, !mcsema_real_eip !51
  %FPU_C1_val = alloca i1, !mcsema_real_eip !51
  %FPU_C2_val = alloca i1, !mcsema_real_eip !51
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !51
  %FPU_C3_val = alloca i1, !mcsema_real_eip !51
  %FPU_B_val = alloca i1, !mcsema_real_eip !51
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !51
  %DF_val = alloca i1, !mcsema_real_eip !51
  %OF_val = alloca i1, !mcsema_real_eip !51
  %SF_val = alloca i1, !mcsema_real_eip !51
  %CF_val = alloca i1, !mcsema_real_eip !51
  %AF_val = alloca i1, !mcsema_real_eip !51
  %PF_val = alloca i1, !mcsema_real_eip !51
  %ZF_val = alloca i1, !mcsema_real_eip !51
  %RIP_val = alloca i64, !mcsema_real_eip !51
  %R14_val = alloca i64, !mcsema_real_eip !51
  %R13_val = alloca i64, !mcsema_real_eip !51
  %R12_val = alloca i64, !mcsema_real_eip !51
  %R11_val = alloca i64, !mcsema_real_eip !51
  %R10_val = alloca i64, !mcsema_real_eip !51
  %R9_val = alloca i64, !mcsema_real_eip !51
  %R8_val = alloca i64, !mcsema_real_eip !51
  %RSP_val = alloca i64, !mcsema_real_eip !51
  %RBP_val = alloca i64, !mcsema_real_eip !51
  %RDI_val = alloca i64, !mcsema_real_eip !51
  %RSI_val = alloca i64, !mcsema_real_eip !51
  %RDX_val = alloca i64, !mcsema_real_eip !51
  %RCX_val = alloca i64, !mcsema_real_eip !51
  %RBX_val = alloca i64, !mcsema_real_eip !51
  %RAX_val = alloca i64, !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %1 = load i64* %RAX, !mcsema_real_eip !51
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %2 = load i64* %RBX, !mcsema_real_eip !51
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !51
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !51
  %3 = load i64* %RCX, !mcsema_real_eip !51
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !51
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %4 = load i64* %RDX, !mcsema_real_eip !51
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !51
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !51
  %5 = load i64* %RSI, !mcsema_real_eip !51
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !51
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %6 = load i64* %RDI, !mcsema_real_eip !51
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %7 = load i64* %RSP, !mcsema_real_eip !51
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %8 = load i64* %RBP, !mcsema_real_eip !51
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %9 = load i64* %R8, !mcsema_real_eip !51
  store i64 %9, i64* %R8_val, !mcsema_real_eip !51
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !51
  %10 = load i64* %R9, !mcsema_real_eip !51
  store i64 %10, i64* %R9_val, !mcsema_real_eip !51
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %11 = load i64* %R10, !mcsema_real_eip !51
  store i64 %11, i64* %R10_val, !mcsema_real_eip !51
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !51
  %12 = load i64* %R11, !mcsema_real_eip !51
  store i64 %12, i64* %R11_val, !mcsema_real_eip !51
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %13 = load i64* %R12, !mcsema_real_eip !51
  store i64 %13, i64* %R12_val, !mcsema_real_eip !51
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !51
  %14 = load i64* %R13, !mcsema_real_eip !51
  store i64 %14, i64* %R13_val, !mcsema_real_eip !51
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %15 = load i64* %R14, !mcsema_real_eip !51
  store i64 %15, i64* %R14_val, !mcsema_real_eip !51
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !51
  %16 = load i64* %R15, !mcsema_real_eip !51
  store i64 %16, i64* %R15_val, !mcsema_real_eip !51
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %17 = load i64* %RIP, !mcsema_real_eip !51
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %18 = load i1* %CF, align 1, !mcsema_real_eip !51
  store i1 %18, i1* %CF_val, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %19 = load i1* %PF, align 1, !mcsema_real_eip !51
  store i1 %19, i1* %PF_val, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %20 = load i1* %AF, align 1, !mcsema_real_eip !51
  store i1 %20, i1* %AF_val, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %22 = load i1* %SF, align 1, !mcsema_real_eip !51
  store i1 %22, i1* %SF_val, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %23 = load i1* %OF, align 1, !mcsema_real_eip !51
  store i1 %23, i1* %OF_val, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %24 = load i1* %DF, align 1, !mcsema_real_eip !51
  store i1 %24, i1* %DF_val, !mcsema_real_eip !51
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !51
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !51
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !51
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !51
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !51
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !51
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !51
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !51
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !51
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !51
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !51
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !51
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !51
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !51
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !51
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !51
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !51
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !51
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !51
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !51
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !51
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !51
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !51
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !51
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !51
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !51
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !51
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !51
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !51
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !51
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !51
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !51
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !51
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !51
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !51
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !51
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !51
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !51
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !51
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !51
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !51
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !51
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !51
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !51
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !51
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 197), i64* %RDI_val, !mcsema_real_eip !51
  %77 = load i64* %RSI_val, !mcsema_real_eip !52
  %78 = load i64* %RDX_val, !mcsema_real_eip !52
  %79 = load i64* %RCX_val, !mcsema_real_eip !52
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 197), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !52
  %81 = load i64* %RBP_val, !mcsema_real_eip !53
  %82 = add i64 %81, -96, !mcsema_real_eip !53
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !53
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !53
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !53
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_1b3(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !54
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !54
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !54
  %XMM15_val = alloca i128, !mcsema_real_eip !54
  %XMM14_val = alloca i128, !mcsema_real_eip !54
  %XMM13_val = alloca i128, !mcsema_real_eip !54
  %XMM12_val = alloca i128, !mcsema_real_eip !54
  %XMM11_val = alloca i128, !mcsema_real_eip !54
  %XMM10_val = alloca i128, !mcsema_real_eip !54
  %XMM9_val = alloca i128, !mcsema_real_eip !54
  %XMM8_val = alloca i128, !mcsema_real_eip !54
  %XMM7_val = alloca i128, !mcsema_real_eip !54
  %XMM6_val = alloca i128, !mcsema_real_eip !54
  %XMM5_val = alloca i128, !mcsema_real_eip !54
  %XMM4_val = alloca i128, !mcsema_real_eip !54
  %XMM3_val = alloca i128, !mcsema_real_eip !54
  %XMM2_val = alloca i128, !mcsema_real_eip !54
  %XMM1_val = alloca i128, !mcsema_real_eip !54
  %XMM0_val = alloca i128, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !54
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !54
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !54
  %FPU_IM_val = alloca i1, !mcsema_real_eip !54
  %FPU_DM_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !54
  %FPU_OM_val = alloca i1, !mcsema_real_eip !54
  %FPU_UM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PM_val = alloca i1, !mcsema_real_eip !54
  %FPU_PC_val = alloca i2, !mcsema_real_eip !54
  %FPU_RC_val = alloca i2, !mcsema_real_eip !54
  %FPU_X_val = alloca i1, !mcsema_real_eip !54
  %FPU_IE_val = alloca i1, !mcsema_real_eip !54
  %FPU_DE_val = alloca i1, !mcsema_real_eip !54
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !54
  %FPU_OE_val = alloca i1, !mcsema_real_eip !54
  %FPU_UE_val = alloca i1, !mcsema_real_eip !54
  %FPU_PE_val = alloca i1, !mcsema_real_eip !54
  %FPU_SF_val = alloca i1, !mcsema_real_eip !54
  %FPU_ES_val = alloca i1, !mcsema_real_eip !54
  %FPU_C0_val = alloca i1, !mcsema_real_eip !54
  %FPU_C1_val = alloca i1, !mcsema_real_eip !54
  %FPU_C2_val = alloca i1, !mcsema_real_eip !54
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !54
  %FPU_C3_val = alloca i1, !mcsema_real_eip !54
  %FPU_B_val = alloca i1, !mcsema_real_eip !54
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !54
  %DF_val = alloca i1, !mcsema_real_eip !54
  %OF_val = alloca i1, !mcsema_real_eip !54
  %SF_val = alloca i1, !mcsema_real_eip !54
  %CF_val = alloca i1, !mcsema_real_eip !54
  %AF_val = alloca i1, !mcsema_real_eip !54
  %PF_val = alloca i1, !mcsema_real_eip !54
  %ZF_val = alloca i1, !mcsema_real_eip !54
  %RIP_val = alloca i64, !mcsema_real_eip !54
  %R14_val = alloca i64, !mcsema_real_eip !54
  %R13_val = alloca i64, !mcsema_real_eip !54
  %R12_val = alloca i64, !mcsema_real_eip !54
  %R11_val = alloca i64, !mcsema_real_eip !54
  %R10_val = alloca i64, !mcsema_real_eip !54
  %R9_val = alloca i64, !mcsema_real_eip !54
  %R8_val = alloca i64, !mcsema_real_eip !54
  %RSP_val = alloca i64, !mcsema_real_eip !54
  %RBP_val = alloca i64, !mcsema_real_eip !54
  %RDI_val = alloca i64, !mcsema_real_eip !54
  %RSI_val = alloca i64, !mcsema_real_eip !54
  %RDX_val = alloca i64, !mcsema_real_eip !54
  %RCX_val = alloca i64, !mcsema_real_eip !54
  %RBX_val = alloca i64, !mcsema_real_eip !54
  %RAX_val = alloca i64, !mcsema_real_eip !54
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %1 = load i64* %RAX, !mcsema_real_eip !54
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !54
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %2 = load i64* %RBX, !mcsema_real_eip !54
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !54
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !54
  %3 = load i64* %RCX, !mcsema_real_eip !54
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !54
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %4 = load i64* %RDX, !mcsema_real_eip !54
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !54
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !54
  %5 = load i64* %RSI, !mcsema_real_eip !54
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !54
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %6 = load i64* %RDI, !mcsema_real_eip !54
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !54
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %7 = load i64* %RSP, !mcsema_real_eip !54
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !54
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %8 = load i64* %RBP, !mcsema_real_eip !54
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !54
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %9 = load i64* %R8, !mcsema_real_eip !54
  store i64 %9, i64* %R8_val, !mcsema_real_eip !54
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !54
  %10 = load i64* %R9, !mcsema_real_eip !54
  store i64 %10, i64* %R9_val, !mcsema_real_eip !54
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %11 = load i64* %R10, !mcsema_real_eip !54
  store i64 %11, i64* %R10_val, !mcsema_real_eip !54
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !54
  %12 = load i64* %R11, !mcsema_real_eip !54
  store i64 %12, i64* %R11_val, !mcsema_real_eip !54
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %13 = load i64* %R12, !mcsema_real_eip !54
  store i64 %13, i64* %R12_val, !mcsema_real_eip !54
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !54
  %14 = load i64* %R13, !mcsema_real_eip !54
  store i64 %14, i64* %R13_val, !mcsema_real_eip !54
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %15 = load i64* %R14, !mcsema_real_eip !54
  store i64 %15, i64* %R14_val, !mcsema_real_eip !54
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !54
  %16 = load i64* %R15, !mcsema_real_eip !54
  store i64 %16, i64* %R15_val, !mcsema_real_eip !54
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %17 = load i64* %RIP, !mcsema_real_eip !54
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !54
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %18 = load i1* %CF, align 1, !mcsema_real_eip !54
  store i1 %18, i1* %CF_val, !mcsema_real_eip !54
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %19 = load i1* %PF, align 1, !mcsema_real_eip !54
  store i1 %19, i1* %PF_val, !mcsema_real_eip !54
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %20 = load i1* %AF, align 1, !mcsema_real_eip !54
  store i1 %20, i1* %AF_val, !mcsema_real_eip !54
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !54
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !54
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %22 = load i1* %SF, align 1, !mcsema_real_eip !54
  store i1 %22, i1* %SF_val, !mcsema_real_eip !54
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %23 = load i1* %OF, align 1, !mcsema_real_eip !54
  store i1 %23, i1* %OF_val, !mcsema_real_eip !54
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %24 = load i1* %DF, align 1, !mcsema_real_eip !54
  store i1 %24, i1* %DF_val, !mcsema_real_eip !54
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !54
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !54
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !54
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !54
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !54
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !54
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !54
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !54
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !54
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !54
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !54
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !54
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !54
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !54
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !54
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !54
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !54
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !54
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !54
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !54
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !54
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !54
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !54
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !54
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !54
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !54
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !54
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !54
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !54
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !54
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !54
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !54
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !54
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !54
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !54
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !54
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !54
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !54
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !54
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !54
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !54
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !54
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !54
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !54
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !54
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !54
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !54
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !54
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !54
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !54
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !54
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !54
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !54
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !54
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !54
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !54
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !54
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !54
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !54
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !54
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !54
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !54
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !54
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !54
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !54
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !54
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !54
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !54
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !54
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !54
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !54
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !54
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !54
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !54
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !54
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !54
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !54
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !54
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !54
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !54
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !54
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !54
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !54
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !54
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !54
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 225), i64* %RDI_val, !mcsema_real_eip !54
  %77 = load i64* %RSI_val, !mcsema_real_eip !55
  %78 = load i64* %RDX_val, !mcsema_real_eip !55
  %79 = load i64* %RCX_val, !mcsema_real_eip !55
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 225), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !55
  %81 = load i64* %RBP_val, !mcsema_real_eip !56
  %82 = add i64 %81, -100, !mcsema_real_eip !56
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !56
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !56
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !56
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_1cc(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !57
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !57
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !57
  %XMM15_val = alloca i128, !mcsema_real_eip !57
  %XMM14_val = alloca i128, !mcsema_real_eip !57
  %XMM13_val = alloca i128, !mcsema_real_eip !57
  %XMM12_val = alloca i128, !mcsema_real_eip !57
  %XMM11_val = alloca i128, !mcsema_real_eip !57
  %XMM10_val = alloca i128, !mcsema_real_eip !57
  %XMM9_val = alloca i128, !mcsema_real_eip !57
  %XMM8_val = alloca i128, !mcsema_real_eip !57
  %XMM7_val = alloca i128, !mcsema_real_eip !57
  %XMM6_val = alloca i128, !mcsema_real_eip !57
  %XMM5_val = alloca i128, !mcsema_real_eip !57
  %XMM4_val = alloca i128, !mcsema_real_eip !57
  %XMM3_val = alloca i128, !mcsema_real_eip !57
  %XMM2_val = alloca i128, !mcsema_real_eip !57
  %XMM1_val = alloca i128, !mcsema_real_eip !57
  %XMM0_val = alloca i128, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !57
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !57
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !57
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !57
  %FPU_IM_val = alloca i1, !mcsema_real_eip !57
  %FPU_DM_val = alloca i1, !mcsema_real_eip !57
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !57
  %FPU_OM_val = alloca i1, !mcsema_real_eip !57
  %FPU_UM_val = alloca i1, !mcsema_real_eip !57
  %FPU_PM_val = alloca i1, !mcsema_real_eip !57
  %FPU_PC_val = alloca i2, !mcsema_real_eip !57
  %FPU_RC_val = alloca i2, !mcsema_real_eip !57
  %FPU_X_val = alloca i1, !mcsema_real_eip !57
  %FPU_IE_val = alloca i1, !mcsema_real_eip !57
  %FPU_DE_val = alloca i1, !mcsema_real_eip !57
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !57
  %FPU_OE_val = alloca i1, !mcsema_real_eip !57
  %FPU_UE_val = alloca i1, !mcsema_real_eip !57
  %FPU_PE_val = alloca i1, !mcsema_real_eip !57
  %FPU_SF_val = alloca i1, !mcsema_real_eip !57
  %FPU_ES_val = alloca i1, !mcsema_real_eip !57
  %FPU_C0_val = alloca i1, !mcsema_real_eip !57
  %FPU_C1_val = alloca i1, !mcsema_real_eip !57
  %FPU_C2_val = alloca i1, !mcsema_real_eip !57
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !57
  %FPU_C3_val = alloca i1, !mcsema_real_eip !57
  %FPU_B_val = alloca i1, !mcsema_real_eip !57
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !57
  %DF_val = alloca i1, !mcsema_real_eip !57
  %OF_val = alloca i1, !mcsema_real_eip !57
  %SF_val = alloca i1, !mcsema_real_eip !57
  %CF_val = alloca i1, !mcsema_real_eip !57
  %AF_val = alloca i1, !mcsema_real_eip !57
  %PF_val = alloca i1, !mcsema_real_eip !57
  %ZF_val = alloca i1, !mcsema_real_eip !57
  %RIP_val = alloca i64, !mcsema_real_eip !57
  %R14_val = alloca i64, !mcsema_real_eip !57
  %R13_val = alloca i64, !mcsema_real_eip !57
  %R12_val = alloca i64, !mcsema_real_eip !57
  %R11_val = alloca i64, !mcsema_real_eip !57
  %R10_val = alloca i64, !mcsema_real_eip !57
  %R9_val = alloca i64, !mcsema_real_eip !57
  %R8_val = alloca i64, !mcsema_real_eip !57
  %RSP_val = alloca i64, !mcsema_real_eip !57
  %RBP_val = alloca i64, !mcsema_real_eip !57
  %RDI_val = alloca i64, !mcsema_real_eip !57
  %RSI_val = alloca i64, !mcsema_real_eip !57
  %RDX_val = alloca i64, !mcsema_real_eip !57
  %RCX_val = alloca i64, !mcsema_real_eip !57
  %RBX_val = alloca i64, !mcsema_real_eip !57
  %RAX_val = alloca i64, !mcsema_real_eip !57
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !57
  %1 = load i64* %RAX, !mcsema_real_eip !57
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !57
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !57
  %2 = load i64* %RBX, !mcsema_real_eip !57
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !57
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !57
  %3 = load i64* %RCX, !mcsema_real_eip !57
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !57
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !57
  %4 = load i64* %RDX, !mcsema_real_eip !57
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !57
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !57
  %5 = load i64* %RSI, !mcsema_real_eip !57
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !57
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !57
  %6 = load i64* %RDI, !mcsema_real_eip !57
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !57
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !57
  %7 = load i64* %RSP, !mcsema_real_eip !57
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !57
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !57
  %8 = load i64* %RBP, !mcsema_real_eip !57
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !57
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !57
  %9 = load i64* %R8, !mcsema_real_eip !57
  store i64 %9, i64* %R8_val, !mcsema_real_eip !57
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !57
  %10 = load i64* %R9, !mcsema_real_eip !57
  store i64 %10, i64* %R9_val, !mcsema_real_eip !57
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !57
  %11 = load i64* %R10, !mcsema_real_eip !57
  store i64 %11, i64* %R10_val, !mcsema_real_eip !57
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !57
  %12 = load i64* %R11, !mcsema_real_eip !57
  store i64 %12, i64* %R11_val, !mcsema_real_eip !57
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !57
  %13 = load i64* %R12, !mcsema_real_eip !57
  store i64 %13, i64* %R12_val, !mcsema_real_eip !57
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !57
  %14 = load i64* %R13, !mcsema_real_eip !57
  store i64 %14, i64* %R13_val, !mcsema_real_eip !57
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !57
  %15 = load i64* %R14, !mcsema_real_eip !57
  store i64 %15, i64* %R14_val, !mcsema_real_eip !57
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !57
  %16 = load i64* %R15, !mcsema_real_eip !57
  store i64 %16, i64* %R15_val, !mcsema_real_eip !57
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !57
  %17 = load i64* %RIP, !mcsema_real_eip !57
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !57
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !57
  %18 = load i1* %CF, align 1, !mcsema_real_eip !57
  store i1 %18, i1* %CF_val, !mcsema_real_eip !57
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !57
  %19 = load i1* %PF, align 1, !mcsema_real_eip !57
  store i1 %19, i1* %PF_val, !mcsema_real_eip !57
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !57
  %20 = load i1* %AF, align 1, !mcsema_real_eip !57
  store i1 %20, i1* %AF_val, !mcsema_real_eip !57
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !57
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !57
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !57
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !57
  %22 = load i1* %SF, align 1, !mcsema_real_eip !57
  store i1 %22, i1* %SF_val, !mcsema_real_eip !57
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !57
  %23 = load i1* %OF, align 1, !mcsema_real_eip !57
  store i1 %23, i1* %OF_val, !mcsema_real_eip !57
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !57
  %24 = load i1* %DF, align 1, !mcsema_real_eip !57
  store i1 %24, i1* %DF_val, !mcsema_real_eip !57
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !57
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !57
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !57
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !57
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !57
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !57
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !57
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !57
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !57
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !57
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !57
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !57
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !57
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !57
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !57
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !57
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !57
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !57
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !57
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !57
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !57
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !57
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !57
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !57
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !57
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !57
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !57
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !57
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !57
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !57
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !57
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !57
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !57
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !57
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !57
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !57
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !57
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !57
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !57
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !57
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !57
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !57
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !57
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !57
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !57
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !57
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !57
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !57
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !57
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !57
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !57
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !57
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !57
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !57
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !57
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !57
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !57
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !57
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !57
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !57
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !57
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !57
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !57
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !57
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !57
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !57
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !57
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !57
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !57
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !57
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !57
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !57
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !57
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !57
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !57
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !57
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !57
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !57
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !57
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !57
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !57
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !57
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !57
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !57
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !57
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !57
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !57
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !57
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !57
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !57
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !57
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !57
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !57
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !57
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !57
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !57
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !57
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !57
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !57
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !57
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !57
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !57
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !57
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !57
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !57
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !57
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !57
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !57
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !57
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !57
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !57
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !57
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !57
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !57
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !57
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !57
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !57
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !57
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !57
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !57
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !57
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !57
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !57
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !57
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !57
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !57
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !57
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !57
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !57
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !57
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !57
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !57
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 253), i64* %RDI_val, !mcsema_real_eip !57
  %77 = load i64* %RSI_val, !mcsema_real_eip !58
  %78 = load i64* %RDX_val, !mcsema_real_eip !58
  %79 = load i64* %RCX_val, !mcsema_real_eip !58
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 253), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !58
  %81 = load i64* %RBP_val, !mcsema_real_eip !59
  %82 = add i64 %81, -104, !mcsema_real_eip !59
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !59
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !59
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !59
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_1e5(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !60
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !60
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !60
  %XMM15_val = alloca i128, !mcsema_real_eip !60
  %XMM14_val = alloca i128, !mcsema_real_eip !60
  %XMM13_val = alloca i128, !mcsema_real_eip !60
  %XMM12_val = alloca i128, !mcsema_real_eip !60
  %XMM11_val = alloca i128, !mcsema_real_eip !60
  %XMM10_val = alloca i128, !mcsema_real_eip !60
  %XMM9_val = alloca i128, !mcsema_real_eip !60
  %XMM8_val = alloca i128, !mcsema_real_eip !60
  %XMM7_val = alloca i128, !mcsema_real_eip !60
  %XMM6_val = alloca i128, !mcsema_real_eip !60
  %XMM5_val = alloca i128, !mcsema_real_eip !60
  %XMM4_val = alloca i128, !mcsema_real_eip !60
  %XMM3_val = alloca i128, !mcsema_real_eip !60
  %XMM2_val = alloca i128, !mcsema_real_eip !60
  %XMM1_val = alloca i128, !mcsema_real_eip !60
  %XMM0_val = alloca i128, !mcsema_real_eip !60
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !60
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !60
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !60
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !60
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !60
  %FPU_IM_val = alloca i1, !mcsema_real_eip !60
  %FPU_DM_val = alloca i1, !mcsema_real_eip !60
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !60
  %FPU_OM_val = alloca i1, !mcsema_real_eip !60
  %FPU_UM_val = alloca i1, !mcsema_real_eip !60
  %FPU_PM_val = alloca i1, !mcsema_real_eip !60
  %FPU_PC_val = alloca i2, !mcsema_real_eip !60
  %FPU_RC_val = alloca i2, !mcsema_real_eip !60
  %FPU_X_val = alloca i1, !mcsema_real_eip !60
  %FPU_IE_val = alloca i1, !mcsema_real_eip !60
  %FPU_DE_val = alloca i1, !mcsema_real_eip !60
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !60
  %FPU_OE_val = alloca i1, !mcsema_real_eip !60
  %FPU_UE_val = alloca i1, !mcsema_real_eip !60
  %FPU_PE_val = alloca i1, !mcsema_real_eip !60
  %FPU_SF_val = alloca i1, !mcsema_real_eip !60
  %FPU_ES_val = alloca i1, !mcsema_real_eip !60
  %FPU_C0_val = alloca i1, !mcsema_real_eip !60
  %FPU_C1_val = alloca i1, !mcsema_real_eip !60
  %FPU_C2_val = alloca i1, !mcsema_real_eip !60
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !60
  %FPU_C3_val = alloca i1, !mcsema_real_eip !60
  %FPU_B_val = alloca i1, !mcsema_real_eip !60
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !60
  %DF_val = alloca i1, !mcsema_real_eip !60
  %OF_val = alloca i1, !mcsema_real_eip !60
  %SF_val = alloca i1, !mcsema_real_eip !60
  %CF_val = alloca i1, !mcsema_real_eip !60
  %AF_val = alloca i1, !mcsema_real_eip !60
  %PF_val = alloca i1, !mcsema_real_eip !60
  %ZF_val = alloca i1, !mcsema_real_eip !60
  %RIP_val = alloca i64, !mcsema_real_eip !60
  %R14_val = alloca i64, !mcsema_real_eip !60
  %R13_val = alloca i64, !mcsema_real_eip !60
  %R12_val = alloca i64, !mcsema_real_eip !60
  %R11_val = alloca i64, !mcsema_real_eip !60
  %R10_val = alloca i64, !mcsema_real_eip !60
  %R9_val = alloca i64, !mcsema_real_eip !60
  %R8_val = alloca i64, !mcsema_real_eip !60
  %RSP_val = alloca i64, !mcsema_real_eip !60
  %RBP_val = alloca i64, !mcsema_real_eip !60
  %RDI_val = alloca i64, !mcsema_real_eip !60
  %RSI_val = alloca i64, !mcsema_real_eip !60
  %RDX_val = alloca i64, !mcsema_real_eip !60
  %RCX_val = alloca i64, !mcsema_real_eip !60
  %RBX_val = alloca i64, !mcsema_real_eip !60
  %RAX_val = alloca i64, !mcsema_real_eip !60
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !60
  %1 = load i64* %RAX, !mcsema_real_eip !60
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !60
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !60
  %2 = load i64* %RBX, !mcsema_real_eip !60
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !60
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !60
  %3 = load i64* %RCX, !mcsema_real_eip !60
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !60
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !60
  %4 = load i64* %RDX, !mcsema_real_eip !60
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !60
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !60
  %5 = load i64* %RSI, !mcsema_real_eip !60
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !60
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !60
  %6 = load i64* %RDI, !mcsema_real_eip !60
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !60
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !60
  %7 = load i64* %RSP, !mcsema_real_eip !60
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !60
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !60
  %8 = load i64* %RBP, !mcsema_real_eip !60
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !60
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !60
  %9 = load i64* %R8, !mcsema_real_eip !60
  store i64 %9, i64* %R8_val, !mcsema_real_eip !60
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !60
  %10 = load i64* %R9, !mcsema_real_eip !60
  store i64 %10, i64* %R9_val, !mcsema_real_eip !60
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !60
  %11 = load i64* %R10, !mcsema_real_eip !60
  store i64 %11, i64* %R10_val, !mcsema_real_eip !60
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !60
  %12 = load i64* %R11, !mcsema_real_eip !60
  store i64 %12, i64* %R11_val, !mcsema_real_eip !60
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !60
  %13 = load i64* %R12, !mcsema_real_eip !60
  store i64 %13, i64* %R12_val, !mcsema_real_eip !60
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !60
  %14 = load i64* %R13, !mcsema_real_eip !60
  store i64 %14, i64* %R13_val, !mcsema_real_eip !60
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !60
  %15 = load i64* %R14, !mcsema_real_eip !60
  store i64 %15, i64* %R14_val, !mcsema_real_eip !60
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !60
  %16 = load i64* %R15, !mcsema_real_eip !60
  store i64 %16, i64* %R15_val, !mcsema_real_eip !60
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !60
  %17 = load i64* %RIP, !mcsema_real_eip !60
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !60
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !60
  %18 = load i1* %CF, align 1, !mcsema_real_eip !60
  store i1 %18, i1* %CF_val, !mcsema_real_eip !60
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !60
  %19 = load i1* %PF, align 1, !mcsema_real_eip !60
  store i1 %19, i1* %PF_val, !mcsema_real_eip !60
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !60
  %20 = load i1* %AF, align 1, !mcsema_real_eip !60
  store i1 %20, i1* %AF_val, !mcsema_real_eip !60
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !60
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !60
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !60
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !60
  %22 = load i1* %SF, align 1, !mcsema_real_eip !60
  store i1 %22, i1* %SF_val, !mcsema_real_eip !60
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !60
  %23 = load i1* %OF, align 1, !mcsema_real_eip !60
  store i1 %23, i1* %OF_val, !mcsema_real_eip !60
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !60
  %24 = load i1* %DF, align 1, !mcsema_real_eip !60
  store i1 %24, i1* %DF_val, !mcsema_real_eip !60
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !60
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !60
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !60
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !60
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !60
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !60
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !60
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !60
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !60
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !60
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !60
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !60
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !60
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !60
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !60
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !60
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !60
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !60
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !60
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !60
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !60
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !60
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !60
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !60
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !60
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !60
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !60
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !60
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !60
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !60
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !60
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !60
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !60
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !60
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !60
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !60
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !60
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !60
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !60
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !60
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !60
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !60
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !60
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !60
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !60
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !60
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !60
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !60
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !60
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !60
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !60
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !60
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !60
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !60
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !60
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !60
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !60
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !60
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !60
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !60
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !60
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !60
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !60
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !60
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !60
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !60
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !60
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !60
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !60
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !60
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !60
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !60
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !60
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !60
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !60
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !60
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !60
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !60
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !60
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !60
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !60
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !60
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !60
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !60
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !60
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !60
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !60
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !60
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !60
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !60
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !60
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !60
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !60
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !60
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !60
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !60
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !60
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !60
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !60
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !60
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !60
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !60
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !60
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !60
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !60
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !60
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !60
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !60
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !60
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !60
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !60
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !60
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !60
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !60
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !60
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !60
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !60
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !60
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !60
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !60
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !60
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !60
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !60
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !60
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !60
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !60
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !60
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !60
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !60
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !60
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !60
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !60
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !60
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !60
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !60
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !60
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !60
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !60
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !60
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !60
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 281), i64* %RDI_val, !mcsema_real_eip !60
  %77 = load i64* %RSI_val, !mcsema_real_eip !61
  %78 = load i64* %RDX_val, !mcsema_real_eip !61
  %79 = load i64* %RCX_val, !mcsema_real_eip !61
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 281), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !61
  %81 = load i64* %RBP_val, !mcsema_real_eip !62
  %82 = add i64 %81, -108, !mcsema_real_eip !62
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !62
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !62
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !62
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_27b(%struct.regs*) {
entry:
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
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !22
  %1 = load i64* %RAX, !mcsema_real_eip !22
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !22
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !22
  %2 = load i64* %RBX, !mcsema_real_eip !22
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !22
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !22
  %3 = load i64* %RCX, !mcsema_real_eip !22
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !22
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !22
  %4 = load i64* %RDX, !mcsema_real_eip !22
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !22
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !22
  %5 = load i64* %RSI, !mcsema_real_eip !22
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !22
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !22
  %6 = load i64* %RDI, !mcsema_real_eip !22
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !22
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !22
  %7 = load i64* %RSP, !mcsema_real_eip !22
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !22
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !22
  %8 = load i64* %RBP, !mcsema_real_eip !22
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !22
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !22
  %9 = load i64* %R8, !mcsema_real_eip !22
  store i64 %9, i64* %R8_val, !mcsema_real_eip !22
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !22
  %10 = load i64* %R9, !mcsema_real_eip !22
  store i64 %10, i64* %R9_val, !mcsema_real_eip !22
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !22
  %11 = load i64* %R10, !mcsema_real_eip !22
  store i64 %11, i64* %R10_val, !mcsema_real_eip !22
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !22
  %12 = load i64* %R11, !mcsema_real_eip !22
  store i64 %12, i64* %R11_val, !mcsema_real_eip !22
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !22
  %13 = load i64* %R12, !mcsema_real_eip !22
  store i64 %13, i64* %R12_val, !mcsema_real_eip !22
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !22
  %14 = load i64* %R13, !mcsema_real_eip !22
  store i64 %14, i64* %R13_val, !mcsema_real_eip !22
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !22
  %15 = load i64* %R14, !mcsema_real_eip !22
  store i64 %15, i64* %R14_val, !mcsema_real_eip !22
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !22
  %16 = load i64* %R15, !mcsema_real_eip !22
  store i64 %16, i64* %R15_val, !mcsema_real_eip !22
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !22
  %17 = load i64* %RIP, !mcsema_real_eip !22
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !22
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !22
  %18 = load i1* %CF, align 1, !mcsema_real_eip !22
  store i1 %18, i1* %CF_val, !mcsema_real_eip !22
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !22
  %19 = load i1* %PF, align 1, !mcsema_real_eip !22
  store i1 %19, i1* %PF_val, !mcsema_real_eip !22
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !22
  %20 = load i1* %AF, align 1, !mcsema_real_eip !22
  store i1 %20, i1* %AF_val, !mcsema_real_eip !22
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !22
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !22
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !22
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !22
  %22 = load i1* %SF, align 1, !mcsema_real_eip !22
  store i1 %22, i1* %SF_val, !mcsema_real_eip !22
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !22
  %23 = load i1* %OF, align 1, !mcsema_real_eip !22
  store i1 %23, i1* %OF_val, !mcsema_real_eip !22
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !22
  %24 = load i1* %DF, align 1, !mcsema_real_eip !22
  store i1 %24, i1* %DF_val, !mcsema_real_eip !22
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !22
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !22
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !22
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !22
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !22
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !22
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !22
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !22
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !22
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !22
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !22
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !22
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !22
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !22
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !22
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !22
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !22
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !22
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !22
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !22
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !22
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !22
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !22
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !22
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !22
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !22
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !22
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !22
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !22
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !22
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !22
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !22
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !22
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !22
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !22
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !22
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !22
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !22
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !22
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !22
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !22
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !22
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !22
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !22
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !22
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !22
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !22
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !22
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !22
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !22
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !22
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !22
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !22
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !22
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !22
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !22
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !22
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !22
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !22
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !22
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !22
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !22
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !22
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !22
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !22
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !22
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !22
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !22
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !22
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !22
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !22
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !22
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !22
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !22
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !22
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !22
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !22
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !22
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !22
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !22
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !22
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !22
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !22
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !22
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !22
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !22
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !22
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !22
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !22
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !22
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !22
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !22
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !22
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !22
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !22
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !22
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !22
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !22
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !22
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !22
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !22
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !22
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !22
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !22
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !22
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !22
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !22
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !22
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !22
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !22
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !22
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !22
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !22
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !22
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !22
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !22
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !22
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !22
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !22
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !22
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !22
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !22
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !22
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !22
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !22
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !22
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !22
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !22
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !22
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !22
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !22
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 449), i64* %RDI_val, !mcsema_real_eip !22
  %77 = load i64* %RBP_val, !mcsema_real_eip !23
  %78 = add i64 %77, -4, !mcsema_real_eip !23
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !23
  %80 = bitcast i64* %79 to i32*
  %81 = load i32* %80, !mcsema_real_eip !23
  %82 = zext i32 %81 to i64, !mcsema_real_eip !23
  store i64 %82, i64* %RSI_val, !mcsema_real_eip !23
  %83 = load i64* %RDI_val, !mcsema_real_eip !24
  %84 = load i64* %RDX_val, !mcsema_real_eip !24
  %85 = load i64* %RCX_val, !mcsema_real_eip !24
  %86 = tail call x86_64_sysvcc i64 @printf(i64 %83, i64 %82, i64 %84, i64 %85), !mcsema_real_eip !24
  %87 = load i64* %RBP_val, !mcsema_real_eip !25
  %88 = add i64 %87, -132, !mcsema_real_eip !25
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !25
  %90 = trunc i64 %86 to i32, !mcsema_real_eip !25
  %91 = bitcast i64* %89 to i32*
  store i32 %90, i32* %91, !mcsema_real_eip !25
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %92 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %92, i64 144)
  %93 = extractvalue { i64, i1 } %uadd, 0
  %94 = xor i64 %93, %92, !mcsema_real_eip !27
  %95 = and i64 %94, 16
  %96 = icmp eq i64 %95, 0
  store i1 %96, i1* %AF_val, !mcsema_real_eip !27
  %97 = icmp slt i64 %93, 0
  store i1 %97, i1* %SF_val, !mcsema_real_eip !27
  %98 = icmp eq i64 %93, 0, !mcsema_real_eip !27
  store i1 %98, i1* %ZF_val, !mcsema_real_eip !27
  %99 = xor i64 %92, -9223372036854775808, !mcsema_real_eip !27
  %100 = and i64 %94, %99, !mcsema_real_eip !27
  %101 = icmp slt i64 %100, 0
  store i1 %101, i1* %OF_val, !mcsema_real_eip !27
  %102 = trunc i64 %93 to i8, !mcsema_real_eip !27
  %103 = tail call i8 @llvm.ctpop.i8(i8 %102), !mcsema_real_eip !27
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  store i1 %105, i1* %PF_val, !mcsema_real_eip !27
  %106 = extractvalue { i64, i1 } %uadd, 1
  store i1 %106, i1* %CF_val, !mcsema_real_eip !27
  store i64 %93, i64* %RSP_val, !mcsema_real_eip !27
  %107 = inttoptr i64 %93 to i64*, !mcsema_real_eip !28
  %108 = load i64* %107, !mcsema_real_eip !28
  store i64 %108, i64* %RBP_val, !mcsema_real_eip !28
  %109 = add i64 %93, 16, !mcsema_real_eip !29
  store i64 %109, i64* %RSP_val, !mcsema_real_eip !29
  %110 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %110, i64* %RAX, !mcsema_real_eip !29
  %111 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBX, !mcsema_real_eip !29
  %112 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %112, i64* %RCX, !mcsema_real_eip !29
  %113 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %113, i64* %RDX, !mcsema_real_eip !29
  %114 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %114, i64* %RSI, !mcsema_real_eip !29
  %115 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %115, i64* %RDI, !mcsema_real_eip !29
  %116 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %116, i64* %RSP, !mcsema_real_eip !29
  %117 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %117, i64* %RBP, !mcsema_real_eip !29
  %118 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %118, i64* %R8, !mcsema_real_eip !29
  %119 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %119, i64* %R9, !mcsema_real_eip !29
  %120 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %120, i64* %R10, !mcsema_real_eip !29
  %121 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %121, i64* %R11, !mcsema_real_eip !29
  %122 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %122, i64* %R12, !mcsema_real_eip !29
  %123 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %123, i64* %R13, !mcsema_real_eip !29
  %124 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %124, i64* %R14, !mcsema_real_eip !29
  %125 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %125, i64* %R15, !mcsema_real_eip !29
  %126 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %126, i64* %RIP, !mcsema_real_eip !29
  %127 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %127, i1* %CF, align 1, !mcsema_real_eip !29
  %128 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !29
  %129 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %129, i1* %AF, align 1, !mcsema_real_eip !29
  %130 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %130, i1* %ZF, align 1, !mcsema_real_eip !29
  %131 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %131, i1* %SF, align 1, !mcsema_real_eip !29
  %132 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %132, i1* %OF, align 1, !mcsema_real_eip !29
  %133 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %133, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %134 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %136 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %136, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %143 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %143, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %144 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %144, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %149 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %149, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %150 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %150, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %151 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %151, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %152 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %152, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %153 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %153, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %154 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %154, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %155 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %155, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %156 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %156, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %157 = load i64* %53, align 4
  store i64 %157, i64* %52, align 4
  %158 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %158, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %159 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %159, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %160 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %160, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %161 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %161, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM0, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM1, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM2, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM3, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM4, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM5, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM6, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM7, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM8, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM9, align 1, !mcsema_real_eip !29
  %172 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %172, i128* %XMM10, align 1, !mcsema_real_eip !29
  %173 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %173, i128* %XMM11, align 1, !mcsema_real_eip !29
  %174 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %174, i128* %XMM12, align 1, !mcsema_real_eip !29
  %175 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %175, i128* %XMM13, align 1, !mcsema_real_eip !29
  %176 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %176, i128* %XMM14, align 1, !mcsema_real_eip !29
  %177 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %177, i128* %XMM15, align 1, !mcsema_real_eip !29
  %178 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %178, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %179 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %179, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_1fe(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !63
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !63
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !63
  %XMM15_val = alloca i128, !mcsema_real_eip !63
  %XMM14_val = alloca i128, !mcsema_real_eip !63
  %XMM13_val = alloca i128, !mcsema_real_eip !63
  %XMM12_val = alloca i128, !mcsema_real_eip !63
  %XMM11_val = alloca i128, !mcsema_real_eip !63
  %XMM10_val = alloca i128, !mcsema_real_eip !63
  %XMM9_val = alloca i128, !mcsema_real_eip !63
  %XMM8_val = alloca i128, !mcsema_real_eip !63
  %XMM7_val = alloca i128, !mcsema_real_eip !63
  %XMM6_val = alloca i128, !mcsema_real_eip !63
  %XMM5_val = alloca i128, !mcsema_real_eip !63
  %XMM4_val = alloca i128, !mcsema_real_eip !63
  %XMM3_val = alloca i128, !mcsema_real_eip !63
  %XMM2_val = alloca i128, !mcsema_real_eip !63
  %XMM1_val = alloca i128, !mcsema_real_eip !63
  %XMM0_val = alloca i128, !mcsema_real_eip !63
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !63
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !63
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !63
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !63
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !63
  %FPU_IM_val = alloca i1, !mcsema_real_eip !63
  %FPU_DM_val = alloca i1, !mcsema_real_eip !63
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !63
  %FPU_OM_val = alloca i1, !mcsema_real_eip !63
  %FPU_UM_val = alloca i1, !mcsema_real_eip !63
  %FPU_PM_val = alloca i1, !mcsema_real_eip !63
  %FPU_PC_val = alloca i2, !mcsema_real_eip !63
  %FPU_RC_val = alloca i2, !mcsema_real_eip !63
  %FPU_X_val = alloca i1, !mcsema_real_eip !63
  %FPU_IE_val = alloca i1, !mcsema_real_eip !63
  %FPU_DE_val = alloca i1, !mcsema_real_eip !63
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !63
  %FPU_OE_val = alloca i1, !mcsema_real_eip !63
  %FPU_UE_val = alloca i1, !mcsema_real_eip !63
  %FPU_PE_val = alloca i1, !mcsema_real_eip !63
  %FPU_SF_val = alloca i1, !mcsema_real_eip !63
  %FPU_ES_val = alloca i1, !mcsema_real_eip !63
  %FPU_C0_val = alloca i1, !mcsema_real_eip !63
  %FPU_C1_val = alloca i1, !mcsema_real_eip !63
  %FPU_C2_val = alloca i1, !mcsema_real_eip !63
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !63
  %FPU_C3_val = alloca i1, !mcsema_real_eip !63
  %FPU_B_val = alloca i1, !mcsema_real_eip !63
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !63
  %DF_val = alloca i1, !mcsema_real_eip !63
  %OF_val = alloca i1, !mcsema_real_eip !63
  %SF_val = alloca i1, !mcsema_real_eip !63
  %CF_val = alloca i1, !mcsema_real_eip !63
  %AF_val = alloca i1, !mcsema_real_eip !63
  %PF_val = alloca i1, !mcsema_real_eip !63
  %ZF_val = alloca i1, !mcsema_real_eip !63
  %RIP_val = alloca i64, !mcsema_real_eip !63
  %R14_val = alloca i64, !mcsema_real_eip !63
  %R13_val = alloca i64, !mcsema_real_eip !63
  %R12_val = alloca i64, !mcsema_real_eip !63
  %R11_val = alloca i64, !mcsema_real_eip !63
  %R10_val = alloca i64, !mcsema_real_eip !63
  %R9_val = alloca i64, !mcsema_real_eip !63
  %R8_val = alloca i64, !mcsema_real_eip !63
  %RSP_val = alloca i64, !mcsema_real_eip !63
  %RBP_val = alloca i64, !mcsema_real_eip !63
  %RDI_val = alloca i64, !mcsema_real_eip !63
  %RSI_val = alloca i64, !mcsema_real_eip !63
  %RDX_val = alloca i64, !mcsema_real_eip !63
  %RCX_val = alloca i64, !mcsema_real_eip !63
  %RBX_val = alloca i64, !mcsema_real_eip !63
  %RAX_val = alloca i64, !mcsema_real_eip !63
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !63
  %1 = load i64* %RAX, !mcsema_real_eip !63
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !63
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !63
  %2 = load i64* %RBX, !mcsema_real_eip !63
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !63
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !63
  %3 = load i64* %RCX, !mcsema_real_eip !63
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !63
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !63
  %4 = load i64* %RDX, !mcsema_real_eip !63
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !63
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !63
  %5 = load i64* %RSI, !mcsema_real_eip !63
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !63
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !63
  %6 = load i64* %RDI, !mcsema_real_eip !63
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !63
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !63
  %7 = load i64* %RSP, !mcsema_real_eip !63
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !63
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !63
  %8 = load i64* %RBP, !mcsema_real_eip !63
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !63
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !63
  %9 = load i64* %R8, !mcsema_real_eip !63
  store i64 %9, i64* %R8_val, !mcsema_real_eip !63
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !63
  %10 = load i64* %R9, !mcsema_real_eip !63
  store i64 %10, i64* %R9_val, !mcsema_real_eip !63
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !63
  %11 = load i64* %R10, !mcsema_real_eip !63
  store i64 %11, i64* %R10_val, !mcsema_real_eip !63
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !63
  %12 = load i64* %R11, !mcsema_real_eip !63
  store i64 %12, i64* %R11_val, !mcsema_real_eip !63
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !63
  %13 = load i64* %R12, !mcsema_real_eip !63
  store i64 %13, i64* %R12_val, !mcsema_real_eip !63
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !63
  %14 = load i64* %R13, !mcsema_real_eip !63
  store i64 %14, i64* %R13_val, !mcsema_real_eip !63
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !63
  %15 = load i64* %R14, !mcsema_real_eip !63
  store i64 %15, i64* %R14_val, !mcsema_real_eip !63
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !63
  %16 = load i64* %R15, !mcsema_real_eip !63
  store i64 %16, i64* %R15_val, !mcsema_real_eip !63
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !63
  %17 = load i64* %RIP, !mcsema_real_eip !63
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !63
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !63
  %18 = load i1* %CF, align 1, !mcsema_real_eip !63
  store i1 %18, i1* %CF_val, !mcsema_real_eip !63
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !63
  %19 = load i1* %PF, align 1, !mcsema_real_eip !63
  store i1 %19, i1* %PF_val, !mcsema_real_eip !63
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !63
  %20 = load i1* %AF, align 1, !mcsema_real_eip !63
  store i1 %20, i1* %AF_val, !mcsema_real_eip !63
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !63
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !63
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !63
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !63
  %22 = load i1* %SF, align 1, !mcsema_real_eip !63
  store i1 %22, i1* %SF_val, !mcsema_real_eip !63
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !63
  %23 = load i1* %OF, align 1, !mcsema_real_eip !63
  store i1 %23, i1* %OF_val, !mcsema_real_eip !63
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !63
  %24 = load i1* %DF, align 1, !mcsema_real_eip !63
  store i1 %24, i1* %DF_val, !mcsema_real_eip !63
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !63
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !63
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !63
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !63
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !63
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !63
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !63
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !63
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !63
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !63
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !63
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !63
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !63
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !63
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !63
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !63
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !63
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !63
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !63
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !63
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !63
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !63
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !63
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !63
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !63
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !63
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !63
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !63
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !63
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !63
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !63
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !63
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !63
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !63
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !63
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !63
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !63
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !63
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !63
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !63
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !63
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !63
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !63
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !63
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !63
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !63
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !63
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !63
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !63
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !63
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !63
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !63
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !63
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !63
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !63
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !63
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !63
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !63
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !63
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !63
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !63
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !63
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !63
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !63
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !63
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !63
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !63
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !63
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !63
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !63
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !63
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !63
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !63
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !63
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !63
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !63
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !63
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !63
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !63
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !63
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !63
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !63
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !63
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !63
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !63
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !63
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !63
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !63
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !63
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !63
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !63
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !63
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !63
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !63
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !63
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !63
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !63
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !63
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !63
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !63
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !63
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !63
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !63
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !63
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !63
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !63
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !63
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !63
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !63
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !63
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !63
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !63
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !63
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !63
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !63
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !63
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !63
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !63
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !63
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !63
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !63
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !63
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !63
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !63
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !63
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !63
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !63
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !63
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !63
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !63
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !63
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !63
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !63
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !63
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !63
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !63
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !63
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !63
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !63
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !63
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 309), i64* %RDI_val, !mcsema_real_eip !63
  %77 = load i64* %RSI_val, !mcsema_real_eip !64
  %78 = load i64* %RDX_val, !mcsema_real_eip !64
  %79 = load i64* %RCX_val, !mcsema_real_eip !64
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 309), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !64
  %81 = load i64* %RBP_val, !mcsema_real_eip !65
  %82 = add i64 %81, -112, !mcsema_real_eip !65
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !65
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !65
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !65
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_217(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !66
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !66
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !66
  %XMM15_val = alloca i128, !mcsema_real_eip !66
  %XMM14_val = alloca i128, !mcsema_real_eip !66
  %XMM13_val = alloca i128, !mcsema_real_eip !66
  %XMM12_val = alloca i128, !mcsema_real_eip !66
  %XMM11_val = alloca i128, !mcsema_real_eip !66
  %XMM10_val = alloca i128, !mcsema_real_eip !66
  %XMM9_val = alloca i128, !mcsema_real_eip !66
  %XMM8_val = alloca i128, !mcsema_real_eip !66
  %XMM7_val = alloca i128, !mcsema_real_eip !66
  %XMM6_val = alloca i128, !mcsema_real_eip !66
  %XMM5_val = alloca i128, !mcsema_real_eip !66
  %XMM4_val = alloca i128, !mcsema_real_eip !66
  %XMM3_val = alloca i128, !mcsema_real_eip !66
  %XMM2_val = alloca i128, !mcsema_real_eip !66
  %XMM1_val = alloca i128, !mcsema_real_eip !66
  %XMM0_val = alloca i128, !mcsema_real_eip !66
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !66
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !66
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !66
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !66
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !66
  %FPU_IM_val = alloca i1, !mcsema_real_eip !66
  %FPU_DM_val = alloca i1, !mcsema_real_eip !66
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !66
  %FPU_OM_val = alloca i1, !mcsema_real_eip !66
  %FPU_UM_val = alloca i1, !mcsema_real_eip !66
  %FPU_PM_val = alloca i1, !mcsema_real_eip !66
  %FPU_PC_val = alloca i2, !mcsema_real_eip !66
  %FPU_RC_val = alloca i2, !mcsema_real_eip !66
  %FPU_X_val = alloca i1, !mcsema_real_eip !66
  %FPU_IE_val = alloca i1, !mcsema_real_eip !66
  %FPU_DE_val = alloca i1, !mcsema_real_eip !66
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !66
  %FPU_OE_val = alloca i1, !mcsema_real_eip !66
  %FPU_UE_val = alloca i1, !mcsema_real_eip !66
  %FPU_PE_val = alloca i1, !mcsema_real_eip !66
  %FPU_SF_val = alloca i1, !mcsema_real_eip !66
  %FPU_ES_val = alloca i1, !mcsema_real_eip !66
  %FPU_C0_val = alloca i1, !mcsema_real_eip !66
  %FPU_C1_val = alloca i1, !mcsema_real_eip !66
  %FPU_C2_val = alloca i1, !mcsema_real_eip !66
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !66
  %FPU_C3_val = alloca i1, !mcsema_real_eip !66
  %FPU_B_val = alloca i1, !mcsema_real_eip !66
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !66
  %DF_val = alloca i1, !mcsema_real_eip !66
  %OF_val = alloca i1, !mcsema_real_eip !66
  %SF_val = alloca i1, !mcsema_real_eip !66
  %CF_val = alloca i1, !mcsema_real_eip !66
  %AF_val = alloca i1, !mcsema_real_eip !66
  %PF_val = alloca i1, !mcsema_real_eip !66
  %ZF_val = alloca i1, !mcsema_real_eip !66
  %RIP_val = alloca i64, !mcsema_real_eip !66
  %R14_val = alloca i64, !mcsema_real_eip !66
  %R13_val = alloca i64, !mcsema_real_eip !66
  %R12_val = alloca i64, !mcsema_real_eip !66
  %R11_val = alloca i64, !mcsema_real_eip !66
  %R10_val = alloca i64, !mcsema_real_eip !66
  %R9_val = alloca i64, !mcsema_real_eip !66
  %R8_val = alloca i64, !mcsema_real_eip !66
  %RSP_val = alloca i64, !mcsema_real_eip !66
  %RBP_val = alloca i64, !mcsema_real_eip !66
  %RDI_val = alloca i64, !mcsema_real_eip !66
  %RSI_val = alloca i64, !mcsema_real_eip !66
  %RDX_val = alloca i64, !mcsema_real_eip !66
  %RCX_val = alloca i64, !mcsema_real_eip !66
  %RBX_val = alloca i64, !mcsema_real_eip !66
  %RAX_val = alloca i64, !mcsema_real_eip !66
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !66
  %1 = load i64* %RAX, !mcsema_real_eip !66
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !66
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !66
  %2 = load i64* %RBX, !mcsema_real_eip !66
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !66
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !66
  %3 = load i64* %RCX, !mcsema_real_eip !66
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !66
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !66
  %4 = load i64* %RDX, !mcsema_real_eip !66
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !66
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !66
  %5 = load i64* %RSI, !mcsema_real_eip !66
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !66
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !66
  %6 = load i64* %RDI, !mcsema_real_eip !66
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !66
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !66
  %7 = load i64* %RSP, !mcsema_real_eip !66
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !66
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !66
  %8 = load i64* %RBP, !mcsema_real_eip !66
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !66
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !66
  %9 = load i64* %R8, !mcsema_real_eip !66
  store i64 %9, i64* %R8_val, !mcsema_real_eip !66
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !66
  %10 = load i64* %R9, !mcsema_real_eip !66
  store i64 %10, i64* %R9_val, !mcsema_real_eip !66
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !66
  %11 = load i64* %R10, !mcsema_real_eip !66
  store i64 %11, i64* %R10_val, !mcsema_real_eip !66
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !66
  %12 = load i64* %R11, !mcsema_real_eip !66
  store i64 %12, i64* %R11_val, !mcsema_real_eip !66
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !66
  %13 = load i64* %R12, !mcsema_real_eip !66
  store i64 %13, i64* %R12_val, !mcsema_real_eip !66
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !66
  %14 = load i64* %R13, !mcsema_real_eip !66
  store i64 %14, i64* %R13_val, !mcsema_real_eip !66
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !66
  %15 = load i64* %R14, !mcsema_real_eip !66
  store i64 %15, i64* %R14_val, !mcsema_real_eip !66
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !66
  %16 = load i64* %R15, !mcsema_real_eip !66
  store i64 %16, i64* %R15_val, !mcsema_real_eip !66
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !66
  %17 = load i64* %RIP, !mcsema_real_eip !66
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !66
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !66
  %18 = load i1* %CF, align 1, !mcsema_real_eip !66
  store i1 %18, i1* %CF_val, !mcsema_real_eip !66
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !66
  %19 = load i1* %PF, align 1, !mcsema_real_eip !66
  store i1 %19, i1* %PF_val, !mcsema_real_eip !66
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !66
  %20 = load i1* %AF, align 1, !mcsema_real_eip !66
  store i1 %20, i1* %AF_val, !mcsema_real_eip !66
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !66
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !66
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !66
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !66
  %22 = load i1* %SF, align 1, !mcsema_real_eip !66
  store i1 %22, i1* %SF_val, !mcsema_real_eip !66
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !66
  %23 = load i1* %OF, align 1, !mcsema_real_eip !66
  store i1 %23, i1* %OF_val, !mcsema_real_eip !66
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !66
  %24 = load i1* %DF, align 1, !mcsema_real_eip !66
  store i1 %24, i1* %DF_val, !mcsema_real_eip !66
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !66
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !66
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !66
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !66
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !66
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !66
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !66
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !66
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !66
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !66
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !66
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !66
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !66
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !66
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !66
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !66
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !66
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !66
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !66
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !66
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !66
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !66
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !66
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !66
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !66
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !66
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !66
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !66
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !66
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !66
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !66
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !66
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !66
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !66
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !66
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !66
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !66
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !66
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !66
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !66
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !66
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !66
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !66
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !66
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !66
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !66
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !66
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !66
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !66
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !66
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !66
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !66
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !66
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !66
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !66
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !66
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !66
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !66
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !66
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !66
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !66
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !66
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !66
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !66
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !66
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !66
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !66
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !66
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !66
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !66
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !66
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !66
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !66
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !66
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !66
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !66
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !66
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !66
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !66
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !66
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !66
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !66
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !66
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !66
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !66
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !66
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !66
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !66
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !66
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !66
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !66
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !66
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !66
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !66
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !66
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !66
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !66
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !66
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !66
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !66
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !66
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !66
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !66
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !66
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !66
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !66
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !66
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !66
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !66
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !66
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !66
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !66
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !66
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !66
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !66
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !66
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !66
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !66
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !66
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !66
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !66
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !66
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !66
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !66
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !66
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !66
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !66
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !66
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !66
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !66
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !66
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !66
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !66
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !66
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !66
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !66
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !66
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !66
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !66
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !66
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 337), i64* %RDI_val, !mcsema_real_eip !66
  %77 = load i64* %RSI_val, !mcsema_real_eip !67
  %78 = load i64* %RDX_val, !mcsema_real_eip !67
  %79 = load i64* %RCX_val, !mcsema_real_eip !67
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 337), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !67
  %81 = load i64* %RBP_val, !mcsema_real_eip !68
  %82 = add i64 %81, -116, !mcsema_real_eip !68
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !68
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !68
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !68
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_230(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !69
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !69
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !69
  %XMM15_val = alloca i128, !mcsema_real_eip !69
  %XMM14_val = alloca i128, !mcsema_real_eip !69
  %XMM13_val = alloca i128, !mcsema_real_eip !69
  %XMM12_val = alloca i128, !mcsema_real_eip !69
  %XMM11_val = alloca i128, !mcsema_real_eip !69
  %XMM10_val = alloca i128, !mcsema_real_eip !69
  %XMM9_val = alloca i128, !mcsema_real_eip !69
  %XMM8_val = alloca i128, !mcsema_real_eip !69
  %XMM7_val = alloca i128, !mcsema_real_eip !69
  %XMM6_val = alloca i128, !mcsema_real_eip !69
  %XMM5_val = alloca i128, !mcsema_real_eip !69
  %XMM4_val = alloca i128, !mcsema_real_eip !69
  %XMM3_val = alloca i128, !mcsema_real_eip !69
  %XMM2_val = alloca i128, !mcsema_real_eip !69
  %XMM1_val = alloca i128, !mcsema_real_eip !69
  %XMM0_val = alloca i128, !mcsema_real_eip !69
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !69
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !69
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !69
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !69
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !69
  %FPU_IM_val = alloca i1, !mcsema_real_eip !69
  %FPU_DM_val = alloca i1, !mcsema_real_eip !69
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !69
  %FPU_OM_val = alloca i1, !mcsema_real_eip !69
  %FPU_UM_val = alloca i1, !mcsema_real_eip !69
  %FPU_PM_val = alloca i1, !mcsema_real_eip !69
  %FPU_PC_val = alloca i2, !mcsema_real_eip !69
  %FPU_RC_val = alloca i2, !mcsema_real_eip !69
  %FPU_X_val = alloca i1, !mcsema_real_eip !69
  %FPU_IE_val = alloca i1, !mcsema_real_eip !69
  %FPU_DE_val = alloca i1, !mcsema_real_eip !69
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !69
  %FPU_OE_val = alloca i1, !mcsema_real_eip !69
  %FPU_UE_val = alloca i1, !mcsema_real_eip !69
  %FPU_PE_val = alloca i1, !mcsema_real_eip !69
  %FPU_SF_val = alloca i1, !mcsema_real_eip !69
  %FPU_ES_val = alloca i1, !mcsema_real_eip !69
  %FPU_C0_val = alloca i1, !mcsema_real_eip !69
  %FPU_C1_val = alloca i1, !mcsema_real_eip !69
  %FPU_C2_val = alloca i1, !mcsema_real_eip !69
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !69
  %FPU_C3_val = alloca i1, !mcsema_real_eip !69
  %FPU_B_val = alloca i1, !mcsema_real_eip !69
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !69
  %DF_val = alloca i1, !mcsema_real_eip !69
  %OF_val = alloca i1, !mcsema_real_eip !69
  %SF_val = alloca i1, !mcsema_real_eip !69
  %CF_val = alloca i1, !mcsema_real_eip !69
  %AF_val = alloca i1, !mcsema_real_eip !69
  %PF_val = alloca i1, !mcsema_real_eip !69
  %ZF_val = alloca i1, !mcsema_real_eip !69
  %RIP_val = alloca i64, !mcsema_real_eip !69
  %R14_val = alloca i64, !mcsema_real_eip !69
  %R13_val = alloca i64, !mcsema_real_eip !69
  %R12_val = alloca i64, !mcsema_real_eip !69
  %R11_val = alloca i64, !mcsema_real_eip !69
  %R10_val = alloca i64, !mcsema_real_eip !69
  %R9_val = alloca i64, !mcsema_real_eip !69
  %R8_val = alloca i64, !mcsema_real_eip !69
  %RSP_val = alloca i64, !mcsema_real_eip !69
  %RBP_val = alloca i64, !mcsema_real_eip !69
  %RDI_val = alloca i64, !mcsema_real_eip !69
  %RSI_val = alloca i64, !mcsema_real_eip !69
  %RDX_val = alloca i64, !mcsema_real_eip !69
  %RCX_val = alloca i64, !mcsema_real_eip !69
  %RBX_val = alloca i64, !mcsema_real_eip !69
  %RAX_val = alloca i64, !mcsema_real_eip !69
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !69
  %1 = load i64* %RAX, !mcsema_real_eip !69
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !69
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !69
  %2 = load i64* %RBX, !mcsema_real_eip !69
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !69
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !69
  %3 = load i64* %RCX, !mcsema_real_eip !69
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !69
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !69
  %4 = load i64* %RDX, !mcsema_real_eip !69
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !69
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !69
  %5 = load i64* %RSI, !mcsema_real_eip !69
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !69
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !69
  %6 = load i64* %RDI, !mcsema_real_eip !69
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !69
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !69
  %7 = load i64* %RSP, !mcsema_real_eip !69
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !69
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !69
  %8 = load i64* %RBP, !mcsema_real_eip !69
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !69
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !69
  %9 = load i64* %R8, !mcsema_real_eip !69
  store i64 %9, i64* %R8_val, !mcsema_real_eip !69
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !69
  %10 = load i64* %R9, !mcsema_real_eip !69
  store i64 %10, i64* %R9_val, !mcsema_real_eip !69
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !69
  %11 = load i64* %R10, !mcsema_real_eip !69
  store i64 %11, i64* %R10_val, !mcsema_real_eip !69
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !69
  %12 = load i64* %R11, !mcsema_real_eip !69
  store i64 %12, i64* %R11_val, !mcsema_real_eip !69
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !69
  %13 = load i64* %R12, !mcsema_real_eip !69
  store i64 %13, i64* %R12_val, !mcsema_real_eip !69
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !69
  %14 = load i64* %R13, !mcsema_real_eip !69
  store i64 %14, i64* %R13_val, !mcsema_real_eip !69
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !69
  %15 = load i64* %R14, !mcsema_real_eip !69
  store i64 %15, i64* %R14_val, !mcsema_real_eip !69
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !69
  %16 = load i64* %R15, !mcsema_real_eip !69
  store i64 %16, i64* %R15_val, !mcsema_real_eip !69
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !69
  %17 = load i64* %RIP, !mcsema_real_eip !69
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !69
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !69
  %18 = load i1* %CF, align 1, !mcsema_real_eip !69
  store i1 %18, i1* %CF_val, !mcsema_real_eip !69
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !69
  %19 = load i1* %PF, align 1, !mcsema_real_eip !69
  store i1 %19, i1* %PF_val, !mcsema_real_eip !69
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !69
  %20 = load i1* %AF, align 1, !mcsema_real_eip !69
  store i1 %20, i1* %AF_val, !mcsema_real_eip !69
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !69
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !69
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !69
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !69
  %22 = load i1* %SF, align 1, !mcsema_real_eip !69
  store i1 %22, i1* %SF_val, !mcsema_real_eip !69
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !69
  %23 = load i1* %OF, align 1, !mcsema_real_eip !69
  store i1 %23, i1* %OF_val, !mcsema_real_eip !69
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !69
  %24 = load i1* %DF, align 1, !mcsema_real_eip !69
  store i1 %24, i1* %DF_val, !mcsema_real_eip !69
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !69
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !69
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !69
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !69
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !69
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !69
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !69
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !69
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !69
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !69
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !69
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !69
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !69
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !69
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !69
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !69
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !69
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !69
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !69
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !69
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !69
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !69
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !69
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !69
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !69
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !69
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !69
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !69
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !69
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !69
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !69
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !69
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !69
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !69
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !69
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !69
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !69
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !69
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !69
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !69
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !69
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !69
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !69
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !69
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !69
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !69
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !69
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !69
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !69
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !69
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !69
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !69
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !69
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !69
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !69
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !69
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !69
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !69
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !69
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !69
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !69
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !69
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !69
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !69
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !69
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !69
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !69
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !69
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !69
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !69
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !69
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !69
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !69
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !69
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !69
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !69
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !69
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !69
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !69
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !69
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !69
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !69
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !69
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !69
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !69
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !69
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !69
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !69
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !69
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !69
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !69
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !69
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !69
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !69
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !69
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !69
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !69
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !69
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !69
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !69
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !69
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !69
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !69
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !69
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !69
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !69
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !69
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !69
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !69
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !69
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !69
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !69
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !69
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !69
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !69
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !69
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !69
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !69
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !69
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !69
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !69
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !69
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !69
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !69
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !69
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !69
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !69
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !69
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !69
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !69
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !69
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !69
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !69
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !69
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !69
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !69
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !69
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !69
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !69
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !69
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 365), i64* %RDI_val, !mcsema_real_eip !69
  %77 = load i64* %RSI_val, !mcsema_real_eip !70
  %78 = load i64* %RDX_val, !mcsema_real_eip !70
  %79 = load i64* %RCX_val, !mcsema_real_eip !70
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 365), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !70
  %81 = load i64* %RBP_val, !mcsema_real_eip !71
  %82 = add i64 %81, -120, !mcsema_real_eip !71
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !71
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !71
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !71
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_249(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !72
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !72
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !72
  %XMM15_val = alloca i128, !mcsema_real_eip !72
  %XMM14_val = alloca i128, !mcsema_real_eip !72
  %XMM13_val = alloca i128, !mcsema_real_eip !72
  %XMM12_val = alloca i128, !mcsema_real_eip !72
  %XMM11_val = alloca i128, !mcsema_real_eip !72
  %XMM10_val = alloca i128, !mcsema_real_eip !72
  %XMM9_val = alloca i128, !mcsema_real_eip !72
  %XMM8_val = alloca i128, !mcsema_real_eip !72
  %XMM7_val = alloca i128, !mcsema_real_eip !72
  %XMM6_val = alloca i128, !mcsema_real_eip !72
  %XMM5_val = alloca i128, !mcsema_real_eip !72
  %XMM4_val = alloca i128, !mcsema_real_eip !72
  %XMM3_val = alloca i128, !mcsema_real_eip !72
  %XMM2_val = alloca i128, !mcsema_real_eip !72
  %XMM1_val = alloca i128, !mcsema_real_eip !72
  %XMM0_val = alloca i128, !mcsema_real_eip !72
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !72
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !72
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !72
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !72
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !72
  %FPU_IM_val = alloca i1, !mcsema_real_eip !72
  %FPU_DM_val = alloca i1, !mcsema_real_eip !72
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !72
  %FPU_OM_val = alloca i1, !mcsema_real_eip !72
  %FPU_UM_val = alloca i1, !mcsema_real_eip !72
  %FPU_PM_val = alloca i1, !mcsema_real_eip !72
  %FPU_PC_val = alloca i2, !mcsema_real_eip !72
  %FPU_RC_val = alloca i2, !mcsema_real_eip !72
  %FPU_X_val = alloca i1, !mcsema_real_eip !72
  %FPU_IE_val = alloca i1, !mcsema_real_eip !72
  %FPU_DE_val = alloca i1, !mcsema_real_eip !72
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !72
  %FPU_OE_val = alloca i1, !mcsema_real_eip !72
  %FPU_UE_val = alloca i1, !mcsema_real_eip !72
  %FPU_PE_val = alloca i1, !mcsema_real_eip !72
  %FPU_SF_val = alloca i1, !mcsema_real_eip !72
  %FPU_ES_val = alloca i1, !mcsema_real_eip !72
  %FPU_C0_val = alloca i1, !mcsema_real_eip !72
  %FPU_C1_val = alloca i1, !mcsema_real_eip !72
  %FPU_C2_val = alloca i1, !mcsema_real_eip !72
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !72
  %FPU_C3_val = alloca i1, !mcsema_real_eip !72
  %FPU_B_val = alloca i1, !mcsema_real_eip !72
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !72
  %DF_val = alloca i1, !mcsema_real_eip !72
  %OF_val = alloca i1, !mcsema_real_eip !72
  %SF_val = alloca i1, !mcsema_real_eip !72
  %CF_val = alloca i1, !mcsema_real_eip !72
  %AF_val = alloca i1, !mcsema_real_eip !72
  %PF_val = alloca i1, !mcsema_real_eip !72
  %ZF_val = alloca i1, !mcsema_real_eip !72
  %RIP_val = alloca i64, !mcsema_real_eip !72
  %R14_val = alloca i64, !mcsema_real_eip !72
  %R13_val = alloca i64, !mcsema_real_eip !72
  %R12_val = alloca i64, !mcsema_real_eip !72
  %R11_val = alloca i64, !mcsema_real_eip !72
  %R10_val = alloca i64, !mcsema_real_eip !72
  %R9_val = alloca i64, !mcsema_real_eip !72
  %R8_val = alloca i64, !mcsema_real_eip !72
  %RSP_val = alloca i64, !mcsema_real_eip !72
  %RBP_val = alloca i64, !mcsema_real_eip !72
  %RDI_val = alloca i64, !mcsema_real_eip !72
  %RSI_val = alloca i64, !mcsema_real_eip !72
  %RDX_val = alloca i64, !mcsema_real_eip !72
  %RCX_val = alloca i64, !mcsema_real_eip !72
  %RBX_val = alloca i64, !mcsema_real_eip !72
  %RAX_val = alloca i64, !mcsema_real_eip !72
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !72
  %1 = load i64* %RAX, !mcsema_real_eip !72
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !72
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !72
  %2 = load i64* %RBX, !mcsema_real_eip !72
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !72
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !72
  %3 = load i64* %RCX, !mcsema_real_eip !72
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !72
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !72
  %4 = load i64* %RDX, !mcsema_real_eip !72
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !72
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !72
  %5 = load i64* %RSI, !mcsema_real_eip !72
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !72
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !72
  %6 = load i64* %RDI, !mcsema_real_eip !72
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !72
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !72
  %7 = load i64* %RSP, !mcsema_real_eip !72
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !72
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !72
  %8 = load i64* %RBP, !mcsema_real_eip !72
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !72
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !72
  %9 = load i64* %R8, !mcsema_real_eip !72
  store i64 %9, i64* %R8_val, !mcsema_real_eip !72
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !72
  %10 = load i64* %R9, !mcsema_real_eip !72
  store i64 %10, i64* %R9_val, !mcsema_real_eip !72
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !72
  %11 = load i64* %R10, !mcsema_real_eip !72
  store i64 %11, i64* %R10_val, !mcsema_real_eip !72
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !72
  %12 = load i64* %R11, !mcsema_real_eip !72
  store i64 %12, i64* %R11_val, !mcsema_real_eip !72
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !72
  %13 = load i64* %R12, !mcsema_real_eip !72
  store i64 %13, i64* %R12_val, !mcsema_real_eip !72
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !72
  %14 = load i64* %R13, !mcsema_real_eip !72
  store i64 %14, i64* %R13_val, !mcsema_real_eip !72
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !72
  %15 = load i64* %R14, !mcsema_real_eip !72
  store i64 %15, i64* %R14_val, !mcsema_real_eip !72
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !72
  %16 = load i64* %R15, !mcsema_real_eip !72
  store i64 %16, i64* %R15_val, !mcsema_real_eip !72
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !72
  %17 = load i64* %RIP, !mcsema_real_eip !72
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !72
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !72
  %18 = load i1* %CF, align 1, !mcsema_real_eip !72
  store i1 %18, i1* %CF_val, !mcsema_real_eip !72
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !72
  %19 = load i1* %PF, align 1, !mcsema_real_eip !72
  store i1 %19, i1* %PF_val, !mcsema_real_eip !72
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !72
  %20 = load i1* %AF, align 1, !mcsema_real_eip !72
  store i1 %20, i1* %AF_val, !mcsema_real_eip !72
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !72
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !72
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !72
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !72
  %22 = load i1* %SF, align 1, !mcsema_real_eip !72
  store i1 %22, i1* %SF_val, !mcsema_real_eip !72
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !72
  %23 = load i1* %OF, align 1, !mcsema_real_eip !72
  store i1 %23, i1* %OF_val, !mcsema_real_eip !72
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !72
  %24 = load i1* %DF, align 1, !mcsema_real_eip !72
  store i1 %24, i1* %DF_val, !mcsema_real_eip !72
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !72
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !72
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !72
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !72
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !72
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !72
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !72
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !72
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !72
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !72
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !72
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !72
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !72
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !72
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !72
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !72
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !72
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !72
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !72
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !72
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !72
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !72
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !72
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !72
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !72
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !72
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !72
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !72
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !72
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !72
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !72
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !72
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !72
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !72
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !72
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !72
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !72
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !72
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !72
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !72
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !72
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !72
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !72
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !72
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !72
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !72
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !72
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !72
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !72
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !72
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !72
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !72
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !72
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !72
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !72
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !72
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !72
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !72
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !72
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !72
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !72
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !72
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !72
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !72
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !72
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !72
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !72
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !72
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !72
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !72
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !72
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !72
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !72
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !72
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !72
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !72
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !72
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !72
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !72
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !72
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !72
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !72
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !72
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !72
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !72
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !72
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !72
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !72
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !72
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !72
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !72
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !72
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !72
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !72
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !72
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !72
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !72
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !72
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !72
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !72
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !72
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !72
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !72
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !72
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !72
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !72
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !72
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !72
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !72
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !72
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !72
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !72
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !72
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !72
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !72
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !72
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !72
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !72
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !72
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !72
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !72
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !72
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !72
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !72
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !72
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !72
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !72
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !72
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !72
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !72
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !72
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !72
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !72
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !72
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !72
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !72
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !72
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !72
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !72
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !72
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 393), i64* %RDI_val, !mcsema_real_eip !72
  %77 = load i64* %RSI_val, !mcsema_real_eip !73
  %78 = load i64* %RDX_val, !mcsema_real_eip !73
  %79 = load i64* %RCX_val, !mcsema_real_eip !73
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 393), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !73
  %81 = load i64* %RBP_val, !mcsema_real_eip !74
  %82 = add i64 %81, -124, !mcsema_real_eip !74
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !74
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !74
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !74
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_262(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !75
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !75
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !75
  %XMM15_val = alloca i128, !mcsema_real_eip !75
  %XMM14_val = alloca i128, !mcsema_real_eip !75
  %XMM13_val = alloca i128, !mcsema_real_eip !75
  %XMM12_val = alloca i128, !mcsema_real_eip !75
  %XMM11_val = alloca i128, !mcsema_real_eip !75
  %XMM10_val = alloca i128, !mcsema_real_eip !75
  %XMM9_val = alloca i128, !mcsema_real_eip !75
  %XMM8_val = alloca i128, !mcsema_real_eip !75
  %XMM7_val = alloca i128, !mcsema_real_eip !75
  %XMM6_val = alloca i128, !mcsema_real_eip !75
  %XMM5_val = alloca i128, !mcsema_real_eip !75
  %XMM4_val = alloca i128, !mcsema_real_eip !75
  %XMM3_val = alloca i128, !mcsema_real_eip !75
  %XMM2_val = alloca i128, !mcsema_real_eip !75
  %XMM1_val = alloca i128, !mcsema_real_eip !75
  %XMM0_val = alloca i128, !mcsema_real_eip !75
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !75
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !75
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !75
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !75
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !75
  %FPU_IM_val = alloca i1, !mcsema_real_eip !75
  %FPU_DM_val = alloca i1, !mcsema_real_eip !75
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !75
  %FPU_OM_val = alloca i1, !mcsema_real_eip !75
  %FPU_UM_val = alloca i1, !mcsema_real_eip !75
  %FPU_PM_val = alloca i1, !mcsema_real_eip !75
  %FPU_PC_val = alloca i2, !mcsema_real_eip !75
  %FPU_RC_val = alloca i2, !mcsema_real_eip !75
  %FPU_X_val = alloca i1, !mcsema_real_eip !75
  %FPU_IE_val = alloca i1, !mcsema_real_eip !75
  %FPU_DE_val = alloca i1, !mcsema_real_eip !75
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !75
  %FPU_OE_val = alloca i1, !mcsema_real_eip !75
  %FPU_UE_val = alloca i1, !mcsema_real_eip !75
  %FPU_PE_val = alloca i1, !mcsema_real_eip !75
  %FPU_SF_val = alloca i1, !mcsema_real_eip !75
  %FPU_ES_val = alloca i1, !mcsema_real_eip !75
  %FPU_C0_val = alloca i1, !mcsema_real_eip !75
  %FPU_C1_val = alloca i1, !mcsema_real_eip !75
  %FPU_C2_val = alloca i1, !mcsema_real_eip !75
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !75
  %FPU_C3_val = alloca i1, !mcsema_real_eip !75
  %FPU_B_val = alloca i1, !mcsema_real_eip !75
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !75
  %DF_val = alloca i1, !mcsema_real_eip !75
  %OF_val = alloca i1, !mcsema_real_eip !75
  %SF_val = alloca i1, !mcsema_real_eip !75
  %CF_val = alloca i1, !mcsema_real_eip !75
  %AF_val = alloca i1, !mcsema_real_eip !75
  %PF_val = alloca i1, !mcsema_real_eip !75
  %ZF_val = alloca i1, !mcsema_real_eip !75
  %RIP_val = alloca i64, !mcsema_real_eip !75
  %R14_val = alloca i64, !mcsema_real_eip !75
  %R13_val = alloca i64, !mcsema_real_eip !75
  %R12_val = alloca i64, !mcsema_real_eip !75
  %R11_val = alloca i64, !mcsema_real_eip !75
  %R10_val = alloca i64, !mcsema_real_eip !75
  %R9_val = alloca i64, !mcsema_real_eip !75
  %R8_val = alloca i64, !mcsema_real_eip !75
  %RSP_val = alloca i64, !mcsema_real_eip !75
  %RBP_val = alloca i64, !mcsema_real_eip !75
  %RDI_val = alloca i64, !mcsema_real_eip !75
  %RSI_val = alloca i64, !mcsema_real_eip !75
  %RDX_val = alloca i64, !mcsema_real_eip !75
  %RCX_val = alloca i64, !mcsema_real_eip !75
  %RBX_val = alloca i64, !mcsema_real_eip !75
  %RAX_val = alloca i64, !mcsema_real_eip !75
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !75
  %1 = load i64* %RAX, !mcsema_real_eip !75
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !75
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !75
  %2 = load i64* %RBX, !mcsema_real_eip !75
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !75
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !75
  %3 = load i64* %RCX, !mcsema_real_eip !75
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !75
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !75
  %4 = load i64* %RDX, !mcsema_real_eip !75
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !75
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !75
  %5 = load i64* %RSI, !mcsema_real_eip !75
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !75
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !75
  %6 = load i64* %RDI, !mcsema_real_eip !75
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !75
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !75
  %7 = load i64* %RSP, !mcsema_real_eip !75
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !75
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !75
  %8 = load i64* %RBP, !mcsema_real_eip !75
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !75
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !75
  %9 = load i64* %R8, !mcsema_real_eip !75
  store i64 %9, i64* %R8_val, !mcsema_real_eip !75
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !75
  %10 = load i64* %R9, !mcsema_real_eip !75
  store i64 %10, i64* %R9_val, !mcsema_real_eip !75
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !75
  %11 = load i64* %R10, !mcsema_real_eip !75
  store i64 %11, i64* %R10_val, !mcsema_real_eip !75
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !75
  %12 = load i64* %R11, !mcsema_real_eip !75
  store i64 %12, i64* %R11_val, !mcsema_real_eip !75
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !75
  %13 = load i64* %R12, !mcsema_real_eip !75
  store i64 %13, i64* %R12_val, !mcsema_real_eip !75
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !75
  %14 = load i64* %R13, !mcsema_real_eip !75
  store i64 %14, i64* %R13_val, !mcsema_real_eip !75
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !75
  %15 = load i64* %R14, !mcsema_real_eip !75
  store i64 %15, i64* %R14_val, !mcsema_real_eip !75
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !75
  %16 = load i64* %R15, !mcsema_real_eip !75
  store i64 %16, i64* %R15_val, !mcsema_real_eip !75
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !75
  %17 = load i64* %RIP, !mcsema_real_eip !75
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !75
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !75
  %18 = load i1* %CF, align 1, !mcsema_real_eip !75
  store i1 %18, i1* %CF_val, !mcsema_real_eip !75
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !75
  %19 = load i1* %PF, align 1, !mcsema_real_eip !75
  store i1 %19, i1* %PF_val, !mcsema_real_eip !75
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !75
  %20 = load i1* %AF, align 1, !mcsema_real_eip !75
  store i1 %20, i1* %AF_val, !mcsema_real_eip !75
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !75
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !75
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !75
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !75
  %22 = load i1* %SF, align 1, !mcsema_real_eip !75
  store i1 %22, i1* %SF_val, !mcsema_real_eip !75
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !75
  %23 = load i1* %OF, align 1, !mcsema_real_eip !75
  store i1 %23, i1* %OF_val, !mcsema_real_eip !75
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !75
  %24 = load i1* %DF, align 1, !mcsema_real_eip !75
  store i1 %24, i1* %DF_val, !mcsema_real_eip !75
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !75
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !75
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !75
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !75
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !75
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !75
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !75
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !75
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !75
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !75
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !75
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !75
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !75
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !75
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !75
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !75
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !75
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !75
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !75
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !75
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !75
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !75
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !75
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !75
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !75
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !75
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !75
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !75
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !75
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !75
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !75
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !75
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !75
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !75
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !75
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !75
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !75
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !75
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !75
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !75
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !75
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !75
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !75
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !75
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !75
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !75
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !75
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !75
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !75
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !75
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !75
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !75
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !75
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !75
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !75
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !75
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !75
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !75
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !75
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !75
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !75
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !75
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !75
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !75
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !75
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !75
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !75
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !75
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !75
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !75
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !75
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !75
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !75
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !75
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !75
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !75
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !75
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !75
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !75
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !75
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !75
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !75
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !75
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !75
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !75
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !75
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !75
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !75
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !75
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !75
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !75
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !75
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !75
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !75
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !75
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !75
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !75
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !75
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !75
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !75
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !75
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !75
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !75
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !75
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !75
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !75
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !75
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !75
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !75
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !75
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !75
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !75
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !75
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !75
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !75
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !75
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !75
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !75
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !75
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !75
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !75
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !75
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !75
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !75
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !75
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !75
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !75
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !75
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !75
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !75
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !75
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !75
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !75
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !75
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !75
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !75
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !75
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !75
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !75
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !75
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 421), i64* %RDI_val, !mcsema_real_eip !75
  %77 = load i64* %RSI_val, !mcsema_real_eip !76
  %78 = load i64* %RDX_val, !mcsema_real_eip !76
  %79 = load i64* %RCX_val, !mcsema_real_eip !76
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 421), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !76
  %81 = load i64* %RBP_val, !mcsema_real_eip !77
  %82 = add i64 %81, -128, !mcsema_real_eip !77
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !77
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !77
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !77
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !78
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !78
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !78
  %XMM15_val = alloca i128, !mcsema_real_eip !78
  %XMM14_val = alloca i128, !mcsema_real_eip !78
  %XMM13_val = alloca i128, !mcsema_real_eip !78
  %XMM12_val = alloca i128, !mcsema_real_eip !78
  %XMM11_val = alloca i128, !mcsema_real_eip !78
  %XMM10_val = alloca i128, !mcsema_real_eip !78
  %XMM9_val = alloca i128, !mcsema_real_eip !78
  %XMM8_val = alloca i128, !mcsema_real_eip !78
  %XMM7_val = alloca i128, !mcsema_real_eip !78
  %XMM6_val = alloca i128, !mcsema_real_eip !78
  %XMM5_val = alloca i128, !mcsema_real_eip !78
  %XMM4_val = alloca i128, !mcsema_real_eip !78
  %XMM3_val = alloca i128, !mcsema_real_eip !78
  %XMM2_val = alloca i128, !mcsema_real_eip !78
  %XMM1_val = alloca i128, !mcsema_real_eip !78
  %XMM0_val = alloca i128, !mcsema_real_eip !78
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !78
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !78
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !78
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !78
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !78
  %FPU_IM_val = alloca i1, !mcsema_real_eip !78
  %FPU_DM_val = alloca i1, !mcsema_real_eip !78
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !78
  %FPU_OM_val = alloca i1, !mcsema_real_eip !78
  %FPU_UM_val = alloca i1, !mcsema_real_eip !78
  %FPU_PM_val = alloca i1, !mcsema_real_eip !78
  %FPU_PC_val = alloca i2, !mcsema_real_eip !78
  %FPU_RC_val = alloca i2, !mcsema_real_eip !78
  %FPU_X_val = alloca i1, !mcsema_real_eip !78
  %FPU_IE_val = alloca i1, !mcsema_real_eip !78
  %FPU_DE_val = alloca i1, !mcsema_real_eip !78
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !78
  %FPU_OE_val = alloca i1, !mcsema_real_eip !78
  %FPU_UE_val = alloca i1, !mcsema_real_eip !78
  %FPU_PE_val = alloca i1, !mcsema_real_eip !78
  %FPU_SF_val = alloca i1, !mcsema_real_eip !78
  %FPU_ES_val = alloca i1, !mcsema_real_eip !78
  %FPU_C0_val = alloca i1, !mcsema_real_eip !78
  %FPU_C1_val = alloca i1, !mcsema_real_eip !78
  %FPU_C2_val = alloca i1, !mcsema_real_eip !78
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !78
  %FPU_C3_val = alloca i1, !mcsema_real_eip !78
  %FPU_B_val = alloca i1, !mcsema_real_eip !78
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !78
  %DF_val = alloca i1, !mcsema_real_eip !78
  %OF_val = alloca i1, !mcsema_real_eip !78
  %SF_val = alloca i1, !mcsema_real_eip !78
  %CF_val = alloca i1, !mcsema_real_eip !78
  %AF_val = alloca i1, !mcsema_real_eip !78
  %PF_val = alloca i1, !mcsema_real_eip !78
  %ZF_val = alloca i1, !mcsema_real_eip !78
  %RIP_val = alloca i64, !mcsema_real_eip !78
  %R14_val = alloca i64, !mcsema_real_eip !78
  %R13_val = alloca i64, !mcsema_real_eip !78
  %R12_val = alloca i64, !mcsema_real_eip !78
  %R11_val = alloca i64, !mcsema_real_eip !78
  %R10_val = alloca i64, !mcsema_real_eip !78
  %R9_val = alloca i64, !mcsema_real_eip !78
  %R8_val = alloca i64, !mcsema_real_eip !78
  %RSP_val = alloca i64, !mcsema_real_eip !78
  %RBP_val = alloca i64, !mcsema_real_eip !78
  %RDI_val = alloca i64, !mcsema_real_eip !78
  %RSI_val = alloca i64, !mcsema_real_eip !78
  %RDX_val = alloca i64, !mcsema_real_eip !78
  %RCX_val = alloca i64, !mcsema_real_eip !78
  %RBX_val = alloca i64, !mcsema_real_eip !78
  %RAX_val = alloca i64, !mcsema_real_eip !78
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !78
  %1 = load i64* %RAX, !mcsema_real_eip !78
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !78
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !78
  %2 = load i64* %RBX, !mcsema_real_eip !78
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !78
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !78
  %3 = load i64* %RCX, !mcsema_real_eip !78
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !78
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !78
  %4 = load i64* %RDX, !mcsema_real_eip !78
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !78
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !78
  %5 = load i64* %RSI, !mcsema_real_eip !78
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !78
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !78
  %6 = load i64* %RDI, !mcsema_real_eip !78
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !78
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !78
  %7 = load i64* %RSP, !mcsema_real_eip !78
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !78
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !78
  %8 = load i64* %RBP, !mcsema_real_eip !78
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !78
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !78
  %9 = load i64* %R8, !mcsema_real_eip !78
  store i64 %9, i64* %R8_val, !mcsema_real_eip !78
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !78
  %10 = load i64* %R9, !mcsema_real_eip !78
  store i64 %10, i64* %R9_val, !mcsema_real_eip !78
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !78
  %11 = load i64* %R10, !mcsema_real_eip !78
  store i64 %11, i64* %R10_val, !mcsema_real_eip !78
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !78
  %12 = load i64* %R11, !mcsema_real_eip !78
  store i64 %12, i64* %R11_val, !mcsema_real_eip !78
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !78
  %13 = load i64* %R12, !mcsema_real_eip !78
  store i64 %13, i64* %R12_val, !mcsema_real_eip !78
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !78
  %14 = load i64* %R13, !mcsema_real_eip !78
  store i64 %14, i64* %R13_val, !mcsema_real_eip !78
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !78
  %15 = load i64* %R14, !mcsema_real_eip !78
  store i64 %15, i64* %R14_val, !mcsema_real_eip !78
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !78
  %16 = load i64* %R15, !mcsema_real_eip !78
  store i64 %16, i64* %R15_val, !mcsema_real_eip !78
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !78
  %17 = load i64* %RIP, !mcsema_real_eip !78
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !78
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !78
  %18 = load i1* %CF, align 1, !mcsema_real_eip !78
  store i1 %18, i1* %CF_val, !mcsema_real_eip !78
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !78
  %19 = load i1* %PF, align 1, !mcsema_real_eip !78
  store i1 %19, i1* %PF_val, !mcsema_real_eip !78
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !78
  %20 = load i1* %AF, align 1, !mcsema_real_eip !78
  store i1 %20, i1* %AF_val, !mcsema_real_eip !78
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !78
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !78
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !78
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !78
  %22 = load i1* %SF, align 1, !mcsema_real_eip !78
  store i1 %22, i1* %SF_val, !mcsema_real_eip !78
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !78
  %23 = load i1* %OF, align 1, !mcsema_real_eip !78
  store i1 %23, i1* %OF_val, !mcsema_real_eip !78
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !78
  %24 = load i1* %DF, align 1, !mcsema_real_eip !78
  store i1 %24, i1* %DF_val, !mcsema_real_eip !78
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !78
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !78
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !78
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !78
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !78
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !78
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !78
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !78
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !78
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !78
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !78
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !78
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !78
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !78
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !78
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !78
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !78
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !78
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !78
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !78
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !78
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !78
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !78
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !78
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !78
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !78
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !78
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !78
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !78
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !78
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !78
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !78
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !78
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !78
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !78
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !78
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !78
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !78
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !78
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !78
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !78
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !78
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !78
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !78
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !78
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !78
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !78
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !78
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !78
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !78
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !78
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !78
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !78
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !78
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !78
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !78
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !78
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !78
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !78
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !78
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !78
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !78
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !78
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !78
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !78
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !78
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !78
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !78
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !78
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !78
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !78
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !78
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !78
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !78
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !78
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !78
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !78
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !78
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !78
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !78
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !78
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !78
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !78
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !78
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !78
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !78
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !78
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !78
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !78
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !78
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !78
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !78
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !78
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !78
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !78
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !78
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !78
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !78
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !78
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !78
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !78
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !78
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !78
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !78
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !78
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !78
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !78
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !78
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !78
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !78
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !78
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !78
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !78
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !78
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !78
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !78
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !78
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !78
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !78
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !78
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !78
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !78
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !78
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !78
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !78
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !78
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !78
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !78
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !78
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !78
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !78
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !78
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !78
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !78
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !78
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !78
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !78
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !78
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !78
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !78
  store i64 ptrtoint (%1* @data_0x39b to i64), i64* %RDI_val, !mcsema_real_eip !78
  %77 = load i64* %RSI_val, !mcsema_real_eip !79
  %78 = load i64* %RDX_val, !mcsema_real_eip !79
  %79 = load i64* %RCX_val, !mcsema_real_eip !79
  %80 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%1* @data_0x39b to i64), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !79
  %81 = load i64* %RBP_val, !mcsema_real_eip !80
  %82 = add i64 %81, -56, !mcsema_real_eip !80
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !80
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !80
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !80
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_b9(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !81
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !81
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !81
  %XMM15_val = alloca i128, !mcsema_real_eip !81
  %XMM14_val = alloca i128, !mcsema_real_eip !81
  %XMM13_val = alloca i128, !mcsema_real_eip !81
  %XMM12_val = alloca i128, !mcsema_real_eip !81
  %XMM11_val = alloca i128, !mcsema_real_eip !81
  %XMM10_val = alloca i128, !mcsema_real_eip !81
  %XMM9_val = alloca i128, !mcsema_real_eip !81
  %XMM8_val = alloca i128, !mcsema_real_eip !81
  %XMM7_val = alloca i128, !mcsema_real_eip !81
  %XMM6_val = alloca i128, !mcsema_real_eip !81
  %XMM5_val = alloca i128, !mcsema_real_eip !81
  %XMM4_val = alloca i128, !mcsema_real_eip !81
  %XMM3_val = alloca i128, !mcsema_real_eip !81
  %XMM2_val = alloca i128, !mcsema_real_eip !81
  %XMM1_val = alloca i128, !mcsema_real_eip !81
  %XMM0_val = alloca i128, !mcsema_real_eip !81
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !81
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !81
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !81
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !81
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !81
  %FPU_IM_val = alloca i1, !mcsema_real_eip !81
  %FPU_DM_val = alloca i1, !mcsema_real_eip !81
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !81
  %FPU_OM_val = alloca i1, !mcsema_real_eip !81
  %FPU_UM_val = alloca i1, !mcsema_real_eip !81
  %FPU_PM_val = alloca i1, !mcsema_real_eip !81
  %FPU_PC_val = alloca i2, !mcsema_real_eip !81
  %FPU_RC_val = alloca i2, !mcsema_real_eip !81
  %FPU_X_val = alloca i1, !mcsema_real_eip !81
  %FPU_IE_val = alloca i1, !mcsema_real_eip !81
  %FPU_DE_val = alloca i1, !mcsema_real_eip !81
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !81
  %FPU_OE_val = alloca i1, !mcsema_real_eip !81
  %FPU_UE_val = alloca i1, !mcsema_real_eip !81
  %FPU_PE_val = alloca i1, !mcsema_real_eip !81
  %FPU_SF_val = alloca i1, !mcsema_real_eip !81
  %FPU_ES_val = alloca i1, !mcsema_real_eip !81
  %FPU_C0_val = alloca i1, !mcsema_real_eip !81
  %FPU_C1_val = alloca i1, !mcsema_real_eip !81
  %FPU_C2_val = alloca i1, !mcsema_real_eip !81
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !81
  %FPU_C3_val = alloca i1, !mcsema_real_eip !81
  %FPU_B_val = alloca i1, !mcsema_real_eip !81
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !81
  %DF_val = alloca i1, !mcsema_real_eip !81
  %OF_val = alloca i1, !mcsema_real_eip !81
  %SF_val = alloca i1, !mcsema_real_eip !81
  %CF_val = alloca i1, !mcsema_real_eip !81
  %AF_val = alloca i1, !mcsema_real_eip !81
  %PF_val = alloca i1, !mcsema_real_eip !81
  %ZF_val = alloca i1, !mcsema_real_eip !81
  %RIP_val = alloca i64, !mcsema_real_eip !81
  %R14_val = alloca i64, !mcsema_real_eip !81
  %R13_val = alloca i64, !mcsema_real_eip !81
  %R12_val = alloca i64, !mcsema_real_eip !81
  %R11_val = alloca i64, !mcsema_real_eip !81
  %R10_val = alloca i64, !mcsema_real_eip !81
  %R9_val = alloca i64, !mcsema_real_eip !81
  %R8_val = alloca i64, !mcsema_real_eip !81
  %RSP_val = alloca i64, !mcsema_real_eip !81
  %RBP_val = alloca i64, !mcsema_real_eip !81
  %RDI_val = alloca i64, !mcsema_real_eip !81
  %RSI_val = alloca i64, !mcsema_real_eip !81
  %RDX_val = alloca i64, !mcsema_real_eip !81
  %RCX_val = alloca i64, !mcsema_real_eip !81
  %RBX_val = alloca i64, !mcsema_real_eip !81
  %RAX_val = alloca i64, !mcsema_real_eip !81
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !81
  %1 = load i64* %RAX, !mcsema_real_eip !81
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !81
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !81
  %2 = load i64* %RBX, !mcsema_real_eip !81
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !81
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !81
  %3 = load i64* %RCX, !mcsema_real_eip !81
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !81
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !81
  %4 = load i64* %RDX, !mcsema_real_eip !81
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !81
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !81
  %5 = load i64* %RSI, !mcsema_real_eip !81
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !81
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !81
  %6 = load i64* %RDI, !mcsema_real_eip !81
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !81
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !81
  %7 = load i64* %RSP, !mcsema_real_eip !81
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !81
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !81
  %8 = load i64* %RBP, !mcsema_real_eip !81
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !81
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !81
  %9 = load i64* %R8, !mcsema_real_eip !81
  store i64 %9, i64* %R8_val, !mcsema_real_eip !81
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !81
  %10 = load i64* %R9, !mcsema_real_eip !81
  store i64 %10, i64* %R9_val, !mcsema_real_eip !81
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !81
  %11 = load i64* %R10, !mcsema_real_eip !81
  store i64 %11, i64* %R10_val, !mcsema_real_eip !81
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !81
  %12 = load i64* %R11, !mcsema_real_eip !81
  store i64 %12, i64* %R11_val, !mcsema_real_eip !81
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !81
  %13 = load i64* %R12, !mcsema_real_eip !81
  store i64 %13, i64* %R12_val, !mcsema_real_eip !81
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !81
  %14 = load i64* %R13, !mcsema_real_eip !81
  store i64 %14, i64* %R13_val, !mcsema_real_eip !81
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !81
  %15 = load i64* %R14, !mcsema_real_eip !81
  store i64 %15, i64* %R14_val, !mcsema_real_eip !81
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !81
  %16 = load i64* %R15, !mcsema_real_eip !81
  store i64 %16, i64* %R15_val, !mcsema_real_eip !81
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !81
  %17 = load i64* %RIP, !mcsema_real_eip !81
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !81
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !81
  %18 = load i1* %CF, align 1, !mcsema_real_eip !81
  store i1 %18, i1* %CF_val, !mcsema_real_eip !81
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !81
  %19 = load i1* %PF, align 1, !mcsema_real_eip !81
  store i1 %19, i1* %PF_val, !mcsema_real_eip !81
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !81
  %20 = load i1* %AF, align 1, !mcsema_real_eip !81
  store i1 %20, i1* %AF_val, !mcsema_real_eip !81
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !81
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !81
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !81
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !81
  %22 = load i1* %SF, align 1, !mcsema_real_eip !81
  store i1 %22, i1* %SF_val, !mcsema_real_eip !81
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !81
  %23 = load i1* %OF, align 1, !mcsema_real_eip !81
  store i1 %23, i1* %OF_val, !mcsema_real_eip !81
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !81
  %24 = load i1* %DF, align 1, !mcsema_real_eip !81
  store i1 %24, i1* %DF_val, !mcsema_real_eip !81
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !81
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !81
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !81
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !81
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !81
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !81
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !81
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !81
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !81
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !81
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !81
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !81
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !81
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !81
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !81
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !81
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !81
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !81
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !81
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !81
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !81
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !81
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !81
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !81
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !81
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !81
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !81
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !81
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !81
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !81
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !81
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !81
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !81
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !81
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !81
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !81
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !81
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !81
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !81
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !81
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !81
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !81
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !81
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !81
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !81
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !81
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !81
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !81
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !81
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !81
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !81
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !81
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !81
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !81
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !81
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !81
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !81
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !81
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !81
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !81
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !81
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !81
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !81
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !81
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !81
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !81
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !81
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !81
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !81
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !81
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !81
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !81
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !81
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !81
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !81
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !81
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !81
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !81
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !81
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !81
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !81
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !81
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !81
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !81
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !81
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !81
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !81
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !81
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !81
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !81
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !81
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !81
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !81
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !81
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !81
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !81
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !81
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !81
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !81
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !81
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !81
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !81
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !81
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !81
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !81
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !81
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !81
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !81
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !81
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !81
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !81
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !81
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !81
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !81
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !81
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !81
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !81
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !81
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !81
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !81
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !81
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !81
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !81
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !81
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !81
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !81
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !81
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !81
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !81
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !81
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !81
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !81
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !81
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !81
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !81
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !81
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !81
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !81
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !81
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !81
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 16), i64* %RDI_val, !mcsema_real_eip !81
  %77 = load i64* %RSI_val, !mcsema_real_eip !82
  %78 = load i64* %RDX_val, !mcsema_real_eip !82
  %79 = load i64* %RCX_val, !mcsema_real_eip !82
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 16), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !82
  %81 = load i64* %RBP_val, !mcsema_real_eip !83
  %82 = add i64 %81, -60, !mcsema_real_eip !83
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !83
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !83
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !83
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_d2(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !84
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !84
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !84
  %XMM15_val = alloca i128, !mcsema_real_eip !84
  %XMM14_val = alloca i128, !mcsema_real_eip !84
  %XMM13_val = alloca i128, !mcsema_real_eip !84
  %XMM12_val = alloca i128, !mcsema_real_eip !84
  %XMM11_val = alloca i128, !mcsema_real_eip !84
  %XMM10_val = alloca i128, !mcsema_real_eip !84
  %XMM9_val = alloca i128, !mcsema_real_eip !84
  %XMM8_val = alloca i128, !mcsema_real_eip !84
  %XMM7_val = alloca i128, !mcsema_real_eip !84
  %XMM6_val = alloca i128, !mcsema_real_eip !84
  %XMM5_val = alloca i128, !mcsema_real_eip !84
  %XMM4_val = alloca i128, !mcsema_real_eip !84
  %XMM3_val = alloca i128, !mcsema_real_eip !84
  %XMM2_val = alloca i128, !mcsema_real_eip !84
  %XMM1_val = alloca i128, !mcsema_real_eip !84
  %XMM0_val = alloca i128, !mcsema_real_eip !84
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !84
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !84
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !84
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !84
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !84
  %FPU_IM_val = alloca i1, !mcsema_real_eip !84
  %FPU_DM_val = alloca i1, !mcsema_real_eip !84
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !84
  %FPU_OM_val = alloca i1, !mcsema_real_eip !84
  %FPU_UM_val = alloca i1, !mcsema_real_eip !84
  %FPU_PM_val = alloca i1, !mcsema_real_eip !84
  %FPU_PC_val = alloca i2, !mcsema_real_eip !84
  %FPU_RC_val = alloca i2, !mcsema_real_eip !84
  %FPU_X_val = alloca i1, !mcsema_real_eip !84
  %FPU_IE_val = alloca i1, !mcsema_real_eip !84
  %FPU_DE_val = alloca i1, !mcsema_real_eip !84
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !84
  %FPU_OE_val = alloca i1, !mcsema_real_eip !84
  %FPU_UE_val = alloca i1, !mcsema_real_eip !84
  %FPU_PE_val = alloca i1, !mcsema_real_eip !84
  %FPU_SF_val = alloca i1, !mcsema_real_eip !84
  %FPU_ES_val = alloca i1, !mcsema_real_eip !84
  %FPU_C0_val = alloca i1, !mcsema_real_eip !84
  %FPU_C1_val = alloca i1, !mcsema_real_eip !84
  %FPU_C2_val = alloca i1, !mcsema_real_eip !84
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !84
  %FPU_C3_val = alloca i1, !mcsema_real_eip !84
  %FPU_B_val = alloca i1, !mcsema_real_eip !84
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !84
  %DF_val = alloca i1, !mcsema_real_eip !84
  %OF_val = alloca i1, !mcsema_real_eip !84
  %SF_val = alloca i1, !mcsema_real_eip !84
  %CF_val = alloca i1, !mcsema_real_eip !84
  %AF_val = alloca i1, !mcsema_real_eip !84
  %PF_val = alloca i1, !mcsema_real_eip !84
  %ZF_val = alloca i1, !mcsema_real_eip !84
  %RIP_val = alloca i64, !mcsema_real_eip !84
  %R14_val = alloca i64, !mcsema_real_eip !84
  %R13_val = alloca i64, !mcsema_real_eip !84
  %R12_val = alloca i64, !mcsema_real_eip !84
  %R11_val = alloca i64, !mcsema_real_eip !84
  %R10_val = alloca i64, !mcsema_real_eip !84
  %R9_val = alloca i64, !mcsema_real_eip !84
  %R8_val = alloca i64, !mcsema_real_eip !84
  %RSP_val = alloca i64, !mcsema_real_eip !84
  %RBP_val = alloca i64, !mcsema_real_eip !84
  %RDI_val = alloca i64, !mcsema_real_eip !84
  %RSI_val = alloca i64, !mcsema_real_eip !84
  %RDX_val = alloca i64, !mcsema_real_eip !84
  %RCX_val = alloca i64, !mcsema_real_eip !84
  %RBX_val = alloca i64, !mcsema_real_eip !84
  %RAX_val = alloca i64, !mcsema_real_eip !84
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !84
  %1 = load i64* %RAX, !mcsema_real_eip !84
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !84
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !84
  %2 = load i64* %RBX, !mcsema_real_eip !84
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !84
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !84
  %3 = load i64* %RCX, !mcsema_real_eip !84
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !84
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !84
  %4 = load i64* %RDX, !mcsema_real_eip !84
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !84
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !84
  %5 = load i64* %RSI, !mcsema_real_eip !84
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !84
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !84
  %6 = load i64* %RDI, !mcsema_real_eip !84
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !84
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !84
  %7 = load i64* %RSP, !mcsema_real_eip !84
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !84
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !84
  %8 = load i64* %RBP, !mcsema_real_eip !84
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !84
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !84
  %9 = load i64* %R8, !mcsema_real_eip !84
  store i64 %9, i64* %R8_val, !mcsema_real_eip !84
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !84
  %10 = load i64* %R9, !mcsema_real_eip !84
  store i64 %10, i64* %R9_val, !mcsema_real_eip !84
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !84
  %11 = load i64* %R10, !mcsema_real_eip !84
  store i64 %11, i64* %R10_val, !mcsema_real_eip !84
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !84
  %12 = load i64* %R11, !mcsema_real_eip !84
  store i64 %12, i64* %R11_val, !mcsema_real_eip !84
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !84
  %13 = load i64* %R12, !mcsema_real_eip !84
  store i64 %13, i64* %R12_val, !mcsema_real_eip !84
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !84
  %14 = load i64* %R13, !mcsema_real_eip !84
  store i64 %14, i64* %R13_val, !mcsema_real_eip !84
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !84
  %15 = load i64* %R14, !mcsema_real_eip !84
  store i64 %15, i64* %R14_val, !mcsema_real_eip !84
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !84
  %16 = load i64* %R15, !mcsema_real_eip !84
  store i64 %16, i64* %R15_val, !mcsema_real_eip !84
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !84
  %17 = load i64* %RIP, !mcsema_real_eip !84
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !84
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !84
  %18 = load i1* %CF, align 1, !mcsema_real_eip !84
  store i1 %18, i1* %CF_val, !mcsema_real_eip !84
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !84
  %19 = load i1* %PF, align 1, !mcsema_real_eip !84
  store i1 %19, i1* %PF_val, !mcsema_real_eip !84
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !84
  %20 = load i1* %AF, align 1, !mcsema_real_eip !84
  store i1 %20, i1* %AF_val, !mcsema_real_eip !84
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !84
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !84
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !84
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !84
  %22 = load i1* %SF, align 1, !mcsema_real_eip !84
  store i1 %22, i1* %SF_val, !mcsema_real_eip !84
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !84
  %23 = load i1* %OF, align 1, !mcsema_real_eip !84
  store i1 %23, i1* %OF_val, !mcsema_real_eip !84
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !84
  %24 = load i1* %DF, align 1, !mcsema_real_eip !84
  store i1 %24, i1* %DF_val, !mcsema_real_eip !84
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !84
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !84
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !84
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !84
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !84
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !84
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !84
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !84
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !84
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !84
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !84
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !84
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !84
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !84
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !84
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !84
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !84
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !84
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !84
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !84
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !84
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !84
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !84
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !84
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !84
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !84
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !84
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !84
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !84
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !84
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !84
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !84
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !84
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !84
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !84
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !84
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !84
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !84
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !84
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !84
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !84
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !84
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !84
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !84
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !84
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !84
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !84
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !84
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !84
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !84
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !84
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !84
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !84
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !84
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !84
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !84
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !84
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !84
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !84
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !84
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !84
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !84
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !84
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !84
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !84
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !84
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !84
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !84
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !84
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !84
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !84
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !84
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !84
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !84
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !84
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !84
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !84
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !84
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !84
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !84
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !84
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !84
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !84
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !84
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !84
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !84
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !84
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !84
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !84
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !84
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !84
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !84
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !84
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !84
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !84
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !84
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !84
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !84
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !84
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !84
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !84
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !84
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !84
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !84
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !84
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !84
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !84
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !84
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !84
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !84
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !84
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !84
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !84
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !84
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !84
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !84
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !84
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !84
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !84
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !84
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !84
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !84
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !84
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !84
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !84
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !84
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !84
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !84
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !84
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !84
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !84
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !84
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !84
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !84
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !84
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !84
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !84
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !84
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !84
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !84
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 31), i64* %RDI_val, !mcsema_real_eip !84
  %77 = load i64* %RSI_val, !mcsema_real_eip !85
  %78 = load i64* %RDX_val, !mcsema_real_eip !85
  %79 = load i64* %RCX_val, !mcsema_real_eip !85
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 31), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !85
  %81 = load i64* %RBP_val, !mcsema_real_eip !86
  %82 = add i64 %81, -64, !mcsema_real_eip !86
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !86
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !86
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !86
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_eb(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !87
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !87
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !87
  %XMM15_val = alloca i128, !mcsema_real_eip !87
  %XMM14_val = alloca i128, !mcsema_real_eip !87
  %XMM13_val = alloca i128, !mcsema_real_eip !87
  %XMM12_val = alloca i128, !mcsema_real_eip !87
  %XMM11_val = alloca i128, !mcsema_real_eip !87
  %XMM10_val = alloca i128, !mcsema_real_eip !87
  %XMM9_val = alloca i128, !mcsema_real_eip !87
  %XMM8_val = alloca i128, !mcsema_real_eip !87
  %XMM7_val = alloca i128, !mcsema_real_eip !87
  %XMM6_val = alloca i128, !mcsema_real_eip !87
  %XMM5_val = alloca i128, !mcsema_real_eip !87
  %XMM4_val = alloca i128, !mcsema_real_eip !87
  %XMM3_val = alloca i128, !mcsema_real_eip !87
  %XMM2_val = alloca i128, !mcsema_real_eip !87
  %XMM1_val = alloca i128, !mcsema_real_eip !87
  %XMM0_val = alloca i128, !mcsema_real_eip !87
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !87
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !87
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !87
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !87
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !87
  %FPU_IM_val = alloca i1, !mcsema_real_eip !87
  %FPU_DM_val = alloca i1, !mcsema_real_eip !87
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !87
  %FPU_OM_val = alloca i1, !mcsema_real_eip !87
  %FPU_UM_val = alloca i1, !mcsema_real_eip !87
  %FPU_PM_val = alloca i1, !mcsema_real_eip !87
  %FPU_PC_val = alloca i2, !mcsema_real_eip !87
  %FPU_RC_val = alloca i2, !mcsema_real_eip !87
  %FPU_X_val = alloca i1, !mcsema_real_eip !87
  %FPU_IE_val = alloca i1, !mcsema_real_eip !87
  %FPU_DE_val = alloca i1, !mcsema_real_eip !87
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !87
  %FPU_OE_val = alloca i1, !mcsema_real_eip !87
  %FPU_UE_val = alloca i1, !mcsema_real_eip !87
  %FPU_PE_val = alloca i1, !mcsema_real_eip !87
  %FPU_SF_val = alloca i1, !mcsema_real_eip !87
  %FPU_ES_val = alloca i1, !mcsema_real_eip !87
  %FPU_C0_val = alloca i1, !mcsema_real_eip !87
  %FPU_C1_val = alloca i1, !mcsema_real_eip !87
  %FPU_C2_val = alloca i1, !mcsema_real_eip !87
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !87
  %FPU_C3_val = alloca i1, !mcsema_real_eip !87
  %FPU_B_val = alloca i1, !mcsema_real_eip !87
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !87
  %DF_val = alloca i1, !mcsema_real_eip !87
  %OF_val = alloca i1, !mcsema_real_eip !87
  %SF_val = alloca i1, !mcsema_real_eip !87
  %CF_val = alloca i1, !mcsema_real_eip !87
  %AF_val = alloca i1, !mcsema_real_eip !87
  %PF_val = alloca i1, !mcsema_real_eip !87
  %ZF_val = alloca i1, !mcsema_real_eip !87
  %RIP_val = alloca i64, !mcsema_real_eip !87
  %R14_val = alloca i64, !mcsema_real_eip !87
  %R13_val = alloca i64, !mcsema_real_eip !87
  %R12_val = alloca i64, !mcsema_real_eip !87
  %R11_val = alloca i64, !mcsema_real_eip !87
  %R10_val = alloca i64, !mcsema_real_eip !87
  %R9_val = alloca i64, !mcsema_real_eip !87
  %R8_val = alloca i64, !mcsema_real_eip !87
  %RSP_val = alloca i64, !mcsema_real_eip !87
  %RBP_val = alloca i64, !mcsema_real_eip !87
  %RDI_val = alloca i64, !mcsema_real_eip !87
  %RSI_val = alloca i64, !mcsema_real_eip !87
  %RDX_val = alloca i64, !mcsema_real_eip !87
  %RCX_val = alloca i64, !mcsema_real_eip !87
  %RBX_val = alloca i64, !mcsema_real_eip !87
  %RAX_val = alloca i64, !mcsema_real_eip !87
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !87
  %1 = load i64* %RAX, !mcsema_real_eip !87
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !87
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !87
  %2 = load i64* %RBX, !mcsema_real_eip !87
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !87
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !87
  %3 = load i64* %RCX, !mcsema_real_eip !87
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !87
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !87
  %4 = load i64* %RDX, !mcsema_real_eip !87
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !87
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !87
  %5 = load i64* %RSI, !mcsema_real_eip !87
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !87
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !87
  %6 = load i64* %RDI, !mcsema_real_eip !87
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !87
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !87
  %7 = load i64* %RSP, !mcsema_real_eip !87
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !87
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !87
  %8 = load i64* %RBP, !mcsema_real_eip !87
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !87
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !87
  %9 = load i64* %R8, !mcsema_real_eip !87
  store i64 %9, i64* %R8_val, !mcsema_real_eip !87
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !87
  %10 = load i64* %R9, !mcsema_real_eip !87
  store i64 %10, i64* %R9_val, !mcsema_real_eip !87
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !87
  %11 = load i64* %R10, !mcsema_real_eip !87
  store i64 %11, i64* %R10_val, !mcsema_real_eip !87
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !87
  %12 = load i64* %R11, !mcsema_real_eip !87
  store i64 %12, i64* %R11_val, !mcsema_real_eip !87
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !87
  %13 = load i64* %R12, !mcsema_real_eip !87
  store i64 %13, i64* %R12_val, !mcsema_real_eip !87
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !87
  %14 = load i64* %R13, !mcsema_real_eip !87
  store i64 %14, i64* %R13_val, !mcsema_real_eip !87
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !87
  %15 = load i64* %R14, !mcsema_real_eip !87
  store i64 %15, i64* %R14_val, !mcsema_real_eip !87
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !87
  %16 = load i64* %R15, !mcsema_real_eip !87
  store i64 %16, i64* %R15_val, !mcsema_real_eip !87
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !87
  %17 = load i64* %RIP, !mcsema_real_eip !87
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !87
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !87
  %18 = load i1* %CF, align 1, !mcsema_real_eip !87
  store i1 %18, i1* %CF_val, !mcsema_real_eip !87
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !87
  %19 = load i1* %PF, align 1, !mcsema_real_eip !87
  store i1 %19, i1* %PF_val, !mcsema_real_eip !87
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !87
  %20 = load i1* %AF, align 1, !mcsema_real_eip !87
  store i1 %20, i1* %AF_val, !mcsema_real_eip !87
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !87
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !87
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !87
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !87
  %22 = load i1* %SF, align 1, !mcsema_real_eip !87
  store i1 %22, i1* %SF_val, !mcsema_real_eip !87
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !87
  %23 = load i1* %OF, align 1, !mcsema_real_eip !87
  store i1 %23, i1* %OF_val, !mcsema_real_eip !87
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !87
  %24 = load i1* %DF, align 1, !mcsema_real_eip !87
  store i1 %24, i1* %DF_val, !mcsema_real_eip !87
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !87
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !87
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !87
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !87
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !87
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !87
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !87
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !87
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !87
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !87
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !87
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !87
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !87
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !87
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !87
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !87
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !87
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !87
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !87
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !87
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !87
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !87
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !87
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !87
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !87
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !87
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !87
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !87
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !87
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !87
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !87
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !87
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !87
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !87
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !87
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !87
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !87
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !87
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !87
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !87
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !87
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !87
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !87
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !87
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !87
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !87
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !87
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !87
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !87
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !87
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !87
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !87
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !87
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !87
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !87
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !87
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !87
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !87
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !87
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !87
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !87
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !87
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !87
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !87
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !87
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !87
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !87
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !87
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !87
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !87
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !87
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !87
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !87
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !87
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !87
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !87
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !87
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !87
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !87
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !87
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !87
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !87
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !87
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !87
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !87
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !87
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !87
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !87
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !87
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !87
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !87
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !87
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !87
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !87
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !87
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !87
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !87
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !87
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !87
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !87
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !87
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !87
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !87
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !87
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !87
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !87
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !87
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !87
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !87
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !87
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !87
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !87
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !87
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !87
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !87
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !87
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !87
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !87
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !87
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !87
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !87
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !87
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !87
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !87
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !87
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !87
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !87
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !87
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !87
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !87
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !87
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !87
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !87
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !87
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !87
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !87
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !87
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !87
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !87
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 46), i64* %RDI_val, !mcsema_real_eip !87
  %77 = load i64* %RSI_val, !mcsema_real_eip !88
  %78 = load i64* %RDX_val, !mcsema_real_eip !88
  %79 = load i64* %RCX_val, !mcsema_real_eip !88
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 46), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !88
  %81 = load i64* %RBP_val, !mcsema_real_eip !89
  %82 = add i64 %81, -68, !mcsema_real_eip !89
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !89
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !89
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !89
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_104(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !90
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !90
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !90
  %XMM15_val = alloca i128, !mcsema_real_eip !90
  %XMM14_val = alloca i128, !mcsema_real_eip !90
  %XMM13_val = alloca i128, !mcsema_real_eip !90
  %XMM12_val = alloca i128, !mcsema_real_eip !90
  %XMM11_val = alloca i128, !mcsema_real_eip !90
  %XMM10_val = alloca i128, !mcsema_real_eip !90
  %XMM9_val = alloca i128, !mcsema_real_eip !90
  %XMM8_val = alloca i128, !mcsema_real_eip !90
  %XMM7_val = alloca i128, !mcsema_real_eip !90
  %XMM6_val = alloca i128, !mcsema_real_eip !90
  %XMM5_val = alloca i128, !mcsema_real_eip !90
  %XMM4_val = alloca i128, !mcsema_real_eip !90
  %XMM3_val = alloca i128, !mcsema_real_eip !90
  %XMM2_val = alloca i128, !mcsema_real_eip !90
  %XMM1_val = alloca i128, !mcsema_real_eip !90
  %XMM0_val = alloca i128, !mcsema_real_eip !90
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !90
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !90
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !90
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !90
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !90
  %FPU_IM_val = alloca i1, !mcsema_real_eip !90
  %FPU_DM_val = alloca i1, !mcsema_real_eip !90
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !90
  %FPU_OM_val = alloca i1, !mcsema_real_eip !90
  %FPU_UM_val = alloca i1, !mcsema_real_eip !90
  %FPU_PM_val = alloca i1, !mcsema_real_eip !90
  %FPU_PC_val = alloca i2, !mcsema_real_eip !90
  %FPU_RC_val = alloca i2, !mcsema_real_eip !90
  %FPU_X_val = alloca i1, !mcsema_real_eip !90
  %FPU_IE_val = alloca i1, !mcsema_real_eip !90
  %FPU_DE_val = alloca i1, !mcsema_real_eip !90
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !90
  %FPU_OE_val = alloca i1, !mcsema_real_eip !90
  %FPU_UE_val = alloca i1, !mcsema_real_eip !90
  %FPU_PE_val = alloca i1, !mcsema_real_eip !90
  %FPU_SF_val = alloca i1, !mcsema_real_eip !90
  %FPU_ES_val = alloca i1, !mcsema_real_eip !90
  %FPU_C0_val = alloca i1, !mcsema_real_eip !90
  %FPU_C1_val = alloca i1, !mcsema_real_eip !90
  %FPU_C2_val = alloca i1, !mcsema_real_eip !90
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !90
  %FPU_C3_val = alloca i1, !mcsema_real_eip !90
  %FPU_B_val = alloca i1, !mcsema_real_eip !90
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !90
  %DF_val = alloca i1, !mcsema_real_eip !90
  %OF_val = alloca i1, !mcsema_real_eip !90
  %SF_val = alloca i1, !mcsema_real_eip !90
  %CF_val = alloca i1, !mcsema_real_eip !90
  %AF_val = alloca i1, !mcsema_real_eip !90
  %PF_val = alloca i1, !mcsema_real_eip !90
  %ZF_val = alloca i1, !mcsema_real_eip !90
  %RIP_val = alloca i64, !mcsema_real_eip !90
  %R14_val = alloca i64, !mcsema_real_eip !90
  %R13_val = alloca i64, !mcsema_real_eip !90
  %R12_val = alloca i64, !mcsema_real_eip !90
  %R11_val = alloca i64, !mcsema_real_eip !90
  %R10_val = alloca i64, !mcsema_real_eip !90
  %R9_val = alloca i64, !mcsema_real_eip !90
  %R8_val = alloca i64, !mcsema_real_eip !90
  %RSP_val = alloca i64, !mcsema_real_eip !90
  %RBP_val = alloca i64, !mcsema_real_eip !90
  %RDI_val = alloca i64, !mcsema_real_eip !90
  %RSI_val = alloca i64, !mcsema_real_eip !90
  %RDX_val = alloca i64, !mcsema_real_eip !90
  %RCX_val = alloca i64, !mcsema_real_eip !90
  %RBX_val = alloca i64, !mcsema_real_eip !90
  %RAX_val = alloca i64, !mcsema_real_eip !90
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !90
  %1 = load i64* %RAX, !mcsema_real_eip !90
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !90
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !90
  %2 = load i64* %RBX, !mcsema_real_eip !90
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !90
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !90
  %3 = load i64* %RCX, !mcsema_real_eip !90
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !90
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !90
  %4 = load i64* %RDX, !mcsema_real_eip !90
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !90
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !90
  %5 = load i64* %RSI, !mcsema_real_eip !90
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !90
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !90
  %6 = load i64* %RDI, !mcsema_real_eip !90
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !90
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !90
  %7 = load i64* %RSP, !mcsema_real_eip !90
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !90
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !90
  %8 = load i64* %RBP, !mcsema_real_eip !90
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !90
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !90
  %9 = load i64* %R8, !mcsema_real_eip !90
  store i64 %9, i64* %R8_val, !mcsema_real_eip !90
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !90
  %10 = load i64* %R9, !mcsema_real_eip !90
  store i64 %10, i64* %R9_val, !mcsema_real_eip !90
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !90
  %11 = load i64* %R10, !mcsema_real_eip !90
  store i64 %11, i64* %R10_val, !mcsema_real_eip !90
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !90
  %12 = load i64* %R11, !mcsema_real_eip !90
  store i64 %12, i64* %R11_val, !mcsema_real_eip !90
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !90
  %13 = load i64* %R12, !mcsema_real_eip !90
  store i64 %13, i64* %R12_val, !mcsema_real_eip !90
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !90
  %14 = load i64* %R13, !mcsema_real_eip !90
  store i64 %14, i64* %R13_val, !mcsema_real_eip !90
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !90
  %15 = load i64* %R14, !mcsema_real_eip !90
  store i64 %15, i64* %R14_val, !mcsema_real_eip !90
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !90
  %16 = load i64* %R15, !mcsema_real_eip !90
  store i64 %16, i64* %R15_val, !mcsema_real_eip !90
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !90
  %17 = load i64* %RIP, !mcsema_real_eip !90
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !90
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !90
  %18 = load i1* %CF, align 1, !mcsema_real_eip !90
  store i1 %18, i1* %CF_val, !mcsema_real_eip !90
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !90
  %19 = load i1* %PF, align 1, !mcsema_real_eip !90
  store i1 %19, i1* %PF_val, !mcsema_real_eip !90
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !90
  %20 = load i1* %AF, align 1, !mcsema_real_eip !90
  store i1 %20, i1* %AF_val, !mcsema_real_eip !90
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !90
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !90
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !90
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !90
  %22 = load i1* %SF, align 1, !mcsema_real_eip !90
  store i1 %22, i1* %SF_val, !mcsema_real_eip !90
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !90
  %23 = load i1* %OF, align 1, !mcsema_real_eip !90
  store i1 %23, i1* %OF_val, !mcsema_real_eip !90
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !90
  %24 = load i1* %DF, align 1, !mcsema_real_eip !90
  store i1 %24, i1* %DF_val, !mcsema_real_eip !90
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !90
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !90
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !90
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !90
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !90
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !90
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !90
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !90
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !90
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !90
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !90
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !90
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !90
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !90
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !90
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !90
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !90
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !90
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !90
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !90
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !90
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !90
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !90
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !90
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !90
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !90
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !90
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !90
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !90
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !90
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !90
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !90
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !90
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !90
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !90
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !90
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !90
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !90
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !90
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !90
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !90
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !90
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !90
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !90
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !90
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !90
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !90
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !90
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !90
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !90
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !90
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !90
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !90
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !90
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !90
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !90
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !90
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !90
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !90
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !90
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !90
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !90
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !90
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !90
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !90
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !90
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !90
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !90
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !90
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !90
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !90
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !90
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !90
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !90
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !90
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !90
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !90
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !90
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !90
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !90
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !90
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !90
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !90
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !90
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !90
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !90
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !90
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !90
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !90
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !90
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !90
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !90
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !90
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !90
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !90
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !90
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !90
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !90
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !90
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !90
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !90
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !90
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !90
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !90
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !90
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !90
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !90
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !90
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !90
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !90
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !90
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !90
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !90
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !90
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !90
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !90
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !90
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !90
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !90
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !90
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !90
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !90
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !90
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !90
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !90
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !90
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !90
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !90
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !90
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !90
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !90
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !90
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !90
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !90
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !90
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !90
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !90
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !90
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !90
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !90
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 62), i64* %RDI_val, !mcsema_real_eip !90
  %77 = load i64* %RSI_val, !mcsema_real_eip !91
  %78 = load i64* %RDX_val, !mcsema_real_eip !91
  %79 = load i64* %RCX_val, !mcsema_real_eip !91
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 62), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !91
  %81 = load i64* %RBP_val, !mcsema_real_eip !92
  %82 = add i64 %81, -72, !mcsema_real_eip !92
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !92
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !92
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !92
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_11d(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !93
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !93
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !93
  %XMM15_val = alloca i128, !mcsema_real_eip !93
  %XMM14_val = alloca i128, !mcsema_real_eip !93
  %XMM13_val = alloca i128, !mcsema_real_eip !93
  %XMM12_val = alloca i128, !mcsema_real_eip !93
  %XMM11_val = alloca i128, !mcsema_real_eip !93
  %XMM10_val = alloca i128, !mcsema_real_eip !93
  %XMM9_val = alloca i128, !mcsema_real_eip !93
  %XMM8_val = alloca i128, !mcsema_real_eip !93
  %XMM7_val = alloca i128, !mcsema_real_eip !93
  %XMM6_val = alloca i128, !mcsema_real_eip !93
  %XMM5_val = alloca i128, !mcsema_real_eip !93
  %XMM4_val = alloca i128, !mcsema_real_eip !93
  %XMM3_val = alloca i128, !mcsema_real_eip !93
  %XMM2_val = alloca i128, !mcsema_real_eip !93
  %XMM1_val = alloca i128, !mcsema_real_eip !93
  %XMM0_val = alloca i128, !mcsema_real_eip !93
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !93
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !93
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !93
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !93
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !93
  %FPU_IM_val = alloca i1, !mcsema_real_eip !93
  %FPU_DM_val = alloca i1, !mcsema_real_eip !93
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !93
  %FPU_OM_val = alloca i1, !mcsema_real_eip !93
  %FPU_UM_val = alloca i1, !mcsema_real_eip !93
  %FPU_PM_val = alloca i1, !mcsema_real_eip !93
  %FPU_PC_val = alloca i2, !mcsema_real_eip !93
  %FPU_RC_val = alloca i2, !mcsema_real_eip !93
  %FPU_X_val = alloca i1, !mcsema_real_eip !93
  %FPU_IE_val = alloca i1, !mcsema_real_eip !93
  %FPU_DE_val = alloca i1, !mcsema_real_eip !93
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !93
  %FPU_OE_val = alloca i1, !mcsema_real_eip !93
  %FPU_UE_val = alloca i1, !mcsema_real_eip !93
  %FPU_PE_val = alloca i1, !mcsema_real_eip !93
  %FPU_SF_val = alloca i1, !mcsema_real_eip !93
  %FPU_ES_val = alloca i1, !mcsema_real_eip !93
  %FPU_C0_val = alloca i1, !mcsema_real_eip !93
  %FPU_C1_val = alloca i1, !mcsema_real_eip !93
  %FPU_C2_val = alloca i1, !mcsema_real_eip !93
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !93
  %FPU_C3_val = alloca i1, !mcsema_real_eip !93
  %FPU_B_val = alloca i1, !mcsema_real_eip !93
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !93
  %DF_val = alloca i1, !mcsema_real_eip !93
  %OF_val = alloca i1, !mcsema_real_eip !93
  %SF_val = alloca i1, !mcsema_real_eip !93
  %CF_val = alloca i1, !mcsema_real_eip !93
  %AF_val = alloca i1, !mcsema_real_eip !93
  %PF_val = alloca i1, !mcsema_real_eip !93
  %ZF_val = alloca i1, !mcsema_real_eip !93
  %RIP_val = alloca i64, !mcsema_real_eip !93
  %R14_val = alloca i64, !mcsema_real_eip !93
  %R13_val = alloca i64, !mcsema_real_eip !93
  %R12_val = alloca i64, !mcsema_real_eip !93
  %R11_val = alloca i64, !mcsema_real_eip !93
  %R10_val = alloca i64, !mcsema_real_eip !93
  %R9_val = alloca i64, !mcsema_real_eip !93
  %R8_val = alloca i64, !mcsema_real_eip !93
  %RSP_val = alloca i64, !mcsema_real_eip !93
  %RBP_val = alloca i64, !mcsema_real_eip !93
  %RDI_val = alloca i64, !mcsema_real_eip !93
  %RSI_val = alloca i64, !mcsema_real_eip !93
  %RDX_val = alloca i64, !mcsema_real_eip !93
  %RCX_val = alloca i64, !mcsema_real_eip !93
  %RBX_val = alloca i64, !mcsema_real_eip !93
  %RAX_val = alloca i64, !mcsema_real_eip !93
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !93
  %1 = load i64* %RAX, !mcsema_real_eip !93
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !93
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !93
  %2 = load i64* %RBX, !mcsema_real_eip !93
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !93
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !93
  %3 = load i64* %RCX, !mcsema_real_eip !93
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !93
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !93
  %4 = load i64* %RDX, !mcsema_real_eip !93
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !93
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !93
  %5 = load i64* %RSI, !mcsema_real_eip !93
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !93
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !93
  %6 = load i64* %RDI, !mcsema_real_eip !93
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !93
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !93
  %7 = load i64* %RSP, !mcsema_real_eip !93
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !93
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !93
  %8 = load i64* %RBP, !mcsema_real_eip !93
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !93
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !93
  %9 = load i64* %R8, !mcsema_real_eip !93
  store i64 %9, i64* %R8_val, !mcsema_real_eip !93
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !93
  %10 = load i64* %R9, !mcsema_real_eip !93
  store i64 %10, i64* %R9_val, !mcsema_real_eip !93
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !93
  %11 = load i64* %R10, !mcsema_real_eip !93
  store i64 %11, i64* %R10_val, !mcsema_real_eip !93
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !93
  %12 = load i64* %R11, !mcsema_real_eip !93
  store i64 %12, i64* %R11_val, !mcsema_real_eip !93
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !93
  %13 = load i64* %R12, !mcsema_real_eip !93
  store i64 %13, i64* %R12_val, !mcsema_real_eip !93
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !93
  %14 = load i64* %R13, !mcsema_real_eip !93
  store i64 %14, i64* %R13_val, !mcsema_real_eip !93
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !93
  %15 = load i64* %R14, !mcsema_real_eip !93
  store i64 %15, i64* %R14_val, !mcsema_real_eip !93
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !93
  %16 = load i64* %R15, !mcsema_real_eip !93
  store i64 %16, i64* %R15_val, !mcsema_real_eip !93
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !93
  %17 = load i64* %RIP, !mcsema_real_eip !93
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !93
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !93
  %18 = load i1* %CF, align 1, !mcsema_real_eip !93
  store i1 %18, i1* %CF_val, !mcsema_real_eip !93
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !93
  %19 = load i1* %PF, align 1, !mcsema_real_eip !93
  store i1 %19, i1* %PF_val, !mcsema_real_eip !93
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !93
  %20 = load i1* %AF, align 1, !mcsema_real_eip !93
  store i1 %20, i1* %AF_val, !mcsema_real_eip !93
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !93
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !93
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !93
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !93
  %22 = load i1* %SF, align 1, !mcsema_real_eip !93
  store i1 %22, i1* %SF_val, !mcsema_real_eip !93
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !93
  %23 = load i1* %OF, align 1, !mcsema_real_eip !93
  store i1 %23, i1* %OF_val, !mcsema_real_eip !93
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !93
  %24 = load i1* %DF, align 1, !mcsema_real_eip !93
  store i1 %24, i1* %DF_val, !mcsema_real_eip !93
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !93
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !93
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !93
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !93
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !93
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !93
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !93
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !93
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !93
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !93
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !93
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !93
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !93
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !93
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !93
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !93
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !93
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !93
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !93
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !93
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !93
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !93
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !93
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !93
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !93
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !93
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !93
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !93
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !93
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !93
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !93
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !93
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !93
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !93
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !93
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !93
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !93
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !93
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !93
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !93
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !93
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !93
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !93
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !93
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !93
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !93
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !93
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !93
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !93
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !93
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !93
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !93
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !93
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !93
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !93
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !93
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !93
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !93
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !93
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !93
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !93
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !93
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !93
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !93
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !93
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !93
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !93
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !93
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !93
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !93
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !93
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !93
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !93
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !93
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !93
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !93
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !93
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !93
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !93
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !93
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !93
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !93
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !93
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !93
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !93
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !93
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !93
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !93
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !93
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !93
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !93
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !93
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !93
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !93
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !93
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !93
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !93
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !93
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !93
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !93
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !93
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !93
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !93
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !93
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !93
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !93
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !93
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !93
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !93
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !93
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !93
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !93
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !93
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !93
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !93
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !93
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !93
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !93
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !93
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !93
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !93
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !93
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !93
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !93
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !93
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !93
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !93
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !93
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !93
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !93
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !93
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !93
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !93
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !93
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !93
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !93
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !93
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !93
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !93
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !93
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 77), i64* %RDI_val, !mcsema_real_eip !93
  %77 = load i64* %RSI_val, !mcsema_real_eip !94
  %78 = load i64* %RDX_val, !mcsema_real_eip !94
  %79 = load i64* %RCX_val, !mcsema_real_eip !94
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 77), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !94
  %81 = load i64* %RBP_val, !mcsema_real_eip !95
  %82 = add i64 %81, -76, !mcsema_real_eip !95
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !95
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !95
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !95
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_136(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !96
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !96
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !96
  %XMM15_val = alloca i128, !mcsema_real_eip !96
  %XMM14_val = alloca i128, !mcsema_real_eip !96
  %XMM13_val = alloca i128, !mcsema_real_eip !96
  %XMM12_val = alloca i128, !mcsema_real_eip !96
  %XMM11_val = alloca i128, !mcsema_real_eip !96
  %XMM10_val = alloca i128, !mcsema_real_eip !96
  %XMM9_val = alloca i128, !mcsema_real_eip !96
  %XMM8_val = alloca i128, !mcsema_real_eip !96
  %XMM7_val = alloca i128, !mcsema_real_eip !96
  %XMM6_val = alloca i128, !mcsema_real_eip !96
  %XMM5_val = alloca i128, !mcsema_real_eip !96
  %XMM4_val = alloca i128, !mcsema_real_eip !96
  %XMM3_val = alloca i128, !mcsema_real_eip !96
  %XMM2_val = alloca i128, !mcsema_real_eip !96
  %XMM1_val = alloca i128, !mcsema_real_eip !96
  %XMM0_val = alloca i128, !mcsema_real_eip !96
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !96
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !96
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !96
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !96
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !96
  %FPU_IM_val = alloca i1, !mcsema_real_eip !96
  %FPU_DM_val = alloca i1, !mcsema_real_eip !96
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !96
  %FPU_OM_val = alloca i1, !mcsema_real_eip !96
  %FPU_UM_val = alloca i1, !mcsema_real_eip !96
  %FPU_PM_val = alloca i1, !mcsema_real_eip !96
  %FPU_PC_val = alloca i2, !mcsema_real_eip !96
  %FPU_RC_val = alloca i2, !mcsema_real_eip !96
  %FPU_X_val = alloca i1, !mcsema_real_eip !96
  %FPU_IE_val = alloca i1, !mcsema_real_eip !96
  %FPU_DE_val = alloca i1, !mcsema_real_eip !96
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !96
  %FPU_OE_val = alloca i1, !mcsema_real_eip !96
  %FPU_UE_val = alloca i1, !mcsema_real_eip !96
  %FPU_PE_val = alloca i1, !mcsema_real_eip !96
  %FPU_SF_val = alloca i1, !mcsema_real_eip !96
  %FPU_ES_val = alloca i1, !mcsema_real_eip !96
  %FPU_C0_val = alloca i1, !mcsema_real_eip !96
  %FPU_C1_val = alloca i1, !mcsema_real_eip !96
  %FPU_C2_val = alloca i1, !mcsema_real_eip !96
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !96
  %FPU_C3_val = alloca i1, !mcsema_real_eip !96
  %FPU_B_val = alloca i1, !mcsema_real_eip !96
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !96
  %DF_val = alloca i1, !mcsema_real_eip !96
  %OF_val = alloca i1, !mcsema_real_eip !96
  %SF_val = alloca i1, !mcsema_real_eip !96
  %CF_val = alloca i1, !mcsema_real_eip !96
  %AF_val = alloca i1, !mcsema_real_eip !96
  %PF_val = alloca i1, !mcsema_real_eip !96
  %ZF_val = alloca i1, !mcsema_real_eip !96
  %RIP_val = alloca i64, !mcsema_real_eip !96
  %R14_val = alloca i64, !mcsema_real_eip !96
  %R13_val = alloca i64, !mcsema_real_eip !96
  %R12_val = alloca i64, !mcsema_real_eip !96
  %R11_val = alloca i64, !mcsema_real_eip !96
  %R10_val = alloca i64, !mcsema_real_eip !96
  %R9_val = alloca i64, !mcsema_real_eip !96
  %R8_val = alloca i64, !mcsema_real_eip !96
  %RSP_val = alloca i64, !mcsema_real_eip !96
  %RBP_val = alloca i64, !mcsema_real_eip !96
  %RDI_val = alloca i64, !mcsema_real_eip !96
  %RSI_val = alloca i64, !mcsema_real_eip !96
  %RDX_val = alloca i64, !mcsema_real_eip !96
  %RCX_val = alloca i64, !mcsema_real_eip !96
  %RBX_val = alloca i64, !mcsema_real_eip !96
  %RAX_val = alloca i64, !mcsema_real_eip !96
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !96
  %1 = load i64* %RAX, !mcsema_real_eip !96
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !96
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !96
  %2 = load i64* %RBX, !mcsema_real_eip !96
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !96
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !96
  %3 = load i64* %RCX, !mcsema_real_eip !96
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !96
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !96
  %4 = load i64* %RDX, !mcsema_real_eip !96
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !96
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !96
  %5 = load i64* %RSI, !mcsema_real_eip !96
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !96
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !96
  %6 = load i64* %RDI, !mcsema_real_eip !96
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !96
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !96
  %7 = load i64* %RSP, !mcsema_real_eip !96
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !96
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !96
  %8 = load i64* %RBP, !mcsema_real_eip !96
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !96
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !96
  %9 = load i64* %R8, !mcsema_real_eip !96
  store i64 %9, i64* %R8_val, !mcsema_real_eip !96
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !96
  %10 = load i64* %R9, !mcsema_real_eip !96
  store i64 %10, i64* %R9_val, !mcsema_real_eip !96
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !96
  %11 = load i64* %R10, !mcsema_real_eip !96
  store i64 %11, i64* %R10_val, !mcsema_real_eip !96
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !96
  %12 = load i64* %R11, !mcsema_real_eip !96
  store i64 %12, i64* %R11_val, !mcsema_real_eip !96
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !96
  %13 = load i64* %R12, !mcsema_real_eip !96
  store i64 %13, i64* %R12_val, !mcsema_real_eip !96
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !96
  %14 = load i64* %R13, !mcsema_real_eip !96
  store i64 %14, i64* %R13_val, !mcsema_real_eip !96
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !96
  %15 = load i64* %R14, !mcsema_real_eip !96
  store i64 %15, i64* %R14_val, !mcsema_real_eip !96
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !96
  %16 = load i64* %R15, !mcsema_real_eip !96
  store i64 %16, i64* %R15_val, !mcsema_real_eip !96
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !96
  %17 = load i64* %RIP, !mcsema_real_eip !96
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !96
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !96
  %18 = load i1* %CF, align 1, !mcsema_real_eip !96
  store i1 %18, i1* %CF_val, !mcsema_real_eip !96
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !96
  %19 = load i1* %PF, align 1, !mcsema_real_eip !96
  store i1 %19, i1* %PF_val, !mcsema_real_eip !96
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !96
  %20 = load i1* %AF, align 1, !mcsema_real_eip !96
  store i1 %20, i1* %AF_val, !mcsema_real_eip !96
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !96
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !96
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !96
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !96
  %22 = load i1* %SF, align 1, !mcsema_real_eip !96
  store i1 %22, i1* %SF_val, !mcsema_real_eip !96
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !96
  %23 = load i1* %OF, align 1, !mcsema_real_eip !96
  store i1 %23, i1* %OF_val, !mcsema_real_eip !96
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !96
  %24 = load i1* %DF, align 1, !mcsema_real_eip !96
  store i1 %24, i1* %DF_val, !mcsema_real_eip !96
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !96
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !96
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !96
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !96
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !96
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !96
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !96
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !96
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !96
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !96
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !96
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !96
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !96
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !96
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !96
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !96
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !96
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !96
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !96
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !96
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !96
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !96
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !96
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !96
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !96
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !96
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !96
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !96
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !96
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !96
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !96
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !96
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !96
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !96
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !96
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !96
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !96
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !96
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !96
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !96
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !96
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !96
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !96
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !96
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !96
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !96
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !96
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !96
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !96
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !96
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !96
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !96
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !96
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !96
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !96
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !96
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !96
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !96
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !96
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !96
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !96
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !96
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !96
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !96
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !96
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !96
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !96
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !96
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !96
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !96
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !96
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !96
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !96
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !96
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !96
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !96
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !96
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !96
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !96
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !96
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !96
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !96
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !96
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !96
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !96
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !96
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !96
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !96
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !96
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !96
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !96
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !96
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !96
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !96
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !96
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !96
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !96
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !96
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !96
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !96
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !96
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !96
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !96
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !96
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !96
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !96
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !96
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !96
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !96
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !96
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !96
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !96
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !96
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !96
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !96
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !96
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !96
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !96
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !96
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !96
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !96
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !96
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !96
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !96
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !96
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !96
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !96
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !96
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !96
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !96
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !96
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !96
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !96
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !96
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !96
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !96
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !96
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !96
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !96
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !96
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 95), i64* %RDI_val, !mcsema_real_eip !96
  %77 = load i64* %RSI_val, !mcsema_real_eip !97
  %78 = load i64* %RDX_val, !mcsema_real_eip !97
  %79 = load i64* %RCX_val, !mcsema_real_eip !97
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 95), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !97
  %81 = load i64* %RBP_val, !mcsema_real_eip !98
  %82 = add i64 %81, -80, !mcsema_real_eip !98
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !98
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !98
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !98
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

define internal x86_64_sysvcc void @sub_14f(%struct.regs*) {
entry:
  %R15_val = alloca i64, !mcsema_real_eip !99
  %STACK_LIMIT_val = alloca i64, !mcsema_real_eip !99
  %STACK_BASE_val = alloca i64, !mcsema_real_eip !99
  %XMM15_val = alloca i128, !mcsema_real_eip !99
  %XMM14_val = alloca i128, !mcsema_real_eip !99
  %XMM13_val = alloca i128, !mcsema_real_eip !99
  %XMM12_val = alloca i128, !mcsema_real_eip !99
  %XMM11_val = alloca i128, !mcsema_real_eip !99
  %XMM10_val = alloca i128, !mcsema_real_eip !99
  %XMM9_val = alloca i128, !mcsema_real_eip !99
  %XMM8_val = alloca i128, !mcsema_real_eip !99
  %XMM7_val = alloca i128, !mcsema_real_eip !99
  %XMM6_val = alloca i128, !mcsema_real_eip !99
  %XMM5_val = alloca i128, !mcsema_real_eip !99
  %XMM4_val = alloca i128, !mcsema_real_eip !99
  %XMM3_val = alloca i128, !mcsema_real_eip !99
  %XMM2_val = alloca i128, !mcsema_real_eip !99
  %XMM1_val = alloca i128, !mcsema_real_eip !99
  %XMM0_val = alloca i128, !mcsema_real_eip !99
  %FPU_LASTDATA_OFF_val = alloca i64, !mcsema_real_eip !99
  %FPU_LASTDATA_SEG_val = alloca i16, !mcsema_real_eip !99
  %FPU_LASTIP_OFF_val = alloca i64, !mcsema_real_eip !99
  %FPU_LASTIP_SEG_val = alloca i16, !mcsema_real_eip !99
  %FPU_TAG_val = alloca [8 x i2], !mcsema_real_eip !99
  %FPU_IM_val = alloca i1, !mcsema_real_eip !99
  %FPU_DM_val = alloca i1, !mcsema_real_eip !99
  %FPU_ZM_val = alloca i1, !mcsema_real_eip !99
  %FPU_OM_val = alloca i1, !mcsema_real_eip !99
  %FPU_UM_val = alloca i1, !mcsema_real_eip !99
  %FPU_PM_val = alloca i1, !mcsema_real_eip !99
  %FPU_PC_val = alloca i2, !mcsema_real_eip !99
  %FPU_RC_val = alloca i2, !mcsema_real_eip !99
  %FPU_X_val = alloca i1, !mcsema_real_eip !99
  %FPU_IE_val = alloca i1, !mcsema_real_eip !99
  %FPU_DE_val = alloca i1, !mcsema_real_eip !99
  %FPU_ZE_val = alloca i1, !mcsema_real_eip !99
  %FPU_OE_val = alloca i1, !mcsema_real_eip !99
  %FPU_UE_val = alloca i1, !mcsema_real_eip !99
  %FPU_PE_val = alloca i1, !mcsema_real_eip !99
  %FPU_SF_val = alloca i1, !mcsema_real_eip !99
  %FPU_ES_val = alloca i1, !mcsema_real_eip !99
  %FPU_C0_val = alloca i1, !mcsema_real_eip !99
  %FPU_C1_val = alloca i1, !mcsema_real_eip !99
  %FPU_C2_val = alloca i1, !mcsema_real_eip !99
  %FPU_TOP_val = alloca i3, !mcsema_real_eip !99
  %FPU_C3_val = alloca i1, !mcsema_real_eip !99
  %FPU_B_val = alloca i1, !mcsema_real_eip !99
  %STi_val = alloca [8 x x86_fp80], !mcsema_real_eip !99
  %DF_val = alloca i1, !mcsema_real_eip !99
  %OF_val = alloca i1, !mcsema_real_eip !99
  %SF_val = alloca i1, !mcsema_real_eip !99
  %CF_val = alloca i1, !mcsema_real_eip !99
  %AF_val = alloca i1, !mcsema_real_eip !99
  %PF_val = alloca i1, !mcsema_real_eip !99
  %ZF_val = alloca i1, !mcsema_real_eip !99
  %RIP_val = alloca i64, !mcsema_real_eip !99
  %R14_val = alloca i64, !mcsema_real_eip !99
  %R13_val = alloca i64, !mcsema_real_eip !99
  %R12_val = alloca i64, !mcsema_real_eip !99
  %R11_val = alloca i64, !mcsema_real_eip !99
  %R10_val = alloca i64, !mcsema_real_eip !99
  %R9_val = alloca i64, !mcsema_real_eip !99
  %R8_val = alloca i64, !mcsema_real_eip !99
  %RSP_val = alloca i64, !mcsema_real_eip !99
  %RBP_val = alloca i64, !mcsema_real_eip !99
  %RDI_val = alloca i64, !mcsema_real_eip !99
  %RSI_val = alloca i64, !mcsema_real_eip !99
  %RDX_val = alloca i64, !mcsema_real_eip !99
  %RCX_val = alloca i64, !mcsema_real_eip !99
  %RBX_val = alloca i64, !mcsema_real_eip !99
  %RAX_val = alloca i64, !mcsema_real_eip !99
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !99
  %1 = load i64* %RAX, !mcsema_real_eip !99
  store i64 %1, i64* %RAX_val, !mcsema_real_eip !99
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !99
  %2 = load i64* %RBX, !mcsema_real_eip !99
  store i64 %2, i64* %RBX_val, !mcsema_real_eip !99
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !99
  %3 = load i64* %RCX, !mcsema_real_eip !99
  store i64 %3, i64* %RCX_val, !mcsema_real_eip !99
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !99
  %4 = load i64* %RDX, !mcsema_real_eip !99
  store i64 %4, i64* %RDX_val, !mcsema_real_eip !99
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !99
  %5 = load i64* %RSI, !mcsema_real_eip !99
  store i64 %5, i64* %RSI_val, !mcsema_real_eip !99
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !99
  %6 = load i64* %RDI, !mcsema_real_eip !99
  store i64 %6, i64* %RDI_val, !mcsema_real_eip !99
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !99
  %7 = load i64* %RSP, !mcsema_real_eip !99
  store i64 %7, i64* %RSP_val, !mcsema_real_eip !99
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !99
  %8 = load i64* %RBP, !mcsema_real_eip !99
  store i64 %8, i64* %RBP_val, !mcsema_real_eip !99
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !99
  %9 = load i64* %R8, !mcsema_real_eip !99
  store i64 %9, i64* %R8_val, !mcsema_real_eip !99
  %R9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !99
  %10 = load i64* %R9, !mcsema_real_eip !99
  store i64 %10, i64* %R9_val, !mcsema_real_eip !99
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !99
  %11 = load i64* %R10, !mcsema_real_eip !99
  store i64 %11, i64* %R10_val, !mcsema_real_eip !99
  %R11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !99
  %12 = load i64* %R11, !mcsema_real_eip !99
  store i64 %12, i64* %R11_val, !mcsema_real_eip !99
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !99
  %13 = load i64* %R12, !mcsema_real_eip !99
  store i64 %13, i64* %R12_val, !mcsema_real_eip !99
  %R13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !99
  %14 = load i64* %R13, !mcsema_real_eip !99
  store i64 %14, i64* %R13_val, !mcsema_real_eip !99
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !99
  %15 = load i64* %R14, !mcsema_real_eip !99
  store i64 %15, i64* %R14_val, !mcsema_real_eip !99
  %R15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !99
  %16 = load i64* %R15, !mcsema_real_eip !99
  store i64 %16, i64* %R15_val, !mcsema_real_eip !99
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !99
  %17 = load i64* %RIP, !mcsema_real_eip !99
  store i64 %17, i64* %RIP_val, !mcsema_real_eip !99
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !99
  %18 = load i1* %CF, align 1, !mcsema_real_eip !99
  store i1 %18, i1* %CF_val, !mcsema_real_eip !99
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !99
  %19 = load i1* %PF, align 1, !mcsema_real_eip !99
  store i1 %19, i1* %PF_val, !mcsema_real_eip !99
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !99
  %20 = load i1* %AF, align 1, !mcsema_real_eip !99
  store i1 %20, i1* %AF_val, !mcsema_real_eip !99
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !99
  %21 = load i1* %ZF, align 1, !mcsema_real_eip !99
  store i1 %21, i1* %ZF_val, !mcsema_real_eip !99
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !99
  %22 = load i1* %SF, align 1, !mcsema_real_eip !99
  store i1 %22, i1* %SF_val, !mcsema_real_eip !99
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !99
  %23 = load i1* %OF, align 1, !mcsema_real_eip !99
  store i1 %23, i1* %OF_val, !mcsema_real_eip !99
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !99
  %24 = load i1* %DF, align 1, !mcsema_real_eip !99
  store i1 %24, i1* %DF_val, !mcsema_real_eip !99
  %25 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !99
  %26 = bitcast x86_fp80* %25 to i8*, !mcsema_real_eip !99
  %27 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !99
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %26, i32 128, i32 4, i1 false), !mcsema_real_eip !99
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !99
  %28 = load i1* %FPU_B, align 1, !mcsema_real_eip !99
  store i1 %28, i1* %FPU_B_val, !mcsema_real_eip !99
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !99
  %29 = load i1* %FPU_C3, align 1, !mcsema_real_eip !99
  store i1 %29, i1* %FPU_C3_val, !mcsema_real_eip !99
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !99
  %30 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !99
  store i3 %30, i3* %FPU_TOP_val, !mcsema_real_eip !99
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !99
  %31 = load i1* %FPU_C2, align 1, !mcsema_real_eip !99
  store i1 %31, i1* %FPU_C2_val, !mcsema_real_eip !99
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !99
  %32 = load i1* %FPU_C1, align 1, !mcsema_real_eip !99
  store i1 %32, i1* %FPU_C1_val, !mcsema_real_eip !99
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !99
  %33 = load i1* %FPU_C0, align 1, !mcsema_real_eip !99
  store i1 %33, i1* %FPU_C0_val, !mcsema_real_eip !99
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !99
  %34 = load i1* %FPU_ES, align 1, !mcsema_real_eip !99
  store i1 %34, i1* %FPU_ES_val, !mcsema_real_eip !99
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !99
  %35 = load i1* %FPU_SF, align 1, !mcsema_real_eip !99
  store i1 %35, i1* %FPU_SF_val, !mcsema_real_eip !99
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !99
  %36 = load i1* %FPU_PE, align 1, !mcsema_real_eip !99
  store i1 %36, i1* %FPU_PE_val, !mcsema_real_eip !99
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !99
  %37 = load i1* %FPU_UE, align 1, !mcsema_real_eip !99
  store i1 %37, i1* %FPU_UE_val, !mcsema_real_eip !99
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !99
  %38 = load i1* %FPU_OE, align 1, !mcsema_real_eip !99
  store i1 %38, i1* %FPU_OE_val, !mcsema_real_eip !99
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !99
  %39 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !99
  store i1 %39, i1* %FPU_ZE_val, !mcsema_real_eip !99
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !99
  %40 = load i1* %FPU_DE, align 1, !mcsema_real_eip !99
  store i1 %40, i1* %FPU_DE_val, !mcsema_real_eip !99
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !99
  %41 = load i1* %FPU_IE, align 1, !mcsema_real_eip !99
  store i1 %41, i1* %FPU_IE_val, !mcsema_real_eip !99
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !99
  %42 = load i1* %FPU_X, align 1, !mcsema_real_eip !99
  store i1 %42, i1* %FPU_X_val, !mcsema_real_eip !99
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !99
  %43 = load i2* %FPU_RC, align 1, !mcsema_real_eip !99
  store i2 %43, i2* %FPU_RC_val, !mcsema_real_eip !99
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !99
  %44 = load i2* %FPU_PC, align 1, !mcsema_real_eip !99
  store i2 %44, i2* %FPU_PC_val, !mcsema_real_eip !99
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !99
  %45 = load i1* %FPU_PM, align 1, !mcsema_real_eip !99
  store i1 %45, i1* %FPU_PM_val, !mcsema_real_eip !99
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !99
  %46 = load i1* %FPU_UM, align 1, !mcsema_real_eip !99
  store i1 %46, i1* %FPU_UM_val, !mcsema_real_eip !99
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !99
  %47 = load i1* %FPU_OM, align 1, !mcsema_real_eip !99
  store i1 %47, i1* %FPU_OM_val, !mcsema_real_eip !99
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !99
  %48 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !99
  store i1 %48, i1* %FPU_ZM_val, !mcsema_real_eip !99
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !99
  %49 = load i1* %FPU_DM, align 1, !mcsema_real_eip !99
  store i1 %49, i1* %FPU_DM_val, !mcsema_real_eip !99
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !99
  %50 = load i1* %FPU_IM, align 1, !mcsema_real_eip !99
  store i1 %50, i1* %FPU_IM_val, !mcsema_real_eip !99
  %51 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !99
  %52 = bitcast i8* %51 to i64*
  %53 = bitcast [8 x i2]* %FPU_TAG_val to i64*
  %54 = load i64* %52, align 4
  store i64 %54, i64* %53, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !99
  %55 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !99
  store i16 %55, i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !99
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !99
  %56 = load i64* %FPU_LASTIP_OFF, !mcsema_real_eip !99
  store i64 %56, i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !99
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !99
  %57 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !99
  store i16 %57, i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !99
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !99
  %58 = load i64* %FPU_LASTDATA_OFF, !mcsema_real_eip !99
  store i64 %58, i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !99
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !99
  %59 = load i128* %XMM0, align 1, !mcsema_real_eip !99
  store i128 %59, i128* %XMM0_val, !mcsema_real_eip !99
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !99
  %60 = load i128* %XMM1, align 1, !mcsema_real_eip !99
  store i128 %60, i128* %XMM1_val, !mcsema_real_eip !99
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !99
  %61 = load i128* %XMM2, align 1, !mcsema_real_eip !99
  store i128 %61, i128* %XMM2_val, !mcsema_real_eip !99
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !99
  %62 = load i128* %XMM3, align 1, !mcsema_real_eip !99
  store i128 %62, i128* %XMM3_val, !mcsema_real_eip !99
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !99
  %63 = load i128* %XMM4, align 1, !mcsema_real_eip !99
  store i128 %63, i128* %XMM4_val, !mcsema_real_eip !99
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !99
  %64 = load i128* %XMM5, align 1, !mcsema_real_eip !99
  store i128 %64, i128* %XMM5_val, !mcsema_real_eip !99
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !99
  %65 = load i128* %XMM6, align 1, !mcsema_real_eip !99
  store i128 %65, i128* %XMM6_val, !mcsema_real_eip !99
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !99
  %66 = load i128* %XMM7, align 1, !mcsema_real_eip !99
  store i128 %66, i128* %XMM7_val, !mcsema_real_eip !99
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !99
  %67 = load i128* %XMM8, align 1, !mcsema_real_eip !99
  store i128 %67, i128* %XMM8_val, !mcsema_real_eip !99
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !99
  %68 = load i128* %XMM9, align 1, !mcsema_real_eip !99
  store i128 %68, i128* %XMM9_val, !mcsema_real_eip !99
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !99
  %69 = load i128* %XMM10, align 1, !mcsema_real_eip !99
  store i128 %69, i128* %XMM10_val, !mcsema_real_eip !99
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !99
  %70 = load i128* %XMM11, align 1, !mcsema_real_eip !99
  store i128 %70, i128* %XMM11_val, !mcsema_real_eip !99
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !99
  %71 = load i128* %XMM12, align 1, !mcsema_real_eip !99
  store i128 %71, i128* %XMM12_val, !mcsema_real_eip !99
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !99
  %72 = load i128* %XMM13, align 1, !mcsema_real_eip !99
  store i128 %72, i128* %XMM13_val, !mcsema_real_eip !99
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !99
  %73 = load i128* %XMM14, align 1, !mcsema_real_eip !99
  store i128 %73, i128* %XMM14_val, !mcsema_real_eip !99
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !99
  %74 = load i128* %XMM15, align 1, !mcsema_real_eip !99
  store i128 %74, i128* %XMM15_val, !mcsema_real_eip !99
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !99
  %75 = load i64* %STACK_BASE, !mcsema_real_eip !99
  store i64 %75, i64* %STACK_BASE_val, !mcsema_real_eip !99
  %STACK_LIMIT = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !99
  %76 = load i64* %STACK_LIMIT, !mcsema_real_eip !99
  store i64 %76, i64* %STACK_LIMIT_val, !mcsema_real_eip !99
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 115), i64* %RDI_val, !mcsema_real_eip !99
  %77 = load i64* %RSI_val, !mcsema_real_eip !100
  %78 = load i64* %RDX_val, !mcsema_real_eip !100
  %79 = load i64* %RCX_val, !mcsema_real_eip !100
  %80 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 115), i64 %77, i64 %78, i64 %79), !mcsema_real_eip !100
  %81 = load i64* %RBP_val, !mcsema_real_eip !101
  %82 = add i64 %81, -84, !mcsema_real_eip !101
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !101
  %84 = trunc i64 %80 to i32, !mcsema_real_eip !101
  %85 = bitcast i64* %83 to i32*
  store i32 %84, i32* %85, !mcsema_real_eip !101
  store i64 0, i64* %RAX_val, !mcsema_real_eip !26
  %86 = load i64* %RSP_val, !mcsema_real_eip !27
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %86, i64 144)
  %87 = extractvalue { i64, i1 } %uadd, 0
  %88 = xor i64 %87, %86, !mcsema_real_eip !27
  %89 = and i64 %88, 16
  %90 = icmp eq i64 %89, 0
  store i1 %90, i1* %AF_val, !mcsema_real_eip !27
  %91 = icmp slt i64 %87, 0
  store i1 %91, i1* %SF_val, !mcsema_real_eip !27
  %92 = icmp eq i64 %87, 0, !mcsema_real_eip !27
  store i1 %92, i1* %ZF_val, !mcsema_real_eip !27
  %93 = xor i64 %86, -9223372036854775808, !mcsema_real_eip !27
  %94 = and i64 %88, %93, !mcsema_real_eip !27
  %95 = icmp slt i64 %94, 0
  store i1 %95, i1* %OF_val, !mcsema_real_eip !27
  %96 = trunc i64 %87 to i8, !mcsema_real_eip !27
  %97 = tail call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !27
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF_val, !mcsema_real_eip !27
  %100 = extractvalue { i64, i1 } %uadd, 1
  store i1 %100, i1* %CF_val, !mcsema_real_eip !27
  store i64 %87, i64* %RSP_val, !mcsema_real_eip !27
  %101 = inttoptr i64 %87 to i64*, !mcsema_real_eip !28
  %102 = load i64* %101, !mcsema_real_eip !28
  store i64 %102, i64* %RBP_val, !mcsema_real_eip !28
  %103 = add i64 %87, 16, !mcsema_real_eip !29
  store i64 %103, i64* %RSP_val, !mcsema_real_eip !29
  %104 = load i64* %RAX_val, !mcsema_real_eip !29
  store i64 %104, i64* %RAX, !mcsema_real_eip !29
  %105 = load i64* %RBX_val, !mcsema_real_eip !29
  store i64 %105, i64* %RBX, !mcsema_real_eip !29
  %106 = load i64* %RCX_val, !mcsema_real_eip !29
  store i64 %106, i64* %RCX, !mcsema_real_eip !29
  %107 = load i64* %RDX_val, !mcsema_real_eip !29
  store i64 %107, i64* %RDX, !mcsema_real_eip !29
  %108 = load i64* %RSI_val, !mcsema_real_eip !29
  store i64 %108, i64* %RSI, !mcsema_real_eip !29
  %109 = load i64* %RDI_val, !mcsema_real_eip !29
  store i64 %109, i64* %RDI, !mcsema_real_eip !29
  %110 = load i64* %RSP_val, !mcsema_real_eip !29
  store i64 %110, i64* %RSP, !mcsema_real_eip !29
  %111 = load i64* %RBP_val, !mcsema_real_eip !29
  store i64 %111, i64* %RBP, !mcsema_real_eip !29
  %112 = load i64* %R8_val, !mcsema_real_eip !29
  store i64 %112, i64* %R8, !mcsema_real_eip !29
  %113 = load i64* %R9_val, !mcsema_real_eip !29
  store i64 %113, i64* %R9, !mcsema_real_eip !29
  %114 = load i64* %R10_val, !mcsema_real_eip !29
  store i64 %114, i64* %R10, !mcsema_real_eip !29
  %115 = load i64* %R11_val, !mcsema_real_eip !29
  store i64 %115, i64* %R11, !mcsema_real_eip !29
  %116 = load i64* %R12_val, !mcsema_real_eip !29
  store i64 %116, i64* %R12, !mcsema_real_eip !29
  %117 = load i64* %R13_val, !mcsema_real_eip !29
  store i64 %117, i64* %R13, !mcsema_real_eip !29
  %118 = load i64* %R14_val, !mcsema_real_eip !29
  store i64 %118, i64* %R14, !mcsema_real_eip !29
  %119 = load i64* %R15_val, !mcsema_real_eip !29
  store i64 %119, i64* %R15, !mcsema_real_eip !29
  %120 = load i64* %RIP_val, !mcsema_real_eip !29
  store i64 %120, i64* %RIP, !mcsema_real_eip !29
  %121 = load i1* %CF_val, !mcsema_real_eip !29
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !29
  %122 = load i1* %PF_val, !mcsema_real_eip !29
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !29
  %123 = load i1* %AF_val, !mcsema_real_eip !29
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !29
  %124 = load i1* %ZF_val, !mcsema_real_eip !29
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !29
  %125 = load i1* %SF_val, !mcsema_real_eip !29
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !29
  %126 = load i1* %OF_val, !mcsema_real_eip !29
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !29
  %127 = load i1* %DF_val, !mcsema_real_eip !29
  store i1 %127, i1* %DF, align 1, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 128, i32 8, i1 false), !mcsema_real_eip !29
  %128 = load i1* %FPU_B_val, !mcsema_real_eip !29
  store i1 %128, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %129 = load i1* %FPU_C3_val, !mcsema_real_eip !29
  store i1 %129, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %130 = load i3* %FPU_TOP_val, !mcsema_real_eip !29
  store i3 %130, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %131 = load i1* %FPU_C2_val, !mcsema_real_eip !29
  store i1 %131, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %132 = load i1* %FPU_C1_val, !mcsema_real_eip !29
  store i1 %132, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %133 = load i1* %FPU_C0_val, !mcsema_real_eip !29
  store i1 %133, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %134 = load i1* %FPU_ES_val, !mcsema_real_eip !29
  store i1 %134, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %135 = load i1* %FPU_SF_val, !mcsema_real_eip !29
  store i1 %135, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %136 = load i1* %FPU_PE_val, !mcsema_real_eip !29
  store i1 %136, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %137 = load i1* %FPU_UE_val, !mcsema_real_eip !29
  store i1 %137, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %138 = load i1* %FPU_OE_val, !mcsema_real_eip !29
  store i1 %138, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %139 = load i1* %FPU_ZE_val, !mcsema_real_eip !29
  store i1 %139, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %140 = load i1* %FPU_DE_val, !mcsema_real_eip !29
  store i1 %140, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %141 = load i1* %FPU_IE_val, !mcsema_real_eip !29
  store i1 %141, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %142 = load i1* %FPU_X_val, !mcsema_real_eip !29
  store i1 %142, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %143 = load i2* %FPU_RC_val, !mcsema_real_eip !29
  store i2 %143, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %144 = load i2* %FPU_PC_val, !mcsema_real_eip !29
  store i2 %144, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %145 = load i1* %FPU_PM_val, !mcsema_real_eip !29
  store i1 %145, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %146 = load i1* %FPU_UM_val, !mcsema_real_eip !29
  store i1 %146, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %147 = load i1* %FPU_OM_val, !mcsema_real_eip !29
  store i1 %147, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %148 = load i1* %FPU_ZM_val, !mcsema_real_eip !29
  store i1 %148, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %149 = load i1* %FPU_DM_val, !mcsema_real_eip !29
  store i1 %149, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %150 = load i1* %FPU_IM_val, !mcsema_real_eip !29
  store i1 %150, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %151 = load i64* %53, align 4
  store i64 %151, i64* %52, align 4
  %152 = load i16* %FPU_LASTIP_SEG_val, !mcsema_real_eip !29
  store i16 %152, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %153 = load i64* %FPU_LASTIP_OFF_val, !mcsema_real_eip !29
  store i64 %153, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !29
  %154 = load i16* %FPU_LASTDATA_SEG_val, !mcsema_real_eip !29
  store i16 %154, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %155 = load i64* %FPU_LASTDATA_OFF_val, !mcsema_real_eip !29
  store i64 %155, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !29
  %156 = load i128* %XMM0_val, !mcsema_real_eip !29
  store i128 %156, i128* %XMM0, align 1, !mcsema_real_eip !29
  %157 = load i128* %XMM1_val, !mcsema_real_eip !29
  store i128 %157, i128* %XMM1, align 1, !mcsema_real_eip !29
  %158 = load i128* %XMM2_val, !mcsema_real_eip !29
  store i128 %158, i128* %XMM2, align 1, !mcsema_real_eip !29
  %159 = load i128* %XMM3_val, !mcsema_real_eip !29
  store i128 %159, i128* %XMM3, align 1, !mcsema_real_eip !29
  %160 = load i128* %XMM4_val, !mcsema_real_eip !29
  store i128 %160, i128* %XMM4, align 1, !mcsema_real_eip !29
  %161 = load i128* %XMM5_val, !mcsema_real_eip !29
  store i128 %161, i128* %XMM5, align 1, !mcsema_real_eip !29
  %162 = load i128* %XMM6_val, !mcsema_real_eip !29
  store i128 %162, i128* %XMM6, align 1, !mcsema_real_eip !29
  %163 = load i128* %XMM7_val, !mcsema_real_eip !29
  store i128 %163, i128* %XMM7, align 1, !mcsema_real_eip !29
  %164 = load i128* %XMM8_val, !mcsema_real_eip !29
  store i128 %164, i128* %XMM8, align 1, !mcsema_real_eip !29
  %165 = load i128* %XMM9_val, !mcsema_real_eip !29
  store i128 %165, i128* %XMM9, align 1, !mcsema_real_eip !29
  %166 = load i128* %XMM10_val, !mcsema_real_eip !29
  store i128 %166, i128* %XMM10, align 1, !mcsema_real_eip !29
  %167 = load i128* %XMM11_val, !mcsema_real_eip !29
  store i128 %167, i128* %XMM11, align 1, !mcsema_real_eip !29
  %168 = load i128* %XMM12_val, !mcsema_real_eip !29
  store i128 %168, i128* %XMM12, align 1, !mcsema_real_eip !29
  %169 = load i128* %XMM13_val, !mcsema_real_eip !29
  store i128 %169, i128* %XMM13, align 1, !mcsema_real_eip !29
  %170 = load i128* %XMM14_val, !mcsema_real_eip !29
  store i128 %170, i128* %XMM14, align 1, !mcsema_real_eip !29
  %171 = load i128* %XMM15_val, !mcsema_real_eip !29
  store i128 %171, i128* %XMM15, align 1, !mcsema_real_eip !29
  %172 = load i64* %STACK_BASE_val, !mcsema_real_eip !29
  store i64 %172, i64* %STACK_BASE, align 1, !mcsema_real_eip !29
  %173 = load i64* %STACK_LIMIT_val, !mcsema_real_eip !29
  store i64 %173, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

attributes #0 = { alwaysinline }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 1, [17 x i8] c"\09movq\09%rsp, %rbp\00"}
!4 = metadata !{i64 4, [17 x i8] c"\09subq\09$144, %rsp\00"}
!5 = metadata !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!6 = metadata !{i64 14, [17 x i8] c"\09movl\09%edi, %eax\00"}
!7 = metadata !{i64 16, [19 x i8] c"\09subl\09$74632, %edi\00"}
!8 = metadata !{i64 22, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!9 = metadata !{i64 25, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!10 = metadata !{i64 28, [7 x i8] c"\09jg\0986\00"}
!11 = metadata !{i64 120, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!12 = metadata !{i64 123, [24 x i8] c"\09addl\09$4294892663, %eax\00"}
!13 = metadata !{i64 128, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!14 = metadata !{i64 130, [16 x i8] c"\09subl\09$10, %eax\00"}
!15 = metadata !{i64 133, [22 x i8] c"\09movq\09%rcx, -48(%rbp)\00"}
!16 = metadata !{i64 137, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!17 = metadata !{i64 140, [8 x i8] c"\09ja\09489\00"}
!18 = metadata !{i64 42, [17 x i8] c"\09subl\09$254, %eax\00"}
!19 = metadata !{i64 47, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!20 = metadata !{i64 50, [7 x i8] c"\09jg\0942\00"}
!21 = metadata !{i64 98, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!22 = metadata !{i64 635, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!23 = metadata !{i64 645, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!24 = metadata !{i64 650, [9 x i8] c"\09callq\090\00"}
!25 = metadata !{i64 655, [23 x i8] c"\09movl\09%eax, -132(%rbp)\00"}
!26 = metadata !{i64 661, [15 x i8] c"\09movl\09$0, %eax\00"}
!27 = metadata !{i64 666, [17 x i8] c"\09addq\09$144, %rsp\00"}
!28 = metadata !{i64 673, [11 x i8] c"\09popq\09%rbp\00"}
!29 = metadata !{i64 674, [6 x i8] c"\09retq\00"}
!30 = metadata !{i64 146, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!31 = metadata !{i64 150, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!32 = metadata !{i64 158, [12 x i8] c"\09jmpq\09*%rcx\00"}
!33 = metadata !{i64 101, [17 x i8] c"\09subl\09$255, %eax\00"}
!34 = metadata !{i64 106, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!35 = metadata !{i64 109, [8 x i8] c"\09je\09245\00"}
!36 = metadata !{i64 64, [17 x i8] c"\09movl\09%eax, %ecx\00"}
!37 = metadata !{i64 66, [17 x i8] c"\09movl\09%ecx, %edx\00"}
!38 = metadata !{i64 68, [16 x i8] c"\09subl\09$19, %eax\00"}
!39 = metadata !{i64 71, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!40 = metadata !{i64 74, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!41 = metadata !{i64 78, [8 x i8] c"\09ja\09551\00"}
!42 = metadata !{i64 360, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!43 = metadata !{i64 372, [9 x i8] c"\09callq\090\00"}
!44 = metadata !{i64 377, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!45 = metadata !{i64 84, [22 x i8] c"\09movq\09-32(%rbp), %rax\00"}
!46 = metadata !{i64 88, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!47 = metadata !{i64 96, [12 x i8] c"\09jmpq\09*%rcx\00"}
!48 = metadata !{i64 385, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!49 = metadata !{i64 397, [9 x i8] c"\09callq\090\00"}
!50 = metadata !{i64 402, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!51 = metadata !{i64 410, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!52 = metadata !{i64 422, [9 x i8] c"\09callq\090\00"}
!53 = metadata !{i64 427, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!54 = metadata !{i64 435, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!55 = metadata !{i64 447, [9 x i8] c"\09callq\090\00"}
!56 = metadata !{i64 452, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!57 = metadata !{i64 460, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!58 = metadata !{i64 472, [9 x i8] c"\09callq\090\00"}
!59 = metadata !{i64 477, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!60 = metadata !{i64 485, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!61 = metadata !{i64 497, [9 x i8] c"\09callq\090\00"}
!62 = metadata !{i64 502, [23 x i8] c"\09movl\09%eax, -108(%rbp)\00"}
!63 = metadata !{i64 510, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!64 = metadata !{i64 522, [9 x i8] c"\09callq\090\00"}
!65 = metadata !{i64 527, [23 x i8] c"\09movl\09%eax, -112(%rbp)\00"}
!66 = metadata !{i64 535, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!67 = metadata !{i64 547, [9 x i8] c"\09callq\090\00"}
!68 = metadata !{i64 552, [23 x i8] c"\09movl\09%eax, -116(%rbp)\00"}
!69 = metadata !{i64 560, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!70 = metadata !{i64 572, [9 x i8] c"\09callq\090\00"}
!71 = metadata !{i64 577, [23 x i8] c"\09movl\09%eax, -120(%rbp)\00"}
!72 = metadata !{i64 585, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!73 = metadata !{i64 597, [9 x i8] c"\09callq\090\00"}
!74 = metadata !{i64 602, [23 x i8] c"\09movl\09%eax, -124(%rbp)\00"}
!75 = metadata !{i64 610, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!76 = metadata !{i64 622, [9 x i8] c"\09callq\090\00"}
!77 = metadata !{i64 627, [23 x i8] c"\09movl\09%eax, -128(%rbp)\00"}
!78 = metadata !{i64 160, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!79 = metadata !{i64 172, [9 x i8] c"\09callq\090\00"}
!80 = metadata !{i64 177, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!81 = metadata !{i64 185, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!82 = metadata !{i64 197, [9 x i8] c"\09callq\090\00"}
!83 = metadata !{i64 202, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!84 = metadata !{i64 210, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!85 = metadata !{i64 222, [9 x i8] c"\09callq\090\00"}
!86 = metadata !{i64 227, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!87 = metadata !{i64 235, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!88 = metadata !{i64 247, [9 x i8] c"\09callq\090\00"}
!89 = metadata !{i64 252, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!90 = metadata !{i64 260, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!91 = metadata !{i64 272, [9 x i8] c"\09callq\090\00"}
!92 = metadata !{i64 277, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!93 = metadata !{i64 285, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!94 = metadata !{i64 297, [9 x i8] c"\09callq\090\00"}
!95 = metadata !{i64 302, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!96 = metadata !{i64 310, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!97 = metadata !{i64 322, [9 x i8] c"\09callq\090\00"}
!98 = metadata !{i64 327, [22 x i8] c"\09movl\09%eax, -80(%rbp)\00"}
!99 = metadata !{i64 335, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!100 = metadata !{i64 347, [9 x i8] c"\09callq\090\00"}
!101 = metadata !{i64 352, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
