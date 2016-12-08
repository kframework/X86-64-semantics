; ModuleID = 'Output/test_31.clang.bc'
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
  %3 = sext i8 16 to i64, !mcsema_real_eip !4
  %4 = sub i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %5 = xor i64 %4, %RSP_val.3, !mcsema_real_eip !4
  %6 = xor i64 %5, %3, !mcsema_real_eip !4
  %7 = and i64 %6, 16, !mcsema_real_eip !4
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !4
  store i1 %8, i1* %AF, !mcsema_real_eip !4
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !4
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !4
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !4
  %12 = xor i1 %11, true, !mcsema_real_eip !4
  store i1 %12, i1* %PF, !mcsema_real_eip !4
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !4
  store i1 %13, i1* %ZF, !mcsema_real_eip !4
  %14 = lshr i64 %4, 63, !mcsema_real_eip !4
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !4
  store i1 %15, i1* %SF, !mcsema_real_eip !4
  %16 = icmp ult i64 %RSP_val.3, %3, !mcsema_real_eip !4
  store i1 %16, i1* %CF, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = xor i64 %RSP_val.3, %4, !mcsema_real_eip !4
  %19 = and i64 %17, %18, !mcsema_real_eip !4
  %20 = lshr i64 %19, 63, !mcsema_real_eip !4
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !4
  store i1 %21, i1* %OF, !mcsema_real_eip !4
  store i64 %4, i64* %XSP, !mcsema_real_eip !4
  %22 = zext i32 5 to i64, !mcsema_real_eip !5
  store i64 %22, i64* %XDI, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.4, -4, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %26, !mcsema_real_eip !6
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !7
  %27 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !7
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %28, !mcsema_real_eip !7
  store i64 %27, i64* %XSP, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !7
  %29 = getelementptr %0, %0* @data_0x99, i64 0, i32 0, !mcsema_real_eip !8
  %30 = ptrtoint [4 x i8]* %29 to i64, !mcsema_real_eip !8
  %31 = add i64 %30, 0, !mcsema_real_eip !8
  store i64 %31, i64* %XDI, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !9
  %32 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %32, i64* %XSI, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, !mcsema_real_eip !10
  %RDI_val.9 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSI_val.10 = load i64, i64* %XSI, !mcsema_real_eip !11
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !11
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !11
  %33 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !11
  %34 = load i64, i64* %33, !mcsema_real_eip !11
  %35 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !11
  %37 = load i64, i64* %36, !mcsema_real_eip !11
  %38 = add i64 %35, 8, !mcsema_real_eip !11
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !11
  %40 = load i64, i64* %39, !mcsema_real_eip !11
  %41 = add i64 %38, 8, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !11
  %43 = load i64, i64* %42, !mcsema_real_eip !11
  %44 = add i64 %41, 8, !mcsema_real_eip !11
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !11
  %46 = load i64, i64* %45, !mcsema_real_eip !11
  %47 = add i64 %44, 8, !mcsema_real_eip !11
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !11
  %49 = load i64, i64* %48, !mcsema_real_eip !11
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !11
  %50 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !11
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %51, !mcsema_real_eip !11
  store i64 %50, i64* %XSP, !mcsema_real_eip !11
  %52 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.9, i64 %RSI_val.10, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49), !mcsema_real_eip !11
  store i64 %52, i64* %XAX, !mcsema_real_eip !11
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.18 = load i32, i32* %ESI.17, !mcsema_real_eip !12
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !12
  %53 = xor i32 %ESI_val.18, %ESI_val.20, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  %54 = lshr i32 %53, 31, !mcsema_real_eip !12
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !12
  store i1 %55, i1* %SF, !mcsema_real_eip !12
  %56 = icmp eq i32 %53, 0, !mcsema_real_eip !12
  store i1 %56, i1* %ZF, !mcsema_real_eip !12
  %57 = trunc i32 %53 to i8, !mcsema_real_eip !12
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !12
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !12
  %60 = xor i1 %59, true, !mcsema_real_eip !12
  store i1 %60, i1* %PF, !mcsema_real_eip !12
  store i1 undef, i1* %AF, !mcsema_real_eip !12
  %61 = zext i32 %53 to i64, !mcsema_real_eip !12
  store i64 %61, i64* %XSI, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %62 = add i64 %RBP_val.21, -8, !mcsema_real_eip !13
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !13
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !13
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !13
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %65, !mcsema_real_eip !13
  %ESI.24 = bitcast i64* %XSI to i32*, !mcsema_real_eip !14
  %ESI_val.25 = load i32, i32* %ESI.24, !mcsema_real_eip !14
  %66 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %66, i64* %XAX, !mcsema_real_eip !14
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !15
  %67 = add i64 16, %RSP_val.26, !mcsema_real_eip !15
  %68 = xor i64 %67, %RSP_val.26, !mcsema_real_eip !15
  %69 = xor i64 %68, 16, !mcsema_real_eip !15
  %70 = and i64 %69, 16, !mcsema_real_eip !15
  %71 = icmp ne i64 %70, 0, !mcsema_real_eip !15
  store i1 %71, i1* %AF, !mcsema_real_eip !15
  %72 = lshr i64 %67, 63, !mcsema_real_eip !15
  %73 = trunc i64 %72 to i1, !mcsema_real_eip !15
  store i1 %73, i1* %SF, !mcsema_real_eip !15
  %74 = icmp eq i64 %67, 0, !mcsema_real_eip !15
  store i1 %74, i1* %ZF, !mcsema_real_eip !15
  %75 = xor i64 %RSP_val.26, 16, !mcsema_real_eip !15
  %76 = xor i64 %75, -1, !mcsema_real_eip !15
  %77 = xor i64 %RSP_val.26, %67, !mcsema_real_eip !15
  %78 = and i64 %76, %77, !mcsema_real_eip !15
  %79 = lshr i64 %78, 63, !mcsema_real_eip !15
  %80 = and i64 %79, 1, !mcsema_real_eip !15
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !15
  store i1 %81, i1* %OF, !mcsema_real_eip !15
  %82 = trunc i64 %67 to i8, !mcsema_real_eip !15
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !15
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !15
  %85 = xor i1 %84, true, !mcsema_real_eip !15
  store i1 %85, i1* %PF, !mcsema_real_eip !15
  %86 = icmp ult i64 %67, %RSP_val.26, !mcsema_real_eip !15
  store i1 %86, i1* %CF, !mcsema_real_eip !15
  store i64 %67, i64* %XSP, !mcsema_real_eip !15
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !16
  %87 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !16
  %88 = load i64, i64* %87, !mcsema_real_eip !16
  store i64 %88, i64* %XBP, !mcsema_real_eip !16
  %89 = add i64 %RSP_val.27, 8, !mcsema_real_eip !16
  store i64 %89, i64* %XSP, !mcsema_real_eip !16
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !17
  %90 = add i64 %RSP_val.28, 8, !mcsema_real_eip !17
  %91 = inttoptr i64 %RSP_val.28 to i64*, !mcsema_real_eip !17
  %92 = load i64, i64* %91, !mcsema_real_eip !17
  store i64 %92, i64* %XIP, !mcsema_real_eip !17
  store i64 %90, i64* %XSP, !mcsema_real_eip !17
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
  %3 = sext i8 16 to i64, !mcsema_real_eip !20
  %4 = sub i64 %RSP_val.32, %3, !mcsema_real_eip !20
  %5 = xor i64 %4, %RSP_val.32, !mcsema_real_eip !20
  %6 = xor i64 %5, %3, !mcsema_real_eip !20
  %7 = and i64 %6, 16, !mcsema_real_eip !20
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !20
  store i1 %8, i1* %AF, !mcsema_real_eip !20
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !20
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !20
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !20
  %12 = xor i1 %11, true, !mcsema_real_eip !20
  store i1 %12, i1* %PF, !mcsema_real_eip !20
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !20
  store i1 %13, i1* %ZF, !mcsema_real_eip !20
  %14 = lshr i64 %4, 63, !mcsema_real_eip !20
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !20
  store i1 %15, i1* %SF, !mcsema_real_eip !20
  %16 = icmp ult i64 %RSP_val.32, %3, !mcsema_real_eip !20
  store i1 %16, i1* %CF, !mcsema_real_eip !20
  %17 = xor i64 %RSP_val.32, %3, !mcsema_real_eip !20
  %18 = xor i64 %RSP_val.32, %4, !mcsema_real_eip !20
  %19 = and i64 %17, %18, !mcsema_real_eip !20
  %20 = lshr i64 %19, 63, !mcsema_real_eip !20
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !20
  store i1 %21, i1* %OF, !mcsema_real_eip !20
  store i64 %4, i64* %XSP, !mcsema_real_eip !20
  %22 = zext i32 1 to i64, !mcsema_real_eip !21
  store i64 %22, i64* %XAX, !mcsema_real_eip !21
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !22
  %23 = add i64 %RBP_val.33, -8, !mcsema_real_eip !22
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !22
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, !mcsema_real_eip !22
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !22
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %26, !mcsema_real_eip !22
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !23
  %27 = add i64 %RBP_val.36, -8, !mcsema_real_eip !23
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !23
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !23
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !23
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !23
  %31 = load i32, i32* %30, !mcsema_real_eip !23
  %32 = sub i32 %EAX_val.38, %31, !mcsema_real_eip !23
  %33 = xor i32 %32, %EAX_val.38, !mcsema_real_eip !23
  %34 = xor i32 %33, %31, !mcsema_real_eip !23
  %35 = and i32 %34, 16, !mcsema_real_eip !23
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !23
  store i1 %36, i1* %AF, !mcsema_real_eip !23
  %37 = trunc i32 %32 to i8, !mcsema_real_eip !23
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !23
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !23
  %40 = xor i1 %39, true, !mcsema_real_eip !23
  store i1 %40, i1* %PF, !mcsema_real_eip !23
  %41 = icmp eq i32 %32, 0, !mcsema_real_eip !23
  store i1 %41, i1* %ZF, !mcsema_real_eip !23
  %42 = lshr i32 %32, 31, !mcsema_real_eip !23
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !23
  store i1 %43, i1* %SF, !mcsema_real_eip !23
  %44 = icmp ult i32 %EAX_val.38, %31, !mcsema_real_eip !23
  store i1 %44, i1* %CF, !mcsema_real_eip !23
  %45 = xor i32 %EAX_val.38, %31, !mcsema_real_eip !23
  %46 = xor i32 %EAX_val.38, %32, !mcsema_real_eip !23
  %47 = and i32 %45, %46, !mcsema_real_eip !23
  %48 = lshr i32 %47, 31, !mcsema_real_eip !23
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !23
  store i1 %49, i1* %OF, !mcsema_real_eip !23
  %50 = load i1, i1* %ZF, !mcsema_real_eip !24
  %51 = icmp eq i1 %50, true, !mcsema_real_eip !24
  br i1 %51, label %block_0x24, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %block_0x0
  %EAX.40 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.41 = load i32, i32* %EAX.40, !mcsema_real_eip !25
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !25
  %52 = xor i32 %EAX_val.41, %EAX_val.43, !mcsema_real_eip !25
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  %53 = lshr i32 %52, 31, !mcsema_real_eip !25
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !25
  store i1 %54, i1* %SF, !mcsema_real_eip !25
  %55 = icmp eq i32 %52, 0, !mcsema_real_eip !25
  store i1 %55, i1* %ZF, !mcsema_real_eip !25
  %56 = trunc i32 %52 to i8, !mcsema_real_eip !25
  %57 = call i8 @llvm.ctpop.i8(i8 %56), !mcsema_real_eip !25
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !25
  %59 = xor i1 %58, true, !mcsema_real_eip !25
  store i1 %59, i1* %PF, !mcsema_real_eip !25
  store i1 undef, i1* %AF, !mcsema_real_eip !25
  %60 = zext i32 %52 to i64, !mcsema_real_eip !25
  store i64 %60, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !26
  %61 = add i64 %RBP_val.44, -8, !mcsema_real_eip !26
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !26
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !26
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !26
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !26
  %65 = load i32, i32* %64, !mcsema_real_eip !26
  %66 = sub i32 %EAX_val.46, %65, !mcsema_real_eip !26
  %67 = xor i32 %66, %EAX_val.46, !mcsema_real_eip !26
  %68 = xor i32 %67, %65, !mcsema_real_eip !26
  %69 = and i32 %68, 16, !mcsema_real_eip !26
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !26
  store i1 %70, i1* %AF, !mcsema_real_eip !26
  %71 = trunc i32 %66 to i8, !mcsema_real_eip !26
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !26
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !26
  %74 = xor i1 %73, true, !mcsema_real_eip !26
  store i1 %74, i1* %PF, !mcsema_real_eip !26
  %75 = icmp eq i32 %66, 0, !mcsema_real_eip !26
  store i1 %75, i1* %ZF, !mcsema_real_eip !26
  %76 = lshr i32 %66, 31, !mcsema_real_eip !26
  %77 = trunc i32 %76 to i1, !mcsema_real_eip !26
  store i1 %77, i1* %SF, !mcsema_real_eip !26
  %78 = icmp ult i32 %EAX_val.46, %65, !mcsema_real_eip !26
  store i1 %78, i1* %CF, !mcsema_real_eip !26
  %79 = xor i32 %EAX_val.46, %65, !mcsema_real_eip !26
  %80 = xor i32 %EAX_val.46, %66, !mcsema_real_eip !26
  %81 = and i32 %79, %80, !mcsema_real_eip !26
  %82 = lshr i32 %81, 31, !mcsema_real_eip !26
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !26
  store i1 %83, i1* %OF, !mcsema_real_eip !26
  %84 = load i1, i1* %ZF, !mcsema_real_eip !27
  %85 = icmp eq i1 %84, false, !mcsema_real_eip !27
  br i1 %85, label %block_0x30, label %block_0x24, !mcsema_real_eip !27

block_0x24:                                       ; preds = %block_0x19, %block_0x0
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !28
  %86 = add i64 %RBP_val.39, -4, !mcsema_real_eip !28
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !28
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !28
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !28
  store i32 1, i32* %89, !mcsema_real_eip !28
  br label %block_0x53, !mcsema_real_eip !29

block_0x53:                                       ; preds = %block_0x30, %block_0x24
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !30
  %90 = add i64 %RBP_val.47, -4, !mcsema_real_eip !30
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !30
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !30
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !30
  %94 = load i32, i32* %93, !mcsema_real_eip !30
  %95 = zext i32 %94 to i64, !mcsema_real_eip !30
  store i64 %95, i64* %XAX, !mcsema_real_eip !30
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !31
  %96 = add i64 16, %RSP_val.48, !mcsema_real_eip !31
  %97 = xor i64 %96, %RSP_val.48, !mcsema_real_eip !31
  %98 = xor i64 %97, 16, !mcsema_real_eip !31
  %99 = and i64 %98, 16, !mcsema_real_eip !31
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !31
  store i1 %100, i1* %AF, !mcsema_real_eip !31
  %101 = lshr i64 %96, 63, !mcsema_real_eip !31
  %102 = trunc i64 %101 to i1, !mcsema_real_eip !31
  store i1 %102, i1* %SF, !mcsema_real_eip !31
  %103 = icmp eq i64 %96, 0, !mcsema_real_eip !31
  store i1 %103, i1* %ZF, !mcsema_real_eip !31
  %104 = xor i64 %RSP_val.48, 16, !mcsema_real_eip !31
  %105 = xor i64 %104, -1, !mcsema_real_eip !31
  %106 = xor i64 %RSP_val.48, %96, !mcsema_real_eip !31
  %107 = and i64 %105, %106, !mcsema_real_eip !31
  %108 = lshr i64 %107, 63, !mcsema_real_eip !31
  %109 = and i64 %108, 1, !mcsema_real_eip !31
  %110 = trunc i64 %109 to i1, !mcsema_real_eip !31
  store i1 %110, i1* %OF, !mcsema_real_eip !31
  %111 = trunc i64 %96 to i8, !mcsema_real_eip !31
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !31
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !31
  %114 = xor i1 %113, true, !mcsema_real_eip !31
  store i1 %114, i1* %PF, !mcsema_real_eip !31
  %115 = icmp ult i64 %96, %RSP_val.48, !mcsema_real_eip !31
  store i1 %115, i1* %CF, !mcsema_real_eip !31
  store i64 %96, i64* %XSP, !mcsema_real_eip !31
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !32
  %116 = inttoptr i64 %RSP_val.49 to i64*, !mcsema_real_eip !32
  %117 = load i64, i64* %116, !mcsema_real_eip !32
  store i64 %117, i64* %XBP, !mcsema_real_eip !32
  %118 = add i64 %RSP_val.49, 8, !mcsema_real_eip !32
  store i64 %118, i64* %XSP, !mcsema_real_eip !32
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !33
  %119 = add i64 %RSP_val.50, 8, !mcsema_real_eip !33
  %120 = inttoptr i64 %RSP_val.50 to i64*, !mcsema_real_eip !33
  %121 = load i64, i64* %120, !mcsema_real_eip !33
  store i64 %121, i64* %XIP, !mcsema_real_eip !33
  store i64 %119, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x30:                                       ; preds = %block_0x19
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !34
  %122 = add i64 %RBP_val.51, -8, !mcsema_real_eip !34
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !34
  %124 = ptrtoint i64* %123 to i64, !mcsema_real_eip !34
  %125 = inttoptr i64 %124 to i32*, !mcsema_real_eip !34
  %126 = load i32, i32* %125, !mcsema_real_eip !34
  %127 = zext i32 %126 to i64, !mcsema_real_eip !34
  store i64 %127, i64* %XAX, !mcsema_real_eip !34
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !35
  %128 = sub i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %129 = xor i32 %128, %EAX_val.53, !mcsema_real_eip !35
  %130 = xor i32 %129, 1, !mcsema_real_eip !35
  %131 = and i32 %130, 16, !mcsema_real_eip !35
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !35
  store i1 %132, i1* %AF, !mcsema_real_eip !35
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !35
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !35
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !35
  %136 = xor i1 %135, true, !mcsema_real_eip !35
  store i1 %136, i1* %PF, !mcsema_real_eip !35
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !35
  store i1 %137, i1* %ZF, !mcsema_real_eip !35
  %138 = lshr i32 %128, 31, !mcsema_real_eip !35
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !35
  store i1 %139, i1* %SF, !mcsema_real_eip !35
  %140 = icmp ult i32 %EAX_val.53, 1, !mcsema_real_eip !35
  store i1 %140, i1* %CF, !mcsema_real_eip !35
  %141 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %142 = xor i32 %EAX_val.53, %128, !mcsema_real_eip !35
  %143 = and i32 %141, %142, !mcsema_real_eip !35
  %144 = lshr i32 %143, 31, !mcsema_real_eip !35
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !35
  store i1 %145, i1* %OF, !mcsema_real_eip !35
  %146 = zext i32 %128 to i64, !mcsema_real_eip !35
  store i64 %146, i64* %XAX, !mcsema_real_eip !35
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !36
  %147 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !36
  store i64 %147, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !37
  %148 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !37
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %149, !mcsema_real_eip !37
  store i64 %148, i64* %XSP, !mcsema_real_eip !37
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !37
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !38
  %150 = add i64 %RBP_val.57, -8, !mcsema_real_eip !38
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !38
  %152 = ptrtoint i64* %151 to i64, !mcsema_real_eip !38
  %153 = inttoptr i64 %152 to i32*, !mcsema_real_eip !38
  %154 = load i32, i32* %153, !mcsema_real_eip !38
  %155 = zext i32 %154 to i64, !mcsema_real_eip !38
  store i64 %155, i64* %XDI, !mcsema_real_eip !38
  %EDI.58 = bitcast i64* %XDI to i32*, !mcsema_real_eip !39
  %EDI_val.59 = load i32, i32* %EDI.58, !mcsema_real_eip !39
  %156 = sub i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %157 = xor i32 %156, %EDI_val.59, !mcsema_real_eip !39
  %158 = xor i32 %157, 2, !mcsema_real_eip !39
  %159 = and i32 %158, 16, !mcsema_real_eip !39
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !39
  store i1 %160, i1* %AF, !mcsema_real_eip !39
  %161 = trunc i32 %156 to i8, !mcsema_real_eip !39
  %162 = call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !39
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !39
  %164 = xor i1 %163, true, !mcsema_real_eip !39
  store i1 %164, i1* %PF, !mcsema_real_eip !39
  %165 = icmp eq i32 %156, 0, !mcsema_real_eip !39
  store i1 %165, i1* %ZF, !mcsema_real_eip !39
  %166 = lshr i32 %156, 31, !mcsema_real_eip !39
  %167 = trunc i32 %166 to i1, !mcsema_real_eip !39
  store i1 %167, i1* %SF, !mcsema_real_eip !39
  %168 = icmp ult i32 %EDI_val.59, 2, !mcsema_real_eip !39
  store i1 %168, i1* %CF, !mcsema_real_eip !39
  %169 = xor i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %170 = xor i32 %EDI_val.59, %156, !mcsema_real_eip !39
  %171 = and i32 %169, %170, !mcsema_real_eip !39
  %172 = lshr i32 %171, 31, !mcsema_real_eip !39
  %173 = trunc i32 %172 to i1, !mcsema_real_eip !39
  store i1 %173, i1* %OF, !mcsema_real_eip !39
  %174 = zext i32 %156 to i64, !mcsema_real_eip !39
  store i64 %174, i64* %XDI, !mcsema_real_eip !39
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !40
  %175 = add i64 %RBP_val.60, -12, !mcsema_real_eip !40
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !40
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !40
  %177 = ptrtoint i64* %176 to i64, !mcsema_real_eip !40
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.62, i32* %178, !mcsema_real_eip !40
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %179 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %180, !mcsema_real_eip !41
  store i64 %179, i64* %XSP, !mcsema_real_eip !41
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !41
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !42
  %181 = add i64 %RBP_val.64, -12, !mcsema_real_eip !42
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !42
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !42
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !42
  %185 = load i32, i32* %184, !mcsema_real_eip !42
  %186 = zext i32 %185 to i64, !mcsema_real_eip !42
  store i64 %186, i64* %XDI, !mcsema_real_eip !42
  %EDI.65 = bitcast i64* %XDI to i32*, !mcsema_real_eip !43
  %EDI_val.66 = load i32, i32* %EDI.65, !mcsema_real_eip !43
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !43
  %187 = add i32 %EAX_val.68, %EDI_val.66, !mcsema_real_eip !43
  %188 = xor i32 %187, %EDI_val.66, !mcsema_real_eip !43
  %189 = xor i32 %188, %EAX_val.68, !mcsema_real_eip !43
  %190 = and i32 %189, 16, !mcsema_real_eip !43
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !43
  store i1 %191, i1* %AF, !mcsema_real_eip !43
  %192 = lshr i32 %187, 31, !mcsema_real_eip !43
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !43
  store i1 %193, i1* %SF, !mcsema_real_eip !43
  %194 = icmp eq i32 %187, 0, !mcsema_real_eip !43
  store i1 %194, i1* %ZF, !mcsema_real_eip !43
  %195 = xor i32 %EDI_val.66, %EAX_val.68, !mcsema_real_eip !43
  %196 = xor i32 %195, -1, !mcsema_real_eip !43
  %197 = xor i32 %EDI_val.66, %187, !mcsema_real_eip !43
  %198 = and i32 %196, %197, !mcsema_real_eip !43
  %199 = lshr i32 %198, 31, !mcsema_real_eip !43
  %200 = and i32 %199, 1, !mcsema_real_eip !43
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !43
  store i1 %201, i1* %OF, !mcsema_real_eip !43
  %202 = trunc i32 %187 to i8, !mcsema_real_eip !43
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !43
  %204 = trunc i8 %203 to i1, !mcsema_real_eip !43
  %205 = xor i1 %204, true, !mcsema_real_eip !43
  store i1 %205, i1* %PF, !mcsema_real_eip !43
  %206 = icmp ult i32 %187, %EDI_val.66, !mcsema_real_eip !43
  store i1 %206, i1* %CF, !mcsema_real_eip !43
  %207 = zext i32 %187 to i64, !mcsema_real_eip !43
  store i64 %207, i64* %XDI, !mcsema_real_eip !43
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !44
  %208 = add i64 %RBP_val.69, -4, !mcsema_real_eip !44
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !44
  %EDI.70 = bitcast i64* %XDI to i32*, !mcsema_real_eip !44
  %EDI_val.71 = load i32, i32* %EDI.70, !mcsema_real_eip !44
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !44
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !44
  store i32 %EDI_val.71, i32* %211, !mcsema_real_eip !44
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
