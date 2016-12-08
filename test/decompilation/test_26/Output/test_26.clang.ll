; ModuleID = 'Output/test_26.clang.bc'
source_filename = "Output/test_26.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_120;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_120(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x221 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x228 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\16\01\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\01\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_120(%RegState*) #1 {
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
  br label %block_0x120, !mcsema_real_eip !2

block_0x120:                                      ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.3, 144, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 144, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 144, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 144, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %21 = getelementptr %0, %0* @data_0x221, i64 0, i32 0, !mcsema_real_eip !5
  %22 = ptrtoint [4 x i8]* %21 to i64, !mcsema_real_eip !5
  %23 = add i64 %22, 0, !mcsema_real_eip !5
  store i64 %23, i64* %XDI, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %24 = add i64 %RBP_val.4, -4, !mcsema_real_eip !6
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !6
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %27, !mcsema_real_eip !6
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !7
  %28 = add i64 %RBP_val.5, -16, !mcsema_real_eip !7
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !7
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !7
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %31, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %32 = add i64 %RBP_val.6, -12, !mcsema_real_eip !8
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !8
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !8
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %35, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %36 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !9
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !9
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %39, !mcsema_real_eip !9
  %40 = zext i32 24 to i64, !mcsema_real_eip !10
  store i64 %40, i64* %XAX, !mcsema_real_eip !10
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !11
  %41 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !11
  store i64 %41, i64* %XCX, !mcsema_real_eip !11
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !12
  %42 = add i64 %RBP_val.10, -88, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !12
  store i64 %RDI_val.11, i64* %43, !mcsema_real_eip !12
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !13
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !13
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !14
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !14
  %44 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !14
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %45, !mcsema_real_eip !14
  store i64 %44, i64* %XSP, !mcsema_real_eip !14
  %46 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.13), !mcsema_real_eip !14
  store i64 %46, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !15
  %47 = add i64 %RBP_val.15, -24, !mcsema_real_eip !15
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !15
  %RAX_val.16 = load i64, i64* %XAX, !mcsema_real_eip !15
  store i64 %RAX_val.16, i64* %48, !mcsema_real_eip !15
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !16
  %49 = add i64 %RBP_val.17, -24, !mcsema_real_eip !16
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !16
  %51 = load i64, i64* %50, !mcsema_real_eip !16
  store i64 %51, i64* %XAX, !mcsema_real_eip !16
  %RAX_val.18 = load i64, i64* %XAX, !mcsema_real_eip !17
  %52 = add i64 %RAX_val.18, 0, !mcsema_real_eip !17
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !17
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !17
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !17
  store i32 5, i32* %55, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !18
  %56 = add i64 %RBP_val.19, -24, !mcsema_real_eip !18
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !18
  %58 = load i64, i64* %57, !mcsema_real_eip !18
  store i64 %58, i64* %XAX, !mcsema_real_eip !18
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !19
  %59 = add i64 %RAX_val.20, 4, !mcsema_real_eip !19
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !19
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !19
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %62, !mcsema_real_eip !19
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !20
  %63 = add i64 %RBP_val.21, -24, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !20
  %65 = load i64, i64* %64, !mcsema_real_eip !20
  store i64 %65, i64* %XAX, !mcsema_real_eip !20
  %RAX_val.22 = load i64, i64* %XAX, !mcsema_real_eip !21
  %66 = add i64 %RAX_val.22, 8, !mcsema_real_eip !21
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !21
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !21
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %69, !mcsema_real_eip !21
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !22
  %70 = add i64 %RBP_val.23, -24, !mcsema_real_eip !22
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !22
  %72 = load i64, i64* %71, !mcsema_real_eip !22
  store i64 %72, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !23
  %73 = add i64 %RBP_val.24, -8, !mcsema_real_eip !23
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !23
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !23
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !23
  %77 = load i32, i32* %76, !mcsema_real_eip !23
  %78 = zext i32 %77 to i64, !mcsema_real_eip !23
  store i64 %78, i64* %XDX, !mcsema_real_eip !23
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !24
  %79 = add i64 %RBP_val.25, -48, !mcsema_real_eip !24
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !24
  %EDX.26 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %EDX_val.27 = load i32, i32* %EDX.26, !mcsema_real_eip !24
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !24
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !24
  store i32 %EDX_val.27, i32* %82, !mcsema_real_eip !24
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !25
  %83 = add i64 %RBP_val.28, -16, !mcsema_real_eip !25
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !25
  %85 = load i64, i64* %84, !mcsema_real_eip !25
  store i64 %85, i64* %XCX, !mcsema_real_eip !25
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !26
  %86 = add i64 %RBP_val.29, -56, !mcsema_real_eip !26
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !26
  %RCX_val.30 = load i64, i64* %XCX, !mcsema_real_eip !26
  store i64 %RCX_val.30, i64* %87, !mcsema_real_eip !26
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !27
  %88 = add i64 %RBP_val.31, -56, !mcsema_real_eip !27
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !27
  %90 = load i64, i64* %89, !mcsema_real_eip !27
  store i64 %90, i64* %XDI, !mcsema_real_eip !27
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !28
  %91 = add i64 %RBP_val.32, -48, !mcsema_real_eip !28
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !28
  %93 = ptrtoint i64* %92 to i64, !mcsema_real_eip !28
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !28
  %95 = load i32, i32* %94, !mcsema_real_eip !28
  %96 = zext i32 %95 to i64, !mcsema_real_eip !28
  store i64 %96, i64* %XSI, !mcsema_real_eip !28
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !29
  %97 = add i64 %RBP_val.33, -8, !mcsema_real_eip !29
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !29
  %99 = ptrtoint i64* %98 to i64, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !29
  %101 = load i32, i32* %100, !mcsema_real_eip !29
  %102 = zext i32 %101 to i64, !mcsema_real_eip !29
  store i64 %102, i64* %XDX, !mcsema_real_eip !29
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !30
  store i64 %RSP_val.34, i64* %XCX, !mcsema_real_eip !30
  %RCX_val.35 = load i64, i64* %XCX, !mcsema_real_eip !31
  %103 = add i64 %RCX_val.35, 16, !mcsema_real_eip !31
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !31
  %EDX.36 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.37 = load i32, i32* %EDX.36, !mcsema_real_eip !31
  %105 = ptrtoint i64* %104 to i64, !mcsema_real_eip !31
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !31
  store i32 %EDX_val.37, i32* %106, !mcsema_real_eip !31
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !32
  %107 = add i64 %RBP_val.38, -16, !mcsema_real_eip !32
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !32
  %109 = load i64, i64* %108, !mcsema_real_eip !32
  store i64 %109, i64* %R8, !mcsema_real_eip !32
  %RCX_val.39 = load i64, i64* %XCX, !mcsema_real_eip !33
  %110 = add i64 %RCX_val.39, 8, !mcsema_real_eip !33
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !33
  %R8_val.40 = load i64, i64* %R8, !mcsema_real_eip !33
  store i64 %R8_val.40, i64* %111, !mcsema_real_eip !33
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !34
  %112 = add i64 %RCX_val.41, 32, !mcsema_real_eip !34
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !34
  %RAX_val.42 = load i64, i64* %XAX, !mcsema_real_eip !34
  store i64 %RAX_val.42, i64* %113, !mcsema_real_eip !34
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !35
  %114 = add i64 %RBP_val.43, -16, !mcsema_real_eip !35
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !35
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !35
  store i64 %116, i64* %R8, !mcsema_real_eip !35
  %RCX_val.44 = load i64, i64* %XCX, !mcsema_real_eip !36
  %117 = add i64 %RCX_val.44, 24, !mcsema_real_eip !36
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !36
  %R8_val.45 = load i64, i64* %R8, !mcsema_real_eip !36
  store i64 %R8_val.45, i64* %118, !mcsema_real_eip !36
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !37
  %119 = add i64 %RCX_val.46, 0, !mcsema_real_eip !37
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !37
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !37
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !37
  store i32 3, i32* %122, !mcsema_real_eip !37
  %123 = zext i32 1 to i64, !mcsema_real_eip !38
  store i64 %123, i64* %XDX, !mcsema_real_eip !38
  %124 = zext i32 2 to i64, !mcsema_real_eip !39
  store i64 %124, i64* %R9, !mcsema_real_eip !39
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !40
  %125 = add i64 %RBP_val.47, -92, !mcsema_real_eip !40
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !40
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !40
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !40
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !40
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !40
  store i32 %EDX_val.49, i32* %128, !mcsema_real_eip !40
  %R8_val.50 = load i64, i64* %R8, !mcsema_real_eip !41
  store i64 %R8_val.50, i64* %XDX, !mcsema_real_eip !41
  %RAX_val.51 = load i64, i64* %XAX, !mcsema_real_eip !42
  store i64 %RAX_val.51, i64* %XCX, !mcsema_real_eip !42
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !43
  %129 = add i64 %RBP_val.52, -92, !mcsema_real_eip !43
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !43
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !43
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !43
  %133 = load i32, i32* %132, !mcsema_real_eip !43
  %134 = zext i32 %133 to i64, !mcsema_real_eip !43
  store i64 %134, i64* %R8, !mcsema_real_eip !43
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !44
  %135 = sub i64 %RSP_val.53, 8, !mcsema_real_eip !44
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !44
  store i64 -4981261766360305936, i64* %136, !mcsema_real_eip !44
  store i64 %135, i64* %XSP, !mcsema_real_eip !44
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !44
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !45
  %137 = add i64 %RBP_val.54, -64, !mcsema_real_eip !45
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !45
  %EDX.55 = bitcast i64* %XDX to i32*, !mcsema_real_eip !45
  %EDX_val.56 = load i32, i32* %EDX.55, !mcsema_real_eip !45
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !45
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !45
  store i32 %EDX_val.56, i32* %140, !mcsema_real_eip !45
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !46
  %141 = add i64 %RBP_val.57, -72, !mcsema_real_eip !46
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !46
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.58, i64* %142, !mcsema_real_eip !46
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !47
  %143 = add i64 %RBP_val.59, -72, !mcsema_real_eip !47
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !47
  %145 = load i64, i64* %144, !mcsema_real_eip !47
  store i64 %145, i64* %XAX, !mcsema_real_eip !47
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !48
  %146 = add i64 %RBP_val.60, -40, !mcsema_real_eip !48
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !48
  %RAX_val.61 = load i64, i64* %XAX, !mcsema_real_eip !48
  store i64 %RAX_val.61, i64* %147, !mcsema_real_eip !48
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !49
  %148 = add i64 %RBP_val.62, -64, !mcsema_real_eip !49
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !49
  %150 = ptrtoint i64* %149 to i64, !mcsema_real_eip !49
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !49
  %152 = load i32, i32* %151, !mcsema_real_eip !49
  %153 = zext i32 %152 to i64, !mcsema_real_eip !49
  store i64 %153, i64* %XDX, !mcsema_real_eip !49
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !50
  %154 = add i64 %RBP_val.63, -32, !mcsema_real_eip !50
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !50
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !50
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !50
  %156 = ptrtoint i64* %155 to i64, !mcsema_real_eip !50
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !50
  store i32 %EDX_val.65, i32* %157, !mcsema_real_eip !50
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !51
  %158 = add i64 %RBP_val.66, -40, !mcsema_real_eip !51
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !51
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !51
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !51
  %162 = load i32, i32* %161, !mcsema_real_eip !51
  %163 = zext i32 %162 to i64, !mcsema_real_eip !51
  store i64 %163, i64* %XDX, !mcsema_real_eip !51
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !52
  %164 = add i64 %RBP_val.67, -36, !mcsema_real_eip !52
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !52
  %166 = ptrtoint i64* %165 to i64, !mcsema_real_eip !52
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !52
  %168 = load i32, i32* %167, !mcsema_real_eip !52
  %EDX.68 = bitcast i64* %XDX to i32*, !mcsema_real_eip !52
  %EDX_val.69 = load i32, i32* %EDX.68, !mcsema_real_eip !52
  %169 = add i32 %EDX_val.69, %168, !mcsema_real_eip !52
  %170 = xor i32 %169, %168, !mcsema_real_eip !52
  %171 = xor i32 %170, %EDX_val.69, !mcsema_real_eip !52
  %172 = and i32 %171, 16, !mcsema_real_eip !52
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !52
  store i1 %173, i1* %AF, !mcsema_real_eip !52
  %174 = lshr i32 %169, 31, !mcsema_real_eip !52
  %175 = trunc i32 %174 to i1, !mcsema_real_eip !52
  store i1 %175, i1* %SF, !mcsema_real_eip !52
  %176 = icmp eq i32 %169, 0, !mcsema_real_eip !52
  store i1 %176, i1* %ZF, !mcsema_real_eip !52
  %177 = xor i32 %168, %EDX_val.69, !mcsema_real_eip !52
  %178 = xor i32 %177, -1, !mcsema_real_eip !52
  %179 = xor i32 %168, %169, !mcsema_real_eip !52
  %180 = and i32 %178, %179, !mcsema_real_eip !52
  %181 = lshr i32 %180, 31, !mcsema_real_eip !52
  %182 = and i32 %181, 1, !mcsema_real_eip !52
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !52
  store i1 %183, i1* %OF, !mcsema_real_eip !52
  %184 = trunc i32 %169 to i8, !mcsema_real_eip !52
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !52
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !52
  %187 = xor i1 %186, true, !mcsema_real_eip !52
  store i1 %187, i1* %PF, !mcsema_real_eip !52
  %188 = icmp ult i32 %169, %168, !mcsema_real_eip !52
  store i1 %188, i1* %CF, !mcsema_real_eip !52
  %189 = zext i32 %169 to i64, !mcsema_real_eip !52
  store i64 %189, i64* %XDX, !mcsema_real_eip !52
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !53
  %190 = add i64 %RBP_val.70, -32, !mcsema_real_eip !53
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !53
  %192 = ptrtoint i64* %191 to i64, !mcsema_real_eip !53
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !53
  %194 = load i32, i32* %193, !mcsema_real_eip !53
  %EDX.71 = bitcast i64* %XDX to i32*, !mcsema_real_eip !53
  %EDX_val.72 = load i32, i32* %EDX.71, !mcsema_real_eip !53
  %195 = add i32 %EDX_val.72, %194, !mcsema_real_eip !53
  %196 = xor i32 %195, %194, !mcsema_real_eip !53
  %197 = xor i32 %196, %EDX_val.72, !mcsema_real_eip !53
  %198 = and i32 %197, 16, !mcsema_real_eip !53
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !53
  store i1 %199, i1* %AF, !mcsema_real_eip !53
  %200 = lshr i32 %195, 31, !mcsema_real_eip !53
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !53
  store i1 %201, i1* %SF, !mcsema_real_eip !53
  %202 = icmp eq i32 %195, 0, !mcsema_real_eip !53
  store i1 %202, i1* %ZF, !mcsema_real_eip !53
  %203 = xor i32 %194, %EDX_val.72, !mcsema_real_eip !53
  %204 = xor i32 %203, -1, !mcsema_real_eip !53
  %205 = xor i32 %194, %195, !mcsema_real_eip !53
  %206 = and i32 %204, %205, !mcsema_real_eip !53
  %207 = lshr i32 %206, 31, !mcsema_real_eip !53
  %208 = and i32 %207, 1, !mcsema_real_eip !53
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !53
  store i1 %209, i1* %OF, !mcsema_real_eip !53
  %210 = trunc i32 %195 to i8, !mcsema_real_eip !53
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !53
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !53
  %213 = xor i1 %212, true, !mcsema_real_eip !53
  store i1 %213, i1* %PF, !mcsema_real_eip !53
  %214 = icmp ult i32 %195, %194, !mcsema_real_eip !53
  store i1 %214, i1* %CF, !mcsema_real_eip !53
  %215 = zext i32 %195 to i64, !mcsema_real_eip !53
  store i64 %215, i64* %XDX, !mcsema_real_eip !53
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !54
  %216 = add i64 %RBP_val.73, -76, !mcsema_real_eip !54
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !54
  %EDX.74 = bitcast i64* %XDX to i32*, !mcsema_real_eip !54
  %EDX_val.75 = load i32, i32* %EDX.74, !mcsema_real_eip !54
  %218 = ptrtoint i64* %217 to i64, !mcsema_real_eip !54
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !54
  store i32 %EDX_val.75, i32* %219, !mcsema_real_eip !54
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !55
  %220 = add i64 %RBP_val.76, -76, !mcsema_real_eip !55
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !55
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !55
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !55
  %224 = load i32, i32* %223, !mcsema_real_eip !55
  %225 = zext i32 %224 to i64, !mcsema_real_eip !55
  store i64 %225, i64* %XSI, !mcsema_real_eip !55
  %RBP_val.77 = load i64, i64* %XBP, !mcsema_real_eip !56
  %226 = add i64 %RBP_val.77, -88, !mcsema_real_eip !56
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !56
  %228 = load i64, i64* %227, !mcsema_real_eip !56
  store i64 %228, i64* %XDI, !mcsema_real_eip !56
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.78, !mcsema_real_eip !57
  %RDI_val.79 = load i64, i64* %XDI, !mcsema_real_eip !58
  %RSI_val.80 = load i64, i64* %XSI, !mcsema_real_eip !58
  %RDX_val.81 = load i64, i64* %XDX, !mcsema_real_eip !58
  %RCX_val.82 = load i64, i64* %XCX, !mcsema_real_eip !58
  %R8_val.83 = load i64, i64* %R8, !mcsema_real_eip !58
  %R9_val.84 = load i64, i64* %R9, !mcsema_real_eip !58
  %RSP_val.85 = load i64, i64* %XSP, !mcsema_real_eip !58
  %229 = inttoptr i64 %RSP_val.85 to i64*, !mcsema_real_eip !58
  %230 = load i64, i64* %229, !mcsema_real_eip !58
  %231 = add i64 %RSP_val.85, 8, !mcsema_real_eip !58
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !58
  %233 = load i64, i64* %232, !mcsema_real_eip !58
  %234 = add i64 %231, 8, !mcsema_real_eip !58
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !58
  %236 = load i64, i64* %235, !mcsema_real_eip !58
  %237 = add i64 %234, 8, !mcsema_real_eip !58
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !58
  %239 = load i64, i64* %238, !mcsema_real_eip !58
  %240 = add i64 %237, 8, !mcsema_real_eip !58
  %241 = inttoptr i64 %240 to i64*, !mcsema_real_eip !58
  %242 = load i64, i64* %241, !mcsema_real_eip !58
  %243 = add i64 %240, 8, !mcsema_real_eip !58
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !58
  %245 = load i64, i64* %244, !mcsema_real_eip !58
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !58
  %246 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !58
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %247, !mcsema_real_eip !58
  store i64 %246, i64* %XSP, !mcsema_real_eip !58
  %248 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80, i64 %RDX_val.81, i64 %RCX_val.82, i64 %R8_val.83, i64 %R9_val.84, i64 %230, i64 %233, i64 %236, i64 %239, i64 %242, i64 %245), !mcsema_real_eip !58
  store i64 %248, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !59
  %249 = add i64 %RBP_val.87, -76, !mcsema_real_eip !59
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !59
  %251 = ptrtoint i64* %250 to i64, !mcsema_real_eip !59
  %252 = inttoptr i64 %251 to i32*, !mcsema_real_eip !59
  %253 = load i32, i32* %252, !mcsema_real_eip !59
  %254 = zext i32 %253 to i64, !mcsema_real_eip !59
  store i64 %254, i64* %XDX, !mcsema_real_eip !59
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !60
  %255 = add i64 %RBP_val.88, -96, !mcsema_real_eip !60
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !60
  %EAX.89 = bitcast i64* %XAX to i32*, !mcsema_real_eip !60
  %EAX_val.90 = load i32, i32* %EAX.89, !mcsema_real_eip !60
  %257 = ptrtoint i64* %256 to i64, !mcsema_real_eip !60
  %258 = inttoptr i64 %257 to i32*, !mcsema_real_eip !60
  store i32 %EAX_val.90, i32* %258, !mcsema_real_eip !60
  %EDX.91 = bitcast i64* %XDX to i32*, !mcsema_real_eip !61
  %EDX_val.92 = load i32, i32* %EDX.91, !mcsema_real_eip !61
  %259 = zext i32 %EDX_val.92 to i64, !mcsema_real_eip !61
  store i64 %259, i64* %XAX, !mcsema_real_eip !61
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !62
  %260 = add i64 144, %RSP_val.93, !mcsema_real_eip !62
  %261 = xor i64 %260, %RSP_val.93, !mcsema_real_eip !62
  %262 = xor i64 %261, 144, !mcsema_real_eip !62
  %263 = and i64 %262, 16, !mcsema_real_eip !62
  %264 = icmp ne i64 %263, 0, !mcsema_real_eip !62
  store i1 %264, i1* %AF, !mcsema_real_eip !62
  %265 = lshr i64 %260, 63, !mcsema_real_eip !62
  %266 = trunc i64 %265 to i1, !mcsema_real_eip !62
  store i1 %266, i1* %SF, !mcsema_real_eip !62
  %267 = icmp eq i64 %260, 0, !mcsema_real_eip !62
  store i1 %267, i1* %ZF, !mcsema_real_eip !62
  %268 = xor i64 %RSP_val.93, 144, !mcsema_real_eip !62
  %269 = xor i64 %268, -1, !mcsema_real_eip !62
  %270 = xor i64 %RSP_val.93, %260, !mcsema_real_eip !62
  %271 = and i64 %269, %270, !mcsema_real_eip !62
  %272 = lshr i64 %271, 63, !mcsema_real_eip !62
  %273 = and i64 %272, 1, !mcsema_real_eip !62
  %274 = trunc i64 %273 to i1, !mcsema_real_eip !62
  store i1 %274, i1* %OF, !mcsema_real_eip !62
  %275 = trunc i64 %260 to i8, !mcsema_real_eip !62
  %276 = call i8 @llvm.ctpop.i8(i8 %275), !mcsema_real_eip !62
  %277 = trunc i8 %276 to i1, !mcsema_real_eip !62
  %278 = xor i1 %277, true, !mcsema_real_eip !62
  store i1 %278, i1* %PF, !mcsema_real_eip !62
  %279 = icmp ult i64 %260, %RSP_val.93, !mcsema_real_eip !62
  store i1 %279, i1* %CF, !mcsema_real_eip !62
  store i64 %260, i64* %XSP, !mcsema_real_eip !62
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !63
  %280 = inttoptr i64 %RSP_val.94 to i64*, !mcsema_real_eip !63
  %281 = load i64, i64* %280, !mcsema_real_eip !63
  store i64 %281, i64* %XBP, !mcsema_real_eip !63
  %282 = add i64 %RSP_val.94, 8, !mcsema_real_eip !63
  store i64 %282, i64* %XSP, !mcsema_real_eip !63
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !64
  %283 = add i64 %RSP_val.95, 8, !mcsema_real_eip !64
  %284 = inttoptr i64 %RSP_val.95 to i64*, !mcsema_real_eip !64
  %285 = load i64, i64* %284, !mcsema_real_eip !64
  store i64 %285, i64* %XIP, !mcsema_real_eip !64
  store i64 %283, i64* %XSP, !mcsema_real_eip !64
  ret void, !mcsema_real_eip !64
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !65
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !65
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !65
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !65
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !65
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !65
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !65
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !65
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !65
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !65
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !65
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !65
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !65
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !65
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !65
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !65
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !65
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !65
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !65
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !65
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !65
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !65
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !65
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !65
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !65
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !65
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !65
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !65
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !65
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !65
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !65
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !65
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !65
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !65
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !65
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !65
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !65
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !65
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !65
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !65
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !65
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !65
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !65
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !65
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !65
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !65
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !65
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !65
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !65
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !65
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !65
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !65
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !65
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !65
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !65
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !65
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !65
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !65
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !65
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !65
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !65
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !65
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !65
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !65
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !65
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !65
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !65
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !65
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !65
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !65
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !65
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !65
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !65
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !65
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !65
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !65
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !65
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !65
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !65
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !65
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !65
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !65
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !65
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !65
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !65
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !65
  br label %block_0x0, !mcsema_real_eip !65

block_0x0:                                        ; preds = %entry
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !65
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !65
  %1 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !65
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !65
  store i64 %RBP_val.96, i64* %2, !mcsema_real_eip !65
  store i64 %1, i64* %XSP, !mcsema_real_eip !65
  %RSP_val.98 = load i64, i64* %XSP, !mcsema_real_eip !66
  store i64 %RSP_val.98, i64* %XBP, !mcsema_real_eip !66
  %RBX_val.99 = load i64, i64* %XBX, !mcsema_real_eip !67
  %RSP_val.100 = load i64, i64* %XSP, !mcsema_real_eip !67
  %3 = sub i64 %RSP_val.100, 8, !mcsema_real_eip !67
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !67
  store i64 %RBX_val.99, i64* %4, !mcsema_real_eip !67
  store i64 %3, i64* %XSP, !mcsema_real_eip !67
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !68
  %5 = add i64 %RBP_val.101, 48, !mcsema_real_eip !68
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !68
  %7 = load i64, i64* %6, !mcsema_real_eip !68
  store i64 %7, i64* %XAX, !mcsema_real_eip !68
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !69
  %8 = add i64 %RBP_val.102, 40, !mcsema_real_eip !69
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !69
  %10 = load i64, i64* %9, !mcsema_real_eip !69
  store i64 %10, i64* %R10, !mcsema_real_eip !69
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !70
  %11 = add i64 %RBP_val.103, 24, !mcsema_real_eip !70
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !70
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !70
  store i64 %13, i64* %R11, !mcsema_real_eip !70
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !71
  %14 = add i64 %RBP_val.104, 16, !mcsema_real_eip !71
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !71
  %16 = ptrtoint i64* %15 to i64, !mcsema_real_eip !71
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !71
  %18 = load i32, i32* %17, !mcsema_real_eip !71
  %19 = zext i32 %18 to i64, !mcsema_real_eip !71
  store i64 %19, i64* %XBX, !mcsema_real_eip !71
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !72
  %20 = add i64 %RBP_val.105, -56, !mcsema_real_eip !72
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !72
  %RDI_val.106 = load i64, i64* %XDI, !mcsema_real_eip !72
  store i64 %RDI_val.106, i64* %21, !mcsema_real_eip !72
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !73
  %22 = add i64 %RBP_val.107, -48, !mcsema_real_eip !73
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !73
  %ESI.108 = bitcast i64* %XSI to i32*, !mcsema_real_eip !73
  %ESI_val.109 = load i32, i32* %ESI.108, !mcsema_real_eip !73
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !73
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !73
  store i32 %ESI_val.109, i32* %25, !mcsema_real_eip !73
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !74
  %26 = add i64 %RBP_val.110, -48, !mcsema_real_eip !74
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !74
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !74
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !74
  %30 = load i32, i32* %29, !mcsema_real_eip !74
  %31 = zext i32 %30 to i64, !mcsema_real_eip !74
  store i64 %31, i64* %XSI, !mcsema_real_eip !74
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !75
  %32 = add i64 %RBP_val.111, -32, !mcsema_real_eip !75
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !75
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !75
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !75
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !75
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !75
  store i32 %ESI_val.113, i32* %35, !mcsema_real_eip !75
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !76
  %36 = add i64 %RBP_val.114, -56, !mcsema_real_eip !76
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !76
  %38 = load i64, i64* %37, !mcsema_real_eip !76
  store i64 %38, i64* %XDI, !mcsema_real_eip !76
  %RBP_val.115 = load i64, i64* %XBP, !mcsema_real_eip !77
  %39 = add i64 %RBP_val.115, -40, !mcsema_real_eip !77
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !77
  %RDI_val.116 = load i64, i64* %XDI, !mcsema_real_eip !77
  store i64 %RDI_val.116, i64* %40, !mcsema_real_eip !77
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !78
  %41 = add i64 %RBP_val.117, -64, !mcsema_real_eip !78
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !78
  %RDX_val.118 = load i64, i64* %XDX, !mcsema_real_eip !78
  store i64 %RDX_val.118, i64* %42, !mcsema_real_eip !78
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !79
  %43 = add i64 %RBP_val.119, -72, !mcsema_real_eip !79
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !79
  %RCX_val.120 = load i64, i64* %XCX, !mcsema_real_eip !79
  store i64 %RCX_val.120, i64* %44, !mcsema_real_eip !79
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !80
  %45 = add i64 %RBP_val.121, -76, !mcsema_real_eip !80
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !80
  %R8D.122 = bitcast i64* %R8 to i32*, !mcsema_real_eip !80
  %R8D_val.123 = load i32, i32* %R8D.122, !mcsema_real_eip !80
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !80
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !80
  store i32 %R8D_val.123, i32* %48, !mcsema_real_eip !80
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !81
  %49 = add i64 %RBP_val.124, -80, !mcsema_real_eip !81
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !81
  %R9D.125 = bitcast i64* %R9 to i32*, !mcsema_real_eip !81
  %R9D_val.126 = load i32, i32* %R9D.125, !mcsema_real_eip !81
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !81
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !81
  store i32 %R9D_val.126, i32* %52, !mcsema_real_eip !81
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !82
  %53 = add i64 %RBP_val.127, -84, !mcsema_real_eip !82
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !82
  %EBX.128 = bitcast i64* %XBX to i32*, !mcsema_real_eip !82
  %EBX_val.129 = load i32, i32* %EBX.128, !mcsema_real_eip !82
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !82
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !82
  store i32 %EBX_val.129, i32* %56, !mcsema_real_eip !82
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !83
  %57 = add i64 %RBP_val.130, -96, !mcsema_real_eip !83
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !83
  %R10_val.131 = load i64, i64* %R10, !mcsema_real_eip !83
  store i64 %R10_val.131, i64* %58, !mcsema_real_eip !83
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !84
  %59 = add i64 %RBP_val.132, -104, !mcsema_real_eip !84
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !84
  %RAX_val.133 = load i64, i64* %XAX, !mcsema_real_eip !84
  store i64 %RAX_val.133, i64* %60, !mcsema_real_eip !84
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !85
  %61 = add i64 %RBP_val.134, -40, !mcsema_real_eip !85
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !85
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !85
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !85
  %65 = load i32, i32* %64, !mcsema_real_eip !85
  %66 = zext i32 %65 to i64, !mcsema_real_eip !85
  store i64 %66, i64* %XSI, !mcsema_real_eip !85
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !86
  %67 = add i64 %RBP_val.135, -64, !mcsema_real_eip !86
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !86
  %69 = load i64, i64* %68, !mcsema_real_eip !86
  store i64 %69, i64* %XAX, !mcsema_real_eip !86
  %RAX_val.136 = load i64, i64* %XAX, !mcsema_real_eip !87
  %70 = add i64 %RAX_val.136, 0, !mcsema_real_eip !87
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !87
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !87
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !87
  %74 = load i32, i32* %73, !mcsema_real_eip !87
  %75 = zext i32 %74 to i64, !mcsema_real_eip !87
  store i64 %75, i64* %R8, !mcsema_real_eip !87
  %ESI.137 = bitcast i64* %XSI to i32*, !mcsema_real_eip !88
  %ESI_val.138 = load i32, i32* %ESI.137, !mcsema_real_eip !88
  %R8D.139 = bitcast i64* %R8 to i32*, !mcsema_real_eip !88
  %R8D_val.140 = load i32, i32* %R8D.139, !mcsema_real_eip !88
  %76 = add i32 %R8D_val.140, %ESI_val.138, !mcsema_real_eip !88
  %77 = xor i32 %76, %ESI_val.138, !mcsema_real_eip !88
  %78 = xor i32 %77, %R8D_val.140, !mcsema_real_eip !88
  %79 = and i32 %78, 16, !mcsema_real_eip !88
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !88
  store i1 %80, i1* %AF, !mcsema_real_eip !88
  %81 = lshr i32 %76, 31, !mcsema_real_eip !88
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !88
  store i1 %82, i1* %SF, !mcsema_real_eip !88
  %83 = icmp eq i32 %76, 0, !mcsema_real_eip !88
  store i1 %83, i1* %ZF, !mcsema_real_eip !88
  %84 = xor i32 %ESI_val.138, %R8D_val.140, !mcsema_real_eip !88
  %85 = xor i32 %84, -1, !mcsema_real_eip !88
  %86 = xor i32 %ESI_val.138, %76, !mcsema_real_eip !88
  %87 = and i32 %85, %86, !mcsema_real_eip !88
  %88 = lshr i32 %87, 31, !mcsema_real_eip !88
  %89 = and i32 %88, 1, !mcsema_real_eip !88
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !88
  store i1 %90, i1* %OF, !mcsema_real_eip !88
  %91 = trunc i32 %76 to i8, !mcsema_real_eip !88
  %92 = call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !88
  %93 = trunc i8 %92 to i1, !mcsema_real_eip !88
  %94 = xor i1 %93, true, !mcsema_real_eip !88
  store i1 %94, i1* %PF, !mcsema_real_eip !88
  %95 = icmp ult i32 %76, %ESI_val.138, !mcsema_real_eip !88
  store i1 %95, i1* %CF, !mcsema_real_eip !88
  %96 = zext i32 %76 to i64, !mcsema_real_eip !88
  store i64 %96, i64* %XSI, !mcsema_real_eip !88
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !89
  %97 = add i64 %RBP_val.141, -72, !mcsema_real_eip !89
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !89
  %99 = load i64, i64* %98, !mcsema_real_eip !89
  store i64 %99, i64* %XAX, !mcsema_real_eip !89
  %RAX_val.142 = load i64, i64* %XAX, !mcsema_real_eip !90
  %100 = add i64 %RAX_val.142, 0, !mcsema_real_eip !90
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !90
  %102 = ptrtoint i64* %101 to i64, !mcsema_real_eip !90
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !90
  %104 = load i32, i32* %103, !mcsema_real_eip !90
  %105 = zext i32 %104 to i64, !mcsema_real_eip !90
  store i64 %105, i64* %R8, !mcsema_real_eip !90
  %ESI.143 = bitcast i64* %XSI to i32*, !mcsema_real_eip !91
  %ESI_val.144 = load i32, i32* %ESI.143, !mcsema_real_eip !91
  %R8D.145 = bitcast i64* %R8 to i32*, !mcsema_real_eip !91
  %R8D_val.146 = load i32, i32* %R8D.145, !mcsema_real_eip !91
  %106 = add i32 %R8D_val.146, %ESI_val.144, !mcsema_real_eip !91
  %107 = xor i32 %106, %ESI_val.144, !mcsema_real_eip !91
  %108 = xor i32 %107, %R8D_val.146, !mcsema_real_eip !91
  %109 = and i32 %108, 16, !mcsema_real_eip !91
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !91
  store i1 %110, i1* %AF, !mcsema_real_eip !91
  %111 = lshr i32 %106, 31, !mcsema_real_eip !91
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !91
  store i1 %112, i1* %SF, !mcsema_real_eip !91
  %113 = icmp eq i32 %106, 0, !mcsema_real_eip !91
  store i1 %113, i1* %ZF, !mcsema_real_eip !91
  %114 = xor i32 %ESI_val.144, %R8D_val.146, !mcsema_real_eip !91
  %115 = xor i32 %114, -1, !mcsema_real_eip !91
  %116 = xor i32 %ESI_val.144, %106, !mcsema_real_eip !91
  %117 = and i32 %115, %116, !mcsema_real_eip !91
  %118 = lshr i32 %117, 31, !mcsema_real_eip !91
  %119 = and i32 %118, 1, !mcsema_real_eip !91
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !91
  store i1 %120, i1* %OF, !mcsema_real_eip !91
  %121 = trunc i32 %106 to i8, !mcsema_real_eip !91
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !91
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !91
  %124 = xor i1 %123, true, !mcsema_real_eip !91
  store i1 %124, i1* %PF, !mcsema_real_eip !91
  %125 = icmp ult i32 %106, %ESI_val.144, !mcsema_real_eip !91
  store i1 %125, i1* %CF, !mcsema_real_eip !91
  %126 = zext i32 %106 to i64, !mcsema_real_eip !91
  store i64 %126, i64* %XSI, !mcsema_real_eip !91
  %R11_val.147 = load i64, i64* %R11, !mcsema_real_eip !92
  %127 = add i64 %R11_val.147, 0, !mcsema_real_eip !92
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !92
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !92
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !92
  %131 = load i32, i32* %130, !mcsema_real_eip !92
  %132 = zext i32 %131 to i64, !mcsema_real_eip !92
  store i64 %132, i64* %R8, !mcsema_real_eip !92
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !93
  %133 = add i64 %RBP_val.148, -96, !mcsema_real_eip !93
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !93
  %135 = load i64, i64* %134, !mcsema_real_eip !93
  store i64 %135, i64* %XAX, !mcsema_real_eip !93
  %RAX_val.149 = load i64, i64* %XAX, !mcsema_real_eip !94
  %136 = add i64 %RAX_val.149, 0, !mcsema_real_eip !94
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !94
  %138 = ptrtoint i64* %137 to i64, !mcsema_real_eip !94
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !94
  %140 = load i32, i32* %139, !mcsema_real_eip !94
  %141 = zext i32 %140 to i64, !mcsema_real_eip !94
  store i64 %141, i64* %R9, !mcsema_real_eip !94
  %R8D.150 = bitcast i64* %R8 to i32*, !mcsema_real_eip !95
  %R8D_val.151 = load i32, i32* %R8D.150, !mcsema_real_eip !95
  %R9D.152 = bitcast i64* %R9 to i32*, !mcsema_real_eip !95
  %R9D_val.153 = load i32, i32* %R9D.152, !mcsema_real_eip !95
  %142 = add i32 %R9D_val.153, %R8D_val.151, !mcsema_real_eip !95
  %143 = xor i32 %142, %R8D_val.151, !mcsema_real_eip !95
  %144 = xor i32 %143, %R9D_val.153, !mcsema_real_eip !95
  %145 = and i32 %144, 16, !mcsema_real_eip !95
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !95
  store i1 %146, i1* %AF, !mcsema_real_eip !95
  %147 = lshr i32 %142, 31, !mcsema_real_eip !95
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !95
  store i1 %148, i1* %SF, !mcsema_real_eip !95
  %149 = icmp eq i32 %142, 0, !mcsema_real_eip !95
  store i1 %149, i1* %ZF, !mcsema_real_eip !95
  %150 = xor i32 %R8D_val.151, %R9D_val.153, !mcsema_real_eip !95
  %151 = xor i32 %150, -1, !mcsema_real_eip !95
  %152 = xor i32 %R8D_val.151, %142, !mcsema_real_eip !95
  %153 = and i32 %151, %152, !mcsema_real_eip !95
  %154 = lshr i32 %153, 31, !mcsema_real_eip !95
  %155 = and i32 %154, 1, !mcsema_real_eip !95
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !95
  store i1 %156, i1* %OF, !mcsema_real_eip !95
  %157 = trunc i32 %142 to i8, !mcsema_real_eip !95
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !95
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !95
  %160 = xor i1 %159, true, !mcsema_real_eip !95
  store i1 %160, i1* %PF, !mcsema_real_eip !95
  %161 = icmp ult i32 %142, %R8D_val.151, !mcsema_real_eip !95
  store i1 %161, i1* %CF, !mcsema_real_eip !95
  %162 = zext i32 %142 to i64, !mcsema_real_eip !95
  store i64 %162, i64* %R8, !mcsema_real_eip !95
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !96
  %163 = add i64 %RBP_val.154, -104, !mcsema_real_eip !96
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !96
  %165 = load i64, i64* %164, !mcsema_real_eip !96
  store i64 %165, i64* %XAX, !mcsema_real_eip !96
  %RAX_val.155 = load i64, i64* %XAX, !mcsema_real_eip !97
  %166 = add i64 %RAX_val.155, 0, !mcsema_real_eip !97
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !97
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !97
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !97
  %170 = load i32, i32* %169, !mcsema_real_eip !97
  %171 = zext i32 %170 to i64, !mcsema_real_eip !97
  store i64 %171, i64* %R9, !mcsema_real_eip !97
  %R8D.156 = bitcast i64* %R8 to i32*, !mcsema_real_eip !98
  %R8D_val.157 = load i32, i32* %R8D.156, !mcsema_real_eip !98
  %R9D.158 = bitcast i64* %R9 to i32*, !mcsema_real_eip !98
  %R9D_val.159 = load i32, i32* %R9D.158, !mcsema_real_eip !98
  %172 = add i32 %R9D_val.159, %R8D_val.157, !mcsema_real_eip !98
  %173 = xor i32 %172, %R8D_val.157, !mcsema_real_eip !98
  %174 = xor i32 %173, %R9D_val.159, !mcsema_real_eip !98
  %175 = and i32 %174, 16, !mcsema_real_eip !98
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !98
  store i1 %176, i1* %AF, !mcsema_real_eip !98
  %177 = lshr i32 %172, 31, !mcsema_real_eip !98
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !98
  store i1 %178, i1* %SF, !mcsema_real_eip !98
  %179 = icmp eq i32 %172, 0, !mcsema_real_eip !98
  store i1 %179, i1* %ZF, !mcsema_real_eip !98
  %180 = xor i32 %R8D_val.157, %R9D_val.159, !mcsema_real_eip !98
  %181 = xor i32 %180, -1, !mcsema_real_eip !98
  %182 = xor i32 %R8D_val.157, %172, !mcsema_real_eip !98
  %183 = and i32 %181, %182, !mcsema_real_eip !98
  %184 = lshr i32 %183, 31, !mcsema_real_eip !98
  %185 = and i32 %184, 1, !mcsema_real_eip !98
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !98
  store i1 %186, i1* %OF, !mcsema_real_eip !98
  %187 = trunc i32 %172 to i8, !mcsema_real_eip !98
  %188 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !98
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !98
  %190 = xor i1 %189, true, !mcsema_real_eip !98
  store i1 %190, i1* %PF, !mcsema_real_eip !98
  %191 = icmp ult i32 %172, %R8D_val.157, !mcsema_real_eip !98
  store i1 %191, i1* %CF, !mcsema_real_eip !98
  %192 = zext i32 %172 to i64, !mcsema_real_eip !98
  store i64 %192, i64* %R8, !mcsema_real_eip !98
  %ESI.160 = bitcast i64* %XSI to i32*, !mcsema_real_eip !99
  %ESI_val.161 = load i32, i32* %ESI.160, !mcsema_real_eip !99
  %R8D.162 = bitcast i64* %R8 to i32*, !mcsema_real_eip !99
  %R8D_val.163 = load i32, i32* %R8D.162, !mcsema_real_eip !99
  %193 = add i32 %R8D_val.163, %ESI_val.161, !mcsema_real_eip !99
  %194 = xor i32 %193, %ESI_val.161, !mcsema_real_eip !99
  %195 = xor i32 %194, %R8D_val.163, !mcsema_real_eip !99
  %196 = and i32 %195, 16, !mcsema_real_eip !99
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !99
  store i1 %197, i1* %AF, !mcsema_real_eip !99
  %198 = lshr i32 %193, 31, !mcsema_real_eip !99
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !99
  store i1 %199, i1* %SF, !mcsema_real_eip !99
  %200 = icmp eq i32 %193, 0, !mcsema_real_eip !99
  store i1 %200, i1* %ZF, !mcsema_real_eip !99
  %201 = xor i32 %ESI_val.161, %R8D_val.163, !mcsema_real_eip !99
  %202 = xor i32 %201, -1, !mcsema_real_eip !99
  %203 = xor i32 %ESI_val.161, %193, !mcsema_real_eip !99
  %204 = and i32 %202, %203, !mcsema_real_eip !99
  %205 = lshr i32 %204, 31, !mcsema_real_eip !99
  %206 = and i32 %205, 1, !mcsema_real_eip !99
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !99
  store i1 %207, i1* %OF, !mcsema_real_eip !99
  %208 = trunc i32 %193 to i8, !mcsema_real_eip !99
  %209 = call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !99
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !99
  %211 = xor i1 %210, true, !mcsema_real_eip !99
  store i1 %211, i1* %PF, !mcsema_real_eip !99
  %212 = icmp ult i32 %193, %ESI_val.161, !mcsema_real_eip !99
  store i1 %212, i1* %CF, !mcsema_real_eip !99
  %213 = zext i32 %193 to i64, !mcsema_real_eip !99
  store i64 %213, i64* %XSI, !mcsema_real_eip !99
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !100
  %214 = add i64 %RBP_val.164, -120, !mcsema_real_eip !100
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !100
  %ESI.165 = bitcast i64* %XSI to i32*, !mcsema_real_eip !100
  %ESI_val.166 = load i32, i32* %ESI.165, !mcsema_real_eip !100
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !100
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !100
  store i32 %ESI_val.166, i32* %217, !mcsema_real_eip !100
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !101
  %218 = add i64 %RBP_val.167, -36, !mcsema_real_eip !101
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !101
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !101
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !101
  %222 = load i32, i32* %221, !mcsema_real_eip !101
  %223 = zext i32 %222 to i64, !mcsema_real_eip !101
  store i64 %223, i64* %XSI, !mcsema_real_eip !101
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !102
  %224 = add i64 %RBP_val.168, -64, !mcsema_real_eip !102
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !102
  %226 = load i64, i64* %225, !mcsema_real_eip !102
  store i64 %226, i64* %XAX, !mcsema_real_eip !102
  %RAX_val.169 = load i64, i64* %XAX, !mcsema_real_eip !103
  %227 = add i64 %RAX_val.169, 4, !mcsema_real_eip !103
  %228 = inttoptr i64 %227 to i64*, !mcsema_real_eip !103
  %229 = ptrtoint i64* %228 to i64, !mcsema_real_eip !103
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !103
  %231 = load i32, i32* %230, !mcsema_real_eip !103
  %232 = zext i32 %231 to i64, !mcsema_real_eip !103
  store i64 %232, i64* %R8, !mcsema_real_eip !103
  %ESI.170 = bitcast i64* %XSI to i32*, !mcsema_real_eip !104
  %ESI_val.171 = load i32, i32* %ESI.170, !mcsema_real_eip !104
  %R8D.172 = bitcast i64* %R8 to i32*, !mcsema_real_eip !104
  %R8D_val.173 = load i32, i32* %R8D.172, !mcsema_real_eip !104
  %233 = add i32 %R8D_val.173, %ESI_val.171, !mcsema_real_eip !104
  %234 = xor i32 %233, %ESI_val.171, !mcsema_real_eip !104
  %235 = xor i32 %234, %R8D_val.173, !mcsema_real_eip !104
  %236 = and i32 %235, 16, !mcsema_real_eip !104
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !104
  store i1 %237, i1* %AF, !mcsema_real_eip !104
  %238 = lshr i32 %233, 31, !mcsema_real_eip !104
  %239 = trunc i32 %238 to i1, !mcsema_real_eip !104
  store i1 %239, i1* %SF, !mcsema_real_eip !104
  %240 = icmp eq i32 %233, 0, !mcsema_real_eip !104
  store i1 %240, i1* %ZF, !mcsema_real_eip !104
  %241 = xor i32 %ESI_val.171, %R8D_val.173, !mcsema_real_eip !104
  %242 = xor i32 %241, -1, !mcsema_real_eip !104
  %243 = xor i32 %ESI_val.171, %233, !mcsema_real_eip !104
  %244 = and i32 %242, %243, !mcsema_real_eip !104
  %245 = lshr i32 %244, 31, !mcsema_real_eip !104
  %246 = and i32 %245, 1, !mcsema_real_eip !104
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !104
  store i1 %247, i1* %OF, !mcsema_real_eip !104
  %248 = trunc i32 %233 to i8, !mcsema_real_eip !104
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !104
  %250 = trunc i8 %249 to i1, !mcsema_real_eip !104
  %251 = xor i1 %250, true, !mcsema_real_eip !104
  store i1 %251, i1* %PF, !mcsema_real_eip !104
  %252 = icmp ult i32 %233, %ESI_val.171, !mcsema_real_eip !104
  store i1 %252, i1* %CF, !mcsema_real_eip !104
  %253 = zext i32 %233 to i64, !mcsema_real_eip !104
  store i64 %253, i64* %XSI, !mcsema_real_eip !104
  %RBP_val.174 = load i64, i64* %XBP, !mcsema_real_eip !105
  %254 = add i64 %RBP_val.174, -72, !mcsema_real_eip !105
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !105
  %256 = load i64, i64* %255, !mcsema_real_eip !105
  store i64 %256, i64* %XAX, !mcsema_real_eip !105
  %RAX_val.175 = load i64, i64* %XAX, !mcsema_real_eip !106
  %257 = add i64 %RAX_val.175, 4, !mcsema_real_eip !106
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !106
  %259 = ptrtoint i64* %258 to i64, !mcsema_real_eip !106
  %260 = inttoptr i64 %259 to i32*, !mcsema_real_eip !106
  %261 = load i32, i32* %260, !mcsema_real_eip !106
  %262 = zext i32 %261 to i64, !mcsema_real_eip !106
  store i64 %262, i64* %R8, !mcsema_real_eip !106
  %ESI.176 = bitcast i64* %XSI to i32*, !mcsema_real_eip !107
  %ESI_val.177 = load i32, i32* %ESI.176, !mcsema_real_eip !107
  %R8D.178 = bitcast i64* %R8 to i32*, !mcsema_real_eip !107
  %R8D_val.179 = load i32, i32* %R8D.178, !mcsema_real_eip !107
  %263 = add i32 %R8D_val.179, %ESI_val.177, !mcsema_real_eip !107
  %264 = xor i32 %263, %ESI_val.177, !mcsema_real_eip !107
  %265 = xor i32 %264, %R8D_val.179, !mcsema_real_eip !107
  %266 = and i32 %265, 16, !mcsema_real_eip !107
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !107
  store i1 %267, i1* %AF, !mcsema_real_eip !107
  %268 = lshr i32 %263, 31, !mcsema_real_eip !107
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !107
  store i1 %269, i1* %SF, !mcsema_real_eip !107
  %270 = icmp eq i32 %263, 0, !mcsema_real_eip !107
  store i1 %270, i1* %ZF, !mcsema_real_eip !107
  %271 = xor i32 %ESI_val.177, %R8D_val.179, !mcsema_real_eip !107
  %272 = xor i32 %271, -1, !mcsema_real_eip !107
  %273 = xor i32 %ESI_val.177, %263, !mcsema_real_eip !107
  %274 = and i32 %272, %273, !mcsema_real_eip !107
  %275 = lshr i32 %274, 31, !mcsema_real_eip !107
  %276 = and i32 %275, 1, !mcsema_real_eip !107
  %277 = trunc i32 %276 to i1, !mcsema_real_eip !107
  store i1 %277, i1* %OF, !mcsema_real_eip !107
  %278 = trunc i32 %263 to i8, !mcsema_real_eip !107
  %279 = call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !107
  %280 = trunc i8 %279 to i1, !mcsema_real_eip !107
  %281 = xor i1 %280, true, !mcsema_real_eip !107
  store i1 %281, i1* %PF, !mcsema_real_eip !107
  %282 = icmp ult i32 %263, %ESI_val.177, !mcsema_real_eip !107
  store i1 %282, i1* %CF, !mcsema_real_eip !107
  %283 = zext i32 %263 to i64, !mcsema_real_eip !107
  store i64 %283, i64* %XSI, !mcsema_real_eip !107
  %R11_val.180 = load i64, i64* %R11, !mcsema_real_eip !108
  %284 = add i64 %R11_val.180, 4, !mcsema_real_eip !108
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !108
  %286 = ptrtoint i64* %285 to i64, !mcsema_real_eip !108
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !108
  %288 = load i32, i32* %287, !mcsema_real_eip !108
  %289 = zext i32 %288 to i64, !mcsema_real_eip !108
  store i64 %289, i64* %R8, !mcsema_real_eip !108
  %RBP_val.181 = load i64, i64* %XBP, !mcsema_real_eip !109
  %290 = add i64 %RBP_val.181, -96, !mcsema_real_eip !109
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !109
  %292 = load i64, i64* %291, !mcsema_real_eip !109
  store i64 %292, i64* %XAX, !mcsema_real_eip !109
  %RAX_val.182 = load i64, i64* %XAX, !mcsema_real_eip !110
  %293 = add i64 %RAX_val.182, 4, !mcsema_real_eip !110
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !110
  %295 = ptrtoint i64* %294 to i64, !mcsema_real_eip !110
  %296 = inttoptr i64 %295 to i32*, !mcsema_real_eip !110
  %297 = load i32, i32* %296, !mcsema_real_eip !110
  %298 = zext i32 %297 to i64, !mcsema_real_eip !110
  store i64 %298, i64* %R9, !mcsema_real_eip !110
  %R8D.183 = bitcast i64* %R8 to i32*, !mcsema_real_eip !111
  %R8D_val.184 = load i32, i32* %R8D.183, !mcsema_real_eip !111
  %R9D.185 = bitcast i64* %R9 to i32*, !mcsema_real_eip !111
  %R9D_val.186 = load i32, i32* %R9D.185, !mcsema_real_eip !111
  %299 = add i32 %R9D_val.186, %R8D_val.184, !mcsema_real_eip !111
  %300 = xor i32 %299, %R8D_val.184, !mcsema_real_eip !111
  %301 = xor i32 %300, %R9D_val.186, !mcsema_real_eip !111
  %302 = and i32 %301, 16, !mcsema_real_eip !111
  %303 = icmp ne i32 %302, 0, !mcsema_real_eip !111
  store i1 %303, i1* %AF, !mcsema_real_eip !111
  %304 = lshr i32 %299, 31, !mcsema_real_eip !111
  %305 = trunc i32 %304 to i1, !mcsema_real_eip !111
  store i1 %305, i1* %SF, !mcsema_real_eip !111
  %306 = icmp eq i32 %299, 0, !mcsema_real_eip !111
  store i1 %306, i1* %ZF, !mcsema_real_eip !111
  %307 = xor i32 %R8D_val.184, %R9D_val.186, !mcsema_real_eip !111
  %308 = xor i32 %307, -1, !mcsema_real_eip !111
  %309 = xor i32 %R8D_val.184, %299, !mcsema_real_eip !111
  %310 = and i32 %308, %309, !mcsema_real_eip !111
  %311 = lshr i32 %310, 31, !mcsema_real_eip !111
  %312 = and i32 %311, 1, !mcsema_real_eip !111
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !111
  store i1 %313, i1* %OF, !mcsema_real_eip !111
  %314 = trunc i32 %299 to i8, !mcsema_real_eip !111
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !111
  %316 = trunc i8 %315 to i1, !mcsema_real_eip !111
  %317 = xor i1 %316, true, !mcsema_real_eip !111
  store i1 %317, i1* %PF, !mcsema_real_eip !111
  %318 = icmp ult i32 %299, %R8D_val.184, !mcsema_real_eip !111
  store i1 %318, i1* %CF, !mcsema_real_eip !111
  %319 = zext i32 %299 to i64, !mcsema_real_eip !111
  store i64 %319, i64* %R8, !mcsema_real_eip !111
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !112
  %320 = add i64 %RBP_val.187, -104, !mcsema_real_eip !112
  %321 = inttoptr i64 %320 to i64*, !mcsema_real_eip !112
  %322 = load i64, i64* %321, !mcsema_real_eip !112
  store i64 %322, i64* %XAX, !mcsema_real_eip !112
  %RAX_val.188 = load i64, i64* %XAX, !mcsema_real_eip !113
  %323 = add i64 %RAX_val.188, 4, !mcsema_real_eip !113
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !113
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !113
  %326 = inttoptr i64 %325 to i32*, !mcsema_real_eip !113
  %327 = load i32, i32* %326, !mcsema_real_eip !113
  %328 = zext i32 %327 to i64, !mcsema_real_eip !113
  store i64 %328, i64* %R9, !mcsema_real_eip !113
  %R8D.189 = bitcast i64* %R8 to i32*, !mcsema_real_eip !114
  %R8D_val.190 = load i32, i32* %R8D.189, !mcsema_real_eip !114
  %R9D.191 = bitcast i64* %R9 to i32*, !mcsema_real_eip !114
  %R9D_val.192 = load i32, i32* %R9D.191, !mcsema_real_eip !114
  %329 = add i32 %R9D_val.192, %R8D_val.190, !mcsema_real_eip !114
  %330 = xor i32 %329, %R8D_val.190, !mcsema_real_eip !114
  %331 = xor i32 %330, %R9D_val.192, !mcsema_real_eip !114
  %332 = and i32 %331, 16, !mcsema_real_eip !114
  %333 = icmp ne i32 %332, 0, !mcsema_real_eip !114
  store i1 %333, i1* %AF, !mcsema_real_eip !114
  %334 = lshr i32 %329, 31, !mcsema_real_eip !114
  %335 = trunc i32 %334 to i1, !mcsema_real_eip !114
  store i1 %335, i1* %SF, !mcsema_real_eip !114
  %336 = icmp eq i32 %329, 0, !mcsema_real_eip !114
  store i1 %336, i1* %ZF, !mcsema_real_eip !114
  %337 = xor i32 %R8D_val.190, %R9D_val.192, !mcsema_real_eip !114
  %338 = xor i32 %337, -1, !mcsema_real_eip !114
  %339 = xor i32 %R8D_val.190, %329, !mcsema_real_eip !114
  %340 = and i32 %338, %339, !mcsema_real_eip !114
  %341 = lshr i32 %340, 31, !mcsema_real_eip !114
  %342 = and i32 %341, 1, !mcsema_real_eip !114
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !114
  store i1 %343, i1* %OF, !mcsema_real_eip !114
  %344 = trunc i32 %329 to i8, !mcsema_real_eip !114
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !114
  %346 = trunc i8 %345 to i1, !mcsema_real_eip !114
  %347 = xor i1 %346, true, !mcsema_real_eip !114
  store i1 %347, i1* %PF, !mcsema_real_eip !114
  %348 = icmp ult i32 %329, %R8D_val.190, !mcsema_real_eip !114
  store i1 %348, i1* %CF, !mcsema_real_eip !114
  %349 = zext i32 %329 to i64, !mcsema_real_eip !114
  store i64 %349, i64* %R8, !mcsema_real_eip !114
  %ESI.193 = bitcast i64* %XSI to i32*, !mcsema_real_eip !115
  %ESI_val.194 = load i32, i32* %ESI.193, !mcsema_real_eip !115
  %R8D.195 = bitcast i64* %R8 to i32*, !mcsema_real_eip !115
  %R8D_val.196 = load i32, i32* %R8D.195, !mcsema_real_eip !115
  %350 = add i32 %R8D_val.196, %ESI_val.194, !mcsema_real_eip !115
  %351 = xor i32 %350, %ESI_val.194, !mcsema_real_eip !115
  %352 = xor i32 %351, %R8D_val.196, !mcsema_real_eip !115
  %353 = and i32 %352, 16, !mcsema_real_eip !115
  %354 = icmp ne i32 %353, 0, !mcsema_real_eip !115
  store i1 %354, i1* %AF, !mcsema_real_eip !115
  %355 = lshr i32 %350, 31, !mcsema_real_eip !115
  %356 = trunc i32 %355 to i1, !mcsema_real_eip !115
  store i1 %356, i1* %SF, !mcsema_real_eip !115
  %357 = icmp eq i32 %350, 0, !mcsema_real_eip !115
  store i1 %357, i1* %ZF, !mcsema_real_eip !115
  %358 = xor i32 %ESI_val.194, %R8D_val.196, !mcsema_real_eip !115
  %359 = xor i32 %358, -1, !mcsema_real_eip !115
  %360 = xor i32 %ESI_val.194, %350, !mcsema_real_eip !115
  %361 = and i32 %359, %360, !mcsema_real_eip !115
  %362 = lshr i32 %361, 31, !mcsema_real_eip !115
  %363 = and i32 %362, 1, !mcsema_real_eip !115
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !115
  store i1 %364, i1* %OF, !mcsema_real_eip !115
  %365 = trunc i32 %350 to i8, !mcsema_real_eip !115
  %366 = call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !115
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !115
  %368 = xor i1 %367, true, !mcsema_real_eip !115
  store i1 %368, i1* %PF, !mcsema_real_eip !115
  %369 = icmp ult i32 %350, %ESI_val.194, !mcsema_real_eip !115
  store i1 %369, i1* %CF, !mcsema_real_eip !115
  %370 = zext i32 %350 to i64, !mcsema_real_eip !115
  store i64 %370, i64* %XSI, !mcsema_real_eip !115
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !116
  %371 = add i64 %RBP_val.197, -116, !mcsema_real_eip !116
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !116
  %ESI.198 = bitcast i64* %XSI to i32*, !mcsema_real_eip !116
  %ESI_val.199 = load i32, i32* %ESI.198, !mcsema_real_eip !116
  %373 = ptrtoint i64* %372 to i64, !mcsema_real_eip !116
  %374 = inttoptr i64 %373 to i32*, !mcsema_real_eip !116
  store i32 %ESI_val.199, i32* %374, !mcsema_real_eip !116
  %RBP_val.200 = load i64, i64* %XBP, !mcsema_real_eip !117
  %375 = add i64 %RBP_val.200, -32, !mcsema_real_eip !117
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !117
  %377 = ptrtoint i64* %376 to i64, !mcsema_real_eip !117
  %378 = inttoptr i64 %377 to i32*, !mcsema_real_eip !117
  %379 = load i32, i32* %378, !mcsema_real_eip !117
  %380 = zext i32 %379 to i64, !mcsema_real_eip !117
  store i64 %380, i64* %XSI, !mcsema_real_eip !117
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !118
  %381 = add i64 %RBP_val.201, -64, !mcsema_real_eip !118
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !118
  %383 = load i64, i64* %382, !mcsema_real_eip !118
  store i64 %383, i64* %XAX, !mcsema_real_eip !118
  %RAX_val.202 = load i64, i64* %XAX, !mcsema_real_eip !119
  %384 = add i64 %RAX_val.202, 8, !mcsema_real_eip !119
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !119
  %386 = ptrtoint i64* %385 to i64, !mcsema_real_eip !119
  %387 = inttoptr i64 %386 to i32*, !mcsema_real_eip !119
  %388 = load i32, i32* %387, !mcsema_real_eip !119
  %389 = zext i32 %388 to i64, !mcsema_real_eip !119
  store i64 %389, i64* %R8, !mcsema_real_eip !119
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !120
  %ESI_val.204 = load i32, i32* %ESI.203, !mcsema_real_eip !120
  %R8D.205 = bitcast i64* %R8 to i32*, !mcsema_real_eip !120
  %R8D_val.206 = load i32, i32* %R8D.205, !mcsema_real_eip !120
  %390 = add i32 %R8D_val.206, %ESI_val.204, !mcsema_real_eip !120
  %391 = xor i32 %390, %ESI_val.204, !mcsema_real_eip !120
  %392 = xor i32 %391, %R8D_val.206, !mcsema_real_eip !120
  %393 = and i32 %392, 16, !mcsema_real_eip !120
  %394 = icmp ne i32 %393, 0, !mcsema_real_eip !120
  store i1 %394, i1* %AF, !mcsema_real_eip !120
  %395 = lshr i32 %390, 31, !mcsema_real_eip !120
  %396 = trunc i32 %395 to i1, !mcsema_real_eip !120
  store i1 %396, i1* %SF, !mcsema_real_eip !120
  %397 = icmp eq i32 %390, 0, !mcsema_real_eip !120
  store i1 %397, i1* %ZF, !mcsema_real_eip !120
  %398 = xor i32 %ESI_val.204, %R8D_val.206, !mcsema_real_eip !120
  %399 = xor i32 %398, -1, !mcsema_real_eip !120
  %400 = xor i32 %ESI_val.204, %390, !mcsema_real_eip !120
  %401 = and i32 %399, %400, !mcsema_real_eip !120
  %402 = lshr i32 %401, 31, !mcsema_real_eip !120
  %403 = and i32 %402, 1, !mcsema_real_eip !120
  %404 = trunc i32 %403 to i1, !mcsema_real_eip !120
  store i1 %404, i1* %OF, !mcsema_real_eip !120
  %405 = trunc i32 %390 to i8, !mcsema_real_eip !120
  %406 = call i8 @llvm.ctpop.i8(i8 %405), !mcsema_real_eip !120
  %407 = trunc i8 %406 to i1, !mcsema_real_eip !120
  %408 = xor i1 %407, true, !mcsema_real_eip !120
  store i1 %408, i1* %PF, !mcsema_real_eip !120
  %409 = icmp ult i32 %390, %ESI_val.204, !mcsema_real_eip !120
  store i1 %409, i1* %CF, !mcsema_real_eip !120
  %410 = zext i32 %390 to i64, !mcsema_real_eip !120
  store i64 %410, i64* %XSI, !mcsema_real_eip !120
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !121
  %411 = add i64 %RBP_val.207, -72, !mcsema_real_eip !121
  %412 = inttoptr i64 %411 to i64*, !mcsema_real_eip !121
  %413 = load i64, i64* %412, !mcsema_real_eip !121
  store i64 %413, i64* %XAX, !mcsema_real_eip !121
  %RAX_val.208 = load i64, i64* %XAX, !mcsema_real_eip !122
  %414 = add i64 %RAX_val.208, 8, !mcsema_real_eip !122
  %415 = inttoptr i64 %414 to i64*, !mcsema_real_eip !122
  %416 = ptrtoint i64* %415 to i64, !mcsema_real_eip !122
  %417 = inttoptr i64 %416 to i32*, !mcsema_real_eip !122
  %418 = load i32, i32* %417, !mcsema_real_eip !122
  %419 = zext i32 %418 to i64, !mcsema_real_eip !122
  store i64 %419, i64* %R8, !mcsema_real_eip !122
  %ESI.209 = bitcast i64* %XSI to i32*, !mcsema_real_eip !123
  %ESI_val.210 = load i32, i32* %ESI.209, !mcsema_real_eip !123
  %R8D.211 = bitcast i64* %R8 to i32*, !mcsema_real_eip !123
  %R8D_val.212 = load i32, i32* %R8D.211, !mcsema_real_eip !123
  %420 = add i32 %R8D_val.212, %ESI_val.210, !mcsema_real_eip !123
  %421 = xor i32 %420, %ESI_val.210, !mcsema_real_eip !123
  %422 = xor i32 %421, %R8D_val.212, !mcsema_real_eip !123
  %423 = and i32 %422, 16, !mcsema_real_eip !123
  %424 = icmp ne i32 %423, 0, !mcsema_real_eip !123
  store i1 %424, i1* %AF, !mcsema_real_eip !123
  %425 = lshr i32 %420, 31, !mcsema_real_eip !123
  %426 = trunc i32 %425 to i1, !mcsema_real_eip !123
  store i1 %426, i1* %SF, !mcsema_real_eip !123
  %427 = icmp eq i32 %420, 0, !mcsema_real_eip !123
  store i1 %427, i1* %ZF, !mcsema_real_eip !123
  %428 = xor i32 %ESI_val.210, %R8D_val.212, !mcsema_real_eip !123
  %429 = xor i32 %428, -1, !mcsema_real_eip !123
  %430 = xor i32 %ESI_val.210, %420, !mcsema_real_eip !123
  %431 = and i32 %429, %430, !mcsema_real_eip !123
  %432 = lshr i32 %431, 31, !mcsema_real_eip !123
  %433 = and i32 %432, 1, !mcsema_real_eip !123
  %434 = trunc i32 %433 to i1, !mcsema_real_eip !123
  store i1 %434, i1* %OF, !mcsema_real_eip !123
  %435 = trunc i32 %420 to i8, !mcsema_real_eip !123
  %436 = call i8 @llvm.ctpop.i8(i8 %435), !mcsema_real_eip !123
  %437 = trunc i8 %436 to i1, !mcsema_real_eip !123
  %438 = xor i1 %437, true, !mcsema_real_eip !123
  store i1 %438, i1* %PF, !mcsema_real_eip !123
  %439 = icmp ult i32 %420, %ESI_val.210, !mcsema_real_eip !123
  store i1 %439, i1* %CF, !mcsema_real_eip !123
  %440 = zext i32 %420 to i64, !mcsema_real_eip !123
  store i64 %440, i64* %XSI, !mcsema_real_eip !123
  %R11_val.213 = load i64, i64* %R11, !mcsema_real_eip !124
  %441 = add i64 %R11_val.213, 8, !mcsema_real_eip !124
  %442 = inttoptr i64 %441 to i64*, !mcsema_real_eip !124
  %443 = ptrtoint i64* %442 to i64, !mcsema_real_eip !124
  %444 = inttoptr i64 %443 to i32*, !mcsema_real_eip !124
  %445 = load i32, i32* %444, !mcsema_real_eip !124
  %446 = zext i32 %445 to i64, !mcsema_real_eip !124
  store i64 %446, i64* %R8, !mcsema_real_eip !124
  %RBP_val.214 = load i64, i64* %XBP, !mcsema_real_eip !125
  %447 = add i64 %RBP_val.214, -96, !mcsema_real_eip !125
  %448 = inttoptr i64 %447 to i64*, !mcsema_real_eip !125
  %449 = load i64, i64* %448, !mcsema_real_eip !125
  store i64 %449, i64* %XAX, !mcsema_real_eip !125
  %RAX_val.215 = load i64, i64* %XAX, !mcsema_real_eip !126
  %450 = add i64 %RAX_val.215, 8, !mcsema_real_eip !126
  %451 = inttoptr i64 %450 to i64*, !mcsema_real_eip !126
  %452 = ptrtoint i64* %451 to i64, !mcsema_real_eip !126
  %453 = inttoptr i64 %452 to i32*, !mcsema_real_eip !126
  %454 = load i32, i32* %453, !mcsema_real_eip !126
  %455 = zext i32 %454 to i64, !mcsema_real_eip !126
  store i64 %455, i64* %R9, !mcsema_real_eip !126
  %R8D.216 = bitcast i64* %R8 to i32*, !mcsema_real_eip !127
  %R8D_val.217 = load i32, i32* %R8D.216, !mcsema_real_eip !127
  %R9D.218 = bitcast i64* %R9 to i32*, !mcsema_real_eip !127
  %R9D_val.219 = load i32, i32* %R9D.218, !mcsema_real_eip !127
  %456 = add i32 %R9D_val.219, %R8D_val.217, !mcsema_real_eip !127
  %457 = xor i32 %456, %R8D_val.217, !mcsema_real_eip !127
  %458 = xor i32 %457, %R9D_val.219, !mcsema_real_eip !127
  %459 = and i32 %458, 16, !mcsema_real_eip !127
  %460 = icmp ne i32 %459, 0, !mcsema_real_eip !127
  store i1 %460, i1* %AF, !mcsema_real_eip !127
  %461 = lshr i32 %456, 31, !mcsema_real_eip !127
  %462 = trunc i32 %461 to i1, !mcsema_real_eip !127
  store i1 %462, i1* %SF, !mcsema_real_eip !127
  %463 = icmp eq i32 %456, 0, !mcsema_real_eip !127
  store i1 %463, i1* %ZF, !mcsema_real_eip !127
  %464 = xor i32 %R8D_val.217, %R9D_val.219, !mcsema_real_eip !127
  %465 = xor i32 %464, -1, !mcsema_real_eip !127
  %466 = xor i32 %R8D_val.217, %456, !mcsema_real_eip !127
  %467 = and i32 %465, %466, !mcsema_real_eip !127
  %468 = lshr i32 %467, 31, !mcsema_real_eip !127
  %469 = and i32 %468, 1, !mcsema_real_eip !127
  %470 = trunc i32 %469 to i1, !mcsema_real_eip !127
  store i1 %470, i1* %OF, !mcsema_real_eip !127
  %471 = trunc i32 %456 to i8, !mcsema_real_eip !127
  %472 = call i8 @llvm.ctpop.i8(i8 %471), !mcsema_real_eip !127
  %473 = trunc i8 %472 to i1, !mcsema_real_eip !127
  %474 = xor i1 %473, true, !mcsema_real_eip !127
  store i1 %474, i1* %PF, !mcsema_real_eip !127
  %475 = icmp ult i32 %456, %R8D_val.217, !mcsema_real_eip !127
  store i1 %475, i1* %CF, !mcsema_real_eip !127
  %476 = zext i32 %456 to i64, !mcsema_real_eip !127
  store i64 %476, i64* %R8, !mcsema_real_eip !127
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !128
  %477 = add i64 %RBP_val.220, -104, !mcsema_real_eip !128
  %478 = inttoptr i64 %477 to i64*, !mcsema_real_eip !128
  %479 = load i64, i64* %478, !mcsema_real_eip !128
  store i64 %479, i64* %XAX, !mcsema_real_eip !128
  %RAX_val.221 = load i64, i64* %XAX, !mcsema_real_eip !129
  %480 = add i64 %RAX_val.221, 8, !mcsema_real_eip !129
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !129
  %482 = ptrtoint i64* %481 to i64, !mcsema_real_eip !129
  %483 = inttoptr i64 %482 to i32*, !mcsema_real_eip !129
  %484 = load i32, i32* %483, !mcsema_real_eip !129
  %485 = zext i32 %484 to i64, !mcsema_real_eip !129
  store i64 %485, i64* %R9, !mcsema_real_eip !129
  %R8D.222 = bitcast i64* %R8 to i32*, !mcsema_real_eip !130
  %R8D_val.223 = load i32, i32* %R8D.222, !mcsema_real_eip !130
  %R9D.224 = bitcast i64* %R9 to i32*, !mcsema_real_eip !130
  %R9D_val.225 = load i32, i32* %R9D.224, !mcsema_real_eip !130
  %486 = add i32 %R9D_val.225, %R8D_val.223, !mcsema_real_eip !130
  %487 = xor i32 %486, %R8D_val.223, !mcsema_real_eip !130
  %488 = xor i32 %487, %R9D_val.225, !mcsema_real_eip !130
  %489 = and i32 %488, 16, !mcsema_real_eip !130
  %490 = icmp ne i32 %489, 0, !mcsema_real_eip !130
  store i1 %490, i1* %AF, !mcsema_real_eip !130
  %491 = lshr i32 %486, 31, !mcsema_real_eip !130
  %492 = trunc i32 %491 to i1, !mcsema_real_eip !130
  store i1 %492, i1* %SF, !mcsema_real_eip !130
  %493 = icmp eq i32 %486, 0, !mcsema_real_eip !130
  store i1 %493, i1* %ZF, !mcsema_real_eip !130
  %494 = xor i32 %R8D_val.223, %R9D_val.225, !mcsema_real_eip !130
  %495 = xor i32 %494, -1, !mcsema_real_eip !130
  %496 = xor i32 %R8D_val.223, %486, !mcsema_real_eip !130
  %497 = and i32 %495, %496, !mcsema_real_eip !130
  %498 = lshr i32 %497, 31, !mcsema_real_eip !130
  %499 = and i32 %498, 1, !mcsema_real_eip !130
  %500 = trunc i32 %499 to i1, !mcsema_real_eip !130
  store i1 %500, i1* %OF, !mcsema_real_eip !130
  %501 = trunc i32 %486 to i8, !mcsema_real_eip !130
  %502 = call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !130
  %503 = trunc i8 %502 to i1, !mcsema_real_eip !130
  %504 = xor i1 %503, true, !mcsema_real_eip !130
  store i1 %504, i1* %PF, !mcsema_real_eip !130
  %505 = icmp ult i32 %486, %R8D_val.223, !mcsema_real_eip !130
  store i1 %505, i1* %CF, !mcsema_real_eip !130
  %506 = zext i32 %486 to i64, !mcsema_real_eip !130
  store i64 %506, i64* %R8, !mcsema_real_eip !130
  %ESI.226 = bitcast i64* %XSI to i32*, !mcsema_real_eip !131
  %ESI_val.227 = load i32, i32* %ESI.226, !mcsema_real_eip !131
  %R8D.228 = bitcast i64* %R8 to i32*, !mcsema_real_eip !131
  %R8D_val.229 = load i32, i32* %R8D.228, !mcsema_real_eip !131
  %507 = add i32 %R8D_val.229, %ESI_val.227, !mcsema_real_eip !131
  %508 = xor i32 %507, %ESI_val.227, !mcsema_real_eip !131
  %509 = xor i32 %508, %R8D_val.229, !mcsema_real_eip !131
  %510 = and i32 %509, 16, !mcsema_real_eip !131
  %511 = icmp ne i32 %510, 0, !mcsema_real_eip !131
  store i1 %511, i1* %AF, !mcsema_real_eip !131
  %512 = lshr i32 %507, 31, !mcsema_real_eip !131
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !131
  store i1 %513, i1* %SF, !mcsema_real_eip !131
  %514 = icmp eq i32 %507, 0, !mcsema_real_eip !131
  store i1 %514, i1* %ZF, !mcsema_real_eip !131
  %515 = xor i32 %ESI_val.227, %R8D_val.229, !mcsema_real_eip !131
  %516 = xor i32 %515, -1, !mcsema_real_eip !131
  %517 = xor i32 %ESI_val.227, %507, !mcsema_real_eip !131
  %518 = and i32 %516, %517, !mcsema_real_eip !131
  %519 = lshr i32 %518, 31, !mcsema_real_eip !131
  %520 = and i32 %519, 1, !mcsema_real_eip !131
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !131
  store i1 %521, i1* %OF, !mcsema_real_eip !131
  %522 = trunc i32 %507 to i8, !mcsema_real_eip !131
  %523 = call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !131
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !131
  %525 = xor i1 %524, true, !mcsema_real_eip !131
  store i1 %525, i1* %PF, !mcsema_real_eip !131
  %526 = icmp ult i32 %507, %ESI_val.227, !mcsema_real_eip !131
  store i1 %526, i1* %CF, !mcsema_real_eip !131
  %527 = zext i32 %507 to i64, !mcsema_real_eip !131
  store i64 %527, i64* %XSI, !mcsema_real_eip !131
  %RBP_val.230 = load i64, i64* %XBP, !mcsema_real_eip !132
  %528 = add i64 %RBP_val.230, -112, !mcsema_real_eip !132
  %529 = inttoptr i64 %528 to i64*, !mcsema_real_eip !132
  %ESI.231 = bitcast i64* %XSI to i32*, !mcsema_real_eip !132
  %ESI_val.232 = load i32, i32* %ESI.231, !mcsema_real_eip !132
  %530 = ptrtoint i64* %529 to i64, !mcsema_real_eip !132
  %531 = inttoptr i64 %530 to i32*, !mcsema_real_eip !132
  store i32 %ESI_val.232, i32* %531, !mcsema_real_eip !132
  %RBP_val.233 = load i64, i64* %XBP, !mcsema_real_eip !133
  %532 = add i64 %RBP_val.233, -112, !mcsema_real_eip !133
  %533 = inttoptr i64 %532 to i64*, !mcsema_real_eip !133
  %534 = ptrtoint i64* %533 to i64, !mcsema_real_eip !133
  %535 = inttoptr i64 %534 to i32*, !mcsema_real_eip !133
  %536 = load i32, i32* %535, !mcsema_real_eip !133
  %537 = zext i32 %536 to i64, !mcsema_real_eip !133
  store i64 %537, i64* %XSI, !mcsema_real_eip !133
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !134
  %538 = add i64 %RBP_val.234, -16, !mcsema_real_eip !134
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !134
  %ESI.235 = bitcast i64* %XSI to i32*, !mcsema_real_eip !134
  %ESI_val.236 = load i32, i32* %ESI.235, !mcsema_real_eip !134
  %540 = ptrtoint i64* %539 to i64, !mcsema_real_eip !134
  %541 = inttoptr i64 %540 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.236, i32* %541, !mcsema_real_eip !134
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !135
  %542 = add i64 %RBP_val.237, -120, !mcsema_real_eip !135
  %543 = inttoptr i64 %542 to i64*, !mcsema_real_eip !135
  %544 = load i64, i64* %543, !mcsema_real_eip !135
  store i64 %544, i64* %XAX, !mcsema_real_eip !135
  %RBP_val.238 = load i64, i64* %XBP, !mcsema_real_eip !136
  %545 = add i64 %RBP_val.238, -24, !mcsema_real_eip !136
  %546 = inttoptr i64 %545 to i64*, !mcsema_real_eip !136
  %RAX_val.239 = load i64, i64* %XAX, !mcsema_real_eip !136
  store i64 %RAX_val.239, i64* %546, !mcsema_real_eip !136
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !137
  %547 = add i64 %RBP_val.240, -16, !mcsema_real_eip !137
  %548 = inttoptr i64 %547 to i64*, !mcsema_real_eip !137
  %549 = ptrtoint i64* %548 to i64, !mcsema_real_eip !137
  %550 = inttoptr i64 %549 to i32*, !mcsema_real_eip !137
  %551 = load i32, i32* %550, !mcsema_real_eip !137
  %552 = zext i32 %551 to i64, !mcsema_real_eip !137
  store i64 %552, i64* %XSI, !mcsema_real_eip !137
  %RBP_val.241 = load i64, i64* %XBP, !mcsema_real_eip !138
  %553 = add i64 %RBP_val.241, -128, !mcsema_real_eip !138
  %554 = inttoptr i64 %553 to i64*, !mcsema_real_eip !138
  %ESI.242 = bitcast i64* %XSI to i32*, !mcsema_real_eip !138
  %ESI_val.243 = load i32, i32* %ESI.242, !mcsema_real_eip !138
  %555 = ptrtoint i64* %554 to i64, !mcsema_real_eip !138
  %556 = inttoptr i64 %555 to i32*, !mcsema_real_eip !138
  store i32 %ESI_val.243, i32* %556, !mcsema_real_eip !138
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !139
  %557 = add i64 %RBP_val.244, -24, !mcsema_real_eip !139
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !139
  %559 = load i64, i64* %558, !mcsema_real_eip !139
  store i64 %559, i64* %XAX, !mcsema_real_eip !139
  %RBP_val.245 = load i64, i64* %XBP, !mcsema_real_eip !140
  %560 = add i64 %RBP_val.245, -136, !mcsema_real_eip !140
  %561 = inttoptr i64 %560 to i64*, !mcsema_real_eip !140
  %RAX_val.246 = load i64, i64* %XAX, !mcsema_real_eip !140
  store i64 %RAX_val.246, i64* %561, !mcsema_real_eip !140
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !141
  %562 = add i64 %RBP_val.247, -136, !mcsema_real_eip !141
  %563 = inttoptr i64 %562 to i64*, !mcsema_real_eip !141
  %564 = load i64, i64* %563, !mcsema_real_eip !141
  store i64 %564, i64* %XAX, !mcsema_real_eip !141
  %RBP_val.248 = load i64, i64* %XBP, !mcsema_real_eip !142
  %565 = add i64 %RBP_val.248, -128, !mcsema_real_eip !142
  %566 = inttoptr i64 %565 to i64*, !mcsema_real_eip !142
  %567 = ptrtoint i64* %566 to i64, !mcsema_real_eip !142
  %568 = inttoptr i64 %567 to i32*, !mcsema_real_eip !142
  %569 = load i32, i32* %568, !mcsema_real_eip !142
  %570 = zext i32 %569 to i64, !mcsema_real_eip !142
  store i64 %570, i64* %XDX, !mcsema_real_eip !142
  %RSP_val.249 = load i64, i64* %XSP, !mcsema_real_eip !143
  %571 = inttoptr i64 %RSP_val.249 to i64*, !mcsema_real_eip !143
  %572 = load i64, i64* %571, !mcsema_real_eip !143
  store i64 %572, i64* %XBX, !mcsema_real_eip !143
  %573 = add i64 %RSP_val.249, 8, !mcsema_real_eip !143
  store i64 %573, i64* %XSP, !mcsema_real_eip !143
  %RSP_val.250 = load i64, i64* %XSP, !mcsema_real_eip !144
  %574 = inttoptr i64 %RSP_val.250 to i64*, !mcsema_real_eip !144
  %575 = load i64, i64* %574, !mcsema_real_eip !144
  store i64 %575, i64* %XBP, !mcsema_real_eip !144
  %576 = add i64 %RSP_val.250, 8, !mcsema_real_eip !144
  store i64 %576, i64* %XSP, !mcsema_real_eip !144
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !145
  %577 = add i64 %RSP_val.251, 8, !mcsema_real_eip !145
  %578 = inttoptr i64 %RSP_val.251 to i64*, !mcsema_real_eip !145
  %579 = load i64, i64* %578, !mcsema_real_eip !145
  store i64 %579, i64* %XIP, !mcsema_real_eip !145
  store i64 %577, i64* %XSP, !mcsema_real_eip !145
  ret void, !mcsema_real_eip !145
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

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
!2 = !{i64 288}
!3 = !{i64 289}
!4 = !{i64 292}
!5 = !{i64 299}
!6 = !{i64 309}
!7 = !{i64 316}
!8 = !{i64 323}
!9 = !{i64 330}
!10 = !{i64 337}
!11 = !{i64 342}
!12 = !{i64 344}
!13 = !{i64 348}
!14 = !{i64 351}
!15 = !{i64 356}
!16 = !{i64 360}
!17 = !{i64 364}
!18 = !{i64 370}
!19 = !{i64 374}
!20 = !{i64 381}
!21 = !{i64 385}
!22 = !{i64 392}
!23 = !{i64 396}
!24 = !{i64 399}
!25 = !{i64 402}
!26 = !{i64 406}
!27 = !{i64 410}
!28 = !{i64 414}
!29 = !{i64 417}
!30 = !{i64 420}
!31 = !{i64 423}
!32 = !{i64 426}
!33 = !{i64 430}
!34 = !{i64 434}
!35 = !{i64 438}
!36 = !{i64 442}
!37 = !{i64 446}
!38 = !{i64 452}
!39 = !{i64 457}
!40 = !{i64 463}
!41 = !{i64 466}
!42 = !{i64 469}
!43 = !{i64 472}
!44 = !{i64 476}
!45 = !{i64 481}
!46 = !{i64 484}
!47 = !{i64 488}
!48 = !{i64 492}
!49 = !{i64 496}
!50 = !{i64 499}
!51 = !{i64 502}
!52 = !{i64 505}
!53 = !{i64 508}
!54 = !{i64 511}
!55 = !{i64 514}
!56 = !{i64 517}
!57 = !{i64 521}
!58 = !{i64 523}
!59 = !{i64 528}
!60 = !{i64 531}
!61 = !{i64 534}
!62 = !{i64 536}
!63 = !{i64 543}
!64 = !{i64 544}
!65 = !{i64 0}
!66 = !{i64 1}
!67 = !{i64 4}
!68 = !{i64 5}
!69 = !{i64 9}
!70 = !{i64 13}
!71 = !{i64 17}
!72 = !{i64 20}
!73 = !{i64 24}
!74 = !{i64 27}
!75 = !{i64 30}
!76 = !{i64 33}
!77 = !{i64 37}
!78 = !{i64 41}
!79 = !{i64 45}
!80 = !{i64 49}
!81 = !{i64 53}
!82 = !{i64 57}
!83 = !{i64 60}
!84 = !{i64 64}
!85 = !{i64 68}
!86 = !{i64 71}
!87 = !{i64 75}
!88 = !{i64 78}
!89 = !{i64 81}
!90 = !{i64 85}
!91 = !{i64 88}
!92 = !{i64 91}
!93 = !{i64 94}
!94 = !{i64 98}
!95 = !{i64 101}
!96 = !{i64 104}
!97 = !{i64 108}
!98 = !{i64 111}
!99 = !{i64 114}
!100 = !{i64 117}
!101 = !{i64 120}
!102 = !{i64 123}
!103 = !{i64 127}
!104 = !{i64 131}
!105 = !{i64 134}
!106 = !{i64 138}
!107 = !{i64 142}
!108 = !{i64 145}
!109 = !{i64 149}
!110 = !{i64 153}
!111 = !{i64 157}
!112 = !{i64 160}
!113 = !{i64 164}
!114 = !{i64 168}
!115 = !{i64 171}
!116 = !{i64 174}
!117 = !{i64 177}
!118 = !{i64 180}
!119 = !{i64 184}
!120 = !{i64 188}
!121 = !{i64 191}
!122 = !{i64 195}
!123 = !{i64 199}
!124 = !{i64 202}
!125 = !{i64 206}
!126 = !{i64 210}
!127 = !{i64 214}
!128 = !{i64 217}
!129 = !{i64 221}
!130 = !{i64 225}
!131 = !{i64 228}
!132 = !{i64 231}
!133 = !{i64 234}
!134 = !{i64 237}
!135 = !{i64 240}
!136 = !{i64 244}
!137 = !{i64 248}
!138 = !{i64 251}
!139 = !{i64 254}
!140 = !{i64 258}
!141 = !{i64 265}
!142 = !{i64 272}
!143 = !{i64 275}
!144 = !{i64 276}
!145 = !{i64 277}
