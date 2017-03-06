; ModuleID = 'Output/test_7.clang.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

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
  %10 = load i64, i64* %9, !mcsema_real_eip !6
  store i64 %10, i64* %R10, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %11 = add i64 %RBP_val.7, 24, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = load i64, i64* %12, !mcsema_real_eip !7
  store i64 %13, i64* %R11, !mcsema_real_eip !7
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !8
  %14 = add i64 %RBP_val.8, 16, !mcsema_real_eip !8
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !8
  %16 = ptrtoint i64* %15 to i64, !mcsema_real_eip !8
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !8
  %18 = load i32, i32* %17, !mcsema_real_eip !8
  %19 = zext i32 %18 to i64, !mcsema_real_eip !8
  store i64 %19, i64* %XBX, !mcsema_real_eip !8
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !9
  %20 = add i64 %RBP_val.9, -12, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %22 = ptrtoint i64* %21 to i64, !mcsema_real_eip !9
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %23, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %24 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !10
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !10
  store i64 %RSI_val.13, i64* %25, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %26 = add i64 %RBP_val.14, -32, !mcsema_real_eip !11
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !11
  %RDX_val.15 = load i64, i64* %XDX, !mcsema_real_eip !11
  store i64 %RDX_val.15, i64* %27, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !12
  %28 = add i64 %RBP_val.16, -40, !mcsema_real_eip !12
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !12
  %RCX_val.17 = load i64, i64* %XCX, !mcsema_real_eip !12
  store i64 %RCX_val.17, i64* %29, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %30 = add i64 %RBP_val.18, -44, !mcsema_real_eip !13
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !13
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !13
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !13
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.20, i32* %33, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !14
  %34 = add i64 %RBP_val.21, -48, !mcsema_real_eip !14
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !14
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !14
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !14
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.23, i32* %37, !mcsema_real_eip !14
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !15
  %38 = add i64 %RBP_val.24, -52, !mcsema_real_eip !15
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !15
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !15
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !15
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.26, i32* %41, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !16
  %42 = add i64 %RBP_val.27, -64, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !16
  %R11_val.28 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.28, i64* %43, !mcsema_real_eip !16
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !17
  %44 = add i64 %RBP_val.29, -72, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !17
  %R10_val.30 = load i64, i64* %R10, !mcsema_real_eip !17
  store i64 %R10_val.30, i64* %45, !mcsema_real_eip !17
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !18
  %46 = add i64 %RBP_val.31, -80, !mcsema_real_eip !18
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !18
  %RAX_val.32 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.32, i64* %47, !mcsema_real_eip !18
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !19
  %48 = add i64 %RBP_val.33, -84, !mcsema_real_eip !19
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !19
  %50 = ptrtoint i64* %49 to i64, !mcsema_real_eip !19
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %51, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %52 = add i64 %RBP_val.34, -12, !mcsema_real_eip !20
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !20
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !20
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !20
  %56 = load i32, i32* %55, !mcsema_real_eip !20
  %57 = zext i32 %56 to i64, !mcsema_real_eip !20
  store i64 %57, i64* %XDI, !mcsema_real_eip !20
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !21
  %58 = add i64 %RBP_val.35, -84, !mcsema_real_eip !21
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !21
  %60 = ptrtoint i64* %59 to i64, !mcsema_real_eip !21
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !21
  %62 = load i32, i32* %61, !mcsema_real_eip !21
  %EDI.36 = bitcast i64* %XDI to i32*, !mcsema_real_eip !21
  %EDI_val.37 = load i32, i32* %EDI.36, !mcsema_real_eip !21
  %63 = add i32 %EDI_val.37, %62, !mcsema_real_eip !21
  %64 = xor i32 %63, %62, !mcsema_real_eip !21
  %65 = xor i32 %64, %EDI_val.37, !mcsema_real_eip !21
  %66 = and i32 %65, 16, !mcsema_real_eip !21
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !21
  store i1 %67, i1* %AF, !mcsema_real_eip !21
  %68 = lshr i32 %63, 31, !mcsema_real_eip !21
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !21
  store i1 %69, i1* %SF, !mcsema_real_eip !21
  %70 = icmp eq i32 %63, 0, !mcsema_real_eip !21
  store i1 %70, i1* %ZF, !mcsema_real_eip !21
  %71 = xor i32 %62, %EDI_val.37, !mcsema_real_eip !21
  %72 = xor i32 %71, -1, !mcsema_real_eip !21
  %73 = xor i32 %62, %63, !mcsema_real_eip !21
  %74 = and i32 %72, %73, !mcsema_real_eip !21
  %75 = lshr i32 %74, 31, !mcsema_real_eip !21
  %76 = and i32 %75, 1, !mcsema_real_eip !21
  %77 = trunc i32 %76 to i1, !mcsema_real_eip !21
  store i1 %77, i1* %OF, !mcsema_real_eip !21
  %78 = trunc i32 %63 to i8, !mcsema_real_eip !21
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !21
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !21
  %81 = xor i1 %80, true, !mcsema_real_eip !21
  store i1 %81, i1* %PF, !mcsema_real_eip !21
  %82 = icmp ult i32 %63, %62, !mcsema_real_eip !21
  store i1 %82, i1* %CF, !mcsema_real_eip !21
  %83 = zext i32 %63 to i64, !mcsema_real_eip !21
  store i64 %83, i64* %XDI, !mcsema_real_eip !21
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !22
  %84 = add i64 %RBP_val.38, -84, !mcsema_real_eip !22
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !22
  %EDI.39 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.40 = load i32, i32* %EDI.39, !mcsema_real_eip !22
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !22
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.40, i32* %87, !mcsema_real_eip !22
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !23
  %88 = add i64 %RBP_val.41, -88, !mcsema_real_eip !23
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !23
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !23
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %91, !mcsema_real_eip !23
  br label %block_0x51, !mcsema_real_eip !24

block_0x51:                                       ; preds = %block_0x5d, %block_0x0
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !24
  %92 = add i64 %RBP_val.42, -88, !mcsema_real_eip !24
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !24
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !24
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !24
  %96 = load i32, i32* %95, !mcsema_real_eip !24
  %97 = zext i32 %96 to i64, !mcsema_real_eip !24
  store i64 %97, i64* %XAX, !mcsema_real_eip !24
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !25
  %98 = add i64 %RBP_val.43, -44, !mcsema_real_eip !25
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !25
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !25
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !25
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !25
  %102 = load i32, i32* %101, !mcsema_real_eip !25
  %103 = sub i32 %EAX_val.45, %102, !mcsema_real_eip !25
  %104 = xor i32 %103, %EAX_val.45, !mcsema_real_eip !25
  %105 = xor i32 %104, %102, !mcsema_real_eip !25
  %106 = and i32 %105, 16, !mcsema_real_eip !25
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !25
  store i1 %107, i1* %AF, !mcsema_real_eip !25
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !25
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !25
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !25
  %111 = xor i1 %110, true, !mcsema_real_eip !25
  store i1 %111, i1* %PF, !mcsema_real_eip !25
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !25
  store i1 %112, i1* %ZF, !mcsema_real_eip !25
  %113 = lshr i32 %103, 31, !mcsema_real_eip !25
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !25
  store i1 %114, i1* %SF, !mcsema_real_eip !25
  %115 = icmp ult i32 %EAX_val.45, %102, !mcsema_real_eip !25
  store i1 %115, i1* %CF, !mcsema_real_eip !25
  %116 = xor i32 %EAX_val.45, %102, !mcsema_real_eip !25
  %117 = xor i32 %EAX_val.45, %103, !mcsema_real_eip !25
  %118 = and i32 %116, %117, !mcsema_real_eip !25
  %119 = lshr i32 %118, 31, !mcsema_real_eip !25
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !25
  store i1 %120, i1* %OF, !mcsema_real_eip !25
  %121 = load i1, i1* %OF, !mcsema_real_eip !26
  %122 = load i1, i1* %SF, !mcsema_real_eip !26
  %123 = icmp eq i1 %122, %121, !mcsema_real_eip !26
  br i1 %123, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !26

block_0x5d:                                       ; preds = %block_0x51
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !27
  %124 = add i64 %RBP_val.46, -24, !mcsema_real_eip !27
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !27
  %126 = load i64, i64* %125, !mcsema_real_eip !27
  store i64 %126, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !28
  %127 = add i64 %RBP_val.47, -88, !mcsema_real_eip !28
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !28
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !28
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !28
  %131 = load i32, i32* %130, !mcsema_real_eip !28
  %132 = sext i32 %131 to i64, !mcsema_real_eip !28
  store i64 %132, i64* %XCX, !mcsema_real_eip !28
  %RAX_val.48 = load i64, i64* %XAX, !mcsema_real_eip !29
  %133 = add i64 %RAX_val.48, 0, !mcsema_real_eip !29
  %RCX_val.49 = load i64, i64* %XCX, !mcsema_real_eip !29
  %134 = mul i64 %RCX_val.49, 4, !mcsema_real_eip !29
  %135 = add i64 %133, %134, !mcsema_real_eip !29
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !29
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !29
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !29
  %139 = load i32, i32* %138, !mcsema_real_eip !29
  %140 = zext i32 %139 to i64, !mcsema_real_eip !29
  store i64 %140, i64* %XDX, !mcsema_real_eip !29
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !30
  %141 = add i64 %RBP_val.50, -84, !mcsema_real_eip !30
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !30
  %143 = ptrtoint i64* %142 to i64, !mcsema_real_eip !30
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !30
  %145 = load i32, i32* %144, !mcsema_real_eip !30
  %EDX.51 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.52 = load i32, i32* %EDX.51, !mcsema_real_eip !30
  %146 = add i32 %EDX_val.52, %145, !mcsema_real_eip !30
  %147 = xor i32 %146, %145, !mcsema_real_eip !30
  %148 = xor i32 %147, %EDX_val.52, !mcsema_real_eip !30
  %149 = and i32 %148, 16, !mcsema_real_eip !30
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !30
  store i1 %150, i1* %AF, !mcsema_real_eip !30
  %151 = lshr i32 %146, 31, !mcsema_real_eip !30
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !30
  store i1 %152, i1* %SF, !mcsema_real_eip !30
  %153 = icmp eq i32 %146, 0, !mcsema_real_eip !30
  store i1 %153, i1* %ZF, !mcsema_real_eip !30
  %154 = xor i32 %145, %EDX_val.52, !mcsema_real_eip !30
  %155 = xor i32 %154, -1, !mcsema_real_eip !30
  %156 = xor i32 %145, %146, !mcsema_real_eip !30
  %157 = and i32 %155, %156, !mcsema_real_eip !30
  %158 = lshr i32 %157, 31, !mcsema_real_eip !30
  %159 = and i32 %158, 1, !mcsema_real_eip !30
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !30
  store i1 %160, i1* %OF, !mcsema_real_eip !30
  %161 = trunc i32 %146 to i8, !mcsema_real_eip !30
  %162 = call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !30
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !30
  %164 = xor i1 %163, true, !mcsema_real_eip !30
  store i1 %164, i1* %PF, !mcsema_real_eip !30
  %165 = icmp ult i32 %146, %145, !mcsema_real_eip !30
  store i1 %165, i1* %CF, !mcsema_real_eip !30
  %166 = zext i32 %146 to i64, !mcsema_real_eip !30
  store i64 %166, i64* %XDX, !mcsema_real_eip !30
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !31
  %167 = add i64 %RBP_val.53, -84, !mcsema_real_eip !31
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !31
  %EDX.54 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.55 = load i32, i32* %EDX.54, !mcsema_real_eip !31
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !31
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !31
  store i32 %EDX_val.55, i32* %170, !mcsema_real_eip !31
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !32
  %171 = add i64 %RBP_val.56, -88, !mcsema_real_eip !32
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !32
  %173 = ptrtoint i64* %172 to i64, !mcsema_real_eip !32
  %174 = inttoptr i64 %173 to i32*, !mcsema_real_eip !32
  %175 = load i32, i32* %174, !mcsema_real_eip !32
  %176 = zext i32 %175 to i64, !mcsema_real_eip !32
  store i64 %176, i64* %XAX, !mcsema_real_eip !32
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !33
  %177 = add i32 1, %EAX_val.58, !mcsema_real_eip !33
  %178 = xor i32 %177, %EAX_val.58, !mcsema_real_eip !33
  %179 = xor i32 %178, 1, !mcsema_real_eip !33
  %180 = and i32 %179, 16, !mcsema_real_eip !33
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !33
  store i1 %181, i1* %AF, !mcsema_real_eip !33
  %182 = lshr i32 %177, 31, !mcsema_real_eip !33
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !33
  store i1 %183, i1* %SF, !mcsema_real_eip !33
  %184 = icmp eq i32 %177, 0, !mcsema_real_eip !33
  store i1 %184, i1* %ZF, !mcsema_real_eip !33
  %185 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !33
  %186 = xor i32 %185, -1, !mcsema_real_eip !33
  %187 = xor i32 %EAX_val.58, %177, !mcsema_real_eip !33
  %188 = and i32 %186, %187, !mcsema_real_eip !33
  %189 = lshr i32 %188, 31, !mcsema_real_eip !33
  %190 = and i32 %189, 1, !mcsema_real_eip !33
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !33
  store i1 %191, i1* %OF, !mcsema_real_eip !33
  %192 = trunc i32 %177 to i8, !mcsema_real_eip !33
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !33
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !33
  %195 = xor i1 %194, true, !mcsema_real_eip !33
  store i1 %195, i1* %PF, !mcsema_real_eip !33
  %196 = icmp ult i32 %177, %EAX_val.58, !mcsema_real_eip !33
  store i1 %196, i1* %CF, !mcsema_real_eip !33
  %197 = zext i32 %177 to i64, !mcsema_real_eip !33
  store i64 %197, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !34
  %198 = add i64 %RBP_val.59, -88, !mcsema_real_eip !34
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !34
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !34
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !34
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.61, i32* %201, !mcsema_real_eip !34
  br label %block_0x51, !mcsema_real_eip !35

block_0x7c:                                       ; preds = %block_0x51
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !36
  %202 = add i64 %RBP_val.62, -32, !mcsema_real_eip !36
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !36
  %204 = load i64, i64* %203, !mcsema_real_eip !36
  store i64 %204, i64* %XAX, !mcsema_real_eip !36
  %RAX_val.63 = load i64, i64* %XAX, !mcsema_real_eip !37
  %205 = add i64 %RAX_val.63, 0, !mcsema_real_eip !37
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !37
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !37
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !37
  %209 = load i32, i32* %208, !mcsema_real_eip !37
  %210 = zext i32 %209 to i64, !mcsema_real_eip !37
  store i64 %210, i64* %XCX, !mcsema_real_eip !37
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !38
  %211 = add i64 %RBP_val.64, -84, !mcsema_real_eip !38
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !38
  %213 = ptrtoint i64* %212 to i64, !mcsema_real_eip !38
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !38
  %215 = load i32, i32* %214, !mcsema_real_eip !38
  %ECX.65 = bitcast i64* %XCX to i32*, !mcsema_real_eip !38
  %ECX_val.66 = load i32, i32* %ECX.65, !mcsema_real_eip !38
  %216 = add i32 %ECX_val.66, %215, !mcsema_real_eip !38
  %217 = xor i32 %216, %215, !mcsema_real_eip !38
  %218 = xor i32 %217, %ECX_val.66, !mcsema_real_eip !38
  %219 = and i32 %218, 16, !mcsema_real_eip !38
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !38
  store i1 %220, i1* %AF, !mcsema_real_eip !38
  %221 = lshr i32 %216, 31, !mcsema_real_eip !38
  %222 = trunc i32 %221 to i1, !mcsema_real_eip !38
  store i1 %222, i1* %SF, !mcsema_real_eip !38
  %223 = icmp eq i32 %216, 0, !mcsema_real_eip !38
  store i1 %223, i1* %ZF, !mcsema_real_eip !38
  %224 = xor i32 %215, %ECX_val.66, !mcsema_real_eip !38
  %225 = xor i32 %224, -1, !mcsema_real_eip !38
  %226 = xor i32 %215, %216, !mcsema_real_eip !38
  %227 = and i32 %225, %226, !mcsema_real_eip !38
  %228 = lshr i32 %227, 31, !mcsema_real_eip !38
  %229 = and i32 %228, 1, !mcsema_real_eip !38
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !38
  store i1 %230, i1* %OF, !mcsema_real_eip !38
  %231 = trunc i32 %216 to i8, !mcsema_real_eip !38
  %232 = call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !38
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !38
  %234 = xor i1 %233, true, !mcsema_real_eip !38
  store i1 %234, i1* %PF, !mcsema_real_eip !38
  %235 = icmp ult i32 %216, %215, !mcsema_real_eip !38
  store i1 %235, i1* %CF, !mcsema_real_eip !38
  %236 = zext i32 %216 to i64, !mcsema_real_eip !38
  store i64 %236, i64* %XCX, !mcsema_real_eip !38
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !39
  %237 = add i64 %RBP_val.67, -84, !mcsema_real_eip !39
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !39
  %ECX.68 = bitcast i64* %XCX to i32*, !mcsema_real_eip !39
  %ECX_val.69 = load i32, i32* %ECX.68, !mcsema_real_eip !39
  %239 = ptrtoint i64* %238 to i64, !mcsema_real_eip !39
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !39
  store i32 %ECX_val.69, i32* %240, !mcsema_real_eip !39
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !40
  %241 = add i64 %RBP_val.70, -92, !mcsema_real_eip !40
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !40
  %243 = ptrtoint i64* %242 to i64, !mcsema_real_eip !40
  %244 = inttoptr i64 %243 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %244, !mcsema_real_eip !40
  br label %block_0x8f, !mcsema_real_eip !41

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !41
  %245 = add i64 %RBP_val.71, -92, !mcsema_real_eip !41
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !41
  %247 = ptrtoint i64* %246 to i64, !mcsema_real_eip !41
  %248 = inttoptr i64 %247 to i32*, !mcsema_real_eip !41
  %249 = load i32, i32* %248, !mcsema_real_eip !41
  %250 = zext i32 %249 to i64, !mcsema_real_eip !41
  store i64 %250, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !42
  %251 = add i64 %RBP_val.72, -48, !mcsema_real_eip !42
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !42
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !42
  %253 = ptrtoint i64* %252 to i64, !mcsema_real_eip !42
  %254 = inttoptr i64 %253 to i32*, !mcsema_real_eip !42
  %255 = load i32, i32* %254, !mcsema_real_eip !42
  %256 = sub i32 %EAX_val.74, %255, !mcsema_real_eip !42
  %257 = xor i32 %256, %EAX_val.74, !mcsema_real_eip !42
  %258 = xor i32 %257, %255, !mcsema_real_eip !42
  %259 = and i32 %258, 16, !mcsema_real_eip !42
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !42
  store i1 %260, i1* %AF, !mcsema_real_eip !42
  %261 = trunc i32 %256 to i8, !mcsema_real_eip !42
  %262 = call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !42
  %263 = trunc i8 %262 to i1, !mcsema_real_eip !42
  %264 = xor i1 %263, true, !mcsema_real_eip !42
  store i1 %264, i1* %PF, !mcsema_real_eip !42
  %265 = icmp eq i32 %256, 0, !mcsema_real_eip !42
  store i1 %265, i1* %ZF, !mcsema_real_eip !42
  %266 = lshr i32 %256, 31, !mcsema_real_eip !42
  %267 = trunc i32 %266 to i1, !mcsema_real_eip !42
  store i1 %267, i1* %SF, !mcsema_real_eip !42
  %268 = icmp ult i32 %EAX_val.74, %255, !mcsema_real_eip !42
  store i1 %268, i1* %CF, !mcsema_real_eip !42
  %269 = xor i32 %EAX_val.74, %255, !mcsema_real_eip !42
  %270 = xor i32 %EAX_val.74, %256, !mcsema_real_eip !42
  %271 = and i32 %269, %270, !mcsema_real_eip !42
  %272 = lshr i32 %271, 31, !mcsema_real_eip !42
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !42
  store i1 %273, i1* %OF, !mcsema_real_eip !42
  %274 = load i1, i1* %OF, !mcsema_real_eip !43
  %275 = load i1, i1* %SF, !mcsema_real_eip !43
  %276 = icmp eq i1 %275, %274, !mcsema_real_eip !43
  br i1 %276, label %block_0xba, label %block_0x9b, !mcsema_real_eip !43

block_0x9b:                                       ; preds = %block_0x8f
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !44
  %277 = add i64 %RBP_val.75, -40, !mcsema_real_eip !44
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !44
  %279 = load i64, i64* %278, !mcsema_real_eip !44
  store i64 %279, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !45
  %280 = add i64 %RBP_val.76, -92, !mcsema_real_eip !45
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !45
  %282 = ptrtoint i64* %281 to i64, !mcsema_real_eip !45
  %283 = inttoptr i64 %282 to i32*, !mcsema_real_eip !45
  %284 = load i32, i32* %283, !mcsema_real_eip !45
  %285 = sext i32 %284 to i64, !mcsema_real_eip !45
  store i64 %285, i64* %XCX, !mcsema_real_eip !45
  %RAX_val.77 = load i64, i64* %XAX, !mcsema_real_eip !46
  %286 = add i64 %RAX_val.77, 0, !mcsema_real_eip !46
  %RCX_val.78 = load i64, i64* %XCX, !mcsema_real_eip !46
  %287 = mul i64 %RCX_val.78, 4, !mcsema_real_eip !46
  %288 = add i64 %286, %287, !mcsema_real_eip !46
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !46
  %290 = ptrtoint i64* %289 to i64, !mcsema_real_eip !46
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !46
  %292 = load i32, i32* %291, !mcsema_real_eip !46
  %293 = zext i32 %292 to i64, !mcsema_real_eip !46
  store i64 %293, i64* %XDX, !mcsema_real_eip !46
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !47
  %294 = add i64 %RBP_val.79, -84, !mcsema_real_eip !47
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !47
  %296 = ptrtoint i64* %295 to i64, !mcsema_real_eip !47
  %297 = inttoptr i64 %296 to i32*, !mcsema_real_eip !47
  %298 = load i32, i32* %297, !mcsema_real_eip !47
  %EDX.80 = bitcast i64* %XDX to i32*, !mcsema_real_eip !47
  %EDX_val.81 = load i32, i32* %EDX.80, !mcsema_real_eip !47
  %299 = add i32 %EDX_val.81, %298, !mcsema_real_eip !47
  %300 = xor i32 %299, %298, !mcsema_real_eip !47
  %301 = xor i32 %300, %EDX_val.81, !mcsema_real_eip !47
  %302 = and i32 %301, 16, !mcsema_real_eip !47
  %303 = icmp ne i32 %302, 0, !mcsema_real_eip !47
  store i1 %303, i1* %AF, !mcsema_real_eip !47
  %304 = lshr i32 %299, 31, !mcsema_real_eip !47
  %305 = trunc i32 %304 to i1, !mcsema_real_eip !47
  store i1 %305, i1* %SF, !mcsema_real_eip !47
  %306 = icmp eq i32 %299, 0, !mcsema_real_eip !47
  store i1 %306, i1* %ZF, !mcsema_real_eip !47
  %307 = xor i32 %298, %EDX_val.81, !mcsema_real_eip !47
  %308 = xor i32 %307, -1, !mcsema_real_eip !47
  %309 = xor i32 %298, %299, !mcsema_real_eip !47
  %310 = and i32 %308, %309, !mcsema_real_eip !47
  %311 = lshr i32 %310, 31, !mcsema_real_eip !47
  %312 = and i32 %311, 1, !mcsema_real_eip !47
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !47
  store i1 %313, i1* %OF, !mcsema_real_eip !47
  %314 = trunc i32 %299 to i8, !mcsema_real_eip !47
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !47
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !47
  %317 = xor i1 %316, true, !mcsema_real_eip !47
  store i1 %317, i1* %PF, !mcsema_real_eip !47
  %318 = icmp ult i32 %299, %298, !mcsema_real_eip !47
  store i1 %318, i1* %CF, !mcsema_real_eip !47
  %319 = zext i32 %299 to i64, !mcsema_real_eip !47
  store i64 %319, i64* %XDX, !mcsema_real_eip !47
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !48
  %320 = add i64 %RBP_val.82, -84, !mcsema_real_eip !48
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !48
  %EDX.83 = bitcast i64* %XDX to i32*, !mcsema_real_eip !48
  %EDX_val.84 = load i32, i32* %EDX.83, !mcsema_real_eip !48
  %322 = ptrtoint i64* %321 to i64, !mcsema_real_eip !48
  %323 = inttoptr i64 %322 to i32*, !mcsema_real_eip !48
  store i32 %EDX_val.84, i32* %323, !mcsema_real_eip !48
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !49
  %324 = add i64 %RBP_val.85, -92, !mcsema_real_eip !49
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !49
  %326 = ptrtoint i64* %325 to i64, !mcsema_real_eip !49
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !49
  %328 = load i32, i32* %327, !mcsema_real_eip !49
  %329 = zext i32 %328 to i64, !mcsema_real_eip !49
  store i64 %329, i64* %XAX, !mcsema_real_eip !49
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !50
  %330 = add i32 1, %EAX_val.87, !mcsema_real_eip !50
  %331 = xor i32 %330, %EAX_val.87, !mcsema_real_eip !50
  %332 = xor i32 %331, 1, !mcsema_real_eip !50
  %333 = and i32 %332, 16, !mcsema_real_eip !50
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !50
  store i1 %334, i1* %AF, !mcsema_real_eip !50
  %335 = lshr i32 %330, 31, !mcsema_real_eip !50
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !50
  store i1 %336, i1* %SF, !mcsema_real_eip !50
  %337 = icmp eq i32 %330, 0, !mcsema_real_eip !50
  store i1 %337, i1* %ZF, !mcsema_real_eip !50
  %338 = xor i32 %EAX_val.87, 1, !mcsema_real_eip !50
  %339 = xor i32 %338, -1, !mcsema_real_eip !50
  %340 = xor i32 %EAX_val.87, %330, !mcsema_real_eip !50
  %341 = and i32 %339, %340, !mcsema_real_eip !50
  %342 = lshr i32 %341, 31, !mcsema_real_eip !50
  %343 = and i32 %342, 1, !mcsema_real_eip !50
  %344 = trunc i32 %343 to i1, !mcsema_real_eip !50
  store i1 %344, i1* %OF, !mcsema_real_eip !50
  %345 = trunc i32 %330 to i8, !mcsema_real_eip !50
  %346 = call i8 @llvm.ctpop.i8(i8 %345), !mcsema_real_eip !50
  %347 = trunc i8 %346 to i1, !mcsema_real_eip !50
  %348 = xor i1 %347, true, !mcsema_real_eip !50
  store i1 %348, i1* %PF, !mcsema_real_eip !50
  %349 = icmp ult i32 %330, %EAX_val.87, !mcsema_real_eip !50
  store i1 %349, i1* %CF, !mcsema_real_eip !50
  %350 = zext i32 %330 to i64, !mcsema_real_eip !50
  store i64 %350, i64* %XAX, !mcsema_real_eip !50
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !51
  %351 = add i64 %RBP_val.88, -92, !mcsema_real_eip !51
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !51
  %EAX.89 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.90 = load i32, i32* %EAX.89, !mcsema_real_eip !51
  %353 = ptrtoint i64* %352 to i64, !mcsema_real_eip !51
  %354 = inttoptr i64 %353 to i32*, !mcsema_real_eip !51
  store i32 %EAX_val.90, i32* %354, !mcsema_real_eip !51
  br label %block_0x8f, !mcsema_real_eip !52

block_0xba:                                       ; preds = %block_0x8f
  %RBP_val.91 = load i64, i64* %XBP, !mcsema_real_eip !53
  %355 = add i64 %RBP_val.91, -52, !mcsema_real_eip !53
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !53
  %357 = ptrtoint i64* %356 to i64, !mcsema_real_eip !53
  %358 = inttoptr i64 %357 to i32*, !mcsema_real_eip !53
  %359 = load i32, i32* %358, !mcsema_real_eip !53
  %360 = zext i32 %359 to i64, !mcsema_real_eip !53
  store i64 %360, i64* %XAX, !mcsema_real_eip !53
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !54
  %361 = add i64 %RBP_val.92, -84, !mcsema_real_eip !54
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !54
  %363 = ptrtoint i64* %362 to i64, !mcsema_real_eip !54
  %364 = inttoptr i64 %363 to i32*, !mcsema_real_eip !54
  %365 = load i32, i32* %364, !mcsema_real_eip !54
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !54
  %366 = add i32 %EAX_val.94, %365, !mcsema_real_eip !54
  %367 = xor i32 %366, %365, !mcsema_real_eip !54
  %368 = xor i32 %367, %EAX_val.94, !mcsema_real_eip !54
  %369 = and i32 %368, 16, !mcsema_real_eip !54
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !54
  store i1 %370, i1* %AF, !mcsema_real_eip !54
  %371 = lshr i32 %366, 31, !mcsema_real_eip !54
  %372 = trunc i32 %371 to i1, !mcsema_real_eip !54
  store i1 %372, i1* %SF, !mcsema_real_eip !54
  %373 = icmp eq i32 %366, 0, !mcsema_real_eip !54
  store i1 %373, i1* %ZF, !mcsema_real_eip !54
  %374 = xor i32 %365, %EAX_val.94, !mcsema_real_eip !54
  %375 = xor i32 %374, -1, !mcsema_real_eip !54
  %376 = xor i32 %365, %366, !mcsema_real_eip !54
  %377 = and i32 %375, %376, !mcsema_real_eip !54
  %378 = lshr i32 %377, 31, !mcsema_real_eip !54
  %379 = and i32 %378, 1, !mcsema_real_eip !54
  %380 = trunc i32 %379 to i1, !mcsema_real_eip !54
  store i1 %380, i1* %OF, !mcsema_real_eip !54
  %381 = trunc i32 %366 to i8, !mcsema_real_eip !54
  %382 = call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !54
  %383 = trunc i8 %382 to i1, !mcsema_real_eip !54
  %384 = xor i1 %383, true, !mcsema_real_eip !54
  store i1 %384, i1* %PF, !mcsema_real_eip !54
  %385 = icmp ult i32 %366, %365, !mcsema_real_eip !54
  store i1 %385, i1* %CF, !mcsema_real_eip !54
  %386 = zext i32 %366 to i64, !mcsema_real_eip !54
  store i64 %386, i64* %XAX, !mcsema_real_eip !54
  %RBP_val.95 = load i64, i64* %XBP, !mcsema_real_eip !55
  %387 = add i64 %RBP_val.95, -84, !mcsema_real_eip !55
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !55
  %EAX.96 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.97 = load i32, i32* %EAX.96, !mcsema_real_eip !55
  %389 = ptrtoint i64* %388 to i64, !mcsema_real_eip !55
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.97, i32* %390, !mcsema_real_eip !55
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !56
  %391 = add i64 %RBP_val.98, -96, !mcsema_real_eip !56
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !56
  %393 = ptrtoint i64* %392 to i64, !mcsema_real_eip !56
  %394 = inttoptr i64 %393 to i32*, !mcsema_real_eip !56
  store i32 0, i32* %394, !mcsema_real_eip !56
  br label %block_0xca, !mcsema_real_eip !57

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !57
  %395 = add i64 %RBP_val.99, -96, !mcsema_real_eip !57
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !57
  %397 = ptrtoint i64* %396 to i64, !mcsema_real_eip !57
  %398 = inttoptr i64 %397 to i32*, !mcsema_real_eip !57
  %399 = load i32, i32* %398, !mcsema_real_eip !57
  %400 = zext i32 %399 to i64, !mcsema_real_eip !57
  store i64 %400, i64* %XAX, !mcsema_real_eip !57
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !58
  %401 = add i64 %RBP_val.100, -44, !mcsema_real_eip !58
  %402 = inttoptr i64 %401 to i64*, !mcsema_real_eip !58
  %EAX.101 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.102 = load i32, i32* %EAX.101, !mcsema_real_eip !58
  %403 = ptrtoint i64* %402 to i64, !mcsema_real_eip !58
  %404 = inttoptr i64 %403 to i32*, !mcsema_real_eip !58
  %405 = load i32, i32* %404, !mcsema_real_eip !58
  %406 = sub i32 %EAX_val.102, %405, !mcsema_real_eip !58
  %407 = xor i32 %406, %EAX_val.102, !mcsema_real_eip !58
  %408 = xor i32 %407, %405, !mcsema_real_eip !58
  %409 = and i32 %408, 16, !mcsema_real_eip !58
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !58
  store i1 %410, i1* %AF, !mcsema_real_eip !58
  %411 = trunc i32 %406 to i8, !mcsema_real_eip !58
  %412 = call i8 @llvm.ctpop.i8(i8 %411), !mcsema_real_eip !58
  %413 = trunc i8 %412 to i1, !mcsema_real_eip !58
  %414 = xor i1 %413, true, !mcsema_real_eip !58
  store i1 %414, i1* %PF, !mcsema_real_eip !58
  %415 = icmp eq i32 %406, 0, !mcsema_real_eip !58
  store i1 %415, i1* %ZF, !mcsema_real_eip !58
  %416 = lshr i32 %406, 31, !mcsema_real_eip !58
  %417 = trunc i32 %416 to i1, !mcsema_real_eip !58
  store i1 %417, i1* %SF, !mcsema_real_eip !58
  %418 = icmp ult i32 %EAX_val.102, %405, !mcsema_real_eip !58
  store i1 %418, i1* %CF, !mcsema_real_eip !58
  %419 = xor i32 %EAX_val.102, %405, !mcsema_real_eip !58
  %420 = xor i32 %EAX_val.102, %406, !mcsema_real_eip !58
  %421 = and i32 %419, %420, !mcsema_real_eip !58
  %422 = lshr i32 %421, 31, !mcsema_real_eip !58
  %423 = trunc i32 %422 to i1, !mcsema_real_eip !58
  store i1 %423, i1* %OF, !mcsema_real_eip !58
  %424 = load i1, i1* %OF, !mcsema_real_eip !59
  %425 = load i1, i1* %SF, !mcsema_real_eip !59
  %426 = icmp eq i1 %425, %424, !mcsema_real_eip !59
  br i1 %426, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !59

block_0xd6:                                       ; preds = %block_0xca
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !60
  %427 = add i64 %RBP_val.103, -64, !mcsema_real_eip !60
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !60
  %429 = load i64, i64* %428, !mcsema_real_eip !60
  store i64 %429, i64* %XAX, !mcsema_real_eip !60
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !61
  %430 = add i64 %RBP_val.104, -96, !mcsema_real_eip !61
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !61
  %432 = ptrtoint i64* %431 to i64, !mcsema_real_eip !61
  %433 = inttoptr i64 %432 to i32*, !mcsema_real_eip !61
  %434 = load i32, i32* %433, !mcsema_real_eip !61
  %435 = sext i32 %434 to i64, !mcsema_real_eip !61
  store i64 %435, i64* %XCX, !mcsema_real_eip !61
  %RAX_val.105 = load i64, i64* %XAX, !mcsema_real_eip !62
  %436 = add i64 %RAX_val.105, 0, !mcsema_real_eip !62
  %RCX_val.106 = load i64, i64* %XCX, !mcsema_real_eip !62
  %437 = mul i64 %RCX_val.106, 4, !mcsema_real_eip !62
  %438 = add i64 %436, %437, !mcsema_real_eip !62
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !62
  %440 = ptrtoint i64* %439 to i64, !mcsema_real_eip !62
  %441 = inttoptr i64 %440 to i32*, !mcsema_real_eip !62
  %442 = load i32, i32* %441, !mcsema_real_eip !62
  %443 = zext i32 %442 to i64, !mcsema_real_eip !62
  store i64 %443, i64* %XDX, !mcsema_real_eip !62
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !63
  %444 = add i64 %RBP_val.107, -84, !mcsema_real_eip !63
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !63
  %446 = ptrtoint i64* %445 to i64, !mcsema_real_eip !63
  %447 = inttoptr i64 %446 to i32*, !mcsema_real_eip !63
  %448 = load i32, i32* %447, !mcsema_real_eip !63
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !63
  %EDX_val.109 = load i32, i32* %EDX.108, !mcsema_real_eip !63
  %449 = add i32 %EDX_val.109, %448, !mcsema_real_eip !63
  %450 = xor i32 %449, %448, !mcsema_real_eip !63
  %451 = xor i32 %450, %EDX_val.109, !mcsema_real_eip !63
  %452 = and i32 %451, 16, !mcsema_real_eip !63
  %453 = icmp ne i32 %452, 0, !mcsema_real_eip !63
  store i1 %453, i1* %AF, !mcsema_real_eip !63
  %454 = lshr i32 %449, 31, !mcsema_real_eip !63
  %455 = trunc i32 %454 to i1, !mcsema_real_eip !63
  store i1 %455, i1* %SF, !mcsema_real_eip !63
  %456 = icmp eq i32 %449, 0, !mcsema_real_eip !63
  store i1 %456, i1* %ZF, !mcsema_real_eip !63
  %457 = xor i32 %448, %EDX_val.109, !mcsema_real_eip !63
  %458 = xor i32 %457, -1, !mcsema_real_eip !63
  %459 = xor i32 %448, %449, !mcsema_real_eip !63
  %460 = and i32 %458, %459, !mcsema_real_eip !63
  %461 = lshr i32 %460, 31, !mcsema_real_eip !63
  %462 = and i32 %461, 1, !mcsema_real_eip !63
  %463 = trunc i32 %462 to i1, !mcsema_real_eip !63
  store i1 %463, i1* %OF, !mcsema_real_eip !63
  %464 = trunc i32 %449 to i8, !mcsema_real_eip !63
  %465 = call i8 @llvm.ctpop.i8(i8 %464), !mcsema_real_eip !63
  %466 = trunc i8 %465 to i1, !mcsema_real_eip !63
  %467 = xor i1 %466, true, !mcsema_real_eip !63
  store i1 %467, i1* %PF, !mcsema_real_eip !63
  %468 = icmp ult i32 %449, %448, !mcsema_real_eip !63
  store i1 %468, i1* %CF, !mcsema_real_eip !63
  %469 = zext i32 %449 to i64, !mcsema_real_eip !63
  store i64 %469, i64* %XDX, !mcsema_real_eip !63
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !64
  %470 = add i64 %RBP_val.110, -84, !mcsema_real_eip !64
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !64
  %EDX.111 = bitcast i64* %XDX to i32*, !mcsema_real_eip !64
  %EDX_val.112 = load i32, i32* %EDX.111, !mcsema_real_eip !64
  %472 = ptrtoint i64* %471 to i64, !mcsema_real_eip !64
  %473 = inttoptr i64 %472 to i32*, !mcsema_real_eip !64
  store i32 %EDX_val.112, i32* %473, !mcsema_real_eip !64
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !65
  %474 = add i64 %RBP_val.113, -96, !mcsema_real_eip !65
  %475 = inttoptr i64 %474 to i64*, !mcsema_real_eip !65
  %476 = ptrtoint i64* %475 to i64, !mcsema_real_eip !65
  %477 = inttoptr i64 %476 to i32*, !mcsema_real_eip !65
  %478 = load i32, i32* %477, !mcsema_real_eip !65
  %479 = zext i32 %478 to i64, !mcsema_real_eip !65
  store i64 %479, i64* %XAX, !mcsema_real_eip !65
  %EAX.114 = bitcast i64* %XAX to i32*, !mcsema_real_eip !66
  %EAX_val.115 = load i32, i32* %EAX.114, !mcsema_real_eip !66
  %480 = add i32 1, %EAX_val.115, !mcsema_real_eip !66
  %481 = xor i32 %480, %EAX_val.115, !mcsema_real_eip !66
  %482 = xor i32 %481, 1, !mcsema_real_eip !66
  %483 = and i32 %482, 16, !mcsema_real_eip !66
  %484 = icmp ne i32 %483, 0, !mcsema_real_eip !66
  store i1 %484, i1* %AF, !mcsema_real_eip !66
  %485 = lshr i32 %480, 31, !mcsema_real_eip !66
  %486 = trunc i32 %485 to i1, !mcsema_real_eip !66
  store i1 %486, i1* %SF, !mcsema_real_eip !66
  %487 = icmp eq i32 %480, 0, !mcsema_real_eip !66
  store i1 %487, i1* %ZF, !mcsema_real_eip !66
  %488 = xor i32 %EAX_val.115, 1, !mcsema_real_eip !66
  %489 = xor i32 %488, -1, !mcsema_real_eip !66
  %490 = xor i32 %EAX_val.115, %480, !mcsema_real_eip !66
  %491 = and i32 %489, %490, !mcsema_real_eip !66
  %492 = lshr i32 %491, 31, !mcsema_real_eip !66
  %493 = and i32 %492, 1, !mcsema_real_eip !66
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !66
  store i1 %494, i1* %OF, !mcsema_real_eip !66
  %495 = trunc i32 %480 to i8, !mcsema_real_eip !66
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !66
  %497 = trunc i8 %496 to i1, !mcsema_real_eip !66
  %498 = xor i1 %497, true, !mcsema_real_eip !66
  store i1 %498, i1* %PF, !mcsema_real_eip !66
  %499 = icmp ult i32 %480, %EAX_val.115, !mcsema_real_eip !66
  store i1 %499, i1* %CF, !mcsema_real_eip !66
  %500 = zext i32 %480 to i64, !mcsema_real_eip !66
  store i64 %500, i64* %XAX, !mcsema_real_eip !66
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !67
  %501 = add i64 %RBP_val.116, -96, !mcsema_real_eip !67
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !67
  %EAX.117 = bitcast i64* %XAX to i32*, !mcsema_real_eip !67
  %EAX_val.118 = load i32, i32* %EAX.117, !mcsema_real_eip !67
  %503 = ptrtoint i64* %502 to i64, !mcsema_real_eip !67
  %504 = inttoptr i64 %503 to i32*, !mcsema_real_eip !67
  store i32 %EAX_val.118, i32* %504, !mcsema_real_eip !67
  br label %block_0xca, !mcsema_real_eip !68

block_0xf5:                                       ; preds = %block_0xca
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !69
  %505 = add i64 %RBP_val.119, -72, !mcsema_real_eip !69
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !69
  %507 = load i64, i64* %506, !mcsema_real_eip !69
  store i64 %507, i64* %XAX, !mcsema_real_eip !69
  %RAX_val.120 = load i64, i64* %XAX, !mcsema_real_eip !70
  %508 = add i64 %RAX_val.120, 0, !mcsema_real_eip !70
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !70
  %510 = ptrtoint i64* %509 to i64, !mcsema_real_eip !70
  %511 = inttoptr i64 %510 to i32*, !mcsema_real_eip !70
  %512 = load i32, i32* %511, !mcsema_real_eip !70
  %513 = zext i32 %512 to i64, !mcsema_real_eip !70
  store i64 %513, i64* %XCX, !mcsema_real_eip !70
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !71
  %514 = add i64 %RBP_val.121, -84, !mcsema_real_eip !71
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !71
  %516 = ptrtoint i64* %515 to i64, !mcsema_real_eip !71
  %517 = inttoptr i64 %516 to i32*, !mcsema_real_eip !71
  %518 = load i32, i32* %517, !mcsema_real_eip !71
  %ECX.122 = bitcast i64* %XCX to i32*, !mcsema_real_eip !71
  %ECX_val.123 = load i32, i32* %ECX.122, !mcsema_real_eip !71
  %519 = add i32 %ECX_val.123, %518, !mcsema_real_eip !71
  %520 = xor i32 %519, %518, !mcsema_real_eip !71
  %521 = xor i32 %520, %ECX_val.123, !mcsema_real_eip !71
  %522 = and i32 %521, 16, !mcsema_real_eip !71
  %523 = icmp ne i32 %522, 0, !mcsema_real_eip !71
  store i1 %523, i1* %AF, !mcsema_real_eip !71
  %524 = lshr i32 %519, 31, !mcsema_real_eip !71
  %525 = trunc i32 %524 to i1, !mcsema_real_eip !71
  store i1 %525, i1* %SF, !mcsema_real_eip !71
  %526 = icmp eq i32 %519, 0, !mcsema_real_eip !71
  store i1 %526, i1* %ZF, !mcsema_real_eip !71
  %527 = xor i32 %518, %ECX_val.123, !mcsema_real_eip !71
  %528 = xor i32 %527, -1, !mcsema_real_eip !71
  %529 = xor i32 %518, %519, !mcsema_real_eip !71
  %530 = and i32 %528, %529, !mcsema_real_eip !71
  %531 = lshr i32 %530, 31, !mcsema_real_eip !71
  %532 = and i32 %531, 1, !mcsema_real_eip !71
  %533 = trunc i32 %532 to i1, !mcsema_real_eip !71
  store i1 %533, i1* %OF, !mcsema_real_eip !71
  %534 = trunc i32 %519 to i8, !mcsema_real_eip !71
  %535 = call i8 @llvm.ctpop.i8(i8 %534), !mcsema_real_eip !71
  %536 = trunc i8 %535 to i1, !mcsema_real_eip !71
  %537 = xor i1 %536, true, !mcsema_real_eip !71
  store i1 %537, i1* %PF, !mcsema_real_eip !71
  %538 = icmp ult i32 %519, %518, !mcsema_real_eip !71
  store i1 %538, i1* %CF, !mcsema_real_eip !71
  %539 = zext i32 %519 to i64, !mcsema_real_eip !71
  store i64 %539, i64* %XCX, !mcsema_real_eip !71
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !72
  %540 = add i64 %RBP_val.124, -84, !mcsema_real_eip !72
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !72
  %ECX.125 = bitcast i64* %XCX to i32*, !mcsema_real_eip !72
  %ECX_val.126 = load i32, i32* %ECX.125, !mcsema_real_eip !72
  %542 = ptrtoint i64* %541 to i64, !mcsema_real_eip !72
  %543 = inttoptr i64 %542 to i32*, !mcsema_real_eip !72
  store i32 %ECX_val.126, i32* %543, !mcsema_real_eip !72
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !73
  %544 = add i64 %RBP_val.127, -100, !mcsema_real_eip !73
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !73
  %546 = ptrtoint i64* %545 to i64, !mcsema_real_eip !73
  %547 = inttoptr i64 %546 to i32*, !mcsema_real_eip !73
  store i32 0, i32* %547, !mcsema_real_eip !73
  br label %block_0x108, !mcsema_real_eip !74

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !74
  %548 = add i64 %RBP_val.128, -100, !mcsema_real_eip !74
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !74
  %550 = ptrtoint i64* %549 to i64, !mcsema_real_eip !74
  %551 = inttoptr i64 %550 to i32*, !mcsema_real_eip !74
  %552 = load i32, i32* %551, !mcsema_real_eip !74
  %553 = zext i32 %552 to i64, !mcsema_real_eip !74
  store i64 %553, i64* %XAX, !mcsema_real_eip !74
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !75
  %554 = add i64 %RBP_val.129, -48, !mcsema_real_eip !75
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !75
  %EAX.130 = bitcast i64* %XAX to i32*, !mcsema_real_eip !75
  %EAX_val.131 = load i32, i32* %EAX.130, !mcsema_real_eip !75
  %556 = ptrtoint i64* %555 to i64, !mcsema_real_eip !75
  %557 = inttoptr i64 %556 to i32*, !mcsema_real_eip !75
  %558 = load i32, i32* %557, !mcsema_real_eip !75
  %559 = sub i32 %EAX_val.131, %558, !mcsema_real_eip !75
  %560 = xor i32 %559, %EAX_val.131, !mcsema_real_eip !75
  %561 = xor i32 %560, %558, !mcsema_real_eip !75
  %562 = and i32 %561, 16, !mcsema_real_eip !75
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !75
  store i1 %563, i1* %AF, !mcsema_real_eip !75
  %564 = trunc i32 %559 to i8, !mcsema_real_eip !75
  %565 = call i8 @llvm.ctpop.i8(i8 %564), !mcsema_real_eip !75
  %566 = trunc i8 %565 to i1, !mcsema_real_eip !75
  %567 = xor i1 %566, true, !mcsema_real_eip !75
  store i1 %567, i1* %PF, !mcsema_real_eip !75
  %568 = icmp eq i32 %559, 0, !mcsema_real_eip !75
  store i1 %568, i1* %ZF, !mcsema_real_eip !75
  %569 = lshr i32 %559, 31, !mcsema_real_eip !75
  %570 = trunc i32 %569 to i1, !mcsema_real_eip !75
  store i1 %570, i1* %SF, !mcsema_real_eip !75
  %571 = icmp ult i32 %EAX_val.131, %558, !mcsema_real_eip !75
  store i1 %571, i1* %CF, !mcsema_real_eip !75
  %572 = xor i32 %EAX_val.131, %558, !mcsema_real_eip !75
  %573 = xor i32 %EAX_val.131, %559, !mcsema_real_eip !75
  %574 = and i32 %572, %573, !mcsema_real_eip !75
  %575 = lshr i32 %574, 31, !mcsema_real_eip !75
  %576 = trunc i32 %575 to i1, !mcsema_real_eip !75
  store i1 %576, i1* %OF, !mcsema_real_eip !75
  %577 = load i1, i1* %OF, !mcsema_real_eip !76
  %578 = load i1, i1* %SF, !mcsema_real_eip !76
  %579 = icmp eq i1 %578, %577, !mcsema_real_eip !76
  br i1 %579, label %block_0x133, label %block_0x114, !mcsema_real_eip !76

block_0x114:                                      ; preds = %block_0x108
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !77
  %580 = add i64 %RBP_val.132, -80, !mcsema_real_eip !77
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !77
  %582 = load i64, i64* %581, !mcsema_real_eip !77
  store i64 %582, i64* %XAX, !mcsema_real_eip !77
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !78
  %583 = add i64 %RBP_val.133, -100, !mcsema_real_eip !78
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !78
  %585 = ptrtoint i64* %584 to i64, !mcsema_real_eip !78
  %586 = inttoptr i64 %585 to i32*, !mcsema_real_eip !78
  %587 = load i32, i32* %586, !mcsema_real_eip !78
  %588 = sext i32 %587 to i64, !mcsema_real_eip !78
  store i64 %588, i64* %XCX, !mcsema_real_eip !78
  %RAX_val.134 = load i64, i64* %XAX, !mcsema_real_eip !79
  %589 = add i64 %RAX_val.134, 0, !mcsema_real_eip !79
  %RCX_val.135 = load i64, i64* %XCX, !mcsema_real_eip !79
  %590 = mul i64 %RCX_val.135, 4, !mcsema_real_eip !79
  %591 = add i64 %589, %590, !mcsema_real_eip !79
  %592 = inttoptr i64 %591 to i64*, !mcsema_real_eip !79
  %593 = ptrtoint i64* %592 to i64, !mcsema_real_eip !79
  %594 = inttoptr i64 %593 to i32*, !mcsema_real_eip !79
  %595 = load i32, i32* %594, !mcsema_real_eip !79
  %596 = zext i32 %595 to i64, !mcsema_real_eip !79
  store i64 %596, i64* %XDX, !mcsema_real_eip !79
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !80
  %597 = add i64 %RBP_val.136, -84, !mcsema_real_eip !80
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !80
  %599 = ptrtoint i64* %598 to i64, !mcsema_real_eip !80
  %600 = inttoptr i64 %599 to i32*, !mcsema_real_eip !80
  %601 = load i32, i32* %600, !mcsema_real_eip !80
  %EDX.137 = bitcast i64* %XDX to i32*, !mcsema_real_eip !80
  %EDX_val.138 = load i32, i32* %EDX.137, !mcsema_real_eip !80
  %602 = add i32 %EDX_val.138, %601, !mcsema_real_eip !80
  %603 = xor i32 %602, %601, !mcsema_real_eip !80
  %604 = xor i32 %603, %EDX_val.138, !mcsema_real_eip !80
  %605 = and i32 %604, 16, !mcsema_real_eip !80
  %606 = icmp ne i32 %605, 0, !mcsema_real_eip !80
  store i1 %606, i1* %AF, !mcsema_real_eip !80
  %607 = lshr i32 %602, 31, !mcsema_real_eip !80
  %608 = trunc i32 %607 to i1, !mcsema_real_eip !80
  store i1 %608, i1* %SF, !mcsema_real_eip !80
  %609 = icmp eq i32 %602, 0, !mcsema_real_eip !80
  store i1 %609, i1* %ZF, !mcsema_real_eip !80
  %610 = xor i32 %601, %EDX_val.138, !mcsema_real_eip !80
  %611 = xor i32 %610, -1, !mcsema_real_eip !80
  %612 = xor i32 %601, %602, !mcsema_real_eip !80
  %613 = and i32 %611, %612, !mcsema_real_eip !80
  %614 = lshr i32 %613, 31, !mcsema_real_eip !80
  %615 = and i32 %614, 1, !mcsema_real_eip !80
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !80
  store i1 %616, i1* %OF, !mcsema_real_eip !80
  %617 = trunc i32 %602 to i8, !mcsema_real_eip !80
  %618 = call i8 @llvm.ctpop.i8(i8 %617), !mcsema_real_eip !80
  %619 = trunc i8 %618 to i1, !mcsema_real_eip !80
  %620 = xor i1 %619, true, !mcsema_real_eip !80
  store i1 %620, i1* %PF, !mcsema_real_eip !80
  %621 = icmp ult i32 %602, %601, !mcsema_real_eip !80
  store i1 %621, i1* %CF, !mcsema_real_eip !80
  %622 = zext i32 %602 to i64, !mcsema_real_eip !80
  store i64 %622, i64* %XDX, !mcsema_real_eip !80
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !81
  %623 = add i64 %RBP_val.139, -84, !mcsema_real_eip !81
  %624 = inttoptr i64 %623 to i64*, !mcsema_real_eip !81
  %EDX.140 = bitcast i64* %XDX to i32*, !mcsema_real_eip !81
  %EDX_val.141 = load i32, i32* %EDX.140, !mcsema_real_eip !81
  %625 = ptrtoint i64* %624 to i64, !mcsema_real_eip !81
  %626 = inttoptr i64 %625 to i32*, !mcsema_real_eip !81
  store i32 %EDX_val.141, i32* %626, !mcsema_real_eip !81
  %RBP_val.142 = load i64, i64* %XBP, !mcsema_real_eip !82
  %627 = add i64 %RBP_val.142, -100, !mcsema_real_eip !82
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !82
  %629 = ptrtoint i64* %628 to i64, !mcsema_real_eip !82
  %630 = inttoptr i64 %629 to i32*, !mcsema_real_eip !82
  %631 = load i32, i32* %630, !mcsema_real_eip !82
  %632 = zext i32 %631 to i64, !mcsema_real_eip !82
  store i64 %632, i64* %XAX, !mcsema_real_eip !82
  %EAX.143 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  %EAX_val.144 = load i32, i32* %EAX.143, !mcsema_real_eip !83
  %633 = add i32 1, %EAX_val.144, !mcsema_real_eip !83
  %634 = xor i32 %633, %EAX_val.144, !mcsema_real_eip !83
  %635 = xor i32 %634, 1, !mcsema_real_eip !83
  %636 = and i32 %635, 16, !mcsema_real_eip !83
  %637 = icmp ne i32 %636, 0, !mcsema_real_eip !83
  store i1 %637, i1* %AF, !mcsema_real_eip !83
  %638 = lshr i32 %633, 31, !mcsema_real_eip !83
  %639 = trunc i32 %638 to i1, !mcsema_real_eip !83
  store i1 %639, i1* %SF, !mcsema_real_eip !83
  %640 = icmp eq i32 %633, 0, !mcsema_real_eip !83
  store i1 %640, i1* %ZF, !mcsema_real_eip !83
  %641 = xor i32 %EAX_val.144, 1, !mcsema_real_eip !83
  %642 = xor i32 %641, -1, !mcsema_real_eip !83
  %643 = xor i32 %EAX_val.144, %633, !mcsema_real_eip !83
  %644 = and i32 %642, %643, !mcsema_real_eip !83
  %645 = lshr i32 %644, 31, !mcsema_real_eip !83
  %646 = and i32 %645, 1, !mcsema_real_eip !83
  %647 = trunc i32 %646 to i1, !mcsema_real_eip !83
  store i1 %647, i1* %OF, !mcsema_real_eip !83
  %648 = trunc i32 %633 to i8, !mcsema_real_eip !83
  %649 = call i8 @llvm.ctpop.i8(i8 %648), !mcsema_real_eip !83
  %650 = trunc i8 %649 to i1, !mcsema_real_eip !83
  %651 = xor i1 %650, true, !mcsema_real_eip !83
  store i1 %651, i1* %PF, !mcsema_real_eip !83
  %652 = icmp ult i32 %633, %EAX_val.144, !mcsema_real_eip !83
  store i1 %652, i1* %CF, !mcsema_real_eip !83
  %653 = zext i32 %633 to i64, !mcsema_real_eip !83
  store i64 %653, i64* %XAX, !mcsema_real_eip !83
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !84
  %654 = add i64 %RBP_val.145, -100, !mcsema_real_eip !84
  %655 = inttoptr i64 %654 to i64*, !mcsema_real_eip !84
  %EAX.146 = bitcast i64* %XAX to i32*, !mcsema_real_eip !84
  %EAX_val.147 = load i32, i32* %EAX.146, !mcsema_real_eip !84
  %656 = ptrtoint i64* %655 to i64, !mcsema_real_eip !84
  %657 = inttoptr i64 %656 to i32*, !mcsema_real_eip !84
  store i32 %EAX_val.147, i32* %657, !mcsema_real_eip !84
  br label %block_0x108, !mcsema_real_eip !85

block_0x133:                                      ; preds = %block_0x108
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !86
  %658 = add i64 %RBP_val.148, -84, !mcsema_real_eip !86
  %659 = inttoptr i64 %658 to i64*, !mcsema_real_eip !86
  %660 = ptrtoint i64* %659 to i64, !mcsema_real_eip !86
  %661 = inttoptr i64 %660 to i32*, !mcsema_real_eip !86
  %662 = load i32, i32* %661, !mcsema_real_eip !86
  %663 = zext i32 %662 to i64, !mcsema_real_eip !86
  store i64 %663, i64* %XAX, !mcsema_real_eip !86
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %664 = inttoptr i64 %RSP_val.149 to i64*, !mcsema_real_eip !87
  %665 = load i64, i64* %664, !mcsema_real_eip !87
  store i64 %665, i64* %XBX, !mcsema_real_eip !87
  %666 = add i64 %RSP_val.149, 8, !mcsema_real_eip !87
  store i64 %666, i64* %XSP, !mcsema_real_eip !87
  %RSP_val.150 = load i64, i64* %XSP, !mcsema_real_eip !88
  %667 = inttoptr i64 %RSP_val.150 to i64*, !mcsema_real_eip !88
  %668 = load i64, i64* %667, !mcsema_real_eip !88
  store i64 %668, i64* %XBP, !mcsema_real_eip !88
  %669 = add i64 %RSP_val.150, 8, !mcsema_real_eip !88
  store i64 %669, i64* %XSP, !mcsema_real_eip !88
  %RSP_val.151 = load i64, i64* %XSP, !mcsema_real_eip !89
  %670 = add i64 %RSP_val.151, 8, !mcsema_real_eip !89
  %671 = inttoptr i64 %RSP_val.151 to i64*, !mcsema_real_eip !89
  %672 = load i64, i64* %671, !mcsema_real_eip !89
  store i64 %672, i64* %XIP, !mcsema_real_eip !89
  store i64 %670, i64* %XSP, !mcsema_real_eip !89
  ret void, !mcsema_real_eip !89
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !90
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !90
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !90
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !90
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !90
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !90
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !90
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !90
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !90
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !90
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !90
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !90
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !90
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !90
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !90
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !90
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !90
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !90
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !90
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !90
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !90
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !90
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !90
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !90
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !90
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !90
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !90
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !90
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !90
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !90
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !90
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !90
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !90
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !90
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !90
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !90
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !90
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !90
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !90
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !90
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !90
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !90
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !90
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !90
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !90
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !90
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !90
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !90
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !90
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !90
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !90
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !90
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !90
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !90
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !90
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !90
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !90
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !90
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !90
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !90
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !90
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !90
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !90
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !90
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !90
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !90
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !90
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !90
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !90
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !90
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !90
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !90
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !90
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !90
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !90
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !90
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !90
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !90
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !90
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !90
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !90
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !90
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !90
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !90
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !90
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !90
  br label %block_0x140, !mcsema_real_eip !90

block_0x140:                                      ; preds = %entry
  %RBP_val.152 = load i64, i64* %XBP, !mcsema_real_eip !90
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !90
  %1 = sub i64 %RSP_val.153, 8, !mcsema_real_eip !90
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !90
  store i64 %RBP_val.152, i64* %2, !mcsema_real_eip !90
  store i64 %1, i64* %XSP, !mcsema_real_eip !90
  %RSP_val.154 = load i64, i64* %XSP, !mcsema_real_eip !91
  store i64 %RSP_val.154, i64* %XBP, !mcsema_real_eip !91
  %R14_val.155 = load i64, i64* %R14, !mcsema_real_eip !92
  %RSP_val.156 = load i64, i64* %XSP, !mcsema_real_eip !92
  %3 = sub i64 %RSP_val.156, 8, !mcsema_real_eip !92
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !92
  store i64 %R14_val.155, i64* %4, !mcsema_real_eip !92
  store i64 %3, i64* %XSP, !mcsema_real_eip !92
  %RBX_val.157 = load i64, i64* %XBX, !mcsema_real_eip !93
  %RSP_val.158 = load i64, i64* %XSP, !mcsema_real_eip !93
  %5 = sub i64 %RSP_val.158, 8, !mcsema_real_eip !93
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !93
  store i64 %RBX_val.157, i64* %6, !mcsema_real_eip !93
  store i64 %5, i64* %XSP, !mcsema_real_eip !93
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !94
  %7 = sub i64 %RSP_val.159, 160, !mcsema_real_eip !94
  %8 = xor i64 %7, %RSP_val.159, !mcsema_real_eip !94
  %9 = xor i64 %8, 160, !mcsema_real_eip !94
  %10 = and i64 %9, 16, !mcsema_real_eip !94
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !94
  store i1 %11, i1* %AF, !mcsema_real_eip !94
  %12 = trunc i64 %7 to i8, !mcsema_real_eip !94
  %13 = call i8 @llvm.ctpop.i8(i8 %12), !mcsema_real_eip !94
  %14 = trunc i8 %13 to i1, !mcsema_real_eip !94
  %15 = xor i1 %14, true, !mcsema_real_eip !94
  store i1 %15, i1* %PF, !mcsema_real_eip !94
  %16 = icmp eq i64 %7, 0, !mcsema_real_eip !94
  store i1 %16, i1* %ZF, !mcsema_real_eip !94
  %17 = lshr i64 %7, 63, !mcsema_real_eip !94
  %18 = trunc i64 %17 to i1, !mcsema_real_eip !94
  store i1 %18, i1* %SF, !mcsema_real_eip !94
  %19 = icmp ult i64 %RSP_val.159, 160, !mcsema_real_eip !94
  store i1 %19, i1* %CF, !mcsema_real_eip !94
  %20 = xor i64 %RSP_val.159, 160, !mcsema_real_eip !94
  %21 = xor i64 %RSP_val.159, %7, !mcsema_real_eip !94
  %22 = and i64 %20, %21, !mcsema_real_eip !94
  %23 = lshr i64 %22, 63, !mcsema_real_eip !94
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !94
  store i1 %24, i1* %OF, !mcsema_real_eip !94
  store i64 %7, i64* %XSP, !mcsema_real_eip !94
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !95
  %25 = add i64 %RBP_val.160, -20, !mcsema_real_eip !95
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !95
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !95
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !95
  store i32 0, i32* %28, !mcsema_real_eip !95
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !96
  %29 = add i64 %RBP_val.161, -24, !mcsema_real_eip !96
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !96
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !96
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !96
  store i32 1, i32* %32, !mcsema_real_eip !96
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !97
  %33 = add i64 %RBP_val.162, -68, !mcsema_real_eip !97
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !97
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !97
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %36, !mcsema_real_eip !97
  br label %block_0x163, !mcsema_real_eip !98

block_0x163:                                      ; preds = %block_0x16d, %block_0x140
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !98
  %37 = add i64 %RBP_val.163, -68, !mcsema_real_eip !98
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !98
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !98
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !98
  %41 = load i32, i32* %40, !mcsema_real_eip !98
  %42 = sub i32 %41, 10, !mcsema_real_eip !98
  %43 = xor i32 %42, %41, !mcsema_real_eip !98
  %44 = xor i32 %43, 10, !mcsema_real_eip !98
  %45 = and i32 %44, 16, !mcsema_real_eip !98
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !98
  store i1 %46, i1* %AF, !mcsema_real_eip !98
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !98
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !98
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !98
  %50 = xor i1 %49, true, !mcsema_real_eip !98
  store i1 %50, i1* %PF, !mcsema_real_eip !98
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !98
  store i1 %51, i1* %ZF, !mcsema_real_eip !98
  %52 = lshr i32 %42, 31, !mcsema_real_eip !98
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !98
  store i1 %53, i1* %SF, !mcsema_real_eip !98
  %54 = icmp ult i32 %41, 10, !mcsema_real_eip !98
  store i1 %54, i1* %CF, !mcsema_real_eip !98
  %55 = xor i32 %41, 10, !mcsema_real_eip !98
  %56 = xor i32 %41, %42, !mcsema_real_eip !98
  %57 = and i32 %55, %56, !mcsema_real_eip !98
  %58 = lshr i32 %57, 31, !mcsema_real_eip !98
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !98
  store i1 %59, i1* %OF, !mcsema_real_eip !98
  %60 = load i1, i1* %OF, !mcsema_real_eip !99
  %61 = load i1, i1* %SF, !mcsema_real_eip !99
  %62 = icmp eq i1 %61, %60, !mcsema_real_eip !99
  br i1 %62, label %block_0x189, label %block_0x16d, !mcsema_real_eip !99

block_0x16d:                                      ; preds = %block_0x163
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !100
  %63 = add i64 %RBP_val.164, -68, !mcsema_real_eip !100
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !100
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !100
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !100
  %67 = load i32, i32* %66, !mcsema_real_eip !100
  %68 = zext i32 %67 to i64, !mcsema_real_eip !100
  store i64 %68, i64* %XAX, !mcsema_real_eip !100
  %EAX.165 = bitcast i64* %XAX to i32*, !mcsema_real_eip !101
  %EAX_val.166 = load i32, i32* %EAX.165, !mcsema_real_eip !101
  %69 = add i32 1, %EAX_val.166, !mcsema_real_eip !101
  %70 = xor i32 %69, %EAX_val.166, !mcsema_real_eip !101
  %71 = xor i32 %70, 1, !mcsema_real_eip !101
  %72 = and i32 %71, 16, !mcsema_real_eip !101
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !101
  store i1 %73, i1* %AF, !mcsema_real_eip !101
  %74 = lshr i32 %69, 31, !mcsema_real_eip !101
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !101
  store i1 %75, i1* %SF, !mcsema_real_eip !101
  %76 = icmp eq i32 %69, 0, !mcsema_real_eip !101
  store i1 %76, i1* %ZF, !mcsema_real_eip !101
  %77 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !101
  %78 = xor i32 %77, -1, !mcsema_real_eip !101
  %79 = xor i32 %EAX_val.166, %69, !mcsema_real_eip !101
  %80 = and i32 %78, %79, !mcsema_real_eip !101
  %81 = lshr i32 %80, 31, !mcsema_real_eip !101
  %82 = and i32 %81, 1, !mcsema_real_eip !101
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !101
  store i1 %83, i1* %OF, !mcsema_real_eip !101
  %84 = trunc i32 %69 to i8, !mcsema_real_eip !101
  %85 = call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !101
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !101
  %87 = xor i1 %86, true, !mcsema_real_eip !101
  store i1 %87, i1* %PF, !mcsema_real_eip !101
  %88 = icmp ult i32 %69, %EAX_val.166, !mcsema_real_eip !101
  store i1 %88, i1* %CF, !mcsema_real_eip !101
  %89 = zext i32 %69 to i64, !mcsema_real_eip !101
  store i64 %89, i64* %XAX, !mcsema_real_eip !101
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !102
  %90 = add i64 %RBP_val.167, -68, !mcsema_real_eip !102
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !102
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !102
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !102
  %94 = load i32, i32* %93, !mcsema_real_eip !102
  %95 = sext i32 %94 to i64, !mcsema_real_eip !102
  store i64 %95, i64* %XCX, !mcsema_real_eip !102
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !103
  %96 = add i64 %RBP_val.168, -64, !mcsema_real_eip !103
  %RCX_val.169 = load i64, i64* %XCX, !mcsema_real_eip !103
  %97 = mul i64 %RCX_val.169, 4, !mcsema_real_eip !103
  %98 = add i64 %96, %97, !mcsema_real_eip !103
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !103
  %EAX.170 = bitcast i64* %XAX to i32*, !mcsema_real_eip !103
  %EAX_val.171 = load i32, i32* %EAX.170, !mcsema_real_eip !103
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !103
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !103
  store i32 %EAX_val.171, i32* %101, !mcsema_real_eip !103
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !104
  %102 = add i64 %RBP_val.172, -68, !mcsema_real_eip !104
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !104
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !104
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !104
  %106 = load i32, i32* %105, !mcsema_real_eip !104
  %107 = zext i32 %106 to i64, !mcsema_real_eip !104
  store i64 %107, i64* %XAX, !mcsema_real_eip !104
  %EAX.173 = bitcast i64* %XAX to i32*, !mcsema_real_eip !105
  %EAX_val.174 = load i32, i32* %EAX.173, !mcsema_real_eip !105
  %108 = add i32 1, %EAX_val.174, !mcsema_real_eip !105
  %109 = xor i32 %108, %EAX_val.174, !mcsema_real_eip !105
  %110 = xor i32 %109, 1, !mcsema_real_eip !105
  %111 = and i32 %110, 16, !mcsema_real_eip !105
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !105
  store i1 %112, i1* %AF, !mcsema_real_eip !105
  %113 = lshr i32 %108, 31, !mcsema_real_eip !105
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !105
  store i1 %114, i1* %SF, !mcsema_real_eip !105
  %115 = icmp eq i32 %108, 0, !mcsema_real_eip !105
  store i1 %115, i1* %ZF, !mcsema_real_eip !105
  %116 = xor i32 %EAX_val.174, 1, !mcsema_real_eip !105
  %117 = xor i32 %116, -1, !mcsema_real_eip !105
  %118 = xor i32 %EAX_val.174, %108, !mcsema_real_eip !105
  %119 = and i32 %117, %118, !mcsema_real_eip !105
  %120 = lshr i32 %119, 31, !mcsema_real_eip !105
  %121 = and i32 %120, 1, !mcsema_real_eip !105
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !105
  store i1 %122, i1* %OF, !mcsema_real_eip !105
  %123 = trunc i32 %108 to i8, !mcsema_real_eip !105
  %124 = call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !105
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !105
  %126 = xor i1 %125, true, !mcsema_real_eip !105
  store i1 %126, i1* %PF, !mcsema_real_eip !105
  %127 = icmp ult i32 %108, %EAX_val.174, !mcsema_real_eip !105
  store i1 %127, i1* %CF, !mcsema_real_eip !105
  %128 = zext i32 %108 to i64, !mcsema_real_eip !105
  store i64 %128, i64* %XAX, !mcsema_real_eip !105
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !106
  %129 = add i64 %RBP_val.175, -68, !mcsema_real_eip !106
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !106
  %EAX.176 = bitcast i64* %XAX to i32*, !mcsema_real_eip !106
  %EAX_val.177 = load i32, i32* %EAX.176, !mcsema_real_eip !106
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !106
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !106
  store i32 %EAX_val.177, i32* %132, !mcsema_real_eip !106
  br label %block_0x163, !mcsema_real_eip !107

block_0x189:                                      ; preds = %block_0x163
  %133 = zext i32 40 to i64, !mcsema_real_eip !108
  store i64 %133, i64* %XAX, !mcsema_real_eip !108
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !109
  %134 = zext i32 %EAX_val.179 to i64, !mcsema_real_eip !109
  store i64 %134, i64* %XDI, !mcsema_real_eip !109
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !110
  %135 = add i64 %RBP_val.180, -24, !mcsema_real_eip !110
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !110
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !110
  store i64 %137, i64* %XCX, !mcsema_real_eip !110
  %RBP_val.181 = load i64, i64* %XBP, !mcsema_real_eip !111
  %138 = add i64 %RBP_val.181, -80, !mcsema_real_eip !111
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !111
  %RCX_val.182 = load i64, i64* %XCX, !mcsema_real_eip !111
  store i64 %RCX_val.182, i64* %139, !mcsema_real_eip !111
  %RDI_val.183 = load i64, i64* %XDI, !mcsema_real_eip !112
  %RSP_val.184 = load i64, i64* %XSP, !mcsema_real_eip !112
  %140 = sub i64 %RSP_val.184, 8, !mcsema_real_eip !112
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !112
  store i64 -2415393069852865332, i64* %141, !mcsema_real_eip !112
  store i64 %140, i64* %XSP, !mcsema_real_eip !112
  %142 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.183), !mcsema_real_eip !112
  store i64 %142, i64* %XAX, !mcsema_real_eip !112
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !113
  %143 = add i64 %RBP_val.185, -88, !mcsema_real_eip !113
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !113
  %RAX_val.186 = load i64, i64* %XAX, !mcsema_real_eip !113
  store i64 %RAX_val.186, i64* %144, !mcsema_real_eip !113
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !114
  %145 = add i64 %RBP_val.187, -92, !mcsema_real_eip !114
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !114
  %147 = ptrtoint i64* %146 to i64, !mcsema_real_eip !114
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %148, !mcsema_real_eip !114
  br label %block_0x1a8, !mcsema_real_eip !115

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !115
  %149 = add i64 %RBP_val.188, -92, !mcsema_real_eip !115
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !115
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !115
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !115
  %153 = load i32, i32* %152, !mcsema_real_eip !115
  %154 = sub i32 %153, 10, !mcsema_real_eip !115
  %155 = xor i32 %154, %153, !mcsema_real_eip !115
  %156 = xor i32 %155, 10, !mcsema_real_eip !115
  %157 = and i32 %156, 16, !mcsema_real_eip !115
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !115
  store i1 %158, i1* %AF, !mcsema_real_eip !115
  %159 = trunc i32 %154 to i8, !mcsema_real_eip !115
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !115
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !115
  %162 = xor i1 %161, true, !mcsema_real_eip !115
  store i1 %162, i1* %PF, !mcsema_real_eip !115
  %163 = icmp eq i32 %154, 0, !mcsema_real_eip !115
  store i1 %163, i1* %ZF, !mcsema_real_eip !115
  %164 = lshr i32 %154, 31, !mcsema_real_eip !115
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !115
  store i1 %165, i1* %SF, !mcsema_real_eip !115
  %166 = icmp ult i32 %153, 10, !mcsema_real_eip !115
  store i1 %166, i1* %CF, !mcsema_real_eip !115
  %167 = xor i32 %153, 10, !mcsema_real_eip !115
  %168 = xor i32 %153, %154, !mcsema_real_eip !115
  %169 = and i32 %167, %168, !mcsema_real_eip !115
  %170 = lshr i32 %169, 31, !mcsema_real_eip !115
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !115
  store i1 %171, i1* %OF, !mcsema_real_eip !115
  %172 = load i1, i1* %OF, !mcsema_real_eip !116
  %173 = load i1, i1* %SF, !mcsema_real_eip !116
  %174 = icmp eq i1 %173, %172, !mcsema_real_eip !116
  br i1 %174, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !116

block_0x1b2:                                      ; preds = %block_0x1a8
  %RBP_val.189 = load i64, i64* %XBP, !mcsema_real_eip !117
  %175 = add i64 %RBP_val.189, -92, !mcsema_real_eip !117
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !117
  %177 = ptrtoint i64* %176 to i64, !mcsema_real_eip !117
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !117
  %179 = load i32, i32* %178, !mcsema_real_eip !117
  %180 = zext i32 %179 to i64, !mcsema_real_eip !117
  store i64 %180, i64* %XAX, !mcsema_real_eip !117
  %EAX.190 = bitcast i64* %XAX to i32*, !mcsema_real_eip !118
  %EAX_val.191 = load i32, i32* %EAX.190, !mcsema_real_eip !118
  %181 = add i32 1, %EAX_val.191, !mcsema_real_eip !118
  %182 = xor i32 %181, %EAX_val.191, !mcsema_real_eip !118
  %183 = xor i32 %182, 1, !mcsema_real_eip !118
  %184 = and i32 %183, 16, !mcsema_real_eip !118
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !118
  store i1 %185, i1* %AF, !mcsema_real_eip !118
  %186 = lshr i32 %181, 31, !mcsema_real_eip !118
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !118
  store i1 %187, i1* %SF, !mcsema_real_eip !118
  %188 = icmp eq i32 %181, 0, !mcsema_real_eip !118
  store i1 %188, i1* %ZF, !mcsema_real_eip !118
  %189 = xor i32 %EAX_val.191, 1, !mcsema_real_eip !118
  %190 = xor i32 %189, -1, !mcsema_real_eip !118
  %191 = xor i32 %EAX_val.191, %181, !mcsema_real_eip !118
  %192 = and i32 %190, %191, !mcsema_real_eip !118
  %193 = lshr i32 %192, 31, !mcsema_real_eip !118
  %194 = and i32 %193, 1, !mcsema_real_eip !118
  %195 = trunc i32 %194 to i1, !mcsema_real_eip !118
  store i1 %195, i1* %OF, !mcsema_real_eip !118
  %196 = trunc i32 %181 to i8, !mcsema_real_eip !118
  %197 = call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !118
  %198 = trunc i8 %197 to i1, !mcsema_real_eip !118
  %199 = xor i1 %198, true, !mcsema_real_eip !118
  store i1 %199, i1* %PF, !mcsema_real_eip !118
  %200 = icmp ult i32 %181, %EAX_val.191, !mcsema_real_eip !118
  store i1 %200, i1* %CF, !mcsema_real_eip !118
  %201 = zext i32 %181 to i64, !mcsema_real_eip !118
  store i64 %201, i64* %XAX, !mcsema_real_eip !118
  %RBP_val.192 = load i64, i64* %XBP, !mcsema_real_eip !119
  %202 = add i64 %RBP_val.192, -88, !mcsema_real_eip !119
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !119
  %204 = load i64, i64* %203, !mcsema_real_eip !119
  store i64 %204, i64* %XCX, !mcsema_real_eip !119
  %RBP_val.193 = load i64, i64* %XBP, !mcsema_real_eip !120
  %205 = add i64 %RBP_val.193, -92, !mcsema_real_eip !120
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !120
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !120
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !120
  %209 = load i32, i32* %208, !mcsema_real_eip !120
  %210 = sext i32 %209 to i64, !mcsema_real_eip !120
  store i64 %210, i64* %XDX, !mcsema_real_eip !120
  %RCX_val.194 = load i64, i64* %XCX, !mcsema_real_eip !121
  %211 = add i64 %RCX_val.194, 0, !mcsema_real_eip !121
  %RDX_val.195 = load i64, i64* %XDX, !mcsema_real_eip !121
  %212 = mul i64 %RDX_val.195, 4, !mcsema_real_eip !121
  %213 = add i64 %211, %212, !mcsema_real_eip !121
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !121
  %EAX.196 = bitcast i64* %XAX to i32*, !mcsema_real_eip !121
  %EAX_val.197 = load i32, i32* %EAX.196, !mcsema_real_eip !121
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !121
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !121
  store i32 %EAX_val.197, i32* %216, !mcsema_real_eip !121
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !122
  %217 = add i64 %RBP_val.198, -92, !mcsema_real_eip !122
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !122
  %219 = ptrtoint i64* %218 to i64, !mcsema_real_eip !122
  %220 = inttoptr i64 %219 to i32*, !mcsema_real_eip !122
  %221 = load i32, i32* %220, !mcsema_real_eip !122
  %222 = zext i32 %221 to i64, !mcsema_real_eip !122
  store i64 %222, i64* %XAX, !mcsema_real_eip !122
  %EAX.199 = bitcast i64* %XAX to i32*, !mcsema_real_eip !123
  %EAX_val.200 = load i32, i32* %EAX.199, !mcsema_real_eip !123
  %223 = add i32 1, %EAX_val.200, !mcsema_real_eip !123
  %224 = xor i32 %223, %EAX_val.200, !mcsema_real_eip !123
  %225 = xor i32 %224, 1, !mcsema_real_eip !123
  %226 = and i32 %225, 16, !mcsema_real_eip !123
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !123
  store i1 %227, i1* %AF, !mcsema_real_eip !123
  %228 = lshr i32 %223, 31, !mcsema_real_eip !123
  %229 = trunc i32 %228 to i1, !mcsema_real_eip !123
  store i1 %229, i1* %SF, !mcsema_real_eip !123
  %230 = icmp eq i32 %223, 0, !mcsema_real_eip !123
  store i1 %230, i1* %ZF, !mcsema_real_eip !123
  %231 = xor i32 %EAX_val.200, 1, !mcsema_real_eip !123
  %232 = xor i32 %231, -1, !mcsema_real_eip !123
  %233 = xor i32 %EAX_val.200, %223, !mcsema_real_eip !123
  %234 = and i32 %232, %233, !mcsema_real_eip !123
  %235 = lshr i32 %234, 31, !mcsema_real_eip !123
  %236 = and i32 %235, 1, !mcsema_real_eip !123
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !123
  store i1 %237, i1* %OF, !mcsema_real_eip !123
  %238 = trunc i32 %223 to i8, !mcsema_real_eip !123
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !123
  %240 = trunc i8 %239 to i1, !mcsema_real_eip !123
  %241 = xor i1 %240, true, !mcsema_real_eip !123
  store i1 %241, i1* %PF, !mcsema_real_eip !123
  %242 = icmp ult i32 %223, %EAX_val.200, !mcsema_real_eip !123
  store i1 %242, i1* %CF, !mcsema_real_eip !123
  %243 = zext i32 %223 to i64, !mcsema_real_eip !123
  store i64 %243, i64* %XAX, !mcsema_real_eip !123
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !124
  %244 = add i64 %RBP_val.201, -92, !mcsema_real_eip !124
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !124
  %EAX.202 = bitcast i64* %XAX to i32*, !mcsema_real_eip !124
  %EAX_val.203 = load i32, i32* %EAX.202, !mcsema_real_eip !124
  %246 = ptrtoint i64* %245 to i64, !mcsema_real_eip !124
  %247 = inttoptr i64 %246 to i32*, !mcsema_real_eip !124
  store i32 %EAX_val.203, i32* %247, !mcsema_real_eip !124
  br label %block_0x1a8, !mcsema_real_eip !125

block_0x1d1:                                      ; preds = %block_0x1a8
  %248 = zext i32 10 to i64, !mcsema_real_eip !126
  store i64 %248, i64* %XAX, !mcsema_real_eip !126
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !127
  %249 = add i64 %RBP_val.204, -64, !mcsema_real_eip !127
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !127
  %251 = ptrtoint i64* %250 to i64, !mcsema_real_eip !127
  store i64 %251, i64* %XCX, !mcsema_real_eip !127
  %RBP_val.205 = load i64, i64* %XBP, !mcsema_real_eip !128
  %252 = add i64 %RBP_val.205, -24, !mcsema_real_eip !128
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !128
  %254 = ptrtoint i64* %253 to i64, !mcsema_real_eip !128
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !128
  %256 = load i32, i32* %255, !mcsema_real_eip !128
  %257 = zext i32 %256 to i64, !mcsema_real_eip !128
  store i64 %257, i64* %XDI, !mcsema_real_eip !128
  %RBP_val.206 = load i64, i64* %XBP, !mcsema_real_eip !129
  %258 = add i64 %RBP_val.206, -80, !mcsema_real_eip !129
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !129
  %260 = load i64, i64* %259, !mcsema_real_eip !129
  store i64 %260, i64* %XDX, !mcsema_real_eip !129
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !130
  %261 = add i64 %RBP_val.207, -88, !mcsema_real_eip !130
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !130
  %263 = load i64, i64* %262, !mcsema_real_eip !130
  store i64 %263, i64* %XSI, !mcsema_real_eip !130
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !131
  %264 = add i64 %RBP_val.208, -24, !mcsema_real_eip !131
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !131
  %266 = ptrtoint i64* %265 to i64, !mcsema_real_eip !131
  %267 = inttoptr i64 %266 to i32*, !mcsema_real_eip !131
  %268 = load i32, i32* %267, !mcsema_real_eip !131
  %269 = zext i32 %268 to i64, !mcsema_real_eip !131
  store i64 %269, i64* %R8, !mcsema_real_eip !131
  %RBP_val.209 = load i64, i64* %XBP, !mcsema_real_eip !132
  %270 = add i64 %RBP_val.209, -80, !mcsema_real_eip !132
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !132
  %272 = load i64, i64* %271, !mcsema_real_eip !132
  store i64 %272, i64* %R9, !mcsema_real_eip !132
  %RBP_val.210 = load i64, i64* %XBP, !mcsema_real_eip !133
  %273 = add i64 %RBP_val.210, -88, !mcsema_real_eip !133
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !133
  %275 = load i64, i64* %274, !mcsema_real_eip !133
  store i64 %275, i64* %R10, !mcsema_real_eip !133
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !134
  %276 = add i64 %RBP_val.211, -104, !mcsema_real_eip !134
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !134
  %RSI_val.212 = load i64, i64* %XSI, !mcsema_real_eip !134
  store i64 %RSI_val.212, i64* %277, !mcsema_real_eip !134
  %RCX_val.213 = load i64, i64* %XCX, !mcsema_real_eip !135
  store i64 %RCX_val.213, i64* %XSI, !mcsema_real_eip !135
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !136
  %278 = add i64 %RBP_val.214, -104, !mcsema_real_eip !136
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !136
  %280 = load i64, i64* %279, !mcsema_real_eip !136
  store i64 %280, i64* %R11, !mcsema_real_eip !136
  %RBP_val.215 = load i64, i64* %XBP, !mcsema_real_eip !137
  %281 = add i64 %RBP_val.215, -112, !mcsema_real_eip !137
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !137
  %RCX_val.216 = load i64, i64* %XCX, !mcsema_real_eip !137
  store i64 %RCX_val.216, i64* %282, !mcsema_real_eip !137
  %R11_val.217 = load i64, i64* %R11, !mcsema_real_eip !138
  store i64 %R11_val.217, i64* %XCX, !mcsema_real_eip !138
  %RBP_val.218 = load i64, i64* %XBP, !mcsema_real_eip !139
  %283 = add i64 %RBP_val.218, -116, !mcsema_real_eip !139
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !139
  %R8D.219 = bitcast i64* %R8 to i32*, !mcsema_real_eip !139
  %R8D_val.220 = load i32, i32* %R8D.219, !mcsema_real_eip !139
  %285 = ptrtoint i64* %284 to i64, !mcsema_real_eip !139
  %286 = inttoptr i64 %285 to i32*, !mcsema_real_eip !139
  store i32 %R8D_val.220, i32* %286, !mcsema_real_eip !139
  %EAX.221 = bitcast i64* %XAX to i32*, !mcsema_real_eip !140
  %EAX_val.222 = load i32, i32* %EAX.221, !mcsema_real_eip !140
  %287 = zext i32 %EAX_val.222 to i64, !mcsema_real_eip !140
  store i64 %287, i64* %R8, !mcsema_real_eip !140
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !141
  %288 = add i64 %RBP_val.223, -128, !mcsema_real_eip !141
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !141
  %R9_val.224 = load i64, i64* %R9, !mcsema_real_eip !141
  store i64 %R9_val.224, i64* %289, !mcsema_real_eip !141
  %EAX.225 = bitcast i64* %XAX to i32*, !mcsema_real_eip !142
  %EAX_val.226 = load i32, i32* %EAX.225, !mcsema_real_eip !142
  %290 = zext i32 %EAX_val.226 to i64, !mcsema_real_eip !142
  store i64 %290, i64* %R9, !mcsema_real_eip !142
  %RBP_val.227 = load i64, i64* %XBP, !mcsema_real_eip !143
  %291 = add i64 %RBP_val.227, -116, !mcsema_real_eip !143
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !143
  %293 = ptrtoint i64* %292 to i64, !mcsema_real_eip !143
  %294 = inttoptr i64 %293 to i32*, !mcsema_real_eip !143
  %295 = load i32, i32* %294, !mcsema_real_eip !143
  %296 = zext i32 %295 to i64, !mcsema_real_eip !143
  store i64 %296, i64* %XAX, !mcsema_real_eip !143
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !144
  %297 = add i64 %RSP_val.228, 0, !mcsema_real_eip !144
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !144
  %EAX.229 = bitcast i64* %XAX to i32*, !mcsema_real_eip !144
  %EAX_val.230 = load i32, i32* %EAX.229, !mcsema_real_eip !144
  %299 = ptrtoint i64* %298 to i64, !mcsema_real_eip !144
  %300 = inttoptr i64 %299 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.230, i32* %300, !mcsema_real_eip !144
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !145
  %301 = add i64 %RBP_val.231, -112, !mcsema_real_eip !145
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !145
  %303 = load i64, i64* %302, !mcsema_real_eip !145
  store i64 %303, i64* %XBX, !mcsema_real_eip !145
  %RSP_val.232 = load i64, i64* %XSP, !mcsema_real_eip !146
  %304 = add i64 %RSP_val.232, 8, !mcsema_real_eip !146
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !146
  %RBX_val.233 = load i64, i64* %XBX, !mcsema_real_eip !146
  store i64 %RBX_val.233, i64* %305, !mcsema_real_eip !146
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !147
  %306 = add i64 %RBP_val.234, -128, !mcsema_real_eip !147
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !147
  %308 = load i64, i64* %307, !mcsema_real_eip !147
  store i64 %308, i64* %R14, !mcsema_real_eip !147
  %RSP_val.235 = load i64, i64* %XSP, !mcsema_real_eip !148
  %309 = add i64 %RSP_val.235, 16, !mcsema_real_eip !148
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !148
  %R14_val.236 = load i64, i64* %R14, !mcsema_real_eip !148
  store i64 %R14_val.236, i64* %310, !mcsema_real_eip !148
  %RSP_val.237 = load i64, i64* %XSP, !mcsema_real_eip !149
  %311 = add i64 %RSP_val.237, 24, !mcsema_real_eip !149
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !149
  %R10_val.238 = load i64, i64* %R10, !mcsema_real_eip !149
  store i64 %R10_val.238, i64* %312, !mcsema_real_eip !149
  %RSP_val.239 = load i64, i64* %XSP, !mcsema_real_eip !150
  %313 = sub i64 %RSP_val.239, 8, !mcsema_real_eip !150
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !150
  store i64 -4981261766360305936, i64* %314, !mcsema_real_eip !150
  store i64 %313, i64* %XSP, !mcsema_real_eip !150
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !150
  %315 = getelementptr %0, %0* @data_0x261, i64 0, i32 0, !mcsema_real_eip !151
  %316 = ptrtoint [4 x i8]* %315 to i64, !mcsema_real_eip !151
  %317 = add i64 %316, 0, !mcsema_real_eip !151
  store i64 %317, i64* %XDI, !mcsema_real_eip !151
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !152
  %318 = add i64 %RBP_val.240, -96, !mcsema_real_eip !152
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !152
  %EAX.241 = bitcast i64* %XAX to i32*, !mcsema_real_eip !152
  %EAX_val.242 = load i32, i32* %EAX.241, !mcsema_real_eip !152
  %320 = ptrtoint i64* %319 to i64, !mcsema_real_eip !152
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.242, i32* %321, !mcsema_real_eip !152
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !153
  %322 = add i64 %RBP_val.243, -96, !mcsema_real_eip !153
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !153
  %324 = ptrtoint i64* %323 to i64, !mcsema_real_eip !153
  %325 = inttoptr i64 %324 to i32*, !mcsema_real_eip !153
  %326 = load i32, i32* %325, !mcsema_real_eip !153
  %327 = zext i32 %326 to i64, !mcsema_real_eip !153
  store i64 %327, i64* %XSI, !mcsema_real_eip !153
  %AL.244 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.244, !mcsema_real_eip !154
  %RDI_val.245 = load i64, i64* %XDI, !mcsema_real_eip !155
  %RSI_val.246 = load i64, i64* %XSI, !mcsema_real_eip !155
  %RDX_val.247 = load i64, i64* %XDX, !mcsema_real_eip !155
  %RCX_val.248 = load i64, i64* %XCX, !mcsema_real_eip !155
  %R8_val.249 = load i64, i64* %R8, !mcsema_real_eip !155
  %R9_val.250 = load i64, i64* %R9, !mcsema_real_eip !155
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !155
  %328 = inttoptr i64 %RSP_val.251 to i64*, !mcsema_real_eip !155
  %329 = load i64, i64* %328, !mcsema_real_eip !155
  %330 = add i64 %RSP_val.251, 8, !mcsema_real_eip !155
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !155
  %332 = load i64, i64* %331, !mcsema_real_eip !155
  %333 = add i64 %330, 8, !mcsema_real_eip !155
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !155
  %335 = load i64, i64* %334, !mcsema_real_eip !155
  %336 = add i64 %333, 8, !mcsema_real_eip !155
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !155
  %338 = load i64, i64* %337, !mcsema_real_eip !155
  %339 = add i64 %336, 8, !mcsema_real_eip !155
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !155
  %341 = load i64, i64* %340, !mcsema_real_eip !155
  %342 = add i64 %339, 8, !mcsema_real_eip !155
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !155
  %344 = load i64, i64* %343, !mcsema_real_eip !155
  %345 = add i64 %342, 8, !mcsema_real_eip !155
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !155
  %347 = load i64, i64* %346, !mcsema_real_eip !155
  %348 = add i64 %345, 8, !mcsema_real_eip !155
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !155
  %350 = load i64, i64* %349, !mcsema_real_eip !155
  %351 = add i64 %348, 8, !mcsema_real_eip !155
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !155
  %353 = load i64, i64* %352, !mcsema_real_eip !155
  %354 = add i64 %351, 8, !mcsema_real_eip !155
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !155
  %356 = load i64, i64* %355, !mcsema_real_eip !155
  %RSP_val.252 = load i64, i64* %XSP, !mcsema_real_eip !155
  %357 = sub i64 %RSP_val.252, 8, !mcsema_real_eip !155
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !155
  store i64 -2415393069852865332, i64* %358, !mcsema_real_eip !155
  store i64 %357, i64* %XSP, !mcsema_real_eip !155
  %359 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.245, i64 %RSI_val.246, i64 %RDX_val.247, i64 %RCX_val.248, i64 %R8_val.249, i64 %R9_val.250, i64 %329, i64 %332, i64 %335, i64 %338, i64 %341, i64 %344, i64 %347, i64 %350, i64 %353, i64 %356), !mcsema_real_eip !155
  store i64 %359, i64* %XAX, !mcsema_real_eip !155
  %RBP_val.253 = load i64, i64* %XBP, !mcsema_real_eip !156
  %360 = add i64 %RBP_val.253, -96, !mcsema_real_eip !156
  %361 = inttoptr i64 %360 to i64*, !mcsema_real_eip !156
  %362 = ptrtoint i64* %361 to i64, !mcsema_real_eip !156
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !156
  %364 = load i32, i32* %363, !mcsema_real_eip !156
  %365 = zext i32 %364 to i64, !mcsema_real_eip !156
  store i64 %365, i64* %XSI, !mcsema_real_eip !156
  %RBP_val.254 = load i64, i64* %XBP, !mcsema_real_eip !157
  %366 = add i64 %RBP_val.254, -132, !mcsema_real_eip !157
  %367 = inttoptr i64 %366 to i64*, !mcsema_real_eip !157
  %EAX.255 = bitcast i64* %XAX to i32*, !mcsema_real_eip !157
  %EAX_val.256 = load i32, i32* %EAX.255, !mcsema_real_eip !157
  %368 = ptrtoint i64* %367 to i64, !mcsema_real_eip !157
  %369 = inttoptr i64 %368 to i32*, !mcsema_real_eip !157
  store i32 %EAX_val.256, i32* %369, !mcsema_real_eip !157
  %ESI.257 = bitcast i64* %XSI to i32*, !mcsema_real_eip !158
  %ESI_val.258 = load i32, i32* %ESI.257, !mcsema_real_eip !158
  %370 = zext i32 %ESI_val.258 to i64, !mcsema_real_eip !158
  store i64 %370, i64* %XAX, !mcsema_real_eip !158
  %RSP_val.259 = load i64, i64* %XSP, !mcsema_real_eip !159
  %371 = add i64 160, %RSP_val.259, !mcsema_real_eip !159
  %372 = xor i64 %371, %RSP_val.259, !mcsema_real_eip !159
  %373 = xor i64 %372, 160, !mcsema_real_eip !159
  %374 = and i64 %373, 16, !mcsema_real_eip !159
  %375 = icmp ne i64 %374, 0, !mcsema_real_eip !159
  store i1 %375, i1* %AF, !mcsema_real_eip !159
  %376 = lshr i64 %371, 63, !mcsema_real_eip !159
  %377 = trunc i64 %376 to i1, !mcsema_real_eip !159
  store i1 %377, i1* %SF, !mcsema_real_eip !159
  %378 = icmp eq i64 %371, 0, !mcsema_real_eip !159
  store i1 %378, i1* %ZF, !mcsema_real_eip !159
  %379 = xor i64 %RSP_val.259, 160, !mcsema_real_eip !159
  %380 = xor i64 %379, -1, !mcsema_real_eip !159
  %381 = xor i64 %RSP_val.259, %371, !mcsema_real_eip !159
  %382 = and i64 %380, %381, !mcsema_real_eip !159
  %383 = lshr i64 %382, 63, !mcsema_real_eip !159
  %384 = and i64 %383, 1, !mcsema_real_eip !159
  %385 = trunc i64 %384 to i1, !mcsema_real_eip !159
  store i1 %385, i1* %OF, !mcsema_real_eip !159
  %386 = trunc i64 %371 to i8, !mcsema_real_eip !159
  %387 = call i8 @llvm.ctpop.i8(i8 %386), !mcsema_real_eip !159
  %388 = trunc i8 %387 to i1, !mcsema_real_eip !159
  %389 = xor i1 %388, true, !mcsema_real_eip !159
  store i1 %389, i1* %PF, !mcsema_real_eip !159
  %390 = icmp ult i64 %371, %RSP_val.259, !mcsema_real_eip !159
  store i1 %390, i1* %CF, !mcsema_real_eip !159
  store i64 %371, i64* %XSP, !mcsema_real_eip !159
  %RSP_val.260 = load i64, i64* %XSP, !mcsema_real_eip !160
  %391 = inttoptr i64 %RSP_val.260 to i64*, !mcsema_real_eip !160
  %392 = load i64, i64* %391, !mcsema_real_eip !160
  store i64 %392, i64* %XBX, !mcsema_real_eip !160
  %393 = add i64 %RSP_val.260, 8, !mcsema_real_eip !160
  store i64 %393, i64* %XSP, !mcsema_real_eip !160
  %RSP_val.261 = load i64, i64* %XSP, !mcsema_real_eip !161
  %394 = inttoptr i64 %RSP_val.261 to i64*, !mcsema_real_eip !161
  %395 = load i64, i64* %394, !mcsema_real_eip !161
  store i64 %395, i64* %R14, !mcsema_real_eip !161
  %396 = add i64 %RSP_val.261, 8, !mcsema_real_eip !161
  store i64 %396, i64* %XSP, !mcsema_real_eip !161
  %RSP_val.262 = load i64, i64* %XSP, !mcsema_real_eip !162
  %397 = inttoptr i64 %RSP_val.262 to i64*, !mcsema_real_eip !162
  %398 = load i64, i64* %397, !mcsema_real_eip !162
  store i64 %398, i64* %XBP, !mcsema_real_eip !162
  %399 = add i64 %RSP_val.262, 8, !mcsema_real_eip !162
  store i64 %399, i64* %XSP, !mcsema_real_eip !162
  %RSP_val.263 = load i64, i64* %XSP, !mcsema_real_eip !163
  %400 = add i64 %RSP_val.263, 8, !mcsema_real_eip !163
  %401 = inttoptr i64 %RSP_val.263 to i64*, !mcsema_real_eip !163
  %402 = load i64, i64* %401, !mcsema_real_eip !163
  store i64 %402, i64* %XIP, !mcsema_real_eip !163
  store i64 %400, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
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
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 39}
!15 = !{i64 43}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 54}
!19 = !{i64 58}
!20 = !{i64 65}
!21 = !{i64 68}
!22 = !{i64 71}
!23 = !{i64 74}
!24 = !{i64 81}
!25 = !{i64 84}
!26 = !{i64 87}
!27 = !{i64 93}
!28 = !{i64 97}
!29 = !{i64 101}
!30 = !{i64 104}
!31 = !{i64 107}
!32 = !{i64 110}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 119}
!36 = !{i64 124}
!37 = !{i64 128}
!38 = !{i64 130}
!39 = !{i64 133}
!40 = !{i64 136}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 149}
!44 = !{i64 155}
!45 = !{i64 159}
!46 = !{i64 163}
!47 = !{i64 166}
!48 = !{i64 169}
!49 = !{i64 172}
!50 = !{i64 175}
!51 = !{i64 178}
!52 = !{i64 181}
!53 = !{i64 186}
!54 = !{i64 189}
!55 = !{i64 192}
!56 = !{i64 195}
!57 = !{i64 202}
!58 = !{i64 205}
!59 = !{i64 208}
!60 = !{i64 214}
!61 = !{i64 218}
!62 = !{i64 222}
!63 = !{i64 225}
!64 = !{i64 228}
!65 = !{i64 231}
!66 = !{i64 234}
!67 = !{i64 237}
!68 = !{i64 240}
!69 = !{i64 245}
!70 = !{i64 249}
!71 = !{i64 251}
!72 = !{i64 254}
!73 = !{i64 257}
!74 = !{i64 264}
!75 = !{i64 267}
!76 = !{i64 270}
!77 = !{i64 276}
!78 = !{i64 280}
!79 = !{i64 284}
!80 = !{i64 287}
!81 = !{i64 290}
!82 = !{i64 293}
!83 = !{i64 296}
!84 = !{i64 299}
!85 = !{i64 302}
!86 = !{i64 307}
!87 = !{i64 310}
!88 = !{i64 311}
!89 = !{i64 312}
!90 = !{i64 320}
!91 = !{i64 321}
!92 = !{i64 324}
!93 = !{i64 326}
!94 = !{i64 327}
!95 = !{i64 334}
!96 = !{i64 341}
!97 = !{i64 348}
!98 = !{i64 355}
!99 = !{i64 359}
!100 = !{i64 365}
!101 = !{i64 368}
!102 = !{i64 371}
!103 = !{i64 375}
!104 = !{i64 379}
!105 = !{i64 382}
!106 = !{i64 385}
!107 = !{i64 388}
!108 = !{i64 393}
!109 = !{i64 398}
!110 = !{i64 400}
!111 = !{i64 404}
!112 = !{i64 408}
!113 = !{i64 413}
!114 = !{i64 417}
!115 = !{i64 424}
!116 = !{i64 428}
!117 = !{i64 434}
!118 = !{i64 437}
!119 = !{i64 440}
!120 = !{i64 444}
!121 = !{i64 448}
!122 = !{i64 451}
!123 = !{i64 454}
!124 = !{i64 457}
!125 = !{i64 460}
!126 = !{i64 465}
!127 = !{i64 470}
!128 = !{i64 474}
!129 = !{i64 477}
!130 = !{i64 481}
!131 = !{i64 485}
!132 = !{i64 489}
!133 = !{i64 493}
!134 = !{i64 497}
!135 = !{i64 501}
!136 = !{i64 504}
!137 = !{i64 508}
!138 = !{i64 512}
!139 = !{i64 515}
!140 = !{i64 519}
!141 = !{i64 522}
!142 = !{i64 526}
!143 = !{i64 529}
!144 = !{i64 532}
!145 = !{i64 535}
!146 = !{i64 539}
!147 = !{i64 544}
!148 = !{i64 548}
!149 = !{i64 553}
!150 = !{i64 558}
!151 = !{i64 563}
!152 = !{i64 573}
!153 = !{i64 576}
!154 = !{i64 579}
!155 = !{i64 581}
!156 = !{i64 586}
!157 = !{i64 589}
!158 = !{i64 595}
!159 = !{i64 597}
!160 = !{i64 604}
!161 = !{i64 605}
!162 = !{i64 607}
!163 = !{i64 608}
