; ModuleID = 'Output/test_33.clang.trans.bc'
source_filename = "Output/test_33.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64
@data_0x110 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"y\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\80\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
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
  br label %block_0x80, !mcsema_real_eip !2

block_0x80:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 32, !mcsema_real_eip !4
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
  %31 = add i64 %RBP_val.10, -8, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !8
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !8
  %35 = load i32, i32* %34, !mcsema_real_eip !8
  %36 = sub i32 %35, 2, !mcsema_real_eip !8
  %37 = xor i32 %36, %35, !mcsema_real_eip !8
  %38 = xor i32 %37, 2, !mcsema_real_eip !8
  %39 = and i32 %38, 16, !mcsema_real_eip !8
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !8
  store i1 %40, i1* %AF, !mcsema_real_eip !8
  %41 = trunc i32 %36 to i8, !mcsema_real_eip !8
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !8
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !8
  %44 = xor i1 %43, true, !mcsema_real_eip !8
  store i1 %44, i1* %PF, !mcsema_real_eip !8
  %45 = icmp eq i32 %36, 0, !mcsema_real_eip !8
  store i1 %45, i1* %ZF, !mcsema_real_eip !8
  %46 = lshr i32 %36, 31, !mcsema_real_eip !8
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !8
  store i1 %47, i1* %SF, !mcsema_real_eip !8
  %48 = icmp ult i32 %35, 2, !mcsema_real_eip !8
  store i1 %48, i1* %CF, !mcsema_real_eip !8
  %49 = xor i32 %35, 2, !mcsema_real_eip !8
  %50 = xor i32 %35, %36, !mcsema_real_eip !8
  %51 = and i32 %49, %50, !mcsema_real_eip !8
  %52 = lshr i32 %51, 31, !mcsema_real_eip !8
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !8
  store i1 %53, i1* %OF, !mcsema_real_eip !8
  %54 = load i1, i1* %ZF, !mcsema_real_eip !9
  %55 = icmp eq i1 %54, false, !mcsema_real_eip !9
  br i1 %55, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !9

block_0xa0:                                       ; preds = %block_0x80
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %56 = add i64 %RBP_val.14, -16, !mcsema_real_eip !10
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !10
  %58 = load i64, i64* %57, !mcsema_real_eip !10
  store i64 %58, i64* %XAX, !mcsema_real_eip !10
  %RAX_val.15 = load i64, i64* %XAX, !mcsema_real_eip !11
  %59 = add i64 %RAX_val.15, 8, !mcsema_real_eip !11
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !11
  %61 = load i64, i64* %60, !mcsema_real_eip !11
  store i64 %61, i64* %XDI, !mcsema_real_eip !11
  %RDI_val.16 = load i64, i64* %XDI, !mcsema_real_eip !12
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !12
  %62 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !12
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %63, !mcsema_real_eip !12
  store i64 %62, i64* %XSP, !mcsema_real_eip !12
  %64 = call x86_64_sysvcc i64 @_atoi(i64 %RDI_val.16), !mcsema_real_eip !12
  store i64 %64, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %65 = add i64 %RBP_val.18, -24, !mcsema_real_eip !13
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !13
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !13
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %68, !mcsema_real_eip !13
  br label %block_0xc2, !mcsema_real_eip !14

block_0xb5:                                       ; preds = %block_0x80
  store i64 8, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !16
  %69 = add i64 %RBP_val.11, -24, !mcsema_real_eip !16
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !16
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %72, !mcsema_real_eip !16
  br label %block_0xc2, !mcsema_real_eip !17

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !18
  %73 = add i64 %RBP_val.21, -24, !mcsema_real_eip !18
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !18
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !18
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !18
  %77 = load i32, i32* %76, !mcsema_real_eip !18
  %78 = zext i32 %77 to i64, !mcsema_real_eip !18
  store i64 %78, i64* %XAX, !mcsema_real_eip !18
  store i64 3, i64* %XDI, !mcsema_real_eip !19
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !20
  %79 = add i64 %RBP_val.22, -20, !mcsema_real_eip !20
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !20
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !20
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !20
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.24, i32* %82, !mcsema_real_eip !20
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !21
  %83 = add i64 %RBP_val.25, -20, !mcsema_real_eip !21
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !21
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !21
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !21
  %87 = load i32, i32* %86, !mcsema_real_eip !21
  %88 = zext i32 %87 to i64, !mcsema_real_eip !21
  store i64 %88, i64* %XSI, !mcsema_real_eip !21
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !22
  %89 = add i64 %RBP_val.26, -20, !mcsema_real_eip !22
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !22
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !22
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !22
  %93 = load i32, i32* %92, !mcsema_real_eip !22
  %94 = zext i32 %93 to i64, !mcsema_real_eip !22
  store i64 %94, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !23
  %95 = add i64 %RBP_val.27, -28, !mcsema_real_eip !23
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !23
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !23
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !23
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.29, i32* %98, !mcsema_real_eip !23
  %EAX.30 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.31 = load i32, i32* %EAX.30, !mcsema_real_eip !24
  %99 = zext i32 %EAX_val.31 to i64, !mcsema_real_eip !24
  store i64 %99, i64* %XSI, !mcsema_real_eip !24
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !25
  %100 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !25
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !25
  store i64 -4981261766360305936, i64* %101, !mcsema_real_eip !25
  store i64 %100, i64* %XSP, !mcsema_real_eip !25
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !25
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !26
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !27
  %102 = add i64 %RBP_val.33, -28, !mcsema_real_eip !27
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !27
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !27
  %106 = load i32, i32* %105, !mcsema_real_eip !27
  %107 = zext i32 %106 to i64, !mcsema_real_eip !27
  store i64 %107, i64* %XSI, !mcsema_real_eip !27
  %EAX.34 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.35 = load i32, i32* %EAX.34, !mcsema_real_eip !28
  %108 = zext i32 %EAX_val.35 to i64, !mcsema_real_eip !28
  store i64 %108, i64* %XDX, !mcsema_real_eip !28
  %AL.36 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.36, !mcsema_real_eip !29
  %RDI_val.37 = load i64, i64* %XDI, !mcsema_real_eip !30
  %RSI_val.38 = load i64, i64* %XSI, !mcsema_real_eip !30
  %RDX_val.39 = load i64, i64* %XDX, !mcsema_real_eip !30
  %RCX_val.40 = load i64, i64* %XCX, !mcsema_real_eip !30
  %R8_val.41 = load i64, i64* %R8, !mcsema_real_eip !30
  %R9_val.42 = load i64, i64* %R9, !mcsema_real_eip !30
  %RSP_val.43 = load i64, i64* %XSP, !mcsema_real_eip !30
  %109 = inttoptr i64 %RSP_val.43 to i64*, !mcsema_real_eip !30
  %110 = load i64, i64* %109, !mcsema_real_eip !30
  %111 = add i64 %RSP_val.43, 8, !mcsema_real_eip !30
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !30
  %113 = load i64, i64* %112, !mcsema_real_eip !30
  %114 = add i64 %111, 8, !mcsema_real_eip !30
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !30
  %116 = load i64, i64* %115, !mcsema_real_eip !30
  %117 = add i64 %114, 8, !mcsema_real_eip !30
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !30
  %119 = load i64, i64* %118, !mcsema_real_eip !30
  %120 = add i64 %117, 8, !mcsema_real_eip !30
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !30
  %122 = load i64, i64* %121, !mcsema_real_eip !30
  %123 = add i64 %120, 8, !mcsema_real_eip !30
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !30
  %125 = load i64, i64* %124, !mcsema_real_eip !30
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !30
  %126 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !30
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !30
  store i64 -2415393069852865332, i64* %127, !mcsema_real_eip !30
  store i64 %126, i64* %XSP, !mcsema_real_eip !30
  %128 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.37, i64 %RSI_val.38, i64 %RDX_val.39, i64 %RCX_val.40, i64 %R8_val.41, i64 %R9_val.42, i64 %110, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125), !mcsema_real_eip !30
  store i64 %128, i64* %XAX, !mcsema_real_eip !30
  %EDX.45 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.46 = load i32, i32* %EDX.45, !mcsema_real_eip !31
  %EDX.47 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.48 = load i32, i32* %EDX.47, !mcsema_real_eip !31
  %129 = xor i32 %EDX_val.46, %EDX_val.48, !mcsema_real_eip !31
  store i1 false, i1* %CF, !mcsema_real_eip !31
  store i1 false, i1* %OF, !mcsema_real_eip !31
  %130 = lshr i32 %129, 31, !mcsema_real_eip !31
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !31
  store i1 %131, i1* %SF, !mcsema_real_eip !31
  %132 = icmp eq i32 %129, 0, !mcsema_real_eip !31
  store i1 %132, i1* %ZF, !mcsema_real_eip !31
  %133 = trunc i32 %129 to i8, !mcsema_real_eip !31
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !31
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !31
  %136 = xor i1 %135, true, !mcsema_real_eip !31
  store i1 %136, i1* %PF, !mcsema_real_eip !31
  store i1 undef, i1* %AF, !mcsema_real_eip !31
  %137 = zext i32 %129 to i64, !mcsema_real_eip !31
  store i64 %137, i64* %XDX, !mcsema_real_eip !31
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !32
  %138 = add i64 %RBP_val.49, -32, !mcsema_real_eip !32
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !32
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !32
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !32
  %140 = ptrtoint i64* %139 to i64, !mcsema_real_eip !32
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !32
  store i32 %EAX_val.51, i32* %141, !mcsema_real_eip !32
  %EDX.52 = bitcast i64* %XDX to i32*, !mcsema_real_eip !33
  %EDX_val.53 = load i32, i32* %EDX.52, !mcsema_real_eip !33
  %142 = zext i32 %EDX_val.53 to i64, !mcsema_real_eip !33
  store i64 %142, i64* %XAX, !mcsema_real_eip !33
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !34
  %143 = add i64 32, %RSP_val.54, !mcsema_real_eip !34
  %144 = xor i64 %143, %RSP_val.54, !mcsema_real_eip !34
  %145 = xor i64 %144, 32, !mcsema_real_eip !34
  %146 = and i64 %145, 16, !mcsema_real_eip !34
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !34
  store i1 %147, i1* %AF, !mcsema_real_eip !34
  %148 = lshr i64 %143, 63, !mcsema_real_eip !34
  %149 = trunc i64 %148 to i1, !mcsema_real_eip !34
  store i1 %149, i1* %SF, !mcsema_real_eip !34
  %150 = icmp eq i64 %143, 0, !mcsema_real_eip !34
  store i1 %150, i1* %ZF, !mcsema_real_eip !34
  %151 = xor i64 %RSP_val.54, 32, !mcsema_real_eip !34
  %152 = xor i64 %151, -1, !mcsema_real_eip !34
  %153 = xor i64 %RSP_val.54, %143, !mcsema_real_eip !34
  %154 = and i64 %152, %153, !mcsema_real_eip !34
  %155 = lshr i64 %154, 63, !mcsema_real_eip !34
  %156 = and i64 %155, 1, !mcsema_real_eip !34
  %157 = trunc i64 %156 to i1, !mcsema_real_eip !34
  store i1 %157, i1* %OF, !mcsema_real_eip !34
  %158 = trunc i64 %143 to i8, !mcsema_real_eip !34
  %159 = call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !34
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !34
  %161 = xor i1 %160, true, !mcsema_real_eip !34
  store i1 %161, i1* %PF, !mcsema_real_eip !34
  %162 = icmp ult i64 %143, %RSP_val.54, !mcsema_real_eip !34
  store i1 %162, i1* %CF, !mcsema_real_eip !34
  store i64 %143, i64* %XSP, !mcsema_real_eip !34
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !35
  %163 = inttoptr i64 %RSP_val.55 to i64*, !mcsema_real_eip !35
  %164 = load i64, i64* %163, !mcsema_real_eip !35
  store i64 %164, i64* %XBP, !mcsema_real_eip !35
  %165 = add i64 %RSP_val.55, 8, !mcsema_real_eip !35
  store i64 %165, i64* %XSP, !mcsema_real_eip !35
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !36
  %166 = add i64 %RSP_val.56, 8, !mcsema_real_eip !36
  %167 = inttoptr i64 %RSP_val.56 to i64*, !mcsema_real_eip !36
  %168 = load i64, i64* %167, !mcsema_real_eip !36
  store i64 %168, i64* %XIP, !mcsema_real_eip !36
  store i64 %166, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !37
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !37
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !37
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !37
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !37
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !37
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !37
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !37
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !37
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !37
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !37
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !37
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !37
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !37
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !37
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !37
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !37
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !37
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !37
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !37
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !37
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !37
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !37
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !37
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !37
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !37
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !37
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !37
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !37
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !37
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !37
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !37
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !37
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !37
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !37
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !37
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !37
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !37
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !37
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !37
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !37
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !37
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !37
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !37
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !37
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !37
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !37
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !37
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !37
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !37
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !37
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !37
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !37
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !37
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !37
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !37
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !37
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !37
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !37
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !37
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !37
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !37
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !37
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !37
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !37
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !37
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !37
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !37
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !37
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !37
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !37
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !37
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !37
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !37
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !37
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !37
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !37
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !37
  br label %block_0x0, !mcsema_real_eip !37

block_0x0:                                        ; preds = %entry
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !37
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !37
  %1 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !37
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !37
  store i64 %RBP_val.57, i64* %2, !mcsema_real_eip !37
  store i64 %1, i64* %XSP, !mcsema_real_eip !37
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  store i64 %RSP_val.59, i64* %XBP, !mcsema_real_eip !38
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !39
  %3 = sub i64 %RSP_val.60, 16, !mcsema_real_eip !39
  %4 = xor i64 %3, %RSP_val.60, !mcsema_real_eip !39
  %5 = xor i64 %4, 16, !mcsema_real_eip !39
  %6 = and i64 %5, 16, !mcsema_real_eip !39
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !39
  store i1 %7, i1* %AF, !mcsema_real_eip !39
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !39
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !39
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !39
  %11 = xor i1 %10, true, !mcsema_real_eip !39
  store i1 %11, i1* %PF, !mcsema_real_eip !39
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !39
  store i1 %12, i1* %ZF, !mcsema_real_eip !39
  %13 = lshr i64 %3, 63, !mcsema_real_eip !39
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !39
  store i1 %14, i1* %SF, !mcsema_real_eip !39
  %15 = icmp ult i64 %RSP_val.60, 16, !mcsema_real_eip !39
  store i1 %15, i1* %CF, !mcsema_real_eip !39
  %16 = xor i64 %RSP_val.60, 16, !mcsema_real_eip !39
  %17 = xor i64 %RSP_val.60, %3, !mcsema_real_eip !39
  %18 = and i64 %16, %17, !mcsema_real_eip !39
  %19 = lshr i64 %18, 63, !mcsema_real_eip !39
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !39
  store i1 %20, i1* %OF, !mcsema_real_eip !39
  store i64 %3, i64* %XSP, !mcsema_real_eip !39
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !40
  %21 = add i64 %RBP_val.61, -8, !mcsema_real_eip !40
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !40
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, !mcsema_real_eip !40
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !40
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !40
  store i32 %EDI_val.63, i32* %24, !mcsema_real_eip !40
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !41
  %25 = add i64 %RBP_val.64, -12, !mcsema_real_eip !41
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !41
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !41
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !41
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !41
  store i32 %ESI_val.66, i32* %28, !mcsema_real_eip !41
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !42
  %29 = add i64 %RBP_val.67, -8, !mcsema_real_eip !42
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !42
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !42
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !42
  %33 = load i32, i32* %32, !mcsema_real_eip !42
  %34 = sub i32 %33, 0, !mcsema_real_eip !42
  %35 = xor i32 %34, %33, !mcsema_real_eip !42
  %36 = xor i32 %35, 0, !mcsema_real_eip !42
  %37 = and i32 %36, 16, !mcsema_real_eip !42
  %38 = icmp ne i32 %37, 0, !mcsema_real_eip !42
  store i1 %38, i1* %AF, !mcsema_real_eip !42
  %39 = trunc i32 %34 to i8, !mcsema_real_eip !42
  %40 = call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !42
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !42
  %42 = xor i1 %41, true, !mcsema_real_eip !42
  store i1 %42, i1* %PF, !mcsema_real_eip !42
  %43 = icmp eq i32 %34, 0, !mcsema_real_eip !42
  store i1 %43, i1* %ZF, !mcsema_real_eip !42
  %44 = lshr i32 %34, 31, !mcsema_real_eip !42
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !42
  store i1 %45, i1* %SF, !mcsema_real_eip !42
  %46 = icmp ult i32 %33, 0, !mcsema_real_eip !42
  store i1 %46, i1* %CF, !mcsema_real_eip !42
  %47 = xor i32 %33, 0, !mcsema_real_eip !42
  %48 = xor i32 %33, %34, !mcsema_real_eip !42
  %49 = and i32 %47, %48, !mcsema_real_eip !42
  %50 = lshr i32 %49, 31, !mcsema_real_eip !42
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !42
  store i1 %51, i1* %OF, !mcsema_real_eip !42
  %52 = load i1, i1* %ZF, !mcsema_real_eip !43
  %53 = icmp eq i1 %52, false, !mcsema_real_eip !43
  br i1 %53, label %block_0x26, label %block_0x18, !mcsema_real_eip !43

block_0x18:                                       ; preds = %block_0x0
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !44
  %54 = add i64 %RBP_val.69, -12, !mcsema_real_eip !44
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !44
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !44
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !44
  %58 = load i32, i32* %57, !mcsema_real_eip !44
  %59 = zext i32 %58 to i64, !mcsema_real_eip !44
  store i64 %59, i64* %XAX, !mcsema_real_eip !44
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !45
  %60 = add i32 1, %EAX_val.71, !mcsema_real_eip !45
  %61 = xor i32 %60, %EAX_val.71, !mcsema_real_eip !45
  %62 = xor i32 %61, 1, !mcsema_real_eip !45
  %63 = and i32 %62, 16, !mcsema_real_eip !45
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !45
  store i1 %64, i1* %AF, !mcsema_real_eip !45
  %65 = lshr i32 %60, 31, !mcsema_real_eip !45
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !45
  store i1 %66, i1* %SF, !mcsema_real_eip !45
  %67 = icmp eq i32 %60, 0, !mcsema_real_eip !45
  store i1 %67, i1* %ZF, !mcsema_real_eip !45
  %68 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !45
  %69 = xor i32 %68, -1, !mcsema_real_eip !45
  %70 = xor i32 %EAX_val.71, %60, !mcsema_real_eip !45
  %71 = and i32 %69, %70, !mcsema_real_eip !45
  %72 = lshr i32 %71, 31, !mcsema_real_eip !45
  %73 = and i32 %72, 1, !mcsema_real_eip !45
  %74 = trunc i32 %73 to i1, !mcsema_real_eip !45
  store i1 %74, i1* %OF, !mcsema_real_eip !45
  %75 = trunc i32 %60 to i8, !mcsema_real_eip !45
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !45
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !45
  %78 = xor i1 %77, true, !mcsema_real_eip !45
  store i1 %78, i1* %PF, !mcsema_real_eip !45
  %79 = icmp ult i32 %60, %EAX_val.71, !mcsema_real_eip !45
  store i1 %79, i1* %CF, !mcsema_real_eip !45
  %80 = zext i32 %60 to i64, !mcsema_real_eip !45
  store i64 %80, i64* %XAX, !mcsema_real_eip !45
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !46
  %81 = add i64 %RBP_val.72, -4, !mcsema_real_eip !46
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !46
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !46
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !46
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !46
  store i32 %EAX_val.74, i32* %84, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x26:                                       ; preds = %block_0x0
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !48
  %85 = add i64 %RBP_val.68, -12, !mcsema_real_eip !48
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !48
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !48
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !48
  %89 = load i32, i32* %88, !mcsema_real_eip !48
  %90 = sub i32 %89, 0, !mcsema_real_eip !48
  %91 = xor i32 %90, %89, !mcsema_real_eip !48
  %92 = xor i32 %91, 0, !mcsema_real_eip !48
  %93 = and i32 %92, 16, !mcsema_real_eip !48
  %94 = icmp ne i32 %93, 0, !mcsema_real_eip !48
  store i1 %94, i1* %AF, !mcsema_real_eip !48
  %95 = trunc i32 %90 to i8, !mcsema_real_eip !48
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !48
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !48
  %98 = xor i1 %97, true, !mcsema_real_eip !48
  store i1 %98, i1* %PF, !mcsema_real_eip !48
  %99 = icmp eq i32 %90, 0, !mcsema_real_eip !48
  store i1 %99, i1* %ZF, !mcsema_real_eip !48
  %100 = lshr i32 %90, 31, !mcsema_real_eip !48
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !48
  store i1 %101, i1* %SF, !mcsema_real_eip !48
  %102 = icmp ult i32 %89, 0, !mcsema_real_eip !48
  store i1 %102, i1* %CF, !mcsema_real_eip !48
  %103 = xor i32 %89, 0, !mcsema_real_eip !48
  %104 = xor i32 %89, %90, !mcsema_real_eip !48
  %105 = and i32 %103, %104, !mcsema_real_eip !48
  %106 = lshr i32 %105, 31, !mcsema_real_eip !48
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !48
  store i1 %107, i1* %OF, !mcsema_real_eip !48
  %108 = load i1, i1* %ZF, !mcsema_real_eip !49
  %109 = icmp eq i1 %108, false, !mcsema_real_eip !49
  br i1 %109, label %block_0x4a, label %block_0x30, !mcsema_real_eip !49

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, !mcsema_real_eip !50
  %RBP_val.95 = load i64, i64* %XBP, !mcsema_real_eip !51
  %110 = add i64 %RBP_val.95, -8, !mcsema_real_eip !51
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !51
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !51
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !51
  %114 = load i32, i32* %113, !mcsema_real_eip !51
  %115 = zext i32 %114 to i64, !mcsema_real_eip !51
  store i64 %115, i64* %XAX, !mcsema_real_eip !51
  %EAX.96 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.97 = load i32, i32* %EAX.96, !mcsema_real_eip !52
  %116 = sub i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %117 = xor i32 %116, %EAX_val.97, !mcsema_real_eip !52
  %118 = xor i32 %117, 1, !mcsema_real_eip !52
  %119 = and i32 %118, 16, !mcsema_real_eip !52
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !52
  store i1 %120, i1* %AF, !mcsema_real_eip !52
  %121 = trunc i32 %116 to i8, !mcsema_real_eip !52
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !52
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !52
  %124 = xor i1 %123, true, !mcsema_real_eip !52
  store i1 %124, i1* %PF, !mcsema_real_eip !52
  %125 = icmp eq i32 %116, 0, !mcsema_real_eip !52
  store i1 %125, i1* %ZF, !mcsema_real_eip !52
  %126 = lshr i32 %116, 31, !mcsema_real_eip !52
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !52
  store i1 %127, i1* %SF, !mcsema_real_eip !52
  %128 = icmp ult i32 %EAX_val.97, 1, !mcsema_real_eip !52
  store i1 %128, i1* %CF, !mcsema_real_eip !52
  %129 = xor i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %130 = xor i32 %EAX_val.97, %116, !mcsema_real_eip !52
  %131 = and i32 %129, %130, !mcsema_real_eip !52
  %132 = lshr i32 %131, 31, !mcsema_real_eip !52
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !52
  store i1 %133, i1* %OF, !mcsema_real_eip !52
  %134 = zext i32 %116 to i64, !mcsema_real_eip !52
  store i64 %134, i64* %XAX, !mcsema_real_eip !52
  %EAX.98 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.99 = load i32, i32* %EAX.98, !mcsema_real_eip !53
  %135 = zext i32 %EAX_val.99 to i64, !mcsema_real_eip !53
  store i64 %135, i64* %XDI, !mcsema_real_eip !53
  %RSP_val.100 = load i64, i64* %XSP, !mcsema_real_eip !54
  %136 = sub i64 %RSP_val.100, 8, !mcsema_real_eip !54
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !54
  store i64 -4981261766360305936, i64* %137, !mcsema_real_eip !54
  store i64 %136, i64* %XSP, !mcsema_real_eip !54
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !54
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !55
  %138 = add i64 %RBP_val.101, -4, !mcsema_real_eip !55
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !55
  %EAX.102 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.103 = load i32, i32* %EAX.102, !mcsema_real_eip !55
  %140 = ptrtoint i64* %139 to i64, !mcsema_real_eip !55
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.103, i32* %141, !mcsema_real_eip !55
  br label %block_0x70, !mcsema_real_eip !56

block_0x4a:                                       ; preds = %block_0x26
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !57
  %142 = add i64 %RBP_val.75, -8, !mcsema_real_eip !57
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !57
  %144 = ptrtoint i64* %143 to i64, !mcsema_real_eip !57
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !57
  %146 = load i32, i32* %145, !mcsema_real_eip !57
  %147 = zext i32 %146 to i64, !mcsema_real_eip !57
  store i64 %147, i64* %XAX, !mcsema_real_eip !57
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !58
  %148 = sub i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %149 = xor i32 %148, %EAX_val.77, !mcsema_real_eip !58
  %150 = xor i32 %149, 1, !mcsema_real_eip !58
  %151 = and i32 %150, 16, !mcsema_real_eip !58
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !58
  store i1 %152, i1* %AF, !mcsema_real_eip !58
  %153 = trunc i32 %148 to i8, !mcsema_real_eip !58
  %154 = call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !58
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !58
  %156 = xor i1 %155, true, !mcsema_real_eip !58
  store i1 %156, i1* %PF, !mcsema_real_eip !58
  %157 = icmp eq i32 %148, 0, !mcsema_real_eip !58
  store i1 %157, i1* %ZF, !mcsema_real_eip !58
  %158 = lshr i32 %148, 31, !mcsema_real_eip !58
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !58
  store i1 %159, i1* %SF, !mcsema_real_eip !58
  %160 = icmp ult i32 %EAX_val.77, 1, !mcsema_real_eip !58
  store i1 %160, i1* %CF, !mcsema_real_eip !58
  %161 = xor i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %162 = xor i32 %EAX_val.77, %148, !mcsema_real_eip !58
  %163 = and i32 %161, %162, !mcsema_real_eip !58
  %164 = lshr i32 %163, 31, !mcsema_real_eip !58
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !58
  store i1 %165, i1* %OF, !mcsema_real_eip !58
  %166 = zext i32 %148 to i64, !mcsema_real_eip !58
  store i64 %166, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !59
  %167 = add i64 %RBP_val.78, -8, !mcsema_real_eip !59
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !59
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !59
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !59
  %171 = load i32, i32* %170, !mcsema_real_eip !59
  %172 = zext i32 %171 to i64, !mcsema_real_eip !59
  store i64 %172, i64* %XDI, !mcsema_real_eip !59
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !60
  %173 = add i64 %RBP_val.79, -12, !mcsema_real_eip !60
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !60
  %175 = ptrtoint i64* %174 to i64, !mcsema_real_eip !60
  %176 = inttoptr i64 %175 to i32*, !mcsema_real_eip !60
  %177 = load i32, i32* %176, !mcsema_real_eip !60
  %178 = zext i32 %177 to i64, !mcsema_real_eip !60
  store i64 %178, i64* %XCX, !mcsema_real_eip !60
  %ECX.80 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.81 = load i32, i32* %ECX.80, !mcsema_real_eip !61
  %179 = sub i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %180 = xor i32 %179, %ECX_val.81, !mcsema_real_eip !61
  %181 = xor i32 %180, 1, !mcsema_real_eip !61
  %182 = and i32 %181, 16, !mcsema_real_eip !61
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !61
  store i1 %183, i1* %AF, !mcsema_real_eip !61
  %184 = trunc i32 %179 to i8, !mcsema_real_eip !61
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !61
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !61
  %187 = xor i1 %186, true, !mcsema_real_eip !61
  store i1 %187, i1* %PF, !mcsema_real_eip !61
  %188 = icmp eq i32 %179, 0, !mcsema_real_eip !61
  store i1 %188, i1* %ZF, !mcsema_real_eip !61
  %189 = lshr i32 %179, 31, !mcsema_real_eip !61
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !61
  store i1 %190, i1* %SF, !mcsema_real_eip !61
  %191 = icmp ult i32 %ECX_val.81, 1, !mcsema_real_eip !61
  store i1 %191, i1* %CF, !mcsema_real_eip !61
  %192 = xor i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %193 = xor i32 %ECX_val.81, %179, !mcsema_real_eip !61
  %194 = and i32 %192, %193, !mcsema_real_eip !61
  %195 = lshr i32 %194, 31, !mcsema_real_eip !61
  %196 = trunc i32 %195 to i1, !mcsema_real_eip !61
  store i1 %196, i1* %OF, !mcsema_real_eip !61
  %197 = zext i32 %179 to i64, !mcsema_real_eip !61
  store i64 %197, i64* %XCX, !mcsema_real_eip !61
  %ECX.82 = bitcast i64* %XCX to i32*, !mcsema_real_eip !62
  %ECX_val.83 = load i32, i32* %ECX.82, !mcsema_real_eip !62
  %198 = zext i32 %ECX_val.83 to i64, !mcsema_real_eip !62
  store i64 %198, i64* %XSI, !mcsema_real_eip !62
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !63
  %199 = add i64 %RBP_val.84, -16, !mcsema_real_eip !63
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !63
  %EAX.85 = bitcast i64* %XAX to i32*, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.85, !mcsema_real_eip !63
  %201 = ptrtoint i64* %200 to i64, !mcsema_real_eip !63
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.86, i32* %202, !mcsema_real_eip !63
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !64
  %203 = sub i64 %RSP_val.87, 8, !mcsema_real_eip !64
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !64
  store i64 -4981261766360305936, i64* %204, !mcsema_real_eip !64
  store i64 %203, i64* %XSP, !mcsema_real_eip !64
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !64
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !65
  %205 = add i64 %RBP_val.88, -16, !mcsema_real_eip !65
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !65
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !65
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !65
  %209 = load i32, i32* %208, !mcsema_real_eip !65
  %210 = zext i32 %209 to i64, !mcsema_real_eip !65
  store i64 %210, i64* %XDI, !mcsema_real_eip !65
  %EAX.89 = bitcast i64* %XAX to i32*, !mcsema_real_eip !66
  %EAX_val.90 = load i32, i32* %EAX.89, !mcsema_real_eip !66
  %211 = zext i32 %EAX_val.90 to i64, !mcsema_real_eip !66
  store i64 %211, i64* %XSI, !mcsema_real_eip !66
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !67
  %212 = sub i64 %RSP_val.91, 8, !mcsema_real_eip !67
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !67
  store i64 -4981261766360305936, i64* %213, !mcsema_real_eip !67
  store i64 %212, i64* %XSP, !mcsema_real_eip !67
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !67
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !68
  %214 = add i64 %RBP_val.92, -4, !mcsema_real_eip !68
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !68
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !68
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !68
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !68
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.94, i32* %217, !mcsema_real_eip !68
  br label %block_0x70, !mcsema_real_eip !50

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !69
  %218 = add i64 %RBP_val.104, -4, !mcsema_real_eip !69
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !69
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !69
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !69
  %222 = load i32, i32* %221, !mcsema_real_eip !69
  %223 = zext i32 %222 to i64, !mcsema_real_eip !69
  store i64 %223, i64* %XAX, !mcsema_real_eip !69
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %224 = add i64 16, %RSP_val.105, !mcsema_real_eip !70
  %225 = xor i64 %224, %RSP_val.105, !mcsema_real_eip !70
  %226 = xor i64 %225, 16, !mcsema_real_eip !70
  %227 = and i64 %226, 16, !mcsema_real_eip !70
  %228 = icmp ne i64 %227, 0, !mcsema_real_eip !70
  store i1 %228, i1* %AF, !mcsema_real_eip !70
  %229 = lshr i64 %224, 63, !mcsema_real_eip !70
  %230 = trunc i64 %229 to i1, !mcsema_real_eip !70
  store i1 %230, i1* %SF, !mcsema_real_eip !70
  %231 = icmp eq i64 %224, 0, !mcsema_real_eip !70
  store i1 %231, i1* %ZF, !mcsema_real_eip !70
  %232 = xor i64 %RSP_val.105, 16, !mcsema_real_eip !70
  %233 = xor i64 %232, -1, !mcsema_real_eip !70
  %234 = xor i64 %RSP_val.105, %224, !mcsema_real_eip !70
  %235 = and i64 %233, %234, !mcsema_real_eip !70
  %236 = lshr i64 %235, 63, !mcsema_real_eip !70
  %237 = and i64 %236, 1, !mcsema_real_eip !70
  %238 = trunc i64 %237 to i1, !mcsema_real_eip !70
  store i1 %238, i1* %OF, !mcsema_real_eip !70
  %239 = trunc i64 %224 to i8, !mcsema_real_eip !70
  %240 = call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !70
  %241 = trunc i8 %240 to i1, !mcsema_real_eip !70
  %242 = xor i1 %241, true, !mcsema_real_eip !70
  store i1 %242, i1* %PF, !mcsema_real_eip !70
  %243 = icmp ult i64 %224, %RSP_val.105, !mcsema_real_eip !70
  store i1 %243, i1* %CF, !mcsema_real_eip !70
  store i64 %224, i64* %XSP, !mcsema_real_eip !70
  %RSP_val.106 = load i64, i64* %XSP, !mcsema_real_eip !71
  %244 = inttoptr i64 %RSP_val.106 to i64*, !mcsema_real_eip !71
  %245 = load i64, i64* %244, !mcsema_real_eip !71
  store i64 %245, i64* %XBP, !mcsema_real_eip !71
  %246 = add i64 %RSP_val.106, 8, !mcsema_real_eip !71
  store i64 %246, i64* %XSP, !mcsema_real_eip !71
  %RSP_val.107 = load i64, i64* %XSP, !mcsema_real_eip !72
  %247 = add i64 %RSP_val.107, 8, !mcsema_real_eip !72
  %248 = inttoptr i64 %RSP_val.107 to i64*, !mcsema_real_eip !72
  %249 = load i64, i64* %248, !mcsema_real_eip !72
  store i64 %249, i64* %XIP, !mcsema_real_eip !72
  store i64 %247, i64* %XSP, !mcsema_real_eip !72
  ret void, !mcsema_real_eip !72
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

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
!2 = !{i64 128}
!3 = !{i64 129}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 143}
!7 = !{i64 146}
!8 = !{i64 150}
!9 = !{i64 154}
!10 = !{i64 160}
!11 = !{i64 164}
!12 = !{i64 168}
!13 = !{i64 173}
!14 = !{i64 176}
!15 = !{i64 181}
!16 = !{i64 186}
!17 = !{i64 189}
!18 = !{i64 194}
!19 = !{i64 197}
!20 = !{i64 202}
!21 = !{i64 205}
!22 = !{i64 208}
!23 = !{i64 211}
!24 = !{i64 214}
!25 = !{i64 216}
!26 = !{i64 221}
!27 = !{i64 231}
!28 = !{i64 234}
!29 = !{i64 236}
!30 = !{i64 238}
!31 = !{i64 243}
!32 = !{i64 245}
!33 = !{i64 248}
!34 = !{i64 250}
!35 = !{i64 254}
!36 = !{i64 255}
!37 = !{i64 0}
!38 = !{i64 1}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 11}
!42 = !{i64 14}
!43 = !{i64 18}
!44 = !{i64 24}
!45 = !{i64 27}
!46 = !{i64 30}
!47 = !{i64 33}
!48 = !{i64 38}
!49 = !{i64 42}
!50 = !{i64 48}
!51 = !{i64 53}
!52 = !{i64 56}
!53 = !{i64 59}
!54 = !{i64 61}
!55 = !{i64 66}
!56 = !{i64 69}
!57 = !{i64 74}
!58 = !{i64 77}
!59 = !{i64 80}
!60 = !{i64 83}
!61 = !{i64 86}
!62 = !{i64 89}
!63 = !{i64 91}
!64 = !{i64 94}
!65 = !{i64 99}
!66 = !{i64 102}
!67 = !{i64 104}
!68 = !{i64 109}
!69 = !{i64 112}
!70 = !{i64 115}
!71 = !{i64 119}
!72 = !{i64 120}
