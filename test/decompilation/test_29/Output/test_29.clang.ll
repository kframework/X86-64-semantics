; ModuleID = 'Output/test_29.clang.bc'
source_filename = "Output/test_29.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [16 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64
@data_0x100 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"^\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = sext i8 32 to i64, !mcsema_real_eip !4
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
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %22 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %25, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %26 = add i64 %RBP_val.7, -16, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %RSI_val.8 = load i64, i64* %XSI, !mcsema_real_eip !6
  store i64 %RSI_val.8, i64* %27, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !7
  %28 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !7
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !7
  store i32 3, i32* %31, !mcsema_real_eip !7
  br label %block_0x16, !mcsema_real_eip !8

block_0x16:                                       ; preds = %block_0x22, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %32 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !8
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !8
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !8
  %36 = load i32, i32* %35, !mcsema_real_eip !8
  %37 = zext i32 %36 to i64, !mcsema_real_eip !8
  store i64 %37, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !9
  %38 = add i64 %RBP_val.11, -4, !mcsema_real_eip !9
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !9
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !9
  %42 = load i32, i32* %41, !mcsema_real_eip !9
  %43 = sub i32 %EAX_val.13, %42, !mcsema_real_eip !9
  %44 = xor i32 %43, %EAX_val.13, !mcsema_real_eip !9
  %45 = xor i32 %44, %42, !mcsema_real_eip !9
  %46 = and i32 %45, 16, !mcsema_real_eip !9
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !9
  store i1 %47, i1* %AF, !mcsema_real_eip !9
  %48 = trunc i32 %43 to i8, !mcsema_real_eip !9
  %49 = call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !9
  %50 = trunc i8 %49 to i1, !mcsema_real_eip !9
  %51 = xor i1 %50, true, !mcsema_real_eip !9
  store i1 %51, i1* %PF, !mcsema_real_eip !9
  %52 = icmp eq i32 %43, 0, !mcsema_real_eip !9
  store i1 %52, i1* %ZF, !mcsema_real_eip !9
  %53 = lshr i32 %43, 31, !mcsema_real_eip !9
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !9
  store i1 %54, i1* %SF, !mcsema_real_eip !9
  %55 = icmp ult i32 %EAX_val.13, %42, !mcsema_real_eip !9
  store i1 %55, i1* %CF, !mcsema_real_eip !9
  %56 = xor i32 %EAX_val.13, %42, !mcsema_real_eip !9
  %57 = xor i32 %EAX_val.13, %43, !mcsema_real_eip !9
  %58 = and i32 %56, %57, !mcsema_real_eip !9
  %59 = lshr i32 %58, 31, !mcsema_real_eip !9
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !9
  store i1 %60, i1* %OF, !mcsema_real_eip !9
  %61 = load i1, i1* %ZF, !mcsema_real_eip !10
  %62 = icmp eq i1 %61, true, !mcsema_real_eip !10
  %63 = load i1, i1* %CF, !mcsema_real_eip !10
  %64 = icmp eq i1 %63, true, !mcsema_real_eip !10
  %65 = or i1 %64, %62, !mcsema_real_eip !10
  br i1 %65, label %block_0x4d, label %block_0x22, !mcsema_real_eip !10

block_0x22:                                       ; preds = %block_0x16
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !11
  %66 = add i64 %RBP_val.14, -16, !mcsema_real_eip !11
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !11
  %68 = load i64, i64* %67, !mcsema_real_eip !11
  store i64 %68, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %69 = add i64 %RBP_val.15, -20, !mcsema_real_eip !12
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !12
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !12
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !12
  %73 = load i32, i32* %72, !mcsema_real_eip !12
  %74 = zext i32 %73 to i64, !mcsema_real_eip !12
  store i64 %74, i64* %XCX, !mcsema_real_eip !12
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !13
  %75 = sub i32 %ECX_val.17, 1, !mcsema_real_eip !13
  %76 = xor i32 %75, %ECX_val.17, !mcsema_real_eip !13
  %77 = xor i32 %76, 1, !mcsema_real_eip !13
  %78 = and i32 %77, 16, !mcsema_real_eip !13
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !13
  store i1 %79, i1* %AF, !mcsema_real_eip !13
  %80 = trunc i32 %75 to i8, !mcsema_real_eip !13
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !13
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !13
  %83 = xor i1 %82, true, !mcsema_real_eip !13
  store i1 %83, i1* %PF, !mcsema_real_eip !13
  %84 = icmp eq i32 %75, 0, !mcsema_real_eip !13
  store i1 %84, i1* %ZF, !mcsema_real_eip !13
  %85 = lshr i32 %75, 31, !mcsema_real_eip !13
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !13
  store i1 %86, i1* %SF, !mcsema_real_eip !13
  %87 = icmp ult i32 %ECX_val.17, 1, !mcsema_real_eip !13
  store i1 %87, i1* %CF, !mcsema_real_eip !13
  %88 = xor i32 %ECX_val.17, 1, !mcsema_real_eip !13
  %89 = xor i32 %ECX_val.17, %75, !mcsema_real_eip !13
  %90 = and i32 %88, %89, !mcsema_real_eip !13
  %91 = lshr i32 %90, 31, !mcsema_real_eip !13
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !13
  store i1 %92, i1* %OF, !mcsema_real_eip !13
  %93 = zext i32 %75 to i64, !mcsema_real_eip !13
  store i64 %93, i64* %XCX, !mcsema_real_eip !13
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !14
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !14
  %94 = zext i32 %ECX_val.19 to i64, !mcsema_real_eip !14
  store i64 %94, i64* %XCX, !mcsema_real_eip !14
  %ECX.20 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.21 = load i32, i32* %ECX.20, !mcsema_real_eip !15
  %95 = zext i32 %ECX_val.21 to i64, !mcsema_real_eip !15
  store i64 %95, i64* %XDX, !mcsema_real_eip !15
  %RAX_val.22 = load i64, i64* %XAX, !mcsema_real_eip !16
  %96 = add i64 %RAX_val.22, 0, !mcsema_real_eip !16
  %RDX_val.23 = load i64, i64* %XDX, !mcsema_real_eip !16
  %97 = mul i64 %RDX_val.23, 4, !mcsema_real_eip !16
  %98 = add i64 %96, %97, !mcsema_real_eip !16
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !16
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !16
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !16
  %102 = load i32, i32* %101, !mcsema_real_eip !16
  %103 = zext i32 %102 to i64, !mcsema_real_eip !16
  store i64 %103, i64* %XCX, !mcsema_real_eip !16
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !17
  %104 = add i64 %RBP_val.24, -16, !mcsema_real_eip !17
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !17
  %106 = load i64, i64* %105, !mcsema_real_eip !17
  store i64 %106, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !18
  %107 = add i64 %RBP_val.25, -20, !mcsema_real_eip !18
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !18
  %109 = ptrtoint i64* %108 to i64, !mcsema_real_eip !18
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !18
  %111 = load i32, i32* %110, !mcsema_real_eip !18
  %112 = zext i32 %111 to i64, !mcsema_real_eip !18
  store i64 %112, i64* %XSI, !mcsema_real_eip !18
  %ESI.26 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.27 = load i32, i32* %ESI.26, !mcsema_real_eip !19
  %113 = zext i32 %ESI_val.27 to i64, !mcsema_real_eip !19
  store i64 %113, i64* %XDX, !mcsema_real_eip !19
  %RAX_val.28 = load i64, i64* %XAX, !mcsema_real_eip !20
  %114 = add i64 %RAX_val.28, 0, !mcsema_real_eip !20
  %RDX_val.29 = load i64, i64* %XDX, !mcsema_real_eip !20
  %115 = mul i64 %RDX_val.29, 4, !mcsema_real_eip !20
  %116 = add i64 %114, %115, !mcsema_real_eip !20
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !20
  %ECX.30 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.31 = load i32, i32* %ECX.30, !mcsema_real_eip !20
  %118 = ptrtoint i64* %117 to i64, !mcsema_real_eip !20
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.31, i32* %119, !mcsema_real_eip !20
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !21
  %120 = add i64 %RBP_val.32, -20, !mcsema_real_eip !21
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !21
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !21
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !21
  %124 = load i32, i32* %123, !mcsema_real_eip !21
  %125 = zext i32 %124 to i64, !mcsema_real_eip !21
  store i64 %125, i64* %XAX, !mcsema_real_eip !21
  %EAX.33 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.34 = load i32, i32* %EAX.33, !mcsema_real_eip !22
  %126 = add i32 -1, %EAX_val.34, !mcsema_real_eip !22
  %127 = xor i32 %126, %EAX_val.34, !mcsema_real_eip !22
  %128 = xor i32 %127, -1, !mcsema_real_eip !22
  %129 = and i32 %128, 16, !mcsema_real_eip !22
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !22
  store i1 %130, i1* %AF, !mcsema_real_eip !22
  %131 = lshr i32 %126, 31, !mcsema_real_eip !22
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !22
  store i1 %132, i1* %SF, !mcsema_real_eip !22
  %133 = icmp eq i32 %126, 0, !mcsema_real_eip !22
  store i1 %133, i1* %ZF, !mcsema_real_eip !22
  %134 = xor i32 %EAX_val.34, -1, !mcsema_real_eip !22
  %135 = xor i32 %134, -1, !mcsema_real_eip !22
  %136 = xor i32 %EAX_val.34, %126, !mcsema_real_eip !22
  %137 = and i32 %135, %136, !mcsema_real_eip !22
  %138 = lshr i32 %137, 31, !mcsema_real_eip !22
  %139 = and i32 %138, 1, !mcsema_real_eip !22
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !22
  store i1 %140, i1* %OF, !mcsema_real_eip !22
  %141 = trunc i32 %126 to i8, !mcsema_real_eip !22
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !22
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !22
  %144 = xor i1 %143, true, !mcsema_real_eip !22
  store i1 %144, i1* %PF, !mcsema_real_eip !22
  %145 = icmp ult i32 %126, %EAX_val.34, !mcsema_real_eip !22
  store i1 %145, i1* %CF, !mcsema_real_eip !22
  %146 = zext i32 %126 to i64, !mcsema_real_eip !22
  store i64 %146, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !23
  %147 = add i64 %RBP_val.35, -20, !mcsema_real_eip !23
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !23
  %EAX.36 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.37 = load i32, i32* %EAX.36, !mcsema_real_eip !23
  %149 = ptrtoint i64* %148 to i64, !mcsema_real_eip !23
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.37, i32* %150, !mcsema_real_eip !23
  br label %block_0x16, !mcsema_real_eip !24

block_0x4d:                                       ; preds = %block_0x16
  %151 = getelementptr %0, %0* @data_0xee, i64 0, i32 0, !mcsema_real_eip !25
  %152 = ptrtoint [16 x i8]* %151 to i64, !mcsema_real_eip !25
  %153 = add i64 %152, 0, !mcsema_real_eip !25
  store i64 %153, i64* %XDI, !mcsema_real_eip !25
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !26
  %154 = add i64 %RBP_val.38, -4, !mcsema_real_eip !26
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !26
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !26
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !26
  %158 = load i32, i32* %157, !mcsema_real_eip !26
  %159 = zext i32 %158 to i64, !mcsema_real_eip !26
  store i64 %159, i64* %XSI, !mcsema_real_eip !26
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !27
  %160 = add i64 %RBP_val.39, -16, !mcsema_real_eip !27
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !27
  %162 = load i64, i64* %161, !mcsema_real_eip !27
  store i64 %162, i64* %XAX, !mcsema_real_eip !27
  %RAX_val.40 = load i64, i64* %XAX, !mcsema_real_eip !28
  %163 = add i64 %RAX_val.40, 0, !mcsema_real_eip !28
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !28
  %165 = ptrtoint i64* %164 to i64, !mcsema_real_eip !28
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !28
  %167 = load i32, i32* %166, !mcsema_real_eip !28
  %168 = zext i32 %167 to i64, !mcsema_real_eip !28
  store i64 %168, i64* %XDX, !mcsema_real_eip !28
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !29
  %169 = add i64 %RBP_val.41, -16, !mcsema_real_eip !29
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !29
  %171 = load i64, i64* %170, !mcsema_real_eip !29
  store i64 %171, i64* %XAX, !mcsema_real_eip !29
  %RAX_val.42 = load i64, i64* %XAX, !mcsema_real_eip !30
  %172 = add i64 %RAX_val.42, 4, !mcsema_real_eip !30
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !30
  %174 = ptrtoint i64* %173 to i64, !mcsema_real_eip !30
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !30
  %176 = load i32, i32* %175, !mcsema_real_eip !30
  %177 = zext i32 %176 to i64, !mcsema_real_eip !30
  store i64 %177, i64* %XCX, !mcsema_real_eip !30
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !31
  %178 = add i64 %RBP_val.43, -16, !mcsema_real_eip !31
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !31
  %180 = load i64, i64* %179, !mcsema_real_eip !31
  store i64 %180, i64* %XAX, !mcsema_real_eip !31
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !32
  %181 = add i64 %RAX_val.44, 8, !mcsema_real_eip !32
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !32
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !32
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !32
  %185 = load i32, i32* %184, !mcsema_real_eip !32
  %186 = zext i32 %185 to i64, !mcsema_real_eip !32
  store i64 %186, i64* %R8, !mcsema_real_eip !32
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !33
  %187 = add i64 %RBP_val.45, -16, !mcsema_real_eip !33
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !33
  %189 = load i64, i64* %188, !mcsema_real_eip !33
  store i64 %189, i64* %XAX, !mcsema_real_eip !33
  %RAX_val.46 = load i64, i64* %XAX, !mcsema_real_eip !34
  %190 = add i64 %RAX_val.46, 12, !mcsema_real_eip !34
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !34
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !34
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !34
  %194 = load i32, i32* %193, !mcsema_real_eip !34
  %195 = zext i32 %194 to i64, !mcsema_real_eip !34
  store i64 %195, i64* %R9, !mcsema_real_eip !34
  %AL.47 = bitcast i64* %XAX to i8*, !mcsema_real_eip !35
  store i8 0, i8* %AL.47, !mcsema_real_eip !35
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !36
  %RSI_val.49 = load i64, i64* %XSI, !mcsema_real_eip !36
  %RDX_val.50 = load i64, i64* %XDX, !mcsema_real_eip !36
  %RCX_val.51 = load i64, i64* %XCX, !mcsema_real_eip !36
  %R8_val.52 = load i64, i64* %R8, !mcsema_real_eip !36
  %R9_val.53 = load i64, i64* %R9, !mcsema_real_eip !36
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !36
  %196 = inttoptr i64 %RSP_val.54 to i64*, !mcsema_real_eip !36
  %197 = load i64, i64* %196, !mcsema_real_eip !36
  %198 = add i64 %RSP_val.54, 8, !mcsema_real_eip !36
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !36
  %200 = load i64, i64* %199, !mcsema_real_eip !36
  %201 = add i64 %198, 8, !mcsema_real_eip !36
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !36
  %203 = load i64, i64* %202, !mcsema_real_eip !36
  %204 = add i64 %201, 8, !mcsema_real_eip !36
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !36
  %206 = load i64, i64* %205, !mcsema_real_eip !36
  %207 = add i64 %204, 8, !mcsema_real_eip !36
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !36
  %209 = load i64, i64* %208, !mcsema_real_eip !36
  %210 = add i64 %207, 8, !mcsema_real_eip !36
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !36
  %212 = load i64, i64* %211, !mcsema_real_eip !36
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !36
  %213 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !36
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !36
  store i64 -2415393069852865332, i64* %214, !mcsema_real_eip !36
  store i64 %213, i64* %XSP, !mcsema_real_eip !36
  %215 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.48, i64 %RSI_val.49, i64 %RDX_val.50, i64 %RCX_val.51, i64 %R8_val.52, i64 %R9_val.53, i64 %197, i64 %200, i64 %203, i64 %206, i64 %209, i64 %212), !mcsema_real_eip !36
  store i64 %215, i64* %XAX, !mcsema_real_eip !36
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !37
  %216 = add i64 %RBP_val.56, -24, !mcsema_real_eip !37
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !37
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !37
  %218 = ptrtoint i64* %217 to i64, !mcsema_real_eip !37
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.58, i32* %219, !mcsema_real_eip !37
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  %220 = add i64 32, %RSP_val.59, !mcsema_real_eip !38
  %221 = xor i64 %220, %RSP_val.59, !mcsema_real_eip !38
  %222 = xor i64 %221, 32, !mcsema_real_eip !38
  %223 = and i64 %222, 16, !mcsema_real_eip !38
  %224 = icmp ne i64 %223, 0, !mcsema_real_eip !38
  store i1 %224, i1* %AF, !mcsema_real_eip !38
  %225 = lshr i64 %220, 63, !mcsema_real_eip !38
  %226 = trunc i64 %225 to i1, !mcsema_real_eip !38
  store i1 %226, i1* %SF, !mcsema_real_eip !38
  %227 = icmp eq i64 %220, 0, !mcsema_real_eip !38
  store i1 %227, i1* %ZF, !mcsema_real_eip !38
  %228 = xor i64 %RSP_val.59, 32, !mcsema_real_eip !38
  %229 = xor i64 %228, -1, !mcsema_real_eip !38
  %230 = xor i64 %RSP_val.59, %220, !mcsema_real_eip !38
  %231 = and i64 %229, %230, !mcsema_real_eip !38
  %232 = lshr i64 %231, 63, !mcsema_real_eip !38
  %233 = and i64 %232, 1, !mcsema_real_eip !38
  %234 = trunc i64 %233 to i1, !mcsema_real_eip !38
  store i1 %234, i1* %OF, !mcsema_real_eip !38
  %235 = trunc i64 %220 to i8, !mcsema_real_eip !38
  %236 = call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !38
  %237 = trunc i8 %236 to i1, !mcsema_real_eip !38
  %238 = xor i1 %237, true, !mcsema_real_eip !38
  store i1 %238, i1* %PF, !mcsema_real_eip !38
  %239 = icmp ult i64 %220, %RSP_val.59, !mcsema_real_eip !38
  store i1 %239, i1* %CF, !mcsema_real_eip !38
  store i64 %220, i64* %XSP, !mcsema_real_eip !38
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !39
  %240 = inttoptr i64 %RSP_val.60 to i64*, !mcsema_real_eip !39
  %241 = load i64, i64* %240, !mcsema_real_eip !39
  store i64 %241, i64* %XBP, !mcsema_real_eip !39
  %242 = add i64 %RSP_val.60, 8, !mcsema_real_eip !39
  store i64 %242, i64* %XSP, !mcsema_real_eip !39
  %RSP_val.61 = load i64, i64* %XSP, !mcsema_real_eip !40
  %243 = add i64 %RSP_val.61, 8, !mcsema_real_eip !40
  %244 = inttoptr i64 %RSP_val.61 to i64*, !mcsema_real_eip !40
  %245 = load i64, i64* %244, !mcsema_real_eip !40
  store i64 %245, i64* %XIP, !mcsema_real_eip !40
  store i64 %243, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !41
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !41
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !41
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !41
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !41
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !41
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !41
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !41
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !41
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !41
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !41
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !41
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !41
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !41
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !41
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !41
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !41
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !41
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !41
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !41
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !41
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !41
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !41
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !41
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !41
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !41
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !41
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !41
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !41
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !41
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !41
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !41
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !41
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !41
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !41
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !41
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !41
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !41
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !41
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !41
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !41
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !41
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !41
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !41
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !41
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !41
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !41
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !41
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !41
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !41
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !41
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !41
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !41
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !41
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !41
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !41
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !41
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !41
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !41
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !41
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !41
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !41
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !41
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !41
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !41
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !41
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !41
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !41
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !41
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !41
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !41
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !41
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !41
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !41
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !41
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !41
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !41
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !41
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !41
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !41
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !41
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !41
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !41
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !41
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !41
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !41
  br label %block_0x90, !mcsema_real_eip !41

block_0x90:                                       ; preds = %entry
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !41
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %1 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !41
  store i64 %RBP_val.62, i64* %2, !mcsema_real_eip !41
  store i64 %1, i64* %XSP, !mcsema_real_eip !41
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !42
  store i64 %RSP_val.64, i64* %XBP, !mcsema_real_eip !42
  %RSP_val.65 = load i64, i64* %XSP, !mcsema_real_eip !43
  %3 = sext i8 48 to i64, !mcsema_real_eip !43
  %4 = sub i64 %RSP_val.65, %3, !mcsema_real_eip !43
  %5 = xor i64 %4, %RSP_val.65, !mcsema_real_eip !43
  %6 = xor i64 %5, %3, !mcsema_real_eip !43
  %7 = and i64 %6, 16, !mcsema_real_eip !43
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !43
  store i1 %8, i1* %AF, !mcsema_real_eip !43
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !43
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !43
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !43
  %12 = xor i1 %11, true, !mcsema_real_eip !43
  store i1 %12, i1* %PF, !mcsema_real_eip !43
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !43
  store i1 %13, i1* %ZF, !mcsema_real_eip !43
  %14 = lshr i64 %4, 63, !mcsema_real_eip !43
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !43
  store i1 %15, i1* %SF, !mcsema_real_eip !43
  %16 = icmp ult i64 %RSP_val.65, %3, !mcsema_real_eip !43
  store i1 %16, i1* %CF, !mcsema_real_eip !43
  %17 = xor i64 %RSP_val.65, %3, !mcsema_real_eip !43
  %18 = xor i64 %RSP_val.65, %4, !mcsema_real_eip !43
  %19 = and i64 %17, %18, !mcsema_real_eip !43
  %20 = lshr i64 %19, 63, !mcsema_real_eip !43
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !43
  store i1 %21, i1* %OF, !mcsema_real_eip !43
  store i64 %4, i64* %XSP, !mcsema_real_eip !43
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !44
  %22 = add i64 %RBP_val.66, -4, !mcsema_real_eip !44
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !44
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !44
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !44
  store i32 0, i32* %25, !mcsema_real_eip !44
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !45
  %26 = add i64 %RBP_val.67, -36, !mcsema_real_eip !45
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !45
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !45
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !45
  store i32 0, i32* %29, !mcsema_real_eip !45
  br label %block_0xa6, !mcsema_real_eip !46

block_0xa6:                                       ; preds = %block_0xb0, %block_0x90
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !46
  %30 = add i64 %RBP_val.68, -36, !mcsema_real_eip !46
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !46
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !46
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !46
  %34 = load i32, i32* %33, !mcsema_real_eip !46
  %35 = sub i32 %34, 5, !mcsema_real_eip !46
  %36 = xor i32 %35, %34, !mcsema_real_eip !46
  %37 = xor i32 %36, 5, !mcsema_real_eip !46
  %38 = and i32 %37, 16, !mcsema_real_eip !46
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !46
  store i1 %39, i1* %AF, !mcsema_real_eip !46
  %40 = trunc i32 %35 to i8, !mcsema_real_eip !46
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !46
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !46
  %43 = xor i1 %42, true, !mcsema_real_eip !46
  store i1 %43, i1* %PF, !mcsema_real_eip !46
  %44 = icmp eq i32 %35, 0, !mcsema_real_eip !46
  store i1 %44, i1* %ZF, !mcsema_real_eip !46
  %45 = lshr i32 %35, 31, !mcsema_real_eip !46
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !46
  store i1 %46, i1* %SF, !mcsema_real_eip !46
  %47 = icmp ult i32 %34, 5, !mcsema_real_eip !46
  store i1 %47, i1* %CF, !mcsema_real_eip !46
  %48 = xor i32 %34, 5, !mcsema_real_eip !46
  %49 = xor i32 %34, %35, !mcsema_real_eip !46
  %50 = and i32 %48, %49, !mcsema_real_eip !46
  %51 = lshr i32 %50, 31, !mcsema_real_eip !46
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !46
  store i1 %52, i1* %OF, !mcsema_real_eip !46
  %53 = load i1, i1* %OF, !mcsema_real_eip !47
  %54 = load i1, i1* %SF, !mcsema_real_eip !47
  %55 = icmp eq i1 %54, %53, !mcsema_real_eip !47
  br i1 %55, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !47

block_0xb0:                                       ; preds = %block_0xa6
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !48
  %56 = add i64 %RBP_val.69, -32, !mcsema_real_eip !48
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !48
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !48
  store i64 %58, i64* %XSI, !mcsema_real_eip !48
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !49
  %59 = add i64 %RBP_val.70, -32, !mcsema_real_eip !49
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !49
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !49
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !49
  store i32 5, i32* %62, !mcsema_real_eip !49
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !50
  %63 = add i64 %RBP_val.71, -28, !mcsema_real_eip !50
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !50
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !50
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !50
  store i32 6, i32* %66, !mcsema_real_eip !50
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !51
  %67 = add i64 %RBP_val.72, -24, !mcsema_real_eip !51
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !51
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !51
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !51
  store i32 7, i32* %70, !mcsema_real_eip !51
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !52
  %71 = add i64 %RBP_val.73, -20, !mcsema_real_eip !52
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !52
  %73 = ptrtoint i64* %72 to i64, !mcsema_real_eip !52
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !52
  store i32 8, i32* %74, !mcsema_real_eip !52
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !53
  %75 = add i64 %RBP_val.74, -36, !mcsema_real_eip !53
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !53
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !53
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !53
  %79 = load i32, i32* %78, !mcsema_real_eip !53
  %80 = zext i32 %79 to i64, !mcsema_real_eip !53
  store i64 %80, i64* %XDI, !mcsema_real_eip !53
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !54
  %81 = sub i64 %RSP_val.75, 8, !mcsema_real_eip !54
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !54
  store i64 -4981261766360305936, i64* %82, !mcsema_real_eip !54
  store i64 %81, i64* %XSP, !mcsema_real_eip !54
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !54
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !55
  %83 = add i64 %RBP_val.76, -36, !mcsema_real_eip !55
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !55
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !55
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !55
  %87 = load i32, i32* %86, !mcsema_real_eip !55
  %88 = zext i32 %87 to i64, !mcsema_real_eip !55
  store i64 %88, i64* %XAX, !mcsema_real_eip !55
  %EAX.77 = bitcast i64* %XAX to i32*, !mcsema_real_eip !56
  %EAX_val.78 = load i32, i32* %EAX.77, !mcsema_real_eip !56
  %89 = add i32 1, %EAX_val.78, !mcsema_real_eip !56
  %90 = xor i32 %89, %EAX_val.78, !mcsema_real_eip !56
  %91 = xor i32 %90, 1, !mcsema_real_eip !56
  %92 = and i32 %91, 16, !mcsema_real_eip !56
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !56
  store i1 %93, i1* %AF, !mcsema_real_eip !56
  %94 = lshr i32 %89, 31, !mcsema_real_eip !56
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !56
  store i1 %95, i1* %SF, !mcsema_real_eip !56
  %96 = icmp eq i32 %89, 0, !mcsema_real_eip !56
  store i1 %96, i1* %ZF, !mcsema_real_eip !56
  %97 = xor i32 %EAX_val.78, 1, !mcsema_real_eip !56
  %98 = xor i32 %97, -1, !mcsema_real_eip !56
  %99 = xor i32 %EAX_val.78, %89, !mcsema_real_eip !56
  %100 = and i32 %98, %99, !mcsema_real_eip !56
  %101 = lshr i32 %100, 31, !mcsema_real_eip !56
  %102 = and i32 %101, 1, !mcsema_real_eip !56
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !56
  store i1 %103, i1* %OF, !mcsema_real_eip !56
  %104 = trunc i32 %89 to i8, !mcsema_real_eip !56
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !56
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !56
  %107 = xor i1 %106, true, !mcsema_real_eip !56
  store i1 %107, i1* %PF, !mcsema_real_eip !56
  %108 = icmp ult i32 %89, %EAX_val.78, !mcsema_real_eip !56
  store i1 %108, i1* %CF, !mcsema_real_eip !56
  %109 = zext i32 %89 to i64, !mcsema_real_eip !56
  store i64 %109, i64* %XAX, !mcsema_real_eip !56
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !57
  %110 = add i64 %RBP_val.79, -36, !mcsema_real_eip !57
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !57
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !57
  %EAX_val.81 = load i32, i32* %EAX.80, !mcsema_real_eip !57
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !57
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !57
  store i32 %EAX_val.81, i32* %113, !mcsema_real_eip !57
  br label %block_0xa6, !mcsema_real_eip !58

block_0xe6:                                       ; preds = %block_0xa6
  %EAX.82 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.83 = load i32, i32* %EAX.82, !mcsema_real_eip !59
  %EAX.84 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.85 = load i32, i32* %EAX.84, !mcsema_real_eip !59
  %114 = xor i32 %EAX_val.83, %EAX_val.85, !mcsema_real_eip !59
  store i1 false, i1* %CF, !mcsema_real_eip !59
  store i1 false, i1* %OF, !mcsema_real_eip !59
  %115 = lshr i32 %114, 31, !mcsema_real_eip !59
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !59
  store i1 %116, i1* %SF, !mcsema_real_eip !59
  %117 = icmp eq i32 %114, 0, !mcsema_real_eip !59
  store i1 %117, i1* %ZF, !mcsema_real_eip !59
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !59
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !59
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !59
  %121 = xor i1 %120, true, !mcsema_real_eip !59
  store i1 %121, i1* %PF, !mcsema_real_eip !59
  store i1 undef, i1* %AF, !mcsema_real_eip !59
  %122 = zext i32 %114 to i64, !mcsema_real_eip !59
  store i64 %122, i64* %XAX, !mcsema_real_eip !59
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %123 = add i64 48, %RSP_val.86, !mcsema_real_eip !60
  %124 = xor i64 %123, %RSP_val.86, !mcsema_real_eip !60
  %125 = xor i64 %124, 48, !mcsema_real_eip !60
  %126 = and i64 %125, 16, !mcsema_real_eip !60
  %127 = icmp ne i64 %126, 0, !mcsema_real_eip !60
  store i1 %127, i1* %AF, !mcsema_real_eip !60
  %128 = lshr i64 %123, 63, !mcsema_real_eip !60
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !60
  store i1 %129, i1* %SF, !mcsema_real_eip !60
  %130 = icmp eq i64 %123, 0, !mcsema_real_eip !60
  store i1 %130, i1* %ZF, !mcsema_real_eip !60
  %131 = xor i64 %RSP_val.86, 48, !mcsema_real_eip !60
  %132 = xor i64 %131, -1, !mcsema_real_eip !60
  %133 = xor i64 %RSP_val.86, %123, !mcsema_real_eip !60
  %134 = and i64 %132, %133, !mcsema_real_eip !60
  %135 = lshr i64 %134, 63, !mcsema_real_eip !60
  %136 = and i64 %135, 1, !mcsema_real_eip !60
  %137 = trunc i64 %136 to i1, !mcsema_real_eip !60
  store i1 %137, i1* %OF, !mcsema_real_eip !60
  %138 = trunc i64 %123 to i8, !mcsema_real_eip !60
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !60
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !60
  %141 = xor i1 %140, true, !mcsema_real_eip !60
  store i1 %141, i1* %PF, !mcsema_real_eip !60
  %142 = icmp ult i64 %123, %RSP_val.86, !mcsema_real_eip !60
  store i1 %142, i1* %CF, !mcsema_real_eip !60
  store i64 %123, i64* %XSP, !mcsema_real_eip !60
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !61
  %143 = inttoptr i64 %RSP_val.87 to i64*, !mcsema_real_eip !61
  %144 = load i64, i64* %143, !mcsema_real_eip !61
  store i64 %144, i64* %XBP, !mcsema_real_eip !61
  %145 = add i64 %RSP_val.87, 8, !mcsema_real_eip !61
  store i64 %145, i64* %XSP, !mcsema_real_eip !61
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !62
  %146 = add i64 %RSP_val.88, 8, !mcsema_real_eip !62
  %147 = inttoptr i64 %RSP_val.88 to i64*, !mcsema_real_eip !62
  %148 = load i64, i64* %147, !mcsema_real_eip !62
  store i64 %148, i64* %XIP, !mcsema_real_eip !62
  store i64 %146, i64* %XSP, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 25}
!10 = !{i64 28}
!11 = !{i64 34}
!12 = !{i64 38}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 46}
!16 = !{i64 48}
!17 = !{i64 51}
!18 = !{i64 55}
!19 = !{i64 58}
!20 = !{i64 60}
!21 = !{i64 63}
!22 = !{i64 66}
!23 = !{i64 69}
!24 = !{i64 72}
!25 = !{i64 77}
!26 = !{i64 87}
!27 = !{i64 90}
!28 = !{i64 94}
!29 = !{i64 96}
!30 = !{i64 100}
!31 = !{i64 103}
!32 = !{i64 107}
!33 = !{i64 111}
!34 = !{i64 115}
!35 = !{i64 119}
!36 = !{i64 121}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 133}
!40 = !{i64 134}
!41 = !{i64 144}
!42 = !{i64 145}
!43 = !{i64 148}
!44 = !{i64 152}
!45 = !{i64 159}
!46 = !{i64 166}
!47 = !{i64 170}
!48 = !{i64 176}
!49 = !{i64 180}
!50 = !{i64 187}
!51 = !{i64 194}
!52 = !{i64 201}
!53 = !{i64 208}
!54 = !{i64 211}
!55 = !{i64 216}
!56 = !{i64 219}
!57 = !{i64 222}
!58 = !{i64 225}
!59 = !{i64 230}
!60 = !{i64 232}
!61 = !{i64 236}
!62 = !{i64 237}
