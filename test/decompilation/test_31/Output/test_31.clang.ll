; ModuleID = 'Output/test_31.clang.bc'
source_filename = "Output/test_31.clang.bc"
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

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xa0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %22 = zext i32 1 to i64, !mcsema_real_eip !5
  store i64 %22, i64* %XAX, !mcsema_real_eip !5
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !6
  %23 = add i64 %RBP_val.4, -8, !mcsema_real_eip !6
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !6
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !6
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.6, i32* %26, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %27 = add i64 %RBP_val.7, -8, !mcsema_real_eip !7
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !7
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !7
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !7
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !7
  %31 = load i32, i32* %30, !mcsema_real_eip !7
  %32 = sub i32 %EAX_val.9, %31, !mcsema_real_eip !7
  %33 = xor i32 %32, %EAX_val.9, !mcsema_real_eip !7
  %34 = xor i32 %33, %31, !mcsema_real_eip !7
  %35 = and i32 %34, 16, !mcsema_real_eip !7
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !7
  store i1 %36, i1* %AF, !mcsema_real_eip !7
  %37 = trunc i32 %32 to i8, !mcsema_real_eip !7
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !7
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !7
  %40 = xor i1 %39, true, !mcsema_real_eip !7
  store i1 %40, i1* %PF, !mcsema_real_eip !7
  %41 = icmp eq i32 %32, 0, !mcsema_real_eip !7
  store i1 %41, i1* %ZF, !mcsema_real_eip !7
  %42 = lshr i32 %32, 31, !mcsema_real_eip !7
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !7
  store i1 %43, i1* %SF, !mcsema_real_eip !7
  %44 = icmp ult i32 %EAX_val.9, %31, !mcsema_real_eip !7
  store i1 %44, i1* %CF, !mcsema_real_eip !7
  %45 = xor i32 %EAX_val.9, %31, !mcsema_real_eip !7
  %46 = xor i32 %EAX_val.9, %32, !mcsema_real_eip !7
  %47 = and i32 %45, %46, !mcsema_real_eip !7
  %48 = lshr i32 %47, 31, !mcsema_real_eip !7
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !7
  store i1 %49, i1* %OF, !mcsema_real_eip !7
  %50 = load i1, i1* %ZF, !mcsema_real_eip !8
  %51 = icmp eq i1 %50, true, !mcsema_real_eip !8
  br i1 %51, label %block_0x24, label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x0
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !9
  %52 = xor i32 %EAX_val.11, %EAX_val.13, !mcsema_real_eip !9
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  %53 = lshr i32 %52, 31, !mcsema_real_eip !9
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !9
  store i1 %54, i1* %SF, !mcsema_real_eip !9
  %55 = icmp eq i32 %52, 0, !mcsema_real_eip !9
  store i1 %55, i1* %ZF, !mcsema_real_eip !9
  %56 = trunc i32 %52 to i8, !mcsema_real_eip !9
  %57 = call i8 @llvm.ctpop.i8(i8 %56), !mcsema_real_eip !9
  %58 = trunc i8 %57 to i1, !mcsema_real_eip !9
  %59 = xor i1 %58, true, !mcsema_real_eip !9
  store i1 %59, i1* %PF, !mcsema_real_eip !9
  store i1 undef, i1* %AF, !mcsema_real_eip !9
  %60 = zext i32 %52 to i64, !mcsema_real_eip !9
  store i64 %60, i64* %XAX, !mcsema_real_eip !9
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !10
  %61 = add i64 %RBP_val.14, -8, !mcsema_real_eip !10
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !10
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !10
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !10
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !10
  %65 = load i32, i32* %64, !mcsema_real_eip !10
  %66 = sub i32 %EAX_val.16, %65, !mcsema_real_eip !10
  %67 = xor i32 %66, %EAX_val.16, !mcsema_real_eip !10
  %68 = xor i32 %67, %65, !mcsema_real_eip !10
  %69 = and i32 %68, 16, !mcsema_real_eip !10
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !10
  store i1 %70, i1* %AF, !mcsema_real_eip !10
  %71 = trunc i32 %66 to i8, !mcsema_real_eip !10
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !10
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !10
  %74 = xor i1 %73, true, !mcsema_real_eip !10
  store i1 %74, i1* %PF, !mcsema_real_eip !10
  %75 = icmp eq i32 %66, 0, !mcsema_real_eip !10
  store i1 %75, i1* %ZF, !mcsema_real_eip !10
  %76 = lshr i32 %66, 31, !mcsema_real_eip !10
  %77 = trunc i32 %76 to i1, !mcsema_real_eip !10
  store i1 %77, i1* %SF, !mcsema_real_eip !10
  %78 = icmp ult i32 %EAX_val.16, %65, !mcsema_real_eip !10
  store i1 %78, i1* %CF, !mcsema_real_eip !10
  %79 = xor i32 %EAX_val.16, %65, !mcsema_real_eip !10
  %80 = xor i32 %EAX_val.16, %66, !mcsema_real_eip !10
  %81 = and i32 %79, %80, !mcsema_real_eip !10
  %82 = lshr i32 %81, 31, !mcsema_real_eip !10
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !10
  store i1 %83, i1* %OF, !mcsema_real_eip !10
  %84 = load i1, i1* %ZF, !mcsema_real_eip !11
  %85 = icmp eq i1 %84, false, !mcsema_real_eip !11
  br i1 %85, label %block_0x30, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x19, %block_0x0
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !12
  %86 = add i64 %RBP_val.17, -4, !mcsema_real_eip !12
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !12
  %88 = ptrtoint i64* %87 to i64, !mcsema_real_eip !12
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !12
  store i32 1, i32* %89, !mcsema_real_eip !12
  br label %block_0x53, !mcsema_real_eip !13

block_0x30:                                       ; preds = %block_0x19
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !14
  %90 = add i64 %RBP_val.18, -8, !mcsema_real_eip !14
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !14
  %92 = ptrtoint i64* %91 to i64, !mcsema_real_eip !14
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !14
  %94 = load i32, i32* %93, !mcsema_real_eip !14
  %95 = zext i32 %94 to i64, !mcsema_real_eip !14
  store i64 %95, i64* %XAX, !mcsema_real_eip !14
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !15
  %96 = sub i32 %EAX_val.20, 1, !mcsema_real_eip !15
  %97 = xor i32 %96, %EAX_val.20, !mcsema_real_eip !15
  %98 = xor i32 %97, 1, !mcsema_real_eip !15
  %99 = and i32 %98, 16, !mcsema_real_eip !15
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !15
  store i1 %100, i1* %AF, !mcsema_real_eip !15
  %101 = trunc i32 %96 to i8, !mcsema_real_eip !15
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !15
  %103 = trunc i8 %102 to i1, !mcsema_real_eip !15
  %104 = xor i1 %103, true, !mcsema_real_eip !15
  store i1 %104, i1* %PF, !mcsema_real_eip !15
  %105 = icmp eq i32 %96, 0, !mcsema_real_eip !15
  store i1 %105, i1* %ZF, !mcsema_real_eip !15
  %106 = lshr i32 %96, 31, !mcsema_real_eip !15
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !15
  store i1 %107, i1* %SF, !mcsema_real_eip !15
  %108 = icmp ult i32 %EAX_val.20, 1, !mcsema_real_eip !15
  store i1 %108, i1* %CF, !mcsema_real_eip !15
  %109 = xor i32 %EAX_val.20, 1, !mcsema_real_eip !15
  %110 = xor i32 %EAX_val.20, %96, !mcsema_real_eip !15
  %111 = and i32 %109, %110, !mcsema_real_eip !15
  %112 = lshr i32 %111, 31, !mcsema_real_eip !15
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !15
  store i1 %113, i1* %OF, !mcsema_real_eip !15
  %114 = zext i32 %96 to i64, !mcsema_real_eip !15
  store i64 %114, i64* %XAX, !mcsema_real_eip !15
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !16
  %115 = zext i32 %EAX_val.22 to i64, !mcsema_real_eip !16
  store i64 %115, i64* %XDI, !mcsema_real_eip !16
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !17
  %116 = sub i64 %RSP_val.23, 8, !mcsema_real_eip !17
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %117, !mcsema_real_eip !17
  store i64 %116, i64* %XSP, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %118 = add i64 %RBP_val.24, -8, !mcsema_real_eip !18
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !18
  %120 = ptrtoint i64* %119 to i64, !mcsema_real_eip !18
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !18
  %122 = load i32, i32* %121, !mcsema_real_eip !18
  %123 = zext i32 %122 to i64, !mcsema_real_eip !18
  store i64 %123, i64* %XDI, !mcsema_real_eip !18
  %EDI.25 = bitcast i64* %XDI to i32*, !mcsema_real_eip !19
  %EDI_val.26 = load i32, i32* %EDI.25, !mcsema_real_eip !19
  %124 = sub i32 %EDI_val.26, 2, !mcsema_real_eip !19
  %125 = xor i32 %124, %EDI_val.26, !mcsema_real_eip !19
  %126 = xor i32 %125, 2, !mcsema_real_eip !19
  %127 = and i32 %126, 16, !mcsema_real_eip !19
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !19
  store i1 %128, i1* %AF, !mcsema_real_eip !19
  %129 = trunc i32 %124 to i8, !mcsema_real_eip !19
  %130 = call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !19
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !19
  %132 = xor i1 %131, true, !mcsema_real_eip !19
  store i1 %132, i1* %PF, !mcsema_real_eip !19
  %133 = icmp eq i32 %124, 0, !mcsema_real_eip !19
  store i1 %133, i1* %ZF, !mcsema_real_eip !19
  %134 = lshr i32 %124, 31, !mcsema_real_eip !19
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !19
  store i1 %135, i1* %SF, !mcsema_real_eip !19
  %136 = icmp ult i32 %EDI_val.26, 2, !mcsema_real_eip !19
  store i1 %136, i1* %CF, !mcsema_real_eip !19
  %137 = xor i32 %EDI_val.26, 2, !mcsema_real_eip !19
  %138 = xor i32 %EDI_val.26, %124, !mcsema_real_eip !19
  %139 = and i32 %137, %138, !mcsema_real_eip !19
  %140 = lshr i32 %139, 31, !mcsema_real_eip !19
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !19
  store i1 %141, i1* %OF, !mcsema_real_eip !19
  %142 = zext i32 %124 to i64, !mcsema_real_eip !19
  store i64 %142, i64* %XDI, !mcsema_real_eip !19
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !20
  %143 = add i64 %RBP_val.27, -12, !mcsema_real_eip !20
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !20
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !20
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !20
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.29, i32* %146, !mcsema_real_eip !20
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %147 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !21
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %148, !mcsema_real_eip !21
  store i64 %147, i64* %XSP, !mcsema_real_eip !21
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !21
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !22
  %149 = add i64 %RBP_val.31, -12, !mcsema_real_eip !22
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !22
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !22
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !22
  %153 = load i32, i32* %152, !mcsema_real_eip !22
  %154 = zext i32 %153 to i64, !mcsema_real_eip !22
  store i64 %154, i64* %XDI, !mcsema_real_eip !22
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !23
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !23
  %EAX.34 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.35 = load i32, i32* %EAX.34, !mcsema_real_eip !23
  %155 = add i32 %EAX_val.35, %EDI_val.33, !mcsema_real_eip !23
  %156 = xor i32 %155, %EDI_val.33, !mcsema_real_eip !23
  %157 = xor i32 %156, %EAX_val.35, !mcsema_real_eip !23
  %158 = and i32 %157, 16, !mcsema_real_eip !23
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !23
  store i1 %159, i1* %AF, !mcsema_real_eip !23
  %160 = lshr i32 %155, 31, !mcsema_real_eip !23
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !23
  store i1 %161, i1* %SF, !mcsema_real_eip !23
  %162 = icmp eq i32 %155, 0, !mcsema_real_eip !23
  store i1 %162, i1* %ZF, !mcsema_real_eip !23
  %163 = xor i32 %EDI_val.33, %EAX_val.35, !mcsema_real_eip !23
  %164 = xor i32 %163, -1, !mcsema_real_eip !23
  %165 = xor i32 %EDI_val.33, %155, !mcsema_real_eip !23
  %166 = and i32 %164, %165, !mcsema_real_eip !23
  %167 = lshr i32 %166, 31, !mcsema_real_eip !23
  %168 = and i32 %167, 1, !mcsema_real_eip !23
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !23
  store i1 %169, i1* %OF, !mcsema_real_eip !23
  %170 = trunc i32 %155 to i8, !mcsema_real_eip !23
  %171 = call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !23
  %172 = trunc i8 %171 to i1, !mcsema_real_eip !23
  %173 = xor i1 %172, true, !mcsema_real_eip !23
  store i1 %173, i1* %PF, !mcsema_real_eip !23
  %174 = icmp ult i32 %155, %EDI_val.33, !mcsema_real_eip !23
  store i1 %174, i1* %CF, !mcsema_real_eip !23
  %175 = zext i32 %155 to i64, !mcsema_real_eip !23
  store i64 %175, i64* %XDI, !mcsema_real_eip !23
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !24
  %176 = add i64 %RBP_val.36, -4, !mcsema_real_eip !24
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !24
  %EDI.37 = bitcast i64* %XDI to i32*, !mcsema_real_eip !24
  %EDI_val.38 = load i32, i32* %EDI.37, !mcsema_real_eip !24
  %178 = ptrtoint i64* %177 to i64, !mcsema_real_eip !24
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !24
  store i32 %EDI_val.38, i32* %179, !mcsema_real_eip !24
  br label %block_0x53, !mcsema_real_eip !25

block_0x53:                                       ; preds = %block_0x30, %block_0x24
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !25
  %180 = add i64 %RBP_val.39, -4, !mcsema_real_eip !25
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !25
  %182 = ptrtoint i64* %181 to i64, !mcsema_real_eip !25
  %183 = inttoptr i64 %182 to i32*, !mcsema_real_eip !25
  %184 = load i32, i32* %183, !mcsema_real_eip !25
  %185 = zext i32 %184 to i64, !mcsema_real_eip !25
  store i64 %185, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !26
  %186 = add i64 16, %RSP_val.40, !mcsema_real_eip !26
  %187 = xor i64 %186, %RSP_val.40, !mcsema_real_eip !26
  %188 = xor i64 %187, 16, !mcsema_real_eip !26
  %189 = and i64 %188, 16, !mcsema_real_eip !26
  %190 = icmp ne i64 %189, 0, !mcsema_real_eip !26
  store i1 %190, i1* %AF, !mcsema_real_eip !26
  %191 = lshr i64 %186, 63, !mcsema_real_eip !26
  %192 = trunc i64 %191 to i1, !mcsema_real_eip !26
  store i1 %192, i1* %SF, !mcsema_real_eip !26
  %193 = icmp eq i64 %186, 0, !mcsema_real_eip !26
  store i1 %193, i1* %ZF, !mcsema_real_eip !26
  %194 = xor i64 %RSP_val.40, 16, !mcsema_real_eip !26
  %195 = xor i64 %194, -1, !mcsema_real_eip !26
  %196 = xor i64 %RSP_val.40, %186, !mcsema_real_eip !26
  %197 = and i64 %195, %196, !mcsema_real_eip !26
  %198 = lshr i64 %197, 63, !mcsema_real_eip !26
  %199 = and i64 %198, 1, !mcsema_real_eip !26
  %200 = trunc i64 %199 to i1, !mcsema_real_eip !26
  store i1 %200, i1* %OF, !mcsema_real_eip !26
  %201 = trunc i64 %186 to i8, !mcsema_real_eip !26
  %202 = call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !26
  %203 = trunc i8 %202 to i1, !mcsema_real_eip !26
  %204 = xor i1 %203, true, !mcsema_real_eip !26
  store i1 %204, i1* %PF, !mcsema_real_eip !26
  %205 = icmp ult i64 %186, %RSP_val.40, !mcsema_real_eip !26
  store i1 %205, i1* %CF, !mcsema_real_eip !26
  store i64 %186, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !27
  %206 = inttoptr i64 %RSP_val.41 to i64*, !mcsema_real_eip !27
  %207 = load i64, i64* %206, !mcsema_real_eip !27
  store i64 %207, i64* %XBP, !mcsema_real_eip !27
  %208 = add i64 %RSP_val.41, 8, !mcsema_real_eip !27
  store i64 %208, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.42 = load i64, i64* %XSP, !mcsema_real_eip !28
  %209 = add i64 %RSP_val.42, 8, !mcsema_real_eip !28
  %210 = inttoptr i64 %RSP_val.42 to i64*, !mcsema_real_eip !28
  %211 = load i64, i64* %210, !mcsema_real_eip !28
  store i64 %211, i64* %XIP, !mcsema_real_eip !28
  store i64 %209, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !29
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !29
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !29
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !29
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !29
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !29
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !29
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !29
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !29
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !29
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !29
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !29
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !29
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !29
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !29
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !29
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !29
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !29
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !29
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !29
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !29
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !29
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !29
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !29
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !29
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !29
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !29
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !29
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !29
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !29
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !29
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !29
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !29
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !29
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !29
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !29
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !29
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !29
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !29
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !29
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !29
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !29
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !29
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !29
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !29
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !29
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !29
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !29
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !29
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !29
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !29
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !29
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !29
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !29
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !29
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !29
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !29
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !29
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !29
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !29
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !29
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !29
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !29
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !29
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !29
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !29
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !29
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !29
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !29
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !29
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !29
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !29
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !29
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !29
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !29
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !29
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !29
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !29
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !29
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !29
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !29
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !29
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !29
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !29
  br label %block_0x60, !mcsema_real_eip !29

block_0x60:                                       ; preds = %entry
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !29
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !29
  %1 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !29
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !29
  store i64 %RBP_val.43, i64* %2, !mcsema_real_eip !29
  store i64 %1, i64* %XSP, !mcsema_real_eip !29
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !30
  store i64 %RSP_val.45, i64* %XBP, !mcsema_real_eip !30
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !31
  %3 = sext i8 16 to i64, !mcsema_real_eip !31
  %4 = sub i64 %RSP_val.46, %3, !mcsema_real_eip !31
  %5 = xor i64 %4, %RSP_val.46, !mcsema_real_eip !31
  %6 = xor i64 %5, %3, !mcsema_real_eip !31
  %7 = and i64 %6, 16, !mcsema_real_eip !31
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !31
  store i1 %8, i1* %AF, !mcsema_real_eip !31
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !31
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !31
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !31
  %12 = xor i1 %11, true, !mcsema_real_eip !31
  store i1 %12, i1* %PF, !mcsema_real_eip !31
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !31
  store i1 %13, i1* %ZF, !mcsema_real_eip !31
  %14 = lshr i64 %4, 63, !mcsema_real_eip !31
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !31
  store i1 %15, i1* %SF, !mcsema_real_eip !31
  %16 = icmp ult i64 %RSP_val.46, %3, !mcsema_real_eip !31
  store i1 %16, i1* %CF, !mcsema_real_eip !31
  %17 = xor i64 %RSP_val.46, %3, !mcsema_real_eip !31
  %18 = xor i64 %RSP_val.46, %4, !mcsema_real_eip !31
  %19 = and i64 %17, %18, !mcsema_real_eip !31
  %20 = lshr i64 %19, 63, !mcsema_real_eip !31
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !31
  store i1 %21, i1* %OF, !mcsema_real_eip !31
  store i64 %4, i64* %XSP, !mcsema_real_eip !31
  %22 = zext i32 5 to i64, !mcsema_real_eip !32
  store i64 %22, i64* %XDI, !mcsema_real_eip !32
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !33
  %23 = add i64 %RBP_val.47, -4, !mcsema_real_eip !33
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !33
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !33
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !33
  store i32 0, i32* %26, !mcsema_real_eip !33
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !34
  %27 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !34
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !34
  store i64 -4981261766360305936, i64* %28, !mcsema_real_eip !34
  store i64 %27, i64* %XSP, !mcsema_real_eip !34
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !34
  %29 = getelementptr %0, %0* @data_0x99, i64 0, i32 0, !mcsema_real_eip !35
  %30 = ptrtoint [4 x i8]* %29 to i64, !mcsema_real_eip !35
  %31 = add i64 %30, 0, !mcsema_real_eip !35
  store i64 %31, i64* %XDI, !mcsema_real_eip !35
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !36
  %32 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !36
  store i64 %32, i64* %XSI, !mcsema_real_eip !36
  %AL.51 = bitcast i64* %XAX to i8*, !mcsema_real_eip !37
  store i8 0, i8* %AL.51, !mcsema_real_eip !37
  %RDI_val.52 = load i64, i64* %XDI, !mcsema_real_eip !38
  %RSI_val.53 = load i64, i64* %XSI, !mcsema_real_eip !38
  %RDX_val.54 = load i64, i64* %XDX, !mcsema_real_eip !38
  %RCX_val.55 = load i64, i64* %XCX, !mcsema_real_eip !38
  %R8_val.56 = load i64, i64* %R8, !mcsema_real_eip !38
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !38
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !38
  %33 = inttoptr i64 %RSP_val.58 to i64*, !mcsema_real_eip !38
  %34 = load i64, i64* %33, !mcsema_real_eip !38
  %35 = add i64 %RSP_val.58, 8, !mcsema_real_eip !38
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !38
  %37 = load i64, i64* %36, !mcsema_real_eip !38
  %38 = add i64 %35, 8, !mcsema_real_eip !38
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !38
  %40 = load i64, i64* %39, !mcsema_real_eip !38
  %41 = add i64 %38, 8, !mcsema_real_eip !38
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !38
  %43 = load i64, i64* %42, !mcsema_real_eip !38
  %44 = add i64 %41, 8, !mcsema_real_eip !38
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !38
  %46 = load i64, i64* %45, !mcsema_real_eip !38
  %47 = add i64 %44, 8, !mcsema_real_eip !38
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !38
  %49 = load i64, i64* %48, !mcsema_real_eip !38
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !38
  %50 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !38
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !38
  store i64 -2415393069852865332, i64* %51, !mcsema_real_eip !38
  store i64 %50, i64* %XSP, !mcsema_real_eip !38
  %52 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.52, i64 %RSI_val.53, i64 %RDX_val.54, i64 %RCX_val.55, i64 %R8_val.56, i64 %R9_val.57, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49), !mcsema_real_eip !38
  store i64 %52, i64* %XAX, !mcsema_real_eip !38
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !39
  %ESI.62 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.63 = load i32, i32* %ESI.62, !mcsema_real_eip !39
  %53 = xor i32 %ESI_val.61, %ESI_val.63, !mcsema_real_eip !39
  store i1 false, i1* %CF, !mcsema_real_eip !39
  store i1 false, i1* %OF, !mcsema_real_eip !39
  %54 = lshr i32 %53, 31, !mcsema_real_eip !39
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !39
  store i1 %55, i1* %SF, !mcsema_real_eip !39
  %56 = icmp eq i32 %53, 0, !mcsema_real_eip !39
  store i1 %56, i1* %ZF, !mcsema_real_eip !39
  %57 = trunc i32 %53 to i8, !mcsema_real_eip !39
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !39
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !39
  %60 = xor i1 %59, true, !mcsema_real_eip !39
  store i1 %60, i1* %PF, !mcsema_real_eip !39
  store i1 undef, i1* %AF, !mcsema_real_eip !39
  %61 = zext i32 %53 to i64, !mcsema_real_eip !39
  store i64 %61, i64* %XSI, !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !40
  %62 = add i64 %RBP_val.64, -8, !mcsema_real_eip !40
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !40
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !40
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !40
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.66, i32* %65, !mcsema_real_eip !40
  %ESI.67 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.68 = load i32, i32* %ESI.67, !mcsema_real_eip !41
  %66 = zext i32 %ESI_val.68 to i64, !mcsema_real_eip !41
  store i64 %66, i64* %XAX, !mcsema_real_eip !41
  %RSP_val.69 = load i64, i64* %XSP, !mcsema_real_eip !42
  %67 = add i64 16, %RSP_val.69, !mcsema_real_eip !42
  %68 = xor i64 %67, %RSP_val.69, !mcsema_real_eip !42
  %69 = xor i64 %68, 16, !mcsema_real_eip !42
  %70 = and i64 %69, 16, !mcsema_real_eip !42
  %71 = icmp ne i64 %70, 0, !mcsema_real_eip !42
  store i1 %71, i1* %AF, !mcsema_real_eip !42
  %72 = lshr i64 %67, 63, !mcsema_real_eip !42
  %73 = trunc i64 %72 to i1, !mcsema_real_eip !42
  store i1 %73, i1* %SF, !mcsema_real_eip !42
  %74 = icmp eq i64 %67, 0, !mcsema_real_eip !42
  store i1 %74, i1* %ZF, !mcsema_real_eip !42
  %75 = xor i64 %RSP_val.69, 16, !mcsema_real_eip !42
  %76 = xor i64 %75, -1, !mcsema_real_eip !42
  %77 = xor i64 %RSP_val.69, %67, !mcsema_real_eip !42
  %78 = and i64 %76, %77, !mcsema_real_eip !42
  %79 = lshr i64 %78, 63, !mcsema_real_eip !42
  %80 = and i64 %79, 1, !mcsema_real_eip !42
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !42
  store i1 %81, i1* %OF, !mcsema_real_eip !42
  %82 = trunc i64 %67 to i8, !mcsema_real_eip !42
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !42
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !42
  %85 = xor i1 %84, true, !mcsema_real_eip !42
  store i1 %85, i1* %PF, !mcsema_real_eip !42
  %86 = icmp ult i64 %67, %RSP_val.69, !mcsema_real_eip !42
  store i1 %86, i1* %CF, !mcsema_real_eip !42
  store i64 %67, i64* %XSP, !mcsema_real_eip !42
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !43
  %87 = inttoptr i64 %RSP_val.70 to i64*, !mcsema_real_eip !43
  %88 = load i64, i64* %87, !mcsema_real_eip !43
  store i64 %88, i64* %XBP, !mcsema_real_eip !43
  %89 = add i64 %RSP_val.70, 8, !mcsema_real_eip !43
  store i64 %89, i64* %XSP, !mcsema_real_eip !43
  %RSP_val.71 = load i64, i64* %XSP, !mcsema_real_eip !44
  %90 = add i64 %RSP_val.71, 8, !mcsema_real_eip !44
  %91 = inttoptr i64 %RSP_val.71 to i64*, !mcsema_real_eip !44
  %92 = load i64, i64* %91, !mcsema_real_eip !44
  store i64 %92, i64* %XIP, !mcsema_real_eip !44
  store i64 %90, i64* %XSP, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
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
!6 = !{i64 13}
!7 = !{i64 16}
!8 = !{i64 19}
!9 = !{i64 25}
!10 = !{i64 27}
!11 = !{i64 30}
!12 = !{i64 36}
!13 = !{i64 43}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 64}
!20 = !{i64 67}
!21 = !{i64 70}
!22 = !{i64 75}
!23 = !{i64 78}
!24 = !{i64 80}
!25 = !{i64 83}
!26 = !{i64 86}
!27 = !{i64 90}
!28 = !{i64 91}
!29 = !{i64 96}
!30 = !{i64 97}
!31 = !{i64 100}
!32 = !{i64 104}
!33 = !{i64 109}
!34 = !{i64 116}
!35 = !{i64 121}
!36 = !{i64 131}
!37 = !{i64 133}
!38 = !{i64 135}
!39 = !{i64 140}
!40 = !{i64 142}
!41 = !{i64 145}
!42 = !{i64 147}
!43 = !{i64 151}
!44 = !{i64 152}
