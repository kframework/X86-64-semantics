; ModuleID = 'Output/test_26_1.clang.bc'
source_filename = "Output/test_26_1.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x176 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x180 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\84\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\E6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = add i64 %RBP_val.3, 24, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = load i64, i64* %4, !mcsema_real_eip !4
  store i64 %5, i64* %XAX, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %6 = add i64 %RBP_val.4, 16, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %8 = load i64, i64* %7, !mcsema_real_eip !5
  store i64 %8, i64* %R10, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.5, -20, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %11 = ptrtoint i64* %10 to i64, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %12, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %13 = add i64 %RBP_val.8, -24, !mcsema_real_eip !7
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !7
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, !mcsema_real_eip !7
  %15 = ptrtoint i64* %14 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %16, !mcsema_real_eip !7
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !8
  %17 = add i64 %RBP_val.11, -28, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !8
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, !mcsema_real_eip !8
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !8
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %20, !mcsema_real_eip !8
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !9
  %21 = add i64 %RBP_val.14, -32, !mcsema_real_eip !9
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !9
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, !mcsema_real_eip !9
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !9
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %24, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !10
  %25 = add i64 %RBP_val.17, -36, !mcsema_real_eip !10
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !10
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, !mcsema_real_eip !10
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !10
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %28, !mcsema_real_eip !10
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !11
  %29 = add i64 %RBP_val.20, -40, !mcsema_real_eip !11
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !11
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, !mcsema_real_eip !11
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !11
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %32, !mcsema_real_eip !11
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !12
  %33 = add i64 %RBP_val.23, -48, !mcsema_real_eip !12
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !12
  %R10_val.24 = load i64, i64* %R10, !mcsema_real_eip !12
  store i64 %R10_val.24, i64* %34, !mcsema_real_eip !12
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !13
  %35 = add i64 %RBP_val.25, -56, !mcsema_real_eip !13
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !13
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !13
  store i64 %RAX_val.26, i64* %36, !mcsema_real_eip !13
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !14
  %37 = add i64 %RBP_val.27, -48, !mcsema_real_eip !14
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !14
  %39 = load i64, i64* %38, !mcsema_real_eip !14
  store i64 %39, i64* %XAX, !mcsema_real_eip !14
  %RAX_val.28 = load i64, i64* %XAX, !mcsema_real_eip !15
  %40 = add i64 %RAX_val.28, 0, !mcsema_real_eip !15
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !15
  %42 = ptrtoint i64* %41 to i64, !mcsema_real_eip !15
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !15
  %44 = load i32, i32* %43, !mcsema_real_eip !15
  %45 = zext i32 %44 to i64, !mcsema_real_eip !15
  store i64 %45, i64* %XCX, !mcsema_real_eip !15
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !16
  %46 = add i64 %RBP_val.29, -56, !mcsema_real_eip !16
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !16
  %48 = load i64, i64* %47, !mcsema_real_eip !16
  store i64 %48, i64* %XAX, !mcsema_real_eip !16
  %RAX_val.30 = load i64, i64* %XAX, !mcsema_real_eip !17
  %49 = add i64 %RAX_val.30, 0, !mcsema_real_eip !17
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !17
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !17
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !17
  %53 = load i32, i32* %52, !mcsema_real_eip !17
  %54 = zext i32 %53 to i64, !mcsema_real_eip !17
  store i64 %54, i64* %XDX, !mcsema_real_eip !17
  %ECX.31 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.32 = load i32, i32* %ECX.31, !mcsema_real_eip !18
  %EDX.33 = bitcast i64* %XDX to i32*, !mcsema_real_eip !18
  %EDX_val.34 = load i32, i32* %EDX.33, !mcsema_real_eip !18
  %55 = add i32 %EDX_val.34, %ECX_val.32, !mcsema_real_eip !18
  %56 = xor i32 %55, %ECX_val.32, !mcsema_real_eip !18
  %57 = xor i32 %56, %EDX_val.34, !mcsema_real_eip !18
  %58 = and i32 %57, 16, !mcsema_real_eip !18
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !18
  store i1 %59, i1* %AF, !mcsema_real_eip !18
  %60 = lshr i32 %55, 31, !mcsema_real_eip !18
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !18
  store i1 %61, i1* %SF, !mcsema_real_eip !18
  %62 = icmp eq i32 %55, 0, !mcsema_real_eip !18
  store i1 %62, i1* %ZF, !mcsema_real_eip !18
  %63 = xor i32 %ECX_val.32, %EDX_val.34, !mcsema_real_eip !18
  %64 = xor i32 %63, -1, !mcsema_real_eip !18
  %65 = xor i32 %ECX_val.32, %55, !mcsema_real_eip !18
  %66 = and i32 %64, %65, !mcsema_real_eip !18
  %67 = lshr i32 %66, 31, !mcsema_real_eip !18
  %68 = and i32 %67, 1, !mcsema_real_eip !18
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !18
  store i1 %69, i1* %OF, !mcsema_real_eip !18
  %70 = trunc i32 %55 to i8, !mcsema_real_eip !18
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !18
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !18
  %73 = xor i1 %72, true, !mcsema_real_eip !18
  store i1 %73, i1* %PF, !mcsema_real_eip !18
  %74 = icmp ult i32 %55, %ECX_val.32, !mcsema_real_eip !18
  store i1 %74, i1* %CF, !mcsema_real_eip !18
  %75 = zext i32 %55 to i64, !mcsema_real_eip !18
  store i64 %75, i64* %XCX, !mcsema_real_eip !18
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !19
  %76 = add i64 %RBP_val.35, -72, !mcsema_real_eip !19
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !19
  %ECX.36 = bitcast i64* %XCX to i32*, !mcsema_real_eip !19
  %ECX_val.37 = load i32, i32* %ECX.36, !mcsema_real_eip !19
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !19
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !19
  store i32 %ECX_val.37, i32* %79, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !20
  %80 = add i64 %RBP_val.38, -48, !mcsema_real_eip !20
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !20
  %82 = load i64, i64* %81, !mcsema_real_eip !20
  store i64 %82, i64* %XAX, !mcsema_real_eip !20
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !21
  %83 = add i64 %RAX_val.39, 4, !mcsema_real_eip !21
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !21
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !21
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !21
  %87 = load i32, i32* %86, !mcsema_real_eip !21
  %88 = zext i32 %87 to i64, !mcsema_real_eip !21
  store i64 %88, i64* %XCX, !mcsema_real_eip !21
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !22
  %89 = add i64 %RBP_val.40, -56, !mcsema_real_eip !22
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !22
  %91 = load i64, i64* %90, !mcsema_real_eip !22
  store i64 %91, i64* %XAX, !mcsema_real_eip !22
  %RAX_val.41 = load i64, i64* %XAX, !mcsema_real_eip !23
  %92 = add i64 %RAX_val.41, 4, !mcsema_real_eip !23
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !23
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !23
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !23
  %96 = load i32, i32* %95, !mcsema_real_eip !23
  %97 = zext i32 %96 to i64, !mcsema_real_eip !23
  store i64 %97, i64* %XDX, !mcsema_real_eip !23
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !24
  %ECX_val.43 = load i32, i32* %ECX.42, !mcsema_real_eip !24
  %EDX.44 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %EDX_val.45 = load i32, i32* %EDX.44, !mcsema_real_eip !24
  %98 = add i32 %EDX_val.45, %ECX_val.43, !mcsema_real_eip !24
  %99 = xor i32 %98, %ECX_val.43, !mcsema_real_eip !24
  %100 = xor i32 %99, %EDX_val.45, !mcsema_real_eip !24
  %101 = and i32 %100, 16, !mcsema_real_eip !24
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !24
  store i1 %102, i1* %AF, !mcsema_real_eip !24
  %103 = lshr i32 %98, 31, !mcsema_real_eip !24
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !24
  store i1 %104, i1* %SF, !mcsema_real_eip !24
  %105 = icmp eq i32 %98, 0, !mcsema_real_eip !24
  store i1 %105, i1* %ZF, !mcsema_real_eip !24
  %106 = xor i32 %ECX_val.43, %EDX_val.45, !mcsema_real_eip !24
  %107 = xor i32 %106, -1, !mcsema_real_eip !24
  %108 = xor i32 %ECX_val.43, %98, !mcsema_real_eip !24
  %109 = and i32 %107, %108, !mcsema_real_eip !24
  %110 = lshr i32 %109, 31, !mcsema_real_eip !24
  %111 = and i32 %110, 1, !mcsema_real_eip !24
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !24
  store i1 %112, i1* %OF, !mcsema_real_eip !24
  %113 = trunc i32 %98 to i8, !mcsema_real_eip !24
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !24
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !24
  %116 = xor i1 %115, true, !mcsema_real_eip !24
  store i1 %116, i1* %PF, !mcsema_real_eip !24
  %117 = icmp ult i32 %98, %ECX_val.43, !mcsema_real_eip !24
  store i1 %117, i1* %CF, !mcsema_real_eip !24
  %118 = zext i32 %98 to i64, !mcsema_real_eip !24
  store i64 %118, i64* %XCX, !mcsema_real_eip !24
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !25
  %119 = add i64 %RBP_val.46, -68, !mcsema_real_eip !25
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !25
  %ECX.47 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  %ECX_val.48 = load i32, i32* %ECX.47, !mcsema_real_eip !25
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !25
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !25
  store i32 %ECX_val.48, i32* %122, !mcsema_real_eip !25
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !26
  %123 = add i64 %RBP_val.49, -48, !mcsema_real_eip !26
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !26
  %125 = load i64, i64* %124, !mcsema_real_eip !26
  store i64 %125, i64* %XAX, !mcsema_real_eip !26
  %RAX_val.50 = load i64, i64* %XAX, !mcsema_real_eip !27
  %126 = add i64 %RAX_val.50, 8, !mcsema_real_eip !27
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !27
  %128 = ptrtoint i64* %127 to i64, !mcsema_real_eip !27
  %129 = inttoptr i64 %128 to i32*, !mcsema_real_eip !27
  %130 = load i32, i32* %129, !mcsema_real_eip !27
  %131 = zext i32 %130 to i64, !mcsema_real_eip !27
  store i64 %131, i64* %XCX, !mcsema_real_eip !27
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !28
  %132 = add i64 %RBP_val.51, -56, !mcsema_real_eip !28
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !28
  %134 = load i64, i64* %133, !mcsema_real_eip !28
  store i64 %134, i64* %XAX, !mcsema_real_eip !28
  %RAX_val.52 = load i64, i64* %XAX, !mcsema_real_eip !29
  %135 = add i64 %RAX_val.52, 8, !mcsema_real_eip !29
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !29
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !29
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !29
  %139 = load i32, i32* %138, !mcsema_real_eip !29
  %140 = zext i32 %139 to i64, !mcsema_real_eip !29
  store i64 %140, i64* %XDX, !mcsema_real_eip !29
  %ECX.53 = bitcast i64* %XCX to i32*, !mcsema_real_eip !30
  %ECX_val.54 = load i32, i32* %ECX.53, !mcsema_real_eip !30
  %EDX.55 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.56 = load i32, i32* %EDX.55, !mcsema_real_eip !30
  %141 = add i32 %EDX_val.56, %ECX_val.54, !mcsema_real_eip !30
  %142 = xor i32 %141, %ECX_val.54, !mcsema_real_eip !30
  %143 = xor i32 %142, %EDX_val.56, !mcsema_real_eip !30
  %144 = and i32 %143, 16, !mcsema_real_eip !30
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !30
  store i1 %145, i1* %AF, !mcsema_real_eip !30
  %146 = lshr i32 %141, 31, !mcsema_real_eip !30
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !30
  store i1 %147, i1* %SF, !mcsema_real_eip !30
  %148 = icmp eq i32 %141, 0, !mcsema_real_eip !30
  store i1 %148, i1* %ZF, !mcsema_real_eip !30
  %149 = xor i32 %ECX_val.54, %EDX_val.56, !mcsema_real_eip !30
  %150 = xor i32 %149, -1, !mcsema_real_eip !30
  %151 = xor i32 %ECX_val.54, %141, !mcsema_real_eip !30
  %152 = and i32 %150, %151, !mcsema_real_eip !30
  %153 = lshr i32 %152, 31, !mcsema_real_eip !30
  %154 = and i32 %153, 1, !mcsema_real_eip !30
  %155 = trunc i32 %154 to i1, !mcsema_real_eip !30
  store i1 %155, i1* %OF, !mcsema_real_eip !30
  %156 = trunc i32 %141 to i8, !mcsema_real_eip !30
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !30
  %158 = trunc i8 %157 to i1, !mcsema_real_eip !30
  %159 = xor i1 %158, true, !mcsema_real_eip !30
  store i1 %159, i1* %PF, !mcsema_real_eip !30
  %160 = icmp ult i32 %141, %ECX_val.54, !mcsema_real_eip !30
  store i1 %160, i1* %CF, !mcsema_real_eip !30
  %161 = zext i32 %141 to i64, !mcsema_real_eip !30
  store i64 %161, i64* %XCX, !mcsema_real_eip !30
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !31
  %162 = add i64 %RBP_val.57, -64, !mcsema_real_eip !31
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !31
  %ECX.58 = bitcast i64* %XCX to i32*, !mcsema_real_eip !31
  %ECX_val.59 = load i32, i32* %ECX.58, !mcsema_real_eip !31
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !31
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !31
  store i32 %ECX_val.59, i32* %165, !mcsema_real_eip !31
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !32
  %166 = add i64 %RBP_val.60, -64, !mcsema_real_eip !32
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !32
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !32
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !32
  %170 = load i32, i32* %169, !mcsema_real_eip !32
  %171 = zext i32 %170 to i64, !mcsema_real_eip !32
  store i64 %171, i64* %XCX, !mcsema_real_eip !32
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !33
  %172 = add i64 %RBP_val.61, -8, !mcsema_real_eip !33
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !33
  %ECX.62 = bitcast i64* %XCX to i32*, !mcsema_real_eip !33
  %ECX_val.63 = load i32, i32* %ECX.62, !mcsema_real_eip !33
  %174 = ptrtoint i64* %173 to i64, !mcsema_real_eip !33
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !33
  store i32 %ECX_val.63, i32* %175, !mcsema_real_eip !33
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !34
  %176 = add i64 %RBP_val.64, -72, !mcsema_real_eip !34
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !34
  %178 = load i64, i64* %177, !mcsema_real_eip !34
  store i64 %178, i64* %XAX, !mcsema_real_eip !34
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !35
  %179 = add i64 %RBP_val.65, -16, !mcsema_real_eip !35
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !35
  %RAX_val.66 = load i64, i64* %XAX, !mcsema_real_eip !35
  store i64 %RAX_val.66, i64* %180, !mcsema_real_eip !35
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !36
  %181 = add i64 %RBP_val.67, -8, !mcsema_real_eip !36
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !36
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !36
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !36
  %185 = load i32, i32* %184, !mcsema_real_eip !36
  %186 = zext i32 %185 to i64, !mcsema_real_eip !36
  store i64 %186, i64* %XCX, !mcsema_real_eip !36
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !37
  %187 = add i64 %RBP_val.68, -80, !mcsema_real_eip !37
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !37
  %ECX.69 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.70 = load i32, i32* %ECX.69, !mcsema_real_eip !37
  %189 = ptrtoint i64* %188 to i64, !mcsema_real_eip !37
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.70, i32* %190, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !38
  %191 = add i64 %RBP_val.71, -16, !mcsema_real_eip !38
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !38
  %193 = load i64, i64* %192, !mcsema_real_eip !38
  store i64 %193, i64* %XAX, !mcsema_real_eip !38
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !39
  %194 = add i64 %RBP_val.72, -88, !mcsema_real_eip !39
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !39
  %RAX_val.73 = load i64, i64* %XAX, !mcsema_real_eip !39
  store i64 %RAX_val.73, i64* %195, !mcsema_real_eip !39
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !40
  %196 = add i64 %RBP_val.74, -88, !mcsema_real_eip !40
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !40
  %198 = load i64, i64* %197, !mcsema_real_eip !40
  store i64 %198, i64* %XAX, !mcsema_real_eip !40
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !41
  %199 = add i64 %RBP_val.75, -80, !mcsema_real_eip !41
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !41
  %201 = ptrtoint i64* %200 to i64, !mcsema_real_eip !41
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !41
  %203 = load i32, i32* %202, !mcsema_real_eip !41
  %204 = zext i32 %203 to i64, !mcsema_real_eip !41
  store i64 %204, i64* %XDX, !mcsema_real_eip !41
  %RSP_val.76 = load i64, i64* %XSP, !mcsema_real_eip !42
  %205 = inttoptr i64 %RSP_val.76 to i64*, !mcsema_real_eip !42
  %206 = load i64, i64* %205, !mcsema_real_eip !42
  store i64 %206, i64* %XBP, !mcsema_real_eip !42
  %207 = add i64 %RSP_val.76, 8, !mcsema_real_eip !42
  store i64 %207, i64* %XSP, !mcsema_real_eip !42
  %RSP_val.77 = load i64, i64* %XSP, !mcsema_real_eip !43
  %208 = add i64 %RSP_val.77, 8, !mcsema_real_eip !43
  %209 = inttoptr i64 %RSP_val.77 to i64*, !mcsema_real_eip !43
  %210 = load i64, i64* %209, !mcsema_real_eip !43
  store i64 %210, i64* %XIP, !mcsema_real_eip !43
  store i64 %208, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !44
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !44
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !44
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !44
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !44
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !44
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !44
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !44
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !44
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !44
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !44
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !44
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !44
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !44
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !44
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !44
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !44
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !44
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !44
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !44
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !44
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !44
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !44
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !44
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !44
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !44
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !44
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !44
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !44
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !44
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !44
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !44
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !44
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !44
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !44
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !44
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !44
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !44
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !44
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !44
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !44
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !44
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !44
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !44
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !44
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !44
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !44
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !44
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !44
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !44
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !44
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !44
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !44
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !44
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !44
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !44
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !44
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !44
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !44
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !44
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !44
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !44
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !44
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !44
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !44
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !44
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !44
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !44
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !44
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !44
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !44
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !44
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !44
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !44
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !44
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !44
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !44
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !44
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !44
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !44
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !44
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !44
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !44
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !44
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !44
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !44
  br label %block_0x90, !mcsema_real_eip !44

block_0x90:                                       ; preds = %entry
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !44
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !44
  %1 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !44
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !44
  store i64 %RBP_val.78, i64* %2, !mcsema_real_eip !44
  store i64 %1, i64* %XSP, !mcsema_real_eip !44
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !45
  store i64 %RSP_val.80, i64* %XBP, !mcsema_real_eip !45
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !46
  %3 = sext i8 112 to i64, !mcsema_real_eip !46
  %4 = sub i64 %RSP_val.81, %3, !mcsema_real_eip !46
  %5 = xor i64 %4, %RSP_val.81, !mcsema_real_eip !46
  %6 = xor i64 %5, %3, !mcsema_real_eip !46
  %7 = and i64 %6, 16, !mcsema_real_eip !46
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !46
  store i1 %8, i1* %AF, !mcsema_real_eip !46
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !46
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !46
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !46
  %12 = xor i1 %11, true, !mcsema_real_eip !46
  store i1 %12, i1* %PF, !mcsema_real_eip !46
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !46
  store i1 %13, i1* %ZF, !mcsema_real_eip !46
  %14 = lshr i64 %4, 63, !mcsema_real_eip !46
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !46
  store i1 %15, i1* %SF, !mcsema_real_eip !46
  %16 = icmp ult i64 %RSP_val.81, %3, !mcsema_real_eip !46
  store i1 %16, i1* %CF, !mcsema_real_eip !46
  %17 = xor i64 %RSP_val.81, %3, !mcsema_real_eip !46
  %18 = xor i64 %RSP_val.81, %4, !mcsema_real_eip !46
  %19 = and i64 %17, %18, !mcsema_real_eip !46
  %20 = lshr i64 %19, 63, !mcsema_real_eip !46
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !46
  store i1 %21, i1* %OF, !mcsema_real_eip !46
  store i64 %4, i64* %XSP, !mcsema_real_eip !46
  %22 = getelementptr %0, %0* @data_0x176, i64 0, i32 0, !mcsema_real_eip !47
  %23 = ptrtoint [4 x i8]* %22 to i64, !mcsema_real_eip !47
  %24 = add i64 %23, 0, !mcsema_real_eip !47
  store i64 %24, i64* %XDI, !mcsema_real_eip !47
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !48
  %25 = add i64 %RBP_val.82, -4, !mcsema_real_eip !48
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !48
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !48
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %28, !mcsema_real_eip !48
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !49
  %29 = add i64 %RBP_val.83, -16, !mcsema_real_eip !49
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !49
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !49
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !49
  store i32 10, i32* %32, !mcsema_real_eip !49
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !50
  %33 = add i64 %RBP_val.84, -12, !mcsema_real_eip !50
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !50
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !50
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !50
  store i32 10, i32* %36, !mcsema_real_eip !50
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !51
  %37 = add i64 %RBP_val.85, -8, !mcsema_real_eip !51
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !51
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !51
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %40, !mcsema_real_eip !51
  %41 = zext i32 24 to i64, !mcsema_real_eip !52
  store i64 %41, i64* %XAX, !mcsema_real_eip !52
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !53
  %42 = zext i32 %EAX_val.87 to i64, !mcsema_real_eip !53
  store i64 %42, i64* %XCX, !mcsema_real_eip !53
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !54
  %43 = add i64 %RBP_val.88, -72, !mcsema_real_eip !54
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !54
  %RDI_val.89 = load i64, i64* %XDI, !mcsema_real_eip !54
  store i64 %RDI_val.89, i64* %44, !mcsema_real_eip !54
  %RCX_val.90 = load i64, i64* %XCX, !mcsema_real_eip !55
  store i64 %RCX_val.90, i64* %XDI, !mcsema_real_eip !55
  %RDI_val.91 = load i64, i64* %XDI, !mcsema_real_eip !56
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !56
  %45 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !56
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !56
  store i64 -2415393069852865332, i64* %46, !mcsema_real_eip !56
  store i64 %45, i64* %XSP, !mcsema_real_eip !56
  %47 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.91), !mcsema_real_eip !56
  store i64 %47, i64* %XAX, !mcsema_real_eip !56
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !57
  %48 = add i64 %RBP_val.93, -24, !mcsema_real_eip !57
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !57
  %RAX_val.94 = load i64, i64* %XAX, !mcsema_real_eip !57
  store i64 %RAX_val.94, i64* %49, !mcsema_real_eip !57
  %RBP_val.95 = load i64, i64* %XBP, !mcsema_real_eip !58
  %50 = add i64 %RBP_val.95, -24, !mcsema_real_eip !58
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !58
  %52 = load i64, i64* %51, !mcsema_real_eip !58
  store i64 %52, i64* %XAX, !mcsema_real_eip !58
  %RAX_val.96 = load i64, i64* %XAX, !mcsema_real_eip !59
  %53 = add i64 %RAX_val.96, 0, !mcsema_real_eip !59
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !59
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !59
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !59
  store i32 5, i32* %56, !mcsema_real_eip !59
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !60
  %57 = add i64 %RBP_val.97, -24, !mcsema_real_eip !60
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !60
  %59 = load i64, i64* %58, !mcsema_real_eip !60
  store i64 %59, i64* %XAX, !mcsema_real_eip !60
  %RAX_val.98 = load i64, i64* %XAX, !mcsema_real_eip !61
  %60 = add i64 %RAX_val.98, 4, !mcsema_real_eip !61
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !61
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !61
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !61
  store i32 5, i32* %63, !mcsema_real_eip !61
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !62
  %64 = add i64 %RBP_val.99, -24, !mcsema_real_eip !62
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !62
  %66 = load i64, i64* %65, !mcsema_real_eip !62
  store i64 %66, i64* %XAX, !mcsema_real_eip !62
  %RAX_val.100 = load i64, i64* %XAX, !mcsema_real_eip !63
  %67 = add i64 %RAX_val.100, 8, !mcsema_real_eip !63
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !63
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !63
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !63
  store i32 5, i32* %70, !mcsema_real_eip !63
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !64
  %71 = add i64 %RBP_val.101, -24, !mcsema_real_eip !64
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !64
  %73 = load i64, i64* %72, !mcsema_real_eip !64
  store i64 %73, i64* %XAX, !mcsema_real_eip !64
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !65
  store i64 %RSP_val.102, i64* %XCX, !mcsema_real_eip !65
  %RCX_val.103 = load i64, i64* %XCX, !mcsema_real_eip !66
  %74 = add i64 %RCX_val.103, 8, !mcsema_real_eip !66
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !66
  %RAX_val.104 = load i64, i64* %XAX, !mcsema_real_eip !66
  store i64 %RAX_val.104, i64* %75, !mcsema_real_eip !66
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !67
  %76 = add i64 %RBP_val.105, -16, !mcsema_real_eip !67
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !67
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !67
  store i64 %78, i64* %XAX, !mcsema_real_eip !67
  %RCX_val.106 = load i64, i64* %XCX, !mcsema_real_eip !68
  %79 = add i64 %RCX_val.106, 0, !mcsema_real_eip !68
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !68
  %RAX_val.107 = load i64, i64* %XAX, !mcsema_real_eip !68
  store i64 %RAX_val.107, i64* %80, !mcsema_real_eip !68
  %81 = zext i32 1 to i64, !mcsema_real_eip !69
  store i64 %81, i64* %XDX, !mcsema_real_eip !69
  %82 = zext i32 2 to i64, !mcsema_real_eip !70
  store i64 %82, i64* %XSI, !mcsema_real_eip !70
  %83 = zext i32 3 to i64, !mcsema_real_eip !71
  store i64 %83, i64* %R8, !mcsema_real_eip !71
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !72
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !72
  %84 = zext i32 %EDX_val.109 to i64, !mcsema_real_eip !72
  store i64 %84, i64* %XDI, !mcsema_real_eip !72
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !73
  %85 = add i64 %RBP_val.110, -76, !mcsema_real_eip !73
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !73
  %ESI.111 = bitcast i64* %XSI to i32*, !mcsema_real_eip !73
  %ESI_val.112 = load i32, i32* %ESI.111, !mcsema_real_eip !73
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !73
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !73
  store i32 %ESI_val.112, i32* %88, !mcsema_real_eip !73
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !74
  %89 = add i64 %RBP_val.113, -80, !mcsema_real_eip !74
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !74
  %EDX.114 = bitcast i64* %XDX to i32*, !mcsema_real_eip !74
  %EDX_val.115 = load i32, i32* %EDX.114, !mcsema_real_eip !74
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !74
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !74
  store i32 %EDX_val.115, i32* %92, !mcsema_real_eip !74
  %R8D.116 = bitcast i64* %R8 to i32*, !mcsema_real_eip !75
  %R8D_val.117 = load i32, i32* %R8D.116, !mcsema_real_eip !75
  %93 = zext i32 %R8D_val.117 to i64, !mcsema_real_eip !75
  store i64 %93, i64* %XDX, !mcsema_real_eip !75
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !76
  %94 = add i64 %RBP_val.118, -80, !mcsema_real_eip !76
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !76
  %96 = ptrtoint i64* %95 to i64, !mcsema_real_eip !76
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !76
  %98 = load i32, i32* %97, !mcsema_real_eip !76
  %99 = zext i32 %98 to i64, !mcsema_real_eip !76
  store i64 %99, i64* %XCX, !mcsema_real_eip !76
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !77
  %100 = add i64 %RBP_val.119, -76, !mcsema_real_eip !77
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !77
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !77
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !77
  %104 = load i32, i32* %103, !mcsema_real_eip !77
  %105 = zext i32 %104 to i64, !mcsema_real_eip !77
  store i64 %105, i64* %R9, !mcsema_real_eip !77
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !78
  %106 = add i64 %RBP_val.120, -84, !mcsema_real_eip !78
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !78
  %R8D.121 = bitcast i64* %R8 to i32*, !mcsema_real_eip !78
  %R8D_val.122 = load i32, i32* %R8D.121, !mcsema_real_eip !78
  %108 = ptrtoint i64* %107 to i64, !mcsema_real_eip !78
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !78
  store i32 %R8D_val.122, i32* %109, !mcsema_real_eip !78
  %R9D.123 = bitcast i64* %R9 to i32*, !mcsema_real_eip !79
  %R9D_val.124 = load i32, i32* %R9D.123, !mcsema_real_eip !79
  %110 = zext i32 %R9D_val.124 to i64, !mcsema_real_eip !79
  store i64 %110, i64* %R8, !mcsema_real_eip !79
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !80
  %111 = add i64 %RBP_val.125, -84, !mcsema_real_eip !80
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !80
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !80
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !80
  %115 = load i32, i32* %114, !mcsema_real_eip !80
  %116 = zext i32 %115 to i64, !mcsema_real_eip !80
  store i64 %116, i64* %R9, !mcsema_real_eip !80
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !81
  %117 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !81
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !81
  store i64 -4981261766360305936, i64* %118, !mcsema_real_eip !81
  store i64 %117, i64* %XSP, !mcsema_real_eip !81
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !81
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !82
  %119 = add i64 %RBP_val.127, -48, !mcsema_real_eip !82
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !82
  %EDX.128 = bitcast i64* %XDX to i32*, !mcsema_real_eip !82
  %EDX_val.129 = load i32, i32* %EDX.128, !mcsema_real_eip !82
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !82
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !82
  store i32 %EDX_val.129, i32* %122, !mcsema_real_eip !82
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !83
  %123 = add i64 %RBP_val.130, -56, !mcsema_real_eip !83
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !83
  %RAX_val.131 = load i64, i64* %XAX, !mcsema_real_eip !83
  store i64 %RAX_val.131, i64* %124, !mcsema_real_eip !83
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !84
  %125 = add i64 %RBP_val.132, -56, !mcsema_real_eip !84
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !84
  %127 = load i64, i64* %126, !mcsema_real_eip !84
  store i64 %127, i64* %XAX, !mcsema_real_eip !84
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !85
  %128 = add i64 %RBP_val.133, -40, !mcsema_real_eip !85
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !85
  %RAX_val.134 = load i64, i64* %XAX, !mcsema_real_eip !85
  store i64 %RAX_val.134, i64* %129, !mcsema_real_eip !85
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !86
  %130 = add i64 %RBP_val.135, -48, !mcsema_real_eip !86
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !86
  %132 = ptrtoint i64* %131 to i64, !mcsema_real_eip !86
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !86
  %134 = load i32, i32* %133, !mcsema_real_eip !86
  %135 = zext i32 %134 to i64, !mcsema_real_eip !86
  store i64 %135, i64* %XCX, !mcsema_real_eip !86
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !87
  %136 = add i64 %RBP_val.136, -32, !mcsema_real_eip !87
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !87
  %ECX.137 = bitcast i64* %XCX to i32*, !mcsema_real_eip !87
  %ECX_val.138 = load i32, i32* %ECX.137, !mcsema_real_eip !87
  %138 = ptrtoint i64* %137 to i64, !mcsema_real_eip !87
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !87
  store i32 %ECX_val.138, i32* %139, !mcsema_real_eip !87
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !88
  %140 = add i64 %RBP_val.139, -40, !mcsema_real_eip !88
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !88
  %142 = ptrtoint i64* %141 to i64, !mcsema_real_eip !88
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !88
  %144 = load i32, i32* %143, !mcsema_real_eip !88
  %145 = zext i32 %144 to i64, !mcsema_real_eip !88
  store i64 %145, i64* %XCX, !mcsema_real_eip !88
  %RBP_val.140 = load i64, i64* %XBP, !mcsema_real_eip !89
  %146 = add i64 %RBP_val.140, -36, !mcsema_real_eip !89
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !89
  %148 = ptrtoint i64* %147 to i64, !mcsema_real_eip !89
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !89
  %150 = load i32, i32* %149, !mcsema_real_eip !89
  %ECX.141 = bitcast i64* %XCX to i32*, !mcsema_real_eip !89
  %ECX_val.142 = load i32, i32* %ECX.141, !mcsema_real_eip !89
  %151 = add i32 %ECX_val.142, %150, !mcsema_real_eip !89
  %152 = xor i32 %151, %150, !mcsema_real_eip !89
  %153 = xor i32 %152, %ECX_val.142, !mcsema_real_eip !89
  %154 = and i32 %153, 16, !mcsema_real_eip !89
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !89
  store i1 %155, i1* %AF, !mcsema_real_eip !89
  %156 = lshr i32 %151, 31, !mcsema_real_eip !89
  %157 = trunc i32 %156 to i1, !mcsema_real_eip !89
  store i1 %157, i1* %SF, !mcsema_real_eip !89
  %158 = icmp eq i32 %151, 0, !mcsema_real_eip !89
  store i1 %158, i1* %ZF, !mcsema_real_eip !89
  %159 = xor i32 %150, %ECX_val.142, !mcsema_real_eip !89
  %160 = xor i32 %159, -1, !mcsema_real_eip !89
  %161 = xor i32 %150, %151, !mcsema_real_eip !89
  %162 = and i32 %160, %161, !mcsema_real_eip !89
  %163 = lshr i32 %162, 31, !mcsema_real_eip !89
  %164 = and i32 %163, 1, !mcsema_real_eip !89
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !89
  store i1 %165, i1* %OF, !mcsema_real_eip !89
  %166 = trunc i32 %151 to i8, !mcsema_real_eip !89
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !89
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !89
  %169 = xor i1 %168, true, !mcsema_real_eip !89
  store i1 %169, i1* %PF, !mcsema_real_eip !89
  %170 = icmp ult i32 %151, %150, !mcsema_real_eip !89
  store i1 %170, i1* %CF, !mcsema_real_eip !89
  %171 = zext i32 %151 to i64, !mcsema_real_eip !89
  store i64 %171, i64* %XCX, !mcsema_real_eip !89
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !90
  %172 = add i64 %RBP_val.143, -32, !mcsema_real_eip !90
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !90
  %174 = ptrtoint i64* %173 to i64, !mcsema_real_eip !90
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !90
  %176 = load i32, i32* %175, !mcsema_real_eip !90
  %ECX.144 = bitcast i64* %XCX to i32*, !mcsema_real_eip !90
  %ECX_val.145 = load i32, i32* %ECX.144, !mcsema_real_eip !90
  %177 = add i32 %ECX_val.145, %176, !mcsema_real_eip !90
  %178 = xor i32 %177, %176, !mcsema_real_eip !90
  %179 = xor i32 %178, %ECX_val.145, !mcsema_real_eip !90
  %180 = and i32 %179, 16, !mcsema_real_eip !90
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !90
  store i1 %181, i1* %AF, !mcsema_real_eip !90
  %182 = lshr i32 %177, 31, !mcsema_real_eip !90
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !90
  store i1 %183, i1* %SF, !mcsema_real_eip !90
  %184 = icmp eq i32 %177, 0, !mcsema_real_eip !90
  store i1 %184, i1* %ZF, !mcsema_real_eip !90
  %185 = xor i32 %176, %ECX_val.145, !mcsema_real_eip !90
  %186 = xor i32 %185, -1, !mcsema_real_eip !90
  %187 = xor i32 %176, %177, !mcsema_real_eip !90
  %188 = and i32 %186, %187, !mcsema_real_eip !90
  %189 = lshr i32 %188, 31, !mcsema_real_eip !90
  %190 = and i32 %189, 1, !mcsema_real_eip !90
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !90
  store i1 %191, i1* %OF, !mcsema_real_eip !90
  %192 = trunc i32 %177 to i8, !mcsema_real_eip !90
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !90
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !90
  %195 = xor i1 %194, true, !mcsema_real_eip !90
  store i1 %195, i1* %PF, !mcsema_real_eip !90
  %196 = icmp ult i32 %177, %176, !mcsema_real_eip !90
  store i1 %196, i1* %CF, !mcsema_real_eip !90
  %197 = zext i32 %177 to i64, !mcsema_real_eip !90
  store i64 %197, i64* %XCX, !mcsema_real_eip !90
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !91
  %198 = add i64 %RBP_val.146, -60, !mcsema_real_eip !91
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !91
  %ECX.147 = bitcast i64* %XCX to i32*, !mcsema_real_eip !91
  %ECX_val.148 = load i32, i32* %ECX.147, !mcsema_real_eip !91
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !91
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !91
  store i32 %ECX_val.148, i32* %201, !mcsema_real_eip !91
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !92
  %202 = add i64 %RBP_val.149, -60, !mcsema_real_eip !92
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !92
  %204 = ptrtoint i64* %203 to i64, !mcsema_real_eip !92
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !92
  %206 = load i32, i32* %205, !mcsema_real_eip !92
  %207 = zext i32 %206 to i64, !mcsema_real_eip !92
  store i64 %207, i64* %XSI, !mcsema_real_eip !92
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !93
  %208 = add i64 %RBP_val.150, -72, !mcsema_real_eip !93
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !93
  %210 = load i64, i64* %209, !mcsema_real_eip !93
  store i64 %210, i64* %XDI, !mcsema_real_eip !93
  %AL.151 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  store i8 0, i8* %AL.151, !mcsema_real_eip !94
  %RDI_val.152 = load i64, i64* %XDI, !mcsema_real_eip !95
  %RSI_val.153 = load i64, i64* %XSI, !mcsema_real_eip !95
  %RDX_val.154 = load i64, i64* %XDX, !mcsema_real_eip !95
  %RCX_val.155 = load i64, i64* %XCX, !mcsema_real_eip !95
  %R8_val.156 = load i64, i64* %R8, !mcsema_real_eip !95
  %R9_val.157 = load i64, i64* %R9, !mcsema_real_eip !95
  %RSP_val.158 = load i64, i64* %XSP, !mcsema_real_eip !95
  %211 = inttoptr i64 %RSP_val.158 to i64*, !mcsema_real_eip !95
  %212 = load i64, i64* %211, !mcsema_real_eip !95
  %213 = add i64 %RSP_val.158, 8, !mcsema_real_eip !95
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !95
  %215 = load i64, i64* %214, !mcsema_real_eip !95
  %216 = add i64 %213, 8, !mcsema_real_eip !95
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !95
  %218 = load i64, i64* %217, !mcsema_real_eip !95
  %219 = add i64 %216, 8, !mcsema_real_eip !95
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !95
  %221 = load i64, i64* %220, !mcsema_real_eip !95
  %222 = add i64 %219, 8, !mcsema_real_eip !95
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !95
  %224 = load i64, i64* %223, !mcsema_real_eip !95
  %225 = add i64 %222, 8, !mcsema_real_eip !95
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !95
  %227 = load i64, i64* %226, !mcsema_real_eip !95
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !95
  %228 = sub i64 %RSP_val.159, 8, !mcsema_real_eip !95
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %229, !mcsema_real_eip !95
  store i64 %228, i64* %XSP, !mcsema_real_eip !95
  %230 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.152, i64 %RSI_val.153, i64 %RDX_val.154, i64 %RCX_val.155, i64 %R8_val.156, i64 %R9_val.157, i64 %212, i64 %215, i64 %218, i64 %221, i64 %224, i64 %227), !mcsema_real_eip !95
  store i64 %230, i64* %XAX, !mcsema_real_eip !95
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !96
  %231 = add i64 %RBP_val.160, -60, !mcsema_real_eip !96
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !96
  %233 = ptrtoint i64* %232 to i64, !mcsema_real_eip !96
  %234 = inttoptr i64 %233 to i32*, !mcsema_real_eip !96
  %235 = load i32, i32* %234, !mcsema_real_eip !96
  %236 = zext i32 %235 to i64, !mcsema_real_eip !96
  store i64 %236, i64* %XCX, !mcsema_real_eip !96
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !97
  %237 = add i64 %RBP_val.161, -88, !mcsema_real_eip !97
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !97
  %EAX.162 = bitcast i64* %XAX to i32*, !mcsema_real_eip !97
  %EAX_val.163 = load i32, i32* %EAX.162, !mcsema_real_eip !97
  %239 = ptrtoint i64* %238 to i64, !mcsema_real_eip !97
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !97
  store i32 %EAX_val.163, i32* %240, !mcsema_real_eip !97
  %ECX.164 = bitcast i64* %XCX to i32*, !mcsema_real_eip !98
  %ECX_val.165 = load i32, i32* %ECX.164, !mcsema_real_eip !98
  %241 = zext i32 %ECX_val.165 to i64, !mcsema_real_eip !98
  store i64 %241, i64* %XAX, !mcsema_real_eip !98
  %RSP_val.166 = load i64, i64* %XSP, !mcsema_real_eip !99
  %242 = add i64 112, %RSP_val.166, !mcsema_real_eip !99
  %243 = xor i64 %242, %RSP_val.166, !mcsema_real_eip !99
  %244 = xor i64 %243, 112, !mcsema_real_eip !99
  %245 = and i64 %244, 16, !mcsema_real_eip !99
  %246 = icmp ne i64 %245, 0, !mcsema_real_eip !99
  store i1 %246, i1* %AF, !mcsema_real_eip !99
  %247 = lshr i64 %242, 63, !mcsema_real_eip !99
  %248 = trunc i64 %247 to i1, !mcsema_real_eip !99
  store i1 %248, i1* %SF, !mcsema_real_eip !99
  %249 = icmp eq i64 %242, 0, !mcsema_real_eip !99
  store i1 %249, i1* %ZF, !mcsema_real_eip !99
  %250 = xor i64 %RSP_val.166, 112, !mcsema_real_eip !99
  %251 = xor i64 %250, -1, !mcsema_real_eip !99
  %252 = xor i64 %RSP_val.166, %242, !mcsema_real_eip !99
  %253 = and i64 %251, %252, !mcsema_real_eip !99
  %254 = lshr i64 %253, 63, !mcsema_real_eip !99
  %255 = and i64 %254, 1, !mcsema_real_eip !99
  %256 = trunc i64 %255 to i1, !mcsema_real_eip !99
  store i1 %256, i1* %OF, !mcsema_real_eip !99
  %257 = trunc i64 %242 to i8, !mcsema_real_eip !99
  %258 = call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !99
  %259 = trunc i8 %258 to i1, !mcsema_real_eip !99
  %260 = xor i1 %259, true, !mcsema_real_eip !99
  store i1 %260, i1* %PF, !mcsema_real_eip !99
  %261 = icmp ult i64 %242, %RSP_val.166, !mcsema_real_eip !99
  store i1 %261, i1* %CF, !mcsema_real_eip !99
  store i64 %242, i64* %XSP, !mcsema_real_eip !99
  %RSP_val.167 = load i64, i64* %XSP, !mcsema_real_eip !100
  %262 = inttoptr i64 %RSP_val.167 to i64*, !mcsema_real_eip !100
  %263 = load i64, i64* %262, !mcsema_real_eip !100
  store i64 %263, i64* %XBP, !mcsema_real_eip !100
  %264 = add i64 %RSP_val.167, 8, !mcsema_real_eip !100
  store i64 %264, i64* %XSP, !mcsema_real_eip !100
  %RSP_val.168 = load i64, i64* %XSP, !mcsema_real_eip !101
  %265 = add i64 %RSP_val.168, 8, !mcsema_real_eip !101
  %266 = inttoptr i64 %RSP_val.168 to i64*, !mcsema_real_eip !101
  %267 = load i64, i64* %266, !mcsema_real_eip !101
  store i64 %267, i64* %XIP, !mcsema_real_eip !101
  store i64 %265, i64* %XSP, !mcsema_real_eip !101
  ret void, !mcsema_real_eip !101
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

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
!6 = !{i64 12}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 21}
!10 = !{i64 24}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 36}
!14 = !{i64 40}
!15 = !{i64 44}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 52}
!19 = !{i64 54}
!20 = !{i64 57}
!21 = !{i64 61}
!22 = !{i64 64}
!23 = !{i64 68}
!24 = !{i64 71}
!25 = !{i64 73}
!26 = !{i64 76}
!27 = !{i64 80}
!28 = !{i64 83}
!29 = !{i64 87}
!30 = !{i64 90}
!31 = !{i64 92}
!32 = !{i64 95}
!33 = !{i64 98}
!34 = !{i64 101}
!35 = !{i64 105}
!36 = !{i64 109}
!37 = !{i64 112}
!38 = !{i64 115}
!39 = !{i64 119}
!40 = !{i64 123}
!41 = !{i64 127}
!42 = !{i64 130}
!43 = !{i64 131}
!44 = !{i64 144}
!45 = !{i64 145}
!46 = !{i64 148}
!47 = !{i64 152}
!48 = !{i64 162}
!49 = !{i64 169}
!50 = !{i64 176}
!51 = !{i64 183}
!52 = !{i64 190}
!53 = !{i64 195}
!54 = !{i64 197}
!55 = !{i64 201}
!56 = !{i64 204}
!57 = !{i64 209}
!58 = !{i64 213}
!59 = !{i64 217}
!60 = !{i64 223}
!61 = !{i64 227}
!62 = !{i64 234}
!63 = !{i64 238}
!64 = !{i64 245}
!65 = !{i64 249}
!66 = !{i64 252}
!67 = !{i64 256}
!68 = !{i64 260}
!69 = !{i64 263}
!70 = !{i64 268}
!71 = !{i64 273}
!72 = !{i64 279}
!73 = !{i64 281}
!74 = !{i64 284}
!75 = !{i64 287}
!76 = !{i64 290}
!77 = !{i64 293}
!78 = !{i64 297}
!79 = !{i64 301}
!80 = !{i64 304}
!81 = !{i64 308}
!82 = !{i64 313}
!83 = !{i64 316}
!84 = !{i64 320}
!85 = !{i64 324}
!86 = !{i64 328}
!87 = !{i64 331}
!88 = !{i64 334}
!89 = !{i64 337}
!90 = !{i64 340}
!91 = !{i64 343}
!92 = !{i64 346}
!93 = !{i64 349}
!94 = !{i64 353}
!95 = !{i64 355}
!96 = !{i64 360}
!97 = !{i64 363}
!98 = !{i64 366}
!99 = !{i64 368}
!100 = !{i64 372}
!101 = !{i64 373}
