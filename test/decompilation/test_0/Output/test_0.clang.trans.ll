; ModuleID = 'Output/test_0.clang.trans.bc'
source_filename = "Output/test_0.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x56 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"V\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %21 = add i64 %RBP_val.4, -16, !mcsema_real_eip !6
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !6
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !6
  store i64 %23, i64* %XAX, !mcsema_real_eip !6
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.5, -4, !mcsema_real_eip !7
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !7
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %27, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %28 = add i64 %RBP_val.6, -24, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %RAX_val.7 = load i64, i64* %XAX, !mcsema_real_eip !8
  store i64 %RAX_val.7, i64* %29, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !9
  %30 = add i64 %RBP_val.8, -24, !mcsema_real_eip !9
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !9
  %32 = load i64, i64* %31, !mcsema_real_eip !9
  store i64 %32, i64* %XAX, !mcsema_real_eip !9
  %RAX_val.9 = load i64, i64* %XAX, !mcsema_real_eip !10
  %33 = add i64 %RAX_val.9, 0, !mcsema_real_eip !10
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !10
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !10
  store i32 1, i32* %36, !mcsema_real_eip !10
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !11
  %37 = add i64 %RBP_val.10, -24, !mcsema_real_eip !11
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !11
  %39 = load i64, i64* %38, !mcsema_real_eip !11
  store i64 %39, i64* %XAX, !mcsema_real_eip !11
  %RAX_val.11 = load i64, i64* %XAX, !mcsema_real_eip !12
  %40 = add i64 %RAX_val.11, 4, !mcsema_real_eip !12
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !12
  %42 = ptrtoint i64* %41 to i64, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !12
  store i32 2, i32* %43, !mcsema_real_eip !12
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !13
  %44 = add i64 %RBP_val.12, -24, !mcsema_real_eip !13
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !13
  %46 = load i64, i64* %45, !mcsema_real_eip !13
  store i64 %46, i64* %XAX, !mcsema_real_eip !13
  %RAX_val.13 = load i64, i64* %XAX, !mcsema_real_eip !14
  %47 = add i64 %RAX_val.13, 4, !mcsema_real_eip !14
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !14
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !14
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !14
  %51 = load i32, i32* %50, !mcsema_real_eip !14
  %52 = zext i32 %51 to i64, !mcsema_real_eip !14
  store i64 %52, i64* %XSI, !mcsema_real_eip !14
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !15
  store i8 0, i8* %AL.14, !mcsema_real_eip !15
  %RDI_val.15 = load i64, i64* %XDI, !mcsema_real_eip !16
  %RSI_val.16 = load i64, i64* %XSI, !mcsema_real_eip !16
  %RDX_val.17 = load i64, i64* %XDX, !mcsema_real_eip !16
  %RCX_val.18 = load i64, i64* %XCX, !mcsema_real_eip !16
  %R8_val.19 = load i64, i64* %R8, !mcsema_real_eip !16
  %R9_val.20 = load i64, i64* %R9, !mcsema_real_eip !16
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !16
  %53 = inttoptr i64 %RSP_val.21 to i64*, !mcsema_real_eip !16
  %54 = load i64, i64* %53, !mcsema_real_eip !16
  %55 = add i64 %RSP_val.21, 8, !mcsema_real_eip !16
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !16
  %57 = load i64, i64* %56, !mcsema_real_eip !16
  %58 = add i64 %55, 8, !mcsema_real_eip !16
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !16
  %60 = load i64, i64* %59, !mcsema_real_eip !16
  %61 = add i64 %58, 8, !mcsema_real_eip !16
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !16
  %63 = load i64, i64* %62, !mcsema_real_eip !16
  %64 = add i64 %61, 8, !mcsema_real_eip !16
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !16
  %66 = load i64, i64* %65, !mcsema_real_eip !16
  %67 = add i64 %64, 8, !mcsema_real_eip !16
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !16
  %69 = load i64, i64* %68, !mcsema_real_eip !16
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %70 = sub i64 %RSP_val.22, 8, !mcsema_real_eip !16
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !16
  store i64 -2415393069852865332, i64* %71, !mcsema_real_eip !16
  store i64 %70, i64* %XSP, !mcsema_real_eip !16
  %72 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %RSI_val.16, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69), !mcsema_real_eip !16
  store i64 %72, i64* %XAX, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !17
  %73 = add i64 %RBP_val.23, -24, !mcsema_real_eip !17
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !17
  %75 = load i64, i64* %74, !mcsema_real_eip !17
  store i64 %75, i64* %XDI, !mcsema_real_eip !17
  %RDI_val.24 = load i64, i64* %XDI, !mcsema_real_eip !18
  %76 = add i64 %RDI_val.24, 4, !mcsema_real_eip !18
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !18
  %78 = ptrtoint i64* %77 to i64, !mcsema_real_eip !18
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !18
  %80 = load i32, i32* %79, !mcsema_real_eip !18
  %81 = zext i32 %80 to i64, !mcsema_real_eip !18
  store i64 %81, i64* %XSI, !mcsema_real_eip !18
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !19
  %82 = add i64 %RBP_val.25, -28, !mcsema_real_eip !19
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !19
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !19
  %84 = ptrtoint i64* %83 to i64, !mcsema_real_eip !19
  %85 = inttoptr i64 %84 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.27, i32* %85, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !20
  %86 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %86, i64* %XAX, !mcsema_real_eip !20
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %87 = add i64 32, %RSP_val.30, !mcsema_real_eip !21
  %88 = xor i64 %87, %RSP_val.30, !mcsema_real_eip !21
  %89 = xor i64 %88, 32, !mcsema_real_eip !21
  %90 = and i64 %89, 16, !mcsema_real_eip !21
  %91 = icmp ne i64 %90, 0, !mcsema_real_eip !21
  store i1 %91, i1* %AF, !mcsema_real_eip !21
  %92 = lshr i64 %87, 63, !mcsema_real_eip !21
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !21
  store i1 %93, i1* %SF, !mcsema_real_eip !21
  %94 = icmp eq i64 %87, 0, !mcsema_real_eip !21
  store i1 %94, i1* %ZF, !mcsema_real_eip !21
  %95 = xor i64 %RSP_val.30, 32, !mcsema_real_eip !21
  %96 = xor i64 %95, -1, !mcsema_real_eip !21
  %97 = xor i64 %RSP_val.30, %87, !mcsema_real_eip !21
  %98 = and i64 %96, %97, !mcsema_real_eip !21
  %99 = lshr i64 %98, 63, !mcsema_real_eip !21
  %100 = and i64 %99, 1, !mcsema_real_eip !21
  %101 = trunc i64 %100 to i1, !mcsema_real_eip !21
  store i1 %101, i1* %OF, !mcsema_real_eip !21
  %102 = trunc i64 %87 to i8, !mcsema_real_eip !21
  %103 = call i8 @llvm.ctpop.i8(i8 %102), !mcsema_real_eip !21
  %104 = trunc i8 %103 to i1, !mcsema_real_eip !21
  %105 = xor i1 %104, true, !mcsema_real_eip !21
  store i1 %105, i1* %PF, !mcsema_real_eip !21
  %106 = icmp ult i64 %87, %RSP_val.30, !mcsema_real_eip !21
  store i1 %106, i1* %CF, !mcsema_real_eip !21
  store i64 %87, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !22
  %107 = inttoptr i64 %RSP_val.31 to i64*, !mcsema_real_eip !22
  %108 = load i64, i64* %107, !mcsema_real_eip !22
  store i64 %108, i64* %XBP, !mcsema_real_eip !22
  %109 = add i64 %RSP_val.31, 8, !mcsema_real_eip !22
  store i64 %109, i64* %XSP, !mcsema_real_eip !22
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !23
  %110 = add i64 %RSP_val.32, 8, !mcsema_real_eip !23
  %111 = inttoptr i64 %RSP_val.32 to i64*, !mcsema_real_eip !23
  %112 = load i64, i64* %111, !mcsema_real_eip !23
  store i64 %112, i64* %XIP, !mcsema_real_eip !23
  store i64 %110, i64* %XSP, !mcsema_real_eip !23
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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 33}
!10 = !{i64 37}
!11 = !{i64 43}
!12 = !{i64 47}
!13 = !{i64 54}
!14 = !{i64 58}
!15 = !{i64 61}
!16 = !{i64 63}
!17 = !{i64 68}
!18 = !{i64 72}
!19 = !{i64 75}
!20 = !{i64 78}
!21 = !{i64 80}
!22 = !{i64 84}
!23 = !{i64 85}
