; ModuleID = 'Output/test_34.clang.bc'
source_filename = "Output/test_34.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x40 = internal global %0 <{ [4 x i8] c"\14\00\00\00" }>, align 64
@data_0x44 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x48 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"?\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %22 = getelementptr %1, %1* @data_0x44, i64 0, i32 0, !mcsema_real_eip !5
  %23 = ptrtoint [4 x i8]* %22 to i64, !mcsema_real_eip !5
  %24 = add i64 %23, 0, !mcsema_real_eip !5
  store i64 %24, i64* %XDI, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %25 = add i64 %RBP_val.4, -4, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !6
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !6
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %28, !mcsema_real_eip !6
  %29 = getelementptr %0, %0* @data_0x40, i64 0, i32 0, !mcsema_real_eip !7
  %30 = ptrtoint [4 x i8]* %29 to i64, !mcsema_real_eip !7
  %31 = add i64 %30, 0, !mcsema_real_eip !7
  %32 = add i64 0, %31, !mcsema_real_eip !7
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !7
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !7
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %35, !mcsema_real_eip !7
  %36 = getelementptr %0, %0* @data_0x40, i64 0, i32 0, !mcsema_real_eip !8
  %37 = ptrtoint [4 x i8]* %36 to i64, !mcsema_real_eip !8
  %38 = add i64 %37, 0, !mcsema_real_eip !8
  %39 = add i64 0, %38, !mcsema_real_eip !8
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !8
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !8
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !8
  %43 = load i32, i32* %42, !mcsema_real_eip !8
  %44 = zext i32 %43 to i64, !mcsema_real_eip !8
  store i64 %44, i64* %XSI, !mcsema_real_eip !8
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.5, !mcsema_real_eip !9
  %RDI_val.6 = load i64, i64* %XDI, !mcsema_real_eip !10
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !10
  %RDX_val.8 = load i64, i64* %XDX, !mcsema_real_eip !10
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !10
  %R8_val.10 = load i64, i64* %R8, !mcsema_real_eip !10
  %R9_val.11 = load i64, i64* %R9, !mcsema_real_eip !10
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !10
  %45 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !10
  %46 = load i64, i64* %45, !mcsema_real_eip !10
  %47 = add i64 %RSP_val.12, 8, !mcsema_real_eip !10
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !10
  %49 = load i64, i64* %48, !mcsema_real_eip !10
  %50 = add i64 %47, 8, !mcsema_real_eip !10
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !10
  %52 = load i64, i64* %51, !mcsema_real_eip !10
  %53 = add i64 %50, 8, !mcsema_real_eip !10
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !10
  %55 = load i64, i64* %54, !mcsema_real_eip !10
  %56 = add i64 %53, 8, !mcsema_real_eip !10
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !10
  %58 = load i64, i64* %57, !mcsema_real_eip !10
  %59 = add i64 %56, 8, !mcsema_real_eip !10
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !10
  %61 = load i64, i64* %60, !mcsema_real_eip !10
  %62 = add i64 %59, 8, !mcsema_real_eip !10
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !10
  %64 = load i64, i64* %63, !mcsema_real_eip !10
  %65 = add i64 %62, 8, !mcsema_real_eip !10
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !10
  %67 = load i64, i64* %66, !mcsema_real_eip !10
  %68 = add i64 %65, 8, !mcsema_real_eip !10
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !10
  %70 = load i64, i64* %69, !mcsema_real_eip !10
  %71 = add i64 %68, 8, !mcsema_real_eip !10
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !10
  %73 = load i64, i64* %72, !mcsema_real_eip !10
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %74 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !10
  store i64 -2415393069852865332, i64* %75, !mcsema_real_eip !10
  store i64 %74, i64* %XSP, !mcsema_real_eip !10
  %76 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67, i64 %70, i64 %73), !mcsema_real_eip !10
  store i64 %76, i64* %XAX, !mcsema_real_eip !10
  %ESI.14 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  %ESI_val.15 = load i32, i32* %ESI.14, !mcsema_real_eip !11
  %ESI.16 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  %ESI_val.17 = load i32, i32* %ESI.16, !mcsema_real_eip !11
  %77 = xor i32 %ESI_val.15, %ESI_val.17, !mcsema_real_eip !11
  store i1 false, i1* %CF, !mcsema_real_eip !11
  store i1 false, i1* %OF, !mcsema_real_eip !11
  %78 = lshr i32 %77, 31, !mcsema_real_eip !11
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !11
  store i1 %79, i1* %SF, !mcsema_real_eip !11
  %80 = icmp eq i32 %77, 0, !mcsema_real_eip !11
  store i1 %80, i1* %ZF, !mcsema_real_eip !11
  %81 = trunc i32 %77 to i8, !mcsema_real_eip !11
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !11
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !11
  %84 = xor i1 %83, true, !mcsema_real_eip !11
  store i1 %84, i1* %PF, !mcsema_real_eip !11
  store i1 undef, i1* %AF, !mcsema_real_eip !11
  %85 = zext i32 %77 to i64, !mcsema_real_eip !11
  store i64 %85, i64* %XSI, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %86 = add i64 %RBP_val.18, -8, !mcsema_real_eip !12
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !12
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !12
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !12
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !12
  store i32 %EAX_val.20, i32* %89, !mcsema_real_eip !12
  %ESI.21 = bitcast i64* %XSI to i32*, !mcsema_real_eip !13
  %ESI_val.22 = load i32, i32* %ESI.21, !mcsema_real_eip !13
  %90 = zext i32 %ESI_val.22 to i64, !mcsema_real_eip !13
  store i64 %90, i64* %XAX, !mcsema_real_eip !13
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !14
  %91 = add i64 16, %RSP_val.23, !mcsema_real_eip !14
  %92 = xor i64 %91, %RSP_val.23, !mcsema_real_eip !14
  %93 = xor i64 %92, 16, !mcsema_real_eip !14
  %94 = and i64 %93, 16, !mcsema_real_eip !14
  %95 = icmp ne i64 %94, 0, !mcsema_real_eip !14
  store i1 %95, i1* %AF, !mcsema_real_eip !14
  %96 = lshr i64 %91, 63, !mcsema_real_eip !14
  %97 = trunc i64 %96 to i1, !mcsema_real_eip !14
  store i1 %97, i1* %SF, !mcsema_real_eip !14
  %98 = icmp eq i64 %91, 0, !mcsema_real_eip !14
  store i1 %98, i1* %ZF, !mcsema_real_eip !14
  %99 = xor i64 %RSP_val.23, 16, !mcsema_real_eip !14
  %100 = xor i64 %99, -1, !mcsema_real_eip !14
  %101 = xor i64 %RSP_val.23, %91, !mcsema_real_eip !14
  %102 = and i64 %100, %101, !mcsema_real_eip !14
  %103 = lshr i64 %102, 63, !mcsema_real_eip !14
  %104 = and i64 %103, 1, !mcsema_real_eip !14
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !14
  store i1 %105, i1* %OF, !mcsema_real_eip !14
  %106 = trunc i64 %91 to i8, !mcsema_real_eip !14
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !14
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !14
  %109 = xor i1 %108, true, !mcsema_real_eip !14
  store i1 %109, i1* %PF, !mcsema_real_eip !14
  %110 = icmp ult i64 %91, %RSP_val.23, !mcsema_real_eip !14
  store i1 %110, i1* %CF, !mcsema_real_eip !14
  store i64 %91, i64* %XSP, !mcsema_real_eip !14
  %RSP_val.24 = load i64, i64* %XSP, !mcsema_real_eip !15
  %111 = inttoptr i64 %RSP_val.24 to i64*, !mcsema_real_eip !15
  %112 = load i64, i64* %111, !mcsema_real_eip !15
  store i64 %112, i64* %XBP, !mcsema_real_eip !15
  %113 = add i64 %RSP_val.24, 8, !mcsema_real_eip !15
  store i64 %113, i64* %XSP, !mcsema_real_eip !15
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !16
  %114 = add i64 %RSP_val.25, 8, !mcsema_real_eip !16
  %115 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !16
  %116 = load i64, i64* %115, !mcsema_real_eip !16
  store i64 %116, i64* %XIP, !mcsema_real_eip !16
  store i64 %114, i64* %XSP, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
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
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 25}
!8 = !{i64 36}
!9 = !{i64 43}
!10 = !{i64 45}
!11 = !{i64 50}
!12 = !{i64 52}
!13 = !{i64 55}
!14 = !{i64 57}
!15 = !{i64 61}
!16 = !{i64 62}
