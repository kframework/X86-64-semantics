; ModuleID = 'Output/test_4.clang.bc'
source_filename = "Output/test_4.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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

%0 = type <{ [88 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0x278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x280 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"x\01\00\00\00A\0E\10\86\02C\0D\06P\83\07\8C\06\8D\05\8E\04\8F\03" }>, align 64

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
  %R15_val.92 = load i64, i64* %R15, !mcsema_real_eip !49
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !49
  %3 = sub i64 %RSP_val.93, 8, !mcsema_real_eip !49
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !49
  store i64 %R15_val.92, i64* %4, !mcsema_real_eip !49
  store i64 %3, i64* %XSP, !mcsema_real_eip !49
  %R14_val.94 = load i64, i64* %R14, !mcsema_real_eip !50
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !50
  %5 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !50
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !50
  store i64 %R14_val.94, i64* %6, !mcsema_real_eip !50
  store i64 %5, i64* %XSP, !mcsema_real_eip !50
  %R13_val.96 = load i64, i64* %R13, !mcsema_real_eip !51
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !51
  %7 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !51
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !51
  store i64 %R13_val.96, i64* %8, !mcsema_real_eip !51
  store i64 %7, i64* %XSP, !mcsema_real_eip !51
  %R12_val.98 = load i64, i64* %R12, !mcsema_real_eip !52
  %RSP_val.99 = load i64, i64* %XSP, !mcsema_real_eip !52
  %9 = sub i64 %RSP_val.99, 8, !mcsema_real_eip !52
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !52
  store i64 %R12_val.98, i64* %10, !mcsema_real_eip !52
  store i64 %9, i64* %XSP, !mcsema_real_eip !52
  %RBX_val.100 = load i64, i64* %XBX, !mcsema_real_eip !53
  %RSP_val.101 = load i64, i64* %XSP, !mcsema_real_eip !53
  %11 = sub i64 %RSP_val.101, 8, !mcsema_real_eip !53
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !53
  store i64 %RBX_val.100, i64* %12, !mcsema_real_eip !53
  store i64 %11, i64* %XSP, !mcsema_real_eip !53
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !54
  %13 = sub i64 %RSP_val.102, 216, !mcsema_real_eip !54
  %14 = xor i64 %13, %RSP_val.102, !mcsema_real_eip !54
  %15 = xor i64 %14, 216, !mcsema_real_eip !54
  %16 = and i64 %15, 16, !mcsema_real_eip !54
  %17 = icmp ne i64 %16, 0, !mcsema_real_eip !54
  store i1 %17, i1* %AF, !mcsema_real_eip !54
  %18 = trunc i64 %13 to i8, !mcsema_real_eip !54
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !54
  %20 = trunc i8 %19 to i1, !mcsema_real_eip !54
  %21 = xor i1 %20, true, !mcsema_real_eip !54
  store i1 %21, i1* %PF, !mcsema_real_eip !54
  %22 = icmp eq i64 %13, 0, !mcsema_real_eip !54
  store i1 %22, i1* %ZF, !mcsema_real_eip !54
  %23 = lshr i64 %13, 63, !mcsema_real_eip !54
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !54
  store i1 %24, i1* %SF, !mcsema_real_eip !54
  %25 = icmp ult i64 %RSP_val.102, 216, !mcsema_real_eip !54
  store i1 %25, i1* %CF, !mcsema_real_eip !54
  %26 = xor i64 %RSP_val.102, 216, !mcsema_real_eip !54
  %27 = xor i64 %RSP_val.102, %13, !mcsema_real_eip !54
  %28 = and i64 %26, %27, !mcsema_real_eip !54
  %29 = lshr i64 %28, 63, !mcsema_real_eip !54
  %30 = trunc i64 %29 to i1, !mcsema_real_eip !54
  store i1 %30, i1* %OF, !mcsema_real_eip !54
  store i64 %13, i64* %XSP, !mcsema_real_eip !54
  %31 = zext i32 100 to i64, !mcsema_real_eip !55
  store i64 %31, i64* %XAX, !mcsema_real_eip !55
  %32 = zext i32 200 to i64, !mcsema_real_eip !56
  store i64 %32, i64* %XCX, !mcsema_real_eip !56
  %33 = zext i32 300 to i64, !mcsema_real_eip !57
  store i64 %33, i64* %XDX, !mcsema_real_eip !57
  %34 = zext i32 400 to i64, !mcsema_real_eip !58
  store i64 %34, i64* %R8, !mcsema_real_eip !58
  %35 = zext i32 500 to i64, !mcsema_real_eip !59
  store i64 %35, i64* %R9, !mcsema_real_eip !59
  %36 = zext i32 600 to i64, !mcsema_real_eip !60
  store i64 %36, i64* %R10, !mcsema_real_eip !60
  %37 = zext i32 10 to i64, !mcsema_real_eip !61
  store i64 %37, i64* %R11, !mcsema_real_eip !61
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !62
  %38 = add i64 %RBP_val.103, -144, !mcsema_real_eip !62
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !62
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !62
  store i64 %40, i64* %XBX, !mcsema_real_eip !62
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !63
  %41 = add i64 %RBP_val.104, -96, !mcsema_real_eip !63
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !63
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !63
  store i64 %43, i64* %R14, !mcsema_real_eip !63
  %44 = getelementptr %0, %0* @data_0x220, i64 0, i32 0, !mcsema_real_eip !64
  %45 = ptrtoint [88 x i8]* %44 to i64, !mcsema_real_eip !64
  %46 = add i64 %45, 48, !mcsema_real_eip !64
  store i64 %46, i64* %R15, !mcsema_real_eip !64
  %47 = zext i32 40 to i64, !mcsema_real_eip !65
  store i64 %47, i64* %R12, !mcsema_real_eip !65
  %R12D.105 = bitcast i64* %R12 to i32*, !mcsema_real_eip !66
  %R12D_val.106 = load i32, i32* %R12D.105, !mcsema_real_eip !66
  %48 = zext i32 %R12D_val.106 to i64, !mcsema_real_eip !66
  store i64 %48, i64* %R13, !mcsema_real_eip !66
  %49 = getelementptr %0, %0* @data_0x220, i64 0, i32 0, !mcsema_real_eip !67
  %50 = ptrtoint [88 x i8]* %49 to i64, !mcsema_real_eip !67
  %51 = add i64 %50, 0, !mcsema_real_eip !67
  store i64 %51, i64* %R12, !mcsema_real_eip !67
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !68
  %52 = add i64 %RBP_val.107, -44, !mcsema_real_eip !68
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !68
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !68
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !68
  store i32 0, i32* %55, !mcsema_real_eip !68
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !69
  %56 = add i64 %RBP_val.108, -48, !mcsema_real_eip !69
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !69
  %EDI.109 = bitcast i64* %XDI to i32*, !mcsema_real_eip !69
  %EDI_val.110 = load i32, i32* %EDI.109, !mcsema_real_eip !69
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !69
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !69
  store i32 %EDI_val.110, i32* %59, !mcsema_real_eip !69
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !70
  %60 = add i64 %RBP_val.111, -56, !mcsema_real_eip !70
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !70
  %RSI_val.112 = load i64, i64* %XSI, !mcsema_real_eip !70
  store i64 %RSI_val.112, i64* %61, !mcsema_real_eip !70
  %R14_val.113 = load i64, i64* %R14, !mcsema_real_eip !71
  store i64 %R14_val.113, i64* %XSI, !mcsema_real_eip !71
  %RSI_val.114 = load i64, i64* %XSI, !mcsema_real_eip !72
  store i64 %RSI_val.114, i64* %XDI, !mcsema_real_eip !72
  %R12_val.115 = load i64, i64* %R12, !mcsema_real_eip !73
  store i64 %R12_val.115, i64* %XSI, !mcsema_real_eip !73
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !74
  %62 = add i64 %RBP_val.116, -152, !mcsema_real_eip !74
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !74
  %EDX.117 = bitcast i64* %XDX to i32*, !mcsema_real_eip !74
  %EDX_val.118 = load i32, i32* %EDX.117, !mcsema_real_eip !74
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !74
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !74
  store i32 %EDX_val.118, i32* %65, !mcsema_real_eip !74
  %R13_val.119 = load i64, i64* %R13, !mcsema_real_eip !75
  store i64 %R13_val.119, i64* %XDX, !mcsema_real_eip !75
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !76
  %66 = add i64 %RBP_val.120, -160, !mcsema_real_eip !76
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !76
  %R15_val.121 = load i64, i64* %R15, !mcsema_real_eip !76
  store i64 %R15_val.121, i64* %67, !mcsema_real_eip !76
  %RBP_val.122 = load i64, i64* %XBP, !mcsema_real_eip !77
  %68 = add i64 %RBP_val.122, -168, !mcsema_real_eip !77
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !77
  %R13_val.123 = load i64, i64* %R13, !mcsema_real_eip !77
  store i64 %R13_val.123, i64* %69, !mcsema_real_eip !77
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !78
  %70 = add i64 %RBP_val.124, -172, !mcsema_real_eip !78
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !78
  %EAX.125 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.126 = load i32, i32* %EAX.125, !mcsema_real_eip !78
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !78
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !78
  store i32 %EAX_val.126, i32* %73, !mcsema_real_eip !78
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !79
  %74 = add i64 %RBP_val.127, -176, !mcsema_real_eip !79
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !79
  %ECX.128 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.129 = load i32, i32* %ECX.128, !mcsema_real_eip !79
  %76 = ptrtoint i64* %75 to i64, !mcsema_real_eip !79
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !79
  store i32 %ECX_val.129, i32* %77, !mcsema_real_eip !79
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !80
  %78 = add i64 %RBP_val.130, -184, !mcsema_real_eip !80
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !80
  %R14_val.131 = load i64, i64* %R14, !mcsema_real_eip !80
  store i64 %R14_val.131, i64* %79, !mcsema_real_eip !80
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !81
  %80 = add i64 %RBP_val.132, -188, !mcsema_real_eip !81
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !81
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !81
  %R8D_val.134 = load i32, i32* %R8D.133, !mcsema_real_eip !81
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !81
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !81
  store i32 %R8D_val.134, i32* %83, !mcsema_real_eip !81
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !82
  %84 = add i64 %RBP_val.135, -192, !mcsema_real_eip !82
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !82
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !82
  %R9D_val.137 = load i32, i32* %R9D.136, !mcsema_real_eip !82
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !82
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !82
  store i32 %R9D_val.137, i32* %87, !mcsema_real_eip !82
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !83
  %88 = add i64 %RBP_val.138, -196, !mcsema_real_eip !83
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !83
  %R10D.139 = bitcast i64* %R10 to i32*, !mcsema_real_eip !83
  %R10D_val.140 = load i32, i32* %R10D.139, !mcsema_real_eip !83
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !83
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !83
  store i32 %R10D_val.140, i32* %91, !mcsema_real_eip !83
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !84
  %92 = add i64 %RBP_val.141, -200, !mcsema_real_eip !84
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !84
  %R11D.142 = bitcast i64* %R11 to i32*, !mcsema_real_eip !84
  %R11D_val.143 = load i32, i32* %R11D.142, !mcsema_real_eip !84
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !84
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !84
  store i32 %R11D_val.143, i32* %95, !mcsema_real_eip !84
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !85
  %96 = add i64 %RBP_val.144, -208, !mcsema_real_eip !85
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !85
  %RBX_val.145 = load i64, i64* %XBX, !mcsema_real_eip !85
  store i64 %RBX_val.145, i64* %97, !mcsema_real_eip !85
  %RDI_val.146 = load i64, i64* %XDI, !mcsema_real_eip !86
  %RSI_val.147 = load i64, i64* %XSI, !mcsema_real_eip !86
  %RDX_val.148 = load i64, i64* %XDX, !mcsema_real_eip !86
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !86
  %98 = sub i64 %RSP_val.149, 8, !mcsema_real_eip !86
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !86
  store i64 -2415393069852865332, i64* %99, !mcsema_real_eip !86
  store i64 %98, i64* %XSP, !mcsema_real_eip !86
  %100 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.146, i64 %RSI_val.147, i64 %RDX_val.148), !mcsema_real_eip !86
  store i64 %100, i64* %XAX, !mcsema_real_eip !86
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !87
  %101 = add i64 %RBP_val.150, -208, !mcsema_real_eip !87
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !87
  %103 = load i64, i64* %102, !mcsema_real_eip !87
  store i64 %103, i64* %XDX, !mcsema_real_eip !87
  %RDX_val.151 = load i64, i64* %XDX, !mcsema_real_eip !88
  store i64 %RDX_val.151, i64* %XDI, !mcsema_real_eip !88
  %RBP_val.152 = load i64, i64* %XBP, !mcsema_real_eip !89
  %104 = add i64 %RBP_val.152, -160, !mcsema_real_eip !89
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !89
  %106 = load i64, i64* %105, !mcsema_real_eip !89
  store i64 %106, i64* %XSI, !mcsema_real_eip !89
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !90
  %107 = add i64 %RBP_val.153, -168, !mcsema_real_eip !90
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !90
  %109 = load i64, i64* %108, !mcsema_real_eip !90
  store i64 %109, i64* %XDX, !mcsema_real_eip !90
  %RDI_val.154 = load i64, i64* %XDI, !mcsema_real_eip !91
  %RSI_val.155 = load i64, i64* %XSI, !mcsema_real_eip !91
  %RDX_val.156 = load i64, i64* %XDX, !mcsema_real_eip !91
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !91
  %110 = sub i64 %RSP_val.157, 8, !mcsema_real_eip !91
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !91
  store i64 -2415393069852865332, i64* %111, !mcsema_real_eip !91
  store i64 %110, i64* %XSP, !mcsema_real_eip !91
  %112 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.154, i64 %RSI_val.155, i64 %RDX_val.156), !mcsema_real_eip !91
  store i64 %112, i64* %XAX, !mcsema_real_eip !91
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !92
  %113 = add i64 %RBP_val.158, -172, !mcsema_real_eip !92
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !92
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !92
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !92
  %117 = load i32, i32* %116, !mcsema_real_eip !92
  %118 = zext i32 %117 to i64, !mcsema_real_eip !92
  store i64 %118, i64* %XDI, !mcsema_real_eip !92
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !93
  %119 = add i64 %RBP_val.159, -176, !mcsema_real_eip !93
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !93
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !93
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !93
  %123 = load i32, i32* %122, !mcsema_real_eip !93
  %124 = zext i32 %123 to i64, !mcsema_real_eip !93
  store i64 %124, i64* %XSI, !mcsema_real_eip !93
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !94
  %125 = add i64 %RBP_val.160, -152, !mcsema_real_eip !94
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !94
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !94
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !94
  %129 = load i32, i32* %128, !mcsema_real_eip !94
  %130 = zext i32 %129 to i64, !mcsema_real_eip !94
  store i64 %130, i64* %XDX, !mcsema_real_eip !94
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !95
  %131 = add i64 %RBP_val.161, -188, !mcsema_real_eip !95
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !95
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !95
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !95
  %135 = load i32, i32* %134, !mcsema_real_eip !95
  %136 = zext i32 %135 to i64, !mcsema_real_eip !95
  store i64 %136, i64* %XCX, !mcsema_real_eip !95
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !96
  %137 = add i64 %RBP_val.162, -192, !mcsema_real_eip !96
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !96
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !96
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !96
  %141 = load i32, i32* %140, !mcsema_real_eip !96
  %142 = zext i32 %141 to i64, !mcsema_real_eip !96
  store i64 %142, i64* %R8, !mcsema_real_eip !96
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !97
  %143 = add i64 %RBP_val.163, -196, !mcsema_real_eip !97
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !97
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !97
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !97
  %147 = load i32, i32* %146, !mcsema_real_eip !97
  %148 = zext i32 %147 to i64, !mcsema_real_eip !97
  store i64 %148, i64* %R9, !mcsema_real_eip !97
  %RSP_val.164 = load i64, i64* %XSP, !mcsema_real_eip !98
  %149 = add i64 %RSP_val.164, 0, !mcsema_real_eip !98
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !98
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !98
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !98
  store i32 10, i32* %152, !mcsema_real_eip !98
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !99
  %153 = add i64 %RBP_val.165, -184, !mcsema_real_eip !99
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !99
  %155 = load i64, i64* %154, !mcsema_real_eip !99
  store i64 %155, i64* %XBX, !mcsema_real_eip !99
  %RSP_val.166 = load i64, i64* %XSP, !mcsema_real_eip !100
  %156 = add i64 %RSP_val.166, 8, !mcsema_real_eip !100
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !100
  %RBX_val.167 = load i64, i64* %XBX, !mcsema_real_eip !100
  store i64 %RBX_val.167, i64* %157, !mcsema_real_eip !100
  %RSP_val.168 = load i64, i64* %XSP, !mcsema_real_eip !101
  %158 = add i64 %RSP_val.168, 16, !mcsema_real_eip !101
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !101
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !101
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !101
  store i32 10, i32* %161, !mcsema_real_eip !101
  %RBP_val.169 = load i64, i64* %XBP, !mcsema_real_eip !102
  %162 = add i64 %RBP_val.169, -208, !mcsema_real_eip !102
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !102
  %164 = load i64, i64* %163, !mcsema_real_eip !102
  store i64 %164, i64* %R14, !mcsema_real_eip !102
  %RSP_val.170 = load i64, i64* %XSP, !mcsema_real_eip !103
  %165 = add i64 %RSP_val.170, 24, !mcsema_real_eip !103
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !103
  %R14_val.171 = load i64, i64* %R14, !mcsema_real_eip !103
  store i64 %R14_val.171, i64* %166, !mcsema_real_eip !103
  %RSP_val.172 = load i64, i64* %XSP, !mcsema_real_eip !104
  %167 = sub i64 %RSP_val.172, 8, !mcsema_real_eip !104
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !104
  store i64 -4981261766360305936, i64* %168, !mcsema_real_eip !104
  store i64 %167, i64* %XSP, !mcsema_real_eip !104
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !104
  %169 = getelementptr %1, %1* @data_0x278, i64 0, i32 0, !mcsema_real_eip !105
  %170 = ptrtoint [4 x i8]* %169 to i64, !mcsema_real_eip !105
  %171 = add i64 %170, 0, !mcsema_real_eip !105
  store i64 %171, i64* %XDI, !mcsema_real_eip !105
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !106
  %172 = add i64 %RBP_val.173, -148, !mcsema_real_eip !106
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !106
  %EAX.174 = bitcast i64* %XAX to i32*, !mcsema_real_eip !106
  %EAX_val.175 = load i32, i32* %EAX.174, !mcsema_real_eip !106
  %174 = ptrtoint i64* %173 to i64, !mcsema_real_eip !106
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !106
  store i32 %EAX_val.175, i32* %175, !mcsema_real_eip !106
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !107
  %176 = add i64 %RBP_val.176, -148, !mcsema_real_eip !107
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !107
  %178 = ptrtoint i64* %177 to i64, !mcsema_real_eip !107
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !107
  %180 = load i32, i32* %179, !mcsema_real_eip !107
  %181 = zext i32 %180 to i64, !mcsema_real_eip !107
  store i64 %181, i64* %XSI, !mcsema_real_eip !107
  %AL.177 = bitcast i64* %XAX to i8*, !mcsema_real_eip !108
  store i8 0, i8* %AL.177, !mcsema_real_eip !108
  %RDI_val.178 = load i64, i64* %XDI, !mcsema_real_eip !109
  %RSI_val.179 = load i64, i64* %XSI, !mcsema_real_eip !109
  %RDX_val.180 = load i64, i64* %XDX, !mcsema_real_eip !109
  %RCX_val.181 = load i64, i64* %XCX, !mcsema_real_eip !109
  %R8_val.182 = load i64, i64* %R8, !mcsema_real_eip !109
  %R9_val.183 = load i64, i64* %R9, !mcsema_real_eip !109
  %RSP_val.184 = load i64, i64* %XSP, !mcsema_real_eip !109
  %182 = inttoptr i64 %RSP_val.184 to i64*, !mcsema_real_eip !109
  %183 = load i64, i64* %182, !mcsema_real_eip !109
  %184 = add i64 %RSP_val.184, 8, !mcsema_real_eip !109
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !109
  %186 = load i64, i64* %185, !mcsema_real_eip !109
  %187 = add i64 %184, 8, !mcsema_real_eip !109
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !109
  %189 = load i64, i64* %188, !mcsema_real_eip !109
  %190 = add i64 %187, 8, !mcsema_real_eip !109
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !109
  %192 = load i64, i64* %191, !mcsema_real_eip !109
  %193 = add i64 %190, 8, !mcsema_real_eip !109
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !109
  %195 = load i64, i64* %194, !mcsema_real_eip !109
  %196 = add i64 %193, 8, !mcsema_real_eip !109
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !109
  %198 = load i64, i64* %197, !mcsema_real_eip !109
  %199 = add i64 %196, 8, !mcsema_real_eip !109
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !109
  %201 = load i64, i64* %200, !mcsema_real_eip !109
  %202 = add i64 %199, 8, !mcsema_real_eip !109
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !109
  %204 = load i64, i64* %203, !mcsema_real_eip !109
  %205 = add i64 %202, 8, !mcsema_real_eip !109
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !109
  %207 = load i64, i64* %206, !mcsema_real_eip !109
  %208 = add i64 %205, 8, !mcsema_real_eip !109
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !109
  %210 = load i64, i64* %209, !mcsema_real_eip !109
  %RSP_val.185 = load i64, i64* %XSP, !mcsema_real_eip !109
  %211 = sub i64 %RSP_val.185, 8, !mcsema_real_eip !109
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !109
  store i64 -2415393069852865332, i64* %212, !mcsema_real_eip !109
  store i64 %211, i64* %XSP, !mcsema_real_eip !109
  %213 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.178, i64 %RSI_val.179, i64 %RDX_val.180, i64 %RCX_val.181, i64 %R8_val.182, i64 %R9_val.183, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198, i64 %201, i64 %204, i64 %207, i64 %210), !mcsema_real_eip !109
  store i64 %213, i64* %XAX, !mcsema_real_eip !109
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !110
  %214 = add i64 %RBP_val.186, -148, !mcsema_real_eip !110
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !110
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !110
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !110
  %218 = load i32, i32* %217, !mcsema_real_eip !110
  %219 = zext i32 %218 to i64, !mcsema_real_eip !110
  store i64 %219, i64* %XCX, !mcsema_real_eip !110
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !111
  %220 = add i64 %RBP_val.187, -212, !mcsema_real_eip !111
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !111
  %EAX.188 = bitcast i64* %XAX to i32*, !mcsema_real_eip !111
  %EAX_val.189 = load i32, i32* %EAX.188, !mcsema_real_eip !111
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !111
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !111
  store i32 %EAX_val.189, i32* %223, !mcsema_real_eip !111
  %ECX.190 = bitcast i64* %XCX to i32*, !mcsema_real_eip !112
  %ECX_val.191 = load i32, i32* %ECX.190, !mcsema_real_eip !112
  %224 = zext i32 %ECX_val.191 to i64, !mcsema_real_eip !112
  store i64 %224, i64* %XAX, !mcsema_real_eip !112
  %RSP_val.192 = load i64, i64* %XSP, !mcsema_real_eip !113
  %225 = add i64 216, %RSP_val.192, !mcsema_real_eip !113
  %226 = xor i64 %225, %RSP_val.192, !mcsema_real_eip !113
  %227 = xor i64 %226, 216, !mcsema_real_eip !113
  %228 = and i64 %227, 16, !mcsema_real_eip !113
  %229 = icmp ne i64 %228, 0, !mcsema_real_eip !113
  store i1 %229, i1* %AF, !mcsema_real_eip !113
  %230 = lshr i64 %225, 63, !mcsema_real_eip !113
  %231 = trunc i64 %230 to i1, !mcsema_real_eip !113
  store i1 %231, i1* %SF, !mcsema_real_eip !113
  %232 = icmp eq i64 %225, 0, !mcsema_real_eip !113
  store i1 %232, i1* %ZF, !mcsema_real_eip !113
  %233 = xor i64 %RSP_val.192, 216, !mcsema_real_eip !113
  %234 = xor i64 %233, -1, !mcsema_real_eip !113
  %235 = xor i64 %RSP_val.192, %225, !mcsema_real_eip !113
  %236 = and i64 %234, %235, !mcsema_real_eip !113
  %237 = lshr i64 %236, 63, !mcsema_real_eip !113
  %238 = and i64 %237, 1, !mcsema_real_eip !113
  %239 = trunc i64 %238 to i1, !mcsema_real_eip !113
  store i1 %239, i1* %OF, !mcsema_real_eip !113
  %240 = trunc i64 %225 to i8, !mcsema_real_eip !113
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !113
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !113
  %243 = xor i1 %242, true, !mcsema_real_eip !113
  store i1 %243, i1* %PF, !mcsema_real_eip !113
  %244 = icmp ult i64 %225, %RSP_val.192, !mcsema_real_eip !113
  store i1 %244, i1* %CF, !mcsema_real_eip !113
  store i64 %225, i64* %XSP, !mcsema_real_eip !113
  %RSP_val.193 = load i64, i64* %XSP, !mcsema_real_eip !114
  %245 = inttoptr i64 %RSP_val.193 to i64*, !mcsema_real_eip !114
  %246 = load i64, i64* %245, !mcsema_real_eip !114
  store i64 %246, i64* %XBX, !mcsema_real_eip !114
  %247 = add i64 %RSP_val.193, 8, !mcsema_real_eip !114
  store i64 %247, i64* %XSP, !mcsema_real_eip !114
  %RSP_val.194 = load i64, i64* %XSP, !mcsema_real_eip !115
  %248 = inttoptr i64 %RSP_val.194 to i64*, !mcsema_real_eip !115
  %249 = load i64, i64* %248, !mcsema_real_eip !115
  store i64 %249, i64* %R12, !mcsema_real_eip !115
  %250 = add i64 %RSP_val.194, 8, !mcsema_real_eip !115
  store i64 %250, i64* %XSP, !mcsema_real_eip !115
  %RSP_val.195 = load i64, i64* %XSP, !mcsema_real_eip !116
  %251 = inttoptr i64 %RSP_val.195 to i64*, !mcsema_real_eip !116
  %252 = load i64, i64* %251, !mcsema_real_eip !116
  store i64 %252, i64* %R13, !mcsema_real_eip !116
  %253 = add i64 %RSP_val.195, 8, !mcsema_real_eip !116
  store i64 %253, i64* %XSP, !mcsema_real_eip !116
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !117
  %254 = inttoptr i64 %RSP_val.196 to i64*, !mcsema_real_eip !117
  %255 = load i64, i64* %254, !mcsema_real_eip !117
  store i64 %255, i64* %R14, !mcsema_real_eip !117
  %256 = add i64 %RSP_val.196, 8, !mcsema_real_eip !117
  store i64 %256, i64* %XSP, !mcsema_real_eip !117
  %RSP_val.197 = load i64, i64* %XSP, !mcsema_real_eip !118
  %257 = inttoptr i64 %RSP_val.197 to i64*, !mcsema_real_eip !118
  %258 = load i64, i64* %257, !mcsema_real_eip !118
  store i64 %258, i64* %R15, !mcsema_real_eip !118
  %259 = add i64 %RSP_val.197, 8, !mcsema_real_eip !118
  store i64 %259, i64* %XSP, !mcsema_real_eip !118
  %RSP_val.198 = load i64, i64* %XSP, !mcsema_real_eip !119
  %260 = inttoptr i64 %RSP_val.198 to i64*, !mcsema_real_eip !119
  %261 = load i64, i64* %260, !mcsema_real_eip !119
  store i64 %261, i64* %XBP, !mcsema_real_eip !119
  %262 = add i64 %RSP_val.198, 8, !mcsema_real_eip !119
  store i64 %262, i64* %XSP, !mcsema_real_eip !119
  %RSP_val.199 = load i64, i64* %XSP, !mcsema_real_eip !120
  %263 = add i64 %RSP_val.199, 8, !mcsema_real_eip !120
  %264 = inttoptr i64 %RSP_val.199 to i64*, !mcsema_real_eip !120
  %265 = load i64, i64* %264, !mcsema_real_eip !120
  store i64 %265, i64* %XIP, !mcsema_real_eip !120
  store i64 %263, i64* %XSP, !mcsema_real_eip !120
  ret void, !mcsema_real_eip !120
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!50 = !{i64 166}
!51 = !{i64 168}
!52 = !{i64 170}
!53 = !{i64 172}
!54 = !{i64 173}
!55 = !{i64 180}
!56 = !{i64 185}
!57 = !{i64 190}
!58 = !{i64 195}
!59 = !{i64 201}
!60 = !{i64 207}
!61 = !{i64 213}
!62 = !{i64 219}
!63 = !{i64 226}
!64 = !{i64 230}
!65 = !{i64 240}
!66 = !{i64 246}
!67 = !{i64 249}
!68 = !{i64 259}
!69 = !{i64 266}
!70 = !{i64 269}
!71 = !{i64 273}
!72 = !{i64 276}
!73 = !{i64 279}
!74 = !{i64 282}
!75 = !{i64 288}
!76 = !{i64 291}
!77 = !{i64 298}
!78 = !{i64 305}
!79 = !{i64 311}
!80 = !{i64 317}
!81 = !{i64 324}
!82 = !{i64 331}
!83 = !{i64 338}
!84 = !{i64 345}
!85 = !{i64 352}
!86 = !{i64 359}
!87 = !{i64 364}
!88 = !{i64 371}
!89 = !{i64 374}
!90 = !{i64 381}
!91 = !{i64 388}
!92 = !{i64 393}
!93 = !{i64 399}
!94 = !{i64 405}
!95 = !{i64 411}
!96 = !{i64 417}
!97 = !{i64 424}
!98 = !{i64 431}
!99 = !{i64 438}
!100 = !{i64 445}
!101 = !{i64 450}
!102 = !{i64 458}
!103 = !{i64 465}
!104 = !{i64 470}
!105 = !{i64 475}
!106 = !{i64 485}
!107 = !{i64 491}
!108 = !{i64 497}
!109 = !{i64 499}
!110 = !{i64 504}
!111 = !{i64 510}
!112 = !{i64 516}
!113 = !{i64 518}
!114 = !{i64 525}
!115 = !{i64 526}
!116 = !{i64 528}
!117 = !{i64 530}
!118 = !{i64 532}
!119 = !{i64 534}
!120 = !{i64 535}
