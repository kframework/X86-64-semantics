; ModuleID = 'Output/test_28.clang.trans.bc'
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
  store i64 2, i64* %XDI, !mcsema_real_eip !5
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
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !8
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !8
  %27 = xor i32 %EAX_val.7, %EAX_val.9, !mcsema_real_eip !8
  store i1 false, i1* %CF, !mcsema_real_eip !8
  store i1 false, i1* %OF, !mcsema_real_eip !8
  %28 = lshr i32 %27, 31, !mcsema_real_eip !8
  %29 = trunc i32 %28 to i1, !mcsema_real_eip !8
  store i1 %29, i1* %SF, !mcsema_real_eip !8
  %30 = icmp eq i32 %27, 0, !mcsema_real_eip !8
  store i1 %30, i1* %ZF, !mcsema_real_eip !8
  %31 = trunc i32 %27 to i8, !mcsema_real_eip !8
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !8
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !8
  %34 = xor i1 %33, true, !mcsema_real_eip !8
  store i1 %34, i1* %PF, !mcsema_real_eip !8
  store i1 undef, i1* %AF, !mcsema_real_eip !8
  %35 = zext i32 %27 to i64, !mcsema_real_eip !8
  store i64 %35, i64* %XAX, !mcsema_real_eip !8
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !9
  %36 = add i64 16, %RSP_val.10, !mcsema_real_eip !9
  %37 = xor i64 %36, %RSP_val.10, !mcsema_real_eip !9
  %38 = xor i64 %37, 16, !mcsema_real_eip !9
  %39 = and i64 %38, 16, !mcsema_real_eip !9
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !9
  store i1 %40, i1* %AF, !mcsema_real_eip !9
  %41 = lshr i64 %36, 63, !mcsema_real_eip !9
  %42 = trunc i64 %41 to i1, !mcsema_real_eip !9
  store i1 %42, i1* %SF, !mcsema_real_eip !9
  %43 = icmp eq i64 %36, 0, !mcsema_real_eip !9
  store i1 %43, i1* %ZF, !mcsema_real_eip !9
  %44 = xor i64 %RSP_val.10, 16, !mcsema_real_eip !9
  %45 = xor i64 %44, -1, !mcsema_real_eip !9
  %46 = xor i64 %RSP_val.10, %36, !mcsema_real_eip !9
  %47 = and i64 %45, %46, !mcsema_real_eip !9
  %48 = lshr i64 %47, 63, !mcsema_real_eip !9
  %49 = and i64 %48, 1, !mcsema_real_eip !9
  %50 = trunc i64 %49 to i1, !mcsema_real_eip !9
  store i1 %50, i1* %OF, !mcsema_real_eip !9
  %51 = trunc i64 %36 to i8, !mcsema_real_eip !9
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !9
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !9
  %54 = xor i1 %53, true, !mcsema_real_eip !9
  store i1 %54, i1* %PF, !mcsema_real_eip !9
  %55 = icmp ult i64 %36, %RSP_val.10, !mcsema_real_eip !9
  store i1 %55, i1* %CF, !mcsema_real_eip !9
  store i64 %36, i64* %XSP, !mcsema_real_eip !9
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !10
  %56 = inttoptr i64 %RSP_val.11 to i64*, !mcsema_real_eip !10
  %57 = load i64, i64* %56, !mcsema_real_eip !10
  store i64 %57, i64* %XBP, !mcsema_real_eip !10
  %58 = add i64 %RSP_val.11, 8, !mcsema_real_eip !10
  store i64 %58, i64* %XSP, !mcsema_real_eip !10
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !11
  %59 = add i64 %RSP_val.12, 8, !mcsema_real_eip !11
  %60 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !11
  %61 = load i64, i64* %60, !mcsema_real_eip !11
  store i64 %61, i64* %XIP, !mcsema_real_eip !11
  store i64 %59, i64* %XSP, !mcsema_real_eip !11
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
  %3 = sub i64 %RSP_val.16, 16, !mcsema_real_eip !14
  %4 = xor i64 %3, %RSP_val.16, !mcsema_real_eip !14
  %5 = xor i64 %4, 16, !mcsema_real_eip !14
  %6 = and i64 %5, 16, !mcsema_real_eip !14
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !14
  store i1 %7, i1* %AF, !mcsema_real_eip !14
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !14
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !14
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !14
  %11 = xor i1 %10, true, !mcsema_real_eip !14
  store i1 %11, i1* %PF, !mcsema_real_eip !14
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !14
  store i1 %12, i1* %ZF, !mcsema_real_eip !14
  %13 = lshr i64 %3, 63, !mcsema_real_eip !14
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !14
  store i1 %14, i1* %SF, !mcsema_real_eip !14
  %15 = icmp ult i64 %RSP_val.16, 16, !mcsema_real_eip !14
  store i1 %15, i1* %CF, !mcsema_real_eip !14
  %16 = xor i64 %RSP_val.16, 16, !mcsema_real_eip !14
  %17 = xor i64 %RSP_val.16, %3, !mcsema_real_eip !14
  %18 = and i64 %16, %17, !mcsema_real_eip !14
  %19 = lshr i64 %18, 63, !mcsema_real_eip !14
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !14
  store i1 %20, i1* %OF, !mcsema_real_eip !14
  store i64 %3, i64* %XSP, !mcsema_real_eip !14
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !15
  %21 = add i64 %RBP_val.17, -4, !mcsema_real_eip !15
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !15
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.19 = load i32, i32* %EDI.18, !mcsema_real_eip !15
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !15
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.19, i32* %24, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !16
  %25 = add i64 %RBP_val.20, -8, !mcsema_real_eip !16
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !16
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !16
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !16
  store i32 0, i32* %28, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x12:                                       ; preds = %block_0x1e, %block_0x0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !17
  %29 = add i64 %RBP_val.21, -8, !mcsema_real_eip !17
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !17
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !17
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !17
  %33 = load i32, i32* %32, !mcsema_real_eip !17
  %34 = zext i32 %33 to i64, !mcsema_real_eip !17
  store i64 %34, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !18
  %35 = add i64 %RBP_val.22, -4, !mcsema_real_eip !18
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !18
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !18
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !18
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !18
  %39 = load i32, i32* %38, !mcsema_real_eip !18
  %40 = sub i32 %EAX_val.24, %39, !mcsema_real_eip !18
  %41 = xor i32 %40, %EAX_val.24, !mcsema_real_eip !18
  %42 = xor i32 %41, %39, !mcsema_real_eip !18
  %43 = and i32 %42, 16, !mcsema_real_eip !18
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !18
  store i1 %44, i1* %AF, !mcsema_real_eip !18
  %45 = trunc i32 %40 to i8, !mcsema_real_eip !18
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !18
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !18
  %48 = xor i1 %47, true, !mcsema_real_eip !18
  store i1 %48, i1* %PF, !mcsema_real_eip !18
  %49 = icmp eq i32 %40, 0, !mcsema_real_eip !18
  store i1 %49, i1* %ZF, !mcsema_real_eip !18
  %50 = lshr i32 %40, 31, !mcsema_real_eip !18
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !18
  store i1 %51, i1* %SF, !mcsema_real_eip !18
  %52 = icmp ult i32 %EAX_val.24, %39, !mcsema_real_eip !18
  store i1 %52, i1* %CF, !mcsema_real_eip !18
  %53 = xor i32 %EAX_val.24, %39, !mcsema_real_eip !18
  %54 = xor i32 %EAX_val.24, %40, !mcsema_real_eip !18
  %55 = and i32 %53, %54, !mcsema_real_eip !18
  %56 = lshr i32 %55, 31, !mcsema_real_eip !18
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !18
  store i1 %57, i1* %OF, !mcsema_real_eip !18
  %58 = load i1, i1* %OF, !mcsema_real_eip !19
  %59 = load i1, i1* %SF, !mcsema_real_eip !19
  %60 = icmp eq i1 %59, %58, !mcsema_real_eip !19
  br i1 %60, label %block_0x40, label %block_0x1e, !mcsema_real_eip !19

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, !mcsema_real_eip !20
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.28, !mcsema_real_eip !21
  %RDI_val.29 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !22
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !22
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !22
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !22
  %61 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !22
  %62 = load i64, i64* %61, !mcsema_real_eip !22
  %63 = add i64 %RSP_val.35, 8, !mcsema_real_eip !22
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !22
  %65 = load i64, i64* %64, !mcsema_real_eip !22
  %66 = add i64 %63, 8, !mcsema_real_eip !22
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !22
  %68 = load i64, i64* %67, !mcsema_real_eip !22
  %69 = add i64 %66, 8, !mcsema_real_eip !22
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !22
  %71 = load i64, i64* %70, !mcsema_real_eip !22
  %72 = add i64 %69, 8, !mcsema_real_eip !22
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !22
  %74 = load i64, i64* %73, !mcsema_real_eip !22
  %75 = add i64 %72, 8, !mcsema_real_eip !22
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !22
  %77 = load i64, i64* %76, !mcsema_real_eip !22
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !22
  %78 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !22
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %79, !mcsema_real_eip !22
  store i64 %78, i64* %XSP, !mcsema_real_eip !22
  %80 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.29, i64 %RSI_val.30, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %62, i64 %65, i64 %68, i64 %71, i64 %74, i64 %77), !mcsema_real_eip !22
  store i64 %80, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !23
  %81 = add i64 %RBP_val.37, -12, !mcsema_real_eip !23
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !23
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !23
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !23
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.39, i32* %84, !mcsema_real_eip !23
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !24
  %85 = add i64 %RBP_val.40, -8, !mcsema_real_eip !24
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !24
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !24
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !24
  %89 = load i32, i32* %88, !mcsema_real_eip !24
  %90 = zext i32 %89 to i64, !mcsema_real_eip !24
  store i64 %90, i64* %XAX, !mcsema_real_eip !24
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !25
  %91 = add i32 1, %EAX_val.42, !mcsema_real_eip !25
  %92 = xor i32 %91, %EAX_val.42, !mcsema_real_eip !25
  %93 = xor i32 %92, 1, !mcsema_real_eip !25
  %94 = and i32 %93, 16, !mcsema_real_eip !25
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !25
  store i1 %95, i1* %AF, !mcsema_real_eip !25
  %96 = lshr i32 %91, 31, !mcsema_real_eip !25
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !25
  store i1 %97, i1* %SF, !mcsema_real_eip !25
  %98 = icmp eq i32 %91, 0, !mcsema_real_eip !25
  store i1 %98, i1* %ZF, !mcsema_real_eip !25
  %99 = xor i32 %EAX_val.42, 1, !mcsema_real_eip !25
  %100 = xor i32 %99, -1, !mcsema_real_eip !25
  %101 = xor i32 %EAX_val.42, %91, !mcsema_real_eip !25
  %102 = and i32 %100, %101, !mcsema_real_eip !25
  %103 = lshr i32 %102, 31, !mcsema_real_eip !25
  %104 = and i32 %103, 1, !mcsema_real_eip !25
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !25
  store i1 %105, i1* %OF, !mcsema_real_eip !25
  %106 = trunc i32 %91 to i8, !mcsema_real_eip !25
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !25
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !25
  %109 = xor i1 %108, true, !mcsema_real_eip !25
  store i1 %109, i1* %PF, !mcsema_real_eip !25
  %110 = icmp ult i32 %91, %EAX_val.42, !mcsema_real_eip !25
  store i1 %110, i1* %CF, !mcsema_real_eip !25
  %111 = zext i32 %91 to i64, !mcsema_real_eip !25
  store i64 %111, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !26
  %112 = add i64 %RBP_val.43, -8, !mcsema_real_eip !26
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !26
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !26
  %114 = ptrtoint i64* %113 to i64, !mcsema_real_eip !26
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !26
  store i32 %EAX_val.45, i32* %115, !mcsema_real_eip !26
  br label %block_0x12, !mcsema_real_eip !27

block_0x40:                                       ; preds = %block_0x12
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !28
  %116 = add i64 16, %RSP_val.25, !mcsema_real_eip !28
  %117 = xor i64 %116, %RSP_val.25, !mcsema_real_eip !28
  %118 = xor i64 %117, 16, !mcsema_real_eip !28
  %119 = and i64 %118, 16, !mcsema_real_eip !28
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !28
  store i1 %120, i1* %AF, !mcsema_real_eip !28
  %121 = lshr i64 %116, 63, !mcsema_real_eip !28
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !28
  store i1 %122, i1* %SF, !mcsema_real_eip !28
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !28
  store i1 %123, i1* %ZF, !mcsema_real_eip !28
  %124 = xor i64 %RSP_val.25, 16, !mcsema_real_eip !28
  %125 = xor i64 %124, -1, !mcsema_real_eip !28
  %126 = xor i64 %RSP_val.25, %116, !mcsema_real_eip !28
  %127 = and i64 %125, %126, !mcsema_real_eip !28
  %128 = lshr i64 %127, 63, !mcsema_real_eip !28
  %129 = and i64 %128, 1, !mcsema_real_eip !28
  %130 = trunc i64 %129 to i1, !mcsema_real_eip !28
  store i1 %130, i1* %OF, !mcsema_real_eip !28
  %131 = trunc i64 %116 to i8, !mcsema_real_eip !28
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !28
  %133 = trunc i8 %132 to i1, !mcsema_real_eip !28
  %134 = xor i1 %133, true, !mcsema_real_eip !28
  store i1 %134, i1* %PF, !mcsema_real_eip !28
  %135 = icmp ult i64 %116, %RSP_val.25, !mcsema_real_eip !28
  store i1 %135, i1* %CF, !mcsema_real_eip !28
  store i64 %116, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !29
  %136 = inttoptr i64 %RSP_val.26 to i64*, !mcsema_real_eip !29
  %137 = load i64, i64* %136, !mcsema_real_eip !29
  store i64 %137, i64* %XBP, !mcsema_real_eip !29
  %138 = add i64 %RSP_val.26, 8, !mcsema_real_eip !29
  store i64 %138, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !30
  %139 = add i64 %RSP_val.27, 8, !mcsema_real_eip !30
  %140 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !30
  %141 = load i64, i64* %140, !mcsema_real_eip !30
  store i64 %141, i64* %XIP, !mcsema_real_eip !30
  store i64 %139, i64* %XSP, !mcsema_real_eip !30
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
