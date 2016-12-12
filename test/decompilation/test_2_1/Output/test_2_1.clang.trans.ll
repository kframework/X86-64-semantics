; ModuleID = 'Output/test_2_1.clang.trans.bc'
source_filename = "Output/test_2_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_40;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_40(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [80 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb8 = internal constant %0 <{ [80 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00\00\00\00\004\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00\00\00\00\00r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
define x86_64_sysvcc void @sub_40(%RegState*) #1 {
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
  br label %block_0x40, !mcsema_real_eip !2

block_0x40:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !5
  %5 = sub i64 %RSP_val.5, 40, !mcsema_real_eip !5
  %6 = xor i64 %5, %RSP_val.5, !mcsema_real_eip !5
  %7 = xor i64 %6, 40, !mcsema_real_eip !5
  %8 = and i64 %7, 16, !mcsema_real_eip !5
  %9 = icmp ne i64 %8, 0, !mcsema_real_eip !5
  store i1 %9, i1* %AF, !mcsema_real_eip !5
  %10 = trunc i64 %5 to i8, !mcsema_real_eip !5
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !5
  %12 = trunc i8 %11 to i1, !mcsema_real_eip !5
  %13 = xor i1 %12, true, !mcsema_real_eip !5
  store i1 %13, i1* %PF, !mcsema_real_eip !5
  %14 = icmp eq i64 %5, 0, !mcsema_real_eip !5
  store i1 %14, i1* %ZF, !mcsema_real_eip !5
  %15 = lshr i64 %5, 63, !mcsema_real_eip !5
  %16 = trunc i64 %15 to i1, !mcsema_real_eip !5
  store i1 %16, i1* %SF, !mcsema_real_eip !5
  %17 = icmp ult i64 %RSP_val.5, 40, !mcsema_real_eip !5
  store i1 %17, i1* %CF, !mcsema_real_eip !5
  %18 = xor i64 %RSP_val.5, 40, !mcsema_real_eip !5
  %19 = xor i64 %RSP_val.5, %5, !mcsema_real_eip !5
  %20 = and i64 %18, %19, !mcsema_real_eip !5
  %21 = lshr i64 %20, 63, !mcsema_real_eip !5
  %22 = trunc i64 %21 to i1, !mcsema_real_eip !5
  store i1 %22, i1* %OF, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  store i64 100, i64* %XAX, !mcsema_real_eip !6
  store i64 200, i64* %XCX, !mcsema_real_eip !7
  store i64 300, i64* %XDX, !mcsema_real_eip !8
  store i64 400, i64* %R8, !mcsema_real_eip !9
  store i64 500, i64* %R9, !mcsema_real_eip !10
  store i64 600, i64* %R10, !mcsema_real_eip !11
  store i64 10, i64* %R11, !mcsema_real_eip !12
  store i64 20, i64* %XBX, !mcsema_real_eip !13
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !14
  %23 = add i64 %RBP_val.6, -12, !mcsema_real_eip !14
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !14
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !14
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %26, !mcsema_real_eip !14
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !15
  %27 = add i64 %RBP_val.7, -16, !mcsema_real_eip !15
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !15
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !15
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !15
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.9, i32* %30, !mcsema_real_eip !15
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !16
  %31 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !16
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !16
  store i64 %RSI_val.11, i64* %32, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %33 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !17
  store i64 %33, i64* %XDI, !mcsema_real_eip !17
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !18
  %34 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !18
  store i64 %34, i64* %XSI, !mcsema_real_eip !18
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !19
  %R8D_val.17 = load i32, i32* %R8D.16, !mcsema_real_eip !19
  %35 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !19
  store i64 %35, i64* %XCX, !mcsema_real_eip !19
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !20
  %R9D_val.19 = load i32, i32* %R9D.18, !mcsema_real_eip !20
  %36 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !20
  store i64 %36, i64* %R8, !mcsema_real_eip !20
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !21
  %R10D_val.21 = load i32, i32* %R10D.20, !mcsema_real_eip !21
  %37 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !21
  store i64 %37, i64* %R9, !mcsema_real_eip !21
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !22
  %38 = add i64 %RSP_val.22, 0, !mcsema_real_eip !22
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !22
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !22
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !22
  store i32 10, i32* %41, !mcsema_real_eip !22
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !23
  %42 = add i64 %RSP_val.23, 8, !mcsema_real_eip !23
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !23
  %44 = ptrtoint i64* %43 to i64, !mcsema_real_eip !23
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !23
  store i32 20, i32* %45, !mcsema_real_eip !23
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !24
  %46 = add i64 %RBP_val.24, -28, !mcsema_real_eip !24
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !24
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !24
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !24
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.26, i32* %49, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !25
  %50 = add i64 %RBP_val.27, -32, !mcsema_real_eip !25
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !25
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !25
  %R11D_val.29 = load i32, i32* %R11D.28, !mcsema_real_eip !25
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !25
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !25
  store i32 %R11D_val.29, i32* %53, !mcsema_real_eip !25
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %54 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %55, !mcsema_real_eip !26
  store i64 %54, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @foo(%RegState* %0), !mcsema_real_eip !26
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %56 = add i64 40, %RSP_val.31, !mcsema_real_eip !27
  %57 = xor i64 %56, %RSP_val.31, !mcsema_real_eip !27
  %58 = xor i64 %57, 40, !mcsema_real_eip !27
  %59 = and i64 %58, 16, !mcsema_real_eip !27
  %60 = icmp ne i64 %59, 0, !mcsema_real_eip !27
  store i1 %60, i1* %AF, !mcsema_real_eip !27
  %61 = lshr i64 %56, 63, !mcsema_real_eip !27
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !27
  store i1 %62, i1* %SF, !mcsema_real_eip !27
  %63 = icmp eq i64 %56, 0, !mcsema_real_eip !27
  store i1 %63, i1* %ZF, !mcsema_real_eip !27
  %64 = xor i64 %RSP_val.31, 40, !mcsema_real_eip !27
  %65 = xor i64 %64, -1, !mcsema_real_eip !27
  %66 = xor i64 %RSP_val.31, %56, !mcsema_real_eip !27
  %67 = and i64 %65, %66, !mcsema_real_eip !27
  %68 = lshr i64 %67, 63, !mcsema_real_eip !27
  %69 = and i64 %68, 1, !mcsema_real_eip !27
  %70 = trunc i64 %69 to i1, !mcsema_real_eip !27
  store i1 %70, i1* %OF, !mcsema_real_eip !27
  %71 = trunc i64 %56 to i8, !mcsema_real_eip !27
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !27
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !27
  %74 = xor i1 %73, true, !mcsema_real_eip !27
  store i1 %74, i1* %PF, !mcsema_real_eip !27
  %75 = icmp ult i64 %56, %RSP_val.31, !mcsema_real_eip !27
  store i1 %75, i1* %CF, !mcsema_real_eip !27
  store i64 %56, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !28
  %76 = inttoptr i64 %RSP_val.32 to i64*, !mcsema_real_eip !28
  %77 = load i64, i64* %76, !mcsema_real_eip !28
  store i64 %77, i64* %XBX, !mcsema_real_eip !28
  %78 = add i64 %RSP_val.32, 8, !mcsema_real_eip !28
  store i64 %78, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !29
  %79 = inttoptr i64 %RSP_val.33 to i64*, !mcsema_real_eip !29
  %80 = load i64, i64* %79, !mcsema_real_eip !29
  store i64 %80, i64* %XBP, !mcsema_real_eip !29
  %81 = add i64 %RSP_val.33, 8, !mcsema_real_eip !29
  store i64 %81, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !30
  %82 = add i64 %RSP_val.34, 8, !mcsema_real_eip !30
  %83 = inttoptr i64 %RSP_val.34 to i64*, !mcsema_real_eip !30
  %84 = load i64, i64* %83, !mcsema_real_eip !30
  store i64 %84, i64* %XIP, !mcsema_real_eip !30
  store i64 %82, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @foo(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !31
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !31
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !31
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !31
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !31
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !31
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !31
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !31
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !31
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !31
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !31
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !31
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !31
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !31
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !31
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !31
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !31
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !31
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !31
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !31
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !31
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !31
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !31
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !31
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !31
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !31
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !31
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !31
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !31
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !31
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !31
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !31
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !31
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !31
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !31
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !31
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !31
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !31
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !31
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !31
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !31
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !31
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !31
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !31
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !31
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !31
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !31
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !31
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !31
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !31
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !31
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !31
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !31
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !31
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !31
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !31
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !31
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !31
  br label %block_0x0, !mcsema_real_eip !31

block_0x0:                                        ; preds = %entry
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %1 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !31
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !31
  store i64 %RBP_val.35, i64* %2, !mcsema_real_eip !31
  store i64 %1, i64* %XSP, !mcsema_real_eip !31
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !32
  store i64 %RSP_val.37, i64* %XBP, !mcsema_real_eip !32
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !33
  %3 = add i64 %RBP_val.38, 24, !mcsema_real_eip !33
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !33
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !33
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !33
  %7 = load i32, i32* %6, !mcsema_real_eip !33
  %8 = zext i32 %7 to i64, !mcsema_real_eip !33
  store i64 %8, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !34
  %9 = add i64 %RBP_val.39, 16, !mcsema_real_eip !34
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !34
  %11 = ptrtoint i64* %10 to i64, !mcsema_real_eip !34
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !34
  %13 = load i32, i32* %12, !mcsema_real_eip !34
  %14 = zext i32 %13 to i64, !mcsema_real_eip !34
  store i64 %14, i64* %R10, !mcsema_real_eip !34
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !35
  %15 = add i64 %RBP_val.40, -4, !mcsema_real_eip !35
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !35
  %EDI.41 = bitcast i64* %XDI to i32*, !mcsema_real_eip !35
  %EDI_val.42 = load i32, i32* %EDI.41, !mcsema_real_eip !35
  %17 = ptrtoint i64* %16 to i64, !mcsema_real_eip !35
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !35
  store i32 %EDI_val.42, i32* %18, !mcsema_real_eip !35
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !36
  %19 = add i64 %RBP_val.43, -8, !mcsema_real_eip !36
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !36
  %ESI.44 = bitcast i64* %XSI to i32*, !mcsema_real_eip !36
  %ESI_val.45 = load i32, i32* %ESI.44, !mcsema_real_eip !36
  %21 = ptrtoint i64* %20 to i64, !mcsema_real_eip !36
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !36
  store i32 %ESI_val.45, i32* %22, !mcsema_real_eip !36
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !37
  %23 = add i64 %RBP_val.46, -12, !mcsema_real_eip !37
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !37
  %EDX.47 = bitcast i64* %XDX to i32*, !mcsema_real_eip !37
  %EDX_val.48 = load i32, i32* %EDX.47, !mcsema_real_eip !37
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !37
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !37
  store i32 %EDX_val.48, i32* %26, !mcsema_real_eip !37
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !38
  %27 = add i64 %RBP_val.49, -16, !mcsema_real_eip !38
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !38
  %ECX.50 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.51 = load i32, i32* %ECX.50, !mcsema_real_eip !38
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !38
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !38
  store i32 %ECX_val.51, i32* %30, !mcsema_real_eip !38
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !39
  %31 = add i64 %RBP_val.52, -20, !mcsema_real_eip !39
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !39
  %R8D.53 = bitcast i64* %R8 to i32*, !mcsema_real_eip !39
  %R8D_val.54 = load i32, i32* %R8D.53, !mcsema_real_eip !39
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !39
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !39
  store i32 %R8D_val.54, i32* %34, !mcsema_real_eip !39
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !40
  %35 = add i64 %RBP_val.55, -24, !mcsema_real_eip !40
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !40
  %R9D.56 = bitcast i64* %R9 to i32*, !mcsema_real_eip !40
  %R9D_val.57 = load i32, i32* %R9D.56, !mcsema_real_eip !40
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !40
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !40
  store i32 %R9D_val.57, i32* %38, !mcsema_real_eip !40
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !41
  %39 = add i64 %RBP_val.58, -28, !mcsema_real_eip !41
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !41
  %R10D.59 = bitcast i64* %R10 to i32*, !mcsema_real_eip !41
  %R10D_val.60 = load i32, i32* %R10D.59, !mcsema_real_eip !41
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !41
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !41
  store i32 %R10D_val.60, i32* %42, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %43 = add i64 %RBP_val.61, -32, !mcsema_real_eip !42
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !42
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !42
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !42
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.63, i32* %46, !mcsema_real_eip !42
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !43
  %47 = add i64 %RBP_val.64, -28, !mcsema_real_eip !43
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !43
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !43
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !43
  %51 = load i32, i32* %50, !mcsema_real_eip !43
  %52 = zext i32 %51 to i64, !mcsema_real_eip !43
  store i64 %52, i64* %XAX, !mcsema_real_eip !43
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !44
  %53 = add i64 %RBP_val.65, -32, !mcsema_real_eip !44
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !44
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !44
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !44
  %57 = load i32, i32* %56, !mcsema_real_eip !44
  %EAX.66 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.67 = load i32, i32* %EAX.66, !mcsema_real_eip !44
  %58 = add i32 %EAX_val.67, %57, !mcsema_real_eip !44
  %59 = xor i32 %58, %57, !mcsema_real_eip !44
  %60 = xor i32 %59, %EAX_val.67, !mcsema_real_eip !44
  %61 = and i32 %60, 16, !mcsema_real_eip !44
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !44
  store i1 %62, i1* %AF, !mcsema_real_eip !44
  %63 = lshr i32 %58, 31, !mcsema_real_eip !44
  %64 = trunc i32 %63 to i1, !mcsema_real_eip !44
  store i1 %64, i1* %SF, !mcsema_real_eip !44
  %65 = icmp eq i32 %58, 0, !mcsema_real_eip !44
  store i1 %65, i1* %ZF, !mcsema_real_eip !44
  %66 = xor i32 %57, %EAX_val.67, !mcsema_real_eip !44
  %67 = xor i32 %66, -1, !mcsema_real_eip !44
  %68 = xor i32 %57, %58, !mcsema_real_eip !44
  %69 = and i32 %67, %68, !mcsema_real_eip !44
  %70 = lshr i32 %69, 31, !mcsema_real_eip !44
  %71 = and i32 %70, 1, !mcsema_real_eip !44
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !44
  store i1 %72, i1* %OF, !mcsema_real_eip !44
  %73 = trunc i32 %58 to i8, !mcsema_real_eip !44
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !44
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !44
  %76 = xor i1 %75, true, !mcsema_real_eip !44
  store i1 %76, i1* %PF, !mcsema_real_eip !44
  %77 = icmp ult i32 %58, %57, !mcsema_real_eip !44
  store i1 %77, i1* %CF, !mcsema_real_eip !44
  %78 = zext i32 %58 to i64, !mcsema_real_eip !44
  store i64 %78, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !45
  %79 = add i64 %RBP_val.68, -36, !mcsema_real_eip !45
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !45
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !45
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !45
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.70, i32* %82, !mcsema_real_eip !45
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !46
  %83 = add i64 %RBP_val.71, -36, !mcsema_real_eip !46
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !46
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !46
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !46
  %87 = load i32, i32* %86, !mcsema_real_eip !46
  %88 = zext i32 %87 to i64, !mcsema_real_eip !46
  store i64 %88, i64* %XAX, !mcsema_real_eip !46
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !47
  %89 = inttoptr i64 %RSP_val.72 to i64*, !mcsema_real_eip !47
  %90 = load i64, i64* %89, !mcsema_real_eip !47
  store i64 %90, i64* %XBP, !mcsema_real_eip !47
  %91 = add i64 %RSP_val.72, 8, !mcsema_real_eip !47
  store i64 %91, i64* %XSP, !mcsema_real_eip !47
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !48
  %92 = add i64 %RSP_val.73, 8, !mcsema_real_eip !48
  %93 = inttoptr i64 %RSP_val.73 to i64*, !mcsema_real_eip !48
  %94 = load i64, i64* %93, !mcsema_real_eip !48
  store i64 %94, i64* %XIP, !mcsema_real_eip !48
  store i64 %92, i64* %XSP, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @main() #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64}
!3 = !{i64 65}
!4 = !{i64 68}
!5 = !{i64 69}
!6 = !{i64 73}
!7 = !{i64 78}
!8 = !{i64 83}
!9 = !{i64 88}
!10 = !{i64 94}
!11 = !{i64 100}
!12 = !{i64 106}
!13 = !{i64 112}
!14 = !{i64 117}
!15 = !{i64 124}
!16 = !{i64 127}
!17 = !{i64 131}
!18 = !{i64 133}
!19 = !{i64 135}
!20 = !{i64 138}
!21 = !{i64 141}
!22 = !{i64 144}
!23 = !{i64 151}
!24 = !{i64 159}
!25 = !{i64 162}
!26 = !{i64 166}
!27 = !{i64 171}
!28 = !{i64 175}
!29 = !{i64 176}
!30 = !{i64 177}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 7}
!35 = !{i64 11}
!36 = !{i64 14}
!37 = !{i64 17}
!38 = !{i64 20}
!39 = !{i64 23}
!40 = !{i64 27}
!41 = !{i64 31}
!42 = !{i64 35}
!43 = !{i64 38}
!44 = !{i64 41}
!45 = !{i64 44}
!46 = !{i64 47}
!47 = !{i64 50}
!48 = !{i64 51}
