; ModuleID = 'Output/test_2_1.clang.bc'
source_filename = "Output/test_2_1.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"S\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
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
  br label %block_0x60, !mcsema_real_eip !2

block_0x60:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !5
  %5 = sext i8 40 to i64, !mcsema_real_eip !5
  %6 = sub i64 %RSP_val.5, %5, !mcsema_real_eip !5
  %7 = xor i64 %6, %RSP_val.5, !mcsema_real_eip !5
  %8 = xor i64 %7, %5, !mcsema_real_eip !5
  %9 = and i64 %8, 16, !mcsema_real_eip !5
  %10 = icmp ne i64 %9, 0, !mcsema_real_eip !5
  store i1 %10, i1* %AF, !mcsema_real_eip !5
  %11 = trunc i64 %6 to i8, !mcsema_real_eip !5
  %12 = call i8 @llvm.ctpop.i8(i8 %11), !mcsema_real_eip !5
  %13 = trunc i8 %12 to i1, !mcsema_real_eip !5
  %14 = xor i1 %13, true, !mcsema_real_eip !5
  store i1 %14, i1* %PF, !mcsema_real_eip !5
  %15 = icmp eq i64 %6, 0, !mcsema_real_eip !5
  store i1 %15, i1* %ZF, !mcsema_real_eip !5
  %16 = lshr i64 %6, 63, !mcsema_real_eip !5
  %17 = trunc i64 %16 to i1, !mcsema_real_eip !5
  store i1 %17, i1* %SF, !mcsema_real_eip !5
  %18 = icmp ult i64 %RSP_val.5, %5, !mcsema_real_eip !5
  store i1 %18, i1* %CF, !mcsema_real_eip !5
  %19 = xor i64 %RSP_val.5, %5, !mcsema_real_eip !5
  %20 = xor i64 %RSP_val.5, %6, !mcsema_real_eip !5
  %21 = and i64 %19, %20, !mcsema_real_eip !5
  %22 = lshr i64 %21, 63, !mcsema_real_eip !5
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !5
  store i1 %23, i1* %OF, !mcsema_real_eip !5
  store i64 %6, i64* %XSP, !mcsema_real_eip !5
  %24 = zext i32 100 to i64, !mcsema_real_eip !6
  store i64 %24, i64* %XAX, !mcsema_real_eip !6
  %25 = zext i32 200 to i64, !mcsema_real_eip !7
  store i64 %25, i64* %XCX, !mcsema_real_eip !7
  %26 = zext i32 300 to i64, !mcsema_real_eip !8
  store i64 %26, i64* %XDX, !mcsema_real_eip !8
  %27 = zext i32 400 to i64, !mcsema_real_eip !9
  store i64 %27, i64* %R8, !mcsema_real_eip !9
  %28 = zext i32 500 to i64, !mcsema_real_eip !10
  store i64 %28, i64* %R9, !mcsema_real_eip !10
  %29 = zext i32 600 to i64, !mcsema_real_eip !11
  store i64 %29, i64* %R10, !mcsema_real_eip !11
  %30 = zext i32 10 to i64, !mcsema_real_eip !12
  store i64 %30, i64* %R11, !mcsema_real_eip !12
  %31 = zext i32 20 to i64, !mcsema_real_eip !13
  store i64 %31, i64* %XBX, !mcsema_real_eip !13
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !14
  %32 = add i64 %RBP_val.6, -12, !mcsema_real_eip !14
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !14
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !14
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %35, !mcsema_real_eip !14
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !15
  %36 = add i64 %RBP_val.7, -16, !mcsema_real_eip !15
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !15
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !15
  %38 = ptrtoint i64* %37 to i64, !mcsema_real_eip !15
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.9, i32* %39, !mcsema_real_eip !15
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !16
  %40 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !16
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !16
  store i64 %RSI_val.11, i64* %41, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %42 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !17
  store i64 %42, i64* %XDI, !mcsema_real_eip !17
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !18
  %43 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !18
  store i64 %43, i64* %XSI, !mcsema_real_eip !18
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !19
  %R8D_val.17 = load i32, i32* %R8D.16, !mcsema_real_eip !19
  %44 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !19
  store i64 %44, i64* %XCX, !mcsema_real_eip !19
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !20
  %R9D_val.19 = load i32, i32* %R9D.18, !mcsema_real_eip !20
  %45 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !20
  store i64 %45, i64* %R8, !mcsema_real_eip !20
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !21
  %R10D_val.21 = load i32, i32* %R10D.20, !mcsema_real_eip !21
  %46 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !21
  store i64 %46, i64* %R9, !mcsema_real_eip !21
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !22
  %47 = add i64 %RSP_val.22, 0, !mcsema_real_eip !22
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !22
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !22
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !22
  store i32 10, i32* %50, !mcsema_real_eip !22
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !23
  %51 = add i64 %RSP_val.23, 8, !mcsema_real_eip !23
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !23
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !23
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !23
  store i32 20, i32* %54, !mcsema_real_eip !23
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !24
  %55 = add i64 %RBP_val.24, -28, !mcsema_real_eip !24
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !24
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !24
  %57 = ptrtoint i64* %56 to i64, !mcsema_real_eip !24
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.26, i32* %58, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !25
  %59 = add i64 %RBP_val.27, -32, !mcsema_real_eip !25
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !25
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !25
  %R11D_val.29 = load i32, i32* %R11D.28, !mcsema_real_eip !25
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !25
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !25
  store i32 %R11D_val.29, i32* %62, !mcsema_real_eip !25
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %63 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !26
  store i64 -4981261766360305936, i64* %64, !mcsema_real_eip !26
  store i64 %63, i64* %XSP, !mcsema_real_eip !26
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !26
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %65 = add i64 40, %RSP_val.31, !mcsema_real_eip !27
  %66 = xor i64 %65, %RSP_val.31, !mcsema_real_eip !27
  %67 = xor i64 %66, 40, !mcsema_real_eip !27
  %68 = and i64 %67, 16, !mcsema_real_eip !27
  %69 = icmp ne i64 %68, 0, !mcsema_real_eip !27
  store i1 %69, i1* %AF, !mcsema_real_eip !27
  %70 = lshr i64 %65, 63, !mcsema_real_eip !27
  %71 = trunc i64 %70 to i1, !mcsema_real_eip !27
  store i1 %71, i1* %SF, !mcsema_real_eip !27
  %72 = icmp eq i64 %65, 0, !mcsema_real_eip !27
  store i1 %72, i1* %ZF, !mcsema_real_eip !27
  %73 = xor i64 %RSP_val.31, 40, !mcsema_real_eip !27
  %74 = xor i64 %73, -1, !mcsema_real_eip !27
  %75 = xor i64 %RSP_val.31, %65, !mcsema_real_eip !27
  %76 = and i64 %74, %75, !mcsema_real_eip !27
  %77 = lshr i64 %76, 63, !mcsema_real_eip !27
  %78 = and i64 %77, 1, !mcsema_real_eip !27
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !27
  store i1 %79, i1* %OF, !mcsema_real_eip !27
  %80 = trunc i64 %65 to i8, !mcsema_real_eip !27
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !27
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !27
  %83 = xor i1 %82, true, !mcsema_real_eip !27
  store i1 %83, i1* %PF, !mcsema_real_eip !27
  %84 = icmp ult i64 %65, %RSP_val.31, !mcsema_real_eip !27
  store i1 %84, i1* %CF, !mcsema_real_eip !27
  store i64 %65, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !28
  %85 = inttoptr i64 %RSP_val.32 to i64*, !mcsema_real_eip !28
  %86 = load i64, i64* %85, !mcsema_real_eip !28
  store i64 %86, i64* %XBX, !mcsema_real_eip !28
  %87 = add i64 %RSP_val.32, 8, !mcsema_real_eip !28
  store i64 %87, i64* %XSP, !mcsema_real_eip !28
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !29
  %88 = inttoptr i64 %RSP_val.33 to i64*, !mcsema_real_eip !29
  %89 = load i64, i64* %88, !mcsema_real_eip !29
  store i64 %89, i64* %XBP, !mcsema_real_eip !29
  %90 = add i64 %RSP_val.33, 8, !mcsema_real_eip !29
  store i64 %90, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !30
  %91 = add i64 %RSP_val.34, 8, !mcsema_real_eip !30
  %92 = inttoptr i64 %RSP_val.34 to i64*, !mcsema_real_eip !30
  %93 = load i64, i64* %92, !mcsema_real_eip !30
  store i64 %93, i64* %XIP, !mcsema_real_eip !30
  store i64 %91, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !31
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !31
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !31
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !31
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !31
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !31
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !31
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !31
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !31
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !31
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !31
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !31
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !31
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !31
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !31
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !31
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !31
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !31
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !31
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !31
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !31
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !31
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !31
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !31
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !31
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !31
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !31
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !31
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !31
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !31
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !31
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !31
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !31
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !31
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !31
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !31
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !31
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !31
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !31
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !31
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !31
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !31
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !31
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !31
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !31
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !31
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !31
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !31
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !31
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !31
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !31
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !31
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !31
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !31
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !31
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !31
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !31
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !31
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !31
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !31
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !31
  br label %block_0x0, !mcsema_real_eip !31

block_0x0:                                        ; preds = %entry
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %1 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !31
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !31
  store i64 %RBP_val.35, i64* %2, !mcsema_real_eip !31
  store i64 %1, i64* %XSP, !mcsema_real_eip !31
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !32
  store i64 %RSP_val.37, i64* %XBP, !mcsema_real_eip !32
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !33
  %3 = sext i8 48 to i64, !mcsema_real_eip !33
  %4 = sub i64 %RSP_val.38, %3, !mcsema_real_eip !33
  %5 = xor i64 %4, %RSP_val.38, !mcsema_real_eip !33
  %6 = xor i64 %5, %3, !mcsema_real_eip !33
  %7 = and i64 %6, 16, !mcsema_real_eip !33
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !33
  store i1 %8, i1* %AF, !mcsema_real_eip !33
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !33
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !33
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !33
  %12 = xor i1 %11, true, !mcsema_real_eip !33
  store i1 %12, i1* %PF, !mcsema_real_eip !33
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !33
  store i1 %13, i1* %ZF, !mcsema_real_eip !33
  %14 = lshr i64 %4, 63, !mcsema_real_eip !33
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !33
  store i1 %15, i1* %SF, !mcsema_real_eip !33
  %16 = icmp ult i64 %RSP_val.38, %3, !mcsema_real_eip !33
  store i1 %16, i1* %CF, !mcsema_real_eip !33
  %17 = xor i64 %RSP_val.38, %3, !mcsema_real_eip !33
  %18 = xor i64 %RSP_val.38, %4, !mcsema_real_eip !33
  %19 = and i64 %17, %18, !mcsema_real_eip !33
  %20 = lshr i64 %19, 63, !mcsema_real_eip !33
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !33
  store i1 %21, i1* %OF, !mcsema_real_eip !33
  store i64 %4, i64* %XSP, !mcsema_real_eip !33
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !34
  %22 = add i64 %RBP_val.39, 24, !mcsema_real_eip !34
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !34
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !34
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !34
  %26 = load i32, i32* %25, !mcsema_real_eip !34
  %27 = zext i32 %26 to i64, !mcsema_real_eip !34
  store i64 %27, i64* %XAX, !mcsema_real_eip !34
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !35
  %28 = add i64 %RBP_val.40, 16, !mcsema_real_eip !35
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !35
  %30 = ptrtoint i64* %29 to i64, !mcsema_real_eip !35
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !35
  %32 = load i32, i32* %31, !mcsema_real_eip !35
  %33 = zext i32 %32 to i64, !mcsema_real_eip !35
  store i64 %33, i64* %R10, !mcsema_real_eip !35
  %34 = getelementptr %0, %0* @data_0xd2, i64 0, i32 0, !mcsema_real_eip !36
  %35 = ptrtoint [4 x i8]* %34 to i64, !mcsema_real_eip !36
  %36 = add i64 %35, 0, !mcsema_real_eip !36
  store i64 %36, i64* %R11, !mcsema_real_eip !36
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !37
  %37 = add i64 %RBP_val.41, -4, !mcsema_real_eip !37
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !37
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !37
  %EDI_val.43 = load i32, i32* %EDI.42, !mcsema_real_eip !37
  %39 = ptrtoint i64* %38 to i64, !mcsema_real_eip !37
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !37
  store i32 %EDI_val.43, i32* %40, !mcsema_real_eip !37
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !38
  %41 = add i64 %RBP_val.44, -8, !mcsema_real_eip !38
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !38
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !38
  %ESI_val.46 = load i32, i32* %ESI.45, !mcsema_real_eip !38
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !38
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !38
  store i32 %ESI_val.46, i32* %44, !mcsema_real_eip !38
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !39
  %45 = add i64 %RBP_val.47, -12, !mcsema_real_eip !39
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !39
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !39
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !39
  %47 = ptrtoint i64* %46 to i64, !mcsema_real_eip !39
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.49, i32* %48, !mcsema_real_eip !39
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !40
  %49 = add i64 %RBP_val.50, -16, !mcsema_real_eip !40
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !40
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !40
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !40
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !40
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !40
  store i32 %ECX_val.52, i32* %52, !mcsema_real_eip !40
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !41
  %53 = add i64 %RBP_val.53, -20, !mcsema_real_eip !41
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !41
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !41
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !41
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !41
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !41
  store i32 %R8D_val.55, i32* %56, !mcsema_real_eip !41
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !42
  %57 = add i64 %RBP_val.56, -24, !mcsema_real_eip !42
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !42
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !42
  %R9D_val.58 = load i32, i32* %R9D.57, !mcsema_real_eip !42
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !42
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !42
  store i32 %R9D_val.58, i32* %60, !mcsema_real_eip !42
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !43
  %61 = add i64 %RBP_val.59, -28, !mcsema_real_eip !43
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !43
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !43
  %R10D_val.61 = load i32, i32* %R10D.60, !mcsema_real_eip !43
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !43
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.61, i32* %64, !mcsema_real_eip !43
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !44
  %65 = add i64 %RBP_val.62, -32, !mcsema_real_eip !44
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !44
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !44
  %67 = ptrtoint i64* %66 to i64, !mcsema_real_eip !44
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.64, i32* %68, !mcsema_real_eip !44
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !45
  %69 = add i64 %RBP_val.65, -28, !mcsema_real_eip !45
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !45
  %71 = ptrtoint i64* %70 to i64, !mcsema_real_eip !45
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !45
  %73 = load i32, i32* %72, !mcsema_real_eip !45
  %74 = zext i32 %73 to i64, !mcsema_real_eip !45
  store i64 %74, i64* %XAX, !mcsema_real_eip !45
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !46
  %75 = add i64 %RBP_val.66, -32, !mcsema_real_eip !46
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !46
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !46
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !46
  %79 = load i32, i32* %78, !mcsema_real_eip !46
  %EAX.67 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.68 = load i32, i32* %EAX.67, !mcsema_real_eip !46
  %80 = add i32 %EAX_val.68, %79, !mcsema_real_eip !46
  %81 = xor i32 %80, %79, !mcsema_real_eip !46
  %82 = xor i32 %81, %EAX_val.68, !mcsema_real_eip !46
  %83 = and i32 %82, 16, !mcsema_real_eip !46
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !46
  store i1 %84, i1* %AF, !mcsema_real_eip !46
  %85 = lshr i32 %80, 31, !mcsema_real_eip !46
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !46
  store i1 %86, i1* %SF, !mcsema_real_eip !46
  %87 = icmp eq i32 %80, 0, !mcsema_real_eip !46
  store i1 %87, i1* %ZF, !mcsema_real_eip !46
  %88 = xor i32 %79, %EAX_val.68, !mcsema_real_eip !46
  %89 = xor i32 %88, -1, !mcsema_real_eip !46
  %90 = xor i32 %79, %80, !mcsema_real_eip !46
  %91 = and i32 %89, %90, !mcsema_real_eip !46
  %92 = lshr i32 %91, 31, !mcsema_real_eip !46
  %93 = and i32 %92, 1, !mcsema_real_eip !46
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !46
  store i1 %94, i1* %OF, !mcsema_real_eip !46
  %95 = trunc i32 %80 to i8, !mcsema_real_eip !46
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !46
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !46
  %98 = xor i1 %97, true, !mcsema_real_eip !46
  store i1 %98, i1* %PF, !mcsema_real_eip !46
  %99 = icmp ult i32 %80, %79, !mcsema_real_eip !46
  store i1 %99, i1* %CF, !mcsema_real_eip !46
  %100 = zext i32 %80 to i64, !mcsema_real_eip !46
  store i64 %100, i64* %XAX, !mcsema_real_eip !46
  %R11_val.69 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %R11_val.69, i64* %XDI, !mcsema_real_eip !47
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !48
  %101 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !48
  store i64 %101, i64* %XSI, !mcsema_real_eip !48
  %AL.72 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.72, !mcsema_real_eip !49
  %RDI_val.73 = load i64, i64* %XDI, !mcsema_real_eip !50
  %RSI_val.74 = load i64, i64* %XSI, !mcsema_real_eip !50
  %RDX_val.75 = load i64, i64* %XDX, !mcsema_real_eip !50
  %RCX_val.76 = load i64, i64* %XCX, !mcsema_real_eip !50
  %R8_val.77 = load i64, i64* %R8, !mcsema_real_eip !50
  %R9_val.78 = load i64, i64* %R9, !mcsema_real_eip !50
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !50
  %102 = inttoptr i64 %RSP_val.79 to i64*, !mcsema_real_eip !50
  %103 = load i64, i64* %102, !mcsema_real_eip !50
  %104 = add i64 %RSP_val.79, 8, !mcsema_real_eip !50
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !50
  %106 = load i64, i64* %105, !mcsema_real_eip !50
  %107 = add i64 %104, 8, !mcsema_real_eip !50
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !50
  %109 = load i64, i64* %108, !mcsema_real_eip !50
  %110 = add i64 %107, 8, !mcsema_real_eip !50
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !50
  %112 = load i64, i64* %111, !mcsema_real_eip !50
  %113 = add i64 %110, 8, !mcsema_real_eip !50
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !50
  %115 = load i64, i64* %114, !mcsema_real_eip !50
  %116 = add i64 %113, 8, !mcsema_real_eip !50
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !50
  %118 = load i64, i64* %117, !mcsema_real_eip !50
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !50
  %119 = sub i64 %RSP_val.80, 8, !mcsema_real_eip !50
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !50
  store i64 -2415393069852865332, i64* %120, !mcsema_real_eip !50
  store i64 %119, i64* %XSP, !mcsema_real_eip !50
  %121 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.73, i64 %RSI_val.74, i64 %RDX_val.75, i64 %RCX_val.76, i64 %R8_val.77, i64 %R9_val.78, i64 %103, i64 %106, i64 %109, i64 %112, i64 %115, i64 %118), !mcsema_real_eip !50
  store i64 %121, i64* %XAX, !mcsema_real_eip !50
  %ECX.81 = bitcast i64* %XCX to i32*, !mcsema_real_eip !51
  %ECX_val.82 = load i32, i32* %ECX.81, !mcsema_real_eip !51
  %ECX.83 = bitcast i64* %XCX to i32*, !mcsema_real_eip !51
  %ECX_val.84 = load i32, i32* %ECX.83, !mcsema_real_eip !51
  %122 = xor i32 %ECX_val.82, %ECX_val.84, !mcsema_real_eip !51
  store i1 false, i1* %CF, !mcsema_real_eip !51
  store i1 false, i1* %OF, !mcsema_real_eip !51
  %123 = lshr i32 %122, 31, !mcsema_real_eip !51
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !51
  store i1 %124, i1* %SF, !mcsema_real_eip !51
  %125 = icmp eq i32 %122, 0, !mcsema_real_eip !51
  store i1 %125, i1* %ZF, !mcsema_real_eip !51
  %126 = trunc i32 %122 to i8, !mcsema_real_eip !51
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !51
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !51
  %129 = xor i1 %128, true, !mcsema_real_eip !51
  store i1 %129, i1* %PF, !mcsema_real_eip !51
  store i1 undef, i1* %AF, !mcsema_real_eip !51
  %130 = zext i32 %122 to i64, !mcsema_real_eip !51
  store i64 %130, i64* %XCX, !mcsema_real_eip !51
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !52
  %131 = add i64 %RBP_val.85, -36, !mcsema_real_eip !52
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !52
  %EAX.86 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.87 = load i32, i32* %EAX.86, !mcsema_real_eip !52
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !52
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.87, i32* %134, !mcsema_real_eip !52
  %ECX.88 = bitcast i64* %XCX to i32*, !mcsema_real_eip !53
  %ECX_val.89 = load i32, i32* %ECX.88, !mcsema_real_eip !53
  %135 = zext i32 %ECX_val.89 to i64, !mcsema_real_eip !53
  store i64 %135, i64* %XAX, !mcsema_real_eip !53
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !54
  %136 = add i64 48, %RSP_val.90, !mcsema_real_eip !54
  %137 = xor i64 %136, %RSP_val.90, !mcsema_real_eip !54
  %138 = xor i64 %137, 48, !mcsema_real_eip !54
  %139 = and i64 %138, 16, !mcsema_real_eip !54
  %140 = icmp ne i64 %139, 0, !mcsema_real_eip !54
  store i1 %140, i1* %AF, !mcsema_real_eip !54
  %141 = lshr i64 %136, 63, !mcsema_real_eip !54
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !54
  store i1 %142, i1* %SF, !mcsema_real_eip !54
  %143 = icmp eq i64 %136, 0, !mcsema_real_eip !54
  store i1 %143, i1* %ZF, !mcsema_real_eip !54
  %144 = xor i64 %RSP_val.90, 48, !mcsema_real_eip !54
  %145 = xor i64 %144, -1, !mcsema_real_eip !54
  %146 = xor i64 %RSP_val.90, %136, !mcsema_real_eip !54
  %147 = and i64 %145, %146, !mcsema_real_eip !54
  %148 = lshr i64 %147, 63, !mcsema_real_eip !54
  %149 = and i64 %148, 1, !mcsema_real_eip !54
  %150 = trunc i64 %149 to i1, !mcsema_real_eip !54
  store i1 %150, i1* %OF, !mcsema_real_eip !54
  %151 = trunc i64 %136 to i8, !mcsema_real_eip !54
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !54
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !54
  %154 = xor i1 %153, true, !mcsema_real_eip !54
  store i1 %154, i1* %PF, !mcsema_real_eip !54
  %155 = icmp ult i64 %136, %RSP_val.90, !mcsema_real_eip !54
  store i1 %155, i1* %CF, !mcsema_real_eip !54
  store i64 %136, i64* %XSP, !mcsema_real_eip !54
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !55
  %156 = inttoptr i64 %RSP_val.91 to i64*, !mcsema_real_eip !55
  %157 = load i64, i64* %156, !mcsema_real_eip !55
  store i64 %157, i64* %XBP, !mcsema_real_eip !55
  %158 = add i64 %RSP_val.91, 8, !mcsema_real_eip !55
  store i64 %158, i64* %XSP, !mcsema_real_eip !55
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !56
  %159 = add i64 %RSP_val.92, 8, !mcsema_real_eip !56
  %160 = inttoptr i64 %RSP_val.92 to i64*, !mcsema_real_eip !56
  %161 = load i64, i64* %160, !mcsema_real_eip !56
  store i64 %161, i64* %XIP, !mcsema_real_eip !56
  store i64 %159, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
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
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 101}
!6 = !{i64 105}
!7 = !{i64 110}
!8 = !{i64 115}
!9 = !{i64 120}
!10 = !{i64 126}
!11 = !{i64 132}
!12 = !{i64 138}
!13 = !{i64 144}
!14 = !{i64 149}
!15 = !{i64 156}
!16 = !{i64 159}
!17 = !{i64 163}
!18 = !{i64 165}
!19 = !{i64 167}
!20 = !{i64 170}
!21 = !{i64 173}
!22 = !{i64 176}
!23 = !{i64 183}
!24 = !{i64 191}
!25 = !{i64 194}
!26 = !{i64 198}
!27 = !{i64 203}
!28 = !{i64 207}
!29 = !{i64 208}
!30 = !{i64 209}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 8}
!35 = !{i64 11}
!36 = !{i64 15}
!37 = !{i64 25}
!38 = !{i64 28}
!39 = !{i64 31}
!40 = !{i64 34}
!41 = !{i64 37}
!42 = !{i64 41}
!43 = !{i64 45}
!44 = !{i64 49}
!45 = !{i64 52}
!46 = !{i64 55}
!47 = !{i64 58}
!48 = !{i64 61}
!49 = !{i64 63}
!50 = !{i64 65}
!51 = !{i64 70}
!52 = !{i64 72}
!53 = !{i64 75}
!54 = !{i64 77}
!55 = !{i64 81}
!56 = !{i64 82}
