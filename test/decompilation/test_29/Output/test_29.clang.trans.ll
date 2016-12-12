; ModuleID = 'Output/test_29.clang.trans.bc'
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
  %3 = sub i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 48, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 48, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %21 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !5
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !5
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %24, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %25 = add i64 %RBP_val.5, -36, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !6
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !6
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %28, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %block_0x90
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %29 = add i64 %RBP_val.6, -36, !mcsema_real_eip !7
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !7
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !7
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !7
  %33 = load i32, i32* %32, !mcsema_real_eip !7
  %34 = sub i32 %33, 5, !mcsema_real_eip !7
  %35 = xor i32 %34, %33, !mcsema_real_eip !7
  %36 = xor i32 %35, 5, !mcsema_real_eip !7
  %37 = and i32 %36, 16, !mcsema_real_eip !7
  %38 = icmp ne i32 %37, 0, !mcsema_real_eip !7
  store i1 %38, i1* %AF, !mcsema_real_eip !7
  %39 = trunc i32 %34 to i8, !mcsema_real_eip !7
  %40 = call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !7
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !7
  %42 = xor i1 %41, true, !mcsema_real_eip !7
  store i1 %42, i1* %PF, !mcsema_real_eip !7
  %43 = icmp eq i32 %34, 0, !mcsema_real_eip !7
  store i1 %43, i1* %ZF, !mcsema_real_eip !7
  %44 = lshr i32 %34, 31, !mcsema_real_eip !7
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !7
  store i1 %45, i1* %SF, !mcsema_real_eip !7
  %46 = icmp ult i32 %33, 5, !mcsema_real_eip !7
  store i1 %46, i1* %CF, !mcsema_real_eip !7
  %47 = xor i32 %33, 5, !mcsema_real_eip !7
  %48 = xor i32 %33, %34, !mcsema_real_eip !7
  %49 = and i32 %47, %48, !mcsema_real_eip !7
  %50 = lshr i32 %49, 31, !mcsema_real_eip !7
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !7
  store i1 %51, i1* %OF, !mcsema_real_eip !7
  %52 = load i1, i1* %OF, !mcsema_real_eip !8
  %53 = load i1, i1* %SF, !mcsema_real_eip !8
  %54 = icmp eq i1 %53, %52, !mcsema_real_eip !8
  br i1 %54, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !9
  %55 = add i64 %RBP_val.14, -32, !mcsema_real_eip !9
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !9
  %57 = ptrtoint i64* %56 to i64, !mcsema_real_eip !9
  store i64 %57, i64* %XSI, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !10
  %58 = add i64 %RBP_val.15, -32, !mcsema_real_eip !10
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !10
  %60 = ptrtoint i64* %59 to i64, !mcsema_real_eip !10
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !10
  store i32 5, i32* %61, !mcsema_real_eip !10
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !11
  %62 = add i64 %RBP_val.16, -28, !mcsema_real_eip !11
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !11
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !11
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !11
  store i32 6, i32* %65, !mcsema_real_eip !11
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !12
  %66 = add i64 %RBP_val.17, -24, !mcsema_real_eip !12
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !12
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !12
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !12
  store i32 7, i32* %69, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !13
  %70 = add i64 %RBP_val.18, -20, !mcsema_real_eip !13
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !13
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !13
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !13
  store i32 8, i32* %73, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %74 = add i64 %RBP_val.19, -36, !mcsema_real_eip !14
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !14
  %76 = ptrtoint i64* %75 to i64, !mcsema_real_eip !14
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !14
  %78 = load i32, i32* %77, !mcsema_real_eip !14
  %79 = zext i32 %78 to i64, !mcsema_real_eip !14
  store i64 %79, i64* %XDI, !mcsema_real_eip !14
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %80 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %81, !mcsema_real_eip !15
  store i64 %80, i64* %XSP, !mcsema_real_eip !15
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %82 = add i64 %RBP_val.21, -36, !mcsema_real_eip !16
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !16
  %84 = ptrtoint i64* %83 to i64, !mcsema_real_eip !16
  %85 = inttoptr i64 %84 to i32*, !mcsema_real_eip !16
  %86 = load i32, i32* %85, !mcsema_real_eip !16
  %87 = zext i32 %86 to i64, !mcsema_real_eip !16
  store i64 %87, i64* %XAX, !mcsema_real_eip !16
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !17
  %88 = add i32 1, %EAX_val.23, !mcsema_real_eip !17
  %89 = xor i32 %88, %EAX_val.23, !mcsema_real_eip !17
  %90 = xor i32 %89, 1, !mcsema_real_eip !17
  %91 = and i32 %90, 16, !mcsema_real_eip !17
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !17
  store i1 %92, i1* %AF, !mcsema_real_eip !17
  %93 = lshr i32 %88, 31, !mcsema_real_eip !17
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !17
  store i1 %94, i1* %SF, !mcsema_real_eip !17
  %95 = icmp eq i32 %88, 0, !mcsema_real_eip !17
  store i1 %95, i1* %ZF, !mcsema_real_eip !17
  %96 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !17
  %97 = xor i32 %96, -1, !mcsema_real_eip !17
  %98 = xor i32 %EAX_val.23, %88, !mcsema_real_eip !17
  %99 = and i32 %97, %98, !mcsema_real_eip !17
  %100 = lshr i32 %99, 31, !mcsema_real_eip !17
  %101 = and i32 %100, 1, !mcsema_real_eip !17
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !17
  store i1 %102, i1* %OF, !mcsema_real_eip !17
  %103 = trunc i32 %88 to i8, !mcsema_real_eip !17
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !17
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !17
  %106 = xor i1 %105, true, !mcsema_real_eip !17
  store i1 %106, i1* %PF, !mcsema_real_eip !17
  %107 = icmp ult i32 %88, %EAX_val.23, !mcsema_real_eip !17
  store i1 %107, i1* %CF, !mcsema_real_eip !17
  %108 = zext i32 %88 to i64, !mcsema_real_eip !17
  store i64 %108, i64* %XAX, !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %109 = add i64 %RBP_val.24, -36, !mcsema_real_eip !18
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !18
  %EAX.25 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.26 = load i32, i32* %EAX.25, !mcsema_real_eip !18
  %111 = ptrtoint i64* %110 to i64, !mcsema_real_eip !18
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %112, !mcsema_real_eip !18
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !20
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !20
  %113 = xor i32 %EAX_val.8, %EAX_val.10, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  %114 = lshr i32 %113, 31, !mcsema_real_eip !20
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !20
  store i1 %115, i1* %SF, !mcsema_real_eip !20
  %116 = icmp eq i32 %113, 0, !mcsema_real_eip !20
  store i1 %116, i1* %ZF, !mcsema_real_eip !20
  %117 = trunc i32 %113 to i8, !mcsema_real_eip !20
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !20
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !20
  %120 = xor i1 %119, true, !mcsema_real_eip !20
  store i1 %120, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  %121 = zext i32 %113 to i64, !mcsema_real_eip !20
  store i64 %121, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !21
  %122 = add i64 48, %RSP_val.11, !mcsema_real_eip !21
  %123 = xor i64 %122, %RSP_val.11, !mcsema_real_eip !21
  %124 = xor i64 %123, 48, !mcsema_real_eip !21
  %125 = and i64 %124, 16, !mcsema_real_eip !21
  %126 = icmp ne i64 %125, 0, !mcsema_real_eip !21
  store i1 %126, i1* %AF, !mcsema_real_eip !21
  %127 = lshr i64 %122, 63, !mcsema_real_eip !21
  %128 = trunc i64 %127 to i1, !mcsema_real_eip !21
  store i1 %128, i1* %SF, !mcsema_real_eip !21
  %129 = icmp eq i64 %122, 0, !mcsema_real_eip !21
  store i1 %129, i1* %ZF, !mcsema_real_eip !21
  %130 = xor i64 %RSP_val.11, 48, !mcsema_real_eip !21
  %131 = xor i64 %130, -1, !mcsema_real_eip !21
  %132 = xor i64 %RSP_val.11, %122, !mcsema_real_eip !21
  %133 = and i64 %131, %132, !mcsema_real_eip !21
  %134 = lshr i64 %133, 63, !mcsema_real_eip !21
  %135 = and i64 %134, 1, !mcsema_real_eip !21
  %136 = trunc i64 %135 to i1, !mcsema_real_eip !21
  store i1 %136, i1* %OF, !mcsema_real_eip !21
  %137 = trunc i64 %122 to i8, !mcsema_real_eip !21
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !21
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !21
  %140 = xor i1 %139, true, !mcsema_real_eip !21
  store i1 %140, i1* %PF, !mcsema_real_eip !21
  %141 = icmp ult i64 %122, %RSP_val.11, !mcsema_real_eip !21
  store i1 %141, i1* %CF, !mcsema_real_eip !21
  store i64 %122, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !22
  %142 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !22
  %143 = load i64, i64* %142, !mcsema_real_eip !22
  store i64 %143, i64* %XBP, !mcsema_real_eip !22
  %144 = add i64 %RSP_val.12, 8, !mcsema_real_eip !22
  store i64 %144, i64* %XSP, !mcsema_real_eip !22
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !23
  %145 = add i64 %RSP_val.13, 8, !mcsema_real_eip !23
  %146 = inttoptr i64 %RSP_val.13 to i64*, !mcsema_real_eip !23
  %147 = load i64, i64* %146, !mcsema_real_eip !23
  store i64 %147, i64* %XIP, !mcsema_real_eip !23
  store i64 %145, i64* %XSP, !mcsema_real_eip !23
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
  %3 = sub i64 %RSP_val.30, 32, !mcsema_real_eip !26
  %4 = xor i64 %3, %RSP_val.30, !mcsema_real_eip !26
  %5 = xor i64 %4, 32, !mcsema_real_eip !26
  %6 = and i64 %5, 16, !mcsema_real_eip !26
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !26
  store i1 %7, i1* %AF, !mcsema_real_eip !26
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !26
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !26
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !26
  %11 = xor i1 %10, true, !mcsema_real_eip !26
  store i1 %11, i1* %PF, !mcsema_real_eip !26
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !26
  store i1 %12, i1* %ZF, !mcsema_real_eip !26
  %13 = lshr i64 %3, 63, !mcsema_real_eip !26
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !26
  store i1 %14, i1* %SF, !mcsema_real_eip !26
  %15 = icmp ult i64 %RSP_val.30, 32, !mcsema_real_eip !26
  store i1 %15, i1* %CF, !mcsema_real_eip !26
  %16 = xor i64 %RSP_val.30, 32, !mcsema_real_eip !26
  %17 = xor i64 %RSP_val.30, %3, !mcsema_real_eip !26
  %18 = and i64 %16, %17, !mcsema_real_eip !26
  %19 = lshr i64 %18, 63, !mcsema_real_eip !26
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !26
  store i1 %20, i1* %OF, !mcsema_real_eip !26
  store i64 %3, i64* %XSP, !mcsema_real_eip !26
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !27
  %21 = add i64 %RBP_val.31, -4, !mcsema_real_eip !27
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !27
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !27
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !27
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %24, !mcsema_real_eip !27
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !28
  %25 = add i64 %RBP_val.34, -16, !mcsema_real_eip !28
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !28
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %26, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !29
  %27 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !29
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !29
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %30, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %block_0x0
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !30
  %31 = add i64 %RBP_val.37, -20, !mcsema_real_eip !30
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !30
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !30
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !30
  %35 = load i32, i32* %34, !mcsema_real_eip !30
  %36 = zext i32 %35 to i64, !mcsema_real_eip !30
  store i64 %36, i64* %XAX, !mcsema_real_eip !30
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !31
  %37 = add i64 %RBP_val.38, -4, !mcsema_real_eip !31
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !31
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !31
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !31
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !31
  %41 = load i32, i32* %40, !mcsema_real_eip !31
  %42 = sub i32 %EAX_val.40, %41, !mcsema_real_eip !31
  %43 = xor i32 %42, %EAX_val.40, !mcsema_real_eip !31
  %44 = xor i32 %43, %41, !mcsema_real_eip !31
  %45 = and i32 %44, 16, !mcsema_real_eip !31
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !31
  store i1 %46, i1* %AF, !mcsema_real_eip !31
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !31
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !31
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !31
  %50 = xor i1 %49, true, !mcsema_real_eip !31
  store i1 %50, i1* %PF, !mcsema_real_eip !31
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !31
  store i1 %51, i1* %ZF, !mcsema_real_eip !31
  %52 = lshr i32 %42, 31, !mcsema_real_eip !31
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !31
  store i1 %53, i1* %SF, !mcsema_real_eip !31
  %54 = icmp ult i32 %EAX_val.40, %41, !mcsema_real_eip !31
  store i1 %54, i1* %CF, !mcsema_real_eip !31
  %55 = xor i32 %EAX_val.40, %41, !mcsema_real_eip !31
  %56 = xor i32 %EAX_val.40, %42, !mcsema_real_eip !31
  %57 = and i32 %55, %56, !mcsema_real_eip !31
  %58 = lshr i32 %57, 31, !mcsema_real_eip !31
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !31
  store i1 %59, i1* %OF, !mcsema_real_eip !31
  %60 = load i1, i1* %ZF, !mcsema_real_eip !32
  %61 = icmp eq i1 %60, true, !mcsema_real_eip !32
  %62 = load i1, i1* %CF, !mcsema_real_eip !32
  %63 = icmp eq i1 %62, true, !mcsema_real_eip !32
  %64 = or i1 %63, %61, !mcsema_real_eip !32
  br i1 %64, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !33
  %65 = add i64 %RBP_val.65, -16, !mcsema_real_eip !33
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !33
  %67 = load i64, i64* %66, !mcsema_real_eip !33
  store i64 %67, i64* %XAX, !mcsema_real_eip !33
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !34
  %68 = add i64 %RBP_val.66, -20, !mcsema_real_eip !34
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !34
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !34
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !34
  %72 = load i32, i32* %71, !mcsema_real_eip !34
  %73 = zext i32 %72 to i64, !mcsema_real_eip !34
  store i64 %73, i64* %XCX, !mcsema_real_eip !34
  %ECX.67 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.68 = load i32, i32* %ECX.67, !mcsema_real_eip !35
  %74 = sub i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %75 = xor i32 %74, %ECX_val.68, !mcsema_real_eip !35
  %76 = xor i32 %75, 1, !mcsema_real_eip !35
  %77 = and i32 %76, 16, !mcsema_real_eip !35
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !35
  store i1 %78, i1* %AF, !mcsema_real_eip !35
  %79 = trunc i32 %74 to i8, !mcsema_real_eip !35
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !35
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !35
  %82 = xor i1 %81, true, !mcsema_real_eip !35
  store i1 %82, i1* %PF, !mcsema_real_eip !35
  %83 = icmp eq i32 %74, 0, !mcsema_real_eip !35
  store i1 %83, i1* %ZF, !mcsema_real_eip !35
  %84 = lshr i32 %74, 31, !mcsema_real_eip !35
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !35
  store i1 %85, i1* %SF, !mcsema_real_eip !35
  %86 = icmp ult i32 %ECX_val.68, 1, !mcsema_real_eip !35
  store i1 %86, i1* %CF, !mcsema_real_eip !35
  %87 = xor i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %88 = xor i32 %ECX_val.68, %74, !mcsema_real_eip !35
  %89 = and i32 %87, %88, !mcsema_real_eip !35
  %90 = lshr i32 %89, 31, !mcsema_real_eip !35
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !35
  store i1 %91, i1* %OF, !mcsema_real_eip !35
  %92 = zext i32 %74 to i64, !mcsema_real_eip !35
  store i64 %92, i64* %XCX, !mcsema_real_eip !35
  %ECX.69 = bitcast i64* %XCX to i32*, !mcsema_real_eip !36
  %ECX_val.70 = load i32, i32* %ECX.69, !mcsema_real_eip !36
  %93 = zext i32 %ECX_val.70 to i64, !mcsema_real_eip !36
  store i64 %93, i64* %XCX, !mcsema_real_eip !36
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.72 = load i32, i32* %ECX.71, !mcsema_real_eip !37
  %94 = zext i32 %ECX_val.72 to i64, !mcsema_real_eip !37
  store i64 %94, i64* %XDX, !mcsema_real_eip !37
  %RAX_val.73 = load i64, i64* %XAX, !mcsema_real_eip !38
  %95 = add i64 %RAX_val.73, 0, !mcsema_real_eip !38
  %RDX_val.74 = load i64, i64* %XDX, !mcsema_real_eip !38
  %96 = mul i64 %RDX_val.74, 4, !mcsema_real_eip !38
  %97 = add i64 %95, %96, !mcsema_real_eip !38
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !38
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !38
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !38
  %101 = load i32, i32* %100, !mcsema_real_eip !38
  %102 = zext i32 %101 to i64, !mcsema_real_eip !38
  store i64 %102, i64* %XCX, !mcsema_real_eip !38
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !39
  %103 = add i64 %RBP_val.75, -16, !mcsema_real_eip !39
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !39
  %105 = load i64, i64* %104, !mcsema_real_eip !39
  store i64 %105, i64* %XAX, !mcsema_real_eip !39
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !40
  %106 = add i64 %RBP_val.76, -20, !mcsema_real_eip !40
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !40
  %108 = ptrtoint i64* %107 to i64, !mcsema_real_eip !40
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !40
  %110 = load i32, i32* %109, !mcsema_real_eip !40
  %111 = zext i32 %110 to i64, !mcsema_real_eip !40
  store i64 %111, i64* %XSI, !mcsema_real_eip !40
  %ESI.77 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.78 = load i32, i32* %ESI.77, !mcsema_real_eip !41
  %112 = zext i32 %ESI_val.78 to i64, !mcsema_real_eip !41
  store i64 %112, i64* %XDX, !mcsema_real_eip !41
  %RAX_val.79 = load i64, i64* %XAX, !mcsema_real_eip !42
  %113 = add i64 %RAX_val.79, 0, !mcsema_real_eip !42
  %RDX_val.80 = load i64, i64* %XDX, !mcsema_real_eip !42
  %114 = mul i64 %RDX_val.80, 4, !mcsema_real_eip !42
  %115 = add i64 %113, %114, !mcsema_real_eip !42
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !42
  %ECX.81 = bitcast i64* %XCX to i32*, !mcsema_real_eip !42
  %ECX_val.82 = load i32, i32* %ECX.81, !mcsema_real_eip !42
  %117 = ptrtoint i64* %116 to i64, !mcsema_real_eip !42
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !42
  store i32 %ECX_val.82, i32* %118, !mcsema_real_eip !42
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !43
  %119 = add i64 %RBP_val.83, -20, !mcsema_real_eip !43
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !43
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !43
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !43
  %123 = load i32, i32* %122, !mcsema_real_eip !43
  %124 = zext i32 %123 to i64, !mcsema_real_eip !43
  store i64 %124, i64* %XAX, !mcsema_real_eip !43
  %EAX.84 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.85 = load i32, i32* %EAX.84, !mcsema_real_eip !44
  %125 = add i32 -1, %EAX_val.85, !mcsema_real_eip !44
  %126 = xor i32 %125, %EAX_val.85, !mcsema_real_eip !44
  %127 = xor i32 %126, -1, !mcsema_real_eip !44
  %128 = and i32 %127, 16, !mcsema_real_eip !44
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !44
  store i1 %129, i1* %AF, !mcsema_real_eip !44
  %130 = lshr i32 %125, 31, !mcsema_real_eip !44
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !44
  store i1 %131, i1* %SF, !mcsema_real_eip !44
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !44
  store i1 %132, i1* %ZF, !mcsema_real_eip !44
  %133 = xor i32 %EAX_val.85, -1, !mcsema_real_eip !44
  %134 = xor i32 %133, -1, !mcsema_real_eip !44
  %135 = xor i32 %EAX_val.85, %125, !mcsema_real_eip !44
  %136 = and i32 %134, %135, !mcsema_real_eip !44
  %137 = lshr i32 %136, 31, !mcsema_real_eip !44
  %138 = and i32 %137, 1, !mcsema_real_eip !44
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !44
  store i1 %139, i1* %OF, !mcsema_real_eip !44
  %140 = trunc i32 %125 to i8, !mcsema_real_eip !44
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !44
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !44
  %143 = xor i1 %142, true, !mcsema_real_eip !44
  store i1 %143, i1* %PF, !mcsema_real_eip !44
  %144 = icmp ult i32 %125, %EAX_val.85, !mcsema_real_eip !44
  store i1 %144, i1* %CF, !mcsema_real_eip !44
  %145 = zext i32 %125 to i64, !mcsema_real_eip !44
  store i64 %145, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !45
  %146 = add i64 %RBP_val.86, -20, !mcsema_real_eip !45
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !45
  %EAX.87 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.88 = load i32, i32* %EAX.87, !mcsema_real_eip !45
  %148 = ptrtoint i64* %147 to i64, !mcsema_real_eip !45
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.88, i32* %149, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, !mcsema_real_eip !47
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !48
  %150 = add i64 %RBP_val.41, -4, !mcsema_real_eip !48
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !48
  %152 = ptrtoint i64* %151 to i64, !mcsema_real_eip !48
  %153 = inttoptr i64 %152 to i32*, !mcsema_real_eip !48
  %154 = load i32, i32* %153, !mcsema_real_eip !48
  %155 = zext i32 %154 to i64, !mcsema_real_eip !48
  store i64 %155, i64* %XSI, !mcsema_real_eip !48
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !49
  %156 = add i64 %RBP_val.42, -16, !mcsema_real_eip !49
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !49
  %158 = load i64, i64* %157, !mcsema_real_eip !49
  store i64 %158, i64* %XAX, !mcsema_real_eip !49
  %RAX_val.43 = load i64, i64* %XAX, !mcsema_real_eip !50
  %159 = add i64 %RAX_val.43, 0, !mcsema_real_eip !50
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !50
  %161 = ptrtoint i64* %160 to i64, !mcsema_real_eip !50
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !50
  %163 = load i32, i32* %162, !mcsema_real_eip !50
  %164 = zext i32 %163 to i64, !mcsema_real_eip !50
  store i64 %164, i64* %XDX, !mcsema_real_eip !50
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !51
  %165 = add i64 %RBP_val.44, -16, !mcsema_real_eip !51
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !51
  %167 = load i64, i64* %166, !mcsema_real_eip !51
  store i64 %167, i64* %XAX, !mcsema_real_eip !51
  %RAX_val.45 = load i64, i64* %XAX, !mcsema_real_eip !52
  %168 = add i64 %RAX_val.45, 4, !mcsema_real_eip !52
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !52
  %170 = ptrtoint i64* %169 to i64, !mcsema_real_eip !52
  %171 = inttoptr i64 %170 to i32*, !mcsema_real_eip !52
  %172 = load i32, i32* %171, !mcsema_real_eip !52
  %173 = zext i32 %172 to i64, !mcsema_real_eip !52
  store i64 %173, i64* %XCX, !mcsema_real_eip !52
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !53
  %174 = add i64 %RBP_val.46, -16, !mcsema_real_eip !53
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !53
  %176 = load i64, i64* %175, !mcsema_real_eip !53
  store i64 %176, i64* %XAX, !mcsema_real_eip !53
  %RAX_val.47 = load i64, i64* %XAX, !mcsema_real_eip !54
  %177 = add i64 %RAX_val.47, 8, !mcsema_real_eip !54
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !54
  %179 = ptrtoint i64* %178 to i64, !mcsema_real_eip !54
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !54
  %181 = load i32, i32* %180, !mcsema_real_eip !54
  %182 = zext i32 %181 to i64, !mcsema_real_eip !54
  store i64 %182, i64* %R8, !mcsema_real_eip !54
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !55
  %183 = add i64 %RBP_val.48, -16, !mcsema_real_eip !55
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !55
  %185 = load i64, i64* %184, !mcsema_real_eip !55
  store i64 %185, i64* %XAX, !mcsema_real_eip !55
  %RAX_val.49 = load i64, i64* %XAX, !mcsema_real_eip !56
  %186 = add i64 %RAX_val.49, 12, !mcsema_real_eip !56
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !56
  %188 = ptrtoint i64* %187 to i64, !mcsema_real_eip !56
  %189 = inttoptr i64 %188 to i32*, !mcsema_real_eip !56
  %190 = load i32, i32* %189, !mcsema_real_eip !56
  %191 = zext i32 %190 to i64, !mcsema_real_eip !56
  store i64 %191, i64* %R9, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, !mcsema_real_eip !57
  %RDI_val.51 = load i64, i64* %XDI, !mcsema_real_eip !58
  %RSI_val.52 = load i64, i64* %XSI, !mcsema_real_eip !58
  %RDX_val.53 = load i64, i64* %XDX, !mcsema_real_eip !58
  %RCX_val.54 = load i64, i64* %XCX, !mcsema_real_eip !58
  %R8_val.55 = load i64, i64* %R8, !mcsema_real_eip !58
  %R9_val.56 = load i64, i64* %R9, !mcsema_real_eip !58
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !58
  %192 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !58
  %193 = load i64, i64* %192, !mcsema_real_eip !58
  %194 = add i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !58
  %196 = load i64, i64* %195, !mcsema_real_eip !58
  %197 = add i64 %194, 8, !mcsema_real_eip !58
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !58
  %199 = load i64, i64* %198, !mcsema_real_eip !58
  %200 = add i64 %197, 8, !mcsema_real_eip !58
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !58
  %202 = load i64, i64* %201, !mcsema_real_eip !58
  %203 = add i64 %200, 8, !mcsema_real_eip !58
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !58
  %205 = load i64, i64* %204, !mcsema_real_eip !58
  %206 = add i64 %203, 8, !mcsema_real_eip !58
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !58
  %208 = load i64, i64* %207, !mcsema_real_eip !58
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !58
  %209 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !58
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %210, !mcsema_real_eip !58
  store i64 %209, i64* %XSP, !mcsema_real_eip !58
  %211 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.51, i64 %RSI_val.52, i64 %RDX_val.53, i64 %RCX_val.54, i64 %R8_val.55, i64 %R9_val.56, i64 %193, i64 %196, i64 %199, i64 %202, i64 %205, i64 %208), !mcsema_real_eip !58
  store i64 %211, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !59
  %212 = add i64 %RBP_val.59, -24, !mcsema_real_eip !59
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !59
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !59
  %214 = ptrtoint i64* %213 to i64, !mcsema_real_eip !59
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.61, i32* %215, !mcsema_real_eip !59
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !60
  %216 = add i64 32, %RSP_val.62, !mcsema_real_eip !60
  %217 = xor i64 %216, %RSP_val.62, !mcsema_real_eip !60
  %218 = xor i64 %217, 32, !mcsema_real_eip !60
  %219 = and i64 %218, 16, !mcsema_real_eip !60
  %220 = icmp ne i64 %219, 0, !mcsema_real_eip !60
  store i1 %220, i1* %AF, !mcsema_real_eip !60
  %221 = lshr i64 %216, 63, !mcsema_real_eip !60
  %222 = trunc i64 %221 to i1, !mcsema_real_eip !60
  store i1 %222, i1* %SF, !mcsema_real_eip !60
  %223 = icmp eq i64 %216, 0, !mcsema_real_eip !60
  store i1 %223, i1* %ZF, !mcsema_real_eip !60
  %224 = xor i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %225 = xor i64 %224, -1, !mcsema_real_eip !60
  %226 = xor i64 %RSP_val.62, %216, !mcsema_real_eip !60
  %227 = and i64 %225, %226, !mcsema_real_eip !60
  %228 = lshr i64 %227, 63, !mcsema_real_eip !60
  %229 = and i64 %228, 1, !mcsema_real_eip !60
  %230 = trunc i64 %229 to i1, !mcsema_real_eip !60
  store i1 %230, i1* %OF, !mcsema_real_eip !60
  %231 = trunc i64 %216 to i8, !mcsema_real_eip !60
  %232 = call i8 @llvm.ctpop.i8(i8 %231), !mcsema_real_eip !60
  %233 = trunc i8 %232 to i1, !mcsema_real_eip !60
  %234 = xor i1 %233, true, !mcsema_real_eip !60
  store i1 %234, i1* %PF, !mcsema_real_eip !60
  %235 = icmp ult i64 %216, %RSP_val.62, !mcsema_real_eip !60
  store i1 %235, i1* %CF, !mcsema_real_eip !60
  store i64 %216, i64* %XSP, !mcsema_real_eip !60
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !61
  %236 = inttoptr i64 %RSP_val.63 to i64*, !mcsema_real_eip !61
  %237 = load i64, i64* %236, !mcsema_real_eip !61
  store i64 %237, i64* %XBP, !mcsema_real_eip !61
  %238 = add i64 %RSP_val.63, 8, !mcsema_real_eip !61
  store i64 %238, i64* %XSP, !mcsema_real_eip !61
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !62
  %239 = add i64 %RSP_val.64, 8, !mcsema_real_eip !62
  %240 = inttoptr i64 %RSP_val.64 to i64*, !mcsema_real_eip !62
  %241 = load i64, i64* %240, !mcsema_real_eip !62
  store i64 %241, i64* %XIP, !mcsema_real_eip !62
  store i64 %239, i64* %XSP, !mcsema_real_eip !62
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
