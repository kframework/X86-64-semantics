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
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
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
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sext i8 48 to i64, !mcsema_real_eip !4
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
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %25, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %26 = add i64 %RBP_val.5, -36, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %29, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %block_0x90
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %30 = add i64 %RBP_val.6, -36, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !7
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !7
  %34 = load i32, i32* %33, !mcsema_real_eip !7
  %35 = sub i32 %34, 5, !mcsema_real_eip !7
  %36 = xor i32 %35, %34, !mcsema_real_eip !7
  %37 = xor i32 %36, 5, !mcsema_real_eip !7
  %38 = and i32 %37, 16, !mcsema_real_eip !7
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !7
  store i1 %39, i1* %AF, !mcsema_real_eip !7
  %40 = trunc i32 %35 to i8, !mcsema_real_eip !7
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !7
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !7
  %43 = xor i1 %42, true, !mcsema_real_eip !7
  store i1 %43, i1* %PF, !mcsema_real_eip !7
  %44 = icmp eq i32 %35, 0, !mcsema_real_eip !7
  store i1 %44, i1* %ZF, !mcsema_real_eip !7
  %45 = lshr i32 %35, 31, !mcsema_real_eip !7
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !7
  store i1 %46, i1* %SF, !mcsema_real_eip !7
  %47 = icmp ult i32 %34, 5, !mcsema_real_eip !7
  store i1 %47, i1* %CF, !mcsema_real_eip !7
  %48 = xor i32 %34, 5, !mcsema_real_eip !7
  %49 = xor i32 %34, %35, !mcsema_real_eip !7
  %50 = and i32 %48, %49, !mcsema_real_eip !7
  %51 = lshr i32 %50, 31, !mcsema_real_eip !7
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !7
  store i1 %52, i1* %OF, !mcsema_real_eip !7
  %53 = load i1, i1* %OF, !mcsema_real_eip !8
  %54 = load i1, i1* %SF, !mcsema_real_eip !8
  %55 = icmp eq i1 %54, %53, !mcsema_real_eip !8
  br i1 %55, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !9
  %56 = add i64 %RBP_val.14, -32, !mcsema_real_eip !9
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !9
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !9
  store i64 %58, i64* %XSI, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !10
  %59 = add i64 %RBP_val.15, -32, !mcsema_real_eip !10
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !10
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !10
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !10
  store i32 5, i32* %62, !mcsema_real_eip !10
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !11
  %63 = add i64 %RBP_val.16, -28, !mcsema_real_eip !11
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !11
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !11
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !11
  store i32 6, i32* %66, !mcsema_real_eip !11
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !12
  %67 = add i64 %RBP_val.17, -24, !mcsema_real_eip !12
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !12
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !12
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !12
  store i32 7, i32* %70, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %71 = add i64 %RBP_val.18, -20, !mcsema_real_eip !13
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !13
  %73 = ptrtoint i64* %72 to i64, !mcsema_real_eip !13
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !13
  store i32 8, i32* %74, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %75 = add i64 %RBP_val.19, -36, !mcsema_real_eip !14
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !14
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !14
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !14
  %79 = load i32, i32* %78, !mcsema_real_eip !14
  %80 = zext i32 %79 to i64, !mcsema_real_eip !14
  store i64 %80, i64* %XDI, !mcsema_real_eip !14
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %81 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %82, !mcsema_real_eip !15
  store i64 %81, i64* %XSP, !mcsema_real_eip !15
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %83 = add i64 %RBP_val.21, -36, !mcsema_real_eip !16
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !16
  %85 = ptrtoint i64* %84 to i64, !mcsema_real_eip !16
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !16
  %87 = load i32, i32* %86, !mcsema_real_eip !16
  %88 = zext i32 %87 to i64, !mcsema_real_eip !16
  store i64 %88, i64* %XAX, !mcsema_real_eip !16
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !17
  %89 = add i32 1, %EAX_val.23, !mcsema_real_eip !17
  %90 = xor i32 %89, %EAX_val.23, !mcsema_real_eip !17
  %91 = xor i32 %90, 1, !mcsema_real_eip !17
  %92 = and i32 %91, 16, !mcsema_real_eip !17
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !17
  store i1 %93, i1* %AF, !mcsema_real_eip !17
  %94 = lshr i32 %89, 31, !mcsema_real_eip !17
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !17
  store i1 %95, i1* %SF, !mcsema_real_eip !17
  %96 = icmp eq i32 %89, 0, !mcsema_real_eip !17
  store i1 %96, i1* %ZF, !mcsema_real_eip !17
  %97 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !17
  %98 = xor i32 %97, -1, !mcsema_real_eip !17
  %99 = xor i32 %EAX_val.23, %89, !mcsema_real_eip !17
  %100 = and i32 %98, %99, !mcsema_real_eip !17
  %101 = lshr i32 %100, 31, !mcsema_real_eip !17
  %102 = and i32 %101, 1, !mcsema_real_eip !17
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !17
  store i1 %103, i1* %OF, !mcsema_real_eip !17
  %104 = trunc i32 %89 to i8, !mcsema_real_eip !17
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !17
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !17
  %107 = xor i1 %106, true, !mcsema_real_eip !17
  store i1 %107, i1* %PF, !mcsema_real_eip !17
  %108 = icmp ult i32 %89, %EAX_val.23, !mcsema_real_eip !17
  store i1 %108, i1* %CF, !mcsema_real_eip !17
  %109 = zext i32 %89 to i64, !mcsema_real_eip !17
  store i64 %109, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %110 = add i64 %RBP_val.24, -36, !mcsema_real_eip !18
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !18
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !18
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %113, !mcsema_real_eip !18
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !20
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !20
  %114 = xor i32 %EAX_val.8, %EAX_val.10, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  %115 = lshr i32 %114, 31, !mcsema_real_eip !20
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !20
  store i1 %116, i1* %SF, !mcsema_real_eip !20
  %117 = icmp eq i32 %114, 0, !mcsema_real_eip !20
  store i1 %117, i1* %ZF, !mcsema_real_eip !20
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !20
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !20
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !20
  %121 = xor i1 %120, true, !mcsema_real_eip !20
  store i1 %121, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  %122 = zext i32 %114 to i64, !mcsema_real_eip !20
  store i64 %122, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !21
  %123 = add i64 48, %RSP_val.11, !mcsema_real_eip !21
  %124 = xor i64 %123, %RSP_val.11, !mcsema_real_eip !21
  %125 = xor i64 %124, 48, !mcsema_real_eip !21
  %126 = and i64 %125, 16, !mcsema_real_eip !21
  %127 = icmp ne i64 %126, 0, !mcsema_real_eip !21
  store i1 %127, i1* %AF, !mcsema_real_eip !21
  %128 = lshr i64 %123, 63, !mcsema_real_eip !21
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !21
  store i1 %129, i1* %SF, !mcsema_real_eip !21
  %130 = icmp eq i64 %123, 0, !mcsema_real_eip !21
  store i1 %130, i1* %ZF, !mcsema_real_eip !21
  %131 = xor i64 %RSP_val.11, 48, !mcsema_real_eip !21
  %132 = xor i64 %131, -1, !mcsema_real_eip !21
  %133 = xor i64 %RSP_val.11, %123, !mcsema_real_eip !21
  %134 = and i64 %132, %133, !mcsema_real_eip !21
  %135 = lshr i64 %134, 63, !mcsema_real_eip !21
  %136 = and i64 %135, 1, !mcsema_real_eip !21
  %137 = trunc i64 %136 to i1, !mcsema_real_eip !21
  store i1 %137, i1* %OF, !mcsema_real_eip !21
  %138 = trunc i64 %123 to i8, !mcsema_real_eip !21
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !21
  %140 = trunc i8 %139 to i1, !mcsema_real_eip !21
  %141 = xor i1 %140, true, !mcsema_real_eip !21
  store i1 %141, i1* %PF, !mcsema_real_eip !21
  %142 = icmp ult i64 %123, %RSP_val.11, !mcsema_real_eip !21
  store i1 %142, i1* %CF, !mcsema_real_eip !21
  store i64 %123, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !22
  %143 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !22
  %144 = load i64, i64* %143, !mcsema_real_eip !22
  store i64 %144, i64* %XBP, !mcsema_real_eip !22
  %145 = add i64 %RSP_val.12, 8, !mcsema_real_eip !22
  store i64 %145, i64* %XSP, !mcsema_real_eip !22
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !23
  %146 = add i64 %RSP_val.13, 8, !mcsema_real_eip !23
  %147 = inttoptr i64 %RSP_val.13 to i64*, !mcsema_real_eip !23
  %148 = load i64, i64* %147, !mcsema_real_eip !23
  store i64 %148, i64* %XIP, !mcsema_real_eip !23
  store i64 %146, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !24
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !24
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !24
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !24
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !24
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !24
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !24
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !24
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !24
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !24
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !24
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !24
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !24
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !24
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !24
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !24
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !24
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !24
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !24
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !24
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !24
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !24
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !24
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !24
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !24
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !24
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !24
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !24
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !24
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !24
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !24
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !24
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !24
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !24
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !24
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !24
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !24
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !24
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !24
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !24
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !24
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !24
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !24
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !24
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !24
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !24
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !24
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !24
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !24
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !24
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !24
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !24
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !24
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !24
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !24
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !24
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !24
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !24
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !24
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !24
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !24
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !24
  br label %block_0x0, !mcsema_real_eip !24

block_0x0:                                        ; preds = %entry
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !24
  %1 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !24
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !24
  store i64 %RBP_val.27, i64* %2, !mcsema_real_eip !24
  store i64 %1, i64* %XSP, !mcsema_real_eip !24
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !25
  store i64 %RSP_val.29, i64* %XBP, !mcsema_real_eip !25
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %3 = sext i8 32 to i64, !mcsema_real_eip !26
  %4 = sub i64 %RSP_val.30, %3, !mcsema_real_eip !26
  %5 = xor i64 %4, %RSP_val.30, !mcsema_real_eip !26
  %6 = xor i64 %5, %3, !mcsema_real_eip !26
  %7 = and i64 %6, 16, !mcsema_real_eip !26
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !26
  store i1 %8, i1* %AF, !mcsema_real_eip !26
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !26
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !26
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !26
  %12 = xor i1 %11, true, !mcsema_real_eip !26
  store i1 %12, i1* %PF, !mcsema_real_eip !26
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !26
  store i1 %13, i1* %ZF, !mcsema_real_eip !26
  %14 = lshr i64 %4, 63, !mcsema_real_eip !26
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !26
  store i1 %15, i1* %SF, !mcsema_real_eip !26
  %16 = icmp ult i64 %RSP_val.30, %3, !mcsema_real_eip !26
  store i1 %16, i1* %CF, !mcsema_real_eip !26
  %17 = xor i64 %RSP_val.30, %3, !mcsema_real_eip !26
  %18 = xor i64 %RSP_val.30, %4, !mcsema_real_eip !26
  %19 = and i64 %17, %18, !mcsema_real_eip !26
  %20 = lshr i64 %19, 63, !mcsema_real_eip !26
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !26
  store i1 %21, i1* %OF, !mcsema_real_eip !26
  store i64 %4, i64* %XSP, !mcsema_real_eip !26
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !27
  %22 = add i64 %RBP_val.31, -4, !mcsema_real_eip !27
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !27
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !27
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !27
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %25, !mcsema_real_eip !27
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !28
  %26 = add i64 %RBP_val.34, -16, !mcsema_real_eip !28
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !28
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %27, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !29
  %28 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !29
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !29
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %31, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %block_0x0
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !30
  %32 = add i64 %RBP_val.37, -20, !mcsema_real_eip !30
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !30
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !30
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !30
  %36 = load i32, i32* %35, !mcsema_real_eip !30
  %37 = zext i32 %36 to i64, !mcsema_real_eip !30
  store i64 %37, i64* %XAX, !mcsema_real_eip !30
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !31
  %38 = add i64 %RBP_val.38, -4, !mcsema_real_eip !31
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !31
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !31
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !31
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !31
  %42 = load i32, i32* %41, !mcsema_real_eip !31
  %43 = sub i32 %EAX_val.40, %42, !mcsema_real_eip !31
  %44 = xor i32 %43, %EAX_val.40, !mcsema_real_eip !31
  %45 = xor i32 %44, %42, !mcsema_real_eip !31
  %46 = and i32 %45, 16, !mcsema_real_eip !31
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !31
  store i1 %47, i1* %AF, !mcsema_real_eip !31
  %48 = trunc i32 %43 to i8, !mcsema_real_eip !31
  %49 = call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !31
  %50 = trunc i8 %49 to i1, !mcsema_real_eip !31
  %51 = xor i1 %50, true, !mcsema_real_eip !31
  store i1 %51, i1* %PF, !mcsema_real_eip !31
  %52 = icmp eq i32 %43, 0, !mcsema_real_eip !31
  store i1 %52, i1* %ZF, !mcsema_real_eip !31
  %53 = lshr i32 %43, 31, !mcsema_real_eip !31
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !31
  store i1 %54, i1* %SF, !mcsema_real_eip !31
  %55 = icmp ult i32 %EAX_val.40, %42, !mcsema_real_eip !31
  store i1 %55, i1* %CF, !mcsema_real_eip !31
  %56 = xor i32 %EAX_val.40, %42, !mcsema_real_eip !31
  %57 = xor i32 %EAX_val.40, %43, !mcsema_real_eip !31
  %58 = and i32 %56, %57, !mcsema_real_eip !31
  %59 = lshr i32 %58, 31, !mcsema_real_eip !31
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !31
  store i1 %60, i1* %OF, !mcsema_real_eip !31
  %61 = load i1, i1* %ZF, !mcsema_real_eip !32
  %62 = icmp eq i1 %61, true, !mcsema_real_eip !32
  %63 = load i1, i1* %CF, !mcsema_real_eip !32
  %64 = icmp eq i1 %63, true, !mcsema_real_eip !32
  %65 = or i1 %64, %62, !mcsema_real_eip !32
  br i1 %65, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !33
  %66 = add i64 %RBP_val.65, -16, !mcsema_real_eip !33
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !33
  %68 = load i64, i64* %67, !mcsema_real_eip !33
  store i64 %68, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !34
  %69 = add i64 %RBP_val.66, -20, !mcsema_real_eip !34
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !34
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !34
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !34
  %73 = load i32, i32* %72, !mcsema_real_eip !34
  %74 = zext i32 %73 to i64, !mcsema_real_eip !34
  store i64 %74, i64* %XCX, !mcsema_real_eip !34
  %ECX.67 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.68 = load i32, i32* %ECX.67, !mcsema_real_eip !35
  %75 = sub i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %76 = xor i32 %75, %ECX_val.68, !mcsema_real_eip !35
  %77 = xor i32 %76, 1, !mcsema_real_eip !35
  %78 = and i32 %77, 16, !mcsema_real_eip !35
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !35
  store i1 %79, i1* %AF, !mcsema_real_eip !35
  %80 = trunc i32 %75 to i8, !mcsema_real_eip !35
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !35
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !35
  %83 = xor i1 %82, true, !mcsema_real_eip !35
  store i1 %83, i1* %PF, !mcsema_real_eip !35
  %84 = icmp eq i32 %75, 0, !mcsema_real_eip !35
  store i1 %84, i1* %ZF, !mcsema_real_eip !35
  %85 = lshr i32 %75, 31, !mcsema_real_eip !35
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !35
  store i1 %86, i1* %SF, !mcsema_real_eip !35
  %87 = icmp ult i32 %ECX_val.68, 1, !mcsema_real_eip !35
  store i1 %87, i1* %CF, !mcsema_real_eip !35
  %88 = xor i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %89 = xor i32 %ECX_val.68, %75, !mcsema_real_eip !35
  %90 = and i32 %88, %89, !mcsema_real_eip !35
  %91 = lshr i32 %90, 31, !mcsema_real_eip !35
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !35
  store i1 %92, i1* %OF, !mcsema_real_eip !35
  %93 = zext i32 %75 to i64, !mcsema_real_eip !35
  store i64 %93, i64* %XCX, !mcsema_real_eip !35
  %ECX.69 = bitcast i64* %XCX to i32*, !mcsema_real_eip !36
  %ECX_val.70 = load i32, i32* %ECX.69, !mcsema_real_eip !36
  %94 = zext i32 %ECX_val.70 to i64, !mcsema_real_eip !36
  store i64 %94, i64* %XCX, !mcsema_real_eip !36
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.72 = load i32, i32* %ECX.71, !mcsema_real_eip !37
  %95 = zext i32 %ECX_val.72 to i64, !mcsema_real_eip !37
  store i64 %95, i64* %XDX, !mcsema_real_eip !37
  %RAX_val.73 = load i64, i64* %XAX, !mcsema_real_eip !38
  %96 = add i64 %RAX_val.73, 0, !mcsema_real_eip !38
  %RDX_val.74 = load i64, i64* %XDX, !mcsema_real_eip !38
  %97 = mul i64 %RDX_val.74, 4, !mcsema_real_eip !38
  %98 = add i64 %96, %97, !mcsema_real_eip !38
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !38
  %100 = ptrtoint i64* %99 to i64, !mcsema_real_eip !38
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !38
  %102 = load i32, i32* %101, !mcsema_real_eip !38
  %103 = zext i32 %102 to i64, !mcsema_real_eip !38
  store i64 %103, i64* %XCX, !mcsema_real_eip !38
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !39
  %104 = add i64 %RBP_val.75, -16, !mcsema_real_eip !39
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !39
  %106 = load i64, i64* %105, !mcsema_real_eip !39
  store i64 %106, i64* %XAX, !mcsema_real_eip !39
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !40
  %107 = add i64 %RBP_val.76, -20, !mcsema_real_eip !40
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !40
  %109 = ptrtoint i64* %108 to i64, !mcsema_real_eip !40
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !40
  %111 = load i32, i32* %110, !mcsema_real_eip !40
  %112 = zext i32 %111 to i64, !mcsema_real_eip !40
  store i64 %112, i64* %XSI, !mcsema_real_eip !40
  %ESI.77 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.78 = load i32, i32* %ESI.77, !mcsema_real_eip !41
  %113 = zext i32 %ESI_val.78 to i64, !mcsema_real_eip !41
  store i64 %113, i64* %XDX, !mcsema_real_eip !41
  %RAX_val.79 = load i64, i64* %XAX, !mcsema_real_eip !42
  %114 = add i64 %RAX_val.79, 0, !mcsema_real_eip !42
  %RDX_val.80 = load i64, i64* %XDX, !mcsema_real_eip !42
  %115 = mul i64 %RDX_val.80, 4, !mcsema_real_eip !42
  %116 = add i64 %114, %115, !mcsema_real_eip !42
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !42
  %ECX.81 = bitcast i64* %XCX to i32*, !mcsema_real_eip !42
  %ECX_val.82 = load i32, i32* %ECX.81, !mcsema_real_eip !42
  %118 = ptrtoint i64* %117 to i64, !mcsema_real_eip !42
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !42
  store i32 %ECX_val.82, i32* %119, !mcsema_real_eip !42
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !43
  %120 = add i64 %RBP_val.83, -20, !mcsema_real_eip !43
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !43
  %122 = ptrtoint i64* %121 to i64, !mcsema_real_eip !43
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !43
  %124 = load i32, i32* %123, !mcsema_real_eip !43
  %125 = zext i32 %124 to i64, !mcsema_real_eip !43
  store i64 %125, i64* %XAX, !mcsema_real_eip !43
  %EAX.84 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.85 = load i32, i32* %EAX.84, !mcsema_real_eip !44
  %126 = add i32 -1, %EAX_val.85, !mcsema_real_eip !44
  %127 = xor i32 %126, %EAX_val.85, !mcsema_real_eip !44
  %128 = xor i32 %127, -1, !mcsema_real_eip !44
  %129 = and i32 %128, 16, !mcsema_real_eip !44
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !44
  store i1 %130, i1* %AF, !mcsema_real_eip !44
  %131 = lshr i32 %126, 31, !mcsema_real_eip !44
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !44
  store i1 %132, i1* %SF, !mcsema_real_eip !44
  %133 = icmp eq i32 %126, 0, !mcsema_real_eip !44
  store i1 %133, i1* %ZF, !mcsema_real_eip !44
  %134 = xor i32 %EAX_val.85, -1, !mcsema_real_eip !44
  %135 = xor i32 %134, -1, !mcsema_real_eip !44
  %136 = xor i32 %EAX_val.85, %126, !mcsema_real_eip !44
  %137 = and i32 %135, %136, !mcsema_real_eip !44
  %138 = lshr i32 %137, 31, !mcsema_real_eip !44
  %139 = and i32 %138, 1, !mcsema_real_eip !44
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !44
  store i1 %140, i1* %OF, !mcsema_real_eip !44
  %141 = trunc i32 %126 to i8, !mcsema_real_eip !44
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !44
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !44
  %144 = xor i1 %143, true, !mcsema_real_eip !44
  store i1 %144, i1* %PF, !mcsema_real_eip !44
  %145 = icmp ult i32 %126, %EAX_val.85, !mcsema_real_eip !44
  store i1 %145, i1* %CF, !mcsema_real_eip !44
  %146 = zext i32 %126 to i64, !mcsema_real_eip !44
  store i64 %146, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !45
  %147 = add i64 %RBP_val.86, -20, !mcsema_real_eip !45
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !45
  %EAX.87 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.88 = load i32, i32* %EAX.87, !mcsema_real_eip !45
  %149 = ptrtoint i64* %148 to i64, !mcsema_real_eip !45
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.88, i32* %150, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  %151 = getelementptr %0, %0* @data_0xee, i64 0, i32 0, !mcsema_real_eip !47
  %152 = ptrtoint [16 x i8]* %151 to i64, !mcsema_real_eip !47
  %153 = add i64 %152, 0, !mcsema_real_eip !47
  store i64 %153, i64* %XDI, !mcsema_real_eip !47
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !48
  %154 = add i64 %RBP_val.41, -4, !mcsema_real_eip !48
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !48
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !48
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !48
  %158 = load i32, i32* %157, !mcsema_real_eip !48
  %159 = zext i32 %158 to i64, !mcsema_real_eip !48
  store i64 %159, i64* %XSI, !mcsema_real_eip !48
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !49
  %160 = add i64 %RBP_val.42, -16, !mcsema_real_eip !49
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !49
  %162 = load i64, i64* %161, !mcsema_real_eip !49
  store i64 %162, i64* %XAX, !mcsema_real_eip !49
  %RAX_val.43 = load i64, i64* %XAX, !mcsema_real_eip !50
  %163 = add i64 %RAX_val.43, 0, !mcsema_real_eip !50
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !50
  %165 = ptrtoint i64* %164 to i64, !mcsema_real_eip !50
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !50
  %167 = load i32, i32* %166, !mcsema_real_eip !50
  %168 = zext i32 %167 to i64, !mcsema_real_eip !50
  store i64 %168, i64* %XDX, !mcsema_real_eip !50
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !51
  %169 = add i64 %RBP_val.44, -16, !mcsema_real_eip !51
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !51
  %171 = load i64, i64* %170, !mcsema_real_eip !51
  store i64 %171, i64* %XAX, !mcsema_real_eip !51
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !52
  %172 = add i64 %RAX_val.45, 4, !mcsema_real_eip !52
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !52
  %174 = ptrtoint i64* %173 to i64, !mcsema_real_eip !52
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !52
  %176 = load i32, i32* %175, !mcsema_real_eip !52
  %177 = zext i32 %176 to i64, !mcsema_real_eip !52
  store i64 %177, i64* %XCX, !mcsema_real_eip !52
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !53
  %178 = add i64 %RBP_val.46, -16, !mcsema_real_eip !53
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !53
  %180 = load i64, i64* %179, !mcsema_real_eip !53
  store i64 %180, i64* %XAX, !mcsema_real_eip !53
  %RAX_val.47 = load i64, i64* %XAX, !mcsema_real_eip !54
  %181 = add i64 %RAX_val.47, 8, !mcsema_real_eip !54
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !54
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !54
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !54
  %185 = load i32, i32* %184, !mcsema_real_eip !54
  %186 = zext i32 %185 to i64, !mcsema_real_eip !54
  store i64 %186, i64* %R8, !mcsema_real_eip !54
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !55
  %187 = add i64 %RBP_val.48, -16, !mcsema_real_eip !55
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !55
  %189 = load i64, i64* %188, !mcsema_real_eip !55
  store i64 %189, i64* %XAX, !mcsema_real_eip !55
  %RAX_val.49 = load i64, i64* %XAX, !mcsema_real_eip !56
  %190 = add i64 %RAX_val.49, 12, !mcsema_real_eip !56
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !56
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !56
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !56
  %194 = load i32, i32* %193, !mcsema_real_eip !56
  %195 = zext i32 %194 to i64, !mcsema_real_eip !56
  store i64 %195, i64* %R9, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, !mcsema_real_eip !57
  %RDI_val.51 = load i64, i64* %XDI, !mcsema_real_eip !58
  %RSI_val.52 = load i64, i64* %XSI, !mcsema_real_eip !58
  %RDX_val.53 = load i64, i64* %XDX, !mcsema_real_eip !58
  %RCX_val.54 = load i64, i64* %XCX, !mcsema_real_eip !58
  %R8_val.55 = load i64, i64* %R8, !mcsema_real_eip !58
  %R9_val.56 = load i64, i64* %R9, !mcsema_real_eip !58
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !58
  %196 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !58
  %197 = load i64, i64* %196, !mcsema_real_eip !58
  %198 = add i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !58
  %200 = load i64, i64* %199, !mcsema_real_eip !58
  %201 = add i64 %198, 8, !mcsema_real_eip !58
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !58
  %203 = load i64, i64* %202, !mcsema_real_eip !58
  %204 = add i64 %201, 8, !mcsema_real_eip !58
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !58
  %206 = load i64, i64* %205, !mcsema_real_eip !58
  %207 = add i64 %204, 8, !mcsema_real_eip !58
  %208 = inttoptr i64 %207 to i64*, !mcsema_real_eip !58
  %209 = load i64, i64* %208, !mcsema_real_eip !58
  %210 = add i64 %207, 8, !mcsema_real_eip !58
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !58
  %212 = load i64, i64* %211, !mcsema_real_eip !58
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !58
  %213 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !58
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %214, !mcsema_real_eip !58
  store i64 %213, i64* %XSP, !mcsema_real_eip !58
  %215 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.51, i64 %RSI_val.52, i64 %RDX_val.53, i64 %RCX_val.54, i64 %R8_val.55, i64 %R9_val.56, i64 %197, i64 %200, i64 %203, i64 %206, i64 %209, i64 %212), !mcsema_real_eip !58
  store i64 %215, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !59
  %216 = add i64 %RBP_val.59, -24, !mcsema_real_eip !59
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !59
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !59
  %218 = ptrtoint i64* %217 to i64, !mcsema_real_eip !59
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.61, i32* %219, !mcsema_real_eip !59
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !60
  %220 = add i64 32, %RSP_val.62, !mcsema_real_eip !60
  %221 = xor i64 %220, %RSP_val.62, !mcsema_real_eip !60
  %222 = xor i64 %221, 32, !mcsema_real_eip !60
  %223 = and i64 %222, 16, !mcsema_real_eip !60
  %224 = icmp ne i64 %223, 0, !mcsema_real_eip !60
  store i1 %224, i1* %AF, !mcsema_real_eip !60
  %225 = lshr i64 %220, 63, !mcsema_real_eip !60
  %226 = trunc i64 %225 to i1, !mcsema_real_eip !60
  store i1 %226, i1* %SF, !mcsema_real_eip !60
  %227 = icmp eq i64 %220, 0, !mcsema_real_eip !60
  store i1 %227, i1* %ZF, !mcsema_real_eip !60
  %228 = xor i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %229 = xor i64 %228, -1, !mcsema_real_eip !60
  %230 = xor i64 %RSP_val.62, %220, !mcsema_real_eip !60
  %231 = and i64 %229, %230, !mcsema_real_eip !60
  %232 = lshr i64 %231, 63, !mcsema_real_eip !60
  %233 = and i64 %232, 1, !mcsema_real_eip !60
  %234 = trunc i64 %233 to i1, !mcsema_real_eip !60
  store i1 %234, i1* %OF, !mcsema_real_eip !60
  %235 = trunc i64 %220 to i8, !mcsema_real_eip !60
  %236 = call i8 @llvm.ctpop.i8(i8 %235), !mcsema_real_eip !60
  %237 = trunc i8 %236 to i1, !mcsema_real_eip !60
  %238 = xor i1 %237, true, !mcsema_real_eip !60
  store i1 %238, i1* %PF, !mcsema_real_eip !60
  %239 = icmp ult i64 %220, %RSP_val.62, !mcsema_real_eip !60
  store i1 %239, i1* %CF, !mcsema_real_eip !60
  store i64 %220, i64* %XSP, !mcsema_real_eip !60
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !61
  %240 = inttoptr i64 %RSP_val.63 to i64*, !mcsema_real_eip !61
  %241 = load i64, i64* %240, !mcsema_real_eip !61
  store i64 %241, i64* %XBP, !mcsema_real_eip !61
  %242 = add i64 %RSP_val.63, 8, !mcsema_real_eip !61
  store i64 %242, i64* %XSP, !mcsema_real_eip !61
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !62
  %243 = add i64 %RSP_val.64, 8, !mcsema_real_eip !62
  %244 = inttoptr i64 %RSP_val.64 to i64*, !mcsema_real_eip !62
  %245 = load i64, i64* %244, !mcsema_real_eip !62
  store i64 %245, i64* %XIP, !mcsema_real_eip !62
  store i64 %243, i64* %XSP, !mcsema_real_eip !62
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
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 159}
!7 = !{i64 166}
!8 = !{i64 170}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 187}
!12 = !{i64 194}
!13 = !{i64 201}
!14 = !{i64 208}
!15 = !{i64 211}
!16 = !{i64 216}
!17 = !{i64 219}
!18 = !{i64 222}
!19 = !{i64 225}
!20 = !{i64 230}
!21 = !{i64 232}
!22 = !{i64 236}
!23 = !{i64 237}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 8}
!28 = !{i64 11}
!29 = !{i64 15}
!30 = !{i64 22}
!31 = !{i64 25}
!32 = !{i64 28}
!33 = !{i64 34}
!34 = !{i64 38}
!35 = !{i64 41}
!36 = !{i64 44}
!37 = !{i64 46}
!38 = !{i64 48}
!39 = !{i64 51}
!40 = !{i64 55}
!41 = !{i64 58}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 69}
!46 = !{i64 72}
!47 = !{i64 77}
!48 = !{i64 87}
!49 = !{i64 90}
!50 = !{i64 94}
!51 = !{i64 96}
!52 = !{i64 100}
!53 = !{i64 103}
!54 = !{i64 107}
!55 = !{i64 111}
!56 = !{i64 115}
!57 = !{i64 119}
!58 = !{i64 121}
!59 = !{i64 126}
!60 = !{i64 129}
!61 = !{i64 133}
!62 = !{i64 134}
