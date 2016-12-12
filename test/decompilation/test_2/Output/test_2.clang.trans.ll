; ModuleID = 'Output/test_2.clang.trans.bc'
source_filename = "Output/test_2.clang.bc"
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

@data_0xea = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xf0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"d\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  store i64 10, i64* %XDI, !mcsema_real_eip !5
  store i64 20, i64* %XSI, !mcsema_real_eip !6
  store i64 30, i64* %XDX, !mcsema_real_eip !7
  store i64 40, i64* %XCX, !mcsema_real_eip !8
  store i64 50, i64* %R8, !mcsema_real_eip !9
  store i64 60, i64* %R9, !mcsema_real_eip !10
  store i64 70, i64* %XAX, !mcsema_real_eip !11
  store i64 80, i64* %R10, !mcsema_real_eip !12
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !13
  %21 = add i64 %RBP_val.4, -4, !mcsema_real_eip !13
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !13
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !13
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %24, !mcsema_real_eip !13
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !14
  %25 = add i64 %RSP_val.5, 0, !mcsema_real_eip !14
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !14
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !14
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !14
  store i32 70, i32* %28, !mcsema_real_eip !14
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !15
  %29 = add i64 %RSP_val.6, 8, !mcsema_real_eip !15
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !15
  %31 = ptrtoint i64* %30 to i64, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !15
  store i32 80, i32* %32, !mcsema_real_eip !15
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !16
  %33 = add i64 %RBP_val.7, -12, !mcsema_real_eip !16
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !16
  %R10D.8 = bitcast i64* %R10 to i32*, !mcsema_real_eip !16
  %R10D_val.9 = load i32, i32* %R10D.8, !mcsema_real_eip !16
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !16
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !16
  store i32 %R10D_val.9, i32* %36, !mcsema_real_eip !16
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !17
  %37 = add i64 %RBP_val.10, -16, !mcsema_real_eip !17
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !17
  %EAX.11 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.12 = load i32, i32* %EAX.11, !mcsema_real_eip !17
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !17
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !17
  store i32 %EAX_val.12, i32* %40, !mcsema_real_eip !17
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !18
  %41 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !18
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %42, !mcsema_real_eip !18
  store i64 %41, i64* %XSP, !mcsema_real_eip !18
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !18
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, !mcsema_real_eip !19
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !20
  %43 = add i64 %RBP_val.14, -8, !mcsema_real_eip !20
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !20
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !20
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !20
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.16, i32* %46, !mcsema_real_eip !20
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !21
  %47 = add i64 %RBP_val.17, -8, !mcsema_real_eip !21
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !21
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !21
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !21
  %51 = load i32, i32* %50, !mcsema_real_eip !21
  %52 = zext i32 %51 to i64, !mcsema_real_eip !21
  store i64 %52, i64* %XSI, !mcsema_real_eip !21
  %AL.18 = bitcast i64* %XAX to i8*, !mcsema_real_eip !22
  store i8 0, i8* %AL.18, !mcsema_real_eip !22
  %RDI_val.19 = load i64, i64* %XDI, !mcsema_real_eip !23
  %RSI_val.20 = load i64, i64* %XSI, !mcsema_real_eip !23
  %RDX_val.21 = load i64, i64* %XDX, !mcsema_real_eip !23
  %RCX_val.22 = load i64, i64* %XCX, !mcsema_real_eip !23
  %R8_val.23 = load i64, i64* %R8, !mcsema_real_eip !23
  %R9_val.24 = load i64, i64* %R9, !mcsema_real_eip !23
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !23
  %53 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !23
  %54 = load i64, i64* %53, !mcsema_real_eip !23
  %55 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !23
  %57 = load i64, i64* %56, !mcsema_real_eip !23
  %58 = add i64 %55, 8, !mcsema_real_eip !23
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !23
  %60 = load i64, i64* %59, !mcsema_real_eip !23
  %61 = add i64 %58, 8, !mcsema_real_eip !23
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !23
  %63 = load i64, i64* %62, !mcsema_real_eip !23
  %64 = add i64 %61, 8, !mcsema_real_eip !23
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !23
  %66 = load i64, i64* %65, !mcsema_real_eip !23
  %67 = add i64 %64, 8, !mcsema_real_eip !23
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !23
  %69 = load i64, i64* %68, !mcsema_real_eip !23
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !23
  %70 = sub i64 %RSP_val.26, 8, !mcsema_real_eip !23
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %71, !mcsema_real_eip !23
  store i64 %70, i64* %XSP, !mcsema_real_eip !23
  %72 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.19, i64 %RSI_val.20, i64 %RDX_val.21, i64 %RCX_val.22, i64 %R8_val.23, i64 %R9_val.24, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69), !mcsema_real_eip !23
  store i64 %72, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %73 = add i64 %RBP_val.27, -8, !mcsema_real_eip !24
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !24
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !24
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !24
  %77 = load i32, i32* %76, !mcsema_real_eip !24
  %78 = zext i32 %77 to i64, !mcsema_real_eip !24
  store i64 %78, i64* %XCX, !mcsema_real_eip !24
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !25
  %79 = add i64 %RBP_val.28, -20, !mcsema_real_eip !25
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !25
  %EAX.29 = bitcast i64* %XAX to i32*, !mcsema_real_eip !25
  %EAX_val.30 = load i32, i32* %EAX.29, !mcsema_real_eip !25
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !25
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.30, i32* %82, !mcsema_real_eip !25
  %ECX.31 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.32 = load i32, i32* %ECX.31, !mcsema_real_eip !26
  %83 = zext i32 %ECX_val.32 to i64, !mcsema_real_eip !26
  store i64 %83, i64* %XAX, !mcsema_real_eip !26
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !27
  %84 = add i64 48, %RSP_val.33, !mcsema_real_eip !27
  %85 = xor i64 %84, %RSP_val.33, !mcsema_real_eip !27
  %86 = xor i64 %85, 48, !mcsema_real_eip !27
  %87 = and i64 %86, 16, !mcsema_real_eip !27
  %88 = icmp ne i64 %87, 0, !mcsema_real_eip !27
  store i1 %88, i1* %AF, !mcsema_real_eip !27
  %89 = lshr i64 %84, 63, !mcsema_real_eip !27
  %90 = trunc i64 %89 to i1, !mcsema_real_eip !27
  store i1 %90, i1* %SF, !mcsema_real_eip !27
  %91 = icmp eq i64 %84, 0, !mcsema_real_eip !27
  store i1 %91, i1* %ZF, !mcsema_real_eip !27
  %92 = xor i64 %RSP_val.33, 48, !mcsema_real_eip !27
  %93 = xor i64 %92, -1, !mcsema_real_eip !27
  %94 = xor i64 %RSP_val.33, %84, !mcsema_real_eip !27
  %95 = and i64 %93, %94, !mcsema_real_eip !27
  %96 = lshr i64 %95, 63, !mcsema_real_eip !27
  %97 = and i64 %96, 1, !mcsema_real_eip !27
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !27
  store i1 %98, i1* %OF, !mcsema_real_eip !27
  %99 = trunc i64 %84 to i8, !mcsema_real_eip !27
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !27
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !27
  %102 = xor i1 %101, true, !mcsema_real_eip !27
  store i1 %102, i1* %PF, !mcsema_real_eip !27
  %103 = icmp ult i64 %84, %RSP_val.33, !mcsema_real_eip !27
  store i1 %103, i1* %CF, !mcsema_real_eip !27
  store i64 %84, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !28
  %104 = inttoptr i64 %RSP_val.34 to i64*, !mcsema_real_eip !28
  %105 = load i64, i64* %104, !mcsema_real_eip !28
  store i64 %105, i64* %XBP, !mcsema_real_eip !28
  %106 = add i64 %RSP_val.34, 8, !mcsema_real_eip !28
  store i64 %106, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !29
  %107 = add i64 %RSP_val.35, 8, !mcsema_real_eip !29
  %108 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !29
  %109 = load i64, i64* %108, !mcsema_real_eip !29
  store i64 %109, i64* %XIP, !mcsema_real_eip !29
  store i64 %107, i64* %XSP, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !30
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !30
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !30
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !30
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !30
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !30
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !30
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !30
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !30
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !30
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !30
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !30
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !30
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !30
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !30
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !30
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !30
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !30
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !30
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !30
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !30
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !30
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !30
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !30
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !30
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !30
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !30
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !30
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !30
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !30
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !30
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !30
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !30
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !30
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !30
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !30
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !30
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !30
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !30
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !30
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !30
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !30
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !30
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !30
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !30
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !30
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !30
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !30
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !30
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !30
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !30
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !30
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !30
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !30
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !30
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !30
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !30
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !30
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !30
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !30
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !30
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !30
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !30
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !30
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !30
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !30
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !30
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !30
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !30
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !30
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !30
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !30
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !30
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !30
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !30
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !30
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !30
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !30
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !30
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !30
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !30
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !30
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !30
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !30
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !30
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !30
  br label %block_0x0, !mcsema_real_eip !30

block_0x0:                                        ; preds = %entry
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !30
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !30
  %1 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !30
  store i64 %RBP_val.36, i64* %2, !mcsema_real_eip !30
  store i64 %1, i64* %XSP, !mcsema_real_eip !30
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !31
  store i64 %RSP_val.38, i64* %XBP, !mcsema_real_eip !31
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !32
  %3 = add i64 %RBP_val.39, 24, !mcsema_real_eip !32
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !32
  %5 = ptrtoint i64* %4 to i64, !mcsema_real_eip !32
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !32
  %7 = load i32, i32* %6, !mcsema_real_eip !32
  %8 = zext i32 %7 to i64, !mcsema_real_eip !32
  store i64 %8, i64* %XAX, !mcsema_real_eip !32
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !33
  %9 = add i64 %RBP_val.40, 16, !mcsema_real_eip !33
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !33
  %11 = ptrtoint i64* %10 to i64, !mcsema_real_eip !33
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !33
  %13 = load i32, i32* %12, !mcsema_real_eip !33
  %14 = zext i32 %13 to i64, !mcsema_real_eip !33
  store i64 %14, i64* %R10, !mcsema_real_eip !33
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !34
  %15 = add i64 %RBP_val.41, -4, !mcsema_real_eip !34
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !34
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !34
  %EDI_val.43 = load i32, i32* %EDI.42, !mcsema_real_eip !34
  %17 = ptrtoint i64* %16 to i64, !mcsema_real_eip !34
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !34
  store i32 %EDI_val.43, i32* %18, !mcsema_real_eip !34
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !35
  %19 = add i64 %RBP_val.44, -8, !mcsema_real_eip !35
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !35
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !35
  %ESI_val.46 = load i32, i32* %ESI.45, !mcsema_real_eip !35
  %21 = ptrtoint i64* %20 to i64, !mcsema_real_eip !35
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !35
  store i32 %ESI_val.46, i32* %22, !mcsema_real_eip !35
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !36
  %23 = add i64 %RBP_val.47, -12, !mcsema_real_eip !36
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !36
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !36
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !36
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !36
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !36
  store i32 %EDX_val.49, i32* %26, !mcsema_real_eip !36
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !37
  %27 = add i64 %RBP_val.50, -16, !mcsema_real_eip !37
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !37
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !37
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !37
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.52, i32* %30, !mcsema_real_eip !37
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !38
  %31 = add i64 %RBP_val.53, -20, !mcsema_real_eip !38
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !38
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !38
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !38
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !38
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !38
  store i32 %R8D_val.55, i32* %34, !mcsema_real_eip !38
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !39
  %35 = add i64 %RBP_val.56, -24, !mcsema_real_eip !39
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !39
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !39
  %R9D_val.58 = load i32, i32* %R9D.57, !mcsema_real_eip !39
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !39
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !39
  store i32 %R9D_val.58, i32* %38, !mcsema_real_eip !39
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !40
  %39 = add i64 %RBP_val.59, -28, !mcsema_real_eip !40
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !40
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !40
  %R10D_val.61 = load i32, i32* %R10D.60, !mcsema_real_eip !40
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !40
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !40
  store i32 %R10D_val.61, i32* %42, !mcsema_real_eip !40
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !41
  %43 = add i64 %RBP_val.62, -32, !mcsema_real_eip !41
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !41
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !41
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !41
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !41
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !41
  store i32 %EAX_val.64, i32* %46, !mcsema_real_eip !41
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !42
  %47 = add i64 %RBP_val.65, -4, !mcsema_real_eip !42
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !42
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !42
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !42
  %51 = load i32, i32* %50, !mcsema_real_eip !42
  %52 = zext i32 %51 to i64, !mcsema_real_eip !42
  store i64 %52, i64* %XAX, !mcsema_real_eip !42
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !43
  %53 = add i64 %RBP_val.66, -8, !mcsema_real_eip !43
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !43
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !43
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !43
  %57 = load i32, i32* %56, !mcsema_real_eip !43
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !43
  %58 = add i32 %EAX_val.68, %57, !mcsema_real_eip !43
  %59 = xor i32 %58, %57, !mcsema_real_eip !43
  %60 = xor i32 %59, %EAX_val.68, !mcsema_real_eip !43
  %61 = and i32 %60, 16, !mcsema_real_eip !43
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !43
  store i1 %62, i1* %AF, !mcsema_real_eip !43
  %63 = lshr i32 %58, 31, !mcsema_real_eip !43
  %64 = trunc i32 %63 to i1, !mcsema_real_eip !43
  store i1 %64, i1* %SF, !mcsema_real_eip !43
  %65 = icmp eq i32 %58, 0, !mcsema_real_eip !43
  store i1 %65, i1* %ZF, !mcsema_real_eip !43
  %66 = xor i32 %57, %EAX_val.68, !mcsema_real_eip !43
  %67 = xor i32 %66, -1, !mcsema_real_eip !43
  %68 = xor i32 %57, %58, !mcsema_real_eip !43
  %69 = and i32 %67, %68, !mcsema_real_eip !43
  %70 = lshr i32 %69, 31, !mcsema_real_eip !43
  %71 = and i32 %70, 1, !mcsema_real_eip !43
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !43
  store i1 %72, i1* %OF, !mcsema_real_eip !43
  %73 = trunc i32 %58 to i8, !mcsema_real_eip !43
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !43
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !43
  %76 = xor i1 %75, true, !mcsema_real_eip !43
  store i1 %76, i1* %PF, !mcsema_real_eip !43
  %77 = icmp ult i32 %58, %57, !mcsema_real_eip !43
  store i1 %77, i1* %CF, !mcsema_real_eip !43
  %78 = zext i32 %58 to i64, !mcsema_real_eip !43
  store i64 %78, i64* %XAX, !mcsema_real_eip !43
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !44
  %79 = add i64 %RBP_val.69, -12, !mcsema_real_eip !44
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !44
  %81 = ptrtoint i64* %80 to i64, !mcsema_real_eip !44
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !44
  %83 = load i32, i32* %82, !mcsema_real_eip !44
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !44
  %84 = add i32 %EAX_val.71, %83, !mcsema_real_eip !44
  %85 = xor i32 %84, %83, !mcsema_real_eip !44
  %86 = xor i32 %85, %EAX_val.71, !mcsema_real_eip !44
  %87 = and i32 %86, 16, !mcsema_real_eip !44
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !44
  store i1 %88, i1* %AF, !mcsema_real_eip !44
  %89 = lshr i32 %84, 31, !mcsema_real_eip !44
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !44
  store i1 %90, i1* %SF, !mcsema_real_eip !44
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !44
  store i1 %91, i1* %ZF, !mcsema_real_eip !44
  %92 = xor i32 %83, %EAX_val.71, !mcsema_real_eip !44
  %93 = xor i32 %92, -1, !mcsema_real_eip !44
  %94 = xor i32 %83, %84, !mcsema_real_eip !44
  %95 = and i32 %93, %94, !mcsema_real_eip !44
  %96 = lshr i32 %95, 31, !mcsema_real_eip !44
  %97 = and i32 %96, 1, !mcsema_real_eip !44
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !44
  store i1 %98, i1* %OF, !mcsema_real_eip !44
  %99 = trunc i32 %84 to i8, !mcsema_real_eip !44
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !44
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !44
  %102 = xor i1 %101, true, !mcsema_real_eip !44
  store i1 %102, i1* %PF, !mcsema_real_eip !44
  %103 = icmp ult i32 %84, %83, !mcsema_real_eip !44
  store i1 %103, i1* %CF, !mcsema_real_eip !44
  %104 = zext i32 %84 to i64, !mcsema_real_eip !44
  store i64 %104, i64* %XAX, !mcsema_real_eip !44
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !45
  %105 = add i64 %RBP_val.72, -16, !mcsema_real_eip !45
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !45
  %107 = ptrtoint i64* %106 to i64, !mcsema_real_eip !45
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !45
  %109 = load i32, i32* %108, !mcsema_real_eip !45
  %EAX.73 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.74 = load i32, i32* %EAX.73, !mcsema_real_eip !45
  %110 = add i32 %EAX_val.74, %109, !mcsema_real_eip !45
  %111 = xor i32 %110, %109, !mcsema_real_eip !45
  %112 = xor i32 %111, %EAX_val.74, !mcsema_real_eip !45
  %113 = and i32 %112, 16, !mcsema_real_eip !45
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !45
  store i1 %114, i1* %AF, !mcsema_real_eip !45
  %115 = lshr i32 %110, 31, !mcsema_real_eip !45
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !45
  store i1 %116, i1* %SF, !mcsema_real_eip !45
  %117 = icmp eq i32 %110, 0, !mcsema_real_eip !45
  store i1 %117, i1* %ZF, !mcsema_real_eip !45
  %118 = xor i32 %109, %EAX_val.74, !mcsema_real_eip !45
  %119 = xor i32 %118, -1, !mcsema_real_eip !45
  %120 = xor i32 %109, %110, !mcsema_real_eip !45
  %121 = and i32 %119, %120, !mcsema_real_eip !45
  %122 = lshr i32 %121, 31, !mcsema_real_eip !45
  %123 = and i32 %122, 1, !mcsema_real_eip !45
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !45
  store i1 %124, i1* %OF, !mcsema_real_eip !45
  %125 = trunc i32 %110 to i8, !mcsema_real_eip !45
  %126 = call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !45
  %127 = trunc i8 %126 to i1, !mcsema_real_eip !45
  %128 = xor i1 %127, true, !mcsema_real_eip !45
  store i1 %128, i1* %PF, !mcsema_real_eip !45
  %129 = icmp ult i32 %110, %109, !mcsema_real_eip !45
  store i1 %129, i1* %CF, !mcsema_real_eip !45
  %130 = zext i32 %110 to i64, !mcsema_real_eip !45
  store i64 %130, i64* %XAX, !mcsema_real_eip !45
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !46
  %131 = add i64 %RBP_val.75, -20, !mcsema_real_eip !46
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !46
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !46
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !46
  %135 = load i32, i32* %134, !mcsema_real_eip !46
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !46
  %136 = add i32 %EAX_val.77, %135, !mcsema_real_eip !46
  %137 = xor i32 %136, %135, !mcsema_real_eip !46
  %138 = xor i32 %137, %EAX_val.77, !mcsema_real_eip !46
  %139 = and i32 %138, 16, !mcsema_real_eip !46
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !46
  store i1 %140, i1* %AF, !mcsema_real_eip !46
  %141 = lshr i32 %136, 31, !mcsema_real_eip !46
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !46
  store i1 %142, i1* %SF, !mcsema_real_eip !46
  %143 = icmp eq i32 %136, 0, !mcsema_real_eip !46
  store i1 %143, i1* %ZF, !mcsema_real_eip !46
  %144 = xor i32 %135, %EAX_val.77, !mcsema_real_eip !46
  %145 = xor i32 %144, -1, !mcsema_real_eip !46
  %146 = xor i32 %135, %136, !mcsema_real_eip !46
  %147 = and i32 %145, %146, !mcsema_real_eip !46
  %148 = lshr i32 %147, 31, !mcsema_real_eip !46
  %149 = and i32 %148, 1, !mcsema_real_eip !46
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !46
  store i1 %150, i1* %OF, !mcsema_real_eip !46
  %151 = trunc i32 %136 to i8, !mcsema_real_eip !46
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !46
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !46
  %154 = xor i1 %153, true, !mcsema_real_eip !46
  store i1 %154, i1* %PF, !mcsema_real_eip !46
  %155 = icmp ult i32 %136, %135, !mcsema_real_eip !46
  store i1 %155, i1* %CF, !mcsema_real_eip !46
  %156 = zext i32 %136 to i64, !mcsema_real_eip !46
  store i64 %156, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !47
  %157 = add i64 %RBP_val.78, -24, !mcsema_real_eip !47
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !47
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !47
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !47
  %161 = load i32, i32* %160, !mcsema_real_eip !47
  %EAX.79 = bitcast i64* %XAX to i32*, !mcsema_real_eip !47
  %EAX_val.80 = load i32, i32* %EAX.79, !mcsema_real_eip !47
  %162 = add i32 %EAX_val.80, %161, !mcsema_real_eip !47
  %163 = xor i32 %162, %161, !mcsema_real_eip !47
  %164 = xor i32 %163, %EAX_val.80, !mcsema_real_eip !47
  %165 = and i32 %164, 16, !mcsema_real_eip !47
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !47
  store i1 %166, i1* %AF, !mcsema_real_eip !47
  %167 = lshr i32 %162, 31, !mcsema_real_eip !47
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !47
  store i1 %168, i1* %SF, !mcsema_real_eip !47
  %169 = icmp eq i32 %162, 0, !mcsema_real_eip !47
  store i1 %169, i1* %ZF, !mcsema_real_eip !47
  %170 = xor i32 %161, %EAX_val.80, !mcsema_real_eip !47
  %171 = xor i32 %170, -1, !mcsema_real_eip !47
  %172 = xor i32 %161, %162, !mcsema_real_eip !47
  %173 = and i32 %171, %172, !mcsema_real_eip !47
  %174 = lshr i32 %173, 31, !mcsema_real_eip !47
  %175 = and i32 %174, 1, !mcsema_real_eip !47
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !47
  store i1 %176, i1* %OF, !mcsema_real_eip !47
  %177 = trunc i32 %162 to i8, !mcsema_real_eip !47
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !47
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !47
  %180 = xor i1 %179, true, !mcsema_real_eip !47
  store i1 %180, i1* %PF, !mcsema_real_eip !47
  %181 = icmp ult i32 %162, %161, !mcsema_real_eip !47
  store i1 %181, i1* %CF, !mcsema_real_eip !47
  %182 = zext i32 %162 to i64, !mcsema_real_eip !47
  store i64 %182, i64* %XAX, !mcsema_real_eip !47
  %RBP_val.81 = load i64, i64* %XBP, !mcsema_real_eip !48
  %183 = add i64 %RBP_val.81, -28, !mcsema_real_eip !48
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !48
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !48
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !48
  %187 = load i32, i32* %186, !mcsema_real_eip !48
  %EAX.82 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.83 = load i32, i32* %EAX.82, !mcsema_real_eip !48
  %188 = add i32 %EAX_val.83, %187, !mcsema_real_eip !48
  %189 = xor i32 %188, %187, !mcsema_real_eip !48
  %190 = xor i32 %189, %EAX_val.83, !mcsema_real_eip !48
  %191 = and i32 %190, 16, !mcsema_real_eip !48
  %192 = icmp ne i32 %191, 0, !mcsema_real_eip !48
  store i1 %192, i1* %AF, !mcsema_real_eip !48
  %193 = lshr i32 %188, 31, !mcsema_real_eip !48
  %194 = trunc i32 %193 to i1, !mcsema_real_eip !48
  store i1 %194, i1* %SF, !mcsema_real_eip !48
  %195 = icmp eq i32 %188, 0, !mcsema_real_eip !48
  store i1 %195, i1* %ZF, !mcsema_real_eip !48
  %196 = xor i32 %187, %EAX_val.83, !mcsema_real_eip !48
  %197 = xor i32 %196, -1, !mcsema_real_eip !48
  %198 = xor i32 %187, %188, !mcsema_real_eip !48
  %199 = and i32 %197, %198, !mcsema_real_eip !48
  %200 = lshr i32 %199, 31, !mcsema_real_eip !48
  %201 = and i32 %200, 1, !mcsema_real_eip !48
  %202 = trunc i32 %201 to i1, !mcsema_real_eip !48
  store i1 %202, i1* %OF, !mcsema_real_eip !48
  %203 = trunc i32 %188 to i8, !mcsema_real_eip !48
  %204 = call i8 @llvm.ctpop.i8(i8 %203), !mcsema_real_eip !48
  %205 = trunc i8 %204 to i1, !mcsema_real_eip !48
  %206 = xor i1 %205, true, !mcsema_real_eip !48
  store i1 %206, i1* %PF, !mcsema_real_eip !48
  %207 = icmp ult i32 %188, %187, !mcsema_real_eip !48
  store i1 %207, i1* %CF, !mcsema_real_eip !48
  %208 = zext i32 %188 to i64, !mcsema_real_eip !48
  store i64 %208, i64* %XAX, !mcsema_real_eip !48
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !49
  %209 = add i64 %RBP_val.84, -36, !mcsema_real_eip !49
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !49
  %EAX.85 = bitcast i64* %XAX to i32*, !mcsema_real_eip !49
  %EAX_val.86 = load i32, i32* %EAX.85, !mcsema_real_eip !49
  %211 = ptrtoint i64* %210 to i64, !mcsema_real_eip !49
  %212 = inttoptr i64 %211 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.86, i32* %212, !mcsema_real_eip !49
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !50
  %213 = add i64 %RBP_val.87, -36, !mcsema_real_eip !50
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !50
  %215 = ptrtoint i64* %214 to i64, !mcsema_real_eip !50
  %216 = inttoptr i64 %215 to i32*, !mcsema_real_eip !50
  %217 = load i32, i32* %216, !mcsema_real_eip !50
  %218 = sub i32 %217, 40, !mcsema_real_eip !50
  %219 = xor i32 %218, %217, !mcsema_real_eip !50
  %220 = xor i32 %219, 40, !mcsema_real_eip !50
  %221 = and i32 %220, 16, !mcsema_real_eip !50
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !50
  store i1 %222, i1* %AF, !mcsema_real_eip !50
  %223 = trunc i32 %218 to i8, !mcsema_real_eip !50
  %224 = call i8 @llvm.ctpop.i8(i8 %223), !mcsema_real_eip !50
  %225 = trunc i8 %224 to i1, !mcsema_real_eip !50
  %226 = xor i1 %225, true, !mcsema_real_eip !50
  store i1 %226, i1* %PF, !mcsema_real_eip !50
  %227 = icmp eq i32 %218, 0, !mcsema_real_eip !50
  store i1 %227, i1* %ZF, !mcsema_real_eip !50
  %228 = lshr i32 %218, 31, !mcsema_real_eip !50
  %229 = trunc i32 %228 to i1, !mcsema_real_eip !50
  store i1 %229, i1* %SF, !mcsema_real_eip !50
  %230 = icmp ult i32 %217, 40, !mcsema_real_eip !50
  store i1 %230, i1* %CF, !mcsema_real_eip !50
  %231 = xor i32 %217, 40, !mcsema_real_eip !50
  %232 = xor i32 %217, %218, !mcsema_real_eip !50
  %233 = and i32 %231, %232, !mcsema_real_eip !50
  %234 = lshr i32 %233, 31, !mcsema_real_eip !50
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !50
  store i1 %235, i1* %OF, !mcsema_real_eip !50
  %236 = load i1, i1* %OF, !mcsema_real_eip !51
  %237 = load i1, i1* %SF, !mcsema_real_eip !51
  %238 = icmp eq i1 %237, %236, !mcsema_real_eip !51
  %239 = icmp eq i1 %238, false, !mcsema_real_eip !51
  %240 = load i1, i1* %ZF, !mcsema_real_eip !51
  %241 = icmp eq i1 %240, true, !mcsema_real_eip !51
  %242 = or i1 %241, %239, !mcsema_real_eip !51
  br i1 %242, label %block_0x56, label %block_0x48, !mcsema_real_eip !51

block_0x48:                                       ; preds = %block_0x0
  %RBP_val.95 = load i64, i64* %XBP, !mcsema_real_eip !52
  %243 = add i64 %RBP_val.95, -36, !mcsema_real_eip !52
  %244 = inttoptr i64 %243 to i64*, !mcsema_real_eip !52
  %245 = ptrtoint i64* %244 to i64, !mcsema_real_eip !52
  %246 = inttoptr i64 %245 to i32*, !mcsema_real_eip !52
  %247 = load i32, i32* %246, !mcsema_real_eip !52
  %248 = zext i32 %247 to i64, !mcsema_real_eip !52
  store i64 %248, i64* %XAX, !mcsema_real_eip !52
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !53
  %249 = add i64 %RBP_val.96, -32, !mcsema_real_eip !53
  %250 = inttoptr i64 %249 to i64*, !mcsema_real_eip !53
  %251 = ptrtoint i64* %250 to i64, !mcsema_real_eip !53
  %252 = inttoptr i64 %251 to i32*, !mcsema_real_eip !53
  %253 = load i32, i32* %252, !mcsema_real_eip !53
  %EAX.97 = bitcast i64* %XAX to i32*, !mcsema_real_eip !53
  %EAX_val.98 = load i32, i32* %EAX.97, !mcsema_real_eip !53
  %254 = add i32 %EAX_val.98, %253, !mcsema_real_eip !53
  %255 = xor i32 %254, %253, !mcsema_real_eip !53
  %256 = xor i32 %255, %EAX_val.98, !mcsema_real_eip !53
  %257 = and i32 %256, 16, !mcsema_real_eip !53
  %258 = icmp ne i32 %257, 0, !mcsema_real_eip !53
  store i1 %258, i1* %AF, !mcsema_real_eip !53
  %259 = lshr i32 %254, 31, !mcsema_real_eip !53
  %260 = trunc i32 %259 to i1, !mcsema_real_eip !53
  store i1 %260, i1* %SF, !mcsema_real_eip !53
  %261 = icmp eq i32 %254, 0, !mcsema_real_eip !53
  store i1 %261, i1* %ZF, !mcsema_real_eip !53
  %262 = xor i32 %253, %EAX_val.98, !mcsema_real_eip !53
  %263 = xor i32 %262, -1, !mcsema_real_eip !53
  %264 = xor i32 %253, %254, !mcsema_real_eip !53
  %265 = and i32 %263, %264, !mcsema_real_eip !53
  %266 = lshr i32 %265, 31, !mcsema_real_eip !53
  %267 = and i32 %266, 1, !mcsema_real_eip !53
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !53
  store i1 %268, i1* %OF, !mcsema_real_eip !53
  %269 = trunc i32 %254 to i8, !mcsema_real_eip !53
  %270 = call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !53
  %271 = trunc i8 %270 to i1, !mcsema_real_eip !53
  %272 = xor i1 %271, true, !mcsema_real_eip !53
  store i1 %272, i1* %PF, !mcsema_real_eip !53
  %273 = icmp ult i32 %254, %253, !mcsema_real_eip !53
  store i1 %273, i1* %CF, !mcsema_real_eip !53
  %274 = zext i32 %254 to i64, !mcsema_real_eip !53
  store i64 %274, i64* %XAX, !mcsema_real_eip !53
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !54
  %275 = add i64 %RBP_val.99, -40, !mcsema_real_eip !54
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !54
  %EAX.100 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.101 = load i32, i32* %EAX.100, !mcsema_real_eip !54
  %277 = ptrtoint i64* %276 to i64, !mcsema_real_eip !54
  %278 = inttoptr i64 %277 to i32*, !mcsema_real_eip !54
  store i32 %EAX_val.101, i32* %278, !mcsema_real_eip !54
  br label %block_0x5f, !mcsema_real_eip !55

block_0x56:                                       ; preds = %block_0x0
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !56
  %279 = add i64 %RBP_val.88, -36, !mcsema_real_eip !56
  %280 = inttoptr i64 %279 to i64*, !mcsema_real_eip !56
  %281 = ptrtoint i64* %280 to i64, !mcsema_real_eip !56
  %282 = inttoptr i64 %281 to i32*, !mcsema_real_eip !56
  %283 = load i32, i32* %282, !mcsema_real_eip !56
  %284 = zext i32 %283 to i64, !mcsema_real_eip !56
  store i64 %284, i64* %XAX, !mcsema_real_eip !56
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !57
  %285 = add i64 %RBP_val.89, -32, !mcsema_real_eip !57
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !57
  %EAX.90 = bitcast i64* %XAX to i32*, !mcsema_real_eip !57
  %EAX_val.91 = load i32, i32* %EAX.90, !mcsema_real_eip !57
  %287 = ptrtoint i64* %286 to i64, !mcsema_real_eip !57
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !57
  %289 = load i32, i32* %288, !mcsema_real_eip !57
  %290 = sub i32 %EAX_val.91, %289, !mcsema_real_eip !57
  %291 = xor i32 %290, %EAX_val.91, !mcsema_real_eip !57
  %292 = xor i32 %291, %289, !mcsema_real_eip !57
  %293 = and i32 %292, 16, !mcsema_real_eip !57
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !57
  store i1 %294, i1* %AF, !mcsema_real_eip !57
  %295 = trunc i32 %290 to i8, !mcsema_real_eip !57
  %296 = call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !57
  %297 = trunc i8 %296 to i1, !mcsema_real_eip !57
  %298 = xor i1 %297, true, !mcsema_real_eip !57
  store i1 %298, i1* %PF, !mcsema_real_eip !57
  %299 = icmp eq i32 %290, 0, !mcsema_real_eip !57
  store i1 %299, i1* %ZF, !mcsema_real_eip !57
  %300 = lshr i32 %290, 31, !mcsema_real_eip !57
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !57
  store i1 %301, i1* %SF, !mcsema_real_eip !57
  %302 = icmp ult i32 %EAX_val.91, %289, !mcsema_real_eip !57
  store i1 %302, i1* %CF, !mcsema_real_eip !57
  %303 = xor i32 %EAX_val.91, %289, !mcsema_real_eip !57
  %304 = xor i32 %EAX_val.91, %290, !mcsema_real_eip !57
  %305 = and i32 %303, %304, !mcsema_real_eip !57
  %306 = lshr i32 %305, 31, !mcsema_real_eip !57
  %307 = trunc i32 %306 to i1, !mcsema_real_eip !57
  store i1 %307, i1* %OF, !mcsema_real_eip !57
  %308 = zext i32 %290 to i64, !mcsema_real_eip !57
  store i64 %308, i64* %XAX, !mcsema_real_eip !57
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !58
  %309 = add i64 %RBP_val.92, -40, !mcsema_real_eip !58
  %310 = inttoptr i64 %309 to i64*, !mcsema_real_eip !58
  %EAX.93 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.94 = load i32, i32* %EAX.93, !mcsema_real_eip !58
  %311 = ptrtoint i64* %310 to i64, !mcsema_real_eip !58
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.94, i32* %312, !mcsema_real_eip !58
  br label %block_0x5f, !mcsema_real_eip !52

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !59
  %313 = add i64 %RBP_val.102, -40, !mcsema_real_eip !59
  %314 = inttoptr i64 %313 to i64*, !mcsema_real_eip !59
  %315 = ptrtoint i64* %314 to i64, !mcsema_real_eip !59
  %316 = inttoptr i64 %315 to i32*, !mcsema_real_eip !59
  %317 = load i32, i32* %316, !mcsema_real_eip !59
  %318 = zext i32 %317 to i64, !mcsema_real_eip !59
  store i64 %318, i64* %XAX, !mcsema_real_eip !59
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !60
  %319 = inttoptr i64 %RSP_val.103 to i64*, !mcsema_real_eip !60
  %320 = load i64, i64* %319, !mcsema_real_eip !60
  store i64 %320, i64* %XBP, !mcsema_real_eip !60
  %321 = add i64 %RSP_val.103, 8, !mcsema_real_eip !60
  store i64 %321, i64* %XSP, !mcsema_real_eip !60
  %RSP_val.104 = load i64, i64* %XSP, !mcsema_real_eip !61
  %322 = add i64 %RSP_val.104, 8, !mcsema_real_eip !61
  %323 = inttoptr i64 %RSP_val.104 to i64*, !mcsema_real_eip !61
  %324 = load i64, i64* %323, !mcsema_real_eip !61
  store i64 %324, i64* %XIP, !mcsema_real_eip !61
  store i64 %322, i64* %XSP, !mcsema_real_eip !61
  ret void, !mcsema_real_eip !61
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
!8 = !{i64 135}
!9 = !{i64 140}
!10 = !{i64 146}
!11 = !{i64 152}
!12 = !{i64 157}
!13 = !{i64 163}
!14 = !{i64 170}
!15 = !{i64 177}
!16 = !{i64 185}
!17 = !{i64 189}
!18 = !{i64 192}
!19 = !{i64 197}
!20 = !{i64 207}
!21 = !{i64 210}
!22 = !{i64 213}
!23 = !{i64 215}
!24 = !{i64 220}
!25 = !{i64 223}
!26 = !{i64 226}
!27 = !{i64 228}
!28 = !{i64 232}
!29 = !{i64 233}
!30 = !{i64 0}
!31 = !{i64 1}
!32 = !{i64 4}
!33 = !{i64 7}
!34 = !{i64 11}
!35 = !{i64 14}
!36 = !{i64 17}
!37 = !{i64 20}
!38 = !{i64 23}
!39 = !{i64 27}
!40 = !{i64 31}
!41 = !{i64 35}
!42 = !{i64 38}
!43 = !{i64 41}
!44 = !{i64 44}
!45 = !{i64 47}
!46 = !{i64 50}
!47 = !{i64 53}
!48 = !{i64 56}
!49 = !{i64 59}
!50 = !{i64 62}
!51 = !{i64 66}
!52 = !{i64 72}
!53 = !{i64 75}
!54 = !{i64 78}
!55 = !{i64 81}
!56 = !{i64 86}
!57 = !{i64 89}
!58 = !{i64 92}
!59 = !{i64 95}
!60 = !{i64 98}
!61 = !{i64 99}
