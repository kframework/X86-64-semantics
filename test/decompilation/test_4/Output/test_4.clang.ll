; ModuleID = 'Output/test_4.clang.bc'
source_filename = "Output/test_4.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [88 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0x278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x280 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"x\01\00\00\00A\0E\10\86\02C\0D\06P\83\07\8C\06\8D\05\8E\04\8F\03" }>, align 64

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
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
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
  br label %block_0xa0, !mcsema_real_eip !2

block_0xa0:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %R15_val.3 = load i64, i64* %R15, !mcsema_real_eip !4
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R15_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %R14_val.5 = load i64, i64* %R14, !mcsema_real_eip !5
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !5
  %5 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %R14_val.5, i64* %6, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  %R13_val.7 = load i64, i64* %R13, !mcsema_real_eip !6
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !6
  %7 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  store i64 %R13_val.7, i64* %8, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, !mcsema_real_eip !6
  %R12_val.9 = load i64, i64* %R12, !mcsema_real_eip !7
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !7
  %9 = sub i64 %RSP_val.10, 8, !mcsema_real_eip !7
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !7
  store i64 %R12_val.9, i64* %10, !mcsema_real_eip !7
  store i64 %9, i64* %XSP, !mcsema_real_eip !7
  %RBX_val.11 = load i64, i64* %XBX, !mcsema_real_eip !8
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !8
  %11 = sub i64 %RSP_val.12, 8, !mcsema_real_eip !8
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !8
  store i64 %RBX_val.11, i64* %12, !mcsema_real_eip !8
  store i64 %11, i64* %XSP, !mcsema_real_eip !8
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !9
  %13 = sub i64 %RSP_val.13, 216, !mcsema_real_eip !9
  %14 = xor i64 %13, %RSP_val.13, !mcsema_real_eip !9
  %15 = xor i64 %14, 216, !mcsema_real_eip !9
  %16 = and i64 %15, 16, !mcsema_real_eip !9
  %17 = icmp ne i64 %16, 0, !mcsema_real_eip !9
  store i1 %17, i1* %AF, !mcsema_real_eip !9
  %18 = trunc i64 %13 to i8, !mcsema_real_eip !9
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !9
  %20 = trunc i8 %19 to i1, !mcsema_real_eip !9
  %21 = xor i1 %20, true, !mcsema_real_eip !9
  store i1 %21, i1* %PF, !mcsema_real_eip !9
  %22 = icmp eq i64 %13, 0, !mcsema_real_eip !9
  store i1 %22, i1* %ZF, !mcsema_real_eip !9
  %23 = lshr i64 %13, 63, !mcsema_real_eip !9
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !9
  store i1 %24, i1* %SF, !mcsema_real_eip !9
  %25 = icmp ult i64 %RSP_val.13, 216, !mcsema_real_eip !9
  store i1 %25, i1* %CF, !mcsema_real_eip !9
  %26 = xor i64 %RSP_val.13, 216, !mcsema_real_eip !9
  %27 = xor i64 %RSP_val.13, %13, !mcsema_real_eip !9
  %28 = and i64 %26, %27, !mcsema_real_eip !9
  %29 = lshr i64 %28, 63, !mcsema_real_eip !9
  %30 = trunc i64 %29 to i1, !mcsema_real_eip !9
  store i1 %30, i1* %OF, !mcsema_real_eip !9
  store i64 %13, i64* %XSP, !mcsema_real_eip !9
  %31 = zext i32 100 to i64, !mcsema_real_eip !10
  store i64 %31, i64* %XAX, !mcsema_real_eip !10
  %32 = zext i32 200 to i64, !mcsema_real_eip !11
  store i64 %32, i64* %XCX, !mcsema_real_eip !11
  %33 = zext i32 300 to i64, !mcsema_real_eip !12
  store i64 %33, i64* %XDX, !mcsema_real_eip !12
  %34 = zext i32 400 to i64, !mcsema_real_eip !13
  store i64 %34, i64* %R8, !mcsema_real_eip !13
  %35 = zext i32 500 to i64, !mcsema_real_eip !14
  store i64 %35, i64* %R9, !mcsema_real_eip !14
  %36 = zext i32 600 to i64, !mcsema_real_eip !15
  store i64 %36, i64* %R10, !mcsema_real_eip !15
  %37 = zext i32 10 to i64, !mcsema_real_eip !16
  store i64 %37, i64* %R11, !mcsema_real_eip !16
  %RBP_val.14 = load i64, i64* %XBP, !mcsema_real_eip !17
  %38 = add i64 %RBP_val.14, -144, !mcsema_real_eip !17
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !17
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !17
  store i64 %40, i64* %XBX, !mcsema_real_eip !17
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !18
  %41 = add i64 %RBP_val.15, -96, !mcsema_real_eip !18
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !18
  %43 = ptrtoint i64* %42 to i64, !mcsema_real_eip !18
  store i64 %43, i64* %R14, !mcsema_real_eip !18
  %44 = getelementptr %0, %0* @data_0x220, i64 0, i32 0, !mcsema_real_eip !19
  %45 = ptrtoint [88 x i8]* %44 to i64, !mcsema_real_eip !19
  %46 = add i64 %45, 48, !mcsema_real_eip !19
  store i64 %46, i64* %R15, !mcsema_real_eip !19
  %47 = zext i32 40 to i64, !mcsema_real_eip !20
  store i64 %47, i64* %R12, !mcsema_real_eip !20
  %R12D.16 = bitcast i64* %R12 to i32*, !mcsema_real_eip !21
  %R12D_val.17 = load i32, i32* %R12D.16, !mcsema_real_eip !21
  %48 = zext i32 %R12D_val.17 to i64, !mcsema_real_eip !21
  store i64 %48, i64* %R13, !mcsema_real_eip !21
  %49 = getelementptr %0, %0* @data_0x220, i64 0, i32 0, !mcsema_real_eip !22
  %50 = ptrtoint [88 x i8]* %49 to i64, !mcsema_real_eip !22
  %51 = add i64 %50, 0, !mcsema_real_eip !22
  store i64 %51, i64* %R12, !mcsema_real_eip !22
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !23
  %52 = add i64 %RBP_val.18, -44, !mcsema_real_eip !23
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !23
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !23
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %55, !mcsema_real_eip !23
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !24
  %56 = add i64 %RBP_val.19, -48, !mcsema_real_eip !24
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !24
  %EDI.20 = bitcast i64* %XDI to i32*, !mcsema_real_eip !24
  %EDI_val.21 = load i32, i32* %EDI.20, !mcsema_real_eip !24
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !24
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !24
  store i32 %EDI_val.21, i32* %59, !mcsema_real_eip !24
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !25
  %60 = add i64 %RBP_val.22, -56, !mcsema_real_eip !25
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !25
  %RSI_val.23 = load i64, i64* %XSI, !mcsema_real_eip !25
  store i64 %RSI_val.23, i64* %61, !mcsema_real_eip !25
  %R14_val.24 = load i64, i64* %R14, !mcsema_real_eip !26
  store i64 %R14_val.24, i64* %XSI, !mcsema_real_eip !26
  %RSI_val.25 = load i64, i64* %XSI, !mcsema_real_eip !27
  store i64 %RSI_val.25, i64* %XDI, !mcsema_real_eip !27
  %R12_val.26 = load i64, i64* %R12, !mcsema_real_eip !28
  store i64 %R12_val.26, i64* %XSI, !mcsema_real_eip !28
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !29
  %62 = add i64 %RBP_val.27, -152, !mcsema_real_eip !29
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !29
  %EDX.28 = bitcast i64* %XDX to i32*, !mcsema_real_eip !29
  %EDX_val.29 = load i32, i32* %EDX.28, !mcsema_real_eip !29
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !29
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !29
  store i32 %EDX_val.29, i32* %65, !mcsema_real_eip !29
  %R13_val.30 = load i64, i64* %R13, !mcsema_real_eip !30
  store i64 %R13_val.30, i64* %XDX, !mcsema_real_eip !30
  %RBP_val.31 = load i64, i64* %XBP, !mcsema_real_eip !31
  %66 = add i64 %RBP_val.31, -160, !mcsema_real_eip !31
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !31
  %R15_val.32 = load i64, i64* %R15, !mcsema_real_eip !31
  store i64 %R15_val.32, i64* %67, !mcsema_real_eip !31
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !32
  %68 = add i64 %RBP_val.33, -168, !mcsema_real_eip !32
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !32
  %R13_val.34 = load i64, i64* %R13, !mcsema_real_eip !32
  store i64 %R13_val.34, i64* %69, !mcsema_real_eip !32
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !33
  %70 = add i64 %RBP_val.35, -172, !mcsema_real_eip !33
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !33
  %EAX.36 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.37 = load i32, i32* %EAX.36, !mcsema_real_eip !33
  %72 = ptrtoint i64* %71 to i64, !mcsema_real_eip !33
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.37, i32* %73, !mcsema_real_eip !33
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !34
  %74 = add i64 %RBP_val.38, -176, !mcsema_real_eip !34
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !34
  %ECX.39 = bitcast i64* %XCX to i32*, !mcsema_real_eip !34
  %ECX_val.40 = load i32, i32* %ECX.39, !mcsema_real_eip !34
  %76 = ptrtoint i64* %75 to i64, !mcsema_real_eip !34
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !34
  store i32 %ECX_val.40, i32* %77, !mcsema_real_eip !34
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !35
  %78 = add i64 %RBP_val.41, -184, !mcsema_real_eip !35
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !35
  %R14_val.42 = load i64, i64* %R14, !mcsema_real_eip !35
  store i64 %R14_val.42, i64* %79, !mcsema_real_eip !35
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !36
  %80 = add i64 %RBP_val.43, -188, !mcsema_real_eip !36
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !36
  %R8D.44 = bitcast i64* %R8 to i32*, !mcsema_real_eip !36
  %R8D_val.45 = load i32, i32* %R8D.44, !mcsema_real_eip !36
  %82 = ptrtoint i64* %81 to i64, !mcsema_real_eip !36
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !36
  store i32 %R8D_val.45, i32* %83, !mcsema_real_eip !36
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !37
  %84 = add i64 %RBP_val.46, -192, !mcsema_real_eip !37
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !37
  %R9D.47 = bitcast i64* %R9 to i32*, !mcsema_real_eip !37
  %R9D_val.48 = load i32, i32* %R9D.47, !mcsema_real_eip !37
  %86 = ptrtoint i64* %85 to i64, !mcsema_real_eip !37
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !37
  store i32 %R9D_val.48, i32* %87, !mcsema_real_eip !37
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !38
  %88 = add i64 %RBP_val.49, -196, !mcsema_real_eip !38
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !38
  %R10D.50 = bitcast i64* %R10 to i32*, !mcsema_real_eip !38
  %R10D_val.51 = load i32, i32* %R10D.50, !mcsema_real_eip !38
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !38
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !38
  store i32 %R10D_val.51, i32* %91, !mcsema_real_eip !38
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !39
  %92 = add i64 %RBP_val.52, -200, !mcsema_real_eip !39
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !39
  %R11D.53 = bitcast i64* %R11 to i32*, !mcsema_real_eip !39
  %R11D_val.54 = load i32, i32* %R11D.53, !mcsema_real_eip !39
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !39
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !39
  store i32 %R11D_val.54, i32* %95, !mcsema_real_eip !39
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !40
  %96 = add i64 %RBP_val.55, -208, !mcsema_real_eip !40
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !40
  %RBX_val.56 = load i64, i64* %XBX, !mcsema_real_eip !40
  store i64 %RBX_val.56, i64* %97, !mcsema_real_eip !40
  %RDI_val.57 = load i64, i64* %XDI, !mcsema_real_eip !41
  %RSI_val.58 = load i64, i64* %XSI, !mcsema_real_eip !41
  %RDX_val.59 = load i64, i64* %XDX, !mcsema_real_eip !41
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !41
  %98 = sub i64 %RSP_val.60, 8, !mcsema_real_eip !41
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !41
  store i64 -2415393069852865332, i64* %99, !mcsema_real_eip !41
  store i64 %98, i64* %XSP, !mcsema_real_eip !41
  %100 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.57, i64 %RSI_val.58, i64 %RDX_val.59), !mcsema_real_eip !41
  store i64 %100, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !42
  %101 = add i64 %RBP_val.61, -208, !mcsema_real_eip !42
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !42
  %103 = load i64, i64* %102, !mcsema_real_eip !42
  store i64 %103, i64* %XDX, !mcsema_real_eip !42
  %RDX_val.62 = load i64, i64* %XDX, !mcsema_real_eip !43
  store i64 %RDX_val.62, i64* %XDI, !mcsema_real_eip !43
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !44
  %104 = add i64 %RBP_val.63, -160, !mcsema_real_eip !44
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !44
  %106 = load i64, i64* %105, !mcsema_real_eip !44
  store i64 %106, i64* %XSI, !mcsema_real_eip !44
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !45
  %107 = add i64 %RBP_val.64, -168, !mcsema_real_eip !45
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !45
  %109 = load i64, i64* %108, !mcsema_real_eip !45
  store i64 %109, i64* %XDX, !mcsema_real_eip !45
  %RDI_val.65 = load i64, i64* %XDI, !mcsema_real_eip !46
  %RSI_val.66 = load i64, i64* %XSI, !mcsema_real_eip !46
  %RDX_val.67 = load i64, i64* %XDX, !mcsema_real_eip !46
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !46
  %110 = sub i64 %RSP_val.68, 8, !mcsema_real_eip !46
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !46
  store i64 -2415393069852865332, i64* %111, !mcsema_real_eip !46
  store i64 %110, i64* %XSP, !mcsema_real_eip !46
  %112 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.65, i64 %RSI_val.66, i64 %RDX_val.67), !mcsema_real_eip !46
  store i64 %112, i64* %XAX, !mcsema_real_eip !46
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !47
  %113 = add i64 %RBP_val.69, -172, !mcsema_real_eip !47
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !47
  %115 = ptrtoint i64* %114 to i64, !mcsema_real_eip !47
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !47
  %117 = load i32, i32* %116, !mcsema_real_eip !47
  %118 = zext i32 %117 to i64, !mcsema_real_eip !47
  store i64 %118, i64* %XDI, !mcsema_real_eip !47
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !48
  %119 = add i64 %RBP_val.70, -176, !mcsema_real_eip !48
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !48
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !48
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !48
  %123 = load i32, i32* %122, !mcsema_real_eip !48
  %124 = zext i32 %123 to i64, !mcsema_real_eip !48
  store i64 %124, i64* %XSI, !mcsema_real_eip !48
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !49
  %125 = add i64 %RBP_val.71, -152, !mcsema_real_eip !49
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !49
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !49
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !49
  %129 = load i32, i32* %128, !mcsema_real_eip !49
  %130 = zext i32 %129 to i64, !mcsema_real_eip !49
  store i64 %130, i64* %XDX, !mcsema_real_eip !49
  %RBP_val.72 = load i64, i64* %XBP, !mcsema_real_eip !50
  %131 = add i64 %RBP_val.72, -188, !mcsema_real_eip !50
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !50
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !50
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !50
  %135 = load i32, i32* %134, !mcsema_real_eip !50
  %136 = zext i32 %135 to i64, !mcsema_real_eip !50
  store i64 %136, i64* %XCX, !mcsema_real_eip !50
  %RBP_val.73 = load i64, i64* %XBP, !mcsema_real_eip !51
  %137 = add i64 %RBP_val.73, -192, !mcsema_real_eip !51
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !51
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !51
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !51
  %141 = load i32, i32* %140, !mcsema_real_eip !51
  %142 = zext i32 %141 to i64, !mcsema_real_eip !51
  store i64 %142, i64* %R8, !mcsema_real_eip !51
  %RBP_val.74 = load i64, i64* %XBP, !mcsema_real_eip !52
  %143 = add i64 %RBP_val.74, -196, !mcsema_real_eip !52
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !52
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !52
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !52
  %147 = load i32, i32* %146, !mcsema_real_eip !52
  %148 = zext i32 %147 to i64, !mcsema_real_eip !52
  store i64 %148, i64* %R9, !mcsema_real_eip !52
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !53
  %149 = add i64 %RSP_val.75, 0, !mcsema_real_eip !53
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !53
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !53
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !53
  store i32 10, i32* %152, !mcsema_real_eip !53
  %RBP_val.76 = load i64, i64* %XBP, !mcsema_real_eip !54
  %153 = add i64 %RBP_val.76, -184, !mcsema_real_eip !54
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !54
  %155 = load i64, i64* %154, !mcsema_real_eip !54
  store i64 %155, i64* %XBX, !mcsema_real_eip !54
  %RSP_val.77 = load i64, i64* %XSP, !mcsema_real_eip !55
  %156 = add i64 %RSP_val.77, 8, !mcsema_real_eip !55
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !55
  %RBX_val.78 = load i64, i64* %XBX, !mcsema_real_eip !55
  store i64 %RBX_val.78, i64* %157, !mcsema_real_eip !55
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !56
  %158 = add i64 %RSP_val.79, 16, !mcsema_real_eip !56
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !56
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !56
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !56
  store i32 10, i32* %161, !mcsema_real_eip !56
  %RBP_val.80 = load i64, i64* %XBP, !mcsema_real_eip !57
  %162 = add i64 %RBP_val.80, -208, !mcsema_real_eip !57
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !57
  %164 = load i64, i64* %163, !mcsema_real_eip !57
  store i64 %164, i64* %R14, !mcsema_real_eip !57
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !58
  %165 = add i64 %RSP_val.81, 24, !mcsema_real_eip !58
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !58
  %R14_val.82 = load i64, i64* %R14, !mcsema_real_eip !58
  store i64 %R14_val.82, i64* %166, !mcsema_real_eip !58
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !59
  %167 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !59
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !59
  store i64 -4981261766360305936, i64* %168, !mcsema_real_eip !59
  store i64 %167, i64* %XSP, !mcsema_real_eip !59
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !59
  %169 = getelementptr %1, %1* @data_0x278, i64 0, i32 0, !mcsema_real_eip !60
  %170 = ptrtoint [4 x i8]* %169 to i64, !mcsema_real_eip !60
  %171 = add i64 %170, 0, !mcsema_real_eip !60
  store i64 %171, i64* %XDI, !mcsema_real_eip !60
  %RBP_val.84 = load i64, i64* %XBP, !mcsema_real_eip !61
  %172 = add i64 %RBP_val.84, -148, !mcsema_real_eip !61
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !61
  %EAX.85 = bitcast i64* %XAX to i32*, !mcsema_real_eip !61
  %EAX_val.86 = load i32, i32* %EAX.85, !mcsema_real_eip !61
  %174 = ptrtoint i64* %173 to i64, !mcsema_real_eip !61
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.86, i32* %175, !mcsema_real_eip !61
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !62
  %176 = add i64 %RBP_val.87, -148, !mcsema_real_eip !62
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !62
  %178 = ptrtoint i64* %177 to i64, !mcsema_real_eip !62
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !62
  %180 = load i32, i32* %179, !mcsema_real_eip !62
  %181 = zext i32 %180 to i64, !mcsema_real_eip !62
  store i64 %181, i64* %XSI, !mcsema_real_eip !62
  %AL.88 = bitcast i64* %XAX to i8*, !mcsema_real_eip !63
  store i8 0, i8* %AL.88, !mcsema_real_eip !63
  %RDI_val.89 = load i64, i64* %XDI, !mcsema_real_eip !64
  %RSI_val.90 = load i64, i64* %XSI, !mcsema_real_eip !64
  %RDX_val.91 = load i64, i64* %XDX, !mcsema_real_eip !64
  %RCX_val.92 = load i64, i64* %XCX, !mcsema_real_eip !64
  %R8_val.93 = load i64, i64* %R8, !mcsema_real_eip !64
  %R9_val.94 = load i64, i64* %R9, !mcsema_real_eip !64
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !64
  %182 = inttoptr i64 %RSP_val.95 to i64*, !mcsema_real_eip !64
  %183 = load i64, i64* %182, !mcsema_real_eip !64
  %184 = add i64 %RSP_val.95, 8, !mcsema_real_eip !64
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !64
  %186 = load i64, i64* %185, !mcsema_real_eip !64
  %187 = add i64 %184, 8, !mcsema_real_eip !64
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !64
  %189 = load i64, i64* %188, !mcsema_real_eip !64
  %190 = add i64 %187, 8, !mcsema_real_eip !64
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !64
  %192 = load i64, i64* %191, !mcsema_real_eip !64
  %193 = add i64 %190, 8, !mcsema_real_eip !64
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !64
  %195 = load i64, i64* %194, !mcsema_real_eip !64
  %196 = add i64 %193, 8, !mcsema_real_eip !64
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !64
  %198 = load i64, i64* %197, !mcsema_real_eip !64
  %RSP_val.96 = load i64, i64* %XSP, !mcsema_real_eip !64
  %199 = sub i64 %RSP_val.96, 8, !mcsema_real_eip !64
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !64
  store i64 -2415393069852865332, i64* %200, !mcsema_real_eip !64
  store i64 %199, i64* %XSP, !mcsema_real_eip !64
  %201 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.89, i64 %RSI_val.90, i64 %RDX_val.91, i64 %RCX_val.92, i64 %R8_val.93, i64 %R9_val.94, i64 %183, i64 %186, i64 %189, i64 %192, i64 %195, i64 %198), !mcsema_real_eip !64
  store i64 %201, i64* %XAX, !mcsema_real_eip !64
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !65
  %202 = add i64 %RBP_val.97, -148, !mcsema_real_eip !65
  %203 = inttoptr i64 %202 to i64*, !mcsema_real_eip !65
  %204 = ptrtoint i64* %203 to i64, !mcsema_real_eip !65
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !65
  %206 = load i32, i32* %205, !mcsema_real_eip !65
  %207 = zext i32 %206 to i64, !mcsema_real_eip !65
  store i64 %207, i64* %XCX, !mcsema_real_eip !65
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !66
  %208 = add i64 %RBP_val.98, -212, !mcsema_real_eip !66
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !66
  %EAX.99 = bitcast i64* %XAX to i32*, !mcsema_real_eip !66
  %EAX_val.100 = load i32, i32* %EAX.99, !mcsema_real_eip !66
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !66
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !66
  store i32 %EAX_val.100, i32* %211, !mcsema_real_eip !66
  %ECX.101 = bitcast i64* %XCX to i32*, !mcsema_real_eip !67
  %ECX_val.102 = load i32, i32* %ECX.101, !mcsema_real_eip !67
  %212 = zext i32 %ECX_val.102 to i64, !mcsema_real_eip !67
  store i64 %212, i64* %XAX, !mcsema_real_eip !67
  %RSP_val.103 = load i64, i64* %XSP, !mcsema_real_eip !68
  %213 = add i64 216, %RSP_val.103, !mcsema_real_eip !68
  %214 = xor i64 %213, %RSP_val.103, !mcsema_real_eip !68
  %215 = xor i64 %214, 216, !mcsema_real_eip !68
  %216 = and i64 %215, 16, !mcsema_real_eip !68
  %217 = icmp ne i64 %216, 0, !mcsema_real_eip !68
  store i1 %217, i1* %AF, !mcsema_real_eip !68
  %218 = lshr i64 %213, 63, !mcsema_real_eip !68
  %219 = trunc i64 %218 to i1, !mcsema_real_eip !68
  store i1 %219, i1* %SF, !mcsema_real_eip !68
  %220 = icmp eq i64 %213, 0, !mcsema_real_eip !68
  store i1 %220, i1* %ZF, !mcsema_real_eip !68
  %221 = xor i64 %RSP_val.103, 216, !mcsema_real_eip !68
  %222 = xor i64 %221, -1, !mcsema_real_eip !68
  %223 = xor i64 %RSP_val.103, %213, !mcsema_real_eip !68
  %224 = and i64 %222, %223, !mcsema_real_eip !68
  %225 = lshr i64 %224, 63, !mcsema_real_eip !68
  %226 = and i64 %225, 1, !mcsema_real_eip !68
  %227 = trunc i64 %226 to i1, !mcsema_real_eip !68
  store i1 %227, i1* %OF, !mcsema_real_eip !68
  %228 = trunc i64 %213 to i8, !mcsema_real_eip !68
  %229 = call i8 @llvm.ctpop.i8(i8 %228), !mcsema_real_eip !68
  %230 = trunc i8 %229 to i1, !mcsema_real_eip !68
  %231 = xor i1 %230, true, !mcsema_real_eip !68
  store i1 %231, i1* %PF, !mcsema_real_eip !68
  %232 = icmp ult i64 %213, %RSP_val.103, !mcsema_real_eip !68
  store i1 %232, i1* %CF, !mcsema_real_eip !68
  store i64 %213, i64* %XSP, !mcsema_real_eip !68
  %RSP_val.104 = load i64, i64* %XSP, !mcsema_real_eip !69
  %233 = inttoptr i64 %RSP_val.104 to i64*, !mcsema_real_eip !69
  %234 = load i64, i64* %233, !mcsema_real_eip !69
  store i64 %234, i64* %XBX, !mcsema_real_eip !69
  %235 = add i64 %RSP_val.104, 8, !mcsema_real_eip !69
  store i64 %235, i64* %XSP, !mcsema_real_eip !69
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %236 = inttoptr i64 %RSP_val.105 to i64*, !mcsema_real_eip !70
  %237 = load i64, i64* %236, !mcsema_real_eip !70
  store i64 %237, i64* %R12, !mcsema_real_eip !70
  %238 = add i64 %RSP_val.105, 8, !mcsema_real_eip !70
  store i64 %238, i64* %XSP, !mcsema_real_eip !70
  %RSP_val.106 = load i64, i64* %XSP, !mcsema_real_eip !71
  %239 = inttoptr i64 %RSP_val.106 to i64*, !mcsema_real_eip !71
  %240 = load i64, i64* %239, !mcsema_real_eip !71
  store i64 %240, i64* %R13, !mcsema_real_eip !71
  %241 = add i64 %RSP_val.106, 8, !mcsema_real_eip !71
  store i64 %241, i64* %XSP, !mcsema_real_eip !71
  %RSP_val.107 = load i64, i64* %XSP, !mcsema_real_eip !72
  %242 = inttoptr i64 %RSP_val.107 to i64*, !mcsema_real_eip !72
  %243 = load i64, i64* %242, !mcsema_real_eip !72
  store i64 %243, i64* %R14, !mcsema_real_eip !72
  %244 = add i64 %RSP_val.107, 8, !mcsema_real_eip !72
  store i64 %244, i64* %XSP, !mcsema_real_eip !72
  %RSP_val.108 = load i64, i64* %XSP, !mcsema_real_eip !73
  %245 = inttoptr i64 %RSP_val.108 to i64*, !mcsema_real_eip !73
  %246 = load i64, i64* %245, !mcsema_real_eip !73
  store i64 %246, i64* %R15, !mcsema_real_eip !73
  %247 = add i64 %RSP_val.108, 8, !mcsema_real_eip !73
  store i64 %247, i64* %XSP, !mcsema_real_eip !73
  %RSP_val.109 = load i64, i64* %XSP, !mcsema_real_eip !74
  %248 = inttoptr i64 %RSP_val.109 to i64*, !mcsema_real_eip !74
  %249 = load i64, i64* %248, !mcsema_real_eip !74
  store i64 %249, i64* %XBP, !mcsema_real_eip !74
  %250 = add i64 %RSP_val.109, 8, !mcsema_real_eip !74
  store i64 %250, i64* %XSP, !mcsema_real_eip !74
  %RSP_val.110 = load i64, i64* %XSP, !mcsema_real_eip !75
  %251 = add i64 %RSP_val.110, 8, !mcsema_real_eip !75
  %252 = inttoptr i64 %RSP_val.110 to i64*, !mcsema_real_eip !75
  %253 = load i64, i64* %252, !mcsema_real_eip !75
  store i64 %253, i64* %XIP, !mcsema_real_eip !75
  store i64 %251, i64* %XSP, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !76
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !76
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !76
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !76
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !76
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !76
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !76
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !76
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !76
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !76
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !76
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !76
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !76
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !76
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !76
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !76
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !76
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !76
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !76
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !76
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !76
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !76
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !76
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !76
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !76
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !76
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !76
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !76
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !76
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !76
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !76
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !76
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !76
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !76
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !76
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !76
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !76
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !76
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !76
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !76
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !76
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !76
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !76
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !76
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !76
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !76
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !76
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !76
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !76
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !76
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !76
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !76
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !76
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !76
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !76
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !76
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !76
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !76
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !76
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !76
  br label %block_0x0, !mcsema_real_eip !76

block_0x0:                                        ; preds = %entry
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !76
  %RSP_val.112 = load i64, i64* %XSP, !mcsema_real_eip !76
  %1 = sub i64 %RSP_val.112, 8, !mcsema_real_eip !76
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !76
  store i64 %RBP_val.111, i64* %2, !mcsema_real_eip !76
  store i64 %1, i64* %XSP, !mcsema_real_eip !76
  %RSP_val.113 = load i64, i64* %XSP, !mcsema_real_eip !77
  store i64 %RSP_val.113, i64* %XBP, !mcsema_real_eip !77
  %RBX_val.114 = load i64, i64* %XBX, !mcsema_real_eip !78
  %RSP_val.115 = load i64, i64* %XSP, !mcsema_real_eip !78
  %3 = sub i64 %RSP_val.115, 8, !mcsema_real_eip !78
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %RBX_val.114, i64* %4, !mcsema_real_eip !78
  store i64 %3, i64* %XSP, !mcsema_real_eip !78
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !79
  %5 = add i64 %RBP_val.116, 40, !mcsema_real_eip !79
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !79
  %7 = load i64, i64* %6, !mcsema_real_eip !79
  store i64 %7, i64* %XAX, !mcsema_real_eip !79
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !80
  %8 = add i64 %RBP_val.117, 32, !mcsema_real_eip !80
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !80
  %10 = ptrtoint i64* %9 to i64, !mcsema_real_eip !80
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !80
  %12 = load i32, i32* %11, !mcsema_real_eip !80
  %13 = zext i32 %12 to i64, !mcsema_real_eip !80
  store i64 %13, i64* %R10, !mcsema_real_eip !80
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !81
  %14 = add i64 %RBP_val.118, 24, !mcsema_real_eip !81
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !81
  %16 = load i64, i64* %15, !mcsema_real_eip !81
  store i64 %16, i64* %R11, !mcsema_real_eip !81
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !82
  %17 = add i64 %RBP_val.119, 16, !mcsema_real_eip !82
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !82
  %19 = ptrtoint i64* %18 to i64, !mcsema_real_eip !82
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !82
  %21 = load i32, i32* %20, !mcsema_real_eip !82
  %22 = zext i32 %21 to i64, !mcsema_real_eip !82
  store i64 %22, i64* %XBX, !mcsema_real_eip !82
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !83
  %23 = add i64 %RBP_val.120, -12, !mcsema_real_eip !83
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !83
  %EDI.121 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.122 = load i32, i32* %EDI.121, !mcsema_real_eip !83
  %25 = ptrtoint i64* %24 to i64, !mcsema_real_eip !83
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.122, i32* %26, !mcsema_real_eip !83
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !84
  %27 = add i64 %RBP_val.123, -16, !mcsema_real_eip !84
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !84
  %ESI.124 = bitcast i64* %XSI to i32*, !mcsema_real_eip !84
  %ESI_val.125 = load i32, i32* %ESI.124, !mcsema_real_eip !84
  %29 = ptrtoint i64* %28 to i64, !mcsema_real_eip !84
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !84
  store i32 %ESI_val.125, i32* %30, !mcsema_real_eip !84
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !85
  %31 = add i64 %RBP_val.126, -20, !mcsema_real_eip !85
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !85
  %EDX.127 = bitcast i64* %XDX to i32*, !mcsema_real_eip !85
  %EDX_val.128 = load i32, i32* %EDX.127, !mcsema_real_eip !85
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !85
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !85
  store i32 %EDX_val.128, i32* %34, !mcsema_real_eip !85
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !86
  %35 = add i64 %RBP_val.129, -24, !mcsema_real_eip !86
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !86
  %ECX.130 = bitcast i64* %XCX to i32*, !mcsema_real_eip !86
  %ECX_val.131 = load i32, i32* %ECX.130, !mcsema_real_eip !86
  %37 = ptrtoint i64* %36 to i64, !mcsema_real_eip !86
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !86
  store i32 %ECX_val.131, i32* %38, !mcsema_real_eip !86
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !87
  %39 = add i64 %RBP_val.132, -28, !mcsema_real_eip !87
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !87
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.134 = load i32, i32* %R8D.133, !mcsema_real_eip !87
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !87
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.134, i32* %42, !mcsema_real_eip !87
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !88
  %43 = add i64 %RBP_val.135, -32, !mcsema_real_eip !88
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !88
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.137 = load i32, i32* %R9D.136, !mcsema_real_eip !88
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !88
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.137, i32* %46, !mcsema_real_eip !88
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !89
  %47 = add i64 %RBP_val.138, -36, !mcsema_real_eip !89
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !89
  %EBX.139 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.140 = load i32, i32* %EBX.139, !mcsema_real_eip !89
  %49 = ptrtoint i64* %48 to i64, !mcsema_real_eip !89
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.140, i32* %50, !mcsema_real_eip !89
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !90
  %51 = add i64 %RBP_val.141, -48, !mcsema_real_eip !90
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !90
  %R11_val.142 = load i64, i64* %R11, !mcsema_real_eip !90
  store i64 %R11_val.142, i64* %52, !mcsema_real_eip !90
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !91
  %53 = add i64 %RBP_val.143, -52, !mcsema_real_eip !91
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !91
  %R10D.144 = bitcast i64* %R10 to i32*, !mcsema_real_eip !91
  %R10D_val.145 = load i32, i32* %R10D.144, !mcsema_real_eip !91
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !91
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !91
  store i32 %R10D_val.145, i32* %56, !mcsema_real_eip !91
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !92
  %57 = add i64 %RBP_val.146, -64, !mcsema_real_eip !92
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !92
  %RAX_val.147 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.147, i64* %58, !mcsema_real_eip !92
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !93
  %59 = add i64 %RBP_val.148, -68, !mcsema_real_eip !93
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !93
  %61 = ptrtoint i64* %60 to i64, !mcsema_real_eip !93
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %62, !mcsema_real_eip !93
  %RBP_val.149 = load i64, i64* %XBP, !mcsema_real_eip !94
  %63 = add i64 %RBP_val.149, -72, !mcsema_real_eip !94
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !94
  %65 = ptrtoint i64* %64 to i64, !mcsema_real_eip !94
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !94
  store i32 0, i32* %66, !mcsema_real_eip !94
  br label %block_0x45, !mcsema_real_eip !95

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !95
  %67 = add i64 %RBP_val.150, -72, !mcsema_real_eip !95
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !95
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !95
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !95
  %71 = load i32, i32* %70, !mcsema_real_eip !95
  %72 = zext i32 %71 to i64, !mcsema_real_eip !95
  store i64 %72, i64* %XAX, !mcsema_real_eip !95
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !96
  %73 = add i64 %RBP_val.151, -36, !mcsema_real_eip !96
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !96
  %EAX.152 = bitcast i64* %XAX to i32*, !mcsema_real_eip !96
  %EAX_val.153 = load i32, i32* %EAX.152, !mcsema_real_eip !96
  %75 = ptrtoint i64* %74 to i64, !mcsema_real_eip !96
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !96
  %77 = load i32, i32* %76, !mcsema_real_eip !96
  %78 = sub i32 %EAX_val.153, %77, !mcsema_real_eip !96
  %79 = xor i32 %78, %EAX_val.153, !mcsema_real_eip !96
  %80 = xor i32 %79, %77, !mcsema_real_eip !96
  %81 = and i32 %80, 16, !mcsema_real_eip !96
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !96
  store i1 %82, i1* %AF, !mcsema_real_eip !96
  %83 = trunc i32 %78 to i8, !mcsema_real_eip !96
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !96
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !96
  %86 = xor i1 %85, true, !mcsema_real_eip !96
  store i1 %86, i1* %PF, !mcsema_real_eip !96
  %87 = icmp eq i32 %78, 0, !mcsema_real_eip !96
  store i1 %87, i1* %ZF, !mcsema_real_eip !96
  %88 = lshr i32 %78, 31, !mcsema_real_eip !96
  %89 = trunc i32 %88 to i1, !mcsema_real_eip !96
  store i1 %89, i1* %SF, !mcsema_real_eip !96
  %90 = icmp ult i32 %EAX_val.153, %77, !mcsema_real_eip !96
  store i1 %90, i1* %CF, !mcsema_real_eip !96
  %91 = xor i32 %EAX_val.153, %77, !mcsema_real_eip !96
  %92 = xor i32 %EAX_val.153, %78, !mcsema_real_eip !96
  %93 = and i32 %91, %92, !mcsema_real_eip !96
  %94 = lshr i32 %93, 31, !mcsema_real_eip !96
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !96
  store i1 %95, i1* %OF, !mcsema_real_eip !96
  %96 = load i1, i1* %OF, !mcsema_real_eip !97
  %97 = load i1, i1* %SF, !mcsema_real_eip !97
  %98 = icmp eq i1 %97, %96, !mcsema_real_eip !97
  br i1 %98, label %block_0x7b, label %block_0x51, !mcsema_real_eip !97

block_0x51:                                       ; preds = %block_0x45
  %RBP_val.178 = load i64, i64* %XBP, !mcsema_real_eip !98
  %99 = add i64 %RBP_val.178, -48, !mcsema_real_eip !98
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !98
  %101 = load i64, i64* %100, !mcsema_real_eip !98
  store i64 %101, i64* %XAX, !mcsema_real_eip !98
  %RBP_val.179 = load i64, i64* %XBP, !mcsema_real_eip !99
  %102 = add i64 %RBP_val.179, -72, !mcsema_real_eip !99
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !99
  %104 = ptrtoint i64* %103 to i64, !mcsema_real_eip !99
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !99
  %106 = load i32, i32* %105, !mcsema_real_eip !99
  %107 = sext i32 %106 to i64, !mcsema_real_eip !99
  store i64 %107, i64* %XCX, !mcsema_real_eip !99
  %RAX_val.180 = load i64, i64* %XAX, !mcsema_real_eip !100
  %108 = add i64 %RAX_val.180, 0, !mcsema_real_eip !100
  %RCX_val.181 = load i64, i64* %XCX, !mcsema_real_eip !100
  %109 = mul i64 %RCX_val.181, 4, !mcsema_real_eip !100
  %110 = add i64 %108, %109, !mcsema_real_eip !100
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !100
  %112 = ptrtoint i64* %111 to i64, !mcsema_real_eip !100
  %113 = inttoptr i64 %112 to i32*, !mcsema_real_eip !100
  %114 = load i32, i32* %113, !mcsema_real_eip !100
  %115 = zext i32 %114 to i64, !mcsema_real_eip !100
  store i64 %115, i64* %XDX, !mcsema_real_eip !100
  %RBP_val.182 = load i64, i64* %XBP, !mcsema_real_eip !101
  %116 = add i64 %RBP_val.182, -64, !mcsema_real_eip !101
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !101
  %118 = load i64, i64* %117, !mcsema_real_eip !101
  store i64 %118, i64* %XAX, !mcsema_real_eip !101
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !102
  %119 = add i64 %RBP_val.183, -72, !mcsema_real_eip !102
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !102
  %121 = ptrtoint i64* %120 to i64, !mcsema_real_eip !102
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !102
  %123 = load i32, i32* %122, !mcsema_real_eip !102
  %124 = sext i32 %123 to i64, !mcsema_real_eip !102
  store i64 %124, i64* %XCX, !mcsema_real_eip !102
  %RAX_val.184 = load i64, i64* %XAX, !mcsema_real_eip !103
  %125 = add i64 %RAX_val.184, 0, !mcsema_real_eip !103
  %RCX_val.185 = load i64, i64* %XCX, !mcsema_real_eip !103
  %126 = mul i64 %RCX_val.185, 4, !mcsema_real_eip !103
  %127 = add i64 %125, %126, !mcsema_real_eip !103
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !103
  %EDX.186 = bitcast i64* %XDX to i32*, !mcsema_real_eip !103
  %EDX_val.187 = load i32, i32* %EDX.186, !mcsema_real_eip !103
  %129 = ptrtoint i64* %128 to i64, !mcsema_real_eip !103
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !103
  %131 = load i32, i32* %130, !mcsema_real_eip !103
  %132 = sub i32 %EDX_val.187, %131, !mcsema_real_eip !103
  %133 = xor i32 %132, %EDX_val.187, !mcsema_real_eip !103
  %134 = xor i32 %133, %131, !mcsema_real_eip !103
  %135 = and i32 %134, 16, !mcsema_real_eip !103
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !103
  store i1 %136, i1* %AF, !mcsema_real_eip !103
  %137 = trunc i32 %132 to i8, !mcsema_real_eip !103
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !103
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !103
  %140 = xor i1 %139, true, !mcsema_real_eip !103
  store i1 %140, i1* %PF, !mcsema_real_eip !103
  %141 = icmp eq i32 %132, 0, !mcsema_real_eip !103
  store i1 %141, i1* %ZF, !mcsema_real_eip !103
  %142 = lshr i32 %132, 31, !mcsema_real_eip !103
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !103
  store i1 %143, i1* %SF, !mcsema_real_eip !103
  %144 = icmp ult i32 %EDX_val.187, %131, !mcsema_real_eip !103
  store i1 %144, i1* %CF, !mcsema_real_eip !103
  %145 = xor i32 %EDX_val.187, %131, !mcsema_real_eip !103
  %146 = xor i32 %EDX_val.187, %132, !mcsema_real_eip !103
  %147 = and i32 %145, %146, !mcsema_real_eip !103
  %148 = lshr i32 %147, 31, !mcsema_real_eip !103
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !103
  store i1 %149, i1* %OF, !mcsema_real_eip !103
  %150 = zext i32 %132 to i64, !mcsema_real_eip !103
  store i64 %150, i64* %XDX, !mcsema_real_eip !103
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !104
  %151 = add i64 %RBP_val.188, -68, !mcsema_real_eip !104
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !104
  %153 = ptrtoint i64* %152 to i64, !mcsema_real_eip !104
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !104
  %155 = load i32, i32* %154, !mcsema_real_eip !104
  %EDX.189 = bitcast i64* %XDX to i32*, !mcsema_real_eip !104
  %EDX_val.190 = load i32, i32* %EDX.189, !mcsema_real_eip !104
  %156 = add i32 %EDX_val.190, %155, !mcsema_real_eip !104
  %157 = xor i32 %156, %155, !mcsema_real_eip !104
  %158 = xor i32 %157, %EDX_val.190, !mcsema_real_eip !104
  %159 = and i32 %158, 16, !mcsema_real_eip !104
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !104
  store i1 %160, i1* %AF, !mcsema_real_eip !104
  %161 = lshr i32 %156, 31, !mcsema_real_eip !104
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !104
  store i1 %162, i1* %SF, !mcsema_real_eip !104
  %163 = icmp eq i32 %156, 0, !mcsema_real_eip !104
  store i1 %163, i1* %ZF, !mcsema_real_eip !104
  %164 = xor i32 %155, %EDX_val.190, !mcsema_real_eip !104
  %165 = xor i32 %164, -1, !mcsema_real_eip !104
  %166 = xor i32 %155, %156, !mcsema_real_eip !104
  %167 = and i32 %165, %166, !mcsema_real_eip !104
  %168 = lshr i32 %167, 31, !mcsema_real_eip !104
  %169 = and i32 %168, 1, !mcsema_real_eip !104
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !104
  store i1 %170, i1* %OF, !mcsema_real_eip !104
  %171 = trunc i32 %156 to i8, !mcsema_real_eip !104
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !104
  %173 = trunc i8 %172 to i1, !mcsema_real_eip !104
  %174 = xor i1 %173, true, !mcsema_real_eip !104
  store i1 %174, i1* %PF, !mcsema_real_eip !104
  %175 = icmp ult i32 %156, %155, !mcsema_real_eip !104
  store i1 %175, i1* %CF, !mcsema_real_eip !104
  %176 = zext i32 %156 to i64, !mcsema_real_eip !104
  store i64 %176, i64* %XDX, !mcsema_real_eip !104
  %RBP_val.191 = load i64, i64* %XBP, !mcsema_real_eip !105
  %177 = add i64 %RBP_val.191, -68, !mcsema_real_eip !105
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !105
  %EDX.192 = bitcast i64* %XDX to i32*, !mcsema_real_eip !105
  %EDX_val.193 = load i32, i32* %EDX.192, !mcsema_real_eip !105
  %179 = ptrtoint i64* %178 to i64, !mcsema_real_eip !105
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !105
  store i32 %EDX_val.193, i32* %180, !mcsema_real_eip !105
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !106
  %181 = add i64 %RBP_val.194, -72, !mcsema_real_eip !106
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !106
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !106
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !106
  %185 = load i32, i32* %184, !mcsema_real_eip !106
  %186 = zext i32 %185 to i64, !mcsema_real_eip !106
  store i64 %186, i64* %XAX, !mcsema_real_eip !106
  %EAX.195 = bitcast i64* %XAX to i32*, !mcsema_real_eip !107
  %EAX_val.196 = load i32, i32* %EAX.195, !mcsema_real_eip !107
  %187 = add i32 1, %EAX_val.196, !mcsema_real_eip !107
  %188 = xor i32 %187, %EAX_val.196, !mcsema_real_eip !107
  %189 = xor i32 %188, 1, !mcsema_real_eip !107
  %190 = and i32 %189, 16, !mcsema_real_eip !107
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !107
  store i1 %191, i1* %AF, !mcsema_real_eip !107
  %192 = lshr i32 %187, 31, !mcsema_real_eip !107
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !107
  store i1 %193, i1* %SF, !mcsema_real_eip !107
  %194 = icmp eq i32 %187, 0, !mcsema_real_eip !107
  store i1 %194, i1* %ZF, !mcsema_real_eip !107
  %195 = xor i32 %EAX_val.196, 1, !mcsema_real_eip !107
  %196 = xor i32 %195, -1, !mcsema_real_eip !107
  %197 = xor i32 %EAX_val.196, %187, !mcsema_real_eip !107
  %198 = and i32 %196, %197, !mcsema_real_eip !107
  %199 = lshr i32 %198, 31, !mcsema_real_eip !107
  %200 = and i32 %199, 1, !mcsema_real_eip !107
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !107
  store i1 %201, i1* %OF, !mcsema_real_eip !107
  %202 = trunc i32 %187 to i8, !mcsema_real_eip !107
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !107
  %204 = trunc i8 %203 to i1, !mcsema_real_eip !107
  %205 = xor i1 %204, true, !mcsema_real_eip !107
  store i1 %205, i1* %PF, !mcsema_real_eip !107
  %206 = icmp ult i32 %187, %EAX_val.196, !mcsema_real_eip !107
  store i1 %206, i1* %CF, !mcsema_real_eip !107
  %207 = zext i32 %187 to i64, !mcsema_real_eip !107
  store i64 %207, i64* %XAX, !mcsema_real_eip !107
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !108
  %208 = add i64 %RBP_val.197, -72, !mcsema_real_eip !108
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !108
  %EAX.198 = bitcast i64* %XAX to i32*, !mcsema_real_eip !108
  %EAX_val.199 = load i32, i32* %EAX.198, !mcsema_real_eip !108
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !108
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !108
  store i32 %EAX_val.199, i32* %211, !mcsema_real_eip !108
  br label %block_0x45, !mcsema_real_eip !109

block_0x7b:                                       ; preds = %block_0x45
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !110
  %212 = add i64 %RBP_val.154, -68, !mcsema_real_eip !110
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !110
  %214 = ptrtoint i64* %213 to i64, !mcsema_real_eip !110
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !110
  %216 = load i32, i32* %215, !mcsema_real_eip !110
  %217 = zext i32 %216 to i64, !mcsema_real_eip !110
  store i64 %217, i64* %XAX, !mcsema_real_eip !110
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !111
  %218 = add i64 %RBP_val.155, -12, !mcsema_real_eip !111
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !111
  %220 = ptrtoint i64* %219 to i64, !mcsema_real_eip !111
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !111
  %222 = load i32, i32* %221, !mcsema_real_eip !111
  %223 = zext i32 %222 to i64, !mcsema_real_eip !111
  store i64 %223, i64* %XCX, !mcsema_real_eip !111
  %RBP_val.156 = load i64, i64* %XBP, !mcsema_real_eip !112
  %224 = add i64 %RBP_val.156, -16, !mcsema_real_eip !112
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !112
  %226 = ptrtoint i64* %225 to i64, !mcsema_real_eip !112
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !112
  %228 = load i32, i32* %227, !mcsema_real_eip !112
  %ECX.157 = bitcast i64* %XCX to i32*, !mcsema_real_eip !112
  %ECX_val.158 = load i32, i32* %ECX.157, !mcsema_real_eip !112
  %229 = add i32 %ECX_val.158, %228, !mcsema_real_eip !112
  %230 = xor i32 %229, %228, !mcsema_real_eip !112
  %231 = xor i32 %230, %ECX_val.158, !mcsema_real_eip !112
  %232 = and i32 %231, 16, !mcsema_real_eip !112
  %233 = icmp ne i32 %232, 0, !mcsema_real_eip !112
  store i1 %233, i1* %AF, !mcsema_real_eip !112
  %234 = lshr i32 %229, 31, !mcsema_real_eip !112
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !112
  store i1 %235, i1* %SF, !mcsema_real_eip !112
  %236 = icmp eq i32 %229, 0, !mcsema_real_eip !112
  store i1 %236, i1* %ZF, !mcsema_real_eip !112
  %237 = xor i32 %228, %ECX_val.158, !mcsema_real_eip !112
  %238 = xor i32 %237, -1, !mcsema_real_eip !112
  %239 = xor i32 %228, %229, !mcsema_real_eip !112
  %240 = and i32 %238, %239, !mcsema_real_eip !112
  %241 = lshr i32 %240, 31, !mcsema_real_eip !112
  %242 = and i32 %241, 1, !mcsema_real_eip !112
  %243 = trunc i32 %242 to i1, !mcsema_real_eip !112
  store i1 %243, i1* %OF, !mcsema_real_eip !112
  %244 = trunc i32 %229 to i8, !mcsema_real_eip !112
  %245 = call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !112
  %246 = trunc i8 %245 to i1, !mcsema_real_eip !112
  %247 = xor i1 %246, true, !mcsema_real_eip !112
  store i1 %247, i1* %PF, !mcsema_real_eip !112
  %248 = icmp ult i32 %229, %228, !mcsema_real_eip !112
  store i1 %248, i1* %CF, !mcsema_real_eip !112
  %249 = zext i32 %229 to i64, !mcsema_real_eip !112
  store i64 %249, i64* %XCX, !mcsema_real_eip !112
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !113
  %250 = add i64 %RBP_val.159, -20, !mcsema_real_eip !113
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !113
  %252 = ptrtoint i64* %251 to i64, !mcsema_real_eip !113
  %253 = inttoptr i64 %252 to i32*, !mcsema_real_eip !113
  %254 = load i32, i32* %253, !mcsema_real_eip !113
  %ECX.160 = bitcast i64* %XCX to i32*, !mcsema_real_eip !113
  %ECX_val.161 = load i32, i32* %ECX.160, !mcsema_real_eip !113
  %255 = add i32 %ECX_val.161, %254, !mcsema_real_eip !113
  %256 = xor i32 %255, %254, !mcsema_real_eip !113
  %257 = xor i32 %256, %ECX_val.161, !mcsema_real_eip !113
  %258 = and i32 %257, 16, !mcsema_real_eip !113
  %259 = icmp ne i32 %258, 0, !mcsema_real_eip !113
  store i1 %259, i1* %AF, !mcsema_real_eip !113
  %260 = lshr i32 %255, 31, !mcsema_real_eip !113
  %261 = trunc i32 %260 to i1, !mcsema_real_eip !113
  store i1 %261, i1* %SF, !mcsema_real_eip !113
  %262 = icmp eq i32 %255, 0, !mcsema_real_eip !113
  store i1 %262, i1* %ZF, !mcsema_real_eip !113
  %263 = xor i32 %254, %ECX_val.161, !mcsema_real_eip !113
  %264 = xor i32 %263, -1, !mcsema_real_eip !113
  %265 = xor i32 %254, %255, !mcsema_real_eip !113
  %266 = and i32 %264, %265, !mcsema_real_eip !113
  %267 = lshr i32 %266, 31, !mcsema_real_eip !113
  %268 = and i32 %267, 1, !mcsema_real_eip !113
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !113
  store i1 %269, i1* %OF, !mcsema_real_eip !113
  %270 = trunc i32 %255 to i8, !mcsema_real_eip !113
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !113
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !113
  %273 = xor i1 %272, true, !mcsema_real_eip !113
  store i1 %273, i1* %PF, !mcsema_real_eip !113
  %274 = icmp ult i32 %255, %254, !mcsema_real_eip !113
  store i1 %274, i1* %CF, !mcsema_real_eip !113
  %275 = zext i32 %255 to i64, !mcsema_real_eip !113
  store i64 %275, i64* %XCX, !mcsema_real_eip !113
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !114
  %276 = add i64 %RBP_val.162, -24, !mcsema_real_eip !114
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !114
  %278 = ptrtoint i64* %277 to i64, !mcsema_real_eip !114
  %279 = inttoptr i64 %278 to i32*, !mcsema_real_eip !114
  %280 = load i32, i32* %279, !mcsema_real_eip !114
  %ECX.163 = bitcast i64* %XCX to i32*, !mcsema_real_eip !114
  %ECX_val.164 = load i32, i32* %ECX.163, !mcsema_real_eip !114
  %281 = add i32 %ECX_val.164, %280, !mcsema_real_eip !114
  %282 = xor i32 %281, %280, !mcsema_real_eip !114
  %283 = xor i32 %282, %ECX_val.164, !mcsema_real_eip !114
  %284 = and i32 %283, 16, !mcsema_real_eip !114
  %285 = icmp ne i32 %284, 0, !mcsema_real_eip !114
  store i1 %285, i1* %AF, !mcsema_real_eip !114
  %286 = lshr i32 %281, 31, !mcsema_real_eip !114
  %287 = trunc i32 %286 to i1, !mcsema_real_eip !114
  store i1 %287, i1* %SF, !mcsema_real_eip !114
  %288 = icmp eq i32 %281, 0, !mcsema_real_eip !114
  store i1 %288, i1* %ZF, !mcsema_real_eip !114
  %289 = xor i32 %280, %ECX_val.164, !mcsema_real_eip !114
  %290 = xor i32 %289, -1, !mcsema_real_eip !114
  %291 = xor i32 %280, %281, !mcsema_real_eip !114
  %292 = and i32 %290, %291, !mcsema_real_eip !114
  %293 = lshr i32 %292, 31, !mcsema_real_eip !114
  %294 = and i32 %293, 1, !mcsema_real_eip !114
  %295 = trunc i32 %294 to i1, !mcsema_real_eip !114
  store i1 %295, i1* %OF, !mcsema_real_eip !114
  %296 = trunc i32 %281 to i8, !mcsema_real_eip !114
  %297 = call i8 @llvm.ctpop.i8(i8 %296), !mcsema_real_eip !114
  %298 = trunc i8 %297 to i1, !mcsema_real_eip !114
  %299 = xor i1 %298, true, !mcsema_real_eip !114
  store i1 %299, i1* %PF, !mcsema_real_eip !114
  %300 = icmp ult i32 %281, %280, !mcsema_real_eip !114
  store i1 %300, i1* %CF, !mcsema_real_eip !114
  %301 = zext i32 %281 to i64, !mcsema_real_eip !114
  store i64 %301, i64* %XCX, !mcsema_real_eip !114
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !115
  %302 = add i64 %RBP_val.165, -28, !mcsema_real_eip !115
  %303 = inttoptr i64 %302 to i64*, !mcsema_real_eip !115
  %304 = ptrtoint i64* %303 to i64, !mcsema_real_eip !115
  %305 = inttoptr i64 %304 to i32*, !mcsema_real_eip !115
  %306 = load i32, i32* %305, !mcsema_real_eip !115
  %ECX.166 = bitcast i64* %XCX to i32*, !mcsema_real_eip !115
  %ECX_val.167 = load i32, i32* %ECX.166, !mcsema_real_eip !115
  %307 = add i32 %ECX_val.167, %306, !mcsema_real_eip !115
  %308 = xor i32 %307, %306, !mcsema_real_eip !115
  %309 = xor i32 %308, %ECX_val.167, !mcsema_real_eip !115
  %310 = and i32 %309, 16, !mcsema_real_eip !115
  %311 = icmp ne i32 %310, 0, !mcsema_real_eip !115
  store i1 %311, i1* %AF, !mcsema_real_eip !115
  %312 = lshr i32 %307, 31, !mcsema_real_eip !115
  %313 = trunc i32 %312 to i1, !mcsema_real_eip !115
  store i1 %313, i1* %SF, !mcsema_real_eip !115
  %314 = icmp eq i32 %307, 0, !mcsema_real_eip !115
  store i1 %314, i1* %ZF, !mcsema_real_eip !115
  %315 = xor i32 %306, %ECX_val.167, !mcsema_real_eip !115
  %316 = xor i32 %315, -1, !mcsema_real_eip !115
  %317 = xor i32 %306, %307, !mcsema_real_eip !115
  %318 = and i32 %316, %317, !mcsema_real_eip !115
  %319 = lshr i32 %318, 31, !mcsema_real_eip !115
  %320 = and i32 %319, 1, !mcsema_real_eip !115
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !115
  store i1 %321, i1* %OF, !mcsema_real_eip !115
  %322 = trunc i32 %307 to i8, !mcsema_real_eip !115
  %323 = call i8 @llvm.ctpop.i8(i8 %322), !mcsema_real_eip !115
  %324 = trunc i8 %323 to i1, !mcsema_real_eip !115
  %325 = xor i1 %324, true, !mcsema_real_eip !115
  store i1 %325, i1* %PF, !mcsema_real_eip !115
  %326 = icmp ult i32 %307, %306, !mcsema_real_eip !115
  store i1 %326, i1* %CF, !mcsema_real_eip !115
  %327 = zext i32 %307 to i64, !mcsema_real_eip !115
  store i64 %327, i64* %XCX, !mcsema_real_eip !115
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !116
  %328 = add i64 %RBP_val.168, -32, !mcsema_real_eip !116
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !116
  %330 = ptrtoint i64* %329 to i64, !mcsema_real_eip !116
  %331 = inttoptr i64 %330 to i32*, !mcsema_real_eip !116
  %332 = load i32, i32* %331, !mcsema_real_eip !116
  %ECX.169 = bitcast i64* %XCX to i32*, !mcsema_real_eip !116
  %ECX_val.170 = load i32, i32* %ECX.169, !mcsema_real_eip !116
  %333 = add i32 %ECX_val.170, %332, !mcsema_real_eip !116
  %334 = xor i32 %333, %332, !mcsema_real_eip !116
  %335 = xor i32 %334, %ECX_val.170, !mcsema_real_eip !116
  %336 = and i32 %335, 16, !mcsema_real_eip !116
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !116
  store i1 %337, i1* %AF, !mcsema_real_eip !116
  %338 = lshr i32 %333, 31, !mcsema_real_eip !116
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !116
  store i1 %339, i1* %SF, !mcsema_real_eip !116
  %340 = icmp eq i32 %333, 0, !mcsema_real_eip !116
  store i1 %340, i1* %ZF, !mcsema_real_eip !116
  %341 = xor i32 %332, %ECX_val.170, !mcsema_real_eip !116
  %342 = xor i32 %341, -1, !mcsema_real_eip !116
  %343 = xor i32 %332, %333, !mcsema_real_eip !116
  %344 = and i32 %342, %343, !mcsema_real_eip !116
  %345 = lshr i32 %344, 31, !mcsema_real_eip !116
  %346 = and i32 %345, 1, !mcsema_real_eip !116
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !116
  store i1 %347, i1* %OF, !mcsema_real_eip !116
  %348 = trunc i32 %333 to i8, !mcsema_real_eip !116
  %349 = call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !116
  %350 = trunc i8 %349 to i1, !mcsema_real_eip !116
  %351 = xor i1 %350, true, !mcsema_real_eip !116
  store i1 %351, i1* %PF, !mcsema_real_eip !116
  %352 = icmp ult i32 %333, %332, !mcsema_real_eip !116
  store i1 %352, i1* %CF, !mcsema_real_eip !116
  %353 = zext i32 %333 to i64, !mcsema_real_eip !116
  store i64 %353, i64* %XCX, !mcsema_real_eip !116
  %ECX.171 = bitcast i64* %XCX to i32*, !mcsema_real_eip !117
  %ECX_val.172 = load i32, i32* %ECX.171, !mcsema_real_eip !117
  %EAX.173 = bitcast i64* %XAX to i32*, !mcsema_real_eip !117
  %EAX_val.174 = load i32, i32* %EAX.173, !mcsema_real_eip !117
  %354 = sext i32 %EAX_val.174 to i64, !mcsema_real_eip !117
  %355 = sext i32 %ECX_val.172 to i64, !mcsema_real_eip !117
  %356 = mul i64 %354, %355, !mcsema_real_eip !117
  %357 = trunc i64 %356 to i32, !mcsema_real_eip !117
  %358 = sext i32 %357 to i64, !mcsema_real_eip !117
  %359 = icmp ne i64 %358, %356, !mcsema_real_eip !117
  %360 = icmp slt i32 %357, 0, !mcsema_real_eip !117
  store i1 %360, i1* %SF, !mcsema_real_eip !117
  store i1 %359, i1* %OF, !mcsema_real_eip !117
  store i1 %359, i1* %CF, !mcsema_real_eip !117
  %361 = zext i32 %357 to i64, !mcsema_real_eip !117
  store i64 %361, i64* %XAX, !mcsema_real_eip !117
  %RSP_val.175 = load i64, i64* %XSP, !mcsema_real_eip !118
  %362 = inttoptr i64 %RSP_val.175 to i64*, !mcsema_real_eip !118
  %363 = load i64, i64* %362, !mcsema_real_eip !118
  store i64 %363, i64* %XBX, !mcsema_real_eip !118
  %364 = add i64 %RSP_val.175, 8, !mcsema_real_eip !118
  store i64 %364, i64* %XSP, !mcsema_real_eip !118
  %RSP_val.176 = load i64, i64* %XSP, !mcsema_real_eip !119
  %365 = inttoptr i64 %RSP_val.176 to i64*, !mcsema_real_eip !119
  %366 = load i64, i64* %365, !mcsema_real_eip !119
  store i64 %366, i64* %XBP, !mcsema_real_eip !119
  %367 = add i64 %RSP_val.176, 8, !mcsema_real_eip !119
  store i64 %367, i64* %XSP, !mcsema_real_eip !119
  %RSP_val.177 = load i64, i64* %XSP, !mcsema_real_eip !120
  %368 = add i64 %RSP_val.177, 8, !mcsema_real_eip !120
  %369 = inttoptr i64 %RSP_val.177 to i64*, !mcsema_real_eip !120
  %370 = load i64, i64* %369, !mcsema_real_eip !120
  store i64 %370, i64* %XIP, !mcsema_real_eip !120
  store i64 %368, i64* %XSP, !mcsema_real_eip !120
  ret void, !mcsema_real_eip !120
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 166}
!6 = !{i64 168}
!7 = !{i64 170}
!8 = !{i64 172}
!9 = !{i64 173}
!10 = !{i64 180}
!11 = !{i64 185}
!12 = !{i64 190}
!13 = !{i64 195}
!14 = !{i64 201}
!15 = !{i64 207}
!16 = !{i64 213}
!17 = !{i64 219}
!18 = !{i64 226}
!19 = !{i64 230}
!20 = !{i64 240}
!21 = !{i64 246}
!22 = !{i64 249}
!23 = !{i64 259}
!24 = !{i64 266}
!25 = !{i64 269}
!26 = !{i64 273}
!27 = !{i64 276}
!28 = !{i64 279}
!29 = !{i64 282}
!30 = !{i64 288}
!31 = !{i64 291}
!32 = !{i64 298}
!33 = !{i64 305}
!34 = !{i64 311}
!35 = !{i64 317}
!36 = !{i64 324}
!37 = !{i64 331}
!38 = !{i64 338}
!39 = !{i64 345}
!40 = !{i64 352}
!41 = !{i64 359}
!42 = !{i64 364}
!43 = !{i64 371}
!44 = !{i64 374}
!45 = !{i64 381}
!46 = !{i64 388}
!47 = !{i64 393}
!48 = !{i64 399}
!49 = !{i64 405}
!50 = !{i64 411}
!51 = !{i64 417}
!52 = !{i64 424}
!53 = !{i64 431}
!54 = !{i64 438}
!55 = !{i64 445}
!56 = !{i64 450}
!57 = !{i64 458}
!58 = !{i64 465}
!59 = !{i64 470}
!60 = !{i64 475}
!61 = !{i64 485}
!62 = !{i64 491}
!63 = !{i64 497}
!64 = !{i64 499}
!65 = !{i64 504}
!66 = !{i64 510}
!67 = !{i64 516}
!68 = !{i64 518}
!69 = !{i64 525}
!70 = !{i64 526}
!71 = !{i64 528}
!72 = !{i64 530}
!73 = !{i64 532}
!74 = !{i64 534}
!75 = !{i64 535}
!76 = !{i64 0}
!77 = !{i64 1}
!78 = !{i64 4}
!79 = !{i64 5}
!80 = !{i64 9}
!81 = !{i64 13}
!82 = !{i64 17}
!83 = !{i64 20}
!84 = !{i64 23}
!85 = !{i64 26}
!86 = !{i64 29}
!87 = !{i64 32}
!88 = !{i64 36}
!89 = !{i64 40}
!90 = !{i64 43}
!91 = !{i64 47}
!92 = !{i64 51}
!93 = !{i64 55}
!94 = !{i64 62}
!95 = !{i64 69}
!96 = !{i64 72}
!97 = !{i64 75}
!98 = !{i64 81}
!99 = !{i64 85}
!100 = !{i64 89}
!101 = !{i64 92}
!102 = !{i64 96}
!103 = !{i64 100}
!104 = !{i64 103}
!105 = !{i64 106}
!106 = !{i64 109}
!107 = !{i64 112}
!108 = !{i64 115}
!109 = !{i64 118}
!110 = !{i64 123}
!111 = !{i64 126}
!112 = !{i64 129}
!113 = !{i64 132}
!114 = !{i64 135}
!115 = !{i64 138}
!116 = !{i64 141}
!117 = !{i64 144}
!118 = !{i64 147}
!119 = !{i64 148}
!120 = !{i64 149}
