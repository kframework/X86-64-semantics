; ModuleID = 'Output/test_6.clang.bc'
source_filename = "Output/test_6.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x1b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 40, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %8 = add i64 %RBP_val.6, 32, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = ptrtoint i64* %9 to i64, !mcsema_real_eip !6
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !6
  %12 = load i32, i32* %11, !mcsema_real_eip !6
  %13 = zext i32 %12 to i64, !mcsema_real_eip !6
  store i64 %13, i64* %R10, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %14 = add i64 %RBP_val.7, 24, !mcsema_real_eip !7
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !7
  %16 = load i64, i64* %15, !mcsema_real_eip !7
  store i64 %16, i64* %R11, !mcsema_real_eip !7
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !8
  %17 = add i64 %RBP_val.8, 16, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !8
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !8
  %21 = load i32, i32* %20, !mcsema_real_eip !8
  %22 = zext i32 %21 to i64, !mcsema_real_eip !8
  store i64 %22, i64* %XBX, !mcsema_real_eip !8
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !9
  %23 = add i64 %RBP_val.9, -12, !mcsema_real_eip !9
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !9
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %26, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %27 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !10
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, !mcsema_real_eip !10
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !10
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.14, i32* %30, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %31 = add i64 %RBP_val.15, -20, !mcsema_real_eip !11
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !11
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, !mcsema_real_eip !11
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !11
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !11
  store i32 %EDX_val.17, i32* %34, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %35 = add i64 %RBP_val.18, -24, !mcsema_real_eip !12
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !12
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !12
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !12
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !12
  store i32 %ECX_val.20, i32* %38, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %39 = add i64 %RBP_val.21, -28, !mcsema_real_eip !13
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !13
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, !mcsema_real_eip !13
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !13
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.23, i32* %42, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %43 = add i64 %RBP_val.24, -32, !mcsema_real_eip !14
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !14
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, !mcsema_real_eip !14
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !14
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.26, i32* %46, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !15
  %47 = add i64 %RBP_val.27, -36, !mcsema_real_eip !15
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !15
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.29 = load i32, i32* %EBX.28, !mcsema_real_eip !15
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !15
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.29, i32* %50, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %51 = add i64 %RBP_val.30, -48, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !16
  %R11_val.31 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %52, !mcsema_real_eip !16
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !17
  %53 = add i64 %RBP_val.32, -52, !mcsema_real_eip !17
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !17
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, !mcsema_real_eip !17
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !17
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !17
  store i32 %R10D_val.34, i32* %56, !mcsema_real_eip !17
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !18
  %57 = add i64 %RBP_val.35, -64, !mcsema_real_eip !18
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !18
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %58, !mcsema_real_eip !18
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !19
  %59 = add i64 %RBP_val.37, -68, !mcsema_real_eip !19
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !19
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !19
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %62, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !20
  %63 = add i64 %RBP_val.38, -72, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !20
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !20
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %66, !mcsema_real_eip !20
  br label %block_0x45, !mcsema_real_eip !21

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !21
  %67 = add i64 %RBP_val.39, -72, !mcsema_real_eip !21
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !21
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !21
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !21
  %71 = load i32, i32* %70, !mcsema_real_eip !21
  %72 = zext i32 %71 to i64, !mcsema_real_eip !21
  store i64 %72, i64* %XAX, !mcsema_real_eip !21
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !22
  %73 = add i64 %RBP_val.40, -36, !mcsema_real_eip !22
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !22
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !22
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !22
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !22
  %77 = load i32, i32* %76, !mcsema_real_eip !22
  %78 = sub i32 %EAX_val.42, %77, !mcsema_real_eip !22
  %79 = xor i32 %78, %EAX_val.42, !mcsema_real_eip !22
  %80 = xor i32 %79, %77, !mcsema_real_eip !22
  %81 = and i32 %80, 16, !mcsema_real_eip !22
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !22
  store i1 %82, i1* %AF, !mcsema_real_eip !22
  %83 = trunc i32 %78 to i8, !mcsema_real_eip !22
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !22
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !22
  %86 = xor i1 %85, true, !mcsema_real_eip !22
  store i1 %86, i1* %PF, !mcsema_real_eip !22
  %87 = icmp eq i32 %78, 0, !mcsema_real_eip !22
  store i1 %87, i1* %ZF, !mcsema_real_eip !22
  %88 = lshr i32 %78, 31, !mcsema_real_eip !22
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !22
  store i1 %89, i1* %SF, !mcsema_real_eip !22
  %90 = icmp ult i32 %EAX_val.42, %77, !mcsema_real_eip !22
  store i1 %90, i1* %CF, !mcsema_real_eip !22
  %91 = xor i32 %EAX_val.42, %77, !mcsema_real_eip !22
  %92 = xor i32 %EAX_val.42, %78, !mcsema_real_eip !22
  %93 = and i32 %91, %92, !mcsema_real_eip !22
  %94 = lshr i32 %93, 31, !mcsema_real_eip !22
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !22
  store i1 %95, i1* %OF, !mcsema_real_eip !22
  %96 = load i1, i1* %OF, !mcsema_real_eip !23
  %97 = load i1, i1* %SF, !mcsema_real_eip !23
  %98 = icmp eq i1 %97, %96, !mcsema_real_eip !23
  br i1 %98, label %block_0x7b, label %block_0x51, !mcsema_real_eip !23

block_0x51:                                       ; preds = %block_0x45
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !24
  %99 = add i64 %RBP_val.43, -48, !mcsema_real_eip !24
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !24
  %101 = load i64, i64* %100, !mcsema_real_eip !24
  store i64 %101, i64* %XAX, !mcsema_real_eip !24
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !25
  %102 = add i64 %RBP_val.44, -72, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !25
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !25
  %106 = load i32, i32* %105, !mcsema_real_eip !25
  %107 = sext i32 %106 to i64, !mcsema_real_eip !25
  store i64 %107, i64* %XCX, !mcsema_real_eip !25
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !26
  %108 = add i64 %RAX_val.45, 0, !mcsema_real_eip !26
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !26
  %109 = mul i64 %RCX_val.46, 4, !mcsema_real_eip !26
  %110 = add i64 %108, %109, !mcsema_real_eip !26
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !26
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !26
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !26
  %114 = load i32, i32* %113, !mcsema_real_eip !26
  %115 = zext i32 %114 to i64, !mcsema_real_eip !26
  store i64 %115, i64* %XDX, !mcsema_real_eip !26
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !27
  %116 = add i64 %RBP_val.47, -64, !mcsema_real_eip !27
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !27
  %118 = load i64, i64* %117, !mcsema_real_eip !27
  store i64 %118, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !28
  %119 = add i64 %RBP_val.48, -72, !mcsema_real_eip !28
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !28
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !28
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !28
  %123 = load i32, i32* %122, !mcsema_real_eip !28
  %124 = sext i32 %123 to i64, !mcsema_real_eip !28
  store i64 %124, i64* %XCX, !mcsema_real_eip !28
  %RAX_val.49 = load i64, i64* %XAX, !mcsema_real_eip !29
  %125 = add i64 %RAX_val.49, 0, !mcsema_real_eip !29
  %RCX_val.50 = load i64, i64* %XCX, !mcsema_real_eip !29
  %126 = mul i64 %RCX_val.50, 4, !mcsema_real_eip !29
  %127 = add i64 %125, %126, !mcsema_real_eip !29
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !29
  %EDX.51 = bitcast i64* %XDX to i32*, !mcsema_real_eip !29
  %EDX_val.52 = load i32, i32* %EDX.51, !mcsema_real_eip !29
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !29
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !29
  %131 = load i32, i32* %130, !mcsema_real_eip !29
  %132 = sub i32 %EDX_val.52, %131, !mcsema_real_eip !29
  %133 = xor i32 %132, %EDX_val.52, !mcsema_real_eip !29
  %134 = xor i32 %133, %131, !mcsema_real_eip !29
  %135 = and i32 %134, 16, !mcsema_real_eip !29
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !29
  store i1 %136, i1* %AF, !mcsema_real_eip !29
  %137 = trunc i32 %132 to i8, !mcsema_real_eip !29
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !29
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !29
  %140 = xor i1 %139, true, !mcsema_real_eip !29
  store i1 %140, i1* %PF, !mcsema_real_eip !29
  %141 = icmp eq i32 %132, 0, !mcsema_real_eip !29
  store i1 %141, i1* %ZF, !mcsema_real_eip !29
  %142 = lshr i32 %132, 31, !mcsema_real_eip !29
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !29
  store i1 %143, i1* %SF, !mcsema_real_eip !29
  %144 = icmp ult i32 %EDX_val.52, %131, !mcsema_real_eip !29
  store i1 %144, i1* %CF, !mcsema_real_eip !29
  %145 = xor i32 %EDX_val.52, %131, !mcsema_real_eip !29
  %146 = xor i32 %EDX_val.52, %132, !mcsema_real_eip !29
  %147 = and i32 %145, %146, !mcsema_real_eip !29
  %148 = lshr i32 %147, 31, !mcsema_real_eip !29
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !29
  store i1 %149, i1* %OF, !mcsema_real_eip !29
  %150 = zext i32 %132 to i64, !mcsema_real_eip !29
  store i64 %150, i64* %XDX, !mcsema_real_eip !29
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !30
  %151 = add i64 %RBP_val.53, -68, !mcsema_real_eip !30
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !30
  %153 = ptrtoint i64* %152 to i64, !mcsema_real_eip !30
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !30
  %155 = load i32, i32* %154, !mcsema_real_eip !30
  %EDX.54 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.54, !mcsema_real_eip !30
  %156 = add i32 %EDX_val.55, %155, !mcsema_real_eip !30
  %157 = xor i32 %156, %155, !mcsema_real_eip !30
  %158 = xor i32 %157, %EDX_val.55, !mcsema_real_eip !30
  %159 = and i32 %158, 16, !mcsema_real_eip !30
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !30
  store i1 %160, i1* %AF, !mcsema_real_eip !30
  %161 = lshr i32 %156, 31, !mcsema_real_eip !30
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !30
  store i1 %162, i1* %SF, !mcsema_real_eip !30
  %163 = icmp eq i32 %156, 0, !mcsema_real_eip !30
  store i1 %163, i1* %ZF, !mcsema_real_eip !30
  %164 = xor i32 %155, %EDX_val.55, !mcsema_real_eip !30
  %165 = xor i32 %164, -1, !mcsema_real_eip !30
  %166 = xor i32 %155, %156, !mcsema_real_eip !30
  %167 = and i32 %165, %166, !mcsema_real_eip !30
  %168 = lshr i32 %167, 31, !mcsema_real_eip !30
  %169 = and i32 %168, 1, !mcsema_real_eip !30
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !30
  store i1 %170, i1* %OF, !mcsema_real_eip !30
  %171 = trunc i32 %156 to i8, !mcsema_real_eip !30
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !30
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !30
  %174 = xor i1 %173, true, !mcsema_real_eip !30
  store i1 %174, i1* %PF, !mcsema_real_eip !30
  %175 = icmp ult i32 %156, %155, !mcsema_real_eip !30
  store i1 %175, i1* %CF, !mcsema_real_eip !30
  %176 = zext i32 %156 to i64, !mcsema_real_eip !30
  store i64 %176, i64* %XDX, !mcsema_real_eip !30
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !31
  %177 = add i64 %RBP_val.56, -68, !mcsema_real_eip !31
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !31
  %EDX.57 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.58 = load i32, i32* %EDX.57, !mcsema_real_eip !31
  %179 = ptrtoint i64* %178 to i64, !mcsema_real_eip !31
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !31
  store i32 %EDX_val.58, i32* %180, !mcsema_real_eip !31
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !32
  %181 = add i64 %RBP_val.59, -72, !mcsema_real_eip !32
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !32
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !32
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !32
  %185 = load i32, i32* %184, !mcsema_real_eip !32
  %186 = zext i32 %185 to i64, !mcsema_real_eip !32
  store i64 %186, i64* %XAX, !mcsema_real_eip !32
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !33
  %187 = add i32 1, %EAX_val.61, !mcsema_real_eip !33
  %188 = xor i32 %187, %EAX_val.61, !mcsema_real_eip !33
  %189 = xor i32 %188, 1, !mcsema_real_eip !33
  %190 = and i32 %189, 16, !mcsema_real_eip !33
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !33
  store i1 %191, i1* %AF, !mcsema_real_eip !33
  %192 = lshr i32 %187, 31, !mcsema_real_eip !33
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !33
  store i1 %193, i1* %SF, !mcsema_real_eip !33
  %194 = icmp eq i32 %187, 0, !mcsema_real_eip !33
  store i1 %194, i1* %ZF, !mcsema_real_eip !33
  %195 = xor i32 %EAX_val.61, 1, !mcsema_real_eip !33
  %196 = xor i32 %195, -1, !mcsema_real_eip !33
  %197 = xor i32 %EAX_val.61, %187, !mcsema_real_eip !33
  %198 = and i32 %196, %197, !mcsema_real_eip !33
  %199 = lshr i32 %198, 31, !mcsema_real_eip !33
  %200 = and i32 %199, 1, !mcsema_real_eip !33
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !33
  store i1 %201, i1* %OF, !mcsema_real_eip !33
  %202 = trunc i32 %187 to i8, !mcsema_real_eip !33
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !33
  %204 = trunc i8 %203 to i1, !mcsema_real_eip !33
  %205 = xor i1 %204, true, !mcsema_real_eip !33
  store i1 %205, i1* %PF, !mcsema_real_eip !33
  %206 = icmp ult i32 %187, %EAX_val.61, !mcsema_real_eip !33
  store i1 %206, i1* %CF, !mcsema_real_eip !33
  %207 = zext i32 %187 to i64, !mcsema_real_eip !33
  store i64 %207, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !34
  %208 = add i64 %RBP_val.62, -72, !mcsema_real_eip !34
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !34
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !34
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !34
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.64, i32* %211, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %block_0x45
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !36
  %212 = add i64 %RBP_val.65, -68, !mcsema_real_eip !36
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !36
  %214 = ptrtoint i64* %213 to i64, !mcsema_real_eip !36
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !36
  %216 = load i32, i32* %215, !mcsema_real_eip !36
  %217 = zext i32 %216 to i64, !mcsema_real_eip !36
  store i64 %217, i64* %XAX, !mcsema_real_eip !36
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !37
  %218 = add i64 %RBP_val.66, -12, !mcsema_real_eip !37
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !37
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !37
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !37
  %222 = load i32, i32* %221, !mcsema_real_eip !37
  %223 = zext i32 %222 to i64, !mcsema_real_eip !37
  store i64 %223, i64* %XCX, !mcsema_real_eip !37
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !38
  %224 = add i64 %RBP_val.67, -16, !mcsema_real_eip !38
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !38
  %226 = ptrtoint i64* %225 to i64, !mcsema_real_eip !38
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !38
  %228 = load i32, i32* %227, !mcsema_real_eip !38
  %ECX.68 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.68, !mcsema_real_eip !38
  %229 = add i32 %ECX_val.69, %228, !mcsema_real_eip !38
  %230 = xor i32 %229, %228, !mcsema_real_eip !38
  %231 = xor i32 %230, %ECX_val.69, !mcsema_real_eip !38
  %232 = and i32 %231, 16, !mcsema_real_eip !38
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !38
  store i1 %233, i1* %AF, !mcsema_real_eip !38
  %234 = lshr i32 %229, 31, !mcsema_real_eip !38
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !38
  store i1 %235, i1* %SF, !mcsema_real_eip !38
  %236 = icmp eq i32 %229, 0, !mcsema_real_eip !38
  store i1 %236, i1* %ZF, !mcsema_real_eip !38
  %237 = xor i32 %228, %ECX_val.69, !mcsema_real_eip !38
  %238 = xor i32 %237, -1, !mcsema_real_eip !38
  %239 = xor i32 %228, %229, !mcsema_real_eip !38
  %240 = and i32 %238, %239, !mcsema_real_eip !38
  %241 = lshr i32 %240, 31, !mcsema_real_eip !38
  %242 = and i32 %241, 1, !mcsema_real_eip !38
  %243 = trunc i32 %242 to i1, !mcsema_real_eip !38
  store i1 %243, i1* %OF, !mcsema_real_eip !38
  %244 = trunc i32 %229 to i8, !mcsema_real_eip !38
  %245 = call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !38
  %246 = trunc i8 %245 to i1, !mcsema_real_eip !38
  %247 = xor i1 %246, true, !mcsema_real_eip !38
  store i1 %247, i1* %PF, !mcsema_real_eip !38
  %248 = icmp ult i32 %229, %228, !mcsema_real_eip !38
  store i1 %248, i1* %CF, !mcsema_real_eip !38
  %249 = zext i32 %229 to i64, !mcsema_real_eip !38
  store i64 %249, i64* %XCX, !mcsema_real_eip !38
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !39
  %250 = add i64 %RBP_val.70, -20, !mcsema_real_eip !39
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !39
  %252 = ptrtoint i64* %251 to i64, !mcsema_real_eip !39
  %253 = inttoptr i64 %252 to i32*, !mcsema_real_eip !39
  %254 = load i32, i32* %253, !mcsema_real_eip !39
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !39
  %ECX_val.72 = load i32, i32* %ECX.71, !mcsema_real_eip !39
  %255 = add i32 %ECX_val.72, %254, !mcsema_real_eip !39
  %256 = xor i32 %255, %254, !mcsema_real_eip !39
  %257 = xor i32 %256, %ECX_val.72, !mcsema_real_eip !39
  %258 = and i32 %257, 16, !mcsema_real_eip !39
  %259 = icmp ne i32 %258, 0, !mcsema_real_eip !39
  store i1 %259, i1* %AF, !mcsema_real_eip !39
  %260 = lshr i32 %255, 31, !mcsema_real_eip !39
  %261 = trunc i32 %260 to i1, !mcsema_real_eip !39
  store i1 %261, i1* %SF, !mcsema_real_eip !39
  %262 = icmp eq i32 %255, 0, !mcsema_real_eip !39
  store i1 %262, i1* %ZF, !mcsema_real_eip !39
  %263 = xor i32 %254, %ECX_val.72, !mcsema_real_eip !39
  %264 = xor i32 %263, -1, !mcsema_real_eip !39
  %265 = xor i32 %254, %255, !mcsema_real_eip !39
  %266 = and i32 %264, %265, !mcsema_real_eip !39
  %267 = lshr i32 %266, 31, !mcsema_real_eip !39
  %268 = and i32 %267, 1, !mcsema_real_eip !39
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !39
  store i1 %269, i1* %OF, !mcsema_real_eip !39
  %270 = trunc i32 %255 to i8, !mcsema_real_eip !39
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !39
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !39
  %273 = xor i1 %272, true, !mcsema_real_eip !39
  store i1 %273, i1* %PF, !mcsema_real_eip !39
  %274 = icmp ult i32 %255, %254, !mcsema_real_eip !39
  store i1 %274, i1* %CF, !mcsema_real_eip !39
  %275 = zext i32 %255 to i64, !mcsema_real_eip !39
  store i64 %275, i64* %XCX, !mcsema_real_eip !39
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !40
  %276 = add i64 %RBP_val.73, -24, !mcsema_real_eip !40
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !40
  %278 = ptrtoint i64* %277 to i64, !mcsema_real_eip !40
  %279 = inttoptr i64 %278 to i32*, !mcsema_real_eip !40
  %280 = load i32, i32* %279, !mcsema_real_eip !40
  %ECX.74 = bitcast i64* %XCX to i32*, !mcsema_real_eip !40
  %ECX_val.75 = load i32, i32* %ECX.74, !mcsema_real_eip !40
  %281 = add i32 %ECX_val.75, %280, !mcsema_real_eip !40
  %282 = xor i32 %281, %280, !mcsema_real_eip !40
  %283 = xor i32 %282, %ECX_val.75, !mcsema_real_eip !40
  %284 = and i32 %283, 16, !mcsema_real_eip !40
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !40
  store i1 %285, i1* %AF, !mcsema_real_eip !40
  %286 = lshr i32 %281, 31, !mcsema_real_eip !40
  %287 = trunc i32 %286 to i1, !mcsema_real_eip !40
  store i1 %287, i1* %SF, !mcsema_real_eip !40
  %288 = icmp eq i32 %281, 0, !mcsema_real_eip !40
  store i1 %288, i1* %ZF, !mcsema_real_eip !40
  %289 = xor i32 %280, %ECX_val.75, !mcsema_real_eip !40
  %290 = xor i32 %289, -1, !mcsema_real_eip !40
  %291 = xor i32 %280, %281, !mcsema_real_eip !40
  %292 = and i32 %290, %291, !mcsema_real_eip !40
  %293 = lshr i32 %292, 31, !mcsema_real_eip !40
  %294 = and i32 %293, 1, !mcsema_real_eip !40
  %295 = trunc i32 %294 to i1, !mcsema_real_eip !40
  store i1 %295, i1* %OF, !mcsema_real_eip !40
  %296 = trunc i32 %281 to i8, !mcsema_real_eip !40
  %297 = call i8 @llvm.ctpop.i8(i8 %296), !mcsema_real_eip !40
  %298 = trunc i8 %297 to i1, !mcsema_real_eip !40
  %299 = xor i1 %298, true, !mcsema_real_eip !40
  store i1 %299, i1* %PF, !mcsema_real_eip !40
  %300 = icmp ult i32 %281, %280, !mcsema_real_eip !40
  store i1 %300, i1* %CF, !mcsema_real_eip !40
  %301 = zext i32 %281 to i64, !mcsema_real_eip !40
  store i64 %301, i64* %XCX, !mcsema_real_eip !40
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !41
  %302 = add i64 %RBP_val.76, -28, !mcsema_real_eip !41
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !41
  %304 = ptrtoint i64* %303 to i64, !mcsema_real_eip !41
  %305 = inttoptr i64 %304 to i32*, !mcsema_real_eip !41
  %306 = load i32, i32* %305, !mcsema_real_eip !41
  %ECX.77 = bitcast i64* %XCX to i32*, !mcsema_real_eip !41
  %ECX_val.78 = load i32, i32* %ECX.77, !mcsema_real_eip !41
  %307 = add i32 %ECX_val.78, %306, !mcsema_real_eip !41
  %308 = xor i32 %307, %306, !mcsema_real_eip !41
  %309 = xor i32 %308, %ECX_val.78, !mcsema_real_eip !41
  %310 = and i32 %309, 16, !mcsema_real_eip !41
  %311 = icmp ne i32 %310, 0, !mcsema_real_eip !41
  store i1 %311, i1* %AF, !mcsema_real_eip !41
  %312 = lshr i32 %307, 31, !mcsema_real_eip !41
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !41
  store i1 %313, i1* %SF, !mcsema_real_eip !41
  %314 = icmp eq i32 %307, 0, !mcsema_real_eip !41
  store i1 %314, i1* %ZF, !mcsema_real_eip !41
  %315 = xor i32 %306, %ECX_val.78, !mcsema_real_eip !41
  %316 = xor i32 %315, -1, !mcsema_real_eip !41
  %317 = xor i32 %306, %307, !mcsema_real_eip !41
  %318 = and i32 %316, %317, !mcsema_real_eip !41
  %319 = lshr i32 %318, 31, !mcsema_real_eip !41
  %320 = and i32 %319, 1, !mcsema_real_eip !41
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !41
  store i1 %321, i1* %OF, !mcsema_real_eip !41
  %322 = trunc i32 %307 to i8, !mcsema_real_eip !41
  %323 = call i8 @llvm.ctpop.i8(i8 %322), !mcsema_real_eip !41
  %324 = trunc i8 %323 to i1, !mcsema_real_eip !41
  %325 = xor i1 %324, true, !mcsema_real_eip !41
  store i1 %325, i1* %PF, !mcsema_real_eip !41
  %326 = icmp ult i32 %307, %306, !mcsema_real_eip !41
  store i1 %326, i1* %CF, !mcsema_real_eip !41
  %327 = zext i32 %307 to i64, !mcsema_real_eip !41
  store i64 %327, i64* %XCX, !mcsema_real_eip !41
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !42
  %328 = add i64 %RBP_val.79, -32, !mcsema_real_eip !42
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !42
  %330 = ptrtoint i64* %329 to i64, !mcsema_real_eip !42
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !42
  %332 = load i32, i32* %331, !mcsema_real_eip !42
  %ECX.80 = bitcast i64* %XCX to i32*, !mcsema_real_eip !42
  %ECX_val.81 = load i32, i32* %ECX.80, !mcsema_real_eip !42
  %333 = add i32 %ECX_val.81, %332, !mcsema_real_eip !42
  %334 = xor i32 %333, %332, !mcsema_real_eip !42
  %335 = xor i32 %334, %ECX_val.81, !mcsema_real_eip !42
  %336 = and i32 %335, 16, !mcsema_real_eip !42
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !42
  store i1 %337, i1* %AF, !mcsema_real_eip !42
  %338 = lshr i32 %333, 31, !mcsema_real_eip !42
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !42
  store i1 %339, i1* %SF, !mcsema_real_eip !42
  %340 = icmp eq i32 %333, 0, !mcsema_real_eip !42
  store i1 %340, i1* %ZF, !mcsema_real_eip !42
  %341 = xor i32 %332, %ECX_val.81, !mcsema_real_eip !42
  %342 = xor i32 %341, -1, !mcsema_real_eip !42
  %343 = xor i32 %332, %333, !mcsema_real_eip !42
  %344 = and i32 %342, %343, !mcsema_real_eip !42
  %345 = lshr i32 %344, 31, !mcsema_real_eip !42
  %346 = and i32 %345, 1, !mcsema_real_eip !42
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !42
  store i1 %347, i1* %OF, !mcsema_real_eip !42
  %348 = trunc i32 %333 to i8, !mcsema_real_eip !42
  %349 = call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !42
  %350 = trunc i8 %349 to i1, !mcsema_real_eip !42
  %351 = xor i1 %350, true, !mcsema_real_eip !42
  store i1 %351, i1* %PF, !mcsema_real_eip !42
  %352 = icmp ult i32 %333, %332, !mcsema_real_eip !42
  store i1 %352, i1* %CF, !mcsema_real_eip !42
  %353 = zext i32 %333 to i64, !mcsema_real_eip !42
  store i64 %353, i64* %XCX, !mcsema_real_eip !42
  %ECX.82 = bitcast i64* %XCX to i32*, !mcsema_real_eip !43
  %ECX_val.83 = load i32, i32* %ECX.82, !mcsema_real_eip !43
  %EAX.84 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.84, !mcsema_real_eip !43
  %354 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %355 = sext i32 %ECX_val.83 to i64, !mcsema_real_eip !43
  %356 = mul i64 %354, %355, !mcsema_real_eip !43
  %357 = trunc i64 %356 to i32, !mcsema_real_eip !43
  %358 = sext i32 %357 to i64, !mcsema_real_eip !43
  %359 = icmp ne i64 %358, %356, !mcsema_real_eip !43
  %360 = icmp slt i32 %357, 0, !mcsema_real_eip !43
  store i1 %360, i1* %SF, !mcsema_real_eip !43
  store i1 %359, i1* %OF, !mcsema_real_eip !43
  store i1 %359, i1* %CF, !mcsema_real_eip !43
  %361 = zext i32 %357 to i64, !mcsema_real_eip !43
  store i64 %361, i64* %XAX, !mcsema_real_eip !43
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !44
  %362 = inttoptr i64 %RSP_val.86 to i64*, !mcsema_real_eip !44
  %363 = load i64, i64* %362, !mcsema_real_eip !44
  store i64 %363, i64* %XBX, !mcsema_real_eip !44
  %364 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store i64 %364, i64* %XSP, !mcsema_real_eip !44
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !45
  %365 = inttoptr i64 %RSP_val.87 to i64*, !mcsema_real_eip !45
  %366 = load i64, i64* %365, !mcsema_real_eip !45
  store i64 %366, i64* %XBP, !mcsema_real_eip !45
  %367 = add i64 %RSP_val.87, 8, !mcsema_real_eip !45
  store i64 %367, i64* %XSP, !mcsema_real_eip !45
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !46
  %368 = add i64 %RSP_val.88, 8, !mcsema_real_eip !46
  %369 = inttoptr i64 %RSP_val.88 to i64*, !mcsema_real_eip !46
  %370 = load i64, i64* %369, !mcsema_real_eip !46
  store i64 %370, i64* %XIP, !mcsema_real_eip !46
  store i64 %368, i64* %XSP, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !47
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !47
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !47
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !47
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !47
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !47
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !47
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !47
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !47
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !47
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !47
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !47
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !47
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !47
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !47
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !47
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !47
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !47
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !47
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !47
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !47
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !47
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !47
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !47
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !47
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !47
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !47
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !47
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !47
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !47
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !47
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !47
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !47
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !47
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !47
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !47
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !47
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !47
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !47
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !47
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !47
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !47
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !47
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !47
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !47
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !47
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !47
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !47
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !47
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !47
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !47
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !47
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !47
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !47
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !47
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !47
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !47
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !47
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !47
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !47
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !47
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !47
  br label %block_0xa0, !mcsema_real_eip !47

block_0xa0:                                       ; preds = %entry
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !47
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !47
  %1 = sub i64 %RSP_val.90, 8, !mcsema_real_eip !47
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !47
  store i64 %RBP_val.89, i64* %2, !mcsema_real_eip !47
  store i64 %1, i64* %XSP, !mcsema_real_eip !47
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !48
  store i64 %RSP_val.91, i64* %XBP, !mcsema_real_eip !48
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !49
  %3 = sext i8 96 to i64, !mcsema_real_eip !49
  %4 = sub i64 %RSP_val.92, %3, !mcsema_real_eip !49
  %5 = xor i64 %4, %RSP_val.92, !mcsema_real_eip !49
  %6 = xor i64 %5, %3, !mcsema_real_eip !49
  %7 = and i64 %6, 16, !mcsema_real_eip !49
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !49
  store i1 %8, i1* %AF, !mcsema_real_eip !49
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !49
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !49
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !49
  %12 = xor i1 %11, true, !mcsema_real_eip !49
  store i1 %12, i1* %PF, !mcsema_real_eip !49
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !49
  store i1 %13, i1* %ZF, !mcsema_real_eip !49
  %14 = lshr i64 %4, 63, !mcsema_real_eip !49
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !49
  store i1 %15, i1* %SF, !mcsema_real_eip !49
  %16 = icmp ult i64 %RSP_val.92, %3, !mcsema_real_eip !49
  store i1 %16, i1* %CF, !mcsema_real_eip !49
  %17 = xor i64 %RSP_val.92, %3, !mcsema_real_eip !49
  %18 = xor i64 %RSP_val.92, %4, !mcsema_real_eip !49
  %19 = and i64 %17, %18, !mcsema_real_eip !49
  %20 = lshr i64 %19, 63, !mcsema_real_eip !49
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !49
  store i1 %21, i1* %OF, !mcsema_real_eip !49
  store i64 %4, i64* %XSP, !mcsema_real_eip !49
  %22 = zext i32 40 to i64, !mcsema_real_eip !50
  store i64 %22, i64* %XAX, !mcsema_real_eip !50
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !51
  %23 = zext i32 %EAX_val.94 to i64, !mcsema_real_eip !51
  store i64 %23, i64* %XCX, !mcsema_real_eip !51
  %RBP_val.95 = load i64, i64* %XBP, !mcsema_real_eip !52
  %24 = add i64 %RBP_val.95, -4, !mcsema_real_eip !52
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !52
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !52
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !52
  store i32 0, i32* %27, !mcsema_real_eip !52
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !53
  %28 = add i64 %RBP_val.96, -8, !mcsema_real_eip !53
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !53
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !53
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !53
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !53
  store i32 %EDI_val.98, i32* %31, !mcsema_real_eip !53
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !54
  %32 = add i64 %RBP_val.99, -16, !mcsema_real_eip !54
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !54
  %RSI_val.100 = load i64, i64* %XSI, !mcsema_real_eip !54
  store i64 %RSI_val.100, i64* %33, !mcsema_real_eip !54
  %RCX_val.101 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.101, i64* %XDI, !mcsema_real_eip !55
  %RDI_val.102 = load i64, i64* %XDI, !mcsema_real_eip !56
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !56
  %34 = sub i64 %RSP_val.103, 8, !mcsema_real_eip !56
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !56
  store i64 -2415393069852865332, i64* %35, !mcsema_real_eip !56
  store i64 %34, i64* %XSP, !mcsema_real_eip !56
  %36 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.102), !mcsema_real_eip !56
  store i64 %36, i64* %XAX, !mcsema_real_eip !56
  %37 = zext i32 40 to i64, !mcsema_real_eip !57
  store i64 %37, i64* %XDX, !mcsema_real_eip !57
  %EDX.104 = bitcast i64* %XDX to i32*, !mcsema_real_eip !58
  %EDX_val.105 = load i32, i32* %EDX.104, !mcsema_real_eip !58
  %38 = zext i32 %EDX_val.105 to i64, !mcsema_real_eip !58
  store i64 %38, i64* %XDI, !mcsema_real_eip !58
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !59
  %39 = add i64 %RBP_val.106, -24, !mcsema_real_eip !59
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !59
  %RAX_val.107 = load i64, i64* %XAX, !mcsema_real_eip !59
  store i64 %RAX_val.107, i64* %40, !mcsema_real_eip !59
  %RDI_val.108 = load i64, i64* %XDI, !mcsema_real_eip !60
  %RSP_val.109 = load i64, i64* %XSP, !mcsema_real_eip !60
  %41 = sub i64 %RSP_val.109, 8, !mcsema_real_eip !60
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !60
  store i64 -2415393069852865332, i64* %42, !mcsema_real_eip !60
  store i64 %41, i64* %XSP, !mcsema_real_eip !60
  %43 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.108), !mcsema_real_eip !60
  store i64 %43, i64* %XAX, !mcsema_real_eip !60
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !61
  %44 = add i64 %RBP_val.110, -32, !mcsema_real_eip !61
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !61
  %RAX_val.111 = load i64, i64* %XAX, !mcsema_real_eip !61
  store i64 %RAX_val.111, i64* %45, !mcsema_real_eip !61
  %RBP_val.112 = load i64, i64* %XBP, !mcsema_real_eip !62
  %46 = add i64 %RBP_val.112, -36, !mcsema_real_eip !62
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !62
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !62
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !62
  store i32 0, i32* %49, !mcsema_real_eip !62
  br label %block_0xe0, !mcsema_real_eip !63

block_0xe0:                                       ; preds = %block_0xea, %block_0xa0
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !63
  %50 = add i64 %RBP_val.113, -36, !mcsema_real_eip !63
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !63
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !63
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !63
  %54 = load i32, i32* %53, !mcsema_real_eip !63
  %55 = sub i32 %54, 10, !mcsema_real_eip !63
  %56 = xor i32 %55, %54, !mcsema_real_eip !63
  %57 = xor i32 %56, 10, !mcsema_real_eip !63
  %58 = and i32 %57, 16, !mcsema_real_eip !63
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !63
  store i1 %59, i1* %AF, !mcsema_real_eip !63
  %60 = trunc i32 %55 to i8, !mcsema_real_eip !63
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !63
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !63
  %63 = xor i1 %62, true, !mcsema_real_eip !63
  store i1 %63, i1* %PF, !mcsema_real_eip !63
  %64 = icmp eq i32 %55, 0, !mcsema_real_eip !63
  store i1 %64, i1* %ZF, !mcsema_real_eip !63
  %65 = lshr i32 %55, 31, !mcsema_real_eip !63
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !63
  store i1 %66, i1* %SF, !mcsema_real_eip !63
  %67 = icmp ult i32 %54, 10, !mcsema_real_eip !63
  store i1 %67, i1* %CF, !mcsema_real_eip !63
  %68 = xor i32 %54, 10, !mcsema_real_eip !63
  %69 = xor i32 %54, %55, !mcsema_real_eip !63
  %70 = and i32 %68, %69, !mcsema_real_eip !63
  %71 = lshr i32 %70, 31, !mcsema_real_eip !63
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !63
  store i1 %72, i1* %OF, !mcsema_real_eip !63
  %73 = load i1, i1* %OF, !mcsema_real_eip !64
  %74 = load i1, i1* %SF, !mcsema_real_eip !64
  %75 = icmp eq i1 %74, %73, !mcsema_real_eip !64
  br i1 %75, label %block_0x10c, label %block_0xea, !mcsema_real_eip !64

block_0xea:                                       ; preds = %block_0xe0
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !65
  %76 = add i64 %RBP_val.114, -36, !mcsema_real_eip !65
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !65
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !65
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !65
  %80 = load i32, i32* %79, !mcsema_real_eip !65
  %81 = zext i32 %80 to i64, !mcsema_real_eip !65
  store i64 %81, i64* %XAX, !mcsema_real_eip !65
  %EAX.115 = bitcast i64* %XAX to i32*, !mcsema_real_eip !66
  %EAX_val.116 = load i32, i32* %EAX.115, !mcsema_real_eip !66
  %82 = add i32 10, %EAX_val.116, !mcsema_real_eip !66
  %83 = xor i32 %82, %EAX_val.116, !mcsema_real_eip !66
  %84 = xor i32 %83, 10, !mcsema_real_eip !66
  %85 = and i32 %84, 16, !mcsema_real_eip !66
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !66
  store i1 %86, i1* %AF, !mcsema_real_eip !66
  %87 = lshr i32 %82, 31, !mcsema_real_eip !66
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !66
  store i1 %88, i1* %SF, !mcsema_real_eip !66
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !66
  store i1 %89, i1* %ZF, !mcsema_real_eip !66
  %90 = xor i32 %EAX_val.116, 10, !mcsema_real_eip !66
  %91 = xor i32 %90, -1, !mcsema_real_eip !66
  %92 = xor i32 %EAX_val.116, %82, !mcsema_real_eip !66
  %93 = and i32 %91, %92, !mcsema_real_eip !66
  %94 = lshr i32 %93, 31, !mcsema_real_eip !66
  %95 = and i32 %94, 1, !mcsema_real_eip !66
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !66
  store i1 %96, i1* %OF, !mcsema_real_eip !66
  %97 = trunc i32 %82 to i8, !mcsema_real_eip !66
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !66
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !66
  %100 = xor i1 %99, true, !mcsema_real_eip !66
  store i1 %100, i1* %PF, !mcsema_real_eip !66
  %101 = icmp ult i32 %82, %EAX_val.116, !mcsema_real_eip !66
  store i1 %101, i1* %CF, !mcsema_real_eip !66
  %102 = zext i32 %82 to i64, !mcsema_real_eip !66
  store i64 %102, i64* %XAX, !mcsema_real_eip !66
  %EAX.117 = bitcast i64* %XAX to i32*, !mcsema_real_eip !67
  %EAX_val.118 = load i32, i32* %EAX.117, !mcsema_real_eip !67
  %103 = add i32 1, %EAX_val.118, !mcsema_real_eip !67
  %104 = xor i32 %103, %EAX_val.118, !mcsema_real_eip !67
  %105 = xor i32 %104, 1, !mcsema_real_eip !67
  %106 = and i32 %105, 16, !mcsema_real_eip !67
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !67
  store i1 %107, i1* %AF, !mcsema_real_eip !67
  %108 = lshr i32 %103, 31, !mcsema_real_eip !67
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !67
  store i1 %109, i1* %SF, !mcsema_real_eip !67
  %110 = icmp eq i32 %103, 0, !mcsema_real_eip !67
  store i1 %110, i1* %ZF, !mcsema_real_eip !67
  %111 = xor i32 %EAX_val.118, 1, !mcsema_real_eip !67
  %112 = xor i32 %111, -1, !mcsema_real_eip !67
  %113 = xor i32 %EAX_val.118, %103, !mcsema_real_eip !67
  %114 = and i32 %112, %113, !mcsema_real_eip !67
  %115 = lshr i32 %114, 31, !mcsema_real_eip !67
  %116 = and i32 %115, 1, !mcsema_real_eip !67
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !67
  store i1 %117, i1* %OF, !mcsema_real_eip !67
  %118 = trunc i32 %103 to i8, !mcsema_real_eip !67
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !67
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !67
  %121 = xor i1 %120, true, !mcsema_real_eip !67
  store i1 %121, i1* %PF, !mcsema_real_eip !67
  %122 = icmp ult i32 %103, %EAX_val.118, !mcsema_real_eip !67
  store i1 %122, i1* %CF, !mcsema_real_eip !67
  %123 = zext i32 %103 to i64, !mcsema_real_eip !67
  store i64 %123, i64* %XAX, !mcsema_real_eip !67
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !68
  %124 = add i64 %RBP_val.119, -24, !mcsema_real_eip !68
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !68
  %126 = load i64, i64* %125, !mcsema_real_eip !68
  store i64 %126, i64* %XCX, !mcsema_real_eip !68
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !69
  %127 = add i64 %RBP_val.120, -36, !mcsema_real_eip !69
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !69
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !69
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !69
  %131 = load i32, i32* %130, !mcsema_real_eip !69
  %132 = sext i32 %131 to i64, !mcsema_real_eip !69
  store i64 %132, i64* %XDX, !mcsema_real_eip !69
  %RCX_val.121 = load i64, i64* %XCX, !mcsema_real_eip !70
  %133 = add i64 %RCX_val.121, 0, !mcsema_real_eip !70
  %RDX_val.122 = load i64, i64* %XDX, !mcsema_real_eip !70
  %134 = mul i64 %RDX_val.122, 4, !mcsema_real_eip !70
  %135 = add i64 %133, %134, !mcsema_real_eip !70
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !70
  %EAX.123 = bitcast i64* %XAX to i32*, !mcsema_real_eip !70
  %EAX_val.124 = load i32, i32* %EAX.123, !mcsema_real_eip !70
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !70
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !70
  store i32 %EAX_val.124, i32* %138, !mcsema_real_eip !70
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !71
  %139 = add i64 %RBP_val.125, -36, !mcsema_real_eip !71
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !71
  %141 = ptrtoint i64* %140 to i64, !mcsema_real_eip !71
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !71
  %143 = load i32, i32* %142, !mcsema_real_eip !71
  %144 = zext i32 %143 to i64, !mcsema_real_eip !71
  store i64 %144, i64* %XAX, !mcsema_real_eip !71
  %EAX.126 = bitcast i64* %XAX to i32*, !mcsema_real_eip !72
  %EAX_val.127 = load i32, i32* %EAX.126, !mcsema_real_eip !72
  %145 = add i32 1, %EAX_val.127, !mcsema_real_eip !72
  %146 = xor i32 %145, %EAX_val.127, !mcsema_real_eip !72
  %147 = xor i32 %146, 1, !mcsema_real_eip !72
  %148 = and i32 %147, 16, !mcsema_real_eip !72
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !72
  store i1 %149, i1* %AF, !mcsema_real_eip !72
  %150 = lshr i32 %145, 31, !mcsema_real_eip !72
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !72
  store i1 %151, i1* %SF, !mcsema_real_eip !72
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !72
  store i1 %152, i1* %ZF, !mcsema_real_eip !72
  %153 = xor i32 %EAX_val.127, 1, !mcsema_real_eip !72
  %154 = xor i32 %153, -1, !mcsema_real_eip !72
  %155 = xor i32 %EAX_val.127, %145, !mcsema_real_eip !72
  %156 = and i32 %154, %155, !mcsema_real_eip !72
  %157 = lshr i32 %156, 31, !mcsema_real_eip !72
  %158 = and i32 %157, 1, !mcsema_real_eip !72
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !72
  store i1 %159, i1* %OF, !mcsema_real_eip !72
  %160 = trunc i32 %145 to i8, !mcsema_real_eip !72
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !72
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !72
  %163 = xor i1 %162, true, !mcsema_real_eip !72
  store i1 %163, i1* %PF, !mcsema_real_eip !72
  %164 = icmp ult i32 %145, %EAX_val.127, !mcsema_real_eip !72
  store i1 %164, i1* %CF, !mcsema_real_eip !72
  %165 = zext i32 %145 to i64, !mcsema_real_eip !72
  store i64 %165, i64* %XAX, !mcsema_real_eip !72
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !73
  %166 = add i64 %RBP_val.128, -36, !mcsema_real_eip !73
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !73
  %EAX.129 = bitcast i64* %XAX to i32*, !mcsema_real_eip !73
  %EAX_val.130 = load i32, i32* %EAX.129, !mcsema_real_eip !73
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !73
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !73
  store i32 %EAX_val.130, i32* %169, !mcsema_real_eip !73
  br label %block_0xe0, !mcsema_real_eip !74

block_0x10c:                                      ; preds = %block_0xe0
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !75
  %170 = add i64 %RBP_val.131, -40, !mcsema_real_eip !75
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !75
  %172 = ptrtoint i64* %171 to i64, !mcsema_real_eip !75
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !75
  store i32 0, i32* %173, !mcsema_real_eip !75
  br label %block_0x113, !mcsema_real_eip !76

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !76
  %174 = add i64 %RBP_val.132, -40, !mcsema_real_eip !76
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !76
  %176 = ptrtoint i64* %175 to i64, !mcsema_real_eip !76
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !76
  %178 = load i32, i32* %177, !mcsema_real_eip !76
  %179 = sub i32 %178, 10, !mcsema_real_eip !76
  %180 = xor i32 %179, %178, !mcsema_real_eip !76
  %181 = xor i32 %180, 10, !mcsema_real_eip !76
  %182 = and i32 %181, 16, !mcsema_real_eip !76
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !76
  store i1 %183, i1* %AF, !mcsema_real_eip !76
  %184 = trunc i32 %179 to i8, !mcsema_real_eip !76
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !76
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !76
  %187 = xor i1 %186, true, !mcsema_real_eip !76
  store i1 %187, i1* %PF, !mcsema_real_eip !76
  %188 = icmp eq i32 %179, 0, !mcsema_real_eip !76
  store i1 %188, i1* %ZF, !mcsema_real_eip !76
  %189 = lshr i32 %179, 31, !mcsema_real_eip !76
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !76
  store i1 %190, i1* %SF, !mcsema_real_eip !76
  %191 = icmp ult i32 %178, 10, !mcsema_real_eip !76
  store i1 %191, i1* %CF, !mcsema_real_eip !76
  %192 = xor i32 %178, 10, !mcsema_real_eip !76
  %193 = xor i32 %178, %179, !mcsema_real_eip !76
  %194 = and i32 %192, %193, !mcsema_real_eip !76
  %195 = lshr i32 %194, 31, !mcsema_real_eip !76
  %196 = trunc i32 %195 to i1, !mcsema_real_eip !76
  store i1 %196, i1* %OF, !mcsema_real_eip !76
  %197 = load i1, i1* %OF, !mcsema_real_eip !77
  %198 = load i1, i1* %SF, !mcsema_real_eip !77
  %199 = icmp eq i1 %198, %197, !mcsema_real_eip !77
  br i1 %199, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !77

block_0x11d:                                      ; preds = %block_0x113
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !78
  %200 = add i64 %RBP_val.133, -40, !mcsema_real_eip !78
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !78
  %202 = ptrtoint i64* %201 to i64, !mcsema_real_eip !78
  %203 = inttoptr i64 %202 to i32*, !mcsema_real_eip !78
  %204 = load i32, i32* %203, !mcsema_real_eip !78
  %205 = zext i32 %204 to i64, !mcsema_real_eip !78
  store i64 %205, i64* %XAX, !mcsema_real_eip !78
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !79
  %EAX_val.135 = load i32, i32* %EAX.134, !mcsema_real_eip !79
  %206 = add i32 1, %EAX_val.135, !mcsema_real_eip !79
  %207 = xor i32 %206, %EAX_val.135, !mcsema_real_eip !79
  %208 = xor i32 %207, 1, !mcsema_real_eip !79
  %209 = and i32 %208, 16, !mcsema_real_eip !79
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !79
  store i1 %210, i1* %AF, !mcsema_real_eip !79
  %211 = lshr i32 %206, 31, !mcsema_real_eip !79
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !79
  store i1 %212, i1* %SF, !mcsema_real_eip !79
  %213 = icmp eq i32 %206, 0, !mcsema_real_eip !79
  store i1 %213, i1* %ZF, !mcsema_real_eip !79
  %214 = xor i32 %EAX_val.135, 1, !mcsema_real_eip !79
  %215 = xor i32 %214, -1, !mcsema_real_eip !79
  %216 = xor i32 %EAX_val.135, %206, !mcsema_real_eip !79
  %217 = and i32 %215, %216, !mcsema_real_eip !79
  %218 = lshr i32 %217, 31, !mcsema_real_eip !79
  %219 = and i32 %218, 1, !mcsema_real_eip !79
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !79
  store i1 %220, i1* %OF, !mcsema_real_eip !79
  %221 = trunc i32 %206 to i8, !mcsema_real_eip !79
  %222 = call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !79
  %223 = trunc i8 %222 to i1, !mcsema_real_eip !79
  %224 = xor i1 %223, true, !mcsema_real_eip !79
  store i1 %224, i1* %PF, !mcsema_real_eip !79
  %225 = icmp ult i32 %206, %EAX_val.135, !mcsema_real_eip !79
  store i1 %225, i1* %CF, !mcsema_real_eip !79
  %226 = zext i32 %206 to i64, !mcsema_real_eip !79
  store i64 %226, i64* %XAX, !mcsema_real_eip !79
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !80
  %227 = add i64 %RBP_val.136, -32, !mcsema_real_eip !80
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !80
  %229 = load i64, i64* %228, !mcsema_real_eip !80
  store i64 %229, i64* %XCX, !mcsema_real_eip !80
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !81
  %230 = add i64 %RBP_val.137, -40, !mcsema_real_eip !81
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !81
  %232 = ptrtoint i64* %231 to i64, !mcsema_real_eip !81
  %233 = inttoptr i64 %232 to i32*, !mcsema_real_eip !81
  %234 = load i32, i32* %233, !mcsema_real_eip !81
  %235 = sext i32 %234 to i64, !mcsema_real_eip !81
  store i64 %235, i64* %XDX, !mcsema_real_eip !81
  %RCX_val.138 = load i64, i64* %XCX, !mcsema_real_eip !82
  %236 = add i64 %RCX_val.138, 0, !mcsema_real_eip !82
  %RDX_val.139 = load i64, i64* %XDX, !mcsema_real_eip !82
  %237 = mul i64 %RDX_val.139, 4, !mcsema_real_eip !82
  %238 = add i64 %236, %237, !mcsema_real_eip !82
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !82
  %EAX.140 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.141 = load i32, i32* %EAX.140, !mcsema_real_eip !82
  %240 = ptrtoint i64* %239 to i64, !mcsema_real_eip !82
  %241 = inttoptr i64 %240 to i32*, !mcsema_real_eip !82
  store i32 %EAX_val.141, i32* %241, !mcsema_real_eip !82
  %RBP_val.142 = load i64, i64* %XBP, !mcsema_real_eip !83
  %242 = add i64 %RBP_val.142, -40, !mcsema_real_eip !83
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !83
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !83
  %245 = inttoptr i64 %244 to i32*, !mcsema_real_eip !83
  %246 = load i32, i32* %245, !mcsema_real_eip !83
  %247 = zext i32 %246 to i64, !mcsema_real_eip !83
  store i64 %247, i64* %XAX, !mcsema_real_eip !83
  %EAX.143 = bitcast i64* %XAX to i32*, !mcsema_real_eip !84
  %EAX_val.144 = load i32, i32* %EAX.143, !mcsema_real_eip !84
  %248 = add i32 1, %EAX_val.144, !mcsema_real_eip !84
  %249 = xor i32 %248, %EAX_val.144, !mcsema_real_eip !84
  %250 = xor i32 %249, 1, !mcsema_real_eip !84
  %251 = and i32 %250, 16, !mcsema_real_eip !84
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !84
  store i1 %252, i1* %AF, !mcsema_real_eip !84
  %253 = lshr i32 %248, 31, !mcsema_real_eip !84
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !84
  store i1 %254, i1* %SF, !mcsema_real_eip !84
  %255 = icmp eq i32 %248, 0, !mcsema_real_eip !84
  store i1 %255, i1* %ZF, !mcsema_real_eip !84
  %256 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !84
  %257 = xor i32 %256, -1, !mcsema_real_eip !84
  %258 = xor i32 %EAX_val.144, %248, !mcsema_real_eip !84
  %259 = and i32 %257, %258, !mcsema_real_eip !84
  %260 = lshr i32 %259, 31, !mcsema_real_eip !84
  %261 = and i32 %260, 1, !mcsema_real_eip !84
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !84
  store i1 %262, i1* %OF, !mcsema_real_eip !84
  %263 = trunc i32 %248 to i8, !mcsema_real_eip !84
  %264 = call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !84
  %265 = trunc i8 %264 to i1, !mcsema_real_eip !84
  %266 = xor i1 %265, true, !mcsema_real_eip !84
  store i1 %266, i1* %PF, !mcsema_real_eip !84
  %267 = icmp ult i32 %248, %EAX_val.144, !mcsema_real_eip !84
  store i1 %267, i1* %CF, !mcsema_real_eip !84
  %268 = zext i32 %248 to i64, !mcsema_real_eip !84
  store i64 %268, i64* %XAX, !mcsema_real_eip !84
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !85
  %269 = add i64 %RBP_val.145, -40, !mcsema_real_eip !85
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !85
  %EAX.146 = bitcast i64* %XAX to i32*, !mcsema_real_eip !85
  %EAX_val.147 = load i32, i32* %EAX.146, !mcsema_real_eip !85
  %271 = ptrtoint i64* %270 to i64, !mcsema_real_eip !85
  %272 = inttoptr i64 %271 to i32*, !mcsema_real_eip !85
  store i32 %EAX_val.147, i32* %272, !mcsema_real_eip !85
  br label %block_0x113, !mcsema_real_eip !86

block_0x13c:                                      ; preds = %block_0x113
  %273 = zext i32 100 to i64, !mcsema_real_eip !87
  store i64 %273, i64* %XDI, !mcsema_real_eip !87
  %274 = zext i32 200 to i64, !mcsema_real_eip !88
  store i64 %274, i64* %XSI, !mcsema_real_eip !88
  %275 = zext i32 300 to i64, !mcsema_real_eip !89
  store i64 %275, i64* %XDX, !mcsema_real_eip !89
  %276 = zext i32 400 to i64, !mcsema_real_eip !90
  store i64 %276, i64* %XCX, !mcsema_real_eip !90
  %277 = zext i32 500 to i64, !mcsema_real_eip !91
  store i64 %277, i64* %R8, !mcsema_real_eip !91
  %278 = zext i32 600 to i64, !mcsema_real_eip !92
  store i64 %278, i64* %R9, !mcsema_real_eip !92
  %279 = zext i32 10 to i64, !mcsema_real_eip !93
  store i64 %279, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !94
  %280 = add i64 %RBP_val.148, -24, !mcsema_real_eip !94
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !94
  %282 = load i64, i64* %281, !mcsema_real_eip !94
  store i64 %282, i64* %R10, !mcsema_real_eip !94
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !95
  %283 = add i64 %RBP_val.149, -32, !mcsema_real_eip !95
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !95
  %285 = load i64, i64* %284, !mcsema_real_eip !95
  store i64 %285, i64* %R11, !mcsema_real_eip !95
  %RSP_val.150 = load i64, i64* %XSP, !mcsema_real_eip !96
  %286 = add i64 %RSP_val.150, 0, !mcsema_real_eip !96
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !96
  %288 = ptrtoint i64* %287 to i64, !mcsema_real_eip !96
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !96
  store i32 10, i32* %289, !mcsema_real_eip !96
  %RSP_val.151 = load i64, i64* %XSP, !mcsema_real_eip !97
  %290 = add i64 %RSP_val.151, 8, !mcsema_real_eip !97
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !97
  %R10_val.152 = load i64, i64* %R10, !mcsema_real_eip !97
  store i64 %R10_val.152, i64* %291, !mcsema_real_eip !97
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !98
  %292 = add i64 %RSP_val.153, 16, !mcsema_real_eip !98
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !98
  %294 = ptrtoint i64* %293 to i64, !mcsema_real_eip !98
  %295 = inttoptr i64 %294 to i32*, !mcsema_real_eip !98
  store i32 10, i32* %295, !mcsema_real_eip !98
  %RSP_val.154 = load i64, i64* %XSP, !mcsema_real_eip !99
  %296 = add i64 %RSP_val.154, 24, !mcsema_real_eip !99
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !99
  %R11_val.155 = load i64, i64* %R11, !mcsema_real_eip !99
  store i64 %R11_val.155, i64* %297, !mcsema_real_eip !99
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !100
  %298 = add i64 %RBP_val.156, -48, !mcsema_real_eip !100
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !100
  %EAX.157 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.158 = load i32, i32* %EAX.157, !mcsema_real_eip !100
  %300 = ptrtoint i64* %299 to i64, !mcsema_real_eip !100
  %301 = inttoptr i64 %300 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.158, i32* %301, !mcsema_real_eip !100
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !101
  %302 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !101
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !101
  store i64 -4981261766360305936, i64* %303, !mcsema_real_eip !101
  store i64 %302, i64* %XSP, !mcsema_real_eip !101
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !101
  %304 = getelementptr %0, %0* @data_0x1af, i64 0, i32 0, !mcsema_real_eip !102
  %305 = ptrtoint [4 x i8]* %304 to i64, !mcsema_real_eip !102
  %306 = add i64 %305, 0, !mcsema_real_eip !102
  store i64 %306, i64* %XDI, !mcsema_real_eip !102
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !103
  %307 = add i64 %RBP_val.160, -44, !mcsema_real_eip !103
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !103
  %EAX.161 = bitcast i64* %XAX to i32*, !mcsema_real_eip !103
  %EAX_val.162 = load i32, i32* %EAX.161, !mcsema_real_eip !103
  %309 = ptrtoint i64* %308 to i64, !mcsema_real_eip !103
  %310 = inttoptr i64 %309 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.162, i32* %310, !mcsema_real_eip !103
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !104
  %311 = add i64 %RBP_val.163, -44, !mcsema_real_eip !104
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !104
  %313 = ptrtoint i64* %312 to i64, !mcsema_real_eip !104
  %314 = inttoptr i64 %313 to i32*, !mcsema_real_eip !104
  %315 = load i32, i32* %314, !mcsema_real_eip !104
  %316 = zext i32 %315 to i64, !mcsema_real_eip !104
  store i64 %316, i64* %XSI, !mcsema_real_eip !104
  %AL.164 = bitcast i64* %XAX to i8*, !mcsema_real_eip !105
  store i8 0, i8* %AL.164, !mcsema_real_eip !105
  %RDI_val.165 = load i64, i64* %XDI, !mcsema_real_eip !106
  %RSI_val.166 = load i64, i64* %XSI, !mcsema_real_eip !106
  %RDX_val.167 = load i64, i64* %XDX, !mcsema_real_eip !106
  %RCX_val.168 = load i64, i64* %XCX, !mcsema_real_eip !106
  %R8_val.169 = load i64, i64* %R8, !mcsema_real_eip !106
  %R9_val.170 = load i64, i64* %R9, !mcsema_real_eip !106
  %RSP_val.171 = load i64, i64* %XSP, !mcsema_real_eip !106
  %317 = inttoptr i64 %RSP_val.171 to i64*, !mcsema_real_eip !106
  %318 = load i64, i64* %317, !mcsema_real_eip !106
  %319 = add i64 %RSP_val.171, 8, !mcsema_real_eip !106
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !106
  %321 = load i64, i64* %320, !mcsema_real_eip !106
  %322 = add i64 %319, 8, !mcsema_real_eip !106
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !106
  %324 = load i64, i64* %323, !mcsema_real_eip !106
  %325 = add i64 %322, 8, !mcsema_real_eip !106
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !106
  %327 = load i64, i64* %326, !mcsema_real_eip !106
  %328 = add i64 %325, 8, !mcsema_real_eip !106
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !106
  %330 = load i64, i64* %329, !mcsema_real_eip !106
  %331 = add i64 %328, 8, !mcsema_real_eip !106
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !106
  %333 = load i64, i64* %332, !mcsema_real_eip !106
  %334 = add i64 %331, 8, !mcsema_real_eip !106
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !106
  %336 = load i64, i64* %335, !mcsema_real_eip !106
  %337 = add i64 %334, 8, !mcsema_real_eip !106
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !106
  %339 = load i64, i64* %338, !mcsema_real_eip !106
  %340 = add i64 %337, 8, !mcsema_real_eip !106
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !106
  %342 = load i64, i64* %341, !mcsema_real_eip !106
  %343 = add i64 %340, 8, !mcsema_real_eip !106
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !106
  %345 = load i64, i64* %344, !mcsema_real_eip !106
  %RSP_val.172 = load i64, i64* %XSP, !mcsema_real_eip !106
  %346 = sub i64 %RSP_val.172, 8, !mcsema_real_eip !106
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !106
  store i64 -2415393069852865332, i64* %347, !mcsema_real_eip !106
  store i64 %346, i64* %XSP, !mcsema_real_eip !106
  %348 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.165, i64 %RSI_val.166, i64 %RDX_val.167, i64 %RCX_val.168, i64 %R8_val.169, i64 %R9_val.170, i64 %318, i64 %321, i64 %324, i64 %327, i64 %330, i64 %333, i64 %336, i64 %339, i64 %342, i64 %345), !mcsema_real_eip !106
  store i64 %348, i64* %XAX, !mcsema_real_eip !106
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !107
  %349 = add i64 %RBP_val.173, -44, !mcsema_real_eip !107
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !107
  %351 = ptrtoint i64* %350 to i64, !mcsema_real_eip !107
  %352 = inttoptr i64 %351 to i32*, !mcsema_real_eip !107
  %353 = load i32, i32* %352, !mcsema_real_eip !107
  %354 = zext i32 %353 to i64, !mcsema_real_eip !107
  store i64 %354, i64* %XCX, !mcsema_real_eip !107
  %RBP_val.174 = load i64, i64* %XBP, !mcsema_real_eip !108
  %355 = add i64 %RBP_val.174, -52, !mcsema_real_eip !108
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !108
  %EAX.175 = bitcast i64* %XAX to i32*, !mcsema_real_eip !108
  %EAX_val.176 = load i32, i32* %EAX.175, !mcsema_real_eip !108
  %357 = ptrtoint i64* %356 to i64, !mcsema_real_eip !108
  %358 = inttoptr i64 %357 to i32*, !mcsema_real_eip !108
  store i32 %EAX_val.176, i32* %358, !mcsema_real_eip !108
  %ECX.177 = bitcast i64* %XCX to i32*, !mcsema_real_eip !109
  %ECX_val.178 = load i32, i32* %ECX.177, !mcsema_real_eip !109
  %359 = zext i32 %ECX_val.178 to i64, !mcsema_real_eip !109
  store i64 %359, i64* %XAX, !mcsema_real_eip !109
  %RSP_val.179 = load i64, i64* %XSP, !mcsema_real_eip !110
  %360 = add i64 96, %RSP_val.179, !mcsema_real_eip !110
  %361 = xor i64 %360, %RSP_val.179, !mcsema_real_eip !110
  %362 = xor i64 %361, 96, !mcsema_real_eip !110
  %363 = and i64 %362, 16, !mcsema_real_eip !110
  %364 = icmp ne i64 %363, 0, !mcsema_real_eip !110
  store i1 %364, i1* %AF, !mcsema_real_eip !110
  %365 = lshr i64 %360, 63, !mcsema_real_eip !110
  %366 = trunc i64 %365 to i1, !mcsema_real_eip !110
  store i1 %366, i1* %SF, !mcsema_real_eip !110
  %367 = icmp eq i64 %360, 0, !mcsema_real_eip !110
  store i1 %367, i1* %ZF, !mcsema_real_eip !110
  %368 = xor i64 %RSP_val.179, 96, !mcsema_real_eip !110
  %369 = xor i64 %368, -1, !mcsema_real_eip !110
  %370 = xor i64 %RSP_val.179, %360, !mcsema_real_eip !110
  %371 = and i64 %369, %370, !mcsema_real_eip !110
  %372 = lshr i64 %371, 63, !mcsema_real_eip !110
  %373 = and i64 %372, 1, !mcsema_real_eip !110
  %374 = trunc i64 %373 to i1, !mcsema_real_eip !110
  store i1 %374, i1* %OF, !mcsema_real_eip !110
  %375 = trunc i64 %360 to i8, !mcsema_real_eip !110
  %376 = call i8 @llvm.ctpop.i8(i8 %375), !mcsema_real_eip !110
  %377 = trunc i8 %376 to i1, !mcsema_real_eip !110
  %378 = xor i1 %377, true, !mcsema_real_eip !110
  store i1 %378, i1* %PF, !mcsema_real_eip !110
  %379 = icmp ult i64 %360, %RSP_val.179, !mcsema_real_eip !110
  store i1 %379, i1* %CF, !mcsema_real_eip !110
  store i64 %360, i64* %XSP, !mcsema_real_eip !110
  %RSP_val.180 = load i64, i64* %XSP, !mcsema_real_eip !111
  %380 = inttoptr i64 %RSP_val.180 to i64*, !mcsema_real_eip !111
  %381 = load i64, i64* %380, !mcsema_real_eip !111
  store i64 %381, i64* %XBP, !mcsema_real_eip !111
  %382 = add i64 %RSP_val.180, 8, !mcsema_real_eip !111
  store i64 %382, i64* %XSP, !mcsema_real_eip !111
  %RSP_val.181 = load i64, i64* %XSP, !mcsema_real_eip !112
  %383 = add i64 %RSP_val.181, 8, !mcsema_real_eip !112
  %384 = inttoptr i64 %RSP_val.181 to i64*, !mcsema_real_eip !112
  %385 = load i64, i64* %384, !mcsema_real_eip !112
  store i64 %385, i64* %XIP, !mcsema_real_eip !112
  store i64 %383, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

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
!5 = !{i64 5}
!6 = !{i64 9}
!7 = !{i64 13}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 26}
!12 = !{i64 29}
!13 = !{i64 32}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 43}
!17 = !{i64 47}
!18 = !{i64 51}
!19 = !{i64 55}
!20 = !{i64 62}
!21 = !{i64 69}
!22 = !{i64 72}
!23 = !{i64 75}
!24 = !{i64 81}
!25 = !{i64 85}
!26 = !{i64 89}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 103}
!31 = !{i64 106}
!32 = !{i64 109}
!33 = !{i64 112}
!34 = !{i64 115}
!35 = !{i64 118}
!36 = !{i64 123}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 132}
!40 = !{i64 135}
!41 = !{i64 138}
!42 = !{i64 141}
!43 = !{i64 144}
!44 = !{i64 147}
!45 = !{i64 148}
!46 = !{i64 149}
!47 = !{i64 160}
!48 = !{i64 161}
!49 = !{i64 164}
!50 = !{i64 168}
!51 = !{i64 173}
!52 = !{i64 175}
!53 = !{i64 182}
!54 = !{i64 185}
!55 = !{i64 189}
!56 = !{i64 192}
!57 = !{i64 197}
!58 = !{i64 202}
!59 = !{i64 204}
!60 = !{i64 208}
!61 = !{i64 213}
!62 = !{i64 217}
!63 = !{i64 224}
!64 = !{i64 228}
!65 = !{i64 234}
!66 = !{i64 237}
!67 = !{i64 240}
!68 = !{i64 243}
!69 = !{i64 247}
!70 = !{i64 251}
!71 = !{i64 254}
!72 = !{i64 257}
!73 = !{i64 260}
!74 = !{i64 263}
!75 = !{i64 268}
!76 = !{i64 275}
!77 = !{i64 279}
!78 = !{i64 285}
!79 = !{i64 288}
!80 = !{i64 291}
!81 = !{i64 295}
!82 = !{i64 299}
!83 = !{i64 302}
!84 = !{i64 305}
!85 = !{i64 308}
!86 = !{i64 311}
!87 = !{i64 316}
!88 = !{i64 321}
!89 = !{i64 326}
!90 = !{i64 331}
!91 = !{i64 336}
!92 = !{i64 342}
!93 = !{i64 348}
!94 = !{i64 353}
!95 = !{i64 357}
!96 = !{i64 361}
!97 = !{i64 368}
!98 = !{i64 373}
!99 = !{i64 381}
!100 = !{i64 386}
!101 = !{i64 389}
!102 = !{i64 394}
!103 = !{i64 404}
!104 = !{i64 407}
!105 = !{i64 410}
!106 = !{i64 412}
!107 = !{i64 417}
!108 = !{i64 420}
!109 = !{i64 423}
!110 = !{i64 425}
!111 = !{i64 429}
!112 = !{i64 430}
