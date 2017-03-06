; ModuleID = 'Output/test_26.clang.bc'
source_filename = "Output/test_26.clang.bc"
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
module asm "  .globl sub_120;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_120(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x221 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x228 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\16\01\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\01\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %5 = add i64 %RBP_val.5, 48, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %8 = add i64 %RBP_val.6, 40, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = load i64, i64* %9, !mcsema_real_eip !6
  store i64 %10, i64* %R10, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %11 = add i64 %RBP_val.7, 24, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !7
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
  %20 = add i64 %RBP_val.9, -56, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !9
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !9
  store i64 %RDI_val.10, i64* %21, !mcsema_real_eip !9
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !10
  %22 = add i64 %RBP_val.11, -48, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !10
  %ESI.12 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.13 = load i32, i32* %ESI.12, !mcsema_real_eip !10
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.13, i32* %25, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %26 = add i64 %RBP_val.14, -48, !mcsema_real_eip !11
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !11
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !11
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !11
  %30 = load i32, i32* %29, !mcsema_real_eip !11
  %31 = zext i32 %30 to i64, !mcsema_real_eip !11
  store i64 %31, i64* %XSI, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %32 = add i64 %RBP_val.15, -32, !mcsema_real_eip !12
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !12
  %ESI.16 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.17 = load i32, i32* %ESI.16, !mcsema_real_eip !12
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !12
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !12
  store i32 %ESI_val.17, i32* %35, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %36 = add i64 %RBP_val.18, -56, !mcsema_real_eip !13
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !13
  %38 = load i64, i64* %37, !mcsema_real_eip !13
  store i64 %38, i64* %XDI, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %39 = add i64 %RBP_val.19, -40, !mcsema_real_eip !14
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !14
  %RDI_val.20 = load i64, i64* %XDI, !mcsema_real_eip !14
  store i64 %RDI_val.20, i64* %40, !mcsema_real_eip !14
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !15
  %41 = add i64 %RBP_val.21, -64, !mcsema_real_eip !15
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !15
  %RDX_val.22 = load i64, i64* %XDX, !mcsema_real_eip !15
  store i64 %RDX_val.22, i64* %42, !mcsema_real_eip !15
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !16
  %43 = add i64 %RBP_val.23, -72, !mcsema_real_eip !16
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !16
  %RCX_val.24 = load i64, i64* %XCX, !mcsema_real_eip !16
  store i64 %RCX_val.24, i64* %44, !mcsema_real_eip !16
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !17
  %45 = add i64 %RBP_val.25, -76, !mcsema_real_eip !17
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !17
  %R8D.26 = bitcast i64* %R8 to i32*, !mcsema_real_eip !17
  %R8D_val.27 = load i32, i32* %R8D.26, !mcsema_real_eip !17
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !17
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !17
  store i32 %R8D_val.27, i32* %48, !mcsema_real_eip !17
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !18
  %49 = add i64 %RBP_val.28, -80, !mcsema_real_eip !18
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !18
  %R9D.29 = bitcast i64* %R9 to i32*, !mcsema_real_eip !18
  %R9D_val.30 = load i32, i32* %R9D.29, !mcsema_real_eip !18
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !18
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !18
  store i32 %R9D_val.30, i32* %52, !mcsema_real_eip !18
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !19
  %53 = add i64 %RBP_val.31, -84, !mcsema_real_eip !19
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !19
  %EBX.32 = bitcast i64* %XBX to i32*, !mcsema_real_eip !19
  %EBX_val.33 = load i32, i32* %EBX.32, !mcsema_real_eip !19
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !19
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !19
  store i32 %EBX_val.33, i32* %56, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %57 = add i64 %RBP_val.34, -96, !mcsema_real_eip !20
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !20
  %R10_val.35 = load i64, i64* %R10, !mcsema_real_eip !20
  store i64 %R10_val.35, i64* %58, !mcsema_real_eip !20
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !21
  %59 = add i64 %RBP_val.36, -104, !mcsema_real_eip !21
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !21
  %RAX_val.37 = load i64, i64* %XAX, !mcsema_real_eip !21
  store i64 %RAX_val.37, i64* %60, !mcsema_real_eip !21
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !22
  %61 = add i64 %RBP_val.38, -40, !mcsema_real_eip !22
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !22
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !22
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !22
  %65 = load i32, i32* %64, !mcsema_real_eip !22
  %66 = zext i32 %65 to i64, !mcsema_real_eip !22
  store i64 %66, i64* %XSI, !mcsema_real_eip !22
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !23
  %67 = add i64 %RBP_val.39, -64, !mcsema_real_eip !23
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !23
  %69 = load i64, i64* %68, !mcsema_real_eip !23
  store i64 %69, i64* %XAX, !mcsema_real_eip !23
  %RAX_val.40 = load i64, i64* %XAX, !mcsema_real_eip !24
  %70 = add i64 %RAX_val.40, 0, !mcsema_real_eip !24
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !24
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !24
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !24
  %74 = load i32, i32* %73, !mcsema_real_eip !24
  %75 = zext i32 %74 to i64, !mcsema_real_eip !24
  store i64 %75, i64* %R8, !mcsema_real_eip !24
  %ESI.41 = bitcast i64* %XSI to i32*, !mcsema_real_eip !25
  %ESI_val.42 = load i32, i32* %ESI.41, !mcsema_real_eip !25
  %R8D.43 = bitcast i64* %R8 to i32*, !mcsema_real_eip !25
  %R8D_val.44 = load i32, i32* %R8D.43, !mcsema_real_eip !25
  %76 = add i32 %R8D_val.44, %ESI_val.42, !mcsema_real_eip !25
  %77 = xor i32 %76, %ESI_val.42, !mcsema_real_eip !25
  %78 = xor i32 %77, %R8D_val.44, !mcsema_real_eip !25
  %79 = and i32 %78, 16, !mcsema_real_eip !25
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !25
  store i1 %80, i1* %AF, !mcsema_real_eip !25
  %81 = lshr i32 %76, 31, !mcsema_real_eip !25
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !25
  store i1 %82, i1* %SF, !mcsema_real_eip !25
  %83 = icmp eq i32 %76, 0, !mcsema_real_eip !25
  store i1 %83, i1* %ZF, !mcsema_real_eip !25
  %84 = xor i32 %ESI_val.42, %R8D_val.44, !mcsema_real_eip !25
  %85 = xor i32 %84, -1, !mcsema_real_eip !25
  %86 = xor i32 %ESI_val.42, %76, !mcsema_real_eip !25
  %87 = and i32 %85, %86, !mcsema_real_eip !25
  %88 = lshr i32 %87, 31, !mcsema_real_eip !25
  %89 = and i32 %88, 1, !mcsema_real_eip !25
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !25
  store i1 %90, i1* %OF, !mcsema_real_eip !25
  %91 = trunc i32 %76 to i8, !mcsema_real_eip !25
  %92 = call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !25
  %93 = trunc i8 %92 to i1, !mcsema_real_eip !25
  %94 = xor i1 %93, true, !mcsema_real_eip !25
  store i1 %94, i1* %PF, !mcsema_real_eip !25
  %95 = icmp ult i32 %76, %ESI_val.42, !mcsema_real_eip !25
  store i1 %95, i1* %CF, !mcsema_real_eip !25
  %96 = zext i32 %76 to i64, !mcsema_real_eip !25
  store i64 %96, i64* %XSI, !mcsema_real_eip !25
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !26
  %97 = add i64 %RBP_val.45, -72, !mcsema_real_eip !26
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !26
  %99 = load i64, i64* %98, !mcsema_real_eip !26
  store i64 %99, i64* %XAX, !mcsema_real_eip !26
  %RAX_val.46 = load i64, i64* %XAX, !mcsema_real_eip !27
  %100 = add i64 %RAX_val.46, 0, !mcsema_real_eip !27
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !27
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !27
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !27
  %104 = load i32, i32* %103, !mcsema_real_eip !27
  %105 = zext i32 %104 to i64, !mcsema_real_eip !27
  store i64 %105, i64* %R8, !mcsema_real_eip !27
  %ESI.47 = bitcast i64* %XSI to i32*, !mcsema_real_eip !28
  %ESI_val.48 = load i32, i32* %ESI.47, !mcsema_real_eip !28
  %R8D.49 = bitcast i64* %R8 to i32*, !mcsema_real_eip !28
  %R8D_val.50 = load i32, i32* %R8D.49, !mcsema_real_eip !28
  %106 = add i32 %R8D_val.50, %ESI_val.48, !mcsema_real_eip !28
  %107 = xor i32 %106, %ESI_val.48, !mcsema_real_eip !28
  %108 = xor i32 %107, %R8D_val.50, !mcsema_real_eip !28
  %109 = and i32 %108, 16, !mcsema_real_eip !28
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !28
  store i1 %110, i1* %AF, !mcsema_real_eip !28
  %111 = lshr i32 %106, 31, !mcsema_real_eip !28
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !28
  store i1 %112, i1* %SF, !mcsema_real_eip !28
  %113 = icmp eq i32 %106, 0, !mcsema_real_eip !28
  store i1 %113, i1* %ZF, !mcsema_real_eip !28
  %114 = xor i32 %ESI_val.48, %R8D_val.50, !mcsema_real_eip !28
  %115 = xor i32 %114, -1, !mcsema_real_eip !28
  %116 = xor i32 %ESI_val.48, %106, !mcsema_real_eip !28
  %117 = and i32 %115, %116, !mcsema_real_eip !28
  %118 = lshr i32 %117, 31, !mcsema_real_eip !28
  %119 = and i32 %118, 1, !mcsema_real_eip !28
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !28
  store i1 %120, i1* %OF, !mcsema_real_eip !28
  %121 = trunc i32 %106 to i8, !mcsema_real_eip !28
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !28
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !28
  %124 = xor i1 %123, true, !mcsema_real_eip !28
  store i1 %124, i1* %PF, !mcsema_real_eip !28
  %125 = icmp ult i32 %106, %ESI_val.48, !mcsema_real_eip !28
  store i1 %125, i1* %CF, !mcsema_real_eip !28
  %126 = zext i32 %106 to i64, !mcsema_real_eip !28
  store i64 %126, i64* %XSI, !mcsema_real_eip !28
  %R11_val.51 = load i64, i64* %R11, !mcsema_real_eip !29
  %127 = add i64 %R11_val.51, 0, !mcsema_real_eip !29
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !29
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !29
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !29
  %131 = load i32, i32* %130, !mcsema_real_eip !29
  %132 = zext i32 %131 to i64, !mcsema_real_eip !29
  store i64 %132, i64* %R8, !mcsema_real_eip !29
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !30
  %133 = add i64 %RBP_val.52, -96, !mcsema_real_eip !30
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !30
  %135 = load i64, i64* %134, !mcsema_real_eip !30
  store i64 %135, i64* %XAX, !mcsema_real_eip !30
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !31
  %136 = add i64 %RAX_val.53, 0, !mcsema_real_eip !31
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !31
  %138 = ptrtoint i64* %137 to i64, !mcsema_real_eip !31
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !31
  %140 = load i32, i32* %139, !mcsema_real_eip !31
  %141 = zext i32 %140 to i64, !mcsema_real_eip !31
  store i64 %141, i64* %R9, !mcsema_real_eip !31
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !32
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !32
  %R9D.56 = bitcast i64* %R9 to i32*, !mcsema_real_eip !32
  %R9D_val.57 = load i32, i32* %R9D.56, !mcsema_real_eip !32
  %142 = add i32 %R9D_val.57, %R8D_val.55, !mcsema_real_eip !32
  %143 = xor i32 %142, %R8D_val.55, !mcsema_real_eip !32
  %144 = xor i32 %143, %R9D_val.57, !mcsema_real_eip !32
  %145 = and i32 %144, 16, !mcsema_real_eip !32
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !32
  store i1 %146, i1* %AF, !mcsema_real_eip !32
  %147 = lshr i32 %142, 31, !mcsema_real_eip !32
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !32
  store i1 %148, i1* %SF, !mcsema_real_eip !32
  %149 = icmp eq i32 %142, 0, !mcsema_real_eip !32
  store i1 %149, i1* %ZF, !mcsema_real_eip !32
  %150 = xor i32 %R8D_val.55, %R9D_val.57, !mcsema_real_eip !32
  %151 = xor i32 %150, -1, !mcsema_real_eip !32
  %152 = xor i32 %R8D_val.55, %142, !mcsema_real_eip !32
  %153 = and i32 %151, %152, !mcsema_real_eip !32
  %154 = lshr i32 %153, 31, !mcsema_real_eip !32
  %155 = and i32 %154, 1, !mcsema_real_eip !32
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !32
  store i1 %156, i1* %OF, !mcsema_real_eip !32
  %157 = trunc i32 %142 to i8, !mcsema_real_eip !32
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !32
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !32
  %160 = xor i1 %159, true, !mcsema_real_eip !32
  store i1 %160, i1* %PF, !mcsema_real_eip !32
  %161 = icmp ult i32 %142, %R8D_val.55, !mcsema_real_eip !32
  store i1 %161, i1* %CF, !mcsema_real_eip !32
  %162 = zext i32 %142 to i64, !mcsema_real_eip !32
  store i64 %162, i64* %R8, !mcsema_real_eip !32
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !33
  %163 = add i64 %RBP_val.58, -104, !mcsema_real_eip !33
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !33
  %165 = load i64, i64* %164, !mcsema_real_eip !33
  store i64 %165, i64* %XAX, !mcsema_real_eip !33
  %RAX_val.59 = load i64, i64* %XAX, !mcsema_real_eip !34
  %166 = add i64 %RAX_val.59, 0, !mcsema_real_eip !34
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !34
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !34
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !34
  %170 = load i32, i32* %169, !mcsema_real_eip !34
  %171 = zext i32 %170 to i64, !mcsema_real_eip !34
  store i64 %171, i64* %R9, !mcsema_real_eip !34
  %R8D.60 = bitcast i64* %R8 to i32*, !mcsema_real_eip !35
  %R8D_val.61 = load i32, i32* %R8D.60, !mcsema_real_eip !35
  %R9D.62 = bitcast i64* %R9 to i32*, !mcsema_real_eip !35
  %R9D_val.63 = load i32, i32* %R9D.62, !mcsema_real_eip !35
  %172 = add i32 %R9D_val.63, %R8D_val.61, !mcsema_real_eip !35
  %173 = xor i32 %172, %R8D_val.61, !mcsema_real_eip !35
  %174 = xor i32 %173, %R9D_val.63, !mcsema_real_eip !35
  %175 = and i32 %174, 16, !mcsema_real_eip !35
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !35
  store i1 %176, i1* %AF, !mcsema_real_eip !35
  %177 = lshr i32 %172, 31, !mcsema_real_eip !35
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !35
  store i1 %178, i1* %SF, !mcsema_real_eip !35
  %179 = icmp eq i32 %172, 0, !mcsema_real_eip !35
  store i1 %179, i1* %ZF, !mcsema_real_eip !35
  %180 = xor i32 %R8D_val.61, %R9D_val.63, !mcsema_real_eip !35
  %181 = xor i32 %180, -1, !mcsema_real_eip !35
  %182 = xor i32 %R8D_val.61, %172, !mcsema_real_eip !35
  %183 = and i32 %181, %182, !mcsema_real_eip !35
  %184 = lshr i32 %183, 31, !mcsema_real_eip !35
  %185 = and i32 %184, 1, !mcsema_real_eip !35
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !35
  store i1 %186, i1* %OF, !mcsema_real_eip !35
  %187 = trunc i32 %172 to i8, !mcsema_real_eip !35
  %188 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !35
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !35
  %190 = xor i1 %189, true, !mcsema_real_eip !35
  store i1 %190, i1* %PF, !mcsema_real_eip !35
  %191 = icmp ult i32 %172, %R8D_val.61, !mcsema_real_eip !35
  store i1 %191, i1* %CF, !mcsema_real_eip !35
  %192 = zext i32 %172 to i64, !mcsema_real_eip !35
  store i64 %192, i64* %R8, !mcsema_real_eip !35
  %ESI.64 = bitcast i64* %XSI to i32*, !mcsema_real_eip !36
  %ESI_val.65 = load i32, i32* %ESI.64, !mcsema_real_eip !36
  %R8D.66 = bitcast i64* %R8 to i32*, !mcsema_real_eip !36
  %R8D_val.67 = load i32, i32* %R8D.66, !mcsema_real_eip !36
  %193 = add i32 %R8D_val.67, %ESI_val.65, !mcsema_real_eip !36
  %194 = xor i32 %193, %ESI_val.65, !mcsema_real_eip !36
  %195 = xor i32 %194, %R8D_val.67, !mcsema_real_eip !36
  %196 = and i32 %195, 16, !mcsema_real_eip !36
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !36
  store i1 %197, i1* %AF, !mcsema_real_eip !36
  %198 = lshr i32 %193, 31, !mcsema_real_eip !36
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !36
  store i1 %199, i1* %SF, !mcsema_real_eip !36
  %200 = icmp eq i32 %193, 0, !mcsema_real_eip !36
  store i1 %200, i1* %ZF, !mcsema_real_eip !36
  %201 = xor i32 %ESI_val.65, %R8D_val.67, !mcsema_real_eip !36
  %202 = xor i32 %201, -1, !mcsema_real_eip !36
  %203 = xor i32 %ESI_val.65, %193, !mcsema_real_eip !36
  %204 = and i32 %202, %203, !mcsema_real_eip !36
  %205 = lshr i32 %204, 31, !mcsema_real_eip !36
  %206 = and i32 %205, 1, !mcsema_real_eip !36
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !36
  store i1 %207, i1* %OF, !mcsema_real_eip !36
  %208 = trunc i32 %193 to i8, !mcsema_real_eip !36
  %209 = call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !36
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !36
  %211 = xor i1 %210, true, !mcsema_real_eip !36
  store i1 %211, i1* %PF, !mcsema_real_eip !36
  %212 = icmp ult i32 %193, %ESI_val.65, !mcsema_real_eip !36
  store i1 %212, i1* %CF, !mcsema_real_eip !36
  %213 = zext i32 %193 to i64, !mcsema_real_eip !36
  store i64 %213, i64* %XSI, !mcsema_real_eip !36
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !37
  %214 = add i64 %RBP_val.68, -120, !mcsema_real_eip !37
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !37
  %ESI.69 = bitcast i64* %XSI to i32*, !mcsema_real_eip !37
  %ESI_val.70 = load i32, i32* %ESI.69, !mcsema_real_eip !37
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !37
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !37
  store i32 %ESI_val.70, i32* %217, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !38
  %218 = add i64 %RBP_val.71, -36, !mcsema_real_eip !38
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !38
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !38
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !38
  %222 = load i32, i32* %221, !mcsema_real_eip !38
  %223 = zext i32 %222 to i64, !mcsema_real_eip !38
  store i64 %223, i64* %XSI, !mcsema_real_eip !38
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !39
  %224 = add i64 %RBP_val.72, -64, !mcsema_real_eip !39
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !39
  %226 = load i64, i64* %225, !mcsema_real_eip !39
  store i64 %226, i64* %XAX, !mcsema_real_eip !39
  %RAX_val.73 = load i64, i64* %XAX, !mcsema_real_eip !40
  %227 = add i64 %RAX_val.73, 4, !mcsema_real_eip !40
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !40
  %229 = ptrtoint i64* %228 to i64, !mcsema_real_eip !40
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !40
  %231 = load i32, i32* %230, !mcsema_real_eip !40
  %232 = zext i32 %231 to i64, !mcsema_real_eip !40
  store i64 %232, i64* %R8, !mcsema_real_eip !40
  %ESI.74 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.75 = load i32, i32* %ESI.74, !mcsema_real_eip !41
  %R8D.76 = bitcast i64* %R8 to i32*, !mcsema_real_eip !41
  %R8D_val.77 = load i32, i32* %R8D.76, !mcsema_real_eip !41
  %233 = add i32 %R8D_val.77, %ESI_val.75, !mcsema_real_eip !41
  %234 = xor i32 %233, %ESI_val.75, !mcsema_real_eip !41
  %235 = xor i32 %234, %R8D_val.77, !mcsema_real_eip !41
  %236 = and i32 %235, 16, !mcsema_real_eip !41
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !41
  store i1 %237, i1* %AF, !mcsema_real_eip !41
  %238 = lshr i32 %233, 31, !mcsema_real_eip !41
  %239 = trunc i32 %238 to i1, !mcsema_real_eip !41
  store i1 %239, i1* %SF, !mcsema_real_eip !41
  %240 = icmp eq i32 %233, 0, !mcsema_real_eip !41
  store i1 %240, i1* %ZF, !mcsema_real_eip !41
  %241 = xor i32 %ESI_val.75, %R8D_val.77, !mcsema_real_eip !41
  %242 = xor i32 %241, -1, !mcsema_real_eip !41
  %243 = xor i32 %ESI_val.75, %233, !mcsema_real_eip !41
  %244 = and i32 %242, %243, !mcsema_real_eip !41
  %245 = lshr i32 %244, 31, !mcsema_real_eip !41
  %246 = and i32 %245, 1, !mcsema_real_eip !41
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !41
  store i1 %247, i1* %OF, !mcsema_real_eip !41
  %248 = trunc i32 %233 to i8, !mcsema_real_eip !41
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !41
  %250 = trunc i8 %249 to i1, !mcsema_real_eip !41
  %251 = xor i1 %250, true, !mcsema_real_eip !41
  store i1 %251, i1* %PF, !mcsema_real_eip !41
  %252 = icmp ult i32 %233, %ESI_val.75, !mcsema_real_eip !41
  store i1 %252, i1* %CF, !mcsema_real_eip !41
  %253 = zext i32 %233 to i64, !mcsema_real_eip !41
  store i64 %253, i64* %XSI, !mcsema_real_eip !41
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !42
  %254 = add i64 %RBP_val.78, -72, !mcsema_real_eip !42
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !42
  %256 = load i64, i64* %255, !mcsema_real_eip !42
  store i64 %256, i64* %XAX, !mcsema_real_eip !42
  %RAX_val.79 = load i64, i64* %XAX, !mcsema_real_eip !43
  %257 = add i64 %RAX_val.79, 4, !mcsema_real_eip !43
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !43
  %259 = ptrtoint i64* %258 to i64, !mcsema_real_eip !43
  %260 = inttoptr i64 %259 to i32*, !mcsema_real_eip !43
  %261 = load i32, i32* %260, !mcsema_real_eip !43
  %262 = zext i32 %261 to i64, !mcsema_real_eip !43
  store i64 %262, i64* %R8, !mcsema_real_eip !43
  %ESI.80 = bitcast i64* %XSI to i32*, !mcsema_real_eip !44
  %ESI_val.81 = load i32, i32* %ESI.80, !mcsema_real_eip !44
  %R8D.82 = bitcast i64* %R8 to i32*, !mcsema_real_eip !44
  %R8D_val.83 = load i32, i32* %R8D.82, !mcsema_real_eip !44
  %263 = add i32 %R8D_val.83, %ESI_val.81, !mcsema_real_eip !44
  %264 = xor i32 %263, %ESI_val.81, !mcsema_real_eip !44
  %265 = xor i32 %264, %R8D_val.83, !mcsema_real_eip !44
  %266 = and i32 %265, 16, !mcsema_real_eip !44
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !44
  store i1 %267, i1* %AF, !mcsema_real_eip !44
  %268 = lshr i32 %263, 31, !mcsema_real_eip !44
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !44
  store i1 %269, i1* %SF, !mcsema_real_eip !44
  %270 = icmp eq i32 %263, 0, !mcsema_real_eip !44
  store i1 %270, i1* %ZF, !mcsema_real_eip !44
  %271 = xor i32 %ESI_val.81, %R8D_val.83, !mcsema_real_eip !44
  %272 = xor i32 %271, -1, !mcsema_real_eip !44
  %273 = xor i32 %ESI_val.81, %263, !mcsema_real_eip !44
  %274 = and i32 %272, %273, !mcsema_real_eip !44
  %275 = lshr i32 %274, 31, !mcsema_real_eip !44
  %276 = and i32 %275, 1, !mcsema_real_eip !44
  %277 = trunc i32 %276 to i1, !mcsema_real_eip !44
  store i1 %277, i1* %OF, !mcsema_real_eip !44
  %278 = trunc i32 %263 to i8, !mcsema_real_eip !44
  %279 = call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !44
  %280 = trunc i8 %279 to i1, !mcsema_real_eip !44
  %281 = xor i1 %280, true, !mcsema_real_eip !44
  store i1 %281, i1* %PF, !mcsema_real_eip !44
  %282 = icmp ult i32 %263, %ESI_val.81, !mcsema_real_eip !44
  store i1 %282, i1* %CF, !mcsema_real_eip !44
  %283 = zext i32 %263 to i64, !mcsema_real_eip !44
  store i64 %283, i64* %XSI, !mcsema_real_eip !44
  %R11_val.84 = load i64, i64* %R11, !mcsema_real_eip !45
  %284 = add i64 %R11_val.84, 4, !mcsema_real_eip !45
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !45
  %286 = ptrtoint i64* %285 to i64, !mcsema_real_eip !45
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !45
  %288 = load i32, i32* %287, !mcsema_real_eip !45
  %289 = zext i32 %288 to i64, !mcsema_real_eip !45
  store i64 %289, i64* %R8, !mcsema_real_eip !45
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !46
  %290 = add i64 %RBP_val.85, -96, !mcsema_real_eip !46
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !46
  %292 = load i64, i64* %291, !mcsema_real_eip !46
  store i64 %292, i64* %XAX, !mcsema_real_eip !46
  %RAX_val.86 = load i64, i64* %XAX, !mcsema_real_eip !47
  %293 = add i64 %RAX_val.86, 4, !mcsema_real_eip !47
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !47
  %295 = ptrtoint i64* %294 to i64, !mcsema_real_eip !47
  %296 = inttoptr i64 %295 to i32*, !mcsema_real_eip !47
  %297 = load i32, i32* %296, !mcsema_real_eip !47
  %298 = zext i32 %297 to i64, !mcsema_real_eip !47
  store i64 %298, i64* %R9, !mcsema_real_eip !47
  %R8D.87 = bitcast i64* %R8 to i32*, !mcsema_real_eip !48
  %R8D_val.88 = load i32, i32* %R8D.87, !mcsema_real_eip !48
  %R9D.89 = bitcast i64* %R9 to i32*, !mcsema_real_eip !48
  %R9D_val.90 = load i32, i32* %R9D.89, !mcsema_real_eip !48
  %299 = add i32 %R9D_val.90, %R8D_val.88, !mcsema_real_eip !48
  %300 = xor i32 %299, %R8D_val.88, !mcsema_real_eip !48
  %301 = xor i32 %300, %R9D_val.90, !mcsema_real_eip !48
  %302 = and i32 %301, 16, !mcsema_real_eip !48
  %303 = icmp ne i32 %302, 0, !mcsema_real_eip !48
  store i1 %303, i1* %AF, !mcsema_real_eip !48
  %304 = lshr i32 %299, 31, !mcsema_real_eip !48
  %305 = trunc i32 %304 to i1, !mcsema_real_eip !48
  store i1 %305, i1* %SF, !mcsema_real_eip !48
  %306 = icmp eq i32 %299, 0, !mcsema_real_eip !48
  store i1 %306, i1* %ZF, !mcsema_real_eip !48
  %307 = xor i32 %R8D_val.88, %R9D_val.90, !mcsema_real_eip !48
  %308 = xor i32 %307, -1, !mcsema_real_eip !48
  %309 = xor i32 %R8D_val.88, %299, !mcsema_real_eip !48
  %310 = and i32 %308, %309, !mcsema_real_eip !48
  %311 = lshr i32 %310, 31, !mcsema_real_eip !48
  %312 = and i32 %311, 1, !mcsema_real_eip !48
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !48
  store i1 %313, i1* %OF, !mcsema_real_eip !48
  %314 = trunc i32 %299 to i8, !mcsema_real_eip !48
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !48
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !48
  %317 = xor i1 %316, true, !mcsema_real_eip !48
  store i1 %317, i1* %PF, !mcsema_real_eip !48
  %318 = icmp ult i32 %299, %R8D_val.88, !mcsema_real_eip !48
  store i1 %318, i1* %CF, !mcsema_real_eip !48
  %319 = zext i32 %299 to i64, !mcsema_real_eip !48
  store i64 %319, i64* %R8, !mcsema_real_eip !48
  %RBP_val.91 = load i64, i64* %XBP, !mcsema_real_eip !49
  %320 = add i64 %RBP_val.91, -104, !mcsema_real_eip !49
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !49
  %322 = load i64, i64* %321, !mcsema_real_eip !49
  store i64 %322, i64* %XAX, !mcsema_real_eip !49
  %RAX_val.92 = load i64, i64* %XAX, !mcsema_real_eip !50
  %323 = add i64 %RAX_val.92, 4, !mcsema_real_eip !50
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !50
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !50
  %326 = inttoptr i64 %325 to i32*, !mcsema_real_eip !50
  %327 = load i32, i32* %326, !mcsema_real_eip !50
  %328 = zext i32 %327 to i64, !mcsema_real_eip !50
  store i64 %328, i64* %R9, !mcsema_real_eip !50
  %R8D.93 = bitcast i64* %R8 to i32*, !mcsema_real_eip !51
  %R8D_val.94 = load i32, i32* %R8D.93, !mcsema_real_eip !51
  %R9D.95 = bitcast i64* %R9 to i32*, !mcsema_real_eip !51
  %R9D_val.96 = load i32, i32* %R9D.95, !mcsema_real_eip !51
  %329 = add i32 %R9D_val.96, %R8D_val.94, !mcsema_real_eip !51
  %330 = xor i32 %329, %R8D_val.94, !mcsema_real_eip !51
  %331 = xor i32 %330, %R9D_val.96, !mcsema_real_eip !51
  %332 = and i32 %331, 16, !mcsema_real_eip !51
  %333 = icmp ne i32 %332, 0, !mcsema_real_eip !51
  store i1 %333, i1* %AF, !mcsema_real_eip !51
  %334 = lshr i32 %329, 31, !mcsema_real_eip !51
  %335 = trunc i32 %334 to i1, !mcsema_real_eip !51
  store i1 %335, i1* %SF, !mcsema_real_eip !51
  %336 = icmp eq i32 %329, 0, !mcsema_real_eip !51
  store i1 %336, i1* %ZF, !mcsema_real_eip !51
  %337 = xor i32 %R8D_val.94, %R9D_val.96, !mcsema_real_eip !51
  %338 = xor i32 %337, -1, !mcsema_real_eip !51
  %339 = xor i32 %R8D_val.94, %329, !mcsema_real_eip !51
  %340 = and i32 %338, %339, !mcsema_real_eip !51
  %341 = lshr i32 %340, 31, !mcsema_real_eip !51
  %342 = and i32 %341, 1, !mcsema_real_eip !51
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !51
  store i1 %343, i1* %OF, !mcsema_real_eip !51
  %344 = trunc i32 %329 to i8, !mcsema_real_eip !51
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !51
  %346 = trunc i8 %345 to i1, !mcsema_real_eip !51
  %347 = xor i1 %346, true, !mcsema_real_eip !51
  store i1 %347, i1* %PF, !mcsema_real_eip !51
  %348 = icmp ult i32 %329, %R8D_val.94, !mcsema_real_eip !51
  store i1 %348, i1* %CF, !mcsema_real_eip !51
  %349 = zext i32 %329 to i64, !mcsema_real_eip !51
  store i64 %349, i64* %R8, !mcsema_real_eip !51
  %ESI.97 = bitcast i64* %XSI to i32*, !mcsema_real_eip !52
  %ESI_val.98 = load i32, i32* %ESI.97, !mcsema_real_eip !52
  %R8D.99 = bitcast i64* %R8 to i32*, !mcsema_real_eip !52
  %R8D_val.100 = load i32, i32* %R8D.99, !mcsema_real_eip !52
  %350 = add i32 %R8D_val.100, %ESI_val.98, !mcsema_real_eip !52
  %351 = xor i32 %350, %ESI_val.98, !mcsema_real_eip !52
  %352 = xor i32 %351, %R8D_val.100, !mcsema_real_eip !52
  %353 = and i32 %352, 16, !mcsema_real_eip !52
  %354 = icmp ne i32 %353, 0, !mcsema_real_eip !52
  store i1 %354, i1* %AF, !mcsema_real_eip !52
  %355 = lshr i32 %350, 31, !mcsema_real_eip !52
  %356 = trunc i32 %355 to i1, !mcsema_real_eip !52
  store i1 %356, i1* %SF, !mcsema_real_eip !52
  %357 = icmp eq i32 %350, 0, !mcsema_real_eip !52
  store i1 %357, i1* %ZF, !mcsema_real_eip !52
  %358 = xor i32 %ESI_val.98, %R8D_val.100, !mcsema_real_eip !52
  %359 = xor i32 %358, -1, !mcsema_real_eip !52
  %360 = xor i32 %ESI_val.98, %350, !mcsema_real_eip !52
  %361 = and i32 %359, %360, !mcsema_real_eip !52
  %362 = lshr i32 %361, 31, !mcsema_real_eip !52
  %363 = and i32 %362, 1, !mcsema_real_eip !52
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !52
  store i1 %364, i1* %OF, !mcsema_real_eip !52
  %365 = trunc i32 %350 to i8, !mcsema_real_eip !52
  %366 = call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !52
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !52
  %368 = xor i1 %367, true, !mcsema_real_eip !52
  store i1 %368, i1* %PF, !mcsema_real_eip !52
  %369 = icmp ult i32 %350, %ESI_val.98, !mcsema_real_eip !52
  store i1 %369, i1* %CF, !mcsema_real_eip !52
  %370 = zext i32 %350 to i64, !mcsema_real_eip !52
  store i64 %370, i64* %XSI, !mcsema_real_eip !52
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !53
  %371 = add i64 %RBP_val.101, -116, !mcsema_real_eip !53
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !53
  %ESI.102 = bitcast i64* %XSI to i32*, !mcsema_real_eip !53
  %ESI_val.103 = load i32, i32* %ESI.102, !mcsema_real_eip !53
  %373 = ptrtoint i64* %372 to i64, !mcsema_real_eip !53
  %374 = inttoptr i64 %373 to i32*, !mcsema_real_eip !53
  store i32 %ESI_val.103, i32* %374, !mcsema_real_eip !53
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !54
  %375 = add i64 %RBP_val.104, -32, !mcsema_real_eip !54
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !54
  %377 = ptrtoint i64* %376 to i64, !mcsema_real_eip !54
  %378 = inttoptr i64 %377 to i32*, !mcsema_real_eip !54
  %379 = load i32, i32* %378, !mcsema_real_eip !54
  %380 = zext i32 %379 to i64, !mcsema_real_eip !54
  store i64 %380, i64* %XSI, !mcsema_real_eip !54
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !55
  %381 = add i64 %RBP_val.105, -64, !mcsema_real_eip !55
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !55
  %383 = load i64, i64* %382, !mcsema_real_eip !55
  store i64 %383, i64* %XAX, !mcsema_real_eip !55
  %RAX_val.106 = load i64, i64* %XAX, !mcsema_real_eip !56
  %384 = add i64 %RAX_val.106, 8, !mcsema_real_eip !56
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !56
  %386 = ptrtoint i64* %385 to i64, !mcsema_real_eip !56
  %387 = inttoptr i64 %386 to i32*, !mcsema_real_eip !56
  %388 = load i32, i32* %387, !mcsema_real_eip !56
  %389 = zext i32 %388 to i64, !mcsema_real_eip !56
  store i64 %389, i64* %R8, !mcsema_real_eip !56
  %ESI.107 = bitcast i64* %XSI to i32*, !mcsema_real_eip !57
  %ESI_val.108 = load i32, i32* %ESI.107, !mcsema_real_eip !57
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !57
  %R8D_val.110 = load i32, i32* %R8D.109, !mcsema_real_eip !57
  %390 = add i32 %R8D_val.110, %ESI_val.108, !mcsema_real_eip !57
  %391 = xor i32 %390, %ESI_val.108, !mcsema_real_eip !57
  %392 = xor i32 %391, %R8D_val.110, !mcsema_real_eip !57
  %393 = and i32 %392, 16, !mcsema_real_eip !57
  %394 = icmp ne i32 %393, 0, !mcsema_real_eip !57
  store i1 %394, i1* %AF, !mcsema_real_eip !57
  %395 = lshr i32 %390, 31, !mcsema_real_eip !57
  %396 = trunc i32 %395 to i1, !mcsema_real_eip !57
  store i1 %396, i1* %SF, !mcsema_real_eip !57
  %397 = icmp eq i32 %390, 0, !mcsema_real_eip !57
  store i1 %397, i1* %ZF, !mcsema_real_eip !57
  %398 = xor i32 %ESI_val.108, %R8D_val.110, !mcsema_real_eip !57
  %399 = xor i32 %398, -1, !mcsema_real_eip !57
  %400 = xor i32 %ESI_val.108, %390, !mcsema_real_eip !57
  %401 = and i32 %399, %400, !mcsema_real_eip !57
  %402 = lshr i32 %401, 31, !mcsema_real_eip !57
  %403 = and i32 %402, 1, !mcsema_real_eip !57
  %404 = trunc i32 %403 to i1, !mcsema_real_eip !57
  store i1 %404, i1* %OF, !mcsema_real_eip !57
  %405 = trunc i32 %390 to i8, !mcsema_real_eip !57
  %406 = call i8 @llvm.ctpop.i8(i8 %405), !mcsema_real_eip !57
  %407 = trunc i8 %406 to i1, !mcsema_real_eip !57
  %408 = xor i1 %407, true, !mcsema_real_eip !57
  store i1 %408, i1* %PF, !mcsema_real_eip !57
  %409 = icmp ult i32 %390, %ESI_val.108, !mcsema_real_eip !57
  store i1 %409, i1* %CF, !mcsema_real_eip !57
  %410 = zext i32 %390 to i64, !mcsema_real_eip !57
  store i64 %410, i64* %XSI, !mcsema_real_eip !57
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !58
  %411 = add i64 %RBP_val.111, -72, !mcsema_real_eip !58
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !58
  %413 = load i64, i64* %412, !mcsema_real_eip !58
  store i64 %413, i64* %XAX, !mcsema_real_eip !58
  %RAX_val.112 = load i64, i64* %XAX, !mcsema_real_eip !59
  %414 = add i64 %RAX_val.112, 8, !mcsema_real_eip !59
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !59
  %416 = ptrtoint i64* %415 to i64, !mcsema_real_eip !59
  %417 = inttoptr i64 %416 to i32*, !mcsema_real_eip !59
  %418 = load i32, i32* %417, !mcsema_real_eip !59
  %419 = zext i32 %418 to i64, !mcsema_real_eip !59
  store i64 %419, i64* %R8, !mcsema_real_eip !59
  %ESI.113 = bitcast i64* %XSI to i32*, !mcsema_real_eip !60
  %ESI_val.114 = load i32, i32* %ESI.113, !mcsema_real_eip !60
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !60
  %R8D_val.116 = load i32, i32* %R8D.115, !mcsema_real_eip !60
  %420 = add i32 %R8D_val.116, %ESI_val.114, !mcsema_real_eip !60
  %421 = xor i32 %420, %ESI_val.114, !mcsema_real_eip !60
  %422 = xor i32 %421, %R8D_val.116, !mcsema_real_eip !60
  %423 = and i32 %422, 16, !mcsema_real_eip !60
  %424 = icmp ne i32 %423, 0, !mcsema_real_eip !60
  store i1 %424, i1* %AF, !mcsema_real_eip !60
  %425 = lshr i32 %420, 31, !mcsema_real_eip !60
  %426 = trunc i32 %425 to i1, !mcsema_real_eip !60
  store i1 %426, i1* %SF, !mcsema_real_eip !60
  %427 = icmp eq i32 %420, 0, !mcsema_real_eip !60
  store i1 %427, i1* %ZF, !mcsema_real_eip !60
  %428 = xor i32 %ESI_val.114, %R8D_val.116, !mcsema_real_eip !60
  %429 = xor i32 %428, -1, !mcsema_real_eip !60
  %430 = xor i32 %ESI_val.114, %420, !mcsema_real_eip !60
  %431 = and i32 %429, %430, !mcsema_real_eip !60
  %432 = lshr i32 %431, 31, !mcsema_real_eip !60
  %433 = and i32 %432, 1, !mcsema_real_eip !60
  %434 = trunc i32 %433 to i1, !mcsema_real_eip !60
  store i1 %434, i1* %OF, !mcsema_real_eip !60
  %435 = trunc i32 %420 to i8, !mcsema_real_eip !60
  %436 = call i8 @llvm.ctpop.i8(i8 %435), !mcsema_real_eip !60
  %437 = trunc i8 %436 to i1, !mcsema_real_eip !60
  %438 = xor i1 %437, true, !mcsema_real_eip !60
  store i1 %438, i1* %PF, !mcsema_real_eip !60
  %439 = icmp ult i32 %420, %ESI_val.114, !mcsema_real_eip !60
  store i1 %439, i1* %CF, !mcsema_real_eip !60
  %440 = zext i32 %420 to i64, !mcsema_real_eip !60
  store i64 %440, i64* %XSI, !mcsema_real_eip !60
  %R11_val.117 = load i64, i64* %R11, !mcsema_real_eip !61
  %441 = add i64 %R11_val.117, 8, !mcsema_real_eip !61
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !61
  %443 = ptrtoint i64* %442 to i64, !mcsema_real_eip !61
  %444 = inttoptr i64 %443 to i32*, !mcsema_real_eip !61
  %445 = load i32, i32* %444, !mcsema_real_eip !61
  %446 = zext i32 %445 to i64, !mcsema_real_eip !61
  store i64 %446, i64* %R8, !mcsema_real_eip !61
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !62
  %447 = add i64 %RBP_val.118, -96, !mcsema_real_eip !62
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !62
  %449 = load i64, i64* %448, !mcsema_real_eip !62
  store i64 %449, i64* %XAX, !mcsema_real_eip !62
  %RAX_val.119 = load i64, i64* %XAX, !mcsema_real_eip !63
  %450 = add i64 %RAX_val.119, 8, !mcsema_real_eip !63
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !63
  %452 = ptrtoint i64* %451 to i64, !mcsema_real_eip !63
  %453 = inttoptr i64 %452 to i32*, !mcsema_real_eip !63
  %454 = load i32, i32* %453, !mcsema_real_eip !63
  %455 = zext i32 %454 to i64, !mcsema_real_eip !63
  store i64 %455, i64* %R9, !mcsema_real_eip !63
  %R8D.120 = bitcast i64* %R8 to i32*, !mcsema_real_eip !64
  %R8D_val.121 = load i32, i32* %R8D.120, !mcsema_real_eip !64
  %R9D.122 = bitcast i64* %R9 to i32*, !mcsema_real_eip !64
  %R9D_val.123 = load i32, i32* %R9D.122, !mcsema_real_eip !64
  %456 = add i32 %R9D_val.123, %R8D_val.121, !mcsema_real_eip !64
  %457 = xor i32 %456, %R8D_val.121, !mcsema_real_eip !64
  %458 = xor i32 %457, %R9D_val.123, !mcsema_real_eip !64
  %459 = and i32 %458, 16, !mcsema_real_eip !64
  %460 = icmp ne i32 %459, 0, !mcsema_real_eip !64
  store i1 %460, i1* %AF, !mcsema_real_eip !64
  %461 = lshr i32 %456, 31, !mcsema_real_eip !64
  %462 = trunc i32 %461 to i1, !mcsema_real_eip !64
  store i1 %462, i1* %SF, !mcsema_real_eip !64
  %463 = icmp eq i32 %456, 0, !mcsema_real_eip !64
  store i1 %463, i1* %ZF, !mcsema_real_eip !64
  %464 = xor i32 %R8D_val.121, %R9D_val.123, !mcsema_real_eip !64
  %465 = xor i32 %464, -1, !mcsema_real_eip !64
  %466 = xor i32 %R8D_val.121, %456, !mcsema_real_eip !64
  %467 = and i32 %465, %466, !mcsema_real_eip !64
  %468 = lshr i32 %467, 31, !mcsema_real_eip !64
  %469 = and i32 %468, 1, !mcsema_real_eip !64
  %470 = trunc i32 %469 to i1, !mcsema_real_eip !64
  store i1 %470, i1* %OF, !mcsema_real_eip !64
  %471 = trunc i32 %456 to i8, !mcsema_real_eip !64
  %472 = call i8 @llvm.ctpop.i8(i8 %471), !mcsema_real_eip !64
  %473 = trunc i8 %472 to i1, !mcsema_real_eip !64
  %474 = xor i1 %473, true, !mcsema_real_eip !64
  store i1 %474, i1* %PF, !mcsema_real_eip !64
  %475 = icmp ult i32 %456, %R8D_val.121, !mcsema_real_eip !64
  store i1 %475, i1* %CF, !mcsema_real_eip !64
  %476 = zext i32 %456 to i64, !mcsema_real_eip !64
  store i64 %476, i64* %R8, !mcsema_real_eip !64
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !65
  %477 = add i64 %RBP_val.124, -104, !mcsema_real_eip !65
  %478 = inttoptr i64 %477 to i64*, !mcsema_real_eip !65
  %479 = load i64, i64* %478, !mcsema_real_eip !65
  store i64 %479, i64* %XAX, !mcsema_real_eip !65
  %RAX_val.125 = load i64, i64* %XAX, !mcsema_real_eip !66
  %480 = add i64 %RAX_val.125, 8, !mcsema_real_eip !66
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !66
  %482 = ptrtoint i64* %481 to i64, !mcsema_real_eip !66
  %483 = inttoptr i64 %482 to i32*, !mcsema_real_eip !66
  %484 = load i32, i32* %483, !mcsema_real_eip !66
  %485 = zext i32 %484 to i64, !mcsema_real_eip !66
  store i64 %485, i64* %R9, !mcsema_real_eip !66
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !67
  %R8D_val.127 = load i32, i32* %R8D.126, !mcsema_real_eip !67
  %R9D.128 = bitcast i64* %R9 to i32*, !mcsema_real_eip !67
  %R9D_val.129 = load i32, i32* %R9D.128, !mcsema_real_eip !67
  %486 = add i32 %R9D_val.129, %R8D_val.127, !mcsema_real_eip !67
  %487 = xor i32 %486, %R8D_val.127, !mcsema_real_eip !67
  %488 = xor i32 %487, %R9D_val.129, !mcsema_real_eip !67
  %489 = and i32 %488, 16, !mcsema_real_eip !67
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !67
  store i1 %490, i1* %AF, !mcsema_real_eip !67
  %491 = lshr i32 %486, 31, !mcsema_real_eip !67
  %492 = trunc i32 %491 to i1, !mcsema_real_eip !67
  store i1 %492, i1* %SF, !mcsema_real_eip !67
  %493 = icmp eq i32 %486, 0, !mcsema_real_eip !67
  store i1 %493, i1* %ZF, !mcsema_real_eip !67
  %494 = xor i32 %R8D_val.127, %R9D_val.129, !mcsema_real_eip !67
  %495 = xor i32 %494, -1, !mcsema_real_eip !67
  %496 = xor i32 %R8D_val.127, %486, !mcsema_real_eip !67
  %497 = and i32 %495, %496, !mcsema_real_eip !67
  %498 = lshr i32 %497, 31, !mcsema_real_eip !67
  %499 = and i32 %498, 1, !mcsema_real_eip !67
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !67
  store i1 %500, i1* %OF, !mcsema_real_eip !67
  %501 = trunc i32 %486 to i8, !mcsema_real_eip !67
  %502 = call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !67
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !67
  %504 = xor i1 %503, true, !mcsema_real_eip !67
  store i1 %504, i1* %PF, !mcsema_real_eip !67
  %505 = icmp ult i32 %486, %R8D_val.127, !mcsema_real_eip !67
  store i1 %505, i1* %CF, !mcsema_real_eip !67
  %506 = zext i32 %486 to i64, !mcsema_real_eip !67
  store i64 %506, i64* %R8, !mcsema_real_eip !67
  %ESI.130 = bitcast i64* %XSI to i32*, !mcsema_real_eip !68
  %ESI_val.131 = load i32, i32* %ESI.130, !mcsema_real_eip !68
  %R8D.132 = bitcast i64* %R8 to i32*, !mcsema_real_eip !68
  %R8D_val.133 = load i32, i32* %R8D.132, !mcsema_real_eip !68
  %507 = add i32 %R8D_val.133, %ESI_val.131, !mcsema_real_eip !68
  %508 = xor i32 %507, %ESI_val.131, !mcsema_real_eip !68
  %509 = xor i32 %508, %R8D_val.133, !mcsema_real_eip !68
  %510 = and i32 %509, 16, !mcsema_real_eip !68
  %511 = icmp ne i32 %510, 0, !mcsema_real_eip !68
  store i1 %511, i1* %AF, !mcsema_real_eip !68
  %512 = lshr i32 %507, 31, !mcsema_real_eip !68
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !68
  store i1 %513, i1* %SF, !mcsema_real_eip !68
  %514 = icmp eq i32 %507, 0, !mcsema_real_eip !68
  store i1 %514, i1* %ZF, !mcsema_real_eip !68
  %515 = xor i32 %ESI_val.131, %R8D_val.133, !mcsema_real_eip !68
  %516 = xor i32 %515, -1, !mcsema_real_eip !68
  %517 = xor i32 %ESI_val.131, %507, !mcsema_real_eip !68
  %518 = and i32 %516, %517, !mcsema_real_eip !68
  %519 = lshr i32 %518, 31, !mcsema_real_eip !68
  %520 = and i32 %519, 1, !mcsema_real_eip !68
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !68
  store i1 %521, i1* %OF, !mcsema_real_eip !68
  %522 = trunc i32 %507 to i8, !mcsema_real_eip !68
  %523 = call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !68
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !68
  %525 = xor i1 %524, true, !mcsema_real_eip !68
  store i1 %525, i1* %PF, !mcsema_real_eip !68
  %526 = icmp ult i32 %507, %ESI_val.131, !mcsema_real_eip !68
  store i1 %526, i1* %CF, !mcsema_real_eip !68
  %527 = zext i32 %507 to i64, !mcsema_real_eip !68
  store i64 %527, i64* %XSI, !mcsema_real_eip !68
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !69
  %528 = add i64 %RBP_val.134, -112, !mcsema_real_eip !69
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !69
  %ESI.135 = bitcast i64* %XSI to i32*, !mcsema_real_eip !69
  %ESI_val.136 = load i32, i32* %ESI.135, !mcsema_real_eip !69
  %530 = ptrtoint i64* %529 to i64, !mcsema_real_eip !69
  %531 = inttoptr i64 %530 to i32*, !mcsema_real_eip !69
  store i32 %ESI_val.136, i32* %531, !mcsema_real_eip !69
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !70
  %532 = add i64 %RBP_val.137, -112, !mcsema_real_eip !70
  %533 = inttoptr i64 %532 to i64*, !mcsema_real_eip !70
  %534 = ptrtoint i64* %533 to i64, !mcsema_real_eip !70
  %535 = inttoptr i64 %534 to i32*, !mcsema_real_eip !70
  %536 = load i32, i32* %535, !mcsema_real_eip !70
  %537 = zext i32 %536 to i64, !mcsema_real_eip !70
  store i64 %537, i64* %XSI, !mcsema_real_eip !70
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !71
  %538 = add i64 %RBP_val.138, -16, !mcsema_real_eip !71
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !71
  %ESI.139 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.140 = load i32, i32* %ESI.139, !mcsema_real_eip !71
  %540 = ptrtoint i64* %539 to i64, !mcsema_real_eip !71
  %541 = inttoptr i64 %540 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.140, i32* %541, !mcsema_real_eip !71
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !72
  %542 = add i64 %RBP_val.141, -120, !mcsema_real_eip !72
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !72
  %544 = load i64, i64* %543, !mcsema_real_eip !72
  store i64 %544, i64* %XAX, !mcsema_real_eip !72
  %RBP_val.142 = load i64, i64* %XBP, !mcsema_real_eip !73
  %545 = add i64 %RBP_val.142, -24, !mcsema_real_eip !73
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !73
  %RAX_val.143 = load i64, i64* %XAX, !mcsema_real_eip !73
  store i64 %RAX_val.143, i64* %546, !mcsema_real_eip !73
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !74
  %547 = add i64 %RBP_val.144, -16, !mcsema_real_eip !74
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !74
  %549 = ptrtoint i64* %548 to i64, !mcsema_real_eip !74
  %550 = inttoptr i64 %549 to i32*, !mcsema_real_eip !74
  %551 = load i32, i32* %550, !mcsema_real_eip !74
  %552 = zext i32 %551 to i64, !mcsema_real_eip !74
  store i64 %552, i64* %XSI, !mcsema_real_eip !74
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !75
  %553 = add i64 %RBP_val.145, -128, !mcsema_real_eip !75
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !75
  %ESI.146 = bitcast i64* %XSI to i32*, !mcsema_real_eip !75
  %ESI_val.147 = load i32, i32* %ESI.146, !mcsema_real_eip !75
  %555 = ptrtoint i64* %554 to i64, !mcsema_real_eip !75
  %556 = inttoptr i64 %555 to i32*, !mcsema_real_eip !75
  store i32 %ESI_val.147, i32* %556, !mcsema_real_eip !75
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !76
  %557 = add i64 %RBP_val.148, -24, !mcsema_real_eip !76
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !76
  %559 = load i64, i64* %558, !mcsema_real_eip !76
  store i64 %559, i64* %XAX, !mcsema_real_eip !76
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !77
  %560 = add i64 %RBP_val.149, -136, !mcsema_real_eip !77
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !77
  %RAX_val.150 = load i64, i64* %XAX, !mcsema_real_eip !77
  store i64 %RAX_val.150, i64* %561, !mcsema_real_eip !77
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !78
  %562 = add i64 %RBP_val.151, -136, !mcsema_real_eip !78
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !78
  %564 = load i64, i64* %563, !mcsema_real_eip !78
  store i64 %564, i64* %XAX, !mcsema_real_eip !78
  %RBP_val.152 = load i64, i64* %XBP, !mcsema_real_eip !79
  %565 = add i64 %RBP_val.152, -128, !mcsema_real_eip !79
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !79
  %567 = ptrtoint i64* %566 to i64, !mcsema_real_eip !79
  %568 = inttoptr i64 %567 to i32*, !mcsema_real_eip !79
  %569 = load i32, i32* %568, !mcsema_real_eip !79
  %570 = zext i32 %569 to i64, !mcsema_real_eip !79
  store i64 %570, i64* %XDX, !mcsema_real_eip !79
  %RSP_val.153 = load i64, i64* %XSP, !mcsema_real_eip !80
  %571 = inttoptr i64 %RSP_val.153 to i64*, !mcsema_real_eip !80
  %572 = load i64, i64* %571, !mcsema_real_eip !80
  store i64 %572, i64* %XBX, !mcsema_real_eip !80
  %573 = add i64 %RSP_val.153, 8, !mcsema_real_eip !80
  store i64 %573, i64* %XSP, !mcsema_real_eip !80
  %RSP_val.154 = load i64, i64* %XSP, !mcsema_real_eip !81
  %574 = inttoptr i64 %RSP_val.154 to i64*, !mcsema_real_eip !81
  %575 = load i64, i64* %574, !mcsema_real_eip !81
  store i64 %575, i64* %XBP, !mcsema_real_eip !81
  %576 = add i64 %RSP_val.154, 8, !mcsema_real_eip !81
  store i64 %576, i64* %XSP, !mcsema_real_eip !81
  %RSP_val.155 = load i64, i64* %XSP, !mcsema_real_eip !82
  %577 = add i64 %RSP_val.155, 8, !mcsema_real_eip !82
  %578 = inttoptr i64 %RSP_val.155 to i64*, !mcsema_real_eip !82
  %579 = load i64, i64* %578, !mcsema_real_eip !82
  store i64 %579, i64* %XIP, !mcsema_real_eip !82
  store i64 %577, i64* %XSP, !mcsema_real_eip !82
  ret void, !mcsema_real_eip !82
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_120(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !83
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !83
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !83
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !83
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !83
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !83
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !83
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !83
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !83
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !83
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !83
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !83
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !83
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !83
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !83
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !83
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !83
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !83
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !83
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !83
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !83
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !83
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !83
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !83
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !83
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !83
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !83
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !83
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !83
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !83
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !83
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !83
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !83
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !83
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !83
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !83
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !83
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !83
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !83
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !83
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !83
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !83
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !83
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !83
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !83
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !83
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !83
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !83
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !83
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !83
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !83
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !83
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !83
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !83
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !83
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !83
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !83
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !83
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !83
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !83
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !83
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !83
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !83
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !83
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !83
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !83
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !83
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !83
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !83
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !83
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !83
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !83
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !83
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !83
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !83
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !83
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !83
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !83
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !83
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !83
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !83
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !83
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !83
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !83
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !83
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !83
  br label %block_0x120, !mcsema_real_eip !83

block_0x120:                                      ; preds = %entry
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !83
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !83
  %1 = sub i64 %RSP_val.157, 8, !mcsema_real_eip !83
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !83
  store i64 %RBP_val.156, i64* %2, !mcsema_real_eip !83
  store i64 %1, i64* %XSP, !mcsema_real_eip !83
  %RSP_val.158 = load i64, i64* %XSP, !mcsema_real_eip !84
  store i64 %RSP_val.158, i64* %XBP, !mcsema_real_eip !84
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !85
  %3 = sub i64 %RSP_val.159, 144, !mcsema_real_eip !85
  %4 = xor i64 %3, %RSP_val.159, !mcsema_real_eip !85
  %5 = xor i64 %4, 144, !mcsema_real_eip !85
  %6 = and i64 %5, 16, !mcsema_real_eip !85
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !85
  store i1 %7, i1* %AF, !mcsema_real_eip !85
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !85
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !85
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !85
  %11 = xor i1 %10, true, !mcsema_real_eip !85
  store i1 %11, i1* %PF, !mcsema_real_eip !85
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !85
  store i1 %12, i1* %ZF, !mcsema_real_eip !85
  %13 = lshr i64 %3, 63, !mcsema_real_eip !85
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !85
  store i1 %14, i1* %SF, !mcsema_real_eip !85
  %15 = icmp ult i64 %RSP_val.159, 144, !mcsema_real_eip !85
  store i1 %15, i1* %CF, !mcsema_real_eip !85
  %16 = xor i64 %RSP_val.159, 144, !mcsema_real_eip !85
  %17 = xor i64 %RSP_val.159, %3, !mcsema_real_eip !85
  %18 = and i64 %16, %17, !mcsema_real_eip !85
  %19 = lshr i64 %18, 63, !mcsema_real_eip !85
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !85
  store i1 %20, i1* %OF, !mcsema_real_eip !85
  store i64 %3, i64* %XSP, !mcsema_real_eip !85
  %21 = getelementptr %0, %0* @data_0x221, i64 0, i32 0, !mcsema_real_eip !86
  %22 = ptrtoint [4 x i8]* %21 to i64, !mcsema_real_eip !86
  %23 = add i64 %22, 0, !mcsema_real_eip !86
  store i64 %23, i64* %XDI, !mcsema_real_eip !86
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !87
  %24 = add i64 %RBP_val.160, -4, !mcsema_real_eip !87
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !87
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !87
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !87
  store i32 0, i32* %27, !mcsema_real_eip !87
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !88
  %28 = add i64 %RBP_val.161, -16, !mcsema_real_eip !88
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !88
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !88
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !88
  store i32 10, i32* %31, !mcsema_real_eip !88
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !89
  %32 = add i64 %RBP_val.162, -12, !mcsema_real_eip !89
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !89
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !89
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !89
  store i32 10, i32* %35, !mcsema_real_eip !89
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !90
  %36 = add i64 %RBP_val.163, -8, !mcsema_real_eip !90
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !90
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !90
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !90
  store i32 10, i32* %39, !mcsema_real_eip !90
  %40 = zext i32 24 to i64, !mcsema_real_eip !91
  store i64 %40, i64* %XAX, !mcsema_real_eip !91
  %EAX.164 = bitcast i64* %XAX to i32*, !mcsema_real_eip !92
  %EAX_val.165 = load i32, i32* %EAX.164, !mcsema_real_eip !92
  %41 = zext i32 %EAX_val.165 to i64, !mcsema_real_eip !92
  store i64 %41, i64* %XCX, !mcsema_real_eip !92
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !93
  %42 = add i64 %RBP_val.166, -88, !mcsema_real_eip !93
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !93
  %RDI_val.167 = load i64, i64* %XDI, !mcsema_real_eip !93
  store i64 %RDI_val.167, i64* %43, !mcsema_real_eip !93
  %RCX_val.168 = load i64, i64* %XCX, !mcsema_real_eip !94
  store i64 %RCX_val.168, i64* %XDI, !mcsema_real_eip !94
  %RDI_val.169 = load i64, i64* %XDI, !mcsema_real_eip !95
  %RSP_val.170 = load i64, i64* %XSP, !mcsema_real_eip !95
  %44 = sub i64 %RSP_val.170, 8, !mcsema_real_eip !95
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %45, !mcsema_real_eip !95
  store i64 %44, i64* %XSP, !mcsema_real_eip !95
  %46 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.169), !mcsema_real_eip !95
  store i64 %46, i64* %XAX, !mcsema_real_eip !95
  %RBP_val.171 = load i64, i64* %XBP, !mcsema_real_eip !96
  %47 = add i64 %RBP_val.171, -24, !mcsema_real_eip !96
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !96
  %RAX_val.172 = load i64, i64* %XAX, !mcsema_real_eip !96
  store i64 %RAX_val.172, i64* %48, !mcsema_real_eip !96
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !97
  %49 = add i64 %RBP_val.173, -24, !mcsema_real_eip !97
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !97
  %51 = load i64, i64* %50, !mcsema_real_eip !97
  store i64 %51, i64* %XAX, !mcsema_real_eip !97
  %RAX_val.174 = load i64, i64* %XAX, !mcsema_real_eip !98
  %52 = add i64 %RAX_val.174, 0, !mcsema_real_eip !98
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !98
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !98
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !98
  store i32 5, i32* %55, !mcsema_real_eip !98
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !99
  %56 = add i64 %RBP_val.175, -24, !mcsema_real_eip !99
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !99
  %58 = load i64, i64* %57, !mcsema_real_eip !99
  store i64 %58, i64* %XAX, !mcsema_real_eip !99
  %RAX_val.176 = load i64, i64* %XAX, !mcsema_real_eip !100
  %59 = add i64 %RAX_val.176, 4, !mcsema_real_eip !100
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !100
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !100
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !100
  store i32 5, i32* %62, !mcsema_real_eip !100
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !101
  %63 = add i64 %RBP_val.177, -24, !mcsema_real_eip !101
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !101
  %65 = load i64, i64* %64, !mcsema_real_eip !101
  store i64 %65, i64* %XAX, !mcsema_real_eip !101
  %RAX_val.178 = load i64, i64* %XAX, !mcsema_real_eip !102
  %66 = add i64 %RAX_val.178, 8, !mcsema_real_eip !102
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !102
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !102
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !102
  store i32 5, i32* %69, !mcsema_real_eip !102
  %RBP_val.179 = load i64, i64* %XBP, !mcsema_real_eip !103
  %70 = add i64 %RBP_val.179, -24, !mcsema_real_eip !103
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !103
  %72 = load i64, i64* %71, !mcsema_real_eip !103
  store i64 %72, i64* %XAX, !mcsema_real_eip !103
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !104
  %73 = add i64 %RBP_val.180, -8, !mcsema_real_eip !104
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !104
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !104
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !104
  %77 = load i32, i32* %76, !mcsema_real_eip !104
  %78 = zext i32 %77 to i64, !mcsema_real_eip !104
  store i64 %78, i64* %XDX, !mcsema_real_eip !104
  %RBP_val.181 = load i64, i64* %XBP, !mcsema_real_eip !105
  %79 = add i64 %RBP_val.181, -48, !mcsema_real_eip !105
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !105
  %EDX.182 = bitcast i64* %XDX to i32*, !mcsema_real_eip !105
  %EDX_val.183 = load i32, i32* %EDX.182, !mcsema_real_eip !105
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !105
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !105
  store i32 %EDX_val.183, i32* %82, !mcsema_real_eip !105
  %RBP_val.184 = load i64, i64* %XBP, !mcsema_real_eip !106
  %83 = add i64 %RBP_val.184, -16, !mcsema_real_eip !106
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !106
  %85 = load i64, i64* %84, !mcsema_real_eip !106
  store i64 %85, i64* %XCX, !mcsema_real_eip !106
  %RBP_val.185 = load i64, i64* %XBP, !mcsema_real_eip !107
  %86 = add i64 %RBP_val.185, -56, !mcsema_real_eip !107
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !107
  %RCX_val.186 = load i64, i64* %XCX, !mcsema_real_eip !107
  store i64 %RCX_val.186, i64* %87, !mcsema_real_eip !107
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !108
  %88 = add i64 %RBP_val.187, -56, !mcsema_real_eip !108
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !108
  %90 = load i64, i64* %89, !mcsema_real_eip !108
  store i64 %90, i64* %XDI, !mcsema_real_eip !108
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !109
  %91 = add i64 %RBP_val.188, -48, !mcsema_real_eip !109
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !109
  %93 = ptrtoint i64* %92 to i64, !mcsema_real_eip !109
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !109
  %95 = load i32, i32* %94, !mcsema_real_eip !109
  %96 = zext i32 %95 to i64, !mcsema_real_eip !109
  store i64 %96, i64* %XSI, !mcsema_real_eip !109
  %RBP_val.189 = load i64, i64* %XBP, !mcsema_real_eip !110
  %97 = add i64 %RBP_val.189, -8, !mcsema_real_eip !110
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !110
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !110
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !110
  %101 = load i32, i32* %100, !mcsema_real_eip !110
  %102 = zext i32 %101 to i64, !mcsema_real_eip !110
  store i64 %102, i64* %XDX, !mcsema_real_eip !110
  %RSP_val.190 = load i64, i64* %XSP, !mcsema_real_eip !111
  store i64 %RSP_val.190, i64* %XCX, !mcsema_real_eip !111
  %RCX_val.191 = load i64, i64* %XCX, !mcsema_real_eip !112
  %103 = add i64 %RCX_val.191, 16, !mcsema_real_eip !112
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !112
  %EDX.192 = bitcast i64* %XDX to i32*, !mcsema_real_eip !112
  %EDX_val.193 = load i32, i32* %EDX.192, !mcsema_real_eip !112
  %105 = ptrtoint i64* %104 to i64, !mcsema_real_eip !112
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !112
  store i32 %EDX_val.193, i32* %106, !mcsema_real_eip !112
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !113
  %107 = add i64 %RBP_val.194, -16, !mcsema_real_eip !113
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !113
  %109 = load i64, i64* %108, !mcsema_real_eip !113
  store i64 %109, i64* %R8, !mcsema_real_eip !113
  %RCX_val.195 = load i64, i64* %XCX, !mcsema_real_eip !114
  %110 = add i64 %RCX_val.195, 8, !mcsema_real_eip !114
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !114
  %R8_val.196 = load i64, i64* %R8, !mcsema_real_eip !114
  store i64 %R8_val.196, i64* %111, !mcsema_real_eip !114
  %RCX_val.197 = load i64, i64* %XCX, !mcsema_real_eip !115
  %112 = add i64 %RCX_val.197, 32, !mcsema_real_eip !115
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !115
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !115
  store i64 %RAX_val.198, i64* %113, !mcsema_real_eip !115
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !116
  %114 = add i64 %RBP_val.199, -16, !mcsema_real_eip !116
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !116
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !116
  store i64 %116, i64* %R8, !mcsema_real_eip !116
  %RCX_val.200 = load i64, i64* %XCX, !mcsema_real_eip !117
  %117 = add i64 %RCX_val.200, 24, !mcsema_real_eip !117
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !117
  %R8_val.201 = load i64, i64* %R8, !mcsema_real_eip !117
  store i64 %R8_val.201, i64* %118, !mcsema_real_eip !117
  %RCX_val.202 = load i64, i64* %XCX, !mcsema_real_eip !118
  %119 = add i64 %RCX_val.202, 0, !mcsema_real_eip !118
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !118
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !118
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !118
  store i32 3, i32* %122, !mcsema_real_eip !118
  %123 = zext i32 1 to i64, !mcsema_real_eip !119
  store i64 %123, i64* %XDX, !mcsema_real_eip !119
  %124 = zext i32 2 to i64, !mcsema_real_eip !120
  store i64 %124, i64* %R9, !mcsema_real_eip !120
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !121
  %125 = add i64 %RBP_val.203, -92, !mcsema_real_eip !121
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !121
  %EDX.204 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.205 = load i32, i32* %EDX.204, !mcsema_real_eip !121
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !121
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !121
  store i32 %EDX_val.205, i32* %128, !mcsema_real_eip !121
  %R8_val.206 = load i64, i64* %R8, !mcsema_real_eip !122
  store i64 %R8_val.206, i64* %XDX, !mcsema_real_eip !122
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !123
  store i64 %RAX_val.207, i64* %XCX, !mcsema_real_eip !123
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !124
  %129 = add i64 %RBP_val.208, -92, !mcsema_real_eip !124
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !124
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !124
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !124
  %133 = load i32, i32* %132, !mcsema_real_eip !124
  %134 = zext i32 %133 to i64, !mcsema_real_eip !124
  store i64 %134, i64* %R8, !mcsema_real_eip !124
  %RSP_val.209 = load i64, i64* %XSP, !mcsema_real_eip !125
  %135 = sub i64 %RSP_val.209, 8, !mcsema_real_eip !125
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !125
  store i64 -4981261766360305936, i64* %136, !mcsema_real_eip !125
  store i64 %135, i64* %XSP, !mcsema_real_eip !125
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !125
  %RBP_val.210 = load i64, i64* %XBP, !mcsema_real_eip !126
  %137 = add i64 %RBP_val.210, -64, !mcsema_real_eip !126
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !126
  %EDX.211 = bitcast i64* %XDX to i32*, !mcsema_real_eip !126
  %EDX_val.212 = load i32, i32* %EDX.211, !mcsema_real_eip !126
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !126
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !126
  store i32 %EDX_val.212, i32* %140, !mcsema_real_eip !126
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !127
  %141 = add i64 %RBP_val.213, -72, !mcsema_real_eip !127
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !127
  %RAX_val.214 = load i64, i64* %XAX, !mcsema_real_eip !127
  store i64 %RAX_val.214, i64* %142, !mcsema_real_eip !127
  %RBP_val.215 = load i64, i64* %XBP, !mcsema_real_eip !128
  %143 = add i64 %RBP_val.215, -72, !mcsema_real_eip !128
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !128
  %145 = load i64, i64* %144, !mcsema_real_eip !128
  store i64 %145, i64* %XAX, !mcsema_real_eip !128
  %RBP_val.216 = load i64, i64* %XBP, !mcsema_real_eip !129
  %146 = add i64 %RBP_val.216, -40, !mcsema_real_eip !129
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !129
  %RAX_val.217 = load i64, i64* %XAX, !mcsema_real_eip !129
  store i64 %RAX_val.217, i64* %147, !mcsema_real_eip !129
  %RBP_val.218 = load i64, i64* %XBP, !mcsema_real_eip !130
  %148 = add i64 %RBP_val.218, -64, !mcsema_real_eip !130
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !130
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !130
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !130
  %152 = load i32, i32* %151, !mcsema_real_eip !130
  %153 = zext i32 %152 to i64, !mcsema_real_eip !130
  store i64 %153, i64* %XDX, !mcsema_real_eip !130
  %RBP_val.219 = load i64, i64* %XBP, !mcsema_real_eip !131
  %154 = add i64 %RBP_val.219, -32, !mcsema_real_eip !131
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !131
  %EDX.220 = bitcast i64* %XDX to i32*, !mcsema_real_eip !131
  %EDX_val.221 = load i32, i32* %EDX.220, !mcsema_real_eip !131
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !131
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !131
  store i32 %EDX_val.221, i32* %157, !mcsema_real_eip !131
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !132
  %158 = add i64 %RBP_val.222, -40, !mcsema_real_eip !132
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !132
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !132
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !132
  %162 = load i32, i32* %161, !mcsema_real_eip !132
  %163 = zext i32 %162 to i64, !mcsema_real_eip !132
  store i64 %163, i64* %XDX, !mcsema_real_eip !132
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !133
  %164 = add i64 %RBP_val.223, -36, !mcsema_real_eip !133
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !133
  %166 = ptrtoint i64* %165 to i64, !mcsema_real_eip !133
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !133
  %168 = load i32, i32* %167, !mcsema_real_eip !133
  %EDX.224 = bitcast i64* %XDX to i32*, !mcsema_real_eip !133
  %EDX_val.225 = load i32, i32* %EDX.224, !mcsema_real_eip !133
  %169 = add i32 %EDX_val.225, %168, !mcsema_real_eip !133
  %170 = xor i32 %169, %168, !mcsema_real_eip !133
  %171 = xor i32 %170, %EDX_val.225, !mcsema_real_eip !133
  %172 = and i32 %171, 16, !mcsema_real_eip !133
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !133
  store i1 %173, i1* %AF, !mcsema_real_eip !133
  %174 = lshr i32 %169, 31, !mcsema_real_eip !133
  %175 = trunc i32 %174 to i1, !mcsema_real_eip !133
  store i1 %175, i1* %SF, !mcsema_real_eip !133
  %176 = icmp eq i32 %169, 0, !mcsema_real_eip !133
  store i1 %176, i1* %ZF, !mcsema_real_eip !133
  %177 = xor i32 %168, %EDX_val.225, !mcsema_real_eip !133
  %178 = xor i32 %177, -1, !mcsema_real_eip !133
  %179 = xor i32 %168, %169, !mcsema_real_eip !133
  %180 = and i32 %178, %179, !mcsema_real_eip !133
  %181 = lshr i32 %180, 31, !mcsema_real_eip !133
  %182 = and i32 %181, 1, !mcsema_real_eip !133
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !133
  store i1 %183, i1* %OF, !mcsema_real_eip !133
  %184 = trunc i32 %169 to i8, !mcsema_real_eip !133
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !133
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !133
  %187 = xor i1 %186, true, !mcsema_real_eip !133
  store i1 %187, i1* %PF, !mcsema_real_eip !133
  %188 = icmp ult i32 %169, %168, !mcsema_real_eip !133
  store i1 %188, i1* %CF, !mcsema_real_eip !133
  %189 = zext i32 %169 to i64, !mcsema_real_eip !133
  store i64 %189, i64* %XDX, !mcsema_real_eip !133
  %RBP_val.226 = load i64, i64* %XBP, !mcsema_real_eip !134
  %190 = add i64 %RBP_val.226, -32, !mcsema_real_eip !134
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !134
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !134
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !134
  %194 = load i32, i32* %193, !mcsema_real_eip !134
  %EDX.227 = bitcast i64* %XDX to i32*, !mcsema_real_eip !134
  %EDX_val.228 = load i32, i32* %EDX.227, !mcsema_real_eip !134
  %195 = add i32 %EDX_val.228, %194, !mcsema_real_eip !134
  %196 = xor i32 %195, %194, !mcsema_real_eip !134
  %197 = xor i32 %196, %EDX_val.228, !mcsema_real_eip !134
  %198 = and i32 %197, 16, !mcsema_real_eip !134
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !134
  store i1 %199, i1* %AF, !mcsema_real_eip !134
  %200 = lshr i32 %195, 31, !mcsema_real_eip !134
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !134
  store i1 %201, i1* %SF, !mcsema_real_eip !134
  %202 = icmp eq i32 %195, 0, !mcsema_real_eip !134
  store i1 %202, i1* %ZF, !mcsema_real_eip !134
  %203 = xor i32 %194, %EDX_val.228, !mcsema_real_eip !134
  %204 = xor i32 %203, -1, !mcsema_real_eip !134
  %205 = xor i32 %194, %195, !mcsema_real_eip !134
  %206 = and i32 %204, %205, !mcsema_real_eip !134
  %207 = lshr i32 %206, 31, !mcsema_real_eip !134
  %208 = and i32 %207, 1, !mcsema_real_eip !134
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !134
  store i1 %209, i1* %OF, !mcsema_real_eip !134
  %210 = trunc i32 %195 to i8, !mcsema_real_eip !134
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !134
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !134
  %213 = xor i1 %212, true, !mcsema_real_eip !134
  store i1 %213, i1* %PF, !mcsema_real_eip !134
  %214 = icmp ult i32 %195, %194, !mcsema_real_eip !134
  store i1 %214, i1* %CF, !mcsema_real_eip !134
  %215 = zext i32 %195 to i64, !mcsema_real_eip !134
  store i64 %215, i64* %XDX, !mcsema_real_eip !134
  %RBP_val.229 = load i64, i64* %XBP, !mcsema_real_eip !135
  %216 = add i64 %RBP_val.229, -76, !mcsema_real_eip !135
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !135
  %EDX.230 = bitcast i64* %XDX to i32*, !mcsema_real_eip !135
  %EDX_val.231 = load i32, i32* %EDX.230, !mcsema_real_eip !135
  %218 = ptrtoint i64* %217 to i64, !mcsema_real_eip !135
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !135
  store i32 %EDX_val.231, i32* %219, !mcsema_real_eip !135
  %RBP_val.232 = load i64, i64* %XBP, !mcsema_real_eip !136
  %220 = add i64 %RBP_val.232, -76, !mcsema_real_eip !136
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !136
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !136
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !136
  %224 = load i32, i32* %223, !mcsema_real_eip !136
  %225 = zext i32 %224 to i64, !mcsema_real_eip !136
  store i64 %225, i64* %XSI, !mcsema_real_eip !136
  %RBP_val.233 = load i64, i64* %XBP, !mcsema_real_eip !137
  %226 = add i64 %RBP_val.233, -88, !mcsema_real_eip !137
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !137
  %228 = load i64, i64* %227, !mcsema_real_eip !137
  store i64 %228, i64* %XDI, !mcsema_real_eip !137
  %AL.234 = bitcast i64* %XAX to i8*, !mcsema_real_eip !138
  store i8 0, i8* %AL.234, !mcsema_real_eip !138
  %RDI_val.235 = load i64, i64* %XDI, !mcsema_real_eip !139
  %RSI_val.236 = load i64, i64* %XSI, !mcsema_real_eip !139
  %RDX_val.237 = load i64, i64* %XDX, !mcsema_real_eip !139
  %RCX_val.238 = load i64, i64* %XCX, !mcsema_real_eip !139
  %R8_val.239 = load i64, i64* %R8, !mcsema_real_eip !139
  %R9_val.240 = load i64, i64* %R9, !mcsema_real_eip !139
  %RSP_val.241 = load i64, i64* %XSP, !mcsema_real_eip !139
  %229 = inttoptr i64 %RSP_val.241 to i64*, !mcsema_real_eip !139
  %230 = load i64, i64* %229, !mcsema_real_eip !139
  %231 = add i64 %RSP_val.241, 8, !mcsema_real_eip !139
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !139
  %233 = load i64, i64* %232, !mcsema_real_eip !139
  %234 = add i64 %231, 8, !mcsema_real_eip !139
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !139
  %236 = load i64, i64* %235, !mcsema_real_eip !139
  %237 = add i64 %234, 8, !mcsema_real_eip !139
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !139
  %239 = load i64, i64* %238, !mcsema_real_eip !139
  %240 = add i64 %237, 8, !mcsema_real_eip !139
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !139
  %242 = load i64, i64* %241, !mcsema_real_eip !139
  %243 = add i64 %240, 8, !mcsema_real_eip !139
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !139
  %245 = load i64, i64* %244, !mcsema_real_eip !139
  %246 = add i64 %243, 8, !mcsema_real_eip !139
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !139
  %248 = load i64, i64* %247, !mcsema_real_eip !139
  %249 = add i64 %246, 8, !mcsema_real_eip !139
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !139
  %251 = load i64, i64* %250, !mcsema_real_eip !139
  %252 = add i64 %249, 8, !mcsema_real_eip !139
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !139
  %254 = load i64, i64* %253, !mcsema_real_eip !139
  %255 = add i64 %252, 8, !mcsema_real_eip !139
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !139
  %257 = load i64, i64* %256, !mcsema_real_eip !139
  %RSP_val.242 = load i64, i64* %XSP, !mcsema_real_eip !139
  %258 = sub i64 %RSP_val.242, 8, !mcsema_real_eip !139
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !139
  store i64 -2415393069852865332, i64* %259, !mcsema_real_eip !139
  store i64 %258, i64* %XSP, !mcsema_real_eip !139
  %260 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.235, i64 %RSI_val.236, i64 %RDX_val.237, i64 %RCX_val.238, i64 %R8_val.239, i64 %R9_val.240, i64 %230, i64 %233, i64 %236, i64 %239, i64 %242, i64 %245, i64 %248, i64 %251, i64 %254, i64 %257), !mcsema_real_eip !139
  store i64 %260, i64* %XAX, !mcsema_real_eip !139
  %RBP_val.243 = load i64, i64* %XBP, !mcsema_real_eip !140
  %261 = add i64 %RBP_val.243, -76, !mcsema_real_eip !140
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !140
  %263 = ptrtoint i64* %262 to i64, !mcsema_real_eip !140
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !140
  %265 = load i32, i32* %264, !mcsema_real_eip !140
  %266 = zext i32 %265 to i64, !mcsema_real_eip !140
  store i64 %266, i64* %XDX, !mcsema_real_eip !140
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !141
  %267 = add i64 %RBP_val.244, -96, !mcsema_real_eip !141
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !141
  %EAX.245 = bitcast i64* %XAX to i32*, !mcsema_real_eip !141
  %EAX_val.246 = load i32, i32* %EAX.245, !mcsema_real_eip !141
  %269 = ptrtoint i64* %268 to i64, !mcsema_real_eip !141
  %270 = inttoptr i64 %269 to i32*, !mcsema_real_eip !141
  store i32 %EAX_val.246, i32* %270, !mcsema_real_eip !141
  %EDX.247 = bitcast i64* %XDX to i32*, !mcsema_real_eip !142
  %EDX_val.248 = load i32, i32* %EDX.247, !mcsema_real_eip !142
  %271 = zext i32 %EDX_val.248 to i64, !mcsema_real_eip !142
  store i64 %271, i64* %XAX, !mcsema_real_eip !142
  %RSP_val.249 = load i64, i64* %XSP, !mcsema_real_eip !143
  %272 = add i64 144, %RSP_val.249, !mcsema_real_eip !143
  %273 = xor i64 %272, %RSP_val.249, !mcsema_real_eip !143
  %274 = xor i64 %273, 144, !mcsema_real_eip !143
  %275 = and i64 %274, 16, !mcsema_real_eip !143
  %276 = icmp ne i64 %275, 0, !mcsema_real_eip !143
  store i1 %276, i1* %AF, !mcsema_real_eip !143
  %277 = lshr i64 %272, 63, !mcsema_real_eip !143
  %278 = trunc i64 %277 to i1, !mcsema_real_eip !143
  store i1 %278, i1* %SF, !mcsema_real_eip !143
  %279 = icmp eq i64 %272, 0, !mcsema_real_eip !143
  store i1 %279, i1* %ZF, !mcsema_real_eip !143
  %280 = xor i64 %RSP_val.249, 144, !mcsema_real_eip !143
  %281 = xor i64 %280, -1, !mcsema_real_eip !143
  %282 = xor i64 %RSP_val.249, %272, !mcsema_real_eip !143
  %283 = and i64 %281, %282, !mcsema_real_eip !143
  %284 = lshr i64 %283, 63, !mcsema_real_eip !143
  %285 = and i64 %284, 1, !mcsema_real_eip !143
  %286 = trunc i64 %285 to i1, !mcsema_real_eip !143
  store i1 %286, i1* %OF, !mcsema_real_eip !143
  %287 = trunc i64 %272 to i8, !mcsema_real_eip !143
  %288 = call i8 @llvm.ctpop.i8(i8 %287), !mcsema_real_eip !143
  %289 = trunc i8 %288 to i1, !mcsema_real_eip !143
  %290 = xor i1 %289, true, !mcsema_real_eip !143
  store i1 %290, i1* %PF, !mcsema_real_eip !143
  %291 = icmp ult i64 %272, %RSP_val.249, !mcsema_real_eip !143
  store i1 %291, i1* %CF, !mcsema_real_eip !143
  store i64 %272, i64* %XSP, !mcsema_real_eip !143
  %RSP_val.250 = load i64, i64* %XSP, !mcsema_real_eip !144
  %292 = inttoptr i64 %RSP_val.250 to i64*, !mcsema_real_eip !144
  %293 = load i64, i64* %292, !mcsema_real_eip !144
  store i64 %293, i64* %XBP, !mcsema_real_eip !144
  %294 = add i64 %RSP_val.250, 8, !mcsema_real_eip !144
  store i64 %294, i64* %XSP, !mcsema_real_eip !144
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !145
  %295 = add i64 %RSP_val.251, 8, !mcsema_real_eip !145
  %296 = inttoptr i64 %RSP_val.251 to i64*, !mcsema_real_eip !145
  %297 = load i64, i64* %296, !mcsema_real_eip !145
  store i64 %297, i64* %XIP, !mcsema_real_eip !145
  store i64 %295, i64* %XSP, !mcsema_real_eip !145
  ret void, !mcsema_real_eip !145
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
!10 = !{i64 24}
!11 = !{i64 27}
!12 = !{i64 30}
!13 = !{i64 33}
!14 = !{i64 37}
!15 = !{i64 41}
!16 = !{i64 45}
!17 = !{i64 49}
!18 = !{i64 53}
!19 = !{i64 57}
!20 = !{i64 60}
!21 = !{i64 64}
!22 = !{i64 68}
!23 = !{i64 71}
!24 = !{i64 75}
!25 = !{i64 78}
!26 = !{i64 81}
!27 = !{i64 85}
!28 = !{i64 88}
!29 = !{i64 91}
!30 = !{i64 94}
!31 = !{i64 98}
!32 = !{i64 101}
!33 = !{i64 104}
!34 = !{i64 108}
!35 = !{i64 111}
!36 = !{i64 114}
!37 = !{i64 117}
!38 = !{i64 120}
!39 = !{i64 123}
!40 = !{i64 127}
!41 = !{i64 131}
!42 = !{i64 134}
!43 = !{i64 138}
!44 = !{i64 142}
!45 = !{i64 145}
!46 = !{i64 149}
!47 = !{i64 153}
!48 = !{i64 157}
!49 = !{i64 160}
!50 = !{i64 164}
!51 = !{i64 168}
!52 = !{i64 171}
!53 = !{i64 174}
!54 = !{i64 177}
!55 = !{i64 180}
!56 = !{i64 184}
!57 = !{i64 188}
!58 = !{i64 191}
!59 = !{i64 195}
!60 = !{i64 199}
!61 = !{i64 202}
!62 = !{i64 206}
!63 = !{i64 210}
!64 = !{i64 214}
!65 = !{i64 217}
!66 = !{i64 221}
!67 = !{i64 225}
!68 = !{i64 228}
!69 = !{i64 231}
!70 = !{i64 234}
!71 = !{i64 237}
!72 = !{i64 240}
!73 = !{i64 244}
!74 = !{i64 248}
!75 = !{i64 251}
!76 = !{i64 254}
!77 = !{i64 258}
!78 = !{i64 265}
!79 = !{i64 272}
!80 = !{i64 275}
!81 = !{i64 276}
!82 = !{i64 277}
!83 = !{i64 288}
!84 = !{i64 289}
!85 = !{i64 292}
!86 = !{i64 299}
!87 = !{i64 309}
!88 = !{i64 316}
!89 = !{i64 323}
!90 = !{i64 330}
!91 = !{i64 337}
!92 = !{i64 342}
!93 = !{i64 344}
!94 = !{i64 348}
!95 = !{i64 351}
!96 = !{i64 356}
!97 = !{i64 360}
!98 = !{i64 364}
!99 = !{i64 370}
!100 = !{i64 374}
!101 = !{i64 381}
!102 = !{i64 385}
!103 = !{i64 392}
!104 = !{i64 396}
!105 = !{i64 399}
!106 = !{i64 402}
!107 = !{i64 406}
!108 = !{i64 410}
!109 = !{i64 414}
!110 = !{i64 417}
!111 = !{i64 420}
!112 = !{i64 423}
!113 = !{i64 426}
!114 = !{i64 430}
!115 = !{i64 434}
!116 = !{i64 438}
!117 = !{i64 442}
!118 = !{i64 446}
!119 = !{i64 452}
!120 = !{i64 457}
!121 = !{i64 463}
!122 = !{i64 466}
!123 = !{i64 469}
!124 = !{i64 472}
!125 = !{i64 476}
!126 = !{i64 481}
!127 = !{i64 484}
!128 = !{i64 488}
!129 = !{i64 492}
!130 = !{i64 496}
!131 = !{i64 499}
!132 = !{i64 502}
!133 = !{i64 505}
!134 = !{i64 508}
!135 = !{i64 511}
!136 = !{i64 514}
!137 = !{i64 517}
!138 = !{i64 521}
!139 = !{i64 523}
!140 = !{i64 528}
!141 = !{i64 531}
!142 = !{i64 534}
!143 = !{i64 536}
!144 = !{i64 543}
!145 = !{i64 544}
