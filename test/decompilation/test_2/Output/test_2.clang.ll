; ModuleID = 'Output/test_2.clang.bc'
source_filename = "Output/test_2.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xea = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xf0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"d\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !4
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !4
  %7 = load i32, i32* %6, !mcsema_real_eip !4
  %8 = zext i32 %7 to i64, !mcsema_real_eip !4
  store i64 %8, i64* %XAX, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %9 = add i64 %RBP_val.4, 16, !mcsema_real_eip !5
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !5
  %11 = ptrtoint i64* %10 to i64, !mcsema_real_eip !5
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !5
  %13 = load i32, i32* %12, !mcsema_real_eip !5
  %14 = zext i32 %13 to i64, !mcsema_real_eip !5
  store i64 %14, i64* %R10, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %15 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %17 = ptrtoint i64* %16 to i64, !mcsema_real_eip !6
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %18, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %19 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !7
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, !mcsema_real_eip !7
  %21 = ptrtoint i64* %20 to i64, !mcsema_real_eip !7
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %22, !mcsema_real_eip !7
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !8
  %23 = add i64 %RBP_val.11, -12, !mcsema_real_eip !8
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !8
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, !mcsema_real_eip !8
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !8
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %26, !mcsema_real_eip !8
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !9
  %27 = add i64 %RBP_val.14, -16, !mcsema_real_eip !9
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !9
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, !mcsema_real_eip !9
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %30, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !10
  %31 = add i64 %RBP_val.17, -20, !mcsema_real_eip !10
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !10
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, !mcsema_real_eip !10
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !10
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %34, !mcsema_real_eip !10
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !11
  %35 = add i64 %RBP_val.20, -24, !mcsema_real_eip !11
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !11
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, !mcsema_real_eip !11
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !11
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %38, !mcsema_real_eip !11
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !12
  %39 = add i64 %RBP_val.23, -28, !mcsema_real_eip !12
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !12
  %R10D.24 = bitcast i64* %R10 to i32*, !mcsema_real_eip !12
  %R10D_val.25 = load i32, i32* %R10D.24, !mcsema_real_eip !12
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !12
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !12
  store i32 %R10D_val.25, i32* %42, !mcsema_real_eip !12
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !13
  %43 = add i64 %RBP_val.26, -32, !mcsema_real_eip !13
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !13
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !13
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.28, i32* %46, !mcsema_real_eip !13
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !14
  %47 = add i64 %RBP_val.29, -4, !mcsema_real_eip !14
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !14
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !14
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !14
  %51 = load i32, i32* %50, !mcsema_real_eip !14
  %52 = zext i32 %51 to i64, !mcsema_real_eip !14
  store i64 %52, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !15
  %53 = add i64 %RBP_val.30, -8, !mcsema_real_eip !15
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !15
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !15
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !15
  %57 = load i32, i32* %56, !mcsema_real_eip !15
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !15
  %58 = add i32 %EAX_val.32, %57, !mcsema_real_eip !15
  %59 = xor i32 %58, %57, !mcsema_real_eip !15
  %60 = xor i32 %59, %EAX_val.32, !mcsema_real_eip !15
  %61 = and i32 %60, 16, !mcsema_real_eip !15
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !15
  store i1 %62, i1* %AF, !mcsema_real_eip !15
  %63 = lshr i32 %58, 31, !mcsema_real_eip !15
  %64 = trunc i32 %63 to i1, !mcsema_real_eip !15
  store i1 %64, i1* %SF, !mcsema_real_eip !15
  %65 = icmp eq i32 %58, 0, !mcsema_real_eip !15
  store i1 %65, i1* %ZF, !mcsema_real_eip !15
  %66 = xor i32 %57, %EAX_val.32, !mcsema_real_eip !15
  %67 = xor i32 %66, -1, !mcsema_real_eip !15
  %68 = xor i32 %57, %58, !mcsema_real_eip !15
  %69 = and i32 %67, %68, !mcsema_real_eip !15
  %70 = lshr i32 %69, 31, !mcsema_real_eip !15
  %71 = and i32 %70, 1, !mcsema_real_eip !15
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !15
  store i1 %72, i1* %OF, !mcsema_real_eip !15
  %73 = trunc i32 %58 to i8, !mcsema_real_eip !15
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !15
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !15
  %76 = xor i1 %75, true, !mcsema_real_eip !15
  store i1 %76, i1* %PF, !mcsema_real_eip !15
  %77 = icmp ult i32 %58, %57, !mcsema_real_eip !15
  store i1 %77, i1* %CF, !mcsema_real_eip !15
  %78 = zext i32 %58 to i64, !mcsema_real_eip !15
  store i64 %78, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !16
  %79 = add i64 %RBP_val.33, -12, !mcsema_real_eip !16
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !16
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !16
  %83 = load i32, i32* %82, !mcsema_real_eip !16
  %EAX.34 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.35 = load i32, i32* %EAX.34, !mcsema_real_eip !16
  %84 = add i32 %EAX_val.35, %83, !mcsema_real_eip !16
  %85 = xor i32 %84, %83, !mcsema_real_eip !16
  %86 = xor i32 %85, %EAX_val.35, !mcsema_real_eip !16
  %87 = and i32 %86, 16, !mcsema_real_eip !16
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !16
  store i1 %88, i1* %AF, !mcsema_real_eip !16
  %89 = lshr i32 %84, 31, !mcsema_real_eip !16
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !16
  store i1 %90, i1* %SF, !mcsema_real_eip !16
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !16
  store i1 %91, i1* %ZF, !mcsema_real_eip !16
  %92 = xor i32 %83, %EAX_val.35, !mcsema_real_eip !16
  %93 = xor i32 %92, -1, !mcsema_real_eip !16
  %94 = xor i32 %83, %84, !mcsema_real_eip !16
  %95 = and i32 %93, %94, !mcsema_real_eip !16
  %96 = lshr i32 %95, 31, !mcsema_real_eip !16
  %97 = and i32 %96, 1, !mcsema_real_eip !16
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !16
  store i1 %98, i1* %OF, !mcsema_real_eip !16
  %99 = trunc i32 %84 to i8, !mcsema_real_eip !16
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !16
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !16
  %102 = xor i1 %101, true, !mcsema_real_eip !16
  store i1 %102, i1* %PF, !mcsema_real_eip !16
  %103 = icmp ult i32 %84, %83, !mcsema_real_eip !16
  store i1 %103, i1* %CF, !mcsema_real_eip !16
  %104 = zext i32 %84 to i64, !mcsema_real_eip !16
  store i64 %104, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !17
  %105 = add i64 %RBP_val.36, -16, !mcsema_real_eip !17
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !17
  %107 = ptrtoint i64* %106 to i64, !mcsema_real_eip !17
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !17
  %109 = load i32, i32* %108, !mcsema_real_eip !17
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !17
  %110 = add i32 %EAX_val.38, %109, !mcsema_real_eip !17
  %111 = xor i32 %110, %109, !mcsema_real_eip !17
  %112 = xor i32 %111, %EAX_val.38, !mcsema_real_eip !17
  %113 = and i32 %112, 16, !mcsema_real_eip !17
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !17
  store i1 %114, i1* %AF, !mcsema_real_eip !17
  %115 = lshr i32 %110, 31, !mcsema_real_eip !17
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !17
  store i1 %116, i1* %SF, !mcsema_real_eip !17
  %117 = icmp eq i32 %110, 0, !mcsema_real_eip !17
  store i1 %117, i1* %ZF, !mcsema_real_eip !17
  %118 = xor i32 %109, %EAX_val.38, !mcsema_real_eip !17
  %119 = xor i32 %118, -1, !mcsema_real_eip !17
  %120 = xor i32 %109, %110, !mcsema_real_eip !17
  %121 = and i32 %119, %120, !mcsema_real_eip !17
  %122 = lshr i32 %121, 31, !mcsema_real_eip !17
  %123 = and i32 %122, 1, !mcsema_real_eip !17
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !17
  store i1 %124, i1* %OF, !mcsema_real_eip !17
  %125 = trunc i32 %110 to i8, !mcsema_real_eip !17
  %126 = call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !17
  %127 = trunc i8 %126 to i1, !mcsema_real_eip !17
  %128 = xor i1 %127, true, !mcsema_real_eip !17
  store i1 %128, i1* %PF, !mcsema_real_eip !17
  %129 = icmp ult i32 %110, %109, !mcsema_real_eip !17
  store i1 %129, i1* %CF, !mcsema_real_eip !17
  %130 = zext i32 %110 to i64, !mcsema_real_eip !17
  store i64 %130, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !18
  %131 = add i64 %RBP_val.39, -20, !mcsema_real_eip !18
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !18
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !18
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !18
  %135 = load i32, i32* %134, !mcsema_real_eip !18
  %EAX.40 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.41 = load i32, i32* %EAX.40, !mcsema_real_eip !18
  %136 = add i32 %EAX_val.41, %135, !mcsema_real_eip !18
  %137 = xor i32 %136, %135, !mcsema_real_eip !18
  %138 = xor i32 %137, %EAX_val.41, !mcsema_real_eip !18
  %139 = and i32 %138, 16, !mcsema_real_eip !18
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !18
  store i1 %140, i1* %AF, !mcsema_real_eip !18
  %141 = lshr i32 %136, 31, !mcsema_real_eip !18
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !18
  store i1 %142, i1* %SF, !mcsema_real_eip !18
  %143 = icmp eq i32 %136, 0, !mcsema_real_eip !18
  store i1 %143, i1* %ZF, !mcsema_real_eip !18
  %144 = xor i32 %135, %EAX_val.41, !mcsema_real_eip !18
  %145 = xor i32 %144, -1, !mcsema_real_eip !18
  %146 = xor i32 %135, %136, !mcsema_real_eip !18
  %147 = and i32 %145, %146, !mcsema_real_eip !18
  %148 = lshr i32 %147, 31, !mcsema_real_eip !18
  %149 = and i32 %148, 1, !mcsema_real_eip !18
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !18
  store i1 %150, i1* %OF, !mcsema_real_eip !18
  %151 = trunc i32 %136 to i8, !mcsema_real_eip !18
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !18
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !18
  %154 = xor i1 %153, true, !mcsema_real_eip !18
  store i1 %154, i1* %PF, !mcsema_real_eip !18
  %155 = icmp ult i32 %136, %135, !mcsema_real_eip !18
  store i1 %155, i1* %CF, !mcsema_real_eip !18
  %156 = zext i32 %136 to i64, !mcsema_real_eip !18
  store i64 %156, i64* %XAX, !mcsema_real_eip !18
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !19
  %157 = add i64 %RBP_val.42, -24, !mcsema_real_eip !19
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !19
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !19
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !19
  %161 = load i32, i32* %160, !mcsema_real_eip !19
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !19
  %162 = add i32 %EAX_val.44, %161, !mcsema_real_eip !19
  %163 = xor i32 %162, %161, !mcsema_real_eip !19
  %164 = xor i32 %163, %EAX_val.44, !mcsema_real_eip !19
  %165 = and i32 %164, 16, !mcsema_real_eip !19
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !19
  store i1 %166, i1* %AF, !mcsema_real_eip !19
  %167 = lshr i32 %162, 31, !mcsema_real_eip !19
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !19
  store i1 %168, i1* %SF, !mcsema_real_eip !19
  %169 = icmp eq i32 %162, 0, !mcsema_real_eip !19
  store i1 %169, i1* %ZF, !mcsema_real_eip !19
  %170 = xor i32 %161, %EAX_val.44, !mcsema_real_eip !19
  %171 = xor i32 %170, -1, !mcsema_real_eip !19
  %172 = xor i32 %161, %162, !mcsema_real_eip !19
  %173 = and i32 %171, %172, !mcsema_real_eip !19
  %174 = lshr i32 %173, 31, !mcsema_real_eip !19
  %175 = and i32 %174, 1, !mcsema_real_eip !19
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !19
  store i1 %176, i1* %OF, !mcsema_real_eip !19
  %177 = trunc i32 %162 to i8, !mcsema_real_eip !19
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !19
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !19
  %180 = xor i1 %179, true, !mcsema_real_eip !19
  store i1 %180, i1* %PF, !mcsema_real_eip !19
  %181 = icmp ult i32 %162, %161, !mcsema_real_eip !19
  store i1 %181, i1* %CF, !mcsema_real_eip !19
  %182 = zext i32 %162 to i64, !mcsema_real_eip !19
  store i64 %182, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !20
  %183 = add i64 %RBP_val.45, -28, !mcsema_real_eip !20
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !20
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !20
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !20
  %187 = load i32, i32* %186, !mcsema_real_eip !20
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !20
  %188 = add i32 %EAX_val.47, %187, !mcsema_real_eip !20
  %189 = xor i32 %188, %187, !mcsema_real_eip !20
  %190 = xor i32 %189, %EAX_val.47, !mcsema_real_eip !20
  %191 = and i32 %190, 16, !mcsema_real_eip !20
  %192 = icmp ne i32 %191, 0, !mcsema_real_eip !20
  store i1 %192, i1* %AF, !mcsema_real_eip !20
  %193 = lshr i32 %188, 31, !mcsema_real_eip !20
  %194 = trunc i32 %193 to i1, !mcsema_real_eip !20
  store i1 %194, i1* %SF, !mcsema_real_eip !20
  %195 = icmp eq i32 %188, 0, !mcsema_real_eip !20
  store i1 %195, i1* %ZF, !mcsema_real_eip !20
  %196 = xor i32 %187, %EAX_val.47, !mcsema_real_eip !20
  %197 = xor i32 %196, -1, !mcsema_real_eip !20
  %198 = xor i32 %187, %188, !mcsema_real_eip !20
  %199 = and i32 %197, %198, !mcsema_real_eip !20
  %200 = lshr i32 %199, 31, !mcsema_real_eip !20
  %201 = and i32 %200, 1, !mcsema_real_eip !20
  %202 = trunc i32 %201 to i1, !mcsema_real_eip !20
  store i1 %202, i1* %OF, !mcsema_real_eip !20
  %203 = trunc i32 %188 to i8, !mcsema_real_eip !20
  %204 = call i8 @llvm.ctpop.i8(i8 %203), !mcsema_real_eip !20
  %205 = trunc i8 %204 to i1, !mcsema_real_eip !20
  %206 = xor i1 %205, true, !mcsema_real_eip !20
  store i1 %206, i1* %PF, !mcsema_real_eip !20
  %207 = icmp ult i32 %188, %187, !mcsema_real_eip !20
  store i1 %207, i1* %CF, !mcsema_real_eip !20
  %208 = zext i32 %188 to i64, !mcsema_real_eip !20
  store i64 %208, i64* %XAX, !mcsema_real_eip !20
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !21
  %209 = add i64 %RBP_val.48, -36, !mcsema_real_eip !21
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !21
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !21
  %211 = ptrtoint i64* %210 to i64, !mcsema_real_eip !21
  %212 = inttoptr i64 %211 to i32*, !mcsema_real_eip !21
  store i32 %EAX_val.50, i32* %212, !mcsema_real_eip !21
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !22
  %213 = add i64 %RBP_val.51, -36, !mcsema_real_eip !22
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !22
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !22
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !22
  %217 = load i32, i32* %216, !mcsema_real_eip !22
  %218 = sub i32 %217, 40, !mcsema_real_eip !22
  %219 = xor i32 %218, %217, !mcsema_real_eip !22
  %220 = xor i32 %219, 40, !mcsema_real_eip !22
  %221 = and i32 %220, 16, !mcsema_real_eip !22
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !22
  store i1 %222, i1* %AF, !mcsema_real_eip !22
  %223 = trunc i32 %218 to i8, !mcsema_real_eip !22
  %224 = call i8 @llvm.ctpop.i8(i8 %223), !mcsema_real_eip !22
  %225 = trunc i8 %224 to i1, !mcsema_real_eip !22
  %226 = xor i1 %225, true, !mcsema_real_eip !22
  store i1 %226, i1* %PF, !mcsema_real_eip !22
  %227 = icmp eq i32 %218, 0, !mcsema_real_eip !22
  store i1 %227, i1* %ZF, !mcsema_real_eip !22
  %228 = lshr i32 %218, 31, !mcsema_real_eip !22
  %229 = trunc i32 %228 to i1, !mcsema_real_eip !22
  store i1 %229, i1* %SF, !mcsema_real_eip !22
  %230 = icmp ult i32 %217, 40, !mcsema_real_eip !22
  store i1 %230, i1* %CF, !mcsema_real_eip !22
  %231 = xor i32 %217, 40, !mcsema_real_eip !22
  %232 = xor i32 %217, %218, !mcsema_real_eip !22
  %233 = and i32 %231, %232, !mcsema_real_eip !22
  %234 = lshr i32 %233, 31, !mcsema_real_eip !22
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !22
  store i1 %235, i1* %OF, !mcsema_real_eip !22
  %236 = load i1, i1* %OF, !mcsema_real_eip !23
  %237 = load i1, i1* %SF, !mcsema_real_eip !23
  %238 = icmp eq i1 %237, %236, !mcsema_real_eip !23
  %239 = icmp eq i1 %238, false, !mcsema_real_eip !23
  %240 = load i1, i1* %ZF, !mcsema_real_eip !23
  %241 = icmp eq i1 %240, true, !mcsema_real_eip !23
  %242 = or i1 %241, %239, !mcsema_real_eip !23
  br i1 %242, label %block_0x56, label %block_0x48, !mcsema_real_eip !23

block_0x48:                                       ; preds = %block_0x0
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !24
  %243 = add i64 %RBP_val.52, -36, !mcsema_real_eip !24
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !24
  %245 = ptrtoint i64* %244 to i64, !mcsema_real_eip !24
  %246 = inttoptr i64 %245 to i32*, !mcsema_real_eip !24
  %247 = load i32, i32* %246, !mcsema_real_eip !24
  %248 = zext i32 %247 to i64, !mcsema_real_eip !24
  store i64 %248, i64* %XAX, !mcsema_real_eip !24
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !25
  %249 = add i64 %RBP_val.53, -32, !mcsema_real_eip !25
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !25
  %251 = ptrtoint i64* %250 to i64, !mcsema_real_eip !25
  %252 = inttoptr i64 %251 to i32*, !mcsema_real_eip !25
  %253 = load i32, i32* %252, !mcsema_real_eip !25
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !25
  %254 = add i32 %EAX_val.55, %253, !mcsema_real_eip !25
  %255 = xor i32 %254, %253, !mcsema_real_eip !25
  %256 = xor i32 %255, %EAX_val.55, !mcsema_real_eip !25
  %257 = and i32 %256, 16, !mcsema_real_eip !25
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !25
  store i1 %258, i1* %AF, !mcsema_real_eip !25
  %259 = lshr i32 %254, 31, !mcsema_real_eip !25
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !25
  store i1 %260, i1* %SF, !mcsema_real_eip !25
  %261 = icmp eq i32 %254, 0, !mcsema_real_eip !25
  store i1 %261, i1* %ZF, !mcsema_real_eip !25
  %262 = xor i32 %253, %EAX_val.55, !mcsema_real_eip !25
  %263 = xor i32 %262, -1, !mcsema_real_eip !25
  %264 = xor i32 %253, %254, !mcsema_real_eip !25
  %265 = and i32 %263, %264, !mcsema_real_eip !25
  %266 = lshr i32 %265, 31, !mcsema_real_eip !25
  %267 = and i32 %266, 1, !mcsema_real_eip !25
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !25
  store i1 %268, i1* %OF, !mcsema_real_eip !25
  %269 = trunc i32 %254 to i8, !mcsema_real_eip !25
  %270 = call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !25
  %271 = trunc i8 %270 to i1, !mcsema_real_eip !25
  %272 = xor i1 %271, true, !mcsema_real_eip !25
  store i1 %272, i1* %PF, !mcsema_real_eip !25
  %273 = icmp ult i32 %254, %253, !mcsema_real_eip !25
  store i1 %273, i1* %CF, !mcsema_real_eip !25
  %274 = zext i32 %254 to i64, !mcsema_real_eip !25
  store i64 %274, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !26
  %275 = add i64 %RBP_val.56, -40, !mcsema_real_eip !26
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !26
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !26
  %277 = ptrtoint i64* %276 to i64, !mcsema_real_eip !26
  %278 = inttoptr i64 %277 to i32*, !mcsema_real_eip !26
  store i32 %EAX_val.58, i32* %278, !mcsema_real_eip !26
  br label %block_0x5f, !mcsema_real_eip !27

block_0x56:                                       ; preds = %block_0x0
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !28
  %279 = add i64 %RBP_val.59, -36, !mcsema_real_eip !28
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !28
  %281 = ptrtoint i64* %280 to i64, !mcsema_real_eip !28
  %282 = inttoptr i64 %281 to i32*, !mcsema_real_eip !28
  %283 = load i32, i32* %282, !mcsema_real_eip !28
  %284 = zext i32 %283 to i64, !mcsema_real_eip !28
  store i64 %284, i64* %XAX, !mcsema_real_eip !28
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !29
  %285 = add i64 %RBP_val.60, -32, !mcsema_real_eip !29
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !29
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !29
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !29
  %287 = ptrtoint i64* %286 to i64, !mcsema_real_eip !29
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !29
  %289 = load i32, i32* %288, !mcsema_real_eip !29
  %290 = sub i32 %EAX_val.62, %289, !mcsema_real_eip !29
  %291 = xor i32 %290, %EAX_val.62, !mcsema_real_eip !29
  %292 = xor i32 %291, %289, !mcsema_real_eip !29
  %293 = and i32 %292, 16, !mcsema_real_eip !29
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !29
  store i1 %294, i1* %AF, !mcsema_real_eip !29
  %295 = trunc i32 %290 to i8, !mcsema_real_eip !29
  %296 = call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !29
  %297 = trunc i8 %296 to i1, !mcsema_real_eip !29
  %298 = xor i1 %297, true, !mcsema_real_eip !29
  store i1 %298, i1* %PF, !mcsema_real_eip !29
  %299 = icmp eq i32 %290, 0, !mcsema_real_eip !29
  store i1 %299, i1* %ZF, !mcsema_real_eip !29
  %300 = lshr i32 %290, 31, !mcsema_real_eip !29
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !29
  store i1 %301, i1* %SF, !mcsema_real_eip !29
  %302 = icmp ult i32 %EAX_val.62, %289, !mcsema_real_eip !29
  store i1 %302, i1* %CF, !mcsema_real_eip !29
  %303 = xor i32 %EAX_val.62, %289, !mcsema_real_eip !29
  %304 = xor i32 %EAX_val.62, %290, !mcsema_real_eip !29
  %305 = and i32 %303, %304, !mcsema_real_eip !29
  %306 = lshr i32 %305, 31, !mcsema_real_eip !29
  %307 = trunc i32 %306 to i1, !mcsema_real_eip !29
  store i1 %307, i1* %OF, !mcsema_real_eip !29
  %308 = zext i32 %290 to i64, !mcsema_real_eip !29
  store i64 %308, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !30
  %309 = add i64 %RBP_val.63, -40, !mcsema_real_eip !30
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !30
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !30
  %311 = ptrtoint i64* %310 to i64, !mcsema_real_eip !30
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.65, i32* %312, !mcsema_real_eip !30
  br label %block_0x5f, !mcsema_real_eip !31

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !31
  %313 = add i64 %RBP_val.66, -40, !mcsema_real_eip !31
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !31
  %315 = ptrtoint i64* %314 to i64, !mcsema_real_eip !31
  %316 = inttoptr i64 %315 to i32*, !mcsema_real_eip !31
  %317 = load i32, i32* %316, !mcsema_real_eip !31
  %318 = zext i32 %317 to i64, !mcsema_real_eip !31
  store i64 %318, i64* %XAX, !mcsema_real_eip !31
  %RSP_val.67 = load i64, i64* %XSP, !mcsema_real_eip !32
  %319 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !32
  %320 = load i64, i64* %319, !mcsema_real_eip !32
  store i64 %320, i64* %XBP, !mcsema_real_eip !32
  %321 = add i64 %RSP_val.67, 8, !mcsema_real_eip !32
  store i64 %321, i64* %XSP, !mcsema_real_eip !32
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !33
  %322 = add i64 %RSP_val.68, 8, !mcsema_real_eip !33
  %323 = inttoptr i64 %RSP_val.68 to i64*, !mcsema_real_eip !33
  %324 = load i64, i64* %323, !mcsema_real_eip !33
  store i64 %324, i64* %XIP, !mcsema_real_eip !33
  store i64 %322, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !34
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !34
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !34
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !34
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !34
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !34
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !34
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !34
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !34
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !34
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !34
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !34
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !34
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !34
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !34
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !34
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !34
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !34
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !34
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !34
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !34
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !34
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !34
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !34
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !34
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !34
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !34
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !34
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !34
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !34
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !34
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !34
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !34
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !34
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !34
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !34
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !34
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !34
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !34
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !34
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !34
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !34
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !34
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !34
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !34
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !34
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !34
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !34
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !34
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !34
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !34
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !34
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !34
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !34
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !34
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !34
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !34
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !34
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !34
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !34
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !34
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !34
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !34
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !34
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !34
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !34
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !34
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !34
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !34
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !34
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !34
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !34
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !34
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !34
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !34
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !34
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !34
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !34
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !34
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !34
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !34
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !34
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !34
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !34
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !34
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !34
  br label %block_0x70, !mcsema_real_eip !34

block_0x70:                                       ; preds = %entry
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !34
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !34
  %1 = sub i64 %RSP_val.70, 8, !mcsema_real_eip !34
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !34
  store i64 %RBP_val.69, i64* %2, !mcsema_real_eip !34
  store i64 %1, i64* %XSP, !mcsema_real_eip !34
  %RSP_val.71 = load i64, i64* %XSP, !mcsema_real_eip !35
  store i64 %RSP_val.71, i64* %XBP, !mcsema_real_eip !35
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !36
  %3 = sext i8 48 to i64, !mcsema_real_eip !36
  %4 = sub i64 %RSP_val.72, %3, !mcsema_real_eip !36
  %5 = xor i64 %4, %RSP_val.72, !mcsema_real_eip !36
  %6 = xor i64 %5, %3, !mcsema_real_eip !36
  %7 = and i64 %6, 16, !mcsema_real_eip !36
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !36
  store i1 %8, i1* %AF, !mcsema_real_eip !36
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !36
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !36
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !36
  %12 = xor i1 %11, true, !mcsema_real_eip !36
  store i1 %12, i1* %PF, !mcsema_real_eip !36
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !36
  store i1 %13, i1* %ZF, !mcsema_real_eip !36
  %14 = lshr i64 %4, 63, !mcsema_real_eip !36
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !36
  store i1 %15, i1* %SF, !mcsema_real_eip !36
  %16 = icmp ult i64 %RSP_val.72, %3, !mcsema_real_eip !36
  store i1 %16, i1* %CF, !mcsema_real_eip !36
  %17 = xor i64 %RSP_val.72, %3, !mcsema_real_eip !36
  %18 = xor i64 %RSP_val.72, %4, !mcsema_real_eip !36
  %19 = and i64 %17, %18, !mcsema_real_eip !36
  %20 = lshr i64 %19, 63, !mcsema_real_eip !36
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !36
  store i1 %21, i1* %OF, !mcsema_real_eip !36
  store i64 %4, i64* %XSP, !mcsema_real_eip !36
  %22 = zext i32 10 to i64, !mcsema_real_eip !37
  store i64 %22, i64* %XDI, !mcsema_real_eip !37
  %23 = zext i32 20 to i64, !mcsema_real_eip !38
  store i64 %23, i64* %XSI, !mcsema_real_eip !38
  %24 = zext i32 30 to i64, !mcsema_real_eip !39
  store i64 %24, i64* %XDX, !mcsema_real_eip !39
  %25 = zext i32 40 to i64, !mcsema_real_eip !40
  store i64 %25, i64* %XCX, !mcsema_real_eip !40
  %26 = zext i32 50 to i64, !mcsema_real_eip !41
  store i64 %26, i64* %R8, !mcsema_real_eip !41
  %27 = zext i32 60 to i64, !mcsema_real_eip !42
  store i64 %27, i64* %R9, !mcsema_real_eip !42
  %28 = zext i32 70 to i64, !mcsema_real_eip !43
  store i64 %28, i64* %XAX, !mcsema_real_eip !43
  %29 = zext i32 80 to i64, !mcsema_real_eip !44
  store i64 %29, i64* %R10, !mcsema_real_eip !44
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !45
  %30 = add i64 %RBP_val.73, -4, !mcsema_real_eip !45
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !45
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !45
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %33, !mcsema_real_eip !45
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !46
  %34 = add i64 %RSP_val.74, 0, !mcsema_real_eip !46
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !46
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !46
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !46
  store i32 70, i32* %37, !mcsema_real_eip !46
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !47
  %38 = add i64 %RSP_val.75, 8, !mcsema_real_eip !47
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !47
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !47
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !47
  store i32 80, i32* %41, !mcsema_real_eip !47
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !48
  %42 = add i64 %RBP_val.76, -12, !mcsema_real_eip !48
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !48
  %R10D.77 = bitcast i64* %R10 to i32*, !mcsema_real_eip !48
  %R10D_val.78 = load i32, i32* %R10D.77, !mcsema_real_eip !48
  %44 = ptrtoint i64* %43 to i64, !mcsema_real_eip !48
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !48
  store i32 %R10D_val.78, i32* %45, !mcsema_real_eip !48
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !49
  %46 = add i64 %RBP_val.79, -16, !mcsema_real_eip !49
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !49
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.81 = load i32, i32* %EAX.80, !mcsema_real_eip !49
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !49
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.81, i32* %49, !mcsema_real_eip !49
  %RSP_val.82 = load i64, i64* %XSP, !mcsema_real_eip !50
  %50 = sub i64 %RSP_val.82, 8, !mcsema_real_eip !50
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !50
  store i64 -4981261766360305936, i64* %51, !mcsema_real_eip !50
  store i64 %50, i64* %XSP, !mcsema_real_eip !50
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !50
  %52 = getelementptr %0, %0* @data_0xea, i64 0, i32 0, !mcsema_real_eip !51
  %53 = ptrtoint [4 x i8]* %52 to i64, !mcsema_real_eip !51
  %54 = add i64 %53, 0, !mcsema_real_eip !51
  store i64 %54, i64* %XDI, !mcsema_real_eip !51
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !52
  %55 = add i64 %RBP_val.83, -8, !mcsema_real_eip !52
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !52
  %EAX.84 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.85 = load i32, i32* %EAX.84, !mcsema_real_eip !52
  %57 = ptrtoint i64* %56 to i64, !mcsema_real_eip !52
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.85, i32* %58, !mcsema_real_eip !52
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !53
  %59 = add i64 %RBP_val.86, -8, !mcsema_real_eip !53
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !53
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !53
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !53
  %63 = load i32, i32* %62, !mcsema_real_eip !53
  %64 = zext i32 %63 to i64, !mcsema_real_eip !53
  store i64 %64, i64* %XSI, !mcsema_real_eip !53
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  store i8 0, i8* %AL.87, !mcsema_real_eip !54
  %RDI_val.88 = load i64, i64* %XDI, !mcsema_real_eip !55
  %RSI_val.89 = load i64, i64* %XSI, !mcsema_real_eip !55
  %RDX_val.90 = load i64, i64* %XDX, !mcsema_real_eip !55
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !55
  %R8_val.92 = load i64, i64* %R8, !mcsema_real_eip !55
  %R9_val.93 = load i64, i64* %R9, !mcsema_real_eip !55
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !55
  %65 = inttoptr i64 %RSP_val.94 to i64*, !mcsema_real_eip !55
  %66 = load i64, i64* %65, !mcsema_real_eip !55
  %67 = add i64 %RSP_val.94, 8, !mcsema_real_eip !55
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !55
  %69 = load i64, i64* %68, !mcsema_real_eip !55
  %70 = add i64 %67, 8, !mcsema_real_eip !55
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !55
  %72 = load i64, i64* %71, !mcsema_real_eip !55
  %73 = add i64 %70, 8, !mcsema_real_eip !55
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !55
  %75 = load i64, i64* %74, !mcsema_real_eip !55
  %76 = add i64 %73, 8, !mcsema_real_eip !55
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !55
  %78 = load i64, i64* %77, !mcsema_real_eip !55
  %79 = add i64 %76, 8, !mcsema_real_eip !55
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !55
  %81 = load i64, i64* %80, !mcsema_real_eip !55
  %82 = add i64 %79, 8, !mcsema_real_eip !55
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !55
  %84 = load i64, i64* %83, !mcsema_real_eip !55
  %85 = add i64 %82, 8, !mcsema_real_eip !55
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !55
  %87 = load i64, i64* %86, !mcsema_real_eip !55
  %88 = add i64 %85, 8, !mcsema_real_eip !55
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !55
  %90 = load i64, i64* %89, !mcsema_real_eip !55
  %91 = add i64 %88, 8, !mcsema_real_eip !55
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !55
  %93 = load i64, i64* %92, !mcsema_real_eip !55
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !55
  %94 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !55
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !55
  store i64 -2415393069852865332, i64* %95, !mcsema_real_eip !55
  store i64 %94, i64* %XSP, !mcsema_real_eip !55
  %96 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.88, i64 %RSI_val.89, i64 %RDX_val.90, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %66, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %87, i64 %90, i64 %93), !mcsema_real_eip !55
  store i64 %96, i64* %XAX, !mcsema_real_eip !55
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !56
  %97 = add i64 %RBP_val.96, -8, !mcsema_real_eip !56
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !56
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !56
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !56
  %101 = load i32, i32* %100, !mcsema_real_eip !56
  %102 = zext i32 %101 to i64, !mcsema_real_eip !56
  store i64 %102, i64* %XCX, !mcsema_real_eip !56
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !57
  %103 = add i64 %RBP_val.97, -20, !mcsema_real_eip !57
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !57
  %EAX.98 = bitcast i64* %XAX to i32*, !mcsema_real_eip !57
  %EAX_val.99 = load i32, i32* %EAX.98, !mcsema_real_eip !57
  %105 = ptrtoint i64* %104 to i64, !mcsema_real_eip !57
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !57
  store i32 %EAX_val.99, i32* %106, !mcsema_real_eip !57
  %ECX.100 = bitcast i64* %XCX to i32*, !mcsema_real_eip !58
  %ECX_val.101 = load i32, i32* %ECX.100, !mcsema_real_eip !58
  %107 = zext i32 %ECX_val.101 to i64, !mcsema_real_eip !58
  store i64 %107, i64* %XAX, !mcsema_real_eip !58
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !59
  %108 = add i64 48, %RSP_val.102, !mcsema_real_eip !59
  %109 = xor i64 %108, %RSP_val.102, !mcsema_real_eip !59
  %110 = xor i64 %109, 48, !mcsema_real_eip !59
  %111 = and i64 %110, 16, !mcsema_real_eip !59
  %112 = icmp ne i64 %111, 0, !mcsema_real_eip !59
  store i1 %112, i1* %AF, !mcsema_real_eip !59
  %113 = lshr i64 %108, 63, !mcsema_real_eip !59
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !59
  store i1 %114, i1* %SF, !mcsema_real_eip !59
  %115 = icmp eq i64 %108, 0, !mcsema_real_eip !59
  store i1 %115, i1* %ZF, !mcsema_real_eip !59
  %116 = xor i64 %RSP_val.102, 48, !mcsema_real_eip !59
  %117 = xor i64 %116, -1, !mcsema_real_eip !59
  %118 = xor i64 %RSP_val.102, %108, !mcsema_real_eip !59
  %119 = and i64 %117, %118, !mcsema_real_eip !59
  %120 = lshr i64 %119, 63, !mcsema_real_eip !59
  %121 = and i64 %120, 1, !mcsema_real_eip !59
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !59
  store i1 %122, i1* %OF, !mcsema_real_eip !59
  %123 = trunc i64 %108 to i8, !mcsema_real_eip !59
  %124 = call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !59
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !59
  %126 = xor i1 %125, true, !mcsema_real_eip !59
  store i1 %126, i1* %PF, !mcsema_real_eip !59
  %127 = icmp ult i64 %108, %RSP_val.102, !mcsema_real_eip !59
  store i1 %127, i1* %CF, !mcsema_real_eip !59
  store i64 %108, i64* %XSP, !mcsema_real_eip !59
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !60
  %128 = inttoptr i64 %RSP_val.103 to i64*, !mcsema_real_eip !60
  %129 = load i64, i64* %128, !mcsema_real_eip !60
  store i64 %129, i64* %XBP, !mcsema_real_eip !60
  %130 = add i64 %RSP_val.103, 8, !mcsema_real_eip !60
  store i64 %130, i64* %XSP, !mcsema_real_eip !60
  %RSP_val.104 = load i64, i64* %XSP, !mcsema_real_eip !61
  %131 = add i64 %RSP_val.104, 8, !mcsema_real_eip !61
  %132 = inttoptr i64 %RSP_val.104 to i64*, !mcsema_real_eip !61
  %133 = load i64, i64* %132, !mcsema_real_eip !61
  store i64 %133, i64* %XIP, !mcsema_real_eip !61
  store i64 %131, i64* %XSP, !mcsema_real_eip !61
  ret void, !mcsema_real_eip !61
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!5 = !{i64 7}
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 38}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 47}
!18 = !{i64 50}
!19 = !{i64 53}
!20 = !{i64 56}
!21 = !{i64 59}
!22 = !{i64 62}
!23 = !{i64 66}
!24 = !{i64 72}
!25 = !{i64 75}
!26 = !{i64 78}
!27 = !{i64 81}
!28 = !{i64 86}
!29 = !{i64 89}
!30 = !{i64 92}
!31 = !{i64 95}
!32 = !{i64 98}
!33 = !{i64 99}
!34 = !{i64 112}
!35 = !{i64 113}
!36 = !{i64 116}
!37 = !{i64 120}
!38 = !{i64 125}
!39 = !{i64 130}
!40 = !{i64 135}
!41 = !{i64 140}
!42 = !{i64 146}
!43 = !{i64 152}
!44 = !{i64 157}
!45 = !{i64 163}
!46 = !{i64 170}
!47 = !{i64 177}
!48 = !{i64 185}
!49 = !{i64 189}
!50 = !{i64 192}
!51 = !{i64 197}
!52 = !{i64 207}
!53 = !{i64 210}
!54 = !{i64 213}
!55 = !{i64 215}
!56 = !{i64 220}
!57 = !{i64 223}
!58 = !{i64 226}
!59 = !{i64 228}
!60 = !{i64 232}
!61 = !{i64 233}
