; ModuleID = 'Output/test_28_1.clang.bc'
source_filename = "Output/test_28_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x51 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"(\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
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
  br label %block_0x30, !mcsema_real_eip !2

block_0x30:                                       ; preds = %entry
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
  %22 = getelementptr %0, %0* @data_0x51, i64 0, i32 0, !mcsema_real_eip !15
  %23 = ptrtoint [13 x i8]* %22 to i64, !mcsema_real_eip !15
  %24 = add i64 %23, 0, !mcsema_real_eip !15
  store i64 %24, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !16
  %25 = add i64 %RBP_val.17, -4, !mcsema_real_eip !16
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !16
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !16
  %EDI_val.19 = load i32, i32* %EDI.18, !mcsema_real_eip !16
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !16
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !16
  store i32 %EDI_val.19, i32* %28, !mcsema_real_eip !16
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.20, i64* %XDI, !mcsema_real_eip !17
  %AL.21 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.21, !mcsema_real_eip !18
  %RDI_val.22 = load i64, i64* %XDI, !mcsema_real_eip !19
  %RSI_val.23 = load i64, i64* %XSI, !mcsema_real_eip !19
  %RDX_val.24 = load i64, i64* %XDX, !mcsema_real_eip !19
  %RCX_val.25 = load i64, i64* %XCX, !mcsema_real_eip !19
  %R8_val.26 = load i64, i64* %R8, !mcsema_real_eip !19
  %R9_val.27 = load i64, i64* %R9, !mcsema_real_eip !19
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !19
  %29 = inttoptr i64 %RSP_val.28 to i64*, !mcsema_real_eip !19
  %30 = load i64, i64* %29, !mcsema_real_eip !19
  %31 = add i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !19
  %33 = load i64, i64* %32, !mcsema_real_eip !19
  %34 = add i64 %31, 8, !mcsema_real_eip !19
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !19
  %36 = load i64, i64* %35, !mcsema_real_eip !19
  %37 = add i64 %34, 8, !mcsema_real_eip !19
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !19
  %39 = load i64, i64* %38, !mcsema_real_eip !19
  %40 = add i64 %37, 8, !mcsema_real_eip !19
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !19
  %42 = load i64, i64* %41, !mcsema_real_eip !19
  %43 = add i64 %40, 8, !mcsema_real_eip !19
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !19
  %45 = load i64, i64* %44, !mcsema_real_eip !19
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !19
  %46 = sub i64 %RSP_val.29, 8, !mcsema_real_eip !19
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !19
  store i64 -2415393069852865332, i64* %47, !mcsema_real_eip !19
  store i64 %46, i64* %XSP, !mcsema_real_eip !19
  %48 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.22, i64 %RSI_val.23, i64 %RDX_val.24, i64 %RCX_val.25, i64 %R8_val.26, i64 %R9_val.27, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42, i64 %45), !mcsema_real_eip !19
  store i64 %48, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !20
  %49 = add i64 %RBP_val.30, -8, !mcsema_real_eip !20
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !20
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !20
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !20
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.32, i32* %52, !mcsema_real_eip !20
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !21
  %53 = add i64 16, %RSP_val.33, !mcsema_real_eip !21
  %54 = xor i64 %53, %RSP_val.33, !mcsema_real_eip !21
  %55 = xor i64 %54, 16, !mcsema_real_eip !21
  %56 = and i64 %55, 16, !mcsema_real_eip !21
  %57 = icmp ne i64 %56, 0, !mcsema_real_eip !21
  store i1 %57, i1* %AF, !mcsema_real_eip !21
  %58 = lshr i64 %53, 63, !mcsema_real_eip !21
  %59 = trunc i64 %58 to i1, !mcsema_real_eip !21
  store i1 %59, i1* %SF, !mcsema_real_eip !21
  %60 = icmp eq i64 %53, 0, !mcsema_real_eip !21
  store i1 %60, i1* %ZF, !mcsema_real_eip !21
  %61 = xor i64 %RSP_val.33, 16, !mcsema_real_eip !21
  %62 = xor i64 %61, -1, !mcsema_real_eip !21
  %63 = xor i64 %RSP_val.33, %53, !mcsema_real_eip !21
  %64 = and i64 %62, %63, !mcsema_real_eip !21
  %65 = lshr i64 %64, 63, !mcsema_real_eip !21
  %66 = and i64 %65, 1, !mcsema_real_eip !21
  %67 = trunc i64 %66 to i1, !mcsema_real_eip !21
  store i1 %67, i1* %OF, !mcsema_real_eip !21
  %68 = trunc i64 %53 to i8, !mcsema_real_eip !21
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !21
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !21
  %71 = xor i1 %70, true, !mcsema_real_eip !21
  store i1 %71, i1* %PF, !mcsema_real_eip !21
  %72 = icmp ult i64 %53, %RSP_val.33, !mcsema_real_eip !21
  store i1 %72, i1* %CF, !mcsema_real_eip !21
  store i64 %53, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !22
  %73 = inttoptr i64 %RSP_val.34 to i64*, !mcsema_real_eip !22
  %74 = load i64, i64* %73, !mcsema_real_eip !22
  store i64 %74, i64* %XBP, !mcsema_real_eip !22
  %75 = add i64 %RSP_val.34, 8, !mcsema_real_eip !22
  store i64 %75, i64* %XSP, !mcsema_real_eip !22
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !23
  %76 = add i64 %RSP_val.35, 8, !mcsema_real_eip !23
  %77 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !23
  %78 = load i64, i64* %77, !mcsema_real_eip !23
  store i64 %78, i64* %XIP, !mcsema_real_eip !23
  store i64 %76, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
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
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 61}
!7 = !{i64 68}
!8 = !{i64 73}
!9 = !{i64 75}
!10 = !{i64 79}
!11 = !{i64 80}
!12 = !{i64 0}
!13 = !{i64 1}
!14 = !{i64 4}
!15 = !{i64 8}
!16 = !{i64 18}
!17 = !{i64 21}
!18 = !{i64 24}
!19 = !{i64 26}
!20 = !{i64 31}
!21 = !{i64 34}
!22 = !{i64 38}
!23 = !{i64 39}
