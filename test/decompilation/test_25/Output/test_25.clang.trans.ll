; ModuleID = 'Output/test_25.clang.trans.bc'
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
  %3 = sub i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 48, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %RSP_val.3, 48, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %21 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !5
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !5
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %24, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %25 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !6
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %28, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %29 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %30, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %31 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !8
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %34, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %35 = add i64 %RBP_val.11, -16, !mcsema_real_eip !9
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !9
  %37 = load i64, i64* %36, !mcsema_real_eip !9
  store i64 %37, i64* %XSI, !mcsema_real_eip !9
  %RSI_val.12 = load i64, i64* %XSI, !mcsema_real_eip !10
  %38 = add i64 %RSI_val.12, 8, !mcsema_real_eip !10
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !10
  %40 = load i64, i64* %39, !mcsema_real_eip !10
  store i64 %40, i64* %XDI, !mcsema_real_eip !10
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %41 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %42, !mcsema_real_eip !11
  store i64 %41, i64* %XSP, !mcsema_real_eip !11
  %43 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.13), !mcsema_real_eip !11
  store i64 %43, i64* %XAX, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !12
  %44 = zext i32 %EAX_val.16 to i64, !mcsema_real_eip !12
  store i64 %44, i64* %XCX, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %45 = add i64 %RBP_val.17, -24, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !13
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !13
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !13
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !13
  store i32 %ECX_val.19, i32* %48, !mcsema_real_eip !13
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !14
  %49 = add i64 %RBP_val.20, -28, !mcsema_real_eip !14
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !14
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !14
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %52, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %block_0x0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %53 = add i64 %RBP_val.21, -28, !mcsema_real_eip !15
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !15
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !15
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !15
  %57 = load i32, i32* %56, !mcsema_real_eip !15
  %58 = zext i32 %57 to i64, !mcsema_real_eip !15
  store i64 %58, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !16
  %59 = add i64 %RBP_val.22, -24, !mcsema_real_eip !16
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !16
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !16
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !16
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !16
  %63 = load i32, i32* %62, !mcsema_real_eip !16
  %64 = sub i32 %EAX_val.24, %63, !mcsema_real_eip !16
  %65 = xor i32 %64, %EAX_val.24, !mcsema_real_eip !16
  %66 = xor i32 %65, %63, !mcsema_real_eip !16
  %67 = and i32 %66, 16, !mcsema_real_eip !16
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !16
  store i1 %68, i1* %AF, !mcsema_real_eip !16
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !16
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !16
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !16
  %72 = xor i1 %71, true, !mcsema_real_eip !16
  store i1 %72, i1* %PF, !mcsema_real_eip !16
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !16
  store i1 %73, i1* %ZF, !mcsema_real_eip !16
  %74 = lshr i32 %64, 31, !mcsema_real_eip !16
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !16
  store i1 %75, i1* %SF, !mcsema_real_eip !16
  %76 = icmp ult i32 %EAX_val.24, %63, !mcsema_real_eip !16
  store i1 %76, i1* %CF, !mcsema_real_eip !16
  %77 = xor i32 %EAX_val.24, %63, !mcsema_real_eip !16
  %78 = xor i32 %EAX_val.24, %64, !mcsema_real_eip !16
  %79 = and i32 %77, %78, !mcsema_real_eip !16
  %80 = lshr i32 %79, 31, !mcsema_real_eip !16
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !16
  store i1 %81, i1* %OF, !mcsema_real_eip !16
  %82 = load i1, i1* %OF, !mcsema_real_eip !17
  %83 = load i1, i1* %SF, !mcsema_real_eip !17
  %84 = icmp eq i1 %83, %82, !mcsema_real_eip !17
  br i1 %84, label %block_0x82, label %block_0x42, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, !mcsema_real_eip !18
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !19
  %85 = add i64 %RBP_val.39, -16, !mcsema_real_eip !19
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !19
  %87 = load i64, i64* %86, !mcsema_real_eip !19
  store i64 %87, i64* %XAX, !mcsema_real_eip !19
  %RAX_val.40 = load i64, i64* %XAX, !mcsema_real_eip !20
  %88 = add i64 %RAX_val.40, 8, !mcsema_real_eip !20
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !20
  %90 = load i64, i64* %89, !mcsema_real_eip !20
  store i64 %90, i64* %XSI, !mcsema_real_eip !20
  %AL.41 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.41, !mcsema_real_eip !21
  %RDI_val.42 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.43 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !22
  %91 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !22
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %92, !mcsema_real_eip !22
  store i64 %91, i64* %XSP, !mcsema_real_eip !22
  %93 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.42, i64 %RSI_val.43), !mcsema_real_eip !22
  store i64 %93, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !23
  %94 = add i64 %RBP_val.45, -16, !mcsema_real_eip !23
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !23
  %96 = load i64, i64* %95, !mcsema_real_eip !23
  store i64 %96, i64* %XSI, !mcsema_real_eip !23
  %RSI_val.46 = load i64, i64* %XSI, !mcsema_real_eip !24
  %97 = add i64 %RSI_val.46, 8, !mcsema_real_eip !24
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !24
  %99 = load i64, i64* %98, !mcsema_real_eip !24
  store i64 %99, i64* %XSI, !mcsema_real_eip !24
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !25
  %100 = add i64 %RBP_val.47, -28, !mcsema_real_eip !25
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !25
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !25
  %104 = load i32, i32* %103, !mcsema_real_eip !25
  %105 = sext i32 %104 to i64, !mcsema_real_eip !25
  store i64 %105, i64* %XDI, !mcsema_real_eip !25
  %RSI_val.48 = load i64, i64* %XSI, !mcsema_real_eip !26
  %106 = add i64 %RSI_val.48, 0, !mcsema_real_eip !26
  %RDI_val.49 = load i64, i64* %XDI, !mcsema_real_eip !26
  %107 = add i64 %106, %RDI_val.49, !mcsema_real_eip !26
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !26
  %109 = ptrtoint i64* %108 to i64, !mcsema_real_eip !26
  %110 = inttoptr i64 %109 to i8*, !mcsema_real_eip !26
  %111 = load i8, i8* %110, !mcsema_real_eip !26
  %112 = sext i8 %111 to i32, !mcsema_real_eip !26
  %113 = zext i32 %112 to i64, !mcsema_real_eip !26
  store i64 %113, i64* %XCX, !mcsema_real_eip !26
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !27
  %114 = add i64 %RBP_val.50, -20, !mcsema_real_eip !27
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !27
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !27
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !27
  %118 = load i32, i32* %117, !mcsema_real_eip !27
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !27
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !27
  %119 = add i32 %ECX_val.52, %118, !mcsema_real_eip !27
  %120 = xor i32 %119, %118, !mcsema_real_eip !27
  %121 = xor i32 %120, %ECX_val.52, !mcsema_real_eip !27
  %122 = and i32 %121, 16, !mcsema_real_eip !27
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !27
  store i1 %123, i1* %AF, !mcsema_real_eip !27
  %124 = lshr i32 %119, 31, !mcsema_real_eip !27
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !27
  store i1 %125, i1* %SF, !mcsema_real_eip !27
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !27
  store i1 %126, i1* %ZF, !mcsema_real_eip !27
  %127 = xor i32 %118, %ECX_val.52, !mcsema_real_eip !27
  %128 = xor i32 %127, -1, !mcsema_real_eip !27
  %129 = xor i32 %118, %119, !mcsema_real_eip !27
  %130 = and i32 %128, %129, !mcsema_real_eip !27
  %131 = lshr i32 %130, 31, !mcsema_real_eip !27
  %132 = and i32 %131, 1, !mcsema_real_eip !27
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !27
  store i1 %133, i1* %OF, !mcsema_real_eip !27
  %134 = trunc i32 %119 to i8, !mcsema_real_eip !27
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !27
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !27
  %137 = xor i1 %136, true, !mcsema_real_eip !27
  store i1 %137, i1* %PF, !mcsema_real_eip !27
  %138 = icmp ult i32 %119, %118, !mcsema_real_eip !27
  store i1 %138, i1* %CF, !mcsema_real_eip !27
  %139 = zext i32 %119 to i64, !mcsema_real_eip !27
  store i64 %139, i64* %XCX, !mcsema_real_eip !27
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !28
  %140 = add i64 %RBP_val.53, -20, !mcsema_real_eip !28
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !28
  %ECX.54 = bitcast i64* %XCX to i32*, !mcsema_real_eip !28
  %ECX_val.55 = load i32, i32* %ECX.54, !mcsema_real_eip !28
  %142 = ptrtoint i64* %141 to i64, !mcsema_real_eip !28
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !28
  store i32 %ECX_val.55, i32* %143, !mcsema_real_eip !28
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !29
  %144 = add i64 %RBP_val.56, -32, !mcsema_real_eip !29
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !29
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !29
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !29
  %146 = ptrtoint i64* %145 to i64, !mcsema_real_eip !29
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.58, i32* %147, !mcsema_real_eip !29
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !30
  %148 = add i64 %RBP_val.59, -28, !mcsema_real_eip !30
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !30
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !30
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !30
  %152 = load i32, i32* %151, !mcsema_real_eip !30
  %153 = zext i32 %152 to i64, !mcsema_real_eip !30
  store i64 %153, i64* %XAX, !mcsema_real_eip !30
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !31
  %154 = add i32 1, %EAX_val.61, !mcsema_real_eip !31
  %155 = xor i32 %154, %EAX_val.61, !mcsema_real_eip !31
  %156 = xor i32 %155, 1, !mcsema_real_eip !31
  %157 = and i32 %156, 16, !mcsema_real_eip !31
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !31
  store i1 %158, i1* %AF, !mcsema_real_eip !31
  %159 = lshr i32 %154, 31, !mcsema_real_eip !31
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !31
  store i1 %160, i1* %SF, !mcsema_real_eip !31
  %161 = icmp eq i32 %154, 0, !mcsema_real_eip !31
  store i1 %161, i1* %ZF, !mcsema_real_eip !31
  %162 = xor i32 %EAX_val.61, 1, !mcsema_real_eip !31
  %163 = xor i32 %162, -1, !mcsema_real_eip !31
  %164 = xor i32 %EAX_val.61, %154, !mcsema_real_eip !31
  %165 = and i32 %163, %164, !mcsema_real_eip !31
  %166 = lshr i32 %165, 31, !mcsema_real_eip !31
  %167 = and i32 %166, 1, !mcsema_real_eip !31
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !31
  store i1 %168, i1* %OF, !mcsema_real_eip !31
  %169 = trunc i32 %154 to i8, !mcsema_real_eip !31
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !31
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !31
  %172 = xor i1 %171, true, !mcsema_real_eip !31
  store i1 %172, i1* %PF, !mcsema_real_eip !31
  %173 = icmp ult i32 %154, %EAX_val.61, !mcsema_real_eip !31
  store i1 %173, i1* %CF, !mcsema_real_eip !31
  %174 = zext i32 %154 to i64, !mcsema_real_eip !31
  store i64 %174, i64* %XAX, !mcsema_real_eip !31
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !32
  %175 = add i64 %RBP_val.62, -28, !mcsema_real_eip !32
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !32
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !32
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !32
  %177 = ptrtoint i64* %176 to i64, !mcsema_real_eip !32
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !32
  store i32 %EAX_val.64, i32* %178, !mcsema_real_eip !32
  br label %block_0x36, !mcsema_real_eip !33

block_0x82:                                       ; preds = %block_0x36
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, !mcsema_real_eip !34
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !35
  %179 = add i64 %RBP_val.25, -24, !mcsema_real_eip !35
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !35
  %181 = ptrtoint i64* %180 to i64, !mcsema_real_eip !35
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !35
  %183 = load i32, i32* %182, !mcsema_real_eip !35
  %184 = zext i32 %183 to i64, !mcsema_real_eip !35
  store i64 %184, i64* %XSI, !mcsema_real_eip !35
  %AL.26 = bitcast i64* %XAX to i8*, !mcsema_real_eip !36
  store i8 0, i8* %AL.26, !mcsema_real_eip !36
  %RDI_val.27 = load i64, i64* %XDI, !mcsema_real_eip !37
  %RSI_val.28 = load i64, i64* %XSI, !mcsema_real_eip !37
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !37
  %185 = sub i64 %RSP_val.29, 8, !mcsema_real_eip !37
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %186, !mcsema_real_eip !37
  store i64 %185, i64* %XSP, !mcsema_real_eip !37
  %187 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.27, i64 %RSI_val.28), !mcsema_real_eip !37
  store i64 %187, i64* %XAX, !mcsema_real_eip !37
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !38
  %188 = add i64 %RBP_val.30, -24, !mcsema_real_eip !38
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !38
  %190 = ptrtoint i64* %189 to i64, !mcsema_real_eip !38
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !38
  %192 = load i32, i32* %191, !mcsema_real_eip !38
  %193 = zext i32 %192 to i64, !mcsema_real_eip !38
  store i64 %193, i64* %XSI, !mcsema_real_eip !38
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !39
  %194 = add i64 %RBP_val.31, -36, !mcsema_real_eip !39
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !39
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !39
  %196 = ptrtoint i64* %195 to i64, !mcsema_real_eip !39
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.33, i32* %197, !mcsema_real_eip !39
  %ESI.34 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.35 = load i32, i32* %ESI.34, !mcsema_real_eip !40
  %198 = zext i32 %ESI_val.35 to i64, !mcsema_real_eip !40
  store i64 %198, i64* %XAX, !mcsema_real_eip !40
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !41
  %199 = add i64 48, %RSP_val.36, !mcsema_real_eip !41
  %200 = xor i64 %199, %RSP_val.36, !mcsema_real_eip !41
  %201 = xor i64 %200, 48, !mcsema_real_eip !41
  %202 = and i64 %201, 16, !mcsema_real_eip !41
  %203 = icmp ne i64 %202, 0, !mcsema_real_eip !41
  store i1 %203, i1* %AF, !mcsema_real_eip !41
  %204 = lshr i64 %199, 63, !mcsema_real_eip !41
  %205 = trunc i64 %204 to i1, !mcsema_real_eip !41
  store i1 %205, i1* %SF, !mcsema_real_eip !41
  %206 = icmp eq i64 %199, 0, !mcsema_real_eip !41
  store i1 %206, i1* %ZF, !mcsema_real_eip !41
  %207 = xor i64 %RSP_val.36, 48, !mcsema_real_eip !41
  %208 = xor i64 %207, -1, !mcsema_real_eip !41
  %209 = xor i64 %RSP_val.36, %199, !mcsema_real_eip !41
  %210 = and i64 %208, %209, !mcsema_real_eip !41
  %211 = lshr i64 %210, 63, !mcsema_real_eip !41
  %212 = and i64 %211, 1, !mcsema_real_eip !41
  %213 = trunc i64 %212 to i1, !mcsema_real_eip !41
  store i1 %213, i1* %OF, !mcsema_real_eip !41
  %214 = trunc i64 %199 to i8, !mcsema_real_eip !41
  %215 = call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !41
  %216 = trunc i8 %215 to i1, !mcsema_real_eip !41
  %217 = xor i1 %216, true, !mcsema_real_eip !41
  store i1 %217, i1* %PF, !mcsema_real_eip !41
  %218 = icmp ult i64 %199, %RSP_val.36, !mcsema_real_eip !41
  store i1 %218, i1* %CF, !mcsema_real_eip !41
  store i64 %199, i64* %XSP, !mcsema_real_eip !41
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !42
  %219 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !42
  %220 = load i64, i64* %219, !mcsema_real_eip !42
  store i64 %220, i64* %XBP, !mcsema_real_eip !42
  %221 = add i64 %RSP_val.37, 8, !mcsema_real_eip !42
  store i64 %221, i64* %XSP, !mcsema_real_eip !42
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !43
  %222 = add i64 %RSP_val.38, 8, !mcsema_real_eip !43
  %223 = inttoptr i64 %RSP_val.38 to i64*, !mcsema_real_eip !43
  %224 = load i64, i64* %223, !mcsema_real_eip !43
  store i64 %224, i64* %XIP, !mcsema_real_eip !43
  store i64 %222, i64* %XSP, !mcsema_real_eip !43
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
