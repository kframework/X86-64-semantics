; ModuleID = 'Output/test_23.clang.bc'
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
  %3 = sext i8 112 to i64, !mcsema_real_eip !4
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
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !5
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !5
  %22 = xor i32 %EAX_val.5, %EAX_val.7, !mcsema_real_eip !5
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
  store i64 %30, i64* %XAX, !mcsema_real_eip !5
  %31 = zext i32 28 to i64, !mcsema_real_eip !6
  store i64 %31, i64* %XCX, !mcsema_real_eip !6
  %ECX.8 = bitcast i64* %XCX to i32*, !mcsema_real_eip !7
  %ECX_val.9 = load i32, i32* %ECX.8, !mcsema_real_eip !7
  %32 = zext i32 %ECX_val.9 to i64, !mcsema_real_eip !7
  store i64 %32, i64* %XDX, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %33 = add i64 %RBP_val.10, -64, !mcsema_real_eip !8
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !8
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !8
  store i64 %35, i64* %R8, !mcsema_real_eip !8
  %36 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !9
  %37 = ptrtoint [77 x i8]* %36 to i64, !mcsema_real_eip !9
  %38 = add i64 %37, 0, !mcsema_real_eip !9
  store i64 %38, i64* %R9, !mcsema_real_eip !9
  %RBP_val.11 = load i64, i64* %XBP, !mcsema_real_eip !10
  %39 = add i64 %RBP_val.11, -4, !mcsema_real_eip !10
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !10
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !10
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !10
  store i32 0, i32* %42, !mcsema_real_eip !10
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !11
  %43 = add i64 %RBP_val.12, -8, !mcsema_real_eip !11
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !11
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !11
  %EDI_val.14 = load i32, i32* %EDI.13, !mcsema_real_eip !11
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !11
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !11
  store i32 %EDI_val.14, i32* %46, !mcsema_real_eip !11
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !12
  %47 = add i64 %RBP_val.15, -16, !mcsema_real_eip !12
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !12
  %RSI_val.16 = load i64, i64* %XSI, !mcsema_real_eip !12
  store i64 %RSI_val.16, i64* %48, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !13
  %49 = add i64 %RBP_val.17, -36, !mcsema_real_eip !13
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !13
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !13
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %52, !mcsema_real_eip !13
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !14
  %53 = add i64 %RBP_val.18, -20, !mcsema_real_eip !14
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !14
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !14
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !14
  store i32 1, i32* %56, !mcsema_real_eip !14
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !15
  %57 = add i64 %RBP_val.19, -24, !mcsema_real_eip !15
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !15
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !15
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !15
  store i32 1, i32* %60, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !16
  %61 = add i64 %RBP_val.20, -24, !mcsema_real_eip !16
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !16
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !16
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !16
  %65 = load i32, i32* %64, !mcsema_real_eip !16
  %66 = sext i32 %65 to i64, !mcsema_real_eip !16
  store i64 %66, i64* %XSI, !mcsema_real_eip !16
  %RSI_val.21 = load i64, i64* %XSI, !mcsema_real_eip !17
  %67 = sext i64 %RSI_val.21 to i128, !mcsema_real_eip !17
  %68 = sext i64 11 to i128, !mcsema_real_eip !17
  %69 = mul i128 %67, %68, !mcsema_real_eip !17
  %70 = trunc i128 %69 to i64, !mcsema_real_eip !17
  %71 = sext i64 %70 to i128, !mcsema_real_eip !17
  %72 = icmp ne i128 %71, %69, !mcsema_real_eip !17
  %73 = icmp slt i64 %70, 0, !mcsema_real_eip !17
  store i1 %73, i1* %SF, !mcsema_real_eip !17
  store i1 %72, i1* %OF, !mcsema_real_eip !17
  store i1 %72, i1* %CF, !mcsema_real_eip !17
  store i64 %70, i64* %XSI, !mcsema_real_eip !17
  %R9_val.22 = load i64, i64* %R9, !mcsema_real_eip !18
  %RSI_val.23 = load i64, i64* %XSI, !mcsema_real_eip !18
  %74 = add i64 %RSI_val.23, %R9_val.22, !mcsema_real_eip !18
  %75 = xor i64 %74, %R9_val.22, !mcsema_real_eip !18
  %76 = xor i64 %75, %RSI_val.23, !mcsema_real_eip !18
  %77 = and i64 %76, 16, !mcsema_real_eip !18
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !18
  store i1 %78, i1* %AF, !mcsema_real_eip !18
  %79 = lshr i64 %74, 63, !mcsema_real_eip !18
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !18
  store i1 %80, i1* %SF, !mcsema_real_eip !18
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !18
  store i1 %81, i1* %ZF, !mcsema_real_eip !18
  %82 = xor i64 %R9_val.22, %RSI_val.23, !mcsema_real_eip !18
  %83 = xor i64 %82, -1, !mcsema_real_eip !18
  %84 = xor i64 %R9_val.22, %74, !mcsema_real_eip !18
  %85 = and i64 %83, %84, !mcsema_real_eip !18
  %86 = lshr i64 %85, 63, !mcsema_real_eip !18
  %87 = and i64 %86, 1, !mcsema_real_eip !18
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !18
  store i1 %88, i1* %OF, !mcsema_real_eip !18
  %89 = trunc i64 %74 to i8, !mcsema_real_eip !18
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !18
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !18
  %92 = xor i1 %91, true, !mcsema_real_eip !18
  store i1 %92, i1* %PF, !mcsema_real_eip !18
  %93 = icmp ult i64 %74, %R9_val.22, !mcsema_real_eip !18
  store i1 %93, i1* %CF, !mcsema_real_eip !18
  store i64 %74, i64* %R9, !mcsema_real_eip !18
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !19
  %94 = add i64 %RBP_val.24, -20, !mcsema_real_eip !19
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !19
  %96 = ptrtoint i64* %95 to i64, !mcsema_real_eip !19
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !19
  %98 = load i32, i32* %97, !mcsema_real_eip !19
  %99 = sext i32 %98 to i64, !mcsema_real_eip !19
  store i64 %99, i64* %XSI, !mcsema_real_eip !19
  %R9_val.25 = load i64, i64* %R9, !mcsema_real_eip !20
  %100 = add i64 %R9_val.25, 0, !mcsema_real_eip !20
  %RSI_val.26 = load i64, i64* %XSI, !mcsema_real_eip !20
  %101 = add i64 %100, %RSI_val.26, !mcsema_real_eip !20
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !20
  %103 = ptrtoint i64* %102 to i64, !mcsema_real_eip !20
  %104 = inttoptr i64 %103 to i8*, !mcsema_real_eip !20
  store i8 88, i8* %104, !mcsema_real_eip !20
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.28 = load i32, i32* %EAX.27, !mcsema_real_eip !21
  %105 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !21
  store i64 %105, i64* %XDI, !mcsema_real_eip !21
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  store i64 %R8_val.29, i64* %XSI, !mcsema_real_eip !22
  %RDI_val.30 = load i64, i64* %XDI, !mcsema_real_eip !23
  %RSI_val.31 = load i64, i64* %XSI, !mcsema_real_eip !23
  %RDX_val.32 = load i64, i64* %XDX, !mcsema_real_eip !23
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !23
  %106 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !23
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %107, !mcsema_real_eip !23
  store i64 %106, i64* %XSP, !mcsema_real_eip !23
  %108 = call x86_64_sysvcc i64 @_read(i64 %RDI_val.30, i64 %RSI_val.31, i64 %RDX_val.32), !mcsema_real_eip !23
  store i64 %108, i64* %XAX, !mcsema_real_eip !23
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !24
  %109 = add i64 %RBP_val.34, -72, !mcsema_real_eip !24
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !24
  %RAX_val.35 = load i64, i64* %XAX, !mcsema_real_eip !24
  store i64 %RAX_val.35, i64* %110, !mcsema_real_eip !24
  br label %block_0x114, !mcsema_real_eip !25

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !25
  %111 = add i64 %RBP_val.36, -36, !mcsema_real_eip !25
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !25
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !25
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !25
  %115 = load i32, i32* %114, !mcsema_real_eip !25
  %116 = sub i32 %115, 28, !mcsema_real_eip !25
  %117 = xor i32 %116, %115, !mcsema_real_eip !25
  %118 = xor i32 %117, 28, !mcsema_real_eip !25
  %119 = and i32 %118, 16, !mcsema_real_eip !25
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !25
  store i1 %120, i1* %AF, !mcsema_real_eip !25
  %121 = trunc i32 %116 to i8, !mcsema_real_eip !25
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !25
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !25
  %124 = xor i1 %123, true, !mcsema_real_eip !25
  store i1 %124, i1* %PF, !mcsema_real_eip !25
  %125 = icmp eq i32 %116, 0, !mcsema_real_eip !25
  store i1 %125, i1* %ZF, !mcsema_real_eip !25
  %126 = lshr i32 %116, 31, !mcsema_real_eip !25
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !25
  store i1 %127, i1* %SF, !mcsema_real_eip !25
  %128 = icmp ult i32 %115, 28, !mcsema_real_eip !25
  store i1 %128, i1* %CF, !mcsema_real_eip !25
  %129 = xor i32 %115, 28, !mcsema_real_eip !25
  %130 = xor i32 %115, %116, !mcsema_real_eip !25
  %131 = and i32 %129, %130, !mcsema_real_eip !25
  %132 = lshr i32 %131, 31, !mcsema_real_eip !25
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !25
  store i1 %133, i1* %OF, !mcsema_real_eip !25
  %134 = load i1, i1* %OF, !mcsema_real_eip !26
  %135 = load i1, i1* %SF, !mcsema_real_eip !26
  %136 = icmp eq i1 %135, %134, !mcsema_real_eip !26
  br i1 %136, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !26

block_0x11e:                                      ; preds = %block_0x114
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !27
  %137 = add i64 %RBP_val.45, -20, !mcsema_real_eip !27
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !27
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !27
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !27
  %141 = load i32, i32* %140, !mcsema_real_eip !27
  %142 = zext i32 %141 to i64, !mcsema_real_eip !27
  store i64 %142, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !28
  %143 = add i64 %RBP_val.46, -28, !mcsema_real_eip !28
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !28
  %EAX.47 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.48 = load i32, i32* %EAX.47, !mcsema_real_eip !28
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !28
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.48, i32* %146, !mcsema_real_eip !28
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !29
  %147 = add i64 %RBP_val.49, -24, !mcsema_real_eip !29
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !29
  %149 = ptrtoint i64* %148 to i64, !mcsema_real_eip !29
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !29
  %151 = load i32, i32* %150, !mcsema_real_eip !29
  %152 = zext i32 %151 to i64, !mcsema_real_eip !29
  store i64 %152, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !30
  %153 = add i64 %RBP_val.50, -32, !mcsema_real_eip !30
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !30
  %EAX.51 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.52 = load i32, i32* %EAX.51, !mcsema_real_eip !30
  %155 = ptrtoint i64* %154 to i64, !mcsema_real_eip !30
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.52, i32* %156, !mcsema_real_eip !30
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !31
  %157 = add i64 %RBP_val.53, -36, !mcsema_real_eip !31
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !31
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !31
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !31
  %161 = load i32, i32* %160, !mcsema_real_eip !31
  %162 = sext i32 %161 to i64, !mcsema_real_eip !31
  store i64 %162, i64* %XCX, !mcsema_real_eip !31
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !32
  %163 = add i64 %RBP_val.54, -64, !mcsema_real_eip !32
  %RCX_val.55 = load i64, i64* %XCX, !mcsema_real_eip !32
  %164 = add i64 %163, %RCX_val.55, !mcsema_real_eip !32
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !32
  %166 = ptrtoint i64* %165 to i64, !mcsema_real_eip !32
  %167 = inttoptr i64 %166 to i8*, !mcsema_real_eip !32
  %168 = load i8, i8* %167, !mcsema_real_eip !32
  %169 = sext i8 %168 to i32, !mcsema_real_eip !32
  %170 = zext i32 %169 to i64, !mcsema_real_eip !32
  store i64 %170, i64* %XAX, !mcsema_real_eip !32
  %EAX.56 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.57 = load i32, i32* %EAX.56, !mcsema_real_eip !33
  %171 = add i32 -97, %EAX_val.57, !mcsema_real_eip !33
  %172 = xor i32 %171, %EAX_val.57, !mcsema_real_eip !33
  %173 = xor i32 %172, -97, !mcsema_real_eip !33
  %174 = and i32 %173, 16, !mcsema_real_eip !33
  %175 = icmp ne i32 %174, 0, !mcsema_real_eip !33
  store i1 %175, i1* %AF, !mcsema_real_eip !33
  %176 = lshr i32 %171, 31, !mcsema_real_eip !33
  %177 = trunc i32 %176 to i1, !mcsema_real_eip !33
  store i1 %177, i1* %SF, !mcsema_real_eip !33
  %178 = icmp eq i32 %171, 0, !mcsema_real_eip !33
  store i1 %178, i1* %ZF, !mcsema_real_eip !33
  %179 = xor i32 %EAX_val.57, -97, !mcsema_real_eip !33
  %180 = xor i32 %179, -1, !mcsema_real_eip !33
  %181 = xor i32 %EAX_val.57, %171, !mcsema_real_eip !33
  %182 = and i32 %180, %181, !mcsema_real_eip !33
  %183 = lshr i32 %182, 31, !mcsema_real_eip !33
  %184 = and i32 %183, 1, !mcsema_real_eip !33
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !33
  store i1 %185, i1* %OF, !mcsema_real_eip !33
  %186 = trunc i32 %171 to i8, !mcsema_real_eip !33
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !33
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !33
  %189 = xor i1 %188, true, !mcsema_real_eip !33
  store i1 %189, i1* %PF, !mcsema_real_eip !33
  %190 = icmp ult i32 %171, %EAX_val.57, !mcsema_real_eip !33
  store i1 %190, i1* %CF, !mcsema_real_eip !33
  %191 = zext i32 %171 to i64, !mcsema_real_eip !33
  store i64 %191, i64* %XAX, !mcsema_real_eip !33
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !34
  %192 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !34
  store i64 %192, i64* %XCX, !mcsema_real_eip !34
  %EAX.60 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.61 = load i32, i32* %EAX.60, !mcsema_real_eip !35
  %193 = sub i32 %EAX_val.61, 22, !mcsema_real_eip !35
  %194 = xor i32 %193, %EAX_val.61, !mcsema_real_eip !35
  %195 = xor i32 %194, 22, !mcsema_real_eip !35
  %196 = and i32 %195, 16, !mcsema_real_eip !35
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !35
  store i1 %197, i1* %AF, !mcsema_real_eip !35
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !35
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !35
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !35
  %201 = xor i1 %200, true, !mcsema_real_eip !35
  store i1 %201, i1* %PF, !mcsema_real_eip !35
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !35
  store i1 %202, i1* %ZF, !mcsema_real_eip !35
  %203 = lshr i32 %193, 31, !mcsema_real_eip !35
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !35
  store i1 %204, i1* %SF, !mcsema_real_eip !35
  %205 = icmp ult i32 %EAX_val.61, 22, !mcsema_real_eip !35
  store i1 %205, i1* %CF, !mcsema_real_eip !35
  %206 = xor i32 %EAX_val.61, 22, !mcsema_real_eip !35
  %207 = xor i32 %EAX_val.61, %193, !mcsema_real_eip !35
  %208 = and i32 %206, %207, !mcsema_real_eip !35
  %209 = lshr i32 %208, 31, !mcsema_real_eip !35
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !35
  store i1 %210, i1* %OF, !mcsema_real_eip !35
  %211 = zext i32 %193 to i64, !mcsema_real_eip !35
  store i64 %211, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !36
  %212 = add i64 %RBP_val.62, -80, !mcsema_real_eip !36
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !36
  %RCX_val.63 = load i64, i64* %XCX, !mcsema_real_eip !36
  store i64 %RCX_val.63, i64* %213, !mcsema_real_eip !36
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !37
  %214 = add i64 %RBP_val.64, -84, !mcsema_real_eip !37
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !37
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !37
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !37
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !37
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.66, i32* %217, !mcsema_real_eip !37
  %218 = load i1, i1* %ZF, !mcsema_real_eip !38
  %219 = icmp eq i1 %218, false, !mcsema_real_eip !38
  %220 = load i1, i1* %CF, !mcsema_real_eip !38
  %221 = icmp eq i1 %220, false, !mcsema_real_eip !38
  %222 = and i1 %221, %219, !mcsema_real_eip !38
  br i1 %222, label %block_0x18e, label %block_0x148, !mcsema_real_eip !38

block_0x2f7:                                      ; preds = %block_0x114
  %223 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !39
  %224 = ptrtoint [95 x i8]* %223 to i64, !mcsema_real_eip !39
  %225 = add i64 %224, 85, !mcsema_real_eip !39
  store i64 %225, i64* %XDI, !mcsema_real_eip !39
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !40
  store i8 0, i8* %AL.37, !mcsema_real_eip !40
  %RDI_val.38 = load i64, i64* %XDI, !mcsema_real_eip !41
  %RSI_val.39 = load i64, i64* %XSI, !mcsema_real_eip !41
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !41
  %226 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !41
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !41
  store i64 -2415393069852865332, i64* %227, !mcsema_real_eip !41
  store i64 %226, i64* %XSP, !mcsema_real_eip !41
  %228 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.38, i64 %RSI_val.39), !mcsema_real_eip !41
  store i64 %228, i64* %XAX, !mcsema_real_eip !41
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !42
  %229 = add i64 %RBP_val.41, -4, !mcsema_real_eip !42
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !42
  %231 = ptrtoint i64* %230 to i64, !mcsema_real_eip !42
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !42
  store i32 1, i32* %232, !mcsema_real_eip !42
  %RBP_val.42 = load i64, i64* %XBP, !mcsema_real_eip !43
  %233 = add i64 %RBP_val.42, -108, !mcsema_real_eip !43
  %234 = inttoptr i64 %233 to i64*, !mcsema_real_eip !43
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !43
  %235 = ptrtoint i64* %234 to i64, !mcsema_real_eip !43
  %236 = inttoptr i64 %235 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.44, i32* %236, !mcsema_real_eip !43
  br label %block_0x312, !mcsema_real_eip !27

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !44
  %237 = add i64 %RBP_val.67, -4, !mcsema_real_eip !44
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !44
  %239 = ptrtoint i64* %238 to i64, !mcsema_real_eip !44
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !44
  %241 = load i32, i32* %240, !mcsema_real_eip !44
  %242 = zext i32 %241 to i64, !mcsema_real_eip !44
  store i64 %242, i64* %XAX, !mcsema_real_eip !44
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !45
  %243 = add i64 112, %RSP_val.68, !mcsema_real_eip !45
  %244 = xor i64 %243, %RSP_val.68, !mcsema_real_eip !45
  %245 = xor i64 %244, 112, !mcsema_real_eip !45
  %246 = and i64 %245, 16, !mcsema_real_eip !45
  %247 = icmp ne i64 %246, 0, !mcsema_real_eip !45
  store i1 %247, i1* %AF, !mcsema_real_eip !45
  %248 = lshr i64 %243, 63, !mcsema_real_eip !45
  %249 = trunc i64 %248 to i1, !mcsema_real_eip !45
  store i1 %249, i1* %SF, !mcsema_real_eip !45
  %250 = icmp eq i64 %243, 0, !mcsema_real_eip !45
  store i1 %250, i1* %ZF, !mcsema_real_eip !45
  %251 = xor i64 %RSP_val.68, 112, !mcsema_real_eip !45
  %252 = xor i64 %251, -1, !mcsema_real_eip !45
  %253 = xor i64 %RSP_val.68, %243, !mcsema_real_eip !45
  %254 = and i64 %252, %253, !mcsema_real_eip !45
  %255 = lshr i64 %254, 63, !mcsema_real_eip !45
  %256 = and i64 %255, 1, !mcsema_real_eip !45
  %257 = trunc i64 %256 to i1, !mcsema_real_eip !45
  store i1 %257, i1* %OF, !mcsema_real_eip !45
  %258 = trunc i64 %243 to i8, !mcsema_real_eip !45
  %259 = call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !45
  %260 = trunc i8 %259 to i1, !mcsema_real_eip !45
  %261 = xor i1 %260, true, !mcsema_real_eip !45
  store i1 %261, i1* %PF, !mcsema_real_eip !45
  %262 = icmp ult i64 %243, %RSP_val.68, !mcsema_real_eip !45
  store i1 %262, i1* %CF, !mcsema_real_eip !45
  store i64 %243, i64* %XSP, !mcsema_real_eip !45
  %RSP_val.69 = load i64, i64* %XSP, !mcsema_real_eip !46
  %263 = inttoptr i64 %RSP_val.69 to i64*, !mcsema_real_eip !46
  %264 = load i64, i64* %263, !mcsema_real_eip !46
  store i64 %264, i64* %XBP, !mcsema_real_eip !46
  %265 = add i64 %RSP_val.69, 8, !mcsema_real_eip !46
  store i64 %265, i64* %XSP, !mcsema_real_eip !46
  %RSP_val.70 = load i64, i64* %XSP, !mcsema_real_eip !47
  %266 = add i64 %RSP_val.70, 8, !mcsema_real_eip !47
  %267 = inttoptr i64 %RSP_val.70 to i64*, !mcsema_real_eip !47
  %268 = load i64, i64* %267, !mcsema_real_eip !47
  store i64 %268, i64* %XIP, !mcsema_real_eip !47
  store i64 %266, i64* %XSP, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x148:                                      ; preds = %block_0x11e
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !48
  %269 = add i64 %RBP_val.87, -80, !mcsema_real_eip !48
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !48
  %271 = load i64, i64* %270, !mcsema_real_eip !48
  store i64 %271, i64* %XAX, !mcsema_real_eip !48
  %272 = getelementptr %0, %0* @data_0x320, i64 0, i32 0, !mcsema_real_eip !49
  %273 = ptrtoint [184 x i8]* %272 to i64, !mcsema_real_eip !49
  %274 = add i64 %273, 0, !mcsema_real_eip !49
  %275 = add i64 0, %274, !mcsema_real_eip !49
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !49
  %276 = mul i64 %RAX_val.88, 8, !mcsema_real_eip !49
  %277 = add i64 %275, %276, !mcsema_real_eip !49
  %278 = inttoptr i64 %277 to i64*, !mcsema_real_eip !49
  %279 = load i64, i64* %278, !mcsema_real_eip !49
  store i64 %279, i64* %XCX, !mcsema_real_eip !49
  %RCX_val.89 = load i64, i64* %XCX, !mcsema_real_eip !50
  switch i64 %RCX_val.89, label %498 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !50

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  %280 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !51
  %281 = ptrtoint [95 x i8]* %280 to i64, !mcsema_real_eip !51
  %282 = add i64 %281, 5, !mcsema_real_eip !51
  store i64 %282, i64* %XDI, !mcsema_real_eip !51
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.71, !mcsema_real_eip !52
  %RDI_val.72 = load i64, i64* %XDI, !mcsema_real_eip !53
  %RSI_val.73 = load i64, i64* %XSI, !mcsema_real_eip !53
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !53
  %283 = sub i64 %RSP_val.74, 8, !mcsema_real_eip !53
  %284 = inttoptr i64 %283 to i64*, !mcsema_real_eip !53
  store i64 -2415393069852865332, i64* %284, !mcsema_real_eip !53
  store i64 %283, i64* %XSP, !mcsema_real_eip !53
  %285 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.72, i64 %RSI_val.73), !mcsema_real_eip !53
  store i64 %285, i64* %XAX, !mcsema_real_eip !53
  %286 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !54
  %287 = ptrtoint [95 x i8]* %286 to i64, !mcsema_real_eip !54
  %288 = add i64 %287, 45, !mcsema_real_eip !54
  store i64 %288, i64* %XDI, !mcsema_real_eip !54
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !55
  %289 = add i64 %RBP_val.75, -88, !mcsema_real_eip !55
  %290 = inttoptr i64 %289 to i64*, !mcsema_real_eip !55
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !55
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !55
  %291 = ptrtoint i64* %290 to i64, !mcsema_real_eip !55
  %292 = inttoptr i64 %291 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.77, i32* %292, !mcsema_real_eip !55
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.78, !mcsema_real_eip !56
  %RDI_val.79 = load i64, i64* %XDI, !mcsema_real_eip !57
  %RSI_val.80 = load i64, i64* %XSI, !mcsema_real_eip !57
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !57
  %293 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !57
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !57
  store i64 -2415393069852865332, i64* %294, !mcsema_real_eip !57
  store i64 %293, i64* %XSP, !mcsema_real_eip !57
  %295 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80), !mcsema_real_eip !57
  store i64 %295, i64* %XAX, !mcsema_real_eip !57
  %296 = zext i32 -1 to i64, !mcsema_real_eip !58
  store i64 %296, i64* %XDI, !mcsema_real_eip !58
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !59
  %297 = add i64 %RBP_val.82, -92, !mcsema_real_eip !59
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !59
  %EAX.83 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.84 = load i32, i32* %EAX.83, !mcsema_real_eip !59
  %299 = ptrtoint i64* %298 to i64, !mcsema_real_eip !59
  %300 = inttoptr i64 %299 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.84, i32* %300, !mcsema_real_eip !59
  %RDI_val.85 = load i64, i64* %XDI, !mcsema_real_eip !60
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %301 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !60
  %302 = inttoptr i64 %301 to i64*, !mcsema_real_eip !60
  store i64 -2415393069852865332, i64* %302, !mcsema_real_eip !60
  store i64 %301, i64* %XSP, !mcsema_real_eip !60
  %303 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85), !mcsema_real_eip !60
  store i64 %303, i64* %XAX, !mcsema_real_eip !60
  br label %block_0x1c0, !mcsema_real_eip !48

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  %304 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !61
  %305 = ptrtoint [77 x i8]* %304 to i64, !mcsema_real_eip !61
  %306 = add i64 %305, 0, !mcsema_real_eip !61
  store i64 %306, i64* %XAX, !mcsema_real_eip !61
  %RBP_val.90 = load i64, i64* %XBP, !mcsema_real_eip !62
  %307 = add i64 %RBP_val.90, -24, !mcsema_real_eip !62
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !62
  %309 = ptrtoint i64* %308 to i64, !mcsema_real_eip !62
  %310 = inttoptr i64 %309 to i32*, !mcsema_real_eip !62
  %311 = load i32, i32* %310, !mcsema_real_eip !62
  %312 = sext i32 %311 to i64, !mcsema_real_eip !62
  store i64 %312, i64* %XCX, !mcsema_real_eip !62
  %RCX_val.91 = load i64, i64* %XCX, !mcsema_real_eip !63
  %313 = sext i64 %RCX_val.91 to i128, !mcsema_real_eip !63
  %314 = sext i64 11 to i128, !mcsema_real_eip !63
  %315 = mul i128 %313, %314, !mcsema_real_eip !63
  %316 = trunc i128 %315 to i64, !mcsema_real_eip !63
  %317 = sext i64 %316 to i128, !mcsema_real_eip !63
  %318 = icmp ne i128 %317, %315, !mcsema_real_eip !63
  %319 = icmp slt i64 %316, 0, !mcsema_real_eip !63
  store i1 %319, i1* %SF, !mcsema_real_eip !63
  store i1 %318, i1* %OF, !mcsema_real_eip !63
  store i1 %318, i1* %CF, !mcsema_real_eip !63
  store i64 %316, i64* %XCX, !mcsema_real_eip !63
  %RAX_val.92 = load i64, i64* %XAX, !mcsema_real_eip !64
  %RCX_val.93 = load i64, i64* %XCX, !mcsema_real_eip !64
  %320 = add i64 %RCX_val.93, %RAX_val.92, !mcsema_real_eip !64
  %321 = xor i64 %320, %RAX_val.92, !mcsema_real_eip !64
  %322 = xor i64 %321, %RCX_val.93, !mcsema_real_eip !64
  %323 = and i64 %322, 16, !mcsema_real_eip !64
  %324 = icmp ne i64 %323, 0, !mcsema_real_eip !64
  store i1 %324, i1* %AF, !mcsema_real_eip !64
  %325 = lshr i64 %320, 63, !mcsema_real_eip !64
  %326 = trunc i64 %325 to i1, !mcsema_real_eip !64
  store i1 %326, i1* %SF, !mcsema_real_eip !64
  %327 = icmp eq i64 %320, 0, !mcsema_real_eip !64
  store i1 %327, i1* %ZF, !mcsema_real_eip !64
  %328 = xor i64 %RAX_val.92, %RCX_val.93, !mcsema_real_eip !64
  %329 = xor i64 %328, -1, !mcsema_real_eip !64
  %330 = xor i64 %RAX_val.92, %320, !mcsema_real_eip !64
  %331 = and i64 %329, %330, !mcsema_real_eip !64
  %332 = lshr i64 %331, 63, !mcsema_real_eip !64
  %333 = and i64 %332, 1, !mcsema_real_eip !64
  %334 = trunc i64 %333 to i1, !mcsema_real_eip !64
  store i1 %334, i1* %OF, !mcsema_real_eip !64
  %335 = trunc i64 %320 to i8, !mcsema_real_eip !64
  %336 = call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !64
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !64
  %338 = xor i1 %337, true, !mcsema_real_eip !64
  store i1 %338, i1* %PF, !mcsema_real_eip !64
  %339 = icmp ult i64 %320, %RAX_val.92, !mcsema_real_eip !64
  store i1 %339, i1* %CF, !mcsema_real_eip !64
  store i64 %320, i64* %XAX, !mcsema_real_eip !64
  %RBP_val.94 = load i64, i64* %XBP, !mcsema_real_eip !65
  %340 = add i64 %RBP_val.94, -20, !mcsema_real_eip !65
  %341 = inttoptr i64 %340 to i64*, !mcsema_real_eip !65
  %342 = ptrtoint i64* %341 to i64, !mcsema_real_eip !65
  %343 = inttoptr i64 %342 to i32*, !mcsema_real_eip !65
  %344 = load i32, i32* %343, !mcsema_real_eip !65
  %345 = sext i32 %344 to i64, !mcsema_real_eip !65
  store i64 %345, i64* %XCX, !mcsema_real_eip !65
  %RAX_val.95 = load i64, i64* %XAX, !mcsema_real_eip !66
  %346 = add i64 %RAX_val.95, 0, !mcsema_real_eip !66
  %RCX_val.96 = load i64, i64* %XCX, !mcsema_real_eip !66
  %347 = add i64 %346, %RCX_val.96, !mcsema_real_eip !66
  %348 = inttoptr i64 %347 to i64*, !mcsema_real_eip !66
  %349 = ptrtoint i64* %348 to i64, !mcsema_real_eip !66
  %350 = inttoptr i64 %349 to i8*, !mcsema_real_eip !66
  %351 = load i8, i8* %350, !mcsema_real_eip !66
  %352 = sext i8 %351 to i32, !mcsema_real_eip !66
  %353 = zext i32 %352 to i64, !mcsema_real_eip !66
  store i64 %353, i64* %XDX, !mcsema_real_eip !66
  %EDX.97 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.98 = load i32, i32* %EDX.97, !mcsema_real_eip !67
  %354 = sub i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %355 = xor i32 %354, %EDX_val.98, !mcsema_real_eip !67
  %356 = xor i32 %355, 35, !mcsema_real_eip !67
  %357 = and i32 %356, 16, !mcsema_real_eip !67
  %358 = icmp ne i32 %357, 0, !mcsema_real_eip !67
  store i1 %358, i1* %AF, !mcsema_real_eip !67
  %359 = trunc i32 %354 to i8, !mcsema_real_eip !67
  %360 = call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !67
  %361 = trunc i8 %360 to i1, !mcsema_real_eip !67
  %362 = xor i1 %361, true, !mcsema_real_eip !67
  store i1 %362, i1* %PF, !mcsema_real_eip !67
  %363 = icmp eq i32 %354, 0, !mcsema_real_eip !67
  store i1 %363, i1* %ZF, !mcsema_real_eip !67
  %364 = lshr i32 %354, 31, !mcsema_real_eip !67
  %365 = trunc i32 %364 to i1, !mcsema_real_eip !67
  store i1 %365, i1* %SF, !mcsema_real_eip !67
  %366 = icmp ult i32 %EDX_val.98, 35, !mcsema_real_eip !67
  store i1 %366, i1* %CF, !mcsema_real_eip !67
  %367 = xor i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %368 = xor i32 %EDX_val.98, %354, !mcsema_real_eip !67
  %369 = and i32 %367, %368, !mcsema_real_eip !67
  %370 = lshr i32 %369, 31, !mcsema_real_eip !67
  %371 = trunc i32 %370 to i1, !mcsema_real_eip !67
  store i1 %371, i1* %OF, !mcsema_real_eip !67
  %372 = load i1, i1* %ZF, !mcsema_real_eip !68
  %373 = icmp eq i1 %372, false, !mcsema_real_eip !68
  br i1 %373, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !68

block_0x156:                                      ; preds = %block_0x148
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !69
  %374 = add i64 %RBP_val.117, -24, !mcsema_real_eip !69
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !69
  %376 = ptrtoint i64* %375 to i64, !mcsema_real_eip !69
  %377 = inttoptr i64 %376 to i32*, !mcsema_real_eip !69
  %378 = load i32, i32* %377, !mcsema_real_eip !69
  %379 = zext i32 %378 to i64, !mcsema_real_eip !69
  store i64 %379, i64* %XAX, !mcsema_real_eip !69
  %EAX.118 = bitcast i64* %XAX to i32*, !mcsema_real_eip !70
  %EAX_val.119 = load i32, i32* %EAX.118, !mcsema_real_eip !70
  %380 = add i32 -1, %EAX_val.119, !mcsema_real_eip !70
  %381 = xor i32 %380, %EAX_val.119, !mcsema_real_eip !70
  %382 = xor i32 %381, -1, !mcsema_real_eip !70
  %383 = and i32 %382, 16, !mcsema_real_eip !70
  %384 = icmp ne i32 %383, 0, !mcsema_real_eip !70
  store i1 %384, i1* %AF, !mcsema_real_eip !70
  %385 = lshr i32 %380, 31, !mcsema_real_eip !70
  %386 = trunc i32 %385 to i1, !mcsema_real_eip !70
  store i1 %386, i1* %SF, !mcsema_real_eip !70
  %387 = icmp eq i32 %380, 0, !mcsema_real_eip !70
  store i1 %387, i1* %ZF, !mcsema_real_eip !70
  %388 = xor i32 %EAX_val.119, -1, !mcsema_real_eip !70
  %389 = xor i32 %388, -1, !mcsema_real_eip !70
  %390 = xor i32 %EAX_val.119, %380, !mcsema_real_eip !70
  %391 = and i32 %389, %390, !mcsema_real_eip !70
  %392 = lshr i32 %391, 31, !mcsema_real_eip !70
  %393 = and i32 %392, 1, !mcsema_real_eip !70
  %394 = trunc i32 %393 to i1, !mcsema_real_eip !70
  store i1 %394, i1* %OF, !mcsema_real_eip !70
  %395 = trunc i32 %380 to i8, !mcsema_real_eip !70
  %396 = call i8 @llvm.ctpop.i8(i8 %395), !mcsema_real_eip !70
  %397 = trunc i8 %396 to i1, !mcsema_real_eip !70
  %398 = xor i1 %397, true, !mcsema_real_eip !70
  store i1 %398, i1* %PF, !mcsema_real_eip !70
  %399 = icmp ult i32 %380, %EAX_val.119, !mcsema_real_eip !70
  store i1 %399, i1* %CF, !mcsema_real_eip !70
  %400 = zext i32 %380 to i64, !mcsema_real_eip !70
  store i64 %400, i64* %XAX, !mcsema_real_eip !70
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !71
  %401 = add i64 %RBP_val.120, -24, !mcsema_real_eip !71
  %402 = inttoptr i64 %401 to i64*, !mcsema_real_eip !71
  %EAX.121 = bitcast i64* %XAX to i32*, !mcsema_real_eip !71
  %EAX_val.122 = load i32, i32* %EAX.121, !mcsema_real_eip !71
  %403 = ptrtoint i64* %402 to i64, !mcsema_real_eip !71
  %404 = inttoptr i64 %403 to i32*, !mcsema_real_eip !71
  store i32 %EAX_val.122, i32* %404, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x164:                                      ; preds = %block_0x148
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !73
  %405 = add i64 %RBP_val.111, -24, !mcsema_real_eip !73
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !73
  %407 = ptrtoint i64* %406 to i64, !mcsema_real_eip !73
  %408 = inttoptr i64 %407 to i32*, !mcsema_real_eip !73
  %409 = load i32, i32* %408, !mcsema_real_eip !73
  %410 = zext i32 %409 to i64, !mcsema_real_eip !73
  store i64 %410, i64* %XAX, !mcsema_real_eip !73
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !74
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !74
  %411 = add i32 1, %EAX_val.113, !mcsema_real_eip !74
  %412 = xor i32 %411, %EAX_val.113, !mcsema_real_eip !74
  %413 = xor i32 %412, 1, !mcsema_real_eip !74
  %414 = and i32 %413, 16, !mcsema_real_eip !74
  %415 = icmp ne i32 %414, 0, !mcsema_real_eip !74
  store i1 %415, i1* %AF, !mcsema_real_eip !74
  %416 = lshr i32 %411, 31, !mcsema_real_eip !74
  %417 = trunc i32 %416 to i1, !mcsema_real_eip !74
  store i1 %417, i1* %SF, !mcsema_real_eip !74
  %418 = icmp eq i32 %411, 0, !mcsema_real_eip !74
  store i1 %418, i1* %ZF, !mcsema_real_eip !74
  %419 = xor i32 %EAX_val.113, 1, !mcsema_real_eip !74
  %420 = xor i32 %419, -1, !mcsema_real_eip !74
  %421 = xor i32 %EAX_val.113, %411, !mcsema_real_eip !74
  %422 = and i32 %420, %421, !mcsema_real_eip !74
  %423 = lshr i32 %422, 31, !mcsema_real_eip !74
  %424 = and i32 %423, 1, !mcsema_real_eip !74
  %425 = trunc i32 %424 to i1, !mcsema_real_eip !74
  store i1 %425, i1* %OF, !mcsema_real_eip !74
  %426 = trunc i32 %411 to i8, !mcsema_real_eip !74
  %427 = call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !74
  %428 = trunc i8 %427 to i1, !mcsema_real_eip !74
  %429 = xor i1 %428, true, !mcsema_real_eip !74
  store i1 %429, i1* %PF, !mcsema_real_eip !74
  %430 = icmp ult i32 %411, %EAX_val.113, !mcsema_real_eip !74
  store i1 %430, i1* %CF, !mcsema_real_eip !74
  %431 = zext i32 %411 to i64, !mcsema_real_eip !74
  store i64 %431, i64* %XAX, !mcsema_real_eip !74
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !75
  %432 = add i64 %RBP_val.114, -24, !mcsema_real_eip !75
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !75
  %EAX.115 = bitcast i64* %XAX to i32*, !mcsema_real_eip !75
  %EAX_val.116 = load i32, i32* %EAX.115, !mcsema_real_eip !75
  %434 = ptrtoint i64* %433 to i64, !mcsema_real_eip !75
  %435 = inttoptr i64 %434 to i32*, !mcsema_real_eip !75
  store i32 %EAX_val.116, i32* %435, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

block_0x172:                                      ; preds = %block_0x148
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !77
  %436 = add i64 %RBP_val.105, -20, !mcsema_real_eip !77
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !77
  %438 = ptrtoint i64* %437 to i64, !mcsema_real_eip !77
  %439 = inttoptr i64 %438 to i32*, !mcsema_real_eip !77
  %440 = load i32, i32* %439, !mcsema_real_eip !77
  %441 = zext i32 %440 to i64, !mcsema_real_eip !77
  store i64 %441, i64* %XAX, !mcsema_real_eip !77
  %EAX.106 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.107 = load i32, i32* %EAX.106, !mcsema_real_eip !78
  %442 = add i32 -1, %EAX_val.107, !mcsema_real_eip !78
  %443 = xor i32 %442, %EAX_val.107, !mcsema_real_eip !78
  %444 = xor i32 %443, -1, !mcsema_real_eip !78
  %445 = and i32 %444, 16, !mcsema_real_eip !78
  %446 = icmp ne i32 %445, 0, !mcsema_real_eip !78
  store i1 %446, i1* %AF, !mcsema_real_eip !78
  %447 = lshr i32 %442, 31, !mcsema_real_eip !78
  %448 = trunc i32 %447 to i1, !mcsema_real_eip !78
  store i1 %448, i1* %SF, !mcsema_real_eip !78
  %449 = icmp eq i32 %442, 0, !mcsema_real_eip !78
  store i1 %449, i1* %ZF, !mcsema_real_eip !78
  %450 = xor i32 %EAX_val.107, -1, !mcsema_real_eip !78
  %451 = xor i32 %450, -1, !mcsema_real_eip !78
  %452 = xor i32 %EAX_val.107, %442, !mcsema_real_eip !78
  %453 = and i32 %451, %452, !mcsema_real_eip !78
  %454 = lshr i32 %453, 31, !mcsema_real_eip !78
  %455 = and i32 %454, 1, !mcsema_real_eip !78
  %456 = trunc i32 %455 to i1, !mcsema_real_eip !78
  store i1 %456, i1* %OF, !mcsema_real_eip !78
  %457 = trunc i32 %442 to i8, !mcsema_real_eip !78
  %458 = call i8 @llvm.ctpop.i8(i8 %457), !mcsema_real_eip !78
  %459 = trunc i8 %458 to i1, !mcsema_real_eip !78
  %460 = xor i1 %459, true, !mcsema_real_eip !78
  store i1 %460, i1* %PF, !mcsema_real_eip !78
  %461 = icmp ult i32 %442, %EAX_val.107, !mcsema_real_eip !78
  store i1 %461, i1* %CF, !mcsema_real_eip !78
  %462 = zext i32 %442 to i64, !mcsema_real_eip !78
  store i64 %462, i64* %XAX, !mcsema_real_eip !78
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !79
  %463 = add i64 %RBP_val.108, -20, !mcsema_real_eip !79
  %464 = inttoptr i64 %463 to i64*, !mcsema_real_eip !79
  %EAX.109 = bitcast i64* %XAX to i32*, !mcsema_real_eip !79
  %EAX_val.110 = load i32, i32* %EAX.109, !mcsema_real_eip !79
  %465 = ptrtoint i64* %464 to i64, !mcsema_real_eip !79
  %466 = inttoptr i64 %465 to i32*, !mcsema_real_eip !79
  store i32 %EAX_val.110, i32* %466, !mcsema_real_eip !79
  br label %block_0x1c0, !mcsema_real_eip !80

block_0x180:                                      ; preds = %block_0x148
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !81
  %467 = add i64 %RBP_val.99, -20, !mcsema_real_eip !81
  %468 = inttoptr i64 %467 to i64*, !mcsema_real_eip !81
  %469 = ptrtoint i64* %468 to i64, !mcsema_real_eip !81
  %470 = inttoptr i64 %469 to i32*, !mcsema_real_eip !81
  %471 = load i32, i32* %470, !mcsema_real_eip !81
  %472 = zext i32 %471 to i64, !mcsema_real_eip !81
  store i64 %472, i64* %XAX, !mcsema_real_eip !81
  %EAX.100 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.101 = load i32, i32* %EAX.100, !mcsema_real_eip !82
  %473 = add i32 1, %EAX_val.101, !mcsema_real_eip !82
  %474 = xor i32 %473, %EAX_val.101, !mcsema_real_eip !82
  %475 = xor i32 %474, 1, !mcsema_real_eip !82
  %476 = and i32 %475, 16, !mcsema_real_eip !82
  %477 = icmp ne i32 %476, 0, !mcsema_real_eip !82
  store i1 %477, i1* %AF, !mcsema_real_eip !82
  %478 = lshr i32 %473, 31, !mcsema_real_eip !82
  %479 = trunc i32 %478 to i1, !mcsema_real_eip !82
  store i1 %479, i1* %SF, !mcsema_real_eip !82
  %480 = icmp eq i32 %473, 0, !mcsema_real_eip !82
  store i1 %480, i1* %ZF, !mcsema_real_eip !82
  %481 = xor i32 %EAX_val.101, 1, !mcsema_real_eip !82
  %482 = xor i32 %481, -1, !mcsema_real_eip !82
  %483 = xor i32 %EAX_val.101, %473, !mcsema_real_eip !82
  %484 = and i32 %482, %483, !mcsema_real_eip !82
  %485 = lshr i32 %484, 31, !mcsema_real_eip !82
  %486 = and i32 %485, 1, !mcsema_real_eip !82
  %487 = trunc i32 %486 to i1, !mcsema_real_eip !82
  store i1 %487, i1* %OF, !mcsema_real_eip !82
  %488 = trunc i32 %473 to i8, !mcsema_real_eip !82
  %489 = call i8 @llvm.ctpop.i8(i8 %488), !mcsema_real_eip !82
  %490 = trunc i8 %489 to i1, !mcsema_real_eip !82
  %491 = xor i1 %490, true, !mcsema_real_eip !82
  store i1 %491, i1* %PF, !mcsema_real_eip !82
  %492 = icmp ult i32 %473, %EAX_val.101, !mcsema_real_eip !82
  store i1 %492, i1* %CF, !mcsema_real_eip !82
  %493 = zext i32 %473 to i64, !mcsema_real_eip !82
  store i64 %493, i64* %XAX, !mcsema_real_eip !82
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !83
  %494 = add i64 %RBP_val.102, -20, !mcsema_real_eip !83
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !83
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !83
  %496 = ptrtoint i64* %495 to i64, !mcsema_real_eip !83
  %497 = inttoptr i64 %496 to i32*, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %497, !mcsema_real_eip !83
  br label %block_0x1c0, !mcsema_real_eip !84

; <label>:498:                                    ; preds = %block_0x148
  store i64 %RCX_val.89, i64* %XIP, !mcsema_real_eip !50
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !50
  ret void, !mcsema_real_eip !50

block_0x1e6:                                      ; preds = %block_0x1c0
  %499 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !85
  %500 = ptrtoint [95 x i8]* %499 to i64, !mcsema_real_eip !85
  %501 = add i64 %500, 56, !mcsema_real_eip !85
  store i64 %501, i64* %XDI, !mcsema_real_eip !85
  %AL.132 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.132, !mcsema_real_eip !86
  %RDI_val.133 = load i64, i64* %XDI, !mcsema_real_eip !87
  %RSI_val.134 = load i64, i64* %XSI, !mcsema_real_eip !87
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !87
  %502 = sub i64 %RSP_val.135, 8, !mcsema_real_eip !87
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !87
  store i64 -2415393069852865332, i64* %503, !mcsema_real_eip !87
  store i64 %502, i64* %XSP, !mcsema_real_eip !87
  %504 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.133, i64 %RSI_val.134), !mcsema_real_eip !87
  store i64 %504, i64* %XAX, !mcsema_real_eip !87
  %505 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !88
  %506 = ptrtoint [95 x i8]* %505 to i64, !mcsema_real_eip !88
  %507 = add i64 %506, 66, !mcsema_real_eip !88
  store i64 %507, i64* %XDI, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !89
  %508 = add i64 %RBP_val.136, -64, !mcsema_real_eip !89
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !89
  %510 = ptrtoint i64* %509 to i64, !mcsema_real_eip !89
  store i64 %510, i64* %XSI, !mcsema_real_eip !89
  %RBP_val.137 = load i64, i64* %XBP, !mcsema_real_eip !90
  %511 = add i64 %RBP_val.137, -96, !mcsema_real_eip !90
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !90
  %EAX.138 = bitcast i64* %XAX to i32*, !mcsema_real_eip !90
  %EAX_val.139 = load i32, i32* %EAX.138, !mcsema_real_eip !90
  %513 = ptrtoint i64* %512 to i64, !mcsema_real_eip !90
  %514 = inttoptr i64 %513 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.139, i32* %514, !mcsema_real_eip !90
  %AL.140 = bitcast i64* %XAX to i8*, !mcsema_real_eip !91
  store i8 0, i8* %AL.140, !mcsema_real_eip !91
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !92
  %RSI_val.142 = load i64, i64* %XSI, !mcsema_real_eip !92
  %RSP_val.143 = load i64, i64* %XSP, !mcsema_real_eip !92
  %515 = sub i64 %RSP_val.143, 8, !mcsema_real_eip !92
  %516 = inttoptr i64 %515 to i64*, !mcsema_real_eip !92
  store i64 -2415393069852865332, i64* %516, !mcsema_real_eip !92
  store i64 %515, i64* %XSP, !mcsema_real_eip !92
  %517 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142), !mcsema_real_eip !92
  store i64 %517, i64* %XAX, !mcsema_real_eip !92
  %EDI.144 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.145 = load i32, i32* %EDI.144, !mcsema_real_eip !93
  %EDI.146 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.147 = load i32, i32* %EDI.146, !mcsema_real_eip !93
  %518 = xor i32 %EDI_val.145, %EDI_val.147, !mcsema_real_eip !93
  store i1 false, i1* %CF, !mcsema_real_eip !93
  store i1 false, i1* %OF, !mcsema_real_eip !93
  %519 = lshr i32 %518, 31, !mcsema_real_eip !93
  %520 = trunc i32 %519 to i1, !mcsema_real_eip !93
  store i1 %520, i1* %SF, !mcsema_real_eip !93
  %521 = icmp eq i32 %518, 0, !mcsema_real_eip !93
  store i1 %521, i1* %ZF, !mcsema_real_eip !93
  %522 = trunc i32 %518 to i8, !mcsema_real_eip !93
  %523 = call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !93
  %524 = trunc i8 %523 to i1, !mcsema_real_eip !93
  %525 = xor i1 %524, true, !mcsema_real_eip !93
  store i1 %525, i1* %PF, !mcsema_real_eip !93
  store i1 undef, i1* %AF, !mcsema_real_eip !93
  %526 = zext i32 %518 to i64, !mcsema_real_eip !93
  store i64 %526, i64* %XDI, !mcsema_real_eip !93
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !94
  %527 = add i64 %RBP_val.148, -100, !mcsema_real_eip !94
  %528 = inttoptr i64 %527 to i64*, !mcsema_real_eip !94
  %EAX.149 = bitcast i64* %XAX to i32*, !mcsema_real_eip !94
  %EAX_val.150 = load i32, i32* %EAX.149, !mcsema_real_eip !94
  %529 = ptrtoint i64* %528 to i64, !mcsema_real_eip !94
  %530 = inttoptr i64 %529 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.150, i32* %530, !mcsema_real_eip !94
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !95
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !95
  %531 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !95
  %532 = inttoptr i64 %531 to i64*, !mcsema_real_eip !95
  store i64 -2415393069852865332, i64* %532, !mcsema_real_eip !95
  store i64 %531, i64* %XSP, !mcsema_real_eip !95
  %533 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151), !mcsema_real_eip !95
  store i64 %533, i64* %XAX, !mcsema_real_eip !95
  br label %block_0x219, !mcsema_real_eip !96

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  %534 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !97
  %535 = ptrtoint [77 x i8]* %534 to i64, !mcsema_real_eip !97
  %536 = add i64 %535, 0, !mcsema_real_eip !97
  store i64 %536, i64* %XAX, !mcsema_real_eip !97
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !98
  %537 = add i64 %RBP_val.123, -24, !mcsema_real_eip !98
  %538 = inttoptr i64 %537 to i64*, !mcsema_real_eip !98
  %539 = ptrtoint i64* %538 to i64, !mcsema_real_eip !98
  %540 = inttoptr i64 %539 to i32*, !mcsema_real_eip !98
  %541 = load i32, i32* %540, !mcsema_real_eip !98
  %542 = sext i32 %541 to i64, !mcsema_real_eip !98
  store i64 %542, i64* %XCX, !mcsema_real_eip !98
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !99
  %543 = sext i64 %RCX_val.124 to i128, !mcsema_real_eip !99
  %544 = sext i64 11 to i128, !mcsema_real_eip !99
  %545 = mul i128 %543, %544, !mcsema_real_eip !99
  %546 = trunc i128 %545 to i64, !mcsema_real_eip !99
  %547 = sext i64 %546 to i128, !mcsema_real_eip !99
  %548 = icmp ne i128 %547, %545, !mcsema_real_eip !99
  %549 = icmp slt i64 %546, 0, !mcsema_real_eip !99
  store i1 %549, i1* %SF, !mcsema_real_eip !99
  store i1 %548, i1* %OF, !mcsema_real_eip !99
  store i1 %548, i1* %CF, !mcsema_real_eip !99
  store i64 %546, i64* %XCX, !mcsema_real_eip !99
  %RAX_val.125 = load i64, i64* %XAX, !mcsema_real_eip !100
  %RCX_val.126 = load i64, i64* %XCX, !mcsema_real_eip !100
  %550 = add i64 %RCX_val.126, %RAX_val.125, !mcsema_real_eip !100
  %551 = xor i64 %550, %RAX_val.125, !mcsema_real_eip !100
  %552 = xor i64 %551, %RCX_val.126, !mcsema_real_eip !100
  %553 = and i64 %552, 16, !mcsema_real_eip !100
  %554 = icmp ne i64 %553, 0, !mcsema_real_eip !100
  store i1 %554, i1* %AF, !mcsema_real_eip !100
  %555 = lshr i64 %550, 63, !mcsema_real_eip !100
  %556 = trunc i64 %555 to i1, !mcsema_real_eip !100
  store i1 %556, i1* %SF, !mcsema_real_eip !100
  %557 = icmp eq i64 %550, 0, !mcsema_real_eip !100
  store i1 %557, i1* %ZF, !mcsema_real_eip !100
  %558 = xor i64 %RAX_val.125, %RCX_val.126, !mcsema_real_eip !100
  %559 = xor i64 %558, -1, !mcsema_real_eip !100
  %560 = xor i64 %RAX_val.125, %550, !mcsema_real_eip !100
  %561 = and i64 %559, %560, !mcsema_real_eip !100
  %562 = lshr i64 %561, 63, !mcsema_real_eip !100
  %563 = and i64 %562, 1, !mcsema_real_eip !100
  %564 = trunc i64 %563 to i1, !mcsema_real_eip !100
  store i1 %564, i1* %OF, !mcsema_real_eip !100
  %565 = trunc i64 %550 to i8, !mcsema_real_eip !100
  %566 = call i8 @llvm.ctpop.i8(i8 %565), !mcsema_real_eip !100
  %567 = trunc i8 %566 to i1, !mcsema_real_eip !100
  %568 = xor i1 %567, true, !mcsema_real_eip !100
  store i1 %568, i1* %PF, !mcsema_real_eip !100
  %569 = icmp ult i64 %550, %RAX_val.125, !mcsema_real_eip !100
  store i1 %569, i1* %CF, !mcsema_real_eip !100
  store i64 %550, i64* %XAX, !mcsema_real_eip !100
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !101
  %570 = add i64 %RBP_val.127, -20, !mcsema_real_eip !101
  %571 = inttoptr i64 %570 to i64*, !mcsema_real_eip !101
  %572 = ptrtoint i64* %571 to i64, !mcsema_real_eip !101
  %573 = inttoptr i64 %572 to i32*, !mcsema_real_eip !101
  %574 = load i32, i32* %573, !mcsema_real_eip !101
  %575 = sext i32 %574 to i64, !mcsema_real_eip !101
  store i64 %575, i64* %XCX, !mcsema_real_eip !101
  %RAX_val.128 = load i64, i64* %XAX, !mcsema_real_eip !102
  %576 = add i64 %RAX_val.128, 0, !mcsema_real_eip !102
  %RCX_val.129 = load i64, i64* %XCX, !mcsema_real_eip !102
  %577 = add i64 %576, %RCX_val.129, !mcsema_real_eip !102
  %578 = inttoptr i64 %577 to i64*, !mcsema_real_eip !102
  %579 = ptrtoint i64* %578 to i64, !mcsema_real_eip !102
  %580 = inttoptr i64 %579 to i8*, !mcsema_real_eip !102
  %581 = load i8, i8* %580, !mcsema_real_eip !102
  %582 = sext i8 %581 to i32, !mcsema_real_eip !102
  %583 = zext i32 %582 to i64, !mcsema_real_eip !102
  store i64 %583, i64* %XDX, !mcsema_real_eip !102
  %EDX.130 = bitcast i64* %XDX to i32*, !mcsema_real_eip !103
  %EDX_val.131 = load i32, i32* %EDX.130, !mcsema_real_eip !103
  %584 = sub i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %585 = xor i32 %584, %EDX_val.131, !mcsema_real_eip !103
  %586 = xor i32 %585, 32, !mcsema_real_eip !103
  %587 = and i32 %586, 16, !mcsema_real_eip !103
  %588 = icmp ne i32 %587, 0, !mcsema_real_eip !103
  store i1 %588, i1* %AF, !mcsema_real_eip !103
  %589 = trunc i32 %584 to i8, !mcsema_real_eip !103
  %590 = call i8 @llvm.ctpop.i8(i8 %589), !mcsema_real_eip !103
  %591 = trunc i8 %590 to i1, !mcsema_real_eip !103
  %592 = xor i1 %591, true, !mcsema_real_eip !103
  store i1 %592, i1* %PF, !mcsema_real_eip !103
  %593 = icmp eq i32 %584, 0, !mcsema_real_eip !103
  store i1 %593, i1* %ZF, !mcsema_real_eip !103
  %594 = lshr i32 %584, 31, !mcsema_real_eip !103
  %595 = trunc i32 %594 to i1, !mcsema_real_eip !103
  store i1 %595, i1* %SF, !mcsema_real_eip !103
  %596 = icmp ult i32 %EDX_val.131, 32, !mcsema_real_eip !103
  store i1 %596, i1* %CF, !mcsema_real_eip !103
  %597 = xor i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %598 = xor i32 %EDX_val.131, %584, !mcsema_real_eip !103
  %599 = and i32 %597, %598, !mcsema_real_eip !103
  %600 = lshr i32 %599, 31, !mcsema_real_eip !103
  %601 = trunc i32 %600 to i1, !mcsema_real_eip !103
  store i1 %601, i1* %OF, !mcsema_real_eip !103
  %602 = load i1, i1* %ZF, !mcsema_real_eip !104
  %603 = icmp eq i1 %602, true, !mcsema_real_eip !104
  br i1 %603, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !104

block_0x23f:                                      ; preds = %block_0x219
  %RBP_val.157 = load i64, i64* %XBP, !mcsema_real_eip !105
  %604 = add i64 %RBP_val.157, -24, !mcsema_real_eip !105
  %605 = inttoptr i64 %604 to i64*, !mcsema_real_eip !105
  %606 = ptrtoint i64* %605 to i64, !mcsema_real_eip !105
  %607 = inttoptr i64 %606 to i32*, !mcsema_real_eip !105
  %608 = load i32, i32* %607, !mcsema_real_eip !105
  %609 = sub i32 %608, 2, !mcsema_real_eip !105
  %610 = xor i32 %609, %608, !mcsema_real_eip !105
  %611 = xor i32 %610, 2, !mcsema_real_eip !105
  %612 = and i32 %611, 16, !mcsema_real_eip !105
  %613 = icmp ne i32 %612, 0, !mcsema_real_eip !105
  store i1 %613, i1* %AF, !mcsema_real_eip !105
  %614 = trunc i32 %609 to i8, !mcsema_real_eip !105
  %615 = call i8 @llvm.ctpop.i8(i8 %614), !mcsema_real_eip !105
  %616 = trunc i8 %615 to i1, !mcsema_real_eip !105
  %617 = xor i1 %616, true, !mcsema_real_eip !105
  store i1 %617, i1* %PF, !mcsema_real_eip !105
  %618 = icmp eq i32 %609, 0, !mcsema_real_eip !105
  store i1 %618, i1* %ZF, !mcsema_real_eip !105
  %619 = lshr i32 %609, 31, !mcsema_real_eip !105
  %620 = trunc i32 %619 to i1, !mcsema_real_eip !105
  store i1 %620, i1* %SF, !mcsema_real_eip !105
  %621 = icmp ult i32 %608, 2, !mcsema_real_eip !105
  store i1 %621, i1* %CF, !mcsema_real_eip !105
  %622 = xor i32 %608, 2, !mcsema_real_eip !105
  %623 = xor i32 %608, %609, !mcsema_real_eip !105
  %624 = and i32 %622, %623, !mcsema_real_eip !105
  %625 = lshr i32 %624, 31, !mcsema_real_eip !105
  %626 = trunc i32 %625 to i1, !mcsema_real_eip !105
  store i1 %626, i1* %OF, !mcsema_real_eip !105
  %627 = load i1, i1* %ZF, !mcsema_real_eip !106
  %628 = icmp eq i1 %627, false, !mcsema_real_eip !106
  br i1 %628, label %block_0x283, label %block_0x249, !mcsema_real_eip !106

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !96
  %629 = add i64 %RBP_val.153, -28, !mcsema_real_eip !96
  %630 = inttoptr i64 %629 to i64*, !mcsema_real_eip !96
  %631 = ptrtoint i64* %630 to i64, !mcsema_real_eip !96
  %632 = inttoptr i64 %631 to i32*, !mcsema_real_eip !96
  %633 = load i32, i32* %632, !mcsema_real_eip !96
  %634 = zext i32 %633 to i64, !mcsema_real_eip !96
  store i64 %634, i64* %XAX, !mcsema_real_eip !96
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !107
  %635 = add i64 %RBP_val.154, -20, !mcsema_real_eip !107
  %636 = inttoptr i64 %635 to i64*, !mcsema_real_eip !107
  %EAX.155 = bitcast i64* %XAX to i32*, !mcsema_real_eip !107
  %EAX_val.156 = load i32, i32* %EAX.155, !mcsema_real_eip !107
  %637 = ptrtoint i64* %636 to i64, !mcsema_real_eip !107
  %638 = inttoptr i64 %637 to i32*, !mcsema_real_eip !107
  %639 = load i32, i32* %638, !mcsema_real_eip !107
  %640 = sub i32 %EAX_val.156, %639, !mcsema_real_eip !107
  %641 = xor i32 %640, %EAX_val.156, !mcsema_real_eip !107
  %642 = xor i32 %641, %639, !mcsema_real_eip !107
  %643 = and i32 %642, 16, !mcsema_real_eip !107
  %644 = icmp ne i32 %643, 0, !mcsema_real_eip !107
  store i1 %644, i1* %AF, !mcsema_real_eip !107
  %645 = trunc i32 %640 to i8, !mcsema_real_eip !107
  %646 = call i8 @llvm.ctpop.i8(i8 %645), !mcsema_real_eip !107
  %647 = trunc i8 %646 to i1, !mcsema_real_eip !107
  %648 = xor i1 %647, true, !mcsema_real_eip !107
  store i1 %648, i1* %PF, !mcsema_real_eip !107
  %649 = icmp eq i32 %640, 0, !mcsema_real_eip !107
  store i1 %649, i1* %ZF, !mcsema_real_eip !107
  %650 = lshr i32 %640, 31, !mcsema_real_eip !107
  %651 = trunc i32 %650 to i1, !mcsema_real_eip !107
  store i1 %651, i1* %SF, !mcsema_real_eip !107
  %652 = icmp ult i32 %EAX_val.156, %639, !mcsema_real_eip !107
  store i1 %652, i1* %CF, !mcsema_real_eip !107
  %653 = xor i32 %EAX_val.156, %639, !mcsema_real_eip !107
  %654 = xor i32 %EAX_val.156, %640, !mcsema_real_eip !107
  %655 = and i32 %653, %654, !mcsema_real_eip !107
  %656 = lshr i32 %655, 31, !mcsema_real_eip !107
  %657 = trunc i32 %656 to i1, !mcsema_real_eip !107
  store i1 %657, i1* %OF, !mcsema_real_eip !107
  %658 = load i1, i1* %ZF, !mcsema_real_eip !108
  %659 = icmp eq i1 %658, false, !mcsema_real_eip !108
  br i1 %659, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !108

block_0x29b:                                      ; preds = %block_0x28f
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !109
  %660 = add i64 %RBP_val.172, -32, !mcsema_real_eip !109
  %661 = inttoptr i64 %660 to i64*, !mcsema_real_eip !109
  %662 = ptrtoint i64* %661 to i64, !mcsema_real_eip !109
  %663 = inttoptr i64 %662 to i32*, !mcsema_real_eip !109
  %664 = load i32, i32* %663, !mcsema_real_eip !109
  %665 = zext i32 %664 to i64, !mcsema_real_eip !109
  store i64 %665, i64* %XAX, !mcsema_real_eip !109
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !110
  %666 = add i64 %RBP_val.173, -24, !mcsema_real_eip !110
  %667 = inttoptr i64 %666 to i64*, !mcsema_real_eip !110
  %EAX.174 = bitcast i64* %XAX to i32*, !mcsema_real_eip !110
  %EAX_val.175 = load i32, i32* %EAX.174, !mcsema_real_eip !110
  %668 = ptrtoint i64* %667 to i64, !mcsema_real_eip !110
  %669 = inttoptr i64 %668 to i32*, !mcsema_real_eip !110
  %670 = load i32, i32* %669, !mcsema_real_eip !110
  %671 = sub i32 %EAX_val.175, %670, !mcsema_real_eip !110
  %672 = xor i32 %671, %EAX_val.175, !mcsema_real_eip !110
  %673 = xor i32 %672, %670, !mcsema_real_eip !110
  %674 = and i32 %673, 16, !mcsema_real_eip !110
  %675 = icmp ne i32 %674, 0, !mcsema_real_eip !110
  store i1 %675, i1* %AF, !mcsema_real_eip !110
  %676 = trunc i32 %671 to i8, !mcsema_real_eip !110
  %677 = call i8 @llvm.ctpop.i8(i8 %676), !mcsema_real_eip !110
  %678 = trunc i8 %677 to i1, !mcsema_real_eip !110
  %679 = xor i1 %678, true, !mcsema_real_eip !110
  store i1 %679, i1* %PF, !mcsema_real_eip !110
  %680 = icmp eq i32 %671, 0, !mcsema_real_eip !110
  store i1 %680, i1* %ZF, !mcsema_real_eip !110
  %681 = lshr i32 %671, 31, !mcsema_real_eip !110
  %682 = trunc i32 %681 to i1, !mcsema_real_eip !110
  store i1 %682, i1* %SF, !mcsema_real_eip !110
  %683 = icmp ult i32 %EAX_val.175, %670, !mcsema_real_eip !110
  store i1 %683, i1* %CF, !mcsema_real_eip !110
  %684 = xor i32 %EAX_val.175, %670, !mcsema_real_eip !110
  %685 = xor i32 %EAX_val.175, %671, !mcsema_real_eip !110
  %686 = and i32 %684, %685, !mcsema_real_eip !110
  %687 = lshr i32 %686, 31, !mcsema_real_eip !110
  %688 = trunc i32 %687 to i1, !mcsema_real_eip !110
  store i1 %688, i1* %OF, !mcsema_real_eip !110
  %689 = load i1, i1* %ZF, !mcsema_real_eip !111
  %690 = icmp eq i1 %689, false, !mcsema_real_eip !111
  br i1 %690, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !111

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  %691 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !112
  %692 = ptrtoint [77 x i8]* %691 to i64, !mcsema_real_eip !112
  %693 = add i64 %692, 0, !mcsema_real_eip !112
  store i64 %693, i64* %XAX, !mcsema_real_eip !112
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !113
  %694 = add i64 %RBP_val.158, -24, !mcsema_real_eip !113
  %695 = inttoptr i64 %694 to i64*, !mcsema_real_eip !113
  %696 = ptrtoint i64* %695 to i64, !mcsema_real_eip !113
  %697 = inttoptr i64 %696 to i32*, !mcsema_real_eip !113
  %698 = load i32, i32* %697, !mcsema_real_eip !113
  %699 = sext i32 %698 to i64, !mcsema_real_eip !113
  store i64 %699, i64* %XCX, !mcsema_real_eip !113
  %RCX_val.159 = load i64, i64* %XCX, !mcsema_real_eip !114
  %700 = sext i64 %RCX_val.159 to i128, !mcsema_real_eip !114
  %701 = sext i64 11 to i128, !mcsema_real_eip !114
  %702 = mul i128 %700, %701, !mcsema_real_eip !114
  %703 = trunc i128 %702 to i64, !mcsema_real_eip !114
  %704 = sext i64 %703 to i128, !mcsema_real_eip !114
  %705 = icmp ne i128 %704, %702, !mcsema_real_eip !114
  %706 = icmp slt i64 %703, 0, !mcsema_real_eip !114
  store i1 %706, i1* %SF, !mcsema_real_eip !114
  store i1 %705, i1* %OF, !mcsema_real_eip !114
  store i1 %705, i1* %CF, !mcsema_real_eip !114
  store i64 %703, i64* %XCX, !mcsema_real_eip !114
  %RAX_val.160 = load i64, i64* %XAX, !mcsema_real_eip !115
  %RCX_val.161 = load i64, i64* %XCX, !mcsema_real_eip !115
  %707 = add i64 %RCX_val.161, %RAX_val.160, !mcsema_real_eip !115
  %708 = xor i64 %707, %RAX_val.160, !mcsema_real_eip !115
  %709 = xor i64 %708, %RCX_val.161, !mcsema_real_eip !115
  %710 = and i64 %709, 16, !mcsema_real_eip !115
  %711 = icmp ne i64 %710, 0, !mcsema_real_eip !115
  store i1 %711, i1* %AF, !mcsema_real_eip !115
  %712 = lshr i64 %707, 63, !mcsema_real_eip !115
  %713 = trunc i64 %712 to i1, !mcsema_real_eip !115
  store i1 %713, i1* %SF, !mcsema_real_eip !115
  %714 = icmp eq i64 %707, 0, !mcsema_real_eip !115
  store i1 %714, i1* %ZF, !mcsema_real_eip !115
  %715 = xor i64 %RAX_val.160, %RCX_val.161, !mcsema_real_eip !115
  %716 = xor i64 %715, -1, !mcsema_real_eip !115
  %717 = xor i64 %RAX_val.160, %707, !mcsema_real_eip !115
  %718 = and i64 %716, %717, !mcsema_real_eip !115
  %719 = lshr i64 %718, 63, !mcsema_real_eip !115
  %720 = and i64 %719, 1, !mcsema_real_eip !115
  %721 = trunc i64 %720 to i1, !mcsema_real_eip !115
  store i1 %721, i1* %OF, !mcsema_real_eip !115
  %722 = trunc i64 %707 to i8, !mcsema_real_eip !115
  %723 = call i8 @llvm.ctpop.i8(i8 %722), !mcsema_real_eip !115
  %724 = trunc i8 %723 to i1, !mcsema_real_eip !115
  %725 = xor i1 %724, true, !mcsema_real_eip !115
  store i1 %725, i1* %PF, !mcsema_real_eip !115
  %726 = icmp ult i64 %707, %RAX_val.160, !mcsema_real_eip !115
  store i1 %726, i1* %CF, !mcsema_real_eip !115
  store i64 %707, i64* %XAX, !mcsema_real_eip !115
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !116
  %727 = add i64 %RBP_val.162, -20, !mcsema_real_eip !116
  %728 = inttoptr i64 %727 to i64*, !mcsema_real_eip !116
  %729 = ptrtoint i64* %728 to i64, !mcsema_real_eip !116
  %730 = inttoptr i64 %729 to i32*, !mcsema_real_eip !116
  %731 = load i32, i32* %730, !mcsema_real_eip !116
  %732 = sext i32 %731 to i64, !mcsema_real_eip !116
  store i64 %732, i64* %XCX, !mcsema_real_eip !116
  %RAX_val.163 = load i64, i64* %XAX, !mcsema_real_eip !117
  %733 = add i64 %RAX_val.163, 0, !mcsema_real_eip !117
  %RCX_val.164 = load i64, i64* %XCX, !mcsema_real_eip !117
  %734 = add i64 %733, %RCX_val.164, !mcsema_real_eip !117
  %735 = inttoptr i64 %734 to i64*, !mcsema_real_eip !117
  %736 = ptrtoint i64* %735 to i64, !mcsema_real_eip !117
  %737 = inttoptr i64 %736 to i8*, !mcsema_real_eip !117
  store i8 88, i8* %737, !mcsema_real_eip !117
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !118
  %738 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !118
  %739 = inttoptr i64 %738 to i64*, !mcsema_real_eip !118
  store i64 -4981261766360305936, i64* %739, !mcsema_real_eip !118
  store i64 %738, i64* %XSP, !mcsema_real_eip !118
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !118
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !119
  %740 = add i64 %RBP_val.166, -36, !mcsema_real_eip !119
  %741 = inttoptr i64 %740 to i64*, !mcsema_real_eip !119
  %742 = ptrtoint i64* %741 to i64, !mcsema_real_eip !119
  %743 = inttoptr i64 %742 to i32*, !mcsema_real_eip !119
  %744 = load i32, i32* %743, !mcsema_real_eip !119
  %745 = zext i32 %744 to i64, !mcsema_real_eip !119
  store i64 %745, i64* %XDX, !mcsema_real_eip !119
  %EDX.167 = bitcast i64* %XDX to i32*, !mcsema_real_eip !120
  %EDX_val.168 = load i32, i32* %EDX.167, !mcsema_real_eip !120
  %746 = add i32 1, %EDX_val.168, !mcsema_real_eip !120
  %747 = xor i32 %746, %EDX_val.168, !mcsema_real_eip !120
  %748 = xor i32 %747, 1, !mcsema_real_eip !120
  %749 = and i32 %748, 16, !mcsema_real_eip !120
  %750 = icmp ne i32 %749, 0, !mcsema_real_eip !120
  store i1 %750, i1* %AF, !mcsema_real_eip !120
  %751 = lshr i32 %746, 31, !mcsema_real_eip !120
  %752 = trunc i32 %751 to i1, !mcsema_real_eip !120
  store i1 %752, i1* %SF, !mcsema_real_eip !120
  %753 = icmp eq i32 %746, 0, !mcsema_real_eip !120
  store i1 %753, i1* %ZF, !mcsema_real_eip !120
  %754 = xor i32 %EDX_val.168, 1, !mcsema_real_eip !120
  %755 = xor i32 %754, -1, !mcsema_real_eip !120
  %756 = xor i32 %EDX_val.168, %746, !mcsema_real_eip !120
  %757 = and i32 %755, %756, !mcsema_real_eip !120
  %758 = lshr i32 %757, 31, !mcsema_real_eip !120
  %759 = and i32 %758, 1, !mcsema_real_eip !120
  %760 = trunc i32 %759 to i1, !mcsema_real_eip !120
  store i1 %760, i1* %OF, !mcsema_real_eip !120
  %761 = trunc i32 %746 to i8, !mcsema_real_eip !120
  %762 = call i8 @llvm.ctpop.i8(i8 %761), !mcsema_real_eip !120
  %763 = trunc i8 %762 to i1, !mcsema_real_eip !120
  %764 = xor i1 %763, true, !mcsema_real_eip !120
  store i1 %764, i1* %PF, !mcsema_real_eip !120
  %765 = icmp ult i32 %746, %EDX_val.168, !mcsema_real_eip !120
  store i1 %765, i1* %CF, !mcsema_real_eip !120
  %766 = zext i32 %746 to i64, !mcsema_real_eip !120
  store i64 %766, i64* %XDX, !mcsema_real_eip !120
  %RBP_val.169 = load i64, i64* %XBP, !mcsema_real_eip !121
  %767 = add i64 %RBP_val.169, -36, !mcsema_real_eip !121
  %768 = inttoptr i64 %767 to i64*, !mcsema_real_eip !121
  %EDX.170 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.171 = load i32, i32* %EDX.170, !mcsema_real_eip !121
  %769 = ptrtoint i64* %768 to i64, !mcsema_real_eip !121
  %770 = inttoptr i64 %769 to i32*, !mcsema_real_eip !121
  store i32 %EDX_val.171, i32* %770, !mcsema_real_eip !121
  br label %block_0x114, !mcsema_real_eip !122

block_0x249:                                      ; preds = %block_0x23f
  %771 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !123
  %772 = ptrtoint [77 x i8]* %771 to i64, !mcsema_real_eip !123
  %773 = add i64 %772, 0, !mcsema_real_eip !123
  store i64 %773, i64* %XAX, !mcsema_real_eip !123
  %RBP_val.184 = load i64, i64* %XBP, !mcsema_real_eip !124
  %774 = add i64 %RBP_val.184, -24, !mcsema_real_eip !124
  %775 = inttoptr i64 %774 to i64*, !mcsema_real_eip !124
  %776 = ptrtoint i64* %775 to i64, !mcsema_real_eip !124
  %777 = inttoptr i64 %776 to i32*, !mcsema_real_eip !124
  %778 = load i32, i32* %777, !mcsema_real_eip !124
  %779 = sext i32 %778 to i64, !mcsema_real_eip !124
  store i64 %779, i64* %XCX, !mcsema_real_eip !124
  %RCX_val.185 = load i64, i64* %XCX, !mcsema_real_eip !125
  %780 = sext i64 %RCX_val.185 to i128, !mcsema_real_eip !125
  %781 = sext i64 11 to i128, !mcsema_real_eip !125
  %782 = mul i128 %780, %781, !mcsema_real_eip !125
  %783 = trunc i128 %782 to i64, !mcsema_real_eip !125
  %784 = sext i64 %783 to i128, !mcsema_real_eip !125
  %785 = icmp ne i128 %784, %782, !mcsema_real_eip !125
  %786 = icmp slt i64 %783, 0, !mcsema_real_eip !125
  store i1 %786, i1* %SF, !mcsema_real_eip !125
  store i1 %785, i1* %OF, !mcsema_real_eip !125
  store i1 %785, i1* %CF, !mcsema_real_eip !125
  store i64 %783, i64* %XCX, !mcsema_real_eip !125
  %RAX_val.186 = load i64, i64* %XAX, !mcsema_real_eip !126
  %RCX_val.187 = load i64, i64* %XCX, !mcsema_real_eip !126
  %787 = add i64 %RCX_val.187, %RAX_val.186, !mcsema_real_eip !126
  %788 = xor i64 %787, %RAX_val.186, !mcsema_real_eip !126
  %789 = xor i64 %788, %RCX_val.187, !mcsema_real_eip !126
  %790 = and i64 %789, 16, !mcsema_real_eip !126
  %791 = icmp ne i64 %790, 0, !mcsema_real_eip !126
  store i1 %791, i1* %AF, !mcsema_real_eip !126
  %792 = lshr i64 %787, 63, !mcsema_real_eip !126
  %793 = trunc i64 %792 to i1, !mcsema_real_eip !126
  store i1 %793, i1* %SF, !mcsema_real_eip !126
  %794 = icmp eq i64 %787, 0, !mcsema_real_eip !126
  store i1 %794, i1* %ZF, !mcsema_real_eip !126
  %795 = xor i64 %RAX_val.186, %RCX_val.187, !mcsema_real_eip !126
  %796 = xor i64 %795, -1, !mcsema_real_eip !126
  %797 = xor i64 %RAX_val.186, %787, !mcsema_real_eip !126
  %798 = and i64 %796, %797, !mcsema_real_eip !126
  %799 = lshr i64 %798, 63, !mcsema_real_eip !126
  %800 = and i64 %799, 1, !mcsema_real_eip !126
  %801 = trunc i64 %800 to i1, !mcsema_real_eip !126
  store i1 %801, i1* %OF, !mcsema_real_eip !126
  %802 = trunc i64 %787 to i8, !mcsema_real_eip !126
  %803 = call i8 @llvm.ctpop.i8(i8 %802), !mcsema_real_eip !126
  %804 = trunc i8 %803 to i1, !mcsema_real_eip !126
  %805 = xor i1 %804, true, !mcsema_real_eip !126
  store i1 %805, i1* %PF, !mcsema_real_eip !126
  %806 = icmp ult i64 %787, %RAX_val.186, !mcsema_real_eip !126
  store i1 %806, i1* %CF, !mcsema_real_eip !126
  store i64 %787, i64* %XAX, !mcsema_real_eip !126
  %RBP_val.188 = load i64, i64* %XBP, !mcsema_real_eip !127
  %807 = add i64 %RBP_val.188, -20, !mcsema_real_eip !127
  %808 = inttoptr i64 %807 to i64*, !mcsema_real_eip !127
  %809 = ptrtoint i64* %808 to i64, !mcsema_real_eip !127
  %810 = inttoptr i64 %809 to i32*, !mcsema_real_eip !127
  %811 = load i32, i32* %810, !mcsema_real_eip !127
  %812 = sext i32 %811 to i64, !mcsema_real_eip !127
  store i64 %812, i64* %XCX, !mcsema_real_eip !127
  %RAX_val.189 = load i64, i64* %XAX, !mcsema_real_eip !128
  %813 = add i64 %RAX_val.189, 0, !mcsema_real_eip !128
  %RCX_val.190 = load i64, i64* %XCX, !mcsema_real_eip !128
  %814 = add i64 %813, %RCX_val.190, !mcsema_real_eip !128
  %815 = inttoptr i64 %814 to i64*, !mcsema_real_eip !128
  %816 = ptrtoint i64* %815 to i64, !mcsema_real_eip !128
  %817 = inttoptr i64 %816 to i8*, !mcsema_real_eip !128
  %818 = load i8, i8* %817, !mcsema_real_eip !128
  %819 = sext i8 %818 to i32, !mcsema_real_eip !128
  %820 = zext i32 %819 to i64, !mcsema_real_eip !128
  store i64 %820, i64* %XDX, !mcsema_real_eip !128
  %EDX.191 = bitcast i64* %XDX to i32*, !mcsema_real_eip !129
  %EDX_val.192 = load i32, i32* %EDX.191, !mcsema_real_eip !129
  %821 = sub i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %822 = xor i32 %821, %EDX_val.192, !mcsema_real_eip !129
  %823 = xor i32 %822, 124, !mcsema_real_eip !129
  %824 = and i32 %823, 16, !mcsema_real_eip !129
  %825 = icmp ne i32 %824, 0, !mcsema_real_eip !129
  store i1 %825, i1* %AF, !mcsema_real_eip !129
  %826 = trunc i32 %821 to i8, !mcsema_real_eip !129
  %827 = call i8 @llvm.ctpop.i8(i8 %826), !mcsema_real_eip !129
  %828 = trunc i8 %827 to i1, !mcsema_real_eip !129
  %829 = xor i1 %828, true, !mcsema_real_eip !129
  store i1 %829, i1* %PF, !mcsema_real_eip !129
  %830 = icmp eq i32 %821, 0, !mcsema_real_eip !129
  store i1 %830, i1* %ZF, !mcsema_real_eip !129
  %831 = lshr i32 %821, 31, !mcsema_real_eip !129
  %832 = trunc i32 %831 to i1, !mcsema_real_eip !129
  store i1 %832, i1* %SF, !mcsema_real_eip !129
  %833 = icmp ult i32 %EDX_val.192, 124, !mcsema_real_eip !129
  store i1 %833, i1* %CF, !mcsema_real_eip !129
  %834 = xor i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %835 = xor i32 %EDX_val.192, %821, !mcsema_real_eip !129
  %836 = and i32 %834, %835, !mcsema_real_eip !129
  %837 = lshr i32 %836, 31, !mcsema_real_eip !129
  %838 = trunc i32 %837 to i1, !mcsema_real_eip !129
  store i1 %838, i1* %OF, !mcsema_real_eip !129
  %839 = load i1, i1* %ZF, !mcsema_real_eip !130
  %840 = icmp eq i1 %839, false, !mcsema_real_eip !130
  br i1 %840, label %block_0x283, label %block_0x26f, !mcsema_real_eip !130

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !131
  %841 = add i64 %RBP_val.176, -28, !mcsema_real_eip !131
  %842 = inttoptr i64 %841 to i64*, !mcsema_real_eip !131
  %843 = ptrtoint i64* %842 to i64, !mcsema_real_eip !131
  %844 = inttoptr i64 %843 to i32*, !mcsema_real_eip !131
  %845 = load i32, i32* %844, !mcsema_real_eip !131
  %846 = zext i32 %845 to i64, !mcsema_real_eip !131
  store i64 %846, i64* %XAX, !mcsema_real_eip !131
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !132
  %847 = add i64 %RBP_val.177, -20, !mcsema_real_eip !132
  %848 = inttoptr i64 %847 to i64*, !mcsema_real_eip !132
  %EAX.178 = bitcast i64* %XAX to i32*, !mcsema_real_eip !132
  %EAX_val.179 = load i32, i32* %EAX.178, !mcsema_real_eip !132
  %849 = ptrtoint i64* %848 to i64, !mcsema_real_eip !132
  %850 = inttoptr i64 %849 to i32*, !mcsema_real_eip !132
  store i32 %EAX_val.179, i32* %850, !mcsema_real_eip !132
  %RBP_val.180 = load i64, i64* %XBP, !mcsema_real_eip !133
  %851 = add i64 %RBP_val.180, -32, !mcsema_real_eip !133
  %852 = inttoptr i64 %851 to i64*, !mcsema_real_eip !133
  %853 = ptrtoint i64* %852 to i64, !mcsema_real_eip !133
  %854 = inttoptr i64 %853 to i32*, !mcsema_real_eip !133
  %855 = load i32, i32* %854, !mcsema_real_eip !133
  %856 = zext i32 %855 to i64, !mcsema_real_eip !133
  store i64 %856, i64* %XAX, !mcsema_real_eip !133
  %RBP_val.181 = load i64, i64* %XBP, !mcsema_real_eip !134
  %857 = add i64 %RBP_val.181, -24, !mcsema_real_eip !134
  %858 = inttoptr i64 %857 to i64*, !mcsema_real_eip !134
  %EAX.182 = bitcast i64* %XAX to i32*, !mcsema_real_eip !134
  %EAX_val.183 = load i32, i32* %EAX.182, !mcsema_real_eip !134
  %859 = ptrtoint i64* %858 to i64, !mcsema_real_eip !134
  %860 = inttoptr i64 %859 to i32*, !mcsema_real_eip !134
  store i32 %EAX_val.183, i32* %860, !mcsema_real_eip !134
  br label %block_0x28f, !mcsema_real_eip !123

block_0x2a7:                                      ; preds = %block_0x29b
  %861 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !135
  %862 = ptrtoint [95 x i8]* %861 to i64, !mcsema_real_eip !135
  %863 = add i64 %862, 85, !mcsema_real_eip !135
  store i64 %863, i64* %XDI, !mcsema_real_eip !135
  %AL.193 = bitcast i64* %XAX to i8*, !mcsema_real_eip !136
  store i8 0, i8* %AL.193, !mcsema_real_eip !136
  %RDI_val.194 = load i64, i64* %XDI, !mcsema_real_eip !137
  %RSI_val.195 = load i64, i64* %XSI, !mcsema_real_eip !137
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !137
  %864 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !137
  %865 = inttoptr i64 %864 to i64*, !mcsema_real_eip !137
  store i64 -2415393069852865332, i64* %865, !mcsema_real_eip !137
  store i64 %864, i64* %XSP, !mcsema_real_eip !137
  %866 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.194, i64 %RSI_val.195), !mcsema_real_eip !137
  store i64 %866, i64* %XAX, !mcsema_real_eip !137
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !138
  %867 = add i64 %RBP_val.197, -4, !mcsema_real_eip !138
  %868 = inttoptr i64 %867 to i64*, !mcsema_real_eip !138
  %869 = ptrtoint i64* %868 to i64, !mcsema_real_eip !138
  %870 = inttoptr i64 %869 to i32*, !mcsema_real_eip !138
  store i32 2, i32* %870, !mcsema_real_eip !138
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !139
  %871 = add i64 %RBP_val.198, -104, !mcsema_real_eip !139
  %872 = inttoptr i64 %871 to i64*, !mcsema_real_eip !139
  %EAX.199 = bitcast i64* %XAX to i32*, !mcsema_real_eip !139
  %EAX_val.200 = load i32, i32* %EAX.199, !mcsema_real_eip !139
  %873 = ptrtoint i64* %872 to i64, !mcsema_real_eip !139
  %874 = inttoptr i64 %873 to i32*, !mcsema_real_eip !139
  store i32 %EAX_val.200, i32* %874, !mcsema_real_eip !139
  br label %block_0x312, !mcsema_real_eip !140

block_0x26f:                                      ; preds = %block_0x249
  %RBP_val.201 = load i64, i64* %XBP, !mcsema_real_eip !141
  %875 = add i64 %RBP_val.201, -20, !mcsema_real_eip !141
  %876 = inttoptr i64 %875 to i64*, !mcsema_real_eip !141
  %877 = ptrtoint i64* %876 to i64, !mcsema_real_eip !141
  %878 = inttoptr i64 %877 to i32*, !mcsema_real_eip !141
  %879 = load i32, i32* %878, !mcsema_real_eip !141
  %880 = sub i32 %879, 0, !mcsema_real_eip !141
  %881 = xor i32 %880, %879, !mcsema_real_eip !141
  %882 = xor i32 %881, 0, !mcsema_real_eip !141
  %883 = and i32 %882, 16, !mcsema_real_eip !141
  %884 = icmp ne i32 %883, 0, !mcsema_real_eip !141
  store i1 %884, i1* %AF, !mcsema_real_eip !141
  %885 = trunc i32 %880 to i8, !mcsema_real_eip !141
  %886 = call i8 @llvm.ctpop.i8(i8 %885), !mcsema_real_eip !141
  %887 = trunc i8 %886 to i1, !mcsema_real_eip !141
  %888 = xor i1 %887, true, !mcsema_real_eip !141
  store i1 %888, i1* %PF, !mcsema_real_eip !141
  %889 = icmp eq i32 %880, 0, !mcsema_real_eip !141
  store i1 %889, i1* %ZF, !mcsema_real_eip !141
  %890 = lshr i32 %880, 31, !mcsema_real_eip !141
  %891 = trunc i32 %890 to i1, !mcsema_real_eip !141
  store i1 %891, i1* %SF, !mcsema_real_eip !141
  %892 = icmp ult i32 %879, 0, !mcsema_real_eip !141
  store i1 %892, i1* %CF, !mcsema_real_eip !141
  %893 = xor i32 %879, 0, !mcsema_real_eip !141
  %894 = xor i32 %879, %880, !mcsema_real_eip !141
  %895 = and i32 %893, %894, !mcsema_real_eip !141
  %896 = lshr i32 %895, 31, !mcsema_real_eip !141
  %897 = trunc i32 %896 to i1, !mcsema_real_eip !141
  store i1 %897, i1* %OF, !mcsema_real_eip !141
  %898 = load i1, i1* %OF, !mcsema_real_eip !142
  %899 = load i1, i1* %SF, !mcsema_real_eip !142
  %900 = icmp eq i1 %899, %898, !mcsema_real_eip !142
  %901 = icmp eq i1 %900, false, !mcsema_real_eip !142
  %902 = load i1, i1* %ZF, !mcsema_real_eip !142
  %903 = icmp eq i1 %902, true, !mcsema_real_eip !142
  %904 = or i1 %903, %901, !mcsema_real_eip !142
  br i1 %904, label %block_0x283, label %block_0x279, !mcsema_real_eip !142

block_0x279:                                      ; preds = %block_0x26f
  %RBP_val.202 = load i64, i64* %XBP, !mcsema_real_eip !143
  %905 = add i64 %RBP_val.202, -20, !mcsema_real_eip !143
  %906 = inttoptr i64 %905 to i64*, !mcsema_real_eip !143
  %907 = ptrtoint i64* %906 to i64, !mcsema_real_eip !143
  %908 = inttoptr i64 %907 to i32*, !mcsema_real_eip !143
  %909 = load i32, i32* %908, !mcsema_real_eip !143
  %910 = sub i32 %909, 11, !mcsema_real_eip !143
  %911 = xor i32 %910, %909, !mcsema_real_eip !143
  %912 = xor i32 %911, 11, !mcsema_real_eip !143
  %913 = and i32 %912, 16, !mcsema_real_eip !143
  %914 = icmp ne i32 %913, 0, !mcsema_real_eip !143
  store i1 %914, i1* %AF, !mcsema_real_eip !143
  %915 = trunc i32 %910 to i8, !mcsema_real_eip !143
  %916 = call i8 @llvm.ctpop.i8(i8 %915), !mcsema_real_eip !143
  %917 = trunc i8 %916 to i1, !mcsema_real_eip !143
  %918 = xor i1 %917, true, !mcsema_real_eip !143
  store i1 %918, i1* %PF, !mcsema_real_eip !143
  %919 = icmp eq i32 %910, 0, !mcsema_real_eip !143
  store i1 %919, i1* %ZF, !mcsema_real_eip !143
  %920 = lshr i32 %910, 31, !mcsema_real_eip !143
  %921 = trunc i32 %920 to i1, !mcsema_real_eip !143
  store i1 %921, i1* %SF, !mcsema_real_eip !143
  %922 = icmp ult i32 %909, 11, !mcsema_real_eip !143
  store i1 %922, i1* %CF, !mcsema_real_eip !143
  %923 = xor i32 %909, 11, !mcsema_real_eip !143
  %924 = xor i32 %909, %910, !mcsema_real_eip !143
  %925 = and i32 %923, %924, !mcsema_real_eip !143
  %926 = lshr i32 %925, 31, !mcsema_real_eip !143
  %927 = trunc i32 %926 to i1, !mcsema_real_eip !143
  store i1 %927, i1* %OF, !mcsema_real_eip !143
  %928 = load i1, i1* %OF, !mcsema_real_eip !144
  %929 = load i1, i1* %SF, !mcsema_real_eip !144
  %930 = icmp eq i1 %929, %928, !mcsema_real_eip !144
  %931 = icmp eq i1 %930, false, !mcsema_real_eip !144
  br i1 %931, label %block_0x28f, label %block_0x283, !mcsema_real_eip !144
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
  %3 = sext i8 32 to i64, !mcsema_real_eip !147
  %4 = sub i64 %RSP_val.206, %3, !mcsema_real_eip !147
  %5 = xor i64 %4, %RSP_val.206, !mcsema_real_eip !147
  %6 = xor i64 %5, %3, !mcsema_real_eip !147
  %7 = and i64 %6, 16, !mcsema_real_eip !147
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !147
  store i1 %8, i1* %AF, !mcsema_real_eip !147
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !147
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !147
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !147
  %12 = xor i1 %11, true, !mcsema_real_eip !147
  store i1 %12, i1* %PF, !mcsema_real_eip !147
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !147
  store i1 %13, i1* %ZF, !mcsema_real_eip !147
  %14 = lshr i64 %4, 63, !mcsema_real_eip !147
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !147
  store i1 %15, i1* %SF, !mcsema_real_eip !147
  %16 = icmp ult i64 %RSP_val.206, %3, !mcsema_real_eip !147
  store i1 %16, i1* %CF, !mcsema_real_eip !147
  %17 = xor i64 %RSP_val.206, %3, !mcsema_real_eip !147
  %18 = xor i64 %RSP_val.206, %4, !mcsema_real_eip !147
  %19 = and i64 %17, %18, !mcsema_real_eip !147
  %20 = lshr i64 %19, 63, !mcsema_real_eip !147
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !147
  store i1 %21, i1* %OF, !mcsema_real_eip !147
  store i64 %4, i64* %XSP, !mcsema_real_eip !147
  %RBP_val.207 = load i64, i64* %XBP, !mcsema_real_eip !148
  %22 = add i64 %RBP_val.207, -4, !mcsema_real_eip !148
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !148
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !148
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !148
  store i32 0, i32* %25, !mcsema_real_eip !148
  br label %block_0xf, !mcsema_real_eip !149

block_0xf:                                        ; preds = %block_0x69, %block_0x0
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !149
  %26 = add i64 %RBP_val.208, -4, !mcsema_real_eip !149
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !149
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !149
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !149
  %30 = load i32, i32* %29, !mcsema_real_eip !149
  %31 = sub i32 %30, 7, !mcsema_real_eip !149
  %32 = xor i32 %31, %30, !mcsema_real_eip !149
  %33 = xor i32 %32, 7, !mcsema_real_eip !149
  %34 = and i32 %33, 16, !mcsema_real_eip !149
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !149
  store i1 %35, i1* %AF, !mcsema_real_eip !149
  %36 = trunc i32 %31 to i8, !mcsema_real_eip !149
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !149
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !149
  %39 = xor i1 %38, true, !mcsema_real_eip !149
  store i1 %39, i1* %PF, !mcsema_real_eip !149
  %40 = icmp eq i32 %31, 0, !mcsema_real_eip !149
  store i1 %40, i1* %ZF, !mcsema_real_eip !149
  %41 = lshr i32 %31, 31, !mcsema_real_eip !149
  %42 = trunc i32 %41 to i1, !mcsema_real_eip !149
  store i1 %42, i1* %SF, !mcsema_real_eip !149
  %43 = icmp ult i32 %30, 7, !mcsema_real_eip !149
  store i1 %43, i1* %CF, !mcsema_real_eip !149
  %44 = xor i32 %30, 7, !mcsema_real_eip !149
  %45 = xor i32 %30, %31, !mcsema_real_eip !149
  %46 = and i32 %44, %45, !mcsema_real_eip !149
  %47 = lshr i32 %46, 31, !mcsema_real_eip !149
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !149
  store i1 %48, i1* %OF, !mcsema_real_eip !149
  %49 = load i1, i1* %OF, !mcsema_real_eip !150
  %50 = load i1, i1* %SF, !mcsema_real_eip !150
  %51 = icmp eq i1 %50, %49, !mcsema_real_eip !150
  br i1 %51, label %block_0x8b, label %block_0x19, !mcsema_real_eip !150

block_0x19:                                       ; preds = %block_0xf
  %RBP_val.219 = load i64, i64* %XBP, !mcsema_real_eip !151
  %52 = add i64 %RBP_val.219, -8, !mcsema_real_eip !151
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !151
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !151
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !151
  store i32 0, i32* %55, !mcsema_real_eip !151
  br label %block_0x20, !mcsema_real_eip !152

block_0x8b:                                       ; preds = %block_0xf
  %56 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !153
  %57 = ptrtoint [95 x i8]* %56 to i64, !mcsema_real_eip !153
  %58 = add i64 %57, 3, !mcsema_real_eip !153
  store i64 %58, i64* %XDI, !mcsema_real_eip !153
  %AL.209 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.209, !mcsema_real_eip !154
  %RDI_val.210 = load i64, i64* %XDI, !mcsema_real_eip !155
  %RSI_val.211 = load i64, i64* %XSI, !mcsema_real_eip !155
  %RSP_val.212 = load i64, i64* %XSP, !mcsema_real_eip !155
  %59 = sub i64 %RSP_val.212, 8, !mcsema_real_eip !155
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !155
  store i64 -2415393069852865332, i64* %60, !mcsema_real_eip !155
  store i64 %59, i64* %XSP, !mcsema_real_eip !155
  %61 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.210, i64 %RSI_val.211), !mcsema_real_eip !155
  store i64 %61, i64* %XAX, !mcsema_real_eip !155
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !156
  %62 = add i64 %RBP_val.213, -20, !mcsema_real_eip !156
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !156
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !156
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !156
  %64 = ptrtoint i64* %63 to i64, !mcsema_real_eip !156
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !156
  store i32 %EAX_val.215, i32* %65, !mcsema_real_eip !156
  %RSP_val.216 = load i64, i64* %XSP, !mcsema_real_eip !157
  %66 = add i64 32, %RSP_val.216, !mcsema_real_eip !157
  %67 = xor i64 %66, %RSP_val.216, !mcsema_real_eip !157
  %68 = xor i64 %67, 32, !mcsema_real_eip !157
  %69 = and i64 %68, 16, !mcsema_real_eip !157
  %70 = icmp ne i64 %69, 0, !mcsema_real_eip !157
  store i1 %70, i1* %AF, !mcsema_real_eip !157
  %71 = lshr i64 %66, 63, !mcsema_real_eip !157
  %72 = trunc i64 %71 to i1, !mcsema_real_eip !157
  store i1 %72, i1* %SF, !mcsema_real_eip !157
  %73 = icmp eq i64 %66, 0, !mcsema_real_eip !157
  store i1 %73, i1* %ZF, !mcsema_real_eip !157
  %74 = xor i64 %RSP_val.216, 32, !mcsema_real_eip !157
  %75 = xor i64 %74, -1, !mcsema_real_eip !157
  %76 = xor i64 %RSP_val.216, %66, !mcsema_real_eip !157
  %77 = and i64 %75, %76, !mcsema_real_eip !157
  %78 = lshr i64 %77, 63, !mcsema_real_eip !157
  %79 = and i64 %78, 1, !mcsema_real_eip !157
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !157
  store i1 %80, i1* %OF, !mcsema_real_eip !157
  %81 = trunc i64 %66 to i8, !mcsema_real_eip !157
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !157
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !157
  %84 = xor i1 %83, true, !mcsema_real_eip !157
  store i1 %84, i1* %PF, !mcsema_real_eip !157
  %85 = icmp ult i64 %66, %RSP_val.216, !mcsema_real_eip !157
  store i1 %85, i1* %CF, !mcsema_real_eip !157
  store i64 %66, i64* %XSP, !mcsema_real_eip !157
  %RSP_val.217 = load i64, i64* %XSP, !mcsema_real_eip !158
  %86 = inttoptr i64 %RSP_val.217 to i64*, !mcsema_real_eip !158
  %87 = load i64, i64* %86, !mcsema_real_eip !158
  store i64 %87, i64* %XBP, !mcsema_real_eip !158
  %88 = add i64 %RSP_val.217, 8, !mcsema_real_eip !158
  store i64 %88, i64* %XSP, !mcsema_real_eip !158
  %RSP_val.218 = load i64, i64* %XSP, !mcsema_real_eip !159
  %89 = add i64 %RSP_val.218, 8, !mcsema_real_eip !159
  %90 = inttoptr i64 %RSP_val.218 to i64*, !mcsema_real_eip !159
  %91 = load i64, i64* %90, !mcsema_real_eip !159
  store i64 %91, i64* %XIP, !mcsema_real_eip !159
  store i64 %89, i64* %XSP, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !152
  %92 = add i64 %RBP_val.220, -8, !mcsema_real_eip !152
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !152
  %94 = ptrtoint i64* %93 to i64, !mcsema_real_eip !152
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !152
  %96 = load i32, i32* %95, !mcsema_real_eip !152
  %97 = sub i32 %96, 11, !mcsema_real_eip !152
  %98 = xor i32 %97, %96, !mcsema_real_eip !152
  %99 = xor i32 %98, 11, !mcsema_real_eip !152
  %100 = and i32 %99, 16, !mcsema_real_eip !152
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !152
  store i1 %101, i1* %AF, !mcsema_real_eip !152
  %102 = trunc i32 %97 to i8, !mcsema_real_eip !152
  %103 = call i8 @llvm.ctpop.i8(i8 %102), !mcsema_real_eip !152
  %104 = trunc i8 %103 to i1, !mcsema_real_eip !152
  %105 = xor i1 %104, true, !mcsema_real_eip !152
  store i1 %105, i1* %PF, !mcsema_real_eip !152
  %106 = icmp eq i32 %97, 0, !mcsema_real_eip !152
  store i1 %106, i1* %ZF, !mcsema_real_eip !152
  %107 = lshr i32 %97, 31, !mcsema_real_eip !152
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !152
  store i1 %108, i1* %SF, !mcsema_real_eip !152
  %109 = icmp ult i32 %96, 11, !mcsema_real_eip !152
  store i1 %109, i1* %CF, !mcsema_real_eip !152
  %110 = xor i32 %96, 11, !mcsema_real_eip !152
  %111 = xor i32 %96, %97, !mcsema_real_eip !152
  %112 = and i32 %110, %111, !mcsema_real_eip !152
  %113 = lshr i32 %112, 31, !mcsema_real_eip !152
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !152
  store i1 %114, i1* %OF, !mcsema_real_eip !152
  %115 = load i1, i1* %OF, !mcsema_real_eip !160
  %116 = load i1, i1* %SF, !mcsema_real_eip !160
  %117 = icmp eq i1 %116, %115, !mcsema_real_eip !160
  br i1 %117, label %block_0x69, label %block_0x2a, !mcsema_real_eip !160

block_0x2a:                                       ; preds = %block_0x20
  %118 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !161
  %119 = ptrtoint [95 x i8]* %118 to i64, !mcsema_real_eip !161
  %120 = add i64 %119, 0, !mcsema_real_eip !161
  store i64 %120, i64* %XDI, !mcsema_real_eip !161
  %121 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !162
  %122 = ptrtoint [77 x i8]* %121 to i64, !mcsema_real_eip !162
  %123 = add i64 %122, 0, !mcsema_real_eip !162
  store i64 %123, i64* %XAX, !mcsema_real_eip !162
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !163
  %124 = add i64 %RBP_val.234, -4, !mcsema_real_eip !163
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !163
  %126 = ptrtoint i64* %125 to i64, !mcsema_real_eip !163
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !163
  %128 = load i32, i32* %127, !mcsema_real_eip !163
  %129 = sext i32 %128 to i64, !mcsema_real_eip !163
  store i64 %129, i64* %XCX, !mcsema_real_eip !163
  %RCX_val.235 = load i64, i64* %XCX, !mcsema_real_eip !164
  %130 = sext i64 %RCX_val.235 to i128, !mcsema_real_eip !164
  %131 = sext i64 11 to i128, !mcsema_real_eip !164
  %132 = mul i128 %130, %131, !mcsema_real_eip !164
  %133 = trunc i128 %132 to i64, !mcsema_real_eip !164
  %134 = sext i64 %133 to i128, !mcsema_real_eip !164
  %135 = icmp ne i128 %134, %132, !mcsema_real_eip !164
  %136 = icmp slt i64 %133, 0, !mcsema_real_eip !164
  store i1 %136, i1* %SF, !mcsema_real_eip !164
  store i1 %135, i1* %OF, !mcsema_real_eip !164
  store i1 %135, i1* %CF, !mcsema_real_eip !164
  store i64 %133, i64* %XCX, !mcsema_real_eip !164
  %RAX_val.236 = load i64, i64* %XAX, !mcsema_real_eip !165
  %RCX_val.237 = load i64, i64* %XCX, !mcsema_real_eip !165
  %137 = add i64 %RCX_val.237, %RAX_val.236, !mcsema_real_eip !165
  %138 = xor i64 %137, %RAX_val.236, !mcsema_real_eip !165
  %139 = xor i64 %138, %RCX_val.237, !mcsema_real_eip !165
  %140 = and i64 %139, 16, !mcsema_real_eip !165
  %141 = icmp ne i64 %140, 0, !mcsema_real_eip !165
  store i1 %141, i1* %AF, !mcsema_real_eip !165
  %142 = lshr i64 %137, 63, !mcsema_real_eip !165
  %143 = trunc i64 %142 to i1, !mcsema_real_eip !165
  store i1 %143, i1* %SF, !mcsema_real_eip !165
  %144 = icmp eq i64 %137, 0, !mcsema_real_eip !165
  store i1 %144, i1* %ZF, !mcsema_real_eip !165
  %145 = xor i64 %RAX_val.236, %RCX_val.237, !mcsema_real_eip !165
  %146 = xor i64 %145, -1, !mcsema_real_eip !165
  %147 = xor i64 %RAX_val.236, %137, !mcsema_real_eip !165
  %148 = and i64 %146, %147, !mcsema_real_eip !165
  %149 = lshr i64 %148, 63, !mcsema_real_eip !165
  %150 = and i64 %149, 1, !mcsema_real_eip !165
  %151 = trunc i64 %150 to i1, !mcsema_real_eip !165
  store i1 %151, i1* %OF, !mcsema_real_eip !165
  %152 = trunc i64 %137 to i8, !mcsema_real_eip !165
  %153 = call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !165
  %154 = trunc i8 %153 to i1, !mcsema_real_eip !165
  %155 = xor i1 %154, true, !mcsema_real_eip !165
  store i1 %155, i1* %PF, !mcsema_real_eip !165
  %156 = icmp ult i64 %137, %RAX_val.236, !mcsema_real_eip !165
  store i1 %156, i1* %CF, !mcsema_real_eip !165
  store i64 %137, i64* %XAX, !mcsema_real_eip !165
  %RBP_val.238 = load i64, i64* %XBP, !mcsema_real_eip !166
  %157 = add i64 %RBP_val.238, -8, !mcsema_real_eip !166
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !166
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !166
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !166
  %161 = load i32, i32* %160, !mcsema_real_eip !166
  %162 = sext i32 %161 to i64, !mcsema_real_eip !166
  store i64 %162, i64* %XCX, !mcsema_real_eip !166
  %RAX_val.239 = load i64, i64* %XAX, !mcsema_real_eip !167
  %163 = add i64 %RAX_val.239, 0, !mcsema_real_eip !167
  %RCX_val.240 = load i64, i64* %XCX, !mcsema_real_eip !167
  %164 = add i64 %163, %RCX_val.240, !mcsema_real_eip !167
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !167
  %166 = ptrtoint i64* %165 to i64, !mcsema_real_eip !167
  %167 = inttoptr i64 %166 to i8*, !mcsema_real_eip !167
  %168 = load i8, i8* %167, !mcsema_real_eip !167
  %169 = sext i8 %168 to i32, !mcsema_real_eip !167
  %170 = zext i32 %169 to i64, !mcsema_real_eip !167
  store i64 %170, i64* %XSI, !mcsema_real_eip !167
  %AL.241 = bitcast i64* %XAX to i8*, !mcsema_real_eip !168
  store i8 0, i8* %AL.241, !mcsema_real_eip !168
  %RDI_val.242 = load i64, i64* %XDI, !mcsema_real_eip !169
  %RSI_val.243 = load i64, i64* %XSI, !mcsema_real_eip !169
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !169
  %171 = sub i64 %RSP_val.244, 8, !mcsema_real_eip !169
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %172, !mcsema_real_eip !169
  store i64 %171, i64* %XSP, !mcsema_real_eip !169
  %173 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.242, i64 %RSI_val.243), !mcsema_real_eip !169
  store i64 %173, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.245 = load i64, i64* %XBP, !mcsema_real_eip !170
  %174 = add i64 %RBP_val.245, -12, !mcsema_real_eip !170
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !170
  %EAX.246 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.247 = load i32, i32* %EAX.246, !mcsema_real_eip !170
  %176 = ptrtoint i64* %175 to i64, !mcsema_real_eip !170
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.247, i32* %177, !mcsema_real_eip !170
  %RBP_val.248 = load i64, i64* %XBP, !mcsema_real_eip !171
  %178 = add i64 %RBP_val.248, -8, !mcsema_real_eip !171
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !171
  %180 = ptrtoint i64* %179 to i64, !mcsema_real_eip !171
  %181 = inttoptr i64 %180 to i32*, !mcsema_real_eip !171
  %182 = load i32, i32* %181, !mcsema_real_eip !171
  %183 = zext i32 %182 to i64, !mcsema_real_eip !171
  store i64 %183, i64* %XAX, !mcsema_real_eip !171
  %EAX.249 = bitcast i64* %XAX to i32*, !mcsema_real_eip !172
  %EAX_val.250 = load i32, i32* %EAX.249, !mcsema_real_eip !172
  %184 = add i32 1, %EAX_val.250, !mcsema_real_eip !172
  %185 = xor i32 %184, %EAX_val.250, !mcsema_real_eip !172
  %186 = xor i32 %185, 1, !mcsema_real_eip !172
  %187 = and i32 %186, 16, !mcsema_real_eip !172
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !172
  store i1 %188, i1* %AF, !mcsema_real_eip !172
  %189 = lshr i32 %184, 31, !mcsema_real_eip !172
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !172
  store i1 %190, i1* %SF, !mcsema_real_eip !172
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !172
  store i1 %191, i1* %ZF, !mcsema_real_eip !172
  %192 = xor i32 %EAX_val.250, 1, !mcsema_real_eip !172
  %193 = xor i32 %192, -1, !mcsema_real_eip !172
  %194 = xor i32 %EAX_val.250, %184, !mcsema_real_eip !172
  %195 = and i32 %193, %194, !mcsema_real_eip !172
  %196 = lshr i32 %195, 31, !mcsema_real_eip !172
  %197 = and i32 %196, 1, !mcsema_real_eip !172
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !172
  store i1 %198, i1* %OF, !mcsema_real_eip !172
  %199 = trunc i32 %184 to i8, !mcsema_real_eip !172
  %200 = call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !172
  %201 = trunc i8 %200 to i1, !mcsema_real_eip !172
  %202 = xor i1 %201, true, !mcsema_real_eip !172
  store i1 %202, i1* %PF, !mcsema_real_eip !172
  %203 = icmp ult i32 %184, %EAX_val.250, !mcsema_real_eip !172
  store i1 %203, i1* %CF, !mcsema_real_eip !172
  %204 = zext i32 %184 to i64, !mcsema_real_eip !172
  store i64 %204, i64* %XAX, !mcsema_real_eip !172
  %RBP_val.251 = load i64, i64* %XBP, !mcsema_real_eip !173
  %205 = add i64 %RBP_val.251, -8, !mcsema_real_eip !173
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !173
  %EAX.252 = bitcast i64* %XAX to i32*, !mcsema_real_eip !173
  %EAX_val.253 = load i32, i32* %EAX.252, !mcsema_real_eip !173
  %207 = ptrtoint i64* %206 to i64, !mcsema_real_eip !173
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !173
  store i32 %EAX_val.253, i32* %208, !mcsema_real_eip !173
  br label %block_0x20, !mcsema_real_eip !174

block_0x69:                                       ; preds = %block_0x20
  %209 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !175
  %210 = ptrtoint [95 x i8]* %209 to i64, !mcsema_real_eip !175
  %211 = add i64 %210, 3, !mcsema_real_eip !175
  store i64 %211, i64* %XDI, !mcsema_real_eip !175
  %AL.221 = bitcast i64* %XAX to i8*, !mcsema_real_eip !176
  store i8 0, i8* %AL.221, !mcsema_real_eip !176
  %RDI_val.222 = load i64, i64* %XDI, !mcsema_real_eip !177
  %RSI_val.223 = load i64, i64* %XSI, !mcsema_real_eip !177
  %RSP_val.224 = load i64, i64* %XSP, !mcsema_real_eip !177
  %212 = sub i64 %RSP_val.224, 8, !mcsema_real_eip !177
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !177
  store i64 -2415393069852865332, i64* %213, !mcsema_real_eip !177
  store i64 %212, i64* %XSP, !mcsema_real_eip !177
  %214 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.222, i64 %RSI_val.223), !mcsema_real_eip !177
  store i64 %214, i64* %XAX, !mcsema_real_eip !177
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !178
  %215 = add i64 %RBP_val.225, -16, !mcsema_real_eip !178
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !178
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !178
  %217 = ptrtoint i64* %216 to i64, !mcsema_real_eip !178
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.227, i32* %218, !mcsema_real_eip !178
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !179
  %219 = add i64 %RBP_val.228, -4, !mcsema_real_eip !179
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !179
  %221 = ptrtoint i64* %220 to i64, !mcsema_real_eip !179
  %222 = inttoptr i64 %221 to i32*, !mcsema_real_eip !179
  %223 = load i32, i32* %222, !mcsema_real_eip !179
  %224 = zext i32 %223 to i64, !mcsema_real_eip !179
  store i64 %224, i64* %XAX, !mcsema_real_eip !179
  %EAX.229 = bitcast i64* %XAX to i32*, !mcsema_real_eip !180
  %EAX_val.230 = load i32, i32* %EAX.229, !mcsema_real_eip !180
  %225 = add i32 1, %EAX_val.230, !mcsema_real_eip !180
  %226 = xor i32 %225, %EAX_val.230, !mcsema_real_eip !180
  %227 = xor i32 %226, 1, !mcsema_real_eip !180
  %228 = and i32 %227, 16, !mcsema_real_eip !180
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !180
  store i1 %229, i1* %AF, !mcsema_real_eip !180
  %230 = lshr i32 %225, 31, !mcsema_real_eip !180
  %231 = trunc i32 %230 to i1, !mcsema_real_eip !180
  store i1 %231, i1* %SF, !mcsema_real_eip !180
  %232 = icmp eq i32 %225, 0, !mcsema_real_eip !180
  store i1 %232, i1* %ZF, !mcsema_real_eip !180
  %233 = xor i32 %EAX_val.230, 1, !mcsema_real_eip !180
  %234 = xor i32 %233, -1, !mcsema_real_eip !180
  %235 = xor i32 %EAX_val.230, %225, !mcsema_real_eip !180
  %236 = and i32 %234, %235, !mcsema_real_eip !180
  %237 = lshr i32 %236, 31, !mcsema_real_eip !180
  %238 = and i32 %237, 1, !mcsema_real_eip !180
  %239 = trunc i32 %238 to i1, !mcsema_real_eip !180
  store i1 %239, i1* %OF, !mcsema_real_eip !180
  %240 = trunc i32 %225 to i8, !mcsema_real_eip !180
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !180
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !180
  %243 = xor i1 %242, true, !mcsema_real_eip !180
  store i1 %243, i1* %PF, !mcsema_real_eip !180
  %244 = icmp ult i32 %225, %EAX_val.230, !mcsema_real_eip !180
  store i1 %244, i1* %CF, !mcsema_real_eip !180
  %245 = zext i32 %225 to i64, !mcsema_real_eip !180
  store i64 %245, i64* %XAX, !mcsema_real_eip !180
  %RBP_val.231 = load i64, i64* %XBP, !mcsema_real_eip !181
  %246 = add i64 %RBP_val.231, -4, !mcsema_real_eip !181
  %247 = inttoptr i64 %246 to i64*, !mcsema_real_eip !181
  %EAX.232 = bitcast i64* %XAX to i32*, !mcsema_real_eip !181
  %EAX_val.233 = load i32, i32* %EAX.232, !mcsema_real_eip !181
  %248 = ptrtoint i64* %247 to i64, !mcsema_real_eip !181
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !181
  store i32 %EAX_val.233, i32* %249, !mcsema_real_eip !181
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
