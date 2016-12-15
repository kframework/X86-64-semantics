; ModuleID = 'Output/test_23_1.clang.bc'
source_filename = "Output/test_23_1.clang.bc"
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

%0 = type <{ [184 x i8] }>
%1 = type <{ [13 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xe8 = internal constant %0 <{ [184 x i8] c"\85\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00w\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00i\00\00\00\00\00\00\00" }>, align 64
@data_0x1a0 = internal constant %1 <{ [13 x i8] c"ssssdddd\00%d\0A\00" }>, align 64
@data_0x1b0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\E2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %26 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %29, !mcsema_real_eip !6
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !7
  %30 = add i64 %RBP_val.6, -12, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !7
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !7
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %33, !mcsema_real_eip !7
  %34 = getelementptr %1, %1* @data_0x1a0, i64 0, i32 0, !mcsema_real_eip !8
  %35 = ptrtoint [13 x i8]* %34 to i64, !mcsema_real_eip !8
  %36 = add i64 %35, 0, !mcsema_real_eip !8
  %37 = add i64 0, %36, !mcsema_real_eip !8
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !8
  %39 = load i64, i64* %38, !mcsema_real_eip !8
  store i64 %39, i64* %XAX, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %40 = add i64 %RBP_val.7, -21, !mcsema_real_eip !9
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !9
  %RAX_val.8 = load i64, i64* %XAX, !mcsema_real_eip !9
  store i64 %RAX_val.8, i64* %41, !mcsema_real_eip !9
  %42 = getelementptr %1, %1* @data_0x1a0, i64 0, i32 0, !mcsema_real_eip !10
  %43 = ptrtoint [13 x i8]* %42 to i64, !mcsema_real_eip !10
  %44 = add i64 %43, 8, !mcsema_real_eip !10
  %45 = add i64 0, %44, !mcsema_real_eip !10
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !10
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !10
  %48 = inttoptr i64 %47 to i8*, !mcsema_real_eip !10
  %49 = load i8, i8* %48, !mcsema_real_eip !10
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %49, i8* %CL.9, !mcsema_real_eip !10
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !11
  %50 = add i64 %RBP_val.10, -13, !mcsema_real_eip !11
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !11
  %CL.11 = bitcast i64* %XCX to i8*, !mcsema_real_eip !11
  %CL_val.12 = load i8, i8* %CL.11, !mcsema_real_eip !11
  %52 = ptrtoint i64* %51 to i64, !mcsema_real_eip !11
  %53 = inttoptr i64 %52 to i8*, !mcsema_real_eip !11
  store i8 %CL_val.12, i8* %53, !mcsema_real_eip !11
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0xad, %block_0x0
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !12
  %54 = add i64 %RBP_val.13, -8, !mcsema_real_eip !12
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !12
  %56 = ptrtoint i64* %55 to i64, !mcsema_real_eip !12
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !12
  %58 = load i32, i32* %57, !mcsema_real_eip !12
  %59 = sub i32 %58, 8, !mcsema_real_eip !12
  %60 = xor i32 %59, %58, !mcsema_real_eip !12
  %61 = xor i32 %60, 8, !mcsema_real_eip !12
  %62 = and i32 %61, 16, !mcsema_real_eip !12
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !12
  store i1 %63, i1* %AF, !mcsema_real_eip !12
  %64 = trunc i32 %59 to i8, !mcsema_real_eip !12
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !12
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !12
  %67 = xor i1 %66, true, !mcsema_real_eip !12
  store i1 %67, i1* %PF, !mcsema_real_eip !12
  %68 = icmp eq i32 %59, 0, !mcsema_real_eip !12
  store i1 %68, i1* %ZF, !mcsema_real_eip !12
  %69 = lshr i32 %59, 31, !mcsema_real_eip !12
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !12
  store i1 %70, i1* %SF, !mcsema_real_eip !12
  %71 = icmp ult i32 %58, 8, !mcsema_real_eip !12
  store i1 %71, i1* %CF, !mcsema_real_eip !12
  %72 = xor i32 %58, 8, !mcsema_real_eip !12
  %73 = xor i32 %58, %59, !mcsema_real_eip !12
  %74 = and i32 %72, %73, !mcsema_real_eip !12
  %75 = lshr i32 %74, 31, !mcsema_real_eip !12
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !12
  store i1 %76, i1* %OF, !mcsema_real_eip !12
  %77 = load i1, i1* %OF, !mcsema_real_eip !13
  %78 = load i1, i1* %SF, !mcsema_real_eip !13
  %79 = icmp eq i1 %78, %77, !mcsema_real_eip !13
  br i1 %79, label %block_0xbb, label %block_0x3d, !mcsema_real_eip !13

block_0x3d:                                       ; preds = %block_0x33
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !14
  %80 = add i64 %RBP_val.23, -8, !mcsema_real_eip !14
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !14
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !14
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !14
  %84 = load i32, i32* %83, !mcsema_real_eip !14
  %85 = sext i32 %84 to i64, !mcsema_real_eip !14
  store i64 %85, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !15
  %86 = add i64 %RBP_val.24, -21, !mcsema_real_eip !15
  %RAX_val.25 = load i64, i64* %XAX, !mcsema_real_eip !15
  %87 = add i64 %86, %RAX_val.25, !mcsema_real_eip !15
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !15
  %89 = ptrtoint i64* %88 to i64, !mcsema_real_eip !15
  %90 = inttoptr i64 %89 to i8*, !mcsema_real_eip !15
  %91 = load i8, i8* %90, !mcsema_real_eip !15
  %92 = sext i8 %91 to i32, !mcsema_real_eip !15
  %93 = zext i32 %92 to i64, !mcsema_real_eip !15
  store i64 %93, i64* %XCX, !mcsema_real_eip !15
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !16
  %94 = add i32 -97, %ECX_val.27, !mcsema_real_eip !16
  %95 = xor i32 %94, %ECX_val.27, !mcsema_real_eip !16
  %96 = xor i32 %95, -97, !mcsema_real_eip !16
  %97 = and i32 %96, 16, !mcsema_real_eip !16
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !16
  store i1 %98, i1* %AF, !mcsema_real_eip !16
  %99 = lshr i32 %94, 31, !mcsema_real_eip !16
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !16
  store i1 %100, i1* %SF, !mcsema_real_eip !16
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !16
  store i1 %101, i1* %ZF, !mcsema_real_eip !16
  %102 = xor i32 %ECX_val.27, -97, !mcsema_real_eip !16
  %103 = xor i32 %102, -1, !mcsema_real_eip !16
  %104 = xor i32 %ECX_val.27, %94, !mcsema_real_eip !16
  %105 = and i32 %103, %104, !mcsema_real_eip !16
  %106 = lshr i32 %105, 31, !mcsema_real_eip !16
  %107 = and i32 %106, 1, !mcsema_real_eip !16
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !16
  store i1 %108, i1* %OF, !mcsema_real_eip !16
  %109 = trunc i32 %94 to i8, !mcsema_real_eip !16
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !16
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !16
  %112 = xor i1 %111, true, !mcsema_real_eip !16
  store i1 %112, i1* %PF, !mcsema_real_eip !16
  %113 = icmp ult i32 %94, %ECX_val.27, !mcsema_real_eip !16
  store i1 %113, i1* %CF, !mcsema_real_eip !16
  %114 = zext i32 %94 to i64, !mcsema_real_eip !16
  store i64 %114, i64* %XCX, !mcsema_real_eip !16
  %ECX.28 = bitcast i64* %XCX to i32*, !mcsema_real_eip !17
  %ECX_val.29 = load i32, i32* %ECX.28, !mcsema_real_eip !17
  %115 = zext i32 %ECX_val.29 to i64, !mcsema_real_eip !17
  store i64 %115, i64* %XAX, !mcsema_real_eip !17
  %ECX.30 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.31 = load i32, i32* %ECX.30, !mcsema_real_eip !18
  %116 = sub i32 %ECX_val.31, 22, !mcsema_real_eip !18
  %117 = xor i32 %116, %ECX_val.31, !mcsema_real_eip !18
  %118 = xor i32 %117, 22, !mcsema_real_eip !18
  %119 = and i32 %118, 16, !mcsema_real_eip !18
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !18
  store i1 %120, i1* %AF, !mcsema_real_eip !18
  %121 = trunc i32 %116 to i8, !mcsema_real_eip !18
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !18
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !18
  %124 = xor i1 %123, true, !mcsema_real_eip !18
  store i1 %124, i1* %PF, !mcsema_real_eip !18
  %125 = icmp eq i32 %116, 0, !mcsema_real_eip !18
  store i1 %125, i1* %ZF, !mcsema_real_eip !18
  %126 = lshr i32 %116, 31, !mcsema_real_eip !18
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !18
  store i1 %127, i1* %SF, !mcsema_real_eip !18
  %128 = icmp ult i32 %ECX_val.31, 22, !mcsema_real_eip !18
  store i1 %128, i1* %CF, !mcsema_real_eip !18
  %129 = xor i32 %ECX_val.31, 22, !mcsema_real_eip !18
  %130 = xor i32 %ECX_val.31, %116, !mcsema_real_eip !18
  %131 = and i32 %129, %130, !mcsema_real_eip !18
  %132 = lshr i32 %131, 31, !mcsema_real_eip !18
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !18
  store i1 %133, i1* %OF, !mcsema_real_eip !18
  %134 = zext i32 %116 to i64, !mcsema_real_eip !18
  store i64 %134, i64* %XCX, !mcsema_real_eip !18
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !19
  %135 = add i64 %RBP_val.32, -32, !mcsema_real_eip !19
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !19
  %RAX_val.33 = load i64, i64* %XAX, !mcsema_real_eip !19
  store i64 %RAX_val.33, i64* %136, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !20
  %137 = add i64 %RBP_val.34, -36, !mcsema_real_eip !20
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !20
  %ECX.35 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.36 = load i32, i32* %ECX.35, !mcsema_real_eip !20
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !20
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.36, i32* %140, !mcsema_real_eip !20
  %141 = load i1, i1* %ZF, !mcsema_real_eip !21
  %142 = icmp eq i1 %141, false, !mcsema_real_eip !21
  %143 = load i1, i1* %CF, !mcsema_real_eip !21
  %144 = icmp eq i1 %143, false, !mcsema_real_eip !21
  %145 = and i1 %144, %142, !mcsema_real_eip !21
  br i1 %145, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0xbb:                                       ; preds = %block_0x33
  %146 = getelementptr %1, %1* @data_0x1a0, i64 0, i32 0, !mcsema_real_eip !22
  %147 = ptrtoint [13 x i8]* %146 to i64, !mcsema_real_eip !22
  %148 = add i64 %147, 9, !mcsema_real_eip !22
  store i64 %148, i64* %XDI, !mcsema_real_eip !22
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !23
  %149 = add i64 %RBP_val.14, -12, !mcsema_real_eip !23
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !23
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !23
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !23
  %153 = load i32, i32* %152, !mcsema_real_eip !23
  %154 = zext i32 %153 to i64, !mcsema_real_eip !23
  store i64 %154, i64* %XSI, !mcsema_real_eip !23
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.15, !mcsema_real_eip !24
  %RDI_val.16 = load i64, i64* %XDI, !mcsema_real_eip !25
  %RSI_val.17 = load i64, i64* %XSI, !mcsema_real_eip !25
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !25
  %155 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !25
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !25
  store i64 -2415393069852865332, i64* %156, !mcsema_real_eip !25
  store i64 %155, i64* %XSP, !mcsema_real_eip !25
  %157 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.16, i64 %RSI_val.17), !mcsema_real_eip !25
  store i64 %157, i64* %XAX, !mcsema_real_eip !25
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !26
  %158 = add i64 %RBP_val.19, -4, !mcsema_real_eip !26
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !26
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !26
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !26
  store i32 1, i32* %161, !mcsema_real_eip !26
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !27
  %162 = add i64 %RBP_val.20, -40, !mcsema_real_eip !27
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !27
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !27
  %164 = ptrtoint i64* %163 to i64, !mcsema_real_eip !27
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.22, i32* %165, !mcsema_real_eip !27
  br label %block_0xd9, !mcsema_real_eip !14

block_0xd9:                                       ; preds = %block_0xa1, %block_0xbb
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !28
  %166 = add i64 %RBP_val.37, -4, !mcsema_real_eip !28
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !28
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !28
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !28
  %170 = load i32, i32* %169, !mcsema_real_eip !28
  %171 = zext i32 %170 to i64, !mcsema_real_eip !28
  store i64 %171, i64* %XAX, !mcsema_real_eip !28
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !29
  %172 = add i64 48, %RSP_val.38, !mcsema_real_eip !29
  %173 = xor i64 %172, %RSP_val.38, !mcsema_real_eip !29
  %174 = xor i64 %173, 48, !mcsema_real_eip !29
  %175 = and i64 %174, 16, !mcsema_real_eip !29
  %176 = icmp ne i64 %175, 0, !mcsema_real_eip !29
  store i1 %176, i1* %AF, !mcsema_real_eip !29
  %177 = lshr i64 %172, 63, !mcsema_real_eip !29
  %178 = trunc i64 %177 to i1, !mcsema_real_eip !29
  store i1 %178, i1* %SF, !mcsema_real_eip !29
  %179 = icmp eq i64 %172, 0, !mcsema_real_eip !29
  store i1 %179, i1* %ZF, !mcsema_real_eip !29
  %180 = xor i64 %RSP_val.38, 48, !mcsema_real_eip !29
  %181 = xor i64 %180, -1, !mcsema_real_eip !29
  %182 = xor i64 %RSP_val.38, %172, !mcsema_real_eip !29
  %183 = and i64 %181, %182, !mcsema_real_eip !29
  %184 = lshr i64 %183, 63, !mcsema_real_eip !29
  %185 = and i64 %184, 1, !mcsema_real_eip !29
  %186 = trunc i64 %185 to i1, !mcsema_real_eip !29
  store i1 %186, i1* %OF, !mcsema_real_eip !29
  %187 = trunc i64 %172 to i8, !mcsema_real_eip !29
  %188 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !29
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !29
  %190 = xor i1 %189, true, !mcsema_real_eip !29
  store i1 %190, i1* %PF, !mcsema_real_eip !29
  %191 = icmp ult i64 %172, %RSP_val.38, !mcsema_real_eip !29
  store i1 %191, i1* %CF, !mcsema_real_eip !29
  store i64 %172, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.39 = load i64, i64* %XSP, !mcsema_real_eip !30
  %192 = inttoptr i64 %RSP_val.39 to i64*, !mcsema_real_eip !30
  %193 = load i64, i64* %192, !mcsema_real_eip !30
  store i64 %193, i64* %XBP, !mcsema_real_eip !30
  %194 = add i64 %RSP_val.39, 8, !mcsema_real_eip !30
  store i64 %194, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !31
  %195 = add i64 %RSP_val.40, 8, !mcsema_real_eip !31
  %196 = inttoptr i64 %RSP_val.40 to i64*, !mcsema_real_eip !31
  %197 = load i64, i64* %196, !mcsema_real_eip !31
  store i64 %197, i64* %XIP, !mcsema_real_eip !31
  store i64 %195, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x5b:                                       ; preds = %block_0x3d
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !32
  %198 = add i64 %RBP_val.42, -32, !mcsema_real_eip !32
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !32
  %200 = load i64, i64* %199, !mcsema_real_eip !32
  store i64 %200, i64* %XAX, !mcsema_real_eip !32
  %201 = getelementptr %0, %0* @data_0xe8, i64 0, i32 0, !mcsema_real_eip !33
  %202 = ptrtoint [184 x i8]* %201 to i64, !mcsema_real_eip !33
  %203 = add i64 %202, 0, !mcsema_real_eip !33
  %204 = add i64 0, %203, !mcsema_real_eip !33
  %RAX_val.43 = load i64, i64* %XAX, !mcsema_real_eip !33
  %205 = mul i64 %RAX_val.43, 8, !mcsema_real_eip !33
  %206 = add i64 %204, %205, !mcsema_real_eip !33
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !33
  %208 = load i64, i64* %207, !mcsema_real_eip !33
  store i64 %208, i64* %XCX, !mcsema_real_eip !33
  %RCX_val.44 = load i64, i64* %XCX, !mcsema_real_eip !34
  switch i64 %RCX_val.44, label %333 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !34

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !35
  %209 = add i64 %RBP_val.41, -4, !mcsema_real_eip !35
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !35
  %211 = ptrtoint i64* %210 to i64, !mcsema_real_eip !35
  %212 = inttoptr i64 %211 to i32*, !mcsema_real_eip !35
  store i32 1, i32* %212, !mcsema_real_eip !35
  br label %block_0xd9, !mcsema_real_eip !36

block_0x69:                                       ; preds = %block_0x5b
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !37
  %213 = add i64 %RBP_val.63, -12, !mcsema_real_eip !37
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !37
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !37
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !37
  %217 = load i32, i32* %216, !mcsema_real_eip !37
  %218 = zext i32 %217 to i64, !mcsema_real_eip !37
  store i64 %218, i64* %XAX, !mcsema_real_eip !37
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !38
  %219 = add i32 1, %EAX_val.65, !mcsema_real_eip !38
  %220 = xor i32 %219, %EAX_val.65, !mcsema_real_eip !38
  %221 = xor i32 %220, 1, !mcsema_real_eip !38
  %222 = and i32 %221, 16, !mcsema_real_eip !38
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !38
  store i1 %223, i1* %AF, !mcsema_real_eip !38
  %224 = lshr i32 %219, 31, !mcsema_real_eip !38
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !38
  store i1 %225, i1* %SF, !mcsema_real_eip !38
  %226 = icmp eq i32 %219, 0, !mcsema_real_eip !38
  store i1 %226, i1* %ZF, !mcsema_real_eip !38
  %227 = xor i32 %EAX_val.65, 1, !mcsema_real_eip !38
  %228 = xor i32 %227, -1, !mcsema_real_eip !38
  %229 = xor i32 %EAX_val.65, %219, !mcsema_real_eip !38
  %230 = and i32 %228, %229, !mcsema_real_eip !38
  %231 = lshr i32 %230, 31, !mcsema_real_eip !38
  %232 = and i32 %231, 1, !mcsema_real_eip !38
  %233 = trunc i32 %232 to i1, !mcsema_real_eip !38
  store i1 %233, i1* %OF, !mcsema_real_eip !38
  %234 = trunc i32 %219 to i8, !mcsema_real_eip !38
  %235 = call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !38
  %236 = trunc i8 %235 to i1, !mcsema_real_eip !38
  %237 = xor i1 %236, true, !mcsema_real_eip !38
  store i1 %237, i1* %PF, !mcsema_real_eip !38
  %238 = icmp ult i32 %219, %EAX_val.65, !mcsema_real_eip !38
  store i1 %238, i1* %CF, !mcsema_real_eip !38
  %239 = zext i32 %219 to i64, !mcsema_real_eip !38
  store i64 %239, i64* %XAX, !mcsema_real_eip !38
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !39
  %240 = add i64 %RBP_val.66, -12, !mcsema_real_eip !39
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !39
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !39
  %242 = ptrtoint i64* %241 to i64, !mcsema_real_eip !39
  %243 = inttoptr i64 %242 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.68, i32* %243, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0x77:                                       ; preds = %block_0x5b
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !41
  %244 = add i64 %RBP_val.57, -12, !mcsema_real_eip !41
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !41
  %246 = ptrtoint i64* %245 to i64, !mcsema_real_eip !41
  %247 = inttoptr i64 %246 to i32*, !mcsema_real_eip !41
  %248 = load i32, i32* %247, !mcsema_real_eip !41
  %249 = zext i32 %248 to i64, !mcsema_real_eip !41
  store i64 %249, i64* %XAX, !mcsema_real_eip !41
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !42
  %250 = add i32 2, %EAX_val.59, !mcsema_real_eip !42
  %251 = xor i32 %250, %EAX_val.59, !mcsema_real_eip !42
  %252 = xor i32 %251, 2, !mcsema_real_eip !42
  %253 = and i32 %252, 16, !mcsema_real_eip !42
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !42
  store i1 %254, i1* %AF, !mcsema_real_eip !42
  %255 = lshr i32 %250, 31, !mcsema_real_eip !42
  %256 = trunc i32 %255 to i1, !mcsema_real_eip !42
  store i1 %256, i1* %SF, !mcsema_real_eip !42
  %257 = icmp eq i32 %250, 0, !mcsema_real_eip !42
  store i1 %257, i1* %ZF, !mcsema_real_eip !42
  %258 = xor i32 %EAX_val.59, 2, !mcsema_real_eip !42
  %259 = xor i32 %258, -1, !mcsema_real_eip !42
  %260 = xor i32 %EAX_val.59, %250, !mcsema_real_eip !42
  %261 = and i32 %259, %260, !mcsema_real_eip !42
  %262 = lshr i32 %261, 31, !mcsema_real_eip !42
  %263 = and i32 %262, 1, !mcsema_real_eip !42
  %264 = trunc i32 %263 to i1, !mcsema_real_eip !42
  store i1 %264, i1* %OF, !mcsema_real_eip !42
  %265 = trunc i32 %250 to i8, !mcsema_real_eip !42
  %266 = call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !42
  %267 = trunc i8 %266 to i1, !mcsema_real_eip !42
  %268 = xor i1 %267, true, !mcsema_real_eip !42
  store i1 %268, i1* %PF, !mcsema_real_eip !42
  %269 = icmp ult i32 %250, %EAX_val.59, !mcsema_real_eip !42
  store i1 %269, i1* %CF, !mcsema_real_eip !42
  %270 = zext i32 %250 to i64, !mcsema_real_eip !42
  store i64 %270, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !43
  %271 = add i64 %RBP_val.60, -12, !mcsema_real_eip !43
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !43
  %EAX.61 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.62 = load i32, i32* %EAX.61, !mcsema_real_eip !43
  %273 = ptrtoint i64* %272 to i64, !mcsema_real_eip !43
  %274 = inttoptr i64 %273 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.62, i32* %274, !mcsema_real_eip !43
  br label %block_0xad, !mcsema_real_eip !44

block_0x85:                                       ; preds = %block_0x5b
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !45
  %275 = add i64 %RBP_val.51, -12, !mcsema_real_eip !45
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !45
  %277 = ptrtoint i64* %276 to i64, !mcsema_real_eip !45
  %278 = inttoptr i64 %277 to i32*, !mcsema_real_eip !45
  %279 = load i32, i32* %278, !mcsema_real_eip !45
  %280 = zext i32 %279 to i64, !mcsema_real_eip !45
  store i64 %280, i64* %XAX, !mcsema_real_eip !45
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !46
  %281 = sub i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %282 = xor i32 %281, %EAX_val.53, !mcsema_real_eip !46
  %283 = xor i32 %282, 2, !mcsema_real_eip !46
  %284 = and i32 %283, 16, !mcsema_real_eip !46
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !46
  store i1 %285, i1* %AF, !mcsema_real_eip !46
  %286 = trunc i32 %281 to i8, !mcsema_real_eip !46
  %287 = call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !46
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !46
  %289 = xor i1 %288, true, !mcsema_real_eip !46
  store i1 %289, i1* %PF, !mcsema_real_eip !46
  %290 = icmp eq i32 %281, 0, !mcsema_real_eip !46
  store i1 %290, i1* %ZF, !mcsema_real_eip !46
  %291 = lshr i32 %281, 31, !mcsema_real_eip !46
  %292 = trunc i32 %291 to i1, !mcsema_real_eip !46
  store i1 %292, i1* %SF, !mcsema_real_eip !46
  %293 = icmp ult i32 %EAX_val.53, 2, !mcsema_real_eip !46
  store i1 %293, i1* %CF, !mcsema_real_eip !46
  %294 = xor i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %295 = xor i32 %EAX_val.53, %281, !mcsema_real_eip !46
  %296 = and i32 %294, %295, !mcsema_real_eip !46
  %297 = lshr i32 %296, 31, !mcsema_real_eip !46
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !46
  store i1 %298, i1* %OF, !mcsema_real_eip !46
  %299 = zext i32 %281 to i64, !mcsema_real_eip !46
  store i64 %299, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !47
  %300 = add i64 %RBP_val.54, -12, !mcsema_real_eip !47
  %301 = inttoptr i64 %300 to i64*, !mcsema_real_eip !47
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !47
  %302 = ptrtoint i64* %301 to i64, !mcsema_real_eip !47
  %303 = inttoptr i64 %302 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.56, i32* %303, !mcsema_real_eip !47
  br label %block_0xad, !mcsema_real_eip !48

block_0x93:                                       ; preds = %block_0x5b
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !49
  %304 = add i64 %RBP_val.45, -12, !mcsema_real_eip !49
  %305 = inttoptr i64 %304 to i64*, !mcsema_real_eip !49
  %306 = ptrtoint i64* %305 to i64, !mcsema_real_eip !49
  %307 = inttoptr i64 %306 to i32*, !mcsema_real_eip !49
  %308 = load i32, i32* %307, !mcsema_real_eip !49
  %309 = zext i32 %308 to i64, !mcsema_real_eip !49
  store i64 %309, i64* %XAX, !mcsema_real_eip !49
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !50
  %310 = sub i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %311 = xor i32 %310, %EAX_val.47, !mcsema_real_eip !50
  %312 = xor i32 %311, 1, !mcsema_real_eip !50
  %313 = and i32 %312, 16, !mcsema_real_eip !50
  %314 = icmp ne i32 %313, 0, !mcsema_real_eip !50
  store i1 %314, i1* %AF, !mcsema_real_eip !50
  %315 = trunc i32 %310 to i8, !mcsema_real_eip !50
  %316 = call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !50
  %317 = trunc i8 %316 to i1, !mcsema_real_eip !50
  %318 = xor i1 %317, true, !mcsema_real_eip !50
  store i1 %318, i1* %PF, !mcsema_real_eip !50
  %319 = icmp eq i32 %310, 0, !mcsema_real_eip !50
  store i1 %319, i1* %ZF, !mcsema_real_eip !50
  %320 = lshr i32 %310, 31, !mcsema_real_eip !50
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !50
  store i1 %321, i1* %SF, !mcsema_real_eip !50
  %322 = icmp ult i32 %EAX_val.47, 1, !mcsema_real_eip !50
  store i1 %322, i1* %CF, !mcsema_real_eip !50
  %323 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %324 = xor i32 %EAX_val.47, %310, !mcsema_real_eip !50
  %325 = and i32 %323, %324, !mcsema_real_eip !50
  %326 = lshr i32 %325, 31, !mcsema_real_eip !50
  %327 = trunc i32 %326 to i1, !mcsema_real_eip !50
  store i1 %327, i1* %OF, !mcsema_real_eip !50
  %328 = zext i32 %310 to i64, !mcsema_real_eip !50
  store i64 %328, i64* %XAX, !mcsema_real_eip !50
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !51
  %329 = add i64 %RBP_val.48, -12, !mcsema_real_eip !51
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !51
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !51
  %331 = ptrtoint i64* %330 to i64, !mcsema_real_eip !51
  %332 = inttoptr i64 %331 to i32*, !mcsema_real_eip !51
  store i32 %EAX_val.50, i32* %332, !mcsema_real_eip !51
  br label %block_0xad, !mcsema_real_eip !52

; <label>:333:                                    ; preds = %block_0x5b
  store i64 %RCX_val.44, i64* %XIP, !mcsema_real_eip !34
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !34
  ret void, !mcsema_real_eip !34

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !53
  %334 = add i64 %RBP_val.69, -8, !mcsema_real_eip !53
  %335 = inttoptr i64 %334 to i64*, !mcsema_real_eip !53
  %336 = ptrtoint i64* %335 to i64, !mcsema_real_eip !53
  %337 = inttoptr i64 %336 to i32*, !mcsema_real_eip !53
  %338 = load i32, i32* %337, !mcsema_real_eip !53
  %339 = zext i32 %338 to i64, !mcsema_real_eip !53
  store i64 %339, i64* %XAX, !mcsema_real_eip !53
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !54
  %340 = add i32 1, %EAX_val.71, !mcsema_real_eip !54
  %341 = xor i32 %340, %EAX_val.71, !mcsema_real_eip !54
  %342 = xor i32 %341, 1, !mcsema_real_eip !54
  %343 = and i32 %342, 16, !mcsema_real_eip !54
  %344 = icmp ne i32 %343, 0, !mcsema_real_eip !54
  store i1 %344, i1* %AF, !mcsema_real_eip !54
  %345 = lshr i32 %340, 31, !mcsema_real_eip !54
  %346 = trunc i32 %345 to i1, !mcsema_real_eip !54
  store i1 %346, i1* %SF, !mcsema_real_eip !54
  %347 = icmp eq i32 %340, 0, !mcsema_real_eip !54
  store i1 %347, i1* %ZF, !mcsema_real_eip !54
  %348 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !54
  %349 = xor i32 %348, -1, !mcsema_real_eip !54
  %350 = xor i32 %EAX_val.71, %340, !mcsema_real_eip !54
  %351 = and i32 %349, %350, !mcsema_real_eip !54
  %352 = lshr i32 %351, 31, !mcsema_real_eip !54
  %353 = and i32 %352, 1, !mcsema_real_eip !54
  %354 = trunc i32 %353 to i1, !mcsema_real_eip !54
  store i1 %354, i1* %OF, !mcsema_real_eip !54
  %355 = trunc i32 %340 to i8, !mcsema_real_eip !54
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !54
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !54
  %358 = xor i1 %357, true, !mcsema_real_eip !54
  store i1 %358, i1* %PF, !mcsema_real_eip !54
  %359 = icmp ult i32 %340, %EAX_val.71, !mcsema_real_eip !54
  store i1 %359, i1* %CF, !mcsema_real_eip !54
  %360 = zext i32 %340 to i64, !mcsema_real_eip !54
  store i64 %360, i64* %XAX, !mcsema_real_eip !54
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !55
  %361 = add i64 %RBP_val.72, -8, !mcsema_real_eip !55
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !55
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !55
  %363 = ptrtoint i64* %362 to i64, !mcsema_real_eip !55
  %364 = inttoptr i64 %363 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.74, i32* %364, !mcsema_real_eip !55
  br label %block_0x33, !mcsema_real_eip !56
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

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
!6 = !{i64 15}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 48}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 61}
!15 = !{i64 65}
!16 = !{i64 70}
!17 = !{i64 73}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 187}
!23 = !{i64 197}
!24 = !{i64 200}
!25 = !{i64 202}
!26 = !{i64 207}
!27 = !{i64 214}
!28 = !{i64 217}
!29 = !{i64 220}
!30 = !{i64 224}
!31 = !{i64 225}
!32 = !{i64 91}
!33 = !{i64 95}
!34 = !{i64 103}
!35 = !{i64 161}
!36 = !{i64 168}
!37 = !{i64 105}
!38 = !{i64 108}
!39 = !{i64 111}
!40 = !{i64 114}
!41 = !{i64 119}
!42 = !{i64 122}
!43 = !{i64 125}
!44 = !{i64 128}
!45 = !{i64 133}
!46 = !{i64 136}
!47 = !{i64 139}
!48 = !{i64 142}
!49 = !{i64 147}
!50 = !{i64 150}
!51 = !{i64 153}
!52 = !{i64 156}
!53 = !{i64 173}
!54 = !{i64 176}
!55 = !{i64 179}
!56 = !{i64 182}
