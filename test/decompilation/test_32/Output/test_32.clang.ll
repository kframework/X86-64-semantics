; ModuleID = 'Output/test_32.clang.bc'
source_filename = "Output/test_32.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"Z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %22 = add i64 %RBP_val.4, -16, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %23, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %24 = add i64 %RBP_val.6, -16, !mcsema_real_eip !6
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !6
  %26 = load i64, i64* %25, !mcsema_real_eip !6
  %27 = sub i64 %26, 2, !mcsema_real_eip !6
  %28 = xor i64 %27, %26, !mcsema_real_eip !6
  %29 = xor i64 %28, 2, !mcsema_real_eip !6
  %30 = and i64 %29, 16, !mcsema_real_eip !6
  %31 = icmp ne i64 %30, 0, !mcsema_real_eip !6
  store i1 %31, i1* %AF, !mcsema_real_eip !6
  %32 = trunc i64 %27 to i8, !mcsema_real_eip !6
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !6
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !6
  %35 = xor i1 %34, true, !mcsema_real_eip !6
  store i1 %35, i1* %PF, !mcsema_real_eip !6
  %36 = icmp eq i64 %27, 0, !mcsema_real_eip !6
  store i1 %36, i1* %ZF, !mcsema_real_eip !6
  %37 = lshr i64 %27, 63, !mcsema_real_eip !6
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !6
  store i1 %38, i1* %SF, !mcsema_real_eip !6
  %39 = icmp ult i64 %26, 2, !mcsema_real_eip !6
  store i1 %39, i1* %CF, !mcsema_real_eip !6
  %40 = xor i64 %26, 2, !mcsema_real_eip !6
  %41 = xor i64 %26, %27, !mcsema_real_eip !6
  %42 = and i64 %40, %41, !mcsema_real_eip !6
  %43 = lshr i64 %42, 63, !mcsema_real_eip !6
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !6
  store i1 %44, i1* %OF, !mcsema_real_eip !6
  %45 = load i1, i1* %CF, !mcsema_real_eip !7
  %46 = icmp eq i1 %45, false, !mcsema_real_eip !7
  br i1 %46, label %block_0x24, label %block_0x17, !mcsema_real_eip !7

block_0x17:                                       ; preds = %block_0x0
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %47 = add i64 %RBP_val.7, -8, !mcsema_real_eip !8
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !8
  store i64 1, i64* %48, !mcsema_real_eip !8
  br label %block_0x50, !mcsema_real_eip !9

block_0x24:                                       ; preds = %block_0x0
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !10
  %49 = add i64 %RBP_val.8, -16, !mcsema_real_eip !10
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !10
  %51 = load i64, i64* %50, !mcsema_real_eip !10
  store i64 %51, i64* %XAX, !mcsema_real_eip !10
  %RAX_val.9 = load i64, i64* %XAX, !mcsema_real_eip !11
  %52 = sext i8 2 to i64, !mcsema_real_eip !11
  %53 = sub i64 %RAX_val.9, %52, !mcsema_real_eip !11
  %54 = xor i64 %53, %RAX_val.9, !mcsema_real_eip !11
  %55 = xor i64 %54, %52, !mcsema_real_eip !11
  %56 = and i64 %55, 16, !mcsema_real_eip !11
  %57 = icmp ne i64 %56, 0, !mcsema_real_eip !11
  store i1 %57, i1* %AF, !mcsema_real_eip !11
  %58 = trunc i64 %53 to i8, !mcsema_real_eip !11
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !11
  %60 = trunc i8 %59 to i1, !mcsema_real_eip !11
  %61 = xor i1 %60, true, !mcsema_real_eip !11
  store i1 %61, i1* %PF, !mcsema_real_eip !11
  %62 = icmp eq i64 %53, 0, !mcsema_real_eip !11
  store i1 %62, i1* %ZF, !mcsema_real_eip !11
  %63 = lshr i64 %53, 63, !mcsema_real_eip !11
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !11
  store i1 %64, i1* %SF, !mcsema_real_eip !11
  %65 = icmp ult i64 %RAX_val.9, %52, !mcsema_real_eip !11
  store i1 %65, i1* %CF, !mcsema_real_eip !11
  %66 = xor i64 %RAX_val.9, %52, !mcsema_real_eip !11
  %67 = xor i64 %RAX_val.9, %53, !mcsema_real_eip !11
  %68 = and i64 %66, %67, !mcsema_real_eip !11
  %69 = lshr i64 %68, 63, !mcsema_real_eip !11
  %70 = trunc i64 %69 to i1, !mcsema_real_eip !11
  store i1 %70, i1* %OF, !mcsema_real_eip !11
  store i64 %53, i64* %XAX, !mcsema_real_eip !11
  %RAX_val.10 = load i64, i64* %XAX, !mcsema_real_eip !12
  store i64 %RAX_val.10, i64* %XDI, !mcsema_real_eip !12
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !13
  %71 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !13
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !13
  store i64 -4981261766360305936, i64* %72, !mcsema_real_eip !13
  store i64 %71, i64* %XSP, !mcsema_real_eip !13
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !13
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !14
  %73 = add i64 %RBP_val.12, -16, !mcsema_real_eip !14
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !14
  %75 = load i64, i64* %74, !mcsema_real_eip !14
  store i64 %75, i64* %XDI, !mcsema_real_eip !14
  %RDI_val.13 = load i64, i64* %XDI, !mcsema_real_eip !15
  %76 = sext i8 1 to i64, !mcsema_real_eip !15
  %77 = sub i64 %RDI_val.13, %76, !mcsema_real_eip !15
  %78 = xor i64 %77, %RDI_val.13, !mcsema_real_eip !15
  %79 = xor i64 %78, %76, !mcsema_real_eip !15
  %80 = and i64 %79, 16, !mcsema_real_eip !15
  %81 = icmp ne i64 %80, 0, !mcsema_real_eip !15
  store i1 %81, i1* %AF, !mcsema_real_eip !15
  %82 = trunc i64 %77 to i8, !mcsema_real_eip !15
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !15
  %84 = trunc i8 %83 to i1, !mcsema_real_eip !15
  %85 = xor i1 %84, true, !mcsema_real_eip !15
  store i1 %85, i1* %PF, !mcsema_real_eip !15
  %86 = icmp eq i64 %77, 0, !mcsema_real_eip !15
  store i1 %86, i1* %ZF, !mcsema_real_eip !15
  %87 = lshr i64 %77, 63, !mcsema_real_eip !15
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !15
  store i1 %88, i1* %SF, !mcsema_real_eip !15
  %89 = icmp ult i64 %RDI_val.13, %76, !mcsema_real_eip !15
  store i1 %89, i1* %CF, !mcsema_real_eip !15
  %90 = xor i64 %RDI_val.13, %76, !mcsema_real_eip !15
  %91 = xor i64 %RDI_val.13, %77, !mcsema_real_eip !15
  %92 = and i64 %90, %91, !mcsema_real_eip !15
  %93 = lshr i64 %92, 63, !mcsema_real_eip !15
  %94 = trunc i64 %93 to i1, !mcsema_real_eip !15
  store i1 %94, i1* %OF, !mcsema_real_eip !15
  store i64 %77, i64* %XDI, !mcsema_real_eip !15
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !16
  %95 = add i64 %RBP_val.14, -24, !mcsema_real_eip !16
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !16
  %RAX_val.15 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.15, i64* %96, !mcsema_real_eip !16
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !17
  %97 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !17
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %98, !mcsema_real_eip !17
  store i64 %97, i64* %XSP, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !17
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !18
  %99 = add i64 %RBP_val.17, -24, !mcsema_real_eip !18
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !18
  %101 = load i64, i64* %100, !mcsema_real_eip !18
  store i64 %101, i64* %XDI, !mcsema_real_eip !18
  %RDI_val.18 = load i64, i64* %XDI, !mcsema_real_eip !19
  %RAX_val.19 = load i64, i64* %XAX, !mcsema_real_eip !19
  %102 = add i64 %RAX_val.19, %RDI_val.18, !mcsema_real_eip !19
  %103 = xor i64 %102, %RDI_val.18, !mcsema_real_eip !19
  %104 = xor i64 %103, %RAX_val.19, !mcsema_real_eip !19
  %105 = and i64 %104, 16, !mcsema_real_eip !19
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !19
  store i1 %106, i1* %AF, !mcsema_real_eip !19
  %107 = lshr i64 %102, 63, !mcsema_real_eip !19
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !19
  store i1 %108, i1* %SF, !mcsema_real_eip !19
  %109 = icmp eq i64 %102, 0, !mcsema_real_eip !19
  store i1 %109, i1* %ZF, !mcsema_real_eip !19
  %110 = xor i64 %RDI_val.18, %RAX_val.19, !mcsema_real_eip !19
  %111 = xor i64 %110, -1, !mcsema_real_eip !19
  %112 = xor i64 %RDI_val.18, %102, !mcsema_real_eip !19
  %113 = and i64 %111, %112, !mcsema_real_eip !19
  %114 = lshr i64 %113, 63, !mcsema_real_eip !19
  %115 = and i64 %114, 1, !mcsema_real_eip !19
  %116 = trunc i64 %115 to i1, !mcsema_real_eip !19
  store i1 %116, i1* %OF, !mcsema_real_eip !19
  %117 = trunc i64 %102 to i8, !mcsema_real_eip !19
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !19
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !19
  %120 = xor i1 %119, true, !mcsema_real_eip !19
  store i1 %120, i1* %PF, !mcsema_real_eip !19
  %121 = icmp ult i64 %102, %RDI_val.18, !mcsema_real_eip !19
  store i1 %121, i1* %CF, !mcsema_real_eip !19
  store i64 %102, i64* %XDI, !mcsema_real_eip !19
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !20
  %122 = add i64 %RBP_val.20, -8, !mcsema_real_eip !20
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !20
  %RDI_val.21 = load i64, i64* %XDI, !mcsema_real_eip !20
  store i64 %RDI_val.21, i64* %123, !mcsema_real_eip !20
  br label %block_0x50, !mcsema_real_eip !21

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !21
  %124 = add i64 %RBP_val.22, -8, !mcsema_real_eip !21
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !21
  %126 = load i64, i64* %125, !mcsema_real_eip !21
  store i64 %126, i64* %XAX, !mcsema_real_eip !21
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !22
  %127 = add i64 32, %RSP_val.23, !mcsema_real_eip !22
  %128 = xor i64 %127, %RSP_val.23, !mcsema_real_eip !22
  %129 = xor i64 %128, 32, !mcsema_real_eip !22
  %130 = and i64 %129, 16, !mcsema_real_eip !22
  %131 = icmp ne i64 %130, 0, !mcsema_real_eip !22
  store i1 %131, i1* %AF, !mcsema_real_eip !22
  %132 = lshr i64 %127, 63, !mcsema_real_eip !22
  %133 = trunc i64 %132 to i1, !mcsema_real_eip !22
  store i1 %133, i1* %SF, !mcsema_real_eip !22
  %134 = icmp eq i64 %127, 0, !mcsema_real_eip !22
  store i1 %134, i1* %ZF, !mcsema_real_eip !22
  %135 = xor i64 %RSP_val.23, 32, !mcsema_real_eip !22
  %136 = xor i64 %135, -1, !mcsema_real_eip !22
  %137 = xor i64 %RSP_val.23, %127, !mcsema_real_eip !22
  %138 = and i64 %136, %137, !mcsema_real_eip !22
  %139 = lshr i64 %138, 63, !mcsema_real_eip !22
  %140 = and i64 %139, 1, !mcsema_real_eip !22
  %141 = trunc i64 %140 to i1, !mcsema_real_eip !22
  store i1 %141, i1* %OF, !mcsema_real_eip !22
  %142 = trunc i64 %127 to i8, !mcsema_real_eip !22
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !22
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !22
  %145 = xor i1 %144, true, !mcsema_real_eip !22
  store i1 %145, i1* %PF, !mcsema_real_eip !22
  %146 = icmp ult i64 %127, %RSP_val.23, !mcsema_real_eip !22
  store i1 %146, i1* %CF, !mcsema_real_eip !22
  store i64 %127, i64* %XSP, !mcsema_real_eip !22
  %RSP_val.24 = load i64, i64* %XSP, !mcsema_real_eip !23
  %147 = inttoptr i64 %RSP_val.24 to i64*, !mcsema_real_eip !23
  %148 = load i64, i64* %147, !mcsema_real_eip !23
  store i64 %148, i64* %XBP, !mcsema_real_eip !23
  %149 = add i64 %RSP_val.24, 8, !mcsema_real_eip !23
  store i64 %149, i64* %XSP, !mcsema_real_eip !23
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !24
  %150 = add i64 %RSP_val.25, 8, !mcsema_real_eip !24
  %151 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !24
  %152 = load i64, i64* %151, !mcsema_real_eip !24
  store i64 %152, i64* %XIP, !mcsema_real_eip !24
  store i64 %150, i64* %XSP, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !25
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !25
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !25
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !25
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !25
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !25
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !25
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !25
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !25
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !25
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !25
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !25
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !25
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !25
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !25
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !25
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !25
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !25
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !25
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !25
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !25
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !25
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !25
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !25
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !25
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !25
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !25
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !25
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !25
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !25
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !25
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !25
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !25
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !25
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !25
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !25
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !25
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !25
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !25
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !25
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !25
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !25
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !25
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !25
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !25
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !25
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !25
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !25
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !25
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !25
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !25
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !25
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !25
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !25
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !25
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !25
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !25
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !25
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !25
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !25
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !25
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !25
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !25
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !25
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !25
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !25
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !25
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !25
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !25
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !25
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !25
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !25
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !25
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !25
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !25
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !25
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !25
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !25
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !25
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !25
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !25
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !25
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !25
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !25
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !25
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !25
  br label %block_0x60, !mcsema_real_eip !25

block_0x60:                                       ; preds = %entry
  %RBP_val.26 = load i64, i64* %XBP, !mcsema_real_eip !25
  %RSP_val.27 = load i64, i64* %XSP, !mcsema_real_eip !25
  %1 = sub i64 %RSP_val.27, 8, !mcsema_real_eip !25
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !25
  store i64 %RBP_val.26, i64* %2, !mcsema_real_eip !25
  store i64 %1, i64* %XSP, !mcsema_real_eip !25
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !26
  store i64 %RSP_val.28, i64* %XBP, !mcsema_real_eip !26
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !27
  %3 = sext i8 32 to i64, !mcsema_real_eip !27
  %4 = sub i64 %RSP_val.29, %3, !mcsema_real_eip !27
  %5 = xor i64 %4, %RSP_val.29, !mcsema_real_eip !27
  %6 = xor i64 %5, %3, !mcsema_real_eip !27
  %7 = and i64 %6, 16, !mcsema_real_eip !27
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !27
  store i1 %8, i1* %AF, !mcsema_real_eip !27
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !27
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !27
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !27
  %12 = xor i1 %11, true, !mcsema_real_eip !27
  store i1 %12, i1* %PF, !mcsema_real_eip !27
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !27
  store i1 %13, i1* %ZF, !mcsema_real_eip !27
  %14 = lshr i64 %4, 63, !mcsema_real_eip !27
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !27
  store i1 %15, i1* %SF, !mcsema_real_eip !27
  %16 = icmp ult i64 %RSP_val.29, %3, !mcsema_real_eip !27
  store i1 %16, i1* %CF, !mcsema_real_eip !27
  %17 = xor i64 %RSP_val.29, %3, !mcsema_real_eip !27
  %18 = xor i64 %RSP_val.29, %4, !mcsema_real_eip !27
  %19 = and i64 %17, %18, !mcsema_real_eip !27
  %20 = lshr i64 %19, 63, !mcsema_real_eip !27
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !27
  store i1 %21, i1* %OF, !mcsema_real_eip !27
  store i64 %4, i64* %XSP, !mcsema_real_eip !27
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !28
  %22 = add i64 %RBP_val.30, -4, !mcsema_real_eip !28
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !28
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !28
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !28
  store i32 0, i32* %25, !mcsema_real_eip !28
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !29
  %26 = add i64 %RBP_val.31, -8, !mcsema_real_eip !29
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !29
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !29
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !29
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !29
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !29
  store i32 %EDI_val.33, i32* %29, !mcsema_real_eip !29
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !30
  %30 = add i64 %RBP_val.34, -16, !mcsema_real_eip !30
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !30
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !30
  store i64 %RSI_val.35, i64* %31, !mcsema_real_eip !30
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !31
  %32 = add i64 %RBP_val.36, -8, !mcsema_real_eip !31
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !31
  %34 = ptrtoint i64* %33 to i64, !mcsema_real_eip !31
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !31
  %36 = load i32, i32* %35, !mcsema_real_eip !31
  %37 = sub i32 %36, 2, !mcsema_real_eip !31
  %38 = xor i32 %37, %36, !mcsema_real_eip !31
  %39 = xor i32 %38, 2, !mcsema_real_eip !31
  %40 = and i32 %39, 16, !mcsema_real_eip !31
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !31
  store i1 %41, i1* %AF, !mcsema_real_eip !31
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !31
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !31
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !31
  %45 = xor i1 %44, true, !mcsema_real_eip !31
  store i1 %45, i1* %PF, !mcsema_real_eip !31
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !31
  store i1 %46, i1* %ZF, !mcsema_real_eip !31
  %47 = lshr i32 %37, 31, !mcsema_real_eip !31
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !31
  store i1 %48, i1* %SF, !mcsema_real_eip !31
  %49 = icmp ult i32 %36, 2, !mcsema_real_eip !31
  store i1 %49, i1* %CF, !mcsema_real_eip !31
  %50 = xor i32 %36, 2, !mcsema_real_eip !31
  %51 = xor i32 %36, %37, !mcsema_real_eip !31
  %52 = and i32 %50, %51, !mcsema_real_eip !31
  %53 = lshr i32 %52, 31, !mcsema_real_eip !31
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !31
  store i1 %54, i1* %OF, !mcsema_real_eip !31
  %55 = load i1, i1* %ZF, !mcsema_real_eip !32
  %56 = icmp eq i1 %55, false, !mcsema_real_eip !32
  br i1 %56, label %block_0x95, label %block_0x80, !mcsema_real_eip !32

block_0x80:                                       ; preds = %block_0x60
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !33
  %57 = add i64 %RBP_val.37, -16, !mcsema_real_eip !33
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !33
  %59 = load i64, i64* %58, !mcsema_real_eip !33
  store i64 %59, i64* %XAX, !mcsema_real_eip !33
  %RAX_val.38 = load i64, i64* %XAX, !mcsema_real_eip !34
  %60 = add i64 %RAX_val.38, 8, !mcsema_real_eip !34
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !34
  %62 = load i64, i64* %61, !mcsema_real_eip !34
  store i64 %62, i64* %XDI, !mcsema_real_eip !34
  %RDI_val.39 = load i64, i64* %XDI, !mcsema_real_eip !35
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !35
  %63 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !35
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !35
  store i64 -2415393069852865332, i64* %64, !mcsema_real_eip !35
  store i64 %63, i64* %XSP, !mcsema_real_eip !35
  %65 = call x86_64_sysvcc i64 @_atoi(i64 %RDI_val.39), !mcsema_real_eip !35
  store i64 %65, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !36
  %66 = add i64 %RBP_val.41, -24, !mcsema_real_eip !36
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !36
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !36
  %68 = ptrtoint i64* %67 to i64, !mcsema_real_eip !36
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.43, i32* %69, !mcsema_real_eip !36
  br label %block_0xa2, !mcsema_real_eip !37

block_0x95:                                       ; preds = %block_0x60
  %70 = zext i32 20 to i64, !mcsema_real_eip !38
  store i64 %70, i64* %XAX, !mcsema_real_eip !38
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !39
  %71 = add i64 %RBP_val.44, -24, !mcsema_real_eip !39
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !39
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !39
  %73 = ptrtoint i64* %72 to i64, !mcsema_real_eip !39
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.46, i32* %74, !mcsema_real_eip !39
  br label %block_0xa2, !mcsema_real_eip !40

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !41
  %75 = add i64 %RBP_val.47, -24, !mcsema_real_eip !41
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !41
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !41
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !41
  %79 = load i32, i32* %78, !mcsema_real_eip !41
  %80 = zext i32 %79 to i64, !mcsema_real_eip !41
  store i64 %80, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.48 = load i64, i64* %XBP, !mcsema_real_eip !42
  %81 = add i64 %RBP_val.48, -20, !mcsema_real_eip !42
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !42
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !42
  %83 = ptrtoint i64* %82 to i64, !mcsema_real_eip !42
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !42
  store i32 %EAX_val.50, i32* %84, !mcsema_real_eip !42
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !43
  %85 = add i64 %RBP_val.51, -20, !mcsema_real_eip !43
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !43
  %87 = ptrtoint i64* %86 to i64, !mcsema_real_eip !43
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !43
  %89 = load i32, i32* %88, !mcsema_real_eip !43
  %90 = sext i32 %89 to i64, !mcsema_real_eip !43
  store i64 %90, i64* %XDI, !mcsema_real_eip !43
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !44
  %91 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !44
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !44
  store i64 -4981261766360305936, i64* %92, !mcsema_real_eip !44
  store i64 %91, i64* %XSP, !mcsema_real_eip !44
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !44
  %93 = getelementptr %0, %0* @data_0xd2, i64 0, i32 0, !mcsema_real_eip !45
  %94 = ptrtoint [5 x i8]* %93 to i64, !mcsema_real_eip !45
  %95 = add i64 %94, 0, !mcsema_real_eip !45
  store i64 %95, i64* %XDI, !mcsema_real_eip !45
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.53, i64* %XSI, !mcsema_real_eip !46
  %AL.54 = bitcast i64* %XAX to i8*, !mcsema_real_eip !47
  store i8 0, i8* %AL.54, !mcsema_real_eip !47
  %RDI_val.55 = load i64, i64* %XDI, !mcsema_real_eip !48
  %RSI_val.56 = load i64, i64* %XSI, !mcsema_real_eip !48
  %RDX_val.57 = load i64, i64* %XDX, !mcsema_real_eip !48
  %RCX_val.58 = load i64, i64* %XCX, !mcsema_real_eip !48
  %R8_val.59 = load i64, i64* %R8, !mcsema_real_eip !48
  %R9_val.60 = load i64, i64* %R9, !mcsema_real_eip !48
  %RSP_val.61 = load i64, i64* %XSP, !mcsema_real_eip !48
  %96 = inttoptr i64 %RSP_val.61 to i64*, !mcsema_real_eip !48
  %97 = load i64, i64* %96, !mcsema_real_eip !48
  %98 = add i64 %RSP_val.61, 8, !mcsema_real_eip !48
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !48
  %100 = load i64, i64* %99, !mcsema_real_eip !48
  %101 = add i64 %98, 8, !mcsema_real_eip !48
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !48
  %103 = load i64, i64* %102, !mcsema_real_eip !48
  %104 = add i64 %101, 8, !mcsema_real_eip !48
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !48
  %106 = load i64, i64* %105, !mcsema_real_eip !48
  %107 = add i64 %104, 8, !mcsema_real_eip !48
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !48
  %109 = load i64, i64* %108, !mcsema_real_eip !48
  %110 = add i64 %107, 8, !mcsema_real_eip !48
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !48
  %112 = load i64, i64* %111, !mcsema_real_eip !48
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !48
  %113 = sub i64 %RSP_val.62, 8, !mcsema_real_eip !48
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !48
  store i64 -2415393069852865332, i64* %114, !mcsema_real_eip !48
  store i64 %113, i64* %XSP, !mcsema_real_eip !48
  %115 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.55, i64 %RSI_val.56, i64 %RDX_val.57, i64 %RCX_val.58, i64 %R8_val.59, i64 %R9_val.60, i64 %97, i64 %100, i64 %103, i64 %106, i64 %109, i64 %112), !mcsema_real_eip !48
  store i64 %115, i64* %XAX, !mcsema_real_eip !48
  %ECX.63 = bitcast i64* %XCX to i32*, !mcsema_real_eip !49
  %ECX_val.64 = load i32, i32* %ECX.63, !mcsema_real_eip !49
  %ECX.65 = bitcast i64* %XCX to i32*, !mcsema_real_eip !49
  %ECX_val.66 = load i32, i32* %ECX.65, !mcsema_real_eip !49
  %116 = xor i32 %ECX_val.64, %ECX_val.66, !mcsema_real_eip !49
  store i1 false, i1* %CF, !mcsema_real_eip !49
  store i1 false, i1* %OF, !mcsema_real_eip !49
  %117 = lshr i32 %116, 31, !mcsema_real_eip !49
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !49
  store i1 %118, i1* %SF, !mcsema_real_eip !49
  %119 = icmp eq i32 %116, 0, !mcsema_real_eip !49
  store i1 %119, i1* %ZF, !mcsema_real_eip !49
  %120 = trunc i32 %116 to i8, !mcsema_real_eip !49
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !49
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !49
  %123 = xor i1 %122, true, !mcsema_real_eip !49
  store i1 %123, i1* %PF, !mcsema_real_eip !49
  store i1 undef, i1* %AF, !mcsema_real_eip !49
  %124 = zext i32 %116 to i64, !mcsema_real_eip !49
  store i64 %124, i64* %XCX, !mcsema_real_eip !49
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !50
  %125 = add i64 %RBP_val.67, -28, !mcsema_real_eip !50
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !50
  %EAX.68 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.69 = load i32, i32* %EAX.68, !mcsema_real_eip !50
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !50
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !50
  store i32 %EAX_val.69, i32* %128, !mcsema_real_eip !50
  %ECX.70 = bitcast i64* %XCX to i32*, !mcsema_real_eip !51
  %ECX_val.71 = load i32, i32* %ECX.70, !mcsema_real_eip !51
  %129 = zext i32 %ECX_val.71 to i64, !mcsema_real_eip !51
  store i64 %129, i64* %XAX, !mcsema_real_eip !51
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %130 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %131 = xor i64 %130, %RSP_val.72, !mcsema_real_eip !52
  %132 = xor i64 %131, 32, !mcsema_real_eip !52
  %133 = and i64 %132, 16, !mcsema_real_eip !52
  %134 = icmp ne i64 %133, 0, !mcsema_real_eip !52
  store i1 %134, i1* %AF, !mcsema_real_eip !52
  %135 = lshr i64 %130, 63, !mcsema_real_eip !52
  %136 = trunc i64 %135 to i1, !mcsema_real_eip !52
  store i1 %136, i1* %SF, !mcsema_real_eip !52
  %137 = icmp eq i64 %130, 0, !mcsema_real_eip !52
  store i1 %137, i1* %ZF, !mcsema_real_eip !52
  %138 = xor i64 %RSP_val.72, 32, !mcsema_real_eip !52
  %139 = xor i64 %138, -1, !mcsema_real_eip !52
  %140 = xor i64 %RSP_val.72, %130, !mcsema_real_eip !52
  %141 = and i64 %139, %140, !mcsema_real_eip !52
  %142 = lshr i64 %141, 63, !mcsema_real_eip !52
  %143 = and i64 %142, 1, !mcsema_real_eip !52
  %144 = trunc i64 %143 to i1, !mcsema_real_eip !52
  store i1 %144, i1* %OF, !mcsema_real_eip !52
  %145 = trunc i64 %130 to i8, !mcsema_real_eip !52
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !52
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !52
  %148 = xor i1 %147, true, !mcsema_real_eip !52
  store i1 %148, i1* %PF, !mcsema_real_eip !52
  %149 = icmp ult i64 %130, %RSP_val.72, !mcsema_real_eip !52
  store i1 %149, i1* %CF, !mcsema_real_eip !52
  store i64 %130, i64* %XSP, !mcsema_real_eip !52
  %RSP_val.73 = load i64, i64* %XSP, !mcsema_real_eip !53
  %150 = inttoptr i64 %RSP_val.73 to i64*, !mcsema_real_eip !53
  %151 = load i64, i64* %150, !mcsema_real_eip !53
  store i64 %151, i64* %XBP, !mcsema_real_eip !53
  %152 = add i64 %RSP_val.73, 8, !mcsema_real_eip !53
  store i64 %152, i64* %XSP, !mcsema_real_eip !53
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !54
  %153 = add i64 %RSP_val.74, 8, !mcsema_real_eip !54
  %154 = inttoptr i64 %RSP_val.74 to i64*, !mcsema_real_eip !54
  %155 = load i64, i64* %154, !mcsema_real_eip !54
  store i64 %155, i64* %XIP, !mcsema_real_eip !54
  store i64 %153, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

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
!6 = !{i64 12}
!7 = !{i64 17}
!8 = !{i64 23}
!9 = !{i64 31}
!10 = !{i64 36}
!11 = !{i64 40}
!12 = !{i64 44}
!13 = !{i64 47}
!14 = !{i64 52}
!15 = !{i64 56}
!16 = !{i64 60}
!17 = !{i64 64}
!18 = !{i64 69}
!19 = !{i64 73}
!20 = !{i64 76}
!21 = !{i64 80}
!22 = !{i64 84}
!23 = !{i64 88}
!24 = !{i64 89}
!25 = !{i64 96}
!26 = !{i64 97}
!27 = !{i64 100}
!28 = !{i64 104}
!29 = !{i64 111}
!30 = !{i64 114}
!31 = !{i64 118}
!32 = !{i64 122}
!33 = !{i64 128}
!34 = !{i64 132}
!35 = !{i64 136}
!36 = !{i64 141}
!37 = !{i64 144}
!38 = !{i64 149}
!39 = !{i64 154}
!40 = !{i64 157}
!41 = !{i64 162}
!42 = !{i64 165}
!43 = !{i64 168}
!44 = !{i64 172}
!45 = !{i64 177}
!46 = !{i64 187}
!47 = !{i64 190}
!48 = !{i64 192}
!49 = !{i64 197}
!50 = !{i64 199}
!51 = !{i64 202}
!52 = !{i64 204}
!53 = !{i64 208}
!54 = !{i64 209}
