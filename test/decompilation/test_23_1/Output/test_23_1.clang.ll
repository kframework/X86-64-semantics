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
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !14
  %80 = add i64 %RBP_val.14, -8, !mcsema_real_eip !14
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !14
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !14
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !14
  %84 = load i32, i32* %83, !mcsema_real_eip !14
  %85 = sext i32 %84 to i64, !mcsema_real_eip !14
  store i64 %85, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !15
  %86 = add i64 %RBP_val.15, -21, !mcsema_real_eip !15
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !15
  %87 = add i64 %86, %RAX_val.16, !mcsema_real_eip !15
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !15
  %89 = ptrtoint i64* %88 to i64, !mcsema_real_eip !15
  %90 = inttoptr i64 %89 to i8*, !mcsema_real_eip !15
  %91 = load i8, i8* %90, !mcsema_real_eip !15
  %92 = sext i8 %91 to i32, !mcsema_real_eip !15
  %93 = zext i32 %92 to i64, !mcsema_real_eip !15
  store i64 %93, i64* %XCX, !mcsema_real_eip !15
  %ECX.17 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.18 = load i32, i32* %ECX.17, !mcsema_real_eip !16
  %94 = add i32 -97, %ECX_val.18, !mcsema_real_eip !16
  %95 = xor i32 %94, %ECX_val.18, !mcsema_real_eip !16
  %96 = xor i32 %95, -97, !mcsema_real_eip !16
  %97 = and i32 %96, 16, !mcsema_real_eip !16
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !16
  store i1 %98, i1* %AF, !mcsema_real_eip !16
  %99 = lshr i32 %94, 31, !mcsema_real_eip !16
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !16
  store i1 %100, i1* %SF, !mcsema_real_eip !16
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !16
  store i1 %101, i1* %ZF, !mcsema_real_eip !16
  %102 = xor i32 %ECX_val.18, -97, !mcsema_real_eip !16
  %103 = xor i32 %102, -1, !mcsema_real_eip !16
  %104 = xor i32 %ECX_val.18, %94, !mcsema_real_eip !16
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
  %113 = icmp ult i32 %94, %ECX_val.18, !mcsema_real_eip !16
  store i1 %113, i1* %CF, !mcsema_real_eip !16
  %114 = zext i32 %94 to i64, !mcsema_real_eip !16
  store i64 %114, i64* %XCX, !mcsema_real_eip !16
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !17
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !17
  %115 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !17
  store i64 %115, i64* %XAX, !mcsema_real_eip !17
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.22 = load i32, i32* %ECX.21, !mcsema_real_eip !18
  %116 = sub i32 %ECX_val.22, 22, !mcsema_real_eip !18
  %117 = xor i32 %116, %ECX_val.22, !mcsema_real_eip !18
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
  %128 = icmp ult i32 %ECX_val.22, 22, !mcsema_real_eip !18
  store i1 %128, i1* %CF, !mcsema_real_eip !18
  %129 = xor i32 %ECX_val.22, 22, !mcsema_real_eip !18
  %130 = xor i32 %ECX_val.22, %116, !mcsema_real_eip !18
  %131 = and i32 %129, %130, !mcsema_real_eip !18
  %132 = lshr i32 %131, 31, !mcsema_real_eip !18
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !18
  store i1 %133, i1* %OF, !mcsema_real_eip !18
  %134 = zext i32 %116 to i64, !mcsema_real_eip !18
  store i64 %134, i64* %XCX, !mcsema_real_eip !18
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !19
  %135 = add i64 %RBP_val.23, -32, !mcsema_real_eip !19
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !19
  %RAX_val.24 = load i64, i64* %XAX, !mcsema_real_eip !19
  store i64 %RAX_val.24, i64* %136, !mcsema_real_eip !19
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !20
  %137 = add i64 %RBP_val.25, -36, !mcsema_real_eip !20
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !20
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !20
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !20
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.27, i32* %140, !mcsema_real_eip !20
  %141 = load i1, i1* %ZF, !mcsema_real_eip !21
  %142 = icmp eq i1 %141, false, !mcsema_real_eip !21
  %143 = load i1, i1* %CF, !mcsema_real_eip !21
  %144 = icmp eq i1 %143, false, !mcsema_real_eip !21
  %145 = and i1 %144, %142, !mcsema_real_eip !21
  br i1 %145, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0x5b:                                       ; preds = %block_0x3d
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !22
  %146 = add i64 %RBP_val.28, -32, !mcsema_real_eip !22
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !22
  %148 = load i64, i64* %147, !mcsema_real_eip !22
  store i64 %148, i64* %XAX, !mcsema_real_eip !22
  %149 = getelementptr %0, %0* @data_0xe8, i64 0, i32 0, !mcsema_real_eip !23
  %150 = ptrtoint [184 x i8]* %149 to i64, !mcsema_real_eip !23
  %151 = add i64 %150, 0, !mcsema_real_eip !23
  %152 = add i64 0, %151, !mcsema_real_eip !23
  %RAX_val.29 = load i64, i64* %XAX, !mcsema_real_eip !23
  %153 = mul i64 %RAX_val.29, 8, !mcsema_real_eip !23
  %154 = add i64 %152, %153, !mcsema_real_eip !23
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !23
  %156 = load i64, i64* %155, !mcsema_real_eip !23
  store i64 %156, i64* %XCX, !mcsema_real_eip !23
  %RCX_val.30 = load i64, i64* %XCX, !mcsema_real_eip !24
  switch i64 %RCX_val.30, label %364 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x5b
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !25
  %157 = add i64 %RBP_val.31, -12, !mcsema_real_eip !25
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !25
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !25
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !25
  %161 = load i32, i32* %160, !mcsema_real_eip !25
  %162 = zext i32 %161 to i64, !mcsema_real_eip !25
  store i64 %162, i64* %XAX, !mcsema_real_eip !25
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !26
  %163 = add i32 1, %EAX_val.33, !mcsema_real_eip !26
  %164 = xor i32 %163, %EAX_val.33, !mcsema_real_eip !26
  %165 = xor i32 %164, 1, !mcsema_real_eip !26
  %166 = and i32 %165, 16, !mcsema_real_eip !26
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !26
  store i1 %167, i1* %AF, !mcsema_real_eip !26
  %168 = lshr i32 %163, 31, !mcsema_real_eip !26
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !26
  store i1 %169, i1* %SF, !mcsema_real_eip !26
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !26
  store i1 %170, i1* %ZF, !mcsema_real_eip !26
  %171 = xor i32 %EAX_val.33, 1, !mcsema_real_eip !26
  %172 = xor i32 %171, -1, !mcsema_real_eip !26
  %173 = xor i32 %EAX_val.33, %163, !mcsema_real_eip !26
  %174 = and i32 %172, %173, !mcsema_real_eip !26
  %175 = lshr i32 %174, 31, !mcsema_real_eip !26
  %176 = and i32 %175, 1, !mcsema_real_eip !26
  %177 = trunc i32 %176 to i1, !mcsema_real_eip !26
  store i1 %177, i1* %OF, !mcsema_real_eip !26
  %178 = trunc i32 %163 to i8, !mcsema_real_eip !26
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !26
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !26
  %181 = xor i1 %180, true, !mcsema_real_eip !26
  store i1 %181, i1* %PF, !mcsema_real_eip !26
  %182 = icmp ult i32 %163, %EAX_val.33, !mcsema_real_eip !26
  store i1 %182, i1* %CF, !mcsema_real_eip !26
  %183 = zext i32 %163 to i64, !mcsema_real_eip !26
  store i64 %183, i64* %XAX, !mcsema_real_eip !26
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !27
  %184 = add i64 %RBP_val.34, -12, !mcsema_real_eip !27
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !27
  %EAX.35 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.36 = load i32, i32* %EAX.35, !mcsema_real_eip !27
  %186 = ptrtoint i64* %185 to i64, !mcsema_real_eip !27
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.36, i32* %187, !mcsema_real_eip !27
  br label %block_0xad, !mcsema_real_eip !28

block_0x77:                                       ; preds = %block_0x5b
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !29
  %188 = add i64 %RBP_val.37, -12, !mcsema_real_eip !29
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !29
  %190 = ptrtoint i64* %189 to i64, !mcsema_real_eip !29
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !29
  %192 = load i32, i32* %191, !mcsema_real_eip !29
  %193 = zext i32 %192 to i64, !mcsema_real_eip !29
  store i64 %193, i64* %XAX, !mcsema_real_eip !29
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !30
  %194 = add i32 2, %EAX_val.39, !mcsema_real_eip !30
  %195 = xor i32 %194, %EAX_val.39, !mcsema_real_eip !30
  %196 = xor i32 %195, 2, !mcsema_real_eip !30
  %197 = and i32 %196, 16, !mcsema_real_eip !30
  %198 = icmp ne i32 %197, 0, !mcsema_real_eip !30
  store i1 %198, i1* %AF, !mcsema_real_eip !30
  %199 = lshr i32 %194, 31, !mcsema_real_eip !30
  %200 = trunc i32 %199 to i1, !mcsema_real_eip !30
  store i1 %200, i1* %SF, !mcsema_real_eip !30
  %201 = icmp eq i32 %194, 0, !mcsema_real_eip !30
  store i1 %201, i1* %ZF, !mcsema_real_eip !30
  %202 = xor i32 %EAX_val.39, 2, !mcsema_real_eip !30
  %203 = xor i32 %202, -1, !mcsema_real_eip !30
  %204 = xor i32 %EAX_val.39, %194, !mcsema_real_eip !30
  %205 = and i32 %203, %204, !mcsema_real_eip !30
  %206 = lshr i32 %205, 31, !mcsema_real_eip !30
  %207 = and i32 %206, 1, !mcsema_real_eip !30
  %208 = trunc i32 %207 to i1, !mcsema_real_eip !30
  store i1 %208, i1* %OF, !mcsema_real_eip !30
  %209 = trunc i32 %194 to i8, !mcsema_real_eip !30
  %210 = call i8 @llvm.ctpop.i8(i8 %209), !mcsema_real_eip !30
  %211 = trunc i8 %210 to i1, !mcsema_real_eip !30
  %212 = xor i1 %211, true, !mcsema_real_eip !30
  store i1 %212, i1* %PF, !mcsema_real_eip !30
  %213 = icmp ult i32 %194, %EAX_val.39, !mcsema_real_eip !30
  store i1 %213, i1* %CF, !mcsema_real_eip !30
  %214 = zext i32 %194 to i64, !mcsema_real_eip !30
  store i64 %214, i64* %XAX, !mcsema_real_eip !30
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !31
  %215 = add i64 %RBP_val.40, -12, !mcsema_real_eip !31
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !31
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !31
  %217 = ptrtoint i64* %216 to i64, !mcsema_real_eip !31
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.42, i32* %218, !mcsema_real_eip !31
  br label %block_0xad, !mcsema_real_eip !32

block_0x85:                                       ; preds = %block_0x5b
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !33
  %219 = add i64 %RBP_val.43, -12, !mcsema_real_eip !33
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !33
  %221 = ptrtoint i64* %220 to i64, !mcsema_real_eip !33
  %222 = inttoptr i64 %221 to i32*, !mcsema_real_eip !33
  %223 = load i32, i32* %222, !mcsema_real_eip !33
  %224 = zext i32 %223 to i64, !mcsema_real_eip !33
  store i64 %224, i64* %XAX, !mcsema_real_eip !33
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  %225 = sub i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %226 = xor i32 %225, %EAX_val.45, !mcsema_real_eip !34
  %227 = xor i32 %226, 2, !mcsema_real_eip !34
  %228 = and i32 %227, 16, !mcsema_real_eip !34
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !34
  store i1 %229, i1* %AF, !mcsema_real_eip !34
  %230 = trunc i32 %225 to i8, !mcsema_real_eip !34
  %231 = call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !34
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !34
  %233 = xor i1 %232, true, !mcsema_real_eip !34
  store i1 %233, i1* %PF, !mcsema_real_eip !34
  %234 = icmp eq i32 %225, 0, !mcsema_real_eip !34
  store i1 %234, i1* %ZF, !mcsema_real_eip !34
  %235 = lshr i32 %225, 31, !mcsema_real_eip !34
  %236 = trunc i32 %235 to i1, !mcsema_real_eip !34
  store i1 %236, i1* %SF, !mcsema_real_eip !34
  %237 = icmp ult i32 %EAX_val.45, 2, !mcsema_real_eip !34
  store i1 %237, i1* %CF, !mcsema_real_eip !34
  %238 = xor i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %239 = xor i32 %EAX_val.45, %225, !mcsema_real_eip !34
  %240 = and i32 %238, %239, !mcsema_real_eip !34
  %241 = lshr i32 %240, 31, !mcsema_real_eip !34
  %242 = trunc i32 %241 to i1, !mcsema_real_eip !34
  store i1 %242, i1* %OF, !mcsema_real_eip !34
  %243 = zext i32 %225 to i64, !mcsema_real_eip !34
  store i64 %243, i64* %XAX, !mcsema_real_eip !34
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !35
  %244 = add i64 %RBP_val.46, -12, !mcsema_real_eip !35
  %245 = inttoptr i64 %244 to i64*, !mcsema_real_eip !35
  %EAX.47 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.48 = load i32, i32* %EAX.47, !mcsema_real_eip !35
  %246 = ptrtoint i64* %245 to i64, !mcsema_real_eip !35
  %247 = inttoptr i64 %246 to i32*, !mcsema_real_eip !35
  store i32 %EAX_val.48, i32* %247, !mcsema_real_eip !35
  br label %block_0xad, !mcsema_real_eip !36

block_0x93:                                       ; preds = %block_0x5b
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !37
  %248 = add i64 %RBP_val.49, -12, !mcsema_real_eip !37
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !37
  %250 = ptrtoint i64* %249 to i64, !mcsema_real_eip !37
  %251 = inttoptr i64 %250 to i32*, !mcsema_real_eip !37
  %252 = load i32, i32* %251, !mcsema_real_eip !37
  %253 = zext i32 %252 to i64, !mcsema_real_eip !37
  store i64 %253, i64* %XAX, !mcsema_real_eip !37
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !38
  %254 = sub i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %255 = xor i32 %254, %EAX_val.51, !mcsema_real_eip !38
  %256 = xor i32 %255, 1, !mcsema_real_eip !38
  %257 = and i32 %256, 16, !mcsema_real_eip !38
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !38
  store i1 %258, i1* %AF, !mcsema_real_eip !38
  %259 = trunc i32 %254 to i8, !mcsema_real_eip !38
  %260 = call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !38
  %261 = trunc i8 %260 to i1, !mcsema_real_eip !38
  %262 = xor i1 %261, true, !mcsema_real_eip !38
  store i1 %262, i1* %PF, !mcsema_real_eip !38
  %263 = icmp eq i32 %254, 0, !mcsema_real_eip !38
  store i1 %263, i1* %ZF, !mcsema_real_eip !38
  %264 = lshr i32 %254, 31, !mcsema_real_eip !38
  %265 = trunc i32 %264 to i1, !mcsema_real_eip !38
  store i1 %265, i1* %SF, !mcsema_real_eip !38
  %266 = icmp ult i32 %EAX_val.51, 1, !mcsema_real_eip !38
  store i1 %266, i1* %CF, !mcsema_real_eip !38
  %267 = xor i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %268 = xor i32 %EAX_val.51, %254, !mcsema_real_eip !38
  %269 = and i32 %267, %268, !mcsema_real_eip !38
  %270 = lshr i32 %269, 31, !mcsema_real_eip !38
  %271 = trunc i32 %270 to i1, !mcsema_real_eip !38
  store i1 %271, i1* %OF, !mcsema_real_eip !38
  %272 = zext i32 %254 to i64, !mcsema_real_eip !38
  store i64 %272, i64* %XAX, !mcsema_real_eip !38
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !39
  %273 = add i64 %RBP_val.52, -12, !mcsema_real_eip !39
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !39
  %EAX.53 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.54 = load i32, i32* %EAX.53, !mcsema_real_eip !39
  %275 = ptrtoint i64* %274 to i64, !mcsema_real_eip !39
  %276 = inttoptr i64 %275 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.54, i32* %276, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !41
  %277 = add i64 %RBP_val.55, -4, !mcsema_real_eip !41
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !41
  %279 = ptrtoint i64* %278 to i64, !mcsema_real_eip !41
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !41
  store i32 1, i32* %280, !mcsema_real_eip !41
  br label %block_0xd9, !mcsema_real_eip !42

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !43
  %281 = add i64 %RBP_val.56, -8, !mcsema_real_eip !43
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !43
  %283 = ptrtoint i64* %282 to i64, !mcsema_real_eip !43
  %284 = inttoptr i64 %283 to i32*, !mcsema_real_eip !43
  %285 = load i32, i32* %284, !mcsema_real_eip !43
  %286 = zext i32 %285 to i64, !mcsema_real_eip !43
  store i64 %286, i64* %XAX, !mcsema_real_eip !43
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !44
  %287 = add i32 1, %EAX_val.58, !mcsema_real_eip !44
  %288 = xor i32 %287, %EAX_val.58, !mcsema_real_eip !44
  %289 = xor i32 %288, 1, !mcsema_real_eip !44
  %290 = and i32 %289, 16, !mcsema_real_eip !44
  %291 = icmp ne i32 %290, 0, !mcsema_real_eip !44
  store i1 %291, i1* %AF, !mcsema_real_eip !44
  %292 = lshr i32 %287, 31, !mcsema_real_eip !44
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !44
  store i1 %293, i1* %SF, !mcsema_real_eip !44
  %294 = icmp eq i32 %287, 0, !mcsema_real_eip !44
  store i1 %294, i1* %ZF, !mcsema_real_eip !44
  %295 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !44
  %296 = xor i32 %295, -1, !mcsema_real_eip !44
  %297 = xor i32 %EAX_val.58, %287, !mcsema_real_eip !44
  %298 = and i32 %296, %297, !mcsema_real_eip !44
  %299 = lshr i32 %298, 31, !mcsema_real_eip !44
  %300 = and i32 %299, 1, !mcsema_real_eip !44
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !44
  store i1 %301, i1* %OF, !mcsema_real_eip !44
  %302 = trunc i32 %287 to i8, !mcsema_real_eip !44
  %303 = call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !44
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !44
  %305 = xor i1 %304, true, !mcsema_real_eip !44
  store i1 %305, i1* %PF, !mcsema_real_eip !44
  %306 = icmp ult i32 %287, %EAX_val.58, !mcsema_real_eip !44
  store i1 %306, i1* %CF, !mcsema_real_eip !44
  %307 = zext i32 %287 to i64, !mcsema_real_eip !44
  store i64 %307, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !45
  %308 = add i64 %RBP_val.59, -8, !mcsema_real_eip !45
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !45
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !45
  %310 = ptrtoint i64* %309 to i64, !mcsema_real_eip !45
  %311 = inttoptr i64 %310 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.61, i32* %311, !mcsema_real_eip !45
  br label %block_0x33, !mcsema_real_eip !46

block_0xbb:                                       ; preds = %block_0x33
  %312 = getelementptr %1, %1* @data_0x1a0, i64 0, i32 0, !mcsema_real_eip !47
  %313 = ptrtoint [13 x i8]* %312 to i64, !mcsema_real_eip !47
  %314 = add i64 %313, 9, !mcsema_real_eip !47
  store i64 %314, i64* %XDI, !mcsema_real_eip !47
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !48
  %315 = add i64 %RBP_val.62, -12, !mcsema_real_eip !48
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !48
  %317 = ptrtoint i64* %316 to i64, !mcsema_real_eip !48
  %318 = inttoptr i64 %317 to i32*, !mcsema_real_eip !48
  %319 = load i32, i32* %318, !mcsema_real_eip !48
  %320 = zext i32 %319 to i64, !mcsema_real_eip !48
  store i64 %320, i64* %XSI, !mcsema_real_eip !48
  %AL.63 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.63, !mcsema_real_eip !49
  %RDI_val.64 = load i64, i64* %XDI, !mcsema_real_eip !50
  %RSI_val.65 = load i64, i64* %XSI, !mcsema_real_eip !50
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !50
  %321 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !50
  %322 = inttoptr i64 %321 to i64*, !mcsema_real_eip !50
  store i64 -2415393069852865332, i64* %322, !mcsema_real_eip !50
  store i64 %321, i64* %XSP, !mcsema_real_eip !50
  %323 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.64, i64 %RSI_val.65), !mcsema_real_eip !50
  store i64 %323, i64* %XAX, !mcsema_real_eip !50
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !51
  %324 = add i64 %RBP_val.67, -4, !mcsema_real_eip !51
  %325 = inttoptr i64 %324 to i64*, !mcsema_real_eip !51
  %326 = ptrtoint i64* %325 to i64, !mcsema_real_eip !51
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !51
  store i32 1, i32* %327, !mcsema_real_eip !51
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !52
  %328 = add i64 %RBP_val.68, -40, !mcsema_real_eip !52
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !52
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !52
  %330 = ptrtoint i64* %329 to i64, !mcsema_real_eip !52
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.70, i32* %331, !mcsema_real_eip !52
  br label %block_0xd9, !mcsema_real_eip !53

block_0xd9:                                       ; preds = %block_0xbb, %block_0xa1
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !53
  %332 = add i64 %RBP_val.71, -4, !mcsema_real_eip !53
  %333 = inttoptr i64 %332 to i64*, !mcsema_real_eip !53
  %334 = ptrtoint i64* %333 to i64, !mcsema_real_eip !53
  %335 = inttoptr i64 %334 to i32*, !mcsema_real_eip !53
  %336 = load i32, i32* %335, !mcsema_real_eip !53
  %337 = zext i32 %336 to i64, !mcsema_real_eip !53
  store i64 %337, i64* %XAX, !mcsema_real_eip !53
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !54
  %338 = add i64 48, %RSP_val.72, !mcsema_real_eip !54
  %339 = xor i64 %338, %RSP_val.72, !mcsema_real_eip !54
  %340 = xor i64 %339, 48, !mcsema_real_eip !54
  %341 = and i64 %340, 16, !mcsema_real_eip !54
  %342 = icmp ne i64 %341, 0, !mcsema_real_eip !54
  store i1 %342, i1* %AF, !mcsema_real_eip !54
  %343 = lshr i64 %338, 63, !mcsema_real_eip !54
  %344 = trunc i64 %343 to i1, !mcsema_real_eip !54
  store i1 %344, i1* %SF, !mcsema_real_eip !54
  %345 = icmp eq i64 %338, 0, !mcsema_real_eip !54
  store i1 %345, i1* %ZF, !mcsema_real_eip !54
  %346 = xor i64 %RSP_val.72, 48, !mcsema_real_eip !54
  %347 = xor i64 %346, -1, !mcsema_real_eip !54
  %348 = xor i64 %RSP_val.72, %338, !mcsema_real_eip !54
  %349 = and i64 %347, %348, !mcsema_real_eip !54
  %350 = lshr i64 %349, 63, !mcsema_real_eip !54
  %351 = and i64 %350, 1, !mcsema_real_eip !54
  %352 = trunc i64 %351 to i1, !mcsema_real_eip !54
  store i1 %352, i1* %OF, !mcsema_real_eip !54
  %353 = trunc i64 %338 to i8, !mcsema_real_eip !54
  %354 = call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !54
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !54
  %356 = xor i1 %355, true, !mcsema_real_eip !54
  store i1 %356, i1* %PF, !mcsema_real_eip !54
  %357 = icmp ult i64 %338, %RSP_val.72, !mcsema_real_eip !54
  store i1 %357, i1* %CF, !mcsema_real_eip !54
  store i64 %338, i64* %XSP, !mcsema_real_eip !54
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !55
  %358 = inttoptr i64 %RSP_val.73 to i64*, !mcsema_real_eip !55
  %359 = load i64, i64* %358, !mcsema_real_eip !55
  store i64 %359, i64* %XBP, !mcsema_real_eip !55
  %360 = add i64 %RSP_val.73, 8, !mcsema_real_eip !55
  store i64 %360, i64* %XSP, !mcsema_real_eip !55
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !56
  %361 = add i64 %RSP_val.74, 8, !mcsema_real_eip !56
  %362 = inttoptr i64 %RSP_val.74 to i64*, !mcsema_real_eip !56
  %363 = load i64, i64* %362, !mcsema_real_eip !56
  store i64 %363, i64* %XIP, !mcsema_real_eip !56
  store i64 %361, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56

; <label>:364:                                    ; preds = %block_0x5b
  store i64 %RCX_val.30, i64* %XIP, !mcsema_real_eip !24
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
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
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 103}
!25 = !{i64 105}
!26 = !{i64 108}
!27 = !{i64 111}
!28 = !{i64 114}
!29 = !{i64 119}
!30 = !{i64 122}
!31 = !{i64 125}
!32 = !{i64 128}
!33 = !{i64 133}
!34 = !{i64 136}
!35 = !{i64 139}
!36 = !{i64 142}
!37 = !{i64 147}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 161}
!42 = !{i64 168}
!43 = !{i64 173}
!44 = !{i64 176}
!45 = !{i64 179}
!46 = !{i64 182}
!47 = !{i64 187}
!48 = !{i64 197}
!49 = !{i64 200}
!50 = !{i64 202}
!51 = !{i64 207}
!52 = !{i64 214}
!53 = !{i64 217}
!54 = !{i64 220}
!55 = !{i64 224}
!56 = !{i64 225}
