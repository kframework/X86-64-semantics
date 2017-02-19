; ModuleID = 'Output/test_12.clang.bc'
source_filename = "Output/test_12.clang.bc"
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
module asm "  .globl open;"
module asm "  .globl _open;"
module asm "  .type _open,@function"
module asm "_open:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq open@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _open,0b-_open;"
module asm "  .cfi_endproc;"
module asm "  .globl close;"
module asm "  .globl _close;"
module asm "  .type _close,@function"
module asm "_close:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq close@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _close,0b-_close;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x50 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"M\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sext i8 32 to i64, !mcsema_real_eip !4
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
  %ESI.4 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.5 = load i32, i32* %ESI.4, !mcsema_real_eip !5
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, !mcsema_real_eip !5
  %22 = xor i32 %ESI_val.5, %ESI_val.7, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  %23 = lshr i32 %22, 31, !mcsema_real_eip !5
  %24 = trunc i32 %23 to i1, !mcsema_real_eip !5
  store i1 %24, i1* %SF, !mcsema_real_eip !5
  %25 = icmp eq i32 %22, 0, !mcsema_real_eip !5
  store i1 %25, i1* %ZF, !mcsema_real_eip !5
  %26 = trunc i32 %22 to i8, !mcsema_real_eip !5
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !5
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !5
  %29 = xor i1 %28, true, !mcsema_real_eip !5
  store i1 %29, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  %30 = zext i32 %22 to i64, !mcsema_real_eip !5
  store i64 %30, i64* %XSI, !mcsema_real_eip !5
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !6
  %31 = add i64 %RBP_val.8, -16, !mcsema_real_eip !6
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !6
  %RDI_val.9 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.9, i64* %32, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %33 = add i64 %RBP_val.10, -16, !mcsema_real_eip !7
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !7
  %35 = load i64, i64* %34, !mcsema_real_eip !7
  store i64 %35, i64* %XDI, !mcsema_real_eip !7
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.11, !mcsema_real_eip !8
  %RDI_val.12 = load i64, i64* %XDI, !mcsema_real_eip !9
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !9
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !9
  %36 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !9
  store i64 -2415393069852865332, i64* %37, !mcsema_real_eip !9
  store i64 %36, i64* %XSP, !mcsema_real_eip !9
  %38 = call x86_64_sysvcc i64 @_open(i64 %RDI_val.12, i64 %RSI_val.13), !mcsema_real_eip !9
  store i64 %38, i64* %XAX, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !10
  %39 = add i64 %RBP_val.15, -20, !mcsema_real_eip !10
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !10
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !10
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !10
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.17, i32* %42, !mcsema_real_eip !10
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !11
  %43 = add i64 %RBP_val.18, -20, !mcsema_real_eip !11
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !11
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !11
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !11
  %47 = load i32, i32* %46, !mcsema_real_eip !11
  %48 = sub i32 %47, -1, !mcsema_real_eip !11
  %49 = xor i32 %48, %47, !mcsema_real_eip !11
  %50 = xor i32 %49, -1, !mcsema_real_eip !11
  %51 = and i32 %50, 16, !mcsema_real_eip !11
  %52 = icmp ne i32 %51, 0, !mcsema_real_eip !11
  store i1 %52, i1* %AF, !mcsema_real_eip !11
  %53 = trunc i32 %48 to i8, !mcsema_real_eip !11
  %54 = call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !11
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !11
  %56 = xor i1 %55, true, !mcsema_real_eip !11
  store i1 %56, i1* %PF, !mcsema_real_eip !11
  %57 = icmp eq i32 %48, 0, !mcsema_real_eip !11
  store i1 %57, i1* %ZF, !mcsema_real_eip !11
  %58 = lshr i32 %48, 31, !mcsema_real_eip !11
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !11
  store i1 %59, i1* %SF, !mcsema_real_eip !11
  %60 = icmp ult i32 %47, -1, !mcsema_real_eip !11
  store i1 %60, i1* %CF, !mcsema_real_eip !11
  %61 = xor i32 %47, -1, !mcsema_real_eip !11
  %62 = xor i32 %47, %48, !mcsema_real_eip !11
  %63 = and i32 %61, %62, !mcsema_real_eip !11
  %64 = lshr i32 %63, 31, !mcsema_real_eip !11
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !11
  store i1 %65, i1* %OF, !mcsema_real_eip !11
  %66 = load i1, i1* %ZF, !mcsema_real_eip !12
  %67 = icmp eq i1 %66, true, !mcsema_real_eip !12
  br i1 %67, label %block_0x3d, label %block_0x26, !mcsema_real_eip !12

block_0x26:                                       ; preds = %block_0x0
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !13
  %68 = add i64 %RBP_val.19, -20, !mcsema_real_eip !13
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !13
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !13
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !13
  %72 = load i32, i32* %71, !mcsema_real_eip !13
  %73 = zext i32 %72 to i64, !mcsema_real_eip !13
  store i64 %73, i64* %XDI, !mcsema_real_eip !13
  %RDI_val.20 = load i64, i64* %XDI, !mcsema_real_eip !14
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %74 = sub i64 %RSP_val.21, 8, !mcsema_real_eip !14
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %75, !mcsema_real_eip !14
  store i64 %74, i64* %XSP, !mcsema_real_eip !14
  %76 = call x86_64_sysvcc i64 @_close(i64 %RDI_val.20), !mcsema_real_eip !14
  store i64 %76, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !15
  %77 = add i64 %RBP_val.22, -4, !mcsema_real_eip !15
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !15
  %79 = ptrtoint i64* %78 to i64, !mcsema_real_eip !15
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !15
  store i32 0, i32* %80, !mcsema_real_eip !15
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !16
  %81 = add i64 %RBP_val.23, -24, !mcsema_real_eip !16
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !16
  %EAX.24 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.25 = load i32, i32* %EAX.24, !mcsema_real_eip !16
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !16
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.25, i32* %84, !mcsema_real_eip !16
  br label %block_0x44, !mcsema_real_eip !17

block_0x3d:                                       ; preds = %block_0x0
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !18
  %85 = add i64 %RBP_val.26, -4, !mcsema_real_eip !18
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !18
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !18
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !18
  store i32 -1, i32* %88, !mcsema_real_eip !18
  br label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x3d, %block_0x26
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !19
  %89 = add i64 %RBP_val.27, -4, !mcsema_real_eip !19
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !19
  %91 = ptrtoint i64* %90 to i64, !mcsema_real_eip !19
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !19
  %93 = load i32, i32* %92, !mcsema_real_eip !19
  %94 = zext i32 %93 to i64, !mcsema_real_eip !19
  store i64 %94, i64* %XAX, !mcsema_real_eip !19
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !20
  %95 = add i64 32, %RSP_val.28, !mcsema_real_eip !20
  %96 = xor i64 %95, %RSP_val.28, !mcsema_real_eip !20
  %97 = xor i64 %96, 32, !mcsema_real_eip !20
  %98 = and i64 %97, 16, !mcsema_real_eip !20
  %99 = icmp ne i64 %98, 0, !mcsema_real_eip !20
  store i1 %99, i1* %AF, !mcsema_real_eip !20
  %100 = lshr i64 %95, 63, !mcsema_real_eip !20
  %101 = trunc i64 %100 to i1, !mcsema_real_eip !20
  store i1 %101, i1* %SF, !mcsema_real_eip !20
  %102 = icmp eq i64 %95, 0, !mcsema_real_eip !20
  store i1 %102, i1* %ZF, !mcsema_real_eip !20
  %103 = xor i64 %RSP_val.28, 32, !mcsema_real_eip !20
  %104 = xor i64 %103, -1, !mcsema_real_eip !20
  %105 = xor i64 %RSP_val.28, %95, !mcsema_real_eip !20
  %106 = and i64 %104, %105, !mcsema_real_eip !20
  %107 = lshr i64 %106, 63, !mcsema_real_eip !20
  %108 = and i64 %107, 1, !mcsema_real_eip !20
  %109 = trunc i64 %108 to i1, !mcsema_real_eip !20
  store i1 %109, i1* %OF, !mcsema_real_eip !20
  %110 = trunc i64 %95 to i8, !mcsema_real_eip !20
  %111 = call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !20
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !20
  %113 = xor i1 %112, true, !mcsema_real_eip !20
  store i1 %113, i1* %PF, !mcsema_real_eip !20
  %114 = icmp ult i64 %95, %RSP_val.28, !mcsema_real_eip !20
  store i1 %114, i1* %CF, !mcsema_real_eip !20
  store i64 %95, i64* %XSP, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !21
  %115 = inttoptr i64 %RSP_val.29 to i64*, !mcsema_real_eip !21
  %116 = load i64, i64* %115, !mcsema_real_eip !21
  store i64 %116, i64* %XBP, !mcsema_real_eip !21
  %117 = add i64 %RSP_val.29, 8, !mcsema_real_eip !21
  store i64 %117, i64* %XSP, !mcsema_real_eip !21
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !22
  %118 = add i64 %RSP_val.30, 8, !mcsema_real_eip !22
  %119 = inttoptr i64 %RSP_val.30 to i64*, !mcsema_real_eip !22
  %120 = load i64, i64* %119, !mcsema_real_eip !22
  store i64 %120, i64* %XIP, !mcsema_real_eip !22
  store i64 %118, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

declare x86_64_sysvcc i64 @close(i64 inreg)

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_open(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_close(i64) #2

; Function Attrs: naked noinline
declare void @foo() #2

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
!6 = !{i64 10}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 20}
!10 = !{i64 25}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 38}
!14 = !{i64 41}
!15 = !{i64 46}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 68}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 76}
