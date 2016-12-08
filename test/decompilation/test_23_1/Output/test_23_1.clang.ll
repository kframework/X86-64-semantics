; ModuleID = 'Output/test_23_1.clang.bc'
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
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !6
  %26 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !6
  %28 = ptrtoint i64* %27 to i64, !mcsema_real_eip !6
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %29, !mcsema_real_eip !6
  %30 = getelementptr %0, %0* @data_0xb0, i64 0, i32 0, !mcsema_real_eip !7
  %31 = ptrtoint [185 x i8]* %30 to i64, !mcsema_real_eip !7
  %32 = add i64 %31, 184, !mcsema_real_eip !7
  %33 = add i64 0, %32, !mcsema_real_eip !7
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !7
  %35 = ptrtoint i64* %34 to i64, !mcsema_real_eip !7
  %36 = inttoptr i64 %35 to i8*, !mcsema_real_eip !7
  %37 = load i8, i8* %36, !mcsema_real_eip !7
  %AL.6 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 %37, i8* %AL.6, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !8
  %38 = add i64 %RBP_val.7, -9, !mcsema_real_eip !8
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !8
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  %AL_val.9 = load i8, i8* %AL.8, !mcsema_real_eip !8
  %40 = ptrtoint i64* %39 to i64, !mcsema_real_eip !8
  %41 = inttoptr i64 %40 to i8*, !mcsema_real_eip !8
  store i8 %AL_val.9, i8* %41, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x76, %block_0x0
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !9
  %42 = add i64 %RBP_val.10, -8, !mcsema_real_eip !9
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !9
  %44 = ptrtoint i64* %43 to i64, !mcsema_real_eip !9
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !9
  %46 = load i32, i32* %45, !mcsema_real_eip !9
  %47 = sub i32 %46, 1, !mcsema_real_eip !9
  %48 = xor i32 %47, %46, !mcsema_real_eip !9
  %49 = xor i32 %48, 1, !mcsema_real_eip !9
  %50 = and i32 %49, 16, !mcsema_real_eip !9
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !9
  store i1 %51, i1* %AF, !mcsema_real_eip !9
  %52 = trunc i32 %47 to i8, !mcsema_real_eip !9
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !9
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !9
  %55 = xor i1 %54, true, !mcsema_real_eip !9
  store i1 %55, i1* %PF, !mcsema_real_eip !9
  %56 = icmp eq i32 %47, 0, !mcsema_real_eip !9
  store i1 %56, i1* %ZF, !mcsema_real_eip !9
  %57 = lshr i32 %47, 31, !mcsema_real_eip !9
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !9
  store i1 %58, i1* %SF, !mcsema_real_eip !9
  %59 = icmp ult i32 %46, 1, !mcsema_real_eip !9
  store i1 %59, i1* %CF, !mcsema_real_eip !9
  %60 = xor i32 %46, 1, !mcsema_real_eip !9
  %61 = xor i32 %46, %47, !mcsema_real_eip !9
  %62 = and i32 %60, %61, !mcsema_real_eip !9
  %63 = lshr i32 %62, 31, !mcsema_real_eip !9
  %64 = trunc i32 %63 to i1, !mcsema_real_eip !9
  store i1 %64, i1* %OF, !mcsema_real_eip !9
  %65 = load i1, i1* %OF, !mcsema_real_eip !10
  %66 = load i1, i1* %SF, !mcsema_real_eip !10
  %67 = icmp eq i1 %66, %65, !mcsema_real_eip !10
  br i1 %67, label %block_0x84, label %block_0x2a, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !11
  %68 = add i64 %RBP_val.19, -8, !mcsema_real_eip !11
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !11
  %70 = ptrtoint i64* %69 to i64, !mcsema_real_eip !11
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !11
  %72 = load i32, i32* %71, !mcsema_real_eip !11
  %73 = sext i32 %72 to i64, !mcsema_real_eip !11
  store i64 %73, i64* %XAX, !mcsema_real_eip !11
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !12
  %74 = add i64 %RBP_val.20, -9, !mcsema_real_eip !12
  %RAX_val.21 = load i64, i64* %XAX, !mcsema_real_eip !12
  %75 = add i64 %74, %RAX_val.21, !mcsema_real_eip !12
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !12
  %77 = ptrtoint i64* %76 to i64, !mcsema_real_eip !12
  %78 = inttoptr i64 %77 to i8*, !mcsema_real_eip !12
  %79 = load i8, i8* %78, !mcsema_real_eip !12
  %80 = sext i8 %79 to i32, !mcsema_real_eip !12
  %81 = zext i32 %80 to i64, !mcsema_real_eip !12
  store i64 %81, i64* %XCX, !mcsema_real_eip !12
  %ECX.22 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.23 = load i32, i32* %ECX.22, !mcsema_real_eip !13
  %82 = add i32 -97, %ECX_val.23, !mcsema_real_eip !13
  %83 = xor i32 %82, %ECX_val.23, !mcsema_real_eip !13
  %84 = xor i32 %83, -97, !mcsema_real_eip !13
  %85 = and i32 %84, 16, !mcsema_real_eip !13
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !13
  store i1 %86, i1* %AF, !mcsema_real_eip !13
  %87 = lshr i32 %82, 31, !mcsema_real_eip !13
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !13
  store i1 %88, i1* %SF, !mcsema_real_eip !13
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !13
  store i1 %89, i1* %ZF, !mcsema_real_eip !13
  %90 = xor i32 %ECX_val.23, -97, !mcsema_real_eip !13
  %91 = xor i32 %90, -1, !mcsema_real_eip !13
  %92 = xor i32 %ECX_val.23, %82, !mcsema_real_eip !13
  %93 = and i32 %91, %92, !mcsema_real_eip !13
  %94 = lshr i32 %93, 31, !mcsema_real_eip !13
  %95 = and i32 %94, 1, !mcsema_real_eip !13
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !13
  store i1 %96, i1* %OF, !mcsema_real_eip !13
  %97 = trunc i32 %82 to i8, !mcsema_real_eip !13
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !13
  %99 = trunc i8 %98 to i1, !mcsema_real_eip !13
  %100 = xor i1 %99, true, !mcsema_real_eip !13
  store i1 %100, i1* %PF, !mcsema_real_eip !13
  %101 = icmp ult i32 %82, %ECX_val.23, !mcsema_real_eip !13
  store i1 %101, i1* %CF, !mcsema_real_eip !13
  %102 = zext i32 %82 to i64, !mcsema_real_eip !13
  store i64 %102, i64* %XCX, !mcsema_real_eip !13
  %ECX.24 = bitcast i64* %XCX to i32*, !mcsema_real_eip !14
  %ECX_val.25 = load i32, i32* %ECX.24, !mcsema_real_eip !14
  %103 = zext i32 %ECX_val.25 to i64, !mcsema_real_eip !14
  store i64 %103, i64* %XAX, !mcsema_real_eip !14
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !15
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !15
  %104 = sub i32 %ECX_val.27, 22, !mcsema_real_eip !15
  %105 = xor i32 %104, %ECX_val.27, !mcsema_real_eip !15
  %106 = xor i32 %105, 22, !mcsema_real_eip !15
  %107 = and i32 %106, 16, !mcsema_real_eip !15
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !15
  store i1 %108, i1* %AF, !mcsema_real_eip !15
  %109 = trunc i32 %104 to i8, !mcsema_real_eip !15
  %110 = call i8 @llvm.ctpop.i8(i8 %109), !mcsema_real_eip !15
  %111 = trunc i8 %110 to i1, !mcsema_real_eip !15
  %112 = xor i1 %111, true, !mcsema_real_eip !15
  store i1 %112, i1* %PF, !mcsema_real_eip !15
  %113 = icmp eq i32 %104, 0, !mcsema_real_eip !15
  store i1 %113, i1* %ZF, !mcsema_real_eip !15
  %114 = lshr i32 %104, 31, !mcsema_real_eip !15
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !15
  store i1 %115, i1* %SF, !mcsema_real_eip !15
  %116 = icmp ult i32 %ECX_val.27, 22, !mcsema_real_eip !15
  store i1 %116, i1* %CF, !mcsema_real_eip !15
  %117 = xor i32 %ECX_val.27, 22, !mcsema_real_eip !15
  %118 = xor i32 %ECX_val.27, %104, !mcsema_real_eip !15
  %119 = and i32 %117, %118, !mcsema_real_eip !15
  %120 = lshr i32 %119, 31, !mcsema_real_eip !15
  %121 = trunc i32 %120 to i1, !mcsema_real_eip !15
  store i1 %121, i1* %OF, !mcsema_real_eip !15
  %122 = zext i32 %104 to i64, !mcsema_real_eip !15
  store i64 %122, i64* %XCX, !mcsema_real_eip !15
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !16
  %123 = add i64 %RBP_val.28, -24, !mcsema_real_eip !16
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !16
  %RAX_val.29 = load i64, i64* %XAX, !mcsema_real_eip !16
  store i64 %RAX_val.29, i64* %124, !mcsema_real_eip !16
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !17
  %125 = add i64 %RBP_val.30, -28, !mcsema_real_eip !17
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !17
  %ECX.31 = bitcast i64* %XCX to i32*, !mcsema_real_eip !17
  %ECX_val.32 = load i32, i32* %ECX.31, !mcsema_real_eip !17
  %127 = ptrtoint i64* %126 to i64, !mcsema_real_eip !17
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !17
  store i32 %ECX_val.32, i32* %128, !mcsema_real_eip !17
  %129 = load i1, i1* %ZF, !mcsema_real_eip !18
  %130 = icmp eq i1 %129, false, !mcsema_real_eip !18
  %131 = load i1, i1* %CF, !mcsema_real_eip !18
  %132 = icmp eq i1 %131, false, !mcsema_real_eip !18
  %133 = and i1 %132, %130, !mcsema_real_eip !18
  br i1 %133, label %block_0x6a, label %block_0x48, !mcsema_real_eip !18

block_0x84:                                       ; preds = %block_0x20
  %134 = getelementptr %1, %1* @data_0x169, i64 0, i32 0, !mcsema_real_eip !19
  %135 = ptrtoint [4 x i8]* %134 to i64, !mcsema_real_eip !19
  %136 = add i64 %135, 0, !mcsema_real_eip !19
  store i64 %136, i64* %XDI, !mcsema_real_eip !19
  %137 = zext i32 1 to i64, !mcsema_real_eip !20
  store i64 %137, i64* %XSI, !mcsema_real_eip !20
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.11, !mcsema_real_eip !21
  %RDI_val.12 = load i64, i64* %XDI, !mcsema_real_eip !22
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !22
  %138 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !22
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %139, !mcsema_real_eip !22
  store i64 %138, i64* %XSP, !mcsema_real_eip !22
  %140 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.12, i64 %RSI_val.13), !mcsema_real_eip !22
  store i64 %140, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !23
  %141 = add i64 %RBP_val.15, -4, !mcsema_real_eip !23
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !23
  %143 = ptrtoint i64* %142 to i64, !mcsema_real_eip !23
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !23
  store i32 1, i32* %144, !mcsema_real_eip !23
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !24
  %145 = add i64 %RBP_val.16, -32, !mcsema_real_eip !24
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !24
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !24
  %147 = ptrtoint i64* %146 to i64, !mcsema_real_eip !24
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !24
  store i32 %EAX_val.18, i32* %148, !mcsema_real_eip !24
  br label %block_0xa4, !mcsema_real_eip !11

block_0xa4:                                       ; preds = %block_0x6a, %block_0x84
  %RBP_val.33 = load i64, i64* %XBP, !mcsema_real_eip !25
  %149 = add i64 %RBP_val.33, -4, !mcsema_real_eip !25
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !25
  %151 = ptrtoint i64* %150 to i64, !mcsema_real_eip !25
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !25
  %153 = load i32, i32* %152, !mcsema_real_eip !25
  %154 = zext i32 %153 to i64, !mcsema_real_eip !25
  store i64 %154, i64* %XAX, !mcsema_real_eip !25
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !26
  %155 = add i64 32, %RSP_val.34, !mcsema_real_eip !26
  %156 = xor i64 %155, %RSP_val.34, !mcsema_real_eip !26
  %157 = xor i64 %156, 32, !mcsema_real_eip !26
  %158 = and i64 %157, 16, !mcsema_real_eip !26
  %159 = icmp ne i64 %158, 0, !mcsema_real_eip !26
  store i1 %159, i1* %AF, !mcsema_real_eip !26
  %160 = lshr i64 %155, 63, !mcsema_real_eip !26
  %161 = trunc i64 %160 to i1, !mcsema_real_eip !26
  store i1 %161, i1* %SF, !mcsema_real_eip !26
  %162 = icmp eq i64 %155, 0, !mcsema_real_eip !26
  store i1 %162, i1* %ZF, !mcsema_real_eip !26
  %163 = xor i64 %RSP_val.34, 32, !mcsema_real_eip !26
  %164 = xor i64 %163, -1, !mcsema_real_eip !26
  %165 = xor i64 %RSP_val.34, %155, !mcsema_real_eip !26
  %166 = and i64 %164, %165, !mcsema_real_eip !26
  %167 = lshr i64 %166, 63, !mcsema_real_eip !26
  %168 = and i64 %167, 1, !mcsema_real_eip !26
  %169 = trunc i64 %168 to i1, !mcsema_real_eip !26
  store i1 %169, i1* %OF, !mcsema_real_eip !26
  %170 = trunc i64 %155 to i8, !mcsema_real_eip !26
  %171 = call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !26
  %172 = trunc i8 %171 to i1, !mcsema_real_eip !26
  %173 = xor i1 %172, true, !mcsema_real_eip !26
  store i1 %173, i1* %PF, !mcsema_real_eip !26
  %174 = icmp ult i64 %155, %RSP_val.34, !mcsema_real_eip !26
  store i1 %174, i1* %CF, !mcsema_real_eip !26
  store i64 %155, i64* %XSP, !mcsema_real_eip !26
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !27
  %175 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !27
  %176 = load i64, i64* %175, !mcsema_real_eip !27
  store i64 %176, i64* %XBP, !mcsema_real_eip !27
  %177 = add i64 %RSP_val.35, 8, !mcsema_real_eip !27
  store i64 %177, i64* %XSP, !mcsema_real_eip !27
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !28
  %178 = add i64 %RSP_val.36, 8, !mcsema_real_eip !28
  %179 = inttoptr i64 %RSP_val.36 to i64*, !mcsema_real_eip !28
  %180 = load i64, i64* %179, !mcsema_real_eip !28
  store i64 %180, i64* %XIP, !mcsema_real_eip !28
  store i64 %178, i64* %XSP, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

block_0x48:                                       ; preds = %block_0x2a
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !29
  %181 = add i64 %RBP_val.38, -24, !mcsema_real_eip !29
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !29
  %183 = load i64, i64* %182, !mcsema_real_eip !29
  store i64 %183, i64* %XAX, !mcsema_real_eip !29
  %184 = getelementptr %0, %0* @data_0xb0, i64 0, i32 0, !mcsema_real_eip !30
  %185 = ptrtoint [185 x i8]* %184 to i64, !mcsema_real_eip !30
  %186 = add i64 %185, 0, !mcsema_real_eip !30
  %187 = add i64 0, %186, !mcsema_real_eip !30
  %RAX_val.39 = load i64, i64* %XAX, !mcsema_real_eip !30
  %188 = mul i64 %RAX_val.39, 8, !mcsema_real_eip !30
  %189 = add i64 %187, %188, !mcsema_real_eip !30
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !30
  %191 = load i64, i64* %190, !mcsema_real_eip !30
  store i64 %191, i64* %XCX, !mcsema_real_eip !30
  %RCX_val.40 = load i64, i64* %XCX, !mcsema_real_eip !31
  switch i64 %RCX_val.40, label %196 [
    i64 86, label %block_0x56
    i64 91, label %block_0x5b
    i64 101, label %block_0x65
    i64 106, label %block_0x6a
    i64 96, label %block_0x60
  ], !mcsema_real_eip !31

block_0x6a:                                       ; preds = %block_0x48, %block_0x2a
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !32
  %192 = add i64 %RBP_val.37, -4, !mcsema_real_eip !32
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !32
  %194 = ptrtoint i64* %193 to i64, !mcsema_real_eip !32
  %195 = inttoptr i64 %194 to i32*, !mcsema_real_eip !32
  store i32 1, i32* %195, !mcsema_real_eip !32
  br label %block_0xa4, !mcsema_real_eip !33

block_0x56:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !34

block_0x5b:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !35

block_0x60:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !36

block_0x65:                                       ; preds = %block_0x48
  br label %block_0x76, !mcsema_real_eip !37

; <label>:196:                                    ; preds = %block_0x48
  store i64 %RCX_val.40, i64* %XIP, !mcsema_real_eip !31
  call void @__mcsema_detach_call_value(), !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x76:                                       ; preds = %block_0x65, %block_0x60, %block_0x5b, %block_0x56
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !38
  %197 = add i64 %RBP_val.41, -8, !mcsema_real_eip !38
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !38
  %199 = ptrtoint i64* %198 to i64, !mcsema_real_eip !38
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !38
  %201 = load i32, i32* %200, !mcsema_real_eip !38
  %202 = zext i32 %201 to i64, !mcsema_real_eip !38
  store i64 %202, i64* %XAX, !mcsema_real_eip !38
  %EAX.42 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.43 = load i32, i32* %EAX.42, !mcsema_real_eip !39
  %203 = add i32 1, %EAX_val.43, !mcsema_real_eip !39
  %204 = xor i32 %203, %EAX_val.43, !mcsema_real_eip !39
  %205 = xor i32 %204, 1, !mcsema_real_eip !39
  %206 = and i32 %205, 16, !mcsema_real_eip !39
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !39
  store i1 %207, i1* %AF, !mcsema_real_eip !39
  %208 = lshr i32 %203, 31, !mcsema_real_eip !39
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !39
  store i1 %209, i1* %SF, !mcsema_real_eip !39
  %210 = icmp eq i32 %203, 0, !mcsema_real_eip !39
  store i1 %210, i1* %ZF, !mcsema_real_eip !39
  %211 = xor i32 %EAX_val.43, 1, !mcsema_real_eip !39
  %212 = xor i32 %211, -1, !mcsema_real_eip !39
  %213 = xor i32 %EAX_val.43, %203, !mcsema_real_eip !39
  %214 = and i32 %212, %213, !mcsema_real_eip !39
  %215 = lshr i32 %214, 31, !mcsema_real_eip !39
  %216 = and i32 %215, 1, !mcsema_real_eip !39
  %217 = trunc i32 %216 to i1, !mcsema_real_eip !39
  store i1 %217, i1* %OF, !mcsema_real_eip !39
  %218 = trunc i32 %203 to i8, !mcsema_real_eip !39
  %219 = call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !39
  %220 = trunc i8 %219 to i1, !mcsema_real_eip !39
  %221 = xor i1 %220, true, !mcsema_real_eip !39
  store i1 %221, i1* %PF, !mcsema_real_eip !39
  %222 = icmp ult i32 %203, %EAX_val.43, !mcsema_real_eip !39
  store i1 %222, i1* %CF, !mcsema_real_eip !39
  %223 = zext i32 %203 to i64, !mcsema_real_eip !39
  store i64 %223, i64* %XAX, !mcsema_real_eip !39
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !40
  %224 = add i64 %RBP_val.44, -8, !mcsema_real_eip !40
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !40
  %EAX.45 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %EAX_val.46 = load i32, i32* %EAX.45, !mcsema_real_eip !40
  %226 = ptrtoint i64* %225 to i64, !mcsema_real_eip !40
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.46, i32* %227, !mcsema_real_eip !40
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
