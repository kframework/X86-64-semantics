; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"c\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
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
  br label %block_0x70, !mcsema_real_eip !2

block_0x70:                                       ; preds = %entry
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
  store i64 10, i64* %XDI, !mcsema_real_eip !5
  store i64 20, i64* %XSI, !mcsema_real_eip !6
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !7
  %21 = add i64 %RBP_val.4, -4, !mcsema_real_eip !7
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !7
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %24, !mcsema_real_eip !7
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !8
  %25 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !8
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %26, !mcsema_real_eip !8
  store i64 %25, i64* %XSP, !mcsema_real_eip !8
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !9
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !10
  %27 = add i64 %RBP_val.6, -8, !mcsema_real_eip !10
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !10
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !10
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !10
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.8, i32* %30, !mcsema_real_eip !10
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !11
  %31 = add i64 %RBP_val.9, -8, !mcsema_real_eip !11
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !11
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !11
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !11
  %35 = load i32, i32* %34, !mcsema_real_eip !11
  %36 = zext i32 %35 to i64, !mcsema_real_eip !11
  store i64 %36, i64* %XSI, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !13
  %RSI_val.12 = load i64, i64* %XSI, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, !mcsema_real_eip !13
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !13
  %37 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !13
  %38 = load i64, i64* %37, !mcsema_real_eip !13
  %39 = add i64 %RSP_val.17, 8, !mcsema_real_eip !13
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !13
  %41 = load i64, i64* %40, !mcsema_real_eip !13
  %42 = add i64 %39, 8, !mcsema_real_eip !13
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !13
  %44 = load i64, i64* %43, !mcsema_real_eip !13
  %45 = add i64 %42, 8, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !13
  %47 = load i64, i64* %46, !mcsema_real_eip !13
  %48 = add i64 %45, 8, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !13
  %50 = load i64, i64* %49, !mcsema_real_eip !13
  %51 = add i64 %48, 8, !mcsema_real_eip !13
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !13
  %53 = load i64, i64* %52, !mcsema_real_eip !13
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !13
  %54 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !13
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !13
  store i64 -2415393069852865332, i64* %55, !mcsema_real_eip !13
  store i64 %54, i64* %XSP, !mcsema_real_eip !13
  %56 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %RSI_val.12, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %38, i64 %41, i64 %44, i64 %47, i64 %50, i64 %53), !mcsema_real_eip !13
  store i64 %56, i64* %XAX, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %57 = add i64 %RBP_val.19, -8, !mcsema_real_eip !14
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !14
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !14
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !14
  %61 = load i32, i32* %60, !mcsema_real_eip !14
  %62 = zext i32 %61 to i64, !mcsema_real_eip !14
  store i64 %62, i64* %XSI, !mcsema_real_eip !14
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !15
  %63 = add i64 %RBP_val.20, -12, !mcsema_real_eip !15
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !15
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !15
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !15
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.22, i32* %66, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, !mcsema_real_eip !16
  %67 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %67, i64* %XAX, !mcsema_real_eip !16
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !17
  %68 = add i64 16, %RSP_val.25, !mcsema_real_eip !17
  %69 = xor i64 %68, %RSP_val.25, !mcsema_real_eip !17
  %70 = xor i64 %69, 16, !mcsema_real_eip !17
  %71 = and i64 %70, 16, !mcsema_real_eip !17
  %72 = icmp ne i64 %71, 0, !mcsema_real_eip !17
  store i1 %72, i1* %AF, !mcsema_real_eip !17
  %73 = lshr i64 %68, 63, !mcsema_real_eip !17
  %74 = trunc i64 %73 to i1, !mcsema_real_eip !17
  store i1 %74, i1* %SF, !mcsema_real_eip !17
  %75 = icmp eq i64 %68, 0, !mcsema_real_eip !17
  store i1 %75, i1* %ZF, !mcsema_real_eip !17
  %76 = xor i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %77 = xor i64 %76, -1, !mcsema_real_eip !17
  %78 = xor i64 %RSP_val.25, %68, !mcsema_real_eip !17
  %79 = and i64 %77, %78, !mcsema_real_eip !17
  %80 = lshr i64 %79, 63, !mcsema_real_eip !17
  %81 = and i64 %80, 1, !mcsema_real_eip !17
  %82 = trunc i64 %81 to i1, !mcsema_real_eip !17
  store i1 %82, i1* %OF, !mcsema_real_eip !17
  %83 = trunc i64 %68 to i8, !mcsema_real_eip !17
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !17
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !17
  %86 = xor i1 %85, true, !mcsema_real_eip !17
  store i1 %86, i1* %PF, !mcsema_real_eip !17
  %87 = icmp ult i64 %68, %RSP_val.25, !mcsema_real_eip !17
  store i1 %87, i1* %CF, !mcsema_real_eip !17
  store i64 %68, i64* %XSP, !mcsema_real_eip !17
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !18
  %88 = inttoptr i64 %RSP_val.26 to i64*, !mcsema_real_eip !18
  %89 = load i64, i64* %88, !mcsema_real_eip !18
  store i64 %89, i64* %XBP, !mcsema_real_eip !18
  %90 = add i64 %RSP_val.26, 8, !mcsema_real_eip !18
  store i64 %90, i64* %XSP, !mcsema_real_eip !18
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !19
  %91 = add i64 %RSP_val.27, 8, !mcsema_real_eip !19
  %92 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !19
  %93 = load i64, i64* %92, !mcsema_real_eip !19
  store i64 %93, i64* %XIP, !mcsema_real_eip !19
  store i64 %91, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !20
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !20
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !20
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !20
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !20
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !20
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !20
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !20
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !20
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !20
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !20
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !20
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !20
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !20
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !20
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !20
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !20
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !20
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !20
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !20
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !20
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !20
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !20
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !20
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !20
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !20
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !20
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !20
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !20
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !20
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !20
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !20
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !20
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !20
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !20
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !20
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !20
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !20
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !20
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !20
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !20
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !20
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !20
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !20
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !20
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !20
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !20
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !20
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !20
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !20
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !20
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !20
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !20
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !20
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !20
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !20
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !20
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !20
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !20
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !20
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !20
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !20
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !20
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !20
  br label %block_0x0, !mcsema_real_eip !20

block_0x0:                                        ; preds = %entry
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !20
  %1 = sub i64 %RSP_val.29, 8, !mcsema_real_eip !20
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !20
  store i64 %RBP_val.28, i64* %2, !mcsema_real_eip !20
  store i64 %1, i64* %XSP, !mcsema_real_eip !20
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  store i64 %RSP_val.30, i64* %XBP, !mcsema_real_eip !21
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !22
  %3 = add i64 %RBP_val.31, -4, !mcsema_real_eip !22
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !22
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !22
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !22
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.33, i32* %6, !mcsema_real_eip !22
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !23
  %7 = add i64 %RBP_val.34, -8, !mcsema_real_eip !23
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !23
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, !mcsema_real_eip !23
  %9 = ptrtoint i64* %8 to i64, !mcsema_real_eip !23
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.36, i32* %10, !mcsema_real_eip !23
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !24
  %11 = add i64 %RBP_val.37, -4, !mcsema_real_eip !24
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !24
  %13 = ptrtoint i64* %12 to i64, !mcsema_real_eip !24
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !24
  %15 = load i32, i32* %14, !mcsema_real_eip !24
  %16 = zext i32 %15 to i64, !mcsema_real_eip !24
  store i64 %16, i64* %XSI, !mcsema_real_eip !24
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !25
  %17 = add i64 %RBP_val.38, -8, !mcsema_real_eip !25
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !25
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !25
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !25
  %21 = load i32, i32* %20, !mcsema_real_eip !25
  %ESI.39 = bitcast i64* %XSI to i32*, !mcsema_real_eip !25
  %ESI_val.40 = load i32, i32* %ESI.39, !mcsema_real_eip !25
  %22 = add i32 %ESI_val.40, %21, !mcsema_real_eip !25
  %23 = xor i32 %22, %21, !mcsema_real_eip !25
  %24 = xor i32 %23, %ESI_val.40, !mcsema_real_eip !25
  %25 = and i32 %24, 16, !mcsema_real_eip !25
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !25
  store i1 %26, i1* %AF, !mcsema_real_eip !25
  %27 = lshr i32 %22, 31, !mcsema_real_eip !25
  %28 = trunc i32 %27 to i1, !mcsema_real_eip !25
  store i1 %28, i1* %SF, !mcsema_real_eip !25
  %29 = icmp eq i32 %22, 0, !mcsema_real_eip !25
  store i1 %29, i1* %ZF, !mcsema_real_eip !25
  %30 = xor i32 %21, %ESI_val.40, !mcsema_real_eip !25
  %31 = xor i32 %30, -1, !mcsema_real_eip !25
  %32 = xor i32 %21, %22, !mcsema_real_eip !25
  %33 = and i32 %31, %32, !mcsema_real_eip !25
  %34 = lshr i32 %33, 31, !mcsema_real_eip !25
  %35 = and i32 %34, 1, !mcsema_real_eip !25
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !25
  store i1 %36, i1* %OF, !mcsema_real_eip !25
  %37 = trunc i32 %22 to i8, !mcsema_real_eip !25
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !25
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !25
  %40 = xor i1 %39, true, !mcsema_real_eip !25
  store i1 %40, i1* %PF, !mcsema_real_eip !25
  %41 = icmp ult i32 %22, %21, !mcsema_real_eip !25
  store i1 %41, i1* %CF, !mcsema_real_eip !25
  %42 = zext i32 %22 to i64, !mcsema_real_eip !25
  store i64 %42, i64* %XSI, !mcsema_real_eip !25
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !26
  %43 = add i64 %RBP_val.41, -12, !mcsema_real_eip !26
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !26
  %ESI.42 = bitcast i64* %XSI to i32*, !mcsema_real_eip !26
  %ESI_val.43 = load i32, i32* %ESI.42, !mcsema_real_eip !26
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !26
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !26
  store i32 %ESI_val.43, i32* %46, !mcsema_real_eip !26
  br label %block_0x13, !mcsema_real_eip !27

block_0x13:                                       ; preds = %block_0x50, %block_0x0
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !27
  %47 = add i64 %RBP_val.44, -4, !mcsema_real_eip !27
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !27
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !27
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !27
  %51 = load i32, i32* %50, !mcsema_real_eip !27
  %52 = sub i32 %51, 0, !mcsema_real_eip !27
  %53 = xor i32 %52, %51, !mcsema_real_eip !27
  %54 = xor i32 %53, 0, !mcsema_real_eip !27
  %55 = and i32 %54, 16, !mcsema_real_eip !27
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !27
  store i1 %56, i1* %AF, !mcsema_real_eip !27
  %57 = trunc i32 %52 to i8, !mcsema_real_eip !27
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !27
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !27
  %60 = xor i1 %59, true, !mcsema_real_eip !27
  store i1 %60, i1* %PF, !mcsema_real_eip !27
  %61 = icmp eq i32 %52, 0, !mcsema_real_eip !27
  store i1 %61, i1* %ZF, !mcsema_real_eip !27
  %62 = lshr i32 %52, 31, !mcsema_real_eip !27
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !27
  store i1 %63, i1* %SF, !mcsema_real_eip !27
  %64 = icmp ult i32 %51, 0, !mcsema_real_eip !27
  store i1 %64, i1* %CF, !mcsema_real_eip !27
  %65 = xor i32 %51, 0, !mcsema_real_eip !27
  %66 = xor i32 %51, %52, !mcsema_real_eip !27
  %67 = and i32 %65, %66, !mcsema_real_eip !27
  %68 = lshr i32 %67, 31, !mcsema_real_eip !27
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !27
  store i1 %69, i1* %OF, !mcsema_real_eip !27
  %70 = load i1, i1* %OF, !mcsema_real_eip !28
  %71 = load i1, i1* %SF, !mcsema_real_eip !28
  %72 = icmp eq i1 %71, %70, !mcsema_real_eip !28
  %73 = icmp eq i1 %72, false, !mcsema_real_eip !28
  br i1 %73, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !28

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !30
  %74 = add i64 %RBP_val.48, -4, !mcsema_real_eip !30
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !30
  %76 = ptrtoint i64* %75 to i64, !mcsema_real_eip !30
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !30
  %78 = load i32, i32* %77, !mcsema_real_eip !30
  %79 = zext i32 %78 to i64, !mcsema_real_eip !30
  store i64 %79, i64* %XCX, !mcsema_real_eip !30
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !31
  %80 = add i64 %RBP_val.49, -20, !mcsema_real_eip !31
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !31
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !31
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !31
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.51, i32* %83, !mcsema_real_eip !31
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, !mcsema_real_eip !32
  %84 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !32
  store i64 %84, i64* %XAX, !mcsema_real_eip !32
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !33
  %85 = and i32 %EAX_val.55, -2147483648, !mcsema_real_eip !33
  %86 = icmp eq i32 %85, 0, !mcsema_real_eip !33
  %87 = select i1 %86, i32 0, i32 -1, !mcsema_real_eip !33
  %88 = zext i32 %87 to i64, !mcsema_real_eip !33
  store i64 %88, i64* %XDX, !mcsema_real_eip !33
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !34
  %89 = add i64 %RBP_val.56, -20, !mcsema_real_eip !34
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !34
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !34
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !34
  %93 = load i32, i32* %92, !mcsema_real_eip !34
  %94 = zext i32 %93 to i64, !mcsema_real_eip !34
  store i64 %94, i64* %XCX, !mcsema_real_eip !34
  %ECX.57 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.58 = load i32, i32* %ECX.57, !mcsema_real_eip !35
  %EAX.59 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.60 = load i32, i32* %EAX.59, !mcsema_real_eip !35
  %EDX.61 = bitcast i64* %XDX to i32*, !mcsema_real_eip !35
  %EDX_val.62 = load i32, i32* %EDX.61, !mcsema_real_eip !35
  %95 = zext i32 %EDX_val.62 to i64, !mcsema_real_eip !35
  %96 = shl i64 %95, 32, !mcsema_real_eip !35
  %97 = sext i32 %EAX_val.60 to i64, !mcsema_real_eip !35
  %98 = or i64 %96, %97, !mcsema_real_eip !35
  %99 = sext i32 %ECX_val.58 to i64, !mcsema_real_eip !35
  %100 = sdiv i64 %98, %99, !mcsema_real_eip !35
  %101 = srem i64 %98, %99, !mcsema_real_eip !35
  %102 = trunc i64 %101 to i32, !mcsema_real_eip !35
  %103 = trunc i64 %100 to i32, !mcsema_real_eip !35
  %104 = zext i32 %102 to i64, !mcsema_real_eip !35
  store i64 %104, i64* %XDX, !mcsema_real_eip !35
  %105 = zext i32 %103 to i64, !mcsema_real_eip !35
  store i64 %105, i64* %XAX, !mcsema_real_eip !35
  %EDX.63 = bitcast i64* %XDX to i32*, !mcsema_real_eip !36
  %EDX_val.64 = load i32, i32* %EDX.63, !mcsema_real_eip !36
  %106 = sub i32 %EDX_val.64, 0, !mcsema_real_eip !36
  %107 = xor i32 %106, %EDX_val.64, !mcsema_real_eip !36
  %108 = xor i32 %107, 0, !mcsema_real_eip !36
  %109 = and i32 %108, 16, !mcsema_real_eip !36
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !36
  store i1 %110, i1* %AF, !mcsema_real_eip !36
  %111 = trunc i32 %106 to i8, !mcsema_real_eip !36
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !36
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !36
  %114 = xor i1 %113, true, !mcsema_real_eip !36
  store i1 %114, i1* %PF, !mcsema_real_eip !36
  %115 = icmp eq i32 %106, 0, !mcsema_real_eip !36
  store i1 %115, i1* %ZF, !mcsema_real_eip !36
  %116 = lshr i32 %106, 31, !mcsema_real_eip !36
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !36
  store i1 %117, i1* %SF, !mcsema_real_eip !36
  %118 = icmp ult i32 %EDX_val.64, 0, !mcsema_real_eip !36
  store i1 %118, i1* %CF, !mcsema_real_eip !36
  %119 = xor i32 %EDX_val.64, 0, !mcsema_real_eip !36
  %120 = xor i32 %EDX_val.64, %106, !mcsema_real_eip !36
  %121 = and i32 %119, %120, !mcsema_real_eip !36
  %122 = lshr i32 %121, 31, !mcsema_real_eip !36
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !36
  store i1 %123, i1* %OF, !mcsema_real_eip !36
  %124 = load i1, i1* %ZF, !mcsema_real_eip !37
  %125 = icmp eq i1 %124, false, !mcsema_real_eip !37
  br i1 %125, label %block_0x47, label %block_0x39, !mcsema_real_eip !37

block_0x5e:                                       ; preds = %block_0x13
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !38
  %126 = add i64 %RBP_val.45, -16, !mcsema_real_eip !38
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !38
  %128 = ptrtoint i64* %127 to i64, !mcsema_real_eip !38
  %129 = inttoptr i64 %128 to i32*, !mcsema_real_eip !38
  %130 = load i32, i32* %129, !mcsema_real_eip !38
  %131 = zext i32 %130 to i64, !mcsema_real_eip !38
  store i64 %131, i64* %XAX, !mcsema_real_eip !38
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !39
  %132 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !39
  %133 = load i64, i64* %132, !mcsema_real_eip !39
  store i64 %133, i64* %XBP, !mcsema_real_eip !39
  %134 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store i64 %134, i64* %XSP, !mcsema_real_eip !39
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !40
  %135 = add i64 %RSP_val.47, 8, !mcsema_real_eip !40
  %136 = inttoptr i64 %RSP_val.47 to i64*, !mcsema_real_eip !40
  %137 = load i64, i64* %136, !mcsema_real_eip !40
  store i64 %137, i64* %XIP, !mcsema_real_eip !40
  store i64 %135, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !41
  %138 = add i64 %RBP_val.71, -12, !mcsema_real_eip !41
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !41
  %140 = ptrtoint i64* %139 to i64, !mcsema_real_eip !41
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !41
  %142 = load i32, i32* %141, !mcsema_real_eip !41
  %143 = zext i32 %142 to i64, !mcsema_real_eip !41
  store i64 %143, i64* %XAX, !mcsema_real_eip !41
  %EAX.72 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.73 = load i32, i32* %EAX.72, !mcsema_real_eip !42
  %144 = add i32 10, %EAX_val.73, !mcsema_real_eip !42
  %145 = xor i32 %144, %EAX_val.73, !mcsema_real_eip !42
  %146 = xor i32 %145, 10, !mcsema_real_eip !42
  %147 = and i32 %146, 16, !mcsema_real_eip !42
  %148 = icmp ne i32 %147, 0, !mcsema_real_eip !42
  store i1 %148, i1* %AF, !mcsema_real_eip !42
  %149 = lshr i32 %144, 31, !mcsema_real_eip !42
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !42
  store i1 %150, i1* %SF, !mcsema_real_eip !42
  %151 = icmp eq i32 %144, 0, !mcsema_real_eip !42
  store i1 %151, i1* %ZF, !mcsema_real_eip !42
  %152 = xor i32 %EAX_val.73, 10, !mcsema_real_eip !42
  %153 = xor i32 %152, -1, !mcsema_real_eip !42
  %154 = xor i32 %EAX_val.73, %144, !mcsema_real_eip !42
  %155 = and i32 %153, %154, !mcsema_real_eip !42
  %156 = lshr i32 %155, 31, !mcsema_real_eip !42
  %157 = and i32 %156, 1, !mcsema_real_eip !42
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !42
  store i1 %158, i1* %OF, !mcsema_real_eip !42
  %159 = trunc i32 %144 to i8, !mcsema_real_eip !42
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !42
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !42
  %162 = xor i1 %161, true, !mcsema_real_eip !42
  store i1 %162, i1* %PF, !mcsema_real_eip !42
  %163 = icmp ult i32 %144, %EAX_val.73, !mcsema_real_eip !42
  store i1 %163, i1* %CF, !mcsema_real_eip !42
  %164 = zext i32 %144 to i64, !mcsema_real_eip !42
  store i64 %164, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !43
  %165 = add i64 %RBP_val.74, -16, !mcsema_real_eip !43
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !43
  %EAX.75 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.76 = load i32, i32* %EAX.75, !mcsema_real_eip !43
  %167 = ptrtoint i64* %166 to i64, !mcsema_real_eip !43
  %168 = inttoptr i64 %167 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.76, i32* %168, !mcsema_real_eip !43
  br label %block_0x50, !mcsema_real_eip !44

block_0x47:                                       ; preds = %block_0x1d
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !45
  %169 = add i64 %RBP_val.65, -12, !mcsema_real_eip !45
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !45
  %171 = ptrtoint i64* %170 to i64, !mcsema_real_eip !45
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !45
  %173 = load i32, i32* %172, !mcsema_real_eip !45
  %174 = zext i32 %173 to i64, !mcsema_real_eip !45
  store i64 %174, i64* %XAX, !mcsema_real_eip !45
  %EAX.66 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.67 = load i32, i32* %EAX.66, !mcsema_real_eip !46
  %175 = sub i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %176 = xor i32 %175, %EAX_val.67, !mcsema_real_eip !46
  %177 = xor i32 %176, 10, !mcsema_real_eip !46
  %178 = and i32 %177, 16, !mcsema_real_eip !46
  %179 = icmp ne i32 %178, 0, !mcsema_real_eip !46
  store i1 %179, i1* %AF, !mcsema_real_eip !46
  %180 = trunc i32 %175 to i8, !mcsema_real_eip !46
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !46
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !46
  %183 = xor i1 %182, true, !mcsema_real_eip !46
  store i1 %183, i1* %PF, !mcsema_real_eip !46
  %184 = icmp eq i32 %175, 0, !mcsema_real_eip !46
  store i1 %184, i1* %ZF, !mcsema_real_eip !46
  %185 = lshr i32 %175, 31, !mcsema_real_eip !46
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !46
  store i1 %186, i1* %SF, !mcsema_real_eip !46
  %187 = icmp ult i32 %EAX_val.67, 10, !mcsema_real_eip !46
  store i1 %187, i1* %CF, !mcsema_real_eip !46
  %188 = xor i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %189 = xor i32 %EAX_val.67, %175, !mcsema_real_eip !46
  %190 = and i32 %188, %189, !mcsema_real_eip !46
  %191 = lshr i32 %190, 31, !mcsema_real_eip !46
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !46
  store i1 %192, i1* %OF, !mcsema_real_eip !46
  %193 = zext i32 %175 to i64, !mcsema_real_eip !46
  store i64 %193, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !47
  %194 = add i64 %RBP_val.68, -12, !mcsema_real_eip !47
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !47
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !47
  %196 = ptrtoint i64* %195 to i64, !mcsema_real_eip !47
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.70, i32* %197, !mcsema_real_eip !47
  br label %block_0x50, !mcsema_real_eip !41

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.77 = load i64, i64* %XBP, !mcsema_real_eip !48
  %198 = add i64 %RBP_val.77, -4, !mcsema_real_eip !48
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !48
  %200 = ptrtoint i64* %199 to i64, !mcsema_real_eip !48
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !48
  %202 = load i32, i32* %201, !mcsema_real_eip !48
  %203 = zext i32 %202 to i64, !mcsema_real_eip !48
  store i64 %203, i64* %XAX, !mcsema_real_eip !48
  %EAX.78 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.79 = load i32, i32* %EAX.78, !mcsema_real_eip !49
  %204 = add i32 -1, %EAX_val.79, !mcsema_real_eip !49
  %205 = xor i32 %204, %EAX_val.79, !mcsema_real_eip !49
  %206 = xor i32 %205, -1, !mcsema_real_eip !49
  %207 = and i32 %206, 16, !mcsema_real_eip !49
  %208 = icmp ne i32 %207, 0, !mcsema_real_eip !49
  store i1 %208, i1* %AF, !mcsema_real_eip !49
  %209 = lshr i32 %204, 31, !mcsema_real_eip !49
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !49
  store i1 %210, i1* %SF, !mcsema_real_eip !49
  %211 = icmp eq i32 %204, 0, !mcsema_real_eip !49
  store i1 %211, i1* %ZF, !mcsema_real_eip !49
  %212 = xor i32 %EAX_val.79, -1, !mcsema_real_eip !49
  %213 = xor i32 %212, -1, !mcsema_real_eip !49
  %214 = xor i32 %EAX_val.79, %204, !mcsema_real_eip !49
  %215 = and i32 %213, %214, !mcsema_real_eip !49
  %216 = lshr i32 %215, 31, !mcsema_real_eip !49
  %217 = and i32 %216, 1, !mcsema_real_eip !49
  %218 = trunc i32 %217 to i1, !mcsema_real_eip !49
  store i1 %218, i1* %OF, !mcsema_real_eip !49
  %219 = trunc i32 %204 to i8, !mcsema_real_eip !49
  %220 = call i8 @llvm.ctpop.i8(i8 %219), !mcsema_real_eip !49
  %221 = trunc i8 %220 to i1, !mcsema_real_eip !49
  %222 = xor i1 %221, true, !mcsema_real_eip !49
  store i1 %222, i1* %PF, !mcsema_real_eip !49
  %223 = icmp ult i32 %204, %EAX_val.79, !mcsema_real_eip !49
  store i1 %223, i1* %CF, !mcsema_real_eip !49
  %224 = zext i32 %204 to i64, !mcsema_real_eip !49
  store i64 %224, i64* %XAX, !mcsema_real_eip !49
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !50
  %225 = add i64 %RBP_val.80, -4, !mcsema_real_eip !50
  %226 = inttoptr i64 %225 to i64*, !mcsema_real_eip !50
  %EAX.81 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.82 = load i32, i32* %EAX.81, !mcsema_real_eip !50
  %227 = ptrtoint i64* %226 to i64, !mcsema_real_eip !50
  %228 = inttoptr i64 %227 to i32*, !mcsema_real_eip !50
  store i32 %EAX_val.82, i32* %228, !mcsema_real_eip !50
  br label %block_0x13, !mcsema_real_eip !51
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
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 137}
!9 = !{i64 142}
!10 = !{i64 152}
!11 = !{i64 155}
!12 = !{i64 158}
!13 = !{i64 160}
!14 = !{i64 165}
!15 = !{i64 168}
!16 = !{i64 171}
!17 = !{i64 173}
!18 = !{i64 177}
!19 = !{i64 178}
!20 = !{i64 0}
!21 = !{i64 1}
!22 = !{i64 4}
!23 = !{i64 7}
!24 = !{i64 10}
!25 = !{i64 13}
!26 = !{i64 16}
!27 = !{i64 19}
!28 = !{i64 23}
!29 = !{i64 29}
!30 = !{i64 34}
!31 = !{i64 37}
!32 = !{i64 40}
!33 = !{i64 42}
!34 = !{i64 43}
!35 = !{i64 46}
!36 = !{i64 48}
!37 = !{i64 51}
!38 = !{i64 94}
!39 = !{i64 97}
!40 = !{i64 98}
!41 = !{i64 57}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 71}
!46 = !{i64 74}
!47 = !{i64 77}
!48 = !{i64 80}
!49 = !{i64 83}
!50 = !{i64 86}
!51 = !{i64 89}
