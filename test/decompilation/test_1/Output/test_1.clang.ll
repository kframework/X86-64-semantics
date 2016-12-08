; ModuleID = 'Output/test_1.clang.bc'
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
  %22 = zext i32 10 to i64, !mcsema_real_eip !5
  store i64 %22, i64* %XDI, !mcsema_real_eip !5
  %23 = zext i32 20 to i64, !mcsema_real_eip !6
  store i64 %23, i64* %XSI, !mcsema_real_eip !6
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.4, -4, !mcsema_real_eip !7
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !7
  %26 = ptrtoint i64* %25 to i64, !mcsema_real_eip !7
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %27, !mcsema_real_eip !7
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !8
  %28 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %29, !mcsema_real_eip !8
  store i64 %28, i64* %XSP, !mcsema_real_eip !8
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !8
  %30 = getelementptr %0, %0* @data_0xb3, i64 0, i32 0, !mcsema_real_eip !9
  %31 = ptrtoint [4 x i8]* %30 to i64, !mcsema_real_eip !9
  %32 = add i64 %31, 0, !mcsema_real_eip !9
  store i64 %32, i64* %XDI, !mcsema_real_eip !9
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !10
  %33 = add i64 %RBP_val.6, -8, !mcsema_real_eip !10
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !10
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !10
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !10
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.8, i32* %36, !mcsema_real_eip !10
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !11
  %37 = add i64 %RBP_val.9, -8, !mcsema_real_eip !11
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !11
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !11
  %41 = load i32, i32* %40, !mcsema_real_eip !11
  %42 = zext i32 %41 to i64, !mcsema_real_eip !11
  store i64 %42, i64* %XSI, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !13
  %RSI_val.12 = load i64, i64* %XSI, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, !mcsema_real_eip !13
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !13
  %43 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !13
  %44 = load i64, i64* %43, !mcsema_real_eip !13
  %45 = add i64 %RSP_val.17, 8, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !13
  %47 = load i64, i64* %46, !mcsema_real_eip !13
  %48 = add i64 %45, 8, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !13
  %50 = load i64, i64* %49, !mcsema_real_eip !13
  %51 = add i64 %48, 8, !mcsema_real_eip !13
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !13
  %53 = load i64, i64* %52, !mcsema_real_eip !13
  %54 = add i64 %51, 8, !mcsema_real_eip !13
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !13
  %56 = load i64, i64* %55, !mcsema_real_eip !13
  %57 = add i64 %54, 8, !mcsema_real_eip !13
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !13
  %59 = load i64, i64* %58, !mcsema_real_eip !13
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !13
  %60 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !13
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !13
  store i64 -2415393069852865332, i64* %61, !mcsema_real_eip !13
  store i64 %60, i64* %XSP, !mcsema_real_eip !13
  %62 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %RSI_val.12, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %44, i64 %47, i64 %50, i64 %53, i64 %56, i64 %59), !mcsema_real_eip !13
  store i64 %62, i64* %XAX, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !14
  %63 = add i64 %RBP_val.19, -8, !mcsema_real_eip !14
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !14
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !14
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !14
  %67 = load i32, i32* %66, !mcsema_real_eip !14
  %68 = zext i32 %67 to i64, !mcsema_real_eip !14
  store i64 %68, i64* %XSI, !mcsema_real_eip !14
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !15
  %69 = add i64 %RBP_val.20, -12, !mcsema_real_eip !15
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !15
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !15
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !15
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.22, i32* %72, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, !mcsema_real_eip !16
  %73 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %73, i64* %XAX, !mcsema_real_eip !16
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !17
  %74 = add i64 16, %RSP_val.25, !mcsema_real_eip !17
  %75 = xor i64 %74, %RSP_val.25, !mcsema_real_eip !17
  %76 = xor i64 %75, 16, !mcsema_real_eip !17
  %77 = and i64 %76, 16, !mcsema_real_eip !17
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !17
  store i1 %78, i1* %AF, !mcsema_real_eip !17
  %79 = lshr i64 %74, 63, !mcsema_real_eip !17
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !17
  store i1 %80, i1* %SF, !mcsema_real_eip !17
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !17
  store i1 %81, i1* %ZF, !mcsema_real_eip !17
  %82 = xor i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %83 = xor i64 %82, -1, !mcsema_real_eip !17
  %84 = xor i64 %RSP_val.25, %74, !mcsema_real_eip !17
  %85 = and i64 %83, %84, !mcsema_real_eip !17
  %86 = lshr i64 %85, 63, !mcsema_real_eip !17
  %87 = and i64 %86, 1, !mcsema_real_eip !17
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !17
  store i1 %88, i1* %OF, !mcsema_real_eip !17
  %89 = trunc i64 %74 to i8, !mcsema_real_eip !17
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !17
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !17
  %92 = xor i1 %91, true, !mcsema_real_eip !17
  store i1 %92, i1* %PF, !mcsema_real_eip !17
  %93 = icmp ult i64 %74, %RSP_val.25, !mcsema_real_eip !17
  store i1 %93, i1* %CF, !mcsema_real_eip !17
  store i64 %74, i64* %XSP, !mcsema_real_eip !17
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !18
  %94 = inttoptr i64 %RSP_val.26 to i64*, !mcsema_real_eip !18
  %95 = load i64, i64* %94, !mcsema_real_eip !18
  store i64 %95, i64* %XBP, !mcsema_real_eip !18
  %96 = add i64 %RSP_val.26, 8, !mcsema_real_eip !18
  store i64 %96, i64* %XSP, !mcsema_real_eip !18
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !19
  %97 = add i64 %RSP_val.27, 8, !mcsema_real_eip !19
  %98 = inttoptr i64 %RSP_val.27 to i64*, !mcsema_real_eip !19
  %99 = load i64, i64* %98, !mcsema_real_eip !19
  store i64 %99, i64* %XIP, !mcsema_real_eip !19
  store i64 %97, i64* %XSP, !mcsema_real_eip !19
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
  %74 = zext i32 2 to i64, !mcsema_real_eip !29
  store i64 %74, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !30
  %75 = add i64 %RBP_val.48, -4, !mcsema_real_eip !30
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !30
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !30
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !30
  %79 = load i32, i32* %78, !mcsema_real_eip !30
  %80 = zext i32 %79 to i64, !mcsema_real_eip !30
  store i64 %80, i64* %XCX, !mcsema_real_eip !30
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !31
  %81 = add i64 %RBP_val.49, -20, !mcsema_real_eip !31
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !31
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !31
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !31
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.51, i32* %84, !mcsema_real_eip !31
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, !mcsema_real_eip !32
  %85 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !32
  store i64 %85, i64* %XAX, !mcsema_real_eip !32
  %EAX.54 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.55 = load i32, i32* %EAX.54, !mcsema_real_eip !33
  %86 = and i32 %EAX_val.55, -2147483648, !mcsema_real_eip !33
  %87 = icmp eq i32 %86, 0, !mcsema_real_eip !33
  %88 = select i1 %87, i32 0, i32 -1, !mcsema_real_eip !33
  %89 = zext i32 %88 to i64, !mcsema_real_eip !33
  store i64 %89, i64* %XDX, !mcsema_real_eip !33
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !34
  %90 = add i64 %RBP_val.56, -20, !mcsema_real_eip !34
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !34
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !34
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !34
  %94 = load i32, i32* %93, !mcsema_real_eip !34
  %95 = zext i32 %94 to i64, !mcsema_real_eip !34
  store i64 %95, i64* %XCX, !mcsema_real_eip !34
  %ECX.57 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.58 = load i32, i32* %ECX.57, !mcsema_real_eip !35
  %EAX.59 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.60 = load i32, i32* %EAX.59, !mcsema_real_eip !35
  %EDX.61 = bitcast i64* %XDX to i32*, !mcsema_real_eip !35
  %EDX_val.62 = load i32, i32* %EDX.61, !mcsema_real_eip !35
  %96 = zext i32 %EDX_val.62 to i64, !mcsema_real_eip !35
  %97 = shl i64 %96, 32, !mcsema_real_eip !35
  %98 = sext i32 %EAX_val.60 to i64, !mcsema_real_eip !35
  %99 = or i64 %97, %98, !mcsema_real_eip !35
  %100 = sext i32 %ECX_val.58 to i64, !mcsema_real_eip !35
  %101 = sdiv i64 %99, %100, !mcsema_real_eip !35
  %102 = srem i64 %99, %100, !mcsema_real_eip !35
  %103 = trunc i64 %102 to i32, !mcsema_real_eip !35
  %104 = trunc i64 %101 to i32, !mcsema_real_eip !35
  %105 = zext i32 %103 to i64, !mcsema_real_eip !35
  store i64 %105, i64* %XDX, !mcsema_real_eip !35
  %106 = zext i32 %104 to i64, !mcsema_real_eip !35
  store i64 %106, i64* %XAX, !mcsema_real_eip !35
  %EDX.63 = bitcast i64* %XDX to i32*, !mcsema_real_eip !36
  %EDX_val.64 = load i32, i32* %EDX.63, !mcsema_real_eip !36
  %107 = sub i32 %EDX_val.64, 0, !mcsema_real_eip !36
  %108 = xor i32 %107, %EDX_val.64, !mcsema_real_eip !36
  %109 = xor i32 %108, 0, !mcsema_real_eip !36
  %110 = and i32 %109, 16, !mcsema_real_eip !36
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !36
  store i1 %111, i1* %AF, !mcsema_real_eip !36
  %112 = trunc i32 %107 to i8, !mcsema_real_eip !36
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !36
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !36
  %115 = xor i1 %114, true, !mcsema_real_eip !36
  store i1 %115, i1* %PF, !mcsema_real_eip !36
  %116 = icmp eq i32 %107, 0, !mcsema_real_eip !36
  store i1 %116, i1* %ZF, !mcsema_real_eip !36
  %117 = lshr i32 %107, 31, !mcsema_real_eip !36
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !36
  store i1 %118, i1* %SF, !mcsema_real_eip !36
  %119 = icmp ult i32 %EDX_val.64, 0, !mcsema_real_eip !36
  store i1 %119, i1* %CF, !mcsema_real_eip !36
  %120 = xor i32 %EDX_val.64, 0, !mcsema_real_eip !36
  %121 = xor i32 %EDX_val.64, %107, !mcsema_real_eip !36
  %122 = and i32 %120, %121, !mcsema_real_eip !36
  %123 = lshr i32 %122, 31, !mcsema_real_eip !36
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !36
  store i1 %124, i1* %OF, !mcsema_real_eip !36
  %125 = load i1, i1* %ZF, !mcsema_real_eip !37
  %126 = icmp eq i1 %125, false, !mcsema_real_eip !37
  br i1 %126, label %block_0x47, label %block_0x39, !mcsema_real_eip !37

block_0x5e:                                       ; preds = %block_0x13
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !38
  %127 = add i64 %RBP_val.45, -16, !mcsema_real_eip !38
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !38
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !38
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !38
  %131 = load i32, i32* %130, !mcsema_real_eip !38
  %132 = zext i32 %131 to i64, !mcsema_real_eip !38
  store i64 %132, i64* %XAX, !mcsema_real_eip !38
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !39
  %133 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !39
  %134 = load i64, i64* %133, !mcsema_real_eip !39
  store i64 %134, i64* %XBP, !mcsema_real_eip !39
  %135 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store i64 %135, i64* %XSP, !mcsema_real_eip !39
  %RSP_val.47 = load i64, i64* %XSP, !mcsema_real_eip !40
  %136 = add i64 %RSP_val.47, 8, !mcsema_real_eip !40
  %137 = inttoptr i64 %RSP_val.47 to i64*, !mcsema_real_eip !40
  %138 = load i64, i64* %137, !mcsema_real_eip !40
  store i64 %138, i64* %XIP, !mcsema_real_eip !40
  store i64 %136, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !41
  %139 = add i64 %RBP_val.71, -12, !mcsema_real_eip !41
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !41
  %141 = ptrtoint i64* %140 to i64, !mcsema_real_eip !41
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !41
  %143 = load i32, i32* %142, !mcsema_real_eip !41
  %144 = zext i32 %143 to i64, !mcsema_real_eip !41
  store i64 %144, i64* %XAX, !mcsema_real_eip !41
  %EAX.72 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.73 = load i32, i32* %EAX.72, !mcsema_real_eip !42
  %145 = add i32 10, %EAX_val.73, !mcsema_real_eip !42
  %146 = xor i32 %145, %EAX_val.73, !mcsema_real_eip !42
  %147 = xor i32 %146, 10, !mcsema_real_eip !42
  %148 = and i32 %147, 16, !mcsema_real_eip !42
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !42
  store i1 %149, i1* %AF, !mcsema_real_eip !42
  %150 = lshr i32 %145, 31, !mcsema_real_eip !42
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !42
  store i1 %151, i1* %SF, !mcsema_real_eip !42
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !42
  store i1 %152, i1* %ZF, !mcsema_real_eip !42
  %153 = xor i32 %EAX_val.73, 10, !mcsema_real_eip !42
  %154 = xor i32 %153, -1, !mcsema_real_eip !42
  %155 = xor i32 %EAX_val.73, %145, !mcsema_real_eip !42
  %156 = and i32 %154, %155, !mcsema_real_eip !42
  %157 = lshr i32 %156, 31, !mcsema_real_eip !42
  %158 = and i32 %157, 1, !mcsema_real_eip !42
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !42
  store i1 %159, i1* %OF, !mcsema_real_eip !42
  %160 = trunc i32 %145 to i8, !mcsema_real_eip !42
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !42
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !42
  %163 = xor i1 %162, true, !mcsema_real_eip !42
  store i1 %163, i1* %PF, !mcsema_real_eip !42
  %164 = icmp ult i32 %145, %EAX_val.73, !mcsema_real_eip !42
  store i1 %164, i1* %CF, !mcsema_real_eip !42
  %165 = zext i32 %145 to i64, !mcsema_real_eip !42
  store i64 %165, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !43
  %166 = add i64 %RBP_val.74, -16, !mcsema_real_eip !43
  %167 = inttoptr i64 %166 to i64*, !mcsema_real_eip !43
  %EAX.75 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.76 = load i32, i32* %EAX.75, !mcsema_real_eip !43
  %168 = ptrtoint i64* %167 to i64, !mcsema_real_eip !43
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.76, i32* %169, !mcsema_real_eip !43
  br label %block_0x50, !mcsema_real_eip !44

block_0x47:                                       ; preds = %block_0x1d
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !45
  %170 = add i64 %RBP_val.65, -12, !mcsema_real_eip !45
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !45
  %172 = ptrtoint i64* %171 to i64, !mcsema_real_eip !45
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !45
  %174 = load i32, i32* %173, !mcsema_real_eip !45
  %175 = zext i32 %174 to i64, !mcsema_real_eip !45
  store i64 %175, i64* %XAX, !mcsema_real_eip !45
  %EAX.66 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.67 = load i32, i32* %EAX.66, !mcsema_real_eip !46
  %176 = sub i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %177 = xor i32 %176, %EAX_val.67, !mcsema_real_eip !46
  %178 = xor i32 %177, 10, !mcsema_real_eip !46
  %179 = and i32 %178, 16, !mcsema_real_eip !46
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !46
  store i1 %180, i1* %AF, !mcsema_real_eip !46
  %181 = trunc i32 %176 to i8, !mcsema_real_eip !46
  %182 = call i8 @llvm.ctpop.i8(i8 %181), !mcsema_real_eip !46
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !46
  %184 = xor i1 %183, true, !mcsema_real_eip !46
  store i1 %184, i1* %PF, !mcsema_real_eip !46
  %185 = icmp eq i32 %176, 0, !mcsema_real_eip !46
  store i1 %185, i1* %ZF, !mcsema_real_eip !46
  %186 = lshr i32 %176, 31, !mcsema_real_eip !46
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !46
  store i1 %187, i1* %SF, !mcsema_real_eip !46
  %188 = icmp ult i32 %EAX_val.67, 10, !mcsema_real_eip !46
  store i1 %188, i1* %CF, !mcsema_real_eip !46
  %189 = xor i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %190 = xor i32 %EAX_val.67, %176, !mcsema_real_eip !46
  %191 = and i32 %189, %190, !mcsema_real_eip !46
  %192 = lshr i32 %191, 31, !mcsema_real_eip !46
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !46
  store i1 %193, i1* %OF, !mcsema_real_eip !46
  %194 = zext i32 %176 to i64, !mcsema_real_eip !46
  store i64 %194, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !47
  %195 = add i64 %RBP_val.68, -12, !mcsema_real_eip !47
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !47
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !47
  %197 = ptrtoint i64* %196 to i64, !mcsema_real_eip !47
  %198 = inttoptr i64 %197 to i32*, !mcsema_real_eip !47
  store i32 %EAX_val.70, i32* %198, !mcsema_real_eip !47
  br label %block_0x50, !mcsema_real_eip !41

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.77 = load i64, i64* %XBP, !mcsema_real_eip !48
  %199 = add i64 %RBP_val.77, -4, !mcsema_real_eip !48
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !48
  %201 = ptrtoint i64* %200 to i64, !mcsema_real_eip !48
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !48
  %203 = load i32, i32* %202, !mcsema_real_eip !48
  %204 = zext i32 %203 to i64, !mcsema_real_eip !48
  store i64 %204, i64* %XAX, !mcsema_real_eip !48
  %EAX.78 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.79 = load i32, i32* %EAX.78, !mcsema_real_eip !49
  %205 = add i32 -1, %EAX_val.79, !mcsema_real_eip !49
  %206 = xor i32 %205, %EAX_val.79, !mcsema_real_eip !49
  %207 = xor i32 %206, -1, !mcsema_real_eip !49
  %208 = and i32 %207, 16, !mcsema_real_eip !49
  %209 = icmp ne i32 %208, 0, !mcsema_real_eip !49
  store i1 %209, i1* %AF, !mcsema_real_eip !49
  %210 = lshr i32 %205, 31, !mcsema_real_eip !49
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !49
  store i1 %211, i1* %SF, !mcsema_real_eip !49
  %212 = icmp eq i32 %205, 0, !mcsema_real_eip !49
  store i1 %212, i1* %ZF, !mcsema_real_eip !49
  %213 = xor i32 %EAX_val.79, -1, !mcsema_real_eip !49
  %214 = xor i32 %213, -1, !mcsema_real_eip !49
  %215 = xor i32 %EAX_val.79, %205, !mcsema_real_eip !49
  %216 = and i32 %214, %215, !mcsema_real_eip !49
  %217 = lshr i32 %216, 31, !mcsema_real_eip !49
  %218 = and i32 %217, 1, !mcsema_real_eip !49
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !49
  store i1 %219, i1* %OF, !mcsema_real_eip !49
  %220 = trunc i32 %205 to i8, !mcsema_real_eip !49
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !49
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !49
  %223 = xor i1 %222, true, !mcsema_real_eip !49
  store i1 %223, i1* %PF, !mcsema_real_eip !49
  %224 = icmp ult i32 %205, %EAX_val.79, !mcsema_real_eip !49
  store i1 %224, i1* %CF, !mcsema_real_eip !49
  %225 = zext i32 %205 to i64, !mcsema_real_eip !49
  store i64 %225, i64* %XAX, !mcsema_real_eip !49
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !50
  %226 = add i64 %RBP_val.80, -4, !mcsema_real_eip !50
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !50
  %EAX.81 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.82 = load i32, i32* %EAX.81, !mcsema_real_eip !50
  %228 = ptrtoint i64* %227 to i64, !mcsema_real_eip !50
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !50
  store i32 %EAX_val.82, i32* %229, !mcsema_real_eip !50
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
