; ModuleID = 'Output/test_9.clang.bc'
source_filename = "Output/test_9.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_1;"
module asm "  .globl start;"
module asm "  .type start,@function"
module asm "start:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_1(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size start,0b-start;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_1(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !2
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !2
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !2
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !2
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !2
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !2
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !2
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !2
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !2
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !2
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !2
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !2
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !2
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !2
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !2
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !2
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !2
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !2
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !2
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !2
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !2
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !2
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !2
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !2
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !2
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !2
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !2
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !2
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !2
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !2
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !2
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !2
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !2
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !2
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !2
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !2
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !2
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !2
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !2
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !2
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !2
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !2
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !2
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !2
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !2
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !2
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !2
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !2
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !2
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !2
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !2
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !2
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !2
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !2
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !2
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !2
  %1 = zext i32 %EAX_val.1 to i64, !mcsema_real_eip !2
  store i64 %1, i64* %XCX, !mcsema_real_eip !2
  %EAX.2 = bitcast i64* %XAX to i32*, !mcsema_real_eip !3
  %EAX_val.3 = load i32, i32* %EAX.2, !mcsema_real_eip !3
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !3
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !3
  %2 = xor i32 %EAX_val.3, %EAX_val.5, !mcsema_real_eip !3
  store i1 false, i1* %CF, !mcsema_real_eip !3
  store i1 false, i1* %OF, !mcsema_real_eip !3
  %3 = lshr i32 %2, 31, !mcsema_real_eip !3
  %4 = trunc i32 %3 to i1, !mcsema_real_eip !3
  store i1 %4, i1* %SF, !mcsema_real_eip !3
  %5 = icmp eq i32 %2, 0, !mcsema_real_eip !3
  store i1 %5, i1* %ZF, !mcsema_real_eip !3
  %6 = trunc i32 %2 to i8, !mcsema_real_eip !3
  %7 = call i8 @llvm.ctpop.i8(i8 %6), !mcsema_real_eip !3
  %8 = trunc i8 %7 to i1, !mcsema_real_eip !3
  %9 = xor i1 %8, true, !mcsema_real_eip !3
  store i1 %9, i1* %PF, !mcsema_real_eip !3
  store i1 undef, i1* %AF, !mcsema_real_eip !3
  %10 = zext i32 %2 to i64, !mcsema_real_eip !3
  store i64 %10, i64* %XAX, !mcsema_real_eip !3
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !4
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !4
  %EAX_val.7.zext = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !4
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !4
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !4
  %11 = add i32 %EAX_val.9, 1, !mcsema_real_eip !4
  %12 = icmp eq i32 %11, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = trunc i32 %11 to i8, !mcsema_real_eip !4
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !4
  %15 = trunc i8 %14 to i1, !mcsema_real_eip !4
  %16 = xor i1 %15, true, !mcsema_real_eip !4
  store i1 %16, i1* %PF, !mcsema_real_eip !4
  %17 = lshr i32 %11, 31, !mcsema_real_eip !4
  %18 = trunc i32 %17 to i1, !mcsema_real_eip !4
  store i1 %18, i1* %SF, !mcsema_real_eip !4
  %19 = xor i32 %EAX_val.9, 1, !mcsema_real_eip !4
  %20 = xor i32 %19, -1, !mcsema_real_eip !4
  %21 = xor i32 %EAX_val.9, %11, !mcsema_real_eip !4
  %22 = and i32 %20, %21, !mcsema_real_eip !4
  %23 = lshr i32 %22, 31, !mcsema_real_eip !4
  %24 = and i32 %23, 1, !mcsema_real_eip !4
  %25 = trunc i32 %24 to i1, !mcsema_real_eip !4
  store i1 %25, i1* %OF, !mcsema_real_eip !4
  %26 = zext i32 %11 to i64, !mcsema_real_eip !4
  store i64 %26, i64* %XAX, !mcsema_real_eip !4
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !4
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !4
  %EAX_val.11.zext = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !4
  %27 = xor i64 %EAX_val.7.zext, %EAX_val.11.zext, !mcsema_real_eip !4
  %28 = xor i64 %27, 1, !mcsema_real_eip !4
  %29 = and i64 %28, 16, !mcsema_real_eip !4
  %30 = icmp ne i64 %29, 0, !mcsema_real_eip !4
  store i1 %30, i1* %AF, !mcsema_real_eip !4
  %EBX.12 = bitcast i64* %XBX to i32*, !mcsema_real_eip !5
  %EBX_val.13 = load i32, i32* %EBX.12, !mcsema_real_eip !5
  %EBX.14 = bitcast i64* %XBX to i32*, !mcsema_real_eip !5
  %EBX_val.15 = load i32, i32* %EBX.14, !mcsema_real_eip !5
  %31 = xor i32 %EBX_val.13, %EBX_val.15, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  %32 = lshr i32 %31, 31, !mcsema_real_eip !5
  %33 = trunc i32 %32 to i1, !mcsema_real_eip !5
  store i1 %33, i1* %SF, !mcsema_real_eip !5
  %34 = icmp eq i32 %31, 0, !mcsema_real_eip !5
  store i1 %34, i1* %ZF, !mcsema_real_eip !5
  %35 = trunc i32 %31 to i8, !mcsema_real_eip !5
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !5
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !5
  %38 = xor i1 %37, true, !mcsema_real_eip !5
  store i1 %38, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  %39 = zext i32 %31 to i64, !mcsema_real_eip !5
  store i64 %39, i64* %XBX, !mcsema_real_eip !5
  br label %block_0x9, !mcsema_real_eip !6

block_0x9:                                        ; preds = %block_0xd, %block_0x1
  %EBX.16 = bitcast i64* %XBX to i32*, !mcsema_real_eip !6
  %EBX_val.17 = load i32, i32* %EBX.16, !mcsema_real_eip !6
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !6
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !6
  %40 = sub i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  %41 = xor i32 %40, %EBX_val.17, !mcsema_real_eip !6
  %42 = xor i32 %41, %ECX_val.19, !mcsema_real_eip !6
  %43 = and i32 %42, 16, !mcsema_real_eip !6
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !6
  store i1 %44, i1* %AF, !mcsema_real_eip !6
  %45 = trunc i32 %40 to i8, !mcsema_real_eip !6
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !6
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !6
  %48 = xor i1 %47, true, !mcsema_real_eip !6
  store i1 %48, i1* %PF, !mcsema_real_eip !6
  %49 = icmp eq i32 %40, 0, !mcsema_real_eip !6
  store i1 %49, i1* %ZF, !mcsema_real_eip !6
  %50 = lshr i32 %40, 31, !mcsema_real_eip !6
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !6
  store i1 %51, i1* %SF, !mcsema_real_eip !6
  %52 = icmp ult i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  store i1 %52, i1* %CF, !mcsema_real_eip !6
  %53 = xor i32 %EBX_val.17, %ECX_val.19, !mcsema_real_eip !6
  %54 = xor i32 %EBX_val.17, %40, !mcsema_real_eip !6
  %55 = and i32 %53, %54, !mcsema_real_eip !6
  %56 = lshr i32 %55, 31, !mcsema_real_eip !6
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !6
  store i1 %57, i1* %OF, !mcsema_real_eip !6
  %58 = load i1, i1* %ZF, !mcsema_real_eip !7
  %59 = icmp eq i1 %58, true, !mcsema_real_eip !7
  br i1 %59, label %block_0x13, label %block_0xd, !mcsema_real_eip !7

block_0xd:                                        ; preds = %block_0x9
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !8
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !8
  %60 = add i32 %EAX_val.23, %EAX_val.21, !mcsema_real_eip !8
  %61 = xor i32 %60, %EAX_val.21, !mcsema_real_eip !8
  %62 = xor i32 %61, %EAX_val.23, !mcsema_real_eip !8
  %63 = and i32 %62, 16, !mcsema_real_eip !8
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !8
  store i1 %64, i1* %AF, !mcsema_real_eip !8
  %65 = lshr i32 %60, 31, !mcsema_real_eip !8
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !8
  store i1 %66, i1* %SF, !mcsema_real_eip !8
  %67 = icmp eq i32 %60, 0, !mcsema_real_eip !8
  store i1 %67, i1* %ZF, !mcsema_real_eip !8
  %68 = xor i32 %EAX_val.21, %EAX_val.23, !mcsema_real_eip !8
  %69 = xor i32 %68, -1, !mcsema_real_eip !8
  %70 = xor i32 %EAX_val.21, %60, !mcsema_real_eip !8
  %71 = and i32 %69, %70, !mcsema_real_eip !8
  %72 = lshr i32 %71, 31, !mcsema_real_eip !8
  %73 = and i32 %72, 1, !mcsema_real_eip !8
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !8
  store i1 %74, i1* %OF, !mcsema_real_eip !8
  %75 = trunc i32 %60 to i8, !mcsema_real_eip !8
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !8
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !8
  %78 = xor i1 %77, true, !mcsema_real_eip !8
  store i1 %78, i1* %PF, !mcsema_real_eip !8
  %79 = icmp ult i32 %60, %EAX_val.21, !mcsema_real_eip !8
  store i1 %79, i1* %CF, !mcsema_real_eip !8
  %80 = zext i32 %60 to i64, !mcsema_real_eip !8
  store i64 %80, i64* %XAX, !mcsema_real_eip !8
  %EBX.24 = bitcast i64* %XBX to i32*, !mcsema_real_eip !9
  %EBX_val.25 = load i32, i32* %EBX.24, !mcsema_real_eip !9
  %EBX_val.25.zext = zext i32 %EBX_val.25 to i64, !mcsema_real_eip !9
  %EBX.26 = bitcast i64* %XBX to i32*, !mcsema_real_eip !9
  %EBX_val.27 = load i32, i32* %EBX.26, !mcsema_real_eip !9
  %81 = add i32 %EBX_val.27, 1, !mcsema_real_eip !9
  %82 = icmp eq i32 %81, 0, !mcsema_real_eip !9
  store i1 %82, i1* %ZF, !mcsema_real_eip !9
  %83 = trunc i32 %81 to i8, !mcsema_real_eip !9
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !9
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !9
  %86 = xor i1 %85, true, !mcsema_real_eip !9
  store i1 %86, i1* %PF, !mcsema_real_eip !9
  %87 = lshr i32 %81, 31, !mcsema_real_eip !9
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !9
  store i1 %88, i1* %SF, !mcsema_real_eip !9
  %89 = xor i32 %EBX_val.27, 1, !mcsema_real_eip !9
  %90 = xor i32 %89, -1, !mcsema_real_eip !9
  %91 = xor i32 %EBX_val.27, %81, !mcsema_real_eip !9
  %92 = and i32 %90, %91, !mcsema_real_eip !9
  %93 = lshr i32 %92, 31, !mcsema_real_eip !9
  %94 = and i32 %93, 1, !mcsema_real_eip !9
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !9
  store i1 %95, i1* %OF, !mcsema_real_eip !9
  %96 = zext i32 %81 to i64, !mcsema_real_eip !9
  store i64 %96, i64* %XBX, !mcsema_real_eip !9
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !9
  %EBX_val.29 = load i32, i32* %EBX.28, !mcsema_real_eip !9
  %EBX_val.29.zext = zext i32 %EBX_val.29 to i64, !mcsema_real_eip !9
  %97 = xor i64 %EBX_val.25.zext, %EBX_val.29.zext, !mcsema_real_eip !9
  %98 = xor i64 %97, 1, !mcsema_real_eip !9
  %99 = and i64 %98, 16, !mcsema_real_eip !9
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !9
  store i1 %100, i1* %AF, !mcsema_real_eip !9
  br label %block_0x9, !mcsema_real_eip !10

block_0x13:                                       ; preds = %block_0x9
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !11
  %101 = add i64 %RSP_val.30, 8, !mcsema_real_eip !11
  %102 = inttoptr i64 %RSP_val.30 to i64*, !mcsema_real_eip !11
  %103 = load i64, i64* %102, !mcsema_real_eip !11
  store i64 %103, i64* %XIP, !mcsema_real_eip !11
  store i64 %101, i64* %XSP, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @start() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 3}
!4 = !{i64 5}
!5 = !{i64 7}
!6 = !{i64 9}
!7 = !{i64 11}
!8 = !{i64 13}
!9 = !{i64 15}
!10 = !{i64 17}
!11 = !{i64 19}
