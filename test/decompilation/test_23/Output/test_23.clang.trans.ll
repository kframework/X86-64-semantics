; ModuleID = 'Output/test_23.clang.trans.bc'
source_filename = "Output/test_23.clang.bc"
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
module asm "  .globl read;"
module asm "  .globl _read;"
module asm "  .type _read,@function"
module asm "_read:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read,0b-_read;"
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
module asm "  .globl exit;"
module asm "  .globl _exit;"
module asm "  .type _exit,@function"
module asm "_exit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq exit@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _exit,0b-_exit;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_b0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_b0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [184 x i8] }>
%1 = type <{ [77 x i8] }>
%2 = type <{ [95 x i8] }>
%3 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x320 = internal constant %0 <{ [184 x i8] c"r\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00d\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00V\01\00\00\00\00\00\00" }>, align 64
@data_0x3e0 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x42d = internal constant %2 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64
@data_0x490 = internal constant %3 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\A5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"k\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_b0(%RegState*) #1 {
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
  br label %block_0xb0, !mcsema_real_eip !2

block_0xb0:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  %RSP_val.2 = load i64, i64* %XSP, !mcsema_real_eip !3
  store i64 %RSP_val.2, i64* %XBP, !mcsema_real_eip !3
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %3 = sub i64 %RSP_val.3, 112, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 112, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 112, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 112, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !5
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !5
  %21 = xor i32 %EAX_val.5, %EAX_val.7, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  %22 = lshr i32 %21, 31, !mcsema_real_eip !5
  %23 = trunc i32 %22 to i1, !mcsema_real_eip !5
  store i1 %23, i1* %SF, !mcsema_real_eip !5
  %24 = icmp eq i32 %21, 0, !mcsema_real_eip !5
  store i1 %24, i1* %ZF, !mcsema_real_eip !5
  %25 = trunc i32 %21 to i8, !mcsema_real_eip !5
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !5
  %27 = trunc i8 %26 to i1, !mcsema_real_eip !5
  %28 = xor i1 %27, true, !mcsema_real_eip !5
  store i1 %28, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  %29 = zext i32 %21 to i64, !mcsema_real_eip !5
  store i64 %29, i64* %XAX, !mcsema_real_eip !5
  store i64 28, i64* %XCX, !mcsema_real_eip !6
  %ECX.8 = bitcast i64* %XCX to i32*, !mcsema_real_eip !7
  %ECX_val.9 = load i32, i32* %ECX.8, !mcsema_real_eip !7
  %30 = zext i32 %ECX_val.9 to i64, !mcsema_real_eip !7
  store i64 %30, i64* %XDX, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %31 = add i64 %RBP_val.10, -64, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %33 = ptrtoint i64* %32 to i64, !mcsema_real_eip !8
  store i64 %33, i64* %R8, !mcsema_real_eip !8
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !9
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !10
  %34 = add i64 %RBP_val.11, -4, !mcsema_real_eip !10
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !10
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !10
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !10
  store i32 0, i32* %37, !mcsema_real_eip !10
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !11
  %38 = add i64 %RBP_val.12, -8, !mcsema_real_eip !11
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !11
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !11
  %EDI_val.14 = load i32, i32* %EDI.13, !mcsema_real_eip !11
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !11
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !11
  store i32 %EDI_val.14, i32* %41, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %42 = add i64 %RBP_val.15, -16, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !12
  %RSI_val.16 = load i64, i64* %XSI, !mcsema_real_eip !12
  store i64 %RSI_val.16, i64* %43, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %44 = add i64 %RBP_val.17, -36, !mcsema_real_eip !13
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !13
  %46 = ptrtoint i64* %45 to i64, !mcsema_real_eip !13
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %47, !mcsema_real_eip !13
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !14
  %48 = add i64 %RBP_val.18, -20, !mcsema_real_eip !14
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !14
  %50 = ptrtoint i64* %49 to i64, !mcsema_real_eip !14
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !14
  store i32 1, i32* %51, !mcsema_real_eip !14
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !15
  %52 = add i64 %RBP_val.19, -24, !mcsema_real_eip !15
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !15
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !15
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !15
  store i32 1, i32* %55, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !16
  %56 = add i64 %RBP_val.20, -24, !mcsema_real_eip !16
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !16
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !16
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !16
  %60 = load i32, i32* %59, !mcsema_real_eip !16
  %61 = sext i32 %60 to i64, !mcsema_real_eip !16
  store i64 %61, i64* %XSI, !mcsema_real_eip !16
  %RSI_val.21 = load i64, i64* %XSI, !mcsema_real_eip !17
  %62 = sext i64 %RSI_val.21 to i128, !mcsema_real_eip !17
  %63 = mul i128 %62, 11, !mcsema_real_eip !17
  %64 = trunc i128 %63 to i64, !mcsema_real_eip !17
  %65 = sext i64 %64 to i128, !mcsema_real_eip !17
  %66 = icmp ne i128 %65, %63, !mcsema_real_eip !17
  %67 = icmp slt i64 %64, 0, !mcsema_real_eip !17
  store i1 %67, i1* %SF, !mcsema_real_eip !17
  store i1 %66, i1* %OF, !mcsema_real_eip !17
  store i1 %66, i1* %CF, !mcsema_real_eip !17
  store i64 %64, i64* %XSI, !mcsema_real_eip !17
  %R9_val.22 = load i64, i64* %R9, !mcsema_real_eip !18
  %RSI_val.23 = load i64, i64* %XSI, !mcsema_real_eip !18
  %68 = add i64 %RSI_val.23, %R9_val.22, !mcsema_real_eip !18
  %69 = xor i64 %68, %R9_val.22, !mcsema_real_eip !18
  %70 = xor i64 %69, %RSI_val.23, !mcsema_real_eip !18
  %71 = and i64 %70, 16, !mcsema_real_eip !18
  %72 = icmp ne i64 %71, 0, !mcsema_real_eip !18
  store i1 %72, i1* %AF, !mcsema_real_eip !18
  %73 = lshr i64 %68, 63, !mcsema_real_eip !18
  %74 = trunc i64 %73 to i1, !mcsema_real_eip !18
  store i1 %74, i1* %SF, !mcsema_real_eip !18
  %75 = icmp eq i64 %68, 0, !mcsema_real_eip !18
  store i1 %75, i1* %ZF, !mcsema_real_eip !18
  %76 = xor i64 %R9_val.22, %RSI_val.23, !mcsema_real_eip !18
  %77 = xor i64 %76, -1, !mcsema_real_eip !18
  %78 = xor i64 %R9_val.22, %68, !mcsema_real_eip !18
  %79 = and i64 %77, %78, !mcsema_real_eip !18
  %80 = lshr i64 %79, 63, !mcsema_real_eip !18
  %81 = and i64 %80, 1, !mcsema_real_eip !18
  %82 = trunc i64 %81 to i1, !mcsema_real_eip !18
  store i1 %82, i1* %OF, !mcsema_real_eip !18
  %83 = trunc i64 %68 to i8, !mcsema_real_eip !18
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !18
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !18
  %86 = xor i1 %85, true, !mcsema_real_eip !18
  store i1 %86, i1* %PF, !mcsema_real_eip !18
  %87 = icmp ult i64 %68, %R9_val.22, !mcsema_real_eip !18
  store i1 %87, i1* %CF, !mcsema_real_eip !18
  store i64 %68, i64* %R9, !mcsema_real_eip !18
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !19
  %88 = add i64 %RBP_val.24, -20, !mcsema_real_eip !19
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !19
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !19
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !19
  %92 = load i32, i32* %91, !mcsema_real_eip !19
  %93 = sext i32 %92 to i64, !mcsema_real_eip !19
  store i64 %93, i64* %XSI, !mcsema_real_eip !19
  %R9_val.25 = load i64, i64* %R9, !mcsema_real_eip !20
  %94 = add i64 %R9_val.25, 0, !mcsema_real_eip !20
  %RSI_val.26 = load i64, i64* %XSI, !mcsema_real_eip !20
  %95 = add i64 %94, %RSI_val.26, !mcsema_real_eip !20
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !20
  %97 = ptrtoint i64* %96 to i64, !mcsema_real_eip !20
  %98 = inttoptr i64 %97 to i8*, !mcsema_real_eip !20
  store i8 88, i8* %98, !mcsema_real_eip !20
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !21
  %99 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !21
  store i64 %99, i64* %XDI, !mcsema_real_eip !21
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  store i64 %R8_val.29, i64* %XSI, !mcsema_real_eip !22
  %RDI_val.30 = load i64, i64* %XDI, !mcsema_real_eip !23
  %RSI_val.31 = load i64, i64* %XSI, !mcsema_real_eip !23
  %RDX_val.32 = load i64, i64* %XDX, !mcsema_real_eip !23
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !23
  %100 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !23
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %101, !mcsema_real_eip !23
  store i64 %100, i64* %XSP, !mcsema_real_eip !23
  %102 = call x86_64_sysvcc i64 @_read(i64 %RDI_val.30, i64 %RSI_val.31, i64 %RDX_val.32), !mcsema_real_eip !23
  store i64 %102, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !24
  %103 = add i64 %RBP_val.34, -72, !mcsema_real_eip !24
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !24
  %RAX_val.35 = load i64, i64* %XAX, !mcsema_real_eip !24
  store i64 %RAX_val.35, i64* %104, !mcsema_real_eip !24
  br label %block_0x114, !mcsema_real_eip !25

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !25
  %105 = add i64 %RBP_val.36, -36, !mcsema_real_eip !25
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %107 = ptrtoint i64* %106 to i64, !mcsema_real_eip !25
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !25
  %109 = load i32, i32* %108, !mcsema_real_eip !25
  %110 = sub i32 %109, 28, !mcsema_real_eip !25
  %111 = xor i32 %110, %109, !mcsema_real_eip !25
  %112 = xor i32 %111, 28, !mcsema_real_eip !25
  %113 = and i32 %112, 16, !mcsema_real_eip !25
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !25
  store i1 %114, i1* %AF, !mcsema_real_eip !25
  %115 = trunc i32 %110 to i8, !mcsema_real_eip !25
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !25
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !25
  %118 = xor i1 %117, true, !mcsema_real_eip !25
  store i1 %118, i1* %PF, !mcsema_real_eip !25
  %119 = icmp eq i32 %110, 0, !mcsema_real_eip !25
  store i1 %119, i1* %ZF, !mcsema_real_eip !25
  %120 = lshr i32 %110, 31, !mcsema_real_eip !25
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !25
  store i1 %121, i1* %SF, !mcsema_real_eip !25
  %122 = icmp ult i32 %109, 28, !mcsema_real_eip !25
  store i1 %122, i1* %CF, !mcsema_real_eip !25
  %123 = xor i32 %109, 28, !mcsema_real_eip !25
  %124 = xor i32 %109, %110, !mcsema_real_eip !25
  %125 = and i32 %123, %124, !mcsema_real_eip !25
  %126 = lshr i32 %125, 31, !mcsema_real_eip !25
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !25
  store i1 %127, i1* %OF, !mcsema_real_eip !25
  %128 = load i1, i1* %OF, !mcsema_real_eip !26
  %129 = load i1, i1* %SF, !mcsema_real_eip !26
  %130 = icmp eq i1 %129, %128, !mcsema_real_eip !26
  br i1 %130, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !26

block_0x11e:                                      ; preds = %block_0x114
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !27
  %131 = add i64 %RBP_val.45, -20, !mcsema_real_eip !27
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !27
  %133 = ptrtoint i64* %132 to i64, !mcsema_real_eip !27
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !27
  %135 = load i32, i32* %134, !mcsema_real_eip !27
  %136 = zext i32 %135 to i64, !mcsema_real_eip !27
  store i64 %136, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !28
  %137 = add i64 %RBP_val.46, -28, !mcsema_real_eip !28
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !28
  %EAX.47 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.48 = load i32, i32* %EAX.47, !mcsema_real_eip !28
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !28
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.48, i32* %140, !mcsema_real_eip !28
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !29
  %141 = add i64 %RBP_val.49, -24, !mcsema_real_eip !29
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !29
  %143 = ptrtoint i64* %142 to i64, !mcsema_real_eip !29
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !29
  %145 = load i32, i32* %144, !mcsema_real_eip !29
  %146 = zext i32 %145 to i64, !mcsema_real_eip !29
  store i64 %146, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !30
  %147 = add i64 %RBP_val.50, -32, !mcsema_real_eip !30
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !30
  %EAX.51 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.52 = load i32, i32* %EAX.51, !mcsema_real_eip !30
  %149 = ptrtoint i64* %148 to i64, !mcsema_real_eip !30
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.52, i32* %150, !mcsema_real_eip !30
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !31
  %151 = add i64 %RBP_val.53, -36, !mcsema_real_eip !31
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !31
  %153 = ptrtoint i64* %152 to i64, !mcsema_real_eip !31
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !31
  %155 = load i32, i32* %154, !mcsema_real_eip !31
  %156 = sext i32 %155 to i64, !mcsema_real_eip !31
  store i64 %156, i64* %XCX, !mcsema_real_eip !31
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !32
  %157 = add i64 %RBP_val.54, -64, !mcsema_real_eip !32
  %RCX_val.55 = load i64, i64* %XCX, !mcsema_real_eip !32
  %158 = add i64 %157, %RCX_val.55, !mcsema_real_eip !32
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !32
  %160 = ptrtoint i64* %159 to i64, !mcsema_real_eip !32
  %161 = inttoptr i64 %160 to i8*, !mcsema_real_eip !32
  %162 = load i8, i8* %161, !mcsema_real_eip !32
  %163 = sext i8 %162 to i32, !mcsema_real_eip !32
  %164 = zext i32 %163 to i64, !mcsema_real_eip !32
  store i64 %164, i64* %XAX, !mcsema_real_eip !32
  %EAX.56 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.57 = load i32, i32* %EAX.56, !mcsema_real_eip !33
  %165 = add i32 -97, %EAX_val.57, !mcsema_real_eip !33
  %166 = xor i32 %165, %EAX_val.57, !mcsema_real_eip !33
  %167 = xor i32 %166, -97, !mcsema_real_eip !33
  %168 = and i32 %167, 16, !mcsema_real_eip !33
  %169 = icmp ne i32 %168, 0, !mcsema_real_eip !33
  store i1 %169, i1* %AF, !mcsema_real_eip !33
  %170 = lshr i32 %165, 31, !mcsema_real_eip !33
  %171 = trunc i32 %170 to i1, !mcsema_real_eip !33
  store i1 %171, i1* %SF, !mcsema_real_eip !33
  %172 = icmp eq i32 %165, 0, !mcsema_real_eip !33
  store i1 %172, i1* %ZF, !mcsema_real_eip !33
  %173 = xor i32 %EAX_val.57, -97, !mcsema_real_eip !33
  %174 = xor i32 %173, -1, !mcsema_real_eip !33
  %175 = xor i32 %EAX_val.57, %165, !mcsema_real_eip !33
  %176 = and i32 %174, %175, !mcsema_real_eip !33
  %177 = lshr i32 %176, 31, !mcsema_real_eip !33
  %178 = and i32 %177, 1, !mcsema_real_eip !33
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !33
  store i1 %179, i1* %OF, !mcsema_real_eip !33
  %180 = trunc i32 %165 to i8, !mcsema_real_eip !33
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !33
  %182 = trunc i8 %181 to i1, !mcsema_real_eip !33
  %183 = xor i1 %182, true, !mcsema_real_eip !33
  store i1 %183, i1* %PF, !mcsema_real_eip !33
  %184 = icmp ult i32 %165, %EAX_val.57, !mcsema_real_eip !33
  store i1 %184, i1* %CF, !mcsema_real_eip !33
  %185 = zext i32 %165 to i64, !mcsema_real_eip !33
  store i64 %185, i64* %XAX, !mcsema_real_eip !33
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !34
  %186 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !34
  store i64 %186, i64* %XCX, !mcsema_real_eip !34
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !35
  %187 = sub i32 %EAX_val.61, 22, !mcsema_real_eip !35
  %188 = xor i32 %187, %EAX_val.61, !mcsema_real_eip !35
  %189 = xor i32 %188, 22, !mcsema_real_eip !35
  %190 = and i32 %189, 16, !mcsema_real_eip !35
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !35
  store i1 %191, i1* %AF, !mcsema_real_eip !35
  %192 = trunc i32 %187 to i8, !mcsema_real_eip !35
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !35
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !35
  %195 = xor i1 %194, true, !mcsema_real_eip !35
  store i1 %195, i1* %PF, !mcsema_real_eip !35
  %196 = icmp eq i32 %187, 0, !mcsema_real_eip !35
  store i1 %196, i1* %ZF, !mcsema_real_eip !35
  %197 = lshr i32 %187, 31, !mcsema_real_eip !35
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !35
  store i1 %198, i1* %SF, !mcsema_real_eip !35
  %199 = icmp ult i32 %EAX_val.61, 22, !mcsema_real_eip !35
  store i1 %199, i1* %CF, !mcsema_real_eip !35
  %200 = xor i32 %EAX_val.61, 22, !mcsema_real_eip !35
  %201 = xor i32 %EAX_val.61, %187, !mcsema_real_eip !35
  %202 = and i32 %200, %201, !mcsema_real_eip !35
  %203 = lshr i32 %202, 31, !mcsema_real_eip !35
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !35
  store i1 %204, i1* %OF, !mcsema_real_eip !35
  %205 = zext i32 %187 to i64, !mcsema_real_eip !35
  store i64 %205, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !36
  %206 = add i64 %RBP_val.62, -80, !mcsema_real_eip !36
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !36
  %RCX_val.63 = load i64, i64* %XCX, !mcsema_real_eip !36
  store i64 %RCX_val.63, i64* %207, !mcsema_real_eip !36
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !37
  %208 = add i64 %RBP_val.64, -84, !mcsema_real_eip !37
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !37
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !37
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !37
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.66, i32* %211, !mcsema_real_eip !37
  %212 = load i1, i1* %ZF, !mcsema_real_eip !38
  %213 = icmp eq i1 %212, false, !mcsema_real_eip !38
  %214 = load i1, i1* %CF, !mcsema_real_eip !38
  %215 = icmp eq i1 %214, false, !mcsema_real_eip !38
  %216 = and i1 %215, %213, !mcsema_real_eip !38
  br i1 %216, label %block_0x18e, label %block_0x148, !mcsema_real_eip !38

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !39
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !40
  store i8 0, i8* %AL.37, !mcsema_real_eip !40
  %RDI_val.38 = load i64, i64* %XDI, !mcsema_real_eip !41
  %RSI_val.39 = load i64, i64* %XSI, !mcsema_real_eip !41
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !41
  %217 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !41
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !41
  store i64 -2415393069852865332, i64* %218, !mcsema_real_eip !41
  store i64 %217, i64* %XSP, !mcsema_real_eip !41
  %219 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.38, i64 %RSI_val.39), !mcsema_real_eip !41
  store i64 %219, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !42
  %220 = add i64 %RBP_val.41, -4, !mcsema_real_eip !42
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !42
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !42
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !42
  store i32 1, i32* %223, !mcsema_real_eip !42
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !43
  %224 = add i64 %RBP_val.42, -108, !mcsema_real_eip !43
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !43
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !43
  %226 = ptrtoint i64* %225 to i64, !mcsema_real_eip !43
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.44, i32* %227, !mcsema_real_eip !43
  br label %block_0x312, !mcsema_real_eip !27

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !44
  %228 = add i64 %RBP_val.67, -4, !mcsema_real_eip !44
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !44
  %230 = ptrtoint i64* %229 to i64, !mcsema_real_eip !44
  %231 = inttoptr i64 %230 to i32*, !mcsema_real_eip !44
  %232 = load i32, i32* %231, !mcsema_real_eip !44
  %233 = zext i32 %232 to i64, !mcsema_real_eip !44
  store i64 %233, i64* %XAX, !mcsema_real_eip !44
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !45
  %234 = add i64 112, %RSP_val.68, !mcsema_real_eip !45
  %235 = xor i64 %234, %RSP_val.68, !mcsema_real_eip !45
  %236 = xor i64 %235, 112, !mcsema_real_eip !45
  %237 = and i64 %236, 16, !mcsema_real_eip !45
  %238 = icmp ne i64 %237, 0, !mcsema_real_eip !45
  store i1 %238, i1* %AF, !mcsema_real_eip !45
  %239 = lshr i64 %234, 63, !mcsema_real_eip !45
  %240 = trunc i64 %239 to i1, !mcsema_real_eip !45
  store i1 %240, i1* %SF, !mcsema_real_eip !45
  %241 = icmp eq i64 %234, 0, !mcsema_real_eip !45
  store i1 %241, i1* %ZF, !mcsema_real_eip !45
  %242 = xor i64 %RSP_val.68, 112, !mcsema_real_eip !45
  %243 = xor i64 %242, -1, !mcsema_real_eip !45
  %244 = xor i64 %RSP_val.68, %234, !mcsema_real_eip !45
  %245 = and i64 %243, %244, !mcsema_real_eip !45
  %246 = lshr i64 %245, 63, !mcsema_real_eip !45
  %247 = and i64 %246, 1, !mcsema_real_eip !45
  %248 = trunc i64 %247 to i1, !mcsema_real_eip !45
  store i1 %248, i1* %OF, !mcsema_real_eip !45
  %249 = trunc i64 %234 to i8, !mcsema_real_eip !45
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !45
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !45
  %252 = xor i1 %251, true, !mcsema_real_eip !45
  store i1 %252, i1* %PF, !mcsema_real_eip !45
  %253 = icmp ult i64 %234, %RSP_val.68, !mcsema_real_eip !45
  store i1 %253, i1* %CF, !mcsema_real_eip !45
  store i64 %234, i64* %XSP, !mcsema_real_eip !45
  %RSP_val.69 = load i64, i64* %XSP, !mcsema_real_eip !46
  %254 = inttoptr i64 %RSP_val.69 to i64*, !mcsema_real_eip !46
  %255 = load i64, i64* %254, !mcsema_real_eip !46
  store i64 %255, i64* %XBP, !mcsema_real_eip !46
  %256 = add i64 %RSP_val.69, 8, !mcsema_real_eip !46
  store i64 %256, i64* %XSP, !mcsema_real_eip !46
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !47
  %257 = add i64 %RSP_val.70, 8, !mcsema_real_eip !47
  %258 = inttoptr i64 %RSP_val.70 to i64*, !mcsema_real_eip !47
  %259 = load i64, i64* %258, !mcsema_real_eip !47
  store i64 %259, i64* %XIP, !mcsema_real_eip !47
  store i64 %257, i64* %XSP, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x148:                                      ; preds = %block_0x11e
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !48
  %260 = add i64 %RBP_val.87, -80, !mcsema_real_eip !48
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !48
  %262 = load i64, i64* %261, !mcsema_real_eip !48
  store i64 %262, i64* %XAX, !mcsema_real_eip !48
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !49
  %263 = mul i64 %RAX_val.88, 8, !mcsema_real_eip !49
  %264 = add i64 ptrtoint (%0* @data_0x320 to i64), %263, !mcsema_real_eip !49
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !49
  %266 = load i64, i64* %265, !mcsema_real_eip !49
  store i64 %266, i64* %XCX, !mcsema_real_eip !49
  %RCX_val.89 = load i64, i64* %XCX, !mcsema_real_eip !50
  switch i64 %RCX_val.89, label %474 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !50

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !51
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.71, !mcsema_real_eip !52
  %RDI_val.72 = load i64, i64* %XDI, !mcsema_real_eip !53
  %RSI_val.73 = load i64, i64* %XSI, !mcsema_real_eip !53
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !53
  %267 = sub i64 %RSP_val.74, 8, !mcsema_real_eip !53
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !53
  store i64 -2415393069852865332, i64* %268, !mcsema_real_eip !53
  store i64 %267, i64* %XSP, !mcsema_real_eip !53
  %269 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.72, i64 %RSI_val.73), !mcsema_real_eip !53
  store i64 %269, i64* %XAX, !mcsema_real_eip !53
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !54
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !55
  %270 = add i64 %RBP_val.75, -88, !mcsema_real_eip !55
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !55
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !55
  %272 = ptrtoint i64* %271 to i64, !mcsema_real_eip !55
  %273 = inttoptr i64 %272 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.77, i32* %273, !mcsema_real_eip !55
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.78, !mcsema_real_eip !56
  %RDI_val.79 = load i64, i64* %XDI, !mcsema_real_eip !57
  %RSI_val.80 = load i64, i64* %XSI, !mcsema_real_eip !57
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !57
  %274 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !57
  %275 = inttoptr i64 %274 to i64*, !mcsema_real_eip !57
  store i64 -2415393069852865332, i64* %275, !mcsema_real_eip !57
  store i64 %274, i64* %XSP, !mcsema_real_eip !57
  %276 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80), !mcsema_real_eip !57
  store i64 %276, i64* %XAX, !mcsema_real_eip !57
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !58
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !59
  %277 = add i64 %RBP_val.82, -92, !mcsema_real_eip !59
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !59
  %EAX.83 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.84 = load i32, i32* %EAX.83, !mcsema_real_eip !59
  %279 = ptrtoint i64* %278 to i64, !mcsema_real_eip !59
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.84, i32* %280, !mcsema_real_eip !59
  %RDI_val.85 = load i64, i64* %XDI, !mcsema_real_eip !60
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %281 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !60
  %282 = inttoptr i64 %281 to i64*, !mcsema_real_eip !60
  store i64 -2415393069852865332, i64* %282, !mcsema_real_eip !60
  store i64 %281, i64* %XSP, !mcsema_real_eip !60
  %283 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85), !mcsema_real_eip !60
  store i64 %283, i64* %XAX, !mcsema_real_eip !60
  br label %block_0x1c0, !mcsema_real_eip !48

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !61
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !62
  %284 = add i64 %RBP_val.90, -24, !mcsema_real_eip !62
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !62
  %286 = ptrtoint i64* %285 to i64, !mcsema_real_eip !62
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !62
  %288 = load i32, i32* %287, !mcsema_real_eip !62
  %289 = sext i32 %288 to i64, !mcsema_real_eip !62
  store i64 %289, i64* %XCX, !mcsema_real_eip !62
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !63
  %290 = sext i64 %RCX_val.91 to i128, !mcsema_real_eip !63
  %291 = mul i128 %290, 11, !mcsema_real_eip !63
  %292 = trunc i128 %291 to i64, !mcsema_real_eip !63
  %293 = sext i64 %292 to i128, !mcsema_real_eip !63
  %294 = icmp ne i128 %293, %291, !mcsema_real_eip !63
  %295 = icmp slt i64 %292, 0, !mcsema_real_eip !63
  store i1 %295, i1* %SF, !mcsema_real_eip !63
  store i1 %294, i1* %OF, !mcsema_real_eip !63
  store i1 %294, i1* %CF, !mcsema_real_eip !63
  store i64 %292, i64* %XCX, !mcsema_real_eip !63
  %RAX_val.92 = load i64, i64* %XAX, !mcsema_real_eip !64
  %RCX_val.93 = load i64, i64* %XCX, !mcsema_real_eip !64
  %296 = add i64 %RCX_val.93, %RAX_val.92, !mcsema_real_eip !64
  %297 = xor i64 %296, %RAX_val.92, !mcsema_real_eip !64
  %298 = xor i64 %297, %RCX_val.93, !mcsema_real_eip !64
  %299 = and i64 %298, 16, !mcsema_real_eip !64
  %300 = icmp ne i64 %299, 0, !mcsema_real_eip !64
  store i1 %300, i1* %AF, !mcsema_real_eip !64
  %301 = lshr i64 %296, 63, !mcsema_real_eip !64
  %302 = trunc i64 %301 to i1, !mcsema_real_eip !64
  store i1 %302, i1* %SF, !mcsema_real_eip !64
  %303 = icmp eq i64 %296, 0, !mcsema_real_eip !64
  store i1 %303, i1* %ZF, !mcsema_real_eip !64
  %304 = xor i64 %RAX_val.92, %RCX_val.93, !mcsema_real_eip !64
  %305 = xor i64 %304, -1, !mcsema_real_eip !64
  %306 = xor i64 %RAX_val.92, %296, !mcsema_real_eip !64
  %307 = and i64 %305, %306, !mcsema_real_eip !64
  %308 = lshr i64 %307, 63, !mcsema_real_eip !64
  %309 = and i64 %308, 1, !mcsema_real_eip !64
  %310 = trunc i64 %309 to i1, !mcsema_real_eip !64
  store i1 %310, i1* %OF, !mcsema_real_eip !64
  %311 = trunc i64 %296 to i8, !mcsema_real_eip !64
  %312 = call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !64
  %313 = trunc i8 %312 to i1, !mcsema_real_eip !64
  %314 = xor i1 %313, true, !mcsema_real_eip !64
  store i1 %314, i1* %PF, !mcsema_real_eip !64
  %315 = icmp ult i64 %296, %RAX_val.92, !mcsema_real_eip !64
  store i1 %315, i1* %CF, !mcsema_real_eip !64
  store i64 %296, i64* %XAX, !mcsema_real_eip !64
  %RBP_val.94 = load i64, i64* %XBP, !mcsema_real_eip !65
  %316 = add i64 %RBP_val.94, -20, !mcsema_real_eip !65
  %317 = inttoptr i64 %316 to i64*, !mcsema_real_eip !65
  %318 = ptrtoint i64* %317 to i64, !mcsema_real_eip !65
  %319 = inttoptr i64 %318 to i32*, !mcsema_real_eip !65
  %320 = load i32, i32* %319, !mcsema_real_eip !65
  %321 = sext i32 %320 to i64, !mcsema_real_eip !65
  store i64 %321, i64* %XCX, !mcsema_real_eip !65
  %RAX_val.95 = load i64, i64* %XAX, !mcsema_real_eip !66
  %322 = add i64 %RAX_val.95, 0, !mcsema_real_eip !66
  %RCX_val.96 = load i64, i64* %XCX, !mcsema_real_eip !66
  %323 = add i64 %322, %RCX_val.96, !mcsema_real_eip !66
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !66
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !66
  %326 = inttoptr i64 %325 to i8*, !mcsema_real_eip !66
  %327 = load i8, i8* %326, !mcsema_real_eip !66
  %328 = sext i8 %327 to i32, !mcsema_real_eip !66
  %329 = zext i32 %328 to i64, !mcsema_real_eip !66
  store i64 %329, i64* %XDX, !mcsema_real_eip !66
  %EDX.97 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.98 = load i32, i32* %EDX.97, !mcsema_real_eip !67
  %330 = sub i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %331 = xor i32 %330, %EDX_val.98, !mcsema_real_eip !67
  %332 = xor i32 %331, 35, !mcsema_real_eip !67
  %333 = and i32 %332, 16, !mcsema_real_eip !67
  %334 = icmp ne i32 %333, 0, !mcsema_real_eip !67
  store i1 %334, i1* %AF, !mcsema_real_eip !67
  %335 = trunc i32 %330 to i8, !mcsema_real_eip !67
  %336 = call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !67
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !67
  %338 = xor i1 %337, true, !mcsema_real_eip !67
  store i1 %338, i1* %PF, !mcsema_real_eip !67
  %339 = icmp eq i32 %330, 0, !mcsema_real_eip !67
  store i1 %339, i1* %ZF, !mcsema_real_eip !67
  %340 = lshr i32 %330, 31, !mcsema_real_eip !67
  %341 = trunc i32 %340 to i1, !mcsema_real_eip !67
  store i1 %341, i1* %SF, !mcsema_real_eip !67
  %342 = icmp ult i32 %EDX_val.98, 35, !mcsema_real_eip !67
  store i1 %342, i1* %CF, !mcsema_real_eip !67
  %343 = xor i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %344 = xor i32 %EDX_val.98, %330, !mcsema_real_eip !67
  %345 = and i32 %343, %344, !mcsema_real_eip !67
  %346 = lshr i32 %345, 31, !mcsema_real_eip !67
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !67
  store i1 %347, i1* %OF, !mcsema_real_eip !67
  %348 = load i1, i1* %ZF, !mcsema_real_eip !68
  %349 = icmp eq i1 %348, false, !mcsema_real_eip !68
  br i1 %349, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !68

block_0x156:                                      ; preds = %block_0x148
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !69
  %350 = add i64 %RBP_val.117, -24, !mcsema_real_eip !69
  %351 = inttoptr i64 %350 to i64*, !mcsema_real_eip !69
  %352 = ptrtoint i64* %351 to i64, !mcsema_real_eip !69
  %353 = inttoptr i64 %352 to i32*, !mcsema_real_eip !69
  %354 = load i32, i32* %353, !mcsema_real_eip !69
  %355 = zext i32 %354 to i64, !mcsema_real_eip !69
  store i64 %355, i64* %XAX, !mcsema_real_eip !69
  %EAX.118 = bitcast i64* %XAX to i32*, !mcsema_real_eip !70
  %EAX_val.119 = load i32, i32* %EAX.118, !mcsema_real_eip !70
  %356 = add i32 -1, %EAX_val.119, !mcsema_real_eip !70
  %357 = xor i32 %356, %EAX_val.119, !mcsema_real_eip !70
  %358 = xor i32 %357, -1, !mcsema_real_eip !70
  %359 = and i32 %358, 16, !mcsema_real_eip !70
  %360 = icmp ne i32 %359, 0, !mcsema_real_eip !70
  store i1 %360, i1* %AF, !mcsema_real_eip !70
  %361 = lshr i32 %356, 31, !mcsema_real_eip !70
  %362 = trunc i32 %361 to i1, !mcsema_real_eip !70
  store i1 %362, i1* %SF, !mcsema_real_eip !70
  %363 = icmp eq i32 %356, 0, !mcsema_real_eip !70
  store i1 %363, i1* %ZF, !mcsema_real_eip !70
  %364 = xor i32 %EAX_val.119, -1, !mcsema_real_eip !70
  %365 = xor i32 %364, -1, !mcsema_real_eip !70
  %366 = xor i32 %EAX_val.119, %356, !mcsema_real_eip !70
  %367 = and i32 %365, %366, !mcsema_real_eip !70
  %368 = lshr i32 %367, 31, !mcsema_real_eip !70
  %369 = and i32 %368, 1, !mcsema_real_eip !70
  %370 = trunc i32 %369 to i1, !mcsema_real_eip !70
  store i1 %370, i1* %OF, !mcsema_real_eip !70
  %371 = trunc i32 %356 to i8, !mcsema_real_eip !70
  %372 = call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !70
  %373 = trunc i8 %372 to i1, !mcsema_real_eip !70
  %374 = xor i1 %373, true, !mcsema_real_eip !70
  store i1 %374, i1* %PF, !mcsema_real_eip !70
  %375 = icmp ult i32 %356, %EAX_val.119, !mcsema_real_eip !70
  store i1 %375, i1* %CF, !mcsema_real_eip !70
  %376 = zext i32 %356 to i64, !mcsema_real_eip !70
  store i64 %376, i64* %XAX, !mcsema_real_eip !70
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !71
  %377 = add i64 %RBP_val.120, -24, !mcsema_real_eip !71
  %378 = inttoptr i64 %377 to i64*, !mcsema_real_eip !71
  %EAX.121 = bitcast i64* %XAX to i32*, !mcsema_real_eip !71
  %EAX_val.122 = load i32, i32* %EAX.121, !mcsema_real_eip !71
  %379 = ptrtoint i64* %378 to i64, !mcsema_real_eip !71
  %380 = inttoptr i64 %379 to i32*, !mcsema_real_eip !71
  store i32 %EAX_val.122, i32* %380, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x164:                                      ; preds = %block_0x148
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !73
  %381 = add i64 %RBP_val.111, -24, !mcsema_real_eip !73
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !73
  %383 = ptrtoint i64* %382 to i64, !mcsema_real_eip !73
  %384 = inttoptr i64 %383 to i32*, !mcsema_real_eip !73
  %385 = load i32, i32* %384, !mcsema_real_eip !73
  %386 = zext i32 %385 to i64, !mcsema_real_eip !73
  store i64 %386, i64* %XAX, !mcsema_real_eip !73
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !74
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !74
  %387 = add i32 1, %EAX_val.113, !mcsema_real_eip !74
  %388 = xor i32 %387, %EAX_val.113, !mcsema_real_eip !74
  %389 = xor i32 %388, 1, !mcsema_real_eip !74
  %390 = and i32 %389, 16, !mcsema_real_eip !74
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !74
  store i1 %391, i1* %AF, !mcsema_real_eip !74
  %392 = lshr i32 %387, 31, !mcsema_real_eip !74
  %393 = trunc i32 %392 to i1, !mcsema_real_eip !74
  store i1 %393, i1* %SF, !mcsema_real_eip !74
  %394 = icmp eq i32 %387, 0, !mcsema_real_eip !74
  store i1 %394, i1* %ZF, !mcsema_real_eip !74
  %395 = xor i32 %EAX_val.113, 1, !mcsema_real_eip !74
  %396 = xor i32 %395, -1, !mcsema_real_eip !74
  %397 = xor i32 %EAX_val.113, %387, !mcsema_real_eip !74
  %398 = and i32 %396, %397, !mcsema_real_eip !74
  %399 = lshr i32 %398, 31, !mcsema_real_eip !74
  %400 = and i32 %399, 1, !mcsema_real_eip !74
  %401 = trunc i32 %400 to i1, !mcsema_real_eip !74
  store i1 %401, i1* %OF, !mcsema_real_eip !74
  %402 = trunc i32 %387 to i8, !mcsema_real_eip !74
  %403 = call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !74
  %404 = trunc i8 %403 to i1, !mcsema_real_eip !74
  %405 = xor i1 %404, true, !mcsema_real_eip !74
  store i1 %405, i1* %PF, !mcsema_real_eip !74
  %406 = icmp ult i32 %387, %EAX_val.113, !mcsema_real_eip !74
  store i1 %406, i1* %CF, !mcsema_real_eip !74
  %407 = zext i32 %387 to i64, !mcsema_real_eip !74
  store i64 %407, i64* %XAX, !mcsema_real_eip !74
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !75
  %408 = add i64 %RBP_val.114, -24, !mcsema_real_eip !75
  %409 = inttoptr i64 %408 to i64*, !mcsema_real_eip !75
  %EAX.115 = bitcast i64* %XAX to i32*, !mcsema_real_eip !75
  %EAX_val.116 = load i32, i32* %EAX.115, !mcsema_real_eip !75
  %410 = ptrtoint i64* %409 to i64, !mcsema_real_eip !75
  %411 = inttoptr i64 %410 to i32*, !mcsema_real_eip !75
  store i32 %EAX_val.116, i32* %411, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

block_0x172:                                      ; preds = %block_0x148
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !77
  %412 = add i64 %RBP_val.105, -20, !mcsema_real_eip !77
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !77
  %414 = ptrtoint i64* %413 to i64, !mcsema_real_eip !77
  %415 = inttoptr i64 %414 to i32*, !mcsema_real_eip !77
  %416 = load i32, i32* %415, !mcsema_real_eip !77
  %417 = zext i32 %416 to i64, !mcsema_real_eip !77
  store i64 %417, i64* %XAX, !mcsema_real_eip !77
  %EAX.106 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.107 = load i32, i32* %EAX.106, !mcsema_real_eip !78
  %418 = add i32 -1, %EAX_val.107, !mcsema_real_eip !78
  %419 = xor i32 %418, %EAX_val.107, !mcsema_real_eip !78
  %420 = xor i32 %419, -1, !mcsema_real_eip !78
  %421 = and i32 %420, 16, !mcsema_real_eip !78
  %422 = icmp ne i32 %421, 0, !mcsema_real_eip !78
  store i1 %422, i1* %AF, !mcsema_real_eip !78
  %423 = lshr i32 %418, 31, !mcsema_real_eip !78
  %424 = trunc i32 %423 to i1, !mcsema_real_eip !78
  store i1 %424, i1* %SF, !mcsema_real_eip !78
  %425 = icmp eq i32 %418, 0, !mcsema_real_eip !78
  store i1 %425, i1* %ZF, !mcsema_real_eip !78
  %426 = xor i32 %EAX_val.107, -1, !mcsema_real_eip !78
  %427 = xor i32 %426, -1, !mcsema_real_eip !78
  %428 = xor i32 %EAX_val.107, %418, !mcsema_real_eip !78
  %429 = and i32 %427, %428, !mcsema_real_eip !78
  %430 = lshr i32 %429, 31, !mcsema_real_eip !78
  %431 = and i32 %430, 1, !mcsema_real_eip !78
  %432 = trunc i32 %431 to i1, !mcsema_real_eip !78
  store i1 %432, i1* %OF, !mcsema_real_eip !78
  %433 = trunc i32 %418 to i8, !mcsema_real_eip !78
  %434 = call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !78
  %435 = trunc i8 %434 to i1, !mcsema_real_eip !78
  %436 = xor i1 %435, true, !mcsema_real_eip !78
  store i1 %436, i1* %PF, !mcsema_real_eip !78
  %437 = icmp ult i32 %418, %EAX_val.107, !mcsema_real_eip !78
  store i1 %437, i1* %CF, !mcsema_real_eip !78
  %438 = zext i32 %418 to i64, !mcsema_real_eip !78
  store i64 %438, i64* %XAX, !mcsema_real_eip !78
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !79
  %439 = add i64 %RBP_val.108, -20, !mcsema_real_eip !79
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !79
  %EAX.109 = bitcast i64* %XAX to i32*, !mcsema_real_eip !79
  %EAX_val.110 = load i32, i32* %EAX.109, !mcsema_real_eip !79
  %441 = ptrtoint i64* %440 to i64, !mcsema_real_eip !79
  %442 = inttoptr i64 %441 to i32*, !mcsema_real_eip !79
  store i32 %EAX_val.110, i32* %442, !mcsema_real_eip !79
  br label %block_0x1c0, !mcsema_real_eip !80

block_0x180:                                      ; preds = %block_0x148
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !81
  %443 = add i64 %RBP_val.99, -20, !mcsema_real_eip !81
  %444 = inttoptr i64 %443 to i64*, !mcsema_real_eip !81
  %445 = ptrtoint i64* %444 to i64, !mcsema_real_eip !81
  %446 = inttoptr i64 %445 to i32*, !mcsema_real_eip !81
  %447 = load i32, i32* %446, !mcsema_real_eip !81
  %448 = zext i32 %447 to i64, !mcsema_real_eip !81
  store i64 %448, i64* %XAX, !mcsema_real_eip !81
  %EAX.100 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.101 = load i32, i32* %EAX.100, !mcsema_real_eip !82
  %449 = add i32 1, %EAX_val.101, !mcsema_real_eip !82
  %450 = xor i32 %449, %EAX_val.101, !mcsema_real_eip !82
  %451 = xor i32 %450, 1, !mcsema_real_eip !82
  %452 = and i32 %451, 16, !mcsema_real_eip !82
  %453 = icmp ne i32 %452, 0, !mcsema_real_eip !82
  store i1 %453, i1* %AF, !mcsema_real_eip !82
  %454 = lshr i32 %449, 31, !mcsema_real_eip !82
  %455 = trunc i32 %454 to i1, !mcsema_real_eip !82
  store i1 %455, i1* %SF, !mcsema_real_eip !82
  %456 = icmp eq i32 %449, 0, !mcsema_real_eip !82
  store i1 %456, i1* %ZF, !mcsema_real_eip !82
  %457 = xor i32 %EAX_val.101, 1, !mcsema_real_eip !82
  %458 = xor i32 %457, -1, !mcsema_real_eip !82
  %459 = xor i32 %EAX_val.101, %449, !mcsema_real_eip !82
  %460 = and i32 %458, %459, !mcsema_real_eip !82
  %461 = lshr i32 %460, 31, !mcsema_real_eip !82
  %462 = and i32 %461, 1, !mcsema_real_eip !82
  %463 = trunc i32 %462 to i1, !mcsema_real_eip !82
  store i1 %463, i1* %OF, !mcsema_real_eip !82
  %464 = trunc i32 %449 to i8, !mcsema_real_eip !82
  %465 = call i8 @llvm.ctpop.i8(i8 %464), !mcsema_real_eip !82
  %466 = trunc i8 %465 to i1, !mcsema_real_eip !82
  %467 = xor i1 %466, true, !mcsema_real_eip !82
  store i1 %467, i1* %PF, !mcsema_real_eip !82
  %468 = icmp ult i32 %449, %EAX_val.101, !mcsema_real_eip !82
  store i1 %468, i1* %CF, !mcsema_real_eip !82
  %469 = zext i32 %449 to i64, !mcsema_real_eip !82
  store i64 %469, i64* %XAX, !mcsema_real_eip !82
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !83
  %470 = add i64 %RBP_val.102, -20, !mcsema_real_eip !83
  %471 = inttoptr i64 %470 to i64*, !mcsema_real_eip !83
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !83
  %472 = ptrtoint i64* %471 to i64, !mcsema_real_eip !83
  %473 = inttoptr i64 %472 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %473, !mcsema_real_eip !83
  br label %block_0x1c0, !mcsema_real_eip !84

; <label>:474:                                    ; preds = %block_0x148
  store i64 %RCX_val.89, i64* %XIP, !mcsema_real_eip !50
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !50
  ret void, !mcsema_real_eip !50

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !85
  %AL.132 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.132, !mcsema_real_eip !86
  %RDI_val.133 = load i64, i64* %XDI, !mcsema_real_eip !87
  %RSI_val.134 = load i64, i64* %XSI, !mcsema_real_eip !87
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !87
  %475 = sub i64 %RSP_val.135, 8, !mcsema_real_eip !87
  %476 = inttoptr i64 %475 to i64*, !mcsema_real_eip !87
  store i64 -2415393069852865332, i64* %476, !mcsema_real_eip !87
  store i64 %475, i64* %XSP, !mcsema_real_eip !87
  %477 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.133, i64 %RSI_val.134), !mcsema_real_eip !87
  store i64 %477, i64* %XAX, !mcsema_real_eip !87
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !89
  %478 = add i64 %RBP_val.136, -64, !mcsema_real_eip !89
  %479 = inttoptr i64 %478 to i64*, !mcsema_real_eip !89
  %480 = ptrtoint i64* %479 to i64, !mcsema_real_eip !89
  store i64 %480, i64* %XSI, !mcsema_real_eip !89
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !90
  %481 = add i64 %RBP_val.137, -96, !mcsema_real_eip !90
  %482 = inttoptr i64 %481 to i64*, !mcsema_real_eip !90
  %EAX.138 = bitcast i64* %XAX to i32*, !mcsema_real_eip !90
  %EAX_val.139 = load i32, i32* %EAX.138, !mcsema_real_eip !90
  %483 = ptrtoint i64* %482 to i64, !mcsema_real_eip !90
  %484 = inttoptr i64 %483 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.139, i32* %484, !mcsema_real_eip !90
  %AL.140 = bitcast i64* %XAX to i8*, !mcsema_real_eip !91
  store i8 0, i8* %AL.140, !mcsema_real_eip !91
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !92
  %RSI_val.142 = load i64, i64* %XSI, !mcsema_real_eip !92
  %RSP_val.143 = load i64, i64* %XSP, !mcsema_real_eip !92
  %485 = sub i64 %RSP_val.143, 8, !mcsema_real_eip !92
  %486 = inttoptr i64 %485 to i64*, !mcsema_real_eip !92
  store i64 -2415393069852865332, i64* %486, !mcsema_real_eip !92
  store i64 %485, i64* %XSP, !mcsema_real_eip !92
  %487 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142), !mcsema_real_eip !92
  store i64 %487, i64* %XAX, !mcsema_real_eip !92
  %EDI.144 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.145 = load i32, i32* %EDI.144, !mcsema_real_eip !93
  %EDI.146 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.147 = load i32, i32* %EDI.146, !mcsema_real_eip !93
  %488 = xor i32 %EDI_val.145, %EDI_val.147, !mcsema_real_eip !93
  store i1 false, i1* %CF, !mcsema_real_eip !93
  store i1 false, i1* %OF, !mcsema_real_eip !93
  %489 = lshr i32 %488, 31, !mcsema_real_eip !93
  %490 = trunc i32 %489 to i1, !mcsema_real_eip !93
  store i1 %490, i1* %SF, !mcsema_real_eip !93
  %491 = icmp eq i32 %488, 0, !mcsema_real_eip !93
  store i1 %491, i1* %ZF, !mcsema_real_eip !93
  %492 = trunc i32 %488 to i8, !mcsema_real_eip !93
  %493 = call i8 @llvm.ctpop.i8(i8 %492), !mcsema_real_eip !93
  %494 = trunc i8 %493 to i1, !mcsema_real_eip !93
  %495 = xor i1 %494, true, !mcsema_real_eip !93
  store i1 %495, i1* %PF, !mcsema_real_eip !93
  store i1 undef, i1* %AF, !mcsema_real_eip !93
  %496 = zext i32 %488 to i64, !mcsema_real_eip !93
  store i64 %496, i64* %XDI, !mcsema_real_eip !93
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !94
  %497 = add i64 %RBP_val.148, -100, !mcsema_real_eip !94
  %498 = inttoptr i64 %497 to i64*, !mcsema_real_eip !94
  %EAX.149 = bitcast i64* %XAX to i32*, !mcsema_real_eip !94
  %EAX_val.150 = load i32, i32* %EAX.149, !mcsema_real_eip !94
  %499 = ptrtoint i64* %498 to i64, !mcsema_real_eip !94
  %500 = inttoptr i64 %499 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.150, i32* %500, !mcsema_real_eip !94
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !95
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !95
  %501 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !95
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %502, !mcsema_real_eip !95
  store i64 %501, i64* %XSP, !mcsema_real_eip !95
  %503 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151), !mcsema_real_eip !95
  store i64 %503, i64* %XAX, !mcsema_real_eip !95
  br label %block_0x219, !mcsema_real_eip !96

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !97
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !98
  %504 = add i64 %RBP_val.123, -24, !mcsema_real_eip !98
  %505 = inttoptr i64 %504 to i64*, !mcsema_real_eip !98
  %506 = ptrtoint i64* %505 to i64, !mcsema_real_eip !98
  %507 = inttoptr i64 %506 to i32*, !mcsema_real_eip !98
  %508 = load i32, i32* %507, !mcsema_real_eip !98
  %509 = sext i32 %508 to i64, !mcsema_real_eip !98
  store i64 %509, i64* %XCX, !mcsema_real_eip !98
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !99
  %510 = sext i64 %RCX_val.124 to i128, !mcsema_real_eip !99
  %511 = mul i128 %510, 11, !mcsema_real_eip !99
  %512 = trunc i128 %511 to i64, !mcsema_real_eip !99
  %513 = sext i64 %512 to i128, !mcsema_real_eip !99
  %514 = icmp ne i128 %513, %511, !mcsema_real_eip !99
  %515 = icmp slt i64 %512, 0, !mcsema_real_eip !99
  store i1 %515, i1* %SF, !mcsema_real_eip !99
  store i1 %514, i1* %OF, !mcsema_real_eip !99
  store i1 %514, i1* %CF, !mcsema_real_eip !99
  store i64 %512, i64* %XCX, !mcsema_real_eip !99
  %RAX_val.125 = load i64, i64* %XAX, !mcsema_real_eip !100
  %RCX_val.126 = load i64, i64* %XCX, !mcsema_real_eip !100
  %516 = add i64 %RCX_val.126, %RAX_val.125, !mcsema_real_eip !100
  %517 = xor i64 %516, %RAX_val.125, !mcsema_real_eip !100
  %518 = xor i64 %517, %RCX_val.126, !mcsema_real_eip !100
  %519 = and i64 %518, 16, !mcsema_real_eip !100
  %520 = icmp ne i64 %519, 0, !mcsema_real_eip !100
  store i1 %520, i1* %AF, !mcsema_real_eip !100
  %521 = lshr i64 %516, 63, !mcsema_real_eip !100
  %522 = trunc i64 %521 to i1, !mcsema_real_eip !100
  store i1 %522, i1* %SF, !mcsema_real_eip !100
  %523 = icmp eq i64 %516, 0, !mcsema_real_eip !100
  store i1 %523, i1* %ZF, !mcsema_real_eip !100
  %524 = xor i64 %RAX_val.125, %RCX_val.126, !mcsema_real_eip !100
  %525 = xor i64 %524, -1, !mcsema_real_eip !100
  %526 = xor i64 %RAX_val.125, %516, !mcsema_real_eip !100
  %527 = and i64 %525, %526, !mcsema_real_eip !100
  %528 = lshr i64 %527, 63, !mcsema_real_eip !100
  %529 = and i64 %528, 1, !mcsema_real_eip !100
  %530 = trunc i64 %529 to i1, !mcsema_real_eip !100
  store i1 %530, i1* %OF, !mcsema_real_eip !100
  %531 = trunc i64 %516 to i8, !mcsema_real_eip !100
  %532 = call i8 @llvm.ctpop.i8(i8 %531), !mcsema_real_eip !100
  %533 = trunc i8 %532 to i1, !mcsema_real_eip !100
  %534 = xor i1 %533, true, !mcsema_real_eip !100
  store i1 %534, i1* %PF, !mcsema_real_eip !100
  %535 = icmp ult i64 %516, %RAX_val.125, !mcsema_real_eip !100
  store i1 %535, i1* %CF, !mcsema_real_eip !100
  store i64 %516, i64* %XAX, !mcsema_real_eip !100
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !101
  %536 = add i64 %RBP_val.127, -20, !mcsema_real_eip !101
  %537 = inttoptr i64 %536 to i64*, !mcsema_real_eip !101
  %538 = ptrtoint i64* %537 to i64, !mcsema_real_eip !101
  %539 = inttoptr i64 %538 to i32*, !mcsema_real_eip !101
  %540 = load i32, i32* %539, !mcsema_real_eip !101
  %541 = sext i32 %540 to i64, !mcsema_real_eip !101
  store i64 %541, i64* %XCX, !mcsema_real_eip !101
  %RAX_val.128 = load i64, i64* %XAX, !mcsema_real_eip !102
  %542 = add i64 %RAX_val.128, 0, !mcsema_real_eip !102
  %RCX_val.129 = load i64, i64* %XCX, !mcsema_real_eip !102
  %543 = add i64 %542, %RCX_val.129, !mcsema_real_eip !102
  %544 = inttoptr i64 %543 to i64*, !mcsema_real_eip !102
  %545 = ptrtoint i64* %544 to i64, !mcsema_real_eip !102
  %546 = inttoptr i64 %545 to i8*, !mcsema_real_eip !102
  %547 = load i8, i8* %546, !mcsema_real_eip !102
  %548 = sext i8 %547 to i32, !mcsema_real_eip !102
  %549 = zext i32 %548 to i64, !mcsema_real_eip !102
  store i64 %549, i64* %XDX, !mcsema_real_eip !102
  %EDX.130 = bitcast i64* %XDX to i32*, !mcsema_real_eip !103
  %EDX_val.131 = load i32, i32* %EDX.130, !mcsema_real_eip !103
  %550 = sub i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %551 = xor i32 %550, %EDX_val.131, !mcsema_real_eip !103
  %552 = xor i32 %551, 32, !mcsema_real_eip !103
  %553 = and i32 %552, 16, !mcsema_real_eip !103
  %554 = icmp ne i32 %553, 0, !mcsema_real_eip !103
  store i1 %554, i1* %AF, !mcsema_real_eip !103
  %555 = trunc i32 %550 to i8, !mcsema_real_eip !103
  %556 = call i8 @llvm.ctpop.i8(i8 %555), !mcsema_real_eip !103
  %557 = trunc i8 %556 to i1, !mcsema_real_eip !103
  %558 = xor i1 %557, true, !mcsema_real_eip !103
  store i1 %558, i1* %PF, !mcsema_real_eip !103
  %559 = icmp eq i32 %550, 0, !mcsema_real_eip !103
  store i1 %559, i1* %ZF, !mcsema_real_eip !103
  %560 = lshr i32 %550, 31, !mcsema_real_eip !103
  %561 = trunc i32 %560 to i1, !mcsema_real_eip !103
  store i1 %561, i1* %SF, !mcsema_real_eip !103
  %562 = icmp ult i32 %EDX_val.131, 32, !mcsema_real_eip !103
  store i1 %562, i1* %CF, !mcsema_real_eip !103
  %563 = xor i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %564 = xor i32 %EDX_val.131, %550, !mcsema_real_eip !103
  %565 = and i32 %563, %564, !mcsema_real_eip !103
  %566 = lshr i32 %565, 31, !mcsema_real_eip !103
  %567 = trunc i32 %566 to i1, !mcsema_real_eip !103
  store i1 %567, i1* %OF, !mcsema_real_eip !103
  %568 = load i1, i1* %ZF, !mcsema_real_eip !104
  %569 = icmp eq i1 %568, true, !mcsema_real_eip !104
  br i1 %569, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !104

block_0x23f:                                      ; preds = %block_0x219
  %RBP_val.157 = load i64, i64* %XBP, !mcsema_real_eip !105
  %570 = add i64 %RBP_val.157, -24, !mcsema_real_eip !105
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !105
  %572 = ptrtoint i64* %571 to i64, !mcsema_real_eip !105
  %573 = inttoptr i64 %572 to i32*, !mcsema_real_eip !105
  %574 = load i32, i32* %573, !mcsema_real_eip !105
  %575 = sub i32 %574, 2, !mcsema_real_eip !105
  %576 = xor i32 %575, %574, !mcsema_real_eip !105
  %577 = xor i32 %576, 2, !mcsema_real_eip !105
  %578 = and i32 %577, 16, !mcsema_real_eip !105
  %579 = icmp ne i32 %578, 0, !mcsema_real_eip !105
  store i1 %579, i1* %AF, !mcsema_real_eip !105
  %580 = trunc i32 %575 to i8, !mcsema_real_eip !105
  %581 = call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !105
  %582 = trunc i8 %581 to i1, !mcsema_real_eip !105
  %583 = xor i1 %582, true, !mcsema_real_eip !105
  store i1 %583, i1* %PF, !mcsema_real_eip !105
  %584 = icmp eq i32 %575, 0, !mcsema_real_eip !105
  store i1 %584, i1* %ZF, !mcsema_real_eip !105
  %585 = lshr i32 %575, 31, !mcsema_real_eip !105
  %586 = trunc i32 %585 to i1, !mcsema_real_eip !105
  store i1 %586, i1* %SF, !mcsema_real_eip !105
  %587 = icmp ult i32 %574, 2, !mcsema_real_eip !105
  store i1 %587, i1* %CF, !mcsema_real_eip !105
  %588 = xor i32 %574, 2, !mcsema_real_eip !105
  %589 = xor i32 %574, %575, !mcsema_real_eip !105
  %590 = and i32 %588, %589, !mcsema_real_eip !105
  %591 = lshr i32 %590, 31, !mcsema_real_eip !105
  %592 = trunc i32 %591 to i1, !mcsema_real_eip !105
  store i1 %592, i1* %OF, !mcsema_real_eip !105
  %593 = load i1, i1* %ZF, !mcsema_real_eip !106
  %594 = icmp eq i1 %593, false, !mcsema_real_eip !106
  br i1 %594, label %block_0x283, label %block_0x249, !mcsema_real_eip !106

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !96
  %595 = add i64 %RBP_val.153, -28, !mcsema_real_eip !96
  %596 = inttoptr i64 %595 to i64*, !mcsema_real_eip !96
  %597 = ptrtoint i64* %596 to i64, !mcsema_real_eip !96
  %598 = inttoptr i64 %597 to i32*, !mcsema_real_eip !96
  %599 = load i32, i32* %598, !mcsema_real_eip !96
  %600 = zext i32 %599 to i64, !mcsema_real_eip !96
  store i64 %600, i64* %XAX, !mcsema_real_eip !96
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !107
  %601 = add i64 %RBP_val.154, -20, !mcsema_real_eip !107
  %602 = inttoptr i64 %601 to i64*, !mcsema_real_eip !107
  %EAX.155 = bitcast i64* %XAX to i32*, !mcsema_real_eip !107
  %EAX_val.156 = load i32, i32* %EAX.155, !mcsema_real_eip !107
  %603 = ptrtoint i64* %602 to i64, !mcsema_real_eip !107
  %604 = inttoptr i64 %603 to i32*, !mcsema_real_eip !107
  %605 = load i32, i32* %604, !mcsema_real_eip !107
  %606 = sub i32 %EAX_val.156, %605, !mcsema_real_eip !107
  %607 = xor i32 %606, %EAX_val.156, !mcsema_real_eip !107
  %608 = xor i32 %607, %605, !mcsema_real_eip !107
  %609 = and i32 %608, 16, !mcsema_real_eip !107
  %610 = icmp ne i32 %609, 0, !mcsema_real_eip !107
  store i1 %610, i1* %AF, !mcsema_real_eip !107
  %611 = trunc i32 %606 to i8, !mcsema_real_eip !107
  %612 = call i8 @llvm.ctpop.i8(i8 %611), !mcsema_real_eip !107
  %613 = trunc i8 %612 to i1, !mcsema_real_eip !107
  %614 = xor i1 %613, true, !mcsema_real_eip !107
  store i1 %614, i1* %PF, !mcsema_real_eip !107
  %615 = icmp eq i32 %606, 0, !mcsema_real_eip !107
  store i1 %615, i1* %ZF, !mcsema_real_eip !107
  %616 = lshr i32 %606, 31, !mcsema_real_eip !107
  %617 = trunc i32 %616 to i1, !mcsema_real_eip !107
  store i1 %617, i1* %SF, !mcsema_real_eip !107
  %618 = icmp ult i32 %EAX_val.156, %605, !mcsema_real_eip !107
  store i1 %618, i1* %CF, !mcsema_real_eip !107
  %619 = xor i32 %EAX_val.156, %605, !mcsema_real_eip !107
  %620 = xor i32 %EAX_val.156, %606, !mcsema_real_eip !107
  %621 = and i32 %619, %620, !mcsema_real_eip !107
  %622 = lshr i32 %621, 31, !mcsema_real_eip !107
  %623 = trunc i32 %622 to i1, !mcsema_real_eip !107
  store i1 %623, i1* %OF, !mcsema_real_eip !107
  %624 = load i1, i1* %ZF, !mcsema_real_eip !108
  %625 = icmp eq i1 %624, false, !mcsema_real_eip !108
  br i1 %625, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !108

block_0x29b:                                      ; preds = %block_0x28f
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !109
  %626 = add i64 %RBP_val.172, -32, !mcsema_real_eip !109
  %627 = inttoptr i64 %626 to i64*, !mcsema_real_eip !109
  %628 = ptrtoint i64* %627 to i64, !mcsema_real_eip !109
  %629 = inttoptr i64 %628 to i32*, !mcsema_real_eip !109
  %630 = load i32, i32* %629, !mcsema_real_eip !109
  %631 = zext i32 %630 to i64, !mcsema_real_eip !109
  store i64 %631, i64* %XAX, !mcsema_real_eip !109
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !110
  %632 = add i64 %RBP_val.173, -24, !mcsema_real_eip !110
  %633 = inttoptr i64 %632 to i64*, !mcsema_real_eip !110
  %EAX.174 = bitcast i64* %XAX to i32*, !mcsema_real_eip !110
  %EAX_val.175 = load i32, i32* %EAX.174, !mcsema_real_eip !110
  %634 = ptrtoint i64* %633 to i64, !mcsema_real_eip !110
  %635 = inttoptr i64 %634 to i32*, !mcsema_real_eip !110
  %636 = load i32, i32* %635, !mcsema_real_eip !110
  %637 = sub i32 %EAX_val.175, %636, !mcsema_real_eip !110
  %638 = xor i32 %637, %EAX_val.175, !mcsema_real_eip !110
  %639 = xor i32 %638, %636, !mcsema_real_eip !110
  %640 = and i32 %639, 16, !mcsema_real_eip !110
  %641 = icmp ne i32 %640, 0, !mcsema_real_eip !110
  store i1 %641, i1* %AF, !mcsema_real_eip !110
  %642 = trunc i32 %637 to i8, !mcsema_real_eip !110
  %643 = call i8 @llvm.ctpop.i8(i8 %642), !mcsema_real_eip !110
  %644 = trunc i8 %643 to i1, !mcsema_real_eip !110
  %645 = xor i1 %644, true, !mcsema_real_eip !110
  store i1 %645, i1* %PF, !mcsema_real_eip !110
  %646 = icmp eq i32 %637, 0, !mcsema_real_eip !110
  store i1 %646, i1* %ZF, !mcsema_real_eip !110
  %647 = lshr i32 %637, 31, !mcsema_real_eip !110
  %648 = trunc i32 %647 to i1, !mcsema_real_eip !110
  store i1 %648, i1* %SF, !mcsema_real_eip !110
  %649 = icmp ult i32 %EAX_val.175, %636, !mcsema_real_eip !110
  store i1 %649, i1* %CF, !mcsema_real_eip !110
  %650 = xor i32 %EAX_val.175, %636, !mcsema_real_eip !110
  %651 = xor i32 %EAX_val.175, %637, !mcsema_real_eip !110
  %652 = and i32 %650, %651, !mcsema_real_eip !110
  %653 = lshr i32 %652, 31, !mcsema_real_eip !110
  %654 = trunc i32 %653 to i1, !mcsema_real_eip !110
  store i1 %654, i1* %OF, !mcsema_real_eip !110
  %655 = load i1, i1* %ZF, !mcsema_real_eip !111
  %656 = icmp eq i1 %655, false, !mcsema_real_eip !111
  br i1 %656, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !111

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !112
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !113
  %657 = add i64 %RBP_val.158, -24, !mcsema_real_eip !113
  %658 = inttoptr i64 %657 to i64*, !mcsema_real_eip !113
  %659 = ptrtoint i64* %658 to i64, !mcsema_real_eip !113
  %660 = inttoptr i64 %659 to i32*, !mcsema_real_eip !113
  %661 = load i32, i32* %660, !mcsema_real_eip !113
  %662 = sext i32 %661 to i64, !mcsema_real_eip !113
  store i64 %662, i64* %XCX, !mcsema_real_eip !113
  %RCX_val.159 = load i64, i64* %XCX, !mcsema_real_eip !114
  %663 = sext i64 %RCX_val.159 to i128, !mcsema_real_eip !114
  %664 = mul i128 %663, 11, !mcsema_real_eip !114
  %665 = trunc i128 %664 to i64, !mcsema_real_eip !114
  %666 = sext i64 %665 to i128, !mcsema_real_eip !114
  %667 = icmp ne i128 %666, %664, !mcsema_real_eip !114
  %668 = icmp slt i64 %665, 0, !mcsema_real_eip !114
  store i1 %668, i1* %SF, !mcsema_real_eip !114
  store i1 %667, i1* %OF, !mcsema_real_eip !114
  store i1 %667, i1* %CF, !mcsema_real_eip !114
  store i64 %665, i64* %XCX, !mcsema_real_eip !114
  %RAX_val.160 = load i64, i64* %XAX, !mcsema_real_eip !115
  %RCX_val.161 = load i64, i64* %XCX, !mcsema_real_eip !115
  %669 = add i64 %RCX_val.161, %RAX_val.160, !mcsema_real_eip !115
  %670 = xor i64 %669, %RAX_val.160, !mcsema_real_eip !115
  %671 = xor i64 %670, %RCX_val.161, !mcsema_real_eip !115
  %672 = and i64 %671, 16, !mcsema_real_eip !115
  %673 = icmp ne i64 %672, 0, !mcsema_real_eip !115
  store i1 %673, i1* %AF, !mcsema_real_eip !115
  %674 = lshr i64 %669, 63, !mcsema_real_eip !115
  %675 = trunc i64 %674 to i1, !mcsema_real_eip !115
  store i1 %675, i1* %SF, !mcsema_real_eip !115
  %676 = icmp eq i64 %669, 0, !mcsema_real_eip !115
  store i1 %676, i1* %ZF, !mcsema_real_eip !115
  %677 = xor i64 %RAX_val.160, %RCX_val.161, !mcsema_real_eip !115
  %678 = xor i64 %677, -1, !mcsema_real_eip !115
  %679 = xor i64 %RAX_val.160, %669, !mcsema_real_eip !115
  %680 = and i64 %678, %679, !mcsema_real_eip !115
  %681 = lshr i64 %680, 63, !mcsema_real_eip !115
  %682 = and i64 %681, 1, !mcsema_real_eip !115
  %683 = trunc i64 %682 to i1, !mcsema_real_eip !115
  store i1 %683, i1* %OF, !mcsema_real_eip !115
  %684 = trunc i64 %669 to i8, !mcsema_real_eip !115
  %685 = call i8 @llvm.ctpop.i8(i8 %684), !mcsema_real_eip !115
  %686 = trunc i8 %685 to i1, !mcsema_real_eip !115
  %687 = xor i1 %686, true, !mcsema_real_eip !115
  store i1 %687, i1* %PF, !mcsema_real_eip !115
  %688 = icmp ult i64 %669, %RAX_val.160, !mcsema_real_eip !115
  store i1 %688, i1* %CF, !mcsema_real_eip !115
  store i64 %669, i64* %XAX, !mcsema_real_eip !115
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !116
  %689 = add i64 %RBP_val.162, -20, !mcsema_real_eip !116
  %690 = inttoptr i64 %689 to i64*, !mcsema_real_eip !116
  %691 = ptrtoint i64* %690 to i64, !mcsema_real_eip !116
  %692 = inttoptr i64 %691 to i32*, !mcsema_real_eip !116
  %693 = load i32, i32* %692, !mcsema_real_eip !116
  %694 = sext i32 %693 to i64, !mcsema_real_eip !116
  store i64 %694, i64* %XCX, !mcsema_real_eip !116
  %RAX_val.163 = load i64, i64* %XAX, !mcsema_real_eip !117
  %695 = add i64 %RAX_val.163, 0, !mcsema_real_eip !117
  %RCX_val.164 = load i64, i64* %XCX, !mcsema_real_eip !117
  %696 = add i64 %695, %RCX_val.164, !mcsema_real_eip !117
  %697 = inttoptr i64 %696 to i64*, !mcsema_real_eip !117
  %698 = ptrtoint i64* %697 to i64, !mcsema_real_eip !117
  %699 = inttoptr i64 %698 to i8*, !mcsema_real_eip !117
  store i8 88, i8* %699, !mcsema_real_eip !117
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !118
  %700 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !118
  %701 = inttoptr i64 %700 to i64*, !mcsema_real_eip !118
  store i64 -4981261766360305936, i64* %701, !mcsema_real_eip !118
  store i64 %700, i64* %XSP, !mcsema_real_eip !118
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !118
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !119
  %702 = add i64 %RBP_val.166, -36, !mcsema_real_eip !119
  %703 = inttoptr i64 %702 to i64*, !mcsema_real_eip !119
  %704 = ptrtoint i64* %703 to i64, !mcsema_real_eip !119
  %705 = inttoptr i64 %704 to i32*, !mcsema_real_eip !119
  %706 = load i32, i32* %705, !mcsema_real_eip !119
  %707 = zext i32 %706 to i64, !mcsema_real_eip !119
  store i64 %707, i64* %XDX, !mcsema_real_eip !119
  %EDX.167 = bitcast i64* %XDX to i32*, !mcsema_real_eip !120
  %EDX_val.168 = load i32, i32* %EDX.167, !mcsema_real_eip !120
  %708 = add i32 1, %EDX_val.168, !mcsema_real_eip !120
  %709 = xor i32 %708, %EDX_val.168, !mcsema_real_eip !120
  %710 = xor i32 %709, 1, !mcsema_real_eip !120
  %711 = and i32 %710, 16, !mcsema_real_eip !120
  %712 = icmp ne i32 %711, 0, !mcsema_real_eip !120
  store i1 %712, i1* %AF, !mcsema_real_eip !120
  %713 = lshr i32 %708, 31, !mcsema_real_eip !120
  %714 = trunc i32 %713 to i1, !mcsema_real_eip !120
  store i1 %714, i1* %SF, !mcsema_real_eip !120
  %715 = icmp eq i32 %708, 0, !mcsema_real_eip !120
  store i1 %715, i1* %ZF, !mcsema_real_eip !120
  %716 = xor i32 %EDX_val.168, 1, !mcsema_real_eip !120
  %717 = xor i32 %716, -1, !mcsema_real_eip !120
  %718 = xor i32 %EDX_val.168, %708, !mcsema_real_eip !120
  %719 = and i32 %717, %718, !mcsema_real_eip !120
  %720 = lshr i32 %719, 31, !mcsema_real_eip !120
  %721 = and i32 %720, 1, !mcsema_real_eip !120
  %722 = trunc i32 %721 to i1, !mcsema_real_eip !120
  store i1 %722, i1* %OF, !mcsema_real_eip !120
  %723 = trunc i32 %708 to i8, !mcsema_real_eip !120
  %724 = call i8 @llvm.ctpop.i8(i8 %723), !mcsema_real_eip !120
  %725 = trunc i8 %724 to i1, !mcsema_real_eip !120
  %726 = xor i1 %725, true, !mcsema_real_eip !120
  store i1 %726, i1* %PF, !mcsema_real_eip !120
  %727 = icmp ult i32 %708, %EDX_val.168, !mcsema_real_eip !120
  store i1 %727, i1* %CF, !mcsema_real_eip !120
  %728 = zext i32 %708 to i64, !mcsema_real_eip !120
  store i64 %728, i64* %XDX, !mcsema_real_eip !120
  %RBP_val.169 = load i64, i64* %XBP, !mcsema_real_eip !121
  %729 = add i64 %RBP_val.169, -36, !mcsema_real_eip !121
  %730 = inttoptr i64 %729 to i64*, !mcsema_real_eip !121
  %EDX.170 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.171 = load i32, i32* %EDX.170, !mcsema_real_eip !121
  %731 = ptrtoint i64* %730 to i64, !mcsema_real_eip !121
  %732 = inttoptr i64 %731 to i32*, !mcsema_real_eip !121
  store i32 %EDX_val.171, i32* %732, !mcsema_real_eip !121
  br label %block_0x114, !mcsema_real_eip !122

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !123
  %RBP_val.184 = load i64, i64* %XBP, !mcsema_real_eip !124
  %733 = add i64 %RBP_val.184, -24, !mcsema_real_eip !124
  %734 = inttoptr i64 %733 to i64*, !mcsema_real_eip !124
  %735 = ptrtoint i64* %734 to i64, !mcsema_real_eip !124
  %736 = inttoptr i64 %735 to i32*, !mcsema_real_eip !124
  %737 = load i32, i32* %736, !mcsema_real_eip !124
  %738 = sext i32 %737 to i64, !mcsema_real_eip !124
  store i64 %738, i64* %XCX, !mcsema_real_eip !124
  %RCX_val.185 = load i64, i64* %XCX, !mcsema_real_eip !125
  %739 = sext i64 %RCX_val.185 to i128, !mcsema_real_eip !125
  %740 = mul i128 %739, 11, !mcsema_real_eip !125
  %741 = trunc i128 %740 to i64, !mcsema_real_eip !125
  %742 = sext i64 %741 to i128, !mcsema_real_eip !125
  %743 = icmp ne i128 %742, %740, !mcsema_real_eip !125
  %744 = icmp slt i64 %741, 0, !mcsema_real_eip !125
  store i1 %744, i1* %SF, !mcsema_real_eip !125
  store i1 %743, i1* %OF, !mcsema_real_eip !125
  store i1 %743, i1* %CF, !mcsema_real_eip !125
  store i64 %741, i64* %XCX, !mcsema_real_eip !125
  %RAX_val.186 = load i64, i64* %XAX, !mcsema_real_eip !126
  %RCX_val.187 = load i64, i64* %XCX, !mcsema_real_eip !126
  %745 = add i64 %RCX_val.187, %RAX_val.186, !mcsema_real_eip !126
  %746 = xor i64 %745, %RAX_val.186, !mcsema_real_eip !126
  %747 = xor i64 %746, %RCX_val.187, !mcsema_real_eip !126
  %748 = and i64 %747, 16, !mcsema_real_eip !126
  %749 = icmp ne i64 %748, 0, !mcsema_real_eip !126
  store i1 %749, i1* %AF, !mcsema_real_eip !126
  %750 = lshr i64 %745, 63, !mcsema_real_eip !126
  %751 = trunc i64 %750 to i1, !mcsema_real_eip !126
  store i1 %751, i1* %SF, !mcsema_real_eip !126
  %752 = icmp eq i64 %745, 0, !mcsema_real_eip !126
  store i1 %752, i1* %ZF, !mcsema_real_eip !126
  %753 = xor i64 %RAX_val.186, %RCX_val.187, !mcsema_real_eip !126
  %754 = xor i64 %753, -1, !mcsema_real_eip !126
  %755 = xor i64 %RAX_val.186, %745, !mcsema_real_eip !126
  %756 = and i64 %754, %755, !mcsema_real_eip !126
  %757 = lshr i64 %756, 63, !mcsema_real_eip !126
  %758 = and i64 %757, 1, !mcsema_real_eip !126
  %759 = trunc i64 %758 to i1, !mcsema_real_eip !126
  store i1 %759, i1* %OF, !mcsema_real_eip !126
  %760 = trunc i64 %745 to i8, !mcsema_real_eip !126
  %761 = call i8 @llvm.ctpop.i8(i8 %760), !mcsema_real_eip !126
  %762 = trunc i8 %761 to i1, !mcsema_real_eip !126
  %763 = xor i1 %762, true, !mcsema_real_eip !126
  store i1 %763, i1* %PF, !mcsema_real_eip !126
  %764 = icmp ult i64 %745, %RAX_val.186, !mcsema_real_eip !126
  store i1 %764, i1* %CF, !mcsema_real_eip !126
  store i64 %745, i64* %XAX, !mcsema_real_eip !126
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !127
  %765 = add i64 %RBP_val.188, -20, !mcsema_real_eip !127
  %766 = inttoptr i64 %765 to i64*, !mcsema_real_eip !127
  %767 = ptrtoint i64* %766 to i64, !mcsema_real_eip !127
  %768 = inttoptr i64 %767 to i32*, !mcsema_real_eip !127
  %769 = load i32, i32* %768, !mcsema_real_eip !127
  %770 = sext i32 %769 to i64, !mcsema_real_eip !127
  store i64 %770, i64* %XCX, !mcsema_real_eip !127
  %RAX_val.189 = load i64, i64* %XAX, !mcsema_real_eip !128
  %771 = add i64 %RAX_val.189, 0, !mcsema_real_eip !128
  %RCX_val.190 = load i64, i64* %XCX, !mcsema_real_eip !128
  %772 = add i64 %771, %RCX_val.190, !mcsema_real_eip !128
  %773 = inttoptr i64 %772 to i64*, !mcsema_real_eip !128
  %774 = ptrtoint i64* %773 to i64, !mcsema_real_eip !128
  %775 = inttoptr i64 %774 to i8*, !mcsema_real_eip !128
  %776 = load i8, i8* %775, !mcsema_real_eip !128
  %777 = sext i8 %776 to i32, !mcsema_real_eip !128
  %778 = zext i32 %777 to i64, !mcsema_real_eip !128
  store i64 %778, i64* %XDX, !mcsema_real_eip !128
  %EDX.191 = bitcast i64* %XDX to i32*, !mcsema_real_eip !129
  %EDX_val.192 = load i32, i32* %EDX.191, !mcsema_real_eip !129
  %779 = sub i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %780 = xor i32 %779, %EDX_val.192, !mcsema_real_eip !129
  %781 = xor i32 %780, 124, !mcsema_real_eip !129
  %782 = and i32 %781, 16, !mcsema_real_eip !129
  %783 = icmp ne i32 %782, 0, !mcsema_real_eip !129
  store i1 %783, i1* %AF, !mcsema_real_eip !129
  %784 = trunc i32 %779 to i8, !mcsema_real_eip !129
  %785 = call i8 @llvm.ctpop.i8(i8 %784), !mcsema_real_eip !129
  %786 = trunc i8 %785 to i1, !mcsema_real_eip !129
  %787 = xor i1 %786, true, !mcsema_real_eip !129
  store i1 %787, i1* %PF, !mcsema_real_eip !129
  %788 = icmp eq i32 %779, 0, !mcsema_real_eip !129
  store i1 %788, i1* %ZF, !mcsema_real_eip !129
  %789 = lshr i32 %779, 31, !mcsema_real_eip !129
  %790 = trunc i32 %789 to i1, !mcsema_real_eip !129
  store i1 %790, i1* %SF, !mcsema_real_eip !129
  %791 = icmp ult i32 %EDX_val.192, 124, !mcsema_real_eip !129
  store i1 %791, i1* %CF, !mcsema_real_eip !129
  %792 = xor i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %793 = xor i32 %EDX_val.192, %779, !mcsema_real_eip !129
  %794 = and i32 %792, %793, !mcsema_real_eip !129
  %795 = lshr i32 %794, 31, !mcsema_real_eip !129
  %796 = trunc i32 %795 to i1, !mcsema_real_eip !129
  store i1 %796, i1* %OF, !mcsema_real_eip !129
  %797 = load i1, i1* %ZF, !mcsema_real_eip !130
  %798 = icmp eq i1 %797, false, !mcsema_real_eip !130
  br i1 %798, label %block_0x283, label %block_0x26f, !mcsema_real_eip !130

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !131
  %799 = add i64 %RBP_val.176, -28, !mcsema_real_eip !131
  %800 = inttoptr i64 %799 to i64*, !mcsema_real_eip !131
  %801 = ptrtoint i64* %800 to i64, !mcsema_real_eip !131
  %802 = inttoptr i64 %801 to i32*, !mcsema_real_eip !131
  %803 = load i32, i32* %802, !mcsema_real_eip !131
  %804 = zext i32 %803 to i64, !mcsema_real_eip !131
  store i64 %804, i64* %XAX, !mcsema_real_eip !131
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !132
  %805 = add i64 %RBP_val.177, -20, !mcsema_real_eip !132
  %806 = inttoptr i64 %805 to i64*, !mcsema_real_eip !132
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !132
  %807 = ptrtoint i64* %806 to i64, !mcsema_real_eip !132
  %808 = inttoptr i64 %807 to i32*, !mcsema_real_eip !132
  store i32 %EAX_val.179, i32* %808, !mcsema_real_eip !132
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !133
  %809 = add i64 %RBP_val.180, -32, !mcsema_real_eip !133
  %810 = inttoptr i64 %809 to i64*, !mcsema_real_eip !133
  %811 = ptrtoint i64* %810 to i64, !mcsema_real_eip !133
  %812 = inttoptr i64 %811 to i32*, !mcsema_real_eip !133
  %813 = load i32, i32* %812, !mcsema_real_eip !133
  %814 = zext i32 %813 to i64, !mcsema_real_eip !133
  store i64 %814, i64* %XAX, !mcsema_real_eip !133
  %RBP_val.181 = load i64, i64* %XBP, !mcsema_real_eip !134
  %815 = add i64 %RBP_val.181, -24, !mcsema_real_eip !134
  %816 = inttoptr i64 %815 to i64*, !mcsema_real_eip !134
  %EAX.182 = bitcast i64* %XAX to i32*, !mcsema_real_eip !134
  %EAX_val.183 = load i32, i32* %EAX.182, !mcsema_real_eip !134
  %817 = ptrtoint i64* %816 to i64, !mcsema_real_eip !134
  %818 = inttoptr i64 %817 to i32*, !mcsema_real_eip !134
  store i32 %EAX_val.183, i32* %818, !mcsema_real_eip !134
  br label %block_0x28f, !mcsema_real_eip !123

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !135
  %AL.193 = bitcast i64* %XAX to i8*, !mcsema_real_eip !136
  store i8 0, i8* %AL.193, !mcsema_real_eip !136
  %RDI_val.194 = load i64, i64* %XDI, !mcsema_real_eip !137
  %RSI_val.195 = load i64, i64* %XSI, !mcsema_real_eip !137
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !137
  %819 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !137
  %820 = inttoptr i64 %819 to i64*, !mcsema_real_eip !137
  store i64 -2415393069852865332, i64* %820, !mcsema_real_eip !137
  store i64 %819, i64* %XSP, !mcsema_real_eip !137
  %821 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.194, i64 %RSI_val.195), !mcsema_real_eip !137
  store i64 %821, i64* %XAX, !mcsema_real_eip !137
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !138
  %822 = add i64 %RBP_val.197, -4, !mcsema_real_eip !138
  %823 = inttoptr i64 %822 to i64*, !mcsema_real_eip !138
  %824 = ptrtoint i64* %823 to i64, !mcsema_real_eip !138
  %825 = inttoptr i64 %824 to i32*, !mcsema_real_eip !138
  store i32 2, i32* %825, !mcsema_real_eip !138
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !139
  %826 = add i64 %RBP_val.198, -104, !mcsema_real_eip !139
  %827 = inttoptr i64 %826 to i64*, !mcsema_real_eip !139
  %EAX.199 = bitcast i64* %XAX to i32*, !mcsema_real_eip !139
  %EAX_val.200 = load i32, i32* %EAX.199, !mcsema_real_eip !139
  %828 = ptrtoint i64* %827 to i64, !mcsema_real_eip !139
  %829 = inttoptr i64 %828 to i32*, !mcsema_real_eip !139
  store i32 %EAX_val.200, i32* %829, !mcsema_real_eip !139
  br label %block_0x312, !mcsema_real_eip !140

block_0x26f:                                      ; preds = %block_0x249
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !141
  %830 = add i64 %RBP_val.201, -20, !mcsema_real_eip !141
  %831 = inttoptr i64 %830 to i64*, !mcsema_real_eip !141
  %832 = ptrtoint i64* %831 to i64, !mcsema_real_eip !141
  %833 = inttoptr i64 %832 to i32*, !mcsema_real_eip !141
  %834 = load i32, i32* %833, !mcsema_real_eip !141
  %835 = sub i32 %834, 0, !mcsema_real_eip !141
  %836 = xor i32 %835, %834, !mcsema_real_eip !141
  %837 = xor i32 %836, 0, !mcsema_real_eip !141
  %838 = and i32 %837, 16, !mcsema_real_eip !141
  %839 = icmp ne i32 %838, 0, !mcsema_real_eip !141
  store i1 %839, i1* %AF, !mcsema_real_eip !141
  %840 = trunc i32 %835 to i8, !mcsema_real_eip !141
  %841 = call i8 @llvm.ctpop.i8(i8 %840), !mcsema_real_eip !141
  %842 = trunc i8 %841 to i1, !mcsema_real_eip !141
  %843 = xor i1 %842, true, !mcsema_real_eip !141
  store i1 %843, i1* %PF, !mcsema_real_eip !141
  %844 = icmp eq i32 %835, 0, !mcsema_real_eip !141
  store i1 %844, i1* %ZF, !mcsema_real_eip !141
  %845 = lshr i32 %835, 31, !mcsema_real_eip !141
  %846 = trunc i32 %845 to i1, !mcsema_real_eip !141
  store i1 %846, i1* %SF, !mcsema_real_eip !141
  %847 = icmp ult i32 %834, 0, !mcsema_real_eip !141
  store i1 %847, i1* %CF, !mcsema_real_eip !141
  %848 = xor i32 %834, 0, !mcsema_real_eip !141
  %849 = xor i32 %834, %835, !mcsema_real_eip !141
  %850 = and i32 %848, %849, !mcsema_real_eip !141
  %851 = lshr i32 %850, 31, !mcsema_real_eip !141
  %852 = trunc i32 %851 to i1, !mcsema_real_eip !141
  store i1 %852, i1* %OF, !mcsema_real_eip !141
  %853 = load i1, i1* %OF, !mcsema_real_eip !142
  %854 = load i1, i1* %SF, !mcsema_real_eip !142
  %855 = icmp eq i1 %854, %853, !mcsema_real_eip !142
  %856 = icmp eq i1 %855, false, !mcsema_real_eip !142
  %857 = load i1, i1* %ZF, !mcsema_real_eip !142
  %858 = icmp eq i1 %857, true, !mcsema_real_eip !142
  %859 = or i1 %858, %856, !mcsema_real_eip !142
  br i1 %859, label %block_0x283, label %block_0x279, !mcsema_real_eip !142

block_0x279:                                      ; preds = %block_0x26f
  %RBP_val.202 = load i64, i64* %XBP, !mcsema_real_eip !143
  %860 = add i64 %RBP_val.202, -20, !mcsema_real_eip !143
  %861 = inttoptr i64 %860 to i64*, !mcsema_real_eip !143
  %862 = ptrtoint i64* %861 to i64, !mcsema_real_eip !143
  %863 = inttoptr i64 %862 to i32*, !mcsema_real_eip !143
  %864 = load i32, i32* %863, !mcsema_real_eip !143
  %865 = sub i32 %864, 11, !mcsema_real_eip !143
  %866 = xor i32 %865, %864, !mcsema_real_eip !143
  %867 = xor i32 %866, 11, !mcsema_real_eip !143
  %868 = and i32 %867, 16, !mcsema_real_eip !143
  %869 = icmp ne i32 %868, 0, !mcsema_real_eip !143
  store i1 %869, i1* %AF, !mcsema_real_eip !143
  %870 = trunc i32 %865 to i8, !mcsema_real_eip !143
  %871 = call i8 @llvm.ctpop.i8(i8 %870), !mcsema_real_eip !143
  %872 = trunc i8 %871 to i1, !mcsema_real_eip !143
  %873 = xor i1 %872, true, !mcsema_real_eip !143
  store i1 %873, i1* %PF, !mcsema_real_eip !143
  %874 = icmp eq i32 %865, 0, !mcsema_real_eip !143
  store i1 %874, i1* %ZF, !mcsema_real_eip !143
  %875 = lshr i32 %865, 31, !mcsema_real_eip !143
  %876 = trunc i32 %875 to i1, !mcsema_real_eip !143
  store i1 %876, i1* %SF, !mcsema_real_eip !143
  %877 = icmp ult i32 %864, 11, !mcsema_real_eip !143
  store i1 %877, i1* %CF, !mcsema_real_eip !143
  %878 = xor i32 %864, 11, !mcsema_real_eip !143
  %879 = xor i32 %864, %865, !mcsema_real_eip !143
  %880 = and i32 %878, %879, !mcsema_real_eip !143
  %881 = lshr i32 %880, 31, !mcsema_real_eip !143
  %882 = trunc i32 %881 to i1, !mcsema_real_eip !143
  store i1 %882, i1* %OF, !mcsema_real_eip !143
  %883 = load i1, i1* %OF, !mcsema_real_eip !144
  %884 = load i1, i1* %SF, !mcsema_real_eip !144
  %885 = icmp eq i1 %884, %883, !mcsema_real_eip !144
  %886 = icmp eq i1 %885, false, !mcsema_real_eip !144
  br i1 %886, label %block_0x28f, label %block_0x283, !mcsema_real_eip !144
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !145
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !145
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !145
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !145
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !145
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !145
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !145
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !145
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !145
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !145
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !145
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !145
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !145
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !145
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !145
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !145
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !145
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !145
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !145
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !145
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !145
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !145
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !145
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !145
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !145
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !145
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !145
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !145
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !145
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !145
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !145
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !145
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !145
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !145
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !145
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !145
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !145
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !145
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !145
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !145
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !145
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !145
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !145
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !145
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !145
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !145
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !145
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !145
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !145
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !145
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !145
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !145
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !145
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !145
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !145
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !145
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !145
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !145
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !145
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !145
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !145
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !145
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !145
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !145
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !145
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !145
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !145
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !145
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !145
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !145
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !145
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !145
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !145
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !145
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !145
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !145
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !145
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !145
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !145
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !145
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !145
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !145
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !145
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !145
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !145
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !145
  br label %block_0x0, !mcsema_real_eip !145

block_0x0:                                        ; preds = %entry
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !145
  %RSP_val.204 = load i64, i64* %XSP, !mcsema_real_eip !145
  %1 = sub i64 %RSP_val.204, 8, !mcsema_real_eip !145
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !145
  store i64 %RBP_val.203, i64* %2, !mcsema_real_eip !145
  store i64 %1, i64* %XSP, !mcsema_real_eip !145
  %RSP_val.205 = load i64, i64* %XSP, !mcsema_real_eip !146
  store i64 %RSP_val.205, i64* %XBP, !mcsema_real_eip !146
  %RSP_val.206 = load i64, i64* %XSP, !mcsema_real_eip !147
  %3 = sub i64 %RSP_val.206, 32, !mcsema_real_eip !147
  %4 = xor i64 %3, %RSP_val.206, !mcsema_real_eip !147
  %5 = xor i64 %4, 32, !mcsema_real_eip !147
  %6 = and i64 %5, 16, !mcsema_real_eip !147
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !147
  store i1 %7, i1* %AF, !mcsema_real_eip !147
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !147
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !147
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !147
  %11 = xor i1 %10, true, !mcsema_real_eip !147
  store i1 %11, i1* %PF, !mcsema_real_eip !147
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !147
  store i1 %12, i1* %ZF, !mcsema_real_eip !147
  %13 = lshr i64 %3, 63, !mcsema_real_eip !147
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !147
  store i1 %14, i1* %SF, !mcsema_real_eip !147
  %15 = icmp ult i64 %RSP_val.206, 32, !mcsema_real_eip !147
  store i1 %15, i1* %CF, !mcsema_real_eip !147
  %16 = xor i64 %RSP_val.206, 32, !mcsema_real_eip !147
  %17 = xor i64 %RSP_val.206, %3, !mcsema_real_eip !147
  %18 = and i64 %16, %17, !mcsema_real_eip !147
  %19 = lshr i64 %18, 63, !mcsema_real_eip !147
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !147
  store i1 %20, i1* %OF, !mcsema_real_eip !147
  store i64 %3, i64* %XSP, !mcsema_real_eip !147
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !148
  %21 = add i64 %RBP_val.207, -4, !mcsema_real_eip !148
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !148
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !148
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !148
  store i32 0, i32* %24, !mcsema_real_eip !148
  br label %block_0xf, !mcsema_real_eip !149

block_0xf:                                        ; preds = %block_0x69, %block_0x0
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !149
  %25 = add i64 %RBP_val.208, -4, !mcsema_real_eip !149
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !149
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !149
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !149
  %29 = load i32, i32* %28, !mcsema_real_eip !149
  %30 = sub i32 %29, 7, !mcsema_real_eip !149
  %31 = xor i32 %30, %29, !mcsema_real_eip !149
  %32 = xor i32 %31, 7, !mcsema_real_eip !149
  %33 = and i32 %32, 16, !mcsema_real_eip !149
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !149
  store i1 %34, i1* %AF, !mcsema_real_eip !149
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !149
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !149
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !149
  %38 = xor i1 %37, true, !mcsema_real_eip !149
  store i1 %38, i1* %PF, !mcsema_real_eip !149
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !149
  store i1 %39, i1* %ZF, !mcsema_real_eip !149
  %40 = lshr i32 %30, 31, !mcsema_real_eip !149
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !149
  store i1 %41, i1* %SF, !mcsema_real_eip !149
  %42 = icmp ult i32 %29, 7, !mcsema_real_eip !149
  store i1 %42, i1* %CF, !mcsema_real_eip !149
  %43 = xor i32 %29, 7, !mcsema_real_eip !149
  %44 = xor i32 %29, %30, !mcsema_real_eip !149
  %45 = and i32 %43, %44, !mcsema_real_eip !149
  %46 = lshr i32 %45, 31, !mcsema_real_eip !149
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !149
  store i1 %47, i1* %OF, !mcsema_real_eip !149
  %48 = load i1, i1* %OF, !mcsema_real_eip !150
  %49 = load i1, i1* %SF, !mcsema_real_eip !150
  %50 = icmp eq i1 %49, %48, !mcsema_real_eip !150
  br i1 %50, label %block_0x8b, label %block_0x19, !mcsema_real_eip !150

block_0x19:                                       ; preds = %block_0xf
  %RBP_val.219 = load i64, i64* %XBP, !mcsema_real_eip !151
  %51 = add i64 %RBP_val.219, -8, !mcsema_real_eip !151
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !151
  %53 = ptrtoint i64* %52 to i64, !mcsema_real_eip !151
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !151
  store i32 0, i32* %54, !mcsema_real_eip !151
  br label %block_0x20, !mcsema_real_eip !152

block_0x8b:                                       ; preds = %block_0xf
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !153
  %AL.209 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.209, !mcsema_real_eip !154
  %RDI_val.210 = load i64, i64* %XDI, !mcsema_real_eip !155
  %RSI_val.211 = load i64, i64* %XSI, !mcsema_real_eip !155
  %RSP_val.212 = load i64, i64* %XSP, !mcsema_real_eip !155
  %55 = sub i64 %RSP_val.212, 8, !mcsema_real_eip !155
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !155
  store i64 -2415393069852865332, i64* %56, !mcsema_real_eip !155
  store i64 %55, i64* %XSP, !mcsema_real_eip !155
  %57 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.210, i64 %RSI_val.211), !mcsema_real_eip !155
  store i64 %57, i64* %XAX, !mcsema_real_eip !155
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !156
  %58 = add i64 %RBP_val.213, -20, !mcsema_real_eip !156
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !156
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !156
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !156
  %60 = ptrtoint i64* %59 to i64, !mcsema_real_eip !156
  %61 = inttoptr i64 %60 to i32*, !mcsema_real_eip !156
  store i32 %EAX_val.215, i32* %61, !mcsema_real_eip !156
  %RSP_val.216 = load i64, i64* %XSP, !mcsema_real_eip !157
  %62 = add i64 32, %RSP_val.216, !mcsema_real_eip !157
  %63 = xor i64 %62, %RSP_val.216, !mcsema_real_eip !157
  %64 = xor i64 %63, 32, !mcsema_real_eip !157
  %65 = and i64 %64, 16, !mcsema_real_eip !157
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !157
  store i1 %66, i1* %AF, !mcsema_real_eip !157
  %67 = lshr i64 %62, 63, !mcsema_real_eip !157
  %68 = trunc i64 %67 to i1, !mcsema_real_eip !157
  store i1 %68, i1* %SF, !mcsema_real_eip !157
  %69 = icmp eq i64 %62, 0, !mcsema_real_eip !157
  store i1 %69, i1* %ZF, !mcsema_real_eip !157
  %70 = xor i64 %RSP_val.216, 32, !mcsema_real_eip !157
  %71 = xor i64 %70, -1, !mcsema_real_eip !157
  %72 = xor i64 %RSP_val.216, %62, !mcsema_real_eip !157
  %73 = and i64 %71, %72, !mcsema_real_eip !157
  %74 = lshr i64 %73, 63, !mcsema_real_eip !157
  %75 = and i64 %74, 1, !mcsema_real_eip !157
  %76 = trunc i64 %75 to i1, !mcsema_real_eip !157
  store i1 %76, i1* %OF, !mcsema_real_eip !157
  %77 = trunc i64 %62 to i8, !mcsema_real_eip !157
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !157
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !157
  %80 = xor i1 %79, true, !mcsema_real_eip !157
  store i1 %80, i1* %PF, !mcsema_real_eip !157
  %81 = icmp ult i64 %62, %RSP_val.216, !mcsema_real_eip !157
  store i1 %81, i1* %CF, !mcsema_real_eip !157
  store i64 %62, i64* %XSP, !mcsema_real_eip !157
  %RSP_val.217 = load i64, i64* %XSP, !mcsema_real_eip !158
  %82 = inttoptr i64 %RSP_val.217 to i64*, !mcsema_real_eip !158
  %83 = load i64, i64* %82, !mcsema_real_eip !158
  store i64 %83, i64* %XBP, !mcsema_real_eip !158
  %84 = add i64 %RSP_val.217, 8, !mcsema_real_eip !158
  store i64 %84, i64* %XSP, !mcsema_real_eip !158
  %RSP_val.218 = load i64, i64* %XSP, !mcsema_real_eip !159
  %85 = add i64 %RSP_val.218, 8, !mcsema_real_eip !159
  %86 = inttoptr i64 %RSP_val.218 to i64*, !mcsema_real_eip !159
  %87 = load i64, i64* %86, !mcsema_real_eip !159
  store i64 %87, i64* %XIP, !mcsema_real_eip !159
  store i64 %85, i64* %XSP, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !152
  %88 = add i64 %RBP_val.220, -8, !mcsema_real_eip !152
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !152
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !152
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !152
  %92 = load i32, i32* %91, !mcsema_real_eip !152
  %93 = sub i32 %92, 11, !mcsema_real_eip !152
  %94 = xor i32 %93, %92, !mcsema_real_eip !152
  %95 = xor i32 %94, 11, !mcsema_real_eip !152
  %96 = and i32 %95, 16, !mcsema_real_eip !152
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !152
  store i1 %97, i1* %AF, !mcsema_real_eip !152
  %98 = trunc i32 %93 to i8, !mcsema_real_eip !152
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !152
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !152
  %101 = xor i1 %100, true, !mcsema_real_eip !152
  store i1 %101, i1* %PF, !mcsema_real_eip !152
  %102 = icmp eq i32 %93, 0, !mcsema_real_eip !152
  store i1 %102, i1* %ZF, !mcsema_real_eip !152
  %103 = lshr i32 %93, 31, !mcsema_real_eip !152
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !152
  store i1 %104, i1* %SF, !mcsema_real_eip !152
  %105 = icmp ult i32 %92, 11, !mcsema_real_eip !152
  store i1 %105, i1* %CF, !mcsema_real_eip !152
  %106 = xor i32 %92, 11, !mcsema_real_eip !152
  %107 = xor i32 %92, %93, !mcsema_real_eip !152
  %108 = and i32 %106, %107, !mcsema_real_eip !152
  %109 = lshr i32 %108, 31, !mcsema_real_eip !152
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !152
  store i1 %110, i1* %OF, !mcsema_real_eip !152
  %111 = load i1, i1* %OF, !mcsema_real_eip !160
  %112 = load i1, i1* %SF, !mcsema_real_eip !160
  %113 = icmp eq i1 %112, %111, !mcsema_real_eip !160
  br i1 %113, label %block_0x69, label %block_0x2a, !mcsema_real_eip !160

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, !mcsema_real_eip !161
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !162
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !163
  %114 = add i64 %RBP_val.234, -4, !mcsema_real_eip !163
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !163
  %116 = ptrtoint i64* %115 to i64, !mcsema_real_eip !163
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !163
  %118 = load i32, i32* %117, !mcsema_real_eip !163
  %119 = sext i32 %118 to i64, !mcsema_real_eip !163
  store i64 %119, i64* %XCX, !mcsema_real_eip !163
  %RCX_val.235 = load i64, i64* %XCX, !mcsema_real_eip !164
  %120 = sext i64 %RCX_val.235 to i128, !mcsema_real_eip !164
  %121 = mul i128 %120, 11, !mcsema_real_eip !164
  %122 = trunc i128 %121 to i64, !mcsema_real_eip !164
  %123 = sext i64 %122 to i128, !mcsema_real_eip !164
  %124 = icmp ne i128 %123, %121, !mcsema_real_eip !164
  %125 = icmp slt i64 %122, 0, !mcsema_real_eip !164
  store i1 %125, i1* %SF, !mcsema_real_eip !164
  store i1 %124, i1* %OF, !mcsema_real_eip !164
  store i1 %124, i1* %CF, !mcsema_real_eip !164
  store i64 %122, i64* %XCX, !mcsema_real_eip !164
  %RAX_val.236 = load i64, i64* %XAX, !mcsema_real_eip !165
  %RCX_val.237 = load i64, i64* %XCX, !mcsema_real_eip !165
  %126 = add i64 %RCX_val.237, %RAX_val.236, !mcsema_real_eip !165
  %127 = xor i64 %126, %RAX_val.236, !mcsema_real_eip !165
  %128 = xor i64 %127, %RCX_val.237, !mcsema_real_eip !165
  %129 = and i64 %128, 16, !mcsema_real_eip !165
  %130 = icmp ne i64 %129, 0, !mcsema_real_eip !165
  store i1 %130, i1* %AF, !mcsema_real_eip !165
  %131 = lshr i64 %126, 63, !mcsema_real_eip !165
  %132 = trunc i64 %131 to i1, !mcsema_real_eip !165
  store i1 %132, i1* %SF, !mcsema_real_eip !165
  %133 = icmp eq i64 %126, 0, !mcsema_real_eip !165
  store i1 %133, i1* %ZF, !mcsema_real_eip !165
  %134 = xor i64 %RAX_val.236, %RCX_val.237, !mcsema_real_eip !165
  %135 = xor i64 %134, -1, !mcsema_real_eip !165
  %136 = xor i64 %RAX_val.236, %126, !mcsema_real_eip !165
  %137 = and i64 %135, %136, !mcsema_real_eip !165
  %138 = lshr i64 %137, 63, !mcsema_real_eip !165
  %139 = and i64 %138, 1, !mcsema_real_eip !165
  %140 = trunc i64 %139 to i1, !mcsema_real_eip !165
  store i1 %140, i1* %OF, !mcsema_real_eip !165
  %141 = trunc i64 %126 to i8, !mcsema_real_eip !165
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !165
  %143 = trunc i8 %142 to i1, !mcsema_real_eip !165
  %144 = xor i1 %143, true, !mcsema_real_eip !165
  store i1 %144, i1* %PF, !mcsema_real_eip !165
  %145 = icmp ult i64 %126, %RAX_val.236, !mcsema_real_eip !165
  store i1 %145, i1* %CF, !mcsema_real_eip !165
  store i64 %126, i64* %XAX, !mcsema_real_eip !165
  %RBP_val.238 = load i64, i64* %XBP, !mcsema_real_eip !166
  %146 = add i64 %RBP_val.238, -8, !mcsema_real_eip !166
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !166
  %148 = ptrtoint i64* %147 to i64, !mcsema_real_eip !166
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !166
  %150 = load i32, i32* %149, !mcsema_real_eip !166
  %151 = sext i32 %150 to i64, !mcsema_real_eip !166
  store i64 %151, i64* %XCX, !mcsema_real_eip !166
  %RAX_val.239 = load i64, i64* %XAX, !mcsema_real_eip !167
  %152 = add i64 %RAX_val.239, 0, !mcsema_real_eip !167
  %RCX_val.240 = load i64, i64* %XCX, !mcsema_real_eip !167
  %153 = add i64 %152, %RCX_val.240, !mcsema_real_eip !167
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !167
  %155 = ptrtoint i64* %154 to i64, !mcsema_real_eip !167
  %156 = inttoptr i64 %155 to i8*, !mcsema_real_eip !167
  %157 = load i8, i8* %156, !mcsema_real_eip !167
  %158 = sext i8 %157 to i32, !mcsema_real_eip !167
  %159 = zext i32 %158 to i64, !mcsema_real_eip !167
  store i64 %159, i64* %XSI, !mcsema_real_eip !167
  %AL.241 = bitcast i64* %XAX to i8*, !mcsema_real_eip !168
  store i8 0, i8* %AL.241, !mcsema_real_eip !168
  %RDI_val.242 = load i64, i64* %XDI, !mcsema_real_eip !169
  %RSI_val.243 = load i64, i64* %XSI, !mcsema_real_eip !169
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !169
  %160 = sub i64 %RSP_val.244, 8, !mcsema_real_eip !169
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %161, !mcsema_real_eip !169
  store i64 %160, i64* %XSP, !mcsema_real_eip !169
  %162 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.242, i64 %RSI_val.243), !mcsema_real_eip !169
  store i64 %162, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.245 = load i64, i64* %XBP, !mcsema_real_eip !170
  %163 = add i64 %RBP_val.245, -12, !mcsema_real_eip !170
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !170
  %EAX.246 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.247 = load i32, i32* %EAX.246, !mcsema_real_eip !170
  %165 = ptrtoint i64* %164 to i64, !mcsema_real_eip !170
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.247, i32* %166, !mcsema_real_eip !170
  %RBP_val.248 = load i64, i64* %XBP, !mcsema_real_eip !171
  %167 = add i64 %RBP_val.248, -8, !mcsema_real_eip !171
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !171
  %169 = ptrtoint i64* %168 to i64, !mcsema_real_eip !171
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !171
  %171 = load i32, i32* %170, !mcsema_real_eip !171
  %172 = zext i32 %171 to i64, !mcsema_real_eip !171
  store i64 %172, i64* %XAX, !mcsema_real_eip !171
  %EAX.249 = bitcast i64* %XAX to i32*, !mcsema_real_eip !172
  %EAX_val.250 = load i32, i32* %EAX.249, !mcsema_real_eip !172
  %173 = add i32 1, %EAX_val.250, !mcsema_real_eip !172
  %174 = xor i32 %173, %EAX_val.250, !mcsema_real_eip !172
  %175 = xor i32 %174, 1, !mcsema_real_eip !172
  %176 = and i32 %175, 16, !mcsema_real_eip !172
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !172
  store i1 %177, i1* %AF, !mcsema_real_eip !172
  %178 = lshr i32 %173, 31, !mcsema_real_eip !172
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !172
  store i1 %179, i1* %SF, !mcsema_real_eip !172
  %180 = icmp eq i32 %173, 0, !mcsema_real_eip !172
  store i1 %180, i1* %ZF, !mcsema_real_eip !172
  %181 = xor i32 %EAX_val.250, 1, !mcsema_real_eip !172
  %182 = xor i32 %181, -1, !mcsema_real_eip !172
  %183 = xor i32 %EAX_val.250, %173, !mcsema_real_eip !172
  %184 = and i32 %182, %183, !mcsema_real_eip !172
  %185 = lshr i32 %184, 31, !mcsema_real_eip !172
  %186 = and i32 %185, 1, !mcsema_real_eip !172
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !172
  store i1 %187, i1* %OF, !mcsema_real_eip !172
  %188 = trunc i32 %173 to i8, !mcsema_real_eip !172
  %189 = call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !172
  %190 = trunc i8 %189 to i1, !mcsema_real_eip !172
  %191 = xor i1 %190, true, !mcsema_real_eip !172
  store i1 %191, i1* %PF, !mcsema_real_eip !172
  %192 = icmp ult i32 %173, %EAX_val.250, !mcsema_real_eip !172
  store i1 %192, i1* %CF, !mcsema_real_eip !172
  %193 = zext i32 %173 to i64, !mcsema_real_eip !172
  store i64 %193, i64* %XAX, !mcsema_real_eip !172
  %RBP_val.251 = load i64, i64* %XBP, !mcsema_real_eip !173
  %194 = add i64 %RBP_val.251, -8, !mcsema_real_eip !173
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !173
  %EAX.252 = bitcast i64* %XAX to i32*, !mcsema_real_eip !173
  %EAX_val.253 = load i32, i32* %EAX.252, !mcsema_real_eip !173
  %196 = ptrtoint i64* %195 to i64, !mcsema_real_eip !173
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.253, i32* %197, !mcsema_real_eip !173
  br label %block_0x20, !mcsema_real_eip !174

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !175
  %AL.221 = bitcast i64* %XAX to i8*, !mcsema_real_eip !176
  store i8 0, i8* %AL.221, !mcsema_real_eip !176
  %RDI_val.222 = load i64, i64* %XDI, !mcsema_real_eip !177
  %RSI_val.223 = load i64, i64* %XSI, !mcsema_real_eip !177
  %RSP_val.224 = load i64, i64* %XSP, !mcsema_real_eip !177
  %198 = sub i64 %RSP_val.224, 8, !mcsema_real_eip !177
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !177
  store i64 -2415393069852865332, i64* %199, !mcsema_real_eip !177
  store i64 %198, i64* %XSP, !mcsema_real_eip !177
  %200 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.222, i64 %RSI_val.223), !mcsema_real_eip !177
  store i64 %200, i64* %XAX, !mcsema_real_eip !177
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !178
  %201 = add i64 %RBP_val.225, -16, !mcsema_real_eip !178
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !178
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !178
  %203 = ptrtoint i64* %202 to i64, !mcsema_real_eip !178
  %204 = inttoptr i64 %203 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.227, i32* %204, !mcsema_real_eip !178
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !179
  %205 = add i64 %RBP_val.228, -4, !mcsema_real_eip !179
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !179
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !179
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !179
  %209 = load i32, i32* %208, !mcsema_real_eip !179
  %210 = zext i32 %209 to i64, !mcsema_real_eip !179
  store i64 %210, i64* %XAX, !mcsema_real_eip !179
  %EAX.229 = bitcast i64* %XAX to i32*, !mcsema_real_eip !180
  %EAX_val.230 = load i32, i32* %EAX.229, !mcsema_real_eip !180
  %211 = add i32 1, %EAX_val.230, !mcsema_real_eip !180
  %212 = xor i32 %211, %EAX_val.230, !mcsema_real_eip !180
  %213 = xor i32 %212, 1, !mcsema_real_eip !180
  %214 = and i32 %213, 16, !mcsema_real_eip !180
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !180
  store i1 %215, i1* %AF, !mcsema_real_eip !180
  %216 = lshr i32 %211, 31, !mcsema_real_eip !180
  %217 = trunc i32 %216 to i1, !mcsema_real_eip !180
  store i1 %217, i1* %SF, !mcsema_real_eip !180
  %218 = icmp eq i32 %211, 0, !mcsema_real_eip !180
  store i1 %218, i1* %ZF, !mcsema_real_eip !180
  %219 = xor i32 %EAX_val.230, 1, !mcsema_real_eip !180
  %220 = xor i32 %219, -1, !mcsema_real_eip !180
  %221 = xor i32 %EAX_val.230, %211, !mcsema_real_eip !180
  %222 = and i32 %220, %221, !mcsema_real_eip !180
  %223 = lshr i32 %222, 31, !mcsema_real_eip !180
  %224 = and i32 %223, 1, !mcsema_real_eip !180
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !180
  store i1 %225, i1* %OF, !mcsema_real_eip !180
  %226 = trunc i32 %211 to i8, !mcsema_real_eip !180
  %227 = call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !180
  %228 = trunc i8 %227 to i1, !mcsema_real_eip !180
  %229 = xor i1 %228, true, !mcsema_real_eip !180
  store i1 %229, i1* %PF, !mcsema_real_eip !180
  %230 = icmp ult i32 %211, %EAX_val.230, !mcsema_real_eip !180
  store i1 %230, i1* %CF, !mcsema_real_eip !180
  %231 = zext i32 %211 to i64, !mcsema_real_eip !180
  store i64 %231, i64* %XAX, !mcsema_real_eip !180
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !181
  %232 = add i64 %RBP_val.231, -4, !mcsema_real_eip !181
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !181
  %EAX.232 = bitcast i64* %XAX to i32*, !mcsema_real_eip !181
  %EAX_val.233 = load i32, i32* %EAX.232, !mcsema_real_eip !181
  %234 = ptrtoint i64* %233 to i64, !mcsema_real_eip !181
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !181
  store i32 %EAX_val.233, i32* %235, !mcsema_real_eip !181
  br label %block_0xf, !mcsema_real_eip !182
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 176}
!3 = !{i64 177}
!4 = !{i64 180}
!5 = !{i64 184}
!6 = !{i64 186}
!7 = !{i64 191}
!8 = !{i64 193}
!9 = !{i64 197}
!10 = !{i64 207}
!11 = !{i64 214}
!12 = !{i64 217}
!13 = !{i64 221}
!14 = !{i64 228}
!15 = !{i64 235}
!16 = !{i64 242}
!17 = !{i64 246}
!18 = !{i64 250}
!19 = !{i64 253}
!20 = !{i64 257}
!21 = !{i64 262}
!22 = !{i64 264}
!23 = !{i64 267}
!24 = !{i64 272}
!25 = !{i64 276}
!26 = !{i64 280}
!27 = !{i64 286}
!28 = !{i64 289}
!29 = !{i64 292}
!30 = !{i64 295}
!31 = !{i64 298}
!32 = !{i64 302}
!33 = !{i64 307}
!34 = !{i64 310}
!35 = !{i64 312}
!36 = !{i64 315}
!37 = !{i64 319}
!38 = !{i64 322}
!39 = !{i64 759}
!40 = !{i64 769}
!41 = !{i64 771}
!42 = !{i64 776}
!43 = !{i64 783}
!44 = !{i64 786}
!45 = !{i64 789}
!46 = !{i64 793}
!47 = !{i64 794}
!48 = !{i64 328}
!49 = !{i64 332}
!50 = !{i64 340}
!51 = !{i64 398}
!52 = !{i64 408}
!53 = !{i64 410}
!54 = !{i64 415}
!55 = !{i64 425}
!56 = !{i64 428}
!57 = !{i64 430}
!58 = !{i64 435}
!59 = !{i64 440}
!60 = !{i64 443}
!61 = !{i64 448}
!62 = !{i64 458}
!63 = !{i64 462}
!64 = !{i64 466}
!65 = !{i64 469}
!66 = !{i64 473}
!67 = !{i64 477}
!68 = !{i64 480}
!69 = !{i64 342}
!70 = !{i64 345}
!71 = !{i64 348}
!72 = !{i64 351}
!73 = !{i64 356}
!74 = !{i64 359}
!75 = !{i64 362}
!76 = !{i64 365}
!77 = !{i64 370}
!78 = !{i64 373}
!79 = !{i64 376}
!80 = !{i64 379}
!81 = !{i64 384}
!82 = !{i64 387}
!83 = !{i64 390}
!84 = !{i64 393}
!85 = !{i64 486}
!86 = !{i64 496}
!87 = !{i64 498}
!88 = !{i64 503}
!89 = !{i64 513}
!90 = !{i64 517}
!91 = !{i64 520}
!92 = !{i64 522}
!93 = !{i64 527}
!94 = !{i64 529}
!95 = !{i64 532}
!96 = !{i64 655}
!97 = !{i64 537}
!98 = !{i64 547}
!99 = !{i64 551}
!100 = !{i64 555}
!101 = !{i64 558}
!102 = !{i64 562}
!103 = !{i64 566}
!104 = !{i64 569}
!105 = !{i64 575}
!106 = !{i64 579}
!107 = !{i64 658}
!108 = !{i64 661}
!109 = !{i64 667}
!110 = !{i64 670}
!111 = !{i64 673}
!112 = !{i64 711}
!113 = !{i64 721}
!114 = !{i64 725}
!115 = !{i64 729}
!116 = !{i64 732}
!117 = !{i64 736}
!118 = !{i64 740}
!119 = !{i64 745}
!120 = !{i64 748}
!121 = !{i64 751}
!122 = !{i64 754}
!123 = !{i64 585}
!124 = !{i64 595}
!125 = !{i64 599}
!126 = !{i64 603}
!127 = !{i64 606}
!128 = !{i64 610}
!129 = !{i64 614}
!130 = !{i64 617}
!131 = !{i64 643}
!132 = !{i64 646}
!133 = !{i64 649}
!134 = !{i64 652}
!135 = !{i64 679}
!136 = !{i64 689}
!137 = !{i64 691}
!138 = !{i64 696}
!139 = !{i64 703}
!140 = !{i64 706}
!141 = !{i64 623}
!142 = !{i64 627}
!143 = !{i64 633}
!144 = !{i64 637}
!145 = !{i64 0}
!146 = !{i64 1}
!147 = !{i64 4}
!148 = !{i64 8}
!149 = !{i64 15}
!150 = !{i64 19}
!151 = !{i64 25}
!152 = !{i64 32}
!153 = !{i64 139}
!154 = !{i64 149}
!155 = !{i64 151}
!156 = !{i64 156}
!157 = !{i64 159}
!158 = !{i64 163}
!159 = !{i64 164}
!160 = !{i64 36}
!161 = !{i64 42}
!162 = !{i64 52}
!163 = !{i64 62}
!164 = !{i64 66}
!165 = !{i64 70}
!166 = !{i64 73}
!167 = !{i64 77}
!168 = !{i64 81}
!169 = !{i64 83}
!170 = !{i64 88}
!171 = !{i64 91}
!172 = !{i64 94}
!173 = !{i64 97}
!174 = !{i64 100}
!175 = !{i64 105}
!176 = !{i64 115}
!177 = !{i64 117}
!178 = !{i64 122}
!179 = !{i64 125}
!180 = !{i64 128}
!181 = !{i64 131}
!182 = !{i64 134}
