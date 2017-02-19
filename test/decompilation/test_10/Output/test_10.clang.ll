; ModuleID = 'Output/test_10.clang.bc'
source_filename = "Output/test_10.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl demo3;"
module asm "  .type demo3,@function"
module asm "demo3:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size demo3,0b-demo3;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x80 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RBP_val.3 = load i64, i64* %XBP, !mcsema_real_eip !4
  %3 = add i64 %RBP_val.3, -8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %4, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, -16, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %RSI_val.6 = load i64, i64* %XSI, !mcsema_real_eip !5
  store i64 %RSI_val.6, i64* %6, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %7 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  %9 = load i64, i64* %8, !mcsema_real_eip !6
  store i64 %9, i64* %XSI, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %10 = add i64 %RBP_val.8, -24, !mcsema_real_eip !7
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %11, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %12 = add i64 %RBP_val.10, -16, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !8
  %14 = load i64, i64* %13, !mcsema_real_eip !8
  store i64 %14, i64* %XSI, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %15 = add i64 %RBP_val.11, -32, !mcsema_real_eip !9
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !9
  %RSI_val.12 = load i64, i64* %XSI, !mcsema_real_eip !9
  store i64 %RSI_val.12, i64* %16, !mcsema_real_eip !9
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !10
  %17 = add i64 %RBP_val.13, -24, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !10
  %19 = load i64, i64* %18, !mcsema_real_eip !10
  store i64 %19, i64* %XSI, !mcsema_real_eip !10
  %RSI_val.14 = load i64, i64* %XSI, !mcsema_real_eip !11
  %20 = add i64 %RSI_val.14, 0, !mcsema_real_eip !11
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !11
  %22 = ptrtoint i64* %21 to i64, !mcsema_real_eip !11
  %23 = inttoptr i64 %22 to i8*, !mcsema_real_eip !11
  %24 = load i8, i8* %23, !mcsema_real_eip !11
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !11
  store i8 %24, i8* %AL.15, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %25 = add i64 %RBP_val.16, -33, !mcsema_real_eip !12
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !12
  %AL.17 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  %AL_val.18 = load i8, i8* %AL.17, !mcsema_real_eip !12
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !12
  %28 = inttoptr i64 %27 to i8*, !mcsema_real_eip !12
  store i8 %AL_val.18, i8* %28, !mcsema_real_eip !12
  br label %block_0x25, !mcsema_real_eip !13

block_0x25:                                       ; preds = %block_0x54, %block_0x0
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !13
  %29 = add i64 %RBP_val.19, -33, !mcsema_real_eip !13
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !13
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i8*, !mcsema_real_eip !13
  %33 = load i8, i8* %32, !mcsema_real_eip !13
  %34 = sext i8 %33 to i32, !mcsema_real_eip !13
  %35 = zext i32 %34 to i64, !mcsema_real_eip !13
  store i64 %35, i64* %XAX, !mcsema_real_eip !13
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !14
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !14
  %36 = sub i32 %EAX_val.21, 0, !mcsema_real_eip !14
  %37 = xor i32 %36, %EAX_val.21, !mcsema_real_eip !14
  %38 = xor i32 %37, 0, !mcsema_real_eip !14
  %39 = and i32 %38, 16, !mcsema_real_eip !14
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !14
  store i1 %40, i1* %AF, !mcsema_real_eip !14
  %41 = trunc i32 %36 to i8, !mcsema_real_eip !14
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !14
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !14
  %44 = xor i1 %43, true, !mcsema_real_eip !14
  store i1 %44, i1* %PF, !mcsema_real_eip !14
  %45 = icmp eq i32 %36, 0, !mcsema_real_eip !14
  store i1 %45, i1* %ZF, !mcsema_real_eip !14
  %46 = lshr i32 %36, 31, !mcsema_real_eip !14
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !14
  store i1 %47, i1* %SF, !mcsema_real_eip !14
  %48 = icmp ult i32 %EAX_val.21, 0, !mcsema_real_eip !14
  store i1 %48, i1* %CF, !mcsema_real_eip !14
  %49 = xor i32 %EAX_val.21, 0, !mcsema_real_eip !14
  %50 = xor i32 %EAX_val.21, %36, !mcsema_real_eip !14
  %51 = and i32 %49, %50, !mcsema_real_eip !14
  %52 = lshr i32 %51, 31, !mcsema_real_eip !14
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !14
  store i1 %53, i1* %OF, !mcsema_real_eip !14
  %54 = load i1, i1* %ZF, !mcsema_real_eip !15
  %55 = icmp eq i1 %54, true, !mcsema_real_eip !15
  br i1 %55, label %block_0x7a, label %block_0x32, !mcsema_real_eip !15

block_0x32:                                       ; preds = %block_0x25
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !16
  %56 = add i64 %RBP_val.22, -33, !mcsema_real_eip !16
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !16
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !16
  %59 = inttoptr i64 %58 to i8*, !mcsema_real_eip !16
  %60 = load i8, i8* %59, !mcsema_real_eip !16
  %61 = sext i8 %60 to i32, !mcsema_real_eip !16
  %62 = zext i32 %61 to i64, !mcsema_real_eip !16
  store i64 %62, i64* %XAX, !mcsema_real_eip !16
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !17
  %63 = sub i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %64 = xor i32 %63, %EAX_val.24, !mcsema_real_eip !17
  %65 = xor i32 %64, 47, !mcsema_real_eip !17
  %66 = and i32 %65, 16, !mcsema_real_eip !17
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !17
  store i1 %67, i1* %AF, !mcsema_real_eip !17
  %68 = trunc i32 %63 to i8, !mcsema_real_eip !17
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !17
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !17
  %71 = xor i1 %70, true, !mcsema_real_eip !17
  store i1 %71, i1* %PF, !mcsema_real_eip !17
  %72 = icmp eq i32 %63, 0, !mcsema_real_eip !17
  store i1 %72, i1* %ZF, !mcsema_real_eip !17
  %73 = lshr i32 %63, 31, !mcsema_real_eip !17
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !17
  store i1 %74, i1* %SF, !mcsema_real_eip !17
  %75 = icmp ult i32 %EAX_val.24, 47, !mcsema_real_eip !17
  store i1 %75, i1* %CF, !mcsema_real_eip !17
  %76 = xor i32 %EAX_val.24, 47, !mcsema_real_eip !17
  %77 = xor i32 %EAX_val.24, %63, !mcsema_real_eip !17
  %78 = and i32 %76, %77, !mcsema_real_eip !17
  %79 = lshr i32 %78, 31, !mcsema_real_eip !17
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !17
  store i1 %80, i1* %OF, !mcsema_real_eip !17
  %81 = load i1, i1* %ZF, !mcsema_real_eip !18
  %82 = icmp eq i1 %81, false, !mcsema_real_eip !18
  br i1 %82, label %block_0x4b, label %block_0x3f, !mcsema_real_eip !18

block_0x3f:                                       ; preds = %block_0x32
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !19
  %83 = add i64 %RBP_val.25, -32, !mcsema_real_eip !19
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !19
  %85 = load i64, i64* %84, !mcsema_real_eip !19
  store i64 %85, i64* %XAX, !mcsema_real_eip !19
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !20
  %86 = add i64 %RAX_val.26, 0, !mcsema_real_eip !20
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !20
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !20
  %89 = inttoptr i64 %88 to i8*, !mcsema_real_eip !20
  store i8 92, i8* %89, !mcsema_real_eip !20
  br label %block_0x54, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x32
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !22
  %90 = add i64 %RBP_val.27, -33, !mcsema_real_eip !22
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !22
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !22
  %93 = inttoptr i64 %92 to i8*, !mcsema_real_eip !22
  %94 = load i8, i8* %93, !mcsema_real_eip !22
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !22
  store i8 %94, i8* %AL.28, !mcsema_real_eip !22
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !23
  %95 = add i64 %RBP_val.29, -32, !mcsema_real_eip !23
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !23
  %97 = load i64, i64* %96, !mcsema_real_eip !23
  store i64 %97, i64* %XCX, !mcsema_real_eip !23
  %RCX_val.30 = load i64, i64* %XCX, !mcsema_real_eip !24
  %98 = add i64 %RCX_val.30, 0, !mcsema_real_eip !24
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !24
  %AL.31 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  %AL_val.32 = load i8, i8* %AL.31, !mcsema_real_eip !24
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !24
  %101 = inttoptr i64 %100 to i8*, !mcsema_real_eip !24
  store i8 %AL_val.32, i8* %101, !mcsema_real_eip !24
  br label %block_0x54, !mcsema_real_eip !25

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %102 = add i64 %RBP_val.33, -24, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = load i64, i64* %103, !mcsema_real_eip !25
  store i64 %104, i64* %XAX, !mcsema_real_eip !25
  %RAX_val.34 = load i64, i64* %XAX, !mcsema_real_eip !26
  %105 = add i64 1, %RAX_val.34, !mcsema_real_eip !26
  %106 = xor i64 %105, %RAX_val.34, !mcsema_real_eip !26
  %107 = xor i64 %106, 1, !mcsema_real_eip !26
  %108 = and i64 %107, 16, !mcsema_real_eip !26
  %109 = icmp ne i64 %108, 0, !mcsema_real_eip !26
  store i1 %109, i1* %AF, !mcsema_real_eip !26
  %110 = lshr i64 %105, 63, !mcsema_real_eip !26
  %111 = trunc i64 %110 to i1, !mcsema_real_eip !26
  store i1 %111, i1* %SF, !mcsema_real_eip !26
  %112 = icmp eq i64 %105, 0, !mcsema_real_eip !26
  store i1 %112, i1* %ZF, !mcsema_real_eip !26
  %113 = xor i64 %RAX_val.34, 1, !mcsema_real_eip !26
  %114 = xor i64 %113, -1, !mcsema_real_eip !26
  %115 = xor i64 %RAX_val.34, %105, !mcsema_real_eip !26
  %116 = and i64 %114, %115, !mcsema_real_eip !26
  %117 = lshr i64 %116, 63, !mcsema_real_eip !26
  %118 = and i64 %117, 1, !mcsema_real_eip !26
  %119 = trunc i64 %118 to i1, !mcsema_real_eip !26
  store i1 %119, i1* %OF, !mcsema_real_eip !26
  %120 = trunc i64 %105 to i8, !mcsema_real_eip !26
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !26
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !26
  %123 = xor i1 %122, true, !mcsema_real_eip !26
  store i1 %123, i1* %PF, !mcsema_real_eip !26
  %124 = icmp ult i64 %105, %RAX_val.34, !mcsema_real_eip !26
  store i1 %124, i1* %CF, !mcsema_real_eip !26
  store i64 %105, i64* %XAX, !mcsema_real_eip !26
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !27
  %125 = add i64 %RBP_val.35, -24, !mcsema_real_eip !27
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !27
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !27
  store i64 %RAX_val.36, i64* %126, !mcsema_real_eip !27
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !28
  %127 = add i64 %RBP_val.37, -32, !mcsema_real_eip !28
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !28
  %129 = load i64, i64* %128, !mcsema_real_eip !28
  store i64 %129, i64* %XAX, !mcsema_real_eip !28
  %RAX_val.38 = load i64, i64* %XAX, !mcsema_real_eip !29
  %130 = add i64 1, %RAX_val.38, !mcsema_real_eip !29
  %131 = xor i64 %130, %RAX_val.38, !mcsema_real_eip !29
  %132 = xor i64 %131, 1, !mcsema_real_eip !29
  %133 = and i64 %132, 16, !mcsema_real_eip !29
  %134 = icmp ne i64 %133, 0, !mcsema_real_eip !29
  store i1 %134, i1* %AF, !mcsema_real_eip !29
  %135 = lshr i64 %130, 63, !mcsema_real_eip !29
  %136 = trunc i64 %135 to i1, !mcsema_real_eip !29
  store i1 %136, i1* %SF, !mcsema_real_eip !29
  %137 = icmp eq i64 %130, 0, !mcsema_real_eip !29
  store i1 %137, i1* %ZF, !mcsema_real_eip !29
  %138 = xor i64 %RAX_val.38, 1, !mcsema_real_eip !29
  %139 = xor i64 %138, -1, !mcsema_real_eip !29
  %140 = xor i64 %RAX_val.38, %130, !mcsema_real_eip !29
  %141 = and i64 %139, %140, !mcsema_real_eip !29
  %142 = lshr i64 %141, 63, !mcsema_real_eip !29
  %143 = and i64 %142, 1, !mcsema_real_eip !29
  %144 = trunc i64 %143 to i1, !mcsema_real_eip !29
  store i1 %144, i1* %OF, !mcsema_real_eip !29
  %145 = trunc i64 %130 to i8, !mcsema_real_eip !29
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !29
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !29
  %148 = xor i1 %147, true, !mcsema_real_eip !29
  store i1 %148, i1* %PF, !mcsema_real_eip !29
  %149 = icmp ult i64 %130, %RAX_val.38, !mcsema_real_eip !29
  store i1 %149, i1* %CF, !mcsema_real_eip !29
  store i64 %130, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !30
  %150 = add i64 %RBP_val.39, -32, !mcsema_real_eip !30
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !30
  %RAX_val.40 = load i64, i64* %XAX, !mcsema_real_eip !30
  store i64 %RAX_val.40, i64* %151, !mcsema_real_eip !30
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !31
  %152 = add i64 %RBP_val.41, -24, !mcsema_real_eip !31
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !31
  %154 = load i64, i64* %153, !mcsema_real_eip !31
  store i64 %154, i64* %XAX, !mcsema_real_eip !31
  %RAX_val.42 = load i64, i64* %XAX, !mcsema_real_eip !32
  %155 = add i64 %RAX_val.42, 0, !mcsema_real_eip !32
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !32
  %157 = ptrtoint i64* %156 to i64, !mcsema_real_eip !32
  %158 = inttoptr i64 %157 to i8*, !mcsema_real_eip !32
  %159 = load i8, i8* %158, !mcsema_real_eip !32
  %CL.43 = bitcast i64* %XCX to i8*, !mcsema_real_eip !32
  store i8 %159, i8* %CL.43, !mcsema_real_eip !32
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !33
  %160 = add i64 %RBP_val.44, -33, !mcsema_real_eip !33
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !33
  %CL.45 = bitcast i64* %XCX to i8*, !mcsema_real_eip !33
  %CL_val.46 = load i8, i8* %CL.45, !mcsema_real_eip !33
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !33
  %163 = inttoptr i64 %162 to i8*, !mcsema_real_eip !33
  store i8 %CL_val.46, i8* %163, !mcsema_real_eip !33
  br label %block_0x25, !mcsema_real_eip !34

block_0x7a:                                       ; preds = %block_0x25
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !35
  %164 = inttoptr i64 %RSP_val.47 to i64*, !mcsema_real_eip !35
  %165 = load i64, i64* %164, !mcsema_real_eip !35
  store i64 %165, i64* %XBP, !mcsema_real_eip !35
  %166 = add i64 %RSP_val.47, 8, !mcsema_real_eip !35
  store i64 %166, i64* %XSP, !mcsema_real_eip !35
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !36
  %167 = add i64 %RSP_val.48, 8, !mcsema_real_eip !36
  %168 = inttoptr i64 %RSP_val.48 to i64*, !mcsema_real_eip !36
  %169 = load i64, i64* %168, !mcsema_real_eip !36
  store i64 %169, i64* %XIP, !mcsema_real_eip !36
  store i64 %167, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @demo3() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 28}
!11 = !{i64 32}
!12 = !{i64 34}
!13 = !{i64 37}
!14 = !{i64 41}
!15 = !{i64 44}
!16 = !{i64 50}
!17 = !{i64 54}
!18 = !{i64 57}
!19 = !{i64 63}
!20 = !{i64 67}
!21 = !{i64 70}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 82}
!25 = !{i64 84}
!26 = !{i64 88}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 104}
!31 = !{i64 108}
!32 = !{i64 112}
!33 = !{i64 114}
!34 = !{i64 117}
!35 = !{i64 122}
!36 = !{i64 123}
