; ModuleID = 'Output/test_7_1.clang.bc'
source_filename = "Output/test_7_1.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c".\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %3 = sext i8 80 to i64, !mcsema_real_eip !4
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
  %26 = add i64 %RBP_val.5, -52, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %29, !mcsema_real_eip !6
  br label %block_0x46, !mcsema_real_eip !7

block_0x46:                                       ; preds = %block_0x50, %block_0x30
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %30 = add i64 %RBP_val.6, -52, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !7
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !7
  %34 = load i32, i32* %33, !mcsema_real_eip !7
  %35 = sub i32 %34, 10, !mcsema_real_eip !7
  %36 = xor i32 %35, %34, !mcsema_real_eip !7
  %37 = xor i32 %36, 10, !mcsema_real_eip !7
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
  %47 = icmp ult i32 %34, 10, !mcsema_real_eip !7
  store i1 %47, i1* %CF, !mcsema_real_eip !7
  %48 = xor i32 %34, 10, !mcsema_real_eip !7
  %49 = xor i32 %34, %35, !mcsema_real_eip !7
  %50 = and i32 %48, %49, !mcsema_real_eip !7
  %51 = lshr i32 %50, 31, !mcsema_real_eip !7
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !7
  store i1 %52, i1* %OF, !mcsema_real_eip !7
  %53 = load i1, i1* %OF, !mcsema_real_eip !8
  %54 = load i1, i1* %SF, !mcsema_real_eip !8
  %55 = icmp eq i1 %54, %53, !mcsema_real_eip !8
  br i1 %55, label %block_0x6a, label %block_0x50, !mcsema_real_eip !8

block_0x50:                                       ; preds = %block_0x46
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !9
  %56 = add i64 %RBP_val.48, -52, !mcsema_real_eip !9
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !9
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !9
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !9
  %60 = load i32, i32* %59, !mcsema_real_eip !9
  %61 = sext i32 %60 to i64, !mcsema_real_eip !9
  store i64 %61, i64* %XAX, !mcsema_real_eip !9
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !10
  %62 = add i64 %RBP_val.49, -48, !mcsema_real_eip !10
  %RAX_val.50 = load i64, i64* %XAX, !mcsema_real_eip !10
  %63 = mul i64 %RAX_val.50, 4, !mcsema_real_eip !10
  %64 = add i64 %62, %63, !mcsema_real_eip !10
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !10
  %66 = ptrtoint i64* %65 to i64, !mcsema_real_eip !10
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !10
  store i32 21, i32* %67, !mcsema_real_eip !10
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !11
  %68 = add i64 %RBP_val.51, -52, !mcsema_real_eip !11
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !11
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !11
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !11
  %72 = load i32, i32* %71, !mcsema_real_eip !11
  %73 = zext i32 %72 to i64, !mcsema_real_eip !11
  store i64 %73, i64* %XAX, !mcsema_real_eip !11
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !12
  %74 = add i32 1, %EAX_val.53, !mcsema_real_eip !12
  %75 = xor i32 %74, %EAX_val.53, !mcsema_real_eip !12
  %76 = xor i32 %75, 1, !mcsema_real_eip !12
  %77 = and i32 %76, 16, !mcsema_real_eip !12
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !12
  store i1 %78, i1* %AF, !mcsema_real_eip !12
  %79 = lshr i32 %74, 31, !mcsema_real_eip !12
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !12
  store i1 %80, i1* %SF, !mcsema_real_eip !12
  %81 = icmp eq i32 %74, 0, !mcsema_real_eip !12
  store i1 %81, i1* %ZF, !mcsema_real_eip !12
  %82 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !12
  %83 = xor i32 %82, -1, !mcsema_real_eip !12
  %84 = xor i32 %EAX_val.53, %74, !mcsema_real_eip !12
  %85 = and i32 %83, %84, !mcsema_real_eip !12
  %86 = lshr i32 %85, 31, !mcsema_real_eip !12
  %87 = and i32 %86, 1, !mcsema_real_eip !12
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !12
  store i1 %88, i1* %OF, !mcsema_real_eip !12
  %89 = trunc i32 %74 to i8, !mcsema_real_eip !12
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !12
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !12
  %92 = xor i1 %91, true, !mcsema_real_eip !12
  store i1 %92, i1* %PF, !mcsema_real_eip !12
  %93 = icmp ult i32 %74, %EAX_val.53, !mcsema_real_eip !12
  store i1 %93, i1* %CF, !mcsema_real_eip !12
  %94 = zext i32 %74 to i64, !mcsema_real_eip !12
  store i64 %94, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !13
  %95 = add i64 %RBP_val.54, -52, !mcsema_real_eip !13
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !13
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !13
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !13
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.56, i32* %98, !mcsema_real_eip !13
  br label %block_0x46, !mcsema_real_eip !14

block_0x6a:                                       ; preds = %block_0x46
  %99 = zext i32 10 to i64, !mcsema_real_eip !15
  store i64 %99, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !16
  %100 = add i64 %RBP_val.7, -48, !mcsema_real_eip !16
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !16
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !16
  store i64 %102, i64* %XCX, !mcsema_real_eip !16
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !17
  %103 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !17
  store i64 %103, i64* %XDI, !mcsema_real_eip !17
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !18
  %104 = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !18
  store i64 %104, i64* %XSI, !mcsema_real_eip !18
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !19
  %105 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !19
  store i64 %105, i64* %XDX, !mcsema_real_eip !19
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !20
  %106 = add i64 %RBP_val.14, -64, !mcsema_real_eip !20
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !20
  %RCX_val.15 = load i64, i64* %XCX, !mcsema_real_eip !20
  store i64 %RCX_val.15, i64* %107, !mcsema_real_eip !20
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !21
  %108 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !21
  store i64 %108, i64* %XCX, !mcsema_real_eip !21
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !22
  %109 = zext i32 %EAX_val.19 to i64, !mcsema_real_eip !22
  store i64 %109, i64* %R8, !mcsema_real_eip !22
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !23
  %110 = zext i32 %EAX_val.21 to i64, !mcsema_real_eip !23
  store i64 %110, i64* %R9, !mcsema_real_eip !23
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !24
  %111 = add i64 %RBP_val.22, -64, !mcsema_real_eip !24
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !24
  %113 = load i64, i64* %112, !mcsema_real_eip !24
  store i64 %113, i64* %R10, !mcsema_real_eip !24
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !25
  %114 = add i64 %RSP_val.23, 0, !mcsema_real_eip !25
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !25
  %R10_val.24 = load i64, i64* %R10, !mcsema_real_eip !25
  store i64 %R10_val.24, i64* %115, !mcsema_real_eip !25
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !26
  %116 = sub i64 %RSP_val.25, 8, !mcsema_real_eip !26
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %117, !mcsema_real_eip !26
  store i64 %116, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !26
  %118 = getelementptr %0, %0* @data_0xb7, i64 0, i32 0, !mcsema_real_eip !27
  %119 = ptrtoint [4 x i8]* %118 to i64, !mcsema_real_eip !27
  %120 = add i64 %119, 0, !mcsema_real_eip !27
  store i64 %120, i64* %XDI, !mcsema_real_eip !27
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !28
  %121 = add i64 %RBP_val.26, -56, !mcsema_real_eip !28
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !28
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !28
  %123 = ptrtoint i64* %122 to i64, !mcsema_real_eip !28
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.28, i32* %124, !mcsema_real_eip !28
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !29
  %125 = add i64 %RBP_val.29, -56, !mcsema_real_eip !29
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !29
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !29
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !29
  %129 = load i32, i32* %128, !mcsema_real_eip !29
  %130 = zext i32 %129 to i64, !mcsema_real_eip !29
  store i64 %130, i64* %XSI, !mcsema_real_eip !29
  %AL.30 = bitcast i64* %XAX to i8*, !mcsema_real_eip !30
  store i8 0, i8* %AL.30, !mcsema_real_eip !30
  %RDI_val.31 = load i64, i64* %XDI, !mcsema_real_eip !31
  %RSI_val.32 = load i64, i64* %XSI, !mcsema_real_eip !31
  %RDX_val.33 = load i64, i64* %XDX, !mcsema_real_eip !31
  %RCX_val.34 = load i64, i64* %XCX, !mcsema_real_eip !31
  %R8_val.35 = load i64, i64* %R8, !mcsema_real_eip !31
  %R9_val.36 = load i64, i64* %R9, !mcsema_real_eip !31
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !31
  %131 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !31
  %132 = load i64, i64* %131, !mcsema_real_eip !31
  %133 = add i64 %RSP_val.37, 8, !mcsema_real_eip !31
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !31
  %135 = load i64, i64* %134, !mcsema_real_eip !31
  %136 = add i64 %133, 8, !mcsema_real_eip !31
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !31
  %138 = load i64, i64* %137, !mcsema_real_eip !31
  %139 = add i64 %136, 8, !mcsema_real_eip !31
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !31
  %141 = load i64, i64* %140, !mcsema_real_eip !31
  %142 = add i64 %139, 8, !mcsema_real_eip !31
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !31
  %144 = load i64, i64* %143, !mcsema_real_eip !31
  %145 = add i64 %142, 8, !mcsema_real_eip !31
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !31
  %147 = load i64, i64* %146, !mcsema_real_eip !31
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !31
  %148 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !31
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !31
  store i64 -2415393069852865332, i64* %149, !mcsema_real_eip !31
  store i64 %148, i64* %XSP, !mcsema_real_eip !31
  %150 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.31, i64 %RSI_val.32, i64 %RDX_val.33, i64 %RCX_val.34, i64 %R8_val.35, i64 %R9_val.36, i64 %132, i64 %135, i64 %138, i64 %141, i64 %144, i64 %147), !mcsema_real_eip !31
  store i64 %150, i64* %XAX, !mcsema_real_eip !31
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !32
  %151 = add i64 %RBP_val.39, -56, !mcsema_real_eip !32
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !32
  %153 = ptrtoint i64* %152 to i64, !mcsema_real_eip !32
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !32
  %155 = load i32, i32* %154, !mcsema_real_eip !32
  %156 = zext i32 %155 to i64, !mcsema_real_eip !32
  store i64 %156, i64* %XCX, !mcsema_real_eip !32
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !33
  %157 = add i64 %RBP_val.40, -68, !mcsema_real_eip !33
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !33
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !33
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !33
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.42, i32* %160, !mcsema_real_eip !33
  %ECX.43 = bitcast i64* %XCX to i32*, !mcsema_real_eip !34
  %ECX_val.44 = load i32, i32* %ECX.43, !mcsema_real_eip !34
  %161 = zext i32 %ECX_val.44 to i64, !mcsema_real_eip !34
  store i64 %161, i64* %XAX, !mcsema_real_eip !34
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !35
  %162 = add i64 80, %RSP_val.45, !mcsema_real_eip !35
  %163 = xor i64 %162, %RSP_val.45, !mcsema_real_eip !35
  %164 = xor i64 %163, 80, !mcsema_real_eip !35
  %165 = and i64 %164, 16, !mcsema_real_eip !35
  %166 = icmp ne i64 %165, 0, !mcsema_real_eip !35
  store i1 %166, i1* %AF, !mcsema_real_eip !35
  %167 = lshr i64 %162, 63, !mcsema_real_eip !35
  %168 = trunc i64 %167 to i1, !mcsema_real_eip !35
  store i1 %168, i1* %SF, !mcsema_real_eip !35
  %169 = icmp eq i64 %162, 0, !mcsema_real_eip !35
  store i1 %169, i1* %ZF, !mcsema_real_eip !35
  %170 = xor i64 %RSP_val.45, 80, !mcsema_real_eip !35
  %171 = xor i64 %170, -1, !mcsema_real_eip !35
  %172 = xor i64 %RSP_val.45, %162, !mcsema_real_eip !35
  %173 = and i64 %171, %172, !mcsema_real_eip !35
  %174 = lshr i64 %173, 63, !mcsema_real_eip !35
  %175 = and i64 %174, 1, !mcsema_real_eip !35
  %176 = trunc i64 %175 to i1, !mcsema_real_eip !35
  store i1 %176, i1* %OF, !mcsema_real_eip !35
  %177 = trunc i64 %162 to i8, !mcsema_real_eip !35
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !35
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !35
  %180 = xor i1 %179, true, !mcsema_real_eip !35
  store i1 %180, i1* %PF, !mcsema_real_eip !35
  %181 = icmp ult i64 %162, %RSP_val.45, !mcsema_real_eip !35
  store i1 %181, i1* %CF, !mcsema_real_eip !35
  store i64 %162, i64* %XSP, !mcsema_real_eip !35
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !36
  %182 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !36
  %183 = load i64, i64* %182, !mcsema_real_eip !36
  store i64 %183, i64* %XBP, !mcsema_real_eip !36
  %184 = add i64 %RSP_val.46, 8, !mcsema_real_eip !36
  store i64 %184, i64* %XSP, !mcsema_real_eip !36
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !37
  %185 = add i64 %RSP_val.47, 8, !mcsema_real_eip !37
  %186 = inttoptr i64 %RSP_val.47 to i64*, !mcsema_real_eip !37
  %187 = load i64, i64* %186, !mcsema_real_eip !37
  store i64 %187, i64* %XIP, !mcsema_real_eip !37
  store i64 %185, i64* %XSP, !mcsema_real_eip !37
  ret void, !mcsema_real_eip !37
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !38
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !38
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !38
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !38
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !38
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !38
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !38
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !38
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !38
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !38
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !38
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !38
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !38
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !38
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !38
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !38
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !38
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !38
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !38
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !38
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !38
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !38
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !38
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !38
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !38
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !38
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !38
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !38
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !38
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !38
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !38
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !38
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !38
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !38
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !38
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !38
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !38
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !38
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !38
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !38
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !38
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !38
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !38
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !38
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !38
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !38
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !38
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !38
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !38
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !38
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !38
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !38
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !38
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !38
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !38
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !38
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !38
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !38
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !38
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !38
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !38
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !38
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !38
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !38
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !38
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !38
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !38
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !38
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !38
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !38
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !38
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !38
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !38
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !38
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !38
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !38
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !38
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !38
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !38
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !38
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !38
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !38
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !38
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !38
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !38
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !38
  br label %block_0x0, !mcsema_real_eip !38

block_0x0:                                        ; preds = %entry
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !38
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !38
  %1 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !38
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !38
  store i64 %RBP_val.57, i64* %2, !mcsema_real_eip !38
  store i64 %1, i64* %XSP, !mcsema_real_eip !38
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !39
  store i64 %RSP_val.59, i64* %XBP, !mcsema_real_eip !39
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !40
  %3 = add i64 %RBP_val.60, 16, !mcsema_real_eip !40
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !40
  %5 = load i64, i64* %4, !mcsema_real_eip !40
  store i64 %5, i64* %XAX, !mcsema_real_eip !40
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !41
  %6 = add i64 %RBP_val.61, -4, !mcsema_real_eip !41
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !41
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !41
  %EDI_val.63 = load i32, i32* %EDI.62, !mcsema_real_eip !41
  %8 = ptrtoint i64* %7 to i64, !mcsema_real_eip !41
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !41
  store i32 %EDI_val.63, i32* %9, !mcsema_real_eip !41
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !42
  %10 = add i64 %RBP_val.64, -8, !mcsema_real_eip !42
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !42
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !42
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !42
  %12 = ptrtoint i64* %11 to i64, !mcsema_real_eip !42
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !42
  store i32 %ESI_val.66, i32* %13, !mcsema_real_eip !42
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !43
  %14 = add i64 %RBP_val.67, -12, !mcsema_real_eip !43
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !43
  %EDX.68 = bitcast i64* %XDX to i32*, !mcsema_real_eip !43
  %EDX_val.69 = load i32, i32* %EDX.68, !mcsema_real_eip !43
  %16 = ptrtoint i64* %15 to i64, !mcsema_real_eip !43
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !43
  store i32 %EDX_val.69, i32* %17, !mcsema_real_eip !43
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !44
  %18 = add i64 %RBP_val.70, -16, !mcsema_real_eip !44
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !44
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.72 = load i32, i32* %ECX.71, !mcsema_real_eip !44
  %20 = ptrtoint i64* %19 to i64, !mcsema_real_eip !44
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !44
  store i32 %ECX_val.72, i32* %21, !mcsema_real_eip !44
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !45
  %22 = add i64 %RBP_val.73, -20, !mcsema_real_eip !45
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !45
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !45
  %R8D_val.75 = load i32, i32* %R8D.74, !mcsema_real_eip !45
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !45
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !45
  store i32 %R8D_val.75, i32* %25, !mcsema_real_eip !45
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !46
  %26 = add i64 %RBP_val.76, -24, !mcsema_real_eip !46
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !46
  %R9D.77 = bitcast i64* %R9 to i32*, !mcsema_real_eip !46
  %R9D_val.78 = load i32, i32* %R9D.77, !mcsema_real_eip !46
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !46
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !46
  store i32 %R9D_val.78, i32* %29, !mcsema_real_eip !46
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !47
  %30 = add i64 %RBP_val.79, -32, !mcsema_real_eip !47
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !47
  %RAX_val.80 = load i64, i64* %XAX, !mcsema_real_eip !47
  store i64 %RAX_val.80, i64* %31, !mcsema_real_eip !47
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !48
  %32 = add i64 %RBP_val.81, -32, !mcsema_real_eip !48
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !48
  %34 = load i64, i64* %33, !mcsema_real_eip !48
  store i64 %34, i64* %XAX, !mcsema_real_eip !48
  %RAX_val.82 = load i64, i64* %XAX, !mcsema_real_eip !49
  %35 = add i64 %RAX_val.82, 0, !mcsema_real_eip !49
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !49
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !49
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !49
  %39 = load i32, i32* %38, !mcsema_real_eip !49
  %40 = zext i32 %39 to i64, !mcsema_real_eip !49
  store i64 %40, i64* %XCX, !mcsema_real_eip !49
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !50
  %41 = add i64 %RBP_val.83, -36, !mcsema_real_eip !50
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !50
  %ECX.84 = bitcast i64* %XCX to i32*, !mcsema_real_eip !50
  %ECX_val.85 = load i32, i32* %ECX.84, !mcsema_real_eip !50
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !50
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !50
  store i32 %ECX_val.85, i32* %44, !mcsema_real_eip !50
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !51
  %45 = add i64 %RBP_val.86, -36, !mcsema_real_eip !51
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !51
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !51
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !51
  %49 = load i32, i32* %48, !mcsema_real_eip !51
  %50 = zext i32 %49 to i64, !mcsema_real_eip !51
  store i64 %50, i64* %XAX, !mcsema_real_eip !51
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !52
  %51 = inttoptr i64 %RSP_val.87 to i64*, !mcsema_real_eip !52
  %52 = load i64, i64* %51, !mcsema_real_eip !52
  store i64 %52, i64* %XBP, !mcsema_real_eip !52
  %53 = add i64 %RSP_val.87, 8, !mcsema_real_eip !52
  store i64 %53, i64* %XSP, !mcsema_real_eip !52
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !53
  %54 = add i64 %RSP_val.88, 8, !mcsema_real_eip !53
  %55 = inttoptr i64 %RSP_val.88 to i64*, !mcsema_real_eip !53
  %56 = load i64, i64* %55, !mcsema_real_eip !53
  store i64 %56, i64* %XIP, !mcsema_real_eip !53
  store i64 %54, i64* %XSP, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
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
!6 = !{i64 63}
!7 = !{i64 70}
!8 = !{i64 74}
!9 = !{i64 80}
!10 = !{i64 84}
!11 = !{i64 92}
!12 = !{i64 95}
!13 = !{i64 98}
!14 = !{i64 101}
!15 = !{i64 106}
!16 = !{i64 111}
!17 = !{i64 115}
!18 = !{i64 117}
!19 = !{i64 119}
!20 = !{i64 121}
!21 = !{i64 125}
!22 = !{i64 127}
!23 = !{i64 130}
!24 = !{i64 133}
!25 = !{i64 137}
!26 = !{i64 141}
!27 = !{i64 146}
!28 = !{i64 156}
!29 = !{i64 159}
!30 = !{i64 162}
!31 = !{i64 164}
!32 = !{i64 169}
!33 = !{i64 172}
!34 = !{i64 175}
!35 = !{i64 177}
!36 = !{i64 181}
!37 = !{i64 182}
!38 = !{i64 0}
!39 = !{i64 1}
!40 = !{i64 4}
!41 = !{i64 8}
!42 = !{i64 11}
!43 = !{i64 14}
!44 = !{i64 17}
!45 = !{i64 20}
!46 = !{i64 24}
!47 = !{i64 28}
!48 = !{i64 32}
!49 = !{i64 36}
!50 = !{i64 38}
!51 = !{i64 41}
!52 = !{i64 44}
!53 = !{i64 45}
