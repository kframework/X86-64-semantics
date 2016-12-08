; ModuleID = 'Output/test_28.clang.bc'
source_filename = "Output/test_28.clang.bc"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x80 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
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
  br label %block_0x50, !mcsema_real_eip !2

block_0x50:                                       ; preds = %entry
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
  %22 = zext i32 2 to i64, !mcsema_real_eip !5
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
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !8
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !8
  %29 = xor i32 %EAX_val.7, %EAX_val.9, !mcsema_real_eip !8
  store i1 false, i1* %CF, !mcsema_real_eip !8
  store i1 false, i1* %OF, !mcsema_real_eip !8
  %30 = lshr i32 %29, 31, !mcsema_real_eip !8
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !8
  store i1 %31, i1* %SF, !mcsema_real_eip !8
  %32 = icmp eq i32 %29, 0, !mcsema_real_eip !8
  store i1 %32, i1* %ZF, !mcsema_real_eip !8
  %33 = trunc i32 %29 to i8, !mcsema_real_eip !8
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !8
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !8
  %36 = xor i1 %35, true, !mcsema_real_eip !8
  store i1 %36, i1* %PF, !mcsema_real_eip !8
  store i1 undef, i1* %AF, !mcsema_real_eip !8
  %37 = zext i32 %29 to i64, !mcsema_real_eip !8
  store i64 %37, i64* %XAX, !mcsema_real_eip !8
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !9
  %38 = add i64 16, %RSP_val.10, !mcsema_real_eip !9
  %39 = xor i64 %38, %RSP_val.10, !mcsema_real_eip !9
  %40 = xor i64 %39, 16, !mcsema_real_eip !9
  %41 = and i64 %40, 16, !mcsema_real_eip !9
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !9
  store i1 %42, i1* %AF, !mcsema_real_eip !9
  %43 = lshr i64 %38, 63, !mcsema_real_eip !9
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !9
  store i1 %44, i1* %SF, !mcsema_real_eip !9
  %45 = icmp eq i64 %38, 0, !mcsema_real_eip !9
  store i1 %45, i1* %ZF, !mcsema_real_eip !9
  %46 = xor i64 %RSP_val.10, 16, !mcsema_real_eip !9
  %47 = xor i64 %46, -1, !mcsema_real_eip !9
  %48 = xor i64 %RSP_val.10, %38, !mcsema_real_eip !9
  %49 = and i64 %47, %48, !mcsema_real_eip !9
  %50 = lshr i64 %49, 63, !mcsema_real_eip !9
  %51 = and i64 %50, 1, !mcsema_real_eip !9
  %52 = trunc i64 %51 to i1, !mcsema_real_eip !9
  store i1 %52, i1* %OF, !mcsema_real_eip !9
  %53 = trunc i64 %38 to i8, !mcsema_real_eip !9
  %54 = call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !9
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !9
  %56 = xor i1 %55, true, !mcsema_real_eip !9
  store i1 %56, i1* %PF, !mcsema_real_eip !9
  %57 = icmp ult i64 %38, %RSP_val.10, !mcsema_real_eip !9
  store i1 %57, i1* %CF, !mcsema_real_eip !9
  store i64 %38, i64* %XSP, !mcsema_real_eip !9
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !10
  %58 = inttoptr i64 %RSP_val.11 to i64*, !mcsema_real_eip !10
  %59 = load i64, i64* %58, !mcsema_real_eip !10
  store i64 %59, i64* %XBP, !mcsema_real_eip !10
  %60 = add i64 %RSP_val.11, 8, !mcsema_real_eip !10
  store i64 %60, i64* %XSP, !mcsema_real_eip !10
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !11
  %61 = add i64 %RSP_val.12, 8, !mcsema_real_eip !11
  %62 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !11
  %63 = load i64, i64* %62, !mcsema_real_eip !11
  store i64 %63, i64* %XIP, !mcsema_real_eip !11
  store i64 %61, i64* %XSP, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !12
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !12
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !12
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !12
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !12
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !12
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !12
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !12
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !12
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !12
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !12
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !12
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !12
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !12
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !12
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !12
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !12
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !12
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !12
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !12
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !12
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !12
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !12
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !12
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !12
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !12
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !12
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !12
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !12
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !12
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !12
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !12
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !12
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !12
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !12
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !12
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !12
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !12
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !12
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !12
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !12
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !12
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !12
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !12
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !12
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !12
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !12
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !12
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !12
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !12
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !12
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !12
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !12
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !12
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !12
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !12
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !12
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !12
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !12
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !12
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !12
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !12
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !12
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !12
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !12
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !12
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !12
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !12
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !12
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !12
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !12
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !12
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !12
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !12
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !12
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !12
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !12
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !12
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !12
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !12
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !12
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !12
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !12
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !12
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !12
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !12
  br label %block_0x0, !mcsema_real_eip !12

block_0x0:                                        ; preds = %entry
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !12
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !12
  %1 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !12
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !12
  store i64 %RBP_val.13, i64* %2, !mcsema_real_eip !12
  store i64 %1, i64* %XSP, !mcsema_real_eip !12
  %RSP_val.15 = load i64, i64* %XSP, !mcsema_real_eip !13
  store i64 %RSP_val.15, i64* %XBP, !mcsema_real_eip !13
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !14
  %3 = sext i8 16 to i64, !mcsema_real_eip !14
  %4 = sub i64 %RSP_val.16, %3, !mcsema_real_eip !14
  %5 = xor i64 %4, %RSP_val.16, !mcsema_real_eip !14
  %6 = xor i64 %5, %3, !mcsema_real_eip !14
  %7 = and i64 %6, 16, !mcsema_real_eip !14
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !14
  store i1 %8, i1* %AF, !mcsema_real_eip !14
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !14
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !14
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !14
  %12 = xor i1 %11, true, !mcsema_real_eip !14
  store i1 %12, i1* %PF, !mcsema_real_eip !14
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !14
  store i1 %13, i1* %ZF, !mcsema_real_eip !14
  %14 = lshr i64 %4, 63, !mcsema_real_eip !14
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !14
  store i1 %15, i1* %SF, !mcsema_real_eip !14
  %16 = icmp ult i64 %RSP_val.16, %3, !mcsema_real_eip !14
  store i1 %16, i1* %CF, !mcsema_real_eip !14
  %17 = xor i64 %RSP_val.16, %3, !mcsema_real_eip !14
  %18 = xor i64 %RSP_val.16, %4, !mcsema_real_eip !14
  %19 = and i64 %17, %18, !mcsema_real_eip !14
  %20 = lshr i64 %19, 63, !mcsema_real_eip !14
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !14
  store i1 %21, i1* %OF, !mcsema_real_eip !14
  store i64 %4, i64* %XSP, !mcsema_real_eip !14
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !15
  %22 = add i64 %RBP_val.17, -4, !mcsema_real_eip !15
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !15
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.19 = load i32, i32* %EDI.18, !mcsema_real_eip !15
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !15
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.19, i32* %25, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !16
  %26 = add i64 %RBP_val.20, -8, !mcsema_real_eip !16
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !16
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !16
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !16
  store i32 0, i32* %29, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x12:                                       ; preds = %block_0x1e, %block_0x0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !17
  %30 = add i64 %RBP_val.21, -8, !mcsema_real_eip !17
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !17
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !17
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !17
  %34 = load i32, i32* %33, !mcsema_real_eip !17
  %35 = zext i32 %34 to i64, !mcsema_real_eip !17
  store i64 %35, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !18
  %36 = add i64 %RBP_val.22, -4, !mcsema_real_eip !18
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !18
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !18
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !18
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !18
  %40 = load i32, i32* %39, !mcsema_real_eip !18
  %41 = sub i32 %EAX_val.24, %40, !mcsema_real_eip !18
  %42 = xor i32 %41, %EAX_val.24, !mcsema_real_eip !18
  %43 = xor i32 %42, %40, !mcsema_real_eip !18
  %44 = and i32 %43, 16, !mcsema_real_eip !18
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !18
  store i1 %45, i1* %AF, !mcsema_real_eip !18
  %46 = trunc i32 %41 to i8, !mcsema_real_eip !18
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !18
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !18
  %49 = xor i1 %48, true, !mcsema_real_eip !18
  store i1 %49, i1* %PF, !mcsema_real_eip !18
  %50 = icmp eq i32 %41, 0, !mcsema_real_eip !18
  store i1 %50, i1* %ZF, !mcsema_real_eip !18
  %51 = lshr i32 %41, 31, !mcsema_real_eip !18
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !18
  store i1 %52, i1* %SF, !mcsema_real_eip !18
  %53 = icmp ult i32 %EAX_val.24, %40, !mcsema_real_eip !18
  store i1 %53, i1* %CF, !mcsema_real_eip !18
  %54 = xor i32 %EAX_val.24, %40, !mcsema_real_eip !18
  %55 = xor i32 %EAX_val.24, %41, !mcsema_real_eip !18
  %56 = and i32 %54, %55, !mcsema_real_eip !18
  %57 = lshr i32 %56, 31, !mcsema_real_eip !18
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !18
  store i1 %58, i1* %OF, !mcsema_real_eip !18
  %59 = load i1, i1* %OF, !mcsema_real_eip !19
  %60 = load i1, i1* %SF, !mcsema_real_eip !19
  %61 = icmp eq i1 %60, %59, !mcsema_real_eip !19
  br i1 %61, label %block_0x40, label %block_0x1e, !mcsema_real_eip !19

block_0x1e:                                       ; preds = %block_0x12
  %62 = getelementptr %0, %0* @data_0x71, i64 0, i32 0, !mcsema_real_eip !20
  %63 = ptrtoint [13 x i8]* %62 to i64, !mcsema_real_eip !20
  %64 = add i64 %63, 0, !mcsema_real_eip !20
  store i64 %64, i64* %XDI, !mcsema_real_eip !20
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.28, !mcsema_real_eip !21
  %RDI_val.29 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !22
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !22
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !22
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !22
  %65 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !22
  %66 = load i64, i64* %65, !mcsema_real_eip !22
  %67 = add i64 %RSP_val.35, 8, !mcsema_real_eip !22
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !22
  %69 = load i64, i64* %68, !mcsema_real_eip !22
  %70 = add i64 %67, 8, !mcsema_real_eip !22
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !22
  %72 = load i64, i64* %71, !mcsema_real_eip !22
  %73 = add i64 %70, 8, !mcsema_real_eip !22
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !22
  %75 = load i64, i64* %74, !mcsema_real_eip !22
  %76 = add i64 %73, 8, !mcsema_real_eip !22
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !22
  %78 = load i64, i64* %77, !mcsema_real_eip !22
  %79 = add i64 %76, 8, !mcsema_real_eip !22
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !22
  %81 = load i64, i64* %80, !mcsema_real_eip !22
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !22
  %82 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !22
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %83, !mcsema_real_eip !22
  store i64 %82, i64* %XSP, !mcsema_real_eip !22
  %84 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.29, i64 %RSI_val.30, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %66, i64 %69, i64 %72, i64 %75, i64 %78, i64 %81), !mcsema_real_eip !22
  store i64 %84, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !23
  %85 = add i64 %RBP_val.37, -12, !mcsema_real_eip !23
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !23
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !23
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !23
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.39, i32* %88, !mcsema_real_eip !23
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !24
  %89 = add i64 %RBP_val.40, -8, !mcsema_real_eip !24
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !24
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !24
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !24
  %93 = load i32, i32* %92, !mcsema_real_eip !24
  %94 = zext i32 %93 to i64, !mcsema_real_eip !24
  store i64 %94, i64* %XAX, !mcsema_real_eip !24
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !25
  %95 = add i32 1, %EAX_val.42, !mcsema_real_eip !25
  %96 = xor i32 %95, %EAX_val.42, !mcsema_real_eip !25
  %97 = xor i32 %96, 1, !mcsema_real_eip !25
  %98 = and i32 %97, 16, !mcsema_real_eip !25
  %99 = icmp ne i32 %98, 0, !mcsema_real_eip !25
  store i1 %99, i1* %AF, !mcsema_real_eip !25
  %100 = lshr i32 %95, 31, !mcsema_real_eip !25
  %101 = trunc i32 %100 to i1, !mcsema_real_eip !25
  store i1 %101, i1* %SF, !mcsema_real_eip !25
  %102 = icmp eq i32 %95, 0, !mcsema_real_eip !25
  store i1 %102, i1* %ZF, !mcsema_real_eip !25
  %103 = xor i32 %EAX_val.42, 1, !mcsema_real_eip !25
  %104 = xor i32 %103, -1, !mcsema_real_eip !25
  %105 = xor i32 %EAX_val.42, %95, !mcsema_real_eip !25
  %106 = and i32 %104, %105, !mcsema_real_eip !25
  %107 = lshr i32 %106, 31, !mcsema_real_eip !25
  %108 = and i32 %107, 1, !mcsema_real_eip !25
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !25
  store i1 %109, i1* %OF, !mcsema_real_eip !25
  %110 = trunc i32 %95 to i8, !mcsema_real_eip !25
  %111 = call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !25
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !25
  %113 = xor i1 %112, true, !mcsema_real_eip !25
  store i1 %113, i1* %PF, !mcsema_real_eip !25
  %114 = icmp ult i32 %95, %EAX_val.42, !mcsema_real_eip !25
  store i1 %114, i1* %CF, !mcsema_real_eip !25
  %115 = zext i32 %95 to i64, !mcsema_real_eip !25
  store i64 %115, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !26
  %116 = add i64 %RBP_val.43, -8, !mcsema_real_eip !26
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !26
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !26
  %118 = ptrtoint i64* %117 to i64, !mcsema_real_eip !26
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !26
  store i32 %EAX_val.45, i32* %119, !mcsema_real_eip !26
  br label %block_0x12, !mcsema_real_eip !27

block_0x40:                                       ; preds = %block_0x12
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !28
  %120 = add i64 16, %RSP_val.25, !mcsema_real_eip !28
  %121 = xor i64 %120, %RSP_val.25, !mcsema_real_eip !28
  %122 = xor i64 %121, 16, !mcsema_real_eip !28
  %123 = and i64 %122, 16, !mcsema_real_eip !28
  %124 = icmp ne i64 %123, 0, !mcsema_real_eip !28
  store i1 %124, i1* %AF, !mcsema_real_eip !28
  %125 = lshr i64 %120, 63, !mcsema_real_eip !28
  %126 = trunc i64 %125 to i1, !mcsema_real_eip !28
  store i1 %126, i1* %SF, !mcsema_real_eip !28
  %127 = icmp eq i64 %120, 0, !mcsema_real_eip !28
  store i1 %127, i1* %ZF, !mcsema_real_eip !28
  %128 = xor i64 %RSP_val.25, 16, !mcsema_real_eip !28
  %129 = xor i64 %128, -1, !mcsema_real_eip !28
  %130 = xor i64 %RSP_val.25, %120, !mcsema_real_eip !28
  %131 = and i64 %129, %130, !mcsema_real_eip !28
  %132 = lshr i64 %131, 63, !mcsema_real_eip !28
  %133 = and i64 %132, 1, !mcsema_real_eip !28
  %134 = trunc i64 %133 to i1, !mcsema_real_eip !28
  store i1 %134, i1* %OF, !mcsema_real_eip !28
  %135 = trunc i64 %120 to i8, !mcsema_real_eip !28
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !28
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !28
  %138 = xor i1 %137, true, !mcsema_real_eip !28
  store i1 %138, i1* %PF, !mcsema_real_eip !28
  %139 = icmp ult i64 %120, %RSP_val.25, !mcsema_real_eip !28
  store i1 %139, i1* %CF, !mcsema_real_eip !28
  store i64 %120, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !29
  %140 = inttoptr i64 %RSP_val.26 to i64*, !mcsema_real_eip !29
  %141 = load i64, i64* %140, !mcsema_real_eip !29
  store i64 %141, i64* %XBP, !mcsema_real_eip !29
  %142 = add i64 %RSP_val.26, 8, !mcsema_real_eip !29
  store i64 %142, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !30
  %143 = add i64 %RSP_val.27, 8, !mcsema_real_eip !30
  %144 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !30
  %145 = load i64, i64* %144, !mcsema_real_eip !30
  store i64 %145, i64* %XIP, !mcsema_real_eip !30
  store i64 %143, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
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
!2 = !{i64 80}
!3 = !{i64 81}
!4 = !{i64 84}
!5 = !{i64 88}
!6 = !{i64 93}
!7 = !{i64 100}
!8 = !{i64 105}
!9 = !{i64 107}
!10 = !{i64 111}
!11 = !{i64 112}
!12 = !{i64 0}
!13 = !{i64 1}
!14 = !{i64 4}
!15 = !{i64 8}
!16 = !{i64 11}
!17 = !{i64 18}
!18 = !{i64 21}
!19 = !{i64 24}
!20 = !{i64 30}
!21 = !{i64 40}
!22 = !{i64 42}
!23 = !{i64 47}
!24 = !{i64 50}
!25 = !{i64 53}
!26 = !{i64 56}
!27 = !{i64 59}
!28 = !{i64 64}
!29 = !{i64 68}
!30 = !{i64 69}
