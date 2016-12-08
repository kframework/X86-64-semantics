; ModuleID = 'Output/test_6.clang.bc'
source_filename = "Output/test_6.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x1b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
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
  br label %block_0xa0, !mcsema_real_eip !2

block_0xa0:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sext i8 96 to i64, !mcsema_real_eip !4
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
  %22 = zext i32 40 to i64, !mcsema_real_eip !5
  store i64 %22, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %23 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %23, i64* %XCX, !mcsema_real_eip !6
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.6, -4, !mcsema_real_eip !7
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !7
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %27, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.7, -8, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !8
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !8
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %31, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %32 = add i64 %RBP_val.10, -16, !mcsema_real_eip !9
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !9
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %33, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !10
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !10
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !11
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %34 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %35, !mcsema_real_eip !11
  store i64 %34, i64* %XSP, !mcsema_real_eip !11
  %36 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.13), !mcsema_real_eip !11
  store i64 %36, i64* %XAX, !mcsema_real_eip !11
  %37 = zext i32 40 to i64, !mcsema_real_eip !12
  store i64 %37, i64* %XDX, !mcsema_real_eip !12
  %EDX.15 = bitcast i64* %XDX to i32*, !mcsema_real_eip !13
  %EDX_val.16 = load i32, i32* %EDX.15, !mcsema_real_eip !13
  %38 = zext i32 %EDX_val.16 to i64, !mcsema_real_eip !13
  store i64 %38, i64* %XDI, !mcsema_real_eip !13
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !14
  %39 = add i64 %RBP_val.17, -24, !mcsema_real_eip !14
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !14
  %RAX_val.18 = load i64, i64* %XAX, !mcsema_real_eip !14
  store i64 %RAX_val.18, i64* %40, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, !mcsema_real_eip !15
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %41 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !15
  store i64 -2415393069852865332, i64* %42, !mcsema_real_eip !15
  store i64 %41, i64* %XSP, !mcsema_real_eip !15
  %43 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19), !mcsema_real_eip !15
  store i64 %43, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %44 = add i64 %RBP_val.21, -32, !mcsema_real_eip !16
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !16
  %RAX_val.22 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.22, i64* %45, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !17
  %46 = add i64 %RBP_val.23, -36, !mcsema_real_eip !17
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !17
  %48 = ptrtoint i64* %47 to i64, !mcsema_real_eip !17
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %49, !mcsema_real_eip !17
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %block_0xea, %block_0xa0
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %50 = add i64 %RBP_val.24, -36, !mcsema_real_eip !18
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !18
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !18
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !18
  %54 = load i32, i32* %53, !mcsema_real_eip !18
  %55 = sub i32 %54, 10, !mcsema_real_eip !18
  %56 = xor i32 %55, %54, !mcsema_real_eip !18
  %57 = xor i32 %56, 10, !mcsema_real_eip !18
  %58 = and i32 %57, 16, !mcsema_real_eip !18
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !18
  store i1 %59, i1* %AF, !mcsema_real_eip !18
  %60 = trunc i32 %55 to i8, !mcsema_real_eip !18
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !18
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !18
  %63 = xor i1 %62, true, !mcsema_real_eip !18
  store i1 %63, i1* %PF, !mcsema_real_eip !18
  %64 = icmp eq i32 %55, 0, !mcsema_real_eip !18
  store i1 %64, i1* %ZF, !mcsema_real_eip !18
  %65 = lshr i32 %55, 31, !mcsema_real_eip !18
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !18
  store i1 %66, i1* %SF, !mcsema_real_eip !18
  %67 = icmp ult i32 %54, 10, !mcsema_real_eip !18
  store i1 %67, i1* %CF, !mcsema_real_eip !18
  %68 = xor i32 %54, 10, !mcsema_real_eip !18
  %69 = xor i32 %54, %55, !mcsema_real_eip !18
  %70 = and i32 %68, %69, !mcsema_real_eip !18
  %71 = lshr i32 %70, 31, !mcsema_real_eip !18
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !18
  store i1 %72, i1* %OF, !mcsema_real_eip !18
  %73 = load i1, i1* %OF, !mcsema_real_eip !19
  %74 = load i1, i1* %SF, !mcsema_real_eip !19
  %75 = icmp eq i1 %74, %73, !mcsema_real_eip !19
  br i1 %75, label %block_0x10c, label %block_0xea, !mcsema_real_eip !19

block_0xea:                                       ; preds = %block_0xe0
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !20
  %76 = add i64 %RBP_val.26, -36, !mcsema_real_eip !20
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !20
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !20
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !20
  %80 = load i32, i32* %79, !mcsema_real_eip !20
  %81 = zext i32 %80 to i64, !mcsema_real_eip !20
  store i64 %81, i64* %XAX, !mcsema_real_eip !20
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !21
  %82 = add i32 10, %EAX_val.28, !mcsema_real_eip !21
  %83 = xor i32 %82, %EAX_val.28, !mcsema_real_eip !21
  %84 = xor i32 %83, 10, !mcsema_real_eip !21
  %85 = and i32 %84, 16, !mcsema_real_eip !21
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !21
  store i1 %86, i1* %AF, !mcsema_real_eip !21
  %87 = lshr i32 %82, 31, !mcsema_real_eip !21
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !21
  store i1 %88, i1* %SF, !mcsema_real_eip !21
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !21
  store i1 %89, i1* %ZF, !mcsema_real_eip !21
  %90 = xor i32 %EAX_val.28, 10, !mcsema_real_eip !21
  %91 = xor i32 %90, -1, !mcsema_real_eip !21
  %92 = xor i32 %EAX_val.28, %82, !mcsema_real_eip !21
  %93 = and i32 %91, %92, !mcsema_real_eip !21
  %94 = lshr i32 %93, 31, !mcsema_real_eip !21
  %95 = and i32 %94, 1, !mcsema_real_eip !21
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !21
  store i1 %96, i1* %OF, !mcsema_real_eip !21
  %97 = trunc i32 %82 to i8, !mcsema_real_eip !21
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !21
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !21
  %100 = xor i1 %99, true, !mcsema_real_eip !21
  store i1 %100, i1* %PF, !mcsema_real_eip !21
  %101 = icmp ult i32 %82, %EAX_val.28, !mcsema_real_eip !21
  store i1 %101, i1* %CF, !mcsema_real_eip !21
  %102 = zext i32 %82 to i64, !mcsema_real_eip !21
  store i64 %102, i64* %XAX, !mcsema_real_eip !21
  %EAX.29 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.30 = load i32, i32* %EAX.29, !mcsema_real_eip !22
  %103 = add i32 1, %EAX_val.30, !mcsema_real_eip !22
  %104 = xor i32 %103, %EAX_val.30, !mcsema_real_eip !22
  %105 = xor i32 %104, 1, !mcsema_real_eip !22
  %106 = and i32 %105, 16, !mcsema_real_eip !22
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !22
  store i1 %107, i1* %AF, !mcsema_real_eip !22
  %108 = lshr i32 %103, 31, !mcsema_real_eip !22
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !22
  store i1 %109, i1* %SF, !mcsema_real_eip !22
  %110 = icmp eq i32 %103, 0, !mcsema_real_eip !22
  store i1 %110, i1* %ZF, !mcsema_real_eip !22
  %111 = xor i32 %EAX_val.30, 1, !mcsema_real_eip !22
  %112 = xor i32 %111, -1, !mcsema_real_eip !22
  %113 = xor i32 %EAX_val.30, %103, !mcsema_real_eip !22
  %114 = and i32 %112, %113, !mcsema_real_eip !22
  %115 = lshr i32 %114, 31, !mcsema_real_eip !22
  %116 = and i32 %115, 1, !mcsema_real_eip !22
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !22
  store i1 %117, i1* %OF, !mcsema_real_eip !22
  %118 = trunc i32 %103 to i8, !mcsema_real_eip !22
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !22
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !22
  %121 = xor i1 %120, true, !mcsema_real_eip !22
  store i1 %121, i1* %PF, !mcsema_real_eip !22
  %122 = icmp ult i32 %103, %EAX_val.30, !mcsema_real_eip !22
  store i1 %122, i1* %CF, !mcsema_real_eip !22
  %123 = zext i32 %103 to i64, !mcsema_real_eip !22
  store i64 %123, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !23
  %124 = add i64 %RBP_val.31, -24, !mcsema_real_eip !23
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !23
  %126 = load i64, i64* %125, !mcsema_real_eip !23
  store i64 %126, i64* %XCX, !mcsema_real_eip !23
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !24
  %127 = add i64 %RBP_val.32, -36, !mcsema_real_eip !24
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !24
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !24
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !24
  %131 = load i32, i32* %130, !mcsema_real_eip !24
  %132 = sext i32 %131 to i64, !mcsema_real_eip !24
  store i64 %132, i64* %XDX, !mcsema_real_eip !24
  %RCX_val.33 = load i64, i64* %XCX, !mcsema_real_eip !25
  %133 = add i64 %RCX_val.33, 0, !mcsema_real_eip !25
  %RDX_val.34 = load i64, i64* %XDX, !mcsema_real_eip !25
  %134 = mul i64 %RDX_val.34, 4, !mcsema_real_eip !25
  %135 = add i64 %133, %134, !mcsema_real_eip !25
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !25
  %EAX.35 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.36 = load i32, i32* %EAX.35, !mcsema_real_eip !25
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !25
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.36, i32* %138, !mcsema_real_eip !25
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !26
  %139 = add i64 %RBP_val.37, -36, !mcsema_real_eip !26
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !26
  %141 = ptrtoint i64* %140 to i64, !mcsema_real_eip !26
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !26
  %143 = load i32, i32* %142, !mcsema_real_eip !26
  %144 = zext i32 %143 to i64, !mcsema_real_eip !26
  store i64 %144, i64* %XAX, !mcsema_real_eip !26
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !27
  %145 = add i32 1, %EAX_val.39, !mcsema_real_eip !27
  %146 = xor i32 %145, %EAX_val.39, !mcsema_real_eip !27
  %147 = xor i32 %146, 1, !mcsema_real_eip !27
  %148 = and i32 %147, 16, !mcsema_real_eip !27
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !27
  store i1 %149, i1* %AF, !mcsema_real_eip !27
  %150 = lshr i32 %145, 31, !mcsema_real_eip !27
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !27
  store i1 %151, i1* %SF, !mcsema_real_eip !27
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !27
  store i1 %152, i1* %ZF, !mcsema_real_eip !27
  %153 = xor i32 %EAX_val.39, 1, !mcsema_real_eip !27
  %154 = xor i32 %153, -1, !mcsema_real_eip !27
  %155 = xor i32 %EAX_val.39, %145, !mcsema_real_eip !27
  %156 = and i32 %154, %155, !mcsema_real_eip !27
  %157 = lshr i32 %156, 31, !mcsema_real_eip !27
  %158 = and i32 %157, 1, !mcsema_real_eip !27
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !27
  store i1 %159, i1* %OF, !mcsema_real_eip !27
  %160 = trunc i32 %145 to i8, !mcsema_real_eip !27
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !27
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !27
  %163 = xor i1 %162, true, !mcsema_real_eip !27
  store i1 %163, i1* %PF, !mcsema_real_eip !27
  %164 = icmp ult i32 %145, %EAX_val.39, !mcsema_real_eip !27
  store i1 %164, i1* %CF, !mcsema_real_eip !27
  %165 = zext i32 %145 to i64, !mcsema_real_eip !27
  store i64 %165, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !28
  %166 = add i64 %RBP_val.40, -36, !mcsema_real_eip !28
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !28
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !28
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !28
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.42, i32* %169, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %block_0xe0
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !30
  %170 = add i64 %RBP_val.25, -40, !mcsema_real_eip !30
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !30
  %172 = ptrtoint i64* %171 to i64, !mcsema_real_eip !30
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %173, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !31
  %174 = add i64 %RBP_val.43, -40, !mcsema_real_eip !31
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !31
  %176 = ptrtoint i64* %175 to i64, !mcsema_real_eip !31
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !31
  %178 = load i32, i32* %177, !mcsema_real_eip !31
  %179 = sub i32 %178, 10, !mcsema_real_eip !31
  %180 = xor i32 %179, %178, !mcsema_real_eip !31
  %181 = xor i32 %180, 10, !mcsema_real_eip !31
  %182 = and i32 %181, 16, !mcsema_real_eip !31
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !31
  store i1 %183, i1* %AF, !mcsema_real_eip !31
  %184 = trunc i32 %179 to i8, !mcsema_real_eip !31
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !31
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !31
  %187 = xor i1 %186, true, !mcsema_real_eip !31
  store i1 %187, i1* %PF, !mcsema_real_eip !31
  %188 = icmp eq i32 %179, 0, !mcsema_real_eip !31
  store i1 %188, i1* %ZF, !mcsema_real_eip !31
  %189 = lshr i32 %179, 31, !mcsema_real_eip !31
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !31
  store i1 %190, i1* %SF, !mcsema_real_eip !31
  %191 = icmp ult i32 %178, 10, !mcsema_real_eip !31
  store i1 %191, i1* %CF, !mcsema_real_eip !31
  %192 = xor i32 %178, 10, !mcsema_real_eip !31
  %193 = xor i32 %178, %179, !mcsema_real_eip !31
  %194 = and i32 %192, %193, !mcsema_real_eip !31
  %195 = lshr i32 %194, 31, !mcsema_real_eip !31
  %196 = trunc i32 %195 to i1, !mcsema_real_eip !31
  store i1 %196, i1* %OF, !mcsema_real_eip !31
  %197 = load i1, i1* %OF, !mcsema_real_eip !32
  %198 = load i1, i1* %SF, !mcsema_real_eip !32
  %199 = icmp eq i1 %198, %197, !mcsema_real_eip !32
  br i1 %199, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %block_0x113
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !33
  %200 = add i64 %RBP_val.78, -40, !mcsema_real_eip !33
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !33
  %202 = ptrtoint i64* %201 to i64, !mcsema_real_eip !33
  %203 = inttoptr i64 %202 to i32*, !mcsema_real_eip !33
  %204 = load i32, i32* %203, !mcsema_real_eip !33
  %205 = zext i32 %204 to i64, !mcsema_real_eip !33
  store i64 %205, i64* %XAX, !mcsema_real_eip !33
  %EAX.79 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.80 = load i32, i32* %EAX.79, !mcsema_real_eip !34
  %206 = add i32 1, %EAX_val.80, !mcsema_real_eip !34
  %207 = xor i32 %206, %EAX_val.80, !mcsema_real_eip !34
  %208 = xor i32 %207, 1, !mcsema_real_eip !34
  %209 = and i32 %208, 16, !mcsema_real_eip !34
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !34
  store i1 %210, i1* %AF, !mcsema_real_eip !34
  %211 = lshr i32 %206, 31, !mcsema_real_eip !34
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !34
  store i1 %212, i1* %SF, !mcsema_real_eip !34
  %213 = icmp eq i32 %206, 0, !mcsema_real_eip !34
  store i1 %213, i1* %ZF, !mcsema_real_eip !34
  %214 = xor i32 %EAX_val.80, 1, !mcsema_real_eip !34
  %215 = xor i32 %214, -1, !mcsema_real_eip !34
  %216 = xor i32 %EAX_val.80, %206, !mcsema_real_eip !34
  %217 = and i32 %215, %216, !mcsema_real_eip !34
  %218 = lshr i32 %217, 31, !mcsema_real_eip !34
  %219 = and i32 %218, 1, !mcsema_real_eip !34
  %220 = trunc i32 %219 to i1, !mcsema_real_eip !34
  store i1 %220, i1* %OF, !mcsema_real_eip !34
  %221 = trunc i32 %206 to i8, !mcsema_real_eip !34
  %222 = call i8 @llvm.ctpop.i8(i8 %221), !mcsema_real_eip !34
  %223 = trunc i8 %222 to i1, !mcsema_real_eip !34
  %224 = xor i1 %223, true, !mcsema_real_eip !34
  store i1 %224, i1* %PF, !mcsema_real_eip !34
  %225 = icmp ult i32 %206, %EAX_val.80, !mcsema_real_eip !34
  store i1 %225, i1* %CF, !mcsema_real_eip !34
  %226 = zext i32 %206 to i64, !mcsema_real_eip !34
  store i64 %226, i64* %XAX, !mcsema_real_eip !34
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !35
  %227 = add i64 %RBP_val.81, -32, !mcsema_real_eip !35
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !35
  %229 = load i64, i64* %228, !mcsema_real_eip !35
  store i64 %229, i64* %XCX, !mcsema_real_eip !35
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !36
  %230 = add i64 %RBP_val.82, -40, !mcsema_real_eip !36
  %231 = inttoptr i64 %230 to i64*, !mcsema_real_eip !36
  %232 = ptrtoint i64* %231 to i64, !mcsema_real_eip !36
  %233 = inttoptr i64 %232 to i32*, !mcsema_real_eip !36
  %234 = load i32, i32* %233, !mcsema_real_eip !36
  %235 = sext i32 %234 to i64, !mcsema_real_eip !36
  store i64 %235, i64* %XDX, !mcsema_real_eip !36
  %RCX_val.83 = load i64, i64* %XCX, !mcsema_real_eip !37
  %236 = add i64 %RCX_val.83, 0, !mcsema_real_eip !37
  %RDX_val.84 = load i64, i64* %XDX, !mcsema_real_eip !37
  %237 = mul i64 %RDX_val.84, 4, !mcsema_real_eip !37
  %238 = add i64 %236, %237, !mcsema_real_eip !37
  %239 = inttoptr i64 %238 to i64*, !mcsema_real_eip !37
  %EAX.85 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.86 = load i32, i32* %EAX.85, !mcsema_real_eip !37
  %240 = ptrtoint i64* %239 to i64, !mcsema_real_eip !37
  %241 = inttoptr i64 %240 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.86, i32* %241, !mcsema_real_eip !37
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !38
  %242 = add i64 %RBP_val.87, -40, !mcsema_real_eip !38
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !38
  %244 = ptrtoint i64* %243 to i64, !mcsema_real_eip !38
  %245 = inttoptr i64 %244 to i32*, !mcsema_real_eip !38
  %246 = load i32, i32* %245, !mcsema_real_eip !38
  %247 = zext i32 %246 to i64, !mcsema_real_eip !38
  store i64 %247, i64* %XAX, !mcsema_real_eip !38
  %EAX.88 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.89 = load i32, i32* %EAX.88, !mcsema_real_eip !39
  %248 = add i32 1, %EAX_val.89, !mcsema_real_eip !39
  %249 = xor i32 %248, %EAX_val.89, !mcsema_real_eip !39
  %250 = xor i32 %249, 1, !mcsema_real_eip !39
  %251 = and i32 %250, 16, !mcsema_real_eip !39
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !39
  store i1 %252, i1* %AF, !mcsema_real_eip !39
  %253 = lshr i32 %248, 31, !mcsema_real_eip !39
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !39
  store i1 %254, i1* %SF, !mcsema_real_eip !39
  %255 = icmp eq i32 %248, 0, !mcsema_real_eip !39
  store i1 %255, i1* %ZF, !mcsema_real_eip !39
  %256 = xor i32 %EAX_val.89, 1, !mcsema_real_eip !39
  %257 = xor i32 %256, -1, !mcsema_real_eip !39
  %258 = xor i32 %EAX_val.89, %248, !mcsema_real_eip !39
  %259 = and i32 %257, %258, !mcsema_real_eip !39
  %260 = lshr i32 %259, 31, !mcsema_real_eip !39
  %261 = and i32 %260, 1, !mcsema_real_eip !39
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !39
  store i1 %262, i1* %OF, !mcsema_real_eip !39
  %263 = trunc i32 %248 to i8, !mcsema_real_eip !39
  %264 = call i8 @llvm.ctpop.i8(i8 %263), !mcsema_real_eip !39
  %265 = trunc i8 %264 to i1, !mcsema_real_eip !39
  %266 = xor i1 %265, true, !mcsema_real_eip !39
  store i1 %266, i1* %PF, !mcsema_real_eip !39
  %267 = icmp ult i32 %248, %EAX_val.89, !mcsema_real_eip !39
  store i1 %267, i1* %CF, !mcsema_real_eip !39
  %268 = zext i32 %248 to i64, !mcsema_real_eip !39
  store i64 %268, i64* %XAX, !mcsema_real_eip !39
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !40
  %269 = add i64 %RBP_val.90, -40, !mcsema_real_eip !40
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !40
  %EAX.91 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.92 = load i32, i32* %EAX.91, !mcsema_real_eip !40
  %271 = ptrtoint i64* %270 to i64, !mcsema_real_eip !40
  %272 = inttoptr i64 %271 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.92, i32* %272, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %block_0x113
  %273 = zext i32 100 to i64, !mcsema_real_eip !42
  store i64 %273, i64* %XDI, !mcsema_real_eip !42
  %274 = zext i32 200 to i64, !mcsema_real_eip !43
  store i64 %274, i64* %XSI, !mcsema_real_eip !43
  %275 = zext i32 300 to i64, !mcsema_real_eip !44
  store i64 %275, i64* %XDX, !mcsema_real_eip !44
  %276 = zext i32 400 to i64, !mcsema_real_eip !45
  store i64 %276, i64* %XCX, !mcsema_real_eip !45
  %277 = zext i32 500 to i64, !mcsema_real_eip !46
  store i64 %277, i64* %R8, !mcsema_real_eip !46
  %278 = zext i32 600 to i64, !mcsema_real_eip !47
  store i64 %278, i64* %R9, !mcsema_real_eip !47
  %279 = zext i32 10 to i64, !mcsema_real_eip !48
  store i64 %279, i64* %XAX, !mcsema_real_eip !48
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !49
  %280 = add i64 %RBP_val.44, -24, !mcsema_real_eip !49
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !49
  %282 = load i64, i64* %281, !mcsema_real_eip !49
  store i64 %282, i64* %R10, !mcsema_real_eip !49
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !50
  %283 = add i64 %RBP_val.45, -32, !mcsema_real_eip !50
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !50
  %285 = load i64, i64* %284, !mcsema_real_eip !50
  store i64 %285, i64* %R11, !mcsema_real_eip !50
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !51
  %286 = add i64 %RSP_val.46, 0, !mcsema_real_eip !51
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !51
  %288 = ptrtoint i64* %287 to i64, !mcsema_real_eip !51
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %289, !mcsema_real_eip !51
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !52
  %290 = add i64 %RSP_val.47, 8, !mcsema_real_eip !52
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !52
  %R10_val.48 = load i64, i64* %R10, !mcsema_real_eip !52
  store i64 %R10_val.48, i64* %291, !mcsema_real_eip !52
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !53
  %292 = add i64 %RSP_val.49, 16, !mcsema_real_eip !53
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !53
  %294 = ptrtoint i64* %293 to i64, !mcsema_real_eip !53
  %295 = inttoptr i64 %294 to i32*, !mcsema_real_eip !53
  store i32 10, i32* %295, !mcsema_real_eip !53
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !54
  %296 = add i64 %RSP_val.50, 24, !mcsema_real_eip !54
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !54
  %R11_val.51 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %R11_val.51, i64* %297, !mcsema_real_eip !54
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !55
  %298 = add i64 %RBP_val.52, -48, !mcsema_real_eip !55
  %299 = inttoptr i64 %298 to i64*, !mcsema_real_eip !55
  %EAX.53 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.54 = load i32, i32* %EAX.53, !mcsema_real_eip !55
  %300 = ptrtoint i64* %299 to i64, !mcsema_real_eip !55
  %301 = inttoptr i64 %300 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.54, i32* %301, !mcsema_real_eip !55
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !56
  %302 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !56
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !56
  store i64 -4981261766360305936, i64* %303, !mcsema_real_eip !56
  store i64 %302, i64* %XSP, !mcsema_real_eip !56
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !56
  %304 = getelementptr %0, %0* @data_0x1af, i64 0, i32 0, !mcsema_real_eip !57
  %305 = ptrtoint [4 x i8]* %304 to i64, !mcsema_real_eip !57
  %306 = add i64 %305, 0, !mcsema_real_eip !57
  store i64 %306, i64* %XDI, !mcsema_real_eip !57
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !58
  %307 = add i64 %RBP_val.56, -44, !mcsema_real_eip !58
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !58
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !58
  %309 = ptrtoint i64* %308 to i64, !mcsema_real_eip !58
  %310 = inttoptr i64 %309 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.58, i32* %310, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !59
  %311 = add i64 %RBP_val.59, -44, !mcsema_real_eip !59
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !59
  %313 = ptrtoint i64* %312 to i64, !mcsema_real_eip !59
  %314 = inttoptr i64 %313 to i32*, !mcsema_real_eip !59
  %315 = load i32, i32* %314, !mcsema_real_eip !59
  %316 = zext i32 %315 to i64, !mcsema_real_eip !59
  store i64 %316, i64* %XSI, !mcsema_real_eip !59
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !60
  store i8 0, i8* %AL.60, !mcsema_real_eip !60
  %RDI_val.61 = load i64, i64* %XDI, !mcsema_real_eip !61
  %RSI_val.62 = load i64, i64* %XSI, !mcsema_real_eip !61
  %RDX_val.63 = load i64, i64* %XDX, !mcsema_real_eip !61
  %RCX_val.64 = load i64, i64* %XCX, !mcsema_real_eip !61
  %R8_val.65 = load i64, i64* %R8, !mcsema_real_eip !61
  %R9_val.66 = load i64, i64* %R9, !mcsema_real_eip !61
  %RSP_val.67 = load i64, i64* %XSP, !mcsema_real_eip !61
  %317 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !61
  %318 = load i64, i64* %317, !mcsema_real_eip !61
  %319 = add i64 %RSP_val.67, 8, !mcsema_real_eip !61
  %320 = inttoptr i64 %319 to i64*, !mcsema_real_eip !61
  %321 = load i64, i64* %320, !mcsema_real_eip !61
  %322 = add i64 %319, 8, !mcsema_real_eip !61
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !61
  %324 = load i64, i64* %323, !mcsema_real_eip !61
  %325 = add i64 %322, 8, !mcsema_real_eip !61
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !61
  %327 = load i64, i64* %326, !mcsema_real_eip !61
  %328 = add i64 %325, 8, !mcsema_real_eip !61
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !61
  %330 = load i64, i64* %329, !mcsema_real_eip !61
  %331 = add i64 %328, 8, !mcsema_real_eip !61
  %332 = inttoptr i64 %331 to i64*, !mcsema_real_eip !61
  %333 = load i64, i64* %332, !mcsema_real_eip !61
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !61
  %334 = sub i64 %RSP_val.68, 8, !mcsema_real_eip !61
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !61
  store i64 -2415393069852865332, i64* %335, !mcsema_real_eip !61
  store i64 %334, i64* %XSP, !mcsema_real_eip !61
  %336 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %RSI_val.62, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %318, i64 %321, i64 %324, i64 %327, i64 %330, i64 %333), !mcsema_real_eip !61
  store i64 %336, i64* %XAX, !mcsema_real_eip !61
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !62
  %337 = add i64 %RBP_val.69, -44, !mcsema_real_eip !62
  %338 = inttoptr i64 %337 to i64*, !mcsema_real_eip !62
  %339 = ptrtoint i64* %338 to i64, !mcsema_real_eip !62
  %340 = inttoptr i64 %339 to i32*, !mcsema_real_eip !62
  %341 = load i32, i32* %340, !mcsema_real_eip !62
  %342 = zext i32 %341 to i64, !mcsema_real_eip !62
  store i64 %342, i64* %XCX, !mcsema_real_eip !62
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !63
  %343 = add i64 %RBP_val.70, -52, !mcsema_real_eip !63
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !63
  %EAX.71 = bitcast i64* %XAX to i32*, !mcsema_real_eip !63
  %EAX_val.72 = load i32, i32* %EAX.71, !mcsema_real_eip !63
  %345 = ptrtoint i64* %344 to i64, !mcsema_real_eip !63
  %346 = inttoptr i64 %345 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.72, i32* %346, !mcsema_real_eip !63
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !64
  %ECX_val.74 = load i32, i32* %ECX.73, !mcsema_real_eip !64
  %347 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !64
  store i64 %347, i64* %XAX, !mcsema_real_eip !64
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !65
  %348 = add i64 96, %RSP_val.75, !mcsema_real_eip !65
  %349 = xor i64 %348, %RSP_val.75, !mcsema_real_eip !65
  %350 = xor i64 %349, 96, !mcsema_real_eip !65
  %351 = and i64 %350, 16, !mcsema_real_eip !65
  %352 = icmp ne i64 %351, 0, !mcsema_real_eip !65
  store i1 %352, i1* %AF, !mcsema_real_eip !65
  %353 = lshr i64 %348, 63, !mcsema_real_eip !65
  %354 = trunc i64 %353 to i1, !mcsema_real_eip !65
  store i1 %354, i1* %SF, !mcsema_real_eip !65
  %355 = icmp eq i64 %348, 0, !mcsema_real_eip !65
  store i1 %355, i1* %ZF, !mcsema_real_eip !65
  %356 = xor i64 %RSP_val.75, 96, !mcsema_real_eip !65
  %357 = xor i64 %356, -1, !mcsema_real_eip !65
  %358 = xor i64 %RSP_val.75, %348, !mcsema_real_eip !65
  %359 = and i64 %357, %358, !mcsema_real_eip !65
  %360 = lshr i64 %359, 63, !mcsema_real_eip !65
  %361 = and i64 %360, 1, !mcsema_real_eip !65
  %362 = trunc i64 %361 to i1, !mcsema_real_eip !65
  store i1 %362, i1* %OF, !mcsema_real_eip !65
  %363 = trunc i64 %348 to i8, !mcsema_real_eip !65
  %364 = call i8 @llvm.ctpop.i8(i8 %363), !mcsema_real_eip !65
  %365 = trunc i8 %364 to i1, !mcsema_real_eip !65
  %366 = xor i1 %365, true, !mcsema_real_eip !65
  store i1 %366, i1* %PF, !mcsema_real_eip !65
  %367 = icmp ult i64 %348, %RSP_val.75, !mcsema_real_eip !65
  store i1 %367, i1* %CF, !mcsema_real_eip !65
  store i64 %348, i64* %XSP, !mcsema_real_eip !65
  %RSP_val.76 = load i64, i64* %XSP, !mcsema_real_eip !66
  %368 = inttoptr i64 %RSP_val.76 to i64*, !mcsema_real_eip !66
  %369 = load i64, i64* %368, !mcsema_real_eip !66
  store i64 %369, i64* %XBP, !mcsema_real_eip !66
  %370 = add i64 %RSP_val.76, 8, !mcsema_real_eip !66
  store i64 %370, i64* %XSP, !mcsema_real_eip !66
  %RSP_val.77 = load i64, i64* %XSP, !mcsema_real_eip !67
  %371 = add i64 %RSP_val.77, 8, !mcsema_real_eip !67
  %372 = inttoptr i64 %RSP_val.77 to i64*, !mcsema_real_eip !67
  %373 = load i64, i64* %372, !mcsema_real_eip !67
  store i64 %373, i64* %XIP, !mcsema_real_eip !67
  store i64 %371, i64* %XSP, !mcsema_real_eip !67
  ret void, !mcsema_real_eip !67
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !68
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !68
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !68
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !68
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !68
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !68
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !68
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !68
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !68
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !68
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !68
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !68
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !68
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !68
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !68
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !68
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !68
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !68
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !68
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !68
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !68
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !68
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !68
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !68
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !68
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !68
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !68
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !68
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !68
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !68
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !68
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !68
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !68
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !68
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !68
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !68
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !68
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !68
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !68
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !68
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !68
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !68
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !68
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !68
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !68
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !68
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !68
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !68
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !68
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !68
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !68
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !68
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !68
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !68
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !68
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !68
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !68
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !68
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !68
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !68
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !68
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !68
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !68
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !68
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !68
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !68
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !68
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !68
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !68
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !68
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !68
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !68
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !68
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !68
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !68
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !68
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !68
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !68
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !68
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !68
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !68
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !68
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !68
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !68
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !68
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !68
  br label %block_0x0, !mcsema_real_eip !68

block_0x0:                                        ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !68
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !68
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !68
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !68
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !68
  store i64 %1, i64* %XSP, !mcsema_real_eip !68
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !69
  store i64 %RSP_val.95, i64* %XBP, !mcsema_real_eip !69
  %RBX_val.96 = load i64, i64* %XBX, !mcsema_real_eip !70
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !70
  %3 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !70
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !70
  store i64 %RBX_val.96, i64* %4, !mcsema_real_eip !70
  store i64 %3, i64* %XSP, !mcsema_real_eip !70
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !71
  %5 = add i64 %RBP_val.98, 40, !mcsema_real_eip !71
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !71
  %7 = load i64, i64* %6, !mcsema_real_eip !71
  store i64 %7, i64* %XAX, !mcsema_real_eip !71
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !72
  %8 = add i64 %RBP_val.99, 32, !mcsema_real_eip !72
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !72
  %10 = ptrtoint i64* %9 to i64, !mcsema_real_eip !72
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !72
  %12 = load i32, i32* %11, !mcsema_real_eip !72
  %13 = zext i32 %12 to i64, !mcsema_real_eip !72
  store i64 %13, i64* %R10, !mcsema_real_eip !72
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !73
  %14 = add i64 %RBP_val.100, 24, !mcsema_real_eip !73
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !73
  %16 = load i64, i64* %15, !mcsema_real_eip !73
  store i64 %16, i64* %R11, !mcsema_real_eip !73
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !74
  %17 = add i64 %RBP_val.101, 16, !mcsema_real_eip !74
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !74
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !74
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !74
  %21 = load i32, i32* %20, !mcsema_real_eip !74
  %22 = zext i32 %21 to i64, !mcsema_real_eip !74
  store i64 %22, i64* %XBX, !mcsema_real_eip !74
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !75
  %23 = add i64 %RBP_val.102, -12, !mcsema_real_eip !75
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !75
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !75
  %EDI_val.104 = load i32, i32* %EDI.103, !mcsema_real_eip !75
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !75
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !75
  store i32 %EDI_val.104, i32* %26, !mcsema_real_eip !75
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !76
  %27 = add i64 %RBP_val.105, -16, !mcsema_real_eip !76
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !76
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !76
  %ESI_val.107 = load i32, i32* %ESI.106, !mcsema_real_eip !76
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !76
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !76
  store i32 %ESI_val.107, i32* %30, !mcsema_real_eip !76
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !77
  %31 = add i64 %RBP_val.108, -20, !mcsema_real_eip !77
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !77
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !77
  %EDX_val.110 = load i32, i32* %EDX.109, !mcsema_real_eip !77
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !77
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !77
  store i32 %EDX_val.110, i32* %34, !mcsema_real_eip !77
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !78
  %35 = add i64 %RBP_val.111, -24, !mcsema_real_eip !78
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !78
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !78
  %ECX_val.113 = load i32, i32* %ECX.112, !mcsema_real_eip !78
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !78
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !78
  store i32 %ECX_val.113, i32* %38, !mcsema_real_eip !78
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !79
  %39 = add i64 %RBP_val.114, -28, !mcsema_real_eip !79
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !79
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.116 = load i32, i32* %R8D.115, !mcsema_real_eip !79
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !79
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.116, i32* %42, !mcsema_real_eip !79
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !80
  %43 = add i64 %RBP_val.117, -32, !mcsema_real_eip !80
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !80
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.119 = load i32, i32* %R9D.118, !mcsema_real_eip !80
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !80
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.119, i32* %46, !mcsema_real_eip !80
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !81
  %47 = add i64 %RBP_val.120, -36, !mcsema_real_eip !81
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !81
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.122 = load i32, i32* %EBX.121, !mcsema_real_eip !81
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !81
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.122, i32* %50, !mcsema_real_eip !81
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !82
  %51 = add i64 %RBP_val.123, -48, !mcsema_real_eip !82
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !82
  %R11_val.124 = load i64, i64* %R11, !mcsema_real_eip !82
  store i64 %R11_val.124, i64* %52, !mcsema_real_eip !82
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !83
  %53 = add i64 %RBP_val.125, -52, !mcsema_real_eip !83
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !83
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !83
  %R10D_val.127 = load i32, i32* %R10D.126, !mcsema_real_eip !83
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !83
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !83
  store i32 %R10D_val.127, i32* %56, !mcsema_real_eip !83
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !84
  %57 = add i64 %RBP_val.128, -64, !mcsema_real_eip !84
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !84
  %RAX_val.129 = load i64, i64* %XAX, !mcsema_real_eip !84
  store i64 %RAX_val.129, i64* %58, !mcsema_real_eip !84
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !85
  %59 = add i64 %RBP_val.130, -68, !mcsema_real_eip !85
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !85
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !85
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !85
  store i32 0, i32* %62, !mcsema_real_eip !85
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !86
  %63 = add i64 %RBP_val.131, -72, !mcsema_real_eip !86
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !86
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !86
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !86
  store i32 0, i32* %66, !mcsema_real_eip !86
  br label %block_0x45, !mcsema_real_eip !87

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !87
  %67 = add i64 %RBP_val.132, -72, !mcsema_real_eip !87
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !87
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !87
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !87
  %71 = load i32, i32* %70, !mcsema_real_eip !87
  %72 = zext i32 %71 to i64, !mcsema_real_eip !87
  store i64 %72, i64* %XAX, !mcsema_real_eip !87
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !88
  %73 = add i64 %RBP_val.133, -36, !mcsema_real_eip !88
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !88
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !88
  %EAX_val.135 = load i32, i32* %EAX.134, !mcsema_real_eip !88
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !88
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !88
  %77 = load i32, i32* %76, !mcsema_real_eip !88
  %78 = sub i32 %EAX_val.135, %77, !mcsema_real_eip !88
  %79 = xor i32 %78, %EAX_val.135, !mcsema_real_eip !88
  %80 = xor i32 %79, %77, !mcsema_real_eip !88
  %81 = and i32 %80, 16, !mcsema_real_eip !88
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !88
  store i1 %82, i1* %AF, !mcsema_real_eip !88
  %83 = trunc i32 %78 to i8, !mcsema_real_eip !88
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !88
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !88
  %86 = xor i1 %85, true, !mcsema_real_eip !88
  store i1 %86, i1* %PF, !mcsema_real_eip !88
  %87 = icmp eq i32 %78, 0, !mcsema_real_eip !88
  store i1 %87, i1* %ZF, !mcsema_real_eip !88
  %88 = lshr i32 %78, 31, !mcsema_real_eip !88
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !88
  store i1 %89, i1* %SF, !mcsema_real_eip !88
  %90 = icmp ult i32 %EAX_val.135, %77, !mcsema_real_eip !88
  store i1 %90, i1* %CF, !mcsema_real_eip !88
  %91 = xor i32 %EAX_val.135, %77, !mcsema_real_eip !88
  %92 = xor i32 %EAX_val.135, %78, !mcsema_real_eip !88
  %93 = and i32 %91, %92, !mcsema_real_eip !88
  %94 = lshr i32 %93, 31, !mcsema_real_eip !88
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !88
  store i1 %95, i1* %OF, !mcsema_real_eip !88
  %96 = load i1, i1* %OF, !mcsema_real_eip !89
  %97 = load i1, i1* %SF, !mcsema_real_eip !89
  %98 = icmp eq i1 %97, %96, !mcsema_real_eip !89
  br i1 %98, label %block_0x7b, label %block_0x51, !mcsema_real_eip !89

block_0x51:                                       ; preds = %block_0x45
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !90
  %99 = add i64 %RBP_val.160, -48, !mcsema_real_eip !90
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !90
  %101 = load i64, i64* %100, !mcsema_real_eip !90
  store i64 %101, i64* %XAX, !mcsema_real_eip !90
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !91
  %102 = add i64 %RBP_val.161, -72, !mcsema_real_eip !91
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !91
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !91
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !91
  %106 = load i32, i32* %105, !mcsema_real_eip !91
  %107 = sext i32 %106 to i64, !mcsema_real_eip !91
  store i64 %107, i64* %XCX, !mcsema_real_eip !91
  %RAX_val.162 = load i64, i64* %XAX, !mcsema_real_eip !92
  %108 = add i64 %RAX_val.162, 0, !mcsema_real_eip !92
  %RCX_val.163 = load i64, i64* %XCX, !mcsema_real_eip !92
  %109 = mul i64 %RCX_val.163, 4, !mcsema_real_eip !92
  %110 = add i64 %108, %109, !mcsema_real_eip !92
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !92
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !92
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !92
  %114 = load i32, i32* %113, !mcsema_real_eip !92
  %115 = zext i32 %114 to i64, !mcsema_real_eip !92
  store i64 %115, i64* %XDX, !mcsema_real_eip !92
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !93
  %116 = add i64 %RBP_val.164, -64, !mcsema_real_eip !93
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !93
  %118 = load i64, i64* %117, !mcsema_real_eip !93
  store i64 %118, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !94
  %119 = add i64 %RBP_val.165, -72, !mcsema_real_eip !94
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !94
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !94
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !94
  %123 = load i32, i32* %122, !mcsema_real_eip !94
  %124 = sext i32 %123 to i64, !mcsema_real_eip !94
  store i64 %124, i64* %XCX, !mcsema_real_eip !94
  %RAX_val.166 = load i64, i64* %XAX, !mcsema_real_eip !95
  %125 = add i64 %RAX_val.166, 0, !mcsema_real_eip !95
  %RCX_val.167 = load i64, i64* %XCX, !mcsema_real_eip !95
  %126 = mul i64 %RCX_val.167, 4, !mcsema_real_eip !95
  %127 = add i64 %125, %126, !mcsema_real_eip !95
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !95
  %EDX.168 = bitcast i64* %XDX to i32*, !mcsema_real_eip !95
  %EDX_val.169 = load i32, i32* %EDX.168, !mcsema_real_eip !95
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !95
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !95
  %131 = load i32, i32* %130, !mcsema_real_eip !95
  %132 = sub i32 %EDX_val.169, %131, !mcsema_real_eip !95
  %133 = xor i32 %132, %EDX_val.169, !mcsema_real_eip !95
  %134 = xor i32 %133, %131, !mcsema_real_eip !95
  %135 = and i32 %134, 16, !mcsema_real_eip !95
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !95
  store i1 %136, i1* %AF, !mcsema_real_eip !95
  %137 = trunc i32 %132 to i8, !mcsema_real_eip !95
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !95
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !95
  %140 = xor i1 %139, true, !mcsema_real_eip !95
  store i1 %140, i1* %PF, !mcsema_real_eip !95
  %141 = icmp eq i32 %132, 0, !mcsema_real_eip !95
  store i1 %141, i1* %ZF, !mcsema_real_eip !95
  %142 = lshr i32 %132, 31, !mcsema_real_eip !95
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !95
  store i1 %143, i1* %SF, !mcsema_real_eip !95
  %144 = icmp ult i32 %EDX_val.169, %131, !mcsema_real_eip !95
  store i1 %144, i1* %CF, !mcsema_real_eip !95
  %145 = xor i32 %EDX_val.169, %131, !mcsema_real_eip !95
  %146 = xor i32 %EDX_val.169, %132, !mcsema_real_eip !95
  %147 = and i32 %145, %146, !mcsema_real_eip !95
  %148 = lshr i32 %147, 31, !mcsema_real_eip !95
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !95
  store i1 %149, i1* %OF, !mcsema_real_eip !95
  %150 = zext i32 %132 to i64, !mcsema_real_eip !95
  store i64 %150, i64* %XDX, !mcsema_real_eip !95
  %RBP_val.170 = load i64, i64* %XBP, !mcsema_real_eip !96
  %151 = add i64 %RBP_val.170, -68, !mcsema_real_eip !96
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !96
  %153 = ptrtoint i64* %152 to i64, !mcsema_real_eip !96
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !96
  %155 = load i32, i32* %154, !mcsema_real_eip !96
  %EDX.171 = bitcast i64* %XDX to i32*, !mcsema_real_eip !96
  %EDX_val.172 = load i32, i32* %EDX.171, !mcsema_real_eip !96
  %156 = add i32 %EDX_val.172, %155, !mcsema_real_eip !96
  %157 = xor i32 %156, %155, !mcsema_real_eip !96
  %158 = xor i32 %157, %EDX_val.172, !mcsema_real_eip !96
  %159 = and i32 %158, 16, !mcsema_real_eip !96
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !96
  store i1 %160, i1* %AF, !mcsema_real_eip !96
  %161 = lshr i32 %156, 31, !mcsema_real_eip !96
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !96
  store i1 %162, i1* %SF, !mcsema_real_eip !96
  %163 = icmp eq i32 %156, 0, !mcsema_real_eip !96
  store i1 %163, i1* %ZF, !mcsema_real_eip !96
  %164 = xor i32 %155, %EDX_val.172, !mcsema_real_eip !96
  %165 = xor i32 %164, -1, !mcsema_real_eip !96
  %166 = xor i32 %155, %156, !mcsema_real_eip !96
  %167 = and i32 %165, %166, !mcsema_real_eip !96
  %168 = lshr i32 %167, 31, !mcsema_real_eip !96
  %169 = and i32 %168, 1, !mcsema_real_eip !96
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !96
  store i1 %170, i1* %OF, !mcsema_real_eip !96
  %171 = trunc i32 %156 to i8, !mcsema_real_eip !96
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !96
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !96
  %174 = xor i1 %173, true, !mcsema_real_eip !96
  store i1 %174, i1* %PF, !mcsema_real_eip !96
  %175 = icmp ult i32 %156, %155, !mcsema_real_eip !96
  store i1 %175, i1* %CF, !mcsema_real_eip !96
  %176 = zext i32 %156 to i64, !mcsema_real_eip !96
  store i64 %176, i64* %XDX, !mcsema_real_eip !96
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !97
  %177 = add i64 %RBP_val.173, -68, !mcsema_real_eip !97
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !97
  %EDX.174 = bitcast i64* %XDX to i32*, !mcsema_real_eip !97
  %EDX_val.175 = load i32, i32* %EDX.174, !mcsema_real_eip !97
  %179 = ptrtoint i64* %178 to i64, !mcsema_real_eip !97
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !97
  store i32 %EDX_val.175, i32* %180, !mcsema_real_eip !97
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !98
  %181 = add i64 %RBP_val.176, -72, !mcsema_real_eip !98
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !98
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !98
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !98
  %185 = load i32, i32* %184, !mcsema_real_eip !98
  %186 = zext i32 %185 to i64, !mcsema_real_eip !98
  store i64 %186, i64* %XAX, !mcsema_real_eip !98
  %EAX.177 = bitcast i64* %XAX to i32*, !mcsema_real_eip !99
  %EAX_val.178 = load i32, i32* %EAX.177, !mcsema_real_eip !99
  %187 = add i32 1, %EAX_val.178, !mcsema_real_eip !99
  %188 = xor i32 %187, %EAX_val.178, !mcsema_real_eip !99
  %189 = xor i32 %188, 1, !mcsema_real_eip !99
  %190 = and i32 %189, 16, !mcsema_real_eip !99
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !99
  store i1 %191, i1* %AF, !mcsema_real_eip !99
  %192 = lshr i32 %187, 31, !mcsema_real_eip !99
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !99
  store i1 %193, i1* %SF, !mcsema_real_eip !99
  %194 = icmp eq i32 %187, 0, !mcsema_real_eip !99
  store i1 %194, i1* %ZF, !mcsema_real_eip !99
  %195 = xor i32 %EAX_val.178, 1, !mcsema_real_eip !99
  %196 = xor i32 %195, -1, !mcsema_real_eip !99
  %197 = xor i32 %EAX_val.178, %187, !mcsema_real_eip !99
  %198 = and i32 %196, %197, !mcsema_real_eip !99
  %199 = lshr i32 %198, 31, !mcsema_real_eip !99
  %200 = and i32 %199, 1, !mcsema_real_eip !99
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !99
  store i1 %201, i1* %OF, !mcsema_real_eip !99
  %202 = trunc i32 %187 to i8, !mcsema_real_eip !99
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !99
  %204 = trunc i8 %203 to i1, !mcsema_real_eip !99
  %205 = xor i1 %204, true, !mcsema_real_eip !99
  store i1 %205, i1* %PF, !mcsema_real_eip !99
  %206 = icmp ult i32 %187, %EAX_val.178, !mcsema_real_eip !99
  store i1 %206, i1* %CF, !mcsema_real_eip !99
  %207 = zext i32 %187 to i64, !mcsema_real_eip !99
  store i64 %207, i64* %XAX, !mcsema_real_eip !99
  %RBP_val.179 = load i64, i64* %XBP, !mcsema_real_eip !100
  %208 = add i64 %RBP_val.179, -72, !mcsema_real_eip !100
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !100
  %EAX.180 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.181 = load i32, i32* %EAX.180, !mcsema_real_eip !100
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !100
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.181, i32* %211, !mcsema_real_eip !100
  br label %block_0x45, !mcsema_real_eip !101

block_0x7b:                                       ; preds = %block_0x45
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !102
  %212 = add i64 %RBP_val.136, -68, !mcsema_real_eip !102
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !102
  %214 = ptrtoint i64* %213 to i64, !mcsema_real_eip !102
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !102
  %216 = load i32, i32* %215, !mcsema_real_eip !102
  %217 = zext i32 %216 to i64, !mcsema_real_eip !102
  store i64 %217, i64* %XAX, !mcsema_real_eip !102
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !103
  %218 = add i64 %RBP_val.137, -12, !mcsema_real_eip !103
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !103
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !103
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !103
  %222 = load i32, i32* %221, !mcsema_real_eip !103
  %223 = zext i32 %222 to i64, !mcsema_real_eip !103
  store i64 %223, i64* %XCX, !mcsema_real_eip !103
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !104
  %224 = add i64 %RBP_val.138, -16, !mcsema_real_eip !104
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !104
  %226 = ptrtoint i64* %225 to i64, !mcsema_real_eip !104
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !104
  %228 = load i32, i32* %227, !mcsema_real_eip !104
  %ECX.139 = bitcast i64* %XCX to i32*, !mcsema_real_eip !104
  %ECX_val.140 = load i32, i32* %ECX.139, !mcsema_real_eip !104
  %229 = add i32 %ECX_val.140, %228, !mcsema_real_eip !104
  %230 = xor i32 %229, %228, !mcsema_real_eip !104
  %231 = xor i32 %230, %ECX_val.140, !mcsema_real_eip !104
  %232 = and i32 %231, 16, !mcsema_real_eip !104
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !104
  store i1 %233, i1* %AF, !mcsema_real_eip !104
  %234 = lshr i32 %229, 31, !mcsema_real_eip !104
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !104
  store i1 %235, i1* %SF, !mcsema_real_eip !104
  %236 = icmp eq i32 %229, 0, !mcsema_real_eip !104
  store i1 %236, i1* %ZF, !mcsema_real_eip !104
  %237 = xor i32 %228, %ECX_val.140, !mcsema_real_eip !104
  %238 = xor i32 %237, -1, !mcsema_real_eip !104
  %239 = xor i32 %228, %229, !mcsema_real_eip !104
  %240 = and i32 %238, %239, !mcsema_real_eip !104
  %241 = lshr i32 %240, 31, !mcsema_real_eip !104
  %242 = and i32 %241, 1, !mcsema_real_eip !104
  %243 = trunc i32 %242 to i1, !mcsema_real_eip !104
  store i1 %243, i1* %OF, !mcsema_real_eip !104
  %244 = trunc i32 %229 to i8, !mcsema_real_eip !104
  %245 = call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !104
  %246 = trunc i8 %245 to i1, !mcsema_real_eip !104
  %247 = xor i1 %246, true, !mcsema_real_eip !104
  store i1 %247, i1* %PF, !mcsema_real_eip !104
  %248 = icmp ult i32 %229, %228, !mcsema_real_eip !104
  store i1 %248, i1* %CF, !mcsema_real_eip !104
  %249 = zext i32 %229 to i64, !mcsema_real_eip !104
  store i64 %249, i64* %XCX, !mcsema_real_eip !104
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !105
  %250 = add i64 %RBP_val.141, -20, !mcsema_real_eip !105
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !105
  %252 = ptrtoint i64* %251 to i64, !mcsema_real_eip !105
  %253 = inttoptr i64 %252 to i32*, !mcsema_real_eip !105
  %254 = load i32, i32* %253, !mcsema_real_eip !105
  %ECX.142 = bitcast i64* %XCX to i32*, !mcsema_real_eip !105
  %ECX_val.143 = load i32, i32* %ECX.142, !mcsema_real_eip !105
  %255 = add i32 %ECX_val.143, %254, !mcsema_real_eip !105
  %256 = xor i32 %255, %254, !mcsema_real_eip !105
  %257 = xor i32 %256, %ECX_val.143, !mcsema_real_eip !105
  %258 = and i32 %257, 16, !mcsema_real_eip !105
  %259 = icmp ne i32 %258, 0, !mcsema_real_eip !105
  store i1 %259, i1* %AF, !mcsema_real_eip !105
  %260 = lshr i32 %255, 31, !mcsema_real_eip !105
  %261 = trunc i32 %260 to i1, !mcsema_real_eip !105
  store i1 %261, i1* %SF, !mcsema_real_eip !105
  %262 = icmp eq i32 %255, 0, !mcsema_real_eip !105
  store i1 %262, i1* %ZF, !mcsema_real_eip !105
  %263 = xor i32 %254, %ECX_val.143, !mcsema_real_eip !105
  %264 = xor i32 %263, -1, !mcsema_real_eip !105
  %265 = xor i32 %254, %255, !mcsema_real_eip !105
  %266 = and i32 %264, %265, !mcsema_real_eip !105
  %267 = lshr i32 %266, 31, !mcsema_real_eip !105
  %268 = and i32 %267, 1, !mcsema_real_eip !105
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !105
  store i1 %269, i1* %OF, !mcsema_real_eip !105
  %270 = trunc i32 %255 to i8, !mcsema_real_eip !105
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !105
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !105
  %273 = xor i1 %272, true, !mcsema_real_eip !105
  store i1 %273, i1* %PF, !mcsema_real_eip !105
  %274 = icmp ult i32 %255, %254, !mcsema_real_eip !105
  store i1 %274, i1* %CF, !mcsema_real_eip !105
  %275 = zext i32 %255 to i64, !mcsema_real_eip !105
  store i64 %275, i64* %XCX, !mcsema_real_eip !105
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !106
  %276 = add i64 %RBP_val.144, -24, !mcsema_real_eip !106
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !106
  %278 = ptrtoint i64* %277 to i64, !mcsema_real_eip !106
  %279 = inttoptr i64 %278 to i32*, !mcsema_real_eip !106
  %280 = load i32, i32* %279, !mcsema_real_eip !106
  %ECX.145 = bitcast i64* %XCX to i32*, !mcsema_real_eip !106
  %ECX_val.146 = load i32, i32* %ECX.145, !mcsema_real_eip !106
  %281 = add i32 %ECX_val.146, %280, !mcsema_real_eip !106
  %282 = xor i32 %281, %280, !mcsema_real_eip !106
  %283 = xor i32 %282, %ECX_val.146, !mcsema_real_eip !106
  %284 = and i32 %283, 16, !mcsema_real_eip !106
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !106
  store i1 %285, i1* %AF, !mcsema_real_eip !106
  %286 = lshr i32 %281, 31, !mcsema_real_eip !106
  %287 = trunc i32 %286 to i1, !mcsema_real_eip !106
  store i1 %287, i1* %SF, !mcsema_real_eip !106
  %288 = icmp eq i32 %281, 0, !mcsema_real_eip !106
  store i1 %288, i1* %ZF, !mcsema_real_eip !106
  %289 = xor i32 %280, %ECX_val.146, !mcsema_real_eip !106
  %290 = xor i32 %289, -1, !mcsema_real_eip !106
  %291 = xor i32 %280, %281, !mcsema_real_eip !106
  %292 = and i32 %290, %291, !mcsema_real_eip !106
  %293 = lshr i32 %292, 31, !mcsema_real_eip !106
  %294 = and i32 %293, 1, !mcsema_real_eip !106
  %295 = trunc i32 %294 to i1, !mcsema_real_eip !106
  store i1 %295, i1* %OF, !mcsema_real_eip !106
  %296 = trunc i32 %281 to i8, !mcsema_real_eip !106
  %297 = call i8 @llvm.ctpop.i8(i8 %296), !mcsema_real_eip !106
  %298 = trunc i8 %297 to i1, !mcsema_real_eip !106
  %299 = xor i1 %298, true, !mcsema_real_eip !106
  store i1 %299, i1* %PF, !mcsema_real_eip !106
  %300 = icmp ult i32 %281, %280, !mcsema_real_eip !106
  store i1 %300, i1* %CF, !mcsema_real_eip !106
  %301 = zext i32 %281 to i64, !mcsema_real_eip !106
  store i64 %301, i64* %XCX, !mcsema_real_eip !106
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !107
  %302 = add i64 %RBP_val.147, -28, !mcsema_real_eip !107
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !107
  %304 = ptrtoint i64* %303 to i64, !mcsema_real_eip !107
  %305 = inttoptr i64 %304 to i32*, !mcsema_real_eip !107
  %306 = load i32, i32* %305, !mcsema_real_eip !107
  %ECX.148 = bitcast i64* %XCX to i32*, !mcsema_real_eip !107
  %ECX_val.149 = load i32, i32* %ECX.148, !mcsema_real_eip !107
  %307 = add i32 %ECX_val.149, %306, !mcsema_real_eip !107
  %308 = xor i32 %307, %306, !mcsema_real_eip !107
  %309 = xor i32 %308, %ECX_val.149, !mcsema_real_eip !107
  %310 = and i32 %309, 16, !mcsema_real_eip !107
  %311 = icmp ne i32 %310, 0, !mcsema_real_eip !107
  store i1 %311, i1* %AF, !mcsema_real_eip !107
  %312 = lshr i32 %307, 31, !mcsema_real_eip !107
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !107
  store i1 %313, i1* %SF, !mcsema_real_eip !107
  %314 = icmp eq i32 %307, 0, !mcsema_real_eip !107
  store i1 %314, i1* %ZF, !mcsema_real_eip !107
  %315 = xor i32 %306, %ECX_val.149, !mcsema_real_eip !107
  %316 = xor i32 %315, -1, !mcsema_real_eip !107
  %317 = xor i32 %306, %307, !mcsema_real_eip !107
  %318 = and i32 %316, %317, !mcsema_real_eip !107
  %319 = lshr i32 %318, 31, !mcsema_real_eip !107
  %320 = and i32 %319, 1, !mcsema_real_eip !107
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !107
  store i1 %321, i1* %OF, !mcsema_real_eip !107
  %322 = trunc i32 %307 to i8, !mcsema_real_eip !107
  %323 = call i8 @llvm.ctpop.i8(i8 %322), !mcsema_real_eip !107
  %324 = trunc i8 %323 to i1, !mcsema_real_eip !107
  %325 = xor i1 %324, true, !mcsema_real_eip !107
  store i1 %325, i1* %PF, !mcsema_real_eip !107
  %326 = icmp ult i32 %307, %306, !mcsema_real_eip !107
  store i1 %326, i1* %CF, !mcsema_real_eip !107
  %327 = zext i32 %307 to i64, !mcsema_real_eip !107
  store i64 %327, i64* %XCX, !mcsema_real_eip !107
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !108
  %328 = add i64 %RBP_val.150, -32, !mcsema_real_eip !108
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !108
  %330 = ptrtoint i64* %329 to i64, !mcsema_real_eip !108
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !108
  %332 = load i32, i32* %331, !mcsema_real_eip !108
  %ECX.151 = bitcast i64* %XCX to i32*, !mcsema_real_eip !108
  %ECX_val.152 = load i32, i32* %ECX.151, !mcsema_real_eip !108
  %333 = add i32 %ECX_val.152, %332, !mcsema_real_eip !108
  %334 = xor i32 %333, %332, !mcsema_real_eip !108
  %335 = xor i32 %334, %ECX_val.152, !mcsema_real_eip !108
  %336 = and i32 %335, 16, !mcsema_real_eip !108
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !108
  store i1 %337, i1* %AF, !mcsema_real_eip !108
  %338 = lshr i32 %333, 31, !mcsema_real_eip !108
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !108
  store i1 %339, i1* %SF, !mcsema_real_eip !108
  %340 = icmp eq i32 %333, 0, !mcsema_real_eip !108
  store i1 %340, i1* %ZF, !mcsema_real_eip !108
  %341 = xor i32 %332, %ECX_val.152, !mcsema_real_eip !108
  %342 = xor i32 %341, -1, !mcsema_real_eip !108
  %343 = xor i32 %332, %333, !mcsema_real_eip !108
  %344 = and i32 %342, %343, !mcsema_real_eip !108
  %345 = lshr i32 %344, 31, !mcsema_real_eip !108
  %346 = and i32 %345, 1, !mcsema_real_eip !108
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !108
  store i1 %347, i1* %OF, !mcsema_real_eip !108
  %348 = trunc i32 %333 to i8, !mcsema_real_eip !108
  %349 = call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !108
  %350 = trunc i8 %349 to i1, !mcsema_real_eip !108
  %351 = xor i1 %350, true, !mcsema_real_eip !108
  store i1 %351, i1* %PF, !mcsema_real_eip !108
  %352 = icmp ult i32 %333, %332, !mcsema_real_eip !108
  store i1 %352, i1* %CF, !mcsema_real_eip !108
  %353 = zext i32 %333 to i64, !mcsema_real_eip !108
  store i64 %353, i64* %XCX, !mcsema_real_eip !108
  %ECX.153 = bitcast i64* %XCX to i32*, !mcsema_real_eip !109
  %ECX_val.154 = load i32, i32* %ECX.153, !mcsema_real_eip !109
  %EAX.155 = bitcast i64* %XAX to i32*, !mcsema_real_eip !109
  %EAX_val.156 = load i32, i32* %EAX.155, !mcsema_real_eip !109
  %354 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !109
  %355 = sext i32 %ECX_val.154 to i64, !mcsema_real_eip !109
  %356 = mul i64 %354, %355, !mcsema_real_eip !109
  %357 = trunc i64 %356 to i32, !mcsema_real_eip !109
  %358 = sext i32 %357 to i64, !mcsema_real_eip !109
  %359 = icmp ne i64 %358, %356, !mcsema_real_eip !109
  %360 = icmp slt i32 %357, 0, !mcsema_real_eip !109
  store i1 %360, i1* %SF, !mcsema_real_eip !109
  store i1 %359, i1* %OF, !mcsema_real_eip !109
  store i1 %359, i1* %CF, !mcsema_real_eip !109
  %361 = zext i32 %357 to i64, !mcsema_real_eip !109
  store i64 %361, i64* %XAX, !mcsema_real_eip !109
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !110
  %362 = inttoptr i64 %RSP_val.157 to i64*, !mcsema_real_eip !110
  %363 = load i64, i64* %362, !mcsema_real_eip !110
  store i64 %363, i64* %XBX, !mcsema_real_eip !110
  %364 = add i64 %RSP_val.157, 8, !mcsema_real_eip !110
  store i64 %364, i64* %XSP, !mcsema_real_eip !110
  %RSP_val.158 = load i64, i64* %XSP, !mcsema_real_eip !111
  %365 = inttoptr i64 %RSP_val.158 to i64*, !mcsema_real_eip !111
  %366 = load i64, i64* %365, !mcsema_real_eip !111
  store i64 %366, i64* %XBP, !mcsema_real_eip !111
  %367 = add i64 %RSP_val.158, 8, !mcsema_real_eip !111
  store i64 %367, i64* %XSP, !mcsema_real_eip !111
  %RSP_val.159 = load i64, i64* %XSP, !mcsema_real_eip !112
  %368 = add i64 %RSP_val.159, 8, !mcsema_real_eip !112
  %369 = inttoptr i64 %RSP_val.159 to i64*, !mcsema_real_eip !112
  %370 = load i64, i64* %369, !mcsema_real_eip !112
  store i64 %370, i64* %XIP, !mcsema_real_eip !112
  store i64 %368, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
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
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 168}
!6 = !{i64 173}
!7 = !{i64 175}
!8 = !{i64 182}
!9 = !{i64 185}
!10 = !{i64 189}
!11 = !{i64 192}
!12 = !{i64 197}
!13 = !{i64 202}
!14 = !{i64 204}
!15 = !{i64 208}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 224}
!19 = !{i64 228}
!20 = !{i64 234}
!21 = !{i64 237}
!22 = !{i64 240}
!23 = !{i64 243}
!24 = !{i64 247}
!25 = !{i64 251}
!26 = !{i64 254}
!27 = !{i64 257}
!28 = !{i64 260}
!29 = !{i64 263}
!30 = !{i64 268}
!31 = !{i64 275}
!32 = !{i64 279}
!33 = !{i64 285}
!34 = !{i64 288}
!35 = !{i64 291}
!36 = !{i64 295}
!37 = !{i64 299}
!38 = !{i64 302}
!39 = !{i64 305}
!40 = !{i64 308}
!41 = !{i64 311}
!42 = !{i64 316}
!43 = !{i64 321}
!44 = !{i64 326}
!45 = !{i64 331}
!46 = !{i64 336}
!47 = !{i64 342}
!48 = !{i64 348}
!49 = !{i64 353}
!50 = !{i64 357}
!51 = !{i64 361}
!52 = !{i64 368}
!53 = !{i64 373}
!54 = !{i64 381}
!55 = !{i64 386}
!56 = !{i64 389}
!57 = !{i64 394}
!58 = !{i64 404}
!59 = !{i64 407}
!60 = !{i64 410}
!61 = !{i64 412}
!62 = !{i64 417}
!63 = !{i64 420}
!64 = !{i64 423}
!65 = !{i64 425}
!66 = !{i64 429}
!67 = !{i64 430}
!68 = !{i64 0}
!69 = !{i64 1}
!70 = !{i64 4}
!71 = !{i64 5}
!72 = !{i64 9}
!73 = !{i64 13}
!74 = !{i64 17}
!75 = !{i64 20}
!76 = !{i64 23}
!77 = !{i64 26}
!78 = !{i64 29}
!79 = !{i64 32}
!80 = !{i64 36}
!81 = !{i64 40}
!82 = !{i64 43}
!83 = !{i64 47}
!84 = !{i64 51}
!85 = !{i64 55}
!86 = !{i64 62}
!87 = !{i64 69}
!88 = !{i64 72}
!89 = !{i64 75}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 89}
!93 = !{i64 92}
!94 = !{i64 96}
!95 = !{i64 100}
!96 = !{i64 103}
!97 = !{i64 106}
!98 = !{i64 109}
!99 = !{i64 112}
!100 = !{i64 115}
!101 = !{i64 118}
!102 = !{i64 123}
!103 = !{i64 126}
!104 = !{i64 129}
!105 = !{i64 132}
!106 = !{i64 135}
!107 = !{i64 138}
!108 = !{i64 141}
!109 = !{i64 144}
!110 = !{i64 147}
!111 = !{i64 148}
!112 = !{i64 149}
