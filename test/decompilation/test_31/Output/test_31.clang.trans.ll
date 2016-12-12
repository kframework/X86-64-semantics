; ModuleID = 'Output/test_31.clang.trans.bc'
source_filename = "Output/test_31.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xa0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 5, i64* %XDI, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %21 = add i64 %RBP_val.4, -4, !mcsema_real_eip !6
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !6
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %24, !mcsema_real_eip !6
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !7
  %25 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %26, !mcsema_real_eip !7
  store i64 %25, i64* %XSP, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !9
  %27 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %27, i64* %XSI, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, !mcsema_real_eip !10
  %RDI_val.9 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSI_val.10 = load i64, i64* %XSI, !mcsema_real_eip !11
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !11
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !11
  %28 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !11
  %29 = load i64, i64* %28, !mcsema_real_eip !11
  %30 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !11
  %32 = load i64, i64* %31, !mcsema_real_eip !11
  %33 = add i64 %30, 8, !mcsema_real_eip !11
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !11
  %35 = load i64, i64* %34, !mcsema_real_eip !11
  %36 = add i64 %33, 8, !mcsema_real_eip !11
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !11
  %38 = load i64, i64* %37, !mcsema_real_eip !11
  %39 = add i64 %36, 8, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !11
  %41 = load i64, i64* %40, !mcsema_real_eip !11
  %42 = add i64 %39, 8, !mcsema_real_eip !11
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !11
  %44 = load i64, i64* %43, !mcsema_real_eip !11
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !11
  %45 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !11
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %46, !mcsema_real_eip !11
  store i64 %45, i64* %XSP, !mcsema_real_eip !11
  %47 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.9, i64 %RSI_val.10, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %29, i64 %32, i64 %35, i64 %38, i64 %41, i64 %44), !mcsema_real_eip !11
  store i64 %47, i64* %XAX, !mcsema_real_eip !11
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.18 = load i32, i32* %ESI.17, !mcsema_real_eip !12
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !12
  %48 = xor i32 %ESI_val.18, %ESI_val.20, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  %49 = lshr i32 %48, 31, !mcsema_real_eip !12
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !12
  store i1 %50, i1* %SF, !mcsema_real_eip !12
  %51 = icmp eq i32 %48, 0, !mcsema_real_eip !12
  store i1 %51, i1* %ZF, !mcsema_real_eip !12
  %52 = trunc i32 %48 to i8, !mcsema_real_eip !12
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !12
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !12
  %55 = xor i1 %54, true, !mcsema_real_eip !12
  store i1 %55, i1* %PF, !mcsema_real_eip !12
  store i1 undef, i1* %AF, !mcsema_real_eip !12
  %56 = zext i32 %48 to i64, !mcsema_real_eip !12
  store i64 %56, i64* %XSI, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %57 = add i64 %RBP_val.21, -8, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !13
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !13
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %60, !mcsema_real_eip !13
  %ESI.24 = bitcast i64* %XSI to i32*, !mcsema_real_eip !14
  %ESI_val.25 = load i32, i32* %ESI.24, !mcsema_real_eip !14
  %61 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %61, i64* %XAX, !mcsema_real_eip !14
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !15
  %62 = add i64 16, %RSP_val.26, !mcsema_real_eip !15
  %63 = xor i64 %62, %RSP_val.26, !mcsema_real_eip !15
  %64 = xor i64 %63, 16, !mcsema_real_eip !15
  %65 = and i64 %64, 16, !mcsema_real_eip !15
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !15
  store i1 %66, i1* %AF, !mcsema_real_eip !15
  %67 = lshr i64 %62, 63, !mcsema_real_eip !15
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !15
  store i1 %68, i1* %SF, !mcsema_real_eip !15
  %69 = icmp eq i64 %62, 0, !mcsema_real_eip !15
  store i1 %69, i1* %ZF, !mcsema_real_eip !15
  %70 = xor i64 %RSP_val.26, 16, !mcsema_real_eip !15
  %71 = xor i64 %70, -1, !mcsema_real_eip !15
  %72 = xor i64 %RSP_val.26, %62, !mcsema_real_eip !15
  %73 = and i64 %71, %72, !mcsema_real_eip !15
  %74 = lshr i64 %73, 63, !mcsema_real_eip !15
  %75 = and i64 %74, 1, !mcsema_real_eip !15
  %76 = trunc i64 %75 to i1, !mcsema_real_eip !15
  store i1 %76, i1* %OF, !mcsema_real_eip !15
  %77 = trunc i64 %62 to i8, !mcsema_real_eip !15
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !15
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !15
  %80 = xor i1 %79, true, !mcsema_real_eip !15
  store i1 %80, i1* %PF, !mcsema_real_eip !15
  %81 = icmp ult i64 %62, %RSP_val.26, !mcsema_real_eip !15
  store i1 %81, i1* %CF, !mcsema_real_eip !15
  store i64 %62, i64* %XSP, !mcsema_real_eip !15
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !16
  %82 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !16
  %83 = load i64, i64* %82, !mcsema_real_eip !16
  store i64 %83, i64* %XBP, !mcsema_real_eip !16
  %84 = add i64 %RSP_val.27, 8, !mcsema_real_eip !16
  store i64 %84, i64* %XSP, !mcsema_real_eip !16
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !17
  %85 = add i64 %RSP_val.28, 8, !mcsema_real_eip !17
  %86 = inttoptr i64 %RSP_val.28 to i64*, !mcsema_real_eip !17
  %87 = load i64, i64* %86, !mcsema_real_eip !17
  store i64 %87, i64* %XIP, !mcsema_real_eip !17
  store i64 %85, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !18
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !18
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !18
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !18
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !18
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !18
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !18
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !18
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !18
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !18
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !18
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !18
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !18
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !18
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !18
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !18
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !18
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !18
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !18
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !18
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !18
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !18
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !18
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !18
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !18
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !18
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !18
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !18
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !18
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !18
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !18
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !18
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !18
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !18
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !18
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !18
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !18
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !18
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !18
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !18
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !18
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !18
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !18
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !18
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !18
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !18
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !18
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !18
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !18
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !18
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !18
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !18
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !18
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !18
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !18
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !18
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !18
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !18
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !18
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !18
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !18
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !18
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !18
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !18
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !18
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !18
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !18
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !18
  br label %block_0x0, !mcsema_real_eip !18

block_0x0:                                        ; preds = %entry
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %1 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !18
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !18
  store i64 %RBP_val.29, i64* %2, !mcsema_real_eip !18
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !19
  store i64 %RSP_val.31, i64* %XBP, !mcsema_real_eip !19
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %3 = sub i64 %RSP_val.32, 16, !mcsema_real_eip !20
  %4 = xor i64 %3, %RSP_val.32, !mcsema_real_eip !20
  %5 = xor i64 %4, 16, !mcsema_real_eip !20
  %6 = and i64 %5, 16, !mcsema_real_eip !20
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !20
  store i1 %7, i1* %AF, !mcsema_real_eip !20
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !20
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !20
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !20
  %11 = xor i1 %10, true, !mcsema_real_eip !20
  store i1 %11, i1* %PF, !mcsema_real_eip !20
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !20
  store i1 %12, i1* %ZF, !mcsema_real_eip !20
  %13 = lshr i64 %3, 63, !mcsema_real_eip !20
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !20
  store i1 %14, i1* %SF, !mcsema_real_eip !20
  %15 = icmp ult i64 %RSP_val.32, 16, !mcsema_real_eip !20
  store i1 %15, i1* %CF, !mcsema_real_eip !20
  %16 = xor i64 %RSP_val.32, 16, !mcsema_real_eip !20
  %17 = xor i64 %RSP_val.32, %3, !mcsema_real_eip !20
  %18 = and i64 %16, %17, !mcsema_real_eip !20
  %19 = lshr i64 %18, 63, !mcsema_real_eip !20
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !20
  store i1 %20, i1* %OF, !mcsema_real_eip !20
  store i64 %3, i64* %XSP, !mcsema_real_eip !20
  store i64 1, i64* %XAX, !mcsema_real_eip !21
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !22
  %21 = add i64 %RBP_val.33, -8, !mcsema_real_eip !22
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !22
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, !mcsema_real_eip !22
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !22
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %24, !mcsema_real_eip !22
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !23
  %25 = add i64 %RBP_val.36, -8, !mcsema_real_eip !23
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !23
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !23
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !23
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !23
  %29 = load i32, i32* %28, !mcsema_real_eip !23
  %30 = sub i32 %EAX_val.38, %29, !mcsema_real_eip !23
  %31 = xor i32 %30, %EAX_val.38, !mcsema_real_eip !23
  %32 = xor i32 %31, %29, !mcsema_real_eip !23
  %33 = and i32 %32, 16, !mcsema_real_eip !23
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !23
  store i1 %34, i1* %AF, !mcsema_real_eip !23
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !23
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !23
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !23
  %38 = xor i1 %37, true, !mcsema_real_eip !23
  store i1 %38, i1* %PF, !mcsema_real_eip !23
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !23
  store i1 %39, i1* %ZF, !mcsema_real_eip !23
  %40 = lshr i32 %30, 31, !mcsema_real_eip !23
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !23
  store i1 %41, i1* %SF, !mcsema_real_eip !23
  %42 = icmp ult i32 %EAX_val.38, %29, !mcsema_real_eip !23
  store i1 %42, i1* %CF, !mcsema_real_eip !23
  %43 = xor i32 %EAX_val.38, %29, !mcsema_real_eip !23
  %44 = xor i32 %EAX_val.38, %30, !mcsema_real_eip !23
  %45 = and i32 %43, %44, !mcsema_real_eip !23
  %46 = lshr i32 %45, 31, !mcsema_real_eip !23
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !23
  store i1 %47, i1* %OF, !mcsema_real_eip !23
  %48 = load i1, i1* %ZF, !mcsema_real_eip !24
  %49 = icmp eq i1 %48, true, !mcsema_real_eip !24
  br i1 %49, label %block_0x24, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %block_0x0
  %EAX.40 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.41 = load i32, i32* %EAX.40, !mcsema_real_eip !25
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !25
  %50 = xor i32 %EAX_val.41, %EAX_val.43, !mcsema_real_eip !25
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  %51 = lshr i32 %50, 31, !mcsema_real_eip !25
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !25
  store i1 %52, i1* %SF, !mcsema_real_eip !25
  %53 = icmp eq i32 %50, 0, !mcsema_real_eip !25
  store i1 %53, i1* %ZF, !mcsema_real_eip !25
  %54 = trunc i32 %50 to i8, !mcsema_real_eip !25
  %55 = call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !25
  %56 = trunc i8 %55 to i1, !mcsema_real_eip !25
  %57 = xor i1 %56, true, !mcsema_real_eip !25
  store i1 %57, i1* %PF, !mcsema_real_eip !25
  store i1 undef, i1* %AF, !mcsema_real_eip !25
  %58 = zext i32 %50 to i64, !mcsema_real_eip !25
  store i64 %58, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !26
  %59 = add i64 %RBP_val.44, -8, !mcsema_real_eip !26
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !26
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !26
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !26
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !26
  %63 = load i32, i32* %62, !mcsema_real_eip !26
  %64 = sub i32 %EAX_val.46, %63, !mcsema_real_eip !26
  %65 = xor i32 %64, %EAX_val.46, !mcsema_real_eip !26
  %66 = xor i32 %65, %63, !mcsema_real_eip !26
  %67 = and i32 %66, 16, !mcsema_real_eip !26
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !26
  store i1 %68, i1* %AF, !mcsema_real_eip !26
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !26
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !26
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !26
  %72 = xor i1 %71, true, !mcsema_real_eip !26
  store i1 %72, i1* %PF, !mcsema_real_eip !26
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !26
  store i1 %73, i1* %ZF, !mcsema_real_eip !26
  %74 = lshr i32 %64, 31, !mcsema_real_eip !26
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !26
  store i1 %75, i1* %SF, !mcsema_real_eip !26
  %76 = icmp ult i32 %EAX_val.46, %63, !mcsema_real_eip !26
  store i1 %76, i1* %CF, !mcsema_real_eip !26
  %77 = xor i32 %EAX_val.46, %63, !mcsema_real_eip !26
  %78 = xor i32 %EAX_val.46, %64, !mcsema_real_eip !26
  %79 = and i32 %77, %78, !mcsema_real_eip !26
  %80 = lshr i32 %79, 31, !mcsema_real_eip !26
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !26
  store i1 %81, i1* %OF, !mcsema_real_eip !26
  %82 = load i1, i1* %ZF, !mcsema_real_eip !27
  %83 = icmp eq i1 %82, false, !mcsema_real_eip !27
  br i1 %83, label %block_0x30, label %block_0x24, !mcsema_real_eip !27

block_0x24:                                       ; preds = %block_0x19, %block_0x0
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !28
  %84 = add i64 %RBP_val.39, -4, !mcsema_real_eip !28
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !28
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !28
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !28
  store i32 1, i32* %87, !mcsema_real_eip !28
  br label %block_0x53, !mcsema_real_eip !29

block_0x53:                                       ; preds = %block_0x30, %block_0x24
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !30
  %88 = add i64 %RBP_val.47, -4, !mcsema_real_eip !30
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !30
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !30
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !30
  %92 = load i32, i32* %91, !mcsema_real_eip !30
  %93 = zext i32 %92 to i64, !mcsema_real_eip !30
  store i64 %93, i64* %XAX, !mcsema_real_eip !30
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !31
  %94 = add i64 16, %RSP_val.48, !mcsema_real_eip !31
  %95 = xor i64 %94, %RSP_val.48, !mcsema_real_eip !31
  %96 = xor i64 %95, 16, !mcsema_real_eip !31
  %97 = and i64 %96, 16, !mcsema_real_eip !31
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !31
  store i1 %98, i1* %AF, !mcsema_real_eip !31
  %99 = lshr i64 %94, 63, !mcsema_real_eip !31
  %100 = trunc i64 %99 to i1, !mcsema_real_eip !31
  store i1 %100, i1* %SF, !mcsema_real_eip !31
  %101 = icmp eq i64 %94, 0, !mcsema_real_eip !31
  store i1 %101, i1* %ZF, !mcsema_real_eip !31
  %102 = xor i64 %RSP_val.48, 16, !mcsema_real_eip !31
  %103 = xor i64 %102, -1, !mcsema_real_eip !31
  %104 = xor i64 %RSP_val.48, %94, !mcsema_real_eip !31
  %105 = and i64 %103, %104, !mcsema_real_eip !31
  %106 = lshr i64 %105, 63, !mcsema_real_eip !31
  %107 = and i64 %106, 1, !mcsema_real_eip !31
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !31
  store i1 %108, i1* %OF, !mcsema_real_eip !31
  %109 = trunc i64 %94 to i8, !mcsema_real_eip !31
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !31
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !31
  %112 = xor i1 %111, true, !mcsema_real_eip !31
  store i1 %112, i1* %PF, !mcsema_real_eip !31
  %113 = icmp ult i64 %94, %RSP_val.48, !mcsema_real_eip !31
  store i1 %113, i1* %CF, !mcsema_real_eip !31
  store i64 %94, i64* %XSP, !mcsema_real_eip !31
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !32
  %114 = inttoptr i64 %RSP_val.49 to i64*, !mcsema_real_eip !32
  %115 = load i64, i64* %114, !mcsema_real_eip !32
  store i64 %115, i64* %XBP, !mcsema_real_eip !32
  %116 = add i64 %RSP_val.49, 8, !mcsema_real_eip !32
  store i64 %116, i64* %XSP, !mcsema_real_eip !32
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !33
  %117 = add i64 %RSP_val.50, 8, !mcsema_real_eip !33
  %118 = inttoptr i64 %RSP_val.50 to i64*, !mcsema_real_eip !33
  %119 = load i64, i64* %118, !mcsema_real_eip !33
  store i64 %119, i64* %XIP, !mcsema_real_eip !33
  store i64 %117, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x30:                                       ; preds = %block_0x19
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !34
  %120 = add i64 %RBP_val.51, -8, !mcsema_real_eip !34
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !34
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !34
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !34
  %124 = load i32, i32* %123, !mcsema_real_eip !34
  %125 = zext i32 %124 to i64, !mcsema_real_eip !34
  store i64 %125, i64* %XAX, !mcsema_real_eip !34
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !35
  %126 = sub i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %127 = xor i32 %126, %EAX_val.53, !mcsema_real_eip !35
  %128 = xor i32 %127, 1, !mcsema_real_eip !35
  %129 = and i32 %128, 16, !mcsema_real_eip !35
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !35
  store i1 %130, i1* %AF, !mcsema_real_eip !35
  %131 = trunc i32 %126 to i8, !mcsema_real_eip !35
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !35
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !35
  %134 = xor i1 %133, true, !mcsema_real_eip !35
  store i1 %134, i1* %PF, !mcsema_real_eip !35
  %135 = icmp eq i32 %126, 0, !mcsema_real_eip !35
  store i1 %135, i1* %ZF, !mcsema_real_eip !35
  %136 = lshr i32 %126, 31, !mcsema_real_eip !35
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !35
  store i1 %137, i1* %SF, !mcsema_real_eip !35
  %138 = icmp ult i32 %EAX_val.53, 1, !mcsema_real_eip !35
  store i1 %138, i1* %CF, !mcsema_real_eip !35
  %139 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %140 = xor i32 %EAX_val.53, %126, !mcsema_real_eip !35
  %141 = and i32 %139, %140, !mcsema_real_eip !35
  %142 = lshr i32 %141, 31, !mcsema_real_eip !35
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !35
  store i1 %143, i1* %OF, !mcsema_real_eip !35
  %144 = zext i32 %126 to i64, !mcsema_real_eip !35
  store i64 %144, i64* %XAX, !mcsema_real_eip !35
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !36
  %145 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !36
  store i64 %145, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !37
  %146 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !37
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %147, !mcsema_real_eip !37
  store i64 %146, i64* %XSP, !mcsema_real_eip !37
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !37
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !38
  %148 = add i64 %RBP_val.57, -8, !mcsema_real_eip !38
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !38
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !38
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !38
  %152 = load i32, i32* %151, !mcsema_real_eip !38
  %153 = zext i32 %152 to i64, !mcsema_real_eip !38
  store i64 %153, i64* %XDI, !mcsema_real_eip !38
  %EDI.58 = bitcast i64* %XDI to i32*, !mcsema_real_eip !39
  %EDI_val.59 = load i32, i32* %EDI.58, !mcsema_real_eip !39
  %154 = sub i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %155 = xor i32 %154, %EDI_val.59, !mcsema_real_eip !39
  %156 = xor i32 %155, 2, !mcsema_real_eip !39
  %157 = and i32 %156, 16, !mcsema_real_eip !39
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !39
  store i1 %158, i1* %AF, !mcsema_real_eip !39
  %159 = trunc i32 %154 to i8, !mcsema_real_eip !39
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !39
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !39
  %162 = xor i1 %161, true, !mcsema_real_eip !39
  store i1 %162, i1* %PF, !mcsema_real_eip !39
  %163 = icmp eq i32 %154, 0, !mcsema_real_eip !39
  store i1 %163, i1* %ZF, !mcsema_real_eip !39
  %164 = lshr i32 %154, 31, !mcsema_real_eip !39
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !39
  store i1 %165, i1* %SF, !mcsema_real_eip !39
  %166 = icmp ult i32 %EDI_val.59, 2, !mcsema_real_eip !39
  store i1 %166, i1* %CF, !mcsema_real_eip !39
  %167 = xor i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %168 = xor i32 %EDI_val.59, %154, !mcsema_real_eip !39
  %169 = and i32 %167, %168, !mcsema_real_eip !39
  %170 = lshr i32 %169, 31, !mcsema_real_eip !39
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !39
  store i1 %171, i1* %OF, !mcsema_real_eip !39
  %172 = zext i32 %154 to i64, !mcsema_real_eip !39
  store i64 %172, i64* %XDI, !mcsema_real_eip !39
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !40
  %173 = add i64 %RBP_val.60, -12, !mcsema_real_eip !40
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !40
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !40
  %175 = ptrtoint i64* %174 to i64, !mcsema_real_eip !40
  %176 = inttoptr i64 %175 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.62, i32* %176, !mcsema_real_eip !40
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %177 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %178, !mcsema_real_eip !41
  store i64 %177, i64* %XSP, !mcsema_real_eip !41
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !41
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !42
  %179 = add i64 %RBP_val.64, -12, !mcsema_real_eip !42
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !42
  %181 = ptrtoint i64* %180 to i64, !mcsema_real_eip !42
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !42
  %183 = load i32, i32* %182, !mcsema_real_eip !42
  %184 = zext i32 %183 to i64, !mcsema_real_eip !42
  store i64 %184, i64* %XDI, !mcsema_real_eip !42
  %EDI.65 = bitcast i64* %XDI to i32*, !mcsema_real_eip !43
  %EDI_val.66 = load i32, i32* %EDI.65, !mcsema_real_eip !43
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !43
  %185 = add i32 %EAX_val.68, %EDI_val.66, !mcsema_real_eip !43
  %186 = xor i32 %185, %EDI_val.66, !mcsema_real_eip !43
  %187 = xor i32 %186, %EAX_val.68, !mcsema_real_eip !43
  %188 = and i32 %187, 16, !mcsema_real_eip !43
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !43
  store i1 %189, i1* %AF, !mcsema_real_eip !43
  %190 = lshr i32 %185, 31, !mcsema_real_eip !43
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !43
  store i1 %191, i1* %SF, !mcsema_real_eip !43
  %192 = icmp eq i32 %185, 0, !mcsema_real_eip !43
  store i1 %192, i1* %ZF, !mcsema_real_eip !43
  %193 = xor i32 %EDI_val.66, %EAX_val.68, !mcsema_real_eip !43
  %194 = xor i32 %193, -1, !mcsema_real_eip !43
  %195 = xor i32 %EDI_val.66, %185, !mcsema_real_eip !43
  %196 = and i32 %194, %195, !mcsema_real_eip !43
  %197 = lshr i32 %196, 31, !mcsema_real_eip !43
  %198 = and i32 %197, 1, !mcsema_real_eip !43
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !43
  store i1 %199, i1* %OF, !mcsema_real_eip !43
  %200 = trunc i32 %185 to i8, !mcsema_real_eip !43
  %201 = call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !43
  %202 = trunc i8 %201 to i1, !mcsema_real_eip !43
  %203 = xor i1 %202, true, !mcsema_real_eip !43
  store i1 %203, i1* %PF, !mcsema_real_eip !43
  %204 = icmp ult i32 %185, %EDI_val.66, !mcsema_real_eip !43
  store i1 %204, i1* %CF, !mcsema_real_eip !43
  %205 = zext i32 %185 to i64, !mcsema_real_eip !43
  store i64 %205, i64* %XDI, !mcsema_real_eip !43
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !44
  %206 = add i64 %RBP_val.69, -4, !mcsema_real_eip !44
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !44
  %EDI.70 = bitcast i64* %XDI to i32*, !mcsema_real_eip !44
  %EDI_val.71 = load i32, i32* %EDI.70, !mcsema_real_eip !44
  %208 = ptrtoint i64* %207 to i64, !mcsema_real_eip !44
  %209 = inttoptr i64 %208 to i32*, !mcsema_real_eip !44
  store i32 %EDI_val.71, i32* %209, !mcsema_real_eip !44
  br label %block_0x53
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

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
!6 = !{i64 109}
!7 = !{i64 116}
!8 = !{i64 121}
!9 = !{i64 131}
!10 = !{i64 133}
!11 = !{i64 135}
!12 = !{i64 140}
!13 = !{i64 142}
!14 = !{i64 145}
!15 = !{i64 147}
!16 = !{i64 151}
!17 = !{i64 152}
!18 = !{i64 0}
!19 = !{i64 1}
!20 = !{i64 4}
!21 = !{i64 8}
!22 = !{i64 13}
!23 = !{i64 16}
!24 = !{i64 19}
!25 = !{i64 25}
!26 = !{i64 27}
!27 = !{i64 30}
!28 = !{i64 36}
!29 = !{i64 43}
!30 = !{i64 83}
!31 = !{i64 86}
!32 = !{i64 90}
!33 = !{i64 91}
!34 = !{i64 48}
!35 = !{i64 51}
!36 = !{i64 54}
!37 = !{i64 56}
!38 = !{i64 61}
!39 = !{i64 64}
!40 = !{i64 67}
!41 = !{i64 70}
!42 = !{i64 75}
!43 = !{i64 78}
!44 = !{i64 80}
