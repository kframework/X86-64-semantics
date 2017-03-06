; ModuleID = 'Output/test_27.clang.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [28 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64
@data_0x218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [28 x i8] c"\FF\00\00\00\00A\0E\10\86\02C\0D\06I\83\05\8E\04\8F\03\1C\00\00\00<\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\12\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %R15_val.3 = load i64, i64* %R15, !mcsema_real_eip !4
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R15_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %R14_val.5 = load i64, i64* %R14, !mcsema_real_eip !5
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !5
  %5 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %R14_val.5, i64* %6, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  %RBX_val.7 = load i64, i64* %XBX, !mcsema_real_eip !6
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !6
  %7 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  store i64 %RBX_val.7, i64* %8, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, !mcsema_real_eip !6
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !7
  %9 = sext i8 104 to i64, !mcsema_real_eip !7
  %10 = sub i64 %RSP_val.9, %9, !mcsema_real_eip !7
  %11 = xor i64 %10, %RSP_val.9, !mcsema_real_eip !7
  %12 = xor i64 %11, %9, !mcsema_real_eip !7
  %13 = and i64 %12, 16, !mcsema_real_eip !7
  %14 = icmp ne i64 %13, 0, !mcsema_real_eip !7
  store i1 %14, i1* %AF, !mcsema_real_eip !7
  %15 = trunc i64 %10 to i8, !mcsema_real_eip !7
  %16 = call i8 @llvm.ctpop.i8(i8 %15), !mcsema_real_eip !7
  %17 = trunc i8 %16 to i1, !mcsema_real_eip !7
  %18 = xor i1 %17, true, !mcsema_real_eip !7
  store i1 %18, i1* %PF, !mcsema_real_eip !7
  %19 = icmp eq i64 %10, 0, !mcsema_real_eip !7
  store i1 %19, i1* %ZF, !mcsema_real_eip !7
  %20 = lshr i64 %10, 63, !mcsema_real_eip !7
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !7
  store i1 %21, i1* %SF, !mcsema_real_eip !7
  %22 = icmp ult i64 %RSP_val.9, %9, !mcsema_real_eip !7
  store i1 %22, i1* %CF, !mcsema_real_eip !7
  %23 = xor i64 %RSP_val.9, %9, !mcsema_real_eip !7
  %24 = xor i64 %RSP_val.9, %10, !mcsema_real_eip !7
  %25 = and i64 %23, %24, !mcsema_real_eip !7
  %26 = lshr i64 %25, 63, !mcsema_real_eip !7
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !7
  store i1 %27, i1* %OF, !mcsema_real_eip !7
  store i64 %10, i64* %XSP, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.10, 48, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = load i64, i64* %29, !mcsema_real_eip !8
  store i64 %30, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %31 = add i64 %RBP_val.11, 40, !mcsema_real_eip !9
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !9
  %33 = load i64, i64* %32, !mcsema_real_eip !9
  store i64 %33, i64* %R10, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %34 = add i64 %RBP_val.12, 24, !mcsema_real_eip !10
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !10
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !10
  store i64 %36, i64* %R11, !mcsema_real_eip !10
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !11
  %37 = add i64 %RBP_val.13, 16, !mcsema_real_eip !11
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !11
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !11
  %41 = load i32, i32* %40, !mcsema_real_eip !11
  %42 = zext i32 %41 to i64, !mcsema_real_eip !11
  store i64 %42, i64* %XBX, !mcsema_real_eip !11
  %43 = zext i32 12 to i64, !mcsema_real_eip !12
  store i64 %43, i64* %R14, !mcsema_real_eip !12
  %R14D.14 = bitcast i64* %R14 to i32*, !mcsema_real_eip !13
  %R14D_val.15 = load i32, i32* %R14D.14, !mcsema_real_eip !13
  %44 = zext i32 %R14D_val.15 to i64, !mcsema_real_eip !13
  store i64 %44, i64* %R15, !mcsema_real_eip !13
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !14
  %45 = add i64 %RBP_val.16, -56, !mcsema_real_eip !14
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !14
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !14
  store i64 %RDI_val.17, i64* %46, !mcsema_real_eip !14
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !15
  %47 = add i64 %RBP_val.18, -48, !mcsema_real_eip !15
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !15
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !15
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !15
  store i32 %ESI_val.20, i32* %50, !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %51 = add i64 %RBP_val.21, -56, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !16
  %53 = load i64, i64* %52, !mcsema_real_eip !16
  store i64 %53, i64* %XDI, !mcsema_real_eip !16
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !17
  %54 = add i64 %RBP_val.22, -40, !mcsema_real_eip !17
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !17
  %RDI_val.23 = load i64, i64* %XDI, !mcsema_real_eip !17
  store i64 %RDI_val.23, i64* %55, !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %56 = add i64 %RBP_val.24, -48, !mcsema_real_eip !18
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !18
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !18
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !18
  %60 = load i32, i32* %59, !mcsema_real_eip !18
  %61 = zext i32 %60 to i64, !mcsema_real_eip !18
  store i64 %61, i64* %XSI, !mcsema_real_eip !18
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !19
  %62 = add i64 %RBP_val.25, -32, !mcsema_real_eip !19
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !19
  %ESI.26 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.27 = load i32, i32* %ESI.26, !mcsema_real_eip !19
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !19
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !19
  store i32 %ESI_val.27, i32* %65, !mcsema_real_eip !19
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %66 = add i64 %RBP_val.28, -64, !mcsema_real_eip !20
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !20
  %RDX_val.29 = load i64, i64* %XDX, !mcsema_real_eip !20
  store i64 %RDX_val.29, i64* %67, !mcsema_real_eip !20
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !21
  %68 = add i64 %RBP_val.30, -72, !mcsema_real_eip !21
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !21
  %RCX_val.31 = load i64, i64* %XCX, !mcsema_real_eip !21
  store i64 %RCX_val.31, i64* %69, !mcsema_real_eip !21
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !22
  %70 = add i64 %RBP_val.32, -76, !mcsema_real_eip !22
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !22
  %R8D.33 = bitcast i64* %R8 to i32*, !mcsema_real_eip !22
  %R8D_val.34 = load i32, i32* %R8D.33, !mcsema_real_eip !22
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !22
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !22
  store i32 %R8D_val.34, i32* %73, !mcsema_real_eip !22
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !23
  %74 = add i64 %RBP_val.35, -80, !mcsema_real_eip !23
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !23
  %R9D.36 = bitcast i64* %R9 to i32*, !mcsema_real_eip !23
  %R9D_val.37 = load i32, i32* %R9D.36, !mcsema_real_eip !23
  %76 = ptrtoint i64* %75 to i64, !mcsema_real_eip !23
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !23
  store i32 %R9D_val.37, i32* %77, !mcsema_real_eip !23
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !24
  %78 = add i64 %RBP_val.38, -84, !mcsema_real_eip !24
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !24
  %EBX.39 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.40 = load i32, i32* %EBX.39, !mcsema_real_eip !24
  %80 = ptrtoint i64* %79 to i64, !mcsema_real_eip !24
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.40, i32* %81, !mcsema_real_eip !24
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !25
  %82 = add i64 %RBP_val.41, -96, !mcsema_real_eip !25
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !25
  %R10_val.42 = load i64, i64* %R10, !mcsema_real_eip !25
  store i64 %R10_val.42, i64* %83, !mcsema_real_eip !25
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !26
  %84 = add i64 %RBP_val.43, -104, !mcsema_real_eip !26
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !26
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !26
  store i64 %RAX_val.44, i64* %85, !mcsema_real_eip !26
  %R15_val.45 = load i64, i64* %R15, !mcsema_real_eip !27
  store i64 %R15_val.45, i64* %XDI, !mcsema_real_eip !27
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !28
  %86 = add i64 %RBP_val.46, -120, !mcsema_real_eip !28
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !28
  %R11_val.47 = load i64, i64* %R11, !mcsema_real_eip !28
  store i64 %R11_val.47, i64* %87, !mcsema_real_eip !28
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !29
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !29
  %88 = sub i64 %RSP_val.49, 8, !mcsema_real_eip !29
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !29
  store i64 -2415393069852865332, i64* %89, !mcsema_real_eip !29
  store i64 %88, i64* %XSP, !mcsema_real_eip !29
  %90 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.48), !mcsema_real_eip !29
  store i64 %90, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !30
  %91 = add i64 %RBP_val.50, -112, !mcsema_real_eip !30
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !30
  %RAX_val.51 = load i64, i64* %XAX, !mcsema_real_eip !30
  store i64 %RAX_val.51, i64* %92, !mcsema_real_eip !30
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !31
  %93 = add i64 %RBP_val.52, -40, !mcsema_real_eip !31
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !31
  %95 = ptrtoint i64* %94 to i64, !mcsema_real_eip !31
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !31
  %97 = load i32, i32* %96, !mcsema_real_eip !31
  %98 = zext i32 %97 to i64, !mcsema_real_eip !31
  store i64 %98, i64* %XSI, !mcsema_real_eip !31
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !32
  %99 = add i64 %RBP_val.53, -64, !mcsema_real_eip !32
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !32
  %101 = load i64, i64* %100, !mcsema_real_eip !32
  store i64 %101, i64* %XAX, !mcsema_real_eip !32
  %RAX_val.54 = load i64, i64* %XAX, !mcsema_real_eip !33
  %102 = add i64 %RAX_val.54, 0, !mcsema_real_eip !33
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !33
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !33
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !33
  %106 = load i32, i32* %105, !mcsema_real_eip !33
  %ESI.55 = bitcast i64* %XSI to i32*, !mcsema_real_eip !33
  %ESI_val.56 = load i32, i32* %ESI.55, !mcsema_real_eip !33
  %107 = add i32 %ESI_val.56, %106, !mcsema_real_eip !33
  %108 = xor i32 %107, %106, !mcsema_real_eip !33
  %109 = xor i32 %108, %ESI_val.56, !mcsema_real_eip !33
  %110 = and i32 %109, 16, !mcsema_real_eip !33
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !33
  store i1 %111, i1* %AF, !mcsema_real_eip !33
  %112 = lshr i32 %107, 31, !mcsema_real_eip !33
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !33
  store i1 %113, i1* %SF, !mcsema_real_eip !33
  %114 = icmp eq i32 %107, 0, !mcsema_real_eip !33
  store i1 %114, i1* %ZF, !mcsema_real_eip !33
  %115 = xor i32 %106, %ESI_val.56, !mcsema_real_eip !33
  %116 = xor i32 %115, -1, !mcsema_real_eip !33
  %117 = xor i32 %106, %107, !mcsema_real_eip !33
  %118 = and i32 %116, %117, !mcsema_real_eip !33
  %119 = lshr i32 %118, 31, !mcsema_real_eip !33
  %120 = and i32 %119, 1, !mcsema_real_eip !33
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !33
  store i1 %121, i1* %OF, !mcsema_real_eip !33
  %122 = trunc i32 %107 to i8, !mcsema_real_eip !33
  %123 = call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !33
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !33
  %125 = xor i1 %124, true, !mcsema_real_eip !33
  store i1 %125, i1* %PF, !mcsema_real_eip !33
  %126 = icmp ult i32 %107, %106, !mcsema_real_eip !33
  store i1 %126, i1* %CF, !mcsema_real_eip !33
  %127 = zext i32 %107 to i64, !mcsema_real_eip !33
  store i64 %127, i64* %XSI, !mcsema_real_eip !33
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !34
  %128 = add i64 %RBP_val.57, -72, !mcsema_real_eip !34
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !34
  %130 = load i64, i64* %129, !mcsema_real_eip !34
  store i64 %130, i64* %XAX, !mcsema_real_eip !34
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !35
  %131 = add i64 %RAX_val.58, 0, !mcsema_real_eip !35
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !35
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !35
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !35
  %135 = load i32, i32* %134, !mcsema_real_eip !35
  %ESI.59 = bitcast i64* %XSI to i32*, !mcsema_real_eip !35
  %ESI_val.60 = load i32, i32* %ESI.59, !mcsema_real_eip !35
  %136 = add i32 %ESI_val.60, %135, !mcsema_real_eip !35
  %137 = xor i32 %136, %135, !mcsema_real_eip !35
  %138 = xor i32 %137, %ESI_val.60, !mcsema_real_eip !35
  %139 = and i32 %138, 16, !mcsema_real_eip !35
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !35
  store i1 %140, i1* %AF, !mcsema_real_eip !35
  %141 = lshr i32 %136, 31, !mcsema_real_eip !35
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !35
  store i1 %142, i1* %SF, !mcsema_real_eip !35
  %143 = icmp eq i32 %136, 0, !mcsema_real_eip !35
  store i1 %143, i1* %ZF, !mcsema_real_eip !35
  %144 = xor i32 %135, %ESI_val.60, !mcsema_real_eip !35
  %145 = xor i32 %144, -1, !mcsema_real_eip !35
  %146 = xor i32 %135, %136, !mcsema_real_eip !35
  %147 = and i32 %145, %146, !mcsema_real_eip !35
  %148 = lshr i32 %147, 31, !mcsema_real_eip !35
  %149 = and i32 %148, 1, !mcsema_real_eip !35
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !35
  store i1 %150, i1* %OF, !mcsema_real_eip !35
  %151 = trunc i32 %136 to i8, !mcsema_real_eip !35
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !35
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !35
  %154 = xor i1 %153, true, !mcsema_real_eip !35
  store i1 %154, i1* %PF, !mcsema_real_eip !35
  %155 = icmp ult i32 %136, %135, !mcsema_real_eip !35
  store i1 %155, i1* %CF, !mcsema_real_eip !35
  %156 = zext i32 %136 to i64, !mcsema_real_eip !35
  store i64 %156, i64* %XSI, !mcsema_real_eip !35
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !36
  %157 = add i64 %RBP_val.61, -120, !mcsema_real_eip !36
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !36
  %159 = load i64, i64* %158, !mcsema_real_eip !36
  store i64 %159, i64* %XAX, !mcsema_real_eip !36
  %RAX_val.62 = load i64, i64* %XAX, !mcsema_real_eip !37
  %160 = add i64 %RAX_val.62, 0, !mcsema_real_eip !37
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !37
  %162 = ptrtoint i64* %161 to i64, !mcsema_real_eip !37
  %163 = inttoptr i64 %162 to i32*, !mcsema_real_eip !37
  %164 = load i32, i32* %163, !mcsema_real_eip !37
  %165 = zext i32 %164 to i64, !mcsema_real_eip !37
  store i64 %165, i64* %R8, !mcsema_real_eip !37
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !38
  %166 = add i64 %RBP_val.63, -96, !mcsema_real_eip !38
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !38
  %168 = load i64, i64* %167, !mcsema_real_eip !38
  store i64 %168, i64* %XCX, !mcsema_real_eip !38
  %RCX_val.64 = load i64, i64* %XCX, !mcsema_real_eip !39
  %169 = add i64 %RCX_val.64, 0, !mcsema_real_eip !39
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !39
  %171 = ptrtoint i64* %170 to i64, !mcsema_real_eip !39
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !39
  %173 = load i32, i32* %172, !mcsema_real_eip !39
  %R8D.65 = bitcast i64* %R8 to i32*, !mcsema_real_eip !39
  %R8D_val.66 = load i32, i32* %R8D.65, !mcsema_real_eip !39
  %174 = add i32 %R8D_val.66, %173, !mcsema_real_eip !39
  %175 = xor i32 %174, %173, !mcsema_real_eip !39
  %176 = xor i32 %175, %R8D_val.66, !mcsema_real_eip !39
  %177 = and i32 %176, 16, !mcsema_real_eip !39
  %178 = icmp ne i32 %177, 0, !mcsema_real_eip !39
  store i1 %178, i1* %AF, !mcsema_real_eip !39
  %179 = lshr i32 %174, 31, !mcsema_real_eip !39
  %180 = trunc i32 %179 to i1, !mcsema_real_eip !39
  store i1 %180, i1* %SF, !mcsema_real_eip !39
  %181 = icmp eq i32 %174, 0, !mcsema_real_eip !39
  store i1 %181, i1* %ZF, !mcsema_real_eip !39
  %182 = xor i32 %173, %R8D_val.66, !mcsema_real_eip !39
  %183 = xor i32 %182, -1, !mcsema_real_eip !39
  %184 = xor i32 %173, %174, !mcsema_real_eip !39
  %185 = and i32 %183, %184, !mcsema_real_eip !39
  %186 = lshr i32 %185, 31, !mcsema_real_eip !39
  %187 = and i32 %186, 1, !mcsema_real_eip !39
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !39
  store i1 %188, i1* %OF, !mcsema_real_eip !39
  %189 = trunc i32 %174 to i8, !mcsema_real_eip !39
  %190 = call i8 @llvm.ctpop.i8(i8 %189), !mcsema_real_eip !39
  %191 = trunc i8 %190 to i1, !mcsema_real_eip !39
  %192 = xor i1 %191, true, !mcsema_real_eip !39
  store i1 %192, i1* %PF, !mcsema_real_eip !39
  %193 = icmp ult i32 %174, %173, !mcsema_real_eip !39
  store i1 %193, i1* %CF, !mcsema_real_eip !39
  %194 = zext i32 %174 to i64, !mcsema_real_eip !39
  store i64 %194, i64* %R8, !mcsema_real_eip !39
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !40
  %195 = add i64 %RBP_val.67, -104, !mcsema_real_eip !40
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !40
  %197 = load i64, i64* %196, !mcsema_real_eip !40
  store i64 %197, i64* %XCX, !mcsema_real_eip !40
  %RCX_val.68 = load i64, i64* %XCX, !mcsema_real_eip !41
  %198 = add i64 %RCX_val.68, 0, !mcsema_real_eip !41
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !41
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !41
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !41
  %202 = load i32, i32* %201, !mcsema_real_eip !41
  %R8D.69 = bitcast i64* %R8 to i32*, !mcsema_real_eip !41
  %R8D_val.70 = load i32, i32* %R8D.69, !mcsema_real_eip !41
  %203 = add i32 %R8D_val.70, %202, !mcsema_real_eip !41
  %204 = xor i32 %203, %202, !mcsema_real_eip !41
  %205 = xor i32 %204, %R8D_val.70, !mcsema_real_eip !41
  %206 = and i32 %205, 16, !mcsema_real_eip !41
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !41
  store i1 %207, i1* %AF, !mcsema_real_eip !41
  %208 = lshr i32 %203, 31, !mcsema_real_eip !41
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !41
  store i1 %209, i1* %SF, !mcsema_real_eip !41
  %210 = icmp eq i32 %203, 0, !mcsema_real_eip !41
  store i1 %210, i1* %ZF, !mcsema_real_eip !41
  %211 = xor i32 %202, %R8D_val.70, !mcsema_real_eip !41
  %212 = xor i32 %211, -1, !mcsema_real_eip !41
  %213 = xor i32 %202, %203, !mcsema_real_eip !41
  %214 = and i32 %212, %213, !mcsema_real_eip !41
  %215 = lshr i32 %214, 31, !mcsema_real_eip !41
  %216 = and i32 %215, 1, !mcsema_real_eip !41
  %217 = trunc i32 %216 to i1, !mcsema_real_eip !41
  store i1 %217, i1* %OF, !mcsema_real_eip !41
  %218 = trunc i32 %203 to i8, !mcsema_real_eip !41
  %219 = call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !41
  %220 = trunc i8 %219 to i1, !mcsema_real_eip !41
  %221 = xor i1 %220, true, !mcsema_real_eip !41
  store i1 %221, i1* %PF, !mcsema_real_eip !41
  %222 = icmp ult i32 %203, %202, !mcsema_real_eip !41
  store i1 %222, i1* %CF, !mcsema_real_eip !41
  %223 = zext i32 %203 to i64, !mcsema_real_eip !41
  store i64 %223, i64* %R8, !mcsema_real_eip !41
  %ESI.71 = bitcast i64* %XSI to i32*, !mcsema_real_eip !42
  %ESI_val.72 = load i32, i32* %ESI.71, !mcsema_real_eip !42
  %R8D.73 = bitcast i64* %R8 to i32*, !mcsema_real_eip !42
  %R8D_val.74 = load i32, i32* %R8D.73, !mcsema_real_eip !42
  %224 = add i32 %R8D_val.74, %ESI_val.72, !mcsema_real_eip !42
  %225 = xor i32 %224, %ESI_val.72, !mcsema_real_eip !42
  %226 = xor i32 %225, %R8D_val.74, !mcsema_real_eip !42
  %227 = and i32 %226, 16, !mcsema_real_eip !42
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !42
  store i1 %228, i1* %AF, !mcsema_real_eip !42
  %229 = lshr i32 %224, 31, !mcsema_real_eip !42
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !42
  store i1 %230, i1* %SF, !mcsema_real_eip !42
  %231 = icmp eq i32 %224, 0, !mcsema_real_eip !42
  store i1 %231, i1* %ZF, !mcsema_real_eip !42
  %232 = xor i32 %ESI_val.72, %R8D_val.74, !mcsema_real_eip !42
  %233 = xor i32 %232, -1, !mcsema_real_eip !42
  %234 = xor i32 %ESI_val.72, %224, !mcsema_real_eip !42
  %235 = and i32 %233, %234, !mcsema_real_eip !42
  %236 = lshr i32 %235, 31, !mcsema_real_eip !42
  %237 = and i32 %236, 1, !mcsema_real_eip !42
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !42
  store i1 %238, i1* %OF, !mcsema_real_eip !42
  %239 = trunc i32 %224 to i8, !mcsema_real_eip !42
  %240 = call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !42
  %241 = trunc i8 %240 to i1, !mcsema_real_eip !42
  %242 = xor i1 %241, true, !mcsema_real_eip !42
  store i1 %242, i1* %PF, !mcsema_real_eip !42
  %243 = icmp ult i32 %224, %ESI_val.72, !mcsema_real_eip !42
  store i1 %243, i1* %CF, !mcsema_real_eip !42
  %244 = zext i32 %224 to i64, !mcsema_real_eip !42
  store i64 %244, i64* %XSI, !mcsema_real_eip !42
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !43
  %245 = add i64 %RBP_val.75, -112, !mcsema_real_eip !43
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !43
  %247 = load i64, i64* %246, !mcsema_real_eip !43
  store i64 %247, i64* %XCX, !mcsema_real_eip !43
  %RCX_val.76 = load i64, i64* %XCX, !mcsema_real_eip !44
  %248 = add i64 %RCX_val.76, 0, !mcsema_real_eip !44
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !44
  %ESI.77 = bitcast i64* %XSI to i32*, !mcsema_real_eip !44
  %ESI_val.78 = load i32, i32* %ESI.77, !mcsema_real_eip !44
  %250 = ptrtoint i64* %249 to i64, !mcsema_real_eip !44
  %251 = inttoptr i64 %250 to i32*, !mcsema_real_eip !44
  store i32 %ESI_val.78, i32* %251, !mcsema_real_eip !44
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !45
  %252 = add i64 %RBP_val.79, -36, !mcsema_real_eip !45
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !45
  %254 = ptrtoint i64* %253 to i64, !mcsema_real_eip !45
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !45
  %256 = load i32, i32* %255, !mcsema_real_eip !45
  %257 = zext i32 %256 to i64, !mcsema_real_eip !45
  store i64 %257, i64* %XSI, !mcsema_real_eip !45
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !46
  %258 = add i64 %RBP_val.80, -64, !mcsema_real_eip !46
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !46
  %260 = load i64, i64* %259, !mcsema_real_eip !46
  store i64 %260, i64* %XCX, !mcsema_real_eip !46
  %RCX_val.81 = load i64, i64* %XCX, !mcsema_real_eip !47
  %261 = add i64 %RCX_val.81, 4, !mcsema_real_eip !47
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !47
  %263 = ptrtoint i64* %262 to i64, !mcsema_real_eip !47
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !47
  %265 = load i32, i32* %264, !mcsema_real_eip !47
  %ESI.82 = bitcast i64* %XSI to i32*, !mcsema_real_eip !47
  %ESI_val.83 = load i32, i32* %ESI.82, !mcsema_real_eip !47
  %266 = add i32 %ESI_val.83, %265, !mcsema_real_eip !47
  %267 = xor i32 %266, %265, !mcsema_real_eip !47
  %268 = xor i32 %267, %ESI_val.83, !mcsema_real_eip !47
  %269 = and i32 %268, 16, !mcsema_real_eip !47
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !47
  store i1 %270, i1* %AF, !mcsema_real_eip !47
  %271 = lshr i32 %266, 31, !mcsema_real_eip !47
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !47
  store i1 %272, i1* %SF, !mcsema_real_eip !47
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !47
  store i1 %273, i1* %ZF, !mcsema_real_eip !47
  %274 = xor i32 %265, %ESI_val.83, !mcsema_real_eip !47
  %275 = xor i32 %274, -1, !mcsema_real_eip !47
  %276 = xor i32 %265, %266, !mcsema_real_eip !47
  %277 = and i32 %275, %276, !mcsema_real_eip !47
  %278 = lshr i32 %277, 31, !mcsema_real_eip !47
  %279 = and i32 %278, 1, !mcsema_real_eip !47
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !47
  store i1 %280, i1* %OF, !mcsema_real_eip !47
  %281 = trunc i32 %266 to i8, !mcsema_real_eip !47
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !47
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !47
  %284 = xor i1 %283, true, !mcsema_real_eip !47
  store i1 %284, i1* %PF, !mcsema_real_eip !47
  %285 = icmp ult i32 %266, %265, !mcsema_real_eip !47
  store i1 %285, i1* %CF, !mcsema_real_eip !47
  %286 = zext i32 %266 to i64, !mcsema_real_eip !47
  store i64 %286, i64* %XSI, !mcsema_real_eip !47
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !48
  %287 = add i64 %RBP_val.84, -72, !mcsema_real_eip !48
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !48
  %289 = load i64, i64* %288, !mcsema_real_eip !48
  store i64 %289, i64* %XCX, !mcsema_real_eip !48
  %RCX_val.85 = load i64, i64* %XCX, !mcsema_real_eip !49
  %290 = add i64 %RCX_val.85, 4, !mcsema_real_eip !49
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !49
  %292 = ptrtoint i64* %291 to i64, !mcsema_real_eip !49
  %293 = inttoptr i64 %292 to i32*, !mcsema_real_eip !49
  %294 = load i32, i32* %293, !mcsema_real_eip !49
  %ESI.86 = bitcast i64* %XSI to i32*, !mcsema_real_eip !49
  %ESI_val.87 = load i32, i32* %ESI.86, !mcsema_real_eip !49
  %295 = add i32 %ESI_val.87, %294, !mcsema_real_eip !49
  %296 = xor i32 %295, %294, !mcsema_real_eip !49
  %297 = xor i32 %296, %ESI_val.87, !mcsema_real_eip !49
  %298 = and i32 %297, 16, !mcsema_real_eip !49
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !49
  store i1 %299, i1* %AF, !mcsema_real_eip !49
  %300 = lshr i32 %295, 31, !mcsema_real_eip !49
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !49
  store i1 %301, i1* %SF, !mcsema_real_eip !49
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !49
  store i1 %302, i1* %ZF, !mcsema_real_eip !49
  %303 = xor i32 %294, %ESI_val.87, !mcsema_real_eip !49
  %304 = xor i32 %303, -1, !mcsema_real_eip !49
  %305 = xor i32 %294, %295, !mcsema_real_eip !49
  %306 = and i32 %304, %305, !mcsema_real_eip !49
  %307 = lshr i32 %306, 31, !mcsema_real_eip !49
  %308 = and i32 %307, 1, !mcsema_real_eip !49
  %309 = trunc i32 %308 to i1, !mcsema_real_eip !49
  store i1 %309, i1* %OF, !mcsema_real_eip !49
  %310 = trunc i32 %295 to i8, !mcsema_real_eip !49
  %311 = call i8 @llvm.ctpop.i8(i8 %310), !mcsema_real_eip !49
  %312 = trunc i8 %311 to i1, !mcsema_real_eip !49
  %313 = xor i1 %312, true, !mcsema_real_eip !49
  store i1 %313, i1* %PF, !mcsema_real_eip !49
  %314 = icmp ult i32 %295, %294, !mcsema_real_eip !49
  store i1 %314, i1* %CF, !mcsema_real_eip !49
  %315 = zext i32 %295 to i64, !mcsema_real_eip !49
  store i64 %315, i64* %XSI, !mcsema_real_eip !49
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !50
  %316 = add i64 %RAX_val.88, 4, !mcsema_real_eip !50
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !50
  %318 = ptrtoint i64* %317 to i64, !mcsema_real_eip !50
  %319 = inttoptr i64 %318 to i32*, !mcsema_real_eip !50
  %320 = load i32, i32* %319, !mcsema_real_eip !50
  %321 = zext i32 %320 to i64, !mcsema_real_eip !50
  store i64 %321, i64* %R8, !mcsema_real_eip !50
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !51
  %322 = add i64 %RBP_val.89, -96, !mcsema_real_eip !51
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !51
  %324 = load i64, i64* %323, !mcsema_real_eip !51
  store i64 %324, i64* %XCX, !mcsema_real_eip !51
  %RCX_val.90 = load i64, i64* %XCX, !mcsema_real_eip !52
  %325 = add i64 %RCX_val.90, 4, !mcsema_real_eip !52
  %326 = inttoptr i64 %325 to i64*, !mcsema_real_eip !52
  %327 = ptrtoint i64* %326 to i64, !mcsema_real_eip !52
  %328 = inttoptr i64 %327 to i32*, !mcsema_real_eip !52
  %329 = load i32, i32* %328, !mcsema_real_eip !52
  %R8D.91 = bitcast i64* %R8 to i32*, !mcsema_real_eip !52
  %R8D_val.92 = load i32, i32* %R8D.91, !mcsema_real_eip !52
  %330 = add i32 %R8D_val.92, %329, !mcsema_real_eip !52
  %331 = xor i32 %330, %329, !mcsema_real_eip !52
  %332 = xor i32 %331, %R8D_val.92, !mcsema_real_eip !52
  %333 = and i32 %332, 16, !mcsema_real_eip !52
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !52
  store i1 %334, i1* %AF, !mcsema_real_eip !52
  %335 = lshr i32 %330, 31, !mcsema_real_eip !52
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !52
  store i1 %336, i1* %SF, !mcsema_real_eip !52
  %337 = icmp eq i32 %330, 0, !mcsema_real_eip !52
  store i1 %337, i1* %ZF, !mcsema_real_eip !52
  %338 = xor i32 %329, %R8D_val.92, !mcsema_real_eip !52
  %339 = xor i32 %338, -1, !mcsema_real_eip !52
  %340 = xor i32 %329, %330, !mcsema_real_eip !52
  %341 = and i32 %339, %340, !mcsema_real_eip !52
  %342 = lshr i32 %341, 31, !mcsema_real_eip !52
  %343 = and i32 %342, 1, !mcsema_real_eip !52
  %344 = trunc i32 %343 to i1, !mcsema_real_eip !52
  store i1 %344, i1* %OF, !mcsema_real_eip !52
  %345 = trunc i32 %330 to i8, !mcsema_real_eip !52
  %346 = call i8 @llvm.ctpop.i8(i8 %345), !mcsema_real_eip !52
  %347 = trunc i8 %346 to i1, !mcsema_real_eip !52
  %348 = xor i1 %347, true, !mcsema_real_eip !52
  store i1 %348, i1* %PF, !mcsema_real_eip !52
  %349 = icmp ult i32 %330, %329, !mcsema_real_eip !52
  store i1 %349, i1* %CF, !mcsema_real_eip !52
  %350 = zext i32 %330 to i64, !mcsema_real_eip !52
  store i64 %350, i64* %R8, !mcsema_real_eip !52
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !53
  %351 = add i64 %RBP_val.93, -104, !mcsema_real_eip !53
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !53
  %353 = load i64, i64* %352, !mcsema_real_eip !53
  store i64 %353, i64* %XCX, !mcsema_real_eip !53
  %RCX_val.94 = load i64, i64* %XCX, !mcsema_real_eip !54
  %354 = add i64 %RCX_val.94, 4, !mcsema_real_eip !54
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !54
  %356 = ptrtoint i64* %355 to i64, !mcsema_real_eip !54
  %357 = inttoptr i64 %356 to i32*, !mcsema_real_eip !54
  %358 = load i32, i32* %357, !mcsema_real_eip !54
  %R8D.95 = bitcast i64* %R8 to i32*, !mcsema_real_eip !54
  %R8D_val.96 = load i32, i32* %R8D.95, !mcsema_real_eip !54
  %359 = add i32 %R8D_val.96, %358, !mcsema_real_eip !54
  %360 = xor i32 %359, %358, !mcsema_real_eip !54
  %361 = xor i32 %360, %R8D_val.96, !mcsema_real_eip !54
  %362 = and i32 %361, 16, !mcsema_real_eip !54
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !54
  store i1 %363, i1* %AF, !mcsema_real_eip !54
  %364 = lshr i32 %359, 31, !mcsema_real_eip !54
  %365 = trunc i32 %364 to i1, !mcsema_real_eip !54
  store i1 %365, i1* %SF, !mcsema_real_eip !54
  %366 = icmp eq i32 %359, 0, !mcsema_real_eip !54
  store i1 %366, i1* %ZF, !mcsema_real_eip !54
  %367 = xor i32 %358, %R8D_val.96, !mcsema_real_eip !54
  %368 = xor i32 %367, -1, !mcsema_real_eip !54
  %369 = xor i32 %358, %359, !mcsema_real_eip !54
  %370 = and i32 %368, %369, !mcsema_real_eip !54
  %371 = lshr i32 %370, 31, !mcsema_real_eip !54
  %372 = and i32 %371, 1, !mcsema_real_eip !54
  %373 = trunc i32 %372 to i1, !mcsema_real_eip !54
  store i1 %373, i1* %OF, !mcsema_real_eip !54
  %374 = trunc i32 %359 to i8, !mcsema_real_eip !54
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !54
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !54
  %377 = xor i1 %376, true, !mcsema_real_eip !54
  store i1 %377, i1* %PF, !mcsema_real_eip !54
  %378 = icmp ult i32 %359, %358, !mcsema_real_eip !54
  store i1 %378, i1* %CF, !mcsema_real_eip !54
  %379 = zext i32 %359 to i64, !mcsema_real_eip !54
  store i64 %379, i64* %R8, !mcsema_real_eip !54
  %ESI.97 = bitcast i64* %XSI to i32*, !mcsema_real_eip !55
  %ESI_val.98 = load i32, i32* %ESI.97, !mcsema_real_eip !55
  %R8D.99 = bitcast i64* %R8 to i32*, !mcsema_real_eip !55
  %R8D_val.100 = load i32, i32* %R8D.99, !mcsema_real_eip !55
  %380 = add i32 %R8D_val.100, %ESI_val.98, !mcsema_real_eip !55
  %381 = xor i32 %380, %ESI_val.98, !mcsema_real_eip !55
  %382 = xor i32 %381, %R8D_val.100, !mcsema_real_eip !55
  %383 = and i32 %382, 16, !mcsema_real_eip !55
  %384 = icmp ne i32 %383, 0, !mcsema_real_eip !55
  store i1 %384, i1* %AF, !mcsema_real_eip !55
  %385 = lshr i32 %380, 31, !mcsema_real_eip !55
  %386 = trunc i32 %385 to i1, !mcsema_real_eip !55
  store i1 %386, i1* %SF, !mcsema_real_eip !55
  %387 = icmp eq i32 %380, 0, !mcsema_real_eip !55
  store i1 %387, i1* %ZF, !mcsema_real_eip !55
  %388 = xor i32 %ESI_val.98, %R8D_val.100, !mcsema_real_eip !55
  %389 = xor i32 %388, -1, !mcsema_real_eip !55
  %390 = xor i32 %ESI_val.98, %380, !mcsema_real_eip !55
  %391 = and i32 %389, %390, !mcsema_real_eip !55
  %392 = lshr i32 %391, 31, !mcsema_real_eip !55
  %393 = and i32 %392, 1, !mcsema_real_eip !55
  %394 = trunc i32 %393 to i1, !mcsema_real_eip !55
  store i1 %394, i1* %OF, !mcsema_real_eip !55
  %395 = trunc i32 %380 to i8, !mcsema_real_eip !55
  %396 = call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !55
  %397 = trunc i8 %396 to i1, !mcsema_real_eip !55
  %398 = xor i1 %397, true, !mcsema_real_eip !55
  store i1 %398, i1* %PF, !mcsema_real_eip !55
  %399 = icmp ult i32 %380, %ESI_val.98, !mcsema_real_eip !55
  store i1 %399, i1* %CF, !mcsema_real_eip !55
  %400 = zext i32 %380 to i64, !mcsema_real_eip !55
  store i64 %400, i64* %XSI, !mcsema_real_eip !55
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !56
  %401 = add i64 %RBP_val.101, -112, !mcsema_real_eip !56
  %402 = inttoptr i64 %401 to i64*, !mcsema_real_eip !56
  %403 = load i64, i64* %402, !mcsema_real_eip !56
  store i64 %403, i64* %XCX, !mcsema_real_eip !56
  %RCX_val.102 = load i64, i64* %XCX, !mcsema_real_eip !57
  %404 = add i64 %RCX_val.102, 4, !mcsema_real_eip !57
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !57
  %ESI.103 = bitcast i64* %XSI to i32*, !mcsema_real_eip !57
  %ESI_val.104 = load i32, i32* %ESI.103, !mcsema_real_eip !57
  %406 = ptrtoint i64* %405 to i64, !mcsema_real_eip !57
  %407 = inttoptr i64 %406 to i32*, !mcsema_real_eip !57
  store i32 %ESI_val.104, i32* %407, !mcsema_real_eip !57
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !58
  %408 = add i64 %RBP_val.105, -32, !mcsema_real_eip !58
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !58
  %410 = ptrtoint i64* %409 to i64, !mcsema_real_eip !58
  %411 = inttoptr i64 %410 to i32*, !mcsema_real_eip !58
  %412 = load i32, i32* %411, !mcsema_real_eip !58
  %413 = zext i32 %412 to i64, !mcsema_real_eip !58
  store i64 %413, i64* %XSI, !mcsema_real_eip !58
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !59
  %414 = add i64 %RBP_val.106, -64, !mcsema_real_eip !59
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !59
  %416 = load i64, i64* %415, !mcsema_real_eip !59
  store i64 %416, i64* %XCX, !mcsema_real_eip !59
  %RCX_val.107 = load i64, i64* %XCX, !mcsema_real_eip !60
  %417 = add i64 %RCX_val.107, 8, !mcsema_real_eip !60
  %418 = inttoptr i64 %417 to i64*, !mcsema_real_eip !60
  %419 = ptrtoint i64* %418 to i64, !mcsema_real_eip !60
  %420 = inttoptr i64 %419 to i32*, !mcsema_real_eip !60
  %421 = load i32, i32* %420, !mcsema_real_eip !60
  %ESI.108 = bitcast i64* %XSI to i32*, !mcsema_real_eip !60
  %ESI_val.109 = load i32, i32* %ESI.108, !mcsema_real_eip !60
  %422 = add i32 %ESI_val.109, %421, !mcsema_real_eip !60
  %423 = xor i32 %422, %421, !mcsema_real_eip !60
  %424 = xor i32 %423, %ESI_val.109, !mcsema_real_eip !60
  %425 = and i32 %424, 16, !mcsema_real_eip !60
  %426 = icmp ne i32 %425, 0, !mcsema_real_eip !60
  store i1 %426, i1* %AF, !mcsema_real_eip !60
  %427 = lshr i32 %422, 31, !mcsema_real_eip !60
  %428 = trunc i32 %427 to i1, !mcsema_real_eip !60
  store i1 %428, i1* %SF, !mcsema_real_eip !60
  %429 = icmp eq i32 %422, 0, !mcsema_real_eip !60
  store i1 %429, i1* %ZF, !mcsema_real_eip !60
  %430 = xor i32 %421, %ESI_val.109, !mcsema_real_eip !60
  %431 = xor i32 %430, -1, !mcsema_real_eip !60
  %432 = xor i32 %421, %422, !mcsema_real_eip !60
  %433 = and i32 %431, %432, !mcsema_real_eip !60
  %434 = lshr i32 %433, 31, !mcsema_real_eip !60
  %435 = and i32 %434, 1, !mcsema_real_eip !60
  %436 = trunc i32 %435 to i1, !mcsema_real_eip !60
  store i1 %436, i1* %OF, !mcsema_real_eip !60
  %437 = trunc i32 %422 to i8, !mcsema_real_eip !60
  %438 = call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !60
  %439 = trunc i8 %438 to i1, !mcsema_real_eip !60
  %440 = xor i1 %439, true, !mcsema_real_eip !60
  store i1 %440, i1* %PF, !mcsema_real_eip !60
  %441 = icmp ult i32 %422, %421, !mcsema_real_eip !60
  store i1 %441, i1* %CF, !mcsema_real_eip !60
  %442 = zext i32 %422 to i64, !mcsema_real_eip !60
  store i64 %442, i64* %XSI, !mcsema_real_eip !60
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !61
  %443 = add i64 %RBP_val.110, -72, !mcsema_real_eip !61
  %444 = inttoptr i64 %443 to i64*, !mcsema_real_eip !61
  %445 = load i64, i64* %444, !mcsema_real_eip !61
  store i64 %445, i64* %XCX, !mcsema_real_eip !61
  %RCX_val.111 = load i64, i64* %XCX, !mcsema_real_eip !62
  %446 = add i64 %RCX_val.111, 8, !mcsema_real_eip !62
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !62
  %448 = ptrtoint i64* %447 to i64, !mcsema_real_eip !62
  %449 = inttoptr i64 %448 to i32*, !mcsema_real_eip !62
  %450 = load i32, i32* %449, !mcsema_real_eip !62
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !62
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !62
  %451 = add i32 %ESI_val.113, %450, !mcsema_real_eip !62
  %452 = xor i32 %451, %450, !mcsema_real_eip !62
  %453 = xor i32 %452, %ESI_val.113, !mcsema_real_eip !62
  %454 = and i32 %453, 16, !mcsema_real_eip !62
  %455 = icmp ne i32 %454, 0, !mcsema_real_eip !62
  store i1 %455, i1* %AF, !mcsema_real_eip !62
  %456 = lshr i32 %451, 31, !mcsema_real_eip !62
  %457 = trunc i32 %456 to i1, !mcsema_real_eip !62
  store i1 %457, i1* %SF, !mcsema_real_eip !62
  %458 = icmp eq i32 %451, 0, !mcsema_real_eip !62
  store i1 %458, i1* %ZF, !mcsema_real_eip !62
  %459 = xor i32 %450, %ESI_val.113, !mcsema_real_eip !62
  %460 = xor i32 %459, -1, !mcsema_real_eip !62
  %461 = xor i32 %450, %451, !mcsema_real_eip !62
  %462 = and i32 %460, %461, !mcsema_real_eip !62
  %463 = lshr i32 %462, 31, !mcsema_real_eip !62
  %464 = and i32 %463, 1, !mcsema_real_eip !62
  %465 = trunc i32 %464 to i1, !mcsema_real_eip !62
  store i1 %465, i1* %OF, !mcsema_real_eip !62
  %466 = trunc i32 %451 to i8, !mcsema_real_eip !62
  %467 = call i8 @llvm.ctpop.i8(i8 %466), !mcsema_real_eip !62
  %468 = trunc i8 %467 to i1, !mcsema_real_eip !62
  %469 = xor i1 %468, true, !mcsema_real_eip !62
  store i1 %469, i1* %PF, !mcsema_real_eip !62
  %470 = icmp ult i32 %451, %450, !mcsema_real_eip !62
  store i1 %470, i1* %CF, !mcsema_real_eip !62
  %471 = zext i32 %451 to i64, !mcsema_real_eip !62
  store i64 %471, i64* %XSI, !mcsema_real_eip !62
  %RAX_val.114 = load i64, i64* %XAX, !mcsema_real_eip !63
  %472 = add i64 %RAX_val.114, 8, !mcsema_real_eip !63
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !63
  %474 = ptrtoint i64* %473 to i64, !mcsema_real_eip !63
  %475 = inttoptr i64 %474 to i32*, !mcsema_real_eip !63
  %476 = load i32, i32* %475, !mcsema_real_eip !63
  %477 = zext i32 %476 to i64, !mcsema_real_eip !63
  store i64 %477, i64* %R8, !mcsema_real_eip !63
  %RBP_val.115 = load i64, i64* %XBP, !mcsema_real_eip !64
  %478 = add i64 %RBP_val.115, -96, !mcsema_real_eip !64
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !64
  %480 = load i64, i64* %479, !mcsema_real_eip !64
  store i64 %480, i64* %XCX, !mcsema_real_eip !64
  %RCX_val.116 = load i64, i64* %XCX, !mcsema_real_eip !65
  %481 = add i64 %RCX_val.116, 8, !mcsema_real_eip !65
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !65
  %483 = ptrtoint i64* %482 to i64, !mcsema_real_eip !65
  %484 = inttoptr i64 %483 to i32*, !mcsema_real_eip !65
  %485 = load i32, i32* %484, !mcsema_real_eip !65
  %R8D.117 = bitcast i64* %R8 to i32*, !mcsema_real_eip !65
  %R8D_val.118 = load i32, i32* %R8D.117, !mcsema_real_eip !65
  %486 = add i32 %R8D_val.118, %485, !mcsema_real_eip !65
  %487 = xor i32 %486, %485, !mcsema_real_eip !65
  %488 = xor i32 %487, %R8D_val.118, !mcsema_real_eip !65
  %489 = and i32 %488, 16, !mcsema_real_eip !65
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !65
  store i1 %490, i1* %AF, !mcsema_real_eip !65
  %491 = lshr i32 %486, 31, !mcsema_real_eip !65
  %492 = trunc i32 %491 to i1, !mcsema_real_eip !65
  store i1 %492, i1* %SF, !mcsema_real_eip !65
  %493 = icmp eq i32 %486, 0, !mcsema_real_eip !65
  store i1 %493, i1* %ZF, !mcsema_real_eip !65
  %494 = xor i32 %485, %R8D_val.118, !mcsema_real_eip !65
  %495 = xor i32 %494, -1, !mcsema_real_eip !65
  %496 = xor i32 %485, %486, !mcsema_real_eip !65
  %497 = and i32 %495, %496, !mcsema_real_eip !65
  %498 = lshr i32 %497, 31, !mcsema_real_eip !65
  %499 = and i32 %498, 1, !mcsema_real_eip !65
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !65
  store i1 %500, i1* %OF, !mcsema_real_eip !65
  %501 = trunc i32 %486 to i8, !mcsema_real_eip !65
  %502 = call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !65
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !65
  %504 = xor i1 %503, true, !mcsema_real_eip !65
  store i1 %504, i1* %PF, !mcsema_real_eip !65
  %505 = icmp ult i32 %486, %485, !mcsema_real_eip !65
  store i1 %505, i1* %CF, !mcsema_real_eip !65
  %506 = zext i32 %486 to i64, !mcsema_real_eip !65
  store i64 %506, i64* %R8, !mcsema_real_eip !65
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !66
  %507 = add i64 %RBP_val.119, -104, !mcsema_real_eip !66
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !66
  %509 = load i64, i64* %508, !mcsema_real_eip !66
  store i64 %509, i64* %XCX, !mcsema_real_eip !66
  %RCX_val.120 = load i64, i64* %XCX, !mcsema_real_eip !67
  %510 = add i64 %RCX_val.120, 8, !mcsema_real_eip !67
  %511 = inttoptr i64 %510 to i64*, !mcsema_real_eip !67
  %512 = ptrtoint i64* %511 to i64, !mcsema_real_eip !67
  %513 = inttoptr i64 %512 to i32*, !mcsema_real_eip !67
  %514 = load i32, i32* %513, !mcsema_real_eip !67
  %R8D.121 = bitcast i64* %R8 to i32*, !mcsema_real_eip !67
  %R8D_val.122 = load i32, i32* %R8D.121, !mcsema_real_eip !67
  %515 = add i32 %R8D_val.122, %514, !mcsema_real_eip !67
  %516 = xor i32 %515, %514, !mcsema_real_eip !67
  %517 = xor i32 %516, %R8D_val.122, !mcsema_real_eip !67
  %518 = and i32 %517, 16, !mcsema_real_eip !67
  %519 = icmp ne i32 %518, 0, !mcsema_real_eip !67
  store i1 %519, i1* %AF, !mcsema_real_eip !67
  %520 = lshr i32 %515, 31, !mcsema_real_eip !67
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !67
  store i1 %521, i1* %SF, !mcsema_real_eip !67
  %522 = icmp eq i32 %515, 0, !mcsema_real_eip !67
  store i1 %522, i1* %ZF, !mcsema_real_eip !67
  %523 = xor i32 %514, %R8D_val.122, !mcsema_real_eip !67
  %524 = xor i32 %523, -1, !mcsema_real_eip !67
  %525 = xor i32 %514, %515, !mcsema_real_eip !67
  %526 = and i32 %524, %525, !mcsema_real_eip !67
  %527 = lshr i32 %526, 31, !mcsema_real_eip !67
  %528 = and i32 %527, 1, !mcsema_real_eip !67
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !67
  store i1 %529, i1* %OF, !mcsema_real_eip !67
  %530 = trunc i32 %515 to i8, !mcsema_real_eip !67
  %531 = call i8 @llvm.ctpop.i8(i8 %530), !mcsema_real_eip !67
  %532 = trunc i8 %531 to i1, !mcsema_real_eip !67
  %533 = xor i1 %532, true, !mcsema_real_eip !67
  store i1 %533, i1* %PF, !mcsema_real_eip !67
  %534 = icmp ult i32 %515, %514, !mcsema_real_eip !67
  store i1 %534, i1* %CF, !mcsema_real_eip !67
  %535 = zext i32 %515 to i64, !mcsema_real_eip !67
  store i64 %535, i64* %R8, !mcsema_real_eip !67
  %ESI.123 = bitcast i64* %XSI to i32*, !mcsema_real_eip !68
  %ESI_val.124 = load i32, i32* %ESI.123, !mcsema_real_eip !68
  %R8D.125 = bitcast i64* %R8 to i32*, !mcsema_real_eip !68
  %R8D_val.126 = load i32, i32* %R8D.125, !mcsema_real_eip !68
  %536 = add i32 %R8D_val.126, %ESI_val.124, !mcsema_real_eip !68
  %537 = xor i32 %536, %ESI_val.124, !mcsema_real_eip !68
  %538 = xor i32 %537, %R8D_val.126, !mcsema_real_eip !68
  %539 = and i32 %538, 16, !mcsema_real_eip !68
  %540 = icmp ne i32 %539, 0, !mcsema_real_eip !68
  store i1 %540, i1* %AF, !mcsema_real_eip !68
  %541 = lshr i32 %536, 31, !mcsema_real_eip !68
  %542 = trunc i32 %541 to i1, !mcsema_real_eip !68
  store i1 %542, i1* %SF, !mcsema_real_eip !68
  %543 = icmp eq i32 %536, 0, !mcsema_real_eip !68
  store i1 %543, i1* %ZF, !mcsema_real_eip !68
  %544 = xor i32 %ESI_val.124, %R8D_val.126, !mcsema_real_eip !68
  %545 = xor i32 %544, -1, !mcsema_real_eip !68
  %546 = xor i32 %ESI_val.124, %536, !mcsema_real_eip !68
  %547 = and i32 %545, %546, !mcsema_real_eip !68
  %548 = lshr i32 %547, 31, !mcsema_real_eip !68
  %549 = and i32 %548, 1, !mcsema_real_eip !68
  %550 = trunc i32 %549 to i1, !mcsema_real_eip !68
  store i1 %550, i1* %OF, !mcsema_real_eip !68
  %551 = trunc i32 %536 to i8, !mcsema_real_eip !68
  %552 = call i8 @llvm.ctpop.i8(i8 %551), !mcsema_real_eip !68
  %553 = trunc i8 %552 to i1, !mcsema_real_eip !68
  %554 = xor i1 %553, true, !mcsema_real_eip !68
  store i1 %554, i1* %PF, !mcsema_real_eip !68
  %555 = icmp ult i32 %536, %ESI_val.124, !mcsema_real_eip !68
  store i1 %555, i1* %CF, !mcsema_real_eip !68
  %556 = zext i32 %536 to i64, !mcsema_real_eip !68
  store i64 %556, i64* %XSI, !mcsema_real_eip !68
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !69
  %557 = add i64 %RBP_val.127, -112, !mcsema_real_eip !69
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !69
  %559 = load i64, i64* %558, !mcsema_real_eip !69
  store i64 %559, i64* %XCX, !mcsema_real_eip !69
  %RCX_val.128 = load i64, i64* %XCX, !mcsema_real_eip !70
  %560 = add i64 %RCX_val.128, 8, !mcsema_real_eip !70
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !70
  %ESI.129 = bitcast i64* %XSI to i32*, !mcsema_real_eip !70
  %ESI_val.130 = load i32, i32* %ESI.129, !mcsema_real_eip !70
  %562 = ptrtoint i64* %561 to i64, !mcsema_real_eip !70
  %563 = inttoptr i64 %562 to i32*, !mcsema_real_eip !70
  store i32 %ESI_val.130, i32* %563, !mcsema_real_eip !70
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !71
  %564 = add i64 %RBP_val.131, -112, !mcsema_real_eip !71
  %565 = inttoptr i64 %564 to i64*, !mcsema_real_eip !71
  %566 = load i64, i64* %565, !mcsema_real_eip !71
  store i64 %566, i64* %XAX, !mcsema_real_eip !71
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !72
  %567 = add i64 104, %RSP_val.132, !mcsema_real_eip !72
  %568 = xor i64 %567, %RSP_val.132, !mcsema_real_eip !72
  %569 = xor i64 %568, 104, !mcsema_real_eip !72
  %570 = and i64 %569, 16, !mcsema_real_eip !72
  %571 = icmp ne i64 %570, 0, !mcsema_real_eip !72
  store i1 %571, i1* %AF, !mcsema_real_eip !72
  %572 = lshr i64 %567, 63, !mcsema_real_eip !72
  %573 = trunc i64 %572 to i1, !mcsema_real_eip !72
  store i1 %573, i1* %SF, !mcsema_real_eip !72
  %574 = icmp eq i64 %567, 0, !mcsema_real_eip !72
  store i1 %574, i1* %ZF, !mcsema_real_eip !72
  %575 = xor i64 %RSP_val.132, 104, !mcsema_real_eip !72
  %576 = xor i64 %575, -1, !mcsema_real_eip !72
  %577 = xor i64 %RSP_val.132, %567, !mcsema_real_eip !72
  %578 = and i64 %576, %577, !mcsema_real_eip !72
  %579 = lshr i64 %578, 63, !mcsema_real_eip !72
  %580 = and i64 %579, 1, !mcsema_real_eip !72
  %581 = trunc i64 %580 to i1, !mcsema_real_eip !72
  store i1 %581, i1* %OF, !mcsema_real_eip !72
  %582 = trunc i64 %567 to i8, !mcsema_real_eip !72
  %583 = call i8 @llvm.ctpop.i8(i8 %582), !mcsema_real_eip !72
  %584 = trunc i8 %583 to i1, !mcsema_real_eip !72
  %585 = xor i1 %584, true, !mcsema_real_eip !72
  store i1 %585, i1* %PF, !mcsema_real_eip !72
  %586 = icmp ult i64 %567, %RSP_val.132, !mcsema_real_eip !72
  store i1 %586, i1* %CF, !mcsema_real_eip !72
  store i64 %567, i64* %XSP, !mcsema_real_eip !72
  %RSP_val.133 = load i64, i64* %XSP, !mcsema_real_eip !73
  %587 = inttoptr i64 %RSP_val.133 to i64*, !mcsema_real_eip !73
  %588 = load i64, i64* %587, !mcsema_real_eip !73
  store i64 %588, i64* %XBX, !mcsema_real_eip !73
  %589 = add i64 %RSP_val.133, 8, !mcsema_real_eip !73
  store i64 %589, i64* %XSP, !mcsema_real_eip !73
  %RSP_val.134 = load i64, i64* %XSP, !mcsema_real_eip !74
  %590 = inttoptr i64 %RSP_val.134 to i64*, !mcsema_real_eip !74
  %591 = load i64, i64* %590, !mcsema_real_eip !74
  store i64 %591, i64* %R14, !mcsema_real_eip !74
  %592 = add i64 %RSP_val.134, 8, !mcsema_real_eip !74
  store i64 %592, i64* %XSP, !mcsema_real_eip !74
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !75
  %593 = inttoptr i64 %RSP_val.135 to i64*, !mcsema_real_eip !75
  %594 = load i64, i64* %593, !mcsema_real_eip !75
  store i64 %594, i64* %R15, !mcsema_real_eip !75
  %595 = add i64 %RSP_val.135, 8, !mcsema_real_eip !75
  store i64 %595, i64* %XSP, !mcsema_real_eip !75
  %RSP_val.136 = load i64, i64* %XSP, !mcsema_real_eip !76
  %596 = inttoptr i64 %RSP_val.136 to i64*, !mcsema_real_eip !76
  %597 = load i64, i64* %596, !mcsema_real_eip !76
  store i64 %597, i64* %XBP, !mcsema_real_eip !76
  %598 = add i64 %RSP_val.136, 8, !mcsema_real_eip !76
  store i64 %598, i64* %XSP, !mcsema_real_eip !76
  %RSP_val.137 = load i64, i64* %XSP, !mcsema_real_eip !77
  %599 = add i64 %RSP_val.137, 8, !mcsema_real_eip !77
  %600 = inttoptr i64 %RSP_val.137 to i64*, !mcsema_real_eip !77
  %601 = load i64, i64* %600, !mcsema_real_eip !77
  store i64 %601, i64* %XIP, !mcsema_real_eip !77
  store i64 %599, i64* %XSP, !mcsema_real_eip !77
  ret void, !mcsema_real_eip !77
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !78
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !78
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !78
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !78
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !78
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !78
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !78
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !78
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !78
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !78
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !78
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !78
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !78
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !78
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !78
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !78
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !78
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !78
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !78
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !78
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !78
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !78
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !78
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !78
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !78
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !78
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !78
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !78
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !78
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !78
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !78
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !78
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !78
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !78
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !78
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !78
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !78
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !78
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !78
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !78
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !78
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !78
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !78
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !78
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !78
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !78
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !78
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !78
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !78
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !78
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !78
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !78
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !78
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !78
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !78
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !78
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !78
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !78
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !78
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !78
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !78
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !78
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !78
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !78
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !78
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !78
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !78
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !78
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !78
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !78
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !78
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !78
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !78
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !78
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !78
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !78
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !78
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !78
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !78
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !78
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !78
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !78
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !78
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !78
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !78
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !78
  br label %block_0x100, !mcsema_real_eip !78

block_0x100:                                      ; preds = %entry
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !78
  %RSP_val.139 = load i64, i64* %XSP, !mcsema_real_eip !78
  %1 = sub i64 %RSP_val.139, 8, !mcsema_real_eip !78
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !78
  store i64 %RBP_val.138, i64* %2, !mcsema_real_eip !78
  store i64 %1, i64* %XSP, !mcsema_real_eip !78
  %RSP_val.140 = load i64, i64* %XSP, !mcsema_real_eip !79
  store i64 %RSP_val.140, i64* %XBP, !mcsema_real_eip !79
  %RSP_val.141 = load i64, i64* %XSP, !mcsema_real_eip !80
  %3 = sub i64 %RSP_val.141, 128, !mcsema_real_eip !80
  %4 = xor i64 %3, %RSP_val.141, !mcsema_real_eip !80
  %5 = xor i64 %4, 128, !mcsema_real_eip !80
  %6 = and i64 %5, 16, !mcsema_real_eip !80
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !80
  store i1 %7, i1* %AF, !mcsema_real_eip !80
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !80
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !80
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !80
  %11 = xor i1 %10, true, !mcsema_real_eip !80
  store i1 %11, i1* %PF, !mcsema_real_eip !80
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !80
  store i1 %12, i1* %ZF, !mcsema_real_eip !80
  %13 = lshr i64 %3, 63, !mcsema_real_eip !80
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !80
  store i1 %14, i1* %SF, !mcsema_real_eip !80
  %15 = icmp ult i64 %RSP_val.141, 128, !mcsema_real_eip !80
  store i1 %15, i1* %CF, !mcsema_real_eip !80
  %16 = xor i64 %RSP_val.141, 128, !mcsema_real_eip !80
  %17 = xor i64 %RSP_val.141, %3, !mcsema_real_eip !80
  %18 = and i64 %16, %17, !mcsema_real_eip !80
  %19 = lshr i64 %18, 63, !mcsema_real_eip !80
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !80
  store i1 %20, i1* %OF, !mcsema_real_eip !80
  store i64 %3, i64* %XSP, !mcsema_real_eip !80
  %21 = zext i32 12 to i64, !mcsema_real_eip !81
  store i64 %21, i64* %XAX, !mcsema_real_eip !81
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !82
  %22 = zext i32 %EAX_val.143 to i64, !mcsema_real_eip !82
  store i64 %22, i64* %XDI, !mcsema_real_eip !82
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !83
  %23 = add i64 %RBP_val.144, -4, !mcsema_real_eip !83
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !83
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !83
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !83
  store i32 0, i32* %26, !mcsema_real_eip !83
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !84
  %27 = add i64 %RBP_val.145, -16, !mcsema_real_eip !84
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !84
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !84
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !84
  store i32 10, i32* %30, !mcsema_real_eip !84
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !85
  %31 = add i64 %RBP_val.146, -12, !mcsema_real_eip !85
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !85
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !85
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !85
  store i32 10, i32* %34, !mcsema_real_eip !85
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !86
  %35 = add i64 %RBP_val.147, -8, !mcsema_real_eip !86
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !86
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !86
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !86
  store i32 10, i32* %38, !mcsema_real_eip !86
  %RDI_val.148 = load i64, i64* %XDI, !mcsema_real_eip !87
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %39 = sub i64 %RSP_val.149, 8, !mcsema_real_eip !87
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !87
  store i64 -2415393069852865332, i64* %40, !mcsema_real_eip !87
  store i64 %39, i64* %XSP, !mcsema_real_eip !87
  %41 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.148), !mcsema_real_eip !87
  store i64 %41, i64* %XAX, !mcsema_real_eip !87
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !88
  %42 = add i64 %RBP_val.150, -16, !mcsema_real_eip !88
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !88
  %44 = ptrtoint i64* %43 to i64, !mcsema_real_eip !88
  store i64 %44, i64* %XDI, !mcsema_real_eip !88
  %45 = zext i32 1 to i64, !mcsema_real_eip !89
  store i64 %45, i64* %R8, !mcsema_real_eip !89
  %46 = zext i32 2 to i64, !mcsema_real_eip !90
  store i64 %46, i64* %R9, !mcsema_real_eip !90
  %47 = zext i32 3 to i64, !mcsema_real_eip !91
  store i64 %47, i64* %XCX, !mcsema_real_eip !91
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !92
  %48 = add i64 %RBP_val.151, -24, !mcsema_real_eip !92
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !92
  %RAX_val.152 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.152, i64* %49, !mcsema_real_eip !92
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !93
  %50 = add i64 %RBP_val.153, -24, !mcsema_real_eip !93
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !93
  %52 = load i64, i64* %51, !mcsema_real_eip !93
  store i64 %52, i64* %XAX, !mcsema_real_eip !93
  %RAX_val.154 = load i64, i64* %XAX, !mcsema_real_eip !94
  %53 = add i64 %RAX_val.154, 0, !mcsema_real_eip !94
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !94
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !94
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !94
  store i32 5, i32* %56, !mcsema_real_eip !94
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !95
  %57 = add i64 %RBP_val.155, -24, !mcsema_real_eip !95
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !95
  %59 = load i64, i64* %58, !mcsema_real_eip !95
  store i64 %59, i64* %XAX, !mcsema_real_eip !95
  %RAX_val.156 = load i64, i64* %XAX, !mcsema_real_eip !96
  %60 = add i64 %RAX_val.156, 4, !mcsema_real_eip !96
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !96
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !96
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !96
  store i32 5, i32* %63, !mcsema_real_eip !96
  %RBP_val.157 = load i64, i64* %XBP, !mcsema_real_eip !97
  %64 = add i64 %RBP_val.157, -24, !mcsema_real_eip !97
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !97
  %66 = load i64, i64* %65, !mcsema_real_eip !97
  store i64 %66, i64* %XAX, !mcsema_real_eip !97
  %RAX_val.158 = load i64, i64* %XAX, !mcsema_real_eip !98
  %67 = add i64 %RAX_val.158, 8, !mcsema_real_eip !98
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !98
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !98
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !98
  store i32 5, i32* %70, !mcsema_real_eip !98
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !99
  %71 = add i64 %RBP_val.159, -24, !mcsema_real_eip !99
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !99
  %73 = load i64, i64* %72, !mcsema_real_eip !99
  store i64 %73, i64* %XAX, !mcsema_real_eip !99
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !100
  %74 = add i64 %RBP_val.160, -24, !mcsema_real_eip !100
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !100
  %76 = load i64, i64* %75, !mcsema_real_eip !100
  store i64 %76, i64* %XDX, !mcsema_real_eip !100
  %RBP_val.161 = load i64, i64* %XBP, !mcsema_real_eip !101
  %77 = add i64 %RBP_val.161, -16, !mcsema_real_eip !101
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !101
  %79 = load i64, i64* %78, !mcsema_real_eip !101
  store i64 %79, i64* %XSI, !mcsema_real_eip !101
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !102
  %80 = add i64 %RBP_val.162, -48, !mcsema_real_eip !102
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !102
  %RSI_val.163 = load i64, i64* %XSI, !mcsema_real_eip !102
  store i64 %RSI_val.163, i64* %81, !mcsema_real_eip !102
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !103
  %82 = add i64 %RBP_val.164, -8, !mcsema_real_eip !103
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !103
  %84 = ptrtoint i64* %83 to i64, !mcsema_real_eip !103
  %85 = inttoptr i64 %84 to i32*, !mcsema_real_eip !103
  %86 = load i32, i32* %85, !mcsema_real_eip !103
  %87 = zext i32 %86 to i64, !mcsema_real_eip !103
  store i64 %87, i64* %R10, !mcsema_real_eip !103
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !104
  %88 = add i64 %RBP_val.165, -40, !mcsema_real_eip !104
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !104
  %R10D.166 = bitcast i64* %R10 to i32*, !mcsema_real_eip !104
  %R10D_val.167 = load i32, i32* %R10D.166, !mcsema_real_eip !104
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !104
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !104
  store i32 %R10D_val.167, i32* %91, !mcsema_real_eip !104
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !105
  %92 = add i64 %RBP_val.168, -48, !mcsema_real_eip !105
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !105
  %94 = load i64, i64* %93, !mcsema_real_eip !105
  store i64 %94, i64* %XSI, !mcsema_real_eip !105
  %RBP_val.169 = load i64, i64* %XBP, !mcsema_real_eip !106
  %95 = add i64 %RBP_val.169, -40, !mcsema_real_eip !106
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !106
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !106
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !106
  %99 = load i32, i32* %98, !mcsema_real_eip !106
  %100 = zext i32 %99 to i64, !mcsema_real_eip !106
  store i64 %100, i64* %R10, !mcsema_real_eip !106
  %RBP_val.170 = load i64, i64* %XBP, !mcsema_real_eip !107
  %101 = add i64 %RBP_val.170, -64, !mcsema_real_eip !107
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !107
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !107
  store i64 %RDI_val.171, i64* %102, !mcsema_real_eip !107
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !108
  store i64 %RSI_val.172, i64* %XDI, !mcsema_real_eip !108
  %R10D.173 = bitcast i64* %R10 to i32*, !mcsema_real_eip !109
  %R10D_val.174 = load i32, i32* %R10D.173, !mcsema_real_eip !109
  %103 = zext i32 %R10D_val.174 to i64, !mcsema_real_eip !109
  store i64 %103, i64* %XSI, !mcsema_real_eip !109
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !110
  %104 = add i64 %RBP_val.175, -64, !mcsema_real_eip !110
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !110
  %106 = load i64, i64* %105, !mcsema_real_eip !110
  store i64 %106, i64* %R11, !mcsema_real_eip !110
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !111
  %107 = add i64 %RBP_val.176, -72, !mcsema_real_eip !111
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !111
  %RDX_val.177 = load i64, i64* %XDX, !mcsema_real_eip !111
  store i64 %RDX_val.177, i64* %108, !mcsema_real_eip !111
  %R11_val.178 = load i64, i64* %R11, !mcsema_real_eip !112
  store i64 %R11_val.178, i64* %XDX, !mcsema_real_eip !112
  %RBP_val.179 = load i64, i64* %XBP, !mcsema_real_eip !113
  %109 = add i64 %RBP_val.179, -76, !mcsema_real_eip !113
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !113
  %ECX.180 = bitcast i64* %XCX to i32*, !mcsema_real_eip !113
  %ECX_val.181 = load i32, i32* %ECX.180, !mcsema_real_eip !113
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !113
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !113
  store i32 %ECX_val.181, i32* %112, !mcsema_real_eip !113
  %RAX_val.182 = load i64, i64* %XAX, !mcsema_real_eip !114
  store i64 %RAX_val.182, i64* %XCX, !mcsema_real_eip !114
  %RSP_val.183 = load i64, i64* %XSP, !mcsema_real_eip !115
  %113 = add i64 %RSP_val.183, 0, !mcsema_real_eip !115
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !115
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !115
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !115
  store i32 3, i32* %116, !mcsema_real_eip !115
  %R11_val.184 = load i64, i64* %R11, !mcsema_real_eip !116
  %117 = add i64 %R11_val.184, 0, !mcsema_real_eip !116
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !116
  %119 = load i64, i64* %118, !mcsema_real_eip !116
  store i64 %119, i64* %XAX, !mcsema_real_eip !116
  %RSP_val.185 = load i64, i64* %XSP, !mcsema_real_eip !117
  %120 = add i64 %RSP_val.185, 8, !mcsema_real_eip !117
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !117
  %RAX_val.186 = load i64, i64* %XAX, !mcsema_real_eip !117
  store i64 %RAX_val.186, i64* %121, !mcsema_real_eip !117
  %R11_val.187 = load i64, i64* %R11, !mcsema_real_eip !118
  %122 = add i64 %R11_val.187, 8, !mcsema_real_eip !118
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !118
  %124 = ptrtoint i64* %123 to i64, !mcsema_real_eip !118
  %125 = inttoptr i64 %124 to i32*, !mcsema_real_eip !118
  %126 = load i32, i32* %125, !mcsema_real_eip !118
  %127 = zext i32 %126 to i64, !mcsema_real_eip !118
  store i64 %127, i64* %R10, !mcsema_real_eip !118
  %RSP_val.188 = load i64, i64* %XSP, !mcsema_real_eip !119
  %128 = add i64 %RSP_val.188, 16, !mcsema_real_eip !119
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !119
  %R10D.189 = bitcast i64* %R10 to i32*, !mcsema_real_eip !119
  %R10D_val.190 = load i32, i32* %R10D.189, !mcsema_real_eip !119
  %130 = ptrtoint i64* %129 to i64, !mcsema_real_eip !119
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !119
  store i32 %R10D_val.190, i32* %131, !mcsema_real_eip !119
  %RSP_val.191 = load i64, i64* %XSP, !mcsema_real_eip !120
  %132 = add i64 %RSP_val.191, 24, !mcsema_real_eip !120
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !120
  %R11_val.192 = load i64, i64* %R11, !mcsema_real_eip !120
  store i64 %R11_val.192, i64* %133, !mcsema_real_eip !120
  %RBP_val.193 = load i64, i64* %XBP, !mcsema_real_eip !121
  %134 = add i64 %RBP_val.193, -72, !mcsema_real_eip !121
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !121
  %136 = load i64, i64* %135, !mcsema_real_eip !121
  store i64 %136, i64* %XAX, !mcsema_real_eip !121
  %RSP_val.194 = load i64, i64* %XSP, !mcsema_real_eip !122
  %137 = add i64 %RSP_val.194, 32, !mcsema_real_eip !122
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !122
  %RAX_val.195 = load i64, i64* %XAX, !mcsema_real_eip !122
  store i64 %RAX_val.195, i64* %138, !mcsema_real_eip !122
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !123
  %139 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !123
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !123
  store i64 -4981261766360305936, i64* %140, !mcsema_real_eip !123
  store i64 %139, i64* %XSP, !mcsema_real_eip !123
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !123
  %141 = getelementptr %0, %0* @data_0x212, i64 0, i32 0, !mcsema_real_eip !124
  %142 = ptrtoint [5 x i8]* %141 to i64, !mcsema_real_eip !124
  %143 = add i64 %142, 0, !mcsema_real_eip !124
  store i64 %143, i64* %XDI, !mcsema_real_eip !124
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !125
  %144 = add i64 %RBP_val.197, -32, !mcsema_real_eip !125
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !125
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !125
  store i64 %RAX_val.198, i64* %145, !mcsema_real_eip !125
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !126
  %146 = add i64 %RBP_val.199, -32, !mcsema_real_eip !126
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !126
  %148 = load i64, i64* %147, !mcsema_real_eip !126
  store i64 %148, i64* %XAX, !mcsema_real_eip !126
  %RAX_val.200 = load i64, i64* %XAX, !mcsema_real_eip !127
  %149 = add i64 %RAX_val.200, 0, !mcsema_real_eip !127
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !127
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !127
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !127
  %153 = load i32, i32* %152, !mcsema_real_eip !127
  %154 = zext i32 %153 to i64, !mcsema_real_eip !127
  store i64 %154, i64* %XSI, !mcsema_real_eip !127
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !128
  %155 = add i64 %RBP_val.201, -32, !mcsema_real_eip !128
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !128
  %157 = load i64, i64* %156, !mcsema_real_eip !128
  store i64 %157, i64* %XAX, !mcsema_real_eip !128
  %RAX_val.202 = load i64, i64* %XAX, !mcsema_real_eip !129
  %158 = add i64 %RAX_val.202, 4, !mcsema_real_eip !129
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !129
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !129
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !129
  %162 = load i32, i32* %161, !mcsema_real_eip !129
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !129
  %ESI_val.204 = load i32, i32* %ESI.203, !mcsema_real_eip !129
  %163 = add i32 %ESI_val.204, %162, !mcsema_real_eip !129
  %164 = xor i32 %163, %162, !mcsema_real_eip !129
  %165 = xor i32 %164, %ESI_val.204, !mcsema_real_eip !129
  %166 = and i32 %165, 16, !mcsema_real_eip !129
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !129
  store i1 %167, i1* %AF, !mcsema_real_eip !129
  %168 = lshr i32 %163, 31, !mcsema_real_eip !129
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !129
  store i1 %169, i1* %SF, !mcsema_real_eip !129
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !129
  store i1 %170, i1* %ZF, !mcsema_real_eip !129
  %171 = xor i32 %162, %ESI_val.204, !mcsema_real_eip !129
  %172 = xor i32 %171, -1, !mcsema_real_eip !129
  %173 = xor i32 %162, %163, !mcsema_real_eip !129
  %174 = and i32 %172, %173, !mcsema_real_eip !129
  %175 = lshr i32 %174, 31, !mcsema_real_eip !129
  %176 = and i32 %175, 1, !mcsema_real_eip !129
  %177 = trunc i32 %176 to i1, !mcsema_real_eip !129
  store i1 %177, i1* %OF, !mcsema_real_eip !129
  %178 = trunc i32 %163 to i8, !mcsema_real_eip !129
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !129
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !129
  %181 = xor i1 %180, true, !mcsema_real_eip !129
  store i1 %181, i1* %PF, !mcsema_real_eip !129
  %182 = icmp ult i32 %163, %162, !mcsema_real_eip !129
  store i1 %182, i1* %CF, !mcsema_real_eip !129
  %183 = zext i32 %163 to i64, !mcsema_real_eip !129
  store i64 %183, i64* %XSI, !mcsema_real_eip !129
  %RBP_val.205 = load i64, i64* %XBP, !mcsema_real_eip !130
  %184 = add i64 %RBP_val.205, -32, !mcsema_real_eip !130
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !130
  %186 = load i64, i64* %185, !mcsema_real_eip !130
  store i64 %186, i64* %XAX, !mcsema_real_eip !130
  %RAX_val.206 = load i64, i64* %XAX, !mcsema_real_eip !131
  %187 = add i64 %RAX_val.206, 8, !mcsema_real_eip !131
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !131
  %189 = ptrtoint i64* %188 to i64, !mcsema_real_eip !131
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !131
  %191 = load i32, i32* %190, !mcsema_real_eip !131
  %ESI.207 = bitcast i64* %XSI to i32*, !mcsema_real_eip !131
  %ESI_val.208 = load i32, i32* %ESI.207, !mcsema_real_eip !131
  %192 = add i32 %ESI_val.208, %191, !mcsema_real_eip !131
  %193 = xor i32 %192, %191, !mcsema_real_eip !131
  %194 = xor i32 %193, %ESI_val.208, !mcsema_real_eip !131
  %195 = and i32 %194, 16, !mcsema_real_eip !131
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !131
  store i1 %196, i1* %AF, !mcsema_real_eip !131
  %197 = lshr i32 %192, 31, !mcsema_real_eip !131
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !131
  store i1 %198, i1* %SF, !mcsema_real_eip !131
  %199 = icmp eq i32 %192, 0, !mcsema_real_eip !131
  store i1 %199, i1* %ZF, !mcsema_real_eip !131
  %200 = xor i32 %191, %ESI_val.208, !mcsema_real_eip !131
  %201 = xor i32 %200, -1, !mcsema_real_eip !131
  %202 = xor i32 %191, %192, !mcsema_real_eip !131
  %203 = and i32 %201, %202, !mcsema_real_eip !131
  %204 = lshr i32 %203, 31, !mcsema_real_eip !131
  %205 = and i32 %204, 1, !mcsema_real_eip !131
  %206 = trunc i32 %205 to i1, !mcsema_real_eip !131
  store i1 %206, i1* %OF, !mcsema_real_eip !131
  %207 = trunc i32 %192 to i8, !mcsema_real_eip !131
  %208 = call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !131
  %209 = trunc i8 %208 to i1, !mcsema_real_eip !131
  %210 = xor i1 %209, true, !mcsema_real_eip !131
  store i1 %210, i1* %PF, !mcsema_real_eip !131
  %211 = icmp ult i32 %192, %191, !mcsema_real_eip !131
  store i1 %211, i1* %CF, !mcsema_real_eip !131
  %212 = zext i32 %192 to i64, !mcsema_real_eip !131
  store i64 %212, i64* %XSI, !mcsema_real_eip !131
  %RBP_val.209 = load i64, i64* %XBP, !mcsema_real_eip !132
  %213 = add i64 %RBP_val.209, -52, !mcsema_real_eip !132
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !132
  %ESI.210 = bitcast i64* %XSI to i32*, !mcsema_real_eip !132
  %ESI_val.211 = load i32, i32* %ESI.210, !mcsema_real_eip !132
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !132
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !132
  store i32 %ESI_val.211, i32* %216, !mcsema_real_eip !132
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !133
  %217 = add i64 %RBP_val.212, -52, !mcsema_real_eip !133
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !133
  %219 = ptrtoint i64* %218 to i64, !mcsema_real_eip !133
  %220 = inttoptr i64 %219 to i32*, !mcsema_real_eip !133
  %221 = load i32, i32* %220, !mcsema_real_eip !133
  %222 = zext i32 %221 to i64, !mcsema_real_eip !133
  store i64 %222, i64* %XSI, !mcsema_real_eip !133
  %AL.213 = bitcast i64* %XAX to i8*, !mcsema_real_eip !134
  store i8 0, i8* %AL.213, !mcsema_real_eip !134
  %RDI_val.214 = load i64, i64* %XDI, !mcsema_real_eip !135
  %RSI_val.215 = load i64, i64* %XSI, !mcsema_real_eip !135
  %RDX_val.216 = load i64, i64* %XDX, !mcsema_real_eip !135
  %RCX_val.217 = load i64, i64* %XCX, !mcsema_real_eip !135
  %R8_val.218 = load i64, i64* %R8, !mcsema_real_eip !135
  %R9_val.219 = load i64, i64* %R9, !mcsema_real_eip !135
  %RSP_val.220 = load i64, i64* %XSP, !mcsema_real_eip !135
  %223 = inttoptr i64 %RSP_val.220 to i64*, !mcsema_real_eip !135
  %224 = load i64, i64* %223, !mcsema_real_eip !135
  %225 = add i64 %RSP_val.220, 8, !mcsema_real_eip !135
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !135
  %227 = load i64, i64* %226, !mcsema_real_eip !135
  %228 = add i64 %225, 8, !mcsema_real_eip !135
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !135
  %230 = load i64, i64* %229, !mcsema_real_eip !135
  %231 = add i64 %228, 8, !mcsema_real_eip !135
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !135
  %233 = load i64, i64* %232, !mcsema_real_eip !135
  %234 = add i64 %231, 8, !mcsema_real_eip !135
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !135
  %236 = load i64, i64* %235, !mcsema_real_eip !135
  %237 = add i64 %234, 8, !mcsema_real_eip !135
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !135
  %239 = load i64, i64* %238, !mcsema_real_eip !135
  %240 = add i64 %237, 8, !mcsema_real_eip !135
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !135
  %242 = load i64, i64* %241, !mcsema_real_eip !135
  %243 = add i64 %240, 8, !mcsema_real_eip !135
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !135
  %245 = load i64, i64* %244, !mcsema_real_eip !135
  %246 = add i64 %243, 8, !mcsema_real_eip !135
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !135
  %248 = load i64, i64* %247, !mcsema_real_eip !135
  %249 = add i64 %246, 8, !mcsema_real_eip !135
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !135
  %251 = load i64, i64* %250, !mcsema_real_eip !135
  %RSP_val.221 = load i64, i64* %XSP, !mcsema_real_eip !135
  %252 = sub i64 %RSP_val.221, 8, !mcsema_real_eip !135
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !135
  store i64 -2415393069852865332, i64* %253, !mcsema_real_eip !135
  store i64 %252, i64* %XSP, !mcsema_real_eip !135
  %254 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.214, i64 %RSI_val.215, i64 %RDX_val.216, i64 %RCX_val.217, i64 %R8_val.218, i64 %R9_val.219, i64 %224, i64 %227, i64 %230, i64 %233, i64 %236, i64 %239, i64 %242, i64 %245, i64 %248, i64 %251), !mcsema_real_eip !135
  store i64 %254, i64* %XAX, !mcsema_real_eip !135
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !136
  %255 = add i64 %RBP_val.222, -52, !mcsema_real_eip !136
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !136
  %257 = ptrtoint i64* %256 to i64, !mcsema_real_eip !136
  %258 = inttoptr i64 %257 to i32*, !mcsema_real_eip !136
  %259 = load i32, i32* %258, !mcsema_real_eip !136
  %260 = zext i32 %259 to i64, !mcsema_real_eip !136
  store i64 %260, i64* %XSI, !mcsema_real_eip !136
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !137
  %261 = add i64 %RBP_val.223, -80, !mcsema_real_eip !137
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !137
  %EAX.224 = bitcast i64* %XAX to i32*, !mcsema_real_eip !137
  %EAX_val.225 = load i32, i32* %EAX.224, !mcsema_real_eip !137
  %263 = ptrtoint i64* %262 to i64, !mcsema_real_eip !137
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.225, i32* %264, !mcsema_real_eip !137
  %ESI.226 = bitcast i64* %XSI to i32*, !mcsema_real_eip !138
  %ESI_val.227 = load i32, i32* %ESI.226, !mcsema_real_eip !138
  %265 = zext i32 %ESI_val.227 to i64, !mcsema_real_eip !138
  store i64 %265, i64* %XAX, !mcsema_real_eip !138
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !139
  %266 = add i64 128, %RSP_val.228, !mcsema_real_eip !139
  %267 = xor i64 %266, %RSP_val.228, !mcsema_real_eip !139
  %268 = xor i64 %267, 128, !mcsema_real_eip !139
  %269 = and i64 %268, 16, !mcsema_real_eip !139
  %270 = icmp ne i64 %269, 0, !mcsema_real_eip !139
  store i1 %270, i1* %AF, !mcsema_real_eip !139
  %271 = lshr i64 %266, 63, !mcsema_real_eip !139
  %272 = trunc i64 %271 to i1, !mcsema_real_eip !139
  store i1 %272, i1* %SF, !mcsema_real_eip !139
  %273 = icmp eq i64 %266, 0, !mcsema_real_eip !139
  store i1 %273, i1* %ZF, !mcsema_real_eip !139
  %274 = xor i64 %RSP_val.228, 128, !mcsema_real_eip !139
  %275 = xor i64 %274, -1, !mcsema_real_eip !139
  %276 = xor i64 %RSP_val.228, %266, !mcsema_real_eip !139
  %277 = and i64 %275, %276, !mcsema_real_eip !139
  %278 = lshr i64 %277, 63, !mcsema_real_eip !139
  %279 = and i64 %278, 1, !mcsema_real_eip !139
  %280 = trunc i64 %279 to i1, !mcsema_real_eip !139
  store i1 %280, i1* %OF, !mcsema_real_eip !139
  %281 = trunc i64 %266 to i8, !mcsema_real_eip !139
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !139
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !139
  %284 = xor i1 %283, true, !mcsema_real_eip !139
  store i1 %284, i1* %PF, !mcsema_real_eip !139
  %285 = icmp ult i64 %266, %RSP_val.228, !mcsema_real_eip !139
  store i1 %285, i1* %CF, !mcsema_real_eip !139
  store i64 %266, i64* %XSP, !mcsema_real_eip !139
  %RSP_val.229 = load i64, i64* %XSP, !mcsema_real_eip !140
  %286 = inttoptr i64 %RSP_val.229 to i64*, !mcsema_real_eip !140
  %287 = load i64, i64* %286, !mcsema_real_eip !140
  store i64 %287, i64* %XBP, !mcsema_real_eip !140
  %288 = add i64 %RSP_val.229, 8, !mcsema_real_eip !140
  store i64 %288, i64* %XSP, !mcsema_real_eip !140
  %RSP_val.230 = load i64, i64* %XSP, !mcsema_real_eip !141
  %289 = add i64 %RSP_val.230, 8, !mcsema_real_eip !141
  %290 = inttoptr i64 %RSP_val.230 to i64*, !mcsema_real_eip !141
  %291 = load i64, i64* %290, !mcsema_real_eip !141
  store i64 %291, i64* %XIP, !mcsema_real_eip !141
  store i64 %289, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
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
!5 = !{i64 6}
!6 = !{i64 8}
!7 = !{i64 9}
!8 = !{i64 13}
!9 = !{i64 17}
!10 = !{i64 21}
!11 = !{i64 25}
!12 = !{i64 28}
!13 = !{i64 34}
!14 = !{i64 37}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 48}
!18 = !{i64 52}
!19 = !{i64 55}
!20 = !{i64 58}
!21 = !{i64 62}
!22 = !{i64 66}
!23 = !{i64 70}
!24 = !{i64 74}
!25 = !{i64 77}
!26 = !{i64 81}
!27 = !{i64 85}
!28 = !{i64 88}
!29 = !{i64 92}
!30 = !{i64 97}
!31 = !{i64 101}
!32 = !{i64 104}
!33 = !{i64 108}
!34 = !{i64 110}
!35 = !{i64 114}
!36 = !{i64 116}
!37 = !{i64 120}
!38 = !{i64 123}
!39 = !{i64 127}
!40 = !{i64 130}
!41 = !{i64 134}
!42 = !{i64 137}
!43 = !{i64 140}
!44 = !{i64 144}
!45 = !{i64 146}
!46 = !{i64 149}
!47 = !{i64 153}
!48 = !{i64 156}
!49 = !{i64 160}
!50 = !{i64 163}
!51 = !{i64 167}
!52 = !{i64 171}
!53 = !{i64 175}
!54 = !{i64 179}
!55 = !{i64 183}
!56 = !{i64 186}
!57 = !{i64 190}
!58 = !{i64 193}
!59 = !{i64 196}
!60 = !{i64 200}
!61 = !{i64 203}
!62 = !{i64 207}
!63 = !{i64 210}
!64 = !{i64 214}
!65 = !{i64 218}
!66 = !{i64 222}
!67 = !{i64 226}
!68 = !{i64 230}
!69 = !{i64 233}
!70 = !{i64 237}
!71 = !{i64 240}
!72 = !{i64 244}
!73 = !{i64 248}
!74 = !{i64 249}
!75 = !{i64 251}
!76 = !{i64 253}
!77 = !{i64 254}
!78 = !{i64 256}
!79 = !{i64 257}
!80 = !{i64 260}
!81 = !{i64 267}
!82 = !{i64 272}
!83 = !{i64 274}
!84 = !{i64 281}
!85 = !{i64 288}
!86 = !{i64 295}
!87 = !{i64 302}
!88 = !{i64 307}
!89 = !{i64 311}
!90 = !{i64 317}
!91 = !{i64 323}
!92 = !{i64 328}
!93 = !{i64 332}
!94 = !{i64 336}
!95 = !{i64 342}
!96 = !{i64 346}
!97 = !{i64 353}
!98 = !{i64 357}
!99 = !{i64 364}
!100 = !{i64 368}
!101 = !{i64 372}
!102 = !{i64 376}
!103 = !{i64 380}
!104 = !{i64 384}
!105 = !{i64 388}
!106 = !{i64 392}
!107 = !{i64 396}
!108 = !{i64 400}
!109 = !{i64 403}
!110 = !{i64 406}
!111 = !{i64 410}
!112 = !{i64 414}
!113 = !{i64 417}
!114 = !{i64 420}
!115 = !{i64 423}
!116 = !{i64 430}
!117 = !{i64 433}
!118 = !{i64 438}
!119 = !{i64 442}
!120 = !{i64 447}
!121 = !{i64 452}
!122 = !{i64 456}
!123 = !{i64 461}
!124 = !{i64 466}
!125 = !{i64 476}
!126 = !{i64 480}
!127 = !{i64 484}
!128 = !{i64 486}
!129 = !{i64 490}
!130 = !{i64 493}
!131 = !{i64 497}
!132 = !{i64 500}
!133 = !{i64 503}
!134 = !{i64 506}
!135 = !{i64 508}
!136 = !{i64 513}
!137 = !{i64 516}
!138 = !{i64 519}
!139 = !{i64 521}
!140 = !{i64 528}
!141 = !{i64 529}
