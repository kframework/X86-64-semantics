; ModuleID = 'Output/test_32.clang.trans.bc'
source_filename = "Output/test_32.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"Z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
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
  br label %block_0x60, !mcsema_real_eip !2

block_0x60:                                       ; preds = %entry
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
  br i1 %55, label %block_0x95, label %block_0x80, !mcsema_real_eip !9

block_0x80:                                       ; preds = %block_0x60
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
  br label %block_0xa2, !mcsema_real_eip !14

block_0x95:                                       ; preds = %block_0x60
  store i64 20, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !16
  %69 = add i64 %RBP_val.11, -24, !mcsema_real_eip !16
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !16
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %72, !mcsema_real_eip !16
  br label %block_0xa2, !mcsema_real_eip !17

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !18
  %73 = add i64 %RBP_val.21, -24, !mcsema_real_eip !18
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !18
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !18
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !18
  %77 = load i32, i32* %76, !mcsema_real_eip !18
  %78 = zext i32 %77 to i64, !mcsema_real_eip !18
  store i64 %78, i64* %XAX, !mcsema_real_eip !18
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !19
  %79 = add i64 %RBP_val.22, -20, !mcsema_real_eip !19
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !19
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !19
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !19
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.24, i32* %82, !mcsema_real_eip !19
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !20
  %83 = add i64 %RBP_val.25, -20, !mcsema_real_eip !20
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !20
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !20
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !20
  %87 = load i32, i32* %86, !mcsema_real_eip !20
  %88 = sext i32 %87 to i64, !mcsema_real_eip !20
  store i64 %88, i64* %XDI, !mcsema_real_eip !20
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !21
  %89 = sub i64 %RSP_val.26, 8, !mcsema_real_eip !21
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %90, !mcsema_real_eip !21
  store i64 %89, i64* %XSP, !mcsema_real_eip !21
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !21
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, !mcsema_real_eip !22
  %RAX_val.27 = load i64, i64* %XAX, !mcsema_real_eip !23
  store i64 %RAX_val.27, i64* %XSI, !mcsema_real_eip !23
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.28, !mcsema_real_eip !24
  %RDI_val.29 = load i64, i64* %XDI, !mcsema_real_eip !25
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !25
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !25
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !25
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !25
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !25
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !25
  %91 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !25
  %92 = load i64, i64* %91, !mcsema_real_eip !25
  %93 = add i64 %RSP_val.35, 8, !mcsema_real_eip !25
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !25
  %95 = load i64, i64* %94, !mcsema_real_eip !25
  %96 = add i64 %93, 8, !mcsema_real_eip !25
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !25
  %98 = load i64, i64* %97, !mcsema_real_eip !25
  %99 = add i64 %96, 8, !mcsema_real_eip !25
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !25
  %101 = load i64, i64* %100, !mcsema_real_eip !25
  %102 = add i64 %99, 8, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !25
  %104 = load i64, i64* %103, !mcsema_real_eip !25
  %105 = add i64 %102, 8, !mcsema_real_eip !25
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %107 = load i64, i64* %106, !mcsema_real_eip !25
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %108 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !25
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !25
  store i64 -2415393069852865332, i64* %109, !mcsema_real_eip !25
  store i64 %108, i64* %XSP, !mcsema_real_eip !25
  %110 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.29, i64 %RSI_val.30, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %92, i64 %95, i64 %98, i64 %101, i64 %104, i64 %107), !mcsema_real_eip !25
  store i64 %110, i64* %XAX, !mcsema_real_eip !25
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.38 = load i32, i32* %ECX.37, !mcsema_real_eip !26
  %ECX.39 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.40 = load i32, i32* %ECX.39, !mcsema_real_eip !26
  %111 = xor i32 %ECX_val.38, %ECX_val.40, !mcsema_real_eip !26
  store i1 false, i1* %CF, !mcsema_real_eip !26
  store i1 false, i1* %OF, !mcsema_real_eip !26
  %112 = lshr i32 %111, 31, !mcsema_real_eip !26
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !26
  store i1 %113, i1* %SF, !mcsema_real_eip !26
  %114 = icmp eq i32 %111, 0, !mcsema_real_eip !26
  store i1 %114, i1* %ZF, !mcsema_real_eip !26
  %115 = trunc i32 %111 to i8, !mcsema_real_eip !26
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !26
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !26
  %118 = xor i1 %117, true, !mcsema_real_eip !26
  store i1 %118, i1* %PF, !mcsema_real_eip !26
  store i1 undef, i1* %AF, !mcsema_real_eip !26
  %119 = zext i32 %111 to i64, !mcsema_real_eip !26
  store i64 %119, i64* %XCX, !mcsema_real_eip !26
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !27
  %120 = add i64 %RBP_val.41, -28, !mcsema_real_eip !27
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !27
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !27
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !27
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.43, i32* %123, !mcsema_real_eip !27
  %ECX.44 = bitcast i64* %XCX to i32*, !mcsema_real_eip !28
  %ECX_val.45 = load i32, i32* %ECX.44, !mcsema_real_eip !28
  %124 = zext i32 %ECX_val.45 to i64, !mcsema_real_eip !28
  store i64 %124, i64* %XAX, !mcsema_real_eip !28
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !29
  %125 = add i64 32, %RSP_val.46, !mcsema_real_eip !29
  %126 = xor i64 %125, %RSP_val.46, !mcsema_real_eip !29
  %127 = xor i64 %126, 32, !mcsema_real_eip !29
  %128 = and i64 %127, 16, !mcsema_real_eip !29
  %129 = icmp ne i64 %128, 0, !mcsema_real_eip !29
  store i1 %129, i1* %AF, !mcsema_real_eip !29
  %130 = lshr i64 %125, 63, !mcsema_real_eip !29
  %131 = trunc i64 %130 to i1, !mcsema_real_eip !29
  store i1 %131, i1* %SF, !mcsema_real_eip !29
  %132 = icmp eq i64 %125, 0, !mcsema_real_eip !29
  store i1 %132, i1* %ZF, !mcsema_real_eip !29
  %133 = xor i64 %RSP_val.46, 32, !mcsema_real_eip !29
  %134 = xor i64 %133, -1, !mcsema_real_eip !29
  %135 = xor i64 %RSP_val.46, %125, !mcsema_real_eip !29
  %136 = and i64 %134, %135, !mcsema_real_eip !29
  %137 = lshr i64 %136, 63, !mcsema_real_eip !29
  %138 = and i64 %137, 1, !mcsema_real_eip !29
  %139 = trunc i64 %138 to i1, !mcsema_real_eip !29
  store i1 %139, i1* %OF, !mcsema_real_eip !29
  %140 = trunc i64 %125 to i8, !mcsema_real_eip !29
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !29
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !29
  %143 = xor i1 %142, true, !mcsema_real_eip !29
  store i1 %143, i1* %PF, !mcsema_real_eip !29
  %144 = icmp ult i64 %125, %RSP_val.46, !mcsema_real_eip !29
  store i1 %144, i1* %CF, !mcsema_real_eip !29
  store i64 %125, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !30
  %145 = inttoptr i64 %RSP_val.47 to i64*, !mcsema_real_eip !30
  %146 = load i64, i64* %145, !mcsema_real_eip !30
  store i64 %146, i64* %XBP, !mcsema_real_eip !30
  %147 = add i64 %RSP_val.47, 8, !mcsema_real_eip !30
  store i64 %147, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !31
  %148 = add i64 %RSP_val.48, 8, !mcsema_real_eip !31
  %149 = inttoptr i64 %RSP_val.48 to i64*, !mcsema_real_eip !31
  %150 = load i64, i64* %149, !mcsema_real_eip !31
  store i64 %150, i64* %XIP, !mcsema_real_eip !31
  store i64 %148, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !32
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !32
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !32
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !32
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !32
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !32
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !32
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !32
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !32
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !32
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !32
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !32
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !32
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !32
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !32
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !32
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !32
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !32
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !32
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !32
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !32
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !32
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !32
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !32
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !32
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !32
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !32
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !32
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !32
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !32
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !32
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !32
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !32
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !32
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !32
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !32
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !32
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !32
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !32
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !32
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !32
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !32
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !32
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !32
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !32
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !32
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !32
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !32
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !32
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !32
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !32
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !32
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !32
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !32
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !32
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !32
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !32
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !32
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !32
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !32
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !32
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !32
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !32
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !32
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !32
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !32
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !32
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !32
  br label %block_0x0, !mcsema_real_eip !32

block_0x0:                                        ; preds = %entry
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !32
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !32
  %1 = sub i64 %RSP_val.50, 8, !mcsema_real_eip !32
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !32
  store i64 %RBP_val.49, i64* %2, !mcsema_real_eip !32
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  %RSP_val.51 = load i64, i64* %XSP, !mcsema_real_eip !33
  store i64 %RSP_val.51, i64* %XBP, !mcsema_real_eip !33
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !34
  %3 = sub i64 %RSP_val.52, 32, !mcsema_real_eip !34
  %4 = xor i64 %3, %RSP_val.52, !mcsema_real_eip !34
  %5 = xor i64 %4, 32, !mcsema_real_eip !34
  %6 = and i64 %5, 16, !mcsema_real_eip !34
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !34
  store i1 %7, i1* %AF, !mcsema_real_eip !34
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !34
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !34
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !34
  %11 = xor i1 %10, true, !mcsema_real_eip !34
  store i1 %11, i1* %PF, !mcsema_real_eip !34
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !34
  store i1 %12, i1* %ZF, !mcsema_real_eip !34
  %13 = lshr i64 %3, 63, !mcsema_real_eip !34
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !34
  store i1 %14, i1* %SF, !mcsema_real_eip !34
  %15 = icmp ult i64 %RSP_val.52, 32, !mcsema_real_eip !34
  store i1 %15, i1* %CF, !mcsema_real_eip !34
  %16 = xor i64 %RSP_val.52, 32, !mcsema_real_eip !34
  %17 = xor i64 %RSP_val.52, %3, !mcsema_real_eip !34
  %18 = and i64 %16, %17, !mcsema_real_eip !34
  %19 = lshr i64 %18, 63, !mcsema_real_eip !34
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !34
  store i1 %20, i1* %OF, !mcsema_real_eip !34
  store i64 %3, i64* %XSP, !mcsema_real_eip !34
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !35
  %21 = add i64 %RBP_val.53, -16, !mcsema_real_eip !35
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !35
  %RDI_val.54 = load i64, i64* %XDI, !mcsema_real_eip !35
  store i64 %RDI_val.54, i64* %22, !mcsema_real_eip !35
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !36
  %23 = add i64 %RBP_val.55, -16, !mcsema_real_eip !36
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !36
  %25 = load i64, i64* %24, !mcsema_real_eip !36
  %26 = sub i64 %25, 2, !mcsema_real_eip !36
  %27 = xor i64 %26, %25, !mcsema_real_eip !36
  %28 = xor i64 %27, 2, !mcsema_real_eip !36
  %29 = and i64 %28, 16, !mcsema_real_eip !36
  %30 = icmp ne i64 %29, 0, !mcsema_real_eip !36
  store i1 %30, i1* %AF, !mcsema_real_eip !36
  %31 = trunc i64 %26 to i8, !mcsema_real_eip !36
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !36
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !36
  %34 = xor i1 %33, true, !mcsema_real_eip !36
  store i1 %34, i1* %PF, !mcsema_real_eip !36
  %35 = icmp eq i64 %26, 0, !mcsema_real_eip !36
  store i1 %35, i1* %ZF, !mcsema_real_eip !36
  %36 = lshr i64 %26, 63, !mcsema_real_eip !36
  %37 = trunc i64 %36 to i1, !mcsema_real_eip !36
  store i1 %37, i1* %SF, !mcsema_real_eip !36
  %38 = icmp ult i64 %25, 2, !mcsema_real_eip !36
  store i1 %38, i1* %CF, !mcsema_real_eip !36
  %39 = xor i64 %25, 2, !mcsema_real_eip !36
  %40 = xor i64 %25, %26, !mcsema_real_eip !36
  %41 = and i64 %39, %40, !mcsema_real_eip !36
  %42 = lshr i64 %41, 63, !mcsema_real_eip !36
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !36
  store i1 %43, i1* %OF, !mcsema_real_eip !36
  %44 = load i1, i1* %CF, !mcsema_real_eip !37
  %45 = icmp eq i1 %44, false, !mcsema_real_eip !37
  br i1 %45, label %block_0x24, label %block_0x17, !mcsema_real_eip !37

block_0x17:                                       ; preds = %block_0x0
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !38
  %46 = add i64 %RBP_val.70, -8, !mcsema_real_eip !38
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !38
  store i64 1, i64* %47, !mcsema_real_eip !38
  br label %block_0x50, !mcsema_real_eip !39

block_0x24:                                       ; preds = %block_0x0
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !40
  %48 = add i64 %RBP_val.56, -16, !mcsema_real_eip !40
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !40
  %50 = load i64, i64* %49, !mcsema_real_eip !40
  store i64 %50, i64* %XAX, !mcsema_real_eip !40
  %RAX_val.57 = load i64, i64* %XAX, !mcsema_real_eip !41
  %51 = sub i64 %RAX_val.57, 2, !mcsema_real_eip !41
  %52 = xor i64 %51, %RAX_val.57, !mcsema_real_eip !41
  %53 = xor i64 %52, 2, !mcsema_real_eip !41
  %54 = and i64 %53, 16, !mcsema_real_eip !41
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !41
  store i1 %55, i1* %AF, !mcsema_real_eip !41
  %56 = trunc i64 %51 to i8, !mcsema_real_eip !41
  %57 = call i8 @llvm.ctpop.i8(i8 %56), !mcsema_real_eip !41
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !41
  %59 = xor i1 %58, true, !mcsema_real_eip !41
  store i1 %59, i1* %PF, !mcsema_real_eip !41
  %60 = icmp eq i64 %51, 0, !mcsema_real_eip !41
  store i1 %60, i1* %ZF, !mcsema_real_eip !41
  %61 = lshr i64 %51, 63, !mcsema_real_eip !41
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !41
  store i1 %62, i1* %SF, !mcsema_real_eip !41
  %63 = icmp ult i64 %RAX_val.57, 2, !mcsema_real_eip !41
  store i1 %63, i1* %CF, !mcsema_real_eip !41
  %64 = xor i64 %RAX_val.57, 2, !mcsema_real_eip !41
  %65 = xor i64 %RAX_val.57, %51, !mcsema_real_eip !41
  %66 = and i64 %64, %65, !mcsema_real_eip !41
  %67 = lshr i64 %66, 63, !mcsema_real_eip !41
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !41
  store i1 %68, i1* %OF, !mcsema_real_eip !41
  store i64 %51, i64* %XAX, !mcsema_real_eip !41
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !42
  store i64 %RAX_val.58, i64* %XDI, !mcsema_real_eip !42
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !43
  %69 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !43
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %70, !mcsema_real_eip !43
  store i64 %69, i64* %XSP, !mcsema_real_eip !43
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !43
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !44
  %71 = add i64 %RBP_val.60, -16, !mcsema_real_eip !44
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !44
  %73 = load i64, i64* %72, !mcsema_real_eip !44
  store i64 %73, i64* %XDI, !mcsema_real_eip !44
  %RDI_val.61 = load i64, i64* %XDI, !mcsema_real_eip !45
  %74 = sub i64 %RDI_val.61, 1, !mcsema_real_eip !45
  %75 = xor i64 %74, %RDI_val.61, !mcsema_real_eip !45
  %76 = xor i64 %75, 1, !mcsema_real_eip !45
  %77 = and i64 %76, 16, !mcsema_real_eip !45
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !45
  store i1 %78, i1* %AF, !mcsema_real_eip !45
  %79 = trunc i64 %74 to i8, !mcsema_real_eip !45
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !45
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !45
  %82 = xor i1 %81, true, !mcsema_real_eip !45
  store i1 %82, i1* %PF, !mcsema_real_eip !45
  %83 = icmp eq i64 %74, 0, !mcsema_real_eip !45
  store i1 %83, i1* %ZF, !mcsema_real_eip !45
  %84 = lshr i64 %74, 63, !mcsema_real_eip !45
  %85 = trunc i64 %84 to i1, !mcsema_real_eip !45
  store i1 %85, i1* %SF, !mcsema_real_eip !45
  %86 = icmp ult i64 %RDI_val.61, 1, !mcsema_real_eip !45
  store i1 %86, i1* %CF, !mcsema_real_eip !45
  %87 = xor i64 %RDI_val.61, 1, !mcsema_real_eip !45
  %88 = xor i64 %RDI_val.61, %74, !mcsema_real_eip !45
  %89 = and i64 %87, %88, !mcsema_real_eip !45
  %90 = lshr i64 %89, 63, !mcsema_real_eip !45
  %91 = trunc i64 %90 to i1, !mcsema_real_eip !45
  store i1 %91, i1* %OF, !mcsema_real_eip !45
  store i64 %74, i64* %XDI, !mcsema_real_eip !45
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !46
  %92 = add i64 %RBP_val.62, -24, !mcsema_real_eip !46
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !46
  %RAX_val.63 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.63, i64* %93, !mcsema_real_eip !46
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !47
  %94 = sub i64 %RSP_val.64, 8, !mcsema_real_eip !47
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %95, !mcsema_real_eip !47
  store i64 %94, i64* %XSP, !mcsema_real_eip !47
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !47
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !48
  %96 = add i64 %RBP_val.65, -24, !mcsema_real_eip !48
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !48
  %98 = load i64, i64* %97, !mcsema_real_eip !48
  store i64 %98, i64* %XDI, !mcsema_real_eip !48
  %RDI_val.66 = load i64, i64* %XDI, !mcsema_real_eip !49
  %RAX_val.67 = load i64, i64* %XAX, !mcsema_real_eip !49
  %99 = add i64 %RAX_val.67, %RDI_val.66, !mcsema_real_eip !49
  %100 = xor i64 %99, %RDI_val.66, !mcsema_real_eip !49
  %101 = xor i64 %100, %RAX_val.67, !mcsema_real_eip !49
  %102 = and i64 %101, 16, !mcsema_real_eip !49
  %103 = icmp ne i64 %102, 0, !mcsema_real_eip !49
  store i1 %103, i1* %AF, !mcsema_real_eip !49
  %104 = lshr i64 %99, 63, !mcsema_real_eip !49
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !49
  store i1 %105, i1* %SF, !mcsema_real_eip !49
  %106 = icmp eq i64 %99, 0, !mcsema_real_eip !49
  store i1 %106, i1* %ZF, !mcsema_real_eip !49
  %107 = xor i64 %RDI_val.66, %RAX_val.67, !mcsema_real_eip !49
  %108 = xor i64 %107, -1, !mcsema_real_eip !49
  %109 = xor i64 %RDI_val.66, %99, !mcsema_real_eip !49
  %110 = and i64 %108, %109, !mcsema_real_eip !49
  %111 = lshr i64 %110, 63, !mcsema_real_eip !49
  %112 = and i64 %111, 1, !mcsema_real_eip !49
  %113 = trunc i64 %112 to i1, !mcsema_real_eip !49
  store i1 %113, i1* %OF, !mcsema_real_eip !49
  %114 = trunc i64 %99 to i8, !mcsema_real_eip !49
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !49
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !49
  %117 = xor i1 %116, true, !mcsema_real_eip !49
  store i1 %117, i1* %PF, !mcsema_real_eip !49
  %118 = icmp ult i64 %99, %RDI_val.66, !mcsema_real_eip !49
  store i1 %118, i1* %CF, !mcsema_real_eip !49
  store i64 %99, i64* %XDI, !mcsema_real_eip !49
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !50
  %119 = add i64 %RBP_val.68, -8, !mcsema_real_eip !50
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !50
  %RDI_val.69 = load i64, i64* %XDI, !mcsema_real_eip !50
  store i64 %RDI_val.69, i64* %120, !mcsema_real_eip !50
  br label %block_0x50, !mcsema_real_eip !38

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !51
  %121 = add i64 %RBP_val.71, -8, !mcsema_real_eip !51
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !51
  %123 = load i64, i64* %122, !mcsema_real_eip !51
  store i64 %123, i64* %XAX, !mcsema_real_eip !51
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %124 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %125 = xor i64 %124, %RSP_val.72, !mcsema_real_eip !52
  %126 = xor i64 %125, 32, !mcsema_real_eip !52
  %127 = and i64 %126, 16, !mcsema_real_eip !52
  %128 = icmp ne i64 %127, 0, !mcsema_real_eip !52
  store i1 %128, i1* %AF, !mcsema_real_eip !52
  %129 = lshr i64 %124, 63, !mcsema_real_eip !52
  %130 = trunc i64 %129 to i1, !mcsema_real_eip !52
  store i1 %130, i1* %SF, !mcsema_real_eip !52
  %131 = icmp eq i64 %124, 0, !mcsema_real_eip !52
  store i1 %131, i1* %ZF, !mcsema_real_eip !52
  %132 = xor i64 %RSP_val.72, 32, !mcsema_real_eip !52
  %133 = xor i64 %132, -1, !mcsema_real_eip !52
  %134 = xor i64 %RSP_val.72, %124, !mcsema_real_eip !52
  %135 = and i64 %133, %134, !mcsema_real_eip !52
  %136 = lshr i64 %135, 63, !mcsema_real_eip !52
  %137 = and i64 %136, 1, !mcsema_real_eip !52
  %138 = trunc i64 %137 to i1, !mcsema_real_eip !52
  store i1 %138, i1* %OF, !mcsema_real_eip !52
  %139 = trunc i64 %124 to i8, !mcsema_real_eip !52
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !52
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !52
  %142 = xor i1 %141, true, !mcsema_real_eip !52
  store i1 %142, i1* %PF, !mcsema_real_eip !52
  %143 = icmp ult i64 %124, %RSP_val.72, !mcsema_real_eip !52
  store i1 %143, i1* %CF, !mcsema_real_eip !52
  store i64 %124, i64* %XSP, !mcsema_real_eip !52
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !53
  %144 = inttoptr i64 %RSP_val.73 to i64*, !mcsema_real_eip !53
  %145 = load i64, i64* %144, !mcsema_real_eip !53
  store i64 %145, i64* %XBP, !mcsema_real_eip !53
  %146 = add i64 %RSP_val.73, 8, !mcsema_real_eip !53
  store i64 %146, i64* %XSP, !mcsema_real_eip !53
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !54
  %147 = add i64 %RSP_val.74, 8, !mcsema_real_eip !54
  %148 = inttoptr i64 %RSP_val.74 to i64*, !mcsema_real_eip !54
  %149 = load i64, i64* %148, !mcsema_real_eip !54
  store i64 %149, i64* %XIP, !mcsema_real_eip !54
  store i64 %147, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
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
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 111}
!7 = !{i64 114}
!8 = !{i64 118}
!9 = !{i64 122}
!10 = !{i64 128}
!11 = !{i64 132}
!12 = !{i64 136}
!13 = !{i64 141}
!14 = !{i64 144}
!15 = !{i64 149}
!16 = !{i64 154}
!17 = !{i64 157}
!18 = !{i64 162}
!19 = !{i64 165}
!20 = !{i64 168}
!21 = !{i64 172}
!22 = !{i64 177}
!23 = !{i64 187}
!24 = !{i64 190}
!25 = !{i64 192}
!26 = !{i64 197}
!27 = !{i64 199}
!28 = !{i64 202}
!29 = !{i64 204}
!30 = !{i64 208}
!31 = !{i64 209}
!32 = !{i64 0}
!33 = !{i64 1}
!34 = !{i64 4}
!35 = !{i64 8}
!36 = !{i64 12}
!37 = !{i64 17}
!38 = !{i64 23}
!39 = !{i64 31}
!40 = !{i64 36}
!41 = !{i64 40}
!42 = !{i64 44}
!43 = !{i64 47}
!44 = !{i64 52}
!45 = !{i64 56}
!46 = !{i64 60}
!47 = !{i64 64}
!48 = !{i64 69}
!49 = !{i64 73}
!50 = !{i64 76}
!51 = !{i64 80}
!52 = !{i64 84}
!53 = !{i64 88}
!54 = !{i64 89}
