; ModuleID = 'Output/test_23_1.clang.trans.bc'
source_filename = "Output/test_23_1.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [185 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb0 = internal constant %0 <{ [185 x i8] c"`\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00e\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00[\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00V\00\00\00\00\00\00\00w" }>, align 64
@data_0x169 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x170 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\AD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %3 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %RSP_val.3, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %RSP_val.3, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %17 = xor i64 %RSP_val.3, %3, !mcsema_real_eip !4
  %18 = and i64 %16, %17, !mcsema_real_eip !4
  %19 = lshr i64 %18, 63, !mcsema_real_eip !4
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !4
  store i1 %20, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.4 = load i64, i64* %XBP, !mcsema_real_eip !5
  %21 = add i64 %RBP_val.4, -4, !mcsema_real_eip !5
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !5
  %23 = ptrtoint i64* %22 to i64, !mcsema_real_eip !5
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %24, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %25 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !6
  %27 = ptrtoint i64* %26 to i64, !mcsema_real_eip !6
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %28, !mcsema_real_eip !6
  %29 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%0* @data_0xb0 to i64), i64 184) to i8*), !mcsema_real_eip !7
  %AL.6 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 %29, i8* %AL.6, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %30 = add i64 %RBP_val.7, -9, !mcsema_real_eip !8
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !8
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  %AL_val.9 = load i8, i8* %AL.8, !mcsema_real_eip !8
  %32 = ptrtoint i64* %31 to i64, !mcsema_real_eip !8
  %33 = inttoptr i64 %32 to i8*, !mcsema_real_eip !8
  store i8 %AL_val.9, i8* %33, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x76, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %34 = add i64 %RBP_val.10, -8, !mcsema_real_eip !9
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !9
  %36 = ptrtoint i64* %35 to i64, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !9
  %38 = load i32, i32* %37, !mcsema_real_eip !9
  %39 = sub i32 %38, 1, !mcsema_real_eip !9
  %40 = xor i32 %39, %38, !mcsema_real_eip !9
  %41 = xor i32 %40, 1, !mcsema_real_eip !9
  %42 = and i32 %41, 16, !mcsema_real_eip !9
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !9
  store i1 %43, i1* %AF, !mcsema_real_eip !9
  %44 = trunc i32 %39 to i8, !mcsema_real_eip !9
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !9
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !9
  %47 = xor i1 %46, true, !mcsema_real_eip !9
  store i1 %47, i1* %PF, !mcsema_real_eip !9
  %48 = icmp eq i32 %39, 0, !mcsema_real_eip !9
  store i1 %48, i1* %ZF, !mcsema_real_eip !9
  %49 = lshr i32 %39, 31, !mcsema_real_eip !9
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !9
  store i1 %50, i1* %SF, !mcsema_real_eip !9
  %51 = icmp ult i32 %38, 1, !mcsema_real_eip !9
  store i1 %51, i1* %CF, !mcsema_real_eip !9
  %52 = xor i32 %38, 1, !mcsema_real_eip !9
  %53 = xor i32 %38, %39, !mcsema_real_eip !9
  %54 = and i32 %52, %53, !mcsema_real_eip !9
  %55 = lshr i32 %54, 31, !mcsema_real_eip !9
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !9
  store i1 %56, i1* %OF, !mcsema_real_eip !9
  %57 = load i1, i1* %OF, !mcsema_real_eip !10
  %58 = load i1, i1* %SF, !mcsema_real_eip !10
  %59 = icmp eq i1 %58, %57, !mcsema_real_eip !10
  br i1 %59, label %block_0x84, label %block_0x2a, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !11
  %60 = add i64 %RBP_val.19, -8, !mcsema_real_eip !11
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !11
  %62 = ptrtoint i64* %61 to i64, !mcsema_real_eip !11
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !11
  %64 = load i32, i32* %63, !mcsema_real_eip !11
  %65 = sext i32 %64 to i64, !mcsema_real_eip !11
  store i64 %65, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !12
  %66 = add i64 %RBP_val.20, -9, !mcsema_real_eip !12
  %RAX_val.21 = load i64, i64* %XAX, !mcsema_real_eip !12
  %67 = add i64 %66, %RAX_val.21, !mcsema_real_eip !12
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !12
  %69 = ptrtoint i64* %68 to i64, !mcsema_real_eip !12
  %70 = inttoptr i64 %69 to i8*, !mcsema_real_eip !12
  %71 = load i8, i8* %70, !mcsema_real_eip !12
  %72 = sext i8 %71 to i32, !mcsema_real_eip !12
  %73 = zext i32 %72 to i64, !mcsema_real_eip !12
  store i64 %73, i64* %XCX, !mcsema_real_eip !12
  %ECX.22 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.23 = load i32, i32* %ECX.22, !mcsema_real_eip !13
  %74 = add i32 -97, %ECX_val.23, !mcsema_real_eip !13
  %75 = xor i32 %74, %ECX_val.23, !mcsema_real_eip !13
  %76 = xor i32 %75, -97, !mcsema_real_eip !13
  %77 = and i32 %76, 16, !mcsema_real_eip !13
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !13
  store i1 %78, i1* %AF, !mcsema_real_eip !13
  %79 = lshr i32 %74, 31, !mcsema_real_eip !13
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !13
  store i1 %80, i1* %SF, !mcsema_real_eip !13
  %81 = icmp eq i32 %74, 0, !mcsema_real_eip !13
  store i1 %81, i1* %ZF, !mcsema_real_eip !13
  %82 = xor i32 %ECX_val.23, -97, !mcsema_real_eip !13
  %83 = xor i32 %82, -1, !mcsema_real_eip !13
  %84 = xor i32 %ECX_val.23, %74, !mcsema_real_eip !13
  %85 = and i32 %83, %84, !mcsema_real_eip !13
  %86 = lshr i32 %85, 31, !mcsema_real_eip !13
  %87 = and i32 %86, 1, !mcsema_real_eip !13
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !13
  store i1 %88, i1* %OF, !mcsema_real_eip !13
  %89 = trunc i32 %74 to i8, !mcsema_real_eip !13
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !13
  %91 = trunc i8 %90 to i1, !mcsema_real_eip !13
  %92 = xor i1 %91, true, !mcsema_real_eip !13
  store i1 %92, i1* %PF, !mcsema_real_eip !13
  %93 = icmp ult i32 %74, %ECX_val.23, !mcsema_real_eip !13
  store i1 %93, i1* %CF, !mcsema_real_eip !13
  %94 = zext i32 %74 to i64, !mcsema_real_eip !13
  store i64 %94, i64* %XCX, !mcsema_real_eip !13
  %ECX.24 = bitcast i64* %XCX to i32*, !mcsema_real_eip !14
  %ECX_val.25 = load i32, i32* %ECX.24, !mcsema_real_eip !14
  %95 = zext i32 %ECX_val.25 to i64, !mcsema_real_eip !14
  store i64 %95, i64* %XAX, !mcsema_real_eip !14
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !15
  %96 = sub i32 %ECX_val.27, 22, !mcsema_real_eip !15
  %97 = xor i32 %96, %ECX_val.27, !mcsema_real_eip !15
  %98 = xor i32 %97, 22, !mcsema_real_eip !15
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
  %108 = icmp ult i32 %ECX_val.27, 22, !mcsema_real_eip !15
  store i1 %108, i1* %CF, !mcsema_real_eip !15
  %109 = xor i32 %ECX_val.27, 22, !mcsema_real_eip !15
  %110 = xor i32 %ECX_val.27, %96, !mcsema_real_eip !15
  %111 = and i32 %109, %110, !mcsema_real_eip !15
  %112 = lshr i32 %111, 31, !mcsema_real_eip !15
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !15
  store i1 %113, i1* %OF, !mcsema_real_eip !15
  %114 = zext i32 %96 to i64, !mcsema_real_eip !15
  store i64 %114, i64* %XCX, !mcsema_real_eip !15
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !16
  %115 = add i64 %RBP_val.28, -24, !mcsema_real_eip !16
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !16
  %RAX_val.29 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.29, i64* %116, !mcsema_real_eip !16
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !17
  %117 = add i64 %RBP_val.30, -28, !mcsema_real_eip !17
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !17
  %ECX.31 = bitcast i64* %XCX to i32*, !mcsema_real_eip !17
  %ECX_val.32 = load i32, i32* %ECX.31, !mcsema_real_eip !17
  %119 = ptrtoint i64* %118 to i64, !mcsema_real_eip !17
  %120 = inttoptr i64 %119 to i32*, !mcsema_real_eip !17
  store i32 %ECX_val.32, i32* %120, !mcsema_real_eip !17
  %121 = load i1, i1* %ZF, !mcsema_real_eip !18
  %122 = icmp eq i1 %121, false, !mcsema_real_eip !18
  %123 = load i1, i1* %CF, !mcsema_real_eip !18
  %124 = icmp eq i1 %123, false, !mcsema_real_eip !18
  %125 = and i1 %124, %122, !mcsema_real_eip !18
  br i1 %125, label %block_0x6a, label %block_0x48, !mcsema_real_eip !18

block_0x84:                                       ; preds = %block_0x20
  store i64 ptrtoint (%1* @data_0x169 to i64), i64* %XDI, !mcsema_real_eip !19
  store i64 1, i64* %XSI, !mcsema_real_eip !20
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.11, !mcsema_real_eip !21
  %RDI_val.12 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !22
  %126 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !22
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %127, !mcsema_real_eip !22
  store i64 %126, i64* %XSP, !mcsema_real_eip !22
  %128 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.12, i64 %RSI_val.13), !mcsema_real_eip !22
  store i64 %128, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !23
  %129 = add i64 %RBP_val.15, -4, !mcsema_real_eip !23
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !23
  %131 = ptrtoint i64* %130 to i64, !mcsema_real_eip !23
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !23
  store i32 1, i32* %132, !mcsema_real_eip !23
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !24
  %133 = add i64 %RBP_val.16, -32, !mcsema_real_eip !24
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !24
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !24
  %135 = ptrtoint i64* %134 to i64, !mcsema_real_eip !24
  %136 = inttoptr i64 %135 to i32*, !mcsema_real_eip !24
  store i32 %EAX_val.18, i32* %136, !mcsema_real_eip !24
  br label %block_0xa4, !mcsema_real_eip !11

block_0xa4:                                       ; preds = %block_0x6a, %block_0x84
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %137 = add i64 %RBP_val.33, -4, !mcsema_real_eip !25
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !25
  %139 = ptrtoint i64* %138 to i64, !mcsema_real_eip !25
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !25
  %141 = load i32, i32* %140, !mcsema_real_eip !25
  %142 = zext i32 %141 to i64, !mcsema_real_eip !25
  store i64 %142, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !26
  %143 = add i64 32, %RSP_val.34, !mcsema_real_eip !26
  %144 = xor i64 %143, %RSP_val.34, !mcsema_real_eip !26
  %145 = xor i64 %144, 32, !mcsema_real_eip !26
  %146 = and i64 %145, 16, !mcsema_real_eip !26
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !26
  store i1 %147, i1* %AF, !mcsema_real_eip !26
  %148 = lshr i64 %143, 63, !mcsema_real_eip !26
  %149 = trunc i64 %148 to i1, !mcsema_real_eip !26
  store i1 %149, i1* %SF, !mcsema_real_eip !26
  %150 = icmp eq i64 %143, 0, !mcsema_real_eip !26
  store i1 %150, i1* %ZF, !mcsema_real_eip !26
  %151 = xor i64 %RSP_val.34, 32, !mcsema_real_eip !26
  %152 = xor i64 %151, -1, !mcsema_real_eip !26
  %153 = xor i64 %RSP_val.34, %143, !mcsema_real_eip !26
  %154 = and i64 %152, %153, !mcsema_real_eip !26
  %155 = lshr i64 %154, 63, !mcsema_real_eip !26
  %156 = and i64 %155, 1, !mcsema_real_eip !26
  %157 = trunc i64 %156 to i1, !mcsema_real_eip !26
  store i1 %157, i1* %OF, !mcsema_real_eip !26
  %158 = trunc i64 %143 to i8, !mcsema_real_eip !26
  %159 = call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !26
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !26
  %161 = xor i1 %160, true, !mcsema_real_eip !26
  store i1 %161, i1* %PF, !mcsema_real_eip !26
  %162 = icmp ult i64 %143, %RSP_val.34, !mcsema_real_eip !26
  store i1 %162, i1* %CF, !mcsema_real_eip !26
  store i64 %143, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !27
  %163 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !27
  %164 = load i64, i64* %163, !mcsema_real_eip !27
  store i64 %164, i64* %XBP, !mcsema_real_eip !27
  %165 = add i64 %RSP_val.35, 8, !mcsema_real_eip !27
  store i64 %165, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !28
  %166 = add i64 %RSP_val.36, 8, !mcsema_real_eip !28
  %167 = inttoptr i64 %RSP_val.36 to i64*, !mcsema_real_eip !28
  %168 = load i64, i64* %167, !mcsema_real_eip !28
  store i64 %168, i64* %XIP, !mcsema_real_eip !28
  store i64 %166, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

block_0x48:                                       ; preds = %block_0x2a
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !29
  %169 = add i64 %RBP_val.38, -24, !mcsema_real_eip !29
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !29
  %171 = load i64, i64* %170, !mcsema_real_eip !29
  store i64 %171, i64* %XAX, !mcsema_real_eip !29
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !30
  %172 = mul i64 %RAX_val.39, 8, !mcsema_real_eip !30
  %173 = add i64 ptrtoint (%0* @data_0xb0 to i64), %172, !mcsema_real_eip !30
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !30
  %175 = load i64, i64* %174, !mcsema_real_eip !30
  store i64 %175, i64* %XCX, !mcsema_real_eip !30
  %RCX_val.40 = load i64, i64* %XCX, !mcsema_real_eip !31
  switch i64 %RCX_val.40, label %180 [
    i64 86, label %block_0x56
    i64 91, label %block_0x5b
    i64 101, label %block_0x65
    i64 106, label %block_0x6a
    i64 96, label %block_0x60
  ], !mcsema_real_eip !31

block_0x6a:                                       ; preds = %block_0x48, %block_0x2a
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !32
  %176 = add i64 %RBP_val.37, -4, !mcsema_real_eip !32
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !32
  %178 = ptrtoint i64* %177 to i64, !mcsema_real_eip !32
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !32
  store i32 1, i32* %179, !mcsema_real_eip !32
  br label %block_0xa4, !mcsema_real_eip !33

block_0x56:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !34

block_0x5b:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !35

block_0x60:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !36

block_0x65:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !37

; <label>:180:                                    ; preds = %block_0x48
  store i64 %RCX_val.40, i64* %XIP, !mcsema_real_eip !31
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x76:                                       ; preds = %block_0x65, %block_0x60, %block_0x5b, %block_0x56
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !38
  %181 = add i64 %RBP_val.41, -8, !mcsema_real_eip !38
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !38
  %183 = ptrtoint i64* %182 to i64, !mcsema_real_eip !38
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !38
  %185 = load i32, i32* %184, !mcsema_real_eip !38
  %186 = zext i32 %185 to i64, !mcsema_real_eip !38
  store i64 %186, i64* %XAX, !mcsema_real_eip !38
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !39
  %187 = add i32 1, %EAX_val.43, !mcsema_real_eip !39
  %188 = xor i32 %187, %EAX_val.43, !mcsema_real_eip !39
  %189 = xor i32 %188, 1, !mcsema_real_eip !39
  %190 = and i32 %189, 16, !mcsema_real_eip !39
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !39
  store i1 %191, i1* %AF, !mcsema_real_eip !39
  %192 = lshr i32 %187, 31, !mcsema_real_eip !39
  %193 = trunc i32 %192 to i1, !mcsema_real_eip !39
  store i1 %193, i1* %SF, !mcsema_real_eip !39
  %194 = icmp eq i32 %187, 0, !mcsema_real_eip !39
  store i1 %194, i1* %ZF, !mcsema_real_eip !39
  %195 = xor i32 %EAX_val.43, 1, !mcsema_real_eip !39
  %196 = xor i32 %195, -1, !mcsema_real_eip !39
  %197 = xor i32 %EAX_val.43, %187, !mcsema_real_eip !39
  %198 = and i32 %196, %197, !mcsema_real_eip !39
  %199 = lshr i32 %198, 31, !mcsema_real_eip !39
  %200 = and i32 %199, 1, !mcsema_real_eip !39
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !39
  store i1 %201, i1* %OF, !mcsema_real_eip !39
  %202 = trunc i32 %187 to i8, !mcsema_real_eip !39
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !39
  %204 = trunc i8 %203 to i1, !mcsema_real_eip !39
  %205 = xor i1 %204, true, !mcsema_real_eip !39
  store i1 %205, i1* %PF, !mcsema_real_eip !39
  %206 = icmp ult i32 %187, %EAX_val.43, !mcsema_real_eip !39
  store i1 %206, i1* %CF, !mcsema_real_eip !39
  %207 = zext i32 %187 to i64, !mcsema_real_eip !39
  store i64 %207, i64* %XAX, !mcsema_real_eip !39
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !40
  %208 = add i64 %RBP_val.44, -8, !mcsema_real_eip !40
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !40
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !40
  %210 = ptrtoint i64* %209 to i64, !mcsema_real_eip !40
  %211 = inttoptr i64 %210 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.46, i32* %211, !mcsema_real_eip !40
  br label %block_0x20, !mcsema_real_eip !41
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

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
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 42}
!12 = !{i64 46}
!13 = !{i64 51}
!14 = !{i64 54}
!15 = !{i64 56}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 66}
!19 = !{i64 132}
!20 = !{i64 142}
!21 = !{i64 147}
!22 = !{i64 149}
!23 = !{i64 154}
!24 = !{i64 161}
!25 = !{i64 164}
!26 = !{i64 167}
!27 = !{i64 171}
!28 = !{i64 172}
!29 = !{i64 72}
!30 = !{i64 76}
!31 = !{i64 84}
!32 = !{i64 106}
!33 = !{i64 113}
!34 = !{i64 86}
!35 = !{i64 91}
!36 = !{i64 96}
!37 = !{i64 101}
!38 = !{i64 118}
!39 = !{i64 121}
!40 = !{i64 124}
!41 = !{i64 127}
