; ModuleID = 'Output/test_7.clang.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
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
  br label %block_0x140, !mcsema_real_eip !2

block_0x140:                                      ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %R14_val.3 = load i64, i64* %R14, !mcsema_real_eip !4
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R14_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBX_val.5 = load i64, i64* %XBX, !mcsema_real_eip !5
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !5
  %5 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %RBX_val.5, i64* %6, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  %RSP_val.7 = load i64, i64* %XSP, !mcsema_real_eip !6
  %7 = sub i64 %RSP_val.7, 160, !mcsema_real_eip !6
  %8 = xor i64 %7, %RSP_val.7, !mcsema_real_eip !6
  %9 = xor i64 %8, 160, !mcsema_real_eip !6
  %10 = and i64 %9, 16, !mcsema_real_eip !6
  %11 = icmp ne i64 %10, 0, !mcsema_real_eip !6
  store i1 %11, i1* %AF, !mcsema_real_eip !6
  %12 = trunc i64 %7 to i8, !mcsema_real_eip !6
  %13 = call i8 @llvm.ctpop.i8(i8 %12), !mcsema_real_eip !6
  %14 = trunc i8 %13 to i1, !mcsema_real_eip !6
  %15 = xor i1 %14, true, !mcsema_real_eip !6
  store i1 %15, i1* %PF, !mcsema_real_eip !6
  %16 = icmp eq i64 %7, 0, !mcsema_real_eip !6
  store i1 %16, i1* %ZF, !mcsema_real_eip !6
  %17 = lshr i64 %7, 63, !mcsema_real_eip !6
  %18 = trunc i64 %17 to i1, !mcsema_real_eip !6
  store i1 %18, i1* %SF, !mcsema_real_eip !6
  %19 = icmp ult i64 %RSP_val.7, 160, !mcsema_real_eip !6
  store i1 %19, i1* %CF, !mcsema_real_eip !6
  %20 = xor i64 %RSP_val.7, 160, !mcsema_real_eip !6
  %21 = xor i64 %RSP_val.7, %7, !mcsema_real_eip !6
  %22 = and i64 %20, %21, !mcsema_real_eip !6
  %23 = lshr i64 %22, 63, !mcsema_real_eip !6
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !6
  store i1 %24, i1* %OF, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !7
  %25 = add i64 %RBP_val.8, -20, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !7
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %28, !mcsema_real_eip !7
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !8
  %29 = add i64 %RBP_val.9, -24, !mcsema_real_eip !8
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !8
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !8
  store i32 1, i32* %32, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %33 = add i64 %RBP_val.10, -68, !mcsema_real_eip !9
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !9
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !9
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %36, !mcsema_real_eip !9
  br label %block_0x163, !mcsema_real_eip !10

block_0x163:                                      ; preds = %block_0x16d, %block_0x140
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !10
  %37 = add i64 %RBP_val.11, -68, !mcsema_real_eip !10
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !10
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !10
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !10
  %41 = load i32, i32* %40, !mcsema_real_eip !10
  %42 = sub i32 %41, 10, !mcsema_real_eip !10
  %43 = xor i32 %42, %41, !mcsema_real_eip !10
  %44 = xor i32 %43, 10, !mcsema_real_eip !10
  %45 = and i32 %44, 16, !mcsema_real_eip !10
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !10
  store i1 %46, i1* %AF, !mcsema_real_eip !10
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !10
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !10
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !10
  %50 = xor i1 %49, true, !mcsema_real_eip !10
  store i1 %50, i1* %PF, !mcsema_real_eip !10
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !10
  store i1 %51, i1* %ZF, !mcsema_real_eip !10
  %52 = lshr i32 %42, 31, !mcsema_real_eip !10
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !10
  store i1 %53, i1* %SF, !mcsema_real_eip !10
  %54 = icmp ult i32 %41, 10, !mcsema_real_eip !10
  store i1 %54, i1* %CF, !mcsema_real_eip !10
  %55 = xor i32 %41, 10, !mcsema_real_eip !10
  %56 = xor i32 %41, %42, !mcsema_real_eip !10
  %57 = and i32 %55, %56, !mcsema_real_eip !10
  %58 = lshr i32 %57, 31, !mcsema_real_eip !10
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !10
  store i1 %59, i1* %OF, !mcsema_real_eip !10
  %60 = load i1, i1* %OF, !mcsema_real_eip !11
  %61 = load i1, i1* %SF, !mcsema_real_eip !11
  %62 = icmp eq i1 %61, %60, !mcsema_real_eip !11
  br i1 %62, label %block_0x189, label %block_0x16d, !mcsema_real_eip !11

block_0x16d:                                      ; preds = %block_0x163
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !12
  %63 = add i64 %RBP_val.22, -68, !mcsema_real_eip !12
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !12
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !12
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !12
  %67 = load i32, i32* %66, !mcsema_real_eip !12
  %68 = zext i32 %67 to i64, !mcsema_real_eip !12
  store i64 %68, i64* %XAX, !mcsema_real_eip !12
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !13
  %69 = add i32 1, %EAX_val.24, !mcsema_real_eip !13
  %70 = xor i32 %69, %EAX_val.24, !mcsema_real_eip !13
  %71 = xor i32 %70, 1, !mcsema_real_eip !13
  %72 = and i32 %71, 16, !mcsema_real_eip !13
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !13
  store i1 %73, i1* %AF, !mcsema_real_eip !13
  %74 = lshr i32 %69, 31, !mcsema_real_eip !13
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !13
  store i1 %75, i1* %SF, !mcsema_real_eip !13
  %76 = icmp eq i32 %69, 0, !mcsema_real_eip !13
  store i1 %76, i1* %ZF, !mcsema_real_eip !13
  %77 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !13
  %78 = xor i32 %77, -1, !mcsema_real_eip !13
  %79 = xor i32 %EAX_val.24, %69, !mcsema_real_eip !13
  %80 = and i32 %78, %79, !mcsema_real_eip !13
  %81 = lshr i32 %80, 31, !mcsema_real_eip !13
  %82 = and i32 %81, 1, !mcsema_real_eip !13
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !13
  store i1 %83, i1* %OF, !mcsema_real_eip !13
  %84 = trunc i32 %69 to i8, !mcsema_real_eip !13
  %85 = call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !13
  %86 = trunc i8 %85 to i1, !mcsema_real_eip !13
  %87 = xor i1 %86, true, !mcsema_real_eip !13
  store i1 %87, i1* %PF, !mcsema_real_eip !13
  %88 = icmp ult i32 %69, %EAX_val.24, !mcsema_real_eip !13
  store i1 %88, i1* %CF, !mcsema_real_eip !13
  %89 = zext i32 %69 to i64, !mcsema_real_eip !13
  store i64 %89, i64* %XAX, !mcsema_real_eip !13
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !14
  %90 = add i64 %RBP_val.25, -68, !mcsema_real_eip !14
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !14
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !14
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !14
  %94 = load i32, i32* %93, !mcsema_real_eip !14
  %95 = sext i32 %94 to i64, !mcsema_real_eip !14
  store i64 %95, i64* %XCX, !mcsema_real_eip !14
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !15
  %96 = add i64 %RBP_val.26, -64, !mcsema_real_eip !15
  %RCX_val.27 = load i64, i64* %XCX, !mcsema_real_eip !15
  %97 = mul i64 %RCX_val.27, 4, !mcsema_real_eip !15
  %98 = add i64 %96, %97, !mcsema_real_eip !15
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !15
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !15
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !15
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %101, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %102 = add i64 %RBP_val.30, -68, !mcsema_real_eip !16
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !16
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !16
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !16
  %106 = load i32, i32* %105, !mcsema_real_eip !16
  %107 = zext i32 %106 to i64, !mcsema_real_eip !16
  store i64 %107, i64* %XAX, !mcsema_real_eip !16
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !17
  %108 = add i32 1, %EAX_val.32, !mcsema_real_eip !17
  %109 = xor i32 %108, %EAX_val.32, !mcsema_real_eip !17
  %110 = xor i32 %109, 1, !mcsema_real_eip !17
  %111 = and i32 %110, 16, !mcsema_real_eip !17
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !17
  store i1 %112, i1* %AF, !mcsema_real_eip !17
  %113 = lshr i32 %108, 31, !mcsema_real_eip !17
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !17
  store i1 %114, i1* %SF, !mcsema_real_eip !17
  %115 = icmp eq i32 %108, 0, !mcsema_real_eip !17
  store i1 %115, i1* %ZF, !mcsema_real_eip !17
  %116 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !17
  %117 = xor i32 %116, -1, !mcsema_real_eip !17
  %118 = xor i32 %EAX_val.32, %108, !mcsema_real_eip !17
  %119 = and i32 %117, %118, !mcsema_real_eip !17
  %120 = lshr i32 %119, 31, !mcsema_real_eip !17
  %121 = and i32 %120, 1, !mcsema_real_eip !17
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !17
  store i1 %122, i1* %OF, !mcsema_real_eip !17
  %123 = trunc i32 %108 to i8, !mcsema_real_eip !17
  %124 = call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !17
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !17
  %126 = xor i1 %125, true, !mcsema_real_eip !17
  store i1 %126, i1* %PF, !mcsema_real_eip !17
  %127 = icmp ult i32 %108, %EAX_val.32, !mcsema_real_eip !17
  store i1 %127, i1* %CF, !mcsema_real_eip !17
  %128 = zext i32 %108 to i64, !mcsema_real_eip !17
  store i64 %128, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !18
  %129 = add i64 %RBP_val.33, -68, !mcsema_real_eip !18
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !18
  %EAX.34 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.35 = load i32, i32* %EAX.34, !mcsema_real_eip !18
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !18
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.35, i32* %132, !mcsema_real_eip !18
  br label %block_0x163, !mcsema_real_eip !19

block_0x189:                                      ; preds = %block_0x163
  %133 = zext i32 40 to i64, !mcsema_real_eip !20
  store i64 %133, i64* %XAX, !mcsema_real_eip !20
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !21
  %134 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !21
  store i64 %134, i64* %XDI, !mcsema_real_eip !21
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !22
  %135 = add i64 %RBP_val.14, -24, !mcsema_real_eip !22
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !22
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !22
  store i64 %137, i64* %XCX, !mcsema_real_eip !22
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !23
  %138 = add i64 %RBP_val.15, -80, !mcsema_real_eip !23
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !23
  %RCX_val.16 = load i64, i64* %XCX, !mcsema_real_eip !23
  store i64 %RCX_val.16, i64* %139, !mcsema_real_eip !23
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !24
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !24
  %140 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !24
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !24
  store i64 -2415393069852865332, i64* %141, !mcsema_real_eip !24
  store i64 %140, i64* %XSP, !mcsema_real_eip !24
  %142 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.17), !mcsema_real_eip !24
  store i64 %142, i64* %XAX, !mcsema_real_eip !24
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !25
  %143 = add i64 %RBP_val.19, -88, !mcsema_real_eip !25
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !25
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !25
  store i64 %RAX_val.20, i64* %144, !mcsema_real_eip !25
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !26
  %145 = add i64 %RBP_val.21, -92, !mcsema_real_eip !26
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !26
  %147 = ptrtoint i64* %146 to i64, !mcsema_real_eip !26
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %148, !mcsema_real_eip !26
  br label %block_0x1a8, !mcsema_real_eip !12

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !27
  %149 = add i64 %RBP_val.36, -92, !mcsema_real_eip !27
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !27
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !27
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !27
  %153 = load i32, i32* %152, !mcsema_real_eip !27
  %154 = sub i32 %153, 10, !mcsema_real_eip !27
  %155 = xor i32 %154, %153, !mcsema_real_eip !27
  %156 = xor i32 %155, 10, !mcsema_real_eip !27
  %157 = and i32 %156, 16, !mcsema_real_eip !27
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !27
  store i1 %158, i1* %AF, !mcsema_real_eip !27
  %159 = trunc i32 %154 to i8, !mcsema_real_eip !27
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !27
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !27
  %162 = xor i1 %161, true, !mcsema_real_eip !27
  store i1 %162, i1* %PF, !mcsema_real_eip !27
  %163 = icmp eq i32 %154, 0, !mcsema_real_eip !27
  store i1 %163, i1* %ZF, !mcsema_real_eip !27
  %164 = lshr i32 %154, 31, !mcsema_real_eip !27
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !27
  store i1 %165, i1* %SF, !mcsema_real_eip !27
  %166 = icmp ult i32 %153, 10, !mcsema_real_eip !27
  store i1 %166, i1* %CF, !mcsema_real_eip !27
  %167 = xor i32 %153, 10, !mcsema_real_eip !27
  %168 = xor i32 %153, %154, !mcsema_real_eip !27
  %169 = and i32 %167, %168, !mcsema_real_eip !27
  %170 = lshr i32 %169, 31, !mcsema_real_eip !27
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !27
  store i1 %171, i1* %OF, !mcsema_real_eip !27
  %172 = load i1, i1* %OF, !mcsema_real_eip !28
  %173 = load i1, i1* %SF, !mcsema_real_eip !28
  %174 = icmp eq i1 %173, %172, !mcsema_real_eip !28
  br i1 %174, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !28

block_0x1b2:                                      ; preds = %block_0x1a8
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !29
  %175 = add i64 %RBP_val.97, -92, !mcsema_real_eip !29
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !29
  %177 = ptrtoint i64* %176 to i64, !mcsema_real_eip !29
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !29
  %179 = load i32, i32* %178, !mcsema_real_eip !29
  %180 = zext i32 %179 to i64, !mcsema_real_eip !29
  store i64 %180, i64* %XAX, !mcsema_real_eip !29
  %EAX.98 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.99 = load i32, i32* %EAX.98, !mcsema_real_eip !30
  %181 = add i32 1, %EAX_val.99, !mcsema_real_eip !30
  %182 = xor i32 %181, %EAX_val.99, !mcsema_real_eip !30
  %183 = xor i32 %182, 1, !mcsema_real_eip !30
  %184 = and i32 %183, 16, !mcsema_real_eip !30
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !30
  store i1 %185, i1* %AF, !mcsema_real_eip !30
  %186 = lshr i32 %181, 31, !mcsema_real_eip !30
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !30
  store i1 %187, i1* %SF, !mcsema_real_eip !30
  %188 = icmp eq i32 %181, 0, !mcsema_real_eip !30
  store i1 %188, i1* %ZF, !mcsema_real_eip !30
  %189 = xor i32 %EAX_val.99, 1, !mcsema_real_eip !30
  %190 = xor i32 %189, -1, !mcsema_real_eip !30
  %191 = xor i32 %EAX_val.99, %181, !mcsema_real_eip !30
  %192 = and i32 %190, %191, !mcsema_real_eip !30
  %193 = lshr i32 %192, 31, !mcsema_real_eip !30
  %194 = and i32 %193, 1, !mcsema_real_eip !30
  %195 = trunc i32 %194 to i1, !mcsema_real_eip !30
  store i1 %195, i1* %OF, !mcsema_real_eip !30
  %196 = trunc i32 %181 to i8, !mcsema_real_eip !30
  %197 = call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !30
  %198 = trunc i8 %197 to i1, !mcsema_real_eip !30
  %199 = xor i1 %198, true, !mcsema_real_eip !30
  store i1 %199, i1* %PF, !mcsema_real_eip !30
  %200 = icmp ult i32 %181, %EAX_val.99, !mcsema_real_eip !30
  store i1 %200, i1* %CF, !mcsema_real_eip !30
  %201 = zext i32 %181 to i64, !mcsema_real_eip !30
  store i64 %201, i64* %XAX, !mcsema_real_eip !30
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !31
  %202 = add i64 %RBP_val.100, -88, !mcsema_real_eip !31
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !31
  %204 = load i64, i64* %203, !mcsema_real_eip !31
  store i64 %204, i64* %XCX, !mcsema_real_eip !31
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !32
  %205 = add i64 %RBP_val.101, -92, !mcsema_real_eip !32
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !32
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !32
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !32
  %209 = load i32, i32* %208, !mcsema_real_eip !32
  %210 = sext i32 %209 to i64, !mcsema_real_eip !32
  store i64 %210, i64* %XDX, !mcsema_real_eip !32
  %RCX_val.102 = load i64, i64* %XCX, !mcsema_real_eip !33
  %211 = add i64 %RCX_val.102, 0, !mcsema_real_eip !33
  %RDX_val.103 = load i64, i64* %XDX, !mcsema_real_eip !33
  %212 = mul i64 %RDX_val.103, 4, !mcsema_real_eip !33
  %213 = add i64 %211, %212, !mcsema_real_eip !33
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !33
  %EAX.104 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.105 = load i32, i32* %EAX.104, !mcsema_real_eip !33
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !33
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.105, i32* %216, !mcsema_real_eip !33
  %RBP_val.106 = load i64, i64* %XBP, !mcsema_real_eip !34
  %217 = add i64 %RBP_val.106, -92, !mcsema_real_eip !34
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !34
  %219 = ptrtoint i64* %218 to i64, !mcsema_real_eip !34
  %220 = inttoptr i64 %219 to i32*, !mcsema_real_eip !34
  %221 = load i32, i32* %220, !mcsema_real_eip !34
  %222 = zext i32 %221 to i64, !mcsema_real_eip !34
  store i64 %222, i64* %XAX, !mcsema_real_eip !34
  %EAX.107 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.108 = load i32, i32* %EAX.107, !mcsema_real_eip !35
  %223 = add i32 1, %EAX_val.108, !mcsema_real_eip !35
  %224 = xor i32 %223, %EAX_val.108, !mcsema_real_eip !35
  %225 = xor i32 %224, 1, !mcsema_real_eip !35
  %226 = and i32 %225, 16, !mcsema_real_eip !35
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !35
  store i1 %227, i1* %AF, !mcsema_real_eip !35
  %228 = lshr i32 %223, 31, !mcsema_real_eip !35
  %229 = trunc i32 %228 to i1, !mcsema_real_eip !35
  store i1 %229, i1* %SF, !mcsema_real_eip !35
  %230 = icmp eq i32 %223, 0, !mcsema_real_eip !35
  store i1 %230, i1* %ZF, !mcsema_real_eip !35
  %231 = xor i32 %EAX_val.108, 1, !mcsema_real_eip !35
  %232 = xor i32 %231, -1, !mcsema_real_eip !35
  %233 = xor i32 %EAX_val.108, %223, !mcsema_real_eip !35
  %234 = and i32 %232, %233, !mcsema_real_eip !35
  %235 = lshr i32 %234, 31, !mcsema_real_eip !35
  %236 = and i32 %235, 1, !mcsema_real_eip !35
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !35
  store i1 %237, i1* %OF, !mcsema_real_eip !35
  %238 = trunc i32 %223 to i8, !mcsema_real_eip !35
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !35
  %240 = trunc i8 %239 to i1, !mcsema_real_eip !35
  %241 = xor i1 %240, true, !mcsema_real_eip !35
  store i1 %241, i1* %PF, !mcsema_real_eip !35
  %242 = icmp ult i32 %223, %EAX_val.108, !mcsema_real_eip !35
  store i1 %242, i1* %CF, !mcsema_real_eip !35
  %243 = zext i32 %223 to i64, !mcsema_real_eip !35
  store i64 %243, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !36
  %244 = add i64 %RBP_val.109, -92, !mcsema_real_eip !36
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !36
  %EAX.110 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.111 = load i32, i32* %EAX.110, !mcsema_real_eip !36
  %246 = ptrtoint i64* %245 to i64, !mcsema_real_eip !36
  %247 = inttoptr i64 %246 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.111, i32* %247, !mcsema_real_eip !36
  br label %block_0x1a8, !mcsema_real_eip !37

block_0x1d1:                                      ; preds = %block_0x1a8
  %248 = zext i32 10 to i64, !mcsema_real_eip !38
  store i64 %248, i64* %XAX, !mcsema_real_eip !38
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !39
  %249 = add i64 %RBP_val.37, -64, !mcsema_real_eip !39
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !39
  %251 = ptrtoint i64* %250 to i64, !mcsema_real_eip !39
  store i64 %251, i64* %XCX, !mcsema_real_eip !39
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !40
  %252 = add i64 %RBP_val.38, -24, !mcsema_real_eip !40
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !40
  %254 = ptrtoint i64* %253 to i64, !mcsema_real_eip !40
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !40
  %256 = load i32, i32* %255, !mcsema_real_eip !40
  %257 = zext i32 %256 to i64, !mcsema_real_eip !40
  store i64 %257, i64* %XDI, !mcsema_real_eip !40
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !41
  %258 = add i64 %RBP_val.39, -80, !mcsema_real_eip !41
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !41
  %260 = load i64, i64* %259, !mcsema_real_eip !41
  store i64 %260, i64* %XDX, !mcsema_real_eip !41
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !42
  %261 = add i64 %RBP_val.40, -88, !mcsema_real_eip !42
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !42
  %263 = load i64, i64* %262, !mcsema_real_eip !42
  store i64 %263, i64* %XSI, !mcsema_real_eip !42
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !43
  %264 = add i64 %RBP_val.41, -24, !mcsema_real_eip !43
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !43
  %266 = ptrtoint i64* %265 to i64, !mcsema_real_eip !43
  %267 = inttoptr i64 %266 to i32*, !mcsema_real_eip !43
  %268 = load i32, i32* %267, !mcsema_real_eip !43
  %269 = zext i32 %268 to i64, !mcsema_real_eip !43
  store i64 %269, i64* %R8, !mcsema_real_eip !43
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !44
  %270 = add i64 %RBP_val.42, -80, !mcsema_real_eip !44
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !44
  %272 = load i64, i64* %271, !mcsema_real_eip !44
  store i64 %272, i64* %R9, !mcsema_real_eip !44
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !45
  %273 = add i64 %RBP_val.43, -88, !mcsema_real_eip !45
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !45
  %275 = load i64, i64* %274, !mcsema_real_eip !45
  store i64 %275, i64* %R10, !mcsema_real_eip !45
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !46
  %276 = add i64 %RBP_val.44, -104, !mcsema_real_eip !46
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !46
  %RSI_val.45 = load i64, i64* %XSI, !mcsema_real_eip !46
  store i64 %RSI_val.45, i64* %277, !mcsema_real_eip !46
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !47
  store i64 %RCX_val.46, i64* %XSI, !mcsema_real_eip !47
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !48
  %278 = add i64 %RBP_val.47, -104, !mcsema_real_eip !48
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !48
  %280 = load i64, i64* %279, !mcsema_real_eip !48
  store i64 %280, i64* %R11, !mcsema_real_eip !48
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !49
  %281 = add i64 %RBP_val.48, -112, !mcsema_real_eip !49
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !49
  %RCX_val.49 = load i64, i64* %XCX, !mcsema_real_eip !49
  store i64 %RCX_val.49, i64* %282, !mcsema_real_eip !49
  %R11_val.50 = load i64, i64* %R11, !mcsema_real_eip !50
  store i64 %R11_val.50, i64* %XCX, !mcsema_real_eip !50
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !51
  %283 = add i64 %RBP_val.51, -116, !mcsema_real_eip !51
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !51
  %R8D.52 = bitcast i64* %R8 to i32*, !mcsema_real_eip !51
  %R8D_val.53 = load i32, i32* %R8D.52, !mcsema_real_eip !51
  %285 = ptrtoint i64* %284 to i64, !mcsema_real_eip !51
  %286 = inttoptr i64 %285 to i32*, !mcsema_real_eip !51
  store i32 %R8D_val.53, i32* %286, !mcsema_real_eip !51
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !52
  %287 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !52
  store i64 %287, i64* %R8, !mcsema_real_eip !52
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !53
  %288 = add i64 %RBP_val.56, -128, !mcsema_real_eip !53
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !53
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %R9_val.57, i64* %289, !mcsema_real_eip !53
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !54
  %290 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !54
  store i64 %290, i64* %R9, !mcsema_real_eip !54
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !55
  %291 = add i64 %RBP_val.60, -116, !mcsema_real_eip !55
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !55
  %293 = ptrtoint i64* %292 to i64, !mcsema_real_eip !55
  %294 = inttoptr i64 %293 to i32*, !mcsema_real_eip !55
  %295 = load i32, i32* %294, !mcsema_real_eip !55
  %296 = zext i32 %295 to i64, !mcsema_real_eip !55
  store i64 %296, i64* %XAX, !mcsema_real_eip !55
  %RSP_val.61 = load i64, i64* %XSP, !mcsema_real_eip !56
  %297 = add i64 %RSP_val.61, 0, !mcsema_real_eip !56
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !56
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.63 = load i32, i32* %EAX.62, !mcsema_real_eip !56
  %299 = ptrtoint i64* %298 to i64, !mcsema_real_eip !56
  %300 = inttoptr i64 %299 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.63, i32* %300, !mcsema_real_eip !56
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !57
  %301 = add i64 %RBP_val.64, -112, !mcsema_real_eip !57
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !57
  %303 = load i64, i64* %302, !mcsema_real_eip !57
  store i64 %303, i64* %XBX, !mcsema_real_eip !57
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !58
  %304 = add i64 %RSP_val.65, 8, !mcsema_real_eip !58
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !58
  %RBX_val.66 = load i64, i64* %XBX, !mcsema_real_eip !58
  store i64 %RBX_val.66, i64* %305, !mcsema_real_eip !58
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !59
  %306 = add i64 %RBP_val.67, -128, !mcsema_real_eip !59
  %307 = inttoptr i64 %306 to i64*, !mcsema_real_eip !59
  %308 = load i64, i64* %307, !mcsema_real_eip !59
  store i64 %308, i64* %R14, !mcsema_real_eip !59
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !60
  %309 = add i64 %RSP_val.68, 16, !mcsema_real_eip !60
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !60
  %R14_val.69 = load i64, i64* %R14, !mcsema_real_eip !60
  store i64 %R14_val.69, i64* %310, !mcsema_real_eip !60
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !61
  %311 = add i64 %RSP_val.70, 24, !mcsema_real_eip !61
  %312 = inttoptr i64 %311 to i64*, !mcsema_real_eip !61
  %R10_val.71 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %R10_val.71, i64* %312, !mcsema_real_eip !61
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !62
  %313 = sub i64 %RSP_val.72, 8, !mcsema_real_eip !62
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !62
  store i64 -4981261766360305936, i64* %314, !mcsema_real_eip !62
  store i64 %313, i64* %XSP, !mcsema_real_eip !62
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !62
  %315 = getelementptr %0, %0* @data_0x261, i64 0, i32 0, !mcsema_real_eip !63
  %316 = ptrtoint [4 x i8]* %315 to i64, !mcsema_real_eip !63
  %317 = add i64 %316, 0, !mcsema_real_eip !63
  store i64 %317, i64* %XDI, !mcsema_real_eip !63
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !64
  %318 = add i64 %RBP_val.73, -96, !mcsema_real_eip !64
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !64
  %EAX.74 = bitcast i64* %XAX to i32*, !mcsema_real_eip !64
  %EAX_val.75 = load i32, i32* %EAX.74, !mcsema_real_eip !64
  %320 = ptrtoint i64* %319 to i64, !mcsema_real_eip !64
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !64
  store i32 %EAX_val.75, i32* %321, !mcsema_real_eip !64
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !65
  %322 = add i64 %RBP_val.76, -96, !mcsema_real_eip !65
  %323 = inttoptr i64 %322 to i64*, !mcsema_real_eip !65
  %324 = ptrtoint i64* %323 to i64, !mcsema_real_eip !65
  %325 = inttoptr i64 %324 to i32*, !mcsema_real_eip !65
  %326 = load i32, i32* %325, !mcsema_real_eip !65
  %327 = zext i32 %326 to i64, !mcsema_real_eip !65
  store i64 %327, i64* %XSI, !mcsema_real_eip !65
  %AL.77 = bitcast i64* %XAX to i8*, !mcsema_real_eip !66
  store i8 0, i8* %AL.77, !mcsema_real_eip !66
  %RDI_val.78 = load i64, i64* %XDI, !mcsema_real_eip !67
  %RSI_val.79 = load i64, i64* %XSI, !mcsema_real_eip !67
  %RDX_val.80 = load i64, i64* %XDX, !mcsema_real_eip !67
  %RCX_val.81 = load i64, i64* %XCX, !mcsema_real_eip !67
  %R8_val.82 = load i64, i64* %R8, !mcsema_real_eip !67
  %R9_val.83 = load i64, i64* %R9, !mcsema_real_eip !67
  %RSP_val.84 = load i64, i64* %XSP, !mcsema_real_eip !67
  %328 = inttoptr i64 %RSP_val.84 to i64*, !mcsema_real_eip !67
  %329 = load i64, i64* %328, !mcsema_real_eip !67
  %330 = add i64 %RSP_val.84, 8, !mcsema_real_eip !67
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !67
  %332 = load i64, i64* %331, !mcsema_real_eip !67
  %333 = add i64 %330, 8, !mcsema_real_eip !67
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !67
  %335 = load i64, i64* %334, !mcsema_real_eip !67
  %336 = add i64 %333, 8, !mcsema_real_eip !67
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !67
  %338 = load i64, i64* %337, !mcsema_real_eip !67
  %339 = add i64 %336, 8, !mcsema_real_eip !67
  %340 = inttoptr i64 %339 to i64*, !mcsema_real_eip !67
  %341 = load i64, i64* %340, !mcsema_real_eip !67
  %342 = add i64 %339, 8, !mcsema_real_eip !67
  %343 = inttoptr i64 %342 to i64*, !mcsema_real_eip !67
  %344 = load i64, i64* %343, !mcsema_real_eip !67
  %RSP_val.85 = load i64, i64* %XSP, !mcsema_real_eip !67
  %345 = sub i64 %RSP_val.85, 8, !mcsema_real_eip !67
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !67
  store i64 -2415393069852865332, i64* %346, !mcsema_real_eip !67
  store i64 %345, i64* %XSP, !mcsema_real_eip !67
  %347 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.78, i64 %RSI_val.79, i64 %RDX_val.80, i64 %RCX_val.81, i64 %R8_val.82, i64 %R9_val.83, i64 %329, i64 %332, i64 %335, i64 %338, i64 %341, i64 %344), !mcsema_real_eip !67
  store i64 %347, i64* %XAX, !mcsema_real_eip !67
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !68
  %348 = add i64 %RBP_val.86, -96, !mcsema_real_eip !68
  %349 = inttoptr i64 %348 to i64*, !mcsema_real_eip !68
  %350 = ptrtoint i64* %349 to i64, !mcsema_real_eip !68
  %351 = inttoptr i64 %350 to i32*, !mcsema_real_eip !68
  %352 = load i32, i32* %351, !mcsema_real_eip !68
  %353 = zext i32 %352 to i64, !mcsema_real_eip !68
  store i64 %353, i64* %XSI, !mcsema_real_eip !68
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !69
  %354 = add i64 %RBP_val.87, -132, !mcsema_real_eip !69
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !69
  %EAX.88 = bitcast i64* %XAX to i32*, !mcsema_real_eip !69
  %EAX_val.89 = load i32, i32* %EAX.88, !mcsema_real_eip !69
  %356 = ptrtoint i64* %355 to i64, !mcsema_real_eip !69
  %357 = inttoptr i64 %356 to i32*, !mcsema_real_eip !69
  store i32 %EAX_val.89, i32* %357, !mcsema_real_eip !69
  %ESI.90 = bitcast i64* %XSI to i32*, !mcsema_real_eip !70
  %ESI_val.91 = load i32, i32* %ESI.90, !mcsema_real_eip !70
  %358 = zext i32 %ESI_val.91 to i64, !mcsema_real_eip !70
  store i64 %358, i64* %XAX, !mcsema_real_eip !70
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !71
  %359 = add i64 160, %RSP_val.92, !mcsema_real_eip !71
  %360 = xor i64 %359, %RSP_val.92, !mcsema_real_eip !71
  %361 = xor i64 %360, 160, !mcsema_real_eip !71
  %362 = and i64 %361, 16, !mcsema_real_eip !71
  %363 = icmp ne i64 %362, 0, !mcsema_real_eip !71
  store i1 %363, i1* %AF, !mcsema_real_eip !71
  %364 = lshr i64 %359, 63, !mcsema_real_eip !71
  %365 = trunc i64 %364 to i1, !mcsema_real_eip !71
  store i1 %365, i1* %SF, !mcsema_real_eip !71
  %366 = icmp eq i64 %359, 0, !mcsema_real_eip !71
  store i1 %366, i1* %ZF, !mcsema_real_eip !71
  %367 = xor i64 %RSP_val.92, 160, !mcsema_real_eip !71
  %368 = xor i64 %367, -1, !mcsema_real_eip !71
  %369 = xor i64 %RSP_val.92, %359, !mcsema_real_eip !71
  %370 = and i64 %368, %369, !mcsema_real_eip !71
  %371 = lshr i64 %370, 63, !mcsema_real_eip !71
  %372 = and i64 %371, 1, !mcsema_real_eip !71
  %373 = trunc i64 %372 to i1, !mcsema_real_eip !71
  store i1 %373, i1* %OF, !mcsema_real_eip !71
  %374 = trunc i64 %359 to i8, !mcsema_real_eip !71
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !71
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !71
  %377 = xor i1 %376, true, !mcsema_real_eip !71
  store i1 %377, i1* %PF, !mcsema_real_eip !71
  %378 = icmp ult i64 %359, %RSP_val.92, !mcsema_real_eip !71
  store i1 %378, i1* %CF, !mcsema_real_eip !71
  store i64 %359, i64* %XSP, !mcsema_real_eip !71
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !72
  %379 = inttoptr i64 %RSP_val.93 to i64*, !mcsema_real_eip !72
  %380 = load i64, i64* %379, !mcsema_real_eip !72
  store i64 %380, i64* %XBX, !mcsema_real_eip !72
  %381 = add i64 %RSP_val.93, 8, !mcsema_real_eip !72
  store i64 %381, i64* %XSP, !mcsema_real_eip !72
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !73
  %382 = inttoptr i64 %RSP_val.94 to i64*, !mcsema_real_eip !73
  %383 = load i64, i64* %382, !mcsema_real_eip !73
  store i64 %383, i64* %R14, !mcsema_real_eip !73
  %384 = add i64 %RSP_val.94, 8, !mcsema_real_eip !73
  store i64 %384, i64* %XSP, !mcsema_real_eip !73
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !74
  %385 = inttoptr i64 %RSP_val.95 to i64*, !mcsema_real_eip !74
  %386 = load i64, i64* %385, !mcsema_real_eip !74
  store i64 %386, i64* %XBP, !mcsema_real_eip !74
  %387 = add i64 %RSP_val.95, 8, !mcsema_real_eip !74
  store i64 %387, i64* %XSP, !mcsema_real_eip !74
  %RSP_val.96 = load i64, i64* %XSP, !mcsema_real_eip !75
  %388 = add i64 %RSP_val.96, 8, !mcsema_real_eip !75
  %389 = inttoptr i64 %RSP_val.96 to i64*, !mcsema_real_eip !75
  %390 = load i64, i64* %389, !mcsema_real_eip !75
  store i64 %390, i64* %XIP, !mcsema_real_eip !75
  store i64 %388, i64* %XSP, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !76
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !76
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !76
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !76
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !76
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !76
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !76
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !76
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !76
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !76
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !76
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !76
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !76
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !76
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !76
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !76
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !76
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !76
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !76
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !76
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !76
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !76
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !76
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !76
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !76
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !76
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !76
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !76
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !76
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !76
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !76
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !76
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !76
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !76
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !76
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !76
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !76
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !76
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !76
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !76
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !76
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !76
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !76
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !76
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !76
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !76
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !76
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !76
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !76
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !76
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !76
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !76
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !76
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !76
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !76
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !76
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !76
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !76
  br label %block_0x0, !mcsema_real_eip !76

block_0x0:                                        ; preds = %entry
  %RBP_val.112 = load i64, i64* %XBP, !mcsema_real_eip !76
  %RSP_val.113 = load i64, i64* %XSP, !mcsema_real_eip !76
  %1 = sub i64 %RSP_val.113, 8, !mcsema_real_eip !76
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !76
  store i64 %RBP_val.112, i64* %2, !mcsema_real_eip !76
  store i64 %1, i64* %XSP, !mcsema_real_eip !76
  %RSP_val.114 = load i64, i64* %XSP, !mcsema_real_eip !77
  store i64 %RSP_val.114, i64* %XBP, !mcsema_real_eip !77
  %RBX_val.115 = load i64, i64* %XBX, !mcsema_real_eip !78
  %RSP_val.116 = load i64, i64* %XSP, !mcsema_real_eip !78
  %3 = sub i64 %RSP_val.116, 8, !mcsema_real_eip !78
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %RBX_val.115, i64* %4, !mcsema_real_eip !78
  store i64 %3, i64* %XSP, !mcsema_real_eip !78
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !79
  %5 = add i64 %RBP_val.117, 40, !mcsema_real_eip !79
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !79
  %7 = load i64, i64* %6, !mcsema_real_eip !79
  store i64 %7, i64* %XAX, !mcsema_real_eip !79
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !80
  %8 = add i64 %RBP_val.118, 32, !mcsema_real_eip !80
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !80
  %10 = load i64, i64* %9, !mcsema_real_eip !80
  store i64 %10, i64* %R10, !mcsema_real_eip !80
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !81
  %11 = add i64 %RBP_val.119, 24, !mcsema_real_eip !81
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !81
  %13 = load i64, i64* %12, !mcsema_real_eip !81
  store i64 %13, i64* %R11, !mcsema_real_eip !81
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !82
  %14 = add i64 %RBP_val.120, 16, !mcsema_real_eip !82
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !82
  %16 = ptrtoint i64* %15 to i64, !mcsema_real_eip !82
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !82
  %18 = load i32, i32* %17, !mcsema_real_eip !82
  %19 = zext i32 %18 to i64, !mcsema_real_eip !82
  store i64 %19, i64* %XBX, !mcsema_real_eip !82
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !83
  %20 = add i64 %RBP_val.121, -12, !mcsema_real_eip !83
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !83
  %EDI.122 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.123 = load i32, i32* %EDI.122, !mcsema_real_eip !83
  %22 = ptrtoint i64* %21 to i64, !mcsema_real_eip !83
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.123, i32* %23, !mcsema_real_eip !83
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !84
  %24 = add i64 %RBP_val.124, -24, !mcsema_real_eip !84
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !84
  %RSI_val.125 = load i64, i64* %XSI, !mcsema_real_eip !84
  store i64 %RSI_val.125, i64* %25, !mcsema_real_eip !84
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !85
  %26 = add i64 %RBP_val.126, -32, !mcsema_real_eip !85
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !85
  %RDX_val.127 = load i64, i64* %XDX, !mcsema_real_eip !85
  store i64 %RDX_val.127, i64* %27, !mcsema_real_eip !85
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !86
  %28 = add i64 %RBP_val.128, -40, !mcsema_real_eip !86
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !86
  %RCX_val.129 = load i64, i64* %XCX, !mcsema_real_eip !86
  store i64 %RCX_val.129, i64* %29, !mcsema_real_eip !86
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !87
  %30 = add i64 %RBP_val.130, -44, !mcsema_real_eip !87
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !87
  %R8D.131 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.132 = load i32, i32* %R8D.131, !mcsema_real_eip !87
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !87
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.132, i32* %33, !mcsema_real_eip !87
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !88
  %34 = add i64 %RBP_val.133, -48, !mcsema_real_eip !88
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !88
  %R9D.134 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.135 = load i32, i32* %R9D.134, !mcsema_real_eip !88
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !88
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.135, i32* %37, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !89
  %38 = add i64 %RBP_val.136, -52, !mcsema_real_eip !89
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !89
  %EBX.137 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.138 = load i32, i32* %EBX.137, !mcsema_real_eip !89
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !89
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.138, i32* %41, !mcsema_real_eip !89
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !90
  %42 = add i64 %RBP_val.139, -64, !mcsema_real_eip !90
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !90
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !90
  store i64 %R11_val.140, i64* %43, !mcsema_real_eip !90
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !91
  %44 = add i64 %RBP_val.141, -72, !mcsema_real_eip !91
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !91
  %R10_val.142 = load i64, i64* %R10, !mcsema_real_eip !91
  store i64 %R10_val.142, i64* %45, !mcsema_real_eip !91
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !92
  %46 = add i64 %RBP_val.143, -80, !mcsema_real_eip !92
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !92
  %RAX_val.144 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.144, i64* %47, !mcsema_real_eip !92
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !93
  %48 = add i64 %RBP_val.145, -84, !mcsema_real_eip !93
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !93
  %50 = ptrtoint i64* %49 to i64, !mcsema_real_eip !93
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %51, !mcsema_real_eip !93
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !94
  %52 = add i64 %RBP_val.146, -12, !mcsema_real_eip !94
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !94
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !94
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !94
  %56 = load i32, i32* %55, !mcsema_real_eip !94
  %57 = zext i32 %56 to i64, !mcsema_real_eip !94
  store i64 %57, i64* %XDI, !mcsema_real_eip !94
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !95
  %58 = add i64 %RBP_val.147, -84, !mcsema_real_eip !95
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !95
  %60 = ptrtoint i64* %59 to i64, !mcsema_real_eip !95
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !95
  %62 = load i32, i32* %61, !mcsema_real_eip !95
  %EDI.148 = bitcast i64* %XDI to i32*, !mcsema_real_eip !95
  %EDI_val.149 = load i32, i32* %EDI.148, !mcsema_real_eip !95
  %63 = add i32 %EDI_val.149, %62, !mcsema_real_eip !95
  %64 = xor i32 %63, %62, !mcsema_real_eip !95
  %65 = xor i32 %64, %EDI_val.149, !mcsema_real_eip !95
  %66 = and i32 %65, 16, !mcsema_real_eip !95
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !95
  store i1 %67, i1* %AF, !mcsema_real_eip !95
  %68 = lshr i32 %63, 31, !mcsema_real_eip !95
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !95
  store i1 %69, i1* %SF, !mcsema_real_eip !95
  %70 = icmp eq i32 %63, 0, !mcsema_real_eip !95
  store i1 %70, i1* %ZF, !mcsema_real_eip !95
  %71 = xor i32 %62, %EDI_val.149, !mcsema_real_eip !95
  %72 = xor i32 %71, -1, !mcsema_real_eip !95
  %73 = xor i32 %62, %63, !mcsema_real_eip !95
  %74 = and i32 %72, %73, !mcsema_real_eip !95
  %75 = lshr i32 %74, 31, !mcsema_real_eip !95
  %76 = and i32 %75, 1, !mcsema_real_eip !95
  %77 = trunc i32 %76 to i1, !mcsema_real_eip !95
  store i1 %77, i1* %OF, !mcsema_real_eip !95
  %78 = trunc i32 %63 to i8, !mcsema_real_eip !95
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !95
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !95
  %81 = xor i1 %80, true, !mcsema_real_eip !95
  store i1 %81, i1* %PF, !mcsema_real_eip !95
  %82 = icmp ult i32 %63, %62, !mcsema_real_eip !95
  store i1 %82, i1* %CF, !mcsema_real_eip !95
  %83 = zext i32 %63 to i64, !mcsema_real_eip !95
  store i64 %83, i64* %XDI, !mcsema_real_eip !95
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !96
  %84 = add i64 %RBP_val.150, -84, !mcsema_real_eip !96
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !96
  %EDI.151 = bitcast i64* %XDI to i32*, !mcsema_real_eip !96
  %EDI_val.152 = load i32, i32* %EDI.151, !mcsema_real_eip !96
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !96
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !96
  store i32 %EDI_val.152, i32* %87, !mcsema_real_eip !96
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !97
  %88 = add i64 %RBP_val.153, -88, !mcsema_real_eip !97
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !97
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !97
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %91, !mcsema_real_eip !97
  br label %block_0x51, !mcsema_real_eip !98

block_0x51:                                       ; preds = %block_0x5d, %block_0x0
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !98
  %92 = add i64 %RBP_val.154, -88, !mcsema_real_eip !98
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !98
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !98
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !98
  %96 = load i32, i32* %95, !mcsema_real_eip !98
  %97 = zext i32 %96 to i64, !mcsema_real_eip !98
  store i64 %97, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !99
  %98 = add i64 %RBP_val.155, -44, !mcsema_real_eip !99
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !99
  %EAX.156 = bitcast i64* %XAX to i32*, !mcsema_real_eip !99
  %EAX_val.157 = load i32, i32* %EAX.156, !mcsema_real_eip !99
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !99
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !99
  %102 = load i32, i32* %101, !mcsema_real_eip !99
  %103 = sub i32 %EAX_val.157, %102, !mcsema_real_eip !99
  %104 = xor i32 %103, %EAX_val.157, !mcsema_real_eip !99
  %105 = xor i32 %104, %102, !mcsema_real_eip !99
  %106 = and i32 %105, 16, !mcsema_real_eip !99
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !99
  store i1 %107, i1* %AF, !mcsema_real_eip !99
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !99
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !99
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !99
  %111 = xor i1 %110, true, !mcsema_real_eip !99
  store i1 %111, i1* %PF, !mcsema_real_eip !99
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !99
  store i1 %112, i1* %ZF, !mcsema_real_eip !99
  %113 = lshr i32 %103, 31, !mcsema_real_eip !99
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !99
  store i1 %114, i1* %SF, !mcsema_real_eip !99
  %115 = icmp ult i32 %EAX_val.157, %102, !mcsema_real_eip !99
  store i1 %115, i1* %CF, !mcsema_real_eip !99
  %116 = xor i32 %EAX_val.157, %102, !mcsema_real_eip !99
  %117 = xor i32 %EAX_val.157, %103, !mcsema_real_eip !99
  %118 = and i32 %116, %117, !mcsema_real_eip !99
  %119 = lshr i32 %118, 31, !mcsema_real_eip !99
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !99
  store i1 %120, i1* %OF, !mcsema_real_eip !99
  %121 = load i1, i1* %OF, !mcsema_real_eip !100
  %122 = load i1, i1* %SF, !mcsema_real_eip !100
  %123 = icmp eq i1 %122, %121, !mcsema_real_eip !100
  br i1 %123, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !100

block_0x5d:                                       ; preds = %block_0x51
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !101
  %124 = add i64 %RBP_val.167, -24, !mcsema_real_eip !101
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !101
  %126 = load i64, i64* %125, !mcsema_real_eip !101
  store i64 %126, i64* %XAX, !mcsema_real_eip !101
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !102
  %127 = add i64 %RBP_val.168, -88, !mcsema_real_eip !102
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !102
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !102
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !102
  %131 = load i32, i32* %130, !mcsema_real_eip !102
  %132 = sext i32 %131 to i64, !mcsema_real_eip !102
  store i64 %132, i64* %XCX, !mcsema_real_eip !102
  %RAX_val.169 = load i64, i64* %XAX, !mcsema_real_eip !103
  %133 = add i64 %RAX_val.169, 0, !mcsema_real_eip !103
  %RCX_val.170 = load i64, i64* %XCX, !mcsema_real_eip !103
  %134 = mul i64 %RCX_val.170, 4, !mcsema_real_eip !103
  %135 = add i64 %133, %134, !mcsema_real_eip !103
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !103
  %137 = ptrtoint i64* %136 to i64, !mcsema_real_eip !103
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !103
  %139 = load i32, i32* %138, !mcsema_real_eip !103
  %140 = zext i32 %139 to i64, !mcsema_real_eip !103
  store i64 %140, i64* %XDX, !mcsema_real_eip !103
  %RBP_val.171 = load i64, i64* %XBP, !mcsema_real_eip !104
  %141 = add i64 %RBP_val.171, -84, !mcsema_real_eip !104
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !104
  %143 = ptrtoint i64* %142 to i64, !mcsema_real_eip !104
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !104
  %145 = load i32, i32* %144, !mcsema_real_eip !104
  %EDX.172 = bitcast i64* %XDX to i32*, !mcsema_real_eip !104
  %EDX_val.173 = load i32, i32* %EDX.172, !mcsema_real_eip !104
  %146 = add i32 %EDX_val.173, %145, !mcsema_real_eip !104
  %147 = xor i32 %146, %145, !mcsema_real_eip !104
  %148 = xor i32 %147, %EDX_val.173, !mcsema_real_eip !104
  %149 = and i32 %148, 16, !mcsema_real_eip !104
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !104
  store i1 %150, i1* %AF, !mcsema_real_eip !104
  %151 = lshr i32 %146, 31, !mcsema_real_eip !104
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !104
  store i1 %152, i1* %SF, !mcsema_real_eip !104
  %153 = icmp eq i32 %146, 0, !mcsema_real_eip !104
  store i1 %153, i1* %ZF, !mcsema_real_eip !104
  %154 = xor i32 %145, %EDX_val.173, !mcsema_real_eip !104
  %155 = xor i32 %154, -1, !mcsema_real_eip !104
  %156 = xor i32 %145, %146, !mcsema_real_eip !104
  %157 = and i32 %155, %156, !mcsema_real_eip !104
  %158 = lshr i32 %157, 31, !mcsema_real_eip !104
  %159 = and i32 %158, 1, !mcsema_real_eip !104
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !104
  store i1 %160, i1* %OF, !mcsema_real_eip !104
  %161 = trunc i32 %146 to i8, !mcsema_real_eip !104
  %162 = call i8 @llvm.ctpop.i8(i8 %161), !mcsema_real_eip !104
  %163 = trunc i8 %162 to i1, !mcsema_real_eip !104
  %164 = xor i1 %163, true, !mcsema_real_eip !104
  store i1 %164, i1* %PF, !mcsema_real_eip !104
  %165 = icmp ult i32 %146, %145, !mcsema_real_eip !104
  store i1 %165, i1* %CF, !mcsema_real_eip !104
  %166 = zext i32 %146 to i64, !mcsema_real_eip !104
  store i64 %166, i64* %XDX, !mcsema_real_eip !104
  %RBP_val.174 = load i64, i64* %XBP, !mcsema_real_eip !105
  %167 = add i64 %RBP_val.174, -84, !mcsema_real_eip !105
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !105
  %EDX.175 = bitcast i64* %XDX to i32*, !mcsema_real_eip !105
  %EDX_val.176 = load i32, i32* %EDX.175, !mcsema_real_eip !105
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !105
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !105
  store i32 %EDX_val.176, i32* %170, !mcsema_real_eip !105
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !106
  %171 = add i64 %RBP_val.177, -88, !mcsema_real_eip !106
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !106
  %173 = ptrtoint i64* %172 to i64, !mcsema_real_eip !106
  %174 = inttoptr i64 %173 to i32*, !mcsema_real_eip !106
  %175 = load i32, i32* %174, !mcsema_real_eip !106
  %176 = zext i32 %175 to i64, !mcsema_real_eip !106
  store i64 %176, i64* %XAX, !mcsema_real_eip !106
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !107
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !107
  %177 = add i32 1, %EAX_val.179, !mcsema_real_eip !107
  %178 = xor i32 %177, %EAX_val.179, !mcsema_real_eip !107
  %179 = xor i32 %178, 1, !mcsema_real_eip !107
  %180 = and i32 %179, 16, !mcsema_real_eip !107
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !107
  store i1 %181, i1* %AF, !mcsema_real_eip !107
  %182 = lshr i32 %177, 31, !mcsema_real_eip !107
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !107
  store i1 %183, i1* %SF, !mcsema_real_eip !107
  %184 = icmp eq i32 %177, 0, !mcsema_real_eip !107
  store i1 %184, i1* %ZF, !mcsema_real_eip !107
  %185 = xor i32 %EAX_val.179, 1, !mcsema_real_eip !107
  %186 = xor i32 %185, -1, !mcsema_real_eip !107
  %187 = xor i32 %EAX_val.179, %177, !mcsema_real_eip !107
  %188 = and i32 %186, %187, !mcsema_real_eip !107
  %189 = lshr i32 %188, 31, !mcsema_real_eip !107
  %190 = and i32 %189, 1, !mcsema_real_eip !107
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !107
  store i1 %191, i1* %OF, !mcsema_real_eip !107
  %192 = trunc i32 %177 to i8, !mcsema_real_eip !107
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !107
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !107
  %195 = xor i1 %194, true, !mcsema_real_eip !107
  store i1 %195, i1* %PF, !mcsema_real_eip !107
  %196 = icmp ult i32 %177, %EAX_val.179, !mcsema_real_eip !107
  store i1 %196, i1* %CF, !mcsema_real_eip !107
  %197 = zext i32 %177 to i64, !mcsema_real_eip !107
  store i64 %197, i64* %XAX, !mcsema_real_eip !107
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !108
  %198 = add i64 %RBP_val.180, -88, !mcsema_real_eip !108
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !108
  %EAX.181 = bitcast i64* %XAX to i32*, !mcsema_real_eip !108
  %EAX_val.182 = load i32, i32* %EAX.181, !mcsema_real_eip !108
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !108
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !108
  store i32 %EAX_val.182, i32* %201, !mcsema_real_eip !108
  br label %block_0x51, !mcsema_real_eip !109

block_0x7c:                                       ; preds = %block_0x51
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !110
  %202 = add i64 %RBP_val.158, -32, !mcsema_real_eip !110
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !110
  %204 = load i64, i64* %203, !mcsema_real_eip !110
  store i64 %204, i64* %XAX, !mcsema_real_eip !110
  %RAX_val.159 = load i64, i64* %XAX, !mcsema_real_eip !111
  %205 = add i64 %RAX_val.159, 0, !mcsema_real_eip !111
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !111
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !111
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !111
  %209 = load i32, i32* %208, !mcsema_real_eip !111
  %210 = zext i32 %209 to i64, !mcsema_real_eip !111
  store i64 %210, i64* %XCX, !mcsema_real_eip !111
  %RBP_val.160 = load i64, i64* %XBP, !mcsema_real_eip !112
  %211 = add i64 %RBP_val.160, -84, !mcsema_real_eip !112
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !112
  %213 = ptrtoint i64* %212 to i64, !mcsema_real_eip !112
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !112
  %215 = load i32, i32* %214, !mcsema_real_eip !112
  %ECX.161 = bitcast i64* %XCX to i32*, !mcsema_real_eip !112
  %ECX_val.162 = load i32, i32* %ECX.161, !mcsema_real_eip !112
  %216 = add i32 %ECX_val.162, %215, !mcsema_real_eip !112
  %217 = xor i32 %216, %215, !mcsema_real_eip !112
  %218 = xor i32 %217, %ECX_val.162, !mcsema_real_eip !112
  %219 = and i32 %218, 16, !mcsema_real_eip !112
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !112
  store i1 %220, i1* %AF, !mcsema_real_eip !112
  %221 = lshr i32 %216, 31, !mcsema_real_eip !112
  %222 = trunc i32 %221 to i1, !mcsema_real_eip !112
  store i1 %222, i1* %SF, !mcsema_real_eip !112
  %223 = icmp eq i32 %216, 0, !mcsema_real_eip !112
  store i1 %223, i1* %ZF, !mcsema_real_eip !112
  %224 = xor i32 %215, %ECX_val.162, !mcsema_real_eip !112
  %225 = xor i32 %224, -1, !mcsema_real_eip !112
  %226 = xor i32 %215, %216, !mcsema_real_eip !112
  %227 = and i32 %225, %226, !mcsema_real_eip !112
  %228 = lshr i32 %227, 31, !mcsema_real_eip !112
  %229 = and i32 %228, 1, !mcsema_real_eip !112
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !112
  store i1 %230, i1* %OF, !mcsema_real_eip !112
  %231 = trunc i32 %216 to i8, !mcsema_real_eip !112
  %232 = call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !112
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !112
  %234 = xor i1 %233, true, !mcsema_real_eip !112
  store i1 %234, i1* %PF, !mcsema_real_eip !112
  %235 = icmp ult i32 %216, %215, !mcsema_real_eip !112
  store i1 %235, i1* %CF, !mcsema_real_eip !112
  %236 = zext i32 %216 to i64, !mcsema_real_eip !112
  store i64 %236, i64* %XCX, !mcsema_real_eip !112
  %RBP_val.163 = load i64, i64* %XBP, !mcsema_real_eip !113
  %237 = add i64 %RBP_val.163, -84, !mcsema_real_eip !113
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !113
  %ECX.164 = bitcast i64* %XCX to i32*, !mcsema_real_eip !113
  %ECX_val.165 = load i32, i32* %ECX.164, !mcsema_real_eip !113
  %239 = ptrtoint i64* %238 to i64, !mcsema_real_eip !113
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !113
  store i32 %ECX_val.165, i32* %240, !mcsema_real_eip !113
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !114
  %241 = add i64 %RBP_val.166, -92, !mcsema_real_eip !114
  %242 = inttoptr i64 %241 to i64*, !mcsema_real_eip !114
  %243 = ptrtoint i64* %242 to i64, !mcsema_real_eip !114
  %244 = inttoptr i64 %243 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %244, !mcsema_real_eip !114
  br label %block_0x8f, !mcsema_real_eip !101

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !115
  %245 = add i64 %RBP_val.183, -92, !mcsema_real_eip !115
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !115
  %247 = ptrtoint i64* %246 to i64, !mcsema_real_eip !115
  %248 = inttoptr i64 %247 to i32*, !mcsema_real_eip !115
  %249 = load i32, i32* %248, !mcsema_real_eip !115
  %250 = zext i32 %249 to i64, !mcsema_real_eip !115
  store i64 %250, i64* %XAX, !mcsema_real_eip !115
  %RBP_val.184 = load i64, i64* %XBP, !mcsema_real_eip !116
  %251 = add i64 %RBP_val.184, -48, !mcsema_real_eip !116
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !116
  %EAX.185 = bitcast i64* %XAX to i32*, !mcsema_real_eip !116
  %EAX_val.186 = load i32, i32* %EAX.185, !mcsema_real_eip !116
  %253 = ptrtoint i64* %252 to i64, !mcsema_real_eip !116
  %254 = inttoptr i64 %253 to i32*, !mcsema_real_eip !116
  %255 = load i32, i32* %254, !mcsema_real_eip !116
  %256 = sub i32 %EAX_val.186, %255, !mcsema_real_eip !116
  %257 = xor i32 %256, %EAX_val.186, !mcsema_real_eip !116
  %258 = xor i32 %257, %255, !mcsema_real_eip !116
  %259 = and i32 %258, 16, !mcsema_real_eip !116
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !116
  store i1 %260, i1* %AF, !mcsema_real_eip !116
  %261 = trunc i32 %256 to i8, !mcsema_real_eip !116
  %262 = call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !116
  %263 = trunc i8 %262 to i1, !mcsema_real_eip !116
  %264 = xor i1 %263, true, !mcsema_real_eip !116
  store i1 %264, i1* %PF, !mcsema_real_eip !116
  %265 = icmp eq i32 %256, 0, !mcsema_real_eip !116
  store i1 %265, i1* %ZF, !mcsema_real_eip !116
  %266 = lshr i32 %256, 31, !mcsema_real_eip !116
  %267 = trunc i32 %266 to i1, !mcsema_real_eip !116
  store i1 %267, i1* %SF, !mcsema_real_eip !116
  %268 = icmp ult i32 %EAX_val.186, %255, !mcsema_real_eip !116
  store i1 %268, i1* %CF, !mcsema_real_eip !116
  %269 = xor i32 %EAX_val.186, %255, !mcsema_real_eip !116
  %270 = xor i32 %EAX_val.186, %256, !mcsema_real_eip !116
  %271 = and i32 %269, %270, !mcsema_real_eip !116
  %272 = lshr i32 %271, 31, !mcsema_real_eip !116
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !116
  store i1 %273, i1* %OF, !mcsema_real_eip !116
  %274 = load i1, i1* %OF, !mcsema_real_eip !117
  %275 = load i1, i1* %SF, !mcsema_real_eip !117
  %276 = icmp eq i1 %275, %274, !mcsema_real_eip !117
  br i1 %276, label %block_0xba, label %block_0x9b, !mcsema_real_eip !117

block_0x9b:                                       ; preds = %block_0x8f
  %RBP_val.195 = load i64, i64* %XBP, !mcsema_real_eip !118
  %277 = add i64 %RBP_val.195, -40, !mcsema_real_eip !118
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !118
  %279 = load i64, i64* %278, !mcsema_real_eip !118
  store i64 %279, i64* %XAX, !mcsema_real_eip !118
  %RBP_val.196 = load i64, i64* %XBP, !mcsema_real_eip !119
  %280 = add i64 %RBP_val.196, -92, !mcsema_real_eip !119
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !119
  %282 = ptrtoint i64* %281 to i64, !mcsema_real_eip !119
  %283 = inttoptr i64 %282 to i32*, !mcsema_real_eip !119
  %284 = load i32, i32* %283, !mcsema_real_eip !119
  %285 = sext i32 %284 to i64, !mcsema_real_eip !119
  store i64 %285, i64* %XCX, !mcsema_real_eip !119
  %RAX_val.197 = load i64, i64* %XAX, !mcsema_real_eip !120
  %286 = add i64 %RAX_val.197, 0, !mcsema_real_eip !120
  %RCX_val.198 = load i64, i64* %XCX, !mcsema_real_eip !120
  %287 = mul i64 %RCX_val.198, 4, !mcsema_real_eip !120
  %288 = add i64 %286, %287, !mcsema_real_eip !120
  %289 = inttoptr i64 %288 to i64*, !mcsema_real_eip !120
  %290 = ptrtoint i64* %289 to i64, !mcsema_real_eip !120
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !120
  %292 = load i32, i32* %291, !mcsema_real_eip !120
  %293 = zext i32 %292 to i64, !mcsema_real_eip !120
  store i64 %293, i64* %XDX, !mcsema_real_eip !120
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !121
  %294 = add i64 %RBP_val.199, -84, !mcsema_real_eip !121
  %295 = inttoptr i64 %294 to i64*, !mcsema_real_eip !121
  %296 = ptrtoint i64* %295 to i64, !mcsema_real_eip !121
  %297 = inttoptr i64 %296 to i32*, !mcsema_real_eip !121
  %298 = load i32, i32* %297, !mcsema_real_eip !121
  %EDX.200 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.201 = load i32, i32* %EDX.200, !mcsema_real_eip !121
  %299 = add i32 %EDX_val.201, %298, !mcsema_real_eip !121
  %300 = xor i32 %299, %298, !mcsema_real_eip !121
  %301 = xor i32 %300, %EDX_val.201, !mcsema_real_eip !121
  %302 = and i32 %301, 16, !mcsema_real_eip !121
  %303 = icmp ne i32 %302, 0, !mcsema_real_eip !121
  store i1 %303, i1* %AF, !mcsema_real_eip !121
  %304 = lshr i32 %299, 31, !mcsema_real_eip !121
  %305 = trunc i32 %304 to i1, !mcsema_real_eip !121
  store i1 %305, i1* %SF, !mcsema_real_eip !121
  %306 = icmp eq i32 %299, 0, !mcsema_real_eip !121
  store i1 %306, i1* %ZF, !mcsema_real_eip !121
  %307 = xor i32 %298, %EDX_val.201, !mcsema_real_eip !121
  %308 = xor i32 %307, -1, !mcsema_real_eip !121
  %309 = xor i32 %298, %299, !mcsema_real_eip !121
  %310 = and i32 %308, %309, !mcsema_real_eip !121
  %311 = lshr i32 %310, 31, !mcsema_real_eip !121
  %312 = and i32 %311, 1, !mcsema_real_eip !121
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !121
  store i1 %313, i1* %OF, !mcsema_real_eip !121
  %314 = trunc i32 %299 to i8, !mcsema_real_eip !121
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !121
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !121
  %317 = xor i1 %316, true, !mcsema_real_eip !121
  store i1 %317, i1* %PF, !mcsema_real_eip !121
  %318 = icmp ult i32 %299, %298, !mcsema_real_eip !121
  store i1 %318, i1* %CF, !mcsema_real_eip !121
  %319 = zext i32 %299 to i64, !mcsema_real_eip !121
  store i64 %319, i64* %XDX, !mcsema_real_eip !121
  %RBP_val.202 = load i64, i64* %XBP, !mcsema_real_eip !122
  %320 = add i64 %RBP_val.202, -84, !mcsema_real_eip !122
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !122
  %EDX.203 = bitcast i64* %XDX to i32*, !mcsema_real_eip !122
  %EDX_val.204 = load i32, i32* %EDX.203, !mcsema_real_eip !122
  %322 = ptrtoint i64* %321 to i64, !mcsema_real_eip !122
  %323 = inttoptr i64 %322 to i32*, !mcsema_real_eip !122
  store i32 %EDX_val.204, i32* %323, !mcsema_real_eip !122
  %RBP_val.205 = load i64, i64* %XBP, !mcsema_real_eip !123
  %324 = add i64 %RBP_val.205, -92, !mcsema_real_eip !123
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !123
  %326 = ptrtoint i64* %325 to i64, !mcsema_real_eip !123
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !123
  %328 = load i32, i32* %327, !mcsema_real_eip !123
  %329 = zext i32 %328 to i64, !mcsema_real_eip !123
  store i64 %329, i64* %XAX, !mcsema_real_eip !123
  %EAX.206 = bitcast i64* %XAX to i32*, !mcsema_real_eip !124
  %EAX_val.207 = load i32, i32* %EAX.206, !mcsema_real_eip !124
  %330 = add i32 1, %EAX_val.207, !mcsema_real_eip !124
  %331 = xor i32 %330, %EAX_val.207, !mcsema_real_eip !124
  %332 = xor i32 %331, 1, !mcsema_real_eip !124
  %333 = and i32 %332, 16, !mcsema_real_eip !124
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !124
  store i1 %334, i1* %AF, !mcsema_real_eip !124
  %335 = lshr i32 %330, 31, !mcsema_real_eip !124
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !124
  store i1 %336, i1* %SF, !mcsema_real_eip !124
  %337 = icmp eq i32 %330, 0, !mcsema_real_eip !124
  store i1 %337, i1* %ZF, !mcsema_real_eip !124
  %338 = xor i32 %EAX_val.207, 1, !mcsema_real_eip !124
  %339 = xor i32 %338, -1, !mcsema_real_eip !124
  %340 = xor i32 %EAX_val.207, %330, !mcsema_real_eip !124
  %341 = and i32 %339, %340, !mcsema_real_eip !124
  %342 = lshr i32 %341, 31, !mcsema_real_eip !124
  %343 = and i32 %342, 1, !mcsema_real_eip !124
  %344 = trunc i32 %343 to i1, !mcsema_real_eip !124
  store i1 %344, i1* %OF, !mcsema_real_eip !124
  %345 = trunc i32 %330 to i8, !mcsema_real_eip !124
  %346 = call i8 @llvm.ctpop.i8(i8 %345), !mcsema_real_eip !124
  %347 = trunc i8 %346 to i1, !mcsema_real_eip !124
  %348 = xor i1 %347, true, !mcsema_real_eip !124
  store i1 %348, i1* %PF, !mcsema_real_eip !124
  %349 = icmp ult i32 %330, %EAX_val.207, !mcsema_real_eip !124
  store i1 %349, i1* %CF, !mcsema_real_eip !124
  %350 = zext i32 %330 to i64, !mcsema_real_eip !124
  store i64 %350, i64* %XAX, !mcsema_real_eip !124
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !125
  %351 = add i64 %RBP_val.208, -92, !mcsema_real_eip !125
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !125
  %EAX.209 = bitcast i64* %XAX to i32*, !mcsema_real_eip !125
  %EAX_val.210 = load i32, i32* %EAX.209, !mcsema_real_eip !125
  %353 = ptrtoint i64* %352 to i64, !mcsema_real_eip !125
  %354 = inttoptr i64 %353 to i32*, !mcsema_real_eip !125
  store i32 %EAX_val.210, i32* %354, !mcsema_real_eip !125
  br label %block_0x8f, !mcsema_real_eip !126

block_0xba:                                       ; preds = %block_0x8f
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !127
  %355 = add i64 %RBP_val.187, -52, !mcsema_real_eip !127
  %356 = inttoptr i64 %355 to i64*, !mcsema_real_eip !127
  %357 = ptrtoint i64* %356 to i64, !mcsema_real_eip !127
  %358 = inttoptr i64 %357 to i32*, !mcsema_real_eip !127
  %359 = load i32, i32* %358, !mcsema_real_eip !127
  %360 = zext i32 %359 to i64, !mcsema_real_eip !127
  store i64 %360, i64* %XAX, !mcsema_real_eip !127
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !128
  %361 = add i64 %RBP_val.188, -84, !mcsema_real_eip !128
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !128
  %363 = ptrtoint i64* %362 to i64, !mcsema_real_eip !128
  %364 = inttoptr i64 %363 to i32*, !mcsema_real_eip !128
  %365 = load i32, i32* %364, !mcsema_real_eip !128
  %EAX.189 = bitcast i64* %XAX to i32*, !mcsema_real_eip !128
  %EAX_val.190 = load i32, i32* %EAX.189, !mcsema_real_eip !128
  %366 = add i32 %EAX_val.190, %365, !mcsema_real_eip !128
  %367 = xor i32 %366, %365, !mcsema_real_eip !128
  %368 = xor i32 %367, %EAX_val.190, !mcsema_real_eip !128
  %369 = and i32 %368, 16, !mcsema_real_eip !128
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !128
  store i1 %370, i1* %AF, !mcsema_real_eip !128
  %371 = lshr i32 %366, 31, !mcsema_real_eip !128
  %372 = trunc i32 %371 to i1, !mcsema_real_eip !128
  store i1 %372, i1* %SF, !mcsema_real_eip !128
  %373 = icmp eq i32 %366, 0, !mcsema_real_eip !128
  store i1 %373, i1* %ZF, !mcsema_real_eip !128
  %374 = xor i32 %365, %EAX_val.190, !mcsema_real_eip !128
  %375 = xor i32 %374, -1, !mcsema_real_eip !128
  %376 = xor i32 %365, %366, !mcsema_real_eip !128
  %377 = and i32 %375, %376, !mcsema_real_eip !128
  %378 = lshr i32 %377, 31, !mcsema_real_eip !128
  %379 = and i32 %378, 1, !mcsema_real_eip !128
  %380 = trunc i32 %379 to i1, !mcsema_real_eip !128
  store i1 %380, i1* %OF, !mcsema_real_eip !128
  %381 = trunc i32 %366 to i8, !mcsema_real_eip !128
  %382 = call i8 @llvm.ctpop.i8(i8 %381), !mcsema_real_eip !128
  %383 = trunc i8 %382 to i1, !mcsema_real_eip !128
  %384 = xor i1 %383, true, !mcsema_real_eip !128
  store i1 %384, i1* %PF, !mcsema_real_eip !128
  %385 = icmp ult i32 %366, %365, !mcsema_real_eip !128
  store i1 %385, i1* %CF, !mcsema_real_eip !128
  %386 = zext i32 %366 to i64, !mcsema_real_eip !128
  store i64 %386, i64* %XAX, !mcsema_real_eip !128
  %RBP_val.191 = load i64, i64* %XBP, !mcsema_real_eip !129
  %387 = add i64 %RBP_val.191, -84, !mcsema_real_eip !129
  %388 = inttoptr i64 %387 to i64*, !mcsema_real_eip !129
  %EAX.192 = bitcast i64* %XAX to i32*, !mcsema_real_eip !129
  %EAX_val.193 = load i32, i32* %EAX.192, !mcsema_real_eip !129
  %389 = ptrtoint i64* %388 to i64, !mcsema_real_eip !129
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !129
  store i32 %EAX_val.193, i32* %390, !mcsema_real_eip !129
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !130
  %391 = add i64 %RBP_val.194, -96, !mcsema_real_eip !130
  %392 = inttoptr i64 %391 to i64*, !mcsema_real_eip !130
  %393 = ptrtoint i64* %392 to i64, !mcsema_real_eip !130
  %394 = inttoptr i64 %393 to i32*, !mcsema_real_eip !130
  store i32 0, i32* %394, !mcsema_real_eip !130
  br label %block_0xca, !mcsema_real_eip !118

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !131
  %395 = add i64 %RBP_val.211, -96, !mcsema_real_eip !131
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !131
  %397 = ptrtoint i64* %396 to i64, !mcsema_real_eip !131
  %398 = inttoptr i64 %397 to i32*, !mcsema_real_eip !131
  %399 = load i32, i32* %398, !mcsema_real_eip !131
  %400 = zext i32 %399 to i64, !mcsema_real_eip !131
  store i64 %400, i64* %XAX, !mcsema_real_eip !131
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !132
  %401 = add i64 %RBP_val.212, -44, !mcsema_real_eip !132
  %402 = inttoptr i64 %401 to i64*, !mcsema_real_eip !132
  %EAX.213 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.214 = load i32, i32* %EAX.213, !mcsema_real_eip !132
  %403 = ptrtoint i64* %402 to i64, !mcsema_real_eip !132
  %404 = inttoptr i64 %403 to i32*, !mcsema_real_eip !132
  %405 = load i32, i32* %404, !mcsema_real_eip !132
  %406 = sub i32 %EAX_val.214, %405, !mcsema_real_eip !132
  %407 = xor i32 %406, %EAX_val.214, !mcsema_real_eip !132
  %408 = xor i32 %407, %405, !mcsema_real_eip !132
  %409 = and i32 %408, 16, !mcsema_real_eip !132
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !132
  store i1 %410, i1* %AF, !mcsema_real_eip !132
  %411 = trunc i32 %406 to i8, !mcsema_real_eip !132
  %412 = call i8 @llvm.ctpop.i8(i8 %411), !mcsema_real_eip !132
  %413 = trunc i8 %412 to i1, !mcsema_real_eip !132
  %414 = xor i1 %413, true, !mcsema_real_eip !132
  store i1 %414, i1* %PF, !mcsema_real_eip !132
  %415 = icmp eq i32 %406, 0, !mcsema_real_eip !132
  store i1 %415, i1* %ZF, !mcsema_real_eip !132
  %416 = lshr i32 %406, 31, !mcsema_real_eip !132
  %417 = trunc i32 %416 to i1, !mcsema_real_eip !132
  store i1 %417, i1* %SF, !mcsema_real_eip !132
  %418 = icmp ult i32 %EAX_val.214, %405, !mcsema_real_eip !132
  store i1 %418, i1* %CF, !mcsema_real_eip !132
  %419 = xor i32 %EAX_val.214, %405, !mcsema_real_eip !132
  %420 = xor i32 %EAX_val.214, %406, !mcsema_real_eip !132
  %421 = and i32 %419, %420, !mcsema_real_eip !132
  %422 = lshr i32 %421, 31, !mcsema_real_eip !132
  %423 = trunc i32 %422 to i1, !mcsema_real_eip !132
  store i1 %423, i1* %OF, !mcsema_real_eip !132
  %424 = load i1, i1* %OF, !mcsema_real_eip !133
  %425 = load i1, i1* %SF, !mcsema_real_eip !133
  %426 = icmp eq i1 %425, %424, !mcsema_real_eip !133
  br i1 %426, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !133

block_0xd6:                                       ; preds = %block_0xca
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !134
  %427 = add i64 %RBP_val.224, -64, !mcsema_real_eip !134
  %428 = inttoptr i64 %427 to i64*, !mcsema_real_eip !134
  %429 = load i64, i64* %428, !mcsema_real_eip !134
  store i64 %429, i64* %XAX, !mcsema_real_eip !134
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !135
  %430 = add i64 %RBP_val.225, -96, !mcsema_real_eip !135
  %431 = inttoptr i64 %430 to i64*, !mcsema_real_eip !135
  %432 = ptrtoint i64* %431 to i64, !mcsema_real_eip !135
  %433 = inttoptr i64 %432 to i32*, !mcsema_real_eip !135
  %434 = load i32, i32* %433, !mcsema_real_eip !135
  %435 = sext i32 %434 to i64, !mcsema_real_eip !135
  store i64 %435, i64* %XCX, !mcsema_real_eip !135
  %RAX_val.226 = load i64, i64* %XAX, !mcsema_real_eip !136
  %436 = add i64 %RAX_val.226, 0, !mcsema_real_eip !136
  %RCX_val.227 = load i64, i64* %XCX, !mcsema_real_eip !136
  %437 = mul i64 %RCX_val.227, 4, !mcsema_real_eip !136
  %438 = add i64 %436, %437, !mcsema_real_eip !136
  %439 = inttoptr i64 %438 to i64*, !mcsema_real_eip !136
  %440 = ptrtoint i64* %439 to i64, !mcsema_real_eip !136
  %441 = inttoptr i64 %440 to i32*, !mcsema_real_eip !136
  %442 = load i32, i32* %441, !mcsema_real_eip !136
  %443 = zext i32 %442 to i64, !mcsema_real_eip !136
  store i64 %443, i64* %XDX, !mcsema_real_eip !136
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !137
  %444 = add i64 %RBP_val.228, -84, !mcsema_real_eip !137
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !137
  %446 = ptrtoint i64* %445 to i64, !mcsema_real_eip !137
  %447 = inttoptr i64 %446 to i32*, !mcsema_real_eip !137
  %448 = load i32, i32* %447, !mcsema_real_eip !137
  %EDX.229 = bitcast i64* %XDX to i32*, !mcsema_real_eip !137
  %EDX_val.230 = load i32, i32* %EDX.229, !mcsema_real_eip !137
  %449 = add i32 %EDX_val.230, %448, !mcsema_real_eip !137
  %450 = xor i32 %449, %448, !mcsema_real_eip !137
  %451 = xor i32 %450, %EDX_val.230, !mcsema_real_eip !137
  %452 = and i32 %451, 16, !mcsema_real_eip !137
  %453 = icmp ne i32 %452, 0, !mcsema_real_eip !137
  store i1 %453, i1* %AF, !mcsema_real_eip !137
  %454 = lshr i32 %449, 31, !mcsema_real_eip !137
  %455 = trunc i32 %454 to i1, !mcsema_real_eip !137
  store i1 %455, i1* %SF, !mcsema_real_eip !137
  %456 = icmp eq i32 %449, 0, !mcsema_real_eip !137
  store i1 %456, i1* %ZF, !mcsema_real_eip !137
  %457 = xor i32 %448, %EDX_val.230, !mcsema_real_eip !137
  %458 = xor i32 %457, -1, !mcsema_real_eip !137
  %459 = xor i32 %448, %449, !mcsema_real_eip !137
  %460 = and i32 %458, %459, !mcsema_real_eip !137
  %461 = lshr i32 %460, 31, !mcsema_real_eip !137
  %462 = and i32 %461, 1, !mcsema_real_eip !137
  %463 = trunc i32 %462 to i1, !mcsema_real_eip !137
  store i1 %463, i1* %OF, !mcsema_real_eip !137
  %464 = trunc i32 %449 to i8, !mcsema_real_eip !137
  %465 = call i8 @llvm.ctpop.i8(i8 %464), !mcsema_real_eip !137
  %466 = trunc i8 %465 to i1, !mcsema_real_eip !137
  %467 = xor i1 %466, true, !mcsema_real_eip !137
  store i1 %467, i1* %PF, !mcsema_real_eip !137
  %468 = icmp ult i32 %449, %448, !mcsema_real_eip !137
  store i1 %468, i1* %CF, !mcsema_real_eip !137
  %469 = zext i32 %449 to i64, !mcsema_real_eip !137
  store i64 %469, i64* %XDX, !mcsema_real_eip !137
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !138
  %470 = add i64 %RBP_val.231, -84, !mcsema_real_eip !138
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !138
  %EDX.232 = bitcast i64* %XDX to i32*, !mcsema_real_eip !138
  %EDX_val.233 = load i32, i32* %EDX.232, !mcsema_real_eip !138
  %472 = ptrtoint i64* %471 to i64, !mcsema_real_eip !138
  %473 = inttoptr i64 %472 to i32*, !mcsema_real_eip !138
  store i32 %EDX_val.233, i32* %473, !mcsema_real_eip !138
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !139
  %474 = add i64 %RBP_val.234, -96, !mcsema_real_eip !139
  %475 = inttoptr i64 %474 to i64*, !mcsema_real_eip !139
  %476 = ptrtoint i64* %475 to i64, !mcsema_real_eip !139
  %477 = inttoptr i64 %476 to i32*, !mcsema_real_eip !139
  %478 = load i32, i32* %477, !mcsema_real_eip !139
  %479 = zext i32 %478 to i64, !mcsema_real_eip !139
  store i64 %479, i64* %XAX, !mcsema_real_eip !139
  %EAX.235 = bitcast i64* %XAX to i32*, !mcsema_real_eip !140
  %EAX_val.236 = load i32, i32* %EAX.235, !mcsema_real_eip !140
  %480 = add i32 1, %EAX_val.236, !mcsema_real_eip !140
  %481 = xor i32 %480, %EAX_val.236, !mcsema_real_eip !140
  %482 = xor i32 %481, 1, !mcsema_real_eip !140
  %483 = and i32 %482, 16, !mcsema_real_eip !140
  %484 = icmp ne i32 %483, 0, !mcsema_real_eip !140
  store i1 %484, i1* %AF, !mcsema_real_eip !140
  %485 = lshr i32 %480, 31, !mcsema_real_eip !140
  %486 = trunc i32 %485 to i1, !mcsema_real_eip !140
  store i1 %486, i1* %SF, !mcsema_real_eip !140
  %487 = icmp eq i32 %480, 0, !mcsema_real_eip !140
  store i1 %487, i1* %ZF, !mcsema_real_eip !140
  %488 = xor i32 %EAX_val.236, 1, !mcsema_real_eip !140
  %489 = xor i32 %488, -1, !mcsema_real_eip !140
  %490 = xor i32 %EAX_val.236, %480, !mcsema_real_eip !140
  %491 = and i32 %489, %490, !mcsema_real_eip !140
  %492 = lshr i32 %491, 31, !mcsema_real_eip !140
  %493 = and i32 %492, 1, !mcsema_real_eip !140
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !140
  store i1 %494, i1* %OF, !mcsema_real_eip !140
  %495 = trunc i32 %480 to i8, !mcsema_real_eip !140
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !140
  %497 = trunc i8 %496 to i1, !mcsema_real_eip !140
  %498 = xor i1 %497, true, !mcsema_real_eip !140
  store i1 %498, i1* %PF, !mcsema_real_eip !140
  %499 = icmp ult i32 %480, %EAX_val.236, !mcsema_real_eip !140
  store i1 %499, i1* %CF, !mcsema_real_eip !140
  %500 = zext i32 %480 to i64, !mcsema_real_eip !140
  store i64 %500, i64* %XAX, !mcsema_real_eip !140
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !141
  %501 = add i64 %RBP_val.237, -96, !mcsema_real_eip !141
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !141
  %EAX.238 = bitcast i64* %XAX to i32*, !mcsema_real_eip !141
  %EAX_val.239 = load i32, i32* %EAX.238, !mcsema_real_eip !141
  %503 = ptrtoint i64* %502 to i64, !mcsema_real_eip !141
  %504 = inttoptr i64 %503 to i32*, !mcsema_real_eip !141
  store i32 %EAX_val.239, i32* %504, !mcsema_real_eip !141
  br label %block_0xca, !mcsema_real_eip !142

block_0xf5:                                       ; preds = %block_0xca
  %RBP_val.215 = load i64, i64* %XBP, !mcsema_real_eip !143
  %505 = add i64 %RBP_val.215, -72, !mcsema_real_eip !143
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !143
  %507 = load i64, i64* %506, !mcsema_real_eip !143
  store i64 %507, i64* %XAX, !mcsema_real_eip !143
  %RAX_val.216 = load i64, i64* %XAX, !mcsema_real_eip !144
  %508 = add i64 %RAX_val.216, 0, !mcsema_real_eip !144
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !144
  %510 = ptrtoint i64* %509 to i64, !mcsema_real_eip !144
  %511 = inttoptr i64 %510 to i32*, !mcsema_real_eip !144
  %512 = load i32, i32* %511, !mcsema_real_eip !144
  %513 = zext i32 %512 to i64, !mcsema_real_eip !144
  store i64 %513, i64* %XCX, !mcsema_real_eip !144
  %RBP_val.217 = load i64, i64* %XBP, !mcsema_real_eip !145
  %514 = add i64 %RBP_val.217, -84, !mcsema_real_eip !145
  %515 = inttoptr i64 %514 to i64*, !mcsema_real_eip !145
  %516 = ptrtoint i64* %515 to i64, !mcsema_real_eip !145
  %517 = inttoptr i64 %516 to i32*, !mcsema_real_eip !145
  %518 = load i32, i32* %517, !mcsema_real_eip !145
  %ECX.218 = bitcast i64* %XCX to i32*, !mcsema_real_eip !145
  %ECX_val.219 = load i32, i32* %ECX.218, !mcsema_real_eip !145
  %519 = add i32 %ECX_val.219, %518, !mcsema_real_eip !145
  %520 = xor i32 %519, %518, !mcsema_real_eip !145
  %521 = xor i32 %520, %ECX_val.219, !mcsema_real_eip !145
  %522 = and i32 %521, 16, !mcsema_real_eip !145
  %523 = icmp ne i32 %522, 0, !mcsema_real_eip !145
  store i1 %523, i1* %AF, !mcsema_real_eip !145
  %524 = lshr i32 %519, 31, !mcsema_real_eip !145
  %525 = trunc i32 %524 to i1, !mcsema_real_eip !145
  store i1 %525, i1* %SF, !mcsema_real_eip !145
  %526 = icmp eq i32 %519, 0, !mcsema_real_eip !145
  store i1 %526, i1* %ZF, !mcsema_real_eip !145
  %527 = xor i32 %518, %ECX_val.219, !mcsema_real_eip !145
  %528 = xor i32 %527, -1, !mcsema_real_eip !145
  %529 = xor i32 %518, %519, !mcsema_real_eip !145
  %530 = and i32 %528, %529, !mcsema_real_eip !145
  %531 = lshr i32 %530, 31, !mcsema_real_eip !145
  %532 = and i32 %531, 1, !mcsema_real_eip !145
  %533 = trunc i32 %532 to i1, !mcsema_real_eip !145
  store i1 %533, i1* %OF, !mcsema_real_eip !145
  %534 = trunc i32 %519 to i8, !mcsema_real_eip !145
  %535 = call i8 @llvm.ctpop.i8(i8 %534), !mcsema_real_eip !145
  %536 = trunc i8 %535 to i1, !mcsema_real_eip !145
  %537 = xor i1 %536, true, !mcsema_real_eip !145
  store i1 %537, i1* %PF, !mcsema_real_eip !145
  %538 = icmp ult i32 %519, %518, !mcsema_real_eip !145
  store i1 %538, i1* %CF, !mcsema_real_eip !145
  %539 = zext i32 %519 to i64, !mcsema_real_eip !145
  store i64 %539, i64* %XCX, !mcsema_real_eip !145
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !146
  %540 = add i64 %RBP_val.220, -84, !mcsema_real_eip !146
  %541 = inttoptr i64 %540 to i64*, !mcsema_real_eip !146
  %ECX.221 = bitcast i64* %XCX to i32*, !mcsema_real_eip !146
  %ECX_val.222 = load i32, i32* %ECX.221, !mcsema_real_eip !146
  %542 = ptrtoint i64* %541 to i64, !mcsema_real_eip !146
  %543 = inttoptr i64 %542 to i32*, !mcsema_real_eip !146
  store i32 %ECX_val.222, i32* %543, !mcsema_real_eip !146
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !147
  %544 = add i64 %RBP_val.223, -100, !mcsema_real_eip !147
  %545 = inttoptr i64 %544 to i64*, !mcsema_real_eip !147
  %546 = ptrtoint i64* %545 to i64, !mcsema_real_eip !147
  %547 = inttoptr i64 %546 to i32*, !mcsema_real_eip !147
  store i32 0, i32* %547, !mcsema_real_eip !147
  br label %block_0x108, !mcsema_real_eip !134

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !148
  %548 = add i64 %RBP_val.240, -100, !mcsema_real_eip !148
  %549 = inttoptr i64 %548 to i64*, !mcsema_real_eip !148
  %550 = ptrtoint i64* %549 to i64, !mcsema_real_eip !148
  %551 = inttoptr i64 %550 to i32*, !mcsema_real_eip !148
  %552 = load i32, i32* %551, !mcsema_real_eip !148
  %553 = zext i32 %552 to i64, !mcsema_real_eip !148
  store i64 %553, i64* %XAX, !mcsema_real_eip !148
  %RBP_val.241 = load i64, i64* %XBP, !mcsema_real_eip !149
  %554 = add i64 %RBP_val.241, -48, !mcsema_real_eip !149
  %555 = inttoptr i64 %554 to i64*, !mcsema_real_eip !149
  %EAX.242 = bitcast i64* %XAX to i32*, !mcsema_real_eip !149
  %EAX_val.243 = load i32, i32* %EAX.242, !mcsema_real_eip !149
  %556 = ptrtoint i64* %555 to i64, !mcsema_real_eip !149
  %557 = inttoptr i64 %556 to i32*, !mcsema_real_eip !149
  %558 = load i32, i32* %557, !mcsema_real_eip !149
  %559 = sub i32 %EAX_val.243, %558, !mcsema_real_eip !149
  %560 = xor i32 %559, %EAX_val.243, !mcsema_real_eip !149
  %561 = xor i32 %560, %558, !mcsema_real_eip !149
  %562 = and i32 %561, 16, !mcsema_real_eip !149
  %563 = icmp ne i32 %562, 0, !mcsema_real_eip !149
  store i1 %563, i1* %AF, !mcsema_real_eip !149
  %564 = trunc i32 %559 to i8, !mcsema_real_eip !149
  %565 = call i8 @llvm.ctpop.i8(i8 %564), !mcsema_real_eip !149
  %566 = trunc i8 %565 to i1, !mcsema_real_eip !149
  %567 = xor i1 %566, true, !mcsema_real_eip !149
  store i1 %567, i1* %PF, !mcsema_real_eip !149
  %568 = icmp eq i32 %559, 0, !mcsema_real_eip !149
  store i1 %568, i1* %ZF, !mcsema_real_eip !149
  %569 = lshr i32 %559, 31, !mcsema_real_eip !149
  %570 = trunc i32 %569 to i1, !mcsema_real_eip !149
  store i1 %570, i1* %SF, !mcsema_real_eip !149
  %571 = icmp ult i32 %EAX_val.243, %558, !mcsema_real_eip !149
  store i1 %571, i1* %CF, !mcsema_real_eip !149
  %572 = xor i32 %EAX_val.243, %558, !mcsema_real_eip !149
  %573 = xor i32 %EAX_val.243, %559, !mcsema_real_eip !149
  %574 = and i32 %572, %573, !mcsema_real_eip !149
  %575 = lshr i32 %574, 31, !mcsema_real_eip !149
  %576 = trunc i32 %575 to i1, !mcsema_real_eip !149
  store i1 %576, i1* %OF, !mcsema_real_eip !149
  %577 = load i1, i1* %OF, !mcsema_real_eip !150
  %578 = load i1, i1* %SF, !mcsema_real_eip !150
  %579 = icmp eq i1 %578, %577, !mcsema_real_eip !150
  br i1 %579, label %block_0x133, label %block_0x114, !mcsema_real_eip !150

block_0x114:                                      ; preds = %block_0x108
  %RBP_val.248 = load i64, i64* %XBP, !mcsema_real_eip !151
  %580 = add i64 %RBP_val.248, -80, !mcsema_real_eip !151
  %581 = inttoptr i64 %580 to i64*, !mcsema_real_eip !151
  %582 = load i64, i64* %581, !mcsema_real_eip !151
  store i64 %582, i64* %XAX, !mcsema_real_eip !151
  %RBP_val.249 = load i64, i64* %XBP, !mcsema_real_eip !152
  %583 = add i64 %RBP_val.249, -100, !mcsema_real_eip !152
  %584 = inttoptr i64 %583 to i64*, !mcsema_real_eip !152
  %585 = ptrtoint i64* %584 to i64, !mcsema_real_eip !152
  %586 = inttoptr i64 %585 to i32*, !mcsema_real_eip !152
  %587 = load i32, i32* %586, !mcsema_real_eip !152
  %588 = sext i32 %587 to i64, !mcsema_real_eip !152
  store i64 %588, i64* %XCX, !mcsema_real_eip !152
  %RAX_val.250 = load i64, i64* %XAX, !mcsema_real_eip !153
  %589 = add i64 %RAX_val.250, 0, !mcsema_real_eip !153
  %RCX_val.251 = load i64, i64* %XCX, !mcsema_real_eip !153
  %590 = mul i64 %RCX_val.251, 4, !mcsema_real_eip !153
  %591 = add i64 %589, %590, !mcsema_real_eip !153
  %592 = inttoptr i64 %591 to i64*, !mcsema_real_eip !153
  %593 = ptrtoint i64* %592 to i64, !mcsema_real_eip !153
  %594 = inttoptr i64 %593 to i32*, !mcsema_real_eip !153
  %595 = load i32, i32* %594, !mcsema_real_eip !153
  %596 = zext i32 %595 to i64, !mcsema_real_eip !153
  store i64 %596, i64* %XDX, !mcsema_real_eip !153
  %RBP_val.252 = load i64, i64* %XBP, !mcsema_real_eip !154
  %597 = add i64 %RBP_val.252, -84, !mcsema_real_eip !154
  %598 = inttoptr i64 %597 to i64*, !mcsema_real_eip !154
  %599 = ptrtoint i64* %598 to i64, !mcsema_real_eip !154
  %600 = inttoptr i64 %599 to i32*, !mcsema_real_eip !154
  %601 = load i32, i32* %600, !mcsema_real_eip !154
  %EDX.253 = bitcast i64* %XDX to i32*, !mcsema_real_eip !154
  %EDX_val.254 = load i32, i32* %EDX.253, !mcsema_real_eip !154
  %602 = add i32 %EDX_val.254, %601, !mcsema_real_eip !154
  %603 = xor i32 %602, %601, !mcsema_real_eip !154
  %604 = xor i32 %603, %EDX_val.254, !mcsema_real_eip !154
  %605 = and i32 %604, 16, !mcsema_real_eip !154
  %606 = icmp ne i32 %605, 0, !mcsema_real_eip !154
  store i1 %606, i1* %AF, !mcsema_real_eip !154
  %607 = lshr i32 %602, 31, !mcsema_real_eip !154
  %608 = trunc i32 %607 to i1, !mcsema_real_eip !154
  store i1 %608, i1* %SF, !mcsema_real_eip !154
  %609 = icmp eq i32 %602, 0, !mcsema_real_eip !154
  store i1 %609, i1* %ZF, !mcsema_real_eip !154
  %610 = xor i32 %601, %EDX_val.254, !mcsema_real_eip !154
  %611 = xor i32 %610, -1, !mcsema_real_eip !154
  %612 = xor i32 %601, %602, !mcsema_real_eip !154
  %613 = and i32 %611, %612, !mcsema_real_eip !154
  %614 = lshr i32 %613, 31, !mcsema_real_eip !154
  %615 = and i32 %614, 1, !mcsema_real_eip !154
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !154
  store i1 %616, i1* %OF, !mcsema_real_eip !154
  %617 = trunc i32 %602 to i8, !mcsema_real_eip !154
  %618 = call i8 @llvm.ctpop.i8(i8 %617), !mcsema_real_eip !154
  %619 = trunc i8 %618 to i1, !mcsema_real_eip !154
  %620 = xor i1 %619, true, !mcsema_real_eip !154
  store i1 %620, i1* %PF, !mcsema_real_eip !154
  %621 = icmp ult i32 %602, %601, !mcsema_real_eip !154
  store i1 %621, i1* %CF, !mcsema_real_eip !154
  %622 = zext i32 %602 to i64, !mcsema_real_eip !154
  store i64 %622, i64* %XDX, !mcsema_real_eip !154
  %RBP_val.255 = load i64, i64* %XBP, !mcsema_real_eip !155
  %623 = add i64 %RBP_val.255, -84, !mcsema_real_eip !155
  %624 = inttoptr i64 %623 to i64*, !mcsema_real_eip !155
  %EDX.256 = bitcast i64* %XDX to i32*, !mcsema_real_eip !155
  %EDX_val.257 = load i32, i32* %EDX.256, !mcsema_real_eip !155
  %625 = ptrtoint i64* %624 to i64, !mcsema_real_eip !155
  %626 = inttoptr i64 %625 to i32*, !mcsema_real_eip !155
  store i32 %EDX_val.257, i32* %626, !mcsema_real_eip !155
  %RBP_val.258 = load i64, i64* %XBP, !mcsema_real_eip !156
  %627 = add i64 %RBP_val.258, -100, !mcsema_real_eip !156
  %628 = inttoptr i64 %627 to i64*, !mcsema_real_eip !156
  %629 = ptrtoint i64* %628 to i64, !mcsema_real_eip !156
  %630 = inttoptr i64 %629 to i32*, !mcsema_real_eip !156
  %631 = load i32, i32* %630, !mcsema_real_eip !156
  %632 = zext i32 %631 to i64, !mcsema_real_eip !156
  store i64 %632, i64* %XAX, !mcsema_real_eip !156
  %EAX.259 = bitcast i64* %XAX to i32*, !mcsema_real_eip !157
  %EAX_val.260 = load i32, i32* %EAX.259, !mcsema_real_eip !157
  %633 = add i32 1, %EAX_val.260, !mcsema_real_eip !157
  %634 = xor i32 %633, %EAX_val.260, !mcsema_real_eip !157
  %635 = xor i32 %634, 1, !mcsema_real_eip !157
  %636 = and i32 %635, 16, !mcsema_real_eip !157
  %637 = icmp ne i32 %636, 0, !mcsema_real_eip !157
  store i1 %637, i1* %AF, !mcsema_real_eip !157
  %638 = lshr i32 %633, 31, !mcsema_real_eip !157
  %639 = trunc i32 %638 to i1, !mcsema_real_eip !157
  store i1 %639, i1* %SF, !mcsema_real_eip !157
  %640 = icmp eq i32 %633, 0, !mcsema_real_eip !157
  store i1 %640, i1* %ZF, !mcsema_real_eip !157
  %641 = xor i32 %EAX_val.260, 1, !mcsema_real_eip !157
  %642 = xor i32 %641, -1, !mcsema_real_eip !157
  %643 = xor i32 %EAX_val.260, %633, !mcsema_real_eip !157
  %644 = and i32 %642, %643, !mcsema_real_eip !157
  %645 = lshr i32 %644, 31, !mcsema_real_eip !157
  %646 = and i32 %645, 1, !mcsema_real_eip !157
  %647 = trunc i32 %646 to i1, !mcsema_real_eip !157
  store i1 %647, i1* %OF, !mcsema_real_eip !157
  %648 = trunc i32 %633 to i8, !mcsema_real_eip !157
  %649 = call i8 @llvm.ctpop.i8(i8 %648), !mcsema_real_eip !157
  %650 = trunc i8 %649 to i1, !mcsema_real_eip !157
  %651 = xor i1 %650, true, !mcsema_real_eip !157
  store i1 %651, i1* %PF, !mcsema_real_eip !157
  %652 = icmp ult i32 %633, %EAX_val.260, !mcsema_real_eip !157
  store i1 %652, i1* %CF, !mcsema_real_eip !157
  %653 = zext i32 %633 to i64, !mcsema_real_eip !157
  store i64 %653, i64* %XAX, !mcsema_real_eip !157
  %RBP_val.261 = load i64, i64* %XBP, !mcsema_real_eip !158
  %654 = add i64 %RBP_val.261, -100, !mcsema_real_eip !158
  %655 = inttoptr i64 %654 to i64*, !mcsema_real_eip !158
  %EAX.262 = bitcast i64* %XAX to i32*, !mcsema_real_eip !158
  %EAX_val.263 = load i32, i32* %EAX.262, !mcsema_real_eip !158
  %656 = ptrtoint i64* %655 to i64, !mcsema_real_eip !158
  %657 = inttoptr i64 %656 to i32*, !mcsema_real_eip !158
  store i32 %EAX_val.263, i32* %657, !mcsema_real_eip !158
  br label %block_0x108, !mcsema_real_eip !159

block_0x133:                                      ; preds = %block_0x108
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !160
  %658 = add i64 %RBP_val.244, -84, !mcsema_real_eip !160
  %659 = inttoptr i64 %658 to i64*, !mcsema_real_eip !160
  %660 = ptrtoint i64* %659 to i64, !mcsema_real_eip !160
  %661 = inttoptr i64 %660 to i32*, !mcsema_real_eip !160
  %662 = load i32, i32* %661, !mcsema_real_eip !160
  %663 = zext i32 %662 to i64, !mcsema_real_eip !160
  store i64 %663, i64* %XAX, !mcsema_real_eip !160
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !161
  %664 = inttoptr i64 %RSP_val.245 to i64*, !mcsema_real_eip !161
  %665 = load i64, i64* %664, !mcsema_real_eip !161
  store i64 %665, i64* %XBX, !mcsema_real_eip !161
  %666 = add i64 %RSP_val.245, 8, !mcsema_real_eip !161
  store i64 %666, i64* %XSP, !mcsema_real_eip !161
  %RSP_val.246 = load i64, i64* %XSP, !mcsema_real_eip !162
  %667 = inttoptr i64 %RSP_val.246 to i64*, !mcsema_real_eip !162
  %668 = load i64, i64* %667, !mcsema_real_eip !162
  store i64 %668, i64* %XBP, !mcsema_real_eip !162
  %669 = add i64 %RSP_val.246, 8, !mcsema_real_eip !162
  store i64 %669, i64* %XSP, !mcsema_real_eip !162
  %RSP_val.247 = load i64, i64* %XSP, !mcsema_real_eip !163
  %670 = add i64 %RSP_val.247, 8, !mcsema_real_eip !163
  %671 = inttoptr i64 %RSP_val.247 to i64*, !mcsema_real_eip !163
  %672 = load i64, i64* %671, !mcsema_real_eip !163
  store i64 %672, i64* %XIP, !mcsema_real_eip !163
  store i64 %670, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
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
!2 = !{i64 320}
!3 = !{i64 321}
!4 = !{i64 324}
!5 = !{i64 326}
!6 = !{i64 327}
!7 = !{i64 334}
!8 = !{i64 341}
!9 = !{i64 348}
!10 = !{i64 355}
!11 = !{i64 359}
!12 = !{i64 365}
!13 = !{i64 368}
!14 = !{i64 371}
!15 = !{i64 375}
!16 = !{i64 379}
!17 = !{i64 382}
!18 = !{i64 385}
!19 = !{i64 388}
!20 = !{i64 393}
!21 = !{i64 398}
!22 = !{i64 400}
!23 = !{i64 404}
!24 = !{i64 408}
!25 = !{i64 413}
!26 = !{i64 417}
!27 = !{i64 424}
!28 = !{i64 428}
!29 = !{i64 434}
!30 = !{i64 437}
!31 = !{i64 440}
!32 = !{i64 444}
!33 = !{i64 448}
!34 = !{i64 451}
!35 = !{i64 454}
!36 = !{i64 457}
!37 = !{i64 460}
!38 = !{i64 465}
!39 = !{i64 470}
!40 = !{i64 474}
!41 = !{i64 477}
!42 = !{i64 481}
!43 = !{i64 485}
!44 = !{i64 489}
!45 = !{i64 493}
!46 = !{i64 497}
!47 = !{i64 501}
!48 = !{i64 504}
!49 = !{i64 508}
!50 = !{i64 512}
!51 = !{i64 515}
!52 = !{i64 519}
!53 = !{i64 522}
!54 = !{i64 526}
!55 = !{i64 529}
!56 = !{i64 532}
!57 = !{i64 535}
!58 = !{i64 539}
!59 = !{i64 544}
!60 = !{i64 548}
!61 = !{i64 553}
!62 = !{i64 558}
!63 = !{i64 563}
!64 = !{i64 573}
!65 = !{i64 576}
!66 = !{i64 579}
!67 = !{i64 581}
!68 = !{i64 586}
!69 = !{i64 589}
!70 = !{i64 595}
!71 = !{i64 597}
!72 = !{i64 604}
!73 = !{i64 605}
!74 = !{i64 607}
!75 = !{i64 608}
!76 = !{i64 0}
!77 = !{i64 1}
!78 = !{i64 4}
!79 = !{i64 5}
!80 = !{i64 9}
!81 = !{i64 13}
!82 = !{i64 17}
!83 = !{i64 20}
!84 = !{i64 23}
!85 = !{i64 27}
!86 = !{i64 31}
!87 = !{i64 35}
!88 = !{i64 39}
!89 = !{i64 43}
!90 = !{i64 46}
!91 = !{i64 50}
!92 = !{i64 54}
!93 = !{i64 58}
!94 = !{i64 65}
!95 = !{i64 68}
!96 = !{i64 71}
!97 = !{i64 74}
!98 = !{i64 81}
!99 = !{i64 84}
!100 = !{i64 87}
!101 = !{i64 93}
!102 = !{i64 97}
!103 = !{i64 101}
!104 = !{i64 104}
!105 = !{i64 107}
!106 = !{i64 110}
!107 = !{i64 113}
!108 = !{i64 116}
!109 = !{i64 119}
!110 = !{i64 124}
!111 = !{i64 128}
!112 = !{i64 130}
!113 = !{i64 133}
!114 = !{i64 136}
!115 = !{i64 143}
!116 = !{i64 146}
!117 = !{i64 149}
!118 = !{i64 155}
!119 = !{i64 159}
!120 = !{i64 163}
!121 = !{i64 166}
!122 = !{i64 169}
!123 = !{i64 172}
!124 = !{i64 175}
!125 = !{i64 178}
!126 = !{i64 181}
!127 = !{i64 186}
!128 = !{i64 189}
!129 = !{i64 192}
!130 = !{i64 195}
!131 = !{i64 202}
!132 = !{i64 205}
!133 = !{i64 208}
!134 = !{i64 214}
!135 = !{i64 218}
!136 = !{i64 222}
!137 = !{i64 225}
!138 = !{i64 228}
!139 = !{i64 231}
!140 = !{i64 234}
!141 = !{i64 237}
!142 = !{i64 240}
!143 = !{i64 245}
!144 = !{i64 249}
!145 = !{i64 251}
!146 = !{i64 254}
!147 = !{i64 257}
!148 = !{i64 264}
!149 = !{i64 267}
!150 = !{i64 270}
!151 = !{i64 276}
!152 = !{i64 280}
!153 = !{i64 284}
!154 = !{i64 287}
!155 = !{i64 290}
!156 = !{i64 293}
!157 = !{i64 296}
!158 = !{i64 299}
!159 = !{i64 302}
!160 = !{i64 307}
!161 = !{i64 310}
!162 = !{i64 311}
!163 = !{i64 312}
