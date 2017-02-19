; ModuleID = 'Output/test_25.clang.bc'
source_filename = "Output/test_25.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl callback_sub_0;"
module asm "  .type callback_sub_0,@function"
module asm "callback_sub_0:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size callback_sub_0,0b-callback_sub_0;"
module asm "  .cfi_endproc;"
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
module asm "  .cfi_endproc;"
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [14 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xa4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\A4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sext i8 48 to i64, !mcsema_real_eip !4
  %4 = sub i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %5 = xor i64 %4, %RSP_val.3, !mcsema_real_eip !4
  %6 = xor i64 %5, %3, !mcsema_real_eip !4
  %7 = and i64 %6, 16, !mcsema_real_eip !4
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !4
  store i1 %8, i1* %AF, !mcsema_real_eip !4
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !4
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !4
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !4
  %12 = xor i1 %11, true, !mcsema_real_eip !4
  store i1 %12, i1* %PF, !mcsema_real_eip !4
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !4
  store i1 %13, i1* %ZF, !mcsema_real_eip !4
  %14 = lshr i64 %4, 63, !mcsema_real_eip !4
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !4
  store i1 %15, i1* %SF, !mcsema_real_eip !4
  %16 = icmp ult i64 %RSP_val.3, %3, !mcsema_real_eip !4
  store i1 %16, i1* %CF, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = xor i64 %RSP_val.3, %4, !mcsema_real_eip !4
  %19 = and i64 %17, %18, !mcsema_real_eip !4
  %20 = lshr i64 %19, 63, !mcsema_real_eip !4
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !4
  store i1 %21, i1* %OF, !mcsema_real_eip !4
  store i64 %4, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %22 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %25, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %26 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %29, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %30 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %31, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %32 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !8
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !8
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %35, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %36 = add i64 %RBP_val.11, -16, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !9
  %38 = load i64, i64* %37, !mcsema_real_eip !9
  store i64 %38, i64* %XSI, !mcsema_real_eip !9
  %RSI_val.12 = load i64, i64* %XSI, !mcsema_real_eip !10
  %39 = add i64 %RSI_val.12, 8, !mcsema_real_eip !10
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !10
  %41 = load i64, i64* %40, !mcsema_real_eip !10
  store i64 %41, i64* %XDI, !mcsema_real_eip !10
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %42 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %43, !mcsema_real_eip !11
  store i64 %42, i64* %XSP, !mcsema_real_eip !11
  %44 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.13), !mcsema_real_eip !11
  store i64 %44, i64* %XAX, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !12
  %45 = zext i32 %EAX_val.16 to i64, !mcsema_real_eip !12
  store i64 %45, i64* %XCX, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %46 = add i64 %RBP_val.17, -24, !mcsema_real_eip !13
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !13
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !13
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !13
  store i32 %ECX_val.19, i32* %49, !mcsema_real_eip !13
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !14
  %50 = add i64 %RBP_val.20, -28, !mcsema_real_eip !14
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !14
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !14
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %53, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %block_0x0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %54 = add i64 %RBP_val.21, -28, !mcsema_real_eip !15
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !15
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !15
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !15
  %58 = load i32, i32* %57, !mcsema_real_eip !15
  %59 = zext i32 %58 to i64, !mcsema_real_eip !15
  store i64 %59, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !16
  %60 = add i64 %RBP_val.22, -24, !mcsema_real_eip !16
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !16
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !16
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !16
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !16
  %64 = load i32, i32* %63, !mcsema_real_eip !16
  %65 = sub i32 %EAX_val.24, %64, !mcsema_real_eip !16
  %66 = xor i32 %65, %EAX_val.24, !mcsema_real_eip !16
  %67 = xor i32 %66, %64, !mcsema_real_eip !16
  %68 = and i32 %67, 16, !mcsema_real_eip !16
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !16
  store i1 %69, i1* %AF, !mcsema_real_eip !16
  %70 = trunc i32 %65 to i8, !mcsema_real_eip !16
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !16
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !16
  %73 = xor i1 %72, true, !mcsema_real_eip !16
  store i1 %73, i1* %PF, !mcsema_real_eip !16
  %74 = icmp eq i32 %65, 0, !mcsema_real_eip !16
  store i1 %74, i1* %ZF, !mcsema_real_eip !16
  %75 = lshr i32 %65, 31, !mcsema_real_eip !16
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !16
  store i1 %76, i1* %SF, !mcsema_real_eip !16
  %77 = icmp ult i32 %EAX_val.24, %64, !mcsema_real_eip !16
  store i1 %77, i1* %CF, !mcsema_real_eip !16
  %78 = xor i32 %EAX_val.24, %64, !mcsema_real_eip !16
  %79 = xor i32 %EAX_val.24, %65, !mcsema_real_eip !16
  %80 = and i32 %78, %79, !mcsema_real_eip !16
  %81 = lshr i32 %80, 31, !mcsema_real_eip !16
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !16
  store i1 %82, i1* %OF, !mcsema_real_eip !16
  %83 = load i1, i1* %OF, !mcsema_real_eip !17
  %84 = load i1, i1* %SF, !mcsema_real_eip !17
  %85 = icmp eq i1 %84, %83, !mcsema_real_eip !17
  br i1 %85, label %block_0x82, label %block_0x42, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  %86 = getelementptr %0, %0* @data_0xa4, i64 0, i32 0, !mcsema_real_eip !18
  %87 = ptrtoint [14 x i8]* %86 to i64, !mcsema_real_eip !18
  %88 = add i64 %87, 0, !mcsema_real_eip !18
  store i64 %88, i64* %XDI, !mcsema_real_eip !18
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !19
  %89 = add i64 %RBP_val.25, -16, !mcsema_real_eip !19
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !19
  %91 = load i64, i64* %90, !mcsema_real_eip !19
  store i64 %91, i64* %XAX, !mcsema_real_eip !19
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !20
  %92 = add i64 %RAX_val.26, 8, !mcsema_real_eip !20
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !20
  %94 = load i64, i64* %93, !mcsema_real_eip !20
  store i64 %94, i64* %XSI, !mcsema_real_eip !20
  %AL.27 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.27, !mcsema_real_eip !21
  %RDI_val.28 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.29 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !22
  %95 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !22
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %96, !mcsema_real_eip !22
  store i64 %95, i64* %XSP, !mcsema_real_eip !22
  %97 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.28, i64 %RSI_val.29), !mcsema_real_eip !22
  store i64 %97, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !23
  %98 = add i64 %RBP_val.31, -16, !mcsema_real_eip !23
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !23
  %100 = load i64, i64* %99, !mcsema_real_eip !23
  store i64 %100, i64* %XSI, !mcsema_real_eip !23
  %RSI_val.32 = load i64, i64* %XSI, !mcsema_real_eip !24
  %101 = add i64 %RSI_val.32, 8, !mcsema_real_eip !24
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !24
  %103 = load i64, i64* %102, !mcsema_real_eip !24
  store i64 %103, i64* %XSI, !mcsema_real_eip !24
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %104 = add i64 %RBP_val.33, -28, !mcsema_real_eip !25
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !25
  %106 = ptrtoint i64* %105 to i64, !mcsema_real_eip !25
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !25
  %108 = load i32, i32* %107, !mcsema_real_eip !25
  %109 = sext i32 %108 to i64, !mcsema_real_eip !25
  store i64 %109, i64* %XDI, !mcsema_real_eip !25
  %RSI_val.34 = load i64, i64* %XSI, !mcsema_real_eip !26
  %110 = add i64 %RSI_val.34, 0, !mcsema_real_eip !26
  %RDI_val.35 = load i64, i64* %XDI, !mcsema_real_eip !26
  %111 = add i64 %110, %RDI_val.35, !mcsema_real_eip !26
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !26
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !26
  %114 = inttoptr i64 %113 to i8*, !mcsema_real_eip !26
  %115 = load i8, i8* %114, !mcsema_real_eip !26
  %116 = sext i8 %115 to i32, !mcsema_real_eip !26
  %117 = zext i32 %116 to i64, !mcsema_real_eip !26
  store i64 %117, i64* %XCX, !mcsema_real_eip !26
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !27
  %118 = add i64 %RBP_val.36, -20, !mcsema_real_eip !27
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !27
  %120 = ptrtoint i64* %119 to i64, !mcsema_real_eip !27
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !27
  %122 = load i32, i32* %121, !mcsema_real_eip !27
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !27
  %ECX_val.38 = load i32, i32* %ECX.37, !mcsema_real_eip !27
  %123 = add i32 %ECX_val.38, %122, !mcsema_real_eip !27
  %124 = xor i32 %123, %122, !mcsema_real_eip !27
  %125 = xor i32 %124, %ECX_val.38, !mcsema_real_eip !27
  %126 = and i32 %125, 16, !mcsema_real_eip !27
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !27
  store i1 %127, i1* %AF, !mcsema_real_eip !27
  %128 = lshr i32 %123, 31, !mcsema_real_eip !27
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !27
  store i1 %129, i1* %SF, !mcsema_real_eip !27
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !27
  store i1 %130, i1* %ZF, !mcsema_real_eip !27
  %131 = xor i32 %122, %ECX_val.38, !mcsema_real_eip !27
  %132 = xor i32 %131, -1, !mcsema_real_eip !27
  %133 = xor i32 %122, %123, !mcsema_real_eip !27
  %134 = and i32 %132, %133, !mcsema_real_eip !27
  %135 = lshr i32 %134, 31, !mcsema_real_eip !27
  %136 = and i32 %135, 1, !mcsema_real_eip !27
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !27
  store i1 %137, i1* %OF, !mcsema_real_eip !27
  %138 = trunc i32 %123 to i8, !mcsema_real_eip !27
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !27
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !27
  %141 = xor i1 %140, true, !mcsema_real_eip !27
  store i1 %141, i1* %PF, !mcsema_real_eip !27
  %142 = icmp ult i32 %123, %122, !mcsema_real_eip !27
  store i1 %142, i1* %CF, !mcsema_real_eip !27
  %143 = zext i32 %123 to i64, !mcsema_real_eip !27
  store i64 %143, i64* %XCX, !mcsema_real_eip !27
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !28
  %144 = add i64 %RBP_val.39, -20, !mcsema_real_eip !28
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !28
  %ECX.40 = bitcast i64* %XCX to i32*, !mcsema_real_eip !28
  %ECX_val.41 = load i32, i32* %ECX.40, !mcsema_real_eip !28
  %146 = ptrtoint i64* %145 to i64, !mcsema_real_eip !28
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !28
  store i32 %ECX_val.41, i32* %147, !mcsema_real_eip !28
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !29
  %148 = add i64 %RBP_val.42, -32, !mcsema_real_eip !29
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !29
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !29
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !29
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !29
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.44, i32* %151, !mcsema_real_eip !29
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !30
  %152 = add i64 %RBP_val.45, -28, !mcsema_real_eip !30
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !30
  %154 = ptrtoint i64* %153 to i64, !mcsema_real_eip !30
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !30
  %156 = load i32, i32* %155, !mcsema_real_eip !30
  %157 = zext i32 %156 to i64, !mcsema_real_eip !30
  store i64 %157, i64* %XAX, !mcsema_real_eip !30
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !31
  %158 = add i32 1, %EAX_val.47, !mcsema_real_eip !31
  %159 = xor i32 %158, %EAX_val.47, !mcsema_real_eip !31
  %160 = xor i32 %159, 1, !mcsema_real_eip !31
  %161 = and i32 %160, 16, !mcsema_real_eip !31
  %162 = icmp ne i32 %161, 0, !mcsema_real_eip !31
  store i1 %162, i1* %AF, !mcsema_real_eip !31
  %163 = lshr i32 %158, 31, !mcsema_real_eip !31
  %164 = trunc i32 %163 to i1, !mcsema_real_eip !31
  store i1 %164, i1* %SF, !mcsema_real_eip !31
  %165 = icmp eq i32 %158, 0, !mcsema_real_eip !31
  store i1 %165, i1* %ZF, !mcsema_real_eip !31
  %166 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !31
  %167 = xor i32 %166, -1, !mcsema_real_eip !31
  %168 = xor i32 %EAX_val.47, %158, !mcsema_real_eip !31
  %169 = and i32 %167, %168, !mcsema_real_eip !31
  %170 = lshr i32 %169, 31, !mcsema_real_eip !31
  %171 = and i32 %170, 1, !mcsema_real_eip !31
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !31
  store i1 %172, i1* %OF, !mcsema_real_eip !31
  %173 = trunc i32 %158 to i8, !mcsema_real_eip !31
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !31
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !31
  %176 = xor i1 %175, true, !mcsema_real_eip !31
  store i1 %176, i1* %PF, !mcsema_real_eip !31
  %177 = icmp ult i32 %158, %EAX_val.47, !mcsema_real_eip !31
  store i1 %177, i1* %CF, !mcsema_real_eip !31
  %178 = zext i32 %158 to i64, !mcsema_real_eip !31
  store i64 %178, i64* %XAX, !mcsema_real_eip !31
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !32
  %179 = add i64 %RBP_val.48, -28, !mcsema_real_eip !32
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !32
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !32
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !32
  %181 = ptrtoint i64* %180 to i64, !mcsema_real_eip !32
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !32
  store i32 %EAX_val.50, i32* %182, !mcsema_real_eip !32
  br label %block_0x36, !mcsema_real_eip !33

block_0x82:                                       ; preds = %block_0x36
  %183 = getelementptr %0, %0* @data_0xa4, i64 0, i32 0, !mcsema_real_eip !34
  %184 = ptrtoint [14 x i8]* %183 to i64, !mcsema_real_eip !34
  %185 = add i64 %184, 10, !mcsema_real_eip !34
  store i64 %185, i64* %XDI, !mcsema_real_eip !34
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !35
  %186 = add i64 %RBP_val.51, -24, !mcsema_real_eip !35
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !35
  %188 = ptrtoint i64* %187 to i64, !mcsema_real_eip !35
  %189 = inttoptr i64 %188 to i32*, !mcsema_real_eip !35
  %190 = load i32, i32* %189, !mcsema_real_eip !35
  %191 = zext i32 %190 to i64, !mcsema_real_eip !35
  store i64 %191, i64* %XSI, !mcsema_real_eip !35
  %AL.52 = bitcast i64* %XAX to i8*, !mcsema_real_eip !36
  store i8 0, i8* %AL.52, !mcsema_real_eip !36
  %RDI_val.53 = load i64, i64* %XDI, !mcsema_real_eip !37
  %RSI_val.54 = load i64, i64* %XSI, !mcsema_real_eip !37
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !37
  %192 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !37
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %193, !mcsema_real_eip !37
  store i64 %192, i64* %XSP, !mcsema_real_eip !37
  %194 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.53, i64 %RSI_val.54), !mcsema_real_eip !37
  store i64 %194, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !38
  %195 = add i64 %RBP_val.56, -24, !mcsema_real_eip !38
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !38
  %197 = ptrtoint i64* %196 to i64, !mcsema_real_eip !38
  %198 = inttoptr i64 %197 to i32*, !mcsema_real_eip !38
  %199 = load i32, i32* %198, !mcsema_real_eip !38
  %200 = zext i32 %199 to i64, !mcsema_real_eip !38
  store i64 %200, i64* %XSI, !mcsema_real_eip !38
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !39
  %201 = add i64 %RBP_val.57, -36, !mcsema_real_eip !39
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !39
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !39
  %203 = ptrtoint i64* %202 to i64, !mcsema_real_eip !39
  %204 = inttoptr i64 %203 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.59, i32* %204, !mcsema_real_eip !39
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !40
  %205 = zext i32 %ESI_val.61 to i64, !mcsema_real_eip !40
  store i64 %205, i64* %XAX, !mcsema_real_eip !40
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !41
  %206 = add i64 48, %RSP_val.62, !mcsema_real_eip !41
  %207 = xor i64 %206, %RSP_val.62, !mcsema_real_eip !41
  %208 = xor i64 %207, 48, !mcsema_real_eip !41
  %209 = and i64 %208, 16, !mcsema_real_eip !41
  %210 = icmp ne i64 %209, 0, !mcsema_real_eip !41
  store i1 %210, i1* %AF, !mcsema_real_eip !41
  %211 = lshr i64 %206, 63, !mcsema_real_eip !41
  %212 = trunc i64 %211 to i1, !mcsema_real_eip !41
  store i1 %212, i1* %SF, !mcsema_real_eip !41
  %213 = icmp eq i64 %206, 0, !mcsema_real_eip !41
  store i1 %213, i1* %ZF, !mcsema_real_eip !41
  %214 = xor i64 %RSP_val.62, 48, !mcsema_real_eip !41
  %215 = xor i64 %214, -1, !mcsema_real_eip !41
  %216 = xor i64 %RSP_val.62, %206, !mcsema_real_eip !41
  %217 = and i64 %215, %216, !mcsema_real_eip !41
  %218 = lshr i64 %217, 63, !mcsema_real_eip !41
  %219 = and i64 %218, 1, !mcsema_real_eip !41
  %220 = trunc i64 %219 to i1, !mcsema_real_eip !41
  store i1 %220, i1* %OF, !mcsema_real_eip !41
  %221 = trunc i64 %206 to i8, !mcsema_real_eip !41
  %222 = call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !41
  %223 = trunc i8 %222 to i1, !mcsema_real_eip !41
  %224 = xor i1 %223, true, !mcsema_real_eip !41
  store i1 %224, i1* %PF, !mcsema_real_eip !41
  %225 = icmp ult i64 %206, %RSP_val.62, !mcsema_real_eip !41
  store i1 %225, i1* %CF, !mcsema_real_eip !41
  store i64 %206, i64* %XSP, !mcsema_real_eip !41
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !42
  %226 = inttoptr i64 %RSP_val.63 to i64*, !mcsema_real_eip !42
  %227 = load i64, i64* %226, !mcsema_real_eip !42
  store i64 %227, i64* %XBP, !mcsema_real_eip !42
  %228 = add i64 %RSP_val.63, 8, !mcsema_real_eip !42
  store i64 %228, i64* %XSP, !mcsema_real_eip !42
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !43
  %229 = add i64 %RSP_val.64, 8, !mcsema_real_eip !43
  %230 = inttoptr i64 %RSP_val.64 to i64*, !mcsema_real_eip !43
  %231 = load i64, i64* %230, !mcsema_real_eip !43
  store i64 %231, i64* %XIP, !mcsema_real_eip !43
  store i64 %229, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 60}
!18 = !{i64 66}
!19 = !{i64 76}
!20 = !{i64 80}
!21 = !{i64 84}
!22 = !{i64 86}
!23 = !{i64 91}
!24 = !{i64 95}
!25 = !{i64 99}
!26 = !{i64 103}
!27 = !{i64 107}
!28 = !{i64 110}
!29 = !{i64 113}
!30 = !{i64 116}
!31 = !{i64 119}
!32 = !{i64 122}
!33 = !{i64 125}
!34 = !{i64 130}
!35 = !{i64 140}
!36 = !{i64 143}
!37 = !{i64 145}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 158}
!42 = !{i64 162}
!43 = !{i64 163}
