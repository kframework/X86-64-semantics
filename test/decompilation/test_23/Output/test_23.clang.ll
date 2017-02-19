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
  %22 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !5
  %24 = ptrtoint i64* %23 to i64, !mcsema_real_eip !5
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %25, !mcsema_real_eip !5
  br label %block_0xf, !mcsema_real_eip !6

block_0xf:                                        ; preds = %block_0x69, %block_0x0
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %26 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  %30 = load i32, i32* %29, !mcsema_real_eip !6
  %31 = sub i32 %30, 7, !mcsema_real_eip !6
  %32 = xor i32 %31, %30, !mcsema_real_eip !6
  %33 = xor i32 %32, 7, !mcsema_real_eip !6
  %34 = and i32 %33, 16, !mcsema_real_eip !6
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !6
  store i1 %35, i1* %AF, !mcsema_real_eip !6
  %36 = trunc i32 %31 to i8, !mcsema_real_eip !6
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !6
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !6
  %39 = xor i1 %38, true, !mcsema_real_eip !6
  store i1 %39, i1* %PF, !mcsema_real_eip !6
  %40 = icmp eq i32 %31, 0, !mcsema_real_eip !6
  store i1 %40, i1* %ZF, !mcsema_real_eip !6
  %41 = lshr i32 %31, 31, !mcsema_real_eip !6
  %42 = trunc i32 %41 to i1, !mcsema_real_eip !6
  store i1 %42, i1* %SF, !mcsema_real_eip !6
  %43 = icmp ult i32 %30, 7, !mcsema_real_eip !6
  store i1 %43, i1* %CF, !mcsema_real_eip !6
  %44 = xor i32 %30, 7, !mcsema_real_eip !6
  %45 = xor i32 %30, %31, !mcsema_real_eip !6
  %46 = and i32 %44, %45, !mcsema_real_eip !6
  %47 = lshr i32 %46, 31, !mcsema_real_eip !6
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !6
  store i1 %48, i1* %OF, !mcsema_real_eip !6
  %49 = load i1, i1* %OF, !mcsema_real_eip !7
  %50 = load i1, i1* %SF, !mcsema_real_eip !7
  %51 = icmp eq i1 %50, %49, !mcsema_real_eip !7
  br i1 %51, label %block_0x8b, label %block_0x19, !mcsema_real_eip !7

block_0x19:                                       ; preds = %block_0xf
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %52 = add i64 %RBP_val.6, -8, !mcsema_real_eip !8
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !8
  %54 = ptrtoint i64* %53 to i64, !mcsema_real_eip !8
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %55, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %56 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !9
  %58 = ptrtoint i64* %57 to i64, !mcsema_real_eip !9
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !9
  %60 = load i32, i32* %59, !mcsema_real_eip !9
  %61 = sub i32 %60, 11, !mcsema_real_eip !9
  %62 = xor i32 %61, %60, !mcsema_real_eip !9
  %63 = xor i32 %62, 11, !mcsema_real_eip !9
  %64 = and i32 %63, 16, !mcsema_real_eip !9
  %65 = icmp ne i32 %64, 0, !mcsema_real_eip !9
  store i1 %65, i1* %AF, !mcsema_real_eip !9
  %66 = trunc i32 %61 to i8, !mcsema_real_eip !9
  %67 = call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !9
  %68 = trunc i8 %67 to i1, !mcsema_real_eip !9
  %69 = xor i1 %68, true, !mcsema_real_eip !9
  store i1 %69, i1* %PF, !mcsema_real_eip !9
  %70 = icmp eq i32 %61, 0, !mcsema_real_eip !9
  store i1 %70, i1* %ZF, !mcsema_real_eip !9
  %71 = lshr i32 %61, 31, !mcsema_real_eip !9
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !9
  store i1 %72, i1* %SF, !mcsema_real_eip !9
  %73 = icmp ult i32 %60, 11, !mcsema_real_eip !9
  store i1 %73, i1* %CF, !mcsema_real_eip !9
  %74 = xor i32 %60, 11, !mcsema_real_eip !9
  %75 = xor i32 %60, %61, !mcsema_real_eip !9
  %76 = and i32 %74, %75, !mcsema_real_eip !9
  %77 = lshr i32 %76, 31, !mcsema_real_eip !9
  %78 = trunc i32 %77 to i1, !mcsema_real_eip !9
  store i1 %78, i1* %OF, !mcsema_real_eip !9
  %79 = load i1, i1* %OF, !mcsema_real_eip !10
  %80 = load i1, i1* %SF, !mcsema_real_eip !10
  %81 = icmp eq i1 %80, %79, !mcsema_real_eip !10
  br i1 %81, label %block_0x69, label %block_0x2a, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  %82 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !11
  %83 = ptrtoint [95 x i8]* %82 to i64, !mcsema_real_eip !11
  %84 = add i64 %83, 0, !mcsema_real_eip !11
  store i64 %84, i64* %XDI, !mcsema_real_eip !11
  %85 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !12
  %86 = ptrtoint [77 x i8]* %85 to i64, !mcsema_real_eip !12
  %87 = add i64 %86, 0, !mcsema_real_eip !12
  store i64 %87, i64* %XAX, !mcsema_real_eip !12
  %RBP_val.8 = load i64, i64* %XBP, !mcsema_real_eip !13
  %88 = add i64 %RBP_val.8, -4, !mcsema_real_eip !13
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !13
  %90 = ptrtoint i64* %89 to i64, !mcsema_real_eip !13
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !13
  %92 = load i32, i32* %91, !mcsema_real_eip !13
  %93 = sext i32 %92 to i64, !mcsema_real_eip !13
  store i64 %93, i64* %XCX, !mcsema_real_eip !13
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !14
  %94 = sext i64 %RCX_val.9 to i128, !mcsema_real_eip !14
  %95 = sext i64 11 to i128, !mcsema_real_eip !14
  %96 = mul i128 %94, %95, !mcsema_real_eip !14
  %97 = trunc i128 %96 to i64, !mcsema_real_eip !14
  %98 = sext i64 %97 to i128, !mcsema_real_eip !14
  %99 = icmp ne i128 %98, %96, !mcsema_real_eip !14
  %100 = icmp slt i64 %97, 0, !mcsema_real_eip !14
  store i1 %100, i1* %SF, !mcsema_real_eip !14
  store i1 %99, i1* %OF, !mcsema_real_eip !14
  store i1 %99, i1* %CF, !mcsema_real_eip !14
  store i64 %97, i64* %XCX, !mcsema_real_eip !14
  %RAX_val.10 = load i64, i64* %XAX, !mcsema_real_eip !15
  %RCX_val.11 = load i64, i64* %XCX, !mcsema_real_eip !15
  %101 = add i64 %RCX_val.11, %RAX_val.10, !mcsema_real_eip !15
  %102 = xor i64 %101, %RAX_val.10, !mcsema_real_eip !15
  %103 = xor i64 %102, %RCX_val.11, !mcsema_real_eip !15
  %104 = and i64 %103, 16, !mcsema_real_eip !15
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !15
  store i1 %105, i1* %AF, !mcsema_real_eip !15
  %106 = lshr i64 %101, 63, !mcsema_real_eip !15
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !15
  store i1 %107, i1* %SF, !mcsema_real_eip !15
  %108 = icmp eq i64 %101, 0, !mcsema_real_eip !15
  store i1 %108, i1* %ZF, !mcsema_real_eip !15
  %109 = xor i64 %RAX_val.10, %RCX_val.11, !mcsema_real_eip !15
  %110 = xor i64 %109, -1, !mcsema_real_eip !15
  %111 = xor i64 %RAX_val.10, %101, !mcsema_real_eip !15
  %112 = and i64 %110, %111, !mcsema_real_eip !15
  %113 = lshr i64 %112, 63, !mcsema_real_eip !15
  %114 = and i64 %113, 1, !mcsema_real_eip !15
  %115 = trunc i64 %114 to i1, !mcsema_real_eip !15
  store i1 %115, i1* %OF, !mcsema_real_eip !15
  %116 = trunc i64 %101 to i8, !mcsema_real_eip !15
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !15
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !15
  %119 = xor i1 %118, true, !mcsema_real_eip !15
  store i1 %119, i1* %PF, !mcsema_real_eip !15
  %120 = icmp ult i64 %101, %RAX_val.10, !mcsema_real_eip !15
  store i1 %120, i1* %CF, !mcsema_real_eip !15
  store i64 %101, i64* %XAX, !mcsema_real_eip !15
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !16
  %121 = add i64 %RBP_val.12, -8, !mcsema_real_eip !16
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !16
  %123 = ptrtoint i64* %122 to i64, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !16
  %125 = load i32, i32* %124, !mcsema_real_eip !16
  %126 = sext i32 %125 to i64, !mcsema_real_eip !16
  store i64 %126, i64* %XCX, !mcsema_real_eip !16
  %RAX_val.13 = load i64, i64* %XAX, !mcsema_real_eip !17
  %127 = add i64 %RAX_val.13, 0, !mcsema_real_eip !17
  %RCX_val.14 = load i64, i64* %XCX, !mcsema_real_eip !17
  %128 = add i64 %127, %RCX_val.14, !mcsema_real_eip !17
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !17
  %130 = ptrtoint i64* %129 to i64, !mcsema_real_eip !17
  %131 = inttoptr i64 %130 to i8*, !mcsema_real_eip !17
  %132 = load i8, i8* %131, !mcsema_real_eip !17
  %133 = sext i8 %132 to i32, !mcsema_real_eip !17
  %134 = zext i32 %133 to i64, !mcsema_real_eip !17
  store i64 %134, i64* %XSI, !mcsema_real_eip !17
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.15, !mcsema_real_eip !18
  %RDI_val.16 = load i64, i64* %XDI, !mcsema_real_eip !19
  %RSI_val.17 = load i64, i64* %XSI, !mcsema_real_eip !19
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !19
  %135 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !19
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !19
  store i64 -2415393069852865332, i64* %136, !mcsema_real_eip !19
  store i64 %135, i64* %XSP, !mcsema_real_eip !19
  %137 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.16, i64 %RSI_val.17), !mcsema_real_eip !19
  store i64 %137, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !20
  %138 = add i64 %RBP_val.19, -12, !mcsema_real_eip !20
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !20
  %EAX.20 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.21 = load i32, i32* %EAX.20, !mcsema_real_eip !20
  %140 = ptrtoint i64* %139 to i64, !mcsema_real_eip !20
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.21, i32* %141, !mcsema_real_eip !20
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !21
  %142 = add i64 %RBP_val.22, -8, !mcsema_real_eip !21
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !21
  %144 = ptrtoint i64* %143 to i64, !mcsema_real_eip !21
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !21
  %146 = load i32, i32* %145, !mcsema_real_eip !21
  %147 = zext i32 %146 to i64, !mcsema_real_eip !21
  store i64 %147, i64* %XAX, !mcsema_real_eip !21
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !22
  %148 = add i32 1, %EAX_val.24, !mcsema_real_eip !22
  %149 = xor i32 %148, %EAX_val.24, !mcsema_real_eip !22
  %150 = xor i32 %149, 1, !mcsema_real_eip !22
  %151 = and i32 %150, 16, !mcsema_real_eip !22
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !22
  store i1 %152, i1* %AF, !mcsema_real_eip !22
  %153 = lshr i32 %148, 31, !mcsema_real_eip !22
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !22
  store i1 %154, i1* %SF, !mcsema_real_eip !22
  %155 = icmp eq i32 %148, 0, !mcsema_real_eip !22
  store i1 %155, i1* %ZF, !mcsema_real_eip !22
  %156 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !22
  %157 = xor i32 %156, -1, !mcsema_real_eip !22
  %158 = xor i32 %EAX_val.24, %148, !mcsema_real_eip !22
  %159 = and i32 %157, %158, !mcsema_real_eip !22
  %160 = lshr i32 %159, 31, !mcsema_real_eip !22
  %161 = and i32 %160, 1, !mcsema_real_eip !22
  %162 = trunc i32 %161 to i1, !mcsema_real_eip !22
  store i1 %162, i1* %OF, !mcsema_real_eip !22
  %163 = trunc i32 %148 to i8, !mcsema_real_eip !22
  %164 = call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !22
  %165 = trunc i8 %164 to i1, !mcsema_real_eip !22
  %166 = xor i1 %165, true, !mcsema_real_eip !22
  store i1 %166, i1* %PF, !mcsema_real_eip !22
  %167 = icmp ult i32 %148, %EAX_val.24, !mcsema_real_eip !22
  store i1 %167, i1* %CF, !mcsema_real_eip !22
  %168 = zext i32 %148 to i64, !mcsema_real_eip !22
  store i64 %168, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.25 = load i64, i64* %XBP, !mcsema_real_eip !23
  %169 = add i64 %RBP_val.25, -8, !mcsema_real_eip !23
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !23
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !23
  %171 = ptrtoint i64* %170 to i64, !mcsema_real_eip !23
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.27, i32* %172, !mcsema_real_eip !23
  br label %block_0x20, !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x20
  %173 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !25
  %174 = ptrtoint [95 x i8]* %173 to i64, !mcsema_real_eip !25
  %175 = add i64 %174, 3, !mcsema_real_eip !25
  store i64 %175, i64* %XDI, !mcsema_real_eip !25
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !26
  store i8 0, i8* %AL.28, !mcsema_real_eip !26
  %RDI_val.29 = load i64, i64* %XDI, !mcsema_real_eip !27
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !27
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %176 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !27
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !27
  store i64 -2415393069852865332, i64* %177, !mcsema_real_eip !27
  store i64 %176, i64* %XSP, !mcsema_real_eip !27
  %178 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.29, i64 %RSI_val.30), !mcsema_real_eip !27
  store i64 %178, i64* %XAX, !mcsema_real_eip !27
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !28
  %179 = add i64 %RBP_val.32, -16, !mcsema_real_eip !28
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !28
  %EAX.33 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.34 = load i32, i32* %EAX.33, !mcsema_real_eip !28
  %181 = ptrtoint i64* %180 to i64, !mcsema_real_eip !28
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.34, i32* %182, !mcsema_real_eip !28
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !29
  %183 = add i64 %RBP_val.35, -4, !mcsema_real_eip !29
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !29
  %185 = ptrtoint i64* %184 to i64, !mcsema_real_eip !29
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !29
  %187 = load i32, i32* %186, !mcsema_real_eip !29
  %188 = zext i32 %187 to i64, !mcsema_real_eip !29
  store i64 %188, i64* %XAX, !mcsema_real_eip !29
  %EAX.36 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.37 = load i32, i32* %EAX.36, !mcsema_real_eip !30
  %189 = add i32 1, %EAX_val.37, !mcsema_real_eip !30
  %190 = xor i32 %189, %EAX_val.37, !mcsema_real_eip !30
  %191 = xor i32 %190, 1, !mcsema_real_eip !30
  %192 = and i32 %191, 16, !mcsema_real_eip !30
  %193 = icmp ne i32 %192, 0, !mcsema_real_eip !30
  store i1 %193, i1* %AF, !mcsema_real_eip !30
  %194 = lshr i32 %189, 31, !mcsema_real_eip !30
  %195 = trunc i32 %194 to i1, !mcsema_real_eip !30
  store i1 %195, i1* %SF, !mcsema_real_eip !30
  %196 = icmp eq i32 %189, 0, !mcsema_real_eip !30
  store i1 %196, i1* %ZF, !mcsema_real_eip !30
  %197 = xor i32 %EAX_val.37, 1, !mcsema_real_eip !30
  %198 = xor i32 %197, -1, !mcsema_real_eip !30
  %199 = xor i32 %EAX_val.37, %189, !mcsema_real_eip !30
  %200 = and i32 %198, %199, !mcsema_real_eip !30
  %201 = lshr i32 %200, 31, !mcsema_real_eip !30
  %202 = and i32 %201, 1, !mcsema_real_eip !30
  %203 = trunc i32 %202 to i1, !mcsema_real_eip !30
  store i1 %203, i1* %OF, !mcsema_real_eip !30
  %204 = trunc i32 %189 to i8, !mcsema_real_eip !30
  %205 = call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !30
  %206 = trunc i8 %205 to i1, !mcsema_real_eip !30
  %207 = xor i1 %206, true, !mcsema_real_eip !30
  store i1 %207, i1* %PF, !mcsema_real_eip !30
  %208 = icmp ult i32 %189, %EAX_val.37, !mcsema_real_eip !30
  store i1 %208, i1* %CF, !mcsema_real_eip !30
  %209 = zext i32 %189 to i64, !mcsema_real_eip !30
  store i64 %209, i64* %XAX, !mcsema_real_eip !30
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !31
  %210 = add i64 %RBP_val.38, -4, !mcsema_real_eip !31
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !31
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !31
  %212 = ptrtoint i64* %211 to i64, !mcsema_real_eip !31
  %213 = inttoptr i64 %212 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.40, i32* %213, !mcsema_real_eip !31
  br label %block_0xf, !mcsema_real_eip !32

block_0x8b:                                       ; preds = %block_0xf
  %214 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !33
  %215 = ptrtoint [95 x i8]* %214 to i64, !mcsema_real_eip !33
  %216 = add i64 %215, 3, !mcsema_real_eip !33
  store i64 %216, i64* %XDI, !mcsema_real_eip !33
  %AL.41 = bitcast i64* %XAX to i8*, !mcsema_real_eip !34
  store i8 0, i8* %AL.41, !mcsema_real_eip !34
  %RDI_val.42 = load i64, i64* %XDI, !mcsema_real_eip !35
  %RSI_val.43 = load i64, i64* %XSI, !mcsema_real_eip !35
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !35
  %217 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !35
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !35
  store i64 -2415393069852865332, i64* %218, !mcsema_real_eip !35
  store i64 %217, i64* %XSP, !mcsema_real_eip !35
  %219 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.42, i64 %RSI_val.43), !mcsema_real_eip !35
  store i64 %219, i64* %XAX, !mcsema_real_eip !35
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !36
  %220 = add i64 %RBP_val.45, -20, !mcsema_real_eip !36
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !36
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !36
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !36
  %222 = ptrtoint i64* %221 to i64, !mcsema_real_eip !36
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !36
  store i32 %EAX_val.47, i32* %223, !mcsema_real_eip !36
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !37
  %224 = add i64 32, %RSP_val.48, !mcsema_real_eip !37
  %225 = xor i64 %224, %RSP_val.48, !mcsema_real_eip !37
  %226 = xor i64 %225, 32, !mcsema_real_eip !37
  %227 = and i64 %226, 16, !mcsema_real_eip !37
  %228 = icmp ne i64 %227, 0, !mcsema_real_eip !37
  store i1 %228, i1* %AF, !mcsema_real_eip !37
  %229 = lshr i64 %224, 63, !mcsema_real_eip !37
  %230 = trunc i64 %229 to i1, !mcsema_real_eip !37
  store i1 %230, i1* %SF, !mcsema_real_eip !37
  %231 = icmp eq i64 %224, 0, !mcsema_real_eip !37
  store i1 %231, i1* %ZF, !mcsema_real_eip !37
  %232 = xor i64 %RSP_val.48, 32, !mcsema_real_eip !37
  %233 = xor i64 %232, -1, !mcsema_real_eip !37
  %234 = xor i64 %RSP_val.48, %224, !mcsema_real_eip !37
  %235 = and i64 %233, %234, !mcsema_real_eip !37
  %236 = lshr i64 %235, 63, !mcsema_real_eip !37
  %237 = and i64 %236, 1, !mcsema_real_eip !37
  %238 = trunc i64 %237 to i1, !mcsema_real_eip !37
  store i1 %238, i1* %OF, !mcsema_real_eip !37
  %239 = trunc i64 %224 to i8, !mcsema_real_eip !37
  %240 = call i8 @llvm.ctpop.i8(i8 %239), !mcsema_real_eip !37
  %241 = trunc i8 %240 to i1, !mcsema_real_eip !37
  %242 = xor i1 %241, true, !mcsema_real_eip !37
  store i1 %242, i1* %PF, !mcsema_real_eip !37
  %243 = icmp ult i64 %224, %RSP_val.48, !mcsema_real_eip !37
  store i1 %243, i1* %CF, !mcsema_real_eip !37
  store i64 %224, i64* %XSP, !mcsema_real_eip !37
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !38
  %244 = inttoptr i64 %RSP_val.49 to i64*, !mcsema_real_eip !38
  %245 = load i64, i64* %244, !mcsema_real_eip !38
  store i64 %245, i64* %XBP, !mcsema_real_eip !38
  %246 = add i64 %RSP_val.49, 8, !mcsema_real_eip !38
  store i64 %246, i64* %XSP, !mcsema_real_eip !38
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !39
  %247 = add i64 %RSP_val.50, 8, !mcsema_real_eip !39
  %248 = inttoptr i64 %RSP_val.50 to i64*, !mcsema_real_eip !39
  %249 = load i64, i64* %248, !mcsema_real_eip !39
  store i64 %249, i64* %XIP, !mcsema_real_eip !39
  store i64 %247, i64* %XSP, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !40
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !40
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !40
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !40
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !40
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !40
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !40
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !40
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !40
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !40
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !40
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !40
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !40
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !40
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !40
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !40
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !40
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !40
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !40
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !40
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !40
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !40
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !40
  %STi = getelementptr %RegState, %RegState* %0, i32 0, i32 16, !mcsema_real_eip !40
  %FPU_FLAG_BUSY_full = getelementptr %RegState, %RegState* %0, i32 0, i32 17, !mcsema_real_eip !40
  %FPU_FLAG_BUSY = bitcast i8* %FPU_FLAG_BUSY_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_C3_full = getelementptr %RegState, %RegState* %0, i32 0, i32 18, !mcsema_real_eip !40
  %FPU_FLAG_C3 = bitcast i8* %FPU_FLAG_C3_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i32 0, i32 19, !mcsema_real_eip !40
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !40
  %FPU_FLAG_C2_full = getelementptr %RegState, %RegState* %0, i32 0, i32 20, !mcsema_real_eip !40
  %FPU_FLAG_C2 = bitcast i8* %FPU_FLAG_C2_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i32 0, i32 21, !mcsema_real_eip !40
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_C0_full = getelementptr %RegState, %RegState* %0, i32 0, i32 22, !mcsema_real_eip !40
  %FPU_FLAG_C0 = bitcast i8* %FPU_FLAG_C0_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_ES_full = getelementptr %RegState, %RegState* %0, i32 0, i32 23, !mcsema_real_eip !40
  %FPU_FLAG_ES = bitcast i8* %FPU_FLAG_ES_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 24, !mcsema_real_eip !40
  %FPU_FLAG_SF = bitcast i8* %FPU_FLAG_SF_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_PE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 25, !mcsema_real_eip !40
  %FPU_FLAG_PE = bitcast i8* %FPU_FLAG_PE_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_UE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 26, !mcsema_real_eip !40
  %FPU_FLAG_UE = bitcast i8* %FPU_FLAG_UE_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_OE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 27, !mcsema_real_eip !40
  %FPU_FLAG_OE = bitcast i8* %FPU_FLAG_OE_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_ZE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 28, !mcsema_real_eip !40
  %FPU_FLAG_ZE = bitcast i8* %FPU_FLAG_ZE_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_DE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 29, !mcsema_real_eip !40
  %FPU_FLAG_DE = bitcast i8* %FPU_FLAG_DE_full to i1*, !mcsema_real_eip !40
  %FPU_FLAG_IE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 30, !mcsema_real_eip !40
  %FPU_FLAG_IE = bitcast i8* %FPU_FLAG_IE_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_X_full = getelementptr %RegState, %RegState* %0, i32 0, i32 31, !mcsema_real_eip !40
  %FPU_CONTROL_X = bitcast i8* %FPU_CONTROL_X_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_RC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 32, !mcsema_real_eip !40
  %FPU_CONTROL_RC = bitcast i8* %FPU_CONTROL_RC_full to i2*, !mcsema_real_eip !40
  %FPU_CONTROL_PC_full = getelementptr %RegState, %RegState* %0, i32 0, i32 33, !mcsema_real_eip !40
  %FPU_CONTROL_PC = bitcast i8* %FPU_CONTROL_PC_full to i2*, !mcsema_real_eip !40
  %FPU_CONTROL_PM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 34, !mcsema_real_eip !40
  %FPU_CONTROL_PM = bitcast i8* %FPU_CONTROL_PM_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_UM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 35, !mcsema_real_eip !40
  %FPU_CONTROL_UM = bitcast i8* %FPU_CONTROL_UM_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_OM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 36, !mcsema_real_eip !40
  %FPU_CONTROL_OM = bitcast i8* %FPU_CONTROL_OM_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_ZM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 37, !mcsema_real_eip !40
  %FPU_CONTROL_ZM = bitcast i8* %FPU_CONTROL_ZM_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_DM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 38, !mcsema_real_eip !40
  %FPU_CONTROL_DM = bitcast i8* %FPU_CONTROL_DM_full to i1*, !mcsema_real_eip !40
  %FPU_CONTROL_IM_full = getelementptr %RegState, %RegState* %0, i32 0, i32 39, !mcsema_real_eip !40
  %FPU_CONTROL_IM = bitcast i8* %FPU_CONTROL_IM_full to i1*, !mcsema_real_eip !40
  %FPU_TAG = getelementptr %RegState, %RegState* %0, i32 0, i32 40, !mcsema_real_eip !40
  %FPU_LASTIP_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 41, !mcsema_real_eip !40
  %FPU_LASTIP_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 42, !mcsema_real_eip !40
  %FPU_LASTDATA_SEG = getelementptr %RegState, %RegState* %0, i32 0, i32 43, !mcsema_real_eip !40
  %FPU_LASTDATA_OFF = getelementptr %RegState, %RegState* %0, i32 0, i32 44, !mcsema_real_eip !40
  %FPU_FOPCODE_full = getelementptr %RegState, %RegState* %0, i32 0, i32 45, !mcsema_real_eip !40
  %FPU_FOPCODE = bitcast i16* %FPU_FOPCODE_full to i11*, !mcsema_real_eip !40
  %XMM0 = getelementptr %RegState, %RegState* %0, i32 0, i32 46, !mcsema_real_eip !40
  %XMM1 = getelementptr %RegState, %RegState* %0, i32 0, i32 47, !mcsema_real_eip !40
  %XMM2 = getelementptr %RegState, %RegState* %0, i32 0, i32 48, !mcsema_real_eip !40
  %XMM3 = getelementptr %RegState, %RegState* %0, i32 0, i32 49, !mcsema_real_eip !40
  %XMM4 = getelementptr %RegState, %RegState* %0, i32 0, i32 50, !mcsema_real_eip !40
  %XMM5 = getelementptr %RegState, %RegState* %0, i32 0, i32 51, !mcsema_real_eip !40
  %XMM6 = getelementptr %RegState, %RegState* %0, i32 0, i32 52, !mcsema_real_eip !40
  %XMM7 = getelementptr %RegState, %RegState* %0, i32 0, i32 53, !mcsema_real_eip !40
  %XMM8 = getelementptr %RegState, %RegState* %0, i32 0, i32 54, !mcsema_real_eip !40
  %XMM9 = getelementptr %RegState, %RegState* %0, i32 0, i32 55, !mcsema_real_eip !40
  %XMM10 = getelementptr %RegState, %RegState* %0, i32 0, i32 56, !mcsema_real_eip !40
  %XMM11 = getelementptr %RegState, %RegState* %0, i32 0, i32 57, !mcsema_real_eip !40
  %XMM12 = getelementptr %RegState, %RegState* %0, i32 0, i32 58, !mcsema_real_eip !40
  %XMM13 = getelementptr %RegState, %RegState* %0, i32 0, i32 59, !mcsema_real_eip !40
  %XMM14 = getelementptr %RegState, %RegState* %0, i32 0, i32 60, !mcsema_real_eip !40
  %XMM15 = getelementptr %RegState, %RegState* %0, i32 0, i32 61, !mcsema_real_eip !40
  %STACK_BASE = getelementptr %RegState, %RegState* %0, i32 0, i32 62, !mcsema_real_eip !40
  %STACK_LIMIT = getelementptr %RegState, %RegState* %0, i32 0, i32 63, !mcsema_real_eip !40
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !40
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !40
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !40
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !40
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !40
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !40
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !40
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !40
  br label %block_0xb0, !mcsema_real_eip !40

block_0xb0:                                       ; preds = %entry
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !40
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !40
  %1 = sub i64 %RSP_val.52, 8, !mcsema_real_eip !40
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !40
  store i64 %RBP_val.51, i64* %2, !mcsema_real_eip !40
  store i64 %1, i64* %XSP, !mcsema_real_eip !40
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !41
  store i64 %RSP_val.53, i64* %XBP, !mcsema_real_eip !41
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !42
  %3 = sext i8 112 to i64, !mcsema_real_eip !42
  %4 = sub i64 %RSP_val.54, %3, !mcsema_real_eip !42
  %5 = xor i64 %4, %RSP_val.54, !mcsema_real_eip !42
  %6 = xor i64 %5, %3, !mcsema_real_eip !42
  %7 = and i64 %6, 16, !mcsema_real_eip !42
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !42
  store i1 %8, i1* %AF, !mcsema_real_eip !42
  %9 = trunc i64 %4 to i8, !mcsema_real_eip !42
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !42
  %11 = trunc i8 %10 to i1, !mcsema_real_eip !42
  %12 = xor i1 %11, true, !mcsema_real_eip !42
  store i1 %12, i1* %PF, !mcsema_real_eip !42
  %13 = icmp eq i64 %4, 0, !mcsema_real_eip !42
  store i1 %13, i1* %ZF, !mcsema_real_eip !42
  %14 = lshr i64 %4, 63, !mcsema_real_eip !42
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !42
  store i1 %15, i1* %SF, !mcsema_real_eip !42
  %16 = icmp ult i64 %RSP_val.54, %3, !mcsema_real_eip !42
  store i1 %16, i1* %CF, !mcsema_real_eip !42
  %17 = xor i64 %RSP_val.54, %3, !mcsema_real_eip !42
  %18 = xor i64 %RSP_val.54, %4, !mcsema_real_eip !42
  %19 = and i64 %17, %18, !mcsema_real_eip !42
  %20 = lshr i64 %19, 63, !mcsema_real_eip !42
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !42
  store i1 %21, i1* %OF, !mcsema_real_eip !42
  store i64 %4, i64* %XSP, !mcsema_real_eip !42
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.56 = load i32, i32* %EAX.55, !mcsema_real_eip !43
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !43
  %22 = xor i32 %EAX_val.56, %EAX_val.58, !mcsema_real_eip !43
  store i1 false, i1* %CF, !mcsema_real_eip !43
  store i1 false, i1* %OF, !mcsema_real_eip !43
  %23 = lshr i32 %22, 31, !mcsema_real_eip !43
  %24 = trunc i32 %23 to i1, !mcsema_real_eip !43
  store i1 %24, i1* %SF, !mcsema_real_eip !43
  %25 = icmp eq i32 %22, 0, !mcsema_real_eip !43
  store i1 %25, i1* %ZF, !mcsema_real_eip !43
  %26 = trunc i32 %22 to i8, !mcsema_real_eip !43
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !43
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !43
  %29 = xor i1 %28, true, !mcsema_real_eip !43
  store i1 %29, i1* %PF, !mcsema_real_eip !43
  store i1 undef, i1* %AF, !mcsema_real_eip !43
  %30 = zext i32 %22 to i64, !mcsema_real_eip !43
  store i64 %30, i64* %XAX, !mcsema_real_eip !43
  %31 = zext i32 28 to i64, !mcsema_real_eip !44
  store i64 %31, i64* %XCX, !mcsema_real_eip !44
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !45
  %ECX_val.60 = load i32, i32* %ECX.59, !mcsema_real_eip !45
  %32 = zext i32 %ECX_val.60 to i64, !mcsema_real_eip !45
  store i64 %32, i64* %XDX, !mcsema_real_eip !45
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !46
  %33 = add i64 %RBP_val.61, -64, !mcsema_real_eip !46
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !46
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !46
  store i64 %35, i64* %R8, !mcsema_real_eip !46
  %36 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !47
  %37 = ptrtoint [77 x i8]* %36 to i64, !mcsema_real_eip !47
  %38 = add i64 %37, 0, !mcsema_real_eip !47
  store i64 %38, i64* %R9, !mcsema_real_eip !47
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !48
  %39 = add i64 %RBP_val.62, -4, !mcsema_real_eip !48
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !48
  %41 = ptrtoint i64* %40 to i64, !mcsema_real_eip !48
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !48
  store i32 0, i32* %42, !mcsema_real_eip !48
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !49
  %43 = add i64 %RBP_val.63, -8, !mcsema_real_eip !49
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !49
  %EDI.64 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.65 = load i32, i32* %EDI.64, !mcsema_real_eip !49
  %45 = ptrtoint i64* %44 to i64, !mcsema_real_eip !49
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !49
  store i32 %EDI_val.65, i32* %46, !mcsema_real_eip !49
  %RBP_val.66 = load i64, i64* %XBP, !mcsema_real_eip !50
  %47 = add i64 %RBP_val.66, -16, !mcsema_real_eip !50
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !50
  %RSI_val.67 = load i64, i64* %XSI, !mcsema_real_eip !50
  store i64 %RSI_val.67, i64* %48, !mcsema_real_eip !50
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !51
  %49 = add i64 %RBP_val.68, -36, !mcsema_real_eip !51
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !51
  %51 = ptrtoint i64* %50 to i64, !mcsema_real_eip !51
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !51
  store i32 0, i32* %52, !mcsema_real_eip !51
  %RBP_val.69 = load i64, i64* %XBP, !mcsema_real_eip !52
  %53 = add i64 %RBP_val.69, -20, !mcsema_real_eip !52
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !52
  %55 = ptrtoint i64* %54 to i64, !mcsema_real_eip !52
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !52
  store i32 1, i32* %56, !mcsema_real_eip !52
  %RBP_val.70 = load i64, i64* %XBP, !mcsema_real_eip !53
  %57 = add i64 %RBP_val.70, -24, !mcsema_real_eip !53
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !53
  %59 = ptrtoint i64* %58 to i64, !mcsema_real_eip !53
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !53
  store i32 1, i32* %60, !mcsema_real_eip !53
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !54
  %61 = add i64 %RBP_val.71, -24, !mcsema_real_eip !54
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !54
  %63 = ptrtoint i64* %62 to i64, !mcsema_real_eip !54
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !54
  %65 = load i32, i32* %64, !mcsema_real_eip !54
  %66 = sext i32 %65 to i64, !mcsema_real_eip !54
  store i64 %66, i64* %XSI, !mcsema_real_eip !54
  %RSI_val.72 = load i64, i64* %XSI, !mcsema_real_eip !55
  %67 = sext i64 %RSI_val.72 to i128, !mcsema_real_eip !55
  %68 = sext i64 11 to i128, !mcsema_real_eip !55
  %69 = mul i128 %67, %68, !mcsema_real_eip !55
  %70 = trunc i128 %69 to i64, !mcsema_real_eip !55
  %71 = sext i64 %70 to i128, !mcsema_real_eip !55
  %72 = icmp ne i128 %71, %69, !mcsema_real_eip !55
  %73 = icmp slt i64 %70, 0, !mcsema_real_eip !55
  store i1 %73, i1* %SF, !mcsema_real_eip !55
  store i1 %72, i1* %OF, !mcsema_real_eip !55
  store i1 %72, i1* %CF, !mcsema_real_eip !55
  store i64 %70, i64* %XSI, !mcsema_real_eip !55
  %R9_val.73 = load i64, i64* %R9, !mcsema_real_eip !56
  %RSI_val.74 = load i64, i64* %XSI, !mcsema_real_eip !56
  %74 = add i64 %RSI_val.74, %R9_val.73, !mcsema_real_eip !56
  %75 = xor i64 %74, %R9_val.73, !mcsema_real_eip !56
  %76 = xor i64 %75, %RSI_val.74, !mcsema_real_eip !56
  %77 = and i64 %76, 16, !mcsema_real_eip !56
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !56
  store i1 %78, i1* %AF, !mcsema_real_eip !56
  %79 = lshr i64 %74, 63, !mcsema_real_eip !56
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !56
  store i1 %80, i1* %SF, !mcsema_real_eip !56
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !56
  store i1 %81, i1* %ZF, !mcsema_real_eip !56
  %82 = xor i64 %R9_val.73, %RSI_val.74, !mcsema_real_eip !56
  %83 = xor i64 %82, -1, !mcsema_real_eip !56
  %84 = xor i64 %R9_val.73, %74, !mcsema_real_eip !56
  %85 = and i64 %83, %84, !mcsema_real_eip !56
  %86 = lshr i64 %85, 63, !mcsema_real_eip !56
  %87 = and i64 %86, 1, !mcsema_real_eip !56
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !56
  store i1 %88, i1* %OF, !mcsema_real_eip !56
  %89 = trunc i64 %74 to i8, !mcsema_real_eip !56
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !56
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !56
  %92 = xor i1 %91, true, !mcsema_real_eip !56
  store i1 %92, i1* %PF, !mcsema_real_eip !56
  %93 = icmp ult i64 %74, %R9_val.73, !mcsema_real_eip !56
  store i1 %93, i1* %CF, !mcsema_real_eip !56
  store i64 %74, i64* %R9, !mcsema_real_eip !56
  %RBP_val.75 = load i64, i64* %XBP, !mcsema_real_eip !57
  %94 = add i64 %RBP_val.75, -20, !mcsema_real_eip !57
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !57
  %96 = ptrtoint i64* %95 to i64, !mcsema_real_eip !57
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !57
  %98 = load i32, i32* %97, !mcsema_real_eip !57
  %99 = sext i32 %98 to i64, !mcsema_real_eip !57
  store i64 %99, i64* %XSI, !mcsema_real_eip !57
  %R9_val.76 = load i64, i64* %R9, !mcsema_real_eip !58
  %100 = add i64 %R9_val.76, 0, !mcsema_real_eip !58
  %RSI_val.77 = load i64, i64* %XSI, !mcsema_real_eip !58
  %101 = add i64 %100, %RSI_val.77, !mcsema_real_eip !58
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !58
  %103 = ptrtoint i64* %102 to i64, !mcsema_real_eip !58
  %104 = inttoptr i64 %103 to i8*, !mcsema_real_eip !58
  store i8 88, i8* %104, !mcsema_real_eip !58
  %EAX.78 = bitcast i64* %XAX to i32*, !mcsema_real_eip !59
  %EAX_val.79 = load i32, i32* %EAX.78, !mcsema_real_eip !59
  %105 = zext i32 %EAX_val.79 to i64, !mcsema_real_eip !59
  store i64 %105, i64* %XDI, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !60
  store i64 %R8_val.80, i64* %XSI, !mcsema_real_eip !60
  %RDI_val.81 = load i64, i64* %XDI, !mcsema_real_eip !61
  %RSI_val.82 = load i64, i64* %XSI, !mcsema_real_eip !61
  %RDX_val.83 = load i64, i64* %XDX, !mcsema_real_eip !61
  %RSP_val.84 = load i64, i64* %XSP, !mcsema_real_eip !61
  %106 = sub i64 %RSP_val.84, 8, !mcsema_real_eip !61
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !61
  store i64 -2415393069852865332, i64* %107, !mcsema_real_eip !61
  store i64 %106, i64* %XSP, !mcsema_real_eip !61
  %108 = call x86_64_sysvcc i64 @_read(i64 %RDI_val.81, i64 %RSI_val.82, i64 %RDX_val.83), !mcsema_real_eip !61
  store i64 %108, i64* %XAX, !mcsema_real_eip !61
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !62
  %109 = add i64 %RBP_val.85, -72, !mcsema_real_eip !62
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !62
  %RAX_val.86 = load i64, i64* %XAX, !mcsema_real_eip !62
  store i64 %RAX_val.86, i64* %110, !mcsema_real_eip !62
  br label %block_0x114, !mcsema_real_eip !63

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !63
  %111 = add i64 %RBP_val.87, -36, !mcsema_real_eip !63
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !63
  %113 = ptrtoint i64* %112 to i64, !mcsema_real_eip !63
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !63
  %115 = load i32, i32* %114, !mcsema_real_eip !63
  %116 = sub i32 %115, 28, !mcsema_real_eip !63
  %117 = xor i32 %116, %115, !mcsema_real_eip !63
  %118 = xor i32 %117, 28, !mcsema_real_eip !63
  %119 = and i32 %118, 16, !mcsema_real_eip !63
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !63
  store i1 %120, i1* %AF, !mcsema_real_eip !63
  %121 = trunc i32 %116 to i8, !mcsema_real_eip !63
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !63
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !63
  %124 = xor i1 %123, true, !mcsema_real_eip !63
  store i1 %124, i1* %PF, !mcsema_real_eip !63
  %125 = icmp eq i32 %116, 0, !mcsema_real_eip !63
  store i1 %125, i1* %ZF, !mcsema_real_eip !63
  %126 = lshr i32 %116, 31, !mcsema_real_eip !63
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !63
  store i1 %127, i1* %SF, !mcsema_real_eip !63
  %128 = icmp ult i32 %115, 28, !mcsema_real_eip !63
  store i1 %128, i1* %CF, !mcsema_real_eip !63
  %129 = xor i32 %115, 28, !mcsema_real_eip !63
  %130 = xor i32 %115, %116, !mcsema_real_eip !63
  %131 = and i32 %129, %130, !mcsema_real_eip !63
  %132 = lshr i32 %131, 31, !mcsema_real_eip !63
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !63
  store i1 %133, i1* %OF, !mcsema_real_eip !63
  %134 = load i1, i1* %OF, !mcsema_real_eip !64
  %135 = load i1, i1* %SF, !mcsema_real_eip !64
  %136 = icmp eq i1 %135, %134, !mcsema_real_eip !64
  br i1 %136, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !64

block_0x11e:                                      ; preds = %block_0x114
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !65
  %137 = add i64 %RBP_val.88, -20, !mcsema_real_eip !65
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !65
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !65
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !65
  %141 = load i32, i32* %140, !mcsema_real_eip !65
  %142 = zext i32 %141 to i64, !mcsema_real_eip !65
  store i64 %142, i64* %XAX, !mcsema_real_eip !65
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !66
  %143 = add i64 %RBP_val.89, -28, !mcsema_real_eip !66
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !66
  %EAX.90 = bitcast i64* %XAX to i32*, !mcsema_real_eip !66
  %EAX_val.91 = load i32, i32* %EAX.90, !mcsema_real_eip !66
  %145 = ptrtoint i64* %144 to i64, !mcsema_real_eip !66
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !66
  store i32 %EAX_val.91, i32* %146, !mcsema_real_eip !66
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !67
  %147 = add i64 %RBP_val.92, -24, !mcsema_real_eip !67
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !67
  %149 = ptrtoint i64* %148 to i64, !mcsema_real_eip !67
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !67
  %151 = load i32, i32* %150, !mcsema_real_eip !67
  %152 = zext i32 %151 to i64, !mcsema_real_eip !67
  store i64 %152, i64* %XAX, !mcsema_real_eip !67
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !68
  %153 = add i64 %RBP_val.93, -32, !mcsema_real_eip !68
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !68
  %EAX.94 = bitcast i64* %XAX to i32*, !mcsema_real_eip !68
  %EAX_val.95 = load i32, i32* %EAX.94, !mcsema_real_eip !68
  %155 = ptrtoint i64* %154 to i64, !mcsema_real_eip !68
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.95, i32* %156, !mcsema_real_eip !68
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !69
  %157 = add i64 %RBP_val.96, -36, !mcsema_real_eip !69
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !69
  %159 = ptrtoint i64* %158 to i64, !mcsema_real_eip !69
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !69
  %161 = load i32, i32* %160, !mcsema_real_eip !69
  %162 = sext i32 %161 to i64, !mcsema_real_eip !69
  store i64 %162, i64* %XCX, !mcsema_real_eip !69
  %RBP_val.97 = load i64, i64* %XBP, !mcsema_real_eip !70
  %163 = add i64 %RBP_val.97, -64, !mcsema_real_eip !70
  %RCX_val.98 = load i64, i64* %XCX, !mcsema_real_eip !70
  %164 = add i64 %163, %RCX_val.98, !mcsema_real_eip !70
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !70
  %166 = ptrtoint i64* %165 to i64, !mcsema_real_eip !70
  %167 = inttoptr i64 %166 to i8*, !mcsema_real_eip !70
  %168 = load i8, i8* %167, !mcsema_real_eip !70
  %169 = sext i8 %168 to i32, !mcsema_real_eip !70
  %170 = zext i32 %169 to i64, !mcsema_real_eip !70
  store i64 %170, i64* %XAX, !mcsema_real_eip !70
  %EAX.99 = bitcast i64* %XAX to i32*, !mcsema_real_eip !71
  %EAX_val.100 = load i32, i32* %EAX.99, !mcsema_real_eip !71
  %171 = add i32 -97, %EAX_val.100, !mcsema_real_eip !71
  %172 = xor i32 %171, %EAX_val.100, !mcsema_real_eip !71
  %173 = xor i32 %172, -97, !mcsema_real_eip !71
  %174 = and i32 %173, 16, !mcsema_real_eip !71
  %175 = icmp ne i32 %174, 0, !mcsema_real_eip !71
  store i1 %175, i1* %AF, !mcsema_real_eip !71
  %176 = lshr i32 %171, 31, !mcsema_real_eip !71
  %177 = trunc i32 %176 to i1, !mcsema_real_eip !71
  store i1 %177, i1* %SF, !mcsema_real_eip !71
  %178 = icmp eq i32 %171, 0, !mcsema_real_eip !71
  store i1 %178, i1* %ZF, !mcsema_real_eip !71
  %179 = xor i32 %EAX_val.100, -97, !mcsema_real_eip !71
  %180 = xor i32 %179, -1, !mcsema_real_eip !71
  %181 = xor i32 %EAX_val.100, %171, !mcsema_real_eip !71
  %182 = and i32 %180, %181, !mcsema_real_eip !71
  %183 = lshr i32 %182, 31, !mcsema_real_eip !71
  %184 = and i32 %183, 1, !mcsema_real_eip !71
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !71
  store i1 %185, i1* %OF, !mcsema_real_eip !71
  %186 = trunc i32 %171 to i8, !mcsema_real_eip !71
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !71
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !71
  %189 = xor i1 %188, true, !mcsema_real_eip !71
  store i1 %189, i1* %PF, !mcsema_real_eip !71
  %190 = icmp ult i32 %171, %EAX_val.100, !mcsema_real_eip !71
  store i1 %190, i1* %CF, !mcsema_real_eip !71
  %191 = zext i32 %171 to i64, !mcsema_real_eip !71
  store i64 %191, i64* %XAX, !mcsema_real_eip !71
  %EAX.101 = bitcast i64* %XAX to i32*, !mcsema_real_eip !72
  %EAX_val.102 = load i32, i32* %EAX.101, !mcsema_real_eip !72
  %192 = zext i32 %EAX_val.102 to i64, !mcsema_real_eip !72
  store i64 %192, i64* %XCX, !mcsema_real_eip !72
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !73
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !73
  %193 = sub i32 %EAX_val.104, 22, !mcsema_real_eip !73
  %194 = xor i32 %193, %EAX_val.104, !mcsema_real_eip !73
  %195 = xor i32 %194, 22, !mcsema_real_eip !73
  %196 = and i32 %195, 16, !mcsema_real_eip !73
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !73
  store i1 %197, i1* %AF, !mcsema_real_eip !73
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !73
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !73
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !73
  %201 = xor i1 %200, true, !mcsema_real_eip !73
  store i1 %201, i1* %PF, !mcsema_real_eip !73
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !73
  store i1 %202, i1* %ZF, !mcsema_real_eip !73
  %203 = lshr i32 %193, 31, !mcsema_real_eip !73
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !73
  store i1 %204, i1* %SF, !mcsema_real_eip !73
  %205 = icmp ult i32 %EAX_val.104, 22, !mcsema_real_eip !73
  store i1 %205, i1* %CF, !mcsema_real_eip !73
  %206 = xor i32 %EAX_val.104, 22, !mcsema_real_eip !73
  %207 = xor i32 %EAX_val.104, %193, !mcsema_real_eip !73
  %208 = and i32 %206, %207, !mcsema_real_eip !73
  %209 = lshr i32 %208, 31, !mcsema_real_eip !73
  %210 = trunc i32 %209 to i1, !mcsema_real_eip !73
  store i1 %210, i1* %OF, !mcsema_real_eip !73
  %211 = zext i32 %193 to i64, !mcsema_real_eip !73
  store i64 %211, i64* %XAX, !mcsema_real_eip !73
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !74
  %212 = add i64 %RBP_val.105, -80, !mcsema_real_eip !74
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !74
  %RCX_val.106 = load i64, i64* %XCX, !mcsema_real_eip !74
  store i64 %RCX_val.106, i64* %213, !mcsema_real_eip !74
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !75
  %214 = add i64 %RBP_val.107, -84, !mcsema_real_eip !75
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !75
  %EAX.108 = bitcast i64* %XAX to i32*, !mcsema_real_eip !75
  %EAX_val.109 = load i32, i32* %EAX.108, !mcsema_real_eip !75
  %216 = ptrtoint i64* %215 to i64, !mcsema_real_eip !75
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !75
  store i32 %EAX_val.109, i32* %217, !mcsema_real_eip !75
  %218 = load i1, i1* %ZF, !mcsema_real_eip !76
  %219 = icmp eq i1 %218, false, !mcsema_real_eip !76
  %220 = load i1, i1* %CF, !mcsema_real_eip !76
  %221 = icmp eq i1 %220, false, !mcsema_real_eip !76
  %222 = and i1 %221, %219, !mcsema_real_eip !76
  br i1 %222, label %block_0x18e, label %block_0x148, !mcsema_real_eip !76

block_0x148:                                      ; preds = %block_0x11e
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !77
  %223 = add i64 %RBP_val.110, -80, !mcsema_real_eip !77
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !77
  %225 = load i64, i64* %224, !mcsema_real_eip !77
  store i64 %225, i64* %XAX, !mcsema_real_eip !77
  %226 = getelementptr %0, %0* @data_0x320, i64 0, i32 0, !mcsema_real_eip !78
  %227 = ptrtoint [184 x i8]* %226 to i64, !mcsema_real_eip !78
  %228 = add i64 %227, 0, !mcsema_real_eip !78
  %229 = add i64 0, %228, !mcsema_real_eip !78
  %RAX_val.111 = load i64, i64* %XAX, !mcsema_real_eip !78
  %230 = mul i64 %RAX_val.111, 8, !mcsema_real_eip !78
  %231 = add i64 %229, %230, !mcsema_real_eip !78
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !78
  %233 = load i64, i64* %232, !mcsema_real_eip !78
  store i64 %233, i64* %XCX, !mcsema_real_eip !78
  %RCX_val.112 = load i64, i64* %XCX, !mcsema_real_eip !79
  switch i64 %RCX_val.112, label %931 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !79

block_0x156:                                      ; preds = %block_0x148
  %RBP_val.113 = load i64, i64* %XBP, !mcsema_real_eip !80
  %234 = add i64 %RBP_val.113, -24, !mcsema_real_eip !80
  %235 = inttoptr i64 %234 to i64*, !mcsema_real_eip !80
  %236 = ptrtoint i64* %235 to i64, !mcsema_real_eip !80
  %237 = inttoptr i64 %236 to i32*, !mcsema_real_eip !80
  %238 = load i32, i32* %237, !mcsema_real_eip !80
  %239 = zext i32 %238 to i64, !mcsema_real_eip !80
  store i64 %239, i64* %XAX, !mcsema_real_eip !80
  %EAX.114 = bitcast i64* %XAX to i32*, !mcsema_real_eip !81
  %EAX_val.115 = load i32, i32* %EAX.114, !mcsema_real_eip !81
  %240 = add i32 -1, %EAX_val.115, !mcsema_real_eip !81
  %241 = xor i32 %240, %EAX_val.115, !mcsema_real_eip !81
  %242 = xor i32 %241, -1, !mcsema_real_eip !81
  %243 = and i32 %242, 16, !mcsema_real_eip !81
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !81
  store i1 %244, i1* %AF, !mcsema_real_eip !81
  %245 = lshr i32 %240, 31, !mcsema_real_eip !81
  %246 = trunc i32 %245 to i1, !mcsema_real_eip !81
  store i1 %246, i1* %SF, !mcsema_real_eip !81
  %247 = icmp eq i32 %240, 0, !mcsema_real_eip !81
  store i1 %247, i1* %ZF, !mcsema_real_eip !81
  %248 = xor i32 %EAX_val.115, -1, !mcsema_real_eip !81
  %249 = xor i32 %248, -1, !mcsema_real_eip !81
  %250 = xor i32 %EAX_val.115, %240, !mcsema_real_eip !81
  %251 = and i32 %249, %250, !mcsema_real_eip !81
  %252 = lshr i32 %251, 31, !mcsema_real_eip !81
  %253 = and i32 %252, 1, !mcsema_real_eip !81
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !81
  store i1 %254, i1* %OF, !mcsema_real_eip !81
  %255 = trunc i32 %240 to i8, !mcsema_real_eip !81
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !81
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !81
  %258 = xor i1 %257, true, !mcsema_real_eip !81
  store i1 %258, i1* %PF, !mcsema_real_eip !81
  %259 = icmp ult i32 %240, %EAX_val.115, !mcsema_real_eip !81
  store i1 %259, i1* %CF, !mcsema_real_eip !81
  %260 = zext i32 %240 to i64, !mcsema_real_eip !81
  store i64 %260, i64* %XAX, !mcsema_real_eip !81
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !82
  %261 = add i64 %RBP_val.116, -24, !mcsema_real_eip !82
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !82
  %EAX.117 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.118 = load i32, i32* %EAX.117, !mcsema_real_eip !82
  %263 = ptrtoint i64* %262 to i64, !mcsema_real_eip !82
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !82
  store i32 %EAX_val.118, i32* %264, !mcsema_real_eip !82
  br label %block_0x1c0, !mcsema_real_eip !83

block_0x164:                                      ; preds = %block_0x148
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !84
  %265 = add i64 %RBP_val.119, -24, !mcsema_real_eip !84
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !84
  %267 = ptrtoint i64* %266 to i64, !mcsema_real_eip !84
  %268 = inttoptr i64 %267 to i32*, !mcsema_real_eip !84
  %269 = load i32, i32* %268, !mcsema_real_eip !84
  %270 = zext i32 %269 to i64, !mcsema_real_eip !84
  store i64 %270, i64* %XAX, !mcsema_real_eip !84
  %EAX.120 = bitcast i64* %XAX to i32*, !mcsema_real_eip !85
  %EAX_val.121 = load i32, i32* %EAX.120, !mcsema_real_eip !85
  %271 = add i32 1, %EAX_val.121, !mcsema_real_eip !85
  %272 = xor i32 %271, %EAX_val.121, !mcsema_real_eip !85
  %273 = xor i32 %272, 1, !mcsema_real_eip !85
  %274 = and i32 %273, 16, !mcsema_real_eip !85
  %275 = icmp ne i32 %274, 0, !mcsema_real_eip !85
  store i1 %275, i1* %AF, !mcsema_real_eip !85
  %276 = lshr i32 %271, 31, !mcsema_real_eip !85
  %277 = trunc i32 %276 to i1, !mcsema_real_eip !85
  store i1 %277, i1* %SF, !mcsema_real_eip !85
  %278 = icmp eq i32 %271, 0, !mcsema_real_eip !85
  store i1 %278, i1* %ZF, !mcsema_real_eip !85
  %279 = xor i32 %EAX_val.121, 1, !mcsema_real_eip !85
  %280 = xor i32 %279, -1, !mcsema_real_eip !85
  %281 = xor i32 %EAX_val.121, %271, !mcsema_real_eip !85
  %282 = and i32 %280, %281, !mcsema_real_eip !85
  %283 = lshr i32 %282, 31, !mcsema_real_eip !85
  %284 = and i32 %283, 1, !mcsema_real_eip !85
  %285 = trunc i32 %284 to i1, !mcsema_real_eip !85
  store i1 %285, i1* %OF, !mcsema_real_eip !85
  %286 = trunc i32 %271 to i8, !mcsema_real_eip !85
  %287 = call i8 @llvm.ctpop.i8(i8 %286), !mcsema_real_eip !85
  %288 = trunc i8 %287 to i1, !mcsema_real_eip !85
  %289 = xor i1 %288, true, !mcsema_real_eip !85
  store i1 %289, i1* %PF, !mcsema_real_eip !85
  %290 = icmp ult i32 %271, %EAX_val.121, !mcsema_real_eip !85
  store i1 %290, i1* %CF, !mcsema_real_eip !85
  %291 = zext i32 %271 to i64, !mcsema_real_eip !85
  store i64 %291, i64* %XAX, !mcsema_real_eip !85
  %RBP_val.122 = load i64, i64* %XBP, !mcsema_real_eip !86
  %292 = add i64 %RBP_val.122, -24, !mcsema_real_eip !86
  %293 = inttoptr i64 %292 to i64*, !mcsema_real_eip !86
  %EAX.123 = bitcast i64* %XAX to i32*, !mcsema_real_eip !86
  %EAX_val.124 = load i32, i32* %EAX.123, !mcsema_real_eip !86
  %294 = ptrtoint i64* %293 to i64, !mcsema_real_eip !86
  %295 = inttoptr i64 %294 to i32*, !mcsema_real_eip !86
  store i32 %EAX_val.124, i32* %295, !mcsema_real_eip !86
  br label %block_0x1c0, !mcsema_real_eip !87

block_0x172:                                      ; preds = %block_0x148
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !88
  %296 = add i64 %RBP_val.125, -20, !mcsema_real_eip !88
  %297 = inttoptr i64 %296 to i64*, !mcsema_real_eip !88
  %298 = ptrtoint i64* %297 to i64, !mcsema_real_eip !88
  %299 = inttoptr i64 %298 to i32*, !mcsema_real_eip !88
  %300 = load i32, i32* %299, !mcsema_real_eip !88
  %301 = zext i32 %300 to i64, !mcsema_real_eip !88
  store i64 %301, i64* %XAX, !mcsema_real_eip !88
  %EAX.126 = bitcast i64* %XAX to i32*, !mcsema_real_eip !89
  %EAX_val.127 = load i32, i32* %EAX.126, !mcsema_real_eip !89
  %302 = add i32 -1, %EAX_val.127, !mcsema_real_eip !89
  %303 = xor i32 %302, %EAX_val.127, !mcsema_real_eip !89
  %304 = xor i32 %303, -1, !mcsema_real_eip !89
  %305 = and i32 %304, 16, !mcsema_real_eip !89
  %306 = icmp ne i32 %305, 0, !mcsema_real_eip !89
  store i1 %306, i1* %AF, !mcsema_real_eip !89
  %307 = lshr i32 %302, 31, !mcsema_real_eip !89
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !89
  store i1 %308, i1* %SF, !mcsema_real_eip !89
  %309 = icmp eq i32 %302, 0, !mcsema_real_eip !89
  store i1 %309, i1* %ZF, !mcsema_real_eip !89
  %310 = xor i32 %EAX_val.127, -1, !mcsema_real_eip !89
  %311 = xor i32 %310, -1, !mcsema_real_eip !89
  %312 = xor i32 %EAX_val.127, %302, !mcsema_real_eip !89
  %313 = and i32 %311, %312, !mcsema_real_eip !89
  %314 = lshr i32 %313, 31, !mcsema_real_eip !89
  %315 = and i32 %314, 1, !mcsema_real_eip !89
  %316 = trunc i32 %315 to i1, !mcsema_real_eip !89
  store i1 %316, i1* %OF, !mcsema_real_eip !89
  %317 = trunc i32 %302 to i8, !mcsema_real_eip !89
  %318 = call i8 @llvm.ctpop.i8(i8 %317), !mcsema_real_eip !89
  %319 = trunc i8 %318 to i1, !mcsema_real_eip !89
  %320 = xor i1 %319, true, !mcsema_real_eip !89
  store i1 %320, i1* %PF, !mcsema_real_eip !89
  %321 = icmp ult i32 %302, %EAX_val.127, !mcsema_real_eip !89
  store i1 %321, i1* %CF, !mcsema_real_eip !89
  %322 = zext i32 %302 to i64, !mcsema_real_eip !89
  store i64 %322, i64* %XAX, !mcsema_real_eip !89
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !90
  %323 = add i64 %RBP_val.128, -20, !mcsema_real_eip !90
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !90
  %EAX.129 = bitcast i64* %XAX to i32*, !mcsema_real_eip !90
  %EAX_val.130 = load i32, i32* %EAX.129, !mcsema_real_eip !90
  %325 = ptrtoint i64* %324 to i64, !mcsema_real_eip !90
  %326 = inttoptr i64 %325 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.130, i32* %326, !mcsema_real_eip !90
  br label %block_0x1c0, !mcsema_real_eip !91

block_0x180:                                      ; preds = %block_0x148
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !92
  %327 = add i64 %RBP_val.131, -20, !mcsema_real_eip !92
  %328 = inttoptr i64 %327 to i64*, !mcsema_real_eip !92
  %329 = ptrtoint i64* %328 to i64, !mcsema_real_eip !92
  %330 = inttoptr i64 %329 to i32*, !mcsema_real_eip !92
  %331 = load i32, i32* %330, !mcsema_real_eip !92
  %332 = zext i32 %331 to i64, !mcsema_real_eip !92
  store i64 %332, i64* %XAX, !mcsema_real_eip !92
  %EAX.132 = bitcast i64* %XAX to i32*, !mcsema_real_eip !93
  %EAX_val.133 = load i32, i32* %EAX.132, !mcsema_real_eip !93
  %333 = add i32 1, %EAX_val.133, !mcsema_real_eip !93
  %334 = xor i32 %333, %EAX_val.133, !mcsema_real_eip !93
  %335 = xor i32 %334, 1, !mcsema_real_eip !93
  %336 = and i32 %335, 16, !mcsema_real_eip !93
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !93
  store i1 %337, i1* %AF, !mcsema_real_eip !93
  %338 = lshr i32 %333, 31, !mcsema_real_eip !93
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !93
  store i1 %339, i1* %SF, !mcsema_real_eip !93
  %340 = icmp eq i32 %333, 0, !mcsema_real_eip !93
  store i1 %340, i1* %ZF, !mcsema_real_eip !93
  %341 = xor i32 %EAX_val.133, 1, !mcsema_real_eip !93
  %342 = xor i32 %341, -1, !mcsema_real_eip !93
  %343 = xor i32 %EAX_val.133, %333, !mcsema_real_eip !93
  %344 = and i32 %342, %343, !mcsema_real_eip !93
  %345 = lshr i32 %344, 31, !mcsema_real_eip !93
  %346 = and i32 %345, 1, !mcsema_real_eip !93
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !93
  store i1 %347, i1* %OF, !mcsema_real_eip !93
  %348 = trunc i32 %333 to i8, !mcsema_real_eip !93
  %349 = call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !93
  %350 = trunc i8 %349 to i1, !mcsema_real_eip !93
  %351 = xor i1 %350, true, !mcsema_real_eip !93
  store i1 %351, i1* %PF, !mcsema_real_eip !93
  %352 = icmp ult i32 %333, %EAX_val.133, !mcsema_real_eip !93
  store i1 %352, i1* %CF, !mcsema_real_eip !93
  %353 = zext i32 %333 to i64, !mcsema_real_eip !93
  store i64 %353, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !94
  %354 = add i64 %RBP_val.134, -20, !mcsema_real_eip !94
  %355 = inttoptr i64 %354 to i64*, !mcsema_real_eip !94
  %EAX.135 = bitcast i64* %XAX to i32*, !mcsema_real_eip !94
  %EAX_val.136 = load i32, i32* %EAX.135, !mcsema_real_eip !94
  %356 = ptrtoint i64* %355 to i64, !mcsema_real_eip !94
  %357 = inttoptr i64 %356 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.136, i32* %357, !mcsema_real_eip !94
  br label %block_0x1c0, !mcsema_real_eip !95

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  %358 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !96
  %359 = ptrtoint [95 x i8]* %358 to i64, !mcsema_real_eip !96
  %360 = add i64 %359, 5, !mcsema_real_eip !96
  store i64 %360, i64* %XDI, !mcsema_real_eip !96
  %AL.137 = bitcast i64* %XAX to i8*, !mcsema_real_eip !97
  store i8 0, i8* %AL.137, !mcsema_real_eip !97
  %RDI_val.138 = load i64, i64* %XDI, !mcsema_real_eip !98
  %RSI_val.139 = load i64, i64* %XSI, !mcsema_real_eip !98
  %RSP_val.140 = load i64, i64* %XSP, !mcsema_real_eip !98
  %361 = sub i64 %RSP_val.140, 8, !mcsema_real_eip !98
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !98
  store i64 -2415393069852865332, i64* %362, !mcsema_real_eip !98
  store i64 %361, i64* %XSP, !mcsema_real_eip !98
  %363 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.138, i64 %RSI_val.139), !mcsema_real_eip !98
  store i64 %363, i64* %XAX, !mcsema_real_eip !98
  %364 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !99
  %365 = ptrtoint [95 x i8]* %364 to i64, !mcsema_real_eip !99
  %366 = add i64 %365, 45, !mcsema_real_eip !99
  store i64 %366, i64* %XDI, !mcsema_real_eip !99
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !100
  %367 = add i64 %RBP_val.141, -88, !mcsema_real_eip !100
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !100
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !100
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !100
  %369 = ptrtoint i64* %368 to i64, !mcsema_real_eip !100
  %370 = inttoptr i64 %369 to i32*, !mcsema_real_eip !100
  store i32 %EAX_val.143, i32* %370, !mcsema_real_eip !100
  %AL.144 = bitcast i64* %XAX to i8*, !mcsema_real_eip !101
  store i8 0, i8* %AL.144, !mcsema_real_eip !101
  %RDI_val.145 = load i64, i64* %XDI, !mcsema_real_eip !102
  %RSI_val.146 = load i64, i64* %XSI, !mcsema_real_eip !102
  %RSP_val.147 = load i64, i64* %XSP, !mcsema_real_eip !102
  %371 = sub i64 %RSP_val.147, 8, !mcsema_real_eip !102
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !102
  store i64 -2415393069852865332, i64* %372, !mcsema_real_eip !102
  store i64 %371, i64* %XSP, !mcsema_real_eip !102
  %373 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.145, i64 %RSI_val.146), !mcsema_real_eip !102
  store i64 %373, i64* %XAX, !mcsema_real_eip !102
  %374 = zext i32 -1 to i64, !mcsema_real_eip !103
  store i64 %374, i64* %XDI, !mcsema_real_eip !103
  %RBP_val.148 = load i64, i64* %XBP, !mcsema_real_eip !104
  %375 = add i64 %RBP_val.148, -92, !mcsema_real_eip !104
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !104
  %EAX.149 = bitcast i64* %XAX to i32*, !mcsema_real_eip !104
  %EAX_val.150 = load i32, i32* %EAX.149, !mcsema_real_eip !104
  %377 = ptrtoint i64* %376 to i64, !mcsema_real_eip !104
  %378 = inttoptr i64 %377 to i32*, !mcsema_real_eip !104
  store i32 %EAX_val.150, i32* %378, !mcsema_real_eip !104
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !105
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !105
  %379 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !105
  %380 = inttoptr i64 %379 to i64*, !mcsema_real_eip !105
  store i64 -2415393069852865332, i64* %380, !mcsema_real_eip !105
  store i64 %379, i64* %XSP, !mcsema_real_eip !105
  %381 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151), !mcsema_real_eip !105
  store i64 %381, i64* %XAX, !mcsema_real_eip !105
  br label %block_0x1c0, !mcsema_real_eip !106

block_0x1c0:                                      ; preds = %block_0x18e, %block_0x180, %block_0x172, %block_0x164, %block_0x156
  %382 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !106
  %383 = ptrtoint [77 x i8]* %382 to i64, !mcsema_real_eip !106
  %384 = add i64 %383, 0, !mcsema_real_eip !106
  store i64 %384, i64* %XAX, !mcsema_real_eip !106
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !107
  %385 = add i64 %RBP_val.153, -24, !mcsema_real_eip !107
  %386 = inttoptr i64 %385 to i64*, !mcsema_real_eip !107
  %387 = ptrtoint i64* %386 to i64, !mcsema_real_eip !107
  %388 = inttoptr i64 %387 to i32*, !mcsema_real_eip !107
  %389 = load i32, i32* %388, !mcsema_real_eip !107
  %390 = sext i32 %389 to i64, !mcsema_real_eip !107
  store i64 %390, i64* %XCX, !mcsema_real_eip !107
  %RCX_val.154 = load i64, i64* %XCX, !mcsema_real_eip !108
  %391 = sext i64 %RCX_val.154 to i128, !mcsema_real_eip !108
  %392 = sext i64 11 to i128, !mcsema_real_eip !108
  %393 = mul i128 %391, %392, !mcsema_real_eip !108
  %394 = trunc i128 %393 to i64, !mcsema_real_eip !108
  %395 = sext i64 %394 to i128, !mcsema_real_eip !108
  %396 = icmp ne i128 %395, %393, !mcsema_real_eip !108
  %397 = icmp slt i64 %394, 0, !mcsema_real_eip !108
  store i1 %397, i1* %SF, !mcsema_real_eip !108
  store i1 %396, i1* %OF, !mcsema_real_eip !108
  store i1 %396, i1* %CF, !mcsema_real_eip !108
  store i64 %394, i64* %XCX, !mcsema_real_eip !108
  %RAX_val.155 = load i64, i64* %XAX, !mcsema_real_eip !109
  %RCX_val.156 = load i64, i64* %XCX, !mcsema_real_eip !109
  %398 = add i64 %RCX_val.156, %RAX_val.155, !mcsema_real_eip !109
  %399 = xor i64 %398, %RAX_val.155, !mcsema_real_eip !109
  %400 = xor i64 %399, %RCX_val.156, !mcsema_real_eip !109
  %401 = and i64 %400, 16, !mcsema_real_eip !109
  %402 = icmp ne i64 %401, 0, !mcsema_real_eip !109
  store i1 %402, i1* %AF, !mcsema_real_eip !109
  %403 = lshr i64 %398, 63, !mcsema_real_eip !109
  %404 = trunc i64 %403 to i1, !mcsema_real_eip !109
  store i1 %404, i1* %SF, !mcsema_real_eip !109
  %405 = icmp eq i64 %398, 0, !mcsema_real_eip !109
  store i1 %405, i1* %ZF, !mcsema_real_eip !109
  %406 = xor i64 %RAX_val.155, %RCX_val.156, !mcsema_real_eip !109
  %407 = xor i64 %406, -1, !mcsema_real_eip !109
  %408 = xor i64 %RAX_val.155, %398, !mcsema_real_eip !109
  %409 = and i64 %407, %408, !mcsema_real_eip !109
  %410 = lshr i64 %409, 63, !mcsema_real_eip !109
  %411 = and i64 %410, 1, !mcsema_real_eip !109
  %412 = trunc i64 %411 to i1, !mcsema_real_eip !109
  store i1 %412, i1* %OF, !mcsema_real_eip !109
  %413 = trunc i64 %398 to i8, !mcsema_real_eip !109
  %414 = call i8 @llvm.ctpop.i8(i8 %413), !mcsema_real_eip !109
  %415 = trunc i8 %414 to i1, !mcsema_real_eip !109
  %416 = xor i1 %415, true, !mcsema_real_eip !109
  store i1 %416, i1* %PF, !mcsema_real_eip !109
  %417 = icmp ult i64 %398, %RAX_val.155, !mcsema_real_eip !109
  store i1 %417, i1* %CF, !mcsema_real_eip !109
  store i64 %398, i64* %XAX, !mcsema_real_eip !109
  %RBP_val.157 = load i64, i64* %XBP, !mcsema_real_eip !110
  %418 = add i64 %RBP_val.157, -20, !mcsema_real_eip !110
  %419 = inttoptr i64 %418 to i64*, !mcsema_real_eip !110
  %420 = ptrtoint i64* %419 to i64, !mcsema_real_eip !110
  %421 = inttoptr i64 %420 to i32*, !mcsema_real_eip !110
  %422 = load i32, i32* %421, !mcsema_real_eip !110
  %423 = sext i32 %422 to i64, !mcsema_real_eip !110
  store i64 %423, i64* %XCX, !mcsema_real_eip !110
  %RAX_val.158 = load i64, i64* %XAX, !mcsema_real_eip !111
  %424 = add i64 %RAX_val.158, 0, !mcsema_real_eip !111
  %RCX_val.159 = load i64, i64* %XCX, !mcsema_real_eip !111
  %425 = add i64 %424, %RCX_val.159, !mcsema_real_eip !111
  %426 = inttoptr i64 %425 to i64*, !mcsema_real_eip !111
  %427 = ptrtoint i64* %426 to i64, !mcsema_real_eip !111
  %428 = inttoptr i64 %427 to i8*, !mcsema_real_eip !111
  %429 = load i8, i8* %428, !mcsema_real_eip !111
  %430 = sext i8 %429 to i32, !mcsema_real_eip !111
  %431 = zext i32 %430 to i64, !mcsema_real_eip !111
  store i64 %431, i64* %XDX, !mcsema_real_eip !111
  %EDX.160 = bitcast i64* %XDX to i32*, !mcsema_real_eip !112
  %EDX_val.161 = load i32, i32* %EDX.160, !mcsema_real_eip !112
  %432 = sub i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %433 = xor i32 %432, %EDX_val.161, !mcsema_real_eip !112
  %434 = xor i32 %433, 35, !mcsema_real_eip !112
  %435 = and i32 %434, 16, !mcsema_real_eip !112
  %436 = icmp ne i32 %435, 0, !mcsema_real_eip !112
  store i1 %436, i1* %AF, !mcsema_real_eip !112
  %437 = trunc i32 %432 to i8, !mcsema_real_eip !112
  %438 = call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !112
  %439 = trunc i8 %438 to i1, !mcsema_real_eip !112
  %440 = xor i1 %439, true, !mcsema_real_eip !112
  store i1 %440, i1* %PF, !mcsema_real_eip !112
  %441 = icmp eq i32 %432, 0, !mcsema_real_eip !112
  store i1 %441, i1* %ZF, !mcsema_real_eip !112
  %442 = lshr i32 %432, 31, !mcsema_real_eip !112
  %443 = trunc i32 %442 to i1, !mcsema_real_eip !112
  store i1 %443, i1* %SF, !mcsema_real_eip !112
  %444 = icmp ult i32 %EDX_val.161, 35, !mcsema_real_eip !112
  store i1 %444, i1* %CF, !mcsema_real_eip !112
  %445 = xor i32 %EDX_val.161, 35, !mcsema_real_eip !112
  %446 = xor i32 %EDX_val.161, %432, !mcsema_real_eip !112
  %447 = and i32 %445, %446, !mcsema_real_eip !112
  %448 = lshr i32 %447, 31, !mcsema_real_eip !112
  %449 = trunc i32 %448 to i1, !mcsema_real_eip !112
  store i1 %449, i1* %OF, !mcsema_real_eip !112
  %450 = load i1, i1* %ZF, !mcsema_real_eip !113
  %451 = icmp eq i1 %450, false, !mcsema_real_eip !113
  br i1 %451, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !113

block_0x1e6:                                      ; preds = %block_0x1c0
  %452 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !114
  %453 = ptrtoint [95 x i8]* %452 to i64, !mcsema_real_eip !114
  %454 = add i64 %453, 56, !mcsema_real_eip !114
  store i64 %454, i64* %XDI, !mcsema_real_eip !114
  %AL.162 = bitcast i64* %XAX to i8*, !mcsema_real_eip !115
  store i8 0, i8* %AL.162, !mcsema_real_eip !115
  %RDI_val.163 = load i64, i64* %XDI, !mcsema_real_eip !116
  %RSI_val.164 = load i64, i64* %XSI, !mcsema_real_eip !116
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !116
  %455 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !116
  %456 = inttoptr i64 %455 to i64*, !mcsema_real_eip !116
  store i64 -2415393069852865332, i64* %456, !mcsema_real_eip !116
  store i64 %455, i64* %XSP, !mcsema_real_eip !116
  %457 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.163, i64 %RSI_val.164), !mcsema_real_eip !116
  store i64 %457, i64* %XAX, !mcsema_real_eip !116
  %458 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !117
  %459 = ptrtoint [95 x i8]* %458 to i64, !mcsema_real_eip !117
  %460 = add i64 %459, 66, !mcsema_real_eip !117
  store i64 %460, i64* %XDI, !mcsema_real_eip !117
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !118
  %461 = add i64 %RBP_val.166, -64, !mcsema_real_eip !118
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !118
  %463 = ptrtoint i64* %462 to i64, !mcsema_real_eip !118
  store i64 %463, i64* %XSI, !mcsema_real_eip !118
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !119
  %464 = add i64 %RBP_val.167, -96, !mcsema_real_eip !119
  %465 = inttoptr i64 %464 to i64*, !mcsema_real_eip !119
  %EAX.168 = bitcast i64* %XAX to i32*, !mcsema_real_eip !119
  %EAX_val.169 = load i32, i32* %EAX.168, !mcsema_real_eip !119
  %466 = ptrtoint i64* %465 to i64, !mcsema_real_eip !119
  %467 = inttoptr i64 %466 to i32*, !mcsema_real_eip !119
  store i32 %EAX_val.169, i32* %467, !mcsema_real_eip !119
  %AL.170 = bitcast i64* %XAX to i8*, !mcsema_real_eip !120
  store i8 0, i8* %AL.170, !mcsema_real_eip !120
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !121
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !121
  %RSP_val.173 = load i64, i64* %XSP, !mcsema_real_eip !121
  %468 = sub i64 %RSP_val.173, 8, !mcsema_real_eip !121
  %469 = inttoptr i64 %468 to i64*, !mcsema_real_eip !121
  store i64 -2415393069852865332, i64* %469, !mcsema_real_eip !121
  store i64 %468, i64* %XSP, !mcsema_real_eip !121
  %470 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.171, i64 %RSI_val.172), !mcsema_real_eip !121
  store i64 %470, i64* %XAX, !mcsema_real_eip !121
  %EDI.174 = bitcast i64* %XDI to i32*, !mcsema_real_eip !122
  %EDI_val.175 = load i32, i32* %EDI.174, !mcsema_real_eip !122
  %EDI.176 = bitcast i64* %XDI to i32*, !mcsema_real_eip !122
  %EDI_val.177 = load i32, i32* %EDI.176, !mcsema_real_eip !122
  %471 = xor i32 %EDI_val.175, %EDI_val.177, !mcsema_real_eip !122
  store i1 false, i1* %CF, !mcsema_real_eip !122
  store i1 false, i1* %OF, !mcsema_real_eip !122
  %472 = lshr i32 %471, 31, !mcsema_real_eip !122
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !122
  store i1 %473, i1* %SF, !mcsema_real_eip !122
  %474 = icmp eq i32 %471, 0, !mcsema_real_eip !122
  store i1 %474, i1* %ZF, !mcsema_real_eip !122
  %475 = trunc i32 %471 to i8, !mcsema_real_eip !122
  %476 = call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !122
  %477 = trunc i8 %476 to i1, !mcsema_real_eip !122
  %478 = xor i1 %477, true, !mcsema_real_eip !122
  store i1 %478, i1* %PF, !mcsema_real_eip !122
  store i1 undef, i1* %AF, !mcsema_real_eip !122
  %479 = zext i32 %471 to i64, !mcsema_real_eip !122
  store i64 %479, i64* %XDI, !mcsema_real_eip !122
  %RBP_val.178 = load i64, i64* %XBP, !mcsema_real_eip !123
  %480 = add i64 %RBP_val.178, -100, !mcsema_real_eip !123
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !123
  %EAX.179 = bitcast i64* %XAX to i32*, !mcsema_real_eip !123
  %EAX_val.180 = load i32, i32* %EAX.179, !mcsema_real_eip !123
  %482 = ptrtoint i64* %481 to i64, !mcsema_real_eip !123
  %483 = inttoptr i64 %482 to i32*, !mcsema_real_eip !123
  store i32 %EAX_val.180, i32* %483, !mcsema_real_eip !123
  %RDI_val.181 = load i64, i64* %XDI, !mcsema_real_eip !124
  %RSP_val.182 = load i64, i64* %XSP, !mcsema_real_eip !124
  %484 = sub i64 %RSP_val.182, 8, !mcsema_real_eip !124
  %485 = inttoptr i64 %484 to i64*, !mcsema_real_eip !124
  store i64 -2415393069852865332, i64* %485, !mcsema_real_eip !124
  store i64 %484, i64* %XSP, !mcsema_real_eip !124
  %486 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.181), !mcsema_real_eip !124
  store i64 %486, i64* %XAX, !mcsema_real_eip !124
  br label %block_0x219, !mcsema_real_eip !125

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  %487 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !125
  %488 = ptrtoint [77 x i8]* %487 to i64, !mcsema_real_eip !125
  %489 = add i64 %488, 0, !mcsema_real_eip !125
  store i64 %489, i64* %XAX, !mcsema_real_eip !125
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !126
  %490 = add i64 %RBP_val.183, -24, !mcsema_real_eip !126
  %491 = inttoptr i64 %490 to i64*, !mcsema_real_eip !126
  %492 = ptrtoint i64* %491 to i64, !mcsema_real_eip !126
  %493 = inttoptr i64 %492 to i32*, !mcsema_real_eip !126
  %494 = load i32, i32* %493, !mcsema_real_eip !126
  %495 = sext i32 %494 to i64, !mcsema_real_eip !126
  store i64 %495, i64* %XCX, !mcsema_real_eip !126
  %RCX_val.184 = load i64, i64* %XCX, !mcsema_real_eip !127
  %496 = sext i64 %RCX_val.184 to i128, !mcsema_real_eip !127
  %497 = sext i64 11 to i128, !mcsema_real_eip !127
  %498 = mul i128 %496, %497, !mcsema_real_eip !127
  %499 = trunc i128 %498 to i64, !mcsema_real_eip !127
  %500 = sext i64 %499 to i128, !mcsema_real_eip !127
  %501 = icmp ne i128 %500, %498, !mcsema_real_eip !127
  %502 = icmp slt i64 %499, 0, !mcsema_real_eip !127
  store i1 %502, i1* %SF, !mcsema_real_eip !127
  store i1 %501, i1* %OF, !mcsema_real_eip !127
  store i1 %501, i1* %CF, !mcsema_real_eip !127
  store i64 %499, i64* %XCX, !mcsema_real_eip !127
  %RAX_val.185 = load i64, i64* %XAX, !mcsema_real_eip !128
  %RCX_val.186 = load i64, i64* %XCX, !mcsema_real_eip !128
  %503 = add i64 %RCX_val.186, %RAX_val.185, !mcsema_real_eip !128
  %504 = xor i64 %503, %RAX_val.185, !mcsema_real_eip !128
  %505 = xor i64 %504, %RCX_val.186, !mcsema_real_eip !128
  %506 = and i64 %505, 16, !mcsema_real_eip !128
  %507 = icmp ne i64 %506, 0, !mcsema_real_eip !128
  store i1 %507, i1* %AF, !mcsema_real_eip !128
  %508 = lshr i64 %503, 63, !mcsema_real_eip !128
  %509 = trunc i64 %508 to i1, !mcsema_real_eip !128
  store i1 %509, i1* %SF, !mcsema_real_eip !128
  %510 = icmp eq i64 %503, 0, !mcsema_real_eip !128
  store i1 %510, i1* %ZF, !mcsema_real_eip !128
  %511 = xor i64 %RAX_val.185, %RCX_val.186, !mcsema_real_eip !128
  %512 = xor i64 %511, -1, !mcsema_real_eip !128
  %513 = xor i64 %RAX_val.185, %503, !mcsema_real_eip !128
  %514 = and i64 %512, %513, !mcsema_real_eip !128
  %515 = lshr i64 %514, 63, !mcsema_real_eip !128
  %516 = and i64 %515, 1, !mcsema_real_eip !128
  %517 = trunc i64 %516 to i1, !mcsema_real_eip !128
  store i1 %517, i1* %OF, !mcsema_real_eip !128
  %518 = trunc i64 %503 to i8, !mcsema_real_eip !128
  %519 = call i8 @llvm.ctpop.i8(i8 %518), !mcsema_real_eip !128
  %520 = trunc i8 %519 to i1, !mcsema_real_eip !128
  %521 = xor i1 %520, true, !mcsema_real_eip !128
  store i1 %521, i1* %PF, !mcsema_real_eip !128
  %522 = icmp ult i64 %503, %RAX_val.185, !mcsema_real_eip !128
  store i1 %522, i1* %CF, !mcsema_real_eip !128
  store i64 %503, i64* %XAX, !mcsema_real_eip !128
  %RBP_val.187 = load i64, i64* %XBP, !mcsema_real_eip !129
  %523 = add i64 %RBP_val.187, -20, !mcsema_real_eip !129
  %524 = inttoptr i64 %523 to i64*, !mcsema_real_eip !129
  %525 = ptrtoint i64* %524 to i64, !mcsema_real_eip !129
  %526 = inttoptr i64 %525 to i32*, !mcsema_real_eip !129
  %527 = load i32, i32* %526, !mcsema_real_eip !129
  %528 = sext i32 %527 to i64, !mcsema_real_eip !129
  store i64 %528, i64* %XCX, !mcsema_real_eip !129
  %RAX_val.188 = load i64, i64* %XAX, !mcsema_real_eip !130
  %529 = add i64 %RAX_val.188, 0, !mcsema_real_eip !130
  %RCX_val.189 = load i64, i64* %XCX, !mcsema_real_eip !130
  %530 = add i64 %529, %RCX_val.189, !mcsema_real_eip !130
  %531 = inttoptr i64 %530 to i64*, !mcsema_real_eip !130
  %532 = ptrtoint i64* %531 to i64, !mcsema_real_eip !130
  %533 = inttoptr i64 %532 to i8*, !mcsema_real_eip !130
  %534 = load i8, i8* %533, !mcsema_real_eip !130
  %535 = sext i8 %534 to i32, !mcsema_real_eip !130
  %536 = zext i32 %535 to i64, !mcsema_real_eip !130
  store i64 %536, i64* %XDX, !mcsema_real_eip !130
  %EDX.190 = bitcast i64* %XDX to i32*, !mcsema_real_eip !131
  %EDX_val.191 = load i32, i32* %EDX.190, !mcsema_real_eip !131
  %537 = sub i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %538 = xor i32 %537, %EDX_val.191, !mcsema_real_eip !131
  %539 = xor i32 %538, 32, !mcsema_real_eip !131
  %540 = and i32 %539, 16, !mcsema_real_eip !131
  %541 = icmp ne i32 %540, 0, !mcsema_real_eip !131
  store i1 %541, i1* %AF, !mcsema_real_eip !131
  %542 = trunc i32 %537 to i8, !mcsema_real_eip !131
  %543 = call i8 @llvm.ctpop.i8(i8 %542), !mcsema_real_eip !131
  %544 = trunc i8 %543 to i1, !mcsema_real_eip !131
  %545 = xor i1 %544, true, !mcsema_real_eip !131
  store i1 %545, i1* %PF, !mcsema_real_eip !131
  %546 = icmp eq i32 %537, 0, !mcsema_real_eip !131
  store i1 %546, i1* %ZF, !mcsema_real_eip !131
  %547 = lshr i32 %537, 31, !mcsema_real_eip !131
  %548 = trunc i32 %547 to i1, !mcsema_real_eip !131
  store i1 %548, i1* %SF, !mcsema_real_eip !131
  %549 = icmp ult i32 %EDX_val.191, 32, !mcsema_real_eip !131
  store i1 %549, i1* %CF, !mcsema_real_eip !131
  %550 = xor i32 %EDX_val.191, 32, !mcsema_real_eip !131
  %551 = xor i32 %EDX_val.191, %537, !mcsema_real_eip !131
  %552 = and i32 %550, %551, !mcsema_real_eip !131
  %553 = lshr i32 %552, 31, !mcsema_real_eip !131
  %554 = trunc i32 %553 to i1, !mcsema_real_eip !131
  store i1 %554, i1* %OF, !mcsema_real_eip !131
  %555 = load i1, i1* %ZF, !mcsema_real_eip !132
  %556 = icmp eq i1 %555, true, !mcsema_real_eip !132
  br i1 %556, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !132

block_0x23f:                                      ; preds = %block_0x219
  %RBP_val.192 = load i64, i64* %XBP, !mcsema_real_eip !133
  %557 = add i64 %RBP_val.192, -24, !mcsema_real_eip !133
  %558 = inttoptr i64 %557 to i64*, !mcsema_real_eip !133
  %559 = ptrtoint i64* %558 to i64, !mcsema_real_eip !133
  %560 = inttoptr i64 %559 to i32*, !mcsema_real_eip !133
  %561 = load i32, i32* %560, !mcsema_real_eip !133
  %562 = sub i32 %561, 2, !mcsema_real_eip !133
  %563 = xor i32 %562, %561, !mcsema_real_eip !133
  %564 = xor i32 %563, 2, !mcsema_real_eip !133
  %565 = and i32 %564, 16, !mcsema_real_eip !133
  %566 = icmp ne i32 %565, 0, !mcsema_real_eip !133
  store i1 %566, i1* %AF, !mcsema_real_eip !133
  %567 = trunc i32 %562 to i8, !mcsema_real_eip !133
  %568 = call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !133
  %569 = trunc i8 %568 to i1, !mcsema_real_eip !133
  %570 = xor i1 %569, true, !mcsema_real_eip !133
  store i1 %570, i1* %PF, !mcsema_real_eip !133
  %571 = icmp eq i32 %562, 0, !mcsema_real_eip !133
  store i1 %571, i1* %ZF, !mcsema_real_eip !133
  %572 = lshr i32 %562, 31, !mcsema_real_eip !133
  %573 = trunc i32 %572 to i1, !mcsema_real_eip !133
  store i1 %573, i1* %SF, !mcsema_real_eip !133
  %574 = icmp ult i32 %561, 2, !mcsema_real_eip !133
  store i1 %574, i1* %CF, !mcsema_real_eip !133
  %575 = xor i32 %561, 2, !mcsema_real_eip !133
  %576 = xor i32 %561, %562, !mcsema_real_eip !133
  %577 = and i32 %575, %576, !mcsema_real_eip !133
  %578 = lshr i32 %577, 31, !mcsema_real_eip !133
  %579 = trunc i32 %578 to i1, !mcsema_real_eip !133
  store i1 %579, i1* %OF, !mcsema_real_eip !133
  %580 = load i1, i1* %ZF, !mcsema_real_eip !134
  %581 = icmp eq i1 %580, false, !mcsema_real_eip !134
  br i1 %581, label %block_0x283, label %block_0x249, !mcsema_real_eip !134

block_0x249:                                      ; preds = %block_0x23f
  %582 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !135
  %583 = ptrtoint [77 x i8]* %582 to i64, !mcsema_real_eip !135
  %584 = add i64 %583, 0, !mcsema_real_eip !135
  store i64 %584, i64* %XAX, !mcsema_real_eip !135
  %RBP_val.193 = load i64, i64* %XBP, !mcsema_real_eip !136
  %585 = add i64 %RBP_val.193, -24, !mcsema_real_eip !136
  %586 = inttoptr i64 %585 to i64*, !mcsema_real_eip !136
  %587 = ptrtoint i64* %586 to i64, !mcsema_real_eip !136
  %588 = inttoptr i64 %587 to i32*, !mcsema_real_eip !136
  %589 = load i32, i32* %588, !mcsema_real_eip !136
  %590 = sext i32 %589 to i64, !mcsema_real_eip !136
  store i64 %590, i64* %XCX, !mcsema_real_eip !136
  %RCX_val.194 = load i64, i64* %XCX, !mcsema_real_eip !137
  %591 = sext i64 %RCX_val.194 to i128, !mcsema_real_eip !137
  %592 = sext i64 11 to i128, !mcsema_real_eip !137
  %593 = mul i128 %591, %592, !mcsema_real_eip !137
  %594 = trunc i128 %593 to i64, !mcsema_real_eip !137
  %595 = sext i64 %594 to i128, !mcsema_real_eip !137
  %596 = icmp ne i128 %595, %593, !mcsema_real_eip !137
  %597 = icmp slt i64 %594, 0, !mcsema_real_eip !137
  store i1 %597, i1* %SF, !mcsema_real_eip !137
  store i1 %596, i1* %OF, !mcsema_real_eip !137
  store i1 %596, i1* %CF, !mcsema_real_eip !137
  store i64 %594, i64* %XCX, !mcsema_real_eip !137
  %RAX_val.195 = load i64, i64* %XAX, !mcsema_real_eip !138
  %RCX_val.196 = load i64, i64* %XCX, !mcsema_real_eip !138
  %598 = add i64 %RCX_val.196, %RAX_val.195, !mcsema_real_eip !138
  %599 = xor i64 %598, %RAX_val.195, !mcsema_real_eip !138
  %600 = xor i64 %599, %RCX_val.196, !mcsema_real_eip !138
  %601 = and i64 %600, 16, !mcsema_real_eip !138
  %602 = icmp ne i64 %601, 0, !mcsema_real_eip !138
  store i1 %602, i1* %AF, !mcsema_real_eip !138
  %603 = lshr i64 %598, 63, !mcsema_real_eip !138
  %604 = trunc i64 %603 to i1, !mcsema_real_eip !138
  store i1 %604, i1* %SF, !mcsema_real_eip !138
  %605 = icmp eq i64 %598, 0, !mcsema_real_eip !138
  store i1 %605, i1* %ZF, !mcsema_real_eip !138
  %606 = xor i64 %RAX_val.195, %RCX_val.196, !mcsema_real_eip !138
  %607 = xor i64 %606, -1, !mcsema_real_eip !138
  %608 = xor i64 %RAX_val.195, %598, !mcsema_real_eip !138
  %609 = and i64 %607, %608, !mcsema_real_eip !138
  %610 = lshr i64 %609, 63, !mcsema_real_eip !138
  %611 = and i64 %610, 1, !mcsema_real_eip !138
  %612 = trunc i64 %611 to i1, !mcsema_real_eip !138
  store i1 %612, i1* %OF, !mcsema_real_eip !138
  %613 = trunc i64 %598 to i8, !mcsema_real_eip !138
  %614 = call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !138
  %615 = trunc i8 %614 to i1, !mcsema_real_eip !138
  %616 = xor i1 %615, true, !mcsema_real_eip !138
  store i1 %616, i1* %PF, !mcsema_real_eip !138
  %617 = icmp ult i64 %598, %RAX_val.195, !mcsema_real_eip !138
  store i1 %617, i1* %CF, !mcsema_real_eip !138
  store i64 %598, i64* %XAX, !mcsema_real_eip !138
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !139
  %618 = add i64 %RBP_val.197, -20, !mcsema_real_eip !139
  %619 = inttoptr i64 %618 to i64*, !mcsema_real_eip !139
  %620 = ptrtoint i64* %619 to i64, !mcsema_real_eip !139
  %621 = inttoptr i64 %620 to i32*, !mcsema_real_eip !139
  %622 = load i32, i32* %621, !mcsema_real_eip !139
  %623 = sext i32 %622 to i64, !mcsema_real_eip !139
  store i64 %623, i64* %XCX, !mcsema_real_eip !139
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !140
  %624 = add i64 %RAX_val.198, 0, !mcsema_real_eip !140
  %RCX_val.199 = load i64, i64* %XCX, !mcsema_real_eip !140
  %625 = add i64 %624, %RCX_val.199, !mcsema_real_eip !140
  %626 = inttoptr i64 %625 to i64*, !mcsema_real_eip !140
  %627 = ptrtoint i64* %626 to i64, !mcsema_real_eip !140
  %628 = inttoptr i64 %627 to i8*, !mcsema_real_eip !140
  %629 = load i8, i8* %628, !mcsema_real_eip !140
  %630 = sext i8 %629 to i32, !mcsema_real_eip !140
  %631 = zext i32 %630 to i64, !mcsema_real_eip !140
  store i64 %631, i64* %XDX, !mcsema_real_eip !140
  %EDX.200 = bitcast i64* %XDX to i32*, !mcsema_real_eip !141
  %EDX_val.201 = load i32, i32* %EDX.200, !mcsema_real_eip !141
  %632 = sub i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %633 = xor i32 %632, %EDX_val.201, !mcsema_real_eip !141
  %634 = xor i32 %633, 124, !mcsema_real_eip !141
  %635 = and i32 %634, 16, !mcsema_real_eip !141
  %636 = icmp ne i32 %635, 0, !mcsema_real_eip !141
  store i1 %636, i1* %AF, !mcsema_real_eip !141
  %637 = trunc i32 %632 to i8, !mcsema_real_eip !141
  %638 = call i8 @llvm.ctpop.i8(i8 %637), !mcsema_real_eip !141
  %639 = trunc i8 %638 to i1, !mcsema_real_eip !141
  %640 = xor i1 %639, true, !mcsema_real_eip !141
  store i1 %640, i1* %PF, !mcsema_real_eip !141
  %641 = icmp eq i32 %632, 0, !mcsema_real_eip !141
  store i1 %641, i1* %ZF, !mcsema_real_eip !141
  %642 = lshr i32 %632, 31, !mcsema_real_eip !141
  %643 = trunc i32 %642 to i1, !mcsema_real_eip !141
  store i1 %643, i1* %SF, !mcsema_real_eip !141
  %644 = icmp ult i32 %EDX_val.201, 124, !mcsema_real_eip !141
  store i1 %644, i1* %CF, !mcsema_real_eip !141
  %645 = xor i32 %EDX_val.201, 124, !mcsema_real_eip !141
  %646 = xor i32 %EDX_val.201, %632, !mcsema_real_eip !141
  %647 = and i32 %645, %646, !mcsema_real_eip !141
  %648 = lshr i32 %647, 31, !mcsema_real_eip !141
  %649 = trunc i32 %648 to i1, !mcsema_real_eip !141
  store i1 %649, i1* %OF, !mcsema_real_eip !141
  %650 = load i1, i1* %ZF, !mcsema_real_eip !142
  %651 = icmp eq i1 %650, false, !mcsema_real_eip !142
  br i1 %651, label %block_0x283, label %block_0x26f, !mcsema_real_eip !142

block_0x26f:                                      ; preds = %block_0x249
  %RBP_val.202 = load i64, i64* %XBP, !mcsema_real_eip !143
  %652 = add i64 %RBP_val.202, -20, !mcsema_real_eip !143
  %653 = inttoptr i64 %652 to i64*, !mcsema_real_eip !143
  %654 = ptrtoint i64* %653 to i64, !mcsema_real_eip !143
  %655 = inttoptr i64 %654 to i32*, !mcsema_real_eip !143
  %656 = load i32, i32* %655, !mcsema_real_eip !143
  %657 = sub i32 %656, 0, !mcsema_real_eip !143
  %658 = xor i32 %657, %656, !mcsema_real_eip !143
  %659 = xor i32 %658, 0, !mcsema_real_eip !143
  %660 = and i32 %659, 16, !mcsema_real_eip !143
  %661 = icmp ne i32 %660, 0, !mcsema_real_eip !143
  store i1 %661, i1* %AF, !mcsema_real_eip !143
  %662 = trunc i32 %657 to i8, !mcsema_real_eip !143
  %663 = call i8 @llvm.ctpop.i8(i8 %662), !mcsema_real_eip !143
  %664 = trunc i8 %663 to i1, !mcsema_real_eip !143
  %665 = xor i1 %664, true, !mcsema_real_eip !143
  store i1 %665, i1* %PF, !mcsema_real_eip !143
  %666 = icmp eq i32 %657, 0, !mcsema_real_eip !143
  store i1 %666, i1* %ZF, !mcsema_real_eip !143
  %667 = lshr i32 %657, 31, !mcsema_real_eip !143
  %668 = trunc i32 %667 to i1, !mcsema_real_eip !143
  store i1 %668, i1* %SF, !mcsema_real_eip !143
  %669 = icmp ult i32 %656, 0, !mcsema_real_eip !143
  store i1 %669, i1* %CF, !mcsema_real_eip !143
  %670 = xor i32 %656, 0, !mcsema_real_eip !143
  %671 = xor i32 %656, %657, !mcsema_real_eip !143
  %672 = and i32 %670, %671, !mcsema_real_eip !143
  %673 = lshr i32 %672, 31, !mcsema_real_eip !143
  %674 = trunc i32 %673 to i1, !mcsema_real_eip !143
  store i1 %674, i1* %OF, !mcsema_real_eip !143
  %675 = load i1, i1* %OF, !mcsema_real_eip !144
  %676 = load i1, i1* %SF, !mcsema_real_eip !144
  %677 = icmp eq i1 %676, %675, !mcsema_real_eip !144
  %678 = icmp eq i1 %677, false, !mcsema_real_eip !144
  %679 = load i1, i1* %ZF, !mcsema_real_eip !144
  %680 = icmp eq i1 %679, true, !mcsema_real_eip !144
  %681 = or i1 %680, %678, !mcsema_real_eip !144
  br i1 %681, label %block_0x283, label %block_0x279, !mcsema_real_eip !144

block_0x279:                                      ; preds = %block_0x26f
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !145
  %682 = add i64 %RBP_val.203, -20, !mcsema_real_eip !145
  %683 = inttoptr i64 %682 to i64*, !mcsema_real_eip !145
  %684 = ptrtoint i64* %683 to i64, !mcsema_real_eip !145
  %685 = inttoptr i64 %684 to i32*, !mcsema_real_eip !145
  %686 = load i32, i32* %685, !mcsema_real_eip !145
  %687 = sub i32 %686, 11, !mcsema_real_eip !145
  %688 = xor i32 %687, %686, !mcsema_real_eip !145
  %689 = xor i32 %688, 11, !mcsema_real_eip !145
  %690 = and i32 %689, 16, !mcsema_real_eip !145
  %691 = icmp ne i32 %690, 0, !mcsema_real_eip !145
  store i1 %691, i1* %AF, !mcsema_real_eip !145
  %692 = trunc i32 %687 to i8, !mcsema_real_eip !145
  %693 = call i8 @llvm.ctpop.i8(i8 %692), !mcsema_real_eip !145
  %694 = trunc i8 %693 to i1, !mcsema_real_eip !145
  %695 = xor i1 %694, true, !mcsema_real_eip !145
  store i1 %695, i1* %PF, !mcsema_real_eip !145
  %696 = icmp eq i32 %687, 0, !mcsema_real_eip !145
  store i1 %696, i1* %ZF, !mcsema_real_eip !145
  %697 = lshr i32 %687, 31, !mcsema_real_eip !145
  %698 = trunc i32 %697 to i1, !mcsema_real_eip !145
  store i1 %698, i1* %SF, !mcsema_real_eip !145
  %699 = icmp ult i32 %686, 11, !mcsema_real_eip !145
  store i1 %699, i1* %CF, !mcsema_real_eip !145
  %700 = xor i32 %686, 11, !mcsema_real_eip !145
  %701 = xor i32 %686, %687, !mcsema_real_eip !145
  %702 = and i32 %700, %701, !mcsema_real_eip !145
  %703 = lshr i32 %702, 31, !mcsema_real_eip !145
  %704 = trunc i32 %703 to i1, !mcsema_real_eip !145
  store i1 %704, i1* %OF, !mcsema_real_eip !145
  %705 = load i1, i1* %OF, !mcsema_real_eip !146
  %706 = load i1, i1* %SF, !mcsema_real_eip !146
  %707 = icmp eq i1 %706, %705, !mcsema_real_eip !146
  %708 = icmp eq i1 %707, false, !mcsema_real_eip !146
  br i1 %708, label %block_0x28f, label %block_0x283, !mcsema_real_eip !146

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %RBP_val.204 = load i64, i64* %XBP, !mcsema_real_eip !147
  %709 = add i64 %RBP_val.204, -28, !mcsema_real_eip !147
  %710 = inttoptr i64 %709 to i64*, !mcsema_real_eip !147
  %711 = ptrtoint i64* %710 to i64, !mcsema_real_eip !147
  %712 = inttoptr i64 %711 to i32*, !mcsema_real_eip !147
  %713 = load i32, i32* %712, !mcsema_real_eip !147
  %714 = zext i32 %713 to i64, !mcsema_real_eip !147
  store i64 %714, i64* %XAX, !mcsema_real_eip !147
  %RBP_val.205 = load i64, i64* %XBP, !mcsema_real_eip !148
  %715 = add i64 %RBP_val.205, -20, !mcsema_real_eip !148
  %716 = inttoptr i64 %715 to i64*, !mcsema_real_eip !148
  %EAX.206 = bitcast i64* %XAX to i32*, !mcsema_real_eip !148
  %EAX_val.207 = load i32, i32* %EAX.206, !mcsema_real_eip !148
  %717 = ptrtoint i64* %716 to i64, !mcsema_real_eip !148
  %718 = inttoptr i64 %717 to i32*, !mcsema_real_eip !148
  store i32 %EAX_val.207, i32* %718, !mcsema_real_eip !148
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !149
  %719 = add i64 %RBP_val.208, -32, !mcsema_real_eip !149
  %720 = inttoptr i64 %719 to i64*, !mcsema_real_eip !149
  %721 = ptrtoint i64* %720 to i64, !mcsema_real_eip !149
  %722 = inttoptr i64 %721 to i32*, !mcsema_real_eip !149
  %723 = load i32, i32* %722, !mcsema_real_eip !149
  %724 = zext i32 %723 to i64, !mcsema_real_eip !149
  store i64 %724, i64* %XAX, !mcsema_real_eip !149
  %RBP_val.209 = load i64, i64* %XBP, !mcsema_real_eip !150
  %725 = add i64 %RBP_val.209, -24, !mcsema_real_eip !150
  %726 = inttoptr i64 %725 to i64*, !mcsema_real_eip !150
  %EAX.210 = bitcast i64* %XAX to i32*, !mcsema_real_eip !150
  %EAX_val.211 = load i32, i32* %EAX.210, !mcsema_real_eip !150
  %727 = ptrtoint i64* %726 to i64, !mcsema_real_eip !150
  %728 = inttoptr i64 %727 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.211, i32* %728, !mcsema_real_eip !150
  br label %block_0x28f, !mcsema_real_eip !151

block_0x28f:                                      ; preds = %block_0x283, %block_0x279, %block_0x219
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !151
  %729 = add i64 %RBP_val.212, -28, !mcsema_real_eip !151
  %730 = inttoptr i64 %729 to i64*, !mcsema_real_eip !151
  %731 = ptrtoint i64* %730 to i64, !mcsema_real_eip !151
  %732 = inttoptr i64 %731 to i32*, !mcsema_real_eip !151
  %733 = load i32, i32* %732, !mcsema_real_eip !151
  %734 = zext i32 %733 to i64, !mcsema_real_eip !151
  store i64 %734, i64* %XAX, !mcsema_real_eip !151
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !152
  %735 = add i64 %RBP_val.213, -20, !mcsema_real_eip !152
  %736 = inttoptr i64 %735 to i64*, !mcsema_real_eip !152
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !152
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !152
  %737 = ptrtoint i64* %736 to i64, !mcsema_real_eip !152
  %738 = inttoptr i64 %737 to i32*, !mcsema_real_eip !152
  %739 = load i32, i32* %738, !mcsema_real_eip !152
  %740 = sub i32 %EAX_val.215, %739, !mcsema_real_eip !152
  %741 = xor i32 %740, %EAX_val.215, !mcsema_real_eip !152
  %742 = xor i32 %741, %739, !mcsema_real_eip !152
  %743 = and i32 %742, 16, !mcsema_real_eip !152
  %744 = icmp ne i32 %743, 0, !mcsema_real_eip !152
  store i1 %744, i1* %AF, !mcsema_real_eip !152
  %745 = trunc i32 %740 to i8, !mcsema_real_eip !152
  %746 = call i8 @llvm.ctpop.i8(i8 %745), !mcsema_real_eip !152
  %747 = trunc i8 %746 to i1, !mcsema_real_eip !152
  %748 = xor i1 %747, true, !mcsema_real_eip !152
  store i1 %748, i1* %PF, !mcsema_real_eip !152
  %749 = icmp eq i32 %740, 0, !mcsema_real_eip !152
  store i1 %749, i1* %ZF, !mcsema_real_eip !152
  %750 = lshr i32 %740, 31, !mcsema_real_eip !152
  %751 = trunc i32 %750 to i1, !mcsema_real_eip !152
  store i1 %751, i1* %SF, !mcsema_real_eip !152
  %752 = icmp ult i32 %EAX_val.215, %739, !mcsema_real_eip !152
  store i1 %752, i1* %CF, !mcsema_real_eip !152
  %753 = xor i32 %EAX_val.215, %739, !mcsema_real_eip !152
  %754 = xor i32 %EAX_val.215, %740, !mcsema_real_eip !152
  %755 = and i32 %753, %754, !mcsema_real_eip !152
  %756 = lshr i32 %755, 31, !mcsema_real_eip !152
  %757 = trunc i32 %756 to i1, !mcsema_real_eip !152
  store i1 %757, i1* %OF, !mcsema_real_eip !152
  %758 = load i1, i1* %ZF, !mcsema_real_eip !153
  %759 = icmp eq i1 %758, false, !mcsema_real_eip !153
  br i1 %759, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !153

block_0x29b:                                      ; preds = %block_0x28f
  %RBP_val.216 = load i64, i64* %XBP, !mcsema_real_eip !154
  %760 = add i64 %RBP_val.216, -32, !mcsema_real_eip !154
  %761 = inttoptr i64 %760 to i64*, !mcsema_real_eip !154
  %762 = ptrtoint i64* %761 to i64, !mcsema_real_eip !154
  %763 = inttoptr i64 %762 to i32*, !mcsema_real_eip !154
  %764 = load i32, i32* %763, !mcsema_real_eip !154
  %765 = zext i32 %764 to i64, !mcsema_real_eip !154
  store i64 %765, i64* %XAX, !mcsema_real_eip !154
  %RBP_val.217 = load i64, i64* %XBP, !mcsema_real_eip !155
  %766 = add i64 %RBP_val.217, -24, !mcsema_real_eip !155
  %767 = inttoptr i64 %766 to i64*, !mcsema_real_eip !155
  %EAX.218 = bitcast i64* %XAX to i32*, !mcsema_real_eip !155
  %EAX_val.219 = load i32, i32* %EAX.218, !mcsema_real_eip !155
  %768 = ptrtoint i64* %767 to i64, !mcsema_real_eip !155
  %769 = inttoptr i64 %768 to i32*, !mcsema_real_eip !155
  %770 = load i32, i32* %769, !mcsema_real_eip !155
  %771 = sub i32 %EAX_val.219, %770, !mcsema_real_eip !155
  %772 = xor i32 %771, %EAX_val.219, !mcsema_real_eip !155
  %773 = xor i32 %772, %770, !mcsema_real_eip !155
  %774 = and i32 %773, 16, !mcsema_real_eip !155
  %775 = icmp ne i32 %774, 0, !mcsema_real_eip !155
  store i1 %775, i1* %AF, !mcsema_real_eip !155
  %776 = trunc i32 %771 to i8, !mcsema_real_eip !155
  %777 = call i8 @llvm.ctpop.i8(i8 %776), !mcsema_real_eip !155
  %778 = trunc i8 %777 to i1, !mcsema_real_eip !155
  %779 = xor i1 %778, true, !mcsema_real_eip !155
  store i1 %779, i1* %PF, !mcsema_real_eip !155
  %780 = icmp eq i32 %771, 0, !mcsema_real_eip !155
  store i1 %780, i1* %ZF, !mcsema_real_eip !155
  %781 = lshr i32 %771, 31, !mcsema_real_eip !155
  %782 = trunc i32 %781 to i1, !mcsema_real_eip !155
  store i1 %782, i1* %SF, !mcsema_real_eip !155
  %783 = icmp ult i32 %EAX_val.219, %770, !mcsema_real_eip !155
  store i1 %783, i1* %CF, !mcsema_real_eip !155
  %784 = xor i32 %EAX_val.219, %770, !mcsema_real_eip !155
  %785 = xor i32 %EAX_val.219, %771, !mcsema_real_eip !155
  %786 = and i32 %784, %785, !mcsema_real_eip !155
  %787 = lshr i32 %786, 31, !mcsema_real_eip !155
  %788 = trunc i32 %787 to i1, !mcsema_real_eip !155
  store i1 %788, i1* %OF, !mcsema_real_eip !155
  %789 = load i1, i1* %ZF, !mcsema_real_eip !156
  %790 = icmp eq i1 %789, false, !mcsema_real_eip !156
  br i1 %790, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !156

block_0x2a7:                                      ; preds = %block_0x29b
  %791 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !157
  %792 = ptrtoint [95 x i8]* %791 to i64, !mcsema_real_eip !157
  %793 = add i64 %792, 85, !mcsema_real_eip !157
  store i64 %793, i64* %XDI, !mcsema_real_eip !157
  %AL.220 = bitcast i64* %XAX to i8*, !mcsema_real_eip !158
  store i8 0, i8* %AL.220, !mcsema_real_eip !158
  %RDI_val.221 = load i64, i64* %XDI, !mcsema_real_eip !159
  %RSI_val.222 = load i64, i64* %XSI, !mcsema_real_eip !159
  %RSP_val.223 = load i64, i64* %XSP, !mcsema_real_eip !159
  %794 = sub i64 %RSP_val.223, 8, !mcsema_real_eip !159
  %795 = inttoptr i64 %794 to i64*, !mcsema_real_eip !159
  store i64 -2415393069852865332, i64* %795, !mcsema_real_eip !159
  store i64 %794, i64* %XSP, !mcsema_real_eip !159
  %796 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.221, i64 %RSI_val.222), !mcsema_real_eip !159
  store i64 %796, i64* %XAX, !mcsema_real_eip !159
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !160
  %797 = add i64 %RBP_val.224, -4, !mcsema_real_eip !160
  %798 = inttoptr i64 %797 to i64*, !mcsema_real_eip !160
  %799 = ptrtoint i64* %798 to i64, !mcsema_real_eip !160
  %800 = inttoptr i64 %799 to i32*, !mcsema_real_eip !160
  store i32 2, i32* %800, !mcsema_real_eip !160
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !161
  %801 = add i64 %RBP_val.225, -104, !mcsema_real_eip !161
  %802 = inttoptr i64 %801 to i64*, !mcsema_real_eip !161
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !161
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !161
  %803 = ptrtoint i64* %802 to i64, !mcsema_real_eip !161
  %804 = inttoptr i64 %803 to i32*, !mcsema_real_eip !161
  store i32 %EAX_val.227, i32* %804, !mcsema_real_eip !161
  br label %block_0x312, !mcsema_real_eip !162

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  %805 = getelementptr %1, %1* @data_0x3e0, i64 0, i32 0, !mcsema_real_eip !163
  %806 = ptrtoint [77 x i8]* %805 to i64, !mcsema_real_eip !163
  %807 = add i64 %806, 0, !mcsema_real_eip !163
  store i64 %807, i64* %XAX, !mcsema_real_eip !163
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !164
  %808 = add i64 %RBP_val.228, -24, !mcsema_real_eip !164
  %809 = inttoptr i64 %808 to i64*, !mcsema_real_eip !164
  %810 = ptrtoint i64* %809 to i64, !mcsema_real_eip !164
  %811 = inttoptr i64 %810 to i32*, !mcsema_real_eip !164
  %812 = load i32, i32* %811, !mcsema_real_eip !164
  %813 = sext i32 %812 to i64, !mcsema_real_eip !164
  store i64 %813, i64* %XCX, !mcsema_real_eip !164
  %RCX_val.229 = load i64, i64* %XCX, !mcsema_real_eip !165
  %814 = sext i64 %RCX_val.229 to i128, !mcsema_real_eip !165
  %815 = sext i64 11 to i128, !mcsema_real_eip !165
  %816 = mul i128 %814, %815, !mcsema_real_eip !165
  %817 = trunc i128 %816 to i64, !mcsema_real_eip !165
  %818 = sext i64 %817 to i128, !mcsema_real_eip !165
  %819 = icmp ne i128 %818, %816, !mcsema_real_eip !165
  %820 = icmp slt i64 %817, 0, !mcsema_real_eip !165
  store i1 %820, i1* %SF, !mcsema_real_eip !165
  store i1 %819, i1* %OF, !mcsema_real_eip !165
  store i1 %819, i1* %CF, !mcsema_real_eip !165
  store i64 %817, i64* %XCX, !mcsema_real_eip !165
  %RAX_val.230 = load i64, i64* %XAX, !mcsema_real_eip !166
  %RCX_val.231 = load i64, i64* %XCX, !mcsema_real_eip !166
  %821 = add i64 %RCX_val.231, %RAX_val.230, !mcsema_real_eip !166
  %822 = xor i64 %821, %RAX_val.230, !mcsema_real_eip !166
  %823 = xor i64 %822, %RCX_val.231, !mcsema_real_eip !166
  %824 = and i64 %823, 16, !mcsema_real_eip !166
  %825 = icmp ne i64 %824, 0, !mcsema_real_eip !166
  store i1 %825, i1* %AF, !mcsema_real_eip !166
  %826 = lshr i64 %821, 63, !mcsema_real_eip !166
  %827 = trunc i64 %826 to i1, !mcsema_real_eip !166
  store i1 %827, i1* %SF, !mcsema_real_eip !166
  %828 = icmp eq i64 %821, 0, !mcsema_real_eip !166
  store i1 %828, i1* %ZF, !mcsema_real_eip !166
  %829 = xor i64 %RAX_val.230, %RCX_val.231, !mcsema_real_eip !166
  %830 = xor i64 %829, -1, !mcsema_real_eip !166
  %831 = xor i64 %RAX_val.230, %821, !mcsema_real_eip !166
  %832 = and i64 %830, %831, !mcsema_real_eip !166
  %833 = lshr i64 %832, 63, !mcsema_real_eip !166
  %834 = and i64 %833, 1, !mcsema_real_eip !166
  %835 = trunc i64 %834 to i1, !mcsema_real_eip !166
  store i1 %835, i1* %OF, !mcsema_real_eip !166
  %836 = trunc i64 %821 to i8, !mcsema_real_eip !166
  %837 = call i8 @llvm.ctpop.i8(i8 %836), !mcsema_real_eip !166
  %838 = trunc i8 %837 to i1, !mcsema_real_eip !166
  %839 = xor i1 %838, true, !mcsema_real_eip !166
  store i1 %839, i1* %PF, !mcsema_real_eip !166
  %840 = icmp ult i64 %821, %RAX_val.230, !mcsema_real_eip !166
  store i1 %840, i1* %CF, !mcsema_real_eip !166
  store i64 %821, i64* %XAX, !mcsema_real_eip !166
  %RBP_val.232 = load i64, i64* %XBP, !mcsema_real_eip !167
  %841 = add i64 %RBP_val.232, -20, !mcsema_real_eip !167
  %842 = inttoptr i64 %841 to i64*, !mcsema_real_eip !167
  %843 = ptrtoint i64* %842 to i64, !mcsema_real_eip !167
  %844 = inttoptr i64 %843 to i32*, !mcsema_real_eip !167
  %845 = load i32, i32* %844, !mcsema_real_eip !167
  %846 = sext i32 %845 to i64, !mcsema_real_eip !167
  store i64 %846, i64* %XCX, !mcsema_real_eip !167
  %RAX_val.233 = load i64, i64* %XAX, !mcsema_real_eip !168
  %847 = add i64 %RAX_val.233, 0, !mcsema_real_eip !168
  %RCX_val.234 = load i64, i64* %XCX, !mcsema_real_eip !168
  %848 = add i64 %847, %RCX_val.234, !mcsema_real_eip !168
  %849 = inttoptr i64 %848 to i64*, !mcsema_real_eip !168
  %850 = ptrtoint i64* %849 to i64, !mcsema_real_eip !168
  %851 = inttoptr i64 %850 to i8*, !mcsema_real_eip !168
  store i8 88, i8* %851, !mcsema_real_eip !168
  %RSP_val.235 = load i64, i64* %XSP, !mcsema_real_eip !169
  %852 = sub i64 %RSP_val.235, 8, !mcsema_real_eip !169
  %853 = inttoptr i64 %852 to i64*, !mcsema_real_eip !169
  store i64 -4981261766360305936, i64* %853, !mcsema_real_eip !169
  store i64 %852, i64* %XSP, !mcsema_real_eip !169
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !169
  %RBP_val.236 = load i64, i64* %XBP, !mcsema_real_eip !170
  %854 = add i64 %RBP_val.236, -36, !mcsema_real_eip !170
  %855 = inttoptr i64 %854 to i64*, !mcsema_real_eip !170
  %856 = ptrtoint i64* %855 to i64, !mcsema_real_eip !170
  %857 = inttoptr i64 %856 to i32*, !mcsema_real_eip !170
  %858 = load i32, i32* %857, !mcsema_real_eip !170
  %859 = zext i32 %858 to i64, !mcsema_real_eip !170
  store i64 %859, i64* %XDX, !mcsema_real_eip !170
  %EDX.237 = bitcast i64* %XDX to i32*, !mcsema_real_eip !171
  %EDX_val.238 = load i32, i32* %EDX.237, !mcsema_real_eip !171
  %860 = add i32 1, %EDX_val.238, !mcsema_real_eip !171
  %861 = xor i32 %860, %EDX_val.238, !mcsema_real_eip !171
  %862 = xor i32 %861, 1, !mcsema_real_eip !171
  %863 = and i32 %862, 16, !mcsema_real_eip !171
  %864 = icmp ne i32 %863, 0, !mcsema_real_eip !171
  store i1 %864, i1* %AF, !mcsema_real_eip !171
  %865 = lshr i32 %860, 31, !mcsema_real_eip !171
  %866 = trunc i32 %865 to i1, !mcsema_real_eip !171
  store i1 %866, i1* %SF, !mcsema_real_eip !171
  %867 = icmp eq i32 %860, 0, !mcsema_real_eip !171
  store i1 %867, i1* %ZF, !mcsema_real_eip !171
  %868 = xor i32 %EDX_val.238, 1, !mcsema_real_eip !171
  %869 = xor i32 %868, -1, !mcsema_real_eip !171
  %870 = xor i32 %EDX_val.238, %860, !mcsema_real_eip !171
  %871 = and i32 %869, %870, !mcsema_real_eip !171
  %872 = lshr i32 %871, 31, !mcsema_real_eip !171
  %873 = and i32 %872, 1, !mcsema_real_eip !171
  %874 = trunc i32 %873 to i1, !mcsema_real_eip !171
  store i1 %874, i1* %OF, !mcsema_real_eip !171
  %875 = trunc i32 %860 to i8, !mcsema_real_eip !171
  %876 = call i8 @llvm.ctpop.i8(i8 %875), !mcsema_real_eip !171
  %877 = trunc i8 %876 to i1, !mcsema_real_eip !171
  %878 = xor i1 %877, true, !mcsema_real_eip !171
  store i1 %878, i1* %PF, !mcsema_real_eip !171
  %879 = icmp ult i32 %860, %EDX_val.238, !mcsema_real_eip !171
  store i1 %879, i1* %CF, !mcsema_real_eip !171
  %880 = zext i32 %860 to i64, !mcsema_real_eip !171
  store i64 %880, i64* %XDX, !mcsema_real_eip !171
  %RBP_val.239 = load i64, i64* %XBP, !mcsema_real_eip !172
  %881 = add i64 %RBP_val.239, -36, !mcsema_real_eip !172
  %882 = inttoptr i64 %881 to i64*, !mcsema_real_eip !172
  %EDX.240 = bitcast i64* %XDX to i32*, !mcsema_real_eip !172
  %EDX_val.241 = load i32, i32* %EDX.240, !mcsema_real_eip !172
  %883 = ptrtoint i64* %882 to i64, !mcsema_real_eip !172
  %884 = inttoptr i64 %883 to i32*, !mcsema_real_eip !172
  store i32 %EDX_val.241, i32* %884, !mcsema_real_eip !172
  br label %block_0x114, !mcsema_real_eip !173

block_0x2f7:                                      ; preds = %block_0x114
  %885 = getelementptr %2, %2* @data_0x42d, i64 0, i32 0, !mcsema_real_eip !174
  %886 = ptrtoint [95 x i8]* %885 to i64, !mcsema_real_eip !174
  %887 = add i64 %886, 85, !mcsema_real_eip !174
  store i64 %887, i64* %XDI, !mcsema_real_eip !174
  %AL.242 = bitcast i64* %XAX to i8*, !mcsema_real_eip !175
  store i8 0, i8* %AL.242, !mcsema_real_eip !175
  %RDI_val.243 = load i64, i64* %XDI, !mcsema_real_eip !176
  %RSI_val.244 = load i64, i64* %XSI, !mcsema_real_eip !176
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !176
  %888 = sub i64 %RSP_val.245, 8, !mcsema_real_eip !176
  %889 = inttoptr i64 %888 to i64*, !mcsema_real_eip !176
  store i64 -2415393069852865332, i64* %889, !mcsema_real_eip !176
  store i64 %888, i64* %XSP, !mcsema_real_eip !176
  %890 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.243, i64 %RSI_val.244), !mcsema_real_eip !176
  store i64 %890, i64* %XAX, !mcsema_real_eip !176
  %RBP_val.246 = load i64, i64* %XBP, !mcsema_real_eip !177
  %891 = add i64 %RBP_val.246, -4, !mcsema_real_eip !177
  %892 = inttoptr i64 %891 to i64*, !mcsema_real_eip !177
  %893 = ptrtoint i64* %892 to i64, !mcsema_real_eip !177
  %894 = inttoptr i64 %893 to i32*, !mcsema_real_eip !177
  store i32 1, i32* %894, !mcsema_real_eip !177
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !178
  %895 = add i64 %RBP_val.247, -108, !mcsema_real_eip !178
  %896 = inttoptr i64 %895 to i64*, !mcsema_real_eip !178
  %EAX.248 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.249 = load i32, i32* %EAX.248, !mcsema_real_eip !178
  %897 = ptrtoint i64* %896 to i64, !mcsema_real_eip !178
  %898 = inttoptr i64 %897 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.249, i32* %898, !mcsema_real_eip !178
  br label %block_0x312, !mcsema_real_eip !179

block_0x312:                                      ; preds = %block_0x2f7, %block_0x2a7
  %RBP_val.250 = load i64, i64* %XBP, !mcsema_real_eip !179
  %899 = add i64 %RBP_val.250, -4, !mcsema_real_eip !179
  %900 = inttoptr i64 %899 to i64*, !mcsema_real_eip !179
  %901 = ptrtoint i64* %900 to i64, !mcsema_real_eip !179
  %902 = inttoptr i64 %901 to i32*, !mcsema_real_eip !179
  %903 = load i32, i32* %902, !mcsema_real_eip !179
  %904 = zext i32 %903 to i64, !mcsema_real_eip !179
  store i64 %904, i64* %XAX, !mcsema_real_eip !179
  %RSP_val.251 = load i64, i64* %XSP, !mcsema_real_eip !180
  %905 = add i64 112, %RSP_val.251, !mcsema_real_eip !180
  %906 = xor i64 %905, %RSP_val.251, !mcsema_real_eip !180
  %907 = xor i64 %906, 112, !mcsema_real_eip !180
  %908 = and i64 %907, 16, !mcsema_real_eip !180
  %909 = icmp ne i64 %908, 0, !mcsema_real_eip !180
  store i1 %909, i1* %AF, !mcsema_real_eip !180
  %910 = lshr i64 %905, 63, !mcsema_real_eip !180
  %911 = trunc i64 %910 to i1, !mcsema_real_eip !180
  store i1 %911, i1* %SF, !mcsema_real_eip !180
  %912 = icmp eq i64 %905, 0, !mcsema_real_eip !180
  store i1 %912, i1* %ZF, !mcsema_real_eip !180
  %913 = xor i64 %RSP_val.251, 112, !mcsema_real_eip !180
  %914 = xor i64 %913, -1, !mcsema_real_eip !180
  %915 = xor i64 %RSP_val.251, %905, !mcsema_real_eip !180
  %916 = and i64 %914, %915, !mcsema_real_eip !180
  %917 = lshr i64 %916, 63, !mcsema_real_eip !180
  %918 = and i64 %917, 1, !mcsema_real_eip !180
  %919 = trunc i64 %918 to i1, !mcsema_real_eip !180
  store i1 %919, i1* %OF, !mcsema_real_eip !180
  %920 = trunc i64 %905 to i8, !mcsema_real_eip !180
  %921 = call i8 @llvm.ctpop.i8(i8 %920), !mcsema_real_eip !180
  %922 = trunc i8 %921 to i1, !mcsema_real_eip !180
  %923 = xor i1 %922, true, !mcsema_real_eip !180
  store i1 %923, i1* %PF, !mcsema_real_eip !180
  %924 = icmp ult i64 %905, %RSP_val.251, !mcsema_real_eip !180
  store i1 %924, i1* %CF, !mcsema_real_eip !180
  store i64 %905, i64* %XSP, !mcsema_real_eip !180
  %RSP_val.252 = load i64, i64* %XSP, !mcsema_real_eip !181
  %925 = inttoptr i64 %RSP_val.252 to i64*, !mcsema_real_eip !181
  %926 = load i64, i64* %925, !mcsema_real_eip !181
  store i64 %926, i64* %XBP, !mcsema_real_eip !181
  %927 = add i64 %RSP_val.252, 8, !mcsema_real_eip !181
  store i64 %927, i64* %XSP, !mcsema_real_eip !181
  %RSP_val.253 = load i64, i64* %XSP, !mcsema_real_eip !182
  %928 = add i64 %RSP_val.253, 8, !mcsema_real_eip !182
  %929 = inttoptr i64 %RSP_val.253 to i64*, !mcsema_real_eip !182
  %930 = load i64, i64* %929, !mcsema_real_eip !182
  store i64 %930, i64* %XIP, !mcsema_real_eip !182
  store i64 %928, i64* %XSP, !mcsema_real_eip !182
  ret void, !mcsema_real_eip !182

; <label>:931:                                    ; preds = %block_0x148
  store i64 %RCX_val.112, i64* %XIP, !mcsema_real_eip !79
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !79
  ret void, !mcsema_real_eip !79
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) #2

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
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 19}
!8 = !{i64 25}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 42}
!12 = !{i64 52}
!13 = !{i64 62}
!14 = !{i64 66}
!15 = !{i64 70}
!16 = !{i64 73}
!17 = !{i64 77}
!18 = !{i64 81}
!19 = !{i64 83}
!20 = !{i64 88}
!21 = !{i64 91}
!22 = !{i64 94}
!23 = !{i64 97}
!24 = !{i64 100}
!25 = !{i64 105}
!26 = !{i64 115}
!27 = !{i64 117}
!28 = !{i64 122}
!29 = !{i64 125}
!30 = !{i64 128}
!31 = !{i64 131}
!32 = !{i64 134}
!33 = !{i64 139}
!34 = !{i64 149}
!35 = !{i64 151}
!36 = !{i64 156}
!37 = !{i64 159}
!38 = !{i64 163}
!39 = !{i64 164}
!40 = !{i64 176}
!41 = !{i64 177}
!42 = !{i64 180}
!43 = !{i64 184}
!44 = !{i64 186}
!45 = !{i64 191}
!46 = !{i64 193}
!47 = !{i64 197}
!48 = !{i64 207}
!49 = !{i64 214}
!50 = !{i64 217}
!51 = !{i64 221}
!52 = !{i64 228}
!53 = !{i64 235}
!54 = !{i64 242}
!55 = !{i64 246}
!56 = !{i64 250}
!57 = !{i64 253}
!58 = !{i64 257}
!59 = !{i64 262}
!60 = !{i64 264}
!61 = !{i64 267}
!62 = !{i64 272}
!63 = !{i64 276}
!64 = !{i64 280}
!65 = !{i64 286}
!66 = !{i64 289}
!67 = !{i64 292}
!68 = !{i64 295}
!69 = !{i64 298}
!70 = !{i64 302}
!71 = !{i64 307}
!72 = !{i64 310}
!73 = !{i64 312}
!74 = !{i64 315}
!75 = !{i64 319}
!76 = !{i64 322}
!77 = !{i64 328}
!78 = !{i64 332}
!79 = !{i64 340}
!80 = !{i64 342}
!81 = !{i64 345}
!82 = !{i64 348}
!83 = !{i64 351}
!84 = !{i64 356}
!85 = !{i64 359}
!86 = !{i64 362}
!87 = !{i64 365}
!88 = !{i64 370}
!89 = !{i64 373}
!90 = !{i64 376}
!91 = !{i64 379}
!92 = !{i64 384}
!93 = !{i64 387}
!94 = !{i64 390}
!95 = !{i64 393}
!96 = !{i64 398}
!97 = !{i64 408}
!98 = !{i64 410}
!99 = !{i64 415}
!100 = !{i64 425}
!101 = !{i64 428}
!102 = !{i64 430}
!103 = !{i64 435}
!104 = !{i64 440}
!105 = !{i64 443}
!106 = !{i64 448}
!107 = !{i64 458}
!108 = !{i64 462}
!109 = !{i64 466}
!110 = !{i64 469}
!111 = !{i64 473}
!112 = !{i64 477}
!113 = !{i64 480}
!114 = !{i64 486}
!115 = !{i64 496}
!116 = !{i64 498}
!117 = !{i64 503}
!118 = !{i64 513}
!119 = !{i64 517}
!120 = !{i64 520}
!121 = !{i64 522}
!122 = !{i64 527}
!123 = !{i64 529}
!124 = !{i64 532}
!125 = !{i64 537}
!126 = !{i64 547}
!127 = !{i64 551}
!128 = !{i64 555}
!129 = !{i64 558}
!130 = !{i64 562}
!131 = !{i64 566}
!132 = !{i64 569}
!133 = !{i64 575}
!134 = !{i64 579}
!135 = !{i64 585}
!136 = !{i64 595}
!137 = !{i64 599}
!138 = !{i64 603}
!139 = !{i64 606}
!140 = !{i64 610}
!141 = !{i64 614}
!142 = !{i64 617}
!143 = !{i64 623}
!144 = !{i64 627}
!145 = !{i64 633}
!146 = !{i64 637}
!147 = !{i64 643}
!148 = !{i64 646}
!149 = !{i64 649}
!150 = !{i64 652}
!151 = !{i64 655}
!152 = !{i64 658}
!153 = !{i64 661}
!154 = !{i64 667}
!155 = !{i64 670}
!156 = !{i64 673}
!157 = !{i64 679}
!158 = !{i64 689}
!159 = !{i64 691}
!160 = !{i64 696}
!161 = !{i64 703}
!162 = !{i64 706}
!163 = !{i64 711}
!164 = !{i64 721}
!165 = !{i64 725}
!166 = !{i64 729}
!167 = !{i64 732}
!168 = !{i64 736}
!169 = !{i64 740}
!170 = !{i64 745}
!171 = !{i64 748}
!172 = !{i64 751}
!173 = !{i64 754}
!174 = !{i64 759}
!175 = !{i64 769}
!176 = !{i64 771}
!177 = !{i64 776}
!178 = !{i64 783}
!179 = !{i64 786}
!180 = !{i64 789}
!181 = !{i64 793}
!182 = !{i64 794}
